id sub_1B63216A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSUserRoute__customName);
  v8 = *(v3 + OBJC_IVAR___MSUserRoute__customName + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6327300;
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

uint64_t (*sub_1B6321860(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6321304();
  a1[1] = v3;
  return sub_1B63218A8;
}

id sub_1B63218D8(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_1B6321958()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSUserRoute__customNote);
  v4 = *(v0 + OBJC_IVAR___MSUserRoute__customNote + 8);
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
  *(v18 + 16) = sub_1B6327324;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_44_2;
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

    v13 = sub_1B6327324;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6321CFC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_1B6321D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSUserRoute__customNote);
  v8 = *(v3 + OBJC_IVAR___MSUserRoute__customNote + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B632734C;
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

void sub_1B6321F3C(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedUserRoute();
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

void sub_1B6322060(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedUserRoute();
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

uint64_t (*sub_1B6322124(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6321958();
  a1[1] = v3;
  return sub_1B632216C;
}

uint64_t sub_1B6322184(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
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

uint64_t sub_1B6322248()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__eastLongitude);
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
  *(v19 + 16) = sub_1B6327370;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_62_3;
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
    v14 = sub_1B6327370;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6322608(void *a1)
{
  sub_1B6327398(a1);
}

void (*sub_1B6322640(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6322248();
  return sub_1B6322688;
}

id sub_1B632270C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSUserRoute__hikeType) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6327548;
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

id (*sub_1B63228A8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__hikeType);
  [v3 unlock];
  *a1 = v4;
  return sub_1B632292C;
}

uint64_t sub_1B6322994()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__length);
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
  *(v19 + 16) = sub_1B632756C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_79;
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
    v14 = sub_1B632756C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6322D54(void *a1)
{
  sub_1B6327594(a1);
}

void (*sub_1B6322D8C(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6322994();
  return sub_1B6322DD4;
}

void sub_1B6322DEC(id *a1, char a2, void (*a3)(id))
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

uint64_t sub_1B6322EB0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__northLatitude);
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
  *(v19 + 16) = sub_1B6327744;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_90_1;
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
    v14 = sub_1B6327744;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6323270(void *a1)
{
  sub_1B632776C(a1);
}

void (*sub_1B63232A8(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6322EB0();
  return sub_1B63232F0;
}

uint64_t sub_1B632334C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__originLatitude);
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
  *(v19 + 16) = sub_1B632791C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_101;
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
    v14 = sub_1B632791C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B632370C(void *a1)
{
  sub_1B6327944(a1);
}

void (*sub_1B6323744(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B632334C();
  return sub_1B632378C;
}

uint64_t sub_1B63237E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__originLongitude);
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
  *(v19 + 16) = sub_1B6327AF4;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_112_0;
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
    v14 = sub_1B6327AF4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6323BA8(void *a1)
{
  sub_1B6327B1C(a1);
}

void (*sub_1B6323BE0(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B63237E8();
  return sub_1B6323C28;
}

id sub_1B6323CAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSUserRoute__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6327CCC;
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

id (*sub_1B6323E48(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6323ECC;
}

id sub_1B6323F08(void *a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1B6323F94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__routeGeometry);
  v5 = *(v1 + OBJC_IVAR___MSUserRoute__routeGeometry + 8);
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
  *(v18 + 16) = sub_1B6327CF0;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_131;
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
    v8 = sub_1B6327CF0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1B6324364(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
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

uint64_t sub_1B632440C(uint64_t a1, unint64_t a2)
{
  sub_1B6327D18(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B6324454(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  sub_1B6291034(*a1, v7);
  a5(v6, v7);

  return sub_1B6284F64(v6, v7);
}

void sub_1B63244B8(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v21];
  v7 = v21[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedUserRoute();
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

void sub_1B63245DC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedUserRoute();
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

uint64_t (*sub_1B63246A8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6323F94();
  a1[1] = v3;
  return sub_1B63246F0;
}

uint64_t sub_1B6324708(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
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

uint64_t sub_1B63247D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__southLatitude);
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
  *(v19 + 16) = sub_1B6327EE8;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_142;
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
    v14 = sub_1B6327EE8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6324B90(void *a1)
{
  sub_1B6327F10(a1);
}

void (*sub_1B6324BC8(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B63247D0();
  return sub_1B6324C10;
}

uint64_t sub_1B6324C6C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__totalAscent);
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
  *(v19 + 16) = sub_1B63280C0;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_153;
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
    v14 = sub_1B63280C0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B632502C(void *a1)
{
  sub_1B63280E8(a1);
}

void (*sub_1B6325064(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6324C6C();
  return sub_1B63250AC;
}

uint64_t sub_1B6325108()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__totalDescent);
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
  *(v19 + 16) = sub_1B6328298;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_164;
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
    v14 = sub_1B6328298;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63254C8(void *a1)
{
  sub_1B63282C0(a1);
}

void (*sub_1B6325500(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6325108();
  return sub_1B6325548;
}

id sub_1B63255CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSUserRoute__tourIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6328470;
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

id sub_1B6325768(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedUserRoute();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B63257D8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__tourIdentifier);
  [v3 unlock];
  *a1 = v4;
  return sub_1B632585C;
}

uint64_t sub_1B63258C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__transportType);
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
  *(v19 + 16) = sub_1B6328494;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_183;
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
    v14 = sub_1B6328494;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6325C84(void *a1)
{
  sub_1B63284BC(a1);
}

void (*sub_1B6325CBC(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B63258C4();
  return sub_1B6325D04;
}

uint64_t sub_1B6325D60()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__westLongitude);
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
  *(v19 + 16) = sub_1B632866C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_194;
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
    v14 = sub_1B632866C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6326120(void *a1)
{
  sub_1B6328694(a1);
}

void sub_1B6326158(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v16];
  v7 = v16[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedUserRoute();
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

void (*sub_1B632626C(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6325D60();
  return sub_1B63262B4;
}

void *sub_1B6326328(void *a1, void *a2, int a3, int a4)
{
  v53 = a4;
  v54 = a3;
  v55 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v49 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v48 - v11;
  *&v4[OBJC_IVAR___MSUserRoute__addressObject] = xmmword_1B63C3E40;
  v12 = &v4[OBJC_IVAR___MSUserRoute__customName];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR___MSUserRoute__customNote];
  *v13 = 0;
  v13[1] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__eastLongitude] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__hikeType] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__length] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__northLatitude] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__originLatitude] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__originLongitude] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__routeGeometry] = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSUserRoute__southLatitude] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__totalAscent] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__totalDescent] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__tourIdentifier] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__transportType] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__westLongitude] = 0;
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
  v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v21 = sub_1B63BE994();
  v22 = *(*(v21 - 8) + 56);
  v23 = &v4[v20];
  v24 = v54;
  v22(v23, 1, 1, v21);
  v22(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v21);
  v25 = v55;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v55;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v24;
  v26 = type metadata accessor for MapsSyncObject();
  v56.receiver = v4;
  v56.super_class = v26;
  v27 = v25;
  v28 = objc_msgSendSuper2(&v56, sel_init);
  v29 = v28;
  if (a1)
  {
    v30 = v28;
    v31 = [a1 objectID];
    v32 = *(v30 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v30 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v31;

    (*((*MEMORY[0x1E69E7D40] & *v30) + 0x218))(a1, v24 & 1, v53 & 1);
  }

  else
  {
    v33 = v28;
    v34 = v52;
    sub_1B63BE9F4();
    v19(v34, 0, 1, v18);
    v35 = v49;
    sub_1B62B2C0C(v34, v49);
    v36 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v35, &v33[v36]);
    swift_endAccess();
    v37 = v51;
    sub_1B62B2C0C(v34, v51);
    v38 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v39 = swift_allocObject();
    sub_1B62B2CEC(v37, v39 + v38);
    v40 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v41 = *&v33[v40];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[v40] = v41;
    v43 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_1B629A8E8(0, v41[2] + 1, 1, v41);
      *&v33[v40] = v41;
    }

    v45 = v41[2];
    v44 = v41[3];
    if (v45 >= v44 >> 1)
    {
      v41 = sub_1B629A8E8((v44 > 1), v45 + 1, 1, v41);
    }

    v41[2] = v45 + 1;
    v46 = &v41[2 * v45];
    v46[4] = sub_1B62B2D5C;
    v46[5] = v39;
    *&v33[v40] = v41;
    swift_endAccess();

    sub_1B62B2DF0(v43);
  }

  return v29;
}

void sub_1B632692C()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSUserRoute__addressObject), *(v0 + OBJC_IVAR___MSUserRoute__addressObject + 8));
  v1 = *(v0 + OBJC_IVAR___MSUserRoute__customName + 8);

  v2 = *(v0 + OBJC_IVAR___MSUserRoute__customNote + 8);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSUserRoute__routeGeometry), *(v0 + OBJC_IVAR___MSUserRoute__routeGeometry + 8));
  v3 = *(v0 + OBJC_IVAR___MSUserRoute__westLongitude);
}

id UserRoute.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserRoute();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B6326C10(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedUserRoute();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = a1;
  if (a2)
  {
    v8 = *(v2 + OBJC_IVAR___MSUserRoute__addressObject);
    v9 = *(v2 + OBJC_IVAR___MSUserRoute__addressObject + 8);
    *(v2 + OBJC_IVAR___MSUserRoute__addressObject) = xmmword_1B63C3E40;
    sub_1B6284F64(v8, v9);
LABEL_9:
    v18 = (v2 + OBJC_IVAR___MSUserRoute__customName);
    v19 = *(v2 + OBJC_IVAR___MSUserRoute__customName + 8);
    *v18 = 0;
    v18[1] = 0;

    goto LABEL_10;
  }

  v10 = [v6 addressObject];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1B63BE924();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  v15 = (v2 + OBJC_IVAR___MSUserRoute__addressObject);
  v16 = *(v2 + OBJC_IVAR___MSUserRoute__addressObject);
  v17 = *(v2 + OBJC_IVAR___MSUserRoute__addressObject + 8);
  *v15 = v12;
  v15[1] = v14;
  sub_1B6284F64(v16, v17);
  if (a2)
  {
    goto LABEL_9;
  }

  v49 = [v6 customName];
  if (v49)
  {
    v50 = v49;
    v51 = sub_1B63BEBD4();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v68 = (v2 + OBJC_IVAR___MSUserRoute__customName);
  v69 = *(v2 + OBJC_IVAR___MSUserRoute__customName + 8);
  *v68 = v51;
  v68[1] = v53;

  v70 = [v6 customNote];
  if (v70)
  {
    v71 = v70;
    v20 = sub_1B63BEBD4();
    v21 = v72;

    goto LABEL_11;
  }

LABEL_10:
  v20 = 0;
  v21 = 0;
LABEL_11:
  v22 = (v2 + OBJC_IVAR___MSUserRoute__customNote);
  v23 = *(v2 + OBJC_IVAR___MSUserRoute__customNote + 8);
  *v22 = v20;
  v22[1] = v21;

  if (a2)
  {
    v24 = 0;
  }

  else
  {
    v24 = [v6 eastLongitude];
  }

  v25 = *(v2 + OBJC_IVAR___MSUserRoute__eastLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__eastLongitude) = v24;

  v26 = [v6 hikeType];
  *(v2 + OBJC_IVAR___MSUserRoute__hikeType) = v26;
  if (a2)
  {
    v27 = *(v2 + OBJC_IVAR___MSUserRoute__length);
    *(v2 + OBJC_IVAR___MSUserRoute__length) = 0;

    v28 = *(v2 + OBJC_IVAR___MSUserRoute__northLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__northLatitude) = 0;

    v29 = *(v2 + OBJC_IVAR___MSUserRoute__originLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__originLatitude) = 0;

    v30 = 0;
  }

  else
  {
    v31 = [v6 length];
    v32 = *(v2 + OBJC_IVAR___MSUserRoute__length);
    *(v2 + OBJC_IVAR___MSUserRoute__length) = v31;

    v33 = [v6 northLatitude];
    v34 = *(v2 + OBJC_IVAR___MSUserRoute__northLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__northLatitude) = v33;

    v35 = [v6 originLatitude];
    v36 = *(v2 + OBJC_IVAR___MSUserRoute__originLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__originLatitude) = v35;

    v30 = [v6 originLongitude];
  }

  v37 = *(v2 + OBJC_IVAR___MSUserRoute__originLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__originLongitude) = v30;

  v38 = [v6 positionIndex];
  *(v2 + OBJC_IVAR___MSUserRoute__positionIndex) = v38;
  if (a2)
  {
    v39 = *(v2 + OBJC_IVAR___MSUserRoute__routeGeometry);
    v40 = *(v2 + OBJC_IVAR___MSUserRoute__routeGeometry + 8);
    *(v2 + OBJC_IVAR___MSUserRoute__routeGeometry) = xmmword_1B63C3E40;
    sub_1B6284F64(v39, v40);
    v41 = *(v2 + OBJC_IVAR___MSUserRoute__southLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__southLatitude) = 0;

    v42 = *(v2 + OBJC_IVAR___MSUserRoute__totalAscent);
    *(v2 + OBJC_IVAR___MSUserRoute__totalAscent) = 0;

    v43 = 0;
  }

  else
  {
    v44 = [v6 routeGeometry];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1B63BE924();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0xF000000000000000;
    }

    v54 = (v2 + OBJC_IVAR___MSUserRoute__routeGeometry);
    v55 = *(v2 + OBJC_IVAR___MSUserRoute__routeGeometry);
    v56 = *(v2 + OBJC_IVAR___MSUserRoute__routeGeometry + 8);
    *v54 = v46;
    v54[1] = v48;
    sub_1B6284F64(v55, v56);
    v57 = [v6 southLatitude];
    v58 = *(v2 + OBJC_IVAR___MSUserRoute__southLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__southLatitude) = v57;

    v59 = [v6 totalAscent];
    v60 = *(v2 + OBJC_IVAR___MSUserRoute__totalAscent);
    *(v2 + OBJC_IVAR___MSUserRoute__totalAscent) = v59;

    v43 = [v6 totalDescent];
  }

  v61 = *(v2 + OBJC_IVAR___MSUserRoute__totalDescent);
  *(v2 + OBJC_IVAR___MSUserRoute__totalDescent) = v43;

  v62 = [v6 tourIdentifier];
  *(v2 + OBJC_IVAR___MSUserRoute__tourIdentifier) = v62;
  if (a2)
  {
    v63 = *(v2 + OBJC_IVAR___MSUserRoute__transportType);
    *(v2 + OBJC_IVAR___MSUserRoute__transportType) = 0;

    v64 = 0;
  }

  else
  {
    v65 = [v6 transportType];
    v66 = *(v2 + OBJC_IVAR___MSUserRoute__transportType);
    *(v2 + OBJC_IVAR___MSUserRoute__transportType) = v65;

    v64 = [v6 westLongitude];
  }

  v67 = *(v2 + OBJC_IVAR___MSUserRoute__westLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__westLongitude) = v64;
}

