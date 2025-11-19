void sub_100037CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = sub_1000257E4(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

Swift::Int sub_100037DAC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1000C7364(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
        v8 = sub_1000C6EB4();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9[1] = v7;

      sub_10003755C(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_100037CB4(0, v4, 1, a1, a2);
  }
}

uint64_t sub_100037F18(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100031170(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_100037DAC(v8, a2);

  sub_1000C7294();
}

uint64_t sub_100038064(void *a1, uint64_t a2, char a3)
{
  if ([a1 isOrgAdminUser])
  {
    v6 = [objc_opt_self() mainBundle];
    v7._countAndFlagsBits = 0xD000000000000011;
    v16._countAndFlagsBits = 0x80000001000D7FC0;
    v7._object = 0x80000001000D7FA0;
LABEL_5:
    v9.value._countAndFlagsBits = 0;
    v9.value._object = 0;
    v10.super.isa = v6;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
LABEL_6:
    v12 = sub_1000C5B74(v7, v9, v10, v11, v16);

    return v12;
  }

  v8 = [a1 acceptanceStatus];
  if (v8 == 1)
  {
    v6 = [objc_opt_self() mainBundle];
    v16._countAndFlagsBits = 0x80000001000D7F80;
    v7._countAndFlagsBits = 0x64657469766E49;
    v7._object = 0xE700000000000000;
    goto LABEL_5;
  }

  v14 = v8;
  if ([a1 role] != 4)
  {
    if ([a1 role] == 3)
    {
      if (v14 != 2)
      {
        return 0;
      }
    }

    else
    {
      v15 = [a1 role];
      v12 = 0;
      if (v14 != 2 || v15 != 2)
      {
        return v12;
      }
    }

    if ([a1 permission] == 2)
    {
LABEL_19:
      v6 = [objc_opt_self() mainBundle];
      v16._countAndFlagsBits = 0x80000001000D7F40;
      v7._countAndFlagsBits = 0x6C6E6F2077656956;
      v7._object = 0xE900000000000079;
      v9.value._countAndFlagsBits = 0;
      v9.value._object = 0;
      v10.super.isa = v6;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      goto LABEL_6;
    }

    return 0;
  }

  v12 = 0;
  if (v14 == 2 && (a3 & 1) == 0 && a2 == 2)
  {
    goto LABEL_19;
  }

  return v12;
}

unint64_t sub_1000382F4()
{
  result = qword_100117030;
  if (!qword_100117030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117030);
  }

  return result;
}

uint64_t sub_100038348(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_1001167C8, &qword_1000CC560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000383C8()
{
  result = qword_100117040;
  if (!qword_100117040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117040);
  }

  return result;
}

void sub_100038450(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C5F74();
  v5 = *(v4 - 8);
  v84 = v4;
  v85 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v80 - v11;
  v13 = __chkstk_darwin(v10);
  v83 = &v80 - v14;
  __chkstk_darwin(v13);
  v16 = &v80 - v15;
  v17 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
  v18 = v17;
  v19 = *(a1 + 16);
  v20 = *(a1 + 40);
  if (v20 == 4)
  {
    goto LABEL_4;
  }

  v21 = 0xEE00726F72726520;
  v22 = 0x6C616E7265746E69;
  if (v20 == 11)
  {
    v27 = *(a1 + 24);
    if (*(a1 + 32))
    {
      v22 = *(a1 + 24);
      v21 = *(a1 + 32);
    }

    goto LABEL_12;
  }

  if (v20 == 8)
  {
LABEL_4:

    if (!v19)
    {
      __break(1u);
      return;
    }

    v18 = v19;
    v23 = [v18 underlyingErrors];
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v24 = sub_1000C6E94();

    if (*(v24 + 16))
    {
      v25 = *(v24 + 32);
      swift_errorRetain();

      v26 = sub_1000C5CD4();

      v18 = v26;
    }

    else
    {
    }

    v87 = 0x203A726F727265;
    v88 = 0xE700000000000000;
    v28 = [v18 description];
    v29 = sub_1000C6D84();
    v31 = v30;

    v89._countAndFlagsBits = v29;
    v89._object = v31;
    sub_1000C6E04(v89);

    v22 = v87;
    v21 = v88;
  }

LABEL_12:
  swift_beginAccess();
  v32 = *(v2 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v82 = v22;
  if (Strong)
  {
    v81 = v21;
    sub_1000C5F54();
    v34 = v18;
    v35 = sub_1000C5F64();
    v36 = sub_1000C6FD4();

    v37 = os_log_type_enabled(v35, v36);
    v80 = v34;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v86 = v39;
      *v38 = 136315138;
      v40 = v34;
      v41 = [v40 description];
      v42 = sub_1000C6D84();
      v44 = v43;

      v45 = sub_100071844(v42, v44, &v86);

      *(v38 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v35, v36, "Handling final error: %s", v38, 0xCu);
      sub_100010544(v39);
    }

    v46 = v84;
    v47 = *(v85 + 8);
    v47(v16, v84);
    v48 = v83;
    sub_1000C5F54();
    v49 = sub_1000C5F64();
    v50 = sub_1000C6FD4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v86 = v52;
      *v51 = 136315138;
      v53 = v81;

      v54 = sub_100071844(v82, v53, &v86);

      *(v51 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v49, v50, "Handling final error message: %s", v51, 0xCu);
      sub_100010544(v52);

      v47(v83, v46);
    }

    else
    {

      v47(v48, v46);
    }

    v73 = v80;
    sub_10000B6FC(v80, 1u);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000C5F54();
    v55 = v18;
    v56 = sub_1000C5F64();
    v57 = sub_1000C6FD4();

    v58 = os_log_type_enabled(v56, v57);
    v83 = v55;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v86 = v60;
      *v59 = 136315138;
      v61 = v55;
      v62 = [v61 description];
      v63 = sub_1000C6D84();
      v81 = v12;
      v64 = v9;
      v65 = v21;
      v66 = v63;
      v68 = v67;

      v69 = v66;
      v21 = v65;
      v9 = v64;
      v70 = sub_100071844(v69, v68, &v86);

      *(v59 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v56, v57, "Unable to handle final error: %s", v59, 0xCu);
      sub_100010544(v60);

      v71 = *(v85 + 8);
      v72 = v81;
    }

    else
    {

      v71 = *(v85 + 8);
      v72 = v12;
    }

    v74 = v84;
    v71(v72, v84);
    sub_1000C5F54();
    v75 = sub_1000C5F64();
    v76 = sub_1000C6FD4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v86 = v78;
      *v77 = 136315138;

      v79 = sub_100071844(v82, v21, &v86);

      *(v77 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v75, v76, "Unable to handle final error message: %s", v77, 0xCu);
      sub_100010544(v78);
    }

    else
    {
    }

    v71(v9, v74);
  }
}

uint64_t sub_100038CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100017CBC;

  return sub_10002D928(a1, v4, v5, v6);
}

uint64_t sub_100038D8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100038E04()
{
  result = qword_100116300;
  if (!qword_100116300)
  {
    sub_1000C5D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116300);
  }

  return result;
}

uint64_t sub_100038EC0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100038F08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_10002B454(a1, v4, v5, v7, v6);
}

uint64_t sub_100038FC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011080;

  return sub_10002DB98(a1, v4, v5, v6);
}

uint64_t sub_10003907C(void *a1)
{
  if (!*(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_existingContact))
  {
    goto LABEL_6;
  }

  v1 = a1[4];
  v2 = a1[5];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1[5];
  }

  else
  {
LABEL_6:
    v1 = a1[13];
    v5 = a1[14];
    v6 = v5 & 0x2000000000000000;
    v7 = HIBYTE(v5) & 0xF;
    v8 = v1 & 0xFFFFFFFFFFFFLL;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v5) & 0xF;
    }

    else
    {
      v9 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      v1 = a1[11];
      v10 = a1[12];
      v6 = v10 & 0x2000000000000000;
      v7 = HIBYTE(v10) & 0xF;
      v8 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    if (!v11)
    {

      v12 = [objc_opt_self() mainBundle];
      v15._countAndFlagsBits = 0x80000001000D8E30;
      v16._countAndFlagsBits = 0x206E776F6E6B6E55;
      v16._object = 0xEC00000072657355;
      v17.value._countAndFlagsBits = 0;
      v17.value._object = 0;
      v13.super.isa = v12;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v1 = sub_1000C5B74(v16, v17, v13, v18, v15);
    }
  }

  return v1;
}

uint64_t sub_1000391B4(uint64_t a1)
{
  v2 = sub_1000C5F74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  v38 = type metadata accessor for SPIAnalyticsEvent();
  v39 = &off_10010A4F0;
  v10 = sub_100039C00(v37);
  sub_100039C64(a1, v10, type metadata accessor for SPIAnalyticsEvent);
  sub_1000C5F54();
  sub_100039CCC(v37, aBlock);
  v11 = sub_1000C5F64();
  v12 = sub_1000C6FF4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v36[0] = v14;
    *v13 = 136315394;
    sub_100011818(aBlock, v33);
    v15 = sub_100098B4C();
    v17 = v16;
    sub_100010544(aBlock);
    v18 = sub_100071844(v15, v17, v36);

    *(v13 + 4) = v18;
    *(v13 + 12) = 1024;
    *(v13 + 14) = 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "Analytics event is: %s, will be built and sent: %{BOOL}d", v13, 0x12u);
    sub_100010544(v14);

    v19 = *(v3 + 8);
    v19(v9, v2);
  }

  else
  {

    v19 = *(v3 + 8);
    v19(v9, v2);
    sub_100010544(aBlock);
  }

  sub_100011818(v37, v38);
  sub_100098B4C();
  v20 = sub_1000C6D44();

  sub_100039CCC(v37, v36);
  v21 = swift_allocObject();
  sub_100039D68(v36, v21 + 16);
  v34 = sub_100039D80;
  v35 = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000238FC;
  v33 = &unk_100108650;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);

  sub_1000C5F54();
  sub_100039CCC(v37, aBlock);
  v23 = sub_1000C5F64();
  v24 = sub_1000C6FF4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v36[0] = v26;
    *v25 = 136315138;
    sub_100011818(aBlock, v33);
    v27 = sub_100098B4C();
    v29 = v28;
    sub_100010544(aBlock);
    v30 = sub_100071844(v27, v29, v36);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Analytics event: %s sent lazily", v25, 0xCu);
    sub_100010544(v26);

    v19(v7, v2);
  }

  else
  {

    v19(v7, v2);
    sub_100010544(aBlock);
  }

  return sub_100010544(v37);
}

uint64_t sub_100039644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000396A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for PersonRowViewModel(0);
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
  result = sub_1000C72F4();
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
    result = sub_1000C72F4();
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

uint64_t sub_1000397A4(uint64_t a1, uint64_t a2)
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

  result = sub_1000C72F4();
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
    v9 = sub_1000C72F4();
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

  sub_100030E6C(result);

  return sub_1000396A4(v4, v2, 0);
}

unint64_t sub_10003987C(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v5 = sub_1000C72F4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_1000C7254();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    if (*(v7 + 16) == *(a2 + 16) && *(v7 + 24) == *(a2 + 24))
    {
      break;
    }

    v9 = sub_1000C73A4();

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}

uint64_t sub_100039990(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = sub_10003987C(*a1, a2);
  v8 = v6;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_1000C72F4();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_1000C72F4())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = sub_1000C7254();
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_16:
    if (*(v11 + 16) == *(a2 + 16) && *(v11 + 24) == *(a2 + 24))
    {
LABEL_8:
    }

    else
    {
      v12 = sub_1000C73A4();

      if ((v12 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v13 = sub_1000C7254();
            v14 = sub_1000C7254();
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v15)
            {
              goto LABEL_51;
            }

            if (v9 >= v15)
            {
              goto LABEL_52;
            }

            v13 = *(v5 + 32 + 8 * v8);
            v14 = *(v5 + 32 + 8 * v9);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_100030E08(v5);
            v16 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v16) = 0;
          }

          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

          if ((v5 & 0x8000000000000000) != 0 || v16)
          {
            v5 = sub_100030E08(v5);
            v17 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
              return v8;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v9 >= *(v17 + 16))
          {
            goto LABEL_49;
          }

          v19 = v17 + 8 * v9;
          v20 = *(v19 + 32);
          *(v19 + 32) = v13;

          *a1 = v5;
        }

        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_48;
        }
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_47;
    }
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
LABEL_52:
  __break(1u);
  return sub_1000C72F4();
}

uint64_t *sub_100039C00(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100039C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039CCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100039D30()
{
  sub_100010544((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100039D68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100039D88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100039DA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100039E24()
{
  result = qword_100117100;
  if (!qword_100117100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117100);
  }

  return result;
}

id sub_100039E78()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(CNAvatarViewController) init];
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000CD0E0;
  *(v3 + 32) = v1;
  sub_10003A07C();
  v4 = v1;
  isa = sub_1000C6E84().super.isa;

  [v2 setContacts:isa];

  return v2;
}

uint64_t sub_100039F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003A028();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100039F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003A028();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10003A000()
{
  sub_10003A028();
  sub_1000C6724();
  __break(1u);
}

unint64_t sub_10003A028()
{
  result = qword_100117108;
  if (!qword_100117108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117108);
  }

  return result;
}

unint64_t sub_10003A07C()
{
  result = qword_100117088;
  if (!qword_100117088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100117088);
  }

  return result;
}

uint64_t sub_10003A0C8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003A0E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 281))
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

uint64_t sub_10003A130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 281) = 1;
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

    *(result + 281) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003A1E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000C6674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10000FEB8(&qword_100117110, &qword_1000CE150);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21[-v12];
  v22 = v2;
  sub_10003A924();
  sub_1000C6864();
  sub_1000C6664();
  sub_10003A978();
  sub_1000C69F4();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  v14 = *v2;
  v15 = v2[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = a1 + *(sub_10000FEB8(&qword_100117128, &qword_1000CE1A0) + 36);
  sub_1000C6094();

  type metadata accessor for GlobalPermissionViewModel();
  sub_10003AB08(&qword_100117130, type metadata accessor for GlobalPermissionViewModel);
  sub_1000C6344();
  swift_getKeyPath();
  sub_1000C6354();

  v17 = v23;
  v18 = v24;
  LOBYTE(v4) = v25;
  result = type metadata accessor for AlertViewModelAlert(0);
  v20 = v16 + *(result + 20);
  *v20 = v17;
  *(v20 + 8) = v18;
  *(v20 + 16) = v4;
  return result;
}

uint64_t sub_10003A4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *(a1 + 16);
  v33 = *(a1 + 24);
  v40 = *(a1 + 40);

  sub_10000FEB8(&qword_100117138, &unk_1000CE1D0);
  sub_1000C6BB4();
  v28 = *(a1 + 48);
  v27 = *(a1 + 56);
  v25 = v30;
  v26 = *(a1 + 64);
  v34 = *(a1 + 72);
  v41 = *(a1 + 88);
  sub_1000229B4(v28);

  sub_10000FEB8(&qword_100117140, &qword_1000D5B40);
  sub_1000C6BB4();
  v23 = v30;
  v21 = *(a1 + 104);
  v22 = *(a1 + 96);
  v4 = *(a1 + 112);
  v24 = *(a1 + 120);
  v5 = *(a1 + 128);
  v20 = v5;
  v18 = v4;
  v19 = *(a1 + 136);
  v17 = *(a1 + 144);
  v35 = *(a1 + 152);
  v42 = *(a1 + 168);
  sub_1000229B4(v22);

  sub_1000229B4(v5);

  sub_10000FEB8(&qword_100117148, &qword_1000CE1E0);
  sub_1000C6B84();
  v16 = v30;
  v6 = *(a1 + 176);
  v7 = *(a1 + 184);
  v36 = *(a1 + 264);
  v43 = *(a1 + 280);
  sub_1000229B4(v6);
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6BB4();
  v15 = v30;
  v37 = *(a1 + 192);
  v44 = *(a1 + 208);
  sub_1000C6BB4();
  v14 = v30;
  v38 = *(a1 + 216);
  v45 = *(a1 + 232);
  sub_1000C6BB4();
  v8 = v30;
  v39 = *(a1 + 240);
  v46 = *(a1 + 256);
  sub_1000C6BB4();
  v9 = v30;
  type metadata accessor for SharingModel();
  sub_10003AB08(&qword_100117158, type metadata accessor for SharingModel);
  v10 = sub_1000C6404();
  v12 = v11;
  LOBYTE(v30) = 1;
  result = sub_1000C6AD4();
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v29;
  *(a2 + 24) = v25;
  *(a2 + 32) = v31;
  *(a2 + 40) = v32;
  *(a2 + 41) = v39;
  *(a2 + 44) = *(&v39 + 3);
  *(a2 + 48) = v28;
  *(a2 + 56) = v27;
  *(a2 + 64) = v26;
  *(a2 + 72) = v23;
  *(a2 + 80) = v31;
  *(a2 + 88) = v32;
  *(a2 + 92) = *(&v30 + 3);
  *(a2 + 89) = v30;
  *(a2 + 96) = v22;
  *(a2 + 104) = v21;
  *(a2 + 112) = v18;
  *(a2 + 120) = v24;
  *(a2 + 124) = *&v53[3];
  *(a2 + 121) = *v53;
  *(a2 + 128) = v20;
  *(a2 + 136) = v19;
  *(a2 + 144) = v17;
  *(a2 + 152) = v16;
  *(a2 + 156) = *&v52[3];
  *(a2 + 153) = *v52;
  *(a2 + 160) = v6;
  *(a2 + 168) = v7;
  *(a2 + 176) = v15;
  *(a2 + 184) = v31;
  *(a2 + 192) = v32;
  *(a2 + 196) = *&v51[3];
  *(a2 + 193) = *v51;
  *(a2 + 200) = v14;
  *(a2 + 208) = v31;
  *(a2 + 216) = v32;
  *(a2 + 220) = *&v50[3];
  *(a2 + 217) = *v50;
  *(a2 + 224) = v8;
  *(a2 + 232) = v31;
  *(a2 + 240) = v32;
  *(a2 + 244) = *&v49[3];
  *(a2 + 241) = *v49;
  *(a2 + 248) = v9;
  *(a2 + 256) = v31;
  *(a2 + 264) = v32;
  *(a2 + 268) = *&v48[3];
  *(a2 + 265) = *v48;
  *(a2 + 272) = v39;
  *(a2 + 276) = *&v47[3];
  *(a2 + 273) = *v47;
  *(a2 + 280) = *(&v39 + 1);
  return result;
}

unint64_t sub_10003A924()
{
  result = qword_100117118;
  if (!qword_100117118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117118);
  }

  return result;
}

unint64_t sub_10003A978()
{
  result = qword_100117120;
  if (!qword_100117120)
  {
    sub_100010624(&qword_100117110, &qword_1000CE150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117120);
  }

  return result;
}

unint64_t sub_10003A9F0()
{
  result = qword_100117160;
  if (!qword_100117160)
  {
    sub_100010624(&qword_100117128, &qword_1000CE1A0);
    sub_100010624(&qword_100117110, &qword_1000CE150);
    sub_1000C6674();
    sub_10003A978();
    swift_getOpaqueTypeConformance2();
    sub_10003AB08(&qword_100117168, type metadata accessor for AlertViewModelAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117160);
  }

  return result;
}

