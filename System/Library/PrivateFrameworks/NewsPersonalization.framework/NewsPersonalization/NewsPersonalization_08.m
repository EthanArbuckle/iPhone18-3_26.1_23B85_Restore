uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagIgnore.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6BDF178(v2, &v11 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BCEDBC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6BDF178(a1, &v11 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore() + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagIgnore.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6BCF1D4;
  }

  if (swift_getEnumCaseMultiPayload() != 19)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  return sub_1C6BCF1D4;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.notificationVended.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = sub_1C6D789A0();
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BCF400@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = sub_1C6D789A0();
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.notificationVended.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = sub_1C6D789A0();
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BCF8A4;
  }

  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  return sub_1C6BCF8A4;
}

void sub_1C6BCF8E8(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_1C6BDF25C((*a1)[3], v10, a5);
    sub_1C6BDF108(v13, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_1C6BC7690(v11, a6);
  }

  else
  {
    sub_1C6BDF108(**a1, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  v4 = a1 + *(v3 + 20);
  sub_1C6D78A30();
  v5 = *(v3 + 24);
  v6 = sub_1C6D789A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1C6BCFC84()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7608);
  __swift_project_value_buffer(v0, qword_1EC1D7608);
  sub_1C6BC6FE4(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C6D82CB0;
  v5 = v50 + v4;
  v6 = v50 + v4 + *(v2 + 56);
  *(v50 + v4) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v50 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "articleSeen";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v50 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "articleVisited";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v50 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "articleRead";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v50 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "articleShared";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v50 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "articleLiked";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v50 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "articleDisliked";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  v21 = (v50 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "articleSaved";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v9();
  v23 = v50 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "tagMuted";
  *(v23 + 8) = 8;
  *(v23 + 16) = 2;
  v9();
  v24 = (v50 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "tagUnmuted";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v9();
  v26 = (v50 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "tagFollowed";
  *(v27 + 1) = 11;
  v27[16] = 2;
  v9();
  v28 = (v50 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "tagUnfollowed";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v9();
  v30 = (v50 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "tagFeedView";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v9();
  v32 = (v50 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "trackVisited";
  *(v33 + 1) = 12;
  v33[16] = 2;
  v9();
  v34 = (v50 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 15;
  *v35 = "trackListened";
  *(v35 + 1) = 13;
  v35[16] = 2;
  v9();
  v36 = (v50 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 16;
  *v37 = "trackFinished";
  *(v37 + 1) = 13;
  v37[16] = 2;
  v9();
  v38 = v50 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 17;
  *v38 = "articleUnliked";
  *(v38 + 8) = 14;
  *(v38 + 16) = 2;
  v9();
  v39 = (v50 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 18;
  *v40 = "articleUndisliked";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v9();
  v41 = (v50 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 19;
  *v42 = "articleUnsaved";
  *(v42 + 1) = 14;
  v42[16] = 2;
  v9();
  v43 = (v50 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 20;
  *v44 = "sportsTagSeen";
  *(v44 + 1) = 13;
  v44[16] = 2;
  v9();
  v45 = (v50 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 21;
  *v46 = "tagIgnore";
  *(v46 + 1) = 9;
  v46[16] = 2;
  v9();
  v47 = (v50 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 22;
  *v48 = "notificationVended";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEvent._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7608);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C6BD06B0();
        break;
      case 2:
        sub_1C6BD0764(v5, a1, a2, a3);
        break;
      case 3:
        sub_1C6BD0D98(v5, a1, a2, a3);
        break;
      case 4:
        sub_1C6BD13E8(v5, a1, a2, a3);
        break;
      case 5:
        sub_1C6BD1A38(v5, a1, a2, a3);
        break;
      case 6:
        sub_1C6BD2088(v5, a1, a2, a3);
        break;
      case 7:
        sub_1C6BD26D8(v5, a1, a2, a3);
        break;
      case 8:
        sub_1C6BD2D28(v5, a1, a2, a3);
        break;
      case 9:
        sub_1C6BD3378(v5, a1, a2, a3);
        break;
      case 10:
        sub_1C6BD39C8(v5, a1, a2, a3);
        break;
      case 11:
        sub_1C6BD4018(v5, a1, a2, a3);
        break;
      case 12:
        sub_1C6BD4668(v5, a1, a2, a3);
        break;
      case 13:
        sub_1C6BD4CB8(v5, a1, a2, a3);
        break;
      case 14:
        sub_1C6BD5308(v5, a1, a2, a3);
        break;
      case 15:
        sub_1C6BD5958(v5, a1, a2, a3);
        break;
      case 16:
        sub_1C6BD5FA8(v5, a1, a2, a3);
        break;
      case 17:
        sub_1C6BD65F8(v5, a1, a2, a3);
        break;
      case 18:
        sub_1C6BD6C48(v5, a1, a2, a3);
        break;
      case 19:
        sub_1C6BD7298(v5, a1, a2, a3);
        break;
      case 20:
        sub_1C6BD78E8(v5, a1, a2, a3);
        break;
      case 21:
        sub_1C6BD7F38(v5, a1, a2, a3);
        break;
      case 22:
        sub_1C6BD8588(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C6BD06B0()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  sub_1C6D789A0();
  sub_1C6BDEC00(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BD0764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v47 = a2;
  v50 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - v21;
  sub_1C6BC6FE4(0, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v38 - v27;
  v43 = v5;
  v29 = *(v5 + 56);
  v46 = v4;
  v40 = v29;
  v29(&v38 - v27, 1, 1, v4);
  sub_1C6BDF178(v50, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v39 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_5:
    v31 = v46;
    goto LABEL_6;
  }

  sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_5;
  }

  sub_1C6BDF108(v28, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  v35 = v41;
  sub_1C6BC7B1C(v20, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  sub_1C6BC7B1C(v35, v28, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  v31 = v46;
  v40(v28, 0, 1, v46);
LABEL_6:
  v32 = v44;
  sub_1C6BDEC00(qword_1EDCE3808, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  v33 = v45;
  sub_1C6D78BB0();
  if (v33)
  {
    return sub_1C6BDF108(v28, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  }

  sub_1C6BDF178(v28, v32, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  if ((*(v43 + 48))(v32, 1, v31) == 1)
  {
    sub_1C6BDF108(v28, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    return sub_1C6BDF108(v32, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  }

  else
  {
    v36 = v42;
    sub_1C6BC7B1C(v32, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v28, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    v37 = v50;
    sub_1C6BDF108(v50, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v36, v37, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    swift_storeEnumTagMultiPayload();
    return (*(v39 + 56))(v37, 0, 1, v15);
  }
}

uint64_t sub_1C6BD0D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v45;
      sub_1C6BDF108(v45, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(qword_1EDCE3030, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  }

  sub_1C6BDF178(v31, v34, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    return sub_1C6BDF108(v34, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD13E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v31 = v45;
      sub_1C6BDF108(v45, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(qword_1EDCE38C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  }

  sub_1C6BDF178(v31, v34, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    return sub_1C6BDF108(v34, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD1A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    return sub_1C6BDF108(v34, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD2088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7640, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    return sub_1C6BDF108(v34, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD26D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D70D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    return sub_1C6BDF108(v34, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD2D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7648, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    return sub_1C6BDF108(v34, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD3378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7650, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    return sub_1C6BDF108(v34, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD39C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7098, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    return sub_1C6BDF108(v34, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD4018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7658, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    return sub_1C6BDF108(v34, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD4668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7660, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    return sub_1C6BDF108(v34, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD4CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      v31 = v45;
      sub_1C6BDF108(v45, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(qword_1EDCE3758, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  }

  sub_1C6BDF178(v31, v34, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    return sub_1C6BDF108(v34, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7668, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    return sub_1C6BDF108(v34, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD5958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7670, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    return sub_1C6BDF108(v34, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD5FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7678, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    return sub_1C6BDF108(v34, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD65F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    return sub_1C6BDF108(v34, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD6C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7688, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    return sub_1C6BDF108(v34, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D68B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    return sub_1C6BDF108(v34, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD78E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7690, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    return sub_1C6BDF108(v34, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD7F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7558, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    return sub_1C6BDF108(v34, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t sub_1C6BD8588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1C6BC6FE4(0, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v43 = v5;
  v27 = *(v5 + 56);
  v45 = &v39 - v28;
  v47 = v4;
  v27();
  sub_1C6BDF178(v51, v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_1C6BDF108(v14, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
  }

  else
  {
    sub_1C6BC7B1C(v14, v22, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v22, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v30 = v15;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      v31 = v45;
      sub_1C6BDF108(v45, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      v32 = v42;
      sub_1C6BC7B1C(v20, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      sub_1C6BC7B1C(v32, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      v33 = v47;
      (v27)(v31, 0, 1, v47);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v33 = v47;
  v31 = v45;
LABEL_7:
  v34 = v44;
  sub_1C6BDEC00(&qword_1EC1D7698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  v35 = v46;
  sub_1C6D78BB0();
  if (v35)
  {
    return sub_1C6BDF108(v31, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  }

  sub_1C6BDF178(v31, v34, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  if ((*(v43 + 48))(v34, 1, v33) == 1)
  {
    sub_1C6BDF108(v31, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    return sub_1C6BDF108(v34, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  }

  else
  {
    v37 = v41;
    sub_1C6BC7B1C(v34, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    if (v29 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v31, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    v38 = v51;
    sub_1C6BDF108(v51, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v37, v38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v30);
  }
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  result = sub_1C6BD9068(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6BDF178(v3, v11, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_1C6BD9518(v3, a1, a2, a3);
          break;
        case 2u:
          sub_1C6BD9780(v3, a1, a2, a3);
          break;
        case 3u:
          sub_1C6BD99E8(v3, a1, a2, a3);
          break;
        case 4u:
          sub_1C6BD9C50(v3, a1, a2, a3);
          break;
        case 5u:
          sub_1C6BD9EB8(v3, a1, a2, a3);
          break;
        case 6u:
          sub_1C6BDA120(v3, a1, a2, a3);
          break;
        case 7u:
          sub_1C6BDA388(v3, a1, a2, a3);
          break;
        case 8u:
          sub_1C6BDA5F0(v3, a1, a2, a3);
          break;
        case 9u:
          sub_1C6BDA858(v3, a1, a2, a3);
          break;
        case 0xAu:
          sub_1C6BDAAC0(v3, a1, a2, a3);
          break;
        case 0xBu:
          sub_1C6BDAD28(v3, a1, a2, a3);
          break;
        case 0xCu:
          sub_1C6BDAF90(v3, a1, a2, a3);
          break;
        case 0xDu:
          sub_1C6BDB1F8(v3, a1, a2, a3);
          break;
        case 0xEu:
          sub_1C6BDB460(v3, a1, a2, a3);
          break;
        case 0xFu:
          sub_1C6BDB6C8(v3, a1, a2, a3);
          break;
        case 0x10u:
          sub_1C6BDB930(v3, a1, a2, a3);
          break;
        case 0x11u:
          sub_1C6BDBB98(v3, a1, a2, a3);
          break;
        case 0x12u:
          sub_1C6BDBE00(v3, a1, a2, a3);
          break;
        case 0x13u:
          sub_1C6BDC068(v3, a1, a2, a3);
          break;
        case 0x14u:
          sub_1C6BDC2D0(v3, a1, a2, a3);
          break;
        default:
          sub_1C6BD92B4(v3, a1, a2, a3);
          break;
      }

      sub_1C6BC7690(v11, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    }

    v14 = v3 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BD9068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AA900];
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6BDF178(a1 + *(v15 + 24), v9, &qword_1EDCE66F0, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6BDF108(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6BDEC00(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1C6BD92B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    sub_1C6BDEC00(qword_1EDCE3808, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BD9518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    sub_1C6BDEC00(qword_1EDCE3030, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BD9780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    sub_1C6BDEC00(qword_1EDCE38C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BD99E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    sub_1C6BDEC00(&qword_1EC1D7638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BD9C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    sub_1C6BDEC00(&qword_1EC1D7640, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BD9EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    sub_1C6BDEC00(&qword_1EC1D70D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDA120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    sub_1C6BDEC00(&qword_1EC1D7648, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDA388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    sub_1C6BDEC00(&qword_1EC1D7650, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDA5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    sub_1C6BDEC00(&qword_1EC1D7098, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDA858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    sub_1C6BDEC00(&qword_1EC1D7658, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDAAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    sub_1C6BDEC00(&qword_1EC1D7660, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDAD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    sub_1C6BDEC00(qword_1EDCE3758, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDAF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    sub_1C6BDEC00(&qword_1EC1D7668, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDB1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    sub_1C6BDEC00(&qword_1EC1D7670, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDB460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    sub_1C6BDEC00(&qword_1EC1D7678, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDB6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    sub_1C6BDEC00(&qword_1EC1D7680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDB930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    sub_1C6BDEC00(&qword_1EC1D7688, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDBB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    sub_1C6BDEC00(&qword_1EC1D68B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDBE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    sub_1C6BDEC00(&qword_1EC1D7690, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDC068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    sub_1C6BDEC00(&qword_1EC1D7558, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDC2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    sub_1C6BDEC00(&qword_1EC1D7698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6BDEC00(&qword_1EC1D7620, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BDC5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  sub_1C6D78A30();
  v6 = *(a1 + 24);
  v7 = sub_1C6D789A0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6BDC6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BDEC00(&qword_1EC1D7630, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BDC74C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7608);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BDC7F4(uint64_t a1)
{
  v2 = sub_1C6BDEC00(qword_1EDCE3E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BDC860()
{
  sub_1C6BDEC00(qword_1EDCE3E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B30Storage_CompressedSessionEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v50 - v9;
  sub_1C6BDF034(0, &qword_1EC1D6CB0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v54 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v50 - v12;
  v13 = sub_1C6D789A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69AA900];
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v6);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v50 - v21;
  sub_1C6BDF034(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v18);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v50 - v26;
  v52 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  v28 = *(v52 + 24);
  v29 = *(v24 + 56);
  v58 = a1;
  sub_1C6BDF178(a1 + v28, v27, &qword_1EDCE66F0, v18);
  v30 = v59 + v28;
  v31 = v59;
  sub_1C6BDF178(v30, &v27[v29], &qword_1EDCE66F0, v18);
  v32 = *(v14 + 48);
  if (v32(v27, 1, v13) != 1)
  {
    sub_1C6BDF178(v27, v22, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v32(&v27[v29], 1, v13) != 1)
    {
      (*(v14 + 32))(v17, &v27[v29], v13);
      sub_1C6BDEC00(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
      v37 = sub_1C6D79560();
      v38 = *(v14 + 8);
      v38(v17, v13);
      v38(v22, v13);
      sub_1C6BDF108(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v14 + 8))(v22, v13);
LABEL_6:
    v33 = &qword_1EC1D6C50;
    v34 = &qword_1EDCE66F0;
    v35 = MEMORY[0x1E69AA900];
    v36 = v27;
LABEL_14:
    sub_1C6BDF0AC(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v27[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6BDF108(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
LABEL_8:
  v39 = *(v54 + 48);
  v40 = v57;
  sub_1C6BDF178(v58, v57, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BDF178(v31, v40 + v39, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v41 = v56;
  v42 = *(v55 + 48);
  if (v42(v40, 1, v56) == 1)
  {
    if (v42(v40 + v39, 1, v41) == 1)
    {
      sub_1C6BDF108(v40, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_18:
      v49 = *(v52 + 20);
      sub_1C6D78A40();
      sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v44 = sub_1C6D79560();
      return v44 & 1;
    }

    goto LABEL_13;
  }

  v43 = v53;
  sub_1C6BDF178(v40, v53, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  if (v42(v40 + v39, 1, v41) == 1)
  {
    sub_1C6BC7690(v43, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_13:
    v33 = &qword_1EC1D6CB0;
    v34 = qword_1EDCE3EB8;
    v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event;
    v36 = v40;
    goto LABEL_14;
  }

  v46 = v40 + v39;
  v47 = v51;
  sub_1C6BC7B1C(v46, v51, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v48 = _s19NewsPersonalization010Com_Apple_a1_B30Storage_CompressedSessionEventV06OneOf_H0O2eeoiySbAE_AEtFZ_0(v43, v47);
  sub_1C6BC7690(v47, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BC7690(v43, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BDF108(v40, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  if (v48)
  {
    goto LABEL_18;
  }

LABEL_15:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B30Storage_CompressedSessionEventV06OneOf_H0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v205 = a2;
  v206 = a1;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v188 = (&v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore();
  v5 = *(*(v168 - 8) + 64);
  MEMORY[0x1EEE9AC00](v168);
  v189 = (&v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v187 = (&v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v186 = (&v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v185 = (&v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v184 = (&v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v183 = (&v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v182 = (&v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v181 = (&v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v179 = (&v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed();
  v31 = *(*(v167 - 8) + 64);
  MEMORY[0x1EEE9AC00](v167);
  v180 = (&v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed();
  v33 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v178 = (&v164 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted();
  v35 = *(*(v165 - 8) + 64);
  MEMORY[0x1EEE9AC00](v165);
  v177 = (&v164 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted();
  v37 = *(*(v164 - 8) + 64);
  MEMORY[0x1EEE9AC00](v164);
  v176 = (&v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v175 = (&v164 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v174 = (&v164 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v173 = (&v164 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v172 = &v164 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v171 = (&v164 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v170 = (&v164 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v169 = (&v164 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v203 = (&v164 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = MEMORY[0x1EEE9AC00](v62);
  v204 = (&v164 - v65);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v202 = (&v164 - v67);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v201 = (&v164 - v69);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v199 = (&v164 - v71);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v197 = (&v164 - v73);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v195 = (&v164 - v75);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v193 = (&v164 - v77);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v192 = (&v164 - v79);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v191 = (&v164 - v81);
  v82 = MEMORY[0x1EEE9AC00](v80);
  v200 = (&v164 - v83);
  v84 = MEMORY[0x1EEE9AC00](v82);
  v198 = (&v164 - v85);
  v86 = MEMORY[0x1EEE9AC00](v84);
  v196 = (&v164 - v87);
  v88 = MEMORY[0x1EEE9AC00](v86);
  v194 = (&v164 - v89);
  v90 = MEMORY[0x1EEE9AC00](v88);
  v190 = (&v164 - v91);
  v92 = MEMORY[0x1EEE9AC00](v90);
  v94 = (&v164 - v93);
  v95 = MEMORY[0x1EEE9AC00](v92);
  v97 = (&v164 - v96);
  v98 = MEMORY[0x1EEE9AC00](v95);
  v100 = &v164 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98);
  v103 = (&v164 - v102);
  v104 = MEMORY[0x1EEE9AC00](v101);
  v106 = (&v164 - v105);
  MEMORY[0x1EEE9AC00](v104);
  v108 = (&v164 - v107);
  sub_1C6BDF1F8();
  v110 = *(*(v109 - 8) + 64);
  v111 = MEMORY[0x1EEE9AC00](v109 - 8);
  v113 = &v164 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *(v111 + 56);
  sub_1C6BDF25C(v206, v113, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v206 = v114;
  sub_1C6BDF25C(v205, &v113[v114], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C6BDF25C(v113, v106, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v141 = v206;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v142 = v170;
        sub_1C6BC7B1C(&v113[v141], v170, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleVisitedV2eeoiySbAC_ACtFZ_0(v106, v142);
        v134 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited;
        sub_1C6BC7690(v142, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
        v125 = v106;
        goto LABEL_43;
      }

      v116 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited;
      v117 = v106;
      goto LABEL_80;
    case 2u:
      sub_1C6BDF25C(v113, v103, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v132 = v206;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v133 = v171;
        sub_1C6BC7B1C(&v113[v132], v171, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventArticleReadV2eeoiySbAC_ACtFZ_0(v103, v133);
        v134 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead;
        sub_1C6BC7690(v133, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
        v125 = v103;
        goto LABEL_43;
      }

      v160 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead;
      goto LABEL_79;
    case 3u:
      sub_1C6BDF25C(v113, v100, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v136 = v206;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v137 = v172;
        sub_1C6BC7B1C(&v113[v136], v172, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventArticleSharedV2eeoiySbAC_ACtFZ_0(v100, v137);
        v134 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared;
        sub_1C6BC7690(v137, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
        v125 = v100;
        goto LABEL_43;
      }

      v116 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared;
      v117 = v100;
      goto LABEL_80;
    case 4u:
      sub_1C6BDF25C(v113, v97, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v123 = v206;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v124 = v173;
        sub_1C6BC7B1C(&v113[v123], v173, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventArticleLikedV2eeoiySbAC_ACtFZ_0(v97, v124);
        sub_1C6BC7690(v124, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
        v125 = v97;
        v126 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked;
        goto LABEL_44;
      }

      v116 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked;
      v117 = v97;
      goto LABEL_80;
    case 5u:
      sub_1C6BDF25C(v113, v94, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v145 = v206;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v119 = v174;
        sub_1C6BC7B1C(&v113[v145], v174, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B45Storage_CompressedSessionEventArticleDislikedV2eeoiySbAC_ACtFZ_0(v94, v119);
        v120 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked;
        goto LABEL_42;
      }

      v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked;
      goto LABEL_75;
    case 6u:
      v94 = v190;
      sub_1C6BDF25C(v113, v190, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v147 = v206;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v119 = v175;
        sub_1C6BC7B1C(&v113[v147], v175, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventArticleSavedV2eeoiySbAC_ACtFZ_0(v94, v119);
        v120 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved;
        goto LABEL_42;
      }

      v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved;
      goto LABEL_75;
    case 7u:
      v103 = v194;
      sub_1C6BDF25C(v113, v194, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v138 = v206;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v160 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted;
        goto LABEL_79;
      }

      v139 = v176;
      sub_1C6BC7B1C(&v113[v138], v176, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      if (*v103 == *v139)
      {
        v140 = *(v164 + 20);
        sub_1C6D78A40();
        sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        LOBYTE(v140) = sub_1C6D79560();
        sub_1C6BC7690(v139, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
        if (v140)
        {
          v131 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted;
          goto LABEL_57;
        }
      }

      else
      {
        sub_1C6BC7690(v139, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      }

      v163 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted;
      goto LABEL_93;
    case 8u:
      v103 = v196;
      sub_1C6BDF25C(v113, v196, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v153 = v206;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v160 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted;
        goto LABEL_79;
      }

      v154 = v177;
      sub_1C6BC7B1C(&v113[v153], v177, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      if (*v103 == *v154)
      {
        v155 = *(v165 + 20);
        sub_1C6D78A40();
        sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        LOBYTE(v155) = sub_1C6D79560();
        sub_1C6BC7690(v154, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
        if (v155)
        {
          v131 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted;
          goto LABEL_57;
        }
      }

      else
      {
        sub_1C6BC7690(v154, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      }

      v163 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted;
      goto LABEL_93;
    case 9u:
      v103 = v198;
      sub_1C6BDF25C(v113, v198, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v128 = v206;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v160 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed;
        goto LABEL_79;
      }

      v129 = v178;
      sub_1C6BC7B1C(&v113[v128], v178, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      if (*v103 == *v129)
      {
        v130 = *(v166 + 20);
        sub_1C6D78A40();
        sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        LOBYTE(v130) = sub_1C6D79560();
        sub_1C6BC7690(v129, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
        if (v130)
        {
          v131 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed;
          goto LABEL_57;
        }
      }

      else
      {
        sub_1C6BC7690(v129, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      }

      v163 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed;
      goto LABEL_93;
    case 0xAu:
      v103 = v200;
      sub_1C6BDF25C(v113, v200, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v150 = v206;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v160 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed;
        goto LABEL_79;
      }

      v151 = v180;
      sub_1C6BC7B1C(&v113[v150], v180, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      if (*v103 == *v151)
      {
        v152 = *(v167 + 20);
        sub_1C6D78A40();
        sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        LOBYTE(v152) = sub_1C6D79560();
        sub_1C6BC7690(v151, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
        if (v152)
        {
          v131 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed;
          goto LABEL_57;
        }
      }

      else
      {
        sub_1C6BC7690(v151, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      }

      v163 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed;
      goto LABEL_93;
    case 0xBu:
      v94 = v191;
      sub_1C6BDF25C(v113, v191, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v122 = v206;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v119 = v179;
        sub_1C6BC7B1C(&v113[v122], v179, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventTagFeedViewV2eeoiySbAC_ACtFZ_0(v94, v119);
        v120 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView;
        goto LABEL_42;
      }

      v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView;
      goto LABEL_75;
    case 0xCu:
      v94 = v192;
      sub_1C6BDF25C(v113, v192, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v127 = v206;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v119 = v181;
        sub_1C6BC7B1C(&v113[v127], v181, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventTrackVisitedV2eeoiySbAC_ACtFZ_0(v94, v119);
        v120 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited;
        goto LABEL_42;
      }

      v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited;
      goto LABEL_75;
    case 0xDu:
      v94 = v193;
      sub_1C6BDF25C(v113, v193, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v146 = v206;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v119 = v182;
        sub_1C6BC7B1C(&v113[v146], v182, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventTrackListenedV2eeoiySbAC_ACtFZ_0(v94, v119);
        v120 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened;
        goto LABEL_42;
      }

      v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened;
      goto LABEL_75;
    case 0xEu:
      v94 = v195;
      sub_1C6BDF25C(v113, v195, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v121 = v206;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v119 = v183;
        sub_1C6BC7B1C(&v113[v121], v183, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventTrackFinishedV2eeoiySbAC_ACtFZ_0(v94, v119);
        v120 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished;
        goto LABEL_42;
      }

      v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished;
      goto LABEL_75;
    case 0xFu:
      v94 = v197;
      sub_1C6BDF25C(v113, v197, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v135 = v206;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v119 = v184;
        sub_1C6BC7B1C(&v113[v135], v184, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleUnlikedV2eeoiySbAC_ACtFZ_0(v94, v119);
        v120 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked;
        goto LABEL_42;
      }

      v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked;
      goto LABEL_75;
    case 0x10u:
      v94 = v199;
      sub_1C6BDF25C(v113, v199, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v118 = v206;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v119 = v185;
        sub_1C6BC7B1C(&v113[v118], v185, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B47Storage_CompressedSessionEventArticleUndislikedV2eeoiySbAC_ACtFZ_0(v94, v119);
        v120 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked;
        goto LABEL_42;
      }

      v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked;
      goto LABEL_75;
    case 0x11u:
      v94 = v201;
      sub_1C6BDF25C(v113, v201, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v143 = v206;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v119 = v186;
        sub_1C6BC7B1C(&v113[v143], v186, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleUnsavedV2eeoiySbAC_ACtFZ_0(v94, v119);
        v120 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved;
        goto LABEL_42;
      }

      v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved;
      goto LABEL_75;
    case 0x12u:
      v94 = v202;
      sub_1C6BDF25C(v113, v202, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v148 = v206;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v119 = v187;
        sub_1C6BC7B1C(&v113[v148], v187, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventSportsTagSeenV2eeoiySbAC_ACtFZ_0(v94, v119);
        v120 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen;
        goto LABEL_42;
      }

      v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen;
      goto LABEL_75;
    case 0x13u:
      v103 = v204;
      sub_1C6BDF25C(v113, v204, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v156 = v206;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        v160 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore;
LABEL_79:
        v116 = v160;
        v117 = v103;
        goto LABEL_80;
      }

      v157 = v189;
      sub_1C6BC7B1C(&v113[v156], v189, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      if (*v103 == *v157)
      {
        v158 = *(v168 + 20);
        sub_1C6D78A40();
        sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        LOBYTE(v158) = sub_1C6D79560();
        sub_1C6BC7690(v157, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
        if (v158)
        {
          v131 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore;
LABEL_57:
          sub_1C6BC7690(v103, v131);
          LODWORD(v206) = 1;
          v149 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event;
          goto LABEL_81;
        }
      }

      else
      {
        sub_1C6BC7690(v157, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      }

      v163 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore;
LABEL_93:
      sub_1C6BC7690(v103, v163);
      LODWORD(v206) = 0;
      v149 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event;
      goto LABEL_81;
    case 0x14u:
      v94 = v203;
      sub_1C6BDF25C(v113, v203, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v144 = v206;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v119 = v188;
        sub_1C6BC7B1C(&v113[v144], v188, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B48Storage_CompressedSessionEventNotificationVendedV2eeoiySbAC_ACtFZ_0(v94, v119);
        v120 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended;
LABEL_42:
        v134 = v120;
        sub_1C6BC7690(v119, v120);
        v125 = v94;
        goto LABEL_43;
      }

      v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended;
LABEL_75:
      v116 = v159;
      v117 = v94;
      goto LABEL_80;
    default:
      sub_1C6BDF25C(v113, v108, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v115 = v206;
      if (swift_getEnumCaseMultiPayload())
      {
        v116 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen;
        v117 = v108;
LABEL_80:
        sub_1C6BC7690(v117, v116);
        LODWORD(v206) = 0;
        v149 = sub_1C6BDF1F8;
      }

      else
      {
        v162 = v169;
        sub_1C6BC7B1C(&v113[v115], v169, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
        LODWORD(v206) = _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventArticleSeenV2eeoiySbAC_ACtFZ_0(v108, v162);
        v134 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen;
        sub_1C6BC7690(v162, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
        v125 = v108;
LABEL_43:
        v126 = v134;
LABEL_44:
        sub_1C6BC7690(v125, v126);
        v149 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event;
      }

LABEL_81:
      sub_1C6BC7690(v113, v149);
      return v206 & 1;
  }
}

uint64_t sub_1C6BDEC00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6BDED48()
{
  sub_1C6BC6FE4(319, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v1 <= 0x3F)
    {
      sub_1C6BC6FE4(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6BDEE44()
{
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed();
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished();
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore();
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
                                          if (v21 <= 0x3F)
                                          {
                                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                            return 0;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C6BDF034(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6BC6FE4(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6BDF0AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BDF034(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6BDF108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BC6FE4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BDF178(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BC6FE4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C6BDF1F8()
{
  if (!qword_1EC1D7728)
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D7728);
    }
  }
}

uint64_t sub_1C6BDF25C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BDF2C4(uint64_t a1)
{
  if (qword_1EDCE18E0 != -1)
  {
    swift_once();
  }

  sub_1C6B1A3B4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  sub_1C6BE01C4(0, &qword_1EDCDF8A8, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding, MEMORY[0x1E69E6720]);
  swift_unknownObjectRetain();
  v4 = sub_1C6D795F0();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1C6B2064C();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  sub_1C6D793D0();
  sub_1C6D783A0();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v1;
  swift_unknownObjectRetain();

  v8 = sub_1C6D78210();
  v9 = MEMORY[0x1E69E62F8];
  sub_1C6BE01C4(0, &qword_1EDCDF9D0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding, MEMORY[0x1E69E62F8]);
  sub_1C6D782A0();

  v10 = sub_1C6D78210();
  sub_1C6BE01C4(0, &qword_1EDCDF9B0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding, v9);
  v11 = sub_1C6D782A0();

  return v11;
}

uint64_t sub_1C6BDF570(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = sub_1C6BDF6F8(a2);
  if (qword_1EDCE18E0 != -1)
  {
    swift_once();
  }

  sub_1C6B1A3B4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6D7E630;
  v14 = *(v6 + 2);
  v8 = sub_1C6D7A0E0();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C6B2064C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v11 = a3[11];
  __swift_project_boxed_opaque_existential_1(a3 + 7, a3[10]);
  v12 = sub_1C6D79320();

  return v12;
}

char *sub_1C6BDF6F8(uint64_t a1)
{
  sub_1C6B1A3B4(0, &unk_1EDCDFC80, MEMORY[0x1E69B6540], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v46 - v4;
  v6 = sub_1C6D79400();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v46 - v12;
  if (a1)
  {
    v14 = [swift_unknownObjectRetain() identifier];
    sub_1C6D795A0();

    sub_1C6D793B0();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1C6BE0318(v5);
      if (qword_1EDCE18E0 != -1)
      {
        swift_once();
      }

      sub_1C6B1A3B4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1C6D7E630;
      v54 = 0;
      v55 = 0xE000000000000000;
      v53 = a1;
      sub_1C6B0F7A8(0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
      sub_1C6D79E60();
      v16 = v54;
      v17 = v55;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1C6B2064C();
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
      sub_1C6D79AC0();
      sub_1C6D78D30();
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  v18 = sub_1C6D793C0();
  v19 = v18;
  a1 = *(v18 + 16);
  if (!a1)
  {
LABEL_22:

    return MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1C6B6732C(*(v18 + 16), 0);
  v21 = sub_1C6B67FC8(&v54, v20 + 4, a1, v19);
  sub_1C6B688C4();
  if (v21 != a1)
  {
    __break(1u);
LABEL_9:
    v48 = a1;
    v50 = v7;
    (*(v7 + 32))(v13, v5, v6);
    v22 = sub_1C6D793E0();
    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    v52 = off_1EDCE18E8;
    sub_1C6B1A3B4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C6D807C0;
    v54 = 0;
    v55 = 0xE000000000000000;
    v47 = v13;
    v49 = v6;
    sub_1C6D79E60();
    v24 = v54;
    v25 = v55;
    v26 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v27 = sub_1C6B2064C();
    *(v23 + 64) = v27;
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    v54 = *(v22 + 16);
    v28 = sub_1C6D7A0E0();
    *(v23 + 96) = v26;
    *(v23 + 104) = v27;
    *(v23 + 72) = v28;
    *(v23 + 80) = v29;
    v54 = 0;
    v55 = 0xE000000000000000;
    v53 = v48;
    sub_1C6B0F7A8(0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
    sub_1C6D79E60();
    v30 = v54;
    v31 = v55;
    *(v23 + 136) = v26;
    *(v23 + 144) = v27;
    *(v23 + 112) = v30;
    *(v23 + 120) = v31;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v32 = *(v22 + 16);
    if (v32)
    {
      v33 = v49;
      v34 = *(v50 + 16);
      v35 = *(v50 + 80);
      v46[1] = v22;
      v36 = v22 + ((v35 + 32) & ~v35);
      v51 = *(v50 + 72);
      v52 = v34;
      v37 = (v50 + 8);
      v20 = MEMORY[0x1E69E7CC0];
      v46[0] = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v50 += 16;
      v34(v10, v36, v49);
      while (1)
      {
        v39 = sub_1C6D793F0();
        v41 = v40;
        v42 = *v37;
        (*v37)(v10, v33);
        if (v41)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1C6B6592C(0, *(v20 + 2) + 1, 1, v20);
          }

          v44 = *(v20 + 2);
          v43 = *(v20 + 3);
          if (v44 >= v43 >> 1)
          {
            v20 = sub_1C6B6592C((v43 > 1), v44 + 1, 1, v20);
          }

          *(v20 + 2) = v44 + 1;
          v38 = &v20[16 * v44];
          *(v38 + 4) = v39;
          *(v38 + 5) = v41;
          v33 = v49;
        }

        v36 += v51;
        if (!--v32)
        {
          break;
        }

        v52(v10, v36, v33);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v33 = v49;
      v42 = *(v50 + 8);
      v20 = MEMORY[0x1E69E7CC0];
    }

    v42(v47, v33);
  }

  return v20;
}

uint64_t sub_1C6BDFD78(unint64_t *a1)
{
  v2 = *a1;
  if (qword_1EDCE18E0 != -1)
  {
    swift_once();
  }

  sub_1C6B1A3B4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  if (v2 >> 62)
  {
    sub_1C6D79E90();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = sub_1C6D7A0E0();
  v7 = v6;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v23 = sub_1C6B2064C();
  *(v3 + 64) = v23;
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v24 = MEMORY[0x1E69E7CC0];
  v22 = v1;
  if (v2 >> 62)
  {
    result = sub_1C6D79E90();
    v9 = result;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_19:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v9 < 1)
  {
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1CCA56240](v10, v2);
    }

    else
    {
      v13 = *(v2 + 8 * v10 + 32);
      swift_unknownObjectRetain();
    }

    if ([v13 asSports])
    {
      v14 = swift_unknownObjectRetain();
      MEMORY[0x1CCA55C20](v14);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C6D797C0();
      }

      sub_1C6D79800();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v11 = v24;
    }

    else
    {
      sub_1C6D79AA0();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1C6D7E630;
      sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
      sub_1C6D79E60();
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = v23;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0xE000000000000000;
      sub_1C6D78D30();

      swift_unknownObjectRelease();
    }

    ++v10;
  }

  while (v9 != v10);
LABEL_20:
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C6D7E630;
  if (v11 >> 62)
  {
    sub_1C6D79E90();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = sub_1C6D7A0E0();
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = v23;
  *(v15 + 32) = v17;
  *(v15 + 40) = v18;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  sub_1C6BE0294();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  return sub_1C6D78300();
}

uint64_t sub_1C6BE0184()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_1C6BE01C4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C6B0F7A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C6BE022C()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return sub_1C6D79410();
}

void sub_1C6BE0294()
{
  if (!qword_1EDCE5D60)
  {
    sub_1C6BE01C4(255, &qword_1EDCDF9B0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding, MEMORY[0x1E69E62F8]);
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5D60);
    }
  }
}

uint64_t sub_1C6BE0318(uint64_t a1)
{
  sub_1C6B1A3B4(0, &unk_1EDCDFC80, MEMORY[0x1E69B6540], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ComputeService<>.runningConfigurationData.getter()
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1C6D78470();
  if (!v15)
  {
    if (qword_1EDCE66F8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();
    goto LABEL_10;
  }

  v0 = v17;
  sub_1C6B189DC(v14, v15, v16, v17);
  v1 = [v0 dictionary];

  sub_1C6D79490();
  v2 = objc_opt_self();
  v3 = sub_1C6D79480();

  v14 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:&v14];

  v5 = v14;
  if (!v4)
  {
    v8 = v5;
    v9 = sub_1C6D75CC0();

    swift_willThrow();
    if (qword_1EDCE66F8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C6D7E630;
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v11 = v14;
    v12 = v15;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1C6B2064C();
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    sub_1C6D78D30();

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  v6 = sub_1C6D75E60();

  result = v6;
LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C6BE070C()
{
  v1 = v0;
  sub_1C6B1ABB8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D78EC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6B761BC();
  *v10 = sub_1C6D79B00();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v11 = sub_1C6D78ED0();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v1[17])
  {
    if (qword_1EDCE66F8 == -1)
    {
LABEL_4:
      sub_1C6D79AA0();
      sub_1C6D78D30();
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (v1[16] == 1 && v1[18] == 1)
  {
    v1[17] = 1;
    if (NPDeviceSupportsFeedPersonalization())
    {
      v12 = sub_1C6D79880();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v1;

      sub_1C6BE0BF8(0, 0, v5, &unk_1C6D830D8, v13);
    }

    else
    {
      v14 = objc_opt_self();
      aBlock[4] = sub_1C6BE1538;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C6B20B90;
      aBlock[3] = &block_descriptor_1;
      v15 = _Block_copy(aBlock);

      [v14 scheduleLowPriorityBlockForMainThread_];
      _Block_release(v15);
    }
  }
}

uint64_t sub_1C6BE0A5C()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = *(MEMORY[0x1E69960B8] + 4);
  v5 = (*MEMORY[0x1E69960B8] + MEMORY[0x1E69960B8]);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1C6BE0B04;

  return v5();
}

uint64_t sub_1C6BE0B04()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C6BE0BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C6B1ABB8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BE15F4(a3, v12);
  v13 = sub_1C6D79880();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C6B1AB5C(v12);
  }

  else
  {
    sub_1C6D79870();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C6D79840();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C6D79600() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1C6B1AB5C(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C6B1AB5C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1C6BE0EB0(uint64_t a1)
{
  sub_1C6B1ABB8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D79880();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1C6BE0BF8(0, 0, v5, &unk_1C6D83100, v7);
}

uint64_t sub_1C6BE0FD4()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = *(MEMORY[0x1E69960B8] + 4);
  v5 = (*MEMORY[0x1E69960B8] + MEMORY[0x1E69960B8]);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1C6BE1AAC;

  return v5();
}

uint64_t sub_1C6BE107C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1C6BE10B4()
{
  v1 = sub_1C6D78EC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  sub_1C6B761BC();
  *v5 = sub_1C6D79B00();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = sub_1C6D78ED0();
  (*(v2 + 8))(v5, v1);
  if (v7)
  {
    *(v6 + 16) = 1;
    sub_1C6BE070C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C6BE11D8()
{
  v1 = sub_1C6D78EC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  sub_1C6B761BC();
  *v5 = sub_1C6D79B00();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = sub_1C6D78ED0();
  result = (*(v2 + 8))(v5, v1);
  if (v7)
  {
    *(v6 + 18) = 1;
    sub_1C6BE070C();
    sub_1C6B1AC10();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    return sub_1C6D78350();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ComputeService<>.containerDirectory.getter()
{
  v0 = sub_1C6D78550();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78490();
  sub_1C6D78540();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C6BE140C()
{
  v1 = sub_1C6D78550();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1C6D78490();
  sub_1C6D78540();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1C6BE1540(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6BB6A40;

  return sub_1C6BE0A3C(a1, v4, v5, v6);
}

uint64_t sub_1C6BE15F4(uint64_t a1, uint64_t a2)
{
  sub_1C6B1ABB8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BE1658(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BE1750;

  return v7(a1);
}

uint64_t sub_1C6BE1750()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C6BE1848(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C6BE1AB0;

  return sub_1C6BE1658(a1, v5);
}

uint64_t sub_1C6BE1900(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C6BB6A40;

  return sub_1C6BE1658(a1, v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C6BE19F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6BE1AB0;

  return sub_1C6BE0FB4(a1, v4, v5, v6);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked()
{
  result = qword_1EDCE3158;
  if (!qword_1EDCE3158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C6BE1D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6BE1ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked() + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked() + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked() + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked() + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6BE2574()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7730);
  __swift_project_value_buffer(v0, qword_1EC1D7730);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6BE2894();
    }
  }

  return result;
}

uint64_t sub_1C6BE2894()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked() + 24);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6BE3340(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6BE29E4(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6BE29E4(uint64_t a1)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  sub_1C6B3E190(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B3E224(v5);
  }

  sub_1C6B3E2B0(v5, v10);
  sub_1C6BE3340(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  sub_1C6BE3340(&qword_1EC1D7748, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BE2CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BE3340(&qword_1EC1D7760, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BE2D3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BE2DE4(uint64_t a1)
{
  v2 = sub_1C6BE3340(&qword_1EC1D7680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BE2E50()
{
  sub_1C6BE3340(&qword_1EC1D7680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleUnlikedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B3FB88();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_1C6B3E190(a1 + v19, v17);
  sub_1C6B3E190(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      v25 = *(v18 + 20);
      sub_1C6D78A40();
      sub_1C6BE3340(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v22 = sub_1C6D79560();
      return v22 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v20], v8);
  v24 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6BE3340(unint64_t *a1, void (*a2)(uint64_t))
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

id NewsPersonalizer.treatment.getter()
{
  v1 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_treatment;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void NewsPersonalizer.treatment.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_treatment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id NewsPersonalizer.init(context:configurationManager:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v49 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1C6D76B80();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v50 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D79AF0();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v46 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D79AE0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = sub_1C6D78E80();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1C6B0C69C(0, &qword_1EDCE7E80, 0x1E69B5448);
  sub_1C6B0C6E4();
  sub_1C6D77070();
  v45 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_queue;
  v15 = sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
  v44[0] = "SessionEventArticleUnliked";
  v44[1] = v15;
  sub_1C6D78E50();
  v56[0] = MEMORY[0x1E69E7CC0];
  sub_1C6BE3A54(&unk_1EDCE7EB8, MEMORY[0x1E69E8030]);
  v16 = MEMORY[0x1E69E8030];
  sub_1C6BE5014(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1C6BE3A9C(&qword_1EDCE7F28, &qword_1EDCE7F30, v16);
  sub_1C6D79CB0();
  (*(v47 + 104))(v46, *MEMORY[0x1E69E8090], v48);
  *&v2[v45] = sub_1C6D79B20();
  v17 = v49;
  *&v2[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_context] = v49;
  sub_1C6B16F28(a2, &v2[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_configurationManager]);
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v49 = v17;
  v20(v55, v18, v19);
  v21 = v55[3];
  sub_1C6B11190(v55);
  *&v3[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_treatment] = v21;
  v22 = v21;
  v23 = v50;
  sub_1C6B7DF50(v50);

  (*(v51 + 32))(&v3[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_classicConfiguration], v23, v52);
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  (*(v25 + 8))(v56, v24, v25);
  v26 = v57;
  if (v57)
  {
    v28 = v61;
    v27 = v62;
    v30 = v59;
    v29 = v60;
    v31 = v58;
    v32 = v57;
    v33 = v31;
    v34 = v30;
    v35 = v29;
    v36 = [v27 disableTrainingLegacyAggregates];
    sub_1C6B11190(v56);
    sub_1C6B16EC0(v26, v31, v30, v29, v28, v27);
  }

  else
  {
    sub_1C6B11190(v56);
    v36 = 0;
  }

  v3[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_disableTrainingLegacyAggregates] = v36;
  v54.receiver = v3;
  v54.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v54, sel_init);
  v38 = a2[3];
  v39 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v38);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  v41 = *(v39 + 32);
  v42 = v37;
  v41(sub_1C6BE3E8C, v40, v38, v39);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v42;
}

uint64_t sub_1C6BE3A54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6BE3A9C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C6BE5014(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6BE3B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78E30();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D78E80();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 80);
  v29[4] = *(a1 + 64);
  v29[5] = v12;
  v30[0] = *(a1 + 96);
  *(v30 + 14) = *(a1 + 110);
  v13 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v13;
  v14 = *(a1 + 48);
  v29[2] = *(a1 + 32);
  v29[3] = v14;
  v23[1] = *(a2 + OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_queue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v17 = *(a1 + 80);
  *(v16 + 88) = *(a1 + 64);
  *(v16 + 104) = v17;
  *(v16 + 120) = *(a1 + 96);
  v18 = *(a1 + 16);
  *(v16 + 24) = *a1;
  *(v16 + 40) = v18;
  v19 = *(a1 + 48);
  *(v16 + 56) = *(a1 + 32);
  *(v16 + 16) = v15;
  *(v16 + 134) = *(a1 + 110);
  *(v16 + 72) = v19;
  v28[4] = sub_1C6BE5078;
  v28[5] = v16;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1C6B20B90;
  v28[3] = &block_descriptor_15;
  v20 = _Block_copy(v28);

  sub_1C6BE5084(v29, v27);
  sub_1C6D78E60();
  v27[0] = MEMORY[0x1E69E7CC0];
  sub_1C6BE3A54(qword_1EDCE7FD0, MEMORY[0x1E69E7F60]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1C6BE5014(0, &qword_1EDCE7F60, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1C6BE3A9C(&qword_1EDCE7F58, &qword_1EDCE7F60, v21);
  sub_1C6D79CB0();
  MEMORY[0x1CCA55FE0](0, v11, v7, v20);
  _Block_release(v20);
  (*(v26 + 8))(v7, v4);
  (*(v24 + 8))(v11, v25);
}

void sub_1C6BE3E94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6D76B80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(a2 + 24);
    v11 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_treatment;
    swift_beginAccess();
    v12 = *&v9[v11];
    *&v9[v11] = v10;
    v13 = v10;

    sub_1C6B7DF50(v7);
    v14 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_classicConfiguration;
    swift_beginAccess();
    (*(v4 + 40))(&v9[v14], v7, v3);
    swift_endAccess();
    if (*(a2 + 32))
    {
      v15 = [*(a2 + 72) disableTrainingLegacyAggregates];
    }

    else
    {
      v15 = 0;
    }

    v9[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_disableTrainingLegacyAggregates] = v15;
  }
}

uint64_t sub_1C6BE4020(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6D78E30();
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1C6D78E80();
  v92 = *(v94 - 8);
  v7 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1C6D76820();
  v97 = *(v89 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1C6D76A40();
  v99 = *(v90 - 8);
  v12 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D76B80();
  v98 = *(v15 - 8);
  v16 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C6D76F90();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v78 - v23);
  v100 = v2;
  if (*(v2 + OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_disableTrainingLegacyAggregates))
  {
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    sub_1C6D79A90();
    sub_1C6BE5014(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C6D7E630;
    sub_1C6BE3A54(&unk_1EDCE6220, MEMORY[0x1E69E3698]);
    v28 = sub_1C6D7A0E0();
    v30 = v29;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1C6B2064C();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    sub_1C6D78D30();
  }

  v88 = v24;
  v32 = *(v20 + 16);
  v87 = v20 + 16;
  v86 = v32;
  (v32)(&v78 - v23, a1, v19, v25);
  v33 = (*(v20 + 88))(v26, v19) == *MEMORY[0x1E69E35F0];
  v85 = a1;
  if (!v33)
  {
    (*(v20 + 8))(v26, v19);
LABEL_13:
    v63 = v85;
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    sub_1C6BE5014(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1C6D7E630;
    sub_1C6BE3A54(&unk_1EDCE6220, MEMORY[0x1E69E3698]);
    v65 = sub_1C6D7A0E0();
    v67 = v66;
    *(v64 + 56) = MEMORY[0x1E69E6158];
    *(v64 + 64) = sub_1C6B2064C();
    *(v64 + 32) = v65;
    *(v64 + 40) = v67;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v68 = *(v100 + OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_queue);
    v69 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v70 = v88;
    v86(v88, v63, v19);
    v71 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = v69;
    (*(v20 + 32))(v72 + v71, v70, v19);
    v106 = sub_1C6BE4FB0;
    v107 = v72;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_1C6B20B90;
    v105 = &block_descriptor_2;
    v73 = _Block_copy(&aBlock);

    v74 = v91;
    sub_1C6D78E60();
    v101 = MEMORY[0x1E69E7CC0];
    sub_1C6BE3A54(qword_1EDCE7FD0, MEMORY[0x1E69E7F60]);
    v75 = MEMORY[0x1E69E7F60];
    sub_1C6BE5014(0, &qword_1EDCE7F60, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1C6BE3A9C(&qword_1EDCE7F58, &qword_1EDCE7F60, v75);
    v76 = v93;
    v77 = v96;
    sub_1C6D79CB0();
    MEMORY[0x1CCA55FE0](0, v74, v76, v73);
    _Block_release(v73);
    (*(v95 + 8))(v76, v77);
    (*(v92 + 8))(v74, v94);
  }

  (*(v20 + 96))(v26, v19);
  v34 = v26[6];
  __swift_destroy_boxed_opaque_existential_1(v26);
  v79 = v34;
  v35 = v34 / 1000.0;
  v36 = v18;
  v37 = v14;
  v38 = v15;
  v39 = v11;
  v40 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_classicConfiguration;
  v41 = v100;
  swift_beginAccess();
  v42 = v98;
  v43 = *(v98 + 16);
  v84 = v40;
  v44 = v41 + v40;
  v45 = v39;
  v46 = v38;
  v47 = v37;
  v48 = v36;
  v83 = v98 + 16;
  v82 = v43;
  v43(v36, v44, v46);
  sub_1C6D76A60();
  v49 = *(v42 + 8);
  v98 = v42 + 8;
  v49(v48, v46);
  sub_1C6D769F0();
  v50 = *(v99 + 8);
  v99 += 8;
  v81 = v50;
  v50(v47, v90);
  sub_1C6D76810();
  v52 = v51;
  v53 = v97 + 8;
  v54 = v89;
  v80 = *(v97 + 8);
  v80(v45, v89);
  if (v35 >= v52)
  {
    goto LABEL_13;
  }

  v96 = v49;
  v97 = v53;
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v95 = qword_1EDCEA6A8;
  sub_1C6BE5014(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1C6D7EB10;
  aBlock = v79;
  v56 = sub_1C6D7A0E0();
  v58 = v57;
  v59 = MEMORY[0x1E69E6158];
  *(v55 + 56) = MEMORY[0x1E69E6158];
  v60 = sub_1C6B2064C();
  *(v55 + 64) = v60;
  *(v55 + 32) = v56;
  *(v55 + 40) = v58;
  aBlock = 0;
  v103 = 0xE000000000000000;
  v82(v48, v100 + v84, v46);
  sub_1C6D76A60();
  v96(v48, v46);
  sub_1C6D769F0();
  v81(v47, v90);
  sub_1C6D76810();
  v80(v45, v54);
  sub_1C6D79910();
  v61 = aBlock;
  v62 = v103;
  *(v55 + 96) = v59;
  *(v55 + 104) = v60;
  *(v55 + 72) = v61;
  *(v55 + 80) = v62;
  sub_1C6D79AC0();
  sub_1C6D78D30();
}

void sub_1C6BE4C44()
{
  v0 = sub_1C6D76B80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_context);
    v6 = v11;
    v7 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_classicConfiguration;
    v8 = Strong;
    swift_beginAccess();
    (*(v1 + 16))(v4, &v8[v7], v0);
    sub_1C6B0C628();
    v9 = v6;
    sub_1C6D77060();

    (*(v1 + 8))(v4, v0);
  }
}

id NewsPersonalizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsPersonalizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C6BE4FB0()
{
  v1 = *(*(sub_1C6D76F90() - 8) + 80);
  v2 = *(v0 + 16);

  sub_1C6BE4C44();
}

void sub_1C6BE5014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C6BE50E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_1C6D75F80();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D78810();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D783E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [*(a1 + 24) adSegmentsEndpoint];
  if (v19)
  {
    v28 = v19;
    v20 = [v19 adSegmentsOutputName];
    v27[1] = a2;
    v21 = v20;
    sub_1C6D795A0();
    v27[0] = v12;
    v29 = v2;

    sub_1C6D783C0();
    sub_1C6D78800();
    sub_1C6D75F70();
    sub_1C6D75F60();
    (*(v5 + 8))(v8, v30);
    sub_1C6B7A158();
    v22 = *(v14 + 72);
    v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C6D7E630;
    (*(v14 + 16))(v24 + v23, v18, v13);
    sub_1C6B68E34(v24);
    swift_setDeallocating();
    v25 = *(v14 + 8);
    v25(v24 + v23, v13);
    swift_deallocClassInstance();
    sub_1C6D78790();

    return (v25)(v18, v13);
  }

  else
  {
    sub_1C6BE56E8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C6BE5418(uint64_t a1)
{
  v3 = sub_1C6D783E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D784F0();
  if (!v1)
  {
    v22 = v4;
    sub_1C6D78500();
    a1 = v20;
    v14 = v21;

    v15 = [v14 adSegmentsEndpoint];

    if (v15)
    {
      v19 = v10;
      v16 = [v15 adSegmentsOutputName];
      sub_1C6D795A0();

      sub_1C6D783C0();
      sub_1C6BB320C();
      a1 = sub_1C6D786C0();

      (*(v22 + 8))(v7, v3);
      (*(v19 + 8))(v13, v9);
    }

    else
    {
      sub_1C6BE56E8();
      swift_allocError();
      swift_willThrow();
      (*(v10 + 8))(v13, v9);
    }
  }

  return a1;
}

unint64_t sub_1C6BE56E8()
{
  result = qword_1EC1D7770;
  if (!qword_1EC1D7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7770);
  }

  return result;
}

unint64_t sub_1C6BE5750()
{
  result = qword_1EC1D7778;
  if (!qword_1EC1D7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7778);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  sub_1C6BE6434(v1 + *(v7 + 20), v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BE64B4(v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited()
{
  result = qword_1EDCE4340;
  if (!qword_1EDCE4340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6BE59B0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  sub_1C6BE6434(a1 + *(v8 + 20), v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BE64B4(v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6BE5B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited() + 20);
  sub_1C6BE64B4(a2 + v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited() + 20);
  sub_1C6BE64B4(v1 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleVisited.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited() + 20);
  *(v5 + 12) = v16;
  sub_1C6BE6434(v1 + v16, v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BE64B4(v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6BE5FC0;
}

void sub_1C6BE5FC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B48784((*a1)[5], v4);
    sub_1C6BE64B4(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B7F770(v5);
  }

  else
  {
    sub_1C6BE64B4(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventArticleVisited.hasArticle.getter()
{
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  sub_1C6BE6434(v0 + *(v5 + 20), v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BE64B4(v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleVisited.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited() + 20);
  sub_1C6BE64B4(v0 + v1, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  sub_1C6BE6434(v1 + *(v8 + 24), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BE64B4(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BE6434(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BE8774(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6BE64B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BE8774(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BE6524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  sub_1C6BE6434(a1 + *(v9 + 24), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6BE64B4(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BE66BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited() + 24);
  sub_1C6BE64B4(a2 + v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited() + 24);
  sub_1C6BE64B4(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleVisited.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited() + 24);
  *(v5 + 12) = v16;
  sub_1C6BE6434(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BE64B4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6BE6B28;
}

void sub_1C6BE6B28(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6BE64B4(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6BE64B4(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventArticleVisited.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  sub_1C6BE6434(v0 + *(v6 + 24), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6BE64B4(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleVisited.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited() + 24);
  sub_1C6BE64B4(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = sub_1C6D78A00();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1C6BE7030()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE4370);
  __swift_project_value_buffer(v0, qword_1EDCE4370);
  sub_1C6BE8774(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleVisited._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4368 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6BE734C();
    }

    else if (result == 2)
    {
      sub_1C6BE7400();
    }
  }

  return result;
}

uint64_t sub_1C6BE734C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6BE872C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BE7400()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited() + 24);
  sub_1C6D78A00();
  sub_1C6BE872C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6BE7524(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6BE7748(v3, a1, a2, a3);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BE7524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  sub_1C6BE6434(a1 + *(v14 + 20), v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BE64B4(v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6BE872C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B7F770(v13);
}

uint64_t sub_1C6BE7748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  sub_1C6BE6434(a1 + *(v15 + 24), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6BE64B4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6BE872C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  sub_1C6BE872C(&qword_1EC1D7780, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BE7A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6BE7B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BE872C(&qword_1EC1D7790, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BE7BAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4368 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BE7C54(uint64_t a1)
{
  v2 = sub_1C6BE872C(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BE7CC0()
{
  sub_1C6BE872C(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleVisitedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v2 = sub_1C6D78A00();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69AAB70];
  v6 = MEMORY[0x1E69E6720];
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v52 - v9;
  sub_1C6BE8658(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v5);
  v54 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v52 - v12;
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v52 - v20;
  sub_1C6BE8658(0, &qword_1EC1D69F0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v52 - v25;
  v27 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v28 = *(v27 + 20);
  v29 = *(v23 + 56);
  sub_1C6BE6434(v59 + v28, v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v30 = v58 + v28;
  v31 = v58;
  sub_1C6BE6434(v30, &v26[v29], &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v32 = *(v14 + 48);
  if (v32(v26, 1, v13) != 1)
  {
    sub_1C6BE6434(v26, v21, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if (v32(&v26[v29], 1, v13) != 1)
    {
      sub_1C6B483C8(&v26[v29], v17);
      v37 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v21, v17);
      sub_1C6B7F770(v17);
      sub_1C6B7F770(v21);
      sub_1C6BE64B4(v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C6B7F770(v21);
LABEL_6:
    v33 = &qword_1EC1D69F0;
    v34 = &qword_1EDCE52B0;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle;
    v36 = v26;
LABEL_14:
    sub_1C6BE86D0(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v26[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6BE64B4(v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_8:
  v38 = *(v27 + 24);
  v39 = v55;
  v40 = *(v54 + 48);
  v41 = MEMORY[0x1E69AAB70];
  sub_1C6BE6434(v59 + v38, v55, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6BE6434(v31 + v38, v39 + v40, &qword_1EDCDFD00, v41);
  v43 = v56;
  v42 = v57;
  v44 = *(v56 + 48);
  if (v44(v39, 1, v57) == 1)
  {
    if (v44(v39 + v40, 1, v42) == 1)
    {
      sub_1C6BE64B4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6BE872C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v46 = sub_1C6D79560();
      return v46 & 1;
    }

    goto LABEL_13;
  }

  v45 = v53;
  sub_1C6BE6434(v39, v53, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v44(v39 + v40, 1, v42) == 1)
  {
    (*(v43 + 8))(v45, v42);
LABEL_13:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    v36 = v39;
    goto LABEL_14;
  }

  v48 = v39 + v40;
  v49 = v52;
  (*(v43 + 32))(v52, v48, v42);
  sub_1C6BE872C(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
  v50 = sub_1C6D79560();
  v51 = *(v43 + 8);
  v51(v49, v42);
  v51(v45, v42);
  sub_1C6BE64B4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v50)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = 0;
  return v46 & 1;
}

void sub_1C6BE855C()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6BE8774(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6BE8774(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6BE8658(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6BE8774(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6BE86D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BE8658(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6BE872C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6BE8774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C6BE87FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v6 = sub_1C6D77E40();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1C6D775A0();
  v36 = *(v41 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BE8C94();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D77290();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v35 - v20, a1, v18);
  if (swift_dynamicCast())
  {
    (*(v14 + 8))(v17, v13);
    v22 = sub_1C6D77270();
    v23 = sub_1C6D77330();
    v25 = v24;

    if (!v3)
    {
      sub_1C6BE8D28(&qword_1EC1D7798, MEMORY[0x1E69B4628]);
      v26 = v41;
      sub_1C6D75AF0();
      v28 = v37;
      sub_1C6D77590();
      v29 = sub_1C6D77E30();
      v31 = v30;
      sub_1C6B1C9F0(v23, v25);
      (*(v38 + 8))(v28, v39);
      (*(v36 + 8))(v11, v26);
      *a3 = v29;
      a3[1] = v31;
      v32 = *MEMORY[0x1E69E3658];
      v33 = sub_1C6D76F90();
      v34 = *(v33 - 8);
      (*(v34 + 104))(a3, v32, v33);
      (*(v34 + 56))(a3, 0, 1, v33);
    }
  }

  else
  {
    v27 = sub_1C6D76F90();
    (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
  }
}

void sub_1C6BE8C94()
{
  if (!qword_1EDCE6018)
  {
    sub_1C6D775B0();
    sub_1C6BE8D28(&qword_1EDCE5F98, MEMORY[0x1E69B4638]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6018);
    }
  }
}

uint64_t sub_1C6BE8D28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed() + 20);
  return sub_1C6D78A30();
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed()
{
  result = qword_1EDCE3318;
  if (!qword_1EDCE3318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed() + 20);
  sub_1C6D78A40();
  sub_1C6BE97E8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6BE902C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D77A0);
  __swift_project_value_buffer(v0, qword_1EC1D77A0);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "tag_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D77A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed();
  sub_1C6BE97E8(&qword_1EC1D77B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BE93F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BE97E8(&unk_1EC1D77D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BE946C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D77A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BE9514(uint64_t a1)
{
  v2 = sub_1C6BE97E8(&qword_1EC1D7660, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BE9580()
{
  sub_1C6BE97E8(&qword_1EC1D7660, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);

  return sub_1C6D78C20();
}

uint64_t sub_1C6BE971C(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6BE97E8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6BE97E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GroupingServiceType.bestOf(scoredItems:context:allowClusteringFallback:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v9 = MEMORY[0x1E69B5D80];
  sub_1C6BE9A78(0, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27[-v12];
  v14 = MEMORY[0x1E69B5CF0];
  sub_1C6BE9A78(0, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27[-v17];
  v19 = sub_1C6D791E0();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = sub_1C6D792C0();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v26 = 1;
  v25 = 1;
  v24 = 1;
  v23 = 1;
  v21 = (*(a5 + 8))(a1, a2, v28, 0, 1, 0, 1, v18, 0, v23, 0, v24, 0, v25, 0, v13, 0, v26, a4, a5);
  sub_1C6BE9ACC(v13, &unk_1EDCDFCA0, v9);
  sub_1C6BE9ACC(v18, &qword_1EDCDFCB0, v14);
  return v21;
}

void sub_1C6BE9A78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6BE9ACC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6BE9A78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event.recipe.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BEA244();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - v17;
  v19 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BEA29C(v2, v26, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v51;
      sub_1C6BEA304(v26, v51, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
      v18 = v52;
      sub_1C6BEA29C(v28 + *(v3 + 20), v52, sub_1C6BEA244);
      v29 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
      v30 = *(v29 - 8);
      v31 = *(v30 + 48);
      v32 = v31(v18, 1, v29);
      v33 = v53;
      if (v32 == 1)
      {
        *v53 = 0;
        *(v33 + 8) = 0xE000000000000000;
        v34 = v33 + *(v29 + 20);
        sub_1C6D78A30();
        v35 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved;
        v36 = v28;
        goto LABEL_10;
      }

      v46 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved;
      v47 = v28;
    }

    else
    {
      sub_1C6BEA304(v26, v22, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
      sub_1C6BEA29C(&v22[*(v19 + 20)], v18, sub_1C6BEA244);
      v29 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
      v30 = *(v29 - 8);
      v31 = *(v30 + 48);
      v42 = v31(v18, 1, v29);
      v33 = v53;
      if (v42 == 1)
      {
        *v53 = 0;
        *(v33 + 8) = 0xE000000000000000;
        v43 = v33 + *(v29 + 20);
        sub_1C6D78A30();
        v35 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
        v36 = v22;
LABEL_10:
        sub_1C6BEA4A0(v36, v35);
        v44 = *(v29 + 24);
        v45 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
        (*(*(v45 - 8) + 56))(v33 + v44, 1, 1, v45);
        if (v31(v18, 1, v29) != 1)
        {
          v41 = v18;
          goto LABEL_12;
        }

        return (*(v30 + 56))(v33, 0, 1, v29);
      }

      v46 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
      v47 = v22;
    }

    sub_1C6BEA4A0(v47, v46);
    v48 = v18;
LABEL_17:
    sub_1C6BEA304(v48, v33, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    return (*(v30 + 56))(v33, 0, 1, v29);
  }

  sub_1C6BEA304(v26, v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  sub_1C6BEA29C(&v9[*(v6 + 20)], v16, sub_1C6BEA244);
  v29 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v30 = *(v29 - 8);
  v37 = *(v30 + 48);
  if (v37(v16, 1, v29) != 1)
  {
    sub_1C6BEA4A0(v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    v48 = v16;
    v33 = v53;
    goto LABEL_17;
  }

  v33 = v53;
  *v53 = 0;
  *(v33 + 8) = 0xE000000000000000;
  v38 = v33 + *(v29 + 20);
  sub_1C6D78A30();
  sub_1C6BEA4A0(v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  v39 = *(v29 + 24);
  v40 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  (*(*(v40 - 8) + 56))(v33 + v39, 1, 1, v40);
  if (v37(v16, 1, v29) != 1)
  {
    v41 = v16;
LABEL_12:
    sub_1C6BEA4A0(v41, sub_1C6BEA244);
  }

  return (*(v30 + 56))(v33, 0, 1, v29);
}

void sub_1C6BEA244()
{
  if (!qword_1EDCE5428[0])
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCE5428);
    }
  }
}

uint64_t sub_1C6BEA29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BEA304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event.string.getter()
{
  v1 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BEA29C(v0, v4, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 0x6956657069636572;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = 0x6153657069636572;
  }

  if (EnumCaseMultiPayload)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x65646F4D6B6F6F63;
  }

  sub_1C6BEA4A0(v4, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  return v7;
}

uint64_t sub_1C6BEA4A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6BEA500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a4;
  v7[6] = a6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(a3 + 16);
  v7[7] = v6;
  v7[8] = v8;
  v7[9] = *(a3 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1C6BEA534, 0, 0);
}

uint64_t sub_1C6BEA534()
{
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v0[10] = qword_1EDCE23C0;
  sub_1C6D79AC0();
  v2 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30();
  if (v1 > 0 || (sub_1C6D77FA0(), (sub_1C6D77F90() & 1) != 0))
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    __swift_project_boxed_opaque_existential_1((v4 + 16), v5);
    v7 = [*(v4 + 56) bundleIDMapping];
    v8 = [*(v4 + 64) urlMapping];
    v0[11] = (*(v6 + 16))(v3, v7, v8, v5, v6);

    v9 = *(MEMORY[0x1E69D6B08] + 4);
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_1C6BEA7B4;

    return MEMORY[0x1EEE44EE0](v0 + 2);
  }

  else
  {
    v11 = v0[9];
    sub_1C6B1D314();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E6530];
    *(v12 + 16) = xmmword_1C6D7E630;
    v14 = MEMORY[0x1E69E65A8];
    *(v12 + 56) = v13;
    *(v12 + 64) = v14;
    *(v12 + 32) = v11;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v16 = v0[3];
    v15 = v0[4];
    *v16 = v2;
    v16[1] = v2;
    *v15 = v2;
    v15[1] = v2;
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1C6BEA7B4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1C6BEB618;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1C6BEA8D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C6BEA8D0()
{
  v1 = v0[10];
  v2 = v0[2];
  sub_1C6B1D314();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E65A8];
  *(v3 + 56) = MEMORY[0x1E69E6530];
  *(v3 + 64) = v5;
  *(v3 + 32) = v4;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v154 = v0;
  v159 = *(v2 + 16);
  if (v159)
  {
    v7 = 0;
    v8 = v0[6];
    v152 = v0[5];
    v157 = v2 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = v8 + 56;
    v11 = MEMORY[0x1E69E7CC0];
    v155 = v2;
    while (1)
    {
      if (v7 >= *(v2 + 16))
      {
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v167 = v11;
      v13 = (v157 + 32 * v7);
      v14 = *v13;
      v16 = *(v13 + 1);
      v15 = *(v13 + 2);
      v17 = *(v13 + 6);
      if (*(v8 + 16))
      {
        v18 = *(v8 + 40);
        sub_1C6D7A260();
        swift_bridgeObjectRetain_n();
        sub_1C6D79610();
        v19 = sub_1C6D7A2B0();
        v20 = -1 << *(v8 + 32);
        v21 = v19 & ~v20;
        if ((*(v10 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          while (1)
          {
            v23 = (*(v8 + 48) + 16 * v21);
            v24 = *v23 == v16 && v23[1] == v15;
            if (v24 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v10 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1C6B66228(0, v9[2] + 1, 1, v9);
            v9 = result;
          }

          v2 = v155;
          v30 = v9[2];
          v29 = v9[3];
          v11 = v167;
          if (v30 >= v29 >> 1)
          {
            result = sub_1C6B66228((v29 > 1), v30 + 1, 1, v9);
            v11 = v167;
            v9 = result;
          }

          v9[2] = v30 + 1;
          v12 = &v9[6 * v30];
          *(v12 + 32) = v14;
          v12[5] = v16;
          v12[6] = v15;
          *(v12 + 14) = v17;
          v12[8] = 0;
          goto LABEL_4;
        }

LABEL_16:
        v162 = v14;
        v25 = v9;
      }

      else
      {
        v162 = *v13;
        v25 = v9;
      }

      v26 = *(v152 + 32);
      __swift_project_boxed_opaque_existential_1(v154[5], *(v152 + 24));

      v27 = sub_1C6CDE8A8(v16, v15);

      if (v27 <= 1u)
      {
        v9 = v25;
        if (v27)
        {
          v28 = 8;
        }

        else
        {
          v28 = 1;
        }

        goto LABEL_28;
      }

      v9 = v25;
      if (v27 == 2)
      {
        v28 = 5;
LABEL_28:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1C6B66228(0, v9[2] + 1, 1, v9);
          v9 = result;
        }

        v32 = v9[2];
        v31 = v9[3];
        v11 = v167;
        if (v32 >= v31 >> 1)
        {
          result = sub_1C6B66228((v31 > 1), v32 + 1, 1, v9);
          v11 = v167;
          v9 = result;
        }

        v9[2] = v32 + 1;
        v33 = &v9[6 * v32];
        *(v33 + 32) = v162;
        v33[5] = v16;
        v33[6] = v15;
        *(v33 + 14) = v17;
        v33[8] = v28;
        *(v33 + 72) = 1;
        v2 = v155;
        goto LABEL_5;
      }

      v2 = v155;
      v34 = *(v167 + 16);
      if (v34 < v154[9])
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v11 = v167;
        }

        else
        {
          result = sub_1C6B66118(0, v34 + 1, 1, v167);
          v11 = result;
        }

        v36 = *(v11 + 16);
        v35 = *(v11 + 24);
        if (v36 >= v35 >> 1)
        {
          result = sub_1C6B66118((v35 > 1), v36 + 1, 1, v11);
          v11 = result;
        }

        *(v11 + 16) = v36 + 1;
        v37 = v11 + 32 * v36;
        *(v37 + 32) = v162;
        *(v37 + 40) = v16;
        *(v37 + 48) = v15;
        *(v37 + 56) = v17;
        goto LABEL_5;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6B66228(0, v25[2] + 1, 1, v25);
        v9 = result;
      }

      v39 = v9[2];
      v38 = v9[3];
      v11 = v167;
      if (v39 >= v38 >> 1)
      {
        result = sub_1C6B66228((v38 > 1), v39 + 1, 1, v9);
        v11 = v167;
        v9 = result;
      }

      v9[2] = v39 + 1;
      v12 = &v9[6 * v39];
      *(v12 + 32) = v162;
      v12[5] = v16;
      v12[6] = v15;
      *(v12 + 14) = v17;
      v12[8] = 7;
LABEL_4:
      *(v12 + 72) = 1;
LABEL_5:
      if (++v7 == v159)
      {
        v40 = v11;

        v41 = v40;
        goto LABEL_47;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v168 = v41;
  v42 = 0;
  v43 = v9[2];
  v44 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v45 = 6 * v42;
  while (v43 != v42)
  {
    if (v42 >= v9[2])
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v46 = v45 * 8 + 48;
    ++v42;
    v47 = v9[v45 + 4];
    v45 += 6;
    if ((v47 & 1) == 0)
    {
      v49 = *(v9 + v46 - 8);
      v48 = *(v9 + v46);
      v50 = *(v9 + v46 + 8);
      v51 = *(v9 + v46 + 16);
      v52 = *(v9 + v46 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6B39574(0, *(v44 + 16) + 1, 1);
      }

      v54 = *(v44 + 16);
      v53 = *(v44 + 24);
      if (v54 >= v53 >> 1)
      {
        result = sub_1C6B39574((v53 > 1), v54 + 1, 1);
      }

      *(v44 + 16) = v54 + 1;
      v55 = v44 + 48 * v54;
      *(v55 + 32) = 0;
      *(v55 + 40) = v49;
      *(v55 + 48) = v48;
      *(v55 + 56) = v50;
      *(v55 + 64) = v51;
      *(v55 + 72) = v52;
      goto LABEL_48;
    }
  }

  v56 = *(v44 + 16);
  v156 = v9;
  v153 = v43;
  if (v56)
  {
    v160 = v44;
    v169 = MEMORY[0x1E69E7CC0];
    sub_1C6B39554(0, v56, 0);
    v57 = 0;
    v58 = *(v169 + 16);
    v59 = 40 * v58 + 64;
    do
    {
      v60 = *(v160 + v57 + 40);
      v61 = *(v160 + v57 + 48);
      v62 = *(v160 + v57 + 56);
      v63 = *(v160 + v57 + 64);
      v163 = *(v160 + v57 + 72);
      v64 = v58 + 1;
      v65 = *(v169 + 24);

      if (v58 >= v65 >> 1)
      {
        sub_1C6B39554((v65 > 1), v64, 1);
      }

      *(v169 + 16) = v64;
      v66 = (v169 + v59);
      *(v66 - 4) = v60;
      *(v66 - 3) = v61;
      *(v66 - 4) = v62;
      v59 += 40;
      *(v66 - 1) = v63;
      v57 += 48;
      ++v58;
      *v66 = v163;
      --v56;
    }

    while (v56);
    v151 = v169;

    v9 = v156;
    v43 = v153;
  }

  else
  {

    v151 = MEMORY[0x1E69E7CC0];
  }

  v67 = 0;
  v68 = v168;
  v69 = *(v168 + 16);
  v70 = MEMORY[0x1E69E7CC0];
  v71 = MEMORY[0x1E69E7CC0];
  v158 = v69;
LABEL_65:
  v72 = 32 * v67;
  while (v69 != v67)
  {
    if (v67 >= *(v68 + 16))
    {
      goto LABEL_122;
    }

    v73 = v72 + 32;
    ++v67;
    v74 = *(v68 + v72 + 32);
    v72 += 32;
    if ((v74 & 1) == 0)
    {
      v76 = *(v68 + v73 + 8);
      v75 = *(v68 + v73 + 16);
      v77 = *(v68 + v73 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6B39534(0, *(v71 + 16) + 1, 1);
        v69 = v158;
      }

      v79 = *(v71 + 16);
      v78 = *(v71 + 24);
      v68 = v168;
      if (v79 >= v78 >> 1)
      {
        result = sub_1C6B39534((v78 > 1), v79 + 1, 1);
        v69 = v158;
        v68 = v168;
      }

      *(v71 + 16) = v79 + 1;
      v80 = v71 + 32 * v79;
      *(v80 + 32) = 0;
      *(v80 + 40) = v76;
      *(v80 + 48) = v75;
      *(v80 + 56) = v77;
      goto LABEL_65;
    }
  }

  v81 = *(v71 + 16);
  if (v81)
  {
    result = sub_1C6B39514(0, v81, 0);
    v82 = 0;
    v83 = v70;
    v84 = (v71 + 56);
    while (v82 < *(v71 + 16))
    {
      v85 = *(v84 - 2);
      v86 = *(v84 - 1);
      v87 = *v84;
      v89 = *(v83 + 16);
      v88 = *(v83 + 24);

      if (v89 >= v88 >> 1)
      {
        result = sub_1C6B39514((v88 > 1), v89 + 1, 1);
      }

      ++v82;
      *(v83 + 16) = v89 + 1;
      v90 = v83 + 24 * v89;
      *(v90 + 32) = v85;
      *(v90 + 40) = v86;
      *(v90 + 48) = v87;
      v84 += 8;
      if (v81 == v82)
      {
        v150 = v83;

        v9 = v156;
        v69 = v158;
        v43 = v153;
        goto LABEL_82;
      }
    }

    goto LABEL_126;
  }

  v150 = MEMORY[0x1E69E7CC0];
LABEL_82:
  v91 = 0;
  v92 = MEMORY[0x1E69E7CC0];
LABEL_83:
  v93 = 6 * v91;
  while (v43 != v91)
  {
    if (v91 >= v9[2])
    {
      goto LABEL_123;
    }

    v94 = v93 * 8 + 48;
    ++v91;
    v95 = v9[v93 + 4];
    v93 += 6;
    if (v95)
    {
      v96 = *(v9 + v94 - 8);
      v97 = *(v9 + v94);
      v98 = *(v9 + v94 + 8);
      v99 = *(v9 + v94 + 16);
      v100 = *(v9 + v94 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      v164 = v99;
      if ((result & 1) == 0)
      {
        result = sub_1C6B39574(0, *(v92 + 16) + 1, 1);
        v69 = v158;
      }

      v102 = *(v92 + 16);
      v101 = *(v92 + 24);
      if (v102 >= v101 >> 1)
      {
        result = sub_1C6B39574((v101 > 1), v102 + 1, 1);
        v69 = v158;
      }

      *(v92 + 16) = v102 + 1;
      v103 = v92 + 48 * v102;
      *(v103 + 32) = 1;
      *(v103 + 40) = v96;
      *(v103 + 48) = v97;
      *(v103 + 56) = v98;
      *(v103 + 64) = v164;
      *(v103 + 72) = v100;
      goto LABEL_83;
    }
  }

  v104 = *(v92 + 16);
  if (v104)
  {
    v170 = MEMORY[0x1E69E7CC0];
    sub_1C6B39554(0, v104, 0);
    v105 = 0;
    v106 = v170;
    v107 = *(v170 + 16);
    v108 = 40 * v107 + 64;
    v161 = v92;
    do
    {
      v109 = *(v92 + v105 + 40);
      v110 = *(v92 + v105 + 48);
      v111 = *(v92 + v105 + 56);
      v112 = *(v92 + v105 + 64);
      v165 = *(v92 + v105 + 72);
      v171 = v106;
      v113 = v107 + 1;
      v114 = *(v106 + 24);
      v115 = v106;

      v106 = v115;
      if (v107 >= v114 >> 1)
      {
        sub_1C6B39554((v114 > 1), v113, 1);
        v106 = v171;
      }

      *(v106 + 16) = v113;
      v116 = (v106 + v108);
      *(v116 - 4) = v109;
      *(v116 - 3) = v110;
      *(v116 - 4) = v111;
      v108 += 40;
      *(v116 - 1) = v112;
      v105 += 48;
      ++v107;
      *v116 = v165;
      --v104;
      v92 = v161;
    }

    while (v104);
    v166 = v106;

    v69 = v158;
  }

  else
  {

    v166 = MEMORY[0x1E69E7CC0];
  }

  v117 = 0;
  v118 = MEMORY[0x1E69E7CC0];
  v119 = MEMORY[0x1E69E7CC0];
  v120 = v168;
LABEL_100:
  v121 = 32 * v117;
  while (v69 != v117)
  {
    if (v117 >= *(v120 + 16))
    {
      goto LABEL_124;
    }

    v122 = v121 + 32;
    ++v117;
    v123 = *(v120 + v121 + 32);
    v121 += 32;
    if (v123)
    {
      v124 = *(v120 + v122 + 8);
      v125 = *(v120 + v122 + 16);
      v126 = *(v120 + v122 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6B39534(0, *(v119 + 16) + 1, 1);
        v69 = v158;
      }

      v128 = *(v119 + 16);
      v127 = *(v119 + 24);
      v120 = v168;
      if (v128 >= v127 >> 1)
      {
        result = sub_1C6B39534((v127 > 1), v128 + 1, 1);
        v69 = v158;
        v120 = v168;
      }

      *(v119 + 16) = v128 + 1;
      v129 = v119 + 32 * v128;
      *(v129 + 32) = 1;
      *(v129 + 40) = v124;
      *(v129 + 48) = v125;
      *(v129 + 56) = v126;
      goto LABEL_100;
    }
  }

  v130 = *(v119 + 16);
  if (v130)
  {
    v172 = v118;
    result = sub_1C6B39514(0, v130, 0);
    v131 = 0;
    v132 = v172;
    v133 = (v119 + 56);
    while (v131 < *(v119 + 16))
    {
      v134 = *(v133 - 2);
      v135 = *(v133 - 1);
      v136 = *v133;
      v138 = *(v172 + 16);
      v137 = *(v172 + 24);

      if (v138 >= v137 >> 1)
      {
        result = sub_1C6B39514((v137 > 1), v138 + 1, 1);
      }

      ++v131;
      *(v172 + 16) = v138 + 1;
      v139 = v172 + 24 * v138;
      *(v139 + 32) = v134;
      *(v139 + 40) = v135;
      *(v139 + 48) = v136;
      v133 += 8;
      if (v130 == v131)
      {

        goto LABEL_117;
      }
    }

    goto LABEL_127;
  }

  v132 = MEMORY[0x1E69E7CC0];
LABEL_117:
  result = swift_allocObject();
  *(result + 16) = xmmword_1C6D7F520;
  v140 = *(v150 + 16);
  v141 = *(v132 + 16);
  if (!__OFADD__(v140, v141))
  {
    v142 = v154[10];
    v143 = MEMORY[0x1E69E6530];
    *(result + 56) = MEMORY[0x1E69E6530];
    v144 = MEMORY[0x1E69E65A8];
    *(result + 64) = MEMORY[0x1E69E65A8];
    *(result + 72) = v140;
    *(result + 32) = v140 + v141;
    *(result + 96) = v143;
    *(result + 104) = v144;
    *(result + 136) = v143;
    *(result + 144) = v144;
    *(result + 112) = v141;
    v145 = *(v151 + 16);
    *(result + 176) = v143;
    *(result + 184) = v144;
    *(result + 152) = v145;
    v146 = *(v166 + 16);
    *(result + 216) = v143;
    *(result + 224) = v144;
    *(result + 192) = v146;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v148 = v154[3];
    v147 = v154[4];
    *v148 = v151;
    v148[1] = v150;
    *v147 = v166;
    v147[1] = v132;
    v149 = v154[1];

    return v149();
  }

LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C6BEB618()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1C6BEB67C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[8];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter@<X0>(void *a1@<X8>)
{
  v194 = a1;
  v188 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
  v1 = *(*(v188 - 8) + 64);
  MEMORY[0x1EEE9AC00](v188);
  v192 = &v158 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
  v3 = *(*(v186 - 8) + 64);
  MEMORY[0x1EEE9AC00](v186);
  v191 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
  v5 = *(*(v184 - 8) + 64);
  MEMORY[0x1EEE9AC00](v184);
  v190 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v7 = *(*(v182 - 8) + 64);
  MEMORY[0x1EEE9AC00](v182);
  v189 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
  v9 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v187 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved();
  v11 = *(*(v178 - 8) + 64);
  MEMORY[0x1EEE9AC00](v178);
  v185 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
  v13 = *(*(v176 - 8) + 64);
  MEMORY[0x1EEE9AC00](v176);
  v183 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
  v15 = *(*(v174 - 8) + 64);
  MEMORY[0x1EEE9AC00](v174);
  v181 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
  v17 = *(*(v172 - 8) + 64);
  MEMORY[0x1EEE9AC00](v172);
  v179 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
  v19 = *(*(v168 - 8) + 64);
  MEMORY[0x1EEE9AC00](v168);
  v177 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  v21 = *(*(v164 - 8) + 64);
  MEMORY[0x1EEE9AC00](v164);
  v175 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v23 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161);
  v173 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v25 = *(*(v159 - 8) + 64);
  MEMORY[0x1EEE9AC00](v159);
  v170 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BED644();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v171 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v169 = &v158 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v167 = &v158 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v166 = &v158 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v165 = &v158 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v163 = &v158 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v162 = &v158 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v160 = &v158 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v158 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v158 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48);
  v53 = &v158 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v56 = &v158 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54);
  v59 = &v158 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v158 - v60;
  v62 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v158 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v158 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BED69C(v193, v69, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v115 = v170;
      sub_1C6BED704(v69, v170, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      sub_1C6BED69C(v115 + *(v159 + 20), v59, sub_1C6BED644);
      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v84 = *(v83 - 8);
      v116 = *(v84 + 48);
      v117 = v116(v59, 1, v83);
      v87 = v194;
      if (v117 != 1)
      {
        sub_1C6BED76C(v115, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
        v157 = v59;
        goto LABEL_58;
      }

      *v194 = 0;
      *(v87 + 8) = 0xE000000000000000;
      v118 = *(v83 + 20);
      v119 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
      (*(*(v119 - 8) + 56))(v87 + v118, 1, 1, v119);
      v120 = v87 + *(v83 + 24);
      sub_1C6D78A30();
      sub_1C6BED76C(v115, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      if (v116(v59, 1, v83) != 1)
      {
        sub_1C6BED76C(v59, sub_1C6BED644);
      }

      return (*(v84 + 56))(v87, 0, 1, v83);
    case 2u:
      v92 = v173;
      sub_1C6BED704(v69, v173, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      sub_1C6BED69C(v92 + *(v161 + 24), v56, sub_1C6BED644);
      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v84 = *(v83 - 8);
      v93 = *(v84 + 48);
      v94 = v93(v56, 1, v83);
      v87 = v194;
      if (v94 != 1)
      {
        sub_1C6BED76C(v92, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        v157 = v56;
        goto LABEL_58;
      }

      *v194 = 0;
      *(v87 + 8) = 0xE000000000000000;
      v95 = *(v83 + 20);
      v96 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
      (*(*(v96 - 8) + 56))(v87 + v95, 1, 1, v96);
      v97 = v87 + *(v83 + 24);
      sub_1C6D78A30();
      sub_1C6BED76C(v92, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      if (v93(v56, 1, v83) != 1)
      {
        sub_1C6BED76C(v56, sub_1C6BED644);
      }

      return (*(v84 + 56))(v87, 0, 1, v83);
    case 3u:
      v98 = v175;
      sub_1C6BED704(v69, v175, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
      sub_1C6BED69C(v98 + *(v164 + 24), v53, sub_1C6BED644);
      v99 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v100 = *(v99 - 8);
      v101 = *(v100 + 48);
      v102 = v101(v53, 1, v99);
      v103 = v194;
      if (v102 == 1)
      {
        *v194 = 0;
        *(v103 + 8) = 0xE000000000000000;
        v104 = *(v99 + 20);
        v105 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v105 - 8) + 56))(v103 + v104, 1, 1, v105);
        v106 = v103 + *(v99 + 24);
        sub_1C6D78A30();
        sub_1C6BED76C(v98, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
        if (v101(v53, 1, v99) != 1)
        {
          sub_1C6BED76C(v53, sub_1C6BED644);
        }
      }

      else
      {
        sub_1C6BED76C(v98, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
        sub_1C6BED704(v53, v103, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      return (*(v100 + 56))(v103, 0, 1, v99);
    case 4u:
      v72 = v177;
      sub_1C6BED704(v69, v177, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      sub_1C6BED69C(v72 + *(v168 + 20), v50, sub_1C6BED644);
      v73 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v74 = *(v73 - 8);
      v75 = *(v74 + 48);
      v76 = v75(v50, 1, v73);
      v77 = v194;
      if (v76 != 1)
      {
        sub_1C6BED76C(v72, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
        v155 = v50;
        goto LABEL_48;
      }

      *v194 = 0;
      *(v77 + 8) = 0xE000000000000000;
      v78 = *(v73 + 20);
      v79 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
      (*(*(v79 - 8) + 56))(v77 + v78, 1, 1, v79);
      v80 = v77 + *(v73 + 24);
      sub_1C6D78A30();
      sub_1C6BED76C(v72, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      if (v75(v50, 1, v73) != 1)
      {
        sub_1C6BED76C(v50, sub_1C6BED644);
      }

      return (*(v74 + 56))(v77, 0, 1, v73);
    case 5u:
      v81 = v181;
      sub_1C6BED704(v69, v181, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      v82 = v160;
      sub_1C6BED69C(v81 + *(v174 + 20), v160, sub_1C6BED644);
      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v84 = *(v83 - 8);
      v85 = *(v84 + 48);
      v127 = v85(v82, 1, v83);
      v87 = v194;
      if (v127 == 1)
      {
        *v194 = 0;
        *(v87 + 8) = 0xE000000000000000;
        v128 = *(v83 + 20);
        v129 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v129 - 8) + 56))(v87 + v128, 1, 1, v129);
        v130 = v87 + *(v83 + 24);
        sub_1C6D78A30();
        v91 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked;
        goto LABEL_37;
      }

      v156 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked;
      goto LABEL_57;
    case 6u:
      v81 = v185;
      sub_1C6BED704(v69, v185, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      v82 = v163;
      sub_1C6BED69C(v81 + *(v178 + 20), v163, sub_1C6BED644);
      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v84 = *(v83 - 8);
      v85 = *(v84 + 48);
      v135 = v85(v82, 1, v83);
      v87 = v194;
      if (v135 == 1)
      {
        *v194 = 0;
        *(v87 + 8) = 0xE000000000000000;
        v136 = *(v83 + 20);
        v137 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v137 - 8) + 56))(v87 + v136, 1, 1, v137);
        v138 = v87 + *(v83 + 24);
        sub_1C6D78A30();
        v91 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved;
        goto LABEL_37;
      }

      v156 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved;
      goto LABEL_57;
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0x12u:
    case 0x13u:
      sub_1C6BED76C(v69, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v70 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      return (*(*(v70 - 8) + 56))(v194, 1, 1, v70);
    case 0xCu:
      v81 = v190;
      sub_1C6BED704(v69, v190, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      v82 = v167;
      sub_1C6BED69C(v81 + *(v184 + 20), v167, sub_1C6BED644);
      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v84 = *(v83 - 8);
      v85 = *(v84 + 48);
      v143 = v85(v82, 1, v83);
      v87 = v194;
      if (v143 == 1)
      {
        *v194 = 0;
        *(v87 + 8) = 0xE000000000000000;
        v144 = *(v83 + 20);
        v145 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v145 - 8) + 56))(v87 + v144, 1, 1, v145);
        v146 = v87 + *(v83 + 24);
        sub_1C6D78A30();
        v91 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited;
        goto LABEL_37;
      }

      v156 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited;
      goto LABEL_57;
    case 0xDu:
      v81 = v191;
      sub_1C6BED704(v69, v191, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
      v82 = v169;
      sub_1C6BED69C(v81 + *(v186 + 20), v169, sub_1C6BED644);
      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v84 = *(v83 - 8);
      v85 = *(v84 + 48);
      v86 = v85(v82, 1, v83);
      v87 = v194;
      if (v86 == 1)
      {
        *v194 = 0;
        *(v87 + 8) = 0xE000000000000000;
        v88 = *(v83 + 20);
        v89 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v89 - 8) + 56))(v87 + v88, 1, 1, v89);
        v90 = v87 + *(v83 + 24);
        sub_1C6D78A30();
        v91 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened;
        goto LABEL_37;
      }

      v156 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened;
      goto LABEL_57;
    case 0xEu:
      v81 = v192;
      sub_1C6BED704(v69, v192, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      v82 = v171;
      sub_1C6BED69C(v81 + *(v188 + 20), v171, sub_1C6BED644);
      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v84 = *(v83 - 8);
      v85 = *(v84 + 48);
      v151 = v85(v82, 1, v83);
      v87 = v194;
      if (v151 == 1)
      {
        *v194 = 0;
        *(v87 + 8) = 0xE000000000000000;
        v152 = *(v83 + 20);
        v153 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v153 - 8) + 56))(v87 + v152, 1, 1, v153);
        v154 = v87 + *(v83 + 24);
        sub_1C6D78A30();
        v91 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished;
        goto LABEL_37;
      }

      v156 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished;
      goto LABEL_57;
    case 0xFu:
      v121 = v179;
      sub_1C6BED704(v69, v179, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      sub_1C6BED69C(v121 + *(v172 + 20), v47, sub_1C6BED644);
      v73 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v74 = *(v73 - 8);
      v122 = *(v74 + 48);
      v123 = v122(v47, 1, v73);
      v77 = v194;
      if (v123 == 1)
      {
        *v194 = 0;
        *(v77 + 8) = 0xE000000000000000;
        v124 = *(v73 + 20);
        v125 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v125 - 8) + 56))(v77 + v124, 1, 1, v125);
        v126 = v77 + *(v73 + 24);
        sub_1C6D78A30();
        sub_1C6BED76C(v121, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
        if (v122(v47, 1, v73) != 1)
        {
          sub_1C6BED76C(v47, sub_1C6BED644);
        }
      }

      else
      {
        sub_1C6BED76C(v121, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
        v155 = v47;
LABEL_48:
        sub_1C6BED704(v155, v77, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      return (*(v74 + 56))(v77, 0, 1, v73);
    case 0x10u:
      v81 = v183;
      sub_1C6BED704(v69, v183, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      v82 = v162;
      sub_1C6BED69C(v81 + *(v176 + 20), v162, sub_1C6BED644);
      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v84 = *(v83 - 8);
      v85 = *(v84 + 48);
      v139 = v85(v82, 1, v83);
      v87 = v194;
      if (v139 == 1)
      {
        *v194 = 0;
        *(v87 + 8) = 0xE000000000000000;
        v140 = *(v83 + 20);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v141 - 8) + 56))(v87 + v140, 1, 1, v141);
        v142 = v87 + *(v83 + 24);
        sub_1C6D78A30();
        v91 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked;
        goto LABEL_37;
      }

      v156 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked;
      goto LABEL_57;
    case 0x11u:
      v81 = v187;
      sub_1C6BED704(v69, v187, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      v82 = v165;
      sub_1C6BED69C(v81 + *(v180 + 20), v165, sub_1C6BED644);
      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v84 = *(v83 - 8);
      v85 = *(v84 + 48);
      v147 = v85(v82, 1, v83);
      v87 = v194;
      if (v147 == 1)
      {
        *v194 = 0;
        *(v87 + 8) = 0xE000000000000000;
        v148 = *(v83 + 20);
        v149 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v149 - 8) + 56))(v87 + v148, 1, 1, v149);
        v150 = v87 + *(v83 + 24);
        sub_1C6D78A30();
        v91 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved;
        goto LABEL_37;
      }

      v156 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved;
      goto LABEL_57;
    case 0x14u:
      v81 = v189;
      sub_1C6BED704(v69, v189, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      v82 = v166;
      sub_1C6BED69C(v81 + *(v182 + 24), v166, sub_1C6BED644);
      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v84 = *(v83 - 8);
      v85 = *(v84 + 48);
      v131 = v85(v82, 1, v83);
      v87 = v194;
      if (v131 == 1)
      {
        *v194 = 0;
        *(v87 + 8) = 0xE000000000000000;
        v132 = *(v83 + 20);
        v133 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v133 - 8) + 56))(v87 + v132, 1, 1, v133);
        v134 = v87 + *(v83 + 24);
        sub_1C6D78A30();
        v91 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended;
LABEL_37:
        sub_1C6BED76C(v81, v91);
        if (v85(v82, 1, v83) != 1)
        {
          sub_1C6BED76C(v82, sub_1C6BED644);
        }
      }

      else
      {
        v156 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended;
LABEL_57:
        sub_1C6BED76C(v81, v156);
        v157 = v82;
LABEL_58:
        sub_1C6BED704(v157, v87, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      return (*(v84 + 56))(v87, 0, 1, v83);
    default:
      sub_1C6BED704(v69, v65, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
      sub_1C6BED69C(&v65[*(v62 + 20)], v61, sub_1C6BED644);
      v107 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v108 = *(v107 - 8);
      v109 = *(v108 + 48);
      v110 = v109(v61, 1, v107);
      v111 = v194;
      if (v110 == 1)
      {
        *v194 = 0;
        *(v111 + 8) = 0xE000000000000000;
        v112 = *(v107 + 20);
        v113 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v113 - 8) + 56))(v111 + v112, 1, 1, v113);
        v114 = v111 + *(v107 + 24);
        sub_1C6D78A30();
        sub_1C6BED76C(v65, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        if (v109(v61, 1, v107) != 1)
        {
          sub_1C6BED76C(v61, sub_1C6BED644);
        }
      }

      else
      {
        sub_1C6BED76C(v65, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        sub_1C6BED704(v61, v111, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      return (*(v108 + 56))(v111, 0, 1, v107);
  }
}

unint64_t Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter()
{
  v1 = v0;
  v2 = 0x53656C6369747261;
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BED69C(v1, v6, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v2 = 0x56656C6369747261;
      break;
    case 2u:
      v2 = 0x52656C6369747261;
      break;
    case 4u:
      v2 = 0x4C656C6369747261;
      break;
    case 5u:
      v2 = 0x44656C6369747261;
      break;
    case 7u:
      v2 = 0x646574754D676174;
      break;
    case 8u:
      v2 = 0x74756D6E55676174;
      break;
    case 9u:
      v2 = 0x6F6C6C6F46676174;
      break;
    case 0xAu:
      v2 = 0x6C6F666E55676174;
      break;
    case 0xBu:
      v2 = 0x5664656546676174;
      break;
    case 0xCu:
      v2 = 0x7369566B63617274;
      break;
    case 0xDu:
      v2 = 0x73694C6B63617274;
      break;
    case 0xEu:
      v2 = 0x6E69466B63617274;
      break;
    case 0xFu:
    case 0x11u:
      v2 = 0x55656C6369747261;
      break;
    case 0x10u:
      v2 = 0xD000000000000011;
      break;
    case 0x12u:
      v2 = 0x61547374726F7073;
      break;
    case 0x13u:
      v2 = 0x726F6E6749676174;
      break;
    case 0x14u:
      v2 = 0xD000000000000012;
      break;
    default:
      break;
  }

  sub_1C6BED76C(v6, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  return v2;
}

void sub_1C6BED644()
{
  if (!qword_1EDCE52B0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticle(255);
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE52B0);
    }
  }
}

uint64_t sub_1C6BED69C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BED704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BED76C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6BED7CC(unint64_t a1, uint64_t a2)
{
  v52 = a2;
  sub_1C6BEE6BC(0, &unk_1EDCDFCC0, sub_1C6BEE720, MEMORY[0x1E69B59A8]);
  v56 = v4;
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - v6;
  v8 = sub_1C6D79040();
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D79170();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D791B0();
  v55 = *(v17 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C6B6DC2C(a1);
  if (v20)
  {
    v21 = v20;
    v22 = *MEMORY[0x1E69B5CA0];
    v52 = v2;
    v24 = v54;
    v23 = v55;
    (*(v55 + 104))(v54, v22, v17);
    v25 = v53[11];
    v49 = v53[10];
    v48 = __swift_project_boxed_opaque_existential_1(v53 + 7, v49);
    v26 = *(v23 + 16);
    v50 = v17;
    v26(v16, v24, v17);
    v27 = *MEMORY[0x1E69B5A18];
    v51 = v13;
    v28 = *(v13 + 104);
    v53 = v12;
    v28(v16, v27, v12);
    v29 = *(v25 + 16);
    v30 = sub_1C6BEE720();
    v31 = v52;
    v32 = v29(v21, v16, v30, v49, v25);
    if (v31)
    {

      (*(v51 + 8))(v16, v53);
      (*(v55 + 8))(v54, v50);
    }

    else
    {
      v35 = v32;

      (*(v51 + 8))(v16, v53);
      (*(v55 + 8))(v54, v50);
      v36 = *(v35 + 16);
      if (v36)
      {
        v52 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        sub_1C6B393A4(0, v36, 0);
        v16 = v60;
        v37 = *(v59 + 16);
        v38 = *(v59 + 80);
        v51 = v35;
        v39 = v35 + ((v38 + 32) & ~v38);
        v54 = *(v59 + 72);
        v55 = v37;
        v59 += 16;
        v40 = (v59 - 8);
        v53 = (v58 + 32);
        v41 = v47;
        do
        {
          v42 = v56;
          (v55)(v7, v39, v56);
          sub_1C6D790B0();
          sub_1C6D79080();
          sub_1C6D79020();
          (*v40)(v7, v42);
          v60 = v16;
          v44 = *(v16 + 2);
          v43 = *(v16 + 3);
          if (v44 >= v43 >> 1)
          {
            sub_1C6B393A4(v43 > 1, v44 + 1, 1);
            v41 = v47;
            v16 = v60;
          }

          *(v16 + 2) = v44 + 1;
          (*(v58 + 32))(&v16[((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v44], v41, v57);
          v39 += v54;
          --v36;
        }

        while (v36);
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  else
  {
    v33 = v53[10];
    v34 = v53[11];
    __swift_project_boxed_opaque_existential_1(v53 + 7, v33);
    return (*(v34 + 8))(a1, v52, v33, v34);
  }

  return v16;
}

uint64_t sub_1C6BEDD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C6D79170();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[10];
  v13 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v12);
  v14 = sub_1C6D791B0();
  (*(*(v14 - 8) + 16))(v11, a2, v14);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B5A18], v7);
  v15 = (*(v13 + 16))(a1, v11, a3, v12, v13);
  (*(v8 + 8))(v11, v7);
  return v15;
}

uint64_t sub_1C6BEDEE4(uint64_t a1, uint64_t a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  return (*(v6 + 48))(a1, a2, v5, v6);
}

uint64_t sub_1C6BEDF50(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v39 = a3;
  v37 = a1;
  v38 = a2;
  v40 = MEMORY[0x1E69B5D80];
  v4 = MEMORY[0x1E69E6720];
  sub_1C6BEE6BC(0, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &v26 - v7;
  v36 = MEMORY[0x1E69B5CF0];
  sub_1C6BEE6BC(0, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], v4);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v13 = v3[5];
  v12 = v3[6];
  v35 = __swift_project_boxed_opaque_existential_1(v3 + 2, v13);
  v34 = sub_1C6D79230();
  v31 = v14;
  v32 = sub_1C6D79220();
  v30 = v15;
  sub_1C6D79250();
  v29 = sub_1C6D79280();
  v17 = v16;
  v28 = sub_1C6D79260();
  v19 = v18;
  v27 = sub_1C6D79270();
  v21 = v20;
  v22 = sub_1C6D79210();
  v23 = v33;
  sub_1C6D79240();
  v24 = (*(v12 + 8))(v37, v38, v39, v34, v31 & 1, v32, v30 & 1, v11, v29, v17 & 1, v28, v19 & 1, v27, v21 & 1, v22, v23, 0, 1, v13, v12);

  sub_1C6BEE64C(v23, &unk_1EDCDFCA0, v40);
  sub_1C6BEE64C(v11, &qword_1EDCDFCB0, v36);
  return v24;
}

uint64_t sub_1C6BEE1B8(uint64_t a1, uint64_t a2)
{
  v5 = v2[15];
  v6 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t sub_1C6BEE224()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6BEE2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *v5;
  v10 = *(*v5 + 80);
  v11 = *(v9 + 88);
  __swift_project_boxed_opaque_existential_1((v9 + 56), v10);
  return a5(a1, a2, v10, v11);
}

uint64_t sub_1C6BEE350(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  __swift_project_boxed_opaque_existential_1((*v1 + 56), v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_1C6BEE3B0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  __swift_project_boxed_opaque_existential_1((*v1 + 56), v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t sub_1C6BEE410(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  __swift_project_boxed_opaque_existential_1((*v1 + 56), v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t sub_1C6BEE4B8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_1C6BEE510()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_1C6BEE64C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BEE6BC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6BEE6BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C6BEE720()
{
  result = qword_1EDCDF7B0;
  if (!qword_1EDCDF7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCDF7B0);
  }

  return result;
}

id Com_Apple_News_Algorithms_Proto_Model_Float16List.coreMLFloat16s.getter()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1C6D75E50();
  v4 = [v3 bytes];
  v5 = v3;
  sub_1C6BEE988();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6D839E0;
  v7 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v7 != 2 || !__OFSUB__(*(v1 + 24), *(v1 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v7)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
    __break(1u);
  }

LABEL_9:
  *(v6 + 32) = sub_1C6D799A0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D839E0;
  sub_1C6B18500();
  *(v8 + 32) = sub_1C6D79BA0();
  v9 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v10 = sub_1C6D79760();

  v11 = sub_1C6D79760();

  v18[0] = 0;
  v12 = [v9 initWithDataPointer:v4 shape:v10 dataType:65552 strides:v11 deallocator:0 error:v18];

  if (v12)
  {
    v13 = v18[0];
  }

  else
  {
    v14 = v18[0];
    v15 = sub_1C6D75CC0();

    swift_willThrow();
    v12 = [objc_allocWithZone(MEMORY[0x1E695FED0]) init];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1C6BEE988()
{
  if (!qword_1EDCEA420)
  {
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA420);
    }
  }
}

uint64_t sub_1C6BEE9DC(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1C6B39594(0, v2, 0);
  v3 = v28;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  result = sub_1C6D79CC0();
  v8 = result;
  v9 = 0;
  v24 = v2;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v26 = *(a1 + 36);
    v12 = (*(a1 + 48) + 16 * v8);
    v13 = v12[1];
    v27 = *v12;
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);

    if (v15 >= v14 >> 1)
    {
      result = sub_1C6B39594((v14 > 1), v15 + 1, 1);
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 24 * v15;
    *(v16 + 32) = v27;
    *(v16 + 40) = v13;
    *(v16 + 48) = a2;
    v10 = 1 << *(a1 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v5 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v11);
    if ((v17 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v8 & 0x3F));
    if (v18)
    {
      v10 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (a1 + 72 + 8 * v11);
      while (v20 < (v10 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1C6B360A8(v8, v26, 0);
          v10 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1C6B360A8(v8, v26, 0);
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v24)
    {
      return v3;
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

uint64_t sub_1C6BEEC14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C6B39484(0, v1, 0);
    v2 = v15;
    sub_1C6BF5804(0, &qword_1EDCDFB10);
    sub_1C6B3CAFC(0, &qword_1EDCDFB60);
    v4 = (a1 + 48);
    do
    {
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;

      swift_dynamicCast();
      v6 = *(v15 + 16);
      v5 = *(v15 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C6B39484((v5 > 1), v6 + 1, 1);
      }

      *(v15 + 16) = v6 + 1;
      v7 = (v15 + 24 * v6);
      v7[4] = v12;
      v7[5] = v13;
      v7[6] = v14;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C6BEED64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C6B394A4(0, v1, 0);
    v2 = v15;
    sub_1C6B3CAFC(0, &qword_1EDCDFB60);
    sub_1C6BF5804(0, &qword_1EDCDFB10);
    v4 = (a1 + 48);
    do
    {
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;

      swift_dynamicCast();
      v6 = *(v15 + 16);
      v5 = *(v15 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C6B394A4((v5 > 1), v6 + 1, 1);
      }

      *(v15 + 16) = v6 + 1;
      v7 = (v15 + 24 * v6);
      v7[4] = v12;
      v7[5] = v13;
      v7[6] = v14;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C6BEEEB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C6B39514(0, v1, 0);
    v2 = v15;
    sub_1C6BF5804(0, &qword_1EDCE6680);
    sub_1C6B3CAFC(0, &unk_1EDCDFBB0);
    v4 = (a1 + 48);
    do
    {
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;

      swift_dynamicCast();
      v6 = *(v15 + 16);
      v5 = *(v15 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C6B39514((v5 > 1), v6 + 1, 1);
      }

      *(v15 + 16) = v6 + 1;
      v7 = v15 + 24 * v6;
      *(v7 + 32) = v12;
      *(v7 + 40) = v13;
      *(v7 + 48) = v14;
      v4 += 6;
      --v1;
    }

    while (v1);
  }

  return v2;
}