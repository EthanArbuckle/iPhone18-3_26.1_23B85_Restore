uint64_t sub_10001CA28()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_10001CEA0;
  }

  else
  {
    v7 = sub_10001CB64;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10001CB64()
{
  v1 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 62) = 4;

  v2 = sub_10009DB00();
  v3 = *(v0 + 160);
  if (v3 == 1)
  {
    goto LABEL_16;
  }

  if (v3 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v2);
  }

  *(v0 + 160) = v3 - 1;
  v4 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v5 = *(v0 + 57);
  if (v5 > 2)
  {
    if (v5 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 == 1)
    {
      v6 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v7 = swift_task_alloc();
      *(v0 + 168) = v7;
      *v7 = v0;
      v7[1] = sub_10001C62C;
      v2 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v2);
    }

    v8 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10009DB00();
  }

  v9 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v10 = *(v0 + 58);
  if (v10 == 4 || v10 == 2)
  {
    v11 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10009DB00();
    v12 = swift_task_alloc();
    *(v0 + 176) = v12;
    *v12 = v0;
    v12[1] = sub_10001CA28;
    v13 = *(v0 + 80);

    return sub_100022220();
  }

LABEL_16:
  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  v17 = *(v0 + 104);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10001CEA0()
{
  v76 = v0;
  *(v0 + 64) = *(v0 + 184);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v0 + 208) = v4;
  *(v0 + 216) = v3;
  v5 = *(v0 + 48);
  *(v0 + 224) = v5;
  v6 = *(v0 + 56);
  if (v6 != 1)
  {
    sub_1000323E0(v1, v2, v4, v3, v5, v6);
    goto LABEL_16;
  }

  v72 = v3;
  v73 = v1;
  if (!v4)
  {
LABEL_38:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v1);
  }

  v7 = *(v0 + 144);

  v8 = v4;
  v74 = v2;

  v9 = [v8 domain];
  v10 = sub_10009DD90();
  v12 = v11;

  if (v10 == sub_10009DD90() && v12 == v13)
  {

    goto LABEL_9;
  }

  v14 = sub_10009E2E0();

  if (v14)
  {
LABEL_9:
    v15 = [v8 code];

    if (v15 == 7)
    {
      v16 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v17 = swift_task_alloc();
      *(v0 + 232) = v17;
      *v17 = v0;
      v18 = sub_10001D6CC;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

LABEL_12:
  v19 = *(v0 + 112);
  v20 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 61) = 5;

  sub_10009DB00();
  sub_10009D9D0();
  v21 = v8;
  v22 = v74;

  v23 = sub_10009D9E0();
  v24 = sub_10009DFD0();

  v71 = v24;
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 112);
  v28 = *(v0 + 88);
  v27 = *(v0 + 96);
  if (v25)
  {
    v69 = *(v0 + 112);
    v29 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v75 = v68;
    *v29 = 136315138;
    v70 = v21;
    v30 = v21;
    v31 = [v30 description];
    log = v23;
    v67 = v28;
    v32 = sub_10009DD90();
    v34 = v33;

    v22 = v74;
    v35 = sub_1000307A4(v32, v34, &v75);

    *(v29 + 4) = v35;
    v21 = v70;
    _os_log_impl(&_mh_execute_header, log, v71, "tryToCreateShareIfNeeded not-in-iCloud error after retries: %s", v29, 0xCu);
    sub_10000670C(v68);

    (*(v27 + 8))(v69, v67);
  }

  else
  {

    (*(v27 + 8))(v26, v28);
  }

  v36 = *(v0 + 80);
  v37 = v21;
  sub_1000264AC(1u, v4);
  sub_1000323E0(v73, v22, v4, v72, v5, 1u);

LABEL_16:
  v38 = *(v0 + 152);
  v39 = *(v0 + 104);
  v40 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 60) = 5;

  sub_10009DB00();
  v41 = [objc_allocWithZone(NSError) initWithDomain:v38 code:1 userInfo:0];
  sub_10009D9D0();
  v42 = sub_10009D9E0();
  v43 = sub_10009DFD0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "tryToCreateShareIfNeeded unexpected error, returning CKError.internalError as best approximation", v44, 2u);
  }

  v45 = *(v0 + 184);
  v47 = *(v0 + 96);
  v46 = *(v0 + 104);
  v48 = *(v0 + 80);
  v49 = *(v0 + 88);

  (*(v47 + 8))(v46, v49);
  v50 = v41;
  sub_1000264AC(1u, v41);

  v51 = *(v0 + 160);
  if (v51 == 1)
  {
    goto LABEL_34;
  }

  if (v51 < 2)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 160) = v51 - 1;
  v52 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v53 = *(v0 + 57);
  if (v53 > 2)
  {
    if (v53 - 4 < 2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v53 == 1)
    {
      v54 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v17 = swift_task_alloc();
      *(v0 + 168) = v17;
      *v17 = v0;
      v18 = sub_10001C62C;
LABEL_23:
      v17[1] = v18;
      v1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v1);
    }

    v55 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10009DB00();
  }

  v56 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v57 = *(v0 + 58);
  if (v57 == 4 || v57 == 2)
  {
    v58 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10009DB00();
    v59 = swift_task_alloc();
    *(v0 + 176) = v59;
    *v59 = v0;
    v59[1] = sub_10001CA28;
    v60 = *(v0 + 80);

    return sub_100022220();
  }

LABEL_34:
  v63 = *(v0 + 112);
  v62 = *(v0 + 120);
  v64 = *(v0 + 104);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_10001D6CC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_10003A8C4;
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_10001D7F0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10001D7F0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);

  v7 = sub_1000323E0(v6, v4, v3, v1, v2, 1u);
  v8 = *(v0 + 160);
  if (v8 == 1)
  {
    goto LABEL_16;
  }

  if (v8 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v7);
  }

  *(v0 + 160) = v8 - 1;
  v9 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v10 = *(v0 + 57);
  if (v10 > 2)
  {
    if (v10 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v10 == 1)
    {
      v11 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v12 = swift_task_alloc();
      *(v0 + 168) = v12;
      *v12 = v0;
      v12[1] = sub_10001C62C;
      v7 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v7);
    }

    v13 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10009DB00();
  }

  v14 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v15 = *(v0 + 58);
  if (v15 == 4 || v15 == 2)
  {
    v16 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10009DB00();
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v17[1] = sub_10001CA28;
    v18 = *(v0 + 80);

    return sub_100022220();
  }

LABEL_16:
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 104);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10001DB18(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v12 - v5;
  if (v1 == 4)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (HIBYTE(v12) == 1)
      {
        v8 = &unk_1000A10D8;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10009DAF0();

        if (HIBYTE(v12) != 3)
        {
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10009DAF0();

        if ((HIBYTE(v12) - 2) < 4u || (v12 & 0x100000000000000) != 0)
        {
        }

        v8 = &unk_1000A10C8;
      }

      sub_10009DF20();
      v9 = sub_10009DF40();
      (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
      sub_10009DF10();

      v10 = sub_10009DF00();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v7;
      sub_100019B10(0, 0, v6, v8, v11);
    }
  }

  return result;
}

uint64_t sub_10001DDC4()
{
  v0[2] = sub_10009DF10();
  v0[3] = sub_10009DF00();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10001DE74;

  return sub_10001DFB0(1);
}

uint64_t sub_10001DE74()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_10009DED0();

  return _swift_task_switch(sub_10003A8CC, v5, v4);
}

uint64_t sub_10001DFB0(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 163) = a1;
  *(v2 + 104) = sub_10009DF10();
  *(v2 + 112) = sub_10009DF00();
  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  *v3 = v2;
  v3[1] = sub_10001E068;

  return sub_10001C240(300);
}

uint64_t sub_10001E068()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v6 = sub_10009DED0();
  *(v1 + 128) = v6;
  *(v1 + 136) = v5;

  return _swift_task_switch(sub_10001E1AC, v6, v5);
}

uint64_t sub_10001E1AC()
{
  if ((*(v0 + 163) & 1) == 0)
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 57) = 3;

LABEL_7:
    sub_10009DB00();
    goto LABEL_8;
  }

  v1 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 58) != 4)
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    goto LABEL_7;
  }

  v2 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 60) == 2)
  {
    v3 = *(v0 + 112);

LABEL_8:
    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 61) = 1;

  sub_10009DB00();
  v11 = *(v10 + 16);

  v12 = sub_10004834C();

  v13 = *(*(v10 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride);
  if (v13 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    LOBYTE(v13) = *(v0 + 62);
  }

  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_10001E4B8;
  v15 = *(v0 + 96);

  return sub_100023A48(v12 & 1, v13 & 1);
}

uint64_t sub_10001E4B8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_10001E6A8;
  }

  else
  {
    v7 = sub_10001E5F4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10001E5F4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 162) = 2;

  sub_10009DB00();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001E6A8()
{
  v1 = v0;
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);

  *(v0 + 64) = v2;
  v4 = v0 + 64;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);

    v7 = *(v0 + 24);
    v32 = *(v0 + 16);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 161) = 4;

    result = sub_10009DB00();
    if (v11 == 10)
    {
      if (!v9)
      {
        __break(1u);
        return result;
      }

      v13 = *(v0 + 96);

      v14 = v9;

      sub_1000264AC(1u, v9);
      sub_1000323E0(v32, v7, v9, v8, v10, 0xAu);

      v15 = v1[8];
    }

    else
    {
      v26 = *(v0 + 96);
      v27 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_1000264AC(2u, v27);
      sub_1000323E0(v32, v7, v9, v8, v10, v11);

      v28 = v1[8];
    }
  }

  else
  {
    v16 = *(v0 + 152);
    v17 = v1[8];

    v1[9] = v16;
    swift_errorRetain();
    type metadata accessor for CKError(0);
    v18 = swift_dynamicCast();
    v19 = v1[19];
    v20 = v1[12];
    if (v18)
    {
      v21 = v1[19];

      v22 = *(v4 + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v4 + 96) = 4;

      sub_10009DB00();
      *(v4 + 24) = v22;
      sub_1000391A4(&qword_1000CA028, type metadata accessor for CKError);
      v23 = CKErrorDomain;
      v24 = [objc_allocWithZone(NSError) initWithDomain:v23 code:sub_10009D790() userInfo:0];

      sub_1000264AC(1u, v24);
      v25 = *(v4 + 8);
    }

    else
    {
      v29 = *(v4 + 8);

      swift_getKeyPath();
      swift_getKeyPath();
      *(v4 - 1) = 4;

      sub_10009DB00();
      v30 = sub_10009D7A0();
      sub_1000264AC(2u, v30);
    }
  }

  v31 = v1[1];

  return v31();
}

uint64_t sub_10001EAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10009DF10();
  v4[3] = sub_10009DF00();
  v6 = sub_10009DED0();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10001EB3C, v6, v5);
}

uint64_t sub_10001EB3C()
{
  v1 = (v0[2] + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData);
  v2 = *v1;
  v0[6] = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10001EC08;
  v5 = v0[2];

  return sub_10001ED4C(0, v2, v3);
}

uint64_t sub_10001EC08()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_10003A8CC, v5, v4);
}

uint64_t sub_10001ED4C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a2;
  *(v4 + 145) = a1;
  sub_10009DF10();
  *(v4 + 96) = sub_10009DF00();
  v6 = sub_10009DED0();
  *(v4 + 104) = v6;
  *(v4 + 112) = v5;

  return _swift_task_switch(sub_10001EDEC, v6, v5);
}

uint64_t sub_10001EDEC()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData);
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData) = *(v0 + 72);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_10001EEAC;
  v4 = *(v0 + 88);
  v5 = *(v0 + 145);

  return sub_10001DFB0(v5);
}

uint64_t sub_10001EEAC()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_10001EFCC, v4, v3);
}

uint64_t sub_10001EFCC()
{
  v1 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 57) != 4)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 59) != 3)
  {
    v3 = *(v0 + 88);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if (*(v0 + 60) != 2)
    {
LABEL_6:
      v7 = *(v0 + 88);
      v6 = *(v0 + 96);
      v8 = *(v0 + 145);

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 58) = v8;

      sub_10009DB00();
      goto LABEL_7;
    }
  }

  v4 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 61) == 3)
  {
    v5 = *(v0 + 96);

LABEL_7:
    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 145);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 62) = v12;

  sub_10009DB00();
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_10001F298;
  v14 = *(v0 + 88);

  return sub_100026F78();
}

uint64_t sub_10001F298()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_10001F484;
  }

  else
  {
    v7 = sub_10001F3D4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10001F3D4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 3;

  sub_10009DB00();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001F484()
{
  v1 = v0;
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);

  *(v0 + 64) = v2;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 88);

    v6 = *(v0 + 24);
    v22 = *(v0 + 16);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 5;

    result = sub_10009DB00();
    if (v10 == 4)
    {
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v12 = *(v0 + 88);

      v13 = v8;

      sub_1000264AC(5u, v8);
      sub_1000323E0(v22, v6, v8, v7, v9, 4u);
    }

    else
    {
      v18 = *(v0 + 88);
      v19 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_1000264AC(2u, v19);
      sub_1000323E0(v22, v6, v8, v7, v9, v10);
    }

    v20 = v1[8];
  }

  else
  {
    v14 = *(v0 + 136);
    v15 = v1[11];
    v16 = v1[8];

    v17 = sub_10009D7A0();
    sub_1000264AC(2u, v17);
  }

  v21 = v1[1];

  return v21();
}

uint64_t sub_10001F6D8(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v12 - v5;
  if (v1 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v8 = HIBYTE(v12);
      if (HIBYTE(v12) - 2 >= 4)
      {
        sub_10009DF20();
        v9 = sub_10009DF40();
        (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
        sub_10009DF10();

        v10 = sub_10009DF00();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = &protocol witness table for MainActor;
        *(v11 + 32) = v7;
        *(v11 + 40) = v8 & 1;
        sub_100019B10(0, 0, v6, &unk_1000A0F80, v11);
      }
    }
  }

  return result;
}

uint64_t sub_10001F89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  sub_10009DF10();
  *(v5 + 24) = sub_10009DF00();
  v7 = sub_10009DED0();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_10001F938, v7, v6);
}

uint64_t sub_10001F938()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData);
  v2 = *v1;
  *(v0 + 48) = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10001EC08;
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);

  return sub_10001ED4C(v5, v2, v3);
}

uint64_t sub_10001FA08(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v11 - v5;
  if (v1 == 3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      sub_10009DF20();
      v8 = sub_10009DF40();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      sub_10009DF10();

      v9 = sub_10009DF00();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v7;
      sub_10004CDF4(0, 0, v6, &unk_1000A0F70, v10);
    }
  }

  return result;
}

uint64_t sub_10001FB70(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 256) = a2;
  *(v7 + 72) = a1;
  *(v7 + 80) = a3;
  v8 = sub_10009DC50();
  *(v7 + 120) = v8;
  v9 = *(v8 - 8);
  *(v7 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  v11 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v12 = sub_10009D860();
  *(v7 + 160) = v12;
  v13 = *(v12 - 8);
  *(v7 + 168) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  v15 = sub_10009D9F0();
  *(v7 + 184) = v15;
  v16 = *(v15 - 8);
  *(v7 + 192) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 200) = swift_task_alloc();
  sub_10009DF10();
  *(v7 + 208) = sub_10009DF00();
  v19 = sub_10009DED0();
  *(v7 + 216) = v19;
  *(v7 + 224) = v18;

  return _swift_task_switch(sub_10001FD6C, v19, v18);
}

uint64_t sub_10001FD6C()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (!Strong)
  {
    v7 = *(v0 + 208);

    v6 = [objc_allocWithZone(UIImage) init];
LABEL_22:
    v40 = *(v0 + 200);
    v41 = *(v0 + 176);
    v43 = *(v0 + 144);
    v42 = *(v0 + 152);
    v44 = *(v0 + 136);

    v45 = *(v0 + 8);

    return v45(v6);
  }

  v3 = *(v0 + 80);
  if (v3)
  {
    v4 = *(v0 + 208);
    v5 = v3;

    v6 = *(v0 + 80);
    goto LABEL_12;
  }

  if (*(v0 + 256))
  {
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);

    v6 = sub_10009D240(v10, v11, v12, v13, v14, v15, v16, v17, v82);
    v18 = v6;
    sub_10009D9D0();
    v19 = v18;
    v20 = sub_10009D9E0();
    v21 = sub_10009DFF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v6;
      _os_log_impl(&_mh_execute_header, v20, v21, "iOS appIcon: icon: %@", v22, 0xCu);
      sub_100008728(v23, &qword_1000CA8E0, &qword_10009FE08);
    }

    else
    {

      v20 = v19;
    }

    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    v29 = *(v0 + 184);

    (*(v28 + 8))(v27, v29);
LABEL_12:
    v30 = *(v0 + 232);
    sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v31 = *(v0 + 40);
    if (qword_1000C9DD8 != -1)
    {
      swift_once();
    }

    v32 = qword_1000CA490;
    v33 = sub_10009E110();

    if (v33)
    {
      if (!v6)
      {
LABEL_20:
        v39 = *(v0 + 232);
        v6 = v32;
        goto LABEL_21;
      }
    }

    else
    {
      v34 = *(v0 + 232);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v35 = *(v0 + 48);
      v36 = [objc_allocWithZone(UIImage) init];
      v37 = sub_10009E110();

      if (!v6)
      {
        if ((v37 & 1) == 0)
        {
          v47 = *(v0 + 232);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10009DAF0();

          v6 = *(v0 + 56);
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    v38 = *(v0 + 232);
LABEL_21:

    goto LABEL_22;
  }

  v24 = *(v0 + 88);
  if (v24)
  {
    v25 = *(v0 + 208);
    v26 = v24;

    v6 = *(v0 + 88);
    goto LABEL_12;
  }

  v48 = Strong;
  v49 = *(v0 + 160);
  v50 = *(v0 + 168);
  v51 = *(v0 + 152);
  sub_100008658(*(v0 + 72), v51, &qword_1000CA250, &qword_10009FDF8);
  if ((*(v50 + 48))(v51, 1, v49) == 1)
  {
    v52 = *(v0 + 208);
    v53 = *(v0 + 152);

    sub_100008728(v53, &qword_1000CA250, &qword_10009FDF8);
    v6 = 0;
    goto LABEL_12;
  }

  (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
  v54 = *(v48 + 56);
  if (*(v48 + 64) == 1)
  {
    v55 = *(v48 + 56);
  }

  else
  {
    v57 = *(v0 + 128);
    v56 = *(v0 + 136);
    v58 = *(v0 + 120);
    v59 = *(v48 + 56);
    swift_retain_n();
    sub_10009DFE0();
    v60 = sub_10009DC70();
    sub_10009D9C0();

    sub_10009DC40();
    swift_getAtKeyPath();
    sub_10003A168(v54, 0);
    (*(v57 + 8))(v56, v58);
    sub_10003A168(v54, 0);
    v55 = *(v0 + 64);
  }

  v61 = swift_unknownObjectWeakLoadStrong();
  if (v61)
  {
    v62 = *(v61 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI + 8);
    if (v62)
    {
      v63 = *(v0 + 168);
      v64 = *(v0 + 160);
      v65 = *(v0 + 144);
      v66 = *(v61 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI);
      (*(v63 + 16))(v65, *(v0 + 176), v64);
      (*(v63 + 56))(v65, 0, 1, v64);

      LOBYTE(v64) = sub_100096298(v66, v62, v65);

      sub_100008728(v65, &qword_1000CA250, &qword_10009FDF8);
      if (sub_100094E04(v64) == 0x7265646C6F66 && v67 == 0xE600000000000000)
      {

        goto LABEL_37;
      }

      v76 = sub_10009E2E0();

      if (v76)
      {
LABEL_37:
        v6 = sub_10009D240(v68, v69, v70, v71, v72, v73, v74, v75, v82);
        swift_unknownObjectRelease();
        if (v6)
        {
          v77 = *(v0 + 208);

          (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
          goto LABEL_12;
        }

        goto LABEL_40;
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_40:
  v78 = swift_task_alloc();
  *(v0 + 240) = v78;
  *v78 = v0;
  v78[1] = sub_10002048C;
  v79 = *(v0 + 176);
  v80 = *(v0 + 104);
  v81 = *(v0 + 112);

  return sub_1000382A0(v79, v80, v81, v55);
}

uint64_t sub_10002048C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = a1;

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);

  return _swift_task_switch(sub_1000205B4, v5, v4);
}

uint64_t sub_1000205B4()
{
  v1 = v0[26];

  v2 = v0[31];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v3 = v0[29];
  sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v4 = v0[5];
  if (qword_1000C9DD8 != -1)
  {
    swift_once();
  }

  v5 = qword_1000CA490;
  v6 = sub_10009E110();

  if (v6)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

LABEL_7:
    v11 = v0[29];
LABEL_10:

    goto LABEL_11;
  }

  v7 = v0[29];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v8 = v0[6];
  v9 = [objc_allocWithZone(UIImage) init];
  v10 = sub_10009E110();

  if (v2)
  {
    goto LABEL_7;
  }

  if (v10)
  {
LABEL_9:
    v12 = v0[29];
    v2 = v5;
    goto LABEL_10;
  }

  v20 = v0[29];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v2 = v0[7];
LABEL_11:
  v13 = v0[25];
  v14 = v0[22];
  v16 = v0[18];
  v15 = v0[19];
  v17 = v0[17];

  v18 = v0[1];

  return v18(v2);
}

uint64_t sub_100020834()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_1000208A8(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = sub_100003714(&qword_1000CAD50, &qword_1000A0EF8);
  v7 = *(a2 + v6[12]);
  v8 = *(a2 + v6[16]);
  v9 = *(a2 + v6[20]);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 24) = v11;
  *v11 = v3;
  v11[1] = sub_1000209EC;

  return v13(a2, v7, v8, v9);
}

uint64_t sub_1000209EC(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

void sub_100020AFC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    v5 = [v3 containerOptions];
    v6 = [v5 prefersHiddenAllowedSharingOptionsUI];

    if (v6)
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

uint64_t sub_100020B64(char *a1)
{
  v2 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19[-v4];
  v6 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19[-v8];
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v12 = sub_10009D860();
    v13 = (*(*(v12 - 8) + 48))(v9, 1, v12);
    sub_100008728(v9, &qword_1000CA250, &qword_10009FDF8);
    if (v13 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v14 = (v20 & 0xFE) != 8;
      if (v10)
      {
      }
    }

    else
    {
      if (v10)
      {
      }

      v14 = 1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if (v20 == 2 && v14)
    {
      v15 = sub_10009DF40();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      v16 = swift_allocObject();
      swift_weakInit();
      sub_10009DF10();

      v17 = sub_10009DF00();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = &protocol witness table for MainActor;
      v18[4] = v16;

      sub_100019B10(0, 0, v5, &unk_1000A0ED0, v18);
    }
  }

  return result;
}

uint64_t sub_100020EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_10009D9F0();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = sub_10009DF10();
  v4[12] = sub_10009DF00();
  v9 = sub_10009DED0();
  v4[13] = v9;
  v4[14] = v8;

  return _swift_task_switch(sub_100020FA4, v9, v8);
}

uint64_t sub_100020FA4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    v0[16] = v3;
    if (v3)
    {
      v4 = v0[10];
      sub_10009D9D0();
      v5 = sub_10009D9E0();
      v6 = sub_10009DFF0();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Refetching share due to network change.", v7, 2u);
      }

      v9 = v0[10];
      v8 = v0[11];
      v10 = v0[7];
      v11 = v0[8];

      v12 = *(v11 + 8);
      v0[17] = v12;
      v12(v9, v10);
      v0[18] = sub_10009DF00();
      v13 = swift_task_alloc();
      v0[19] = v13;
      *v13 = v0;
      v13[1] = sub_100021184;

      return sub_1000250A0();
    }

    v16 = v0[12];
  }

  else
  {
    v15 = v0[12];
  }

  v18 = v0[9];
  v17 = v0[10];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100021184()
{
  v2 = v0;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 160) = v2;

  v7 = sub_10009DED0();
  if (v2)
  {
    v8 = sub_1000213C8;
  }

  else
  {
    v8 = sub_1000212E0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000212E0()
{
  v1 = v0[18];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_100021344, v2, v3);
}

