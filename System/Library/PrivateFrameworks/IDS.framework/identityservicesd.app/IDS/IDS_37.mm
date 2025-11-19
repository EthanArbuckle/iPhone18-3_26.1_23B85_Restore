uint64_t sub_1008A50FC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IDSRegistrationEventStruct();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

id sub_1008A51F4(int a1)
{
  v43 = a1;
  v42 = sub_1009360D8();
  v1 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IDSRegistrationEventStruct();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result persistenceManager];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1008CD34C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1008A51E0(v10);
  }

  v12 = v10[2];
  v13 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v48 = v13;
  v49 = v12;
  sub_1008A411C(&v48);
  v48 = 0;
  v49 = 0xE000000000000000;
  v14 = v10[2];
  if (!v14)
  {

    return 0;
  }

  v35[1] = v10;
  v39 = *(v4 + 72);
  v40 = "v40@0:8@16q24Q32";
  v37 = "yyyy-MM-dd HH:mm:ss.SSSSxx";
  v38 = (v1 + 8);
  v44 = v3;
  do
  {
    sub_1008A58C8(v13, v6);
    if (*&v6[v3[8]])
    {
      v46 = *&v6[v3[8]];
      v47._countAndFlagsBits = 0x6F72726520746968;
      v47._object = 0xEA00000000002072;
      v50._countAndFlagsBits = sub_100937548();
      sub_100936C08(v50);

      countAndFlagsBits = v47._countAndFlagsBits;
      object = v47._object;
    }

    else
    {
      object = 0xE900000000000064;
      countAndFlagsBits = 0x6564656563637573;
    }

    v45 = countAndFlagsBits;
    v17 = &v6[v3[10]];
    v18 = v17[1];
    if (v18)
    {
      v19 = *v17;
      v47._countAndFlagsBits = 0x756C7053203E3D20;
      v47._object = 0xEB00000000206B6ELL;

      v51._countAndFlagsBits = v19;
      v51._object = v18;
      sub_100936C08(v51);

      v18 = v47._countAndFlagsBits;
      v20 = v47._object;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v21 = [objc_allocWithZone(NSDateFormatter) init];
    v22 = v41;
    sub_1009360C8();
    isa = sub_1009360B8().super.isa;
    (*v38)(v22, v42);
    [v21 setLocale:isa];

    v24 = sub_100936B28();
    [v21 setDateFormat:v24];

    v25 = sub_100935F58().super.isa;
    v26 = [v21 stringFromDate:v25];

    v27 = sub_100936B38();
    v29 = v28;

    v47._countAndFlagsBits = v27;
    v47._object = v29;
    v3 = v44;
    v52._countAndFlagsBits = 8250;
    v52._object = 0xE200000000000000;
    sub_100936C08(v52);
    v30 = *(v6 + 1);
    v31 = *(v6 + 2);
    v53._countAndFlagsBits = v30;
    v53._object = v31;
    sub_100936C08(v53);
    v54._countAndFlagsBits = 32;
    v54._object = 0xE100000000000000;
    sub_100936C08(v54);
    v55._countAndFlagsBits = v45;
    v55._object = object;
    sub_100936C08(v55);

    v56._countAndFlagsBits = v18;
    v56._object = v20;
    sub_100936C08(v56);

    v57._countAndFlagsBits = 10;
    v57._object = 0xE100000000000000;
    sub_100936C08(v57);
    sub_100936C08(v47);

    if (v43)
    {
      v32 = &v6[v3[11]];
      v33 = v32[1];
      if (v33)
      {
        v34 = *v32;
        v47._countAndFlagsBits = 0;
        v47._object = 0xE000000000000000;
        sub_100937248(27);

        v47._countAndFlagsBits = v30;
        v47._object = v31;
        v58._object = (v37 | 0x8000000000000000);
        v58._countAndFlagsBits = 0xD000000000000016;
        sub_100936C08(v58);
        v59._countAndFlagsBits = v34;
        v3 = v44;
        v59._object = v33;
        sub_100936C08(v59);
        v60._countAndFlagsBits = 10;
        v60._object = 0xE100000000000000;
        sub_100936C08(v60);
        sub_100936C08(v47);
      }
    }

    sub_1008A592C(v6);
    v13 += v39;
    --v14;
  }

  while (v14);

  return v48;
}

