uint64_t sub_10073D080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1009370C8();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_100745F74(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10073D13C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a8;
  v33 = a7;
  v34 = a5;
  v38 = a6;
  v42 = a3;
  v35 = a2;
  v11 = sub_100706B30(&qword_100CB36B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v41 = *&a1[OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_pushHandler];
  sub_10073D45C(a2);
  isa = sub_100936A58().super.isa;

  v37 = sub_100936B28();
  v31 = a1;
  v36 = sub_100936B28();
  sub_100012D50(a4, v16, &qword_100CB36B8);
  sub_100012D50(v33, &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_100CB36B8);
  v17 = *(v12 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = v13 + 7;
  v20 = (v13 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v17 + v22 + 8) & ~v17;
  v24 = (v19 + v23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_10074854C(v16, v25 + v18);
  *(v25 + v20) = a1;
  *(v25 + v21) = v34;
  *(v25 + v22) = v38;
  sub_10074854C(v32, v25 + v23);
  *(v25 + v24) = v40;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_100748B3C;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10073DCE8;
  aBlock[3] = &unk_100BE7068;
  v26 = _Block_copy(aBlock);
  v27 = v31;

  v28 = isa;
  v30 = v36;
  v29 = v37;
  [v41 sendKeyMaterialMessage:isa toDestination:v42 forGroup:v37 sessionID:v36 completion:v26];
  _Block_release(v26);
}

unint64_t sub_10073D45C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100706B30(&qword_100CBB130);
    v2 = sub_100937438();
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_100012914(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_100308C74(v27, &v22);

        sub_100706B30(&qword_100CB3700);
        swift_dynamicCast();
        sub_100308C74(&v23, v25);
        sub_100308C74(v25, v26);
        sub_100308C74(v26, &v24);
        result = sub_1000136E4(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100012970(v10);
          result = sub_100308C74(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_100308C74(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_10073D6E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a5;
  v54 = a7;
  v49 = a3;
  v50 = a6;
  v52 = a4;
  v9 = sub_100706B30(&qword_100CB36B8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v49 - v13;
  v15 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v51 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v49 - v19;
  sub_100012D50(a1, v14, &qword_100CB36B8);
  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) == 1)
  {
    sub_100013814(v14, &qword_100CB36B8);
  }

  else
  {
    v22 = sub_1007486EC(v14, v20, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    v23 = *(a2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock);
    v24 = __chkstk_darwin(v22);
    *(&v49 - 2) = v49;
    *(&v49 - 1) = v20;
    __chkstk_darwin(v24);
    *(&v49 - 2) = sub_100748C98;
    *(&v49 - 1) = v25;

    os_unfair_lock_lock(v23 + 4);
    sub_100748CB0();
    os_unfair_lock_unlock(v23 + 4);

    v27 = (*((swift_isaMask & *a2) + 0xA8))(v26);
    if (v27)
    {
      v29 = v27;
      v30 = v28;
      ObjectType = swift_getObjectType();
      (*(v30 + 8))(v20, *(v52 + 32), ObjectType, v30);
    }

    sub_100748754(v20, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  }

  sub_100012D50(v53, v12, &qword_100CB36B8);
  if (v21(v12, 1, v15) == 1)
  {
    sub_100013814(v12, &qword_100CB36B8);
  }

  else
  {
    v32 = v51;
    v33 = sub_1007486EC(v12, v51, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    v34 = *(a2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock);
    v35 = __chkstk_darwin(v33);
    *(&v49 - 2) = v50;
    *(&v49 - 1) = v32;
    __chkstk_darwin(v35);
    *(&v49 - 2) = sub_100748C14;
    *(&v49 - 1) = v36;

    os_unfair_lock_lock(v34 + 4);
    sub_100748CB0();
    os_unfair_lock_unlock(v34 + 4);

    v38 = (*((swift_isaMask & *a2) + 0xA8))(v37);
    if (v38)
    {
      v40 = v38;
      v41 = v39;
      v42 = swift_getObjectType();
      (*(v41 + 8))(v32, *(v52 + 32), v42, v41);
    }

    sub_100748754(v32, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  }

  v43 = sub_1009364B8();
  v44 = sub_100936F18();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v45 = 136315394;
    *(v45 + 4) = sub_10001273C(0xD00000000000002ELL, 0x8000000100AFF9A0, &v55);
    *(v45 + 12) = 2080;
    sub_100706B30(&qword_100CB3700);
    v46 = sub_100936A88();
    v48 = sub_10001273C(v46, v47, &v55);

    *(v45 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v43, v44, "%s: sent: %s", v45, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10073DCE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_100936B38();
  v6 = v5;
  v7 = sub_100936B38();
  v9 = v8;

  v3(a2, v4, v6, v7, v9);
}

unint64_t sub_10073DD94(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_cryptoHandler + 24);
  v6 = *(v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_cryptoHandler + 32);
  sub_1000226D4((v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_cryptoHandler), v5);
  v7 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v8 = (*(v6 + 8))(*(a1 + *(v7 + 28)), *(a1 + *(v7 + 28) + 8), a2, v5, v6);
  if (v10)
  {
    sub_1007156CC(v8, v9, 1);
    return 0;
  }

  else
  {
    v12 = v7;
    v13 = a1;
    v14 = v8;
    v15 = v9;
    sub_100706B30(&qword_100CB36F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1009AD170;
    *(inited + 32) = sub_100936B38();
    v52 = inited + 32;
    *(inited + 40) = v17;
    v18 = (v13 + v12[6]);
    v19 = *v18;
    v20 = v18[1];
    *(inited + 72) = &type metadata for Data;
    *(inited + 48) = v19;
    *(inited + 56) = v20;
    *(inited + 80) = sub_100936B38();
    *(inited + 88) = v21;
    *(inited + 120) = &type metadata for Data;
    v22 = v14;
    v23 = v13;
    v24 = v12;
    *(inited + 96) = v22;
    *(inited + 104) = v15;
    *(inited + 128) = sub_100936B38();
    *(inited + 136) = v25;
    v26 = *(v23 + v12[10]);
    *(inited + 168) = &type metadata for UInt32;
    *(inited + 144) = v26;
    *(inited + 176) = sub_100936B38();
    *(inited + 184) = v27;
    v28 = *(a2 + *(type metadata accessor for IDSGroupEncryptionPublicIdentity(0) + 32));
    sub_100715738(v19, v20);
    v53 = v15;
    sub_10071572C(v22, v15, 0);
    v29 = sub_10089CA40(v28);
    *(inited + 216) = &type metadata for Int;
    *(inited + 192) = v29;
    *(inited + 224) = sub_100936B38();
    *(inited + 232) = v30;
    v31 = *(v23 + v12[12]);
    *(inited + 264) = &type metadata for UInt8;
    *(inited + 240) = v31;
    v11 = sub_100746BE8(inited);
    swift_setDeallocating();
    sub_100706B30(&qword_100CB36F8);
    swift_arrayDestroy();
    isa = sub_100936058().super.isa;
    v33 = IDSGetUUIDDataFromNSUUID();

    if (v33)
    {
      v34 = sub_100935EA8();
      v36 = v35;

      v52 = sub_100936B38();
      v38 = v37;
      v58 = &type metadata for Data;
      *&v57 = v34;
      *(&v57 + 1) = v36;
      sub_100308C74(&v57, &v55);
      sub_100715738(v34, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v11;
      v40 = sub_100729284(&v55, v56);
      v51[1] = v51;
      __chkstk_darwin(v40);
      v42 = (v51 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v43 + 16))(v42);
      sub_100746024(*v42, v42[1], v52, v38, isUniquelyReferenced_nonNull_native, &v54);

      sub_1007156D8(v34, v36);
      sub_100012970(&v55);
      v11 = v54;
    }

    v44 = (v23 + v24[13]);
    if (*(v44 + 8) == 1)
    {
      sub_1007156CC(v22, v53, 0);
    }

    else
    {
      v45 = *v44;
      v46 = sub_100936B38();
      v48 = v47;
      v58 = &type metadata for UInt64;
      *&v57 = v45;
      sub_100308C74(&v57, &v55);
      LOBYTE(v45) = swift_isUniquelyReferenced_nonNull_native();
      v54 = v11;
      v49 = sub_100729284(&v55, v56);
      sub_100746250(*v49, v46, v48, v45, &v54);

      sub_1007156CC(v22, v53, 0);
      sub_100012970(&v55);
      return v54;
    }
  }

  return v11;
}

unint64_t sub_10073E200(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_cryptoHandler + 24);
  v6 = *(v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_cryptoHandler + 32);
  sub_1000226D4((v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_cryptoHandler), v5);
  v7 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v8 = (*(v6 + 8))(*(a1 + v7[7]), *(a1 + v7[7] + 8), a2, v5, v6);
  if (v10)
  {
    sub_1007156CC(v8, v9, 1);
    return 0;
  }

  else
  {
    v47 = v8;
    v12 = v9;
    sub_100706B30(&qword_100CB36F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1009AD150;
    *(inited + 32) = sub_100936B38();
    *(inited + 40) = v14;
    v15 = (a1 + v7[6]);
    v16 = *v15;
    v17 = v15[1];
    *(inited + 72) = &type metadata for Data;
    *(inited + 48) = v16;
    *(inited + 56) = v17;
    *(inited + 80) = sub_100936B38();
    *(inited + 88) = v18;
    *(inited + 120) = &type metadata for Data;
    v19 = v47;
    *(inited + 96) = v47;
    *(inited + 104) = v12;
    *(inited + 128) = sub_100936B38();
    *(inited + 136) = v20;
    v21 = *(a1 + v7[10]);
    *(inited + 168) = &type metadata for UInt32;
    *(inited + 144) = v21;
    *(inited + 176) = sub_100936B38();
    *(inited + 184) = v22;
    v23 = *(a2 + *(type metadata accessor for IDSGroupEncryptionPublicIdentity(0) + 32));
    sub_100715738(v16, v17);
    v46 = v12;
    sub_10071572C(v19, v12, 0);
    v24 = sub_10089CA40(v23);
    *(inited + 216) = &type metadata for Int;
    *(inited + 192) = v24;
    v11 = sub_100746BE8(inited);
    swift_setDeallocating();
    sub_100706B30(&qword_100CB36F8);
    swift_arrayDestroy();
    isa = sub_100936058().super.isa;
    v26 = IDSGetUUIDDataFromNSUUID();

    if (v26)
    {
      v27 = sub_100935EA8();
      v29 = v28;

      v30 = sub_100936B38();
      v32 = v31;
      v52 = &type metadata for Data;
      *&v51 = v27;
      *(&v51 + 1) = v29;
      sub_100308C74(&v51, &v49);
      sub_100715738(v27, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v11;
      v33 = sub_100729284(&v49, v50);
      __chkstk_darwin(v33);
      v35 = (&v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v36 + 16))(v35);
      sub_100746024(*v35, v35[1], v30, v32, isUniquelyReferenced_nonNull_native, &v48);

      sub_1007156D8(v27, v29);
      sub_100012970(&v49);
      v11 = v48;
    }

    v37 = (a1 + v7[13]);
    if (*(v37 + 8) == 1)
    {
      sub_1007156CC(v47, v46, 0);
    }

    else
    {
      v38 = *v37;
      v39 = sub_100936B38();
      v41 = v40;
      v52 = &type metadata for UInt64;
      *&v51 = v38;
      sub_100308C74(&v51, &v49);
      LOBYTE(v38) = swift_isUniquelyReferenced_nonNull_native();
      v48 = v11;
      v42 = sub_100729284(&v49, v50);
      sub_100746250(*v42, v39, v41, v38, &v48);

      sub_1007156CC(v47, v46, 0);
      sub_100012970(&v49);
      return v48;
    }
  }

  return v11;
}

uint64_t sub_10073E628(void *a1, void *a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock;
  v8 = *(v3 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock);

  os_unfair_lock_lock(v8 + 4);

  v9 = sub_10073E6B8(a1, a2, a3);
  v10 = *(v3 + v7);

  os_unfair_lock_unlock(v10 + 4);

  return v9;
}

uint64_t sub_10073E6B8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_participantsById;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_10072517C(a3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    type metadata accessor for IDSGroupPushMaterialExchangeParticipant();
    v12 = swift_allocObject();
    sub_100734BA4(a1, a2, a3);
    swift_beginAccess();
    v13 = a1;
    v14 = a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v4 + v8);
    *(v4 + v8) = 0x8000000000000000;
    sub_1007432C0(v12, a3, isUniquelyReferenced_nonNull_native);
    *(v4 + v8) = v26;
    swift_endAccess();

    v16 = sub_1009364B8();
    v17 = sub_100936F18();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_10001273C(0xD000000000000034, 0x8000000100AFFC80, v27);
      *(v18 + 12) = 2080;
      v19 = *(*v12 + 176);

      v21 = v19(v20);
      v23 = v22;

      v24 = sub_10001273C(v21, v23, v27);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: creating %s", v18, 0x16u);
      swift_arrayDestroy();
    }
  }

  return v12;
}

uint64_t sub_10073E930(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock;
  v5 = *(v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_participantsById;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v18[2] = a1;

  v8 = sub_10073EB1C(sub_1007487B4, v18, v7);
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:

    v15 = &_swiftEmptyArrayStorage;
LABEL_12:
    v16 = sub_1007478B8(v15);

    v17 = *(v2 + v4);

    os_unfair_lock_unlock(v17 + 4);

    return v16;
  }

  v10 = sub_1009373F8();
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v19 = &_swiftEmptyArrayStorage;
  result = sub_1009372B8();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = sub_100937268();
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      ++v12;
      v14 = *(v13 + 16);

      sub_100937298();
      sub_1009372C8();
      sub_1009372D8();
      sub_1009372A8();
    }

    while (v10 != v12);

    v15 = v19;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10073EB1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v14 = result;
  v5 = 0;
  v16 = &_swiftEmptyArrayStorage;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  if (v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v10)
    {

      return v16;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
  }

  while (!v9);
  while (1)
  {
    v15 = *(*(v4 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));

    v12 = v14(&v15);
    if (v3)
    {
      break;
    }

    v9 &= v9 - 1;
    if (v12)
    {
      sub_100937298();
      sub_1009372C8();
      v4 = a3;
      sub_1009372D8();
      result = sub_1009372A8();
      v5 = v11;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v5 = v11;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v5;
  }
}

void sub_10073ECBC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v269 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  v8 = *(v269 - 8);
  __chkstk_darwin(v269);
  v265 = &v235 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100706B30(&qword_100CB36B8);
  v11 = __chkstk_darwin(v10 - 8);
  v246 = &v235 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v245 = &v235 - v14;
  v15 = __chkstk_darwin(v13);
  v244 = &v235 - v16;
  v17 = __chkstk_darwin(v15);
  v243 = &v235 - v18;
  v19 = __chkstk_darwin(v17);
  v242 = &v235 - v20;
  __chkstk_darwin(v19);
  v241 = &v235 - v21;
  v253 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet();
  v22 = *(v253 - 8);
  __chkstk_darwin(v253);
  v235 = &v235 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_100706B30(&qword_100CB3718);
  __chkstk_darwin(v252);
  v251 = &v235 - v24;
  v255 = sub_100706B30(&qword_100CB36D0);
  v25 = __chkstk_darwin(v255);
  v240 = &v235 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v258 = &v235 - v28;
  v29 = __chkstk_darwin(v27);
  v257 = &v235 - v30;
  __chkstk_darwin(v29);
  v254 = &v235 - v31;
  v236 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock;
  v32 = *&v4[OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock];

  os_unfair_lock_lock(v32 + 4);

  v272 = a1;
  v33 = sub_1009364B8();
  v34 = sub_100936F18();

  v35 = os_log_type_enabled(v33, v34);
  v239 = v8;
  *&v270 = v22;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v277 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_10001273C(a2, a3, &v277);
    _os_log_impl(&_mh_execute_header, v33, v34, "%sPushExchangeController", v36, 0xCu);
    sub_100012970(v37);
  }

  v38 = v4;
  v39 = sub_1009364B8();
  v40 = sub_100936F18();

  v41 = os_log_type_enabled(v39, v40);
  v256 = v38;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v277 = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_10001273C(a2, a3, &v277);
    *(v42 + 12) = 2080;
    (*((swift_isaMask & *v38) + 0xF0))();
    v43 = sub_100936B88();
    v45 = sub_10001273C(v43, v44, &v277);

    *(v42 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s    desiredPublicIdentity: %s", v42, 0x16u);
    swift_arrayDestroy();
  }

  v46 = sub_1009364B8();
  v47 = sub_100936F18();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v277 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_10001273C(a2, a3, &v277);
    _os_log_impl(&_mh_execute_header, v46, v47, "%s    ", v48, 0xCu);
    sub_100012970(v49);
  }

  v50 = sub_1009364B8();
  v51 = sub_100936F18();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v277 = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_10001273C(a2, a3, &v277);
    _os_log_impl(&_mh_execute_header, v50, v51, "%s    Members:", v52, 0xCu);
    sub_100012970(v53);
  }

  v54 = v270;
  v271 = a2;
  v55 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_membersByURI;
  v56 = v256;
  swift_beginAccess();
  v57 = *&v56[v55];
  v237 = v4;
  if ((v57 & 0xC000000000000001) != 0)
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = sub_100937318() | 0x8000000000000000;
  }

  else
  {
    v62 = -1 << *(v57 + 32);
    v59 = ~v62;
    v58 = v57 + 64;
    v63 = -v62;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    else
    {
      v64 = -1;
    }

    v60 = v64 & *(v57 + 64);
    v61 = v57;
  }

  v65 = 0;
  v238 = v59;
  v66 = (v59 + 64) >> 6;
  v250 = (v54 + 48);
  *&v67 = 136315906;
  v249 = v67;
  v267 = a3;
  v268 = v61;
  v248 = v58;
  v247 = v66;
  if ((v61 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v68 = sub_1009373B8();
  if (!v68 || (v70 = v69, v273 = v68, sub_100014170(0, &qword_100CBA2E0), swift_dynamicCast(), v71 = v276, v273 = v70, type metadata accessor for IDSGroupPushMaterialExchangeMember(0), swift_dynamicCast(), v72 = v276, v73 = v65, *&v270 = v60, !v71))
  {
LABEL_38:
    sub_100308C6C();

    v107 = sub_1009364B8();
    v108 = sub_100936F18();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v276 = v110;
      *v109 = 136315138;
      v111 = v271;
      *(v109 + 4) = sub_10001273C(v271, a3, &v276);
      _os_log_impl(&_mh_execute_header, v107, v108, "%s    ", v109, 0xCu);
      sub_100012970(v110);
    }

    else
    {

      v111 = v271;
    }

    v112 = sub_1009364B8();
    v113 = sub_100936F18();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v276 = v115;
      *v114 = 136315138;
      *(v114 + 4) = sub_10001273C(v111, a3, &v276);
      _os_log_impl(&_mh_execute_header, v112, v113, "%s    Participants:", v114, 0xCu);
      sub_100012970(v115);
    }

    v116 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_participantsById;
    swift_beginAccess();
    v117 = *&v56[v116];
    v118 = v117 + 64;
    v119 = 1 << *(v117 + 32);
    v120 = -1;
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    v121 = v120 & *(v117 + 64);
    v122 = (v119 + 63) >> 6;
    v268 = v239 + 48;
    v266 = v117;

    v123 = 0;
    *&v124 = 136315650;
    v260 = v124;
    *&v124 = 136315138;
    v262 = v124;
    *&v124 = 136315394;
    v270 = v124;
    v263 = v122;
    v264 = v118;
    while (v121)
    {
LABEL_53:
      v126 = *(v266[7].isa + ((v123 << 9) | (8 * __clz(__rbit64(v121)))));
      swift_retain_n();

      v127 = sub_1009364B8();
      v128 = sub_100936F18();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v273 = v131;
        *v129 = v260;
        *(v129 + 4) = sub_10001273C(v111, a3, &v273);
        *(v129 + 12) = 2112;
        v132 = v126[3];
        *(v129 + 14) = v132;
        *v130 = v132;
        *(v129 + 22) = 2112;
        v133 = v126[2];
        *(v129 + 24) = v133;
        v130[1] = v133;
        v134 = v132;
        v135 = v133;
        _os_log_impl(&_mh_execute_header, v127, v128, "%s        Participant %@: pushToken=%@:", v129, 0x20u);
        sub_100706B30(&qword_100CB36B0);
        swift_arrayDestroy();

        sub_100012970(v131);
      }

      v136 = sub_1009364B8();
      v137 = sub_100936F18();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v273 = v139;
        *v138 = v262;
        v140 = v271;
        *(v138 + 4) = sub_10001273C(v271, a3, &v273);
        _os_log_impl(&_mh_execute_header, v136, v137, "%s            MKM:", v138, 0xCu);
        sub_100012970(v139);
      }

      else
      {

        v140 = v271;
      }

      swift_retain_n();

      v141 = sub_1009364B8();
      v142 = sub_100936F18();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v273 = v144;
        *v143 = v270;
        *(v143 + 4) = sub_10001273C(v140, a3, &v273);
        *(v143 + 12) = 1024;
        v145 = (*(*v126 + 120))();
        v146 = (*(*v145 + 184))(v145);

        *(v143 + 14) = v146 & 1;

        _os_log_impl(&_mh_execute_header, v141, v142, "%s                desiresCache: %{BOOL}d", v143, 0x12u);
        sub_100012970(v144);
      }

      else
      {
      }

      v147 = sub_1009364B8();
      v148 = sub_100936F18();

      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v275 = v261;
        *v149 = v270;
        *(v149 + 4) = sub_10001273C(v271, a3, &v275);
        *(v149 + 12) = 2080;
        v150 = (*(*v126 + 120))();
        v151 = v241;
        (*(*v150 + 160))(v150);
        v152 = v151;

        if ((*v268)(v151, 1, v269))
        {
          sub_100013814(v151, &qword_100CB36B8);
          v153 = 0;
          v154 = 0;
        }

        else
        {
          v156 = v151;
          v157 = v265;
          sub_100748684(v156, v265, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          sub_100013814(v152, &qword_100CB36B8);
          v153 = sub_100899F48();
          v154 = v158;
          a3 = v267;
          sub_100748754(v157, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
        }

        v273 = v153;
        v274 = v154;
        sub_100706B30(&unk_100CBA310);
        v159 = sub_100936B88();
        v161 = sub_10001273C(v159, v160, &v275);

        *(v149 + 14) = v161;
        _os_log_impl(&_mh_execute_header, v147, v148, "%s                desiredKeyMaterial: %s", v149, 0x16u);
        swift_arrayDestroy();

        v155 = v271;
      }

      else
      {

        v155 = v271;
      }

      v162 = sub_1009364B8();
      v163 = sub_100936F18();

      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v275 = v261;
        *v164 = v270;
        *(v164 + 4) = sub_10001273C(v155, a3, &v275);
        *(v164 + 12) = 2080;
        v165 = (*(*v126 + 120))();
        v166 = v242;
        (*(*v165 + 136))(v165);

        if ((*v268)(v166, 1, v269))
        {
          sub_100013814(v166, &qword_100CB36B8);
          v167 = 0;
          v168 = 0;
        }

        else
        {
          v169 = v265;
          sub_100748684(v166, v265, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          sub_100013814(v166, &qword_100CB36B8);
          v167 = sub_100899F48();
          v168 = v170;
          a3 = v267;
          sub_100748754(v169, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
        }

        v273 = v167;
        v274 = v168;
        sub_100706B30(&unk_100CBA310);
        v171 = sub_100936B88();
        v173 = sub_10001273C(v171, v172, &v275);

        *(v164 + 14) = v173;
        _os_log_impl(&_mh_execute_header, v162, v163, "%s                sendingKeyMaterial: %s", v164, 0x16u);
        swift_arrayDestroy();

        v155 = v271;
      }

      else
      {
      }

      v174 = sub_1009364B8();
      v175 = sub_100936F18();

      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v275 = v261;
        *v176 = v270;
        *(v176 + 4) = sub_10001273C(v155, a3, &v275);
        *(v176 + 12) = 2080;
        v177 = (*(*v126 + 120))();
        v178 = v243;
        (*(*v177 + 112))(v177);

        if ((*v268)(v178, 1, v269))
        {
          sub_100013814(v178, &qword_100CB36B8);
          v179 = 0;
          v180 = 0;
        }

        else
        {
          v181 = v265;
          sub_100748684(v178, v265, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          sub_100013814(v178, &qword_100CB36B8);
          v179 = sub_100899F48();
          v180 = v182;
          a3 = v267;
          sub_100748754(v181, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
        }

        v273 = v179;
        v274 = v180;
        sub_100706B30(&unk_100CBA310);
        v183 = sub_100936B88();
        v185 = sub_10001273C(v183, v184, &v275);

        *(v176 + 14) = v185;
        _os_log_impl(&_mh_execute_header, v174, v175, "%s                sentKeyMaterial: %s", v176, 0x16u);
        swift_arrayDestroy();

        v155 = v271;
      }

      else
      {
      }

      v186 = sub_1009364B8();
      v187 = sub_100936F18();

      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v273 = v189;
        *v188 = v262;
        *(v188 + 4) = sub_10001273C(v155, a3, &v273);
        _os_log_impl(&_mh_execute_header, v186, v187, "%s            SKM:", v188, 0xCu);
        sub_100012970(v189);
      }

      swift_retain_n();

      v190 = sub_1009364B8();
      v191 = sub_100936F18();

      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        v273 = v193;
        *v192 = v270;
        *(v192 + 4) = sub_10001273C(v155, a3, &v273);
        *(v192 + 12) = 1024;
        v194 = (*(*v126 + 144))();
        v195 = (*(*v194 + 184))(v194);

        *(v192 + 14) = v195 & 1;

        _os_log_impl(&_mh_execute_header, v190, v191, "%s                desiresCache: %{BOOL}d", v192, 0x12u);
        sub_100012970(v193);
      }

      else
      {
      }

      v196 = sub_1009364B8();
      v197 = sub_100936F18();

      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v275 = v261;
        *v198 = v270;
        *(v198 + 4) = sub_10001273C(v271, a3, &v275);
        *(v198 + 12) = 2080;
        v199 = (*(*v126 + 144))();
        v200 = v244;
        (*(*v199 + 160))(v199);
        v201 = v200;

        if ((*v268)(v200, 1, v269))
        {
          sub_100013814(v200, &qword_100CB36B8);
          v202 = 0;
          v203 = 0;
        }

        else
        {
          v204 = v200;
          v205 = v265;
          sub_100748684(v204, v265, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          sub_100013814(v201, &qword_100CB36B8);
          v202 = sub_100899F48();
          v203 = v206;
          a3 = v267;
          sub_100748754(v205, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
        }

        v273 = v202;
        v274 = v203;
        sub_100706B30(&unk_100CBA310);
        v207 = sub_100936B88();
        v209 = sub_10001273C(v207, v208, &v275);

        *(v198 + 14) = v209;
        _os_log_impl(&_mh_execute_header, v196, v197, "%s                desiredKeyMaterial: %s", v198, 0x16u);
        swift_arrayDestroy();

        v111 = v271;
      }

      else
      {

        v111 = v271;
      }

      v210 = sub_1009364B8();
      v211 = sub_100936F18();

      if (os_log_type_enabled(v210, v211))
      {
        v212 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v275 = v261;
        *v212 = v270;
        *(v212 + 4) = sub_10001273C(v111, a3, &v275);
        *(v212 + 12) = 2080;
        v213 = (*(*v126 + 144))();
        v214 = v245;
        (*(*v213 + 136))(v213);

        if ((*v268)(v214, 1, v269))
        {
          sub_100013814(v214, &qword_100CB36B8);
          v215 = 0;
          v216 = 0;
        }

        else
        {
          v217 = v265;
          sub_100748684(v214, v265, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          sub_100013814(v214, &qword_100CB36B8);
          v215 = sub_100899F48();
          v216 = v218;
          a3 = v267;
          sub_100748754(v217, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
        }

        v273 = v215;
        v274 = v216;
        sub_100706B30(&unk_100CBA310);
        v219 = sub_100936B88();
        v221 = sub_10001273C(v219, v220, &v275);

        *(v212 + 14) = v221;
        _os_log_impl(&_mh_execute_header, v210, v211, "%s                sendingKeyMaterial: %s", v212, 0x16u);
        swift_arrayDestroy();

        v111 = v271;
      }

      else
      {
      }

      v121 &= v121 - 1;

      v222 = sub_1009364B8();
      v223 = sub_100936F18();

      if (os_log_type_enabled(v222, v223))
      {
        v224 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v275 = v261;
        *v224 = v270;
        *(v224 + 4) = sub_10001273C(v111, a3, &v275);
        *(v224 + 12) = 2080;
        v225 = (*(*v126 + 144))();
        v226 = v246;
        (*(*v225 + 112))(v225);

        if ((*v268)(v226, 1, v269))
        {
          sub_100013814(v226, &qword_100CB36B8);
          v227 = 0;
          v228 = 0;
        }

        else
        {
          v229 = v265;
          sub_100748684(v226, v265, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          sub_100013814(v226, &qword_100CB36B8);
          v227 = sub_100899F48();
          v228 = v230;
          a3 = v267;
          sub_100748754(v229, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
        }

        v273 = v227;
        v274 = v228;
        sub_100706B30(&unk_100CBA310);
        v231 = sub_100936B88();
        v233 = sub_10001273C(v231, v232, &v275);

        *(v224 + 14) = v233;
        _os_log_impl(&_mh_execute_header, v222, v223, "%s                sentKeyMaterial: %s", v224, 0x16u);
        swift_arrayDestroy();

        v111 = v271;
      }

      else
      {
      }

      v122 = v263;
      v118 = v264;
    }

    while (1)
    {
      v125 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v125 >= v122)
      {

        v234 = *&v237[v236];

        os_unfair_lock_unlock(v234 + 4);

        return;
      }

      v121 = *(v118 + 8 * v125);
      ++v123;
      if (v121)
      {
        v123 = v125;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_103;
  }

  while (1)
  {

    v77 = v56;

    v78 = sub_1009364B8();
    v79 = sub_100936F18();

    if (!os_log_type_enabled(v78, v79))
    {

      v65 = v73;
      v60 = v270;
      v61 = v268;
      if ((v268 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    LODWORD(v263) = v79;
    v266 = v78;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v262 = swift_slowAlloc();
    v276 = v262;
    *v80 = v249;
    *(v80 + 4) = sub_10001273C(v271, a3, &v276);
    *(v80 + 12) = 2112;
    v82 = v72[2];
    *(v80 + 14) = v82;
    v261 = v81;
    *v81 = v82;
    v264 = v80;
    *(v80 + 22) = 2080;
    v83 = *(*v72 + 96);
    v84 = *v72 + 96;
    v85 = v82;
    v86 = v257;
    *&v260 = v83;
    v259 = v84;
    v87 = v83(v85);
    v88 = v258;
    (*((swift_isaMask & *v77) + 0xF0))(v87);
    v89 = *(v252 + 48);
    v90 = v251;
    sub_100012D50(v86, v251, &qword_100CB36D0);
    sub_100012D50(v88, v90 + v89, &qword_100CB36D0);
    v91 = *v250;
    v92 = v253;
    if ((*v250)(v90, 1, v253) == 1)
    {
      sub_100013814(v88, &qword_100CB36D0);
      sub_100013814(v86, &qword_100CB36D0);
      v93 = v91(v90 + v89, 1, v92);
      v66 = v247;
      if (v93 == 1)
      {
        sub_100013814(v90, &qword_100CB36D0);
        v94 = 0xE700000000000000;
        v95 = 0x746E6572727563;
        v58 = v248;
        v96 = v270;
        v97 = v264;
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v98 = v240;
    sub_100012D50(v90, v240, &qword_100CB36D0);
    if (v91(v90 + v89, 1, v92) == 1)
    {
      sub_100013814(v258, &qword_100CB36D0);
      sub_100013814(v257, &qword_100CB36D0);
      sub_100748754(v98, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      v66 = v247;
LABEL_32:
      sub_100013814(v90, &qword_100CB3718);
      v58 = v248;
      v96 = v270;
      v97 = v264;
LABEL_33:
      v94 = 0xE500000000000000;
      v95 = 0x656C617473;
      goto LABEL_34;
    }

    v105 = v235;
    sub_1007486EC(v90 + v89, v235, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    sub_1007477CC(&qword_100CB2EB8, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    v106 = sub_100936B18();
    sub_100748754(v105, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    sub_100013814(v258, &qword_100CB36D0);
    sub_100013814(v257, &qword_100CB36D0);
    sub_100748754(v98, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    sub_100013814(v90, &qword_100CB36D0);
    v58 = v248;
    v66 = v247;
    v96 = v270;
    v97 = v264;
    if ((v106 & 1) == 0)
    {
      goto LABEL_33;
    }

    v94 = 0xE700000000000000;
    v95 = 0x746E6572727563;
LABEL_34:
    v99 = sub_10001273C(v95, v94, &v276);

    *(v97 + 24) = v99;
    *(v97 + 32) = 2080;
    (v260)(v100);
    v101 = sub_100936B88();
    v103 = sub_10001273C(v101, v102, &v276);

    *(v97 + 34) = v103;
    v104 = v266;
    _os_log_impl(&_mh_execute_header, v266, v263, "%s        %@: %s; sentPublicIdentity: %s", v97, 0x2Au);
    sub_100013814(v261, &qword_100CB36B0);

    swift_arrayDestroy();

    v65 = v73;
    v60 = v96;
    a3 = v267;
    v61 = v268;
    v56 = v256;
    if ((v268 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v74 = v65;
    v75 = v60;
    v73 = v65;
    if (!v60)
    {
      break;
    }

LABEL_25:
    *&v270 = (v75 - 1) & v75;
    v76 = (v73 << 9) | (8 * __clz(__rbit64(v75)));
    v72 = *(*(v61 + 56) + v76);
    v71 = *(*(v61 + 48) + v76);

    if (!v71)
    {
      goto LABEL_38;
    }
  }

  while (1)
  {
    v73 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      break;
    }

    if (v73 >= v66)
    {
      goto LABEL_38;
    }

    v75 = *(v58 + 8 * v73);
    ++v74;
    if (v75)
    {
      goto LABEL_25;
    }
  }

LABEL_103:
  __break(1u);
}

id sub_100741298()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGroupPushMaterialExchangeController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10074167C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100706B30(&qword_100CB3A58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100706B30(&qword_100CB3710);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1007417B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100937028(*(v2 + 40));

  return sub_1007417F4(a1, v4);
}

unint64_t sub_1007417F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100014170(0, &qword_100CBA2E0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100937038();

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

uint64_t sub_1007418C8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_100937668();
  sub_100936BC8();
  v8 = sub_1009376C8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100937598() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1007454C4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100741A18(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_100937168();

    if (v16)
    {

      sub_100014170(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_100937158();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_100741EC4(v14, result + 1, a5, a6, a3);
        v27 = v26[2];
        if (v26[3] <= v27)
        {
          sub_100744114(v27 + 1, a5);
        }

        v28 = v15;
        sub_100731414(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_100014170(0, a3);
    v18 = sub_100937028(*(v13 + 40));
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_100937038();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_100745644(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

void sub_100741C8C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_100937158())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100937118();
    sub_100014170(0, &qword_100CBA2E0);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    sub_100936E58();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_100308C6C();
      return;
    }

    while (1)
    {
      v16 = sub_100743A74(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_100937198())
      {
        sub_100014170(0, &qword_100CBA2E0);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

Swift::Int sub_100741EC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    sub_100706B30(a3);
    v7 = sub_100937218();
    v20 = v7;
    sub_100937118();
    if (sub_100937198())
    {
      sub_100014170(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_100744114(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_100937028(*(v20 + 40));
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
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
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_100937198());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v7;
}

void *sub_1007420C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100937118();
    sub_100014170(0, &qword_100CBA2E0);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    sub_100936E58();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = v3 + 7;
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_100937198();
      if (!v21)
      {
        goto LABEL_62;
      }

      v71 = v21;
      sub_100014170(0, &qword_100CBA2E0);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = v19;
    v23 = sub_100937028(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_100014170(0, &qword_100CBA2E0);
  v27 = *(v3[6] + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = sub_100937038();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v61;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v63 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v67;
    v35 = v68;
    v37 = i;
LABEL_33:
    v65 = v4;
    while (v35 < 0)
    {
      v38 = sub_100937198();
      if (!v38)
      {
        goto LABEL_61;
      }

      v71 = v38;
      swift_dynamicCast();
      v39 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = sub_100937028(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v70[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = sub_100937038();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v70[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v63[v48];
        v63[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
        if (!v53)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v41;
      v17 = v41;
      v77 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_1007445D8(v63, v61, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= v17 + 1)
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_100744334(v57, v61, v3, v8, &v73);
  v59 = v58;

  v3 = v59;
LABEL_62:
  sub_100308C6C();
  return v3;
}

Swift::Int sub_10074275C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100706B30(&qword_100CB3A70);
    v2 = sub_100937428();
    v19 = v2;
    sub_100937318();
    v3 = sub_1009373B8();
    if (v3)
    {
      v4 = v3;
      sub_100014170(0, &qword_100CBA2E0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for IDSGroupPushMaterialExchangeMember(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100742990(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_100937028(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1009373B8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_100742990(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB3A70);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_100937028(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100742C00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB3A68);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_100937658();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100742E70(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  sub_100706B30(a3);
  v36 = a2;
  result = sub_100937418();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_100012914(v27, v38);
      }

      sub_100937668();
      sub_100936BC8();
      result = sub_1009376C8();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

void sub_100743134(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1009370D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_100937028(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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

unint64_t sub_1007432C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10072517C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100742C00(v14, a3 & 1);
      result = sub_10072517C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1009375D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100743778();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_10074340C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000136E4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1007438D4(&qword_100CBB130, &unk_1009AD820, sub_100308C74);
      v11 = v19;
      goto LABEL_8;
    }

    sub_100742E70(v16, a4 & 1, &qword_100CBB130, &unk_1009AD820, sub_100308C74);
    v11 = sub_1000136E4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1009375D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100012970(v22);

    return sub_100308C74(a1, v22);
  }

  else
  {
    sub_1007435A8(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1007435A8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100308C74(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_100743614()
{
  v1 = v0;
  sub_100706B30(&qword_100CB3A70);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_100743778()
{
  v1 = v0;
  sub_100706B30(&qword_100CB3A68);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1007438D4(uint64_t *a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_100706B30(a1);
  v5 = *v3;
  v6 = sub_100937408();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_100012914(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
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

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_100743A74(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_1009371A8();

    if (v5)
    {
      v6 = sub_1007447CC();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_100014170(0, &qword_100CBA2E0);
  v9 = sub_100937028(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_100937038();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100744AB0(&qword_100CB3A78);
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100745034(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_100743C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1007477CC(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v26 = a1;
  v10 = sub_100936AC8();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v23 = v2;
    v24 = v6;
    v25 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_100748684(*(v9 + 48) + v14 * v12, v8, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_1007477CC(&qword_100CB2D88, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v15 = sub_100936B18();
      sub_100748754(v8, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v25;
        goto LABEL_10;
      }
    }

    v17 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v27 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100713F3C();
      v19 = v27;
    }

    v20 = *(v19 + 48) + v14 * v12;
    a2 = v25;
    sub_1007486EC(v20, v25, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_1007451D4(v12);
    v16 = 0;
    *v17 = v27;
LABEL_10:
    v6 = v24;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_100743EB4()
{
  v1 = v0;
  v2 = *v0;
  sub_100706B30(&qword_100CB4F90);
  result = sub_100937208();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100937668();
      sub_100936BC8();
      result = sub_1009376C8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100744114(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100706B30(a2);
  result = sub_100937208();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_100937028(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

void sub_100744334(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_100937198())
          {
            goto LABEL_29;
          }

          sub_100014170(0, &qword_100CBA2E0);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_1007445D8(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_100937028(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_100014170(0, &qword_100CBA2E0);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_100937038();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_100937038();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1007445D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100706B30(&qword_100CB3A78);
  result = sub_100937228();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_100937028(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1007447CC()
{
  v1 = v0;

  v2 = sub_100937158();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100741EC4(v3, v2, &qword_100CB3A78, &unk_1009B0C80, &qword_100CBA2E0);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_100937028(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100014170(0, &qword_100CBA2E0);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_100937038();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_100745034(v8);
  result = sub_100937038();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100744954()
{
  v1 = v0;
  sub_100706B30(&qword_100CB4F90);
  v2 = *v0;
  v3 = sub_1009371F8();
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

id sub_100744AB0(uint64_t *a1)
{
  v2 = v1;
  sub_100706B30(a1);
  v3 = *v1;
  v4 = sub_1009371F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_100744BF0()
{
  v1 = v0;
  v2 = *v0;
  sub_100706B30(&qword_100CB4F90);
  result = sub_100937208();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_100937668();

      sub_100936BC8();
      result = sub_1009376C8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100744E28(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100706B30(a2);
  result = sub_100937208();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_100937028(v17);
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
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

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

unint64_t sub_100745034(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1009370D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_100937028(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

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

uint64_t sub_1007451D4(int64_t a1)
{
  v29 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v3 = *(v29 - 8);
  result = __chkstk_darwin(v29);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) == 0)
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    goto LABEL_24;
  }

  v11 = ~v9;

  v12 = sub_1009370D8();
  if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
  {
    goto LABEL_22;
  }

  v30 = v7;
  v13 = (v12 + 1) & v11;
  v14 = *(v3 + 72);
  v15 = v11;
  v28 = v8;
  do
  {
    v16 = v14;
    v17 = v14 * v10;
    sub_100748684(*(v30 + 48) + v14 * v10, v6, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v18 = v15;
    sub_1007477CC(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v19 = sub_100936AC8();
    sub_100748754(v6, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v20 = v19 & v18;
    v15 = v18;
    if (a1 >= v13)
    {
      if (v20 < v13 || a1 < v20)
      {
LABEL_4:
        v14 = v16;
        goto LABEL_5;
      }
    }

    else if (v20 < v13 && a1 < v20)
    {
      goto LABEL_4;
    }

    v14 = v16;
    v23 = v16 * a1;
    if (v16 * a1 < v17 || *(v30 + 48) + v16 * a1 >= (*(v30 + 48) + v17 + v16))
    {
      swift_arrayInitWithTakeFrontToBack();
      a1 = v10;
    }

    else
    {
      a1 = v10;
      if (v23 != v17)
      {
        swift_arrayInitWithTakeBackToFront();
        a1 = v10;
      }
    }

LABEL_5:
    v10 = (v10 + 1) & v15;
    v8 = v28;
  }

  while (((*(v28 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  v7 = v30;
LABEL_22:

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
LABEL_24:
  v24 = *(v7 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v26;
    ++*(v7 + 36);
  }

  return result;
}

Swift::Int sub_1007454C4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100743EB4();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100744954();
      goto LABEL_16;
    }

    sub_100744BF0();
  }

  v10 = *v4;
  sub_100937668();
  sub_100936BC8();
  result = sub_1009376C8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100937598();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1009375C8();
  __break(1u);
  return result;
}

void sub_100745644(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_100744114(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_100744AB0(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_100744E28(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_100937028(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_100014170(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_100937038();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1009375C8();
  __break(1u);
}

void *sub_1007457D4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100747BAC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100745864(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100706B30(&qword_100CB3A70);
  result = sub_100937438();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    v20 = v17;

    result = sub_100937028(v19);
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    *(*(v9 + 56) + 8 * v24) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
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

void sub_100745A80(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_100937358() == *(a4 + 36))
    {
      sub_100937368();
      sub_100014170(0, &qword_100CBA2E0);
      swift_dynamicCast();
      sub_1007417B0(v6);
      v5 = v4;

      if (v5)
      {
        sub_100937338();
        sub_100937388();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1009370E8();
}

void sub_100745BE4(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100937328();
      sub_100014170(0, &qword_100CBA2E0);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_100937358() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_100937368();
  sub_100014170(0, &qword_100CBA2E0);
  swift_dynamicCast();
  v5 = sub_1007417B0(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

void sub_100745D74(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100937178();
      type metadata accessor for IDSGroupEncryptionControllerMember();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for IDSGroupEncryptionControllerMember();
    if (sub_100937138() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_100937148();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_100937028(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_100937038();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100745F74@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    return sub_100748684(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  }

LABEL_8:
  __break(1u);
  return result;
}

_OWORD *sub_100746024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v28 = &type metadata for Data;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  v10 = *a6;
  v12 = sub_1000136E4(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 32 * v12);
      sub_100012970(v19);
      return sub_100308C74(&v27, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    sub_1007438D4(&qword_100CB3A50, &unk_1009AD3E0, sub_100748C94);
    goto LABEL_7;
  }

  sub_100742E70(v15, a5 & 1, &qword_100CB3A50, &unk_1009AD3E0, sub_100748C94);
  v21 = sub_1000136E4(a3, a4);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1009375D8();
    __break(1u);
    return result;
  }

  v12 = v21;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_100729284(&v27, &type metadata for Data);
  __chkstk_darwin(v23);
  v25 = (&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_1007466C4(v12, a3, a4, *v25, v25[1], v18);

  return sub_100012970(&v27);
}

_OWORD *sub_100746250(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v23 = a1;
  v24 = &type metadata for UInt64;
  v9 = *a5;
  v11 = sub_1000136E4(a2, a3);
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
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      sub_100012970(v18);
      return sub_100308C74(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1007438D4(&qword_100CB3A50, &unk_1009AD3E0, sub_100748C94);
    goto LABEL_7;
  }

  sub_100742E70(v14, a4 & 1, &qword_100CB3A50, &unk_1009AD3E0, sub_100748C94);
  v20 = sub_1000136E4(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1009375D8();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_100729284(&v23, &type metadata for UInt64);
  sub_100746640(v11, a2, a3, *v22, v17);

  return sub_100012970(&v23);
}

_OWORD *sub_1007463F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t *a6)
{
  v12 = sub_100706B30(a6);
  v31 = v12;
  *&v30 = a1;
  v13 = *a5;
  v15 = sub_1000136E4(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      sub_100012970(v22);
      return sub_100308C74(&v30, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_1007438D4(&qword_100CB3A50, &unk_1009AD3E0, sub_100748C94);
    goto LABEL_7;
  }

  sub_100742E70(v18, a4 & 1, &qword_100CB3A50, &unk_1009AD3E0, sub_100748C94);
  v24 = sub_1000136E4(a2, a3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1009375D8();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = sub_100729284(&v30, v12);
  __chkstk_darwin(v26);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_100746748(v15, a2, a3, *v28, v21, a6);

  return sub_100012970(&v30);
}

_OWORD *sub_100746640(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = &type metadata for UInt64;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100308C74(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1007466C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for Data;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_100308C74(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_100746748(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v17 = sub_100706B30(a6);
  *&v16 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  result = sub_100308C74(&v16, (a5[7] + 32 * a1));
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

void sub_1007467F0(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_100937398();
      sub_100014170(0, &qword_100CBA2E0);
      swift_dynamicCast();
      type metadata accessor for IDSGroupPushMaterialExchangeMember(0);
      swift_dynamicCast();
      *a1 = v11;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_100937358() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_100937368();
  sub_100014170(0, &qword_100CBA2E0);
  swift_dynamicCast();
  a2 = sub_1007417B0(v11);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  *a1 = *(*(a5 + 56) + 8 * a2);
  v10;
}

void *sub_1007469C8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100706B30(&qword_100CB3A68);
  v3 = sub_100937438();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_10072517C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_10072517C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100746AD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB3A70);
    v3 = sub_100937438();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1007417B0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100746BE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB3A50);
    v3 = sub_100937438();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012D50(v4, &v13, &qword_100CB36F8);
      v5 = v13;
      v6 = v14;
      result = sub_1000136E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100308C74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100746D18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CBB130);
    v3 = sub_100937438();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012D50(v4, &v13, &qword_100CB36E8);
      v5 = v13;
      v6 = v14;
      result = sub_1000136E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100308C74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_100746E48(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100014170(0, &qword_100CBA2E0);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    result = sub_100936E38();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = IDSURI_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100937268();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100741A18(&v9, v7, &qword_100CBA2E0, IDSURI_ptr, &qword_100CB3A78, &unk_1009B0C80);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1009373F8();
  }

  v5 = result;
  v4 = sub_1009373F8();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100746FD4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100014170(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100747044()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  v3 = sub_1009364B8();
  v4 = sub_100936F18();

  v60 = v2;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1;
    v6 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v6 = 136315650;
    *(v6 + 4) = sub_10001273C(0xD000000000000019, 0x8000000100AFFCC0, v67);
    *(v6 + 12) = 2080;
    swift_beginAccess();
    type metadata accessor for IDSGroupPushMaterialExchangeParticipant();

    v7 = sub_100936AA8();
    v9 = v8;

    v10 = sub_10001273C(v7, v9, v67);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2080;
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    sub_1007477CC(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
    v11 = sub_100936E28();
    v13 = sub_10001273C(v11, v12, v67);

    *(v6 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: updating active participants from %s to:%s)", v6, 0x20u);
    swift_arrayDestroy();

    v1 = v5;
  }

  v61 = sub_1007469C8(&_swiftEmptyArrayStorage);
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100937118();
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    sub_1007477CC(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
    sub_100936E58();
    v1 = v67[0];
    v14 = v67[1];
    v15 = v67[2];
    v16 = v67[3];
    v17 = v67[4];
  }

  else
  {
    v18 = -1 << *(v1 + 32);
    v14 = v1 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v1 + 56);

    v16 = 0;
  }

  v21 = (v15 + 64) >> 6;
  v63 = v14;
  v64 = v1;
  v62 = v21;
  while (2)
  {
    v22 = v16;
    while (1)
    {
      if (v1 < 0)
      {
        v27 = sub_100937198();
        if (!v27 || (v67[7] = v27, type metadata accessor for IDSGroupEncryptionControllerParticipant(0), swift_dynamicCast(), v26 = v66[0], v16 = v22, v25 = v17, !v66[0]))
        {
LABEL_37:
          sub_100308C6C();
          v57 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_participantsById;
          swift_beginAccess();
          *&v60[v57] = v61;
        }
      }

      else
      {
        v23 = v22;
        v24 = v17;
        v16 = v22;
        if (!v17)
        {
          while (1)
          {
            v16 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v16 >= v21)
            {
              goto LABEL_37;
            }

            v24 = *(v14 + 8 * v16);
            ++v23;
            if (v24)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          goto LABEL_39;
        }

LABEL_18:
        v25 = (v24 - 1) & v24;
        v26 = *(*(v1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v24)))));
        if (!v26)
        {
          goto LABEL_37;
        }
      }

      v65 = v25;
      v28 = &v26[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_allocatedURI];
      v29 = objc_allocWithZone(IDSURI);
      v30 = sub_100936B28();
      v31 = [v29 initWithPrefixedURI:v30];

      if (v31)
      {
        break;
      }

      v32 = v26;
      v33 = sub_1009364B8();
      v34 = sub_100936F18();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v66[0] = swift_slowAlloc();
        *v35 = 136315650;
        *(v35 + 4) = sub_10001273C(0xD000000000000019, 0x8000000100AFFCC0, v66);
        *(v35 + 12) = 2048;
        *(v35 + 14) = *&v32[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID];

        *(v35 + 22) = 2080;
        v36 = *v28;
        v37 = v28[1];

        v38 = sub_10001273C(v36, v37, v66);

        *(v35 + 24) = v38;
        _os_log_impl(&_mh_execute_header, v33, v34, "%s: participant %llu has no URI:%s)", v35, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v22 = v16;
      v1 = v64;
      v17 = v65;
      v21 = v62;
      v14 = v63;
    }

    v39 = *&v26[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID];
    v40 = *&v26[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken];
    v59 = sub_10073E6B8(v40, v31, v39);

    v41 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66[0] = v61;
    v44 = sub_10072517C(v39);
    v45 = v61[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v48 = v43;
    if (v61[3] >= v47)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v43 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        sub_100743778();
        v41 = v66[0];
        v61 = v66[0];
        if ((v48 & 1) == 0)
        {
          break;
        }
      }

      goto LABEL_32;
    }

    sub_100742C00(v47, isUniquelyReferenced_nonNull_native);
    v49 = v39;
    v50 = v39;
    v51 = v66[0];
    v52 = sub_10072517C(v50);
    if ((v48 & 1) != (v53 & 1))
    {
      goto LABEL_41;
    }

    v44 = v52;
    v41 = v51;
    v39 = v49;
    v61 = v41;
    if (v48)
    {
LABEL_32:
      *(*(v41 + 56) + 8 * v44) = v59;

LABEL_36:
      v14 = v63;
      v1 = v64;
      v21 = v62;
      v17 = v65;
      continue;
    }

    break;
  }

  *(v41 + 8 * (v44 >> 6) + 64) |= 1 << v44;
  *(v61[6] + 8 * v44) = v39;
  *(v61[7] + 8 * v44) = v59;

  v54 = v61[2];
  v55 = __OFADD__(v54, 1);
  v56 = v54 + 1;
  if (!v55)
  {
    v61[2] = v56;
    goto LABEL_36;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1009375D8();
  __break(1u);
  return result;
}

uint64_t sub_1007477CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100747820(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100936E38();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1007418C8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1007478B8(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100014170(0, &qword_100CB34A0);
    sub_100746FD4(&qword_100CBA5A0, &qword_100CB34A0);
    result = sub_100936E38();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = IDSPushToken_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100937268();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100741A18(&v9, v7, &qword_100CB34A0, IDSPushToken_ptr, &unk_100CB3680, &unk_1009AD130);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1009373F8();
  }

  v5 = result;
  v4 = sub_1009373F8();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

Swift::Int sub_100747A44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB4F90);
    v3 = sub_100937228();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_100937668();

      sub_100936BC8();
      result = sub_1009376C8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_100937598();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100747BAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  v19 = result;
  v20 = 0;
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
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);

    v16 = a4(v15, v14);

    if (v16)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_100745864(v19, a2, v20, a3);
      }
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
      return sub_100745864(v19, a2, v20, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100747D14(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_100747BAC(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1007457D4(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

Swift::Int sub_100747E94(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = &_swiftEmptyDictionarySingleton;
    sub_100937318();
    v4 = sub_1009373B8();
    if (v4)
    {
      v5 = v4;
      sub_100014170(0, &qword_100CBA2E0);
      v6 = v5;
      do
      {
        v20 = v6;
        swift_dynamicCast();
        type metadata accessor for IDSGroupPushMaterialExchangeMember(0);
        swift_dynamicCast();
        if (!v21)
        {
          break;
        }

        v7 = v21;

        v8 = a2(v7, v20);

        if (v8)
        {
          v9 = *(&_swiftEmptyDictionarySingleton + 2);
          if (*(&_swiftEmptyDictionarySingleton + 3) <= v9)
          {
            sub_100742990(v9 + 1, 1);
          }

          v3 = &_swiftEmptyDictionarySingleton;
          result = sub_100937028(*(&_swiftEmptyDictionarySingleton + 5));
          v11 = &_swiftEmptyDictionarySingleton + 64;
          v12 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
          v13 = result & ~v12;
          v14 = v13 >> 6;
          if (((-1 << v13) & ~*(&_swiftEmptyDictionarySingleton + (v13 >> 6) + 8)) != 0)
          {
            v15 = __clz(__rbit64((-1 << v13) & ~*(&_swiftEmptyDictionarySingleton + (v13 >> 6) + 8))) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v16 = 0;
            v17 = (63 - v12) >> 6;
            do
            {
              if (++v14 == v17 && (v16 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v18 = v14 == v17;
              if (v14 == v17)
              {
                v14 = 0;
              }

              v16 |= v18;
              v19 = *&v11[8 * v14];
            }

            while (v19 == -1);
            v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          }

          *&v11[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
          *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v15) = v7;
          *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v15) = v20;
          ++*(&_swiftEmptyDictionarySingleton + 2);
        }

        else
        {
        }

        v6 = sub_1009373B8();
      }

      while (v6);
    }

    sub_100308C6C();
  }

  else
  {
    v3 = sub_100747D14(a1, a2);
  }

  return v3;
}

void sub_10074812C()
{
  v1 = (type metadata accessor for IDSGroupEncryptionPublicIdentity(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v20 = v0 + v2;
  v21 = *(v3 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_pushHandler);
  v22 = *(v0 + ((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_100706B30(&unk_100CBB120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AD150;
  *(inited + 32) = sub_100936B38();
  *(inited + 40) = v7;
  v8 = *(v3 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_groupID);
  v9 = *(v3 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_groupID + 8);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 80) = sub_100936B38();
  *(inited + 88) = v10;
  v11 = v3 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_sessionID;
  v12 = *(v3 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_sessionID);
  v13 = *(v11 + 8);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 128) = sub_100936B38();
  *(inited + 136) = v14;
  *(inited + 168) = &type metadata for Data;
  *(inited + 144) = v4;
  *(inited + 152) = v5;
  *(inited + 176) = sub_100936B38();
  *(inited + 184) = v15;
  LOBYTE(v1) = v20[v1[10]];

  sub_100715738(v4, v5);
  v16 = sub_10089CA40(v1);
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v16;
  sub_100746D18(inited);
  swift_setDeallocating();
  sub_100706B30(&qword_100CB36E8);
  swift_arrayDestroy();
  isa = sub_100936A58().super.isa;

  v18 = sub_100936B28();
  v19 = sub_100936B28();
  [v21 sendPreKeyMessage:isa toDestination:v22 forGroup:v18 sessionID:v19];
}

uint64_t sub_1007483B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100715738(a1, a2);
  }

  return a1;
}

unint64_t sub_1007483C4()
{
  result = qword_100CB4AB0;
  if (!qword_100CB4AB0)
  {
    sub_1007147D0(&unk_100CB3550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4AB0);
  }

  return result;
}

void sub_10074847C()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_pushHandler);
  isa = sub_100936A58().super.isa;
  v3 = sub_100936B28();
  v4 = sub_100936B28();
  [v2 sendKeyMaterialRequestMessage:isa toDestination:v1 forGroup:v3 sessionID:v4];
}

uint64_t sub_10074854C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB36B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1007485BC()
{
  v1 = *(sub_100706B30(&qword_100CB36B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v2 + v6 + 8) & ~v2;
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = *(v0 + v5);
  v12 = *(v0 + v6);
  v13 = *(v0 + ((v4 + v7) & 0xFFFFFFFFFFFFFFF8));

  sub_10073D13C(v8, v9, v10, v0 + v3, v11, v12, v0 + v7, v13);
}

uint64_t sub_100748684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007486EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100748754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100748814()
{
  sub_1007489B4(319, &unk_100CB3748, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1007488F8()
{
  sub_1007489B4(319, &unk_100CB3988, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1007489B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100937058();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100748A10()
{
  sub_1009364D8();
  if (v0 <= 0x3F)
  {
    sub_1007489B4(319, &unk_100CB3988, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100748B3C()
{
  v1 = *(sub_100706B30(&qword_100CB36B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + v7 + 8) & ~v2;
  v9 = (v4 + v8) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);
  v13 = *(v0 + v9);
  v14 = *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10073D6E8(v0 + v3, v10, v11, v12, v0 + v8, v13, v14);
}

uint64_t type metadata accessor for IDSGroupEncryptionKeyMaterialContent()
{
  result = qword_100CC0380;
  if (!qword_100CC0380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100748D30()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v3 = UUID.getData.getter();
  v5 = sub_100749A5C(v3, v4);
  if (v5[2] == 16)
  {
    v6 = *(v5 + 38);

    if (!v6)
    {
      sub_100937248(190);
      v12._countAndFlagsBits = 0xD00000000000002DLL;
      v12._object = 0x8000000100AFFE20;
      sub_100936C08(v12);
      if (*v1)
      {
        v7._countAndFlagsBits = 1702195828;
      }

      else
      {
        v7._countAndFlagsBits = 0x65736C6166;
      }

      if (*v1)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      v7._object = v8;
      sub_100936C08(v7);

      v13._countAndFlagsBits = 0x203A6469202CLL;
      v13._object = 0xE600000000000000;
      sub_100936C08(v13);
      sub_1009360A8();
      sub_10074AA80(&qword_100CB2DA8, &type metadata accessor for UUID);
      v14._countAndFlagsBits = sub_100937548();
      sub_100936C08(v14);

      v15._object = 0x8000000100AFFEB0;
      v15._countAndFlagsBits = 0xD000000000000010;
      sub_100936C08(v15);
      sub_100749544();
      sub_100706B30(&qword_100CB3A98);
      v16._countAndFlagsBits = sub_100936B88();
      sub_100936C08(v16);

      v17._countAndFlagsBits = 0x3A746C6173202C5DLL;
      v17._object = 0xE900000000000020;
      sub_100936C08(v17);
      v18._countAndFlagsBits = sub_100935E08();
      sub_100936C08(v18);

      v19._countAndFlagsBits = 0x203A79656B202CLL;
      v19._object = 0xE700000000000000;
      sub_100936C08(v19);
      v20._countAndFlagsBits = sub_100935E08();
      sub_100936C08(v20);

      v21._object = 0xEB00000000203A64;
      v21._countAndFlagsBits = 0x657461657263202CLL;
      sub_100936C08(v21);
      sub_100936038();
      sub_10074AA80(&qword_100CB3A88, &type metadata accessor for Date);
      v22._countAndFlagsBits = sub_100937548();
      sub_100936C08(v22);

      v23._countAndFlagsBits = 0x4970756F7267202CLL;
      v23._object = 0xEB00000000203A44;
      sub_100936C08(v23);
      sub_100936C08(*&v1[*(v2 + 36)]);
      v24._countAndFlagsBits = 0xD000000000000015;
      v24._object = 0x8000000100AFFE50;
      sub_100936C08(v24);
      v25._countAndFlagsBits = sub_100937548();
      sub_100936C08(v25);

      v26._countAndFlagsBits = 0xD000000000000011;
      v26._object = 0x8000000100AFFE70;
      sub_100936C08(v26);
      sub_100706B30(&qword_100CB3A90);
      v27._countAndFlagsBits = sub_100936B88();
      sub_100936C08(v27);

      v28._object = 0x8000000100AFFE90;
      v28._countAndFlagsBits = 0xD000000000000010;
      sub_100936C08(v28);
      v29._countAndFlagsBits = sub_100937548();
      sub_100936C08(v29);

      v30._countAndFlagsBits = 0x3A6C696B6D73202CLL;
      v30._object = 0xE900000000000020;
      sub_100936C08(v30);
      v31._countAndFlagsBits = sub_100937548();
      sub_100936C08(v31);

      return 0;
    }
  }

  else
  {
  }

  sub_100937248(171);
  v32._countAndFlagsBits = 0xD00000000000002DLL;
  v32._object = 0x8000000100AFFE20;
  sub_100936C08(v32);
  if (*v1)
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (*v1)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v10._object = v11;
  sub_100936C08(v10);

  v33._countAndFlagsBits = 0x203A6469202CLL;
  v33._object = 0xE600000000000000;
  sub_100936C08(v33);
  sub_1009360A8();
  sub_10074AA80(&qword_100CB2DA8, &type metadata accessor for UUID);
  v34._countAndFlagsBits = sub_100937548();
  sub_100936C08(v34);

  v35._countAndFlagsBits = 0x203A746C6173202CLL;
  v35._object = 0xE800000000000000;
  sub_100936C08(v35);
  v36._countAndFlagsBits = sub_100935E08();
  sub_100936C08(v36);

  v37._countAndFlagsBits = 0x203A79656B202CLL;
  v37._object = 0xE700000000000000;
  sub_100936C08(v37);
  v38._countAndFlagsBits = sub_100935E08();
  sub_100936C08(v38);

  v39._object = 0xEB00000000203A64;
  v39._countAndFlagsBits = 0x657461657263202CLL;
  sub_100936C08(v39);
  sub_100936038();
  sub_10074AA80(&qword_100CB3A88, &type metadata accessor for Date);
  v40._countAndFlagsBits = sub_100937548();
  sub_100936C08(v40);

  v41._countAndFlagsBits = 0x4970756F7267202CLL;
  v41._object = 0xEB00000000203A44;
  sub_100936C08(v41);
  sub_100936C08(*&v1[*(v2 + 36)]);
  v42._countAndFlagsBits = 0xD000000000000015;
  v42._object = 0x8000000100AFFE50;
  sub_100936C08(v42);
  v43._countAndFlagsBits = sub_100937548();
  sub_100936C08(v43);

  v44._countAndFlagsBits = 0xD000000000000011;
  v44._object = 0x8000000100AFFE70;
  sub_100936C08(v44);
  sub_100706B30(&qword_100CB3A90);
  v45._countAndFlagsBits = sub_100936B88();
  sub_100936C08(v45);

  v46._object = 0x8000000100AFFE90;
  v46._countAndFlagsBits = 0xD000000000000010;
  sub_100936C08(v46);
  v47._countAndFlagsBits = sub_100937548();
  sub_100936C08(v47);

  v48._countAndFlagsBits = 0x3A6C696B6D73202CLL;
  v48._object = 0xE900000000000020;
  sub_100936C08(v48);
  v49._countAndFlagsBits = sub_100937548();
  sub_100936C08(v49);

  return 0;
}

uint64_t sub_100749544()
{
  type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v0 = UUID.getData.getter();
  v2 = sub_100749A5C(v0, v1);
  if (v2[2] != 16)
  {
LABEL_5:

    return 0;
  }

  v3 = *(v2 + 38);

  if (!v3)
  {
    v4 = UUID.getData.getter();
    v6 = sub_100749A5C(v4, v5);
    if (v6[2] == 16)
    {
      v7 = *(v6 + 33);
      v8 = v7 & 0xF;
      v9 = (v7 >> 4) | (16 * *(v6 + 32));

      return v9 | (v8 << 32);
    }

    goto LABEL_5;
  }

  return 0;
}

void sub_100749640()
{
  v1 = v0;
  v2 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v48 - v3;
  v5 = sub_100706B30(&qword_100CB2D98);
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v9 = &v0[v8[7]];
  v11 = *v9;
  v10 = v9[1];
  v48 = v11;
  v49 = v10;
  v13 = v8[5];
  v12 = v8[6];
  v50 = v13;
  v14 = &v0[v12];
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_1009360A8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, &v1[v13], v17);
  v19 = *(v18 + 56);
  v53 = v7;
  v19(v7, 0, 1, v17);
  v20 = v8[8];
  v21 = &v1[v8[9]];
  v22 = *v21;
  v51 = *(v21 + 1);
  v52 = v22;
  v58 = *v1;
  v23 = sub_100936038();
  v24 = *(v23 - 8);
  v25 = &v1[v20];
  v26 = v48;
  (*(v24 + 16))(v4, v25, v23);
  v27 = *(v24 + 56);
  v59 = v4;
  v27(v4, 0, 1, v23);
  v56 = *&v1[v8[10]];
  v28 = &v1[v8[13]];
  if (v28[8])
  {
    v29 = 0;
  }

  else
  {
    v29 = *v28;
  }

  v57 = v29;
  v30 = v49;
  sub_100715738(v26, v49);
  v54 = v16;
  v55 = v15;
  sub_100715738(v15, v16);
  v31 = UUID.getData.getter();
  v33 = sub_100749A5C(v31, v32);
  if (v33[2] == 16)
  {
    v34 = *(v33 + 38);

    if (v34)
    {
      LODWORD(v50) = 0;
    }

    else
    {
      LODWORD(v50) = v1[v8[12]];
    }
  }

  else
  {

    LODWORD(v50) = 0;
  }

  v35 = v53;
  v36.super.isa = sub_100935E78().super.isa;
  sub_1007156D8(v26, v30);
  v38 = v54;
  v37 = v55;
  v39.super.isa = sub_100935E78().super.isa;
  sub_1007156D8(v37, v38);
  if ((*(v18 + 48))(v35, 1, v17) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100936058().super.isa;
    (*(v18 + 8))(v35, v17);
  }

  v41 = sub_100936B28();
  v42 = v59;
  if ((*(v24 + 48))(v59, 1, v23) == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_100935F58().super.isa;
    (*(v24 + 8))(v42, v23);
  }

  v44 = objc_allocWithZone(IDSGroupEncryptionKeyMaterial);
  LOBYTE(v47) = v50;
  LODWORD(v46) = v56;
  v45 = [v44 initWithKeyMaterial:v36.super.isa keySalt:v39.super.isa keyIndex:isa groupID:v41 isGeneratedLocally:v58 createdAt:v43 generationCounter:v46 participantID:v57 shortKeyIndexLength:v47];

  if (!v45)
  {
    __break(1u);
  }
}

void *sub_100749A5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100935EE8();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1007156D8(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_100712F20(v10, 0);
      v14 = sub_100935E18();
      sub_1007156D8(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100749BD8()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v3 = UUID.getData.getter();
  v5 = sub_100749A5C(v3, v4);
  if (v5[2] == 16)
  {
    v6 = *(v5 + 38);

    if (!v6)
    {
      v8 = v1 + *(v2 + 52);
      if (*(v8 + 8) == 1)
      {
        result = sub_100749544();
        if ((v10 & 1) == 0)
        {
          *v8 = v9;
          *(v8 + 8) = 0;
        }
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_100749C7C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100936D28();
  *(v6 + 16) = 16;
  *(v6 + 34) = 0;
  v7 = (v6 + 34);
  *(v6 + 40) = 0;
  if ((a1 & 0xFFFFF000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v6;
  *(v6 + 32) = a1 >> 4;
  *(v6 + 33) = BYTE4(a1) & 0xF | (16 * a1);
  v16 = bswap64(a2);
  v17 = &_swiftEmptyArrayStorage;
  sub_100749E80(&v16, &v17);
  v9 = v17;
  if (*(v17 + 2) != 8)
  {

    v14 = sub_1009360A8();
    (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  v10 = *(v8 + 16);
  if (v10 < 3)
  {
    goto LABEL_15;
  }

  *v7 = v17[32];
  if (v10 == 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v8 + 35) = v9[33];
  if (v10 < 5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v8 + 36) = v9[34];
  if (v10 == 5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v8 + 37) = v9[35];
  if (v10 < 8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v8 + 39) = v9[36];
  if (v10 == 8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v8 + 40) = v9[37];
  if (v10 < 0xA)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  *(v8 + 41) = v9[38];
  if (v10 == 10)
  {
    goto LABEL_22;
  }

  *(v8 + 42) = v9[39];
  v11 = sub_10074A840(v8);
  v13 = v12;

  static UUID.initFrom(data:)(v11, v13, a3);
  sub_1007156D8(v11, v13);
}

uint64_t sub_100749E80(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v7 + 24) >> 1, v10 < v9))
  {
    if (v8 <= v9)
    {
      v11 = v8 + v6;
    }

    else
    {
      v11 = v8;
    }

    result = sub_100712F94(result, v11, 1, v7);
    v7 = result;
    v10 = *(result + 24) >> 1;
  }

  v12 = *(v7 + 16);
  v13 = v10 - v12;
  v14 = 0;
  if (v3 && v4 && v4 > v3 && v10 != v12)
  {
    if (v5 >= v13)
    {
      v14 = v10 - v12;
    }

    else
    {
      v14 = v5;
    }

    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v12 + 32), v3, v14);
    v3 += v14;
  }

  if (v14 < v6)
  {
    goto LABEL_34;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = *(v7 + 16);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    *(v7 + 16) = v17;
LABEL_24:
    if (v14 != v13 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v20 = *(v7 + 16);
  v23 = *v3;
  v21 = v3 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v7 + 24);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v20;
  }

  result = sub_100712F94((v24 > 1), v20 + 1, 1, v7);
  v7 = result;
  v25 = *(result + 24) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_37;
  }

LABEL_40:
  v26 = v20 + 32;
  while (1)
  {
    *(v7 + v26) = v22;
    if (v21 == v4)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 32)
    {
      v20 = v25;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v26 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t sub_10074A030@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v80 = a2;
  v5 = sub_1009360A8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100706B30(&qword_100CB2D98);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v69 - v14;
  __chkstk_darwin(v13);
  v17 = &v69 - v16;
  v78 = v5;
  v79 = v6;
  (*(v6 + 56))(&v69 - v16, 1, 1, v5);
  v18 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v19 = UUID.getData.getter();
  v21 = sub_100749A5C(v19, v20);
  if (v21[2] != 16)
  {

    goto LABEL_7;
  }

  v22 = *(v21 + 38);

  if (v22)
  {
LABEL_7:
    v77 = v12;
    v75 = v8;
    v74 = a1;
    type metadata accessor for IDSHKDFWrapper();
    v26 = UUID.getData.getter();
    v28 = v27;
    v29 = (sub_10074AD00)();
    v31 = v30;
    sub_1007156D8(v26, v28);
    static UUID.initFrom(data:)(v29, v31, v15);
    sub_1007156D8(v29, v31);
    goto LABEL_8;
  }

  v23 = sub_100749544();
  if ((v25 & 1) != 0 || HIDWORD(v23) >= 0xF)
  {
    v50 = v17;
    goto LABEL_13;
  }

  v77 = v12;
  v75 = v8;
  v74 = a1;
  sub_100749C7C(&_mh_execute_header + (v23 & 0xFFFFFFFFFLL), v24, v15);
LABEL_8:
  sub_10074A8F0(v17);
  sub_10074A958(v15, v17);
  type metadata accessor for IDSHKDFWrapper();
  v32 = &v3[v18[6]];
  v33 = *v32;
  v34 = v32[1];
  v35 = &v3[v18[9]];
  v36 = *v35;
  v37 = *(v35 + 1);
  v38 = sub_10074AD00(v33, v34, *v35, v37);
  v76 = v39;
  v40 = &v3[v18[7]];
  v41 = *v40;
  v42 = v40[1];
  v73 = v36;
  v43 = v3;
  v44 = sub_10074ACE4(v41, v42, v36, v37);
  v46 = v45;
  v47 = v77;
  sub_10074A9C8(v17, v77);
  v49 = v78;
  v48 = v79;
  if ((*(v79 + 48))(v47, 1, v78) == 1)
  {
    sub_10074A8F0(v17);
    sub_1007156D8(v38, v76);
    sub_1007156D8(v44, v46);
    v50 = v47;
LABEL_13:
    sub_10074A8F0(v50);
    return (*(*(v18 - 1) + 56))(v80, 1, 1, v18);
  }

  v70 = v44;
  v71 = v46;
  v72 = v37;
  v51 = v49;
  v52 = v75;
  v53 = v76;
  (*(v48 + 32))(v75, v47, v51);
  v54 = *v43;
  v55 = v80;
  (*(v48 + 16))(&v80[v18[5]], v52, v51);
  sub_100935FF8();
  (*(v48 + 8))(v52, v51);
  result = sub_10074A8F0(v17);
  v57 = *&v43[v18[11]];
  v58 = __OFADD__(v57, 1);
  v59 = v57 + 1;
  if (v58)
  {
    __break(1u);
  }

  else
  {
    v60 = v43[v18[12]];
    v61 = &v43[v18[13]];
    v62 = *v61;
    LOBYTE(v61) = v61[8];
    *v55 = v54;
    v63 = &v55[v18[6]];
    *v63 = v38;
    v63[1] = v53;
    v64 = &v55[v18[7]];
    v65 = v71;
    *v64 = v70;
    v64[1] = v65;
    v66 = &v55[v18[9]];
    v67 = v72;
    *v66 = v73;
    v66[1] = v67;
    *&v55[v18[10]] = v74;
    *&v55[v18[11]] = v59;
    v55[v18[12]] = v60;
    v68 = &v55[v18[13]];
    *v68 = v62;
    v68[8] = v61;
    (*(*(v18 - 1) + 56))(v55, 0, 1, v18);
  }

  return result;
}

uint64_t sub_10074A4F8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, int a11, int a12, char a13, uint64_t a14, char a15)
{
  *a9 = a1;
  v21 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v22 = v21[5];
  v23 = sub_1009360A8();
  (*(*(v23 - 8) + 32))(&a9[v22], a2, v23);
  v24 = &a9[v21[6]];
  *v24 = a3;
  v24[1] = a4;
  v25 = &a9[v21[7]];
  *v25 = a5;
  v25[1] = a6;
  v26 = v21[8];
  v27 = sub_100936038();
  result = (*(*(v27 - 8) + 32))(&a9[v26], a7, v27);
  v29 = &a9[v21[9]];
  *v29 = a8;
  v29[1] = a10;
  *&a9[v21[10]] = a11;
  *&a9[v21[11]] = a12;
  a9[v21[12]] = a13;
  v30 = &a9[v21[13]];
  *v30 = a14;
  v30[8] = a15 & 1;
  return result;
}

Swift::Int sub_10074A678()
{
  sub_100937668();
  sub_1009360A8();
  sub_10074AA80(&qword_100CB34E0, &type metadata accessor for UUID);
  sub_100936AD8();
  return sub_1009376C8();
}

uint64_t sub_10074A714()
{
  sub_1009360A8();
  sub_10074AA80(&qword_100CB34E0, &type metadata accessor for UUID);
  return sub_100936AD8();
}

Swift::Int sub_10074A794()
{
  sub_100937668();
  sub_1009360A8();
  sub_10074AA80(&qword_100CB34E0, &type metadata accessor for UUID);
  sub_100936AD8();
  return sub_1009376C8();
}

uint64_t sub_10074A840(uint64_t a1)
{
  v9 = sub_100706B30(&qword_100CB3B48);
  v10 = sub_10074AC80();
  v8[0] = a1;
  v2 = sub_1000226D4(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1007174E8(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100012970(v8);
  return v5;
}

uint64_t sub_10074A8F0(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB2D98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10074A958(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB2D98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074A9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB2D98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074AA80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for IDSGroupEncryptionKeyMaterialShortKIInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IDSGroupEncryptionKeyMaterialShortKIInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_10074AB48()
{
  sub_1009360A8();
  if (v0 <= 0x3F)
  {
    sub_100936038();
    if (v1 <= 0x3F)
    {
      sub_10074AC30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10074AC30()
{
  if (!qword_100CB3AF8)
  {
    v0 = sub_100937058();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB3AF8);
    }
  }
}

unint64_t sub_10074AC80()
{
  result = qword_100CB3B50;
  if (!qword_100CB3B50)
  {
    sub_1007147D0(&qword_100CB3B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3B50);
  }

  return result;
}

uint64_t sub_10074AD1C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1 || (v5 = a2 - a1, a2 == a1))
  {
    v6 = &_swiftEmptyArrayStorage;
LABEL_7:
    v9 = sub_10074A840(v6);
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
    return result;
  }

  result = sub_100712F20(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove((result + 32), a1, v5);
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Class sub_10074ADDC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100935EA8();
  v11 = v10;

  v12 = sub_100936B38();
  v14 = v13;

  v15 = a5(v9, v11, v12, v14);
  v17 = v16;

  sub_1007156D8(v9, v11);
  v18.super.isa = sub_100935E78().super.isa;
  sub_1007156D8(v15, v17);

  return v18.super.isa;
}

id sub_10074AEF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSHKDFWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10074AF24(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_100936638();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v19[-v13];
  v20 = a1;
  v21 = a2;
  sub_100715738(a1, a2);
  sub_100936628();

  result = sub_100716008(a3, a4);
  v20 = result;
  v21 = v16;
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v17)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_9:
    sub_1009366B8();
    sub_10074B324();
    sub_10074B37C();
    sub_100936658();
    sub_1007156D8(v20, v21);
    sub_100936618();
    v18 = *(v9 + 8);
    v18(v12, v8);
    v18(v14, v8);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_10074B138(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_100936638();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;

  result = sub_100716008(a3, a4);
  v16 = result;
  v17 = v13;
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v14)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_9:
    sub_1009366B8();
    sub_10074B324();
    sub_10074B37C();
    sub_100936648();
    sub_10001C35C(v16, v17);
    sub_100936618();
    (*(v9 + 8))(v11, v8);
    return v18;
  }

  __break(1u);
  return result;
}

unint64_t sub_10074B324()
{
  result = qword_100CB2DD0;
  if (!qword_100CB2DD0)
  {
    sub_1009366B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2DD0);
  }

  return result;
}

unint64_t sub_10074B37C()
{
  result = qword_100CB9DC0;
  if (!qword_100CB9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB9DC0);
  }

  return result;
}

uint64_t sub_10074B3E8()
{
  sub_100937248(59);
  v1._object = 0x8000000100AFFF10;
  v1._countAndFlagsBits = 0xD000000000000038;
  sub_100936C08(v1);
  v2._countAndFlagsBits = sub_100935E08();
  sub_100936C08(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  sub_100936C08(v3);
  return 0;
}

void *sub_10074B49C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = BYTE5(a2);
  sub_100706B30(&qword_100CB3B80);
  v7 = *(type metadata accessor for IDSGroupEncryptionMaterialData() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1009AC700;
  v10 = v9 + v8;
  *v10 = v6 & 1;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  swift_storeEnumTagMultiPayload();
  sub_100715738(a3, a4);
  v11 = sub_10074BAA4(v9);
  swift_setDeallocating();
  sub_10074BD04(v10);
  swift_deallocClassInstance();
  return v11;
}

void *sub_10074B5C4()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_100706B30(&qword_100CB3B80);
  v4 = *(type metadata accessor for IDSGroupEncryptionMaterialData() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1009AC700;
  v7 = v6 + v5;
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  swift_storeEnumTagMultiPayload();
  sub_100715738(v2, v3);
  v8 = sub_10074BAA4(v6);
  swift_setDeallocating();
  sub_10074BD04(v7);
  swift_deallocClassInstance();
  return v8;
}

uint64_t sub_10074B6E4()
{
  sub_100937248(59);
  v1._object = 0x8000000100AFFF10;
  v1._countAndFlagsBits = 0xD000000000000038;
  sub_100936C08(v1);
  v2._countAndFlagsBits = sub_100935E08();
  sub_100936C08(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  sub_100936C08(v3);
  return 0;
}

Swift::Int sub_10074B784()
{
  sub_100937668();
  sub_100719EB8();
  sub_100936AD8();
  sub_10074BD60();
  sub_100936AD8();
  sub_100935EB8();
  return sub_1009376C8();
}

uint64_t sub_10074B830()
{
  sub_100719EB8();
  sub_100936AD8();
  sub_10074BD60();
  sub_100936AD8();
  return sub_100935EB8();
}

Swift::Int sub_10074B8CC()
{
  sub_100937668();
  sub_100719EB8();
  sub_100936AD8();
  sub_10074BD60();
  sub_100936AD8();
  sub_100935EB8();
  return sub_1009376C8();
}

uint64_t sub_10074B974(unsigned int *a1, unsigned int *a2)
{
  v2 = 0x10000000000;
  if (*(a1 + 5))
  {
    v3 = 0x10000000000;
  }

  else
  {
    v3 = 0;
  }

  if (!*(a2 + 5))
  {
    v2 = 0;
  }

  return sub_10074B9C0(*a1 | (*(a1 + 4) << 32) | v3, *(a1 + 1), *(a1 + 2), *a2 | (*(a2 + 4) << 32) | v2, *(a2 + 1), *(a2 + 2));
}

uint64_t sub_10074B9C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_100719E64();
  if (sub_100936B18() & 1) != 0 && (sub_10074BF50(), (sub_100936B18()))
  {
    v10 = sub_10071CAE8(a2, a3, a5, a6);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void *sub_10074BAA4(uint64_t a1)
{
  v2 = type metadata accessor for IDSGroupEncryptionMaterialData();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100706B30(&qword_100CB2F78);
    v23 = v9;
    v10 = sub_100937228();
    v11 = 0;
    v12 = v10 + 56;
    v24 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    while (2)
    {
      sub_10074BFA4(v24 + v13 * v11, v8);
      sub_10074C008(&qword_100CB2F68);
      v14 = sub_100936AC8();
      v15 = ~(-1 << *(v10 + 32));
      for (i = v14 & v15; ; i = (i + 1) & v15)
      {
        v17 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v17) == 0)
        {
          break;
        }

        sub_10074BFA4(*(v10 + 48) + i * v13, v6);
        sub_10074C008(&qword_100CB2F70);
        v18 = sub_100936B18();
        sub_10074BD04(v6);
        if (v18)
        {
          sub_10074BD04(v8);
          goto LABEL_4;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v17;
      result = sub_10074C04C(v8, *(v10 + 48) + i * v13);
      v20 = *(v10 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (!v21)
      {
        *(v10 + 16) = v22;
LABEL_4:
        if (++v11 == v23)
        {
          return v10;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10074BD04(uint64_t a1)
{
  v2 = type metadata accessor for IDSGroupEncryptionMaterialData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10074BD60()
{
  result = qword_100CB3B88;
  if (!qword_100CB3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3B88);
  }

  return result;
}

unint64_t sub_10074BDB4(uint64_t a1)
{
  result = sub_10074BDDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10074BDDC()
{
  result = qword_100CB3B90;
  if (!qword_100CB3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3B90);
  }

  return result;
}

unint64_t sub_10074BE34()
{
  result = qword_100CB3B98;
  if (!qword_100CB3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3B98);
  }

  return result;
}

uint64_t sub_10074BE88(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_10074BEA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10074BEB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 5);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10074BEFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 5) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10074BF50()
{
  result = qword_100CB3BA0;
  if (!qword_100CB3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3BA0);
  }

  return result;
}

uint64_t sub_10074BFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionMaterialData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074C008(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IDSGroupEncryptionMaterialData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10074C04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionMaterialData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10074C150()
{
  sub_100937668();
  sub_100937678(0xFFFFFFFFFFFFFFFFLL);
  return sub_1009376C8();
}

Swift::Int sub_10074C1BC()
{
  sub_100937668();
  sub_100937678(0xFFFFFFFFFFFFFFFFLL);
  return sub_1009376C8();
}

uint64_t sub_10074C21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074CC48();
  v5 = sub_10074CC9C();

  return Error<>._code.getter(a1, a2, v4, v5);
}

id sub_10074C274(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = [a1 messageDictionary];
  sub_100936A78();

  v11 = [a1 topic];
  if (!v11)
  {
    sub_100936B38();
    v11 = sub_100936B28();
  }

  v12 = type metadata accessor for IncomingBatchMemberMessage();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR___IDSIncomingBatchMemberMessage_storePromise;
  *&v13[OBJC_IVAR___IDSIncomingBatchMemberMessage_storePromise] = 0;
  v13[OBJC_IVAR___IDSIncomingBatchMemberMessage_wasStored] = 0;
  v13[OBJC_IVAR___IDSIncomingBatchMemberMessage_wasProcessed] = 0;
  v15 = &v13[OBJC_IVAR___IDSIncomingBatchMemberMessage_batchIdentifier];
  *v15 = a2;
  v15[1] = a3;
  *&v13[v14] = a4;
  *&v13[OBJC_IVAR___IDSIncomingBatchMemberMessage_processPromise] = a5;
  v16 = a4;
  v17 = a5;
  isa = sub_100936A58().super.isa;

  v21.receiver = v13;
  v21.super_class = v12;
  v19 = objc_msgSendSuper2(&v21, "initWithMessageDictionary:topic:", isa, v11);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v19;
}

void sub_10074C4C8()
{
  if (*(v0 + OBJC_IVAR___IDSIncomingBatchMemberMessage_wasStored))
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR___IDSIncomingBatchMemberMessage_wasStored) = 1;
    v1 = *(v0 + OBJC_IVAR___IDSIncomingBatchMemberMessage_storePromise);
    if (v1)
    {
      v2 = v1;
      v3 = sub_100936B28();
      [v2 fulfillWithValue:v3];
    }
  }
}

id sub_10074C5E8(id result)
{
  if (*(v1 + OBJC_IVAR___IDSIncomingBatchMemberMessage_wasProcessed))
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR___IDSIncomingBatchMemberMessage_wasProcessed) = 1;
    return [*(v1 + OBJC_IVAR___IDSIncomingBatchMemberMessage_processPromise) fulfillWithValue:result];
  }

  return result;
}

id sub_10074C654()
{
  sub_100706B30(&unk_100CBB120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AC700;
  *(inited + 32) = sub_100936B38();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000032;
  *(inited + 56) = 0x8000000100AFFF80;
  sub_100746D18(inited);
  swift_setDeallocating();
  sub_10074CAA8(inited + 32);
  v3 = objc_allocWithZone(NSError);
  v4 = sub_100936B28();
  isa = sub_100936A58().super.isa;

  v6 = [v3 initWithDomain:v4 code:-1 userInfo:isa];

  if ((v0[OBJC_IVAR___IDSIncomingBatchMemberMessage_wasStored] & 1) == 0)
  {
    v7 = *&v0[OBJC_IVAR___IDSIncomingBatchMemberMessage_storePromise];
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = sub_100935D68();

      [v8 failWithError:v10];
    }
  }

  if ((v0[OBJC_IVAR___IDSIncomingBatchMemberMessage_wasProcessed] & 1) == 0)
  {
    v11 = *&v0[OBJC_IVAR___IDSIncomingBatchMemberMessage_processPromise];
    v12 = v6;
    v13 = v11;
    v14 = sub_100935D68();

    [v13 failWithError:v14];
  }

  v16.receiver = v0;
  v16.super_class = type metadata accessor for IncomingBatchMemberMessage();
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_10074C958()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for IncomingBatchMemberMessage();
  v2 = objc_msgSendSuper2(&v5, "description");
  v3 = sub_100936B38();

  sub_100937248(21);

  sub_100936C08(*&v1[OBJC_IVAR___IDSIncomingBatchMemberMessage_batchIdentifier]);

  v6._countAndFlagsBits = 0xD000000000000013;
  v6._object = 0x8000000100AFFFC0;
  sub_100936C08(v6);

  return v3;
}

uint64_t sub_10074CAA8(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB36E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10074CB14()
{
  result = qword_100CB3BD0;
  if (!qword_100CB3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3BD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncomingBatchMemberMessage.IncomingBatchMemberMessageError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for IncomingBatchMemberMessage.IncomingBatchMemberMessageError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10074CC48()
{
  result = qword_100CB3C00;
  if (!qword_100CB3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3C00);
  }

  return result;
}

unint64_t sub_10074CC9C()
{
  result = qword_100CB3C08;
  if (!qword_100CB3C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3C08);
  }

  return result;
}

uint64_t sub_10074CCF8()
{
  sub_100706B30(&qword_100CB3C48);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD830;
  v1 = sub_10074D024();
  *(v0 + 32) = &type metadata for SDPersistenceSchemaV0;
  *(v0 + 40) = v1;
  v2 = sub_10074D078();
  *(v0 + 48) = &type metadata for SDPersistenceSchemaV1;
  *(v0 + 56) = v2;
  v3 = sub_10074D0CC();
  *(v0 + 64) = &type metadata for SDPersistenceSchemaV2;
  *(v0 + 72) = v3;
  v4 = sub_10074D120();
  *(v0 + 80) = &type metadata for SDPersistenceSchemaV3;
  *(v0 + 88) = v4;
  v5 = sub_10074D174();
  *(v0 + 96) = &type metadata for SDPersistenceSchemaV4;
  *(v0 + 104) = v5;
  v6 = sub_10074D1C8();
  *(v0 + 112) = &type metadata for SDPersistenceSchemaV5;
  *(v0 + 120) = v6;
  v7 = sub_10074D21C();
  *(v0 + 128) = &type metadata for SDPersistenceSchemaV6;
  *(v0 + 136) = v7;
  return v0;
}

uint64_t sub_10074CDB8()
{
  sub_100706B30(&qword_100CB3C10);
  v0 = sub_100936798();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1009AD840;
  v4 = (v20 + v3);
  v5 = sub_10074D024();
  v6 = sub_10074D078();
  *v4 = &type metadata for SDPersistenceSchemaV0;
  v4[1] = v5;
  v4[2] = &type metadata for SDPersistenceSchemaV1;
  v4[3] = v6;
  v7 = enum case for MigrationStage.lightweight(_:);
  v8 = *(v1 + 104);
  v8(v4, enum case for MigrationStage.lightweight(_:), v0);
  v9 = (v4 + v2);
  v10 = sub_10074D0CC();
  *v9 = &type metadata for SDPersistenceSchemaV1;
  v9[1] = v6;
  v9[2] = &type metadata for SDPersistenceSchemaV2;
  v9[3] = v10;
  v8((v4 + v2), v7, v0);
  v11 = (v4 + 2 * v2);
  v12 = sub_10074D120();
  *v11 = &type metadata for SDPersistenceSchemaV2;
  v11[1] = v10;
  v11[2] = &type metadata for SDPersistenceSchemaV3;
  v11[3] = v12;
  v8(v11, v7, v0);
  v13 = (v4 + 3 * v2);
  v14 = sub_10074D174();
  *v13 = &type metadata for SDPersistenceSchemaV3;
  v13[1] = v12;
  v13[2] = &type metadata for SDPersistenceSchemaV4;
  v13[3] = v14;
  v8(v13, v7, v0);
  v15 = (v4 + 4 * v2);
  v16 = sub_10074D1C8();
  *v15 = &type metadata for SDPersistenceSchemaV4;
  v15[1] = v14;
  v15[2] = &type metadata for SDPersistenceSchemaV5;
  v15[3] = v16;
  v8(v15, v7, v0);
  v17 = (v4 + 5 * v2);
  v18 = sub_10074D21C();
  *v17 = &type metadata for SDPersistenceSchemaV5;
  v17[1] = v16;
  v17[2] = &type metadata for SDPersistenceSchemaV6;
  v17[3] = v18;
  v8(v17, v7, v0);
  return v20;
}

unint64_t sub_10074D024()
{
  result = qword_100CB3C18;
  if (!qword_100CB3C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3C18);
  }

  return result;
}

unint64_t sub_10074D078()
{
  result = qword_100CB3C20;
  if (!qword_100CB3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3C20);
  }

  return result;
}

unint64_t sub_10074D0CC()
{
  result = qword_100CB3C28;
  if (!qword_100CB3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3C28);
  }

  return result;
}

unint64_t sub_10074D120()
{
  result = qword_100CB3C30;
  if (!qword_100CB3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3C30);
  }

  return result;
}

unint64_t sub_10074D174()
{
  result = qword_100CB3C38;
  if (!qword_100CB3C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3C38);
  }

  return result;
}

unint64_t sub_10074D1C8()
{
  result = qword_100CB3C40;
  if (!qword_100CB3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3C40);
  }

  return result;
}

unint64_t sub_10074D21C()
{
  result = qword_100CBB230;
  if (!qword_100CBB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB230);
  }

  return result;
}

id sub_10074D270(uint64_t a1, char a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v21 = objc_allocWithZone(v10);
  *&v21[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_previousPreKeyExpirationDuration] = a5;
  *&v21[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_preKeyExpirationDuration] = a6;
  *&v21[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_preKeyRequestDelayDuration] = a7;
  *&v21[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_preKeyRequestTimeout] = a8;
  *&v21[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_mkmExpirationDuration] = a9;
  *&v21[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_mkmRollDuration] = a10;
  *&v21[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_numberOfCachedMKMsToBroadcast] = a1;
  v21[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_allowQUICMaterialExchange] = a2;
  v21[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_allowPushMaterialExchange] = a3;
  v21[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_isRatchetEnabled] = a4;
  v23.receiver = v21;
  v23.super_class = v10;
  return objc_msgSendSuper2(&v23, "init");
}

id sub_10074D46C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGroupEncryptionConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10074D4A0(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  if (!a1)
  {
    v34 = 0u;
    v35 = 0u;
    sub_10074DC88(&v34);
    v34 = 0u;
    v35 = 0u;
    sub_10074DC88(&v34);
    v34 = 0u;
    v35 = 0u;
    sub_10074DC88(&v34);
    v34 = 0u;
    v35 = 0u;
    sub_10074DC88(&v34);
    v34 = 0u;
    v35 = 0u;
    sub_10074DC88(&v34);
    v34 = 0u;
    v35 = 0u;
    v6 = 3.0;
    v7 = 1200.0;
    v8 = 3600.0;
    v9 = 420.0;
    v10 = 600.0;
LABEL_50:
    sub_10074DC88(&v34);
    v21 = 2;
    goto LABEL_51;
  }

  swift_unknownObjectRetain();
  v4 = sub_100936B28();
  v5 = [a1 objectForKey:v4];

  swift_unknownObjectRelease();
  if (v5)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = v32;
    }

    else
    {
      v9 = 420.0;
    }
  }

  else
  {
    sub_10074DC88(&v34);
    v9 = 420.0;
  }

  swift_unknownObjectRetain();
  v11 = sub_100936B28();
  v12 = [a1 objectForKey:v11];

  swift_unknownObjectRelease();
  if (v12)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = v32;
    }

    else
    {
      v8 = 3600.0;
    }
  }

  else
  {
    sub_10074DC88(&v34);
    v8 = 3600.0;
  }

  swift_unknownObjectRetain();
  v13 = sub_100936B28();
  v14 = [a1 objectForKey:v13];

  swift_unknownObjectRelease();
  if (v14)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = *&v32;
    }

    else
    {
      v6 = 3.0;
    }
  }

  else
  {
    sub_10074DC88(&v34);
    v6 = 3.0;
  }

  swift_unknownObjectRetain();
  v15 = sub_100936B28();
  v16 = [a1 objectForKey:v15];

  swift_unknownObjectRelease();
  if (v16)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v32;
    }

    else
    {
      v7 = 1200.0;
    }
  }

  else
  {
    sub_10074DC88(&v34);
    v7 = 1200.0;
  }

  swift_unknownObjectRetain();
  v17 = sub_100936B28();
  v18 = [a1 objectForKey:v17];

  swift_unknownObjectRelease();
  if (v18)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v32;
    }

    else
    {
      v10 = 600.0;
    }
  }

  else
  {
    sub_10074DC88(&v34);
    v10 = 600.0;
  }

  swift_unknownObjectRetain();
  v19 = sub_100936B28();
  v20 = [a1 objectForKey:v19];

  swift_unknownObjectRelease();
  if (v20)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
    goto LABEL_50;
  }

  if (swift_dynamicCast())
  {
    v21 = v32;
  }

  else
  {
    v21 = 2;
  }

LABEL_51:
  sub_1009362A8();
  v22 = sub_1009362B8();
  if ((v23 & 1) == 0)
  {
    v7 = v22;
    v10 = (v22 / 2);
  }

  if (!a1)
  {
    v34 = 0u;
    v35 = 0u;
LABEL_61:
    sub_10074DC88(&v34);
    goto LABEL_62;
  }

  swift_unknownObjectRetain();
  v24 = sub_100936B28();
  v25 = [a1 objectForKey:v24];

  swift_unknownObjectRelease();
  if (v25)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
    goto LABEL_61;
  }

  if (!swift_dynamicCast())
  {
LABEL_62:
    v26 = 64;
    goto LABEL_63;
  }

  v26 = v32;
LABEL_63:
  v27 = sub_1009362C8();
  v28 = (v27 == 2) | v27;
  v29 = sub_1009362C8();

  return (*(a3 + 160))(v26, v28 & 1, (v29 == 2) | (v29 & 1), (v21 == 2) | v21 & 1u, v9, v8, v6, 30.0, v7, v10);
}

uint64_t sub_10074DC88(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB4A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10074DCF0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10074DDF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10074DF00()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10074DFD8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10074E0DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10074E1E8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10074E2C0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10074E3C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10074E4D0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10074E5A8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_10074E6D4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10074E808()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10074E8E0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_10074EA0C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10074EB40()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10074EC18()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  return v0;
}

double sub_10074ED50@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10074EE90()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10074EF68(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936138();
  sub_10001C370(a1, a2);
}

uint64_t sub_10074F04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_100768830(a5, a6);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009368C8();
}

uint64_t sub_10074F118()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100768BC0();
  sub_100936898();

  return v0;
}

uint64_t sub_10074F230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100768BC0();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_10074F350()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10074F41C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3CC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10074F4EC()
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100768BC0();
  sub_1009368B8();
}

uint64_t sub_10074F59C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v17 = swift_allocObject();
  sub_10074F644(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

uint64_t sub_10074F644(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v11 = v10;
  v13._countAndFlagsBits = a3;
  v13._object = a4;
  *(v10 + 48) = sub_100706B30(&qword_100CB3D20);
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  *(v10 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v10 + 24));
  sub_100936858();
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v10 + 16) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 17) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v10 + 18) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3D00);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  sub_100768BC0();
  sub_1009366C8();

  *(v10 + 19) = 0;
  sub_100936158();
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 16) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 17) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1007483B0(a9, a10);
  sub_1009366D8();

  sub_10001C370(a9, a10);
  *(v10 + 18) = 0;

  sub_100936C08(v13);

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();
  sub_10001C370(a9, a10);

  return v10;
}

uint64_t sub_10074FC24(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB3D20);
  sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3D00);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  sub_100768BC0();
  sub_1009366C8();

  *(v1 + 19) = 0;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10074FF84()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100750088@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100750194()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936138();
}

uint64_t sub_10075026C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100750370@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10075047C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936138();
}

uint64_t sub_100750554()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100750658@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100750764()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936138();
}

uint64_t sub_10075083C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100750940@<X0>(_DWORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_100750A4C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936138();
}

uint64_t sub_100750B98()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100769364(&qword_100CB3D48);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100750CCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100769364(&qword_100CB3D48);
  sub_1009368A8();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100750E24()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936138();
}

uint64_t sub_100750EF0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100769364(&qword_100CB3D40);
  sub_1009368C8();
}

uint64_t sub_100750FC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 48) = sub_100706B30(&qword_100CB3D50);
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  *(v6 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v6 + 24));
  sub_100936858();
  *(v6 + 16) = 257;
  *(v6 + 18) = 1;
  sub_100936158();

  v8._countAndFlagsBits = a3;
  v8._object = a4;
  sub_100936C08(v8);
  sub_1000226D4((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3D28, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936138();

  swift_getKeyPath();
  sub_100936138();

  swift_getKeyPath();
  sub_100936138();

  return v6;
}