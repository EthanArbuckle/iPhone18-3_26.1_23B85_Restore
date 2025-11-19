uint64_t sub_100030378(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230D0;
  v2[4] = qword_1001230D0;

  return _swift_task_switch(sub_100030414, v3, 0);
}

uint64_t sub_100030414()
{
  if (*(v0[3] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning) == 1)
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_1000305B0;
    v2 = v0[2];
    v3 = v0[3];

    return sub_100030910(v2);
  }

  else
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v5 = sub_1000E1F08();
    sub_1000049D0(v5, qword_100123188);
    v6 = sub_1000E1EE8();
    v7 = sub_1000E2658();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "update - IRSession not running", v8, 2u);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000305B0(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1000306C8, v3, 0);
}

uint64_t sub_1000306C8()
{
  v18 = v0;
  if (*(v0[6] + 16))
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v1 = v0[2];
    v2 = sub_1000E1F08();
    sub_1000049D0(v2, qword_100123188);

    v3 = sub_1000E1EE8();
    v4 = sub_1000E2658();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      v8 = sub_1000E2478();
      v10 = sub_100029C70(v8, v9, &v17);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Informing IR to update idsIdentifiers: %s", v6, 0xCu);
      sub_10000E9DC(v7);
    }

    v11 = v0[6];
    v12 = *(v0[3] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession);

    sub_1000D01E4(v13);
    sub_10000CAAC(0, &qword_10011F078, IRCandidate_ptr);
    sub_10001B174(&unk_10011F080, &qword_10011F078, IRCandidate_ptr);
    isa = sub_1000E25D8().super.isa;

    [v12 updateCandidates:isa];
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100030910(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230D0;
  v2[5] = qword_1001230D0;

  return _swift_task_switch(sub_1000309AC, v3, 0);
}

uint64_t sub_1000309AC()
{
  v1 = v0[3];
  v2 = v1[2];
  v0[6] = v2;
  if (v2)
  {
    v0[8] = 0;
    v0[9] = _swiftEmptyDictionarySingleton;
    v0[7] = _swiftEmptyDictionarySingleton;
    v3 = v1[4];
    v0[10] = v3;
    v4 = v1[5];
    v0[11] = v4;

    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_100030AC4;
    v6 = v0[4];

    return sub_1000367E4(v3, v4);
  }

  else
  {
    v8 = v0[1];

    return v8(_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_100030AC4(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100030BDC, v3, 0);
}

void sub_100030BDC()
{
  v1 = v0[13];
  v2 = v0[11];
  if (!v1)
  {
    v17 = v0[11];

    v18 = v0[9];
    v19 = v0[7];
    goto LABEL_17;
  }

  v3 = v0[10];
  v4 = v0[7];
  v5 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[2] = v4;
  v7 = sub_10000B2D0(v3, v2);
  v9 = *(v4 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v3) = v8;
  if (*(v0[7] + 24) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_13:
    v24 = v7;
    sub_1000CB35C();
    v7 = v24;
    v20 = v0[11];
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_14:
    v25 = v0[10];
    v19 = v0[2];
    v19[(v7 >> 6) + 8] |= 1 << v7;
    v26 = (v19[6] + 16 * v7);
    *v26 = v25;
    v26[1] = v20;
    *(v19[7] + 8 * v7) = v5;

    v27 = v19[2];
    v11 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    v19[2] = v28;
    goto LABEL_16;
  }

  v14 = v0[10];
  v13 = v0[11];
  sub_10001EF90(v12, isUniquelyReferenced_nonNull_native);
  v15 = v0[2];
  v7 = sub_10000B2D0(v14, v13);
  if ((v3 & 1) != (v16 & 1))
  {

    sub_1000E2CC8();
    return;
  }

LABEL_10:
  v20 = v0[11];
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = v7;

  v19 = v0[2];
  v22 = v19[7];
  v23 = *(v22 + 8 * v21);
  *(v22 + 8 * v21) = v5;

LABEL_16:
  v18 = v19;
LABEL_17:
  v29 = v0[8] + 1;
  if (v29 == v0[6])
  {
    v30 = v0[1];

    v30(v18);
  }

  else
  {
    v0[8] = v29;
    v0[9] = v18;
    v0[7] = v19;
    v31 = v0[3] + 16 * v29;
    v32 = *(v31 + 32);
    v0[10] = v32;
    v33 = *(v31 + 40);
    v0[11] = v33;

    v34 = swift_task_alloc();
    v0[12] = v34;
    *v34 = v0;
    v34[1] = sub_100030AC4;
    v35 = v0[4];

    sub_1000367E4(v32, v33);
  }
}

void sub_100030E7C(char a1, uint64_t a2, unint64_t a3)
{
  if (v3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning] == 1)
  {
    v4 = v3;
    v8 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_identifierToCandidateMap;
    swift_beginAccess();
    v9 = *&v3[v8];
    if (*(v9 + 16))
    {
      v10 = *&v3[v8];

      v11 = sub_10000B2D0(a2, a3);
      if (v12)
      {
        v13 = *(*(v9 + 56) + 8 * v11);

        v14 = [objc_allocWithZone(IRAppleTVControlEvent) initWithEventType:qword_1000F16A8[a1] eventSubType:0];
        if (qword_10011DC80 != -1)
        {
          swift_once();
        }

        v15 = sub_1000E1F08();
        sub_1000049D0(v15, qword_100123188);
        v16 = v13;
        v17 = v14;
        v18 = sub_1000E1EE8();
        v19 = sub_1000E2698();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412546;
          *(v20 + 4) = v17;
          *(v20 + 12) = 2112;
          *(v20 + 14) = v16;
          *v21 = v17;
          v21[1] = v16;
          v22 = v16;
          v23 = v17;
          _os_log_impl(&_mh_execute_header, v18, v19, "Add learning IREvent: %@ for candidate: %@", v20, 0x16u);
          sub_10000ADE4(&unk_10011EAC0, &unk_1000F0E60);
          swift_arrayDestroy();
        }

        [*&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession] addEvent:v17 forCandidate:v16];
        return;
      }
    }

    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v27 = sub_1000E1F08();
    sub_1000049D0(v27, qword_100123188);

    v28 = v3;
    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_100029C70(a2, a3, &v38);
      *(v31 + 12) = 2080;
      v32 = *&v4[v8];
      sub_10000CAAC(0, &qword_10011F078, IRCandidate_ptr);

      v33 = sub_1000E22C8();
      v35 = v34;

      v36 = sub_100029C70(v33, v35, &v38);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "didSelect %s but could not find matching candidate in candidates:%s", v31, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v24 = sub_1000E1F08();
    sub_1000049D0(v24, qword_100123188);
    oslog = sub_1000E1EE8();
    v25 = sub_1000E2698();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v25, "addEvent - IRSession not running", v26, 2u);
    }
  }
}

void sub_100031358(uint64_t a1, unint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning) == 1)
  {
    v5 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_identifierToCandidateMap;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (*(v6 + 16))
    {
      v7 = v2;

      v8 = sub_10000B2D0(a1, a2);
      if (v9)
      {
        v10 = *(*(v6 + 56) + 8 * v8);

        if (qword_10011DC80 != -1)
        {
          swift_once();
        }

        v11 = sub_1000E1F08();
        sub_1000049D0(v11, qword_100123188);
        v12 = v10;
        v13 = sub_1000E1EE8();
        v14 = sub_1000E2698();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v15 = 138412290;
          *(v15 + 4) = v12;
          *v16 = v12;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v13, v14, "Adding user interaction IREvent for candidate: %@", v15, 0xCu);
          sub_1000033C8(v16, &unk_10011EAC0, &unk_1000F0E60);
        }

        v18 = [objc_allocWithZone(IRAppleTVControlEvent) initWithEventType:3 eventSubType:0];
        [*(v7 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession) addEvent:v18 forCandidate:v12];

LABEL_21:
        return;
      }
    }

    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v22 = sub_1000E1F08();
    sub_1000049D0(v22, qword_100123188);

    v18 = sub_1000E1EE8();
    v23 = sub_1000E2678();

    if (os_log_type_enabled(v18, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100029C70(a1, a2, &v27);
      _os_log_impl(&_mh_execute_header, v18, v23, "markEventComplete for %s but could not find matching candidate", v24, 0xCu);
      sub_10000E9DC(v25);
    }

    goto LABEL_21;
  }

  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v19 = sub_1000E1F08();
  sub_1000049D0(v19, qword_100123188);
  oslog = sub_1000E1EE8();
  v20 = sub_1000E2698();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v20, "markEventComplete - IRSession not running", v21, 2u);
  }
}

void sub_100031750(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  if (*(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState))
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v4 = sub_1000E1F08();
    sub_1000049D0(v4, qword_100123188);
    v5 = sub_1000E1EE8();
    v6 = sub_1000E2698();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
      v11 = 0xE700000000000000;
      v12 = 0x74756F656D6974;
      v13 = 0xED000064656C6C65;
      v14 = 0x636E614372657375;
      if (a1 != 4)
      {
        v14 = 0xD000000000000014;
        v13 = 0x80000001000EAA60;
      }

      if (a1 != 3)
      {
        v12 = v14;
        v11 = v13;
      }

      v15 = 0x80000001000EAA80;
      v16 = 0xD000000000000015;
      if (a1 != 1)
      {
        v16 = 0x656767755377656ELL;
        v15 = 0xED00006E6F697473;
      }

      if (a1)
      {
        v10 = v16;
        v9 = v15;
      }

      if (a1 <= 2u)
      {
        v17 = v10;
      }

      else
      {
        v17 = v12;
      }

      if (a1 <= 2u)
      {
        v18 = v9;
      }

      else
      {
        v18 = v11;
      }

      v19 = sub_100029C70(v17, v18, &v23);

      *(v7 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v5, v6, "Reset suggestion for reason: %s", v7, 0xCu);
      sub_10000E9DC(v8);
    }

    sub_1000345F0(a1);
    v20 = *v2;
    v21 = *(v2 + 8);
    *v2 = 0;
    *(v2 + 8) = 0;
    v22 = *(v2 + 16);
    *(v2 + 16) = 0;
    sub_10002D710(v20, v21, v22);

    sub_10001C430(v20, v21);
  }
}

uint64_t sub_1000319F0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000E0D68();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230D0;
  v2[9] = qword_1001230D0;

  return _swift_task_switch(sub_100031AF4, v6, 0);
}

uint64_t sub_100031AF4()
{
  v1 = *(v0 + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (!Strong)
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v46 = sub_1000E1F08();
    sub_1000049D0(v46, qword_100123188);
    v47 = sub_1000E1EE8();
    v48 = sub_1000E2678();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Asked to respond to suggestion without a delegate set.", v49, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    goto LABEL_33;
  }

  v3 = *(v0 + 32);
  v4 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  *(v0 + 88) = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  v5 = v3 + v4;
  v6 = *(v3 + v4);
  *(v0 + 96) = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  sub_10001C3F0(v6, v12);
  v14 = v6;
  sub_10001C430(v6, v12);
  v15 = [v14 identifier];
  sub_1000E0D38();

  v16 = [v11 suggestion];
  v17 = [v16 identifier];

  sub_1000E0D38();
  LOBYTE(v16) = sub_1000E0D28();
  v18 = *(v10 + 8);
  v18(v8, v9);
  v18(v7, v9);
  if ((v16 & 1) == 0)
  {

LABEL_24:
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 24);
    v51 = *(v0 + 32);
    v52 = sub_1000E1F08();
    sub_1000049D0(v52, qword_100123188);
    v53 = v50;
    v54 = v51;
    v55 = sub_1000E1EE8();
    v56 = sub_1000E2678();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 24);
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412546;
      *(v58 + 4) = v57;
      *v59 = v57;
      *(v58 + 12) = 2112;
      v60 = *v5;
      v61 = *(v0 + 24);
      if (*v5)
      {
        v62 = *(v5 + 8);
        v63 = *(v5 + 16);
        v64 = v61;
        sub_10001C3F0(v60, v62);
        v65 = v60;
        sub_10001C430(v60, v62);
      }

      else
      {
        v66 = v61;
        v65 = 0;
      }

      *(v58 + 14) = v65;
      v59[1] = v60;
      _os_log_impl(&_mh_execute_header, v55, v56, "Received suggestion result:%@ for a different suggestion:%@", v58, 0x16u);
      sub_10000ADE4(&unk_10011EAC0, &unk_1000F0E60);
      swift_arrayDestroy();
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    goto LABEL_32;
  }

  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 24);
  v20 = sub_1000E1F08();
  sub_1000049D0(v20, qword_100123188);
  v21 = v19;
  v22 = sub_1000E1EE8();
  v23 = sub_1000E2698();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 24);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v24;
    *v26 = v24;
    v27 = v24;
    _os_log_impl(&_mh_execute_header, v22, v23, "Responding to current suggestion with result: %@", v25, 0xCu);
    sub_1000033C8(v26, &unk_10011EAC0, &unk_1000F0E60);
  }

  v28 = *(v0 + 24);

  sub_10001D564(v28);
  v29 = [v28 suggestion];
  v30 = [v29 deviceHandle];
  *(v0 + 104) = v30;

  v31 = sub_100061CD4();
  if (!v32)
  {
    v70 = sub_1000E1EE8();
    v71 = sub_1000E2678();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Could not process suggestion result without deviceHandle identifier", v72, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    goto LABEL_32;
  }

  v33 = v31;
  v34 = v32;
  v35 = v14;
  v36 = *(v0 + 24);
  v37 = [v36 suggestion];
  v38 = [v37 type];

  v39 = [v36 type];
  if (v39 <= 1)
  {
    if (v39)
    {
      if (v39 == 1 && v38 <= 2)
      {
        v41 = *(v0 + 24);
        v40 = *(v0 + 32);
        sub_100030E7C(1, v33, v34);

        v42 = [v41 suggestion];
        v43 = [v42 deviceHandle];
        *(v0 + 112) = v43;

        if (qword_10011DC30 != -1)
        {
          swift_once();
        }

        *(v0 + 120) = qword_1001230F0;
        v44 = swift_task_alloc();
        *(v0 + 128) = v44;
        *v44 = v0;
        v44[1] = sub_10003258C;

        return sub_10007FB1C(v43);
      }

      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (v39 != 2)
  {
    if (v39 != 3)
    {
LABEL_44:

      v83 = v35;
LABEL_51:
      v88 = *(v0 + 24);
      v89 = sub_1000E1EE8();
      v90 = sub_1000E2678();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = *(v0 + 24);
        v92 = swift_slowAlloc();
        *v92 = 134217984;
        *(v92 + 4) = [v91 type];

        _os_log_impl(&_mh_execute_header, v89, v90, "Unknown result type:%ld. Ignoring", v92, 0xCu);
      }

      else
      {

        v89 = *(v0 + 24);
      }

      TUMakeNeighborhoodConduitError();
      swift_willThrow();

LABEL_32:
      swift_unknownObjectRelease();
LABEL_33:
      v68 = *(v0 + 56);
      v67 = *(v0 + 64);

      v69 = *(v0 + 8);
LABEL_34:

      return v69();
    }

    v73 = *(v0 + 32);
    sub_100030E7C(2, v33, v34);
LABEL_43:

    v75 = *(v0 + 96);
    v74 = *(v0 + 104);
    v76 = *(v0 + 80);
    v93 = *(v0 + 64);
    v94 = *(v0 + 56);
    v77 = *(v0 + 32);
    v78 = v77 + *(v0 + 88);
    v79 = *(v77 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionResultSubject);
    *(v0 + 16) = *(v0 + 24);

    sub_1000E1FC8();

    v80 = *v78;
    v81 = *(v78 + 8);
    *v78 = 0;
    *(v78 + 8) = 0;
    v82 = *(v78 + 16);
    *(v78 + 16) = 0;
    sub_10002D710(v80, v81, v82);
    sub_10001C430(v80, v81);

    swift_unknownObjectRelease();

    v69 = *(v0 + 8);
    goto LABEL_34;
  }

  v84 = v38 > 2;
  v83 = v35;
  if (v84)
  {
    goto LABEL_51;
  }

  v85 = [*(v0 + 24) suggestion];
  v86 = [v85 deviceHandle];
  *(v0 + 144) = v86;

  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  *(v0 + 152) = qword_1001230F0;
  v87 = swift_task_alloc();
  *(v0 + 160) = v87;
  *v87 = v0;
  v87[1] = sub_100032924;

  return sub_10007FF98(v86, 1);
}

