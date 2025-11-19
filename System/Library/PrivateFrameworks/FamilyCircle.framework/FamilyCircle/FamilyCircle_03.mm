uint64_t sub_100063C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026180(a1, &v78);
  v11 = sub_100022F18(&qword_1000B94D0, &unk_10008DF70);
  if (!swift_dynamicCast())
  {
    sub_100026180(a1, &v78);
    v21 = sub_100022F18(&unk_1000B94C0, &unk_10008E420);
    if (!swift_dynamicCast())
    {
      sub_100026180(a1, &v78);
      sub_100022F18(&qword_1000B94D8, &qword_10008DF80);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        return sub_100026180(a1, a2);
      }

      else
      {
        v67 = a2;
        static FamilyLogger.daemon.getter();
        sub_100026180(a1, &v78);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *&v73 = v59;
          *v58 = 136315138;
          sub_100026180(&v78, &v75);
          v60 = String.init<A>(describing:)();
          v62 = v61;
          sub_100024F7C(&v78);
          v63 = sub_1000373D4(v60, v62, &v73);

          *(v58 + 4) = v63;
          _os_log_impl(&_mh_execute_header, v56, v57, "Removing non secure value: %s", v58, 0xCu);
          sub_100024F7C(v59);
        }

        else
        {

          sub_100024F7C(&v78);
        }

        result = (*(v6 + 8))(v10, v5);
        v64 = v67;
        *v67 = 0u;
        *(v64 + 1) = 0u;
      }

      return result;
    }

    v66 = v21;
    v67 = a2;
    v22 = 0;
    v69 = v75;
    v23 = 1 << *(v75 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v75 + 64;
    v26 = v24 & *(v75 + 64);
    v27 = (v23 + 63) >> 6;
    v28 = &_swiftEmptyDictionarySingleton;
    v68 = v2;
    if (!v26)
    {
      goto LABEL_19;
    }

    while (1)
    {
      while (1)
      {
        v31 = v22;
LABEL_29:
        v32 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v33 = v32 | (v31 << 6);
        v34 = (*(v69 + 48) + 16 * v33);
        v35 = *v34;
        v36 = v34[1];
        sub_100026180(*(v69 + 56) + 32 * v33, &v73);
        *&v75 = v35;
        *(&v75 + 1) = v36;
        sub_1000249A8(&v73, &v76);

LABEL_30:
        v78 = v75;
        v79[0] = v76;
        v79[1] = v77;
        v37 = *(&v75 + 1);
        if (!*(&v75 + 1))
        {

          v55 = v67;
          v67[3] = v66;
          *v55 = v28;
          return result;
        }

        v38 = v78;
        sub_1000249A8(v79, &v75);
        sub_100063C28(&v71, &v75);
        if (v72)
        {
          break;
        }

        sub_100024F7C(&v75);

        sub_1000272A4(&v71);
        if (!v26)
        {
          goto LABEL_19;
        }
      }

      sub_1000249A8(&v71, &v73);
      sub_100026180(&v73, &v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v28;
      v40 = sub_100037A08(v38, v37);
      v42 = v28[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_55;
      }

      v46 = v41;
      if (v28[3] < v45)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_37;
      }

      v50 = v40;
      sub_10007723C();
      v40 = v50;
      if ((v46 & 1) == 0)
      {
LABEL_40:
        v28 = v70;
        v70[(v40 >> 6) + 8] |= 1 << v40;
        v51 = (v28[6] + 16 * v40);
        *v51 = v38;
        v51[1] = v37;
        sub_1000249A8(&v71, (v28[7] + 32 * v40));
        sub_100024F7C(&v73);
        sub_100024F7C(&v75);
        v52 = v28[2];
        v44 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v44)
        {
          goto LABEL_56;
        }

        v28[2] = v53;
        goto LABEL_42;
      }

LABEL_38:
      v48 = v40;

      v28 = v70;
      v49 = (v70[7] + 32 * v48);
      sub_100024F7C(v49);
      sub_1000249A8(&v71, v49);
      sub_100024F7C(&v73);
      sub_100024F7C(&v75);
LABEL_42:
      if (!v26)
      {
LABEL_19:
        if (v27 <= v22 + 1)
        {
          v29 = v22 + 1;
        }

        else
        {
          v29 = v27;
        }

        v30 = v29 - 1;
        while (1)
        {
          v31 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v31 >= v27)
          {
            v26 = 0;
            v76 = 0u;
            v77 = 0u;
            v22 = v30;
            v75 = 0u;
            goto LABEL_30;
          }

          v26 = *(v25 + 8 * v31);
          ++v22;
          if (v26)
          {
            v22 = v31;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    sub_100076048(v45, isUniquelyReferenced_nonNull_native);
    v40 = sub_100037A08(v38, v37);
    if ((v46 & 1) != (v47 & 1))
    {
      goto LABEL_57;
    }

LABEL_37:
    if ((v46 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v12 = a2;
  v13 = v75;
  v14 = *(v75 + 16);
  v15 = v2;
  if (v14)
  {
    v16 = 0;
    v17 = v13 + 32;
    v18 = _swiftEmptyArrayStorage;
    while (v16 < *(v13 + 16))
    {
      sub_100026180(v17, &v78);
      sub_100063C28(&v73, &v78);
      sub_100024F7C(&v78);
      if (v74)
      {
        sub_1000249A8(&v73, &v75);
        sub_1000249A8(&v75, &v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1000645D8(0, *(v18 + 2) + 1, 1, v18);
        }

        v20 = *(v18 + 2);
        v19 = *(v18 + 3);
        if (v20 >= v19 >> 1)
        {
          v18 = sub_1000645D8((v19 > 1), v20 + 1, 1, v18);
        }

        *(v18 + 2) = v20 + 1;
        sub_1000249A8(&v73, &v18[32 * v20 + 32]);
      }

      else
      {
        sub_1000272A4(&v73);
      }

      ++v16;
      v17 += 32;
      if (v14 == v16)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_54;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_48:

  v12[3] = v11;
  *v12 = v18;
  return result;
}

size_t sub_1000643FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100022F18(a5, a6);
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

char *sub_1000645D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100022F18(&qword_1000B94E0, &qword_10008DF88);
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

uint64_t sub_1000646E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100024C08(a3, v28 - v12, &qword_1000B82B8, &qword_10008C6C0);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_10002624C(v13, &qword_1000B82B8, &qword_10008C6C0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

void sub_1000649E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100022F18(&qword_1000B9548, &unk_10008DFF0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v12 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v12);
    ++v6;
  }

  while (!v4);
  while (1)
  {
    v13 = __clz(__rbit64(v4)) | (v12 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100024C08(*(a1 + 56) + 40 * v13, &v25, &qword_1000B8E20, &qword_10008D4C0);

    sub_100022F18(&qword_1000B8E20, &qword_10008D4C0);
    sub_10003B7FC();
    if (!swift_dynamicCast())
    {
      break;
    }

    v4 &= v4 - 1;
    v17 = sub_100037A08(v16, v15);
    if (v18)
    {
      v7 = (v1[6] + 16 * v17);
      v8 = v7[1];
      *v7 = v16;
      v7[1] = v15;
      v9 = v17;

      v10 = v1[7];
      v11 = *(v10 + 8 * v9);
      *(v10 + 8 * v9) = v24;

      v6 = v12;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_22;
      }

      *(v1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      v19 = (v1[6] + 16 * v17);
      *v19 = v16;
      v19[1] = v15;
      *(v1[7] + 8 * v17) = v24;
      v20 = v1[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_23;
      }

      v1[2] = v22;
      v6 = v12;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v12 = v6;
  }
}

unint64_t sub_100064C5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100022F18(&qword_1000B8090, &unk_10008C570);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_100034FBC(*(a1 + 48) + 40 * v14, v29);
        sub_100026180(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_100034FBC(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100026180(v27 + 8, v22);
        sub_10002624C(v26, &qword_1000B9558, qword_10008E040);
        v23 = v20;
        sub_1000249A8(v22, v24);
        v15 = v23;
        sub_1000249A8(v24, v25);
        sub_1000249A8(v25, &v23);
        result = sub_100037A08(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100024F7C(v12);
          result = sub_1000249A8(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_1000249A8(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_10002624C(v26, &qword_1000B9558, qword_10008E040);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id ParentalControlsPushHandler.init()()
{
  *&v0[OBJC_IVAR___FAParentalControlsPushHandler_parentalControlsOperation] = [objc_allocWithZone(type metadata accessor for FAParentalControlsOperation()) init];
  v1 = [objc_allocWithZone(FAAgeRangeController) init];
  *&v0[OBJC_IVAR___FAParentalControlsPushHandler_ageRangeController] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ParentalControlsPushHandler();
  return objc_msgSendSuper2(&v3, "init");
}

Swift::Bool __swiftcall ParentalControlsPushHandler.shouldProcess(_:)(FAPushMessage_optional *a1)
{
  if (a1)
  {
    v1 = [(FAPushMessage_optional *)a1 event];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == 0xD000000000000016 && 0x8000000100089260 == v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    LOBYTE(a1) = v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return a1;
}

Swift::Void __swiftcall ParentalControlsPushHandler.process(_:)(FAPushMessage_optional *a1)
{
  v61 = type metadata accessor for Logger();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v61, v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v59 - v11;
  if (!a1)
  {
    goto LABEL_78;
  }

  v13 = [(FAPushMessage_optional *)a1 payload];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = sub_100064C5C(v14);

  if (v15)
  {

    v16 = [(FAPushMessage_optional *)a1 setForDSID];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = HIBYTE(v20) & 0xF;
      v22 = v18 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        if ((v20 & 0x1000000000000000) != 0)
        {
          v63 = 0;
          v26 = sub_100066C20(v18, v20, 10);
          v44 = v58;
LABEL_66:

          if ((v44 & 1) == 0)
          {
            v55 = type metadata accessor for TaskPriority();
            (*(*(v55 - 8) + 56))(v12, 1, 1, v55);
            v56 = swift_allocObject();
            v56[2] = 0;
            v56[3] = 0;
            v56[4] = v1;
            v56[5] = v26;
            v57 = v1;
            sub_1000646E8(0, 0, v12, &unk_10008DFB0, v56);

            return;
          }

          goto LABEL_67;
        }

        if ((v20 & 0x2000000000000000) != 0)
        {
          v62[0] = v18;
          v62[1] = v20 & 0xFFFFFFFFFFFFFFLL;
          if (v18 == 43)
          {
            if (v21)
            {
              if (--v21)
              {
                v26 = 0;
                v36 = v62 + 1;
                while (1)
                {
                  v37 = *v36 - 48;
                  if (v37 > 9)
                  {
                    break;
                  }

                  v38 = 10 * v26;
                  if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                  {
                    break;
                  }

                  v26 = v38 + v37;
                  if (__OFADD__(v38, v37))
                  {
                    break;
                  }

                  ++v36;
                  if (!--v21)
                  {
                    goto LABEL_65;
                  }
                }
              }

              goto LABEL_64;
            }

            goto LABEL_77;
          }

          if (v18 != 45)
          {
            if (v21)
            {
              v26 = 0;
              v41 = v62;
              while (1)
              {
                v42 = *v41 - 48;
                if (v42 > 9)
                {
                  break;
                }

                v43 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  break;
                }

                v26 = v43 + v42;
                if (__OFADD__(v43, v42))
                {
                  break;
                }

                v41 = (v41 + 1);
                if (!--v21)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }

          if (v21)
          {
            if (--v21)
            {
              v26 = 0;
              v30 = v62 + 1;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  break;
                }

                v32 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  break;
                }

                v26 = v32 - v31;
                if (__OFSUB__(v32, v31))
                {
                  break;
                }

                ++v30;
                if (!--v21)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }
        }

        else
        {
          if ((v18 & 0x1000000000000000) != 0)
          {
            v24 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v24 = _StringObject.sharedUTF8.getter();
          }

          v25 = *v24;
          if (v25 == 43)
          {
            if (v22 >= 1)
            {
              v21 = v22 - 1;
              if (v22 != 1)
              {
                v26 = 0;
                if (v24)
                {
                  v33 = v24 + 1;
                  while (1)
                  {
                    v34 = *v33 - 48;
                    if (v34 > 9)
                    {
                      goto LABEL_64;
                    }

                    v35 = 10 * v26;
                    if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                    {
                      goto LABEL_64;
                    }

                    v26 = v35 + v34;
                    if (__OFADD__(v35, v34))
                    {
                      goto LABEL_64;
                    }

                    ++v33;
                    if (!--v21)
                    {
                      goto LABEL_65;
                    }
                  }
                }

                goto LABEL_56;
              }

              goto LABEL_64;
            }

            goto LABEL_76;
          }

          if (v25 != 45)
          {
            if (v22)
            {
              v26 = 0;
              if (v24)
              {
                while (1)
                {
                  v39 = *v24 - 48;
                  if (v39 > 9)
                  {
                    goto LABEL_64;
                  }

                  v40 = 10 * v26;
                  if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v26 = v40 + v39;
                  if (__OFADD__(v40, v39))
                  {
                    goto LABEL_64;
                  }

                  ++v24;
                  if (!--v22)
                  {
                    goto LABEL_56;
                  }
                }
              }

              goto LABEL_56;
            }

LABEL_64:
            v26 = 0;
            LOBYTE(v21) = 1;
            goto LABEL_65;
          }

          if (v22 >= 1)
          {
            v21 = v22 - 1;
            if (v22 != 1)
            {
              v26 = 0;
              if (v24)
              {
                v27 = v24 + 1;
                while (1)
                {
                  v28 = *v27 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_64;
                  }

                  v29 = 10 * v26;
                  if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v26 = v29 - v28;
                  if (__OFSUB__(v29, v28))
                  {
                    goto LABEL_64;
                  }

                  ++v27;
                  if (!--v21)
                  {
                    goto LABEL_65;
                  }
                }
              }

LABEL_56:
              LOBYTE(v21) = 0;
LABEL_65:
              v63 = v21;
              v44 = v21;
              goto LABEL_66;
            }

            goto LABEL_64;
          }

          __break(1u);
        }

        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        return;
      }
    }
  }

LABEL_67:
  static FamilyLogger.daemon.getter();
  v45 = a1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v62[0] = v49;
    *v48 = 136315138;
    v50 = [(FAPushMessage_optional *)v45 payload];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v7;

    v51 = Dictionary.description.getter();
    v53 = v52;

    v54 = sub_1000373D4(v51, v53, v62);

    *(v48 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v46, v47, "Failed to process parental controls push with payload: %s", v48, 0xCu);
    sub_100024F7C(v49);

    (*(v3 + 8))(v60, v61);
  }

  else
  {

    (*(v3 + 8))(v7, v61);
  }
}

uint64_t sub_10006582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = type metadata accessor for Logger();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000658F8, 0, 0);
}

uint64_t sub_1000658F8()
{
  v1 = v0[27];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying to update parental controls on receive of push", v4, 2u);
  }

  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
  v9 = v0[22];
  v8 = v0[23];

  v10 = *(v7 + 8);
  v0[28] = v10;
  v10(v5, v6);
  v11 = *(v9 + OBJC_IVAR___FAParentalControlsPushHandler_parentalControlsOperation);
  v12 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
  v0[29] = v12;
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_100065A68;

  return sub_10006DFAC(v12);
}

uint64_t sub_100065A68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_10006642C;
  }

  else
  {

    v5 = sub_100065B84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100065B84()
{
  v1 = v0[31];
  if (v1)
  {
    v2 = v1;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v3 = sub_100023D48(_swiftEmptyArrayStorage);

  v4 = sub_100073364(v3);
  v0[33] = v4;

  result = [(objc_class *)v4 integerValue];
  v0[34] = result;
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = [objc_allocWithZone(NSNumber) initWithInteger:v0[23]];
  v0[35] = v6;
  v7 = swift_task_alloc();
  v0[36] = v7;
  *v7 = v0;
  v7[1] = sub_100065D00;

  return sub_100067850(v6);
}

uint64_t sub_100065D00(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 288);
  v8 = *v3;
  *(v4 + 296) = a1;
  *(v4 + 304) = a2;
  *(v4 + 312) = v2;

  if (v2)
  {
    v6 = sub_10006608C;
  }

  else
  {

    v6 = sub_100065E20;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100065E20()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = v1;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v3 = sub_100023D48(_swiftEmptyArrayStorage);

  v4 = *(v0 + 248);
  sub_100073B2C(v3);
  v6 = v5;

  if (v4)
  {
    v7 = *(v0 + 248);
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v8 = sub_100023D48(_swiftEmptyArrayStorage);

  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  v11 = *(v0 + 272);
  v12 = *(v0 + 176);
  v13 = sub_100073748(v8);
  *(v0 + 320) = v13;

  v14 = *(v12 + OBJC_IVAR___FAParentalControlsPushHandler_ageRangeController);
  v15 = String._bridgeToObjectiveC()();
  *(v0 + 328) = v15;

  v16 = [objc_allocWithZone(NSNumber) initWithDouble:v6];
  *(v0 + 336) = v16;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100066288;
  v17 = swift_continuation_init();
  *(v0 + 136) = sub_100022F18(&qword_1000B9550, &unk_10008E020);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100066824;
  *(v0 + 104) = &unk_1000A91B8;
  *(v0 + 112) = v17;
  [v14 saveAgeRangeGlobalState:v11 forAltDSID:v15 cacheDuration:v16 privacyVersion:v13 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10006608C()
{
  v28 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);

  v3 = *(v0 + 312);
  v4 = *(v0 + 208);
  static FamilyLogger.daemon.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v25 = *(v0 + 208);
    v26 = *(v0 + 224);
    v8 = *(v0 + 192);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000373D4(v14, v15, &v27);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to process parental controls push with error: %s", v9, 0xCu);
    sub_100024F7C(v10);

    v26(v25, v8);
  }

  else
  {
    v17 = *(v0 + 224);
    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    v20 = *(v0 + 192);

    v17(v18, v20);
  }

  v22 = *(v0 + 208);
  v21 = *(v0 + 216);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100066288()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_100066618;
  }

  else
  {
    v3 = sub_100066398;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100066398()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);

  v6 = *(v0 + 208);
  v5 = *(v0 + 216);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006642C()
{
  v26 = v0;

  v1 = *(v0 + 256);
  v2 = *(v0 + 208);
  static FamilyLogger.daemon.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 200);
    v23 = *(v0 + 208);
    v24 = *(v0 + 224);
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000373D4(v12, v13, &v25);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to process parental controls push with error: %s", v7, 0xCu);
    sub_100024F7C(v8);

    v24(v23, v6);
  }

  else
  {
    v15 = *(v0 + 224);
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v18 = *(v0 + 192);

    v15(v16, v18);
  }

  v20 = *(v0 + 208);
  v19 = *(v0 + 216);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100066618()
{
  v32 = v0;
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[33];
  v6 = v0[31];
  swift_willThrow();

  v7 = v0[43];
  v8 = v0[26];
  static FamilyLogger.daemon.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[25];
    v29 = v0[26];
    v30 = v0[28];
    v12 = v0[24];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[20];
    v18 = Error.localizedDescription.getter();
    v20 = sub_1000373D4(v18, v19, &v31);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to process parental controls push with error: %s", v13, 0xCu);
    sub_100024F7C(v14);

    v30(v29, v12);
  }

  else
  {
    v21 = v0[28];
    v23 = v0[25];
    v22 = v0[26];
    v24 = v0[24];

    v21(v22, v24);
  }

  v26 = v0[26];
  v25 = v0[27];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100066824(uint64_t a1, void *a2)
{
  v3 = sub_1000297A8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

id ParentalControlsPushHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParentalControlsPushHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000669BC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100066AB4;

  return v7(a1);
}

uint64_t sub_100066AB4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_100066BAC(uint64_t a1, uint64_t a2)
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

  sub_100022F18(&qword_1000B8BC8, &unk_10008E030);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_100066C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000673DC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000671AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100026358;

  return sub_10006582C(a1, v4, v5, v7, v6);
}

uint64_t sub_10006726C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100026620;

  return sub_1000669BC(a1, v5);
}

uint64_t sub_100067324(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100026358;

  return sub_1000669BC(a1, v5);
}

uint64_t sub_1000673DC()
{
  v0 = String.subscript.getter();
  v4 = sub_10006745C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10006745C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100066BAC(v9, 0);
  v12 = sub_1000675B4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000675B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000677D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000677D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000677D4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100067870()
{
  v1 = v0 + 26;
  v2 = [objc_opt_self() defaultStore];
  v0[28] = v2;
  if (v2)
  {
    v3 = v2;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_100067A90;
    v4 = swift_continuation_init();
    v0[25] = sub_100022F18(&qword_1000B9048, &unk_10008D840);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_10006D050;
    v0[21] = &unk_1000A9208;
    v0[22] = v4;
    [v3 aa_primaryAppleAccountWithCompletion:v0 + 18];
    v5 = v0 + 10;
  }

  else
  {
    v6 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    v0[30] = v6;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_100068074;
    v7 = swift_continuation_init();
    v0[25] = sub_100022F18(&unk_1000B8440, &unk_10008C890);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_10007415C;
    v0[21] = &unk_1000A91E0;
    v0[22] = v7;
    [v6 startRequestWithCompletionHandler:v0 + 18];
    v5 = v0 + 2;
  }

  return _swift_continuation_await(v5);
}

uint64_t sub_100067A90()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_100068370;
  }

  else
  {
    v3 = sub_100067BA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100067BA0()
{
  v42 = v0;
  v1 = *(v0 + 208);

  if (!v1)
  {
LABEL_72:
    v38 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    *(v0 + 240) = v38;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_100068074;
    v39 = swift_continuation_init();
    *(v0 + 200) = sub_100022F18(&unk_1000B8440, &unk_10008C890);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10007415C;
    *(v0 + 168) = &unk_1000A91E0;
    *(v0 + 176) = v39;
    [v38 startRequestWithCompletionHandler:v0 + 144];
    v7 = (v0 + 16);

    return _swift_continuation_await(v7);
  }

  v2 = [v1 aa_personID];
  if (!v2)
  {
LABEL_71:

    goto LABEL_72;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v8 = HIBYTE(v6) & 0xF;
  v9 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v10 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_72;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v12 = sub_100066C20(v4, v6, 10);
    v30 = v40;
    goto LABEL_65;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v41[0] = v4;
    v41[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v4 == 43)
    {
      if (v8)
      {
        if (--v8)
        {
          v12 = 0;
          v22 = v41 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_81:
      __break(1u);
      return _swift_continuation_await(v7);
    }

    if (v4 != 45)
    {
      if (v8)
      {
        v12 = 0;
        v27 = v41;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v8)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v8)
    {
      if (--v8)
      {
        v12 = 0;
        v16 = v41 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v8)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_79;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v7 = _StringObject.sharedUTF8.getter();
  }

  v11 = *v7;
  if (v11 == 43)
  {
    if (v9 < 1)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v8 = v9 - 1;
    if (v9 != 1)
    {
      v12 = 0;
      if (v7)
      {
        v19 = v7 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            goto LABEL_63;
          }

          v21 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            goto LABEL_63;
          }

          v12 = v21 + v20;
          if (__OFADD__(v21, v20))
          {
            goto LABEL_63;
          }

          ++v19;
          if (!--v8)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_55;
    }

LABEL_63:
    v12 = 0;
    LOBYTE(v8) = 1;
    goto LABEL_64;
  }

  if (v11 != 45)
  {
    if (v9)
    {
      v12 = 0;
      if (v7)
      {
        while (1)
        {
          v25 = *v7 - 48;
          if (v25 > 9)
          {
            goto LABEL_63;
          }

          v26 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            goto LABEL_63;
          }

          v12 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            goto LABEL_63;
          }

          ++v7;
          if (!--v9)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_55;
    }

    goto LABEL_63;
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v8 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_63;
  }

  v12 = 0;
  if (v7)
  {
    v13 = v7 + 1;
    while (1)
    {
      v14 = *v13 - 48;
      if (v14 > 9)
      {
        goto LABEL_63;
      }

      v15 = 10 * v12;
      if ((v12 * 10) >> 64 != (10 * v12) >> 63)
      {
        goto LABEL_63;
      }

      v12 = v15 - v14;
      if (__OFSUB__(v15, v14))
      {
        goto LABEL_63;
      }

      ++v13;
      if (!--v8)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_55:
  LOBYTE(v8) = 0;
LABEL_64:
  v30 = v8;
LABEL_65:

  if (v30)
  {
    goto LABEL_71;
  }

  if ([*(v0 + 216) integerValue] != v12)
  {
    goto LABEL_71;
  }

  v31 = [v1 aa_altDSID];
  if (!v31)
  {
    goto LABEL_71;
  }

  v32 = v31;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = *(v0 + 8);

  return v36(v33, v35);
}

uint64_t sub_100068074()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_100068300;
  }

  else
  {
    v3 = sub_100068184;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100068184()
{
  v1 = v0[26];
  v2 = [v1 memberForDSID:v0[27]];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 altDSID];
    if (v4)
    {
      v5 = v0[30];
      v6 = v4;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = v0[1];

      return v10(v7, v9);
    }
  }

  v12 = v0[30];
  type metadata accessor for AgeRangeError(0);
  v0[26] = -4004;
  sub_100023D48(_swiftEmptyArrayStorage);
  sub_1000683E0();
  _BridgedStoredNSError.init(_:userInfo:)();
  v13 = v0[18];
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100068300()
{
  v1 = v0[30];
  v2 = v0[31];
  swift_willThrow();

  v3 = v0[31];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100068370()
{
  v1 = v0[28];
  v2 = v0[29];
  swift_willThrow();

  v3 = v0[29];
  v4 = v0[1];

  return v4();
}

unint64_t sub_1000683E0()
{
  result = qword_1000B8068;
  if (!qword_1000B8068)
  {
    type metadata accessor for AgeRangeError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8068);
  }

  return result;
}

uint64_t sub_1000684D8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___FAXPCEventObserver_delegate);
    v2 = result;
    swift_unknownObjectRetain();

    [v1 handleContactsChanged];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100068554()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR___FAXPCEventObserver_handlers;
  swift_beginAccess();

  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v2);
  *(v0 + v2) = 0x8000000000000000;
  sub_100076938(sub_100069124, v1, 0xD00000000000002DLL, 0x8000000100089420, isUniquelyReferenced_nonNull_native);
  *(v0 + v2) = v10;
  swift_endAccess();

  v5 = *(v0 + OBJC_IVAR___FAXPCEventObserver_stream);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v7 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10006912C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006913C;
  aBlock[3] = &unk_1000A92D0;
  v8 = _Block_copy(aBlock);

  [v5 setEventHandlerForStream:v7 queue:0 handler:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();
}

uint64_t sub_100068758(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [a1 name];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = OBJC_IVAR___FAXPCEventObserver_handlers;
    swift_beginAccess();
    v9 = *&v3[v8];

    if (*(v9 + 16))
    {
      v10 = sub_100037A08(v5, v7);
      v12 = v11;

      if (v12)
      {
        v13 = *(v9 + 56) + 16 * v10;
        v15 = *v13;
        v14 = *(v13 + 8);

        v16 = a1;
        v15(&v16);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1000689C4(uint64_t a1, void (*a2)(void))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for XPCEvent();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC13familycircled8XPCEvent_object] = a1;
  v30.receiver = v11;
  v30.super_class = v10;
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v30, "init");
  static FamilyLogger.daemon.getter();
  v13 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v5;
    v17 = v16;
    v26 = swift_slowAlloc();
    v29 = v26;
    *v17 = 136315138;
    v18 = [v13 name];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v4;
    v20 = v19;
    v21 = a2;
    v23 = v22;

    v24 = sub_1000373D4(v20, v23, &v29);
    a2 = v21;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "did receive xpc event: %s", v17, 0xCu);
    sub_100024F7C(v26);

    (*(v28 + 8))(v9, v27);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v25 = v13;
  a2();
}

uint64_t sub_100068C38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_100068EBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100068F90()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xpc_dictionary_get_string(*(v0 + OBJC_IVAR____TtC13familycircled8XPCEvent_object), _xpc_event_key_name))
  {
    return String.init(cString:)();
  }

  static FamilyLogger.daemon.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Unknown XPC event name received", v10, 2u);
  }

  (*(v2 + 8))(v6, v1);
  return 0xD000000000000021;
}

uint64_t sub_100069140@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SystemBackgroundRequestFactory();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  if ([v1 internalScheduler])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    sub_100022F18(&qword_1000B9780, &qword_10008E298);
    if (swift_dynamicCast())
    {
      if (*(&v22 + 1))
      {
        sub_10006CF34(&v21, v24);
        return sub_10006CF34(v24, a1);
      }
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }
  }

  else
  {
    sub_10002624C(v20, &qword_1000B82F8, &qword_10008CEB0);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
  }

  sub_10002624C(&v21, &qword_1000B9760, &qword_10008E270);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_100022F18(&qword_1000B9768, &qword_10008E288);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_10006CBF0(86400, &unk_10008E280, v8);

  v12 = objc_opt_self();

  v13 = [v12 sharedScheduler];
  SystemBackgroundRequestFactory.init()();
  *&v24[0] = v13;
  v14 = sub_100022F18(&qword_1000B9770, &qword_10008E290);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = SystemBackgroundTaskScheduler.init(taskProvider:underlyingScheduler:requestFactory:)();
  [v2 setInternalScheduler:v17];
  a1[3] = v14;
  a1[4] = sub_100031B9C(&qword_1000B9778, &qword_1000B9770, &qword_10008E290);

  *a1 = v17;
  return result;
}

uint64_t sub_100069428()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100069510;

    return sub_100069670();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100069510()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_10006960C, 0, 0);
}

