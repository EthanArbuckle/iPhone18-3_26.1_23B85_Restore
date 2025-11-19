uint64_t sub_10004BA80(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[23];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[20];
    v10 = v4 + 16;
    v8 = v4[16];
    v9 = v10[1];

    v11 = v6[1];

    return v11();
  }

  else
  {

    return _swift_task_switch(sub_10004BBE0, 0, 0);
  }
}

uint64_t sub_10004BBE0()
{
  v1 = v0[13];
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = v0[13];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = v0[9];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10004BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = *(*(sub_100015140(&qword_10007E790, &qword_10005BD10) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  refreshed = type metadata accessor for FeedItemInventoryRefreshPolicy();
  v3[18] = refreshed;
  v9 = *(refreshed - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_10004BE28, 0, 0);
}

uint64_t sub_10004BE28()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[11];
  v5 = v4[3];
  v6 = v4[4];
  sub_100002288(v4, v5);
  (*(v2 + 104))(v1, enum case for FeedItemInventoryRefreshPolicy.default(_:), v3);
  v7 = async function pointer to dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_10004BF1C;
  v9 = v0[20];

  return dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)(v9, v5, v6);
}

uint64_t sub_10004BF1C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = v2[20];
  v6 = v2[19];
  v7 = v2[18];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_10004C3B0;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10004C0B4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10004C0B4()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[11];
  v4 = v3[4];
  sub_100002288(v3, v3[3]);
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  if (v1)
  {
LABEL_5:
    v12 = v0[20];
    v13 = v0[16];
    v14 = v0[17];

    v15 = v0[1];

    return v15();
  }

  v5 = v0[17];
  v6 = type metadata accessor for Date();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_100022E54(v5, &qword_10007E790, &qword_10005BD10);
  if (v7 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v9 = v0[11];
  v10 = v9[4];
  sub_100002288(v9, v9[3]);
  v11 = dispatch thunk of FeedItemInventoryType.databaseRef()();
  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[14];
  v20 = v0[12];
  *v17 = v11;
  (*(v18 + 104))(v17, enum case for MultiDatabaseFeedItemPool.DatabaseSource.globalESL(_:), v19);
  swift_beginAccess();
  v21 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = v0[12];
    v21 = sub_1000514E8(0, v21[2] + 1, 1, v21);
    *v34 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1000514E8(v23 > 1, v24 + 1, 1, v21);
  }

  v26 = v0[15];
  v25 = v0[16];
  v27 = v0[14];
  v28 = v0[11];
  v29 = v0[12];
  v21[2] = v24 + 1;
  (*(v26 + 32))(v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, v25, v27);
  *v29 = v21;
  swift_endAccess();
  v30 = v28[3];
  v31 = v28[4];
  sub_100002288(v28, v30);
  v32 = async function pointer to dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()[1];
  v33 = swift_task_alloc();
  v0[23] = v33;
  *v33 = v0;
  v33[1] = sub_10004C6AC;

  return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v30, v31);
}

uint64_t sub_10004C3B0()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v2[4];
  sub_100002288(v2, v2[3]);
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  v4 = v0[17];
  v5 = type metadata accessor for Date();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_100022E54(v4, &qword_10007E790, &qword_10005BD10);
  if (v6 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 1;
    swift_willThrow();
    v11 = v0[20];
    v12 = v0[16];
    v13 = v0[17];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v8 = v0[11];
    v9 = v8[4];
    sub_100002288(v8, v8[3]);
    v10 = dispatch thunk of FeedItemInventoryType.databaseRef()();
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];
    v19 = v0[12];
    *v16 = v10;
    (*(v17 + 104))(v16, enum case for MultiDatabaseFeedItemPool.DatabaseSource.globalESL(_:), v18);
    swift_beginAccess();
    v20 = *v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = v0[12];
      v20 = sub_1000514E8(0, v20[2] + 1, 1, v20);
      *v33 = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1000514E8(v22 > 1, v23 + 1, 1, v20);
    }

    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[14];
    v27 = v0[11];
    v28 = v0[12];
    v20[2] = v23 + 1;
    (*(v25 + 32))(v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v24, v26);
    *v28 = v20;
    swift_endAccess();
    v29 = v27[3];
    v30 = v27[4];
    sub_100002288(v27, v29);
    v31 = async function pointer to dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()[1];
    v32 = swift_task_alloc();
    v0[23] = v32;
    *v32 = v0;
    v32[1] = sub_10004C6AC;

    return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v29, v30);
  }
}

uint64_t sub_10004C6AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[23];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[20];
    v10 = v4 + 16;
    v8 = v4[16];
    v9 = v10[1];

    v11 = v6[1];

    return v11();
  }

  else
  {

    return _swift_task_switch(sub_100050C30, 0, 0);
  }
}

uint64_t sub_10004C80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = *(*(sub_100015140(&qword_10007E790, &qword_10005BD10) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  refreshed = type metadata accessor for FeedItemInventoryRefreshPolicy();
  v3[18] = refreshed;
  v9 = *(refreshed - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_10004C964, 0, 0);
}

uint64_t sub_10004C964()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[11];
  v5 = v4[3];
  v6 = v4[4];
  sub_100002288(v4, v5);
  (*(v2 + 104))(v1, enum case for FeedItemInventoryRefreshPolicy.default(_:), v3);
  v7 = async function pointer to dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_10004CA58;
  v9 = v0[20];

  return dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)(v9, v5, v6);
}

uint64_t sub_10004CA58()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = v2[20];
  v6 = v2[19];
  v7 = v2[18];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_10004CEEC;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10004CBF0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10004CBF0()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[11];
  v4 = v3[4];
  sub_100002288(v3, v3[3]);
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  if (v1)
  {
LABEL_5:
    v12 = v0[20];
    v13 = v0[16];
    v14 = v0[17];

    v15 = v0[1];

    return v15();
  }

  v5 = v0[17];
  v6 = type metadata accessor for Date();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_100022E54(v5, &qword_10007E790, &qword_10005BD10);
  if (v7 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v9 = v0[11];
  v10 = v9[4];
  sub_100002288(v9, v9[3]);
  v11 = dispatch thunk of FeedItemInventoryType.databaseRef()();
  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[14];
  v20 = v0[12];
  *v17 = v11;
  (*(v18 + 104))(v17, enum case for MultiDatabaseFeedItemPool.DatabaseSource.perTagESL(_:), v19);
  swift_beginAccess();
  v21 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = v0[12];
    v21 = sub_1000514E8(0, v21[2] + 1, 1, v21);
    *v34 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1000514E8(v23 > 1, v24 + 1, 1, v21);
  }

  v26 = v0[15];
  v25 = v0[16];
  v27 = v0[14];
  v28 = v0[11];
  v29 = v0[12];
  v21[2] = v24 + 1;
  (*(v26 + 32))(v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, v25, v27);
  *v29 = v21;
  swift_endAccess();
  v30 = v28[3];
  v31 = v28[4];
  sub_100002288(v28, v30);
  v32 = async function pointer to dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()[1];
  v33 = swift_task_alloc();
  v0[23] = v33;
  *v33 = v0;
  v33[1] = sub_10004C6AC;

  return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v30, v31);
}

