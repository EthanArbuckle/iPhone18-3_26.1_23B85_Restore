uint64_t sub_1B62B416C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSAnonymousCredential__anonymousId);
  v5 = *(v1 + OBJC_IVAR___MSAnonymousCredential__anonymousId + 8);
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
  *(v18 + 16) = sub_1B62B825C;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_0;
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
    v8 = sub_1B62B825C;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B62B453C(uint64_t a1, unint64_t a2)
{
  sub_1B62B828C(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t (*sub_1B62B4584(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62B416C();
  a1[1] = v3;
  return sub_1B62B45CC;
}

id sub_1B62B45FC(void *a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1B62B4688()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSAnonymousCredential__mapsToken);
  v5 = *(v1 + OBJC_IVAR___MSAnonymousCredential__mapsToken + 8);
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
  *(v18 + 16) = sub_1B62B845C;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_27;
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
    v8 = sub_1B62B845C;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1B62B4A58(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
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

uint64_t sub_1B62B4B00(uint64_t a1, unint64_t a2)
{
  sub_1B62B8484(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62B4B48(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  sub_1B6291034(*a1, v7);
  a5(v6, v7);

  return sub_1B6284F64(v6, v7);
}

void sub_1B62B4BAC(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v21];
  v7 = v21[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedAnonymousCredential();
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

void sub_1B62B4CD0(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedAnonymousCredential();
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

uint64_t (*sub_1B62B4D9C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62B4688();
  a1[1] = v3;
  return sub_1B62B4DE4;
}

uint64_t sub_1B62B4DFC(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
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

uint64_t sub_1B62B4FA8@<X0>(uint64_t a1@<X8>)
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
  v13 = OBJC_IVAR___MSAnonymousCredential__mapsTokenCreatedAt;
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
  *(v26 + 16) = sub_1B62B8654;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_38;
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

uint64_t sub_1B62B55A8(uint64_t a1)
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
  v12 = OBJC_IVAR___MSAnonymousCredential__mapsTokenCreatedAt;
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
    *(v15 + 16) = sub_1B62B8660;
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

uint64_t sub_1B62B5878(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1B628C510(a1, &v10 - v6, &unk_1EB943210, &unk_1B63C3F50);
  v8 = *a2;
  return sub_1B62B55A8(v7);
}

void sub_1B62B5924(void *a1, uint64_t a2, uint64_t a3)
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
    type metadata accessor for MapsSyncManagedAnonymousCredential();
    v17 = swift_dynamicCastClass();
    v18 = v15;
    if (v17 && (v19 = [v17 mapsTokenCreatedAt]) != 0)
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

void sub_1B62B5B54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  type metadata accessor for MapsSyncManagedAnonymousCredential();
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

    [v10 setMapsTokenCreatedAt_];
  }
}

void (*sub_1B62B5CC0(void *a1))(uint64_t *a1, char a2)
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
  sub_1B62B4FA8(v4);
  return sub_1B62B5D7C;
}

void sub_1B62B5D7C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1B628C510(a1[2], v2, &unk_1EB943210, &unk_1B63C3F50);
    sub_1B62B55A8(v2);
    sub_1B6284EAC(v3, &unk_1EB943210, &unk_1B63C3F50);
  }

  else
  {
    sub_1B62B55A8(a1[2]);
  }

  free(v3);

  free(v2);
}

id sub_1B62B5E84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsTokenTTL) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62B86EC;
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

id (*sub_1B62B6020(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSAnonymousCredential__mapsTokenTTL);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62B60A4;
}

uint64_t sub_1B62B60D4(char *a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v7 = a1;
  [v6 lock];
  v8 = *&v7[*a3];
  [*&a1[v5] unlock];

  return v8;
}

uint64_t sub_1B62B6158(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + *a1);
  [v3 unlock];
  return v4;
}

id sub_1B62B620C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSAnonymousCredential__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62B8710;
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

id sub_1B62B63A8(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedAnonymousCredential();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62B6418(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSAnonymousCredential__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62B649C;
}

char *sub_1B62B64C0()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B8F70(MEMORY[0x1E69E7CC0], &qword_1EB943170, &unk_1B63C3FF0, type metadata accessor for ReviewedPlace);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v10 = v1;
  sub_1B629821C();
  v2 = *&v0[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v0;
  v4 = v0;
  v5 = v2;
  sub_1B6381A7C(inited);

  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  v7 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v7 lock];
  sub_1B62B88A0(v4);
  [v7 unlock];
  v8 = sub_1B62B7AA8(v10, sub_1B62903E4, sub_1B62E8480);

  return v8;
}

void sub_1B62B6650(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (!a1 && a2)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v13 = a3;
      v14 = a4;
      v15 = a2;
      v16 = sub_1B63BF044();
      a2 = v15;
      a4 = v14;
      a3 = v13;
      if (!v16)
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

    v17 = v7;
    type metadata accessor for MapsSyncManagedAnonymousCredential();
    v8 = swift_dynamicCastClass();
    if (v8 && (v9 = [v8 reviewedPlaces]) != 0)
    {
      v10 = v9;
      v11 = v5;
      sub_1B62B875C(v10, v6, v11);

      v12 = v11;
    }

    else
    {
      v12 = v17;
    }
  }
}

void sub_1B62B6788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B629E3F0(a1, v24);
  type metadata accessor for MapsSyncManagedReviewedPlace();
  if (swift_dynamicCast())
  {
    v4 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    v5 = v24[5];
    v22 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad);
    v6 = objc_allocWithZone(type metadata accessor for ReviewedPlace());
    v6[OBJC_IVAR___MSReviewedPlace__hasUserReviewed] = 0;
    v7 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
    v8 = sub_1B63BE994();
    v9 = *(*(v8 - 8) + 56);
    v9(&v6[v7], 1, 1, v8);
    *&v6[OBJC_IVAR___MSReviewedPlace__latitude] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__longitude] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation] = xmmword_1B63C3E40;
    v9(&v6[OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed], 1, 1, v8);
    *&v6[OBJC_IVAR___MSReviewedPlace__mapItemStorage] = xmmword_1B63C3E40;
    *&v6[OBJC_IVAR___MSReviewedPlace__muid] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__positionIndex] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__rating] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__version] = 0;
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    v11 = objc_allocWithZone(MEMORY[0x1E696AD10]);
    v12 = v5;
    v13 = v4;
    *&v6[v10] = [v11 init];
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
    v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
    v15 = type metadata accessor for MapsSyncHashing();
    (*(*(v15 - 8) + 56))(&v6[v14], 1, 1, v15);
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    v17 = sub_1B63BEA04();
    (*(*(v17 - 8) + 56))(&v6[v16], 1, 1, v17);
    v9(&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v8);
    v9(&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v8);
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v13;
    v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v22;
    v23.receiver = v6;
    v23.super_class = type metadata accessor for MapsSyncObject();
    v18 = v13;
    v19 = objc_msgSendSuper2(&v23, sel_init);
    v20 = [v12 objectID];
    v21 = *(v19 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v19 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v20;

    (*((*MEMORY[0x1E69E7D40] & *v19) + 0x218))(v12, v22, 1);
    sub_1B62CAA74(v24, v19);
  }
}

id sub_1B62B6D58(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v9 lock];
  v10 = OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges;
  swift_beginAccess();
  v11 = *&v4[v10];
  v12 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v10] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1B62B1FCC(0, v11[2] + 1, 1, v11);
    *&v4[v10] = v11;
  }

  v15 = v11[2];
  v14 = v11[3];
  if (v15 >= v14 >> 1)
  {
    v11 = sub_1B62B1FCC((v14 > 1), v15 + 1, 1, v11);
  }

  v11[2] = v15 + 1;
  v16 = &v11[2 * v15];
  *(v16 + 32) = a2 & 1;
  v16[5] = v12;
  *&v4[v10] = v11;
  swift_endAccess();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = v12;
  v17[4] = a3;
  v17[5] = a4;
  sub_1B6282B88();
  v18 = v12;
  v19 = v4;

  if (sub_1B63BEF24())
  {
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1B62B9374;
    *(v20 + 24) = v17;
    v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v22 = *&v19[v21];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v21] = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_1B629A8E8(0, v22[2] + 1, 1, v22);
      *&v19[v21] = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1B629A8E8((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[2 * v25];
    v26[4] = sub_1B62B9488;
    v26[5] = v20;
    *&v19[v21] = v22;
    swift_endAccess();
  }

  return [v9 unlock];
}

uint64_t sub_1B62B6FC0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = a4;
  v8 = a2;

  v9 = v6;
  v10 = a4;
  sub_1B63821D8(inited);

  swift_setDeallocating();
  v11 = *(inited + 16);
  return swift_arrayDestroy();
}

void sub_1B62B70AC(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  if (!a1)
  {
    type metadata accessor for MapsSyncManagedAnonymousCredential();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      if (a2)
      {
        v8 = a2 & 0xFFFFFFFFFFFFFF8;
        if (a2 >> 62)
        {
          v18 = v7;
          v14 = sub_1B63BF044();
          v8 = a2 & 0xFFFFFFFFFFFFFF8;
          v15 = v14;
          v7 = v18;
          if (!v15)
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
          v9 = v7;
          v16 = a3;
          v12 = MEMORY[0x1B8C92830](0, a2);
        }

        else
        {
          if (!*(v8 + 16))
          {
            __break(1u);
            return;
          }

          v9 = v7;
          v10 = *(a2 + 32);
          v11 = a3;
          v12 = v10;
        }

        v17 = v12;
        type metadata accessor for MapsSyncManagedReviewedPlace();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          a4(v9, v13);
        }
      }
    }
  }
}

void *sub_1B62B7240(void *a1, void *a2, int a3, int a4)
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
  *&v4[OBJC_IVAR___MSAnonymousCredential__anonymousId] = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSAnonymousCredential__mapsToken] = xmmword_1B63C3E40;
  v12 = OBJC_IVAR___MSAnonymousCredential__mapsTokenCreatedAt;
  v13 = sub_1B63BE994();
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR___MSAnonymousCredential__mapsTokenTTL] = 0;
  *&v4[OBJC_IVAR___MSAnonymousCredential__positionIndex] = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v15;
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v18 = type metadata accessor for MapsSyncHashing();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v20 = sub_1B63BEA04();
  v21 = *(*(v20 - 8) + 56);
  v22 = &v4[v19];
  v23 = v52;
  v21(v22, 1, 1, v20);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v13);
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
    v21(v33, 0, 1, v20);
    v34 = v47;
    sub_1B628C510(v33, v47, &unk_1EB943680, qword_1B63C4070);
    v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v34, &v32[v35], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v36 = v49;
    sub_1B628C510(v33, v49, &unk_1EB943680, qword_1B63C4070);
    v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v38 = swift_allocObject();
    sub_1B628A128(v36, v38 + v37, &unk_1EB943680, qword_1B63C4070);
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

    sub_1B6284EAC(v33, &unk_1EB943680, qword_1B63C4070);
  }

  return v28;
}

