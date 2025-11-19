uint64_t sub_100802920()
{
  result = sub_100936168();
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

uint64_t sub_1008029F8()
{
  result = sub_100936168();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100802AE8()
{
  result = sub_100936168();
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

uint64_t sub_100802BB8()
{
  result = sub_100936168();
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

uint64_t sub_100802CAC()
{
  result = sub_100936168();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100802DA8()
{
  result = sub_100936168();
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

uint64_t sub_100802E6C()
{
  result = sub_100936168();
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

uint64_t sub_100802F34()
{
  result = sub_100936168();
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

uint64_t sub_100803010()
{
  result = sub_100936168();
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

unint64_t sub_1008030F0()
{
  result = qword_100CC9080[0];
  if (!qword_100CC9080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC9080);
  }

  return result;
}

unint64_t sub_100803148()
{
  result = qword_100CC9190;
  if (!qword_100CC9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9190);
  }

  return result;
}

unint64_t sub_1008031A0()
{
  result = qword_100CC9198[0];
  if (!qword_100CC9198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC9198);
  }

  return result;
}

uint64_t sub_100803384(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_1007FBEB8(a2, a3);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_1008034C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_1007FBEB8(a2, a3);
  sub_1009368C8();
}

uint64_t sub_100803E68(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100803ED4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_delegate;
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

uint64_t sub_100804120()
{
  v1 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_preKeyAckCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1008041B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_preKeyAckCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1008042B0()
{
  v1 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_localParticipantID;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100804348(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_localParticipantID;
  v5 = swift_beginAccess();
  v20 = v4;
  *(v2 + v4) = a1;
  v6 = (*((swift_isaMask & *v2) + 0x140))(v5);
  v7 = v6;
  v8 = 0;
  v9 = v6 + 64;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = v8;
LABEL_9:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = *(*(v7 + 56) + ((v14 << 9) | (8 * v15)));
    v17 = *(v2 + v20);
    v18 = *((swift_isaMask & *v16) + 0x1A0);
    v19 = v16;
    v18(v17);
  }

  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v14);
    ++v8;
    if (v12)
    {
      v8 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void (*sub_100804500(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_localParticipantID;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_100804588;
}

void sub_100804588(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if (a2)
  {
LABEL_13:

    free(v3);
  }

  else
  {
    v5 = (*((swift_isaMask & **(v3 + 24)) + 0x140))(v4);
    v6 = v5;
    v7 = 0;
    v8 = v5 + 64;
    v9 = -1;
    v10 = -1 << *(v5 + 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & *(v5 + 64);
    v12 = (63 - v10) >> 6;
    while (v11)
    {
      v13 = v7;
LABEL_10:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = *(*(v6 + 56) + ((v13 << 9) | (8 * v14)));
      v16 = *(*(v3 + 24) + *(v3 + 32));
      v17 = *((swift_isaMask & *v15) + 0x1A0);
      v18 = v15;
      v17(v16);
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v12)
      {

        goto LABEL_13;
      }

      v11 = *(v8 + 8 * v13);
      ++v7;
      if (v11)
      {
        v7 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_100804778()
{
  v1 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_endpointSubscription;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100804824(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_endpointSubscription;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100804924()
{
  v1 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_encryptionSequenceNumber;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1008049BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_encryptionSequenceNumber;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100804A6C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_needsKMCacheResetAfter;
  swift_beginAccess();
  return sub_100012D50(v1 + v3, a1, &qword_100CB4AC0);
}

uint64_t sub_100804AD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_needsKMCacheResetAfter;
  swift_beginAccess();
  sub_100817548(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100804CC0()
{
  v1 = (*((swift_isaMask & *v0) + 0x110))();
  os_unfair_lock_lock(v1 + 4);
  sub_100818D34(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

void sub_100804D78(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_100937378();
  }

  type metadata accessor for IDSGroupEncryptionControllerMember();
  sub_100014BB0(&qword_100CB2AC8, type metadata accessor for IDSGroupEncryptionControllerMember);
  v17[1] = sub_100936E38();
  if (v2)
  {
    v3 = sub_100937318();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v1 = v3 | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v4 = v1 + 64;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 64);
  }

  v10 = 0;
  v11 = (v5 + 64) >> 6;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!sub_1009373B8() || (swift_unknownObjectRelease(), swift_dynamicCast(), (v16 = v17[0]) == 0))
    {
LABEL_20:
      sub_100308C6C();
      return;
    }

LABEL_10:
    sub_10081425C(v17, v16, type metadata accessor for IDSGroupEncryptionControllerMember, &qword_100CB2DB8, &unk_1009AC5F0, type metadata accessor for IDSGroupEncryptionControllerMember);
  }

  v12 = v10;
  v13 = v6;
  v14 = v10;
  if (v6)
  {
LABEL_16:
    v15 = *(*(v1 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_20;
    }

    v16 = v15;
    v6 = (v13 - 1) & v13;
    v10 = v14;
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_20;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_100804FB0(uint64_t a1)
{
  type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
  sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
  v2 = 0;
  v9[1] = sub_100936E38();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_10081425C(v9, *(*(a1 + 56) + ((v7 << 9) | (8 * v8))), type metadata accessor for IDSGroupEncryptionControllerParticipant, &unk_100CB34B0, &unk_1009ACFF8, type metadata accessor for IDSGroupEncryptionControllerParticipant);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100805260()
{
  v1 = (*((swift_isaMask & *v0) + 0x110))();
  os_unfair_lock_lock(v1 + 4);
  sub_100818D34(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_100805318@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();

  result = a1(v4);
  *a2 = result;
  return result;
}

void sub_100805398()
{
  v1 = (*((swift_isaMask & *v0) + 0x158))();
  os_unfair_lock_lock(v1 + 4);
  sub_100817658(&v3);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v3;

  sub_100804FB0(v2);
}

uint64_t sub_10080546C()
{
  v1 = (*((swift_isaMask & *v0) + 0x258))();
  v2 = v1;
  if ((v1 & 0xC000000000000001) == 0)
  {
    v3 = 0;
    v25 = *(v1 + 32);
    v8 = 1;
    v4 = ((1 << v25) + 63) >> 6;
    if ((v25 & 0x3Fu) <= 0xD)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

  v3 = &_swiftEmptySetSingleton;
  v53 = &_swiftEmptySetSingleton;
  v4 = sub_100937118();
  v5 = sub_100937198();
  if (!v5)
  {
LABEL_22:

    return v3;
  }

  v6 = v5;
  v2 = type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
  v7 = v6;
  v8 = 1;
  while (1)
  {
    v51 = v7;
    v9 = swift_dynamicCast();
    LOBYTE(v51) = (*((swift_isaMask & *v52) + 0xB8))(v9) & 1;
    v50 = 1;
    sub_10071ADC4();
    if ((sub_100936B18() & 1) == 0)
    {
      v10 = (*((swift_isaMask & *v52) + 0xB0))();
      if (v10)
      {
        v11 = v10;
        v12 = (*((swift_isaMask & *v10) + 0x80))();

        if ((v12 & 1) == 0)
        {
          break;
        }
      }
    }

LABEL_5:
    v7 = sub_100937198();
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  v13 = v52;
  v14 = *(v3 + 16);
  if (*(v3 + 24) <= v14)
  {
    sub_100744114(v14 + 1, &unk_100CB34B0);
  }

  v3 = v53;
  v15 = sub_100937028(v53[5]);
  v16 = (v53 + 7);
  v17 = -1 << *(v53 + 32);
  v18 = v15 & ~v17;
  v19 = v18 >> 6;
  if (((-1 << v18) & ~v53[(v18 >> 6) + 7]) != 0)
  {
    v20 = __clz(__rbit64((-1 << v18) & ~v53[(v18 >> 6) + 7])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *&v16[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    *(*(v3 + 48) + 8 * v20) = v13;
    ++*(v3 + 16);
    goto LABEL_5;
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *&v16[8 * v19];
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_45:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_24:
    v44[1] = v3;
    v44[2] = v44;
    v45 = v4;
    __chkstk_darwin(v1);
    v46 = v44 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v26);
    v47 = 0;
    v3 = 0;
    v4 = v2 + 56;
    v27 = v8 << *(v2 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v2 + 56);
    v8 = (v27 + 63) >> 6;
    v49 = v2;
    while (v29)
    {
      v30 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_35:
      v33 = v30 | (v3 << 6);
      v34 = *(v2 + 48);
      v48 = v33;
      v35 = *(v34 + 8 * v33);
      v36 = *((swift_isaMask & *v35) + 0xB8);
      v37 = v35;
      LOBYTE(v53) = v36() & 1;
      LOBYTE(v52) = 1;
      sub_10071ADC4();
      if ((sub_100936B18() & 1) != 0 || (v38 = (*((swift_isaMask & *v37) + 0xB0))()) == 0)
      {

        v2 = v49;
      }

      else
      {
        v39 = v38;
        v40 = (*((swift_isaMask & *v38) + 0x80))();

        v2 = v49;
        if ((v40 & 1) == 0)
        {
          *&v46[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
          if (__OFADD__(v47++, 1))
          {
            __break(1u);
            return sub_1008152C0(v46, v45, v47, v2, &unk_100CB34B0);
          }
        }
      }
    }

    v31 = v3;
    while (1)
    {
      v3 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        return sub_1008152C0(v46, v45, v47, v2, &unk_100CB34B0);
      }

      v32 = *(v4 + 8 * v3);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v29 = (v32 - 1) & v32;
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  v43 = swift_slowAlloc();
  v3 = sub_100815230(v43, v4, v2, sub_100805A58);

  return v3;
}

uint64_t sub_100805A58(void **a1)
{
  v1 = *a1;
  (*((swift_isaMask & **a1) + 0xB8))();
  sub_10071ADC4();
  if ((sub_100936B18() & 1) != 0 || (v2 = (*((swift_isaMask & *v1) + 0xB0))()) == 0)
  {
    v5 = 0;
  }

  else
  {
    v3 = v2;
    v4 = (*((swift_isaMask & *v2) + 0x80))();

    v5 = v4 ^ 1;
  }

  return v5 & 1;
}

Class sub_100805B90(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
  sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
  v5.super.isa = sub_100936E08().super.isa;

  return v5.super.isa;
}

uint64_t sub_100805C38()
{
  v1 = (*((swift_isaMask & *v0) + 0x258))();
  v2 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = &_swiftEmptySetSingleton;
    v54 = &_swiftEmptySetSingleton;
    v4 = sub_100937118();
    v5 = sub_100937198();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
      v7 = v6;
      v2 = 1;
      v8 = &type metadata for IDSGroupEncryptionControllerParticipantType;
      do
      {
        v52 = v7;
        v9 = swift_dynamicCast();
        LOBYTE(v52) = (*((swift_isaMask & *v53) + 0xB8))(v9) & 1;
        v51 = 1;
        sub_10071ADC4();
        if (sub_100936B18() & 1) != 0 || (v10 = (*((swift_isaMask & *v53) + 0xB0))()) != 0 && (v11 = v10, v12 = (*((swift_isaMask & *v10) + 0x80))(), v11, (v12))
        {
          v13 = v53;
          v14 = v3[2];
          if (v3[3] <= v14)
          {
            sub_100744114(v14 + 1, &unk_100CB34B0);
          }

          v3 = v54;
          v15 = sub_100937028(v54[5]);
          v16 = (v54 + 7);
          v17 = -1 << *(v54 + 32);
          v18 = v15 & ~v17;
          v19 = v18 >> 6;
          if (((-1 << v18) & ~v54[(v18 >> 6) + 7]) != 0)
          {
            v20 = __clz(__rbit64((-1 << v18) & ~v54[(v18 >> 6) + 7])) | v18 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = 0;
            v22 = (63 - v17) >> 6;
            do
            {
              if (++v19 == v22 && (v21 & 1) != 0)
              {
                __break(1u);
                goto LABEL_45;
              }

              v23 = v19 == v22;
              if (v19 == v22)
              {
                v19 = 0;
              }

              v21 |= v23;
              v24 = *&v16[8 * v19];
            }

            while (v24 == -1);
            v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          }

          *&v16[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
          *(v3[6] + 8 * v20) = v13;
          ++v3[2];
        }

        else
        {
        }

        v7 = sub_100937198();
      }

      while (v7);
    }

    return v3;
  }

  v25 = *(v1 + 32);
  v8 = 1;
  v4 = ((1 << v25) + 63) >> 6;
  if ((v25 & 0x3Fu) > 0xD)
  {
    goto LABEL_46;
  }

  while (2)
  {
    v45 = &v45;
    v46 = v4;
    __chkstk_darwin(v1);
    v47 = &v45 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v47, v26);
    v48 = 0;
    v27 = 0;
    v4 = v2 + 56;
    v28 = v8 << *(v2 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v2 + 56);
    v8 = (v28 + 63) >> 6;
    while (v30)
    {
      v31 = __clz(__rbit64(v30));
      v50 = (v30 - 1) & v30;
LABEL_35:
      v34 = v31 | (v27 << 6);
      v35 = *(v2 + 48);
      v49 = v34;
      v36 = *(v35 + 8 * v34);
      v37 = *((swift_isaMask & *v36) + 0xB8);
      v38 = v36;
      LOBYTE(v54) = v37() & 1;
      LOBYTE(v53) = 1;
      sub_10071ADC4();
      if (sub_100936B18())
      {

        v30 = v50;
LABEL_40:
        *&v47[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
        if (__OFADD__(v48++, 1))
        {
          __break(1u);
          return sub_1008152C0(v47, v46, v48, v2, &unk_100CB34B0);
        }
      }

      else
      {
        v39 = (*((swift_isaMask & *v38) + 0xB0))();
        if (v39)
        {
          v40 = v39;
          v41 = (*((swift_isaMask & *v39) + 0x80))();

          v30 = v50;
          if (v41)
          {
            goto LABEL_40;
          }
        }

        else
        {

          v30 = v50;
        }
      }
    }

    v32 = v27;
    while (1)
    {
      v27 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v27 >= v8)
      {
        return sub_1008152C0(v47, v46, v48, v2, &unk_100CB34B0);
      }

      v33 = *(v4 + 8 * v27);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v50 = (v33 - 1) & v33;
        goto LABEL_35;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v44 = swift_slowAlloc();
  v3 = sub_100815230(v44, v4, v2, sub_100806240);

  return v3;
}

uint64_t sub_100806240(void **a1)
{
  v1 = *a1;
  (*((swift_isaMask & **a1) + 0xB8))();
  v2 = 1;
  sub_10071ADC4();
  if ((sub_100936B18() & 1) == 0)
  {
    v3 = (*((swift_isaMask & *v1) + 0xB0))();
    if (v3)
    {
      v4 = v3;
      v2 = (*((swift_isaMask & *v3) + 0x80))();
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_100806464()
{
  v1 = (*((swift_isaMask & *v0) + 0x258))();
  v2 = sub_1007D1D90(v1);

  v3 = sub_1007478B8(v2);

  return v3;
}

void *sub_1008064FC(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_100937158();
    result = &_swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v41 = &_swiftEmptyArrayStorage;
    sub_1009372B8();
    result = sub_100937108();
    v38 = result;
    v39 = v4;
    v40 = 1;
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v2 = *(a1 + 16);
    result = &_swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v41 = &_swiftEmptyArrayStorage;
    sub_1009372B8();
    v5 = sub_1009370C8();
    v6 = *(v1 + 36);
    v38 = v5;
    v39 = v6;
    v40 = 0;
  }

  result = objc_opt_self();
  v33 = v1;
  v34 = result;
  v7 = 0;
  v31 = v1 + 56;
  v30 = v1 + 64;
  v32 = v2;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v10 = v38;
    v11 = v40;
    v36 = v39;
    sub_1007D53C4(v38, v39, v40, v1);
    v13 = v12;
    v14 = [*&v12[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken] rawToken];
    v15 = sub_100935EA8();
    v17 = v16;

    v18 = sub_100936B28();
    isa = sub_100935E78().super.isa;
    v20 = [v34 destinationWithAlias:v18 pushToken:isa];

    sub_1007156D8(v15, v17);
    sub_100937298();
    sub_1009372C8();
    sub_1009372D8();
    result = sub_1009372A8();
    if (v35)
    {
      if (!v11)
      {
        goto LABEL_36;
      }

      v1 = v33;
      if (sub_100937128())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v32;
      sub_100706B30(&qword_100CB62D8);
      v8 = sub_100936E48();
      sub_1009371B8();
      result = v8(v37, 0);
      if (v7 == v32)
      {
LABEL_28:
        sub_1000152C8(v38, v39, v40);
        return v41;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_37;
      }

      v1 = v33;
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v21 = 1 << *(v33 + 32);
      if (v10 >= v21)
      {
        goto LABEL_32;
      }

      v22 = v10 >> 6;
      v23 = *(v31 + 8 * (v10 >> 6));
      if (((v23 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(v33 + 36) != v36)
      {
        goto LABEL_34;
      }

      v24 = v23 & (-2 << (v10 & 0x3F));
      if (v24)
      {
        v21 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v2 = v32;
      }

      else
      {
        v25 = v22 << 6;
        v26 = v22 + 1;
        v27 = (v30 + 8 * v22);
        v2 = v32;
        while (v26 < (v21 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1000152C8(v10, v36, 0);
            v21 = __clz(__rbit64(v28)) + v25;
            goto LABEL_27;
          }
        }

        result = sub_1000152C8(v10, v36, 0);
      }

LABEL_27:
      v38 = v21;
      v39 = v36;
      v40 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1008069E0()
{
  v1 = (*((swift_isaMask & *v0) + 0x260))();
  v2 = sub_1007D1D90(v1);

  v3 = sub_1007478B8(v2);

  return v3;
}

uint64_t sub_100806B80()
{
  v1 = (*((swift_isaMask & *v0) + 0x268))();
  v2 = sub_1007D1D90(v1);

  v3 = sub_1007478B8(v2);

  return v3;
}

uint64_t sub_100806CB8(void *a1)
{
  v3 = sub_100706B30(&qword_100CB2AA0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v22 - v5;
  v7 = (*((swift_isaMask & *v1) + 0x140))(v4);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  if (v10)
  {
    v11 = __clz(__rbit64(v10));
LABEL_9:
    v15 = *(*(v7 + 56) + 8 * v11);
    v16 = *((swift_isaMask & **&v15[*a1]) + 0x118);
    v17 = v15;
    v16();
    v18 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) != 1)
    {
      sub_100749640();
      v20 = v19;

      sub_100818580(v6, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      return v20;
    }

    sub_100013814(v6, &qword_100CB2AA0);
  }

  else
  {
    v12 = ((v8 + 63) >> 6) - 1;
    v13 = 72;
    while (v12)
    {
      v14 = *(v7 + v13);
      --v12;
      v10 -= 64;
      v13 += 8;
      if (v14)
      {
        v11 = __clz(__rbit64(v14)) - v10;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

id sub_100806EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a2;
  v47 = a6;
  v48 = a8;
  v45 = a4;
  v46 = a5;
  v43 = a1;
  v44 = a3;
  v49 = a9;
  v50 = a7;
  v40 = sub_100936F78();
  v10 = *(v40 - 8);
  __chkstk_darwin(v40);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100936F38();
  __chkstk_darwin(v13);
  v14 = sub_100936528();
  __chkstk_darwin(v14 - 8);
  v15 = objc_allocWithZone(v9);
  sub_1007C9A6C(0);
  sub_1007C9A6C(1);
  v39 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_q;
  v16 = sub_100014170(0, &qword_100CB3510);
  v38[0] = "5IDSQualifiedContactsCount";
  v38[1] = v16;
  sub_100936508();
  v52 = &_swiftEmptyArrayStorage;
  sub_100014BB0(&qword_100CB2AB8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100706B30(&unk_100CB3520);
  sub_10071499C(&qword_100CB2AC0, &unk_100CB3520);
  sub_1009370B8();
  (*(v10 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
  *&v15[v39] = sub_100936F98();
  v17 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_lock;
  sub_100706B30(&unk_100CB3540);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *&v15[v17] = v18;
  v19 = &v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_delegate];
  *&v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_sessionsByID;
  *&v15[v20] = sub_100817250(&_swiftEmptyArrayStorage);
  v21 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_participantsLock;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *&v15[v21] = v22;
  v23 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_participantsByID;
  *&v15[v23] = sub_100817354(&_swiftEmptyArrayStorage);
  v24 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_participantsByPushToken;
  *&v15[v24] = sub_100817450(&_swiftEmptyArrayStorage, &qword_100CB71C0, &unk_1009B64D8, sub_1007DBB60);
  v25 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_formerlyActiveParticipantsByID;
  *&v15[v25] = sub_100817354(&_swiftEmptyArrayStorage);
  v26 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_membersByURI;
  *&v15[v26] = sub_100817450(&_swiftEmptyArrayStorage, &qword_100CB71D0, &unk_1009B64E8, sub_1007417B0);
  *&v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_preKeyAckCount] = 0;
  *&v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_localParticipantID] = 0;
  *&v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_endpointSubscription] = 0;
  *&v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_encryptionSequenceNumber] = 0;
  v27 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_needsKMCacheResetAfter;
  v28 = sub_100936038();
  (*(*(v28 - 8) + 56))(&v15[v27], 1, 1, v28);
  v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup__shortMKIEnabled] = 0;
  v29 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_logStateLock;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *&v15[v29] = v30;
  swift_beginAccess();
  *(v19 + 1) = v42;
  swift_unknownObjectWeakAssign();
  v31 = &v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id];
  v32 = v45;
  *v31 = v44;
  v31[1] = v32;
  v33 = v47;
  *&v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_config] = v46;
  *&v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_identityController] = v33;
  v34 = v48;
  sub_100022B2C(v48, &v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_cryptoHandler]);
  v35 = v49;
  *&v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_pushHandler] = v50;
  *&v15[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_sessionProvider] = v35;
  v51.receiver = v15;
  v51.super_class = v41;
  v36 = objc_msgSendSuper2(&v51, "init");
  swift_unknownObjectRelease();
  sub_100012970(v34);
  return v36;
}

id sub_100807430()
{
  v1 = v0;
  v2 = sub_1009364D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_l, v2);
  v6 = sub_1009364B8();
  v7 = sub_100936F18();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10001273C(0x74696E696564, 0xE600000000000000, &v13);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: deinit group", v8, 0xCu);
    sub_100012970(v9);
  }

  (*(v3 + 8))(v5, v2);
  v10 = type metadata accessor for IDSGroupEncryptionControllerGroup();
  v14.receiver = v1;
  v14.super_class = v10;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t sub_1008077F8()
{
  v1 = (*((swift_isaMask & *v0) + 0x110))();
  os_unfair_lock_lock(v1 + 4);
  sub_10072FFE8();
  os_unfair_lock_unlock(v1 + 4);

  v2 = (*((swift_isaMask & *v0) + 0x208))(0);
  return (*((swift_isaMask & *v0) + 0x310))(v2);
}

void sub_100807AB0(uint64_t a1, uint64_t a2)
{
  v4 = v2;

  v5 = sub_1009364B8();
  v6 = sub_100936F18();

  v7 = &off_1009AB000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v143[0] = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10001273C(0xD00000000000002ELL, 0x8000000100B038D0, v143);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10001273C(*(v4 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id), *(v4 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8), v143);
    *(v8 + 22) = 2080;
    sub_100014170(0, &qword_100CBA2E0);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    v9 = sub_100936E28();
    v11 = sub_10001273C(v9, v10, v143);

    *(v8 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: Group %s: withURIs=%s", v8, 0x20u);
    swift_arrayDestroy();
    v7 = &off_1009AB000;
  }

  v12 = *((swift_isaMask & *v4) + 0x248);
  v13 = v12();
  v14 = sub_100736D54(a1, v13);

  v16 = (v12)(v15);
  v128 = sub_100736D54(v16, a1);

  v125 = v14 & 0xC000000000000001;
  v126 = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {

    sub_100937118();
    sub_100014170(0, &qword_100CBA2E0);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    sub_100936E58();
    v14 = v142[1];
    v17 = v142[2];
    v18 = v142[3];
    v19 = v142[4];
    v20 = v142[5];
  }

  else
  {
    v21 = -1 << *(v14 + 32);
    v17 = v14 + 56;
    v22 = ~v21;
    v23 = -v21;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v20 = v24 & *(v14 + 56);

    v18 = v22;
    v19 = 0;
  }

  v25 = 0;
  v26 = (v18 + 64) >> 6;
  v130 = *(v7 + 205);
  v141 = v4;
  v131 = v26;
  v127 = v17;
  v133 = v14;
  while (v14 < 0)
  {
    v32 = sub_100937198();
    if (!v32 || (v142[0] = v32, sub_100014170(0, &qword_100CBA2E0), swift_dynamicCast(), v31 = v143[0], v29 = v19, v30 = v20, !v143[0]))
    {
LABEL_23:
      sub_100308C6C();
      if ((v128 & 0xC000000000000001) != 0)
      {

        sub_100937118();
        sub_100014170(0, &qword_100CBA2E0);
        sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
        sub_100936E58();
        v48 = v143[0];
        v47 = v143[1];
        v49 = v143[2];
        v50 = v143[3];
        v51 = v143[4];
      }

      else
      {
        v52 = -1 << *(v128 + 32);
        v47 = v128 + 56;
        v53 = ~v52;
        v54 = -v52;
        if (v54 < 64)
        {
          v55 = ~(-1 << v54);
        }

        else
        {
          v55 = -1;
        }

        v51 = v55 & *(v128 + 56);

        v49 = v53;
        v50 = 0;
        v48 = v56;
      }

      v57 = (v49 + 64) >> 6;
      v136 = v47;
      v134 = v48;
      for (i = v57; ; v57 = i)
      {
        if (v48 < 0)
        {
          if (!sub_100937198())
          {
            goto LABEL_43;
          }

          sub_100014170(0, &qword_100CBA2E0);
          swift_dynamicCast();
          v62 = v142[0];
          j = v50;
          v61 = v51;
          if (!v142[0])
          {
            goto LABEL_43;
          }
        }

        else
        {
          v58 = v50;
          v59 = v51;
          for (j = v50; !v59; ++v58)
          {
            j = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              goto LABEL_87;
            }

            if (j >= v57)
            {
              goto LABEL_43;
            }

            v59 = *(v47 + 8 * j);
          }

          v61 = (v59 - 1) & v59;
          v62 = *(*(v48 + 48) + ((j << 9) | (8 * __clz(__rbit64(v59)))));
          if (!v62)
          {
LABEL_43:
            sub_100308C6C();
            v79 = a2;
            if (a2)
            {

              v80 = sub_1009364B8();
              v81 = sub_100936F18();

              if (os_log_type_enabled(v80, v81))
              {
                v82 = swift_slowAlloc();
                v142[0] = swift_slowAlloc();
                *v82 = 136315394;
                *(v82 + 4) = sub_10001273C(0xD00000000000002ELL, 0x8000000100B038D0, v142);
                *(v82 + 12) = 2080;
                v83 = sub_100936A88();
                v85 = sub_10001273C(v83, v84, v142);
                v79 = a2;

                *(v82 + 14) = v85;
                _os_log_impl(&_mh_execute_header, v80, v81, "%s: Updating members lightweightStatus based on %s", v82, 0x16u);
                swift_arrayDestroy();
              }

              v86 = v79 + 64;
              v87 = 1 << *(v79 + 32);
              v88 = -1;
              if (v87 < 64)
              {
                v88 = ~(-1 << v87);
              }

              v89 = v88 & *(v79 + 64);
              v90 = (v87 + 63) >> 6;

              v91 = 0;
              while (v89)
              {
                v92 = v91;
LABEL_56:
                v93 = __clz(__rbit64(v89));
                v89 &= v89 - 1;
                v94 = v93 | (v92 << 6);
                v95 = (*(v79 + 48) + 16 * v94);
                v97 = *v95;
                v96 = v95[1];
                v98 = *(*(v79 + 56) + v94);
                v99 = objc_allocWithZone(IDSURI);

                v100 = sub_100936B28();
                v101 = [v99 initWithPrefixedURI:v100];

                if (v101)
                {

                  v102 = (*((swift_isaMask & *v141) + 0x2B8))(v101);
                  if (v102)
                  {
                    v103 = v102;
                    (*((swift_isaMask & *v102) + 0x88))(v98);
                  }
                }

                else
                {

                  v104 = sub_1009364B8();
                  v105 = sub_100936F18();

                  if (os_log_type_enabled(v104, v105))
                  {
                    v106 = swift_slowAlloc();
                    v142[0] = swift_slowAlloc();
                    *v106 = 136315394;
                    *(v106 + 4) = sub_10001273C(0xD00000000000002ELL, 0x8000000100B038D0, v142);
                    *(v106 + 12) = 2080;
                    v107 = sub_10001273C(v97, v96, v142);

                    *(v106 + 14) = v107;
                    _os_log_impl(&_mh_execute_header, v104, v105, "%s: Error initializing IDSURI for %s", v106, 0x16u);
                    swift_arrayDestroy();
                  }

                  else
                  {
                  }
                }

                v91 = v92;
                v79 = a2;
              }

              while (1)
              {
                v92 = v91 + 1;
                if (__OFADD__(v91, 1))
                {
                  goto LABEL_88;
                }

                if (v92 >= v90)
                {

                  v4 = v141;
                  break;
                }

                v89 = *(v86 + 8 * v92);
                ++v91;
                if (v89)
                {
                  goto LABEL_56;
                }
              }
            }

            if ((v128 & 0xC000000000000001) != 0)
            {
              v108 = sub_100937158();
            }

            else
            {
              v108 = *(v128 + 16);
            }

            if (v108 < 1)
            {
              if (v125)
              {
                v110 = sub_100937158();
              }

              else
              {
                v110 = *(v126 + 16);
              }

              if (v110 < 1)
              {
LABEL_84:
                (*((swift_isaMask & *v4) + 0x408))(0xD000000000000032, 0x8000000100B03890);
                return;
              }
            }

            else
            {
            }

            v111 = (*((swift_isaMask & *v4) + 0x250))(v109);
            v112 = (*((swift_isaMask & *v4) + 0x140))();
            v113 = v112;
            v114 = 0;
            v115 = v112 + 64;
            v116 = 1 << *(v112 + 32);
            v117 = -1;
            if (v116 < 64)
            {
              v117 = ~(-1 << v116);
            }

            v118 = v117 & *(v112 + 64);
            v119 = (v116 + 63) >> 6;
            while (v118)
            {
              v120 = v114;
LABEL_81:
              v121 = __clz(__rbit64(v118));
              v118 &= v118 - 1;
              v122 = *(*(v113 + 56) + ((v120 << 9) | (8 * v121)));
              v123 = *((swift_isaMask & *v122) + 0x238);
              v124 = v122;
              v123(v111);
            }

            while (1)
            {
              v120 = v114 + 1;
              if (__OFADD__(v114, 1))
              {
                break;
              }

              if (v120 >= v119)
              {

                goto LABEL_84;
              }

              v118 = *(v115 + 8 * v120);
              ++v114;
              if (v118)
              {
                v114 = v120;
                goto LABEL_81;
              }
            }

            __break(1u);
            goto LABEL_86;
          }
        }

        v140 = v61;
        v63 = v62;
        type metadata accessor for IDSGroupEncryptionControllerMember();
        v138 = v63;
        v64 = v63;
        v65 = sub_10071A7E8(v64, 1);
        v66 = (*((swift_isaMask & *v4) + 0x110))();
        v67 = __chkstk_darwin(v66);
        v68 = __chkstk_darwin(v67);
        os_unfair_lock_lock(v68 + 4);
        sub_100748CB0();
        os_unfair_lock_unlock(v66 + 4);

        v69 = v4;
        v70 = v64;
        v71 = v65;
        v72 = sub_1009364B8();
        v73 = sub_100936F18();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v142[0] = v76;
          *v74 = v130;
          *(v74 + 4) = sub_10001273C(*(v69 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id), *(v69 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8), v142);
          *(v74 + 12) = 2112;
          *(v74 + 14) = v70;
          *(v74 + 22) = 2112;
          *(v74 + 24) = v71;
          *v75 = v138;
          v75[1] = v71;
          v77 = v70;
          v78 = v71;
          _os_log_impl(&_mh_execute_header, v72, v73, "Group %s: updateMembers: added member with URI %@: %@", v74, 0x20u);
          sub_100706B30(&qword_100CB36B0);
          swift_arrayDestroy();

          sub_100012970(v76);
        }

        else
        {
        }

        v50 = j;
        v51 = v140;
        v4 = v141;
        v47 = v136;
        v48 = v134;
      }
    }

LABEL_21:
    v137 = v30;
    v33 = (*((swift_isaMask & *v4) + 0x110))();
    v34 = __chkstk_darwin(v33);
    v35 = __chkstk_darwin(v34);
    os_unfair_lock_lock(v35 + 4);
    sub_100817658(v143);
    v139 = v25;
    os_unfair_lock_unlock(v33 + 4);
    v36 = v143[0];

    v135 = v36;
    v37 = v36;
    v38 = v4;
    v39 = v31;
    v40 = sub_1009364B8();
    v41 = sub_100936F18();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v143[0] = v44;
      *v42 = v130;
      *(v42 + 4) = sub_10001273C(*(v38 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id), *(v38 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8), v143);
      *(v42 + 12) = 2112;
      *(v42 + 14) = v39;
      *(v42 + 22) = 2112;
      *(v42 + 24) = v37;
      *v43 = v31;
      v43[1] = v135;
      v45 = v39;
      v46 = v37;
      _os_log_impl(&_mh_execute_header, v40, v41, "Group %s: updateMembers: removed member with URI %@: %@", v42, 0x20u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();

      sub_100012970(v44);

      v17 = v127;
    }

    else
    {
    }

    v19 = v29;
    v20 = v137;
    v25 = v139;
    v4 = v141;
    v14 = v133;
    v26 = v131;
  }

  v27 = v19;
  v28 = v20;
  v29 = v19;
  if (v20)
  {
LABEL_17:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v14 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v31)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      goto LABEL_23;
    }

    v28 = *(v17 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_17;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

unint64_t sub_100808C4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_100816E00(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_10072517C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_100816800();
        v11 = v13;
      }

      result = sub_100816540(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_100808D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100816F48(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1000136E4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10081695C();
        v14 = v16;
      }

      result = sub_1007DCBE4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_100808EEC(void *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x110);
  v4 = v3();
  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_membersByURI;
  swift_beginAccess();
  v6 = *(v1 + v5);

  v7 = sub_10080925C(a1, v6);

  if (v7)
  {
LABEL_22:
    v30 = (v3)(v8);
    os_unfair_lock_unlock(v30 + 4);

    return;
  }

  v32 = a1;
  v31 = v3;
  v9 = *(v1 + v5);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = sub_100937318() | 0x8000000000000000;
  }

  else
  {
    v14 = -1 << *(v9 + 32);
    v11 = ~v14;
    v10 = v9 + 64;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v12 = v16 & *(v9 + 64);
    v13 = v9;
  }

  swift_bridgeObjectRetain_n();
  v17 = 0;
  v18 = (v11 + 64) >> 6;
  v33 = v10;
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v19 = v17;
  v20 = v12;
  if (v12)
  {
LABEL_13:
    v12 = (v20 - 1) & v20;
    v21 = (v17 << 9) | (8 * __clz(__rbit64(v20)));
    v22 = *(*(v13 + 56) + v21);
    v23 = *(*(v13 + 48) + v21);
    v24 = v22;
    if (v23)
    {
      while (1)
      {
        v25 = v13;
        v26 = v11;
        sub_100014170(0, &qword_100CB4A70);
        v27 = [v32 tokenFreeURI];
        v28 = [v23 tokenFreeURI];
        v29 = sub_100937038();

        if (v29)
        {
          break;
        }

        v11 = v26;
        v13 = v25;
        v10 = v33;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_15:
        if (sub_1009373B8())
        {
          sub_100014170(0, &qword_100CBA2E0);
          swift_dynamicCast();
          v23 = v34;
          type metadata accessor for IDSGroupEncryptionControllerMember();
          swift_dynamicCast();
          v24 = v34;
          if (v34)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      sub_100308C6C();
    }

    else
    {
LABEL_20:
      sub_100308C6C();
    }

    v3 = v31;
    goto LABEL_22;
  }

  while (1)
  {
    v17 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v17 >= v18)
    {
      goto LABEL_20;
    }

    v20 = *(v10 + 8 * v17);
    ++v19;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_10080925C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1009373A8();

    if (v4)
    {
      type metadata accessor for IDSGroupEncryptionControllerMember();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1007417B0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_100809370(uint64_t a1)
{
  v3 = objc_allocWithZone(IDSURI);
  v4 = sub_100936B28();
  v5 = [v3 initWithPrefixedURI:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 URIByAddingPushToken:*(a1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken)];

  if (!v6)
  {
    return 0;
  }

  v7 = (*((swift_isaMask & *v1) + 0x2B8))(v6);

  return v7;
}

void *sub_1008094DC(void *a1)
{
  v2 = v1;
  v4 = (*((swift_isaMask & *v1) + 0x110))();
  os_unfair_lock_lock(v4 + 4);
  sub_100818D34(&v10);
  os_unfair_lock_unlock(v4 + 4);
  v5 = v10;

  v6 = sub_10080925C(a1, v5);

  if (v6)
  {
    v7 = (*((swift_isaMask & *v2) + 0x2D0))(v6);
  }

  else if (&_swiftEmptyArrayStorage >> 62 && sub_1009373F8())
  {
    sub_100729B20(&_swiftEmptyArrayStorage);
    return v9;
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return v7;
}

Swift::Int sub_100809700(void *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x258))();
  v4 = a1;
  v5 = sub_100817D6C(v3, v4);

  return v5;
}

void sub_1008098B4()
{
  v1 = (*((swift_isaMask & *v0) + 0x258))();
  v2 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100937118();
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
    sub_100936E58();
    v4 = v17;
    v3 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v1 + 56);

    v6 = 0;
    v4 = v2;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v6;
  v12 = v7;
  v13 = v6;
  if (v7)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      do
      {
        sub_100014170(0, &qword_100CB4A70);
        if (sub_100937038())
        {
          break;
        }

        v6 = v13;
        v7 = v14;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_100937198())
        {
          break;
        }

        type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
      }

      while (v16);
    }

LABEL_19:
    sub_100308C6C();
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= ((v5 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100809B8C()
{
  v1 = (*((swift_isaMask & *v0) + 0x158))();
  os_unfair_lock_lock(v1 + 4);
  sub_100818D34(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

unint64_t sub_100809C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_participantsByID;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (*(v8 + 16) && (result = sub_10072517C(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v8 + 56) + 8 * result);
    result = v10;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return result;
}

void sub_100809DB0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100937118();
    sub_100014170(0, &qword_100CBA2E0);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    sub_100936E58();
    v1 = v44;
    v2 = v45;
    v3 = v46;
    v4 = v47;
    v5 = v48;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
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

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  v36 = v2;
  v37 = v1;
  while (2)
  {
    if (v1 < 0)
    {
      if (!sub_100937198())
      {
        goto LABEL_43;
      }

      sub_100014170(0, &qword_100CBA2E0);
      swift_dynamicCast();
      v14 = v43;
      i = v4;
      v13 = v5;
      if (!v43)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v10 = v4;
      v11 = v5;
      for (i = v4; !v11; ++v10)
      {
        i = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_46;
        }

        if (i >= v9)
        {
LABEL_43:
          sub_100308C6C();
          return;
        }

        v11 = *(v2 + 8 * i);
      }

      v13 = (v11 - 1) & v11;
      v14 = *(*(v1 + 48) + ((i << 9) | (8 * __clz(__rbit64(v11)))));
      if (!v14)
      {
        goto LABEL_43;
      }
    }

    v40 = v13;
    v39 = v14;
    v15 = (*((swift_isaMask & *v38) + 0x2C8))();
    if ((v15 & 0xC000000000000001) != 0)
    {
      sub_100937118();
      type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
      sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
      sub_100936E58();
      v15 = v49;
      v16 = v50;
      v17 = v51;
      v18 = v52;
      v19 = v53;
    }

    else
    {
      v18 = 0;
      v20 = -1 << *(v15 + 32);
      v16 = v15 + 56;
      v17 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v19 = v22 & *(v15 + 56);
    }

    v41 = i;
    v42 = v15;
    v23 = (v17 + 64) >> 6;
    while (1)
    {
      v25 = &_swiftEmptySetSingleton + 56;
      v26 = v18;
      v27 = v19;
      if ((v15 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        if (!sub_100937198())
        {
          goto LABEL_8;
        }

        type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
        swift_dynamicCast();
        v30 = v43;
        v18 = v26;
        v19 = v27;
        if (!v43)
        {
          goto LABEL_8;
        }

LABEL_35:
        v31 = *&v30[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID];
        v32 = sub_100937658();
        v33 = -1 << *(&_swiftEmptySetSingleton + 32);
        v34 = v32 & ~v33;
        if (((*&v25[(v34 >> 3) & 0xFFFFFFFFFFFFFF8] >> v34) & 1) == 0)
        {
          break;
        }

        v35 = ~v33;
        while (*(*(&_swiftEmptySetSingleton + 6) + 8 * v34) != v31)
        {
          v34 = (v34 + 1) & v35;
          if (((*&v25[(v34 >> 3) & 0xFFFFFFFFFFFFFF8] >> v34) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        v26 = v18;
        v27 = v19;
        v15 = v42;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_25:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = &_swiftEmptySetSingleton;
      sub_100814A60(v31, v34, isUniquelyReferenced_nonNull_native);

      v15 = v42;
    }

LABEL_27:
    v28 = v26;
    v29 = v27;
    v18 = v26;
    if (v27)
    {
LABEL_31:
      v19 = (v29 - 1) & v29;
      v30 = *(*(v15 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v29)))));
      if (v30)
      {
        goto LABEL_35;
      }

LABEL_8:
      sub_100308C6C();

      v5 = v40;
      v4 = v41;
      v2 = v36;
      v1 = v37;
      v9 = (v3 + 64) >> 6;
      continue;
    }

    break;
  }

  while (1)
  {
    v18 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_8;
    }

    v29 = *(v16 + 8 * v18);
    ++v28;
    if (v29)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_10080A354(unint64_t a1, int a2)
{
  v155 = a2;
  v147 = type metadata accessor for IDSGroupEncryptionControllerParticipantPreKeyState(0);
  __chkstk_darwin(v147);
  v146 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v5 - 8);
  v156 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100706B30(&qword_100CB3250);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v138 - v9;
  v11 = swift_isaMask & *v2;
  v12 = *(v11 + 0x258);
  v166 = v2;
  v145 = v11 + 600;
  v144 = v12;
  v13 = (v12)(v8);
  v14 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_126;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  *&v157 = v10;
  if (v15 < 1)
  {
    v152 = 0;
  }

  else
  {
    v16 = v144();
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = sub_100937158();
    }

    else
    {
      v17 = *(v16 + 16);
    }

    v152 = v17 == 0;
  }

  v18 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_l;
  v19 = v166;

  v150 = v18;
  v20 = sub_1009364B8();
  v21 = sub_100936F18();

  v22 = os_log_type_enabled(v20, v21);
  v165 = v19;
  v158 = a1;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v170[0] = swift_slowAlloc();
    *v23 = 136316162;
    *(v23 + 4) = sub_10001273C(0xD000000000000022, 0x8000000100B03930, v170);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_10001273C(*&v165[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id], *&v165[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8], v170);
    *(v23 + 22) = 1024;
    *(v23 + 24) = v152;
    *(v23 + 28) = 1024;
    *(v23 + 30) = v155 & 1;
    *(v23 + 34) = 2080;
    sub_100014170(0, &qword_100CB7168);
    v24 = sub_100936CF8();
    v26 = sub_10001273C(v24, v25, v170);
    v19 = v165;

    *(v23 + 36) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: Group %s: areWeProbablyJoining=%{BOOL}d, lightweight=%{BOOL}d, participants=%s", v23, 0x2Cu);
    swift_arrayDestroy();
  }

  v27 = v144();
  v169 = v27;
  v29 = v158;
  if (v14)
  {
    v30 = sub_1009373F8();
  }

  else
  {
    v30 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v154 = v13;
  if (!v30)
  {
    LODWORD(v149) = 0;
    v139 = 0;
    if ((v27 & 0xC000000000000001) == 0)
    {
      goto LABEL_87;
    }

LABEL_85:
    sub_100937118();
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
    sub_100936E58();
    v27 = v170[0];
    v94 = v170[1];
    v95 = v170[2];
    v96 = v170[3];
    v13 = v170[4];
LABEL_91:
    v156 = v95;
    v10 = ((v95 + 64) >> 6);
    LODWORD(v162) = v155 & 1;
    *&v28 = 136315650;
    v157 = v28;
    v163 = v27;
    while (1)
    {
      if (v27 < 0)
      {
        v104 = sub_100937198();
        if (!v104 || (v167 = v104, type metadata accessor for IDSGroupEncryptionControllerParticipant(0), swift_dynamicCast(), v103 = v168, v14 = v96, v102 = v13, !v168))
        {
LABEL_107:
          v116 = sub_100308C6C();
          v117 = v165;
          v10 = (v144)(v116);
          v118 = (*((swift_isaMask & *v117) + 0x140))();
          v119 = v118;
          v120 = 0;
          v121 = v118 + 64;
          v122 = 1 << *(v118 + 32);
          v123 = -1;
          if (v122 < 64)
          {
            v123 = ~(-1 << v122);
          }

          a1 = v123 & *(v118 + 64);
          v124 = (v122 + 63) >> 6;
          v13 = v154;
          if (a1)
          {
            while (1)
            {
              v125 = v120;
LABEL_115:
              v126 = __clz(__rbit64(a1));
              a1 &= a1 - 1;
              v127 = *(*(v119 + 56) + ((v125 << 9) | (8 * v126)));
              v14 = *((swift_isaMask & *v127) + 0x240);
              v128 = v127;
              (v14)(v10);

              if (!a1)
              {
                goto LABEL_111;
              }
            }
          }

          while (1)
          {
LABEL_111:
            v125 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              __break(1u);
              goto LABEL_125;
            }

            if (v125 >= v124)
            {
              break;
            }

            a1 = *(v121 + 8 * v125);
            ++v120;
            if (a1)
            {
              v120 = v125;
              goto LABEL_115;
            }
          }

          v130 = v165;
          v131 = (*((swift_isaMask & *v165) + 0x128))(v129);
          if (v131)
          {
            v133 = v132;
            ObjectType = swift_getObjectType();
            (*(v133 + 16))(v130, ObjectType, v133);
            v131 = swift_unknownObjectRelease();
          }

          v135 = (*((swift_isaMask & *v130) + 0x348))(v131);
          (*((swift_isaMask & *v130) + 0x390))(v135);
          if (v149)
          {
          }

          else
          {
            sub_10080B794(v10, v13);
            v137 = v136;

            if ((v137 & 1) == 0)
            {
              return;
            }
          }

          (*((swift_isaMask & *v130) + 0x408))(0xD000000000000026, 0x8000000100B03900);
          return;
        }
      }

      else
      {
        v100 = v96;
        v101 = v13;
        v14 = v96;
        if (!v13)
        {
          while (1)
          {
            v14 = v100 + 1;
            if (__OFADD__(v100, 1))
            {
              break;
            }

            if (v14 >= v10)
            {
              goto LABEL_107;
            }

            v101 = *(v94 + 8 * v14);
            ++v100;
            if (v101)
            {
              goto LABEL_100;
            }
          }

LABEL_125:
          __break(1u);
LABEL_126:
          v15 = sub_1009373F8();
          goto LABEL_3;
        }

LABEL_100:
        v102 = (v101 - 1) & v101;
        v103 = *(*(v27 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v101)))));
        if (!v103)
        {
          goto LABEL_107;
        }
      }

      v164 = v102;
      a1 = *((swift_isaMask & *v103) + 0xB8);
      LOBYTE(v168) = (a1)() & 1;
      LOBYTE(v167) = v162;
      sub_10071ADC4();
      if (sub_100936B18())
      {
        v105 = v165;
        v106 = v103;
        v107 = sub_1009364B8();
        v108 = sub_100936F18();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          LODWORD(v160) = v108;
          v110 = v109;
          v159 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v168 = v161;
          *v110 = v157;
          *(v110 + 4) = sub_10001273C(*&v105[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id], *&v105[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8], &v168);
          *(v110 + 12) = 2080;
          v158 = v107;
          LOBYTE(v167) = (a1)() & 1;
          v111 = sub_100936B88();
          a1 = sub_10001273C(v111, v112, &v168);

          *(v110 + 14) = a1;
          *(v110 + 22) = 2112;
          *(v110 + 24) = v106;
          v113 = v159;
          *v159 = v103;
          v114 = v106;
          v115 = v158;
          _os_log_impl(&_mh_execute_header, v158, v160, "Group %s: updateParticipants: removing leftover %s participant %@", v110, 0x20u);
          sub_100013814(v113, &qword_100CB36B0);

          swift_arrayDestroy();
        }

        else
        {
        }

        (*((swift_isaMask & *v105) + 0x300))(v106);
      }

      v96 = v14;
      v27 = v163;
      v13 = v164;
    }
  }

  if (v30 >= 1)
  {
    LODWORD(v149) = 0;
    v14 = 0;
    v139 = 0;
    v141 = &v19[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id];
    v31 = *&v19[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_identityController];
    v32 = (swift_isaMask & *v31);
    v163 = v29 & 0xC000000000000001;
    v153 = (v29 + 32);
    v151 = v13 & 0xC000000000000001;
    v33 = v13 & 0xFFFFFFFFFFFFFF8;
    v164 = v31;
    v32 += 38;
    v34 = *v32;
    v161 = v32;
    v162 = v34;
    if (v13 < 0)
    {
      v33 = v13;
    }

    v148 = v33;
    v160 = v13 + 56;
    *&v28 = 136315906;
    v140 = v28;
    v35 = v157;
    v159 = v30;
    while (1)
    {
      if (v163)
      {
        v36 = sub_100937268();
      }

      else
      {
        v36 = v153[v14].isa;
      }

      v37 = v36;
      v38 = [(objc_class *)v36 participantPushToken];
      if (v38)
      {
        v39 = v38;
        v40 = sub_100935EA8();
        a1 = v41;
      }

      else
      {
        v40 = 0;
        a1 = 0xF000000000000000;
      }

      v162();
      v42 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
      if ((*(*(v42 - 8) + 48))(v35, 1, v42) == 1)
      {
        sub_100013814(v35, &qword_100CB3250);
        if (a1 >> 60 != 15)
        {
          v43 = 0;
          v44 = 0xF000000000000000;
          goto LABEL_34;
        }
      }

      else
      {
        v45 = v156;
        sub_10081899C(v35, v156, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        sub_100818580(v35, type metadata accessor for IDSGroupEncryptionFullIdentity);
        v46 = *(v45 + 8);
        sub_100818580(v45, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v47 = [v46 rawToken];

        v43 = sub_100935EA8();
        v44 = v48;

        if (a1 >> 60 != 15)
        {
          v30 = v159;
          if (v44 >> 60 == 15)
          {
LABEL_34:
            sub_10001C370(v40, a1);
            v49 = v43;
            v50 = v44;
            goto LABEL_35;
          }

          v81 = a1 >> 62;
          v82 = v44 >> 62;
          if (a1 >> 62 == 3)
          {
            v83 = 0;
            if (!v40 && a1 == 0xC000000000000000 && v44 >> 62 == 3)
            {
              v83 = 0;
              if (!v43 && v44 == 0xC000000000000000)
              {
                v84 = 0;
                v85 = 0xC000000000000000;
                goto LABEL_82;
              }
            }
          }

          else if (v81)
          {
            if (v81 == 1)
            {
              LODWORD(v83) = HIDWORD(v40) - v40;
              if (__OFSUB__(HIDWORD(v40), v40))
              {
                goto LABEL_131;
              }

              v83 = v83;
            }

            else
            {
              v87 = *(v40 + 16);
              v86 = *(v40 + 24);
              v88 = __OFSUB__(v86, v87);
              v83 = v86 - v87;
              if (v88)
              {
                goto LABEL_130;
              }
            }
          }

          else
          {
            v83 = BYTE6(a1);
          }

          if (v82 > 1)
          {
            if (v82 == 2)
            {
              v90 = *(v43 + 16);
              v89 = *(v43 + 24);
              v88 = __OFSUB__(v89, v90);
              v91 = v89 - v90;
              if (v88)
              {
                goto LABEL_129;
              }

              if (v83 != v91)
              {
                goto LABEL_80;
              }

              goto LABEL_76;
            }

            if (v83)
            {
LABEL_80:
              sub_10001C370(v43, v44);
              v49 = v40;
              v50 = a1;
LABEL_35:
              sub_10001C370(v49, v50);
              goto LABEL_36;
            }
          }

          else
          {
            if (v82)
            {
              if (__OFSUB__(HIDWORD(v43), v43))
              {
                goto LABEL_128;
              }

              if (v83 != HIDWORD(v43) - v43)
              {
                goto LABEL_80;
              }
            }

            else if (v83 != BYTE6(v44))
            {
              goto LABEL_80;
            }

LABEL_76:
            if (v83 >= 1)
            {
              sub_1007483B0(v43, v44);
              sub_1007483B0(v40, a1);
              sub_1007483B0(v43, v44);
              v92 = v139;
              v93 = sub_10071C8A0(v40, a1, v43, v44);
              v139 = v92;
              v30 = v159;
              sub_10001C370(v43, v44);
              sub_10001C370(v40, a1);
              sub_10001C370(v43, v44);
              sub_10001C370(v40, a1);
              if (v93)
              {
                goto LABEL_83;
              }

LABEL_36:
              v51 = v165;
              v52 = (*((swift_isaMask & *v165) + 0x2F8))(v37);
              if (v52)
              {
                a1 = v52;
                if (v151)
                {
                  v53 = v52;
                  v54 = sub_1009371A8();

                  if ((v54 | v152))
                  {
                    goto LABEL_47;
                  }

LABEL_46:
                  v60 = v146;
                  sub_100936028();
                  swift_storeEnumTagMultiPayload();
                  v52 = (*((swift_isaMask & *a1) + 0xD8))(v60);
                }

                else
                {
                  if (*(v13 + 16))
                  {
                    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
                    v52 = sub_100937028(*(v13 + 40));
                    v55 = -1 << *(v13 + 32);
                    v56 = v52 & ~v55;
                    if ((*(v160 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
                    {
                      v57 = ~v55;
                      while (1)
                      {
                        v58 = *(*(v13 + 48) + 8 * v56);
                        v59 = sub_100937038();

                        if (v59)
                        {
                          break;
                        }

                        v56 = (v56 + 1) & v57;
                        if (((*(v160 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
                        {
                          goto LABEL_45;
                        }
                      }

                      v51 = v165;
                      goto LABEL_47;
                    }
                  }

LABEL_45:
                  v51 = v165;
                  if (!v152)
                  {
                    goto LABEL_46;
                  }
                }

LABEL_47:
                v61 = *((swift_isaMask & *a1) + 0xB8);
                v62 = v61(v52);
                v63 = (*((swift_isaMask & *a1) + 0xC0))(v155 & 1);
                v64 = v62 & 1;
                LOBYTE(v170[0]) = v62 & 1;
                LOBYTE(v168) = v61(v63) & 1;
                sub_10071ADC4();
                if ((sub_100936B18() & 1) == 0)
                {
                  v65 = v51;
                  v66 = a1;
                  v67 = sub_1009364B8();
                  v68 = sub_100936F18();

                  if (os_log_type_enabled(v67, v68))
                  {
                    v69 = swift_slowAlloc();
                    v70 = swift_slowAlloc();
                    v143 = v67;
                    v71 = v70;
                    v142 = v70;
                    v149 = swift_slowAlloc();
                    v170[0] = v149;
                    *v69 = v140;
                    *(v69 + 4) = sub_10001273C(*v141, *(v141 + 1), v170);
                    *(v69 + 12) = 2112;
                    *(v69 + 14) = v66;
                    *v71 = a1;
                    *(v69 + 22) = 2080;
                    LOBYTE(v168) = v64;
                    v72 = v66;
                    v73 = sub_100936B88();
                    v75 = sub_10001273C(v73, v74, v170);

                    *(v69 + 24) = v75;
                    *(v69 + 32) = 2080;
                    LOBYTE(v168) = v61(v76) & 1;
                    v77 = sub_100936B88();
                    v79 = sub_10001273C(v77, v78, v170);

                    *(v69 + 34) = v79;
                    v67 = v143;
                    _os_log_impl(&_mh_execute_header, v143, v68, "Group %s: updateParticipants: updated participant %@ %s -> %s", v69, 0x2Au);
                    sub_100013814(v142, &qword_100CB36B0);

                    swift_arrayDestroy();
                  }

                  LODWORD(v149) = 1;
                }

                v80 = sub_1008154AC(a1);

                v13 = v154;
                v35 = v157;
                v30 = v159;
                goto LABEL_20;
              }

              goto LABEL_83;
            }
          }

          v84 = v43;
          v85 = v44;
LABEL_82:
          sub_10001C370(v84, v85);
          sub_10001C370(v40, a1);
LABEL_83:

          v35 = v157;
          goto LABEL_20;
        }

        v30 = v159;
        if (v44 >> 60 != 15)
        {
          goto LABEL_34;
        }
      }

      sub_10001C370(v40, a1);
LABEL_20:
      if (++v14 == v30)
      {
        v27 = v169;
        if ((v169 & 0xC000000000000001) != 0)
        {
          goto LABEL_85;
        }

LABEL_87:
        v96 = 0;
        v97 = -1 << *(v27 + 32);
        v94 = v27 + 56;
        v95 = ~v97;
        v98 = -v97;
        if (v98 < 64)
        {
          v99 = ~(-1 << v98);
        }

        else
        {
          v99 = -1;
        }

        v13 = v99 & *(v27 + 56);
        goto LABEL_91;
      }
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

void sub_10080B794(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1008170C0(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_100937028(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_100937038();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

id sub_10080BA80(void *a1)
{
  v2 = v1;
  v4 = [a1 participantIdentifier];
  v5 = (*((swift_isaMask & *v1) + 0x2E0))(v4);
  if (v5)
  {
    return v5;
  }

  v6 = *((swift_isaMask & *v1) + 0x158);
  v7 = v6();
  v8 = __chkstk_darwin(v7);
  v9 = __chkstk_darwin(v8);
  os_unfair_lock_lock(v9 + 4);
  sub_100818D34(&v65);
  os_unfair_lock_unlock(v7 + 4);
  v5 = v65;

  if (v5)
  {
    v10 = v1;
    v11 = v5;
    v12 = sub_1009364B8();
    v13 = sub_100936F18();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v6;
      v17 = swift_slowAlloc();
      v65 = v17;
      *v14 = 136315394;
      *(v14 + 4) = sub_10001273C(*(v10 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id), *(v10 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8), &v65);
      *(v14 + 12) = 2112;
      *(v14 + 14) = v11;
      *v15 = v5;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "Group %s: ensureParticipant: reviving formerly-active participant %@", v14, 0x16u);
      sub_100013814(v15, &qword_100CB36B0);

      sub_100012970(v17);
      v6 = v16;
    }

    v19 = v6();
    v20 = __chkstk_darwin(v19);
    v21 = __chkstk_darwin(v20);
    os_unfair_lock_lock(v21 + 4);
    sub_100748CB0();
    os_unfair_lock_unlock(v19 + 4);

    return v5;
  }

  v22 = [a1 participantPushToken];
  if (!v22)
  {
    goto LABEL_13;
  }

  v64 = v6;
  v23 = v22;
  v24 = sub_100935EA8();
  v26 = v25;

  v27 = objc_allocWithZone(IDSPushToken);
  sub_100715738(v24, v26);
  isa = sub_100935E78().super.isa;
  v29 = [v27 initWithData:isa];

  sub_1007156D8(v24, v26);
  if (!v29)
  {
    sub_1007156D8(v24, v26);
LABEL_13:
    v49 = v2;
    v50 = a1;
    v51 = sub_1009364B8();
    v52 = sub_100936EF8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v65 = v54;
      *v53 = 136315394;
      *(v53 + 4) = sub_10001273C(*&v49[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id], *&v49[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8], &v65);
      *(v53 + 12) = 2048;
      *(v53 + 14) = [v50 participantIdentifier];

      _os_log_impl(&_mh_execute_header, v51, v52, "Group %s: ensureParticipant: participant %llu missing pushToken", v53, 0x16u);
      sub_100012970(v54);
    }

    else
    {
    }

    return 0;
  }

  v30 = [a1 participantURI];
  if (!v30)
  {
    v55 = v2;
    v56 = a1;
    v57 = sub_1009364B8();
    v58 = sub_100936EF8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v59 = 136315394;
      *(v59 + 4) = sub_10001273C(*&v55[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id], *&v55[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8], &v65);
      *(v59 + 12) = 2048;
      *(v59 + 14) = [v56 participantIdentifier];

      _os_log_impl(&_mh_execute_header, v57, v58, "Group %s: ensureParticipant: participant %llu missing participantURI", v59, 0x16u);
      sub_100012970(v60);
    }

    else
    {
    }

    sub_1007156D8(v24, v26);

    return 0;
  }

  v62 = v24;
  v63 = v26;
  v31 = v30;
  v32 = sub_100936B38();
  v34 = v33;

  type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
  v35 = [a1 participantIdentifier];
  v36 = v2;
  v37 = v29;

  v38 = sub_1007974D8(v36, &off_100BE90A0, v35, v37, v32, v34);
  v39 = v64();
  v40 = __chkstk_darwin(v39);
  v41 = __chkstk_darwin(v40);
  os_unfair_lock_lock(v41 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v39 + 4);

  v42 = v36;
  v5 = v38;
  v43 = sub_1009364B8();
  v44 = sub_100936F18();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v65 = v47;
    *v45 = 136315394;
    *(v45 + 4) = sub_10001273C(*&v42[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id], *&v42[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8], &v65);
    *(v45 + 12) = 2112;
    *(v45 + 14) = v5;
    *v46 = v5;
    v48 = v5;
    _os_log_impl(&_mh_execute_header, v43, v44, "Group %s: ensureParticipant: created participant %@", v45, 0x16u);
    sub_100013814(v46, &qword_100CB36B0);

    sub_100012970(v47);
  }

  sub_1007156D8(v62, v63);

  return v5;
}

uint64_t sub_10080C348(void *a1)
{
  v3 = v1;
  v4 = a1;
  v5 = sub_1009364B8();
  v6 = sub_100936F18();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_10001273C(*(v3 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id), *(v3 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8), &v15);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Group %s: removeParticipant: removing participant %@", v7, 0x16u);
    sub_100013814(v8, &qword_100CB36B0);

    sub_100012970(v9);
  }

  v11 = (*((swift_isaMask & *v3) + 0x158))();
  v12 = __chkstk_darwin(v11);
  v13 = __chkstk_darwin(v12);
  os_unfair_lock_lock(v13 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v11 + 4);
}

void sub_10080C5E0()
{
  v1 = (*((swift_isaMask & *v0) + 0x2D8))();
  if (v1)
  {
    v2 = v1;
    (*((swift_isaMask & *v0) + 0x300))();
  }
}

uint64_t sub_10080C790()
{
  v1 = (*((swift_isaMask & *v0) + 0x158))();
  os_unfair_lock_lock(v1 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_10080C83C(uint64_t a1)
{
  v2 = sub_100817450(&_swiftEmptyArrayStorage, &qword_100CB71C0, &unk_1009B64D8, sub_1007DBB60);
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_participantsByPushToken;
  swift_beginAccess();
  *(a1 + v3) = v2;

  v4 = sub_100817354(&_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_participantsByID;
  swift_beginAccess();
  *(a1 + v5) = v4;

  v6 = sub_100817354(&_swiftEmptyArrayStorage);
  v7 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_formerlyActiveParticipantsByID;
  swift_beginAccess();
  *(a1 + v7) = v6;
}

uint64_t sub_10080C9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*((swift_isaMask & *v2) + 0x128))())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(*(a1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken), ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  else
  {
    v9 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

id sub_10080CBB8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_100936A78();
  v14 = sub_100936B38();
  v16 = v15;
  v17 = *((swift_isaMask & *a1) + 0x338);
  v18 = a4;
  v19 = a5;
  v20 = a1;
  v21 = v17(v13, a8, v18, v19, v14, v16, a7);

  return v21;
}

uint64_t sub_10080CCFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v225 = a7;
  v226 = a6;
  v227 = a5;
  v228 = a3;
  v11 = sub_100706B30(&qword_100CB2D98);
  v12 = __chkstk_darwin(v11 - 8);
  v224 = &v217 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v217 - v15;
  v17 = __chkstk_darwin(v14);
  v223 = &v217 - v18;
  __chkstk_darwin(v17);
  v231 = &v217 - v19;
  v233 = sub_1009360A8();
  v20 = *(v233 - 8);
  v21 = __chkstk_darwin(v233);
  v229 = &v217 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v230 = &v217 - v23;
  v24 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_l;

  v25 = sub_1009364B8();
  v26 = sub_100936F18();

  v27 = os_log_type_enabled(v25, v26);
  v234 = v20;
  v232 = v16;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v237 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_10001273C(0xD000000000000051, 0x8000000100B03960, &v237);
    *(v28 + 12) = 2080;
    v29 = sub_100936A88();
    v31 = a2;
    v32 = sub_10001273C(v29, v30, &v237);

    *(v28 + 14) = v32;
    a2 = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s: dict: %s", v28, 0x16u);
    swift_arrayDestroy();
  }

  if (a2)
  {
    v33 = sub_100936B38();
    if (*(a1 + 16))
    {
      v35 = sub_1000136E4(v33, v34);
      v37 = v36;

      if (v37)
      {
        sub_100012914(*(a1 + 56) + 32 * v35, &v237);
        if (swift_dynamicCast())
        {
          v38 = v235;
          v39 = v236;
          v40 = sub_100936B38();
          if (!*(a1 + 16))
          {

            goto LABEL_51;
          }

          v42 = sub_1000136E4(v40, v41);
          v44 = v43;

          if ((v44 & 1) == 0 || (sub_100012914(*(a1 + 56) + 32 * v42, &v237), (swift_dynamicCast() & 1) == 0))
          {
LABEL_51:
            v60 = sub_1009364B8();
            v84 = sub_100936EF8();
            if (os_log_type_enabled(v60, v84))
            {
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              v237 = v86;
              *v85 = 136315394;
              *(v85 + 4) = sub_10001273C(0xD000000000000051, 0x8000000100B03960, &v237);
              *(v85 + 12) = 1024;
              *(v85 + 14) = 16;
              _os_log_impl(&_mh_execute_header, v60, v84, "%s: sks not %d bytes", v85, 0x12u);
              sub_100012970(v86);
            }

            goto LABEL_53;
          }

          v45 = v235;
          v46 = v236;
          v47 = v236 >> 62;
          if ((v236 >> 62) <= 1)
          {
            if (!v47)
            {
              v48 = BYTE6(v236);
              goto LABEL_43;
            }

            goto LABEL_41;
          }

          if (v47 != 2)
          {
LABEL_50:
            sub_1007156D8(v45, v46);
            goto LABEL_51;
          }

          v72 = *(v235 + 16);
          v71 = *(v235 + 24);
          v73 = __OFSUB__(v71, v72);
          v48 = v71 - v72;
          if (!v73)
          {
LABEL_43:
            if (v48 == 16)
            {
              v231 = v45;
              v76 = sub_100936B38();
              if (*(a1 + 16))
              {
                v78 = sub_1000136E4(v76, v77);
                v80 = v79;

                if (v80)
                {
                  sub_100012914(*(a1 + 56) + 32 * v78, &v237);
                  if (swift_dynamicCast())
                  {
                    result = v235;
                    v81 = v236;
                    v82 = v236 >> 62;
                    if ((v236 >> 62) <= 1)
                    {
                      if (!v82)
                      {
                        v83 = BYTE6(v236);
                        goto LABEL_79;
                      }

                      goto LABEL_77;
                    }

                    if (v82 != 2)
                    {
LABEL_87:
                      sub_1007156D8(result, v81);
                      goto LABEL_88;
                    }

                    v97 = *(v235 + 16);
                    v96 = *(v235 + 24);
                    v73 = __OFSUB__(v96, v97);
                    v83 = v96 - v97;
                    if (!v73)
                    {
LABEL_79:
                      if (v83 == 16)
                      {
                        v223 = v39;
                        v220 = v46;
                        v230 = v81;
                        v219 = result;
                        if (v82 == 2)
                        {
                          v222 = a1;
                          v127 = *(result + 16);
                          v128 = *(result + 24);
                          result = sub_100935BE8();
                          v129 = result;
                          if (result)
                          {
                            result = sub_100935C18();
                            if (__OFSUB__(v127, result))
                            {
LABEL_204:
                              __break(1u);
                              goto LABEL_205;
                            }

                            v129 += v127 - result;
                          }

                          if (__OFSUB__(v128, v127))
                          {
                            goto LABEL_202;
                          }

                          sub_100935C08();
                          v107 = v232;
                          sub_10080E778(v129, v232);
                          v105 = v233;
                          v104 = v234;
                          v106 = v222;
                        }

                        else
                        {
                          if (v82 == 1)
                          {
                            v100 = result;
                            if (result <= result >> 32)
                            {
                              v101 = a1;
                              v102 = sub_100935BE8();
                              if (!v102)
                              {
LABEL_86:
                                sub_100935C08();
                                v103 = v232;
                                sub_10080E778(v102, v232);
                                v105 = v233;
                                v104 = v234;
                                v106 = v101;
                                v107 = v103;
                                goto LABEL_125;
                              }

                              result = sub_100935C18();
                              if (!__OFSUB__(v100, result))
                              {
                                v102 += v100 - result;
                                goto LABEL_86;
                              }

                              goto LABEL_206;
                            }

                            goto LABEL_200;
                          }

                          v221 = v24;
                          v222 = a1;
                          v237 = result;
                          v238 = v81;
                          v239 = BYTE2(v81);
                          v240 = BYTE3(v81);
                          v241 = BYTE4(v81);
                          v242 = BYTE5(v81);
                          v133 = [objc_allocWithZone(NSUUID) initWithUUIDBytes:&v237];
                          v134 = *(v234 + 56);
                          if (v133)
                          {
                            v135 = v133;
                            v136 = 1;
                            v137 = v224;
                            v105 = v233;
                            v134(v224, 1, 1, v233);
                            sub_100014BB0(&qword_100CB7170, &type metadata accessor for UUID);
                            sub_100937448();

                            if ((*(v234 + 48))(v137, 1, v105) != 1)
                            {
                              (*(v234 + 32))(v232, v224, v105);
                              v136 = 0;
                            }
                          }

                          else
                          {
                            v136 = 1;
                            v105 = v233;
                          }

                          v107 = v232;
                          v134(v232, v136, 1, v105);
                          v104 = v234;
                          v106 = v222;
                        }

LABEL_125:
                        if ((*(v104 + 48))(v107, 1, v105) == 1)
                        {
                          sub_100013814(v107, &qword_100CB2D98);
                          v60 = sub_1009364B8();
                          v143 = sub_100936EF8();
                          if (os_log_type_enabled(v60, v143))
                          {
                            v144 = swift_slowAlloc();
                            v145 = swift_slowAlloc();
                            v237 = v145;
                            *v144 = 136315138;
                            *(v144 + 4) = sub_10001273C(0xD000000000000051, 0x8000000100B03960, &v237);
                            _os_log_impl(&_mh_execute_header, v60, v143, "%s: failed to parse SKI", v144, 0xCu);
                            sub_100012970(v145);
                          }

                          sub_1007156D8(v219, v230);
                          sub_1007156D8(v231, v220);
                          sub_1007156D8(v38, v223);
                          goto LABEL_29;
                        }

                        (*(v104 + 32))(v229, v107, v105);
                        v146 = sub_100936B38();
                        if (*(v106 + 16))
                        {
                          v148 = v8;
                          v149 = sub_1000136E4(v146, v147);
                          v151 = v150;

                          if (v151)
                          {
                            sub_100012914(*(v106 + 56) + 32 * v149, &v237);
                            if (swift_dynamicCast())
                            {
                              v152 = v235;
                            }

                            else
                            {
                              v152 = -1;
                            }

                            goto LABEL_149;
                          }
                        }

                        else
                        {
                          v148 = v8;
                        }

                        v152 = -1;
LABEL_149:
                        v163 = sub_10089CA2C(v152);
                        if (v163 == 3)
                        {
                          v164 = 1;
                        }

                        else
                        {
                          v164 = v163;
                        }

                        v165 = sub_100936B38();
                        if (*(v106 + 16))
                        {
                          v167 = sub_1000136E4(v165, v166);
                          v169 = v168;

                          if (v169)
                          {
                            sub_100012914(*(v106 + 56) + 32 * v167, &v237);
                            v170 = swift_dynamicCast();
                            if (v170)
                            {
                              v171 = v235;
                            }

                            else
                            {
                              v171 = 0;
                            }

                            v172 = v170 ^ 1;
LABEL_160:
                            v173 = sub_100936B38();
                            if (*(v106 + 16))
                            {
                              v175 = sub_1000136E4(v173, v174);
                              v177 = v176;

                              if (v177)
                              {
                                sub_100012914(*(v106 + 56) + 32 * v175, &v237);
                                v178 = swift_dynamicCast();
                                v179 = v235;
                                v180 = v178 ^ 1;
                                if (!v178)
                                {
                                  v179 = 0;
                                }

                                goto LABEL_167;
                              }
                            }

                            else
                            {
                            }

                            v179 = 0;
                            v180 = 1;
LABEL_167:
                            v181 = v220;
                            v182 = *((swift_isaMask & *v148) + 0x340);
                            LOBYTE(v237) = v180;
                            v215 = v171;
                            v183 = v229;
                            v184 = v231;
                            v185 = v223;
                            v186 = v182(1, v229, v231, v220, v38, v223, v164, v228, v227, v226, v215, v172, v179 | (v180 << 32), v225 & 1);
                            sub_1007156D8(v38, v185);
                            v187 = v219;
                            v188 = v230;
LABEL_195:
                            sub_1007156D8(v187, v188);
                            sub_1007156D8(v184, v181);
                            (*(v234 + 8))(v183, v233);
                            return v186;
                          }
                        }

                        else
                        {
                        }

                        v171 = 0;
                        v172 = 1;
                        goto LABEL_160;
                      }

                      goto LABEL_87;
                    }

                    __break(1u);
                    goto LABEL_73;
                  }
                }
              }

              else
              {
              }

LABEL_88:
              v60 = sub_1009364B8();
              v108 = sub_100936EF8();
              if (os_log_type_enabled(v60, v108))
              {
                v109 = swift_slowAlloc();
                v110 = v46;
                v111 = swift_slowAlloc();
                v237 = v111;
                *v109 = 136315394;
                *(v109 + 4) = sub_10001273C(0xD000000000000051, 0x8000000100B03960, &v237);
                *(v109 + 12) = 1024;
                *(v109 + 14) = 16;
                _os_log_impl(&_mh_execute_header, v60, v108, "%s: ski not %d bytes", v109, 0x12u);
                sub_100012970(v111);

                v112 = v231;
                v113 = v110;
              }

              else
              {
                v112 = v231;
                v113 = v46;
              }

              sub_1007156D8(v112, v113);
LABEL_53:
              sub_1007156D8(v38, v39);
              goto LABEL_29;
            }

            goto LABEL_50;
          }

          __break(1u);
          goto LABEL_37;
        }
      }
    }

    else
    {
    }

    v60 = sub_1009364B8();
    v61 = sub_100936EF8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      *v62 = 136315394;
      *(v62 + 4) = sub_10001273C(0xD000000000000051, 0x8000000100B03960, &v237);
      *(v62 + 12) = 2080;
      v63 = sub_100936A88();
      v65 = sub_10001273C(v63, v64, &v237);

      *(v62 + 14) = v65;
      v66 = "%s: no skm data in %s";
LABEL_28:
      _os_log_impl(&_mh_execute_header, v60, v61, v66, v62, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v49 = sub_100936B38();
    if (*(a1 + 16))
    {
      v51 = sub_1000136E4(v49, v50);
      v53 = v52;

      if (v53)
      {
        sub_100012914(*(a1 + 56) + 32 * v51, &v237);
        if (swift_dynamicCast())
        {
          v39 = v235;
          v38 = v236;
          v54 = sub_100936B38();
          if (!*(a1 + 16))
          {

            goto LABEL_64;
          }

          v56 = sub_1000136E4(v54, v55);
          v58 = v57;

          if ((v58 & 1) == 0 || (sub_100012914(*(a1 + 56) + 32 * v56, &v237), (swift_dynamicCast() & 1) == 0))
          {
LABEL_64:
            v60 = sub_1009364B8();
            v93 = sub_100936EF8();
            if (os_log_type_enabled(v60, v93))
            {
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              v237 = v95;
              *v94 = 136315394;
              *(v94 + 4) = sub_10001273C(0xD000000000000051, 0x8000000100B03960, &v237);
              *(v94 + 12) = 1024;
              *(v94 + 14) = 16;
              _os_log_impl(&_mh_execute_header, v60, v93, "%s: mks not %d", v94, 0x12u);
              sub_100012970(v95);
            }

            goto LABEL_66;
          }

          v45 = v235;
          v46 = v236;
          v48 = v236 >> 62;
          if ((v236 >> 62) <= 1)
          {
            if (v48)
            {
              LODWORD(v59) = HIDWORD(v235) - v235;
              if (__OFSUB__(HIDWORD(v235), v235))
              {
                goto LABEL_197;
              }

              v59 = v59;
            }

            else
            {
              v59 = BYTE6(v236);
            }

            goto LABEL_56;
          }

LABEL_37:
          if (v48 != 2)
          {
LABEL_63:
            sub_1007156D8(v45, v46);
            goto LABEL_64;
          }

          v75 = *(v45 + 16);
          v74 = *(v45 + 24);
          v73 = __OFSUB__(v74, v75);
          v59 = v74 - v75;
          if (v73)
          {
            __break(1u);
LABEL_41:
            LODWORD(v48) = HIDWORD(v45) - v45;
            if (!__OFSUB__(HIDWORD(v45), v45))
            {
              v48 = v48;
              goto LABEL_43;
            }

            __break(1u);
LABEL_197:
            __break(1u);
          }

LABEL_56:
          if (v59 == 16)
          {
            v232 = v45;
            v87 = sub_100936B38();
            if (*(a1 + 16))
            {
              v89 = sub_1000136E4(v87, v88);
              v91 = v90;

              if (v91)
              {
                sub_100012914(*(a1 + 56) + 32 * v89, &v237);
                if (swift_dynamicCast())
                {
                  result = v235;
                  v81 = v236;
                  v82 = v236 >> 62;
                  if ((v236 >> 62) <= 1)
                  {
                    if (v82)
                    {
                      LODWORD(v92) = HIDWORD(v235) - v235;
                      if (__OFSUB__(HIDWORD(v235), v235))
                      {
                        goto LABEL_199;
                      }

                      v92 = v92;
                    }

                    else
                    {
                      v92 = BYTE6(v236);
                    }

                    goto LABEL_94;
                  }

LABEL_73:
                  if (v82 != 2)
                  {
LABEL_102:
                    sub_1007156D8(result, v81);
                    goto LABEL_103;
                  }

                  v99 = *(result + 16);
                  v98 = *(result + 24);
                  v73 = __OFSUB__(v98, v99);
                  v92 = v98 - v99;
                  if (v73)
                  {
                    __break(1u);
LABEL_77:
                    LODWORD(v83) = HIDWORD(result) - result;
                    if (!__OFSUB__(HIDWORD(result), result))
                    {
                      v83 = v83;
                      goto LABEL_79;
                    }

                    __break(1u);
LABEL_199:
                    __break(1u);
LABEL_200:
                    __break(1u);
                    goto LABEL_201;
                  }

LABEL_94:
                  if (v92 == 16)
                  {
                    v221 = v24;
                    v224 = v38;
                    v220 = v46;
                    v229 = v81;
                    v219 = result;
                    if (v82 == 2)
                    {
                      v222 = a1;
                      v130 = *(result + 16);
                      v131 = *(result + 24);
                      result = sub_100935BE8();
                      v132 = result;
                      if (result)
                      {
                        result = sub_100935C18();
                        if (__OFSUB__(v130, result))
                        {
LABEL_205:
                          __break(1u);
LABEL_206:
                          __break(1u);
                          goto LABEL_207;
                        }

                        v132 += v130 - result;
                      }

                      if (__OFSUB__(v131, v130))
                      {
                        goto LABEL_203;
                      }

                      sub_100935C08();
                      v117 = v231;
                      sub_10080E778(v132, v231);
                      v118 = v233;
                      v119 = v234;
                    }

                    else
                    {
                      if (v82 == 1)
                      {
                        v114 = result;
                        if (result > result >> 32)
                        {
LABEL_201:
                          __break(1u);
LABEL_202:
                          __break(1u);
LABEL_203:
                          __break(1u);
                          goto LABEL_204;
                        }

                        v115 = a1;
                        v116 = sub_100935BE8();
                        if (v116)
                        {
                          result = sub_100935C18();
                          if (__OFSUB__(v114, result))
                          {
LABEL_207:
                            __break(1u);
                            return result;
                          }

                          v116 += v114 - result;
                        }

                        sub_100935C08();
                        v117 = v231;
                        sub_10080E778(v116, v231);
                        v118 = v233;
                        v119 = v234;
                        v120 = v115;
LABEL_138:
                        if ((*(v119 + 48))(v117, 1, v118) == 1)
                        {
                          sub_100013814(v117, &qword_100CB2D98);
                          v60 = sub_1009364B8();
                          v153 = sub_100936EF8();
                          if (os_log_type_enabled(v60, v153))
                          {
                            v154 = swift_slowAlloc();
                            v155 = swift_slowAlloc();
                            v237 = v155;
                            *v154 = 136315138;
                            *(v154 + 4) = sub_10001273C(0xD000000000000051, 0x8000000100B03960, &v237);
                            _os_log_impl(&_mh_execute_header, v60, v153, "%s: failed to parse MKI", v154, 0xCu);
                            sub_100012970(v155);
                          }

                          sub_1007156D8(v219, v229);
                          sub_1007156D8(v232, v220);
                          sub_1007156D8(v39, v224);
                          goto LABEL_29;
                        }

                        (*(v119 + 32))(v230, v117, v118);
                        v156 = sub_100936B38();
                        v158 = *(v120 + 16);
                        v218 = v8;
                        if (v158)
                        {
                          v159 = sub_1000136E4(v156, v157);
                          v161 = v160;

                          if (v161)
                          {
                            sub_100012914(*(v120 + 56) + 32 * v159, &v237);
                            if (swift_dynamicCast())
                            {
                              v162 = v235;
                            }

                            else
                            {
                              v162 = -1;
                            }

                            goto LABEL_169;
                          }
                        }

                        else
                        {
                        }

                        v162 = -1;
LABEL_169:
                        v189 = sub_10089CA2C(v162);
                        if (v189 == 3)
                        {
                          v190 = 1;
                        }

                        else
                        {
                          v190 = v189;
                        }

                        v191 = sub_100936B38();
                        if (*(v120 + 16))
                        {
                          v193 = sub_1000136E4(v191, v192);
                          v195 = v194;

                          if (v195)
                          {
                            sub_100012914(*(v120 + 56) + 32 * v193, &v237);
                            if (swift_dynamicCast())
                            {
                              v196 = v235;
                            }

                            else
                            {
                              v196 = 0;
                            }

LABEL_179:
                            v197 = sub_100936B38();
                            if (*(v120 + 16))
                            {
                              v199 = sub_1000136E4(v197, v198);
                              v201 = v200;

                              if (v201)
                              {
                                sub_100012914(*(v120 + 56) + 32 * v199, &v237);
                                v202 = swift_dynamicCast();
                                if (v202)
                                {
                                  v203 = v235;
                                }

                                else
                                {
                                  v203 = 0;
                                }

                                v204 = v202 ^ 1;
LABEL_187:
                                v205 = sub_100936B38();
                                if (*(v120 + 16))
                                {
                                  v207 = sub_1000136E4(v205, v206);
                                  v209 = v208;

                                  if (v209)
                                  {
                                    sub_100012914(*(v120 + 56) + 32 * v207, &v237);
                                    v210 = swift_dynamicCast();
                                    v211 = v235;
                                    v212 = v210 ^ 1;
                                    if (!v210)
                                    {
                                      v211 = 0;
                                    }

                                    goto LABEL_194;
                                  }
                                }

                                else
                                {
                                }

                                v211 = 0;
                                v212 = 1;
LABEL_194:
                                v181 = v220;
                                v213 = *((swift_isaMask & *v218) + 0x340);
                                LOBYTE(v237) = v212;
                                HIBYTE(v216) = v196;
                                LOBYTE(v216) = v225 & 1;
                                v183 = v230;
                                v184 = v232;
                                v214 = v224;
                                v186 = v213(0, v230, v232, v220, v39, v224, v190, v228, v227, v226, v203, v204, v211 | (v212 << 32), v216);
                                sub_1007156D8(v39, v214);
                                v187 = v219;
                                v188 = v229;
                                goto LABEL_195;
                              }
                            }

                            else
                            {
                            }

                            v203 = 0;
                            v204 = 1;
                            goto LABEL_187;
                          }
                        }

                        else
                        {
                        }

                        v196 = 0;
                        goto LABEL_179;
                      }

                      v222 = a1;
                      v218 = v8;
                      v237 = result;
                      v238 = v81;
                      v239 = BYTE2(v81);
                      v240 = BYTE3(v81);
                      v241 = BYTE4(v81);
                      v242 = BYTE5(v81);
                      v138 = [objc_allocWithZone(NSUUID) initWithUUIDBytes:&v237];
                      v119 = v234;
                      v139 = *(v234 + 56);
                      if (v138)
                      {
                        v140 = v138;
                        v141 = 1;
                        v142 = v223;
                        v118 = v233;
                        v139(v223, 1, 1, v233);
                        sub_100014BB0(&qword_100CB7170, &type metadata accessor for UUID);
                        sub_100937448();

                        if ((*(v119 + 48))(v142, 1, v118) != 1)
                        {
                          (*(v119 + 32))(v231, v223, v118);
                          v141 = 0;
                        }
                      }

                      else
                      {
                        v141 = 1;
                        v118 = v233;
                      }

                      v117 = v231;
                      v139(v231, v141, 1, v118);
                      v8 = v218;
                    }

                    v120 = v222;
                    goto LABEL_138;
                  }

                  goto LABEL_102;
                }
              }
            }

            else
            {
            }

LABEL_103:
            v60 = sub_1009364B8();
            v121 = sub_100936EF8();
            if (os_log_type_enabled(v60, v121))
            {
              v122 = swift_slowAlloc();
              v123 = v46;
              v124 = swift_slowAlloc();
              v237 = v124;
              *v122 = 136315394;
              *(v122 + 4) = sub_10001273C(0xD000000000000051, 0x8000000100B03960, &v237);
              *(v122 + 12) = 1024;
              *(v122 + 14) = 16;
              _os_log_impl(&_mh_execute_header, v60, v121, "%s: mki not %d bytes", v122, 0x12u);
              sub_100012970(v124);

              v125 = v232;
              v126 = v123;
            }

            else
            {
              v125 = v232;
              v126 = v46;
            }

            sub_1007156D8(v125, v126);
LABEL_66:
            sub_1007156D8(v39, v38);
            goto LABEL_29;
          }

          goto LABEL_63;
        }
      }
    }

    else
    {
    }

    v60 = sub_1009364B8();
    v61 = sub_100936EF8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      *v62 = 136315394;
      *(v62 + 4) = sub_10001273C(0xD000000000000051, 0x8000000100B03960, &v237);
      *(v62 + 12) = 2080;
      v67 = sub_100936A88();
      v69 = sub_10001273C(v67, v68, &v237);

      *(v62 + 14) = v69;
      v66 = "%s: no mkm data in %s";
      goto LABEL_28;
    }
  }

LABEL_29:

  return 0;
}

uint64_t sub_10080E778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100706B30(&qword_100CB2D98);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = [objc_allocWithZone(NSUUID) initWithUUIDBytes:a1];
  v8 = sub_1009360A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  if (v7)
  {
    v11 = *(v8 - 8);
    v15[0] = *(v9 + 56);
    v15[1] = v9 + 56;
    v10(v6, 1, 1, v8);
    sub_100014BB0(&qword_100CB7170, &type metadata accessor for UUID);
    sub_100937448();

    if ((*(v11 + 48))(v6, 1, v8) == 1)
    {
      v12 = a2;
      v13 = 1;
    }

    else
    {
      (*(v11 + 32))(a2, v6, v8);
      v12 = a2;
      v13 = 0;
    }

    return (v15[0])(v12, v13, 1, v8);
  }

  else
  {

    return (v10)(a2, 1, 1, v8);
  }
}

uint64_t sub_10080E97C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, unint64_t a13, __int16 a14)
{
  v18 = (*((swift_isaMask & *v14) + 0x3B0))(a9, a10);
  v19 = (*((swift_isaMask & *v18) + 0x1E0))(a1 & 1, a2, a3, a4, a5, a6, a7, a8, a11, a12 & 1, a13 | ((HIDWORD(a13) & 1) << 32), a14);

  return v19;
}

void sub_10080EAC4(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v3 = sub_100706B30(&qword_100CB3250);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*((swift_isaMask & *v2) + 0x408))(0xD000000000000028, 0x8000000100B039C0);
  (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_identityController)) + 0x130))(v10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100013814(v5, &qword_100CB3250);
    v11 = sub_1009364B8();
    v12 = sub_100936EF8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "send(keyRecoveryRequest): cannot send keyRecoveryRequest because we don't have our own public identity", v13, 2u);
    }
  }

  else
  {
    v14 = sub_100818A04(v5, v9, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v15 = (*((swift_isaMask & *v2) + 0x140))(v14);
    v16 = v15;
    v17 = 0;
    v18 = v15 + 64;
    v19 = 1 << *(v15 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v15 + 64);
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
      v23 = v17;
LABEL_13:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = *(*(v16 + 56) + ((v23 << 9) | (8 * v24)));
      v26 = *((swift_isaMask & *v25) + 0x200);
      v27 = v25;
      v26(v28, v29, v9);
    }

    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        sub_100818580(v9, type metadata accessor for IDSGroupEncryptionFullIdentity);

        return;
      }

      v21 = *(v18 + 8 * v23);
      ++v17;
      if (v21)
      {
        v17 = v23;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_10080EEA8()
{
  v1 = v0;
  v2 = sub_1009364F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v120 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100936528();
  v119 = *(v5 - 8);
  __chkstk_darwin(v5);
  v118 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100936558();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v108 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v104 - v11;
  v128 = sub_100936038();
  v133 = *(v128 - 8);
  v12 = __chkstk_darwin(v128);
  v125 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v124 = &v104 - v15;
  __chkstk_darwin(v14);
  v127 = &v104 - v16;
  v135 = type metadata accessor for IDSGroupEncryptionControllerParticipantPreKeyState(0);
  v17 = __chkstk_darwin(v135);
  v134 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v129 = &v104 - v19;
  v20 = sub_100706B30(&unk_100CB6040);
  __chkstk_darwin(v20 - 8);
  v132 = &v104 - v21;
  v131 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v22 = *(v131 - 8);
  v23 = __chkstk_darwin(v131);
  v123 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &swift_isaMask;
  v26 = (*((swift_isaMask & *v0) + 0x140))(v23);
  sub_100810288(v26);
  v28 = v27;
  v117 = v29;

  if (!v28)
  {
    return;
  }

  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_75;
  }

LABEL_3:
  v30 = &_swiftEmptySetSingleton;
LABEL_4:
  v104 = v8;
  v111 = v3;
  v143 = v30;
  v31 = (*((*v25 & *v1) + 0x258))();
  if ((v31 & 0xC000000000000001) != 0)
  {
    sub_100937118();
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
    sub_100936E58();
    v31 = v144;
    v3 = v145;
    v33 = v146;
    v8 = v147;
    v34 = v148;
  }

  else
  {
    v8 = 0;
    v35 = -1 << *(v31 + 32);
    v3 = v31 + 56;
    v36 = ~v35;
    v37 = -v35;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v34 = v38 & *(v31 + 56);
    v33 = v36;
  }

  v105 = v7;
  v110 = v5;
  v112 = v2;
  v107 = v33;
  v2 = (v33 + 64) >> 6;
  v130 = (v22 + 6);
  v122 = (v133 + 32);
  v126 = (v133 + 8);
  v113 = 1;
  v39 = 0.0;
  *&v32 = 138412546;
  v106 = v32;
  v114 = v1;
  v133 = v31;
  v121 = v2;
  v115 = v3;
  while (1)
  {
    v5 = v8;
    v7 = v34;
    if (v31 < 0)
    {
      break;
    }

    while (1)
    {
      while (1)
      {
        v42 = v5;
        v43 = v7;
        v8 = v5;
        if (!v7)
        {
          while (1)
          {
            v8 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            if (v8 >= v2)
            {
              goto LABEL_48;
            }

            v43 = *(v3 + 8 * v8);
            ++v42;
            if (v43)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          if (sub_1009373F8())
          {
            sub_100729B20(&_swiftEmptyArrayStorage);
            goto LABEL_4;
          }

          goto LABEL_3;
        }

LABEL_19:
        v34 = (v43 - 1) & v43;
        v41 = *(*(v31 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v43)))));
        v22 = v41;
        if (!v41)
        {
          goto LABEL_48;
        }

LABEL_20:
        v44 = v132;
        (*((*v25 & *v22) + 0x108))(v41);
        if ((*v130)(v44, 1, v131) == 1)
        {
          v45 = sub_100013814(v44, &unk_100CB6040);
          goto LABEL_24;
        }

        v46 = v44;
        v47 = v123;
        sub_100818A04(v46, v123, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        if (sub_10089CDF8())
        {
          break;
        }

        v7 = v34;
        v68 = v129;
        swift_storeEnumTagMultiPayload();
        (*((*v25 & *v22) + 0xD8))(v68);

        sub_100818580(v47, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v5 = v8;
LABEL_33:
        v31 = v133;
        if (v133 < 0)
        {
          goto LABEL_12;
        }
      }

      v45 = sub_100818580(v47, type metadata accessor for IDSGroupEncryptionPublicIdentity);
LABEL_24:
      v48 = v127;
      (*((*v25 & *v22) + 0xD0))(v45);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      v63 = v128;
      (*v122)(v48, v134, v128);
      v64 = v124;
      sub_100936028();
      sub_100935F38();
      v53 = v65;
      v66 = *v126;
      (*v126)(v64, v63);
      v67 = *(v1 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_config);
      if (*(v67 + OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_preKeyRequestDelayDuration) >= v53)
      {
        v55 = (v67 + OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_preKeyRequestDelayDuration);
        v66(v48, v63);
        v3 = v115;
        v25 = &swift_isaMask;
        goto LABEL_41;
      }

      sub_10081425C(&aBlock, v22, type metadata accessor for IDSGroupEncryptionControllerParticipant, &unk_100CB34B0, &unk_1009ACFF8, type metadata accessor for IDSGroupEncryptionControllerParticipant);

      v66(v48, v63);
      v5 = v8;
      v7 = v34;
      v31 = v133;
      v3 = v115;
      v25 = &swift_isaMask;
LABEL_37:
      v2 = v121;
      if (v31 < 0)
      {
        goto LABEL_12;
      }
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_10081425C(&aBlock, v22, type metadata accessor for IDSGroupEncryptionControllerParticipant, &unk_100CB34B0, &unk_1009ACFF8, type metadata accessor for IDSGroupEncryptionControllerParticipant);

      v5 = v8;
      v7 = v34;
      goto LABEL_33;
    }

    v50 = v128;
    (*v122)(v125, v134, v128);
    v51 = v124;
    sub_100936028();
    sub_100935F38();
    v53 = v52;
    v54 = *v126;
    (*v126)(v51, v50);
    v55 = (*(v1 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_config) + OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_preKeyRequestTimeout);
    if (*v55 < v53)
    {
      v56 = v54;
      v116 = v34;
      v57 = v22;
      v58 = v1;
      v59 = sub_1009364B8();
      v60 = sub_100936EF8();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = v106;
        *(v61 + 4) = v57;
        *v62 = v22;
        *(v61 + 12) = 2048;
        *(v61 + 14) = *v55;
        v22 = v57;
        _os_log_impl(&_mh_execute_header, v59, v60, "checkRemotePreKeys(): timeout requesting preKey for participant %@ (timeout: %f)", v61, 0x16u);
        sub_100013814(v62, &qword_100CB36B0);
        v1 = v114;
      }

      else
      {
      }

      v56(v125, v128);
      v5 = v8;
      v7 = v116;
      v25 = &swift_isaMask;
      v31 = v133;
      goto LABEL_37;
    }

    (v54)(v125, v128, *v55);
LABEL_41:

    if (v113)
    {
      v69 = *v55 - v53;
    }

    else
    {
      v69 = v39;
    }

    if (*v55 - v53 >= v69)
    {
      v39 = v69;
    }

    else
    {
      v39 = *v55 - v53;
    }

    v113 = 0;
    v31 = v133;
    v2 = v121;
  }

LABEL_12:
  v40 = sub_100937198();
  if (v40)
  {
    v149 = v40;
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    v41 = swift_dynamicCast();
    v22 = aBlock;
    v8 = v5;
    v34 = v7;
    if (aBlock)
    {
      goto LABEL_20;
    }
  }

LABEL_48:
  sub_100308C6C();
  if ((v113 & 1) == 0)
  {
    v133 = *(v1 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_q);
    v70 = v108;
    sub_100936538();
    v71 = v109;
    sub_1009365A8();
    v134 = *(v104 + 8);
    v72 = v105;
    (v134)(v70, v105);
    v73 = swift_allocObject();
    *(v73 + 16) = v1;
    v141 = sub_100818CA0;
    v142 = v73;
    aBlock = _NSConcreteStackBlock;
    v138 = 1107296256;
    v139 = sub_1000154AC;
    v140 = &unk_100BE91F8;
    v74 = _Block_copy(&aBlock);
    v75 = v1;
    v76 = v118;
    sub_100936508();
    v149 = &_swiftEmptyArrayStorage;
    sub_100014BB0(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    v1 = sub_100706B30(&unk_100CB3550);
    sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
    v77 = v120;
    v78 = v112;
    sub_1009370B8();
    sub_100936F48();
    _Block_release(v74);
    (*(v111 + 8))(v77, v78);
    (*(v119 + 8))(v76, v110);
    (v134)(v71, v72);
  }

  v79 = v143;
  if ((v143 & 0xC000000000000001) != 0)
  {
    if (!sub_100937158())
    {
      goto LABEL_71;
    }

    sub_100937118();
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
    sub_100936E58();
    v5 = v149;
    v3 = v150;
    v25 = v151;
    v22 = v152;
    v2 = v153;
  }

  else
  {
    if (!*(v143 + 16))
    {
LABEL_71:

      return;
    }

    v80 = -1 << *(v143 + 32);
    v3 = v143 + 56;
    v25 = ~v80;
    v81 = -v80;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    else
    {
      v82 = -1;
    }

    v2 = v82 & *(v143 + 56);

    v22 = 0;
    v5 = v79;
  }

  v8 = (v25 + 64) >> 6;
  if ((v5 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v85 = v22;
      v86 = v2;
      v7 = v22;
      if (!v2)
      {
        break;
      }

LABEL_66:
      v1 = ((v86 - 1) & v86);
      v84 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v86)))));
      if (!v84)
      {
        goto LABEL_69;
      }

LABEL_67:
      v87 = v129;
      sub_100936028();
      swift_storeEnumTagMultiPayload();
      (*((swift_isaMask & *v84) + 0xD8))(v87);

      v22 = v7;
      v2 = v1;
      if (v5 < 0)
      {
        goto LABEL_59;
      }
    }

    while (1)
    {
      v7 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        goto LABEL_74;
      }

      if (v7 >= v8)
      {
        goto LABEL_69;
      }

      v86 = *(v3 + 8 * v7);
      v85 = (v85 + 1);
      if (v86)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_59:
  v83 = sub_100937198();
  if (v83)
  {
    v136 = v83;
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    swift_dynamicCast();
    v84 = aBlock;
    v7 = v22;
    v1 = v2;
    if (aBlock)
    {
      goto LABEL_67;
    }
  }

LABEL_69:
  sub_100308C6C();
  v88 = sub_1008064FC(v79);
  v89 = sub_1008178DC(v88);

  sub_100810308(v89);
  isa = sub_100936E08().super.isa;

  v91 = [objc_opt_self() destinationWithDestinations:isa];

  v92 = im_primary_queue();
  if (v92)
  {
    v93 = v92;

    v94 = swift_allocObject();
    v95 = v114;
    v96 = v117;
    v94[2] = v114;
    v94[3] = v96;
    v94[4] = v91;
    v141 = sub_100818AC8;
    v142 = v94;
    aBlock = _NSConcreteStackBlock;
    v138 = 1107296256;
    v139 = sub_1000154AC;
    v140 = &unk_100BE91A8;
    v97 = _Block_copy(&aBlock);
    v98 = v95;
    v99 = v96;
    v100 = v91;
    v101 = v118;
    sub_100936508();
    v136 = &_swiftEmptyArrayStorage;
    sub_100014BB0(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550);
    sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
    v102 = v120;
    v103 = v112;
    sub_1009370B8();
    sub_100936F88();
    _Block_release(v97);

    (*(v111 + 8))(v102, v103);
    (*(v119 + 8))(v101, v110);
  }

  else
  {
    __break(1u);
  }
}

void *sub_100810288(uint64_t a1)
{
  v2 = sub_1009370C8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1008171C0(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_100810308(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_100937158())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptySetSingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_100706B30(&qword_100CB71B0);
  v3 = sub_100937228();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_100937118();
  sub_100014170(0, &qword_100CB4A78);
  sub_100746FD4(&qword_100CB4A80, &qword_100CB4A78);
  result = sub_100936E58();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = (v3 + 7);
  while (v1 < 0)
  {
    v16 = sub_100937198();
    if (!v16)
    {
LABEL_34:
      sub_100308C6C();

      return v3;
    }

    *&v27 = v16;
    sub_100014170(0, &qword_100CB4A78);
    swift_dynamicCast();
LABEL_25:
    sub_100014170(0, &qword_100CB4A78);
    swift_dynamicCast();
    result = sub_1009371C8(v3[5]);
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v12[8 * (v21 >> 6)]) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*&v12[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v12[8 * v22];
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *&v12[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v14 = v3[6] + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++v3[2];
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_10081069C()
{
  v1 = (*((swift_isaMask & *v0) + 0x140))();
  v2 = v1;
  v3 = 0;
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
      v12 = *((swift_isaMask & *v11) + 0x1C8);
      v13 = v11;
      v12();

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10081084C()
{
  v1 = (*((swift_isaMask & *v0) + 0x110))();
  os_unfair_lock_lock(v1 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v1 + 4);

  return (*((swift_isaMask & *v0) + 0x378))(v2);
}

uint64_t sub_100810958(void *a1)
{
  v2 = sub_100936038();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  sub_100936028();
  sub_100936018();
  (*(v3 + 8))(v5, v2);
  (*(v3 + 56))(v8, 0, 1, v2);
  return (*((swift_isaMask & *a1) + 0x238))(v8);
}

void sub_100810C18()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x140))();
  v3 = v2;
  v4 = 0;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * v11)));
      v13 = *((swift_isaMask & *v12) + 0x1D8);
      v14 = v12;
      v13();

      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  v15 = *((swift_isaMask & *v1) + 0x220);

  v15(0);
}

uint64_t sub_100810E04()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x110))();
  os_unfair_lock_lock(v2 + 4);
  sub_1007D5B28(&v5);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v5;

  if (v3 == 1)
  {
    return (*((swift_isaMask & *v1) + 0x370))(result);
  }

  return result;
}

uint64_t sub_100810F04@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v3 = sub_1009364F8();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v46 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100936528();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1009364E8();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = (v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100936558();
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  v11 = __chkstk_darwin(v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = v41 - v14;
  v15 = sub_100706B30(&qword_100CB4AC0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v41 - v19;
  v21 = sub_100936038();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a1) + 0x230))(v23);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    result = sub_100013814(v20, &qword_100CB4AC0);
LABEL_9:
    v29 = 0;
    goto LABEL_10;
  }

  (*(v22 + 32))(v25, v20, v21);
  sub_100935FA8();
  v28 = v27;
  if (v27 < 1.0)
  {
    v29 = 1;
    (*(v22 + 56))(v18, 1, 1, v21);
    (*((swift_isaMask & *a1) + 0x238))(v18);
    result = (*(v22 + 8))(v25, v21);
LABEL_10:
    *v53 = v29;
    return result;
  }

  v30 = *(a1 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_q);
  result = sub_100936538();
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v28 < 9.22337204e18)
  {
    *v8 = v28;
    v32 = v42;
    v31 = v43;
    (*(v42 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v43);
    v41[1] = v30;
    sub_100936548();
    (*(v32 + 8))(v8, v31);
    v33 = *(v52 + 8);
    v52 += 8;
    v43 = v33;
    v33(v13, v51);
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    aBlock[4] = sub_100818A6C;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BE9158;
    v35 = _Block_copy(aBlock);
    v36 = a1;
    v37 = v44;
    sub_100936508();
    v54 = &_swiftEmptyArrayStorage;
    sub_100014BB0(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550);
    sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
    v38 = v46;
    v39 = v49;
    sub_1009370B8();
    v40 = v50;
    sub_100936F48();
    _Block_release(v35);
    (*(v48 + 8))(v38, v39);
    (*(v45 + 8))(v37, v47);
    v43(v40, v51);
    (*(v22 + 8))(v25, v21);

    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100811644()
{
  v1 = (*((swift_isaMask & *v0) + 0x110))();
  os_unfair_lock_lock(v1 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1008116F0(void *a1)
{
  v2 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_100936038();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  return (*((swift_isaMask & *a1) + 0x238))(v4);
}

void *sub_1008118A8()
{
  v1 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  v2 = __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = sub_100706B30(&qword_100CB3250);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v22 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v22 - v18;
  v23 = &_swiftEmptySetSingleton;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_identityController)) + 0x130))(v17);
  v20 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
  {
    sub_100013814(v9, &qword_100CB3250);
    return &_swiftEmptySetSingleton;
  }

  else
  {
    sub_10081899C(v9, v16, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_100818580(v9, type metadata accessor for IDSGroupEncryptionFullIdentity);
    sub_100818A04(v16, v19, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_10081899C(v19, v13, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007189F8(v13, v4);
    swift_storeEnumTagMultiPayload();
    sub_100727F64(v6, v4);
    sub_100818580(v6, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_100818580(v19, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    return v23;
  }
}

void sub_100811BC4()
{
  v1 = (*((swift_isaMask & *v0) + 0x140))();
  v2 = v1;
  v3 = 0;
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
      v12 = *((swift_isaMask & *v11) + 0x218);
      v13 = v11;
      v12();

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }
}

void sub_100811D74()
{
  v1 = (*((swift_isaMask & *v0) + 0x140))();
  v2 = v1;
  v3 = 0;
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
      v12 = *((swift_isaMask & *v11) + 0x220);
      v13 = v11;
      v12();

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }
}

void sub_100811F24()
{
  v1 = (*((swift_isaMask & *v0) + 0x140))();
  v2 = v1;
  v3 = 0;
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
      v12 = *((swift_isaMask & *v11) + 0x1D0);
      v13 = v11;
      v12();

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }
}

void sub_1008120D4()
{
  v1 = (*((swift_isaMask & *v0) + 0x140))();
  v2 = v1;
  v3 = 0;
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
      v12 = *((swift_isaMask & *v11) + 0x268);
      v13 = v11;
      v12();

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }
}

void sub_100812284(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*((swift_isaMask & *v2) + 0x140))();
  if (*(v6 + 16))
  {
    v7 = sub_1000136E4(a1, a2);
    if (v8)
    {
      *(*(v6 + 56) + 8 * v7);

      return;
    }
  }

  v63 = a1;
  v64 = a2;

  type metadata accessor for IDSGroupEncryptionKeyMaterialController(0);
  v10 = *(v3 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id);
  v9 = *(v3 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8);
  v61 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_cryptoHandler;
  sub_100022B2C(v3 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_cryptoHandler, v66);
  v11 = *(v3 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_config);
  v12 = *&v11[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_mkmRollDuration];
  v13 = *((swift_isaMask & *v3) + 0x3D8);

  v15 = v13(v14);
  v16 = OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_isRatchetEnabled;
  LOBYTE(v13) = v11[OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_isRatchetEnabled];

  v17 = v10;
  v59 = sub_100709094(0, 0, v10, v9, v66, v12, v12, 0, 1, 3u, v15 & 1, v13);
  v18 = [objc_opt_self() sharedInstance];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 persistenceManager];

    if (!v20)
    {
      __break(1u);
      return;
    }

    sub_1008D1FD8(0, 0);
  }

  sub_100022B2C(v3 + v61, v66);
  v21 = v11[v16];

  v22 = sub_100709094(0, 0, v10, v9, v66, 0, 0, 1, 0, 4u, 0, v21);
  type metadata accessor for IDSGroupEncryptionControllerGroupSession();
  v23 = *(v3 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_identityController);
  v24 = *(v3 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_pushHandler);
  sub_100022B2C(v3 + v61, v66);
  v25 = *(v3 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_sessionProvider);
  swift_unknownObjectRetain_n();
  v26 = v11;

  v27 = v23;
  swift_unknownObjectRetain();
  v28 = v59;
  v29 = v22;
  v30 = v3;
  v60 = v29;
  v62 = v28;
  v58 = v25;
  v31 = sub_1007CA9A4(v26, v17, v9, v63, v64, v27, v24, v66, v25, v30, &off_100BE90E8, v28, v29);
  v32 = (*((swift_isaMask & *v30) + 0x1E8))();
  (*((swift_isaMask & *v31) + 0x1A0))(v32);
  v33 = *((swift_isaMask & *v31) + 0x130);
  v34 = v30;
  v35 = v33(v66);
  v37 = v36;
  v38 = *v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v37 = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = sub_100724F00(0, v38[2] + 1, 1, v38);
    *v37 = v38;
  }

  v41 = v38[2];
  v40 = v38[3];
  if (v41 >= v40 >> 1)
  {
    v38 = sub_100724F00((v40 > 1), v41 + 1, 1, v38);
    *v37 = v38;
  }

  v38[2] = v41 + 1;
  v42 = &v38[2 * v41];
  v42[4] = v34;
  v42[5] = &off_100BE90D8;
  v35(v66, 0);
  type metadata accessor for IDSDSessionBlobProvider();
  v43 = sub_10083ED20(v58);
  v44 = v33(v66);
  v46 = v45;
  v47 = *v45;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  *v46 = v47;
  if ((v48 & 1) == 0)
  {
    v47 = sub_100724F00(0, v47[2] + 1, 1, v47);
    *v46 = v47;
  }

  v50 = v47[2];
  v49 = v47[3];
  if (v50 >= v49 >> 1)
  {
    v47 = sub_100724F00((v49 > 1), v50 + 1, 1, v47);
    *v46 = v47;
  }

  v47[2] = v50 + 1;
  v51 = &v47[2 * v50];
  v51[4] = v43;
  v51[5] = &off_100BE97E0;
  v44(v66, 0);
  v52 = *((swift_isaMask & *v34) + 0x150);

  v53 = v31;
  v54 = v52(v66);
  v56 = v55;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v56;
  *v56 = 0x8000000000000000;
  sub_100816F48(v53, v63, v64, v57);

  *v56 = v65;
  v54(v66, 0);
}

uint64_t sub_100812988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*((swift_isaMask & *v2) + 0x140))();
  if (*(v6 + 16) && (v7 = sub_1000136E4(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);

    (*((swift_isaMask & *v9) + 0x128))(&_swiftEmptyArrayStorage);
  }

  else
  {
  }

  v10 = *((swift_isaMask & *v3) + 0x150);

  v11 = v10(v13);
  sub_100808D0C(0, a1, a2);
  return v11(v13, 0);
}

void sub_100812BEC(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup__shortMKIEnabled;
  if (*(v1 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup__shortMKIEnabled) == (a1 & 1))
  {
LABEL_13:
    *(v1 + v3) = v2;
  }

  else
  {
    v22 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup__shortMKIEnabled;
    v23 = a1 & 1;
    v24 = v1;
    v4 = (*((swift_isaMask & *v1) + 0x140))();
    v5 = 0;
    v7 = v4 + 64;
    v6 = *(v4 + 64);
    v25 = v4;
    v8 = 1 << *(v4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & v6;
    v11 = (v8 + 63) >> 6;
    if ((v9 & v6) != 0)
    {
      do
      {
        v12 = v5;
LABEL_10:
        v13 = *(*(v25 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
        v14 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController;
        v15 = *&v13[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_mkmController];
        v10 &= v10 - 1;
        v16 = *((swift_isaMask & *v15) + 0xB8);
        v17 = v13;
        v18 = v15;
        v16(a1 & 1);

        v19 = *&v13[v14];
        v20 = *((swift_isaMask & *v19) + 0x1F8);
        v21 = v19;
        v20();
      }

      while (v10);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v11)
      {

        v1 = v24;
        v2 = v23;
        v3 = v22;
        goto LABEL_13;
      }

      v10 = *(v7 + 8 * v12);
      ++v5;
      if (v10)
      {
        v5 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void (*sub_100812DFC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup__shortMKIEnabled);
  return sub_100812E30;
}

uint64_t sub_100812EC8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_100812F84()
{
  v1 = (*((swift_isaMask & *v0) + 0x3F0))();
  os_unfair_lock_lock(v1 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_10081303C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v7 = v3;
  v104 = a1;
  v8 = sub_1009364B8();
  v9 = sub_100936F18();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10001273C(a2, a3, &v107);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10001273C(*&v7[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id], *&v7[OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id + 8], &v107);
    _os_log_impl(&_mh_execute_header, v8, v9, "%sGroup %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v7;
  v12 = sub_1009364B8();
  v13 = sub_100936F18();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v107 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_10001273C(a2, a3, &v107);
    *(v14 + 12) = 2048;
    *(v14 + 14) = (*((swift_isaMask & *v11) + 0x1E8))();

    _os_log_impl(&_mh_execute_header, v12, v13, "%s    localParticipantID: %llu", v14, 0x16u);
    sub_100012970(v15);
  }

  else
  {
  }

  v16 = sub_1009364B8();
  v17 = sub_100936F18();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v107 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10001273C(a2, a3, &v107);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s    Members:", v18, 0xCu);
    sub_100012970(v19);
  }

  v20 = (*((swift_isaMask & *v11) + 0x110))();
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  os_unfair_lock_lock(v22 + 4);
  sub_100818D34(&v107);
  os_unfair_lock_unlock(v20 + 4);
  v23 = v107;

  v102 = v11;
  v103 = a2;
  if ((v23 & 0xC000000000000001) != 0)
  {
    result = sub_100937318();
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v23 = result | 0x8000000000000000;
  }

  else
  {
    v28 = -1 << *(v23 + 32);
    v25 = v23 + 64;
    v26 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v27 = v30 & *(v23 + 64);
  }

  v31 = 0;
  v32 = (v26 + 64) >> 6;
  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v33 = v31;
    v34 = v27;
    v35 = v31;
    if (!v27)
    {
      break;
    }

LABEL_19:
    v36 = (v34 - 1) & v34;
    v37 = (v35 << 9) | (8 * __clz(__rbit64(v34)));
    v38 = *(*(v23 + 56) + v37);
    v39 = *(*(v23 + 48) + v37);
    v40 = v38;
    if (!v39)
    {
LABEL_25:
      sub_100308C6C();

      v43 = sub_1009364B8();
      v44 = sub_100936F18();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v107 = v46;
        *v45 = 136315138;
        v47 = v103;
        *(v45 + 4) = sub_10001273C(v103, a3, &v107);
        _os_log_impl(&_mh_execute_header, v43, v44, "%s    ", v45, 0xCu);
        sub_100012970(v46);
      }

      else
      {

        v47 = v103;
      }

      v48 = sub_1009364B8();
      v49 = sub_100936F18();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v107 = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_10001273C(v47, a3, &v107);
        _os_log_impl(&_mh_execute_header, v48, v49, "%s    Participants:", v50, 0xCu);
        sub_100012970(v51);
      }

      result = (*((swift_isaMask & *v102) + 0x258))(v52, v53);
      v54 = result;
      if ((result & 0xC000000000000001) != 0)
      {
        sub_100937118();
        type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
        sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
        result = sub_100936E58();
        v54 = v107;
        v55 = v108;
        v56 = v109;
        v57 = v110;
        v58 = v111;
      }

      else
      {
        v57 = 0;
        v59 = -1 << *(result + 32);
        v55 = result + 56;
        v56 = ~v59;
        v60 = -v59;
        if (v60 < 64)
        {
          v61 = ~(-1 << v60);
        }

        else
        {
          v61 = -1;
        }

        v58 = v61 & *(result + 56);
      }

      v62 = (v56 + 64) >> 6;
      if (v54 < 0)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v63 = v57;
        v64 = v58;
        v65 = v57;
        if (!v58)
        {
          break;
        }

LABEL_41:
        v66 = (v64 - 1) & v64;
        v67 = *(*(v54 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v64)))));
        if (!v67)
        {
LABEL_47:
          sub_100308C6C();

          v68 = sub_1009364B8();
          v69 = sub_100936F18();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v105 = v71;
            *v70 = 136315138;
            v72 = v103;
            *(v70 + 4) = sub_10001273C(v103, a3, &v105);
            _os_log_impl(&_mh_execute_header, v68, v69, "%s    ", v70, 0xCu);
            sub_100012970(v71);
          }

          else
          {

            v72 = v103;
          }

          v75 = (*((swift_isaMask & *v102) + 0x158))(v73, v74);
          v76 = __chkstk_darwin(v75);
          v77 = __chkstk_darwin(v76);
          os_unfair_lock_lock(v77 + 4);
          sub_100818D34(&v105);
          os_unfair_lock_unlock(v75 + 4);
          v78 = v105;

          v79 = sub_1009364B8();
          v80 = sub_100936F18();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v105 = v82;
            *v81 = 136315138;
            *(v81 + 4) = sub_10001273C(v72, a3, &v105);
            _os_log_impl(&_mh_execute_header, v79, v80, "%s    Formerly Active Participants:", v81, 0xCu);
            sub_100012970(v82);
          }

          v83 = 1 << *(v78 + 32);
          v84 = -1;
          if (v83 < 64)
          {
            v84 = ~(-1 << v83);
          }

          v85 = v84 & *(v78 + 64);
          v86 = (v83 + 63) >> 6;

          v87 = 0;
          if (v85)
          {
            while (1)
            {
              v88 = v87;
LABEL_60:
              v89 = *(*(v78 + 56) + ((v88 << 9) | (8 * __clz(__rbit64(v85)))));
              v85 &= v85 - 1;
              v105 = v72;
              v106 = a3;

              v90 = v89;
              v114._countAndFlagsBits = 0x2020202020202020;
              v114._object = 0xE800000000000000;
              sub_100936C08(v114);
              (*((swift_isaMask & *v90) + 0x150))(v104, v105, v106);

              if (!v85)
              {
                goto LABEL_56;
              }
            }
          }

          while (1)
          {
LABEL_56:
            v88 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              __break(1u);
              goto LABEL_74;
            }

            if (v88 >= v86)
            {
              break;
            }

            v85 = *(v78 + 64 + 8 * v88);
            ++v87;
            if (v85)
            {
              v87 = v88;
              goto LABEL_60;
            }
          }

          result = (*((swift_isaMask & *v102) + 0x140))(v91);
          v92 = result;
          v93 = 0;
          v94 = result + 64;
          v95 = 1 << *(result + 32);
          v96 = -1;
          if (v95 < 64)
          {
            v96 = ~(-1 << v95);
          }

          v97 = v96 & *(result + 64);
          for (i = (v95 + 63) >> 6; v97; result = )
          {
            v99 = v93;
LABEL_70:
            v100 = *(*(v92 + 56) + ((v99 << 9) | (8 * __clz(__rbit64(v97)))));
            v97 &= v97 - 1;
            v105 = v103;
            v106 = a3;

            v101 = v100;
            v115._countAndFlagsBits = 538976288;
            v115._object = 0xE400000000000000;
            sub_100936C08(v115);
            (*((swift_isaMask & *v101) + 0x270))(v104, v105, v106);
          }

          while (1)
          {
            v99 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              break;
            }

            if (v99 >= i)
            {
            }

            v97 = *(v94 + 8 * v99);
            ++v93;
            if (v97)
            {
              v93 = v99;
              goto LABEL_70;
            }
          }

LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        while (1)
        {
          v105 = v103;
          v106 = a3;

          v113._countAndFlagsBits = 0x2020202020202020;
          v113._object = 0xE800000000000000;
          sub_100936C08(v113);
          (*((swift_isaMask & *v67) + 0x150))(v104, v103, a3);

          v57 = v65;
          v58 = v66;
          if ((v54 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_43:
          if (sub_100937198())
          {
            type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
            swift_dynamicCast();
            v67 = v105;
            v65 = v57;
            v66 = v58;
            if (v105)
            {
              continue;
            }
          }

          goto LABEL_47;
        }
      }

      while (1)
      {
        v65 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_76;
        }

        if (v65 >= v62)
        {
          goto LABEL_47;
        }

        v64 = *(v55 + 8 * v65);
        ++v63;
        if (v64)
        {
          goto LABEL_41;
        }
      }
    }

    while (1)
    {

      v107 = v103;
      v108 = a3;

      v112._countAndFlagsBits = 0x2020202020202020;
      v112._object = 0xE800000000000000;
      sub_100936C08(v112);
      (*((swift_isaMask & *v40) + 0x98))(v104, v107, v108);

      v31 = v35;
      v27 = v36;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_21:
      if (sub_1009373B8())
      {
        v42 = v41;
        sub_100014170(0, &qword_100CBA2E0);
        swift_dynamicCast();
        v39 = v107;
        v105 = v42;
        type metadata accessor for IDSGroupEncryptionControllerMember();
        swift_dynamicCast();
        v40 = v107;
        v35 = v31;
        v36 = v27;
        if (v39)
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      goto LABEL_25;
    }

    v34 = *(v25 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_19;
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_10081425C(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_100937168();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
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
        v27 = sub_1008144C0(v15, result + 1, a4, a5, a6);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_100744114(v28 + 1, a4);
        }

        v29 = v16;
        sub_100731414(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = sub_100937028(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_100937038();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_1008148DC(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_1008144C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    sub_100706B30(a3);
    v7 = sub_100937218();
    v20 = v7;
    sub_100937118();
    if (sub_100937198())
    {
      a5(0);
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

uint64_t sub_1008146B8()
{
  v1 = v0;
  v2 = *v0;
  sub_100706B30(&qword_100CB71C8);
  result = sub_100937208();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_100937658();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_1008148DC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
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
    v11(0);
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

uint64_t sub_100814A60(uint64_t result, unint64_t a2, char a3)
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
    sub_1008146B8();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100814B80();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100814CC0();
  }

  v8 = *v3;
  result = sub_100937658();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1009375C8();
  __break(1u);
  return result;
}

void *sub_100814B80()
{
  v1 = v0;
  sub_100706B30(&qword_100CB71C8);
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

uint64_t sub_100814CC0()
{
  v1 = v0;
  v2 = *v0;
  sub_100706B30(&qword_100CB71C8);
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_100937658();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

void sub_100814EB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1008152C0(a1, a2, v20, a3, &unk_100CB34B0);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100815030(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v24 = a2;
    v7 = 1 << *(a3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a3 + 56);
    v10 = (v7 + 63) >> 6;
    v25 = 0;
    v26 = a4;
    v11 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v15 = v12 | (v11 << 6);
      v16 = *(*(a3 + 48) + 8 * v15);
      v17 = *((swift_isaMask & *v16) + 0xB0);
      v18 = v16;
      v19 = v17();
      if (v19)
      {
        v20 = v19;
        type metadata accessor for IDSGroupEncryptionControllerMember();
        v21 = v26;
        v22 = sub_100937038();

        if (v22)
        {
          *&a1[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
          if (__OFADD__(v25++, 1))
          {
            __break(1u);
LABEL_20:
            sub_1008152C0(a1, v24, v25, a3, &unk_100CB34B0);

            return;
          }
        }
      }

      else
      {
      }
    }

    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        goto LABEL_20;
      }

      v14 = *(a3 + 56 + 8 * v11);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_100815230(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_100814EB0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1008152C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = &_swiftEmptySetSingleton;
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  sub_100706B30(a5);
  result = sub_100937228();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = v10[5];
    v18 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = sub_100937028(v17);
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(v10[6] + 8 * v22) = v18;
    ++v10[2];
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
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

uint64_t sub_1008154AC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_1009371A8();

    if (v5)
    {
      v6 = sub_100815644();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
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
    sub_100744AB0(&unk_100CB34B0);
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100745034(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_100815644()
{
  v1 = v0;

  v2 = sub_100937158();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1008144C0(v3, v2, &unk_100CB34B0, &unk_1009ACFF8, type metadata accessor for IDSGroupEncryptionControllerParticipant);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_100937028(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
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

uint64_t sub_1008157C0(void *a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t))
{
  v7 = v5;
  v8 = *v5;
  if ((*v5 & 0xC000000000000001) == 0)
  {
    v10 = a3;
    v19 = a2();
    if (v20)
    {
      v8 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v5;
      v24 = *v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v18 = *(*(v22 + 56) + 8 * v8);
        sub_100743134(v8, v22);
        *v7 = v22;
        return v18;
      }

LABEL_14:
      sub_1008166B0(v10);
      v22 = v24;
      goto LABEL_10;
    }

    return 0;
  }

  if (v8 < 0)
  {
    v10 = *v5;
  }

  else
  {
    v10 = (v8 & 0xFFFFFFFFFFFFFF8);
  }

  v11 = a1;
  v12 = sub_1009373A8();

  if (!v12)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v13 = sub_100937378();
  v14 = a5(v10, v13);

  v15 = (a2)(v11);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = *(*(v14 + 56) + 8 * v15);
  sub_100743134(v15, v14);

  *v7 = v14;
  return v18;
}

Swift::Int sub_10081593C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100706B30(&qword_100CB71D0);
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
        type metadata accessor for IDSGroupEncryptionControllerMember();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100815DD4(v12 + 1, 1, &qword_100CB71D0);
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

Swift::Int sub_100815B88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100706B30(&qword_100CB71C0);
    v2 = sub_100937428();
    v19 = v2;
    sub_100937318();
    v3 = sub_1009373B8();
    if (v3)
    {
      v4 = v3;
      sub_100014170(0, &qword_100CB34A0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100815DD4(v12 + 1, 1, &qword_100CB71C0);
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

uint64_t sub_100815DD4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_100706B30(a3);
  result = sub_100937418();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_100937028(*(v8 + 40));
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
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
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_100816034(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB71B8);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
        v22 = v21;
      }

      result = sub_100937658();
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10081629C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB71A8);
  v35 = a2;
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100937668();
      sub_100936BC8();
      result = sub_1009376C8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100816540(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1009370D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_100937658();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

id sub_1008166B0(uint64_t *a1)
{
  v2 = v1;
  sub_100706B30(a1);
  v3 = *v1;
  v4 = sub_100937408();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
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

      v17 = *(v3 + 64 + 8 * v9);
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

id sub_100816800()
{
  v1 = v0;
  sub_100706B30(&qword_100CB71B8);
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

id sub_10081695C()
{
  v1 = v0;
  sub_100706B30(&qword_100CB71A8);
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

id sub_100816AC8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1007417B0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100815DD4(v13, a3 & 1, &qword_100CB71D0);
      v8 = sub_1007417B0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100014170(0, &qword_100CBA2E0);
        v8 = sub_1009375D8();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_1008166B0(&qword_100CB71D0);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

id sub_100816C64(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1007DBB60(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100815DD4(v13, a3 & 1, &qword_100CB71C0);
      v8 = sub_1007DBB60(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100014170(0, &qword_100CB34A0);
        v8 = sub_1009375D8();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_1008166B0(&qword_100CB71C0);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

unint64_t sub_100816E00(uint64_t a1, uint64_t a2, char a3)
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = v19[7];
      v21 = *(v20 + 8 * result);
      *(v20 + 8 * result) = a1;

      return _objc_release_x1(result, v21);
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100816800();
    result = v17;
    goto LABEL_8;
  }

  sub_100816034(v14, a3 & 1);
  result = sub_10072517C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = sub_1009375D8();
  __break(1u);
  return _objc_release_x1(result, v21);
}

uint64_t sub_100816F48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_10081629C(v16, a4 & 1);
      v11 = sub_1000136E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_1009375D8();
        __break(1u);
        return _objc_release_x1(v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_10081695C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return _objc_release_x1(v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_1008170C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_100937158())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1009371A8();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_1008171C0(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_100817250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB71A8);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000136E4(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100817354(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100706B30(&qword_100CB71B8);
  v3 = sub_100937438();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_10072517C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
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
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_10072517C(v4);
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

unint64_t sub_100817450(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100706B30(a2);
    v7 = sub_100937438();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
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

uint64_t sub_100817548(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for IDSGroupEncryptionControllerGroup()
{
  result = qword_100CC9248;
  if (!qword_100CC9248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008176BC()
{
  v1 = *(v0 + 16);
  v2 = sub_100817450(&_swiftEmptyArrayStorage, &qword_100CB71D0, &unk_1009B64E8, sub_1007417B0);
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_membersByURI;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_100817750()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_membersByURI;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if ((v5 & 0xC000000000000001) == 0)
  {
    v9 = v3;
    goto LABEL_8;
  }

  if (v5 < 0)
  {
    v6 = *(v2 + v4);
  }

  else
  {
    v6 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = v3;
  result = sub_100937378();
  if (!__OFADD__(result, 1))
  {
    *(v2 + v4) = sub_10081593C(v6, result + 1);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v4);
    sub_100816AC8(v3, v1, isUniquelyReferenced_nonNull_native);
    *(v2 + v4) = v11;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}