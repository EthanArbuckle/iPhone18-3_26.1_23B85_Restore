id sub_1B62E88B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20)
{
  v49 = a5;
  v47 = a4;
  v46 = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v41 - v24;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDB0F2A8;
  if (a2)
  {
    v43 = sub_1B63BEBC4();

    v26 = a9;
    v27 = a10;
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_8:
    v42 = 0;
    if (v26)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v43 = 0;
  v26 = a9;
  v27 = a10;
  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_5:
  v42 = sub_1B63BEBC4();

  if (v26)
  {
LABEL_6:
    v41 = sub_1B63BEBC4();

    goto LABEL_10;
  }

LABEL_9:
  v41 = 0;
LABEL_10:
  v45 = v27;
  sub_1B628C510(v27, v25, &unk_1EB943210, &unk_1B63C3F50);
  v28 = sub_1B63BE994();
  v29 = *(v28 - 8);
  v30 = 0;
  if ((*(v29 + 48))(v25, 1, v28) != 1)
  {
    v30 = sub_1B63BE954();
    (*(v29 + 8))(v25, v28);
  }

  if (a12)
  {
    v31 = sub_1B63BEBC4();

    v32 = a18;
    if (a15)
    {
LABEL_14:
      v33 = sub_1B63BEBC4();

      goto LABEL_17;
    }
  }

  else
  {
    v31 = 0;
    v32 = a18;
    if (a15)
    {
      goto LABEL_14;
    }
  }

  v33 = 0;
LABEL_17:
  if (v32)
  {
    v34 = sub_1B63BEBC4();
  }

  else
  {
    v34 = 0;
  }

  WORD2(v40) = a20;
  LODWORD(v40) = a19;
  v35 = v41;
  v36 = v43;
  v37 = v42;
  v38 = [v48 initWithStore:v44 customName:v43 hidden:v46 & 1 latitude:v47 longitude:v49 mapItemAddress:v42 mapItemCategory:v41 mapItemLastRefreshed:v30 mapItemName:v31 muid:a13 originatingAddressString:v33 positionIndex:a16 shortcutIdentifier:v34 source:v40 type:? version:?];

  sub_1B6284EAC(v45, &unk_1EB943210, &unk_1B63C3F50);
  return v38;
}

void sub_1B62E8BD8(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 17) & 0xFFFFFFFFFFFFFFF8;
  sub_1B62E2278(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + v10), *(v2 + v11), *(v2 + v11 + 8), *(v2 + v12), HIWORD(*(v2 + v12)), *(v2 + v12 + 4));
}

id sub_1B62E8D90(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSFavoriteItem__latitude);
  *(v2 + OBJC_IVAR___MSFavoriteItem__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62EA11C;
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

id sub_1B62E8F78(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSFavoriteItem__longitude);
  *(v2 + OBJC_IVAR___MSFavoriteItem__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62EA0F8;
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

void sub_1B62E91DC(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B62E4C18(a1, a2, v6);
}

id sub_1B62E92DC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSFavoriteItem__muid);
  *(v2 + OBJC_IVAR___MSFavoriteItem__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62EA0D4;
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

void sub_1B62E95B4(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1B62E7B80(a1, a2);
}

uint64_t keypath_setTm_2(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

id keypath_get_247Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, _WORD *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  [*(*a1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  LOWORD(a2) = *(v5 + *a2);
  result = [*(v5 + v6) unlock];
  *a3 = a2;
  return result;
}

void sub_1B62EA024(uint64_t a1, void *a2)
{
  v5 = *(sub_1B63BE994() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 24) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);

  sub_1B62E7264(a1, a2, v7);
}

uint64_t sub_1B62EA140(unint64_t *a1, void (*a2)(uint64_t))
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

id HistoryCuratedCollection.__allocating_init(curatedCollectionIdentifier:resultProviderIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  if (qword_1EDB0F2A0 != -1)
  {
    v9 = v6;
    swift_once();
    v6 = v9;
  }

  v7 = qword_1EDB0F2A8;

  return [v6 initWithStore:v7 curatedCollectionIdentifier:a1 resultProviderIdentifier:a2];
}

id HistoryCuratedCollection.init(curatedCollectionIdentifier:resultProviderIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDB0F2A8;

  return [v3 initWithStore:v6 curatedCollectionIdentifier:a1 resultProviderIdentifier:a2];
}

char *HistoryCuratedCollection.init(store:curatedCollectionIdentifier:resultProviderIdentifier:)(void *a1, uint64_t a2, int a3)
{
  v7 = [v3 initWithStore_];
  v8 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v9 = *&v7[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v10 = v7;
  [v9 lock];
  v11 = *&v7[v8];
  *&v10[OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier] = a2;
  *&v10[OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier] = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  sub_1B6282B88();
  v13 = *&v7[v8];
  if (sub_1B63BEF24())
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1B62EB00C;
    *(v14 + 24) = v12;
    v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v16 = *&v10[v15];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v10[v15] = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1B629A8E8(0, v16[2] + 1, 1, v16);
      *&v10[v15] = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1B629A8E8((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = sub_1B62B8188;
    v20[5] = v14;
    *&v10[v15] = v16;
    swift_endAccess();
  }

  [*&v7[v8] unlock];

  return v10;
}

void sub_1B62EA5CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a2;
    [v8 setCuratedCollectionIdentifier_];
    [v8 setResultProviderIdentifier_];
  }
}

uint64_t sub_1B62EA7CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier);
  [v1 unlock];
  return v2;
}

id sub_1B62EA878(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62EB018;
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

id sub_1B62EAA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setCuratedCollectionIdentifier_];
  }

  return result;
}

id (*sub_1B62EAA78(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62EAAFC;
}

uint64_t sub_1B62EAB90()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier);
  [v1 unlock];
  return v2;
}

id sub_1B62EAC3C(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62EB020;
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

id sub_1B62EADD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setResultProviderIdentifier_];
  }

  return result;
}

id (*sub_1B62EAE3C(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62EAEC0;
}

void *sub_1B62EAEE8(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier] = 0;
  *&v9[OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier] = 0;
  return sub_1B62F0450(a1, a2, a3, a4);
}

id HistoryCuratedCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryCuratedCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62EB1A8(void *a1)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    [v4 position];
    *(v1 + OBJC_IVAR___MSHistoryItem__position) = v6;
    v7 = [v4 positionIndex];

    *(v1 + OBJC_IVAR___MSHistoryItem__positionIndex) = v7;
  }

  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v9 curatedCollectionIdentifier];
    *(v1 + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier) = v11;
    LODWORD(v9) = [v9 resultProviderIdentifier];

    *(v1 + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier) = v9;
  }
}

id HistoryDirectionsItem.__allocating_init(navigationInterrupted:routeRequestStorage:sharedETAData:)(char a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  if (qword_1EDB0F2A0 != -1)
  {
    v16 = v10;
    swift_once();
    v10 = v16;
  }

  v11 = qword_1EDB0F2A8;
  if (a4 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v13 = v10;
    sub_1B629119C(a3, a4);
    v12 = sub_1B63BE904();
    sub_1B6284F64(a3, a4);
    v10 = v13;
  }

  v14 = [v10 initWithStore:v11 navigationInterrupted:a1 & 1 routeRequestStorage:a2 sharedETAData:v12];
  sub_1B6284F64(a3, a4);

  return v14;
}

id HistoryDirectionsItem.init(navigationInterrupted:routeRequestStorage:sharedETAData:)(char a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDB0F2A8;
  if (a4 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    sub_1B629119C(a3, a4);
    v11 = sub_1B63BE904();
    sub_1B6284F64(a3, a4);
  }

  v12 = [v5 initWithStore:v10 navigationInterrupted:a1 & 1 routeRequestStorage:a2 sharedETAData:v11];
  sub_1B6284F64(a3, a4);

  return v12;
}

char *HistoryDirectionsItem.__allocating_init(store:navigationInterrupted:routeRequestStorage:sharedETAData:)(void *a1, char a2, void *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v11 = [objc_allocWithZone(v6) initWithStore_];
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v13 = *&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v14 = v11;
  [v13 lock];
  v41 = v12;
  v15 = *&v11[v12];
  v16 = a2 & 1;
  v14[OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted] = a2;
  if (a3 && (v17 = [a3 data]) != 0)
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

  v22 = &v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage];
  v23 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage];
  v24 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8];
  *v22 = v19;
  v22[1] = v21;
  sub_1B6284F64(v23, v24);
  v25 = &v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData];
  v26 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData];
  v27 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8];
  *v25 = a4;
  v25[1] = a5;
  sub_1B6291034(a4, a5);
  sub_1B6284F64(v26, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = v16;
  *(v28 + 24) = a3;
  *(v28 + 32) = a4;
  *(v28 + 40) = a5;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v29 = *&v11[v41];
  sub_1B6291034(a4, a5);
  v30 = a3;
  if (sub_1B63BEF24())
  {
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1B62ED748;
    *(v31 + 24) = v28;
    v32 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v33 = *&v14[v32];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v14[v32] = v33;
    v39 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_1B629A8E8(0, v33[2] + 1, 1, v33);
      *&v14[v32] = v33;
    }

    v36 = v33[2];
    v35 = v33[3];
    if (v36 >= v35 >> 1)
    {
      v33 = sub_1B629A8E8((v35 > 1), v36 + 1, 1, v33);
    }

    v33[2] = v36 + 1;
    v37 = &v33[2 * v36];
    v37[4] = sub_1B62B8188;
    v37[5] = v31;
    *&v14[v32] = v33;
    swift_endAccess();

    v30 = v39;
  }

  else
  {
  }

  [*&v11[v41] unlock];
  sub_1B6284F64(a4, a5);

  return v14;
}

char *HistoryDirectionsItem.init(store:navigationInterrupted:routeRequestStorage:sharedETAData:)(void *a1, char a2, void *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v11 = [v6 initWithStore_];
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v13 = *&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v14 = v11;
  [v13 lock];
  v41 = v12;
  v15 = *&v11[v12];
  v16 = a2 & 1;
  v14[OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted] = a2;
  if (a3 && (v17 = [a3 data]) != 0)
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

  v22 = &v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage];
  v23 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage];
  v24 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8];
  *v22 = v19;
  v22[1] = v21;
  sub_1B6284F64(v23, v24);
  v25 = &v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData];
  v26 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData];
  v27 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8];
  *v25 = a4;
  v25[1] = a5;
  sub_1B6291034(a4, a5);
  sub_1B6284F64(v26, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = v16;
  *(v28 + 24) = a3;
  *(v28 + 32) = a4;
  *(v28 + 40) = a5;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v29 = *&v11[v41];
  sub_1B6291034(a4, a5);
  v30 = a3;
  if (sub_1B63BEF24())
  {
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1B62EDDAC;
    *(v31 + 24) = v28;
    v32 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v33 = *&v14[v32];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v14[v32] = v33;
    v39 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_1B629A8E8(0, v33[2] + 1, 1, v33);
      *&v14[v32] = v33;
    }

    v36 = v33[2];
    v35 = v33[3];
    if (v36 >= v35 >> 1)
    {
      v33 = sub_1B629A8E8((v35 > 1), v36 + 1, 1, v33);
    }

    v33[2] = v36 + 1;
    v37 = &v33[2 * v36];
    v37[4] = sub_1B62B9488;
    v37[5] = v31;
    *&v14[v32] = v33;
    swift_endAccess();

    v30 = v39;
  }

  else
  {
  }

  [*&v11[v41] unlock];
  sub_1B6284F64(a4, a5);

  return v14;
}