uint64_t sub_1B62B780C()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSAnonymousCredential__anonymousId), *(v0 + OBJC_IVAR___MSAnonymousCredential__anonymousId + 8));
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSAnonymousCredential__mapsToken), *(v0 + OBJC_IVAR___MSAnonymousCredential__mapsToken + 8));
  sub_1B6284EAC(v0 + OBJC_IVAR___MSAnonymousCredential__mapsTokenCreatedAt, &unk_1EB943210, &unk_1B63C3F50);
  v1 = *(v0 + OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges);
}

id AnonymousCredential.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnonymousCredential();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62B7940(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for MapsSyncQueryPredicate();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_1B62B7AA8(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1B63BF044();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1B628B9E4();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void sub_1B62B7BB8(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedAnonymousCredential();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v14 = a1;
    if (a2)
    {
      v15 = *(v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId);
      v16 = *(v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId + 8);
      *(v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId) = xmmword_1B63C3E40;
      sub_1B6284F64(v15, v16);
    }

    else
    {
      v17 = [v13 anonymousId];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1B63BE924();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xF000000000000000;
      }

      v22 = (v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId);
      v23 = *(v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId);
      v24 = *(v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId + 8);
      *v22 = v19;
      v22[1] = v21;
      sub_1B6284F64(v23, v24);
      if ((a2 & 1) == 0)
      {
        v28 = [v13 mapsToken];
        if (v28)
        {
          v29 = v28;
          v30 = sub_1B63BE924();
          v32 = v31;
        }

        else
        {
          v30 = 0;
          v32 = 0xF000000000000000;
        }

        v33 = (v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken);
        v34 = *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken);
        v35 = *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken + 8);
        *v33 = v30;
        v33[1] = v32;
        sub_1B6284F64(v34, v35);
        v36 = [v13 mapsTokenCreatedAt];
        if (v36)
        {
          v37 = v36;
          sub_1B63BE974();

          v38 = sub_1B63BE994();
          (*(*(v38 - 8) + 56))(v9, 0, 1, v38);
        }

        else
        {
          v39 = sub_1B63BE994();
          (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
        }

        sub_1B628A128(v9, v11, &unk_1EB943210, &unk_1B63C3F50);
        goto LABEL_16;
      }
    }

    v25 = *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken);
    v26 = *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken + 8);
    *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken) = xmmword_1B63C3E40;
    sub_1B6284F64(v25, v26);
    v27 = sub_1B63BE994();
    (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
LABEL_16:
    v40 = OBJC_IVAR___MSAnonymousCredential__mapsTokenCreatedAt;
    swift_beginAccess();
    sub_1B6282DFC(v11, v2 + v40, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v41 = [v13 mapsTokenTTL];
    *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsTokenTTL) = v41;
    v42 = [v13 positionIndex];

    *(v2 + OBJC_IVAR___MSAnonymousCredential__positionIndex) = v42;
  }
}

id sub_1B62B7F34(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v28 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - v17;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    sub_1B629119C(a1, a2);
    v20 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
  }

  if (a4 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    sub_1B629119C(a3, a4);
    v21 = sub_1B63BE904();
    sub_1B6284F64(a3, a4);
  }

  sub_1B628C510(a5, v18, &unk_1EB943210, &unk_1B63C3F50);
  v22 = sub_1B63BE994();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v18, 1, v22) != 1)
  {
    v24 = sub_1B63BE954();
    (*(v23 + 8))(v18, v22);
  }

  v25 = [v8 initWithStore:v19 anonymousId:v20 mapsToken:v21 mapsTokenCreatedAt:v24 mapsTokenTTL:a6 positionIndex:v28];

  sub_1B6284EAC(a5, &unk_1EB943210, &unk_1B63C3F50);
  return v25;
}