id sub_1B6327108(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSUserRoute__addressObject);
  v8 = *(v3 + OBJC_IVAR___MSUserRoute__addressObject);
  v9 = *(v3 + OBJC_IVAR___MSUserRoute__addressObject + 8);
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
    *(v11 + 16) = sub_1B6329624;
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

id sub_1B6327398(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__eastLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__eastLongitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329600;
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

id sub_1B6327594(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__length);
  *(v2 + OBJC_IVAR___MSUserRoute__length) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B63295DC;
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

id sub_1B632776C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__northLatitude);
  *(v2 + OBJC_IVAR___MSUserRoute__northLatitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B63295B8;
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

id sub_1B6327944(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__originLatitude);
  *(v2 + OBJC_IVAR___MSUserRoute__originLatitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329594;
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

id sub_1B6327B1C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__originLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__originLongitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329570;
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

id sub_1B6327D18(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSUserRoute__routeGeometry);
  v8 = *(v3 + OBJC_IVAR___MSUserRoute__routeGeometry);
  v9 = *(v3 + OBJC_IVAR___MSUserRoute__routeGeometry + 8);
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
    *(v11 + 16) = sub_1B632954C;
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

id sub_1B6327F10(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__southLatitude);
  *(v2 + OBJC_IVAR___MSUserRoute__southLatitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329528;
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

id sub_1B63280E8(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__totalAscent);
  *(v2 + OBJC_IVAR___MSUserRoute__totalAscent) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329504;
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

id sub_1B63282C0(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__totalDescent);
  *(v2 + OBJC_IVAR___MSUserRoute__totalDescent) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B63294E0;
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

id sub_1B63284BC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__transportType);
  *(v2 + OBJC_IVAR___MSUserRoute__transportType) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B63294BC;
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

id sub_1B6328694(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__westLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__westLongitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329498;
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

uint64_t keypath_set_197Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

id Vehicle.__allocating_init(colorHex:currentVehicleState:dateOfVehicleIngestion:displayName:headUnitBluetoothIdentifier:headUnitMacAddress:iapIdentifier:lastStateUpdateDate:licensePlate:lprPowerType:lprVehicleType:manufacturer:model:pairedAppIdentifier:positionIndex:powerByConnector:preferredChargingNetworks:siriIntentsIdentifier:supportedConnectors:vehicleIdentifier:vehicleType:year:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, void *a38)
{
  v39 = v38;
  v107 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v48 = &v85 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v85 - v49;
  v103 = objc_allocWithZone(v39);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v101 = qword_1EDB0F2A8;
  if (a2)
  {
    v102 = sub_1B63BEBC4();
  }

  else
  {
    v102 = 0;
  }

  v104 = a4;
  if (a4 >> 60 == 15)
  {
    v100 = 0;
  }

  else
  {
    v51 = v107;
    sub_1B629119C(v107, a4);
    v100 = sub_1B63BE904();
    sub_1B6284F64(v51, a4);
  }

  v105 = a5;
  sub_1B628C510(a5, v50, &unk_1EB943210, &unk_1B63C3F50);
  v52 = sub_1B63BE994();
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  v55 = 0;
  if (v54(v50, 1, v52) != 1)
  {
    v55 = sub_1B63BE954();
    (*(v53 + 8))(v50, v52);
  }

  v98 = v55;
  if (a7)
  {
    v97 = sub_1B63BEBC4();

    v56 = a11;
    if (a9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v97 = 0;
    v56 = a11;
    if (a9)
    {
LABEL_13:
      v96 = sub_1B63BEBC4();

      v57 = a13;
      v58 = a14;
      if (v56)
      {
        goto LABEL_14;
      }

LABEL_18:
      v94 = 0;
      if (v57)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  v96 = 0;
  v57 = a13;
  v58 = a14;
  if (!v56)
  {
    goto LABEL_18;
  }

LABEL_14:
  v94 = sub_1B63BEBC4();

  if (v57)
  {
LABEL_15:
    v95 = sub_1B63BEBC4();

    goto LABEL_20;
  }

LABEL_19:
  v95 = 0;
LABEL_20:
  sub_1B628C510(v58, v48, &unk_1EB943210, &unk_1B63C3F50);
  if (v54(v48, 1, v52) == 1)
  {
    v113 = 0;
    v59 = a18;
    if (a16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v113 = sub_1B63BE954();
    (*(v53 + 8))(v48, v52);
    v59 = a18;
    if (a16)
    {
LABEL_22:
      v111 = sub_1B63BEBC4();

      v60 = a20;
      if (v59)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }
  }

  v111 = 0;
  v60 = a20;
  if (v59)
  {
LABEL_23:
    v109 = sub_1B63BEBC4();

    v61 = a22;
    if (v60)
    {
      goto LABEL_24;
    }

    goto LABEL_31;
  }

LABEL_30:
  v109 = 0;
  v61 = a22;
  if (v60)
  {
LABEL_24:
    v62 = sub_1B63BEBC4();

    v63 = a24;
    if (v61)
    {
      goto LABEL_25;
    }

    goto LABEL_32;
  }

LABEL_31:
  v62 = 0;
  v63 = a24;
  if (v61)
  {
LABEL_25:
    v112 = sub_1B63BEBC4();

    v64 = a26;
    if (v63)
    {
      goto LABEL_26;
    }

LABEL_33:
    v110 = 0;
    v66 = a28;
    v65 = a29;
    if (v64)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

LABEL_32:
  v112 = 0;
  v64 = a26;
  if (!v63)
  {
    goto LABEL_33;
  }

LABEL_26:
  v110 = sub_1B63BEBC4();

  v66 = a28;
  v65 = a29;
  if (v64)
  {
LABEL_27:
    v108 = sub_1B63BEBC4();

    goto LABEL_35;
  }

LABEL_34:
  v108 = 0;
LABEL_35:
  v106 = a30;
  if (v65 >> 60 == 15)
  {
    v67 = 0;
  }

  else
  {
    sub_1B629119C(v66, v65);
    v67 = sub_1B63BE904();
    sub_1B6284F64(v66, v65);
  }

  v93 = v65;
  if (a31 >> 60 == 15)
  {
    v68 = 0;
  }

  else
  {
    v69 = v106;
    sub_1B629119C(v106, a31);
    v68 = sub_1B63BE904();
    sub_1B6284F64(v69, a31);
  }

  v99 = v58;
  v92 = v66;
  v91 = a31;
  if (a33)
  {
    v70 = sub_1B63BEBC4();
  }

  else
  {
    v70 = 0;
  }

  if (a36)
  {
    v71 = sub_1B63BEBC4();
  }

  else
  {
    v71 = 0;
  }

  v90 = v71;
  v84 = v71;
  v89 = v70;
  v83 = v70;
  v88 = v68;
  v82 = v68;
  v87 = v67;
  v81 = v67;
  v80 = v62;
  v86 = v62;
  v72 = v95;
  v73 = v94;
  v74 = v102;
  v75 = v100;
  v76 = v97;
  v77 = v98;
  v78 = v96;
  v103 = [v103 initWithStore:v101 colorHex:v102 currentVehicleState:v100 dateOfVehicleIngestion:v98 displayName:v97 headUnitBluetoothIdentifier:v96 headUnitMacAddress:v94 iapIdentifier:v95 lastStateUpdateDate:v113 licensePlate:v111 lprPowerType:v109 lprVehicleType:v80 manufacturer:v112 model:v110 pairedAppIdentifier:v108 positionIndex:a27 powerByConnector:v81 preferredChargingNetworks:v82 siriIntentsIdentifier:v83 supportedConnectors:a34 vehicleIdentifier:v84 vehicleType:a37 year:a38];

  sub_1B6284F64(v106, v91);
  sub_1B6284F64(v92, v93);
  sub_1B6284F64(v107, v104);
  sub_1B6284EAC(v99, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v105, &unk_1EB943210, &unk_1B63C3F50);
  return v103;
}

id Vehicle.init(colorHex:currentVehicleState:dateOfVehicleIngestion:displayName:headUnitBluetoothIdentifier:headUnitMacAddress:iapIdentifier:lastStateUpdateDate:licensePlate:lprPowerType:lprVehicleType:manufacturer:model:pairedAppIdentifier:positionIndex:powerByConnector:preferredChargingNetworks:siriIntentsIdentifier:supportedConnectors:vehicleIdentifier:vehicleType:year:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, void *a38)
{
  v40 = sub_1B6336F54(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);

  sub_1B6284F64(a30, a31);
  sub_1B6284F64(a28, a29);
  sub_1B6284F64(a3, a4);
  return v40;
}

char *Vehicle.__allocating_init(store:colorHex:currentVehicleState:dateOfVehicleIngestion:displayName:headUnitBluetoothIdentifier:headUnitMacAddress:iapIdentifier:lastStateUpdateDate:licensePlate:lprPowerType:lprVehicleType:manufacturer:model:pairedAppIdentifier:positionIndex:powerByConnector:preferredChargingNetworks:siriIntentsIdentifier:supportedConnectors:vehicleIdentifier:vehicleType:year:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, unint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, void *a39)
{
  v205 = a8;
  v190 = a7;
  v226 = a6;
  v231 = a4;
  v232 = a5;
  v208 = a3;
  v192 = a2;
  v229 = a32;
  v230 = a30;
  v227 = a31;
  v228 = a29;
  v211 = a39;
  v210 = a38;
  v209 = a37;
  v222 = a36;
  v207 = a35;
  v206 = a34;
  v220 = a28;
  v221 = a33;
  v202 = a27;
  v219 = a26;
  v200 = a25;
  v218 = a24;
  v199 = a23;
  v217 = a22;
  v196 = a21;
  v216 = a20;
  v197 = a19;
  v215 = a18;
  v198 = a17;
  v225 = a15;
  v214 = a16;
  v201 = a14;
  v187 = a13;
  v203 = a12;
  v188 = a11;
  v204 = a10;
  v189 = a9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v193 = *(v43 - 8);
  v191 = *(v193 + 64);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v213 = &v173 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v212 = &v173 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v173 - v48;
  v50 = objc_allocWithZone(v39);
  v195 = a1;
  v51 = [v50 initWithStore_];
  v52 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v53 = *&v51[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v223 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v54 = v51;
  v224 = v51;
  v55 = v54;
  [v53 lock];
  v194 = *&v51[v52];
  v56 = &v55[OBJC_IVAR___MSVehicle__colorHex];
  v57 = *&v55[OBJC_IVAR___MSVehicle__colorHex + 8];
  v58 = v208;
  *v56 = a2;
  *(v56 + 1) = v58;

  v59 = &v55[OBJC_IVAR___MSVehicle__currentVehicleState];
  v60 = *&v55[OBJC_IVAR___MSVehicle__currentVehicleState];
  v61 = *&v55[OBJC_IVAR___MSVehicle__currentVehicleState + 8];
  v62 = v231;
  v63 = v232;
  *v59 = v231;
  *(v59 + 1) = v63;
  sub_1B6291034(v62, v63);
  sub_1B6284F64(v60, v61);
  v64 = v226;
  sub_1B628C510(v226, v49, &unk_1EB943210, &unk_1B63C3F50);
  v65 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
  swift_beginAccess();
  sub_1B6282DFC(v49, &v55[v65], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v66 = &v55[OBJC_IVAR___MSVehicle__displayName];
  v67 = *&v55[OBJC_IVAR___MSVehicle__displayName + 8];
  v68 = v205;
  *v66 = a7;
  *(v66 + 1) = v68;

  v69 = &v55[OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier];
  v70 = *&v55[OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier + 8];
  v71 = v204;
  *v69 = a9;
  *(v69 + 1) = v71;

  v72 = &v55[OBJC_IVAR___MSVehicle__headUnitMacAddress];
  v73 = *&v55[OBJC_IVAR___MSVehicle__headUnitMacAddress + 8];
  v74 = v203;
  *v72 = a11;
  *(v72 + 1) = v74;

  v75 = &v55[OBJC_IVAR___MSVehicle__iapIdentifier];
  v76 = *&v55[OBJC_IVAR___MSVehicle__iapIdentifier + 8];
  v77 = v201;
  *v75 = a13;
  *(v75 + 1) = v77;

  v78 = v225;
  sub_1B628C510(v225, v49, &unk_1EB943210, &unk_1B63C3F50);
  v79 = OBJC_IVAR___MSVehicle__lastStateUpdateDate;
  swift_beginAccess();
  sub_1B6282DFC(v49, &v55[v79], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v80 = &v55[OBJC_IVAR___MSVehicle__licensePlate];
  v81 = *&v55[OBJC_IVAR___MSVehicle__licensePlate + 8];
  v82 = v198;
  *v80 = v214;
  *(v80 + 1) = v82;

  v83 = &v55[OBJC_IVAR___MSVehicle__lprPowerType];
  v84 = *&v55[OBJC_IVAR___MSVehicle__lprPowerType + 8];
  v85 = v197;
  *v83 = v215;
  *(v83 + 1) = v85;

  v86 = &v55[OBJC_IVAR___MSVehicle__lprVehicleType];
  v87 = *&v55[OBJC_IVAR___MSVehicle__lprVehicleType + 8];
  v88 = v196;
  *v86 = v216;
  *(v86 + 1) = v88;

  v89 = &v55[OBJC_IVAR___MSVehicle__manufacturer];
  v90 = *&v55[OBJC_IVAR___MSVehicle__manufacturer + 8];
  v91 = v199;
  *v89 = v217;
  *(v89 + 1) = v91;

  v92 = &v55[OBJC_IVAR___MSVehicle__model];
  v93 = *&v55[OBJC_IVAR___MSVehicle__model + 8];
  v94 = v200;
  *v92 = v218;
  *(v92 + 1) = v94;

  v95 = &v55[OBJC_IVAR___MSVehicle__pairedAppIdentifier];
  v96 = *&v55[OBJC_IVAR___MSVehicle__pairedAppIdentifier + 8];
  v97 = v202;
  *v95 = v219;
  *(v95 + 1) = v97;

  *&v55[OBJC_IVAR___MSVehicle__positionIndex] = v220;
  v98 = &v55[OBJC_IVAR___MSVehicle__powerByConnector];
  v99 = *&v55[OBJC_IVAR___MSVehicle__powerByConnector];
  v100 = *&v55[OBJC_IVAR___MSVehicle__powerByConnector + 8];
  v101 = v228;
  v102 = v230;
  *v98 = v228;
  *(v98 + 1) = v102;
  sub_1B6291034(v101, v102);
  sub_1B6284F64(v99, v100);
  v103 = &v55[OBJC_IVAR___MSVehicle__preferredChargingNetworks];
  v104 = *&v55[OBJC_IVAR___MSVehicle__preferredChargingNetworks];
  v105 = *&v55[OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8];
  v106 = v227;
  v107 = v229;
  *v103 = v227;
  *(v103 + 1) = v107;
  sub_1B6291034(v106, v107);
  sub_1B6284F64(v104, v105);
  v108 = &v55[OBJC_IVAR___MSVehicle__siriIntentsIdentifier];
  v109 = *&v55[OBJC_IVAR___MSVehicle__siriIntentsIdentifier + 8];
  v110 = v206;
  *v108 = v221;
  *(v108 + 1) = v110;

  v111 = *&v55[OBJC_IVAR___MSVehicle__supportedConnectors];
  v112 = v207;
  *&v55[OBJC_IVAR___MSVehicle__supportedConnectors] = v207;
  v186 = v112;

  v113 = &v55[OBJC_IVAR___MSVehicle__vehicleIdentifier];
  v114 = *&v55[OBJC_IVAR___MSVehicle__vehicleIdentifier + 8];
  v115 = v209;
  *v113 = v222;
  *(v113 + 1) = v115;

  v116 = *&v55[OBJC_IVAR___MSVehicle__vehicleType];
  v117 = v210;
  *&v55[OBJC_IVAR___MSVehicle__vehicleType] = v210;
  v185 = v117;

  v118 = *&v55[OBJC_IVAR___MSVehicle__year];
  v119 = v211;
  *&v55[OBJC_IVAR___MSVehicle__year] = v211;
  v184 = v119;

  sub_1B628C510(v64, v212, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v78, v213, &unk_1EB943210, &unk_1B63C3F50);
  v120 = *(v193 + 80);
  v121 = (v120 + 48) & ~v120;
  v122 = (v191 + 7 + v121) & 0xFFFFFFFFFFFFFFF8;
  v123 = (v122 + 23) & 0xFFFFFFFFFFFFFFF8;
  v124 = (v123 + 23) & 0xFFFFFFFFFFFFFFF8;
  v125 = (v124 + 23) & 0xFFFFFFFFFFFFFFF8;
  v126 = (v120 + v125 + 16) & ~v120;
  v127 = (v191 + 7 + v126) & 0xFFFFFFFFFFFFFFF8;
  v173 = (v127 + 23) & 0xFFFFFFFFFFFFFFF8;
  v174 = (v173 + 23) & 0xFFFFFFFFFFFFFFF8;
  v175 = (v174 + 23) & 0xFFFFFFFFFFFFFFF8;
  v176 = (v175 + 23) & 0xFFFFFFFFFFFFFFF8;
  v179 = (v176 + 23) & 0xFFFFFFFFFFFFFFF8;
  v181 = (v179 + 23) & 0xFFFFFFFFFFFFFFF8;
  v178 = (v181 + 15) & 0xFFFFFFFFFFFFFFF8;
  v180 = (v178 + 23) & 0xFFFFFFFFFFFFFFF8;
  v183 = (v180 + 23) & 0xFFFFFFFFFFFFFFF8;
  v193 = (v183 + 23) & 0xFFFFFFFFFFFFFFF8;
  v182 = (v193 + 15) & 0xFFFFFFFFFFFFFFF8;
  v191 = (v182 + 23) & 0xFFFFFFFFFFFFFFF8;
  v177 = (v191 + 15) & 0xFFFFFFFFFFFFFFF8;
  v128 = swift_allocObject();
  v129 = v208;
  v128[2] = v192;
  v128[3] = v129;
  v130 = v232;
  v128[4] = v231;
  v128[5] = v130;
  sub_1B628A128(v212, v128 + v121, &unk_1EB943210, &unk_1B63C3F50);
  v131 = (v128 + v122);
  v132 = v205;
  *v131 = v190;
  v131[1] = v132;
  v133 = (v128 + v123);
  v134 = v204;
  *v133 = v189;
  v133[1] = v134;
  v135 = (v128 + v124);
  v136 = v203;
  *v135 = v188;
  v135[1] = v136;
  v137 = (v128 + v125);
  v138 = v201;
  *v137 = v187;
  v137[1] = v138;
  sub_1B628A128(v213, v128 + v126, &unk_1EB943210, &unk_1B63C3F50);
  v139 = (v128 + v127);
  v140 = v198;
  *v139 = v214;
  v139[1] = v140;
  v141 = (v128 + v173);
  v142 = v197;
  *v141 = v215;
  v141[1] = v142;
  v143 = (v128 + v174);
  v144 = v196;
  *v143 = v216;
  v143[1] = v144;
  v145 = (v128 + v175);
  v146 = v199;
  *v145 = v217;
  v145[1] = v146;
  v147 = (v128 + v176);
  v148 = v200;
  *v147 = v218;
  v147[1] = v148;
  v149 = (v128 + v179);
  v150 = v202;
  *v149 = v219;
  v149[1] = v150;
  *(v128 + v181) = v220;
  v151 = (v128 + v178);
  v153 = v227;
  v152 = v228;
  v155 = v229;
  v154 = v230;
  *v151 = v228;
  v151[1] = v154;
  v156 = (v128 + v180);
  *v156 = v153;
  v156[1] = v155;
  v157 = (v128 + v183);
  v158 = v206;
  *v157 = v221;
  v157[1] = v158;
  *(v128 + v193) = v207;
  v159 = (v128 + v182);
  v160 = v209;
  *v159 = v222;
  v159[1] = v160;
  *(v128 + v191) = v210;
  *(v128 + v177) = v211;
  sub_1B6282B88();
  v161 = *&v224[v223];
  sub_1B6291034(v231, v232);
  sub_1B6291034(v152, v154);
  sub_1B6291034(v153, v155);
  v162 = v186;
  v163 = v185;
  v164 = v184;
  if (sub_1B63BEF24())
  {
    v165 = swift_allocObject();
    *(v165 + 16) = sub_1B63375B0;
    *(v165 + 24) = v128;
    v166 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v167 = *&v55[v166];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55[v166] = v167;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v167 = sub_1B629A8E8(0, v167[2] + 1, 1, v167);
      *&v55[v166] = v167;
    }

    v170 = v167[2];
    v169 = v167[3];
    if (v170 >= v169 >> 1)
    {
      v167 = sub_1B629A8E8((v169 > 1), v170 + 1, 1, v167);
    }

    v167[2] = v170 + 1;
    v171 = &v167[2 * v170];
    v171[4] = sub_1B62B8188;
    v171[5] = v165;
    *&v55[v166] = v167;
    swift_endAccess();
  }

  [*&v224[v223] unlock];

  sub_1B6284F64(v227, v229);
  sub_1B6284F64(v228, v230);
  sub_1B6284F64(v231, v232);
  sub_1B6284EAC(v225, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v226, &unk_1EB943210, &unk_1B63C3F50);

  return v55;
}

char *Vehicle.init(store:colorHex:currentVehicleState:dateOfVehicleIngestion:displayName:headUnitBluetoothIdentifier:headUnitMacAddress:iapIdentifier:lastStateUpdateDate:licensePlate:lprPowerType:lprVehicleType:manufacturer:model:pairedAppIdentifier:positionIndex:powerByConnector:preferredChargingNetworks:siriIntentsIdentifier:supportedConnectors:vehicleIdentifier:vehicleType:year:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, unint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, void *a39)
{
  v40 = v39;
  v205 = a8;
  v189 = a7;
  v226 = a6;
  v231 = a4;
  v232 = a5;
  v192 = a2;
  v229 = a32;
  v230 = a30;
  v227 = a31;
  v228 = a29;
  v210 = a39;
  v209 = a38;
  v208 = a37;
  v222 = a36;
  v207 = a35;
  v206 = a34;
  v220 = a28;
  v221 = a33;
  v201 = a27;
  v219 = a26;
  v200 = a25;
  v218 = a24;
  v198 = a23;
  v217 = a22;
  v196 = a21;
  v216 = a20;
  v197 = a19;
  v215 = a18;
  v199 = a17;
  v225 = a15;
  v214 = a16;
  v202 = a14;
  v213 = a13;
  v203 = a12;
  v187 = a11;
  v204 = a10;
  v188 = a9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v193 = *(v45 - 8);
  v190 = *(v193 + 64);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v212 = &v173 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v211 = &v173 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v173 - v50;
  v195 = a1;
  v52 = [v40 initWithStore_];
  v53 = *&v52[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v54 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v223 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v55 = v52;
  v224 = v52;
  v56 = v55;
  [v53 lock];
  v194 = *&v52[v54];
  v57 = &v56[OBJC_IVAR___MSVehicle__colorHex];
  v58 = *&v56[OBJC_IVAR___MSVehicle__colorHex + 8];
  *v57 = a2;
  *(v57 + 1) = a3;
  v191 = a3;

  v59 = &v56[OBJC_IVAR___MSVehicle__currentVehicleState];
  v60 = *&v56[OBJC_IVAR___MSVehicle__currentVehicleState];
  v61 = *&v56[OBJC_IVAR___MSVehicle__currentVehicleState + 8];
  v62 = v231;
  v63 = v232;
  *v59 = v231;
  *(v59 + 1) = v63;
  sub_1B6291034(v62, v63);
  sub_1B6284F64(v60, v61);
  v64 = v226;
  sub_1B628C510(v226, v51, &unk_1EB943210, &unk_1B63C3F50);
  v65 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
  swift_beginAccess();
  sub_1B6282DFC(v51, &v56[v65], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v66 = &v56[OBJC_IVAR___MSVehicle__displayName];
  v67 = *&v56[OBJC_IVAR___MSVehicle__displayName + 8];
  v68 = v205;
  *v66 = a7;
  *(v66 + 1) = v68;

  v69 = &v56[OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier];
  v70 = *&v56[OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier + 8];
  v71 = v204;
  *v69 = a9;
  *(v69 + 1) = v71;

  v72 = &v56[OBJC_IVAR___MSVehicle__headUnitMacAddress];
  v73 = *&v56[OBJC_IVAR___MSVehicle__headUnitMacAddress + 8];
  v74 = v203;
  *v72 = a11;
  *(v72 + 1) = v74;

  v75 = &v56[OBJC_IVAR___MSVehicle__iapIdentifier];
  v76 = *&v56[OBJC_IVAR___MSVehicle__iapIdentifier + 8];
  v77 = v202;
  *v75 = v213;
  *(v75 + 1) = v77;

  v78 = v225;
  sub_1B628C510(v225, v51, &unk_1EB943210, &unk_1B63C3F50);
  v79 = OBJC_IVAR___MSVehicle__lastStateUpdateDate;
  swift_beginAccess();
  sub_1B6282DFC(v51, &v56[v79], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v80 = &v56[OBJC_IVAR___MSVehicle__licensePlate];
  v81 = *&v56[OBJC_IVAR___MSVehicle__licensePlate + 8];
  v82 = v199;
  *v80 = v214;
  *(v80 + 1) = v82;

  v83 = &v56[OBJC_IVAR___MSVehicle__lprPowerType];
  v84 = *&v56[OBJC_IVAR___MSVehicle__lprPowerType + 8];
  v85 = v197;
  *v83 = v215;
  *(v83 + 1) = v85;

  v86 = &v56[OBJC_IVAR___MSVehicle__lprVehicleType];
  v87 = *&v56[OBJC_IVAR___MSVehicle__lprVehicleType + 8];
  v88 = v196;
  *v86 = v216;
  *(v86 + 1) = v88;

  v89 = &v56[OBJC_IVAR___MSVehicle__manufacturer];
  v90 = *&v56[OBJC_IVAR___MSVehicle__manufacturer + 8];
  v91 = v198;
  *v89 = v217;
  *(v89 + 1) = v91;

  v92 = &v56[OBJC_IVAR___MSVehicle__model];
  v93 = *&v56[OBJC_IVAR___MSVehicle__model + 8];
  v94 = v200;
  *v92 = v218;
  *(v92 + 1) = v94;

  v95 = &v56[OBJC_IVAR___MSVehicle__pairedAppIdentifier];
  v96 = *&v56[OBJC_IVAR___MSVehicle__pairedAppIdentifier + 8];
  v97 = v201;
  *v95 = v219;
  *(v95 + 1) = v97;

  *&v56[OBJC_IVAR___MSVehicle__positionIndex] = v220;
  v98 = &v56[OBJC_IVAR___MSVehicle__powerByConnector];
  v99 = *&v56[OBJC_IVAR___MSVehicle__powerByConnector];
  v100 = *&v56[OBJC_IVAR___MSVehicle__powerByConnector + 8];
  v101 = v228;
  v102 = v230;
  *v98 = v228;
  *(v98 + 1) = v102;
  sub_1B6291034(v101, v102);
  sub_1B6284F64(v99, v100);
  v103 = &v56[OBJC_IVAR___MSVehicle__preferredChargingNetworks];
  v104 = *&v56[OBJC_IVAR___MSVehicle__preferredChargingNetworks];
  v105 = *&v56[OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8];
  v106 = v227;
  v107 = v229;
  *v103 = v227;
  *(v103 + 1) = v107;
  sub_1B6291034(v106, v107);
  sub_1B6284F64(v104, v105);
  v108 = &v56[OBJC_IVAR___MSVehicle__siriIntentsIdentifier];
  v109 = *&v56[OBJC_IVAR___MSVehicle__siriIntentsIdentifier + 8];
  v110 = v206;
  *v108 = v221;
  *(v108 + 1) = v110;

  v111 = *&v56[OBJC_IVAR___MSVehicle__supportedConnectors];
  v112 = v207;
  *&v56[OBJC_IVAR___MSVehicle__supportedConnectors] = v207;
  v186 = v112;

  v113 = &v56[OBJC_IVAR___MSVehicle__vehicleIdentifier];
  v114 = *&v56[OBJC_IVAR___MSVehicle__vehicleIdentifier + 8];
  v115 = v208;
  *v113 = v222;
  *(v113 + 1) = v115;

  v116 = *&v56[OBJC_IVAR___MSVehicle__vehicleType];
  v117 = v209;
  *&v56[OBJC_IVAR___MSVehicle__vehicleType] = v209;
  v185 = v117;

  v118 = *&v56[OBJC_IVAR___MSVehicle__year];
  v119 = v210;
  *&v56[OBJC_IVAR___MSVehicle__year] = v210;
  v184 = v119;

  sub_1B628C510(v64, v211, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v78, v212, &unk_1EB943210, &unk_1B63C3F50);
  v120 = *(v193 + 80);
  v121 = (v120 + 48) & ~v120;
  v122 = (v190 + 7 + v121) & 0xFFFFFFFFFFFFFFF8;
  v123 = (v122 + 23) & 0xFFFFFFFFFFFFFFF8;
  v124 = (v123 + 23) & 0xFFFFFFFFFFFFFFF8;
  v125 = (v124 + 23) & 0xFFFFFFFFFFFFFFF8;
  v126 = (v120 + v125 + 16) & ~v120;
  v127 = (v190 + 7 + v126) & 0xFFFFFFFFFFFFFFF8;
  v173 = (v127 + 23) & 0xFFFFFFFFFFFFFFF8;
  v174 = (v173 + 23) & 0xFFFFFFFFFFFFFFF8;
  v175 = (v174 + 23) & 0xFFFFFFFFFFFFFFF8;
  v176 = (v175 + 23) & 0xFFFFFFFFFFFFFFF8;
  v179 = (v176 + 23) & 0xFFFFFFFFFFFFFFF8;
  v181 = (v179 + 23) & 0xFFFFFFFFFFFFFFF8;
  v178 = (v181 + 15) & 0xFFFFFFFFFFFFFFF8;
  v180 = (v178 + 23) & 0xFFFFFFFFFFFFFFF8;
  v183 = (v180 + 23) & 0xFFFFFFFFFFFFFFF8;
  v193 = (v183 + 23) & 0xFFFFFFFFFFFFFFF8;
  v182 = (v193 + 15) & 0xFFFFFFFFFFFFFFF8;
  v190 = (v182 + 23) & 0xFFFFFFFFFFFFFFF8;
  v177 = (v190 + 15) & 0xFFFFFFFFFFFFFFF8;
  v128 = swift_allocObject();
  v129 = v191;
  v128[2] = v192;
  v128[3] = v129;
  v130 = v232;
  v128[4] = v231;
  v128[5] = v130;
  sub_1B628A128(v211, v128 + v121, &unk_1EB943210, &unk_1B63C3F50);
  v131 = (v128 + v122);
  v132 = v205;
  *v131 = v189;
  v131[1] = v132;
  v133 = (v128 + v123);
  v134 = v204;
  *v133 = v188;
  v133[1] = v134;
  v135 = (v128 + v124);
  v136 = v203;
  *v135 = v187;
  v135[1] = v136;
  v137 = (v128 + v125);
  v138 = v202;
  *v137 = v213;
  v137[1] = v138;
  sub_1B628A128(v212, v128 + v126, &unk_1EB943210, &unk_1B63C3F50);
  v139 = (v128 + v127);
  v140 = v199;
  *v139 = v214;
  v139[1] = v140;
  v141 = (v128 + v173);
  v142 = v197;
  *v141 = v215;
  v141[1] = v142;
  v143 = (v128 + v174);
  v144 = v196;
  *v143 = v216;
  v143[1] = v144;
  v145 = (v128 + v175);
  v146 = v198;
  *v145 = v217;
  v145[1] = v146;
  v147 = (v128 + v176);
  v148 = v200;
  *v147 = v218;
  v147[1] = v148;
  v149 = (v128 + v179);
  v150 = v201;
  *v149 = v219;
  v149[1] = v150;
  *(v128 + v181) = v220;
  v151 = (v128 + v178);
  v153 = v227;
  v152 = v228;
  v155 = v229;
  v154 = v230;
  *v151 = v228;
  v151[1] = v154;
  v156 = (v128 + v180);
  *v156 = v153;
  v156[1] = v155;
  v157 = (v128 + v183);
  v158 = v206;
  *v157 = v221;
  v157[1] = v158;
  *(v128 + v193) = v207;
  v159 = (v128 + v182);
  v160 = v208;
  *v159 = v222;
  v159[1] = v160;
  *(v128 + v190) = v209;
  *(v128 + v177) = v210;
  sub_1B6282B88();
  v161 = *&v224[v223];
  sub_1B6291034(v231, v232);
  sub_1B6291034(v152, v154);
  sub_1B6291034(v153, v155);
  v162 = v186;
  v163 = v185;
  v164 = v184;
  if (sub_1B63BEF24())
  {
    v165 = swift_allocObject();
    *(v165 + 16) = sub_1B6339AA0;
    *(v165 + 24) = v128;
    v166 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v167 = *&v56[v166];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v56[v166] = v167;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v167 = sub_1B629A8E8(0, v167[2] + 1, 1, v167);
      *&v56[v166] = v167;
    }

    v170 = v167[2];
    v169 = v167[3];
    if (v170 >= v169 >> 1)
    {
      v167 = sub_1B629A8E8((v169 > 1), v170 + 1, 1, v167);
    }

    v167[2] = v170 + 1;
    v171 = &v167[2 * v170];
    v171[4] = sub_1B62B9488;
    v171[5] = v165;
    *&v56[v166] = v167;
    swift_endAccess();
  }

  [*&v224[v223] unlock];

  sub_1B6284F64(v227, v229);
  sub_1B6284F64(v228, v230);
  sub_1B6284F64(v231, v232);
  sub_1B6284EAC(v225, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v226, &unk_1EB943210, &unk_1B63C3F50);

  return v56;
}

void sub_1B632BDF0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v48 = v75 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v50 = v75 - v49;
  type metadata accessor for MapsSyncManagedVehicle();
  v51 = swift_dynamicCastClass();
  if (v51)
  {
    v52 = v51;
    v53 = a2;
    if (a4)
    {
      a4 = sub_1B63BEBC4();
    }

    [v52 setColorHex_];

    v75[0] = a2;
    if (a6 >> 60 == 15)
    {
      v54 = 0;
    }

    else
    {
      v54 = sub_1B63BE904();
    }

    [v52 setCurrentVehicleState_];

    sub_1B628C510(a7, v50, &unk_1EB943210, &unk_1B63C3F50);
    v55 = sub_1B63BE994();
    v56 = *(v55 - 8);
    v57 = *(v56 + 48);
    v58 = 0;
    if (v57(v50, 1, v55) != 1)
    {
      v58 = sub_1B63BE954();
      (*(v56 + 8))(v50, v55);
    }

    [v52 setDateOfVehicleIngestion_];

    if (a9)
    {
      v59 = sub_1B63BEBC4();
    }

    else
    {
      v59 = 0;
    }

    v60 = a13;
    [v52 setDisplayName_];

    if (a11)
    {
      v61 = sub_1B63BEBC4();
    }

    else
    {
      v61 = 0;
    }

    [v52 setHeadUnitBluetoothIdentifier_];

    if (a13)
    {
      v60 = sub_1B63BEBC4();
    }

    [v52 setHeadUnitMacAddress_];

    if (a15)
    {
      v62 = sub_1B63BEBC4();
    }

    else
    {
      v62 = 0;
    }

    [v52 setIapIdentifier_];

    sub_1B628C510(a16, v48, &unk_1EB943210, &unk_1B63C3F50);
    if (v57(v48, 1, v55) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = sub_1B63BE954();
      (*(v56 + 8))(v48, v55);
    }

    v64 = v75[0];
    [v52 setLastStateUpdateDate_];

    if (a18)
    {
      v65 = sub_1B63BEBC4();
    }

    else
    {
      v65 = 0;
    }

    v66 = a22;
    [v52 setLicensePlate_];

    if (a20)
    {
      v67 = sub_1B63BEBC4();
    }

    else
    {
      v67 = 0;
    }

    [v52 setLprPowerType_];

    if (a22)
    {
      v66 = sub_1B63BEBC4();
    }

    [v52 setLprVehicleType_];

    if (a24)
    {
      v68 = sub_1B63BEBC4();
    }

    else
    {
      v68 = 0;
    }

    [v52 setManufacturer_];

    if (a26)
    {
      v69 = sub_1B63BEBC4();
    }

    else
    {
      v69 = 0;
    }

    [v52 setModel_];

    if (a28)
    {
      v70 = sub_1B63BEBC4();
    }

    else
    {
      v70 = 0;
    }

    [v52 setPairedAppIdentifier_];

    [v52 setPositionIndex_];
    if (a31 >> 60 == 15)
    {
      v71 = 0;
    }

    else
    {
      v71 = sub_1B63BE904();
    }

    v72 = a35;
    [v52 setPowerByConnector_];

    if (a33 >> 60 == 15)
    {
      v73 = 0;
    }

    else
    {
      v73 = sub_1B63BE904();
    }

    [v52 setPreferredChargingNetworks_];

    if (a35)
    {
      v72 = sub_1B63BEBC4();
    }

    [v52 setSiriIntentsIdentifier_];

    [v52 setSupportedConnectors_];
    if (a38)
    {
      v74 = sub_1B63BEBC4();
    }

    else
    {
      v74 = 0;
    }

    [v52 setVehicleIdentifier_];

    [v52 setVehicleType_];
    [v52 setYear_];
  }
}

uint64_t sub_1B632CBF4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__colorHex);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__colorHex + 8);
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
  *(v18 + 16) = sub_1B6337824;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_21;
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

    v13 = sub_1B6337824;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B632CF98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__colorHex);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__colorHex + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B633784C;
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

uint64_t (*sub_1B632D150(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B632CBF4();
  a1[1] = v3;
  return sub_1B632D198;
}

uint64_t sub_1B632D1C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVehicle__currentVehicleState);
  v5 = *(v1 + OBJC_IVAR___MSVehicle__currentVehicleState + 8);
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
  *(v18 + 16) = sub_1B6337870;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_34_4;
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
    v8 = sub_1B6337870;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B632D598(uint64_t a1, unint64_t a2)
{
  sub_1B6337898(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t (*sub_1B632D5E0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B632D1C8();
  a1[1] = v3;
  return sub_1B632D628;
}

uint64_t sub_1B632D658@<X0>(uint64_t a1@<X8>)
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
  v13 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
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
  *(v26 + 16) = sub_1B6337A68;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_44_3;
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

uint64_t sub_1B632DB58(uint64_t a1)
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
  v12 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
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
    *(v15 + 16) = sub_1B6337A90;
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

void (*sub_1B632DE28(void *a1))(uint64_t *a1, char a2)
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
  sub_1B632D658(v4);
  return sub_1B632DEE4;
}

uint64_t sub_1B632DF14()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__displayName);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__displayName + 8);
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
  *(v18 + 16) = sub_1B6337A9C;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_61_0;
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

    v13 = sub_1B6337A9C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B632E2B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__displayName);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__displayName + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6337AC4;
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

uint64_t (*sub_1B632E470(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B632DF14();
  a1[1] = v3;
  return sub_1B632E4B8;
}

uint64_t sub_1B632E4E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier + 8);
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
  *(v18 + 16) = sub_1B6337AE8;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_79_0;
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

    v13 = sub_1B6337AE8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B632E88C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6337B10;
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

uint64_t (*sub_1B632EA44(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B632E4E8();
  a1[1] = v3;
  return sub_1B632EA8C;
}

uint64_t sub_1B632EABC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__headUnitMacAddress);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__headUnitMacAddress + 8);
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
  *(v18 + 16) = sub_1B6337B34;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_97;
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

    v13 = sub_1B6337B34;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B632EE60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__headUnitMacAddress);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__headUnitMacAddress + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6337B5C;
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

uint64_t (*sub_1B632F018(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B632EABC();
  a1[1] = v3;
  return sub_1B632F060;
}

uint64_t sub_1B632F090()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__iapIdentifier);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__iapIdentifier + 8);
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
  *(v18 + 16) = sub_1B6337B80;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_115_1;
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

    v13 = sub_1B6337B80;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B632F434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__iapIdentifier);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__iapIdentifier + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6337BA8;
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

uint64_t (*sub_1B632F5EC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B632F090();
  a1[1] = v3;
  return sub_1B632F634;
}

id sub_1B632F664(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_1B632F794@<X0>(uint64_t a1@<X8>)
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
  v13 = OBJC_IVAR___MSVehicle__lastStateUpdateDate;
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
  *(v26 + 16) = sub_1B6337BCC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_133_0;
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

void sub_1B632FC94(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
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

uint64_t sub_1B632FDB0(uint64_t a1)
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
  v12 = OBJC_IVAR___MSVehicle__lastStateUpdateDate;
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
    *(v15 + 16) = sub_1B6337BF4;
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

uint64_t sub_1B6330080(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  sub_1B628C510(a1, &v14 - v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = *a2;
  return a5(v11);
}

void sub_1B6330134(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
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
    type metadata accessor for MapsSyncManagedVehicle();
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

void sub_1B633036C(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  type metadata accessor for MapsSyncManagedVehicle();
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

void (*sub_1B63304D8(void *a1))(uint64_t *a1, char a2)
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
  sub_1B632F794(v4);
  return sub_1B6330594;
}

void sub_1B63305AC(uint64_t *a1, char a2, void (*a3)(void *))
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

uint64_t sub_1B633066C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__licensePlate);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__licensePlate + 8);
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
  *(v18 + 16) = sub_1B6337C88;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_151_0;
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

    v13 = sub_1B6337C88;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6330A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__licensePlate);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__licensePlate + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6337CB0;
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

uint64_t (*sub_1B6330BC8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B633066C();
  a1[1] = v3;
  return sub_1B6330C10;
}

uint64_t sub_1B6330C40()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__lprPowerType);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__lprPowerType + 8);
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
  *(v18 + 16) = sub_1B6337CD4;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_169_1;
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

    v13 = sub_1B6337CD4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6330FE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__lprPowerType);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__lprPowerType + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6337CFC;
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