uint64_t sub_10004CEEC()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v2[4];
  sub_100002288(v2, v2[3]);
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  v4 = v0[17];
  v5 = type metadata accessor for Date();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_100022E54(v4, &qword_10007E790, &qword_10005BD10);
  if (v6 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 1;
    swift_willThrow();
    v11 = v0[20];
    v12 = v0[16];
    v13 = v0[17];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v8 = v0[11];
    v9 = v8[4];
    sub_100002288(v8, v8[3]);
    v10 = dispatch thunk of FeedItemInventoryType.databaseRef()();
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];
    v19 = v0[12];
    *v16 = v10;
    (*(v17 + 104))(v16, enum case for MultiDatabaseFeedItemPool.DatabaseSource.perTagESL(_:), v18);
    swift_beginAccess();
    v20 = *v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = v0[12];
      v20 = sub_1000514E8(0, v20[2] + 1, 1, v20);
      *v33 = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1000514E8(v22 > 1, v23 + 1, 1, v20);
    }

    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[14];
    v27 = v0[11];
    v28 = v0[12];
    v20[2] = v23 + 1;
    (*(v25 + 32))(v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v24, v26);
    *v28 = v20;
    swift_endAccess();
    v29 = v27[3];
    v30 = v27[4];
    sub_100002288(v27, v29);
    v31 = async function pointer to dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()[1];
    v32 = swift_task_alloc();
    v0[23] = v32;
    *v32 = v0;
    v32[1] = sub_10004C6AC;

    return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v29, v30);
  }
}

uint64_t sub_10004D1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = *(*(sub_100015140(&qword_10007E790, &qword_10005BD10) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  refreshed = type metadata accessor for FeedItemInventoryRefreshPolicy();
  v3[18] = refreshed;
  v9 = *(refreshed - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_10004D340, 0, 0);
}

uint64_t sub_10004D340()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[11];
  v5 = v4[3];
  v6 = v4[4];
  sub_100002288(v4, v5);
  (*(v2 + 104))(v1, enum case for FeedItemInventoryRefreshPolicy.default(_:), v3);
  v7 = async function pointer to dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_10004D434;
  v9 = v0[20];

  return dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)(v9, v5, v6);
}

uint64_t sub_10004D434()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = v2[20];
  v6 = v2[19];
  v7 = v2[18];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_10004D8C8;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10004D5CC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10004D5CC()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[11];
  v4 = v3[4];
  sub_100002288(v3, v3[3]);
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  if (v1)
  {
LABEL_5:
    v12 = v0[20];
    v13 = v0[16];
    v14 = v0[17];

    v15 = v0[1];

    return v15();
  }

  v5 = v0[17];
  v6 = type metadata accessor for Date();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_100022E54(v5, &qword_10007E790, &qword_10005BD10);
  if (v7 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v9 = v0[11];
  v10 = v9[4];
  sub_100002288(v9, v9[3]);
  v11 = dispatch thunk of FeedItemInventoryType.databaseRef()();
  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[14];
  v20 = v0[12];
  *v17 = v11;
  (*(v18 + 104))(v17, enum case for MultiDatabaseFeedItemPool.DatabaseSource.peopleAlsoRead(_:), v19);
  swift_beginAccess();
  v21 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = v0[12];
    v21 = sub_1000514E8(0, v21[2] + 1, 1, v21);
    *v34 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1000514E8(v23 > 1, v24 + 1, 1, v21);
  }

  v26 = v0[15];
  v25 = v0[16];
  v27 = v0[14];
  v28 = v0[11];
  v29 = v0[12];
  v21[2] = v24 + 1;
  (*(v26 + 32))(v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, v25, v27);
  *v29 = v21;
  swift_endAccess();
  v30 = v28[3];
  v31 = v28[4];
  sub_100002288(v28, v30);
  v32 = async function pointer to dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()[1];
  v33 = swift_task_alloc();
  v0[23] = v33;
  *v33 = v0;
  v33[1] = sub_10004C6AC;

  return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v30, v31);
}

uint64_t sub_10004D8C8()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v2[4];
  sub_100002288(v2, v2[3]);
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  v4 = v0[17];
  v5 = type metadata accessor for Date();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_100022E54(v4, &qword_10007E790, &qword_10005BD10);
  if (v6 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 1;
    swift_willThrow();
    v11 = v0[20];
    v12 = v0[16];
    v13 = v0[17];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v8 = v0[11];
    v9 = v8[4];
    sub_100002288(v8, v8[3]);
    v10 = dispatch thunk of FeedItemInventoryType.databaseRef()();
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];
    v19 = v0[12];
    *v16 = v10;
    (*(v17 + 104))(v16, enum case for MultiDatabaseFeedItemPool.DatabaseSource.peopleAlsoRead(_:), v18);
    swift_beginAccess();
    v20 = *v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = v0[12];
      v20 = sub_1000514E8(0, v20[2] + 1, 1, v20);
      *v33 = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1000514E8(v22 > 1, v23 + 1, 1, v20);
    }

    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[14];
    v27 = v0[11];
    v28 = v0[12];
    v20[2] = v23 + 1;
    (*(v25 + 32))(v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v24, v26);
    *v28 = v20;
    swift_endAccess();
    v29 = v27[3];
    v30 = v27[4];
    sub_100002288(v27, v29);
    v31 = async function pointer to dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()[1];
    v32 = swift_task_alloc();
    v0[23] = v32;
    *v32 = v0;
    v32[1] = sub_10004C6AC;

    return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v29, v30);
  }
}

