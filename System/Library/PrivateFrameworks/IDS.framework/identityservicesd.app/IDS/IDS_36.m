id sub_10089017C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommunicationTrustWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1008901B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 112) = a2;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1008901DC, 0, 0);
}

uint64_t sub_1008901DC()
{
  if (&class metadata base offset for CommunicationTrustManager)
  {
    v1 = &type metadata accessor for CommunicationTrustManager == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || &nominal type descriptor for CommunicationTrustManager == 0 || &type metadata for CommunicationTrustManager == 0 || &protocol conformance descriptor for Handle == 0 || &protocol conformance descriptor for Handle == 0 || &protocol conformance descriptor for Handle == 0 || &protocol conformance descriptor for Handle == 0 || &type metadata accessor for Handle == 0 || &nominal type descriptor for Handle == 0 || &type metadata for Handle == 0)
  {
    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 16);
    v14 = sub_100936488();
    *(v0 + 40) = v14;
    v15 = *(v14 - 8);
    *(v0 + 48) = v15;
    v16 = swift_task_alloc();
    *(v0 + 56) = v16;
    v17 = [v13 IDSIDType];
    if (v17 > 3)
    {
      v18 = &enum case for Handle.Kind.generic(_:);
    }

    else
    {
      v18 = *(&off_100BEA000 + v17);
    }

    v19 = *(v0 + 16);
    (*(v15 + 104))(v16, *v18, v14);
    sub_100936478();
    *(v0 + 64) = sub_100936468();
    v20 = sub_1009364A8();
    *(v0 + 72) = v20;
    *(v0 + 80) = *(v20 - 8);
    v21 = swift_task_alloc();
    *(v0 + 88) = v21;
    swift_task_alloc();
    (*(v15 + 16))();
    v22 = [v19 tokenFreeURI];
    v23 = [v22 unprefixedURI];

    sub_100936B38();
    sub_100936498();

    v24 = swift_task_alloc();
    *(v0 + 96) = v24;
    *v24 = v0;
    v24[1] = sub_100890528;
    v25 = *(v0 + 24);
    v26 = *(v0 + 32);
    v27 = *(v0 + 112);

    return CommunicationTrustManager.updateServerTrust(for:serverTrust:service:)(v21, v27, v25, v26);
  }
}

uint64_t sub_100890528()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v6 = sub_10089074C;
  }

  else
  {

    v6 = sub_1008906CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1008906CC()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10089074C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1008907FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100724920;

  return sub_10088FE74(v2, v3, v4, v5, v6);
}

uint64_t sub_100890910(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_exchangeControllers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1008909D4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_materialProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100890A40(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_materialProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10071E170;
}

void sub_100890AEC(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_100890B54(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10072AB04;
}

id sub_100890BF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_100892B14(a2, a3, a4, a5);

  return v12;
}

void sub_100890C60()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_10072FFE8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_100890CD0(void *a1)
{
  v41 = &_swiftEmptySetSingleton;
  if ((*((swift_isaMask & *a1) + 0xA0))())
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(*(a1 + OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_groupID), *(a1 + OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_groupID + 8), *(a1 + OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_sessionID), *(a1 + OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_sessionID + 8), ObjectType, v3);
    sub_1007CF774(v5);
    swift_unknownObjectRelease();
  }

  v35 = OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_l;
  v6 = sub_1009364B8();
  v7 = sub_100936F18();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_10001273C(0xD000000000000018, 0x8000000100B027D0, v38);
    *(v8 + 12) = 2080;
    swift_beginAccess();
    type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
    sub_100892DA0(&unk_100CB3660, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);

    v9 = sub_100936E28();
    v11 = v10;

    v12 = sub_10001273C(v9, v11, v38);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: materials: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v13 = (*((swift_isaMask & *a1) + 0x88))();
  v14 = *(v13 + 16);
  if (v14)
  {
    v32[1] = v13;
    v15 = v13 + 32;
    swift_beginAccess();
    v34 = "opagation(forToken:)";
    *&v16 = 136315394;
    v33 = v16;
    do
    {
      sub_100022B2C(v15, v38);
      sub_100022B2C(v38, v37);
      v29 = sub_1009364B8();
      v30 = sub_100936F18();
      if (os_log_type_enabled(v29, v30))
      {
        v17 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v17 = v33;
        *(v17 + 4) = sub_10001273C(0xD000000000000018, v34 | 0x8000000000000000, &v36);
        *(v17 + 12) = 2080;
        v18 = sub_1000226D4(v37, v37[3]);
        __chkstk_darwin(v18);
        (*(v20 + 16))(v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
        v21 = sub_100936B88();
        v23 = v22;
        sub_100012970(v37);
        v24 = sub_10001273C(v21, v23, &v36);

        *(v17 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v29, v30, "%s: calling ExchangeController %s", v17, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100012970(v37);
      }

      v25 = v39;
      v26 = v40;
      sub_1000226D4(v38, v39);
      v27 = *(v26 + 16);

      v27(v28, v25, v26);

      sub_100012970(v38);
      v15 += 40;
      --v14;
    }

    while (v14);
  }
}

void sub_10089121C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_100937118();
    sub_1007BDD80();
    sub_100892DA0(&qword_100CBA5A0, sub_1007BDD80);
    sub_100936E58();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_100308C6C();
      return;
    }

    while (1)
    {
      sub_100732348(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_100937198())
      {
        sub_1007BDD80();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10089140C(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x88))();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_100022B2C(v5, v9);
      v6 = v10;
      v7 = v11;
      sub_1000226D4(v9, v10);
      (*(v7 + 16))(a1, v6, v7);
      sub_100012970(v9);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

void *sub_100891518(uint64_t a1)
{
  if (&_swiftEmptyArrayStorage >> 62 && sub_1009373F8())
  {
    sub_100732894(&_swiftEmptyArrayStorage);
    v3 = v11;
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v15 = v3;
  v4 = (*((swift_isaMask & *v1) + 0x88))();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_100022B2C(v6, v12);
      v7 = v13;
      v8 = v14;
      sub_1000226D4(v12, v13);
      v9 = (*(v8 + 24))(a1, v7, v8);
      sub_100012970(v12);
      sub_10089121C(v9);
      v6 += 40;
      --v5;
    }

    while (v5);

    return v15;
  }

  else
  {
  }

  return v3;
}

uint64_t sub_100891658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*((swift_isaMask & *v3) + 0x88))();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    do
    {
      sub_100022B2C(v9, v13);
      v10 = v14;
      v11 = v15;
      sub_1000226D4(v13, v14);
      (*(v11 + 32))(a1, a2, a3, v10, v11);
      sub_100012970(v13);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
  }
}

uint64_t sub_100891780(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x88))();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_100022B2C(v5, v9);
      v6 = v10;
      v7 = v11;
      sub_1000226D4(v9, v10);
      (*(v7 + 40))(a1, v6, v7);
      sub_100012970(v9);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_10089188C(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x88))();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_100022B2C(v5, v9);
      v6 = v10;
      v7 = v11;
      sub_1000226D4(v9, v10);
      (*(v7 + 56))(a1, v6, v7);
      sub_100012970(v9);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_100891998(uint64_t a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0x88))();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_100022B2C(v7, v11);
      v8 = v12;
      v9 = v13;
      sub_1000226D4(v11, v12);
      (*(v9 + 48))(a1, a2 & 0xFFFFFFFFFFLL, v8, v9);
      sub_100012970(v11);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

void sub_100891AAC(uint64_t a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0xB8))();
  if (v5)
  {
    v7 = v6;
    v9 = v5;
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2, ObjectType, v7);
  }
}

uint64_t sub_100891B74(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = (*((swift_isaMask & *v3) + 0x88))();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    do
    {
      sub_100022B2C(v9, v18);
      v11 = v19;
      v10 = v20;
      sub_1000226D4(v18, v19);
      (*(*(v10 + 8) + 8))(a1, a2, a3, v11);
      sub_100012970(v18);

      v12 = sub_1009364B8();
      v13 = sub_100936F18();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_10001273C(a2, a3, &v17);
        _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
        sub_100012970(v15);
      }

      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
  }
}