uint64_t (*sub_1B633119C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6330C40();
  a1[1] = v3;
  return sub_1B63311E4;
}

uint64_t sub_1B6331214()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__lprVehicleType);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__lprVehicleType + 8);
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
  *(v18 + 16) = sub_1B6337D20;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_187;
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

    v13 = sub_1B6337D20;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B63315B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__lprVehicleType);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__lprVehicleType + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6337D48;
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

uint64_t (*sub_1B6331770(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6331214();
  a1[1] = v3;
  return sub_1B63317B8;
}

uint64_t sub_1B63317E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__manufacturer);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__manufacturer + 8);
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
  *(v18 + 16) = sub_1B6337D6C;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_205;
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

    v13 = sub_1B6337D6C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6331B8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__manufacturer);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__manufacturer + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6337D94;
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

uint64_t (*sub_1B6331D44(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B63317E8();
  a1[1] = v3;
  return sub_1B6331D8C;
}

uint64_t sub_1B6331DBC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__model);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__model + 8);
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
  *(v18 + 16) = sub_1B6337DB8;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_223;
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

    v13 = sub_1B6337DB8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6332160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__model);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__model + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6337DE0;
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

uint64_t (*sub_1B6332318(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6331DBC();
  a1[1] = v3;
  return sub_1B6332360;
}

uint64_t sub_1B6332390()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__pairedAppIdentifier);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__pairedAppIdentifier + 8);
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
  *(v18 + 16) = sub_1B6337E04;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_241;
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

    v13 = sub_1B6337E04;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6332734(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__pairedAppIdentifier);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__pairedAppIdentifier + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6337E2C;
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

