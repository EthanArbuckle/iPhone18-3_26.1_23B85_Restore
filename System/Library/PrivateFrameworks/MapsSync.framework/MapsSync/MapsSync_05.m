id sub_1B6304A64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistorySearchItem__locationDisplay);
  v8 = *(v3 + OBJC_IVAR___MSHistorySearchItem__locationDisplay + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6305D3C;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B6304C1C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B63046C0();
  a1[1] = v3;
  return sub_1B6304C64;
}

id sub_1B6304C94(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1B63BEBC4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1B6304D14()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSHistorySearchItem__query);
  v4 = *(v0 + OBJC_IVAR___MSHistorySearchItem__query + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6305D60;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_62_1;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B6305D60;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63050B8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1B63BEBD4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1B6305140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistorySearchItem__query);
  v8 = *(v3 + OBJC_IVAR___MSHistorySearchItem__query + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6305D88;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B63052F8(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistorySearchItem();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9 && (v11 = [v9 *a4]) != 0)
    {
      v12 = v11;
      v13 = sub_1B63BEBD4();
      v15 = v14;

      v16 = a3[1];
      *a3 = v13;
      a3[1] = v15;
    }

    else
    {
    }
  }

  else
  {
    v17 = v20[0];
    v18 = sub_1B63BE824();

    swift_willThrow();
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B630541C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedHistorySearchItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (a4)
    {
      v11 = sub_1B63BEBC4();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v9 *a5];
  }
}

uint64_t (*sub_1B63054E0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6304D14();
  a1[1] = v3;
  return sub_1B6305528;
}

uint64_t sub_1B6305540(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v7 = a1[1];

  a3(v5, v4);
}

void *sub_1B63055C0(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MSHistorySearchItem__geoMapRegion] = xmmword_1B63C3E40;
  v10 = &v9[OBJC_IVAR___MSHistorySearchItem__language];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR___MSHistorySearchItem__locationDisplay];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v9[OBJC_IVAR___MSHistorySearchItem__query];
  *v12 = 0;
  *(v12 + 1) = 0;
  return sub_1B62F0450(a1, a2, a3, a4);
}

uint64_t sub_1B6305704()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion), *(v0 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8));
  v1 = *(v0 + OBJC_IVAR___MSHistorySearchItem__language + 8);

  v2 = *(v0 + OBJC_IVAR___MSHistorySearchItem__locationDisplay + 8);

  v3 = *(v0 + OBJC_IVAR___MSHistorySearchItem__query + 8);
}

id HistorySearchItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistorySearchItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B630586C(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 position];
    *(v2 + OBJC_IVAR___MSHistoryItem__position) = v8;
    v9 = [v6 positionIndex];

    *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = v9;
  }

  type metadata accessor for MapsSyncManagedHistorySearchItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = a1;
    if (a2)
    {
      v13 = *(v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
      v14 = *(v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8);
      *(v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion) = xmmword_1B63C3E40;
      sub_1B6284F64(v13, v14);
    }

    else
    {
      v15 = [v11 geoMapRegion];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1B63BE924();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xF000000000000000;
      }

      v20 = (v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
      v21 = *(v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
      v22 = *(v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8);
      *v20 = v17;
      v20[1] = v19;
      sub_1B6284F64(v21, v22);
      if ((a2 & 1) == 0)
      {
        v36 = [v11 language];
        if (v36)
        {
          v37 = v36;
          v38 = sub_1B63BEBD4();
          v40 = v39;
        }

        else
        {
          v38 = 0;
          v40 = 0;
        }

        v41 = (v2 + OBJC_IVAR___MSHistorySearchItem__language);
        v42 = *(v2 + OBJC_IVAR___MSHistorySearchItem__language + 8);
        *v41 = v38;
        v41[1] = v40;

        v43 = [v11 locationDisplay];
        if (v43)
        {
          v44 = v43;
          v25 = sub_1B63BEBD4();
          v26 = v45;

LABEL_13:
          v27 = (v2 + OBJC_IVAR___MSHistorySearchItem__locationDisplay);
          v28 = *(v2 + OBJC_IVAR___MSHistorySearchItem__locationDisplay + 8);
          *v27 = v25;
          v27[1] = v26;

          if ((a2 & 1) != 0 || (v29 = [v11 query]) == 0)
          {

            v31 = 0;
            v33 = 0;
          }

          else
          {
            v30 = v29;
            v31 = sub_1B63BEBD4();
            v33 = v32;
          }

          v34 = (v2 + OBJC_IVAR___MSHistorySearchItem__query);
          v35 = *(v2 + OBJC_IVAR___MSHistorySearchItem__query + 8);
          *v34 = v31;
          v34[1] = v33;
        }

LABEL_12:
        v25 = 0;
        v26 = 0;
        goto LABEL_13;
      }
    }

    v23 = (v2 + OBJC_IVAR___MSHistorySearchItem__language);
    v24 = *(v2 + OBJC_IVAR___MSHistorySearchItem__language + 8);
    *v23 = 0;
    v23[1] = 0;

    goto LABEL_12;
  }

  return result;
}

id sub_1B6305AF8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
  v8 = *(v3 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
  v9 = *(v3 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B63060DC;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t keypath_set_72Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

id HistoryTransitItem.__allocating_init(muid:transitLineStorage:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  if (qword_1EDB0F2A0 != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  v9 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = v8;
    sub_1B629119C(a2, a3);
    v10 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
    v8 = v11;
  }

  v12 = [v8 initWithStore:v9 muid:a1 transitLineStorage:v10];
  sub_1B6284F64(a2, a3);

  return v12;
}

id HistoryTransitItem.init(muid:transitLineStorage:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    sub_1B629119C(a2, a3);
    v9 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
  }

  v10 = [v4 initWithStore:v8 muid:a1 transitLineStorage:v9];
  sub_1B6284F64(a2, a3);

  return v10;
}

char *HistoryTransitItem.init(store:muid:transitLineStorage:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = a1;
  v10 = [v5 initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  v14 = *&v10[v11];
  *&v13[OBJC_IVAR___MSHistoryTransitItem__muid] = a2;
  v15 = &v13[OBJC_IVAR___MSHistoryTransitItem__transitLineStorage];
  v16 = *&v13[OBJC_IVAR___MSHistoryTransitItem__transitLineStorage];
  v17 = *&v13[OBJC_IVAR___MSHistoryTransitItem__transitLineStorage + 8];
  *v15 = a3;
  v15[1] = a4;
  sub_1B6291034(a3, a4);
  sub_1B6284F64(v16, v17);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  sub_1B6282B88();
  v19 = *&v10[v11];
  sub_1B6291034(a3, a4);
  if (sub_1B63BEF24())
  {
    v29 = v9;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1B63075D4;
    *(v20 + 24) = v18;
    v28 = v20;
    v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v22 = *&v13[v21];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v21] = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1B629A8E8(0, v22[2] + 1, 1, v22);
      *&v13[v21] = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1B629A8E8((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[2 * v25];
    v26[4] = sub_1B62B8188;
    v26[5] = v28;
    *&v13[v21] = v22;
    swift_endAccess();

    v9 = v29;
  }

  else
  {
  }

  [*&v10[v11] unlock];
  sub_1B6284F64(a3, a4);

  return v13;
}

void sub_1B6306690(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  type metadata accessor for MapsSyncManagedHistoryTransitItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    [v9 setMuid_];
    if (a5 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B63BE904();
    }

    v12 = v11;
    [v9 setTransitLineStorage_];
  }
}

uint64_t sub_1B630690C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryTransitItem__muid);
  [v1 unlock];
  return v2;
}

id sub_1B63069B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryTransitItem__muid) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B63075E0;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6306B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryTransitItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setMuid_];
  }

  return result;
}

id (*sub_1B6306BB8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryTransitItem__muid);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6306C3C;
}

uint64_t sub_1B6306CE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage);
  v5 = *(v1 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage + 8);
  v23 = v4;
  v24 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    sub_1B6291034(v4, v5);
    v8 = 0;
    v9 = v4;
LABEL_17:
    sub_1B6284F64(v4, v5);
    sub_1B62B1F7C(v8);
    return v9;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v22[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = &v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B63075E8;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_15;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    v9 = v23;
    sub_1B6291034(v23, v24);
    v4 = v23;
    v5 = v24;
    v8 = sub_1B63075E8;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6307130(uint64_t a1, unint64_t a2)
{
  sub_1B6307750(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B6307178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1B6291034(*a1, v3);
  sub_1B6307750(v2, v3);

  return sub_1B6284F64(v2, v3);
}

void sub_1B63071D4(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryTransitItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 transitLineStorage]) != 0)
    {
      v10 = v9;
      v11 = sub_1B63BE924();
      v13 = v12;

      v14 = *a3;
      v15 = a3[1];
      *a3 = v11;
      a3[1] = v13;
      sub_1B6284F64(v14, v15);
    }

    else
    {
    }
  }

  else
  {
    v16 = v19[0];
    v17 = sub_1B63BE824();

    swift_willThrow();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B63072F8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryTransitItem();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1B63BE904();
    }

    v10 = v9;
    [v7 setTransitLineStorage_];
  }
}

uint64_t (*sub_1B63073B8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6306CE4();
  a1[1] = v3;
  return sub_1B6307400;
}

uint64_t sub_1B6307400(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1B6291034(v5, v3);
    sub_1B6307750(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B6307750(v5, v3);
  }

  return sub_1B6284F64(v2, v3);
}

void *sub_1B6307478(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MSHistoryTransitItem__muid] = 0;
  *&v9[OBJC_IVAR___MSHistoryTransitItem__transitLineStorage] = xmmword_1B63C3E40;
  return sub_1B62F0450(a1, a2, a3, a4);
}

id HistoryTransitItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryTransitItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B63075F4(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 position];
    *(v2 + OBJC_IVAR___MSHistoryItem__position) = v8;
    v9 = [v6 positionIndex];

    *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = v9;
  }

  type metadata accessor for MapsSyncManagedHistoryTransitItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = a1;
    v13 = [v11 muid];
    *(v2 + OBJC_IVAR___MSHistoryTransitItem__muid) = v13;
    if ((a2 & 1) != 0 || (v14 = [v11 transitLineStorage]) == 0)
    {

      v16 = 0;
      v18 = 0xF000000000000000;
    }

    else
    {
      v15 = v14;
      v16 = sub_1B63BE924();
      v18 = v17;
    }

    v19 = (v2 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage);
    v20 = *(v2 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage);
    v21 = *(v2 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage + 8);
    *v19 = v16;
    v19[1] = v18;

    return sub_1B6284F64(v20, v21);
  }

  return result;
}

id sub_1B6307750(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage);
  v8 = *(v3 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage);
  v9 = *(v3 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B6307AA0;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id IncidentReport.__allocating_init(countryCode:positionIndex:type:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = v4;
  v9 = objc_allocWithZone(v5);
  if (qword_1EDB0F2A0 != -1)
  {
    v15 = v9;
    swift_once();
    v9 = v15;
  }

  v10 = qword_1EDB0F2A8;
  if (a2)
  {
    v11 = v9;
    v12 = sub_1B63BEBC4();

    v9 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v9 initWithStore:v10 countryCode:v12 positionIndex:a3 type:a4];

  return v13;
}

id IncidentReport.init(countryCode:positionIndex:type:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (qword_1EDB0F2A0 != -1)
  {
    v11 = a2;
    swift_once();
    a2 = v11;
  }

  v7 = qword_1EDB0F2A8;
  if (a2)
  {
    v8 = sub_1B63BEBC4();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithStore:v7 countryCode:v8 positionIndex:a3 type:a4];

  return v9;
}

char *IncidentReport.__allocating_init(store:countryCode:positionIndex:type:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v6 = v5;
  v12 = [objc_allocWithZone(v6) initWithStore_];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v14 = *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v15 = v12;
  [v14 lock];
  v16 = *&v12[v13];
  v17 = &v15[OBJC_IVAR___MSIncidentReport__countryCode];
  v18 = *&v15[OBJC_IVAR___MSIncidentReport__countryCode + 8];
  *v17 = a2;
  *(v17 + 1) = a3;

  *&v15[OBJC_IVAR___MSIncidentReport__positionIndex] = a4;
  *&v15[OBJC_IVAR___MSIncidentReport__type] = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  sub_1B6282B88();
  v20 = *&v12[v13];
  if (sub_1B63BEF24())
  {
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1B63099F8;
    *(v21 + 24) = v19;
    v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v23 = *&v15[v22];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v22] = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1B629A8E8(0, v23[2] + 1, 1, v23);
      *&v15[v22] = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_1B629A8E8((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    v27 = &v23[2 * v26];
    v27[4] = sub_1B62B8188;
    v27[5] = v21;
    *&v15[v22] = v23;
    swift_endAccess();
  }

  [*&v12[v13] unlock];

  return v15;
}

char *IncidentReport.init(store:countryCode:positionIndex:type:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v6 = v5;
  v12 = [v6 initWithStore_];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v14 = *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v15 = v12;
  [v14 lock];
  v16 = *&v12[v13];
  v17 = &v15[OBJC_IVAR___MSIncidentReport__countryCode];
  v18 = *&v15[OBJC_IVAR___MSIncidentReport__countryCode + 8];
  *v17 = a2;
  *(v17 + 1) = a3;

  *&v15[OBJC_IVAR___MSIncidentReport__positionIndex] = a4;
  *&v15[OBJC_IVAR___MSIncidentReport__type] = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  sub_1B6282B88();
  v20 = *&v12[v13];
  if (sub_1B63BEF24())
  {
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1B6309E00;
    *(v21 + 24) = v19;
    v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v23 = *&v15[v22];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v22] = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1B629A8E8(0, v23[2] + 1, 1, v23);
      *&v15[v22] = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_1B629A8E8((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    v27 = &v23[2 * v26];
    v27[4] = sub_1B62B9488;
    v27[5] = v21;
    *&v15[v22] = v23;
    swift_endAccess();
  }

  [*&v12[v13] unlock];

  return v15;
}

void sub_1B6308178(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, __int16 a6)
{
  type metadata accessor for MapsSyncManagedIncidentReport();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = a2;
    if (a4)
    {
      a4 = sub_1B63BEBC4();
    }

    [v10 setCountryCode_];

    [v10 setPositionIndex_];
    [v10 setType_];
  }
}

uint64_t sub_1B6308408()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSIncidentReport__countryCode);
  v4 = *(v0 + OBJC_IVAR___MSIncidentReport__countryCode + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6309A08;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_16;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B6309A08;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6308814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSIncidentReport__countryCode);
  v8 = *(v3 + OBJC_IVAR___MSIncidentReport__countryCode + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6309A14;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B63089CC(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedIncidentReport();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 countryCode]) != 0)
    {
      v10 = v9;
      v11 = sub_1B63BEBD4();
      v13 = v12;

      v14 = a3[1];
      *a3 = v11;
      a3[1] = v13;
    }

    else
    {
    }
  }

  else
  {
    v15 = v18[0];
    v16 = sub_1B63BE824();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1B6308AF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedIncidentReport();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4)
    {
      v9 = sub_1B63BEBC4();
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [v7 setCountryCode_];
  }
}

id (*sub_1B6308BA8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6308408();
  a1[1] = v3;
  return sub_1B6308BF0;
}

id sub_1B6308BF0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B6308814(*a1, v2);
  }

  v5 = a1[1];

  sub_1B6308814(v3, v2);
}

uint64_t sub_1B6308CD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSIncidentReport__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B6308D80(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSIncidentReport__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6309A1C;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6308F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedIncidentReport();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B6308F80(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSIncidentReport__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6309004;
}

uint64_t sub_1B6309098()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSIncidentReport__type);
  [v1 unlock];
  return v2;
}

id sub_1B6309144(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSIncidentReport__type) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6309A24;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B63092E0(uint64_t a1, uint64_t a2, __int16 a3)
{
  type metadata accessor for MapsSyncManagedIncidentReport();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setType_];
  }

  return result;
}

id (*sub_1B6309344(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSIncidentReport__type);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B63093C8;
}