uint64_t sub_10003AB08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10003AB60()
{
  v113 = sub_1000C5F74();
  v115 = *(v113 - 8);
  v1 = *(v115 + 64);
  v2 = __chkstk_darwin(v113);
  v111 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v109 = &v104 - v5;
  v6 = __chkstk_darwin(v4);
  v110 = &v104 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = (&v104 - v9);
  v11 = __chkstk_darwin(v8);
  v13 = &v104 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = (&v104 - v15);
  v17 = __chkstk_darwin(v14);
  v19 = &v104 - v18;
  __chkstk_darwin(v17);
  v21 = &v104 - v20;
  v112 = v0;
  v22 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v23 = v116;
  if (v116)
  {
    return v23;
  }

  v108 = v19;
  v104 = v13;
  v105 = v10;
  v106 = v16;
  v24 = v115;
  sub_1000C5F54();
  v25 = sub_1000C5F64();
  v26 = sub_1000C6FF4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "configuredContainer needsBundleIDOverride initially true", v27, 2u);
  }

  v28 = *(v24 + 8);
  v29 = v21;
  v30 = v113;
  v115 = v24 + 8;
  v28(v29, v113);
  v31 = v112;
  v32 = *(v112 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v33 = v116;
  v107 = v28;
  v34 = v108;
  if (v116)
  {
    sub_1000C5F54();
    v35 = v33;
    v36 = sub_1000C5F64();
    v37 = sub_1000C6FF4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v116 = v106;
      *v38 = 136315138;
      v39 = v35;
      v40 = [v39 description];
      v41 = sub_1000C6D84();
      LODWORD(v105) = v37;
      v42 = v30;
      v43 = v41;
      v45 = v44;

      v46 = sub_100071844(v43, v45, &v116);

      *(v38 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v105, "configuredContainer using setupInfo: %s", v38, 0xCu);
      sub_100010544(v106);

      v31 = v112;

      v107(v34, v42);
    }

    else
    {

      v28(v34, v30);
    }

    v56 = [v35 containerOptions];
    v57 = [v56 applicationBundleIdentifierOverrideForContainerAccess];

    v23 = v114;
    if (v57)
    {

      v58 = 0;
    }

    else
    {

      v58 = 1;
    }
  }

  else
  {
    v47 = *(v31 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v48 = v116;
    if (v116)
    {
      v49 = v106;
      sub_1000C5F54();
      v50 = v48;
      v51 = sub_1000C5F64();
      v52 = sub_1000C6FF4();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v50;
        *v54 = v48;
        v55 = v50;
        _os_log_impl(&_mh_execute_header, v51, v52, "configuredContainer with id: %@", v53, 0xCu);
        sub_10003BBA0(v54);
        v28 = v107;

        v49 = v106;
      }

      else
      {
        v55 = v51;
        v51 = v50;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (v116 != 9)
      {
        v97 = v104;
        sub_1000C5F54();
        v98 = sub_1000C5F64();
        v99 = sub_1000C6FD4();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "configuredContainer throwing as it can't build a container", v100, 2u);
        }

        v28(v97, v30);
        v96 = "configuredContainer()";
        v86 = 0xD000000000000019;
        goto LABEL_36;
      }

      v59 = *(v31 + 24);
      sub_1000C6D84();
      sub_1000C6DA4();

      v60 = objc_allocWithZone(CKContainerID);
      v61 = sub_1000C6D44();

      v62 = [v60 initWithContainerIdentifier:v61 environment:1];

      sub_1000860A0(v62, 0);

      v49 = v105;
      sub_1000C5F54();

      v51 = sub_1000C5F64();
      v63 = sub_1000C6FF4();

      if (os_log_type_enabled(v51, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = 138412290;
        v66 = *(v31 + 24);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1000C6094();

        v28 = v107;

        v49 = v105;

        v67 = v116;
        *(v64 + 4) = v116;
        *v65 = v67;
        _os_log_impl(&_mh_execute_header, v51, v63, "configuredContainer with containerID: %@", v64, 0xCu);
        sub_10003BBA0(v65);
      }
    }

    v28(v49, v30);
    v58 = 1;
    v23 = v114;
  }

  v68 = *(v31 + 24);

  sub_100086B10();

  if (v23)
  {
    return v23;
  }

  v69 = *(v31 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v23 = v116;
  if (!v116)
  {
LABEL_29:
    v86 = 0xD000000000000033;
    v87 = v111;
    sub_1000C5F54();

    v88 = sub_1000C5F64();
    v89 = sub_1000C6FF4();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v118 = v91;
      *v90 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
      v92 = sub_1000C6D94();
      v94 = sub_100071844(v92, v93, &v118);

      *(v90 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v88, v89, "configuredContainer throwing as it doesn't have a container or nil sourceAppBundleID: %s", v90, 0xCu);
      sub_100010544(v91);

      v95 = v111;
    }

    else
    {

      v95 = v87;
    }

    v107(v95, v113);
    v96 = "can't build a CKContainer";
LABEL_36:
    v23 = 0x80000001000D8E60;
    v101 = v96 | 0x8000000000000000;
    sub_1000100B0();
    swift_allocError();
    *v102 = 0xD000000000000015;
    *(v102 + 8) = 0x80000001000D8E60;
    *(v102 + 16) = 0;
    *(v102 + 24) = v86;
    *(v102 + 32) = v101;
    *(v102 + 40) = 10;
    swift_willThrow();
    return v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v70 = v117;
  if (!v117)
  {

    goto LABEL_29;
  }

  v114 = 0;
  v71 = v113;
  v72 = v116;
  v73 = v110;
  sub_1000C5F54();
  v74 = sub_1000C5F64();
  v75 = sub_1000C6FF4();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 67109120;
    *(v76 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v74, v75, "configuredContainer about to return container, needsBundleIDOverride: %{BOOL}d", v76, 8u);
    v73 = v110;
  }

  v107(v73, v71);
  if (v58)
  {
    v77 = [v23 options];
    v78 = sub_1000C6D44();
    [v77 setApplicationBundleIdentifierOverride:v78];

    v79 = v109;
    sub_1000C5F54();

    v80 = sub_1000C5F64();
    v81 = sub_1000C6FF4();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v116 = v83;
      *v82 = 136315138;
      v84 = sub_100071844(v72, v70, &v116);

      *(v82 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v80, v81, "configuredContainer options applicationBundleIDOverride set to: %s", v82, 0xCu);
      sub_100010544(v83);

      v85 = v109;
    }

    else
    {

      v85 = v79;
    }

    v107(v85, v71);
  }

  else
  {
  }

  return v23;
}

double sub_10003B924@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10003B9A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10003BBA0(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_100117080, &unk_1000CC350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003BC08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10003BC7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10003BCF0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel__selectedPermission;
  v8 = sub_10000FEB8(&unk_100117020, &qword_1000CD838);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel__allowInviting;
  v10 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return v0;
}

uint64_t sub_10003BE00()
{
  sub_10003BCF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10003BE80()
{
  sub_10003BF94();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10003BFF8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003BF94()
{
  if (!qword_1001171B8)
  {
    sub_100010624(&qword_100117018, &qword_1000CD830);
    v0 = sub_1000C60B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1001171B8);
    }
  }
}

void sub_10003BFF8()
{
  if (!qword_100117460)
  {
    v0 = sub_1000C60B4();
    if (!v1)
    {
      atomic_store(v0, &qword_100117460);
    }
  }
}

uint64_t sub_10003C048@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_10003C06C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003CB8C(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10003C0B4()
{
  v1 = *v0;
  sub_1000C7464();
  sub_1000C7474(v1);
  return sub_1000C7494();
}

Swift::Int sub_10003C128()
{
  v1 = *v0;
  sub_1000C7464();
  sub_1000C7474(v1);
  return sub_1000C7494();
}

uint64_t sub_10003C16C()
{
  swift_getKeyPath();
  sub_10003CBD4();
  sub_1000C5DF4();

  return *(v0 + 32);
}

uint64_t sub_10003C1DC(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003CBD4();
    sub_1000C5DE4();
  }

  return result;
}

uint64_t sub_10003C2C4()
{
  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing23OneTimeLinkRowViewModel___observationRegistrar;
  v2 = sub_1000C5E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_10003C398()
{
  result = sub_1000C5E14();
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

uint64_t getEnumTagSinglePayload for SharePermission(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharePermission(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003C5C0()
{
  result = qword_100117380;
  if (!qword_100117380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117380);
  }

  return result;
}

unint64_t sub_10003C618()
{
  result = qword_100117388;
  if (!qword_100117388)
  {
    sub_100010624(&qword_100117390, qword_1000CE4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117388);
  }

  return result;
}

uint64_t sub_10003C688@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  result = sub_1000C7064();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_10003C6B8(unint64_t a1)
{
  if (a1 < 5)
  {
    return 0x302010004uLL >> (8 * a1);
  }

  sub_1000C7244(35);
  v2._object = 0x80000001000D90B0;
  v2._countAndFlagsBits = 0xD000000000000021;
  sub_1000C6E04(v2);
  type metadata accessor for ParticipantRole(0);
  sub_1000C72D4();
  result = sub_1000C72E4();
  __break(1u);
  return result;
}

uint64_t sub_10003C790(void *a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isOrgAdmin))
  {
    return 0;
  }

  v5 = *(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe);
  v6 = *(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v33)
  {
    v7 = *(v33 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role);

    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  swift_beginAccess();
  v9 = *(*(a2 + 16) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v31 = v32 != 3 && v8 && v32 == 0;
  v10 = *(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_existingContact);
  v11 = *(a2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v32 != 1)
  {
    v29 = v6;
    v28 = v8;
    v30 = v5;
    v12 = a1[13];
    v13 = a1[14];
    v14 = v13 & 0x2000000000000000;
    v15 = HIBYTE(v13) & 0xF;
    v16 = v12 & 0xFFFFFFFFFFFFLL;
    if ((v13 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v17 = v12 & 0xFFFFFFFFFFFFLL;
    }

    v18 = a1[14];
    v19 = v12 & 0xFFFFFFFFFFFFLL;
    v20 = HIBYTE(v13) & 0xF;
    if (!v17)
    {
      v21 = a1[12];
      v14 = v21 & 0x2000000000000000;
      v20 = HIBYTE(v21) & 0xF;
      v19 = a1[11] & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v22 = v20;
    }

    else
    {
      v22 = v19;
    }

    if (v22 | v10)
    {
      return 1;
    }

    if (v30)
    {
      if (v32)
      {
        return 0;
      }
    }

    else
    {
      v25 = v13 & 0x2000000000000000;
      if (!v17)
      {
        v26 = a1[12];
        v25 = v26 & 0x2000000000000000;
        v15 = HIBYTE(v26) & 0xF;
        v16 = a1[11] & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v27 = v15;
      }

      else
      {
        v27 = v16;
      }

      result = v27 != 0;
      if ((v27 != 0) | v32 & 1)
      {
        return result;
      }

      if (v31 && v29)
      {
        return 1;
      }
    }

    v23 = *(*(a2 + 16) + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if ((v32 & 8) != 0)
    {
      v24 = *(*(a2 + 16) + 16);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();
    }

    return (v28 & ((v29 != 0) | v30) & 1) != 0;
  }

  if (v5 && v6)
  {
    if (!v10)
    {
      return v32 ^ 1u;
    }

    return 1;
  }

  result = 0;
  if (v10 && (v6 == 0) | v5 & 1)
  {
    return 1;
  }

  return result;
}

unint64_t sub_10003CB8C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_10003CBD4()
{
  result = qword_100117398;
  if (!qword_100117398)
  {
    type metadata accessor for OneTimeLinkRowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117398);
  }

  return result;
}

uint64_t sub_10003CC40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = sub_1000C5D84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v16 = v40;
  if (v40 > 4u)
  {
    if (v40 <= 6u)
    {
      if (v40 == 5)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_25;
        }

        v17 = 11;
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (v40 == 7 || v40 == 8)
    {
      goto LABEL_22;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v15, v10, v11);
      v27 = *(v2 + 24);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      v28 = v39;
      v29 = sub_10009DE88(v15, v39);
      v31 = v30;

      (*(v12 + 16))(v8, v15, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      LOBYTE(v28) = sub_10009EC80(v29, v31, v8);

      sub_100010F24(v8, &qword_100116260, &qword_1000CD940);
      v32 = *(a1 + 16);
      switch(v28)
      {
        case 1:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 1;
          break;
        case 2:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 2;
          break;
        case 3:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 3;
          break;
        case 4:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 4;
          break;
        case 5:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 5;
          break;
        case 6:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 6;
          break;
        case 7:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 7;
          break;
        case 8:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 8;
          break;
        case 9:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 9;
          break;
        case 10:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 10;
          break;
        case 11:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 11;
          break;
        case 12:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 12;
          break;
        case 13:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 13;
          break;
        default:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 0;
          break;
      }

      v34 = sub_100071E64(v33);
      if (v35)
      {
        v36 = (*(a1 + 56) + 16 * v34);
        v24 = *v36;
        v37 = v36[1];
        v38 = *(v12 + 8);

        v38(v15, v11);
        return v24;
      }

LABEL_64:
      (*(v12 + 8))(v15, v11);
      goto LABEL_25;
    }

    sub_100010F24(v10, &qword_100116260, &qword_1000CD940);
    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v18 = sub_100071E64(1);
    if (v19)
    {
      goto LABEL_27;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v18 = sub_100071E64(13);
    if (v20)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_16:
    if (v16)
    {
      if (!*(a1 + 16))
      {
        goto LABEL_25;
      }

      v17 = 7;
      goto LABEL_24;
    }

LABEL_22:
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v17 = 13;
    goto LABEL_24;
  }

  if (v40 <= 1u)
  {
    goto LABEL_16;
  }

  if (v40 == 2)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v17 = 8;
  }

  else
  {
    if (v40 == 3)
    {
      if (*(a1 + 16))
      {
        v17 = 9;
        goto LABEL_24;
      }

LABEL_25:
      if (*(a1 + 16))
      {
        v18 = sub_100071E64(13);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_67:
      __break(1u);
      JUMPOUT(0x10003D178);
    }

    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v17 = 10;
  }

LABEL_24:
  v18 = sub_100071E64(v17);
  if ((v21 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v23 = (*(a1 + 56) + 16 * v18);
  v24 = *v23;
  v25 = v23[1];

  return v24;
}

uint64_t sub_10003D1B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_10003D264(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v1 = [objc_opt_self() mainBundle];
      v8._countAndFlagsBits = 0x80000001000DA0F0;
      v5._countAndFlagsBits = 0x646578694DLL;
      v2._object = 0x80000001000DA0D0;
      v2._countAndFlagsBits = 0xD000000000000010;
      v3.value._countAndFlagsBits = 0;
      v3.value._object = 0;
      v4.super.isa = v1;
      v5._object = 0xE500000000000000;
      goto LABEL_7;
    }

    v1 = [objc_opt_self() mainBundle];
    v8._countAndFlagsBits = 0x80000001000D7E90;
    v2._countAndFlagsBits = 0x6C6E6F2077656956;
    v2._object = 0xE900000000000079;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v8._countAndFlagsBits = 0x80000001000D7E70;
    v2._object = 0x80000001000D7E50;
    v2._countAndFlagsBits = 0xD000000000000010;
  }

  v3.value._countAndFlagsBits = 0;
  v3.value._object = 0;
  v4.super.isa = v1;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
LABEL_7:
  v6 = sub_1000C5B74(v2, v3, v4, v5, v8);

  return v6;
}

uint64_t *sub_10003D40C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10003D43C(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v3._object = 0x80000001000DA130;
    v7._countAndFlagsBits = 0x80000001000DA130;
    v3._countAndFlagsBits = 0xD000000000000014;
  }

  else
  {
    v3._object = 0x80000001000DA150;
    v7._countAndFlagsBits = 0x80000001000DA150;
    v3._countAndFlagsBits = 0xD000000000000016;
  }

  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v4.super.isa = v2;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v5 = sub_1000C5B74(v3, v8, v4, v9, v7);

  return v5;
}

void *sub_10003D538@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_10003D578(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v1 = [objc_opt_self() mainBundle];
      v8._countAndFlagsBits = 0x80000001000D7EB0;
      v2._countAndFlagsBits = 0x61635F646578694DLL;
      v2._object = 0xEF657469766E496ELL;
      v5._countAndFlagsBits = 0x646578694DLL;
      v3.value._countAndFlagsBits = 0;
      v3.value._object = 0;
      v4.super.isa = v1;
      v5._object = 0xE500000000000000;
      goto LABEL_7;
    }

    v1 = [objc_opt_self() mainBundle];
    v8._countAndFlagsBits = 0x80000001000DA060;
    v2._countAndFlagsBits = 0xD000000000000017;
    v2._object = 0x80000001000DA040;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v8._countAndFlagsBits = 0x80000001000DA0B0;
    v2._object = 0x80000001000DA090;
    v2._countAndFlagsBits = 0xD000000000000015;
  }

  v3.value._countAndFlagsBits = 0;
  v3.value._object = 0;
  v4.super.isa = v1;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
LABEL_7:
  v6 = sub_1000C5B74(v2, v3, v4, v5, v8);

  return v6;
}

uint64_t sub_10003D734(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_10003D7B0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_100048B54(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100048B54(v10, v8);

  sub_1000C60A4();
  return sub_100010F24(v10, &qword_100116C80, &unk_1000CE870);
}

uint64_t sub_10003D8E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10003D96C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v65 - v8;
  v10 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v65 - v15;
  v17 = type metadata accessor for AlertViewModelButton(0);
  v69 = *(v17 - 1);
  v18 = *(v69 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v65 - v22;
  v24 = *a1;
  if ((*a1 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , v71 != 1))
  {
    sub_1000C6F24();
    v61 = sub_1000C6F44();
    (*(*(v61 - 8) + 56))(v9, 0, 1, v61);
    sub_1000C6F14();

    v62 = sub_1000C6F04();
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = &protocol witness table for MainActor;
    *(v63 + 32) = a4;
    *(v63 + 40) = v24;
    sub_1000B8860(0, 0, v9, &unk_1000CF828, v63);
  }

  else
  {
    sub_1000C65D4();
    v25 = sub_1000C68C4();
    v27 = v26;
    v68 = v14;
    LODWORD(v67) = v28;
    v30 = v29;
    v31 = v17[6];
    v32 = sub_1000C61F4();
    v33 = *(v32 - 8);
    v65 = *(v33 + 56);
    v66 = v33 + 56;
    v65(&v23[v31], 1, 1, v32);
    v34 = swift_allocObject();
    swift_weakInit();
    sub_1000C5DB4();
    v35 = &v23[v17[5]];
    *v35 = v25;
    *(v35 + 1) = v27;
    v35[16] = v67 & 1;
    *(v35 + 3) = v30;
    v36 = &v23[v17[7]];
    *v36 = sub_1000495E4;
    v36[1] = v34;
    sub_1000C65D4();
    LOWORD(v64._object) = 256;
    v37 = sub_1000C68C4();
    v39 = v38;
    LOBYTE(v25) = v40;
    v42 = v41;
    v67 = a4;
    v43 = v17[6];
    sub_1000C61D4();
    v65(&v21[v43], 0, 1, v32);
    sub_1000C5DB4();
    v44 = &v21[v17[5]];
    *v44 = v37;
    *(v44 + 1) = v39;
    v44[16] = v25 & 1;
    *(v44 + 3) = v42;
    v45 = &v21[v17[7]];
    *v45 = 0;
    *(v45 + 1) = 0;
    v46 = [objc_opt_self() mainBundle];
    v64._countAndFlagsBits = 0x80000001000D9C70;
    v72._object = 0x80000001000D9C50;
    v72._countAndFlagsBits = 0xD000000000000016;
    v73.value._countAndFlagsBits = 0;
    v73.value._object = 0;
    v47.super.isa = v46;
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    v66 = sub_1000C5B74(v72, v73, v47, v74, v64);
    v49 = v48;

    v50 = sub_10003E610();
    v52 = v51;
    sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
    v53 = *(v69 + 72);
    v54 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1000CC5C0;
    v56 = v55 + v54;
    sub_100049224(v23, v56);
    sub_100049224(v21, v56 + v53);
    sub_1000C5DB4();
    v57 = type metadata accessor for AlertViewModel(0);
    v58 = &v16[v57[5]];
    *v58 = v66;
    v58[1] = v49;
    v59 = &v16[v57[6]];
    *v59 = v50;
    v59[1] = v52;
    *&v16[v57[7]] = v55;
    (*(*(v57 - 1) + 56))(v16, 0, 1, v57);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100048B54(v16, v68);

    sub_1000C60A4();
    sub_100010F24(v16, &qword_100116C80, &unk_1000CE870);
    swift_getKeyPath();
    swift_getKeyPath();
    v70 = 1;

    sub_1000C60A4();
    sub_1000492E0(v21);
    return sub_1000492E0(v23);
  }
}

uint64_t sub_10003DFF0()
{
  v0 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1000C6F24();
    v6 = sub_1000C6F44();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_1000C6F14();

    v7 = sub_1000C6F04();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    sub_1000B8860(0, 0, v3, &unk_1000CF888, v8);
  }

  return result;
}

uint64_t sub_10003E14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1000C6F14();
  v4[4] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10003E1E8, v6, v5);
}

uint64_t sub_10003E1E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 104) = 0;

  sub_1000C60A4();
  *(v0 + 56) = sub_1000C6F04();
  v4 = sub_1000C6ED4();
  *(v0 + 64) = v4;
  *(v0 + 72) = v3;

  return _swift_task_switch(sub_10003E2C8, v4, v3);
}