uint64_t sub_10003258C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_100032834;
  }

  else
  {
    v4 = sub_1000326B4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000326B4()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100032720, v1, 0);
}

uint64_t sub_100032720()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v12 = v0[8];
  v13 = v0[7];
  v4 = v0[4];
  v5 = v4 + v0[11];
  v6 = *(v4 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionResultSubject);
  v0[2] = v0[3];

  sub_1000E1FC8();

  v7 = *v5;
  v8 = *(v5 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  v9 = *(v5 + 16);
  *(v5 + 16) = 0;
  sub_10002D710(v7, v8, v9);
  sub_10001C430(v7, v8);

  swift_unknownObjectRelease();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100032834()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_1000328A0, v1, 0);
}

uint64_t sub_1000328A0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  swift_unknownObjectRelease();
  v3 = *(v0 + 136);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100032924()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100032AB8;
  }

  else
  {
    v4 = sub_100032A4C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100032A4C()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_10003C080, v1, 0);
}

uint64_t sub_100032AB8()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100032B24, v1, 0);
}

uint64_t sub_100032B24()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  swift_unknownObjectRelease();
  v3 = *(v0 + 168);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100032BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230D0;
  v6[5] = qword_1001230D0;

  return _swift_task_switch(sub_100032C48, v7, 0);
}

uint64_t sub_100032C48()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1)
  {
    if (!v2)
    {
      v5 = [v1 deviceHandle];
      v0[12] = v5;
      v10 = swift_task_alloc();
      v0[13] = v10;
      *v10 = v0;
      v10[1] = sub_100033240;
      v11 = v0[4];
      v9 = 0;
      goto LABEL_8;
    }

    v3 = v1;
    v4 = v2;
    v5 = [v3 deviceHandle];
    v0[6] = v5;
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v7 = sub_100032E20;
LABEL_6:
    v6[1] = v7;
    v8 = v0[4];
    v9 = v0[3];
LABEL_8:

    return sub_100033718(v9, v5);
  }

  if (v2)
  {
    v5 = [v2 deviceHandle];
    v0[15] = v5;
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v7 = sub_1000333CC;
    goto LABEL_6;
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100032E20()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_100033558;
  }

  else
  {
    v6 = *(v2 + 40);

    v5 = sub_100032F44;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100032F44()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) deviceHandle];
  v3 = [v1 deviceHandle];
  sub_10000CAAC(0, &qword_10011EAB0, TUNearbyDeviceHandle_ptr);
  LOBYTE(v1) = sub_1000E2818();

  v4 = *(v0 + 24);
  if (v1)
  {
    v5 = *(v0 + 16);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = [v4 deviceHandle];
    *(v0 + 72) = v8;
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_1000330B0;
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);

    return sub_100033718(v10, v8);
  }
}

uint64_t sub_1000330B0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1000335CC;
  }

  else
  {
    v6 = *(v2 + 40);

    v5 = sub_1000331D8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000331D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100033240()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_100033640;
  }

  else
  {
    v6 = *(v2 + 40);

    v5 = sub_100033368;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100033368()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000333CC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1000336AC;
  }

  else
  {
    v6 = *(v2 + 40);

    v5 = sub_1000334F4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000334F4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033558()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000335CC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100033640()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000336AC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100033718(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E1E28();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230D0;
  v3[9] = qword_1001230D0;

  return _swift_task_switch(sub_100033820, v7, 0);
}

uint64_t sub_100033820()
{
  v1 = v0[3];
  v2 = sub_100061CD4();
  v0[10] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v0[2];
    if (v6)
    {
      v7 = v0[8];
      v8 = v0[5];
      v9 = *(v0[4] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conduitDeviceManager);
      v10 = swift_task_alloc();
      v10[2] = v4;
      v10[3] = v5;
      v10[4] = v6;
      sub_10003BB3C(&qword_10011EE00, 255, &type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent);
      v11 = v6;
      sub_1000E0E38();

      if (qword_10011DC18 != -1)
      {
        swift_once();
      }

      v0[11] = qword_1001230E0;
      v12 = swift_task_alloc();
      v0[12] = v12;
      *v12 = v0;
      v12[1] = sub_100033C04;
      v13 = v0[8];
    }

    else
    {
      v22 = v0[7];
      v23 = v0[5];
      v24 = *(v0[4] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conduitDeviceManager);
      sub_10003BB3C(&qword_10011EE00, 255, &type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent);
      sub_1000E0E38();
      if (qword_10011DC18 != -1)
      {
        swift_once();
      }

      v0[14] = qword_1001230E0;
      v25 = swift_task_alloc();
      v0[15] = v25;
      *v25 = v0;
      v25[1] = sub_100033F28;
      v13 = v0[7];
    }

    return sub_10002624C(8, v13, v4, v5, 0);
  }

  else
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v14 = sub_1000E1F08();
    sub_1000049D0(v14, qword_100123188);
    v15 = sub_1000E1EE8();
    v16 = sub_1000E2678();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Cannot sendSuggestionAdvertisementDidChangeEvent to deviceHandle without idsDeviceIdentifier", v17, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v19 = v0[7];
    v18 = v0[8];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100033C04()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = sub_100033E3C;
  }

  else
  {
    v5 = sub_100033D50;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_100033D50()
{
  v1 = v0[9];
  (*(v0[6] + 8))(v0[8], v0[5]);

  return _swift_task_switch(sub_100033DC8, v1, 0);
}

uint64_t sub_100033DC8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100033E3C()
{
  v1 = v0[9];
  (*(v0[6] + 8))(v0[8], v0[5]);

  return _swift_task_switch(sub_100033EB4, v1, 0);
}

uint64_t sub_100033EB4()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100033F28()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v5 = sub_1000340F8;
  }

  else
  {
    v5 = sub_100034074;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_100034074()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000340F8()
{
  v1 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_100034174, v1, 0);
}

uint64_t sub_100034174()
{
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000341E0()
{
  v0 = sub_1000E1918();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_10003BB3C(&qword_10011F068, 255, &type metadata accessor for NCProtoSuggestionAdvertisement);
  sub_1000E0E38();
  return sub_1000E1E18();
}

uint64_t sub_100034300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10000ADE4(&qword_10011F070, &qword_1000F1630);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v24 = &v23 - v7;
  v23 = sub_1000E18D8();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v23);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000E0D68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000E18E8();
  v17 = [a4 identifier];
  sub_1000E0D38();

  sub_1000E0D08();
  v18 = v12;
  v19 = v24;
  (*(v13 + 8))(v16, v18);
  v20 = v23;
  sub_1000E18F8();
  [a4 type];
  sub_1000E18C8();
  v21 = *(v8 + 48);
  if (v21(v19, 1, v20) == 1)
  {
    *v11 = [a4 type];
    (*(v8 + 104))(v11, enum case for NCProtoSuggestionAdvertisement.SuggestionType.UNRECOGNIZED(_:), v20);
    if (v21(v19, 1, v20) != 1)
    {
      sub_1000033C8(v19, &qword_10011F070, &qword_1000F1630);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v19, v20);
  }

  return sub_1000E1908();
}

uint64_t sub_1000345F0(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  v3 = *(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState);
  if (v3)
  {
    v4 = v1;
    v5 = result;
    v6 = *(v2 + 8);
    v7 = *(v2 + 16);
    sub_10001C3F0(*(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState), v6);
    v8 = v3;
    sub_10001C430(v3, v6);
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_100123188);
    v10 = v8;
    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v13 = 138412546;
      *(v13 + 4) = v10;
      *v14 = v3;
      *(v13 + 12) = 2080;
      v16 = 0xE700000000000000;
      v17 = 0x6E776F6E6B6E75;
      v18 = 0xE700000000000000;
      v19 = 0x74756F656D6974;
      v20 = 0xED000064656C6C65;
      v21 = 0x636E614372657375;
      if (v5 != 4)
      {
        v21 = 0xD000000000000014;
        v20 = 0x80000001000EAA60;
      }

      if (v5 != 3)
      {
        v19 = v21;
        v18 = v20;
      }

      v22 = 0x80000001000EAA80;
      v23 = 0xD000000000000015;
      if (v5 != 1)
      {
        v23 = 0x656767755377656ELL;
        v22 = 0xED00006E6F697473;
      }

      if (v5)
      {
        v17 = v23;
        v16 = v22;
      }

      if (v5 <= 2u)
      {
        v24 = v17;
      }

      else
      {
        v24 = v19;
      }

      if (v5 <= 2u)
      {
        v25 = v16;
      }

      else
      {
        v25 = v18;
      }

      v26 = v15;
      v27 = v10;
      v28 = sub_100029C70(v24, v25, &v32);

      *(v13 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v11, v12, "Sending cancel result for %@ reason: %s", v13, 0x16u);
      sub_1000033C8(v14, &unk_10011EAC0, &unk_1000F0E60);

      sub_10000E9DC(v26);
    }

    v29 = *(v4 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionResultSubject);
    v30 = objc_allocWithZone(TUNearbySuggestionResult);

    v31 = [v30 initWithSuggestion:v10 selectedActivity:0 type:0];
    v32 = v31;
    sub_1000E1FC8();
  }

  return result;
}

id sub_100034918()
{
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v0 = sub_1000E1F08();
  sub_1000049D0(v0, qword_100123188);
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2668();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Generating suggestion timer", v3, 2u);
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_10003BCEC;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10002ED24;
  v10[3] = &unk_100113D38;
  v5 = _Block_copy(v10);
  v6 = objc_opt_self();

  v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:60.0];
  _Block_release(v5);

  v8 = [objc_opt_self() mainRunLoop];
  [v8 addTimer:v7 forMode:NSRunLoopCommonModes];

  return v7;
}

void sub_100034B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1000E2538();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = qword_10011DC08;
    v14 = v10;
    if (v12 != -1)
    {
      swift_once();
    }

    v15 = qword_1001230D0;
    v16 = sub_10003BB3C(&unk_10011F010, v13, type metadata accessor for NearbySuggestionActor);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v16;
    v17[4] = v14;

    sub_100022960(0, 0, v8, a4, v17);
  }
}

uint64_t sub_100034CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230D0;

  return _swift_task_switch(sub_100034D70, v5, 0);
}

uint64_t sub_100034D70()
{
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123188);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Remove suggestion timer fired", v4, 2u);
  }

  v5 = *(v0 + 16);

  sub_100031750(3);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100034E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 120) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_1000E0D68();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230D0;
  *(v6 + 80) = qword_1001230D0;

  return _swift_task_switch(sub_100034F94, v10, 0);
}

uint64_t sub_100034F94()
{
  v0[11] = *(v0[6] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conduitDeviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  v0[12] = qword_1001230E0;

  return _swift_task_switch(sub_100035040, v1, 0);
}

uint64_t sub_100035040()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  *(v0 + 104) = sub_1000449DC(*(v0 + 16), *(v0 + 24), 0);

  return _swift_task_switch(sub_1000350B4, v1, 0);
}

uint64_t sub_1000350B4()
{
  v14 = v0;
  if (v0[13])
  {
    v1 = v0[12];

    return _swift_task_switch(sub_100035298, v1, 0);
  }

  else
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v2 = v0[3];
    v3 = sub_1000E1F08();
    sub_1000049D0(v3, qword_100123188);

    v4 = sub_1000E1EE8();
    v5 = sub_1000E2698();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[2];
      v6 = v0[3];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100029C70(v7, v6, &v13);
      _os_log_impl(&_mh_execute_header, v4, v5, "Unable to find conduit device with identifier: %s, dropping suggestion", v8, 0xCu);
      sub_10000E9DC(v9);
    }

    v10 = v0[9];

    v11 = v0[1];

    return v11(0, 0, 0);
  }
}

uint64_t sub_100035298()
{
  v1 = v0[13];
  v2 = v0[10];
  v0[14] = sub_100012CD8();

  return _swift_task_switch(sub_100035310, v2, 0);
}

uint64_t sub_100035310()
{
  [*(v0 + 112) deviceModel];
  if (qword_10011DC58 != -1)
  {
    swift_once();
  }

  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_1000E2328();
  v3 = [v1 initWithSuiteName:v2];

  if (v3 && (v4 = sub_1000E2328(), v5 = [v3 BOOLForKey:v4], v3, v4, (v5 & 1) != 0))
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E1F08();
    sub_1000049D0(v6, qword_100123188);
    v7 = sub_1000E1EE8();
    v8 = sub_1000E2698();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 112);
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Continuity Camera disabled in Settings on the local device. Pushing isn't supported", v11, 2u);
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = *(v0 + 112);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    sub_1000E0D58();
    v22 = objc_allocWithZone(TUNearbySuggestion);
    v23 = v15;
    isa = sub_1000E0D18().super.isa;
    v12 = [v22 initWithIdentifier:isa deviceHandle:v23 activity:v21 type:v20];

    (*(v17 + 8))(v16, v18);
    v25 = v19 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
    v26 = *(v19 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState);
    if (v26)
    {
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      sub_10001C3F0(*(v19 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState), v27);
      v29 = v26;
      sub_10001C430(v26, v27);
      v30 = [v29 isEquivalentToSuggestion:v12];
      if (v30)
      {
        v31 = v12;
      }

      else
      {
        v31 = v29;
      }

      if (v30)
      {
        v12 = v29;
      }
    }

    v32 = *(v0 + 112);
    v33 = *(v0 + 48);
    v14 = *(v0 + 120);
    v13 = sub_100034918();
  }

  v34 = *(v0 + 72);

  v35 = *(v0 + 8);

  return v35(v12, v13, v14);
}

unint64_t TUConversationAVMode.description.getter(uint64_t a1)
{
  result = 0xD000000000000019;
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 != 1 && a1 != 2)
  {
    sub_1000E2A88(31);

    v3._countAndFlagsBits = sub_1000E2C18();
    sub_1000E23A8(v3);

    v4._countAndFlagsBits = 41;
    v4._object = 0xE100000000000000;
    sub_1000E23A8(v4);
    return 0xD00000000000001CLL;
  }

  return result;
}

uint64_t sub_100035794()
{
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002E7C;

  return sub_100035854();
}

uint64_t sub_100035854()
{
  *(v1 + 16) = v0;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v2 = qword_1001230D0;

  return _swift_task_switch(sub_1000358EC, v2, 0);
}