void *sub_1B630944C(void *a1, void *a2, int a3, int a4)
{
  v51 = a4;
  v52 = a3;
  v53 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v46 - v11;
  v12 = &v4[OBJC_IVAR___MSIncidentReport__countryCode];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR___MSIncidentReport__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSIncidentReport__type] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v15 = type metadata accessor for MapsSyncHashing();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v17 = sub_1B63BEA04();
  v18 = *(*(v17 - 8) + 56);
  v18(&v4[v16], 1, 1, v17);
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v20 = sub_1B63BE994();
  v21 = *(*(v20 - 8) + 56);
  v22 = &v4[v19];
  v23 = v52;
  v21(v22, 1, 1, v20);
  v21(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v20);
  v24 = v53;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v23;
  v25 = type metadata accessor for MapsSyncObject();
  v54.receiver = v4;
  v54.super_class = v25;
  v26 = a2;
  v27 = objc_msgSendSuper2(&v54, sel_init);
  v28 = v27;
  if (v24)
  {
    v29 = v27;
    v30 = [v24 objectID];
    v31 = *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v30;

    (*((*MEMORY[0x1E69E7D40] & *v29) + 0x218))(v24, v23 & 1, v51 & 1);
  }

  else
  {
    v32 = v27;
    v33 = v50;
    sub_1B63BE9F4();
    v18(v33, 0, 1, v17);
    v34 = v47;
    sub_1B62B2C0C(v33, v47);
    v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v34, &v32[v35]);
    swift_endAccess();
    v36 = v49;
    sub_1B62B2C0C(v33, v49);
    v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v38 = swift_allocObject();
    sub_1B62B2CEC(v36, v38 + v37);
    v39 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v40 = *&v32[v39];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v39] = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_1B629A8E8(0, v40[2] + 1, 1, v40);
      *&v32[v39] = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1B629A8E8((v42 > 1), v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    v44 = &v40[2 * v43];
    v44[4] = sub_1B62B2D5C;
    v44[5] = v38;
    *&v32[v39] = v40;
    swift_endAccess();

    sub_1B62B2DF0(v33);
  }

  return v28;
}

id IncidentReport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IncidentReport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for IncidentReport()
{
  result = qword_1EDB0EB08;
  if (!qword_1EDB0EB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B6309D0C(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedIncidentReport();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if ((a2 & 1) != 0 || (v8 = [v6 countryCode]) == 0)
    {
      v10 = 0;
      v12 = 0;
    }

    else
    {
      v9 = v8;
      v10 = sub_1B63BEBD4();
      v12 = v11;
    }

    v13 = (v2 + OBJC_IVAR___MSIncidentReport__countryCode);
    v14 = *(v2 + OBJC_IVAR___MSIncidentReport__countryCode + 8);
    *v13 = v10;
    v13[1] = v12;

    v15 = [v6 positionIndex];
    *(v2 + OBJC_IVAR___MSIncidentReport__positionIndex) = v15;
    v16 = [v6 type];

    *(v2 + OBJC_IVAR___MSIncidentReport__type) = v16;
  }
}

id RAPRecord.__allocating_init(clientRevision:contentData:countryCode:positionIndex:rapResponse:reportId:status:statusLastUpdatedDate:summary:type:)(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15)
{
  v16 = v15;
  v43 = a6;
  v42 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v38 - v24;
  v41 = objc_allocWithZone(v16);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v38 = 0;
    if (a5)
    {
LABEL_5:
      v26 = sub_1B63BEBC4();

      goto LABEL_8;
    }
  }

  else
  {
    sub_1B629119C(a2, a3);
    v38 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
    if (a5)
    {
      goto LABEL_5;
    }
  }

  v26 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v27 = 0;
    v44 = a7;
    v45 = a2;
    if (a10)
    {
LABEL_10:
      v28 = sub_1B63BEBC4();

      goto LABEL_13;
    }
  }

  else
  {
    sub_1B629119C(a7, a8);
    v27 = sub_1B63BE904();
    sub_1B6284F64(a7, a8);
    v44 = a7;
    v45 = a2;
    if (a10)
    {
      goto LABEL_10;
    }
  }

  v28 = 0;
LABEL_13:
  v39 = a12;
  sub_1B628C510(a12, v25, &unk_1EB943210, &unk_1B63C3F50);
  v29 = sub_1B63BE994();
  v30 = *(v29 - 8);
  v31 = 0;
  if ((*(v30 + 48))(v25, 1, v29) != 1)
  {
    v31 = sub_1B63BE954();
    (*(v30 + 8))(v25, v29);
  }

  if (a14)
  {
    v32 = sub_1B63BEBC4();
  }

  else
  {
    v32 = 0;
  }

  LOWORD(v37) = a15;
  LOWORD(v36) = a11;
  v33 = v38;
  v34 = [v41 initWithStore:v40 clientRevision:v42 contentData:v38 countryCode:v26 positionIndex:v43 rapResponse:v27 reportId:v28 status:v36 statusLastUpdatedDate:v31 summary:v32 type:v37];

  sub_1B6284F64(v44, a8);
  sub_1B6284F64(v45, a3);
  sub_1B6284EAC(v39, &unk_1EB943210, &unk_1B63C3F50);
  return v34;
}

id RAPRecord.init(clientRevision:contentData:countryCode:positionIndex:rapResponse:reportId:status:statusLastUpdatedDate:summary:type:)(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15)
{
  v19 = sub_1B6310620(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  sub_1B6284F64(a7, a8);
  sub_1B6284F64(a2, a3);
  return v19;
}

char *RAPRecord.__allocating_init(store:clientRevision:contentData:countryCode:positionIndex:rapResponse:reportId:status:statusLastUpdatedDate:summary:type:)(void *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int16 a16)
{
  v17 = v16;
  v99 = a8;
  v81 = a7;
  v19 = a5;
  v82 = a5;
  v20 = a2;
  v83 = a2;
  v87 = a16;
  v93 = a15;
  v97 = a13;
  v98 = a3;
  v91 = a4;
  v92 = a14;
  v94 = a12;
  v89 = a6;
  v90 = a11;
  v80 = a9;
  v79 = a10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v85 = *(v22 - 8);
  v23 = *(v85 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v84 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v78 - v25;
  v27 = objc_allocWithZone(v17);
  v88 = a1;
  v28 = [v27 initWithStore_];
  v29 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v30 = *&v28[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v95 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v31 = v28;
  v32 = v28;
  v96 = v28;
  v33 = v31;
  [v30 lock];
  v86 = *&v32[v29];
  *&v33[OBJC_IVAR___MSRAPRecord__clientRevision] = v20;
  v34 = &v33[OBJC_IVAR___MSRAPRecord__contentData];
  v35 = *&v33[OBJC_IVAR___MSRAPRecord__contentData];
  v36 = *&v33[OBJC_IVAR___MSRAPRecord__contentData + 8];
  v37 = v98;
  v38 = v91;
  *v34 = v98;
  *(v34 + 1) = v38;
  sub_1B6291034(v37, v38);
  sub_1B6284F64(v35, v36);
  v39 = &v33[OBJC_IVAR___MSRAPRecord__countryCode];
  v40 = *&v33[OBJC_IVAR___MSRAPRecord__countryCode + 8];
  v41 = v89;
  *v39 = v19;
  *(v39 + 1) = v41;

  *&v33[OBJC_IVAR___MSRAPRecord__positionIndex] = a7;
  v42 = &v33[OBJC_IVAR___MSRAPRecord__rapResponse];
  v43 = *&v33[OBJC_IVAR___MSRAPRecord__rapResponse];
  v44 = *&v33[OBJC_IVAR___MSRAPRecord__rapResponse + 8];
  v45 = v99;
  v46 = v80;
  *v42 = v99;
  *(v42 + 1) = v46;
  sub_1B6291034(v45, v46);
  sub_1B6284F64(v43, v44);
  v47 = &v33[OBJC_IVAR___MSRAPRecord__reportId];
  v48 = *&v33[OBJC_IVAR___MSRAPRecord__reportId + 8];
  v49 = v90;
  *v47 = a10;
  *(v47 + 1) = v49;

  *&v33[OBJC_IVAR___MSRAPRecord__status] = v94;
  v50 = v97;
  sub_1B628C510(v97, v26, &unk_1EB943210, &unk_1B63C3F50);
  v51 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  swift_beginAccess();
  sub_1B6282DFC(v26, &v33[v51], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v52 = &v33[OBJC_IVAR___MSRAPRecord__summary];
  v53 = *&v33[OBJC_IVAR___MSRAPRecord__summary + 8];
  v54 = v93;
  *v52 = v92;
  *(v52 + 1) = v54;

  LOWORD(v19) = v87;
  *&v33[OBJC_IVAR___MSRAPRecord__type] = v87;
  v55 = v50;
  v56 = v84;
  sub_1B628C510(v55, v84, &unk_1EB943210, &unk_1B63C3F50);
  v57 = (*(v85 + 80) + 98) & ~*(v85 + 80);
  v58 = (v23 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = v83;
  v60 = v98;
  v61 = v99;
  v62 = v91;
  *(v59 + 24) = v98;
  *(v59 + 32) = v62;
  v63 = v89;
  *(v59 + 40) = v82;
  *(v59 + 48) = v63;
  *(v59 + 56) = v81;
  *(v59 + 64) = v61;
  v64 = v79;
  *(v59 + 72) = v46;
  *(v59 + 80) = v64;
  *(v59 + 88) = v90;
  *(v59 + 96) = v94;
  v65 = v56;
  v66 = v60;
  sub_1B628A128(v65, v59 + v57, &unk_1EB943210, &unk_1B63C3F50);
  v67 = (v59 + v58);
  v68 = v93;
  *v67 = v92;
  v67[1] = v68;
  *(v59 + ((v58 + 17) & 0xFFFFFFFFFFFFFFF8)) = v19;
  sub_1B6282B88();
  v69 = *&v96[v95];
  sub_1B6291034(v66, v62);
  sub_1B6291034(v61, v46);
  if (sub_1B63BEF24())
  {
    v70 = swift_allocObject();
    *(v70 + 16) = sub_1B6310918;
    *(v70 + 24) = v59;
    v71 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v72 = *&v33[v71];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[v71] = v72;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v72 = sub_1B629A8E8(0, v72[2] + 1, 1, v72);
      *&v33[v71] = v72;
    }

    v75 = v72[2];
    v74 = v72[3];
    if (v75 >= v74 >> 1)
    {
      v72 = sub_1B629A8E8((v74 > 1), v75 + 1, 1, v72);
    }

    v72[2] = v75 + 1;
    v76 = &v72[2 * v75];
    v76[4] = sub_1B62B8188;
    v76[5] = v70;
    *&v33[v71] = v72;
    swift_endAccess();
  }

  [*&v96[v95] unlock];

  sub_1B6284F64(v99, v46);
  sub_1B6284F64(v98, v62);
  sub_1B6284EAC(v97, &unk_1EB943210, &unk_1B63C3F50);

  return v33;
}

char *RAPRecord.init(store:clientRevision:contentData:countryCode:positionIndex:rapResponse:reportId:status:statusLastUpdatedDate:summary:type:)(void *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int16 a16)
{
  v17 = v16;
  v98 = a8;
  v80 = a7;
  v89 = a6;
  v90 = a4;
  v19 = a5;
  v81 = a5;
  v20 = a2;
  v82 = a2;
  v86 = a16;
  v96 = a13;
  v97 = a3;
  v91 = a14;
  v92 = a15;
  v93 = a12;
  v88 = a11;
  v79 = a9;
  v78 = a10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v84 = *(v22 - 8);
  v23 = *(v84 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v83 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v77 - v25;
  v87 = a1;
  v27 = [v17 initWithStore_];
  v28 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v29 = *&v27[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v94 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v30 = v27;
  v31 = v27;
  v95 = v27;
  v32 = v30;
  [v29 lock];
  v85 = *&v31[v28];
  *&v32[OBJC_IVAR___MSRAPRecord__clientRevision] = v20;
  v33 = &v32[OBJC_IVAR___MSRAPRecord__contentData];
  v34 = *&v32[OBJC_IVAR___MSRAPRecord__contentData];
  v35 = *&v32[OBJC_IVAR___MSRAPRecord__contentData + 8];
  v36 = v97;
  v37 = v90;
  *v33 = v97;
  *(v33 + 1) = v37;
  sub_1B6291034(v36, v37);
  sub_1B6284F64(v34, v35);
  v38 = &v32[OBJC_IVAR___MSRAPRecord__countryCode];
  v39 = *&v32[OBJC_IVAR___MSRAPRecord__countryCode + 8];
  v40 = v89;
  *v38 = v19;
  *(v38 + 1) = v40;

  *&v32[OBJC_IVAR___MSRAPRecord__positionIndex] = a7;
  v41 = &v32[OBJC_IVAR___MSRAPRecord__rapResponse];
  v42 = *&v32[OBJC_IVAR___MSRAPRecord__rapResponse];
  v43 = *&v32[OBJC_IVAR___MSRAPRecord__rapResponse + 8];
  v44 = v98;
  v45 = v79;
  *v41 = v98;
  *(v41 + 1) = v45;
  sub_1B6291034(v44, v45);
  sub_1B6284F64(v42, v43);
  v46 = &v32[OBJC_IVAR___MSRAPRecord__reportId];
  v47 = *&v32[OBJC_IVAR___MSRAPRecord__reportId + 8];
  v48 = v88;
  *v46 = a10;
  *(v46 + 1) = v48;

  *&v32[OBJC_IVAR___MSRAPRecord__status] = v93;
  v49 = v96;
  sub_1B628C510(v96, v26, &unk_1EB943210, &unk_1B63C3F50);
  v50 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  swift_beginAccess();
  sub_1B6282DFC(v26, &v32[v50], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v51 = &v32[OBJC_IVAR___MSRAPRecord__summary];
  v52 = *&v32[OBJC_IVAR___MSRAPRecord__summary + 8];
  v53 = v92;
  *v51 = v91;
  *(v51 + 1) = v53;

  LOWORD(v19) = v86;
  *&v32[OBJC_IVAR___MSRAPRecord__type] = v86;
  v54 = v49;
  v55 = v83;
  sub_1B628C510(v54, v83, &unk_1EB943210, &unk_1B63C3F50);
  v56 = (*(v84 + 80) + 98) & ~*(v84 + 80);
  v57 = (v23 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  *(v58 + 16) = v82;
  v59 = v97;
  v60 = v98;
  v61 = v90;
  *(v58 + 24) = v97;
  *(v58 + 32) = v61;
  v62 = v89;
  *(v58 + 40) = v81;
  *(v58 + 48) = v62;
  *(v58 + 56) = v80;
  *(v58 + 64) = v60;
  v63 = v78;
  *(v58 + 72) = v45;
  *(v58 + 80) = v63;
  *(v58 + 88) = v88;
  *(v58 + 96) = v93;
  v64 = v55;
  v65 = v59;
  sub_1B628A128(v64, v58 + v56, &unk_1EB943210, &unk_1B63C3F50);
  v66 = (v58 + v57);
  v67 = v92;
  *v66 = v91;
  v66[1] = v67;
  *(v58 + ((v57 + 17) & 0xFFFFFFFFFFFFFFF8)) = v19;
  sub_1B6282B88();
  v68 = *&v95[v94];
  sub_1B6291034(v65, v61);
  sub_1B6291034(v60, v45);
  if (sub_1B63BEF24())
  {
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1B631196C;
    *(v69 + 24) = v58;
    v70 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v71 = *&v32[v70];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v70] = v71;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v71 = sub_1B629A8E8(0, v71[2] + 1, 1, v71);
      *&v32[v70] = v71;
    }

    v74 = v71[2];
    v73 = v71[3];
    if (v74 >= v73 >> 1)
    {
      v71 = sub_1B629A8E8((v73 > 1), v74 + 1, 1, v71);
    }

    v71[2] = v74 + 1;
    v75 = &v71[2 * v74];
    v75[4] = sub_1B62B9488;
    v75[5] = v69;
    *&v32[v70] = v71;
    swift_endAccess();
  }

  [*&v95[v94] unlock];

  sub_1B6284F64(v98, v45);
  sub_1B6284F64(v97, v61);
  sub_1B6284EAC(v96, &unk_1EB943210, &unk_1B63C3F50);

  return v32;
}

void sub_1B630AF48(uint64_t a1, void *a2, __int16 a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, void *a12, __int16 a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v37 - v24;
  type metadata accessor for MapsSyncManagedRAPRecord();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v28 = a2;
    [v27 setClientRevision_];
    if (a5 >> 60 == 15)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_1B63BE904();
    }

    [v27 setContentData_];

    if (a7)
    {
      v30 = sub_1B63BEBC4();
    }

    else
    {
      v30 = 0;
    }

    v31 = a12;
    [v27 setCountryCode_];

    [v27 setPositionIndex_];
    if (a10 >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_1B63BE904();
    }

    [v27 setRapResponse_];

    if (a12)
    {
      v31 = sub_1B63BEBC4();
    }

    [v27 setReportId_];

    [v27 setStatus_];
    sub_1B628C510(a14, v25, &unk_1EB943210, &unk_1B63C3F50);
    v33 = sub_1B63BE994();
    v34 = *(v33 - 8);
    v35 = 0;
    if ((*(v34 + 48))(v25, 1, v33) != 1)
    {
      v35 = sub_1B63BE954();
      (*(v34 + 8))(v25, v33);
    }

    [v27 setStatusLastUpdatedDate_];

    if (a16)
    {
      v36 = sub_1B63BEBC4();
    }

    else
    {
      v36 = 0;
    }

    [v27 setSummary_];

    [v27 setType_];
  }
}

id sub_1B630B5B4(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSRAPRecord__clientRevision) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6310A14;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B630B750(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSRAPRecord__clientRevision);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B630B7D4;
}

uint64_t sub_1B630B814()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSRAPRecord__contentData);
  v5 = *(v1 + OBJC_IVAR___MSRAPRecord__contentData + 8);
  v23 = v4;
  v24 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    sub_1B6291034(v4, v5);
    v8 = 0;
    v9 = v4;
LABEL_17:
    sub_1B6284F64(v4, v5);
    sub_1B62B1F7C(v8);
    return v9;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v22[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = &v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6310A38;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_17;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    v9 = v23;
    sub_1B6291034(v23, v24);
    v4 = v23;
    v5 = v24;
    v8 = sub_1B6310A38;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B630BBE4(uint64_t a1, unint64_t a2)
{
  sub_1B6310A60(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t (*sub_1B630BC2C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B630B814();
  a1[1] = v3;
  return sub_1B630BC74;
}

uint64_t sub_1B630BCA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSRAPRecord__countryCode);
  v4 = *(v0 + OBJC_IVAR___MSRAPRecord__countryCode + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6310C30;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_34_3;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B6310C30;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B630C048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSRAPRecord__countryCode);
  v8 = *(v3 + OBJC_IVAR___MSRAPRecord__countryCode + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6310C58;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B630C200(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B630BCA4();
  a1[1] = v3;
  return sub_1B630C248;
}

uint64_t sub_1B630C2D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSRAPRecord__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B630C37C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSRAPRecord__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6310C7C;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B630C518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedRAPRecord();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B630C57C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSRAPRecord__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B630C600;
}

id sub_1B630C63C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1B63BE904();
    sub_1B6284F64(v5, v7);
    v8 = v9;
  }

  return v8;
}

uint64_t sub_1B630C6C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSRAPRecord__rapResponse);
  v5 = *(v1 + OBJC_IVAR___MSRAPRecord__rapResponse + 8);
  v23 = v4;
  v24 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    sub_1B6291034(v4, v5);
    v8 = 0;
    v9 = v4;
LABEL_17:
    sub_1B6284F64(v4, v5);
    sub_1B62B1F7C(v8);
    return v9;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v22[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = &v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6310C84;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_58;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    v9 = v23;
    sub_1B6291034(v23, v24);
    v4 = v23;
    v5 = v24;
    v8 = sub_1B6310C84;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1B630CA98(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  if (a3)
  {
    v6 = a1;
    v7 = a3;
    v8 = sub_1B63BE924();
    v10 = v9;
  }

  else
  {
    v11 = a1;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  a4(v8, v10);
  sub_1B6284F64(v8, v10);
}

uint64_t sub_1B630CB40(uint64_t a1, unint64_t a2)
{
  sub_1B6310CAC(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B630CB88(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  sub_1B6291034(*a1, v7);
  a5(v6, v7);

  return sub_1B6284F64(v6, v7);
}

void sub_1B630CBEC(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v21];
  v7 = v21[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedRAPRecord();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9 && (v11 = [v9 *a4]) != 0)
    {
      v12 = v11;
      v13 = sub_1B63BE924();
      v15 = v14;

      v16 = *a3;
      v17 = a3[1];
      *a3 = v13;
      a3[1] = v15;
      sub_1B6284F64(v16, v17);
    }

    else
    {
    }
  }

  else
  {
    v18 = v21[0];
    v19 = sub_1B63BE824();

    swift_willThrow();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1B630CD10(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedRAPRecord();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (a4 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B63BE904();
    }

    v12 = v11;
    [v9 *a5];
  }
}

uint64_t (*sub_1B630CDDC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B630C6C8();
  a1[1] = v3;
  return sub_1B630CE24;
}

uint64_t sub_1B630CE3C(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  if (a2)
  {
    sub_1B6291034(v7, v5);
    a3(v4, v5);
    sub_1B6284F64(v4, v5);
  }

  else
  {
    a3(v7, v5);
  }

  return sub_1B6284F64(v4, v5);
}

uint64_t sub_1B630CED8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSRAPRecord__reportId);
  v4 = *(v0 + OBJC_IVAR___MSRAPRecord__reportId + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6310E7C;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_69_1;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B6310E7C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B630D27C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSRAPRecord__reportId);
  v8 = *(v3 + OBJC_IVAR___MSRAPRecord__reportId + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6310EA4;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B630D434(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B630CED8();
  a1[1] = v3;
  return sub_1B630D47C;
}

id sub_1B630D500(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSRAPRecord__status) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6310EC8;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B630D69C(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSRAPRecord__status);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B630D720;
}

uint64_t sub_1B630D870@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v2 + v13, v9, &unk_1EB943210, &unk_1B63C3F50);
  [v12 unlock];
  if (*(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  sub_1B628C510(v9, v7, &unk_1EB943210, &unk_1B63C3F50);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943210, &unk_1B63C3F50);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  if ((*(ObjectType + 592))(v15))
  {
  }

  else
  {
    v17 = sub_1B63BF364();

    if ((v17 & 1) == 0)
    {
      v18 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      sub_1B628276C();
      goto LABEL_10;
    }
  }

  v18 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();
LABEL_10:

  v19 = sub_1B629409C();
  v21 = v20;

  if (v21)
  {
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    v22 = v19;
LABEL_16:
    sub_1B6295C20(v22);
    v30(v32, 1, 1, v10);
    return sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  }

  [v12 lock];
  v23 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v24 = v23;
  [v12 property descriptor for VisitedLocation.hidden];
  if (!v23)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v9;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B6310EEC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_95;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  sub_1B62B1FC0(v19);

  [v19 performBlockAndWait_];
  sub_1B6295C20(v19);

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  return result;
}

uint64_t sub_1B630DE70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943210, &unk_1B63C3F50);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B6310EF8;
    *(v15 + 24) = v14;
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *(v2 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B629A8E8(0, v17[2] + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B629A8E8((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1B62B9488;
    v21[5] = v15;
    *(v2 + v16) = v17;
    swift_endAccess();
  }

  [v11 unlock];
  return sub_1B6284EAC(a1, &unk_1EB943210, &unk_1B63C3F50);
}

uint64_t sub_1B630E140(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1B628C510(a1, &v10 - v6, &unk_1EB943210, &unk_1B63C3F50);
  v8 = *a2;
  return sub_1B630DE70(v7);
}

void sub_1B630E1EC(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B63BE994();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-v12];
  v26[0] = 0;
  v14 = [a1 existingObjectWithID:a2 error:v26];
  v15 = v26[0];
  if (v14)
  {
    v16 = v14;
    type metadata accessor for MapsSyncManagedRAPRecord();
    v17 = swift_dynamicCastClass();
    v18 = v15;
    if (v17 && (v19 = [v17 statusLastUpdatedDate]) != 0)
    {
      v20 = v19;
      sub_1B63BE974();

      v21 = *(v7 + 32);
      v21(v13, v11, v6);
      sub_1B6284EAC(a3, &unk_1EB943210, &unk_1B63C3F50);
      v21(a3, v13, v6);
      (*(v7 + 56))(a3, 0, 1, v6);
    }

    else
    {
    }
  }

  else
  {
    v22 = v26[0];
    v23 = sub_1B63BE824();

    swift_willThrow();
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1B630E41C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  type metadata accessor for MapsSyncManagedRAPRecord();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    sub_1B628C510(a3, v8, &unk_1EB943210, &unk_1B63C3F50);
    v11 = sub_1B63BE994();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    v14 = a2;
    v15 = 0;
    if (v13 != 1)
    {
      v15 = sub_1B63BE954();
      (*(v12 + 8))(v8, v11);
    }

    [v10 setStatusLastUpdatedDate_];
  }
}

void (*sub_1B630E588(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1B630D870(v4);
  return sub_1B630E644;
}

void sub_1B630E644(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1B628C510(a1[2], v2, &unk_1EB943210, &unk_1B63C3F50);
    sub_1B630DE70(v2);
    sub_1B6284EAC(v3, &unk_1EB943210, &unk_1B63C3F50);
  }

  else
  {
    sub_1B630DE70(a1[2]);
  }

  free(v3);

  free(v2);
}

id sub_1B630E6F8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1B63BEBC4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1B630E778()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSRAPRecord__summary);
  v4 = *(v0 + OBJC_IVAR___MSRAPRecord__summary + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6310F84;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_112;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B6310F84;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B630EB1C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1B63BEBD4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1B630EBA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSRAPRecord__summary);
  v8 = *(v3 + OBJC_IVAR___MSRAPRecord__summary + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6310FAC;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B630ED5C(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedRAPRecord();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9 && (v11 = [v9 *a4]) != 0)
    {
      v12 = v11;
      v13 = sub_1B63BEBD4();
      v15 = v14;

      v16 = a3[1];
      *a3 = v13;
      a3[1] = v15;
    }

    else
    {
    }
  }

  else
  {
    v17 = v20[0];
    v18 = sub_1B63BE824();

    swift_willThrow();
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B630EE80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedRAPRecord();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (a4)
    {
      v11 = sub_1B63BEBC4();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v9 *a5];
  }
}