uint64_t type metadata accessor for IDSRegistrationEventStruct()
{
  result = qword_100CD16F8;
  if (!qword_100CD16F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008A57B4()
{
  sub_100818944();
  if (v0 <= 0x3F)
  {
    sub_100936038();
    if (v1 <= 0x3F)
    {
      sub_1008A5878();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1008A5878()
{
  if (!qword_100CBA280)
  {
    v0 = sub_100937058();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBA280);
    }
  }
}

uint64_t sub_1008A58C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSRegistrationEventStruct();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008A592C(uint64_t a1)
{
  v2 = type metadata accessor for IDSRegistrationEventStruct();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008A5988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSRegistrationEventStruct();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1008A5B84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v50 = a1;
  v51 = a3;
  v49 = a2;
  v5 = sub_1009364D8();
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  v7 = __chkstk_darwin(v5);
  v45 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v45 - v9;
  v10 = sub_100936F38();
  __chkstk_darwin(v10);
  v11 = sub_100936F78();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100936528();
  __chkstk_darwin(v15 - 8);
  sub_1007C9A6C(7);
  v48 = OBJC_IVAR___IDSQuerySDPersistenceManager_queue;
  v47 = sub_100014170(0, &qword_100CB3510);
  sub_100936518();
  (*(v12 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  v55 = &_swiftEmptyArrayStorage;
  sub_100014C40(&qword_100CB2AB8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100706B30(&unk_100CB3520);
  v16 = v49;
  sub_100014C88(&qword_100CB2AC0, &unk_100CB3520);
  v17 = v50;
  sub_1009370B8();
  *&v3[v48] = sub_100936F98();
  *&v3[OBJC_IVAR___IDSQuerySDPersistenceManager_container] = 0;
  v18 = &v3[OBJC_IVAR___IDSQuerySDPersistenceManager_filePath];
  *v18 = 0;
  v18[1] = 0;
  *&v3[OBJC_IVAR___IDSQuerySDPersistenceManager_cleanupTimer] = 0;
  swift_beginAccess();
  *v18 = v17;
  v18[1] = v16;
  v19 = v51;
  *&v4[OBJC_IVAR___IDSQuerySDPersistenceManager_serviceController] = v51;
  v20 = type metadata accessor for SDPersistenceManager();
  v54.receiver = v4;
  v54.super_class = v20;

  v21 = v19;
  v22 = objc_msgSendSuper2(&v54, "init");
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 standardUserDefaults];
  v26 = sub_100936B28();
  v27 = [v25 integerForKey:v26];

  if (v27 == 3)
  {

    v28 = v52;
    v29 = v53;
    v30 = v45;
    (*(v53 + 16))(v45, v24 + OBJC_IVAR___IDSQuerySDPersistenceManager_logger, v52);
    v31 = sub_1009364B8();
    v32 = sub_100936F18();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134218240;
      *(v33 + 4) = 3;
      *(v33 + 12) = 2048;
      *(v33 + 14) = 3;
      _os_log_impl(&_mh_execute_header, v31, v32, "Version matches loading forceDeleteVersion: %ld persistedVersion: %ld", v33, 0x16u);
    }

    (*(v29 + 8))(v30, v28);
  }

  else
  {
    v51 = v21;
    v34 = sub_1008EAE54(v17, v16);

    v35 = v52;
    v36 = v53;
    v37 = v46;
    (*(v53 + 16))(v46, v24 + OBJC_IVAR___IDSQuerySDPersistenceManager_logger, v52);
    v38 = sub_1009364B8();
    v39 = sub_100936F18();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 67109632;
      *(v40 + 4) = v34 & 1;
      *(v40 + 8) = 2048;
      *(v40 + 10) = 3;
      *(v40 + 18) = 2048;
      *(v40 + 20) = v27;
      _os_log_impl(&_mh_execute_header, v38, v39, "Did purge existing ids-query.db files: %{BOOL}d forceDeleteVersion: %ld persistedVersion: %ld", v40, 0x1Cu);
      v36 = v53;
    }

    (*(v36 + 8))(v37, v35);
    v41 = [v23 standardUserDefaults];
    isa = sub_100936E78().super.super.isa;
    v43 = sub_100936B28();
    [v41 setValue:isa forKey:v43];

    v21 = v51;
  }

  sub_100011C54();

  return v24;
}

uint64_t sub_1008A6294(char a1, uint64_t a2, void *a3)
{
  v5 = sub_1009368E8();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100936908();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100936918();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009368F8();
  sub_1009368D8();
  sub_100936928();
  sub_1009367B8();
  sub_1008F4B88();
  sub_100706B30(&unk_100CBB240);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1009AC700;
  (*(v8 + 16))(v12 + v11, v10, v7);

  sub_1009367A8();
  v13 = *((swift_isaMask & *a3) + 0x88);

  v13(v14);
  v15 = sub_1009364B8();
  v16 = sub_100936F18();
  if (os_log_type_enabled(v15, v16))
  {
    if (a1)
    {
      v17 = "Successfully initialized fallback in-memory ModelContainer";
    }

    else
    {
      v17 = "Successfully initialized in-memory ModelContainer";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, v17, v18, 2u);
  }

  v19 = [objc_allocWithZone(type metadata accessor for ContainerLoadMetric()) init];
  v19[OBJC_IVAR____TtC17identityservicesdP33_534A9A00092BF767A56A700BAD85BE0F19ContainerLoadMetric_containerType] = 1;
  v20 = [objc_opt_self() defaultLogger];
  if (v20)
  {
    v21 = v20;
    [v20 logMetric:v19];
  }

  else
  {
    v21 = sub_1009364B8();
    v22 = sub_100936EF8();
    if (!os_log_type_enabled(v21, v22))
    {

      return (*(v8 + 8))(v10, v7);
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Error initializing core analytics logger.", v23, 2u);
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_1008A67B0()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = sub_100936B28();
    v3 = [v1 registeredLocalURIsOnService:v2];

    if (v3)
    {
      sub_100014170(0, &qword_100CBA2E0);
      sub_100936CE8();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1008A6878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100936B28();
    v7 = [v5 registeredDevicesOnService:v6 withLinkedURI:a3];

    if (v7)
    {
      sub_100014170(0, &qword_100CBA2E8);
      v8 = sub_100936CE8();

      if (!(v8 >> 62))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = &_swiftEmptyArrayStorage;
      if (!(&_swiftEmptyArrayStorage >> 62))
      {
LABEL_4:
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_19;
      }
    }

    v9 = sub_1009373F8();
    if (v9)
    {
LABEL_5:
      v10 = 0;
      v11 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = sub_100937268();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v15 = [v12 pushToken];
        v16 = sub_100935EA8();
        v18 = v17;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100787FB8(0, *(v11 + 2) + 1, 1, v11);
        }

        v20 = *(v11 + 2);
        v19 = *(v11 + 3);
        if (v20 >= v19 >> 1)
        {
          v11 = sub_100787FB8((v19 > 1), v20 + 1, 1, v11);
        }

        *(v11 + 2) = v20 + 1;
        v21 = &v11[16 * v20];
        *(v21 + 4) = v16;
        *(v21 + 5) = v18;
        ++v10;
        if (v14 == v9)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_19:

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1008A6AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*((swift_isaMask & *v3) + 0x100))(a3);
  sub_100014170(0, &qword_100CB4A70);
  if (sub_100937038())
  {
    v5 = sub_100936B38();
    v22 = (*((swift_isaMask & *v3) + 0xF0))(v5);

    v7 = *(v4 + 16);
    if (v7)
    {
      v8 = 0;
      v20 = v7 - 1;
      v21 = &_swiftEmptyArrayStorage;
      do
      {
        v9 = v8;
        while (1)
        {
          if (v9 >= *(v4 + 16))
          {
            __break(1u);
            return result;
          }

          v8 = v9 + 1;
          v23 = *(v4 + 32 + 16 * v9);
          *&v10 = __chkstk_darwin(result);
          v19[2] = &v23;
          v11 = v10;
          v13 = v12;
          sub_100715738(v10, v12);
          if (sub_1008E4C18(sub_1008EB364, v19, v22))
          {
            break;
          }

          result = sub_1007156D8(v11, v13);
          ++v9;
          if (v7 == v8)
          {
            goto LABEL_16;
          }
        }

        v14 = v21;
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v14;
        if ((result & 1) == 0)
        {
          result = sub_1008E447C(0, v14[2] + 1, 1);
          v14 = v24;
        }

        v16 = v14[2];
        v15 = v14[3];
        v17 = (v16 + 1);
        if (v16 >= v15 >> 1)
        {
          v21 = (v16 + 1);
          result = sub_1008E447C((v15 > 1), v16 + 1, 1);
          v17 = v21;
          v14 = v24;
        }

        v14[2] = v17;
        v21 = v14;
        v18 = &v14[2 * v16];
        v18[4] = v11;
        v18[5] = v13;
      }

      while (v20 != v9);
    }

    else
    {
      v21 = &_swiftEmptyArrayStorage;
    }

LABEL_16:

    return v21;
  }

  return v4;
}

unint64_t sub_1008A6D40(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

  result = sub_1009373F8();
  v2 = result;
  if (!result)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = IDSRegistrationPropertySupportsStewie;
    v5 = v1 & 0xC000000000000001;
    v6 = &_swiftEmptyArrayStorage;
    v18 = v1;
    do
    {
      if (v5)
      {
        v7 = sub_100937268();
      }

      else
      {
        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = [v7 capabilities];
      v10 = [v9 valueForCapability:v4];

      if (v10 < 1)
      {
      }

      else
      {
        v11 = [v8 pushToken];
        v12 = sub_100935EA8();
        v14 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100787FB8(0, *(v6 + 2) + 1, 1, v6);
        }

        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        if (v16 >= v15 >> 1)
        {
          v6 = sub_100787FB8((v15 > 1), v16 + 1, 1, v6);
        }

        *(v6 + 2) = v16 + 1;
        v17 = &v6[16 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v14;
        v1 = v18;
      }

      ++v3;
    }

    while (v2 != v3);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008A6EFC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v204 = a3;
  v199 = sub_100936038();
  v202 = *(v199 - 8);
  __chkstk_darwin(v199);
  v198 = v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v200 = v182 - v8;
  v9 = type metadata accessor for SenderKeyAndState(0);
  v10 = *(v9 - 8);
  v210 = v9;
  v211 = v10;
  __chkstk_darwin(v9);
  v189 = v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v194 = v182 - v13;
  __chkstk_darwin(v14);
  v185 = v182 - v15;
  __chkstk_darwin(v16);
  v186 = v182 - v17;
  __chkstk_darwin(v18);
  v188 = v182 - v19;
  __chkstk_darwin(v20);
  v193 = v182 - v21;
  __chkstk_darwin(v22);
  v191 = v182 - v23;
  __chkstk_darwin(v24);
  v192 = v182 - v25;
  v201 = sub_100706B30(&unk_100CB4FC0);
  __chkstk_darwin(v201);
  v187 = v182 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v190 = v182 - v28;
  __chkstk_darwin(v29);
  v196 = v182 - v30;
  __chkstk_darwin(v31);
  v203 = v182 - v32;
  v33 = sub_100706B30(&unk_100CB4A50);
  __chkstk_darwin(v33 - 8);
  v197 = v182 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v209 = v182 - v37;
  v38 = *((swift_isaMask & *v3) + 0xE8);
  v207 = v3;
  v39 = v38(v36);
  sub_100706B30(&qword_100CB4A30);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1009AD920;
  *(v40 + 32) = a2;
  sub_100014170(0, &qword_100CBA2E0);
  v41 = a2;
  isa = sub_100936CD8().super.isa;

  v43 = IDSServiceNameiMessage;
  sub_100706B30(&unk_100CBA2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AC700;
  *(inited + 32) = sub_100936B38();
  *(inited + 40) = v45;
  v46 = objc_allocWithZone(NSNumber);
  v47 = v43;
  *(inited + 48) = [v46 initWithInteger:1];
  sub_1007917EC(inited);
  swift_setDeallocating();
  sub_100013814(inited + 32, &unk_100CB4A60);
  sub_100014170(0, &unk_100CBA300);
  v48 = sub_100936A58().super.isa;

  v49 = [v39 endpointsForURIs:isa service:v47 fromURI:a1 withCapabilities:v48];

  swift_unknownObjectRelease();
  if (v49)
  {
    sub_100706B30(&qword_100CB4A38);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    v50 = sub_100936A78();

    v51 = v211;
    if (*(v50 + 16))
    {
      v52 = sub_1007417B0(v41);
      v53 = v207;
      if (v54)
      {
        v55 = *(*(v50 + 56) + 8 * v52);
      }

      else
      {
        v55 = &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v55 = &_swiftEmptyArrayStorage;
      v53 = v207;
    }
  }

  else
  {
    v55 = &_swiftEmptyArrayStorage;
    v51 = v211;
    v53 = v207;
  }

  v56 = (*((swift_isaMask & *v53) + 0xF8))(a1, v41, v55);
  v57 = OBJC_IVAR___IDSQuerySDPersistenceManager_logger;
  swift_bridgeObjectRetain_n();
  v58 = v41;
  v59 = a1;

  v60 = v59;
  v61 = sub_1009364B8();
  v62 = a1;
  v63 = sub_100936F18();

  LODWORD(v195) = v63;
  v64 = os_log_type_enabled(v61, v63);
  v205 = v57;
  v206 = v56;
  v208 = v60;
  if (v64)
  {
    v184 = v61;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v213 = v183;
    *v65 = 138413314;
    *(v65 + 4) = v60;
    *(v65 + 12) = 2112;
    *(v65 + 14) = v58;
    *v66 = v62;
    v66[1] = v58;
    v182[1] = v66;
    *(v65 + 22) = 2048;
    if (v55 >> 62)
    {
      v67 = sub_1009373F8();
    }

    else
    {
      v67 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = v206;
    v69 = v58;
    v70 = v208;

    *(v65 + 24) = v67;

    *(v65 + 32) = 2048;
    v71 = *(v68 + 16);

    *(v65 + 34) = v71;

    *(v65 + 42) = 2080;
    v72 = *(v68 + 16);
    if (v72)
    {
      v182[0] = v58;
      v212 = &_swiftEmptyArrayStorage;
      sub_1008E449C(0, v72, 0);
      v73 = v212;
      v74 = (v68 + 40);
      do
      {
        v76 = *(v74 - 1);
        v75 = *v74;
        sub_100715738(v76, *v74);
        v77 = sub_100935E78().super.isa;
        v78 = [(objc_class *)v77 __imHexString];

        if (v78)
        {
          v79 = sub_100936B38();
          v81 = v80;
          sub_1007156D8(v76, v75);
        }

        else
        {
          sub_1007156D8(v76, v75);
          v79 = 0;
          v81 = 0;
        }

        v212 = v73;
        v83 = v73[2];
        v82 = v73[3];
        if (v83 >= v82 >> 1)
        {
          sub_1008E449C((v82 > 1), v83 + 1, 1);
          v73 = v212;
        }

        v74 += 2;
        v73[2] = v83 + 1;
        v84 = &v73[2 * v83];
        v84[4] = v79;
        v84[5] = v81;
        --v72;
      }

      while (v72);
      v51 = v211;
      v53 = v207;
      v58 = v182[0];
    }

    sub_100706B30(&unk_100CBA310);
    v86 = sub_100936CF8();
    v88 = v87;

    v89 = sub_10001273C(v86, v88, &v213);

    *(v65 + 44) = v89;
    v90 = v184;
    _os_log_impl(&_mh_execute_header, v184, v195, "Determining usable sender key for senderURI: %@ receiverURI: %@ with %ld endpoints and %ld stewieCapableTokens: %s", v65, 0x34u);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();

    sub_100012970(v183);

    v60 = v208;
    v85 = v209;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v85 = v209;
  }

  if (([v53 hasAnyDecryptingKeyIDWithSenderURI:v58 receiverURI:v60] & 1) == 0)
  {

    v118 = v58;
    v119 = sub_1009364B8();
    v120 = sub_100936F18();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *v121 = 138412290;
      *(v121 + 4) = v118;
      *v122 = v118;
      v123 = v118;
      _os_log_impl(&_mh_execute_header, v119, v120, "We've never received a key from %@ - returning nil", v121, 0xCu);
      sub_100013814(v122, &qword_100CB36B0);
    }

    return (*(v51 + 56))(v204, 1, 1, v210);
  }

  v91 = v203;
  v92 = *(v51 + 56);
  v93 = v53;
  v94 = v58;
  v95 = v210;
  (v92)(v85, 1, 1, v210);
  v96 = v201;
  v97 = v91 + *(v201 + 48);
  v98 = v91 + *(v201 + 64);
  (v92)(v91, 1, 1, v95);
  (v92)(v97, 1, 1, v95);
  v195 = v51 + 56;
  v184 = v92;
  v99 = (v92)(v98, 1, 1, v95);
  v100.n128_f64[0] = __chkstk_darwin(v99);
  v101 = v208;
  v182[-8] = v93;
  v182[-7] = v101;
  v182[-6] = v94;
  v182[-5] = v206;
  v182[-4] = v98;
  v182[-3] = v91;
  v182[-2] = v97;
  (*((swift_isaMask & *v93) + 0x118))(0, sub_1008EB3A0, v100);

  v102 = v196;
  sub_100012D50(v91, v196, &unk_100CB4FC0);
  v103 = *(v96 + 48);
  v104 = *(v96 + 64);
  v105 = *(v51 + 48);
  v211 = v51 + 48;
  v106 = v105;
  if (v105(v102, 1, v95) != 1)
  {
    v208 = v105;
    v125 = v192;
    sub_1008F24C4(v102, v192, type metadata accessor for SenderKeyAndState);
    sub_100013814(v102 + v104, &unk_100CB4A50);
    sub_100013814(v102 + v103, &unk_100CB4A50);
    v126 = v191;
    sub_1008ED848(v125, v191, type metadata accessor for SenderKeyAndState);
    v127 = sub_1009364B8();
    v128 = sub_100936F18();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = v126;
      v131 = swift_slowAlloc();
      v213 = v131;
      *v129 = 136315138;
      v132 = sub_100935E88(0);
      v134 = v133;
      sub_1008ED8B0(v130, type metadata accessor for SenderKeyAndState);
      v135 = sub_10001273C(v132, v134, &v213);

      *(v129 + 4) = v135;
      v91 = v203;
      _os_log_impl(&_mh_execute_header, v127, v128, "We found a usable key: %s is acked by all Stewie capable devices", v129, 0xCu);
      sub_100012970(v131);

      v136 = v209;
      sub_100013814(v209, &unk_100CB4A50);
    }

    else
    {

      v136 = v209;
      sub_100013814(v209, &unk_100CB4A50);
      sub_1008ED8B0(v126, type metadata accessor for SenderKeyAndState);
    }

    v148 = v199;
    v149 = v202;
    v150 = v200;
    sub_1008F24C4(v125, v136, type metadata accessor for SenderKeyAndState);
    (v184)(v136, 0, 1, v210);
    v106 = v208;
    goto LABEL_45;
  }

  v107 = v102;
  sub_100013814(v102 + v104, &unk_100CB4A50);
  sub_100013814(v102 + v103, &unk_100CB4A50);
  v108 = v201;
  sub_100013814(v107, &unk_100CB4A50);
  v109 = v190;
  sub_100012D50(v91, v190, &unk_100CB4FC0);
  v110 = *(v108 + 48);
  v111 = *(v108 + 64);
  if (v105(v109 + v111, 1, v210) != 1)
  {
    v137 = v109 + v111;
    v138 = v193;
    sub_1008F24C4(v137, v193, type metadata accessor for SenderKeyAndState);
    sub_100013814(v109 + v110, &unk_100CB4A50);
    sub_100013814(v109, &unk_100CB4A50);
    v139 = v188;
    sub_1008ED848(v138, v188, type metadata accessor for SenderKeyAndState);
    v140 = sub_1009364B8();
    v141 = sub_100936F18();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v213 = v143;
      *v142 = 136315138;
      v144 = sub_100935E88(0);
      v146 = v145;
      sub_1008ED8B0(v139, type metadata accessor for SenderKeyAndState);
      v147 = sub_10001273C(v144, v146, &v213);

      *(v142 + 4) = v147;
      v91 = v203;
      _os_log_impl(&_mh_execute_header, v140, v141, "We found a usable key: %s is acked by recently active device", v142, 0xCu);
      sub_100012970(v143);

      v136 = v209;
      sub_100013814(v209, &unk_100CB4A50);
    }

    else
    {

      v136 = v209;
      sub_100013814(v209, &unk_100CB4A50);
      sub_1008ED8B0(v139, type metadata accessor for SenderKeyAndState);
    }

    v148 = v199;
    v149 = v202;
    v150 = v200;
    sub_1008F24C4(v193, v136, type metadata accessor for SenderKeyAndState);
    (v184)(v136, 0, 1, v210);
    goto LABEL_45;
  }

  sub_100013814(v109 + v111, &unk_100CB4A50);
  sub_100013814(v109 + v110, &unk_100CB4A50);
  sub_100013814(v109, &unk_100CB4A50);
  v112 = v187;
  sub_100012D50(v91, v187, &unk_100CB4FC0);
  v113 = *(v108 + 48);
  v114 = *(v108 + 64);
  v106 = v105;
  if (v105(v112 + v113, 1, v210) == 1)
  {
    sub_100013814(v112 + v114, &unk_100CB4A50);
    sub_100013814(v112 + v113, &unk_100CB4A50);
    sub_100013814(v112, &unk_100CB4A50);
    v115 = sub_1009364B8();
    v116 = sub_100936F18();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "We did not find any key", v117, 2u);
    }

    goto LABEL_44;
  }

  v151 = v186;
  sub_1008F24C4(v112 + v113, v186, type metadata accessor for SenderKeyAndState);
  sub_100013814(v112 + v114, &unk_100CB4A50);
  sub_100013814(v112, &unk_100CB4A50);
  v152 = v185;
  sub_1008ED848(v151, v185, type metadata accessor for SenderKeyAndState);
  v153 = sub_1009364B8();
  v154 = sub_100936F18();
  if (!os_log_type_enabled(v153, v154))
  {

    sub_1008ED8B0(v151, type metadata accessor for SenderKeyAndState);
    sub_1008ED8B0(v152, type metadata accessor for SenderKeyAndState);
LABEL_44:
    v148 = v199;
    v149 = v202;
    v150 = v200;
    v136 = v209;
    v91 = v203;
    goto LABEL_45;
  }

  v155 = swift_slowAlloc();
  v156 = swift_slowAlloc();
  v213 = v156;
  *v155 = 136315138;
  v157 = sub_100935E88(0);
  v159 = v158;
  sub_1008ED8B0(v152, type metadata accessor for SenderKeyAndState);
  v160 = sub_10001273C(v157, v159, &v213);

  *(v155 + 4) = v160;
  v91 = v203;
  _os_log_impl(&_mh_execute_header, v153, v154, "We did not find a usable key: %s is not acked by all Stewie capable devices", v155, 0xCu);
  sub_100012970(v156);

  sub_1008ED8B0(v151, type metadata accessor for SenderKeyAndState);
  v148 = v199;
  v149 = v202;
  v150 = v200;
  v136 = v209;
LABEL_45:
  v161 = type metadata accessor for SenderKeyDistributionManager(0);
  (*(v161 + 816))();
  v162 = v198;
  sub_100936028();
  sub_100935F48();
  v165 = *(v149 + 8);
  v163 = v149 + 8;
  v164 = v165;
  v165(v162, v148);
  v166 = v197;
  sub_100012D50(v136, v197, &unk_100CB4A50);
  v167 = v136;
  if (v106(v166, 1, v210) == 1)
  {
    v164(v150, v148);
    sub_100013814(v91, &unk_100CB4FC0);
    v168 = &unk_100CB4A50;
    v169 = v166;
LABEL_51:
    sub_100013814(v169, v168);
    return sub_100021E3C(v167, v204, &unk_100CB4A50);
  }

  v170 = v194;
  sub_1008F24C4(v166, v194, type metadata accessor for SenderKeyAndState);
  type metadata accessor for SenderKeyInfo(0);
  if ((sub_100935F78() & 1) == 0)
  {
    sub_1008ED8B0(v170, type metadata accessor for SenderKeyAndState);
    v164(v150, v148);
    v168 = &unk_100CB4FC0;
    v169 = v91;
    goto LABEL_51;
  }

  v202 = v163;
  v171 = v189;
  sub_1008ED848(v170, v189, type metadata accessor for SenderKeyAndState);
  v172 = sub_1009364B8();
  v173 = sub_100936F18();
  if (os_log_type_enabled(v172, v173))
  {
    v174 = swift_slowAlloc();
    v175 = v148;
    v176 = swift_slowAlloc();
    v213 = v176;
    *v174 = 136315138;
    v177 = sub_100935E88(0);
    v179 = v178;
    sub_1008ED8B0(v171, type metadata accessor for SenderKeyAndState);
    v180 = sub_10001273C(v177, v179, &v213);

    *(v174 + 4) = v180;
    _os_log_impl(&_mh_execute_header, v172, v173, "Found key %s is expired - returning nil", v174, 0xCu);
    sub_100012970(v176);

    sub_1008ED8B0(v194, type metadata accessor for SenderKeyAndState);
    v164(v200, v175);
    sub_100013814(v209, &unk_100CB4A50);
    v181 = v203;
  }

  else
  {

    sub_1008ED8B0(v170, type metadata accessor for SenderKeyAndState);
    v164(v200, v148);
    sub_100013814(v209, &unk_100CB4A50);
    sub_1008ED8B0(v171, type metadata accessor for SenderKeyAndState);
    v181 = v91;
  }

  sub_100013814(v181, &unk_100CB4FC0);
  return (v184)(v204, 1, 1, v210);
}

uint64_t sub_1008A8848(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a1;
  v12 = sub_100706B30(&unk_100CB4A50);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for SenderKeyAndState(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v16(a2, 1, 1, v15);
  v16(a3, 1, 1, v15);
  v21 = v6;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a3;
  v26 = v14;
  v27 = a2;
  (*((swift_isaMask & *v6) + 0x118))(0, sub_1008F4E88, v20);
  sub_100012D50(v14, v19, &unk_100CB4A50);
  return sub_100013814(v14, &unk_100CB4A50);
}

uint64_t sub_1008A8B6C@<X0>(uint64_t *a1@<X0>, void (*a2)(char *, void, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a3;
  v63 = a4;
  v58 = a2;
  v65 = sub_100935D38();
  v5 = *(v65 - 8);
  (__chkstk_darwin)();
  v56 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100706B30(&qword_100CBA628);
  v67 = *(v59 - 8);
  (__chkstk_darwin)();
  v8 = v42 - v7;
  v9 = sub_100706B30(&qword_100CBAE58);
  v10 = *(v9 - 8);
  (__chkstk_darwin)();
  v12 = v42 - v11;
  v64 = sub_100706B30(&qword_100CBAE48);
  v66 = *(v64 - 8);
  (__chkstk_darwin)();
  v14 = v42 - v13;
  v15 = sub_100706B30(&qword_100CBAE50);
  v16 = *(v15 - 8);
  v60 = v15;
  v61 = v16;
  v17 = (__chkstk_darwin)();
  v57 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v54 = *a1;
  v55 = v42 - v19;
  v50 = sub_100014C88(&qword_100CBAE70, &qword_100CBAE58);
  sub_100935D58();
  swift_getKeyPath();
  v47 = v12;
  v48 = v9;
  sub_100935C78();

  v20 = *(v10 + 8);
  v52 = v10 + 8;
  v53 = v20;
  v20(v12, v9);
  v51 = sub_100936038();
  sub_100935D48();
  v21 = *(v5 + 104);
  v49 = v5 + 104;
  v58 = v21;
  v22 = v56;
  v23 = v65;
  v21(v56, enum case for PredicateExpressions.ComparisonOperator.lessThanOrEqual(_:), v65);
  v46 = sub_100014C88(&qword_100CBAE80, &qword_100CBAE48);
  v45 = sub_100014C88(&qword_100CBA688, &qword_100CBA628);
  v44 = sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
  v24 = v8;
  v25 = v22;
  v26 = v64;
  v27 = v59;
  sub_100935CD8();
  v28 = *(v5 + 8);
  v42[1] = v5 + 8;
  v43 = v28;
  v28(v25, v23);
  v29 = *(v67 + 8);
  v67 += 8;
  v29(v24, v27);
  v30 = *(v66 + 8);
  v66 += 8;
  v30(v14, v26);
  v31 = v47;
  v32 = v48;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v53(v31, v32);
  sub_100935D48();
  v33 = v65;
  v58(v25, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v65);
  v34 = v57;
  v35 = v64;
  sub_100935CD8();
  v43(v25, v33);
  v29(v24, v27);
  v30(v14, v35);
  v36 = sub_100706B30(&qword_100CBB1D8);
  v37 = v63;
  v63[3] = v36;
  v37[4] = sub_1008F4B04();
  sub_100014250(v37);
  sub_100014C88(&qword_100CBAEC8, &qword_100CBAE50);
  v38 = v55;
  v39 = v60;
  sub_100935D08();
  v40 = *(v61 + 8);
  v40(v34, v39);
  return (v40)(v38, v39);
}

uint64_t sub_1008A9298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100706B30(&qword_100CBA418);
  __chkstk_darwin(v6 - 8);
  v8 = &v30[-v7];
  v9 = sub_100706B30(&qword_100CBA9B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v30[-v10];
  v12 = sub_100706B30(&qword_100CBABB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v30[-v13];
  v15 = sub_100706B30(&qword_100CBA9A8);
  __chkstk_darwin(v15 - 8);
  v17 = &v30[-v16];
  v18 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v31 = a2;
  v32 = a3;
  v36 = v18;
  sub_100936128();
  v19 = sub_100706B30(&unk_100CBA340);
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936748();
  if (v3)
  {
    return sub_100013814(v17, &qword_100CBA9A8);
  }

  sub_100013814(v17, &qword_100CBA9A8);
  v21 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  __chkstk_darwin(v21);
  *&v30[-16] = a2;
  *&v30[-8] = a3;
  v35 = v22;
  sub_100936128();
  v23 = sub_100706B30(&qword_100CBA358);
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  sub_100014C40(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936748();
  sub_100013814(v14, &qword_100CBABB0);
  v24 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  __chkstk_darwin(v24);
  *&v30[-16] = a2;
  *&v30[-8] = a3;
  v34 = v25;
  sub_100936128();
  v26 = sub_100706B30(&qword_100CBA350);
  (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
  sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936748();
  sub_100013814(v11, &qword_100CBA9B0);
  v27 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus(0);
  __chkstk_darwin(v27);
  *&v30[-16] = a2;
  *&v30[-8] = a3;
  v33 = v28;
  sub_100936128();
  v29 = sub_100706B30(&unk_100CBA420);
  (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
  sub_100014C40(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936748();
  return sub_100013814(v8, &qword_100CBA418);
}

uint64_t sub_1008A9878@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_100706B30(&qword_100CBA4C0);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_100706B30(&qword_100CBA9D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_100706B30(&qword_100CBA9D8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_100014C88(&qword_100CBA9E8, &qword_100CBA9D0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  v22 = v18;
  v23 = v19;
  sub_100935D48();
  a3[3] = sub_100706B30(&qword_100CBA9E0);
  a3[4] = sub_1008F1288();
  sub_100014250(a3);
  sub_100014C88(&qword_100CBA9F0, &qword_100CBA9D8);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v16 = v20;
  sub_100935C68();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1008A9BE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_100706B30(&qword_100CBA4C0);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_100706B30(&qword_100CBB010);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_100706B30(&qword_100CBB050);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_100014C88(&qword_100CBB020, &qword_100CBB010);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  v22 = v18;
  v23 = v19;
  sub_100935D48();
  a3[3] = sub_100706B30(&qword_100CBB058);
  a3[4] = sub_1008F3DC0();
  sub_100014250(a3);
  sub_100014C88(&qword_100CBB060, &qword_100CBB050);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v16 = v20;
  sub_100935C68();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1008A9F50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_100706B30(&qword_100CBA4C0);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_100706B30(&qword_100CBAA28);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_100706B30(&qword_100CBAF28);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_100014C88(&qword_100CBAA38, &qword_100CBAA28);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  v22 = v18;
  v23 = v19;
  sub_100935D48();
  a3[3] = sub_100706B30(&qword_100CBAF30);
  a3[4] = sub_1008F3750();
  sub_100014250(a3);
  sub_100014C88(&qword_100CBAF40, &qword_100CBAF28);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v16 = v20;
  sub_100935C68();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1008AA2BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_100706B30(&qword_100CBA4C0);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_100706B30(&qword_100CBA440);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_100706B30(&qword_100CBA448);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_100014C88(&qword_100CBA468, &qword_100CBA440);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  v22 = v18;
  v23 = v19;
  sub_100935D48();
  a3[3] = sub_100706B30(&qword_100CBA4C8);
  a3[4] = sub_1008EF688();
  sub_100014250(a3);
  sub_100014C88(&qword_100CBA478, &qword_100CBA448);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v16 = v20;
  sub_100935C68();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1008AA79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v12 = sub_100706B30(&qword_100CBA9B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = sub_100706B30(&qword_100CBA9A8);
  __chkstk_darwin(v15 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v32 = v18;
  sub_100936128();
  v19 = sub_100706B30(&unk_100CBA340);
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936748();
  result = sub_100013814(v17, &qword_100CBA9A8);
  if (!v7)
  {
    v21 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
    __chkstk_darwin(v21);
    *(&v25 - 6) = a2;
    *(&v25 - 5) = a3;
    v22 = v26;
    *(&v25 - 4) = v25;
    *(&v25 - 3) = v22;
    *(&v25 - 2) = a4;
    *(&v25 - 1) = a5;
    v31 = v23;
    sub_100936128();
    v24 = sub_100706B30(&qword_100CBA350);
    (*(*(v24 - 8) + 56))(v14, 0, 1, v24);
    sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
    sub_100936748();
    return sub_100013814(v14, &qword_100CBA9B0);
  }

  return result;
}

uint64_t sub_1008AAAB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a6;
  v45 = sub_100706B30(&qword_100CBA4C0);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v33 - v7;
  v9 = sub_100706B30(&qword_100CBA9D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = sub_100706B30(&qword_100CBA9D8);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = sub_100706B30(&qword_100CBA9E0);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  __chkstk_darwin(v16);
  v37 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = *a1;
  v36 = v33 - v20;
  sub_100014C88(&qword_100CBA9E8, &qword_100CBA9D0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v21 = *(v10 + 8);
  v33[1] = v10 + 8;
  v34 = v21;
  v21(v12, v9);
  v48 = v38;
  v49 = v39;
  sub_100935D48();
  v39 = sub_100014C88(&qword_100CBA9F0, &qword_100CBA9D8);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v22 = v45;
  sub_100935C68();
  v23 = *(v47 + 8);
  v47 += 8;
  v23(v8, v22);
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v15, v13);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v34(v12, v9);
  v48 = v42;
  v49 = v43;
  sub_100935D48();
  v25 = v37;
  v26 = v45;
  sub_100935C68();
  v23(v8, v26);
  v24(v15, v13);
  v27 = sub_100706B30(&qword_100CBA9F8);
  v28 = v44;
  v44[3] = v27;
  v28[4] = sub_1008F1204();
  sub_100014250(v28);
  sub_100014C88(&qword_100CBAA20, &qword_100CBA9E0);
  v29 = v36;
  v30 = v40;
  sub_100935CF8();
  v31 = *(v41 + 8);
  v31(v25, v30);
  return (v31)(v29, v30);
}

uint64_t sub_1008AB258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v10 = sub_100706B30(&qword_100CBA9B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_100706B30(&qword_100CBA9A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v30 = v16;
  sub_100936128();
  v17 = sub_100706B30(&unk_100CBA340);
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936748();
  result = sub_100013814(v15, &qword_100CBA9A8);
  if (!v6)
  {
    v19 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
    __chkstk_darwin(v19);
    v21 = v24;
    v20 = v25;
    *(&v24 - 6) = a2;
    *(&v24 - 5) = v21;
    *(&v24 - 4) = v20;
    *(&v24 - 3) = a3;
    *(&v24 - 2) = a4;
    v29 = v22;
    sub_100936128();
    v23 = sub_100706B30(&qword_100CBA350);
    (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
    sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
    sub_100936748();
    return sub_100013814(v12, &qword_100CBA9B0);
  }

  return result;
}

uint64_t sub_1008AB570@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a5;
  v7 = sub_100706B30(&qword_100CBA4C0);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  __chkstk_darwin(v7);
  v50 = v39 - v9;
  v10 = sub_100706B30(&qword_100CBA9E0);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  __chkstk_darwin(v10);
  v49 = v39 - v12;
  v13 = sub_100706B30(&qword_100CBA9D0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v39 - v15;
  v46 = sub_100706B30(&qword_100CBA9D8);
  v58 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = v39 - v17;
  v19 = sub_100706B30(&qword_100CBA450);
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  __chkstk_darwin(v19);
  v22 = v39 - v21;
  v23 = sub_100706B30(&qword_100CBB178);
  v24 = *(v23 - 8);
  v47 = v23;
  v48 = v24;
  __chkstk_darwin(v23);
  v43 = v39 - v25;
  v41 = *a1;
  v59 = a2;
  sub_100706B30(&qword_100CBA460);
  sub_100935D48();
  sub_100014C88(&qword_100CBA9E8, &qword_100CBA9D0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v26 = *(v14 + 8);
  v39[1] = v14 + 8;
  v40 = v26;
  v26(v16, v13);
  v42 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA470, &qword_100CBA450);
  sub_100014C88(&qword_100CBA9F0, &qword_100CBA9D8);
  sub_100014C88(&qword_100CBA480, &qword_100CBA460);
  v27 = v44;
  v28 = v46;
  sub_100935CA8();
  v29 = *(v58 + 8);
  v58 += 8;
  v29(v18, v28);
  (*(v45 + 8))(v22, v27);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v40(v16, v13);
  v59 = v51;
  v60 = v52;
  v30 = v50;
  sub_100935D48();
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v31 = v49;
  v32 = v53;
  sub_100935C68();
  (*(v54 + 8))(v30, v32);
  v29(v18, v28);
  v33 = sub_100706B30(&qword_100CBB1C8);
  v34 = v55;
  v55[3] = v33;
  v34[4] = sub_1008F49FC();
  sub_100014250(v34);
  sub_100014C88(&qword_100CBB198, &qword_100CBB178);
  sub_100014C88(&qword_100CBAA20, &qword_100CBA9E0);
  v35 = v43;
  v36 = v47;
  v37 = v56;
  sub_100935CF8();
  (*(v57 + 8))(v31, v37);
  return (*(v48 + 8))(v35, v36);
}

uint64_t sub_1008ABC98@<X0>(uint64_t *a1@<X0>, void (*a2)(void, void)@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v59 = a5;
  v60 = a6;
  v55 = a4;
  v54 = a3;
  v61 = a7;
  v70 = sub_100706B30(&qword_100CBA4C0);
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v47 - v9;
  v58 = sub_100706B30(&qword_100CBAF30);
  v73 = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = &v47 - v10;
  v11 = sub_100706B30(&qword_100CBAA28);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v67 = sub_100706B30(&qword_100CBAF28);
  v71 = *(v67 - 8);
  __chkstk_darwin(v67);
  v16 = &v47 - v15;
  v49 = sub_100706B30(&qword_100CBA450);
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v18 = &v47 - v17;
  v51 = sub_100706B30(&qword_100CBB150);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v47 - v19;
  v20 = sub_100706B30(&qword_100CBB1A0);
  v21 = *(v20 - 8);
  v56 = v20;
  v57 = v21;
  __chkstk_darwin(v20);
  v69 = &v47 - v22;
  v66 = *a1;
  v74 = a2;
  sub_100706B30(&qword_100CBA460);
  sub_100935D48();
  v62 = sub_100014C88(&qword_100CBAA38, &qword_100CBAA28);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v23 = *(v12 + 8);
  v64 = v12 + 8;
  v65 = v23;
  v23(v14, v11);
  sub_100014C88(&qword_100CBA470, &qword_100CBA450);
  v24 = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28);
  sub_100014C88(&qword_100CBA480, &qword_100CBA460);
  v25 = v16;
  v26 = v49;
  v27 = v67;
  v47 = v24;
  sub_100935CA8();
  v28 = v71 + 8;
  v63 = *(v71 + 8);
  v63(v25, v27);
  v71 = v28;
  (*(v50 + 8))(v18, v26);
  v29 = v14;
  v30 = v11;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v65(v14, v11);
  v74 = v54;
  v75 = v55;
  v31 = v68;
  sub_100935D48();
  v55 = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v32 = v53;
  v33 = v70;
  sub_100935C68();
  v34 = *(v72 + 8);
  v72 += 8;
  v54 = v34;
  v34(v31, v33);
  v63(v25, v27);
  sub_100014C88(&qword_100CBB170, &qword_100CBB150);
  sub_100014C88(&qword_100CBAF48, &qword_100CBAF30);
  v35 = v48;
  v36 = v51;
  v37 = v58;
  sub_100935CF8();
  v38 = *(v73 + 8);
  v73 += 8;
  v38(v32, v37);
  (*(v52 + 8))(v35, v36);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v65(v29, v30);
  v74 = v59;
  v75 = v60;
  v39 = v68;
  sub_100935D48();
  v40 = v67;
  v41 = v70;
  sub_100935C68();
  v54(v39, v41);
  v63(v25, v40);
  v42 = sub_100706B30(&qword_100CBB1A8);
  v43 = v61;
  v61[3] = v42;
  v43[4] = sub_1008F48E4();
  sub_100014250(v43);
  sub_100014C88(&qword_100CBB1C0, &qword_100CBB1A0);
  v44 = v69;
  v45 = v56;
  sub_100935CF8();
  v38(v32, v37);
  return (*(v57 + 8))(v44, v45);
}

uint64_t sub_1008AC850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a3;
  v47 = a4;
  v6 = sub_100706B30(&qword_100CBA9D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  v43 = sub_100706B30(&qword_100CBA9D8);
  v49 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = v35 - v10;
  v12 = sub_100706B30(&qword_100CBA450);
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v15 = sub_100706B30(&qword_100CBB178);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  v17 = __chkstk_darwin(v15);
  v42 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v41 = v35 - v19;
  v39 = *a1;
  v50 = a2;
  v40 = sub_100706B30(&qword_100CBA460);
  sub_100935D48();
  sub_100014C88(&qword_100CBA9E8, &qword_100CBA9D0);
  sub_100935D58();
  swift_getKeyPath();
  v36 = v6;
  sub_100935C78();

  v20 = *(v7 + 8);
  v37 = v7 + 8;
  v38 = v20;
  v20(v9, v6);
  v35[2] = sub_100014C88(&qword_100CBA470, &qword_100CBA450);
  v35[1] = sub_100014C88(&qword_100CBA9F0, &qword_100CBA9D8);
  sub_100014C88(&qword_100CBA480, &qword_100CBA460);
  v21 = v12;
  v35[0] = v12;
  v22 = v43;
  sub_100935CA8();
  v23 = *(v49 + 8);
  v49 += 8;
  v24 = v22;
  v23(v11, v22);
  v25 = *(v48 + 8);
  v48 += 8;
  v25(v14, v21);
  v50 = v44;
  sub_100935D48();
  v26 = v36;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v38(v9, v26);
  v27 = v42;
  v28 = v35[0];
  sub_100935CA8();
  v23(v11, v24);
  v25(v14, v28);
  v29 = sub_100706B30(&qword_100CBB180);
  v30 = v47;
  v47[3] = v29;
  v30[4] = sub_1008F4798();
  sub_100014250(v30);
  sub_100014C88(&qword_100CBB198, &qword_100CBB178);
  v31 = v41;
  v32 = v45;
  sub_100935CF8();
  v33 = *(v46 + 8);
  v33(v27, v32);
  return (v33)(v31, v32);
}

uint64_t sub_1008ACE48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a3;
  v47 = a4;
  v6 = sub_100706B30(&qword_100CBAA28);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  v43 = sub_100706B30(&qword_100CBAF28);
  v49 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = v35 - v10;
  v12 = sub_100706B30(&qword_100CBA450);
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v15 = sub_100706B30(&qword_100CBB150);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  v17 = __chkstk_darwin(v15);
  v42 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v41 = v35 - v19;
  v39 = *a1;
  v50 = a2;
  v40 = sub_100706B30(&qword_100CBA460);
  sub_100935D48();
  sub_100014C88(&qword_100CBAA38, &qword_100CBAA28);
  sub_100935D58();
  swift_getKeyPath();
  v36 = v6;
  sub_100935C78();

  v20 = *(v7 + 8);
  v37 = v7 + 8;
  v38 = v20;
  v20(v9, v6);
  v35[2] = sub_100014C88(&qword_100CBA470, &qword_100CBA450);
  v35[1] = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28);
  sub_100014C88(&qword_100CBA480, &qword_100CBA460);
  v21 = v12;
  v35[0] = v12;
  v22 = v43;
  sub_100935CA8();
  v23 = *(v49 + 8);
  v49 += 8;
  v24 = v22;
  v23(v11, v22);
  v25 = *(v48 + 8);
  v48 += 8;
  v25(v14, v21);
  v50 = v44;
  sub_100935D48();
  v26 = v36;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v38(v9, v26);
  v27 = v42;
  v28 = v35[0];
  sub_100935CA8();
  v23(v11, v24);
  v25(v14, v28);
  v29 = sub_100706B30(&qword_100CBB158);
  v30 = v47;
  v47[3] = v29;
  v30[4] = sub_1008F4688();
  sub_100014250(v30);
  sub_100014C88(&qword_100CBB170, &qword_100CBB150);
  v31 = v41;
  v32 = v45;
  sub_100935CF8();
  v33 = *(v46 + 8);
  v33(v27, v32);
  return (v33)(v31, v32);
}

uint64_t sub_1008AD440()
{
  v1 = sub_100706B30(&qword_100CBAE30);
  __chkstk_darwin(v1 - 8);
  v3 = v18 - v2;
  v4 = sub_100706B30(&qword_100CBA9B0);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_100706B30(&qword_100CBABB0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  v10 = sub_100706B30(&qword_100CBA9A8);
  __chkstk_darwin(v10 - 8);
  v12 = v18 - v11;
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v13 = sub_100706B30(&unk_100CBA340);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936748();
  result = sub_100013814(v12, &qword_100CBA9A8);
  if (!v0)
  {
    type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
    v15 = sub_100706B30(&qword_100CBA358);
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    sub_100014C40(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
    sub_100936748();
    sub_100013814(v9, &qword_100CBABB0);
    type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
    v16 = sub_100706B30(&qword_100CBA350);
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
    sub_100936748();
    sub_100013814(v6, &qword_100CBA9B0);
    type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
    v17 = sub_100706B30(&qword_100CBA360);
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
    sub_100014C40(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
    sub_100936748();
    return sub_100013814(v3, &qword_100CBAE30);
  }

  return result;
}

uint64_t sub_1008ADA14(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, unint64_t a8)
{
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);

  sub_100715738(a4, a5);
  v15 = [a6 prefixedURI];
  v16 = sub_100936B38();
  v18 = v17;

  sub_100715738(a7, a8);
  sub_100758958(a2, a3, a4, a5, v16, v18, a7, a8);
  sub_100014C40(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936768();
}

void sub_1008ADD7C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v158 = a7;
  v161 = a5;
  v192 = a4;
  v191 = a3;
  v193 = a1;
  v157 = sub_100936038();
  v9 = *(v157 - 8);
  __chkstk_darwin(v157);
  v156 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v155 = &v146 - v12;
  __chkstk_darwin(v13);
  v154 = &v146 - v14;
  __chkstk_darwin(v15);
  v153 = &v146 - v16;
  if (a2 >> 62)
  {
    v17 = sub_1009373F8();
  }

  else
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v160 = v17;
  v200 = v9;
  if (v17)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = sub_100937268();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v18 = *(a2 + 32);
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v161 prefixedURI];
  v21 = sub_100936B38();
  v23 = v22;

  v159 = a2;
  v146 = v19;
  if (v19)
  {
    v24 = [v19 senderCorrelationIdentifier];
    if (v24)
    {
      v25 = v24;
      v26 = sub_100936B38();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v30 = [v19 shortHandle];
    if (v30)
    {
      v31 = v30;
      v29 = sub_100936B38();
      v19 = v32;
    }

    else
    {
      v29 = 0;
      v19 = 0;
    }
  }

  else
  {
    v29 = 0;
    v26 = 0;
    v28 = 0;
  }

  v33 = type metadata accessor for ArchiveHelper();
  sub_100014170(0, &qword_100CBA560);
  v34 = sub_100715DCC();
  v152 = v33;
  v35 = sub_100715DD4(a6, v34 & 1);
  v37 = v36;
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v38 = v192;

  v39 = sub_10074F59C(v191, v38, v21, v23, v26, v28, v29, v19, v35, v37);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  v190 = v39;
  sub_100936768();
  v40 = v159;
  v41 = v160;
  if (v160)
  {
    v151 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
    v150 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
    if (v41 >= 1)
    {
      v42 = 0;
      v43 = v40;
      v149 = v40 & 0xC000000000000001;
      v148 = (v200 + 16);
      v147 = (v200 + 8);
      do
      {
        v200 = v42;
        if (v149)
        {
          v70 = sub_100937268();
        }

        else
        {
          v70 = *(v43 + 8 * v42 + 32);
        }

        v71 = v70;
        v72 = [v70 pushTokenObject];
        v73 = [v72 rawToken];

        v189 = sub_100935EA8();
        v188 = v74;

        v75 = [v71 capabilities];
        v187 = [v71 ngmVersion];
        v186 = [v71 legacyVersion];
        v76 = [v71 KTLoggableData];
        if (v76)
        {
          v77 = v76;
          v78 = sub_100935EA8();
          v198 = v79;
          v199 = v78;
        }

        else
        {
          v198 = 0xF000000000000000;
          v199 = 0;
        }

        v80 = [v71 KTDeviceSignature];
        if (v80)
        {
          v81 = v80;
          v197 = sub_100935EA8();
          v195 = v82;
        }

        else
        {
          v197 = 0;
          v195 = 0xF000000000000000;
        }

        v83 = [v71 transparency];
        v84 = [v71 serializedLegacyPublicIdentity];
        if (v84)
        {
          v85 = v84;
          v196 = sub_100935EA8();
          v194 = v86;
        }

        else
        {
          v196 = 0;
          v194 = 0xF000000000000000;
        }

        v87 = [v71 serializedNGMDeviceIdentity];
        if (v87)
        {
          v88 = v87;
          v185 = sub_100935EA8();
          v184 = v89;
        }

        else
        {
          v185 = 0;
          v184 = 0xF000000000000000;
        }

        v90 = [v71 serializedNGMDevicePrekey];
        if (v90)
        {
          v91 = v90;
          v182 = sub_100935EA8();
          v181 = v92;
        }

        else
        {
          v182 = 0;
          v181 = 0xF000000000000000;
        }

        v93 = [v71 serializedApplicationPublicKey];
        if (v93)
        {
          v94 = v93;
          v180 = sub_100935EA8();
          v179 = v95;
        }

        else
        {
          v180 = 0;
          v179 = 0xF000000000000000;
        }

        v178 = [v71 mismatchedAccountFlag];
        v177 = [v71 ktCapableFlag];
        v96 = [v71 anonymizedSenderID];
        if (v96)
        {
          v97 = v96;
          v176 = sub_100936B38();
          v175 = v98;
        }

        else
        {
          v176 = 0;
          v175 = 0;
        }

        v174 = [v71 verifiedBusiness];
        v99 = [v71 gameCenterData];
        v169 = v99;
        v183 = v71;
        v100 = [v71 familyEndpointData];
        v166 = v100;
        sub_100014170(0, &qword_100CBA320);
        v101 = sub_100715DCC();
        v102 = sub_100715DD4(v75, v101 & 1);
        if (v103 >> 60 == 15)
        {
          v104 = 0;
        }

        else
        {
          v104 = v102;
        }

        v172 = v104;
        v105 = 0xC000000000000000;
        if (v103 >> 60 != 15)
        {
          v105 = v103;
        }

        v171 = v105;
        sub_100014170(0, &qword_100CBA328);
        v106 = sub_100715DCC();
        v170 = sub_100715DD4(v83, v106 & 1);
        v168 = v107;
        sub_100014170(0, &qword_100CBA330);
        v108 = sub_100715DCC();
        v109 = sub_100715DD4(v99, v108 & 1);
        v173 = v75;
        v165 = v109;
        v164 = v110;
        sub_100014170(0, &qword_100CBA338);
        v111 = sub_100715DCC();
        v163 = sub_100715DD4(v100, v111 & 1);
        v162 = v112;
        v113 = v199;
        v167 = v83;
        v114 = v198;
        sub_1007483B0(v199, v198);
        v115 = v197;
        sub_1007483B0(v197, v195);
        v116 = v196;
        sub_1007483B0(v196, v194);
        v117 = v185;
        v118 = v184;
        sub_1007483B0(v185, v184);
        v119 = v182;
        v120 = v181;
        sub_1007483B0(v182, v181);
        v121 = v180;
        v122 = v179;
        sub_1007483B0(v180, v179);
        v144.n128_u64[0] = v119;
        v144.n128_u64[1] = v120;
        *&v141 = v117;
        *(&v141 + 1) = v118;
        v123 = v115;
        v124 = v195;
        v125 = v116;
        v126 = v194;
        sub_100755030(v113, v114, v123, v195, v187, v186, v125, v194, v202, v141, v144, v121, v122);
        v127 = v192;

        *(&v145 + 1) = v162;
        *&v145 = v163;
        *(&v142 + 1) = v164;
        *&v142 = v165;
        *(&v140 + 1) = v175;
        *&v140 = v176;
        *(&v139 + 1) = v168;
        *&v139 = v170;
        v128 = sub_100753BE4(v191, v127, v189, v188, v172, v171, v178, v177, v139, v140, v174, v142, v145, v202);

        sub_10001C370(v121, v122);
        sub_10001C370(v119, v120);
        sub_10001C370(v117, v118);
        sub_10001C370(v196, v126);

        sub_10001C370(v197, v124);
        sub_10001C370(v199, v198);

        sub_100014C40(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
        sub_100936768();
        v201 = sub_10074F118();
        v189 = v128;
        if (v201)
        {

          sub_100936CC8();
          if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100936D18();
          }

          sub_100936D38();
        }

        ++v200;
        sub_10074F41C();
        v44 = [v158 prefixedURI];
        v45 = sub_100936B38();
        v198 = v46;
        v199 = v45;

        v47 = [v161 prefixedURI];
        v48 = sub_100936B38();
        v196 = v49;
        v197 = v48;

        v50 = v183;
        v51 = [v183 pushTokenObject];
        v52 = [v51 rawToken];

        v195 = sub_100935EA8();
        v194 = v53;

        v54 = [v50 sessionToken];
        v55 = sub_100935EA8();
        v57 = v56;

        v58 = [v50 expireDate];
        v59 = v153;
        sub_100935FE8();

        v60 = [v50 refreshDate];
        v61 = v154;
        sub_100935FE8();

        [v50 queryTimeInterval];
        v63 = v62;
        v64 = *v148;
        v65 = v155;
        v66 = v157;
        (*v148)(v155, v59, v157);
        v67 = v156;
        v64(v156, v61, v66);
        v68 = v192;

        v143._countAndFlagsBits = v55;
        v143._object = v57;
        sub_100756E3C(v191, v68, v199, v198, v197, v196, v195, v194, v63, v143, v65, v67);
        v69 = *v147;
        (*v147)(v61, v66);
        v69(v59, v66);
        sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
        sub_100936768();

        v42 = v200;
        v43 = v159;
      }

      while (v160 != v200);
      goto LABEL_54;
    }

    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

LABEL_54:
  v129 = v146;
  if (v146)
  {
    v130 = [v146 shortHandle];
    if (v130)
    {
      v131 = v130;
      v132 = sub_100936B38();
      v134 = v133;

      type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle(0);
      v135 = [v161 prefixedURI];
      v136 = sub_100936B38();
      v138 = v137;

      sub_100759B48(v136, v138, v132, v134);
      sub_100014C40(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
      sub_100936768();

      return;
    }
  }
}

void sub_1008AEFB8(uint64_t a1, int a2, void *a3, NSObject *a4, id a5, void *a6)
{
  v7 = a5;
  v11 = [a5 prefixedURI];
  v12 = sub_100936B38();
  v14 = v13;

  v15 = sub_1008AF68C(a3, a4, v12, v14, a1);

  if (!v15)
  {
    sub_1008F460C();
    swift_allocError();
    *v54 = 7;
    swift_willThrow();
    return;
  }

  v16 = type metadata accessor for ArchiveHelper();
  sub_100014170(0, &qword_100CBA560);
  v17 = sub_100715DCC();
  v18 = sub_100715DD4(a6, v17 & 1);
  sub_10074EF68(v18, v19);
  v20 = sub_10074F118();
  if (v20)
  {
    v21 = v20;
    v22 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 >> 62)
    {
LABEL_25:
      v23 = sub_1009373F8();
      if (v23)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_5:
        a6 = sub_1008EBBAC(a6);
        v69 = v24;
        v25 = 0;
        v70 = v21 & 0xC000000000000001;
        v67 = v23;
        v68 = v22;
        v66 = a6;
        v62 = v21;
        v63 = v16;
        while (1)
        {
          if (v70)
          {
            v22 = sub_100937268();
            v26 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v25 >= *(v22 + 16))
            {
              goto LABEL_24;
            }

            v22 = *(v21 + 8 * v25 + 32);

            v26 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }
          }

          v27 = sub_100751C10();
          v29 = v27;
          v30 = v28;
          v72 = v26;
          v73 = v25;
          if (a6[2] && (v31 = sub_1008E4CC8(v27, v28, &Data.hash(into:), sub_1007BCDC0), (v32 & 1) != 0))
          {
            v33 = *(a6[7] + 8 * v31);
            sub_1007156D8(v29, v30);

            v34 = [v33 result];
            v71 = v33;
            v35 = [v33 failure];
            v36 = v34;
            v37 = 0;
          }

          else
          {

            sub_1007156D8(v29, v30);
            v35 = 0;
            v36 = 0;
            v71 = 0;
            v37 = 1;
          }

          v38 = sub_1008EBAAC(v36, v37, v35, v69);

          sub_100014170(0, &qword_100CBA328);
          a3 = v38;
          v39 = sub_100715DCC();
          v40 = sub_100715DD4(v38, v39 & 1);
          v7 = v41;

          sub_100752B0C(v40, v7);
          v42 = a3;

          a4 = sub_1009364B8();
          v43 = sub_100936ED8();
          if (os_log_type_enabled(a4, v43))
          {
            v64 = v43;
            log = a4;
            v44 = swift_slowAlloc();
            a3 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v74 = v45;
            *v44 = 136315394;
            v46 = sub_100751C10();
            v48 = v47;
            isa = sub_100935E78().super.isa;
            sub_1007156D8(v46, v48);
            v50 = [(objc_class *)isa __imHexString];

            if (!v50)
            {
              __break(1u);
              return;
            }

            v51 = sub_100936B38();
            v7 = v52;

            v53 = sub_10001273C(v51, v7, &v74);

            *(v44 + 4) = v53;
            *(v44 + 12) = 2112;
            *(v44 + 14) = v42;
            *a3 = v38;
            a4 = v42;
            _os_log_impl(&_mh_execute_header, log, v64, "Setting ktstatus for pushtoken: %s to %@", v44, 0x16u);
            sub_100013814(a3, &qword_100CB36B0);

            sub_100012970(v45);

            v21 = v62;
            v16 = v63;
          }

          else
          {
          }

          v25 = v73 + 1;
          v22 = v68;
          a6 = v66;
          if (v72 == v67)
          {

            return;
          }
        }
      }
    }
  }

  v55 = v7;
  v56 = sub_1009364B8();
  v57 = sub_100936EF8();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v74 = v60;
    *v58 = 136315394;
    *(v58 + 4) = sub_10001273C(a3, a4, &v74);
    *(v58 + 12) = 2112;
    *(v58 + 14) = v55;
    *v59 = v55;
    v61 = v55;
    _os_log_impl(&_mh_execute_header, v56, v57, "no devices for address %s/%@", v58, 0x16u);
    sub_100013814(v59, &qword_100CB36B0);

    sub_100012970(v60);
  }
}

uint64_t sub_1008AF68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100706B30(&unk_100CBA340);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-v13];
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  sub_100936128();
  v26[0] = &_swiftEmptyArrayStorage;
  v20 = v14;
  v21 = v26;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008EC198, v19);
  result = v26[0];
  if (!(v26[0] >> 62))
  {
    if (*((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v16 = 0;
    goto LABEL_9;
  }

  v17 = v26[0];
  v18 = sub_1009373F8();
  result = v17;
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = sub_100937268();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(result + 32);

LABEL_6:

LABEL_9:
    (*(v12 + 8))(v14, v11);
    return v16;
  }

  __break(1u);
  return result;
}

id sub_1008AF9CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v13 = sub_1009364F8();
  v30 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100936528();
  v28 = *(v16 - 8);
  v29 = v16;
  __chkstk_darwin(v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = im_primary_queue();
  if (result)
  {
    v20 = result;
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = a3;
    v21[5] = a4;
    v22 = v27;
    v21[6] = a5;
    v21[7] = v22;
    v21[8] = a7;
    aBlock[4] = sub_1008F42A8;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BEBDB8;
    v23 = _Block_copy(aBlock);
    swift_errorRetain();
    v24 = a2;

    v25 = a5;

    sub_100936508();
    v31 = &_swiftEmptyArrayStorage;
    sub_100014C40(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550);
    sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
    sub_1009370B8();
    sub_100936F88();
    _Block_release(v23);

    (*(v30 + 8))(v15, v13);
    (*(v28 + 8))(v18, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008AFED4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v25 = sub_100935D38();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100706B30(&qword_100CBB0D8);
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_100706B30(&qword_100CBA630);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = sub_100706B30(&qword_100CBB0E0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  sub_100014C88(&qword_100CBA640, &qword_100CBA630);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  v29 = v24;
  sub_100935D48();
  v16 = v23;
  v17 = v25;
  (*(v23 + 104))(v3, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v25);
  v18 = sub_100706B30(&qword_100CBB0E8);
  v19 = v26;
  v26[3] = v18;
  v19[4] = sub_1008F40E8();
  sub_100014250(v19);
  sub_100014C88(&qword_100CBB108, &qword_100CBB0E0);
  sub_100014C88(&qword_100CBB110, &qword_100CBB0D8);
  v20 = v27;
  sub_100935CD8();
  (*(v16 + 8))(v3, v17);
  (*(v28 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

void sub_1008B030C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = sub_100936038();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  if (a1)
  {
    v34 = a3;
    (*(v10 + 16))(&v32 - v14, a5, v9);
    swift_errorRetain();

    v16 = sub_1009364B8();
    v17 = sub_100936F18();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v18 = 136315650;
      *(v18 + 4) = sub_10001273C(v34, a4, &v35);
      *(v18 + 12) = 2080;
      sub_100014C40(&qword_100CB3A88, &type metadata accessor for Date);
      v20 = sub_100937548();
      v22 = v21;
      (*(v10 + 8))(v15, v9);
      v23 = sub_10001273C(v20, v22, &v35);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2112;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v24;
      *v19 = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to save registration event for bagKey: %s completionTime: %s error: %@", v18, 0x20u);
      sub_100013814(v19, &qword_100CB36B0);

      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }
  }

  else
  {
    (*(v10 + 16))(v13, a5, v9);

    v25 = sub_1009364B8();
    v26 = sub_100936F18();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10001273C(a3, a4, &v35);
      *(v27 + 12) = 2080;
      sub_100014C40(&qword_100CB3A88, &type metadata accessor for Date);
      v28 = sub_100937548();
      v30 = v29;
      (*(v10 + 8))(v13, v9);
      v31 = sub_10001273C(v28, v30, &v35);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved registration event for bagKey: %s completionTime: %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }
  }
}

uint64_t sub_1008B07C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a3;
  v5 = sub_100706B30(&qword_100CBA9A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBB118);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&unk_100CBA340);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936828();
  sub_1009367D8();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1008B0A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100706B30(&qword_100CBA358);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-v13];
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  sub_100936128();
  v26[0] = &_swiftEmptyArrayStorage;
  v20 = v14;
  v21 = v26;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008EC9EC, v19);
  result = v26[0];
  if (!(v26[0] >> 62))
  {
    if (*((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v16 = 0;
    goto LABEL_9;
  }

  v17 = v26[0];
  v18 = sub_1009373F8();
  result = v17;
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = sub_100937268();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(result + 32);

LABEL_6:

LABEL_9:
    (*(v12 + 8))(v14, v11);
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008B0D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v58 = a4;
  v59 = a5;
  v45 = a3;
  v51 = a2;
  v65 = a6;
  v7 = sub_100706B30(&qword_100CBAD28);
  v8 = *(v7 - 8);
  v61 = v7;
  v62 = v8;
  __chkstk_darwin(v7);
  v56 = v42 - v9;
  v57 = sub_100706B30(&qword_100CBB018);
  v60 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = v42 - v10;
  v11 = sub_100706B30(&qword_100CBB028);
  v12 = *(v11 - 8);
  v63 = v11;
  v64 = v12;
  __chkstk_darwin(v11);
  v55 = v42 - v13;
  v14 = sub_100706B30(&qword_100CBA4C0);
  v15 = *(v14 - 8);
  v49 = v14;
  v50 = v15;
  __chkstk_darwin(v14);
  v17 = v42 - v16;
  v18 = sub_100706B30(&qword_100CBB010);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v42 - v20;
  v46 = sub_100706B30(&qword_100CBB050);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v23 = v42 - v22;
  v24 = sub_100706B30(&qword_100CBB058);
  v25 = *(v24 - 8);
  v53 = v24;
  v54 = v25;
  __chkstk_darwin(v24);
  v48 = v42 - v26;
  v44 = *a1;
  sub_100014C88(&qword_100CBB020, &qword_100CBB010);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v27 = *(v19 + 8);
  v42[1] = v19 + 8;
  v43 = v27;
  v27(v21, v18);
  v66 = v51;
  v67 = v45;
  sub_100935D48();
  sub_100014C88(&qword_100CBB060, &qword_100CBB050);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v28 = v46;
  v29 = v49;
  sub_100935C68();
  (*(v50 + 8))(v17, v29);
  (*(v47 + 8))(v23, v28);
  sub_100935D58();
  swift_getKeyPath();
  v30 = v52;
  sub_100935C78();

  v43(v21, v18);
  v66 = v58;
  v67 = v59;
  v31 = v56;
  sub_100935D48();
  sub_100014C88(&qword_100CBB048, &qword_100CBB018);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28);
  sub_1008EFEF8();
  v32 = v55;
  v33 = v57;
  v34 = v61;
  sub_100935C68();
  (*(v62 + 8))(v31, v34);
  (*(v60 + 8))(v30, v33);
  v35 = sub_100706B30(&qword_100CBB068);
  v36 = v65;
  v65[3] = v35;
  v36[4] = sub_1008F3D34();
  sub_100014250(v36);
  sub_100014C88(&qword_100CBB088, &qword_100CBB058);
  sub_100014C88(&qword_100CBB090, &qword_100CBB028);
  v37 = v48;
  v38 = v32;
  v39 = v53;
  v40 = v63;
  sub_100935CF8();
  (*(v64 + 8))(v38, v40);
  return (*(v54 + 8))(v37, v39);
}

uint64_t sub_1008B1520(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a3;
  v5 = sub_100706B30(&qword_100CBABB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBABB8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&qword_100CBA358);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  sub_100014C40(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936828();
  sub_1009367D8();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1008B1780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100706B30(&qword_100CBA358);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-v9];
  v18 = a1;
  v19 = a2;
  v20[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  sub_100936128();
  v20[0] = &_swiftEmptyArrayStorage;
  v16 = v10;
  v17 = v20;
  (*((swift_isaMask & *v3) + 0x118))(a3, sub_1008F508C, v15);
  result = v20[0];
  if (!(v20[0] >> 62))
  {
    if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v12 = 0;
    goto LABEL_9;
  }

  v13 = v20[0];
  v14 = sub_1009373F8();
  result = v13;
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = sub_100937268();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);

LABEL_6:

LABEL_9:
    (*(v8 + 8))(v10, v7);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008B1AAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_100706B30(&qword_100CBAD28);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_100706B30(&qword_100CBB010);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_100706B30(&qword_100CBB018);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_100014C88(&qword_100CBB020, &qword_100CBB010);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  v22 = v18;
  v23 = v19;
  sub_100935D48();
  a3[3] = sub_100706B30(&qword_100CBB028);
  a3[4] = sub_1008F3BF8();
  sub_100014250(a3);
  sub_100014C88(&qword_100CBB048, &qword_100CBB018);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28);
  sub_1008EFEF8();
  v16 = v20;
  sub_100935C68();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1008B1E1C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>, unsigned __int8 a10, uint64_t a11)
{
  v117 = a8;
  v114 = a7;
  v113 = a6;
  v101 = a5;
  v100 = a4;
  v150 = a3;
  v142 = a2;
  v137 = a9;
  v128 = a11;
  v122 = a10;
  v129 = sub_100935D38();
  v126 = *(v129 - 8);
  __chkstk_darwin(v129);
  v123 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_100706B30(&qword_100CBA628);
  v134 = *(v131 - 8);
  __chkstk_darwin(v131);
  v121 = &v90 - v13;
  v124 = sub_100706B30(&qword_100CBAA30);
  v130 = *(v124 - 8);
  __chkstk_darwin(v124);
  v118 = &v90 - v14;
  v132 = sub_100706B30(&qword_100CBAA40);
  v133 = *(v132 - 8);
  __chkstk_darwin(v132);
  v119 = &v90 - v15;
  v125 = sub_100706B30(&qword_100CBA430);
  v127 = *(v125 - 8);
  __chkstk_darwin(v125);
  v145 = &v90 - v16;
  v135 = sub_100706B30(&qword_100CBAF98);
  v136 = *(v135 - 8);
  __chkstk_darwin(v135);
  v120 = &v90 - v17;
  v111 = sub_100706B30(&qword_100CBAFA0);
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v106 = &v90 - v18;
  v107 = sub_100706B30(&qword_100CBA6C0);
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v90 - v19;
  v109 = sub_100706B30(&qword_100CBB098);
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v90 - v20;
  v148 = sub_100706B30(&qword_100CBA4C0);
  v154 = *(v148 - 8);
  __chkstk_darwin(v148);
  v95 = &v90 - v21;
  v22 = sub_100706B30(&qword_100CBAA28);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v90 - v24;
  v26 = sub_100706B30(&qword_100CBAF28);
  v149 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v90 - v27;
  v97 = sub_100706B30(&qword_100CBAF30);
  v151 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v94 = &v90 - v31;
  v98 = sub_100706B30(&qword_100CBAF38);
  v99 = *(v98 - 8);
  __chkstk_darwin(v98);
  v141 = &v90 - v32;
  v102 = sub_100706B30(&qword_100CBAF88);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v143 = &v90 - v33;
  v115 = sub_100706B30(&qword_100CBB0A0);
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v144 = &v90 - v34;
  v153 = *a1;
  v35 = v25;
  v146 = sub_100014C88(&qword_100CBAA38, &qword_100CBAA28);
  sub_100935D58();
  swift_getKeyPath();
  v152 = v22;
  sub_100935C78();

  v36 = *(v23 + 8);
  v138 = v23 + 8;
  v147 = v36;
  v36(v25, v22);
  v155 = v142;
  v156 = v150;
  v37 = v95;
  sub_100935D48();
  v142 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v139 = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28);
  v150 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v38 = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v39 = v148;
  v93 = v38;
  sub_100935C68();
  v40 = v154[1];
  ++v154;
  v140 = v40;
  v40(v37, v39);
  v42 = v149 + 8;
  v41 = *(v149 + 8);
  v41(v28, v26);
  v92 = v41;
  v149 = v42;
  v43 = v35;
  v44 = v152;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v147(v43, v44);
  v155 = v100;
  v156 = v101;
  sub_100935D48();
  v45 = v96;
  v90 = v26;
  v46 = v148;
  sub_100935C68();
  v47 = v37;
  v140(v37, v46);
  v48 = v28;
  v41(v28, v26);
  sub_100014C88(&qword_100CBAF48, &qword_100CBAF30);
  v49 = v94;
  v50 = v97;
  sub_100935CF8();
  v51 = *(v151 + 8);
  v151 += 8;
  v51(v45, v50);
  v51(v49, v50);
  v52 = v43;
  v53 = v152;
  sub_100935D58();
  swift_getKeyPath();
  v91 = v52;
  sub_100935C78();

  v54 = v147;
  v147(v52, v53);
  v155 = v113;
  v156 = v114;
  sub_100935D48();
  v55 = v90;
  v56 = v148;
  sub_100935C68();
  v140(v47, v56);
  v92(v48, v55);
  v154 = &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>;
  sub_100014C88(&qword_100CBAF78, &qword_100CBAF38);
  v57 = v141;
  v58 = v98;
  sub_100935CF8();
  v51(v49, v50);
  (*(v99 + 8))(v57, v58);
  v155 = v117;
  sub_100706B30(&qword_100CBA6D8);
  v59 = v104;
  sub_100935D48();
  v60 = v91;
  v61 = v152;
  sub_100935D58();
  swift_getKeyPath();
  v62 = v106;
  sub_100935C78();

  v54(v60, v61);
  sub_100014C88(&qword_100CBA6E8, &qword_100CBA6C0);
  sub_100014C88(&qword_100CBAFB8, &qword_100CBAFA0);
  sub_100014C88(&qword_100CBA6F8, &qword_100CBA6D8);
  sub_1008EFEF8();
  v63 = v105;
  v64 = v59;
  v65 = v107;
  v66 = v111;
  sub_100935CA8();
  (*(v112 + 8))(v62, v66);
  (*(v108 + 8))(v64, v65);
  sub_100014C88(&qword_100CBAFC0, &qword_100CBAF88);
  sub_100014C88(&qword_100CBB0A8, &qword_100CBB098);
  v67 = v143;
  v68 = v102;
  v69 = v109;
  sub_100935CF8();
  (*(v110 + 8))(v63, v69);
  (*(v103 + 8))(v67, v68);
  LOBYTE(v155) = v122;
  sub_100935D48();
  v70 = v152;
  sub_100935D58();
  swift_getKeyPath();
  v71 = v118;
  sub_100935C78();

  v147(v60, v70);
  sub_100936038();
  v72 = v121;
  sub_100935D48();
  v73 = v126;
  v74 = v123;
  v75 = v129;
  (*(v126 + 104))(v123, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v129);
  sub_100014C88(&qword_100CBAA60, &qword_100CBAA30);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
  v76 = v119;
  v77 = v72;
  v78 = v124;
  v79 = v131;
  sub_100935CD8();
  (*(v73 + 8))(v74, v75);
  (*(v134 + 8))(v77, v79);
  (*(v130 + 8))(v71, v78);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  sub_100014C88(&qword_100CBAF80, &qword_100CBAA40);
  v80 = v120;
  v81 = v145;
  v82 = v125;
  v83 = v132;
  sub_100935D08();
  (*(v133 + 8))(v76, v83);
  (*(v127 + 8))(v81, v82);
  v84 = sub_100706B30(&qword_100CBB0B0);
  v85 = v137;
  v137[3] = v84;
  v85[4] = sub_1008F3EFC();
  sub_100014250(v85);
  sub_100014C88(&qword_100CBB0D0, &qword_100CBB0A0);
  sub_100014C88(&qword_100CBB008, &qword_100CBAF98);
  v86 = v144;
  v87 = v115;
  v88 = v135;
  sub_100935CF8();
  (*(v136 + 8))(v80, v88);
  return (*(v116 + 8))(v86, v87);
}

uint64_t sub_1008B32E0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void *a10, unsigned __int8 a11, uint64_t a12)
{
  v113 = a8;
  v110 = a7;
  v109 = a6;
  v96 = a5;
  v95 = a4;
  v141 = a3;
  v149 = a2;
  v133 = a9;
  v124 = a12;
  v118 = a11;
  v112 = a10;
  v125 = sub_100935D38();
  v122 = *(v125 - 8);
  __chkstk_darwin(v125);
  v119 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_100706B30(&qword_100CBA628);
  v130 = *(v127 - 8);
  __chkstk_darwin(v127);
  v117 = &v88 - v14;
  v120 = sub_100706B30(&qword_100CBAA30);
  v126 = *(v120 - 8);
  __chkstk_darwin(v120);
  v114 = &v88 - v15;
  v128 = sub_100706B30(&qword_100CBAA40);
  v129 = *(v128 - 8);
  __chkstk_darwin(v128);
  v115 = &v88 - v16;
  v121 = sub_100706B30(&qword_100CBA430);
  v123 = *(v121 - 8);
  __chkstk_darwin(v121);
  v144 = &v88 - v17;
  v131 = sub_100706B30(&qword_100CBAF98);
  v132 = *(v131 - 8);
  __chkstk_darwin(v131);
  v116 = &v88 - v18;
  v106 = sub_100706B30(&qword_100CBAD28);
  v107 = *(v106 - 8);
  __chkstk_darwin(v106);
  v101 = &v88 - v19;
  v102 = sub_100706B30(&qword_100CBAFA0);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v88 - v20;
  v104 = sub_100706B30(&qword_100CBAFA8);
  v105 = *(v104 - 8);
  __chkstk_darwin(v104);
  v100 = &v88 - v21;
  v147 = sub_100706B30(&qword_100CBA4C0);
  v152 = *(v147 - 8);
  __chkstk_darwin(v147);
  v23 = &v88 - v22;
  v24 = sub_100706B30(&qword_100CBAA28);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v88 - v26;
  v139 = sub_100706B30(&qword_100CBAF28);
  v151 = *(v139 - 8);
  __chkstk_darwin(v139);
  v29 = &v88 - v28;
  v92 = sub_100706B30(&qword_100CBAF30);
  v148 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v90 = &v88 - v32;
  v93 = sub_100706B30(&qword_100CBAF38);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v140 = &v88 - v33;
  v97 = sub_100706B30(&qword_100CBAF88);
  v98 = *(v97 - 8);
  __chkstk_darwin(v97);
  v142 = &v88 - v34;
  v108 = sub_100706B30(&qword_100CBAFB0);
  v111 = *(v108 - 8);
  __chkstk_darwin(v108);
  v143 = &v88 - v35;
  v145 = *a1;
  v36 = sub_100014C88(&qword_100CBAA38, &qword_100CBAA28);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v37 = *(v25 + 8);
  v150 = v25 + 8;
  v146 = v37;
  v37(v27, v24);
  v153 = v149;
  v154 = v141;
  v38 = v23;
  sub_100935D48();
  v141 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v136 = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28);
  v149 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v138 = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v39 = v139;
  v40 = v147;
  sub_100935C68();
  v41 = v152[1];
  ++v152;
  v137 = v41;
  v41(v23, v40);
  v42 = *(v151 + 8);
  v151 += 8;
  v42(v29, v39);
  v89 = v42;
  v134 = v24;
  v135 = v36;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v146(v27, v24);
  v153 = v95;
  v154 = v96;
  sub_100935D48();
  v43 = v91;
  v44 = v147;
  sub_100935C68();
  v137(v23, v44);
  v45 = v29;
  v42(v29, v39);
  v96 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  v95 = sub_100014C88(&qword_100CBAF48, &qword_100CBAF30);
  v46 = v90;
  v47 = v92;
  sub_100935CF8();
  v48 = *(v148 + 8);
  v148 += 8;
  v48(v43, v47);
  v48(v46, v47);
  v49 = v27;
  v50 = v134;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v51 = v146;
  v146(v27, v50);
  v153 = v109;
  v154 = v110;
  sub_100935D48();
  v52 = v139;
  v53 = v147;
  sub_100935C68();
  v137(v38, v53);
  v89(v45, v52);
  v152 = &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>;
  sub_100014C88(&qword_100CBAF78, &qword_100CBAF38);
  v54 = v140;
  v55 = v93;
  sub_100935CF8();
  v48(v46, v47);
  (*(v94 + 8))(v54, v55);
  v56 = v49;
  v57 = v134;
  sub_100935D58();
  swift_getKeyPath();
  v58 = v99;
  sub_100935C78();

  v51(v56, v57);
  v153 = v113;
  v154 = v112;
  v59 = v101;
  sub_100935D48();
  sub_100014C88(&qword_100CBAFB8, &qword_100CBAFA0);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28);
  sub_1008EFEF8();
  v60 = v100;
  v61 = v58;
  v62 = v59;
  v63 = v102;
  v64 = v106;
  sub_100935C68();
  (*(v107 + 8))(v62, v64);
  (*(v103 + 8))(v61, v63);
  sub_100014C88(&qword_100CBAFC0, &qword_100CBAF88);
  sub_100014C88(&qword_100CBAFC8, &qword_100CBAFA8);
  v65 = v142;
  v66 = v97;
  v67 = v104;
  sub_100935CF8();
  (*(v105 + 8))(v60, v67);
  (*(v98 + 8))(v65, v66);
  LOBYTE(v153) = v118;
  sub_100935D48();
  sub_100935D58();
  swift_getKeyPath();
  v68 = v114;
  sub_100935C78();

  v146(v56, v57);
  sub_100936038();
  v69 = v117;
  sub_100935D48();
  v70 = v122;
  v71 = v119;
  v72 = v125;
  (*(v122 + 104))(v119, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v125);
  sub_100014C88(&qword_100CBAA60, &qword_100CBAA30);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
  v73 = v115;
  v74 = v68;
  v75 = v69;
  v76 = v120;
  v77 = v127;
  sub_100935CD8();
  (*(v70 + 8))(v71, v72);
  (*(v130 + 8))(v75, v77);
  (*(v126 + 8))(v74, v76);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  sub_100014C88(&qword_100CBAF80, &qword_100CBAA40);
  v78 = v116;
  v79 = v144;
  v80 = v121;
  v81 = v128;
  sub_100935D08();
  (*(v129 + 8))(v73, v81);
  (*(v123 + 8))(v79, v80);
  v82 = sub_100706B30(&qword_100CBAFD0);
  v83 = v133;
  v133[3] = v82;
  v83[4] = sub_1008F3918();
  sub_100014250(v83);
  sub_100014C88(&qword_100CBB000, &qword_100CBAFB0);
  sub_100014C88(&qword_100CBB008, &qword_100CBAF98);
  v84 = v143;
  v85 = v108;
  v86 = v131;
  sub_100935CF8();
  (*(v132 + 8))(v78, v86);
  return (*(v111 + 8))(v84, v85);
}

uint64_t sub_1008B475C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a3;
  v5 = sub_100706B30(&qword_100CBA9B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBA9B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&qword_100CBA350);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936828();
  sub_1009367D8();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1008B49BC@<X0>(uint64_t *a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v58 = a6;
  v59 = a7;
  v55 = a5;
  v54 = a4;
  v65 = a2;
  v66 = a3;
  v60 = a8;
  v9 = sub_100706B30(&qword_100CBA4C0);
  v10 = *(v9 - 8);
  v72 = v9;
  v73 = v10;
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v13 = sub_100706B30(&qword_100CBAA28);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - v15;
  v61 = &v48 - v15;
  v17 = sub_100706B30(&qword_100CBAF28);
  v51 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v53 = sub_100706B30(&qword_100CBAF30);
  v74 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v69 = &v48 - v22;
  v23 = sub_100706B30(&qword_100CBAF38);
  v24 = *(v23 - 8);
  v56 = v23;
  v57 = v24;
  __chkstk_darwin(v23);
  v71 = &v48 - v25;
  v68 = *a1;
  v63 = sub_100014C88(&qword_100CBAA38, &qword_100CBAA28);
  sub_100935D58();
  swift_getKeyPath();
  v62 = v13;
  sub_100935C78();

  v67 = *(v14 + 8);
  v70 = v14 + 8;
  v67(v16, v13);
  v75 = v65;
  v76 = v66;
  sub_100935D48();
  v26 = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28);
  v66 = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v64 = v17;
  v27 = v72;
  v50 = v26;
  sub_100935C68();
  v28 = v73 + 8;
  v29 = *(v73 + 8);
  v29(v12, v27);
  v49 = v29;
  v73 = v28;
  v65 = *(v51 + 8);
  v65(v19, v17);
  v30 = v61;
  v31 = v62;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v67(v30, v31);
  v75 = v54;
  v76 = v55;
  v32 = v12;
  sub_100935D48();
  v33 = v52;
  v34 = v64;
  v35 = v72;
  sub_100935C68();
  v29(v32, v35);
  v65(v19, v34);
  v55 = sub_100014C88(&qword_100CBAF48, &qword_100CBAF30);
  v36 = v69;
  v37 = v53;
  sub_100935CF8();
  v38 = *(v74 + 8);
  v54 = v38;
  v74 += 8;
  v38(v33, v37);
  v38(v36, v37);
  v39 = v61;
  v40 = v62;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v67(v39, v40);
  v75 = v58;
  v76 = v59;
  sub_100935D48();
  v41 = v64;
  v42 = v72;
  sub_100935C68();
  v49(v32, v42);
  v65(v19, v41);
  v43 = sub_100706B30(&qword_100CBAF88);
  v44 = v60;
  v60[3] = v43;
  v44[4] = sub_1008F388C();
  sub_100014250(v44);
  sub_100014C88(&qword_100CBAF78, &qword_100CBAF38);
  v45 = v71;
  v46 = v56;
  sub_100935CF8();
  v54(v36, v37);
  return (*(v57 + 8))(v45, v46);
}

uint64_t sub_1008B51EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100706B30(&qword_100CBA350);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17[-v13];
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100936128();
  v24[0] = &_swiftEmptyArrayStorage;
  v18 = v24;
  v19 = v14;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008F4D58, v17);
  v15 = v24[0];
  (*(v12 + 8))(v14, v11);
  return v15;
}

uint64_t sub_1008B5498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a6;
  v45 = sub_100706B30(&qword_100CBA4C0);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v33 - v7;
  v9 = sub_100706B30(&qword_100CBAA28);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = sub_100706B30(&qword_100CBAF28);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = sub_100706B30(&qword_100CBAF30);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  __chkstk_darwin(v16);
  v37 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = *a1;
  v36 = v33 - v20;
  sub_100014C88(&qword_100CBAA38, &qword_100CBAA28);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v21 = *(v10 + 8);
  v33[1] = v10 + 8;
  v34 = v21;
  v21(v12, v9);
  v48 = v38;
  v49 = v39;
  sub_100935D48();
  v39 = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v22 = v45;
  sub_100935C68();
  v23 = *(v47 + 8);
  v47 += 8;
  v23(v8, v22);
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v15, v13);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v34(v12, v9);
  v48 = v42;
  v49 = v43;
  sub_100935D48();
  v25 = v37;
  v26 = v45;
  sub_100935C68();
  v23(v8, v26);
  v24(v15, v13);
  v27 = sub_100706B30(&qword_100CBAF38);
  v28 = v44;
  v44[3] = v27;
  v28[4] = sub_1008F36CC();
  sub_100014250(v28);
  sub_100014C88(&qword_100CBAF48, &qword_100CBAF30);
  v29 = v36;
  v30 = v40;
  sub_100935CF8();
  v31 = *(v41 + 8);
  v31(v25, v30);
  return (v31)(v29, v30);
}

uint64_t sub_1008B5A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100706B30(&qword_100CBA350);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  v16 = a1;
  v17 = a2;
  v18[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100936128();
  v18[0] = &_swiftEmptyArrayStorage;
  v14 = v18;
  v15 = v10;
  (*((swift_isaMask & *v3) + 0x118))(a3, sub_1008ECA54, v13);
  v11 = v18[0];
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_1008B5CC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v17 = a2;
  v5 = sub_100706B30(&qword_100CBA9B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBA9B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&qword_100CBA350);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a3, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936828();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1008B5F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = sub_100706B30(&qword_100CBA350);
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - v12;
  v19 = sub_100936038();
  v14 = *(v19 - 8);
  __chkstk_darwin(v19);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100936028();
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = v16;
  v29[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100936128();
  v29[0] = &_swiftEmptyArrayStorage;
  v22 = v29;
  v23 = v13;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008F4D58, v21);
  v17 = v29[0];
  (*(v11 + 8))(v13, v20);
  (*(v14 + 8))(v16, v19);
  return v17;
}

uint64_t sub_1008B625C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v76 = a6;
  v68 = a5;
  v67 = a4;
  v61 = a3;
  v64 = a2;
  v82 = a7;
  v8 = sub_100935D38();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v72 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100706B30(&qword_100CBA628);
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  __chkstk_darwin(v10);
  v71 = v58 - v12;
  v73 = sub_100706B30(&qword_100CBAA30);
  v77 = *(v73 - 8);
  __chkstk_darwin(v73);
  v65 = v58 - v13;
  v14 = sub_100706B30(&qword_100CBAA40);
  v15 = *(v14 - 8);
  v80 = v14;
  v81 = v15;
  __chkstk_darwin(v14);
  v70 = v58 - v16;
  v86 = sub_100706B30(&qword_100CBA4C0);
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v18 = v58 - v17;
  v19 = sub_100706B30(&qword_100CBAA28);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v58 - v21;
  v23 = sub_100706B30(&qword_100CBAF28);
  v88 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = v58 - v24;
  v62 = sub_100706B30(&qword_100CBAF30);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v59 = v58 - v28;
  v66 = sub_100706B30(&qword_100CBAF38);
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v87 = v58 - v29;
  v30 = *a1;
  v31 = sub_100014C88(&qword_100CBAA38, &qword_100CBAA28);
  v58[1] = v30;
  v83 = v31;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v32 = *(v20 + 8);
  v84 = v20 + 8;
  v85 = v32;
  v32(v22, v19);
  v90 = v64;
  v91 = v61;
  sub_100935D48();
  v64 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v58[0] = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28);
  v61 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v33 = v23;
  v34 = v86;
  sub_100935C68();
  v35 = *(v89 + 8);
  v89 += 8;
  v35(v18, v34);
  v36 = *(v88 + 8);
  v88 += 8;
  v36(v25, v33);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v85(v22, v19);
  v90 = v67;
  v91 = v68;
  v37 = v18;
  sub_100935D48();
  v38 = v60;
  v39 = v86;
  sub_100935C68();
  v35(v37, v39);
  v36(v25, v33);
  sub_100014C88(&qword_100CBAF48, &qword_100CBAF30);
  v40 = v59;
  v41 = v62;
  sub_100935CF8();
  v42 = *(v63 + 8);
  v42(v38, v41);
  v42(v40, v41);
  sub_100935D58();
  swift_getKeyPath();
  v43 = v65;
  sub_100935C78();

  v85(v22, v19);
  sub_100936038();
  v44 = v71;
  sub_100935D48();
  v46 = v74;
  v45 = v75;
  v47 = v72;
  (*(v74 + 104))(v72, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v75);
  sub_100014C88(&qword_100CBAA60, &qword_100CBAA30);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
  v48 = v70;
  v49 = v44;
  v50 = v73;
  v51 = v78;
  sub_100935CD8();
  (*(v46 + 8))(v47, v45);
  (*(v79 + 8))(v49, v51);
  (*(v77 + 8))(v43, v50);
  v52 = sub_100706B30(&qword_100CBAF50);
  v53 = v82;
  v82[3] = v52;
  v53[4] = sub_1008F3640();
  sub_100014250(v53);
  sub_100014C88(&qword_100CBAF78, &qword_100CBAF38);
  sub_100014C88(&qword_100CBAF80, &qword_100CBAA40);
  v54 = v87;
  v55 = v66;
  v56 = v80;
  sub_100935CF8();
  (*(v81 + 8))(v48, v56);
  return (*(v69 + 8))(v54, v55);
}

uint64_t sub_1008B6DB0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CBA9B0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100706B30(&qword_100CBA9B8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  v11 = sub_100706B30(&qword_100CBA350);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936828();
  v12 = sub_100936728();
  result = (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    *a2 = v12;
  }

  return result;
}

void *sub_1008B6FBC(uint64_t a1, uint64_t a2)
{
  v5 = &_swiftEmptyArrayStorage;
  v4[2] = &v5;
  (*((swift_isaMask & *v2) + 0x118))(a1, a2, v4);
  return v5;
}

uint64_t sub_1008B7144(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CBA508);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100706B30(&unk_100CBA510);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  v11 = sub_100706B30(&qword_100CBA380);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle(0);
  sub_100014C40(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936828();
  v12 = sub_100936728();
  result = (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    *a2 = v12;
  }

  return result;
}

uint64_t sub_1008B7350(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v23 = sub_100706B30(&qword_100CBA360);
  v11 = *(v23 - 8);
  v12 = __chkstk_darwin(v23);
  v14 = &v22 - v13;
  v15 = [a3 prefixedURI];
  v16 = sub_100936B38();
  v18 = v17;

  v27 = a4;
  v28 = a5;
  v29 = v16;
  v30 = v18;
  v31 = a1;
  v32 = a2;
  v34 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
  sub_100936128();

  v25 = v14;
  v26 = &v33;
  v19 = swift_isaMask & *v5;
  v33 = xmmword_1009AD8D0;
  (*(v19 + 280))(0, sub_1008ECAE8, v24);
  v20 = v33;
  sub_1007483B0(v33, *(&v33 + 1));
  sub_10001C370(v20, *(&v20 + 1));
  (*(v11 + 8))(v14, v23);
  return v20;
}

uint64_t sub_1008B7650@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v68 = a6;
  v69 = a7;
  v62 = a5;
  v61 = a4;
  v59 = a3;
  v58 = a2;
  v75 = a8;
  v9 = sub_100706B30(&qword_100CBAD28);
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  __chkstk_darwin(v9);
  v66 = v52 - v11;
  v67 = sub_100706B30(&qword_100CBAED0);
  v70 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = v52 - v12;
  v13 = sub_100706B30(&qword_100CBAED8);
  v14 = *(v13 - 8);
  v73 = v13;
  v74 = v14;
  __chkstk_darwin(v13);
  v65 = v52 - v15;
  v16 = sub_100706B30(&qword_100CBA4C0);
  v81 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v52 - v17;
  v19 = sub_100706B30(&qword_100CBAE58);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v52 - v21;
  v23 = sub_100706B30(&qword_100CBAE60);
  v80 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = v52 - v24;
  v56 = sub_100706B30(&qword_100CBAE68);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v53 = v52 - v28;
  v60 = sub_100706B30(&qword_100CBAEE0);
  v63 = *(v60 - 8);
  __chkstk_darwin(v60);
  v55 = v52 - v29;
  v79 = *a1;
  v76 = sub_100014C88(&qword_100CBAE70, &qword_100CBAE58);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v30 = *(v20 + 8);
  v77 = v20 + 8;
  v78 = v30;
  v30(v22, v19);
  v82 = v58;
  v83 = v59;
  v31 = v18;
  sub_100935D48();
  v59 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v52[1] = sub_100014C88(&qword_100CBAE78, &qword_100CBAE60);
  v58 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v52[0] = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v32 = v23;
  sub_100935C68();
  v33 = *(v81 + 8);
  v81 += 8;
  v33(v18, v16);
  v34 = *(v80 + 8);
  v80 += 8;
  v35 = v32;
  v34(v25, v32);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v78(v22, v19);
  v82 = v61;
  v83 = v62;
  sub_100935D48();
  v36 = v54;
  sub_100935C68();
  v33(v31, v16);
  v34(v25, v35);
  sub_100014C88(&qword_100CBAEC0, &qword_100CBAE68);
  v37 = v55;
  v38 = v53;
  v39 = v56;
  sub_100935CF8();
  v40 = *(v57 + 8);
  v40(v36, v39);
  v40(v38, v39);
  sub_100935D58();
  swift_getKeyPath();
  v41 = v64;
  sub_100935C78();

  v78(v22, v19);
  v82 = v68;
  v83 = v69;
  v42 = v66;
  sub_100935D48();
  sub_100014C88(&qword_100CBAEE8, &qword_100CBAED0);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28);
  sub_1008EFEF8();
  v43 = v65;
  v44 = v42;
  v45 = v67;
  v46 = v71;
  sub_100935C68();
  (*(v72 + 8))(v44, v46);
  (*(v70 + 8))(v41, v45);
  v47 = sub_100706B30(&qword_100CBAEF0);
  v48 = v75;
  v75[3] = v47;
  v48[4] = sub_1008F33F4();
  sub_100014250(v48);
  sub_100014C88(&qword_100CBAF18, &qword_100CBAEE0);
  sub_100014C88(&qword_100CBAF20, &qword_100CBAED8);
  v49 = v60;
  v50 = v73;
  sub_100935CF8();
  (*(v74 + 8))(v43, v50);
  return (*(v63 + 8))(v37, v49);
}