uint64_t sub_10006960C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100069670()
{
  v1[25] = v0;
  v2 = *(*(sub_100022F18(&qword_1000B82B8, &qword_10008C6C0) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v3 = type metadata accessor for XPCActivity.Criteria.Options();
  v1[27] = v3;
  v4 = *(v3 - 8);
  v1[28] = v4;
  v5 = *(v4 + 64) + 15;
  v1[29] = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.Priority();
  v1[30] = v6;
  v7 = *(v6 - 8);
  v1[31] = v7;
  v8 = *(v7 + 64) + 15;
  v1[32] = swift_task_alloc();
  v9 = *(*(type metadata accessor for XPCActivity.Criteria() - 8) + 64) + 15;
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000697F0, 0, 0);
}

uint64_t sub_1000697F0()
{
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_10006990C;
  v2 = swift_continuation_init();
  v0[17] = sub_100022F18(&qword_1000B97A8, &qword_10008E2B8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100069D30;
  v0[13] = &unk_1000A9518;
  v0[14] = v2;
  [v1 performHeartbeatCheckinWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006990C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000699EC, 0, 0);
}

uint64_t sub_1000699EC()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[28];
  v16 = v0[29];
  v17 = v0[33];
  v5 = v0[27];
  v18 = v0[26];
  v19 = v0[25];
  v6 = v0[23];
  sub_100069140(v0 + 18);
  v7 = v0[22];
  sub_1000297A8(v0 + 18, v0[21]);
  dispatch thunk of BackgroundTaskScheduler.taskProvider.getter();
  (*(v3 + 104))(v1, enum case for XPCActivity.Priority.maintenance(_:), v2);
  sub_100022F18(&qword_1000B9788, &qword_10008E2A0);
  v8 = *(v4 + 72);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10008C760;
  static XPCActivity.Criteria.Options.requiresNetwork.getter();
  static XPCActivity.Criteria.Options.allowBattery.getter();
  v0[24] = v10;
  sub_10006D000(&qword_1000B9790, &type metadata accessor for XPCActivity.Criteria.Options);
  sub_100022F18(&qword_1000B9798, &qword_10008E2A8);
  sub_100031B9C(&qword_1000B97A0, &qword_1000B9798, &qword_10008E2A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of BackgroundTaskProvider.criteria.setter();
  swift_unknownObjectRelease();
  sub_100024F7C(v0 + 18);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v18, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v19;
  v13 = v19;
  sub_10006A334(0, 0, v18, &unk_10008E2C8, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100069D30(uint64_t a1, uint64_t a2)
{
  **(*(*sub_1000297A8((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_100069D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100069E4C, 0, 0);
}

uint64_t sub_100069E4C()
{
  v1 = *(v0 + 80);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_100069F18;
  v3 = *(v0 + 80);

  return sub_10006C414(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100069F18()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10006A260;
  }

  else
  {
    v6 = sub_10006A088;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10006A088()
{
  v1 = v0[7];
  sub_100069140(v0 + 2);
  v2 = v0[5];
  v3 = v0[6];
  sub_1000297A8(v0 + 2, v2);
  v4 = async function pointer to dispatch thunk of BackgroundTaskScheduler.schedule()[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_10006A148;

  return dispatch thunk of BackgroundTaskScheduler.schedule()(v2, v3);
}

uint64_t sub_10006A148()
{
  v2 = *(*v1 + 104);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_10006D048;
  }

  else
  {
    v3 = sub_10006A2C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006A260()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_10006A2C4()
{
  v1 = v0[10];
  sub_100024F7C(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10006A334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v25 - v11;
  sub_10006C3A4(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002624C(v12, &qword_1000B82B8, &qword_10008C6C0);
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

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);

      return v23;
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

  sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10006A5F0()
{
  v1 = v0[7];
  sub_100069140(v0 + 2);
  v2 = v0[5];
  v3 = v0[6];
  sub_1000297A8(v0 + 2, v2);
  v4 = async function pointer to dispatch thunk of BackgroundTaskScheduler.schedule()[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10006A6B0;

  return dispatch thunk of BackgroundTaskScheduler.schedule()(v2, v3);
}

uint64_t sub_10006A6B0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10006A828;
  }

  else
  {
    v3 = sub_10006A7C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006A7C4()
{
  sub_100024F7C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006A828()
{
  sub_100024F7C(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_10006AA00(const void *a1, void *a2)
{
  *(v2 + 56) = a2;
  *(v2 + 64) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10006AA78, 0, 0);
}

uint64_t sub_10006AA78()
{
  v1 = v0[7];
  sub_100069140(v0 + 2);
  v2 = v0[5];
  v3 = v0[6];
  sub_1000297A8(v0 + 2, v2);
  v4 = async function pointer to dispatch thunk of BackgroundTaskScheduler.schedule()[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_10006AB38;

  return dispatch thunk of BackgroundTaskScheduler.schedule()(v2, v3);
}

uint64_t sub_10006AB38()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10006ACD0;
  }

  else
  {
    v3 = sub_10006AC4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006AC4C()
{
  v1 = *(v0 + 64);

  sub_100024F7C((v0 + 16));
  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 64));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006ACD0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_100024F7C((v0 + 16));
  v3 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v3);

  _Block_release(*(v0 + 64));
  v4 = *(v0 + 8);

  return v4();
}

Swift::Void __swiftcall FAHeartbeatActivity.unregister()()
{
  sub_100069140(v0);
  sub_1000297A8(v0, v0[3]);
  dispatch thunk of BackgroundTaskScheduler.unregister()();
  sub_100024F7C(v0);
}

uint64_t sub_10006AE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;

  sub_10006A334(0, 0, v10, &unk_10008E240, v12);
}

uint64_t sub_10006AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10006B038, 0, 0);
}

uint64_t sub_10006B038()
{
  v29 = v0;
  v1 = v0[2];
  if (XPCActivity.shouldDefer()())
  {
    v2 = v0[7];
    static FamilyLogger.osUpdateActivity.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000373D4(0xD000000000000011, 0x8000000100089530, &v28);
      _os_log_impl(&_mh_execute_header, v3, v4, "FAOSUpdatedActivity %s - defering activityBlock", v9, 0xCu);
      sub_100024F7C(v10);
    }

    (*(v7 + 8))(v6, v8);
    v12 = v0[7];
    v11 = v0[8];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[8];
    static FamilyLogger.osUpdateActivity.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[6];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000373D4(0xD000000000000011, 0x8000000100089530, &v28);
      _os_log_impl(&_mh_execute_header, v16, v17, "FAOSUpdatedActivity %s - executing activityBlock", v22, 0xCu);
      sub_100024F7C(v23);
    }

    (*(v21 + 8))(v19, v20);
    v27 = (v0[3] + *v0[3]);
    v24 = *(v0[3] + 4);
    v25 = swift_task_alloc();
    v0[9] = v25;
    *v25 = v0;
    v25[1] = sub_10006B378;
    v26 = v0[4];

    return v27();
  }
}

uint64_t sub_10006B378()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_10006B4CC, 0, 0);
  }
}

uint64_t sub_10006B4CC()
{
  v1 = v0[2];
  XPCActivity.done()();
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006B540()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC13familycircled28HeartbeatXPCActivityProvider_criteria;
  v3 = type metadata accessor for XPCActivity.Criteria();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeartbeatXPCActivityProvider()
{
  result = qword_1000B9620;
  if (!qword_1000B9620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B638()
{
  result = type metadata accessor for XPCActivity.Criteria();
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

uint64_t sub_10006B6D8()
{
  result = type metadata accessor for XPCActivity.Criteria();
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

uint64_t (*sub_10006B808())(void *a1)
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10006C2A8;
  *(v4 + 24) = v3;

  return sub_10006C2B0;
}

uint64_t (*sub_10006B89C())(uint64_t a1)
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_allocObject();
  v4[2] = *(v1 + 80);
  v4[3] = *(v1 + 88);
  v4[4] = v3;
  v4[5] = v2;

  return sub_10006C8CC;
}

uint64_t sub_10006B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1, a2);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v22 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v12, a1, a4);
  v19 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  *(v20 + 6) = a2;
  *(v20 + 7) = a3;
  (*(v10 + 32))(&v20[v19], v12, a4);

  sub_10006A334(0, 0, v17, &unk_10008E250, v20);
}

uint64_t sub_10006BB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for Logger();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();

  return _swift_task_switch(sub_10006BBF4, 0, 0);
}

uint64_t sub_10006BBF4()
{
  v16 = v0;
  v1 = v0[9];
  static FamilyLogger.osUpdateActivity.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000011, 0x8000000100089530, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "FAOSUpdatedActivity %s - executing activityBlock", v8, 0xCu);
    sub_100024F7C(v9);
  }

  (*(v6 + 8))(v5, v7);
  v14 = (v0[2] + *v0[2]);
  v10 = *(v0[2] + 4);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_10006BDE8;
  v12 = v0[3];

  return v14();
}

uint64_t sub_10006BDE8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 72);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10006BF34, 0, 0);
  }
}