void sub_1B62B8190(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B62B3BA0(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1B62B828C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSAnonymousCredential__anonymousId);
  v8 = *(v3 + OBJC_IVAR___MSAnonymousCredential__anonymousId);
  v9 = *(v3 + OBJC_IVAR___MSAnonymousCredential__anonymousId + 8);
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
    *(v11 + 16) = sub_1B62B9444;
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

id sub_1B62B8484(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSAnonymousCredential__mapsToken);
  v8 = *(v3 + OBJC_IVAR___MSAnonymousCredential__mapsToken);
  v9 = *(v3 + OBJC_IVAR___MSAnonymousCredential__mapsToken + 8);
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
    *(v11 + 16) = sub_1B62B93D8;
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

void sub_1B62B8660(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B62B5B54(a1, a2, v6);
}

uint64_t sub_1B62B875C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B63BE844();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B63BEEC4();
  sub_1B62B9380();
  while (1)
  {
    sub_1B63BEF64();
    if (!v14)
    {
      break;
    }

    sub_1B628E928(&v13, v12);
    sub_1B62B6788(v12, a2, a3);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_1(v12);
      return (*(v7 + 8))(v10, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1B62B88A0(uint64_t a1)
{
  v2 = OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v9 = *v6;
      if (*(v6 - 1))
      {
        v7 = v9;
        v8 = sub_1B62CBFBC(v7);
      }

      else
      {
        sub_1B62CAA74(&v10, v9);
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t type metadata accessor for AnonymousCredential()
{
  result = qword_1EB943138;
  if (!qword_1EB943138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id keypath_get_65Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  [*(*a1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  v7 = *(v5 + *a2);
  result = [*(v5 + v6) unlock];
  *a3 = v7;
  return result;
}

void sub_1B62B8A18()
{
  sub_1B628CC34();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B62B8F70(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = sub_1B63BF044();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = sub_1B63BF104();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_1B63BF044();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E69E7CD0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = v6 + 56;
  v46 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v43 = v4;
    while (1)
    {
      v14 = MEMORY[0x1B8C92830](v13, v4);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = *(v6 + 40);
      v18 = sub_1B63BEF14();
      v19 = -1 << *(v6 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v12 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        a4(0);
        while (1)
        {
          v25 = *(*(v6 + 48) + 8 * v20);
          v26 = sub_1B63BEF24();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v12 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v8 = v46;
            v4 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v46;
        v4 = v43;
        if (v13 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v12 + 8 * v21) = v23 | v22;
        *(*(v6 + 48) + 8 * v20) = v16;
        v27 = *(v6 + 16);
        v15 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v28;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v44 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v44)
    {
      v30 = *(v6 + 40);
      v31 = *(v4 + 32 + 8 * v29);
      v32 = sub_1B63BEF14();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *(v12 + 8 * (v34 >> 6));
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        a4(0);
        while (1)
        {
          v39 = *(*(v6 + 48) + 8 * v34);
          v40 = sub_1B63BEF24();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *(v12 + 8 * (v34 >> 6));
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v12 + 8 * v35) = v37 | v36;
        *(*(v6 + 48) + 8 * v34) = v31;
        v41 = *(v6 + 16);
        v15 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t objectdestroy_40Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = a3(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v7, 1, v9))
  {
    (*(v10 + 8))(v3 + v7, v9);
  }

  return MEMORY[0x1EEE6BDD0](v3, v7 + v8, v6 | 7);
}

uint64_t sub_1B62B9374(uint64_t a1, void *a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return sub_1B62B6FC0(a1, a2, *(v2 + 16), *(v2 + 24));
}

unint64_t sub_1B62B9380()
{
  result = qword_1EDB0E8D0;
  if (!qword_1EDB0E8D0)
  {
    sub_1B63BE844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB0E8D0);
  }

  return result;
}

uint64_t objectdestroy_130Tm()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1B628BAC0(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id CachedCuratedCollection.__allocating_init(collectionDescription:curatedCollectionIdentifier:image:imageUrl:isTombstone:lastFetchedDate:lastSignificantChangeDate:placesCount:positionIndex:publisherAttribution:resultProviderIdentifier:title:titleLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v56 = a8;
  v57 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v49 - v30;
  v54 = objc_allocWithZone(v20);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDB0F2A8;
  if (a2)
  {
    v52 = sub_1B63BEBC4();
  }

  else
  {
    v52 = 0;
  }

  if (a5 >> 60 == 15)
  {
    v51 = 0;
  }

  else
  {
    sub_1B629119C(a4, a5);
    v51 = sub_1B63BE904();
    sub_1B6284F64(a4, a5);
  }

  v58 = a4;
  v59 = a10;
  if (a7)
  {
    v50 = sub_1B63BEBC4();
  }

  else
  {
    v50 = 0;
  }

  v55 = a9;
  sub_1B628C510(a9, v31, &unk_1EB943210, &unk_1B63C3F50);
  v32 = sub_1B63BE994();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = 0;
  if (v34(v31, 1, v32) != 1)
  {
    v35 = sub_1B63BE954();
    (*(v33 + 8))(v31, v32);
  }

  sub_1B628C510(v59, v29, &unk_1EB943210, &unk_1B63C3F50);
  if (v34(v29, 1, v32) == 1)
  {
    v36 = 0;
    v37 = a17;
    if (a14)
    {
LABEL_16:
      v38 = sub_1B63BEBC4();

      goto LABEL_19;
    }
  }

  else
  {
    v36 = sub_1B63BE954();
    (*(v33 + 8))(v29, v32);
    v37 = a17;
    if (a14)
    {
      goto LABEL_16;
    }
  }

  v38 = 0;
LABEL_19:
  v39 = a5;
  if (v37)
  {
    v40 = sub_1B63BEBC4();
  }

  else
  {
    v40 = 0;
  }

  if (a19)
  {
    v41 = sub_1B63BEBC4();
  }

  else
  {
    v41 = 0;
  }

  LODWORD(v48) = a15;
  LODWORD(v47) = a11;
  v43 = v51;
  v42 = v52;
  v44 = v50;
  v45 = [v54 initWithStore:v53 collectionDescription:v52 curatedCollectionIdentifier:v57 image:v51 imageUrl:v50 isTombstone:v56 & 1 lastFetchedDate:v35 lastSignificantChangeDate:v36 placesCount:v47 positionIndex:a12 publisherAttribution:v38 resultProviderIdentifier:v48 title:v40 titleLocale:v41];

  sub_1B6284F64(v58, v39);
  sub_1B6284EAC(v59, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v55, &unk_1EB943210, &unk_1B63C3F50);
  return v45;
}

id CachedCuratedCollection.init(collectionDescription:curatedCollectionIdentifier:image:imageUrl:isTombstone:lastFetchedDate:lastSignificantChangeDate:placesCount:positionIndex:publisherAttribution:resultProviderIdentifier:title:titleLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = sub_1B62C120C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
  sub_1B6284F64(a4, a5);
  return v21;
}

char *CachedCuratedCollection.__allocating_init(store:collectionDescription:curatedCollectionIdentifier:image:imageUrl:isTombstone:lastFetchedDate:lastSignificantChangeDate:placesCount:positionIndex:publisherAttribution:resultProviderIdentifier:title:titleLocale:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  v101 = a8;
  v94 = a7;
  v102 = a5;
  v103 = a6;
  v95 = a4;
  v104 = a3;
  v96 = a2;
  v117 = a11;
  v118 = a10;
  v115 = a19;
  v106 = a18;
  v107 = a20;
  v114 = a16;
  v105 = a15;
  v111 = a14;
  v112 = a13;
  v113 = a17;
  v110 = a12;
  v93 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v98 = *(v26 - 8);
  v27 = *(v98 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v109 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v108 = &v91 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v91 - v31;
  v33 = objc_allocWithZone(v21);
  v100 = a1;
  v34 = [v33 initWithStore_];
  v35 = *&v34[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v36 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v116 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v37 = v34;
  v97 = v34;
  v38 = v37;
  [v35 lock];
  v99 = *&v34[v36];
  v39 = &v38[OBJC_IVAR___MSCachedCuratedCollection__collectionDescription];
  v40 = *&v38[OBJC_IVAR___MSCachedCuratedCollection__collectionDescription + 8];
  v41 = v104;
  *v39 = a2;
  *(v39 + 1) = v41;

  *&v38[OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier] = a4;
  v42 = &v38[OBJC_IVAR___MSCachedCuratedCollection__image];
  v44 = *&v38[OBJC_IVAR___MSCachedCuratedCollection__image];
  v43 = *&v38[OBJC_IVAR___MSCachedCuratedCollection__image + 8];
  v45 = v102;
  v46 = v103;
  *v42 = v102;
  v42[1] = v46;
  sub_1B6291034(v45, v46);
  sub_1B6284F64(v44, v43);
  v47 = &v38[OBJC_IVAR___MSCachedCuratedCollection__imageUrl];
  v48 = *&v38[OBJC_IVAR___MSCachedCuratedCollection__imageUrl + 8];
  v49 = v101;
  *v47 = a7;
  *(v47 + 1) = v49;

  v38[OBJC_IVAR___MSCachedCuratedCollection__isTombstone] = a9;
  v50 = v118;
  sub_1B628C510(v118, v32, &unk_1EB943210, &unk_1B63C3F50);
  v51 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
  swift_beginAccess();
  sub_1B6282DFC(v32, &v38[v51], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v52 = v117;
  sub_1B628C510(v117, v32, &unk_1EB943210, &unk_1B63C3F50);
  v53 = OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate;
  swift_beginAccess();
  sub_1B6282DFC(v32, &v38[v53], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  *&v38[OBJC_IVAR___MSCachedCuratedCollection__placesCount] = v110;
  v54 = v111;
  *&v38[OBJC_IVAR___MSCachedCuratedCollection__positionIndex] = v112;
  v55 = &v38[OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution];
  v56 = *&v38[OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution + 8];
  v57 = v105;
  *v55 = v54;
  *(v55 + 1) = v57;

  *&v38[OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier] = v114;
  v58 = &v38[OBJC_IVAR___MSCachedCuratedCollection__title];
  v59 = *&v38[OBJC_IVAR___MSCachedCuratedCollection__title + 8];
  v60 = v106;
  *v58 = v113;
  *(v58 + 1) = v60;

  v61 = &v38[OBJC_IVAR___MSCachedCuratedCollection__titleLocale];
  v62 = *&v38[OBJC_IVAR___MSCachedCuratedCollection__titleLocale + 8];
  v63 = v107;
  *v61 = v115;
  *(v61 + 1) = v63;

  sub_1B628C510(v50, v108, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v52, v109, &unk_1EB943210, &unk_1B63C3F50);
  v64 = *(v98 + 80);
  v65 = (v64 + 73) & ~v64;
  v66 = (v27 + v64 + v65) & ~v64;
  v98 = (v27 + v66 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v92 = (v98 + 11) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 19) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + 11) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v72 = v103;
  v71 = v104;
  *(v70 + 16) = v96;
  *(v70 + 24) = v71;
  v73 = v102;
  *(v70 + 32) = v95;
  *(v70 + 40) = v73;
  v74 = v94;
  *(v70 + 48) = v72;
  *(v70 + 56) = v74;
  *(v70 + 64) = v101;
  *(v70 + 72) = v93;
  sub_1B628A128(v108, v70 + v65, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628A128(v109, v70 + v66, &unk_1EB943210, &unk_1B63C3F50);
  *(v70 + v98) = v110;
  *(v70 + v92) = v112;
  v75 = (v70 + v67);
  v76 = v97;
  v77 = v105;
  *v75 = v111;
  v75[1] = v77;
  *(v70 + v68) = v114;
  v78 = (v70 + v69);
  v79 = v106;
  *v78 = v113;
  v78[1] = v79;
  v80 = (v70 + v91);
  v81 = v107;
  *v80 = v115;
  v80[1] = v81;
  sub_1B6282B88();
  v82 = *&v76[v116];
  sub_1B6291034(v73, v72);
  if (sub_1B63BEF24())
  {
    v83 = swift_allocObject();
    *(v83 + 16) = sub_1B62C15E4;
    *(v83 + 24) = v70;
    v84 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v85 = *&v38[v84];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38[v84] = v85;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v85 = sub_1B629A8E8(0, v85[2] + 1, 1, v85);
      *&v38[v84] = v85;
    }

    v88 = v85[2];
    v87 = v85[3];
    if (v88 >= v87 >> 1)
    {
      v85 = sub_1B629A8E8((v87 > 1), v88 + 1, 1, v85);
    }

    v85[2] = v88 + 1;
    v89 = &v85[2 * v88];
    v89[4] = sub_1B62B8188;
    v89[5] = v83;
    *&v38[v84] = v85;
    swift_endAccess();
  }

  [*&v76[v116] unlock];

  sub_1B6284F64(v73, v72);
  sub_1B6284EAC(v117, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v118, &unk_1EB943210, &unk_1B63C3F50);

  return v38;
}

char *CachedCuratedCollection.init(store:collectionDescription:curatedCollectionIdentifier:image:imageUrl:isTombstone:lastFetchedDate:lastSignificantChangeDate:placesCount:positionIndex:publisherAttribution:resultProviderIdentifier:title:titleLocale:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  v99 = a8;
  v92 = a7;
  v100 = a5;
  v101 = a6;
  v93 = a4;
  v103 = a3;
  v94 = a2;
  v115 = a11;
  v116 = a10;
  v113 = a19;
  v104 = a18;
  v105 = a20;
  v112 = a16;
  v102 = a15;
  v109 = a14;
  v110 = a13;
  v111 = a17;
  v108 = a12;
  v91 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v95 = *(v26 - 8);
  v27 = *(v95 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v107 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v106 = &v89 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v89 - v31;
  v98 = a1;
  v33 = [v21 initWithStore_];
  v34 = *&v33[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v114 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v36 = v33;
  v96 = v33;
  v37 = v36;
  [v34 lock];
  v97 = *&v33[v35];
  v38 = &v37[OBJC_IVAR___MSCachedCuratedCollection__collectionDescription];
  v39 = *&v37[OBJC_IVAR___MSCachedCuratedCollection__collectionDescription + 8];
  v40 = v103;
  *v38 = a2;
  *(v38 + 1) = v40;

  *&v37[OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier] = a4;
  v41 = &v37[OBJC_IVAR___MSCachedCuratedCollection__image];
  v43 = *&v37[OBJC_IVAR___MSCachedCuratedCollection__image];
  v42 = *&v37[OBJC_IVAR___MSCachedCuratedCollection__image + 8];
  v44 = v100;
  v45 = v101;
  *v41 = v100;
  v41[1] = v45;
  sub_1B6291034(v44, v45);
  sub_1B6284F64(v43, v42);
  v46 = &v37[OBJC_IVAR___MSCachedCuratedCollection__imageUrl];
  v47 = *&v37[OBJC_IVAR___MSCachedCuratedCollection__imageUrl + 8];
  v48 = v99;
  *v46 = a7;
  *(v46 + 1) = v48;

  v37[OBJC_IVAR___MSCachedCuratedCollection__isTombstone] = a9;
  v49 = v116;
  sub_1B628C510(v116, v32, &unk_1EB943210, &unk_1B63C3F50);
  v50 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
  swift_beginAccess();
  sub_1B6282DFC(v32, &v37[v50], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v51 = v115;
  sub_1B628C510(v115, v32, &unk_1EB943210, &unk_1B63C3F50);
  v52 = OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate;
  swift_beginAccess();
  sub_1B6282DFC(v32, &v37[v52], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  *&v37[OBJC_IVAR___MSCachedCuratedCollection__placesCount] = v108;
  v53 = v109;
  *&v37[OBJC_IVAR___MSCachedCuratedCollection__positionIndex] = v110;
  v54 = &v37[OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution];
  v55 = *&v37[OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution + 8];
  v56 = v102;
  *v54 = v53;
  *(v54 + 1) = v56;

  *&v37[OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier] = v112;
  v57 = &v37[OBJC_IVAR___MSCachedCuratedCollection__title];
  v58 = *&v37[OBJC_IVAR___MSCachedCuratedCollection__title + 8];
  v59 = v104;
  *v57 = v111;
  *(v57 + 1) = v59;

  v60 = &v37[OBJC_IVAR___MSCachedCuratedCollection__titleLocale];
  v61 = *&v37[OBJC_IVAR___MSCachedCuratedCollection__titleLocale + 8];
  v62 = v105;
  *v60 = v113;
  *(v60 + 1) = v62;

  sub_1B628C510(v49, v106, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v51, v107, &unk_1EB943210, &unk_1B63C3F50);
  v63 = *(v95 + 80);
  v64 = (v63 + 73) & ~v63;
  v65 = (v27 + v63 + v64) & ~v63;
  v95 = (v27 + v65 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v90 = (v95 + 11) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v66 + 19) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v89 + 11) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v103;
  *(v68 + 16) = v94;
  *(v68 + 24) = v69;
  v71 = v100;
  v70 = v101;
  *(v68 + 32) = v93;
  *(v68 + 40) = v71;
  v72 = v92;
  *(v68 + 48) = v70;
  *(v68 + 56) = v72;
  *(v68 + 64) = v99;
  *(v68 + 72) = v91;
  sub_1B628A128(v106, v68 + v64, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628A128(v107, v68 + v65, &unk_1EB943210, &unk_1B63C3F50);
  *(v68 + v95) = v108;
  *(v68 + v90) = v110;
  v73 = (v68 + v66);
  v74 = v96;
  v75 = v102;
  *v73 = v109;
  v73[1] = v75;
  *(v68 + v89) = v112;
  v76 = (v68 + v67);
  v77 = v104;
  *v76 = v111;
  v76[1] = v77;
  v78 = (v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8));
  v79 = v105;
  *v78 = v113;
  v78[1] = v79;
  sub_1B6282B88();
  v80 = *&v74[v114];
  sub_1B6291034(v71, v70);
  if (sub_1B63BEF24())
  {
    v81 = swift_allocObject();
    *(v81 + 16) = sub_1B62C2748;
    *(v81 + 24) = v68;
    v82 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v83 = *&v37[v82];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37[v82] = v83;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v83 = sub_1B629A8E8(0, v83[2] + 1, 1, v83);
      *&v37[v82] = v83;
    }

    v86 = v83[2];
    v85 = v83[3];
    if (v86 >= v85 >> 1)
    {
      v83 = sub_1B629A8E8((v85 > 1), v86 + 1, 1, v83);
    }

    v83[2] = v86 + 1;
    v87 = &v83[2 * v86];
    v87[4] = sub_1B62B9488;
    v87[5] = v81;
    *&v37[v82] = v83;
    swift_endAccess();
  }

  [*&v74[v114] unlock];

  sub_1B6284F64(v71, v70);
  sub_1B6284EAC(v115, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v116, &unk_1EB943210, &unk_1B63C3F50);

  return v37;
}

void sub_1B62BA9D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v47 - v30;
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = v32;
    v50 = a2;
    v34 = a2;
    if (a4)
    {
      v35 = sub_1B63BEBC4();
    }

    else
    {
      v35 = 0;
    }

    [v33 setCollectionDescription_];

    [v33 setCuratedCollectionIdentifier_];
    if (a7 >> 60 == 15)
    {
      v36 = 0;
    }

    else
    {
      v36 = sub_1B63BE904();
    }

    [v33 setImage_];

    if (a9)
    {
      v37 = sub_1B63BEBC4();
    }

    else
    {
      v37 = 0;
    }

    v49 = a14;
    v48 = a13;
    [v33 setImageUrl_];

    [v33 setIsTombstone_];
    sub_1B628C510(a11, v31, &unk_1EB943210, &unk_1B63C3F50);
    v38 = sub_1B63BE994();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    v41 = 0;
    if (v40(v31, 1, v38) != 1)
    {
      v41 = sub_1B63BE954();
      (*(v39 + 8))(v31, v38);
    }

    [v33 setLastFetchedDate_];

    sub_1B628C510(v47, v29, &unk_1EB943210, &unk_1B63C3F50);
    if (v40(v29, 1, v38) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = sub_1B63BE954();
      (*(v39 + 8))(v29, v38);
    }

    [v33 setLastSignificantChangeDate_];

    [v33 setPlacesCount_];
    [v33 setPositionIndex_];
    if (a16)
    {
      v43 = sub_1B63BEBC4();
    }

    else
    {
      v43 = 0;
    }

    [v33 setPublisherAttribution_];

    [v33 setResultProviderIdentifier_];
    if (a19)
    {
      v44 = sub_1B63BEBC4();
    }

    else
    {
      v44 = 0;
    }

    [v33 setTitle_];

    if (a21)
    {
      v45 = sub_1B63BEBC4();
    }

    else
    {
      v45 = 0;
    }

    v46 = v50;
    [v33 setTitleLocale_];
  }
}

uint64_t sub_1B62BB1B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__collectionDescription);
  v4 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__collectionDescription + 8);
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
  *(v18 + 16) = sub_1B62C172C;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_1;
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

    v13 = sub_1B62C172C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62BB55C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__collectionDescription);
  v8 = *(v3 + OBJC_IVAR___MSCachedCuratedCollection__collectionDescription + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62C1754;
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

uint64_t (*sub_1B62BB714(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62BB1B8();
  a1[1] = v3;
  return sub_1B62BB75C;
}

id sub_1B62BB7E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62C1778;
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

id (*sub_1B62BB97C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62BBA00;
}

uint64_t sub_1B62BBAA8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__image);
  v5 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__image + 8);
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
  *(v18 + 16) = sub_1B62C179C;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_41;
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
    v8 = sub_1B62C179C;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B62BBEF4(uint64_t a1, unint64_t a2)
{
  sub_1B62C17A8(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62BBF3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1B6291034(*a1, v3);
  sub_1B62C17A8(v2, v3);

  return sub_1B6284F64(v2, v3);
}

void sub_1B62BBF98(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCachedCuratedCollection();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 image]) != 0)
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

void sub_1B62BC0BC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
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
    [v7 setImage_];
  }
}

uint64_t (*sub_1B62BC17C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62BBAA8();
  a1[1] = v3;
  return sub_1B62BC1C4;
}

uint64_t sub_1B62BC1C4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1B6291034(v5, v3);
    sub_1B62C17A8(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62C17A8(v5, v3);
  }

  return sub_1B6284F64(v2, v3);
}

uint64_t sub_1B62BC254()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__imageUrl);
  v4 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__imageUrl + 8);
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
  *(v18 + 16) = sub_1B62C1978;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_51;
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

    v13 = sub_1B62C1978;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62BC5F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__imageUrl);
  v8 = *(v3 + OBJC_IVAR___MSCachedCuratedCollection__imageUrl + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62C19A0;
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

uint64_t (*sub_1B62BC7B0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62BC254();
  a1[1] = v3;
  return sub_1B62BC7F8;
}

uint64_t sub_1B62BC880()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__isTombstone);
  [v1 unlock];
  return v2;
}

id sub_1B62BC92C(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCachedCuratedCollection__isTombstone) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62C19C4;
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

id sub_1B62BCAC8(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setIsTombstone_];
  }

  return result;
}

id (*sub_1B62BCB2C(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__isTombstone);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62BCBB0;
}

uint64_t sub_1B62BCBF0@<X0>(uint64_t a1@<X8>)
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
  v13 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
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
  *(v26 + 16) = sub_1B62C19CC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_76;
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

uint64_t sub_1B62BD0F0(uint64_t a1)
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
  v12 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
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
    *(v15 + 16) = sub_1B62C19F4;
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

void (*sub_1B62BD3C0(void *a1))(uint64_t *a1, char a2)
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
  sub_1B62BCBF0(v4);
  return sub_1B62BD47C;
}