void sub_1B62EBB7C(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, unint64_t a6)
{
  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = a2;
    [v11 setNavigationInterrupted_];
    if (a4)
    {
      v13 = [a4 data];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1B63BE924();
        v17 = v16;

        a4 = sub_1B63BE904();
        sub_1B628BAC0(v15, v17);
      }

      else
      {
        a4 = 0;
      }
    }

    [v11 setRouteRequestStorage_];

    if (a6 >> 60 == 15)
    {
      v18 = 0;
    }

    else
    {
      v18 = sub_1B63BE904();
    }

    v19 = v18;
    [v11 setSharedETAData_];
  }
}

uint64_t sub_1B62EBE88()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted);
  [v1 unlock];
  return v2;
}

id sub_1B62EBF34(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62ED758;
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

id sub_1B62EC0E0(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setNavigationInterrupted_];
  }

  return result;
}

id (*sub_1B62EC144(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62EC1C8;
}

uint64_t sub_1B62EC234()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v0 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
  v5 = *(v0 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8);
  v29 = v4;
  v30 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      v8 = objc_allocWithZone(MEMORY[0x1E69A25C0]);
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
  *(v21 + 16) = sub_1B62ED760;
  *(v21 + 24) = v20;
  v28[4] = sub_1B62B8284;
  v28[5] = v21;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1B62B1294;
  v28[3] = &block_descriptor_8;
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
      v26 = objc_allocWithZone(MEMORY[0x1E69A25C0]);
      sub_1B629119C(v25, v24);
      v27 = sub_1B63BE904();
      v10 = [v26 initWithData_];

      sub_1B6284F64(v25, v24);
      sub_1B6295C20(v13);
    }

    v16 = sub_1B62ED760;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B62EC728(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v2 lock];
  sub_1B62EC7A0(v2, a1, v1);
  [v2 unlock];
}

uint64_t sub_1B62EC7A0(uint64_t a1, void *a2, uint64_t a3)
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

    v13 = (a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
    v14 = *(a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
    v15 = *(a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8);
    *v13 = v8;
    v13[1] = v10;
    sub_1B6284F64(v14, v15);
  }

  else
  {
    v11 = *(a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
    v12 = *(a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8);
    *(a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage) = xmmword_1B63C3E40;
    sub_1B6284F64(v11, v12);
    v5 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v17 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v18 = v5;
  if (sub_1B63BEF24())
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B62EDDA0;
    *(v19 + 24) = v16;
    v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v21 = *(a3 + v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + v20) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1B629A8E8(0, v21[2] + 1, 1, v21);
      *(a3 + v20) = v21;
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
    *(a3 + v20) = v21;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_1B62EC9E8(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    if (a3)
    {
      v21 = v5;
      v20 = a2;
      v19 = a3;
      [v19 copy];
      sub_1B63BEF84();
      swift_unknownObjectRelease();
      sub_1B6281C60(0, &qword_1EDB0E790, 0x1E69A25C0);
      swift_dynamicCast();
      v6 = [v22 waypointsCount];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        while (1)
        {
          v9 = [v22 waypointsAtIndex_];
          if (!v9)
          {
            break;
          }

          v10 = v9;
          ++v8;
          v11 = [v9 mapItemStorage];
          v12 = [objc_opt_self() mapItemStorageForGEOMapItem:v11 forUseType:3];

          [v10 setMapItemStorage_];
          if (v7 == v8)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_7:
        v13 = [v22 data];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1B63BE924();
          v17 = v16;

          v18 = sub_1B63BE904();
          sub_1B628BAC0(v15, v17);
        }

        else
        {
          v18 = 0;
        }

        [v21 setRouteRequestStorage_];
      }
    }

    else
    {

      [v5 setRouteRequestStorage_];
    }
  }
}

void (*sub_1B62ECC30(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62EC234();
  return sub_1B62ECC78;
}

void sub_1B62ECC78(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62EC7A0(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62EC7A0(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

uint64_t sub_1B62ECDCC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
  v5 = *(v1 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8);
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
  *(v18 + 16) = sub_1B62ED788;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_34_2;
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
    v8 = sub_1B62ED788;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B62ED218(uint64_t a1, unint64_t a2)
{
  sub_1B62ED984(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62ED260(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1B6291034(*a1, v3);
  sub_1B62ED984(v2, v3);

  return sub_1B6284F64(v2, v3);
}

void sub_1B62ED2BC(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v21];
  v7 = v21[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
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

void sub_1B62ED3E0(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
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
    [v7 setSharedETAData_];
  }
}

uint64_t (*sub_1B62ED4A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62ECDCC();
  a1[1] = v3;
  return sub_1B62ED4E8;
}

uint64_t sub_1B62ED4E8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1B6291034(v5, v3);
    sub_1B62ED984(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62ED984(v5, v3);
  }

  return sub_1B6284F64(v2, v3);
}

void *sub_1B62ED560(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted] = 0;
  *&v9[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData] = xmmword_1B63C3E40;
  return sub_1B62F0450(a1, a2, a3, a4);
}

uint64_t sub_1B62ED674()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage), *(v0 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8));
  v1 = *(v0 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
  v2 = *(v0 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8);

  return sub_1B6284F64(v1, v2);
}

id HistoryDirectionsItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryDirectionsItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B62ED7B0(void *a1, char a2)
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

  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = a1;
    v13 = [v11 navigationInterrupted];
    *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted) = v13;
    if (a2)
    {
      v14 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
      v15 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8);
      *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage) = xmmword_1B63C3E40;
      sub_1B6284F64(v14, v15);
    }

    else
    {
      v16 = [v11 routeRequestStorage];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1B63BE924();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0xF000000000000000;
      }

      v21 = (v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
      v22 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
      v23 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8);
      *v21 = v18;
      v21[1] = v20;
      sub_1B6284F64(v22, v23);
      v24 = [v11 sharedETAData];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1B63BE924();
        v28 = v27;

LABEL_13:
        v29 = (v2 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
        v30 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
        v31 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8);
        *v29 = v26;
        v29[1] = v28;

        return sub_1B6284F64(v30, v31);
      }
    }

    v26 = 0;
    v28 = 0xF000000000000000;
    goto LABEL_13;
  }

  return result;
}

id sub_1B62ED984(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
  v8 = *(v3 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
  v9 = *(v3 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B62EDD98;
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

id HistoryEvDirectionsItem.__allocating_init(requiredCharge:vehicleIdentifier:)(double a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  if (qword_1EDB0F2A0 != -1)
  {
    v12 = v6;
    swift_once();
    v6 = v12;
  }

  v7 = qword_1EDB0F2A8;
  if (a3)
  {
    v8 = v6;
    v9 = sub_1B63BEBC4();

    v6 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 initWithStore:v7 requiredCharge:v9 vehicleIdentifier:a1];

  return v10;
}

id HistoryEvDirectionsItem.init(requiredCharge:vehicleIdentifier:)(double a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDB0F2A0 != -1)
  {
    v9 = a3;
    v10 = a1;
    swift_once();
    a3 = v9;
    a1 = v10;
  }

  v4 = qword_1EDB0F2A8;
  if (a3)
  {
    v5 = a1;
    v6 = sub_1B63BEBC4();

    a1 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithStore:v4 requiredCharge:v6 vehicleIdentifier:a1];

  return v7;
}

char *HistoryEvDirectionsItem.init(store:requiredCharge:vehicleIdentifier:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = [v5 initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  v14 = *&v10[v11];
  *&v13[OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge] = a4;
  v15 = &v13[OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier];
  v16 = *&v13[OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier + 8];
  *v15 = a2;
  *(v15 + 1) = a3;

  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  sub_1B6282B88();
  v18 = *&v10[v11];
  if (sub_1B63BEF24())
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B62EF30C;
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

void sub_1B62EE2A4(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a3;
    [v9 setRequiredCharge_];
    if (a5)
    {
      v11 = sub_1B63BEBC4();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v9 setVehicleIdentifier_];
  }
}

double sub_1B62EE50C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge);
  [v1 unlock];
  return v2;
}

id sub_1B62EE5C4(double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v1 + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62EF318;
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

id sub_1B62EE768(double a1)
{
  type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setRequiredCharge_];
  }

  return result;
}

id (*sub_1B62EE7D8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62EE864;
}

uint64_t sub_1B62EE904()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier);
  v4 = *(v0 + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier + 8);
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
  *(v18 + 16) = sub_1B62EF320;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_9;
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

    v13 = sub_1B62EF320;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62EED10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier);
  v8 = *(v3 + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62EF32C;
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

void sub_1B62EEEC8(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 vehicleIdentifier]) != 0)
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

void sub_1B62EEFEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
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
    [v7 setVehicleIdentifier_];
  }
}

id (*sub_1B62EF0A4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62EE904();
  a1[1] = v3;
  return sub_1B62EF0EC;
}

id sub_1B62EF0EC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B62EED10(*a1, v2);
  }

  v5 = a1[1];

  sub_1B62EED10(v3, v2);
}

void *sub_1B62EF160(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge] = 0;
  v10 = &v9[OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier];
  *v10 = 0;
  v10[1] = 0;
  v9[OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted] = 0;
  *&v9[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData] = xmmword_1B63C3E40;
  return sub_1B62F0450(a1, a2, a3, a4);
}

id HistoryEvDirectionsItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryEvDirectionsItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B62EF4B4(void *a1, char a2)
{
  sub_1B62ED7B0(a1, a2);
  type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = a1;
    [v6 requiredCharge];
    *(v2 + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge) = v8;
    if ((a2 & 1) != 0 || (v9 = [v6 vehicleIdentifier]) == 0)
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

    v14 = (v2 + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier);
    v15 = *(v2 + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier + 8);
    *v14 = v11;
    v14[1] = v13;
  }

  return result;
}

void sub_1B62EF5B0(void *a1)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    [v4 position];
    *(v1 + OBJC_IVAR___MSHistoryItem__position) = v6;
    v7 = [v4 positionIndex];

    *(v1 + OBJC_IVAR___MSHistoryItem__positionIndex) = v7;
  }
}

double sub_1B62EF640()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryItem__position);
  [v1 unlock];
  return v2;
}

id sub_1B62EF6A0(double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v1 + OBJC_IVAR___MSHistoryItem__position) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F02C4;
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
    v12[4] = sub_1B62B8188;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B62EF844(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryItem__position);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62EF8D0;
}

uint64_t sub_1B62EF8F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryItem__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B62EF950(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F09C4;
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

id (*sub_1B62EFAEC(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryItem__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62EFB70;
}

id HistoryItem.__allocating_init(position:positionIndex:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  if (qword_1EDB0F2A0 != -1)
  {
    v8 = v5;
    swift_once();
    v5 = v8;
  }

  v6 = qword_1EDB0F2A8;

  return [v5 initWithStore:v6 position:a1 positionIndex:a2];
}

id HistoryItem.init(position:positionIndex:)(uint64_t a1)
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB0F2A8;

  return [v1 initWithStore:v3 position:a1 positionIndex:?];
}

char *HistoryItem.init(store:position:positionIndex:)(void *a1, uint64_t a2, double a3)
{
  v7 = [v3 initWithStore_];
  v8 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v9 = *&v7[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v10 = v7;
  [v9 lock];
  v11 = *&v7[v8];
  *&v10[OBJC_IVAR___MSHistoryItem__position] = a3;
  *&v10[OBJC_IVAR___MSHistoryItem__positionIndex] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  sub_1B6282B88();
  v13 = *&v7[v8];
  if (sub_1B63BEF24())
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1B62F09CC;
    *(v14 + 24) = v12;
    v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v16 = *&v10[v15];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v10[v15] = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1B629A8E8(0, v16[2] + 1, 1, v16);
      *&v10[v15] = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1B629A8E8((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = sub_1B62B9488;
    v20[5] = v14;
    *&v10[v15] = v16;
    swift_endAccess();
  }

  [*&v7[v8] unlock];

  return v10;
}

void sub_1B62EFF8C(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryItem();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a3;
    [v8 setPosition_];
    [v8 setPositionIndex_];
  }
}

id sub_1B62F0254(double a1)
{
  type metadata accessor for MapsSyncManagedHistoryItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPosition_];
  }

  return result;
}