uint64_t sub_1000358EC()
{
  v1 = *(v0 + 16);
  sub_10002D4D0();
  if (v2)
  {
    v3 = v2;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v4 = sub_1000E1F08();
    sub_1000049D0(v4, qword_100123128);
    v5 = v3;
    v6 = sub_1000E1EE8();
    v7 = sub_1000E2698();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v3;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "updateRecommendationMode for conversation: %@", v8, 0xCu);
      sub_1000033C8(v9, &unk_10011EAC0, &unk_1000F0E60);
    }

    if ([v5 state] != 3 || (v11 = objc_msgSend(v5, "presentationContext"), v12 = objc_msgSend(v11, "mode"), v11, v12 == 2) || (objc_msgSend(*(*(v0 + 16) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_featureFlags), "lagunaAudioCallsEnabled") & 1) == 0 && objc_msgSend(v5, "avMode") == 1)
    {
      v13 = sub_1000E1EE8();
      v14 = sub_1000E2698();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "updateRecommendationMode pauseRecommendations", v15, 2u);
      }

      v16 = *(v0 + 16);

      v17 = 0;
    }

    else
    {
      v21 = sub_1000E1EE8();
      v22 = sub_1000E2698();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "updateRecommendationMode resumeRecommendations", v23, 2u);
      }

      v24 = *(v0 + 16);

      v17 = 1;
    }

    sub_100035E48(v17);
  }

  else
  {
    v18 = *(v0 + 16);
    sub_100035E48(0);
    sub_100031750(5);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100035C98()
{
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_100035854();
}

void sub_100035E48(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession);
  v4 = [v3 configuration];
  if (v4)
  {
    oslog = v4;
    if ([v4 mode]!= a1)
    {
      if (qword_10011DC80 != -1)
      {
        swift_once();
      }

      v16 = sub_1000E1F08();
      sub_1000049D0(v16, qword_100123188);
      v17 = sub_1000E1EE8();
      v18 = sub_1000E2698();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        type metadata accessor for IRConfigurationUpdateMode(0);
        v21 = sub_1000E2368();
        v23 = sub_100029C70(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Setting IRSession mode to %s", v19, 0xCu);
        sub_10000E9DC(v20);
      }

      [oslog setMode:a1];
      [v3 runWithConfiguration:oslog];
      goto LABEL_16;
    }

    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v5 = sub_1000E1F08();
    sub_1000049D0(v5, qword_100123188);
    v6 = sub_1000E1EE8();
    v7 = sub_1000E2698();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315138;
      type metadata accessor for IRConfigurationUpdateMode(0);
      v10 = sub_1000E2368();
      v12 = sub_100029C70(v10, v11, &v25);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "IRSession mode is already %s", v8, 0xCu);
      sub_10000E9DC(v9);

LABEL_16:
      return;
    }
  }

  else
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v13 = sub_1000E1F08();
    sub_1000049D0(v13, qword_100123188);
    oslog = sub_1000E1EE8();
    v14 = sub_1000E2678();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "No configuration stored on IRSession so not updating configuration", v15, 2u);
    }
  }
}

uint64_t sub_10003620C(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  if (a2)
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E1F08();
    sub_1000049D0(v6, qword_100123188);
    v7 = a1;
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_22;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = a1;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to obtain service token: %@", v10, 0xCu);
    sub_1000033C8(v11, &unk_10011EAC0, &unk_1000F0E60);

    goto LABEL_6;
  }

  if (!a1)
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v26 = sub_1000E1F08();
    sub_1000049D0(v26, qword_100123188);
    v8 = sub_1000E1EE8();
    v27 = sub_1000E2688();
    if (!os_log_type_enabled(v8, v27))
    {
      goto LABEL_22;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v8, v27, "Token not obtained with no error", v28, 2u);
LABEL_6:

    goto LABEL_22;
  }

  v13 = objc_opt_self();
  v36 = 0;
  v14 = a1;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v36];
  v16 = v36;
  if (v15)
  {
    v17 = sub_1000E0C88();
    v19 = v18;

    v20 = [objc_opt_self() standardUserDefaults];
    isa = sub_1000E0C78().super.isa;
    v22 = sub_1000E2328();
    [v20 setObject:isa forKey:v22];

    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_100123188);
    v8 = sub_1000E1EE8();
    v24 = sub_1000E2658();
    if (os_log_type_enabled(v8, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v8, v24, "Service token retrieved and written to defaults", v25, 2u);
    }

    sub_100006660(v17, v19);
  }

  else
  {
    v29 = v16;
    sub_1000E0BE8();

    swift_willThrow();
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v30 = sub_1000E1F08();
    sub_1000049D0(v30, qword_100123188);
    swift_errorRetain();
    v8 = sub_1000E1EE8();
    v31 = sub_1000E2678();

    if (!os_log_type_enabled(v8, v31))
    {

      return a3(a1, a2);
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v8, v31, "Failed to archive service token: %@", v32, 0xCu);
    sub_1000033C8(v33, &unk_10011EAC0, &unk_1000F0E60);
  }

LABEL_22:

  return a3(a1, a2);
}

void sub_100036758(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000367E4(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v4 = qword_1001230D0;

  return _swift_task_switch(sub_100036880, v4, 0);
}

uint64_t sub_100036880()
{
  v38 = v0;
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_identifierToCandidateMap;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = *(v1 + v2);

    v7 = sub_10000B2D0(v5, v4);
    if (v8)
    {
      v9 = *(*(v3 + 56) + 8 * v7);

      goto LABEL_11;
    }
  }

  v11 = v0[13];
  v10 = v0[14];
  v12 = [objc_allocWithZone(IRNode) init];
  v35 = v11;
  v13 = sub_1000E2328();
  [v12 setIdsIdentifier:v13];

  v14 = objc_allocWithZone(IRCandidate);
  v15 = sub_1000E2328();
  v9 = [v14 initWithCandidateIdentifier:v15];

  sub_10000ADE4(&qword_10011EB20, &qword_1000F2570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F0F40;
  *(inited + 32) = v12;
  v17 = v12;
  sub_1000E0048(inited);
  swift_setDeallocating();
  v18 = *(inited + 16);
  swift_arrayDestroy();
  sub_10000CAAC(0, &unk_100120890, IRNode_ptr);
  sub_10001B174(&unk_10011F050, &unk_100120890, IRNode_ptr);
  isa = sub_1000E25D8().super.isa;

  [v9 updateNodes:isa];

  swift_beginAccess();
  v20 = v9;

  v21 = *(v1 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v1 + v2);
  *(v1 + v2) = 0x8000000000000000;
  sub_1000CA488(v20, v35, v10, isUniquelyReferenced_nonNull_native);

  *(v1 + v2) = v37;
  swift_endAccess();
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v23 = v0[14];
  v24 = sub_1000E1F08();
  sub_1000049D0(v24, qword_100123188);
  v25 = v20;

  v26 = sub_1000E1EE8();
  v27 = sub_1000E2658();

  if (os_log_type_enabled(v26, v27))
  {
    v36 = v17;
    v28 = v0[13];
    v29 = v0[14];
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v30 = 138412802;
    *(v30 + 4) = v25;
    *v31 = v9;
    *(v30 + 12) = 2080;
    v32 = v25;
    *(v30 + 14) = sub_100029C70(v28, v29, &v37);
    *(v30 + 22) = 2080;
    *(v30 + 24) = sub_100029C70(v28, v29, &v37);
    _os_log_impl(&_mh_execute_header, v26, v27, "Created IR candidate:%@ for idsIdentifier:%s with idsDeviceIdentifier:%s", v30, 0x20u);
    sub_1000033C8(v31, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_11:
  v33 = v0[1];

  return v33(v9);
}

uint64_t sub_100036CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230D0;

  return _swift_task_switch(sub_100036D80, v6, 0);
}

uint64_t sub_100036D80()
{
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123188);
  swift_errorRetain();
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2678();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "IRSession failed with error: %@", v6, 0xCu);
    sub_1000033C8(v7, &unk_10011EAC0, &unk_1000F0E60);
  }

  v9 = v0[3];

  *(v9 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning) = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_1000370CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230D0;
  v5[14] = qword_1001230D0;

  return _swift_task_switch(sub_100037168, v6, 0);
}

uint64_t sub_100037168()
{
  v90 = v0;
  v1 = *(v0 + 96);
  v2 = sub_1000E2338();
  if (!*(v1 + 16))
  {
LABEL_7:

    goto LABEL_8;
  }

  v4 = *(v0 + 96);
  v5 = sub_10000B2D0(v2, v3);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(*(*(v0 + 96) + 56) + 8 * v5);
  *(v0 + 120) = v8;
  v9 = qword_10011DC80;
  v10 = v8;
  if (v9 != -1)
  {
LABEL_63:
    swift_once();
  }

  v11 = sub_1000E1F08();
  v12 = sub_1000049D0(v11, qword_100123188);
  *(v0 + 128) = v12;
  v13 = v10;
  v14 = sub_1000E1EE8();
  v15 = sub_1000E2698();
  if (os_log_type_enabled(v14, v15))
  {
    v88 = v12;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v89[0] = v17;
    *v16 = 134218242;
    v18 = [v13 candidateResults];
    sub_10000CAAC(0, &unk_10011EDF0, IRCandidateResult_ptr);
    sub_10001B174(&unk_10011F040, &unk_10011EDF0, IRCandidateResult_ptr);
    v19 = sub_1000E25E8();

    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = sub_1000E2968();
    }

    else
    {
      v20 = *(v19 + 16);
    }

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v23 = [v13 candidateResults];
    sub_1000E25E8();

    v24 = sub_1000E25F8();
    v26 = v25;

    v27 = sub_100029C70(v24, v26, v89);

    *(v16 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v14, v15, "Found potential candidates (%ld) %s", v16, 0x16u);
    sub_10000E9DC(v17);
  }

  else
  {
  }

  v28 = [v13 candidateResults];
  sub_10000CAAC(0, &unk_10011EDF0, IRCandidateResult_ptr);
  sub_10001B174(&unk_10011F040, &unk_10011EDF0, IRCandidateResult_ptr);
  v29 = sub_1000E25E8();

  v89[0] = sub_100020344(v29);
  sub_100039504(v89);

  v30 = v89[0];
  *(v0 + 136) = v89[0];
  if (qword_10011DC58 != -1)
  {
    swift_once();
  }

  v31 = sub_1000D5568();
  *(v0 + 144) = v31;
  *(v0 + 280) = v32;
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  v34 = sub_1000D5568();
  if (v35)
  {
    if (qword_10011DCB0 != -1)
    {
      swift_once();
    }

    v36 = qword_100120528;
  }

  else
  {
    v36 = v34;
  }

  *(v0 + 152) = v36;
  v37 = sub_1000E1EE8();
  v38 = sub_1000E2698();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 67109632;
    *(v39 + 4) = v33 < v36;
    *(v39 + 8) = 2048;
    *(v39 + 10) = v33;
    *(v39 + 18) = 2048;
    *(v39 + 20) = v36;
    _os_log_impl(&_mh_execute_header, v37, v38, "shouldSuggestAnyNearbyAuthenticatedTV=%{BOOL}d suggestionsGivenCount=%ld topOfListThreshold=%ld", v39, 0x1Cu);
  }

  v40 = *(v0 + 104);

  sub_10002D4D0();
  if (v41)
  {
    v42 = v41;
    v43 = [v41 avMode];

    v44 = v43 == 1;
    if (v30 < 0)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v44 = 0;
    if (v30 < 0)
    {
      goto LABEL_64;
    }
  }

  if ((v30 & 0x4000000000000000) == 0)
  {
    v45 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 160) = v45;
    if (!v45)
    {
LABEL_65:
      v84 = *(v0 + 104);

      sub_10002DE20();
      if (v85)
      {
        goto LABEL_66;
      }

LABEL_67:

      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_64:
  v83 = sub_1000E2B68();
  *(v0 + 160) = v83;
  if (!v83)
  {
    goto LABEL_65;
  }

LABEL_32:
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v10 = IRNode_ptr;
  while (1)
  {
    *(v0 + 168) = v47;
    *(v0 + 176) = v48;
    *(v0 + 281) = v46 & 1;
    *(v0 + 282) = v44 & 1;
    v50 = *(v0 + 136);
    if ((v50 & 0xC000000000000001) != 0)
    {
      v51 = sub_1000E2A98();
    }

    else
    {
      if (v49 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v51 = *(v50 + 8 * v49 + 32);
    }

    v52 = v51;
    *(v0 + 192) = v51;
    *(v0 + 200) = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v53 = [v51 candidate];
    v54 = [v53 nodes];

    sub_10000CAAC(0, &unk_100120890, IRNode_ptr);
    sub_10001B174(&unk_10011F050, &unk_100120890, IRNode_ptr);
    v55 = sub_1000E25E8();

    v56 = v55 & 0xC000000000000001;
    if ((v55 & 0xC000000000000001) != 0)
    {
      v57 = sub_1000E2908();
      v59 = v58;
      v60 = sub_1000E29C8();
      v62 = v61;
      v63 = sub_1000E2938();
      sub_10000A848(v60, v62, 1);
      if (v63)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v64 = 0;
      v65 = (v55 + 56);
      v57 = 1 << *(v55 + 32);
      v66 = (v57 + 63) >> 6;
      while (1)
      {
        v68 = *v65++;
        v67 = v68;
        if (v68)
        {
          break;
        }

        v64 -= 64;
        if (!--v66)
        {
          v59 = *(v55 + 36);
          goto LABEL_46;
        }
      }

      v69 = __clz(__rbit64(v67));
      v59 = *(v55 + 36);
      if (v69 - v57 == v64)
      {
LABEL_46:
        sub_10000A848(v57, v59, v56 != 0);

        goto LABEL_49;
      }

      v57 = v69 - v64;
    }

    sub_1000D4AD8(v57, v59, v56 != 0, v55);
    v71 = v70;
    sub_10000A848(v57, v59, v56 != 0);

    v72 = [v71 idsIdentifier];

    if (v72)
    {
      v79 = sub_1000E2338();
      v81 = v80;

      *(v0 + 208) = v79;
      *(v0 + 216) = v81;
      if (qword_10011DC18 != -1)
      {
        swift_once();
      }

      v82 = qword_1001230E0;
      *(v0 + 224) = qword_1001230E0;

      return _swift_task_switch(sub_100037AB0, v82, 0);
    }

LABEL_49:

    v47 = *(v0 + 168);
    v48 = *(v0 + 176);
    v46 = *(v0 + 281);
    v49 = *(v0 + 200);
    if (v49 == *(v0 + 160))
    {
      break;
    }

    v44 = *(v0 + 282);
  }

  *(v0 + 184) = v48;
  v73 = *(v0 + 136);
  v74 = *(v0 + 104);

  sub_10002DE20();
  if ((v75 & 1) == 0)
  {
    goto LABEL_67;
  }

  if (v48)
  {
    v76 = *(v0 + 104);
    sub_1000345F0(2);
    v77 = swift_task_alloc();
    *(v0 + 256) = v77;
    *v77 = v0;
    v77[1] = sub_100038FAC;
    v78 = *(v0 + 104);

    return sub_100034E90(v47, v48, 0, 1, v46);
  }

LABEL_66:
  v86 = *(v0 + 120);
  v87 = *(v0 + 104);
  sub_100031750(1);

LABEL_8:
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100037AB0()
{
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);

  return _swift_task_switch(sub_100037B40, v1, 0);
}

uint64_t sub_100037B40()
{
  v1 = *(v0 + 112);
  *(v0 + 232) = qword_1001230E8;
  return _swift_task_switch(sub_100037B68, v1, 0);
}

uint64_t sub_100037B68()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return _swift_task_switch(sub_100037BD4, v2, 0);
}