uint64_t sub_10006BF34()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  dispatch thunk of SystemBackgroundTaskProtocol.setTaskCompleted()();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006BFA8()
{
  v1 = *(v0 + 24);

  v2 = qword_1000BC038;
  v3 = type metadata accessor for XPCActivity.Criteria();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_10006C010()
{
  sub_10006BFA8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10006C098@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = type metadata accessor for XPCActivity.Criteria();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_10006C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = type metadata accessor for XPCActivity.Criteria();
  (*(*(v7 - 8) + 40))(v4 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_10006C2B0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_10006C2DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100026358;

  return sub_10006AF68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10006C3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10006C514, 0, 0);
}

uint64_t sub_10006C514()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_10006D000(&qword_1000B97B0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10006D000(&qword_1000B97B8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10006C6A4;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10006C6A4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_10006C860, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_10006C860()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_10006C8D8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100026620;

  return sub_10006BB2C(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

uint64_t sub_10006C9E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100026620;

  return sub_10006AA00(v2, v3);
}

uint64_t sub_10006CA94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100026358;

  return sub_100071F00(a1, v4, v5, v7);
}

uint64_t sub_10006CB60()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100026620;

  return sub_100069408(v0);
}

uint64_t sub_10006CBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v28 = a1;
  v27 = type metadata accessor for XPCActivity.Criteria.Options();
  v25 = *(v27 - 8);
  v6 = v25;
  v7 = *(v25 + 64);
  __chkstk_darwin(v27, v8);
  v9 = type metadata accessor for XPCActivity.Priority();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for XPCActivity.Criteria();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v26, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = v24;
  *(v3 + 24) = a3;
  (*(v10 + 104))(v14, enum case for XPCActivity.Priority.maintenance(_:), v9);
  sub_100022F18(&qword_1000B9788, &qword_10008E2A0);
  v20 = *(v6 + 72);
  v21 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10008C760;

  static XPCActivity.Criteria.Options.requiresNetwork.getter();
  static XPCActivity.Criteria.Options.allowBattery.getter();
  v29 = v22;
  sub_10006D000(&qword_1000B9790, &type metadata accessor for XPCActivity.Criteria.Options);
  sub_100022F18(&qword_1000B9798, &qword_10008E2A8);
  sub_100031B9C(&qword_1000B97A0, &qword_1000B9798, &qword_10008E2A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
  (*(v15 + 32))(v4 + qword_1000BC038, v19, v26);
  return v4;
}

uint64_t sub_10006CF34(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10006CF4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100026620;

  return sub_100069D8C(a1, v4, v5, v6);
}

uint64_t sub_10006D000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006D050(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000297A8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_10006D120()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultStore];
  v3 = [v2 aa_primaryAppleAccount];
  v4 = objc_allocWithZone(FADeviceInfo);
  v5 = v3;
  v6 = [v4 init];
  v7 = [objc_allocWithZone(FAURLConfiguration) init];
  v8 = [objc_opt_self() sharedSession];
  v9 = [objc_allocWithZone(FANetworkService) initWithAccount:v5 deviceInfo:v6 urlProvider:v7 urlSession:v8];

  *&v0[OBJC_IVAR___FAParentalControlsOperation_networkService] = v9;
  v10 = [v2 aa_grandSlamAccountForiCloudAccount:v5];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = objc_allocWithZone(AAGrandSlamSigner);
  v12 = v2;
  v13 = String._bridgeToObjectiveC()();

  v14 = [v11 initWithAccountStore:v12 grandSlamAccount:v10 appTokenID:v13];

  *&v0[OBJC_IVAR___FAParentalControlsOperation_aaGrandSlamSigner] = v14;
  v15 = [v1 defaultStore];
  v16 = [v12 aa_grandSlamAccountForiCloudAccount:v5];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = objc_allocWithZone(AAGrandSlamSigner);
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 initWithAccountStore:v15 grandSlamAccount:v16 appTokenID:v18];

  if (v19)
  {
    v20 = AAFamilyGrandSlamTokenHeaderKey;
    v21 = v19;
    v22 = v20;
    [v21 setHeaderFieldKey:v22];
  }

  *&v0[OBJC_IVAR___FAParentalControlsOperation_familyGrandSlamSigner] = v19;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for FAParentalControlsOperation();
  return objc_msgSendSuper2(&v24, "init");
}