uint64_t sub_10003E2C8()
{
  v1 = *(v0[2] + 16);
  v0[10] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10003E388;

  return sub_10001A94C(2, v1, 1);
}

uint64_t sub_10003E388()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_10003E508;
  }

  else
  {
    v7 = v2[10];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_10003E4A4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10003E4A4()
{
  v1 = v0[7];

  v2 = v0[5];
  v3 = v0[6];

  return _swift_task_switch(sub_10003E5B0, v2, v3);
}

uint64_t sub_10003E508()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[2];

  sub_1000401D8(v1, 0xD000000000000019, 0x80000001000DA020);

  v5 = v0[5];
  v6 = v0[6];

  return _swift_task_switch(sub_10003E5B0, v5, v6);
}

uint64_t sub_10003E5B0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003E610()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (LOBYTE(v15._object) == 9)
  {
    v2 = sub_100042AE4();
    v3 = sub_10003CC40(v2);
  }

  else
  {
    v4 = *(v1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (v15._object && (sub_1000C7154(), v5 = sub_1000C7174(), , v15._object, v5) && (sub_10000FEB8(&unk_1001162F0, &unk_1000CBB70), (swift_dynamicCast() & 1) != 0))
    {
      object = v15._object;
      v6 = v16;
    }

    else
    {
      object = 0;
      v6 = 0xE000000000000000;
    }

    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = object & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = [objc_opt_self() mainBundle];
      v15._countAndFlagsBits = 0x80000001000D9CE0;
      v17._object = 0x80000001000D9CA0;
      v17._countAndFlagsBits = 0x100000000000003ELL;
      v19.value._countAndFlagsBits = 0;
      v19.value._object = 0;
      v10.super.isa = v9;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      sub_1000C5B74(v17, v19, v10, v21, v15);

      sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1000CB170;
      *(v11 + 56) = &type metadata for String;
      *(v11 + 64) = sub_1000382F4();
      *(v11 + 32) = object;
      *(v11 + 40) = v6;
      v3 = sub_1000C6D54();
    }

    else
    {

      v12 = [objc_opt_self() mainBundle];
      v18._countAndFlagsBits = 0xD000000000000032;
      v15._countAndFlagsBits = 0x80000001000D9CE0;
      v18._object = 0x80000001000D9D20;
      v20.value._countAndFlagsBits = 0;
      v20.value._object = 0;
      v13.super.isa = v12;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v3 = sub_1000C5B74(v18, v20, v13, v22, v15);
    }
  }

  return v3;
}

uint64_t sub_10003E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 113) = a5;
  *(v5 + 24) = a4;
  *(v5 + 32) = sub_1000C6F14();
  *(v5 + 40) = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return _swift_task_switch(sub_10003E9B8, v7, v6);
}

uint64_t sub_10003E9B8()
{
  v1 = *(v0 + 113);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = v1 & 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = _swiftEmptyArrayStorage;

  sub_1000C60A4();
  *(v0 + 64) = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  *(v0 + 72) = v5;
  *(v0 + 80) = v4;

  return _swift_task_switch(sub_10003EAEC, v5, v4);
}

uint64_t sub_10003EAEC()
{
  v1 = *(v0 + 113);
  v2 = *(*(v0 + 24) + 16);
  *(v0 + 88) = *(v2 + 16);

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_10003EBBC;
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_10001A94C(v4, v2, 1);
}

uint64_t sub_10003EBBC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_10003ED3C;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_10003ECD8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10003ECD8()
{
  v1 = v0[8];

  v2 = v0[6];
  v3 = v0[7];

  return _swift_task_switch(sub_10003EDE4, v2, v3);
}

uint64_t sub_10003ED3C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[3];

  sub_1000401D8(v1, 0xD000000000000019, 0x80000001000DA020);

  v5 = v0[6];
  v6 = v0[7];

  return _swift_task_switch(sub_10003EDE4, v5, v6);
}

uint64_t sub_10003EDE4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003EE58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10003EECC(char a1)
{
  v3 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v68 - v7;
  v9 = type metadata accessor for AlertViewModelButton(0);
  v73 = *(v9 - 1);
  v10 = *(v73 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v68 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v16 = v79;
  v17 = *(*(v1 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v18 = v78;
  if (v78 && ((v19 = [v78 participants], v18, sub_100010778(0, &qword_100117010, CKShareParticipant_ptr), v20 = sub_1000C6E94(), v19, v20 >> 62) ? (v21 = sub_1000C72F4()) : (v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v21 == 1) && v16 != 1 && (a1 & 1) != 0))
  {
    sub_1000C65D4();
    v22 = sub_1000C68C4();
    v24 = v23;
    v26 = v25;
    v72 = v8;
    v28 = v27;
    v29 = v9[6];
    sub_1000C61C4();
    v30 = sub_1000C61F4();
    v31 = *(*(v30 - 8) + 56);
    v69 = v13;
    v70 = v31;
    v31(&v15[v29], 0, 1, v30);
    v32 = swift_allocObject();
    swift_weakInit();
    sub_1000C5DB4();
    v33 = v9[5];
    v71 = v15;
    v34 = &v15[v33];
    *v34 = v22;
    *(v34 + 1) = v24;
    v34[16] = v26 & 1;
    *(v34 + 3) = v28;
    v35 = &v15[v9[7]];
    *v35 = sub_10004921C;
    v35[1] = v32;
    sub_1000C65D4();
    LOWORD(v66._object) = 256;
    v36 = sub_1000C68C4();
    v38 = v37;
    LOBYTE(v22) = v39;
    v41 = v40;
    v42 = v9[6];
    v43 = v69;
    sub_1000C61D4();
    v70(v43 + v42, 0, 1, v30);
    sub_1000C5DB4();
    v44 = v43 + v9[5];
    *v44 = v36;
    *(v44 + 8) = v38;
    *(v44 + 16) = v22 & 1;
    *(v44 + 24) = v41;
    v45 = (v43 + v9[7]);
    v46 = v43;
    *v45 = 0;
    v45[1] = 0;
    v47 = objc_opt_self();
    v48 = [v47 mainBundle];
    v66._countAndFlagsBits = 0x80000001000D9AF0;
    v80._object = 0x80000001000D9AD0;
    v80._countAndFlagsBits = 0xD000000000000017;
    v82.value._countAndFlagsBits = 0;
    v82.value._object = 0;
    v49.super.isa = v48;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    v70 = sub_1000C5B74(v80, v82, v49, v84, v66);
    v51 = v50;

    v52 = [v47 mainBundle];
    v67._countAndFlagsBits = 0x80000001000D9B90;
    v81._countAndFlagsBits = 0xD000000000000035;
    v81._object = 0x80000001000D9B50;
    v83.value._countAndFlagsBits = 0;
    v83.value._object = 0;
    v53.super.isa = v52;
    v85._countAndFlagsBits = 0;
    v85._object = 0xE000000000000000;
    v54 = sub_1000C5B74(v81, v83, v53, v85, v67);
    v56 = v55;

    sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
    v57 = *(v73 + 72);
    v58 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1000CC5C0;
    v60 = v71;
    sub_100049224(v71, v59 + v58);
    sub_100049224(v46, v59 + v58 + v57);
    v61 = v72;
    sub_1000C5DB4();
    v62 = type metadata accessor for AlertViewModel(0);
    v63 = (v61 + v62[5]);
    *v63 = v70;
    v63[1] = v51;
    v64 = (v61 + v62[6]);
    *v64 = v54;
    v64[1] = v56;
    *(v61 + v62[7]) = v59;
    (*(*(v62 - 1) + 56))(v61, 0, 1, v62);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100048B54(v61, v74);

    sub_1000C60A4();
    sub_100010F24(v61, &qword_100116C80, &unk_1000CE870);
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = 1;

    sub_1000C60A4();
    sub_1000492E0(v46);
    return sub_1000492E0(v60);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v77 = a1 & 1;

    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    return sub_100040B70(v76);
  }
}

uint64_t sub_10003F6AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10003F72C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10003F7DC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a1 = v3;
  return result;
}

uint64_t sub_10003F858(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10003EECC(v1);
  }

  return result;
}

uint64_t sub_10003F8B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t (*sub_10003F940())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_100049734;
}

uint64_t sub_10003FA3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *(*(a2 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v9 == 1)
  {

    result = sub_100042A64(v6);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    result = v8;
  }

  *a3 = result;
  return result;
}

uint64_t sub_10003FB3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *(*(a2 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v9 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    result = v8;
  }

  else
  {

    result = sub_100042A64(v7);
  }

  *a3 = result;
  return result;
}

uint64_t sub_10003FC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(a4 + 16);
    v7 = *(v6 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
    if (v7 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (v7)
      {
LABEL_8:

        swift_getKeyPath();
        swift_getKeyPath();
        return sub_1000C60A4();
      }
    }

    v8 = *(v6 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel);
    result = swift_weakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_100052CE0();

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10003FD8C(int a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C60A4();
    v11 = ((a4 & 0xFE) == 2) & (a2 | a1);
    if (v11 == 1)
    {

      v12 = sub_10004910C;
    }

    else
    {
      v12 = 0;
      a6 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    if (v11)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a6;
    }

    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_10003FF14()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_10004009C(char a1, char a2, unsigned __int8 a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C60A4();
  v9 = sub_100042DC0(a1 & 1, a2, a3, a5 & 1);

  return v9;
}

BOOL sub_1000401A0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100042A28(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

void sub_1000401D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v47 = a2;
  v6 = sub_1000C5F74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
  v54 = a1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v15 = v50;
    if (v53 == 4)
    {
      v46 = v7;

      if (!v15)
      {
        __break(1u);
        return;
      }

      v14 = v15;
      v16 = [v14 underlyingErrors];
      v17 = sub_1000C6E94();

      if (*(v17 + 16))
      {
        v18 = *(v17 + 32);
        swift_errorRetain();

        v19 = sub_1000C5CD4();

        v14 = v19;
      }

      else
      {
      }

      v7 = v46;
    }

    else
    {
      sub_1000494BC(v49[0], v49[1], v50, v51, v52, v53);
    }

    v13 = v48;
  }

  v20 = *(v3 + 16);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000C5F54();

    v21 = v14;
    v22 = sub_1000C5F64();
    v23 = sub_1000C6FD4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v48 = v13;
      v25 = v24;
      v45 = swift_slowAlloc();
      v49[0] = v45;
      *v25 = 136315394;
      *(v25 + 4) = sub_100071844(v47, a3, v49);
      *(v25 + 12) = 2080;
      v26 = v7;
      v27 = v21;
      v28 = [v27 description];
      v29 = sub_1000C6D84();
      v46 = v6;
      v31 = v30;

      v32 = sub_100071844(v29, v31, v49);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s; exiting with final error %s", v25, 0x16u);
      swift_arrayDestroy();

      (*(v26 + 8))(v48, v46);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }

    sub_10000B6FC(v21, 1u);

    swift_unknownObjectRelease();
  }

  else
  {
    v46 = v6;
    sub_1000C5F54();

    v33 = v14;
    v34 = sub_1000C5F64();
    v35 = sub_1000C6FD4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v36 = 136315394;
      *(v36 + 4) = sub_100071844(v47, a3, v49);
      *(v36 + 12) = 2080;
      v37 = v33;
      v38 = v7;
      v39 = [v37 description];
      v40 = sub_1000C6D84();
      v42 = v41;

      v43 = sub_100071844(v40, v42, v49);

      *(v36 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s; unable to exit with final error %s", v36, 0x16u);
      swift_arrayDestroy();

      (*(v38 + 8))(v11, v46);
    }

    else
    {

      (*(v7 + 8))(v11, v46);
    }
  }
}

uint64_t sub_10004077C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 65) = a4;
  sub_1000C6F14();
  *(v5 + 24) = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_100040818, v7, v6);
}

uint64_t sub_100040818()
{
  v1 = *(v0 + 65);
  v2 = *(*(v0 + 16) + 16);
  v3 = *(v2 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (*(v0 + 64) == 1)
  {
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    *v4 = v0;
    v4[1] = sub_1000409A8;

    return sub_1000588A0(v1 == 0);
  }

  else
  {
    v6 = *(v0 + 24);

    v7 = *(v2 + 16);
    if (v1)
    {
      v8 = &off_100107368;
    }

    else
    {
      v8 = &off_100107340;
    }

    sub_10001B418(v8);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1000409A8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_100040AE4;
  }

  else
  {
    v7 = sub_10004975C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100040AE4()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];

  sub_1000401D8(v1, 0xD000000000000029, 0x80000001000D9C20);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100040B70(char a1)
{
  v2 = v1;
  v4 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = &unk_100107170;
  if ((a1 & 1) == 0)
  {
    v8 = &unk_100107148;
  }

  if (*v8)
  {
    v9 = &unk_100107158;
    if (a1)
    {
      v9 = &unk_100107180;
    }

    v10 = *v9;

    sub_1000C6F24();
    v11 = sub_1000C6F44();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    sub_1000C6F14();

    v12 = sub_1000C6F04();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    *(v13 + 32) = v2;
    *(v13 + 40) = v10;
    sub_1000B8860(0, 0, v7, &unk_1000CF7C0, v13);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100040CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 16) = a4;
  sub_1000C6F14();
  *(v5 + 24) = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_100040D94, v7, v6);
}

uint64_t sub_100040D94()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 48) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100040E58;
  v3 = *(v0 + 72);

  return sub_10001BBE4(v3, v1, 1);
}

uint64_t sub_100040E58()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = sub_100040FD4;
  }

  else
  {
    v7 = v2[6];

    v4 = v2[4];
    v5 = v2[5];
    v6 = sub_100040F74;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100040F74()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100040FD4()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];

  sub_1000401D8(v1, 0xD000000000000029, 0x80000001000D9BF0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100041074(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_1000C6F24();
  v6 = sub_1000C6F44();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_1000C6F14();

  v7 = sub_1000C6F04();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  sub_1000B8860(0, 0, v5, &unk_1000D47D0, v8);
}

uint64_t sub_1000411A0(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_1000C6F44();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1000C6F14();

  v7 = sub_1000C6F04();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  sub_1000B85A4(0, 0, v5, &unk_1000CF7B0, v8);
}

uint64_t sub_1000412C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1000C6F14();
  v4[7] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_10004135C, v6, v5);
}