uint64_t sub_100037BD4()
{
  v1 = v0[29];
  v37 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (63 - v4) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v6)
  {
LABEL_10:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = *(*(v2 + 56) + ((v11 << 9) | (8 * v13)));
    v0[30] = v14;
    v8 = swift_beginAccess();
    v15 = *(v14 + 40);
    if (*(v15 + 16))
    {
      v17 = v0[26];
      v16 = v0[27];
      v18 = *(v15 + 40);
      v36 = *(v14 + 40);
      sub_1000E2D48();
      v0[10] = 0;
      v0[11] = 0xE000000000000000;

      sub_1000E2A88(38);
      v19 = v0[11];

      v0[8] = 0xD000000000000023;
      v0[9] = 0x80000001000E9C70;
      v39._countAndFlagsBits = v17;
      v39._object = v16;
      sub_1000E23A8(v39);
      v40._countAndFlagsBits = 41;
      v40._object = 0xE100000000000000;
      sub_1000E23A8(v40);
      v20 = v0[8];
      v21 = v0[9];
      sub_1000E2398();

      v22 = sub_1000E2D68();
      v23 = -1 << *(v36 + 32);
      v24 = v22 & ~v23;
      if ((*(v36 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v35 = v2;
        v25 = ~v23;
        v26 = *(v36 + 48);
        while (1)
        {
          v27 = v26 + 24 * v24;
          if (!*(v27 + 16))
          {
            if (*v27 == v0[26] && *(v27 + 8) == v37)
            {
              break;
            }

            v29 = v0[27];
            if (sub_1000E2C68())
            {
              break;
            }
          }

          v24 = (v24 + 1) & v25;
          if (((*(v36 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {

            v2 = v35;
            goto LABEL_23;
          }
        }

        v33 = v0[27];
        v31 = v0[28];

        v32 = sub_10003831C;
LABEL_26:
        v8 = v32;
        v9 = v31;
        v10 = 0;

        return _swift_task_switch(v8, v9, v10);
      }

LABEL_23:
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      v30 = v0[27];
      v31 = v0[14];
      swift_bridgeObjectRelease_n();

      v32 = sub_100037EE0;
      goto LABEL_26;
    }

    v6 = *(v3 + 8 * v12);
    ++v11;
    if (v6)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100037EE0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 281);
  for (i = *(v0 + 200); i != *(v0 + 160); i = *(v0 + 200))
  {
    *(v0 + 168) = v2;
    *(v0 + 176) = v1;
    *(v0 + 281) = v3 & 1;
    v12 = *(v0 + 136);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = sub_1000E2A98();
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v13 = *(v12 + 8 * i + 32);
    }

    v14 = v13;
    *(v0 + 192) = v13;
    *(v0 + 200) = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v15 = [v13 candidate];
    v16 = [v15 nodes];

    sub_10000CAAC(0, &unk_100120890, IRNode_ptr);
    sub_10001B174(&unk_10011F050, &unk_100120890, IRNode_ptr);
    v17 = sub_1000E25E8();

    v18 = v17 & 0xC000000000000001;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = sub_1000E2908();
      v21 = v20;
      v22 = sub_1000E29C8();
      v24 = v23;
      v25 = sub_1000E2938();
      sub_10000A848(v22, v24, 1);
      if (v25)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v26 = 0;
      v27 = (v17 + 56);
      v19 = 1 << *(v17 + 32);
      v28 = (v19 + 63) >> 6;
      while (1)
      {
        v30 = *v27++;
        v29 = v30;
        if (v30)
        {
          break;
        }

        v26 -= 64;
        if (!--v28)
        {
          v21 = *(v17 + 36);
          goto LABEL_8;
        }
      }

      v31 = __clz(__rbit64(v29));
      v21 = *(v17 + 36);
      if (v31 - v19 == v26)
      {
LABEL_8:
        sub_10000A848(v19, v21, v18 != 0);

        goto LABEL_9;
      }

      v19 = v31 - v26;
    }

    sub_1000D4AD8(v19, v21, v18 != 0, v17);
    v33 = v32;
    sub_10000A848(v19, v21, v18 != 0);

    v34 = [v33 idsIdentifier];

    if (v34)
    {
      v35 = sub_1000E2338();
      v37 = v36;

      *(v0 + 208) = v35;
      *(v0 + 216) = v37;
      if (qword_10011DC18 == -1)
      {
        goto LABEL_26;
      }

LABEL_36:
      swift_once();
LABEL_26:
      v38 = qword_1001230E0;
      *(v0 + 224) = qword_1001230E0;

      return _swift_task_switch(sub_100037AB0, v38, 0);
    }

LABEL_9:

    v2 = *(v0 + 168);
    v1 = *(v0 + 176);
    v3 = *(v0 + 281);
  }

  *(v0 + 184) = v1;
  v5 = *(v0 + 136);
  v6 = *(v0 + 104);

  sub_10002DE20();
  if (v7)
  {
    if (v1)
    {
      v8 = *(v0 + 104);
      sub_1000345F0(2);
      v9 = swift_task_alloc();
      *(v0 + 256) = v9;
      *v9 = v0;
      v9[1] = sub_100038FAC;
      v10 = *(v0 + 104);

      return sub_100034E90(v2, v1, 0, 1, v3);
    }

    v39 = *(v0 + 120);
    v40 = *(v0 + 104);
    sub_100031750(1);
  }

  else
  {
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_10003831C()
{
  v1 = v0[30];
  v2 = v0[14];
  v0[31] = sub_100012CD8();

  return _swift_task_switch(sub_10003838C, v2, 0);
}

uint64_t sub_10003838C()
{
  v141 = v0;
  v1 = *(v0 + 248);
  v2 = [v1 capabilities];

  if (([v2 isLagunaCapable] & 1) == 0)
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 216);
    v26 = *(v0 + 192);

    goto LABEL_44;
  }

  v3 = *(v0 + 282);
  v4 = [*(v0 + 192) candidate];
  if (v3 != 1 || ([v2 isAudioCallCapable] & 1) != 0)
  {
    v5 = *(v0 + 176);
    v6 = [*(v0 + 192) classification];
    if (v5 || v6 < 4)
    {
      if (*(v0 + 280))
      {
        v27 = 0;
      }

      else
      {
        v27 = *(v0 + 144);
      }

      if (!v5 && v27 < *(v0 + 152))
      {
        v28 = *(v0 + 192);
        v29 = *(v0 + 128);
        v30 = v4;
        v31 = v28;
        v32 = sub_1000E1EE8();
        v33 = sub_1000E2698();

        v34 = os_log_type_enabled(v32, v33);
        v35 = *(v0 + 240);
        v36 = *(v0 + 192);
        if (v34)
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          loga = v32;
          v39 = swift_slowAlloc();
          v140 = v39;
          *v37 = 138412546;
          *(v37 + 4) = v30;
          *v38 = v30;
          *(v37 + 12) = 2080;
          v137 = v30;
          [v36 classification];
          v40 = IRCandidateClassificationToString();
          v41 = sub_1000E2338();
          v133 = v36;
          v43 = v42;

          v44 = sub_100029C70(v41, v43, &v140);

          *(v37 + 14) = v44;
          v36 = loga;
          _os_log_impl(&_mh_execute_header, loga, v33, "filtered candidate but suggesting for onboarding:%@ classified:%s", v37, 0x16u);
          sub_1000033C8(v38, &unk_10011EAC0, &unk_1000F0E60);

          sub_10000E9DC(v39);
        }

        else
        {
        }

        v84 = *(v0 + 216);
        i = (v0 + 208);
        v87 = 1;
        goto LABEL_46;
      }

      v66 = *(v0 + 216);
      v67 = *(v0 + 192);
      v68 = *(v0 + 128);

      v69 = v4;
      v70 = v67;
      v71 = sub_1000E1EE8();
      v72 = sub_1000E2658();

      v73 = os_log_type_enabled(v71, v72);
      v74 = *(v0 + 240);
      v75 = *(v0 + 192);
      if (v73)
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        logc = v71;
        v78 = swift_slowAlloc();
        v140 = v78;
        *v76 = 138412546;
        *(v76 + 4) = v69;
        *v77 = v69;
        *(v76 + 12) = 2080;
        v138 = v69;
        [v75 classification];
        v79 = IRCandidateClassificationToString();
        v80 = sub_1000E2338();
        v135 = v75;
        v82 = v81;

        v83 = sub_100029C70(v80, v82, &v140);

        *(v76 + 14) = v83;
        _os_log_impl(&_mh_execute_header, logc, v72, "filtered candidate:%@ classified:%s", v76, 0x16u);
        sub_1000033C8(v77, &unk_10011EAC0, &unk_1000F0E60);

        sub_10000E9DC(v78);
      }

      else
      {
      }

      goto LABEL_44;
    }

    v7 = *(v0 + 192);
    v8 = *(v0 + 128);
    v9 = v4;
    v10 = v7;
    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 240);
    v15 = *(v0 + 192);
    if (v13)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      log = v11;
      v18 = swift_slowAlloc();
      v140 = v18;
      *v16 = 138412546;
      *(v16 + 4) = v9;
      *v17 = v9;
      *(v16 + 12) = 2080;
      v136 = v9;
      [v15 classification];
      v19 = IRCandidateClassificationToString();
      v20 = sub_1000E2338();
      v132 = v15;
      v22 = v21;

      v23 = sub_100029C70(v20, v22, &v140);

      *(v16 + 14) = v23;
      v15 = log;
      _os_log_impl(&_mh_execute_header, log, v12, "Top candidate:%@ classified:%s", v16, 0x16u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      sub_10000E9DC(v18);
    }

    else
    {
    }

    v84 = *(v0 + 216);
    for (i = (v0 + 208); ; i = (v0 + 168))
    {
      v87 = *(v0 + 281);
LABEL_46:
      v86 = *i;
      v64 = *(v0 + 200);
      if (v64 == *(v0 + 160))
      {
        goto LABEL_48;
      }

      v65 = *(v0 + 282);
      *(v0 + 168) = v86;
      *(v0 + 176) = v84;
      *(v0 + 281) = v87 & 1;
LABEL_28:
      *(v0 + 282) = v65;
      v88 = *(v0 + 136);
      if ((v88 & 0xC000000000000001) != 0)
      {
        v89 = sub_1000E2A98();
      }

      else
      {
        if (v64 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v89 = *(v88 + 8 * v64 + 32);
      }

      v90 = v89;
      *(v0 + 192) = v89;
      *(v0 + 200) = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v91 = [v89 candidate];
      v92 = [v91 nodes];

      sub_10000CAAC(0, &unk_100120890, IRNode_ptr);
      sub_10001B174(&unk_10011F050, &unk_100120890, IRNode_ptr);
      v93 = sub_1000E25E8();

      v94 = v93 & 0xC000000000000001;
      if ((v93 & 0xC000000000000001) != 0)
      {
        v95 = sub_1000E2908();
        v97 = v96;
        v98 = sub_1000E29C8();
        v100 = v99;
        v101 = sub_1000E2938();
        sub_10000A848(v98, v100, 1);
        v102 = v95;
        if (v101)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v103 = 0;
        v104 = (v93 + 56);
        v102 = 1 << *(v93 + 32);
        v105 = (v102 + 63) >> 6;
        while (1)
        {
          v107 = *v104++;
          v106 = v107;
          if (v107)
          {
            break;
          }

          v103 -= 64;
          if (!--v105)
          {
            v97 = *(v93 + 36);
            goto LABEL_41;
          }
        }

        v108 = __clz(__rbit64(v106));
        v95 = v108 - v103;
        v97 = *(v93 + 36);
        if (v108 - v102 == v103)
        {
LABEL_41:
          sub_10000A848(v102, v97, v94 != 0);

          goto LABEL_43;
        }
      }

      sub_1000D4AD8(v95, v97, v94 != 0, v93);
      v110 = v109;
      sub_10000A848(v95, v97, v94 != 0);

      v111 = [v110 idsIdentifier];

      if (v111)
      {
        v119 = sub_1000E2338();
        v121 = v120;

        *(v0 + 208) = v119;
        *(v0 + 216) = v121;
        if (qword_10011DC18 == -1)
        {
LABEL_55:
          v122 = qword_1001230E0;
          *(v0 + 224) = qword_1001230E0;

          return _swift_task_switch(sub_100037AB0, v122, 0);
        }

LABEL_64:
        swift_once();
        goto LABEL_55;
      }

LABEL_43:

LABEL_44:
      v84 = *(v0 + 176);
    }
  }

  v45 = *(v0 + 216);
  v46 = *(v0 + 192);
  v47 = *(v0 + 128);

  v48 = v4;
  v49 = v46;
  v50 = sub_1000E1EE8();
  v51 = sub_1000E2658();

  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 240);
  v54 = *(v0 + 192);
  v139 = *(v0 + 200);
  v55 = *(v0 + 160);
  if (v52)
  {
    logb = *(v0 + 192);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v126 = v50;
    v58 = swift_slowAlloc();
    v140 = v58;
    *v56 = 138412546;
    *(v56 + 4) = v48;
    *v57 = v48;
    *(v56 + 12) = 2080;
    v134 = v48;
    [v54 classification];
    v59 = IRCandidateClassificationToString();
    v127 = v55;
    v60 = sub_1000E2338();
    v62 = v61;

    v63 = sub_100029C70(v60, v62, &v140);

    *(v56 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v126, v51, "filtered candidate not capable of receiving audio calls:%@ classified:%s", v56, 0x16u);
    sub_1000033C8(v57, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v58);

    if (v139 != v127)
    {
LABEL_18:
      v64 = *(v0 + 200);
      v65 = 1;
      goto LABEL_28;
    }
  }

  else
  {

    if (v139 != v55)
    {
      goto LABEL_18;
    }
  }

  v86 = *(v0 + 168);
  v84 = *(v0 + 176);
  v87 = *(v0 + 281);
LABEL_48:
  *(v0 + 184) = v84;
  v112 = *(v0 + 136);
  v113 = *(v0 + 104);

  sub_10002DE20();
  if (v114)
  {
    if (v84)
    {
      v115 = *(v0 + 104);
      sub_1000345F0(2);
      v116 = swift_task_alloc();
      *(v0 + 256) = v116;
      *v116 = v0;
      v116[1] = sub_100038FAC;
      v117 = *(v0 + 104);

      return sub_100034E90(v86, v84, 0, 1, v87 & 1);
    }

    v123 = *(v0 + 120);
    v124 = *(v0 + 104);
    sub_100031750(1);
  }

  else
  {
  }

  v125 = *(v0 + 8);

  return v125();
}

uint64_t sub_100038FAC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 256);
  v6 = *(*v3 + 184);
  v7 = *(*v3 + 112);
  v9 = *v3;
  *(v4 + 264) = a1;
  *(v4 + 272) = a2;
  *(v4 + 283) = a3;

  return _swift_task_switch(sub_1000390E4, v7, 0);
}