uint64_t sub_10004DBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[41] = a5;
  v6[42] = v5;
  v6[39] = a3;
  v6[40] = a4;
  v6[37] = a1;
  v6[38] = a2;
  v7 = *(*(sub_100015140(&unk_10007EFC0, &qword_10005BEB0) - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v8 = type metadata accessor for MergedFeedItemSequence();
  v6[44] = v8;
  v9 = *(v8 - 8);
  v6[45] = v9;
  v10 = *(v9 + 64) + 15;
  v6[46] = swift_task_alloc();
  v11 = *(*(sub_100015140(&qword_10007F4B0, &qword_10005BEB8) - 8) + 64) + 15;
  v6[47] = swift_task_alloc();
  v12 = type metadata accessor for Expression();
  v6[48] = v12;
  v13 = *(v12 - 8);
  v6[49] = v13;
  v14 = *(v13 + 64) + 15;
  v6[50] = swift_task_alloc();
  v15 = sub_100015140(&qword_10007F4B8, &qword_10005BEC0);
  v6[51] = v15;
  v16 = *(v15 - 8);
  v6[52] = v16;
  v17 = *(v16 + 64) + 15;
  v6[53] = swift_task_alloc();
  v18 = sub_100015140(&qword_10007F4C0, &qword_10005BEC8);
  v6[54] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v6[55] = swift_task_alloc();
  v20 = sub_100015140(&qword_10007F4C8, &qword_10005BED0);
  v6[56] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v6[57] = swift_task_alloc();
  v22 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v6[58] = v22;
  v23 = *(v22 - 8);
  v6[59] = v23;
  v24 = *(v23 + 64) + 15;
  v6[60] = swift_task_alloc();
  v25 = *(*(sub_100015140(&qword_10007F4D0, &qword_10005BED8) - 8) + 64) + 15;
  v6[61] = swift_task_alloc();
  v26 = type metadata accessor for FeedItemOrder();
  v6[62] = v26;
  v27 = *(v26 - 8);
  v6[63] = v27;
  v28 = *(v27 + 64) + 15;
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v29 = sub_100015140(&qword_10007F4D8, &qword_10005BEE0);
  v6[67] = v29;
  v30 = *(v29 - 8);
  v6[68] = v30;
  v31 = *(v30 + 64) + 15;
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v32 = sub_100015140(&qword_10007F4E0, &qword_10005BEE8);
  v6[71] = v32;
  v33 = *(*(v32 - 8) + 64) + 15;
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v34 = sub_100015140(&qword_10007F4E8, &unk_10005BEF0);
  v6[74] = v34;
  v35 = *(*(v34 - 8) + 64) + 15;
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v36 = sub_100015140(&qword_10007F310, qword_10005BD58);
  v6[77] = v36;
  v37 = *(v36 - 8);
  v6[78] = v37;
  v38 = *(v37 + 64) + 15;
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v39 = type metadata accessor for URL();
  v6[82] = v39;
  v40 = *(v39 - 8);
  v6[83] = v40;
  v41 = *(v40 + 64) + 15;
  v6[84] = swift_task_alloc();
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();

  return _swift_task_switch(sub_10004E168, 0, 0);
}

uint64_t sub_10004E168()
{
  v1 = v0;
  v2 = v0[42];
  sub_100046940(v0[37], v0[38], v0[89]);
  v3 = v0[90];
  v4 = v1[89];
  v5 = v1[83];
  v6 = v1[82];
  v7 = v1[90];
  URL.appendingPathComponent(_:)();
  v8 = *(v5 + 8);
  v8(v4, v6);
  v9 = Data.init(contentsOf:options:)();
  v11 = v10;
  v12 = type metadata accessor for JSONDecoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for NDManagedFeedItemPoolOptions();
  sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v255 = v1[39];
  v8(v1[90], v1[82]);

  sub_1000153DC(v9, v11);
  v15 = v1[15];
  v16 = swift_allocObject();
  *(v16 + 16) = NDManagedFeedItemPoolOptions.preferredCount.getter();
  v17 = swift_allocObject();
  v18 = NDManagedFeedItemPoolOptions.preferredCount.getter();
  NDManagedFeedItemPoolOptions.preferredESLRatio.getter();
  *(v17 + 16) = ceil(v19 * v18);
  v242 = v17;
  v244 = v16;
  v211 = v15;
  MultiDatabaseFeedItemPool.DatabaseSource.resolveDatabase()();
  v183 = (v17 + 16);
  v20 = v1[70];
  v21 = v1[66];
  v22 = v1[62];
  v23 = v1[63];
  type metadata accessor for FeedItemAndScoreEntity();
  v24 = *(v23 + 104);
  LODWORD(v246) = enum case for FeedItemOrder.forYouScoreDescending(_:);
  v24(v21);
  sub_100050B1C(&qword_10007F4F0, &type metadata accessor for FeedItemAndScoreEntity);
  FeedItemDatabase.allFeedItemEntities<A>(_:order:)();
  v226 = v24;
  v181 = (v16 + 16);
  v182 = v8;
  v256 = v1[81];
  v195 = v1[77];
  v221 = v1[76];
  v25 = v1[74];
  v26 = v1[73];
  v27 = v1[71];
  v28 = v1[70];
  v29 = v1[68];
  v30 = v1[67];
  v31 = v1[61];
  v32 = v1[41];
  v249 = v1[42];
  v252 = v1[40];
  v239 = (v1[63] + 8);
  v230 = *v239;
  (*v239)(v1[66], v1[62]);
  v33 = *(v29 + 32);
  v33(v31, v28, v30);
  v188 = v33;
  v33(v26, v31, v30);
  v191 = v27;
  v34 = (v26 + *(v27 + 44));
  *v34 = sub_100050C34;
  v34[1] = 0;
  sub_100050A60(v26, v221, &qword_10007F4E0, &qword_10005BEE8);
  v193 = v25;
  v35 = (v221 + *(v25 + 36));
  *v35 = sub_100050710;
  v35[1] = v244;
  v1[11] = *v32;
  v1[26] = v32[1];
  v1[36] = v32[2];
  v1[13] = v32[3];
  v1[14] = v32[4];
  v36 = swift_allocObject();
  *(v36 + 16) = v242;
  *(v36 + 24) = v249;
  *(v36 + 32) = v211;
  v37 = v32[4];
  v38 = *(v32 + 1);
  *(v36 + 40) = *v32;
  *(v36 + 56) = v38;
  *(v36 + 72) = v37;
  sub_100050A60(v221, v256, &qword_10007F4E8, &unk_10005BEF0);
  v39 = (v256 + *(v195 + 36));
  *v39 = sub_100050718;
  v39[1] = v36;
  v40 = *(v252 + 16);
  v253 = v1;
  if (v40)
  {
    v186 = v1[78];
    v41 = v1[59];
    v42 = v1[42];
    v43 = v1[40] + ((*(v41 + 80) + 32) & ~*(v41 + 80));

    v44 = v42;
    v184 = v211;
    sub_100022DA4((v1 + 11), (v1 + 16), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 26), (v1 + 17), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 36), (v1 + 18), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 13), (v1 + 19), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 14), (v1 + 20), &qword_10007F4A8, &qword_10005BE88);
    v45 = *(v41 + 16);
    v41 += 16;
    v215 = _swiftEmptyArrayStorage;
    v257 = (v41 - 8);
    v249 = *(v41 + 56);
    v46 = v246;
    v218 = v45;
    v45(v1[60], v43, v1[58]);
    while (1)
    {
      MultiDatabaseFeedItemPool.DatabaseSource.resolveDatabase()();
      v47 = v1[69];
      v226(v1[65], v46, v1[62]);
      FeedItemDatabase.allFeedItemEntities<A>(_:order:)();
      v205 = v1[79];
      v208 = v1[80];
      v48 = v1[72];
      v197 = v1[69];
      v199 = v1[75];
      v49 = v1[67];
      v50 = v253[65];
      v51 = v253[62];
      v52 = v253[61];
      v53 = v253[60];
      v54 = v253[58];
      v201 = v253[42];
      v203 = v253[41];

      v55 = v51;
      v1 = v253;
      v230(v50, v55);
      (*v257)(v53, v54);
      v188(v52, v197, v49);
      v188(v48, v52, v49);
      v56 = (v48 + *(v191 + 44));
      *v56 = sub_100050C34;
      v56[1] = 0;
      v57 = swift_allocObject();
      *(v57 + 16) = v244;
      *(v57 + 24) = v242;
      sub_100050A60(v48, v199, &qword_10007F4E0, &qword_10005BEE8);
      v58 = (v199 + *(v193 + 36));
      *v58 = sub_1000509F0;
      v58[1] = v57;
      v59 = swift_allocObject();
      *(v59 + 16) = v201;
      *(v59 + 24) = v184;
      v60 = *(v203 + 32);
      v61 = *(v203 + 16);
      *(v59 + 32) = *v203;
      *(v59 + 48) = v61;
      *(v59 + 64) = v60;
      sub_100050A60(v199, v205, &qword_10007F4E8, &unk_10005BEF0);
      v62 = (v205 + *(v195 + 36));
      *v62 = sub_100050C14;
      v62[1] = v59;
      sub_100050A60(v205, v208, &qword_10007F310, qword_10005BD58);

      v63 = v201;
      v64 = v184;
      sub_100022DA4((v1 + 11), (v1 + 27), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v1 + 26), (v1 + 28), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v1 + 36), (v1 + 29), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v1 + 13), (v1 + 30), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v1 + 14), (v1 + 31), &qword_10007F4A8, &qword_10005BE88);
      v65 = v215;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_10005182C(0, v215[2] + 1, 1, v215);
      }

      v67 = v65[2];
      v66 = v65[3];
      v46 = v246;
      if (v67 >= v66 >> 1)
      {
        v65 = sub_10005182C(v66 > 1, v67 + 1, 1, v65);
      }

      v68 = v253[80];
      v65[2] = v67 + 1;
      v215 = v65;
      sub_100050A60(v68, v65 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v67, &qword_10007F310, qword_10005BD58);
      v43 += v249;
      if (!--v40)
      {
        break;
      }

      v218(v253[60], v43, v253[58]);
    }
  }

  else
  {
    v69 = v1[42];

    v70 = v69;
    v71 = v211;
    sub_100022DA4((v1 + 11), (v1 + 32), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 26), (v1 + 33), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 36), (v1 + 34), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 13), (v1 + 35), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 14), (v1 + 12), &qword_10007F4A8, &qword_10005BE88);
    v215 = _swiftEmptyArrayStorage;
  }

  NDManagedFeedItemPoolOptions.includeAllFromTagIDs.getter();
  v72 = FeedItemDatabase.feedContextForTagIDs(_:)();
  v73 = v1;

  v74 = v72 + 64;
  v75 = -1;
  v76 = -1 << *(v72 + 32);
  if (-v76 < 64)
  {
    v75 = ~(-1 << -v76);
  }

  v77 = v75 & *(v72 + 64);
  v78 = (63 - v76) >> 6;

  v79 = 0;
  v80 = _swiftEmptyArrayStorage;
  v81 = v72;
  if (v77)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v82 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v82 >= v78)
    {
      v89 = v73;
      v90 = v73[64];
      v91 = v73[62];
      v258 = v73[53];
      v92 = v73[50];
      v93 = v89[48];
      v94 = v89[49];

      v95 = swift_allocObject();
      v95[2] = static FeedItemEntity.Columns.feedID.getter();
      v95[3] = v96;
      v97 = sub_10003E364(v80);

      v95[4] = v97;
      *v92 = v95;
      (*(v94 + 104))(v92, enum case for Expression.in(_:), v93);
      v226(v90, v246, v91);
      FeedItemDatabase.allFeedItemEntities<A>(_:where:order:)();
      v98 = v89[81];
      v248 = v89[78];
      v112 = v89[64];
      v113 = v89[62];
      v234 = v89[57];
      v237 = v89[56];
      v115 = v89[54];
      v114 = v89[55];
      v117 = v89[52];
      v116 = v89[53];
      v120 = v89 + 50;
      v119 = v89[50];
      v118 = v120[1];
      v121 = v253[49];
      v122 = v253[48];
      v251 = v98;
      v123 = v253[47];
      v259 = v253[46];
      v228 = v253[42];
      v124 = v253[41];
      v230(v112, v113);
      (*(v121 + 8))(v119, v122);
      v125 = *(v117 + 32);
      v125(v123, v116, v118);
      v125(v114, v123, v118);
      v126 = v253;
      v127 = (v114 + *(v115 + 44));
      *v127 = sub_100050C34;
      v127[1] = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = v228;
      *(v128 + 24) = v211;
      v129 = *(v124 + 32);
      v130 = *(v124 + 16);
      *(v128 + 32) = *v124;
      *(v128 + 48) = v130;
      *(v128 + 64) = v129;
      sub_100050A60(v114, v234, &qword_10007F4C0, &qword_10005BEC8);
      v131 = (v234 + *(v237 + 36));
      *v131 = sub_100050728;
      v131[1] = v128;
      sub_100015140(&qword_10007F4F8, &unk_10005BF00);
      v132 = *(v248 + 72);
      v133 = (*(v248 + 80) + 32) & ~*(v248 + 80);
      v134 = swift_allocObject();
      *(v134 + 16) = xmmword_10005A4F0;
      sub_100022DA4(v251, v134 + v133, &qword_10007F310, qword_10005BD58);
      v135 = v228;
      v136 = v211;
      sub_100022DA4((v126 + 11), (v126 + 21), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v126 + 26), (v126 + 22), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v126 + 36), (v126 + 23), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v126 + 13), (v126 + 24), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v126 + 14), (v126 + 25), &qword_10007F4A8, &qword_10005BE88);
      sub_100050854(v215);
      sub_10003E460(v134);

      sub_100015140(&qword_10007F320, &qword_10005BDA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10005A4F0;
      *(inited + 56) = v237;
      *(inited + 64) = sub_10005098C();
      v138 = sub_10002377C((inited + 32));
      sub_100022DA4(v234, v138, &qword_10007F4C8, &qword_10005BED0);
      sub_10005074C(inited);
      MergedFeedItemSequence.init(sequences:)();
      v139 = v253[42];
      sub_100046940(v126[37], v126[38], v126[87]);
      v140 = v253[88];
      v141 = v253[87];
      v142 = v253[82];
      v143 = v253[46];
      URL.appendingPathComponent(_:)();
      v182(v141, v142);
      v144 = objc_allocWithZone(FCPBMessageStreamWriter);
      URL._bridgeToObjectiveC()(v145);
      v147 = v146;
      v148 = [v144 initWithURL:v146];

      v149 = v136;
      v150 = v148;
      sub_10002A588(v143, v149, v150, v181, v183);
      v151 = v253[85];
      v152 = v253[42];
      v154 = v253[37];
      v153 = v253[38];
      v246 = v150;

      v249 = v149;
      v155 = v153;
      v80 = 0;
      sub_100046940(v154, v155, v151);
      goto LABEL_29;
    }

    v77 = *(v74 + 8 * v82);
    ++v79;
    if (v77)
    {
      v79 = v82;
      do
      {
LABEL_18:
        v83 = (*(v81 + 56) + 24 * (__clz(__rbit64(v77)) | (v79 << 6)));
        v85 = *v83;
        v84 = v83[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_100051A1C(0, *(v80 + 2) + 1, 1, v80);
        }

        v87 = *(v80 + 2);
        v86 = *(v80 + 3);
        if (v87 >= v86 >> 1)
        {
          v80 = sub_100051A1C((v86 > 1), v87 + 1, 1, v80);
        }

        v77 &= v77 - 1;
        *(v80 + 2) = v87 + 1;
        v88 = &v80[16 * v87];
        *(v88 + 4) = v85;
        *(v88 + 5) = v84;
        v73 = v253;
      }

      while (v77);
    }
  }

  __break(1u);