id sub_1B62F0390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

void *sub_1B62F0450(void *a1, void *a2, int a3, int a4)
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
  *&v4[OBJC_IVAR___MSHistoryItem__position] = 0;
  *&v4[OBJC_IVAR___MSHistoryItem__positionIndex] = 0;
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

id HistoryItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id HistoryMarkedLocation.__allocating_init(customName:floorOrdinal:latitude:longitude:mapItemStorage:muid:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
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

  v19 = [v15 initWithStore:v16 customName:v18 floorOrdinal:a3 latitude:a4 longitude:a5 mapItemStorage:a6 muid:a7];

  return v19;
}

id HistoryMarkedLocation.init(customName:floorOrdinal:latitude:longitude:mapItemStorage:muid:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
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

  v16 = [v8 initWithStore:v14 customName:v15 floorOrdinal:a3 latitude:a4 longitude:a5 mapItemStorage:a6 muid:a7];

  return v16;
}

char *HistoryMarkedLocation.__allocating_init(store:customName:floorOrdinal:latitude:longitude:mapItemStorage:muid:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v16 = [objc_allocWithZone(v9) initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v57 = v17;
  v51 = v16;
  v54 = *&v16[v17];
  v20 = &v19[OBJC_IVAR___MSHistoryMarkedLocation__customName];
  v21 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__customName + 8];
  *v20 = a2;
  *(v20 + 1) = a3;

  v52 = a4;
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal] = a4;
  v22 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__latitude];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__latitude] = a5;
  v49 = a5;

  v23 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__longitude];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__longitude] = a6;
  v48 = a6;

  if (a7 && (v24 = [a7 data]) != 0)
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

  v29 = &v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
  v30 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
  v31 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8];
  *v29 = v26;
  v29[1] = v28;
  sub_1B6284F64(v30, v31);
  v32 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__muid];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__muid] = a8;
  v33 = a8;

  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  *(v34 + 24) = a3;
  *(v34 + 32) = v52;
  *(v34 + 40) = a5;
  *(v34 + 48) = a6;
  *(v34 + 56) = a7;
  *(v34 + 64) = a8;
  sub_1B6282B88();
  v35 = *&v16[v57];
  v36 = v49;
  v53 = v48;
  v37 = v33;
  v38 = a7;
  if (sub_1B63BEF24())
  {
    v55 = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1B62F4544;
    *(v39 + 24) = v34;
    v40 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v41 = *&v19[v40];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v40] = v41;
    v43 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_1B629A8E8(0, v41[2] + 1, 1, v41);
      *&v19[v40] = v41;
    }

    v45 = v41[2];
    v44 = v41[3];
    if (v45 >= v44 >> 1)
    {
      v41 = sub_1B629A8E8((v44 > 1), v45 + 1, 1, v41);
    }

    v41[2] = v45 + 1;
    v46 = &v41[2 * v45];
    v46[4] = sub_1B62B8188;
    v46[5] = v39;
    *&v19[v40] = v41;
    swift_endAccess();

    v36 = v43;
    v37 = v55;
  }

  else
  {
  }

  [*&v51[v57] unlock];

  return v19;
}

char *HistoryMarkedLocation.init(store:customName:floorOrdinal:latitude:longitude:mapItemStorage:muid:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v16 = [v9 initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v57 = v17;
  v51 = v16;
  v54 = *&v16[v17];
  v20 = &v19[OBJC_IVAR___MSHistoryMarkedLocation__customName];
  v21 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__customName + 8];
  *v20 = a2;
  *(v20 + 1) = a3;

  v52 = a4;
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal] = a4;
  v22 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__latitude];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__latitude] = a5;
  v49 = a5;

  v23 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__longitude];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__longitude] = a6;
  v48 = a6;

  if (a7 && (v24 = [a7 data]) != 0)
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

  v29 = &v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
  v30 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
  v31 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8];
  *v29 = v26;
  v29[1] = v28;
  sub_1B6284F64(v30, v31);
  v32 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__muid];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__muid] = a8;
  v33 = a8;

  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  *(v34 + 24) = a3;
  *(v34 + 32) = v52;
  *(v34 + 40) = a5;
  *(v34 + 48) = a6;
  *(v34 + 56) = a7;
  *(v34 + 64) = a8;
  sub_1B6282B88();
  v35 = *&v16[v57];
  v36 = v49;
  v53 = v48;
  v37 = v33;
  v38 = a7;
  if (sub_1B63BEF24())
  {
    v55 = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1B62F52AC;
    *(v39 + 24) = v34;
    v40 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v41 = *&v19[v40];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v40] = v41;
    v43 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_1B629A8E8(0, v41[2] + 1, 1, v41);
      *&v19[v40] = v41;
    }

    v45 = v41[2];
    v44 = v41[3];
    if (v45 >= v44 >> 1)
    {
      v41 = sub_1B629A8E8((v44 > 1), v45 + 1, 1, v41);
    }

    v41[2] = v45 + 1;
    v46 = &v41[2 * v45];
    v46[4] = sub_1B62B9488;
    v46[5] = v39;
    *&v19[v40] = v41;
    swift_endAccess();

    v36 = v43;
    v37 = v55;
  }

  else
  {
  }

  [*&v51[v57] unlock];

  return v19;
}

void sub_1B62F1588(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
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

    [v15 setFloorOrdinal_];
    [v15 setLatitude_];
    [v15 setLongitude_];
    if (a8)
    {
      v17 = [a8 data];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1B63BE924();
        v21 = v20;

        a8 = sub_1B63BE904();
        sub_1B628BAC0(v19, v21);
      }

      else
      {
        a8 = 0;
      }
    }

    [v15 setMapItemStorage_];

    [v15 setMuid_];
  }
}

uint64_t sub_1B62F1900()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSHistoryMarkedLocation__customName);
  v4 = *(v0 + OBJC_IVAR___MSHistoryMarkedLocation__customName + 8);
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
  *(v18 + 16) = sub_1B62F457C;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_10;
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

    v13 = sub_1B62F457C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62F1D0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryMarkedLocation__customName);
  v8 = *(v3 + OBJC_IVAR___MSHistoryMarkedLocation__customName + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62F4588;
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

void sub_1B62F1EC4(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
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

void sub_1B62F1FE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
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

id (*sub_1B62F20A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62F1900();
  a1[1] = v3;
  return sub_1B62F20E8;
}

id sub_1B62F20E8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B62F1D0C(*a1, v2);
  }

  v5 = a1[1];

  sub_1B62F1D0C(v3, v2);
}

uint64_t sub_1B62F21CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal);
  [v1 unlock];
  return v2;
}

id sub_1B62F2278(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F4590;
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

id sub_1B62F2414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setFloorOrdinal_];
  }

  return result;
}

id (*sub_1B62F2478(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62F24FC;
}

uint64_t sub_1B62F2568()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMarkedLocation__latitude);
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
  *(v19 + 16) = sub_1B62F4598;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_41_1;
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
    v14 = sub_1B62F4598;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62F2928(void *a1)
{
  sub_1B62F4858(a1);
}

void (*sub_1B62F2960(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62F2568();
  return sub_1B62F29A8;
}

uint64_t sub_1B62F2A04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMarkedLocation__longitude);
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
  *(v19 + 16) = sub_1B62F4A08;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_51_2;
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
    v14 = sub_1B62F4A08;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62F2DC4(void *a1)
{
  sub_1B62F4A30(a1);
}

void (*sub_1B62F2DFC(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62F2A04();
  return sub_1B62F2E44;
}

void sub_1B62F2E5C(id *a1, char a2, void (*a3)(id))
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

uint64_t sub_1B62F2F20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v0 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage);
  v5 = *(v0 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8);
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
  *(v21 + 16) = sub_1B62F4BE0;
  *(v21 + 24) = v20;
  v28[4] = sub_1B62B9478;
  v28[5] = v21;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1B62B1294;
  v28[3] = &block_descriptor_62_0;
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

    v16 = sub_1B62F4BE0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B62F3414(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B62F35B0(v2, a1, v1);
  [v2 unlock];
}

void sub_1B62F348C(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
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

uint64_t sub_1B62F35B0(uint64_t a1, void *a2, char *a3)
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

    v16 = &a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
    v17 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
    v18 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8];
    *v16 = v8;
    v16[1] = v10;
    sub_1B6284F64(v17, v18);
    v19 = [v5 _muid];
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v21 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__muid];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__muid] = v20;

    [v5 coordinate];
    v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v24 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__latitude];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__latitude] = v23;

    [v5 coordinate];
    v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

    v27 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__longitude];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__longitude] = v26;
  }

  else
  {
    v11 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
    v12 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v11, v12);
    v13 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__muid];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__muid] = 0;

    v14 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__latitude];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__latitude] = 0;

    v15 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__longitude];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__longitude] = 0;

    v5 = 0;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  sub_1B6282B88();
  v29 = *&a3[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v30 = v5;
  v31 = a3;
  if (sub_1B63BEF24())
  {
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1B62F5238;
    *(v32 + 24) = v28;
    v33 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v34 = *&v31[v33];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v33] = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_1B629A8E8(0, v34[2] + 1, 1, v34);
      *&v31[v33] = v34;
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
    *&v31[v33] = v34;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_1B62F38F4(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
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

      [v10 coordinate];
      v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v6 setLatitude_];

      [v10 coordinate];
      v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v6 setLongitude_];
    }

    else
    {
      v22 = a2;
      [v6 setMapItemStorage_];
      [v6 setMuid_];
      [v6 setLatitude_];
      [v6 setLongitude_];
    }
  }
}

void (*sub_1B62F3B74(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62F2F20();
  return sub_1B62F3BBC;
}

void sub_1B62F3BBC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62F35B0(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62F35B0(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

uint64_t sub_1B62F3CD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMarkedLocation__muid);
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
  *(v19 + 16) = sub_1B62F4BEC;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_72_0;
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
    v14 = sub_1B62F4BEC;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62F4090(void *a1)
{
  sub_1B62F4C14(a1);
}

void sub_1B62F40C8(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v16];
  v7 = v16[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
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

id sub_1B62F41DC(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B62F424C(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62F3CD0();
  return sub_1B62F4294;
}

void *sub_1B62F42AC(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___MSHistoryMarkedLocation__customName];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal] = 0;
  *&v9[OBJC_IVAR___MSHistoryMarkedLocation__latitude] = 0;
  *&v9[OBJC_IVAR___MSHistoryMarkedLocation__longitude] = 0;
  *&v9[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryMarkedLocation__muid] = 0;
  return sub_1B62F0450(a1, a2, a3, a4);
}

void sub_1B62F4410()
{
  v1 = *(v0 + OBJC_IVAR___MSHistoryMarkedLocation__customName + 8);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage), *(v0 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8));
  v2 = *(v0 + OBJC_IVAR___MSHistoryMarkedLocation__muid);
}

id HistoryMarkedLocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryMarkedLocation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62F45C0(void *a1, char a2)
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

  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = a1;
    if ((a2 & 1) != 0 || (v13 = [v11 customName]) == 0)
    {
      v15 = 0;
      v17 = 0;
    }

    else
    {
      v14 = v13;
      v15 = sub_1B63BEBD4();
      v17 = v16;
    }

    v18 = (v2 + OBJC_IVAR___MSHistoryMarkedLocation__customName);
    v19 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__customName + 8);
    *v18 = v15;
    v18[1] = v17;

    v20 = [v11 floorOrdinal];
    *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal) = v20;
    if (a2)
    {
      v21 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude);
      *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude) = 0;

      v22 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude);
      *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude) = 0;

      v23 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage);
      v24 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8);
      *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage) = xmmword_1B63C3E40;
      sub_1B6284F64(v23, v24);

      v25 = 0;
    }

    else
    {
      v26 = [v11 latitude];
      v27 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude);
      *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude) = v26;

      v28 = [v11 longitude];
      v29 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude);
      *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude) = v28;

      v30 = [v11 mapItemStorage];
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

      v35 = (v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage);
      v36 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage);
      v37 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8);
      *v35 = v32;
      v35[1] = v34;
      sub_1B6284F64(v36, v37);
      v25 = [v11 muid];
    }

    v38 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__muid);
    *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__muid) = v25;
  }
}

id sub_1B62F4858(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude);
  *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62F5264;
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

id sub_1B62F4A30(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude);
  *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62F5240;
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

id sub_1B62F4C14(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__muid);
  *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62F5214;
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

id HistoryMultiPointRoute.__allocating_init(navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(char a1, void *a2, __int16 a3, void *a4, uint64_t a5, unint64_t a6, __int16 a7, int a8, uint64_t a9)
{
  v10 = v9;
  v16 = objc_allocWithZone(v10);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDB0F2A8;
  if (a6 >> 60 != 15)
  {
    sub_1B629119C(a5, a6);
    v18 = sub_1B63BE904();
    sub_1B6284F64(a5, a6);
    if (a9)
    {
      goto LABEL_5;
    }

LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v18 = 0;
  if (!a9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v19 = sub_1B63BEBC4();

LABEL_8:
  LOWORD(v22) = a7;
  v20 = [v16 initWithStore:v17 navigationInterrupted:a1 & 1 requiredCharge:a2 routeProgressWaypointIndex:a3 routeRequestStorage:a4 sharedETAData:v18 type:v22 vehicleIdentifier:v19];
  sub_1B6284F64(a5, a6);

  return v20;
}

id HistoryMultiPointRoute.init(navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(char a1, void *a2, __int16 a3, void *a4, uint64_t a5, unint64_t a6, __int16 a7, uint64_t a8, uint64_t a9)
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDB0F2A8;
  if (a6 >> 60 != 15)
  {
    sub_1B629119C(a5, a6);
    v16 = sub_1B63BE904();
    sub_1B6284F64(a5, a6);
    if (a9)
    {
      goto LABEL_5;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  if (!a9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v17 = sub_1B63BEBC4();

LABEL_8:
  LOWORD(v20) = a7;
  v18 = [v22 initWithStore:v15 navigationInterrupted:a1 & 1 requiredCharge:a2 routeProgressWaypointIndex:a3 routeRequestStorage:a4 sharedETAData:v16 type:v20 vehicleIdentifier:v17];
  sub_1B6284F64(a5, a6);

  return v18;
}

char *HistoryMultiPointRoute.__allocating_init(store:navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(void *a1, char a2, void *a3, __int16 a4, void *a5, uint64_t a6, unint64_t a7, __int16 a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = [objc_allocWithZone(v11) initWithStore_];
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v19 = *&v17[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v20 = v17;
  [v19 lock];
  v55 = v18;
  v49 = *&v17[v18];
  v47 = a2 & 1;
  v20[OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted] = a2;
  v21 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge];
  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge] = a3;
  v48 = a3;

  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex] = a4;
  if (a5 && (v22 = [a5 data]) != 0)
  {
    v23 = v22;
    v24 = sub_1B63BE924();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xF000000000000000;
  }

  v27 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage];
  v28 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage];
  v29 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8];
  *v27 = v24;
  v27[1] = v26;
  sub_1B6284F64(v28, v29);
  v30 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData];
  v31 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData];
  v32 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8];
  *v30 = a6;
  v30[1] = a7;
  sub_1B6291034(a6, a7);
  sub_1B6284F64(v31, v32);
  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__type] = a8;
  v33 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier];
  v34 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier + 8];
  *v33 = a9;
  *(v33 + 1) = a10;

  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  *(v35 + 24) = a3;
  *(v35 + 32) = a4;
  *(v35 + 40) = a5;
  *(v35 + 48) = a6;
  *(v35 + 56) = a7;
  *(v35 + 64) = a8;
  *(v35 + 72) = a9;
  *(v35 + 80) = a10;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v36 = *&v17[v55];
  v37 = v48;
  sub_1B6291034(a6, a7);
  v38 = a5;
  if (sub_1B63BEF24())
  {
    v53 = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1B62F903C;
    *(v39 + 24) = v35;
    v40 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v41 = *&v20[v40];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[v40] = v41;
    v51 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_1B629A8E8(0, v41[2] + 1, 1, v41);
      *&v20[v40] = v41;
    }

    v44 = v41[2];
    v43 = v41[3];
    if (v44 >= v43 >> 1)
    {
      v41 = sub_1B629A8E8((v43 > 1), v44 + 1, 1, v41);
    }

    v41[2] = v44 + 1;
    v45 = &v41[2 * v44];
    v45[4] = sub_1B62B8188;
    v45[5] = v39;
    *&v20[v40] = v41;
    swift_endAccess();

    v38 = v51;
    v37 = v53;
  }

  else
  {
  }

  [*&v17[v55] unlock];
  sub_1B6284F64(a6, a7);

  return v20;
}

char *HistoryMultiPointRoute.init(store:navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(void *a1, char a2, void *a3, __int16 a4, void *a5, uint64_t a6, unint64_t a7, __int16 a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = [v11 initWithStore_];
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v19 = *&v17[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v20 = v17;
  [v19 lock];
  v55 = v18;
  v51 = *&v17[v18];
  v47 = a2 & 1;
  v20[OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted] = a2;
  v21 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge];
  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge] = a3;
  v48 = a3;

  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex] = a4;
  if (a5 && (v22 = [a5 data]) != 0)
  {
    v23 = v22;
    v24 = sub_1B63BE924();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xF000000000000000;
  }

  v27 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage];
  v28 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage];
  v29 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8];
  *v27 = v24;
  v27[1] = v26;
  sub_1B6284F64(v28, v29);
  v30 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData];
  v31 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData];
  v32 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8];
  *v30 = a6;
  v30[1] = a7;
  sub_1B6291034(a6, a7);
  sub_1B6284F64(v31, v32);
  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__type] = a8;
  v33 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier];
  v34 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier + 8];
  *v33 = a9;
  *(v33 + 1) = a10;

  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  *(v35 + 24) = a3;
  *(v35 + 32) = a4;
  *(v35 + 40) = a5;
  *(v35 + 48) = a6;
  *(v35 + 56) = a7;
  *(v35 + 64) = a8;
  *(v35 + 72) = a9;
  *(v35 + 80) = a10;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v36 = *&v17[v55];
  v37 = v48;
  sub_1B6291034(a6, a7);
  v38 = a5;
  if (sub_1B63BEF24())
  {
    v53 = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1B62F9CC4;
    *(v39 + 24) = v35;
    v40 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v41 = *&v20[v40];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[v40] = v41;
    v50 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_1B629A8E8(0, v41[2] + 1, 1, v41);
      *&v20[v40] = v41;
    }

    v44 = v41[2];
    v43 = v41[3];
    if (v44 >= v43 >> 1)
    {
      v41 = sub_1B629A8E8((v43 > 1), v44 + 1, 1, v41);
    }

    v41[2] = v44 + 1;
    v45 = &v41[2 * v44];
    v45[4] = sub_1B62B9488;
    v45[5] = v39;
    *&v20[v40] = v41;
    swift_endAccess();

    v37 = v53;
    v38 = v50;
  }

  else
  {
  }

  [*&v17[v55] unlock];
  sub_1B6284F64(a6, a7);

  return v20;
}

void sub_1B62F5D84(uint64_t a1, void *a2, char a3, uint64_t a4, __int16 a5, void *a6, uint64_t a7, unint64_t a8, __int16 a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    v19 = a2;
    [v18 setNavigationInterrupted_];
    [v18 setRequiredCharge_];
    [v18 setRouteProgressWaypointIndex_];
    if (a6)
    {
      v20 = [a6 data];
      if (v20)
      {
        v21 = v20;
        v22 = sub_1B63BE924();
        v24 = v23;

        a6 = sub_1B63BE904();
        sub_1B628BAC0(v22, v24);
      }

      else
      {
        a6 = 0;
      }
    }

    [v18 setRouteRequestStorage_];

    if (a8 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_1B63BE904();
    }

    [v18 setSharedETAData_];

    [v18 setType_];
    if (a11)
    {
      v26 = sub_1B63BEBC4();
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    [v18 setVehicleIdentifier_];
  }
}

uint64_t sub_1B62F6190()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted);
  [v1 unlock];
  return v2;
}

id sub_1B62F623C(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F9084;
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

id sub_1B62F63E8(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setNavigationInterrupted_];
  }

  return result;
}

id (*sub_1B62F644C(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62F64D0;
}

uint64_t sub_1B62F653C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge);
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
  *(v19 + 16) = sub_1B62F908C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B8284;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_11;
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
    v14 = sub_1B62F908C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62F68FC(void *a1)
{
  sub_1B62F9340(a1);
}

void sub_1B62F6934(void *a1, uint64_t a2, void **a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v14];
  v5 = v14[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7)
    {
      v9 = [v7 requiredCharge];

      if (v9)
      {
        v10 = *a3;
        *a3 = v9;
      }
    }

    else
    {
    }
  }

  else
  {
    v11 = v14[0];
    v12 = sub_1B63BE824();

    swift_willThrow();
  }

  v13 = *MEMORY[0x1E69E9840];
}

id sub_1B62F6A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setRequiredCharge_];
  }

  return result;
}

void (*sub_1B62F6AA4(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62F653C();
  return sub_1B62F6AEC;
}

void sub_1B62F6AEC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v5 = *a1;
  if (a2)
  {
    v3 = v5;
    sub_1B62F9340(v5);

    v4 = v3;
  }

  else
  {
    sub_1B62F9340(*a1);
    v4 = v5;
  }
}

id sub_1B62F6BC4(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F9500;
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

id (*sub_1B62F6D70(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62F6DF4;
}

uint64_t sub_1B62F6E60()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
  v5 = *(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8);
  v29 = v4;
  v30 = v5;
  sub_1B6291034(v4, v5);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v5 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      v8 = objc_allocWithZone(MEMORY[0x1E69A25C0]);
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
  *(v21 + 16) = sub_1B62F9524;
  *(v21 + 24) = v20;
  v28[4] = sub_1B62B9478;
  v28[5] = v21;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1B62B1294;
  v28[3] = &block_descriptor_41_2;
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
      v26 = objc_allocWithZone(MEMORY[0x1E69A25C0]);
      sub_1B629119C(v25, v24);
      v27 = sub_1B63BE904();
      v10 = [v26 initWithData_];

      sub_1B6284F64(v25, v24);
      sub_1B6295C20(v13);
    }

    v16 = sub_1B62F9524;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B62F7354(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v2 lock];
  sub_1B62F73CC(v2, a1, v1);
  [v2 unlock];
}