uint64_t sub_1000390E4()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v0 + 283);
  *v4 = v2;
  *(v4 + 8) = v1;
  v8 = *(v4 + 16);
  *(v4 + 16) = v7;
  sub_10001C3F0(v2, v1);
  sub_10002D710(v5, v6, v8);
  sub_10001C430(v5, v6);
  sub_10001C430(v2, v1);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100039394(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000393DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100039474(void *a1, uint64_t a2)
{
  v5 = *(*(sub_10000ADE4(&unk_10011FA70, &qword_1000F0868) - 8) + 80);
  v6 = *(v2 + 16);

  sub_10002E6C8(a1, a2);
}

uint64_t sub_100039504(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10003A5B4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100039580(v6);
  return sub_1000E2AD8();
}

void sub_100039580(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1000E2C08(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000CAAC(0, &unk_10011EDF0, IRCandidateResult_ptr);
        v6 = sub_1000E2498();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10003978C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100039694(0, v2, 1, a1);
  }
}

void sub_100039694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 classification];
      v13 = [v11 classification];

      if (v13 >= v12)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10003978C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_10003A164(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_100039DF4((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_10003A164(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_10003A0D8(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 classification];
      v104 = [v14 classification];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 classification];
        v7 = [v18 classification];

        v21 = v7 < v20;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v104 < v106) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v104 < v106)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10003A178(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_10003A178((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_100039DF4((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10003A164(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_10003A0D8(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 classification];
    v41 = [v39 classification];

    if (v41 >= v40)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_100039DF4(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 classification];
          v35 = [v33 classification];

          if (v35 < v34)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 classification];
          v20 = [v18 classification];

          if (v20 >= v19)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_10003A0D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003A164(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10003A178(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE4(&qword_10011F060, &qword_1000F15D0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10003A27C(void *a1, uint64_t a2, _BYTE *a3)
{
  v29 = a2;
  v5 = sub_1000E2128();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionXPCDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionResultSubject;
  v11 = sub_10000ADE4(&qword_10011F0A0, &qword_1000F1660);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&a3[v10] = sub_1000E1FD8();
  v14 = &a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState];
  v14[16] = 0;
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conduitDeviceManager;
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  *&a3[v15] = qword_1001230E8;
  v16 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession;
  v17 = objc_allocWithZone(IRSession);

  *&a3[v16] = [v17 init];
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_identifierToCandidateMap] = &_swiftEmptyDictionarySingleton;
  a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning] = 0;
  a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suppressSuggestions] = 0;
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suppressSuggestionTimer] = 0;
  type metadata accessor for NeighborhoodActivityPublisherService();
  swift_allocObject();
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_publisherService] = sub_1000D8940();
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conversationManager] = a1;
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_featureFlags] = v29;
  v18 = type metadata accessor for NearbySuggestionController();
  v30.receiver = a3;
  v30.super_class = v18;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v30, "init");
  v21 = *&v20[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession];
  v22 = v20;
  [v21 setDelegate:v22];
  v23 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conversationManager;
  v24 = *&v22[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conversationManager];
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v9, enum case for DispatchQoS.QoSClass.userInteractive(_:), v5);
  v25 = v24;
  v26 = sub_1000E2758();
  (*(v6 + 8))(v9, v5);
  [v25 addDelegate:v22 queue:v26];

  [*&v22[v23] registerWithCompletionHandler:0];
  return v22;
}

void sub_10003A5C8(void (*a1)(id, void), uint64_t a2)
{
  if (qword_10011DC58 != -1)
  {
    swift_once();
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1000E2328();
  v6 = [v4 dataForKey:v5];

  if (v6)
  {
    v7 = sub_1000E0C88();
    v9 = v8;

    sub_10000CAAC(0, &qword_10011F020, NSKeyedUnarchiver_ptr);
    sub_10000CAAC(0, &qword_10011F028, IRServiceToken_ptr);
    v18 = sub_1000E26A8();
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v14 = sub_1000E1F08();
    sub_1000049D0(v14, qword_100123188);
    v15 = sub_1000E1EE8();
    v16 = sub_1000E2658();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Using irServiceToken found in defaults", v17, 2u);
    }

    a1(v18, 0);
    sub_100006660(v7, v9);
  }

  else
  {
    v10 = [objc_allocWithZone(IRServiceParameters) initWithServicePackage:1];
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    aBlock[4] = sub_10003AA84;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100036758;
    aBlock[3] = &unk_100113BF8;
    v13 = _Block_copy(aBlock);

    [v11 createServiceWithParameters:v10 reply:v13];
    _Block_release(v13);
  }
}

uint64_t sub_10003AA8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000370CC(a1, v4, v5, v7, v6);
}

uint64_t sub_10003AB54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002E7C;

  return sub_100032BA8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003AC1C(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10003AC74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100036CE8(a1, v4, v5, v7, v6);
}

uint64_t sub_10003AD34(void *a1)
{
  v2 = v1;
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_1000E0D68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000E1F08();
  sub_1000049D0(v13, qword_100123188);
  v14 = a1;
  v15 = sub_1000E1EE8();
  v16 = sub_1000E2658();

  if (!os_log_type_enabled(v15, v16))
  {

    goto LABEL_18;
  }

  v37 = v2;
  v17 = 0xE900000000000029;
  v18 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  *v18 = 136315394;
  v19 = [v14 state];
  v36 = v9;
  if (v19 <= 1)
  {
    if (!v19)
    {
      v20 = 0x676E697469615728;
      goto LABEL_17;
    }

    if (v19 == 1)
    {
      v17 = 0xEB0000000029676ELL;
      v20 = 0x6972617065725028;
      goto LABEL_17;
    }

LABEL_16:
    v20 = 0x6E776F6E6B6E5528;
    goto LABEL_17;
  }

  if (v19 == 2)
  {
    v20 = 0x676E696E696F4A28;
    goto LABEL_17;
  }

  if (v19 == 3)
  {
    v17 = 0xE800000000000000;
    v20 = 0x2964656E696F4A28;
    goto LABEL_17;
  }

  if (v19 != 4)
  {
    goto LABEL_16;
  }

  v20 = 0x676E697661654C28;
LABEL_17:
  v21 = sub_100029C70(v20, v17, &v38);

  *(v18 + 4) = v21;
  *(v18 + 12) = 2080;
  v22 = [v14 UUID];
  sub_1000E0D38();

  sub_10003BB3C(&unk_100120190, 255, &type metadata accessor for UUID);
  v23 = sub_1000E2C18();
  v25 = v24;
  (*(v36 + 8))(v12, v8);
  v26 = sub_100029C70(v23, v25, &v38);

  *(v18 + 14) = v26;
  _os_log_impl(&_mh_execute_header, v15, v16, "Conversation state changed to %s for %s.", v18, 0x16u);
  swift_arrayDestroy();

  v2 = v37;
LABEL_18:
  v27 = sub_1000E2538();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = qword_10011DC08;
  v30 = v2;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = qword_1001230D0;
  v32 = sub_10003BB3C(&unk_10011F010, v29, type metadata accessor for NearbySuggestionActor);
  v33 = swift_allocObject();
  v33[2] = v31;
  v33[3] = v32;
  v33[4] = v30;

  sub_100022960(0, 0, v7, &unk_1000F1618, v33);
}

uint64_t sub_10003B20C(void *a1)
{
  v2 = v1;
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v40[-v6];
  v8 = sub_1000E0D68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000E1F08();
  sub_1000049D0(v13, qword_100123188);
  v14 = a1;
  v15 = sub_1000E1EE8();
  v16 = sub_1000E2658();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43 = v7;
    v18 = v17;
    v42 = swift_slowAlloc();
    v44 = v42;
    *v18 = 136315394;
    v19 = [v14 presentationContext];
    v41 = v16;
    v20 = v19;
    v21 = [v19 description];

    v22 = sub_1000E2338();
    v23 = v9;
    v25 = v24;

    v26 = sub_100029C70(v22, v25, &v44);

    *(v18 + 4) = v26;
    *(v18 + 12) = 2080;
    v27 = [v14 UUID];
    sub_1000E0D38();

    sub_10003BB3C(&unk_100120190, 255, &type metadata accessor for UUID);
    v28 = sub_1000E2C18();
    v30 = v29;
    (*(v23 + 8))(v12, v8);
    v31 = sub_100029C70(v28, v30, &v44);

    *(v18 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v15, v41, "Conversation presentation context changed to %s for %s.", v18, 0x16u);
    swift_arrayDestroy();

    v7 = v43;
  }

  v32 = sub_1000E2538();
  (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
  v33 = qword_10011DC08;
  v35 = v2;
  if (v33 != -1)
  {
    swift_once();
  }

  v36 = qword_1001230D0;
  v37 = sub_10003BB3C(&unk_10011F010, v34, type metadata accessor for NearbySuggestionActor);
  v38 = swift_allocObject();
  v38[2] = v36;
  v38[3] = v37;
  v38[4] = v35;

  sub_100022960(0, 0, v7, &unk_1000F1608, v38);
}

uint64_t sub_10003B66C(void *a1)
{
  v2 = v1;
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_1000E0D68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000E1F08();
  sub_1000049D0(v13, qword_100123188);
  v14 = a1;
  v15 = sub_1000E1EE8();
  v16 = sub_1000E2658();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = v7;
    v18 = v17;
    v39 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = TUConversationAVMode.description.getter([v14 avMode]);
    v21 = sub_100029C70(v19, v20, &v39);
    v37 = v2;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = [v14 UUID];
    sub_1000E0D38();

    sub_10003BB3C(&unk_100120190, 255, &type metadata accessor for UUID);
    v24 = sub_1000E2C18();
    v26 = v25;
    (*(v9 + 8))(v12, v8);
    v27 = sub_100029C70(v24, v26, &v39);
    v2 = v37;

    *(v18 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Conversation avMode changed to %s for %s.", v18, 0x16u);
    swift_arrayDestroy();

    v7 = v38;
  }

  v28 = sub_1000E2538();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  v29 = qword_10011DC08;
  v31 = v2;
  if (v29 != -1)
  {
    swift_once();
  }

  v32 = qword_1001230D0;
  v33 = sub_10003BB3C(&unk_10011F010, v30, type metadata accessor for NearbySuggestionActor);
  v34 = swift_allocObject();
  v34[2] = v32;
  v34[3] = v33;
  v34[4] = v31;

  sub_100022960(0, 0, v7, &unk_1000F15F0, v34);
}

uint64_t sub_10003BA88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002D64;

  return sub_100035C98();
}

uint64_t sub_10003BB3C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003BB84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002D64;

  return sub_100035C98();
}

uint64_t sub_10003BC38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002D64;

  return sub_100035794();
}

uint64_t sub_10003BD24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_100034CD8(a1, v4, v5, v6);
}

uint64_t sub_10003BDD8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000341E0();
}

uint64_t sub_10003BE18(id *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_10002FEE0(a1, *(v1 + 16));
}

uint64_t sub_10003BE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10002EB44(a1, v4, v5, v6);
}

uint64_t sub_10003BF80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10002DFF8(a1, v4, v5, v6);
}

uint64_t sub_10003C034()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_10001223C(a3, &v26[-1] - v11);
  v13 = sub_1000E2538();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002248(v12);
  }

  else
  {
    sub_1000E2528();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000E24B8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000E2378();
      v22 = *(v21 + 16);
      sub_10003C924(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_100002248(a3);

      return v23;
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

  sub_100002248(a3);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t WeakTask.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  WeakTask.init(_:)(a1, a2);
  return v4;
}

uint64_t WeakTask.value.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_10003C368, 0, 0);
}

uint64_t sub_10003C368()
{
  v1 = v0[4];
  v2 = *(v0[3] + 16);
  v3 = async function pointer to Task.value.getter[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = *(v1 + 80);
  v0[6] = v5;
  v6 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  *v4 = v0;
  v4[1] = sub_10003C440;
  v7 = v0[2];

  return Task.value.getter(v7, v2, v5, v6, &protocol self-conformance witness table for Error);
}

uint64_t sub_10003C440()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10003C570, 0, 0);
  }
}

uint64_t sub_10003C570()
{
  (*(*(v0[6] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t *WeakTask.init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = *(v5 + 80);
  v11[5] = a1;
  v11[6] = a2;
  v2[2] = sub_10003C08C(0, 0, v9, &unk_1000F16D0, v11);
  return v2;
}

uint64_t sub_10003C730(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002E7C;

  return sub_1000252C4(a1, v4, v5, v7);
}

void *WeakTask.deinit()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);

  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  sub_1000E2558();

  v3 = v0[2];

  return v0;
}

uint64_t WeakTask.__deallocating_deinit()
{
  WeakTask.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10003C924@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003CA10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *v3 >> 62;
    v10 = *i >> 62;
    if (v9 == 3)
    {
      if (v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == 0xC000000000000000;
      }

      v12 = 0;
      v13 = v11 && *i >> 62 == 3;
      if (v13 && !v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v10 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v16 = __OFSUB__(v18, v19);
        v12 = v18 - v19;
        if (v16)
        {
          goto LABEL_138;
        }

        goto LABEL_28;
      }

      v12 = 0;
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v9)
    {
      LODWORD(v12) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_137;
      }

      v12 = v12;
      if (v10 <= 1)
      {
LABEL_29:
        if (v10)
        {
          LODWORD(v17) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
          }

          v17 = v17;
        }

        else
        {
          v17 = BYTE6(v7);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v12 = BYTE6(v6);
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v10 != 2)
    {
      if (v12)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_136;
    }

LABEL_33:
    if (v12 != v17)
    {
      return 0;
    }

    if (v12 < 1)
    {
      goto LABEL_6;
    }

    if (v9 > 1)
    {
      break;
    }

    if (v9)
    {
      v33 = v5;
      if (v5 > v5 >> 32)
      {
        goto LABEL_139;
      }

      v64 = *(v3 - 1);
      sub_1000123E0(v5, v6);
      sub_1000123E0(v8, v7);
      v27 = sub_1000E0B08();
      if (v27)
      {
        v34 = sub_1000E0B28();
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_141;
        }

        v27 += v33 - v34;
      }

      sub_1000E0B18();
      if (v10 == 2)
      {
        v62 = v27;
        v54 = *(v8 + 16);
        v53 = *(v8 + 24);
        v29 = sub_1000E0B08();
        if (v29)
        {
          v55 = sub_1000E0B28();
          if (__OFSUB__(v54, v55))
          {
            goto LABEL_155;
          }

          v29 += v54 - v55;
        }

        v16 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v16)
        {
          goto LABEL_151;
        }

        v57 = sub_1000E0B18();
        if (v57 >= v56)
        {
          v32 = v56;
        }

        else
        {
          v32 = v57;
        }

        result = v62;
        if (!v62)
        {
          goto LABEL_166;
        }

        if (!v29)
        {
          goto LABEL_165;
        }

        goto LABEL_127;
      }

      if (v10 == 1)
      {
        if (v8 >> 32 < v8)
        {
          goto LABEL_150;
        }

        v29 = sub_1000E0B08();
        if (v29)
        {
          v35 = sub_1000E0B28();
          if (__OFSUB__(v8, v35))
          {
            goto LABEL_157;
          }

          v29 += v8 - v35;
        }

        v36 = sub_1000E0B18();
        if (v36 >= (v8 >> 32) - v8)
        {
          v32 = (v8 >> 32) - v8;
        }

        else
        {
          v32 = v36;
        }

        result = v27;
        if (!v27)
        {
          goto LABEL_172;
        }

        if (!v29)
        {
          goto LABEL_171;
        }

LABEL_127:
        if (result == v29)
        {
          sub_100006660(v8, v7);
          sub_100006660(v64, v6);
          goto LABEL_6;
        }

        v58 = v32;
        v59 = v29;
        goto LABEL_132;
      }

      __s1[0] = v8;
      LOWORD(__s1[1]) = v7;
      BYTE2(__s1[1]) = BYTE2(v7);
      BYTE3(__s1[1]) = BYTE3(v7);
      BYTE4(__s1[1]) = BYTE4(v7);
      BYTE5(__s1[1]) = BYTE5(v7);
      if (!v27)
      {
        goto LABEL_162;
      }

      goto LABEL_131;
    }

    __s1[0] = *(v3 - 1);
    LOWORD(__s1[1]) = v6;
    BYTE2(__s1[1]) = BYTE2(v6);
    BYTE3(__s1[1]) = BYTE3(v6);
    BYTE4(__s1[1]) = BYTE4(v6);
    BYTE5(__s1[1]) = BYTE5(v6);
    if (!v10)
    {
      goto LABEL_89;
    }

    v63 = v5;
    if (v10 == 1)
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_143;
      }

      sub_1000123E0(v5, v6);
      sub_1000123E0(v8, v7);
      v21 = sub_1000E0B08();
      if (!v21)
      {
        goto LABEL_159;
      }

      v22 = v21;
      v23 = sub_1000E0B28();
      if (__OFSUB__(v8, v23))
      {
        goto LABEL_147;
      }

      v24 = (v8 - v23 + v22);
      result = sub_1000E0B18();
      if (!v24)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      sub_1000123E0(v5, v6);
      sub_1000123E0(v8, v7);
      v24 = sub_1000E0B08();
      if (v24)
      {
        v42 = sub_1000E0B28();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_152;
        }

        v24 += v41 - v42;
      }

      v16 = __OFSUB__(v40, v41);
      v20 = v40 - v41;
      if (v16)
      {
        goto LABEL_145;
      }

      result = sub_1000E0B18();
      if (!v24)
      {
        goto LABEL_158;
      }
    }