unint64_t sub_1008B808C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24 = a3;
  v5 = sub_100706B30(&qword_100CBAE30);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_100706B30(&qword_100CBAE38);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_100706B30(&qword_100CBA360);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
  sub_100014C40(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936828();
  sub_1009367D8();
  result = sub_100936728();
  if (v3)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v15 = v24;
  if (result >> 62)
  {
    v19 = result;
    v20 = sub_1009373F8();
    result = v19;
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_10:

    v16 = 0;
    v18 = 0xF000000000000000;
    goto LABEL_11;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100937268();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v16 = sub_100758270();
  v18 = v17;

LABEL_11:
  (*(v9 + 8))(v11, v8);
  v21 = *v15;
  v22 = v15[1];
  *v15 = v16;
  v15[1] = v18;
  return sub_10001C370(v21, v22);
}

void *sub_1008B84C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100706B30(&qword_100CBA360);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-v9];
  v22 = &_swiftEmptyArrayStorage;
  v18 = a2;
  v19 = a3;
  v20 = a1;
  v21[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
  sub_100936128();
  v21[0] = &_swiftEmptyArrayStorage;
  v17 = &v22;
  v11 = swift_isaMask & *v3;
  v15 = v21;
  v16 = v10;
  (*(v11 + 280))(0, sub_1008ECB10, v14);
  v12 = v22;

  (*(v8 + 8))(v10, v7);

  return v12;
}