uint64_t (*sub_1B630EF44(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B630E778();
  a1[1] = v3;
  return sub_1B630EF8C;
}

uint64_t sub_1B630EFA4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v7 = a1[1];

  a3(v5, v4);
}

id sub_1B630F090(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSRAPRecord__type) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6310FD0;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B630F22C(uint64_t a1, uint64_t a2, __int16 a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedRAPRecord();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B630F29C(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSRAPRecord__type);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B630F320;
}

uint64_t sub_1B630F38C()
{
  v1 = *&v0[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v0;
  v3 = v0;
  v4 = v1;
  sub_1B6382638(inited);

  swift_setDeallocating();
  v5 = *(inited + 16);
  swift_arrayDestroy();
  return 0;
}

void sub_1B630F444(uint64_t a1, unint64_t a2, void **a3, uint64_t a4)
{
  if (!a1 && a2)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v32 = a3;
      v33 = a4;
      v34 = a2;
      v35 = sub_1B63BF044();
      a2 = v34;
      a4 = v33;
      a3 = v32;
      if (!v35)
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = a4;
      v6 = a3;
      v7 = MEMORY[0x1B8C92830](0);
    }

    else
    {
      if (!*(v4 + 16))
      {
        __break(1u);
        return;
      }

      v5 = a4;
      v6 = a3;
      v7 = *(a2 + 32);
    }

    v36 = v7;
    type metadata accessor for MapsSyncManagedRAPRecord();
    v8 = swift_dynamicCastClass();
    if (v8 && (v9 = [v8 communityID]) != 0)
    {
      v10 = v9;
      v11 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      v12 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad);
      v13 = objc_allocWithZone(type metadata accessor for CommunityID());
      v14 = &v13[OBJC_IVAR___MSCommunityID__communityIdentifier];
      *v14 = 0;
      v14[1] = 0;
      v13[OBJC_IVAR___MSCommunityID__expired] = 0;
      *&v13[OBJC_IVAR___MSCommunityID__positionIndex] = 0;
      *&v13[OBJC_IVAR___MSCommunityID__usedCount] = 0;
      v15 = MEMORY[0x1E69E7CC0];
      *&v13[OBJC_IVAR___MSCommunityID__rapRecordChanges] = MEMORY[0x1E69E7CC0];
      *&v13[OBJC_IVAR___MSCommunityID__reviewedPlaceChanges] = v15;
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
      v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      v17 = objc_allocWithZone(MEMORY[0x1E696AD10]);
      v18 = v10;
      v19 = v11;
      *&v13[v16] = [v17 init];
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v15;
      v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
      v21 = type metadata accessor for MapsSyncHashing();
      (*(*(v21 - 8) + 56))(&v13[v20], 1, 1, v21);
      v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
      v23 = sub_1B63BEA04();
      (*(*(v23 - 8) + 56))(&v13[v22], 1, 1, v23);
      v24 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
      v25 = sub_1B63BE994();
      v26 = *(*(v25 - 8) + 56);
      v26(&v13[v24], 1, 1, v25);
      v26(&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v25);
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v19;
      v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v12;
      v37.receiver = v13;
      v37.super_class = type metadata accessor for MapsSyncObject();
      v27 = v19;
      v28 = objc_msgSendSuper2(&v37, sel_init);
      v29 = [v18 objectID];
      v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
      *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

      (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v18, v12, 1);
      v31 = *v6;
      *v6 = v28;
    }

    else
    {
    }
  }
}

void sub_1B630F83C(void *a1)
{
  if (a1)
  {
    v6 = a1;
    sub_1B62DD7A8(v1, 0, sub_1B62DD660, 0);
  }

  else
  {
    v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D70;
    *(inited + 32) = v1;
    v1;
    v4 = v2;
    sub_1B6382638(inited);

    swift_setDeallocating();
    v5 = *(inited + 16);
    swift_arrayDestroy();
  }
}

void *sub_1B630F9F8(void *a1, void *a2, int a3, int a4)
{
  v52 = a4;
  v53 = a3;
  v54 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v47 - v11;
  *&v4[OBJC_IVAR___MSRAPRecord__clientRevision] = 0;
  *&v4[OBJC_IVAR___MSRAPRecord__contentData] = xmmword_1B63C3E40;
  v12 = &v4[OBJC_IVAR___MSRAPRecord__countryCode];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR___MSRAPRecord__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSRAPRecord__rapResponse] = xmmword_1B63C3E40;
  v13 = &v4[OBJC_IVAR___MSRAPRecord__reportId];
  *v13 = 0;
  v13[1] = 0;
  *&v4[OBJC_IVAR___MSRAPRecord__status] = 0;
  v14 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  v15 = sub_1B63BE994();
  v16 = *(*(v15 - 8) + 56);
  v16(&v4[v14], 1, 1, v15);
  v17 = &v4[OBJC_IVAR___MSRAPRecord__summary];
  *v17 = 0;
  v17[1] = 0;
  *&v4[OBJC_IVAR___MSRAPRecord__type] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v20 = type metadata accessor for MapsSyncHashing();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v22 = sub_1B63BEA04();
  v23 = *(*(v22 - 8) + 56);
  v23(&v4[v21], 1, 1, v22);
  v16(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v15);
  v16(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v15);
  v24 = v53;
  v25 = v54;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v54;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v24;
  v26 = type metadata accessor for MapsSyncObject();
  v55.receiver = v4;
  v55.super_class = v26;
  v27 = v25;
  v28 = objc_msgSendSuper2(&v55, sel_init);
  v29 = v28;
  if (a1)
  {
    v30 = v28;
    v31 = [a1 objectID];
    v32 = *(v30 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v30 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v31;

    (*((*MEMORY[0x1E69E7D40] & *v30) + 0x218))(a1, v24 & 1, v52 & 1);
  }

  else
  {
    v33 = v28;
    v34 = v51;
    sub_1B63BE9F4();
    v23(v34, 0, 1, v22);
    v35 = v48;
    sub_1B628C510(v34, v48, &unk_1EB943680, qword_1B63C4070);
    v36 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v35, &v33[v36], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v37 = v50;
    sub_1B628C510(v34, v50, &unk_1EB943680, qword_1B63C4070);
    v38 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v39 = swift_allocObject();
    sub_1B628A128(v37, v39 + v38, &unk_1EB943680, qword_1B63C4070);
    v40 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v41 = *&v33[v40];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[v40] = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_1B629A8E8(0, v41[2] + 1, 1, v41);
      *&v33[v40] = v41;
    }

    v44 = v41[2];
    v43 = v41[3];
    if (v44 >= v43 >> 1)
    {
      v41 = sub_1B629A8E8((v43 > 1), v44 + 1, 1, v41);
    }

    v41[2] = v44 + 1;
    v45 = &v41[2 * v44];
    v45[4] = sub_1B62B2D5C;
    v45[5] = v39;
    *&v33[v40] = v41;
    swift_endAccess();

    sub_1B6284EAC(v34, &unk_1EB943680, qword_1B63C4070);
  }

  return v29;
}

uint64_t sub_1B6310000()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSRAPRecord__contentData), *(v0 + OBJC_IVAR___MSRAPRecord__contentData + 8));
  v1 = *(v0 + OBJC_IVAR___MSRAPRecord__countryCode + 8);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSRAPRecord__rapResponse), *(v0 + OBJC_IVAR___MSRAPRecord__rapResponse + 8));
  v2 = *(v0 + OBJC_IVAR___MSRAPRecord__reportId + 8);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate, &unk_1EB943210, &unk_1B63C3F50);
  v3 = *(v0 + OBJC_IVAR___MSRAPRecord__summary + 8);
}

id RAPRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RAPRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B631018C(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v66 - v10;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedRAPRecord();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = a1;
  v15 = [v13 clientRevision];
  *(v2 + OBJC_IVAR___MSRAPRecord__clientRevision) = v15;
  if (a2)
  {
    v16 = *(v2 + OBJC_IVAR___MSRAPRecord__contentData);
    v17 = *(v2 + OBJC_IVAR___MSRAPRecord__contentData + 8);
    *(v2 + OBJC_IVAR___MSRAPRecord__contentData) = xmmword_1B63C3E40;
    sub_1B6284F64(v16, v17);
  }

  else
  {
    v18 = [v13 contentData];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1B63BE924();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xF000000000000000;
    }

    v23 = (v2 + OBJC_IVAR___MSRAPRecord__contentData);
    v24 = *(v2 + OBJC_IVAR___MSRAPRecord__contentData);
    v25 = *(v2 + OBJC_IVAR___MSRAPRecord__contentData + 8);
    *v23 = v20;
    v23[1] = v22;
    sub_1B6284F64(v24, v25);
    v26 = [v13 countryCode];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1B63BEBD4();
      v30 = v29;

      goto LABEL_10;
    }
  }

  v28 = 0;
  v30 = 0;
LABEL_10:
  v31 = (v2 + OBJC_IVAR___MSRAPRecord__countryCode);
  v32 = *(v2 + OBJC_IVAR___MSRAPRecord__countryCode + 8);
  *v31 = v28;
  v31[1] = v30;

  v33 = [v13 positionIndex];
  *(v2 + OBJC_IVAR___MSRAPRecord__positionIndex) = v33;
  if (a2)
  {
    v34 = *(v2 + OBJC_IVAR___MSRAPRecord__rapResponse);
    v35 = *(v2 + OBJC_IVAR___MSRAPRecord__rapResponse + 8);
    *(v2 + OBJC_IVAR___MSRAPRecord__rapResponse) = xmmword_1B63C3E40;
    sub_1B6284F64(v34, v35);
LABEL_17:
    v46 = 0;
    v48 = 0;
    goto LABEL_18;
  }

  v36 = [v13 rapResponse];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1B63BE924();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0xF000000000000000;
  }

  v41 = (v2 + OBJC_IVAR___MSRAPRecord__rapResponse);
  v42 = *(v2 + OBJC_IVAR___MSRAPRecord__rapResponse);
  v43 = *(v2 + OBJC_IVAR___MSRAPRecord__rapResponse + 8);
  *v41 = v38;
  v41[1] = v40;
  sub_1B6284F64(v42, v43);
  v44 = [v13 reportId];
  if (!v44)
  {
    goto LABEL_17;
  }

  v45 = v44;
  v46 = sub_1B63BEBD4();
  v48 = v47;

LABEL_18:
  v49 = (v2 + OBJC_IVAR___MSRAPRecord__reportId);
  v50 = *(v2 + OBJC_IVAR___MSRAPRecord__reportId + 8);
  *v49 = v46;
  v49[1] = v48;

  v51 = [v13 status];
  *(v2 + OBJC_IVAR___MSRAPRecord__status) = v51;
  if (a2)
  {
    v52 = sub_1B63BE994();
    (*(*(v52 - 8) + 56))(v11, 1, 1, v52);
  }

  else
  {
    v53 = [v13 statusLastUpdatedDate];
    if (v53)
    {
      v54 = v53;
      sub_1B63BE974();

      v55 = sub_1B63BE994();
      (*(*(v55 - 8) + 56))(v9, 0, 1, v55);
    }

    else
    {
      v56 = sub_1B63BE994();
      (*(*(v56 - 8) + 56))(v9, 1, 1, v56);
    }

    sub_1B628A128(v9, v11, &unk_1EB943210, &unk_1B63C3F50);
  }

  v57 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  swift_beginAccess();
  sub_1B6282DFC(v11, v2 + v57, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  if ((a2 & 1) != 0 || (v58 = [v13 summary]) == 0)
  {
    v60 = 0;
    v62 = 0;
  }

  else
  {
    v59 = v58;
    v60 = sub_1B63BEBD4();
    v62 = v61;
  }

  v63 = (v2 + OBJC_IVAR___MSRAPRecord__summary);
  v64 = *(v2 + OBJC_IVAR___MSRAPRecord__summary + 8);
  *v63 = v60;
  v63[1] = v62;

  v65 = [v13 type];

  *(v2 + OBJC_IVAR___MSRAPRecord__type) = v65;
}

id sub_1B6310620(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15)
{
  v39 = a6;
  v37 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v36 - v22;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v24 = 0;
    if (a5)
    {
LABEL_5:
      v25 = sub_1B63BEBC4();

      goto LABEL_8;
    }
  }

  else
  {
    sub_1B629119C(a2, a3);
    v24 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
    if (a5)
    {
      goto LABEL_5;
    }
  }

  v25 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v26 = 0;
    if (a10)
    {
LABEL_10:
      v27 = sub_1B63BEBC4();

      goto LABEL_13;
    }
  }

  else
  {
    sub_1B629119C(a7, a8);
    v26 = sub_1B63BE904();
    sub_1B6284F64(a7, a8);
    if (a10)
    {
      goto LABEL_10;
    }
  }

  v27 = 0;
LABEL_13:
  sub_1B628C510(a12, v23, &unk_1EB943210, &unk_1B63C3F50);
  v28 = sub_1B63BE994();
  v29 = *(v28 - 8);
  v30 = 0;
  if ((*(v29 + 48))(v23, 1, v28) != 1)
  {
    v30 = sub_1B63BE954();
    (*(v29 + 8))(v23, v28);
  }

  if (a14)
  {
    v31 = sub_1B63BEBC4();
  }

  else
  {
    v31 = 0;
  }

  LOWORD(v35) = a15;
  LOWORD(v34) = a11;
  v32 = [v38 initWithStore:v36 clientRevision:v37 contentData:v24 countryCode:v25 positionIndex:v39 rapResponse:v26 reportId:v27 status:v34 statusLastUpdatedDate:v30 summary:v31 type:v35];

  sub_1B6284EAC(a12, &unk_1EB943210, &unk_1B63C3F50);
  return v32;
}