id sub_1B62BD4AC(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_1B62BD5DC@<X0>(uint64_t a1@<X8>)
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
  v13 = OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate;
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
  *(v26 + 16) = sub_1B62C1A00;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_93;
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

void sub_1B62BDADC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
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

uint64_t sub_1B62BDBF8(uint64_t a1)
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
  v12 = OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate;
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
    *(v15 + 16) = sub_1B62C1A28;
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

uint64_t sub_1B62BDEC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  sub_1B628C510(a1, &v14 - v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = *a2;
  return a5(v11);
}

void sub_1B62BDF7C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
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
    type metadata accessor for MapsSyncManagedCachedCuratedCollection();
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

void sub_1B62BE1B4(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
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

void (*sub_1B62BE320(void *a1))(uint64_t *a1, char a2)
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
  sub_1B62BD5DC(v4);
  return sub_1B62BE3DC;
}

void sub_1B62BE3F4(uint64_t *a1, char a2, void (*a3)(void *))
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

id sub_1B62BE508(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCachedCuratedCollection__placesCount) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62C1ABC;
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

id (*sub_1B62BE6A4(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__placesCount);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62BE728;
}

id sub_1B62BE7BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCachedCuratedCollection__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62C1AE0;
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

id sub_1B62BE958(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62BE9C8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62BEA4C;
}

uint64_t sub_1B62BEA88()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution);
  v4 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution + 8);
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
  *(v18 + 16) = sub_1B62C1B04;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_125;
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

    v13 = sub_1B62C1B04;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62BEE2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution);
  v8 = *(v3 + OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62C1B2C;
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

uint64_t (*sub_1B62BEFE4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62BEA88();
  a1[1] = v3;
  return sub_1B62BF02C;
}

uint64_t sub_1B62BF050(char *a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v7 = a1;
  [v6 lock];
  v8 = *&v7[*a3];
  [*&a1[v5] unlock];

  return v8;
}

uint64_t sub_1B62BF0D4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + *a1);
  [v3 unlock];
  return v4;
}

id sub_1B62BF188(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62C1B50;
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

id (*sub_1B62BF324(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62BF3A8;
}

uint64_t sub_1B62BF3E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__title);
  v4 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__title + 8);
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
  *(v18 + 16) = sub_1B62C1B74;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_151;
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

    v13 = sub_1B62C1B74;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62BF78C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__title);
  v8 = *(v3 + OBJC_IVAR___MSCachedCuratedCollection__title + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62C1B9C;
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

uint64_t (*sub_1B62BF944(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62BF3E8();
  a1[1] = v3;
  return sub_1B62BF98C;
}

id sub_1B62BF9BC(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_1B62BFA3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__titleLocale);
  v4 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__titleLocale + 8);
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
  *(v18 + 16) = sub_1B62C1BC0;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_169;
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

    v13 = sub_1B62C1BC0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62BFDE0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_1B62BFE68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__titleLocale);
  v8 = *(v3 + OBJC_IVAR___MSCachedCuratedCollection__titleLocale + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62C1BE8;
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

void sub_1B62C0020(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedCachedCuratedCollection();
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

void sub_1B62C0144(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
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

uint64_t (*sub_1B62C0208(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62BFA3C();
  a1[1] = v3;
  return sub_1B62C0250;
}

uint64_t sub_1B62C0268(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
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

void *sub_1B62C0344(void *a1, void *a2, int a3, int a4)
{
  v53 = a4;
  v54 = a3;
  v55 = a2;
  v56 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v49 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v10;
  v11 = &v4[OBJC_IVAR___MSCachedCuratedCollection__collectionDescription];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier] = 0;
  *&v4[OBJC_IVAR___MSCachedCuratedCollection__image] = xmmword_1B63C3E40;
  v12 = &v4[OBJC_IVAR___MSCachedCuratedCollection__imageUrl];
  *v12 = 0;
  v12[1] = 0;
  v4[OBJC_IVAR___MSCachedCuratedCollection__isTombstone] = 0;
  v13 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
  v14 = sub_1B63BE994();
  v15 = *(*(v14 - 8) + 56);
  v15(&v4[v13], 1, 1, v14);
  v15(&v4[OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate], 1, 1, v14);
  *&v4[OBJC_IVAR___MSCachedCuratedCollection__placesCount] = 0;
  *&v4[OBJC_IVAR___MSCachedCuratedCollection__positionIndex] = 0;
  v16 = &v4[OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution];
  *v16 = 0;
  v16[1] = 0;
  *&v4[OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier] = 0;
  v17 = &v4[OBJC_IVAR___MSCachedCuratedCollection__title];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR___MSCachedCuratedCollection__titleLocale];
  *v18 = 0;
  v18[1] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v21 = type metadata accessor for MapsSyncHashing();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v23 = sub_1B63BEA04();
  v24 = *(*(v23 - 8) + 56);
  v24(&v4[v22], 1, 1, v23);
  v15(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v14);
  v15(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v14);
  v25 = v54;
  v26 = v55;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v55;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v25;
  v27 = type metadata accessor for MapsSyncObject();
  v57.receiver = v4;
  v57.super_class = v27;
  v28 = v56;
  v29 = v26;
  v30 = objc_msgSendSuper2(&v57, sel_init);
  v31 = v30;
  if (v28)
  {
    v32 = v30;
    v33 = [v28 objectID];
    v34 = *(v32 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v32 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v33;

    (*((*MEMORY[0x1E69E7D40] & *v32) + 0x218))(v28, v25 & 1, v53 & 1);
  }

  else
  {
    v35 = v30;
    v36 = v52;
    sub_1B63BE9F4();
    v24(v36, 0, 1, v23);
    v37 = v49;
    sub_1B628C510(v36, v49, &unk_1EB943680, qword_1B63C4070);
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v37, &v35[v38], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v39 = v51;
    sub_1B628C510(v36, v51, &unk_1EB943680, qword_1B63C4070);
    v40 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v41 = swift_allocObject();
    sub_1B628A128(v39, v41 + v40, &unk_1EB943680, qword_1B63C4070);
    v42 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v43 = *&v35[v42];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35[v42] = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_1B629A8E8(0, v43[2] + 1, 1, v43);
      *&v35[v42] = v43;
    }

    v46 = v43[2];
    v45 = v43[3];
    if (v46 >= v45 >> 1)
    {
      v43 = sub_1B629A8E8((v45 > 1), v46 + 1, 1, v43);
    }

    v43[2] = v46 + 1;
    v47 = &v43[2 * v46];
    v47[4] = sub_1B62B2D5C;
    v47[5] = v41;
    *&v35[v42] = v43;
    swift_endAccess();

    sub_1B6284EAC(v36, &unk_1EB943680, qword_1B63C4070);
  }

  return v31;
}

uint64_t sub_1B62C098C()
{
  v1 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__collectionDescription + 8);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSCachedCuratedCollection__image), *(v0 + OBJC_IVAR___MSCachedCuratedCollection__image + 8));
  v2 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__imageUrl + 8);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v0 + OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate, &unk_1EB943210, &unk_1B63C3F50);
  v3 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution + 8);

  v4 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__title + 8);

  v5 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__titleLocale + 8);
}

id CachedCuratedCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedCuratedCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B62C0B98(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v84 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v84 - v16;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v84 = a1;
    if ((a2 & 1) != 0 || (v20 = [v19 collectionDescription]) == 0)
    {
      v22 = 0;
      v24 = 0;
    }

    else
    {
      v21 = v20;
      v22 = sub_1B63BEBD4();
      v24 = v23;
    }

    v25 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__collectionDescription);
    v26 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__collectionDescription + 8);
    *v25 = v22;
    v25[1] = v24;

    v27 = [v19 curatedCollectionIdentifier];
    *(v2 + OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier) = v27;
    if (a2)
    {
      v28 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__image);
      v29 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__image + 8);
      *(v2 + OBJC_IVAR___MSCachedCuratedCollection__image) = xmmword_1B63C3E40;
      sub_1B6284F64(v28, v29);
    }

    else
    {
      v30 = [v19 image];
      if (v30)
      {
        v31 = v30;
        v32 = sub_1B63BE924();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xF000000000000000;
      }

      v35 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__image);
      v36 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__image);
      v37 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__image + 8);
      *v35 = v32;
      v35[1] = v34;
      sub_1B6284F64(v36, v37);
      v38 = [v19 imageUrl];
      if (v38)
      {
        v39 = v38;
        v40 = sub_1B63BEBD4();
        v42 = v41;

        goto LABEL_14;
      }
    }

    v40 = 0;
    v42 = 0;
LABEL_14:
    v43 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__imageUrl);
    v44 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__imageUrl + 8);
    *v43 = v40;
    v43[1] = v42;

    v45 = [v19 isTombstone];
    *(v2 + OBJC_IVAR___MSCachedCuratedCollection__isTombstone) = v45;
    if (a2)
    {
      v46 = sub_1B63BE994();
      (*(*(v46 - 8) + 56))(v17, 1, 1, v46);
    }

    else
    {
      v47 = [v19 lastFetchedDate];
      if (v47)
      {
        v48 = v47;
        sub_1B63BE974();

        v49 = sub_1B63BE994();
        (*(*(v49 - 8) + 56))(v15, 0, 1, v49);
      }

      else
      {
        v50 = sub_1B63BE994();
        (*(*(v50 - 8) + 56))(v15, 1, 1, v50);
      }

      sub_1B628A128(v15, v17, &unk_1EB943210, &unk_1B63C3F50);
    }

    v51 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
    swift_beginAccess();
    sub_1B6282DFC(v17, v2 + v51, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if (a2)
    {
      v52 = sub_1B63BE994();
      (*(*(v52 - 8) + 56))(v12, 1, 1, v52);
    }

    else
    {
      v53 = [v19 lastSignificantChangeDate];
      if (v53)
      {
        v54 = v53;
        sub_1B63BE974();

        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      v56 = sub_1B63BE994();
      (*(*(v56 - 8) + 56))(v9, v55, 1, v56);
      sub_1B628A128(v9, v12, &unk_1EB943210, &unk_1B63C3F50);
    }

    v57 = OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate;
    swift_beginAccess();
    sub_1B6282DFC(v12, v2 + v57, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v58 = [v19 placesCount];
    *(v2 + OBJC_IVAR___MSCachedCuratedCollection__placesCount) = v58;
    v59 = [v19 positionIndex];
    *(v2 + OBJC_IVAR___MSCachedCuratedCollection__positionIndex) = v59;
    if ((a2 & 1) != 0 || (v60 = [v19 publisherAttribution]) == 0)
    {
      v62 = 0;
      v64 = 0;
    }

    else
    {
      v61 = v60;
      v62 = sub_1B63BEBD4();
      v64 = v63;
    }

    v65 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution);
    v66 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution + 8);
    *v65 = v62;
    v65[1] = v64;

    v67 = [v19 resultProviderIdentifier];
    *(v2 + OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier) = v67;
    if (a2)
    {
      v68 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__title);
      v69 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__title + 8);
      *v68 = 0;
      v68[1] = 0;
    }

    else
    {
      v70 = [v19 title];
      if (v70)
      {
        v71 = v70;
        v72 = sub_1B63BEBD4();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0;
      }

      v75 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__title);
      v76 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__title + 8);
      *v75 = v72;
      v75[1] = v74;

      v77 = [v19 titleLocale];
      if (v77)
      {
        v78 = v77;
        v79 = sub_1B63BEBD4();
        v81 = v80;

LABEL_39:
        v82 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__titleLocale);
        v83 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__titleLocale + 8);
        *v82 = v79;
        v82[1] = v81;
      }
    }

    v79 = 0;
    v81 = 0;
    goto LABEL_39;
  }

  return result;
}

id sub_1B62C120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v54 = a3;
  v53 = a8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v48 - v28;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDB0F2A8;
  if (a2)
  {
    v50 = sub_1B63BEBC4();
  }

  else
  {
    v50 = 0;
  }

  if (a5 >> 60 == 15)
  {
    v49 = 0;
    v30 = a10;
    if (a7)
    {
LABEL_8:
      v48 = sub_1B63BEBC4();

      goto LABEL_11;
    }
  }

  else
  {
    sub_1B629119C(a4, a5);
    v49 = sub_1B63BE904();
    sub_1B6284F64(a4, a5);
    v30 = a10;
    if (a7)
    {
      goto LABEL_8;
    }
  }

  v48 = 0;
LABEL_11:
  v52 = a9;
  sub_1B628C510(a9, v29, &unk_1EB943210, &unk_1B63C3F50);
  v31 = sub_1B63BE994();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = 0;
  if (v33(v29, 1, v31) != 1)
  {
    v34 = sub_1B63BE954();
    (*(v32 + 8))(v29, v31);
  }

  sub_1B628C510(v30, v27, &unk_1EB943210, &unk_1B63C3F50);
  if (v33(v27, 1, v31) == 1)
  {
    v35 = 0;
    v36 = a17;
    if (a14)
    {
LABEL_15:
      v37 = sub_1B63BEBC4();

      goto LABEL_18;
    }
  }

  else
  {
    v35 = sub_1B63BE954();
    (*(v32 + 8))(v27, v31);
    v36 = a17;
    if (a14)
    {
      goto LABEL_15;
    }
  }

  v37 = 0;
LABEL_18:
  v38 = v30;
  if (v36)
  {
    v39 = sub_1B63BEBC4();
  }

  else
  {
    v39 = 0;
  }

  if (a19)
  {
    v40 = sub_1B63BEBC4();
  }

  else
  {
    v40 = 0;
  }

  LODWORD(v47) = a15;
  LODWORD(v46) = a11;
  v41 = v50;
  v43 = v48;
  v42 = v49;
  v44 = [v55 initWithStore:v51 collectionDescription:v50 curatedCollectionIdentifier:v54 image:v49 imageUrl:v48 isTombstone:v53 & 1 lastFetchedDate:v34 lastSignificantChangeDate:v35 placesCount:v46 positionIndex:a12 publisherAttribution:v37 resultProviderIdentifier:v47 title:v39 titleLocale:v40];

  sub_1B6284EAC(v38, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v52, &unk_1EB943210, &unk_1B63C3F50);
  return v44;
}

void sub_1B62C15E8(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 73) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 11) & 0xFFFFFFFFFFFFFFF8;
  sub_1B62BA9D4(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), v2 + v7, v2 + v9, *(v2 + v10), *(v2 + v11), *(v2 + v12), *(v2 + v12 + 8), *(v2 + v13), *(v2 + v14), *(v2 + v14 + 8), *(v2 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

id sub_1B62C17A8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__image);
  v8 = *(v3 + OBJC_IVAR___MSCachedCuratedCollection__image);
  v9 = *(v3 + OBJC_IVAR___MSCachedCuratedCollection__image + 8);
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
    *(v11 + 16) = sub_1B62C2704;
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

id keypath_get_190Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, _DWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  [*(*a1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  LODWORD(a2) = *(v5 + *a2);
  result = [*(v5 + v6) unlock];
  *a3 = a2;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t objectdestroy_78Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = a3(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v7, 1, v9))
  {
    (*(v10 + 8))(v3 + v7, v9);
  }

  return MEMORY[0x1EEE6BDD0](v3, v7 + v8, v6 | 7);
}

id CachedMapItemStorage.__allocating_init(customName:latitude:longitude:mapItemStorage:muid:resultsProvider:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v8 = v7;
  v15 = objc_allocWithZone(v8);
  if (qword_1EDB0F2A0 != -1)
  {
    v21 = v15;
    swift_once();
    v15 = v21;
  }

  v16 = qword_1EDB0F2A8;
  if (a2)
  {
    v17 = v15;
    v18 = sub_1B63BEBC4();

    v15 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v15 initWithStore:v16 customName:v18 latitude:a3 longitude:a4 mapItemStorage:a5 muid:a6 resultsProvider:a7];

  return v19;
}