uint64_t sub_1008B8790@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v59 = a4;
  v49 = a2;
  v50 = a3;
  v65 = a5;
  v6 = sub_100935D38();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v55 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100706B30(&qword_100CBA628);
  v9 = *(v8 - 8);
  v61 = v8;
  v62 = v9;
  __chkstk_darwin(v8);
  v54 = v42 - v10;
  v56 = sub_100706B30(&qword_100CBAE48);
  v60 = *(v56 - 8);
  __chkstk_darwin(v56);
  v48 = v42 - v11;
  v12 = sub_100706B30(&qword_100CBAE50);
  v13 = *(v12 - 8);
  v63 = v12;
  v64 = v13;
  __chkstk_darwin(v12);
  v52 = v42 - v14;
  v45 = sub_100706B30(&qword_100CBA4C0);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v16 = v42 - v15;
  v17 = sub_100706B30(&qword_100CBAE58);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v42 - v19;
  v43 = sub_100706B30(&qword_100CBAE60);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v22 = v42 - v21;
  v51 = sub_100706B30(&qword_100CBAE68);
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = v42 - v23;
  v42[1] = *a1;
  sub_100014C88(&qword_100CBAE70, &qword_100CBAE58);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v24 = v18 + 8;
  v25 = *(v18 + 8);
  v42[0] = v24;
  v25(v20, v17);
  v66 = v49;
  v67 = v50;
  sub_100935D48();
  v50 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBAE78, &qword_100CBAE60);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v26 = v43;
  v27 = v45;
  sub_100935C68();
  (*(v46 + 8))(v16, v27);
  (*(v44 + 8))(v22, v26);
  sub_100935D58();
  swift_getKeyPath();
  v28 = v48;
  sub_100935C78();

  v25(v20, v17);
  sub_100936038();
  v29 = v54;
  sub_100935D48();
  v31 = v57;
  v30 = v58;
  v32 = v55;
  (*(v57 + 104))(v55, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v58);
  sub_100014C88(&qword_100CBAE80, &qword_100CBAE48);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
  v33 = v52;
  v34 = v56;
  v35 = v61;
  sub_100935CD8();
  (*(v31 + 8))(v32, v30);
  (*(v62 + 8))(v29, v35);
  (*(v60 + 8))(v28, v34);
  v36 = sub_100706B30(&qword_100CBAE88);
  v37 = v65;
  v65[3] = v36;
  v37[4] = sub_1008F30F0();
  sub_100014250(v37);
  sub_100014C88(&qword_100CBAEC0, &qword_100CBAE68);
  sub_100014C88(&qword_100CBAEC8, &qword_100CBAE50);
  v38 = v47;
  v39 = v51;
  v40 = v63;
  sub_100935CF8();
  (*(v64 + 8))(v33, v40);
  return (*(v53 + 8))(v38, v39);
}