void sub_1B631091C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 98) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B630AF48(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 17) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1B6310A60(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSRAPRecord__contentData);
  v8 = *(v3 + OBJC_IVAR___MSRAPRecord__contentData);
  v9 = *(v3 + OBJC_IVAR___MSRAPRecord__contentData + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B6311918;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id sub_1B6310CAC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSRAPRecord__rapResponse);
  v8 = *(v3 + OBJC_IVAR___MSRAPRecord__rapResponse);
  v9 = *(v3 + OBJC_IVAR___MSRAPRecord__rapResponse + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B63118F4;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B6310EF8(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B630E41C(a1, a2, v6);
}

uint64_t type metadata accessor for RAPRecord()
{
  result = qword_1EDB0E6D8;
  if (!qword_1EDB0E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_set_132Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

void sub_1B6311088()
{
  sub_1B628CC34();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id ReviewedPlace.__allocating_init(hasUserReviewed:lastSuggestedReviewDate:latitude:longitude:mapItemIdComparableRepresentation:mapItemLastRefreshed:mapItemStorage:muid:positionIndex:rating:resultProviderIdentifier:uploadedPhotosCount:version:)(int a1, uint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, id a8, unint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, int a14, __int16 a15)
{
  v16 = v15;
  v50 = a4;
  v51 = a8;
  v55 = a5;
  v49 = a3;
  v48 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v44 - v25;
  v47 = objc_allocWithZone(v16);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v46 = qword_1EDB0F2A8;
  sub_1B628C510(a2, v26, &unk_1EB943210, &unk_1B63C3F50);
  v27 = sub_1B63BE994();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = 0;
  if (v29(v26, 1, v27) != 1)
  {
    v30 = sub_1B63BE954();
    (*(v28 + 8))(v26, v27);
  }

  v52 = a6;
  v45 = v30;
  if (a6 >> 60 == 15)
  {
    v44 = 0;
  }

  else
  {
    v31 = v55;
    sub_1B629119C(v55, a6);
    v44 = sub_1B63BE904();
    sub_1B6284F64(v31, a6);
  }

  sub_1B628C510(a7, v24, &unk_1EB943210, &unk_1B63C3F50);
  v32 = v29(v24, 1, v27);
  v53 = a7;
  v54 = a2;
  if (v32 == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_1B63BE954();
    (*(v28 + 8))(v24, v27);
  }

  v34 = v51;
  if (a9 >> 60 == 15)
  {
    v35 = 0;
  }

  else
  {
    sub_1B629119C(v51, a9);
    v35 = sub_1B63BE904();
    sub_1B6284F64(v34, a9);
  }

  WORD2(v43) = a15;
  LODWORD(v43) = a14;
  v42 = v33;
  v36 = v45;
  v38 = v49;
  v37 = v50;
  v39 = v33;
  v40 = v44;
  v51 = [v47 initWithStore:v46 hasUserReviewed:v48 & 1 lastSuggestedReviewDate:v45 latitude:v49 longitude:v50 mapItemIdComparableRepresentation:v44 mapItemLastRefreshed:v42 mapItemStorage:v35 muid:a10 positionIndex:a11 rating:a12 resultProviderIdentifier:a13 uploadedPhotosCount:v43 version:?];

  sub_1B6284F64(v34, a9);
  sub_1B6284F64(v55, v52);
  sub_1B6284EAC(v53, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v54, &unk_1EB943210, &unk_1B63C3F50);
  return v51;
}

id ReviewedPlace.init(hasUserReviewed:lastSuggestedReviewDate:latitude:longitude:mapItemIdComparableRepresentation:mapItemLastRefreshed:mapItemStorage:muid:positionIndex:rating:resultProviderIdentifier:uploadedPhotosCount:version:)(int a1, uint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, int a14, __int16 a15)
{
  v20 = sub_1B6319B20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);

  sub_1B6284F64(a8, a9);
  sub_1B6284F64(a5, a6);

  return v20;
}

char *ReviewedPlace.__allocating_init(store:hasUserReviewed:lastSuggestedReviewDate:latitude:longitude:mapItemIdComparableRepresentation:mapItemLastRefreshed:mapItemStorage:muid:positionIndex:rating:resultProviderIdentifier:uploadedPhotosCount:version:)(void *a1, int a2, uint64_t a3, void *a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, int a15, unsigned __int16 a16)
{
  v111 = a7;
  v114 = a6;
  v99 = a5;
  v100 = a4;
  v19 = a2;
  v93 = a2;
  v112 = a9;
  v113 = a10;
  LODWORD(v107) = a16;
  LODWORD(v108) = a15;
  v101 = a13;
  v102 = a14;
  v105 = a11;
  v106 = a12;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v94 = *(v21 - 8);
  v22 = *(v94 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v104 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v87 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v87 - v26;
  v28 = objc_allocWithZone(v16);
  v96 = a1;
  v29 = [v28 initWithStore_];
  v30 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v31 = *&v29[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v109 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v32 = v29;
  v110 = v29;
  v33 = v32;
  [v31 lock];
  v95 = *&v29[v30];
  v33[OBJC_IVAR___MSReviewedPlace__hasUserReviewed] = v19;
  sub_1B628C510(a3, v27, &unk_1EB943210, &unk_1B63C3F50);
  v34 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
  swift_beginAccess();
  sub_1B6282DFC(v27, &v33[v34], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v35 = *&v33[OBJC_IVAR___MSReviewedPlace__latitude];
  v36 = v100;
  *&v33[OBJC_IVAR___MSReviewedPlace__latitude] = v100;
  v92 = v36;

  v37 = *&v33[OBJC_IVAR___MSReviewedPlace__longitude];
  v38 = v99;
  *&v33[OBJC_IVAR___MSReviewedPlace__longitude] = v99;
  v91 = v38;

  v39 = &v33[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation];
  v40 = *&v33[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation];
  v41 = *&v33[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8];
  v42 = v114;
  v43 = v111;
  *v39 = v114;
  *(v39 + 1) = v43;
  sub_1B6291034(v42, v43);
  sub_1B6284F64(v40, v41);
  sub_1B628C510(a8, v27, &unk_1EB943210, &unk_1B63C3F50);
  v44 = OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v27, &v33[v44], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v45 = &v33[OBJC_IVAR___MSReviewedPlace__mapItemStorage];
  v46 = *&v33[OBJC_IVAR___MSReviewedPlace__mapItemStorage];
  v47 = *&v33[OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8];
  v48 = v112;
  v49 = v113;
  *v45 = v112;
  *(v45 + 1) = v49;
  sub_1B6291034(v48, v49);
  sub_1B6284F64(v46, v47);
  v50 = v106;
  *&v33[OBJC_IVAR___MSReviewedPlace__muid] = v105;
  *&v33[OBJC_IVAR___MSReviewedPlace__positionIndex] = v50;
  v51 = *&v33[OBJC_IVAR___MSReviewedPlace__rating];
  v52 = v101;
  *&v33[OBJC_IVAR___MSReviewedPlace__rating] = v101;
  v90 = v52;

  v53 = *&v33[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier];
  v54 = v102;
  *&v33[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier] = v102;
  v89 = v54;

  *&v33[OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount] = v108;
  *&v33[OBJC_IVAR___MSReviewedPlace__version] = v107;
  v98 = a3;
  sub_1B628C510(a3, v103, &unk_1EB943210, &unk_1B63C3F50);
  v97 = a8;
  sub_1B628C510(a8, v104, &unk_1EB943210, &unk_1B63C3F50);
  v55 = *(v94 + 80);
  v56 = (v55 + 17) & ~v55;
  v57 = (v22 + 7 + v56) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v55 + v59 + 16) & ~v55;
  v88 = (v22 + 7 + v60) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = v93;
  sub_1B628A128(v103, v63 + v56, &unk_1EB943210, &unk_1B63C3F50);
  v64 = v99;
  *(v63 + v57) = v100;
  *(v63 + v58) = v64;
  v65 = (v63 + v59);
  v66 = v114;
  v67 = v111;
  *v65 = v114;
  v65[1] = v67;
  sub_1B628A128(v104, v63 + v60, &unk_1EB943210, &unk_1B63C3F50);
  v68 = (v63 + v88);
  v70 = v112;
  v69 = v113;
  *v68 = v112;
  v68[1] = v69;
  v71 = v106;
  *(v63 + v94) = v105;
  *(v63 + v87) = v71;
  v72 = v102;
  *(v63 + v61) = v101;
  *(v63 + v62) = v72;
  v73 = v63 + ((v62 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v73 = v108;
  *(v73 + 4) = v107;
  sub_1B6282B88();
  v74 = *&v110[v109];
  v75 = v92;
  v76 = v91;
  sub_1B6291034(v66, v67);
  sub_1B6291034(v70, v69);
  v77 = v90;
  v78 = v89;
  if (sub_1B63BEF24())
  {
    v107 = v76;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_1B6319E70;
    *(v79 + 24) = v63;
    v80 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v81 = *&v33[v80];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[v80] = v81;
    v108 = v75;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v81 = sub_1B629A8E8(0, v81[2] + 1, 1, v81);
      *&v33[v80] = v81;
    }

    v84 = v81[2];
    v83 = v81[3];
    if (v84 >= v83 >> 1)
    {
      v81 = sub_1B629A8E8((v83 > 1), v84 + 1, 1, v81);
    }

    v81[2] = v84 + 1;
    v85 = &v81[2 * v84];
    v85[4] = sub_1B62B8188;
    v85[5] = v79;
    *&v33[v80] = v81;
    swift_endAccess();
    v76 = v107;
    v75 = v108;
  }

  [*&v110[v109] unlock];

  sub_1B6284F64(v112, v113);
  sub_1B6284F64(v114, v111);

  sub_1B6284EAC(v97, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v98, &unk_1EB943210, &unk_1B63C3F50);

  return v33;
}

char *ReviewedPlace.init(store:hasUserReviewed:lastSuggestedReviewDate:latitude:longitude:mapItemIdComparableRepresentation:mapItemLastRefreshed:mapItemStorage:muid:positionIndex:rating:resultProviderIdentifier:uploadedPhotosCount:version:)(void *a1, int a2, uint64_t a3, void *a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, int a15, unsigned __int16 a16)
{
  v17 = v16;
  v110 = a7;
  v113 = a6;
  v99 = a5;
  v21 = a2;
  v93 = a2;
  v111 = a9;
  v112 = a10;
  LODWORD(v106) = a16;
  LODWORD(v107) = a15;
  v100 = a13;
  v101 = a14;
  v104 = a11;
  v105 = a12;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v94 = *(v23 - 8);
  v24 = *(v94 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v103 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v102 = &v86 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v86 - v28;
  v96 = a1;
  v30 = [v17 initWithStore_];
  v31 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v32 = *&v30[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v108 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v33 = v30;
  v109 = v30;
  v34 = v33;
  [v32 lock];
  v95 = *&v30[v31];
  v34[OBJC_IVAR___MSReviewedPlace__hasUserReviewed] = v21;
  sub_1B628C510(a3, v29, &unk_1EB943210, &unk_1B63C3F50);
  v35 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
  swift_beginAccess();
  sub_1B6282DFC(v29, &v34[v35], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v36 = *&v34[OBJC_IVAR___MSReviewedPlace__latitude];
  v90 = a4;
  *&v34[OBJC_IVAR___MSReviewedPlace__latitude] = a4;
  v92 = a4;

  v37 = *&v34[OBJC_IVAR___MSReviewedPlace__longitude];
  v38 = v99;
  *&v34[OBJC_IVAR___MSReviewedPlace__longitude] = v99;
  v91 = v38;

  v39 = &v34[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation];
  v40 = *&v34[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation];
  v41 = *&v34[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8];
  v42 = v113;
  v43 = v110;
  *v39 = v113;
  *(v39 + 1) = v43;
  sub_1B6291034(v42, v43);
  sub_1B6284F64(v40, v41);
  sub_1B628C510(a8, v29, &unk_1EB943210, &unk_1B63C3F50);
  v44 = OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v29, &v34[v44], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v45 = &v34[OBJC_IVAR___MSReviewedPlace__mapItemStorage];
  v46 = *&v34[OBJC_IVAR___MSReviewedPlace__mapItemStorage];
  v47 = *&v34[OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8];
  v48 = v111;
  v49 = v112;
  *v45 = v111;
  *(v45 + 1) = v49;
  sub_1B6291034(v48, v49);
  sub_1B6284F64(v46, v47);
  v50 = v105;
  *&v34[OBJC_IVAR___MSReviewedPlace__muid] = v104;
  *&v34[OBJC_IVAR___MSReviewedPlace__positionIndex] = v50;
  v51 = *&v34[OBJC_IVAR___MSReviewedPlace__rating];
  v52 = v100;
  *&v34[OBJC_IVAR___MSReviewedPlace__rating] = v100;
  v89 = v52;

  v53 = *&v34[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier];
  v54 = v101;
  *&v34[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier] = v101;
  v88 = v54;

  *&v34[OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount] = v107;
  *&v34[OBJC_IVAR___MSReviewedPlace__version] = v106;
  v98 = a3;
  sub_1B628C510(a3, v102, &unk_1EB943210, &unk_1B63C3F50);
  v97 = a8;
  sub_1B628C510(a8, v103, &unk_1EB943210, &unk_1B63C3F50);
  v55 = *(v94 + 80);
  v56 = (v55 + 17) & ~v55;
  v57 = (v24 + 7 + v56) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v55 + v59 + 16) & ~v55;
  v87 = (v24 + 7 + v60) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = v93;
  sub_1B628A128(v102, v63 + v56, &unk_1EB943210, &unk_1B63C3F50);
  *(v63 + v57) = v90;
  *(v63 + v58) = v99;
  v64 = (v63 + v59);
  v65 = v113;
  v66 = v110;
  *v64 = v113;
  v64[1] = v66;
  sub_1B628A128(v103, v63 + v60, &unk_1EB943210, &unk_1B63C3F50);
  v67 = (v63 + v87);
  v69 = v111;
  v68 = v112;
  *v67 = v111;
  v67[1] = v68;
  v70 = v105;
  *(v63 + v94) = v104;
  *(v63 + v86) = v70;
  v71 = v101;
  *(v63 + v61) = v100;
  *(v63 + v62) = v71;
  v72 = v63 + ((v62 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v72 = v107;
  *(v72 + 4) = v106;
  sub_1B6282B88();
  v73 = *&v109[v108];
  v74 = v92;
  v75 = v91;
  sub_1B6291034(v65, v66);
  sub_1B6291034(v69, v68);
  v76 = v89;
  v77 = v88;
  if (sub_1B63BEF24())
  {
    v106 = v75;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_1B631B8D4;
    *(v78 + 24) = v63;
    v79 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v80 = *&v34[v79];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[v79] = v80;
    v107 = v74;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v80 = sub_1B629A8E8(0, v80[2] + 1, 1, v80);
      *&v34[v79] = v80;
    }

    v83 = v80[2];
    v82 = v80[3];
    if (v83 >= v82 >> 1)
    {
      v80 = sub_1B629A8E8((v82 > 1), v83 + 1, 1, v80);
    }

    v80[2] = v83 + 1;
    v84 = &v80[2 * v83];
    v84[4] = sub_1B62B9488;
    v84[5] = v78;
    *&v34[v79] = v80;
    swift_endAccess();
    v75 = v106;
    v74 = v107;
  }

  [*&v109[v108] unlock];

  sub_1B6284F64(v111, v112);
  sub_1B6284F64(v113, v110);

  sub_1B6284EAC(v97, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v98, &unk_1EB943210, &unk_1B63C3F50);

  return v34;
}

void sub_1B6312ECC(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v40 - v29;
  type metadata accessor for MapsSyncManagedReviewedPlace();
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = v31;
    v42 = a7;
    v43 = a9;
    v44 = a6;
    v45 = a2;
    [v32 setHasUserReviewed_];
    sub_1B628C510(a4, v30, &unk_1EB943210, &unk_1B63C3F50);
    v33 = sub_1B63BE994();
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    v36 = 0;
    if (v35(v30, 1, v33) != 1)
    {
      v36 = sub_1B63BE954();
      (*(v34 + 8))(v30, v33);
    }

    [v32 setLastSuggestedReviewDate_];

    [v32 setLatitude_];
    [v32 setLongitude_];
    if (a8 >> 60 == 15)
    {
      v37 = 0;
    }

    else
    {
      v37 = sub_1B63BE904();
    }

    LODWORD(v44) = a16;
    v41 = a14;
    v42 = a15;
    [v32 setMapItemIdComparableRepresentation_];

    sub_1B628C510(v43, v28, &unk_1EB943210, &unk_1B63C3F50);
    if (v35(v28, 1, v33) == 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = sub_1B63BE954();
      (*(v34 + 8))(v28, v33);
    }

    [v32 setMapItemLastRefreshed_];

    if (a11 >> 60 == 15)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_1B63BE904();
    }

    [v32 setMapItemStorage_];

    [v32 setMuid_];
    [v32 setPositionIndex_];
    [v32 setRating_];
    [v32 setResultProviderIdentifier_];
    [v32 setUploadedPhotosCount_];
    [v32 setVersion_];
  }
}

uint64_t sub_1B6313600()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSReviewedPlace__hasUserReviewed);
  [v1 unlock];
  return v2;
}

id sub_1B63136AC(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSReviewedPlace__hasUserReviewed) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6319FC4;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6313848(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setHasUserReviewed_];
  }

  return result;
}

id (*sub_1B63138AC(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__hasUserReviewed);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B6313930;
}

uint64_t sub_1B6313970@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v2 + v13, v9, &unk_1EB943210, &unk_1B63C3F50);
  [v12 unlock];
  if (*(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  sub_1B628C510(v9, v7, &unk_1EB943210, &unk_1B63C3F50);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943210, &unk_1B63C3F50);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  if ((*(ObjectType + 592))(v15))
  {
  }

  else
  {
    v17 = sub_1B63BF364();

    if ((v17 & 1) == 0)
    {
      v18 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      sub_1B628276C();
      goto LABEL_10;
    }
  }

  v18 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();
LABEL_10:

  v19 = sub_1B629409C();
  v21 = v20;

  if (v21)
  {
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    v22 = v19;
LABEL_16:
    sub_1B6295C20(v22);
    v30(v32, 1, 1, v10);
    return sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  }

  [v12 lock];
  v23 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v24 = v23;
  [v12 property descriptor for VisitedLocation.hidden];
  if (!v23)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v9;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B6319FCC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B8284;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_18;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  sub_1B62B1FC0(v19);

  [v19 performBlockAndWait_];
  sub_1B6295C20(v19);

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  return result;
}

uint64_t sub_1B6313E70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943210, &unk_1B63C3F50);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B6319FF4;
    *(v15 + 24) = v14;
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *(v2 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B629A8E8(0, v17[2] + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B629A8E8((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1B62B9488;
    v21[5] = v15;
    *(v2 + v16) = v17;
    swift_endAccess();
  }

  [v11 unlock];
  return sub_1B6284EAC(a1, &unk_1EB943210, &unk_1B63C3F50);
}

void (*sub_1B6314140(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1B6313970(v4);
  return sub_1B63141FC;
}

uint64_t sub_1B6314258()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__latitude);
  v25 = v4;
  v5 = v4;
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {
    v8 = v5;
LABEL_13:
    v14 = 0;
LABEL_14:

    sub_1B62B1F7C(v14);
    return v4;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v9 = sub_1B63BF364();

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v11 = sub_1B629409C();
  v13 = v12;

  if (v13)
  {
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v11);
    v4 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v16 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v17 = v16;
  [v3 unlock];
  if (!v16)
  {
    sub_1B6295C20(v11);
    v4 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = &v25;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B631A000;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_41_3;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  sub_1B62B1FC0(v11);

  [v11 performBlockAndWait_];
  sub_1B6295C20(v11);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = v25;
    v23 = v25;
    v14 = sub_1B631A000;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6314618(void *a1)
{
  sub_1B631A028(a1);
}

void (*sub_1B6314650(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6314258();
  return sub_1B6314698;
}

uint64_t sub_1B63146F4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__longitude);
  v25 = v4;
  v5 = v4;
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {
    v8 = v5;
LABEL_13:
    v14 = 0;
LABEL_14:

    sub_1B62B1F7C(v14);
    return v4;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v9 = sub_1B63BF364();

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v11 = sub_1B629409C();
  v13 = v12;

  if (v13)
  {
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v11);
    v4 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v16 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v17 = v16;
  [v3 unlock];
  if (!v16)
  {
    sub_1B6295C20(v11);
    v4 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = &v25;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B631A1D8;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_51_4;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  sub_1B62B1FC0(v11);

  [v11 performBlockAndWait_];
  sub_1B6295C20(v11);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = v25;
    v23 = v25;
    v14 = sub_1B631A1D8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6314AB4(void *a1)
{
  sub_1B631A200(a1);
}

void (*sub_1B6314AEC(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B63146F4();
  return sub_1B6314B34;
}

void sub_1B6314B4C(id *a1, char a2, void (*a3)(id))
{
  v4 = a1[1];
  v7 = *a1;
  if (a2)
  {
    v5 = v7;
    a3(v7);

    v6 = v5;
  }

  else
  {
    a3(*a1);
    v6 = v7;
  }
}

uint64_t sub_1B6314BE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
  v5 = *(v1 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8);
  v23 = v4;
  v24 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    sub_1B6291034(v4, v5);
    v8 = 0;
    v9 = v4;
LABEL_17:
    sub_1B6284F64(v4, v5);
    sub_1B62B1F7C(v8);
    return v9;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v22[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = &v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B631A3B0;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_62_2;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    v9 = v23;
    sub_1B6291034(v23, v24);
    v4 = v23;
    v5 = v24;
    v8 = sub_1B631A3B0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6314FB4(uint64_t a1, unint64_t a2)
{
  sub_1B631A3D8(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t (*sub_1B6314FFC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6314BE4();
  a1[1] = v3;
  return sub_1B6315044;
}

id sub_1B6315074(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = a1;
  a3();

  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1B63BE954();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_1B63151A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v2 + v13, v9, &unk_1EB943210, &unk_1B63C3F50);
  [v12 unlock];
  if (*(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  sub_1B628C510(v9, v7, &unk_1EB943210, &unk_1B63C3F50);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943210, &unk_1B63C3F50);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  if ((*(ObjectType + 592))(v15))
  {
  }

  else
  {
    v17 = sub_1B63BF364();

    if ((v17 & 1) == 0)
    {
      v18 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      sub_1B628276C();
      goto LABEL_10;
    }
  }

  v18 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();
LABEL_10:

  v19 = sub_1B629409C();
  v21 = v20;

  if (v21)
  {
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    v22 = v19;
LABEL_16:
    sub_1B6295C20(v22);
    v30(v32, 1, 1, v10);
    return sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  }

  [v12 lock];
  v23 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v24 = v23;
  [v12 property descriptor for VisitedLocation.hidden];
  if (!v23)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v9;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B631A5A8;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_72_1;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  sub_1B62B1FC0(v19);

  [v19 performBlockAndWait_];
  sub_1B6295C20(v19);

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  return result;
}

void sub_1B63156A4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  if (a3)
  {
    sub_1B63BE974();
    v11 = sub_1B63BE994();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_1B63BE994();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = a1;
  a4(v10);
}

uint64_t sub_1B63157C0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943210, &unk_1B63C3F50);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B631A5D0;
    *(v15 + 24) = v14;
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *(v2 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B629A8E8(0, v17[2] + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B629A8E8((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1B62B9488;
    v21[5] = v15;
    *(v2 + v16) = v17;
    swift_endAccess();
  }

  [v11 unlock];
  return sub_1B6284EAC(a1, &unk_1EB943210, &unk_1B63C3F50);
}

uint64_t sub_1B6315A90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  sub_1B628C510(a1, &v14 - v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = *a2;
  return a5(v11);
}

void sub_1B6315B44(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1B63BE994();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27[-v14];
  v28[0] = 0;
  v16 = [a1 existingObjectWithID:a2 error:v28];
  v17 = v28[0];
  if (v16)
  {
    v18 = v16;
    type metadata accessor for MapsSyncManagedReviewedPlace();
    v19 = swift_dynamicCastClass();
    v20 = v17;
    if (v19 && (v21 = [v19 *a4]) != 0)
    {
      v22 = v21;
      sub_1B63BE974();

      v23 = *(v9 + 32);
      v23(v15, v13, v8);
      sub_1B6284EAC(a3, &unk_1EB943210, &unk_1B63C3F50);
      v23(a3, v15, v8);
      (*(v9 + 56))(a3, 0, 1, v8);
    }

    else
    {
    }
  }

  else
  {
    v24 = v28[0];
    v25 = sub_1B63BE824();

    swift_willThrow();
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1B6315D7C(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  type metadata accessor for MapsSyncManagedReviewedPlace();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    sub_1B628C510(a3, v10, &unk_1EB943210, &unk_1B63C3F50);
    v13 = sub_1B63BE994();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v10, 1, v13);
    v16 = a2;
    v17 = 0;
    if (v15 != 1)
    {
      v17 = sub_1B63BE954();
      (*(v14 + 8))(v10, v13);
    }

    [v12 *a4];
  }
}

void (*sub_1B6315EE8(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1B63151A4(v4);
  return sub_1B6315FA4;
}

void sub_1B6315FBC(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (a2)
  {
    sub_1B628C510(a1[2], v4, &unk_1EB943210, &unk_1B63C3F50);
    a3(v4);
    sub_1B6284EAC(v5, &unk_1EB943210, &unk_1B63C3F50);
  }

  else
  {
    a3(a1[2]);
  }

  free(v5);

  free(v4);
}

id sub_1B631607C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1B63BE904();
    sub_1B6284F64(v5, v7);
    v8 = v9;
  }

  return v8;
}

uint64_t sub_1B6316108()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__mapItemStorage);
  v5 = *(v1 + OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8);
  v23 = v4;
  v24 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    sub_1B6291034(v4, v5);
    v8 = 0;
    v9 = v4;
LABEL_17:
    sub_1B6284F64(v4, v5);
    sub_1B62B1F7C(v8);
    return v9;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v22[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = &v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B631A664;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_90_0;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    v9 = v23;
    sub_1B6291034(v23, v24);
    v4 = v23;
    v5 = v24;
    v8 = sub_1B631A664;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1B63164D8(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  if (a3)
  {
    v6 = a1;
    v7 = a3;
    v8 = sub_1B63BE924();
    v10 = v9;
  }

  else
  {
    v11 = a1;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  a4(v8, v10);
  sub_1B6284F64(v8, v10);
}

uint64_t sub_1B6316580(uint64_t a1, unint64_t a2)
{
  sub_1B631A68C(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B63165C8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  sub_1B6291034(*a1, v7);
  a5(v6, v7);

  return sub_1B6284F64(v6, v7);
}

void sub_1B631662C(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v21];
  v7 = v21[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedReviewedPlace();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9 && (v11 = [v9 *a4]) != 0)
    {
      v12 = v11;
      v13 = sub_1B63BE924();
      v15 = v14;

      v16 = *a3;
      v17 = a3[1];
      *a3 = v13;
      a3[1] = v15;
      sub_1B6284F64(v16, v17);
    }

    else
    {
    }
  }

  else
  {
    v18 = v21[0];
    v19 = sub_1B63BE824();

    swift_willThrow();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1B6316750(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (a4 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B63BE904();
    }

    v12 = v11;
    [v9 *a5];
  }
}

uint64_t (*sub_1B631681C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6316108();
  a1[1] = v3;
  return sub_1B6316864;
}

uint64_t sub_1B631687C(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  if (a2)
  {
    sub_1B6291034(v7, v5);
    a3(v4, v5);
    sub_1B6284F64(v4, v5);
  }

  else
  {
    a3(v7, v5);
  }

  return sub_1B6284F64(v4, v5);
}

id sub_1B631696C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSReviewedPlace__muid) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631A85C;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B6316B08(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__muid);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6316B8C;
}

id sub_1B6316C1C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSReviewedPlace__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631A880;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6316DB8(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B6316E28(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6316EAC;
}

uint64_t sub_1B6316F14()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__rating);
  v25 = v4;
  v5 = v4;
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {
    v8 = v5;
LABEL_13:
    v14 = 0;
LABEL_14:

    sub_1B62B1F7C(v14);
    return v4;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v9 = sub_1B63BF364();

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v11 = sub_1B629409C();
  v13 = v12;

  if (v13)
  {
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v11);
    v4 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v16 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v17 = v16;
  [v3 unlock];
  if (!v16)
  {
    sub_1B6295C20(v11);
    v4 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = &v25;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B631A8A4;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_115_0;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  sub_1B62B1FC0(v11);

  [v11 performBlockAndWait_];
  sub_1B6295C20(v11);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = v25;
    v23 = v25;
    v14 = sub_1B631A8A4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63172D4(void *a1)
{
  sub_1B631A8CC(a1);
}

void (*sub_1B631730C(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6316F14();
  return sub_1B6317354;
}

uint64_t sub_1B63173B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier);
  v25 = v4;
  v5 = v4;
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {
    v8 = v5;
LABEL_13:
    v14 = 0;
LABEL_14:

    sub_1B62B1F7C(v14);
    return v4;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v9 = sub_1B63BF364();

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v11 = sub_1B629409C();
  v13 = v12;

  if (v13)
  {
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v11);
    v4 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v16 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v17 = v16;
  [v3 unlock];
  if (!v16)
  {
    sub_1B6295C20(v11);
    v4 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = &v25;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B631AA7C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_126;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  sub_1B62B1FC0(v11);

  [v11 performBlockAndWait_];
  sub_1B6295C20(v11);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = v25;
    v23 = v25;
    v14 = sub_1B631AA7C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6317770(void *a1)
{
  sub_1B631AAA4(a1);
}

void sub_1B63177A8(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v16];
  v7 = v16[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedReviewedPlace();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9)
    {
      v11 = [v9 *a4];

      if (v11)
      {
        v12 = *a3;
        *a3 = v11;
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v16[0];
    v14 = sub_1B63BE824();

    swift_willThrow();
  }

  v15 = *MEMORY[0x1E69E9840];
}

void (*sub_1B63178BC(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B63173B0();
  return sub_1B6317904;
}

uint64_t sub_1B631798C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount);
  [v1 unlock];
  return v2;
}

id sub_1B6317A38(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631AC54;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6317BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setUploadedPhotosCount_];
  }

  return result;
}

id (*sub_1B6317C38(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B6317CBC;
}

uint64_t sub_1B6317D54()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSReviewedPlace__version);
  [v1 unlock];
  return v2;
}

id sub_1B6317E00(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSReviewedPlace__version) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631AC5C;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6317F9C(uint64_t a1, uint64_t a2, __int16 a3)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setVersion_];
  }

  return result;
}

id (*sub_1B6318000(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__version);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B6318084;
}

void sub_1B6318108(uint64_t a1, unint64_t a2, void **a3, uint64_t a4)
{
  if (!a1 && a2)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v29 = a3;
      v30 = a4;
      v31 = a2;
      v32 = sub_1B63BF044();
      a2 = v31;
      a4 = v30;
      a3 = v29;
      if (!v32)
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v34 = a3;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = a4;
      v6 = MEMORY[0x1B8C92830](0);
    }

    else
    {
      if (!*(v4 + 16))
      {
        __break(1u);
        return;
      }

      v5 = a4;
      v6 = *(a2 + 32);
    }

    v35 = v6;
    type metadata accessor for MapsSyncManagedReviewedPlace();
    v7 = swift_dynamicCastClass();
    if (v7 && (v8 = [v7 anonymousCredential]) != 0)
    {
      v9 = v8;
      v10 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      v33 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad);
      v11 = objc_allocWithZone(type metadata accessor for AnonymousCredential());
      *&v11[OBJC_IVAR___MSAnonymousCredential__anonymousId] = xmmword_1B63C3E40;
      *&v11[OBJC_IVAR___MSAnonymousCredential__mapsToken] = xmmword_1B63C3E40;
      v12 = OBJC_IVAR___MSAnonymousCredential__mapsTokenCreatedAt;
      v13 = sub_1B63BE994();
      v14 = *(*(v13 - 8) + 56);
      v14(&v11[v12], 1, 1, v13);
      *&v11[OBJC_IVAR___MSAnonymousCredential__mapsTokenTTL] = 0;
      *&v11[OBJC_IVAR___MSAnonymousCredential__positionIndex] = 0;
      v15 = MEMORY[0x1E69E7CC0];
      *&v11[OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges] = MEMORY[0x1E69E7CC0];
      *&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
      v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      v17 = objc_allocWithZone(MEMORY[0x1E696AD10]);
      v18 = v9;
      v19 = v10;
      *&v11[v16] = [v17 init];
      *&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v15;
      v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
      v21 = type metadata accessor for MapsSyncHashing();
      (*(*(v21 - 8) + 56))(&v11[v20], 1, 1, v21);
      v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
      v23 = sub_1B63BEA04();
      (*(*(v23 - 8) + 56))(&v11[v22], 1, 1, v23);
      v14(&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v13);
      v14(&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v13);
      *&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v19;
      v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v33;
      v36.receiver = v11;
      v36.super_class = type metadata accessor for MapsSyncObject();
      v24 = v19;
      v25 = objc_msgSendSuper2(&v36, sel_init);
      v26 = [v18 objectID];
      v27 = *(v25 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
      *(v25 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v26;

      (*((*MEMORY[0x1E69E7D40] & *v25) + 0x218))(v18, v33, 1);
      v28 = *v34;
      *v34 = v25;
    }

    else
    {
    }
  }
}

uint64_t sub_1B6318640(void (*a1)(uint64_t, uint64_t *, char *))
{
  v9 = 0;
  v3 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v1;
  v5 = v1;
  v6 = v3;
  a1(inited, &v9, v5);

  swift_setDeallocating();
  v7 = *(inited + 16);
  swift_arrayDestroy();
  return v9;
}

void sub_1B6318708(uint64_t a1, unint64_t a2, void **a3, uint64_t a4)
{
  if (!a1 && a2)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v32 = a3;
      v33 = a4;
      v34 = a2;
      v35 = sub_1B63BF044();
      a2 = v34;
      a4 = v33;
      a3 = v32;
      if (!v35)
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = a4;
      v6 = a3;
      v7 = MEMORY[0x1B8C92830](0);
    }

    else
    {
      if (!*(v4 + 16))
      {
        __break(1u);
        return;
      }

      v5 = a4;
      v6 = a3;
      v7 = *(a2 + 32);
    }

    v36 = v7;
    type metadata accessor for MapsSyncManagedReviewedPlace();
    v8 = swift_dynamicCastClass();
    if (v8 && (v9 = [v8 communityID]) != 0)
    {
      v10 = v9;
      v11 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      v12 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad);
      v13 = objc_allocWithZone(type metadata accessor for CommunityID());
      v14 = &v13[OBJC_IVAR___MSCommunityID__communityIdentifier];
      *v14 = 0;
      v14[1] = 0;
      v13[OBJC_IVAR___MSCommunityID__expired] = 0;
      *&v13[OBJC_IVAR___MSCommunityID__positionIndex] = 0;
      *&v13[OBJC_IVAR___MSCommunityID__usedCount] = 0;
      v15 = MEMORY[0x1E69E7CC0];
      *&v13[OBJC_IVAR___MSCommunityID__rapRecordChanges] = MEMORY[0x1E69E7CC0];
      *&v13[OBJC_IVAR___MSCommunityID__reviewedPlaceChanges] = v15;
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
      v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      v17 = objc_allocWithZone(MEMORY[0x1E696AD10]);
      v18 = v10;
      v19 = v11;
      *&v13[v16] = [v17 init];
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v15;
      v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
      v21 = type metadata accessor for MapsSyncHashing();
      (*(*(v21 - 8) + 56))(&v13[v20], 1, 1, v21);
      v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
      v23 = sub_1B63BEA04();
      (*(*(v23 - 8) + 56))(&v13[v22], 1, 1, v23);
      v24 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
      v25 = sub_1B63BE994();
      v26 = *(*(v25 - 8) + 56);
      v26(&v13[v24], 1, 1, v25);
      v26(&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v25);
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v19;
      v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v12;
      v37.receiver = v13;
      v37.super_class = type metadata accessor for MapsSyncObject();
      v27 = v19;
      v28 = objc_msgSendSuper2(&v37, sel_init);
      v29 = [v18 objectID];
      v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
      *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

      (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v18, v12, 1);
      v31 = *v6;
      *v6 = v28;
    }

    else
    {
    }
  }
}

void sub_1B6318B54(void *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t, void), void (*a4)(uint64_t, void **, char *), uint64_t a5)
{
  if (a1)
  {
    v16 = a1;
    a3(v5, 0, a2, 0);
  }

  else
  {
    v17 = 0;
    v10 = *&v5[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D70;
    *(inited + 32) = v5;
    v12 = v5;
    v13 = v10;
    a4(inited, &v17, v12);

    swift_setDeallocating();
    v14 = *(inited + 16);
    swift_arrayDestroy();
    v15 = v17;
    if (v17)
    {
      a3(v12, 1, a5, 0);
    }
  }
}

void *sub_1B6318D18(void *a1, void *a2, int a3, int a4)
{
  v49 = a4;
  v51 = a3;
  v52 = a2;
  v53 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v44 - v10;
  v4[OBJC_IVAR___MSReviewedPlace__hasUserReviewed] = 0;
  v11 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
  v12 = sub_1B63BE994();
  v13 = *(*(v12 - 8) + 56);
  v13(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR___MSReviewedPlace__latitude] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__longitude] = 0;
  v50 = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation] = xmmword_1B63C3E40;
  v13(&v4[OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed], 1, 1, v12);
  *&v4[OBJC_IVAR___MSReviewedPlace__mapItemStorage] = v50;
  *&v4[OBJC_IVAR___MSReviewedPlace__muid] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__rating] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__version] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v16 = type metadata accessor for MapsSyncHashing();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v18 = sub_1B63BEA04();
  v19 = *(*(v18 - 8) + 56);
  v19(&v4[v17], 1, 1, v18);
  v13(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v12);
  v13(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v12);
  v20 = v51;
  v21 = v52;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v52;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v20;
  v22 = type metadata accessor for MapsSyncObject();
  v54.receiver = v4;
  v54.super_class = v22;
  v23 = v53;
  v24 = v21;
  v25 = objc_msgSendSuper2(&v54, sel_init);
  v26 = v25;
  if (v23)
  {
    v27 = v25;
    v28 = [v23 objectID];
    v29 = *(v27 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v27 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v28;

    (*((*MEMORY[0x1E69E7D40] & *v27) + 0x218))(v23, v20 & 1, v49 & 1);
  }

  else
  {
    v30 = v25;
    v31 = v48;
    sub_1B63BE9F4();
    v19(v31, 0, 1, v18);
    v32 = v45;
    sub_1B628C510(v31, v45, &unk_1EB943680, qword_1B63C4070);
    v33 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v32, &v30[v33], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v34 = v47;
    sub_1B628C510(v31, v47, &unk_1EB943680, qword_1B63C4070);
    v35 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v36 = swift_allocObject();
    sub_1B628A128(v34, v36 + v35, &unk_1EB943680, qword_1B63C4070);
    v37 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v38 = *&v30[v37];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v30[v37] = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1B629A8E8(0, v38[2] + 1, 1, v38);
      *&v30[v37] = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    if (v41 >= v40 >> 1)
    {
      v38 = sub_1B629A8E8((v40 > 1), v41 + 1, 1, v38);
    }

    v38[2] = v41 + 1;
    v42 = &v38[2 * v41];
    v42[4] = sub_1B62B2D5C;
    v42[5] = v36;
    *&v30[v37] = v38;
    swift_endAccess();

    sub_1B6284EAC(v31, &unk_1EB943680, qword_1B63C4070);
  }

  return v26;
}