LABEL_29:
  v156 = v253[86];
  v157 = v253[85];
  v158 = v253[84];
  v159 = v253[83];
  v160 = v253[82];
  URL.appendingPathComponent(_:)();
  v182(v157, v160);
  (*(v159 + 16))(v158, v156, v160);
  v161 = objc_allocWithZone(FCFileAccessToken);
  v162 = sub_1000504B0(v158);
  v163 = v253[88];
  v164 = v253[86];
  if (v80)
  {
    v165 = v253[82];
    v260 = v253[81];
    v166 = v253[57];
    v168 = v253[45];
    v167 = v253[46];
    v169 = v253[44];

    v182(v164, v165);
    v182(v163, v165);
    (*(v168 + 8))(v167, v169);
    sub_100022E54(v166, &qword_10007F4C8, &qword_10005BED0);
    sub_100022E54(v260, &qword_10007F310, qword_10005BD58);

    v99 = v253[90];
    v100 = v253[89];
    v101 = v253[88];
    v102 = v253[87];
    v103 = v253[86];
    v104 = v253[85];
    v105 = v253;
    v106 = v253[84];
    v107 = v253[81];
    v108 = v253[80];
    v109 = v253[79];
    v206 = v253[76];
    v209 = v253[75];
    v212 = v253[73];
    v214 = v253[72];
    v216 = v253[70];
    v219 = v253[69];
    v222 = v253[66];
    v224 = v253[65];
    v227 = v253[64];
    v231 = v253[61];
    v233 = v253[60];
    v236 = v253[57];
    v240 = v253[55];
    v243 = v253[53];
    v245 = v253[50];
    v247 = v253[47];
    v250 = v253[46];
    v254 = v253[43];

    v110 = v105[1];
  }

  else
  {
    v170 = v162;
    v171 = v253[45];
    v172 = v253[43];
    v173 = [objc_opt_self() defaultManager];
    NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
    v261 = (v171 + 8);
    v187 = v253[90];
    v189 = v253[89];
    v174 = v253[88];
    v175 = v253[86];
    v190 = v253[87];
    v192 = v253[85];
    v176 = v253[82];
    v185 = v253[81];
    v194 = v253[84];
    v196 = v253[80];
    v198 = v253[79];
    v200 = v253[76];
    v202 = v253[75];
    v204 = v253[73];
    v207 = v253[72];
    v210 = v253[70];
    v213 = v253[69];
    v217 = v253[66];
    v220 = v253[65];
    v223 = v253[64];
    v225 = v253[61];
    v177 = v253[57];
    v229 = v253[60];
    v232 = v253[55];
    v235 = v253[53];
    v238 = v253[50];
    v178 = v253[46];
    v241 = v253[47];
    v179 = v253[43];
    v180 = v253[44];

    sub_100022E54(v179, &unk_10007EFC0, &qword_10005BEB0);
    v182(v175, v176);
    v182(v174, v176);
    (*v261)(v178, v180);
    sub_100022E54(v177, &qword_10007F4C8, &qword_10005BED0);
    sub_100022E54(v185, &qword_10007F310, qword_10005BD58);

    v110 = v253[1];
  }

  return v110();
}