uint64_t sub_100021344()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];

  swift_unknownObjectRelease();

  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000213C8()
{
  v1 = v0[18];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_10002142C, v2, v3);
}

uint64_t sub_10002142C()
{
  v28 = v0;
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v5 = v0[9];

  swift_unknownObjectRelease();

  sub_10009D9D0();
  swift_errorRetain();
  v6 = sub_10009D9E0();
  v7 = sub_10009DFD0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[20];
    v9 = v0[8];
    v25 = v0[9];
    v26 = v0[17];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    v0[5] = v8;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v13 = sub_10009DDA0();
    v15 = sub_1000307A4(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to refetch share for network change %s", v11, 0xCu);
    sub_10000670C(v12);

    v26(v25, v10);
  }

  else
  {
    v16 = v0[20];
    v17 = v0[17];
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[7];

    v17(v18, v20);
  }

  v22 = v0[9];
  v21 = v0[10];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100021698()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_100021720()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

uint64_t sub_1000217B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_10002184C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_1000218C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10009D860();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_shouldStopAccessingSharedFileOrFolderURL;
  if (*(v2 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_shouldStopAccessingSharedFileOrFolderURL) == 1)
  {
    sub_100008658(a1, &v19 - v14, &qword_1000CA250, &qword_10009FDF8);
    if ((*(v5 + 48))(v15, 1, v4) == 1)
    {
      sub_100008728(v15, &qword_1000CA250, &qword_10009FDF8);
    }

    else
    {
      sub_10009D810();
      (*(v5 + 8))(v15, v4);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v5 + 48))(v13, 1, v4))
  {
    result = sub_100008728(v13, &qword_1000CA250, &qword_10009FDF8);
    v18 = 0;
  }

  else
  {
    (*(v5 + 16))(v8, v13, v4);
    sub_100008728(v13, &qword_1000CA250, &qword_10009FDF8);
    v18 = sub_10009D830();
    result = (*(v5 + 8))(v8, v4);
  }

  *(v2 + v16) = v18;
  return result;
}

uint64_t sub_100021B84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

double sub_100021BF0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100021C70(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_100021CF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v5;
  return result;
}

uint64_t sub_100021D74(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_10009DB00();
}

uint64_t sub_100021DEC(char a1, char a2)
{
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    if (a1)
    {
      v10 = v7;
      sub_10009D9D0();
      v11 = sub_10009D9E0();
      v12 = sub_10009DFD0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "setExecutionModeForSPI specified true for both isPreShare and isAddPeople; this will eventually become an internal error", v13, 2u);
      }

      (*(v5 + 8))(v9, v10);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v16[13] = 3;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if (v16[15] == 3)
    {
      return result;
    }

    if (a1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v16[14] = v15;
  }

  return sub_10009DB00();
}

uint64_t sub_100022014()
{
  v1 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v5 = sub_10009D860();
  v6 = 1;
  v7 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
  if (v7 == 1)
  {
    v8 = *(v0 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v9 = v15;
    if (v15)
    {
      v10 = sub_10009DD50();
      v11 = NSSelectorFromString(v10);

      if ([v9 respondsToSelector:v11] && objc_msgSend(v9, "br_isCloudDocsShare"))
      {

        return 1;
      }

      v12 = sub_10001A8A0();

      if (v12 == 9)
      {
        return 1;
      }
    }

    return 0;
  }

  return v6;
}

uint64_t sub_100022220()
{
  v1[4] = v0;
  v2 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_10009D860();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_10009DF10();
  v1[11] = sub_10009DF00();
  v7 = sub_10009DED0();

  return _swift_task_switch(sub_100022364, v7, v6);
}

uint64_t sub_100022364()
{
  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = 1;

  sub_10009DB00();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v0 + 97) & 0xFE) == 8)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v6 = *(v0 + 88);
      v7 = *(v0 + 56);
      v8 = *(v0 + 32);

      sub_100008728(v7, &qword_1000CA250, &qword_10009FDF8);
      sub_100005B1C();
      swift_allocError();
      *v9 = 0xD000000000000016;
      *(v9 + 8) = 0x80000001000A64E0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 0;
      *(v9 + 40) = 0;
      swift_willThrow();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 98) = 0;
    }

    else
    {
      (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
      v12 = sub_1000184A8();
      v14 = v12;
      v15 = *(v0 + 88);
      if (v13)
      {
        v16 = *(v0 + 72);
        v48 = *(v0 + 80);
        v17 = *(v0 + 64);
        v18 = *(v0 + 32);
        v19 = v12;
        v20 = v13;
        v21 = v13;

        sub_100005B1C();
        swift_allocError();
        *v22 = xmmword_1000A0420;
        *(v22 + 24) = 0;
        *(v22 + 32) = 0;
        *(v22 + 16) = v20;
        *(v22 + 40) = 1;
        swift_willThrow();

        (*(v16 + 8))(v48, v17);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 103) = 0;
      }

      else
      {
        v29 = *(v0 + 88);

        if (v14)
        {
          v30 = *(v0 + 32);
          v31 = *(v30 + 16);
          swift_getKeyPath();
          swift_getKeyPath();
          v32 = v14;

          sub_10009DAF0();

          if (*(v0 + 100) == 1)
          {
            v33 = *(v30 + 16);
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10009DAF0();

            if (*(v0 + 102) > 1u)
            {
              if (*(v0 + 102) != 2)
              {
                return sub_10009E250();
              }

              v34 = 2;
            }

            else if (*(v0 + 102))
            {
              v34 = 3;
            }

            else
            {
              v34 = 1;
            }
          }

          else
          {
            v34 = 1;
          }

          [v32 setPublicPermission:v34];
          v40 = *(*(v30 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride);
          v41 = v14;
          if (v40 == 2)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10009DAF0();

            LOBYTE(v40) = *(v0 + 101);
          }

          v42 = *(v0 + 72);
          v43 = *(v0 + 80);
          v44 = *(v0 + 64);
          v45 = *(v0 + 32);
          [v32 setAllowsAccessRequests:v40 & 1];
          v46 = *(v45 + 24);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 24) = v41;

          sub_10009DB00();

          (*(v42 + 8))(v43, v44);
        }

        else
        {
          v35 = *(v0 + 72);
          v36 = *(v0 + 64);
          v49 = *(v0 + 80);
          v38 = *(v0 + 40);
          v37 = *(v0 + 48);
          v39 = *(*(v0 + 32) + 24);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 16) = 0;
          swift_retain_n();
          sub_10009DB00();
          (*(v35 + 56))(v37, 1, 1, v36);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_100008658(v37, v38, &qword_1000CA250, &qword_10009FDF8);

          sub_10009DB00();
          sub_100008728(v37, &qword_1000CA250, &qword_10009FDF8);

          (*(v35 + 8))(v49, v36);
        }

        v47 = *(v0 + 32);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 99) = 0;
      }
    }
  }

  else
  {
    v10 = *(v0 + 88);
    v11 = *(v0 + 32);
    sub_1000194F8();

    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 104) = 0;
  }

  sub_10009DB00();
  v23 = *(v0 + 80);
  v24 = *(v0 + 48);
  v25 = *(v0 + 56);
  v26 = *(v0 + 40);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100022B3C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 296) = a2;
  *(v4 + 304) = v3;
  *(v4 + 408) = a3;
  *(v4 + 288) = a1;
  v5 = sub_10009D9F0();
  *(v4 + 312) = v5;
  v6 = *(v5 - 8);
  *(v4 + 320) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  sub_10009DF10();
  *(v4 + 336) = sub_10009DF00();
  v9 = sub_10009DED0();
  *(v4 + 344) = v9;
  *(v4 + 352) = v8;

  return _swift_task_switch(sub_100022C38, v9, v8);
}

uint64_t sub_100022C38()
{
  v1 = *(v0 + 304);
  if (*(v0 + 408))
  {
    v2 = sub_10000B284();
    *(v0 + 368) = v2;
    v3 = v0 + 16;
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v6 = v2;
    v7 = sub_10009DD50();
    *(v0 + 392) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_1000231DC;
    v8 = swift_continuation_init();
    *(v0 + 200) = sub_100003714(&qword_1000CA8E8, &qword_1000A09B8);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10003A8C8;
    *(v0 + 168) = &unk_1000C2628;
    *(v0 + 176) = v8;
    [v6 fetchShareParticipantWithPhoneNumber:v7 completionHandler:v0 + 144];
  }

  else
  {
    v9 = sub_10000B284();
    *(v0 + 360) = v9;
    v3 = v0 + 80;
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = v9;
    v13 = sub_10009DD50();
    *(v0 + 376) = v13;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_100023020;
    v14 = swift_continuation_init();
    *(v0 + 264) = sub_100003714(&qword_1000CA8E8, &qword_1000A09B8);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10003A8C8;
    *(v0 + 232) = &unk_1000C2650;
    *(v0 + 240) = v14;
    [v12 fetchShareParticipantWithEmailAddress:v13 completionHandler:v0 + 208];
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_100023020()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 384) = v3;
  v4 = *(v1 + 352);
  v5 = *(v1 + 344);
  if (v3)
  {
    v6 = sub_100023398;
  }

  else
  {
    v6 = sub_100023150;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100023150()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[42];

  v4 = v0[35];

  v5 = v0[41];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_1000231DC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 352);
  v5 = *(v1 + 344);
  if (v3)
  {
    v6 = sub_100023594;
  }

  else
  {
    v6 = sub_10002330C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10002330C()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[42];

  v4 = v0[34];

  v5 = v0[41];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_100023398()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[42];

  swift_willThrow();

  v5 = v0[48];
  v6 = v0[41];
  sub_10009D9D0();
  swift_errorRetain();
  v7 = sub_10009D9E0();
  v8 = sub_10009DFD0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "participant(withAddress) got CK error: %@", v9, 0xCu);
    sub_100008728(v10, &qword_1000CA8E0, &qword_10009FE08);
  }

  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];

  (*(v13 + 8))(v12, v14);
  v15 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v16 = 0xD000000000000019;
  *(v16 + 8) = 0x80000001000A5AB0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 2;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100023594()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[46];
  v4 = v0[42];

  swift_willThrow();

  v5 = v0[50];
  v6 = v0[41];
  sub_10009D9D0();
  swift_errorRetain();
  v7 = sub_10009D9E0();
  v8 = sub_10009DFD0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "participant(withAddress) got CK error: %@", v9, 0xCu);
    sub_100008728(v10, &qword_1000CA8E0, &qword_10009FE08);
  }

  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];

  (*(v13 + 8))(v12, v14);
  v15 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v16 = 0xD000000000000019;
  *(v16 + 8) = 0x80000001000A5AB0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 2;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100023794(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000067C8((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_10002386C(uint64_t a1, unsigned __int8 a2)
{
  if (sub_100019E10())
  {
    v5 = *(v2 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v2 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    if (v13)
    {
      goto LABEL_6;
    }
  }

  v7 = *(v2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (v12 != 1)
  {
    return 3;
  }

LABEL_6:
  v8 = *(v2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (v11 & 1 | a2 & (a1 == 3))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100023A48(char a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 220) = a2;
  *(v3 + 219) = a1;
  v4 = sub_10009D9F0();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  sub_10009DF10();
  *(v3 + 88) = sub_10009DF00();
  v8 = sub_10009DED0();
  *(v3 + 96) = v8;
  *(v3 + 104) = v7;

  return _swift_task_switch(sub_100023B50, v8, v7);
}

uint64_t sub_100023B50()
{
  v1 = *(*(v0 + 48) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v2 = *(v0 + 16);
  *(v0 + 112) = v2;
  if (!v2)
  {
    v16 = *(v0 + 88);

    sub_100005B1C();
    swift_allocError();
    *v17 = 0xD000000000000043;
    *(v17 + 8) = 0x80000001000A5960;
    *(v17 + 16) = xmmword_1000A0430;
    *(v17 + 32) = 0x80000001000A59B0;
    *(v17 + 40) = 11;
    swift_willThrow();
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);

    v15 = *(v0 + 8);
LABEL_7:

    return v15();
  }

  v3 = *(*(v0 + 48) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 216) == 1)
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    sub_10009D9D0();
    v6 = sub_10009D9E0();
    v7 = sub_10009DFF0();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "addParticipantsToShare, doing nothing as we have a public share", v12, 2u);
    }

    (*(v11 + 8))(v9, v10);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);

    v15 = *(v0 + 8);
    goto LABEL_7;
  }

  v21 = *(v0 + 48);
  *(v0 + 24) = &_swiftEmptyArrayStorage;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  result = *(v0 + 32);
  *(v0 + 120) = result;
  v22 = *(result + 16);
  *(v0 + 128) = v22;
  if (v22)
  {
    *(v0 + 136) = &_swiftEmptyArrayStorage;
    *(v0 + 144) = 0;
    if (*(result + 16))
    {
      v23 = *(result + 32);
      *(v0 + 152) = v23;
      v24 = *(result + 40);
      *(v0 + 160) = v24;
      v25 = *(result + 48);
      *(v0 + 221) = v25;
      sub_1000321DC();
      v26 = swift_task_alloc();
      *(v0 + 168) = v26;
      *v26 = v0;
      v26[1] = sub_1000240AC;
      v27 = *(v0 + 48);

      return sub_100022B3C(v23, v24, v25);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(v0 + 192) = &_swiftEmptyArrayStorage;
    v28 = *(v0 + 112);
    v29 = *(v0 + 72);
    v30 = *(v0 + 48);
    v31 = *(v0 + 220);

    [v28 setAllowsAccessRequests:v31];
    sub_10009D9D0();

    v32 = sub_10009D9E0();
    v33 = sub_10009DFF0();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 48);
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v37 = *(*(v0 + 40) + 16);

      *(v36 + 4) = v37;

      _os_log_impl(&_mh_execute_header, v32, v33, "addParticipantsToShare, adding %ld", v36, 0xCu);
    }

    else
    {
      v38 = *(v0 + 48);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v39 = swift_task_alloc();
    *(v0 + 200) = v39;
    *v39 = v0;
    v39[1] = sub_1000246EC;
    v40 = *(v0 + 48);

    return sub_100024988(&_swiftEmptyArrayStorage, 1, 1);
  }

  return result;
}

uint64_t sub_1000240AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v4 + 221);
  v8 = *(v3 + 160);
  v9 = *(v3 + 152);
  if (v1)
  {
    v10 = *(v4 + 136);
    v11 = *(v4 + 120);
    sub_1000321E4();

    v12 = *(v4 + 96);
    v13 = *(v4 + 104);
    v14 = sub_100024884;
  }

  else
  {
    sub_1000321E4();
    v12 = *(v4 + 96);
    v13 = *(v4 + 104);
    v14 = sub_10002421C;
  }

  return _swift_task_switch(v14, v12, v13);
}

void sub_10002421C()
{
  v1 = *(*(v0 + 48) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 217) == 3)
  {
    v2 = 2;
  }

  else
  {
    v3 = *(*(v0 + 48) + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    if (*(v0 + 218) > 1u)
    {
      if (*(v0 + 218) != 2)
      {
        sub_10009E250();
        return;
      }

      v2 = 2;
    }

    else if (*(v0 + 218))
    {
      v2 = 3;
    }

    else
    {
      v2 = 1;
    }
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 48);
  v6 = *(v0 + 219);
  [v4 setPermission:v2];
  [v4 setRole:{sub_10002386C(objc_msgSend(v4, "permission"), v6)}];
  v7 = v4;
  sub_10009DE80();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_10009DEB0();
  }

  v8 = *(v0 + 176);
  v9 = *(v0 + 128);
  v10 = *(v0 + 144) + 1;
  sub_10009DEC0();

  v11 = *(v0 + 24);
  if (v10 == v9)
  {
    *(v0 + 192) = v11;
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 72);
    v15 = *(v0 + 48);
    v16 = *(v0 + 220);

    [v13 setAllowsAccessRequests:v16];
    sub_10009D9D0();

    v17 = sub_10009D9E0();
    v18 = sub_10009DFF0();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 48);
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v22 = *(*(v0 + 40) + 16);

      *(v21 + 4) = v22;

      _os_log_impl(&_mh_execute_header, v17, v18, "addParticipantsToShare, adding %ld", v21, 0xCu);
    }

    else
    {
      v31 = *(v0 + 48);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v32 = swift_task_alloc();
    *(v0 + 200) = v32;
    *v32 = v0;
    v32[1] = sub_1000246EC;
    v33 = *(v0 + 48);

    sub_100024988(v11, 1, 1);
  }

  else
  {
    v23 = *(v0 + 144) + 1;
    *(v0 + 136) = v11;
    *(v0 + 144) = v23;
    v24 = *(v0 + 120);
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = v24 + 24 * v23;
      v26 = *(v25 + 32);
      *(v0 + 152) = v26;
      v27 = *(v25 + 40);
      *(v0 + 160) = v27;
      v28 = *(v25 + 48);
      *(v0 + 221) = v28;
      sub_1000321DC();
      v29 = swift_task_alloc();
      *(v0 + 168) = v29;
      *v29 = v0;
      v29[1] = sub_1000240AC;
      v30 = *(v0 + 48);

      sub_100022B3C(v26, v27, v28);
    }
  }
}

uint64_t sub_1000246EC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_100024900;
  }

  else
  {
    v7 = v2[24];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_100024808;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100024808()
{
  v1 = v0[14];
  v2 = v0[11];

  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100024884()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[23];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100024900()
{
  v1 = v0[24];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[26];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100024988(uint64_t a1, char a2, char a3)
{
  *(v4 + 116) = a3;
  *(v4 + 115) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = sub_10009D9F0();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  sub_10009DF10();
  *(v4 + 64) = sub_10009DF00();
  v9 = sub_10009DED0();
  *(v4 + 72) = v9;
  *(v4 + 80) = v8;

  return _swift_task_switch(sub_100024A84, v9, v8);
}

uint64_t sub_100024A84()
{
  v1 = *(*(v0 + 32) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v2 = *(v0 + 16);
  *(v0 + 88) = v2;
  if (!v2)
  {
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);

    sub_100005B1C();
    swift_allocError();
    *v20 = 0xD000000000000034;
    *(v20 + 8) = 0x80000001000A5A70;
    *(v20 + 16) = xmmword_1000A0430;
    *(v20 + 32) = 0x80000001000A59B0;
    *(v20 + 40) = 11;
    swift_willThrow();

    v14 = *(v0 + 8);
LABEL_11:

    return v14();
  }

  if (*(v0 + 115) == 1)
  {
    v3 = *(*(v0 + 32) + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    if (*(v0 + 114) == 1)
    {
      v5 = *(v0 + 56);
      v4 = *(v0 + 64);

      sub_10009D9D0();
      v6 = sub_10009D9E0();
      v7 = sub_10009DFF0();
      v8 = os_log_type_enabled(v6, v7);
      v10 = *(v0 + 48);
      v9 = *(v0 + 56);
      v11 = *(v0 + 40);
      if (v8)
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "addParticipantsToShare, doing nothing as we have a public share", v12, 2u);
      }

      (*(v10 + 8))(v9, v11);
      v13 = *(v0 + 56);

      v14 = *(v0 + 8);
      goto LABEL_11;
    }
  }

  v15 = *(v0 + 32);
  *(v0 + 96) = sub_100094060();
  *(v0 + 104) = v16;
  *(v0 + 112) = v17;

  return _swift_task_switch(sub_100024D54, 0, 0);
}

uint64_t sub_100024D54()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009E260())
  {
    v3 = 0;
    v4 = *(v0 + 104);
    v5 = v1 & 0xC000000000000001;
    v6 = *(v0 + 24) + 32;
    p_weak_ivar_lyt = &OptionsModel.weak_ivar_lyt;
    v20 = *(v0 + 100);
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v9 = *(v0 + 24);
        v10 = sub_10009E1F0();
      }

      else
      {
        if (v3 >= *(v21 + 16))
        {
          goto LABEL_36;
        }

        v10 = *(v6 + 8 * v3);
      }

      v1 = v10;
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (*(v0 + 116) != 1 || [v10 role] == 1)
      {
        goto LABEL_6;
      }

      if (v20 == 3)
      {
        goto LABEL_20;
      }

      if (*(v0 + 100) > 1u)
      {
        if (*(v0 + 100) != 2)
        {
          return sub_10009E250();
        }

LABEL_20:
        v12 = 2;
        goto LABEL_21;
      }

      if (*(v0 + 100))
      {
        v12 = 3;
      }

      else
      {
        v12 = 1;
      }

LABEL_21:
      [v1 p:v12 weak:? ivar:?lyt[202]];
      v13 = *(v4 + 16);
      if (!v13)
      {
        goto LABEL_37;
      }

      if (*(v4 + 32) != 1)
      {
        if (v13 == 1)
        {
          goto LABEL_38;
        }

LABEL_29:
        if (*(v0 + 112))
        {
          v8 = 2;
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if (v13 == 1)
      {
        goto LABEL_39;
      }

      if (v20 != 1 || !*(v4 + 33))
      {
        goto LABEL_29;
      }

      if ([v1 role] == 3 || (v19 = *(v0 + 112), v14 = objc_msgSend(v1, "role"), (v19 & 1) != 0))
      {
        v8 = 2;
        p_weak_ivar_lyt = (&OptionsModel + 56);
        goto LABEL_5;
      }

      v8 = 2;
      p_weak_ivar_lyt = (&OptionsModel + 56);
      if (v14 == 2)
      {
        goto LABEL_5;
      }

LABEL_4:
      v8 = 3;
LABEL_5:
      [v1 setRole:v8];
LABEL_6:
      [*(v0 + 88) addParticipant:v1];

      ++v3;
      if (v11 == i)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_41:
  v16 = *(v0 + 104);

  v17 = *(v0 + 72);
  v18 = *(v0 + 80);

  return _swift_task_switch(sub_10002502C, v17, v18);
}

uint64_t sub_10002502C()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000250A0()
{
  v1[4] = v0;
  v2 = sub_10009D9F0();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = sub_10009D860();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_10009DF10();
  v1[18] = sub_10009DF00();
  v10 = sub_10009DED0();
  v1[19] = v10;
  v1[20] = v9;

  return _swift_task_switch(sub_100025270, v10, v9);
}

uint64_t sub_100025270()
{
  v59 = v0;
  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v0 + 216) & 0xFE) != 8)
  {
    v20 = *(v0 + 144);

    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v24 = *(v0 + 96);
    v23 = *(v0 + 104);
    v26 = *(v0 + 80);
    v25 = *(v0 + 88);
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 56);

    v19 = *(v0 + 8);
    goto LABEL_5;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v6 = *(v3 + 48);
  *(v0 + 168) = v6;
  *(v0 + 176) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);

    sub_100008728(v8, &qword_1000CA250, &qword_10009FDF8);
    sub_100005B1C();
    swift_allocError();
    *v9 = 0xD000000000000016;
    *(v9 + 8) = 0x80000001000A64E0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 16) = 0;
    *(v9 + 40) = 0;
    swift_willThrow();
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);

    v19 = *(v0 + 8);