uint64_t (*sub_1B63328EC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6332390();
  a1[1] = v3;
  return sub_1B6332934;
}

uint64_t sub_1B63329BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVehicle__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B6332A68(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSVehicle__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6337E50;
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

id sub_1B6332C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedVehicle();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B6332C68(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVehicle__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6332CEC;
}

uint64_t sub_1B6332D28()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVehicle__powerByConnector);
  v5 = *(v1 + OBJC_IVAR___MSVehicle__powerByConnector + 8);
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
  *(v18 + 16) = sub_1B6337E58;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_266;
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
    v8 = sub_1B6337E58;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B63330F8(uint64_t a1, unint64_t a2)
{
  sub_1B6337E80(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B6333140(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  sub_1B6291034(*a1, v7);
  a5(v6, v7);

  return sub_1B6284F64(v6, v7);
}

uint64_t (*sub_1B63331A4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6332D28();
  a1[1] = v3;
  return sub_1B63331EC;
}

uint64_t sub_1B6333204(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
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

id sub_1B63332A0(void *a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1B633332C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVehicle__preferredChargingNetworks);
  v5 = *(v1 + OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8);
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
  *(v18 + 16) = sub_1B6338050;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_277;
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
    v8 = sub_1B6338050;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1B63336FC(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
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

uint64_t sub_1B63337A4(uint64_t a1, unint64_t a2)
{
  sub_1B6338078(a1, a2);

  return sub_1B6284F64(a1, a2);
}

void sub_1B63337EC(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v21];
  v7 = v21[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedVehicle();
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

void sub_1B6333910(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedVehicle();
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

uint64_t (*sub_1B63339DC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B633332C();
  a1[1] = v3;
  return sub_1B6333A24;
}

uint64_t sub_1B6333A54()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier + 8);
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
  *(v18 + 16) = sub_1B6338248;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_288;
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

    v13 = sub_1B6338248;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6333DF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6338270;
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

uint64_t (*sub_1B6333FB0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6333A54();
  a1[1] = v3;
  return sub_1B6333FF8;
}

uint64_t sub_1B6334054()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVehicle__supportedConnectors);
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
  *(v19 + 16) = sub_1B6338294;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_306;
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
    v14 = sub_1B6338294;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6334414(void *a1)
{
  sub_1B63382BC(a1);
}

void (*sub_1B633444C(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6334054();
  return sub_1B6334494;
}

id sub_1B63344C4(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_1B6334544()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSVehicle__vehicleIdentifier);
  v4 = *(v0 + OBJC_IVAR___MSVehicle__vehicleIdentifier + 8);
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
  *(v18 + 16) = sub_1B633846C;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_316;
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

    v13 = sub_1B633846C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63348E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_1B6334970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__vehicleIdentifier);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__vehicleIdentifier + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6338494;
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

void sub_1B6334B28(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedVehicle();
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

void sub_1B6334C4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedVehicle();
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

uint64_t (*sub_1B6334D10(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6334544();
  a1[1] = v3;
  return sub_1B6334D58;
}

uint64_t sub_1B6334D70(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
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

uint64_t sub_1B6334E34()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVehicle__vehicleType);
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
  *(v19 + 16) = sub_1B63384B8;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_334;
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
    v14 = sub_1B63384B8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63351F4(void *a1)
{
  sub_1B63384E0(a1);
}

void (*sub_1B633522C(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6334E34();
  return sub_1B6335274;
}

void sub_1B633528C(id *a1, char a2, void (*a3)(id))
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

uint64_t sub_1B6335350()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVehicle__year);
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
  *(v19 + 16) = sub_1B6338690;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_345;
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
    v14 = sub_1B6338690;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6335710(void *a1)
{
  sub_1B63386B8(a1);
}

void sub_1B6335748(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v16];
  v7 = v16[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedVehicle();
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

id sub_1B633585C(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedVehicle();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B63358CC(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B6335350();
  return sub_1B6335914;
}

void *sub_1B6335988(void *a1, void *a2, int a3, int a4)
{
  v64 = a4;
  v66 = a3;
  v67 = a2;
  v68 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v60 = &v59 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v59 - v10;
  v11 = &v4[OBJC_IVAR___MSVehicle__colorHex];
  *v11 = 0;
  v11[1] = 0;
  v65 = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSVehicle__currentVehicleState] = xmmword_1B63C3E40;
  v12 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
  v13 = sub_1B63BE994();
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  v15 = &v4[OBJC_IVAR___MSVehicle__displayName];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR___MSVehicle__headUnitMacAddress];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR___MSVehicle__iapIdentifier];
  *v18 = 0;
  v18[1] = 0;
  v14(&v4[OBJC_IVAR___MSVehicle__lastStateUpdateDate], 1, 1, v13);
  v19 = &v4[OBJC_IVAR___MSVehicle__licensePlate];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v4[OBJC_IVAR___MSVehicle__lprPowerType];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v4[OBJC_IVAR___MSVehicle__lprVehicleType];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v4[OBJC_IVAR___MSVehicle__manufacturer];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v4[OBJC_IVAR___MSVehicle__model];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v4[OBJC_IVAR___MSVehicle__pairedAppIdentifier];
  *v24 = 0;
  v24[1] = 0;
  *&v4[OBJC_IVAR___MSVehicle__positionIndex] = 0;
  v25 = v65;
  *&v4[OBJC_IVAR___MSVehicle__powerByConnector] = v65;
  *&v4[OBJC_IVAR___MSVehicle__preferredChargingNetworks] = v25;
  v26 = &v4[OBJC_IVAR___MSVehicle__siriIntentsIdentifier];
  *v26 = 0;
  v26[1] = 0;
  *&v4[OBJC_IVAR___MSVehicle__supportedConnectors] = 0;
  v27 = &v4[OBJC_IVAR___MSVehicle__vehicleIdentifier];
  *v27 = 0;
  v27[1] = 0;
  *&v4[OBJC_IVAR___MSVehicle__vehicleType] = 0;
  *&v4[OBJC_IVAR___MSVehicle__year] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v28 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v28] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v29 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v30 = type metadata accessor for MapsSyncHashing();
  (*(*(v30 - 8) + 56))(&v4[v29], 1, 1, v30);
  v31 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v32 = sub_1B63BEA04();
  v33 = *(*(v32 - 8) + 56);
  v33(&v4[v31], 1, 1, v32);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v13);
  v34 = v66;
  v35 = v67;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v67;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v34;
  v36 = type metadata accessor for MapsSyncObject();
  v69.receiver = v4;
  v69.super_class = v36;
  v37 = v68;
  v38 = v35;
  v39 = objc_msgSendSuper2(&v69, sel_init);
  v40 = v39;
  if (v37)
  {
    v41 = v39;
    v42 = [v37 objectID];
    v43 = *(v41 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v41 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v42;

    (*((*MEMORY[0x1E69E7D40] & *v41) + 0x218))(v37, v34 & 1, v64 & 1);
  }

  else
  {
    v44 = v39;
    v45 = v63;
    sub_1B63BE9F4();
    v33(v45, 0, 1, v32);
    v46 = v60;
    sub_1B628C510(v45, v60, &unk_1EB943680, qword_1B63C4070);
    v47 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v46, &v44[v47], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v48 = v62;
    sub_1B628C510(v45, v62, &unk_1EB943680, qword_1B63C4070);
    v49 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v50 = swift_allocObject();
    sub_1B628A128(v48, v50 + v49, &unk_1EB943680, qword_1B63C4070);
    v51 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v52 = *&v44[v51];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v44[v51] = v52;
    v54 = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = sub_1B629A8E8(0, v52[2] + 1, 1, v52);
      *&v44[v51] = v52;
    }

    v56 = v52[2];
    v55 = v52[3];
    if (v56 >= v55 >> 1)
    {
      v52 = sub_1B629A8E8((v55 > 1), v56 + 1, 1, v52);
    }

    v52[2] = v56 + 1;
    v57 = &v52[2 * v56];
    v57[4] = sub_1B62B2D5C;
    v57[5] = v50;
    *&v44[v51] = v52;
    swift_endAccess();

    sub_1B6284EAC(v54, &unk_1EB943680, qword_1B63C4070);
  }

  return v40;
}

void sub_1B633606C()
{
  v1 = *(v0 + OBJC_IVAR___MSVehicle__colorHex + 8);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSVehicle__currentVehicleState), *(v0 + OBJC_IVAR___MSVehicle__currentVehicleState + 8));
  sub_1B6284EAC(v0 + OBJC_IVAR___MSVehicle__dateOfVehicleIngestion, &unk_1EB943210, &unk_1B63C3F50);
  v2 = *(v0 + OBJC_IVAR___MSVehicle__displayName + 8);

  v3 = *(v0 + OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR___MSVehicle__headUnitMacAddress + 8);

  v5 = *(v0 + OBJC_IVAR___MSVehicle__iapIdentifier + 8);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSVehicle__lastStateUpdateDate, &unk_1EB943210, &unk_1B63C3F50);
  v6 = *(v0 + OBJC_IVAR___MSVehicle__licensePlate + 8);

  v7 = *(v0 + OBJC_IVAR___MSVehicle__lprPowerType + 8);

  v8 = *(v0 + OBJC_IVAR___MSVehicle__lprVehicleType + 8);

  v9 = *(v0 + OBJC_IVAR___MSVehicle__manufacturer + 8);

  v10 = *(v0 + OBJC_IVAR___MSVehicle__model + 8);

  v11 = *(v0 + OBJC_IVAR___MSVehicle__pairedAppIdentifier + 8);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSVehicle__powerByConnector), *(v0 + OBJC_IVAR___MSVehicle__powerByConnector + 8));
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSVehicle__preferredChargingNetworks), *(v0 + OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8));
  v12 = *(v0 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier + 8);

  v13 = *(v0 + OBJC_IVAR___MSVehicle__vehicleIdentifier + 8);

  v14 = *(v0 + OBJC_IVAR___MSVehicle__year);
}