uint64_t sub_10004135C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 16);

    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_10004147C;

    return sub_100056B08();
  }

  else
  {
    v5 = *(v0 + 56);

    **(v0 + 40) = *(v0 + 80) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10004147C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_100041610;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_100041598;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100041598()
{
  v1 = *(v0 + 56);

  **(v0 + 40) = *(v0 + 80) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100041610()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_100041680()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__showingAlert;
  v4 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__showingAlertBool;
  v6 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAccessPermissions;
  v9 = sub_10000FEB8(&qword_100117648, &qword_1000CEDE8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAccessPermissionSelected;
  v11 = sub_10000FEB8(&qword_100117650, &qword_1000CEDF0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__readWritePermissions;
  v13 = sub_10000FEB8(&qword_100117658, &qword_1000CEDF8);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__readWritePermissionSelected;
  v15 = sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAddPeoplePermissions;
  v17 = sub_10000FEB8(&qword_100117668, &qword_1000CEE08);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAddPeoplePermissionSelected;
  v19 = sub_10000FEB8(&qword_100117670, &qword_1000CEE10);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v7(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__anyoneCanAddPeople, v6);
  v20 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanRequestAccessPermissions;
  v21 = sub_10000FEB8(&qword_100117678, &qword_1000CEE18);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanRequestAccessSelected;
  v23 = sub_10000FEB8(&unk_100117680, &unk_1000CEE20);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__localizedPermissionSummary;
  v25 = sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v7(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__shouldShowSharingOptionsView, v6);
  v26 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__didTapCopyLink;
  v27 = sub_10000FEB8(&qword_100117690, &qword_1000CEE30);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  v7(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__savingInProgress, v6);
  return v0;
}

uint64_t sub_100041AA8()
{
  sub_100041680();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GlobalPermissionViewModel()
{
  result = qword_100117440;
  if (!qword_100117440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100041B54()
{
  sub_10002F0A0(319, &unk_100117450, &qword_100116C80, &unk_1000CE870);
  if (v1 <= 0x3F)
  {
    v25 = *(v0 - 8) + 64;
    sub_10001D1A8(319, &qword_100117460);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_10002F0A0(319, &qword_100117468, &qword_100117470, &qword_1000D5C30);
      if (v6 <= 0x3F)
      {
        v26 = *(v5 - 8) + 64;
        sub_10001D1A8(319, &qword_100117478);
        if (v8 <= 0x3F)
        {
          v27 = *(v7 - 8) + 64;
          sub_10002F0A0(319, &qword_100117480, &qword_100117488, &qword_1000CE880);
          if (v10 <= 0x3F)
          {
            v28 = *(v9 - 8) + 64;
            sub_10001D1A8(319, &qword_100117490);
            if (v12 <= 0x3F)
            {
              v29 = *(v11 - 8) + 64;
              sub_10002F0A0(319, &qword_100117498, &qword_1001174A0, &qword_1000CE888);
              if (v14 <= 0x3F)
              {
                v30 = *(v13 - 8) + 64;
                sub_10001D1A8(319, &qword_1001174A8);
                if (v16 <= 0x3F)
                {
                  v31 = *(v15 - 8) + 64;
                  sub_10002F0A0(319, &qword_1001174B0, &qword_1001174B8, &qword_1000CE890);
                  if (v18 <= 0x3F)
                  {
                    v32 = *(v17 - 8) + 64;
                    sub_10001D1A8(319, &unk_1001174C0);
                    if (v20 <= 0x3F)
                    {
                      v33 = *(v19 - 8) + 64;
                      sub_10001D1A8(319, &qword_100116C88);
                      if (v22 <= 0x3F)
                      {
                        v34 = *(v21 - 8) + 64;
                        sub_10002F0A0(319, &qword_1001174D0, &unk_1001174D8, &qword_1000CE898);
                        if (v24 <= 0x3F)
                        {
                          v35 = *(v23 - 8) + 64;
                          swift_updateClassMetadata2();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for NetworkStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100042288()
{
  result = qword_1001175D8;
  if (!qword_1001175D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001175D8);
  }

  return result;
}

unint64_t sub_1000422DC()
{
  result = qword_1001175E0;
  if (!qword_1001175E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001175E0);
  }

  return result;
}

unint64_t sub_1000423A4()
{
  result = qword_1001175F0;
  if (!qword_1001175F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001175F0);
  }

  return result;
}

unint64_t sub_1000423F8()
{
  result = qword_1001175F8;
  if (!qword_1001175F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001175F8);
  }

  return result;
}

unint64_t sub_1000424C0()
{
  result = qword_100117608;
  if (!qword_100117608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117608);
  }

  return result;
}

unint64_t sub_100042514()
{
  result = qword_100117610;
  if (!qword_100117610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117610);
  }

  return result;
}

uint64_t sub_1000425DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100042618()
{
  result = qword_100117620;
  if (!qword_100117620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117620);
  }

  return result;
}

unint64_t sub_10004266C()
{
  result = qword_100117628;
  if (!qword_100117628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117628);
  }

  return result;
}

uint64_t sub_100042730@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_1000427B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

double sub_10004289C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10004291C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_10004911C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  if (v3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
  }

  sub_1000229B4(v3);

  return sub_1000C60A4();
}

uint64_t sub_100042A64(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = *(result + 32);
  if (v2 == 1)
  {
    if (v1 != 1)
    {
      if (*(result + 33))
      {

        return 0;
      }

      v3 = 0;
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  if (v1 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = *(result + 33);
LABEL_9:

  if (v2 != v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_100042AE4()
{
  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CE810;
  *(inited + 32) = 0;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v29._countAndFlagsBits = 0x80000001000D9DE0;
  v34._countAndFlagsBits = 0xD000000000000072;
  v34._object = 0x80000001000D9D60;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v3.super.isa = v2;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v4 = sub_1000C5B74(v34, v39, v3, v44, v29);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 1;
  v7 = [v1 mainBundle];
  v30._countAndFlagsBits = 0x80000001000D9DE0;
  v35._countAndFlagsBits = 0xD00000000000006DLL;
  v35._object = 0x80000001000D9E50;
  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v8.super.isa = v7;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v9 = sub_1000C5B74(v35, v40, v8, v45, v30);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 2;
  v12 = [v1 mainBundle];
  v31._countAndFlagsBits = 0x80000001000D9DE0;
  v36._countAndFlagsBits = 0xD000000000000070;
  v36._object = 0x80000001000D9EC0;
  v41.value._countAndFlagsBits = 0;
  v41.value._object = 0;
  v13.super.isa = v12;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v14 = sub_1000C5B74(v36, v41, v13, v46, v31);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 3;
  v17 = [v1 mainBundle];
  v32._countAndFlagsBits = 0x80000001000D9DE0;
  v37._countAndFlagsBits = 0xD000000000000071;
  v37._object = 0x80000001000D9F40;
  v42.value._countAndFlagsBits = 0;
  v42.value._object = 0;
  v18.super.isa = v17;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v19 = sub_1000C5B74(v37, v42, v18, v47, v32);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 13;
  v22 = [v1 mainBundle];
  v38._countAndFlagsBits = 0xD000000000000059;
  v33._countAndFlagsBits = 0x80000001000D9DE0;
  v38._object = 0x80000001000D9FC0;
  v43.value._countAndFlagsBits = 0;
  v43.value._object = 0;
  v23.super.isa = v22;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v24 = sub_1000C5B74(v38, v43, v23, v48, v33);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  v27 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  return v27;
}

uint64_t sub_100042DC0(char a1, char a2, unsigned __int8 a3, char a4)
{
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v15 = a3;
        v4 = [objc_opt_self() mainBundle];
        if (v15 > 1)
        {
          v5._countAndFlagsBits = 0xD000000000000023;
          v71._countAndFlagsBits = 0x80000001000D9370;
          v5._object = 0x80000001000D9340;
        }

        else
        {
          v5._countAndFlagsBits = 0xD000000000000034;
          v71._countAndFlagsBits = 0x80000001000D9410;
          v5._object = 0x80000001000D93D0;
        }

        goto LABEL_10;
      }

      v9 = "xisting participants";
      v10 = 0x80000001000D9480;
      v4 = [objc_opt_self() mainBundle];
      v5._countAndFlagsBits = 0xD00000000000001DLL;
      goto LABEL_9;
    }

    if (a3)
    {
      if (a3 != 1)
      {
        v4 = [objc_opt_self() mainBundle];
        v5._countAndFlagsBits = 0xD00000000000002FLL;
        v71._countAndFlagsBits = 0x80000001000D94F0;
        v5._object = 0x80000001000D94C0;
        goto LABEL_10;
      }

      if ((a4 & 1) == 0)
      {
        sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000CD0A0;
        *(inited + 32) = 7;
        v19 = objc_opt_self();
        v20 = [v19 mainBundle];
        v71._countAndFlagsBits = 0x80000001000D95D0;
        v82._object = 0x80000001000D9590;
        v82._countAndFlagsBits = 0xD000000000000030;
        v92.value._countAndFlagsBits = 0;
        v92.value._object = 0;
        v21.super.isa = v20;
        v102._countAndFlagsBits = 0;
        v102._object = 0xE000000000000000;
        v22 = sub_1000C5B74(v82, v92, v21, v102, v71);
        v24 = v23;

        *(inited + 40) = v22;
        *(inited + 48) = v24;
        *(inited + 56) = 8;
        v72._object = "rmission to invite others";
        v25 = [v19 mainBundle];
        v72._countAndFlagsBits = 0x80000001000D95D0;
        v83._object = 0x80000001000D9620;
        v83._countAndFlagsBits = 0xD000000000000039;
        v93.value._countAndFlagsBits = 0;
        v93.value._object = 0;
        v26.super.isa = v25;
        v103._countAndFlagsBits = 0;
        v103._object = 0xE000000000000000;
        v27 = sub_1000C5B74(v83, v93, v26, v103, v72);
        v29 = v28;

        *(inited + 64) = v27;
        *(inited + 72) = v29;
        *(inited + 80) = 9;
        v30 = [v19 mainBundle];
        v73._countAndFlagsBits = 0x80000001000D95D0;
        v84._object = 0x80000001000D9660;
        v84._countAndFlagsBits = 0xD000000000000030;
        v94.value._countAndFlagsBits = 0;
        v94.value._object = 0;
        v31.super.isa = v30;
        v104._countAndFlagsBits = 0;
        v104._object = 0xE000000000000000;
        v32 = sub_1000C5B74(v84, v94, v31, v104, v73);
        v34 = v33;

        *(inited + 88) = v32;
        *(inited + 96) = v34;
        *(inited + 104) = 10;
        v35 = [v19 mainBundle];
        v85._countAndFlagsBits = 0xD000000000000035;
        v74._countAndFlagsBits = 0x80000001000D95D0;
        v85._object = 0x80000001000D96A0;
        v95.value._countAndFlagsBits = 0;
        v95.value._object = 0;
        v36.super.isa = v35;
        v105._countAndFlagsBits = 0;
        v105._object = 0xE000000000000000;
        v37 = sub_1000C5B74(v85, v95, v36, v105, v74);
        v39 = v38;

        *(inited + 112) = v37;
        *(inited + 120) = v39;
        *(inited + 128) = 11;
        v40 = [v19 mainBundle];
        v86._countAndFlagsBits = 0xD000000000000031;
        v75._countAndFlagsBits = 0x80000001000D95D0;
        v86._object = 0x80000001000D96E0;
        v96.value._countAndFlagsBits = 0;
        v96.value._object = 0;
        v41.super.isa = v40;
        v106._countAndFlagsBits = 0;
        v106._object = 0xE000000000000000;
        v42 = sub_1000C5B74(v86, v96, v41, v106, v75);
        v44 = v43;

        *(inited + 136) = v42;
        *(inited + 144) = v44;
        *(inited + 152) = 0;
        v45 = [v19 mainBundle];
        v76._countAndFlagsBits = 0x80000001000D95D0;
        v87._object = (v76._object | 0x8000000000000000);
        v87._countAndFlagsBits = 0xD000000000000039;
        v97.value._countAndFlagsBits = 0;
        v97.value._object = 0;
        v46.super.isa = v45;
        v107._countAndFlagsBits = 0;
        v107._object = 0xE000000000000000;
        v47 = sub_1000C5B74(v87, v97, v46, v107, v76);
        v49 = v48;

        *(inited + 160) = v47;
        *(inited + 168) = v49;
        *(inited + 176) = 1;
        v50 = [v19 mainBundle];
        v88._countAndFlagsBits = 0xD000000000000034;
        v77._countAndFlagsBits = 0x80000001000D95D0;
        v88._object = 0x80000001000D9720;
        v98.value._countAndFlagsBits = 0;
        v98.value._object = 0;
        v51.super.isa = v50;
        v108._countAndFlagsBits = 0;
        v108._object = 0xE000000000000000;
        v52 = sub_1000C5B74(v88, v98, v51, v108, v77);
        v54 = v53;

        *(inited + 184) = v52;
        *(inited + 192) = v54;
        *(inited + 200) = 2;
        v55 = [v19 mainBundle];
        v89._countAndFlagsBits = 0xD000000000000037;
        v78._countAndFlagsBits = 0x80000001000D95D0;
        v89._object = 0x80000001000D9760;
        v99.value._countAndFlagsBits = 0;
        v99.value._object = 0;
        v56.super.isa = v55;
        v109._countAndFlagsBits = 0;
        v109._object = 0xE000000000000000;
        v57 = sub_1000C5B74(v89, v99, v56, v109, v78);
        v59 = v58;

        *(inited + 208) = v57;
        *(inited + 216) = v59;
        *(inited + 224) = 3;
        v60 = [v19 mainBundle];
        v90._countAndFlagsBits = 0xD000000000000038;
        v79._countAndFlagsBits = 0x80000001000D95D0;
        v90._object = 0x80000001000D97A0;
        v100.value._countAndFlagsBits = 0;
        v100.value._object = 0;
        v61.super.isa = v60;
        v110._countAndFlagsBits = 0;
        v110._object = 0xE000000000000000;
        v62 = sub_1000C5B74(v90, v100, v61, v110, v79);
        v64 = v63;

        *(inited + 232) = v62;
        *(inited + 240) = v64;
        *(inited + 248) = 13;
        v65 = [v19 mainBundle];
        v80._countAndFlagsBits = 0x80000001000D95D0;
        v91._object = 0x80000001000D97E0;
        v91._countAndFlagsBits = 0xD000000000000030;
        v101.value._countAndFlagsBits = 0;
        v101.value._object = 0;
        v66.super.isa = v65;
        v111._countAndFlagsBits = 0;
        v111._object = 0xE000000000000000;
        v67 = sub_1000C5B74(v91, v101, v66, v111, v80);
        v69 = v68;

        *(inited + 256) = v67;
        *(inited + 264) = v69;
        v70 = sub_100078E3C(inited);
        swift_setDeallocating();
        sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
        swift_arrayDestroy();
        v11 = sub_10003CC40(v70);

        return v11;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if ((v81 & 0xFE) != 8 && (v81 | 4) == 7)
      {
        v13 = "tee may not add others";
        v14 = 0x80000001000D98F0;
        v4 = [objc_opt_self() mainBundle];
        v5._countAndFlagsBits = 0xD000000000000023;
LABEL_26:
        v71._countAndFlagsBits = v14;
        v5._object = (v13 | 0x8000000000000000);
        goto LABEL_10;
      }

      v16 = "ill have access.";
      v17 = 0x80000001000D9850;
      v4 = [objc_opt_self() mainBundle];
      v5._countAndFlagsBits = 0xD000000000000023;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if ((v81 & 0xFE) != 8 && (v81 | 4) == 7)
      {
        v13 = "tee may add others too";
        v14 = 0x80000001000D9A50;
        v4 = [objc_opt_self() mainBundle];
        v5._countAndFlagsBits = 0xD000000000000021;
        goto LABEL_26;
      }

      v16 = "others (Reminders only)";
      v17 = 0x80000001000D99B0;
      v4 = [objc_opt_self() mainBundle];
      v5._countAndFlagsBits = 0xD000000000000032;
    }

    v71._countAndFlagsBits = v17;
    v5._object = (v16 | 0x8000000000000000);
    goto LABEL_10;
  }

  if (!a2)
  {
    v9 = "This share is public read-only";
    v10 = 0x80000001000D9320;
    v4 = [objc_opt_self() mainBundle];
    v5._countAndFlagsBits = 0xD000000000000026;
LABEL_9:
    v71._countAndFlagsBits = v10;
    v5._object = (v9 | 0x8000000000000000);
LABEL_10:
    v6.value._countAndFlagsBits = 0;
    v6.value._object = 0;
    v7.super.isa = v4;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v4 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  v71._countAndFlagsBits = 0x80000001000D92D0;
  v5._object = 0x80000001000D92B0;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v7.super.isa = v4;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
LABEL_11:
  v11 = sub_1000C5B74(v5, v6, v7, v8, v71);

  return v11;
}

void *sub_100043774(void *a1)
{
  v2 = v1;
  v513 = a1;
  v508 = *v1;
  v460 = sub_10000FEB8(&qword_100117698, &qword_1000CEE38);
  v459 = *(v460 - 8);
  v3 = *(v459 + 64);
  __chkstk_darwin(v460);
  v457 = v361 - v4;
  v462 = sub_10000FEB8(&qword_1001176A0, &qword_1000CEE40);
  v5 = *(*(v462 - 8) + 64);
  __chkstk_darwin(v462);
  v461 = v361 - v6;
  v446 = sub_10000FEB8(&qword_1001176A8, &qword_1000CEE48);
  v445 = *(v446 - 8);
  v7 = *(v445 + 64);
  __chkstk_darwin(v446);
  v443 = v361 - v8;
  v458 = sub_10000FEB8(&qword_1001176B0, &qword_1000CEE50);
  v9 = *(*(v458 - 8) + 64);
  __chkstk_darwin(v458);
  v456 = v361 - v10;
  v442 = sub_10000FEB8(&qword_1001176B8, &qword_1000CEE58);
  v441 = *(v442 - 8);
  v11 = *(v441 + 64);
  __chkstk_darwin(v442);
  v440 = v361 - v12;
  v455 = sub_10000FEB8(&qword_1001176C0, &qword_1000CEE60);
  v13 = *(*(v455 - 8) + 64);
  __chkstk_darwin(v455);
  v454 = v361 - v14;
  v439 = sub_10000FEB8(&qword_1001176C8, &qword_1000CEE68);
  v438 = *(v439 - 8);
  v15 = *(v438 + 64);
  __chkstk_darwin(v439);
  v437 = v361 - v16;
  v448 = sub_10000FEB8(&qword_1001176D0, &qword_1000CEE70);
  v17 = *(*(v448 - 8) + 64);
  __chkstk_darwin(v448);
  v444 = v361 - v18;
  v450 = sub_10000FEB8(&qword_1001176D8, &qword_1000CEE78);
  v449 = *(v450 - 8);
  v19 = *(v449 + 64);
  __chkstk_darwin(v450);
  v447 = v361 - v20;
  v453 = sub_10000FEB8(&unk_1001176E0, &unk_1000CEE80);
  v452 = *(v453 - 8);
  v21 = *(v452 + 64);
  __chkstk_darwin(v453);
  v451 = v361 - v22;
  v436 = sub_10000FEB8(&qword_100116EF0, &qword_1000CD2B0);
  v435 = *(v436 - 8);
  v23 = *(v435 + 64);
  v24 = __chkstk_darwin(v436);
  v433 = v361 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v434 = v361 - v26;
  v425 = sub_10000FEB8(&qword_1001176F0, &qword_1000CEE90);
  v27 = *(*(v425 - 8) + 64);
  __chkstk_darwin(v425);
  v426 = v361 - v28;
  v429 = sub_10000FEB8(&qword_1001176F8, &qword_1000CEE98);
  v428 = *(v429 - 8);
  v29 = *(v428 + 64);
  __chkstk_darwin(v429);
  v427 = v361 - v30;
  v432 = sub_10000FEB8(&unk_100117700, &unk_1000CEEA0);
  v431 = *(v432 - 8);
  v31 = *(v431 + 64);
  __chkstk_darwin(v432);
  v430 = v361 - v32;
  v416 = sub_10000FEB8(&qword_100116998, &unk_1000CC910);
  v415 = *(v416 - 8);
  v33 = *(v415 + 64);
  __chkstk_darwin(v416);
  v414 = v361 - v34;
  v418 = sub_10000FEB8(&qword_100117710, &qword_1000CEEB0);
  v35 = *(*(v418 - 8) + 64);
  __chkstk_darwin(v418);
  v417 = v361 - v36;
  v421 = sub_10000FEB8(&qword_100117718, &qword_1000CEEB8);
  v420 = *(v421 - 8);
  v37 = *(v420 + 64);
  __chkstk_darwin(v421);
  v419 = v361 - v38;
  v424 = sub_10000FEB8(&qword_100117720, &unk_1000CEEC0);
  v423 = *(v424 - 8);
  v39 = *(v423 + 64);
  __chkstk_darwin(v424);
  v422 = v361 - v40;
  v479 = sub_10000FEB8(&qword_100117728, &unk_1000D0B00);
  v497 = *(v479 - 8);
  v41 = *(v497 + 64);
  __chkstk_darwin(v479);
  v477 = v361 - v42;
  v480 = sub_10000FEB8(&qword_100117730, &qword_1000CEED0);
  v43 = *(*(v480 - 8) + 64);
  __chkstk_darwin(v480);
  v478 = v361 - v44;
  v410 = sub_10000FEB8(&qword_100117738, &qword_1000CEED8);
  v409 = *(v410 - 8);
  v45 = *(v409 + 64);
  __chkstk_darwin(v410);
  v408 = v361 - v46;
  v413 = sub_10000FEB8(&unk_100117740, &unk_1000CEEE0);
  v412 = *(v413 - 8);
  v47 = *(v412 + 64);
  __chkstk_darwin(v413);
  v411 = v361 - v48;
  v401 = sub_10000FEB8(&qword_100116EC8, &qword_1000D0AB0);
  v400 = *(v401 - 1);
  v49 = *(v400 + 64);
  __chkstk_darwin(v401);
  v398 = v361 - v50;
  v403 = sub_10000FEB8(&qword_100116ED0, &qword_1000CD290);
  v402 = *(v403 - 8);
  v51 = *(v402 + 64);
  __chkstk_darwin(v403);
  v399 = v361 - v52;
  v406 = sub_10000FEB8(&qword_100116ED8, &qword_1000CD298);
  v405 = *(v406 - 8);
  v53 = *(v405 + 64);
  __chkstk_darwin(v406);
  v404 = v361 - v54;
  v482 = sub_10000FEB8(&unk_100117750, &unk_1000CEEF0);
  v498 = *(v482 - 8);
  v55 = *(v498 + 64);
  v56 = __chkstk_darwin(v482);
  v397 = v361 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v481 = v361 - v58;
  v512 = sub_10000FEB8(&unk_100116EE0, &unk_1000CD2A0);
  v507 = *(v512 - 8);
  v59 = v507[8];
  v60 = __chkstk_darwin(v512);
  v483 = v361 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v499 = v361 - v62;
  v496 = sub_10000FEB8(&qword_100117760, &qword_1000CEF00);
  v393 = *(v496 - 8);
  v63 = *(v393 + 64);
  v64 = __chkstk_darwin(v496);
  v407 = v361 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __chkstk_darwin(v64);
  v495 = v361 - v67;
  __chkstk_darwin(v66);
  v504 = v361 - v68;
  v396 = sub_10000FEB8(&qword_100117768, &qword_1000CEF08);
  v395 = *(v396 - 8);
  v69 = *(v395 + 64);
  __chkstk_darwin(v396);
  v394 = v361 - v70;
  v71 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  v72 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71 - 8);
  v506 = v361 - v73;
  v384 = sub_10000FEB8(&unk_100116E70, &unk_1000CD240);
  v383 = *(v384 - 8);
  v74 = *(v383 + 64);
  __chkstk_darwin(v384);
  v382 = v361 - v75;
  v386 = sub_10000FEB8(&qword_100117780, &qword_1000CEF20);
  v76 = *(*(v386 - 8) + 64);
  __chkstk_darwin(v386);
  v385 = v361 - v77;
  v389 = sub_10000FEB8(&qword_100117788, &qword_1000CEF28);
  v388 = *(v389 - 8);
  v78 = *(v388 + 64);
  __chkstk_darwin(v389);
  v387 = v361 - v79;
  v392 = sub_10000FEB8(&qword_100117790, &qword_1000CEF30);
  v391 = *(v392 - 8);
  v80 = *(v391 + 64);
  __chkstk_darwin(v392);
  v390 = v361 - v81;
  v476 = sub_10000FEB8(&qword_100117798, &qword_1000CEF38);
  v505 = *(v476 - 8);
  v82 = *(v505 + 64);
  v83 = __chkstk_darwin(v476);
  v490 = v361 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v475 = v361 - v85;
  v488 = sub_10000FEB8(&qword_1001177A0, &qword_1000CEF40);
  v501 = *(v488 - 8);
  v86 = *(v501 + 8);
  __chkstk_darwin(v488);
  v486 = v361 - v87;
  v487 = sub_10000FEB8(&qword_1001177A8, &qword_1000CEF48);
  v500 = *(v487 - 8);
  v88 = v500[8];
  __chkstk_darwin(v487);
  v484 = v361 - v89;
  v489 = sub_10000FEB8(&qword_1001177B0, &qword_1000CEF50);
  v465 = *(v489 - 1);
  v90 = *(v465 + 8);
  __chkstk_darwin(v489);
  v380 = v361 - v91;
  v474 = sub_10000FEB8(&qword_1001177B8, &qword_1000CEF58);
  v494 = *(v474 - 8);
  v92 = *(v494 + 64);
  v93 = __chkstk_darwin(v474);
  v464 = v361 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v93);
  v473 = v361 - v95;
  v374 = sub_10000FEB8(&qword_1001177C0, &qword_1000CEF60);
  v373 = *(v374 - 8);
  v96 = *(v373 + 8);
  __chkstk_darwin(v374);
  v371 = v361 - v97;
  v376 = sub_10000FEB8(&qword_1001177C8, &qword_1000CEF68);
  v375 = *(v376 - 8);
  v98 = *(v375 + 64);
  __chkstk_darwin(v376);
  v372 = v361 - v99;
  v379 = sub_10000FEB8(&qword_1001177D0, &qword_1000CEF70);
  v378 = *(v379 - 1);
  v100 = *(v378 + 64);
  __chkstk_darwin(v379);
  v377 = v361 - v101;
  v472 = sub_10000FEB8(&qword_1001177D8, &qword_1000CEF78);
  v493 = *(v472 - 8);
  v102 = *(v493 + 64);
  v103 = __chkstk_darwin(v472);
  v370 = v361 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v103);
  v471 = v361 - v105;
  v470 = sub_10000FEB8(&qword_100116E60, &qword_1000CD230);
  v491 = *(v470 - 1);
  v106 = *(v491 + 64);
  __chkstk_darwin(v470);
  v468 = v361 - v107;
  v469 = sub_10000FEB8(&qword_100116E68, &qword_1000CD238);
  v485 = *(v469 - 8);
  v108 = v485[8];
  __chkstk_darwin(v469);
  v467 = v361 - v109;
  v368 = sub_10000FEB8(&unk_1001177E0, &qword_1000CEF80);
  v367 = *(v368 - 8);
  v110 = *(v367 + 64);
  __chkstk_darwin(v368);
  v366 = v361 - v111;
  v510 = sub_10000FEB8(&qword_100117690, &qword_1000CEE30);
  v503 = *(v510 - 1);
  v112 = *(v503 + 64);
  __chkstk_darwin(v510);
  v502 = v361 - v113;
  v511 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v114 = *(v511 - 8);
  v115 = *(v114 + 64);
  __chkstk_darwin(v511);
  v117 = v361 - v116;
  v118 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  v119 = *(v118 - 8);
  v120 = *(v119 + 64);
  __chkstk_darwin(v118);
  v122 = v361 - v121;
  v123 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v124 = *(*(v123 - 8) + 64);
  v125 = __chkstk_darwin(v123);
  v127 = v361 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v125);
  v129 = v361 - v128;
  if (_swiftEmptyArrayStorage >> 62 && sub_1000C72F4())
  {
    v130 = sub_1000727E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v130 = &_swiftEmptySetSingleton;
  }

  v2[3] = v130;
  v492 = v2 + 3;
  v131 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__showingAlert;
  v132 = type metadata accessor for AlertViewModel(0);
  (*(*(v132 - 8) + 56))(v129, 1, 1, v132);
  sub_100048B54(v129, v127);
  sub_1000C6054();
  sub_100010F24(v129, &qword_100116C80, &unk_1000CE870);
  v133 = v2;
  (*(v119 + 32))(v2 + v131, v122, v118);
  v134 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__showingAlertBool;
  LOBYTE(v516) = 0;
  sub_1000C6054();
  (*(v114 + 32))(v2 + v134, v117, v511);
  v135 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__didTapCopyLink;
  v516 = 0;
  v517 = 0;
  sub_10000FEB8(&unk_1001174D8, &qword_1000CE898);
  v136 = v502;
  sub_1000C6054();
  (*(v503 + 32))(v2 + v135, v136, v510);
  v137 = v513;
  v2[2] = v513;
  v138 = v137[3];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  LODWORD(v135) = v516;
  v139 = v137[2];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v140 = v516;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v141 = v516;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((v135 & v141 & ((~v140 & 3) == 0)) != 0)
  {
    v142 = &off_1001071B0;
  }

  else
  {
    v142 = _swiftEmptyArrayStorage;
  }

  if ((v516 & 0xFE) == 2)
  {
    v143 = v142;
  }

  else
  {
    v143 = &off_100107188;
  }

  v144 = v137[3];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v145 = v516;
  v146 = v137[2];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v147 = v516;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v148 = v516;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((v145 & v148 & ((~v147 & 0xC) == 0)) != 0)
  {
    v149 = &off_100107200;
  }

  else
  {
    v149 = _swiftEmptyArrayStorage;
  }

  if ((v516 & 0xFE) == 2)
  {
    v150 = v149;
  }

  else
  {
    v150 = &off_1001071D8;
  }

  v151 = v137[2];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v152 = v516;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v153 = v516;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v154 = v152 & v153;
  if (v152 & v153)
  {
    v155 = &off_100107228;
  }

  else
  {
    v155 = _swiftEmptyArrayStorage;
  }

  v156 = v137[2];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v157 = v516;
  if (v516)
  {
    v158 = &off_100107250;
  }

  else
  {
    v158 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v514 = v143;

  sub_10000FEB8(&qword_100117470, &qword_1000D5C30);
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  v514 = v150;

  sub_10000FEB8(&qword_100117488, &qword_1000CE880);
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  v514 = v155;

  sub_10000FEB8(&qword_1001174A0, &qword_1000CE888);
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  v514 = v158;

  sub_10000FEB8(&qword_1001174B8, &qword_1000CE890);
  sub_1000C6054();
  swift_endAccess();
  v159 = v143[2];

  if (v159 >= 2)
  {

LABEL_24:

LABEL_25:

    v161 = 1;
    goto LABEL_26;
  }

  v160 = v150[2];

  if (v160 > 1)
  {
    goto LABEL_24;
  }

  v357 = &off_100107228;
  if ((v154 & 1) == 0)
  {
    v357 = _swiftEmptyArrayStorage;
  }

  v358 = v357[2];

  if (v358 >= 2)
  {
    goto LABEL_25;
  }

  if (v157)
  {
    v359 = &off_100107250;
  }

  else
  {
    v359 = _swiftEmptyArrayStorage;
  }

  v360 = v359[2];

  v161 = v360 > 1;
LABEL_26:
  v162 = v513;
  swift_beginAccess();
  LOBYTE(v514) = v161;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v163 = v516 - 6 < 0xFFFFFFFC;
  swift_beginAccess();
  LOBYTE(v514) = v163;
  sub_1000C6054();
  swift_endAccess();
  v164 = v162[2];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v165 = v516;
  v166 = v162[2];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v167 = 8 * v516;
  v168 = v162[3];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v169 = v162[2];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v170 = sub_100042A64(v516);
  if (v170 == 3)
  {
    v171 = 1;
  }

  else
  {
    v171 = v170;
  }

  if (*(v162[2] + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();
  }

  v172 = v133 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAccessPermissionSelected;
  swift_beginAccess();
  LOBYTE(v514) = v165 & 1;
  v173 = v172;
  sub_1000C6054();
  swift_endAccess();
  v174 = v133 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__readWritePermissionSelected;
  swift_beginAccess();
  LOBYTE(v514) = 0x2010000u >> v167;
  v466 = v174;
  sub_1000C6054();
  swift_endAccess();
  v175 = v133 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanAddPeoplePermissionSelected;
  swift_beginAccess();
  LOBYTE(v514) = v171;
  v503 = v175;
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v514) = v171 == 0;
  sub_1000C6054();
  swift_endAccess();
  v176 = v162[3];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v177 = sub_100042DC0(v165 & 1, 0x2010000u >> v167, v171, v516);
  v179 = v178;
  v180 = v133 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__localizedPermissionSummary;
  swift_beginAccess();
  v514 = v177;
  v515 = v179;
  v381 = v180;
  sub_1000C6054();
  swift_endAccess();
  v181 = *(v162[2] + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
  if (v181 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    LOBYTE(v181) = v516;
  }

  v509 = v133;
  v463 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing25GlobalPermissionViewModel__whoCanRequestAccessSelected;
  swift_beginAccess();
  LOBYTE(v514) = (v181 & 1) == 0;
  sub_1000C6054();
  swift_endAccess();
  v182 = v162[2];
  swift_beginAccess();

  v365 = sub_10000FEB8(&unk_1001184A0, &qword_1000CC8A0);
  v183 = v468;
  sub_1000C6064();
  swift_endAccess();

  v363 = sub_10001E490(&unk_100116FD0, &qword_100116E60, &qword_1000CD230);
  v364 = sub_100035290();
  v184 = v467;
  v185 = v470;
  sub_1000C6114();
  v186 = *(v491 + 8);
  v491 += 8;
  v362 = v186;
  v186(v183, v185);
  v361[1] = sub_10001E490(&qword_1001177F0, &qword_100116E68, &qword_1000CD238);
  v187 = v366;
  v188 = v469;
  sub_1000C60D4();
  (v485[1])(v184, v188);
  swift_beginAccess();
  v189 = sub_10000FEB8(&qword_100117650, &qword_1000CEDF0);
  v190 = v471;
  v369 = v189;
  sub_1000C6064();
  swift_endAccess();
  v485 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_10001E490(&qword_1001177F8, &unk_1001177E0, &qword_1000CEF80);
  v191 = v368;
  sub_1000C6134();
  (*(v367 + 8))(v187, v191);
  v192 = v493;
  v193 = v190;
  v194 = v190;
  v195 = v472;
  (*(v493 + 16))(v370, v193, v472);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v196 = *(v192 + 8);
  v493 = v192 + 8;
  v370 = v196;
  (v196)(v194, v195);
  v197 = v162[2];
  swift_beginAccess();

  sub_10000FEB8(&unk_100117800, &unk_1000D0B90);
  v198 = v371;
  sub_1000C6064();
  swift_endAccess();

  v510 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001E490(&unk_100118490, &qword_1001177C0, &qword_1000CEF60);
  sub_100048C1C();
  v199 = v372;
  v200 = v374;
  sub_1000C6114();
  (*(v373 + 1))(v198, v200);
  v502 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_10001E490(&qword_100117818, &qword_1001177C8, &qword_1000CEF68);
  v201 = v377;
  v202 = v376;
  sub_1000C60D4();
  (*(v375 + 8))(v199, v202);
  swift_beginAccess();
  v203 = sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  v204 = v473;
  v376 = v203;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100117820, &qword_1001177D0, &qword_1000CEF70);
  v205 = v204;
  v206 = v379;
  sub_1000C6134();
  (*(v378 + 8))(v201, v206);
  v207 = v494;
  v208 = v204;
  v209 = v474;
  (*(v494 + 16))(v464, v208, v474);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v210 = *(v207 + 8);
  v494 = v207 + 8;
  v379 = v210;
  (v210)(v205, v209);
  v211 = v513;
  v212 = v513[2];
  swift_beginAccess();

  v377 = sub_10000FEB8(&qword_100116990, &unk_1000CF2A0);
  v213 = v486;
  sub_1000C6064();
  swift_endAccess();

  v375 = sub_10001E490(&unk_100117830, &qword_1001177A0, &qword_1000CEF40);
  v374 = sub_100048C70();
  v378 = v173;
  v214 = v484;
  v215 = v488;
  sub_1000C6114();
  v216 = *(v501 + 1);
  v501 += 8;
  v373 = v216;
  v216(v213, v215);
  v372 = sub_10001E490(&qword_100117840, &qword_1001177A8, &qword_1000CEF48);

  v217 = v380;
  v218 = v487;
  sub_1000C60D4();

  v219 = v500[1];
  ++v500;
  v371 = v219;
  (v219)(v214, v218);
  swift_beginAccess();
  v220 = sub_10000FEB8(&qword_100117670, &qword_1000CEE10);
  v221 = v475;
  v464 = v220;
  sub_1000C6064();
  swift_endAccess();
  v368 = sub_10001E490(&qword_100117848, &qword_1001177B0, &qword_1000CEF50);
  v222 = v489;
  sub_1000C6134();
  v367 = *(v465 + 1);
  (v367)(v217, v222);
  v223 = v505;
  v366 = *(v505 + 16);
  v224 = v476;
  (v366)(v490, v221, v476);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v225 = *(v223 + 8);
  v505 = v223 + 8;
  v465 = v225;
  v226 = v221;
  v227 = v221;
  v228 = v224;
  v225(v226, v224);
  v229 = v211[2];
  swift_beginAccess();

  v230 = v486;
  sub_1000C6064();
  swift_endAccess();

  v231 = v484;
  v232 = v488;
  sub_1000C6114();
  v373(v230, v232);

  v233 = v487;
  sub_1000C60D4();

  (v371)(v231, v233);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v234 = v489;
  sub_1000C6134();
  (v367)(v217, v234);
  (v366)(v490, v227, v228);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v465(v227, v228);
  v235 = v513;
  v236 = v513[2];
  swift_beginAccess();

  sub_10000FEB8(&unk_100117850, &qword_1000CC8C0);
  v237 = v382;
  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&unk_100116FB0, &unk_100116E70, &unk_1000CD240);
  sub_100035214();
  v238 = v384;
  sub_1000C6114();
  (*(v383 + 8))(v237, v238);
  v239 = v235[2];
  swift_beginAccess();

  v240 = v468;
  sub_1000C6064();
  swift_endAccess();

  v241 = v470;
  sub_1000C6114();
  v362(v240, v241);
  sub_10001E490(&unk_100116FE0, &qword_100117780, &qword_1000CEF20);
  v242 = v387;
  sub_1000C5F84();
  v470 = objc_opt_self();
  v243 = [v470 mainRunLoop];
  v516 = v243;
  v490 = sub_1000C71A4();
  v244 = *(v490 - 1);
  v489 = *(v244 + 56);
  v491 = v244 + 56;
  v245 = v506;
  (v489)(v506, 1, 1, v490);
  v488 = sub_100010778(0, &qword_100116F80, NSRunLoop_ptr);
  sub_10001E490(&unk_100117870, &qword_100117788, &qword_1000CEF28);
  v487 = sub_10001E2AC();
  v246 = v390;
  v247 = v389;
  sub_1000C6104();
  sub_100010F24(v245, &unk_100117770, &unk_1000CEF10);

  (*(v388 + 8))(v242, v247);
  v248 = swift_allocObject();
  swift_weakInit();
  v249 = swift_allocObject();
  v249[2] = v248;
  v249[3] = v235;
  v249[4] = v508;
  v250 = swift_allocObject();
  *(v250 + 16) = sub_100048D10;
  *(v250 + 24) = v249;
  v486 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001E490(&unk_100117880, &qword_100117790, &qword_1000CEF30);

  v251 = v392;
  sub_1000C6124();

  (*(v391 + 8))(v246, v251);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  v252 = v235[2];
  swift_beginAccess();

  v253 = v499;
  sub_1000C6064();
  swift_endAccess();

  v484 = sub_10001E490(&unk_100116F20, &unk_100116EE0, &unk_1000CD2A0);
  v254 = v504;
  v255 = v512;
  sub_1000C6114();
  v256 = v507[1];
  v500 = v507 + 1;
  v501 = v256;
  (v256)(v253, v255);
  v469 = sub_10001E490(&qword_100117890, &qword_100117760, &qword_1000CEF00);
  v257 = v394;
  v258 = v496;
  sub_1000C60D4();
  (*(v393 + 8))(v254, v258);
  swift_beginAccess();
  v259 = sub_10000FEB8(&unk_100117680, &unk_1000CEE20);
  v260 = v481;
  v393 = v259;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100117898, &qword_100117768, &qword_1000CEF08);
  v261 = v396;
  sub_1000C6134();
  (*(v395 + 8))(v257, v261);
  v262 = v498;
  v263 = v482;
  (*(v498 + 16))(v397, v260, v482);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v264 = *(v262 + 8);
  v498 = v262 + 8;
  v467 = v264;
  (v264)(v260, v263);
  v265 = v513;
  swift_beginAccess();
  sub_10000FEB8(&qword_100116F30, &qword_1000CD630);
  v266 = v265;
  v267 = v398;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100116F38, &qword_100116EC8, &qword_1000D0AB0);
  sub_100035088();
  v268 = v399;
  v269 = v401;
  sub_1000C6114();
  (*(v400 + 8))(v267, v269);
  sub_10001E490(&qword_100116F48, &qword_100116ED0, &qword_1000CD290);
  v270 = v404;
  v271 = v403;
  sub_1000C60D4();
  (*(v402 + 8))(v268, v271);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100116F50, &qword_100116ED8, &qword_1000CD298);
  v272 = v406;
  sub_1000C6134();
  (*(v405 + 8))(v270, v272);
  v273 = v507[2];
  v507 += 2;
  v468 = v273;
  v274 = v512;
  (v273)(v483, v253, v512);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v275 = v274;
  v276 = v501;
  (v501)(v253, v274);
  v277 = v266[3];
  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  sub_1000C6114();
  v276(v253, v275);
  v278 = v266[2];
  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  sub_1000C6114();
  v276(v253, v275);
  v406 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isShareRoot;
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v276(v253, v275);
  v404 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__executionMode;
  swift_beginAccess();
  v405 = sub_10000FEB8(&qword_1001178A8, &unk_1000CF2C0);
  v279 = v477;
  sub_1000C6064();
  swift_endAccess();
  v403 = sub_10001E490(&qword_1001178B0, &qword_100117728, &unk_1000D0B00);
  v402 = sub_100048D84();
  v280 = v479;
  sub_1000C6114();
  v281 = *(v497 + 8);
  v497 += 8;
  v401 = v281;
  (v281)(v279, v280);
  v400 = sub_10001E490(&qword_1001178C0, &qword_100117730, &qword_1000CEED0);
  v282 = v408;
  sub_1000C5FC4();
  v283 = [v470 mainRunLoop];
  v516 = v283;
  v284 = v506;
  (v489)(v506, 1, 1, v490);
  v485 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  sub_10001E490(&qword_1001178C8, &qword_100117738, &qword_1000CEED8);
  v285 = v411;
  v286 = v410;
  sub_1000C6104();
  sub_100010F24(v284, &unk_100117770, &unk_1000CEF10);

  (*(v409 + 8))(v282, v286);
  v287 = swift_allocObject();
  swift_weakInit();
  v288 = swift_allocObject();
  v288[2] = v287;
  v288[3] = v266;
  v288[4] = v508;
  v289 = swift_allocObject();
  *(v289 + 16) = sub_100048DD8;
  *(v289 + 24) = v288;
  sub_10001E490(&unk_1001178D0, &unk_100117740, &unk_1000CEEE0);

  v290 = v413;
  sub_1000C6124();

  (*(v412 + 8))(v285, v290);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  v291 = v266[3];
  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  v292 = v512;
  sub_1000C6114();
  v293 = v501;
  (v501)(v253, v292);
  v294 = v266[2];
  swift_beginAccess();

  sub_10000FEB8(&qword_100116988, &qword_1000CC8A8);
  v295 = v414;
  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&unk_1001178E0, &qword_100116998, &unk_1000CC910);
  sub_10001E3FC();
  v296 = v416;
  sub_1000C6114();
  (*(v415 + 8))(v295, v296);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v297 = v512;
  sub_1000C6114();
  v293(v253, v297);
  swift_beginAccess();
  v298 = v477;
  sub_1000C6064();
  swift_endAccess();
  v299 = v479;
  sub_1000C6114();
  (v401)(v298, v299);
  sub_10001E490(&qword_1001178F0, &qword_100117710, &qword_1000CEEB0);
  v300 = v419;
  sub_1000C5FC4();
  v301 = v470;
  v302 = [v470 mainRunLoop];
  v516 = v302;
  v303 = v506;
  (v489)(v506, 1, 1, v490);
  sub_10001E490(&qword_1001178F8, &qword_100117718, &qword_1000CEEB8);
  v304 = v422;
  v305 = v421;
  sub_1000C6104();
  sub_100010F24(v303, &unk_100117770, &unk_1000CEF10);

  (*(v420 + 8))(v300, v305);
  v306 = swift_allocObject();
  v307 = v509;
  swift_weakInit();
  v308 = swift_allocObject();
  v309 = v508;
  *(v308 + 16) = v306;
  *(v308 + 24) = v309;
  v310 = swift_allocObject();
  *(v310 + 16) = sub_100048E58;
  *(v310 + 24) = v308;
  sub_10001E490(&qword_100117900, &qword_100117720, &unk_1000CEEC0);
  v311 = v424;
  sub_1000C6124();

  (*(v423 + 8))(v304, v311);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v312 = v471;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117908, &qword_1001177D8, &qword_1000CEF78);
  sub_1000423A4();
  v313 = v426;
  v314 = v472;
  sub_1000C6114();
  (v370)(v312, v314);
  swift_beginAccess();
  v315 = v473;
  sub_1000C6064();
  swift_endAccess();
  v316 = v425;
  v317 = *(v425 + 100);
  sub_10001E490(&qword_100117910, &qword_1001177B8, &qword_1000CEF58);
  sub_100042288();
  v318 = v474;
  sub_1000C6114();
  (v379)(v315, v318);
  swift_beginAccess();
  v319 = v475;
  sub_1000C6064();
  swift_endAccess();
  v320 = v316[26];
  sub_10001E490(&qword_100117918, &qword_100117798, &qword_1000CEF38);
  sub_1000424C0();
  v321 = v476;
  sub_1000C6114();
  v465(v319, v321);
  swift_beginAccess();
  v322 = v481;
  sub_1000C6064();
  swift_endAccess();
  v323 = v316[27];
  sub_10001E490(&qword_100117920, &unk_100117750, &unk_1000CEEF0);
  sub_100042618();
  v324 = v482;
  sub_1000C6114();
  (v467)(v322, v324);
  v325 = v513;
  v326 = v513[3];
  swift_beginAccess();

  v327 = v499;
  sub_1000C6064();
  swift_endAccess();

  v328 = v313 + v316[28];
  v329 = v512;
  sub_1000C6114();
  (v501)(v327, v329);
  v330 = [v301 mainRunLoop];
  v516 = v330;
  v331 = v506;
  (v489)(v506, 1, 1, v490);
  sub_10001E490(&qword_100117928, &qword_1001176F0, &qword_1000CEE90);
  v332 = v427;
  sub_1000C6104();
  sub_100010F24(v331, &unk_100117770, &unk_1000CEF10);

  sub_100010F24(v313, &qword_1001176F0, &qword_1000CEE90);
  v333 = swift_allocObject();
  swift_weakInit();

  v334 = swift_allocObject();
  v334[2] = v333;
  v334[3] = v325;
  v334[4] = v508;
  v335 = swift_allocObject();
  *(v335 + 16) = sub_100048EDC;
  *(v335 + 24) = v334;
  sub_10001E490(&qword_100117930, &qword_1001176F8, &qword_1000CEE98);

  v336 = v430;
  v337 = v429;
  sub_1000C60E4();

  (*(v428 + 8))(v332, v337);
  swift_beginAccess();
  sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  v338 = v434;
  sub_1000C6064();
  swift_endAccess();
  v513 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10001E490(&qword_100117938, &unk_100117700, &unk_1000CEEA0);
  v339 = v432;
  sub_1000C6134();
  (*(v431 + 8))(v336, v339);
  v340 = v435;
  v341 = v436;
  (*(v435 + 16))(v433, v338, v436);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (*(v340 + 8))(v338, v341);
  swift_beginAccess();
  sub_10000FEB8(&qword_100117648, &qword_1000CEDE8);
  v342 = v437;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117940, &qword_1001176C8, &qword_1000CEE68);
  sub_100048F38(&qword_100117948, &qword_100117470, &qword_1000D5C30, sub_1000423A4);
  v343 = v439;
  sub_1000C6114();
  (*(v438 + 8))(v342, v343);
  swift_beginAccess();
  sub_10000FEB8(&qword_100117658, &qword_1000CEDF8);
  v344 = v440;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117950, &qword_1001176B8, &qword_1000CEE58);
  sub_100048F38(&qword_100117958, &qword_100117488, &qword_1000CE880, sub_100042288);
  v345 = v442;
  sub_1000C6114();
  (*(v441 + 8))(v344, v345);
  swift_beginAccess();
  sub_10000FEB8(&qword_100117668, &qword_1000CEE08);
  v346 = v443;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117960, &qword_1001176A8, &qword_1000CEE48);
  sub_100048F38(&qword_100117968, &qword_1001174A0, &qword_1000CE888, sub_1000424C0);
  v347 = v446;
  sub_1000C6114();
  (*(v445 + 8))(v346, v347);
  swift_beginAccess();
  sub_10000FEB8(&qword_100117678, &qword_1000CEE18);
  v348 = v457;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117970, &qword_100117698, &qword_1000CEE38);
  sub_100048F38(&qword_100117978, &qword_1001174B8, &qword_1000CE890, sub_100042618);
  v349 = v460;
  sub_1000C6114();
  (*(v459 + 8))(v348, v349);
  sub_10001E490(&qword_100117980, &qword_1001176D0, &qword_1000CEE70);
  sub_10001E490(&qword_100117988, &qword_1001176C0, &qword_1000CEE60);
  sub_10001E490(&qword_100117990, &qword_1001176B0, &qword_1000CEE50);
  sub_10001E490(&qword_100117998, &qword_1001176A0, &qword_1000CEE40);
  v350 = v447;
  sub_1000C5FC4();
  sub_10001E490(&qword_1001179A0, &qword_1001176D8, &qword_1000CEE78);
  v351 = v451;
  v352 = v450;
  sub_1000C60E4();
  (*(v449 + 8))(v350, v352);
  swift_beginAccess();
  v353 = v499;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_1001179A8, &unk_1001176E0, &unk_1000CEE80);
  v354 = v453;
  sub_1000C6134();
  (*(v452 + 8))(v351, v354);
  v355 = v512;
  (v468)(v483, v353, v512);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (v501)(v353, v355);
  return v307;
}