LABEL_5:

    return v19();
  }

  v31 = *(v0 + 128);
  v32 = *(v0 + 136);
  v33 = *(v0 + 112);
  v34 = *(v0 + 120);
  v35 = *(v0 + 56);
  (*(v34 + 32))(v32, *(v0 + 104), v33);
  sub_10009D9D0();
  (*(v34 + 16))(v31, v32, v33);
  v36 = sub_10009D9E0();
  v37 = sub_10009DFF0();
  v38 = os_log_type_enabled(v36, v37);
  v40 = *(v0 + 120);
  v39 = *(v0 + 128);
  v41 = *(v0 + 112);
  v43 = *(v0 + 48);
  v42 = *(v0 + 56);
  v44 = *(v0 + 40);
  if (v38)
  {
    v57 = *(v0 + 40);
    v45 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v58 = v56;
    *v45 = 136315138;
    sub_1000391A4(&qword_1000CA4A0, &type metadata accessor for URL);
    v46 = sub_10009E2C0();
    v55 = v42;
    v48 = v47;
    v54 = v37;
    v49 = *(v40 + 8);
    v49(v39, v41);
    v50 = sub_1000307A4(v46, v48, &v58);

    *(v45 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v36, v54, "Fetching share for URL: %s", v45, 0xCu);
    sub_10000670C(v56);

    (*(v43 + 8))(v55, v57);
  }

  else
  {

    v49 = *(v40 + 8);
    v49(v39, v41);
    (*(v43 + 8))(v42, v44);
  }

  *(v0 + 184) = v49;
  v51 = swift_task_alloc();
  *(v0 + 192) = v51;
  *v51 = v0;
  v51[1] = sub_10002575C;
  v52 = *(v0 + 136);
  v53 = *(v0 + 88);

  return sub_1000069A4(v53, v52);
}

uint64_t sub_10002575C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v7 = *(v3 + 160);
  v8 = *(v3 + 152);
  if (v1)
  {
    v9 = sub_100025C18;
  }

  else
  {
    v9 = sub_1000258A0;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000258A0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  sub_1000086C0(v6, v5, &qword_1000CA250, &qword_10009FDF8);
  sub_100008658(v5, v7, &qword_1000CA250, &qword_10009FDF8);
  LODWORD(v4) = v2(v7, 1, v4);
  sub_100008728(v7, &qword_1000CA250, &qword_10009FDF8);
  v8 = v0[25];
  if (v4 != 1)
  {
    v9 = [objc_allocWithZone(BRCKShareSubitem) initWithShare:v8];

    v8 = v9;
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[4];
  sub_100008658(v0[12], v10, &qword_1000CA250, &qword_10009FDF8);
  v13 = *(v12 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderURL);
  sub_100008658(v10, v11, &qword_1000CA250, &qword_10009FDF8);

  sub_10003E81C(v11);

  sub_100008728(v10, &qword_1000CA250, &qword_10009FDF8);
  v14 = *(v12 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v0[23];
  v16 = v0[17];
  v17 = v0[14];
  v18 = v0[15];
  v19 = v0[12];
  if (v8)
  {
    v0[3] = v8;

    sub_10009DB00();
    sub_100008728(v19, &qword_1000CA250, &qword_10009FDF8);
    v15(v16, v17);
  }

  else
  {
    v33 = v0[23];
    v21 = v0[8];
    v20 = v0[9];
    v0[2] = 0;
    swift_retain_n();
    sub_10009DB00();
    (*(v18 + 56))(v20, 1, 1, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100008658(v20, v21, &qword_1000CA250, &qword_10009FDF8);

    sub_10009DB00();
    sub_100008728(v20, &qword_1000CA250, &qword_10009FDF8);

    sub_100008728(v19, &qword_1000CA250, &qword_10009FDF8);
    v33(v16, v17);
  }

  v23 = v0[16];
  v22 = v0[17];
  v25 = v0[12];
  v24 = v0[13];
  v27 = v0[10];
  v26 = v0[11];
  v29 = v0[8];
  v28 = v0[9];
  v30 = v0[7];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100025C18()
{
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v5 = v0[15];

  v1(v3, v4);
  v6 = v0[26];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[12];
  v9 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100025D14(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_10009DF10();
  v3[12] = sub_10009DF00();
  v5 = sub_10009DED0();
  v3[13] = v5;
  v3[14] = v4;

  return _swift_task_switch(sub_100025DB0, v5, v4);
}

uint64_t sub_100025DB0()
{
  v1 = type metadata accessor for CloudKitOperations();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[15] = v4;
  v4[2] = 0xD000000000000021;
  v4[3] = 0x80000001000A4980;
  v4[4] = 0xD000000000000016;
  v4[5] = 0x80000001000A49B0;
  v4[6] = 0xD00000000000001DLL;
  v4[7] = 0x80000001000A49D0;
  v0[6] = 0;
  v0[5] = 0;
  sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
  sub_10009DAC0();

  return _swift_task_switch(sub_100025EB8, 0, 0);
}

uint64_t sub_100025EB8()
{
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_task_alloc();
  v0[16] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = sub_100003714(&qword_1000CAD88, &qword_1000A11E0);
  *v6 = v0;
  v6[1] = sub_100025FD0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002DLL, 0x80000001000A4820, sub_10003A828, v4, v7);
}

uint64_t sub_100025FD0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100026340;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1000260EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000260EC()
{
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  return _swift_task_switch(sub_100026114, *(v0 + 104), *(v0 + 112));
}

uint64_t sub_100026114()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *(v2 + 24);
  if (v3)
  {
    v5 = v0[10];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[8] = v5;
    v6 = v5;

    sub_10009DB00();
  }

  else
  {
    v7 = v0[20];

    v8 = v7;
    sub_1000983D8(v7, 0);
  }

  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  v12 = v0[15];
  v13 = v0[11];
  v14 = *(v13 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_ckMetadata);
  *(v13 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_ckMetadata) = v9;
  v15 = v9;

  v16 = *(v13 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[7] = v11;

  v17 = v11;
  sub_10009DB00();
  swift_setDeallocating();
  v18 = *(v12 + 3);

  v19 = *(v12 + 5);

  v20 = *(v12 + 7);

  v21 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v22 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v22 - 8) + 8))(&v12[v21], v22);
  v23 = *(*v12 + 48);
  v24 = *(*v12 + 52);
  swift_deallocClassInstance();

  v25 = v0[1];

  return v25();
}

uint64_t sub_100026340()
{
  v1 = v0[16];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_1000263A4, v2, v3);
}

uint64_t sub_1000263A4()
{
  v1 = v0[15];
  v2 = v0[12];

  swift_setDeallocating();
  v3 = *(v1 + 3);

  v4 = *(v1 + 5);

  v5 = *(v1 + 7);

  v6 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v7 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v7 - 8) + 8))(&v1[v6], v7);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 52);
  swift_deallocClassInstance();
  v10 = v0[1];
  v11 = v0[18];

  return v10();
}

void sub_1000264AC(unsigned __int8 a1, void *a2)
{
  v4 = a1;
  v5 = sub_10009D9F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v56 - v11;
  if (v4 == 6)
  {
    sub_1000194F8();
    v62 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    sub_10004551C(v62);
    swift_unknownObjectRelease();
    v13 = v62;
  }

  else
  {
    v14 = v2;
    if (a2)
    {
      v15 = a2;
      sub_10009D9D0();
      v16 = v15;
      v17 = sub_10009D9E0();
      v18 = sub_10009DFD0();

      if (os_log_type_enabled(v17, v18))
      {
        LODWORD(v58) = v18;
        v60 = v17;
        v62 = v6;
        v19 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v63 = v57;
        v59 = v19;
        *v19 = 136315394;
        v20 = sub_10009DE60();
        v22 = v21;
        if (("(generic fallback)" & 0x2000000000000000) != 0)
        {
          v23 = ("(generic fallback)" >> 40) & 0xF0000;
        }

        else
        {
          v23 = 2031616;
        }

        v61 = v14;
        if (v23)
        {
          v24 = v20;
          while (sub_10009DE60() != v24 || v25 != v22)
          {
            v26 = sub_10009E2E0();

            if (v26)
            {
              goto LABEL_31;
            }

            if ((v23 ^ sub_10009DE00()) < 0x4000)
            {
              goto LABEL_16;
            }
          }

LABEL_31:

          sub_10009DE70();
          v41 = sub_10009DDD0();
          v28 = v42;

          v27 = v41;
        }

        else
        {
LABEL_16:

          v27 = 0;
          v28 = 0xE000000000000000;
        }

        v44 = v59;
        v43 = v60;
        v45 = sub_1000307A4(v27, v28, &v63);

        *(v44 + 1) = v45;
        *(v44 + 6) = 2080;
        v46 = v16;
        v47 = [v46 description];
        v48 = sub_10009DD90();
        v50 = v49;

        v51 = sub_1000307A4(v48, v50, &v63);

        *(v44 + 14) = v51;
        _os_log_impl(&_mh_execute_header, v43, v58, "%s cancelling via extension with error: %s", v44, 0x16u);
        swift_arrayDestroy();

        (*(v62 + 1))(v12, v5);
      }

      else
      {

        (*(v6 + 8))(v12, v5);
      }

      sub_1000194F8();
      sub_10004551C(v16);
    }

    else
    {
      sub_10009D9D0();
      v29 = sub_10009D9E0();
      v30 = sub_10009DFF0();
      if (os_log_type_enabled(v29, v30))
      {
        LODWORD(v59) = v30;
        v62 = v6;
        v31 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v63 = v58;
        v60 = v31;
        LODWORD(v31->isa) = 136315138;
        v32 = sub_10009DE60();
        v34 = v33;
        if (("(generic fallback)" & 0x2000000000000000) != 0)
        {
          v35 = ("(generic fallback)" >> 40) & 0xF0000;
        }

        else
        {
          v35 = 2031616;
        }

        v61 = v14;
        if (v35)
        {
          v36 = v32;
          while (sub_10009DE60() != v36 || v37 != v34)
          {
            v38 = sub_10009E2E0();

            if (v38)
            {
              goto LABEL_35;
            }

            if ((v35 ^ sub_10009DE00()) < 0x4000)
            {
              goto LABEL_27;
            }
          }

LABEL_35:

          sub_10009DE70();
          v52 = sub_10009DDD0();
          v40 = v53;

          v39 = v52;
        }

        else
        {
LABEL_27:

          v39 = 0;
          v40 = 0xE000000000000000;
        }

        v54 = sub_1000307A4(v39, v40, &v63);

        v55 = v60;
        *(&v60->isa + 4) = v54;
        _os_log_impl(&_mh_execute_header, v29, v59, "%s dismissing via extension without error", v55, 0xCu);
        sub_10000670C(v58);

        (*(v62 + 1))(v10, v5);
      }

      else
      {

        (*(v6 + 8))(v10, v5);
      }

      sub_1000194F8();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100026B34(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  v3 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  sub_10009DF10();
  *(v2 + 32) = sub_10009DF00();
  v5 = sub_10009DED0();
  *(v2 + 40) = v5;
  *(v2 + 48) = v4;

  return _swift_task_switch(sub_100026C08, v5, v4);
}

uint64_t sub_100026C08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v3 = sub_10009D860();
  *(v0 + 56) = v3;
  v4 = *(v3 - 8);
  *(v0 + 64) = v4;
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_100026D50;
    v7 = *(v0 + 24);
    v8 = *(v0 + 88);

    return sub_1000140D4(v7, v8);
  }

  return result;
}

uint64_t sub_100026D50()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_100026EE8;
  }

  else
  {
    (*(v2[8] + 8))(v2[3], v2[7]);
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_100026E7C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100026E7C()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100026EE8()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[3];
  v3 = v0[4];

  (*(v2 + 8))(v4, v1);

  v5 = v0[1];
  v6 = v0[10];

  return v5();
}

uint64_t sub_100026F78()
{
  v1[6] = v0;
  v2 = sub_10009D9F0();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  sub_10009DF10();
  v1[12] = sub_10009DF00();
  v7 = sub_10009DED0();
  v1[13] = v7;
  v1[14] = v6;

  return _swift_task_switch(sub_1000270B0, v7, v6);
}

uint64_t sub_1000270B0()
{
  v38 = v0;
  v1 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = 2;

  sub_10009DB00();
  v2 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v3 = *(v0 + 16);
  *(v0 + 120) = v3;
  if (v3)
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if ((*(v0 + 170) & 0xFE) == 8)
    {
      v6 = 0;
    }

    else
    {
      v10 = *(v0 + 48);
      v6 = sub_10000B284();
    }

    *(v0 + 128) = v6;
    v28 = *(v0 + 48);
    v29 = sub_100094060();
    v31 = v30;
    v33 = v32;
    *(v0 + 136) = v30;
    v34 = swift_task_alloc();
    *(v0 + 144) = v34;
    *v34 = v0;
    v34[1] = sub_100027584;
    v35 = *(v0 + 88);

    return sub_1000070A8(v35, v3, v6, v29 & 0x101FFFFFFFFFFLL, v31, v33 & 0x101);
  }

  else
  {
    v7 = *(v0 + 96);

    sub_100005B1C();
    v8 = swift_allocError();
    *v9 = xmmword_1000A0440;
    *(v9 + 16) = xmmword_1000A0450;
    *(v9 + 32) = 0x80000001000A5930;
    *(v9 + 40) = 11;
    swift_willThrow();
    v11 = *(v0 + 72);
    v12 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 169) = 0;

    sub_10009DB00();
    sub_10009D9D0();
    swift_errorRetain();
    v13 = sub_10009D9E0();
    v14 = sub_10009DFD0();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 64);
    v36 = *(v0 + 72);
    v17 = *(v0 + 56);
    if (v15)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v18 = 136315138;
      *(v0 + 24) = v8;
      swift_errorRetain();
      sub_100003714(&qword_1000CB840, &qword_10009FDA0);
      v20 = sub_10009DDA0();
      v22 = sub_1000307A4(v20, v21, &v37);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "saveShare error: %s", v18, 0xCu);
      sub_10000670C(v19);
    }

    (*(v16 + 8))(v36, v17);
    v23 = *(v0 + 80);
    v24 = *(v0 + 88);
    v25 = *(v0 + 72);
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_100027584(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = (*v2)[18];
  v6 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  v7 = v3[17];
  v8 = v3[16];
  sub_100008728(v3[11], &qword_1000CA250, &qword_10009FDF8);

  v9 = v3[14];
  v10 = v3[13];
  if (v1)
  {
    v11 = sub_100027A2C;
  }

  else
  {
    v11 = sub_10002772C;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10002772C()
{
  v34 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);

  v5 = *(v4 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;

  v6 = v1;
  sub_10009DB00();
  sub_10009D9D0();
  v7 = v6;
  v8 = sub_10009D9E0();
  v9 = sub_10009DFF0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 152);
    v32 = *(v0 + 80);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315394;
    *(v0 + 40) = [v10 rootRecordID];
    sub_100003714(&qword_1000CA8D8, &qword_1000A07A0);
    v15 = sub_10009DDA0();
    v17 = sub_1000307A4(v15, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 1026;
    v18 = [v10 allowsAccessRequests];

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "saveShare succeeded, rootRecordID: %s, share allowAccessRequests: %{BOOL,public}d", v13, 0x12u);
    sub_10000670C(v14);

    (*(v11 + 8))(v32, v12);
  }

  else
  {
    v19 = *(v0 + 152);
    v20 = *(v0 + 80);
    v21 = *(v0 + 56);
    v22 = *(v0 + 64);

    (*(v22 + 8))(v20, v21);
  }

  v23 = *(v0 + 48);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  v24 = *(v0 + 152);
  v25 = *(v0 + 120);
  v26 = *(v0 + 80);
  v27 = *(v0 + 88);
  v28 = *(v0 + 72);
  v29 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 171) = 3;

  sub_10009DB00();

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100027A2C()
{
  v25 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = *(v0 + 160);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 169) = 0;

  sub_10009DB00();
  sub_10009D9D0();
  swift_errorRetain();
  v6 = sub_10009D9E0();
  v7 = sub_10009DFD0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 64);
    v23 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v0 + 24) = v3;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v12 = sub_10009DDA0();
    v14 = sub_1000307A4(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "saveShare error: %s", v10, 0xCu);
    sub_10000670C(v11);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 56);

    (*(v16 + 8))(v15, v17);
  }

  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  v20 = *(v0 + 72);
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100027C80()
{
  v1[5] = v0;
  v2 = sub_10009D9F0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_10009DF10();
  v1[13] = sub_10009DF00();
  v7 = sub_10009DED0();
  v1[14] = v7;
  v1[15] = v6;

  return _swift_task_switch(sub_100027DD0, v7, v6);
}

uint64_t sub_100027DD0()
{
  v45 = v0;
  v1 = *(v0 + 40);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 176) = 2;

    sub_10009DB00();
    v4 = *(v3 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v5 = *(v0 + 16);
    *(v0 + 136) = v5;
    if (v5)
    {
      v6 = *(v0 + 96);
      v7 = *(v0 + 40);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if ((*(v0 + 179) & 0xFE) == 8)
      {
        v8 = 0;
      }

      else
      {
        v19 = *(v0 + 40);
        v8 = sub_10000B284();
      }

      *(v0 + 144) = v8;
      v38 = *(v0 + 40);
      v39 = sub_100094060();
      *(v0 + 152) = v40;
      v41 = swift_task_alloc();
      *(v0 + 160) = v41;
      *v41 = v0;
      v41[1] = sub_100028360;
      v42 = *(v0 + 96);

      return sub_100008788(v42, v5, v8, v39 & 0x101FFFFFFFFFFLL);
    }

    v16 = *(v0 + 104);

    sub_100005B1C();
    v17 = swift_allocError();
    *v18 = xmmword_1000A0460;
    *(v18 + 16) = xmmword_1000A0470;
    *(v18 + 32) = 0x80000001000A6730;
    *(v18 + 40) = 11;
    swift_willThrow();
    swift_unknownObjectRelease();
    v20 = *(v0 + 64);
    v21 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 177) = 0;

    sub_10009DB00();
    sub_10009D9D0();
    swift_errorRetain();
    v22 = sub_10009D9E0();
    v23 = sub_10009DFD0();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 56);
    v43 = *(v0 + 64);
    v26 = *(v0 + 48);
    if (v24)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315138;
      *(v0 + 24) = v17;
      swift_errorRetain();
      sub_100003714(&qword_1000CB840, &qword_10009FDA0);
      v29 = sub_10009DDA0();
      v31 = sub_1000307A4(v29, v30, &v44);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "stopSharing error: %s", v27, 0xCu);
      sub_10000670C(v28);
    }

    (*(v25 + 8))(v43, v26);
    v33 = *(v0 + 88);
    v32 = *(v0 + 96);
    v35 = *(v0 + 72);
    v34 = *(v0 + 80);
    v36 = *(v0 + 64);
    swift_willThrow();

    v15 = *(v0 + 8);
  }

  else
  {
    v9 = *(v0 + 104);

    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_100028360()
{
  v2 = *v1;
  v3 = (*v1)[20];
  v4 = *v1;
  (*v1)[21] = v0;

  v5 = v2[19];
  v6 = v2[18];
  sub_100008728(v2[12], &qword_1000CA250, &qword_10009FDF8);

  v7 = v2[15];
  v8 = v2[14];
  if (v0)
  {
    v9 = sub_10002886C;
  }

  else
  {
    v9 = sub_100028500;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100028500()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);

  v6 = *(v5 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 0;
  swift_retain_n();
  sub_10009DB00();
  v7 = sub_10009D860();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008658(v2, v3, &qword_1000CA250, &qword_10009FDF8);

  sub_10009DB00();
  sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 181) = 0;

  sub_10009DB00();
  sub_10009D9D0();

  v8 = sub_10009D9E0();
  v9 = sub_10009DFF0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    *(v11 + 4) = (*(v0 + 182) & 0xFE) != 8;

    _os_log_impl(&_mh_execute_header, v8, v9, "stopSharing succeeded. Is CloudKit Sharing: %{BOOL}d", v11, 8u);
  }

  else
  {
    v12 = *(v0 + 40);
  }

  v13 = *(v0 + 128);
  v14 = *(v0 + 136);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  swift_unknownObjectRelease();

  (*(v17 + 8))(v15, v16);
  v19 = *(v0 + 88);
  v18 = *(v0 + 96);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  v22 = *(v0 + 64);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10002886C()
{
  v28 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);

  swift_unknownObjectRelease();

  v4 = *(v0 + 168);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 177) = 0;

  sub_10009DB00();
  sub_10009D9D0();
  swift_errorRetain();
  v7 = sub_10009D9E0();
  v8 = sub_10009DFD0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 56);
    v26 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    *(v0 + 24) = v4;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v13 = sub_10009DDA0();
    v15 = sub_1000307A4(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "stopSharing error: %s", v11, 0xCu);
    sub_10000670C(v12);

    (*(v9 + 8))(v26, v10);
  }

  else
  {
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 48);

    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);
  v23 = *(v0 + 64);
  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100028ADC(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v3 = sub_100003714(&qword_1000CA420, &unk_1000A0310);
  v2[95] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v5 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v6 = sub_10009D860();
  v2[106] = v6;
  v7 = *(v6 - 8);
  v2[107] = v7;
  v8 = *(v7 + 64) + 15;
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v9 = sub_10009D9F0();
  v2[111] = v9;
  v10 = *(v9 - 8);
  v2[112] = v10;
  v11 = *(v10 + 64) + 15;
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  sub_10009DF10();
  v2[118] = sub_10009DF00();
  v13 = sub_10009DED0();
  v2[119] = v13;
  v2[120] = v12;

  return _swift_task_switch(sub_100028D50, v13, v12);
}