LABEL_101:
    if (result >= v20)
    {
      v46 = v20;
    }

    else
    {
      v46 = result;
    }

    v47 = memcmp(__s1, v24, v46);
    sub_100006660(v8, v7);
    sub_100006660(v63, v6);
    if (v47)
    {
      return 0;
    }

LABEL_6:
    v3 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v9 != 2)
  {
    memset(__s1, 0, 14);
    if (!v10)
    {
LABEL_89:
      __s2 = v8;
      v66 = v7;
      v67 = BYTE2(v7);
      v68 = BYTE3(v7);
      v69 = BYTE4(v7);
      v70 = BYTE5(v7);
      if (memcmp(__s1, &__s2, BYTE6(v7)))
      {
        return 0;
      }

      goto LABEL_6;
    }

    v63 = v5;
    if (v10 == 2)
    {
      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      sub_1000123E0(v5, v6);
      sub_1000123E0(v8, v7);
      v24 = sub_1000E0B08();
      if (v24)
      {
        v39 = sub_1000E0B28();
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_153;
        }

        v24 += v38 - v39;
      }

      v16 = __OFSUB__(v37, v38);
      v20 = v37 - v38;
      if (v16)
      {
        goto LABEL_146;
      }

      result = sub_1000E0B18();
      if (!v24)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_142;
      }

      sub_1000123E0(v5, v6);
      sub_1000123E0(v8, v7);
      v43 = sub_1000E0B08();
      if (!v43)
      {
        goto LABEL_163;
      }

      v44 = v43;
      v45 = sub_1000E0B28();
      if (__OFSUB__(v8, v45))
      {
        goto LABEL_148;
      }

      v24 = (v8 - v45 + v44);
      result = sub_1000E0B18();
      if (!v24)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_101;
  }

  v26 = *(v5 + 16);
  v64 = *(v3 - 1);
  sub_1000123E0(v5, v6);
  sub_1000123E0(v8, v7);
  v27 = sub_1000E0B08();
  if (v27)
  {
    v28 = sub_1000E0B28();
    if (__OFSUB__(v26, v28))
    {
      goto LABEL_140;
    }

    v27 += v26 - v28;
  }

  sub_1000E0B18();
  if (v10 == 2)
  {
    v61 = v27;
    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v29 = sub_1000E0B08();
    if (v29)
    {
      v50 = sub_1000E0B28();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_154;
      }

      v29 += v49 - v50;
    }

    v16 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v16)
    {
      goto LABEL_149;
    }

    v52 = sub_1000E0B18();
    if (v52 >= v51)
    {
      v32 = v51;
    }

    else
    {
      v32 = v52;
    }

    result = v61;
    if (!v61)
    {
      goto LABEL_170;
    }

    if (!v29)
    {
      goto LABEL_169;
    }

    goto LABEL_127;
  }

  if (v10 == 1)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_144;
    }

    v29 = sub_1000E0B08();
    if (v29)
    {
      v30 = sub_1000E0B28();
      if (__OFSUB__(v8, v30))
      {
        goto LABEL_156;
      }

      v29 += v8 - v30;
    }

    v31 = sub_1000E0B18();
    if (v31 >= (v8 >> 32) - v8)
    {
      v32 = (v8 >> 32) - v8;
    }

    else
    {
      v32 = v31;
    }

    result = v27;
    if (!v27)
    {
      goto LABEL_168;
    }

    if (!v29)
    {
      goto LABEL_167;
    }

    goto LABEL_127;
  }

  __s1[0] = v8;
  LOWORD(__s1[1]) = v7;
  BYTE2(__s1[1]) = BYTE2(v7);
  BYTE3(__s1[1]) = BYTE3(v7);
  BYTE4(__s1[1]) = BYTE4(v7);
  BYTE5(__s1[1]) = BYTE5(v7);
  if (v27)
  {
LABEL_131:
    v58 = BYTE6(v7);
    v59 = __s1;
    result = v27;
LABEL_132:
    v60 = memcmp(result, v59, v58);
    sub_100006660(v8, v7);
    sub_100006660(v64, v6);
    if (v60)
    {
      return 0;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  sub_1000E0B18();
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  result = sub_1000E0B18();
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

void sub_10003D270()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1000E2398();
  v3 = v0[2];
  v4 = v0[3];
  sub_1000E0C98();
  v5 = v0[4];
  v6 = v0[5];
  sub_1000E0C98();
  v7 = v0[6];
  v8 = *(v7 + 16);
  sub_1000E2D58(v8);
  if (v8)
  {
    v9 = (v7 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      sub_1000123E0(v10, *v9);
      sub_1000E0C98();
      sub_100006660(v10, v11);
      v9 += 2;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_10003D328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003DC48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003D368(uint64_t a1)
{
  v2 = sub_10000641C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003D3A4(uint64_t a1)
{
  v2 = sub_10000641C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10003D3E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003DDB4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

Swift::Int sub_10003D430()
{
  sub_1000E2D48();
  sub_10003D270();
  return sub_1000E2D68();
}

Swift::Int sub_10003D474()
{
  sub_1000E2D48();
  sub_10003D270();
  return sub_1000E2D68();
}

uint64_t sub_10003D4B0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1000E2C68() & 1) == 0 || (sub_10003DAE0(v2, v4, v7, v8) & 1) == 0 || (sub_10003DAE0(v3, v6, v9, v10) & 1) == 0)
  {
    return 0;
  }

  return sub_10003CA10(v5, v11);
}

__n128 sub_10003D598(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10003D5B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003D614()
{
  result = qword_10011F160;
  if (!qword_10011F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F160);
  }

  return result;
}

uint64_t sub_10003D668@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1000E0B08();
    if (v10)
    {
      v11 = sub_1000E0B28();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1000E0B18();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1000E0B08();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1000E0B28();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1000E0B18();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10003D898(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10003DA28(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100006660(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10003D668(v13, a3, a4, &v12);
  v10 = v4;
  sub_100006660(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10003DA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1000E0B08();
  v11 = result;
  if (result)
  {
    result = sub_1000E0B28();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1000E0B18();
  sub_10003D668(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10003DAE0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000123E0(a3, a4);
          return sub_10003D898(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10003DC48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_1000E2C68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000EAB00 == a2 || (sub_1000E2C68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000EAB20 == a2 || (sub_1000E2C68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000EAB40 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000E2C68();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10003DDB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000ADE4(&qword_10011F190, &qword_1000F18F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_1000036AC(a1, a1[3]);
  sub_10000641C();
  sub_1000E2D88();
  if (v2)
  {
    return sub_10000E9DC(a1);
  }

  LOBYTE(v26) = 0;
  v24 = sub_1000E2BB8();
  v25 = v11;
  v28 = 1;
  sub_10003E150();
  sub_1000E2BC8();
  v22 = v26;
  v23 = v27;
  v28 = 2;
  sub_1000E2BC8();
  v12 = v26;
  v21 = v27;
  sub_10000ADE4(&qword_10011F180, &qword_1000F18F0);
  v28 = 3;
  sub_1000066B4(&qword_10011F1A0, sub_10003E150);
  sub_1000E2BC8();
  (*(v6 + 8))(v9, v5);
  v14 = v25;
  v13 = v26;

  v15 = v12;
  v17 = v22;
  v16 = v23;
  sub_1000123E0(v22, v23);
  v18 = v21;
  sub_1000123E0(v15, v21);

  sub_10000E9DC(a1);

  sub_100006660(v17, v16);
  sub_100006660(v15, v18);

  *a2 = v24;
  a2[1] = v14;
  a2[2] = v17;
  a2[3] = v16;
  a2[4] = v15;
  a2[5] = v18;
  a2[6] = v13;
  return result;
}

unint64_t sub_10003E150()
{
  result = qword_10011F198;
  if (!qword_10011F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F198);
  }

  return result;
}

unint64_t sub_10003E1C0()
{
  result = qword_10011F1A8;
  if (!qword_10011F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F1A8);
  }

  return result;
}

unint64_t sub_10003E218()
{
  result = qword_10011F1B0;
  if (!qword_10011F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F1B0);
  }

  return result;
}

unint64_t sub_10003E270()
{
  result = qword_10011F1B8;
  if (!qword_10011F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F1B8);
  }

  return result;
}

uint64_t sub_10003E2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1000CA67C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10000B2D0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1000CB5F0();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1000C9E04(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10003E3BC()
{
  type metadata accessor for ConduitDeviceActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1001230E0 = v0;
  return result;
}

uint64_t sub_10003E41C()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10003E478()
{
  v0 = type metadata accessor for ConduitDeviceActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v0);
}

unint64_t sub_10003E4B0(char a1)
{
  result = 0xD00000000000002BLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD000000000000030;
      break;
    case 4:
      result = 0xD000000000000031;
      break;
    case 5:
      result = 0xD000000000000034;
      break;
    case 6:
      result = 0xD000000000000032;
      break;
    case 8:
      result = 0xD00000000000002FLL;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0xD000000000000033;
      break;
    case 11:
      result = 0xD00000000000002ELL;
      break;
    case 12:
      result = 0xD00000000000002DLL;
      break;
    case 13:
      result = 0xD000000000000036;
      break;
    case 14:
      result = 0xD000000000000037;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10003E638(char a1)
{
  result = 0xD00000000000002BLL;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000029;
      break;
    case 2:
    case 13:
      result = 0xD000000000000030;
      break;
    case 3:
      result = 0xD000000000000033;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
    case 7:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000038;
      break;
    case 9:
      result = 0xD00000000000002CLL;
      break;
    case 10:
      result = 0xD000000000000028;
      break;
    case 11:
      result = 0xD00000000000002BLL;
      break;
    case 12:
      result = 0xD000000000000034;
      break;
    case 14:
      result = 0xD00000000000002ALL;
      break;
    case 15:
      result = 0xD00000000000002FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10003E7C0()
{
  v1 = 0xD00000000000002CLL;
  v2 = 0xD000000000000029;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000002CLL;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

void sub_10003E830()
{
  v0 = [objc_allocWithZone(RPCompanionLinkClient) init];
  v1 = objc_allocWithZone(RPCompanionLinkClient);
  v2 = v0;
  v3 = [v1 init];
  v4 = objc_allocWithZone(RPRemoteDisplayDiscovery);
  v5 = v3;
  v6 = [v4 init];
  type metadata accessor for ConduitDeviceManager();
  v7 = swift_allocObject();
  v8 = v6;
  v9 = sub_100057AFC(v2, v5, v8, v7);

  qword_1001230E8 = v9;
}

uint64_t sub_10003E904(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_10003E924, 0, 0);
}

uint64_t sub_10003E924()
{
  v1 = v0;
  v18 = v0 + 2;
  v2 = v0 + 10;
  v3 = v1[18];
  v4 = v1[19];
  *(v4 + 24) = v3;
  v5 = objc_allocWithZone(RPCompanionLinkClient);

  v6 = [v5 init];
  *(v4 + 16) = v6;
  [v6 setControlFlags:0x180000002802];
  v7 = *(v4 + 16);
  v1[14] = sub_10005A1C4;
  v1[15] = v3;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10002ED24;
  v1[13] = &unk_100114638;
  v8 = _Block_copy(v2);
  v9 = v1[15];

  v10 = v7;

  [v10 setDeviceFoundHandler:v8];
  _Block_release(v8);

  v11 = *(v4 + 16);
  v1[14] = sub_10005A210;
  v1[15] = v3;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10002ED24;
  v1[13] = &unk_100114660;
  v12 = _Block_copy(v2);
  v13 = v1[15];

  v14 = v11;

  [v14 setDeviceLostHandler:v12];
  _Block_release(v12);

  v15 = *(v4 + 16);
  v1[20] = v15;
  v1[2] = v1;
  v1[3] = sub_10003EBA8;
  v16 = swift_continuation_init();
  v1[17] = sub_10000ADE4(&qword_10011E7C0, &qword_1000F0C30);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100014FC4;
  v1[13] = &unk_100114688;
  v1[14] = v16;
  [v15 activateWithCompletion:v2];

  return _swift_continuation_await(v18);
}

uint64_t sub_10003EBA8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_10003EDE4;
  }

  else
  {
    v3 = sub_10003ECB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003ECB8()
{
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_1001231A0);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[BLE] BLE discovery client assertion activated!", v4, 2u);
  }

  v5 = *(v0 + 144);

  v6 = *(v0 + 8);
  v7 = *(v0 + 152);

  return v6(v7);
}

uint64_t sub_10003EDE4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[21];

  return v5();
}

uint64_t sub_10003EE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003EF08, v6, 0);
}

uint64_t sub_10003EF08()
{
  v1 = *(v0 + 16);
  sub_100045B10(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003EF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003F000, v6, 0);
}

uint64_t sub_10003F000()
{
  v1 = *(v0 + 16);
  sub_100046064(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003F060()
{
  v1 = v0;
  v2 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = [*(v1 + 16) activeDevices];
  sub_10000CAAC(0, &qword_10011F5E0, RPCompanionLinkDevice_ptr);
  v7 = sub_1000E2468();

  v9 = *(v1 + 16);
  v8 = *(v1 + 24);

  [v9 invalidate];
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = qword_10011DC18;

  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1001230E0;
  v14 = sub_100058F28(&qword_1001201E0, v12, type metadata accessor for ConduitDeviceActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v7;
  v15[5] = v8;

  sub_100022960(0, 0, v5, &unk_1000F1BB8, v15);

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v16 = sub_1000E1F08();
  sub_1000049D0(v16, qword_1001231A0);
  v17 = sub_1000E1EE8();
  v18 = sub_1000E2698();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "[BLE] BLE discovery client assertion deactivated...", v19, 2u);
  }

  v20 = *(v1 + 24);

  return v1;
}

uint64_t sub_10003F328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003F3C0, v6, 0);
}

void sub_10003F3C0(__n128 a1)
{
  v35 = v1;
  v2 = v1[5];
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v28 = v1[5];
    }

    v3 = sub_1000E2B68();
    if (!v3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_24;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  v5 = v1[6];
  v6 = v2 & 0xC000000000000001;
  v33 = v1[5] + 32;
  v7 = &CSDVoucherManagerImpl__prots_0;
  a1.n128_u64[0] = 136315138;
  v30 = a1;
  v31 = v2 & 0xC000000000000001;
  do
  {
    if (v6)
    {
      v8 = v1[5];
      v9 = sub_1000E2A98();
    }

    else
    {
      v9 = *(v33 + 8 * v4);
    }

    v10 = v9;
    v11 = [v9 v7[352].count];
    if (v11 && (v12 = v11, sub_1000E2338(), v12, v37._countAndFlagsBits = 0x5654656C707041, v37._object = 0xE700000000000000, LOBYTE(v12) = sub_1000E2408(v37), , (v12 & 1) != 0))
    {
      v13 = v1[6];
      v14 = sub_10004595C(v10);
      if (v14)
      {
        v15 = v14;
        v16 = v1[6];
        if ((sub_100046564(v14) & 1) == 0)
        {
          v17 = *(v15 + 16);
          v18 = *(v15 + 24);
          swift_beginAccess();

          sub_10003E2C4(0, v17, v18);
          swift_endAccess();
          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v19 = sub_1000E1F08();
          sub_1000049D0(v19, qword_1001231A0);

          v20 = sub_1000E1EE8();
          v21 = sub_1000E2698();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v34 = v32;
            *v22 = v30.n128_u32[0];
            v23 = sub_100013B80();
            v25 = v5;
            v26 = sub_100029C70(v23, v24, &v34);

            *(v22 + 4) = v26;
            v5 = v25;
            _os_log_impl(&_mh_execute_header, v20, v21, "Conduit device disconnected %s.", v22, 0xCu);
            sub_10000E9DC(v32);

            v6 = v31;
          }

          v27 = *(v5 + 40);
          v1[2] = v15;
          sub_1000E1FC8();
        }
      }

      v7 = &CSDVoucherManagerImpl__prots_0;
    }

    else
    {
    }

    ++v4;
  }

  while (v3 != v4);
LABEL_24:
  v29 = v1[1];

  v29();
}

uint64_t sub_10003F6D8()
{
  sub_10003F060();

  return swift_deallocClassInstance();
}

uint64_t sub_10003F70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003F7A8, v6, 0);
}

uint64_t sub_10003F7A8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100045B10(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10003F848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = sub_1000E2538();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = qword_10011DC18;

  v16 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = qword_1001230E0;
  v18 = sub_100058F28(&qword_1001201E0, v15, type metadata accessor for ConduitDeviceActor);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = a2;
  v19[5] = v16;

  a5(0, 0, v12, a4, v19);
}

uint64_t sub_10003F9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003FA80, v6, 0);
}