uint64_t sub_100048B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100048C1C()
{
  result = qword_100117810;
  if (!qword_100117810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117810);
  }

  return result;
}

unint64_t sub_100048C70()
{
  result = qword_1001184C0;
  if (!qword_1001184C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001184C0);
  }

  return result;
}

uint64_t sub_100048CD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048D1C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048D54(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_100048D84()
{
  result = qword_1001178B8;
  if (!qword_1001178B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001178B8);
  }

  return result;
}

uint64_t sub_100048DE4(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2], a1[3]);
}

uint64_t sub_100048E20()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048E58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10003FF14();
}

uint64_t sub_100048E60(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 1), a1[16], a1[17]);
}

uint64_t sub_100048E9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100048EDC(char a1, char a2, unsigned __int8 a3, char a4, char a5)
{
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  return sub_10004009C(a1 & 1, a2, a3, a4 & 1, a5);
}

uint64_t sub_100048EF0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1], a1[2], a1[3], a1[4]);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_100048F38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004911C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100049224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000492E0(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004933C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011080;

  return sub_1000412C4(a1, v4, v5, v6);
}

uint64_t sub_1000493F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_100040CF8(a1, v4, v5, v6, v7);
}

uint64_t sub_1000494BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xDu)
  {
  }

  return result;
}