uint64_t sub_100028D50()
{
  v96 = v0;
  v1 = *(v0 + 936);
  sub_10009D9D0();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFB0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 936);
  v6 = *(v0 + 896);
  v7 = *(v0 + 888);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v95 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, &v95);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Start", v8, 0xCu);
    sub_10000670C(v9);
  }

  v10 = *(v6 + 8);
  v10(v5, v7);
  *(v0 + 968) = v10;
  v11 = *(v0 + 752);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v0 + 1012) & 0xFE) != 8)
  {
    v12 = *(v0 + 752);
    v13 = *(v12 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v14 = *(v0 + 696);
    if (v14)
    {
      v15 = [*(v0 + 696) URL];
      if (v15)
      {
        v16 = v15;
        v93 = v14;
        v17 = *(v0 + 944);
        v18 = *(v0 + 928);
        v19 = *(v0 + 880);
        v20 = *(v0 + 872);
        v21 = *(v0 + 856);
        v22 = *(v0 + 848);

        sub_10009D820();

        sub_10009D9D0();
        v90 = *(v21 + 16);
        v90(v20, v19, v22);
        v23 = sub_10009D9E0();
        v24 = sub_10009DFB0();
        v25 = os_log_type_enabled(v23, v24);
        v26 = *(v0 + 928);
        v85 = *(v0 + 896);
        v27 = *(v0 + 888);
        v28 = *(v0 + 872);
        v29 = *(v0 + 856);
        v30 = *(v0 + 848);
        if (v25)
        {
          v83 = v12;
          v31 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          *v31 = 136315394;
          *(v31 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, &v95);
          *(v31 + 12) = 2080;
          v79 = v27;
          v80 = v26;
          v32 = sub_10009D7E0();
          v34 = v33;
          v88 = *(v29 + 8);
          v88(v28, v30);
          v35 = sub_1000307A4(v32, v34, &v95);

          *(v31 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v23, v24, "%s Found CKShare URL, replacing URL with: %s", v31, 0x16u);
          swift_arrayDestroy();

          v12 = v83;

          v37 = v79;
          v36 = v80;
        }

        else
        {

          v88 = *(v29 + 8);
          v88(v28, v30);
          v36 = v26;
          v37 = v27;
        }

        v10(v36, v37);
        v62 = *(v0 + 880);
        v63 = *(v0 + 856);
        v64 = *(v0 + 848);
        v65 = *(v0 + 840);
        v66 = *(v0 + 832);
        v67 = *(v12 + 24);
        v90(v65, v62, v64);
        (*(v63 + 56))(v65, 0, 1, v64);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100008658(v65, v66, &qword_1000CA250, &qword_10009FDF8);

        sub_10009DB00();

        sub_100008728(v65, &qword_1000CA250, &qword_10009FDF8);
        v88(v62, v64);
LABEL_20:
        v68 = *(v0 + 936);
        v69 = *(v0 + 928);
        v70 = *(v0 + 920);
        v71 = *(v0 + 912);
        v72 = *(v0 + 904);
        v73 = *(v0 + 880);
        v74 = *(v0 + 872);
        v75 = *(v0 + 864);
        v76 = *(v0 + 840);
        v81 = *(v0 + 832);
        v82 = *(v0 + 824);
        v84 = *(v0 + 816);
        v86 = *(v0 + 808);
        v87 = *(v0 + 800);
        v89 = *(v0 + 792);
        v91 = *(v0 + 784);
        v92 = *(v0 + 776);
        v94 = *(v0 + 768);
        sub_100029FAC();

        v77 = *(v0 + 8);

        return v77();
      }
    }
  }

  v38 = *(v0 + 856);
  v39 = *(v0 + 848);
  v40 = *(v0 + 824);
  sub_100008658(*(v0 + 744), v40, &qword_1000CA250, &qword_10009FDF8);
  v41 = *(v38 + 48);
  *(v0 + 976) = v41;
  *(v0 + 984) = (v38 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v41(v40, 1, v39) == 1)
  {
    v42 = *(v0 + 944);
    v43 = *(v0 + 904);
    v44 = *(v0 + 824);

    sub_100008728(v44, &qword_1000CA250, &qword_10009FDF8);
    sub_10009D9D0();
    v45 = sub_10009D9E0();
    v46 = sub_10009DFD0();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 904);
    v49 = *(v0 + 896);
    v50 = *(v0 + 888);
    if (v47)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v95 = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, &v95);
      _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s Is not a CKShare nor is there a fileURL. This is a silent failure.", v51, 0xCu);
      sub_10000670C(v52);
    }

    v10(v48, v50);
    goto LABEL_20;
  }

  v53 = *(v0 + 920);
  (*(*(v0 + 856) + 32))(*(v0 + 864), *(v0 + 824), *(v0 + 848));
  sub_10009D9D0();
  v54 = sub_10009D9E0();
  v55 = sub_10009DFB0();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 920);
  v58 = *(v0 + 896);
  v59 = *(v0 + 888);
  if (v56)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v95 = v61;
    *v60 = 136446210;
    *(v60 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, &v95);
    _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s Copying sharing URL...", v60, 0xCu);
    sub_10000670C(v61);
  }

  v10(v57, v59);
  *(v0 + 1008) = *(*(v0 + 760) + 48);

  return _swift_task_switch(sub_100029654, 0, 0);
}

uint64_t sub_100029654()
{
  v1 = v0[108];
  v2 = v0[101];
  v3 = v0[95];
  v4 = swift_task_alloc();
  v0[124] = v4;
  *(v4 + 16) = v1;
  swift_asyncLet_begin();
  v5 = v0[101];

  return _swift_asyncLet_get(v0 + 2, v5, sub_100029708, v0 + 82);
}

uint64_t sub_100029724()
{
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[95];
  sub_100008658(v0[101], v2, &qword_1000CA420, &unk_1000A0310);
  v0[125] = *(v2 + *(v3 + 48));
  sub_1000086C0(v2, v1, &qword_1000CA250, &qword_10009FDF8);
  v4 = v0[101];

  return _swift_asyncLet_finish(v0 + 2, v4, sub_1000297E0, v0 + 88);
}

uint64_t sub_1000297FC()
{
  v1 = v0[124];

  v2 = v0[120];
  v3 = v0[119];

  return _swift_task_switch(sub_100029864, v3, v2);
}

uint64_t sub_100029864()
{
  v93 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 792);
  v3 = *(v0 + 760);
  *(v1 + *(v0 + 1008)) = *(v0 + 1000);
  sub_100008658(v1, v2, &qword_1000CA420, &unk_1000A0310);
  v4 = *(v2 + *(v3 + 48));
  if (!v4)
  {
    v14 = *(v0 + 912);
    v15 = *(v0 + 816);
    v16 = *(v0 + 784);
    sub_100008728(*(v0 + 792), &qword_1000CA250, &qword_10009FDF8);
    sub_10009D9D0();
    sub_100008658(v15, v16, &qword_1000CA420, &unk_1000A0310);
    v17 = sub_10009D9E0();
    v18 = sub_10009DFB0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 984);
      v20 = *(v0 + 976);
      v21 = *(v0 + 848);
      v22 = *(v0 + 784);
      v23 = *(v0 + 776);
      v24 = *(v0 + 760);
      v25 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, v92);
      *(v25 + 12) = 2080;
      sub_100008658(v22, v23, &qword_1000CA420, &unk_1000A0310);

      result = v20(v23, 1, v21);
      if (result == 1)
      {
        goto LABEL_13;
      }

      v83 = *(v0 + 912);
      v87 = *(v0 + 968);
      v77 = *(v0 + 896);
      v80 = *(v0 + 888);
      v27 = *(v0 + 856);
      v28 = *(v0 + 848);
      v29 = *(v0 + 784);
      v30 = *(v0 + 776);
      v31 = sub_10009D7E0();
      v33 = v32;
      sub_100008728(v29, &qword_1000CA420, &unk_1000A0310);
      (*(v27 + 8))(v30, v28);
      v34 = sub_1000307A4(v31, v33, v92);

      *(v25 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s Replacing URL with: %s", v25, 0x16u);
      swift_arrayDestroy();

      v87(v83, v80);
    }

    else
    {
      v35 = *(v0 + 968);
      v36 = *(v0 + 912);
      v37 = *(v0 + 896);
      v38 = *(v0 + 888);
      v39 = *(v0 + 784);

      sub_100008728(v39, &qword_1000CA420, &unk_1000A0310);
      v35(v36, v38);
    }

    v40 = *(v0 + 984);
    v41 = *(v0 + 976);
    v42 = *(v0 + 848);
    v43 = *(v0 + 768);
    v44 = *(v0 + 760);
    v45 = *(*(v0 + 752) + 24);
    sub_100008658(*(v0 + 816), v43, &qword_1000CA420, &unk_1000A0310);
    v46 = *(v43 + *(v44 + 48));

    result = v41(v43, 1, v42);
    if (result != 1)
    {
      v47 = *(v0 + 944);
      v48 = *(v0 + 856);
      v49 = *(v0 + 848);
      v50 = *(v0 + 840);
      v51 = *(v0 + 832);
      v84 = *(v0 + 816);
      v88 = *(v0 + 864);
      v52 = *(v0 + 768);

      (*(v48 + 16))(v50, v52, v49);
      (*(v48 + 56))(v50, 0, 1, v49);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100008658(v50, v51, &qword_1000CA250, &qword_10009FDF8);
      sub_10009DB00();
      sub_100008728(v50, &qword_1000CA250, &qword_10009FDF8);
      sub_100008728(v84, &qword_1000CA420, &unk_1000A0310);
      v53 = *(v48 + 8);
      v53(v88, v49);
      v53(v52, v49);
      v54 = *(v0 + 936);
      v55 = *(v0 + 928);
      v56 = *(v0 + 920);
      v57 = *(v0 + 912);
      v58 = *(v0 + 904);
      v59 = *(v0 + 880);
      v60 = *(v0 + 872);
      v61 = *(v0 + 864);
      v62 = *(v0 + 840);
      v69 = *(v0 + 832);
      v71 = *(v0 + 824);
      v73 = *(v0 + 816);
      v75 = *(v0 + 808);
      v78 = *(v0 + 800);
      v81 = *(v0 + 792);
      v85 = *(v0 + 784);
      v89 = *(v0 + 776);
      v91 = *(v0 + 768);
      sub_100029FAC();

      v13 = *(v0 + 8);
      goto LABEL_9;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v63 = *(v0 + 928);
  v64 = *(v0 + 920);
  v65 = *(v0 + 912);
  v66 = *(v0 + 904);
  v67 = *(v0 + 880);
  v68 = *(v0 + 872);
  v7 = *(v0 + 864);
  v8 = *(v0 + 856);
  v9 = *(v0 + 848);
  v70 = *(v0 + 840);
  v72 = *(v0 + 832);
  v10 = *(v0 + 816);
  v74 = *(v0 + 824);
  v76 = *(v0 + 808);
  v11 = *(v0 + 792);
  v79 = *(v0 + 800);
  v82 = *(v0 + 784);
  v86 = *(v0 + 776);
  v90 = *(v0 + 768);

  sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
  sub_100005B1C();
  swift_allocError();
  *v12 = 0xD00000000000001CLL;
  *(v12 + 8) = 0x80000001000A5910;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v4;
  *(v12 + 40) = 7;
  swift_willThrow();
  sub_100008728(v10, &qword_1000CA420, &unk_1000A0310);
  (*(v8 + 8))(v7, v9);
  sub_100029FAC();

  v13 = *(v0 + 8);
LABEL_9:

  return v13();
}

uint64_t sub_100029FAC()
{
  v0 = sub_10009D9F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D9D0();
  v5 = sub_10009D9E0();
  v6 = sub_10009DFB0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Finish", v7, 0xCu);
    sub_10000670C(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10002A144()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_10003A844(v0 + 40);
  sub_10003A168(*(v0 + 56), *(v0 + 64));
  v4 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isDelegateInitialized;
  v5 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v7 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__executionMode;
  v8 = sub_100003714(&qword_1000CAB00, &qword_1000A0E08);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingType;
  v10 = sub_100003714(&qword_1000CAAF8, &qword_1000A0E00);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingStage;
  v12 = sub_100003714(&qword_1000CAAF0, &qword_1000A0DF8);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__addedAddresses;
  v14 = sub_100003714(&qword_1000CAAE8, &qword_1000A0DF0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__createOrLoadStage;
  v16 = sub_100003714(&qword_1000CAAE0, &qword_1000A0DE8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__addingAddressesStage;
  v18 = sub_100003714(&qword_1000CAAD8, &qword_1000A0DE0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__savingStage;
  v20 = sub_100003714(&qword_1000CAAD0, &qword_1000A0DD8);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__alertNowShowing;
  v22 = sub_100003714(&qword_1000CAAC8, &unk_1000A1870);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v6(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isShowingAlert, v5);
  v6(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isFolderShare, v5);
  v23 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderURL);

  v6(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isFolderSubshare, v5);
  v24 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderTitle);

  v25 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckFolderSubitemName);

  v26 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__folderSharingStage;
  v27 = sub_100003714(&qword_1000CAAC0, &qword_1000A0DD0);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  v28 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__shareSaveStatus;
  v29 = sub_100003714(&qword_1000CAAB8, &qword_1000A0DC8);
  (*(*(v29 - 8) + 8))(v0 + v28, v29);
  v30 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData);
  swift_unknownObjectRelease();
  v31 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingOptionsAllowedFromSPI;
  v32 = sub_100003714(&qword_1000CAAB0, &qword_1000A0DC0);
  (*(*(v32 - 8) + 8))(v0 + v31, v32);
  v33 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__yourNameAndEmail;
  v34 = sub_100003714(&qword_1000CAAA8, &qword_1000A0DB8);
  (*(*(v34 - 8) + 8))(v0 + v33, v34);
  v35 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharedFileOrFolderURL;
  v36 = sub_100003714(&qword_1000CAAA0, &qword_1000A0DB0);
  (*(*(v36 - 8) + 8))(v0 + v35, v36);
  v37 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__itemUTI;
  v38 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  v39 = *(*(v38 - 8) + 8);
  v39(v0 + v37, v38);
  v6(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isShareRoot, v5);
  v40 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnail;
  v41 = sub_100003714(&unk_1000CAA90, &qword_1000A0DA8);
  (*(*(v41 - 8) + 8))(v0 + v40, v41);
  v42 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnailFromCloudKitSPI;
  v43 = sub_100003714(&qword_1000CAA88, &qword_1000A0DA0);
  v44 = *(*(v43 - 8) + 8);
  v44(v0 + v42, v43);
  v44(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnailFromDocumentSPI, v43);
  v45 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__itemTitle;
  v46 = sub_100003714(&qword_1000CAA80, &qword_1000A18C0);
  v47 = *(*(v46 - 8) + 8);
  v47(v0 + v45, v46);
  v39(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sourceAppBundleID, v38);
  v47(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sectionTitleForAuxiliaryToggles, v46);
  v47(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__primaryCheckboxTitle, v46);
  v47(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__secondaryCheckboxTitle, v46);
  v6(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__primaryCheckboxState, v5);
  v6(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__secondaryCheckboxState, v5);
  v48 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckContainerIdentifier;
  v49 = sub_100003714(&qword_1000CAA78, &qword_1000A0D98);
  (*(*(v49 - 8) + 8))(v0 + v48, v49);
  v47(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__helpAnchor, v46);
  v50 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__participantDetails;
  v51 = sub_100003714(&qword_1000CAA70, &qword_1000A0D90);
  (*(*(v51 - 8) + 8))(v0 + v50, v51);
  v52 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_networkMonitor);

  return v0;
}

uint64_t sub_10002A970()
{
  sub_10002A144();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10002A9C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10009DAA0();
  *a1 = result;
  return result;
}

void sub_10002AA18()
{
  v0 = sub_10009DD50();
  v1 = [objc_opt_self() imageNamed:v0];

  if (!v1)
  {
    v1 = [objc_allocWithZone(UIImage) init];
  }

  qword_1000CA490 = v1;
}