uint64_t sub_10006D428(uint64_t a1, uint64_t a2)
{
  v3[12] = v2;
  v6 = *(*(sub_100022F18(&qword_1000B8290, &unk_10008C690) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[17] = v10;
  *v10 = v3;
  v10[1] = sub_10006D578;

  return sub_1000722D4(a1, a2);
}

uint64_t sub_10006D578(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {
    v6 = *(v3 + 128);
    v7 = *(v3 + 104);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_10006D6D4, 0, 0);
  }
}

uint64_t sub_10006D6D4()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C640;
  *(inited + 32) = 0x5344726F46746573;
  *(inited + 40) = 0xEA00000000004449;
  *(inited + 72) = sub_100060238();
  *(inited + 48) = v1;
  v6 = v1;
  v7 = sub_100023D48(inited);
  v0[19] = v7;
  swift_setDeallocating();
  sub_10002624C(inited + 32, &qword_1000B8098, &unk_10008C6B0);
  URL.init(string:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10002624C(v0[13], &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_10006D8F0;
    v10 = v0[16];
    v11 = v0[12];

    return sub_100070840(v10, v7);
  }
}

uint64_t sub_10006D8F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = v1;

  v7 = v4[19];
  v8 = v4[16];
  v9 = v4[15];
  v10 = v4[14];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_10006DB1C;
  }

  else
  {
    v4[22] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_10006DA9C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10006DA9C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);

  v3 = *(v0 + 8);
  v4 = *(v0 + 176);

  return v3(v4);
}

uint64_t sub_10006DB1C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10006DD1C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10006DDF0;

  return sub_10006D428(v5, v7);
}

uint64_t sub_10006DDF0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10006DFAC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(sub_100022F18(&qword_1000B8290, &unk_10008C690) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[18] = v7;
  v8 = *(v7 - 8);
  v2[19] = v8;
  v9 = *(v8 + 64) + 15;
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_10006E100, 0, 0);
}