uint64_t sub_100049518(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_10003E918(a1, v4, v5, v6, v7);
}

uint64_t sub_1000495EC(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100049638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100017CBC;

  return sub_10003E14C(a1, v4, v5, v6);
}

void sub_100049760(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v13 = sub_1000C5CD4();
    a4(0, v13);
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_errorRetain();
      v11 = sub_1000C5CD4();
      a4(0, v11);
    }

    else
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_errorRetain();
        v12 = sub_1000C5CD4();
        a4(0, v12);
      }

      else
      {
        a4(a7, 0);
      }
    }
  }
}

void sub_1000498A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_10000FEB8(&qword_100117B08, &qword_1000CF8F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  (*(v12 + 16))(&v27 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  sub_10004B148();
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000CD0E0;
  *(v18 + 32) = a3;
  v19 = a3;
  v28.value._rawValue = v18;
  v28.is_nil = 0;
  v20.super.super.super.super.isa = sub_1000C70B4(v28, v29).super.super.super.super.isa;
  [(objc_class *)v20.super.super.super.super.isa setQualityOfService:25];
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;

  sub_1000C70C4();

  sub_1000C70D4();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = sub_10004B258;
  v23[4] = v17;
  v23[5] = v22;
  v23[6] = v19;
  v24 = v19;

  sub_1000C70A4();
  v25 = &selRef_sharedCloudDatabase;
  if ((a4 & 0x10000000000) != 0)
  {
    v25 = &selRef_privateCloudDatabase;
  }

  v26 = [a7 *v25];
  [v26 addOperation:v20.super.super.super.super.isa];
}

uint64_t sub_100049B8C(void *a1, void *a2)
{
  if (!a1 || a2)
  {
    sub_1000100B0();
    swift_allocError();
    *v5 = 0xD000000000000029;
    *(v5 + 8) = 0x80000001000D78B0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = a2;
    *(v5 + 40) = 4;
    v6 = a2;
    sub_10000FEB8(&qword_100117B08, &qword_1000CF8F8);
    return sub_1000C6EE4();
  }

  else
  {
    v3 = a1;
    sub_10000FEB8(&qword_100117B08, &qword_1000CF8F8);
    return sub_1000C6EF4();
  }
}

void sub_100049C64(int a1, id a2, char a3, void (*a4)(void))
{
  if (a3)
  {
    v7 = sub_1000C5CD4();
    (a4)(0, 0, 0);
  }

  else
  {
    v6 = [a2 share];
    v7 = [a2 containerID];
    a4(v6);
  }
}

uint64_t sub_100049D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000FEB8(&qword_100117B20, &qword_1000CF938);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_10004B49C(a3, a4, sub_10004BE10, v13);
}

uint64_t sub_100049E84(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 && a2 && a3 && !a4)
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    sub_10000FEB8(&qword_100117B20, &qword_1000CF938);
    return sub_1000C6EF4();
  }

  else
  {
    sub_1000100B0();
    swift_allocError();
    *v11 = 0xD00000000000002DLL;
    *(v11 + 8) = 0x80000001000DA250;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = a4;
    *(v11 + 40) = 5;
    v12 = a4;
    sub_10000FEB8(&qword_100117B20, &qword_1000CF938);
    return sub_1000C6EE4();
  }
}

void sub_100049F78(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v9 = sub_10000FEB8(&qword_100117AF8, &unk_1000CF8E8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  (*(v10 + 16))(&v23 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_10004B148();
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000CD0E0;
  *(v16 + 32) = [a3 recordID];
  v24.value._rawValue = _swiftEmptyArrayStorage;
  v24.is_nil = v16;
  v17.super.super.super.super.isa = sub_1000C70B4(v24, v25).super.super.super.super.isa;
  [(objc_class *)v17.super.super.super.super.isa setQualityOfService:25];
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;

  sub_1000C70C4();

  sub_1000C70D4();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = sub_10004B0CC;
  v20[4] = v15;
  v20[5] = v19;

  sub_1000C70A4();
  v21 = &selRef_privateCloudDatabase;
  if ((a4 & 1) == 0)
  {
    v21 = &selRef_sharedCloudDatabase;
  }

  v22 = [a5 *v21];
  [v22 addOperation:v17.super.super.super.super.isa];
}

uint64_t sub_10004A270(void *a1)
{
  if (a1)
  {
    sub_1000100B0();
    swift_allocError();
    *v2 = 0xD000000000000030;
    *(v2 + 8) = 0x80000001000D77E0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = a1;
    *(v2 + 40) = 8;
    v3 = a1;
    sub_10000FEB8(&qword_100117AF8, &unk_1000CF8E8);
    return sub_1000C6EE4();
  }

  else
  {
    sub_10000FEB8(&qword_100117AF8, &unk_1000CF8E8);
    return sub_1000C6EF4();
  }
}

uint64_t sub_10004A344(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_beginAccess();
    v6 = *(a4 + 16);
    *(a4 + 16) = a2;
    swift_errorRetain();
  }

  return result;
}

void sub_10004A3AC(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = sub_1000C5CD4();
    a4();
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_errorRetain();
      v9 = sub_1000C5CD4();
      a4();
    }

    else
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_errorRetain();
        v10 = sub_1000C5CD4();
        a4();
      }

      else
      {
        (a4)(0);
      }
    }
  }
}

uint64_t sub_10004A4C0(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_1000C5F74();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = sub_10000FEB8(&qword_100117B10, &qword_1000CF920);
  v2[23] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_10004A5C8, 0, 0);
}

uint64_t sub_10004A5C8()
{
  v1 = v0[25];
  v2 = v0[19];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_10004A6E4;
  v3 = swift_continuation_init();
  v0[17] = sub_10000FEB8(&qword_100117B18, &unk_1000CF928);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10004B348;
  v0[13] = &unk_100108F08;
  v0[14] = v3;
  [v2 fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10004A6E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_10004A9E0;
  }

  else
  {
    v3 = sub_10004A7F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004A7F4()
{
  v23 = v0;
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  sub_10004BD8C(v0[25], v1);
  v5 = (v1 + *(v2 + 48));
  v6 = *v5;
  v7 = v5[1];
  v8 = sub_1000C5C54();
  (*(*(v8 - 8) + 32))(v4, v1, v8);
  sub_1000C5F54();

  v9 = sub_1000C5F64();
  v10 = sub_1000C6FF4();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100071844(v6, v7, &v22);
    _os_log_impl(&_mh_execute_header, v9, v10, "Username: %s", v15, 0xCu);
    sub_100010544(v16);
  }

  (*(v13 + 8))(v12, v14);
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[22];

  v20 = v0[1];

  return v20(v6, v7);
}

uint64_t sub_10004A9E0()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_10004AA74(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_10000FEB8(&qword_100117B10, &qword_1000CF920);
  v1[19] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10004AB20, 0, 0);
}