uint64_t sub_1B62F73CC(uint64_t a1, void *a2, uint64_t a3)
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

    v13 = (a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
    v14 = *(a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
    v15 = *(a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8);
    *v13 = v8;
    v13[1] = v10;
    sub_1B6284F64(v14, v15);
  }

  else
  {
    v11 = *(a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
    v12 = *(a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8);
    *(a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage) = xmmword_1B63C3E40;
    sub_1B6284F64(v11, v12);
    v5 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v17 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v18 = v5;
  if (sub_1B63BEF24())
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B62F9C98;
    *(v19 + 24) = v16;
    v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v21 = *(a3 + v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + v20) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1B629A8E8(0, v21[2] + 1, 1, v21);
      *(a3 + v20) = v21;
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
    *(a3 + v20) = v21;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_1B62F7614(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    if (a3)
    {
      v21 = v5;
      v20 = a2;
      v19 = a3;
      [v19 copy];
      sub_1B63BEF84();
      swift_unknownObjectRelease();
      sub_1B6281C60(0, &qword_1EDB0E790, 0x1E69A25C0);
      swift_dynamicCast();
      v6 = [v22 waypointsCount];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        while (1)
        {
          v9 = [v22 waypointsAtIndex_];
          if (!v9)
          {
            break;
          }

          v10 = v9;
          ++v8;
          v11 = [v9 mapItemStorage];
          v12 = [objc_opt_self() mapItemStorageForGEOMapItem:v11 forUseType:3];

          [v10 setMapItemStorage_];
          if (v7 == v8)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_7:
        v13 = [v22 data];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1B63BE924();
          v17 = v16;

          v18 = sub_1B63BE904();
          sub_1B628BAC0(v15, v17);
        }

        else
        {
          v18 = 0;
        }

        [v21 setRouteRequestStorage_];
      }
    }

    else
    {

      [v5 setRouteRequestStorage_];
    }
  }
}

void (*sub_1B62F785C(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62F6E60();
  return sub_1B62F78A4;
}

void sub_1B62F78A4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62F73CC(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62F73CC(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

uint64_t sub_1B62F79F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData);
  v5 = *(v1 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8);
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
  *(v18 + 16) = sub_1B62F954C;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_51_3;
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
    v8 = sub_1B62F954C;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B62F7E44(uint64_t a1, unint64_t a2)
{
  sub_1B62F9574(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62F7E8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1B6291034(*a1, v3);
  sub_1B62F9574(v2, v3);

  return sub_1B6284F64(v2, v3);
}

void sub_1B62F7EE8(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v21];
  v7 = v21[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
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

void sub_1B62F800C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
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
    [v7 setSharedETAData_];
  }
}

uint64_t (*sub_1B62F80CC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62F79F8();
  a1[1] = v3;
  return sub_1B62F8114;
}

uint64_t sub_1B62F8114(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1B6291034(v5, v3);
    sub_1B62F9574(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62F9574(v5, v3);
  }

  return sub_1B6284F64(v2, v3);
}

id sub_1B62F81F8(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__type) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F9754;
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

id sub_1B62F83A4(uint64_t a1, uint64_t a2, __int16 a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62F8414(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMultiPointRoute__type);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62F8498;
}

uint64_t sub_1B62F8538()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier);
  v4 = *(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier + 8);
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
  *(v18 + 16) = sub_1B62F9778;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_69_0;
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

    v13 = sub_1B62F9778;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62F8944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier);
  v8 = *(v3 + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62F9784;
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

void sub_1B62F8B0C(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 vehicleIdentifier]) != 0)
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

void sub_1B62F8C30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
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
    [v7 setVehicleIdentifier_];
  }
}

id (*sub_1B62F8CE8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B62F8538();
  a1[1] = v3;
  return sub_1B62F8D30;
}

id sub_1B62F8D30(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B62F8944(*a1, v2);
  }

  v5 = a1[1];

  sub_1B62F8944(v3, v2);
}

void *sub_1B62F8DA4(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted] = 0;
  *&v9[OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge] = 0;
  *&v9[OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex] = 0;
  *&v9[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryMultiPointRoute__type] = 0;
  v10 = &v9[OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier];
  *v10 = 0;
  v10[1] = 0;
  return sub_1B62F0450(a1, a2, a3, a4);
}

uint64_t sub_1B62F8F20()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage), *(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8));
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData), *(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8));
  v1 = *(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier + 8);
}

id HistoryMultiPointRoute.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryMultiPointRoute();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B62F9098(void *a1, char a2)
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

  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = a1;
    v13 = [v11 navigationInterrupted];
    *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted) = v13;
    if (a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = [v11 requiredCharge];
    }

    v15 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge);
    *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge) = v14;

    v16 = [v11 routeProgressWaypointIndex];
    *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex) = v16;
    if (a2)
    {
      v17 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
      v18 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8);
      *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage) = xmmword_1B63C3E40;
      sub_1B6284F64(v17, v18);
    }

    else
    {
      v19 = [v11 routeRequestStorage];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1B63BE924();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xF000000000000000;
      }

      v24 = (v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
      v25 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
      v26 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8);
      *v24 = v21;
      v24[1] = v23;
      sub_1B6284F64(v25, v26);
      v27 = [v11 sharedETAData];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1B63BE924();
        v31 = v30;

        goto LABEL_16;
      }
    }

    v29 = 0;
    v31 = 0xF000000000000000;
LABEL_16:
    v32 = (v2 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData);
    v33 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData);
    v34 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8);
    *v32 = v29;
    v32[1] = v31;
    sub_1B6284F64(v33, v34);
    v35 = [v11 type];
    *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__type) = v35;
    if ((a2 & 1) != 0 || (v36 = [v11 vehicleIdentifier]) == 0)
    {

      v38 = 0;
      v40 = 0;
    }

    else
    {
      v37 = v36;
      v38 = sub_1B63BEBD4();
      v40 = v39;
    }

    v41 = (v2 + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier);
    v42 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier + 8);
    *v41 = v38;
    v41[1] = v40;
  }

  return result;
}

id sub_1B62F9340(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge);
  *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62F9CA0;
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

id sub_1B62F9574(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData);
  v8 = *(v3 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData);
  v9 = *(v3 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B62F9C90;
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

id HistoryPlaceItem.__allocating_init(latitude:longitude:mapItemLastRefreshed:muid:supersededSearchId:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v30 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  v19 = objc_allocWithZone(v6);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDB0F2A8;
  v29 = a3;
  sub_1B628C510(a3, v18, &unk_1EB943210, &unk_1B63C3F50);
  v21 = sub_1B63BE994();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v18, 1, v21) != 1)
  {
    v23 = sub_1B63BE954();
    (*(v22 + 8))(v18, v21);
  }

  sub_1B628C510(v30, v14, &unk_1EB943680, qword_1B63C4070);
  v24 = sub_1B63BEA04();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v14, 1, v24) != 1)
  {
    v26 = sub_1B63BE9C4();
    (*(v25 + 8))(v14, v24);
  }

  v27 = [v19 initWithStore:v20 latitude:a1 longitude:a2 mapItemLastRefreshed:v23 muid:a4 supersededSearchId:v26];

  sub_1B6284EAC(v30, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v29, &unk_1EB943210, &unk_1B63C3F50);
  return v27;
}

id HistoryPlaceItem.init(latitude:longitude:mapItemLastRefreshed:muid:supersededSearchId:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_1B62FFC80(a1, a2, a3, a4, a5);

  return v8;
}