uint64_t sub_10006E100()
{
  v1 = v0[20];
  v2 = v0[12];
  static FamilyLogger.daemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "fetchParentalControls dsid: %@", v7, 0xCu);
    sub_10002624C(v8, &qword_1000B8590, &qword_10008C960);
  }

  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[14];
  v16 = v0[12];

  (*(v11 + 8))(v10, v12);
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C640;
  *(inited + 32) = 0x5344726F46746573;
  *(inited + 40) = 0xEA00000000004449;
  *(inited + 72) = sub_100060238();
  *(inited + 48) = v16;
  v18 = v16;
  v19 = sub_100023D48(inited);
  v0[21] = v19;
  swift_setDeallocating();
  sub_10002624C(inited + 32, &qword_1000B8098, &unk_10008C6B0);
  URL.init(string:)();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_10002624C(v0[14], &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
    v21 = swift_task_alloc();
    v0[22] = v21;
    *v21 = v0;
    v21[1] = sub_10006E420;
    v22 = v0[17];
    v23 = v0[13];

    return sub_100070840(v22, v19);
  }
}

uint64_t sub_10006E420(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  v4[23] = v1;

  v7 = v4[21];
  if (v1)
  {
    (*(v4[16] + 8))(v4[17], v4[15]);

    return _swift_task_switch(sub_10006E5F0, 0, 0);
  }

  else
  {
    v8 = v4[20];
    v9 = v4[16];
    v10 = v4[17];
    v12 = v4 + 14;
    v11 = v4[14];
    (*(v9 + 8))(v10, v12[1]);

    v13 = *(v6 + 8);

    return v13(a1);
  }
}

uint64_t sub_10006E5F0()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_10006E66C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 144) = v3;
  *(v4 + 224) = a3;
  v7 = *(*(sub_100022F18(&qword_1000B8290, &unk_10008C690) - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v4 + 160) = v8;
  v9 = *(v8 - 8);
  *(v4 + 168) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v4 + 184) = v11;
  *v11 = v4;
  v11[1] = sub_10006E7C0;

  return sub_1000722D4(a1, a2);
}

uint64_t sub_10006E7C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {
    v6 = *(v3 + 176);
    v7 = *(v3 + 152);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_10006E91C, 0, 0);
  }
}

uint64_t sub_10006E91C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 224);
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C760;
  *(inited + 32) = 0xD000000000000021;
  *(inited + 40) = 0x80000001000897B0;
  *(inited + 48) = v5;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x5344726F46746573;
  *(inited + 88) = 0xEA00000000004449;
  *(inited + 120) = sub_100060238();
  *(inited + 96) = v1;
  v7 = v1;
  v8 = sub_100023D48(inited);
  *(v0 + 200) = v8;
  swift_setDeallocating();
  sub_100022F18(&qword_1000B8098, &unk_10008C6B0);
  swift_arrayDestroy();
  URL.init(string:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10002624C(*(v0 + 152), &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_10006EB7C;
    v11 = *(v0 + 176);
    v12 = *(v0 + 144);

    return sub_100070840(v11, v8);
  }
}

uint64_t sub_10006EB7C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  v7 = v4[25];
  v8 = v4[22];
  v9 = v4[21];
  v10 = v4[20];
  if (v1)
  {
    (*(v9 + 8))(v4[22], v4[20]);

    v11 = sub_100074150;
  }

  else
  {
    v12 = v4[25];

    (*(v9 + 8))(v8, v10);
    v11 = sub_100074158;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10006EED0(int a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_100074154;

  return sub_10006E66C(v7, v9, a2);
}

uint64_t sub_10006EFB4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 144) = v3;
  *(v4 + 224) = a3;
  v7 = *(*(sub_100022F18(&qword_1000B8290, &unk_10008C690) - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v4 + 160) = v8;
  v9 = *(v8 - 8);
  *(v4 + 168) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v4 + 184) = v11;
  *v11 = v4;
  v11[1] = sub_10006F108;

  return sub_1000722D4(a1, a2);
}

uint64_t sub_10006F108(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {
    v6 = *(v3 + 176);
    v7 = *(v3 + 152);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_10006F264, 0, 0);
  }
}

uint64_t sub_10006F264()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 224);
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C760;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000100089790;
  *(inited + 48) = v5;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x5344726F46746573;
  *(inited + 88) = 0xEA00000000004449;
  *(inited + 120) = sub_100060238();
  *(inited + 96) = v1;
  v7 = v1;
  v8 = sub_100023D48(inited);
  *(v0 + 200) = v8;
  swift_setDeallocating();
  sub_100022F18(&qword_1000B8098, &unk_10008C6B0);
  swift_arrayDestroy();
  URL.init(string:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10002624C(*(v0 + 152), &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_10006F4C4;
    v11 = *(v0 + 176);
    v12 = *(v0 + 144);

    return sub_100070840(v11, v8);
  }
}

uint64_t sub_10006F4C4(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  v7 = v4[25];
  v8 = v4[22];
  v9 = v4[21];
  v10 = v4[20];
  if (v1)
  {
    (*(v9 + 8))(v4[22], v4[20]);

    v11 = sub_10006F704;
  }

  else
  {
    v12 = v4[25];

    (*(v9 + 8))(v8, v10);
    v11 = sub_10006F688;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10006F688()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10006F704()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10006F90C(int a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_10006F9F0;

  return sub_10006EFB4(v7, v9, a2);
}

uint64_t sub_10006F9F0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10006FB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[30] = a3;
  v8 = *(*(sub_100022F18(&qword_1000B8290, &unk_10008C690) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v5[34] = v9;
  v10 = *(v9 - 8);
  v5[35] = v10;
  v11 = *(v10 + 64) + 15;
  v5[36] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[37] = v12;
  *v12 = v5;
  v12[1] = sub_10006FCE4;

  return sub_1000722D4(a1, a2);
}

uint64_t sub_10006FCE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v5 = *v2;
  *(*v2 + 304) = a1;

  if (v1)
  {
    v6 = *(v3 + 288);
    v7 = *(v3 + 264);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_10006FE40, 0, 0);
  }
}

uint64_t sub_10006FE40()
{
  v1 = v0[38];
  v2 = v0[35];
  v16 = v0[34];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E2E0;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x80000001000896F0;
  v7 = sub_100060238();
  *(inited + 48) = v4;
  *(inited + 72) = v7;
  *(inited + 80) = 0x5344726F46746573;
  *(inited + 88) = 0xEA00000000004449;
  *(inited + 96) = v1;
  *(inited + 120) = v7;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = 0x8000000100089710;
  v8 = v4;
  v9 = v1;
  *(inited + 144) = [v8 integerValue] != 0;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 216) = v7;
  *(inited + 184) = 0x8000000100089730;
  *(inited + 192) = v5;
  v10 = v5;
  v11 = sub_100023D48(inited);
  v0[39] = v11;
  swift_setDeallocating();
  sub_100022F18(&qword_1000B8098, &unk_10008C6B0);
  swift_arrayDestroy();
  URL.init(string:)();
  if ((*(v2 + 48))(v3, 1, v16) == 1)
  {
    sub_10002624C(v0[33], &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    (*(v0[35] + 32))(v0[36], v0[33], v0[34]);
    v13 = swift_task_alloc();
    v0[40] = v13;
    *v13 = v0;
    v13[1] = sub_100070104;
    v14 = v0[36];
    v15 = v0[32];

    return sub_100070840(v14, v11);
  }
}

uint64_t sub_100070104(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  v4[41] = v1;

  v7 = v4[39];
  v8 = v4[36];
  v9 = v4[35];
  v10 = v4[34];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_100070330;
  }

  else
  {
    v4[42] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1000702B0;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000702B0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);

  v3 = *(v0 + 8);
  v4 = *(v0 + 336);

  return v3(v4);
}

uint64_t sub_100070330()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10007054C(int a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[6] = v10;
  v12 = a2;
  v13 = a3;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_10007064C;

  return sub_10006FB90(v9, v11, v12, v13);
}

uint64_t sub_10007064C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 40);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (v12)[2](v12, 0, v13);

    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 40), a1, 0);
    _Block_release(v12);
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_100070840(uint64_t a1, uint64_t a2)
{
  v3[71] = v2;
  v3[70] = a2;
  v3[69] = a1;
  v4 = type metadata accessor for Logger();
  v3[72] = v4;
  v5 = *(v4 - 8);
  v3[73] = v5;
  v6 = *(v5 + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();

  return _swift_task_switch(sub_100070914, 0, 0);
}

uint64_t sub_100070914()
{
  v1 = v0[71];
  v2 = *(v1 + OBJC_IVAR___FAParentalControlsOperation_aaGrandSlamSigner);
  v0[76] = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR___FAParentalControlsOperation_familyGrandSlamSigner), (v0[77] = v3) != 0))
  {
    v4 = v0[70];
    v5 = v0[69];
    v6 = *(v1 + OBJC_IVAR___FAParentalControlsOperation_networkService);
    v7 = v2;
    v8 = v3;
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v12 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v14 = [v6 standardRequestWithURL:v11 grandSlamSigner:v7 familyGrandSlamSigner:v8 method:v12 body:isa];
    v0[78] = v14;

    v0[2] = v0;
    v0[7] = v0 + 65;
    v0[3] = sub_100070BBC;
    v15 = swift_continuation_init();
    v0[33] = sub_100022F18(&qword_1000B9800, &unk_10008E350);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_10007415C;
    v0[29] = &unk_1000A9568;
    v0[30] = v15;
    [v14 onComplete:v0 + 26];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    type metadata accessor for AgeRangeError(0);
    v0[64] = -4004;
    sub_100023D48(&_swiftEmptyArrayStorage);
    sub_1000683E0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = v0[63];
    swift_willThrow();
    v17 = v0[75];
    v18 = v0[74];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_100070BBC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 632) = v2;
  if (v2)
  {
    v3 = sub_1000719F4;
  }

  else
  {
    v3 = sub_100070CCC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100070CCC()
{
  v57 = v0;
  v1 = v0[78];
  v2 = v0[65];
  v0[80] = v2;

  v3 = [v2 HTTPResponse];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 allHeaderFields];
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v0[59] = 0xD00000000000001ALL;
    v0[60] = 0x80000001000896D0;
    AnyHashable.init<A>(_:)();
    if (*(v6 + 16) && (v7 = sub_100037BCC((v0 + 50)), (v8 & 1) != 0))
    {
      sub_100026180(*(v6 + 56) + 32 * v7, (v0 + 55));
      sub_10003206C((v0 + 50));

      if (swift_dynamicCast())
      {
        v10 = v0[61];
        v9 = v0[62];
        v11 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v11 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v11)
        {
          v12 = v0[75];
          static FamilyLogger.daemon.getter();

          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();

          v15 = os_log_type_enabled(v13, v14);
          v16 = v0[75];
          v17 = v0[73];
          v55 = v0[72];
          if (v15)
          {
            v54 = v0[75];
            v18 = swift_slowAlloc();
            log = v13;
            v19 = swift_slowAlloc();
            v56 = v19;
            *v18 = 136315138;
            v20 = sub_1000373D4(v10, v9, &v56);

            *(v18 + 4) = v20;
            _os_log_impl(&_mh_execute_header, log, v14, "Found X-Apple-Family-TeardownCFU header with identifier: %s", v18, 0xCu);
            sub_100024F7C(v19);

            (*(v17 + 8))(v54, v55);
          }

          else
          {

            (*(v17 + 8))(v16, v55);
          }
        }

        else
        {
          v51 = v0[62];
        }
      }

      else
      {
      }
    }

    else
    {

      sub_10003206C((v0 + 50));
    }
  }

  v21 = v2;
  v22 = [v21 HTTPResponse];
  v23 = [v22 statusCode];

  if (v23 == 401)
  {
    v24 = v0[74];
    static FamilyLogger.daemon.getter();
    v25 = v21;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      v29 = [v25 HTTPResponse];
      v30 = [v29 statusCode];

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "sendRequest: renewCredentials, status: %ld", v28, 0xCu);
    }

    else
    {

      v26 = v25;
    }

    v35 = v0[74];
    v36 = v0[73];
    v37 = v0[72];

    (*(v36 + 8))(v35, v37);
    v38 = [objc_opt_self() defaultStore];
    v0[81] = v38;
    if (v38)
    {
      v39 = v38;
      v0[10] = v0;
      v0[15] = v0 + 66;
      v0[11] = sub_10007133C;
      v40 = swift_continuation_init();
      v0[41] = sub_100022F18(&qword_1000B9048, &unk_10008D840);
      v0[34] = _NSConcreteStackBlock;
      v0[35] = 1107296256;
      v0[36] = sub_10006D050;
      v0[37] = &unk_1000A9590;
      v0[38] = v40;
      [v39 aa_primaryAppleAccountWithCompletion:v0 + 34];

      return _swift_continuation_await(v0 + 10);
    }

    else
    {

      v44 = v0[80];
      v45 = v0[77];
      v46 = v0[76];
      type metadata accessor for AgeRangeError(0);
      v0[68] = -4004;
      sub_100023D48(&_swiftEmptyArrayStorage);
      sub_1000683E0();
      _BridgedStoredNSError.init(_:userInfo:)();
      v47 = v0[67];
      swift_willThrow();

      v48 = v0[75];
      v49 = v0[74];

      v50 = v0[1];

      return v50();
    }
  }

  else
  {
    v31 = v0[77];
    v32 = v0[76];

    v33 = [v21 body];
    if (v33)
    {
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (!v34)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v34 = 0;
    }

    v41 = v0[75];
    v42 = v0[74];

    v43 = v0[1];

    return v43(v34);
  }
}