void *sub_1008922E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = a2;
  v65 = a1;
  v68 = a7;
  v69 = a9;
  v17 = sub_1009364D8();
  v63 = *(v17 - 8);
  v64 = v17;
  __chkstk_darwin(v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v11);
  v21 = type metadata accessor for IDSGroupQUICMaterialExchangeController();
  sub_100022B2C(a11, &v72);

  v62 = v21;
  v22 = sub_10072AB88(&v72, a6, v68, a4, a5);
  *&v20[OBJC_IVAR____TtC17identityservicesd45IDSGroupDefaultRootMaterialExchangeController_quicMaterialExchangeProvider] = v22;

  v67 = v22;

  v23 = v70;
  v24 = sub_100892B14(v70, a3, a4, a5);
  v25 = type metadata accessor for IDSGroupPushMaterialExchangeController(0);
  v68 = a11;
  sub_100022B2C(a11, &v72);
  v26 = v24;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = v23;
  v28 = v26;
  v70 = a8;
  v29 = a8;
  v30 = v69;
  v69 = a10;
  v32 = v63;
  v31 = v64;
  v61 = v25;
  v66 = sub_10073593C(v27, a3, a4, a5, v29, v30, a10, &v72);
  (*(v32 + 16))(v19, v26 + OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_l, v31);

  v33 = v65;
  v34 = sub_1009364B8();
  v35 = sub_100936F18();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v72 = v37;
    *v36 = 136315650;
    *(v36 + 4) = sub_10001273C(0xD000000000000064, 0x8000000100B04F60, &v72);
    *(v36 + 12) = 1024;
    *(v36 + 14) = v33[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_allowPushMaterialExchange];
    *(v36 + 18) = 1024;
    *(v36 + 20) = v33[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_allowQUICMaterialExchange];

    _os_log_impl(&_mh_execute_header, v34, v35, "%s: allowPushMaterialExchange: %{BOOL}d; allowQUICMaterialExchange: %{BOOL}d", v36, 0x18u);
    sub_100012970(v37);
  }

  else
  {
  }

  (*(v32 + 8))(v19, v31);
  v38 = v66;
  if (v33[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_allowPushMaterialExchange] == 1)
  {
    v39 = *((swift_isaMask & *v66) + 0xB0);
    v40 = v28;
    v39(v28, &off_100BEA060);
    v41 = *((swift_isaMask & *v40) + 0x98);
    v42 = v38;
    v43 = v41(v71);
    v45 = v44;
    v46 = *v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v45 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v46 = sub_1008929CC(0, v46[2] + 1, 1, v46);
      *v45 = v46;
    }

    v49 = v46[2];
    v48 = v46[3];
    if (v49 >= v48 >> 1)
    {
      v46 = sub_1008929CC((v48 > 1), v49 + 1, 1, v46);
      *v45 = v46;
    }

    v73 = v61;
    v74 = &off_100BE6FF0;
    *&v72 = v42;
    v46[2] = v49 + 1;
    sub_100308C84(&v72, &v46[5 * v49 + 4]);
    v43(v71, 0);
  }

  v50 = v67;
  if (v33[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_allowQUICMaterialExchange] == 1)
  {
    v51 = *((swift_isaMask & *v67) + 0xC0);
    v52 = v28;
    v51(v28, &off_100BEA060);
    v53 = (*((swift_isaMask & *v52) + 0x98))(v71);
    v55 = v54;
    v56 = *v54;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    *v55 = v56;
    if ((v57 & 1) == 0)
    {
      v56 = sub_1008929CC(0, v56[2] + 1, 1, v56);
      *v55 = v56;
    }

    v59 = v56[2];
    v58 = v56[3];
    if (v59 >= v58 >> 1)
    {
      v56 = sub_1008929CC((v58 > 1), v59 + 1, 1, v56);
      *v55 = v56;
    }

    v73 = v62;
    v74 = &off_100BE6D90;
    *&v72 = v50;
    v56[2] = v59 + 1;
    sub_100308C84(&v72, &v56[5 * v59 + 4]);
    v53(v71, 0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_100012970(v68);
  }

  else
  {
    sub_100012970(v68);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v28;
}

id sub_10089297C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_1008929CC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100706B30(&qword_100CB9CC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100706B30(&qword_100CB9CC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_100892B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1007C9A6C(2);
  *&v4[OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_exchangeControllers] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_materialProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_lock;
  sub_100706B30(&unk_100CB3540);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v4[v9] = v10;
  v11 = &v4[OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_groupID];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v4[OBJC_IVAR____TtC17identityservicesd38IDSGroupRootMaterialExchangeController_sessionID];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for IDSGroupRootMaterialExchangeController(0);
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_100892C90()
{
  result = sub_1009364D8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100892DA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100892E38(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_100892EA0(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10072AB04;
}

id sub_100892F40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  sub_1007C9A6C(6);
  v16 = &v15[OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_delegate];
  *&v15[OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v16 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v17 = &v15[OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_sessionID];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v15[OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_localCounter] = a5;
  *&v15[OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_localIdentities] = a6;
  *&v15[OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_remoteIdentities] = a7;
  v20.receiver = v15;
  v20.super_class = v7;
  v18 = objc_msgSendSuper2(&v20, "init");

  return v18;
}

uint64_t type metadata accessor for IDSGlobalLinkP2PKeyNegotiation()
{
  result = qword_100CD0788;
  if (!qword_100CD0788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100893104()
{
  sub_100937248(100);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x8000000100B051B0;
  sub_100936C08(v3);
  v2 = *(v0 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_localCounter);
  v4._countAndFlagsBits = sub_100937548();
  sub_100936C08(v4);

  v5._countAndFlagsBits = 0x6E6F697373657320;
  v5._object = 0xEB000000003D4449;
  sub_100936C08(v5);
  sub_100936C08(*(v0 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_sessionID));
  v6._object = 0x8000000100B051E0;
  v6._countAndFlagsBits = 0xD000000000000011;
  sub_100936C08(v6);
  v7._countAndFlagsBits = sub_100936CF8();
  sub_100936C08(v7);

  v8._countAndFlagsBits = 0xD000000000000012;
  v8._object = 0x8000000100B05200;
  sub_100936C08(v8);
  type metadata accessor for SecKey();
  v9._countAndFlagsBits = sub_100936CF8();
  sub_100936C08(v9);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  sub_100936C08(v10);
  return HIDWORD(v2);
}

uint64_t sub_100893320()
{
  v19 = *(v0 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_localIdentities);
  v18 = *(v19 + 16);
  if (v18)
  {
    v23 = *(v24 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_remoteIdentities);
    if (v23 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1009373F8())
    {
      v2 = 0;
      v3 = OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_logger;
      v17 = OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_localCounter;
      while (v2 < *(v19 + 16))
      {
        if (i)
        {
          if (i < 1)
          {
            goto LABEL_20;
          }

          v21 = v2;
          v4 = v19 + 32 + 16 * v2;
          v5 = *(v4 + 8);
          v6 = *(v24 + v17);
          v7 = *v4;
          v20 = v5;
          v8 = 0;
          v22 = v7;
          do
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v12 = sub_100937268();
            }

            else
            {
              v12 = *(v23 + 8 * v8 + 32);
            }

            v13 = v12;
            v14 = sub_100895AE4(v24 + v3, v6, v7, v12);
            if (v15 >> 60 == 15)
            {
            }

            else
            {
              v9 = v14;
              v10 = v15;
              sub_100935EC8();

              v11 = v10;
              v7 = v22;
              sub_10001C370(v9, v11);
            }

            ++v8;
          }

          while (i != v8);

          v2 = v21;
        }

        if (++v2 == v18)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }
  }

LABEL_18:
  sub_1007156D8(0, 0xC000000000000000);
  return 0;
}

char *sub_1008935A0(char **__ptr32 *a1, unint64_t a2)
{
  LODWORD(v4) = 1701012850;
  v5 = sub_100936B78();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v182 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100706B30(&qword_100CB9CE0);
  __chkstk_darwin(v8 - 8);
  v186 = &v181 - v9;
  v188 = sub_100936608();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  j = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100706B30(&qword_100CB9CE8);
  __chkstk_darwin(v12 - 8);
  v190 = &v181 - v13;
  v191 = sub_100936678();
  v192 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100706B30(&unk_100CB9CF0);
  __chkstk_darwin(v15 - 8);
  v194 = &v181 - v16;
  v195 = sub_1009366A8();
  v196 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_logger;
  sub_100715738(a1, a2);
  v225 = v18;
  v19 = sub_1009364B8();
  v20 = sub_100936F18();
  sub_1007156D8(a1, a2);
  v21 = os_log_type_enabled(v19, v20);
  v185 = j;
  v184 = v5;
  v183 = v6;
  if (v21)
  {
    j = swift_slowAlloc();
    *&v226 = swift_slowAlloc();
    *j = 136315394;
    *(j + 4) = sub_10001273C(0x2865766965636572, 0xEE00293A626F6C62, &v226);
    *(j + 6) = 2080;
    v22 = sub_100935E08();
    v4 = sub_10001273C(v22, v23, &v226);

    *(j + 14) = v4;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s: receiving compound blob %s...", j, 0x16u);
    swift_arrayDestroy();
  }

  v25 = a2 >> 62;
  v26 = __OFSUB__(HIDWORD(a1), a1);
  LODWORD(v224) = v26;
  v27 = HIDWORD(a1) - a1;
  v28 = BYTE6(a2);
  v29 = &_swiftEmptyArrayStorage;
  for (i = 12; ; i += 12)
  {
    v31 = &off_1009AB000;
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v34 = *(a1 + 2);
        v33 = *(a1 + 3);
        v35 = __OFSUB__(v33, v34);
        v32 = v33 - v34;
        if (v35)
        {
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = BYTE6(a2);
      if (v25)
      {
        v32 = HIDWORD(a1) - a1;
        if (v224)
        {
          goto LABEL_89;
        }
      }
    }

    v35 = __OFSUB__(v32, 12);
    v36 = v32 - 12;
    if (v35)
    {
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v36 < i - 12)
    {
      break;
    }

    j = sub_100935ED8();
    v38 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_100787FB8(0, *(v29 + 2) + 1, 1, v29);
    }

    v4 = *(v29 + 2);
    v39 = *(v29 + 3);
    v40 = v29;
    if (v4 >= v39 >> 1)
    {
      v40 = sub_100787FB8((v39 > 1), v4 + 1, 1, v29);
    }

    *(v40 + 2) = v4 + 1;
    v29 = v40;
    v41 = &v40[16 * v4];
    *(v41 + 4) = j;
    *(v41 + 5) = v38;
  }

  v28 = v222;
  v42 = *(v222 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_localIdentities);
  v206 = *(v42 + 16);
  if (!v206)
  {

    a1 = 0;
    v31 = 0;
    v4 = 0;
    goto LABEL_63;
  }

  v25 = *(v222 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_remoteIdentities);
  v198 = v42;
  if (v25 >> 62)
  {
    goto LABEL_101;
  }

  v205 = v25 & 0xFFFFFFFFFFFFFF8;
  for (j = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = v146)
  {
    a1 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v42 + 32;
    v27 = v25 & 0xC000000000000001;
    v204 = v25 + 32;
    v209 = (v29 + 40);
    *&v24 = 136315906;
    v211 = v24;
    *&v24 = *(v31 + 159);
    v212 = v24;
    v220 = v29;
    v201 = v25;
    v200 = j;
    v197 = v42 + 32;
    v199 = v25 & 0xC000000000000001;
LABEL_27:
    if (v45 < *(v42 + 16))
    {
      break;
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    v205 = v25 & 0xFFFFFFFFFFFFFF8;
    v146 = sub_1009373F8();
    v42 = v198;
  }

  v207 = v45;
  v213 = *(v46 + 16 * v45);
  v31 = v213;
  v4 = *(&v213 + 1);
  sub_100896200(v43, v44);
  if (!j)
  {
    goto LABEL_48;
  }

  v221 = *(v29 + 2);
  v217 = v31;
  v216 = v4;
  a2 = 0;
  v203 = v31;
  v202 = v4;
  while (1)
  {
    if (v27)
    {
      v47 = sub_100937268();
    }

    else
    {
      if (a2 >= *(v205 + 16))
      {
        goto LABEL_100;
      }

      v47 = *(v204 + 8 * a2);
    }

    v210 = v47;

    v35 = __OFADD__(a2++, 1);
    if (v35)
    {
      __break(1u);
      goto LABEL_94;
    }

    if (v221)
    {
      break;
    }

LABEL_30:
    a1 = v210;
    if (a2 == j)
    {
      a1 = v210;

LABEL_48:
      v45 = v207 + 1;
      v43 = v31;
      v44 = v4;
      v42 = v198;
      v46 = v197;
      if (v207 + 1 == v206)
      {

LABEL_63:
        v84 = sub_1009364B8();
        v85 = sub_100936EF8();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          *&v226 = v87;
          *v86 = 136315138;
          *(v86 + 4) = sub_10001273C(0x2865766965636572, 0xEE00293A626F6C62, &v226);
          _os_log_impl(&_mh_execute_header, v84, v85, "%s: remoteCounter is nil", v86, 0xCu);
          sub_100012970(v87);
        }

        sub_100896200(v31, v4);
        return 0;
      }

      goto LABEL_27;
    }
  }

  v208 = a2;
  v219 = v210;
  v31 = 0;
  v48 = v209;
  while (1)
  {
    if (v31 >= *(v220 + 16))
    {
      goto LABEL_82;
    }

    v49 = *(v48 - 1);
    v27 = *v48;
    sub_100715738(v49, *v48);
    a1 = v217;
    v50 = v216;
    v29 = v219;
    sub_100715738(v49, v27);
    v51 = sub_1009364B8();
    v52 = sub_100936F18();

    v218 = v50;
    v53 = v49;

    sub_1007156D8(v49, v27);
    v54 = os_log_type_enabled(v51, v52);
    v224 = a1;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      error = v215;
      *v55 = v211;
      *(v55 + 4) = sub_10001273C(0x2865766965636572, 0xEE00293A626F6C62, &error);
      *(v55 + 12) = 2080;
      v226 = v213;
      sub_1008973C0();
      v56 = sub_100937548();
      v58 = v29;
      v59 = sub_10001273C(v56, v57, &error);

      *(v55 + 14) = v59;
      *(v55 + 22) = 2080;
      *&v226 = v58;
      type metadata accessor for SecKey();
      v60 = v58;
      v61 = sub_100936B88();
      v63 = sub_10001273C(v61, v62, &error);

      *(v55 + 24) = v63;
      *(v55 + 32) = 2080;
      sub_100715738(v53, v27);
      v64 = sub_100935E08();
      v66 = v65;
      sub_1007156D8(v53, v27);
      v67 = sub_10001273C(v64, v66, &error);
      v29 = v58;
      a1 = v224;

      *(v55 + 34) = v67;
      _os_log_impl(&_mh_execute_header, v51, v52, "%s: attempting with localIdentity:%s remoteIdentity:%s blob:%s", v55, 0x2Au);
      swift_arrayDestroy();
    }

    *&v223 = v53;
    v28 = v222;
    v68 = v225;
    v25 = sub_100896240(&v225[v222], v53, v27, a1, v29);
    v44 = &v68[v28];
    a2 = sub_1009364B8();
    j = sub_100936F18();
    if (os_log_type_enabled(a2, j))
    {
      v44 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      *&v226 = v215;
      *v44 = v212;
      *(v44 + 4) = sub_10001273C(0x2865766965636572, 0xEE00293A626F6C62, &v226);
      *(v44 + 6) = 2080;
      LODWORD(error) = v25;
      BYTE4(error) = BYTE4(v25) & 1;
      sub_100706B30(&qword_100CB9D10);
      v69 = sub_100936B88();
      v214 = v27;
      v27 = v25;
      v71 = sub_10001273C(v69, v70, &v226);

      *(v44 + 14) = v71;
      v28 = v222;
      _os_log_impl(&_mh_execute_header, a2, j, "%s: result: %s", v44, 0x16u);
      j = v215;
      swift_arrayDestroy();
      a1 = v224;

      v72 = v223;
      v73 = v214;
    }

    else
    {
      v72 = v223;
      v73 = v27;
    }

    sub_1007156D8(v72, v73);

    if ((v25 & 0x100000000) == 0)
    {
      break;
    }

    v31 = (v31 + 1);
    v48 += 2;
    if (v221 == v31)
    {

      v29 = v220;
      v31 = v203;
      v4 = v202;
      v25 = v201;
      j = v200;
      v27 = v199;
      a2 = v208;
      goto LABEL_30;
    }
  }

  v31 = v218;

  v74 = (*((swift_isaMask & *v28) + 0x80))();
  if (v74)
  {
    v76 = v74;
    v77 = v75;
    ObjectType = swift_getObjectType();
    (*(v77 + 8))(v25, ObjectType, v77);
  }

  error = 0;
  v79 = SecKeyCopyExternalRepresentation(v31, &error);
  if (!v79)
  {
LABEL_67:
    v88 = error;
    if (error)
    {
      v89 = sub_1009364B8();
      v90 = sub_100936EF8();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *&v226 = swift_slowAlloc();
        *v91 = v212;
        *(v91 + 4) = sub_10001273C(0x2865766965636572, 0xEE00293A626F6C62, &v226);
        *(v91 + 12) = 2080;
        v92 = v88;
        v227 = v92;
        type metadata accessor for CFError(0);
        v93 = v29;
        sub_1008974DC(&qword_100CB6028, type metadata accessor for CFError);
        v94 = sub_1009375E8();
        v96 = v95;

        v97 = sub_10001273C(v94, v96, &v226);
        v29 = v93;

        *(v91 + 14) = v97;
        _os_log_impl(&_mh_execute_header, v89, v90, "%s: failed importing local private key: %s", v91, 0x16u);
        swift_arrayDestroy();
        v31 = v218;
      }
    }

    goto LABEL_71;
  }

  v80 = v79;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_67;
  }

  v223 = xmmword_1009AD8D0;
  v226 = xmmword_1009AD8D0;
  sub_100935E98();

  v27 = *(&v226 + 1);
  if (*(&v226 + 1) >> 60 == 15)
  {
    goto LABEL_67;
  }

  LODWORD(v4) = v25;
  v25 = v226;
  v81 = SecKeyCopyExternalRepresentation(a1, &error);
  if (!v81)
  {
    goto LABEL_74;
  }

  v82 = v81;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_74;
  }

  v226 = v223;
  sub_100935E98();

  j = *(&v226 + 1);
  if (*(&v226 + 1) >> 60 == 15)
  {
LABEL_74:
    v99 = error;
    if (!error)
    {
      v114 = v25;
      v115 = v27;
      goto LABEL_80;
    }

    v100 = sub_1009364B8();
    v101 = sub_100936EF8();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *&v223 = v25;
      v103 = v102;
      v104 = swift_slowAlloc();
      v221 = v27;
      *&v226 = v104;
      *v103 = v212;
      *(v103 + 4) = sub_10001273C(0x2865766965636572, 0xEE00293A626F6C62, &v226);
      *(v103 + 12) = 2080;
      v105 = v99;
      v227 = v105;
      type metadata accessor for CFError(0);
      v106 = v29;
      sub_1008974DC(&qword_100CB6028, type metadata accessor for CFError);
      v107 = sub_1009375E8();
      v109 = v108;

      v110 = sub_10001273C(v107, v109, &v226);
      v29 = v106;

      *(v103 + 14) = v110;
      _os_log_impl(&_mh_execute_header, v100, v101, "%s: failed importing local public key: %s", v103, 0x16u);
      swift_arrayDestroy();
      v27 = v221;
      v31 = v218;

      v25 = v223;
    }

    v111 = v99;
    v112 = v25;
    v113 = v27;
    goto LABEL_78;
  }

  v220 = v226;
  v83 = SecKeyCopyExternalRepresentation(v29, &error);
  if (!v83)
  {
    goto LABEL_84;
  }

  a2 = v83;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_83:

LABEL_84:
    v116 = error;
    if (!error)
    {
      sub_10001C370(v25, v27);
      v114 = v220;
      v115 = j;
LABEL_80:
      sub_10001C370(v114, v115);
      goto LABEL_71;
    }

    v219 = j;
    v117 = sub_1009364B8();
    v118 = sub_100936EF8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *&v223 = v25;
      v120 = v119;
      v121 = swift_slowAlloc();
      v221 = v27;
      *&v226 = v121;
      *v120 = v212;
      *(v120 + 4) = sub_10001273C(0x2865766965636572, 0xEE00293A626F6C62, &v226);
      *(v120 + 12) = 2080;
      v122 = v116;
      v227 = v122;
      type metadata accessor for CFError(0);
      v123 = v29;
      sub_1008974DC(&qword_100CB6028, type metadata accessor for CFError);
      v124 = sub_1009375E8();
      v126 = v125;

      v127 = sub_10001273C(v124, v126, &v226);
      v29 = v123;

      *(v120 + 14) = v127;
      _os_log_impl(&_mh_execute_header, v117, v118, "%s: failed importing remote public key: %s", v120, 0x16u);
      swift_arrayDestroy();
      v27 = v221;
      v31 = v218;

      v25 = v223;
    }

    v111 = v116;
    sub_10001C370(v25, v27);
    v113 = v219;
    v112 = v220;
LABEL_78:
    sub_10001C370(v112, v113);

LABEL_71:
    return 0;
  }

  v226 = v223;
  sub_100935E98();

  if (*(&v226 + 1) >> 60 == 15)
  {
    goto LABEL_84;
  }

  v217 = *(&v226 + 1);
  a2 = v226;
  *&v226 = v25;
  *(&v226 + 1) = v27;
  *&v223 = v25;
  sub_100715738(v25, v27);
  i = v194;
  v25 = 0;
  sub_100936698();
LABEL_90:
  v219 = j;
  j = a2;
  v128 = v196;
  v129 = i;
  v130 = v195;
  (*(v196 + 56))(v129, 0, 1, v195);
  (*(v128 + 32))(v193, v194, v130);
  *&v226 = j;
  *(&v226 + 1) = v217;
  sub_100715738(j, v217);
  v44 = v190;
  sub_100936668();
  if (!v25)
  {
LABEL_94:
    v216 = j;
    v136 = v44;
    v137 = v192;
    v138 = v191;
    (*(v192 + 56))(v136, 0, 1, v191);
    (*(v137 + 32))(v189, v190, v138);
    v139 = v186;
    sub_100936688();
    if (v25)
    {

      (*(v187 + 56))(v139, 1, 1, v188);
      sub_100013814(v139, &qword_100CB9CE0);
      v140 = sub_1009364B8();
      v141 = sub_100936EF8();
      v142 = os_log_type_enabled(v140, v141);
      v143 = v220;
      if (v142)
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *&v226 = v145;
        *v144 = 136315138;
        *(v144 + 4) = sub_10001273C(0x2865766965636572, 0xEE00293A626F6C62, &v226);
        _os_log_impl(&_mh_execute_header, v140, v141, "%s: failed key agreement", v144, 0xCu);
        sub_100012970(v145);
      }

      sub_10001C370(v143, v219);

      sub_10001C370(v216, v217);
      sub_10001C370(v223, v27);
    }

    else
    {
      v147 = v187;
      v148 = v188;
      (*(v187 + 56))(v139, 0, 1, v188);
      v149 = v139;
      v150 = v185;
      (*(v147 + 32))(v185, v149, v148);
      v151 = v182;
      sub_100936B68();
      v152 = sub_100936B48();
      v154 = v153;
      (*(v183 + 8))(v151, v184);
      if (v154 >> 60 != 15)
      {
        v160 = v154;
        v221 = v27;
        v161 = v150;
        v215 = v29;
        v162 = sub_100895528(v216, v217, v220, v219);
        v226 = xmmword_1009AC710;
        sub_100706B30(&unk_100CB9D00);
        v163 = swift_allocObject();
        v164 = v163;
        *(v163 + 16) = xmmword_1009AD160;
        if (v162)
        {
          *(v163 + 32) = *(v28 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_localCounter);
          *(v163 + 36) = v4;
        }

        else
        {
          v165 = *(v28 + OBJC_IVAR____TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation_localCounter);
          *(v163 + 32) = v4;
          *(v163 + 36) = v165;
        }

        sub_100935EC8();
        sub_100935EC8();
        v166 = v152;
        v167 = v160;
        sub_100935EC8();
        v168 = v226;
        v169 = sub_100896F4C(v161, 6518369, v226, *(&v226 + 1), v164);
        v170 = sub_100896F4C(v161, 7562345, v168, *(&v168 + 1), v164);

        type metadata accessor for IDSGlobalLinkP2PNegotiatedKeys();
        v171 = v169;
        v172 = v170;
        v173 = sub_10071D9A0(v162 & 1, v171, v172);
        v174 = sub_1009364B8();
        v175 = sub_100936F18();
        v225 = v173;

        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v227 = v178;
          *v176 = v212;
          *(v176 + 4) = sub_10001273C(0x2865766965636572, 0xEE00293A626F6C62, &v227);
          *(v176 + 12) = 2112;
          v179 = v225;
          *(v176 + 14) = v225;
          *v177 = v179;
          v180 = v179;
          _os_log_impl(&_mh_execute_header, v174, v175, "%s: keys: %@", v176, 0x16u);
          sub_100013814(v177, &qword_100CB36B0);

          sub_100012970(v178);
        }

        sub_10001C370(v166, v167);
        sub_10001C370(v220, v219);

        sub_10001C370(v216, v217);
        sub_10001C370(v223, v221);
        (*(v187 + 8))(v161, v188);
        (*(v192 + 8))(v189, v191);
        (*(v196 + 8))(v193, v195);
        sub_1007156D8(v226, *(&v226 + 1));
        return v225;
      }

      v155 = v150;
      v156 = sub_1009364B8();
      v157 = sub_100936EF8();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *&v226 = v159;
        *v158 = 136315138;
        *(v158 + 4) = sub_10001273C(0x2865766965636572, 0xEE00293A626F6C62, &v226);
        _os_log_impl(&_mh_execute_header, v156, v157, "%s: failed to convert sessionID to data", v158, 0xCu);
        sub_100012970(v159);
      }

      sub_10001C370(v220, v219);

      sub_10001C370(v216, v217);
      sub_10001C370(v223, v27);
      (*(v187 + 8))(v155, v188);
    }

    (*(v192 + 8))(v189, v191);
    goto LABEL_107;
  }

  (*(v192 + 56))(v44, 1, 1, v191);
  sub_100013814(v44, &qword_100CB9CE8);
  v131 = sub_1009364B8();
  v132 = sub_100936EF8();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = j;
    v135 = swift_slowAlloc();
    *&v226 = v135;
    *v133 = 136315138;
    *(v133 + 4) = sub_10001273C(0x2865766965636572, 0xEE00293A626F6C62, &v226);
    _os_log_impl(&_mh_execute_header, v131, v132, "%s: failed to make public key", v133, 0xCu);
    sub_100012970(v135);

    sub_10001C370(v220, v219);

    sub_10001C370(v134, v217);
    sub_10001C370(v223, v27);
  }

  else
  {

    sub_10001C370(v223, v27);
    sub_10001C370(j, v217);
    sub_10001C370(v220, v219);
  }