id Vehicle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Vehicle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B6336468(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v182 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v182 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v182 - v16;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedVehicle();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v184 = v9;
  v20 = a1;
  v21 = v20;
  v22 = 0x1EB942000;
  v23 = &off_1B63C3000;
  if (a2)
  {
    v24 = (v2 + OBJC_IVAR___MSVehicle__colorHex);
    v25 = *(v2 + OBJC_IVAR___MSVehicle__colorHex + 8);
    *v24 = 0;
    v24[1] = 0;

LABEL_8:
    v33 = (v2 + *(v22 + 3320));
    v34 = *v33;
    v35 = v33[1];
    *v33 = *(v23 + 228);
    sub_1B6284F64(v34, v35);
    v36 = sub_1B63BE994();
    (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
    goto LABEL_16;
  }

  v183 = v20;
  v26 = [v19 colorHex];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1B63BEBD4();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = (v2 + OBJC_IVAR___MSVehicle__colorHex);
  v32 = *(v2 + OBJC_IVAR___MSVehicle__colorHex + 8);
  *v31 = v28;
  v31[1] = v30;

  v21 = v183;
  v23 = &off_1B63C3000;
  v22 = 0x1EB942000uLL;
  if (a2)
  {
    goto LABEL_8;
  }

  v37 = [v19 currentVehicleState];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1B63BE924();
    v41 = v40;

    v22 = 0x1EB942000;
  }

  else
  {
    v39 = 0;
    v41 = 0xF000000000000000;
  }

  v42 = (v2 + *(v22 + 3320));
  v43 = *v42;
  v44 = v42[1];
  *v42 = v39;
  v42[1] = v41;
  sub_1B6284F64(v43, v44);
  v45 = [v19 dateOfVehicleIngestion];
  if (v45)
  {
    v46 = v45;
    sub_1B63BE974();

    v47 = sub_1B63BE994();
    (*(*(v47 - 8) + 56))(v15, 0, 1, v47);
  }

  else
  {
    v48 = sub_1B63BE994();
    (*(*(v48 - 8) + 56))(v15, 1, 1, v48);
  }

  v21 = v183;
  v23 = &off_1B63C3000;
  sub_1B628A128(v15, v17, &unk_1EB943210, &unk_1B63C3F50);
LABEL_16:
  v49 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
  swift_beginAccess();
  sub_1B6282DFC(v17, v2 + v49, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  if (a2)
  {
    v50 = (v2 + OBJC_IVAR___MSVehicle__displayName);
    v51 = *(v2 + OBJC_IVAR___MSVehicle__displayName + 8);
    *v50 = 0;
    v50[1] = 0;
  }

  else
  {
    v52 = [v19 displayName];
    if (v52)
    {
      v53 = v52;
      v54 = sub_1B63BEBD4();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    v57 = (v2 + OBJC_IVAR___MSVehicle__displayName);
    v58 = *(v2 + OBJC_IVAR___MSVehicle__displayName + 8);
    *v57 = v54;
    v57[1] = v56;

    v59 = [v19 headUnitBluetoothIdentifier];
    if (v59)
    {
      v60 = v59;
      v61 = sub_1B63BEBD4();
      v63 = v62;

      goto LABEL_24;
    }
  }

  v61 = 0;
  v63 = 0;
LABEL_24:
  v64 = (v2 + OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier);
  v65 = *(v2 + OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier + 8);
  *v64 = v61;
  v64[1] = v63;

  if (a2)
  {
    v66 = (v2 + OBJC_IVAR___MSVehicle__headUnitMacAddress);
    v67 = *(v2 + OBJC_IVAR___MSVehicle__headUnitMacAddress + 8);
    *v66 = 0;
    v66[1] = 0;
  }

  else
  {
    v68 = [v19 headUnitMacAddress];
    if (v68)
    {
      v69 = v68;
      v70 = sub_1B63BEBD4();
      v72 = v71;
    }

    else
    {
      v70 = 0;
      v72 = 0;
    }

    v73 = (v2 + OBJC_IVAR___MSVehicle__headUnitMacAddress);
    v74 = *(v2 + OBJC_IVAR___MSVehicle__headUnitMacAddress + 8);
    *v73 = v70;
    v73[1] = v72;

    v75 = [v19 iapIdentifier];
    if (v75)
    {
      v76 = v75;
      v77 = sub_1B63BEBD4();
      v79 = v78;

      goto LABEL_32;
    }
  }

  v77 = 0;
  v79 = 0;
LABEL_32:
  v80 = v184;
  v81 = (v2 + OBJC_IVAR___MSVehicle__iapIdentifier);
  v82 = *(v2 + OBJC_IVAR___MSVehicle__iapIdentifier + 8);
  *v81 = v77;
  v81[1] = v79;

  if (a2)
  {
    v83 = sub_1B63BE994();
    (*(*(v83 - 8) + 56))(v12, 1, 1, v83);
  }

  else
  {
    v84 = [v19 lastStateUpdateDate];
    if (v84)
    {
      v85 = v84;
      sub_1B63BE974();

      v86 = 0;
    }

    else
    {
      v86 = 1;
    }

    v87 = sub_1B63BE994();
    (*(*(v87 - 8) + 56))(v80, v86, 1, v87);
    sub_1B628A128(v80, v12, &unk_1EB943210, &unk_1B63C3F50);
  }

  v88 = OBJC_IVAR___MSVehicle__lastStateUpdateDate;
  swift_beginAccess();
  sub_1B6282DFC(v12, v2 + v88, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  if (a2)
  {
    v89 = (v2 + OBJC_IVAR___MSVehicle__licensePlate);
    v90 = *(v2 + OBJC_IVAR___MSVehicle__licensePlate + 8);
    *v89 = 0;
    v89[1] = 0;
  }

  else
  {
    v91 = [v19 licensePlate];
    if (v91)
    {
      v92 = v91;
      v93 = sub_1B63BEBD4();
      v95 = v94;
    }

    else
    {
      v93 = 0;
      v95 = 0;
    }

    v96 = (v2 + OBJC_IVAR___MSVehicle__licensePlate);
    v97 = *(v2 + OBJC_IVAR___MSVehicle__licensePlate + 8);
    *v96 = v93;
    v96[1] = v95;

    v98 = [v19 lprPowerType];
    if (v98)
    {
      v99 = v98;
      v100 = sub_1B63BEBD4();
      v102 = v101;

      goto LABEL_46;
    }
  }

  v100 = 0;
  v102 = 0;
LABEL_46:
  v103 = (v2 + OBJC_IVAR___MSVehicle__lprPowerType);
  v104 = *(v2 + OBJC_IVAR___MSVehicle__lprPowerType + 8);
  *v103 = v100;
  v103[1] = v102;

  if (a2)
  {
    v105 = (v2 + OBJC_IVAR___MSVehicle__lprVehicleType);
    v106 = *(v2 + OBJC_IVAR___MSVehicle__lprVehicleType + 8);
    *v105 = 0;
    v105[1] = 0;
  }

  else
  {
    v107 = [v19 lprVehicleType];
    if (v107)
    {
      v108 = v107;
      v109 = sub_1B63BEBD4();
      v111 = v110;
    }

    else
    {
      v109 = 0;
      v111 = 0;
    }

    v112 = (v2 + OBJC_IVAR___MSVehicle__lprVehicleType);
    v113 = *(v2 + OBJC_IVAR___MSVehicle__lprVehicleType + 8);
    *v112 = v109;
    v112[1] = v111;

    v114 = [v19 manufacturer];
    if (v114)
    {
      v115 = v114;
      v116 = sub_1B63BEBD4();
      v118 = v117;

      goto LABEL_54;
    }
  }

  v116 = 0;
  v118 = 0;
LABEL_54:
  v119 = (v2 + OBJC_IVAR___MSVehicle__manufacturer);
  v120 = *(v2 + OBJC_IVAR___MSVehicle__manufacturer + 8);
  *v119 = v116;
  v119[1] = v118;

  if (a2)
  {
    v121 = (v2 + OBJC_IVAR___MSVehicle__model);
    v122 = *(v2 + OBJC_IVAR___MSVehicle__model + 8);
    *v121 = 0;
    v121[1] = 0;
  }

  else
  {
    v123 = [v19 model];
    if (v123)
    {
      v124 = v123;
      v125 = sub_1B63BEBD4();
      v127 = v126;
    }

    else
    {
      v125 = 0;
      v127 = 0;
    }

    v128 = (v2 + OBJC_IVAR___MSVehicle__model);
    v129 = *(v2 + OBJC_IVAR___MSVehicle__model + 8);
    *v128 = v125;
    v128[1] = v127;

    v130 = [v19 pairedAppIdentifier];
    if (v130)
    {
      v131 = v130;
      v132 = sub_1B63BEBD4();
      v134 = v133;

      goto LABEL_62;
    }
  }

  v132 = 0;
  v134 = 0;
LABEL_62:
  v135 = (v2 + OBJC_IVAR___MSVehicle__pairedAppIdentifier);
  v136 = *(v2 + OBJC_IVAR___MSVehicle__pairedAppIdentifier + 8);
  *v135 = v132;
  v135[1] = v134;

  v137 = [v19 positionIndex];
  *(v2 + OBJC_IVAR___MSVehicle__positionIndex) = v137;
  if (a2)
  {
    v138 = *(v2 + OBJC_IVAR___MSVehicle__powerByConnector);
    v139 = *(v2 + OBJC_IVAR___MSVehicle__powerByConnector + 8);
    *(v2 + OBJC_IVAR___MSVehicle__powerByConnector) = *(v23 + 228);
    sub_1B6284F64(v138, v139);
LABEL_69:
    v150 = 0;
    v152 = 0xF000000000000000;
    goto LABEL_70;
  }

  v140 = [v19 powerByConnector];
  if (v140)
  {
    v141 = v140;
    v142 = sub_1B63BE924();
    v144 = v143;
  }

  else
  {
    v142 = 0;
    v144 = 0xF000000000000000;
  }

  v145 = (v2 + OBJC_IVAR___MSVehicle__powerByConnector);
  v146 = *(v2 + OBJC_IVAR___MSVehicle__powerByConnector);
  v147 = *(v2 + OBJC_IVAR___MSVehicle__powerByConnector + 8);
  *v145 = v142;
  v145[1] = v144;
  sub_1B6284F64(v146, v147);
  v148 = [v19 preferredChargingNetworks];
  if (!v148)
  {
    goto LABEL_69;
  }

  v149 = v148;
  v150 = sub_1B63BE924();
  v152 = v151;

LABEL_70:
  v153 = (v2 + OBJC_IVAR___MSVehicle__preferredChargingNetworks);
  v154 = *(v2 + OBJC_IVAR___MSVehicle__preferredChargingNetworks);
  v155 = *(v2 + OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8);
  *v153 = v150;
  v153[1] = v152;
  sub_1B6284F64(v154, v155);
  if (a2)
  {
    v156 = (v2 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier);
    v157 = *(v2 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier + 8);
    *v156 = 0;
    v156[1] = 0;

    v158 = *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors);
    *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors) = 0;

    v159 = (v2 + OBJC_IVAR___MSVehicle__vehicleIdentifier);
    v160 = *(v2 + OBJC_IVAR___MSVehicle__vehicleIdentifier + 8);
    *v159 = 0;
    v159[1] = 0;

    v161 = *(v2 + OBJC_IVAR___MSVehicle__vehicleType);
    *(v2 + OBJC_IVAR___MSVehicle__vehicleType) = 0;

    v162 = 0;
  }

  else
  {
    v163 = [v19 siriIntentsIdentifier];
    if (v163)
    {
      v164 = v163;
      v165 = sub_1B63BEBD4();
      v167 = v166;
    }

    else
    {
      v165 = 0;
      v167 = 0;
    }

    v168 = (v2 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier);
    v169 = *(v2 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier + 8);
    *v168 = v165;
    v168[1] = v167;

    v170 = [v19 supportedConnectors];
    v171 = *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors);
    *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors) = v170;

    v172 = [v19 vehicleIdentifier];
    if (v172)
    {
      v173 = v172;
      v174 = sub_1B63BEBD4();
      v176 = v175;
    }

    else
    {
      v174 = 0;
      v176 = 0;
    }

    v177 = (v2 + OBJC_IVAR___MSVehicle__vehicleIdentifier);
    v178 = *(v2 + OBJC_IVAR___MSVehicle__vehicleIdentifier + 8);
    *v177 = v174;
    v177[1] = v176;

    v179 = [v19 vehicleType];
    v180 = *(v2 + OBJC_IVAR___MSVehicle__vehicleType);
    *(v2 + OBJC_IVAR___MSVehicle__vehicleType) = v179;

    v162 = [v19 year];
  }

  v181 = *(v2 + OBJC_IVAR___MSVehicle__year);
  *(v2 + OBJC_IVAR___MSVehicle__year) = v162;
}