uint64_t sub_1008B904C(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  v29 = a2;
  v30 = a4;
  v6 = sub_100706B30(&qword_100CBAE30);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_100706B30(&qword_100CBAE38);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = sub_100706B30(&qword_100CBA360);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a3, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
  sub_100014C40(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936828();
  v15 = sub_100936728();
  result = (*(v10 + 8))(v12, v9);
  if (!v4)
  {
    v17 = v29;
    *v29 = v15;

    v18 = *v17;
    v31 = &_swiftEmptyArrayStorage;
    v27 = 0;
    if (v18 >> 62)
    {
LABEL_20:
      v29 = (v18 & 0xFFFFFFFFFFFFFF8);
      v19 = sub_1009373F8();
    }

    else
    {
      v29 = (v18 & 0xFFFFFFFFFFFFFF8);
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v30;

    v21 = 0;
    v28 = &_swiftEmptyArrayStorage;
    while (v19 != v21)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_100937268();
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v21 >= v29[2])
        {
          goto LABEL_19;
        }

        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      sub_100757F88();
      v23 = objc_allocWithZone(IDSURI);
      v24 = sub_100936B28();

      v25 = v23;
      v20 = v30;
      v26 = [v25 initWithPrefixedURI:v24];

      ++v21;
      if (v26)
      {
        sub_100936CC8();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100936D18();
        }

        sub_100936D38();
        v28 = v31;
        v21 = v22;
      }
    }

    *v20 = v28;
  }

  return result;
}

uint64_t sub_1008B9584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100706B30(&qword_100CBA368);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11];
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v21[0] = &_swiftEmptyArrayStorage;
  v16 = v21;
  v17 = v12;
  (*((swift_isaMask & *v4) + 0x118))(a4, sub_1008ECB3C, v15);
  v13 = v21[0];
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_1008B9824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a5;
  v7 = sub_100706B30(&qword_100CBAD28);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  __chkstk_darwin(v7);
  v50 = v39 - v9;
  v10 = sub_100706B30(&qword_100CBAD30);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  __chkstk_darwin(v10);
  v49 = v39 - v12;
  v13 = sub_100706B30(&qword_100CBA6B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v39 - v15;
  v46 = sub_100706B30(&qword_100CBA6B8);
  v58 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = v39 - v17;
  v19 = sub_100706B30(&qword_100CBA6C0);
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  __chkstk_darwin(v19);
  v22 = v39 - v21;
  v23 = sub_100706B30(&qword_100CBA6C8);
  v24 = *(v23 - 8);
  v47 = v23;
  v48 = v24;
  __chkstk_darwin(v23);
  v43 = v39 - v25;
  v41 = *a1;
  v59 = a2;
  sub_100706B30(&qword_100CBA6D8);
  sub_100935D48();
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v26 = *(v14 + 8);
  v39[1] = v14 + 8;
  v40 = v26;
  v26(v16, v13);
  v42 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA6E8, &qword_100CBA6C0);
  v39[0] = sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8);
  sub_100014C88(&qword_100CBA6F8, &qword_100CBA6D8);
  sub_1008EFEF8();
  v27 = v44;
  v28 = v46;
  sub_100935CA8();
  v29 = *(v58 + 8);
  v58 += 8;
  v29(v18, v28);
  (*(v45 + 8))(v22, v27);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v40(v16, v13);
  v59 = v51;
  v60 = v52;
  v30 = v50;
  sub_100935D48();
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28);
  v31 = v49;
  v32 = v53;
  sub_100935C68();
  (*(v54 + 8))(v30, v32);
  v29(v18, v28);
  v33 = sub_100706B30(&qword_100CBAE20);
  v34 = v55;
  v55[3] = v33;
  v34[4] = sub_1008F3064();
  sub_100014250(v34);
  sub_100014C88(&qword_100CBA718, &qword_100CBA6C8);
  sub_100014C88(&qword_100CBAD60, &qword_100CBAD30);
  v35 = v43;
  v36 = v47;
  v37 = v56;
  sub_100935CF8();
  (*(v57 + 8))(v31, v37);
  return (*(v48 + 8))(v35, v36);
}

uint64_t sub_1008B9F5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v17 = a2;
  v5 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBA8D8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&qword_100CBA368);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a3, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1008BA1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100706B30(&qword_100CBA368);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17[-v13];
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v24[0] = &_swiftEmptyArrayStorage;
  v18 = v24;
  v19 = v14;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008F4D70, v17);
  v15 = v24[0];
  (*(v12 + 8))(v14, v11);
  return v15;
}

uint64_t sub_1008BA450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100706B30(&qword_100CBA368);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-v9];
  v18 = a1;
  v19 = a2;
  v20[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v20[0] = &_swiftEmptyArrayStorage;
  v16 = v10;
  v17 = v20;
  (*((swift_isaMask & *v3) + 0x118))(a3, sub_1008ECB80, v15);
  result = v20[0];
  if (!(v20[0] >> 62))
  {
    if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v12 = 0;
    goto LABEL_9;
  }

  v13 = v20[0];
  v14 = sub_1009373F8();
  result = v13;
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = sub_100937268();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);

LABEL_6:

LABEL_9:
    (*(v8 + 8))(v10, v7);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008BA77C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a3;
  v5 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBA8D8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&qword_100CBA368);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  sub_1009367D8();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1008BA9DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v85 = a6;
  v84 = a5;
  v81 = a4;
  v80 = a3;
  v95 = a7;
  v9 = sub_100706B30(&qword_100CBA430);
  v10 = *(v9 - 8);
  v91 = v9;
  v92 = v10;
  __chkstk_darwin(v9);
  v88 = &v65 - v11;
  v12 = sub_100706B30(&qword_100CBA6A0);
  v13 = *(v12 - 8);
  v89 = v12;
  v90 = v13;
  __chkstk_darwin(v12);
  v86 = &v65 - v14;
  v15 = sub_100706B30(&qword_100CBA6A8);
  v16 = *(v15 - 8);
  v93 = v15;
  v94 = v16;
  __chkstk_darwin(v15);
  v87 = &v65 - v17;
  v101 = sub_100706B30(&qword_100CBA4C0);
  v107 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v65 - v18;
  v78 = sub_100706B30(&qword_100CBA828);
  v105 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v65 - v19;
  v79 = sub_100706B30(&qword_100CBAC28);
  v106 = *(v79 - 8);
  __chkstk_darwin(v79);
  v75 = &v65 - v20;
  v21 = sub_100706B30(&qword_100CBA6B0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v65 - v23;
  v69 = sub_100706B30(&qword_100CBA6B8);
  v71 = *(v69 - 1);
  __chkstk_darwin(v69);
  v26 = &v65 - v25;
  v67 = sub_100706B30(&qword_100CBA6C0);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v28 = &v65 - v27;
  v72 = sub_100706B30(&qword_100CBA6C8);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v98 = &v65 - v29;
  v76 = sub_100706B30(&qword_100CBADE0);
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v97 = &v65 - v30;
  v82 = sub_100706B30(&qword_100CBADE8);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v102 = &v65 - v31;
  v96 = *a1;
  v108 = a2;
  sub_100706B30(&qword_100CBA6D8);
  sub_100935D48();
  v65 = sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v32 = *(v22 + 8);
  v103 = v22 + 8;
  v104 = v32;
  v32(v24, v21);
  v99 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA6E8, &qword_100CBA6C0);
  v70 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8);
  sub_100014C88(&qword_100CBA6F8, &qword_100CBA6D8);
  sub_1008EFEF8();
  v33 = v28;
  v34 = v26;
  v35 = v67;
  v36 = v69;
  sub_100935CA8();
  (*(v71 + 8))(v34, v36);
  v68[1](v33, v35);
  sub_100935D58();
  swift_getKeyPath();
  v37 = v74;
  sub_100935C78();

  v104(v24, v21);
  v108 = v80;
  v109 = v81;
  v38 = v100;
  sub_100935D48();
  v80 = sub_100014C88(&qword_100CBA848, &qword_100CBA828);
  v71 = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v39 = v75;
  v40 = v78;
  v41 = v101;
  sub_100935C68();
  v42 = *(v107 + 8);
  v107 += 8;
  v69 = v42;
  (v42)(v38, v41);
  v43 = *(v105 + 8);
  v105 += 8;
  v68 = v43;
  v44 = v37;
  (v43)(v37, v40);
  sub_100014C88(&qword_100CBA718, &qword_100CBA6C8);
  v81 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  v67 = sub_100014C88(&qword_100CBAC38, &qword_100CBAC28);
  v45 = v98;
  v46 = v72;
  v47 = v79;
  sub_100935CF8();
  v48 = *(v106 + 8);
  v106 += 8;
  v66 = v48;
  v48(v39, v47);
  (*(v73 + 8))(v45, v46);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v104(v24, v21);
  v108 = v84;
  v109 = v85;
  v49 = v100;
  sub_100935D48();
  v50 = v101;
  sub_100935C68();
  (v69)(v49, v50);
  (v68)(v44, v40);
  sub_100014C88(&qword_100CBADF0, &qword_100CBADE0);
  v51 = v97;
  v52 = v76;
  sub_100935CF8();
  v66(v39, v47);
  (*(v77 + 8))(v51, v52);
  sub_100935D58();
  swift_getKeyPath();
  v53 = v86;
  sub_100935C78();

  v104(v24, v21);
  LOBYTE(v108) = 1;
  v54 = v88;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v55 = v87;
  v56 = v54;
  v57 = v89;
  v58 = v91;
  sub_100935C68();
  (*(v92 + 8))(v56, v58);
  (*(v90 + 8))(v53, v57);
  v59 = sub_100706B30(&qword_100CBADF8);
  v60 = v95;
  v95[3] = v59;
  v60[4] = sub_1008F2EC0();
  sub_100014250(v60);
  sub_100014C88(&qword_100CBAE18, &qword_100CBADE8);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v61 = v102;
  v62 = v82;
  v63 = v93;
  sub_100935CF8();
  (*(v94 + 8))(v55, v63);
  return (*(v83 + 8))(v61, v62);
}

void *sub_1008BB8DC(void *a1, void *a2)
{
  v4 = [a1 prefixedURI];
  v5 = sub_100936B38();
  v7 = v6;

  v8 = [a2 prefixedURI];
  v9 = sub_100936B38();
  v11 = v10;

  v14 = &_swiftEmptySetSingleton;
  v13[2] = v5;
  v13[3] = v7;
  v13[4] = v9;
  v13[5] = v11;
  v13[6] = &v14;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008ECBB4, v13);

  return v14;
}

uint64_t sub_1008BB9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a1;
  v26 = a5;
  v27 = a6;
  v9 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v28 = sub_100706B30(&qword_100CBA8D8);
  v12 = *(v28 - 8);
  __chkstk_darwin(v28);
  v14 = &v25 - v13;
  v15 = sub_100706B30(&qword_100CBA368);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - v17;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = v26;
  v19 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v37 = v19;
  sub_100936128();
  (*(v16 + 16))(v11, v18, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  v20 = sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  v32 = v27;
  v21 = sub_100716928();
  v22 = sub_100716930();
  v23 = v30;
  sub_100716938(v14, v21, v22, sub_1008F2E5C, v31, v19, v20);
  if (v23)
  {
  }

  (*(v12 + 8))(v14, v28);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1008BBD1C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v65 = a6;
  v59 = a4;
  v60 = a5;
  v56 = a3;
  v55 = a2;
  v71 = a7;
  v8 = sub_100706B30(&qword_100CBA430);
  v9 = *(v8 - 8);
  v67 = v8;
  v68 = v9;
  __chkstk_darwin(v8);
  v63 = v49 - v10;
  v64 = sub_100706B30(&qword_100CBA6A0);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = v49 - v11;
  v12 = sub_100706B30(&qword_100CBA6A8);
  v13 = *(v12 - 8);
  v69 = v12;
  v70 = v13;
  __chkstk_darwin(v12);
  v62 = v49 - v14;
  v15 = sub_100706B30(&qword_100CBA4C0);
  v77 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v49 - v16;
  v18 = sub_100706B30(&qword_100CBA6B0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v49 - v20;
  v22 = sub_100706B30(&qword_100CBA828);
  v76 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = v49 - v23;
  v53 = sub_100706B30(&qword_100CBAC28);
  v54 = *(v53 - 8);
  v25 = __chkstk_darwin(v53);
  v51 = v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v50 = v49 - v27;
  v57 = sub_100706B30(&qword_100CBACE8);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = v49 - v28;
  v75 = *a1;
  v72 = sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v29 = *(v19 + 8);
  v73 = v19 + 8;
  v74 = v29;
  v29(v21, v18);
  v78 = v55;
  v79 = v56;
  sub_100935D48();
  v56 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v49[2] = sub_100014C88(&qword_100CBA848, &qword_100CBA828);
  v55 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v49[1] = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v30 = v22;
  sub_100935C68();
  v31 = *(v77 + 8);
  v77 += 8;
  v31(v17, v15);
  v32 = *(v76 + 8);
  v76 += 8;
  v32(v24, v30);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v74(v21, v18);
  v78 = v59;
  v79 = v60;
  sub_100935D48();
  v33 = v51;
  sub_100935C68();
  v31(v17, v15);
  v32(v24, v30);
  sub_100014C88(&qword_100CBAC38, &qword_100CBAC28);
  v34 = v52;
  v35 = v50;
  v36 = v53;
  sub_100935CF8();
  v37 = *(v54 + 8);
  v37(v33, v36);
  v37(v35, v36);
  sub_100935D58();
  swift_getKeyPath();
  v38 = v61;
  sub_100935C78();

  v74(v21, v18);
  LOBYTE(v78) = v65;
  v39 = v63;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v40 = v62;
  v41 = v39;
  v42 = v64;
  v43 = v67;
  sub_100935C68();
  (*(v68 + 8))(v41, v43);
  (*(v66 + 8))(v38, v42);
  v44 = sub_100706B30(&qword_100CBACF0);
  v45 = v71;
  v71[3] = v44;
  v45[4] = sub_1008F23B4();
  sub_100014250(v45);
  sub_100014C88(&qword_100CBAD08, &qword_100CBACE8);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v46 = v57;
  v47 = v69;
  sub_100935CF8();
  (*(v70 + 8))(v40, v47);
  return (*(v58 + 8))(v34, v46);
}

uint64_t sub_1008BC744(void *a1, void *a2)
{
  v5 = sub_100706B30(&qword_100CBA368);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-v7];
  v9 = [a1 prefixedURI];
  v10 = sub_100936B38();
  v12 = v11;

  v13 = [a2 prefixedURI];
  v14 = sub_100936B38();
  v16 = v15;

  v22 = v14;
  v23 = v16;
  v24 = v10;
  v25 = v12;
  v27 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();

  v26 = 0;
  v20 = v8;
  v21 = &v26;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008ECBE0, v19);
  v17 = v26;
  (*(v6 + 8))(v8, v5);
  return v17;
}

uint64_t sub_1008BCA40(void *a1, void *a2)
{
  v5 = sub_100706B30(&qword_100CBA368);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-v7];
  v9 = [a1 prefixedURI];
  v10 = sub_100936B38();
  v12 = v11;

  v13 = [a2 prefixedURI];
  v14 = sub_100936B38();
  v16 = v15;

  v22 = v10;
  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();

  v26[0] = &_swiftEmptyArrayStorage;
  v20 = v8;
  v21 = v26;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008ECC08, v19);
  v17 = v26[0];
  (*(v6 + 8))(v8, v5);
  return v17;
}

uint64_t sub_1008BCD44@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t *a6@<X8>)
{
  v71 = a5;
  v70 = a4;
  v66 = a3;
  v67 = a2;
  v78 = a6;
  v77 = sub_100706B30(&qword_100CBA430);
  v91 = *(v77 - 8);
  __chkstk_darwin(v77);
  v83 = v58 - v7;
  v76 = sub_100706B30(&qword_100CBA6A0);
  v89 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = v58 - v8;
  v84 = sub_100706B30(&qword_100CBA6A8);
  v90 = *(v84 - 8);
  __chkstk_darwin(v84);
  v73 = v58 - v9;
  v63 = sub_100706B30(&qword_100CBA4C0);
  v88 = *(v63 - 8);
  __chkstk_darwin(v63);
  v11 = v58 - v10;
  v12 = sub_100706B30(&qword_100CBA6B0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v58 - v14;
  v16 = sub_100706B30(&qword_100CBA828);
  v86 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v58 - v17;
  v64 = sub_100706B30(&qword_100CBAC28);
  v65 = *(v64 - 8);
  v19 = __chkstk_darwin(v64);
  v62 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v60 = v58 - v21;
  v68 = sub_100706B30(&qword_100CBACE8);
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v81 = v58 - v22;
  v23 = sub_100706B30(&qword_100CBACF0);
  v24 = *(v23 - 8);
  v74 = v23;
  v75 = v24;
  __chkstk_darwin(v23);
  v82 = v58 - v25;
  v87 = *a1;
  v26 = v15;
  v85 = sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v79 = *(v13 + 8);
  v80 = v13 + 8;
  v79(v15, v12);
  v92 = v67;
  v93 = v66;
  sub_100935D48();
  v67 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v58[1] = sub_100014C88(&qword_100CBA848, &qword_100CBA828);
  v66 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v58[0] = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v27 = v18;
  v28 = v16;
  v29 = v63;
  sub_100935C68();
  v30 = v88[1];
  ++v88;
  v30(v11, v29);
  v31 = v86[1];
  ++v86;
  v31(v27, v28);
  v32 = v26;
  v59 = v26;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v33 = v79;
  v79(v32, v12);
  v92 = v70;
  v93 = v71;
  sub_100935D48();
  v34 = v62;
  sub_100935C68();
  v30(v11, v29);
  v31(v27, v28);
  v88 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  sub_100014C88(&qword_100CBAC38, &qword_100CBAC28);
  v35 = v60;
  v36 = v64;
  sub_100935CF8();
  v37 = *(v65 + 1);
  v37(v34, v36);
  v37(v35, v36);
  v38 = v59;
  v61 = v12;
  sub_100935D58();
  swift_getKeyPath();
  v39 = v72;
  sub_100935C78();

  v33(v38, v12);
  LOBYTE(v92) = 0;
  v40 = v83;
  sub_100935D48();
  v70 = sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  v67 = sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v41 = v73;
  v42 = v76;
  v43 = v77;
  sub_100935C68();
  v44 = *(v91 + 8);
  v91 += 8;
  v66 = v44;
  v44(v40, v43);
  v45 = *(v89 + 8);
  v89 += 8;
  v65 = v45;
  v45(v39, v42);
  v86 = &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>;
  sub_100014C88(&qword_100CBAD08, &qword_100CBACE8);
  v88 = sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v46 = v81;
  v47 = v68;
  v48 = v84;
  sub_100935CF8();
  v49 = *(v90 + 8);
  v90 += 8;
  v71 = v49;
  v49(v41, v48);
  (*(v69 + 8))(v46, v47);
  v50 = v61;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v79(v38, v50);
  LOBYTE(v92) = 1;
  v51 = v83;
  sub_100935D48();
  sub_100935C68();
  (v66)(v51, v43);
  v65(v39, v42);
  v52 = sub_100706B30(&qword_100CBADD0);
  v53 = v78;
  v78[3] = v52;
  v53[4] = sub_1008F2DAC();
  sub_100014250(v53);
  sub_100014C88(&qword_100CBAD80, &qword_100CBACF0);
  v54 = v82;
  v55 = v74;
  v56 = v84;
  sub_100935CF8();
  v71(v41, v56);
  return (*(v75 + 8))(v54, v55);
}

uint64_t sub_1008BD9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100936038();
  __chkstk_darwin(v5 - 8);
  v54 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SenderKeyInfo(0);
  v52 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_100706B30(&qword_100CBA8D8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  v16 = sub_100706B30(&qword_100CBA368);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, a2, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  v18 = v53;
  v19 = sub_100936728();
  v20 = v18;
  result = (*(v13 + 8))(v15, v12);
  if (!v18)
  {
    if (v19 >> 62)
    {
      goto LABEL_18;
    }

    v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v22; i = v20)
    {
      v23 = 0;
      v50 = v19 & 0xFFFFFFFFFFFFFF8;
      v51 = v19 & 0xC000000000000001;
      v20 = &_swiftEmptyArrayStorage;
      v48 = v19;
      v49 = a3;
      v47 = v22;
      while (v51)
      {
        sub_100937268();
        v24 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          goto LABEL_16;
        }

LABEL_8:
        v53 = v24;
        v25 = sub_10075A72C();
        v27 = v26;
        v28 = sub_10075A43C();
        v30 = v29;
        sub_10075B2DC();
        v31 = sub_10075AA1C();
        v33 = v32;
        v34 = sub_10075AD04();
        v36 = nullsub_23(v31, v33, v34, v35);
        sub_10078694C(v25, v27, v28, v30, v54, v36, v37, v38, v55, v39);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1008E40E0(0, v20[2] + 1, 1, v20, &qword_100CB4F98, &unk_1009B0C38, type metadata accessor for SenderKeyInfo);
        }

        v19 = v48;
        a3 = v49;
        v41 = v20[2];
        v40 = v20[3];
        v42 = v52;
        v43 = v55;
        if (v41 >= v40 >> 1)
        {
          v44 = sub_1008E40E0(v40 > 1, v41 + 1, 1, v20, &qword_100CB4F98, &unk_1009B0C38, type metadata accessor for SenderKeyInfo);
          v42 = v52;
          v20 = v44;
          v43 = v55;
        }

        v20[2] = v41 + 1;
        sub_1008F24C4(v43, v20 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41, type metadata accessor for SenderKeyInfo);
        ++v23;
        if (v53 == v47)
        {
          goto LABEL_20;
        }
      }

      if (v23 >= *(v50 + 16))
      {
        goto LABEL_17;
      }

      v24 = (v23 + 1);
      if (!__OFADD__(v23, 1))
      {
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v22 = sub_1009373F8();
    }

    v20 = &_swiftEmptyArrayStorage;
LABEL_20:

    *a3 = v20;
  }

  return result;
}