LABEL_107:
  (*(v196 + 8))(v193, v195);
  return 0;
}

uint64_t sub_100895528(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_100935EE8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v21[-v13];
  sub_100715738(a3, a4);
  sub_100935EF8();
  sub_100715738(a1, a2);
  sub_100935EF8();
  sub_1008974DC(&unk_100CB9DC8, &type metadata accessor for Data.Iterator);
  while (1)
  {
    sub_100937068();
    if (v26)
    {
      v18 = *(v9 + 8);
      v18(v14, v8);
      sub_100937068();
      v18(v12, v8);
      v17 = v24 ^ 1;
      return v17 & 1;
    }

    v15 = v25;
    sub_100937068();
    if (v23)
    {
      goto LABEL_6;
    }

    if (v15 < v22)
    {
      break;
    }

    if (v22 < v15)
    {
LABEL_6:
      v16 = *(v9 + 8);
      v16(v12, v8);
      v16(v14, v8);
      v17 = 0;
      return v17 & 1;
    }
  }

  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  v17 = 1;
  return v17 & 1;
}

id sub_1008958B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGlobalLinkP2PKeyNegotiation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10089599C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_10081B57C(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_10081B518(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_100935E68();
    v15 = v14;
    result = sub_1007156D8(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100895AE4(uint64_t a1, unsigned int a2, __SecKey *a3, __SecKey *a4)
{
  v7 = sub_1009366B8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1009365E8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src = bswap32(a2);
  v15 = sub_100717A28(&__src, v55);
  v53 = v16;
  error = 0;
  v17 = SecKeyCopyExternalRepresentation(a3, &error);
  if (v17)
  {
    v18 = v17;
    v52 = v15;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v51 = xmmword_1009AD8D0;
      v56 = xmmword_1009AD8D0;
      sub_100935E98();

      v19 = *(&v56 + 1);
      if (*(&v56 + 1) >> 60 != 15)
      {
        v50 = v56;
        v20 = SecKeyCopyExternalRepresentation(a4, &error);
        if (v20)
        {
          v21 = v20;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v56 = v51;
            sub_100935E98();

            v22 = *(&v56 + 1);
            if (*(&v56 + 1) >> 60 != 15)
            {
              *&v51 = v56;
              v59 = v50;
              v60 = v19;
              sub_100715738(v50, v19);
              v49 = v22;
              sub_100935EC8();
              v24 = v59;
              v23 = v60;
              v48[1] = sub_1008974DC(&qword_100CB2DD0, &type metadata accessor for SHA256);
              sub_1009365D8();
              sub_100715738(v24, v23);
              sub_10071769C(v24, v23);
              sub_1007156D8(v24, v23);
              sub_1009365C8();
              (*(v8 + 8))(v10, v7);
              v57 = v11;
              v58 = sub_1008974DC(&qword_100CB9DE0, &type metadata accessor for SHA256Digest);
              v25 = sub_100014250(&v56);
              (*(v12 + 16))(v25, v14, v11);
              sub_1000226D4(&v56, v57);
              sub_100935C58();
              (*(v12 + 8))(v14, v11);
              v26 = v55[0];
              v27 = v55[1];
              sub_100012970(&v56);
              sub_10089599C(8, v26, v27, &v56);
              v28 = v56;
              v56 = xmmword_1009AC710;
              v29 = v52;
              v30 = v53;
              sub_100935EC8();
              sub_100935EC8();
              sub_1007156D8(v28, *(&v28 + 1));
              sub_10001C370(v51, v49);
              sub_1007156D8(v29, v30 & 0xFFFFFFFFFFFFFFLL);
              sub_10001C370(v50, v19);
              sub_1007156D8(v59, v60);
              return v56;
            }
          }

          else
          {
          }
        }

        v41 = error;
        if (error)
        {
          v33 = sub_1009364B8();
          v42 = sub_100936EF8();
          v43 = os_log_type_enabled(v33, v42);
          v15 = v52;
          if (v43)
          {
            v44 = swift_slowAlloc();
            *&v56 = swift_slowAlloc();
            *v44 = 136315394;
            *(v44 + 4) = sub_10001273C(0xD000000000000054, 0x8000000100B05380, &v56);
            *(v44 + 12) = 2080;
            v59 = v41;
            sub_100706B30(&qword_100CB9DD8);
            v45 = sub_100936B88();
            v47 = sub_10001273C(v45, v46, &v56);

            *(v44 + 14) = v47;
            _os_log_impl(&_mh_execute_header, v33, v42, "%s: could not get external representation of remote identity: %s", v44, 0x16u);
            swift_arrayDestroy();
          }

          sub_10001C370(v50, v19);
LABEL_20:
          sub_1007156D8(v15, v53 & 0xFFFFFFFFFFFFFFLL);

          return 0;
        }

        sub_10001C370(v50, v19);
        v40 = v52;
        v39 = v53 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v15 = v52;
  }

  v32 = error;
  if (error)
  {
    v33 = sub_1009364B8();
    v34 = sub_100936EF8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *&v56 = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_10001273C(0xD000000000000054, 0x8000000100B05380, &v56);
      *(v35 + 12) = 2080;
      v59 = v32;
      sub_100706B30(&qword_100CB9DD8);
      v36 = sub_100936B88();
      v38 = sub_10001273C(v36, v37, &v56);

      *(v35 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s: could not get external representation of local identity: %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_20;
  }

  v39 = v53 & 0xFFFFFFFFFFFFFFLL;
  v40 = v15;
LABEL_14:
  sub_1007156D8(v40, v39);
  return 0;
}

void sub_100896200(void *a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_100896240(uint64_t a1, unint64_t a2, unint64_t a3, __SecKey *a4, __SecKey *a5)
{
  v10 = sub_1009366B8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1009365E8();
  v15 = __chkstk_darwin(v14);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_13;
    }

    v21 = *(a2 + 16);
    v20 = *(a2 + 24);
    v22 = __OFSUB__(v20, v21);
    v23 = v20 - v21;
    if (!v22)
    {
      if (v23 == 12)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100715738(a2, a3);
      v28 = sub_1009364B8();
      a5 = sub_100936EF8();
      if (!os_log_type_enabled(v28, a5))
      {
        sub_1007156D8(a2, a3);
LABEL_50:

LABEL_60:
        v79 = 0;
        v80 = 1;
LABEL_61:
        LOBYTE(v102) = v80;
        return v79 | (v80 << 32);
      }

      v24 = swift_slowAlloc();
      a4 = swift_slowAlloc();
      *&v99 = a4;
      *v24 = 136315394;
      *(v24 + 4) = sub_10001273C(0xD00000000000004FLL, 0x8000000100B05330, &v99);
      *(v24 + 12) = 2048;
      if (v19 <= 1)
      {
        if (!v19)
        {
          v31 = BYTE6(a3);
LABEL_49:
          *(v24 + 14) = v31;
          sub_1007156D8(a2, a3);
          _os_log_impl(&_mh_execute_header, v28, a5, "%s: unexpected number of bytes: %ld; expected 12", v24, 0x16u);
          sub_100012970(a4);

          goto LABEL_50;
        }

        LODWORD(v31) = HIDWORD(a2) - a2;
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v31 = v31;
          goto LABEL_49;
        }

LABEL_72:
        __break(1u);
      }

      if (v19 != 2)
      {
        v31 = 0;
        goto LABEL_49;
      }

      v39 = *(a2 + 16);
      v38 = *(a2 + 24);
      v22 = __OFSUB__(v38, v39);
      v31 = v38 - v39;
      if (!v22)
      {
        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v19)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 == 12)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    goto LABEL_68;
  }

  if (BYTE6(a3) != 12)
  {
    goto LABEL_13;
  }

LABEL_8:
  v92 = v11;
  v93 = v16;
  v96 = a1;
  v94 = v15;
  v24 = sub_100935ED8();
  v19 = v25;
  v26 = sub_100935ED8();
  v28 = v26;
  a2 = v27;
  v29 = v19 >> 62;
  v97 = v24;
  if ((v19 >> 62) > 1)
  {
    if (v29 != 2)
    {
      v30 = 0;
LABEL_33:
      error = 0;
      v44 = SecKeyCopyExternalRepresentation(a4, &error);
      if (v44)
      {
        v45 = v44;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v90 = v30;
          v95 = xmmword_1009AD8D0;
          v99 = xmmword_1009AD8D0;
          sub_100935E98();

          v46 = *(&v99 + 1);
          if (*(&v99 + 1) >> 60 != 15)
          {
            v91 = v99;
            v47 = SecKeyCopyExternalRepresentation(a5, &error);
            if (v47)
            {
              v48 = v47;
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v99 = v95;
                sub_100935E98();

                if (*(&v99 + 1) >> 60 != 15)
                {
                  v102 = v99;
                  v88 = v99;
                  sub_100715738(v99, *(&v99 + 1));
                  v89 = v46;
                  sub_100935EC8();
                  v50 = *(&v102 + 1);
                  v49 = v102;
                  sub_100715738(v102, *(&v102 + 1));
                  *&v95 = sub_1008974DC(&qword_100CB2DD0, &type metadata accessor for SHA256);
                  sub_1009365D8();
                  sub_100715738(v49, v50);
                  sub_10071769C(v49, v50);
                  sub_1007156D8(v49, v50);
                  sub_1009365C8();
                  sub_1007156D8(v49, v50);
                  (*(v92 + 8))(v13, v10);
                  v51 = v94;
                  v100 = v94;
                  v101 = sub_1008974DC(&qword_100CB9DE0, &type metadata accessor for SHA256Digest);
                  v52 = sub_100014250(&v99);
                  v53 = v93;
                  (*(v93 + 16))(v52, v18, v51);
                  sub_1000226D4(&v99, v100);
                  sub_100935C58();
                  (*(v53 + 8))(v18, v51);
                  v54 = v98[0];
                  v55 = v98[1];
                  sub_100012970(&v99);
                  sub_10089599C(8, v54, v55, &v99);
                  v56 = v99;
                  *&v95 = v28;
                  LOBYTE(v50) = sub_10071CAE8(v99, *(&v99 + 1), v28, a2);
                  v57 = sub_1009364B8();
                  v58 = sub_100936F18();
                  v59 = v57;
                  v60 = os_log_type_enabled(v57, v58);
                  if (v50)
                  {
                    if (v60)
                    {
                      v61 = swift_slowAlloc();
                      v62 = swift_slowAlloc();
                      *&v99 = v62;
                      *v61 = 136315138;
                      *(v61 + 4) = sub_10001273C(0xD00000000000004FLL, 0x8000000100B05330, &v99);
                      _os_log_impl(&_mh_execute_header, v57, v58, "%s: sha bytes match", v61, 0xCu);
                      sub_100012970(v62);
                    }

                    sub_10001C370(v88, *(&v88 + 1));
                    sub_1007156D8(v56, *(&v56 + 1));
                    sub_10001C370(v91, v89);
                    sub_1007156D8(v95, a2);
                    sub_1007156D8(v97, v19);

                    sub_1007156D8(v102, *(&v102 + 1));
                    v80 = 0;
                    v79 = v90;
                    goto LABEL_61;
                  }

                  if (v60)
                  {
                    v81 = swift_slowAlloc();
                    v96 = swift_slowAlloc();
                    v98[0] = v96;
                    *v81 = 136315394;
                    *(v81 + 4) = sub_10001273C(0xD00000000000004FLL, 0x8000000100B05330, v98);
                    *(v81 + 12) = 2080;
                    swift_beginAccess();
                    v82 = v102;
                    sub_100715738(v102, *(&v102 + 1));
                    v83 = sub_100935E08();
                    v94 = v19;
                    v84 = v83;
                    v86 = v85;
                    sub_1007156D8(v82, *(&v82 + 1));
                    v87 = sub_10001273C(v84, v86, v98);

                    *(v81 + 14) = v87;
                    _os_log_impl(&_mh_execute_header, v59, v58, "%s: sha bytes do not match (concatenatedData: %s)", v81, 0x16u);
                    swift_arrayDestroy();

                    sub_10001C370(v88, *(&v88 + 1));
                    sub_1007156D8(v56, *(&v56 + 1));
                    sub_10001C370(v91, v89);
                    sub_1007156D8(v95, a2);
                    sub_1007156D8(v97, v94);
                  }

                  else
                  {
                    sub_10001C370(v88, *(&v88 + 1));
                    sub_1007156D8(v56, *(&v56 + 1));
                    sub_10001C370(v91, v89);
                    sub_1007156D8(v95, a2);
                    sub_1007156D8(v97, v19);
                  }

                  v78 = *(&v102 + 1);
                  v77 = v102;
                  goto LABEL_59;
                }
              }

              else
              {
              }
            }

            v70 = v46;
            v71 = error;
            if (error)
            {
              v64 = sub_1009364B8();
              v72 = sub_100936EF8();
              if (os_log_type_enabled(v64, v72))
              {
                v73 = swift_slowAlloc();
                *&v99 = swift_slowAlloc();
                *v73 = 136315394;
                *(v73 + 4) = sub_10001273C(0xD00000000000004FLL, 0x8000000100B05330, &v99);
                *(v73 + 12) = 2080;
                *&v102 = v71;
                sub_100706B30(&qword_100CB9DD8);
                v74 = sub_100936B88();
                v76 = sub_10001273C(v74, v75, &v99);

                *(v73 + 14) = v76;
                _os_log_impl(&_mh_execute_header, v64, v72, "%s: could not get external representation of remote identity: %s", v73, 0x16u);
                swift_arrayDestroy();
              }

              sub_10001C370(v91, v70);
LABEL_56:
              sub_1007156D8(v28, a2);
              sub_1007156D8(v97, v19);

              goto LABEL_60;
            }

            sub_10001C370(v91, v70);
            goto LABEL_58;
          }
        }

        else
        {
        }
      }

      v63 = error;
      if (error)
      {
        v64 = sub_1009364B8();
        v65 = sub_100936EF8();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *&v99 = swift_slowAlloc();
          *v66 = 136315394;
          *(v66 + 4) = sub_10001273C(0xD00000000000004FLL, 0x8000000100B05330, &v99);
          *(v66 + 12) = 2080;
          *&v102 = v63;
          sub_100706B30(&qword_100CB9DD8);
          v67 = sub_100936B88();
          v69 = sub_10001273C(v67, v68, &v99);

          *(v66 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v64, v65, "%s: could not get external representation of local identity: %s", v66, 0x16u);
          swift_arrayDestroy();
        }

        goto LABEL_56;
      }

LABEL_58:
      sub_1007156D8(v28, a2);
      v77 = v97;
      v78 = v19;
LABEL_59:
      sub_1007156D8(v77, v78);
      goto LABEL_60;
    }

    *&v95 = v26;
    v32 = v27;
    v33 = *(v24 + 16);
    v34 = sub_100935BE8();
    if (v34)
    {
      v35 = v34;
      v36 = sub_100935C18();
      if (__OFSUB__(v33, v36))
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v37 = (v33 - v36 + v35);
      sub_100935C08();
      if (v37)
      {
LABEL_31:
        a2 = v32;
        v30 = bswap32(*v37);
        v28 = v95;
        goto LABEL_33;
      }
    }

    else
    {
      sub_100935C08();
    }

    __break(1u);
    goto LABEL_75;
  }

  if (!v29)
  {
    v30 = bswap32(v24);
    goto LABEL_33;
  }

LABEL_27:
  *&v95 = v28;
  v32 = a2;
  if (v24 > v24 >> 32)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v40 = sub_100935BE8();
  if (!v40)
  {
LABEL_75:
    result = sub_100935C08();
    __break(1u);
    goto LABEL_76;
  }

  v41 = v40;
  v42 = sub_100935C18();
  if (__OFSUB__(v24, v42))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v37 = (v24 - v42 + v41);
  result = sub_100935C08();
  if (v37)
  {
    goto LABEL_31;
  }

LABEL_76:
  __break(1u);
  return result;
}