uint64_t sub_10007133C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 656) = v3;
  if (v3)
  {

    v4 = sub_100071A94;
  }

  else
  {
    v4 = sub_100071454;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100071454()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 528);
  *(v0 + 664) = v2;

  if (v2)
  {
    v3 = [objc_allocWithZone(FARequestConfigurator) initWithAccount:v2];
    *(v0 + 672) = v3;
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 712;
    *(v0 + 152) = sub_10007166C;
    v4 = swift_continuation_init();
    *(v0 + 392) = sub_100022F18(&qword_1000B9808, &qword_10008E360);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_100071C98;
    *(v0 + 360) = &unk_1000A95B8;
    *(v0 + 368) = v4;
    [v3 renewCredentialsWithCompletion:v0 + 336];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {

    v5 = *(v0 + 640);
    v6 = *(v0 + 616);
    v7 = *(v0 + 608);
    type metadata accessor for AgeRangeError(0);
    *(v0 + 544) = -4004;
    sub_100023D48(&_swiftEmptyArrayStorage);
    sub_1000683E0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v8 = *(v0 + 536);
    swift_willThrow();

    v9 = *(v0 + 600);
    v10 = *(v0 + 592);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10007166C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 680) = v3;
  if (v3)
  {

    v4 = sub_100071B3C;
  }

  else
  {
    v4 = sub_100071784;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100071784()
{
  v1 = swift_task_alloc();
  v0[86] = v1;
  *v1 = v0;
  v1[1] = sub_100071820;
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];

  return sub_100070840(v4, v3);
}

uint64_t sub_100071820(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 688);
  v6 = *v2;
  *(*v2 + 696) = v1;

  if (v1)
  {
    v7 = sub_100071BF4;
  }

  else
  {
    *(v4 + 704) = a1;
    v7 = sub_100071948;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100071948()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 640);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);

  v5 = *(v0 + 704);
  v6 = *(v0 + 600);
  v7 = *(v0 + 592);

  v8 = *(v0 + 8);

  return v8(v5);
}

uint64_t sub_1000719F4()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  swift_willThrow();

  v5 = v0[79];
  v6 = v0[75];
  v7 = v0[74];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100071A94()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[77];
  v5 = v0[76];
  swift_willThrow();

  v6 = v0[82];
  v7 = v0[75];
  v8 = v0[74];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100071B3C()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[76];
  swift_willThrow();

  v7 = v0[85];
  v8 = v0[75];
  v9 = v0[74];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100071BF4()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 640);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);

  v5 = *(v0 + 696);
  v6 = *(v0 + 600);
  v7 = *(v0 + 592);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100071C98(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1000297A8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_100071D64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAParentalControlsOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100071E18(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100026620;

  return v7();
}

uint64_t sub_100071F00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100026358;

  return v8();
}

uint64_t sub_100071FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100022F18(&qword_1000B82B8, &qword_10008C6C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_10006C3A4(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10002624C(v11, &qword_1000B82B8, &qword_10008C6C0);
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

    sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);

    return v22;
  }

LABEL_8:
  sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);
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

uint64_t sub_1000722D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return _swift_task_switch(sub_1000722F4, 0, 0);
}

uint64_t sub_1000722F4()
{
  v1 = v0 + 26;
  v2 = [objc_opt_self() defaultStore];
  v0[29] = v2;
  if (v2)
  {
    v3 = v2;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_100072514;
    v4 = swift_continuation_init();
    v0[25] = sub_100022F18(&qword_1000B9048, &unk_10008D840);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_10006D050;
    v0[21] = &unk_1000A9608;
    v0[22] = v4;
    [v3 aa_primaryAppleAccountWithCompletion:v0 + 18];
    v5 = v0 + 10;
  }

  else
  {
    v6 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    v0[31] = v6;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_100072B48;
    v7 = swift_continuation_init();
    v0[25] = sub_100022F18(&unk_1000B8440, &unk_10008C890);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_10007415C;
    v0[21] = &unk_1000A95E0;
    v0[22] = v7;
    [v6 startRequestWithCompletionHandler:v0 + 18];
    v5 = v0 + 2;
  }

  return _swift_continuation_await(v5);
}

uint64_t sub_100072514()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_100072E38;
  }

  else
  {
    v3 = sub_100072624;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100072624()
{
  v49 = v0;
  v1 = *(v0 + 208);

  if (!v1)
  {
    goto LABEL_75;
  }

  v2 = [v1 aa_altDSID];
  if (!v2)
  {
    goto LABEL_74;
  }

  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = v2;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == v4 && v8 == v3)
  {
  }

  else
  {
    v10 = *(v0 + 216);
    v11 = *(v0 + 224);
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  v13 = [v1 aa_personID];
  if (!v13)
  {
LABEL_74:

    goto LABEL_75;
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v19 = HIBYTE(v17) & 0xF;
  v20 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v21 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

LABEL_75:
    v42 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    *(v0 + 248) = v42;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_100072B48;
    v43 = swift_continuation_init();
    *(v0 + 200) = sub_100022F18(&unk_1000B8440, &unk_10008C890);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10007415C;
    *(v0 + 168) = &unk_1000A95E0;
    *(v0 + 176) = v43;
    [v42 startRequestWithCompletionHandler:v0 + 144];
    v18 = (v0 + 16);

    return _swift_continuation_await(v18);
  }

  if ((v17 & 0x1000000000000000) == 0)
  {
    if ((v17 & 0x2000000000000000) != 0)
    {
      v48[0] = v15;
      v48[1] = v17 & 0xFFFFFFFFFFFFFFLL;
      if (v15 == 43)
      {
        if (v19)
        {
          if (--v19)
          {
            v23 = 0;
            v33 = v48 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              ++v33;
              if (!--v19)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_87:
        __break(1u);
        return _swift_continuation_await(v18);
      }

      if (v15 != 45)
      {
        if (v19)
        {
          v23 = 0;
          v38 = v48;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            ++v38;
            if (!--v19)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v19)
      {
        if (--v19)
        {
          v23 = 0;
          v27 = v48 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v15 & 0x1000000000000000) != 0)
      {
        v18 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v18 = _StringObject.sharedUTF8.getter();
      }

      v22 = *v18;
      if (v22 == 43)
      {
        if (v20 >= 1)
        {
          v19 = v20 - 1;
          if (v20 != 1)
          {
            v23 = 0;
            if (v18)
            {
              v30 = v18 + 1;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  goto LABEL_71;
                }

                v32 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  goto LABEL_71;
                }

                v23 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  goto LABEL_71;
                }

                ++v30;
                if (!--v19)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_71;
        }

        goto LABEL_86;
      }

      if (v22 != 45)
      {
        if (v20)
        {
          v23 = 0;
          if (v18)
          {
            while (1)
            {
              v36 = *v18 - 48;
              if (v36 > 9)
              {
                goto LABEL_71;
              }

              v37 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_71;
              }

              v23 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                goto LABEL_71;
              }

              ++v18;
              if (!--v20)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_71:
        v23 = 0;
        LOBYTE(v19) = 1;
        goto LABEL_72;
      }

      if (v20 >= 1)
      {
        v19 = v20 - 1;
        if (v20 != 1)
        {
          v23 = 0;
          if (v18)
          {
            v24 = v18 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_71;
              }

              v26 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_71;
              }

              v23 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                goto LABEL_71;
              }

              ++v24;
              if (!--v19)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_63:
          LOBYTE(v19) = 0;
LABEL_72:
          v41 = v19;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v23 = sub_100066C20(v15, v17, 10);
  v41 = v47;
LABEL_73:

  if (v41)
  {
    goto LABEL_74;
  }

  v44 = [objc_allocWithZone(NSNumber) initWithInteger:v23];

  v45 = *(v0 + 8);

  return v45(v44);
}

uint64_t sub_100072B48()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_100072DC8;
  }

  else
  {
    v3 = sub_100072C58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100072C58()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[28];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v1 memberForAltDSID:v4];

  if (v5 && (v6 = [v5 dsid], v5, v6))
  {
    v7 = v0[31];

    v8 = v0[1];

    return v8(v6);
  }

  else
  {
    v10 = v0[31];
    type metadata accessor for AgeRangeError(0);
    v0[26] = -4004;
    sub_100023D48(&_swiftEmptyArrayStorage);
    sub_1000683E0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v11 = v0[18];
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100072DC8()
{
  v1 = v0[31];
  v2 = v0[32];
  swift_willThrow();

  v3 = v0[32];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100072E38()
{
  v1 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  v3 = v0[30];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100072EA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100026620;

  return sub_10007054C(v2, v3, v4, v5, v6);
}

uint64_t sub_100072F70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100026620;

  return sub_1000669BC(a1, v5);
}

uint64_t sub_100073028(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100026358;

  return sub_1000669BC(a1, v5);
}

uint64_t sub_1000730E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100026620;

  return sub_10006F90C(v2, v3, v5, v4);
}

uint64_t sub_1000731A4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000731EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100026620;

  return sub_10006EED0(v2, v3, v5, v4);
}

uint64_t sub_1000732B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026358;

  return sub_10006DD1C(v2, v3, v4);
}

Class sub_100073364(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = v30 - v10;
  sub_100060238();
  v12.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  if (*(a1 + 16))
  {
    v13 = sub_100037A08(0xD000000000000013, 0x8000000100089820);
    if (v14)
    {
      sub_100026180(*(a1 + 56) + 32 * v13, v32);
      sub_100022F18(&unk_1000B94C0, &unk_10008E420);
      if (swift_dynamicCast())
      {
        v15 = v31[0];
        if (*(v31[0] + 16) && (v16 = sub_100037A08(0xD00000000000001BLL, 0x80000001000896F0), (v17 & 1) != 0))
        {
          sub_100026180(*(v15 + 56) + 32 * v16, v32);

          sub_100026180(v32, v31);
          if (swift_dynamicCast())
          {

            v18 = v30[1];
            static FamilyLogger.common.getter();
            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              *v21 = 138412290;
              *(v21 + 4) = v18;
              *v22 = v18;
              v23 = v18;
              _os_log_impl(&_mh_execute_header, v19, v20, "Share option from server: %@", v21, 0xCu);
              sub_10002624C(v22, &qword_1000B8590, &qword_10008C960);
            }

            (*(v3 + 8))(v11, v2);
            sub_100024F7C(v32);
            return v18;
          }

          sub_100024F7C(v32);
        }

        else
        {
        }
      }
    }
  }

  static FamilyLogger.common.getter();
  v18 = v12.super.super.isa;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v18;
    *v27 = v18;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v24, v25, "Returning default value for declaredAgeRangeShareOption: %@", v26, 0xCu);
    sub_10002624C(v27, &qword_1000B8590, &qword_10008C960);
  }

  (*(v3 + 8))(v8, v2);
  return v18;
}