id CachedMapItemStorage.init(customName:latitude:longitude:mapItemStorage:muid:resultsProvider:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v8 = v7;
  if (qword_1EDB0F2A0 != -1)
  {
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  v14 = qword_1EDB0F2A8;
  if (a2)
  {
    v15 = sub_1B63BEBC4();
  }

  else
  {
    v15 = 0;
  }

  v16 = [v8 initWithStore:v14 customName:v15 latitude:a3 longitude:a4 mapItemStorage:a5 muid:a6 resultsProvider:a7];

  return v16;
}

char *CachedMapItemStorage.__allocating_init(store:customName:latitude:longitude:mapItemStorage:muid:resultsProvider:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v16 = [objc_allocWithZone(v9) initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v57 = v17;
  v58 = v16;
  v54 = *&v16[v17];
  v20 = &v19[OBJC_IVAR___MSCachedMapItemStorage__customName];
  v21 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__customName + 8];
  *v20 = a2;
  *(v20 + 1) = a3;

  v22 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__latitude];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__latitude] = a4;
  v51 = a4;

  v23 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__longitude];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__longitude] = a5;
  v50 = a5;

  if (a6 && (v24 = [a6 data]) != 0)
  {
    v25 = v24;
    v26 = sub_1B63BE924();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xF000000000000000;
  }

  v29 = &v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
  v30 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
  v31 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8];
  *v29 = v26;
  v29[1] = v28;
  sub_1B6284F64(v30, v31);
  v32 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__muid];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__muid] = a7;
  v33 = a7;

  v34 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider] = a8;
  v35 = a8;

  v36 = swift_allocObject();
  v36[2] = a2;
  v36[3] = a3;
  v36[4] = a4;
  v36[5] = a5;
  v36[6] = a6;
  v36[7] = a7;
  v36[8] = a8;
  sub_1B6282B88();
  v37 = *&v58[v57];
  v53 = v51;
  v38 = v50;
  v39 = v33;
  v40 = v35;
  v41 = a6;
  if (sub_1B63BEF24())
  {
    v55 = v39;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1B62C6770;
    *(v42 + 24) = v36;
    v43 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v44 = *&v19[v43];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v43] = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_1B629A8E8(0, v44[2] + 1, 1, v44);
      *&v19[v43] = v44;
    }

    v47 = v44[2];
    v46 = v44[3];
    if (v47 >= v46 >> 1)
    {
      v44 = sub_1B629A8E8((v46 > 1), v47 + 1, 1, v44);
    }

    v44[2] = v47 + 1;
    v48 = &v44[2 * v47];
    v48[4] = sub_1B62B8188;
    v48[5] = v42;
    *&v19[v43] = v44;
    swift_endAccess();

    v39 = v55;
  }

  else
  {
  }

  [*&v58[v57] unlock];

  return v19;
}

char *CachedMapItemStorage.init(store:customName:latitude:longitude:mapItemStorage:muid:resultsProvider:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v16 = [v9 initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v57 = v17;
  v58 = v16;
  v54 = *&v16[v17];
  v20 = &v19[OBJC_IVAR___MSCachedMapItemStorage__customName];
  v21 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__customName + 8];
  *v20 = a2;
  *(v20 + 1) = a3;

  v22 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__latitude];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__latitude] = a4;
  v51 = a4;

  v23 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__longitude];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__longitude] = a5;
  v50 = a5;

  if (a6 && (v24 = [a6 data]) != 0)
  {
    v25 = v24;
    v26 = sub_1B63BE924();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xF000000000000000;
  }

  v29 = &v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
  v30 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
  v31 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8];
  *v29 = v26;
  v29[1] = v28;
  sub_1B6284F64(v30, v31);
  v32 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__muid];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__muid] = a7;
  v33 = a7;

  v34 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider] = a8;
  v35 = a8;

  v36 = swift_allocObject();
  v36[2] = a2;
  v36[3] = a3;
  v36[4] = a4;
  v36[5] = a5;
  v36[6] = a6;
  v36[7] = a7;
  v36[8] = a8;
  sub_1B6282B88();
  v37 = *&v58[v57];
  v53 = v51;
  v38 = v50;
  v39 = v33;
  v40 = v35;
  v41 = a6;
  if (sub_1B63BEF24())
  {
    v55 = v39;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1B62C775C;
    *(v42 + 24) = v36;
    v43 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v44 = *&v19[v43];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v43] = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_1B629A8E8(0, v44[2] + 1, 1, v44);
      *&v19[v43] = v44;
    }

    v47 = v44[2];
    v46 = v44[3];
    if (v47 >= v46 >> 1)
    {
      v44 = sub_1B629A8E8((v46 > 1), v47 + 1, 1, v44);
    }

    v44[2] = v47 + 1;
    v48 = &v44[2 * v47];
    v48[4] = sub_1B62B9488;
    v48[5] = v42;
    *&v19[v43] = v44;
    swift_endAccess();

    v39 = v55;
  }

  else
  {
  }

  [*&v58[v57] unlock];

  return v19;
}

void sub_1B62C3190(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = a2;
    if (a4)
    {
      a4 = sub_1B63BEBC4();
    }

    [v15 setCustomName_];

    [v15 setLatitude_];
    [v15 setLongitude_];
    if (a7)
    {
      v17 = [a7 data];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1B63BE924();
        v21 = v20;

        a7 = sub_1B63BE904();
        sub_1B628BAC0(v19, v21);
      }

      else
      {
        a7 = 0;
      }
    }

    [v15 setMapItemStorage_];

    [v15 setMuid_];
    [v15 setResultsProvider_];
  }
}

uint64_t sub_1B62C3514()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCachedMapItemStorage__customName);
  v4 = *(v0 + OBJC_IVAR___MSCachedMapItemStorage__customName + 8);
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
  *(v18 + 16) = sub_1B62C67A8;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_2;
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

    v13 = sub_1B62C67A8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62C3920(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedMapItemStorage__customName);
  v8 = *(v3 + OBJC_IVAR___MSCachedMapItemStorage__customName + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62C67B4;
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

void sub_1B62C3AD8(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCachedMapItemStorage();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 customName]) != 0)
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

void sub_1B62C3BFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
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
    [v7 setCustomName_];
  }
}

id (*sub_1B62C3CB4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62C3514();
  a1[1] = v3;
  return sub_1B62C3CFC;
}

id sub_1B62C3CFC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B62C3920(*a1, v2);
  }

  v5 = a1[1];

  sub_1B62C3920(v3, v2);
}

uint64_t sub_1B62C3DB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedMapItemStorage__latitude);
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
  *(v19 + 16) = sub_1B62C67BC;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_34;
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
    v14 = sub_1B62C67BC;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62C4174(void *a1)
{
  sub_1B62C6A58(a1);
}

void (*sub_1B62C41AC(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62C3DB4();
  return sub_1B62C41F4;
}

uint64_t sub_1B62C4250()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedMapItemStorage__longitude);
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
  *(v19 + 16) = sub_1B62C6C08;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_44;
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
    v14 = sub_1B62C6C08;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62C4610(void *a1)
{
  sub_1B62C6C30(a1);
}

void (*sub_1B62C4648(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62C4250();
  return sub_1B62C4690;
}

void sub_1B62C46A8(id *a1, char a2, void (*a3)(id))
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

uint64_t sub_1B62C476C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v0 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage);
  v5 = *(v0 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8);
  v29 = v4;
  v30 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      v8 = objc_allocWithZone(MEMORY[0x1E69A21E0]);
      sub_1B629119C(v4, v5);
      v9 = sub_1B63BE904();
      v10 = [v8 initWithData_];

      sub_1B6284F64(v4, v5);
LABEL_15:
      v16 = 0;
LABEL_16:
      sub_1B6284F64(v29, v30);
      sub_1B62B1F7C(v16);
      return v10;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_10:
    v12 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_12;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_10;
  }

  v12 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_12:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    v28[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    goto LABEL_14;
  }

  [v3 lock];
  v18 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v18;
  [v3 unlock];
  if (!v18)
  {
    sub_1B6295C20(v13);
    v10 = 0;
    v16 = 0;
    goto LABEL_16;
  }

  v20 = swift_allocObject();
  v20[2] = v13;
  v20[3] = v19;
  v20[4] = &v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B62C6DE0;
  *(v21 + 24) = v20;
  v28[4] = sub_1B62B9478;
  v28[5] = v21;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1B62B1294;
  v28[3] = &block_descriptor_55;
  v22 = _Block_copy(v28);
  v23 = v19;

  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    v24 = v30;
    if (v30 >> 60 == 15)
    {

      sub_1B6295C20(v13);
      v10 = 0;
    }

    else
    {
      v25 = v29;
      v26 = objc_allocWithZone(MEMORY[0x1E69A21E0]);
      sub_1B629119C(v25, v24);
      v27 = sub_1B63BE904();
      v10 = [v26 initWithData_];

      sub_1B6284F64(v25, v24);
      sub_1B6295C20(v13);
    }

    v16 = sub_1B62C6DE0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B62C4C60(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B62C4DFC(v2, a1, v1);
  [v2 unlock];
}

void sub_1B62C4CD8(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCachedMapItemStorage();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 mapItemStorage]) != 0)
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

uint64_t sub_1B62C4DFC(uint64_t a1, void *a2, char *a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = [v5 data];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B63BE924();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xF000000000000000;
    }

    v17 = &a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
    v18 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
    v19 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8];
    *v17 = v8;
    v17[1] = v10;
    sub_1B6284F64(v18, v19);
    v20 = [v5 _muid];
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v22 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__muid];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__muid] = v21;

    v23 = [v5 _resultProviderID];
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    v25 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider] = v24;

    [v5 coordinate];
    v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v28 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__latitude];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__latitude] = v27;

    [v5 coordinate];
    v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

    v31 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__longitude];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__longitude] = v30;
  }

  else
  {
    v11 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
    v12 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v11, v12);
    v13 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__muid];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__muid] = 0;

    v14 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider] = 0;

    v15 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__latitude];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__latitude] = 0;

    v16 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__longitude];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__longitude] = 0;

    v5 = 0;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  sub_1B6282B88();
  v33 = *&a3[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v34 = v5;
  v35 = a3;
  if (sub_1B63BEF24())
  {
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1B62C76DC;
    *(v36 + 24) = v32;
    v37 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v38 = *&v35[v37];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35[v37] = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1B629A8E8(0, v38[2] + 1, 1, v38);
      *&v35[v37] = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    if (v41 >= v40 >> 1)
    {
      v38 = sub_1B629A8E8((v40 > 1), v41 + 1, 1, v38);
    }

    v38[2] = v41 + 1;
    v42 = &v38[2 * v41];
    v42[4] = sub_1B62B9488;
    v42[5] = v36;
    *&v35[v37] = v38;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_1B62C5194(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      ObjectType = swift_getObjectType();
      v8 = a2;
      v9 = a3;
      v10 = [ObjectType strippedMapItemWith_];
      v11 = [v10 data];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1B63BE924();
        v15 = v14;

        v16 = sub_1B63BE904();
        sub_1B628BAC0(v13, v15);
      }

      else
      {
        v16 = 0;
      }

      [v6 setMapItemStorage_];

      v17 = [v10 _muid];
      v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      [v6 setMuid_];

      v19 = [v10 _resultProviderID];
      v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      [v6 setResultsProvider_];

      [v10 coordinate];
      v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v6 setLatitude_];

      [v10 coordinate];
      v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v6 setLongitude_];
    }

    else
    {
      v24 = a2;
      [v6 setMapItemStorage_];
      [v6 setMuid_];
      [v6 setResultsProvider_];
      [v6 setLatitude_];
      [v6 setLongitude_];
    }
  }
}