uint64_t sub_10002AAAC(char a1)
{
  *(v2 + 168) = v1;
  *(v2 + 106) = a1;
  v3 = *(*(sub_100003714(&qword_1000CA660, &qword_1000A1300) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v4 = type metadata accessor for AlertViewModelButton(0);
  *(v2 + 192) = v4;
  v5 = *(v4 - 8);
  *(v2 + 200) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v7 = sub_10009D9F0();
  *(v2 + 216) = v7;
  v8 = *(v7 - 8);
  *(v2 + 224) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  v10 = *(*(sub_100003714(&qword_1000CA8F0, &qword_1000A09C8) - 8) + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = sub_10009DF10();
  *(v2 + 312) = sub_10009DF00();
  v12 = sub_10009DED0();
  *(v2 + 320) = v12;
  *(v2 + 328) = v11;

  return _swift_task_switch(sub_10002ACD4, v12, v11);
}

uint64_t sub_10002ACD4()
{
  v1 = *(v0 + 168);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v0 + 57) & 1) != 0 || (v2 = *(v0 + 168), swift_getKeyPath(), swift_getKeyPath(), sub_10009DAF0(), , , *(v0 + 58) - 2 > 3))
  {
    v13 = *(v0 + 312);

    v15 = *(v0 + 288);
    v14 = *(v0 + 296);
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);
    v19 = *(v0 + 256);
    v18 = *(v0 + 264);
    v21 = *(v0 + 240);
    v20 = *(v0 + 248);
    v22 = *(v0 + 232);
    v23 = *(v0 + 208);
    v26 = *(v0 + 184);
    v27 = *(v0 + 176);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v4 = *(v0 + 296);
    v3 = *(v0 + 304);
    v5 = *(v0 + 168);
    sub_10009DF20();
    v6 = sub_10009DF40();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);

    v7 = sub_10009DF00();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    v9 = sub_10004CDF4(0, 0, v4, &unk_1000A0A68, v8);
    *(v0 + 336) = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 0;

    sub_10009DB00();
    v10 = async function pointer to Task.value.getter[1];
    v11 = swift_task_alloc();
    *(v0 + 344) = v11;
    v12 = sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    *(v0 + 352) = v12;
    *v11 = v0;
    v11[1] = sub_10002B024;

    return Task.value.getter(v12, v9, &type metadata for () + 8, v12, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10002B024()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = sub_10002B2B8;
  }

  else
  {
    v7 = sub_10002B160;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10002B160()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 168);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 105) = 2;

  sub_10009DB00();

  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  v12 = *(v0 + 232);
  v13 = *(v0 + 208);
  v16 = *(v0 + 184);
  v17 = *(v0 + 176);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10002B2B8()
{
  v268 = v0;
  *(v0 + 144) = *(v0 + 360);
  v1 = *(v0 + 352);
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v253 = *(v0 + 288);
    v2 = *(v0 + 168);
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    *(v0 + 368) = v4;
    *(v0 + 376) = v3;
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    *(v0 + 384) = v5;
    *(v0 + 392) = v6;
    v7 = *(v0 + 48);
    *(v0 + 400) = v7;
    v264 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 60) = 2;

    sub_10009DB00();
    sub_10009D9D0();
    sub_100032380(v4, v3, v5, v6, v7, v264);
    v8 = v3;
    v9 = sub_10009D9E0();
    v10 = sub_10009DFD0();
    v256 = v5;
    v11 = v5;
    v12 = v6;
    v13 = v6;
    v14 = v264;
    sub_1000323E0(v4, v8, v11, v13, v7, v264);
    v245 = v10;
    v15 = os_log_type_enabled(v9, v10);
    v251 = *(v0 + 288);
    v16 = *(v0 + 224);
    v17 = *(v0 + 216);
    v261 = v7;
    if (v15)
    {
      v18 = v8;
      loga = v9;
      v241 = *(v0 + 216);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v267 = v20;
      *v19 = 136315138;
      *(v0 + 64) = v4;
      *(v0 + 72) = v18;
      *(v0 + 80) = v256;
      *(v0 + 88) = v12;
      *(v0 + 96) = v7;
      *(v0 + 104) = v264;
      sub_100032380(v4, v18, v256, v12, v7, v264);
      v21 = sub_10009DDA0();
      v23 = sub_1000307A4(v21, v22, &v267);
      v24 = v12;

      *(v19 + 4) = v23;
      v14 = v264;
      _os_log_impl(&_mh_execute_header, loga, v245, "saveShareAndReportErrors error: %s", v19, 0xCu);
      sub_10000670C(v20);

      v25 = *(v16 + 8);
      result = v25(v251, v241);
    }

    else
    {

      v29 = *(v16 + 8);
      result = v29(v251, v17);
      v25 = v29;
      v24 = v12;
      v18 = v8;
    }

    *(v0 + 408) = v25;
    if (v14 == 4)
    {
      v252 = v25;
      v30 = v256;
      if (!v256)
      {
        __break(1u);
        return result;
      }

      sub_100032380(v4, v18, v256, v24, v261, 4u);
      v31 = v256;
      v32 = v18;
      sub_10009045C(22);
      v34 = v33;

      if (v34)
      {
        v246 = v24;
        v35 = *(v0 + 360);
        v36 = *(v0 + 280);

        sub_10009D9D0();
        v37 = sub_10009D9E0();
        v38 = sub_10009DFD0();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "saveShareAndReportErrors got batchRequestFailed, will retry once", v39, 2u);
        }

        v40 = *(v0 + 280);
        v41 = *(v0 + 216);
        v42 = *(v0 + 224);
        v43 = *(v0 + 106);

        v252(v40, v41);
        if (v43 == 1)
        {
          v44 = swift_task_alloc();
          *(v0 + 416) = v44;
          *v44 = v0;
          v44[1] = sub_10002CA1C;
          v45 = *(v0 + 168);

          return sub_10002AAAC(0);
        }

        v128 = *(v0 + 312);

        v24 = v246;
        v30 = v256;
        v49 = v32;
        LOBYTE(v14) = v264;
        goto LABEL_16;
      }

      v63 = v31;
      sub_10009045C(14);
      v65 = v64;

      if (v65)
      {
        v247 = v24;
        v66 = *(v0 + 272);
        sub_10009D9D0();
        v67 = sub_10009D9E0();
        v68 = sub_10009DFD0();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&_mh_execute_header, v67, v68, "saveShareAndReportErrors got oplock error, will update share and show alert", v69, 2u);
        }

        v70 = *(v0 + 360);
        v71 = *(v0 + 312);
        v72 = *(v0 + 272);
        v73 = *(v0 + 216);
        v74 = *(v0 + 224);
        v242 = v0;

        v252(v72, v73);
        v75 = v63;

        v76 = [v75 userInfo];
        log = v75;

        v77 = sub_10009DD00();
        v78 = sub_10009DD90();
        if (*(v77 + 16))
        {
          v80 = sub_100030DD4(v78, v79);
          v82 = v81;

          v83 = v32;
          if (v82)
          {
            sub_1000066A8(*(v77 + 56) + 32 * v80, v0 + 112);

            sub_1000037C4(0, &qword_1000CA900, CKShare_ptr);
            if (swift_dynamicCast())
            {
              v84 = *(v0 + 264);
              sub_1000323E0(v4, v32, v256, v247, v261, 4u);
              v85 = *(v0 + 152);
              sub_10009D9D0();
              v86 = v85;
              v87 = sub_10009D9E0();
              v88 = sub_10009DFC0();

              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                v90 = swift_slowAlloc();
                *v89 = 138412290;
                *(v89 + 4) = v86;
                *v90 = v86;
                v91 = v86;
                _os_log_impl(&_mh_execute_header, v87, v88, "saveShareAndReportErrors oplock error server's updated share: %@", v89, 0xCu);
                sub_100008728(v90, &qword_1000CA8E0, &qword_10009FE08);
              }

              v258 = *(v242 + 336);
              v92 = *(v242 + 200);
              v93 = *(v242 + 208);
              v94 = *(v242 + 192);
              v235 = v92;
              v236 = *(v242 + 184);
              v95 = *(v242 + 168);
              v248 = *(v242 + 176);
              v96 = *(v242 + 224) + 8;
              v252(*(v242 + 264), *(v242 + 216));
              v97 = *(v95 + 24);
              swift_getKeyPath();
              swift_getKeyPath();
              *(v242 + 160) = v86;
              v255 = v86;

              sub_10009DB00();
              sub_10009DC60();
              LOWORD(v232._object) = 256;
              v98 = sub_10009DC80();
              v100 = v99;
              v102 = v101;
              v104 = v103;
              v105 = v94[6];
              v106 = sub_10009DC10();
              (*(*(v106 - 8) + 56))(v93 + v105, 1, 1, v106);
              v107 = swift_allocObject();
              swift_weakInit();
              sub_10009D890();
              v108 = v93 + v94[5];
              *v108 = v98;
              *(v108 + 8) = v100;
              *(v108 + 16) = v102 & 1;
              *(v108 + 24) = v104;
              v109 = (v93 + v94[7]);
              *v109 = sub_100039044;
              v109[1] = v107;
              v110 = objc_opt_self();
              v111 = [v110 mainBundle];
              v232._countAndFlagsBits = 0x80000001000A5CC0;
              v270._countAndFlagsBits = 0x1000000000000019;
              v270._object = 0x80000001000A5CA0;
              v275.value._countAndFlagsBits = 0;
              v275.value._object = 0;
              v112.super.isa = v111;
              v280._countAndFlagsBits = 0;
              v280._object = 0xE000000000000000;
              v113 = sub_10009D680(v270, v275, v112, v280, v232);
              v115 = v114;

              v116 = v93;
              v117 = [v110 mainBundle];
              v233._countAndFlagsBits = 0x80000001000A5D10;
              v271._object = 0x80000001000A5CF0;
              v271._countAndFlagsBits = 0xD000000000000011;
              v276.value._countAndFlagsBits = 0;
              v276.value._object = 0;
              v118.super.isa = v117;
              v281._countAndFlagsBits = 0;
              v281._object = 0xE000000000000000;
              v119 = sub_10009D680(v271, v276, v118, v281, v233);
              v121 = v120;

              sub_100003714(&qword_1000CA8F8, &qword_1000A0A70);
              v122 = *(v235 + 72);
              v123 = (*(v235 + 80) + 32) & ~*(v235 + 80);
              v124 = swift_allocObject();
              *(v124 + 16) = xmmword_10009FCE0;
              sub_10003246C(v116, v124 + v123);
              sub_10009D890();
              v125 = type metadata accessor for AlertViewModel(0);
              v126 = (v236 + v125[5]);
              *v126 = v113;
              v126[1] = v115;
              v127 = (v236 + v125[6]);
              *v127 = v119;
              v127[1] = v121;
              *(v236 + v125[7]) = v124;
              (*(*(v125 - 1) + 56))(v236, 0, 1, v125);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_100008658(v236, v248, &qword_1000CA660, &qword_1000A1300);

              sub_10009DB00();
              sub_100008728(v236, &qword_1000CA660, &qword_1000A1300);
              swift_getKeyPath();
              swift_getKeyPath();
              *(v242 + 63) = 1;

              sub_10009DB00();

              v0 = v242;
              goto LABEL_40;
            }
          }

          else
          {
          }
        }

        else
        {

          v83 = v32;
        }

        v223 = *(v0 + 256);
        sub_10009D9D0();
        v224 = sub_10009D9E0();
        v225 = sub_10009DFC0();
        if (os_log_type_enabled(v224, v225))
        {
          v226 = swift_slowAlloc();
          *v226 = 0;
          _os_log_impl(&_mh_execute_header, v224, v225, "saveShareAndReportErrors userInfo has no CKRecordChangedErrorServerRecordKey, so rethrow oplock", v226, 2u);
        }

        v227 = *(v0 + 336);
        v228 = *(v0 + 256);
        v230 = *(v0 + 216);
        v229 = *(v0 + 224);

        v252(v228, v230);
        sub_100005B1C();
        swift_allocError();
        *v231 = v4;
        *(v231 + 8) = v83;
        *(v231 + 16) = v256;
        *(v231 + 24) = v247;
        *(v231 + 32) = v261;
        *(v231 + 40) = 4;
        swift_willThrow();
        sub_100032380(v4, v83, v256, v247, v261, 4u);

        v0 = v242;

        sub_1000323E0(v4, v83, v256, v247, v261, 4u);
        goto LABEL_17;
      }

      v129 = *(v0 + 360);
      v130 = *(v0 + 312);

      v131 = v63;
      sub_1000906D4(2011);
      LOBYTE(v129) = v132;

      if (v129)
      {
        v255 = v131;
        v133 = *(v0 + 248);
        sub_1000323E0(v4, v32, v256, v24, v261, 4u);
        sub_10009D9D0();
        v134 = sub_10009D9E0();
        v135 = sub_10009DFC0();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          *v136 = 0;
          _os_log_impl(&_mh_execute_header, v134, v135, "saveShareAndReportErrors got rejected login error", v136, 2u);
        }

        v259 = *(v0 + 336);
        v137 = *(v0 + 248);
        v139 = *(v0 + 216);
        v138 = *(v0 + 224);
        v140 = *(v0 + 208);
        v142 = *(v0 + 184);
        v141 = *(v0 + 192);
        v143 = *(v0 + 168);
        v243 = *(v0 + 200);
        v249 = *(v0 + 176);

        v252(v137, v139);
        sub_10009DC60();
        LOWORD(v232._object) = 256;
        v144 = sub_10009DC80();
        v146 = v145;
        LOBYTE(v139) = v147;
        v149 = v148;
        v150 = v141[6];
        v151 = sub_10009DC10();
        (*(*(v151 - 8) + 56))(v140 + v150, 1, 1, v151);
        v152 = swift_allocObject();
        swift_weakInit();
        sub_10009D890();
        v153 = v140 + v141[5];
        *v153 = v144;
        *(v153 + 8) = v146;
        *(v153 + 16) = v139 & 1;
        *(v153 + 24) = v149;
        v154 = (v140 + v141[7]);
        *v154 = sub_100032584;
        v154[1] = v152;
        v155 = [objc_opt_self() mainBundle];
        v232._countAndFlagsBits = 0x80000001000A5C50;
        v272._countAndFlagsBits = 0x6E67695320746F4ELL;
        v272._object = 0xED00006E49206465;
        v277.value._countAndFlagsBits = 0;
        v277.value._object = 0;
        v156.super.isa = v155;
        v282._countAndFlagsBits = 0;
        v282._object = 0xE000000000000000;
        v157 = sub_10009D680(v272, v277, v156, v282, v232);
        v159 = v158;

        v160 = sub_100038978();
        v161 = sub_100018F60(v160);
        v163 = v162;

        sub_100003714(&qword_1000CA8F8, &qword_1000A0A70);
        v164 = *(v243 + 72);
        v165 = (*(v243 + 80) + 32) & ~*(v243 + 80);
        v166 = swift_allocObject();
        *(v166 + 16) = xmmword_10009FCE0;
        v167 = v166 + v165;
        v116 = v140;
        sub_10003246C(v140, v167);
        sub_10009D890();
        v168 = type metadata accessor for AlertViewModel(0);
        v169 = (v142 + v168[5]);
        *v169 = v157;
        v169[1] = v159;
        v170 = (v142 + v168[6]);
        *v170 = v161;
        v170[1] = v163;
        *(v142 + v168[7]) = v166;
        (*(*(v168 - 1) + 56))(v142, 0, 1, v168);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100008658(v142, v249, &qword_1000CA660, &qword_1000A1300);

        sub_10009DB00();
        sub_100008728(v142, &qword_1000CA660, &qword_1000A1300);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 62) = 1;

LABEL_39:
        sub_10009DB00();

LABEL_40:

        sub_100032528(v116);
        v212 = *(v0 + 144);

        v214 = *(v0 + 288);
        v213 = *(v0 + 296);
        v216 = *(v0 + 272);
        v215 = *(v0 + 280);
        v218 = *(v0 + 256);
        v217 = *(v0 + 264);
        v220 = *(v0 + 240);
        v219 = *(v0 + 248);
        v221 = *(v0 + 232);
        v222 = *(v0 + 208);
        v263 = *(v0 + 184);
        v266 = *(v0 + 176);

        v62 = *(v0 + 8);
        goto LABEL_18;
      }

      v171 = v131;
      sub_1000906D4(2045);
      v173 = v172;

      if (v173)
      {
        v255 = v171;
        v174 = *(v0 + 240);
        sub_1000323E0(v4, v32, v256, v24, v261, 4u);
        sub_10009D9D0();
        v175 = sub_10009D9E0();
        v176 = sub_10009DFC0();
        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          *v177 = 0;
          _os_log_impl(&_mh_execute_header, v175, v176, "saveShareAndReportErrors got too many participants error", v177, 2u);
        }

        v260 = *(v0 + 336);
        v178 = *(v0 + 240);
        v180 = *(v0 + 216);
        v179 = *(v0 + 224);
        v181 = *(v0 + 208);
        v182 = *(v0 + 192);
        logb = *(v0 + 200);
        v244 = *(v0 + 184);
        v250 = *(v0 + 176);
        v237 = *(v0 + 168);

        v252(v178, v180);
        sub_10009DC60();
        LOWORD(v232._object) = 256;
        v183 = sub_10009DC80();
        v185 = v184;
        LOBYTE(v180) = v186;
        v188 = v187;
        v189 = v182[6];
        v190 = sub_10009DC10();
        (*(*(v190 - 8) + 56))(v181 + v189, 1, 1, v190);
        v191 = swift_allocObject();
        swift_weakInit();
        sub_10009D890();
        v192 = v181 + v182[5];
        *v192 = v183;
        *(v192 + 8) = v185;
        *(v192 + 16) = v180 & 1;
        *(v192 + 24) = v188;
        v193 = (v181 + v182[7]);
        *v193 = sub_10003A8A8;
        v193[1] = v191;
        v194 = objc_opt_self();
        v195 = [v194 mainBundle];
        v232._countAndFlagsBits = 0x80000001000A5B20;
        v273._object = 0x80000001000A5B00;
        v273._countAndFlagsBits = 0x1000000000000017;
        v278.value._countAndFlagsBits = 0;
        v278.value._object = 0;
        v196.super.isa = v195;
        v283._countAndFlagsBits = 0;
        v283._object = 0xE000000000000000;
        v197 = sub_10009D680(v273, v278, v196, v283, v232);
        v199 = v198;

        v200 = [v194 mainBundle];
        v234._countAndFlagsBits = 0x80000001000A5BE0;
        v274._countAndFlagsBits = 0xD000000000000041;
        v274._object = 0x80000001000A5B90;
        v279.value._countAndFlagsBits = 0;
        v279.value._object = 0;
        v201.super.isa = v200;
        v284._countAndFlagsBits = 0;
        v284._object = 0xE000000000000000;
        v202 = sub_10009D680(v274, v279, v201, v284, v234);
        v204 = v203;

        sub_100003714(&qword_1000CA8F8, &qword_1000A0A70);
        isa = logb[9].isa;
        v206 = (LOBYTE(logb[10].isa) + 32) & ~LOBYTE(logb[10].isa);
        v207 = swift_allocObject();
        *(v207 + 16) = xmmword_10009FCE0;
        v208 = v207 + v206;
        v116 = v181;
        sub_10003246C(v181, v208);
        sub_10009D890();
        v209 = type metadata accessor for AlertViewModel(0);
        v210 = (v244 + v209[5]);
        *v210 = v197;
        v210[1] = v199;
        v211 = (v244 + v209[6]);
        *v211 = v202;
        v211[1] = v204;
        *(v244 + v209[7]) = v207;
        (*(*(v209 - 1) + 56))(v244, 0, 1, v209);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100008658(v244, v250, &qword_1000CA660, &qword_1000A1300);

        sub_10009DB00();
        sub_100008728(v244, &qword_1000CA660, &qword_1000A1300);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 61) = 1;

        goto LABEL_39;
      }

      v49 = v32;
    }

    else
    {
      v46 = v18;
      v47 = *(v0 + 360);
      v48 = *(v0 + 312);

      v49 = v46;

      v30 = v256;
    }

LABEL_16:
    v50 = *(v0 + 336);
    sub_100005B1C();
    swift_allocError();
    *v51 = v4;
    *(v51 + 8) = v49;
    *(v51 + 16) = v30;
    *(v51 + 24) = v24;
    *(v51 + 32) = v261;
    *(v51 + 40) = v14;
    swift_willThrow();

    goto LABEL_17;
  }

  v27 = *(v0 + 336);
  v28 = *(v0 + 312);

  v265 = *(v0 + 360);
LABEL_17:
  v53 = *(v0 + 288);
  v52 = *(v0 + 296);
  v55 = *(v0 + 272);
  v54 = *(v0 + 280);
  v57 = *(v0 + 256);
  v56 = *(v0 + 264);
  v59 = *(v0 + 240);
  v58 = *(v0 + 248);
  v60 = *(v0 + 232);
  v254 = *(v0 + 208);
  v257 = *(v0 + 184);
  v262 = *(v0 + 176);
  v61 = *(v0 + 144);

  v62 = *(v0 + 8);
LABEL_18:

  return v62();
}

uint64_t sub_10002CA1C()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = sub_10002CCA8;
  }

  else
  {
    v7 = sub_10002CB58;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10002CB58()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  v6 = v0[42];
  v7 = v0[39];

  sub_1000323E0(v5, v4, v3, v1, v2, 4u);
  v8 = v0[18];

  v10 = v0[36];
  v9 = v0[37];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[29];
  v18 = v0[26];
  v21 = v0[23];
  v22 = v0[22];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10002CCA8()
{
  v1 = v0[39];
  v2 = v0[29];

  sub_10009D9D0();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFD0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "saveShareAndReportErrors retry failed, so rethrow batchRequestFailed", v5, 2u);
  }

  v6 = v0[53];
  v7 = v0[50];
  v8 = v0[51];
  v9 = v0[48];
  v10 = v0[47];
  v30 = v0[46];
  v32 = v0[49];
  v11 = v0[42];
  v12 = v3;
  v13 = v0[28];
  v14 = v0[29];
  v15 = v0[27];

  v8(v14, v15);
  swift_willThrow();

  sub_1000323E0(v30, v10, v9, v32, v7, 4u);
  v17 = v0[36];
  v16 = v0[37];
  v19 = v0[34];
  v18 = v0[35];
  v21 = v0[32];
  v20 = v0[33];
  v23 = v0[30];
  v22 = v0[31];
  v24 = v0[29];
  v28 = v0[26];
  v29 = v0[23];
  v31 = v0[22];
  v33 = v0[53];
  v25 = v0[18];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10002CEA8()
{
  v1 = sub_10009D9F0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = sub_10009DF10();
  v0[6] = sub_10009DF00();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10002CFB0;

  return sub_100026F78();
}

uint64_t sub_10002CFB0()
{
  v2 = v0;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 64) = v2;

  v7 = sub_10009DED0();
  if (v2)
  {
    v8 = sub_10002D218;
  }

  else
  {
    v8 = sub_10002D10C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10002D10C()
{
  v1 = v0[6];
  v2 = v0[4];

  sub_10009D9D0();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "saveShareAndReportErrors successfully completed saveShare()", v5, 2u);
  }

  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10002D218()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_10002D288()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DB00();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000264AC(6u, 0);
  }

  return result;
}

uint64_t sub_10002D348()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10009DB00();
  }

  return result;
}

uint64_t sub_10002D3C8()
{
  v1 = (*(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderURL) + *(**(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderURL) + 104));
  v2 = *v1;
  v3 = v1[1];
  *v1 = sub_100039088;
  v1[1] = v0;

  sub_1000186F4(v2);

  v4 = (*(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderTitle) + *(**(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderTitle) + 104));
  v5 = *v4;
  v6 = v4[1];
  *v4 = sub_10003908C;
  v4[1] = v0;

  sub_1000186F4(v5);

  v7 = (*(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckFolderSubitemName) + *(**(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckFolderSubitemName) + 104));
  v8 = *v7;
  v9 = v7[1];
  *v7 = sub_100039090;
  v7[1] = v0;

  sub_1000186F4(v8);
}

uint64_t sub_10002D518()
{
  v1[20] = v0;
  v2 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v3 = sub_10009D860();
  v1[22] = v3;
  v4 = *(v3 - 8);
  v1[23] = v4;
  v5 = *(v4 + 64) + 15;
  v1[24] = swift_task_alloc();
  sub_10009DF10();
  v1[25] = sub_10009DF00();
  v7 = sub_10009DED0();
  v1[26] = v7;
  v1[27] = v6;

  return _swift_task_switch(sub_10002D644, v7, v6);
}

uint64_t sub_10002D644()
{
  v1 = *(v0 + 160);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if (*(v0 + 96) || *(v0 + 104) != 0xE000000000000000)
  {
    v4 = *(v0 + 104);
    v5 = sub_10009E2E0();

    if ((v5 & 1) == 0)
    {
      v16 = *(v0 + 200);

      goto LABEL_15;
    }
  }

  else
  {
  }

  if (v2 || v3 != 0xE000000000000000)
  {
    v6 = sub_10009E2E0();

    if ((v6 & 1) == 0)
    {
      v17 = *(v0 + 200);

      goto LABEL_15;
    }
  }

  else
  {
  }

  v7 = *(v0 + 160);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v0 + 384) & 0xFE) == 8)
  {
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if ((*(v9 + 48))(v10, 1, v8) == 1)
    {
      v12 = *(v0 + 200);
      v13 = *(v0 + 168);

      sub_100008728(v13, &qword_1000CA250, &qword_10009FDF8);
LABEL_15:
      v18 = *(v0 + 192);
      v19 = *(v0 + 168);

      v20 = *(v0 + 8);

      return v20();
    }

    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    v22 = swift_task_alloc();
    *(v0 + 280) = v22;
    *v22 = v0;
    v22[1] = sub_10002DDD8;
    v23 = *(v0 + 192);

    return sub_100013164(v0 + 16, v23);
  }

  else
  {
    v14 = *(v0 + 160);
    v15 = sub_10000B284();
    *(v0 + 224) = v15;
    v24 = v15;
    v25 = swift_task_alloc();
    *(v0 + 232) = v25;
    *v25 = v0;
    v25[1] = sub_10002DA60;

    return sub_100006030(v24);
  }
}

uint64_t sub_10002DA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 232);
  v12 = *v5;
  *(*v5 + 240) = v4;

  if (v4)
  {
    v13 = *(v10 + 208);
    v14 = *(v10 + 216);
    v15 = sub_10002DD34;
  }

  else
  {

    *(v10 + 248) = a4;
    *(v10 + 256) = a3;
    *(v10 + 264) = a2;
    *(v10 + 272) = a1;
    v13 = *(v10 + 208);
    v14 = *(v10 + 216);
    v15 = sub_10002DBB0;
  }

  return _swift_task_switch(v15, v13, v14);
}

uint64_t sub_10002DBB0()
{
  v1 = v0[25];

  v2 = v0[33];
  v3 = v0[31];
  if (v2)
  {
    if (v3)
    {
      v4 = v0[34];
      v5 = v0[32];
      v6 = v0[20];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[16] = v4;
      v0[17] = v2;
      v0[18] = v5;
      v0[19] = v3;

      sub_10009DB00();
      v7 = v0[24];
      v8 = v0[21];

      v9 = v0[1];
      goto LABEL_7;
    }

    v11 = v0[33];
  }

  else
  {
    v10 = v0[31];
  }

  sub_100005B1C();
  swift_allocError();
  *v12 = 0xD000000000000016;
  *(v12 + 8) = 0x80000001000A6710;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = 0;
  *(v12 + 40) = 6;
  swift_willThrow();
  v13 = v0[24];
  v14 = v0[21];

  v9 = v0[1];
LABEL_7:

  return v9();
}