uint64_t sub_10004AB20()
{
  v1 = v0[21];
  v2 = v0[18];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_10004AC3C;
  v3 = swift_continuation_init();
  v0[17] = sub_10000FEB8(&qword_100117B18, &unk_1000CF928);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10004B348;
  v0[13] = &unk_100108EE0;
  v0[14] = v3;
  [v2 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10004AC3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_10004AE20;
  }

  else
  {
    v3 = sub_10004AD4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004AD4C()
{
  v1 = v0[20];
  v2 = v0[19];
  sub_10004BD8C(v0[21], v1);
  v3 = (v1 + *(v2 + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_1000C5C54();
  (*(*(v6 - 8) + 8))(v1, v6);

  v7 = v0[1];

  return v7(v4, v5);
}

uint64_t sub_10004AE20()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_10004AEA0()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18CloudKitOperations__ckSourceAppBundleID;
  v5 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudKitOperations()
{
  result = qword_1001179E8;
  if (!qword_1001179E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004AFB4()
{
  sub_10004B054();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10004B054()
{
  if (!qword_1001179F8)
  {
    sub_100010624(&qword_100116310, &qword_1000CBBC0);
    v0 = sub_1000C60B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1001179F8);
    }
  }
}

uint64_t sub_10004B0CC(void *a1)
{
  v2 = *(*(sub_10000FEB8(&qword_100117AF8, &unk_1000CF8E8) - 8) + 80);

  return sub_10004A270(a1);
}

unint64_t sub_10004B148()
{
  result = qword_100117B00;
  if (!qword_100117B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100117B00);
  }

  return result;
}

uint64_t sub_10004B194()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B1EC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004B258(void *a1, void *a2)
{
  v4 = *(*(sub_10000FEB8(&qword_100117B08, &qword_1000CF8F8) - 8) + 80);

  return sub_100049B8C(a1, a2);
}

uint64_t sub_10004B2E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004B348(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_10000FEB8(&qword_100117B10, &qword_1000CF920);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = *sub_100011818((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v11 = swift_allocError();
    *v12 = a4;
    v13 = a4;

    return _swift_continuation_throwingResumeWithError(v10, v11);
  }

  else
  {
    sub_1000C5C34();
    v14 = &v9[*(v6 + 48)];
    *v14 = sub_1000C6D84();
    v14[1] = v15;
    sub_10004BD8C(v9, *(*(v10 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

void sub_10004B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:a2];
  }

  else
  {
    v8 = objc_allocWithZone(CKContainerID);
    v9 = sub_1000C6D44();
    v10 = [v8 initWithContainerIdentifier:v9 environment:1];

    v7 = [objc_allocWithZone(CKContainer) initWithContainerID:v10];
  }

  sub_10000FEB8(&qword_100117B28, &unk_1000CF940);
  v11 = sub_1000C5D84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000CB170;
  (*(v12 + 16))(v15 + v14, a1, v11);
  v16 = objc_allocWithZone(CKFetchShareMetadataOperation);
  v20 = v7;
  isa = sub_1000C6E84().super.isa;

  v18 = [v16 initWithShareURLs:isa];

  [v18 setShouldFetchRootRecord:0];
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;

  sub_1000C7104();
  [v20 addOperation:v18];
}

uint64_t sub_10004B70C(uint64_t a1)
{
  v1[6] = a1;
  v3 = sub_1000C5C54();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v1[9] = v6;
  v1[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[11] = v7;
  *v7 = v1;
  v7[1] = sub_10004B820;

  return sub_10004A4C0(v6, a1);
}

uint64_t sub_10004B820(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[11];
  v9 = *v3;
  v5[12] = a2;
  v5[13] = v2;

  if (v2)
  {
    v7 = sub_10004BC84;
  }

  else
  {
    v7 = sub_10004B93C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10004B93C()
{
  (*(v0[8] + 32))(v0[10], v0[9], v0[7]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10004B9E8;
  v2 = v0[6];

  return sub_10004AA74(v2);
}

uint64_t sub_10004B9E8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v9 = v6[12];

    v10 = sub_10004BCF0;
  }

  else
  {
    v11 = v6[3];
    v6[16] = a2;
    v6[17] = a1;
    v6[18] = v11;
    v10 = sub_10004BB2C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10004BB2C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v18._object = 0x80000001000D7150;
  v18._countAndFlagsBits = 0xD000000000000017;
  if (sub_1000C6E34(v18))
  {
    v1 = v2;
    v3 = v4;
  }

  v9 = objc_opt_self();
  v10 = sub_1000C5C24();
  v11 = [v9 localizedStringFromPersonNameComponents:v10 style:2 options:0];

  v12 = sub_1000C6D84();
  v14 = v13;

  (*(v8 + 8))(v6, v7);

  v15 = v0[1];

  return v15(v12, v14, v1, v3);
}

uint64_t sub_10004BC84()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004BCF0()
{
  (*(v0[8] + 8))(v0[10], v0[7]);
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004BD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100117B10, &qword_1000CF920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004BE10(void *a1, void *a2, void *a3, void *a4)
{
  v8 = *(*(sub_10000FEB8(&qword_100117B20, &qword_1000CF938) - 8) + 80);

  return sub_100049E84(a1, a2, a3, a4);
}

uint64_t sub_10004BEB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004BF18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_10000FEB8(&qword_100116A28, &qword_1000CCC40);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_10004C0D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v13 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_10000FEB8(&qword_100116A28, &qword_1000CCC40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for PersonInfoView()
{
  result = qword_100117B98;
  if (!qword_100117B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004C2BC()
{
  sub_10004C40C();
  if (v0 <= 0x3F)
  {
    sub_10004C464();
    if (v1 <= 0x3F)
    {
      sub_10004C4F8(319, &qword_100117BC0, &qword_100117018, &qword_1000CD830, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10004C4F8(319, &qword_100117BC8, &unk_100117BD0, qword_1000CF980, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10004C4F8(319, &qword_100116A98, &qword_100116A20, &qword_1000CCB90, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10004C40C()
{
  if (!qword_100117BA8)
  {
    sub_1000C62E4();
    v0 = sub_1000C6214();
    if (!v1)
    {
      atomic_store(v0, &qword_100117BA8);
    }
  }
}

void sub_10004C464()
{
  if (!qword_100117BB0)
  {
    type metadata accessor for PersonInfoViewModel();
    sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel);
    v0 = sub_1000C6244();
    if (!v1)
    {
      atomic_store(v0, &qword_100117BB0);
    }
  }
}

void sub_10004C4F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100010624(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10004C578@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v108 = sub_10000FEB8(&qword_100117C10, &qword_1000CF9E0);
  v93 = *(v108 - 8);
  v1 = *(v93 + 64);
  __chkstk_darwin(v108);
  v109 = &v89 - v2;
  v104 = sub_10000FEB8(&qword_100117C18, &qword_1000CF9E8);
  v3 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v106 = &v89 - v4;
  v102 = sub_1000C65B4();
  v101 = *(v102 - 8);
  v5 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10000FEB8(&qword_100117C20, &qword_1000CF9F0);
  v90 = *(v103 - 8);
  v7 = *(v90 + 64);
  __chkstk_darwin(v103);
  v94 = &v89 - v8;
  v105 = sub_10000FEB8(&qword_100117C28, &qword_1000CF9F8);
  v91 = *(v105 - 8);
  v9 = *(v91 + 64);
  __chkstk_darwin(v105);
  v95 = &v89 - v10;
  v96 = sub_1000C6694();
  v97 = *(v96 - 8);
  v11 = *(v97 + 64);
  __chkstk_darwin(v96);
  v89 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000FEB8(&qword_100117C30, &qword_1000CFA00);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v89 - v16;
  v18 = sub_10000FEB8(&unk_100117BD0, qword_1000CF980);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v92 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v89 - v23;
  __chkstk_darwin(v22);
  v110 = &v89 - v25;
  v111 = sub_10000FEB8(&qword_100117C38, &qword_1000CFA08);
  v99 = *(v111 - 8);
  v26 = *(v99 + 64);
  __chkstk_darwin(v111);
  v28 = &v89 - v27;
  v29 = objc_opt_self();
  v30 = [v29 mainBundle];
  v87._countAndFlagsBits = 0x80000001000DA280;
  v120._countAndFlagsBits = 0x4D2065766F6D6552;
  v120._object = 0xE900000000000065;
  v122.value._countAndFlagsBits = 0;
  v122.value._object = 0;
  v31.super.isa = v30;
  v124._countAndFlagsBits = 0;
  v124._object = 0xE000000000000000;
  v32 = sub_1000C5B74(v120, v122, v31, v124, v87);
  v34 = v33;

  v35 = [v29 mainBundle];
  v88._countAndFlagsBits = 0x80000001000DA2B0;
  v121._countAndFlagsBits = 0x412065766F6D6552;
  v121._object = 0xED00007373656363;
  v36 = v24;
  v37 = v17;
  v123.value._countAndFlagsBits = 0;
  v123.value._object = 0;
  v38.super.isa = v35;
  v125._countAndFlagsBits = 0;
  v125._object = 0xE000000000000000;
  v39 = sub_1000C5B74(v121, v123, v38, v125, v88);
  v41 = v40;

  v42 = v98;
  v113 = v98;
  v114 = v32;
  v115 = v34;
  v116 = v39;
  v117 = v41;
  sub_10000FEB8(&qword_100117C40, &unk_1000CFA10);
  v43 = v28;
  v44 = v96;
  sub_10001E490(&qword_100117C48, &qword_100117C40, &unk_1000CFA10);
  v45 = v110;
  sub_1000C6864();

  v46 = v42 + *(type metadata accessor for PersonInfoView() + 28);
  sub_1000A36E0(v45);
  v47 = v97;
  (*(v97 + 104))(v36, enum case for UserInterfaceSizeClass.regular(_:), v44);
  (*(v47 + 56))(v36, 0, 1, v44);
  v48 = *(v14 + 56);
  sub_100017574(v45, v37, &unk_100117BD0, qword_1000CF980);
  sub_100017574(v36, v37 + v48, &unk_100117BD0, qword_1000CF980);
  v49 = *(v47 + 48);
  v50 = v49(v37, 1, v44);
  v112 = v43;
  if (v50 == 1)
  {
    sub_100010F24(v36, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v45, &unk_100117BD0, qword_1000CF980);
    v51 = v49(v37 + v48, 1, v44);
    v52 = v111;
    if (v51 == 1)
    {
      sub_100010F24(v37, &unk_100117BD0, qword_1000CF980);
LABEL_9:
      sub_1000C6774();
      v71 = sub_10001E490(&qword_100117C50, &qword_100117C38, &qword_1000CFA08);
      v110 = v71;
      sub_1000C6934();
      sub_1000C65D4();
      v72 = sub_1000C68C4();
      v74 = v73;
      v76 = v75;
      v77 = v101;
      v78 = v100;
      v79 = v102;
      (*(v101 + 104))(v100, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v102);
      v118 = v111;
      v119 = v71;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v81 = v103;
      v82 = v94;
      sub_1000C6954();
      sub_1000500D8(v72, v74, v76 & 1);

      (*(v77 + 8))(v78, v79);
      v52 = v111;
      (*(v90 + 8))(v82, v81);
      v83 = v91;
      v84 = v105;
      v85 = v95;
      (*(v91 + 16))(v106, v95, v105);
      swift_storeEnumTagMultiPayload();
      v118 = v81;
      v119 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v118 = v52;
      v119 = v110;
      swift_getOpaqueTypeConformance2();
      sub_1000C6624();
      (*(v83 + 8))(v85, v84);
      return (*(v99 + 8))(v112, v52);
    }

    goto LABEL_6;
  }

  v53 = v92;
  sub_100017574(v37, v92, &unk_100117BD0, qword_1000CF980);
  if (v49(v37 + v48, 1, v44) == 1)
  {
    sub_100010F24(v36, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v110, &unk_100117BD0, qword_1000CF980);
    (*(v47 + 8))(v53, v44);
    v52 = v111;
LABEL_6:
    sub_100010F24(v37, &qword_100117C30, &qword_1000CFA00);
    goto LABEL_7;
  }

  v67 = v37 + v48;
  v68 = v89;
  (*(v47 + 32))(v89, v67, v44);
  sub_1000503E4(&qword_100117C58, &type metadata accessor for UserInterfaceSizeClass);
  v69 = sub_1000C6D34();
  v70 = *(v47 + 8);
  v70(v68, v44);
  sub_100010F24(v36, &unk_100117BD0, qword_1000CF980);
  sub_100010F24(v110, &unk_100117BD0, qword_1000CF980);
  v70(v53, v44);
  sub_100010F24(v37, &unk_100117BD0, qword_1000CF980);
  v52 = v111;
  if (v69)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1000C65D4();
  v54 = sub_1000C68C4();
  v56 = v55;
  v58 = v57;
  v59 = v101;
  v60 = v100;
  v61 = v102;
  (*(v101 + 104))(v100, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v102);
  v62 = sub_10001E490(&qword_100117C50, &qword_100117C38, &qword_1000CFA08);
  sub_1000C6954();
  sub_1000500D8(v54, v56, v58 & 1);

  (*(v59 + 8))(v60, v61);
  v63 = v93;
  v64 = v108;
  v65 = v109;
  (*(v93 + 16))(v106, v109, v108);
  swift_storeEnumTagMultiPayload();
  v118 = v52;
  v119 = v62;
  v66 = swift_getOpaqueTypeConformance2();
  v118 = v103;
  v119 = v66;
  swift_getOpaqueTypeConformance2();
  v118 = v52;
  v119 = v62;
  swift_getOpaqueTypeConformance2();
  sub_1000C6624();
  (*(v63 + 8))(v65, v64);
  return (*(v99 + 8))(v112, v52);
}

uint64_t sub_10004D354@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a4;
  v67 = a5;
  v64 = a2;
  v65 = a3;
  v76 = a6;
  v7 = sub_10000FEB8(&qword_100117C60, &qword_1000D6440);
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  __chkstk_darwin(v7);
  v63 = &v62 - v9;
  v10 = sub_10000FEB8(&qword_100117C68, &qword_1000CFA20);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v75 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v74 = (&v62 - v14);
  v15 = type metadata accessor for PersonInfoView();
  v16 = v15 - 8;
  v93 = *(v15 - 8);
  v17 = *(v93 + 64);
  v18 = __chkstk_darwin(v15);
  v91 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v92 = &v62 - v19;
  v20 = sub_10000FEB8(&qword_100117C70, &qword_1000CFA28);
  v103 = *(v20 - 8);
  v104 = v20;
  v21 = v103[8];
  v22 = __chkstk_darwin(v20);
  v102 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v62 - v24;
  v107 = 0;
  LOBYTE(v108) = 0;
  v77 = a1;
  v105 = a1;
  sub_10000FEB8(&qword_100117C78, &qword_1000CFA30);
  sub_10001E490(&qword_100117C80, &qword_100117C78, &qword_1000CFA30);
  v101 = v25;
  sub_1000C6C04();
  LOBYTE(v107) = 1;
  sub_1000C6BD4();
  v99 = v171;
  v100 = v170;
  v98 = v172;
  v26 = a1 + *(v16 + 28);
  v28 = *v26;
  v27 = *(v26 + 1);
  v29 = v26[16];
  v30 = type metadata accessor for PersonInfoViewModel();
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel);
  v68 = v30;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v97 = v107;
  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v95 = v168;
  v96 = v167;
  v94 = v169;
  v31 = v77;
  v32 = v92;
  sub_1000501FC(v77, v92);
  v33 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v93 = swift_allocObject();
  sub_10005026C(v32, v93 + v33);
  v34 = v31;
  v35 = v91;
  sub_1000501FC(v34, v91);
  v92 = swift_allocObject();
  sub_10005026C(v35, v92 + v33);
  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v91 = v164;
  v71 = v165;
  v70 = v166;
  LOBYTE(v107) = 1;
  sub_1000C6BD4();
  v89 = v162;
  v90 = v161;
  v88 = v163;
  v69 = v29;
  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v86 = v159;
  v87 = v158;
  v85 = v160;
  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v36 = v107;
  v37 = v108;
  v38 = v109;
  swift_getKeyPath();
  v106[0] = v36;
  v106[1] = v37;
  v106[2] = v38;
  sub_10000FEB8(&qword_100117C98, &qword_1000CFB58);
  sub_1000C6BA4();

  v83 = v156;
  v84 = v155;
  v82 = v157;

  type metadata accessor for SharingModel();
  sub_1000503E4(&qword_100117158, type metadata accessor for SharingModel);
  v39 = sub_1000C6404();
  v78 = v40;
  v79 = v39;
  v152 = 1;
  sub_1000C6AD4();
  v80 = v153;
  v81 = v154;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((v107 & 1) != 0 || (sub_1000C6224(), swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , v41 = , v107 == 1))
  {
    __chkstk_darwin(v41);
    v43 = v64;
    v42 = v65;
    *(&v62 - 6) = v77;
    *(&v62 - 5) = v43;
    *(&v62 - 4) = v42;
    v44 = v67;
    *(&v62 - 3) = v66;
    *(&v62 - 2) = v44;
    sub_10000FEB8(&qword_100117CA8, &qword_1000CFBF8);
    sub_1000505FC();
    v45 = v63;
    sub_1000C6C14();
    v46 = v72;
    v47 = v74;
    v48 = v45;
    v49 = v73;
    (*(v72 + 32))(v74, v48, v73);
    v50 = 0;
  }

  else
  {
    v50 = 1;
    v49 = v73;
    v47 = v74;
    v46 = v72;
  }

  (*(v46 + 56))(v47, v50, 1, v49);
  v51 = v102;
  v52 = v103[2];
  v53 = v104;
  v52(v102, v101, v104);
  v54 = v75;
  sub_100017574(v47, v75, &qword_100117C68, &qword_1000CFA20);
  v55 = v76;
  v52(v76, v51, v53);
  v56 = sub_10000FEB8(&qword_100117CA0, &qword_1000CFBF0);
  v57 = *(v56 + 48);
  v106[0] = v79;
  v106[1] = v78;
  v106[2] = _swiftEmptyArrayStorage;
  v106[3] = v100;
  v106[4] = v99;
  LOBYTE(v106[5]) = v98;
  *(&v106[5] + 1) = v181[0];
  HIDWORD(v106[5]) = *(v181 + 3);
  v106[6] = 0;
  v106[7] = 0;
  v106[8] = v97;
  v106[9] = v96;
  v106[10] = v95;
  LOBYTE(v106[11]) = v94;
  HIDWORD(v106[11]) = *&v180[3];
  *(&v106[11] + 1) = *v180;
  v77 = sub_1000502D0;
  v106[12] = sub_1000502D0;
  v106[13] = v93;
  v106[14] = _swiftEmptyArrayStorage;
  LOBYTE(v106[15]) = 0;
  *(&v106[15] + 1) = *v179;
  HIDWORD(v106[15]) = *&v179[3];
  v74 = sub_1000502E8;
  v106[16] = sub_1000502E8;
  v106[17] = v92;
  v106[18] = _swiftEmptyArrayStorage;
  LOBYTE(v106[19]) = 0;
  *(&v106[19] + 1) = *v178;
  HIDWORD(v106[19]) = *&v178[3];
  v73 = nullsub_2;
  HIDWORD(v106[24]) = *&v177[3];
  *(&v106[24] + 1) = *v177;
  HIDWORD(v106[27]) = *&v176[3];
  *(&v106[27] + 1) = *v176;
  HIDWORD(v106[30]) = *&v175[3];
  *(&v106[30] + 1) = *v175;
  *(&v106[33] + 1) = *v174;
  *(&v106[34] + 1) = *v173;
  HIDWORD(v106[33]) = *&v174[3];
  HIDWORD(v106[34]) = *&v173[3];
  v106[20] = nullsub_2;
  v106[21] = 0;
  v106[22] = v91;
  v58 = v71;
  v106[23] = v71;
  LOBYTE(v52) = v70;
  LOBYTE(v106[24]) = v70;
  v106[25] = v90;
  v106[26] = v89;
  LOBYTE(v106[27]) = v88;
  v106[28] = v87;
  v106[29] = v86;
  LOBYTE(v106[30]) = v85;
  v106[31] = v84;
  v106[32] = v83;
  LOBYTE(v106[33]) = v82;
  LOBYTE(v106[34]) = v80;
  v106[35] = v81;
  memcpy((v55 + v57), v106, 0x120uLL);
  sub_100017574(v54, v55 + *(v56 + 64), &qword_100117C68, &qword_1000CFA20);
  sub_10005051C(v106, &v107);
  sub_100010F24(v47, &qword_100117C68, &qword_1000CFA20);
  v59 = v104;
  v60 = v103[1];
  v60(v101, v104);
  sub_100010F24(v54, &qword_100117C68, &qword_1000CFA20);
  v107 = v79;
  v108 = v78;
  v109 = _swiftEmptyArrayStorage;
  v110 = v100;
  v111 = v99;
  v112 = v98;
  *v113 = v181[0];
  *&v113[3] = *(v181 + 3);
  v115 = 0;
  v114 = 0;
  v116 = v97;
  v117 = v96;
  v118 = v95;
  v119 = v94;
  *&v120[3] = *&v180[3];
  *v120 = *v180;
  v121 = v77;
  v122 = v93;
  v123 = _swiftEmptyArrayStorage;
  v124 = 0;
  *v125 = *v179;
  *&v125[3] = *&v179[3];
  v126 = v74;
  v127 = v92;
  v128 = _swiftEmptyArrayStorage;
  v129 = 0;
  *v130 = *v178;
  *&v130[3] = *&v178[3];
  v131 = v73;
  v132 = 0;
  v133 = v91;
  v134 = v58;
  v135 = v52;
  *&v136[3] = *&v177[3];
  *v136 = *v177;
  v137 = v90;
  v138 = v89;
  v139 = v88;
  *&v140[3] = *&v176[3];
  *v140 = *v176;
  v141 = v87;
  v142 = v86;
  v143 = v85;
  *&v144[3] = *&v175[3];
  *v144 = *v175;
  v145 = v84;
  v146 = v83;
  v147 = v82;
  *v148 = *v174;
  *&v148[3] = *&v174[3];
  v149 = v80;
  *v150 = *v173;
  *&v150[3] = *&v173[3];
  v151 = v81;
  sub_100050578(&v107);
  return (v60)(v102, v59);
}

uint64_t sub_10004E0BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = sub_1000C65C4();
  LOBYTE(v68) = 1;
  sub_10004E774(a1, &v55);
  v82 = *&v56[48];
  v83 = *&v56[64];
  v84 = *&v56[80];
  v78 = v55;
  v79 = *v56;
  v81 = *&v56[32];
  v80 = *&v56[16];
  v85[0] = v55;
  v85[1] = *v56;
  v85[2] = *&v56[16];
  v85[3] = *&v56[32];
  v85[4] = *&v56[48];
  v85[5] = *&v56[64];
  v85[6] = *&v56[80];
  sub_100017574(&v78, &v45, &qword_100117CD8, &qword_1000CFCB0);
  sub_100010F24(v85, &qword_100117CD8, &qword_1000CFCB0);
  *&v77[55] = v81;
  *&v77[71] = v82;
  *&v77[87] = v83;
  *&v77[103] = v84;
  *&v77[7] = v78;
  *&v77[23] = v79;
  *&v77[39] = v80;
  v3 = a1;
  v33 = v68;
  v4 = a1 + *(type metadata accessor for PersonInfoView() + 20);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  type metadata accessor for PersonInfoViewModel();
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel);
  v8 = sub_1000C6224();
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v31 = v3;
  if (v11)
  {
    v12 = sub_1000C6604();
    LOBYTE(v55) = 1;
    sub_10004ED44(v3, &v45);
    *&v67[7] = v45;
    *&v67[23] = *v46;
    *&v67[39] = *&v46[16];
    *&v67[55] = *&v46[32];
    v13 = v55;
    v14 = sub_1000C67B4();
    sub_1000C6204();
    *&v56[17] = *&v67[16];
    *&v56[33] = *&v67[32];
    *&v56[49] = *&v67[48];
    v55 = v12;
    v56[0] = v13;
    *&v56[64] = *&v67[63];
    *&v56[1] = *v67;
    v56[72] = v14;
    *&v56[80] = v15;
    *&v56[88] = v16;
    *&v56[96] = v17;
    *&v56[104] = v18;
    v56[112] = 0;
    nullsub_2(&v55);
    v74 = *&v56[80];
    v75 = *&v56[96];
    v76 = v56[112];
    v70 = *&v56[16];
    v71 = *&v56[32];
    v73 = *&v56[64];
    v72 = *&v56[48];
    v69 = *v56;
    v68 = v55;
  }

  else
  {
    sub_100050DF0(&v68);
  }

  v19 = sub_1000C6224();
  v20 = *(v19 + 88);
  v21 = *(v19 + 96);

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = sub_1000C6604();
    LOBYTE(v55) = 1;
    sub_10004EFB0(v31, &v45);
    *&v57[7] = v45;
    *&v57[23] = *v46;
    *&v57[39] = *&v46[16];
    *&v57[55] = *&v46[32];
    v24 = v55;
    v25 = sub_1000C67B4();
    sub_1000C6204();
    *&v56[17] = *&v57[16];
    *&v56[33] = *&v57[32];
    *&v56[49] = *&v57[48];
    v55 = v23;
    v56[0] = v24;
    *&v56[64] = *&v57[63];
    *&v56[1] = *v57;
    v56[72] = v25;
    *&v56[80] = v26;
    *&v56[88] = v27;
    *&v56[96] = v28;
    *&v56[104] = v29;
    v56[112] = 0;
    nullsub_2(&v55);
    v64 = *&v56[80];
    v65 = *&v56[96];
    v66 = v56[112];
    v60 = *&v56[16];
    v61 = *&v56[32];
    v63 = *&v56[64];
    v62 = *&v56[48];
    v59 = *v56;
    v58 = v55;
  }

  else
  {
    sub_100050DF0(&v58);
  }

  v42 = v74;
  v43 = v75;
  v38 = v70;
  v39 = v71;
  v40 = v72;
  v41 = v73;
  v36 = v68;
  v37 = v69;
  v51[6] = v64;
  v51[7] = v65;
  v51[2] = v60;
  v51[3] = v61;
  v51[5] = v63;
  v51[4] = v62;
  v51[1] = v59;
  v51[0] = v58;
  v45 = v34;
  v46[0] = v33;
  *&v46[1] = *v77;
  *&v46[17] = *&v77[16];
  *&v46[81] = *&v77[80];
  *&v46[65] = *&v77[64];
  *&v46[97] = *&v77[96];
  *&v46[33] = *&v77[32];
  *&v46[49] = *&v77[48];
  __src[6] = *&v46[80];
  __src[7] = *&v46[96];
  __src[2] = *&v46[16];
  __src[3] = *&v46[32];
  __src[4] = *&v46[48];
  __src[5] = *&v46[64];
  __src[0] = v34;
  __src[1] = *v46;
  v47[6] = v74;
  v47[7] = v75;
  v47[2] = v70;
  v47[3] = v71;
  v47[4] = v72;
  v47[5] = v73;
  v47[0] = v68;
  v47[1] = v69;
  *(&__src[13] + 8) = v73;
  *(&__src[14] + 8) = v74;
  *(&__src[15] + 8) = v75;
  *(&__src[9] + 8) = v69;
  *(&__src[10] + 8) = v70;
  *(&__src[11] + 8) = v71;
  *(&__src[12] + 8) = v72;
  *(&__src[8] + 8) = v68;
  v49[6] = v64;
  v49[7] = v65;
  v49[2] = v60;
  v49[3] = v61;
  v49[4] = v62;
  v49[5] = v63;
  v49[0] = v58;
  v49[1] = v59;
  __src[23] = v64;
  __src[24] = v65;
  __src[19] = v60;
  __src[20] = v61;
  __src[21] = v62;
  __src[22] = v63;
  v44 = v76;
  v52 = v66;
  *&v46[112] = *&v77[111];
  *&__src[8] = *&v77[111];
  v48 = v76;
  BYTE8(__src[16]) = v76;
  v50 = v66;
  LOBYTE(__src[25]) = v66;
  __src[17] = v58;
  __src[18] = v59;
  memcpy(a2, __src, 0x191uLL);
  sub_100017574(&v45, &v55, &qword_100117CE0, &qword_1000CFCB8);
  sub_100017574(v47, &v55, &qword_100117CE8, &qword_1000CFCC0);
  sub_100017574(v49, &v55, &qword_100117CE8, &qword_1000CFCC0);
  sub_100010F24(v51, &qword_100117CE8, &qword_1000CFCC0);
  v53[6] = v42;
  v53[7] = v43;
  v54 = v44;
  v53[2] = v38;
  v53[3] = v39;
  v53[5] = v41;
  v53[4] = v40;
  v53[1] = v37;
  v53[0] = v36;
  sub_100010F24(v53, &qword_100117CE8, &qword_1000CFCC0);
  *&v56[65] = *&v77[64];
  *&v56[81] = *&v77[80];
  *&v56[97] = *&v77[96];
  *&v56[1] = *v77;
  *&v56[17] = *&v77[16];
  *&v56[33] = *&v77[32];
  v55 = v34;
  v56[0] = v33;
  *&v56[112] = *&v77[111];
  *&v56[49] = *&v77[48];
  return sub_100010F24(&v55, &qword_100117CE0, &qword_1000CFCB8);
}

uint64_t sub_10004E774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C6A94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for PersonInfoView() + 20));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = type metadata accessor for PersonInfoViewModel();
  v14 = sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel);
  v40 = v11;
  v41 = v10;
  v39 = v12;
  v37 = v14;
  v38 = v13;
  v15 = *(sub_1000C6224() + 104);
  v16 = v15;

  if (v15)
  {
    v17 = v16;
    v36 = v17;
    sub_1000C6C54();
    sub_1000C62C4();
    *(v49 + 6) = v51[4];
    *(&v49[1] + 6) = v51[5];
    *(&v49[2] + 6) = v52;
    v50 = v17;
    LOWORD(v51[0]) = 257;
    *(v51 + 2) = v49[0];
    *(&v51[1] + 2) = v49[1];
    *(&v51[2] + 2) = v49[2];
    *&v51[3] = *(&v52 + 1);
    v53 = v17;
    v54 = v51[0];
    v55 = v51[1];
    *v56 = v51[2];
    *&v56[16] = *(&v52 + 1);
    LOBYTE(v47[0]) = 0;
    v56[24] = 0;
    sub_100017574(&v50, v49, &qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF8, &unk_1000CFD00);
    sub_100050EA0(&qword_100117D00, &qword_100117CF0, &unk_1000D6550, sub_100050E14);
    sub_100050EA0(&qword_100117D18, &qword_100117CF8, &unk_1000CFD00, sub_100050F24);
    sub_1000C6624();

    sub_100010F24(&v50, &qword_100117CF0, &unk_1000D6550);
    v54 = v49[1];
    v55 = v49[2];
    *v56 = v49[3];
    *&v56[9] = *(&v49[3] + 9);
    v53 = v49[0];
  }

  else
  {
    sub_1000C6A84();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v18 = sub_1000C6AB4();

    (*(v5 + 8))(v8, v4);
    v19 = sub_1000C6A54();
    KeyPath = swift_getKeyPath();
    sub_1000C6C54();
    sub_1000C62C4();
    LOBYTE(v50) = 1;
    *&v49[0] = v18;
    *(&v49[0] + 1) = KeyPath;
    *&v49[1] = v19;
    BYTE8(v49[4]) = 1;
    sub_10000FEB8(&qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF8, &unk_1000CFD00);
    sub_100050EA0(&qword_100117D00, &qword_100117CF0, &unk_1000D6550, sub_100050E14);
    sub_100050EA0(&qword_100117D18, &qword_100117CF8, &unk_1000CFD00, sub_100050F24);
    sub_1000C6624();
  }

  v21 = sub_1000C6224();
  v23 = *(v21 + 56);
  v22 = *(v21 + 64);

  *&v49[0] = v23;
  *(&v49[0] + 1) = v22;
  sub_1000383C8();
  v24 = sub_1000C68D4();
  v26 = v25;
  v27 = v54;
  v45 = v55;
  v46[0] = *v56;
  *(v46 + 9) = *&v56[9];
  *(v48 + 9) = *&v56[9];
  v48[0] = *v56;
  v43 = v53;
  v44 = v54;
  v47[0] = v53;
  v47[1] = v54;
  v47[2] = v55;
  *(&v49[3] + 9) = *&v56[9];
  v49[2] = v55;
  v49[3] = *v56;
  v49[0] = v53;
  v49[1] = v54;
  v29 = v28 & 1;
  v42 = v28 & 1;
  v30 = v53;
  v31 = v55;
  v32 = v49[4];
  *(a2 + 48) = *v56;
  *(a2 + 64) = v32;
  *(a2 + 16) = v27;
  *(a2 + 32) = v31;
  *a2 = v30;
  *(a2 + 80) = v24;
  *(a2 + 88) = v25;
  *(a2 + 96) = v28 & 1;
  *(a2 + 104) = v33;
  sub_100017574(v47, &v50, &qword_100117D40, &qword_1000CFD20);
  sub_100050DE0(v24, v26, v29);

  sub_1000500D8(v24, v26, v29);

  v51[1] = v45;
  v51[2] = v46[0];
  *(&v51[2] + 9) = *(v46 + 9);
  v50 = v43;
  v51[0] = v44;
  return sub_100010F24(&v50, &qword_100117D40, &qword_1000CFD20);
}

uint64_t sub_10004ED44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C65D4();
  v3 = sub_1000C68C4();
  v5 = v4;
  v7 = v6;
  sub_1000C6854();
  v8 = sub_1000C68B4();
  v10 = v9;
  v12 = v11;

  sub_1000500D8(v3, v5, v7 & 1);

  sub_1000C6A04();
  v13 = sub_1000C6884();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1000500D8(v8, v10, v12 & 1);

  v20 = (a1 + *(type metadata accessor for PersonInfoView() + 20));
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  type metadata accessor for PersonInfoViewModel();
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel);
  v24 = sub_1000C6224();
  v26 = *(v24 + 72);
  v25 = *(v24 + 80);

  sub_1000383C8();
  v27 = sub_1000C68D4();
  v29 = v28;
  v30 = v17 & 1;
  v36 = v17 & 1;
  v32 = v31 & 1;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v30;
  *(a2 + 24) = v19;
  *(a2 + 32) = v27;
  *(a2 + 40) = v28;
  *(a2 + 48) = v31 & 1;
  *(a2 + 56) = v33;
  sub_100050DE0(v13, v15, v30);

  sub_100050DE0(v27, v29, v32);

  sub_1000500D8(v27, v29, v32);

  sub_1000500D8(v13, v15, v36);
}

uint64_t sub_10004EFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C65D4();
  v3 = sub_1000C68C4();
  v5 = v4;
  v7 = v6;
  sub_1000C6854();
  v8 = sub_1000C68B4();
  v10 = v9;
  v12 = v11;

  sub_1000500D8(v3, v5, v7 & 1);

  sub_1000C6A04();
  v13 = sub_1000C6884();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1000500D8(v8, v10, v12 & 1);

  v20 = (a1 + *(type metadata accessor for PersonInfoView() + 20));
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  type metadata accessor for PersonInfoViewModel();
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel);
  v24 = sub_1000C6224();
  v26 = *(v24 + 88);
  v25 = *(v24 + 96);

  sub_1000383C8();
  v27 = sub_1000C68D4();
  v29 = v28;
  v30 = v17 & 1;
  v36 = v17 & 1;
  v32 = v31 & 1;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v30;
  *(a2 + 24) = v19;
  *(a2 + 32) = v27;
  *(a2 + 40) = v28;
  *(a2 + 48) = v31 & 1;
  *(a2 + 56) = v33;
  sub_100050DE0(v13, v15, v30);

  sub_100050DE0(v27, v29, v32);

  sub_1000500D8(v27, v29, v32);

  sub_1000500D8(v13, v15, v36);
}

uint64_t sub_10004F21C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10004F29C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10004F310(unsigned __int8 a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for PersonInfoView() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for PersonInfoViewModel();
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel);
  v7 = sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C60A4();
  v8 = v7[3];
  sub_10002AF10(v7[5], v7[6], a1);
}

uint64_t sub_10004F418(char a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for PersonInfoView() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for PersonInfoViewModel();
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel);
  v7 = sub_1000C6224();
  v8 = a1 == 0;
  swift_beginAccess();
  v9 = v7[2];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C60A4();
  v10 = v7[3];
  sub_10002B19C(v7[5], v7[6], v8);
}

uint64_t sub_10004F568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v40 = a2;
  v41 = a3;
  v8 = type metadata accessor for PersonInfoView();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v8);
  v13 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  sub_1000C61C4();
  v16 = sub_1000C61F4();
  (*(*(v16 - 8) + 56))(a6, 0, 1, v16);
  sub_1000501FC(a1, v15);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = v17 + v11;
  v19 = swift_allocObject();
  sub_10005026C(v15, v19 + v17);
  sub_1000501FC(a1, v13);
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_10005026C(v13, v21 + v17);
  v22 = (v21 + v20);
  v23 = v41;
  *v22 = v40;
  v22[1] = v23;
  v24 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  v25 = v43;
  *v24 = v42;
  v24[1] = v25;
  v26 = sub_10000FEB8(&qword_100117CC0, &unk_1000CFC00);
  v27 = (a6 + v26[9]);
  *v27 = &unk_1000CFC18;
  v27[1] = v19;
  v28 = (a6 + v26[10]);
  *v28 = sub_100050D10;
  v28[1] = v21;
  v29 = a6 + v26[11];
  v44 = 0;

  sub_1000C6AD4();
  v30 = v46;
  *v29 = v45;
  *(v29 + 8) = v30;
  v31 = a1 + *(v9 + 28);
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = *(v31 + 16);
  type metadata accessor for PersonInfoViewModel();
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LOBYTE(v34) = v45;
  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  result = sub_10000FEB8(&qword_100117CA8, &qword_1000CFBF8);
  v38 = (a6 + *(result + 36));
  *v38 = KeyPath;
  v38[1] = sub_100050DD8;
  v38[2] = v36;
  return result;
}

uint64_t sub_10004F8D8(uint64_t a1)
{
  v1[5] = a1;
  v2 = *(*(sub_1000C63D4() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_10000FEB8(&qword_100116A20, &qword_1000CCB90);
  v1[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = sub_1000C6F14();
  v1[10] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v1[11] = v6;
  v1[12] = v5;

  return _swift_task_switch(sub_10004F9DC, v6, v5);
}

uint64_t sub_10004F9DC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = type metadata accessor for PersonInfoView();
  v0[13] = v3;
  v4 = (v2 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  type metadata accessor for PersonInfoViewModel();
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel);
  v0[14] = sub_1000C6224();
  v0[15] = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  v0[16] = v9;
  v0[17] = v8;

  return _swift_task_switch(sub_10004FAF4, v9, v8);
}

uint64_t sub_10004FAF4()
{
  v1 = v0[14];
  v2 = *(v1 + 24);
  swift_beginAccess();
  v3 = *(v1 + 16);
  v0[18] = v3;

  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_10004FBBC;

  return sub_1000298A4(v3);
}

uint64_t sub_10004FBBC()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_10004FD00, v5, v4);
}

uint64_t sub_10004FD00()
{
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[11];
  v4 = v0[12];

  return _swift_task_switch(sub_10004FD6C, v3, v4);
}

uint64_t sub_10004FD6C()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];

  v7 = v6 + *(v1 + 32);
  sub_1000A36BC(v3);
  sub_1000C6B84();
  sub_1000C63C4();
  sub_1000C6B94();
  sub_100010F24(v3, &qword_100116A20, &qword_1000CCB90);

  v8 = v0[1];

  return v8();
}