char *HistoryPlaceItem.__allocating_init(store:latitude:longitude:mapItemLastRefreshed:muid:supersededSearchId:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v70 = a5;
  v71 = a6;
  v69 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v66 = *(v11 - 8);
  v65 = *(v66 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v64 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v59 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = objc_allocWithZone(v7);
  v67 = a1;
  v22 = [v21 initWithStore_];
  v56 = v22;
  v23 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v24 = *&v22[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v25 = v22;
  [v24 lock];
  v63 = *&v22[v23];
  v26 = *&v25[OBJC_IVAR___MSHistoryPlaceItem__latitude];
  v58 = a2;
  *&v25[OBJC_IVAR___MSHistoryPlaceItem__latitude] = a2;
  v61 = a2;

  v27 = *&v25[OBJC_IVAR___MSHistoryPlaceItem__longitude];
  v28 = v69;
  *&v25[OBJC_IVAR___MSHistoryPlaceItem__longitude] = v69;
  v60 = v28;

  sub_1B628C510(a4, v20, &unk_1EB943210, &unk_1B63C3F50);
  v29 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v20, &v25[v29], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v30 = *&v25[OBJC_IVAR___MSHistoryPlaceItem__muid];
  v31 = v70;
  *&v25[OBJC_IVAR___MSHistoryPlaceItem__muid] = v70;
  v57 = v31;

  v32 = v71;
  sub_1B628C510(v71, v15, &unk_1EB943680, qword_1B63C4070);
  v33 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  swift_beginAccess();
  sub_1B6282DFC(v15, &v25[v33], &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  v68 = a4;
  v34 = v59;
  sub_1B628C510(a4, v59, &unk_1EB943210, &unk_1B63C3F50);
  v35 = v32;
  v36 = v64;
  sub_1B628C510(v35, v64, &unk_1EB943680, qword_1B63C4070);
  v37 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v38 = (v17 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v66 + 80) + v38 + 8) & ~*(v66 + 80);
  v40 = swift_allocObject();
  v41 = v69;
  *(v40 + 16) = v58;
  *(v40 + 24) = v41;
  sub_1B628A128(v34, v40 + v37, &unk_1EB943210, &unk_1B63C3F50);
  *(v40 + v38) = v70;
  sub_1B628A128(v36, v40 + v39, &unk_1EB943680, qword_1B63C4070);
  sub_1B6282B88();
  v42 = v23;
  v43 = v56;
  v44 = *&v56[v23];
  v45 = v61;
  v46 = v60;
  v47 = v57;
  if (sub_1B63BEF24())
  {
    v69 = v46;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1B62FFF48;
    *(v48 + 24) = v40;
    v49 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v50 = *&v25[v49];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25[v49] = v50;
    v70 = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_1B629A8E8(0, v50[2] + 1, 1, v50);
      *&v25[v49] = v50;
    }

    v53 = v50[2];
    v52 = v50[3];
    if (v53 >= v52 >> 1)
    {
      v50 = sub_1B629A8E8((v52 > 1), v53 + 1, 1, v50);
    }

    v50[2] = v53 + 1;
    v54 = &v50[2 * v53];
    v54[4] = sub_1B62B8188;
    v54[5] = v48;
    *&v25[v49] = v50;
    swift_endAccess();
    v46 = v69;
    v45 = v70;
  }

  [*&v43[v42] unlock];

  sub_1B6284EAC(v71, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v68, &unk_1EB943210, &unk_1B63C3F50);

  return v25;
}

char *HistoryPlaceItem.init(store:latitude:longitude:mapItemLastRefreshed:muid:supersededSearchId:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v67 = a5;
  v68 = a6;
  v69 = a4;
  v66 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v64 = *(v11 - 8);
  v12 = *(v64 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v61 = *(v16 - 8);
  v17 = *(v61 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v57 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v65 = a1;
  v21 = [v7 initWithStore_];
  v58 = v21;
  v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v23 = *&v21[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v24 = v21;
  [v23 lock];
  v63 = *&v21[v22];
  v25 = *&v24[OBJC_IVAR___MSHistoryPlaceItem__latitude];
  v26 = v66;
  *&v24[OBJC_IVAR___MSHistoryPlaceItem__latitude] = v66;
  v60 = v26;

  v27 = *&v24[OBJC_IVAR___MSHistoryPlaceItem__longitude];
  v56 = a3;
  *&v24[OBJC_IVAR___MSHistoryPlaceItem__longitude] = a3;
  v59 = a3;

  sub_1B628C510(a4, v20, &unk_1EB943210, &unk_1B63C3F50);
  v28 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v20, &v24[v28], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v29 = *&v24[OBJC_IVAR___MSHistoryPlaceItem__muid];
  v30 = v67;
  *&v24[OBJC_IVAR___MSHistoryPlaceItem__muid] = v67;
  v55 = v30;

  v31 = v68;
  sub_1B628C510(v68, v15, &unk_1EB943680, qword_1B63C4070);
  v32 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  swift_beginAccess();
  sub_1B6282DFC(v15, &v24[v32], &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  v33 = v57;
  sub_1B628C510(v69, v57, &unk_1EB943210, &unk_1B63C3F50);
  v34 = v31;
  v35 = v62;
  sub_1B628C510(v34, v62, &unk_1EB943680, qword_1B63C4070);
  v36 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v37 = (v17 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (*(v64 + 80) + v37 + 8) & ~*(v64 + 80);
  v39 = swift_allocObject();
  v40 = v56;
  *(v39 + 16) = v66;
  *(v39 + 24) = v40;
  sub_1B628A128(v33, v39 + v36, &unk_1EB943210, &unk_1B63C3F50);
  *(v39 + v37) = v67;
  sub_1B628A128(v35, v39 + v38, &unk_1EB943680, qword_1B63C4070);
  sub_1B6282B88();
  v41 = v22;
  v42 = v58;
  v43 = *&v58[v22];
  v44 = v60;
  v45 = v59;
  v46 = v55;
  if (sub_1B63BEF24())
  {
    v66 = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1B6300C88;
    *(v47 + 24) = v39;
    v48 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v49 = *&v24[v48];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v24[v48] = v49;
    v67 = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_1B629A8E8(0, v49[2] + 1, 1, v49);
      *&v24[v48] = v49;
    }

    v52 = v49[2];
    v51 = v49[3];
    if (v52 >= v51 >> 1)
    {
      v49 = sub_1B629A8E8((v51 > 1), v52 + 1, 1, v49);
    }

    v49[2] = v52 + 1;
    v53 = &v49[2 * v52];
    v53[4] = sub_1B62B9488;
    v53[5] = v47;
    *&v24[v48] = v49;
    swift_endAccess();
    v45 = v66;
    v44 = v67;
  }

  [*&v42[v41] unlock];

  sub_1B6284EAC(v68, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v69, &unk_1EB943210, &unk_1B63C3F50);

  return v24;
}

void sub_1B62FAD20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v30 - v19;
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v23 = a2;
    [v22 setLatitude_];
    [v22 setLongitude_];
    sub_1B628C510(a5, v20, &unk_1EB943210, &unk_1B63C3F50);
    v24 = sub_1B63BE994();
    v25 = *(v24 - 8);
    v26 = 0;
    if ((*(v25 + 48))(v20, 1, v24) != 1)
    {
      v26 = sub_1B63BE954();
      (*(v25 + 8))(v20, v24);
    }

    [v22 setMapItemLastRefreshed_];

    [v22 setMuid_];
    sub_1B628C510(a7, v16, &unk_1EB943680, qword_1B63C4070);
    v27 = sub_1B63BEA04();
    v28 = *(v27 - 8);
    v29 = 0;
    if ((*(v28 + 48))(v16, 1, v27) != 1)
    {
      v29 = sub_1B63BE9C4();
      (*(v28 + 8))(v16, v27);
    }

    [v22 setSupersededSearchId_];
  }
}

uint64_t sub_1B62FB2CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryPlaceItem__latitude);
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
  *(v19 + 16) = sub_1B630005C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B8284;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_12;
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
    v14 = sub_1B630005C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62FB68C(void *a1)
{
  sub_1B6300084(a1);
}

void (*sub_1B62FB6C4(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62FB2CC();
  return sub_1B62FB70C;
}

uint64_t sub_1B62FB768()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryPlaceItem__longitude);
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
  *(v19 + 16) = sub_1B6300234;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_27_0;
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
    v14 = sub_1B6300234;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62FBB28(void *a1)
{
  sub_1B630025C(a1);
}

void (*sub_1B62FBB60(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62FB768();
  return sub_1B62FBBA8;
}

void sub_1B62FBBC0(id *a1, char a2, void (*a3)(id))
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

uint64_t sub_1B62FBD68@<X0>(uint64_t a1@<X8>)
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
  v13 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
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
  *(v26 + 16) = sub_1B630040C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_38_0;
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

uint64_t sub_1B62FC368(uint64_t a1)
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
  v12 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
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
    *(v15 + 16) = sub_1B6300418;
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

void sub_1B62FC638(void *a1, uint64_t a2, uint64_t a3)
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
    type metadata accessor for MapsSyncManagedHistoryPlaceItem();
    v17 = swift_dynamicCastClass();
    v18 = v15;
    if (v17 && (v19 = [v17 mapItemLastRefreshed]) != 0)
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

void sub_1B62FC868(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
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

    [v10 setMapItemLastRefreshed_];
  }
}

void (*sub_1B62FC9D4(void *a1))(uint64_t *a1, char a2)
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
  sub_1B62FBD68(v4);
  return sub_1B62FCA90;
}

uint64_t sub_1B62FCAFC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryPlaceItem__muid);
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
  *(v19 + 16) = sub_1B6300440;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_55_0;
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
    v14 = sub_1B6300440;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62FCEBC(void *a1)
{
  sub_1B6300468(a1);
}

void sub_1B62FCEF4(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v16];
  v7 = v16[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistoryPlaceItem();
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

id sub_1B62FD008(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B62FD078(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62FCAFC();
  return sub_1B62FD0C0;
}

uint64_t sub_1B62FD200@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BEA04();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943680, qword_1B63C4070);
  sub_1B628C510(v2 + v13, v9, &unk_1EB943680, qword_1B63C4070);
  [v12 unlock];
  if (*(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
  }

  sub_1B628C510(v9, v7, &unk_1EB943680, qword_1B63C4070);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943680, qword_1B63C4070);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
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
    return sub_1B6284EAC(v9, &unk_1EB943680, qword_1B63C4070);
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
  *(v26 + 16) = sub_1B6300618;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_66;
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
    sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
  }

  return result;
}

uint64_t sub_1B62FD800(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943680, qword_1B63C4070);
  v12 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943680, qword_1B63C4070);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943680, qword_1B63C4070);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B6300624;
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
  return sub_1B6284EAC(a1, &unk_1EB943680, qword_1B63C4070);
}

uint64_t sub_1B62FDAD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18 - v14;
  sub_1B628C510(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

void sub_1B62FDB7C(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B63BEA04();
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
    type metadata accessor for MapsSyncManagedHistoryPlaceItem();
    v17 = swift_dynamicCastClass();
    v18 = v15;
    if (v17 && (v19 = [v17 supersededSearchId]) != 0)
    {
      v20 = v19;
      sub_1B63BE9E4();

      v21 = *(v7 + 32);
      v21(v13, v11, v6);
      sub_1B6284EAC(a3, &unk_1EB943680, qword_1B63C4070);
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

void sub_1B62FDDAC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    sub_1B628C510(a3, v8, &unk_1EB943680, qword_1B63C4070);
    v11 = sub_1B63BEA04();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    v14 = a2;
    v15 = 0;
    if (v13 != 1)
    {
      v15 = sub_1B63BE9C4();
      (*(v12 + 8))(v8, v11);
    }

    [v10 setSupersededSearchId_];
  }
}

void (*sub_1B62FDF18(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8) + 64);
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
  sub_1B62FD200(v4);
  return sub_1B62FDFD4;
}

void sub_1B62FDFFC(uint64_t *a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  if (a2)
  {
    sub_1B628C510(v7, v6, a4, a5);
    a3(v6);
    sub_1B6284EAC(v7, a4, a5);
  }

  else
  {
    a3(v7);
  }

  free(v7);

  free(v6);
}

uint64_t sub_1B62FE0DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage);
  v4 = *(v0 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage + 8);
  v34 = v5;
  v35 = v4;
  sub_1B6291034(v5, v4);
  sub_1B6284F64(0, 0xF000000000000000);
  v6 = [v3 unlock];
  if (*(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v4 >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      v8 = objc_allocWithZone(MEMORY[0x1E69A21E0]);
      sub_1B629119C(v5, v4);
      v9 = sub_1B63BE904();
      v10 = [v8 initWithData_];

      if (v10)
      {
        v11 = v10;
        v12 = sub_1B62D6660(v1, v10);

        sub_1B6284F64(v5, v4);
LABEL_21:
        v27 = 0;
LABEL_22:
        sub_1B6284F64(v34, v35);
        sub_1B62B1F7C(v27);
        return v12;
      }

      sub_1B6284F64(v5, v4);
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  if ((*(ObjectType + 592))(v6))
  {

LABEL_11:
    v14 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_13;
  }

  v13 = sub_1B63BF364();

  if (v13)
  {
    goto LABEL_11;
  }

  v14 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_13:

  v15 = sub_1B629409C();
  v17 = v16;

  if (v17)
  {
    v33[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v15);
    goto LABEL_20;
  }

  [v3 lock];
  v18 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v18;
  [v3 unlock];
  if (!v18)
  {
    sub_1B6295C20(v15);
    v12 = 0;
    v27 = 0;
    goto LABEL_22;
  }

  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v19;
  v20[4] = &v34;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B63006E4;
  *(v21 + 24) = v20;
  v33[4] = sub_1B62B9478;
  v33[5] = v21;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 1107296256;
  v33[2] = sub_1B62B1294;
  v33[3] = &block_descriptor_83;
  v22 = _Block_copy(v33);
  v23 = v19;

  sub_1B62B1FC0(v15);

  [v15 performBlockAndWait_];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v26 = v35;
    if (v35 >> 60 == 15)
    {
      sub_1B6295C20(v15);
    }

    else
    {
      v28 = v34;
      v29 = objc_allocWithZone(MEMORY[0x1E69A21E0]);
      sub_1B629119C(v28, v26);
      v30 = sub_1B63BE904();
      v31 = [v29 initWithData_];

      if (v31)
      {
        v32 = v31;
        v12 = sub_1B62D6660(v1, v31);

        sub_1B6284F64(v28, v26);
        sub_1B6295C20(v15);
LABEL_28:
        v27 = sub_1B63006E4;
        goto LABEL_22;
      }

      sub_1B6295C20(v15);

      sub_1B6284F64(v28, v26);
    }

    v12 = 0;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_1B62FE648(uint64_t (**a1)(char *, uint64_t))
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B62FE808(v2, a1, v1);
  [v2 unlock];
}

void sub_1B62FE6C0(void *a1, uint64_t a2, uint64_t *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v20];
  v5 = v20[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryPlaceItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 mapItem]) != 0 && (v10 = v9, v11 = objc_msgSend(v9, sel_mapItemStorage), v10, v11))
    {
      v12 = sub_1B63BE924();
      v14 = v13;

      v15 = *a3;
      v16 = a3[1];
      *a3 = v12;
      a3[1] = v14;
      sub_1B6284F64(v15, v16);
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

uint64_t sub_1B62FE808(uint64_t a1, uint64_t (**a2)(char *, uint64_t), char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v60 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  sub_1B63BE984();
  v64 = a1;
  if (a2)
  {
    v16 = v15;
    v62 = a2;
    v17 = a2;
    [v17 coordinate];
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v20 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__latitude];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__latitude] = v19;

    [v17 coordinate];
    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v23 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__longitude];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__longitude] = v22;

    v24 = [v17 _muid];
    v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v26 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__muid];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__muid] = v25;

    v27 = [v17 data];
    v61 = v17;
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

    v40 = &a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage];
    v41 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage];
    v42 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage + 8];
    *v40 = v29;
    v40[1] = v31;
    sub_1B6284F64(v41, v42);
    v38 = *(v11 + 16);
    v38(v9, v16, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v43 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
    swift_beginAccess();
    v44 = &a3[v43];
    v15 = v16;
    sub_1B6282DFC(v9, v44, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v39 = v61;
    a2 = v62;
  }

  else
  {
    v32 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__latitude];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__latitude] = 0;

    v33 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__longitude];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__longitude] = 0;

    v34 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__muid];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__muid] = 0;

    v35 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage];
    v36 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v35, v36);
    (*(v11 + 56))(v9, 1, 1, v10);
    v37 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v9, &a3[v37], &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v38 = *(v11 + 16);
    v39 = 0;
  }

  v45 = v63;
  v38(v63, v15, v10);
  v46 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v47 = (v12 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = a2;
  v62 = v11;
  (*(v11 + 32))(v48 + v46, v45, v10);
  *(v48 + v47) = a3;
  sub_1B6282B88();
  v49 = *&a3[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v50 = v39;
  v51 = a3;
  if (sub_1B63BEF24())
  {
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1B6300B40;
    *(v52 + 24) = v48;
    v53 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v54 = *&v51[v53];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v51[v53] = v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v54 = sub_1B629A8E8(0, v54[2] + 1, 1, v54);
      *&v51[v53] = v54;
    }

    v57 = v54[2];
    v56 = v54[3];
    if (v57 >= v56 >> 1)
    {
      v54 = sub_1B629A8E8((v56 > 1), v57 + 1, 1, v54);
    }

    v54[2] = v57 + 1;
    v58 = &v54[2 * v57];
    v58[4] = sub_1B62B9488;
    v58[5] = v52;
    *&v51[v53] = v54;
    swift_endAccess();
  }

  return v62[1](v15, v10);
}