void sub_1B6319358()
{
  sub_1B6284EAC(v0 + OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate, &unk_1EB943210, &unk_1B63C3F50);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation), *(v0 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8));
  sub_1B6284EAC(v0 + OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSReviewedPlace__mapItemStorage), *(v0 + OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8));

  v1 = *(v0 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier);
}

id ReviewedPlace.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewedPlace();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B6319544(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v67 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v67 - v16;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedReviewedPlace();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = a1;
    v21 = [v19 hasUserReviewed];
    *(v2 + OBJC_IVAR___MSReviewedPlace__hasUserReviewed) = v21;
    if (a2)
    {
      v22 = sub_1B63BE994();
      (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    }

    else
    {
      v23 = [v19 lastSuggestedReviewDate];
      if (v23)
      {
        v24 = v23;
        sub_1B63BE974();

        v25 = sub_1B63BE994();
        (*(*(v25 - 8) + 56))(v15, 0, 1, v25);
      }

      else
      {
        v26 = sub_1B63BE994();
        (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
      }

      sub_1B628A128(v15, v17, &unk_1EB943210, &unk_1B63C3F50);
    }

    v27 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
    swift_beginAccess();
    sub_1B6282DFC(v17, v2 + v27, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if (a2)
    {
      v28 = *(v2 + OBJC_IVAR___MSReviewedPlace__latitude);
      *(v2 + OBJC_IVAR___MSReviewedPlace__latitude) = 0;

      v29 = *(v2 + OBJC_IVAR___MSReviewedPlace__longitude);
      *(v2 + OBJC_IVAR___MSReviewedPlace__longitude) = 0;

      v30 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
      v31 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8);
      *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation) = xmmword_1B63C3E40;
      sub_1B6284F64(v30, v31);
      v32 = sub_1B63BE994();
      (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    }

    else
    {
      v33 = [v19 latitude];
      v34 = *(v2 + OBJC_IVAR___MSReviewedPlace__latitude);
      *(v2 + OBJC_IVAR___MSReviewedPlace__latitude) = v33;

      v35 = [v19 longitude];
      v36 = *(v2 + OBJC_IVAR___MSReviewedPlace__longitude);
      *(v2 + OBJC_IVAR___MSReviewedPlace__longitude) = v35;

      v37 = [v19 mapItemIdComparableRepresentation];
      if (v37)
      {
        v38 = v37;
        v39 = sub_1B63BE924();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xF000000000000000;
      }

      v42 = (v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
      v43 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
      v44 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8);
      *v42 = v39;
      v42[1] = v41;
      sub_1B6284F64(v43, v44);
      v45 = [v19 mapItemLastRefreshed];
      if (v45)
      {
        v46 = v45;
        sub_1B63BE974();

        v47 = 0;
      }

      else
      {
        v47 = 1;
      }

      v48 = sub_1B63BE994();
      (*(*(v48 - 8) + 56))(v9, v47, 1, v48);
      sub_1B628A128(v9, v12, &unk_1EB943210, &unk_1B63C3F50);
    }

    v49 = OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v12, v2 + v49, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if ((a2 & 1) != 0 || (v50 = [v19 mapItemStorage]) == 0)
    {
      v52 = 0;
      v54 = 0xF000000000000000;
    }

    else
    {
      v51 = v50;
      v52 = sub_1B63BE924();
      v54 = v53;
    }

    v55 = (v2 + OBJC_IVAR___MSReviewedPlace__mapItemStorage);
    v56 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemStorage);
    v57 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8);
    *v55 = v52;
    v55[1] = v54;
    sub_1B6284F64(v56, v57);
    v58 = [v19 muid];
    *(v2 + OBJC_IVAR___MSReviewedPlace__muid) = v58;
    v59 = [v19 positionIndex];
    *(v2 + OBJC_IVAR___MSReviewedPlace__positionIndex) = v59;
    if (a2)
    {
      v60 = *(v2 + OBJC_IVAR___MSReviewedPlace__rating);
      *(v2 + OBJC_IVAR___MSReviewedPlace__rating) = 0;

      v61 = 0;
    }

    else
    {
      v62 = [v19 rating];
      v63 = *(v2 + OBJC_IVAR___MSReviewedPlace__rating);
      *(v2 + OBJC_IVAR___MSReviewedPlace__rating) = v62;

      v61 = [v19 resultProviderIdentifier];
    }

    v64 = *(v2 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier);
    *(v2 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier) = v61;

    v65 = [v19 uploadedPhotosCount];
    *(v2 + OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount) = v65;
    v66 = [v19 version];

    *(v2 + OBJC_IVAR___MSReviewedPlace__version) = v66;
  }
}