__n128 sub_10004FE48@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C65C4();
  sub_10004FF10(a1, v7);
  *&v6[48] = *&v8[9];
  *&v6[39] = *v8;
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 17) = *v6;
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 65) = *&v6[48];
  return result;
}

uint64_t sub_10004FF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PersonInfoView() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for PersonInfoViewModel();
  sub_1000503E4(&qword_100117BB8, type metadata accessor for PersonInfoViewModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  sub_1000383C8();
  v7 = sub_1000C68D4();
  v9 = v8;
  v11 = v10 & 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10 & 1;
  *(a2 + 40) = v12;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  sub_100050DE0(v7, v8, v10 & 1);

  sub_1000500D8(v7, v9, v11);
}

uint64_t sub_1000500D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000500F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_100050174(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000501FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonInfoView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005026C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonInfoView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050300(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PersonInfoView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1000503E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000505FC()
{
  result = qword_100117CB0;
  if (!qword_100117CB0)
  {
    sub_100010624(&qword_100117CA8, &qword_1000CFBF8);
    sub_10001E490(&qword_100117CB8, &qword_100117CC0, &unk_1000CFC00);
    sub_10001E490(&qword_100117CC8, &qword_100117CD0, &qword_1000CFDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117CB0);
  }

  return result;
}

uint64_t sub_1000506E0()
{
  v1 = type metadata accessor for PersonInfoView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C62E4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = &v5[v1[5]];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_100050264();
  v12 = *&v5[v1[6] + 8];

  v13 = v1[7];
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1000C6694();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v5[v13], 1, v14))
    {
      (*(v15 + 8))(&v5[v13], v14);
    }
  }

  else
  {
    v16 = *&v5[v13];
  }

  v17 = &v5[v1[8]];
  sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *v17;

  if (EnumCaseMultiPayload == 1)
  {
    v20 = *(v17 + 1);

    v21 = *(sub_10000FEB8(&qword_100116A20, &qword_1000CCB90) + 32);
    v22 = sub_1000C63D4();
    (*(*(v22 - 8) + 8))(&v17[v21], v22);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005097C()
{
  v2 = *(type metadata accessor for PersonInfoView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100011080;

  return sub_10004F8D8(v0 + v3);
}

uint64_t sub_100050A48()
{
  v1 = type metadata accessor for PersonInfoView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C62E4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = &v5[v1[5]];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_100050264();
  v12 = *&v5[v1[6] + 8];

  v13 = v1[7];
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1000C6694();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v5[v13], 1, v14))
    {
      (*(v15 + 8))(&v5[v13], v14);
    }
  }

  else
  {
    v16 = *&v5[v13];
  }

  v17 = &v5[v1[8]];
  sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *v17;

  if (EnumCaseMultiPayload == 1)
  {
    v20 = *(v17 + 1);

    v21 = *(sub_10000FEB8(&qword_100116A20, &qword_1000CCB90) + 32);
    v22 = sub_1000C63D4();
    (*(*(v22 - 8) + 8))(&v17[v21], v22);
  }

  v23 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v0 + v23 + 8);

  v26 = *(v0 + v24 + 8);

  return _swift_deallocObject(v0, v24 + 16, v2 | 7);
}

double sub_100050D10@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonInfoView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  *&result = sub_10004FE48(v1 + v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_100050DE0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_100050DF0(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_100050E14()
{
  result = qword_100117D08;
  if (!qword_100117D08)
  {
    sub_100010624(&qword_100117D10, &unk_1000D6560);
    sub_100039E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D08);
  }

  return result;
}

uint64_t sub_100050EA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100050F24()
{
  result = qword_100117D20;
  if (!qword_100117D20)
  {
    sub_100010624(&qword_100117D28, &unk_1000CFD10);
    sub_10001E490(&qword_100117D30, &qword_100117D38, &qword_1000D2370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D20);
  }

  return result;
}

unint64_t sub_100050FE0()
{
  result = qword_100117D48;
  if (!qword_100117D48)
  {
    sub_100010624(&qword_100117D50, &qword_1000CFD28);
    sub_100010624(&qword_100117C20, &qword_1000CF9F0);
    sub_100010624(&qword_100117C38, &qword_1000CFA08);
    sub_10001E490(&qword_100117C50, &qword_100117C38, &qword_1000CFA08);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D48);
  }

  return result;
}

uint64_t sub_100051154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100051230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for OneTimeLinkListView()
{
  result = qword_100117DB0;
  if (!qword_100117DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100051340()
{
  sub_10004C40C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PeopleViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000513E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000C65A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100052928(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000C62E4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1000C6FE4();
    v16 = sub_1000C6764();
    sub_1000C5F44();

    sub_1000C6594();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000515C8@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v2 = sub_1000C65B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000FEB8(&qword_100117DE8, &qword_1000CFDB8);
  v23[0] = *(v7 - 8);
  v8 = *(v23[0] + 64);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v24 = v1;
  sub_10000FEB8(&qword_100117DF0, &qword_1000CFDC0);
  sub_100052278();
  sub_1000C6864();
  v11 = [objc_opt_self() mainBundle];
  v22._countAndFlagsBits = 0x80000001000DA350;
  v27._object = 0x80000001000DA330;
  v27._countAndFlagsBits = 0xD000000000000014;
  v28.value._countAndFlagsBits = 0;
  v28.value._object = 0;
  v12.super.isa = v11;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v13 = sub_1000C5B74(v27, v28, v12, v29, v22);
  v15 = v14;

  v25 = v13;
  v26 = v15;
  sub_1000383C8();
  v16 = sub_1000C68D4();
  v18 = v17;
  v20 = v19;
  (*(v3 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v2);
  sub_10001E490(&qword_100117E18, &qword_100117DE8, &qword_1000CFDB8);
  sub_1000C6954();
  sub_1000500D8(v16, v18, v20 & 1);

  (*(v3 + 8))(v6, v2);
  return (*(v23[0] + 8))(v10, v7);
}

uint64_t sub_1000518D0(uint64_t a1)
{
  v2 = type metadata accessor for OneTimeLinkListView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(__chkstk_darwin(v2 - 8) + 28));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  sub_100052410(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_100052594(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_10000FEB8(&qword_100116C50, &qword_1000CD178);
  sub_10000FEB8(&qword_100117E08, &qword_1000CFDC8);
  sub_10001E490(&qword_100117E20, &qword_100116C50, &qword_1000CD178);
  sub_1000522FC();
  sub_100052678();
  return sub_1000C6BF4();
}

uint64_t sub_100051AC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for OneTimeLinkListView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = *a1;
  sub_100052410(a2, &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_100052594(&v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  v13 = *(a2 + *(v7 + 28));
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_1000C6094();

  LOBYTE(v7) = v16[15];
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = v7;
  *a3 = v10;
  a3[1] = &unk_1000CFE38;
  a3[2] = v12;
  a3[3] = KeyPath;
  a3[4] = sub_100050DD8;
  a3[5] = result;
  return result;
}

uint64_t sub_100051C84(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1000C6F14();
  v2[3] = sub_1000C6F04();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100051D40;

  return sub_100051E7C(a2);
}

uint64_t sub_100051D40()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1000C6ED4();

  return _swift_task_switch(sub_100040F74, v5, v4);
}

uint64_t sub_100051E7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000C62E4();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_1000C6F14();
  v2[8] = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  v2[9] = v7;
  v2[10] = v6;

  return _swift_task_switch(sub_100051F70, v7, v6);
}

uint64_t sub_100051F70()
{
  v1 = v0[4];
  v0[11] = *(v1 + *(type metadata accessor for OneTimeLinkListView() + 20));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10005201C;
  v3 = v0[3];

  return sub_100026394(v3);
}

uint64_t sub_10005201C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return _swift_task_switch(sub_10005213C, v4, v3);
}

uint64_t sub_10005213C()
{
  v1 = v0[11];
  v2 = v0[8];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v3 = v0[2];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3 < 0)
  {
    v12 = v0[2];
  }

  v13 = v0[2];
  v14 = sub_1000C72F4();

  if (!v14)
  {
LABEL_3:
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    sub_1000513E0(v5);
    sub_1000C62D4();
    (*(v6 + 8))(v5, v8);
  }

LABEL_4:
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

unint64_t sub_100052278()
{
  result = qword_100117DF8;
  if (!qword_100117DF8)
  {
    sub_100010624(&qword_100117DF0, &qword_1000CFDC0);
    sub_1000522FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117DF8);
  }

  return result;
}

unint64_t sub_1000522FC()
{
  result = qword_100117E00;
  if (!qword_100117E00)
  {
    sub_100010624(&qword_100117E08, &qword_1000CFDC8);
    sub_1000523B4();
    sub_10001E490(&qword_100117CC8, &qword_100117CD0, &qword_1000CFDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117E00);
  }

  return result;
}

unint64_t sub_1000523B4()
{
  result = qword_100117E10;
  if (!qword_100117E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117E10);
  }

  return result;
}

uint64_t sub_100052410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneTimeLinkListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052474()
{
  v1 = type metadata accessor for OneTimeLinkListView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C62E4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}