void sub_1B62FED8C(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (!a3)
  {
    v36 = a2;
    v37 = [v6 mapItem];
    if (v37)
    {
      v38 = v37;
      [v37 setMapItemStorage_];
    }

    [v6 setLatitude_];
    [v6 setLongitude_];
    [v6 setMuid_];
    v42 = v36;
    v39 = sub_1B63BE954();
    [v6 setModificationTime_];

    [v6 setMapItemLastRefreshed_];
    goto LABEL_21;
  }

  ObjCClassFromObject = swift_getObjCClassFromObject();
  v42 = a2;
  v8 = a3;
  v9 = [ObjCClassFromObject strippedMapItemWith_];
  v10 = [v6 managedObjectContext];
  if (v10)
  {
    v11 = v10;
    [v9 coordinate];
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v6 setLatitude_];

    [v9 coordinate];
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v6 setLongitude_];

    v16 = [v9 _muid];
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    [v6 setMuid_];

    v18 = sub_1B63BE954();
    [v6 setMapItemLastRefreshed_];

    v19 = [v6 mapItem];
    if (!v19)
    {
      type metadata accessor for MapsSyncManagedMixinMapItem();
      v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v6 setMapItem_];

      v21 = [v6 mapItem];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1B63BE954();
        [v22 setCreateTime_];
      }

      v24 = [v6 mapItem];
      if (!v24)
      {
        goto LABEL_10;
      }

      v25 = v24;
      v26 = sub_1B63BE954();
      [v25 setModificationTime_];

      v19 = v26;
    }

LABEL_10:
    v27 = [v6 mapItem];
    if (v27)
    {
      v28 = v27;
      [v9 coordinate];
      [v28 setLatitude_];
      [v9 coordinate];
      [v28 setLongitude_];
      v30 = [v9 data];
      if (v30)
      {
        v31 = v30;
        v32 = sub_1B63BE924();
        v34 = v33;

        v35 = sub_1B63BE904();
        sub_1B628BAC0(v32, v34);
      }

      else
      {
        v35 = 0;
      }

      [v28 setMapItemStorage_];

      v41 = sub_1B63BE954();
      [v28 setModificationTime_];
    }

LABEL_21:
    v40 = v42;
    goto LABEL_22;
  }

  v40 = v9;
LABEL_22:
}

void (*sub_1B62FF22C(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B62FE0DC();
  return sub_1B62FF274;
}

void sub_1B62FF274(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62FE808(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62FE808(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

void *sub_1B62FF344(void *a1, void *a2, int a3, int a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR___MSHistoryPlaceItem__latitude] = 0;
  *&v10[OBJC_IVAR___MSHistoryPlaceItem__longitude] = 0;
  v11 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
  v12 = sub_1B63BE994();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[OBJC_IVAR___MSHistoryPlaceItem__muid] = 0;
  v13 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  v14 = sub_1B63BEA04();
  (*(*(v14 - 8) + 56))(&v10[v13], 1, 1, v14);
  *&v10[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage] = xmmword_1B63C3E40;
  return sub_1B62F0450(a1, a2, a3, a4);
}

uint64_t sub_1B62FF598()
{
  sub_1B6284EAC(v0 + OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed, &unk_1EB943210, &unk_1B63C3F50);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId, &unk_1EB943680, qword_1B63C4070);
  v1 = *(v0 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage);
  v2 = *(v0 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage + 8);

  return sub_1B6284F64(v1, v2);
}

id HistoryPlaceItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryPlaceItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B62FF724(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = a1;
    [v20 position];
    *(v2 + OBJC_IVAR___MSHistoryItem__position) = v22;
    v23 = [v20 positionIndex];

    *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = v23;
  }

  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v25 = result;
    if (a2)
    {
      v26 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude) = 0;
      v27 = a1;

      v28 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude) = 0;

      v29 = sub_1B63BE994();
      (*(*(v29 - 8) + 56))(v18, 1, 1, v29);
    }

    else
    {
      v30 = a1;
      v31 = [v25 latitude];
      v32 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude) = v31;

      v33 = [v25 longitude];
      v34 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude) = v33;

      v35 = [v25 mapItemLastRefreshed];
      if (v35)
      {
        v36 = v35;
        sub_1B63BE974();

        v37 = sub_1B63BE994();
        (*(*(v37 - 8) + 56))(v16, 0, 1, v37);
      }

      else
      {
        v38 = sub_1B63BE994();
        (*(*(v38 - 8) + 56))(v16, 1, 1, v38);
      }

      sub_1B628A128(v16, v18, &unk_1EB943210, &unk_1B63C3F50);
    }

    v39 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v18, v2 + v39, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if (a2)
    {
      v40 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid) = 0;

      v41 = sub_1B63BEA04();
      (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
    }

    else
    {
      v42 = [v25 muid];
      v43 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid) = v42;

      v44 = [v25 supersededSearchId];
      if (v44)
      {
        v45 = v44;
        sub_1B63BE9E4();

        v46 = 0;
      }

      else
      {
        v46 = 1;
      }

      v47 = sub_1B63BEA04();
      (*(*(v47 - 8) + 56))(v9, v46, 1, v47);
      sub_1B628A128(v9, v11, &unk_1EB943680, qword_1B63C4070);
    }

    v48 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
    swift_beginAccess();
    sub_1B6282DFC(v11, v2 + v48, &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    if ((a2 & 1) == 0 && (v49 = [v25 mapItem]) != 0 && (v50 = v49, v51 = objc_msgSend(v49, sel_mapItemStorage), v50, v51))
    {
      v52 = sub_1B63BE924();
      v54 = v53;
    }

    else
    {

      v52 = 0;
      v54 = 0xF000000000000000;
    }

    v55 = (v2 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage);
    v56 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage);
    v57 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage + 8);
    *v55 = v52;
    v55[1] = v54;
    return sub_1B6284F64(v56, v57);
  }

  return result;
}

id sub_1B62FFC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a2;
  v28 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - v16;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDB0F2A8;
  sub_1B628C510(a3, v17, &unk_1EB943210, &unk_1B63C3F50);
  v19 = sub_1B63BE994();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    v21 = sub_1B63BE954();
    (*(v20 + 8))(v17, v19);
  }

  sub_1B628C510(a5, v13, &unk_1EB943680, qword_1B63C4070);
  v22 = sub_1B63BEA04();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v13, 1, v22) != 1)
  {
    v24 = sub_1B63BE9C4();
    (*(v23 + 8))(v13, v22);
  }

  v25 = [v6 initWithStore:v18 latitude:a1 longitude:v27 mapItemLastRefreshed:v21 muid:v28 supersededSearchId:{v24, v27, v28}];

  sub_1B6284EAC(a5, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(a3, &unk_1EB943210, &unk_1B63C3F50);
  return v25;
}

void sub_1B62FFF4C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + v7);
  v12 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_1B62FAD20(a1, a2, v9, v10, v2 + v6, v11, v12);
}

id sub_1B6300084(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude);
  *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6300C38;
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

id sub_1B630025C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude);
  *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6300C14;
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

id sub_1B6300468(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid);
  *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6300BF0;
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

uint64_t sub_1B630064C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

void sub_1B6300B40(uint64_t a1, void *a2)
{
  v5 = *(sub_1B63BE994() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 24) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);

  sub_1B62FED8C(a1, a2, v7);
}

id HistoryRideShareItem.init(endWaypoint:startWaypoint:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    sub_1B629119C(a1, a2);
    v11 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
  }

  if (a4 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    sub_1B629119C(a3, a4);
    v12 = sub_1B63BE904();
    sub_1B6284F64(a3, a4);
  }

  v13 = [v5 initWithStore:v10 endWaypoint:v11 startWaypoint:v12];
  sub_1B6284F64(a3, a4);
  sub_1B6284F64(a1, a2);

  return v13;
}

char *HistoryRideShareItem.init(store:endWaypoint:startWaypoint:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = [v5 initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  v14 = *&v10[v11];
  v15 = &v13[OBJC_IVAR___MSHistoryRideShareItem__endWaypoint];
  v16 = *&v13[OBJC_IVAR___MSHistoryRideShareItem__endWaypoint];
  v17 = *&v13[OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8];
  *v15 = a2;
  v15[1] = a3;
  sub_1B6291034(a2, a3);
  sub_1B6284F64(v16, v17);
  v18 = &v13[OBJC_IVAR___MSHistoryRideShareItem__startWaypoint];
  v19 = *&v13[OBJC_IVAR___MSHistoryRideShareItem__startWaypoint];
  v20 = *&v13[OBJC_IVAR___MSHistoryRideShareItem__startWaypoint + 8];
  *v18 = a4;
  v18[1] = a5;
  sub_1B6291034(a4, a5);
  sub_1B6284F64(v19, v20);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = a5;
  sub_1B6282B88();
  v34 = v11;
  v22 = *&v10[v11];
  sub_1B6291034(a2, a3);
  sub_1B6291034(a4, a5);
  if (sub_1B63BEF24())
  {
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1B6302314;
    *(v23 + 24) = v21;
    v33 = v23;
    v24 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v25 = *&v13[v24];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v24] = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1B629A8E8(0, v25[2] + 1, 1, v25);
      *&v13[v24] = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v32 = sub_1B629A8E8((v27 > 1), v28 + 1, 1, v25);
      v29 = v28 + 1;
      v25 = v32;
    }

    v25[2] = v29;
    v30 = &v25[2 * v28];
    v30[4] = sub_1B62B8188;
    v30[5] = v33;
    *&v13[v24] = v25;
    swift_endAccess();
  }

  [*&v10[v34] unlock];
  sub_1B6284F64(a4, a5);
  sub_1B6284F64(a2, a3);

  return v13;
}

void sub_1B63011A8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  type metadata accessor for MapsSyncManagedHistoryRideShareItem();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = a2;
    if (a4 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_1B63BE904();
    }

    [v10 setEndWaypoint_];

    if (a6 >> 60 == 15)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_1B63BE904();
    }

    v14 = v13;
    [v10 setStartWaypoint_];
  }
}