Class sub_100073748(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = v30 - v10;
  sub_100060238();
  v12.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  if (*(a1 + 16))
  {
    v13 = sub_100037A08(0xD000000000000013, 0x8000000100089820);
    if (v14)
    {
      sub_100026180(*(a1 + 56) + 32 * v13, v32);
      sub_100022F18(&unk_1000B94C0, &unk_10008E420);
      if (swift_dynamicCast())
      {
        v15 = v31[0];
        if (*(v31[0] + 16) && (v16 = sub_100037A08(0xD00000000000001ELL, 0x8000000100089730), (v17 & 1) != 0))
        {
          sub_100026180(*(v15 + 56) + 32 * v16, v32);

          sub_100026180(v32, v31);
          if (swift_dynamicCast())
          {

            v18 = v30[1];
            static FamilyLogger.common.getter();
            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              *v21 = 138412290;
              *(v21 + 4) = v18;
              *v22 = v18;
              v23 = v18;
              _os_log_impl(&_mh_execute_header, v19, v20, "Privacy version from server: %@", v21, 0xCu);
              sub_10002624C(v22, &qword_1000B8590, &qword_10008C960);
            }

            (*(v3 + 8))(v11, v2);
            sub_100024F7C(v32);
            return v18;
          }

          sub_100024F7C(v32);
        }

        else
        {
        }
      }
    }
  }

  static FamilyLogger.common.getter();
  v18 = v12.super.super.isa;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v18;
    *v27 = v18;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v24, v25, "Returning default value for declaredAgeRangePrivacyVersion: %@", v26, 0xCu);
    sub_10002624C(v27, &qword_1000B8590, &qword_10008C960);
  }

  (*(v3 + 8))(v8, v2);
  return v18;
}

uint64_t sub_100073B2C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v24 - v10;
  if (*(a1 + 16))
  {
    v12 = sub_100037A08(0x7275446568636163, 0xED00006E6F697461);
    if (v13)
    {
      sub_100026180(*(a1 + 56) + 32 * v12, v27);
      sub_100026180(v27, v26);
      sub_100060238();
      if (swift_dynamicCast())
      {
        v14 = v25;
        [v25 doubleValue];
        v16 = v15;
        static FamilyLogger.common.getter();
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 134217984;
          *(v19 + 4) = v16;
          _os_log_impl(&_mh_execute_header, v17, v18, "Share option TTL from server: %f", v19, 0xCu);
        }

        (*(v3 + 8))(v11, v2);
        return sub_100024F7C(v27);
      }

      sub_100024F7C(v27);
    }
  }

  static FamilyLogger.common.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = 0x40F5180000000000;
    _os_log_impl(&_mh_execute_header, v21, v22, "Returning default value for share option TTL: %f", v23, 0xCu);
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100073E04(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6, v9);
  v11 = &v25[-v10];
  if (*(a1 + 16))
  {
    v12 = sub_100037A08(0xD000000000000013, 0x8000000100089820);
    if (v13)
    {
      sub_100026180(*(a1 + 56) + 32 * v12, v27);
      sub_100022F18(&unk_1000B94C0, &unk_10008E420);
      if (swift_dynamicCast())
      {
        v14 = *&v26[0];
        if (*(*&v26[0] + 16) && (v15 = sub_100037A08(0xD000000000000017, 0x8000000100089710), (v16 & 1) != 0))
        {
          sub_100026180(*(v14 + 56) + 32 * v15, v26);

          sub_1000249A8(v26, v27);
          sub_100026180(v27, v26);
          if (swift_dynamicCast())
          {
            v17 = v25[15];
            static FamilyLogger.common.getter();
            v18 = Logger.logObject.getter();
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v20 = swift_slowAlloc();
              *v20 = 67109120;
              *(v20 + 4) = v17;
              _os_log_impl(&_mh_execute_header, v18, v19, "DeclaredAgeRange featureEnabled from server: %{BOOL}d", v20, 8u);
            }

            (*(v3 + 8))(v11, v2);
            sub_100024F7C(v27);
            return v17;
          }

          sub_100024F7C(v27);
        }

        else
        {
        }
      }
    }
  }

  static FamilyLogger.common.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    _os_log_impl(&_mh_execute_header, v22, v23, "Returning default value for declaredAgeRangeEnabled: %{BOOL}d", v24, 8u);
  }

  (*(v3 + 8))(v8, v2);
  return 0;
}

id MemberPhotoRequest404Cache.init()()
{
  v1 = OBJC_IVAR___FAMemberPhotoRequest404Cache_encoder;
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *&v0[v1] = JSONEncoder.init()();
  v5 = OBJC_IVAR___FAMemberPhotoRequest404Cache_decoder;
  v6 = type metadata accessor for JSONDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v0[v5] = JSONDecoder.init()();
  v9 = [objc_opt_self() standardUserDefaults];
  *&v0[OBJC_IVAR___FAMemberPhotoRequest404Cache_persistence] = v9;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MemberPhotoRequest404Cache();
  return objc_msgSendSuper2(&v11, "init");
}

Swift::Void __swiftcall MemberPhotoRequest404Cache.save404Response(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100075384();
  static Date.now.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v14;
  sub_100076AC0(v13, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
  sub_100075484(v21);

  static FamilyLogger.daemon.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000373D4(countAndFlagsBits, object, &v21);
    _os_log_impl(&_mh_execute_header, v16, v17, "MemberPhotoRequest404Cache: saved 404 response for %s)", v18, 0xCu);
    sub_100024F7C(v19);
  }

  (*(v4 + 8))(v8, v3);
}

uint64_t MemberPhotoRequest404Cache.getLast404Response(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100075384();
  if (*(v6 + 16) && (v7 = sub_100037A08(a1, a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for Date();
    v18 = *(v11 - 8);
    (*(v18 + 16))(a3, v10 + *(v18 + 72) * v9, v11);

    v12 = *(v18 + 56);
    v13 = a3;
    v14 = 0;
    v15 = v11;
  }

  else
  {

    v16 = type metadata accessor for Date();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a3;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

Swift::Bool __swiftcall MemberPhotoRequest404Cache.shouldAllowRequest(for:cacheDuration:)(Swift::String a1, Swift::Int cacheDuration)
{
  v92[2] = cacheDuration;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v104 = sub_100022F18(&qword_1000B8A60, &unk_10008E430);
  v96 = *(v104 - 8);
  v4 = *(v96 + 64);
  v6 = __chkstk_darwin(v104, v5);
  v100 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v94 = v92 - v10;
  __chkstk_darwin(v9, v11);
  v103 = v92 - v12;
  v13 = type metadata accessor for Logger();
  v105 = *(v13 - 8);
  v14 = *(v105 + 64);
  v16 = __chkstk_darwin(v13, v15);
  v18 = v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v16, v19);
  v102 = v92 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v95 = v92 - v24;
  __chkstk_darwin(v23, v25);
  v27 = v92 - v26;
  v28 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8, v30);
  v32 = v92 - v31;
  v33 = type metadata accessor for Date();
  v34 = *(*(v33 - 8) + 64);
  v36 = __chkstk_darwin(v33, v35);
  v98 = v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36, v38);
  v97 = v92 - v40;
  v42 = __chkstk_darwin(v39, v41);
  v44 = v92 - v43;
  __chkstk_darwin(v42, v45);
  v47 = v92 - v46;
  v48 = countAndFlagsBits;
  v50 = v49;
  MemberPhotoRequest404Cache.getLast404Response(for:)(v48, object, v32);
  if ((*(v50 + 48))(v32, 1, v33) == 1)
  {
    sub_100076C40(v32);
    static FamilyLogger.daemon.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v106[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_1000373D4(0xD000000000000026, 0x8000000100089840, v106);
      _os_log_impl(&_mh_execute_header, v51, v52, "MemberPhotoRequest404Cache: %s no 404 cache for member, allow request", v53, 0xCu);
      sub_100024F7C(v54);
    }

    (*(v105 + 8))(v18, v13);
    v55 = 1;
  }

  else
  {
    (*(v50 + 32))(v47, v32, v33);
    static FamilyLogger.daemon.getter();
    (*(v50 + 16))(v44, v47, v33);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    v58 = os_log_type_enabled(v56, v57);
    v101 = v13;
    v92[1] = v50;
    v99 = v47;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v106[0] = swift_slowAlloc();
      *v59 = 136315394;
      *(v59 + 4) = sub_1000373D4(0xD000000000000026, 0x8000000100089840, v106);
      *(v59 + 12) = 2080;
      sub_100077BC0(&qword_1000B8BB8);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      v92[0] = *(v50 + 8);
      (v92[0])(v44, v33);
      v63 = sub_1000373D4(v60, v62, v106);
      v13 = v101;

      *(v59 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "MemberPhotoRequest404Cache: %s getLast404Response %s", v59, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v92[0] = *(v50 + 8);
      (v92[0])(v44, v33);
    }

    v93 = *(v105 + 8);
    v93(v27, v13);
    v64 = v103;
    v65 = v95;
    v95 = objc_opt_self();
    v66 = [v95 hours];
    sub_100076CA8();
    Measurement.init(value:unit:)();
    static FamilyLogger.daemon.getter();
    v67 = v96;
    v68 = v94;
    v69 = v104;
    (*(v96 + 16))(v94, v64, v104);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v106[0] = v73;
      *v72 = 136315138;
      sub_100076CF4();
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v96 = *(v67 + 8);
      (v96)(v68, v104);
      v77 = sub_1000373D4(v74, v76, v106);

      *(v72 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v70, v71, "MemberPhotoRequest404Cache: cacheMeasurementDuration: %s", v72, 0xCu);
      sub_100024F7C(v73);
      v69 = v104;

      v64 = v103;

      v78 = v65;
      v79 = v101;
    }

    else
    {

      v96 = *(v67 + 8);
      (v96)(v68, v69);
      v78 = v65;
      v79 = v13;
    }

    v93(v78, v79);
    v80 = [v95 seconds];
    v81 = v100;
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    (v96)(v81, v69);
    v82 = v97;
    Date.addingTimeInterval(_:)();
    v83 = v98;
    static Date.now.getter();
    sub_100077BC0(&qword_1000B8A68);
    LOBYTE(v80) = dispatch thunk of static Comparable.< infix(_:_:)();
    v84 = v92[0];
    (v92[0])(v83, v33);
    v84(v82, v33);
    v55 = v80 ^ 1;
    v85 = v102;
    static FamilyLogger.daemon.getter();
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v106[0] = v89;
      *v88 = 136315394;
      *(v88 + 4) = sub_1000373D4(0xD000000000000026, 0x8000000100089840, v106);
      *(v88 + 12) = 1024;
      *(v88 + 14) = v55 & 1;
      _os_log_impl(&_mh_execute_header, v86, v87, "MemberPhotoRequest404Cache: %s %{BOOL}d", v88, 0x12u);
      sub_100024F7C(v89);

      v93(v102, v101);
      v90 = v103;
    }

    else
    {

      v93(v85, v101);
      v90 = v64;
    }

    (v96)(v90, v69);
    v84(v99, v33);
  }

  return v55 & 1;
}