BOOL sub_10004FB54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16) < 1)
  {
    return 0;
  }

  ScoredFeedItem.score.getter();
  return v3 > 0.0;
}

uint64_t sub_10004FBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  if (*(a2 + 16) <= 0.0 && (v7 = ScoredFeedItem.feedItem.getter(), v8 = [v7 isEvergreen], v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v10 = ScoredFeedItem.feedItem.getter();
    v11 = NDManagedFeedItemPoolOptions.preferredFilterOptions.getter();
    v12 = objc_autoreleasePoolPush();
    sub_10004FE14(v10, v11, a5, &v14);
    objc_autoreleasePoolPop(v12);

    v9 = v14 ^ 1;
  }

  return v9 & 1;
}

BOOL sub_10004FC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a2 + 16) < 1)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(a3 + 16) <= 0.0)
  {
    return 0;
  }

  ScoredFeedItem.score.getter();
  return v5 > 0.0;
}

uint64_t sub_10004FD18()
{
  FeedItemAndScoreEntity.feedItem.getter();
  FeedItemAndScoreEntity.forYouScore.getter();
  dispatch thunk of Column.value.getter();

  if ((v1 & 1) == 0)
  {
    return ScoredFeedItem.init(feedItem:score:)();
  }

  __break(1u);
  return result;
}