id sub_1B6319B20(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15)
{
  v48 = a4;
  v42 = a8;
  v46 = a3;
  v45 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - v24;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDB0F2A8;
  v50 = a2;
  sub_1B628C510(a2, v25, &unk_1EB943210, &unk_1B63C3F50);
  v27 = sub_1B63BE994();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v29(v25, 1, v27);
  v51 = 0;
  if (v30 != 1)
  {
    v51 = sub_1B63BE954();
    (*(v28 + 8))(v25, v27);
  }

  if (a6 >> 60 == 15)
  {
    v43 = 0;
  }

  else
  {
    sub_1B629119C(a5, a6);
    v43 = sub_1B63BE904();
    sub_1B6284F64(a5, a6);
  }

  sub_1B628C510(a7, v23, &unk_1EB943210, &unk_1B63C3F50);
  v31 = v29(v23, 1, v27);
  v49 = a7;
  if (v31 == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_1B63BE954();
    (*(v28 + 8))(v23, v27);
  }

  if (a9 >> 60 == 15)
  {
    v32 = 0;
  }

  else
  {
    v33 = v26;
    v34 = v42;
    sub_1B629119C(v42, a9);
    v32 = sub_1B63BE904();
    v35 = v34;
    v26 = v33;
    sub_1B6284F64(v35, a9);
  }

  WORD2(v41) = a15;
  LODWORD(v41) = a14;
  v36 = v44;
  v37 = v51;
  v38 = v43;
  v39 = [v47 initWithStore:v26 hasUserReviewed:v45 & 1 lastSuggestedReviewDate:v51 latitude:v46 longitude:v48 mapItemIdComparableRepresentation:v43 mapItemLastRefreshed:v44 mapItemStorage:v32 muid:a10 positionIndex:a11 rating:a12 resultProviderIdentifier:a13 uploadedPhotosCount:v41 version:?];

  sub_1B6284EAC(v49, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v50, &unk_1EB943210, &unk_1B63C3F50);
  return v39;
}

void sub_1B6319E74(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 17) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v6 + v11 + 16) & ~v6;
  v13 = (v8 + v12) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B6312ECC(a1, a2, *(v2 + 16), v2 + v7, *(v2 + v9), *(v2 + v10), *(v2 + v11), *(v2 + v11 + 8), v2 + v12, *(v2 + v13), *(v2 + v13 + 8), *(v2 + v14), *(v2 + v15), *(v2 + v16), *(v2 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 4));
}

id sub_1B631A028(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSReviewedPlace__latitude);
  *(v2 + OBJC_IVAR___MSReviewedPlace__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B631B870;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631A200(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSReviewedPlace__longitude);
  *(v2 + OBJC_IVAR___MSReviewedPlace__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B631B84C;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631A3D8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
  v8 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
  v9 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B631B828;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id sub_1B631A68C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSReviewedPlace__mapItemStorage);
  v8 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemStorage);
  v9 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B631B804;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id sub_1B631A8CC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSReviewedPlace__rating);
  *(v2 + OBJC_IVAR___MSReviewedPlace__rating) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B631B7E0;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631AAA4(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier);
  *(v2 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B631B7BC;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

uint64_t type metadata accessor for ReviewedPlace()
{
  result = qword_1EB942EB0;
  if (!qword_1EB942EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B631ACB0()
{
  sub_1B628CC34();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id ServerEvaluationStatus.__allocating_init(arpStatus:positionIndex:rapStatus:reliabilityStatus:)(char a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  if (qword_1EDB0F2A0 != -1)
  {
    v13 = v10;
    swift_once();
    v10 = v13;
  }

  v11 = qword_1EDB0F2A8;

  return [v10 initWithStore:v11 arpStatus:a1 & 1 positionIndex:a2 rapStatus:a3 & 1 reliabilityStatus:a4 & 1];
}

id ServerEvaluationStatus.init(arpStatus:positionIndex:rapStatus:reliabilityStatus:)(char a1, uint64_t a2, char a3, char a4)
{
  if (qword_1EDB0F2A0 != -1)
  {
    v10 = a1;
    v11 = a3;
    swift_once();
    a1 = v10;
    a3 = v11;
  }

  v7 = a3 & 1;
  v8 = qword_1EDB0F2A8;

  return [v4 initWithStore:v8 arpStatus:a1 & 1 positionIndex:a2 rapStatus:v7 reliabilityStatus:a4 & 1];
}

char *ServerEvaluationStatus.__allocating_init(store:arpStatus:positionIndex:rapStatus:reliabilityStatus:)(void *a1, char a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = [objc_allocWithZone(v6) initWithStore_];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v14 = *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v15 = v12;
  [v14 lock];
  v16 = *&v12[v13];
  v15[OBJC_IVAR___MSServerEvaluationStatus__arpStatus] = a2;
  *&v15[OBJC_IVAR___MSServerEvaluationStatus__positionIndex] = a3;
  v15[OBJC_IVAR___MSServerEvaluationStatus__rapStatus] = a4;
  v15[OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 33) = a5;
  sub_1B6282B88();
  v18 = *&v12[v13];
  if (sub_1B63BEF24())
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B631D404;
    *(v19 + 24) = v17;
    v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v21 = *&v15[v20];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v20] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1B629A8E8(0, v21[2] + 1, 1, v21);
      *&v15[v20] = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1B629A8E8((v23 > 1), v24 + 1, 1, v21);
    }

    v21[2] = v24 + 1;
    v25 = &v21[2 * v24];
    v25[4] = sub_1B62B8188;
    v25[5] = v19;
    *&v15[v20] = v21;
    swift_endAccess();
  }

  [*&v12[v13] unlock];

  return v15;
}

char *ServerEvaluationStatus.init(store:arpStatus:positionIndex:rapStatus:reliabilityStatus:)(void *a1, char a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = [v6 initWithStore_];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v14 = *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v15 = v12;
  [v14 lock];
  v16 = *&v12[v13];
  v15[OBJC_IVAR___MSServerEvaluationStatus__arpStatus] = a2;
  *&v15[OBJC_IVAR___MSServerEvaluationStatus__positionIndex] = a3;
  v15[OBJC_IVAR___MSServerEvaluationStatus__rapStatus] = a4;
  v15[OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 33) = a5;
  sub_1B6282B88();
  v18 = *&v12[v13];
  if (sub_1B63BEF24())
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B631D940;
    *(v19 + 24) = v17;
    v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v21 = *&v15[v20];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v20] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1B629A8E8(0, v21[2] + 1, 1, v21);
      *&v15[v20] = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1B629A8E8((v23 > 1), v24 + 1, 1, v21);
    }

    v21[2] = v24 + 1;
    v25 = &v21[2 * v24];
    v25[4] = sub_1B62B9488;
    v25[5] = v19;
    *&v15[v20] = v21;
    swift_endAccess();
  }

  [*&v12[v13] unlock];

  return v15;
}

void sub_1B631BF10(uint64_t a1, void *a2, char a3, uint64_t a4, char a5, char a6)
{
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a2;
    [v12 setArpStatus_];
    [v12 setPositionIndex_];
    [v12 setRapStatus_];
    [v12 setReliabilityStatus_];
  }
}

id sub_1B631C160(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSServerEvaluationStatus__arpStatus) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631D418;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B631C2FC(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSServerEvaluationStatus__arpStatus);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B631C380;
}

uint64_t sub_1B631C418()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSServerEvaluationStatus__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B631C4C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSServerEvaluationStatus__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631D43C;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631C660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B631C6C4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSServerEvaluationStatus__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B631C748;
}

id sub_1B631C7D8(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSServerEvaluationStatus__rapStatus) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631D444;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B631C974(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSServerEvaluationStatus__rapStatus);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B631C9F8;
}

uint64_t sub_1B631CA2C(char *a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v7 = a1;
  [v6 lock];
  v8 = v7[*a3];
  [*&a1[v5] unlock];

  return v8;
}

uint64_t sub_1B631CAB0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + *a1);
  [v3 unlock];
  return v4;
}

id sub_1B631CB64(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631D468;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631CD00(uint64_t a1, uint64_t a2, char a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B631CD70(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B631CDF4;
}

void *sub_1B631CE78(void *a1, void *a2, int a3, int a4)
{
  v50 = a4;
  v51 = a3;
  v52 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v45 - v11;
  v4[OBJC_IVAR___MSServerEvaluationStatus__arpStatus] = 0;
  *&v4[OBJC_IVAR___MSServerEvaluationStatus__positionIndex] = 0;
  v4[OBJC_IVAR___MSServerEvaluationStatus__rapStatus] = 0;
  v4[OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v14 = type metadata accessor for MapsSyncHashing();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v16 = sub_1B63BEA04();
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v19 = sub_1B63BE994();
  v20 = *(*(v19 - 8) + 56);
  v21 = &v4[v18];
  v22 = v51;
  v20(v21, 1, 1, v19);
  v20(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v19);
  v23 = v52;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v22;
  v24 = type metadata accessor for MapsSyncObject();
  v53.receiver = v4;
  v53.super_class = v24;
  v25 = a2;
  v26 = objc_msgSendSuper2(&v53, sel_init);
  v27 = v26;
  if (v23)
  {
    v28 = v26;
    v29 = [v23 objectID];
    v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

    (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v23, v22 & 1, v50 & 1);
  }

  else
  {
    v31 = v26;
    v32 = v49;
    sub_1B63BE9F4();
    v17(v32, 0, 1, v16);
    v33 = v46;
    sub_1B62B2C0C(v32, v46);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v33, &v31[v34]);
    swift_endAccess();
    v35 = v48;
    sub_1B62B2C0C(v32, v48);
    v36 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v37 = swift_allocObject();
    sub_1B62B2CEC(v35, v37 + v36);
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v31[v38];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v38] = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v31[v38] = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1B629A8E8((v41 > 1), v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    v43 = &v39[2 * v42];
    v43[4] = sub_1B62B2D5C;
    v43[5] = v37;
    *&v31[v38] = v39;
    swift_endAccess();

    sub_1B62B2DF0(v32);
  }

  return v27;
}

id ServerEvaluationStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerEvaluationStatus();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ServerEvaluationStatus()
{
  result = qword_1EB943310;
  if (!qword_1EB943310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  [*(*a1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  LOBYTE(a2) = *(v5 + *a2);
  result = [*(v5 + v6) unlock];
  *a3 = a2;
  return result;
}

void sub_1B631D878(void *a1)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 arpStatus];
    *(v1 + OBJC_IVAR___MSServerEvaluationStatus__arpStatus) = v6;
    v7 = [v4 positionIndex];
    *(v1 + OBJC_IVAR___MSServerEvaluationStatus__positionIndex) = v7;
    v8 = [v4 rapStatus];
    *(v1 + OBJC_IVAR___MSServerEvaluationStatus__rapStatus) = v8;
    LOBYTE(v4) = [v4 reliabilityStatus];

    *(v1 + OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus) = v4;
  }
}

id SharedTripBlockedItem.__allocating_init(expiryTime:sharedTripIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = objc_allocWithZone(v4);
  if (qword_1EDB0F2A0 != -1)
  {
    v13 = v7;
    swift_once();
    v7 = v13;
  }

  v8 = qword_1EDB0F2A8;
  if (a3)
  {
    v9 = v7;
    v10 = sub_1B63BEBC4();

    v7 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 initWithStore:v8 expiryTime:a1 sharedTripIdentifier:v10];

  return v11;
}

id SharedTripBlockedItem.init(expiryTime:sharedTripIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDB0F2A0 != -1)
  {
    v9 = a3;
    swift_once();
    a3 = v9;
  }

  v5 = qword_1EDB0F2A8;
  if (a3)
  {
    v6 = sub_1B63BEBC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithStore:v5 expiryTime:a1 sharedTripIdentifier:v6];

  return v7;
}

char *SharedTripBlockedItem.init(store:expiryTime:sharedTripIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [v5 initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  v14 = *&v10[v11];
  *&v13[OBJC_IVAR___MSSharedTripBlockedItem__expiryTime] = a2;
  v15 = &v13[OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier];
  v16 = *&v13[OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier + 8];
  *v15 = a3;
  *(v15 + 1) = a4;

  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  sub_1B6282B88();
  v18 = *&v10[v11];
  if (sub_1B63BEF24())
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B631F2B0;
    *(v19 + 24) = v17;
    v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v21 = *&v13[v20];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v20] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1B629A8E8(0, v21[2] + 1, 1, v21);
      *&v13[v20] = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1B629A8E8((v23 > 1), v24 + 1, 1, v21);
    }

    v21[2] = v24 + 1;
    v25 = &v21[2 * v24];
    v25[4] = sub_1B62B8188;
    v25[5] = v19;
    *&v13[v20] = v21;
    swift_endAccess();
  }

  [*&v10[v11] unlock];

  return v13;
}

void sub_1B631DE2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    [v9 setExpiryTime_];
    if (a5)
    {
      v11 = sub_1B63BEBC4();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v9 setSharedTripIdentifier_];
  }
}

uint64_t sub_1B631E08C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSSharedTripBlockedItem__expiryTime);
  [v1 unlock];
  return v2;
}

id sub_1B631E138(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSSharedTripBlockedItem__expiryTime) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631F2BC;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631E2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setExpiryTime_];
  }

  return result;
}

id (*sub_1B631E338(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSSharedTripBlockedItem__expiryTime);
  [v3 unlock];
  *a1 = v4;
  return sub_1B631E3BC;
}

uint64_t sub_1B631E458()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier);
  v4 = *(v0 + OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B631F2C4;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_19;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B631F2C4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B631E864(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier);
  v8 = *(v3 + OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B631F2D0;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B9488;
    v16[5] = v10;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B631EA1C(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 sharedTripIdentifier]) != 0)
    {
      v10 = v9;
      v11 = sub_1B63BEBD4();
      v13 = v12;

      v14 = a3[1];
      *a3 = v11;
      a3[1] = v13;
    }

    else
    {
    }
  }

  else
  {
    v15 = v18[0];
    v16 = sub_1B63BE824();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1B631EB40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4)
    {
      v9 = sub_1B63BEBC4();
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [v7 setSharedTripIdentifier_];
  }
}

id (*sub_1B631EBF8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B631E458();
  a1[1] = v3;
  return sub_1B631EC40;
}

id sub_1B631EC40(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B631E864(*a1, v2);
  }

  v5 = a1[1];

  sub_1B631E864(v3, v2);
}

void *sub_1B631ED10(void *a1, void *a2, int a3, int a4)
{
  v51 = a4;
  v52 = a3;
  v53 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v46 - v11;
  *&v4[OBJC_IVAR___MSSharedTripBlockedItem__expiryTime] = 0;
  v12 = &v4[OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v15 = type metadata accessor for MapsSyncHashing();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v17 = sub_1B63BEA04();
  v18 = *(*(v17 - 8) + 56);
  v18(&v4[v16], 1, 1, v17);
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v20 = sub_1B63BE994();
  v21 = *(*(v20 - 8) + 56);
  v22 = &v4[v19];
  v23 = v52;
  v21(v22, 1, 1, v20);
  v21(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v20);
  v24 = v53;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v23;
  v25 = type metadata accessor for MapsSyncObject();
  v54.receiver = v4;
  v54.super_class = v25;
  v26 = a2;
  v27 = objc_msgSendSuper2(&v54, sel_init);
  v28 = v27;
  if (v24)
  {
    v29 = v27;
    v30 = [v24 objectID];
    v31 = *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v30;

    (*((*MEMORY[0x1E69E7D40] & *v29) + 0x218))(v24, v23 & 1, v51 & 1);
  }

  else
  {
    v32 = v27;
    v33 = v50;
    sub_1B63BE9F4();
    v18(v33, 0, 1, v17);
    v34 = v47;
    sub_1B62B2C0C(v33, v47);
    v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v34, &v32[v35]);
    swift_endAccess();
    v36 = v49;
    sub_1B62B2C0C(v33, v49);
    v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v38 = swift_allocObject();
    sub_1B62B2CEC(v36, v38 + v37);
    v39 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v40 = *&v32[v39];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v39] = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_1B629A8E8(0, v40[2] + 1, 1, v40);
      *&v32[v39] = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1B629A8E8((v42 > 1), v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    v44 = &v40[2 * v43];
    v44[4] = sub_1B62B2D5C;
    v44[5] = v38;
    *&v32[v39] = v40;
    swift_endAccess();

    sub_1B62B2DF0(v33);
  }

  return v28;
}

id SharedTripBlockedItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedTripBlockedItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharedTripBlockedItem()
{
  result = qword_1EDB0E448;
  if (!qword_1EDB0E448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B631F4F4(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = a1;
    v8 = [v6 expiryTime];
    *(v2 + OBJC_IVAR___MSSharedTripBlockedItem__expiryTime) = v8;
    if ((a2 & 1) != 0 || (v9 = [v6 sharedTripIdentifier]) == 0)
    {

      v11 = 0;
      v13 = 0;
    }

    else
    {
      v10 = v9;
      v11 = sub_1B63BEBD4();
      v13 = v12;
    }

    v14 = (v2 + OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier);
    v15 = *(v2 + OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier + 8);
    *v14 = v11;
    v14[1] = v13;
  }

  return result;
}

id UserRoute.__allocating_init(addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, unint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21)
{
  v22 = v21;
  v30 = objc_allocWithZone(v22);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v31 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v34 = 0;
    if (a4)
    {
LABEL_5:
      v37 = sub_1B63BEBC4();

      goto LABEL_8;
    }
  }

  else
  {
    sub_1B629119C(a1, a2);
    v34 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
    if (a4)
    {
      goto LABEL_5;
    }
  }

  v37 = 0;
LABEL_8:
  if (a6)
  {
    v36 = sub_1B63BEBC4();
  }

  else
  {
    v36 = 0;
  }

  v27 = a13;
  if (a15 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    sub_1B629119C(a14, a15);
    v28 = sub_1B63BE904();
    sub_1B6284F64(a14, a15);
    v27 = a13;
  }

  v33 = [v30 initWithStore:v31 addressObject:v34 customName:v37 customNote:v36 eastLongitude:a7 hikeType:a8 length:a9 northLatitude:a10 originLatitude:a11 originLongitude:a12 positionIndex:v27 routeGeometry:v28 southLatitude:a16 totalAscent:a17 totalDescent:a18 tourIdentifier:a19 transportType:a20 westLongitude:a21];

  sub_1B6284F64(a14, a15);
  sub_1B6284F64(a1, a2);

  return v33;
}

id UserRoute.init(addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, unint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21)
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v36 = 0;
    if (a4)
    {
LABEL_5:
      v30 = sub_1B63BEBC4();

      goto LABEL_8;
    }
  }

  else
  {
    sub_1B629119C(a1, a2);
    v36 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
    if (a4)
    {
      goto LABEL_5;
    }
  }

  v30 = 0;
LABEL_8:
  if (a6)
  {
    v35 = sub_1B63BEBC4();
  }

  else
  {
    v35 = 0;
  }

  v25 = a19;
  v26 = a13;
  if (a15 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    sub_1B629119C(a14, a15);
    v27 = sub_1B63BE904();
    sub_1B6284F64(a14, a15);
    v26 = a13;
    v25 = a19;
  }

  v33 = [v31 initWithStore:v29 addressObject:v36 customName:v30 customNote:v35 eastLongitude:a7 hikeType:a8 length:a9 northLatitude:a10 originLatitude:a11 originLongitude:a12 positionIndex:v26 routeGeometry:v27 southLatitude:a16 totalAscent:a17 totalDescent:a18 tourIdentifier:v25 transportType:a20 westLongitude:a21];

  sub_1B6284F64(a14, a15);
  sub_1B6284F64(a1, a2);

  return v33;
}

char *UserRoute.__allocating_init(store:addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, unint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22)
{
  v23 = v22;
  v29 = [objc_allocWithZone(v23) initWithStore_];
  v30 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v31 = *&v29[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v92 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v93 = v29;
  v32 = v29;
  [v31 lock];
  v82 = *&v29[v30];
  v33 = &v32[OBJC_IVAR___MSUserRoute__addressObject];
  v34 = *&v32[OBJC_IVAR___MSUserRoute__addressObject];
  v35 = *&v32[OBJC_IVAR___MSUserRoute__addressObject + 8];
  v94 = a2;
  v95 = a3;
  *v33 = a2;
  v33[1] = a3;
  sub_1B6291034(a2, a3);
  sub_1B6284F64(v34, v35);
  v36 = &v32[OBJC_IVAR___MSUserRoute__customName];
  v37 = *&v32[OBJC_IVAR___MSUserRoute__customName + 8];
  *v36 = a4;
  *(v36 + 1) = a5;

  v38 = &v32[OBJC_IVAR___MSUserRoute__customNote];
  v39 = *&v32[OBJC_IVAR___MSUserRoute__customNote + 8];
  *v38 = a6;
  *(v38 + 1) = a7;

  v40 = *&v32[OBJC_IVAR___MSUserRoute__eastLongitude];
  *&v32[OBJC_IVAR___MSUserRoute__eastLongitude] = a8;
  v81 = a8;

  *&v32[OBJC_IVAR___MSUserRoute__hikeType] = a9;
  v41 = *&v32[OBJC_IVAR___MSUserRoute__length];
  *&v32[OBJC_IVAR___MSUserRoute__length] = a10;
  v79 = a10;

  v42 = *&v32[OBJC_IVAR___MSUserRoute__northLatitude];
  *&v32[OBJC_IVAR___MSUserRoute__northLatitude] = a11;
  v77 = a11;

  v43 = *&v32[OBJC_IVAR___MSUserRoute__originLatitude];
  *&v32[OBJC_IVAR___MSUserRoute__originLatitude] = a12;
  v76 = a12;

  v44 = *&v32[OBJC_IVAR___MSUserRoute__originLongitude];
  *&v32[OBJC_IVAR___MSUserRoute__originLongitude] = a13;
  v75 = a13;

  *&v32[OBJC_IVAR___MSUserRoute__positionIndex] = a14;
  v45 = &v32[OBJC_IVAR___MSUserRoute__routeGeometry];
  v46 = *&v32[OBJC_IVAR___MSUserRoute__routeGeometry];
  v47 = *&v32[OBJC_IVAR___MSUserRoute__routeGeometry + 8];
  *v45 = a15;
  *(v45 + 1) = a16;
  sub_1B6291034(a15, a16);
  sub_1B6284F64(v46, v47);
  v48 = *&v32[OBJC_IVAR___MSUserRoute__southLatitude];
  *&v32[OBJC_IVAR___MSUserRoute__southLatitude] = a17;
  v74 = a17;

  v49 = *&v32[OBJC_IVAR___MSUserRoute__totalAscent];
  *&v32[OBJC_IVAR___MSUserRoute__totalAscent] = a18;
  v73 = a18;

  v50 = *&v32[OBJC_IVAR___MSUserRoute__totalDescent];
  *&v32[OBJC_IVAR___MSUserRoute__totalDescent] = a19;
  v72 = a19;

  *&v32[OBJC_IVAR___MSUserRoute__tourIdentifier] = a20;
  v51 = *&v32[OBJC_IVAR___MSUserRoute__transportType];
  *&v32[OBJC_IVAR___MSUserRoute__transportType] = a21;
  v71 = a21;

  v52 = *&v32[OBJC_IVAR___MSUserRoute__westLongitude];
  *&v32[OBJC_IVAR___MSUserRoute__westLongitude] = a22;
  v70 = a22;

  v53 = swift_allocObject();
  v53[2] = a2;
  v53[3] = a3;
  v53[4] = a4;
  v53[5] = a5;
  v53[6] = a6;
  v53[7] = a7;
  v53[8] = a8;
  v53[9] = a9;
  v53[10] = a10;
  v53[11] = a11;
  v53[12] = a12;
  v53[13] = a13;
  v53[14] = a14;
  v53[15] = a15;
  v53[16] = a16;
  v53[17] = a17;
  v53[18] = a18;
  v53[19] = a19;
  v53[20] = a20;
  v53[21] = a21;
  v53[22] = a22;
  sub_1B6282B88();
  v54 = *&v93[v92];
  sub_1B6291034(a2, a3);
  v55 = v81;
  v56 = v79;
  v57 = v77;
  v91 = v76;
  v90 = v75;
  sub_1B6291034(a15, a16);
  v58 = v74;
  v59 = v73;
  v60 = v72;
  v89 = v71;
  v87 = v70;
  if (sub_1B63BEF24())
  {
    v83 = v60;
    v86 = v55;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1B6326B90;
    *(v61 + 24) = v53;
    v62 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v63 = *&v32[v62];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v62] = v63;
    v65 = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = sub_1B629A8E8(0, v63[2] + 1, 1, v63);
      *&v32[v62] = v63;
    }

    v67 = v63[2];
    v66 = v63[3];
    if (v67 >= v66 >> 1)
    {
      v63 = sub_1B629A8E8((v66 > 1), v67 + 1, 1, v63);
    }

    v63[2] = v67 + 1;
    v68 = &v63[2 * v67];
    v68[4] = sub_1B62B8188;
    v68[5] = v61;
    *&v32[v62] = v63;
    swift_endAccess();

    v55 = v86;
    v56 = v65;
    v60 = v83;
  }

  else
  {
  }

  [*&v93[v92] unlock];

  sub_1B6284F64(a15, a16);
  sub_1B6284F64(v94, v95);

  return v32;
}

char *UserRoute.init(store:addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, unint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22)
{
  v23 = v22;
  v29 = [v23 initWithStore_];
  v30 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v31 = *&v29[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v92 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v93 = v29;
  v32 = v29;
  [v31 lock];
  v82 = *&v29[v30];
  v33 = &v32[OBJC_IVAR___MSUserRoute__addressObject];
  v34 = *&v32[OBJC_IVAR___MSUserRoute__addressObject];
  v35 = *&v32[OBJC_IVAR___MSUserRoute__addressObject + 8];
  v94 = a2;
  v95 = a3;
  *v33 = a2;
  v33[1] = a3;
  sub_1B6291034(a2, a3);
  sub_1B6284F64(v34, v35);
  v36 = &v32[OBJC_IVAR___MSUserRoute__customName];
  v37 = *&v32[OBJC_IVAR___MSUserRoute__customName + 8];
  *v36 = a4;
  *(v36 + 1) = a5;

  v38 = &v32[OBJC_IVAR___MSUserRoute__customNote];
  v39 = *&v32[OBJC_IVAR___MSUserRoute__customNote + 8];
  *v38 = a6;
  *(v38 + 1) = a7;

  v40 = *&v32[OBJC_IVAR___MSUserRoute__eastLongitude];
  *&v32[OBJC_IVAR___MSUserRoute__eastLongitude] = a8;
  v81 = a8;

  *&v32[OBJC_IVAR___MSUserRoute__hikeType] = a9;
  v41 = *&v32[OBJC_IVAR___MSUserRoute__length];
  *&v32[OBJC_IVAR___MSUserRoute__length] = a10;
  v79 = a10;

  v42 = *&v32[OBJC_IVAR___MSUserRoute__northLatitude];
  *&v32[OBJC_IVAR___MSUserRoute__northLatitude] = a11;
  v77 = a11;

  v43 = *&v32[OBJC_IVAR___MSUserRoute__originLatitude];
  *&v32[OBJC_IVAR___MSUserRoute__originLatitude] = a12;
  v76 = a12;

  v44 = *&v32[OBJC_IVAR___MSUserRoute__originLongitude];
  *&v32[OBJC_IVAR___MSUserRoute__originLongitude] = a13;
  v75 = a13;

  *&v32[OBJC_IVAR___MSUserRoute__positionIndex] = a14;
  v45 = &v32[OBJC_IVAR___MSUserRoute__routeGeometry];
  v46 = *&v32[OBJC_IVAR___MSUserRoute__routeGeometry];
  v47 = *&v32[OBJC_IVAR___MSUserRoute__routeGeometry + 8];
  *v45 = a15;
  *(v45 + 1) = a16;
  sub_1B6291034(a15, a16);
  sub_1B6284F64(v46, v47);
  v48 = *&v32[OBJC_IVAR___MSUserRoute__southLatitude];
  *&v32[OBJC_IVAR___MSUserRoute__southLatitude] = a17;
  v74 = a17;

  v49 = *&v32[OBJC_IVAR___MSUserRoute__totalAscent];
  *&v32[OBJC_IVAR___MSUserRoute__totalAscent] = a18;
  v73 = a18;

  v50 = *&v32[OBJC_IVAR___MSUserRoute__totalDescent];
  *&v32[OBJC_IVAR___MSUserRoute__totalDescent] = a19;
  v72 = a19;

  *&v32[OBJC_IVAR___MSUserRoute__tourIdentifier] = a20;
  v51 = *&v32[OBJC_IVAR___MSUserRoute__transportType];
  *&v32[OBJC_IVAR___MSUserRoute__transportType] = a21;
  v71 = a21;

  v52 = *&v32[OBJC_IVAR___MSUserRoute__westLongitude];
  *&v32[OBJC_IVAR___MSUserRoute__westLongitude] = a22;
  v70 = a22;

  v53 = swift_allocObject();
  v53[2] = a2;
  v53[3] = a3;
  v53[4] = a4;
  v53[5] = a5;
  v53[6] = a6;
  v53[7] = a7;
  v53[8] = a8;
  v53[9] = a9;
  v53[10] = a10;
  v53[11] = a11;
  v53[12] = a12;
  v53[13] = a13;
  v53[14] = a14;
  v53[15] = a15;
  v53[16] = a16;
  v53[17] = a17;
  v53[18] = a18;
  v53[19] = a19;
  v53[20] = a20;
  v53[21] = a21;
  v53[22] = a22;
  sub_1B6282B88();
  v54 = *&v93[v92];
  sub_1B6291034(a2, a3);
  v55 = v81;
  v56 = v79;
  v57 = v77;
  v58 = v76;
  v91 = v75;
  sub_1B6291034(a15, a16);
  v59 = v74;
  v90 = v73;
  v89 = v72;
  v87 = v71;
  v60 = v70;
  if (sub_1B63BEF24())
  {
    v84 = v58;
    v86 = v56;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1B63296B8;
    *(v61 + 24) = v53;
    v62 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v63 = *&v32[v62];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v62] = v63;
    v65 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = sub_1B629A8E8(0, v63[2] + 1, 1, v63);
      *&v32[v62] = v63;
    }

    v67 = v63[2];
    v66 = v63[3];
    if (v67 >= v66 >> 1)
    {
      v63 = sub_1B629A8E8((v66 > 1), v67 + 1, 1, v63);
    }

    v63[2] = v67 + 1;
    v68 = &v63[2 * v67];
    v68[4] = sub_1B62B9488;
    v68[5] = v61;
    *&v32[v62] = v63;
    swift_endAccess();

    v57 = v65;
    v58 = v84;
    v56 = v86;
  }

  else
  {
  }

  [*&v93[v92] unlock];

  sub_1B6284F64(a15, a16);
  sub_1B6284F64(v94, v95);

  return v32;
}

void sub_1B6320878(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  type metadata accessor for MapsSyncManagedUserRoute();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v32 = a2;
    if (a4 >> 60 == 15)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_1B63BE904();
    }

    [v28 setAddressObject_];

    if (a6)
    {
      a6 = sub_1B63BEBC4();
    }

    [v28 setCustomName_];

    if (a8)
    {
      v30 = sub_1B63BEBC4();
    }

    else
    {
      v30 = 0;
    }

    [v28 setCustomNote_];

    [v28 setEastLongitude_];
    [v28 setHikeType_];
    [v28 setLength_];
    [v28 setNorthLatitude_];
    [v28 setOriginLatitude_];
    [v28 setOriginLongitude_];
    [v28 setPositionIndex_];
    if (a17 >> 60 == 15)
    {
      v31 = 0;
    }

    else
    {
      v31 = sub_1B63BE904();
    }

    [v28 setRouteGeometry_];

    [v28 setSouthLatitude_];
    [v28 setTotalAscent_];
    [v28 setTotalDescent_];
    [v28 setTourIdentifier_];
    [v28 setTransportType_];
    [v28 setWestLongitude_];
  }
}

uint64_t sub_1B6320E74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__addressObject);
  v5 = *(v1 + OBJC_IVAR___MSUserRoute__addressObject + 8);
  v23 = v4;
  v24 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    sub_1B6291034(v4, v5);
    v8 = 0;
    v9 = v4;
LABEL_17:
    sub_1B6284F64(v4, v5);
    sub_1B62B1F7C(v8);
    return v9;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v22[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v12);
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = &v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6326BE8;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_20;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    v9 = v23;
    sub_1B6291034(v23, v24);
    v4 = v23;
    v5 = v24;
    v8 = sub_1B6326BE8;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6321244(uint64_t a1, unint64_t a2)
{
  sub_1B6327108(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t (*sub_1B632128C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6320E74();
  a1[1] = v3;
  return sub_1B63212D4;
}

uint64_t sub_1B6321304()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSUserRoute__customName);
  v4 = *(v0 + OBJC_IVAR___MSUserRoute__customName + 8);
  v23[0] = v5;
  v23[1] = v4;

  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 != 0)
  {

LABEL_13:
    v13 = 0;
LABEL_14:

    sub_1B62B1F7C(v13);
    return v5;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v8 = sub_1B63BF364();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v10 = sub_1B629409C();
  v12 = v11;

  if (v12)
  {
    v22[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v10);
    v5 = 0;
    goto LABEL_13;
  }

  [v3 lock];
  v15 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v16 = v15;
  [v3 unlock];
  if (!v15)
  {
    sub_1B6295C20(v10);
    v5 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B63272D8;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_27_2;
  v19 = _Block_copy(v22);
  v20 = v16;
  sub_1B62B1FC0(v10);

  [v10 performBlockAndWait_];
  sub_1B6295C20(v10);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v23[0];

    v13 = sub_1B63272D8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}