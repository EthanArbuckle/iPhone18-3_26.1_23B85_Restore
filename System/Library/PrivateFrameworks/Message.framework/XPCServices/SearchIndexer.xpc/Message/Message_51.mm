void sub_100333104(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = sub_1004A5734();
  v7 = [v5 initWithEntityName:v6];

  if (qword_1005D8760 != -1)
  {
    swift_once();
  }

  v34[2] = xmmword_1005D9218;
  v34[3] = *&qword_1005D9228;
  v34[4] = xmmword_1005D9238;
  v34[0] = xmmword_1005D91F8;
  v34[1] = *&qword_1005D9208;
  v8 = sub_1003521DC(v34);
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004CEAA0;
  *(v9 + 56) = &type metadata for UInt64;
  *(v9 + 32) = v8;
  v10 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v12 = [objc_opt_self() predicateWithFormat:v10 argumentArray:isa];

  [v7 appendPredicate:v12];
  sub_10031E2EC(a1);
  v13 = sub_10037A73C();
  [v7 appendPredicate:v13];

  v35 = 0;
  v14 = [v7 execute:&v35];
  v15 = v35;
  if (!v14)
  {
    v30 = v35;
    sub_1004A4274();

    swift_willThrow();
    return;
  }

  v16 = v14;
  _s7MessageCMa();
  v17 = sub_1004A5C14();
  v18 = v15;

  sub_10002A54C(a2, a3);
  v31 = v7;
  if (v17 >> 62)
  {
    v19 = sub_1004A6A34();
    if (v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_6:
      if (v19 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v19; ++i)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = sub_1004A6794();
        }

        else
        {
          v21 = *(v17 + 8 * i + 32);
        }

        v22 = v21;
        v23 = sub_1004A5734();
        [v22 willAccessValueForKey:{v23, v31}];

        v24 = [v22 primitiveUid];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 longLongValue];

          v27 = (v26 - 0x100000000) < 0xFFFFFFFF00000001;
          if ((v26 - 0x100000000) < 0xFFFFFFFF00000001)
          {
            LODWORD(v26) = 0;
          }
        }

        else
        {
          LODWORD(v26) = 0;
          v27 = 1;
        }

        v28 = sub_1004A5734();
        [v22 didAccessValueForKey:v28];

        if (!v27)
        {
          v33 = v26;
          v29 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
          MessageIdentifierSet.remove(_:)(&v33, v29, &v35);
        }
      }
    }
  }
}

void sub_100333518(int a1)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v8 = &v16 - v7;
  v9 = [v1 managedObjectContext];
  if (v9)
  {
    v10 = v9;
    v17 = a1;
    v11 = sub_100016948();
    MessageIdentifierSet.init(_:)(&v17, &type metadata for UID, v11);
    sub_1003336DC(v1, v8, &v18);
    sub_100121C40(v8);

    if (v2)
    {
      return;
    }

    v12 = (v18 + 32);
    v13 = *(v18 + 16) + 1;
    while (--v13)
    {
      v14 = (v12 + 4);
      v15 = *v12;
      v12 += 4;
      if (v15 == a1)
      {
        *(v14 - 1);

        return;
      }
    }
  }

  sub_100333688();
  swift_allocError();
  swift_willThrow();
}

unint64_t sub_100333688()
{
  result = qword_1005D9920;
  if (!qword_1005D9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D9920);
  }

  return result;
}

uint64_t sub_1003336DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v66 = a3;
  v71 = a1;
  v64 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v7 = &v62 - v6;
  v73 = _swiftEmptyArrayStorage;
  v67 = a2;
  sub_10002A54C(a2, &v62 - v6);
  v8 = [v3 registeredObjects];
  v9 = sub_10019A8E4(0, &qword_1005D8A10, NSManagedObject_ptr);
  v10 = sub_100309DBC();
  v11 = sub_1004A5D44();

  v70 = v9;
  if ((v11 & 0xC000000000000001) != 0)
  {
    sub_1004A6594();
    sub_1004A5DB4();
    v11 = v74[1];
    v12 = v74[2];
    v13 = v74[3];
    v14 = v74[4];
    v15 = v74[5];
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(v11 + 32);
    v12 = (v11 + 56);
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = (v18 & *(v11 + 56));
  }

  v68 = v13;
  v69 = v7;
  v19 = (v13 + 64) >> 6;
  v63 = _swiftEmptyArrayStorage;
  while (v11 < 0)
  {
    v10 = v11 & 0x7FFFFFFFFFFFFFFFLL;
    v23 = sub_1004A6604();
    if (!v23)
    {
      goto LABEL_33;
    }

    v72 = v23;
    swift_dynamicCast();
    v22 = v74[0];
    if (!v74[0])
    {
      goto LABEL_33;
    }

LABEL_18:
    _s7MessageCMa();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      goto LABEL_8;
    }

    v25 = v24;
    v26 = [v24 mailbox];
    if (!v26)
    {
      goto LABEL_8;
    }

    v10 = v26;

    if (v10 != v71)
    {
      goto LABEL_8;
    }

    v27 = sub_1004A5734();
    [v25 willAccessValueForKey:v27];

    v28 = [v25 primitiveUid];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 longLongValue];

      LODWORD(v65) = (v30 - 0x100000000) < 0xFFFFFFFF00000001;
      if ((v30 - 0x100000000) < 0xFFFFFFFF00000001)
      {
        LODWORD(v30) = 0;
      }
    }

    else
    {
      LODWORD(v30) = 0;
      LODWORD(v65) = 1;
    }

    v10 = sub_1004A5734();
    [v25 didAccessValueForKey:v10];

    if (v65 & 1) == 0 && (LODWORD(v74[0]) = v30, v10 = v67, (MessageIdentifierSet.contains(_:)(v74, v64)))
    {
      v65 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_10035D8F4(0, v63[2] + 1, 1, v63);
      }

      v32 = v63[2];
      v31 = v63[3];
      if (v32 >= v31 >> 1)
      {
        v63 = sub_10035D8F4((v31 > 1), v32 + 1, 1, v63);
      }

      v34 = v63;
      v33 = v64;
      v63[2] = v32 + 1;
      v35 = &v34[2 * v32];
      *(v35 + 8) = v30;
      v35[5] = v25;
      v73 = v34;
      LODWORD(v72) = v30;
      v10 = v69;
      MessageIdentifierSet.remove(_:)(&v72, v33, v74);
    }

    else
    {
LABEL_8:
    }
  }

  v20 = v14;
  v21 = v15;
  if (v15)
  {
LABEL_14:
    v15 = ((v21 - 1) & v21);
    v22 = *(*(v11 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v22)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v14 >= v19)
    {
      break;
    }

    v21 = v12[v14];
    ++v20;
    if (v21)
    {
      goto LABEL_14;
    }
  }

LABEL_33:
  sub_100020D08();
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v36 = v69;
  if (sub_1004A70C4())
  {
LABEL_65:
    result = sub_100121C40(v36);
    *v66 = v73;
  }

  else
  {
    v37 = objc_allocWithZone(NSFetchRequest);
    v38 = sub_1004A5734();
    v39 = [v37 initWithEntityName:v38];

    [v39 setReturnsObjectsAsFaults:0];
    sub_10031E2EC(v71);
    v40 = sub_10037A73C();
    [v39 appendPredicate:v40];

    v74[0] = 0;
    v41 = [v39 execute:v74];
    v42 = v74[0];
    if (v41)
    {
      v43 = v41;
      _s7MessageCMa();
      v10 = sub_1004A5C14();
      v44 = v42;

      v68 = v39;
      if (v10 >> 62)
      {
        goto LABEL_62;
      }

      v71 = (v10 & 0xFFFFFFFFFFFFFF8);
      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
      {
        v46 = 0;
        v47 = _swiftEmptyArrayStorage;
LABEL_38:
        v70 = v47;
        v48 = v46;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v49 = sub_1004A6794();
          }

          else
          {
            if (v48 >= *(v71 + 2))
            {
              goto LABEL_61;
            }

            v49 = *(v10 + 8 * v48 + 32);
          }

          v50 = v49;
          v46 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          v51 = sub_1004A5734();
          [v50 willAccessValueForKey:v51];

          v52 = [v50 primitiveUid];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 longLongValue];

            v55 = (v54 - 0x100000000) < 0xFFFFFFFF00000001;
            if ((v54 - 0x100000000) < 0xFFFFFFFF00000001)
            {
              LODWORD(v54) = 0;
            }
          }

          else
          {
            LODWORD(v54) = 0;
            v55 = 1;
          }

          v56 = sub_1004A5734();
          [v50 didAccessValueForKey:v56];

          if (!v55)
          {
            v47 = v70;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10035D8F4(0, v47[2] + 1, 1, v47);
            }

            v58 = v47[2];
            v57 = v47[3];
            if (v58 >= v57 >> 1)
            {
              v47 = sub_10035D8F4((v57 > 1), v58 + 1, 1, v47);
            }

            v47[2] = v58 + 1;
            v59 = &v47[2 * v58];
            *(v59 + 8) = v54;
            v59[5] = v50;
            if (v46 != i)
            {
              goto LABEL_38;
            }

            goto LABEL_64;
          }

          ++v48;
          if (v46 == i)
          {
            v47 = v70;
            goto LABEL_64;
          }
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        v71 = (v10 & 0xFFFFFFFFFFFFFF8);
      }

      v47 = _swiftEmptyArrayStorage;
LABEL_64:

      sub_1003327D8(v47);

      v36 = v69;
      goto LABEL_65;
    }

    v60 = v74[0];

    sub_1004A4274();

    swift_willThrow();
    return sub_100121C40(v36);
  }

  return result;
}

void sub_100333E88(uint64_t a1)
{
  v3 = v1;
  v5 = [v3 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    sub_1003336DC(v3, a1, &v10);
    if (v2)
    {
    }

    else
    {
      v7 = v10;
      if (*(v10 + 16))
      {
        sub_10000C9C0(&qword_1005D9930, &qword_1004F6B58);
        v8 = sub_1004A6A74();
      }

      else
      {
        v8 = _swiftEmptyDictionarySingleton;
      }

      v9 = v8;
      sub_100333FA4(v7, 1, &v9);
    }
  }

  else
  {
    sub_1003511F4(_swiftEmptyArrayStorage);
  }
}

void sub_100333FA4(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *a3;
    v50 = v7;
    v10 = sub_100067004(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];
    v18 = v8;
    if (v17 < v14)
    {
      sub_10035F9DC(v14, a2 & 1);
      v19 = *a3;
      v20 = sub_100067004(v50);
      if ((v16 & 1) != (v21 & 1))
      {
LABEL_27:
        sub_1004A6E24();
        __break(1u);
        return;
      }

      v15 = v20;
      v22 = *a3;
      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:
      v23 = v22[7];
      v24 = *(v23 + 8 * v15);
      *(v23 + 8 * v15) = v18;

      v25 = v3 - 1;
      if (v3 == 1)
      {
        return;
      }

LABEL_15:
      for (i = (a1 + 56); ; i += 2)
      {
        v32 = *(i - 2);
        v33 = *i;
        v34 = *a3;
        v35 = sub_100067004(v32);
        v37 = v34[2];
        v38 = (v36 & 1) == 0;
        v39 = v37 + v38;
        if (__OFADD__(v37, v38))
        {
          break;
        }

        v40 = v35;
        v41 = v36;
        v42 = v34[3];
        v43 = v33;
        if (v42 < v39)
        {
          sub_10035F9DC(v39, 1);
          v44 = *a3;
          v45 = sub_100067004(v32);
          if ((v41 & 1) != (v46 & 1))
          {
            goto LABEL_27;
          }

          v40 = v45;
        }

        v47 = *a3;
        if (v41)
        {
          v30 = v47[7];
          v31 = *(v30 + 8 * v40);
          *(v30 + 8 * v40) = v43;
        }

        else
        {
          v47[(v40 >> 6) + 8] |= 1 << v40;
          *(v47[6] + 4 * v40) = v32;
          *(v47[7] + 8 * v40) = v43;
          v48 = v47[2];
          v27 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v27)
          {
            goto LABEL_26;
          }

          v47[2] = v49;
        }

        if (!--v25)
        {
          return;
        }
      }

      goto LABEL_25;
    }

    if (a2)
    {
      v22 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1003614E0();
      v22 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v22[(v15 >> 6) + 8] |= 1 << v15;
    *(v22[6] + 4 * v15) = v50;
    *(v22[7] + 8 * v15) = v18;
    v26 = v22[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v22[2] = v28;
    v25 = v3 - 1;
    if (v3 == 1)
    {
      return;
    }

    goto LABEL_15;
  }
}

uint64_t sub_100334204()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (result + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController);
    v3 = *(result + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController + 8);
    *v2 = 0;
    v2[1] = 0;

    if (*(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) == 1)
    {
      v4 = *(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange + 8);
      (*(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange))();
    }
  }

  return result;
}

uint64_t sub_10033429C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_logger;
  v4 = sub_1004A4A74();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange + 8);

  v6 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken);
  swift_unknownObjectRelease();

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MessagesSource()
{
  result = qword_1005D9990;
  if (!qword_1005D9990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003343F0()
{
  result = sub_1004A4A74();
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

id sub_1003344C4()
{
  v1 = *(v0 + 16);
  if (qword_1005D8760 != -1)
  {
    swift_once();
  }

  v22[2] = xmmword_1005D9218;
  v22[3] = *&qword_1005D9228;
  v22[4] = xmmword_1005D9238;
  v22[0] = xmmword_1005D91F8;
  v22[1] = *&qword_1005D9208;
  result = sub_1003521DC(v22);
  v3 = result;
  if ((*(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) & 1) == 0)
  {
    return [objc_allocWithZone(NSArray) init];
  }

  v4 = (v0 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController);
  v5 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController + 8);
  if (v5 && *v4 == result)
  {
    v6 = v5;
    v7 = [v6 fetchedObjects];
    if (v7)
    {
LABEL_17:
      v20 = v7;

      return v20;
    }

LABEL_16:
    v7 = [objc_allocWithZone(NSArray) init];
    goto LABEL_17;
  }

  v8 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1003349E8();
    v11 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v10 managedObjectContext:v1 sectionNameKeyPath:0 cacheName:0];

    [v11 setDelegate:v9];
    v21 = 0;
    if ([v11 performFetch:&v21])
    {
      v12 = v21;
    }

    else
    {
      v13 = v21;
      sub_1004A4274();

      swift_willThrow();
      swift_errorRetain();
      v14 = sub_1004A4A54();
      v15 = sub_1004A6014();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = sub_1004A4264();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to fetch: %@", v16, 0xCu);
        sub_100190D30(v17);
      }

      else
      {
      }
    }

    v19 = v4[1];
    *v4 = v3;
    v4[1] = v11;
    v6 = v11;

    v7 = [v6 fetchedObjects];
    if (v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_100334904()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100334994()
{
  result = qword_1005D9AE0;
  if (!qword_1005D9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D9AE0);
  }

  return result;
}

id sub_1003349E8()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_1004A5734();
  v4 = [v2 initWithEntityName:v3];

  [v4 setReturnsObjectsAsFaults:0];
  v5 = *(v1 + 40);
  if (v5 >= 800)
  {
    v5 = 800;
  }

  if (v5 <= 250)
  {
    v6 = 250;
  }

  else
  {
    v6 = v5;
  }

  [v4 setFetchBatchSize:v6];
  v7 = *(v1 + 16);
  if (qword_1005D8760 != -1)
  {
    swift_once();
  }

  v14[2] = xmmword_1005D9218;
  v14[3] = *&qword_1005D9228;
  v14[4] = xmmword_1005D9238;
  v14[0] = xmmword_1005D91F8;
  v14[1] = *&qword_1005D9208;
  v8 = sub_1003521DC(v14);
  v9 = *(v1 + 32);
  v10 = (*(v1 + 24))(v8);
  [v4 setPredicate:v10];

  v11 = *(v1 + 48);
  sub_100334B5C();
  isa = sub_1004A5C04().super.isa;
  [v4 setSortDescriptors:isa];

  return v4;
}

unint64_t sub_100334B5C()
{
  result = qword_1005D9940;
  if (!qword_1005D9940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D9940);
  }

  return result;
}

uint64_t sub_100334BA8()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D9AE8);
  sub_1001C203C(v0, qword_1005D9AE8);
  return sub_1004A4A64();
}