void sub_1008BDF28(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, unint64_t a7, void (**a8)(char *, unint64_t, uint64_t))
{
  v399 = a8;
  v397 = a7;
  v407 = a5;
  v13 = type metadata accessor for SenderKeyInfo(0);
  __chkstk_darwin(v13 - 8);
  v387 = &v362 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100706B30(&unk_100CB4A50);
  v16 = __chkstk_darwin(v15 - 8);
  v396 = &v362 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v389 = &v362 - v19;
  v20 = __chkstk_darwin(v18);
  v395 = &v362 - v21;
  v22 = __chkstk_darwin(v20);
  v394 = &v362 - v23;
  v24 = __chkstk_darwin(v22);
  v385 = &v362 - v25;
  __chkstk_darwin(v24);
  v386 = &v362 - v26;
  v27 = sub_100706B30(&qword_100CB4AC0);
  v28 = __chkstk_darwin(v27 - 8);
  v372 = &v362 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v384 = &v362 - v31;
  v32 = __chkstk_darwin(v30);
  v377 = &v362 - v33;
  __chkstk_darwin(v32);
  v402 = &v362 - v34;
  v35 = sub_100936038();
  v379 = *(v35 - 8);
  v36 = __chkstk_darwin(v35);
  v369 = &v362 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v370 = &v362 - v39;
  v40 = __chkstk_darwin(v38);
  v373 = &v362 - v41;
  v42 = __chkstk_darwin(v40);
  v383 = &v362 - v43;
  v44 = __chkstk_darwin(v42);
  v371 = &v362 - v45;
  v46 = __chkstk_darwin(v44);
  v374 = &v362 - v47;
  v48 = __chkstk_darwin(v46);
  v390 = &v362 - v49;
  v50 = __chkstk_darwin(v48);
  v378 = &v362 - v51;
  __chkstk_darwin(v50);
  v392 = &v362 - v52;
  v398 = sub_100706B30(&unk_100CBB1F8);
  v393 = *(v398 - 8);
  v53 = __chkstk_darwin(v398);
  v382 = (&v362 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = __chkstk_darwin(v53);
  v388 = &v362 - v56;
  v57 = __chkstk_darwin(v55);
  v376 = &v362 - v58;
  v59 = __chkstk_darwin(v57);
  v375 = &v362 - v60;
  v61 = __chkstk_darwin(v59);
  v391 = (&v362 - v62);
  __chkstk_darwin(v61);
  v410 = &v362 - v63;
  v406 = a3;
  v64 = [a3 prefixedURI];
  v65 = sub_100936B38();
  v67 = v66;

  *&v408 = a4;
  v68 = [a4 prefixedURI];
  v69 = sub_100936B38();
  v71 = v70;

  v72 = a1;
  v73 = a2;
  v74 = sub_1008BA1A4(v65, v67, v69, v71, v72);

  v75 = v74;
  v404 = v74;
  if (v74 >> 62)
  {
    goto LABEL_347;
  }

  v76 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v76)
  {
LABEL_348:

    v343 = v406;
    v344 = v408;
    v345 = sub_1009364B8();
    v346 = sub_100936F18();

    if (os_log_type_enabled(v345, v346))
    {
      v347 = swift_slowAlloc();
      v348 = swift_slowAlloc();
      *v347 = 138412546;
      *(v347 + 4) = v343;
      *(v347 + 12) = 2112;
      *(v347 + 14) = v344;
      *v348 = v343;
      v348[1] = v344;
      v349 = v343;
      v350 = v344;
      _os_log_impl(&_mh_execute_header, v345, v346, "Found no generated keys for senderURI: %@ receiverURI: %@", v347, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

    goto LABEL_373;
  }

  while (2)
  {
    v364 = a6;
    v380 = a2;
    v401 = v35;
    v77 = 0;
    __s2[0] = &_swiftEmptyArrayStorage;
    v78 = v75 & 0xC000000000000001;
    a6 = v75 & 0xFFFFFFFFFFFFFF8;
    while (v78)
    {
      v79 = sub_100937268();
      a2 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      v73 = v79;
      if (sub_10075BE24() & 1) == 0 || (v73 = v79, (sub_10075E434()))
      {
      }

      else
      {
        v73 = __s2;
        sub_100937298();
        sub_1009372C8();
        sub_1009372D8();
        sub_1009372A8();
      }

      ++v77;
      v75 = v404;
      if (a2 == v76)
      {
        goto LABEL_15;
      }
    }

    if (v77 >= *(a6 + 16))
    {
      __break(1u);
      goto LABEL_324;
    }

    v79 = *(v75 + 8 * v77 + 32);

    a2 = v77 + 1;
    if (!__OFADD__(v77, 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __s2[0] = sub_1008EA860(__s2[0]);
    v80 = v409;
    v81 = sub_1008E62B4(__s2);
    if (v80)
    {
      goto LABEL_390;
    }

    v405 = 0;
    v76 = __s2[0];
    v82 = v401;
    if ((__s2[0] & 0x8000000000000000) == 0 && (__s2[0] & 0x4000000000000000) == 0)
    {
      v409 = __s2[0][2];
      if (v409)
      {
        goto LABEL_19;
      }

LABEL_355:

      v351 = v406;
      v352 = v408;
      v345 = sub_1009364B8();
      v353 = sub_100936F18();

      if (!os_log_type_enabled(v345, v353))
      {
        goto LABEL_373;
      }

      v354 = swift_slowAlloc();
      v355 = swift_slowAlloc();
      *v354 = 138412546;
      *(v354 + 4) = v351;
      *(v354 + 12) = 2112;
      *(v354 + 14) = v352;
      *v355 = v351;
      v355[1] = v352;
      v356 = v351;
      v357 = v352;
      _os_log_impl(&_mh_execute_header, v345, v353, "Found no acked keys for senderURI: %@ receiverURI: %@", v354, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();

LABEL_372:

      goto LABEL_373;
    }

    while (2)
    {
      v81 = sub_1009373F8();
      v409 = v81;
      if (!v81)
      {
        goto LABEL_355;
      }

LABEL_19:
      v406 = v76;
      v83 = (*((swift_isaMask & *v380) + 0xC8))(v81);
      if (v84 >> 60 == 15)
      {
        v73 = v407;

        goto LABEL_97;
      }

      v35 = v83;
      v73 = v84;
      v85 = v407[2];
      if (!v85)
      {
        v407 = &_swiftEmptyArrayStorage;
        goto LABEL_96;
      }

      v86 = 0;
      v82 = (v407 + 4);
      if (v83)
      {
        v87 = 0;
      }

      else
      {
        v87 = v84 == 0xC000000000000000;
      }

      v88 = !v87;
      LODWORD(v403) = v88;
      v89 = v84 >> 62;
      v90 = __OFSUB__(HIDWORD(v83), v83);
      v367 = v90;
      v366 = HIDWORD(v83) - v83;
      v400 = BYTE6(v84);
      v407 = &_swiftEmptyArrayStorage;
      v368 = v84;
      v381 = v83;
      v365 = v82;
LABEL_32:
      a6 = v86;
LABEL_35:
      if (a6 >= v85)
      {
        goto LABEL_331;
      }

      v86 = a6 + 1;
      if (__OFADD__(a6, 1))
      {
LABEL_332:
        __break(1u);
        goto LABEL_333;
      }

      v91 = *(v82 + 16 * a6);
      a2 = *(v82 + 16 * a6 + 8);
      v92 = a2 >> 62;
      if (a2 >> 62 != 3)
      {
        if (v92 > 1)
        {
          if (v92 != 2)
          {
            goto LABEL_59;
          }

          v97 = *(v91 + 16);
          v98 = *(v91 + 24);
          v99 = __OFSUB__(v98, v97);
          v96 = v98 - v97;
          if (v99)
          {
            goto LABEL_358;
          }

          if (v89 <= 1)
          {
            goto LABEL_56;
          }
        }

        else if (v92)
        {
          LODWORD(v96) = DWORD1(v91) - v91;
          if (__OFSUB__(DWORD1(v91), v91))
          {
            __break(1u);
LABEL_358:
            __break(1u);
LABEL_359:
            __break(1u);
LABEL_360:
            __break(1u);
LABEL_361:
            __break(1u);
LABEL_362:
            __break(1u);
            goto LABEL_363;
          }

          v96 = v96;
          if (v89 <= 1)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v96 = BYTE6(a2);
          if (v89 <= 1)
          {
            goto LABEL_56;
          }
        }

LABEL_60:
        if (v89 == 2)
        {
          v102 = *(v35 + 16);
          v101 = *(v35 + 24);
          v99 = __OFSUB__(v101, v102);
          v100 = v101 - v102;
          if (v99)
          {
            __break(1u);
LABEL_352:
            __break(1u);
LABEL_353:
            __break(1u);
            continue;
          }

          goto LABEL_62;
        }

        if (v96)
        {
          goto LABEL_88;
        }

        goto LABEL_34;
      }

      break;
    }

    if (v91)
    {
      v93 = 0;
    }

    else
    {
      v93 = a2 == 0xC000000000000000;
    }

    v95 = !v93 || v89 < 3;
    if (((v95 | v403) & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_59:
    v96 = 0;
    if (v89 > 1)
    {
      goto LABEL_60;
    }

LABEL_56:
    v100 = v400;
    if (v89)
    {
      v100 = v366;
      if (v367)
      {
        goto LABEL_352;
      }
    }

LABEL_62:
    if (v96 == v100)
    {
      if (v96 < 1)
      {
        goto LABEL_34;
      }

      v408 = *(v82 + 16 * a6);
      if (v92 > 1)
      {
        if (v92 != 2)
        {
          memset(__s2, 0, 14);
          sub_1007483B0(v35, v73);
          goto LABEL_85;
        }

        v82 = *(v91 + 16);
        v363 = *(v91 + 24);
        sub_100715738(v91, a2);
        sub_1007483B0(v35, v73);
        v73 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v76 = sub_100935BE8();
        if (v76)
        {
          v73 = a2 & 0x3FFFFFFFFFFFFFFFLL;
          v103 = sub_100935C18();
          if (__OFSUB__(v82, v103))
          {
            goto LABEL_361;
          }

          v76 += v82 - v103;
        }

        if (__OFSUB__(v363, v82))
        {
          goto LABEL_360;
        }

        sub_100935C08();
        v104 = v76;
        v35 = v381;
      }

      else
      {
        if (!v92)
        {
          __s2[0] = v91;
          LOWORD(__s2[1]) = a2;
          BYTE2(__s2[1]) = BYTE2(a2);
          BYTE3(__s2[1]) = BYTE3(a2);
          BYTE4(__s2[1]) = BYTE4(a2);
          BYTE5(__s2[1]) = BYTE5(a2);
          v76 = __s2 + BYTE6(a2);
          sub_1007483B0(v35, v73);
LABEL_85:
          v108 = v405;
          sub_10071C670(__s2, v35, v73, &v411);
          v405 = v108;
          if (v108)
          {
            goto LABEL_389;
          }

          sub_10001C370(v35, v73);
          if (!v411)
          {
            goto LABEL_89;
          }

LABEL_87:
          sub_1007156D8(v408, a2);
LABEL_34:
          ++a6;
          if (v86 == v85)
          {
            goto LABEL_96;
          }

          goto LABEL_35;
        }

        v105 = v91;
        v82 = (v91 >> 32) - v91;
        if (v91 >> 32 < v91)
        {
          goto LABEL_359;
        }

        sub_100715738(v91, a2);
        sub_1007483B0(v381, v73);
        v76 = sub_100935BE8();
        if (v76)
        {
          v73 = a2 & 0x3FFFFFFFFFFFFFFFLL;
          v106 = sub_100935C18();
          if (__OFSUB__(v105, v106))
          {
            goto LABEL_362;
          }

          v76 += v105 - v106;
        }

        v35 = v381;
        sub_100935C08();
        v104 = v76;
      }

      v73 = v368;
      v107 = v405;
      sub_10071C670(v104, v35, v368, __s2);
      v405 = v107;
      if (v107)
      {
        goto LABEL_389;
      }

      sub_10001C370(v35, v73);
      v82 = v365;
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_87;
    }

LABEL_88:
    v408 = *(v82 + 16 * a6);
    sub_100715738(v91, a2);
LABEL_89:
    v109 = v407;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v412 = v109;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1008E447C(0, v109[2] + 1, 1);
      v109 = v412;
    }

    v112 = v109[2];
    v111 = v109[3];
    v76 = (v112 + 1);
    v113 = v408;
    if (v112 >= v111 >> 1)
    {
      sub_1008E447C((v111 > 1), v112 + 1, 1);
      v113 = v408;
      v109 = v412;
    }

    v109[2] = v76;
    v407 = v109;
    *&v109[2 * v112 + 4] = v113;
    v73 = v368;
    v35 = v381;
    if (v86 != v85)
    {
      goto LABEL_32;
    }

LABEL_96:
    sub_10001C370(v35, v73);
    v82 = v401;
    v73 = v407;
LABEL_97:
    v114 = sub_100791A24(v73);

    v400 = v114;
    if (!*(v114 + 16))
    {
      v396 = OBJC_IVAR___IDSQuerySDPersistenceManager_logger;
      v230 = sub_1009364B8();
      v73 = sub_100936F18();
      if (os_log_type_enabled(v230, v73))
      {
        v231 = swift_slowAlloc();
        *v231 = 0;
        _os_log_impl(&_mh_execute_header, v230, v73, "Empty stewie capable tokens - checking for acked key by last iMessaged device", v231, 2u);
      }

      v232 = 0;
      v35 = v406 & 0xC000000000000001;
      *&v408 = v379 + 48;
      v233 = &_swiftEmptyArrayStorage;
      v399 = (v379 + 32);
      a6 = &unk_100CBB1F8;
      a2 = &unk_1009BF3C8;
      v234 = v402;
      v397 = v406 & 0xC000000000000001;
      while (1)
      {
        if (v35)
        {
          v73 = sub_100937268();
          v235 = v232 + 1;
          if (__OFADD__(v232, 1))
          {
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
            goto LABEL_332;
          }
        }

        else
        {
          if (v232 >= *(v406 + 16))
          {
            goto LABEL_330;
          }

          v73 = *(v406 + 8 * v232 + 32);

          v235 = v232 + 1;
          if (__OFADD__(v232, 1))
          {
            goto LABEL_329;
          }
        }

        sub_10075DF9C();
        v407 = *v408;
        if ((v407)(v234, 1, v82) == 1)
        {

          sub_100013814(v234, &qword_100CB4AC0);
        }

        else
        {
          v236 = v234;
          v403 = v233;
          v237 = *v399;
          v238 = v392;
          (*v399)(v392, v236, v82);
          v239 = *(v398 + 48);
          v240 = v82;
          v241 = v391;
          *v391 = v73;
          v242 = v238;
          v243 = v240;
          (v237)(v241 + v239, v242);
          v233 = v403;
          sub_100021E3C(v241, v410, &unk_100CBB1F8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v233 = sub_1008E3EF0(0, v233[2] + 1, 1, v233);
          }

          v245 = v233[2];
          v244 = v233[3];
          v73 = v245 + 1;
          v82 = v243;
          if (v245 >= v244 >> 1)
          {
            v233 = sub_1008E3EF0(v244 > 1, v245 + 1, 1, v233);
          }

          v35 = v397;
          v233[2] = v73;
          sub_100021E3C(v410, v233 + ((*(v393 + 80) + 32) & ~*(v393 + 80)) + *(v393 + 72) * v245, &unk_100CBB1F8);
          v234 = v402;
        }

        ++v232;
        if (v235 == v409)
        {

          __s2[0] = v233;

          v246 = v405;
          sub_1008E6200(__s2);
          v405 = v246;
          if (v246)
          {
            goto LABEL_390;
          }

          v247 = __s2[0];
          v248 = __s2[0][2];
          if (v248)
          {
            __s2[0] = &_swiftEmptyArrayStorage;
            sub_1009372B8();
            v249 = v247 + ((*(v393 + 80) + 32) & ~*(v393 + 80));
            v250 = *(v393 + 72);
            v409 = v247;
            v410 = v250;
            a6 = v379 + 8;
            v251 = v376;
            v252 = v375;
            do
            {
              sub_100012D50(v249, v252, &unk_100CBB1F8);
              sub_100021E3C(v252, v251, &unk_100CBB1F8);
              (*a6)(v251 + *(v398 + 48), v401);
              sub_100937298();
              sub_1009372C8();
              sub_1009372D8();
              sub_1009372A8();
              v249 += v410;
              --v248;
            }

            while (v248);

            v73 = __s2[0];
            v82 = v401;
          }

          else
          {

            v73 = &_swiftEmptyArrayStorage;
          }

          v76 = v378;
          v89 = v377;
          if (!(v73 >> 62))
          {
            if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_295;
            }

LABEL_364:

            v345 = sub_1009364B8();
            v358 = sub_100936F18();
            if (os_log_type_enabled(v345, v358))
            {
              v359 = swift_slowAlloc();
              *v359 = 0;
              v360 = "Found no last iMessaged device";
              goto LABEL_371;
            }

LABEL_373:

            return;
          }

LABEL_363:
          if (!sub_1009373F8())
          {
            goto LABEL_364;
          }

LABEL_295:
          if ((v73 & 0xC000000000000001) == 0)
          {
            if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {

              goto LABEL_298;
            }

            __break(1u);
LABEL_368:
            if (!sub_1009373F8())
            {
LABEL_369:

              v345 = sub_1009364B8();
              v358 = sub_100936F18();
              if (!os_log_type_enabled(v345, v358))
              {
                goto LABEL_373;
              }

              v359 = swift_slowAlloc();
              *v359 = 0;
              v360 = "Found no last active offgrid device";
LABEL_371:
              _os_log_impl(&_mh_execute_header, v345, v358, v360, v359, 2u);
              goto LABEL_372;
            }

LABEL_309:
            if ((v73 & 0xC000000000000001) != 0)
            {
              sub_100937268();
            }

            else
            {
              if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_376:
                __break(1u);
LABEL_377:
                __break(1u);
LABEL_378:
                __break(1u);
LABEL_379:
                __break(1u);
LABEL_380:
                __break(1u);
LABEL_381:
                __break(1u);
LABEL_382:
                __break(1u);
LABEL_383:
                __break(1u);
LABEL_384:
                __break(1u);
LABEL_385:
                __break(1u);
              }
            }

            v306 = type metadata accessor for SenderKeyDistributionManager(0);
            (*(v306 + 888))();
            v307 = v390;
            sub_100936028();
            sub_100935F48();
            v35 = v379 + 8;
            v77 = *(v379 + 8);
            (v77)(v307, a6);
            sub_10075DB04();
            if ((v408)(v89, 1, a6) == 1)
            {
              v264 = v76;
              v265 = a6;
              goto LABEL_314;
            }

            v73 = v370;
            (*v399)(v370, v89, a6);
            if (sub_100935F68())
            {
              v409 = sub_10075A72C();
              *&v408 = v308;
              v309 = sub_10075A43C();
              v406 = v310;
              v407 = v309;
              v311 = v390;
              sub_10075B2DC();
              v312 = sub_10075AA1C();
              v314 = v313;
              v315 = sub_10075AD04();
              v317 = v316;
              v318 = v312;
              v319 = v314;
              a6 = v73;
              a2 = v401;
              v320 = nullsub_23(v318, v319, v315, v317);
              v321 = v387;
              sub_10078694C(v409, v408, v407, v406, v311, v320, v322, v323, v387, v324);
              v325 = sub_10075B6D4();
              v326 = v386;
              sub_100780BD0(v321, v325, v327, v386);
              (*(v82 + 56))(v326, 0, 1, v396);
              sub_10073545C(v326, v364, &unk_100CB4A50);
              v82 = v369;
              (*(v379 + 16))(v369, a6, a2);

              v118 = sub_1009364B8();
              v328 = sub_100936F18();
              if (!os_log_type_enabled(v118, v328))
              {
                goto LABEL_327;
              }

              v329 = swift_slowAlloc();
              v410 = swift_slowAlloc();
              __s2[0] = v410;
              *v329 = 136315394;
              sub_100014C40(&qword_100CB3A88, &type metadata accessor for Date);
              v330 = sub_100937548();
              v331 = v82;
              v333 = v332;
              (v77)(v331, a2);
              v334 = sub_10001273C(v330, v333, __s2);

              *(v329 + 4) = v334;
              *(v329 + 12) = 2080;
              v335 = sub_10075AFEC();
              v337 = v336;
              isa = sub_100935E78().super.isa;
              sub_1007156D8(v335, v337);
              v73 = [(objc_class *)isa __imHexString];

              if (v73)
              {
                v339 = sub_100936B38();
                v341 = v340;

                v342 = sub_10001273C(v339, v341, __s2);

                *(v329 + 14) = v342;
                _os_log_impl(&_mh_execute_header, v118, v328, "Last active offgrid device was seen at: %s token: %s", v329, 0x16u);
                swift_arrayDestroy();

                v303 = v401;
                (v77)(v370, v401);
                v304 = &v405;
                goto LABEL_319;
              }

              goto LABEL_388;
            }

LABEL_324:

            (v77)(v73, a6);
            (v77)(v76, a6);
            return;
          }

          sub_100937268();
LABEL_298:

          v262 = type metadata accessor for SenderKeyDistributionManager(0);
          (*(v262 + 912))();
          v263 = v390;
          sub_100936028();
          sub_100935F48();
          v35 = v379 + 8;
          v77 = *(v379 + 8);
          (v77)(v263, v82);
          sub_10075DF9C();
          if ((v407)(v89, 1, v82) == 1)
          {
            v264 = v76;
            v265 = v82;
LABEL_314:
            (v77)(v264, v265);

            sub_100013814(v89, &qword_100CB4AC0);
            return;
          }

          v266 = v374;
          (*v399)(v374, v89, v82);
          if (sub_100935F68())
          {
            v267 = sub_10075A72C();
            v409 = v268;
            v410 = v267;
            v269 = sub_10075A43C();
            v271 = v270;
            v272 = v390;
            sub_10075B2DC();
            v273 = sub_10075AA1C();
            v275 = v274;
            v276 = sub_10075AD04();
            v278 = nullsub_23(v273, v275, v276, v277);
            v361 = v279;
            v280 = v387;
            v82 = v401;
            v281 = v271;
            v120 = v374;
            sub_10078694C(v410, v409, v269, v281, v272, v278, v282, v283, v387, v361);
            v284 = sub_10075B6D4();
            v285 = v386;
            sub_100780BD0(v280, v284, v286, v386);
            v287 = type metadata accessor for SenderKeyAndState(0);
            (*(*(v287 - 8) + 56))(v285, 0, 1, v287);
            sub_10073545C(v285, v364, &unk_100CB4A50);
            a2 = v371;
            (*(v379 + 16))(v371, v120, v82);

            v118 = sub_1009364B8();
            v288 = sub_100936F18();
            if (os_log_type_enabled(v118, v288))
            {
              LODWORD(v410) = v288;
              v289 = v82;
              v290 = swift_slowAlloc();
              v409 = swift_slowAlloc();
              __s2[0] = v409;
              *v290 = 136315394;
              sub_100014C40(&qword_100CB3A88, &type metadata accessor for Date);
              v291 = sub_100937548();
              v293 = v292;
              (v77)(a2, v289);
              v294 = sub_10001273C(v291, v293, __s2);

              *(v290 + 4) = v294;
              *(v290 + 12) = 2080;
              v295 = sub_10075AFEC();
              v297 = v296;
              v298 = sub_100935E78().super.isa;
              sub_1007156D8(v295, v297);
              v73 = [(objc_class *)v298 __imHexString];

              if (v73)
              {
                v299 = sub_100936B38();
                v301 = v300;

                v302 = sub_10001273C(v299, v301, __s2);

                *(v290 + 14) = v302;
                _os_log_impl(&_mh_execute_header, v118, v410, "Last iMessaged device was seen at: %s token: %s", v290, 0x16u);
                swift_arrayDestroy();

                v303 = v401;
                (v77)(v374, v401);
                v304 = &v409;
LABEL_319:
                (v77)(*(v304 - 32), v303);
                return;
              }

              __break(1u);
LABEL_387:

              __break(1u);
LABEL_388:
              __break(1u);
LABEL_389:
              sub_10001C370(v35, v73);
              __break(1u);
LABEL_390:

              __break(1u);
              return;
            }

LABEL_321:

            (v77)(a2, v82);
            (v77)(v120, v82);
            v305 = v378;
          }

          else
          {

            (v77)(v266, v82);
            v305 = v76;
          }

          (v77)(v305, v82);
          return;
        }
      }
    }

    v402 = 0;
    v35 = v406;
    v407 = (v406 & 0xC000000000000001);
    v381 = v406 + 32;
LABEL_100:
    if (!v407)
    {
      v117 = v402;
      if (v402 >= *(v35 + 16))
      {
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        v76 = sub_1009373F8();
        v75 = v404;
        if (!v76)
        {
          goto LABEL_348;
        }

        continue;
      }

      *&v408 = *(v381 + 8 * v402);

      v99 = __OFADD__(v117, 1);
      v116 = v117 + 1;
      if (!v99)
      {
        goto LABEL_106;
      }

LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
      goto LABEL_342;
    }

    break;
  }

  v115 = v402;
  *&v408 = sub_100937268();
  v99 = __OFADD__(v115, 1);
  v116 = v115 + 1;
  if (v99)
  {
    goto LABEL_333;
  }

LABEL_106:
  v402 = v116;
  v118 = 0;
  v412 = &_swiftEmptyArrayStorage;
  while (2)
  {
    if (!v407)
    {
      if (v118 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_306;
      }

      v120 = &v118->isa + 1;
      if (!__OFADD__(v118, 1))
      {
        goto LABEL_116;
      }

LABEL_285:
      __break(1u);
LABEL_286:

      sub_100013814(v73, &unk_100CB4A50);
      return;
    }

    v119 = sub_100937268();
    v120 = &v118->isa + 1;
    if (__OFADD__(v118, 1))
    {
      goto LABEL_285;
    }

LABEL_116:
    v410 = v119;
    v121 = sub_10075A43C();
    a2 = v122;
    v73 = v408;
    v123 = sub_10075A43C();
    v82 = v123;
    v77 = v124;
    v125 = a2 >> 62;
    a6 = v124 >> 62;
    if (a2 >> 62 == 3)
    {
      v126 = 0;
      if (!v121 && a2 == 0xC000000000000000 && v124 >> 62 == 3)
      {
        v126 = 0;
        if (!v123 && v124 == 0xC000000000000000)
        {
          sub_1007156D8(0, 0xC000000000000000);
          v127 = 0;
          v128 = 0xC000000000000000;
          goto LABEL_144;
        }
      }

LABEL_132:
      if (a6 <= 1)
      {
LABEL_133:
        if (!a6)
        {
          v131 = BYTE6(v124);
          goto LABEL_135;
        }

        if (__OFSUB__(HIDWORD(v123), v123))
        {
          goto LABEL_320;
        }

        if (v126 == HIDWORD(v123) - v123)
        {
LABEL_139:
          if (v126 >= 1)
          {
            if (v125 > 1)
            {
              if (v125 != 2)
              {
                memset(__s2, 0, 14);
LABEL_160:
                v138 = v405;
                sub_10071C670(__s2, v123, v124, &v411);
                v405 = v138;
                if (v138)
                {
                  goto LABEL_387;
                }

                sub_1007156D8(v121, a2);
                sub_1007156D8(v82, v77);
                if (v411)
                {
                  goto LABEL_145;
                }

                goto LABEL_218;
              }

              v403 = *(v121 + 16);
              v134 = sub_100935BE8();
              if (v134)
              {
                v35 = v134;
                v73 = a2 & 0x3FFFFFFFFFFFFFFFLL;
                v135 = sub_100935C18();
                if (__OFSUB__(v403, v135))
                {
                  goto LABEL_334;
                }

                v403 = (v403 + v35 - v135);
              }

              else
              {
                v403 = 0;
              }

              v73 = a2 & 0x3FFFFFFFFFFFFFFFLL;
              sub_100935C08();
              v35 = v406;
              if (a6 != 2)
              {
                if (a6 == 1)
                {
                  v35 = v82;
                  a6 = (v82 >> 32) - v82;
                  if (v82 >> 32 < v82)
                  {
                    goto LABEL_337;
                  }

                  v139 = sub_100935BE8();
                  if (v139)
                  {
                    v392 = v139;
                    v73 = v77 & 0x3FFFFFFFFFFFFFFFLL;
                    v140 = sub_100935C18();
                    if (__OFSUB__(v82, v140))
                    {
                      goto LABEL_344;
                    }

                    v35 = &v392[v82 - v140];
                  }

                  else
                  {
                    v35 = 0;
                  }

                  v150 = sub_100935C08();
                  if (v150 >= a6)
                  {
                    v145 = (v82 >> 32) - v82;
                  }

                  else
                  {
                    v145 = v150;
                  }

                  v146 = v403;
                  if (!v403)
                  {
                    goto LABEL_381;
                  }

                  if (!v35)
                  {
                    goto LABEL_380;
                  }

                  goto LABEL_215;
                }

                v147 = v403;
                __s2[0] = v82;
                LOWORD(__s2[1]) = v77;
                BYTE2(__s2[1]) = BYTE2(v77);
                BYTE3(__s2[1]) = BYTE3(v77);
                BYTE4(__s2[1]) = BYTE4(v77);
                BYTE5(__s2[1]) = BYTE5(v77);
                if (!v403)
                {
                  goto LABEL_379;
                }

                goto LABEL_200;
              }

              a6 = *(v82 + 16);
              v392 = *(v82 + 24);
              v73 = v77 & 0x3FFFFFFFFFFFFFFFLL;
              v35 = sub_100935BE8();
              if (v35)
              {
                v73 = v77 & 0x3FFFFFFFFFFFFFFFLL;
                v143 = sub_100935C18();
                if (__OFSUB__(a6, v143))
                {
                  goto LABEL_343;
                }

                v35 += a6 - v143;
              }

              v99 = __OFSUB__(v392, a6);
              a6 = &v392[-a6];
              if (v99)
              {
                goto LABEL_338;
              }

              v144 = sub_100935C08();
              if (v144 >= a6)
              {
                v145 = a6;
              }

              else
              {
                v145 = v144;
              }

              v146 = v403;
              if (!v403)
              {
                goto LABEL_378;
              }

              if (!v35)
              {
                goto LABEL_377;
              }
            }

            else
            {
              if (!v125)
              {
                __s2[0] = v121;
                LOWORD(__s2[1]) = a2;
                BYTE2(__s2[1]) = BYTE2(a2);
                BYTE3(__s2[1]) = BYTE3(a2);
                BYTE4(__s2[1]) = BYTE4(a2);
                BYTE5(__s2[1]) = BYTE5(a2);
                goto LABEL_160;
              }

              v35 = v121;
              if (v121 > v121 >> 32)
              {
                __break(1u);
                goto LABEL_329;
              }

              v136 = sub_100935BE8();
              if (v136)
              {
                v403 = v136;
                v73 = a2 & 0x3FFFFFFFFFFFFFFFLL;
                v137 = sub_100935C18();
                if (__OFSUB__(v121, v137))
                {
                  goto LABEL_335;
                }

                v403 = (v403 + v121 - v137);
              }

              else
              {
                v403 = 0;
              }

              v73 = a2 & 0x3FFFFFFFFFFFFFFFLL;
              sub_100935C08();
              v35 = v406;
              if (a6 != 2)
              {
                if (a6 == 1)
                {
                  v35 = v82;
                  a6 = (v82 >> 32) - v82;
                  if (v82 >> 32 < v82)
                  {
                    goto LABEL_339;
                  }

                  v141 = sub_100935BE8();
                  if (v141)
                  {
                    v392 = v141;
                    v73 = v77 & 0x3FFFFFFFFFFFFFFFLL;
                    v142 = sub_100935C18();
                    if (__OFSUB__(v82, v142))
                    {
                      goto LABEL_346;
                    }

                    v35 = &v392[v82 - v142];
                  }

                  else
                  {
                    v35 = 0;
                  }

                  v151 = sub_100935C08();
                  if (v151 >= a6)
                  {
                    v145 = (v82 >> 32) - v82;
                  }

                  else
                  {
                    v145 = v151;
                  }

                  v146 = v403;
                  if (!v403)
                  {
                    goto LABEL_383;
                  }

                  if (!v35)
                  {
                    goto LABEL_382;
                  }

                  goto LABEL_215;
                }

                v147 = v403;
                __s2[0] = v82;
                LOWORD(__s2[1]) = v77;
                BYTE2(__s2[1]) = BYTE2(v77);
                BYTE3(__s2[1]) = BYTE3(v77);
                BYTE4(__s2[1]) = BYTE4(v77);
                BYTE5(__s2[1]) = BYTE5(v77);
                if (!v403)
                {
                  goto LABEL_376;
                }

LABEL_200:
                v73 = memcmp(v147, __s2, BYTE6(v77));
                sub_1007156D8(v82, v77);
                sub_1007156D8(v121, a2);
                if (!v73)
                {
                  goto LABEL_145;
                }

LABEL_218:

LABEL_109:
                v118 = (v118 + 1);
                if (v120 != v409)
                {
                  continue;
                }

                v152 = v412;
                if ((v412 & 0x8000000000000000) != 0 || (v412 & 0x4000000000000000) != 0)
                {
                  v162 = v412;
                  a6 = sub_1009373F8();
                  v152 = v162;
                  if (!a6)
                  {
                    goto LABEL_232;
                  }

LABEL_222:
                  v153 = v152;
                  __s2[0] = &_swiftEmptyArrayStorage;
                  v73 = __s2;
                  sub_1008E447C(0, a6 & ~(a6 >> 63), 0);
                  if (a6 < 0)
                  {
                    goto LABEL_336;
                  }

                  v154 = 0;
                  v155 = __s2[0];
                  v410 = v153 & 0xC000000000000001;
                  do
                  {
                    if (v410)
                    {
                      sub_100937268();
                    }

                    else
                    {
                    }

                    v156 = sub_10075AFEC();
                    v158 = v157;

                    __s2[0] = v155;
                    v160 = v155[2];
                    v159 = v155[3];
                    if (v160 >= v159 >> 1)
                    {
                      sub_1008E447C((v159 > 1), v160 + 1, 1);
                      v155 = __s2[0];
                    }

                    ++v154;
                    v155[2] = v160 + 1;
                    v161 = &v155[2 * v160];
                    v161[4] = v156;
                    v161[5] = v158;
                  }

                  while (a6 != v154);
                }

                else
                {
                  a6 = *(v412 + 16);
                  if (a6)
                  {
                    goto LABEL_222;
                  }

LABEL_232:

                  v155 = &_swiftEmptyArrayStorage;
                }

                v163 = sub_100791A24(v155);

                if (*(v400 + 16))
                {
                  if (sub_1008E6330(v163, v400))
                  {
                    v164 = v385;
                    sub_100012D50(v397, v385, &unk_100CB4A50);
                    v165 = type metadata accessor for SenderKeyAndState(0);
                    v166 = *(v165 - 8);
                    v167 = (*(v166 + 48))(v164, 1, v165);
                    sub_100013814(v164, &unk_100CB4A50);
                    if (v167 == 1)
                    {
                      v410 = sub_10075A72C();
                      v403 = v168;
                      v169 = sub_10075A43C();
                      v171 = v170;
                      v172 = v390;
                      sub_10075B2DC();
                      v173 = sub_10075AA1C();
                      v175 = v174;
                      v176 = sub_10075AD04();
                      v178 = nullsub_23(v173, v175, v176, v177);
                      v179 = v387;
                      sub_10078694C(v410, v403, v169, v171, v172, v178, v180, v181, v387, v182);
                      v183 = sub_10075B6D4();
                      v184 = v386;
                      sub_100780BD0(v179, v183, v185, v386);
                      (*(v166 + 56))(v184, 0, 1, v165);
                      sub_10073545C(v184, v397, &unk_100CB4A50);
                    }
                  }
                }

                v186 = v394;
                sub_100012D50(v399, v394, &unk_100CB4A50);
                a2 = type metadata accessor for SenderKeyAndState(0);
                v82 = *(a2 - 8);
                a6 = v82 + 48;
                v187 = *(v82 + 48);
                if (v187(v186, 1, a2) == 1)
                {
                  sub_100013814(v186, &unk_100CB4A50);
                  v188 = *(sub_1008E6DCC(v400, v163) + 16);

                  if (v188)
                  {
                    v403 = sub_10075A72C();
                    v392 = v189;
                    v391 = sub_10075A43C();
                    v191 = v190;
                    v192 = v390;
                    sub_10075B2DC();
                    v193 = sub_10075AA1C();
                    v410 = v82;
                    v194 = v193;
                    v195 = a2;
                    v197 = v196;
                    v198 = sub_10075AD04();
                    v200 = v199;
                    v201 = v197;
                    a2 = v195;
                    v202 = nullsub_23(v194, v201, v198, v200);
                    v203 = v387;
                    sub_10078694C(v403, v392, v391, v191, v192, v202, v204, v205, v387, v206);
                    v207 = sub_10075B6D4();
                    v208 = v386;
                    v209 = v203;
                    v82 = v410;
                    sub_100780BD0(v209, v207, v210, v386);

                    (*(v82 + 56))(v208, 0, 1, v195);
                    sub_10073545C(v208, v399, &unk_100CB4A50);
                  }

                  else
                  {
                  }
                }

                else
                {

                  sub_100013814(v186, &unk_100CB4A50);
                }

                v211 = v395;
                sub_100012D50(v397, v395, &unk_100CB4A50);
                v212 = v187(v211, 1, a2);
                sub_100013814(v211, &unk_100CB4A50);
                v35 = v406;
                if (v212 == 1 || (v213 = v389, sub_100012D50(v399, v389, &unk_100CB4A50), v214 = v187(v213, 1, a2), sub_100013814(v213, &unk_100CB4A50), v214 == 1))
                {
                  v73 = v396;
                  if (v402 != v409)
                  {
                    goto LABEL_100;
                  }
                }

                else
                {
                  v73 = v396;
                }

                sub_100012D50(v397, v73, &unk_100CB4A50);
                if (v187(v73, 1, a2) == 1)
                {
                  v396 = a2;
                  sub_100013814(v73, &unk_100CB4A50);
                  v397 = OBJC_IVAR___IDSQuerySDPersistenceManager_logger;
                  v215 = sub_1009364B8();
                  v216 = sub_100936F18();
                  if (os_log_type_enabled(v215, v216))
                  {
                    v217 = swift_slowAlloc();
                    *v217 = 0;
                    _os_log_impl(&_mh_execute_header, v215, v216, "No key acked by all Stewie capable devices - checking for acked key by recently offgrid device", v217, 2u);
                  }

                  v35 = 0;
                  a2 = v379 + 48;
                  v218 = &_swiftEmptyArrayStorage;
                  v399 = (v379 + 32);
                  v219 = &unk_100CBB1F8;
                  v76 = v384;
                  v410 = v82;
                  v402 = v379 + 48;
                  do
                  {
                    if (v407)
                    {
                      v73 = sub_100937268();
                      a6 = v35 + 1;
                      if (__OFADD__(v35, 1))
                      {
                        goto LABEL_341;
                      }
                    }

                    else
                    {
                      if (v35 >= *(v406 + 16))
                      {
                        goto LABEL_353;
                      }

                      v73 = *(v406 + 8 * v35 + 32);

                      a6 = v35 + 1;
                      if (__OFADD__(v35, 1))
                      {
                        goto LABEL_341;
                      }
                    }

                    sub_10075DB04();
                    v220 = v401;
                    *&v408 = *a2;
                    if ((v408)(v76, 1, v401) == 1)
                    {

                      sub_100013814(v76, &qword_100CB4AC0);
                    }

                    else
                    {
                      v403 = a6;
                      v221 = v76;
                      v222 = *v399;
                      v223 = v219;
                      v224 = v383;
                      (*v399)(v383, v221, v220);
                      v225 = *(v398 + 48);
                      v226 = v382;
                      *v382 = v73;
                      v227 = v224;
                      v219 = v223;
                      v222((v226 + v225), v227, v220);
                      sub_100021E3C(v226, v388, v223);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v218 = sub_1008E3EF0(0, v218[2] + 1, 1, v218);
                      }

                      v229 = v218[2];
                      v228 = v218[3];
                      v82 = v410;
                      a6 = v403;
                      if (v229 >= v228 >> 1)
                      {
                        v218 = sub_1008E3EF0(v228 > 1, v229 + 1, 1, v218);
                      }

                      a2 = v402;
                      v218[2] = v229 + 1;
                      sub_100021E3C(v388, v218 + ((*(v393 + 80) + 32) & ~*(v393 + 80)) + *(v393 + 72) * v229, v219);
                      v76 = v384;
                    }

                    ++v35;
                    v87 = a6 == v409;
                    a6 = v401;
                  }

                  while (!v87);

                  __s2[0] = v218;

                  v253 = v405;
                  sub_1008E6200(__s2);
                  v405 = v253;
                  if (v253)
                  {
                    goto LABEL_390;
                  }

                  v254 = __s2[0];
                  v255 = __s2[0][2];
                  if (v255)
                  {
                    __s2[0] = &_swiftEmptyArrayStorage;
                    sub_1009372B8();
                    v256 = *(v393 + 80);
                    v407 = v254;
                    v257 = v254 + ((v256 + 32) & ~v256);
                    v409 = *(v393 + 72);
                    v258 = (v379 + 8);
                    v259 = v398;
                    v260 = v376;
                    v261 = v375;
                    do
                    {
                      sub_100012D50(v257, v261, &unk_100CBB1F8);
                      sub_100021E3C(v261, v260, &unk_100CBB1F8);
                      (*v258)(v260 + *(v259 + 48), a6);
                      sub_100937298();
                      sub_1009372C8();
                      a6 = v401;
                      sub_1009372D8();
                      sub_1009372A8();
                      v257 += v409;
                      --v255;
                    }

                    while (v255);

                    v73 = __s2[0];
                    v82 = v410;
LABEL_307:
                    v76 = v373;
                    v89 = v372;
                    if (v73 >> 62)
                    {
                      goto LABEL_368;
                    }

                    if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_369;
                    }

                    goto LABEL_309;
                  }

LABEL_306:

                  v73 = &_swiftEmptyArrayStorage;
                  goto LABEL_307;
                }

                goto LABEL_286;
              }

              a6 = *(v82 + 16);
              v392 = *(v82 + 24);
              v73 = v77 & 0x3FFFFFFFFFFFFFFFLL;
              v35 = sub_100935BE8();
              if (v35)
              {
                v73 = v77 & 0x3FFFFFFFFFFFFFFFLL;
                v148 = sub_100935C18();
                if (__OFSUB__(a6, v148))
                {
                  goto LABEL_345;
                }

                v35 += a6 - v148;
              }

              v99 = __OFSUB__(v392, a6);
              a6 = &v392[-a6];
              if (v99)
              {
                goto LABEL_340;
              }

              v149 = sub_100935C08();
              if (v149 >= a6)
              {
                v145 = a6;
              }

              else
              {
                v145 = v149;
              }

              v146 = v403;
              if (!v403)
              {
                goto LABEL_385;
              }

              if (!v35)
              {
                goto LABEL_384;
              }
            }

LABEL_215:
            if (v146 == v35)
            {
              sub_1007156D8(v82, v77);
              sub_1007156D8(v121, a2);
              v35 = v406;
              goto LABEL_145;
            }

            v73 = memcmp(v146, v35, v145);
            sub_1007156D8(v82, v77);
            sub_1007156D8(v121, a2);
            v35 = v406;
            if (v73)
            {
              goto LABEL_218;
            }

LABEL_145:
            v73 = &v412;
            sub_100937298();
            sub_1009372C8();
            sub_1009372D8();
            sub_1009372A8();
            goto LABEL_109;
          }

LABEL_143:
          sub_1007156D8(v123, v124);
          v127 = v121;
          v128 = a2;
LABEL_144:
          sub_1007156D8(v127, v128);
          goto LABEL_145;
        }

LABEL_108:

        sub_1007156D8(v82, v77);
        sub_1007156D8(v121, a2);
        goto LABEL_109;
      }

LABEL_126:
      if (a6 == 2)
      {
        v130 = *(v123 + 16);
        v129 = *(v123 + 24);
        v99 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v99)
        {
          __break(1u);
LABEL_320:
          __break(1u);
          goto LABEL_321;
        }

LABEL_135:
        if (v126 == v131)
        {
          goto LABEL_139;
        }
      }

      else if (!v126)
      {
        goto LABEL_143;
      }

      goto LABEL_108;
    }

    break;
  }

  if (v125 <= 1)
  {
    if (v125)
    {
      LODWORD(v126) = HIDWORD(v121) - v121;
      if (__OFSUB__(HIDWORD(v121), v121))
      {
        goto LABEL_326;
      }

      v126 = v126;
      if (a6 <= 1)
      {
        goto LABEL_133;
      }
    }

    else
    {
      v126 = BYTE6(a2);
      if (a6 <= 1)
      {
        goto LABEL_133;
      }
    }

    goto LABEL_126;
  }

  if (v125 != 2)
  {
    v126 = 0;
    if (a6 <= 1)
    {
      goto LABEL_133;
    }

    goto LABEL_126;
  }

  v133 = *(v121 + 16);
  v132 = *(v121 + 24);
  v99 = __OFSUB__(v132, v133);
  v126 = v132 - v133;
  if (!v99)
  {
    goto LABEL_132;
  }

  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:

  (v77)(v82, a2);
  (v77)(a6, a2);
  (v77)(v373, a2);
}

uint64_t sub_1008C1000(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = sub_100706B30(&qword_100CBA368);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11];
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v21[0] = &_swiftEmptyArrayStorage;
  v16 = v21;
  v17 = v12;
  (*((swift_isaMask & *v4) + 0x118))(a4, sub_1008F4D70, v15);
  v13 = v21[0];
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_1008C12A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v56 = a4;
  v43 = a3;
  v48 = a1;
  v62 = a5;
  v6 = sub_100706B30(&qword_100CBA430);
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  __chkstk_darwin(v6);
  v54 = v41 - v8;
  v55 = sub_100706B30(&qword_100CBA6A0);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = v41 - v9;
  v10 = sub_100706B30(&qword_100CBA6A8);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  __chkstk_darwin(v10);
  v53 = v41 - v12;
  v47 = sub_100706B30(&qword_100CBAD28);
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = v41 - v13;
  v15 = sub_100706B30(&qword_100CBA6B0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - v17;
  v19 = sub_100706B30(&qword_100CBA6B8);
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  __chkstk_darwin(v19);
  v22 = v41 - v21;
  v50 = sub_100706B30(&qword_100CBAD30);
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = v41 - v23;
  v48 = *v48;
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v24 = *(v16 + 8);
  v41[1] = v16 + 8;
  v42 = v24;
  v24(v18, v15);
  v63 = a2;
  v64 = v43;
  v25 = v14;
  sub_100935D48();
  v43 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28);
  sub_1008EFEF8();
  v26 = v44;
  v27 = v47;
  sub_100935C68();
  (*(v49 + 8))(v25, v27);
  (*(v45 + 8))(v22, v26);
  sub_100935D58();
  swift_getKeyPath();
  v28 = v51;
  sub_100935C78();

  v42(v18, v15);
  LOBYTE(v63) = v56;
  v29 = v54;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v30 = v53;
  v31 = v29;
  v32 = v55;
  v33 = v58;
  sub_100935C68();
  (*(v59 + 8))(v31, v33);
  (*(v57 + 8))(v28, v32);
  v34 = sub_100706B30(&qword_100CBAD40);
  v35 = v62;
  v62[3] = v34;
  v35[4] = sub_1008F2534();
  sub_100014250(v35);
  sub_100014C88(&qword_100CBAD60, &qword_100CBAD30);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v36 = v46;
  v37 = v30;
  v38 = v50;
  v39 = v60;
  sub_100935CF8();
  (*(v61 + 8))(v37, v39);
  return (*(v52 + 8))(v36, v38);
}