uint64_t sub_10002DD34()
{
  *(v0 + 328) = *(v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_10002E148;

  return sub_1000138E8(v0 + 56);
}

uint64_t sub_10002DDD8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 280);
  v8 = *v0;
  v4 = *(*v0 + 32);
  *(v2 + 18) = *(v2 + 1);
  *(v2 + 19) = v4;
  v2[40] = v1[6];

  v5 = v1[27];
  v6 = v1[26];

  return _swift_task_switch(sub_10002DF14, v6, v5);
}

uint64_t sub_10002DF14()
{
  v1 = v0[40];
  v2 = v0[25];

  if (v1)
  {
    v3 = v0[39];
    v4 = v0[40];
    v5 = v0[37];
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[22];
    sub_100005B1C();
    swift_allocError();
    *v9 = 0xD000000000000016;
    *(v9 + 8) = 0x80000001000A6710;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 16) = v4;
    *(v9 + 40) = 6;
    swift_willThrow();

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    v10 = v0[39];
    v11 = v0[37];
    if (v11)
    {
      if (v10)
      {
        v12 = v0[38];
        v13 = v0[36];
        v14 = v0[20];
        swift_getKeyPath();
        swift_getKeyPath();
        v0[16] = v13;
        v0[17] = v11;
        v0[18] = v12;
        v0[19] = v10;

        sub_10009DB00();
        v15 = v0[24];
        v16 = v0[21];

        v17 = v0[1];
        goto LABEL_10;
      }

      v19 = v0[37];
    }

    else
    {
      v18 = v0[39];
    }

    sub_100005B1C();
    swift_allocError();
    *v20 = 0xD000000000000016;
    *(v20 + 8) = 0x80000001000A6710;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    *(v20 + 16) = 0;
    *(v20 + 40) = 6;
    swift_willThrow();
  }

  v21 = v0[24];
  v22 = v0[21];

  v17 = v0[1];
LABEL_10:

  return v17();
}

uint64_t sub_10002E148()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 336);
  v7 = *v0;
  *(v2 + 43) = *(v2 + 7);
  *(v2 + 45) = *(v2 + 9);
  v2[47] = v1[11];

  v4 = v1[27];
  v5 = v1[26];

  return _swift_task_switch(sub_10002E294, v5, v4);
}

uint64_t sub_10002E294()
{
  v1 = v0[47];
  v2 = v0[25];

  if (v1)
  {
    v3 = v0[46];
    v4 = v0[47];
    v5 = v0[44];
    v6 = v0[41];
    sub_100005B1C();
    swift_allocError();
    *v7 = 0xD000000000000016;
    *(v7 + 8) = 0x80000001000A6710;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 16) = v4;
    *(v7 + 40) = 6;
    swift_willThrow();
  }

  else
  {
    v8 = v0[41];

    v9 = v0[46];
    v10 = v0[44];
    if (v10)
    {
      if (v9)
      {
        v11 = v0[45];
        v12 = v0[43];
        v13 = v0[20];
        swift_getKeyPath();
        swift_getKeyPath();
        v0[16] = v12;
        v0[17] = v10;
        v0[18] = v11;
        v0[19] = v9;

        sub_10009DB00();
        v14 = v0[24];
        v15 = v0[21];

        v16 = v0[1];
        goto LABEL_10;
      }

      v18 = v0[44];
    }

    else
    {
      v17 = v0[46];
    }

    sub_100005B1C();
    swift_allocError();
    *v19 = 0xD000000000000016;
    *(v19 + 8) = 0x80000001000A6710;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = 0;
    *(v19 + 40) = 6;
    swift_willThrow();
  }

  v20 = v0[24];
  v21 = v0[21];

  v16 = v0[1];
LABEL_10:

  return v16();
}

uint64_t sub_10002E4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  sub_10009DF10();
  v4[11] = sub_10009DF00();
  v7 = sub_10009DED0();
  v4[12] = v7;
  v4[13] = v6;

  return _swift_task_switch(sub_10002E574, v7, v6);
}

uint64_t sub_10002E574()
{
  v1 = v0[9];
  v2 = v0[10];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10002E658;
  v5 = v0[9];
  v4 = v0[10];

  return sub_100028ADC(v4);
}

uint64_t sub_10002E658()
{
  v2 = *v1;
  v3 = (*v1)[14];
  v4 = *v1;
  (*v1)[15] = v0;

  sub_100008728(v2[10], &qword_1000CA250, &qword_10009FDF8);
  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {
    v7 = sub_10002E9EC;
  }

  else
  {
    v7 = sub_10002E7BC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10002E7BC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  if (!*(v2 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData) || (v3 = *(v0 + 120), v4 = *(v0 + 72), swift_unknownObjectRetain(), sub_10003A228(), swift_unknownObjectRelease(), !v3))
  {
    v15 = *(v0 + 72);
    sub_1000264AC(5u, 0);
LABEL_11:
    v22 = *(v0 + 80);

    v18 = *(v0 + 8);
    goto LABEL_12;
  }

  *(v0 + 64) = v3;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {

    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    if (v11 == 7)
    {
      if (!v9)
      {
        __break(1u);
        return result;
      }

      v12 = *(v0 + 72);
      v13 = *(v0 + 48);

      v14 = v9;

      sub_1000264AC(1u, v9);
      sub_1000323E0(v7, v6, v9, v8, v10, 7u);
    }

    else
    {
      v19 = *(v0 + 72);
      v20 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_1000264AC(2u, v20);
      sub_1000323E0(v7, v6, v9, v8, v10, v11);
    }

    v21 = *(v0 + 64);

    goto LABEL_11;
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 64);

  v18 = *(v0 + 8);
LABEL_12:

  return v18();
}

uint64_t sub_10002E9EC()
{
  v1 = *(v0 + 88);

  *(v0 + 64) = *(v0 + 120);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    if (v8 == 7)
    {
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v9 = *(v0 + 72);
      v10 = *(v0 + 48);

      v11 = v6;

      sub_1000264AC(1u, v6);
      sub_1000323E0(v4, v3, v6, v5, v7, 7u);
    }

    else
    {
      v15 = *(v0 + 72);
      v16 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_1000264AC(2u, v16);
      sub_1000323E0(v4, v3, v6, v5, v7, v8);
    }

    v17 = *(v0 + 64);

    v18 = *(v0 + 80);

    v14 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_10002EBD4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 57) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  v4 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v5 = sub_10009D9F0();
  *(v3 + 96) = v5;
  v6 = *(v5 - 8);
  *(v3 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  sub_10009DF10();
  *(v3 + 152) = sub_10009DF00();
  v9 = sub_10009DED0();
  *(v3 + 160) = v9;
  *(v3 + 168) = v8;

  return _swift_task_switch(sub_10002ED34, v9, v8);
}

void sub_10002ED34()
{
  v2 = v0[9];
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v0[22] = BRCloudDocsErrorDomain;
    v0[23] = v2;
    v3 = swift_task_alloc();
    v0[24] = v3;
    *v3 = v0;
    v3[1] = sub_10002EDE4;
    v4 = v0[10];

    sub_1000250A0();
  }
}

uint64_t sub_10002EDE4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_10002F074;
  }

  else
  {
    v7 = sub_10002EF20;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10002EF20()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_10009D9D0();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "fetchShare completed with this many retries left: %ld", v6, 0xCu);
  }

  v7 = v0[18];
  v8 = v0[12];
  v9 = v0[13];

  (*(v9 + 8))(v7, v8);
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];
  v15 = v0[11];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10002F074()
{
  *(v0 + 64) = *(v0 + 200);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  v1 = swift_dynamicCast();
  if (v1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    *(v0 + 208) = v3;
    *(v0 + 216) = v2;
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    *(v0 + 224) = v4;
    *(v0 + 232) = v5;
    v6 = *(v0 + 48);
    *(v0 + 240) = v6;
    v7 = *(v0 + 56);
    v88 = v5;
    if (v7 != 5)
    {
      v20 = *(v0 + 200);
      v21 = *(v0 + 152);
      v22 = *(v0 + 112);

      sub_10009D9D0();
      v23 = sub_10009D9E0();
      v24 = sub_10009DFD0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 184);
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v23, v24, "tryToFetchShare error: throwing unexpected error--retries that were left: %ld", v26, 0xCu);
      }

      v28 = *(v0 + 104);
      v27 = *(v0 + 112);
      v29 = *(v0 + 96);

      (*(v28 + 8))(v27, v29);
      sub_100005B1C();
      swift_allocError();
      *v30 = 0xD00000000000003ELL;
      *(v30 + 8) = 0x80000001000A6760;
      *(v30 + 16) = xmmword_1000A0480;
      *(v30 + 32) = 0x80000001000A67A0;
      *(v30 + 40) = 11;
      swift_willThrow();
      v31 = v3;
      v32 = v2;
      v33 = v4;
      v34 = v88;
      v35 = v6;
      v36 = v7;
      goto LABEL_21;
    }

    v87 = v3;
    if (v4)
    {
      v8 = *(v0 + 200);
      v9 = *(v0 + 176);

      v10 = v4;

      v11 = v10;
      v12 = [v11 domain];
      v13 = sub_10009DD90();
      v15 = v14;

      if (v13 == sub_10009DD90() && v15 == v16)
      {

        v17 = v87;
      }

      else
      {
        v37 = sub_10009E2E0();

        v17 = v87;
        if ((v37 & 1) == 0)
        {
          v45 = *(v0 + 152);

          goto LABEL_17;
        }
      }

      v38 = [v11 code];

      if (v38 != 7)
      {
        v44 = *(v0 + 152);

        goto LABEL_17;
      }

      v39 = *(v0 + 80);
      v40 = *(v0 + 88);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v41 = sub_10009D860();
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {
        v42 = *(v0 + 152);
        v43 = *(v0 + 88);

        sub_100008728(v43, &qword_1000CA250, &qword_10009FDF8);
        v17 = v87;
LABEL_17:
        v46 = *(v0 + 120);
        sub_10009D9D0();
        v47 = v11;
        v48 = sub_10009D9E0();
        v49 = sub_10009DFD0();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = *(v0 + 184);
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 134218242;
          *(v51 + 4) = v50;
          *(v51 + 12) = 2112;
          *(v51 + 14) = v47;
          *v52 = v4;
          v53 = v47;
          _os_log_impl(&_mh_execute_header, v48, v49, "tryToFetchShare failed to fetch share so throwing--retries that were left: %ld, error: %@", v51, 0x16u);
          sub_100008728(v52, &qword_1000CA8E0, &qword_10009FE08);
          v17 = v87;
        }

        v54 = *(v0 + 120);
        v55 = *(v0 + 96);
        v56 = *(v0 + 104);

        (*(v56 + 8))(v54, v55);
        sub_100005B1C();
        swift_allocError();
        *v57 = v17;
        *(v57 + 8) = v2;
        *(v57 + 16) = v4;
        *(v57 + 24) = v88;
        *(v57 + 32) = v6;
        *(v57 + 40) = 5;
        swift_willThrow();
        sub_100032380(v17, v2, v4, v88, v6, 5u);

        v31 = v17;
        v32 = v2;
        v33 = v4;
        v34 = v88;
LABEL_20:
        v35 = v6;
        v36 = 5;
LABEL_21:
        sub_1000323E0(v31, v32, v33, v34, v35, v36);
        goto LABEL_22;
      }

      v67 = *(v0 + 57);
      sub_100008728(*(v0 + 88), &qword_1000CA250, &qword_10009FDF8);
      if ((v67 & 1) == 0)
      {
        v78 = *(v0 + 152);
        v79 = *(v0 + 136);

        sub_10009D9D0();
        v80 = sub_10009D9E0();
        v81 = sub_10009DFD0();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "tryToFetchShare not synced to iCloud AND not shared so throw notInICloud error", v82, 2u);
        }

        v83 = *(v0 + 136);
        v84 = *(v0 + 96);
        v85 = *(v0 + 104);

        (*(v85 + 8))(v83, v84);
        sub_100005B1C();
        swift_allocError();
        *v86 = v87;
        *(v86 + 8) = v2;
        *(v86 + 16) = v4;
        *(v86 + 24) = v5;
        *(v86 + 32) = v6;
        *(v86 + 40) = 5;
        swift_willThrow();
        sub_100032380(v87, v2, v4, v5, v6, 5u);

        v31 = v87;
        v32 = v2;
        v33 = v4;
        v34 = v5;
        goto LABEL_20;
      }

      v68 = *(v0 + 128);
      sub_10009D9D0();
      v69 = sub_10009D9E0();
      v70 = sub_10009DFF0();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = *(v0 + 184);
        v72 = swift_slowAlloc();
        *v72 = 134217984;
        *(v72 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v69, v70, "About to retry tryToFetchShare post-share when unsynced after 1 second--retries left including this one: %ld", v72, 0xCu);
      }

      v73 = *(v0 + 128);
      v74 = *(v0 + 96);
      v75 = *(v0 + 104);

      (*(v75 + 8))(v73, v74);
      v76 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v77 = swift_task_alloc();
      *(v0 + 248) = v77;
      *v77 = v0;
      v77[1] = sub_10002F8CC;
      v1 = 1000000000;
    }

    else
    {
      __break(1u);
    }

    return static Task<>.sleep(nanoseconds:)(v1);
  }

  v18 = *(v0 + 152);

  v19 = *(v0 + 200);
LABEL_22:
  v59 = *(v0 + 136);
  v58 = *(v0 + 144);
  v61 = *(v0 + 120);
  v60 = *(v0 + 128);
  v62 = *(v0 + 112);
  v63 = *(v0 + 88);
  v64 = *(v0 + 64);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_10002F8CC()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 160);
    v6 = *(v2 + 168);
    v7 = sub_10003A8C0;
  }

  else
  {
    v5 = *(v2 + 160);
    v6 = *(v2 + 168);
    v7 = sub_10002F9F0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10002F9F0()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[23];

  sub_1000323E0(v5, v4, v3, v1, v2, 5u);
  v7 = v0[8];

  if (v6 == 1)
  {
    v12 = v0[19];

    v14 = v0[17];
    v13 = v0[18];
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[14];
    v18 = v0[11];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v9 = v0[23];
    if (v9 < 2)
    {
      __break(1u);
    }

    else
    {
      v0[23] = v9 - 1;
      v10 = swift_task_alloc();
      v0[24] = v10;
      *v10 = v0;
      v10[1] = sub_10002EDE4;
      v11 = v0[10];

      return sub_1000250A0();
    }
  }

  return result;
}

uint64_t shareStatus(url:)()
{
  v0 = sub_10009D860();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_10009D9F0();
  v23[0] = *(v2 - 8);
  v23[1] = v2;
  v3 = *(v23[0] + 64);
  __chkstk_darwin(v2);
  v23[2] = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D6F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000CA498, &qword_1000A04B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A0490;
  *(inited + 32) = NSURLUbiquitousItemIsSharedKey;
  *(inited + 40) = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  v11 = NSURLUbiquitousItemIsSharedKey;
  v12 = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  sub_1000315FC(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_10009D7C0();

  v13 = sub_10009D6C0();
  v14 = sub_10009D6D0();
  if (!v14)
  {
    v14 = NSURLUbiquitousSharedItemRoleParticipant;
  }

  v15 = v14;
  v16 = sub_10009DD90();
  v18 = v17;
  if (v16 == sub_10009DD90() && v18 == v19)
  {

    v20 = 256;
  }

  else
  {
    v21 = sub_10009E2E0();

    if (v21)
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }
  }

  (*(v6 + 8))(v9, v5);
  return v20 | v13 & 1u;
}

unint64_t sub_1000300B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_10009DE60() != a1 || v9 != a2)
  {
    v10 = sub_10009E2E0();

    if (v10)
    {
      return v8;
    }

    v8 = sub_10009DE00();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1000301D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v5;
  return result;
}

uint64_t sub_100030250(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_1000302F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v5;
  return result;
}

uint64_t sub_100030370(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_1000303E0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

uint64_t sub_10003045C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100003714(&qword_1000CA660, &qword_1000A1300);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_100008658(a1, &v13 - v9, &qword_1000CA660, &qword_1000A1300);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008658(v10, v8, &qword_1000CA660, &qword_1000A1300);

  sub_10009DB00();
  return sub_100008728(v10, &qword_1000CA660, &qword_1000A1300);
}

uint64_t sub_1000305B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000306AC;

  return v7(a1);
}

uint64_t sub_1000306AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000307A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100030870(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000066A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000670C(v11);
  return v7;
}