uint64_t sub_100334C28(void *a1, uint64_t a2)
{
  v4 = *v2;
  if (*v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_1004A6794();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
      v9 = *(v7 + 16);
      if (sub_1004A62F4())
      {
        return v7;
      }

      ++v6;
      if (v8 == i)
      {
        goto LABEL_15;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  type metadata accessor for MessagesToDownload.Source();
  swift_allocObject();
  v10 = a1;

  v7 = sub_1003367DC(v10, a2);

  sub_1004A5BF4();
  if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1004A5C44();
  }

  result = sub_1004A5C84();
  v12 = *(v7 + 32);
  if (v12)
  {
    if ((*(v12 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) & 1) == 0)
    {
      *(v12 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 1;
      v13 = v12 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange;
      v14 = *(v13 + 8);
      (*v13)(result);
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100334E18()
{
  v1 = *v0;
  v53 = *v0 >> 62;
  v2 = *v0 & 0xFFFFFFFFFFFFFF8;
  if (v53)
  {
    goto LABEL_48;
  }

  v61 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v3 = 0;
    v58 = v1 + 32;
    v59 = v1 & 0xC000000000000001;
    p_attr = &stru_1005CAFF8.attr;
    v55 = v2;
    while (1)
    {
      if (v3 == v61)
      {
        if (v53)
        {
          v3 = sub_1004A6A34();
        }

        else
        {
          v3 = *(v2 + 16);
        }

LABEL_105:
        if (v1 >> 62)
        {
          goto LABEL_119;
        }

        v51 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v51 >= v3)
        {
          goto LABEL_107;
        }

LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      if (v59)
      {
        v5 = sub_1004A6794();
      }

      else
      {
        if (v3 >= *(v2 + 16))
        {
          goto LABEL_43;
        }

        v5 = *(v58 + 8 * v3);
      }

      if ([*(v5 + 16) *(p_attr + 3432)])
      {

LABEL_36:
        v2 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if (!v53)
        {
          v22 = v55;
          goto LABEL_52;
        }

        if (v2 != sub_1004A6A34())
        {
          goto LABEL_53;
        }

        goto LABEL_105;
      }

      v6 = *(v5 + 16);
      v7 = sub_1004A5734();
      [v6 willAccessValueForKey:v7];

      v8 = [v6 primitiveName];
      if (v8)
      {
        break;
      }

      rawValue = 0;
LABEL_28:
      v0 = sub_1004A5734();
      [v6 didAccessValueForKey:v0];

      if (!rawValue)
      {
        goto LABEL_36;
      }

      v21 = __OFADD__(v3++, 1);
      if (v21)
      {
        goto LABEL_44;
      }
    }

    v0 = v8;
    p_attr = sub_1004A6294();
    v9 = sub_1004A62A4();
    v10 = sub_1004A6294();
    v11 = sub_1004A62A4();
    if (p_attr < v10 || v11 < p_attr)
    {
      goto LABEL_45;
    }

    v12 = sub_1004A6294();
    v13 = sub_1004A62A4();
    if (v9 < v12 || v13 < v9)
    {
      goto LABEL_46;
    }

    v14 = v9 - p_attr;
    if (__OFSUB__(v9, p_attr))
    {
      goto LABEL_47;
    }

    if (!v14)
    {
      v15 = _swiftEmptyArrayStorage;
LABEL_27:
      p_attr = 0x1005CB000;

      rawValue = MailboxName.init(_:)(v15).bytes._rawValue;
      goto LABEL_28;
    }

    v56 = v3;
    if (v14 >= 1)
    {
      v3 = v1;
      sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v14;
      v15[3] = 2 * v16 - 64;
      v1 = sub_1004A6294();
      if (v1 != sub_1004A62A4())
      {
        v2 = (v15 + 4);
        v17 = ~p_attr + v9;
        while (1)
        {
          v18 = sub_1004A62B4();
          p_attr = sub_1004A6294();
          v19 = sub_1004A62A4();
          if (v1 < p_attr || v1 >= v19)
          {
            break;
          }

          *v2 = v18;
          if (!v17)
          {
            v1 = v3;
            v2 = v55;
            v3 = v56;
            goto LABEL_27;
          }

          ++v2;
          ++v1;
          --v17;
          if (v1 == sub_1004A62A4())
          {
            goto LABEL_50;
          }
        }

        __break(1u);
LABEL_43:
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
        v61 = sub_1004A6A34();
        continue;
      }

LABEL_50:

      __break(1u);
    }

    break;
  }

  sub_1004A6294();
  __break(1u);
LABEL_52:
  while (2)
  {
    if (v2 == *(v22 + 16))
    {
      goto LABEL_105;
    }

LABEL_53:
    while (2)
    {
      v23 = v1 & 0xC000000000000001;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v24 = sub_1004A6794();
      }

      else
      {
        if ((v2 & 0x8000000000000000) != 0)
        {
          goto LABEL_111;
        }

        if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_112;
        }

        v24 = *(v1 + 8 * v2 + 32);
      }

      if ([*(v24 + 16) *(p_attr + 3432)])
      {

LABEL_97:
        v21 = __OFADD__(v2++, 1);
        if (v21)
        {
          goto LABEL_113;
        }

        if (!(v1 >> 62))
        {
          goto LABEL_104;
        }

        if (v2 == sub_1004A6A34())
        {
          goto LABEL_105;
        }

        continue;
      }

      break;
    }

    v25 = *(v24 + 16);
    v26 = sub_1004A5734();
    [v25 willAccessValueForKey:v26];

    v27 = [v25 primitiveName];
    if (!v27)
    {
      v43 = 0;
      goto LABEL_78;
    }

    v0 = v27;
    v28 = sub_1004A6294();
    v29 = sub_1004A62A4();
    v30 = sub_1004A6294();
    v31 = sub_1004A62A4();
    if (v28 < v30 || v31 < v28)
    {
      goto LABEL_114;
    }

    v32 = sub_1004A6294();
    v33 = sub_1004A62A4();
    if (v29 < v32 || v33 < v29)
    {
      goto LABEL_115;
    }

    v62 = v25;
    v34 = v29 - v28;
    if (__OFSUB__(v29, v28))
    {
      goto LABEL_116;
    }

    if (!v34)
    {
      v35 = _swiftEmptyArrayStorage;
      p_attr = 0x1005CB000;
LABEL_77:

      v43 = MailboxName.init(_:)(v35).bytes._rawValue;
      v25 = v62;
LABEL_78:
      v0 = sub_1004A5734();
      [v25 didAccessValueForKey:v0];

      if (v43)
      {

        if (v3 != v2)
        {
          if (v23)
          {
            v0 = sub_1004A6794();
            v44 = sub_1004A6794();
          }

          else
          {
            if (v3 < 0)
            {
              goto LABEL_121;
            }

            v45 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= v45)
            {
              goto LABEL_122;
            }

            if (v2 >= v45)
            {
              goto LABEL_123;
            }

            v0 = *(v1 + 32 + 8 * v3);
            v44 = *(v1 + 32 + 8 * v2);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
          {
            v1 = sub_100139930(v1);
            v46 = (v1 >> 62) & 1;
          }

          else
          {
            LODWORD(v46) = 0;
          }

          v47 = v1 & 0xFFFFFFFFFFFFFF8;
          v48 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
          *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v44;

          if ((v1 & 0x8000000000000000) != 0 || v46)
          {
            v1 = sub_100139930(v1);
            v47 = v1 & 0xFFFFFFFFFFFFFF8;
            if ((v2 & 0x8000000000000000) != 0)
            {
LABEL_103:
              __break(1u);
LABEL_104:
              v22 = v1 & 0xFFFFFFFFFFFFFF8;
              continue;
            }
          }

          else if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_103;
          }

          if (v2 >= *(v47 + 16))
          {
            goto LABEL_118;
          }

          v49 = v47 + 8 * v2;
          v50 = *(v49 + 32);
          *(v49 + 32) = v0;

          *v54 = v1;
        }

        v21 = __OFADD__(v3++, 1);
        if (v21)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_97;
    }

    break;
  }

  v60 = v1 & 0xC000000000000001;
  v57 = v3;
  if (v34 < 1)
  {
    goto LABEL_125;
  }

  v3 = v1;
  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  v35 = swift_allocObject();
  v36 = j__malloc_size(v35);
  v35[2] = v34;
  v35[3] = 2 * v36 - 64;
  v37 = sub_1004A6294();
  if (v37 == sub_1004A62A4())
  {
LABEL_124:

    __break(1u);
LABEL_125:
    result = sub_1004A6294();
    __break(1u);
    return result;
  }

  v38 = v35 + 4;
  v39 = ~v28 + v29;
  while (1)
  {
    v40 = sub_1004A62B4();
    v41 = sub_1004A6294();
    v42 = sub_1004A62A4();
    if (v37 < v41 || v37 >= v42)
    {
      break;
    }

    *v38 = v40;
    if (!v39)
    {
      v1 = v3;
      v3 = v57;
      p_attr = 0x1005CB000;
      v23 = v60;
      goto LABEL_77;
    }

    ++v38;
    ++v37;
    --v39;
    if (v37 == sub_1004A62A4())
    {
      goto LABEL_124;
    }
  }

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
  v51 = sub_1004A6A34();
  if (v51 < v3)
  {
    goto LABEL_120;
  }

LABEL_107:

  return sub_100336C30(v3, v51);
}

uint64_t sub_100335578()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

id sub_1003355FC(uint64_t a1, void *a2)
{
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004D01D0;
  v5 = [a2 objectID];
  *(v4 + 56) = sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
  *(v4 + 32) = v5;
  v6 = [objc_allocWithZone(NSNumber) initWithLongLong:a1];
  *(v4 + 88) = sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  *(v4 + 64) = v6;
  v7 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v9 = [objc_opt_self() predicateWithFormat:v7 argumentArray:isa];

  return v9;
}

uint64_t sub_10033574C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = a1[2];
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = a2[2];
  sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
  if ((sub_1004A62F4() & 1) == 0 || v3 != v6)
  {
    return 0;
  }

  return sub_100336368(v4, v7);
}

BOOL sub_1003357F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1003364F8(v5, v7);
}