BOOL sub_10004FD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = ScoredFeedItem.feedItem.getter();
  v6 = NDManagedFeedItemPoolOptions.preferredFilterOptions.getter();
  v7 = objc_autoreleasePoolPush();
  sub_10004FE14(v5, v6, a4, &v9);
  objc_autoreleasePoolPop(v7);

  return (v9 & 1) == 0;
}

uint64_t sub_10004FE14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v6 = a1;
  result = [a1 sourceChannelID];
  if (!result)
  {
    goto LABEL_35;
  }

  v9 = result;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if ((a2 & 0x200000) != 0)
  {
    v51 = a2;
    v12 = v6;
    result = [v6 articleID];
    if (!result)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v13 = result;
    v14 = a3[2];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    LOBYTE(v13) = sub_10002DAF8(v15, v17, v14);

    v6 = v12;
    a2 = v51;
    if (v13)
    {
      goto LABEL_34;
    }
  }

  if ((a2 & 0x100000) == 0)
  {
LABEL_8:
    if ((a2 & 0x20) == 0 || (sub_10002DAF8(v50, v11, a3[1]) & 1) == 0)
    {
      if ((a2 & 0x20000) != 0)
      {
        v26 = [v6 topicIDs];
        if (v26)
        {
          v27 = v26;
          static Array._conditionallyBridgeFromObjectiveC(_:result:)();
        }

        result = _swiftEmptyArrayStorage;
        v28 = _swiftEmptyArrayStorage[2];
        if (v28)
        {
          v45 = v11;
          v46 = a4;
          v29 = 0;
          v30 = a3[1];
          v31 = v30 + 56;
          v48 = v6;
          v49 = a3;
          v47 = _swiftEmptyArrayStorage[2];
          do
          {
            if (v29 >= *(result + 16))
            {
              __break(1u);
              goto LABEL_45;
            }

            if (*(v30 + 16))
            {
              v32 = result;
              v33 = &_swiftEmptyArrayStorage[2 * v29 + 4];
              v34 = *v33;
              v35 = v33[1];
              v36 = *(v30 + 40);
              Hasher.init(_seed:)();

              String.hash(into:)();
              v37 = Hasher._finalize()();
              v38 = -1 << *(v30 + 32);
              v39 = v37 & ~v38;
              if ((*(v31 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
              {
                v40 = ~v38;
                while (1)
                {
                  v41 = (*(v30 + 48) + 16 * v39);
                  v42 = *v41 == v34 && v41[1] == v35;
                  if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v39 = (v39 + 1) & v40;
                  if (((*(v31 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
                  {
                    goto LABEL_15;
                  }
                }

                v43 = 1;
                a4 = v46;
                goto LABEL_36;
              }

LABEL_15:

              v6 = v48;
              a3 = v49;
              result = v32;
              v28 = v47;
            }

            ++v29;
          }

          while (v29 != v28);

          a4 = v46;
          v11 = v45;
          if ((a2 & 0x4000) != 0)
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        }
      }

      if ((a2 & 0x4000) == 0)
      {
LABEL_32:
        if ((a2 & 0x20000000) != 0)
        {
          v44 = sub_10002DAF8(v50, v11, *a3);

          if ((v44 & 1) == 0)
          {
            result = [v6 storyType];
            if (result != 5)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
        }

        if ((a2 & 0x4000000000) == 0 || (result = FCFeedTransformationItemIsRecipe(), (result & 1) == 0))
        {
          v43 = 0;
          goto LABEL_36;
        }

LABEL_35:
        v43 = 1;
LABEL_36:
        *a4 = v43;
        return result;
      }

LABEL_31:
      if (sub_10002DAF8(v50, v11, *a3))
      {
        goto LABEL_32;
      }
    }

LABEL_34:

    goto LABEL_35;
  }

  v52 = a2;
  v18 = v6;
  result = [v6 articleID];
  if (result)
  {
    v19 = result;
    v20 = a3;
    v21 = a3[3];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = v21;
    a3 = v20;
    LOBYTE(v19) = sub_10002DAF8(v22, v24, v25);

    v6 = v18;
    a2 = v52;
    if (v19)
    {
      goto LABEL_34;
    }

    goto LABEL_8;
  }

LABEL_46:
  __break(1u);
  return result;
}

id FeedItemPoolManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1000503A0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for TaskPriority();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1000504B0(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initForWritingURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

unint64_t sub_1000505FC()
{
  result = qword_10007F498;
  if (!qword_10007F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F498);
  }

  return result;
}

uint64_t sub_100050650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017F58;

  return sub_100046FF8(a1, v4, v5, v7);
}

void *sub_10005074C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000516C0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100015140(&qword_10007F318, &qword_10005BD98);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100050854(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_10005182C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_100015140(&qword_10007F310, qword_10005BD58);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_10005098C()
{
  result = qword_10007F500;
  if (!qword_10007F500)
  {
    sub_100032974(&qword_10007F4C8, &qword_10005BED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F500);
  }

  return result;
}

uint64_t sub_1000509F8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100050A60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100015140(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100050AC8()
{
  result = qword_10007F508;
  if (!qword_10007F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F508);
  }

  return result;
}

uint64_t sub_100050B1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t initializeBufferWithCopyOfBuffer for FeedItemPoolManager.Errors(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FeedItemPoolManager.Errors(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FeedItemPoolManager.Errors(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100050BC8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100050BE4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100050C38()
{
  result = sub_100050C58();
  qword_1000817C8 = result;
  return result;
}

uint64_t sub_100050C58()
{
  v0 = type metadata accessor for Container.Environment();
  v58 = *(v0 - 8);
  v59 = v0;
  v1 = *(v58 + 64);
  (__chkstk_darwin)();
  v60 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  sub_100015140(&qword_10007F540, &qword_10005BF78);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10005A4E0;
  v12 = objc_opt_self();
  v13 = [v12 newsdDocumentsURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [v12 newsdCachesURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = objc_allocWithZone(NDAssembly);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  [v15 initWithDocumentDirectoryFileURL:v18 cacheDirectoryFileURL:v20];

  v22 = *(v4 + 8);
  v22(v8, v3);
  v22(v10, v3);
  v23 = type metadata accessor for BridgedAssembly();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = BridgedAssembly.init(_:)();
  *(v11 + 56) = v23;
  *(v11 + 64) = &protocol witness table for BridgedAssembly;
  *(v11 + 32) = v26;
  v27 = [v12 newsdCachesURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = type metadata accessor for NotificationsAssembly();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  (*(v4 + 32))(v31 + OBJC_IVAR____TtC5newsd21NotificationsAssembly_cacheDirectoryFileURL, v10, v3);
  *(v11 + 96) = v28;
  *(v11 + 104) = sub_1000514A0(&qword_10007F548, type metadata accessor for NotificationsAssembly);
  *(v11 + 72) = v31;
  v32 = type metadata accessor for PersonalizationAssembly();
  v33 = swift_allocObject();
  *(v11 + 136) = v32;
  *(v11 + 144) = sub_1000514A0(&qword_10007F550, type metadata accessor for PersonalizationAssembly);
  *(v11 + 112) = v33;
  v34 = type metadata accessor for PrivateDataAssembly();
  v35 = swift_allocObject();
  *(v11 + 176) = v34;
  *(v11 + 184) = sub_1000514A0(&qword_10007F558, type metadata accessor for PrivateDataAssembly);
  *(v11 + 152) = v35;
  v36 = type metadata accessor for ServiceAssembly();
  v37 = swift_allocObject();
  *(v11 + 216) = v36;
  *(v11 + 224) = sub_1000514A0(&qword_10007F560, type metadata accessor for ServiceAssembly);
  *(v11 + 192) = v37;
  v38 = type metadata accessor for LiveActivityAssembly();
  v39 = swift_allocObject();
  v41 = *(v11 + 16);
  v40 = *(v11 + 24);
  if (v41 >= v40 >> 1)
  {
    v11 = sub_1000516E4((v40 > 1), v41 + 1, 1, v11, &qword_10007F540, &qword_10005BF78, &unk_10007F590, &qword_10005BF88);
  }

  v62 = v38;
  v63 = sub_1000514A0(&qword_10007F568, type metadata accessor for LiveActivityAssembly);
  *&v61 = v39;
  *(v11 + 16) = v41 + 1;
  sub_10000390C(&v61, v11 + 40 * v41 + 32);
  v42 = type metadata accessor for Assembly();
  v43 = [objc_allocWithZone(v42) init];
  v45 = *(v11 + 16);
  v44 = *(v11 + 24);
  if (v45 >= v44 >> 1)
  {
    v11 = sub_1000516E4((v44 > 1), v45 + 1, 1, v11, &qword_10007F540, &qword_10005BF78, &unk_10007F590, &qword_10005BF88);
  }

  v62 = v42;
  v63 = sub_1000514A0(&qword_10007F570, &type metadata accessor for Assembly);
  *&v61 = v43;
  *(v11 + 16) = v45 + 1;
  sub_10000390C(&v61, v11 + 40 * v45 + 32);
  sub_100015140(&qword_10007F578, &qword_10005BF80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_10005A9A0;
  v47 = type metadata accessor for Assembly();
  v48 = [objc_allocWithZone(v47) init];
  *(v46 + 56) = v47;
  *(v46 + 64) = sub_1000514A0(&qword_10007F580, &type metadata accessor for Assembly);
  *(v46 + 32) = v48;
  v49 = type metadata accessor for Assembly();
  v50 = [objc_allocWithZone(v49) init];
  *(v46 + 96) = v49;
  *(v46 + 104) = sub_1000514A0(&qword_10007F588, &type metadata accessor for Assembly);
  *(v46 + 72) = v50;
  v51 = type metadata accessor for SingletonPool();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  SingletonPool.init()();
  (*(v58 + 104))(v60, enum case for Container.Environment.normal(_:), v59);
  v54 = type metadata accessor for Container();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  return Container.init(bundleAssemblies:assemblies:singletonPool:environment:)();
}

uint64_t sub_1000514A0(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_1000514E8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100015140(&qword_10007F338, &qword_10005BDB8);
  v10 = *(type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource() - 8);
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
  v15 = *(type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource() - 8);
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

void *sub_1000516E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100015140(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100015140(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_10005182C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100015140(&qword_10007F4F8, &unk_10005BF00);
  v10 = *(sub_100015140(&qword_10007F310, qword_10005BD58) - 8);
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
  v15 = *(sub_100015140(&qword_10007F310, qword_10005BD58) - 8);
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

char *sub_100051A1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100015140(&qword_10007F340, &qword_10005BDC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_100051B28()
{
  v0 = objc_allocWithZone(type metadata accessor for ProxyFeedPersonalizer());

  return [v0 init];
}

uint64_t sub_100051B84()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  sub_100015140(&qword_10007F638, &qword_10005BFD8);
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v1 + 104))(v4, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  return (*(v1 + 8))(v4, v0);
}

void sub_100051CD8()
{
  v0 = [objc_allocWithZone(COMAPPLEFELDSPARPROTOCOLLIVERPOOLNotabilityScores) init];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(NTPBFeedItem) init];
    if (v2)
    {
      v3 = v2;
      v4 = String._bridgeToObjectiveC()();
      [v3 setArticleID:v4];

      v5 = objc_allocWithZone(NTPBNotificationItem);
      v6 = String._bridgeToObjectiveC()();
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      isa = Array._bridgeToObjectiveC()().super.isa;
      LODWORD(v12) = 0;
      LODWORD(v11) = 7;
      v10 = [v5 initWithIdentifier:v6 canonicalID:v7 clusterID:v8 notabilityScores:v1 suppressIfFollowingTagIDs:isa targetMinNewsVersion:0 targetDeviceTypes:v11 feedItem:v3 source:v12 algoID:0];

      qword_1000817D0 = v10;
      qword_1000817D8 = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100051E3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100051E84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100051F14()
{
  type metadata accessor for MyArticlesRequest();
  v1 = static MyArticlesRequest.lastRequestIssued.getter();
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = MyArticlesRequest.copy(with:)();

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    sub_100052008();
    swift_allocError();
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

unint64_t sub_100052008()
{
  result = qword_10007F6D8;
  if (!qword_10007F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F6D8);
  }

  return result;
}

unint64_t sub_100052070()
{
  result = qword_10007F6E0;
  if (!qword_10007F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F6E0);
  }

  return result;
}

void sub_1000520C4(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100005388();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100052230(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100005388();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000522A8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "client", v6, 2u);
}

void sub_100052370()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentContext", v6, 2u);
}

void sub_100052438()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fetchQueue", v6, 2u);
}

void sub_100052500()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v6, 2u);
}

void sub_1000525C4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "parameters", v6, 2u);
}

void sub_100052688()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v6, 2u);
}

void sub_10005274C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "operationInfo", v6, 2u);
}

void sub_100052810()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "syncCompletion", v6, 2u);
}

void sub_1000528D4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "analyticsElements", v6, 2u);
}

void sub_100052998()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_100052A5C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "analyticsElement", v6, 2u);
}