unint64_t sub_100075384()
{
  v1 = *(v0 + OBJC_IVAR___FAMemberPhotoRequest404Cache_persistence);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 dataForKey:v2];

  if (!v3)
  {
    return sub_1000249B8(_swiftEmptyArrayStorage);
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v0 + OBJC_IVAR___FAMemberPhotoRequest404Cache_decoder);
  sub_100077834();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10002C190(v4, v6);
  return v9;
}

uint64_t sub_100075484(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v7 = *(v1 + OBJC_IVAR___FAMemberPhotoRequest404Cache_encoder);
  v16 = a1;
  sub_100077560();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = *(v2 + OBJC_IVAR___FAMemberPhotoRequest404Cache_persistence);
  v10 = v8;
  v12 = v11;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();
  [v9 setValue:isa forKey:v14];

  return sub_10002C190(v10, v12);
}

id MemberPhotoRequest404Cache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MemberPhotoRequest404Cache();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100075798(void *a1, uint64_t a2)
{
  v4 = sub_100022F18(&qword_1000B9868, &qword_10008E518);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_1000297A8(a1, a1[3]);
  sub_100077898();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[1] = a2;
  sub_100022F18(&qword_1000B9878, &qword_10008E520);
  sub_1000778EC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_100075918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x523430347473616CLL && a2 == 0xEF65736E6F707365)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000759A8(uint64_t a1)
{
  v2 = sub_100077898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000759E4(uint64_t a1)
{
  v2 = sub_100077898();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100075A20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100077994(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100075A68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100022F18(&qword_1000B8120, &qword_10008E490);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
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

uint64_t sub_100075D0C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ClientRecord();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6 - 8, v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100022F18(&unk_1000B8130, &unk_10008E480);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v43 = v10;
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
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      v32 = v27 + v31 * v26;
      if (v45)
      {
        sub_100024BA4(v32, v46);
      }

      else
      {
        sub_100037A80(v32, v46);
      }

      v33 = *(v13 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v29;
      v22[1] = v30;
      result = sub_100024BA4(v46, *(v13 + 56) + v31 * v21);
      ++*(v13 + 16);
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_100076048(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100022F18(&qword_1000B8090, &unk_10008C570);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_1000249A8(v25, v37);
      }

      else
      {
        sub_100026180(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      result = sub_1000249A8(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_100076300(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100022F18(&qword_1000B8118, &unk_10008C5A0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000765B8(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = type metadata accessor for Date();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v50, v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100022F18(&qword_1000B8110, &unk_10008C590);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
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
    v44 = (v6 + 16);
    v45 = v10;
    v46 = v6;
    v48 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v46 + 72);
      v32 = v27 + v31 * v26;
      if (v47)
      {
        (*v48)(v49, v32, v50);
      }

      else
      {
        (*v44)(v49, v32, v50);
      }

      v33 = *(v13 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v48)(*(v13 + 56) + v31 * v21, v49, v50);
      ++*(v13 + 16);
      v10 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_100076938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100037A08(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100076300(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100037A08(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000773E0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_100076AC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100037A08(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000775B4();
      goto LABEL_7;
    }

    sub_1000765B8(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_100037A08(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100076DF0(v12, a2, a3, a1, v18);
}

uint64_t sub_100076C40(uint64_t a1)
{
  v2 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100076CA8()
{
  result = qword_1000B8BC0;
  if (!qword_1000B8BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8BC0);
  }

  return result;
}

unint64_t sub_100076CF4()
{
  result = qword_1000B9828;
  if (!qword_1000B9828)
  {
    sub_100022F60(&qword_1000B8A60, &unk_10008E430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9828);
  }

  return result;
}

uint64_t sub_100076D58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ClientRecord();
  result = sub_100024BA4(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100076DF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

id sub_100076EA0()
{
  v1 = v0;
  sub_100022F18(&qword_1000B8120, &qword_10008E490);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void *sub_10007700C()
{
  v1 = v0;
  v2 = type metadata accessor for ClientRecord();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022F18(&unk_1000B8130, &unk_10008E480);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        sub_100037A80(*(v6 + 56) + v28, v32);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_100024BA4(v27, *(v29 + 56) + v28);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
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

void *sub_10007723C()
{
  v1 = v0;
  sub_100022F18(&qword_1000B8090, &unk_10008C570);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_100026180(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000249A8(v25, (*(v4 + 56) + v22));
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

void *sub_1000773E0()
{
  v1 = v0;
  sub_100022F18(&qword_1000B8118, &unk_10008C5A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

unint64_t sub_100077560()
{
  result = qword_1000B9858;
  if (!qword_1000B9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9858);
  }

  return result;
}

char *sub_1000775B4()
{
  v1 = v0;
  v37 = type metadata accessor for Date();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  __chkstk_darwin(v37, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022F18(&qword_1000B8110, &unk_10008C590);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
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

        v1 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
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

unint64_t sub_100077834()
{
  result = qword_1000B9860;
  if (!qword_1000B9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9860);
  }

  return result;
}

unint64_t sub_100077898()
{
  result = qword_1000B9870;
  if (!qword_1000B9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9870);
  }

  return result;
}

unint64_t sub_1000778EC()
{
  result = qword_1000B9880;
  if (!qword_1000B9880)
  {
    sub_100022F60(&qword_1000B9878, &qword_10008E520);
    sub_100077BC0(&qword_1000B8BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9880);
  }

  return result;
}

void *sub_100077994(uint64_t *a1)
{
  v3 = sub_100022F18(&qword_1000B9888, &qword_10008E528);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = sub_1000297A8(a1, a1[3]);
  sub_100077898();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100024F7C(a1);
  }

  else
  {
    sub_100022F18(&qword_1000B9878, &qword_10008E520);
    sub_100077B18();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v8, v3);
    v10 = v12[1];
    sub_100024F7C(a1);
  }

  return v10;
}

unint64_t sub_100077B18()
{
  result = qword_1000B9890;
  if (!qword_1000B9890)
  {
    sub_100022F60(&qword_1000B9878, &qword_10008E520);
    sub_100077BC0(&qword_1000B8B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9890);
  }

  return result;
}

uint64_t sub_100077BC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100077C18()
{
  result = qword_1000B9898;
  if (!qword_1000B9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9898);
  }

  return result;
}

unint64_t sub_100077C70()
{
  result = qword_1000B98A0;
  if (!qword_1000B98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B98A0);
  }

  return result;
}

unint64_t sub_100077CC8()
{
  result = qword_1000B98A8;
  if (!qword_1000B98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B98A8);
  }

  return result;
}

uint64_t sub_100077D1C()
{
  dlerror();
  abort_report_np();
  return sub_100077D40();
}

void sub_100077D90(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch family circle with error: %@, Returning cached info.", &v4, 0xCu);
}

void sub_100077E28(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: FetchFamilyCircleRequest  enableTelemetry=YES ", &v2, 0xCu);
}

void sub_100077EE4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "store front is nil!!! default to deviceCountryCode %@.", &v3, 0xCu);
}

void sub_100077F60(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "store front is nil!!! setting unknown code %@.", &v2, 0xCu);
}

void sub_100077FD8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "store front is %@.", &v2, 0xCu);
}

void sub_1000780EC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to write cache to %@: %@.", &v3, 0x16u);
}

void sub_1000783CC(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch family followup with error: %@", &v4, 0xCu);
}

void sub_100078464(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FAHeartbeatActivity failed to checkIn: %@", &v2, 0xCu);
}

void sub_1000784DC(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Flag type '%@' not recognized", &v3, 0xCu);
}

void sub_100078558(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not convert push message body to JSON. Error: %@. Body: %@", &v3, 0x16u);
}

void sub_1000785F4(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 description];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to fetch valid APS environment (%@) from server with error: %@, falling back to Prod.", &v6, 0x16u);
}

void sub_1000786EC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
}

void sub_1000787B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 56);
  sub_10000FE88();
  sub_10000FEA0(&_mh_execute_header, v4, v5, "Push received for user (dsid %@, altDSID %@) is logged in as non-primary account.");
}

void sub_100078824(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 56);
  sub_10000FE88();
  sub_10000FEA0(&_mh_execute_header, v4, v5, "Push received for user (dsid %@, altDSID %@) but there is no matching account on the device.");
}

void sub_10007891C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch image from cache error: %@", &v2, 0xCu);
}

void sub_1000789D8(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 40) dsid];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch image for member: %@, last 404 response is within duration ", &v4, 0xCu);
}

void sub_100078A74(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 40) dsid];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to fetch image for member: %@, error: %@", &v6, 0x16u);
}

void sub_100078E78()
{
  sub_10001AE58();
  sub_10001AE4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100078EB4()
{
  sub_10001AE58();
  sub_10001AE4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100078EF0(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  sub_100013998();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while cleaning up pending CFUs: %@", v4, 0xCu);
}

void sub_100078F84()
{
  sub_10001AE58();
  sub_10001AE4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100078FC0()
{
  sub_10001AE58();
  sub_10001AE4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100078FFC(void *a1, NSObject *a2)
{
  v3 = [a1 debugDescription];
  sub_100013998();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Failed to complete heartbeat operation with error: %@", v4, 0xCu);
}

void sub_1000790F8(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 screenTimeState]);
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error updating Screen Time setup configuration %{public}@ currentConfigurationState:%{public}@", &v6, 0x16u);
}

void sub_100079340(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Call to fetch URL for photos cache provided error: %@", &v2, 0xCu);
}

void sub_1000793CC(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: LoadFamilyPhotoCache ", &v2, 0xCu);
}

void sub_100079444(uint64_t a1, NSObject *a2, double a3)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:LoadFamilyPhotoCache ", &v3, 0x16u);
}

void sub_1000794C8(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 40) altDSID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error updating photo cache for member %@", &v4, 0xCu);
}

void sub_100079564(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Call to fetch URL for presets cache provided error: %@", &v2, 0xCu);
}

void sub_1000795F0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error updating presets cache for url %@", &v3, 0xCu);
}

void sub_10007966C(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch family push details with error: %@", &v4, 0xCu);
}

void sub_10007978C(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to parse response data with error: %@", &v4, 0xCu);
}

void sub_1000798AC(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching family circle from server upon family change push %@", &v4, 0xCu);
}

void sub_100079944(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ deallocated", &v2, 0xCu);
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::tuple_Bool_Bool __swiftcall FAFamilyCircle.isPartOfFamilyAndChildOrTeen(altDSID:)(Swift::String altDSID)
{
  v1 = FAFamilyCircle.isPartOfFamilyAndChildOrTeen(altDSID:)(altDSID._countAndFlagsBits, altDSID._object);
  result._1 = v2;
  result._0 = v1;
  return result;
}