void (*sub_1B62C5470(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62C476C();
  return sub_1B62C54B8;
}

void sub_1B62C54B8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62C4DFC(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62C4DFC(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

uint64_t sub_1B62C55CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedMapItemStorage__muid);
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
  *(v19 + 16) = sub_1B62C6DEC;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_65;
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
    v14 = sub_1B62C6DEC;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62C598C(void *a1)
{
  sub_1B62C6E14(a1);
}

void (*sub_1B62C59C4(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62C55CC();
  return sub_1B62C5A0C;
}

uint64_t sub_1B62C5A68()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider);
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
  *(v19 + 16) = sub_1B62C6FC4;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_76_0;
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
    v14 = sub_1B62C6FC4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62C5E28(void *a1)
{
  sub_1B62C6FEC(a1);
}

void sub_1B62C5E60(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v16];
  v7 = v16[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedCachedMapItemStorage();
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

id sub_1B62C5F74(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B62C5FE4(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62C5A68();
  return sub_1B62C602C;
}

void *sub_1B62C60A0(void *a1, void *a2, int a3, int a4)
{
  v49 = a4;
  v51 = a3;
  v50 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v45 - v11;
  v12 = &v4[OBJC_IVAR___MSCachedMapItemStorage__customName];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR___MSCachedMapItemStorage__latitude] = 0;
  *&v4[OBJC_IVAR___MSCachedMapItemStorage__longitude] = 0;
  *&v4[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage] = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSCachedMapItemStorage__muid] = 0;
  *&v4[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider] = 0;
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
  v21(&v4[v19], 1, 1, v20);
  v21(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v20);
  v22 = v51;
  v23 = v50;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v22;
  v24 = type metadata accessor for MapsSyncObject();
  v52.receiver = v4;
  v52.super_class = v24;
  v25 = a2;
  v26 = objc_msgSendSuper2(&v52, sel_init);
  v27 = v26;
  if (v23)
  {
    v28 = v26;
    v29 = [v23 objectID];
    v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

    (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v23, v22 & 1, v49 & 1);
  }

  else
  {
    v31 = v26;
    v32 = v48;
    sub_1B63BE9F4();
    v18(v32, 0, 1, v17);
    v33 = v45;
    sub_1B62B2C0C(v32, v45);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v33, &v31[v34]);
    swift_endAccess();
    v35 = v47;
    sub_1B62B2C0C(v32, v47);
    v36 = (*(v46 + 80) + 16) & ~*(v46 + 80);
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

void sub_1B62C661C()
{
  v1 = *(v0 + OBJC_IVAR___MSCachedMapItemStorage__customName + 8);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage), *(v0 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8));
  v2 = *(v0 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider);
}

id CachedMapItemStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedMapItemStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62C67E4(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = a1;
  if (a2)
  {
    v8 = (v2 + OBJC_IVAR___MSCachedMapItemStorage__customName);
    v9 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__customName + 8);
    *v8 = 0;
    v8[1] = 0;
  }

  else
  {
    v10 = [v6 customName];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1B63BEBD4();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = (v2 + OBJC_IVAR___MSCachedMapItemStorage__customName);
    v16 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__customName + 8);
    *v15 = v12;
    v15[1] = v14;

    if ((a2 & 1) == 0)
    {
      v23 = [v6 latitude];
      v24 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude);
      *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude) = v23;

      v25 = [v6 longitude];
      v26 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude);
      *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude) = v25;

      v27 = [v6 mapItemStorage];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1B63BE924();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0xF000000000000000;
      }

      v32 = (v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage);
      v33 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage);
      v34 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8);
      *v32 = v29;
      v32[1] = v31;
      sub_1B6284F64(v33, v34);
      v35 = [v6 muid];
      v36 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid);
      *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid) = v35;

      v22 = [v6 resultsProvider];
      goto LABEL_14;
    }
  }

  v17 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude) = 0;

  v18 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude) = 0;

  v19 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage);
  v20 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage) = xmmword_1B63C3E40;
  sub_1B6284F64(v19, v20);
  v21 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid) = 0;

  v22 = 0;
LABEL_14:
  v37 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider) = v22;
}

id sub_1B62C6A58(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C7708;
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

id sub_1B62C6C30(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C76E4;
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

id sub_1B62C6E14(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C76B8;
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

id sub_1B62C6FEC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C7694;
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

uint64_t type metadata accessor for CachedMapItemStorage()
{
  result = qword_1EB9431A8;
  if (!qword_1EB9431A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Collection.__allocating_init(collectionDescription:image:imageUrl:positionIndex:title:)(int a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v10 = v9;
  v15 = objc_allocWithZone(v10);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB0F2A8;
  if (a2)
  {
    v17 = sub_1B63BEBC4();
  }

  else
  {
    v17 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v18 = 0;
    v19 = a9;
    if (a6)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20 = 0;
    if (v19)
    {
      goto LABEL_9;
    }

LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  sub_1B629119C(a3, a4);
  v18 = sub_1B63BE904();
  sub_1B6284F64(a3, a4);
  v19 = a9;
  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = sub_1B63BEBC4();

  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_9:
  v21 = sub_1B63BEBC4();

LABEL_13:
  v22 = [v15 initWithStore:v16 collectionDescription:v17 image:v18 imageUrl:v20 positionIndex:a7 title:v21];
  sub_1B6284F64(a3, a4);

  return v22;
}

id Collection.init(collectionDescription:image:imageUrl:positionIndex:title:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  if (qword_1EDB0F2A0 != -1)
  {
    v22 = a2;
    swift_once();
    a2 = v22;
  }

  v14 = qword_1EDB0F2A8;
  if (a2)
  {
    v15 = sub_1B63BEBC4();
  }

  else
  {
    v15 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v16 = 0;
    v17 = a9;
    if (a6)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = 0;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  sub_1B629119C(a3, a4);
  v16 = sub_1B63BE904();
  sub_1B6284F64(a3, a4);
  v17 = a9;
  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = sub_1B63BEBC4();

  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_9:
  v19 = sub_1B63BEBC4();

LABEL_13:
  v20 = [v10 initWithStore:v14 collectionDescription:v15 image:v16 imageUrl:v18 positionIndex:a7 title:v19];
  sub_1B6284F64(a3, a4);

  return v20;
}

char *Collection.__allocating_init(store:collectionDescription:image:imageUrl:positionIndex:title:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = [objc_allocWithZone(v11) initWithStore_];
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v19 = *&v17[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v20 = v17;
  [v19 lock];
  v42 = *&v17[v18];
  v21 = &v20[OBJC_IVAR___MSCollection__collectionDescription];
  v22 = *&v20[OBJC_IVAR___MSCollection__collectionDescription + 8];
  *v21 = a2;
  *(v21 + 1) = a3;

  v23 = &v20[OBJC_IVAR___MSCollection__image];
  v25 = *&v20[OBJC_IVAR___MSCollection__image];
  v24 = *&v20[OBJC_IVAR___MSCollection__image + 8];
  *v23 = a4;
  v23[1] = a5;
  sub_1B6291034(a4, a5);
  sub_1B6284F64(v25, v24);
  v26 = &v20[OBJC_IVAR___MSCollection__imageUrl];
  v27 = *&v20[OBJC_IVAR___MSCollection__imageUrl + 8];
  *v26 = a6;
  *(v26 + 1) = a7;

  *&v20[OBJC_IVAR___MSCollection__positionIndex] = a8;
  v28 = &v20[OBJC_IVAR___MSCollection__title];
  v29 = *&v20[OBJC_IVAR___MSCollection__title + 8];
  *v28 = a9;
  *(v28 + 1) = a10;

  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = a4;
  v30[5] = a5;
  v30[6] = a6;
  v30[7] = a7;
  v30[8] = a8;
  v30[9] = a9;
  v30[10] = a10;
  sub_1B6282B88();
  v31 = *&v17[v18];
  sub_1B6291034(a4, a5);
  if (sub_1B63BEF24())
  {
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1B62CA9A0;
    *(v32 + 24) = v30;
    v33 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v34 = *&v20[v33];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[v33] = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_1B629A8E8(0, v34[2] + 1, 1, v34);
      *&v20[v33] = v34;
    }

    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = sub_1B629A8E8((v36 > 1), v37 + 1, 1, v34);
    }

    v34[2] = v37 + 1;
    v38 = &v34[2 * v37];
    v38[4] = sub_1B62B8188;
    v38[5] = v32;
    *&v20[v33] = v34;
    swift_endAccess();
  }

  [*&v17[v18] unlock];
  sub_1B6284F64(a4, a5);

  return v20;
}

char *Collection.init(store:collectionDescription:image:imageUrl:positionIndex:title:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = [v11 initWithStore_];
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v19 = *&v17[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v20 = v17;
  [v19 lock];
  v44 = *&v17[v18];
  v21 = &v20[OBJC_IVAR___MSCollection__collectionDescription];
  v22 = *&v20[OBJC_IVAR___MSCollection__collectionDescription + 8];
  *v21 = a2;
  *(v21 + 1) = a3;
  v41 = a3;

  v23 = &v20[OBJC_IVAR___MSCollection__image];
  v25 = *&v20[OBJC_IVAR___MSCollection__image];
  v24 = *&v20[OBJC_IVAR___MSCollection__image + 8];
  *v23 = a4;
  v23[1] = a5;
  sub_1B6291034(a4, a5);
  sub_1B6284F64(v25, v24);
  v26 = &v20[OBJC_IVAR___MSCollection__imageUrl];
  v27 = *&v20[OBJC_IVAR___MSCollection__imageUrl + 8];
  *v26 = a6;
  *(v26 + 1) = a7;

  *&v20[OBJC_IVAR___MSCollection__positionIndex] = a8;
  v28 = &v20[OBJC_IVAR___MSCollection__title];
  v29 = *&v20[OBJC_IVAR___MSCollection__title + 8];
  *v28 = a9;
  *(v28 + 1) = a10;

  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = v41;
  v30[4] = a4;
  v30[5] = a5;
  v30[6] = a6;
  v30[7] = a7;
  v30[8] = a8;
  v30[9] = a9;
  v30[10] = a10;
  sub_1B6282B88();
  v31 = *&v17[v18];
  sub_1B6291034(a4, a5);
  if (sub_1B63BEF24())
  {
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1B62CD694;
    *(v32 + 24) = v30;
    v33 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v34 = *&v20[v33];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[v33] = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_1B629A8E8(0, v34[2] + 1, 1, v34);
      *&v20[v33] = v34;
    }

    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = sub_1B629A8E8((v36 > 1), v37 + 1, 1, v34);
    }

    v34[2] = v37 + 1;
    v38 = &v34[2 * v37];
    v38[4] = sub_1B62B9488;
    v38[5] = v32;
    *&v20[v33] = v34;
    swift_endAccess();
  }

  [*&v17[v18] unlock];
  sub_1B6284F64(a4, a5);

  return v20;
}

void sub_1B62C81C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for MapsSyncManagedCollection();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = a2;
    if (a4)
    {
      v18 = sub_1B63BEBC4();
    }

    else
    {
      v18 = 0;
    }

    [v16 setCollectionDescription_];

    if (a6 >> 60 == 15)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_1B63BE904();
    }

    [v16 setImage_];

    if (a8)
    {
      v20 = sub_1B63BEBC4();
    }

    else
    {
      v20 = 0;
    }

    [v16 setImageUrl_];

    [v16 setPositionIndex_];
    if (a11)
    {
      v21 = sub_1B63BEBC4();
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    [v16 setTitle_];
  }
}

uint64_t sub_1B62C849C()
{
  v1 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B62C8604()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCollection__collectionDescription);
  v4 = *(v0 + OBJC_IVAR___MSCollection__collectionDescription + 8);
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
  *(v18 + 16) = sub_1B62CA9E0;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_3;
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

    v13 = sub_1B62CA9E0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62C89A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollection__collectionDescription);
  v8 = *(v3 + OBJC_IVAR___MSCollection__collectionDescription + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62CAA08;
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

uint64_t (*sub_1B62C8B60(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62C8604();
  a1[1] = v3;
  return sub_1B62C8BA8;
}

uint64_t sub_1B62C8C54(uint64_t a1, unint64_t a2)
{
  sub_1B62CCEE4(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62C8C9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1B6291034(*a1, v3);
  sub_1B62CCEE4(v2, v3);

  return sub_1B6284F64(v2, v3);
}

void sub_1B62C8CF8(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCollection();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 image]) != 0)
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

void sub_1B62C8E1C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedCollection();
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
    [v7 setImage_];
  }
}

uint64_t (*sub_1B62C8EDC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6294B38();
  a1[1] = v3;
  return sub_1B62C8F24;
}

uint64_t sub_1B62C8F24(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1B6291034(v5, v3);
    sub_1B62CCEE4(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62CCEE4(v5, v3);
  }

  return sub_1B6284F64(v2, v3);
}

uint64_t sub_1B62C8FB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCollection__imageUrl);
  v4 = *(v0 + OBJC_IVAR___MSCollection__imageUrl + 8);
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
  *(v18 + 16) = sub_1B62CD0B4;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_44_0;
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

    v13 = sub_1B62CD0B4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62C9358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollection__imageUrl);
  v8 = *(v3 + OBJC_IVAR___MSCollection__imageUrl + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62CD0DC;
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

uint64_t (*sub_1B62C9510(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62C8FB4();
  a1[1] = v3;
  return sub_1B62C9558;
}

uint64_t sub_1B62C9570()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCollection__placesCount);
  [v1 unlock];
  return v2;
}