id sub_1B6336F54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v47 = &v83 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v83 - v48;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v99 = qword_1EDB0F2A8;
  if (a2)
  {
    v98 = sub_1B63BEBC4();
  }

  else
  {
    v98 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v97 = 0;
  }

  else
  {
    sub_1B629119C(a3, a4);
    v97 = sub_1B63BE904();
    sub_1B6284F64(a3, a4);
  }

  sub_1B628C510(a5, v49, &unk_1EB943210, &unk_1B63C3F50);
  v50 = sub_1B63BE994();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v49, 1, v50);
  v102 = 0;
  if (v53 != 1)
  {
    v102 = sub_1B63BE954();
    (*(v51 + 8))(v49, v50);
  }

  if (a7)
  {
    v95 = sub_1B63BEBC4();

    v54 = a11;
    if (a9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v95 = 0;
    v54 = a11;
    if (a9)
    {
LABEL_13:
      v94 = sub_1B63BEBC4();

      v55 = a13;
      v56 = a14;
      if (v54)
      {
        goto LABEL_14;
      }

LABEL_18:
      v93 = 0;
      if (v55)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  v94 = 0;
  v55 = a13;
  v56 = a14;
  if (!v54)
  {
    goto LABEL_18;
  }

LABEL_14:
  v93 = sub_1B63BEBC4();

  if (v55)
  {
LABEL_15:
    v92 = sub_1B63BEBC4();

    goto LABEL_20;
  }

LABEL_19:
  v92 = 0;
LABEL_20:
  sub_1B628C510(v56, v47, &unk_1EB943210, &unk_1B63C3F50);
  if (v52(v47, 1, v50) == 1)
  {
    v105 = 0;
    v57 = a18;
    if (a16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v105 = sub_1B63BE954();
    (*(v51 + 8))(v47, v50);
    v57 = a18;
    if (a16)
    {
LABEL_22:
      v91 = sub_1B63BEBC4();

      v58 = a20;
      if (v57)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  v91 = 0;
  v58 = a20;
  if (v57)
  {
LABEL_23:
    v103 = sub_1B63BEBC4();

    v59 = a22;
    if (v58)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  v103 = 0;
  v59 = a22;
  if (v58)
  {
LABEL_24:
    v90 = sub_1B63BEBC4();

    v60 = a24;
    if (v59)
    {
      goto LABEL_25;
    }

LABEL_31:
    v89 = 0;
    v61 = a26;
    if (v60)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_30:
  v90 = 0;
  v60 = a24;
  if (!v59)
  {
    goto LABEL_31;
  }

LABEL_25:
  v89 = sub_1B63BEBC4();

  v61 = a26;
  if (v60)
  {
LABEL_26:
    v104 = sub_1B63BEBC4();

    goto LABEL_33;
  }

LABEL_32:
  v104 = 0;
LABEL_33:
  v101 = a5;
  if (v61)
  {
    v62 = sub_1B63BEBC4();
  }

  else
  {
    v62 = 0;
  }

  if (a29 >> 60 == 15)
  {
    v63 = 0;
  }

  else
  {
    sub_1B629119C(a28, a29);
    v63 = sub_1B63BE904();
    sub_1B6284F64(a28, a29);
  }

  if (a31 >> 60 == 15)
  {
    v64 = 0;
  }

  else
  {
    sub_1B629119C(a30, a31);
    v64 = sub_1B63BE904();
    sub_1B6284F64(a30, a31);
  }

  v96 = v56;
  if (a33)
  {
    v65 = sub_1B63BEBC4();
  }

  else
  {
    v65 = 0;
  }

  if (a36)
  {
    v66 = sub_1B63BEBC4();
  }

  else
  {
    v66 = 0;
  }

  v88 = v66;
  v82 = v66;
  v81 = v65;
  v87 = v64;
  v80 = v64;
  v85 = v63;
  v79 = v63;
  v84 = v62;
  v78 = v62;
  v67 = v89;
  v68 = v90;
  v86 = v65;
  v69 = v91;
  v70 = v92;
  v71 = v93;
  v73 = v97;
  v72 = v98;
  v74 = v102;
  v76 = v94;
  v75 = v95;
  v100 = [v100 initWithStore:v99 colorHex:v98 currentVehicleState:v97 dateOfVehicleIngestion:v102 displayName:v95 headUnitBluetoothIdentifier:v94 headUnitMacAddress:v93 iapIdentifier:v92 lastStateUpdateDate:v105 licensePlate:v91 lprPowerType:v103 lprVehicleType:v90 manufacturer:v89 model:v104 pairedAppIdentifier:v78 positionIndex:a27 powerByConnector:v79 preferredChargingNetworks:v80 siriIntentsIdentifier:v81 supportedConnectors:a34 vehicleIdentifier:v82 vehicleType:a37 year:a38];

  sub_1B6284EAC(v96, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v101, &unk_1EB943210, &unk_1B63C3F50);
  return v100;
}

void sub_1B63375B4(uint64_t a1, void *a2)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v4 = *(v3 + 80);
  v32 = (v4 + 48) & ~v4;
  v5 = *(v3 + 64) + 7;
  v6 = (v5 + v32) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v4 + v9 + 16) & ~v4;
  v11 = (v5 + v10) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = v2 + v8;
  v20 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v2 + v13);
  v23 = *v22;
  v24 = v22[1];
  v25 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v2 + v14);
  v27 = *v26;
  v28 = v26[1];
  v29 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v2 + v17);
  v31 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1B632BDF0(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v32, *(v2 + v6), *(v2 + v6 + 8), *(v2 + v7), *(v2 + v7 + 8), *v19, *(v19 + 8), *(v2 + v9), *(v2 + v9 + 8), v2 + v10, *(v2 + v11), *(v2 + v11 + 8), *(v2 + v12), *(v2 + v12 + 8), v23, v24, v27, v28, *(v2 + v15), *(v2 + v15 + 8), *(v2 + v16), *(v2 + v16 + 8), v30, *(v2 + v18), *(v2 + v18 + 8), *(v2 + v20), *(v2 + v20 + 8), *(v2 + v21), *(v2 + v21 + 8), *(v2 + v25), *(v2 + v29), *(v2 + v29 + 8), *(v2 + v31), *(v2 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1B6337898(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__currentVehicleState);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__currentVehicleState);
  v9 = *(v3 + OBJC_IVAR___MSVehicle__currentVehicleState + 8);
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
    *(v11 + 16) = sub_1B63399D4;
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

id sub_1B6337E80(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__powerByConnector);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__powerByConnector);
  v9 = *(v3 + OBJC_IVAR___MSVehicle__powerByConnector + 8);
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
    *(v11 + 16) = sub_1B63399B0;
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

id sub_1B6338078(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__preferredChargingNetworks);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__preferredChargingNetworks);
  v9 = *(v3 + OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8);
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
    *(v11 + 16) = sub_1B633998C;
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

id sub_1B63382BC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors);
  *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6339968;
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

id sub_1B63384E0(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVehicle__vehicleType);
  *(v2 + OBJC_IVAR___MSVehicle__vehicleType) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6339944;
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

id sub_1B63386B8(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVehicle__year);
  *(v2 + OBJC_IVAR___MSVehicle__year) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6339920;
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

uint64_t keypath_setTm_3(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

void sub_1B63388B0()
{
  sub_1B628CC34();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id Visit.__allocating_init(hidden:startDate:visitClassification:)(char a1, uint64_t a2, __int16 a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = objc_allocWithZone(v4);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB0F2A8;
  sub_1B628C510(a2, v11, &unk_1EB943210, &unk_1B63C3F50);
  v14 = sub_1B63BE994();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    v16 = sub_1B63BE954();
    (*(v15 + 8))(v11, v14);
  }

  v17 = [v12 initWithStore:v13 hidden:a1 & 1 startDate:v16 visitClassification:a3];

  sub_1B6284EAC(a2, &unk_1EB943210, &unk_1B63C3F50);
  return v17;
}

id Visit.init(hidden:startDate:visitClassification:)(char a1, uint64_t a2, __int16 a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB0F2A8;
  sub_1B628C510(a2, v11, &unk_1EB943210, &unk_1B63C3F50);
  v13 = sub_1B63BE994();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_1B63BE954();
    (*(v14 + 8))(v11, v13);
  }

  v16 = [v4 initWithStore:v12 hidden:a1 & 1 startDate:v15 visitClassification:a3];

  sub_1B6284EAC(a2, &unk_1EB943210, &unk_1B63C3F50);
  return v16;
}

char *Visit.__allocating_init(store:hidden:startDate:visitClassification:)(void *a1, char a2, uint64_t a3, int a4)
{
  v5 = v4;
  v38 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  v14 = objc_allocWithZone(v5);
  v39 = a1;
  v15 = [v14 initWithStore_];
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v17 = *&v15[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v18 = v15;
  [v17 lock];
  v35[1] = *&v15[v16];
  v18[OBJC_IVAR___MSVisit__hidden] = a2;
  sub_1B628C510(a3, v13, &unk_1EB943210, &unk_1B63C3F50);
  v19 = OBJC_IVAR___MSVisit__startDate;
  swift_beginAccess();
  sub_1B6282DFC(v13, &v18[v19], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v20 = v38;
  *&v18[OBJC_IVAR___MSVisit__visitClassification] = v38;
  v40 = a3;
  v21 = a3;
  v22 = v36;
  sub_1B628C510(v21, v36, &unk_1EB943210, &unk_1B63C3F50);
  v23 = (*(v37 + 80) + 17) & ~*(v37 + 80);
  v24 = (v10 + v23 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  sub_1B628A128(v22, v25 + v23, &unk_1EB943210, &unk_1B63C3F50);
  *(v25 + v24) = v20;
  sub_1B6282B88();
  v26 = *&v15[v16];
  if (sub_1B63BEF24())
  {
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1B633CF74;
    *(v27 + 24) = v25;
    v28 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v29 = *&v18[v28];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v18[v28] = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_1B629A8E8(0, v29[2] + 1, 1, v29);
      *&v18[v28] = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_1B629A8E8((v31 > 1), v32 + 1, 1, v29);
    }

    v29[2] = v32 + 1;
    v33 = &v29[2 * v32];
    v33[4] = sub_1B62B8188;
    v33[5] = v27;
    *&v18[v28] = v29;
    swift_endAccess();
  }

  [*&v15[v16] unlock];

  sub_1B6284EAC(v40, &unk_1EB943210, &unk_1B63C3F50);
  return v18;
}

char *Visit.init(store:hidden:startDate:visitClassification:)(void *a1, char a2, uint64_t a3, int a4)
{
  v5 = v4;
  v38 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v39 = a1;
  v14 = [v5 initWithStore_];
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v16 = *&v14[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v17 = v14;
  [v16 lock];
  v36 = *&v14[v15];
  v17[OBJC_IVAR___MSVisit__hidden] = a2;
  sub_1B628C510(a3, v13, &unk_1EB943210, &unk_1B63C3F50);
  v18 = OBJC_IVAR___MSVisit__startDate;
  swift_beginAccess();
  sub_1B6282DFC(v13, &v17[v18], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v19 = v38;
  *&v17[OBJC_IVAR___MSVisit__visitClassification] = v38;
  v40 = a3;
  v20 = a3;
  v21 = v35;
  sub_1B628C510(v20, v35, &unk_1EB943210, &unk_1B63C3F50);
  v22 = (*(v37 + 80) + 17) & ~*(v37 + 80);
  v23 = (v10 + v22 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  sub_1B628A128(v21, v24 + v22, &unk_1EB943210, &unk_1B63C3F50);
  *(v24 + v23) = v19;
  sub_1B6282B88();
  v25 = *&v14[v15];
  if (sub_1B63BEF24())
  {
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1B633D684;
    *(v26 + 24) = v24;
    v27 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v28 = *&v17[v27];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v17[v27] = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1B629A8E8(0, v28[2] + 1, 1, v28);
      *&v17[v27] = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_1B629A8E8((v30 > 1), v31 + 1, 1, v28);
    }

    v28[2] = v31 + 1;
    v32 = &v28[2 * v31];
    v32[4] = sub_1B62B9488;
    v32[5] = v26;
    *&v17[v27] = v28;
    swift_endAccess();
  }

  [*&v14[v15] unlock];

  sub_1B6284EAC(v40, &unk_1EB943210, &unk_1B63C3F50);
  return v17;
}

void sub_1B633A738(uint64_t a1, void *a2, char a3, uint64_t a4, __int16 a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  type metadata accessor for MapsSyncManagedVisit();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = a2;
    [v14 setHidden_];
    sub_1B628C510(a4, v12, &unk_1EB943210, &unk_1B63C3F50);
    v16 = sub_1B63BE994();
    v17 = *(v16 - 8);
    v18 = 0;
    if ((*(v17 + 48))(v12, 1, v16) != 1)
    {
      v18 = sub_1B63BE954();
      (*(v17 + 8))(v12, v16);
    }

    [v14 setStartDate_];

    [v14 setVisitClassification_];
  }
}

void sub_1B633AA2C(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedVisit();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = a1;
    v18 = [v16 hidden];
    *(v4 + OBJC_IVAR___MSVisit__hidden) = v18;
    if (a2)
    {
      v19 = sub_1B63BE994();
      (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    }

    else
    {
      v20 = [v16 startDate];
      if (v20)
      {
        v21 = v20;
        sub_1B63BE974();

        v22 = sub_1B63BE994();
        (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
      }

      else
      {
        v23 = sub_1B63BE994();
        (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
      }

      sub_1B628A128(v12, v14, &unk_1EB943210, &unk_1B63C3F50);
    }

    v24 = OBJC_IVAR___MSVisit__startDate;
    swift_beginAccess();
    sub_1B6282DFC(v14, v4 + v24, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v25 = [v16 visitClassification];
    *(v4 + OBJC_IVAR___MSVisit__visitClassification) = v25;
    if (a3)
    {
      v26 = [v16 location];
      if (v26)
      {
        v27 = v26;
        v28 = *(v4 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
        objc_allocWithZone(type metadata accessor for VisitedLocation());
        v29 = v27;
        v30 = sub_1B63471D0(v27, v28, a2 & 1, 1);

        v17 = *(v4 + OBJC_IVAR___MSVisit__location);
        *(v4 + OBJC_IVAR___MSVisit__location) = v30;
      }
    }
  }
}

uint64_t sub_1B633ADF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVisit__hidden);
  [v1 unlock];
  return v2;
}

id sub_1B633AEA4(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSVisit__hidden) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B633D034;
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

id sub_1B633B040(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedVisit();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setHidden_];
  }

  return result;
}

id (*sub_1B633B0A4(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisit__hidden);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B633B128;
}

uint64_t sub_1B633B278@<X0>(uint64_t a1@<X8>)
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
  v13 = OBJC_IVAR___MSVisit__startDate;
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
  *(v26 + 16) = sub_1B633D03C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B8284;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_22;
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

uint64_t sub_1B633B878(uint64_t a1)
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
  v12 = OBJC_IVAR___MSVisit__startDate;
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
    *(v15 + 16) = sub_1B633D048;
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

uint64_t sub_1B633BB48(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1B628C510(a1, &v10 - v6, &unk_1EB943210, &unk_1B63C3F50);
  v8 = *a2;
  return sub_1B633B878(v7);
}

void sub_1B633BBF4(void *a1, uint64_t a2, uint64_t a3)
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
    type metadata accessor for MapsSyncManagedVisit();
    v17 = swift_dynamicCastClass();
    v18 = v15;
    if (v17 && (v19 = [v17 startDate]) != 0)
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

void sub_1B633BE24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  type metadata accessor for MapsSyncManagedVisit();
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

    [v10 setStartDate_];
  }
}

void (*sub_1B633BF90(void *a1))(uint64_t *a1, char a2)
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
  sub_1B633B278(v4);
  return sub_1B633C04C;
}

void sub_1B633C04C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1B628C510(a1[2], v2, &unk_1EB943210, &unk_1B63C3F50);
    sub_1B633B878(v2);
    sub_1B6284EAC(v3, &unk_1EB943210, &unk_1B63C3F50);
  }

  else
  {
    sub_1B633B878(a1[2]);
  }

  free(v3);

  free(v2);
}