uint64_t sub_1008C1A64(uint64_t a1, char a2, uint64_t a3)
{
  v7 = sub_100706B30(&qword_100CBA368);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  v16 = a1;
  v17 = a2;
  v18[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v18[0] = &_swiftEmptyArrayStorage;
  v14 = v18;
  v15 = v10;
  (*((swift_isaMask & *v3) + 0x118))(a3, sub_1008F4D70, v13);
  v11 = v18[0];
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_1008C1D00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v56 = a3;
  v62 = a4;
  v6 = sub_100706B30(&qword_100CBA430);
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  __chkstk_darwin(v6);
  v54 = v42 - v8;
  v55 = sub_100706B30(&qword_100CBA6A0);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = v42 - v9;
  v10 = sub_100706B30(&qword_100CBA6A8);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  __chkstk_darwin(v10);
  v53 = v42 - v12;
  v13 = sub_100706B30(&qword_100CBA6B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = sub_100706B30(&qword_100CBA6B8);
  v18 = *(v17 - 8);
  v48 = v17;
  v49 = v18;
  __chkstk_darwin(v17);
  v20 = v42 - v19;
  v21 = sub_100706B30(&qword_100CBA6C0);
  v22 = *(v21 - 8);
  v46 = v21;
  v47 = v22;
  __chkstk_darwin(v21);
  v24 = v42 - v23;
  v25 = sub_100706B30(&qword_100CBA6C8);
  v26 = *(v25 - 8);
  v51 = v25;
  v52 = v26;
  __chkstk_darwin(v25);
  v63 = v42 - v27;
  v44 = *a1;
  v65 = a2;
  sub_100706B30(&qword_100CBA6D8);
  sub_100935D48();
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v28 = *(v14 + 8);
  v42[1] = v14 + 8;
  v43 = v28;
  v28(v16, v13);
  v45 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA6E8, &qword_100CBA6C0);
  v42[0] = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8);
  sub_100014C88(&qword_100CBA6F8, &qword_100CBA6D8);
  sub_1008EFEF8();
  v29 = v46;
  v30 = v48;
  sub_100935CA8();
  (*(v49 + 8))(v20, v30);
  (*(v47 + 8))(v24, v29);
  sub_100935D58();
  swift_getKeyPath();
  v31 = v50;
  sub_100935C78();

  v43(v16, v13);
  v64 = v56;
  v32 = v54;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v33 = v53;
  v34 = v55;
  v35 = v58;
  sub_100935C68();
  (*(v59 + 8))(v32, v35);
  (*(v57 + 8))(v31, v34);
  v36 = sub_100706B30(&qword_100CBA6D0);
  v37 = v62;
  v62[3] = v36;
  v37[4] = sub_1008EFFD8();
  sub_100014250(v37);
  sub_100014C88(&qword_100CBA718, &qword_100CBA6C8);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v38 = v63;
  v39 = v51;
  v40 = v60;
  sub_100935CF8();
  (*(v61 + 8))(v33, v40);
  return (*(v52 + 8))(v38, v39);
}

void *sub_1008C24F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100706B30(&qword_100CBA368);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v57 - v13;
  v72 = a3;
  v73 = a4;
  v75[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v75[0] = &_swiftEmptyArrayStorage;
  v70 = v75;
  v71 = v14;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008F4D70, v69);
  v15 = v75[0];
  v63 = a1;
  v74 = &_swiftEmptyArrayStorage;
  if (v75[0] >> 62)
  {
    goto LABEL_109;
  }

  v16 = *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v63;
  if (v16)
  {
    while (1)
    {
      v57 = v14;
      v58 = v12;
      v59 = v11;
      v14 = 0;
      v67 = v15 & 0xFFFFFFFFFFFFFF8;
      v68 = v15 & 0xC000000000000001;
      v18 = !v17 && a2 == 0xC000000000000000;
      v19 = !v18;
      v64 = v19;
      v66 = a2 >> 62;
      v20 = v17;
      v21 = HIDWORD(v17);
      v22 = __OFSUB__(v21, v20);
      v23 = v21 - v20;
      v24 = v22;
      v61 = v24;
      v60 = v23;
      v62 = BYTE6(a2);
      v65 = v15;
      while (v68)
      {
        sub_100937268();
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_96:
          __break(1u);
LABEL_97:
          v54 = v74;
          v11 = v59;
          v12 = v58;
          v14 = v57;
          goto LABEL_111;
        }

LABEL_20:
        v15 = sub_10075A43C();
        v28 = v15;
        v29 = v27;
        v30 = v27 >> 62;
        if ((v27 >> 62) > 1)
        {
          if (v30 != 2)
          {
            v33 = 0;
            v31 = 0;
            v34 = 0;
            v32 = 0;
            goto LABEL_31;
          }

          v31 = *(v15 + 16);
          v33 = *(v15 + 24);
        }

        else
        {
          if (!v30)
          {
            v31 = 0;
            v32 = 0;
            v33 = BYTE6(v27);
            v34 = BYTE6(v27);
            goto LABEL_31;
          }

          v31 = v15;
          v33 = v15 >> 32;
        }

        if (v33 < v31)
        {
          goto LABEL_99;
        }

        if (v30 == 2)
        {
          v32 = *(v15 + 16);
          v34 = *(v15 + 24);
        }

        else
        {
          v32 = v15;
          v34 = v15 >> 32;
        }

LABEL_31:
        if (v34 < v33 || v33 < v32)
        {
          goto LABEL_100;
        }

        if (__OFSUB__(v33, v31))
        {
          goto LABEL_101;
        }

        if (v33 == v31)
        {
          if (v30 <= 1)
          {
            if (!v30)
            {
              goto LABEL_58;
            }

            v35 = v15 >> 32;
LABEL_54:
            v15 = v28;
            goto LABEL_57;
          }

          if (v30 != 2)
          {
            goto LABEL_58;
          }

          v35 = *(v15 + 24);
LABEL_56:
          v15 = *(v28 + 16);
          goto LABEL_57;
        }

        v35 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_103;
        }

        if (v30 > 1)
        {
          if (v30 == 2)
          {
            v36 = *(v15 + 16);
            v37 = *(v15 + 24);
          }

          else
          {
            v37 = 0;
            v36 = 0;
          }
        }

        else if (v30)
        {
          v36 = v15;
          v37 = v15 >> 32;
        }

        else
        {
          v36 = 0;
          v37 = BYTE6(v29);
        }

        if (v37 < v35 || v35 < v36)
        {
          goto LABEL_104;
        }

        v15 = 0;
        if (v30 <= 1)
        {
          if (!v30)
          {
            goto LABEL_57;
          }

          goto LABEL_54;
        }

        if (v30 != 3)
        {
          goto LABEL_56;
        }

LABEL_57:
        if (v35 < v15)
        {
          goto LABEL_102;
        }

LABEL_58:
        v11 = v16;
        v38 = a2;
        v39 = sub_100935E68();
        a2 = v40;
        v15 = sub_1007156D8(v28, v29);
        v41 = a2 >> 62;
        if (a2 >> 62 == 3)
        {
          if (v39)
          {
            v42 = 0;
          }

          else
          {
            v42 = a2 == 0xC000000000000000;
          }

          v43 = v66;
          v45 = !v42 || v66 < 3;
          if (((v45 | v64) & 1) == 0)
          {
            v25 = 0;
            v26 = 0xC000000000000000;
            goto LABEL_14;
          }

          v46 = 0;
          if (v66 <= 1)
          {
LABEL_83:
            v49 = v62;
            if (v43)
            {
              v49 = v60;
              if (v61)
              {
                goto LABEL_106;
              }
            }

            goto LABEL_85;
          }
        }

        else
        {
          v43 = v66;
          if (v41 == 2)
          {
            v51 = *(v39 + 16);
            v50 = *(v39 + 24);
            v22 = __OFSUB__(v50, v51);
            v46 = v50 - v51;
            if (v22)
            {
              goto LABEL_108;
            }

            if (v66 <= 1)
            {
              goto LABEL_83;
            }
          }

          else if (v41 == 1)
          {
            LODWORD(v46) = HIDWORD(v39) - v39;
            if (__OFSUB__(HIDWORD(v39), v39))
            {
              goto LABEL_107;
            }

            v46 = v46;
            if (v66 <= 1)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v46 = BYTE6(a2);
            if (v66 <= 1)
            {
              goto LABEL_83;
            }
          }
        }

        if (v43 != 2)
        {
          if (v46)
          {
            goto LABEL_89;
          }

LABEL_91:
          v25 = v39;
          v26 = a2;
LABEL_14:
          sub_1007156D8(v25, v26);
          goto LABEL_15;
        }

        v48 = *(v63 + 16);
        v47 = *(v63 + 24);
        v22 = __OFSUB__(v47, v48);
        v49 = v47 - v48;
        if (v22)
        {
          goto LABEL_105;
        }

LABEL_85:
        if (v46 != v49)
        {
LABEL_89:

          sub_1007156D8(v39, a2);
          goto LABEL_90;
        }

        if (v46 < 1)
        {
          goto LABEL_91;
        }

        v52 = v63;
        sub_100715738(v63, v38);
        v53 = sub_10071C8A0(v39, a2, v52, v38);
        sub_1007156D8(v39, a2);
        if ((v53 & 1) == 0)
        {

LABEL_90:
          a2 = v38;
          v16 = v11;
          goto LABEL_16;
        }

LABEL_15:
        a2 = v38;
        v16 = v11;
        sub_100937298();
        sub_1009372C8();
        sub_1009372D8();
        sub_1009372A8();
LABEL_16:
        ++v14;
        v15 = v65;
        if (v12 == v16)
        {
          goto LABEL_97;
        }
      }

      if (v14 < *(v67 + 16))
      {
        break;
      }

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
      v55 = v15;
      v16 = sub_1009373F8();
      v15 = v55;
      v17 = v63;
      if (!v16)
      {
        goto LABEL_110;
      }
    }

    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_96;
    }

    goto LABEL_20;
  }