uint64_t sub_1B62C9638()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCollection__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B62C96E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollection__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62CD100;
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

id sub_1B62C9880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B62C98E4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollection__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62C9968;
}

id sub_1B62C99A4(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_1B62C9A24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSCollection__title);
  v4 = *(v0 + OBJC_IVAR___MSCollection__title + 8);
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
  *(v18 + 16) = sub_1B62CD108;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_69;
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

    v13 = sub_1B62CD108;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62C9DC8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_1B62C9E50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollection__title);
  v8 = *(v3 + OBJC_IVAR___MSCollection__title + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62CD130;
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

void sub_1B62CA008(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedCollection();
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

void sub_1B62CA12C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedCollection();
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

uint64_t (*sub_1B62CA1F0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62C9A24();
  a1[1] = v3;
  return sub_1B62CA238;
}

uint64_t sub_1B62CA250(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
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

id sub_1B62CA2D0(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = a1;
  sub_1B62CAC78(&v17, v5, type metadata accessor for CollectionItem, &qword_1EB943168, &qword_1B63C3FE8, type metadata accessor for CollectionItem);
  v6 = v17;
  swift_endAccess();

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_1B6282B88();
  v8 = v5;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62CD154;
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

id sub_1B62CA548(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = sub_1B62CC18C(a1);
  swift_endAccess();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1B6282B88();
  v7 = a1;
  if (sub_1B63BEF24())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1B62CD178;
    *(v8 + 24) = v6;
    v9 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v10 = *(v2 + v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1B629A8E8(0, v10[2] + 1, 1, v10);
      *(v2 + v9) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1B629A8E8((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_1B62B9488;
    v14[5] = v8;
    *(v2 + v9) = v10;
    swift_endAccess();
  }

  return [v4 unlock];
}

void sub_1B62CA714(void *a1, void *a2, uint64_t a3, SEL *a4)
{
  type metadata accessor for MapsSyncManagedCollection();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    v14 = a2;
    [v10 lock];
    v11 = sub_1B629563C(v10, a1);
    [v10 unlock];
    if (v11)
    {
      type metadata accessor for MapsSyncManagedCollectionItem();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        [v9 *a4];
      }

      v13 = v11;
    }

    else
    {
      v13 = v14;
    }
  }
}

uint64_t sub_1B62CA8E8()
{
  v1 = *(v0 + OBJC_IVAR___MSCollection__collectionDescription + 8);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSCollection__image), *(v0 + OBJC_IVAR___MSCollection__image + 8));
  v2 = *(v0 + OBJC_IVAR___MSCollection__imageUrl + 8);

  v3 = *(v0 + OBJC_IVAR___MSCollection__title + 8);

  v4 = *(v0 + OBJC_IVAR___MSCollection__places);
}

id Collection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Collection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B62CAAEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B63BF434();
  sub_1B63BEC24();
  v9 = sub_1B63BF494();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B63BF364() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1B62CB75C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B62CAC78(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
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

    v17 = sub_1B63BF054();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_1B63BF044();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_1B62CAEDC(v15, result + 1, a4, a5, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_1B62CB334(v30 + 1, a4, a5);
        }

        v31 = v16;
        sub_1B62CB554(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = *(v14 + 40);
    v20 = sub_1B63BEF14();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_1B63BEF24();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v28 = a2;
      sub_1B62CB5D8(v28, v22, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v38;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B62CAEDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_1B63BF0F4();
    v22 = v8;
    sub_1B63BF004();
    if (sub_1B63BF074())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          sub_1B62CB334(v16 + 1, a3, a4);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_1B63BEF14();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_1B63BF074());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v8;
}

uint64_t sub_1B62CB0D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9431B8, &unk_1B63C4158);
  result = sub_1B63BF0E4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B63BF434();
      sub_1B63BEC24();
      result = sub_1B63BF494();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B62CB334(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B63BF0E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1B63BEF14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_1B62CB554(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1B63BEF14();
  v5 = -1 << *(a2 + 32);
  result = sub_1B63BEFE4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1B62CB5D8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
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
    sub_1B62CB334(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1B62CBA38(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_1B62CBDB0(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_1B63BEF14();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_1B63BEF24();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B63BF3C4();
  __break(1u);
}

uint64_t sub_1B62CB75C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1B62CB0D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B62CB8DC();
      goto LABEL_16;
    }

    sub_1B62CBB78(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B63BF434();
  sub_1B63BEC24();
  result = sub_1B63BF494();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B63BF364();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B63BF3C4();
  __break(1u);
  return result;
}

void *sub_1B62CB8DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9431B8, &unk_1B63C4158);
  v2 = *v0;
  v3 = sub_1B63BF0D4();
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

id sub_1B62CBA38(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B63BF0D4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1B62CBB78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9431B8, &unk_1B63C4158);
  result = sub_1B63BF0E4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B63BF434();

      sub_1B63BEC24();
      result = sub_1B63BF494();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1B62CBDB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B63BF0E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1B63BEF14();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1B62CBFBC(void *a1)
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

    v6 = a1;
    v7 = sub_1B63BF084();

    if (v7)
    {
      v8 = sub_1B62CCA08(v4, v6, &qword_1EB943170, &unk_1B63C3FF0, type metadata accessor for ReviewedPlace, type metadata accessor for ReviewedPlace);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for ReviewedPlace();
  v11 = *(v3 + 40);
  v12 = sub_1B63BEF14();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1B63BEF24();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CBA38(&qword_1EB943170, &unk_1B63C3FF0);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1B62CCD44(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1B62CC18C(void *a1)
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

    v6 = a1;
    v7 = sub_1B63BF084();

    if (v7)
    {
      v8 = sub_1B62CCA08(v4, v6, &qword_1EB943168, &qword_1B63C3FE8, type metadata accessor for CollectionItem, type metadata accessor for CollectionItem);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for CollectionItem();
  v11 = *(v3 + 40);
  v12 = sub_1B63BEF14();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1B63BEF24();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CBA38(&qword_1EB943168, &qword_1B63C3FE8);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1B62CCD44(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1B62CC35C(void *a1)
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

    v6 = a1;
    v7 = sub_1B63BF084();

    if (v7)
    {
      v8 = sub_1B62CCA08(v4, v6, &qword_1EB943160, &qword_1B63C3FE0, type metadata accessor for Collection, type metadata accessor for Collection);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for Collection();
  v11 = *(v3 + 40);
  v12 = sub_1B63BEF14();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1B63BEF24();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CBA38(&qword_1EB943160, &qword_1B63C3FE0);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1B62CCD44(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1B62CC52C(void *a1)
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

    v6 = a1;
    v7 = sub_1B63BF084();

    if (v7)
    {
      v8 = sub_1B62CCA08(v4, v6, &qword_1EB943158, &qword_1B63C3FD8, type metadata accessor for RAPRecord, type metadata accessor for RAPRecord);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for RAPRecord();
  v11 = *(v3 + 40);
  v12 = sub_1B63BEF14();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1B63BEF24();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CBA38(&qword_1EB943158, &qword_1B63C3FD8);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1B62CCD44(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1B62CC6FC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B63BF434();
  sub_1B63BEC24();
  v7 = sub_1B63BF494();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1B63BF364() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CB8DC();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1B62CCB80(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1B62CC838(void *a1)
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

    v6 = a1;
    v7 = sub_1B63BF084();

    if (v7)
    {
      v8 = sub_1B62CCA08(v4, v6, &qword_1EB943150, &qword_1B63C3FD0, type metadata accessor for Visit, type metadata accessor for Visit);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for Visit();
  v11 = *(v3 + 40);
  v12 = sub_1B63BEF14();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1B63BEF24();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CBA38(&qword_1EB943150, &qword_1B63C3FD0);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1B62CCD44(v14);
  result = v21;
  *v10 = v22;
  return result;
}