uint64_t sub_10003FA80()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100046064(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10003FB20(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = qword_10011DC18;

  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1001230E0;
  v14 = sub_100058F28(&qword_1001201E0, v12, type metadata accessor for ConduitDeviceActor);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  *(v15 + 32) = a4;
  *(v15 + 40) = a1;

  sub_100022F54(0, 0, v9, &unk_1000F1B88, v15);
}

uint64_t sub_10003FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003FD50, v6, 0);
}

uint64_t sub_10003FD50()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1000462C4(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t *sub_10003FDF0()
{
  swift_beginAccess();
  sub_10002B4BC((v0 + 7), v10);
  v1 = v11;
  v2 = v12;
  sub_1000036AC(v10, v11);
  (*(v2 + 160))(v1, v2);
  sub_10000E9DC(v10);
  sub_10002B4BC((v0 + 12), v10);
  v3 = v11;
  v4 = v12;
  sub_1000036AC(v10, v11);
  (*(v4 + 160))(v3, v4);
  sub_10000E9DC(v10);
  sub_100007E88((v0 + 2));
  v5 = v0[4];

  v6 = v0[5];

  v7 = v0[6];

  sub_10000E9DC(v0 + 7);
  sub_10000E9DC(v0 + 12);
  sub_10000E9DC(v0 + 17);
  swift_weakDestroy();
  v8 = v0[23];

  return v0;
}

uint64_t sub_10003FF08()
{
  sub_10003FDF0();

  return swift_deallocClassInstance();
}

uint64_t sub_10003FF60()
{
  v1[4] = v0;
  v2 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230E0;
  v1[6] = qword_1001230E0;

  return _swift_task_switch(sub_100040034, v3, 0);
}

uint64_t sub_100040034()
{
  if (TULockdownModeEnabled())
  {
    sub_100058DE4();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
    v2 = v0[5];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[4];
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = v0[5];

      v9 = v0[1];

      return v9(v7);
    }

    else
    {
      v10 = v0[4];
      v11 = *(v10 + 184);
      v0[7] = v11;
      if (v11)
      {
        v12 = async function pointer to Task.value.getter[1];

        v13 = swift_task_alloc();
        v0[8] = v13;
        v14 = type metadata accessor for ConduitDeviceManager.BleDiscoveryAssertion();
        v15 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
        *v13 = v0;
        v13[1] = sub_100040360;
        v16 = v0 + 3;
      }

      else
      {
        v17 = v0[5];
        v18 = v0[6];
        v19 = sub_1000E2538();
        (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
        v21 = sub_100058F28(&qword_1001201E0, v20, type metadata accessor for ConduitDeviceActor);
        v22 = swift_allocObject();
        v22[2] = v18;
        v22[3] = v21;
        v22[4] = v10;

        v11 = sub_100022690(0, 0, v17, &unk_1000F1DA8, v22);
        v0[10] = v11;
        v23 = *(v10 + 184);
        *(v10 + 184) = v11;

        v24 = async function pointer to Task.value.getter[1];
        v25 = swift_task_alloc();
        v0[11] = v25;
        v14 = type metadata accessor for ConduitDeviceManager.BleDiscoveryAssertion();
        v15 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
        *v25 = v0;
        v25[1] = sub_100040500;
        v16 = v0 + 2;
      }

      return Task.value.getter(v16, v11, v14, v15, &protocol self-conformance witness table for Error);
    }
  }
}

uint64_t sub_100040360()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1000406BC;
  }

  else
  {
    v6 = sub_10004048C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004048C()
{
  v1 = v0[7];

  v2 = v0[3];
  v3 = v0[5];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_100040500()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100040728;
  }

  else
  {
    v6 = sub_10004062C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004062C()
{
  v1 = v0[10];
  v2 = v0[4];

  v3 = v0[2];
  swift_weakAssign();
  v4 = *(v2 + 184);
  *(v2 + 184) = 0;

  v5 = v0[5];

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_1000406BC()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100040728()
{
  v1 = v0[10];
  v2 = v0[4];

  v3 = *(v2 + 184);
  *(v2 + 184) = 0;

  v4 = v0[12];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000407A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v4[3] = qword_1001230E0;
  type metadata accessor for ConduitDeviceManager.BleDiscoveryAssertion();
  swift_allocObject();

  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1000408A4;

  return sub_10003E904(a4);
}

uint64_t sub_1000408A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_1000409F0, v9, 0);
  }
}

uint64_t sub_100040A14(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = [*(result + 16) activeDevices];
    sub_10000CAAC(0, &qword_10011F5E0, RPCompanionLinkDevice_ptr);
    v4 = sub_1000E2468();

    if (v4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
    {
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
      v9 = &CSDVoucherManagerImpl__prots_0;
      v22 = v4;
      while (1)
      {
        if (v7)
        {
          v10 = sub_1000E2A98();
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            goto LABEL_22;
          }

          v10 = *(v4 + 8 * v6 + 32);
        }

        v11 = v10;
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (([v10 v9[360].count] & 2) != 0 && (v23 = *(a1 + 24), v24 = *(a1 + 16), (v13 = objc_msgSend(v11, "idsDeviceIdentifier")) != 0))
        {
          v14 = v13;
          v15 = i;
          v16 = a1;
          v17 = sub_1000E2338();
          v19 = v18;

          if (v24 == v17 && v23 == v19)
          {

            return 1;
          }

          v21 = sub_1000E2C68();

          a1 = v16;
          i = v15;
          v4 = v22;
          v9 = &CSDVoucherManagerImpl__prots_0;
          if (v21)
          {

            return 1;
          }
        }

        else
        {
        }

        ++v6;
        if (v12 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    return 0;
  }

  return result;
}

uint64_t sub_100040C34()
{
  *(v1 + 744) = v0;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v2 = qword_1001230E0;
  *(v1 + 752) = qword_1001230E0;

  return _swift_task_switch(sub_100040CD0, v2, 0);
}

uint64_t sub_100040CD0()
{
  if (TULockdownModeEnabled())
  {
    sub_100058DE4();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[93];
    swift_beginAccess();
    sub_10002B4BC(v4 + 56, (v0 + 2));
    v5 = v0[5];
    v6 = v0[6];
    sub_1000036AC(v0 + 2, v5);
    v7 = *(v6 + 168);
    v10 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[95] = v9;
    *v9 = v0;
    v9[1] = sub_100040E80;

    return v10(v5, v6);
  }
}

uint64_t sub_100040E80()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  *(*v1 + 768) = v0;

  v5 = *(v2 + 752);
  if (v0)
  {
    v6 = sub_100042554;
  }

  else
  {
    v6 = sub_100040FAC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100040FAC()
{
  v1 = v0[93];
  sub_10000E9DC(v0 + 2);
  sub_10002B4BC(v1 + 96, (v0 + 7));
  v2 = v0[10];
  v3 = v0[11];
  sub_1000036AC(v0 + 7, v2);
  v4 = *(v3 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[97] = v6;
  *v6 = v0;
  v6[1] = sub_1000410E8;

  return v8(v2, v3);
}

uint64_t sub_1000410E8()
{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v4 = *v1;
  *(*v1 + 784) = v0;

  v5 = *(v2 + 752);
  if (v0)
  {
    v6 = sub_1000425B8;
  }

  else
  {
    v6 = sub_100041214;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100041214()
{
  v1 = v0[93];
  sub_10000E9DC(v0 + 7);
  swift_beginAccess();
  sub_10002B4BC(v1 + 136, (v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  sub_1000036AC(v0 + 12, v2);
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[99] = v6;
  *v6 = v0;
  v6[1] = sub_100041364;

  return v8(v2, v3);
}

uint64_t sub_100041364()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  *(*v1 + 800) = v0;

  v5 = *(v2 + 752);
  if (v0)
  {
    v6 = sub_10004261C;
  }

  else
  {
    v6 = sub_100041490;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100041490()
{
  v1 = v0[93];
  sub_10000E9DC(v0 + 12);
  v2 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 17));
  v4 = v0[20];
  v3 = v0[21];
  sub_1000036AC(v0 + 17, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 2;
  *(v6 + 32) = &unk_1000F1BD0;
  *(v6 + 40) = v2;
  v7 = *(v3 + 184);

  v7(0xD000000000000028, 0x80000001000EB340, 0, sub_1000582AC, v6, v4, v3);

  sub_10000E9DC(v0 + 17);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 22));
  v9 = v0[25];
  v10 = v0[26];
  sub_1000036AC(v0 + 22, v9);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = 3;
  *(v12 + 32) = &unk_1000F1BE0;
  *(v12 + 40) = v8;
  v13 = *(v10 + 184);

  v13(0xD000000000000030, 0x80000001000EB300, 0, sub_1000583A8, v12, v9, v10);

  sub_10000E9DC(v0 + 22);
  v14 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 27));
  v15 = v0[30];
  v16 = v0[31];
  sub_1000036AC(v0 + 27, v15);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 4;
  *(v18 + 32) = &unk_1000F1BF0;
  *(v18 + 40) = v14;
  v19 = *(v16 + 184);

  v19(0xD000000000000031, 0x80000001000EB2C0, 0, sub_1000584A4, v18, v15, v16);

  sub_10000E9DC(v0 + 27);
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 32));
  v21 = v0[35];
  v22 = v0[36];
  sub_1000036AC(v0 + 32, v21);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = 5;
  *(v24 + 32) = &unk_1000F1C00;
  *(v24 + 40) = v20;
  v25 = *(v22 + 184);

  v25(0xD000000000000034, 0x80000001000EB280, 0, sub_1000585A0, v24, v21, v22);

  sub_10000E9DC(v0 + 32);
  v26 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 37));
  v27 = v0[40];
  v28 = v0[41];
  sub_1000036AC(v0 + 37, v27);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = 6;
  *(v30 + 32) = &unk_1000F1C10;
  *(v30 + 40) = v26;
  v31 = *(v28 + 184);

  v31(0xD000000000000032, 0x80000001000EB240, 0, sub_10005869C, v30, v27, v28);

  sub_10000E9DC(v0 + 37);
  v32 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 42));
  v33 = v0[45];
  v34 = v0[46];
  sub_1000036AC(v0 + 42, v33);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = 7;
  *(v36 + 32) = &unk_1000F1C20;
  *(v36 + 40) = v32;
  v37 = *(v34 + 184);

  v37(0xD00000000000002BLL, 0x80000001000EB210, 0, sub_100058798, v36, v33, v34);

  sub_10000E9DC(v0 + 42);
  v38 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 47));
  v39 = v0[50];
  v40 = v0[51];
  sub_1000036AC(v0 + 47, v39);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = 10;
  *(v42 + 32) = &unk_1000F1C30;
  *(v42 + 40) = v38;
  v43 = *(v40 + 184);

  v43(0xD000000000000033, 0x80000001000EB170, 0, sub_100058894, v42, v39, v40);

  sub_10000E9DC(v0 + 47);
  v44 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 52));
  v45 = v0[55];
  v46 = v0[56];
  sub_1000036AC(v0 + 52, v45);
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  *(v48 + 24) = 11;
  *(v48 + 32) = &unk_1000F1C40;
  *(v48 + 40) = v44;
  v49 = *(v46 + 184);

  v49(0xD00000000000002ELL, 0x80000001000EB140, 0, sub_100058990, v48, v45, v46);

  sub_10000E9DC(v0 + 52);
  v50 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 57));
  v51 = v0[60];
  v52 = v0[61];
  sub_1000036AC(v0 + 57, v51);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = 12;
  *(v54 + 32) = &unk_1000F1C50;
  *(v54 + 40) = v50;
  v55 = *(v52 + 184);

  v55(0xD00000000000002DLL, 0x80000001000EB110, 0, sub_100058A8C, v54, v51, v52);

  sub_10000E9DC(v0 + 57);
  v56 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 62));
  v57 = v0[65];
  v58 = v0[66];
  sub_1000036AC(v0 + 62, v57);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = 13;
  *(v60 + 32) = &unk_1000F1C60;
  *(v60 + 40) = v56;
  v61 = *(v58 + 184);

  v61(0xD000000000000036, 0x80000001000EB0D0, 0, sub_100058B88, v60, v57, v58);

  sub_10000E9DC(v0 + 62);
  v62 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 67));
  v63 = v0[70];
  v64 = v0[71];
  sub_1000036AC(v0 + 67, v63);
  v65 = swift_allocObject();
  swift_weakInit();
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = 14;
  *(v66 + 32) = &unk_1000F1C70;
  *(v66 + 40) = v62;
  v67 = *(v64 + 184);

  v67(0xD000000000000037, 0x80000001000EB090, 0, sub_100058C84, v66, v63, v64);

  sub_10000E9DC(v0 + 67);
  v68 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 72));
  v69 = v0[75];
  v70 = v0[76];
  sub_1000036AC(v0 + 72, v69);
  v71 = swift_allocObject();
  swift_weakInit();
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  *(v72 + 24) = 4;
  *(v72 + 32) = sub_100058CCC;
  *(v72 + 40) = v68;
  v73 = *(v70 + 192);

  v73(0xD000000000000022, 0x80000001000EAF80, 0, sub_100058CD4, v72, v69, v70);

  sub_10000E9DC(v0 + 72);
  v74 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 77));
  v75 = v0[80];
  v76 = v0[81];
  sub_1000036AC(v0 + 77, v75);
  v77 = swift_allocObject();
  swift_weakInit();
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  *(v78 + 24) = 5;
  *(v78 + 32) = sub_100058D14;
  *(v78 + 40) = v74;
  v79 = *(v76 + 192);

  v79(0xD000000000000027, 0x80000001000EAF50, 0, sub_100058D1C, v78, v75, v76);

  sub_10000E9DC(v0 + 77);
  v80 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 82));
  v81 = v0[85];
  v82 = v0[86];
  sub_1000036AC(v0 + 82, v81);
  v83 = swift_allocObject();
  swift_weakInit();
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = 10;
  *(v84 + 32) = sub_100058D5C;
  *(v84 + 40) = v80;
  v85 = *(v82 + 192);

  v85(0xD000000000000028, 0x80000001000EAE50, 0, sub_100058DA4, v84, v81, v82);

  sub_10000E9DC(v0 + 82);
  v86 = v0[1];

  return v86();
}