id sub_100896F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v9 = sub_100936B78();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100936638();
  v14 = *(v13 - 8);
  v41 = v13;
  v42 = v14;
  v15 = __chkstk_darwin(v13);
  v35 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  v45 = a3;
  v46 = a4;
  v38 = a4;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_100937248(36);

  v39 = a2;
  v43 = a2;
  v44 = 0xE300000000000000;
  v47._object = 0x8000000100B052D0;
  v47._countAndFlagsBits = 0xD000000000000022;
  sub_100936C08(v47);
  sub_100936B68();
  v19 = sub_100936B48();
  v21 = v20;

  v22 = *(v10 + 8);
  v40 = v9;
  v37 = v22;
  result = v22(v12, v9);
  if (v21 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1009366B8();
    v43 = v19;
    v44 = v21;
    sub_1008974DC(&qword_100CB2DD0, &type metadata accessor for SHA256);
    sub_10074B37C();
    v34 = a1;
    sub_1009365F8();
    sub_1007156D8(v43, v44);
    sub_100936618();
    v24 = *(v42 + 8);
    v42 += 8;
    v24(v18, v41);
    v32 = v46;
    v33 = v45;
    v45 = a3;
    v46 = v38;
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_100937248(36);

    v43 = v39;
    v44 = 0xE300000000000000;
    v48._object = 0x8000000100B05300;
    v48._countAndFlagsBits = 0xD000000000000022;
    sub_100936C08(v48);
    sub_100936B68();
    v25 = sub_100936B48();
    v27 = v26;

    result = v37(v12, v40);
    if (v27 >> 60 != 15)
    {
      v43 = v25;
      v44 = v27;
      v28 = v35;
      sub_1009365F8();
      sub_1007156D8(v43, v44);
      sub_100936618();
      v24(v28, v41);
      v29 = v45;
      v30 = v46;
      type metadata accessor for IDSGlobalLinkP2PNegotiatedKeySet();
      v31 = v36;

      return sub_10071D11C(v33, v32, v29, v30, v31);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1008973C0()
{
  result = qword_100CB9D18;
  if (!qword_100CB9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB9D18);
  }

  return result;
}

uint64_t sub_10089741C()
{
  result = sub_1009364D8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008974DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100897584()
{
  v1 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_sharedSessionHasJoined;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10089761C(char a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_sharedSessionHasJoined;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100897844(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_pluginOptionsByPluginName;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100897988()
{
  v1 = (v0 + OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_cellInterfaceName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100897A5C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_cellInterfaceName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100897BBC()
{
  v1 = v0 + OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_idsContextBlob;
  swift_beginAccess();
  v2 = *v1;
  sub_1007483B0(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_100897CAC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_idsContextBlob);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001C370(v6, v7);
}

uint64_t sub_100897DB4()
{
  v1 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_isReliableUnicastSession;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100897E4C(char a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_isReliableUnicastSession;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100897F44()
{
  v1 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_isReliableUnicastClient;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100897FDC(char a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_isReliableUnicastClient;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1008981C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_timeBase;
  swift_beginAccess();
  return sub_10002155C(v1 + v3, a1);
}

uint64_t sub_100898360(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_timeBase;
  swift_beginAccess();
  sub_100817548(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_10089846C()
{
  v1 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_linkSelectionStrategy;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100898518(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_linkSelectionStrategy;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1008985D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *((swift_isaMask & *v3) + 0xB8);

  v8 = v7(v14);
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v10;
  *v10 = 0x8000000000000000;
  sub_100899678(a3, a1, a2, isUniquelyReferenced_nonNull_native);

  *v10 = v13;
  return v8(v14, 0);
}

uint64_t sub_1008987F4()
{
  (*((swift_isaMask & *v0) + 0xC8))(0, 0);
  (*((swift_isaMask & *v0) + 0xE0))(0, 0xF000000000000000);
  (*((swift_isaMask & *v0) + 0x98))(0);
  (*((swift_isaMask & *v0) + 0xF8))(0);
  v1 = *((swift_isaMask & *v0) + 0x110);

  return v1(0);
}

void sub_100898AC0(void *a1)
{
  v2 = v1;
  v4 = sub_100706B30(&qword_100CB4AC0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  (*((swift_isaMask & *v1) + 0x120))(v5);
  v8 = sub_100936038();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    isa = sub_100935F58().super.isa;
    (*(v9 + 8))(v7, v8);
  }

  [a1 setTimeBase:isa];

  v11 = [a1 setSharedSessionHasJoined:(*((swift_isaMask & *v2) + 0x90))() & 1];
  v12 = (*((swift_isaMask & *v2) + 0xA8))(v11);
  sub_100898EC8(v12);

  v13 = sub_100936A58().super.isa;

  [a1 setPluginCache:v13];

  (*((swift_isaMask & *v2) + 0xC0))();
  if (v14)
  {
    v15 = sub_100936B28();
  }

  else
  {
    v15 = 0;
  }

  [a1 setCellInterfaceName:v15];

  v16 = (*((swift_isaMask & *v2) + 0xD8))();
  if (v17 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v19 = v16;
    v20 = v17;
    v18 = sub_100935E78().super.isa;
    sub_10001C370(v19, v20);
  }

  [a1 setIDSContextBlob:v18];

  v21 = (*((swift_isaMask & *v2) + 0xF0))();
  v22 = [a1 setIsReliableUnicastSession:v21 & 1 isClient:(*((swift_isaMask & *v2) + 0x108))() & 1];
  v23 = (*((swift_isaMask & *v2) + 0x138))(v22);
  [a1 setLinkSelectionStrategy:v23];
}

uint64_t sub_100898EC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100706B30(&qword_100CB2F80);
    v2 = sub_100937438();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    sub_100706B30(&qword_100CB62A0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100308C74(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100308C74(v29, v30);
    result = sub_1009371C8(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100308C74(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_1008991FC()
{
  v0[OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_sharedSessionHasJoined] = 0;
  v1 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_pluginOptionsByPluginName;
  *&v0[v1] = sub_100899964(&_swiftEmptyArrayStorage);
  v2 = &v0[OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_cellInterfaceName];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_idsContextBlob] = xmmword_1009AD8D0;
  v0[OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_isReliableUnicastSession] = 0;
  v0[OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_isReliableUnicastClient] = 0;
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_timeBase;
  v4 = sub_100936038();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_linkSelectionStrategy] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for IDSGlobalLinkConfiguration();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100899314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGlobalLinkConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1008993D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB9E40);
  v34 = a2;
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100937668();
      sub_100936BC8();
      result = sub_1009376C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100899678(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000136E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1008993D0(v16, a4 & 1);
      v11 = sub_1000136E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1009375D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1008997F4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_1008997F4()
{
  v1 = v0;
  sub_100706B30(&qword_100CB9E40);
  v2 = *v0;
  v3 = sub_100937408();
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

unint64_t sub_100899964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB9E40);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000136E4(v5, v6);
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

uint64_t type metadata accessor for IDSGlobalLinkConfiguration()
{
  result = qword_100CD0798;
  if (!qword_100CD0798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100899ABC()
{
  sub_100818944();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet()
{
  result = qword_100CD0A40;
  if (!qword_100CD0A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100899BD0()
{
  v0 = sub_1009364D8();
  sub_10071A288(v0, qword_100CD4148);
  sub_100717FC0(v0, qword_100CD4148);
  return sub_1007C9A6C(2);
}

uint64_t sub_100899C20()
{
  sub_1009376D8();
  sub_100719EB8();
  sub_100936AD8();
  v6 = *(v0 + 8);
  sub_10089C3C4(v7, v6);
  v1 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10089C9E4(&qword_100CB2EA8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  sub_100936AD8();
  sub_1009376A8(*(v0 + *(v1 + 28)));
  sub_1009376A8(*(v0 + *(v1 + 32)));
  sub_1009376B8();
  sub_100937248(95);
  v8._countAndFlagsBits = 0x726574614D79654BLL;
  v8._object = 0xEF207465536C6169;
  sub_100936C08(v8);
  v9._countAndFlagsBits = sub_100937548();
  sub_100936C08(v9);

  v10._object = 0x8000000100AFEF10;
  v10._countAndFlagsBits = 0xD000000000000012;
  sub_100936C08(v10);
  v11._countAndFlagsBits = sub_100937548();
  sub_100936C08(v11);

  v12._countAndFlagsBits = 0xD000000000000013;
  v12._object = 0x8000000100AFEF30;
  sub_100936C08(v12);
  sub_10089C9E4(&qword_100CB2E88, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  v13._countAndFlagsBits = sub_100937548();
  sub_100936C08(v13);

  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x8000000100B05620;
  sub_100936C08(v14);
  v15._countAndFlagsBits = sub_100937548();
  sub_100936C08(v15);

  v16._countAndFlagsBits = 0x6169726574616D20;
  v16._object = 0xEB000000003A736CLL;
  sub_100936C08(v16);
  sub_100899FB0(v6);
  sub_1009360A8();
  v2 = sub_100936CF8();
  v4 = v3;

  v17._countAndFlagsBits = v2;
  v17._object = v4;
  sub_100936C08(v17);

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  sub_100936C08(v18);
  return 0;
}

uint64_t sub_100899F48()
{
  sub_100899FB0(*(v0 + 8));
  sub_1009360A8();
  v1 = sub_100936CF8();

  return v1;
}

uint64_t sub_100899FB0(uint64_t a1)
{
  v3 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1009360A8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v37 = v8;
  v31[1] = v1;
  v44 = &_swiftEmptyArrayStorage;
  sub_10089C1CC(0, v9, 0);
  v10 = v44;
  v11 = a1 + 56;
  result = sub_1009370C8();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v38 = v13;
  v35 = v13 + 32;
  v36 = (v13 + 16);
  v32 = a1 + 64;
  v33 = v9;
  v34 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v42 = v15;
    v43 = v18;
    v19 = v39;
    sub_10089C648(*(a1 + 48) + *(v40 + 72) * v14, v39, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v20 = v37;
    (*v36)(v37, v19 + *(v41 + 20), v5);
    sub_10089C6B0(v19, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v44 = v10;
    v21 = v5;
    v23 = v10[2];
    v22 = v10[3];
    if (v23 >= v22 >> 1)
    {
      sub_10089C1CC(v22 > 1, v23 + 1, 1);
      v10 = v44;
    }

    v10[2] = v23 + 1;
    result = (*(v38 + 32))(v10 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v23, v20, v21);
    v16 = 1 << *(a1 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v5 = v21;
    v11 = v34;
    v24 = *(v34 + 8 * v17);
    if ((v24 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v43 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v25 = v24 & (-2 << (v14 & 0x3F));
    if (v25)
    {
      v16 = __clz(__rbit64(v25)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v17 << 6;
      v27 = v17 + 1;
      v28 = (v32 + 8 * v17);
      while (v27 < (v16 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_1000152C8(v14, v43, 0);
          v16 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_1000152C8(v14, v43, 0);
    }

LABEL_4:
    v15 = v42 + 1;
    v14 = v16;
    if (v42 + 1 == v33)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10089A378(void *a1)
{
  v103 = a1;
  v85 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  v2 = __chkstk_darwin(v85);
  v4 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v93 = &v83 - v5;
  v6 = type metadata accessor for IDSGroupEncryptionMaterialData();
  v7 = __chkstk_darwin(v6 - 8);
  v92 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v91 = &v83 - v10;
  __chkstk_darwin(v9);
  v102 = &v83 - v11;
  v101 = sub_100706B30(&qword_100CB9E48);
  v12 = __chkstk_darwin(v101);
  v14 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = (&v83 - v15);
  v95 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v100 = *(v95 - 8);
  v17 = __chkstk_darwin(v95);
  v106 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v90 = &v83 - v20;
  v21 = __chkstk_darwin(v19);
  v89 = &v83 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v83 - v24;
  __chkstk_darwin(v23);
  v99 = &v83 - v26;
  v111 = &_swiftEmptySetSingleton;
  v27 = *(v1 + 8);
  v30 = *(v27 + 56);
  v29 = v27 + 56;
  v28 = v30;
  v31 = 1 << *(*(v1 + 8) + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v28;
  v34 = (v31 + 63) >> 6;
  v105 = *(v1 + 8);

  v36 = 0;
  *&v37 = 136315394;
  v84 = v37;
  *&v37 = 136315906;
  v83 = v37;
  v107 = v4;
  v108 = v1;
  v97 = v25;
  v98 = v14;
  v104 = v16;
  v96 = v34;
  v94 = v29;
  if (v33)
  {
    goto LABEL_7;
  }

LABEL_8:
  v39 = v106;
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v34)
    {

      return v111;
    }

    v33 = *(v29 + 8 * v38);
    ++v36;
    if (v33)
    {
      while (1)
      {
        v40 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v41 = v99;
        sub_10089C648(*(v105 + 48) + *(v100 + 72) * (v40 | (v38 << 6)), v99, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_10089C7E8(v41, v25, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_10089AF30(v25, v103, v16);
        sub_100012D50(v16, v14, &qword_100CB9E48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = *v14;
          if (qword_100CD07B0 != -1)
          {
            swift_once();
          }

          v43 = sub_1009364D8();
          sub_100717FC0(v43, qword_100CD4148);
          sub_10089C648(v25, v39, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          sub_10071C084(v42);
          v44 = v39;
          v45 = sub_1009364B8();
          v46 = sub_100936EF8();
          sub_10071C094(v42);
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v110 = v87;
            *v47 = v84;
            sub_10089C9E4(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v48 = sub_100937548();
            v50 = v49;
            v88 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent;
            sub_10089C6B0(v44, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v51 = sub_10001273C(v48, v50, &v110);

            *(v47 + 4) = v51;
            *(v47 + 12) = 2080;
            v109 = v42;
            sub_10071C084(v42);
            v52 = sub_100936B88();
            v54 = sub_10001273C(v52, v53, &v110);
            v25 = v97;

            *(v47 + 14) = v54;
            v34 = v96;
            _os_log_impl(&_mh_execute_header, v45, v46, "materialData: could not get material data for material %s: %s", v47, 0x16u);
            swift_arrayDestroy();

            v14 = v98;

            sub_10071C094(v42);
            v16 = v104;
            sub_10089C5E0(v104);
            v55 = v25;
            v56 = v88;
          }

          else
          {

            sub_10071C094(v42);
            sub_10089C6B0(v44, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v16 = v104;
            sub_10089C5E0(v104);
            v55 = v25;
            v56 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent;
          }

          result = sub_10089C6B0(v55, v56);
          v36 = v38;
          v4 = v107;
          if (!v33)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v57 = v102;
          sub_10089C7E8(v14, v102, type metadata accessor for IDSGroupEncryptionMaterialData);
          v58 = v57;
          v59 = v92;
          sub_10089C648(v58, v92, type metadata accessor for IDSGroupEncryptionMaterialData);
          v60 = v91;
          sub_100718E70(v91, v59);
          sub_10089C6B0(v60, type metadata accessor for IDSGroupEncryptionMaterialData);
          if (qword_100CD07B0 != -1)
          {
            swift_once();
          }

          v61 = sub_1009364D8();
          sub_100717FC0(v61, qword_100CD4148);
          v62 = v89;
          sub_10089C648(v25, v89, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v63 = v108;
          v64 = v93;
          sub_10089C648(v108, v93, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          sub_10089C648(v63, v4, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          v65 = v90;
          sub_10089C648(v25, v90, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v66 = sub_1009364B8();
          v67 = sub_100936ED8();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v110 = v88;
            *v68 = v83;
            sub_10089C9E4(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v87 = v66;
            v86 = v67;
            v69 = sub_100937548();
            v71 = v70;
            sub_10089C6B0(v62, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v72 = sub_10001273C(v69, v71, &v110);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2048;
            v73 = *(v64 + *(v85 + 28));
            sub_10089C6B0(v64, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
            *(v68 + 14) = v73;
            *(v68 + 22) = 2080;
            type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
            sub_10089C9E4(&qword_100CB2E88, type metadata accessor for IDSGroupEncryptionPublicIdentity);
            v74 = sub_100937548();
            v76 = v75;
            sub_10089C6B0(v107, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
            v77 = sub_10001273C(v74, v76, &v110);

            *(v68 + 24) = v77;
            *(v68 + 32) = 2080;
            sub_1009360A8();
            sub_10089C9E4(&qword_100CB2DA8, &type metadata accessor for UUID);
            v78 = sub_100937548();
            v80 = v79;
            sub_10089C6B0(v65, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v81 = sub_10001273C(v78, v80, &v110);

            *(v68 + 34) = v81;
            v82 = v87;
            _os_log_impl(&_mh_execute_header, v87, v86, "materialData: encrypted key %sfor participantID: %llu; for public identity: %s, mki: %s", v68, 0x2Au);
            swift_arrayDestroy();

            v4 = v107;
          }

          else
          {
            sub_10089C6B0(v64, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);

            sub_10089C6B0(v65, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            sub_10089C6B0(v4, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
            sub_10089C6B0(v62, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          }

          sub_10089C6B0(v102, type metadata accessor for IDSGroupEncryptionMaterialData);
          v16 = v104;
          sub_10089C5E0(v104);
          v25 = v97;
          result = sub_10089C6B0(v97, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v36 = v38;
          v14 = v98;
          v34 = v96;
          v29 = v94;
          if (!v33)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v38 = v36;
        v39 = v106;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_10089AF30(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = a2[3];
  v8 = a2[4];
  sub_1000226D4(a2, v7);
  v9 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v10 = (a1 + v9[7]);
  v11 = *v10;
  v12 = v10[1];
  v13 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  v14 = (*(v8 + 8))(v11, v12, v3 + *(v13 + 24), v7, v8);
  if ((v16 & 1) == 0)
  {
    if (*(v3 + 4))
    {
      sub_1007156CC(v14, v15, 0);
      *a3 = 0;
      goto LABEL_5;
    }

    v119 = v14;
    v120 = v15;
    v17 = *v3;
    v118 = sub_100706B30(&qword_100CB7210);
    v18 = v118[12];
    if (v17)
    {
      *a3 = 1;
      v19 = v9[5];
      v20 = sub_1009360A8();
      (*(*(v20 - 8) + 16))(a3 + v18, a1 + v19, v20);
      sub_100706B30(&unk_100CB36A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1009AD840;
      sub_100936B38();
      sub_1009371E8();
      v124 = sub_100936088();
      v125 = v22;
      v23 = sub_10072E1C8(&v124, &v126);
      v127 = &type metadata for Data;
      v128 = &protocol witness table for Data;
      v124 = v23;
      v125 = v24;
      v25 = sub_1000226D4(&v124, &type metadata for Data);
      v26 = *v25;
      v27 = v25[1];
      v28 = v27 >> 62;
      if ((v27 >> 62) > 1)
      {
        if (v28 != 2)
        {
          memset(v121, 0, 14);
          v30 = v121;
          v29 = v121;
          goto LABEL_60;
        }

        v43 = *(v26 + 16);
        v114 = *(v26 + 24);
        v44 = sub_100935BE8();
        if (v44)
        {
          v45 = sub_100935C18();
          if (__OFSUB__(v43, v45))
          {
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v44 += v43 - v45;
        }

        v46 = __OFSUB__(v114, v43);
        v47 = v114 - v43;
        if (!v46)
        {
          v48 = sub_100935C08();
          if (v48 >= v47)
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }

          v50 = &v44[v49];
          if (v44)
          {
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          sub_1007174E8(v44, v51, &v122);
          goto LABEL_61;
        }

        goto LABEL_70;
      }

      if (!v28)
      {
        v121[0] = *v25;
        LOWORD(v121[1]) = v27;
        BYTE2(v121[1]) = BYTE2(v27);
        BYTE3(v121[1]) = BYTE3(v27);
        BYTE4(v121[1]) = BYTE4(v27);
        BYTE5(v121[1]) = BYTE5(v27);
        v29 = v121 + BYTE6(v27);
        v30 = v121;
LABEL_60:
        sub_1007174E8(v30, v29, &v122);
LABEL_61:
        v74 = v122;
        v75 = v123;
        sub_100012970(&v124);
        *(inited + 96) = &type metadata for Data;
        *(inited + 72) = v74;
        *(inited + 80) = v75;
        v124 = sub_100936B38();
        v125 = v76;
        sub_1009371E8();
        *(inited + 168) = &type metadata for Data;
        *(inited + 144) = v119;
        *(inited + 152) = v120;
        v124 = sub_100936B38();
        v125 = v77;
        sub_100715738(v119, v120);
        sub_1009371E8();
        v78 = (a1 + v9[6]);
        v79 = *v78;
        v80 = v78[1];
        *(inited + 240) = &type metadata for Data;
        *(inited + 216) = v79;
        *(inited + 224) = v80;
        v124 = sub_100936B38();
        v125 = v81;
        sub_100715738(v79, v80);
        sub_1009371E8();
        v82 = *(a1 + v9[10]);
        *(inited + 312) = &type metadata for UInt32;
        *(inited + 288) = v82;
        v124 = sub_100936B38();
        v125 = v83;
        sub_1009371E8();
        *(inited + 384) = &type metadata for Int;
        *(inited + 360) = 1;
        v124 = sub_100936B38();
        v125 = v84;
        sub_1009371E8();
        v85 = *(v4 + *(v13 + 32));
        *(inited + 456) = &type metadata for UInt64;
        *(inited + 432) = v85;
        sub_100719CE8(inited);
        swift_setDeallocating();
        sub_100706B30(&qword_100CB2E90);
        swift_arrayDestroy();
        isa = sub_100936A58().super.isa;

        v87 = JWEncodeDictionary();

        if (v87)
        {
          v88 = (a3 + v118[16]);
          v89 = v118[20];
          v90 = sub_100935EA8();
          v92 = v91;

          sub_1007156CC(v119, v120, 0);
          *v88 = v90;
          v88[1] = v92;
          *(a3 + v89) = 0;
LABEL_67:
          type metadata accessor for IDSGroupEncryptionMaterialData();
          swift_storeEnumTagMultiPayload();
          sub_100706B30(&qword_100CB9E48);
          swift_storeEnumTagMultiPayload();
          return;
        }

        __break(1u);
        goto LABEL_77;
      }

      v60 = v26;
      v61 = v26 >> 32;
      v116 = v61 - v60;
      if (v61 >= v60)
      {
        v62 = sub_100935BE8();
        if (!v62)
        {
LABEL_43:
          v64 = sub_100935C08();
          v65 = v116;
          if (v64 < v116)
          {
            v65 = v64;
          }

          v66 = (v65 + v62);
          if (v62)
          {
            v29 = v66;
          }

          else
          {
            v29 = 0;
          }

          v30 = v62;
          goto LABEL_60;
        }

        v63 = sub_100935C18();
        if (!__OFSUB__(v60, v63))
        {
          v62 += v60 - v63;
          goto LABEL_43;
        }

        goto LABEL_74;
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    *a3 = 0;
    v31 = v9[5];
    v32 = sub_1009360A8();
    (*(*(v32 - 8) + 16))(a3 + v18, a1 + v31, v32);
    sub_100706B30(&unk_100CB36A0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1009AD830;
    sub_100936B38();
    sub_1009371E8();
    v124 = sub_100936088();
    v125 = v34;
    v35 = sub_10072E1C8(&v124, &v126);
    v127 = &type metadata for Data;
    v128 = &protocol witness table for Data;
    v124 = v35;
    v125 = v36;
    v37 = sub_1000226D4(&v124, &type metadata for Data);
    v38 = *v37;
    v39 = v37[1];
    v40 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v40 == 2)
      {
        v52 = *(v38 + 16);
        v115 = *(v38 + 24);
        v53 = sub_100935BE8();
        if (v53)
        {
          v54 = sub_100935C18();
          if (__OFSUB__(v52, v54))
          {
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
          }

          v53 += v52 - v54;
        }

        v46 = __OFSUB__(v115, v52);
        v55 = v115 - v52;
        if (v46)
        {
          goto LABEL_71;
        }

        v56 = sub_100935C08();
        if (v56 >= v55)
        {
          v57 = v55;
        }

        else
        {
          v57 = v56;
        }

        v58 = &v53[v57];
        if (v53)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        sub_1007174E8(v53, v59, &v122);
LABEL_65:
        v93 = v122;
        v94 = v123;
        sub_100012970(&v124);
        *(v33 + 96) = &type metadata for Data;
        *(v33 + 72) = v93;
        *(v33 + 80) = v94;
        v124 = sub_100936B38();
        v125 = v95;
        sub_1009371E8();
        *(v33 + 168) = &type metadata for Data;
        *(v33 + 144) = v119;
        *(v33 + 152) = v120;
        v124 = sub_100936B38();
        v125 = v96;
        sub_100715738(v119, v120);
        sub_1009371E8();
        v97 = (a1 + v9[6]);
        v98 = *v97;
        v99 = v97[1];
        *(v33 + 240) = &type metadata for Data;
        *(v33 + 216) = v98;
        *(v33 + 224) = v99;
        v124 = sub_100936B38();
        v125 = v100;
        sub_100715738(v98, v99);
        sub_1009371E8();
        v101 = *(a1 + v9[10]);
        *(v33 + 312) = &type metadata for UInt32;
        *(v33 + 288) = v101;
        v124 = sub_100936B38();
        v125 = v102;
        sub_1009371E8();
        *(v33 + 384) = &type metadata for Int;
        *(v33 + 360) = 1;
        v124 = sub_100936B38();
        v125 = v103;
        sub_1009371E8();
        v104 = *(v4 + *(v13 + 32));
        *(v33 + 456) = &type metadata for UInt64;
        *(v33 + 432) = v104;
        v124 = sub_100936B38();
        v125 = v105;
        sub_1009371E8();
        v106 = *(a1 + v9[12]);
        *(v33 + 528) = &type metadata for UInt8;
        *(v33 + 504) = v106;
        sub_100719CE8(v33);
        swift_setDeallocating();
        sub_100706B30(&qword_100CB2E90);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v107 = sub_100936A58().super.isa;

        v108 = JWEncodeDictionary();

        if (v108)
        {
          v109 = (a3 + v118[16]);
          v110 = v118[20];
          v111 = sub_100935EA8();
          v113 = v112;

          sub_1007156CC(v119, v120, 0);
          *v109 = v111;
          v109[1] = v113;
          *(a3 + v110) = v106;
          goto LABEL_67;
        }

LABEL_77:
        __break(1u);
        return;
      }

      memset(v121, 0, 14);
      v42 = v121;
      v41 = v121;
    }

    else if (v40)
    {
      v67 = v38;
      v68 = v38 >> 32;
      v117 = v68 - v67;
      if (v68 < v67)
      {
        goto LABEL_69;
      }

      v69 = sub_100935BE8();
      if (v69)
      {
        v70 = sub_100935C18();
        if (__OFSUB__(v67, v70))
        {
          goto LABEL_75;
        }

        v69 += v67 - v70;
      }

      v71 = sub_100935C08();
      v72 = v117;
      if (v71 < v117)
      {
        v72 = v71;
      }

      v73 = (v72 + v69);
      if (v69)
      {
        v41 = v73;
      }

      else
      {
        v41 = 0;
      }

      v42 = v69;
    }

    else
    {
      v121[0] = *v37;
      LOWORD(v121[1]) = v39;
      BYTE2(v121[1]) = BYTE2(v39);
      BYTE3(v121[1]) = BYTE3(v39);
      BYTE4(v121[1]) = BYTE4(v39);
      BYTE5(v121[1]) = BYTE5(v39);
      v41 = v121 + BYTE6(v39);
      v42 = v121;
    }

    sub_1007174E8(v42, v41, &v122);
    goto LABEL_65;
  }

  *a3 = v14;
LABEL_5:
  sub_100706B30(&qword_100CB9E48);

  swift_storeEnumTagMultiPayload();
}

uint64_t sub_10089BACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v5 = __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v31 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v31 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v21 = a2 + 56;
  v32 = v20;
  v33 = &v31 - v12;
  v34 = v13;
  v35 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v36 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(v13 + 72);
      sub_10089C648(*(a1 + 48) + v25 * (v22 | (v15 << 6)), v14, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_10089C7E8(v14, v10, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_10089C9E4(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v26 = sub_100936AC8();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v29 = ~v27;
      while (1)
      {
        sub_10089C648(*(a2 + 48) + v28 * v25, v7, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_10089C9E4(&qword_100CB2D88, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v30 = sub_100936B18();
        sub_10089C6B0(v7, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        if (v30)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_10089C6B0(v10, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v13 = v34;
      a1 = v35;
      v20 = v32;
      v14 = v33;
      v19 = v36;
      if (!v36)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_10089C6B0(v10, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v31 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v36 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10089BE50()
{
  sub_100937668();
  sub_100719EB8();
  sub_100936AD8();
  sub_10089C3C4(v3, *(v0 + 8));
  v1 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10089C9E4(&qword_100CB2EA8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  sub_100936AD8();
  sub_1009376A8(*(v0 + *(v1 + 28)));
  sub_1009376A8(*(v0 + *(v1 + 32)));
  return sub_1009376C8();
}

uint64_t sub_10089BF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 4) = BYTE4(a1);
  *(a6 + 8) = a2;
  v10 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  result = sub_10089C7E8(a3, a6 + v10[6], type metadata accessor for IDSGroupEncryptionPublicIdentity);
  *(a6 + v10[7]) = a4;
  *(a6 + v10[8]) = a5;
  return result;
}

void sub_10089BFE8(__int128 *a1, uint64_t a2)
{
  sub_100719EB8();
  sub_100936AD8();
  sub_10089C3C4(a1, *(v2 + 8));
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10089C9E4(&qword_100CB2EA8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  sub_100936AD8();
  sub_1009376A8(*(v2 + *(a2 + 28)));
  sub_1009376A8(*(v2 + *(a2 + 32)));
}

Swift::Int sub_10089C0D4(uint64_t a1, uint64_t a2)
{
  sub_100937668();
  sub_100719EB8();
  sub_100936AD8();
  sub_10089C3C4(v5, *(v2 + 8));
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_10089C9E4(&qword_100CB2EA8, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  sub_100936AD8();
  sub_1009376A8(*(v2 + *(a2 + 28)));
  sub_1009376A8(*(v2 + *(a2 + 32)));
  return sub_1009376C8();
}

size_t sub_10089C1CC(size_t a1, int64_t a2, char a3)
{
  result = sub_10089C1EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10089C1EC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(&qword_100CB81E0);
  v10 = *(sub_1009360A8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1009360A8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_10089C3C4(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v18[0] = *(v4 - 8);
  v18[1] = v4;
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v21 = a1[2];
  v22 = v7;
  v23 = *(a1 + 8);
  v8 = a1[1];
  v19 = *a1;
  v20 = v8;
  sub_1009376C8();
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  for (i = 0; v11; v13 ^= v17)
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_10089C648(*(a2 + 48) + *(v18[0] + 72) * (v16 | (v15 << 6)), v6, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_10089C9E4(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v17 = sub_100936AC8();
    sub_10089C6B0(v6, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      sub_100937678(v13);
      return;
    }

    v11 = *(a2 + 56 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10089C5E0(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB9E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10089C648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10089C6B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_10089C710(uint64_t a1, uint64_t a2)
{
  sub_100719E64();
  if (sub_100936B18() & 1) != 0 && (sub_10089BACC(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (v4 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(), (sub_10089CB54(a1 + v4[6], a2 + v4[6])) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10089C7E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10089C850(uint64_t a1)
{
  result = sub_10089C9E4(&qword_100CB6080, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  *(a1 + 8) = result;
  return result;
}

void sub_10089C918()
{
  sub_10084C8F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IDSGroupEncryptionPublicIdentity(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10089C9BC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10089C9E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10089CA2C(uint64_t a1)
{
  if ((a1 + 1) < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 3;
  }
}

Swift::Int sub_10089CA4C()
{
  v1 = *v0;
  sub_100937668();
  sub_100937678(v1 - 1);
  return sub_1009376C8();
}

Swift::Int sub_10089CAC4()
{
  v1 = *v0;
  sub_100937668();
  sub_100937678(v1 - 1);
  return sub_1009376C8();
}

void *sub_10089CB08@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if ((*result + 1) < 3)
  {
    v2 = *result + 1;
  }

  else
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10089CB58()
{
  sub_1009376D8();
  v1 = *v0;
  if (*v0)
  {
    sub_100937688(1u);
    v2 = v1;
    sub_100937048();
  }

  else
  {
    sub_100937688(0);
    v2 = 0;
  }

  sub_100937048();
  v3 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_100936008();
  sub_100937678(*(v0 + *(v3 + 32)) - 1);
  sub_1009376B8();
  sub_100937248(23);

  v8._countAndFlagsBits = sub_100937548();
  sub_100936C08(v8);

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  sub_100936C08(v9);
  v4 = v2;
  sub_100706B30(&qword_100CB36D8);
  v10._countAndFlagsBits = sub_100936B88();
  sub_100936C08(v10);

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  sub_100936C08(v11);
  v5 = *(v0 + *(v3 + 28));
  type metadata accessor for SecKey();
  v6 = v5;
  v12._countAndFlagsBits = sub_100936B88();
  sub_100936C08(v12);

  return 0x644963696C627550;
}

uint64_t sub_10089CD2C()
{
  v6 = 0;
  v1 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v2 = SecKeyCopyExternalRepresentation(*(v0 + *(v1 + 28)), &v6);
  if (v6)
  {
  }

  if (!v2)
  {
    return 0;
  }

  if (v6)
  {

    return 0;
  }

  v4 = v2;
  v5 = sub_100935EA8();

  return v5;
}

uint64_t sub_10089CDF8()
{
  v0 = sub_100936038();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100935FF8();
  type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v4 = sub_100935F68();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_10089CED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v11 = v10[6];
  v12 = sub_100936038();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  *&a6[v10[7]] = a4;
  a6[v10[8]] = a5;
  return result;
}

id sub_10089CF74()
{
  v1 = v0;
  v2 = [objc_allocWithZone(IDSRealTimeEncryptionIdentity) init];
  [v2 setPushToken:*(v0 + 8)];
  v3 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  [v2 setPublicIdentity:*(v0 + *(v3 + 28))];
  v4 = sub_10089CD2C();
  isa = 0;
  if (v5 >> 60 != 15)
  {
    v7 = v4;
    v8 = v5;
    isa = sub_100935E78().super.isa;
    sub_10001C370(v7, v8);
  }

  [v2 setPublicIdentityData:isa];

  [v2 setWrapMode:*(v1 + *(v3 + 32)) == 2];
  v9 = sub_100935F58().super.isa;
  [v2 setExpirationDate:v9];

  if (*v1)
  {
    v10 = [*v1 prefixedURI];
    if (!v10)
    {
      sub_100936B38();
      v10 = sub_100936B28();
    }
  }

  else
  {
    v10 = 0;
  }

  [v2 setFromID:v10];

  return v2;
}

Swift::Int sub_10089D0E4(uint64_t a1)
{
  v3 = v1;
  sub_100937668();
  v4 = *v1;
  if (*v1)
  {
    sub_100937688(1u);
    v5 = v4;
    sub_100937048();
  }

  else
  {
    sub_100937688(0);
  }

  sub_100937048();
  sub_100936008();
  sub_100937678(*(v3 + *(a1 + 32)) - 1);
  return sub_1009376C8();
}

void sub_10089D194(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  if (*v2)
  {
    sub_100937688(1u);
    v6 = v5;
    sub_100937048();
  }

  else
  {
    sub_100937688(0);
  }

  sub_100937048();
  sub_100936008();
  sub_100937678(*(v4 + *(a2 + 32)) - 1);
}

Swift::Int sub_10089D234(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_100937668();
  v5 = *v2;
  if (*v2)
  {
    sub_100937688(1u);
    v6 = v5;
    sub_100937048();
  }

  else
  {
    sub_100937688(0);
  }

  sub_100937048();
  sub_100936008();
  sub_100937678(*(v4 + *(a2 + 32)) - 1);
  return sub_1009376C8();
}

id sub_10089D2E8()
{
  v1 = sub_10089CF74();
  [v1 setFullIdentity:*(v0 + *(type metadata accessor for IDSGroupEncryptionFullIdentity(0) + 20))];
  return v1;
}

uint64_t sub_10089D330()
{
  sub_100937248(24);
  v1._countAndFlagsBits = 0x797469746E656449;
  v1._object = 0xE900000000000020;
  sub_100936C08(v1);
  type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  type metadata accessor for SecKey();
  sub_1009372E8();
  v2._countAndFlagsBits = 0x63696C6275702820;
  v2._object = 0xEA0000000000203ALL;
  sub_100936C08(v2);
  v3._countAndFlagsBits = sub_10089CB58();
  sub_100936C08(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  sub_100936C08(v4);
  return 0;
}

uint64_t sub_10089D420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1007DFC7C(a1, a3);
  result = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_10089D460()
{
  swift_getWitnessTable();

  return sub_100936368();
}

Swift::Int sub_10089D570()
{
  sub_100937668();
  swift_getWitnessTable();
  sub_100936378();
  return sub_1009376C8();
}

id sub_10089D5D8(void **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (!v5 || ([v4 isEqualToURI:?] & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = [a1[1] isEqualToPushToken:a2[1]];
  if (!result)
  {
    return result;
  }

  v7 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  sub_100936038();
  sub_10089DB44(&qword_100CBA010, &type metadata accessor for Date);
  if (sub_100936B18())
  {
    type metadata accessor for SecKey();
    sub_10089DB44(&qword_100CBA018, type metadata accessor for SecKey);
    if (sub_100936368())
    {
      return (*(a1 + *(v7 + 32)) == *(a2 + *(v7 + 32)));
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for IDSGroupEncryptionPublicIdentityWrapMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IDSGroupEncryptionPublicIdentityWrapMode(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_10089D91C()
{
  sub_10089D9E8();
  if (v0 <= 0x3F)
  {
    sub_100014170(319, &qword_100CB34A0);
    if (v1 <= 0x3F)
    {
      sub_100936038();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SecKey();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10089D9E8()
{
  if (!qword_100CB9F40)
  {
    sub_100014170(255, &qword_100CBA2E0);
    v0 = sub_100937058();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB9F40);
    }
  }
}

void sub_10089DA78()
{
  type metadata accessor for IDSGroupEncryptionPublicIdentity(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SecKey();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10089DB44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10089DBD4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0xD000000000000013;
}

uint64_t sub_10089DC2C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = "MessagesUpToDateTime";
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = "MessagesUpToDateTime";
  }

  else
  {
    v6 = "E2ESendTimeSender";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "idsdIncomingBroadcast";
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000013;
    v4 = "E2ESendTimeSender";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "idsdIncomingBroadcast";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100937598();
  }

  return v11 & 1;
}

Swift::Int sub_10089DD04()
{
  sub_100937668();
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_10089DDA0()
{
  sub_100936BC8();
}

Swift::Int sub_10089DE28()
{
  sub_100937668();
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_10089DEC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008A1AF0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10089DEF0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "MessagesUpToDateTime";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000013;
    v3 = "E2ESendTimeSender";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000014;
    v4 = "idsdIncomingBroadcast";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_10089DF4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v4 = "E2ESendTimeReceiver";
  }

  else
  {
    v4 = "server160ReceivedTimeMs";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001ELL;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (*a2)
  {
    v7 = "server160ReceivedTimeMs";
  }

  else
  {
    v7 = "E2ESendTimeReceiver";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100937598();
  }

  return v9 & 1;
}

Swift::Int sub_10089DFF8()
{
  sub_100937668();
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_10089E078()
{
  sub_100936BC8();
}

Swift::Int sub_10089E0E4()
{
  sub_100937668();
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_10089E160@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100BEA230;
  v8._object = v3;
  v5 = sub_100937458(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10089E1C0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001ELL;
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (*v1)
  {
    v3 = "server160ReceivedTimeMs";
  }

  else
  {
    v3 = "E2ESendTimeReceiver";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_10089E200@<X0>(uint64_t a1@<X8>)
{
  result = sub_1008A1B3C(&_swiftEmptyArrayStorage);
  *a1 = 1;
  *(a1 + 8) = 0xD000000000000014;
  *(a1 + 16) = 0x8000000100B05860;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10089E260()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_10089E290()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_10089E2C0(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

unint64_t sub_10089E320(char a1)
{
  result = 0x676E696C706D6173;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0x756F437972746572;
      break;
    case 4:
    case 7:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x52746E6567616D69;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0x48746E6567616D69;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_10089E540@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008A2144(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10089E570@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10089E320(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10089E59C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v83 = a2;
  v3 = sub_1009362D8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v91 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v87 = (&v82 - v8);
  v9 = __chkstk_darwin(v7);
  v85 = &v82 - v10;
  v11 = __chkstk_darwin(v9);
  v84 = (&v82 - v12);
  v13 = __chkstk_darwin(v11);
  v96 = &v82 - v14;
  __chkstk_darwin(v13);
  v90 = (&v82 - v15);
  sub_1008A1D24(&_swiftEmptyArrayStorage);

  v16 = sub_1008A1D24(&_swiftEmptyArrayStorage);
  v17 = 0;
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v86 = enum case for EventValue.string(_:);
  v93 = (v4 + 104);
  v98 = (v4 + 32);
  v94 = v4;
  v88 = v4 + 40;
  v89 = enum case for EventValue.int(_:);
  v92 = a1;
  v95 = v3;
  while (v21)
  {
    v23 = v17;
LABEL_15:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = v26 | (v23 << 6);
    v28 = (*(a1 + 48) + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    sub_100012914(*(a1 + 56) + 32 * v27, v100);
    *&v101 = v30;
    *(&v101 + 1) = v29;
    sub_100308C74(v100, &v102);

LABEL_16:
    v104 = v101;
    v105[0] = v102;
    v105[1] = v103;
    v31 = *(&v101 + 1);
    if (!*(&v101 + 1))
    {

      v81 = v83;
      *v83 = 1;
      v81[1] = 0xD000000000000011;
      v81[2] = 0x8000000100B05880;
      v81[4] = 0;
      v81[5] = 0;
      v81[3] = v16;
      return result;
    }

    v32 = v104;
    sub_100308C74(v105, &v101);
    v33 = sub_1008A2144(v32, v31);
    if (v33 == 15)
    {
      goto LABEL_4;
    }

    v34 = v33;
    sub_100012914(&v101, v100);
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v97 = v99;
      if (v34 > 3u || v34 == 2)
      {
        [v99 doubleValue];
        v63 = v84;
        sub_1007C2F4C(v84, v64);
        v65 = *v98;
        (*v98)(v85, v63, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v100[0] = v16;
        v67 = sub_1008A031C(v34, sub_10089E320, sub_1008A03B8);
        v69 = v16[2];
        v70 = (v68 & 1) == 0;
        v57 = __OFADD__(v69, v70);
        v71 = v69 + v70;
        if (v57)
        {
          goto LABEL_62;
        }

        v72 = v68;
        if (v16[3] >= v71)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v79 = v67;
            sub_1008A1888(&qword_100CBA178);
            v67 = v79;
          }
        }

        else
        {
          sub_1008A0CE8(v71, isUniquelyReferenced_nonNull_native);
          v67 = sub_1008A031C(v34, sub_10089E320, sub_1008A03B8);
          if ((v72 & 1) != (v73 & 1))
          {
            goto LABEL_65;
          }
        }

        v3 = v95;
        v16 = *&v100[0];
        if (v72)
        {
          (*(v94 + 40))(*(*&v100[0] + 56) + *(v94 + 72) * v67, v85, v95);
        }

        else
        {
          *(*&v100[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
          *(v16[6] + v67) = v34;
          v65((v16[7] + *(v94 + 72) * v67), v85, v3);
          v76 = v16[2];
          v57 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v57)
          {
            goto LABEL_64;
          }

          v16[2] = v77;
        }

        sub_100012970(&v101);
      }

      else
      {
        v35 = [v99 longLongValue];
        v36 = v90;
        *v90 = v35;
        (*v93)(v36, v89, v3);
        v37 = *v98;
        (*v98)(v96, v36, v3);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *&v100[0] = v16;
        v40 = sub_1008A031C(v34, sub_10089E320, sub_1008A03B8);
        v41 = v16[2];
        v42 = (v39 & 1) == 0;
        v43 = v41 + v42;
        if (__OFADD__(v41, v42))
        {
          goto LABEL_59;
        }

        v44 = v39;
        if (v16[3] >= v43)
        {
          if ((v38 & 1) == 0)
          {
            sub_1008A1888(&qword_100CBA178);
          }
        }

        else
        {
          sub_1008A0CE8(v43, v38);
          v45 = sub_1008A031C(v34, sub_10089E320, sub_1008A03B8);
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_65;
          }

          v40 = v45;
        }

        v3 = v95;
        v16 = *&v100[0];
        if (v44)
        {
          (*(v94 + 40))(*(*&v100[0] + 56) + *(v94 + 72) * v40, v96, v95);
        }

        else
        {
          *(*&v100[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
          *(v16[6] + v40) = v34;
          v37((v16[7] + *(v94 + 72) * v40), v96, v3);
          v61 = v16[2];
          v57 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v57)
          {
            goto LABEL_61;
          }

          v16[2] = v62;
        }

LABEL_49:
        sub_100012970(&v101);
        a1 = v92;
      }
    }

    else
    {
      sub_100012914(&v101, v100);
      sub_100014170(0, &qword_100CBA020);
      if (swift_dynamicCast())
      {
        v47 = v99;
        v48 = sub_100936B38();
        v49 = v87;
        *v87 = v48;
        v49[1] = v50;
        (*v93)(v49, v86, v3);
        v51 = *v98;
        (*v98)(v91, v49, v3);
        v52 = swift_isUniquelyReferenced_nonNull_native();
        *&v100[0] = v16;
        v53 = sub_1008A031C(v34, sub_10089E320, sub_1008A03B8);
        v55 = v16[2];
        v56 = (v54 & 1) == 0;
        v57 = __OFADD__(v55, v56);
        v58 = v55 + v56;
        if (v57)
        {
          goto LABEL_60;
        }

        v59 = v54;
        if (v16[3] >= v58)
        {
          if ((v52 & 1) == 0)
          {
            v78 = v53;
            sub_1008A1888(&qword_100CBA178);
            v53 = v78;
          }
        }

        else
        {
          sub_1008A0CE8(v58, v52);
          v53 = sub_1008A031C(v34, sub_10089E320, sub_1008A03B8);
          if ((v59 & 1) != (v60 & 1))
          {
            goto LABEL_65;
          }
        }

        v3 = v95;
        v16 = *&v100[0];
        if (v59)
        {
          (*(v94 + 40))(*(*&v100[0] + 56) + *(v94 + 72) * v53, v91, v95);
        }

        else
        {
          *(*&v100[0] + 8 * (v53 >> 6) + 64) |= 1 << v53;
          *(v16[6] + v53) = v34;
          v51((v16[7] + *(v94 + 72) * v53), v91, v3);
          v74 = v16[2];
          v57 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v57)
          {
            goto LABEL_63;
          }

          v16[2] = v75;
        }

        goto LABEL_49;
      }

LABEL_4:
      sub_100012970(&v101);
    }
  }

  if (v22 <= v17 + 1)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      v21 = 0;
      v102 = 0u;
      v103 = 0u;
      v17 = v25;
      v101 = 0u;
      goto LABEL_16;
    }

    v21 = *(v18 + 8 * v23);
    ++v17;
    if (v21)
    {
      v17 = v23;
      goto LABEL_15;
    }
  }

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
  __break(1u);
LABEL_65:
  result = sub_1009375D8();
  __break(1u);
  return result;
}

unint64_t sub_10089EFD4(char a1)
{
  result = 0x654474756F6E6166;
  switch(a1)
  {
    case 1:
      result = 0x676E696C706D6173;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
    case 7:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 8:
    case 11:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x49746E6567616D69;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0x4E746E6567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10089F1A0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_100937598();
  }

  return v12 & 1;
}

Swift::Int sub_10089F24C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_100937668();
  a3(v5);
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_10089F2D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_100936BC8();
}

Swift::Int sub_10089F340(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_100937668();
  a4(v6);
  sub_100936BC8();

  return sub_1009376C8();
}

uint64_t sub_10089F3A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008A2190(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10089F3D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10089EFD4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10089F404@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v84 = a2;
  v99 = sub_1009362D8();
  v3 = *(v99 - 8);
  v4 = __chkstk_darwin(v99);
  v93 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v88 = (&v83 - v7);
  v8 = __chkstk_darwin(v6);
  v95 = &v83 - v9;
  v10 = __chkstk_darwin(v8);
  v89 = (&v83 - v11);
  v12 = __chkstk_darwin(v10);
  v91 = &v83 - v13;
  __chkstk_darwin(v12);
  v86 = (&v83 - v14);
  sub_1008A1F34(&_swiftEmptyArrayStorage);

  v15 = sub_1008A1F34(&_swiftEmptyArrayStorage);
  v16 = 0;
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v87 = enum case for EventValue.string(_:);
  v92 = (v3 + 104);
  v98 = (v3 + 32);
  v96 = v3;
  v90 = v3 + 40;
  v85 = enum case for EventValue.int(_:);
  v94 = a1;
  while (v20)
  {
    v22 = v16;
LABEL_15:
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = v25 | (v22 << 6);
    v27 = (*(a1 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    sub_100012914(*(a1 + 56) + 32 * v26, v101);
    *&v102 = v29;
    *(&v102 + 1) = v28;
    sub_100308C74(v101, &v103);

LABEL_16:
    v105 = v102;
    v106[0] = v103;
    v106[1] = v104;
    v30 = *(&v102 + 1);
    if (!*(&v102 + 1))
    {

      v82 = v84;
      *v84 = 1;
      v82[1] = 0xD000000000000013;
      v82[2] = 0x8000000100B058A0;
      v82[4] = 0;
      v82[5] = 0;
      v82[3] = v15;
      return result;
    }

    v31 = v105;
    sub_100308C74(v106, &v102);
    v32 = sub_1008A2190(v31, v30);
    if (v32 == 14)
    {
LABEL_4:
      sub_100012970(&v102);
    }

    else
    {
      v33 = v32;
      sub_100012914(&v102, v101);
      sub_100014170(0, &unk_100CBA300);
      if (swift_dynamicCast())
      {
        v97 = v100;
        if (v33)
        {
          [v100 doubleValue];
          v34 = v89;
          sub_1007C2F4C(v89, v35);
          v36 = *v98;
          (*v98)(v95, v34, v99);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v101[0] = v15;
          v39 = sub_1008A031C(v33, sub_10089EFD4, sub_1008A0828);
          v40 = v15[2];
          v41 = (v38 & 1) == 0;
          v42 = v40 + v41;
          if (__OFADD__(v40, v41))
          {
            goto LABEL_58;
          }

          v43 = v38;
          if (v15[3] >= v42)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v15 = *&v101[0];
              if (v38)
              {
                goto LABEL_37;
              }
            }

            else
            {
              sub_1008A1888(&qword_100CBA168);
              v15 = *&v101[0];
              if (v43)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
            sub_1008A12C8(v42, isUniquelyReferenced_nonNull_native);
            v44 = sub_1008A031C(v33, sub_10089EFD4, sub_1008A0828);
            if ((v43 & 1) != (v45 & 1))
            {
              goto LABEL_64;
            }

            v39 = v44;
            v15 = *&v101[0];
            if (v43)
            {
LABEL_37:
              (*(v96 + 40))(v15[7] + *(v96 + 72) * v39, v95, v99);
              goto LABEL_51;
            }
          }

          v15[(v39 >> 6) + 8] |= 1 << v39;
          *(v15[6] + v39) = v33;
          v36((v15[7] + *(v96 + 72) * v39), v95, v99);
          v75 = v15[2];
          v57 = __OFADD__(v75, 1);
          v76 = v75 + 1;
          if (v57)
          {
            goto LABEL_61;
          }

          v15[2] = v76;
LABEL_51:

          sub_100012970(&v102);
          a1 = v94;
        }

        else
        {
          v61 = [v100 longLongValue];
          v62 = v86;
          *v86 = v61;
          v63 = v99;
          (*v92)(v62, v85, v99);
          v64 = *v98;
          (*v98)(v91, v62, v63);
          v65 = swift_isUniquelyReferenced_nonNull_native();
          *&v101[0] = v15;
          v66 = sub_1008A031C(0, sub_10089EFD4, sub_1008A0828);
          v68 = v15[2];
          v69 = (v67 & 1) == 0;
          v57 = __OFADD__(v68, v69);
          v70 = v68 + v69;
          if (v57)
          {
            goto LABEL_60;
          }

          v71 = v67;
          if (v15[3] < v70)
          {
            sub_1008A12C8(v70, v65);
            v66 = sub_1008A031C(0, sub_10089EFD4, sub_1008A0828);
            if ((v71 & 1) != (v72 & 1))
            {
              goto LABEL_64;
            }

LABEL_46:
            v15 = *&v101[0];
            if (v71)
            {
              goto LABEL_47;
            }

            goto LABEL_53;
          }

          if (v65)
          {
            goto LABEL_46;
          }

          v78 = v66;
          sub_1008A1888(&qword_100CBA168);
          v66 = v78;
          v15 = *&v101[0];
          if (v71)
          {
LABEL_47:
            (*(v96 + 40))(v15[7] + *(v96 + 72) * v66, v91, v99);
            goto LABEL_55;
          }

LABEL_53:
          v15[(v66 >> 6) + 8] |= 1 << v66;
          *(v15[6] + v66) = 0;
          v64((v15[7] + *(v96 + 72) * v66), v91, v99);
          v79 = v15[2];
          v57 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v57)
          {
            goto LABEL_63;
          }

          v15[2] = v80;
LABEL_55:

          sub_100012970(&v102);
        }
      }

      else
      {
        sub_100012914(&v102, v101);
        sub_100014170(0, &qword_100CBA020);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_4;
        }

        v46 = v100;
        v47 = sub_100936B38();
        v48 = v88;
        *v88 = v47;
        v48[1] = v49;
        v50 = v99;
        (*v92)(v48, v87, v99);
        v51 = *v98;
        (*v98)(v93, v48, v50);
        v52 = swift_isUniquelyReferenced_nonNull_native();
        *&v101[0] = v15;
        v53 = sub_1008A031C(v33, sub_10089EFD4, sub_1008A0828);
        v55 = v15[2];
        v56 = (v54 & 1) == 0;
        v57 = __OFADD__(v55, v56);
        v58 = v55 + v56;
        if (v57)
        {
          goto LABEL_59;
        }

        v59 = v54;
        if (v15[3] >= v58)
        {
          if ((v52 & 1) == 0)
          {
            v77 = v53;
            sub_1008A1888(&qword_100CBA168);
            v53 = v77;
          }
        }

        else
        {
          sub_1008A12C8(v58, v52);
          v53 = sub_1008A031C(v33, sub_10089EFD4, sub_1008A0828);
          if ((v59 & 1) != (v60 & 1))
          {
            goto LABEL_64;
          }
        }

        v15 = *&v101[0];
        if (v59)
        {
          (*(v96 + 40))(*(*&v101[0] + 56) + *(v96 + 72) * v53, v93, v99);
        }

        else
        {
          *(*&v101[0] + 8 * (v53 >> 6) + 64) |= 1 << v53;
          *(v15[6] + v53) = v33;
          v51((v15[7] + *(v96 + 72) * v53), v93, v99);
          v73 = v15[2];
          v57 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v57)
          {
            goto LABEL_62;
          }

          v15[2] = v74;
        }

        sub_100012970(&v102);
        a1 = v94;
      }
    }
  }

  if (v21 <= v16 + 1)
  {
    v23 = v16 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      v20 = 0;
      v103 = 0u;
      v104 = 0u;
      v16 = v24;
      v102 = 0u;
      goto LABEL_16;
    }

    v20 = *(v17 + 8 * v22);
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_15;
    }
  }

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
  result = sub_1009375D8();
  __break(1u);
  return result;
}

id sub_1008A02E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSCloudTelemetryMetricKeys();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1008A031C(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  sub_100937668();
  a2(a1);
  sub_100936BC8();

  v5 = sub_1009376C8();

  return a3(a1, v5);
}

unint64_t sub_1008A03B8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000004449;
      v8 = 0x676E696C706D6173;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100B05660;
          break;
        case 2:
          break;
        case 3:
          v8 = 0x756F437972746572;
          v7 = 0xEA0000000000746ELL;
          break;
        case 4:
          v8 = 0xD000000000000014;
          v7 = 0x8000000100B05680;
          break;
        case 5:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100B056A0;
          break;
        case 6:
          v8 = 0xD000000000000016;
          v7 = 0x8000000100B056C0;
          break;
        case 7:
          v8 = 0xD000000000000014;
          v7 = 0x8000000100B056E0;
          break;
        case 8:
          v8 = 0xD000000000000018;
          v7 = 0x8000000100B05700;
          break;
        case 9:
          v8 = 0xD000000000000016;
          v7 = 0x8000000100B05720;
          break;
        case 0xA:
          v8 = 0xD000000000000017;
          v7 = 0x8000000100B05740;
          break;
        case 0xB:
          v8 = 0xD000000000000017;
          v7 = 0x8000000100B05760;
          break;
        case 0xC:
          v8 = 0x52746E6567616D69;
          v7 = 0xEE00657669656365;
          break;
        case 0xD:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000100B05930;
          break;
        case 0xE:
          v8 = 0x48746E6567616D69;
          v7 = 0xEE0066666F646E61;
          break;
        default:
          v8 = 0xD000000000000016;
          v7 = 0x8000000100B05640;
          break;
      }

      v9 = 0x676E696C706D6173;
      v10 = 0xEA00000000004449;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000100B05660;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        case 2:
          goto LABEL_44;
        case 3:
          v10 = 0xEA0000000000746ELL;
          if (v8 != 0x756F437972746572)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 4:
          v10 = 0x8000000100B05680;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 5:
          v10 = 0x8000000100B056A0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 6:
          v10 = 0x8000000100B056C0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 7:
          v10 = 0x8000000100B056E0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 8:
          v10 = 0x8000000100B05700;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 9:
          v10 = 0x8000000100B05720;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 10:
          v9 = 0xD000000000000017;
          v10 = 0x8000000100B05740;
LABEL_44:
          if (v8 == v9)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        case 11:
          v10 = 0x8000000100B05760;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 12:
          v11 = 0x52746E6567616D69;
          v12 = 0x657669656365;
          goto LABEL_27;
        case 13:
          v10 = 0x8000000100B05930;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 14:
          v11 = 0x48746E6567616D69;
          v12 = 0x66666F646E61;
LABEL_27:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v11)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        default:
          v10 = 0x8000000100B05640;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_46;
          }

LABEL_45:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_46:
          v13 = sub_100937598();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1008A0828(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE00444965636976;
      v8 = 0x654474756F6E6166;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x676E696C706D6173;
          v7 = 0xEA00000000004449;
          break;
        case 2:
          v8 = 0xD000000000000014;
          v7 = 0x8000000100B05780;
          break;
        case 3:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100B057A0;
          break;
        case 4:
          v8 = 0xD000000000000016;
          v7 = 0x8000000100B057C0;
          break;
        case 5:
          v8 = 0xD000000000000014;
          v7 = 0x8000000100B057E0;
          break;
        case 6:
          v8 = 0xD000000000000018;
          v7 = 0x8000000100B05800;
          break;
        case 7:
          v8 = 0xD000000000000016;
          v7 = 0x8000000100B05820;
          break;
        case 8:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100B05840;
          break;
        case 9:
          v8 = 0x49746E6567616D69;
          v7 = 0xEF676E696D6F636ELL;
          break;
        case 0xA:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100B05980;
          break;
        case 0xB:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100B059A0;
          break;
        case 0xC:
          v8 = 0xD000000000000019;
          v7 = 0x8000000100B059C0;
          break;
        case 0xD:
          v8 = 0x4E746E6567616D69;
          v7 = 0xED0000796669746FLL;
          break;
        default:
          break;
      }

      v9 = 0x654474756F6E6166;
      v10 = 0xEE00444965636976;
      switch(a1)
      {
        case 1:
          v10 = 0xEA00000000004449;
          if (v8 == 0x676E696C706D6173)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v10 = 0x8000000100B05780;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 3:
          v10 = 0x8000000100B057A0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v10 = 0x8000000100B057C0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v10 = 0x8000000100B057E0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          v10 = 0x8000000100B05800;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v10 = 0x8000000100B05820;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v10 = 0x8000000100B05840;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v10 = 0xEF676E696D6F636ELL;
          if (v8 != 0x49746E6567616D69)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v9 = 0xD000000000000010;
          v10 = 0x8000000100B05980;
          goto LABEL_41;
        case 11:
          v10 = 0x8000000100B059A0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v10 = 0x8000000100B059C0;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v10 = 0xED0000796669746FLL;
          if (v8 != 0x4E746E6567616D69)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v9)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_43:
          v11 = sub_100937598();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t sub_1008A0CE8(uint64_t a1, int a2)
{
  v3 = v2;
  v40 = sub_1009362D8();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100706B30(&qword_100CBA178);
  v37 = a2;
  result = sub_100937418();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v38 = (v5 + 32);
    v33[9] = 0x8000000100B05760;
    v33[10] = 0x8000000100B05930;
    v33[7] = 0x8000000100B05720;
    v33[8] = 0x8000000100B05740;
    v33[6] = 0x8000000100B05700;
    v33[5] = 0x8000000100B056E0;
    v33[4] = 0x8000000100B056C0;
    v33[3] = 0x8000000100B056A0;
    v33[2] = 0x8000000100B05680;
    v33[1] = 0x8000000100B05660;
    v33[0] = 0x8000000100B05640;
    v16 = result + 64;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v24 = v21 | (v10 << 6);
      v25 = *(*(v7 + 48) + v24);
      v26 = *(v36 + 72);
      v27 = *(v7 + 56) + v26 * v24;
      if (v37)
      {
        (*v38)(v39, v27, v40);
      }

      else
      {
        (*v35)(v39, v27, v40);
      }

      sub_100937668();
      sub_100936BC8();

      result = sub_1009376C8();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v17) >> 6;
        while (++v19 != v29 || (v28 & 1) == 0)
        {
          v30 = v19 == v29;
          if (v19 == v29)
          {
            v19 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v19);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v19 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v9 + 48) + v20) = v25;
      result = (*v38)(*(v9 + 56) + v26 * v20, v39, v40);
      ++*(v9 + 16);
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}

uint64_t sub_1008A12C8(uint64_t a1, int a2)
{
  v3 = v2;
  v40 = sub_1009362D8();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100706B30(&qword_100CBA168);
  v37 = a2;
  result = sub_100937418();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v38 = (v5 + 32);
    v33[9] = 0x8000000100B059A0;
    v33[10] = 0x8000000100B059C0;
    v33[7] = 0x8000000100B05840;
    v33[8] = 0x8000000100B05980;
    v33[6] = 0x8000000100B05820;
    v33[5] = 0x8000000100B05800;
    v33[4] = 0x8000000100B057E0;
    v33[3] = 0x8000000100B057C0;
    v33[2] = 0x8000000100B057A0;
    v33[1] = 0x8000000100B05780;
    v16 = result + 64;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v24 = v21 | (v10 << 6);
      v25 = *(*(v7 + 48) + v24);
      v26 = *(v36 + 72);
      v27 = *(v7 + 56) + v26 * v24;
      if (v37)
      {
        (*v38)(v39, v27, v40);
      }

      else
      {
        (*v35)(v39, v27, v40);
      }

      sub_100937668();
      sub_100936BC8();

      result = sub_1009376C8();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v17) >> 6;
        while (++v19 != v29 || (v28 & 1) == 0)
        {
          v30 = v19 == v29;
          if (v19 == v29)
          {
            v19 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v19);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v19 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v9 + 48) + v20) = v25;
      result = (*v38)(*(v9 + 56) + v26 * v20, v39, v40);
      ++*(v9 + 16);
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}

void *sub_1008A1888(uint64_t *a1)
{
  v3 = v1;
  v29 = sub_1009362D8();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(a1);
  v5 = *v1;
  v6 = sub_100937408();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27[0] = v3;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v27[1] = v31 + 32;
    v27[2] = v31 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v32 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = v31;
        v23 = *(v31 + 72) * v20;
        v25 = v28;
        v24 = v29;
        (*(v31 + 16))(v28, *(v5 + 56) + v23, v29);
        v26 = v30;
        *(*(v30 + 48) + v20) = v21;
        result = (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
        v15 = v32;
      }

      while (v32);
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

        v3 = v27[0];
        v7 = v30;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v32 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

uint64_t sub_1008A1AF0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100BEA1C8;
  v6._object = a2;
  v4 = sub_100937458(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1008A1B3C(uint64_t a1)
{
  v2 = sub_100706B30(&unk_100CBA188);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100706B30(&qword_100CB6268);
    v7 = sub_100937438();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012D50(v9, v5, &unk_100CBA188);
      v11 = *v5;
      result = sub_1007C6F98(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1009362D8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1008A1D24(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CBA180);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100706B30(&qword_100CBA178);
    v7 = sub_100937438();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012D50(v9, v5, &qword_100CBA180);
      v11 = *v5;
      result = sub_1008A031C(*v5, sub_10089E320, sub_1008A03B8);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1009362D8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1008A1F34(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CBA170);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100706B30(&qword_100CBA168);
    v7 = sub_100937438();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012D50(v9, v5, &qword_100CBA170);
      v11 = *v5;
      result = sub_1008A031C(*v5, sub_10089EFD4, sub_1008A0828);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1009362D8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1008A2144(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100BEA280;
  v6._object = a2;
  v4 = sub_100937458(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1008A2190(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100BEA408;
  v6._object = a2;
  v4 = sub_100937458(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1008A2204()
{
  result = qword_100CBA028;
  if (!qword_100CBA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA028);
  }

  return result;
}

unint64_t sub_1008A2268()
{
  result = qword_100CBA080;
  if (!qword_100CBA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA080);
  }

  return result;
}

unint64_t sub_1008A22C0()
{
  result = qword_100CBA088;
  if (!qword_100CBA088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA088);
  }

  return result;
}

unint64_t sub_1008A231C()
{
  result = qword_100CBA0E0;
  if (!qword_100CBA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA0E0);
  }

  return result;
}

unint64_t sub_1008A2374()
{
  result = qword_100CBA0E8;
  if (!qword_100CBA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA0E8);
  }

  return result;
}

__n128 sub_1008A23DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for E2EOutgoingSendTimeMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for E2EOutgoingSendTimeMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1008A2578(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1008A25C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for E2EIncomingSendTimeMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for E2EIncomingSendTimeMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1008A2794()
{
  result = [objc_allocWithZone(type metadata accessor for RegistrationRequestTracker()) init];
  qword_100CD4160 = result;
  return result;
}

void sub_1008A28F0()
{
  v7 = &type metadata for FeaturesKey;
  v8 = sub_10079674C();
  v0 = sub_100936178();
  sub_100012970(v6);
  if (v0)
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = sub_1008A5A10;
    v9 = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1007846C8;
    v7 = &unk_100BEA978;
    v3 = _Block_copy(v6);

    v4 = sub_100936B28();
    [v1 registerDiagnosticInfoBlock:v3 title:v4 queue:0];

    _Block_release(v3);
  }

  else
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v1 = sub_100799D0C();
    registerSysdiagnoseBlock(title:queue:block:)(0xD000000000000018, 0x8000000100B05D20, v1, sub_1008A59EC, v5);
  }
}

void sub_1008A2AC4(void (*a1)(uint64_t, unint64_t), uint64_t a2)
{
  v69 = sub_1009360D8();
  v4 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_100936038();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for IDSRegistrationEventStruct();
  v12 = *(v67 - 8);
  __chkstk_darwin(v67);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a1(0, 0);
    return;
  }

  v16 = Strong;
  v17 = [objc_opt_self() sharedInstance];
  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = v17;
  v19 = [v17 persistenceManager];
  if (!v19)
  {

LABEL_22:
    a1(0, 0);

    return;
  }

  v52 = v18;
  v74 = 0;
  v75 = 0xE000000000000000;
  v51 = v19;
  v20 = sub_1008CD34C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = a1;
  v54 = a2;
  v53 = v16;
  v71 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1008A51E0(v20);
  }

  v22 = v20[2];
  v23 = v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v73._countAndFlagsBits = v23;
  v73._object = v22;
  sub_1008A411C(&v73);
  v24 = v20[2];
  if (v24)
  {
    v50 = v20;
    v63 = "v40@0:8@16q24Q32";
    v64 = "IDS-Registration_Tracker";
    v25 = *(v12 + 72);
    v61 = (v10 + 48);
    v62 = v25;
    v57 = (v10 + 32);
    v56 = (v10 + 8);
    v60 = (v71 + 8);
    v58 = "yyyy-MM-dd HH:mm:ss.SSSSxx";
    v65 = v9;
    v66 = v8;
    do
    {
      v71 = v24;
      sub_1008A58C8(v23, v14);
      v26 = v67;
      sub_10002155C(&v14[*(v67 + 24)], v8);
      if ((*v61)(v8, 1, v9) == 1)
      {
        sub_100021EA4(v8);
        object = 0xE700000000000000;
        countAndFlagsBits = 0x6E776F6E6B6E75;
        v28 = 0xE000000000000000;
      }

      else
      {
        v29 = v59;
        (*v57)(v59, v8, v9);
        v28 = 0xE000000000000000;
        v73._countAndFlagsBits = 0;
        v73._object = 0xE000000000000000;
        sub_100935F38();
        sub_100936DF8();
        object = v73._object;
        countAndFlagsBits = v73._countAndFlagsBits;
        (*v56)(v29, v9);
      }

      v30 = objc_allocWithZone(NSDateFormatter);
      v31 = [v30 init];
      v32 = v68;
      sub_1009360C8();
      isa = sub_1009360B8().super.isa;
      (*v60)(v32, v69);
      [v31 setLocale:isa];

      v34 = sub_100936B28();
      [v31 setDateFormat:v34];

      v35 = sub_100935F58().super.isa;
      v36 = [v31 stringFromDate:v35];

      v37 = sub_100936B38();
      v39 = v38;

      v73._countAndFlagsBits = 0;
      v73._object = 0xE000000000000000;
      sub_100937248(81);
      v76._object = (v64 | 0x8000000000000000);
      v76._countAndFlagsBits = 0xD000000000000014;
      sub_100936C08(v76);
      v41 = *(v14 + 1);
      v40 = *(v14 + 2);
      v77._countAndFlagsBits = v41;
      v77._object = v40;
      sub_100936C08(v77);
      v78._countAndFlagsBits = 0x3A656D6974207B20;
      v78._object = 0xE900000000000020;
      sub_100936C08(v78);
      v79._countAndFlagsBits = v37;
      v79._object = v39;
      sub_100936C08(v79);

      v80._countAndFlagsBits = 0x6C45656D6974202CLL;
      v80._object = 0xEF203A6465737061;
      sub_100936C08(v80);
      v81._countAndFlagsBits = countAndFlagsBits;
      v81._object = object;
      sub_100936C08(v81);

      v82._countAndFlagsBits = 0x746C75736572202CLL;
      v82._object = 0xEA0000000000203ALL;
      sub_100936C08(v82);
      v72 = *&v14[v26[8]];
      v83._countAndFlagsBits = sub_100937548();
      sub_100936C08(v83);

      v84._countAndFlagsBits = 0x6B6E756C7073202CLL;
      v84._object = 0xEE00203A746E6948;
      sub_100936C08(v84);
      v42 = &v14[v26[10]];
      v43 = v42[1];
      if (v43)
      {
        v44 = *v42;
      }

      else
      {
        v44 = 0;
      }

      if (v43)
      {
        v28 = v42[1];
      }

      v85._countAndFlagsBits = v44;
      v85._object = v28;
      sub_100936C08(v85);

      v86._countAndFlagsBits = 687392;
      v86._object = 0xE300000000000000;
      sub_100936C08(v86);
      sub_100936C08(v73);

      v45 = &v14[v26[11]];
      v46 = v45[1];
      if (v46)
      {
        v47 = *v45;
        v73._countAndFlagsBits = 0;
        v73._object = 0xE000000000000000;
        sub_100937248(27);

        v73._countAndFlagsBits = v41;
        v73._object = v40;
        v87._countAndFlagsBits = 0xD000000000000016;
        v87._object = (v58 | 0x8000000000000000);
        sub_100936C08(v87);
        v88._countAndFlagsBits = v47;
        v88._object = v46;
        sub_100936C08(v88);
        v89._countAndFlagsBits = 10;
        v89._object = 0xE100000000000000;
        sub_100936C08(v89);
        sub_100936C08(v73);
      }

      sub_1008A592C(v14);
      v23 += v62;
      v24 = v71 - 1;
      v9 = v65;
      v8 = v66;
    }

    while (v71 != 1);

    v48 = v74;
    v49 = v75;
  }

  else
  {

    v48 = 0;
    v49 = 0xE000000000000000;
  }

  v55(v48, v49);
}

void sub_1008A32D4()
{
  v98 = sub_1009360D8();
  v0 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v76 - v3;
  v5 = sub_100936038();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v88 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IDSRegistrationEventStruct();
  v9 = *(v8 - 1);
  v10 = __chkstk_darwin(v8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v76 - v14;
  v16 = __chkstk_darwin(v13);
  v101 = &v76 - v17;
  v18 = __chkstk_darwin(v16);
  v96 = &v76 - v19;
  __chkstk_darwin(v18);
  v21 = &v76 - v20;
  v80 = sub_1009364D8();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v102 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v81 = Strong;
  v24 = [objc_opt_self() sharedInstance];
  if (!v24)
  {
LABEL_25:

    return;
  }

  v25 = v24;
  v26 = [v24 persistenceManager];
  if (!v26)
  {

    goto LABEL_25;
  }

  v105 = v0;
  v77 = v25;
  v27 = v26;
  sub_1007C9ACC(13);
  v76 = v27;
  v78 = sub_1008CD34C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100 = v15;
  v29 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v78 = sub_1008A51E0(v78);
  }

  v30 = v78;
  v31 = v78[2];
  v32 = v78 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v106[0] = v32;
  v106[1] = v31;
  sub_1008A411C(v106);
  v34 = v30[2];
  if (v34)
  {
    v92 = "v40@0:8@16q24Q32";
    v91 = *(v9 + 72);
    v90 = (v29 + 48);
    v85 = (v29 + 32);
    v84 = (v29 + 8);
    v89 = (v105 + 8);
    *&v33 = 136316162;
    v83 = v33;
    *&v33 = 136315394;
    v82 = v33;
    v94 = v4;
    v93 = v5;
    v95 = v8;
    v87 = v12;
    v86 = v21;
    do
    {
      v103 = v34;
      sub_1008A58C8(v32, v21);
      v109 = 0x6E776F6E6B6E75;
      v110 = 0xE700000000000000;
      sub_10002155C(&v21[v8[6]], v4);
      v35 = (*v90)(v4, 1, v5);
      v104 = v32;
      if (v35 == 1)
      {
        sub_100021EA4(v4);
        v105 = 0xE700000000000000;
        v99 = 0x6E776F6E6B6E75;
      }

      else
      {
        v36 = v88;
        (*v85)(v88, v4, v5);
        v107 = 0;
        v108 = 0xE000000000000000;
        sub_100935F38();
        sub_100936DF8();
        v38 = v107;
        v37 = v108;
        (*v84)(v36, v5);
        swift_beginAccess();
        v99 = v38;
        v109 = v38;
        v110 = v37;
        v105 = v37;
      }

      v39 = v101;
      v40 = [objc_allocWithZone(NSDateFormatter) init];
      v41 = v97;
      sub_1009360C8();
      isa = sub_1009360B8().super.isa;
      (*v89)(v41, v98);
      [v40 setLocale:isa];

      v43 = sub_100936B28();
      [v40 setDateFormat:v43];

      v44 = sub_100935F58().super.isa;
      v45 = [v40 stringFromDate:v44];

      v46 = sub_100936B38();
      v48 = v47;

      v49 = v96;
      sub_1008A58C8(v21, v96);
      sub_1008A58C8(v21, v39);
      v50 = v100;
      sub_1008A58C8(v21, v100);

      v51 = sub_1009364B8();
      v52 = sub_100936F18();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *v53 = v83;
        v54 = *(v49 + 8);
        v55 = *(v49 + 16);

        sub_1008A592C(v49);
        v56 = sub_10001273C(v54, v55, &v107);
        v57 = v101;

        *(v53 + 4) = v56;
        *(v53 + 12) = 2080;
        v58 = sub_10001273C(v46, v48, &v107);

        *(v53 + 14) = v58;
        *(v53 + 22) = 2080;
        v59 = v105;

        v60 = sub_10001273C(v99, v59, &v107);

        *(v53 + 24) = v60;
        *(v53 + 32) = 2048;
        v61 = *(v57 + v8[8]);
        sub_1008A592C(v57);
        *(v53 + 34) = v61;
        v62 = v100;
        *(v53 + 42) = 2080;
        v63 = (v62 + v8[10]);
        if (v63[1])
        {
          v64 = *v63;
          v65 = v63[1];
        }

        else
        {
          v64 = 0;
          v65 = 0xE000000000000000;
        }

        sub_1008A592C(v62);
        v66 = sub_10001273C(v64, v65, &v107);

        *(v53 + 44) = v66;
        _os_log_impl(&_mh_execute_header, v51, v52, "Registration Event: %s { time: %s, timeElapsed: %s, result: %ld, splunkHint: %s }", v53, 0x34u);
        swift_arrayDestroy();

        v8 = v95;
        v12 = v87;
        v21 = v86;
      }

      else
      {
        sub_1008A592C(v39);

        sub_1008A592C(v50);
        sub_1008A592C(v49);
      }

      v67 = &v21[v8[11]];
      v68 = v67[1];
      if (v68)
      {
        v69 = *v67;
        sub_1008A58C8(v21, v12);

        v70 = sub_1009364B8();
        v71 = sub_100936F18();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          *v72 = v82;
          v73 = *(v12 + 1);
          v74 = *(v12 + 2);

          sub_1008A592C(v12);
          v75 = sub_10001273C(v73, v74, &v107);

          *(v72 + 4) = v75;
          *(v72 + 12) = 2080;
          *(v72 + 14) = sub_10001273C(v69, v68, &v107);
          _os_log_impl(&_mh_execute_header, v70, v71, "%s baa signing digest : %s", v72, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1008A592C(v12);
        }

        v8 = v95;
      }

      sub_1008A592C(v21);

      v32 = &v104[v91];
      v34 = v103 - 1;
      v4 = v94;
      v5 = v93;
    }

    while (v103 != 1);
  }

  (*(v79 + 8))(v102, v80);
}

id sub_1008A3DBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegistrationRequestTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1008A3DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = type metadata accessor for IDSRegistrationEventStruct();
  v17 = v16[6];
  v18 = sub_100936038();
  v19 = *(v18 - 8);
  (*(v19 + 56))(&a9[v17], 1, 1, v18);
  v20 = &a9[v16[10]];
  v21 = &a9[v16[11]];
  *(a9 + 1) = a1;
  *(a9 + 2) = a2;
  sub_100817548(a3, &a9[v17]);
  result = (*(v19 + 32))(&a9[v16[7]], a4, v18);
  *&a9[v16[8]] = a5;
  *&a9[v16[9]] = a6;
  *v20 = a7;
  *(v20 + 1) = a8;
  *v21 = a10;
  *(v21 + 1) = a11;
  *a9 = a12;
  return result;
}

size_t sub_1008A3F44(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(&qword_100CBA2C8);
  v10 = *(type metadata accessor for IDSRegistrationEventStruct() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for IDSRegistrationEventStruct() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

Swift::Int sub_1008A411C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_100937538(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IDSRegistrationEventStruct();
        v6 = sub_100936D28();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IDSRegistrationEventStruct() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1008A4440(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1008A4248(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1008A4248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for IDSRegistrationEventStruct();
  v8 = __chkstk_darwin(v35);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = (&v27 - v12);
  result = __chkstk_darwin(v11);
  v17 = (&v27 - v16);
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1008A58C8(v23, v17);
      sub_1008A58C8(v20, v13);
      v24 = *v17;
      v25 = *v13;
      sub_1008A592C(v13);
      result = sub_1008A592C(v17);
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_1008A5988(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1008A5988(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1008A4440(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v105 = a1;
  v118 = type metadata accessor for IDSRegistrationEventStruct();
  v112 = *(v118 - 8);
  v7 = __chkstk_darwin(v118);
  v108 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v117 = &v101 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = (&v101 - v12);
  result = __chkstk_darwin(v11);
  v16 = (&v101 - v15);
  v114 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = &_swiftEmptyArrayStorage;
LABEL_98:
    v4 = *v105;
    if (!*v105)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v13 = v116;
    if ((result & 1) == 0)
    {
LABEL_130:
      result = sub_1008495CC(v19);
      v19 = result;
    }

    v119 = v19;
    v97 = *(v19 + 2);
    if (v97 >= 2)
    {
      while (*v114)
      {
        v98 = *&v19[16 * v97];
        v99 = *&v19[16 * v97 + 24];
        sub_1008A4C80(*v114 + *(v112 + 72) * v98, *v114 + *(v112 + 72) * *&v19[16 * v97 + 16], *v114 + *(v112 + 72) * v99, v4);
        if (v13)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1008495CC(v19);
        }

        if (v97 - 2 >= *(v19 + 2))
        {
          goto LABEL_124;
        }

        v100 = &v19[16 * v97];
        *v100 = v98;
        *(v100 + 1) = v99;
        v119 = v19;
        result = sub_100849540(v97 - 1);
        v19 = v119;
        v97 = *(v119 + 2);
        if (v97 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v103 = a4;
  v18 = 0;
  v19 = &_swiftEmptyArrayStorage;
  v109 = v13;
  while (1)
  {
    v20 = v18;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v21 = *v114;
      v22 = *(v112 + 72);
      v4 = *v114 + v22 * (v18 + 1);
      sub_1008A58C8(v4, v16);
      sub_1008A58C8(v21 + v22 * v18, v13);
      v23 = *v16;
      v110 = *v13;
      v111 = v23;
      sub_1008A592C(v13);
      result = sub_1008A592C(v16);
      v104 = v18;
      v24 = v18 + 2;
      v113 = v22;
      v25 = v21 + v22 * (v18 + 2);
      while (v17 != v24)
      {
        LODWORD(v115) = v111 < v110;
        sub_1008A58C8(v25, v16);
        v26 = v16;
        v27 = v109;
        sub_1008A58C8(v4, v109);
        v28 = *v26;
        v29 = v17;
        v30 = v19;
        v31 = *v27;
        v32 = v27;
        v16 = v26;
        sub_1008A592C(v32);
        result = sub_1008A592C(v26);
        v33 = v28 >= v31;
        v19 = v30;
        v17 = v29;
        v34 = v33;
        ++v24;
        v25 += v113;
        v4 += v113;
        if (((v115 ^ v34) & 1) == 0)
        {
          v17 = v24 - 1;
          break;
        }
      }

      v13 = v109;
      v20 = v104;
      if (v111 < v110)
      {
        if (v17 < v104)
        {
          goto LABEL_127;
        }

        if (v104 < v17)
        {
          v102 = v19;
          v35 = v113 * (v17 - 1);
          v36 = v17 * v113;
          v37 = v17;
          v38 = v104 * v113;
          do
          {
            if (v20 != --v37)
            {
              v115 = v37;
              v4 = *v114;
              if (!*v114)
              {
                goto LABEL_133;
              }

              sub_1008A5988(v4 + v38, v108);
              if (v38 < v35 || v4 + v38 >= v4 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
                v37 = v115;
              }

              else
              {
                v37 = v115;
                if (v38 != v35)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_1008A5988(v108, v4 + v35);
            }

            ++v20;
            v35 -= v113;
            v36 -= v113;
            v38 += v113;
          }

          while (v20 < v37);
          v19 = v102;
          v20 = v104;
        }
      }
    }

    v39 = v114[1];
    if (v17 < v39)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_126;
      }

      if (v17 - v20 < v103)
      {
        if (__OFADD__(v20, v103))
        {
          goto LABEL_128;
        }

        if (v20 + v103 >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v20 + v103;
        }

        if (v40 < v20)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v17 != v40)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100846FD8(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v42 = *(v19 + 2);
    v41 = *(v19 + 3);
    v4 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_100846FD8((v41 > 1), v42 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v4;
    v43 = &v19[16 * v42];
    *(v43 + 4) = v20;
    *(v43 + 5) = v18;
    v44 = *v105;
    if (!*v105)
    {
      goto LABEL_135;
    }

    if (v42)
    {
      while (1)
      {
        v45 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v46 = *(v19 + 4);
          v47 = *(v19 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_55:
          if (v49)
          {
            goto LABEL_114;
          }

          v62 = &v19[16 * v4];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_117;
          }

          v68 = &v19[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_121;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v72 = &v19[16 * v4];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_69:
        if (v67)
        {
          goto LABEL_116;
        }

        v75 = &v19[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_119;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_76:
        v83 = v45 - 1;
        if (v45 - 1 >= v4)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_129;
        }

        if (!*v114)
        {
          goto LABEL_132;
        }

        v84 = *&v19[16 * v83 + 32];
        v4 = *&v19[16 * v45 + 40];
        v85 = v116;
        sub_1008A4C80(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v19[16 * v45 + 32], *v114 + *(v112 + 72) * v4, v44);
        v116 = v85;
        if (v85)
        {
        }

        if (v4 < v84)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1008495CC(v19);
        }

        if (v83 >= *(v19 + 2))
        {
          goto LABEL_111;
        }

        v86 = &v19[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v4;
        v119 = v19;
        result = sub_100849540(v45);
        v19 = v119;
        v4 = *(v119 + 2);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v19[16 * v4 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_112;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_113;
      }

      v57 = &v19[16 * v4];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_115;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_118;
      }

      if (v61 >= v53)
      {
        v79 = &v19[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_122;
        }

        if (v48 < v82)
        {
          v45 = v4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v17 = v114[1];
    if (v18 >= v17)
    {
      goto LABEL_98;
    }
  }

  v102 = v19;
  v87 = v17;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v87 - 1);
  v91 = v20;
  v92 = -v89;
  v104 = v91;
  v93 = v91 - v87;
  v115 = v87;
  v106 = v89;
  v107 = v40;
  v4 = v88 + v87 * v89;
LABEL_88:
  v110 = v4;
  v111 = v93;
  v113 = v90;
  while (1)
  {
    sub_1008A58C8(v4, v16);
    sub_1008A58C8(v90, v13);
    v94 = *v16;
    v95 = *v13;
    sub_1008A592C(v13);
    result = sub_1008A592C(v16);
    if (v94 >= v95)
    {
LABEL_87:
      v18 = v107;
      v90 = v113 + v106;
      v93 = v111 - 1;
      v4 = v110 + v106;
      if (++v115 != v107)
      {
        goto LABEL_88;
      }

      v19 = v102;
      v20 = v104;
      if (v107 < v104)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v88)
    {
      break;
    }

    v96 = v117;
    sub_1008A5988(v4, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_1008A5988(v96, v90);
    v90 += v92;
    v4 += v92;
    v33 = __CFADD__(v93++, 1);
    if (v33)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1008A4C80(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = type metadata accessor for IDSRegistrationEventStruct();
  v8 = __chkstk_darwin(v42);
  v44 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v8);
  v43 = (&v36 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v47 = a1;
  v46 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        while (1)
        {
          if (v26 <= a1)
          {
            v47 = v26;
            v45 = v36;
            goto LABEL_58;
          }

          v28 = a3;
          v37 = v23;
          a3 += v24;
          v29 = v25 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1008A58C8(v30, v43);
          v32 = v27;
          v33 = v44;
          sub_1008A58C8(v27, v44);
          v34 = *v31;
          v35 = *v33;
          sub_1008A592C(v33);
          sub_1008A592C(v31);
          if (v34 < v35)
          {
            break;
          }

          v23 = v29;
          if (v28 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v32;
            v24 = v38;
            a1 = v39;
          }

          else
          {
            v27 = v32;
            v24 = v38;
            a1 = v39;
            if (v28 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v29;
          v26 = v41;
          if (v29 <= v40)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v28 < v41 || a3 >= v41)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v32;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v28 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v47 = a2;
    v45 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v16;
    v45 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v43;
        sub_1008A58C8(a2, v43);
        v20 = v44;
        sub_1008A58C8(a4, v44);
        v21 = *v19;
        v22 = *v20;
        sub_1008A592C(v20);
        sub_1008A592C(v19);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_58:
  sub_1008A50FC(&v47, &v46, &v45);
  return 1;
}