unint64_t sub_100030870(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10003097C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10009E200();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10003097C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000309C8(a1, a2);
  sub_100030AF8(&off_1000C17A8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000309C8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100030BE4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10009E200();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10009DE20();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100030BE4(v10, 0);
        result = sub_10009E1D0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100030AF8(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100030C58(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100030BE4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003714(&qword_1000CAD98, &qword_1000A1298);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100030C58(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000CAD98, &qword_1000A1298);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100030D4C(char a1)
{
  v3 = *(v1 + 40);
  sub_10009E380();
  sub_100094E04(a1);
  sub_10009DDE0();

  v4 = sub_10009E3A0();

  return sub_100030E4C(a1, v4);
}

unint64_t sub_100030DD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10009E380();
  sub_10009DDE0();
  v6 = sub_10009E3A0();

  return sub_1000312D8(a1, a2, v6);
}

unint64_t sub_100030E4C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x7265646C6F66;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x746E656D75636F64;
          break;
        case 2:
          v8 = 0x6873646165727073;
          v9 = 7628133;
          goto LABEL_17;
        case 3:
          v8 = 0x61746E6573657270;
          v7 = 0xEC0000006E6F6974;
          break;
        case 4:
          v7 = 0xE500000000000000;
          v8 = 0x6567616D69;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x6569766F6DLL;
          break;
        case 6:
          v7 = 0xE300000000000000;
          v8 = 6710384;
          break;
        case 7:
          v7 = 0xE400000000000000;
          v8 = 1702129518;
          break;
        case 8:
          v8 = 0x6C6F467365746F6ELL;
          v9 = 7497060;
LABEL_17:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 9:
          v7 = 0xE400000000000000;
          v8 = 1953720684;
          break;
        case 0xA:
          v7 = 0xE800000000000000;
          v8 = 0x70756F7247626174;
          break;
        case 0xB:
          v8 = 0x6D726F6665657266;
          v7 = 0xED00006472616F42;
          break;
        case 0xC:
          v8 = 0x43636972656E6567;
          v7 = 0xEF74694B64756F6CLL;
          break;
        case 0xD:
          v7 = 0xE500000000000000;
          v8 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v10 = 0xE600000000000000;
      v11 = 0x7265646C6F66;
      switch(a1)
      {
        case 1:
          v10 = 0xE800000000000000;
          if (v8 == 0x746E656D75636F64)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v12 = 0x6873646165727073;
          v13 = 7628133;
          goto LABEL_47;
        case 3:
          v10 = 0xEC0000006E6F6974;
          if (v8 != 0x61746E6573657270)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v10 = 0xE500000000000000;
          if (v8 != 0x6567616D69)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v10 = 0xE500000000000000;
          if (v8 != 0x6569766F6DLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          v10 = 0xE300000000000000;
          if (v8 != 6710384)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v10 = 0xE400000000000000;
          if (v8 != 1702129518)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v12 = 0x6C6F467365746F6ELL;
          v13 = 7497060;
LABEL_47:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v12)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v10 = 0xE400000000000000;
          if (v8 != 1953720684)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v10 = 0xE800000000000000;
          v11 = 0x70756F7247626174;
          goto LABEL_41;
        case 11:
          v10 = 0xED00006472616F42;
          if (v8 != 0x6D726F6665657266)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v10 = 0xEF74694B64756F6CLL;
          if (v8 != 0x43636972656E6567)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v10 = 0xE500000000000000;
          if (v8 != 0x726568746FLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v11)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_43:
          v14 = sub_10009E2E0();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000312D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10009E2E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100031390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100003714(&qword_1000CAD50, &qword_1000A0EF8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = &v19 - v11;
  sub_100008658(a1, &v19 - v11, &qword_1000CAD50, &qword_1000A0EF8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  sub_1000086C0(v12, v14 + v13, &qword_1000CAD50, &qword_1000A0EF8);
  v15 = sub_100003714(&qword_1000CAC78, &qword_1000A0E98);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  result = sub_10009DAB0();
  *a4 = result;
  return result;
}

unint64_t sub_100031504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003714(&qword_1000CA908, &qword_1000A0B08);
    v3 = sub_10009E290();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_100030D4C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_1000315FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003714(&unk_1000CADA0, &unk_1000A12A0);
    v3 = sub_10009E1C0();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_10009DD90();
      sub_10009E380();
      v29 = v7;
      sub_10009DDE0();
      v9 = sub_10009E3A0();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_10009DD90();
        v20 = v19;
        if (v18 == sub_10009DD90() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_10009E2E0();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t type metadata accessor for SharingModel()
{
  result = qword_1000CA600;
  if (!qword_1000CA600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031844()
{
  sub_100031F60(319, &qword_1000CA610);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_100031F60(319, &qword_1000CA618);
    if (v4 <= 0x3F)
    {
      v43 = *(v3 - 8) + 64;
      sub_100031F60(319, &qword_1000CA620);
      if (v6 <= 0x3F)
      {
        v44 = *(v5 - 8) + 64;
        sub_100031F60(319, &qword_1000CA628);
        if (v8 <= 0x3F)
        {
          v45 = *(v7 - 8) + 64;
          sub_100032004(319, &qword_1000CA630, &qword_1000CA638, &qword_1000A0530);
          if (v10 <= 0x3F)
          {
            v46 = *(v9 - 8) + 64;
            sub_100031F60(319, &qword_1000CA640);
            if (v12 <= 0x3F)
            {
              v47 = *(v11 - 8) + 64;
              sub_100031F60(319, &qword_1000CA648);
              if (v14 <= 0x3F)
              {
                v48 = *(v13 - 8) + 64;
                sub_100031F60(319, &qword_1000CA650);
                if (v16 <= 0x3F)
                {
                  v49 = *(v15 - 8) + 64;
                  sub_100032004(319, &qword_1000CA658, &qword_1000CA660, &qword_1000A1300);
                  if (v18 <= 0x3F)
                  {
                    v50 = *(v17 - 8) + 64;
                    sub_100032004(319, &qword_1000CA668, &qword_1000CA670, &qword_1000A0538);
                    if (v20 <= 0x3F)
                    {
                      v51 = *(v19 - 8) + 64;
                      sub_100031F60(319, &qword_1000CA678);
                      if (v22 <= 0x3F)
                      {
                        v52 = *(v21 - 8) + 64;
                        sub_100031F60(319, &qword_1000CA680);
                        if (v24 <= 0x3F)
                        {
                          v53 = *(v23 - 8) + 64;
                          sub_100032004(319, &qword_1000CA688, &qword_1000CA690, &qword_1000A0558);
                          if (v26 <= 0x3F)
                          {
                            v54 = *(v25 - 8) + 64;
                            sub_100032004(319, &qword_1000CA698, &qword_1000CA250, &qword_10009FDF8);
                            if (v28 <= 0x3F)
                            {
                              v55 = *(v27 - 8) + 64;
                              sub_100032004(319, &qword_1000CA0F0, &qword_1000CA6A0, &qword_10009FD50);
                              if (v30 <= 0x3F)
                              {
                                v31 = *(v29 - 8) + 64;
                                sub_100031FAC(319, &qword_1000CA6A8, &qword_1000CA6B0, UIImage_ptr);
                                if (v33 <= 0x3F)
                                {
                                  v56 = *(v32 - 8) + 64;
                                  sub_100032004(319, &qword_1000CA6B8, &qword_1000CA6C0, &qword_1000A0578);
                                  if (v35 <= 0x3F)
                                  {
                                    v57 = *(v34 - 8) + 64;
                                    sub_100031F60(319, &qword_1000CA6C8);
                                    if (v37 <= 0x3F)
                                    {
                                      v38 = *(v36 - 8) + 64;
                                      sub_100031FAC(319, &qword_1000CA6D0, &qword_1000CA6D8, CKContainerID_ptr);
                                      if (v40 <= 0x3F)
                                      {
                                        v58 = *(v39 - 8) + 64;
                                        sub_100032004(319, &qword_1000CA6E0, &unk_1000CA6E8, &qword_1000A0580);
                                        if (v42 <= 0x3F)
                                        {
                                          v59 = *(v41 - 8) + 64;
                                          swift_updateClassMetadata2();
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

void sub_100031F60(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10009DB10();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100031FAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000037C4(255, a3, a4);
    v5 = sub_10009DB10();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100032004(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000594C(a3, a4);
    v5 = sub_10009DB10();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000320BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000093DC;

  return sub_100013D8C(a1, v4);
}

uint64_t sub_1000322CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000093DC;

  return sub_10002CEA8();
}

void sub_100032380(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xDu)
  {

    v7 = a3;
  }
}

uint64_t sub_1000323E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xDu)
  {
  }

  return result;
}

uint64_t sub_100032434()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003246C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032528(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000325A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100003714(a2, a3);
    v5 = sub_10009E290();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100030DD4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_10003269C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003714(&qword_1000CA910, &qword_1000A0B60);
    v3 = sub_10009E290();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008658(v4, &v13, &unk_1000CA918, &qword_1000A1E30);
      v5 = v13;
      v6 = v14;
      result = sub_100030DD4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100039068(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000327CC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_10009E260();
    if (result)
    {
LABEL_3:
      sub_100003714(&qword_1000CAD38, &qword_1000A0EC0);
      result = sub_10009E1C0();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_10009E260();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = sub_10009E1F0();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    sub_10009DA90();
    sub_1000391A4(&qword_1000CAD40, &type metadata accessor for AnyCancellable);
    result = sub_10009DD20();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1000391A4(&qword_1000CAD48, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = sub_10009DD40();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

char *sub_100032A60(uint64_t a1)
{
  v2 = v1;
  v576 = a1;
  v499 = *v1;
  v520 = sub_100003714(&qword_1000CA928, &qword_1000A0C48);
  v519 = *(v520 - 8);
  v3 = *(v519 + 64);
  __chkstk_darwin(v520);
  v518 = &v390 - v4;
  v523 = sub_100003714(&qword_1000CA930, &qword_1000A0C50);
  v522 = *(v523 - 8);
  v5 = *(v522 + 64);
  __chkstk_darwin(v523);
  v521 = &v390 - v6;
  v526 = sub_100003714(&qword_1000CA938, &qword_1000A0C58);
  v525 = *(v526 - 8);
  v7 = *(v525 + 64);
  __chkstk_darwin(v526);
  v524 = &v390 - v8;
  v513 = sub_100003714(&qword_1000CA940, &qword_1000A0C60);
  v512 = *(v513 - 8);
  v9 = *(v512 + 64);
  __chkstk_darwin(v513);
  v510 = &v390 - v10;
  v514 = sub_100003714(&qword_1000CA948, &qword_1000A0C68);
  v11 = *(*(v514 - 8) + 64);
  __chkstk_darwin(v514);
  v511 = &v390 - v12;
  v550 = sub_100003714(&qword_1000CA950, &qword_1000A0C70);
  v515 = *(v550 - 8);
  v13 = *(v515 + 64);
  v14 = __chkstk_darwin(v550);
  v516 = &v390 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v517 = &v390 - v16;
  v504 = sub_100003714(&qword_1000CA958, &qword_1000A0C78);
  v17 = *(*(v504 - 8) + 64);
  __chkstk_darwin(v504);
  v502 = &v390 - v18;
  v507 = sub_100003714(&qword_1000CA960, &qword_1000A0C80);
  v505 = *(v507 - 8);
  v19 = *(v505 + 64);
  __chkstk_darwin(v507);
  v503 = &v390 - v20;
  v509 = sub_100003714(&qword_1000CA968, &qword_1000A0C88);
  v508 = *(v509 - 8);
  v21 = *(v508 + 64);
  __chkstk_darwin(v509);
  v506 = &v390 - v22;
  v501 = sub_100003714(&qword_1000CA970, &qword_1000A0C90);
  v500 = *(v501 - 8);
  v23 = *(v500 + 64);
  v24 = __chkstk_darwin(v501);
  v497 = &v390 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v498 = &v390 - v26;
  v494 = sub_100003714(&qword_1000CA978, &qword_1000A0C98);
  v493 = *(v494 - 8);
  v27 = *(v493 + 64);
  __chkstk_darwin(v494);
  v491 = &v390 - v28;
  v487 = sub_100003714(&qword_1000CA980, &qword_1000A0CA0);
  v485 = *(v487 - 8);
  v29 = *(v485 + 64);
  __chkstk_darwin(v487);
  v483 = &v390 - v30;
  v486 = sub_100003714(&qword_1000CA988, &qword_1000A0CA8);
  v31 = *(*(v486 - 8) + 64);
  v32 = __chkstk_darwin(v486);
  v484 = &v390 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v482 = &v390 - v34;
  v490 = sub_100003714(&qword_1000CA990, &qword_1000A0CB0);
  v489 = *(v490 - 8);
  v35 = *(v489 + 64);
  __chkstk_darwin(v490);
  v488 = &v390 - v36;
  v496 = sub_100003714(&qword_1000CA998, &qword_1000A0CB8);
  v495 = *(v496 - 8);
  v37 = *(v495 + 64);
  __chkstk_darwin(v496);
  v492 = &v390 - v38;
  v481 = sub_100003714(&qword_1000CA9A0, &qword_1000A0CC0);
  v480 = *(v481 - 8);
  v39 = *(v480 + 64);
  __chkstk_darwin(v481);
  v479 = &v390 - v40;
  v478 = sub_100003714(&qword_1000CA9A8, &qword_1000A0CC8);
  v477 = *(v478 - 8);
  v41 = *(v477 + 64);
  __chkstk_darwin(v478);
  v476 = &v390 - v42;
  v475 = sub_100003714(&qword_1000CA9B0, &qword_1000A0CD0);
  v474 = *(v475 - 8);
  v43 = *(v474 + 64);
  __chkstk_darwin(v475);
  v473 = &v390 - v44;
  v472 = sub_100003714(&qword_1000CA9B8, &qword_1000A0CD8);
  v471 = *(v472 - 8);
  v45 = *(v471 + 64);
  __chkstk_darwin(v472);
  v470 = &v390 - v46;
  v469 = sub_100003714(&qword_1000CA9C0, &qword_1000A0CE0);
  v468 = *(v469 - 8);
  v47 = *(v468 + 64);
  __chkstk_darwin(v469);
  v467 = &v390 - v48;
  v460 = sub_100003714(&qword_1000CA9C8, &qword_1000A0CE8);
  v459 = *(v460 - 8);
  v49 = *(v459 + 64);
  __chkstk_darwin(v460);
  v458 = &v390 - v50;
  v455 = sub_100003714(&qword_1000CA9D0, &qword_1000A0CF0);
  v454 = *(v455 - 8);
  v51 = *(v454 + 64);
  __chkstk_darwin(v455);
  v453 = &v390 - v52;
  v461 = sub_100003714(&qword_1000CA9D8, &qword_1000A0CF8);
  v53 = *(*(v461 - 8) + 64);
  __chkstk_darwin(v461);
  v462 = &v390 - v54;
  v465 = sub_100003714(&qword_1000CA9E0, &qword_1000A0D00);
  v464 = *(v465 - 8);
  v55 = *(v464 + 64);
  __chkstk_darwin(v465);
  v463 = &v390 - v56;
  v539 = sub_100003714(&qword_1000CA9E8, &qword_1000A0D08);
  v457 = *(v539 - 8);
  v57 = *(v457 + 64);
  v58 = __chkstk_darwin(v539);
  v452 = &v390 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v456 = &v390 - v60;
  v541 = sub_100003714(&qword_1000CA9F0, &qword_1000A0D10);
  v466 = *(v541 - 8);
  v61 = *(v466 + 64);
  __chkstk_darwin(v541);
  v540 = &v390 - v62;
  v447 = sub_100003714(&qword_1000CA9F8, &qword_1000A0D18);
  v446 = *(v447 - 8);
  v63 = *(v446 + 64);
  __chkstk_darwin(v447);
  v445 = &v390 - v64;
  v450 = sub_100003714(&qword_1000CAA00, &qword_1000A0D20);
  v449 = *(v450 - 8);
  v65 = *(v449 + 64);
  __chkstk_darwin(v450);
  v448 = &v390 - v66;
  v67 = sub_100003714(&qword_1000CAA08, &qword_1000A0D28);
  v68 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67 - 8);
  v575 = &v390 - v69;
  v555 = sub_100003714(&qword_1000CAA10, &qword_1000A0D30);
  v571 = *(v555 - 8);
  v70 = *(v571 + 64);
  __chkstk_darwin(v555);
  v451 = &v390 - v71;
  v444 = sub_100003714(&qword_1000CAA18, &qword_1000A0D38);
  v441 = *(v444 - 1);
  v72 = *(v441 + 64);
  __chkstk_darwin(v444);
  v443 = &v390 - v73;
  v532 = sub_100003714(&qword_1000CAA20, &qword_1000A0D40);
  v442 = *(v532 - 8);
  v74 = *(v442 + 64);
  __chkstk_darwin(v532);
  v440 = &v390 - v75;
  v558 = sub_100003714(&qword_1000CAA28, &qword_1000A0D48);
  v572 = *(v558 - 8);
  v76 = *(v572 + 64);
  v77 = __chkstk_darwin(v558);
  v551 = &v390 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v556 = &v390 - v79;
  v547 = sub_100003714(&qword_1000CAA30, &qword_1000A0D50);
  v560 = *(v547 - 8);
  v80 = *(v560 + 64);
  __chkstk_darwin(v547);
  v546 = &v390 - v81;
  v549 = sub_100003714(&qword_1000CAA38, &qword_1000A0D58);
  v82 = *(*(v549 - 8) + 64);
  __chkstk_darwin(v549);
  v561 = &v390 - v83;
  v437 = sub_100003714(&qword_1000CAA40, &qword_1000A0D60);
  v436 = *(v437 - 1);
  v84 = *(v436 + 64);
  __chkstk_darwin(v437);
  v435 = &v390 - v85;
  v534 = sub_100003714(&qword_1000CAA48, &qword_1000A0D68);
  v86 = *(*(v534 - 1) + 64);
  v87 = __chkstk_darwin(v534);
  v531 = &v390 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  v567 = &v390 - v89;
  v544 = sub_100003714(&qword_1000CAA50, &qword_1000A0D70);
  v559 = *(v544 - 8);
  v90 = *(v559 + 64);
  __chkstk_darwin(v544);
  v543 = &v390 - v91;
  v545 = sub_100003714(&qword_1000CAA58, &qword_1000A0D78);
  v92 = *(*(v545 - 8) + 64);
  __chkstk_darwin(v545);
  v573 = &v390 - v93;
  v528 = sub_100003714(&qword_1000CAA60, &qword_1000A0D80);
  v527 = *(v528 - 1);
  v94 = *(v527 + 64);
  __chkstk_darwin(v528);
  v438 = &v390 - v95;
  v533 = sub_100003714(&qword_1000CAA68, &qword_1000A0D88);
  v530 = *(v533 - 1);
  v96 = *(v530 + 64);
  __chkstk_darwin(v533);
  v529 = &v390 - v97;
  v552 = sub_100003714(&qword_1000CAA70, &qword_1000A0D90);
  v434 = *(v552 - 1);
  v98 = *(v434 + 64);
  __chkstk_darwin(v552);
  v433 = &v390 - v99;
  v432 = sub_100003714(&qword_1000CAA78, &qword_1000A0D98);
  v431 = *(v432 - 8);
  v100 = v431[8];
  __chkstk_darwin(v432);
  v428 = &v390 - v101;
  v430 = sub_100003714(&qword_1000CAA80, &qword_1000A18C0);
  v429 = *(v430 - 8);
  v102 = v429[8];
  __chkstk_darwin(v430);
  v427 = &v390 - v103;
  v542 = sub_100003714(&qword_1000CAA88, &qword_1000A0DA0);
  v426 = *(v542 - 8);
  v104 = *(v426 + 64);
  __chkstk_darwin(v542);
  v425 = &v390 - v105;
  v548 = sub_100003714(&unk_1000CAA90, &qword_1000A0DA8);
  v424 = *(v548 - 8);
  v106 = *(v424 + 64);
  __chkstk_darwin(v548);
  v423 = &v390 - v107;
  v569 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  v439 = *(v569 - 8);
  v108 = *(v439 + 64);
  __chkstk_darwin(v569);
  v422 = &v390 - v109;
  v557 = sub_100003714(&qword_1000CAAA0, &qword_1000A0DB0);
  v421 = *(v557 - 8);
  v110 = *(v421 + 64);
  __chkstk_darwin(v557);
  v420 = &v390 - v111;
  v419 = sub_100003714(&qword_1000CAAA8, &qword_1000A0DB8);
  v418 = *(v419 - 8);
  v112 = *(v418 + 64);
  __chkstk_darwin(v419);
  v417 = &v390 - v113;
  v562 = sub_100003714(&qword_1000CAAB0, &qword_1000A0DC0);
  v416 = *(v562 - 8);
  v114 = *(v416 + 64);
  __chkstk_darwin(v562);
  v415 = &v390 - v115;
  v414 = sub_100003714(&qword_1000CAAB8, &qword_1000A0DC8);
  v412 = *(v414 - 8);
  v116 = *(v412 + 64);
  __chkstk_darwin(v414);
  v411 = &v390 - v117;
  v536 = sub_100003714(&qword_1000CAAC0, &qword_1000A0DD0);
  v410 = *(v536 - 8);
  v118 = *(v410 + 64);
  __chkstk_darwin(v536);
  v409 = &v390 - v119;
  v566 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v120 = *(*(v566 - 1) + 64);
  v121 = __chkstk_darwin(v566);
  v408 = &v390 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __chkstk_darwin(v121);
  v563 = &v390 - v124;
  __chkstk_darwin(v123);
  v413 = &v390 - v125;
  v407 = sub_100003714(&qword_1000CAAC8, &unk_1000A1870);
  v406 = *(v407 - 8);
  v126 = *(v406 + 64);
  __chkstk_darwin(v407);
  v405 = &v390 - v127;
  v404 = sub_100003714(&qword_1000CA660, &qword_1000A1300);
  v128 = *(*(v404 - 8) + 64);
  v129 = __chkstk_darwin(v404);
  v403 = &v390 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v129);
  v402 = &v390 - v131;
  v538 = sub_100003714(&qword_1000CAAD0, &qword_1000A0DD8);
  v401 = *(v538 - 8);
  v132 = *(v401 + 64);
  __chkstk_darwin(v538);
  v400 = &v390 - v133;
  v537 = sub_100003714(&qword_1000CAAD8, &qword_1000A0DE0);
  v399 = *(v537 - 8);
  v134 = *(v399 + 64);
  __chkstk_darwin(v537);
  v398 = &v390 - v135;
  v535 = sub_100003714(&qword_1000CAAE0, &qword_1000A0DE8);
  v397 = *(v535 - 8);
  v136 = *(v397 + 64);
  __chkstk_darwin(v535);
  v396 = &v390 - v137;
  v395 = sub_100003714(&qword_1000CAAE8, &qword_1000A0DF0);
  v394 = *(v395 - 8);
  v138 = *(v394 + 64);
  __chkstk_darwin(v395);
  v393 = &v390 - v139;
  v392 = sub_100003714(&qword_1000CAAF0, &qword_1000A0DF8);
  v391 = *(v392 - 8);
  v140 = *(v391 + 64);
  __chkstk_darwin(v392);
  v390 = &v390 - v141;
  v570 = sub_100003714(&qword_1000CAAF8, &qword_1000A0E00);
  v142 = *(v570 - 8);
  v143 = *(v142 + 64);
  __chkstk_darwin(v570);
  v145 = &v390 - v144;
  v564 = sub_100003714(&qword_1000CAB00, &qword_1000A0E08);
  v146 = *(v564 - 8);
  v147 = *(v146 + 64);
  __chkstk_darwin(v564);
  v149 = &v390 - v148;
  v150 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v151 = *(v150 - 8);
  v152 = *(v151 + 64);
  __chkstk_darwin(v150);
  v154 = &v390 - v153;
  if (_swiftEmptyArrayStorage >> 62 && sub_10009E260())
  {
    v155 = sub_1000327CC(_swiftEmptyArrayStorage);
  }

  else
  {
    v155 = &_swiftEmptySetSingleton;
  }

  v2[4] = v155;
  v553 = v2 + 4;
  v2[6] = 0;
  swift_unknownObjectWeakInit();
  v2[7] = swift_getKeyPath();
  *(v2 + 64) = 0;
  v156 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isDelegateInitialized;
  LOBYTE(v577) = 0;
  sub_10009DAC0();
  v574 = *(v151 + 32);
  (v574)(v2 + v156, v154, v150);
  v157 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__executionMode;
  LOBYTE(v577) = 0;
  sub_10009DAC0();
  (*(v146 + 32))(v2 + v157, v149, v564);
  v158 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingType;
  LOBYTE(v577) = 8;
  sub_10009DAC0();
  (*(v142 + 32))(v2 + v158, v145, v570);
  v159 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingStage;
  LOBYTE(v577) = 0;
  v160 = v390;
  sub_10009DAC0();
  (*(v391 + 32))(v2 + v159, v160, v392);
  v161 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__addedAddresses;
  v577 = _swiftEmptyArrayStorage;
  sub_100003714(&qword_1000CA638, &qword_1000A0530);
  v162 = v393;
  sub_10009DAC0();
  (*(v394 + 32))(v2 + v161, v162, v395);
  v163 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__createOrLoadStage;
  LOBYTE(v577) = 0;
  v164 = v396;
  sub_10009DAC0();
  (*(v397 + 32))(v2 + v163, v164, v535);
  v165 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__addingAddressesStage;
  LOBYTE(v577) = 0;
  v166 = v398;
  sub_10009DAC0();
  (*(v399 + 32))(v2 + v165, v166, v537);
  v167 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__savingStage;
  LOBYTE(v577) = 2;
  v168 = v400;
  sub_10009DAC0();
  (*(v401 + 32))(v2 + v167, v168, v538);
  v169 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__alertNowShowing;
  v170 = type metadata accessor for AlertViewModel(0);
  v171 = v402;
  (*(*(v170 - 8) + 56))(v402, 1, 1, v170);
  sub_100008658(v171, v403, &qword_1000CA660, &qword_1000A1300);
  v172 = v405;
  sub_10009DAC0();
  sub_100008728(v171, &qword_1000CA660, &qword_1000A1300);
  (*(v406 + 32))(v2 + v169, v172, v407);
  v173 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isShowingAlert;
  LOBYTE(v577) = 0;
  v568 = v154;
  sub_10009DAC0();
  v565 = v150;
  v174 = v574;
  (v574)(v2 + v173, v154, v150);
  v175 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isFolderShare;
  LOBYTE(v577) = 0;
  sub_10009DAC0();
  v174(v2 + v175, v154, v150);
  v554 = (v151 + 32);
  v176 = v174;
  v404 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderURL;
  v406 = sub_10009D860();
  v177 = *(v406 - 8);
  v405 = *(v177 + 56);
  v407 = v177 + 56;
  v178 = v413;
  (v405)(v413, 1, 1, v406);
  v179 = sub_100003714(&qword_1000CAB10, &qword_1000A0E48);
  v180 = *(v179 + 48);
  v181 = *(v179 + 52);
  v182 = swift_allocObject();
  v183 = (v182 + *(*v182 + 104));
  *v183 = 0;
  v183[1] = 0;
  v184 = v563;
  sub_100008658(v178, v563, &qword_1000CA250, &qword_10009FDF8);
  v185 = *(*v182 + 96);
  swift_beginAccess();
  sub_100008658(v184, v408, &qword_1000CA250, &qword_10009FDF8);
  sub_10009DAC0();
  sub_100008728(v184, &qword_1000CA250, &qword_10009FDF8);
  swift_endAccess();
  v186 = v178;
  sub_100008728(v178, &qword_1000CA250, &qword_10009FDF8);
  *(v2 + v404) = v182;
  v187 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isFolderSubshare;
  LOBYTE(v577) = 0;
  v188 = v568;
  sub_10009DAC0();
  v189 = v188;
  v190 = v565;
  v176(v2 + v187, v189, v565);
  v191 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderTitle;
  v192 = sub_100003714(&qword_1000CAB18, &qword_1000A0E50);
  v193 = *(v192 + 48);
  v194 = *(v192 + 52);
  v195 = swift_allocObject();
  v196 = (v195 + *(*v195 + 104));
  *v196 = 0;
  v196[1] = 0;
  v197 = *(*v195 + 96);
  swift_beginAccess();
  v581 = 0;
  v582 = 0;
  v198 = sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
  sub_10009DAC0();
  swift_endAccess();
  *(v2 + v191) = v195;
  v199 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckFolderSubitemName;
  v200 = *(v192 + 48);
  v201 = *(v192 + 52);
  v202 = swift_allocObject();
  v203 = (v202 + *(*v202 + 104));
  *v203 = 0;
  v203[1] = 0;
  v204 = *(*v202 + 96);
  swift_beginAccess();
  v581 = 0;
  v582 = 0;
  v408 = v198;
  sub_10009DAC0();
  swift_endAccess();
  *(v2 + v199) = v202;
  v205 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__folderSharingStage;
  LOBYTE(v577) = 4;
  sub_100003714(&qword_1000CA670, &qword_1000A0538);
  v206 = v409;
  sub_10009DAC0();
  (*(v410 + 32))(v2 + v205, v206, v536);
  v207 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__shareSaveStatus;
  LOBYTE(v577) = 0;
  v208 = v411;
  sub_10009DAC0();
  (*(v412 + 32))(v2 + v207, v208, v414);
  v209 = (v2 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData);
  *v209 = 0;
  v209[1] = 0;
  v210 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingOptionsAllowedFromSPI;
  v577 = 15;
  v211 = v415;
  sub_10009DAC0();
  (*(v416 + 32))(v2 + v210, v211, v562);
  v212 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__yourNameAndEmail;
  v577 = 0;
  v578 = 0xE000000000000000;
  v579 = 0;
  v580 = 0xE000000000000000;
  sub_100003714(&qword_1000CA690, &qword_1000A0558);
  v213 = v417;
  sub_10009DAC0();
  (*(v418 + 32))(v2 + v212, v213, v419);
  v214 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharedFileOrFolderURL;
  (v405)(v186, 1, 1, v406);
  sub_100008658(v186, v563, &qword_1000CA250, &qword_10009FDF8);
  v215 = v420;
  sub_10009DAC0();
  sub_100008728(v186, &qword_1000CA250, &qword_10009FDF8);
  (*(v421 + 32))(v2 + v214, v215, v557);
  v216 = v2;
  *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_shouldStopAccessingSharedFileOrFolderURL) = 0;
  v217 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__itemUTI;
  v577 = 0;
  v578 = 0;
  v218 = v422;
  sub_10009DAC0();
  v566 = *(v439 + 32);
  (v566)(v2 + v217, v218, v569);
  v219 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isShareRoot;
  LOBYTE(v577) = 1;
  v220 = v568;
  sub_10009DAC0();
  (v574)(&v216[v219], v220, v190);
  v221 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnail;
  v577 = [objc_allocWithZone(UIImage) init];
  v439 = sub_1000037C4(0, &qword_1000CA6B0, UIImage_ptr);
  v222 = v423;
  sub_10009DAC0();
  (*(v424 + 32))(&v216[v221], v222, v548);
  v223 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnailFromCloudKitSPI;
  v577 = 0;
  sub_100003714(&qword_1000CA6C0, &qword_1000A0578);
  v224 = v425;
  sub_10009DAC0();
  v225 = *(v426 + 32);
  v226 = v542;
  v225(&v216[v223], v224, v542);
  v227 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnailFromDocumentSPI;
  v577 = 0;
  sub_10009DAC0();
  v225(&v216[v227], v224, v226);
  v228 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__itemTitle;
  v577 = 0;
  v578 = 0xE000000000000000;
  v229 = v427;
  sub_10009DAC0();
  v230 = v429[4];
  v231 = &v216[v228];
  v232 = v216;
  v233 = v430;
  (v230)(v231, v229, v430);
  v234 = v230;
  v235 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sourceAppBundleID;
  v577 = 0;
  v578 = 0;
  sub_10009DAC0();
  (v566)(&v232[v235], v218, v569);
  v236 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sectionTitleForAuxiliaryToggles;
  v577 = 0;
  v578 = 0xE000000000000000;
  sub_10009DAC0();
  (v234)(&v232[v236], v229, v233);
  v237 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__primaryCheckboxTitle;
  v577 = 0;
  v578 = 0xE000000000000000;
  sub_10009DAC0();
  (v234)(&v232[v237], v229, v233);
  v563 = v234;
  v238 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__secondaryCheckboxTitle;
  v577 = 0;
  v578 = 0xE000000000000000;
  sub_10009DAC0();
  (v234)(&v232[v238], v229, v233);
  v239 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__primaryCheckboxState;
  LOBYTE(v577) = 0;
  v240 = v568;
  sub_10009DAC0();
  v241 = v565;
  v242 = v574;
  (v574)(&v232[v239], v240, v565);
  v243 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__secondaryCheckboxState;
  LOBYTE(v577) = 0;
  sub_10009DAC0();
  v242(&v232[v243], v240, v241);
  v244 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckContainerIdentifier;
  v577 = [objc_allocWithZone(CKContainerID) init];
  sub_1000037C4(0, &qword_1000CA6D8, CKContainerID_ptr);
  v245 = v428;
  sub_10009DAC0();
  (v431[4])(&v232[v244], v245, v432);
  v246 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__helpAnchor;
  v577 = 0;
  v578 = 0xE000000000000000;
  sub_10009DAC0();
  (v563)(&v232[v246], v229, v233);
  v247 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__participantDetails;
  v577 = sub_1000325A0(_swiftEmptyArrayStorage, &qword_1000CAD80, &qword_1000A11D0);
  sub_100003714(&unk_1000CA6E8, &qword_1000A0580);
  v248 = v433;
  sub_10009DAC0();
  (*(v434 + 32))(&v232[v247], v248, v552);
  v249 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_networkMonitor;
  v250 = type metadata accessor for NetworkMonitor();
  v251 = *(v250 + 48);
  v252 = *(v250 + 52);
  swift_allocObject();
  *&v232[v249] = sub_100046C10(0);
  *&v232[OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_ckMetadata] = 0;
  v253 = v576;
  *(v232 + 2) = v576;
  *(v232 + 3) = *(v253 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel);
  v254 = v232;
  swift_weakAssign();
  v434 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharedFileOrFolderURL;
  swift_beginAccess();

  v255 = v543;
  sub_10009DAD0();
  swift_endAccess();
  v433 = sub_100039B10(&qword_1000CAB20, &qword_1000CAA50, &qword_1000A0D70);
  v432 = sub_1000390F0();
  v256 = v544;
  sub_10009DB60();
  v257 = *(v559 + 8);
  v559 += 8;
  v431 = v257;
  (v257)(v255, v256);
  swift_beginAccess();
  v258 = v435;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CAB38, &qword_1000CAA40, &qword_1000A0D60);
  sub_1000391EC();
  v259 = v437;
  sub_10009DB60();
  v260 = *(v436 + 8);
  v260(v258, v259);
  swift_beginAccess();
  sub_10009DAD0();
  swift_endAccess();
  sub_10009DB60();
  v260(v258, v259);
  swift_beginAccess();
  v261 = v546;
  sub_10009DAD0();
  swift_endAccess();
  v574 = &protocol conformance descriptor for Published<A>.Publisher;
  v430 = sub_100039B10(&qword_1000CAB48, &qword_1000CAA30, &qword_1000A0D50);
  v262 = v547;
  sub_10009DB60();
  v263 = *(v560 + 8);
  v560 += 8;
  v429 = v263;
  (v263)(v261, v262);
  v435 = sub_100039B10(&qword_1000CAB50, &qword_1000CAA58, &qword_1000A0D78);
  sub_100039B10(&qword_1000CAB58, &qword_1000CAA48, &qword_1000A0D68);
  v554 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v436 = sub_100039B10(&qword_1000CAB60, &qword_1000CAA38, &qword_1000A0D58);
  v264 = v438;
  sub_10009DA40();
  v265 = swift_allocObject();
  *(v265 + 16) = sub_100039268;
  *(v265 + 24) = v254;
  v437 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  sub_100039B10(&qword_1000CAB68, &qword_1000CAA60, &qword_1000A0D80);

  v266 = v529;
  v267 = v528;
  sub_10009DB30();

  (*(v527 + 8))(v264, v267);
  v268 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingType;
  swift_beginAccess();
  v269 = v556;
  sub_10009DAD0();
  swift_endAccess();
  v534 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_100039B10(&qword_1000CAB70, &qword_1000CAA68, &qword_1000A0D88);
  v270 = v533;
  sub_10009DB80();
  (*(v530 + 8))(v266, v270);
  v271 = v572;
  v272 = v558;
  (*(v572 + 16))(v551, v269, v558);
  v531 = v268;
  swift_beginAccess();
  sub_10009DAE0();
  swift_endAccess();
  v273 = *(v271 + 8);
  v572 = v271 + 8;
  v533 = v273;
  (v273)(v269, v272);
  v527 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__executionMode;
  swift_beginAccess();
  v274 = v451;
  sub_10009DAD0();
  swift_endAccess();
  v530 = sub_100039B10(&qword_1000CAB78, &qword_1000CAA10, &qword_1000A0D30);
  v529 = sub_1000392B0();
  v275 = v443;
  v276 = v555;
  sub_10009DB60();
  v277 = *(v571 + 8);
  v571 += 8;
  v528 = v277;
  (v277)(v274, v276);
  v563 = objc_opt_self();
  v278 = [v563 mainRunLoop];
  v577 = v278;
  v568 = sub_10009E130();
  v279 = *(v568 - 8);
  v567 = *(v279 + 56);
  v569 = v279 + 56;
  v280 = v575;
  (v567)(v575, 1, 1, v568);
  v551 = sub_1000037C4(0, &qword_1000CAB88, NSRunLoop_ptr);
  sub_100039B10(&qword_1000CAB90, &qword_1000CAA18, &qword_1000A0D38);
  v566 = sub_100039304(&qword_1000CAB98, &qword_1000CAB88, NSRunLoop_ptr);
  v281 = v440;
  v282 = v444;
  sub_10009DB50();
  sub_100008728(v280, &qword_1000CAA08, &qword_1000A0D28);

  (*(v441 + 8))(v275, v282);
  v552 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100039B10(&qword_1000CABA0, &qword_1000CAA20, &qword_1000A0D40);

  v283 = v532;
  sub_10009DB70();

  (*(v442 + 8))(v281, v283);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  sub_10009DAD0();
  swift_endAccess();
  v284 = v555;
  sub_10009DB60();
  (v528)(v274, v284);
  v285 = *(v254 + 3);
  swift_beginAccess();

  v532 = sub_100003714(&qword_1000CABA8, &qword_1000A0E58);
  sub_10009DAD0();
  swift_endAccess();

  v442 = sub_100039B10(&qword_1000CABB0, &qword_1000CA9F0, &qword_1000A0D10);
  v286 = v445;
  sub_10009DA00();
  v287 = swift_allocObject();
  swift_weakInit();
  v288 = swift_allocObject();
  *(v288 + 16) = sub_100039350;
  *(v288 + 24) = v287;
  v444 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  sub_100039B10(&qword_1000CABB8, &qword_1000CA9F8, &qword_1000A0D18);
  v289 = v448;
  v290 = v447;
  sub_10009DB30();

  (*(v446 + 8))(v286, v290);
  v291 = *(v254 + 3);
  swift_beginAccess();

  v292 = sub_100003714(&qword_1000CABC0, &qword_1000A0E60);
  v293 = v456;
  v447 = v292;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CABC8, &qword_1000CAA00, &qword_1000A0D20);
  v294 = v450;
  sub_10009DB80();
  (*(v449 + 8))(v289, v294);
  v295 = v457;
  v296 = v539;
  (*(v457 + 16))(v452, v293, v539);
  swift_beginAccess();
  sub_10009DAE0();
  swift_endAccess();

  v457 = *(v295 + 8);
  (v457)(v293, v296);
  swift_beginAccess();
  sub_10009DAD0();
  swift_endAccess();
  v297 = v462;
  v298 = v555;
  sub_10009DB60();
  (v528)(v274, v298);
  swift_beginAccess();
  v299 = v556;
  sub_10009DAD0();
  swift_endAccess();
  v300 = v461;
  v301 = *(v461 + 116);
  v571 = sub_100039B10(&qword_1000CABD0, &qword_1000CAA28, &qword_1000A0D48);
  sub_100039390();
  v302 = v558;
  sub_10009DB60();
  (v533)(v299, v302);
  v303 = *(v254 + 3);
  swift_beginAccess();
  v304 = v300[30];

  sub_10009DAD0();
  swift_endAccess();

  swift_beginAccess();
  sub_100003714(&qword_1000CABE0, &qword_1000A0E68);
  v305 = v453;
  sub_10009DAD0();
  swift_endAccess();
  v306 = v300[31];
  sub_100039B10(&qword_1000CABE8, &qword_1000CA9D0, &qword_1000A0CF0);
  sub_1000393E4();
  v307 = v455;
  sub_10009DB60();
  (*(v454 + 8))(v305, v307);
  swift_beginAccess();
  sub_100003714(&qword_1000CABF8, &qword_1000A0E70);
  v308 = v458;
  sub_10009DAD0();
  swift_endAccess();
  v309 = v300[32];
  sub_100039B10(&qword_1000CAC00, &qword_1000CA9C8, &qword_1000A0CE8);
  sub_100039438();
  v310 = v460;
  sub_10009DB60();
  (*(v459 + 8))(v308, v310);
  v311 = *(v254 + 3);
  swift_beginAccess();

  sub_10009DAD0();
  swift_endAccess();

  v312 = v300[33];
  sub_100039B10(&qword_1000CAC10, &qword_1000CA9E8, &qword_1000A0D08);
  sub_10003948C();
  v313 = v539;
  sub_10009DB60();
  (v457)(v293, v313);
  v314 = [v563 mainRunLoop];
  v577 = v314;
  v315 = v575;
  (v567)(v575, 1, 1, v568);
  sub_100039B10(&qword_1000CAC20, &qword_1000CA9D8, &qword_1000A0CF8);
  v316 = v463;
  sub_10009DB50();
  sub_100008728(v315, &qword_1000CAA08, &qword_1000A0D28);

  sub_100008728(v297, &qword_1000CA9D8, &qword_1000A0CF8);
  v317 = swift_allocObject();
  swift_weakInit();
  v318 = swift_allocObject();
  v319 = v576;
  *(v318 + 16) = v317;
  *(v318 + 24) = v319;
  v320 = swift_allocObject();
  *(v320 + 16) = sub_100039520;
  *(v320 + 24) = v318;
  sub_100039B10(&qword_1000CAC28, &qword_1000CA9E0, &qword_1000A0D00);

  v321 = v465;
  sub_10009DB70();

  (*(v464 + 8))(v316, v321);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  v322 = *(v254 + 3);
  swift_beginAccess();

  v323 = v540;
  sub_10009DAD0();
  swift_endAccess();

  v324 = [v563 mainRunLoop];
  v577 = v324;
  v325 = v575;
  (v567)(v575, 1, 1, v568);
  v326 = v467;
  v327 = v541;
  sub_10009DB50();
  sub_100008728(v325, &qword_1000CAA08, &qword_1000A0D28);

  (*(v466 + 8))(v323, v327);
  swift_allocObject();
  swift_weakInit();
  sub_100039B10(&qword_1000CAC30, &qword_1000CA9C0, &qword_1000A0CE0);
  v328 = v469;
  sub_10009DB70();

  (*(v468 + 8))(v326, v328);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v329 = v556;
  sub_10009DAD0();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v330 = v558;
  sub_10009DB70();

  (v533)(v329, v330);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v331 = v470;
  sub_10009DAD0();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_100039B10(&qword_1000CAC38, &qword_1000CA9B8, &qword_1000A0CD8);
  v332 = v472;
  sub_10009DB70();

  (*(v471 + 8))(v331, v332);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v333 = v473;
  sub_10009DAD0();
  swift_endAccess();
  v334 = swift_allocObject();
  swift_weakInit();
  v335 = swift_allocObject();
  *(v335 + 16) = sub_100039580;
  *(v335 + 24) = v334;
  sub_100039B10(&qword_1000CAC40, &qword_1000CA9B0, &qword_1000A0CD0);
  v336 = v475;
  sub_10009DB70();

  (*(v474 + 8))(v333, v336);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v337 = v476;
  sub_10009DAD0();
  swift_endAccess();
  v338 = swift_allocObject();
  swift_weakInit();
  v339 = swift_allocObject();
  *(v339 + 16) = sub_1000395B4;
  *(v339 + 24) = v338;
  sub_100039B10(&qword_1000CAC48, &qword_1000CA9A8, &qword_1000A0CC8);
  v340 = v478;
  sub_10009DB70();

  (*(v477 + 8))(v337, v340);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v341 = v479;
  sub_10009DAD0();
  swift_endAccess();
  v342 = swift_allocObject();
  swift_weakInit();
  v343 = swift_allocObject();
  *(v343 + 16) = sub_1000395E8;
  *(v343 + 24) = v342;
  sub_100039B10(&qword_1000CAC50, &qword_1000CA9A0, &qword_1000A0CC0);
  v344 = v481;
  sub_10009DB70();

  (*(v480 + 8))(v341, v344);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v345 = v543;
  sub_10009DAD0();
  swift_endAccess();
  v346 = v544;
  sub_10009DB60();
  (v431)(v345, v346);
  swift_beginAccess();
  v347 = v546;
  sub_10009DAD0();
  swift_endAccess();
  v348 = v547;
  sub_10009DB60();
  (v429)(v347, v348);
  swift_beginAccess();
  v349 = v483;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CAC58, &qword_1000CA980, &qword_1000A0CA0);
  sub_10003961C();
  v350 = v487;
  sub_10009DB60();
  v351 = *(v485 + 8);
  v351(v349, v350);
  swift_beginAccess();
  sub_10009DAD0();
  swift_endAccess();
  sub_10009DB60();
  v351(v349, v350);
  sub_100039B10(&qword_1000CAC70, &qword_1000CA988, &qword_1000A0CA8);
  v352 = v488;
  sub_10009DA40();
  v353 = swift_allocObject();
  swift_weakInit();
  v354 = swift_allocObject();
  *(v354 + 16) = v353;
  *(v354 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v354 + 40) = v499;
  v355 = swift_allocObject();
  *(v355 + 16) = &unk_1000A0E80;
  *(v355 + 24) = v354;
  v356 = swift_allocObject();
  *(v356 + 16) = &unk_1000A0E90;
  *(v356 + 24) = v355;

  sub_10009DA70();
  sub_100003714(&qword_1000CAC78, &qword_1000A0E98);
  sub_100039B10(&qword_1000CAC80, &qword_1000CA990, &qword_1000A0CB0);
  sub_100039B10(&qword_1000CAC88, &qword_1000CAC78, &qword_1000A0E98);
  v357 = v491;
  v358 = v490;
  v359 = v352;
  sub_10009DB40();

  sub_100039B10(&qword_1000CAC90, &qword_1000CA978, &qword_1000A0C98);
  v360 = v494;
  v361 = sub_10009DB20();

  (*(v493 + 8))(v357, v360);
  (*(v489 + 8))(v359, v358);
  v577 = v361;
  v362 = [v563 mainRunLoop];
  v581 = v362;
  v363 = v575;
  (v567)(v575, 1, 1, v568);
  sub_100003714(&qword_1000CAC98, &qword_1000A0EA0);
  sub_100039B10(&qword_1000CACA0, &qword_1000CAC98, &qword_1000A0EA0);
  v364 = v492;
  sub_10009DB50();
  sub_100008728(v363, &qword_1000CAA08, &qword_1000A0D28);

  swift_beginAccess();
  v365 = v498;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CACA8, &qword_1000CA998, &qword_1000A0CB8);
  v366 = v496;
  sub_10009DB80();
  (*(v495 + 8))(v364, v366);
  v367 = v500;
  v368 = v501;
  (*(v500 + 16))(v497, v365, v501);
  swift_beginAccess();
  sub_10009DAE0();
  swift_endAccess();
  (*(v367 + 8))(v365, v368);
  swift_beginAccess();
  v369 = v517;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CACB0, &qword_1000CA950, &qword_1000A0C70);
  sub_1000399B0();
  v370 = v550;
  sub_10009DB60();
  v371 = v515;
  v573 = *(v515 + 8);
  (v573)(v369, v370);
  v372 = *(v254 + 3);
  swift_beginAccess();

  sub_100003714(&qword_1000CACC0, &qword_1000A0EA8);
  v373 = v510;
  sub_10009DAD0();
  swift_endAccess();

  sub_100039B10(&qword_1000CACC8, &qword_1000CA940, &qword_1000A0C60);
  sub_100039A04();
  v374 = v513;
  sub_10009DB60();
  (*(v512 + 8))(v373, v374);
  sub_100039B10(&qword_1000CACF0, &qword_1000CA958, &qword_1000A0C78);
  sub_100039B10(&qword_1000CACF8, &qword_1000CA948, &qword_1000A0C68);
  v375 = v503;
  sub_10009DA00();
  sub_100039B10(&qword_1000CAD00, &qword_1000CA960, &qword_1000A0C80);
  v376 = v506;
  v377 = v507;
  sub_10009DB30();
  (*(v505 + 8))(v375, v377);
  swift_beginAccess();
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CAD08, &qword_1000CA968, &qword_1000A0C88);
  v378 = v509;
  sub_10009DB80();
  (*(v508 + 8))(v376, v378);
  v379 = v550;
  (*(v371 + 16))(v516, v369, v550);
  swift_beginAccess();
  sub_10009DAE0();
  swift_endAccess();
  (v573)(v369, v379);
  v380 = *&v254[OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_networkMonitor];
  swift_beginAccess();

  sub_100003714(&qword_1000CAD10, &qword_1000A0EB8);
  v381 = v518;
  sub_10009DAD0();
  swift_endAccess();

  sub_100039B10(&qword_1000CAD18, &qword_1000CA928, &qword_1000A0C48);
  sub_100039AB4();
  v382 = v521;
  v383 = v520;
  sub_10009DB60();
  (*(v519 + 8))(v381, v383);
  v384 = [v563 mainRunLoop];
  v577 = v384;
  v385 = v575;
  (v567)(v575, 1, 1, v568);
  sub_100039B10(&qword_1000CAD28, &qword_1000CA930, &qword_1000A0C50);
  v386 = v524;
  v387 = v523;
  sub_10009DB50();
  sub_100008728(v385, &qword_1000CAA08, &qword_1000A0D28);

  (*(v522 + 8))(v382, v387);
  swift_allocObject();
  swift_weakInit();

  sub_100039B10(&qword_1000CAD30, &qword_1000CA938, &qword_1000A0C58);
  v388 = v526;
  sub_10009DB70();

  (*(v525 + 8))(v386, v388);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  return v254;
}