uint64_t sub_100042554()
{
  sub_10000E9DC(v0 + 2);
  v1 = v0[96];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000425B8()
{
  sub_10000E9DC(v0 + 7);
  v1 = v0[98];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10004261C()
{
  sub_10000E9DC(v0 + 12);
  v1 = v0[100];
  v2 = v0[1];

  return v2();
}

uint64_t sub_100042680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100042720, v5, 0);
}

uint64_t sub_100042720()
{
  v1 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100042898;
    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[5];

    return sub_10007B2B0(v6, v4, v5);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100042898()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_100042A28;
  }

  else
  {
    v6 = sub_1000429C4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000429C4()
{
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100042A28()
{
  v1 = v0[10];
  swift_unknownObjectRelease();
  v2 = v0[12];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100042A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100042B2C, v5, 0);
}

uint64_t sub_100042B2C()
{
  v1 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100042CA4;
    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[5];

    return sub_100071504(v6, v4, v5);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100042CA4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_10005A564;
  }

  else
  {
    v6 = sub_10005A570;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100042DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100042E70, v5, 0);
}

uint64_t sub_100042E70()
{
  v1 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v3 = qword_1001230F0;

    return _swift_task_switch(sub_100042FB4, v3, 0);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100042FB4()
{
  v1 = *(v0[10] + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100042CA4;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  return sub_1000BCDEC(v5, v3, v4);
}

uint64_t sub_10004305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_1000430FC, v5, 0);
}

uint64_t sub_1000430FC()
{
  v1 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100042CA4;
    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[5];

    return sub_1000736AC(v6, v4, v5);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100043274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100043314, v5, 0);
}

uint64_t sub_100043314()
{
  v1 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v3 = qword_1001230F0;

    return _swift_task_switch(sub_100043458, v3, 0);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100043458()
{
  v1 = *(v0[10] + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100042CA4;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  return sub_1000C1D74(v5, v3, v4);
}

uint64_t sub_100043500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_1000435A0, v5, 0);
}

uint64_t sub_1000435A0()
{
  v1 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v3 = qword_1001230F0;

    return _swift_task_switch(sub_1000436E4, v3, 0);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000436E4()
{
  v1 = *(v0[10] + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100042CA4;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  return sub_1000BF01C(v5, v3, v4);
}

uint64_t sub_10004378C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_10004382C, v5, 0);
}

uint64_t sub_10004382C()
{
  v1 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100042CA4;
    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[5];

    return sub_100074228(v6, v4, v5);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000439A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100043A44, v5, 0);
}

uint64_t sub_100043A44()
{
  v1 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100042CA4;
    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[5];

    return sub_100075BC4(v6, v4, v5);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100043BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100043C5C, v5, 0);
}

uint64_t sub_100043C5C()
{
  v1 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100042CA4;
    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[5];

    return sub_10007A0FC(v6, v4, v5);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100043DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100043E74, v5, 0);
}

uint64_t sub_100043E74()
{
  v1 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v3 = qword_1001230F0;

    return _swift_task_switch(sub_100043FB8, v3, 0);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100043FB8()
{
  v1 = *(v0[10] + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100042CA4;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  return sub_1000C3030(v5, v3, v4);
}

uint64_t sub_100044060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100044100, v5, 0);
}

uint64_t sub_100044100()
{
  v1 = v0[8];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v3 = qword_1001230F0;

    return _swift_task_switch(sub_100044244, v3, 0);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100044244()
{
  v1 = *(v0[10] + OBJC_IVAR___CSDNeighborhoodActivityConduit_incomingCallServer);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100042CA4;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  return sub_1000B2B74(v5, v3);
}

uint64_t sub_1000442EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v9 = sub_1000E2538();
      (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
      v10 = qword_10011DC30;
      swift_unknownObjectRetain();

      if (v10 != -1)
      {
        swift_once();
      }

      v11 = qword_1001230F0;
      v12 = sub_100058F28(&qword_100120020, 255, type metadata accessor for ConduitActor);
      v13 = swift_allocObject();
      v13[2] = v11;
      v13[3] = v12;
      v13[4] = Strong;
      v13[5] = a2;

      sub_100022F54(0, 0, v6, &unk_1000F1CD8, v13);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000444D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E17A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v14 = sub_1000E2538();
      (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
      (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
      v15 = qword_10011DC30;
      swift_unknownObjectRetain();

      v21 = a2;
      if (v15 != -1)
      {
        swift_once();
      }

      v16 = qword_1001230F0;
      v17 = sub_100058F28(&qword_100120020, 255, type metadata accessor for ConduitActor);
      v18 = (*(v5 + 80) + 40) & ~*(v5 + 80);
      v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      *(v20 + 2) = v16;
      *(v20 + 3) = v17;
      *(v20 + 4) = Strong;
      (*(v5 + 32))(&v20[v18], v7, v4);
      *&v20[v19] = v21;

      sub_100022F54(0, 0, v11, &unk_1000F1CB8, v20);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000447A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E17C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v13 = sub_1000E2538();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
      v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
      v15 = swift_allocObject();
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 4) = Strong;
      (*(v5 + 32))(&v15[v14], &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      *&v15[(v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

      sub_1000223DC(0, 0, v10, &unk_1000F1C98, v15);
    }
  }

  return result;
}

uint64_t sub_1000449DC(uint64_t a1, void *a2, char a3)
{
  v29._countAndFlagsBits = a1;
  v29._object = a2;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
LABEL_5:
  if (v9)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 0;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
LABEL_10:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = *(*(v5 + 56) + ((v12 << 9) | (8 * v14)));
      result = swift_beginAccess();
      v16 = *(v15 + 40);
      if (*(v16 + 16))
      {
        v17 = *(v16 + 40);
        sub_1000E2D48();
        if (a3)
        {

          if (a3 == 1)
          {
            sub_1000E2A88(39);
          }

          else
          {
            sub_1000E2A88(38);
          }
        }

        else
        {

          sub_1000E2A88(38);
        }

        sub_1000E23A8(v29);
        v30._countAndFlagsBits = 41;
        v30._object = 0xE100000000000000;
        sub_1000E23A8(v30);
        sub_1000E2398();

        v18 = sub_1000E2D68();
        v19 = -1 << *(v16 + 32);
        v20 = v18 & ~v19;
        if ((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v28 = v5;
          v21 = ~v19;
          v22 = *(v16 + 48);
          while (1)
          {
            v23 = (v22 + 24 * v20);
            v24 = *v23;
            v25 = v23[1];
            v26 = *(v23 + 16);
            if (v26)
            {
              if (v26 == 1)
              {
                if (a3 != 1)
                {
                  goto LABEL_20;
                }
              }

              else if (a3 != 2)
              {
                goto LABEL_20;
              }
            }

            else if (a3)
            {
              goto LABEL_20;
            }

            v27 = v24 == v29._countAndFlagsBits && v25 == v29._object;
            if (v27 || (sub_1000E2C68() & 1) != 0)
            {

              return v15;
            }

LABEL_20:
            v20 = (v20 + 1) & v21;
            if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {

              v5 = v28;
              goto LABEL_5;
            }
          }
        }
      }

      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_100044D58(void *a1)
{
  v2 = [a1 knownIdentifiersByHandleType];
  sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
  sub_1000154B8();
  v3 = sub_1000E22B8();

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);
  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  v10 = &CSDVoucherManagerImpl__prots_0;
  v84 = v1;
  v85 = v3;
  v82 = v9;
  v83 = v3 + 64;
  while (1)
  {
LABEL_5:
    if (!v7)
    {
      while (1)
      {
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          return;
        }

        v7 = *(v4 + 8 * v12);
        ++v8;
        if (v7)
        {
          v11 = v1;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_87;
    }

    v11 = v1;
    v12 = v8;
LABEL_11:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(*(v3 + 48) + 8 * v14);
    v16 = (*(v3 + 56) + 16 * v14);
    v17 = v16[1];
    v87._countAndFlagsBits = *v16;
    v18 = v15;
    v87._object = v17;

    v86 = v18;
    v19 = [v18 v10[463].count];
    if (!v19)
    {
      v58 = *(v11 + 48);
      v59 = v58 + 64;
      v60 = 1 << *(v58 + 32);
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      else
      {
        v61 = -1;
      }

      v62 = v61 & *(v58 + 64);
      v78 = (v60 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v63 = 0;
      v81 = v58;
      while (v62)
      {
LABEL_68:
        v65 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
        v66 = *(*(v58 + 56) + ((v63 << 9) | (8 * v65)));
        swift_beginAccess();
        v67 = *(v66 + 40);
        if (*(v67 + 16))
        {
          v68 = *(v67 + 40);
          sub_1000E2D48();

          sub_1000E2A88(38);

          sub_1000E23A8(v87);
          v90._countAndFlagsBits = 41;
          v90._object = 0xE100000000000000;
          sub_1000E23A8(v90);
          sub_1000E2398();

          v69 = sub_1000E2D68();
          v70 = -1 << *(v67 + 32);
          v71 = v69 & ~v70;
          if ((*(v67 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
          {
            v72 = ~v70;
            v73 = *(v67 + 48);
            while (1)
            {
              v74 = v73 + 24 * v71;
              if (*(v74 + 16) >= 2u)
              {
                v75 = *v74 == v87._countAndFlagsBits && *(v74 + 8) == v87._object;
                if (v75 || (sub_1000E2C68() & 1) != 0)
                {
                  break;
                }
              }

              v71 = (v71 + 1) & v72;
              if (((*(v67 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
              {
                goto LABEL_79;
              }
            }

LABEL_84:

            return;
          }

LABEL_79:

          v58 = v81;
        }
      }

      v1 = v84;
      while (1)
      {
        v64 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_88;
        }

        if (v64 >= v78)
        {
LABEL_81:

          v8 = v12;
          v3 = v85;
          v9 = v82;
          v4 = v83;
          v10 = &CSDVoucherManagerImpl__prots_0;
          goto LABEL_5;
        }

        v62 = *(v59 + 8 * v64);
        ++v63;
        if (v62)
        {
          v63 = v64;
          goto LABEL_68;
        }
      }
    }

    v1 = v11;
    if (v19 == 1)
    {
      break;
    }

    if (v19 == 2)
    {
      v20 = *(v11 + 48);
      v21 = v20 + 64;
      v22 = 1 << *(v20 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(v20 + 64);
      v76 = (v22 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v25 = 0;
      v79 = v20;
      while (v24)
      {
LABEL_24:
        v27 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v28 = *(*(v20 + 56) + ((v25 << 9) | (8 * v27)));
        swift_beginAccess();
        v29 = *(v28 + 40);
        if (*(v29 + 16))
        {
          v30 = *(v29 + 40);
          sub_1000E2D48();

          sub_1000E2A88(38);

          sub_1000E23A8(v87);
          v88._countAndFlagsBits = 41;
          v88._object = 0xE100000000000000;
          sub_1000E23A8(v88);
          sub_1000E2398();

          v31 = sub_1000E2D68();
          v32 = -1 << *(v29 + 32);
          v33 = v31 & ~v32;
          if ((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            v35 = *(v29 + 48);
            do
            {
              v36 = v35 + 24 * v33;
              if (!*(v36 + 16))
              {
                v37 = *v36 == v87._countAndFlagsBits && *(v36 + 8) == v87._object;
                if (v37 || (sub_1000E2C68() & 1) != 0)
                {
                  goto LABEL_84;
                }
              }

              v33 = (v33 + 1) & v34;
            }

            while (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0);
          }

          v20 = v79;
        }
      }

      v1 = v84;
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v76)
        {
          goto LABEL_81;
        }

        v24 = *(v21 + 8 * v26);
        ++v25;
        if (v24)
        {
          v25 = v26;
          goto LABEL_24;
        }
      }

LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v8 = v12;
  }

  v38 = *(v11 + 48);
  v39 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & *(v38 + 64);
  v43 = (v40 + 63) >> 6;
  v44 = *(v11 + 48);
  swift_bridgeObjectRetain_n();
  v45 = 0;
  v77 = v43;
  v80 = v38;
  while (v42)
  {
LABEL_46:
    v47 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v48 = *(*(v38 + 56) + ((v45 << 9) | (8 * v47)));
    swift_beginAccess();
    v49 = *(v48 + 40);
    if (*(v49 + 16))
    {
      v50 = *(v49 + 40);
      sub_1000E2D48();

      sub_1000E2A88(39);

      sub_1000E23A8(v87);
      v89._countAndFlagsBits = 41;
      v89._object = 0xE100000000000000;
      sub_1000E23A8(v89);
      sub_1000E2398();

      v51 = sub_1000E2D68();
      v52 = -1 << *(v49 + 32);
      v53 = v51 & ~v52;
      if ((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
      {
        v54 = ~v52;
        v55 = *(v49 + 48);
        do
        {
          v56 = v55 + 24 * v53;
          if (*(v56 + 16) == 1)
          {
            v57 = *v56 == v87._countAndFlagsBits && *(v56 + 8) == v87._object;
            if (v57 || (sub_1000E2C68() & 1) != 0)
            {
              goto LABEL_84;
            }
          }

          v53 = (v53 + 1) & v54;
        }

        while (((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0);
      }

      v43 = v77;
      v38 = v80;
    }
  }

  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v46 >= v43)
    {

      v8 = v12;
      v1 = v84;
      v3 = v85;
      v9 = v82;
      v4 = v83;
      v10 = &CSDVoucherManagerImpl__prots_0;
      goto LABEL_5;
    }

    v42 = *(v39 + 8 * v46);
    ++v45;
    if (v42)
    {
      v45 = v46;
      goto LABEL_46;
    }
  }

LABEL_89:
  __break(1u);
}

uint64_t sub_1000455D8(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  swift_beginAccess();
  v3 = v2[10];
  v4 = v2[11];
  v32 = v2;
  v5 = sub_1000036AC(v2 + 7, v3);
  v6 = *(v3 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9);
  v10 = (*(v4 + 56))(v3, v4);
  (*(v6 + 8))(v9, v3);
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_16:

    result = swift_weakLoadStrong();
    if (result)
    {
      v20 = *(result + 16);

      v21 = [v20 activeDevices];
      sub_10000CAAC(0, &qword_10011F5E0, RPCompanionLinkDevice_ptr);
      v22 = sub_1000E2468();

      v31 = v20;
      if (v22 >> 62)
      {
        goto LABEL_32;
      }

      for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
      {
        v24 = 0;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = sub_1000E2A98();
          }

          else
          {
            if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v25 = *(v22 + 8 * v24 + 32);
          }

          v26 = v25;
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          v28 = sub_1000E2328();
          v29 = [v26 compareWithDeviceIdentifier:v28];

          if (v29)
          {

            v18 = sub_10004595C(v26);

            return v18;
          }

          ++v24;
          if (v27 == i)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        ;
      }

LABEL_33:

      return 0;
    }

    return result;
  }

LABEL_15:
  v11 = sub_1000E2B68();
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = sub_1000E2A98();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v16 = sub_1000E2328();
    v17 = [v14 compareWithDeviceIdentifier:v16];

    if (v17)
    {
      break;
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_16;
    }
  }

  v18 = sub_10004595C(v14);

  return v18;
}