uint64_t sub_1B6301430()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
  v5 = *(v1 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8);
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
  *(v18 + 16) = sub_1B6302320;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_13;
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
    v8 = sub_1B6302320;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6301800(uint64_t a1, unint64_t a2)
{
  sub_1B6302510(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t (*sub_1B6301848(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6301430();
  a1[1] = v3;
  return sub_1B6301890;
}

id sub_1B63018C0(void *a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1B630194C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
  v5 = *(v1 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint + 8);
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
  *(v18 + 16) = sub_1B63026E0;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_19;
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
    v8 = sub_1B63026E0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1B6301D1C(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
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

uint64_t sub_1B6301DC4(uint64_t a1, unint64_t a2)
{
  sub_1B6302708(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B6301E0C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  sub_1B6291034(*a1, v7);
  a5(v6, v7);

  return sub_1B6284F64(v6, v7);
}

void sub_1B6301E70(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v21];
  v7 = v21[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistoryRideShareItem();
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

void sub_1B6301F94(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedHistoryRideShareItem();
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

uint64_t (*sub_1B6302060(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B630194C();
  a1[1] = v3;
  return sub_1B63020A8;
}

uint64_t sub_1B63020C0(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
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

void *sub_1B6302144(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MSHistoryRideShareItem__endWaypoint] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryRideShareItem__startWaypoint] = xmmword_1B63C3E40;
  return sub_1B62F0450(a1, a2, a3, a4);
}

uint64_t sub_1B6302240()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint), *(v0 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8));
  v1 = *(v0 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
  v2 = *(v0 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint + 8);

  return sub_1B6284F64(v1, v2);
}

id HistoryRideShareItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryRideShareItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6302348(void *a1, char a2)
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

  type metadata accessor for MapsSyncManagedHistoryRideShareItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = a1;
    if (a2)
    {
      v13 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
      v14 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8);
      *(v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint) = xmmword_1B63C3E40;
      sub_1B6284F64(v13, v14);
    }

    else
    {
      v15 = [v11 endWaypoint];
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

      v20 = (v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
      v21 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
      v22 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8);
      *v20 = v17;
      v20[1] = v19;
      sub_1B6284F64(v21, v22);
      if ((a2 & 1) == 0)
      {
        v23 = [v11 startWaypoint];
        if (v23)
        {
          v24 = v23;
          v25 = sub_1B63BE924();
          v27 = v26;

LABEL_14:
          v28 = (v2 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
          v29 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
          v30 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint + 8);
          *v28 = v25;
          v28[1] = v27;

          return sub_1B6284F64(v29, v30);
        }
      }
    }

    v25 = 0;
    v27 = 0xF000000000000000;
    goto LABEL_14;
  }

  return result;
}

id sub_1B6302510(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
  v8 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
  v9 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8);
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
    *(v11 + 16) = sub_1B6302B0C;
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

id sub_1B6302708(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
  v8 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
  v9 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint + 8);
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
    *(v11 + 16) = sub_1B6302AE8;
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

uint64_t type metadata accessor for HistoryRideShareItem()
{
  result = qword_1EB9432E0;
  if (!qword_1EB9432E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id HistorySearchItem.__allocating_init(geoMapRegion:language:locationDisplay:query:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v15 = objc_allocWithZone(v9);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v17 = 0;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1B629119C(a1, a2);
    v17 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
    if (a4)
    {
LABEL_5:
      v18 = sub_1B63BEBC4();

      if (a6)
      {
        goto LABEL_6;
      }

LABEL_10:
      v19 = 0;
      if (a8)
      {
        goto LABEL_7;
      }

LABEL_11:
      v20 = 0;
      goto LABEL_12;
    }
  }

  v18 = 0;
  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_6:
  v19 = sub_1B63BEBC4();

  if (!a8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v20 = sub_1B63BEBC4();

LABEL_12:
  v21 = [v15 initWithStore:v16 geoMapRegion:v17 language:v18 locationDisplay:v19 query:v20];
  sub_1B6284F64(a1, a2);

  return v21;
}

id HistorySearchItem.init(geoMapRegion:language:locationDisplay:query:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v16 = 0;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1B629119C(a1, a2);
    v16 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
    if (a4)
    {
LABEL_5:
      v17 = sub_1B63BEBC4();

      if (a6)
      {
        goto LABEL_6;
      }

LABEL_10:
      v18 = 0;
      if (a8)
      {
        goto LABEL_7;
      }

LABEL_11:
      v19 = 0;
      goto LABEL_12;
    }
  }

  v17 = 0;
  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_6:
  v18 = sub_1B63BEBC4();

  if (!a8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v19 = sub_1B63BEBC4();

LABEL_12:
  v20 = [v9 initWithStore:v15 geoMapRegion:v16 language:v17 locationDisplay:v18 query:v19];
  sub_1B6284F64(a1, a2);

  return v20;
}

char *HistorySearchItem.__allocating_init(store:geoMapRegion:language:locationDisplay:query:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = [objc_allocWithZone(v10) initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v42 = *&v16[v17];
  v20 = &v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion];
  v22 = *&v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion];
  v21 = *&v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8];
  *v20 = a2;
  v20[1] = a3;
  sub_1B6291034(a2, a3);
  sub_1B6284F64(v22, v21);
  v23 = &v19[OBJC_IVAR___MSHistorySearchItem__language];
  v24 = *&v19[OBJC_IVAR___MSHistorySearchItem__language + 8];
  *v23 = a4;
  *(v23 + 1) = a5;

  v25 = &v19[OBJC_IVAR___MSHistorySearchItem__locationDisplay];
  v26 = *&v19[OBJC_IVAR___MSHistorySearchItem__locationDisplay + 8];
  *v25 = a6;
  *(v25 + 1) = a7;

  v27 = &v19[OBJC_IVAR___MSHistorySearchItem__query];
  v28 = *&v19[OBJC_IVAR___MSHistorySearchItem__query + 8];
  *v27 = a8;
  *(v27 + 1) = a9;

  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = a4;
  v29[5] = a5;
  v29[6] = a6;
  v29[7] = a7;
  v29[8] = a8;
  v29[9] = a9;
  sub_1B6282B88();
  v30 = *&v16[v17];
  sub_1B6291034(a2, a3);
  if (sub_1B63BEF24())
  {
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1B6305828;
    *(v31 + 24) = v29;
    v32 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v33 = *&v19[v32];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v32] = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_1B629A8E8(0, v33[2] + 1, 1, v33);
      *&v19[v32] = v33;
    }

    v36 = v33[2];
    v35 = v33[3];
    if (v36 >= v35 >> 1)
    {
      v33 = sub_1B629A8E8((v35 > 1), v36 + 1, 1, v33);
    }

    v33[2] = v36 + 1;
    v37 = &v33[2 * v36];
    v37[4] = sub_1B62B8188;
    v37[5] = v31;
    *&v19[v32] = v33;
    swift_endAccess();
  }

  [*&v16[v17] unlock];
  sub_1B6284F64(a2, a3);

  return v19;
}

char *HistorySearchItem.init(store:geoMapRegion:language:locationDisplay:query:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = [v10 initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v42 = *&v16[v17];
  v20 = &v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion];
  v22 = *&v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion];
  v21 = *&v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8];
  *v20 = a2;
  v20[1] = a3;
  sub_1B6291034(a2, a3);
  sub_1B6284F64(v22, v21);
  v23 = &v19[OBJC_IVAR___MSHistorySearchItem__language];
  v24 = *&v19[OBJC_IVAR___MSHistorySearchItem__language + 8];
  *v23 = a4;
  *(v23 + 1) = a5;

  v25 = &v19[OBJC_IVAR___MSHistorySearchItem__locationDisplay];
  v26 = *&v19[OBJC_IVAR___MSHistorySearchItem__locationDisplay + 8];
  *v25 = a6;
  *(v25 + 1) = a7;

  v27 = &v19[OBJC_IVAR___MSHistorySearchItem__query];
  v28 = *&v19[OBJC_IVAR___MSHistorySearchItem__query + 8];
  *v27 = a8;
  *(v27 + 1) = a9;

  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = a4;
  v29[5] = a5;
  v29[6] = a6;
  v29[7] = a7;
  v29[8] = a8;
  v29[9] = a9;
  sub_1B6282B88();
  v30 = *&v16[v17];
  sub_1B6291034(a2, a3);
  if (sub_1B63BEF24())
  {
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1B6306100;
    *(v31 + 24) = v29;
    v32 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v33 = *&v19[v32];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v32] = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_1B629A8E8(0, v33[2] + 1, 1, v33);
      *&v19[v32] = v33;
    }

    v36 = v33[2];
    v35 = v33[3];
    if (v36 >= v35 >> 1)
    {
      v33 = sub_1B629A8E8((v35 > 1), v36 + 1, 1, v33);
    }

    v33[2] = v36 + 1;
    v37 = &v33[2 * v36];
    v37[4] = sub_1B62B9488;
    v37[5] = v31;
    *&v19[v32] = v33;
    swift_endAccess();
  }

  [*&v16[v17] unlock];
  sub_1B6284F64(a2, a3);

  return v19;
}

void sub_1B6303554(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for MapsSyncManagedHistorySearchItem();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = a2;
    if (a4 >> 60 == 15)
    {
      v17 = 0;
    }

    else
    {
      v17 = sub_1B63BE904();
    }

    [v15 setGeoMapRegion_];

    if (a6)
    {
      a6 = sub_1B63BEBC4();
    }

    [v15 setLanguage_];

    if (a8)
    {
      a8 = sub_1B63BEBC4();
    }

    [v15 setLocationDisplay_];

    if (a10)
    {
      v18 = sub_1B63BEBC4();
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    [v15 setQuery_];
  }
}

uint64_t sub_1B6303940()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
  v5 = *(v1 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8);
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
  *(v18 + 16) = sub_1B6305860;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B8284;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_14;
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
    v8 = sub_1B6305860;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6303D8C(uint64_t a1, unint64_t a2)
{
  sub_1B6305AF8(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B6303DD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1B6291034(*a1, v3);
  sub_1B6305AF8(v2, v3);

  return sub_1B6284F64(v2, v3);
}

void sub_1B6303E30(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistorySearchItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 geoMapRegion]) != 0)
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

void sub_1B6303F54(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistorySearchItem();
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
    [v7 setGeoMapRegion_];
  }
}

uint64_t (*sub_1B6304014(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B6303940();
  a1[1] = v3;
  return sub_1B630405C;
}

uint64_t sub_1B630405C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1B6291034(v5, v3);
    sub_1B6305AF8(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B6305AF8(v5, v3);
  }

  return sub_1B6284F64(v2, v3);
}

uint64_t sub_1B63040EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSHistorySearchItem__language);
  v4 = *(v0 + OBJC_IVAR___MSHistorySearchItem__language + 8);
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
  *(v18 + 16) = sub_1B6305CC8;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_27_1;
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

    v13 = sub_1B6305CC8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6304490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistorySearchItem__language);
  v8 = *(v3 + OBJC_IVAR___MSHistorySearchItem__language + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B6305CF0;
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

uint64_t (*sub_1B6304648(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B63040EC();
  a1[1] = v3;
  return sub_1B6304690;
}

uint64_t sub_1B63046C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v5 = *(v0 + OBJC_IVAR___MSHistorySearchItem__locationDisplay);
  v4 = *(v0 + OBJC_IVAR___MSHistorySearchItem__locationDisplay + 8);
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
  *(v18 + 16) = sub_1B6305D14;
  *(v18 + 24) = v17;
  v22[4] = sub_1B62B9478;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1B62B1294;
  v22[3] = &block_descriptor_44_1;
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

    v13 = sub_1B6305D14;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}