void sub_100052B20()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_100052BE4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "service"];
  *buf = 136315906;
  v2 = "[NDAnalyticsServiceListenerDelegate initWithService:]";
  v3 = 2080;
  v4 = "NDAnalyticsServiceListenerDelegate.m";
  v5 = 1024;
  v6 = 29;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100052CD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 pendingMessages];
  v6 = [v5 count];
  v7 = [*(a1 + 32) connectionDescription];
  v8 = 134218242;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "consumer proxy lost connection, will drop %lu messages, connection=%{public}@", &v8, 0x16u);
}

void sub_100052E18(uint64_t a1)
{
  sub_1000081E8(a1, __stack_chk_guard);
  sub_1000081DC();
  sub_1000081C0(&_mh_execute_header, v1, v2, "failed to save last known requests to store with error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100052EEC(uint64_t a1)
{
  sub_1000081E8(a1, __stack_chk_guard);
  sub_1000081DC();
  sub_1000081C0(&_mh_execute_header, v1, v2, "failed to save last known limits to store with error: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100052F54()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
  *buf = 136315906;
  v2 = "[NDContentDownloadService initWithContentContext:ANFHelper:]";
  v3 = 2080;
  v4 = "NDContentDownloadService.m";
  v5 = 1024;
  v6 = 69;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100053040()
{
  v0 = [[NSString alloc] initWithFormat:@"replacing XPC connection while a consumer is already active"];
  sub_10000C7B8();
  sub_10000C7A8();
  sub_10000C794();
  sub_10000C7C8(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000530F8()
{
  v0 = [[NSString alloc] initWithFormat:@"registering a consumer without an XPC connection"];
  sub_10000C7B8();
  sub_10000C7A8();
  sub_10000C794();
  sub_10000C7C8(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000531B0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to clear AV asset downloads directory, error=%{public}@", &v2, 0xCu);
}

void sub_100053250()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  *buf = 136315906;
  v2 = "[NDURLResolutionService _determineWhetherResolutionIsAllowedWithCompletion:]";
  v3 = 2080;
  v4 = "NDURLResolutionService.m";
  v5 = 1024;
  v6 = 110;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10005333C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "URLResolutionService != nil"];
  *buf = 136315906;
  v2 = "[NDURLResolutionListenerDelegate initWithURLResolutionService:]";
  v3 = 2080;
  v4 = "NDURLResolutionListenerDelegate.m";
  v5 = 1024;
  v6 = 31;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10005346C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to update notification pool refresh task, error=%{public}@", &v2, 0xCu);
}

void sub_1000534E4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to submit notification pool refresh task, error=%{public}@", &v2, 0xCu);
}

void sub_10005355C(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_1000127E0();
  sub_1000127A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000535D8(uint64_t a1)
{
  sub_1000127D4(a1, __stack_chk_guard);
  sub_100012790();
  sub_1000127B8(&_mh_execute_header, v1, v2, "content archive store failed to encode archive for contentID=%{public}@, error=%{public}@", v3, v4, v5, v6, v7);
}

void sub_100053640(uint64_t a1)
{
  sub_1000127D4(a1, __stack_chk_guard);
  sub_100012790();
  sub_1000127B8(&_mh_execute_header, v1, v2, "content archive store failed to add archive for contentID=%{public}@, error=%{public}@", v3, v4, v5, v6, v7);
}

void sub_1000536A8(uint64_t a1)
{
  sub_1000127D4(a1, __stack_chk_guard);
  sub_100012790();
  sub_1000127B8(&_mh_execute_header, v1, v2, "content archive store failed to encode manifest for contentID=%{public}@, error=%{public}@", v3, v4, v5, v6, v7);
}

void sub_100053710(uint64_t a1)
{
  sub_1000127D4(a1, __stack_chk_guard);
  sub_100012790();
  sub_1000127B8(&_mh_execute_header, v1, v2, "content archive store failed to add manifest for contentID=%{public}@, error=%{public}@", v3, v4, v5, v6, v7);
}

void sub_100053778(uint64_t a1)
{
  v1 = *(sub_1000127D4(a1, __stack_chk_guard) + 48);
  sub_100012790();
  v6 = v2;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "content archive store failed to add blob for name=%{public}@, contentID=%{public}@, error=%{public}@", v5, 0x20u);
}

void sub_1000537F8(uint64_t a1)
{
  sub_1000127D4(a1, __stack_chk_guard);
  sub_100012790();
  sub_1000127B8(&_mh_execute_header, v1, v2, "content archive store failed to write completion token for contentID=%{public}@, error=%{public}@", v3, v4, v5, v6, v7);
}

void sub_100053860()
{
  sub_1000127E0();
  sub_1000127A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000538D8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  sub_100012790();
  sub_1000127A8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100053954()
{
  sub_1000127E0();
  sub_1000127A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000539CC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
  *buf = 136315906;
  v2 = "[NDTodayServiceListenerDelegate initWithContentContext:fetchQueue:]";
  v3 = 2080;
  v4 = "NDTodayServiceListenerDelegate.m";
  v5 = 1024;
  sub_1000065D4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100053AAC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "fetchQueue"];
  *buf = 136315906;
  v2 = "[NDTodayServiceListenerDelegate initWithContentContext:fetchQueue:]";
  v3 = 2080;
  v4 = "NDTodayServiceListenerDelegate.m";
  v5 = 1024;
  sub_1000065D4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:)()
{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

uint64_t RegistrationContainer.register<A>(_:name:factory:)()
{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t type metadata accessor for Assembly()
{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}