int *sub_100335868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v4 = sub_10000C9C0(&qword_1005D9BB8, &qword_1004F6D68);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v42 = &v38 - v6;
  v7 = _s5StateV15DeferredRequestVMa(0);
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v38 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s11QueuedItemsV4ItemVMa();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 24);
  swift_beginAccess();
  v16 = *(v15 + 48);

  os_unfair_lock_lock((v16 + 48));
  v17 = *(v16 + 16);
  v18 = *(v11 + 80);
  v19 = v17[4];
  v20 = v17[2];
  v39 = v17[3];
  if (v20 >= v19 + v39)
  {
    v21 = v19 + v39;
  }

  else
  {
    v21 = v20;
  }

  v22 = (v18 + 40) & ~v18;
  v45 = v17;
  v46 = v19;
  v47 = v21;

  v24 = 0;
  if (v19 == v21)
  {
LABEL_5:
    if (sub_100351DD0(v23))
    {
      v17 = v45;
      v19 = v46;
      goto LABEL_7;
    }

    os_unfair_lock_unlock((v16 + 48));

    swift_beginAccess();
    swift_retain_n();
    v29 = v42;
    v30 = v24;
    v31 = v43;
    sub_100337430(v39, 457, v30, 80000000, v43, v42);
    if ((*(v40 + 48))(v29, 1, v41) == 1)
    {
      sub_100336F90(v29);
      swift_endAccess();

LABEL_16:
      v37 = v44;
      *v44 = 0;
      v37[1] = 0;
      v37[2] = 0;
      return result;
    }

    v32 = v38;
    sub_100336FF8(v29, v38);

    sub_100339978(&v45, v32, v31, a1 + 40, a1);

    sub_10033705C(v32, _s5StateV15DeferredRequestVMa);
    swift_endAccess();

    if ((v48 & 1) == 0)
    {
      goto LABEL_16;
    }

    v33 = v46;
    v34 = v45;
    v35 = *(a1 + 16);
    v36 = v44;
    *v44 = v35;
    v36[1] = v33;
    v36[2] = v34;

    return v35;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v25 = v19 + 1;
      v46 = v19 + 1;
      sub_100323720(v17 + v22 + *(v11 + 72) * v19, v14);
      result = type metadata accessor for PendingItem(0);
      v27 = *&v14[result[7]];
      v28 = __OFADD__(v24, v27);
      v24 += v27;
      if (v28)
      {
        break;
      }

      v23 = sub_10033705C(v14, _s11QueuedItemsV4ItemVMa);
      ++v19;
      if (v25 == v47)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_100335C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v66 = a2;
  v67 = a1;
  v4 = _s11QueuedItemsV4ItemVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 32);
  if (!v9)
  {
LABEL_65:
    __break(1u);
LABEL_66:

    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  v10 = *(v3 + 24);
  swift_beginAccess();
  v11 = *(v10 + 48);

  os_unfair_lock_lock((v11 + 48));
  v12 = *(v11 + 16);
  v74 = _swiftEmptySetSingleton;
  v13 = v12[4];
  if (v12[2] >= v12[3] + v13)
  {
    v14 = v12[3] + v13;
  }

  else
  {
    v14 = v12[2];
  }

  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v70 = v12;
  v71 = v13;
  v72 = v14;

  while (1)
  {
    if (v13 != v14)
    {
      goto LABEL_6;
    }

    v17 = sub_100351DD0(v16);
    v12 = v70;
    if ((v17 & 1) == 0)
    {
      break;
    }

    v13 = v71;
LABEL_6:
    v71 = v13 + 1;
    sub_100323720(v12 + v15 + *(v5 + 72) * v13, v8);
    sub_10036210C(&v73, *(v8 + 1));
    v16 = sub_10033705C(v8, _s11QueuedItemsV4ItemVMa);
    v14 = v72;
    ++v13;
  }

  v18 = v74;
  os_unfair_lock_unlock((v11 + 48));

  v19 = sub_1003344C4();
  v20 = *(v9 + 40);
  if (v20 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v21 = v19;
  v69 = [v21 count];
  v22 = 0;
  if (!v20)
  {
    v68 = _swiftEmptyArrayStorage;
    goto LABEL_59;
  }

  v63 = 0;
  v23 = 0;
  v24 = v18 + 7;
  v68 = _swiftEmptyArrayStorage;
LABEL_14:
  if (v23 < v69)
  {
    --v20;
    do
    {
      v25 = [v21 objectAtIndexedSubscript:v23];
      sub_1004A64E4();
      swift_unknownObjectRelease();
      _s7MessageCMa();
      if (!swift_dynamicCast())
      {
        goto LABEL_66;
      }

      v26 = v74;
      v27 = sub_1004A5734();
      [v26 willAccessValueForKey:v27];

      v28 = [v26 primitiveSpotlightID];
      v29 = v28;
      if (v28)
      {
        v30 = [v28 longLongValue];
      }

      else
      {
        v30 = 0;
      }

      ++v23;
      v31 = sub_1004A5734();
      [v26 didAccessValueForKey:v31];

      if (v29)
      {
        if (!v18[2] || (v32 = v18[5], sub_1004A6E94(), sub_1004A6EF4(v30), v33 = sub_1004A6F14(), v34 = -1 << *(v18 + 32), v35 = v33 & ~v34, ((*(v24 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0))
        {
LABEL_27:
          v65 = v22;
          v37 = sub_1004A5734();
          [v26 willAccessValueForKey:v37];

          v38 = [v26 primitiveUid];
          if (v38)
          {
            v39 = v38;
            v40 = [v38 longLongValue];

            v41 = (v40 - 0x100000000) < 0xFFFFFFFF00000001;
            if ((v40 - 0x100000000) >= 0xFFFFFFFF00000001)
            {
              v42 = v40;
            }

            else
            {
              v42 = 0;
            }
          }

          else
          {
            v42 = 0;
            v41 = 1;
          }

          v43 = sub_1004A5734();
          [v26 didAccessValueForKey:v43];

          if (v41 || (LODWORD(v70) = v42, v44 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400), (MessageIdentifierSet.contains(_:)(&v70, v44) & 1) != 0))
          {

            v22 = v65;
            if (v20)
            {
              goto LABEL_14;
            }
          }

          else
          {
            if (*(v68 + 2) >= v66)
            {
              goto LABEL_13;
            }

            v45 = sub_1004A5734();
            [v26 willAccessValueForKey:v45];

            v46 = [v26 primitiveMessageSize];
            v47 = v46;
            if (v46)
            {
              v48 = [v46 integerValue];
            }

            else
            {
              v48 = 0;
            }

            v49 = sub_1004A5734();
            [v26 didAccessValueForKey:v49];

            if (v47)
            {
              if (v48 > 1000000)
              {
                v50 = 821709;
                goto LABEL_45;
              }
            }

            else
            {
              v48 = 0;
            }

            v51 = 809;
            if (v48 > 809)
            {
              v51 = v48;
            }

            v50 = v48 + v51 + 1709;
LABEL_45:
            v52 = v63 + v50;
            if (__OFADD__(v63, v50))
            {
              __break(1u);
              goto LABEL_64;
            }

            if (v52 >= v64)
            {
LABEL_13:

              v22 = 1;
              if (!v20)
              {
                break;
              }

              goto LABEL_14;
            }

            v53 = sub_10033B018();
            LODWORD(v63) = v54;
            if (v54)
            {
              v55 = 0;
            }

            else
            {
              v55 = v53;
            }

            v62 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = sub_10035DA28(0, *(v68 + 2) + 1, 1, v68);
            }

            v57 = *(v68 + 2);
            v56 = *(v68 + 3);
            if (v57 >= v56 >> 1)
            {
              v68 = sub_10035DA28((v56 > 1), v57 + 1, 1, v68);
            }

            v58 = v68;
            *(v68 + 2) = v57 + 1;
            v59 = &v58[24 * v57];
            *(v59 + 8) = v42;
            *(v59 + 5) = v62;
            v59[48] = v63 & 1;
            v63 = v52;
            v22 = v65;
            if (v20)
            {
              goto LABEL_14;
            }
          }

          break;
        }

        v36 = ~v34;
        while (*(v18[6] + 8 * v35) != v30)
        {
          v35 = (v35 + 1) & v36;
          if (((*(v24 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }
    }

    while (v23 < v69);
  }

LABEL_59:

  result = v68;
  if (!*(v68 + 2) && (v22 & 1) != 0)
  {

    return 0;
  }

  return result;
}

uint64_t sub_100336368(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    if (*(a2 + 32) == *(a1 + 32))
    {
      v3 = (a2 + 56);
      v4 = (a1 + 56);
      do
      {
        v5 = *(v3 - 8);
        if (*(v4 - 8) == 1)
        {
          if ((*(v3 - 2) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v6 = *(v3 - 2);
          if (*(v3 - 8))
          {
            v6 = 0;
          }

          if (*(v4 - 2) != v6)
          {
            v5 = 1;
          }

          if (v5)
          {
            return 0;
          }
        }

        if (!--v2)
        {
          return 1;
        }

        v8 = *v3;
        v3 += 6;
        v7 = v8;
        v9 = *v4;
        v4 += 6;
      }

      while (v7 == v9);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1003363F8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1004A6A34();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_1004A67A4();
    *v1 = result;
  }

  return result;
}

BOOL sub_1003364F8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 8);
      return sub_100336368(v3, *a2) & (v5 == v4);
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *a2 == v3 && v4 == *(a2 + 8);
  v10 = v9 && v8 == *(a2 + 16);
  return v10 && v7 == *(a2 + 24);
}

uint64_t sub_100336580(int a1, uint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  if (a4 == a1)
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else
    {
      if (a6)
      {
        v7 = 0;
      }

      else
      {
        v7 = a5;
      }

      if ((a6 & 1) == 0 && v7 == a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1003365BC(uint64_t a1, uint64_t a2)
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

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1004A6A34();
  if (result < v2)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6)
  {
    v9 = sub_1004A6A34();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (!v10)
  {
    sub_1003363F8(result);
    return sub_100336B2C(v4, v2, 0, 0, _s11AccountInfoCMa);
  }

LABEL_16:
  __break(1u);
  return result;
}

id (*sub_1003366A0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F6340;
  v3 = objc_allocWithZone(NSSortDescriptor);
  v4 = a1;
  v5 = sub_1004A5734();
  v6 = [v3 initWithKey:v5 ascending:1];

  *(v2 + 32) = v6;
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_1004A5734();
  v9 = [v7 initWithKey:v8 ascending:0];

  *(v2 + 40) = v9;
  return sub_100336F88;
}

uint64_t sub_1003367DC(void *a1, uint64_t a2)
{
  v5 = sub_1004A4A74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v39 = v2;
  v10 = *(a2 + 16);
  v11 = a1;

  v12 = v10;
  v38 = sub_1003366A0(v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (qword_1005D8780 != -1)
  {
    swift_once();
  }

  v19 = sub_1001C203C(v5, qword_1005D9AE8);
  v20 = v6;
  v21 = *(v6 + 16);
  v21(v9, v19, v5);
  v22 = type metadata accessor for MessagesSource();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  *(v25 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = 0;
  *(v25 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = 0;
  v26 = (v25 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController);
  *v26 = 0;
  v26[1] = 0;
  *(v25 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 0;
  v25[2] = v12;
  v21(v25 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_logger, v9, v5);
  v25[3] = v38;
  v25[4] = v14;
  v25[5] = v16;
  v25[6] = v18;
  v27 = (v25 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange);
  *v27 = UInt32.init(_:);
  v27[1] = 0;
  v28 = type metadata accessor for MessagesSource.Observer();
  v29 = objc_allocWithZone(v28);
  swift_weakInit();
  swift_weakAssign();
  v40.receiver = v29;
  v40.super_class = v28;
  v30 = v12;

  v31 = objc_msgSendSuper2(&v40, "init");
  v32 = *(v25 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer);
  *(v25 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = v31;

  v33 = swift_allocObject();
  swift_weakInit();

  v34 = sub_100323BF4(sub_10032DC3C, v33);

  (*(v20 + 8))(v9, v5);

  v35 = *(v25 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken);
  *(v25 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = v34;

  swift_unknownObjectRelease();
  v36 = v39;
  *(v39 + 32) = v25;
  *(v36 + 40) = *sub_1004A47B4();

  return v36;
}

uint64_t sub_100336B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(a4);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
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
  result = sub_1004A6A34();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_1004A6A34();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100336C30(uint64_t a1, uint64_t a2)
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

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1004A6A34();
  if (result < v2)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6)
  {
    v9 = sub_1004A6A34();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (!v10)
  {
    sub_1001AC08C(result);
    return sub_100336B2C(v4, v2, 0, v11, type metadata accessor for MessagesToDownload.Source);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_100336D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for MessageBeingDownloaded(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100336E58(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_10035D8CC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_100336D10(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_100336F18()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100336F50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100336F90(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D9BB8, &qword_1004F6D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100336FF8(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateV15DeferredRequestVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033705C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003370E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100337130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

Swift::Int sub_1003371AC(uint64_t a1)
{
  v3 = v1;
  sub_1004A6E94();
  sub_1004A6EE4(*v1);
  v4 = *(a1 + 20);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  sub_1004A6EB4(*(v3 + *(a1 + 24)));
  return sub_1004A6F14();
}

void sub_100337244(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1004A6EE4(*v2);
  v5 = *(a2 + 20);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  sub_1004A6EB4(*(v4 + *(a2 + 24)));
}

Swift::Int sub_1003372CC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1004A6E94();
  sub_1004A6EE4(*v2);
  v5 = *(a2 + 20);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  sub_1004A6EB4(*(v4 + *(a2 + 24)));
  return sub_1004A6F14();
}

BOOL sub_100337360(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_100016D2C();
  return (sub_1004A7034() & 1) != 0 && *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
}

uint64_t sub_1003373EC(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = v3[3];
  if (v5 != v4[3])
  {
    return 0;
  }

  if (v3 == v4 || v5 == 0)
  {
    return 1;
  }

  else
  {
    return sub_1003385B8(v4, v3);
  }
}

void sub_100337430(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v84 = a3;
  v85 = a4;
  v82 = a1;
  v83 = a2;
  v10 = sub_10000C9C0(&qword_1005D9BD8, &qword_1004F6F28);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v78 - v12;
  v14 = _s5StateV7RequestVMa(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = (&v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v17);
  v22 = &v78 - v21;
  __chkstk_darwin(v20);
  v24 = (&v78 - v23);
  if ((*v7)[3].isa < 1)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    sub_100025F40(v13, &qword_1005D9BD8, &qword_1004F6F28);
    v45 = (a5 + *(_s6LoggerVMa_0(0) + 20));
    v46 = *v45;
    v47 = *(v45 + 1);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v48 = sub_1004A4A54();
    v49 = sub_1004A6004();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 68158464;
      *(v50 + 4) = 2;
      *(v50 + 8) = 256;
      *(v50 + 10) = v46;
      *(v50 + 11) = 1040;
      *(v50 + 13) = 8;
      *(v50 + 17) = 1024;
      *(v50 + 19) = v47;
      _os_log_impl(&_mh_execute_header, v48, v49, "[%.*hhx-%.*X] No deferred message requests.", v50, 0x17u);
    }

    v51 = _s5StateV15DeferredRequestVMa(0);
    v52 = *(*(v51 - 8) + 56);
    v53 = a6;
    goto LABEL_34;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003384A8(_s5StateV7RequestVMa, &qword_1005D9BC8, &qword_1004F6F18, _s5StateV7RequestVMa);
  }

  v25 = *v7;
  v80 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  isa = v25[4].isa;
  v79 = *(v15 + 72);
  sub_100339910(v25 + v80 + v79 * isa, v13, _s5StateV7RequestVMa);
  v27 = v25[4].isa;
  v28 = __OFADD__(v27, 1);
  v29 = (v27 + 1);
  if (v28)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v30 = v25[3].isa;
  if (v29 >= v25[2].isa)
  {
    v29 = 0;
  }

  v25[4].isa = v29;
  if (__OFSUB__(v30, 1))
  {
    goto LABEL_37;
  }

  v81 = a6;
  v25[3].isa = (v30 - 1);
  (*(v15 + 56))(v13, 0, 1, v14);
  sub_100339910(v13, v24, _s5StateV7RequestVMa);
  v31 = sub_10032B874(*(&v24->isa + *(v14 + 24)), v82, v83, v84, v85);
  v33 = v32;
  v34 = (a5 + *(_s6LoggerVMa_0(0) + 20));
  v35 = *v34;
  v36 = *(v34 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  if (v31 >= 1 && v33 >= 1)
  {
    v25 = v24;
    sub_100339848(v24, v22, _s5StateV7RequestVMa);
    v54 = sub_1004A4A54();
    v55 = sub_1004A6034();
    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v87 = v58;
      *v57 = 68158722;
      *(v57 + 4) = 2;
      *(v57 + 8) = 256;
      *(v57 + 10) = v35;
      *(v57 + 11) = 1040;
      *(v57 + 13) = 8;
      *(v57 + 17) = 1024;
      *(v57 + 19) = v36;
      *(v57 + 23) = 2080;
      v86 = *v22;
      sub_1000D40AC();
      v59 = sub_1004A5A84();
      v61 = v60;
      sub_1003398B0(v22, _s5StateV7RequestVMa);
      v62 = sub_10015BA6C(v59, v61, &v87);

      *(v57 + 25) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%.*hhx-%.*X] Popped deferred message request %s.", v57, 0x21u);
      sub_1000197E0(v58);

LABEL_29:
      v68 = v81;
      sub_100339910(v25, v81, _s5StateV7RequestVMa);
      v69 = _s5StateV15DeferredRequestVMa(0);
      v70 = (v68 + *(v69 + 20));
      *v70 = v31;
      v70[1] = v33;
      v71 = (v68 + *(v69 + 24));
      v72 = v83;
      *v71 = v82;
      v71[1] = v72;
      v73 = v85;
      v71[2] = v84;
      v71[3] = v73;
      (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
      return;
    }

LABEL_28:

    sub_1003398B0(v22, _s5StateV7RequestVMa);
    goto LABEL_29;
  }

  v85 = v24;
  sub_100339848(v24, v19, _s5StateV7RequestVMa);
  v38 = sub_1004A4A54();
  v39 = sub_1004A6034();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v87 = v33;
    *v40 = 68158722;
    *(v40 + 4) = 2;
    *(v40 + 8) = 256;
    *(v40 + 10) = v35;
    *(v40 + 11) = 1040;
    *(v40 + 13) = 8;
    *(v40 + 17) = 1024;
    *(v40 + 19) = v36;
    *(v40 + 23) = 2080;
    v86 = *v19;
    sub_1000D40AC();
    v41 = sub_1004A5A84();
    v43 = v42;
    sub_1003398B0(v19, _s5StateV7RequestVMa);
    v44 = sub_10015BA6C(v41, v43, &v87);

    *(v40 + 25) = v44;
    _os_log_impl(&_mh_execute_header, v38, v39, "[%.*hhx-%.*X] Currently no capacity for deferred message request %s.", v40, 0x21u);
    sub_1000197E0(v33);
  }

  else
  {

    sub_1003398B0(v19, _s5StateV7RequestVMa);
  }

  v31 = v81;
  v63 = v25[3].isa;
  v64 = v63 + 1;
  if (__OFADD__(v63, 1))
  {
    goto LABEL_38;
  }

  v65 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v7;
  if (*v7)[2].isa >= v64 && (isUniquelyReferenced_nonNull_native)
  {
    v67 = v54[4].isa;
    if (v67)
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_100337D24(isUniquelyReferenced_nonNull_native, v64, 0, _s5StateV7RequestVMa, &qword_1005D9BC8, &qword_1004F6F18, _s5StateV7RequestVMa);
    v54 = *v7;
    v67 = (*v7)[4].isa;
    if (v67)
    {
LABEL_25:
      v22 = v67 - 1;
      if (__OFSUB__(v67, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  v74 = v54[2].isa;
  v22 = v74 - 1;
  if (__OFSUB__(v74, 1))
  {
LABEL_40:
    __break(1u);
    return;
  }

LABEL_32:
  v75 = v85;
  sub_100339848(v85, v54 + v80 + v22 * v79, _s5StateV7RequestVMa);
  v54[4].isa = v22;
  v76 = v54[3].isa;
  v28 = __OFADD__(v76, 1);
  v77 = (v76 + 1);
  if (v28)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v54[3].isa = v77;
  sub_1003398B0(v75, _s5StateV7RequestVMa);
  v51 = _s5StateV15DeferredRequestVMa(0);
  v52 = *(*(v51 - 8) + 56);
  v53 = v31;
LABEL_34:
  v52(v53, 1, 1, v51);
}

size_t sub_100337D24(char a1, Swift::Int a2, char a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v13 = *v7;
  v14 = (*v7 + 16);
  v15 = *v14;
  v16 = a4(0);
  v17 = v16;
  if (v15 >= a2)
  {
    v26 = *(v16 - 8);
    v27 = *(v26 + 80);
    sub_10000C9C0(a5, a6);
    v28 = *(v26 + 72);
    v23 = swift_allocObject();
    v29 = *(v13 + 24);
    *(v23 + 16) = v15;
    *(v23 + 24) = v29;
    if (v29 >= 1)
    {
      sub_100338360(v23 + 16, v23 + ((v27 + 40) & ~v27), v14, v13 + ((v27 + 40) & ~v27), a7);
    }

    goto LABEL_19;
  }

  sub_1004A47C4(a2, a3 & 1);
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  if (a1)
  {
    v20 = *(v13 + 24);
    sub_10000C9C0(a5, a6);
    v21 = *(v18 + 72);
    v22 = (v19 + 40) & ~v19;
    v23 = swift_allocObject();
    result = j__malloc_size(v23);
    if (v21)
    {
      if (result - v22 != 0x8000000000000000 || v21 != -1)
      {
        *(v23 + 16) = (result - v22) / v21;
        *(v23 + 24) = v20;
        *(v23 + 32) = 0;
        if (v20 >= 1)
        {
          sub_1003380A0(v23 + 16, v23 + v22, v14, v13 + v22, a7);
          *(v13 + 24) = 0;
        }

LABEL_19:

        *v7 = v23;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10000C9C0(a5, a6);
  v30 = *(v18 + 72);
  v31 = (v19 + 40) & ~v19;
  v23 = swift_allocObject();
  result = j__malloc_size(v23);
  if (!v30)
  {
    goto LABEL_21;
  }

  if (result - v31 != 0x8000000000000000 || v30 != -1)
  {
    v33 = *(v13 + 24);
    *(v23 + 16) = (result - v31) / v30;
    *(v23 + 24) = v33;
    *(v23 + 32) = 0;
    if (v33 >= 1)
    {
      sub_100338238(v23 + 16, v23 + v31, v14, v13 + v31, a7);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_100337FD8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v5 = result[1];
  v6 = result[2];
  v7 = v6 + v5;
  if (!__OFADD__(v6, v5))
  {
    v11 = result;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v12 = __OFSUB__(v7, *result);
      if (v7 < *result || (v7 -= *result, !v12))
      {
LABEL_9:
        v13 = a4(0);
        result = sub_100339848(a3, a2 + *(*(v13 - 8) + 72) * v7, a5);
        v14 = v11[1];
        v12 = __OFADD__(v14, 1);
        v15 = v14 + 1;
        if (!v12)
        {
          v11[1] = v15;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v12 = __OFADD__(v7, *result);
      v7 += *result;
      if (v12)
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

void sub_1003380A0(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_37;
  }

  v9 = a3[1];
  v10 = *(a5(0) - 8);
  if (v6 < v9)
  {
    v11 = v9 - v6;
    if (!__OFSUB__(v9, v6))
    {
      v12 = v6;
      v13 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = 0;
  v11 = 0;
  v12 = v9;
LABEL_6:
  if (v11)
  {
    v14 = v6 < v9;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v10 + 72);
  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < 1)
  {
    v12 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = a4 + v15 * v5;
  if (v17 <= a2 && v17 + v15 * v12 > a2)
  {
    if (v17 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v6 < v9 && v11 >= 1)
  {
    if (v16)
    {
      v20 = a2 + v15 * v12;
      if (v20 < v16 || v20 >= v16 + v15 * v11)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v20 != v16)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void sub_100338238(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  v9 = *(a5(0) - 8);
  if (v6 < v8)
  {
    v10 = v8 - v6;
    if (!__OFSUB__(v8, v6))
    {
      v11 = v6;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  v13 = *(v9 + 72);
  if (v11 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v6 < v8 && v10 >= 1)
  {
    if (v12)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_100338360(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  v9 = *(a5(0) - 8);
  if (v6 >= v8)
  {
    v11 = 0;
    v10 = 0;
    if (v8 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      v12 = *(v9 + 72) * v5;
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v8 - v6;
  if (__OFSUB__(v8, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = a4;
  if (v6 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v6 < v8 && v10 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1003384A8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  v9 = a1(0);
  v10 = *(v8 + 16);
  v11 = *(v9 - 8);
  v12 = *(v11 + 80);
  sub_10000C9C0(a2, a3);
  v13 = *(v11 + 72);
  v14 = swift_allocObject();
  v15 = *(v8 + 24);
  *(v14 + 16) = v10;
  *(v14 + 24) = v15;
  if (v15 >= 1)
  {
    sub_100338360(v14 + 16, v14 + ((v12 + 40) & ~v12), (v8 + 16), v8 + ((v12 + 40) & ~v12), a4);
  }

  *v4 = v14;
  return result;
}

uint64_t sub_1003385B8(void *a1, void *a2)
{
  v4 = _s5StateV7RequestVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v47 - v10);
  v47 = sub_10000C9C0(&qword_1005D9BE0, &qword_1004F6F30);
  v12 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v14 = &v47 - v13;
  v15 = sub_10000C9C0(&qword_1005D9BD8, &qword_1004F6F28);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  v22 = *(v5 + 80);
  v23 = a2[4];
  v24 = a2[3] + v23;
  if (a2[2] < v24)
  {
    v24 = a2[2];
  }

  v54 = a2;
  v55 = v23;
  v56 = v24;
  v25 = a1[4];
  v26 = a1[3] + v25;
  if (a1[2] < v26)
  {
    v26 = a1[2];
  }

  v48 = (v22 + 40) & ~v22;
  v49 = v5;
  v51 = a1;
  v52 = v25;
  v53 = v26;
  v27 = (v5 + 56);
  v28 = (v5 + 48);

  while (1)
  {
    v30 = v55;
    if (v55 != v56)
    {
      goto LABEL_9;
    }

    if (sub_100351DD0(v29))
    {
      v30 = v55;
LABEL_9:
      v55 = v30 + 1;
      sub_100339848(v54 + v48 + *(v49 + 72) * v30, v21, _s5StateV7RequestVMa);
      v31 = 0;
      goto LABEL_11;
    }

    v31 = 1;
LABEL_11:
    v32 = *v27;
    v33 = (*v27)(v21, v31, 1, v4);
    v34 = v52;
    if (v52 != v53)
    {
      goto LABEL_14;
    }

    if (sub_100351DD0(v33))
    {
      v34 = v52;
LABEL_14:
      v52 = v34 + 1;
      sub_100339848(v51 + v48 + *(v49 + 72) * v34, v18, _s5StateV7RequestVMa);
      v35 = 0;
      goto LABEL_16;
    }

    v35 = 1;
LABEL_16:
    v32(v18, v35, 1, v4);
    v36 = *(v47 + 48);
    sub_100339FDC(v21, v14);
    sub_100339FDC(v18, &v14[v36]);
    v37 = *v28;
    if ((*v28)(v14, 1, v4) == 1)
    {
      break;
    }

    if (v37(&v14[v36], 1, v4) == 1)
    {

      sub_1003398B0(v14, _s5StateV7RequestVMa);
      return 0;
    }

    sub_100339910(v14, v11, _s5StateV7RequestVMa);
    sub_100339910(&v14[v36], v8, _s5StateV7RequestVMa);
    if (*v11 != *v8 || (v38 = *(v4 + 20), sub_100016D2C(), (sub_1004A7034() & 1) == 0))
    {
      sub_1003398B0(v8, _s5StateV7RequestVMa);
      sub_1003398B0(v11, _s5StateV7RequestVMa);
LABEL_23:

      return 0;
    }

    v50 = *(v11 + *(v4 + 24));
    sub_1003398B0(v11, _s5StateV7RequestVMa);
    v39 = v27;
    v40 = v28;
    v41 = v21;
    v42 = v18;
    v43 = *(v8 + *(v4 + 24));
    v29 = sub_1003398B0(v8, _s5StateV7RequestVMa);
    v44 = v50 == v43;
    v18 = v42;
    v21 = v41;
    v28 = v40;
    v27 = v39;
    if (!v44)
    {
      goto LABEL_23;
    }
  }

  v45 = v37(&v14[v36], 1, v4);
  result = 1;
  if (v45 == 1)
  {
    return result;
  }

  sub_100025F40(&v14[v36], &qword_1005D9BD8, &qword_1004F6F28);
  return 0;
}

uint64_t sub_100338AB4(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = _s5StateV7RequestVMa(0);
  v5 = *(v4 + 20);
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0 || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    goto LABEL_8;
  }

  v6 = _s5StateV15DeferredRequestVMa(0);
  v7 = *(v6 + 20);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  if (v9 == v12 && v8 == v11)
  {
    v14 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + *(v6 + 24)), *(a2 + *(v6 + 24))), vceqq_s64(*(a1 + *(v6 + 24) + 16), *(a2 + *(v6 + 24) + 16)))));
  }

  else
  {
LABEL_8:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_100338BA0(uint64_t a1, uint64_t a2)
{
  v50.i64[0] = _s5StateV7RequestVMa(0);
  v4 = *(*(v50.i64[0] - 8) + 64);
  __chkstk_darwin(v50.i64[0]);
  v6 = (v46.i32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49.i64[0] = _s5StateV15DeferredRequestVMa(0);
  v7 = *(*(v49.i64[0] - 8) + 64);
  __chkstk_darwin(v49.i64[0]);
  v9 = (v46.i32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = _s5StateV6ActionOMa(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v46.i32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (v46.i32 - v15);
  v17 = sub_10000C9C0(&qword_1005D9DD0, &unk_1004F7010);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v46.i8[-v19];
  v22 = &v46.i8[*(v21 + 56) - v19];
  sub_100339848(a1, v46.i64 - v19, _s5StateV6ActionOMa);
  sub_100339848(a2, v22, _s5StateV6ActionOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100339848(v20, v16, _s5StateV6ActionOMa);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100339910(v22, v9, _s5StateV15DeferredRequestVMa);
      if (*v16 == *v9 && (v33 = *(v50.i64[0] + 20), sub_100016D2C(), (sub_1004A7034() & 1) != 0) && *(v16 + *(v50.i64[0] + 24)) == *(v9 + *(v50.i64[0] + 24)) && (v34 = *(v49.i64[0] + 20), v35 = v16 + v34, v36 = *(v16 + v34), v37 = (v9 + v34), v36 == *v37) && *(v35 + 1) == v37[1])
      {
        v38 = *(v49.i64[0] + 24);
        v39 = (v16 + v38);
        v40 = (v9 + v38);
        v41 = *v39;
        v49 = v39[1];
        v50 = v41;
        v42 = *v40;
        v47 = v40[1];
        v48 = v42;
        sub_1003398B0(v9, _s5StateV15DeferredRequestVMa);
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v50, v48), vceqq_s64(v49, v47)))))
        {
          sub_1003398B0(v16, _s5StateV15DeferredRequestVMa);
          sub_1003398B0(v20, _s5StateV6ActionOMa);
          v30 = 1;
          return v30 & 1;
        }
      }

      else
      {
        sub_1003398B0(v9, _s5StateV15DeferredRequestVMa);
      }

      v43 = _s5StateV15DeferredRequestVMa;
      v44 = v16;
      goto LABEL_22;
    }

    v31 = _s5StateV15DeferredRequestVMa;
    v32 = v16;
LABEL_10:
    sub_1003398B0(v32, v31);
    sub_100025F40(v20, &qword_1005D9DD0, &unk_1004F7010);
LABEL_23:
    v30 = 0;
    return v30 & 1;
  }

  sub_100339848(v20, v13, _s5StateV6ActionOMa);
  v23 = *(sub_10000C9C0(&qword_1005D9BC0, &qword_1004F6F10) + 48);
  v24 = *(v13 + v23 + 16);
  v48 = *(v13 + v23);
  v49 = v24;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v31 = _s5StateV7RequestVMa;
    v32 = v13;
    goto LABEL_10;
  }

  v25 = *&v22[v23 + 16];
  v46 = *&v22[v23];
  v47 = v25;
  sub_100339910(v22, v6, _s5StateV7RequestVMa);
  if (*v13 != *v6 || (v26 = *(v50.i64[0] + 20), sub_100016D2C(), (sub_1004A7034() & 1) == 0))
  {
    sub_1003398B0(v6, _s5StateV7RequestVMa);
    goto LABEL_21;
  }

  v27 = *(v50.i64[0] + 24);
  v28 = *(v13 + v27);
  v29 = *(v6 + v27);
  sub_1003398B0(v6, _s5StateV7RequestVMa);
  if (v28 != v29)
  {
LABEL_21:
    v43 = _s5StateV7RequestVMa;
    v44 = v13;
LABEL_22:
    sub_1003398B0(v44, v43);
    sub_1003398B0(v20, _s5StateV6ActionOMa);
    goto LABEL_23;
  }

  sub_1003398B0(v13, _s5StateV7RequestVMa);
  v30 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v48, v46), vceqq_s64(v49, v47))));
  sub_1003398B0(v20, _s5StateV6ActionOMa);
  return v30 & 1;
}

uint64_t sub_10033913C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  *&v81 = a8;
  v79 = a6;
  *&v82 = a1;
  v77 = a9;
  v14 = _s5StateV7RequestVMa(0);
  v72 = *(v14 - 8);
  v15 = *(v72 + 64);
  __chkstk_darwin(v14);
  v74 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v76 = &v71 - v18;
  v19 = _s5StateV15DeferredRequestVMa(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v73 = (&v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = _s5StateV6ActionOMa(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v71 - v27;
  v80 = a7;
  v75 = *a7;
  v29 = *(v75 + 24);
  v78 = a2;
  if (v29)
  {
    v30 = a3;
    v31 = a4;
    v32 = a5;
  }

  else
  {
    v33 = a2;
    v30 = a3;
    v34 = a3;
    v31 = a4;
    v35 = a4;
    v32 = a5;
    v36 = sub_10032B874(*(v82 + *(v14 + 24)), v33, v34, v35, a5);
    if (v36 >= 1 && v37 >= 1)
    {
      v67 = v36;
      v68 = v37;
      sub_100339848(v82, v28, _s5StateV7RequestVMa);
      v69 = &v28[*(v19 + 20)];
      *v69 = v67;
      *(v69 + 1) = v68;
      v70 = &v28[*(v19 + 24)];
      goto LABEL_9;
    }
  }

  v70 = &v28[*(sub_10000C9C0(&qword_1005D9BC0, &qword_1004F6F10) + 48)];
  sub_100339848(v82, v28, _s5StateV7RequestVMa);
LABEL_9:
  v39 = v81;
  *v70 = v78;
  *(v70 + 1) = v30;
  *(v70 + 2) = v31;
  *(v70 + 3) = v32;
  swift_storeEnumTagMultiPayload();
  sub_100339848(v28, v25, _s5StateV6ActionOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v56 = v73;
    sub_100339910(v25, v73, _s5StateV15DeferredRequestVMa);
    sub_10033997C(v56, v79, v80, v39, v84);
    v81 = v84[0];
    v82 = v84[1];
    v57 = v85;
    sub_1003398B0(v56, _s5StateV15DeferredRequestVMa);
    result = sub_1003398B0(v28, _s5StateV6ActionOMa);
LABEL_19:
    v65 = v82;
    v66 = v77;
    *v77 = v81;
    v66[1] = v65;
    *(v66 + 32) = v57;
    return result;
  }

  v40 = &v25[*(sub_10000C9C0(&qword_1005D9BC0, &qword_1004F6F10) + 48)];
  v41 = *(v40 + 1);
  v81 = *v40;
  v82 = v41;
  v42 = v76;
  sub_100339910(v25, v76, _s5StateV7RequestVMa);
  v43 = (v79 + *(_s6LoggerVMa_0(0) + 20));
  v44 = *v43;
  v45 = *(v43 + 1);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v46 = v74;
  sub_100339848(v42, v74, _s5StateV7RequestVMa);
  v47 = sub_1004A4A54();
  v48 = sub_1004A6034();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = v28;
    v51 = swift_slowAlloc();
    *&v84[0] = v51;
    *v49 = 68158722;
    *(v49 + 4) = 2;
    *(v49 + 8) = 256;
    *(v49 + 10) = v44;
    *(v49 + 11) = 1040;
    *(v49 + 13) = 8;
    *(v49 + 17) = 1024;
    *(v49 + 19) = v45;
    *(v49 + 23) = 2080;
    v83 = *v46;
    sub_1000D40AC();
    v52 = sub_1004A5A84();
    v54 = v53;
    sub_1003398B0(v46, _s5StateV7RequestVMa);
    v55 = sub_10015BA6C(v52, v54, v84);

    *(v49 + 25) = v55;
    _os_log_impl(&_mh_execute_header, v47, v48, "[%.*hhx-%.*X] Enqueuing message request %s.", v49, 0x21u);
    sub_1000197E0(v51);
    v28 = v50;
  }

  else
  {

    sub_1003398B0(v46, _s5StateV7RequestVMa);
  }

  v59 = v80;
  v60 = *(v75 + 24);
  v61 = v60 + 1;
  if (!__OFADD__(v60, 1))
  {
    v62 = *v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *v59;
    if (*(*v59 + 16) < v61 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100337D24(isUniquelyReferenced_nonNull_native, v61, 0, _s5StateV7RequestVMa, &qword_1005D9BC8, &qword_1004F6F18, _s5StateV7RequestVMa);
      v64 = *v59;
    }

    sub_100337FD8((v64 + 16), v64 + ((*(v72 + 80) + 40) & ~*(v72 + 80)), v42, _s5StateV7RequestVMa, _s5StateV7RequestVMa);
    sub_1003398B0(v28, _s5StateV6ActionOMa);
    sub_1003398B0(v42, _s5StateV7RequestVMa);

    v57 = 0;
    goto LABEL_19;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100339848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003398B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100339910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10033997C(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a3;
  v9 = _s5StateV15DeferredRequestVMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v61 = (v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v63 = (v58 - v13);
  v14 = _s5StateV7RequestVMa(0);
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100339848(a1, v19, _s5StateV7RequestVMa);
  v20 = *(v15 + 28);
  v21 = sub_100335C40(&v19[v20], *(a1 + *(v9 + 20)), *(a1 + *(v9 + 20) + 8));
  sub_100025F40(&v19[v20], &unk_1005D91B0, &unk_1004CF400);
  if (v21)
  {
    v22 = (a2 + *(_s6LoggerVMa_0(0) + 20));
    v23 = *v22;
    v24 = *(v22 + 1);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v25 = v63;
    sub_100339848(a1, v63, _s5StateV15DeferredRequestVMa);

    v26 = sub_1004A4A54();
    v27 = sub_1004A6034();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v60 = a5;
      v29 = v28;
      v30 = swift_slowAlloc();
      v65[0] = v30;
      *v29 = 68158978;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      *(v29 + 10) = v23;
      *(v29 + 11) = 1040;
      *(v29 + 13) = 8;
      *(v29 + 17) = 1024;
      *(v29 + 19) = v24;
      *(v29 + 23) = 2048;
      *(v29 + 25) = *(v21 + 2);

      *(v29 + 33) = 2080;
      v64 = *v25;
      sub_1000D40AC();
      v31 = sub_1004A5A84();
      v33 = v32;
      sub_1003398B0(v25, _s5StateV15DeferredRequestVMa);
      v34 = sub_10015BA6C(v31, v33, v65);

      *(v29 + 35) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%.*hhx-%.*X] Returning %ld messages for request %s.", v29, 0x2Bu);
      sub_1000197E0(v30);

      a5 = v60;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_1003398B0(v25, _s5StateV15DeferredRequestVMa);
    }

    v48 = *a1;
    v49 = 0uLL;
    v50 = v21;
LABEL_14:
    *a5 = v50;
    *(a5 + 8) = v48;
    *(a5 + 16) = v49;
    *(a5 + 32) = v21 != 0;
    return;
  }

  v63 = v16;
  v58[1] = a4;
  v59 = 0;
  v35 = v9;
  v60 = a5;
  v36 = (a2 + *(_s6LoggerVMa_0(0) + 20));
  v37 = *v36;
  v38 = *(v36 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v39 = v61;
  sub_100339848(a1, v61, _s5StateV15DeferredRequestVMa);
  v40 = sub_1004A4A54();
  v41 = sub_1004A6034();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v65[0] = v43;
    *v42 = 68158722;
    *(v42 + 4) = 2;
    *(v42 + 8) = 256;
    *(v42 + 10) = v37;
    *(v42 + 11) = 1040;
    *(v42 + 13) = 8;
    *(v42 + 17) = 1024;
    *(v42 + 19) = v38;
    *(v42 + 23) = 2080;
    v64 = *v39;
    sub_1000D40AC();
    v44 = sub_1004A5A84();
    v46 = v45;
    sub_1003398B0(v39, _s5StateV15DeferredRequestVMa);
    v47 = sub_10015BA6C(v44, v46, v65);

    *(v42 + 25) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "[%.*hhx-%.*X] (Re-)enqueuing (deferred) message request %s due to batch size limits.", v42, 0x21u);
    sub_1000197E0(v43);
  }

  else
  {

    sub_1003398B0(v39, _s5StateV15DeferredRequestVMa);
  }

  v51 = v62;
  v52 = v63;
  v53 = *(*v62 + 24);
  v54 = v53 + 1;
  if (!__OFADD__(v53, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *v51;
    if (*(*v51 + 16) < v54 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100337D24(isUniquelyReferenced_nonNull_native, v54, 0, _s5StateV7RequestVMa, &qword_1005D9BC8, &qword_1004F6F18, _s5StateV7RequestVMa);
      v56 = *v51;
    }

    sub_100337FD8((v56 + 16), v56 + ((*(v52 + 80) + 40) & ~*(v52 + 80)), a1, _s5StateV7RequestVMa, _s5StateV7RequestVMa);
    v57 = a1 + *(v35 + 24);
    v50 = *v57;
    v48 = *(v57 + 1);
    v49 = *(v57 + 1);
    v21 = v59;
    a5 = v60;
    goto LABEL_14;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_100339FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D9BD8, &qword_1004F6F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10033A04C()
{
  _s5StateV15DeferredRequestVMa(319);
  if (v0 <= 0x3F)
  {
    sub_10033A0C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10033A0C0()
{
  if (!qword_1005D9C68)
  {
    _s5StateV7RequestVMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D9C68);
    }
  }
}

uint64_t sub_10033A13C(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateV7RequestVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10033A1BC(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateV7RequestVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10033A22C()
{
  result = _s5StateV7RequestVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10033A2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10033A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10033A3E4()
{
  sub_100050DB8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_10033A46C()
{
  result = qword_1005D9DC8;
  if (!qword_1005D9DC8)
  {
    _s5StateV7RequestVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D9DC8);
  }

  return result;
}

uint64_t sub_10033A4F8()
{
  v1 = sub_1004A5734();
  [v0 willAccessValueForKey:v1];

  v2 = [v0 primitiveAccount];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_1004A5764();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_6:
    v4 = 0;
  }

  v8 = sub_1004A5734();
  [v0 didAccessValueForKey:v8];

  return v4;
}

unint64_t sub_10033A5E0()
{
  v1 = sub_1004A5734();
  [v0 willAccessValueForKey:v1];

  v2 = [v0 primitiveUid];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 longLongValue];

    v5 = v4 - 0x100000000 < 0xFFFFFFFF00000001;
    if (v4 - 0x100000000 >= 0xFFFFFFFF00000001)
    {
      v4 = v4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  v6 = sub_1004A5734();
  [v0 didAccessValueForKey:v6];

  return v4 | (v5 << 32);
}

unint64_t sub_10033A6CC()
{
  v1 = sub_1004A44E4();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A5734();
  [v0 willAccessValueForKey:v5];

  v6 = [v0 primitiveDataUsage];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1004A4414();
    v10 = v9;

    sub_100014CEC(v8, v10);
    sub_1004A44D4();
    v11 = sub_100378058(v4, v8, v10);
    sub_100014D40(v8, v10);
  }

  else
  {
    v11 = sub_1003510AC(&_swiftEmptyArrayStorage);
  }

  v12 = sub_1004A5734();
  [v0 didAccessValueForKey:v12];

  return v11;
}

void *sub_10033A824()
{
  v1 = sub_1004A5734();
  [v0 willAccessValueForKey:v1];

  v2 = [v0 primitiveName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100359E0C(v3);

    rawValue = MailboxName.init(_:)(v4).bytes._rawValue;
  }

  else
  {
    rawValue = 0;
  }

  v6 = sub_1004A5734();
  [v0 didAccessValueForKey:v6];

  return rawValue;
}

uint64_t sub_10033A8F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x716553646F6DLL;
  v6 = 0xEB00000000776F4CLL;
  if (a1 != 4)
  {
    v6 = 0xEA00000000007055;
  }

  if (a1 != 3)
  {
    v5 = 0x7473657265746E69;
    v4 = v6;
  }

  v7 = 0x4C64656863746566;
  v8 = 0xEA0000000000776FLL;
  if (a1 != 1)
  {
    v7 = 0x5564656863746566;
    v8 = 0xE900000000000070;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x79746964696C6176;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x716553646F6DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xEB00000000776F4CLL;
      if (v9 != 0x7473657265746E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xEA00000000007055;
      if (v9 != 0x7473657265746E69)
      {
LABEL_34:
        v12 = sub_1004A6D34();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xEA0000000000776FLL;
      if (v9 != 0x4C64656863746566)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE900000000000070;
      if (v9 != 0x5564656863746566)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x79746964696C6176)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

Swift::Int sub_10033AAF0()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

Swift::Int sub_10033AC04()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

void sub_10033AD54(unsigned __int8 a1)
{
  v3 = a1;
  v4 = sub_1004A5734();
  [v1 willChangeValueForKey:v4];

  if (v3)
  {
    v5 = [objc_allocWithZone(NSNumber) initWithLongLong:a1];
  }

  else
  {
    v5 = 0;
  }

  [v1 setPrimitiveAttributeChange:v5];

  v6 = sub_1004A5734();
  [v1 didChangeValueForKey:v6];
}

uint64_t sub_10033AE78(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = sub_1004A5734();
  [v3 willAccessValueForKey:v5];

  v6 = [v3 *a3];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1004A5734();
  [v3 didAccessValueForKey:v9];

  return v8 & ~(v8 >> 63);
}

uint64_t sub_10033AF38()
{
  v1 = sub_1004A5734();
  [v0 willAccessValueForKey:v1];

  v2 = [v0 primitiveFlags];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 longLongValue];

    v5 = sub_100320048(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1004A5734();
  [v0 didAccessValueForKey:v6];

  return v5;
}

id sub_10033B048(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v7 = sub_1004A5734();
  [v4 willAccessValueForKey:v7];

  v8 = [v4 *a3];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 *a4];
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1004A5734();
  [v4 didAccessValueForKey:v11];

  return v10;
}

id sub_10033B114(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  v6 = [objc_allocWithZone(NSEntityDescription) init];
  v7 = sub_1004A5734();

  [v6 setName:v7];

  a4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v9)
  {
    sub_1004A5764();
    v9 = sub_1004A5734();
  }

  [v6 setManagedObjectClassName:v9];

  if (a3 >> 62)
  {
    sub_10019A8E4(0, &qword_1005D9F00, NSPropertyDescription_ptr);

    sub_1004A69B4();
  }

  else
  {

    sub_1004A6D94();
    sub_10019A8E4(0, &qword_1005D9F00, NSPropertyDescription_ptr);
  }

  sub_10019A8E4(0, &qword_1005D9F00, NSPropertyDescription_ptr);
  isa = sub_1004A5C04().super.isa;

  [v6 setProperties:isa];

  return v6;
}

uint64_t sub_10033B308(void *a1)
{
  v2 = [a1 propertiesByName];
  sub_10019A8E4(0, &qword_1005D9F00, NSPropertyDescription_ptr);
  v3 = sub_1004A5514();
  if (!*(v3 + 16) || (v4 = sub_100064090(6580597, 0xE300000000000000), (v5 & 1) == 0))
  {

    __break(1u);
LABEL_9:

    __break(1u);
    goto LABEL_10;
  }

  v6 = v4;

  v7 = *(*(v3 + 56) + 8 * v6);

  v8 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v7 collationType:0];

  [v8 setAscending:0];
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004F7020;
  v10 = [a1 propertiesByName];
  v11 = sub_1004A5514();
  if (!*(v11 + 16))
  {
    goto LABEL_9;
  }

  v12 = sub_100064090(0x786F626C69616DLL, 0xE700000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = v12;

  v15 = *(*(v11 + 56) + 8 * v14);

  v16 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v15 collationType:0];

  *(v9 + 32) = v16;
  v17 = [a1 propertiesByName];
  v18 = sub_1004A5514();
  if (*(v18 + 16))
  {
    v19 = sub_100064090(0x65526F546465656ELL, 0xEE006574616E6F64);
    if (v20)
    {
      v21 = v19;

      v22 = *(*(v18 + 56) + 8 * v21);

      v23 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v22 collationType:0];

      *(v9 + 40) = v23;
      *(v9 + 48) = v8;
      v24 = objc_allocWithZone(NSFetchIndexDescription);
      v25 = v8;
      v26 = sub_1004A5734();
      sub_10019A8E4(0, &qword_1005D9F08, NSFetchIndexElementDescription_ptr);
      isa = sub_1004A5C04().super.isa;

      v28 = [v24 initWithName:v26 elements:isa];

      return v28;
    }
  }

LABEL_10:

  __break(1u);
  return result;
}

void sub_10033B644(void *a1, uint64_t a2)
{
  v4 = [a1 primitiveIndexableMessageInfo];
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtCE17IMAPSearchIndexerV9IMAP2MIME20IndexableMessageInfoP33_5FFF53AECAA0B5B4FDC4BFE964265B9C7Wrapper_info;
    swift_beginAccess();
    sub_10034082C(a2, v5 + v6);
    swift_endAccess();
  }

  else
  {
    v5 = [objc_allocWithZone(_s7WrapperCMa()) init];
    v7 = OBJC_IVAR____TtCE17IMAPSearchIndexerV9IMAP2MIME20IndexableMessageInfoP33_5FFF53AECAA0B5B4FDC4BFE964265B9C7Wrapper_info;
    swift_beginAccess();
    sub_10034082C(a2, v5 + v7);
    swift_endAccess();
    [a1 setPrimitiveIndexableMessageInfo:v5];
  }
}

void sub_10033B738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1004A5734();
  v30.receiver = v2;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "didChangeValueForKey:", v7);

  if (a1 == 0x7367616C66 && a2 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
  {
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004CEAA0;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;

    isa = sub_1004A5C04().super.isa;

    v10 = [v2 committedValuesForKeys:isa];

    v11 = sub_1004A5514();
    if (!*(v11 + 16) || (v12 = sub_100064090(a1, a2), (v13 & 1) == 0))
    {

      return;
    }

    sub_1001659C8(*(v11 + 56) + 32 * v12, v29);

    sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v14 = v27;
    v15 = sub_1004A5734();
    v16 = [v3 valueForKey:v15];

    if (v16)
    {
      sub_1004A64E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29[0] = v27;
    v29[1] = v28;
    if (*(&v28 + 1))
    {
      if (swift_dynamicCast())
      {
        v17 = v14;
        v18 = v26;
        v19 = sub_1004A62F4();

        if (v19)
        {

          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      sub_100025F40(v29, &qword_1005D4768, &unk_1004F5B20);
    }

    v18 = 0;
LABEL_18:
    v20 = sub_1004A5734();
    [v3 willAccessValueForKey:v20];

    v21 = [v3 primitiveAttributeChange];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 longLongValue];

      if (v23 > 0xFF)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23 | 1;
      }
    }

    else
    {
      v24 = 1;
    }

    v25 = sub_1004A5734();
    [v3 didAccessValueForKey:v25];

    sub_10033AD54(v24);
  }
}

BOOL sub_10033BB44(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 13) = *(a1 + 29);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 13) = *(a2 + 29);
  return sub_10033D090(&v5, &v7);
}

void sub_10033BB90(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1004A5734();
  [v2 willChangeValueForKey:v4];

  v11 = *a1;
  *v12 = a1[1];
  *&v12[13] = *(a1 + 29);
  sub_10033C5CC();
  sub_1003407D8();
  v5 = sub_1004A3FE4();
  v7 = v6;

  isa = sub_1004A4404().super.isa;
  v9 = sub_1004A5734();
  [v2 setPrimitiveValue:isa forKey:v9];

  sub_100014D40(v5, v7);
  v10 = sub_1004A5734();
  [v2 didChangeValueForKey:v10];
}

id sub_10033BCE8()
{
  v1 = objc_allocWithZone(NSFetchRequest);
  v2 = sub_1004A5734();
  v3 = [v1 initWithEntityName:v2];

  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004CEAA0;
  v5 = [v0 objectID];
  *(v4 + 56) = sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
  *(v4 + 32) = v5;
  v6 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v8 = [objc_opt_self() predicateWithFormat:v6 argumentArray:isa];

  [v3 setPredicate:v8];
  return v3;
}

id sub_10033BE80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a3, a4);
}

uint64_t _s7WrapperCMa()
{
  result = qword_1005D9EA8;
  if (!qword_1005D9EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033C01C()
{
  sub_10033C0AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10033C0AC()
{
  if (!qword_1005D9EB8)
  {
    type metadata accessor for IndexableMessageInfo(255);
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D9EB8);
    }
  }
}

id sub_10033C1A8()
{
  v2.receiver = v0;
  v2.super_class = _s13ManagedObjectCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10033C238()
{
  v1 = v0;
  v2 = sub_1004A3EF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A3F04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  *&v10 = __chkstk_darwin(v7).n128_u64[0];
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 managedObjectContext];
  if (!v13)
  {
    v30 = 0u;
    v31 = 0u;
LABEL_9:
    sub_100025F40(&v30, &qword_1005D4768, &unk_1004F5B20);
    goto LABEL_10;
  }

  v27 = v2;
  v14 = v0;
  v15 = v13;
  v16 = [v13 userInfo];

  *&v28 = 0x6F6365446E6F736ALL;
  *(&v28 + 1) = 0xEB00000000726564;
  v17 = [v16 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v17)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  v1 = v14;
  v2 = v27;
  if (!*(&v29 + 1))
  {
    goto LABEL_9;
  }

  sub_1004A3F54();
  if (swift_dynamicCast())
  {
    return v28;
  }

LABEL_10:
  v19 = sub_1004A3F54();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v18 = sub_1004A3F44();
  (*(v8 + 104))(v12, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v7);
  sub_1004A3F24();
  (*(v3 + 104))(v6, enum case for JSONDecoder.DataDecodingStrategy.base64(_:), v2);
  sub_1004A3F14();
  v22 = [v1 managedObjectContext];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 userInfo];

    *&v30 = 0x6F6365446E6F736ALL;
    *(&v30 + 1) = 0xEB00000000726564;

    [v24 __swift_setObject:v18 forKeyedSubscript:sub_1004A6DF4()];

    swift_unknownObjectRelease();
  }

  return v18;
}

uint64_t sub_10033C5CC()
{
  v1 = v0;
  v2 = sub_1004A3FA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A3FB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  *&v10 = __chkstk_darwin(v7).n128_u64[0];
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 managedObjectContext];
  if (!v13)
  {
    v30 = 0u;
    v31 = 0u;
LABEL_9:
    sub_100025F40(&v30, &qword_1005D4768, &unk_1004F5B20);
    goto LABEL_10;
  }

  v27 = v2;
  v14 = v0;
  v15 = v13;
  v16 = [v13 userInfo];

  *&v28 = 0x6F636E456E6F736ALL;
  *(&v28 + 1) = 0xEB00000000726564;
  v17 = [v16 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v17)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  v1 = v14;
  v2 = v27;
  if (!*(&v29 + 1))
  {
    goto LABEL_9;
  }

  sub_1004A4004();
  if (swift_dynamicCast())
  {
    return v28;
  }

LABEL_10:
  v19 = sub_1004A4004();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v18 = sub_1004A3FF4();
  (*(v8 + 104))(v12, enum case for JSONEncoder.DateEncodingStrategy.millisecondsSince1970(_:), v7);
  sub_1004A3FD4();
  (*(v3 + 104))(v6, enum case for JSONEncoder.DataEncodingStrategy.base64(_:), v2);
  sub_1004A3FC4();
  v22 = [v1 managedObjectContext];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 userInfo];

    *&v30 = 0x6F636E456E6F736ALL;
    *(&v30 + 1) = 0xEB00000000726564;

    [v24 __swift_setObject:v18 forKeyedSubscript:sub_1004A6DF4()];

    swift_unknownObjectRelease();
  }

  return v18;
}

unint64_t sub_10033C960()
{
  sub_10000C9C0(&qword_1005D9EC0, &qword_1004F70D8);
  result = sub_1004A6B54();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1004A6B54();
    if (((v2 | v3) & 0x100000000) != 0)
    {
      return 0;
    }

    else if (v3 >= v2)
    {
      return v2 | (v3 << 32);
    }

    else
    {
      sub_100340784();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10033CA34(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D9ED8, &unk_1004F70E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100340730();
  sub_1004A6FA4();
  v11 = *v3;
  v12 = *(v3 + 4);
  v19[31] = 0;
  v19[28] = v12;
  sub_1004A6C24();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + 1);
  v14 = *(v3 + 16);
  v19[27] = 1;
  v19[24] = v14;
  sub_1004A6C24();
  v19[23] = 2;
  v19[20] = v14;
  sub_1004A6C24();
  if (!*(v3 + 32))
  {
    v15 = *(v3 + 3);
  }

  v19[19] = 3;
  sub_1004A6C34();
  v16 = *(v3 + 9);
  v17 = *(v3 + 44);
  v19[18] = 4;
  v19[16] = v17;
  sub_1004A6C24();
  v19[15] = 5;
  v19[12] = v17;
  sub_1004A6C24();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10033CCCC()
{
  *v0;
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_10033CDD0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100340AA0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10033CE00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x79746964696C6176;
  v5 = 0xE600000000000000;
  v6 = 0x716553646F6DLL;
  v7 = 0xEB00000000776F4CLL;
  if (v2 != 4)
  {
    v7 = 0xEA00000000007055;
  }

  if (v2 != 3)
  {
    v6 = 0x7473657265746E69;
    v5 = v7;
  }

  v8 = 0xEA0000000000776FLL;
  v9 = 0x4C64656863746566;
  if (v2 != 1)
  {
    v9 = 0x5564656863746566;
    v8 = 0xE900000000000070;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_10033CECC()
{
  v1 = *v0;
  v2 = 0x79746964696C6176;
  v3 = 0x716553646F6DLL;
  if (v1 != 3)
  {
    v3 = 0x7473657265746E69;
  }

  v4 = 0x4C64656863746566;
  if (v1 != 1)
  {
    v4 = 0x5564656863746566;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10033CF94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100340AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10033CFBC(uint64_t a1)
{
  v2 = sub_100340730();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033CFF8(uint64_t a1)
{
  v2 = sub_100340730();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10033D034@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1003404A8(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 13);
    *(a2 + 29) = *(v7 + 13);
  }

  return result;
}

BOOL sub_10033D090(_BOOL8 result, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(result + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*result != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 16);
  if (*(result + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8) != *(result + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 32);
  if (*(result + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v7 = *(a2 + 44);
    if ((*(result + 44) & 1) == 0)
    {
      if (*(a2 + 36) != *(result + 36))
      {
        v7 = 1;
      }

      return (v7 & 1) == 0;
    }

    return (*(a2 + 44) & 1) != 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v5 = *(result + 24);
  v6 = *(a2 + 24);
  if (((v6 | v5) & 0x8000000000000000) == 0)
  {
    if (v6 != v5)
    {
      return 0;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10033D148()
{
  v0 = sub_1004A61E4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v303 = &v287 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v302 = &v287 - v6;
  v7 = __chkstk_darwin(v5);
  v301 = &v287 - v8;
  v9 = __chkstk_darwin(v7);
  v300 = &v287 - v10;
  v11 = __chkstk_darwin(v9);
  v299 = &v287 - v12;
  v13 = __chkstk_darwin(v11);
  v298 = &v287 - v14;
  v15 = __chkstk_darwin(v13);
  *&v297 = &v287 - v16;
  v17 = __chkstk_darwin(v15);
  v296 = &v287 - v18;
  v19 = __chkstk_darwin(v17);
  v295 = &v287 - v20;
  v21 = __chkstk_darwin(v19);
  v294 = &v287 - v22;
  v23 = __chkstk_darwin(v21);
  v293 = &v287 - v24;
  v25 = __chkstk_darwin(v23);
  v292 = &v287 - v26;
  v27 = __chkstk_darwin(v25);
  v291 = &v287 - v28;
  v29 = __chkstk_darwin(v27);
  v290 = &v287 - v30;
  v31 = __chkstk_darwin(v29);
  v288 = &v287 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v287 - v34;
  __chkstk_darwin(v33);
  v37 = &v287 - v36;
  v289 = [objc_allocWithZone(NSManagedObjectModel) init];
  v304 = sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  *&v306 = swift_allocObject();
  *(v306 + 16) = xmmword_1004F7030;
  sub_1004A61C4();
  v312 = 0u;
  v313 = 0u;
  v38 = [objc_allocWithZone(NSAttributeDescription) init];
  v39 = sub_1004A5734();
  [v38 setName:v39];

  [v38 setOptional:1];
  v40 = v1[2];
  v309 = v1 + 2;
  *&v308 = v40;
  v40(v35, v37, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v41 = v311;
  if (v311)
  {
    v42 = sub_10002587C(v310, v311);
    v43 = *(v41 - 8);
    v44 = *(v43 + 64);
    __chkstk_darwin(v42);
    v46 = v0;
    v47 = v1;
    v48 = &v287 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v48);
    v49 = sub_1004A6D14();
    v50 = v48;
    v1 = v47;
    v0 = v46;
    (*(v43 + 8))(v50, v41);
    sub_1000197E0(v310);
  }

  else
  {
    v49 = 0;
  }

  [v38 setDefaultValue:v49];
  swift_unknownObjectRelease();
  [v38 setAllowsExternalBinaryDataStorage:0];

  [v38 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307 = v1[1];
  v307(v37, v0);
  *(v306 + 32) = v38;
  v51 = v288;
  sub_1004A61C4();
  *(&v313 + 1) = &type metadata for Int;
  *&v312 = 0;
  v52 = [objc_allocWithZone(NSAttributeDescription) init];
  v53 = sub_1004A5734();
  [v52 setName:v53];

  [v52 setOptional:0];
  (v308)(v35, v51, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v54 = v311;
  v305 = v1 + 1;
  if (v311)
  {
    v55 = sub_10002587C(v310, v311);
    v56 = *(v54 - 8);
    v57 = *(v56 + 64);
    __chkstk_darwin(v55);
    v59 = &v287 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v59);
    v60 = sub_1004A6D14();
    (*(v56 + 8))(v59, v54);
    sub_1000197E0(v310);
  }

  else
  {
    v60 = 0;
  }

  [v52 setDefaultValue:v60];
  swift_unknownObjectRelease();
  [v52 setAllowsExternalBinaryDataStorage:0];

  [v52 setTransient:0];
  v307(v51, v0);
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  *(v306 + 40) = v52;
  v61 = v290;
  sub_1004A61B4();
  *(&v313 + 1) = &type metadata for Bool;
  LOBYTE(v312) = 0;
  v62 = [objc_allocWithZone(NSAttributeDescription) init];
  v63 = sub_1004A5734();
  [v62 setName:v63];

  [v62 setOptional:0];
  (v308)(v35, v61, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v64 = v311;
  if (v311)
  {
    v65 = sub_10002587C(v310, v311);
    v66 = *(v64 - 8);
    v67 = *(v66 + 64);
    __chkstk_darwin(v65);
    v69 = &v287 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v66 + 16))(v69);
    v70 = sub_1004A6D14();
    (*(v66 + 8))(v69, v64);
    sub_1000197E0(v310);
  }

  else
  {
    v70 = 0;
  }

  [v62 setDefaultValue:v70];
  swift_unknownObjectRelease();
  [v62 setAllowsExternalBinaryDataStorage:0];

  [v62 setTransient:0];
  v307(v290, v0);
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  *(v306 + 48) = v62;
  v71 = v291;
  sub_1004A61C4();
  v312 = 0u;
  v313 = 0u;
  v72 = [objc_allocWithZone(NSAttributeDescription) init];
  v73 = sub_1004A5734();
  [v72 setName:v73];

  [v72 setOptional:1];
  (v308)(v35, v71, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v74 = v311;
  if (v311)
  {
    v75 = sub_10002587C(v310, v311);
    v76 = *(v74 - 8);
    v77 = *(v76 + 64);
    __chkstk_darwin(v75);
    v79 = &v287 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v76 + 16))(v79);
    v80 = sub_1004A6D14();
    (*(v76 + 8))(v79, v74);
    sub_1000197E0(v310);
  }

  else
  {
    v80 = 0;
  }

  [v72 setDefaultValue:v80];
  swift_unknownObjectRelease();
  [v72 setAllowsExternalBinaryDataStorage:0];

  [v72 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v291, v0);
  *(v306 + 56) = v72;
  v81 = v292;
  sub_1004A61C4();
  v312 = 0u;
  v313 = 0u;
  v82 = [objc_allocWithZone(NSAttributeDescription) init];
  v83 = sub_1004A5734();
  [v82 setName:v83];

  [v82 setOptional:1];
  (v308)(v35, v81, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v84 = v311;
  if (v311)
  {
    v85 = sub_10002587C(v310, v311);
    v86 = *(v84 - 8);
    v87 = *(v86 + 64);
    __chkstk_darwin(v85);
    v89 = &v287 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v86 + 16))(v89);
    v90 = sub_1004A6D14();
    (*(v86 + 8))(v89, v84);
    sub_1000197E0(v310);
  }

  else
  {
    v90 = 0;
  }

  [v82 setDefaultValue:v90];
  swift_unknownObjectRelease();
  [v82 setAllowsExternalBinaryDataStorage:0];

  [v82 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v292, v0);
  *(v306 + 64) = v82;
  v91 = v293;
  sub_1004A61C4();
  v312 = 0u;
  v313 = 0u;
  v92 = [objc_allocWithZone(NSAttributeDescription) init];
  v93 = sub_1004A5734();
  [v92 setName:v93];

  [v92 setOptional:1];
  (v308)(v35, v91, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v94 = v311;
  if (v311)
  {
    v95 = sub_10002587C(v310, v311);
    v96 = *(v94 - 8);
    v97 = *(v96 + 64);
    __chkstk_darwin(v95);
    v99 = &v287 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v96 + 16))(v99);
    v100 = sub_1004A6D14();
    (*(v96 + 8))(v99, v94);
    sub_1000197E0(v310);
  }

  else
  {
    v100 = 0;
  }

  [v92 setDefaultValue:v100];
  swift_unknownObjectRelease();
  [v92 setAllowsExternalBinaryDataStorage:0];

  [v92 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v293, v0);
  *(v306 + 72) = v92;
  v101 = v294;
  sub_1004A61C4();
  v312 = 0u;
  v313 = 0u;
  v102 = [objc_allocWithZone(NSAttributeDescription) init];
  v103 = sub_1004A5734();
  [v102 setName:v103];

  [v102 setOptional:1];
  (v308)(v35, v101, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v104 = v311;
  if (v311)
  {
    v105 = sub_10002587C(v310, v311);
    v106 = *(v104 - 8);
    v107 = *(v106 + 64);
    __chkstk_darwin(v105);
    v109 = &v287 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v106 + 16))(v109);
    v110 = sub_1004A6D14();
    (*(v106 + 8))(v109, v104);
    sub_1000197E0(v310);
  }

  else
  {
    v110 = 0;
  }

  [v102 setDefaultValue:v110];
  swift_unknownObjectRelease();
  [v102 setAllowsExternalBinaryDataStorage:0];

  [v102 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v294, v0);
  *(v306 + 80) = v102;
  v111 = v295;
  sub_1004A6194();
  v312 = 0u;
  v313 = 0u;
  v112 = [objc_allocWithZone(NSAttributeDescription) init];
  v113 = sub_1004A5734();
  [v112 setName:v113];

  [v112 setOptional:1];
  (v308)(v35, v111, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v114 = v311;
  if (v311)
  {
    v115 = sub_10002587C(v310, v311);
    v116 = *(v114 - 8);
    v117 = *(v116 + 64);
    __chkstk_darwin(v115);
    v119 = &v287 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v116 + 16))(v119);
    v120 = sub_1004A6D14();
    (*(v116 + 8))(v119, v114);
    sub_1000197E0(v310);
  }

  else
  {
    v120 = 0;
  }

  [v112 setDefaultValue:v120];
  swift_unknownObjectRelease();
  [v112 setAllowsExternalBinaryDataStorage:0];

  [v112 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v295, v0);
  *(v306 + 88) = v112;
  v121 = v296;
  sub_1004A61D4();
  v312 = 0u;
  v313 = 0u;
  v122 = [objc_allocWithZone(NSAttributeDescription) init];
  v123 = sub_1004A5734();
  [v122 setName:v123];

  [v122 setOptional:1];
  (v308)(v35, v121, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v124 = v311;
  if (v311)
  {
    v125 = sub_10002587C(v310, v311);
    v126 = *(v124 - 8);
    v127 = *(v126 + 64);
    __chkstk_darwin(v125);
    v129 = &v287 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v126 + 16))(v129);
    v130 = sub_1004A6D14();
    (*(v126 + 8))(v129, v124);
    sub_1000197E0(v310);
  }

  else
  {
    v130 = 0;
  }

  [v122 setDefaultValue:v130];
  swift_unknownObjectRelease();
  [v122 setAllowsExternalBinaryDataStorage:0];

  [v122 setTransient:1];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v296, v0);
  *(v306 + 96) = v122;
  v131 = v297;
  sub_1004A61C4();
  v312 = 0u;
  v313 = 0u;
  v132 = [objc_allocWithZone(NSAttributeDescription) init];
  v133 = sub_1004A5734();
  [v132 setName:v133];

  [v132 setOptional:1];
  (v308)(v35, v131, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v134 = v311;
  if (v311)
  {
    v135 = sub_10002587C(v310, v311);
    v136 = *(v134 - 8);
    v137 = *(v136 + 64);
    __chkstk_darwin(v135);
    v139 = &v287 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v136 + 16))(v139);
    v140 = sub_1004A6D14();
    (*(v136 + 8))(v139, v134);
    sub_1000197E0(v310);
  }

  else
  {
    v140 = 0;
  }

  [v132 setDefaultValue:v140];
  swift_unknownObjectRelease();
  [v132 setAllowsExternalBinaryDataStorage:0];

  [v132 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v297, v0);
  v141 = v306;
  *(v306 + 104) = v132;
  v142 = sub_10033B114(0x6567617373656DLL, 0xE700000000000000, v141, _s7MessageCMa);
  sub_10000C9C0(&qword_1005D9EF0, &qword_1004F70F0);
  v143 = swift_allocObject();
  v306 = xmmword_1004CEAA0;
  *(v143 + 16) = xmmword_1004CEAA0;
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v144 = swift_allocObject();
  *(v144 + 16) = v306;
  *(v144 + 56) = &type metadata for String;
  *(v144 + 32) = 0x6867696C746F7073;
  *(v144 + 40) = 0xEB00000000444974;
  *(v143 + 32) = v144;
  sub_10000C9C0(&qword_1005D9EF8, &qword_1004F70F8);
  isa = sub_1004A5C04().super.isa;

  [v142 setUniquenessConstraints:isa];

  v146 = swift_allocObject();
  v297 = xmmword_1004F7020;
  *(v146 + 16) = xmmword_1004F7020;
  v147 = v298;
  sub_1004A61A4();
  v312 = 0u;
  v313 = 0u;
  v148 = [objc_allocWithZone(NSAttributeDescription) init];
  v149 = sub_1004A5734();
  [v148 setName:v149];

  [v148 setOptional:1];
  (v308)(v35, v147, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v150 = v311;
  if (v311)
  {
    v151 = sub_10002587C(v310, v311);
    v152 = *(v150 - 8);
    v153 = *(v152 + 64);
    __chkstk_darwin(v151);
    v155 = &v287 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v152 + 16))(v155);
    v156 = sub_1004A6D14();
    (*(v152 + 8))(v155, v150);
    sub_1000197E0(v310);
  }

  else
  {
    v156 = 0;
  }

  [v148 setDefaultValue:v156];
  swift_unknownObjectRelease();
  [v148 setAllowsExternalBinaryDataStorage:0];

  [v148 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v298, v0);
  *(v146 + 32) = v148;
  v157 = v299;
  sub_1004A6184();
  v312 = 0u;
  v313 = 0u;
  v158 = [objc_allocWithZone(NSAttributeDescription) init];
  v159 = sub_1004A5734();
  [v158 setName:v159];

  [v158 setOptional:1];
  (v308)(v35, v157, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v160 = v311;
  if (v311)
  {
    v161 = sub_10002587C(v310, v311);
    v162 = *(v160 - 8);
    v163 = *(v162 + 64);
    __chkstk_darwin(v161);
    v165 = &v287 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v162 + 16))(v165);
    v166 = sub_1004A6D14();
    (*(v162 + 8))(v165, v160);
    sub_1000197E0(v310);
  }

  else
  {
    v166 = 0;
  }

  [v158 setDefaultValue:v166];
  swift_unknownObjectRelease();
  [v158 setAllowsExternalBinaryDataStorage:0];

  [v158 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v299, v0);
  *(v146 + 40) = v158;
  v167 = v300;
  sub_1004A6184();
  v312 = 0u;
  v313 = 0u;
  v168 = [objc_allocWithZone(NSAttributeDescription) init];
  v169 = sub_1004A5734();
  [v168 setName:v169];

  [v168 setOptional:1];
  (v308)(v35, v167, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v170 = v311;
  if (v311)
  {
    v171 = sub_10002587C(v310, v311);
    v172 = *(v170 - 8);
    v173 = *(v172 + 64);
    __chkstk_darwin(v171);
    v175 = &v287 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v172 + 16))(v175);
    v176 = sub_1004A6D14();
    (*(v172 + 8))(v175, v170);
    sub_1000197E0(v310);
  }

  else
  {
    v176 = 0;
  }

  [v168 setDefaultValue:v176];
  swift_unknownObjectRelease();
  [v168 setAllowsExternalBinaryDataStorage:0];

  [v168 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v300, v0);
  *(v146 + 48) = v168;
  *&v306 = sub_10033B114(0x786F626C69616DLL, 0xE700000000000000, v146, _s7MailboxCMa);
  v177 = swift_allocObject();
  *(v177 + 16) = v297;
  v178 = v301;
  sub_1004A61A4();
  v312 = 0u;
  v313 = 0u;
  v179 = [objc_allocWithZone(NSAttributeDescription) init];
  v180 = sub_1004A5734();
  [v179 setName:v180];

  [v179 setOptional:1];
  (v308)(v35, v178, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v181 = v311;
  if (v311)
  {
    v182 = sub_10002587C(v310, v311);
    v183 = *(v181 - 8);
    v184 = *(v183 + 64);
    __chkstk_darwin(v182);
    v186 = &v287 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v183 + 16))(v186);
    v187 = sub_1004A6D14();
    (*(v183 + 8))(v186, v181);
    sub_1000197E0(v310);
  }

  else
  {
    v187 = 0;
  }

  [v179 setDefaultValue:v187];
  swift_unknownObjectRelease();
  [v179 setAllowsExternalBinaryDataStorage:0];

  [v179 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v301, v0);
  *(v177 + 32) = v179;
  v188 = v302;
  sub_1004A6184();
  v312 = 0u;
  v313 = 0u;
  v189 = [objc_allocWithZone(NSAttributeDescription) init];
  v190 = sub_1004A5734();
  [v189 setName:v190];

  [v189 setOptional:1];
  (v308)(v35, v188, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v191 = v311;
  if (v311)
  {
    v192 = sub_10002587C(v310, v311);
    v193 = *(v191 - 8);
    v194 = *(v193 + 64);
    __chkstk_darwin(v192);
    v196 = &v287 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v193 + 16))(v196);
    v197 = sub_1004A6D14();
    (*(v193 + 8))(v196, v191);
    sub_1000197E0(v310);
  }

  else
  {
    v197 = 0;
  }

  v198 = v289;
  [v189 setDefaultValue:v197];
  swift_unknownObjectRelease();
  [v189 setAllowsExternalBinaryDataStorage:0];

  [v189 setTransient:0];
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  v307(v302, v0);
  *(v177 + 40) = v189;
  v199 = v303;
  sub_1004A61C4();
  *(&v313 + 1) = &type metadata for Int;
  *&v312 = 0;
  v200 = [objc_allocWithZone(NSAttributeDescription) init];
  v201 = sub_1004A5734();
  [v200 setName:v201];

  [v200 setOptional:0];
  (v308)(v35, v199, v0);
  sub_1004A61F4();
  sub_10034089C(&v312, v310);
  v202 = v311;
  if (v311)
  {
    v203 = sub_10002587C(v310, v311);
    v204 = *(v202 - 8);
    v205 = *(v204 + 64);
    __chkstk_darwin(v203);
    v207 = &v287 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v204 + 16))(v207);
    v208 = sub_1004A6D14();
    (*(v204 + 8))(v207, v202);
    sub_1000197E0(v310);
  }

  else
  {
    v208 = 0;
  }

  [v200 setDefaultValue:v208];
  swift_unknownObjectRelease();
  [v200 setAllowsExternalBinaryDataStorage:0];

  [v200 setTransient:0];
  v307(v303, v0);
  sub_100025F40(&v312, &qword_1005D4768, &unk_1004F5B20);
  *(v177 + 48) = v200;
  v209 = sub_10033B114(0x49746E756F636361, 0xEB000000006F666ELL, v177, _s11AccountInfoCMa);
  v210 = [objc_allocWithZone(NSRelationshipDescription) init];
  v211 = sub_1004A5734();
  [v210 setName:v211];

  v212 = v306;
  [v210 setDestinationEntity:v306];
  [v210 setDeleteRule:0];
  [v210 setMinCount:1];
  [v210 setMaxCount:1];
  v213 = [v142 properties];
  v214 = sub_10019A8E4(0, &qword_1005D9F00, NSPropertyDescription_ptr);
  v215 = sub_1004A5C14();

  *&v312 = v215;
  sub_1004A5BF4();
  if (*((v312 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v312 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v283 = *((v312 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1004A5C44();
  }

  sub_1004A5C84();
  v309 = v214;
  v216 = sub_1004A5C04().super.isa;

  [v142 setProperties:v216];

  v217 = v142;
  v218 = [v198 entities];
  sub_10019A8E4(0, &qword_1005D9EE8, NSEntityDescription_ptr);
  v219 = sub_1004A5C14();

  *&v312 = v219;
  sub_1004A5BF4();
  if (*((v312 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v312 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v284 = *((v312 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1004A5C44();
  }

  sub_1004A5C84();
  v220 = sub_1004A5C04().super.isa;

  [v198 setEntities:v220];

  v221 = v212;
  v222 = [v198 entities];
  v223 = sub_1004A5C14();

  *&v312 = v223;
  sub_1004A5BF4();
  if (*((v312 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v312 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v285 = *((v312 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1004A5C44();
  }

  v307 = v221;
  sub_1004A5C84();
  v224 = sub_1004A5C04().super.isa;

  [v198 setEntities:v224];

  v225 = v209;
  v226 = [v198 entities];
  v227 = sub_1004A5C14();

  *&v312 = v227;
  sub_1004A5BF4();
  if (*((v312 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v312 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v286 = *((v312 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1004A5C44();
  }

  *&v306 = v225;
  sub_1004A5C84();
  v228 = sub_1004A5C04().super.isa;

  [v198 setEntities:v228];

  v229 = sub_10033B308(v217);
  v230 = swift_allocObject();
  *(v230 + 16) = xmmword_1004E9040;
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_1004D3930;
  v232 = [v217 propertiesByName];
  v233 = sub_1004A5514();
  if (!*(v233 + 16) || (v234 = sub_100064090(0x6867696C746F7073, 0xEB00000000444974), (v235 & 1) == 0))
  {

    __break(1u);
LABEL_69:

    __break(1u);
LABEL_70:

    __break(1u);
LABEL_71:

    __break(1u);
    goto LABEL_72;
  }

  v236 = v234;

  v237 = *(*(v233 + 56) + 8 * v236);

  v238 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v237 collationType:0];

  *(v231 + 32) = v238;
  v239 = objc_allocWithZone(NSFetchIndexDescription);
  v240 = sub_1004A5734();
  sub_10019A8E4(0, &qword_1005D9F08, NSFetchIndexElementDescription_ptr);
  v241 = sub_1004A5C04().super.isa;

  v242 = [v239 initWithName:v240 elements:v241];

  *(v230 + 32) = v242;
  *(v230 + 40) = v229;
  v243 = swift_allocObject();
  v308 = xmmword_1004F6340;
  *(v243 + 16) = xmmword_1004F6340;
  v305 = v229;
  v244 = [v217 propertiesByName];
  v245 = sub_1004A5514();
  if (!*(v245 + 16))
  {
    goto LABEL_69;
  }

  v246 = sub_100064090(0x6E65477865646E69, 0xEF6E6F6974617265);
  if ((v247 & 1) == 0)
  {
    goto LABEL_69;
  }

  v248 = v246;

  v249 = *(*(v245 + 56) + 8 * v248);

  v250 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v249 collationType:0];

  *(v243 + 32) = v250;
  v251 = [v217 propertiesByName];
  v252 = sub_1004A5514();
  if (!*(v252 + 16))
  {
    goto LABEL_70;
  }

  v253 = sub_100064090(0x7475626972747461, 0xEF65676E61684365);
  if ((v254 & 1) == 0)
  {
    goto LABEL_70;
  }

  v255 = v253;

  v256 = *(*(v252 + 56) + 8 * v255);

  v257 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v256 collationType:0];

  *(v243 + 40) = v257;
  v258 = objc_allocWithZone(NSFetchIndexDescription);
  v259 = sub_1004A5734();
  v260 = sub_1004A5C04().super.isa;

  v261 = [v258 initWithName:v259 elements:v260];

  *(v230 + 48) = v261;
  v262 = swift_allocObject();
  *(v262 + 16) = v308;
  v263 = [v217 propertiesByName];
  v264 = sub_1004A5514();
  if (!*(v264 + 16))
  {
    goto LABEL_71;
  }

  v265 = sub_100064090(0x6E65477865646E69, 0xEF6E6F6974617265);
  if ((v266 & 1) == 0)
  {
    goto LABEL_71;
  }

  v267 = v265;

  v268 = *(*(v264 + 56) + 8 * v267);

  v269 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v268 collationType:0];

  *(v262 + 32) = v269;
  v270 = [v217 propertiesByName];
  v271 = sub_1004A5514();
  if (*(v271 + 16))
  {
    v272 = sub_100064090(0x65526F546465656ELL, 0xEE006574616E6F64);
    if (v273)
    {
      v274 = v272;

      v275 = *(*(v271 + 56) + 8 * v274);

      v276 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v275 collationType:0];

      *(v262 + 40) = v276;
      v277 = objc_allocWithZone(NSFetchIndexDescription);
      v278 = sub_1004A5734();
      v279 = sub_1004A5C04().super.isa;

      v280 = [v277 initWithName:v278 elements:v279];

      *(v230 + 56) = v280;
      sub_10019A8E4(0, &qword_1005D9F10, NSFetchIndexDescription_ptr);
      v281 = sub_1004A5C04().super.isa;

      [v217 setIndexes:v281];

      return v289;
    }
  }

LABEL_72:

  __break(1u);
  return result;
}

uint64_t sub_100340328(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [a1 persistentStoreCoordinator];
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v5 managedObjectModel];

  v8 = [v7 entitiesByName];
  sub_10019A8E4(0, &qword_1005D9EE8, NSEntityDescription_ptr);
  v9 = sub_1004A5514();
  v10 = (*(ObjectType + 80))();
  if (!*(v9 + 16))
  {
LABEL_6:

    goto LABEL_7;
  }

  v12 = sub_100064090(v10, v11);
  v14 = v13;

  if (v14)
  {

    v15 = *(*(v9 + 56) + 8 * v12);

    v16 = a1;
    v17 = [v2 initWithEntity:v15 insertIntoManagedObjectContext:v16];

    return v17;
  }

LABEL_7:

  __break(1u);
  return result;
}

uint64_t sub_1003404A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005D9EC0, &qword_1004F70D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100340730();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v35 = 0;
  v11 = sub_1004A6B54();
  if (v11)
  {
    v12 = BYTE4(v11) & 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v14 = sub_10033C960();
  v28 = v15;
  LODWORD(v29) = v13;
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v34 = 3;
  result = sub_1004A6B64();
  v25 = v16;
  v26 = v18;
  if (v18)
  {
    v27 = 0;
    v19 = v29;
LABEL_16:
    v20 = sub_10033C960();
    v22 = v21;
    v23 = *(v6 + 8);
    v29 = v20;
    v23(v9, v5);
    v33 = v12;
    v32 = v28 & 1;
    v31 = v26 & 1;
    v30 = v22 & 1;
    result = sub_1000197E0(a1);
    *a2 = v19;
    *(a2 + 4) = v33;
    *(a2 + 8) = v25;
    *(a2 + 16) = v32;
    *(a2 + 24) = v27;
    *(a2 + 32) = v31;
    *(a2 + 36) = v29;
    *(a2 + 44) = v30;
    return result;
  }

  v27 = result;
  v19 = v29;
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_100340730()
{
  result = qword_1005D9EC8;
  if (!qword_1005D9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D9EC8);
  }

  return result;
}

unint64_t sub_100340784()
{
  result = qword_1005D9ED0;
  if (!qword_1005D9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D9ED0);
  }

  return result;
}

unint64_t sub_1003407D8()
{
  result = qword_1005D9EE0;
  if (!qword_1005D9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D9EE0);
  }

  return result;
}

uint64_t sub_10034082C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034089C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D4768, &unk_1004F5B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034092C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 45))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10034094C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 45) = v3;
  return result;
}

unint64_t sub_10034099C()
{
  result = qword_1005D9F18;
  if (!qword_1005D9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D9F18);
  }

  return result;
}

unint64_t sub_1003409F4()
{
  result = qword_1005D9F20;
  if (!qword_1005D9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D9F20);
  }

  return result;
}

unint64_t sub_100340A4C()
{
  result = qword_1005D9F28;
  if (!qword_1005D9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D9F28);
  }

  return result;
}

uint64_t sub_100340AA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005B2D58;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

id sub_100340B10(uint64_t a1, void *a2)
{
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1004F6340;
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004CEAA0;
  v5 = [a2 objectID];
  *(v4 + 56) = sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
  *(v4 + 32) = v5;
  v6 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 predicateWithFormat:v6 argumentArray:isa];

  *(v3 + 32) = v9;
  v10 = sub_1004A5734();
  v11 = sub_1004A5C04().super.isa;
  v12 = [v8 predicateWithFormat:v10 argumentArray:v11];

  *(v3 + 40) = v12;
  sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
  v13 = sub_1004A5C04().super.isa;

  v14 = [objc_opt_self() andPredicateWithSubpredicates:v13];

  return v14;
}

id sub_100340D2C(void *a1, void *a2, uint64_t a3, char *a4)
{
  v41 = a3;
  v7 = sub_1004A4A74();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004D3930;
  v14 = objc_allocWithZone(NSSortDescriptor);
  v39 = a2;
  v15 = a1;
  v16 = sub_1004A5734();
  v17 = [v14 initWithKey:v16 ascending:0];

  *(v13 + 32) = v17;
  v18 = v8[2];
  v40 = a4;
  v18(v11, a4, v7);
  v19 = type metadata accessor for MessagesSource();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = 0;
  *(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = 0;
  v23 = (v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController);
  *v23 = 0;
  v23[1] = 0;
  *(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 0;
  v22[2] = v15;
  v18(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_logger, v11, v7);
  v22[3] = sub_1003414D0;
  v22[4] = v12;
  v22[5] = v41;
  v22[6] = v13;
  v24 = (v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange);
  *v24 = UInt32.init(_:);
  v24[1] = 0;
  v25 = type metadata accessor for MessagesSource.Observer();
  v26 = objc_allocWithZone(v25);
  swift_weakInit();
  swift_weakAssign();
  v42.receiver = v26;
  v42.super_class = v25;
  v27 = v15;

  v28 = objc_msgSendSuper2(&v42, "init");
  v29 = *(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer);
  *(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = v28;

  v30 = swift_allocObject();
  swift_weakInit();

  v31 = sub_100323BF4(sub_10032DC3C, v30);

  v32 = v8[1];
  v32(v11, v7);

  v33 = *(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken);
  *(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = v31;
  swift_unknownObjectRelease();
  if (*(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state))
  {

    v32(v40, v7);
  }

  else
  {
    *(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 1;
    v35 = *(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange);
    v34 = *(v22 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange + 8);

    v35(v36);

    v32(v40, v7);
  }

  return v39;
}

uint64_t sub_100341120(uint64_t a1)
{
  v2 = sub_1003344C4();
  v3 = *(a1 + 40);
  if (v3 < 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v4 = v2;
    v5 = [v4 count];
    v6 = _swiftEmptyArrayStorage;
    if (v3)
    {
      v7 = v5;
      v8 = 0;
      v35 = 0;
      v9 = &_swiftEmptyArrayStorage[4];
LABEL_4:
      v31 = v3;
      v32 = v9;
      v34 = v6;
      if (v8 < v7)
      {
        do
        {
          v10 = [v4 objectAtIndexedSubscript:v8];
          sub_1004A64E4();
          swift_unknownObjectRelease();
          _s7MessageCMa();
          if (!swift_dynamicCast())
          {
            goto LABEL_36;
          }

          ++v8;
          v11 = sub_1004A5734();
          [v39 willAccessValueForKey:v11];

          v12 = [v39 primitiveSpotlightID];
          if (v12)
          {
            v14 = v12;
            [v12 longLongValue];

            v15 = sub_1004A5734();
            [v39 didAccessValueForKey:v15];

            if (v35)
            {
              v6 = v34;
              v16 = v35 - 1;
              if (__OFSUB__(v35, 1))
              {
                goto LABEL_33;
              }
            }

            else
            {
              v17 = v34[3];
              if (((v17 >> 1) + 0x4000000000000000) < 0)
              {
                goto LABEL_35;
              }

              v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
              if (v18 <= 1)
              {
                v18 = 1;
              }

              v36 = v18;
              sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
              v30 = swift_allocObject();
              v19 = j__malloc_size(v30);
              v20 = v19 - 32;
              if (v19 < 32)
              {
                v20 = v19 - 25;
              }

              v21 = v20 >> 3;
              v30[2] = v36;
              v30[3] = (2 * (v20 >> 3)) | 1;
              v22 = (v30 + 4);
              v23 = v34[3] >> 1;
              if (v34[2])
              {
                v24 = v34 + 4;
                if (v30 != v34 || v22 >= v24 + 8 * v23)
                {
                  v37 = v20 >> 3;
                  v33 = v34[3] >> 1;
                  memmove(v30 + 4, v24, 8 * v23);
                  v23 = v33;
                  v22 = (v30 + 4);
                  v21 = v37;
                }

                v34[2] = 0;
              }

              v32 = (v22 + 8 * v23);
              v38 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

              v6 = v30;
              v16 = v38 - 1;
              if (__OFSUB__(v38, 1))
              {
                goto LABEL_33;
              }
            }

            v35 = v16;
            *v32 = v39;
            v9 = v32 + 1;
            --v3;
            if (v31 != 1)
            {
              goto LABEL_4;
            }

            goto LABEL_28;
          }

          v13 = sub_1004A5734();
          [v39 didAccessValueForKey:v13];
        }

        while (v7 != v8);
      }

      v6 = v34;
    }

    else
    {
      v35 = 0;
    }

LABEL_28:

    v25 = v6[3];
    if (v25 < 2)
    {
LABEL_31:

      return v6;
    }

    v26 = v25 >> 1;
    v27 = __OFSUB__(v26, v35);
    v28 = v26 - v35;
    if (!v27)
    {
      v6[2] = v28;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_100341498()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003414D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100341534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for PendingItem.Info(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1003415E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for PendingItem.Info(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10034167C()
{
  sub_100341720();
  if (v0 <= 0x3F)
  {
    sub_100341778();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PendingItem.Info(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100341720()
{
  if (!qword_1005D9F98)
  {
    type metadata accessor for PendingItem(255);
    v0 = type metadata accessor for UInt64Identifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D9F98);
    }
  }
}

void sub_100341778()
{
  if (!qword_1005D9FA0)
  {
    v0 = type metadata accessor for UInt64Identifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D9FA0);
    }
  }
}

uint64_t sub_1003417C8()
{
  result = type metadata accessor for PendingItem.AddMessage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100341864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IndexableMessageInfo(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1004A44E4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10034199C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for IndexableMessageInfo(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1004A44E4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100341AC0()
{
  result = type metadata accessor for IndexableMessageInfo(319);
  if (v1 <= 0x3F)
  {
    result = sub_1004A44E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100341B64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for PendingItem.AddMessage(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PendingItem.Info(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = type metadata accessor for EnqueueableItem(0);
  sub_100341F64(a1 + *(v18 + 20), v16);
  *a3 = a2;
  a3[1] = v17;
  v19 = type metadata accessor for PendingItem(0);
  sub_100341F64(v16, a3 + *(v19 + 24));
  sub_100341F64(v16, v14);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_100342028(v14, v9);
    v22 = *(v6 + 24);
    v23 = &v9[v22 + *(type metadata accessor for IndexableMessageInfo(0) + 60)];
    if (v23[16] == 255)
    {
      sub_100341FC8(a1, type metadata accessor for EnqueueableItem);
      sub_100341FC8(v16, type metadata accessor for PendingItem.Info);
      v26 = 0;
    }

    else
    {
      v25 = *v23;
      v24 = *(v23 + 1);
      if ((v24 & 0x1000000000000000) != 0)
      {
        v28 = *v23;
        v29 = *(v23 + 1);
        v26 = sub_1004A59E4();
        sub_100341FC8(a1, type metadata accessor for EnqueueableItem);
        sub_100341FC8(v16, type metadata accessor for PendingItem.Info);
      }

      else
      {
        sub_100341FC8(a1, type metadata accessor for EnqueueableItem);
        sub_100341FC8(v16, type metadata accessor for PendingItem.Info);
        if ((v24 & 0x2000000000000000) != 0)
        {
          v26 = HIBYTE(v24) & 0xF;
          goto LABEL_11;
        }

        v26 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v26 >= 1000001)
      {
        v21 = 822772;
LABEL_14:
        result = sub_100341FC8(v9, type metadata accessor for PendingItem.AddMessage);
        goto LABEL_15;
      }
    }

LABEL_11:
    v27 = 809;
    if (v26 > 809)
    {
      v27 = v26;
    }

    v21 = v27 + v26 + 2772;
    goto LABEL_14;
  }

  sub_100341FC8(a1, type metadata accessor for EnqueueableItem);
  result = sub_100341FC8(v16, type metadata accessor for PendingItem.Info);
  v21 = 1092;
LABEL_15:
  *(a3 + *(v19 + 28)) = v21;
  return result;
}

uint64_t sub_100341E68(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_10034208C(a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100341EAC()
{
  result = qword_1005DA120;
  if (!qword_1005DA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DA120);
  }

  return result;
}

uint64_t sub_100341F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem.Info(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100341FC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100342028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem.AddMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034208C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem.AddMessage(0);
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PendingItem.Info(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v61 - v13);
  v15 = sub_10000C9C0(&qword_1005DA128, &qword_1004F74D8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v61 - v17;
  v20 = &v61 + *(v19 + 56) - v17;
  sub_100341F64(a1, &v61 - v17);
  sub_100341F64(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100341F64(v18, v14);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100341FC8(v14, type metadata accessor for PendingItem.AddMessage);
      goto LABEL_34;
    }

    sub_100342028(v20, v7);
    v35 = *v14 == *v7 && v14[1] == v7[1];
    if (!v35 && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_72;
    }

    v36 = v14[2];
    v37 = v7[2];
    sub_1003428B4();
    if ((sub_1004A62F4() & 1) == 0 || (static IndexableMessageInfo.__derived_struct_equals(_:_:)((v14 + v4[6]), (v7 + v4[6])) & 1) == 0)
    {
      goto LABEL_72;
    }

    v38 = v4[7];
    v39 = v14 + v38;
    v40 = *(v14 + v38);
    v41 = *(v14 + v38 + 1);
    v42 = *(v14 + v38 + 2);
    v43 = *(v14 + v38 + 3);
    v44 = *(v14 + v38 + 4);
    v45 = *(v14 + v38 + 5);
    v46 = *(v14 + v38 + 6);
    v47 = v7 + v38;
    v48 = v40 & 1;
    v35 = (v41 & 1) == 0;
    v49 = 256;
    if (v35)
    {
      v50 = 0;
    }

    else
    {
      v50 = 256;
    }

    v35 = (v42 & 1) == 0;
    v51 = 0x10000;
    if (v35)
    {
      v52 = 0;
    }

    else
    {
      v52 = 0x10000;
    }

    v35 = (v43 & 1) == 0;
    v53 = 0x1000000;
    if (v35)
    {
      v54 = 0;
    }

    else
    {
      v54 = 0x1000000;
    }

    v35 = (v44 & 1) == 0;
    v55 = &_mh_execute_header;
    if (v35)
    {
      v56 = 0;
    }

    else
    {
      v56 = &_mh_execute_header;
    }

    v35 = (v45 & 1) == 0;
    v57 = 0x10000000000;
    if (v35)
    {
      v58 = 0;
    }

    else
    {
      v58 = 0x10000000000;
    }

    v59 = v48 | (v46 << 48) | v50 | v52 | v54 | v56 | v58 | (v39[7] << 56);
    if ((v47[1] & 1) == 0)
    {
      v49 = 0;
    }

    if ((v47[2] & 1) == 0)
    {
      v51 = 0;
    }

    if ((v47[3] & 1) == 0)
    {
      v53 = 0;
    }

    if ((v47[4] & 1) == 0)
    {
      v55 = 0;
    }

    if ((v47[5] & 1) == 0)
    {
      v57 = 0;
    }

    if ((static Flags.__derived_struct_equals(_:_:)(v59, v39[8] & 1, *v47 & 1 | (v47[6] << 48) | v49 | v51 | v53 | v55 | v57 | (v47[7] << 56), v47[8] & 1) & 1) == 0 || (v60 = v4[8], (sub_1004A44B4() & 1) == 0))
    {
LABEL_72:
      sub_100341FC8(v7, type metadata accessor for PendingItem.AddMessage);
      sub_100341FC8(v14, type metadata accessor for PendingItem.AddMessage);
      sub_100341FC8(v18, type metadata accessor for PendingItem.Info);
      goto LABEL_35;
    }

    sub_100341FC8(v7, type metadata accessor for PendingItem.AddMessage);
    sub_100341FC8(v14, type metadata accessor for PendingItem.AddMessage);
LABEL_33:
    sub_100341FC8(v18, type metadata accessor for PendingItem.Info);
    v33 = 1;
    return v33 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  sub_100341F64(v18, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_34:
    sub_10034284C(v18);
LABEL_35:
    v33 = 0;
    return v33 & 1;
  }

  v22 = 256;
  if (v11[1])
  {
    v23 = 256;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0x10000;
  if (v11[2])
  {
    v25 = 0x10000;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0x1000000;
  if (v11[3])
  {
    v27 = 0x1000000;
  }

  else
  {
    v27 = 0;
  }

  v28 = &_mh_execute_header;
  if (v11[4])
  {
    v29 = &_mh_execute_header;
  }

  else
  {
    v29 = 0;
  }

  v30 = 0x10000000000;
  if (v11[5])
  {
    v31 = 0x10000000000;
  }

  else
  {
    v31 = 0;
  }

  v32 = *v11 & 1 | (v11[6] << 48) | v23 | v25 | v27 | v29 | v31 | (v11[7] << 56);
  if ((v20[1] & 1) == 0)
  {
    v22 = 0;
  }

  if ((v20[2] & 1) == 0)
  {
    v24 = 0;
  }

  if ((v20[3] & 1) == 0)
  {
    v26 = 0;
  }

  if ((v20[4] & 1) == 0)
  {
    v28 = 0;
  }

  if ((v20[5] & 1) == 0)
  {
    v30 = 0;
  }

  v33 = static Flags.__derived_struct_equals(_:_:)(v32, v11[8] & 1, *v20 & 1 | (v20[6] << 48) | v22 | v24 | v26 | v28 | v30 | (v20[7] << 56), v20[8] & 1);
  sub_100341FC8(v18, type metadata accessor for PendingItem.Info);
  return v33 & 1;
}

uint64_t sub_1003425D0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];
  sub_1003428B4();
  if ((sub_1004A62F4() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for PendingItem.AddMessage(0);
  if ((static IndexableMessageInfo.__derived_struct_equals(_:_:)((a1 + v7[6]), (a2 + v7[6])) & 1) == 0)
  {
    return 0;
  }

  v8 = v7[7];
  v9 = a1 + v8;
  v10 = *(a1 + v8);
  v11 = *(a1 + v8 + 1);
  v12 = *(a1 + v8 + 2);
  v13 = *(a1 + v8 + 3);
  v14 = *(a1 + v8 + 4);
  v15 = *(a1 + v8 + 5);
  v16 = *(a1 + v8 + 6);
  v17 = a2 + v8;
  v18 = v10 & 1;
  v4 = (v11 & 1) == 0;
  v19 = 256;
  if (v4)
  {
    v20 = 0;
  }

  else
  {
    v20 = 256;
  }

  v4 = (v12 & 1) == 0;
  v21 = 0x10000;
  if (v4)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x10000;
  }

  v4 = (v13 & 1) == 0;
  v23 = 0x1000000;
  if (v4)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0x1000000;
  }

  v4 = (v14 & 1) == 0;
  v25 = &_mh_execute_header;
  if (v4)
  {
    v26 = 0;
  }

  else
  {
    v26 = &_mh_execute_header;
  }

  v4 = (v15 & 1) == 0;
  v27 = 0x10000000000;
  if (v4)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0x10000000000;
  }

  v29 = v18 | (v16 << 48) | v20 | v22 | v24 | v26 | v28 | (v9[7] << 56);
  if ((v17[1] & 1) == 0)
  {
    v19 = 0;
  }

  if ((v17[2] & 1) == 0)
  {
    v21 = 0;
  }

  if ((v17[3] & 1) == 0)
  {
    v23 = 0;
  }

  if ((v17[4] & 1) == 0)
  {
    v25 = 0;
  }

  if ((v17[5] & 1) == 0)
  {
    v27 = 0;
  }

  if ((static Flags.__derived_struct_equals(_:_:)(v29, v9[8] & 1, *v17 & 1 | (v17[6] << 48) | v19 | v21 | v23 | v25 | v27 | (v17[7] << 56), v17[8] & 1) & 1) == 0)
  {
    return 0;
  }

  v30 = v7[8];

  return sub_1004A44B4();
}

BOOL sub_1003427B8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1])
  {
    v4 = type metadata accessor for PendingItem(0);
    if (sub_10034208C(a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
    }
  }

  return 0;
}

uint64_t sub_10034284C(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DA128, &qword_1004F74D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003428B4()
{
  result = qword_1005D91C0;
  if (!qword_1005D91C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D91C0);
  }

  return result;
}

uint64_t sub_100342914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PendingItem.Info(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1003429A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PendingItem.Info(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_100342A1C()
{
  sub_100341778();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PendingItem.Info(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100342AA0(uint64_t a1)
{
  v51 = sub_1004A4374();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v51);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v43 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    v43 = v1;
    v59 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v8, 0);
    v56 = v59;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    v11 = sub_1004A6554();
    v12 = 0;
    v47 = (v3 + 8);
    v48 = a1;
    v44 = a1 + 64;
    v45 = v8;
    v46 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      v54 = v11 >> 6;
      v55 = 1 << v11;
      v15 = *(a1 + 36);
      v52 = v12;
      v53 = v15;
      v16 = qword_1005D8790;
      v17 = *(*(a1 + 48) + 8 * v11);
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = [qword_1005DA2A8 keyName];
      v19 = sub_1004A5764();
      v21 = v20;

      v57 = v19;
      v58 = v21;
      v60._countAndFlagsBits = 10045;
      v60._object = 0xE200000000000000;
      sub_1004A5994(v60);
      v22 = [v17 URIRepresentation];
      v23 = v49;
      sub_1004A4344();

      v24 = v50;
      sub_1004A4284();
      v25 = *v47;
      v26 = v51;
      (*v47)(v23, v51);
      v27 = sub_1004A42B4();
      v29 = v28;
      v25(v24, v26);
      v61._countAndFlagsBits = v27;
      v61._object = v29;
      sub_1004A5994(v61);

      v62._countAndFlagsBits = 39;
      v62._object = 0xE100000000000000;
      sub_1004A5994(v62);

      v30 = v57;
      v31 = v58;
      v32 = v56;
      v59 = v56;
      v34 = v56[2];
      v33 = v56[3];
      if (v34 >= v33 >> 1)
      {
        sub_100091A08((v33 > 1), v34 + 1, 1);
        v32 = v59;
      }

      v32[2] = v34 + 1;
      v35 = &v32[2 * v34];
      v35[4] = v30;
      v35[5] = v31;
      a1 = v48;
      v13 = 1 << *(v48 + 32);
      if (v11 >= v13)
      {
        goto LABEL_24;
      }

      v9 = v46;
      v36 = *(v46 + 8 * v54);
      if ((v36 & v55) == 0)
      {
        goto LABEL_25;
      }

      v56 = v32;
      if (v53 != *(v48 + 36))
      {
        goto LABEL_26;
      }

      v37 = v36 & (-2 << (v11 & 0x3F));
      if (v37)
      {
        v13 = __clz(__rbit64(v37)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v45;
      }

      else
      {
        v38 = v54 << 6;
        v39 = v54 + 1;
        v14 = v45;
        v40 = (v44 + 8 * v54);
        while (v39 < (v13 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_100020944(v11, v53, 0);
            v13 = __clz(__rbit64(v41)) + v38;
            goto LABEL_4;
          }
        }

        sub_100020944(v11, v53, 0);
      }

LABEL_4:
      v12 = v52 + 1;
      v11 = v13;
      if (v52 + 1 == v14)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_100342EA0()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005DA1C0);
  sub_1001C203C(v0, qword_1005DA1C0);
  return sub_1004A4A64();
}

uint64_t sub_100342F14()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100342F78(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  rawValue = a1;
  v10 = SearchQuery.id.getter(a1);
  v12 = v11;
  if (qword_1005D8788 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v13 = sub_1004A4A74();
    sub_1001C203C(v13, qword_1005DA1C0);

    v14 = sub_1004A4A54();
    v15 = sub_1004A6034();

    v38 = v6;
    v39 = rawValue;
    v36 = v10;
    v37 = v12;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      rawValue = swift_slowAlloc();
      aBlock[0] = rawValue;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2085;

      v6 = sub_10015BA6C(v10, v12, aBlock);

      *(v16 + 14) = v6;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{sensitive,mask.hash}s] Starting.", v16, 0x16u);
      sub_1000197E0(rawValue);
    }

    v17 = a3[2];
    v10 = _swiftEmptyArrayStorage;
    if (!v17)
    {
      break;
    }

    v33 = a5;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10034F6C0(0, v17, 0);
    v10 = aBlock[0];
    v32 = a3;
    a3 += 6;
    while (1)
    {
      a5 = *(a3 - 1);
      v18 = *a3;
      v19 = HIBYTE(*a3) & 0xFLL;
      if ((*a3 & 0x2000000000000000) == 0)
      {
        v19 = a5 & 0xFFFFFFFFFFFFLL;
      }

      if (!v19)
      {
        break;
      }

      v20 = *(a3 - 2);
      v21 = *a3;

      v23 = MailboxName.init(_:)(v22);
      rawValue = v23.bytes._rawValue;
      aBlock[0] = v10;
      v12 = v10[2];
      v24 = v10[3];
      v6 = v12 + 1;
      if (v12 >= v24 >> 1)
      {
        sub_10034F6C0((v24 > 1), v12 + 1, 1);
        v10 = aBlock[0];
      }

      v10[2] = v6;
      v25 = &v10[4 * v12];
      v25[2].bytes._rawValue = a5;
      *&v25[2]._hashValue._value = v18;
      v25[3] = v23;
      a3 += 3;
      if (!--v17)
      {
        a3 = v32;
        a5 = v33;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_13:
  v26 = swift_allocObject();
  v26[2] = v39;
  v26[3] = a2;
  v26[4] = a3;
  v26[5] = v38;
  v26[6] = v36;
  v26[7] = v37;
  v26[8] = a4;
  v26[9] = a5;
  v27 = *(v38 + 24);
  v28 = swift_allocObject();
  v28[2] = v38;
  v28[3] = v10;
  v28[4] = v36;
  v28[5] = v37;
  v28[6] = sub_100346F38;
  v28[7] = v26;
  aBlock[4] = sub_100346FBC;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B4CC0;
  v29 = _Block_copy(aBlock);
  swift_retain_n();

  v30 = v39;

  [v27 performBlock:v29];
  _Block_release(v29);
}

uint64_t sub_100343314(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  sub_10019A8E4(0, &qword_1005DA280, CSUserQuery_ptr);
  v15 = a2;

  v16 = sub_100343548(v15, a3, a1);
  if (a3 >= 541)
  {
    v17 = 541;
  }

  else
  {
    v17 = a3;
  }

  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  if (v16)
  {
    v19 = qword_1005D8788;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1004A4A74();
    v21 = sub_1001C203C(v20, qword_1005DA1C0);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_100347434;
    v23[4] = v18;
    v23[5] = v17;
    v23[6] = a6;
    v23[7] = a7;
    v23[8] = a1;

    sub_100345710(a6, a7, v21, sub_1003474C8, v23);
  }

  else
  {

    v24 = sub_1003512F8(_swiftEmptyArrayStorage);
    sub_1003436FC(v24, a6, a7, a8);
  }
}

id sub_100343548(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = [a1 userQueryString];
    v7 = objc_opt_self();
    v8 = a1;
    v9 = [v7 userQueryContextWithCurrentSuggestion:v8];
    isa = sub_1004A5C04().super.isa;
    [v9 setBundleIDs:isa];

    if (a2 >= 541)
    {
      a2 = 541;
    }

    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    [v9 setMaxResultCount:a2];

    v12 = [v11 initWithUserQueryString:v6 userQueryContext:v9];
    v13 = v12;
    sub_100342AA0(a3);

    v14 = sub_1004A5C04().super.isa;

    [v13 setFilterQueries:v14];
  }

  else
  {

    return 0;
  }

  return v13;
}

uint64_t sub_1003436FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_1005D8788 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v8 = sub_1004A4A74();
    sub_1001C203C(v8, qword_1005DA1C0);

    v9 = sub_1004A4A54();
    v10 = sub_1004A6034();

    if (!os_log_type_enabled(v9, v10))
    {
      break;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2085;
    v13 = sub_10015BA6C(a2, a3, &v25);
    v14 = 0;
    v15 = 0;
    *(v11 + 14) = v13;
    *(v11 + 22) = 2048;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(a1 + 64);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = v14;
LABEL_13:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = *(*(*(a1 + 56) + ((v20 << 9) | (8 * v21))) + 16);
      v23 = __OFADD__(v15, v22);
      v15 += v22;
      if (v23)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        *(v11 + 24) = v15;

        _os_log_impl(&_mh_execute_header, v9, v10, "[%{sensitive,mask.hash}s] Done. %ld UIDs.", v11, 0x20u);
        sub_1000197E0(v12);

        return a4(a1);
      }

      v18 = *(a1 + 64 + 8 * v20);
      ++v14;
      if (v18)
      {
        v14 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

LABEL_16:

  return a4(a1);
}

void sub_100343948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = *v3;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_82:
    v46 = v3[3];
    v47 = v11;
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = v3;
    v48[4] = v5;
    v48[5] = a3;
    v48[6] = v6;
    v58 = sub_100348594;
    v59 = v48;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_10019C778;
    v57 = &unk_1005B4F40;
    v49 = _Block_copy(&aBlock);

    [v46 performBlock:v49];
    _Block_release(v49);
    return;
  }

  v8 = 0;
  v9 = a1 + 32;
  v10 = &aBlock + 1;
  v11 = _swiftEmptyArrayStorage;
  while (v8 < v7)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_84;
    }

    v13 = (v9 + 16 * v8);
    v14 = *v13;
    v15 = v13[1];
    ++v8;
    v16 = HIBYTE(v15) & 0xF;
    v17 = v14 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      if ((v15 & 0x1000000000000000) != 0)
      {
        v51 = v11;
        v34 = v10;

        v21 = sub_10010C818(v14, v15, 10);
        v50 = v35;

        v10 = v34;
        v11 = v51;
        v5 = a2;
        if (v50)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }

      if ((v15 & 0x2000000000000000) != 0)
      {
        aBlock = v14;
        v55 = v15 & 0xFFFFFFFFFFFFFFLL;
        if (v14 == 43)
        {
          if (!v16)
          {
            goto LABEL_88;
          }

          if (--v16)
          {
            v21 = 0;
            v29 = v10;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v30);
              v21 = 10 * v21 + v30;
              if (v24)
              {
                break;
              }

              ++v29;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v14 == 45)
        {
          if (!v16)
          {
            goto LABEL_87;
          }

          if (--v16)
          {
            v21 = 0;
            v25 = v10;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = 10 * v21 >= v26;
              v21 = 10 * v21 - v26;
              if (!v24)
              {
                break;
              }

              ++v25;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v16)
        {
          v21 = 0;
          p_aBlock = &aBlock;
          while (1)
          {
            v33 = *p_aBlock - 48;
            if (v33 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v33);
            v21 = 10 * v21 + v33;
            if (v24)
            {
              break;
            }

            p_aBlock = (p_aBlock + 1);
            if (!--v16)
            {
              goto LABEL_68;
            }
          }
        }
      }

      else
      {
        if ((v14 & 0x1000000000000000) != 0)
        {
          v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v42 = v11;
          v43 = v5;
          v44 = v10;
          v19 = sub_1004A67E4();
          v10 = v44;
          v5 = v43;
          v11 = v42;
        }

        v20 = *v19;
        if (v20 == 43)
        {
          if (v17 < 1)
          {
            goto LABEL_85;
          }

          v16 = v17 - 1;
          if (v17 != 1)
          {
            v21 = 0;
            if (!v19)
            {
              goto LABEL_59;
            }

            v27 = v19 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v28);
              v21 = 10 * v21 + v28;
              if (v24)
              {
                break;
              }

              ++v27;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v20 == 45)
        {
          if (v17 < 1)
          {
            goto LABEL_86;
          }

          v16 = v17 - 1;
          if (v17 != 1)
          {
            v21 = 0;
            if (!v19)
            {
              goto LABEL_59;
            }

            v22 = v19 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = 10 * v21 >= v23;
              v21 = 10 * v21 - v23;
              if (!v24)
              {
                break;
              }

              ++v22;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v17)
        {
          v21 = 0;
          if (!v19)
          {
LABEL_59:
            LOBYTE(v16) = 0;
            goto LABEL_68;
          }

          while (1)
          {
            v31 = *v19 - 48;
            if (v31 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v31);
            v21 = 10 * v21 + v31;
            if (v24)
            {
              break;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_59;
            }
          }
        }
      }

      v21 = 0;
      LOBYTE(v16) = 1;
LABEL_68:
      v60 = v16;
      if (v16)
      {
        goto LABEL_69;
      }

LABEL_72:
      v36 = v10;
      v52 = v6;
      v37 = v3;
      v38 = v11;
      v39 = a3;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v11 = v38;
      }

      else
      {
        v11 = sub_10035DB38(0, *(v38 + 2) + 1, 1, v38);
      }

      v41 = *(v11 + 2);
      v40 = *(v11 + 3);
      if (v41 >= v40 >> 1)
      {
        v45 = sub_10035DB38((v40 > 1), v41 + 1, 1, v11);
        v10 = v36;
        v11 = v45;
      }

      else
      {
        v10 = v36;
      }

      *(v11 + 2) = v41 + 1;
      *&v11[8 * v41 + 32] = v21;
      a3 = v39;
      v3 = v37;
      v6 = v52;
      v5 = a2;
      if (v12 == v7)
      {
        goto LABEL_82;
      }
    }

    else
    {
LABEL_69:
      if (v12 == v7)
      {
        goto LABEL_82;
      }
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_100343E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a3;
  v114 = a4;
  v112 = a2;
  v4 = sub_1004A5244();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v117 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1004A5274();
  v116 = *(v118 - 8);
  v8 = *(v116 + 64);
  __chkstk_darwin(v118);
  v115 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v110 = *(v111 - 8);
  v10 = *(v110 + 64);
  __chkstk_darwin(v111);
  v108 = &v103 - v11;

  v13 = sub_10036808C(v12);

  sub_100347864(v13);
  v15 = v14;

  v16 = swift_allocObject();
  v17 = sub_100351418(_swiftEmptyArrayStorage);
  v120 = v16;
  *(v16 + 16) = v17;
  aBlock[0] = 0;
  v18 = v15;
  v19 = [v18 execute:aBlock];
  v119 = v5;
  if (!v19)
  {
    v88 = aBlock[0];
    sub_1004A4274();

    swift_willThrow();
    if (qword_1005D8788 != -1)
    {
      swift_once();
    }

    v89 = sub_1004A4A74();
    sub_1001C203C(v89, qword_1005DA1C0);
    swift_errorRetain();
    v90 = sub_1004A4A54();
    v91 = sub_1004A6014();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138412290;
      v94 = sub_1004A4264();
      *(v92 + 4) = v94;
      *v93 = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "Lookup request failed: %@", v92, 0xCu);
      sub_100025F40(v93, &qword_1005D51A0, &qword_1004D0940);
    }

    else
    {
    }

    goto LABEL_64;
  }

  v20 = v19;
  v21 = aBlock[0];

  v22 = [v20 count];
  if (v22 < 1)
  {
LABEL_58:

LABEL_64:
    v96 = v113;
    v95 = v114;
    v97 = *(v112 + 16);
    v98 = swift_allocObject();
    v98[2] = v96;
    v98[3] = v95;
    v98[4] = v120;
    aBlock[4] = sub_10034860C;
    aBlock[5] = v98;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B4FB8;
    v99 = _Block_copy(aBlock);

    v100 = v115;
    sub_1004A5254();
    v123 = _swiftEmptyArrayStorage;
    sub_10022AAC8();
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    sub_10022AB20();
    v101 = v117;
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v99);

    (*(v119 + 8))(v101, v4);
    (*(v116 + 8))(v100, v118);
  }

  v23 = v22;
  v24 = 0;
  v107 = v4;
  v121 = v22;
  v122 = v18;
  while (1)
  {
    v25 = [v20 objectAtIndexedSubscript:v24];
    sub_1004A64E4();
    swift_unknownObjectRelease();
    _s7MessageCMa();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v26 = v123;
    v27 = sub_1004A5734();
    [v26 willAccessValueForKey:v27];

    v28 = [v26 primitiveUid];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 longLongValue];

      v31 = (v30 - 0x100000000) < 0xFFFFFFFF00000001;
      if ((v30 - 0x100000000) >= 0xFFFFFFFF00000001)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
      v31 = 1;
    }

    v33 = sub_1004A5734();
    [v26 didAccessValueForKey:v33];

    if (v31 || (v34 = [v26 mailbox]) == 0)
    {
    }

    else
    {
      v35 = v34;
      v36 = [v34 objectID];
      v37 = [v36 entity];
      v38 = [v37 name];

      if (!v38)
      {
        goto LABEL_20;
      }

      v39 = sub_1004A5764();
      v41 = v40;

      if (v39 == 0x786F626C69616DLL && v41 == 0xE700000000000000)
      {

        v23 = v121;
      }

      else
      {
        v42 = sub_1004A6D34();

        v23 = v121;
        if ((v42 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if ([v36 isTemporaryID])
      {
LABEL_20:

        v18 = v122;
        goto LABEL_5;
      }

      v43 = [v26 mailbox];
      if (!v43)
      {

LABEL_42:
        v18 = v122;
        goto LABEL_5;
      }

      v44 = v43;
      v45 = sub_1004A5734();
      [v44 willAccessValueForKey:v45];

      v46 = [v44 primitiveName];
      v109 = v44;
      if (v46)
      {
        v47 = v46;
        v48 = sub_1004A6294();
        v49 = sub_1004A62A4();
        v50 = sub_1004A6294();
        v51 = sub_1004A62A4();
        if (v48 < v50 || v51 < v48)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
        }

        v52 = sub_1004A6294();
        v53 = sub_1004A62A4();
        if (v49 < v52 || v53 < v49)
        {
          goto LABEL_66;
        }

        v54 = __OFSUB__(v49, v48);
        v55 = v49 - v48;
        if (v54)
        {
          goto LABEL_67;
        }

        if (v55)
        {
          v56 = sub_10015BEAC(v55, 0);
          v57 = v47;
          v58 = sub_100359EE8(aBlock, (v56 + 4), v55);

          if (v58 != v55)
          {
            goto LABEL_69;
          }
        }

        else
        {

          v56 = _swiftEmptyArrayStorage;
        }

        v4 = v107;
        v60 = MailboxName.init(_:)(v56);
        rawValue = v60.bytes._rawValue;
        value = v60._hashValue._value;

        v23 = v121;
        v44 = v109;
      }

      else
      {
        rawValue = 0;
        value = 0;
      }

      v61 = sub_1004A5734();
      [v44 didAccessValueForKey:v61];

      if (!rawValue)
      {

        goto LABEL_42;
      }

      v62 = sub_1004A5734();
      [v44 willAccessValueForKey:v62];

      v63 = [v44 primitiveAccount];
      if (v63)
      {
        v104 = rawValue;
        v64 = v63;
        v65 = sub_1004A5764();
        v67 = v66;

        v68 = HIBYTE(v67) & 0xF;
        v105 = v65;
        if ((v67 & 0x2000000000000000) == 0)
        {
          v68 = v65 & 0xFFFFFFFFFFFFLL;
        }

        if (v68)
        {
          v69 = v67;
        }

        else
        {

          v105 = 0;
          v69 = 0;
        }

        rawValue = v104;
      }

      else
      {
        v105 = 0;
        v69 = 0;
      }

      v70 = sub_1004A5734();
      [v44 didAccessValueForKey:v70];

      if (v69)
      {
        LODWORD(v123) = v32;
        v71 = v120;
        v72 = rawValue;
        v73 = *(v120 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v73;
        *(v71 + 16) = 0x8000000000000000;
        v104 = v69;
        v75 = v72;
        v77 = sub_10035E2D4(v105, v69, v72, value);
        v78 = v73[2];
        v79 = (v76 & 1) == 0;
        v80 = v78 + v79;
        if (__OFADD__(v78, v79))
        {
          goto LABEL_68;
        }

        v81 = v76;
        if (v73[3] >= v80)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10036163C();
            v73 = aBlock[0];
          }
        }

        else
        {
          sub_10035FC68(v80, isUniquelyReferenced_nonNull_native);
          v73 = aBlock[0];
          v82 = sub_10035E2D4(v105, v104, v75, value);
          if ((v81 & 1) != (v83 & 1))
          {
            goto LABEL_71;
          }

          v77 = v82;
        }

        v84 = v120;
        v23 = v121;
        *(v120 + 16) = v73;

        v85 = *(v84 + 16);
        if (v81)
        {
        }

        else
        {
          sub_100016D2C();
          v86 = v108;
          sub_1004A7114();
          sub_100376E18(v77, v105, v104, v75, value, v86, v85);
        }

        v87 = v85[7] + *(v110 + 72) * v77;
        MessageIdentifierSet.insert(_:)(aBlock, &v123, v111);

        v4 = v107;
        v18 = v122;
      }

      else
      {

        v4 = v107;
        v23 = v121;
        v18 = v122;
      }
    }

LABEL_5:
    if (v23 == ++v24)
    {
      goto LABEL_58;
    }
  }

  sub_1004A69A4();
  __break(1u);
LABEL_71:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_100344AE4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  v7 = sub_100344B60(v6);

  a1(v7);
}

uint64_t sub_100344B60(uint64_t a1)
{
  v52 = sub_10000C9C0(&qword_1005DA290, &unk_1004F7540);
  v2 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v4 = &v48 - v3;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  v49 = a1 + 64;
  v50 = a1;
  v48 = v9;
  v51 = v4;
  if (v8)
  {
    while (1)
    {
      v57 = v11;
LABEL_9:
      v56 = v8;
      v13 = __clz(__rbit64(v8)) | (v10 << 6);
      v14 = *(a1 + 56);
      v15 = *(a1 + 48) + 32 * v13;
      v17 = *v15;
      v16 = *(v15 + 8);
      v18 = *(v15 + 16);
      LODWORD(v58) = *(v15 + 24);
      v19 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v20 = v14 + *(*(v19 - 8) + 72) * v13;
      v21 = v51;
      v22 = v18;
      sub_10000E268(v20, &v51[*(v52 + 48)], &unk_1005D91B0, &unk_1004CF400);
      *v21 = v17;
      *(v21 + 8) = v16;
      *(v21 + 16) = v18;
      *(v21 + 24) = v58;
      v23 = HIBYTE(v16) & 0xF;
      v58 = v17;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v23 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (!v23)
      {
        break;
      }

      v24 = v21;
      v25 = v16;
      v55 = v10;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v26 = MessageIdentifierSet.count.getter();
      if (v26)
      {
        v27 = v26;
        v54 = v22;
        v60 = _swiftEmptyArrayStorage;
        sub_10034F670(0, v26 & ~(v26 >> 63), 0);
        v28 = v60;
        v29 = MessageIdentifierSet.startIndex.getter(v19);
        if (v27 < 0)
        {
          goto LABEL_32;
        }

        v31 = v29;
        v32 = v30;
        v53 = v16;
        do
        {
          MessageIdentifierSet.subscript.getter(v32, v19, &v59);
          v33 = v59;
          v60 = v28;
          v34 = v24;
          v36 = v28[2];
          v35 = v28[3];
          if (v36 >= v35 >> 1)
          {
            v38 = v59;
            sub_10034F670((v35 > 1), v36 + 1, 1);
            v33 = v38;
            v28 = v60;
          }

          v28[2] = v36 + 1;
          *(v28 + v36 + 8) = v33;
          v31 = MessageIdentifierSet.index(_:offsetBy:)(v31, v32, 1);
          v32 = v37;
          --v27;
          v24 = v34;
        }

        while (v27);
        a1 = v50;
        v11 = v57;
        v25 = v53;
        v22 = v54;
      }

      else
      {
        v28 = _swiftEmptyArrayStorage;
        a1 = v50;
        v11 = v57;
      }

      sub_100025F40(v24, &qword_1005DA290, &unk_1004F7540);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v48;
      v40 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_10035DC3C(0, v11[2] + 1, 1, v11);
      }

      v42 = v11[2];
      v41 = v11[3];
      if (v42 >= v41 >> 1)
      {
        v11 = sub_10035DC3C((v41 > 1), v42 + 1, 1, v11);
      }

      v8 = (v40 - 1) & v40;
      v11[2] = v42 + 1;
      v43 = &v11[4 * v42];
      v44 = v58;
      v43[4] = v22;
      v43[5] = v44;
      v43[6] = v25;
      v43[7] = v28;
      v10 = v55;
      v5 = v49;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v10;
      if (v8)
      {
        v57 = v11;
        v10 = v12;
        goto LABEL_9;
      }
    }

    if (v11[2])
    {
      sub_10000C9C0(&qword_1005DA298, &qword_1004F7550);
      v45 = sub_1004A6A74();
    }

    else
    {
      v45 = _swiftEmptyDictionarySingleton;
    }

    v60 = v45;

    sub_100346FE4(v46, 1, &v60);

    return v60;
  }

  return result;
}

uint64_t sub_100344FA0(unint64_t a1, uint64_t a2, void (*a3)(void), char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    sub_1003512F8(_swiftEmptyArrayStorage);
    a3();
  }

  if (a5 < 0)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v8 = a1 >> 62;
  v54 = a6;
  if (a1 >> 62)
  {
LABEL_111:
    v48 = sub_1004A6A34();
    result = sub_1004A6A34();
    if (result < 0)
    {
LABEL_122:
      __break(1u);
      return result;
    }

    if (v48 >= a5)
    {
      v49 = a5;
    }

    else
    {
      v49 = v48;
    }

    if (v48 < 0)
    {
      v49 = a5;
    }

    if (a5)
    {
      v18 = v49;
    }

    else
    {
      v18 = 0;
    }

    result = sub_1004A6A34();
    if (result >= v18)
    {
      goto LABEL_11;
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a5)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (result < v18)
  {
    goto LABEL_121;
  }

LABEL_11:
  if ((a1 & 0xC000000000000001) != 0 && v18)
  {
    sub_10019A8E4(0, &qword_1005DA288, CSSearchableItem_ptr);

    v19 = 0;
    do
    {
      v20 = v19 + 1;
      sub_1004A6774(v19);
      v19 = v20;
    }

    while (v18 != v20);
  }

  else
  {
  }

  v50 = a7;
  v52 = a3;
  if (v8)
  {

    sub_1004A6A44();
    a7 = v21;
    a3 = v22;
    v18 = (v23 >> 1);
  }

  else
  {
    a3 = 0;
    a7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v51 = a8;
  v53 = a4;
  swift_unknownObjectRetain();
  if (a3 == v18)
  {
    v55 = _swiftEmptyArrayStorage;
    goto LABEL_103;
  }

  v55 = _swiftEmptyArrayStorage;
  a4 = &selRef_primitiveMessageSize;
  a8 = a3;
  do
  {
    a5 = a8;
    while (1)
    {
      while (1)
      {
        if (a5 < a3 || a8 >= v18)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v24 = *(a7 + 8 * a8++);
        v25 = v24;
        v8 = [v25 uniqueIdentifier];
        a1 = sub_1004A5764();
        v27 = v26;

        v28 = HIBYTE(v27) & 0xF;
        v29 = a1 & 0xFFFFFFFFFFFFLL;
        if ((v27 & 0x2000000000000000) != 0 ? HIBYTE(v27) & 0xF : a1 & 0xFFFFFFFFFFFFLL)
        {
          break;
        }

        if (a8 == v18)
        {
          goto LABEL_103;
        }
      }

      if ((v27 & 0x1000000000000000) == 0)
      {
        if ((v27 & 0x2000000000000000) != 0)
        {
          v56[0] = a1;
          v56[1] = v27 & 0xFFFFFFFFFFFFFFLL;
          if (a1 == 43)
          {
            if (!v28)
            {
              goto LABEL_109;
            }

            if (--v28)
            {
              a1 = 0;
              v40 = v56 + 1;
              while (1)
              {
                v41 = *v40 - 48;
                if (v41 > 9)
                {
                  break;
                }

                if (!is_mul_ok(a1, 0xAuLL))
                {
                  break;
                }

                v35 = __CFADD__(10 * a1, v41);
                a1 = 10 * a1 + v41;
                if (v35)
                {
                  break;
                }

                ++v40;
                if (!--v28)
                {
                  goto LABEL_90;
                }
              }
            }
          }

          else if (a1 == 45)
          {
            if (!v28)
            {
              goto LABEL_108;
            }

            if (--v28)
            {
              a1 = 0;
              v36 = v56 + 1;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                if (!is_mul_ok(a1, 0xAuLL))
                {
                  break;
                }

                v35 = 10 * a1 >= v37;
                a1 = 10 * a1 - v37;
                if (!v35)
                {
                  break;
                }

                ++v36;
                if (!--v28)
                {
                  goto LABEL_90;
                }
              }
            }
          }

          else if (v28)
          {
            a1 = 0;
            v43 = v56;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                break;
              }

              if (!is_mul_ok(a1, 0xAuLL))
              {
                break;
              }

              v35 = __CFADD__(10 * a1, v44);
              a1 = 10 * a1 + v44;
              if (v35)
              {
                break;
              }

              ++v43;
              if (!--v28)
              {
                goto LABEL_90;
              }
            }
          }
        }

        else
        {
          if ((a1 & 0x1000000000000000) != 0)
          {
            v31 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v31 = sub_1004A67E4();
          }

          v32 = *v31;
          if (v32 == 43)
          {
            if (v29 < 1)
            {
              goto LABEL_106;
            }

            v28 = v29 - 1;
            if (v29 != 1)
            {
              a1 = 0;
              if (!v31)
              {
                goto LABEL_81;
              }

              v38 = v31 + 1;
              while (1)
              {
                v39 = *v38 - 48;
                if (v39 > 9)
                {
                  break;
                }

                if (!is_mul_ok(a1, 0xAuLL))
                {
                  break;
                }

                v35 = __CFADD__(10 * a1, v39);
                a1 = 10 * a1 + v39;
                if (v35)
                {
                  break;
                }

                ++v38;
                if (!--v28)
                {
                  goto LABEL_90;
                }
              }
            }
          }

          else if (v32 == 45)
          {
            if (v29 < 1)
            {
              goto LABEL_107;
            }

            v28 = v29 - 1;
            if (v29 != 1)
            {
              a1 = 0;
              if (v31)
              {
                v33 = v31 + 1;
                while (1)
                {
                  v34 = *v33 - 48;
                  if (v34 > 9)
                  {
                    goto LABEL_89;
                  }

                  if (!is_mul_ok(a1, 0xAuLL))
                  {
                    goto LABEL_89;
                  }

                  v35 = 10 * a1 >= v34;
                  a1 = 10 * a1 - v34;
                  if (!v35)
                  {
                    goto LABEL_89;
                  }

                  ++v33;
                  if (!--v28)
                  {
                    goto LABEL_90;
                  }
                }
              }

LABEL_81:
              LOBYTE(v28) = 0;
LABEL_90:
              v57 = v28;
              v8 = v28;
              goto LABEL_91;
            }
          }

          else
          {
            if (!v29)
            {
              goto LABEL_89;
            }

            a1 = 0;
            if (!v31)
            {
              goto LABEL_81;
            }

            while (1)
            {
              v42 = *v31 - 48;
              if (v42 > 9)
              {
                break;
              }

              if (!is_mul_ok(a1, 0xAuLL))
              {
                break;
              }

              v35 = __CFADD__(10 * a1, v42);
              a1 = 10 * a1 + v42;
              if (v35)
              {
                break;
              }

              ++v31;
              if (!--v29)
              {
                goto LABEL_81;
              }
            }
          }
        }

LABEL_89:
        a1 = 0;
        LOBYTE(v28) = 1;
        goto LABEL_90;
      }

      v57 = 0;
      a1 = sub_10010C818(a1, v27, 10);
      v8 = v45;
LABEL_91:

      if ((v8 & 1) == 0)
      {
        break;
      }

      if (a8 == v18)
      {
        goto LABEL_103;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_10035DB38(0, *(v55 + 2) + 1, 1, v55);
    }

    v8 = *(v55 + 2);
    v46 = *(v55 + 3);
    if (v8 >= v46 >> 1)
    {
      v55 = sub_10035DB38((v46 > 1), v8 + 1, 1, v55);
    }

    *(v55 + 2) = v8 + 1;
    *&v55[8 * v8 + 32] = a1;
  }

  while (a8 != v18);
LABEL_103:
  swift_unknownObjectRelease_n();
  v47 = sub_10036808C(v55);

  sub_1003455AC(v54, v50, v47, v51, v52, v53);
}

void sub_1003455AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = v6[3];
  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a4;
  v16[6] = a3;
  v16[7] = a5;
  v16[8] = a6;
  v16[9] = v14;
  v18[4] = sub_100347850;
  v18[5] = v16;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10019C778;
  v18[3] = &unk_1005B4EA0;
  v17 = _Block_copy(v18);

  [v15 performBlock:v17];
  _Block_release(v17);
}