LABEL_110:
  v54 = &_swiftEmptyArrayStorage;
LABEL_111:

  (*(v12 + 1))(v14, v11);
  return v54;
}

uint64_t sub_1008C2C10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, uint64_t *a5@<X8>)
{
  v55 = a4;
  v48 = a3;
  v41 = a2;
  v47 = a1;
  v61 = a5;
  v5 = sub_100706B30(&qword_100CBA430);
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v53 = &v39 - v7;
  v54 = sub_100706B30(&qword_100CBA6A0);
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = &v39 - v8;
  v9 = sub_100706B30(&qword_100CBA6A8);
  v10 = *(v9 - 8);
  v59 = v9;
  v60 = v10;
  __chkstk_darwin(v9);
  v52 = &v39 - v11;
  v12 = sub_100706B30(&qword_100CBA4C0);
  v13 = *(v12 - 8);
  v45 = v12;
  v46 = v13;
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = sub_100706B30(&qword_100CBA6B0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  v42 = sub_100706B30(&qword_100CBA828);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v21 = &v39 - v20;
  v49 = sub_100706B30(&qword_100CBAC28);
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v44 = &v39 - v22;
  v47 = *v47;
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v23 = *(v17 + 8);
  v39 = v17 + 8;
  v40 = v23;
  v23(v19, v16);
  v62 = v41;
  v63 = v48;
  sub_100935D48();
  sub_100014C88(&qword_100CBA848, &qword_100CBA828);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v24 = v42;
  v25 = v45;
  sub_100935C68();
  (*(v46 + 8))(v15, v25);
  (*(v43 + 8))(v21, v24);
  sub_100935D58();
  swift_getKeyPath();
  v26 = v50;
  sub_100935C78();

  v40(v19, v16);
  LOBYTE(v62) = v55;
  v27 = v53;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v28 = v52;
  v29 = v27;
  v30 = v54;
  v31 = v57;
  sub_100935C68();
  (*(v58 + 8))(v29, v31);
  (*(v56 + 8))(v26, v30);
  v32 = sub_100706B30(&qword_100CBAC30);
  v33 = v61;
  v61[3] = v32;
  v33[4] = sub_1008F1E04();
  sub_100014250(v33);
  sub_100014C88(&qword_100CBAC38, &qword_100CBAC28);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v34 = v44;
  v35 = v28;
  v36 = v49;
  v37 = v59;
  sub_100935CF8();
  (*(v60 + 8))(v35, v37);
  return (*(v51 + 8))(v34, v36);
}

unint64_t sub_1008C33CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100706B30(&qword_100CBA370);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  v16 = a1;
  v19[1] = type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex(0);
  sub_100936128();
  v19[0] = &_swiftEmptyArrayStorage;
  v18 = 1;
  v13 = v8;
  v14 = v19;
  v15 = &v17;
  v9 = swift_isaMask & *v2;
  v17 = 0;
  (*(v9 + 280))(a2, sub_1008ECF34, v12);
  v10 = v17;
  LOBYTE(a2) = v18;

  (*(v6 + 8))(v8, v5);
  return v10 | (a2 << 32);
}

uint64_t sub_1008C369C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17 = a1;
  v3 = sub_100706B30(&qword_100CBAD90);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = sub_100706B30(&qword_100CBA968);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = sub_100706B30(&qword_100CBAD98);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - v13;
  sub_100014C88(&qword_100CBA978, &qword_100CBA968);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v8 + 8))(v10, v7);
  v20 = v17;
  sub_100935D48();
  a2[3] = sub_100706B30(&qword_100CBADA0);
  a2[4] = sub_1008F2BEC();
  sub_100014250(a2);
  sub_100014C88(&qword_100CBADC0, &qword_100CBAD98);
  sub_100014C88(&qword_100CBADC8, &qword_100CBAD90);
  v15 = v18;
  sub_100935C68();
  (*(v19 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1008C3A08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v6 = sub_100706B30(&qword_100CBA958);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_100706B30(&qword_100CBAD88);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = sub_100706B30(&qword_100CBA370);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a2, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex(0);
  sub_100014C40(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936828();
  sub_1009367D8();
  v15 = sub_100936728();
  if (v4)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v17 = v23;
  v18 = v24;
  *v24 = v15;

  v19 = *v18;
  if (v19 >> 62)
  {
    result = sub_1009373F8();
    v20 = result;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {

    sub_100937268();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v21 = sub_10075F6B4();

LABEL_11:
  result = (*(v10 + 8))(v12, v9);
  *v17 = v21;
  *(v17 + 4) = v20 == 0;
  return result;
}

uint64_t sub_1008C3D34(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100706B30(&qword_100CBA8D8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  v11 = sub_100706B30(&qword_100CBA368);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  v12 = sub_100936728();
  result = (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    *a2 = v12;
  }

  return result;
}

uint64_t sub_1008C3F40(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  v4[3] = a1;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008ECF70, v4);
  return 1;
}

uint64_t sub_1008C40DC(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = a4;
  v80 = a1;
  v88 = a3;
  v78 = sub_100936038();
  v5 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a2;
  v8 = type metadata accessor for SenderKeyAndState(0);
  __chkstk_darwin(v8);
  v10 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v7 >> 62)
  {
    v11 = sub_1009373F8();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v12 = type metadata accessor for SenderKeyInfo(0);
  result = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v76 = result;
  if (v11 < 1)
  {
    __break(1u);
    return result;
  }

  v15 = 0;
  v16 = (v88 + *(v8 + 20));
  v17 = *(v12 + 28);
  v72 = *(v12 + 24);
  v18 = (v88 + v17);
  v19 = *v18;
  v20 = v18[1];
  v22 = v18[2];
  v21 = v18[3];
  v82 = v22;
  v89 = v21;
  v70 = v88[2];
  v71 = IDSRegistrationPropertySupportsStewie;
  v69 = v88[3];
  v23 = v7;
  v68 = v7 & 0xC000000000000001;
  v67 = (v5 + 16);
  v66 = *v88;
  v65 = v88[1];
  v25 = *v16;
  v24 = v16[1];
  v64 = v25;
  v63 = v24;
  v62 = OBJC_IVAR___IDSQuerySDPersistenceManager_logger;
  *&v14 = 136315906;
  v60 = v14;
  v74 = v10;
  v75 = v7;
  v73 = v11;
  v81 = v20;
  v61 = v19;
  do
  {
    if (v68)
    {
      v40 = sub_100937268();
    }

    else
    {
      v40 = *(v23 + 8 * v15 + 32);
    }

    v41 = v40;
    v42 = [v40 capabilities];
    v43 = [v42 valueForCapability:v71];

    sub_1008ED848(v88, v10, type metadata accessor for SenderKeyAndState);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v44 = v41;
    v45 = sub_1009364B8();
    v46 = sub_100936F18();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v87 = v43;
      v49 = v48;
      v85 = swift_slowAlloc();
      v90 = v85;
      *v47 = v60;
      v50 = sub_100935E08();
      v51 = v10;
      v52 = v50;
      v53 = v19;
      v55 = v54;
      sub_1008ED8B0(v51, type metadata accessor for SenderKeyAndState);
      v56 = sub_10001273C(v52, v55, &v90);

      *(v47 + 4) = v56;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_10001273C(v53, v81, &v90);
      *(v47 + 22) = 2080;
      *(v47 + 24) = sub_10001273C(v82, v89, &v90);
      *(v47 + 32) = 2112;
      v57 = [v44 pushTokenObject];
      *(v47 + 34) = v57;
      *v49 = v57;
      _os_log_impl(&_mh_execute_header, v45, v46, "Saving generated sender key and state with keyID: %s senderURI: %s receiverURI: %s receiverPushToken: %@", v47, 0x2Au);
      sub_100013814(v49, &qword_100CB36B0);
      v43 = v87;

      swift_arrayDestroy();
    }

    else
    {

      sub_1008ED8B0(v10, type metadata accessor for SenderKeyAndState);
    }

    v26 = v44;
    v86 = v44;
    v87 = v15 + 1;
    LODWORD(v85) = v43 > 0;
    v27 = v69;
    v28 = v70;
    sub_100715738(v70, v69);
    v29 = v66;
    v30 = v65;
    sub_100715738(v66, v65);
    v31 = [v26 pushToken];
    v32 = sub_100935EA8();
    v83 = v33;
    v84 = v32;

    v34 = v77;
    (*v67)(v77, v88 + v72, v78);
    v35 = v64;
    v36 = v63;
    sub_100715738(v64, v63);
    LOBYTE(v31) = sub_10001E2FC();
    v37 = sub_10001E2FC();
    v38 = sub_10001E2FC();
    v58 = v36;
    v39 = v27;
    v15 = v87;
    v19 = v61;
    sub_10075E86C(v28, v39, v29, v30, v61, v81, v82, v89, v84, v83, v34, v35, v58, 1u, v31 & 1, v85, v37 & 1, v38 & 1);
    sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
    sub_100936768();

    v10 = v74;
    v23 = v75;
  }

  while (v73 != v15);
LABEL_13:
  result = sub_1009366F8();
  if (result)
  {
    return sub_100936708();
  }

  return result;
}

uint64_t sub_1008C477C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a1;
  v10 = swift_allocObject();
  v11 = swift_isaMask & *v4;
  v10[2] = v4;
  v10[3] = a2;
  v10[4] = a1;
  v10[5] = a3;
  v10[6] = a4;
  v12 = *(v11 + 272);
  v13 = v4;
  swift_bridgeObjectRetain_n();
  v14 = a1;
  v15 = v13;
  v16 = v14;
  sub_1000254AC(a3);
  v12(sub_1008ECF90, v9, sub_1008ECFC0, v10);
}

uint64_t sub_1008C48D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_100706B30(&qword_100CB4AC0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = [a4 rawToken];
  v14 = sub_100935EA8();
  v16 = v15;

  v17 = sub_1008B9584(a3, v14, v16, a1);
  result = sub_1007156D8(v14, v16);
  if (!(v17 >> 62))
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_14:
  }

  result = sub_1009373F8();
  v19 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v19 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        sub_100937268();
      }

      else
      {
      }

      sub_10075C104();
      sub_10075C1D0();
      v21 = sub_100936038();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v12, 1, v21) == 1)
      {
        sub_100013814(v12, &qword_100CB4AC0);
        sub_100935FF8();
        (*(v22 + 56))(v10, 0, 1, v21);
        sub_10075C598(v10);
      }

      else
      {

        sub_100013814(v12, &qword_100CB4AC0);
      }
    }
  }

  __break(1u);
  return result;
}

id sub_1008C4B78(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v25 = sub_1009364F8();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100936528();
  v26 = *(v14 - 8);
  v27 = v14;
  __chkstk_darwin(v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = im_primary_queue();
  if (result)
  {
    v18 = result;
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a4;
    v19[6] = a5;
    v19[7] = a6;
    aBlock[4] = sub_1008F29C4;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BEBD68;
    v20 = _Block_copy(aBlock);
    swift_errorRetain();
    v21 = a2;

    v22 = a4;
    sub_1000254AC(a5);
    sub_100936508();
    v29 = &_swiftEmptyArrayStorage;
    sub_100014C40(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550);
    sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
    v23 = v25;
    sub_1009370B8();
    sub_100936F88();
    _Block_release(v20);

    (*(v28 + 8))(v13, v23);
    (*(v26 + 8))(v16, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008C4E98(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  v16 = swift_allocObject();
  v17 = swift_isaMask & *v7;
  v16[2] = v7;
  v16[3] = a3;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a6;
  v16[7] = a7;
  v18 = *(v17 + 272);
  v19 = v7;
  v20 = a1;
  v21 = a2;
  swift_bridgeObjectRetain_n();
  v22 = v19;
  v23 = v20;
  v24 = v21;

  sub_1000254AC(a6);
  v18(sub_1008ECFD0, v15, sub_1008ED028, v16);
}

uint64_t sub_1008C5024(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v36 = a5;
  v33 = a2;
  v34 = a1;
  v7 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_100706B30(&qword_100CBA368);
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = [a3 prefixedURI];
  v14 = sub_100936B38();
  v16 = v15;

  v17 = [a4 prefixedURI];
  v18 = sub_100936B38();
  v20 = v19;

  v42 = v36;
  v43 = v14;
  v44 = v16;
  v45 = v18;
  v36 = v20;
  v46 = v20;
  v47[2] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v47[0] = &_swiftEmptyArrayStorage;
  v40 = v47;
  v41 = v12;
  v21 = v35;
  (*((swift_isaMask & *v33) + 0x118))(v34, sub_1008F4D70, v39);
  if (v21)
  {

    swift_errorRetain();
    v22 = sub_1009364B8();
    v23 = sub_100936EF8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v34 = v16;
      v35 = v12;
      v25 = v24;
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error fetching IDSQuerySDSenderKeyDistribution instance: %@", v25, 0xCu);
      sub_100013814(v26, &qword_100CB36B0);

      v12 = v35;
    }

    v28 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v28 = v47[0];
  }

  (*(v37 + 8))(v12, v38);

  if (!(v28 >> 62))
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_8;
    }
  }

  result = sub_1009373F8();
  v30 = result;
  if (!result)
  {
  }

LABEL_8:
  if (v30 >= 1)
  {
    v31 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        sub_100937268();
      }

      else
      {
      }

      ++v31;
      sub_10075CCF0();
      sub_100935FF8();
      v32 = sub_100936038();
      (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
      sub_10075DA34(v9);

      sub_10075D58C();
    }

    while (v30 != v31);
  }

  __break(1u);
  return result;
}

id sub_1008C5498(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v28 = sub_1009364F8();
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100936528();
  v29 = *(v16 - 8);
  v30 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = im_primary_queue();
  v27 = result;
  if (result)
  {
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = a3;
    v20[5] = a4;
    v20[6] = a5;
    v20[7] = a6;
    v20[8] = a7;
    aBlock[4] = sub_1008F277C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BEBD18;
    v21 = _Block_copy(aBlock);
    swift_errorRetain();
    v22 = a2;

    v23 = a4;
    v24 = a5;
    sub_1000254AC(a6);
    sub_100936508();
    v32 = &_swiftEmptyArrayStorage;
    sub_100014C40(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550);
    sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
    v25 = v28;
    sub_1009370B8();
    v26 = v27;
    sub_100936F88();
    _Block_release(v21);

    (*(v31 + 8))(v15, v25);
    (*(v29 + 8))(v18, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008C5840(void *a1, id a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = [a2 prefixedURI];
  v30 = sub_100936B38();
  v13 = v12;

  v14 = [a3 prefixedURI];
  v15 = sub_100936B38();
  v17 = v16;

  v18 = [a1 rawToken];
  v19 = sub_100935EA8();
  v21 = v20;

  v22 = swift_allocObject();
  v22[2] = v30;
  v22[3] = v13;
  v22[4] = v15;
  v22[5] = v17;
  v22[6] = v19;
  v22[7] = v21;
  v23 = swift_allocObject();
  v23[2] = v7;
  v23[3] = a1;
  v23[4] = a3;
  v23[5] = a2;
  v24 = *((swift_isaMask & *v7) + 0x110);
  sub_100715738(v19, v21);
  v25 = v7;
  v26 = a1;
  v27 = a3;
  v28 = a2;
  v24(a6, v22, a7, v23);

  return sub_1007156D8(v19, v21);
}

uint64_t sub_1008C59F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *))
{
  v39 = a8;
  v41 = a1;
  v36 = a6;
  v37 = a7;
  v35 = a5;
  v12 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  v40 = sub_100706B30(&qword_100CBA8D8);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v19 = &v35 - v18;
  v20 = sub_100706B30(&qword_100CBA368);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v35 - v22;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = v35;
  v47 = v36;
  v48 = v37;
  v49 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  (*(v21 + 16))(v17, v23, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  v24 = v42;
  v25 = sub_100936728();
  result = (*(v38 + 8))(v19, v40);
  if (v24)
  {
    return (*(v21 + 8))(v23, v20);
  }

  v42 = v21;
  v27 = v20;
  if (v25 >> 62)
  {
    result = sub_1009373F8();
    v28 = result;
  }

  else
  {
    v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v23;
  v30 = v42;
  if (!v28)
  {

    return (*(v30 + 8))(v29, v27);
  }

  if (v28 >= 1)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v31 = 0;
      do
      {
        sub_100937268();
        ++v31;
        sub_100935FF8();
        v32 = sub_100936038();
        (*(*(v32 - 8) + 56))(v14, 0, 1, v32);
        a9(v14);
        swift_unknownObjectRelease();
      }

      while (v28 != v31);
    }

    else
    {
      v33 = 32;
      do
      {

        sub_100935FF8();
        v34 = sub_100936038();
        (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
        a9(v14);

        v33 += 8;
        --v28;
      }

      while (v28);
    }

    v29 = v23;
    v30 = v42;
    return (*(v30 + 8))(v29, v27);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008C5E90@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v98 = a6;
  v99 = a7;
  v85 = a5;
  v84 = a4;
  v108 = a3;
  v75 = a2;
  v105 = a8;
  v9 = sub_100706B30(&qword_100CBAD28);
  v10 = *(v9 - 8);
  v101 = v9;
  v102 = v10;
  __chkstk_darwin(v9);
  v96 = v71 - v11;
  v97 = sub_100706B30(&qword_100CBA6B8);
  v100 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = v71 - v12;
  v13 = sub_100706B30(&qword_100CBAD30);
  v14 = *(v13 - 8);
  v103 = v13;
  v104 = v14;
  __chkstk_darwin(v13);
  v95 = v71 - v15;
  v92 = sub_100706B30(&qword_100CBA430);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v83 = v71 - v16;
  v86 = sub_100706B30(&qword_100CBA6A0);
  v88 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = v71 - v17;
  v90 = sub_100706B30(&qword_100CBA6A8);
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v82 = v71 - v18;
  v19 = sub_100706B30(&qword_100CBA4C0);
  v114 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v71 - v20;
  v22 = sub_100706B30(&qword_100CBA6B0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v71 - v24;
  v26 = sub_100706B30(&qword_100CBA828);
  v112 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = v71 - v27;
  v76 = sub_100706B30(&qword_100CBAC28);
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v73 = v71 - v31;
  v79 = sub_100706B30(&qword_100CBACE8);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v109 = v71 - v32;
  v87 = sub_100706B30(&qword_100CBACF0);
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v78 = v71 - v33;
  v113 = *a1;
  v111 = sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  v110 = v22;
  sub_100935C78();

  v106 = *(v23 + 8);
  v107 = v23 + 8;
  v106(v25, v22);
  v115 = v75;
  v116 = v108;
  sub_100935D48();
  v75 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v71[1] = sub_100014C88(&qword_100CBA848, &qword_100CBA828);
  v108 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v71[0] = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v34 = v26;
  v35 = v19;
  sub_100935C68();
  v36 = v114[1];
  ++v114;
  v36(v21, v19);
  v37 = *(v112 + 8);
  v112 += 8;
  v37(v28, v34);
  v38 = v110;
  sub_100935D58();
  swift_getKeyPath();
  v72 = v25;
  sub_100935C78();

  v39 = v38;
  v40 = v106;
  v106(v25, v39);
  v115 = v84;
  v116 = v85;
  v41 = v21;
  sub_100935D48();
  v42 = v74;
  sub_100935C68();
  v36(v41, v35);
  v37(v28, v34);
  v114 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  sub_100014C88(&qword_100CBAC38, &qword_100CBAC28);
  v43 = v73;
  v44 = v76;
  sub_100935CF8();
  v45 = *(v77 + 8);
  v45(v42, v44);
  v45(v43, v44);
  v46 = v72;
  v47 = v110;
  sub_100935D58();
  swift_getKeyPath();
  v48 = v81;
  sub_100935C78();

  v40(v46, v47);
  LOBYTE(v115) = 1;
  v49 = v83;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v50 = v82;
  v51 = v49;
  v52 = v86;
  v53 = v92;
  sub_100935C68();
  (*(v93 + 8))(v51, v53);
  (*(v88 + 8))(v48, v52);
  sub_100014C88(&qword_100CBAD08, &qword_100CBACE8);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v54 = v78;
  v55 = v109;
  v56 = v50;
  v57 = v79;
  v58 = v90;
  sub_100935CF8();
  (*(v91 + 8))(v56, v58);
  (*(v80 + 8))(v55, v57);
  v59 = v110;
  sub_100935D58();
  swift_getKeyPath();
  v60 = v94;
  sub_100935C78();

  v106(v46, v59);
  v115 = v98;
  v116 = v99;
  v61 = v96;
  sub_100935D48();
  sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28);
  sub_1008EFEF8();
  v62 = v95;
  v63 = v61;
  v64 = v97;
  v65 = v101;
  sub_100935C68();
  (*(v102 + 8))(v63, v65);
  (*(v100 + 8))(v60, v64);
  v66 = sub_100706B30(&qword_100CBAD70);
  v67 = v105;
  v105[3] = v66;
  v67[4] = sub_1008F26F0();
  sub_100014250(v67);
  sub_100014C88(&qword_100CBAD80, &qword_100CBACF0);
  sub_100014C88(&qword_100CBAD60, &qword_100CBAD30);
  v68 = v87;
  v69 = v103;
  sub_100935CF8();
  (*(v104 + 8))(v62, v69);
  return (*(v89 + 8))(v54, v68);
}

uint64_t sub_1008C6D40(void *a1, void *a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = a2;
  v9 = *((swift_isaMask & *v3) + 0x110);
  swift_bridgeObjectRetain_n();
  v10 = v3;
  v11 = a1;
  v12 = a2;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  v9(sub_1008ED394, v7, sub_1008ED3B4, v8);
}

uint64_t sub_1008C6E88(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v54 = a1;
  v55 = a3;
  v9 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v9 - 8);
  v11 = v51 - v10;
  v12 = sub_100706B30(&qword_100CBA368);
  v13 = __chkstk_darwin(v12);
  v16 = v51 - v15;
  if (!a2)
  {
    v35 = [a4 prefixedURI];
    v36 = sub_100936B38();
    v38 = v37;

    v39 = [a5 prefixedURI];
    v40 = sub_100936B38();
    v42 = v41;

    v43 = sub_1008BA1A4(v36, v38, v40, v42, v54);

    if (v43 >> 62)
    {
      goto LABEL_27;
    }

    v45 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      goto LABEL_7;
    }
  }

  v52 = v14;
  v53 = v13;
  v17 = [a4 prefixedURI];
  v18 = sub_100936B38();
  v20 = v19;

  v21 = [a5 prefixedURI];
  v22 = sub_100936B38();
  v24 = v23;

  v51[0] = v51;
  __chkstk_darwin(v25);
  v51[-6] = a2;
  v51[-5] = v18;
  v51[1] = v24;
  v51[2] = v20;
  v51[-4] = v20;
  v51[-3] = v22;
  v26 = v16;
  v51[-2] = v24;
  v56[2] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v27 = sub_100936128();
  v56[0] = &_swiftEmptyArrayStorage;
  __chkstk_darwin(v27);
  v28 = v54;
  v29 = v55;
  v51[-2] = v56;
  v51[-1] = v26;
  (*((swift_isaMask & *v29) + 0x118))(v28, sub_1008F4D70);
  if (v5)
  {

    swift_errorRetain();
    v30 = sub_1009364B8();
    v31 = sub_100936EF8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error fetching IDSQuerySDSenderKeyDistribution instance: %@", v32, 0xCu);
      sub_100013814(v33, &qword_100CB36B0);
    }

    v48 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v48 = v56[0];
  }

  (*(v52 + 8))(v26, v53);

  if (v48 >> 62)
  {
    v43 = sub_1009373F8();
    if (v43)
    {
      goto LABEL_18;
    }
  }

  v43 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v43)
  {
  }

LABEL_18:
  if (v43 >= 1)
  {
    v49 = 0;
    do
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        sub_100937268();
      }

      else
      {
      }

      ++v49;
      sub_10075CCF0();
      sub_10075C104();
      v50 = sub_100936038();
      (*(*(v50 - 8) + 56))(v11, 1, 1, v50);
      sub_10075C598(v11);
    }

    while (v43 != v49);
  }

  __break(1u);
LABEL_27:
  result = sub_1009373F8();
  v45 = result;
  if (!result)
  {
  }

LABEL_7:
  if (v45 >= 1)
  {
    v46 = 0;
    do
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        sub_100937268();
      }

      else
      {
      }

      ++v46;
      sub_10075CCF0();
      sub_10075C104();
      v47 = sub_100936038();
      (*(*(v47 - 8) + 56))(v11, 1, 1, v47);
      sub_10075C598(v11);
    }

    while (v45 != v46);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008C74C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = a1;
  v5[4] = a2;
  v5[5] = a3;
  (*((swift_isaMask & *v3) + 0x118))(0, sub_1008ED6C8, v5);
  return 1;
}