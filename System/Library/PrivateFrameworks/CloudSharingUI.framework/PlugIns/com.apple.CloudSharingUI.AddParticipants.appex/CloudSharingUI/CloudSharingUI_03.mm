uint64_t sub_100052FE4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_100068864;
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_100053108;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100053108()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);

  v7 = sub_100018BDC(v6, v4, v3, v1, v2, 1u);
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
  sub_10007AF3C();

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
      v12[1] = sub_100051F44;
      v7 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v7);
    }

    v13 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10007AF4C();
  }

  v14 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v15 = *(v0 + 58);
  if (v15 == 4 || v15 == 2)
  {
    v16 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10007AF4C();
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v17[1] = sub_100052340;
    v18 = *(v0 + 80);

    return sub_10004C5D4();
  }

LABEL_16:
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 104);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100053430(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
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
      sub_10007AF3C();

      if (HIBYTE(v12) == 1)
      {
        v8 = &unk_10007F350;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10007AF3C();

        if (HIBYTE(v12) != 3)
        {
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10007AF3C();

        if ((HIBYTE(v12) - 2) < 4u || (v12 & 0x100000000000000) != 0)
        {
        }

        v8 = &unk_10007F340;
      }

      sub_10007B33C();
      v9 = sub_10007B35C();
      (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
      sub_10007B32C();

      v10 = sub_10007B31C();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v7;
      sub_10000DAD0(0, 0, v6, v8, v11);
    }
  }

  return result;
}

uint64_t sub_1000536DC()
{
  v0[2] = sub_10007B32C();
  v0[3] = sub_10007B31C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100051A1C;

  return sub_10005378C(1);
}

uint64_t sub_10005378C(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 163) = a1;
  *(v2 + 104) = sub_10007B32C();
  *(v2 + 112) = sub_10007B31C();
  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  *v3 = v2;
  v3[1] = sub_100053844;

  return sub_100051B58(300);
}

uint64_t sub_100053844()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v6 = sub_10007B2EC();
  *(v1 + 128) = v6;
  *(v1 + 136) = v5;

  return _swift_task_switch(sub_100053988, v6, v5);
}

uint64_t sub_100053988()
{
  if ((*(v0 + 163) & 1) == 0)
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 57) = 3;

LABEL_7:
    sub_10007AF4C();
    goto LABEL_8;
  }

  v1 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

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
  sub_10007AF3C();

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

  sub_10007AF4C();
  v11 = *(v10 + 16);

  v12 = sub_100078014();

  v13 = *(*(v10 + 16) + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride);
  if (v13 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    LOBYTE(v13) = *(v0 + 62);
  }

  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_100053C94;
  v15 = *(v0 + 96);

  return sub_100048564(v12 & 1, v13 & 1);
}

uint64_t sub_100053C94()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_100053E84;
  }

  else
  {
    v7 = sub_100053DD0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100053DD0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 162) = 2;

  sub_10007AF4C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100053E84()
{
  v1 = v0;
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);

  *(v0 + 64) = v2;
  v4 = v0 + 64;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
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

    result = sub_10007AF4C();
    if (v11 == 10)
    {
      if (!v9)
      {
        __break(1u);
        return result;
      }

      v13 = *(v0 + 96);

      v14 = v9;

      sub_10005A3E4(1u, v9);
      sub_100018BDC(v32, v7, v9, v8, v10, 0xAu);

      v15 = v1[8];
    }

    else
    {
      v26 = *(v0 + 96);
      v27 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_10005A3E4(2u, v27);
      sub_100018BDC(v32, v7, v9, v8, v10, v11);

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

      sub_10007AF4C();
      *(v4 + 24) = v22;
      sub_1000661F4(&qword_10009E0B8, type metadata accessor for CKError);
      v23 = CKErrorDomain;
      v24 = [objc_allocWithZone(NSError) initWithDomain:v23 code:sub_10007AB5C() userInfo:0];

      sub_10005A3E4(1u, v24);
      v25 = *(v4 + 8);
    }

    else
    {
      v29 = *(v4 + 8);

      swift_getKeyPath();
      swift_getKeyPath();
      *(v4 - 1) = 4;

      sub_10007AF4C();
      v30 = sub_10007AB7C();
      sub_10005A3E4(2u, v30);
    }
  }

  v31 = v1[1];

  return v31();
}

uint64_t sub_100054280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10007B32C();
  v4[3] = sub_10007B31C();
  v6 = sub_10007B2EC();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100054318, v6, v5);
}

uint64_t sub_100054318()
{
  v1 = (v0[2] + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData);
  v2 = *v1;
  v0[6] = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000543E4;
  v5 = v0[2];

  return sub_100054528(0, v2, v3);
}

uint64_t sub_1000543E4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_10006886C, v5, v4);
}

uint64_t sub_100054528(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a2;
  *(v4 + 145) = a1;
  sub_10007B32C();
  *(v4 + 96) = sub_10007B31C();
  v6 = sub_10007B2EC();
  *(v4 + 104) = v6;
  *(v4 + 112) = v5;

  return _swift_task_switch(sub_1000545C8, v6, v5);
}

uint64_t sub_1000545C8()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData);
  *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData) = *(v0 + 72);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_100054688;
  v4 = *(v0 + 88);
  v5 = *(v0 + 145);

  return sub_10005378C(v5);
}

uint64_t sub_100054688()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_1000547A8, v4, v3);
}

uint64_t sub_1000547A8()
{
  v1 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 57) != 4)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 59) != 3)
  {
    v3 = *(v0 + 88);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if (*(v0 + 60) != 2)
    {
LABEL_6:
      v7 = *(v0 + 88);
      v6 = *(v0 + 96);
      v8 = *(v0 + 145);

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 58) = v8;

      sub_10007AF4C();
      goto LABEL_7;
    }
  }

  v4 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

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

  sub_10007AF4C();
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_100054A74;
  v14 = *(v0 + 88);

  return sub_10004A150();
}

uint64_t sub_100054A74()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_100054C60;
  }

  else
  {
    v7 = sub_100054BB0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100054BB0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 3;

  sub_10007AF4C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100054C60()
{
  v1 = v0;
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);

  *(v0 + 64) = v2;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
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

    result = sub_10007AF4C();
    if (v10 == 4)
    {
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v12 = *(v0 + 88);

      v13 = v8;

      sub_10005A3E4(5u, v8);
      sub_100018BDC(v22, v6, v8, v7, v9, 4u);
    }

    else
    {
      v18 = *(v0 + 88);
      v19 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_10005A3E4(2u, v19);
      sub_100018BDC(v22, v6, v8, v7, v9, v10);
    }

    v20 = v1[8];
  }

  else
  {
    v14 = *(v0 + 136);
    v15 = v1[11];
    v16 = v1[8];

    v17 = sub_10007AB7C();
    sub_10005A3E4(2u, v17);
  }

  v21 = v1[1];

  return v21();
}

uint64_t sub_100054EB4(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
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
      sub_10007AF3C();

      v8 = HIBYTE(v12);
      if (HIBYTE(v12) - 2 >= 4)
      {
        sub_10007B33C();
        v9 = sub_10007B35C();
        (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
        sub_10007B32C();

        v10 = sub_10007B31C();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = &protocol witness table for MainActor;
        *(v11 + 32) = v7;
        *(v11 + 40) = v8 & 1;
        sub_10000DAD0(0, 0, v6, &unk_10007EF80, v11);
      }
    }
  }

  return result;
}

uint64_t sub_100055078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  sub_10007B32C();
  *(v5 + 24) = sub_10007B31C();
  v7 = sub_10007B2EC();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_100055114, v7, v6);
}

uint64_t sub_100055114()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData);
  v2 = *v1;
  *(v0 + 48) = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000551E4;
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);

  return sub_100054528(v5, v2, v3);
}

uint64_t sub_1000551E4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_100055328, v5, v4);
}

uint64_t sub_100055328()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100055388(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
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
      sub_10007B33C();
      v8 = sub_10007B35C();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      sub_10007B32C();

      v9 = sub_10007B31C();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v7;
      sub_10004C328(0, 0, v6, &unk_10007EF10, v10);
    }
  }

  return result;
}

uint64_t sub_1000554F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 256) = a2;
  *(v7 + 72) = a1;
  *(v7 + 80) = a3;
  v8 = sub_10007B09C();
  *(v7 + 120) = v8;
  v9 = *(v8 - 8);
  *(v7 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  v11 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v12 = sub_10007AC4C();
  *(v7 + 160) = v12;
  v13 = *(v12 - 8);
  *(v7 + 168) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  v15 = sub_10007AE2C();
  *(v7 + 184) = v15;
  v16 = *(v15 - 8);
  *(v7 + 192) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 200) = swift_task_alloc();
  sub_10007B32C();
  *(v7 + 208) = sub_10007B31C();
  v19 = sub_10007B2EC();
  *(v7 + 216) = v19;
  *(v7 + 224) = v18;

  return _swift_task_switch(sub_1000556EC, v19, v18);
}

uint64_t sub_1000556EC()
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
    v32 = *(v0 + 200);
    v33 = *(v0 + 176);
    v35 = *(v0 + 144);
    v34 = *(v0 + 152);
    v36 = *(v0 + 136);

    v37 = *(v0 + 8);

    return v37(v6);
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

    v6 = sub_10001ED64();
    v10 = v6;
    sub_10007AE0C();
    v11 = v10;
    v12 = sub_10007AE1C();
    v13 = sub_10007B41C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v6;
      _os_log_impl(&_mh_execute_header, v12, v13, "iOS appIcon: icon: %@", v14, 0xCu);
      sub_100008824(v15, &qword_10009F570, &qword_10007DAF0);
    }

    else
    {

      v12 = v11;
    }

    v20 = *(v0 + 192);
    v19 = *(v0 + 200);
    v21 = *(v0 + 184);

    (*(v20 + 8))(v19, v21);
LABEL_12:
    v22 = *(v0 + 232);
    sub_100005C8C(0, &unk_10009F380, NSObject_ptr);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    v23 = *(v0 + 40);
    if (qword_10009DF58 != -1)
    {
      swift_once();
    }

    v24 = qword_10009EB00;
    v25 = sub_10007B51C();

    if (v25)
    {
      if (!v6)
      {
LABEL_20:
        v31 = *(v0 + 232);
        v6 = v24;
        goto LABEL_21;
      }
    }

    else
    {
      v26 = *(v0 + 232);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v27 = *(v0 + 48);
      v28 = [objc_allocWithZone(UIImage) init];
      v29 = sub_10007B51C();

      if (!v6)
      {
        if ((v29 & 1) == 0)
        {
          v39 = *(v0 + 232);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10007AF3C();

          v6 = *(v0 + 56);
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    v30 = *(v0 + 232);
LABEL_21:

    goto LABEL_22;
  }

  v16 = *(v0 + 88);
  if (v16)
  {
    v17 = *(v0 + 208);
    v18 = v16;

    v6 = *(v0 + 88);
    goto LABEL_12;
  }

  v40 = Strong;
  v41 = *(v0 + 160);
  v42 = *(v0 + 168);
  v43 = *(v0 + 152);
  sub_1000187C8(*(v0 + 72), v43, &unk_10009ED10, &qword_10007D310);
  if ((*(v42 + 48))(v43, 1, v41) == 1)
  {
    v44 = *(v0 + 208);
    v45 = *(v0 + 152);

    sub_100008824(v45, &unk_10009ED10, &qword_10007D310);
    v6 = 0;
    goto LABEL_12;
  }

  (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
  v46 = *(v40 + 56);
  if (*(v40 + 64) == 1)
  {
    v47 = *(v40 + 56);
  }

  else
  {
    v49 = *(v0 + 128);
    v48 = *(v0 + 136);
    v50 = *(v0 + 120);
    v51 = *(v40 + 56);
    swift_retain_n();
    sub_10007B40C();
    v52 = sub_10007B0BC();
    sub_10007ADFC();

    sub_10007B08C();
    swift_getAtKeyPath();
    sub_100066FD8(v46, 0);
    (*(v49 + 8))(v48, v50);
    sub_100066FD8(v46, 0);
    v47 = *(v0 + 64);
  }

  v53 = swift_unknownObjectWeakLoadStrong();
  if (v53)
  {
    v54 = *(v53 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_itemUTI + 8);
    if (v54)
    {
      v55 = *(v0 + 168);
      v56 = *(v0 + 160);
      v57 = *(v0 + 144);
      v58 = *(v53 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_itemUTI);
      (*(v55 + 16))(v57, *(v0 + 176), v56);
      (*(v55 + 56))(v57, 0, 1, v56);

      LOBYTE(v56) = sub_100021110(v58, v54, v57);

      sub_100008824(v57, &unk_10009ED10, &qword_10007D310);
      if (sub_10001F6F4(v56) == 0x7265646C6F66 && v59 == 0xE600000000000000)
      {

        goto LABEL_37;
      }

      v60 = sub_10007B6BC();

      if (v60)
      {
LABEL_37:
        v6 = sub_10001ED64();
        swift_unknownObjectRelease();
        if (v6)
        {
          v61 = *(v0 + 208);

          (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
          goto LABEL_12;
        }

        goto LABEL_40;
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_40:
  v62 = swift_task_alloc();
  *(v0 + 240) = v62;
  *v62 = v0;
  v62[1] = sub_100055E0C;
  v63 = *(v0 + 176);
  v64 = *(v0 + 104);
  v65 = *(v0 + 112);

  return sub_1000676B0(v63, v64, v65, v47);
}

uint64_t sub_100055E0C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = a1;

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);

  return _swift_task_switch(sub_100055F34, v5, v4);
}

uint64_t sub_100055F34()
{
  v1 = v0[26];

  v2 = v0[31];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v3 = v0[29];
  sub_100005C8C(0, &unk_10009F380, NSObject_ptr);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v4 = v0[5];
  if (qword_10009DF58 != -1)
  {
    swift_once();
  }

  v5 = qword_10009EB00;
  v6 = sub_10007B51C();

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
  sub_10007AF3C();

  v8 = v0[6];
  v9 = [objc_allocWithZone(UIImage) init];
  v10 = sub_10007B51C();

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
  sub_10007AF3C();

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

uint64_t sub_1000561B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_100056228(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = sub_1000057A0(&qword_10009F378, &qword_10007EE90);
  v7 = *(a2 + v6[12]);
  v8 = *(a2 + v6[16]);
  v9 = *(a2 + v6[20]);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 24) = v11;
  *v11 = v3;
  v11[1] = sub_10005636C;

  return v13(a2, v7, v8, v9);
}

uint64_t sub_10005636C(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

void sub_10005647C(uint64_t *a1@<X0>, void *a2@<X8>)
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

uint64_t sub_1000564E4(char *a1)
{
  v2 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19[-v4];
  v6 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
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
    sub_10007AF3C();

    v12 = sub_10007AC4C();
    v13 = (*(*(v12 - 8) + 48))(v9, 1, v12);
    sub_100008824(v9, &unk_10009ED10, &qword_10007D310);
    if (v13 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

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
    sub_10007AF3C();

    if (v20 == 2 && v14)
    {
      v15 = sub_10007B35C();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      v16 = swift_allocObject();
      swift_weakInit();
      sub_10007B32C();

      v17 = sub_10007B31C();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = &protocol witness table for MainActor;
      v18[4] = v16;

      sub_10000DAD0(0, 0, v5, &unk_10007EE38, v18);
    }
  }

  return result;
}

uint64_t sub_100056820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_10007AE2C();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = sub_10007B32C();
  v4[12] = sub_10007B31C();
  v9 = sub_10007B2EC();
  v4[13] = v9;
  v4[14] = v8;

  return _swift_task_switch(sub_100056924, v9, v8);
}

uint64_t sub_100056924()
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
      sub_10007AE0C();
      v5 = sub_10007AE1C();
      v6 = sub_10007B41C();
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
      v0[18] = sub_10007B31C();
      v13 = swift_task_alloc();
      v0[19] = v13;
      *v13 = v0;
      v13[1] = sub_100056B04;

      return sub_100059770();
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

uint64_t sub_100056B04()
{
  v2 = v0;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 160) = v2;

  v7 = sub_10007B2EC();
  if (v2)
  {
    v8 = sub_100056D48;
  }

  else
  {
    v8 = sub_100056C60;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100056C60()
{
  v1 = v0[18];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_100056CC4, v2, v3);
}

uint64_t sub_100056CC4()
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

uint64_t sub_100056D48()
{
  v1 = v0[18];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_100056DAC, v2, v3);
}

uint64_t sub_100056DAC()
{
  v28 = v0;
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v5 = v0[9];

  swift_unknownObjectRelease();

  sub_10007AE0C();
  swift_errorRetain();
  v6 = sub_10007AE1C();
  v7 = sub_10007B3FC();

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
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v13 = sub_10007B1AC();
    v15 = sub_100037C08(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to refetch share for network change %s", v11, 0xCu);
    sub_10000585C(v12);

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

uint64_t sub_100057040()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_1000570B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_100057134(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_1000571C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();
}

uint64_t sub_100057248()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_1000572DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007AC4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_shouldStopAccessingSharedFileOrFolderURL;
  if (*(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_shouldStopAccessingSharedFileOrFolderURL) == 1)
  {
    sub_1000187C8(a1, &v19 - v14, &unk_10009ED10, &qword_10007D310);
    if ((*(v5 + 48))(v15, 1, v4) == 1)
    {
      sub_100008824(v15, &unk_10009ED10, &qword_10007D310);
    }

    else
    {
      sub_10007AC0C();
      (*(v5 + 8))(v15, v4);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v5 + 48))(v13, 1, v4))
  {
    result = sub_100008824(v13, &unk_10009ED10, &qword_10007D310);
    v18 = 0;
  }

  else
  {
    (*(v5 + 16))(v8, v13, v4);
    sub_100008824(v13, &unk_10009ED10, &qword_10007D310);
    v18 = sub_10007AC2C();
    result = (*(v5 + 8))(v8, v4);
  }

  *(v2 + v16) = v18;
  return result;
}

uint64_t sub_10005759C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  sub_1000187C8(a1, &v16 - v12, &unk_10009ED10, &qword_10007D310);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000187C8(v13, v8, &unk_10009ED10, &qword_10007D310);

  sub_10007AF4C();
  sub_1000572DC(v11);
  sub_100008824(v11, &unk_10009ED10, &qword_10007D310);
  return sub_100008824(v13, &unk_10009ED10, &qword_10007D310);
}

uint64_t sub_100057768()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

double sub_1000577D4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100057854(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_1000578D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_100057958(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_10007AF4C();
}

uint64_t sub_1000579D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = sub_10007AC4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v16 = v40;
  if (v40 > 4u)
  {
    if (v40 <= 6u)
    {
      if (v40 == 5)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_25;
        }

        v17 = 11;
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (v40 == 7 || v40 == 8)
    {
      goto LABEL_22;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v15, v10, v11);
      v27 = *(v2 + 24);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10007AF3C();

      v28 = v39;
      v29 = sub_1000202B0(v15, v39);
      v31 = v30;

      (*(v12 + 16))(v8, v15, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      LOBYTE(v28) = sub_100021110(v29, v31, v8);

      sub_100008824(v8, &unk_10009ED10, &qword_10007D310);
      v32 = *(a1 + 16);
      switch(v28)
      {
        case 1:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 1;
          break;
        case 2:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 2;
          break;
        case 3:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 3;
          break;
        case 4:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 4;
          break;
        case 5:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 5;
          break;
        case 6:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 6;
          break;
        case 7:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 7;
          break;
        case 8:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 8;
          break;
        case 9:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 9;
          break;
        case 10:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 10;
          break;
        case 11:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 11;
          break;
        case 12:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 12;
          break;
        case 13:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 13;
          break;
        default:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 0;
          break;
      }

      v34 = sub_10005F3AC(v33);
      if (v35)
      {
        v36 = (*(a1 + 56) + 16 * v34);
        v24 = *v36;
        v37 = v36[1];
        v38 = *(v12 + 8);

        v38(v15, v11);
        return v24;
      }

LABEL_64:
      (*(v12 + 8))(v15, v11);
      goto LABEL_25;
    }

    sub_100008824(v10, &unk_10009ED10, &qword_10007D310);
    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v18 = sub_10005F3AC(1);
    if (v19)
    {
      goto LABEL_27;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v18 = sub_10005F3AC(13);
    if (v20)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_16:
    if (v16)
    {
      if (!*(a1 + 16))
      {
        goto LABEL_25;
      }

      v17 = 7;
      goto LABEL_24;
    }

LABEL_22:
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v17 = 13;
    goto LABEL_24;
  }

  if (v40 <= 1u)
  {
    goto LABEL_16;
  }

  if (v40 == 2)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v17 = 8;
  }

  else
  {
    if (v40 == 3)
    {
      if (*(a1 + 16))
      {
        v17 = 9;
        goto LABEL_24;
      }

LABEL_25:
      if (*(a1 + 16))
      {
        v18 = sub_10005F3AC(13);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_67:
      __break(1u);
      JUMPOUT(0x100057F08);
    }

    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v17 = 10;
  }

LABEL_24:
  v18 = sub_10005F3AC(v17);
  if ((v21 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v23 = (*(a1 + 56) + 16 * v18);
  v24 = *v23;
  v25 = v23[1];

  return v24;
}

uint64_t sub_100057F40()
{
  v1 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v5 = sub_10007AC4C();
  v6 = 1;
  v7 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_100008824(v4, &unk_10009ED10, &qword_10007D310);
  if (v7 == 1)
  {
    v8 = *(v0 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v9 = v15;
    if (v15)
    {
      v10 = sub_10007B15C();
      v11 = NSSelectorFromString(v10);

      if ([v9 respondsToSelector:v11] && objc_msgSend(v9, "br_isCloudDocsShare"))
      {

        return 1;
      }

      v12 = sub_100050218();

      if (v12 == 9)
      {
        return 1;
      }
    }

    return 0;
  }

  return v6;
}

uint64_t sub_10005814C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 296) = a2;
  *(v4 + 304) = v3;
  *(v4 + 408) = a3;
  *(v4 + 288) = a1;
  v5 = sub_10007AE2C();
  *(v4 + 312) = v5;
  v6 = *(v5 - 8);
  *(v4 + 320) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  sub_10007B32C();
  *(v4 + 336) = sub_10007B31C();
  v9 = sub_10007B2EC();
  *(v4 + 344) = v9;
  *(v4 + 352) = v8;

  return _swift_task_switch(sub_100058248, v9, v8);
}

uint64_t sub_100058248()
{
  v1 = *(v0 + 304);
  if (*(v0 + 408))
  {
    v2 = sub_100021AB0();
    *(v0 + 368) = v2;
    v3 = v0 + 16;
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v6 = v2;
    v7 = sub_10007B15C();
    *(v0 + 392) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_1000587EC;
    v8 = swift_continuation_init();
    *(v0 + 200) = sub_1000057A0(&unk_10009F3B0, &qword_10007F298);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100068868;
    *(v0 + 168) = &unk_100097D38;
    *(v0 + 176) = v8;
    [v6 fetchShareParticipantWithPhoneNumber:v7 completionHandler:v0 + 144];
  }

  else
  {
    v9 = sub_100021AB0();
    *(v0 + 360) = v9;
    v3 = v0 + 80;
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = v9;
    v13 = sub_10007B15C();
    *(v0 + 376) = v13;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_100058630;
    v14 = swift_continuation_init();
    *(v0 + 264) = sub_1000057A0(&unk_10009F3B0, &qword_10007F298);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100068868;
    *(v0 + 232) = &unk_100097D60;
    *(v0 + 240) = v14;
    [v12 fetchShareParticipantWithEmailAddress:v13 completionHandler:v0 + 208];
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_100058630()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 384) = v3;
  v4 = *(v1 + 352);
  v5 = *(v1 + 344);
  if (v3)
  {
    v6 = sub_1000589A8;
  }

  else
  {
    v6 = sub_100058760;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100058760()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[42];

  v4 = v0[35];

  v5 = v0[41];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_1000587EC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 352);
  v5 = *(v1 + 344);
  if (v3)
  {
    v6 = sub_100058BA4;
  }

  else
  {
    v6 = sub_10005891C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10005891C()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[42];

  v4 = v0[34];

  v5 = v0[41];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_1000589A8()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[42];

  swift_willThrow();

  v5 = v0[48];
  v6 = v0[41];
  sub_10007AE0C();
  swift_errorRetain();
  v7 = sub_10007AE1C();
  v8 = sub_10007B3FC();

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
    sub_100008824(v10, &qword_10009F570, &qword_10007DAF0);
  }

  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];

  (*(v13 + 8))(v12, v14);
  v15 = sub_10007AB7C();
  sub_100005AB8();
  swift_allocError();
  *v16 = 0xD000000000000019;
  *(v16 + 8) = 0x8000000100082610;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 2;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100058BA4()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[46];
  v4 = v0[42];

  swift_willThrow();

  v5 = v0[50];
  v6 = v0[41];
  sub_10007AE0C();
  swift_errorRetain();
  v7 = sub_10007AE1C();
  v8 = sub_10007B3FC();

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
    sub_100008824(v10, &qword_10009F570, &qword_10007DAF0);
  }

  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];

  (*(v13 + 8))(v12, v14);
  v15 = sub_10007AB7C();
  sub_100005AB8();
  swift_allocError();
  *v16 = 0xD000000000000019;
  *(v16 + 8) = 0x8000000100082610;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 2;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100058DA4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100005918((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
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

uint64_t sub_100058E7C(uint64_t a1, unsigned __int8 a2)
{
  if (sub_10004F79C())
  {
    v5 = *(v2 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

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

    sub_10007AF3C();

    if (v13)
    {
      goto LABEL_6;
    }
  }

  v7 = *(v2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (v12 != 1)
  {
    return 3;
  }

LABEL_6:
  v8 = *(v2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (v11 & 1 | a2 & (a1 == 3))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100059058(uint64_t a1, char a2, char a3)
{
  *(v4 + 116) = a3;
  *(v4 + 115) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = sub_10007AE2C();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  sub_10007B32C();
  *(v4 + 64) = sub_10007B31C();
  v9 = sub_10007B2EC();
  *(v4 + 72) = v9;
  *(v4 + 80) = v8;

  return _swift_task_switch(sub_100059154, v9, v8);
}

uint64_t sub_100059154()
{
  v1 = *(*(v0 + 32) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v2 = *(v0 + 16);
  *(v0 + 88) = v2;
  if (!v2)
  {
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);

    sub_100005AB8();
    swift_allocError();
    *v20 = 0xD000000000000034;
    *(v20 + 8) = 0x80000001000825D0;
    *(v20 + 16) = xmmword_10007E710;
    *(v20 + 32) = 0x8000000100082500;
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

    sub_10007AF3C();

    if (*(v0 + 114) == 1)
    {
      v5 = *(v0 + 56);
      v4 = *(v0 + 64);

      sub_10007AE0C();
      v6 = sub_10007AE1C();
      v7 = sub_10007B41C();
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
  *(v0 + 96) = sub_100069054();
  *(v0 + 104) = v16;
  *(v0 + 112) = v17;

  return _swift_task_switch(sub_100059424, 0, 0);
}

uint64_t sub_100059424()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007B64C())
  {
    v3 = 0;
    v4 = *(v0 + 104);
    v5 = v1 & 0xC000000000000001;
    v6 = *(v0 + 24) + 32;
    v7 = &stru_10009D000;
    v20 = *(v0 + 100);
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v9 = *(v0 + 24);
        v10 = sub_10007B5DC();
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
          return sub_10007B63C();
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
      [v1 v7[52].offs];
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
        v7 = &stru_10009D000;
        goto LABEL_5;
      }

      v8 = 2;
      v7 = &stru_10009D000;
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

  return _swift_task_switch(sub_1000596FC, v17, v18);
}

uint64_t sub_1000596FC()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100059770()
{
  v1[4] = v0;
  v2 = sub_10007AE2C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = sub_10007AC4C();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_10007B32C();
  v1[18] = sub_10007B31C();
  v10 = sub_10007B2EC();
  v1[19] = v10;
  v1[20] = v9;

  return _swift_task_switch(sub_100059940, v10, v9);
}

uint64_t sub_100059940()
{
  v59 = v0;
  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

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
  sub_10007AF3C();

  v6 = *(v3 + 48);
  *(v0 + 168) = v6;
  *(v0 + 176) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);

    sub_100008824(v8, &unk_10009ED10, &qword_10007D310);
    sub_100005AB8();
    swift_allocError();
    *v9 = 0xD000000000000016;
    *(v9 + 8) = 0x80000001000822D0;
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
  sub_10007AE0C();
  (*(v34 + 16))(v31, v32, v33);
  v36 = sub_10007AE1C();
  v37 = sub_10007B41C();
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
    sub_1000661F4(&qword_10009EB10, &type metadata accessor for URL);
    v46 = sub_10007B69C();
    v55 = v42;
    v48 = v47;
    v54 = v37;
    v49 = *(v40 + 8);
    v49(v39, v41);
    v50 = sub_100037C08(v46, v48, &v58);

    *(v45 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v36, v54, "Fetching share for URL: %s", v45, 0xCu);
    sub_10000585C(v56);

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
  v51[1] = sub_100059E2C;
  v52 = *(v0 + 136);
  v53 = *(v0 + 88);

  return sub_100025350(v53, v52);
}

uint64_t sub_100059E2C(uint64_t a1)
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
    v9 = sub_10005A2E8;
  }

  else
  {
    v9 = sub_100059F70;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100059F70()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  sub_10002591C(v6, v5, &unk_10009ED10, &qword_10007D310);
  sub_1000187C8(v5, v7, &unk_10009ED10, &qword_10007D310);
  LODWORD(v4) = v2(v7, 1, v4);
  sub_100008824(v7, &unk_10009ED10, &qword_10007D310);
  v8 = v0[25];
  if (v4 != 1)
  {
    v9 = [objc_allocWithZone(BRCKShareSubitem) initWithShare:v8];

    v8 = v9;
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[4];
  sub_1000187C8(v0[12], v10, &unk_10009ED10, &qword_10007D310);
  v13 = *(v12 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderURL);
  sub_1000187C8(v10, v11, &unk_10009ED10, &qword_10007D310);

  sub_100007330(v11);

  sub_100008824(v10, &unk_10009ED10, &qword_10007D310);
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

    sub_10007AF4C();
    sub_100008824(v19, &unk_10009ED10, &qword_10007D310);
    v15(v16, v17);
  }

  else
  {
    v33 = v0[23];
    v21 = v0[8];
    v20 = v0[9];
    v0[2] = 0;
    swift_retain_n();
    sub_10007AF4C();
    (*(v18 + 56))(v20, 1, 1, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000187C8(v20, v21, &unk_10009ED10, &qword_10007D310);

    sub_10007AF4C();
    sub_100008824(v20, &unk_10009ED10, &qword_10007D310);

    sub_100008824(v19, &unk_10009ED10, &qword_10007D310);
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

uint64_t sub_10005A2E8()
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

void sub_10005A3E4(unsigned __int8 a1, void *a2)
{
  v4 = a1;
  v5 = sub_10007AE2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v56 - v11;
  if (v4 == 6)
  {
    sub_10004F634();
    v62 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    sub_100024F98(v62);
    swift_unknownObjectRelease();
    v13 = v62;
  }

  else
  {
    v14 = v2;
    if (a2)
    {
      v15 = a2;
      sub_10007AE0C();
      v16 = v15;
      v17 = sub_10007AE1C();
      v18 = sub_10007B3FC();

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
        v20 = sub_10007B26C();
        v22 = v21;
        if ((" to the next service" & 0x2000000000000000) != 0)
        {
          v23 = (" to the next service" >> 40) & 0xF0000;
        }

        else
        {
          v23 = 2031616;
        }

        v61 = v14;
        if (v23)
        {
          v24 = v20;
          while (sub_10007B26C() != v24 || v25 != v22)
          {
            v26 = sub_10007B6BC();

            if (v26)
            {
              goto LABEL_31;
            }

            if ((v23 ^ sub_10007B20C()) < 0x4000)
            {
              goto LABEL_16;
            }
          }

LABEL_31:

          sub_10007B27C();
          v41 = sub_10007B1DC();
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
        v45 = sub_100037C08(v27, v28, &v63);

        *(v44 + 1) = v45;
        *(v44 + 6) = 2080;
        v46 = v16;
        v47 = [v46 description];
        v48 = sub_10007B19C();
        v50 = v49;

        v51 = sub_100037C08(v48, v50, &v63);

        *(v44 + 14) = v51;
        _os_log_impl(&_mh_execute_header, v43, v58, "%s cancelling via extension with error: %s", v44, 0x16u);
        swift_arrayDestroy();

        (*(v62 + 1))(v12, v5);
      }

      else
      {

        (*(v6 + 8))(v12, v5);
      }

      sub_10004F634();
      sub_100024F98(v16);
    }

    else
    {
      sub_10007AE0C();
      v29 = sub_10007AE1C();
      v30 = sub_10007B41C();
      if (os_log_type_enabled(v29, v30))
      {
        LODWORD(v59) = v30;
        v62 = v6;
        v31 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v63 = v58;
        v60 = v31;
        LODWORD(v31->isa) = 136315138;
        v32 = sub_10007B26C();
        v34 = v33;
        if ((" to the next service" & 0x2000000000000000) != 0)
        {
          v35 = (" to the next service" >> 40) & 0xF0000;
        }

        else
        {
          v35 = 2031616;
        }

        v61 = v14;
        if (v35)
        {
          v36 = v32;
          while (sub_10007B26C() != v36 || v37 != v34)
          {
            v38 = sub_10007B6BC();

            if (v38)
            {
              goto LABEL_35;
            }

            if ((v35 ^ sub_10007B20C()) < 0x4000)
            {
              goto LABEL_27;
            }
          }

LABEL_35:

          sub_10007B27C();
          v52 = sub_10007B1DC();
          v40 = v53;

          v39 = v52;
        }

        else
        {
LABEL_27:

          v39 = 0;
          v40 = 0xE000000000000000;
        }

        v54 = sub_100037C08(v39, v40, &v63);

        v55 = v60;
        *(&v60->isa + 4) = v54;
        _os_log_impl(&_mh_execute_header, v29, v59, "%s dismissing via extension without error", v55, 0xCu);
        sub_10000585C(v58);

        (*(v62 + 1))(v10, v5);
      }

      else
      {

        (*(v6 + 8))(v10, v5);
      }

      sub_10004F634();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10005AA6C()
{
  v0 = sub_10007AE2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v5 = sub_10007AE1C();
  v6 = sub_10007B3DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Finish", v7, 0xCu);
    sub_10000585C(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10005AC04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_1000687F0(v0 + 40);
  sub_100066FD8(*(v0 + 56), *(v0 + 64));
  v4 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isDelegateInitialized;
  v5 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v7 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__executionMode;
  v8 = sub_1000057A0(&unk_10009F120, &qword_10007ED78);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingType;
  v10 = sub_1000057A0(&qword_10009F118, &qword_10007ED70);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingStage;
  v12 = sub_1000057A0(&qword_10009F110, &qword_10007ED68);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__addedAddresses;
  v14 = sub_1000057A0(&qword_10009F108, &qword_10007ED60);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__createOrLoadStage;
  v16 = sub_1000057A0(&qword_10009F100, &qword_10007ED58);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__addingAddressesStage;
  v18 = sub_1000057A0(&qword_10009F0F8, &qword_10007ED50);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__savingStage;
  v20 = sub_1000057A0(&qword_10009F0F0, &qword_10007ED48);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__alertNowShowing;
  v22 = sub_1000057A0(&qword_10009F0E8, &qword_10007ED40);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v6(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isShowingAlert, v5);
  v6(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isFolderShare, v5);
  v23 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderURL);

  v6(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isFolderSubshare, v5);
  v24 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderTitle);

  v25 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckFolderSubitemName);

  v26 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__folderSharingStage;
  v27 = sub_1000057A0(&qword_10009F0E0, &qword_10007ED38);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  v28 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__shareSaveStatus;
  v29 = sub_1000057A0(&qword_10009F0D8, &qword_10007ED30);
  (*(*(v29 - 8) + 8))(v0 + v28, v29);
  v30 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData);
  swift_unknownObjectRelease();
  v31 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingOptionsAllowedFromSPI;
  v32 = sub_1000057A0(&qword_10009F0D0, &qword_10007ED28);
  (*(*(v32 - 8) + 8))(v0 + v31, v32);
  v33 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__yourNameAndEmail;
  v34 = sub_1000057A0(&qword_10009F0C8, &qword_10007ED20);
  (*(*(v34 - 8) + 8))(v0 + v33, v34);
  v35 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharedFileOrFolderURL;
  v36 = sub_1000057A0(&qword_10009F0C0, &unk_10007D660);
  (*(*(v36 - 8) + 8))(v0 + v35, v36);
  v37 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__itemUTI;
  v38 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  v39 = *(*(v38 - 8) + 8);
  v39(v0 + v37, v38);
  v6(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isShareRoot, v5);
  v40 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnail;
  v41 = sub_1000057A0(&unk_10009F0B0, &qword_10007ED08);
  (*(*(v41 - 8) + 8))(v0 + v40, v41);
  v42 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnailFromCloudKitSPI;
  v43 = sub_1000057A0(&qword_10009F0A8, &qword_10007ED00);
  v44 = *(*(v43 - 8) + 8);
  v44(v0 + v42, v43);
  v44(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnailFromDocumentSPI, v43);
  v45 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__itemTitle;
  v46 = sub_1000057A0(&qword_10009F0A0, &qword_10007ECF8);
  v47 = *(*(v46 - 8) + 8);
  v47(v0 + v45, v46);
  v39(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sourceAppBundleID, v38);
  v47(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sectionTitleForAuxiliaryToggles, v46);
  v47(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__primaryCheckboxTitle, v46);
  v47(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__secondaryCheckboxTitle, v46);
  v6(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__primaryCheckboxState, v5);
  v6(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__secondaryCheckboxState, v5);
  v48 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckContainerIdentifier;
  v49 = sub_1000057A0(&qword_10009F098, &qword_10007ECF0);
  (*(*(v49 - 8) + 8))(v0 + v48, v49);
  v47(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__helpAnchor, v46);
  v50 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__participantDetails;
  v51 = sub_1000057A0(&qword_10009F090, &qword_10007ECE8);
  (*(*(v51 - 8) + 8))(v0 + v50, v51);
  v52 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_networkMonitor);

  return v0;
}

uint64_t sub_10005B430()
{
  sub_10005AC04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10005B488()
{
  v0 = sub_10007B15C();
  v1 = [objc_opt_self() imageNamed:v0];

  if (!v1)
  {
    v1 = [objc_allocWithZone(UIImage) init];
  }

  qword_10009EB00 = v1;
}

uint64_t sub_10005B51C(char a1)
{
  *(v2 + 168) = v1;
  *(v2 + 106) = a1;
  v3 = *(*(sub_1000057A0(&qword_10009ECD0, &qword_10007E810) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v4 = type metadata accessor for AlertViewModelButton(0);
  *(v2 + 192) = v4;
  v5 = *(v4 - 8);
  *(v2 + 200) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v7 = sub_10007AE2C();
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
  v10 = *(*(sub_1000057A0(&qword_10009F370, &qword_10007FC90) - 8) + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = sub_10007B32C();
  *(v2 + 312) = sub_10007B31C();
  v12 = sub_10007B2EC();
  *(v2 + 320) = v12;
  *(v2 + 328) = v11;

  return _swift_task_switch(sub_10005B744, v12, v11);
}

uint64_t sub_10005B744()
{
  v1 = *(v0 + 168);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v0 + 57) & 1) != 0 || (v2 = *(v0 + 168), swift_getKeyPath(), swift_getKeyPath(), sub_10007AF3C(), , , *(v0 + 58) - 2 > 3))
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
    sub_10007B33C();
    v6 = sub_10007B35C();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);

    v7 = sub_10007B31C();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    v9 = sub_10004C328(0, 0, v4, &unk_10007F4C0, v8);
    *(v0 + 336) = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 0;

    sub_10007AF4C();
    v10 = async function pointer to Task.value.getter[1];
    v11 = swift_task_alloc();
    *(v0 + 344) = v11;
    v12 = sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    *(v0 + 352) = v12;
    *v11 = v0;
    v11[1] = sub_10005BA94;

    return Task.value.getter(v12, v9, &type metadata for () + 8, v12, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10005BA94()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = sub_10005BD28;
  }

  else
  {
    v7 = sub_10005BBD0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005BBD0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 168);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 105) = 2;

  sub_10007AF4C();

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

uint64_t sub_10005BD28()
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

    sub_10007AF4C();
    sub_10007AE0C();
    sub_100018B7C(v4, v3, v5, v6, v7, v264);
    v8 = v3;
    v9 = sub_10007AE1C();
    v10 = sub_10007B3FC();
    v256 = v5;
    v11 = v5;
    v12 = v6;
    v13 = v6;
    v14 = v264;
    sub_100018BDC(v4, v8, v11, v13, v7, v264);
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
      sub_100018B7C(v4, v18, v256, v12, v7, v264);
      v21 = sub_10007B1AC();
      v23 = sub_100037C08(v21, v22, &v267);
      v24 = v12;

      *(v19 + 4) = v23;
      v14 = v264;
      _os_log_impl(&_mh_execute_header, loga, v245, "saveShareAndReportErrors error: %s", v19, 0xCu);
      sub_10000585C(v20);

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

      sub_100018B7C(v4, v18, v256, v24, v261, 4u);
      v31 = v256;
      v32 = v18;
      sub_100027710(22);
      v34 = v33;

      if (v34)
      {
        v246 = v24;
        v35 = *(v0 + 360);
        v36 = *(v0 + 280);

        sub_10007AE0C();
        v37 = sub_10007AE1C();
        v38 = sub_10007B3FC();
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
          v44[1] = sub_10005D48C;
          v45 = *(v0 + 168);

          return sub_10005B51C(0);
        }

        v128 = *(v0 + 312);

        v24 = v246;
        v30 = v256;
        v49 = v32;
        LOBYTE(v14) = v264;
        goto LABEL_16;
      }

      v63 = v31;
      sub_100027710(14);
      v65 = v64;

      if (v65)
      {
        v247 = v24;
        v66 = *(v0 + 272);
        sub_10007AE0C();
        v67 = sub_10007AE1C();
        v68 = sub_10007B3FC();
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

        v77 = sub_10007B11C();
        v78 = sub_10007B19C();
        if (*(v77 + 16))
        {
          v80 = sub_100037AD8(v78, v79);
          v82 = v81;

          v83 = v32;
          if (v82)
          {
            sub_1000057F8(*(v77 + 56) + 32 * v80, v0 + 112);

            sub_100005C8C(0, &qword_10009F3E0, CKShare_ptr);
            if (swift_dynamicCast())
            {
              v84 = *(v0 + 264);
              sub_100018BDC(v4, v32, v256, v247, v261, 4u);
              v85 = *(v0 + 152);
              sub_10007AE0C();
              v86 = v85;
              v87 = sub_10007AE1C();
              v88 = sub_10007B3EC();

              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                v90 = swift_slowAlloc();
                *v89 = 138412290;
                *(v89 + 4) = v86;
                *v90 = v86;
                v91 = v86;
                _os_log_impl(&_mh_execute_header, v87, v88, "saveShareAndReportErrors oplock error server's updated share: %@", v89, 0xCu);
                sub_100008824(v90, &qword_10009F570, &qword_10007DAF0);
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

              sub_10007AF4C();
              sub_10007B0AC();
              LOWORD(v232._object) = 256;
              v98 = sub_10007B0CC();
              v100 = v99;
              v102 = v101;
              v104 = v103;
              v105 = v94[6];
              v106 = sub_10007B05C();
              (*(*(v106 - 8) + 56))(v93 + v105, 1, 1, v106);
              v107 = swift_allocObject();
              swift_weakInit();
              sub_10007AC8C();
              v108 = v93 + v94[5];
              *v108 = v98;
              *(v108 + 8) = v100;
              *(v108 + 16) = v102 & 1;
              *(v108 + 24) = v104;
              v109 = (v93 + v94[7]);
              *v109 = sub_1000687D4;
              v109[1] = v107;
              v110 = objc_opt_self();
              v111 = [v110 mainBundle];
              v232._countAndFlagsBits = 0x8000000100082990;
              v270._countAndFlagsBits = 0x1000000000000019;
              v270._object = 0x8000000100082970;
              v275.value._countAndFlagsBits = 0;
              v275.value._object = 0;
              v112.super.isa = v111;
              v280._countAndFlagsBits = 0;
              v280._object = 0xE000000000000000;
              v113 = sub_10007AA5C(v270, v275, v112, v280, v232);
              v115 = v114;

              v116 = v93;
              v117 = [v110 mainBundle];
              v233._countAndFlagsBits = 0x80000001000829E0;
              v271._object = 0x80000001000829C0;
              v271._countAndFlagsBits = 0xD000000000000011;
              v276.value._countAndFlagsBits = 0;
              v276.value._object = 0;
              v118.super.isa = v117;
              v281._countAndFlagsBits = 0;
              v281._object = 0xE000000000000000;
              v119 = sub_10007AA5C(v271, v276, v118, v281, v233);
              v121 = v120;

              sub_1000057A0(&qword_10009F3D8, &qword_10007F4C8);
              v122 = *(v235 + 72);
              v123 = (*(v235 + 80) + 32) & ~*(v235 + 80);
              v124 = swift_allocObject();
              *(v124 + 16) = xmmword_10007CF20;
              sub_1000686A4(v116, v124 + v123);
              sub_10007AC8C();
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
              sub_1000187C8(v236, v248, &qword_10009ECD0, &qword_10007E810);

              sub_10007AF4C();
              sub_100008824(v236, &qword_10009ECD0, &qword_10007E810);
              swift_getKeyPath();
              swift_getKeyPath();
              *(v242 + 63) = 1;

              sub_10007AF4C();

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
        sub_10007AE0C();
        v224 = sub_10007AE1C();
        v225 = sub_10007B3EC();
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
        sub_100005AB8();
        swift_allocError();
        *v231 = v4;
        *(v231 + 8) = v83;
        *(v231 + 16) = v256;
        *(v231 + 24) = v247;
        *(v231 + 32) = v261;
        *(v231 + 40) = 4;
        swift_willThrow();
        sub_100018B7C(v4, v83, v256, v247, v261, 4u);

        v0 = v242;

        sub_100018BDC(v4, v83, v256, v247, v261, 4u);
        goto LABEL_17;
      }

      v129 = *(v0 + 360);
      v130 = *(v0 + 312);

      v131 = v63;
      sub_100027988(2011);
      LOBYTE(v129) = v132;

      if (v129)
      {
        v255 = v131;
        v133 = *(v0 + 248);
        sub_100018BDC(v4, v32, v256, v24, v261, 4u);
        sub_10007AE0C();
        v134 = sub_10007AE1C();
        v135 = sub_10007B3EC();
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
        sub_10007B0AC();
        LOWORD(v232._object) = 256;
        v144 = sub_10007B0CC();
        v146 = v145;
        LOBYTE(v139) = v147;
        v149 = v148;
        v150 = v141[6];
        v151 = sub_10007B05C();
        (*(*(v151 - 8) + 56))(v140 + v150, 1, 1, v151);
        v152 = swift_allocObject();
        swift_weakInit();
        sub_10007AC8C();
        v153 = v140 + v141[5];
        *v153 = v144;
        *(v153 + 8) = v146;
        *(v153 + 16) = v139 & 1;
        *(v153 + 24) = v149;
        v154 = (v140 + v141[7]);
        *v154 = sub_1000687CC;
        v154[1] = v152;
        v155 = [objc_opt_self() mainBundle];
        v232._countAndFlagsBits = 0x8000000100082920;
        v272._countAndFlagsBits = 0x6E67695320746F4ELL;
        v272._object = 0xED00006E49206465;
        v277.value._countAndFlagsBits = 0;
        v277.value._object = 0;
        v156.super.isa = v155;
        v282._countAndFlagsBits = 0;
        v282._object = 0xE000000000000000;
        v157 = sub_10007AA5C(v272, v277, v156, v282, v232);
        v159 = v158;

        v160 = sub_100066FE4();
        v161 = sub_1000579D0(v160);
        v163 = v162;

        sub_1000057A0(&qword_10009F3D8, &qword_10007F4C8);
        v164 = *(v243 + 72);
        v165 = (*(v243 + 80) + 32) & ~*(v243 + 80);
        v166 = swift_allocObject();
        *(v166 + 16) = xmmword_10007CF20;
        v167 = v166 + v165;
        v116 = v140;
        sub_1000686A4(v140, v167);
        sub_10007AC8C();
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
        sub_1000187C8(v142, v249, &qword_10009ECD0, &qword_10007E810);

        sub_10007AF4C();
        sub_100008824(v142, &qword_10009ECD0, &qword_10007E810);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 62) = 1;

LABEL_39:
        sub_10007AF4C();

LABEL_40:

        sub_100068770(v116);
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
      sub_100027988(2045);
      v173 = v172;

      if (v173)
      {
        v255 = v171;
        v174 = *(v0 + 240);
        sub_100018BDC(v4, v32, v256, v24, v261, 4u);
        sub_10007AE0C();
        v175 = sub_10007AE1C();
        v176 = sub_10007B3EC();
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
        sub_10007B0AC();
        LOWORD(v232._object) = 256;
        v183 = sub_10007B0CC();
        v185 = v184;
        LOBYTE(v180) = v186;
        v188 = v187;
        v189 = v182[6];
        v190 = sub_10007B05C();
        (*(*(v190 - 8) + 56))(v181 + v189, 1, 1, v190);
        v191 = swift_allocObject();
        swift_weakInit();
        sub_10007AC8C();
        v192 = v181 + v182[5];
        *v192 = v183;
        *(v192 + 8) = v185;
        *(v192 + 16) = v180 & 1;
        *(v192 + 24) = v188;
        v193 = (v181 + v182[7]);
        *v193 = sub_10006885C;
        v193[1] = v191;
        v194 = objc_opt_self();
        v195 = [v194 mainBundle];
        v232._countAndFlagsBits = 0x80000001000827F0;
        v273._object = 0x80000001000827D0;
        v273._countAndFlagsBits = 0x1000000000000017;
        v278.value._countAndFlagsBits = 0;
        v278.value._object = 0;
        v196.super.isa = v195;
        v283._countAndFlagsBits = 0;
        v283._object = 0xE000000000000000;
        v197 = sub_10007AA5C(v273, v278, v196, v283, v232);
        v199 = v198;

        v200 = [v194 mainBundle];
        v234._countAndFlagsBits = 0x80000001000828B0;
        v274._countAndFlagsBits = 0xD000000000000041;
        v274._object = 0x8000000100082860;
        v279.value._countAndFlagsBits = 0;
        v279.value._object = 0;
        v201.super.isa = v200;
        v284._countAndFlagsBits = 0;
        v284._object = 0xE000000000000000;
        v202 = sub_10007AA5C(v274, v279, v201, v284, v234);
        v204 = v203;

        sub_1000057A0(&qword_10009F3D8, &qword_10007F4C8);
        isa = logb[9].isa;
        v206 = (LOBYTE(logb[10].isa) + 32) & ~LOBYTE(logb[10].isa);
        v207 = swift_allocObject();
        *(v207 + 16) = xmmword_10007CF20;
        v208 = v207 + v206;
        v116 = v181;
        sub_1000686A4(v181, v208);
        sub_10007AC8C();
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
        sub_1000187C8(v244, v250, &qword_10009ECD0, &qword_10007E810);

        sub_10007AF4C();
        sub_100008824(v244, &qword_10009ECD0, &qword_10007E810);
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
    sub_100005AB8();
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

uint64_t sub_10005D48C()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = sub_10005D718;
  }

  else
  {
    v7 = sub_10005D5C8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005D5C8()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  v6 = v0[42];
  v7 = v0[39];

  sub_100018BDC(v5, v4, v3, v1, v2, 4u);
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

uint64_t sub_10005D718()
{
  v1 = v0[39];
  v2 = v0[29];

  sub_10007AE0C();
  v3 = sub_10007AE1C();
  v4 = sub_10007B3FC();
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

  sub_100018BDC(v30, v10, v9, v32, v7, 4u);
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

uint64_t sub_10005D918()
{
  v1 = sub_10007AE2C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = sub_10007B32C();
  v0[6] = sub_10007B31C();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10005DA20;

  return sub_10004A150();
}

uint64_t sub_10005DA20()
{
  v2 = v0;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 64) = v2;

  v7 = sub_10007B2EC();
  if (v2)
  {
    v8 = sub_10005DC88;
  }

  else
  {
    v8 = sub_10005DB7C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10005DB7C()
{
  v1 = v0[6];
  v2 = v0[4];

  sub_10007AE0C();
  v3 = sub_10007AE1C();
  v4 = sub_10007B41C();
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

uint64_t sub_10005DC88()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_10005DCF8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF4C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10005A3E4(6u, 0);
  }

  return result;
}

uint64_t sub_10005DDB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10007AF4C();
  }

  return result;
}

uint64_t sub_10005DE38()
{
  v1 = (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderURL) + *(**(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderURL) + 104));
  v2 = *v1;
  v3 = v1[1];
  *v1 = sub_1000606E0;
  v1[1] = v0;

  sub_1000087A4(v2);

  v4 = (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderTitle) + *(**(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderTitle) + 104));
  v5 = *v4;
  v6 = v4[1];
  *v4 = sub_1000088B4;
  v4[1] = v0;

  sub_1000087A4(v5);

  v7 = (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckFolderSubitemName) + *(**(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckFolderSubitemName) + 104));
  v8 = *v7;
  v9 = v7[1];
  *v7 = sub_1000606E4;
  v7[1] = v0;

  sub_1000087A4(v8);
}

uint64_t sub_10005DF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  sub_10007B32C();
  v4[11] = sub_10007B31C();
  v7 = sub_10007B2EC();
  v4[12] = v7;
  v4[13] = v6;

  return _swift_task_switch(sub_10005E058, v7, v6);
}

uint64_t sub_10005E058()
{
  v1 = v0[9];
  v2 = v0[10];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10005E13C;
  v5 = v0[9];
  v4 = v0[10];

  return sub_10004AE58(v4);
}

uint64_t sub_10005E13C()
{
  v2 = *v1;
  v3 = (*v1)[14];
  v4 = *v1;
  (*v1)[15] = v0;

  sub_100008824(v2[10], &unk_10009ED10, &qword_10007D310);
  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {
    v7 = sub_10005E4D0;
  }

  else
  {
    v7 = sub_10005E2A0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005E2A0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  if (!*(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData) || (v3 = *(v0 + 120), v4 = *(v0 + 72), swift_unknownObjectRetain(), sub_100067E54(), swift_unknownObjectRelease(), !v3))
  {
    v15 = *(v0 + 72);
    sub_10005A3E4(5u, 0);
LABEL_11:
    v22 = *(v0 + 80);

    v18 = *(v0 + 8);
    goto LABEL_12;
  }

  *(v0 + 64) = v3;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
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

      sub_10005A3E4(1u, v9);
      sub_100018BDC(v7, v6, v9, v8, v10, 7u);
    }

    else
    {
      v19 = *(v0 + 72);
      v20 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_10005A3E4(2u, v20);
      sub_100018BDC(v7, v6, v9, v8, v10, v11);
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

uint64_t sub_10005E4D0()
{
  v1 = *(v0 + 88);

  *(v0 + 64) = *(v0 + 120);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
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

      sub_10005A3E4(1u, v6);
      sub_100018BDC(v4, v3, v6, v5, v7, 7u);
    }

    else
    {
      v15 = *(v0 + 72);
      v16 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_10005A3E4(2u, v16);
      sub_100018BDC(v4, v3, v6, v5, v7, v8);
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

uint64_t shareStatus(url:)()
{
  v0 = sub_10007AC4C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_10007AE2C();
  v23[0] = *(v2 - 8);
  v23[1] = v2;
  v3 = *(v23[0] + 64);
  __chkstk_darwin(v2);
  v23[2] = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007AABC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057A0(&qword_10009E738, &unk_10007E780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007DE70;
  *(inited + 32) = NSURLUbiquitousItemIsSharedKey;
  *(inited + 40) = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  v11 = NSURLUbiquitousItemIsSharedKey;
  v12 = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  sub_10005FA34(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_10007ABBC();

  v13 = sub_10007AA8C();
  v14 = sub_10007AA9C();
  if (!v14)
  {
    v14 = NSURLUbiquitousSharedItemRoleParticipant;
  }

  v15 = v14;
  v16 = sub_10007B19C();
  v18 = v17;
  if (v16 == sub_10007B19C() && v18 == v19)
  {

    v20 = 256;
  }

  else
  {
    v21 = sub_10007B6BC();

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

uint64_t sub_10005EBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v9 = sub_1000057A0(&qword_10009F378, &qword_10007EE90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v23 - v12;
  v14 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v23 - v16;
  v18 = sub_10007B35C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1000187C8(a5, v13, &qword_10009F378, &qword_10007EE90);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a3;
  v20[5] = a4;
  sub_10002591C(v13, v20 + v19, &qword_10009F378, &qword_10007EE90);
  v21 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v24;
  v21[1] = a2;

  sub_10000DAD0(0, 0, v17, &unk_10007EEA0, v20);
}

uint64_t sub_10005EE04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v8[5] = v11;
  *v11 = v8;
  v11[1] = sub_10005EF08;

  return (v13)(v8 + 2, a6);
}

uint64_t sub_10005EF08()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_10005F004, 0, 0);
}

uint64_t sub_10005F004()
{
  v8 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v6 = v0[2];
  v7 = 0;
  v3 = v6;
  v2(&v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005F0F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_10005F170(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_10005F1E4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();
}

uint64_t sub_10005F25C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = sub_1000057A0(a5, a6);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  sub_1000187C8(a1, &v19 - v15, a5, a6);
  v17 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000187C8(v16, v14, a5, a6);

  sub_10007AF4C();
  return sub_100008824(v16, a5, a6);
}

unint64_t sub_10005F3AC(char a1)
{
  v3 = *(v1 + 40);
  sub_10007B74C();
  sub_10001F6F4(a1);
  sub_10007B1EC();

  v4 = sub_10007B76C();

  return sub_10005F434(a1, v4);
}

unint64_t sub_10005F434(char a1, uint64_t a2)
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
          v14 = sub_10007B6BC();

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

uint64_t sub_10005F8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1000057A0(&qword_10009F378, &qword_10007EE90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = &v19 - v11;
  sub_1000187C8(a1, &v19 - v11, &qword_10009F378, &qword_10007EE90);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  sub_10002591C(v12, v14 + v13, &qword_10009F378, &qword_10007EE90);
  v15 = sub_1000057A0(&qword_10009F298, &qword_10007EE08);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  result = sub_10007AEFC();
  *a4 = result;
  return result;
}

void *sub_10005FA34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000057A0(&unk_10009F410, &unk_10007F598);
    v3 = sub_10007B5AC();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_10007B19C();
      sub_10007B74C();
      v29 = v7;
      sub_10007B1EC();
      v9 = sub_10007B76C();

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
        v18 = sub_10007B19C();
        v20 = v19;
        if (v18 == sub_10007B19C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_10007B6BC();

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
  result = qword_10009EC70;
  if (!qword_10009EC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005FC7C()
{
  sub_10000CE98(319, &qword_10009EC80);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_10000CE98(319, &qword_10009EC88);
    if (v4 <= 0x3F)
    {
      v43 = *(v3 - 8) + 64;
      sub_10000CE98(319, &qword_10009EC90);
      if (v6 <= 0x3F)
      {
        v44 = *(v5 - 8) + 64;
        sub_10000CE98(319, &qword_10009EC98);
        if (v8 <= 0x3F)
        {
          v45 = *(v7 - 8) + 64;
          sub_10000CEE4(319, &qword_10009ECA0, &qword_10009ECA8, &qword_10007E808);
          if (v10 <= 0x3F)
          {
            v46 = *(v9 - 8) + 64;
            sub_10000CE98(319, &qword_10009ECB0);
            if (v12 <= 0x3F)
            {
              v47 = *(v11 - 8) + 64;
              sub_10000CE98(319, &qword_10009ECB8);
              if (v14 <= 0x3F)
              {
                v48 = *(v13 - 8) + 64;
                sub_10000CE98(319, &qword_10009ECC0);
                if (v16 <= 0x3F)
                {
                  v49 = *(v15 - 8) + 64;
                  sub_10000CEE4(319, &qword_10009ECC8, &qword_10009ECD0, &qword_10007E810);
                  if (v18 <= 0x3F)
                  {
                    v50 = *(v17 - 8) + 64;
                    sub_10000CEE4(319, &qword_10009ECD8, &qword_10009ECE0, &qword_10007E818);
                    if (v20 <= 0x3F)
                    {
                      v51 = *(v19 - 8) + 64;
                      sub_10000CE98(319, &qword_10009ECE8);
                      if (v22 <= 0x3F)
                      {
                        v52 = *(v21 - 8) + 64;
                        sub_10000CE98(319, &qword_10009ECF0);
                        if (v24 <= 0x3F)
                        {
                          v53 = *(v23 - 8) + 64;
                          sub_10000CEE4(319, &qword_10009ECF8, &unk_10009ED00, &unk_10007E838);
                          if (v26 <= 0x3F)
                          {
                            v54 = *(v25 - 8) + 64;
                            sub_10000CEE4(319, &qword_10009E4E8, &unk_10009ED10, &qword_10007D310);
                            if (v28 <= 0x3F)
                            {
                              v55 = *(v27 - 8) + 64;
                              sub_10000CEE4(319, &qword_10009E170, &qword_10009ED20, &qword_10007CF90);
                              if (v30 <= 0x3F)
                              {
                                v31 = *(v29 - 8) + 64;
                                sub_100060398(319, &qword_10009ED28, &qword_10009ED30, UIImage_ptr);
                                if (v33 <= 0x3F)
                                {
                                  v56 = *(v32 - 8) + 64;
                                  sub_10000CEE4(319, &qword_10009ED38, &qword_10009ED40, &qword_10007E868);
                                  if (v35 <= 0x3F)
                                  {
                                    v57 = *(v34 - 8) + 64;
                                    sub_10000CE98(319, &qword_10009ED48);
                                    if (v37 <= 0x3F)
                                    {
                                      v38 = *(v36 - 8) + 64;
                                      sub_100060398(319, &unk_10009ED50, &qword_10009E678, CKContainerID_ptr);
                                      if (v40 <= 0x3F)
                                      {
                                        v58 = *(v39 - 8) + 64;
                                        sub_10000CEE4(319, &qword_10009ED60, &unk_10009ED68, &qword_10007E870);
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

void sub_100060398(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100005C8C(255, a3, a4);
    v5 = sub_10007AF5C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100060474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000057A0(&qword_10009F3C8, &qword_10007F448);
    v3 = sub_10007B66C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100037AD8(v5, v6);
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

unint64_t sub_100060578(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000057A0(&qword_10009F3F8, &unk_10007F570);
    v3 = sub_10007B66C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_10005F3AC(v5);
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

unint64_t sub_1000606F8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_10007B64C();
    if (result)
    {
LABEL_3:
      sub_1000057A0(&qword_10009F358, &unk_10007EE20);
      result = sub_10007B5AC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_10007B64C();
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
    result = sub_10007B5DC();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    sub_10007AEDC();
    sub_1000661F4(&qword_10009F360, &type metadata accessor for AnyCancellable);
    result = sub_10007B12C();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1000661F4(&qword_10009F368, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = sub_10007B14C();
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

void *sub_10006098C(uint64_t a1)
{
  v2 = v1;
  v570 = a1;
  v493 = *v1;
  v514 = sub_1000057A0(&qword_10009EF48, &qword_10007EBA0);
  v513 = *(v514 - 8);
  v3 = *(v513 + 64);
  __chkstk_darwin(v514);
  v512 = &v384 - v4;
  v517 = sub_1000057A0(&qword_10009EF50, &qword_10007EBA8);
  v516 = *(v517 - 8);
  v5 = *(v516 + 64);
  __chkstk_darwin(v517);
  v515 = &v384 - v6;
  v520 = sub_1000057A0(&qword_10009EF58, &unk_10007EBB0);
  v519 = *(v520 - 8);
  v7 = *(v519 + 64);
  __chkstk_darwin(v520);
  v518 = &v384 - v8;
  v507 = sub_1000057A0(&unk_10009EF60, &unk_10007D600);
  v506 = *(v507 - 8);
  v9 = *(v506 + 64);
  __chkstk_darwin(v507);
  v504 = &v384 - v10;
  v508 = sub_1000057A0(&qword_10009E610, &unk_10007EBC0);
  v11 = *(*(v508 - 8) + 64);
  __chkstk_darwin(v508);
  v505 = &v384 - v12;
  v544 = sub_1000057A0(&qword_10009EF70, &unk_100080500);
  v509 = *(v544 - 8);
  v13 = *(v509 + 64);
  v14 = __chkstk_darwin(v544);
  v510 = &v384 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v511 = &v384 - v16;
  v498 = sub_1000057A0(&qword_10009EF78, &qword_10007EBD0);
  v17 = *(*(v498 - 8) + 64);
  __chkstk_darwin(v498);
  v496 = &v384 - v18;
  v501 = sub_1000057A0(&qword_10009EF80, &qword_10007EBD8);
  v499 = *(v501 - 8);
  v19 = *(v499 + 64);
  __chkstk_darwin(v501);
  v497 = &v384 - v20;
  v503 = sub_1000057A0(&qword_10009EF88, &qword_10007EBE0);
  v502 = *(v503 - 8);
  v21 = *(v502 + 64);
  __chkstk_darwin(v503);
  v500 = &v384 - v22;
  v495 = sub_1000057A0(&qword_10009EF90, &qword_10007EBE8);
  v494 = *(v495 - 8);
  v23 = *(v494 + 64);
  v24 = __chkstk_darwin(v495);
  v491 = &v384 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v492 = &v384 - v26;
  v488 = sub_1000057A0(&qword_10009EF98, &qword_10007EBF0);
  v487 = *(v488 - 8);
  v27 = *(v487 + 64);
  __chkstk_darwin(v488);
  v485 = &v384 - v28;
  v481 = sub_1000057A0(&qword_10009EFA0, &qword_10007EBF8);
  v479 = *(v481 - 8);
  v29 = *(v479 + 64);
  __chkstk_darwin(v481);
  v477 = &v384 - v30;
  v480 = sub_1000057A0(&qword_10009EFA8, &qword_10007EC00);
  v31 = *(*(v480 - 8) + 64);
  v32 = __chkstk_darwin(v480);
  v478 = &v384 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v476 = &v384 - v34;
  v484 = sub_1000057A0(&qword_10009EFB0, &qword_10007EC08);
  v483 = *(v484 - 8);
  v35 = *(v483 + 64);
  __chkstk_darwin(v484);
  v482 = &v384 - v36;
  v490 = sub_1000057A0(&qword_10009EFB8, &qword_10007EC10);
  v489 = *(v490 - 8);
  v37 = *(v489 + 64);
  __chkstk_darwin(v490);
  v486 = &v384 - v38;
  v475 = sub_1000057A0(&qword_10009EFC0, &qword_10007EC18);
  v474 = *(v475 - 8);
  v39 = *(v474 + 64);
  __chkstk_darwin(v475);
  v473 = &v384 - v40;
  v472 = sub_1000057A0(&qword_10009EFC8, &qword_10007EC20);
  v471 = *(v472 - 8);
  v41 = *(v471 + 64);
  __chkstk_darwin(v472);
  v470 = &v384 - v42;
  v469 = sub_1000057A0(&qword_10009EFD0, &qword_10007EC28);
  v468 = *(v469 - 8);
  v43 = *(v468 + 64);
  __chkstk_darwin(v469);
  v467 = &v384 - v44;
  v466 = sub_1000057A0(&qword_10009EFD8, &qword_10007EC30);
  v465 = *(v466 - 8);
  v45 = *(v465 + 64);
  __chkstk_darwin(v466);
  v464 = &v384 - v46;
  v463 = sub_1000057A0(&qword_10009EFE0, &qword_10007EC38);
  v462 = *(v463 - 8);
  v47 = *(v462 + 64);
  __chkstk_darwin(v463);
  v461 = &v384 - v48;
  v454 = sub_1000057A0(&qword_10009EFE8, &qword_10007EC40);
  v453 = *(v454 - 8);
  v49 = *(v453 + 64);
  __chkstk_darwin(v454);
  v452 = &v384 - v50;
  v449 = sub_1000057A0(&qword_10009EFF0, &qword_10007EC48);
  v448 = *(v449 - 8);
  v51 = *(v448 + 64);
  __chkstk_darwin(v449);
  v447 = &v384 - v52;
  v455 = sub_1000057A0(&qword_10009EFF8, &qword_10007EC50);
  v53 = *(*(v455 - 8) + 64);
  __chkstk_darwin(v455);
  v456 = &v384 - v54;
  v459 = sub_1000057A0(&qword_10009F000, &qword_10007EC58);
  v458 = *(v459 - 8);
  v55 = *(v458 + 64);
  __chkstk_darwin(v459);
  v457 = &v384 - v56;
  v533 = sub_1000057A0(&qword_10009F008, &unk_10007EC60);
  v451 = *(v533 - 8);
  v57 = *(v451 + 64);
  v58 = __chkstk_darwin(v533);
  v446 = &v384 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v450 = &v384 - v60;
  v535 = sub_1000057A0(&qword_10009F010, &qword_10007D630);
  v460 = *(v535 - 8);
  v61 = *(v460 + 64);
  __chkstk_darwin(v535);
  v534 = &v384 - v62;
  v441 = sub_1000057A0(&qword_10009F018, &qword_10007EC70);
  v440 = *(v441 - 8);
  v63 = *(v440 + 64);
  __chkstk_darwin(v441);
  v439 = &v384 - v64;
  v444 = sub_1000057A0(&qword_10009F020, &qword_10007EC78);
  v443 = *(v444 - 8);
  v65 = *(v443 + 64);
  __chkstk_darwin(v444);
  v442 = &v384 - v66;
  v67 = sub_1000057A0(&qword_10009F028, &qword_10007EC80);
  v68 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67 - 8);
  v569 = &v384 - v69;
  v549 = sub_1000057A0(&qword_10009F030, &qword_10007EC88);
  v564 = *(v549 - 8);
  v70 = *(v564 + 64);
  __chkstk_darwin(v549);
  v445 = &v384 - v71;
  v438 = sub_1000057A0(&qword_10009F038, &qword_10007EC90);
  v435 = *(v438 - 1);
  v72 = *(v435 + 64);
  __chkstk_darwin(v438);
  v437 = &v384 - v73;
  v526 = sub_1000057A0(&qword_10009F040, &qword_10007EC98);
  v436 = *(v526 - 8);
  v74 = *(v436 + 64);
  __chkstk_darwin(v526);
  v434 = &v384 - v75;
  v552 = sub_1000057A0(&qword_10009F048, &qword_10007ECA0);
  v565 = *(v552 - 8);
  v76 = *(v565 + 64);
  v77 = __chkstk_darwin(v552);
  v545 = &v384 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v550 = &v384 - v79;
  v541 = sub_1000057A0(&qword_10009F050, &qword_10007ECA8);
  v554 = *(v541 - 8);
  v80 = *(v554 + 64);
  __chkstk_darwin(v541);
  v540 = &v384 - v81;
  v543 = sub_1000057A0(&qword_10009F058, &qword_10007ECB0);
  v82 = *(*(v543 - 8) + 64);
  __chkstk_darwin(v543);
  v555 = &v384 - v83;
  v431 = sub_1000057A0(&qword_10009F060, &qword_10007ECB8);
  v430 = *(v431 - 1);
  v84 = *(v430 + 64);
  __chkstk_darwin(v431);
  v429 = &v384 - v85;
  v528 = sub_1000057A0(&qword_10009F068, &qword_10007ECC0);
  v86 = *(*(v528 - 1) + 64);
  v87 = __chkstk_darwin(v528);
  v525 = &v384 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  v560 = (&v384 - v89);
  v538 = sub_1000057A0(&qword_10009F070, &qword_10007ECC8);
  v553 = *(v538 - 8);
  v90 = *(v553 + 64);
  __chkstk_darwin(v538);
  v537 = &v384 - v91;
  v539 = sub_1000057A0(&qword_10009F078, &qword_10007ECD0);
  v92 = *(*(v539 - 8) + 64);
  __chkstk_darwin(v539);
  v566 = &v384 - v93;
  v522 = sub_1000057A0(&qword_10009F080, &qword_10007ECD8);
  v521 = *(v522 - 1);
  v94 = *(v521 + 64);
  __chkstk_darwin(v522);
  v432 = &v384 - v95;
  v527 = sub_1000057A0(&qword_10009F088, &qword_10007ECE0);
  v524 = *(v527 - 1);
  v96 = *(v524 + 64);
  __chkstk_darwin(v527);
  v523 = &v384 - v97;
  v546 = sub_1000057A0(&qword_10009F090, &qword_10007ECE8);
  v428 = *(v546 - 1);
  v98 = *(v428 + 64);
  __chkstk_darwin(v546);
  v427 = &v384 - v99;
  v426 = sub_1000057A0(&qword_10009F098, &qword_10007ECF0);
  v425 = *(v426 - 8);
  v100 = *(v425 + 8);
  __chkstk_darwin(v426);
  v422 = &v384 - v101;
  v424 = sub_1000057A0(&qword_10009F0A0, &qword_10007ECF8);
  v423 = *(v424 - 8);
  v102 = *(v423 + 8);
  __chkstk_darwin(v424);
  v421 = &v384 - v103;
  v536 = sub_1000057A0(&qword_10009F0A8, &qword_10007ED00);
  v420 = *(v536 - 8);
  v104 = *(v420 + 64);
  __chkstk_darwin(v536);
  v419 = &v384 - v105;
  v542 = sub_1000057A0(&unk_10009F0B0, &qword_10007ED08);
  v418 = *(v542 - 8);
  v106 = *(v418 + 64);
  __chkstk_darwin(v542);
  v417 = &v384 - v107;
  v562 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  v433 = *(v562 - 8);
  v108 = *(v433 + 64);
  __chkstk_darwin(v562);
  v416 = &v384 - v109;
  v551 = sub_1000057A0(&qword_10009F0C0, &unk_10007D660);
  v415 = *(v551 - 8);
  v110 = *(v415 + 64);
  __chkstk_darwin(v551);
  v414 = &v384 - v111;
  v413 = sub_1000057A0(&qword_10009F0C8, &qword_10007ED20);
  v412 = *(v413 - 8);
  v112 = *(v412 + 64);
  __chkstk_darwin(v413);
  v411 = &v384 - v113;
  v556 = sub_1000057A0(&qword_10009F0D0, &qword_10007ED28);
  v410 = *(v556 - 8);
  v114 = *(v410 + 64);
  __chkstk_darwin(v556);
  v409 = &v384 - v115;
  v408 = sub_1000057A0(&qword_10009F0D8, &qword_10007ED30);
  v406 = *(v408 - 8);
  v116 = *(v406 + 64);
  __chkstk_darwin(v408);
  v405 = &v384 - v117;
  v530 = sub_1000057A0(&qword_10009F0E0, &qword_10007ED38);
  v404 = *(v530 - 8);
  v118 = *(v404 + 64);
  __chkstk_darwin(v530);
  v403 = &v384 - v119;
  v559 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v120 = *(*(v559 - 1) + 64);
  v121 = __chkstk_darwin(v559);
  v402 = &v384 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __chkstk_darwin(v121);
  v557 = (&v384 - v124);
  __chkstk_darwin(v123);
  v407 = &v384 - v125;
  v401 = sub_1000057A0(&qword_10009F0E8, &qword_10007ED40);
  v400 = *(v401 - 8);
  v126 = *(v400 + 64);
  __chkstk_darwin(v401);
  v399 = &v384 - v127;
  v398 = sub_1000057A0(&qword_10009ECD0, &qword_10007E810);
  v128 = *(*(v398 - 8) + 64);
  v129 = __chkstk_darwin(v398);
  v397 = &v384 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v129);
  v396 = &v384 - v131;
  v532 = sub_1000057A0(&qword_10009F0F0, &qword_10007ED48);
  v395 = *(v532 - 8);
  v132 = *(v395 + 64);
  __chkstk_darwin(v532);
  v394 = &v384 - v133;
  v531 = sub_1000057A0(&qword_10009F0F8, &qword_10007ED50);
  v393 = *(v531 - 8);
  v134 = *(v393 + 64);
  __chkstk_darwin(v531);
  v392 = &v384 - v135;
  v529 = sub_1000057A0(&qword_10009F100, &qword_10007ED58);
  v391 = *(v529 - 8);
  v136 = *(v391 + 64);
  __chkstk_darwin(v529);
  v390 = &v384 - v137;
  v389 = sub_1000057A0(&qword_10009F108, &qword_10007ED60);
  v388 = *(v389 - 8);
  v138 = *(v388 + 64);
  __chkstk_darwin(v389);
  v387 = &v384 - v139;
  v386 = sub_1000057A0(&qword_10009F110, &qword_10007ED68);
  v385 = *(v386 - 8);
  v140 = *(v385 + 64);
  __chkstk_darwin(v386);
  v384 = &v384 - v141;
  v563 = sub_1000057A0(&qword_10009F118, &qword_10007ED70);
  v142 = *(v563 - 8);
  v143 = *(v142 + 64);
  __chkstk_darwin(v563);
  v145 = &v384 - v144;
  v558 = sub_1000057A0(&unk_10009F120, &qword_10007ED78);
  v146 = *(v558 - 8);
  v147 = *(v146 + 64);
  __chkstk_darwin(v558);
  v149 = &v384 - v148;
  v150 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  v151 = *(v150 - 8);
  v152 = *(v151 + 64);
  __chkstk_darwin(v150);
  v154 = &v384 - v153;
  if (_swiftEmptyArrayStorage >> 62 && sub_10007B64C())
  {
    v155 = sub_1000606F8(_swiftEmptyArrayStorage);
  }

  else
  {
    v155 = &_swiftEmptySetSingleton;
  }

  v2[4] = v155;
  v547 = v2 + 4;
  v2[6] = 0;
  swift_unknownObjectWeakInit();
  v2[7] = swift_getKeyPath();
  *(v2 + 64) = 0;
  v156 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isDelegateInitialized;
  LOBYTE(v571) = 0;
  v561 = v154;
  sub_10007AF0C();
  v567 = *(v151 + 32);
  v567(v2 + v156, v154, v150);
  v157 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__executionMode;
  LOBYTE(v571) = 0;
  sub_10007AF0C();
  (*(v146 + 32))(v2 + v157, v149, v558);
  v158 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingType;
  LOBYTE(v571) = 8;
  sub_10007AF0C();
  (*(v142 + 32))(v2 + v158, v145, v563);
  v159 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingStage;
  LOBYTE(v571) = 0;
  v160 = v384;
  sub_10007AF0C();
  (*(v385 + 32))(v2 + v159, v160, v386);
  v161 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__addedAddresses;
  v571 = _swiftEmptyArrayStorage;
  sub_1000057A0(&qword_10009ECA8, &qword_10007E808);
  v162 = v387;
  sub_10007AF0C();
  (*(v388 + 32))(v2 + v161, v162, v389);
  v163 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__createOrLoadStage;
  LOBYTE(v571) = 0;
  v164 = v390;
  sub_10007AF0C();
  (*(v391 + 32))(v2 + v163, v164, v529);
  v165 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__addingAddressesStage;
  LOBYTE(v571) = 0;
  v166 = v392;
  sub_10007AF0C();
  (*(v393 + 32))(v2 + v165, v166, v531);
  v167 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__savingStage;
  LOBYTE(v571) = 2;
  v168 = v394;
  sub_10007AF0C();
  (*(v395 + 32))(v2 + v167, v168, v532);
  v169 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__alertNowShowing;
  v170 = type metadata accessor for AlertViewModel(0);
  v171 = v396;
  (*(*(v170 - 8) + 56))(v396, 1, 1, v170);
  sub_1000187C8(v171, v397, &qword_10009ECD0, &qword_10007E810);
  v172 = v399;
  sub_10007AF0C();
  sub_100008824(v171, &qword_10009ECD0, &qword_10007E810);
  (*(v400 + 32))(v2 + v169, v172, v401);
  v173 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isShowingAlert;
  LOBYTE(v571) = 0;
  v174 = v561;
  sub_10007AF0C();
  v568 = v150;
  v175 = v567;
  v567(v2 + v173, v174, v150);
  v176 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isFolderShare;
  LOBYTE(v571) = 0;
  sub_10007AF0C();
  v175(v2 + v176, v174, v150);
  v548 = (v151 + 32);
  v177 = v175;
  v398 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderURL;
  v400 = sub_10007AC4C();
  v178 = *(v400 - 8);
  v399 = *(v178 + 56);
  v401 = v178 + 56;
  v179 = v407;
  (v399)(v407, 1, 1, v400);
  v180 = sub_1000057A0(&qword_10009F130, &qword_10007EDB8);
  v181 = *(v180 + 48);
  v182 = *(v180 + 52);
  v183 = swift_allocObject();
  v184 = (v183 + *(*v183 + 104));
  *v184 = 0;
  v184[1] = 0;
  v185 = v557;
  sub_1000187C8(v179, v557, &unk_10009ED10, &qword_10007D310);
  v186 = *(*v183 + 96);
  swift_beginAccess();
  sub_1000187C8(v185, v402, &unk_10009ED10, &qword_10007D310);
  sub_10007AF0C();
  sub_100008824(v185, &unk_10009ED10, &qword_10007D310);
  swift_endAccess();
  v187 = v179;
  sub_100008824(v179, &unk_10009ED10, &qword_10007D310);
  *(v2 + v398) = v183;
  v188 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isFolderSubshare;
  LOBYTE(v571) = 0;
  v189 = v561;
  sub_10007AF0C();
  v177(v2 + v188, v189, v568);
  v190 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderTitle;
  v191 = sub_1000057A0(&qword_10009F138, &unk_10007EDC0);
  v192 = *(v191 + 48);
  v193 = *(v191 + 52);
  v194 = swift_allocObject();
  v195 = (v194 + *(*v194 + 104));
  *v195 = 0;
  v195[1] = 0;
  v196 = *(*v194 + 96);
  swift_beginAccess();
  v575 = 0;
  v576 = 0;
  v197 = sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
  sub_10007AF0C();
  swift_endAccess();
  *(v2 + v190) = v194;
  v198 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckFolderSubitemName;
  v199 = *(v191 + 48);
  v200 = *(v191 + 52);
  v201 = swift_allocObject();
  v202 = (v201 + *(*v201 + 104));
  *v202 = 0;
  v202[1] = 0;
  v203 = *(*v201 + 96);
  swift_beginAccess();
  v575 = 0;
  v576 = 0;
  v402 = v197;
  sub_10007AF0C();
  swift_endAccess();
  *(v2 + v198) = v201;
  v204 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__folderSharingStage;
  LOBYTE(v571) = 4;
  sub_1000057A0(&qword_10009ECE0, &qword_10007E818);
  v205 = v403;
  sub_10007AF0C();
  (*(v404 + 32))(v2 + v204, v205, v530);
  v206 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__shareSaveStatus;
  LOBYTE(v571) = 0;
  v207 = v405;
  sub_10007AF0C();
  (*(v406 + 32))(v2 + v206, v207, v408);
  v208 = (v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData);
  *v208 = 0;
  v208[1] = 0;
  v209 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingOptionsAllowedFromSPI;
  v571 = 15;
  v210 = v409;
  sub_10007AF0C();
  (*(v410 + 32))(v2 + v209, v210, v556);
  v211 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__yourNameAndEmail;
  v571 = 0;
  v572 = 0xE000000000000000;
  v573 = 0;
  v574 = 0xE000000000000000;
  sub_1000057A0(&unk_10009ED00, &unk_10007E838);
  v212 = v411;
  sub_10007AF0C();
  (*(v412 + 32))(v2 + v211, v212, v413);
  v213 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharedFileOrFolderURL;
  (v399)(v187, 1, 1, v400);
  sub_1000187C8(v187, v557, &unk_10009ED10, &qword_10007D310);
  v214 = v414;
  sub_10007AF0C();
  sub_100008824(v187, &unk_10009ED10, &qword_10007D310);
  (*(v415 + 32))(v2 + v213, v214, v551);
  *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_shouldStopAccessingSharedFileOrFolderURL) = 0;
  v215 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__itemUTI;
  v571 = 0;
  v572 = 0;
  v216 = v416;
  sub_10007AF0C();
  v559 = *(v433 + 32);
  v559(v2 + v215, v216, v562);
  v217 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isShareRoot;
  LOBYTE(v571) = 1;
  sub_10007AF0C();
  v567(v2 + v217, v189, v568);
  v218 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnail;
  v571 = [objc_allocWithZone(UIImage) init];
  v433 = sub_100005C8C(0, &qword_10009ED30, UIImage_ptr);
  v219 = v417;
  sub_10007AF0C();
  (*(v418 + 32))(v2 + v218, v219, v542);
  v220 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnailFromCloudKitSPI;
  v571 = 0;
  sub_1000057A0(&qword_10009ED40, &qword_10007E868);
  v221 = v419;
  sub_10007AF0C();
  v222 = *(v420 + 32);
  v223 = v536;
  v222(v2 + v220, v221, v536);
  v224 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnailFromDocumentSPI;
  v571 = 0;
  sub_10007AF0C();
  v222(v2 + v224, v221, v223);
  v225 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__itemTitle;
  v571 = 0;
  v572 = 0xE000000000000000;
  v226 = v421;
  sub_10007AF0C();
  v227 = *(v423 + 4);
  v228 = v2 + v225;
  v229 = v424;
  v227(v228, v226, v424);
  v230 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sourceAppBundleID;
  v571 = 0;
  v572 = 0;
  sub_10007AF0C();
  v559(v2 + v230, v216, v562);
  v231 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sectionTitleForAuxiliaryToggles;
  v571 = 0;
  v572 = 0xE000000000000000;
  sub_10007AF0C();
  v227(v2 + v231, v226, v229);
  v232 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__primaryCheckboxTitle;
  v571 = 0;
  v572 = 0xE000000000000000;
  sub_10007AF0C();
  v227(v2 + v232, v226, v229);
  v557 = v227;
  v233 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__secondaryCheckboxTitle;
  v571 = 0;
  v572 = 0xE000000000000000;
  sub_10007AF0C();
  v227(v2 + v233, v226, v229);
  v234 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__primaryCheckboxState;
  LOBYTE(v571) = 0;
  v235 = v561;
  sub_10007AF0C();
  v237 = v567;
  v236 = v568;
  v567(v2 + v234, v235, v568);
  v238 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__secondaryCheckboxState;
  LOBYTE(v571) = 0;
  sub_10007AF0C();
  v237(v2 + v238, v235, v236);
  v239 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckContainerIdentifier;
  v571 = [objc_allocWithZone(CKContainerID) init];
  sub_100005C8C(0, &qword_10009E678, CKContainerID_ptr);
  v240 = v422;
  sub_10007AF0C();
  (*(v425 + 4))(v2 + v239, v240, v426);
  v241 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__helpAnchor;
  v571 = 0;
  v572 = 0xE000000000000000;
  sub_10007AF0C();
  v557(v2 + v241, v226, v229);
  v242 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__participantDetails;
  v571 = sub_100060474(_swiftEmptyArrayStorage);
  sub_1000057A0(&unk_10009ED68, &qword_10007E870);
  v243 = v427;
  sub_10007AF0C();
  (*(v428 + 32))(v2 + v242, v243, v546);
  v244 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_networkMonitor;
  v245 = type metadata accessor for NetworkMonitor();
  v246 = *(v245 + 48);
  v247 = *(v245 + 52);
  swift_allocObject();
  *(v2 + v244) = sub_100005E24(0);
  *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_ckMetadata) = 0;
  v248 = v570;
  v2[2] = v570;
  v2[3] = *(v248 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel);
  swift_weakAssign();
  v428 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharedFileOrFolderURL;
  swift_beginAccess();

  v249 = v537;
  sub_10007AF1C();
  swift_endAccess();
  v427 = sub_10000D6F4(&unk_10009F140, &qword_10009F070, &qword_10007ECC8);
  v426 = sub_1000086C8();
  v250 = v538;
  sub_10007AFAC();
  v251 = *(v553 + 8);
  v553 += 8;
  v425 = v251;
  v251(v249, v250);
  swift_beginAccess();
  v252 = v429;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F158, &qword_10009F060, &qword_10007ECB8);
  sub_1000085A4();
  v253 = v431;
  sub_10007AFAC();
  v254 = *(v430 + 8);
  v254(v252, v253);
  swift_beginAccess();
  sub_10007AF1C();
  swift_endAccess();
  sub_10007AFAC();
  v254(v252, v253);
  swift_beginAccess();
  v255 = v540;
  sub_10007AF1C();
  swift_endAccess();
  v567 = &protocol conformance descriptor for Published<A>.Publisher;
  v424 = sub_10000D6F4(&qword_10009F168, &qword_10009F050, &qword_10007ECA8);
  v256 = v541;
  sub_10007AFAC();
  v257 = *(v554 + 8);
  v554 += 8;
  v423 = v257;
  v257(v255, v256);
  v429 = sub_10000D6F4(&qword_10009F170, &qword_10009F078, &qword_10007ECD0);
  sub_10000D6F4(&qword_10009F178, &qword_10009F068, &qword_10007ECC0);
  v548 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v430 = sub_10000D6F4(&qword_10009F180, &qword_10009F058, &qword_10007ECB0);
  v258 = v432;
  sub_10007AE8C();
  v259 = swift_allocObject();
  *(v259 + 16) = sub_10006623C;
  *(v259 + 24) = v2;
  v431 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  sub_10000D6F4(&qword_10009F188, &qword_10009F080, &qword_10007ECD8);

  v260 = v523;
  v261 = v522;
  sub_10007AF7C();

  (*(v521 + 8))(v258, v261);
  v262 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingType;
  swift_beginAccess();
  v263 = v550;
  sub_10007AF1C();
  swift_endAccess();
  v528 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000D6F4(&qword_10009F190, &qword_10009F088, &qword_10007ECE0);
  v264 = v527;
  sub_10007AFCC();
  (*(v524 + 8))(v260, v264);
  v265 = v565;
  v266 = v552;
  (*(v565 + 16))(v545, v263, v552);
  v525 = v262;
  swift_beginAccess();
  sub_10007AF2C();
  swift_endAccess();
  v267 = *(v265 + 8);
  v565 = v265 + 8;
  v527 = v267;
  (v267)(v263, v266);
  v521 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__executionMode;
  swift_beginAccess();
  v268 = v445;
  sub_10007AF1C();
  swift_endAccess();
  v524 = sub_10000D6F4(&qword_10009F198, &qword_10009F030, &qword_10007EC88);
  v523 = sub_100066284();
  v269 = v437;
  v270 = v549;
  sub_10007AFAC();
  v271 = *(v564 + 8);
  v564 += 8;
  v522 = v271;
  (v271)(v268, v270);
  v557 = objc_opt_self();
  v272 = [v557 mainRunLoop];
  v571 = v272;
  v561 = sub_10007B53C();
  v273 = *(v561 - 8);
  v560 = *(v273 + 56);
  v562 = v273 + 56;
  v274 = v569;
  v560(v569, 1, 1, v561);
  v545 = sub_100005C8C(0, &qword_10009F1A8, NSRunLoop_ptr);
  sub_10000D6F4(&qword_10009F1B0, &qword_10009F038, &qword_10007EC90);
  v559 = sub_1000662D8(&qword_10009F1B8, &qword_10009F1A8, NSRunLoop_ptr);
  v275 = v434;
  v276 = v438;
  sub_10007AF9C();
  sub_100008824(v274, &qword_10009F028, &qword_10007EC80);

  (*(v435 + 8))(v269, v276);
  v546 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000D6F4(&unk_10009F1C0, &qword_10009F040, &qword_10007EC98);

  v277 = v526;
  sub_10007AFBC();

  (*(v436 + 8))(v275, v277);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  sub_10007AF1C();
  swift_endAccess();
  v278 = v549;
  sub_10007AFAC();
  (v522)(v268, v278);
  v279 = v2[3];
  swift_beginAccess();

  v526 = sub_1000057A0(&qword_10009E658, &qword_10007D670);
  sub_10007AF1C();
  swift_endAccess();

  v436 = sub_10000D6F4(&qword_10009F1D0, &qword_10009F010, &qword_10007D630);
  v280 = v439;
  sub_10007AE4C();
  v281 = swift_allocObject();
  swift_weakInit();
  v282 = swift_allocObject();
  *(v282 + 16) = sub_10006635C;
  *(v282 + 24) = v281;
  v438 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  sub_10000D6F4(&qword_10009F1D8, &qword_10009F018, &qword_10007EC70);
  v283 = v442;
  v284 = v441;
  sub_10007AF7C();

  (*(v440 + 8))(v280, v284);
  v285 = v2[3];
  swift_beginAccess();

  v286 = sub_1000057A0(&qword_10009F1E0, &qword_10007EDD0);
  v287 = v450;
  v441 = v286;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F1E8, &qword_10009F020, &qword_10007EC78);
  v288 = v444;
  sub_10007AFCC();
  (*(v443 + 8))(v283, v288);
  v289 = v451;
  v290 = v533;
  (*(v451 + 16))(v446, v287, v533);
  swift_beginAccess();
  sub_10007AF2C();
  swift_endAccess();

  v451 = *(v289 + 8);
  (v451)(v287, v290);
  swift_beginAccess();
  sub_10007AF1C();
  swift_endAccess();
  v291 = v456;
  v292 = v549;
  sub_10007AFAC();
  (v522)(v268, v292);
  swift_beginAccess();
  v293 = v550;
  sub_10007AF1C();
  swift_endAccess();
  v294 = v455;
  v295 = *(v455 + 116);
  v564 = sub_10000D6F4(&qword_10009F1F0, &qword_10009F048, &qword_10007ECA0);
  sub_10006639C();
  v296 = v552;
  sub_10007AFAC();
  (v527)(v293, v296);
  v297 = v2[3];
  swift_beginAccess();
  v298 = v294[30];

  sub_10007AF1C();
  swift_endAccess();

  swift_beginAccess();
  sub_1000057A0(&qword_10009F200, &qword_10007EDD8);
  v299 = v447;
  sub_10007AF1C();
  swift_endAccess();
  v300 = v294[31];
  sub_10000D6F4(&qword_10009F208, &qword_10009EFF0, &qword_10007EC48);
  sub_1000663F0();
  v301 = v449;
  sub_10007AFAC();
  (*(v448 + 8))(v299, v301);
  swift_beginAccess();
  sub_1000057A0(&qword_10009F218, &qword_10007EDE0);
  v302 = v452;
  sub_10007AF1C();
  swift_endAccess();
  v303 = v294[32];
  sub_10000D6F4(&qword_10009F220, &qword_10009EFE8, &qword_10007EC40);
  sub_100066444();
  v304 = v454;
  sub_10007AFAC();
  (*(v453 + 8))(v302, v304);
  v305 = v2[3];
  swift_beginAccess();

  sub_10007AF1C();
  swift_endAccess();

  v306 = v294[33];
  sub_10000D6F4(&qword_10009F230, &qword_10009F008, &unk_10007EC60);
  sub_100066498();
  v307 = v533;
  sub_10007AFAC();
  (v451)(v287, v307);
  v308 = [v557 mainRunLoop];
  v571 = v308;
  v309 = v569;
  v560(v569, 1, 1, v561);
  sub_10000D6F4(&qword_10009F240, &qword_10009EFF8, &qword_10007EC50);
  v310 = v457;
  sub_10007AF9C();
  sub_100008824(v309, &qword_10009F028, &qword_10007EC80);

  sub_100008824(v291, &qword_10009EFF8, &qword_10007EC50);
  v311 = swift_allocObject();
  swift_weakInit();
  v312 = swift_allocObject();
  v313 = v570;
  *(v312 + 16) = v311;
  *(v312 + 24) = v313;
  v314 = swift_allocObject();
  *(v314 + 16) = sub_10006652C;
  *(v314 + 24) = v312;
  sub_10000D6F4(&qword_10009F248, &qword_10009F000, &qword_10007EC58);

  v315 = v459;
  sub_10007AFBC();

  (*(v458 + 8))(v310, v315);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  v316 = v2[3];
  swift_beginAccess();

  v317 = v534;
  sub_10007AF1C();
  swift_endAccess();

  v318 = [v557 mainRunLoop];
  v571 = v318;
  v319 = v569;
  v560(v569, 1, 1, v561);
  v320 = v461;
  v321 = v535;
  sub_10007AF9C();
  sub_100008824(v319, &qword_10009F028, &qword_10007EC80);

  (*(v460 + 8))(v317, v321);
  swift_allocObject();
  swift_weakInit();
  sub_10000D6F4(&qword_10009F250, &qword_10009EFE0, &qword_10007EC38);
  v322 = v463;
  sub_10007AFBC();

  (*(v462 + 8))(v320, v322);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v323 = v550;
  sub_10007AF1C();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v324 = v552;
  sub_10007AFBC();

  (v527)(v323, v324);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v325 = v464;
  sub_10007AF1C();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_10000D6F4(&qword_10009F258, &qword_10009EFD8, &qword_10007EC30);
  v326 = v466;
  sub_10007AFBC();

  (*(v465 + 8))(v325, v326);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v327 = v467;
  sub_10007AF1C();
  swift_endAccess();
  v328 = swift_allocObject();
  swift_weakInit();
  v329 = swift_allocObject();
  *(v329 + 16) = sub_10006658C;
  *(v329 + 24) = v328;
  sub_10000D6F4(&qword_10009F260, &qword_10009EFD0, &qword_10007EC28);
  v330 = v469;
  sub_10007AFBC();

  (*(v468 + 8))(v327, v330);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v331 = v470;
  sub_10007AF1C();
  swift_endAccess();
  v332 = swift_allocObject();
  swift_weakInit();
  v333 = swift_allocObject();
  *(v333 + 16) = sub_1000665C0;
  *(v333 + 24) = v332;
  sub_10000D6F4(&qword_10009F268, &qword_10009EFC8, &qword_10007EC20);
  v334 = v472;
  sub_10007AFBC();

  (*(v471 + 8))(v331, v334);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v335 = v473;
  sub_10007AF1C();
  swift_endAccess();
  v336 = swift_allocObject();
  swift_weakInit();
  v337 = swift_allocObject();
  *(v337 + 16) = sub_1000665F4;
  *(v337 + 24) = v336;
  sub_10000D6F4(&qword_10009F270, &qword_10009EFC0, &qword_10007EC18);
  v338 = v475;
  sub_10007AFBC();

  (*(v474 + 8))(v335, v338);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v339 = v537;
  sub_10007AF1C();
  swift_endAccess();
  v340 = v538;
  sub_10007AFAC();
  v425(v339, v340);
  swift_beginAccess();
  v341 = v540;
  sub_10007AF1C();
  swift_endAccess();
  v342 = v541;
  sub_10007AFAC();
  v423(v341, v342);
  swift_beginAccess();
  v343 = v477;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F278, &qword_10009EFA0, &qword_10007EBF8);
  sub_100066628();
  v344 = v481;
  sub_10007AFAC();
  v345 = *(v479 + 8);
  v345(v343, v344);
  swift_beginAccess();
  sub_10007AF1C();
  swift_endAccess();
  sub_10007AFAC();
  v345(v343, v344);
  sub_10000D6F4(&qword_10009F290, &qword_10009EFA8, &qword_10007EC00);
  v346 = v482;
  sub_10007AE8C();
  v347 = swift_allocObject();
  swift_weakInit();
  v348 = swift_allocObject();
  *(v348 + 16) = v347;
  *(v348 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v348 + 40) = v493;
  v349 = swift_allocObject();
  *(v349 + 16) = &unk_10007EDF0;
  *(v349 + 24) = v348;
  v350 = swift_allocObject();
  *(v350 + 16) = &unk_10007EE00;
  *(v350 + 24) = v349;

  sub_10007AEBC();
  sub_1000057A0(&qword_10009F298, &qword_10007EE08);
  sub_10000D6F4(&qword_10009F2A0, &qword_10009EFB0, &qword_10007EC08);
  sub_10000D6F4(&qword_10009F2A8, &qword_10009F298, &qword_10007EE08);
  v351 = v485;
  v352 = v484;
  v353 = v346;
  sub_10007AF8C();

  sub_10000D6F4(&qword_10009F2B0, &qword_10009EF98, &qword_10007EBF0);
  v354 = v488;
  v355 = sub_10007AF6C();

  (*(v487 + 8))(v351, v354);
  (*(v483 + 8))(v353, v352);
  v571 = v355;
  v356 = [v557 mainRunLoop];
  v575 = v356;
  v357 = v569;
  v560(v569, 1, 1, v561);
  sub_1000057A0(&qword_10009F2B8, &unk_10007EE10);
  sub_10000D6F4(&qword_10009F2C0, &qword_10009F2B8, &unk_10007EE10);
  v358 = v486;
  sub_10007AF9C();
  sub_100008824(v357, &qword_10009F028, &qword_10007EC80);

  swift_beginAccess();
  v359 = v492;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F2C8, &qword_10009EFB8, &qword_10007EC10);
  v360 = v490;
  sub_10007AFCC();
  (*(v489 + 8))(v358, v360);
  v361 = v494;
  v362 = v495;
  (*(v494 + 16))(v491, v359, v495);
  swift_beginAccess();
  sub_10007AF2C();
  swift_endAccess();
  (*(v361 + 8))(v359, v362);
  swift_beginAccess();
  v363 = v511;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F2D0, &qword_10009EF70, &unk_100080500);
  sub_1000669BC();
  v364 = v544;
  sub_10007AFAC();
  v365 = v509;
  v568 = *(v509 + 8);
  v568(v363, v364);
  v366 = v2[3];
  swift_beginAccess();

  sub_1000057A0(&unk_10009F2E0, &qword_10007D648);
  v367 = v504;
  sub_10007AF1C();
  swift_endAccess();

  sub_10000D6F4(&qword_10009E680, &unk_10009EF60, &unk_10007D600);
  sub_10000D590();
  v368 = v507;
  sub_10007AFAC();
  (*(v506 + 8))(v367, v368);
  sub_10000D6F4(&unk_10009F310, &qword_10009EF78, &qword_10007EBD0);
  sub_10000D6F4(&qword_10009E698, &qword_10009E610, &unk_10007EBC0);
  v369 = v497;
  sub_10007AE4C();
  sub_10000D6F4(&qword_10009F320, &qword_10009EF80, &qword_10007EBD8);
  v370 = v500;
  v371 = v501;
  sub_10007AF7C();
  (*(v499 + 8))(v369, v371);
  swift_beginAccess();
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F328, &qword_10009EF88, &qword_10007EBE0);
  v372 = v503;
  sub_10007AFCC();
  (*(v502 + 8))(v370, v372);
  v373 = v544;
  (*(v365 + 16))(v510, v363, v544);
  swift_beginAccess();
  sub_10007AF2C();
  swift_endAccess();
  v568(v363, v373);
  v374 = *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_networkMonitor);
  swift_beginAccess();

  sub_1000057A0(&qword_10009F330, &qword_10007D0D8);
  v375 = v512;
  sub_10007AF1C();
  swift_endAccess();

  sub_10000D6F4(&qword_10009F338, &qword_10009EF48, &qword_10007EBA0);
  sub_100006B48();
  v376 = v515;
  v377 = v514;
  sub_10007AFAC();
  (*(v513 + 8))(v375, v377);
  v378 = [v557 mainRunLoop];
  v571 = v378;
  v379 = v569;
  v560(v569, 1, 1, v561);
  sub_10000D6F4(&qword_10009F348, &qword_10009EF50, &qword_10007EBA8);
  v380 = v518;
  v381 = v517;
  sub_10007AF9C();
  sub_100008824(v379, &qword_10009F028, &qword_10007EC80);

  (*(v516 + 8))(v376, v381);
  swift_allocObject();
  swift_weakInit();

  sub_10000D6F4(&qword_10009F350, &qword_10009EF58, &unk_10007EBB0);
  v382 = v520;
  sub_10007AFBC();

  (*(v519 + 8))(v380, v382);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  return v2;
}

uint64_t sub_1000661A0@<X0>(void *a1@<X8>)
{
  result = sub_10007B06C();
  *a1 = v3;
  return result;
}

uint64_t sub_1000661F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100066244()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100066284()
{
  result = qword_10009F1A0;
  if (!qword_10009F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1A0);
  }

  return result;
}

uint64_t sub_1000662D8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005C8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100066324()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066364@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, *(a1 + 1));
  *a2 = result;
  return result;
}

unint64_t sub_10006639C()
{
  result = qword_10009F1F8;
  if (!qword_10009F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1F8);
  }

  return result;
}

unint64_t sub_1000663F0()
{
  result = qword_10009F210;
  if (!qword_10009F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F210);
  }

  return result;
}

unint64_t sub_100066444()
{
  result = qword_10009F228;
  if (!qword_10009F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F228);
  }

  return result;
}

unint64_t sub_100066498()
{
  result = qword_10009F238;
  if (!qword_10009F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F238);
  }

  return result;
}

uint64_t sub_1000664EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006652C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  return sub_100050B60(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100066534(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], *(a1 + 1), a1[16], a1[17], *(a1 + 3));
}

uint64_t sub_100066594(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1000665C8(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1000665FC(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_100066628()
{
  result = qword_10009F280;
  if (!qword_10009F280)
  {
    sub_100004AD8(&qword_10009ED40, &qword_10007E868);
    sub_1000662D8(&qword_10009F288, &qword_10009ED30, UIImage_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F280);
  }

  return result;
}

uint64_t sub_1000666D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100066710(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 2);
  v11 = v4[3];
  v12 = v4[4];
  v13 = *(v4 + 5);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1000667F0;

  return sub_1000554F0(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_1000667F0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000668EC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000D9D8;

  return sub_100056228(a1, a2, v7);
}

unint64_t sub_1000669BC()
{
  result = qword_10009F2D8;
  if (!qword_10009F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F2D8);
  }

  return result;
}

uint64_t sub_100066A20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DACC;

  return sub_100056820(a1, v4, v5, v6);
}

uint64_t sub_100066B34()
{
  v1 = sub_1000057A0(&qword_10009F378, &qword_10007EE90);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = sub_10007AC4C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100066C80(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000057A0(&qword_10009F378, &qword_10007EE90) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10005EBF4(a1, a2, v6, v7, v8);
}

uint64_t sub_100066D10()
{
  v1 = sub_1000057A0(&qword_10009F378, &qword_10007EE90);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  v7 = v0 + v3;
  v8 = sub_10007AC4C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16, v2 | 7);
}

uint64_t sub_100066E7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000057A0(&qword_10009F378, &qword_10007EE90) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000DACC;

  return sub_10005EE04(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_100066FD8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100066FE4()
{
  sub_1000057A0(&qword_10009F3E8, &qword_10007F560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007E770;
  *(inited + 32) = 7;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v69._countAndFlagsBits = 0x8000000100082A70;
  v82._object = 0x8000000100082A10;
  v82._countAndFlagsBits = 0xD00000000000005DLL;
  v95.value._countAndFlagsBits = 0;
  v95.value._object = 0;
  v3.super.isa = v2;
  v108._countAndFlagsBits = 0;
  v108._object = 0xE000000000000000;
  v4 = sub_10007AA5C(v82, v95, v3, v108, v69);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 8;
  v7 = [v1 mainBundle];
  v70._countAndFlagsBits = 0x8000000100082B00;
  v83._countAndFlagsBits = 0xD00000000000005FLL;
  v83._object = 0x8000000100082AA0;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v8.super.isa = v7;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  v9 = sub_10007AA5C(v83, v96, v8, v109, v70);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 9;
  v12 = [v1 mainBundle];
  v71._countAndFlagsBits = 0x8000000100082BA0;
  v84._object = 0x8000000100082B40;
  v84._countAndFlagsBits = 0xD00000000000005DLL;
  v97.value._countAndFlagsBits = 0;
  v97.value._object = 0;
  v13.super.isa = v12;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  v14 = sub_10007AA5C(v84, v97, v13, v110, v71);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 10;
  v17 = [v1 mainBundle];
  v72._countAndFlagsBits = 0x8000000100082C40;
  v85._countAndFlagsBits = 0xD000000000000062;
  v85._object = 0x8000000100082BD0;
  v98.value._countAndFlagsBits = 0;
  v98.value._object = 0;
  v18.super.isa = v17;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v19 = sub_10007AA5C(v85, v98, v18, v111, v72);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 11;
  v22 = [v1 mainBundle];
  v73._countAndFlagsBits = 0x8000000100082CE0;
  v86._countAndFlagsBits = 0xD00000000000005ELL;
  v86._object = 0x8000000100082C80;
  v99.value._countAndFlagsBits = 0;
  v99.value._object = 0;
  v23.super.isa = v22;
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  v24 = sub_10007AA5C(v86, v99, v23, v112, v73);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  *(inited + 152) = 0;
  v27 = [v1 mainBundle];
  v74._countAndFlagsBits = 0x8000000100082D10;
  v87._countAndFlagsBits = 0xD00000000000005FLL;
  v87._object = 0x8000000100082AA0;
  v100.value._countAndFlagsBits = 0;
  v100.value._object = 0;
  v28.super.isa = v27;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  v29 = sub_10007AA5C(v87, v100, v28, v113, v74);
  v31 = v30;

  *(inited + 160) = v29;
  *(inited + 168) = v31;
  *(inited + 176) = 1;
  v32 = [v1 mainBundle];
  v75._countAndFlagsBits = 0x8000000100082DB0;
  v88._countAndFlagsBits = 0xD000000000000061;
  v88._object = 0x8000000100082D40;
  v101.value._countAndFlagsBits = 0;
  v101.value._object = 0;
  v33.super.isa = v32;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v34 = sub_10007AA5C(v88, v101, v33, v114, v75);
  v36 = v35;

  *(inited + 184) = v34;
  *(inited + 192) = v36;
  *(inited + 200) = 2;
  v37 = [v1 mainBundle];
  v76._countAndFlagsBits = 0x8000000100082E50;
  v89._countAndFlagsBits = 0xD000000000000064;
  v89._object = 0x8000000100082DE0;
  v102.value._countAndFlagsBits = 0;
  v102.value._object = 0;
  v38.super.isa = v37;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v39 = sub_10007AA5C(v89, v102, v38, v115, v76);
  v41 = v40;

  *(inited + 208) = v39;
  *(inited + 216) = v41;
  *(inited + 224) = 3;
  v42 = [v1 mainBundle];
  v77._countAndFlagsBits = 0x8000000100082F00;
  v90._countAndFlagsBits = 0xD000000000000065;
  v90._object = 0x8000000100082E90;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v43.super.isa = v42;
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  v44 = sub_10007AA5C(v90, v103, v43, v116, v77);
  v46 = v45;

  *(inited + 232) = v44;
  *(inited + 240) = v46;
  *(inited + 248) = 4;
  v47 = [v1 mainBundle];
  v78._countAndFlagsBits = 0x8000000100082FA0;
  v91._countAndFlagsBits = 0xD00000000000005ELL;
  v91._object = 0x8000000100082F40;
  v104.value._countAndFlagsBits = 0;
  v104.value._object = 0;
  v48.super.isa = v47;
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  v49 = sub_10007AA5C(v91, v104, v48, v117, v78);
  v51 = v50;

  *(inited + 256) = v49;
  *(inited + 264) = v51;
  *(inited + 272) = 5;
  v52 = [v1 mainBundle];
  v79._countAndFlagsBits = 0x8000000100083030;
  v92._countAndFlagsBits = 0xD00000000000005ELL;
  v92._object = 0x8000000100082FD0;
  v105.value._countAndFlagsBits = 0;
  v105.value._object = 0;
  v53.super.isa = v52;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v54 = sub_10007AA5C(v92, v105, v53, v118, v79);
  v56 = v55;

  *(inited + 280) = v54;
  *(inited + 288) = v56;
  *(inited + 296) = 6;
  v57 = [v1 mainBundle];
  v93._countAndFlagsBits = 0xD00000000000005CLL;
  v80._countAndFlagsBits = 0x80000001000830C0;
  v93._object = 0x8000000100083060;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v58.super.isa = v57;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v59 = sub_10007AA5C(v93, v106, v58, v119, v80);
  v61 = v60;

  *(inited + 304) = v59;
  *(inited + 312) = v61;
  *(inited + 320) = 13;
  v62 = [v1 mainBundle];
  v81._countAndFlagsBits = 0x8000000100083150;
  v94._object = 0x80000001000830F0;
  v94._countAndFlagsBits = 0xD00000000000005DLL;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v63.super.isa = v62;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v64 = sub_10007AA5C(v94, v107, v63, v120, v81);
  v66 = v65;

  *(inited + 328) = v64;
  *(inited + 336) = v66;
  v67 = sub_100060578(inited);
  swift_setDeallocating();
  sub_1000057A0(&qword_10009F3F0, &qword_10007F568);
  swift_arrayDestroy();
  return v67;
}

uint64_t sub_1000676B0(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 176) = a3;
  *(v4 + 184) = a4;
  *(v4 + 168) = a2;
  *(v4 + 160) = a1;
  v5 = sub_10007AE2C();
  *(v4 + 192) = v5;
  v6 = *(v5 - 8);
  *(v4 + 200) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  sub_10007B32C();
  *(v4 + 216) = sub_10007B31C();
  v9 = sub_10007B2EC();
  *(v4 + 224) = v9;
  *(v4 + 232) = v8;

  return _swift_task_switch(sub_1000677AC, v9, v8);
}

uint64_t sub_1000677AC()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  *(v0 + 264) = sub_10007AC2C();
  v5 = objc_allocWithZone(QLThumbnailGenerationRequest);
  sub_10007ABFC(v6);
  v8 = v7;
  v9 = [v5 initWithFileAtURL:v7 size:-1 scale:v3 representationTypes:{v2, v1}];
  *(v0 + 240) = v9;

  v10 = [objc_opt_self() sharedGenerator];
  *(v0 + 248) = v10;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100067968;
  v11 = swift_continuation_init();
  *(v0 + 136) = sub_1000057A0(&unk_10009F390, &qword_10007EF00);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100068868;
  *(v0 + 104) = &unk_100097CC0;
  *(v0 + 112) = v11;
  [v10 generateBestRepresentationForRequest:v9 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100067968()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_100067B58;
  }

  else
  {
    v6 = sub_100067A98;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100067A98()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 264);
  v4 = *(v0 + 216);

  v5 = *(v0 + 144);
  v6 = [v5 UIImage];

  if (v3 == 1)
  {
    v7 = *(v0 + 160);
    sub_10007AC0C();
  }

  v8 = *(v0 + 208);

  v9 = *(v0 + 8);

  return v9(v6);
}

uint64_t sub_100067B58()
{
  v27 = v0;
  v1 = *(v0 + 256);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);

  swift_willThrow();
  sub_10007AE0C();
  swift_errorRetain();
  v4 = sub_10007AE1C();
  v5 = sub_10007B3FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v8 = *(v0 + 200);
    v25 = *(v0 + 208);
    v23 = *(v0 + 240);
    v24 = *(v0 + 192);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v0 + 152) = v7;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v11 = sub_10007B1AC();
    v13 = sub_100037C08(v11, v12, &v26);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "generateBestRepresentation throws error: %s", v9, 0xCu);
    sub_10000585C(v10);

    (*(v8 + 8))(v25, v24);
  }

  else
  {
    v14 = *(v0 + 256);
    v15 = *(v0 + 240);
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v18 = *(v0 + 192);

    (*(v17 + 8))(v16, v18);
  }

  if (*(v0 + 264) == 1)
  {
    v19 = *(v0 + 160);
    sub_10007AC0C();
  }

  v20 = *(v0 + 208);

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_100067DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DACC;

  return sub_10005DF88(a1, v4, v5, v6);
}

uint64_t sub_100067E54()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (v5)
  {
    v2 = [v5 _copyWithoutPersonalInfo];
    sub_10004F634();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100005AB8();
    swift_allocError();
    *v4 = 0xD000000000000024;
    *(v4 + 8) = 0x80000001000823D0;
    *(v4 + 16) = xmmword_10007E710;
    *(v4 + 32) = 0x8000000100082400;
    *(v4 + 40) = 11;
    return swift_willThrow();
  }
}

uint64_t sub_100067F80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D9D8;

  return sub_10001A050(a1, v4);
}

uint64_t sub_100068078(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DACC;

  return sub_100055078(a1, v4, v5, v6, v7);
}

uint64_t sub_100068314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DACC;

  return sub_100054280(a1, v4, v5, v6);
}

uint64_t sub_1000683C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000DACC;

  return sub_1000536DC();
}

uint64_t sub_10006847C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000DACC;

  return sub_10005196C();
}

uint64_t sub_1000685A4(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000685F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000DACC;

  return sub_10005D918();
}

uint64_t sub_1000686A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068770(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SaveStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_19;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 3)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 3;
}

uint64_t storeEnumTagSinglePayload for SaveStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100068A08(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100068A24(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AddAddressesStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AddAddressesStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreateOrLoadStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CreateOrLoadStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100068CF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100068D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100068D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharePermission(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharePermission(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100069054()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v3 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v4 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v5 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v6 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (*(*(v0 + 16) + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();
  }

  v7 = 0x10000000000;
  if (!v10)
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if (!v10)
  {
    v8 = 0;
  }

  return v10 | (v10 << 8) | (v10 << 16) | (v10 << 24) | (v10 << 32) | v7 | v8;
}

BOOL sub_100069444(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        return v3 == 5;
      }

LABEL_10:
      if ((v3 - 2) >= 4u)
      {
        return (v3 ^ v2 ^ 1) & 1;
      }

      return 0;
    }

    if (v3 == 4)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      goto LABEL_10;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1000694D8()
{
  result = qword_10009F420;
  if (!qword_10009F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F420);
  }

  return result;
}

unint64_t sub_100069530()
{
  result = qword_10009F428;
  if (!qword_10009F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F428);
  }

  return result;
}

unint64_t sub_100069588()
{
  result = qword_10009F430;
  if (!qword_10009F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F430);
  }

  return result;
}

unint64_t sub_1000695E0()
{
  result = qword_10009F438;
  if (!qword_10009F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F438);
  }

  return result;
}

unint64_t sub_100069638()
{
  result = qword_10009F440;
  if (!qword_10009F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F440);
  }

  return result;
}

uint64_t sub_1000696B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_100069734(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

void sub_100069A30()
{
  v1 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewModel);
    if (v2)
    {
      v3 = v2;
      v41 = v1;
      v4 = [v3 supplementaryText];
      if (!v4)
      {
        goto LABEL_47;
      }

      v5 = v4;
      v6 = sub_10007B19C();
      v8 = v7;

      if (!v8)
      {
        goto LABEL_47;
      }

      v9 = v6 & 0xFFFFFFFFFFFFLL;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v8) & 0xF;
      }

      if (v9)
      {
        v10 = [v3 supplementaryText];
        if (v10)
        {
          v11 = v10;
          sub_10007B19C();
        }
      }

      else
      {
LABEL_47:
        if (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle + 8))
        {
          v12 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle);
          v13 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle + 8);
        }

        else
        {
          v12 = 0;
          v13 = 0xE000000000000000;
        }

        sub_10006DD24(v12, v13);
      }

      v14 = [v3 userInfoText];
      if (!v14)
      {
        goto LABEL_48;
      }

      v15 = v14;
      v16 = sub_10007B19C();
      v18 = v17;

      if (!v18)
      {
        goto LABEL_48;
      }

      v19 = v16 & 0xFFFFFFFFFFFFLL;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v19 = HIBYTE(v18) & 0xF;
      }

      if (v19)
      {
        v20 = [v3 userInfoText];
        if (v20)
        {
          v21 = v20;
          sub_10007B19C();
        }
      }

      else
      {
LABEL_48:
        if (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName + 8))
        {
          v22 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName);
          v23 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName + 8);
        }

        else
        {
          v22 = 0;
          v23 = 0xE000000000000000;
        }

        if (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail + 8))
        {
          v24 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail);
          v25 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail + 8);
        }

        else
        {
          v24 = 0;
          v25 = 0xE000000000000000;
        }

        sub_10006DED4(v22, v23, v24, v25);
      }

      v26 = [v3 headerImageData];
      if (v26)
      {
        v27 = v26;
        v28 = sub_10007AC7C();
        v39 = v29;
        v40 = v28;
      }

      else
      {
        v39 = 0xF000000000000000;
        v40 = 0;
      }

      v30 = [v3 headerTitle];
      if (v30)
      {
        v31 = v30;
        sub_10007B19C();
      }

      if (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading) == 1)
      {
        v32 = v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_loadingText;
        v33 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_loadingText);
        v34 = *(v32 + 8);
      }

      v35 = [v3 primaryButtonText];
      if (v35)
      {
        v36 = v35;
        sub_10007B19C();
      }

      v37 = [v3 secondaryButtonText];
      if (v37)
      {
        v38 = v37;
        sub_10007B19C();
      }

      sub_10007ACEC();

      sub_10006E23C(v40, v39);
    }
  }
}

id sub_100069E44(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_share] = 0;
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory] = 0;
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewModel] = 0;
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sandboxingURLWrapper] = 0;
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_containerSetupInfo] = 0;
  v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading] = 0;
  v5 = &v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_loadingText];
  *v8 = 0;
  v8[1] = 0;
  if (a2)
  {
    v9 = sub_10007B15C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for CSAddParticipantsServiceViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100069FC0(void *a1)
{
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_share] = 0;
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory] = 0;
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewModel] = 0;
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sandboxingURLWrapper] = 0;
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_containerSetupInfo] = 0;
  v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading] = 0;
  v3 = &v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_loadingText];
  v7 = type metadata accessor for CSAddParticipantsServiceViewController();
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = v1;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

id sub_10006A0EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSAddParticipantsServiceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10006A2D4(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_share);
  *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_share) = a1;
  v4 = a1;

  sub_10007B4EC();
  v5 = sub_10007B50C();

  if (v5)
  {
    sub_1000057A0(&unk_10009E7A0, &unk_10007DBA8);
    v6 = swift_dynamicCast();
    v7 = v11;
    v8 = v12;
    if (!v6)
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle);
  v10 = *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle + 8);
  *v9 = v7;
  v9[1] = v8;

  sub_100069A30();
}

id sub_10006A480(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewModel];
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewModel] = a1;
  v4 = a1;

  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = [v4 loadingText];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = sub_10007B19C();
  v11 = v10;

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  if (!v12)
  {
LABEL_8:
    v14 = [objc_opt_self() mainBundle];
    v75._countAndFlagsBits = 0x8000000100083580;
    v86._countAndFlagsBits = 0x6E69726170657250;
    v86._object = 0xAC000000A680E267;
    v87.value._countAndFlagsBits = 0;
    v87.value._object = 0;
    v17.super.isa = v14;
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    v15 = sub_10007AA5C(v86, v87, v17, v88, v75);
    goto LABEL_9;
  }

  v13 = [v4 loadingText];
  if (v13)
  {
    v14 = v13;
    v15 = sub_10007B19C();
LABEL_9:
    v18 = v15;
    v19 = v16;

    goto LABEL_10;
  }

  v18 = 0;
  v19 = 0;
LABEL_10:
  v20 = &v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_loadingText];
  v21 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_loadingText + 8];
  *v20 = v18;
  v20[1] = v19;

  v22 = [v4 headerImageData];
  if (v22)
  {
    v23 = v22;
    sub_10007AC7C();
  }

  v24 = [v4 headerTitle];
  if (v24)
  {
    v25 = v24;
    sub_10007B19C();
  }

  v26 = [v4 supplementaryText];
  if (v26)
  {
    v27 = v26;
    sub_10007B19C();
  }

  v82 = v5;
  v28 = [v4 userInfoText];
  if (v28)
  {
    v29 = v28;
    v30 = sub_10007B19C();
    v80 = v31;
    v81 = v30;
  }

  else
  {
    v80 = 0;
    v81 = 0;
  }

  v32 = [v4 primaryButtonText];
  if (v32)
  {
    v33 = v32;
    v79 = sub_10007B19C();
    v35 = v34;
  }

  else
  {
    v79 = 0;
    v35 = 0;
  }

  v36 = [v4 secondaryButtonText];
  if (v36)
  {
    v37 = v36;
    v38 = sub_10007B19C();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups];

  v43 = sub_100004C74(v42);

  objc_allocWithZone(sub_10007ACFC());

  v77 = v38;
  v76 = v35;
  v44 = sub_10007ACDC();
  v45 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory];
  *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory] = v44;
  v46 = v44;

  if (!v46)
  {
    goto LABEL_38;
  }

  v47 = sub_10007ACCC();

  LOBYTE(v78) = v43 & 1;
  [v2 addChildViewController:{v47, v81, v80, v79, v76, v77, v40, v78, sub_10006E458, v84, sub_10006E460, v83, sub_10006E470, v6, sub_10006E468, v82}];
  result = [v47 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_43;
  }

  v49 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v2 view];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v50 = result;
  result = [v47 view];
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v51 = result;
  [v50 addSubview:result];

  sub_1000057A0(&qword_10009E290, &qword_10007CFD0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10007FC20;
  result = [v2 view];
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v53 = result;
  v54 = [result leadingAnchor];

  result = [v47 view];
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v55 = result;
  v56 = [result leadingAnchor];

  v57 = [v54 constraintEqualToAnchor:v56];
  *(v52 + 32) = v57;
  result = [v2 view];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v58 = result;
  v59 = [result trailingAnchor];

  result = [v47 view];
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v60 = result;
  v61 = [result trailingAnchor];

  v62 = [v59 constraintEqualToAnchor:v61];
  *(v52 + 40) = v62;
  result = [v2 view];
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v63 = result;
  v64 = [result topAnchor];

  result = [v47 view];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v65 = result;
  v66 = [result topAnchor];

  v67 = [v64 constraintEqualToAnchor:v66];
  *(v52 + 48) = v67;
  result = [v2 view];
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v68 = result;
  v69 = [result bottomAnchor];

  result = [v47 view];
  if (!result)
  {
LABEL_52:
    __break(1u);
    return result;
  }

  v70 = result;
  v71 = objc_opt_self();
  v72 = [v70 bottomAnchor];

  v73 = [v69 constraintEqualToAnchor:v72];
  *(v52 + 56) = v73;
  sub_100005C8C(0, &qword_10009F550, NSLayoutConstraint_ptr);
  isa = sub_10007B29C().super.isa;

  [v71 activateConstraints:isa];

LABEL_38:
}

void sub_10006ACD8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10006AD34(a1);
  }
}

uint64_t sub_10006AD34(uint64_t a1)
{
  v2 = v1;
  v115 = a1;
  v3 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v112 = &v99 - v5;
  v109 = sub_10007AC4C();
  v107 = *(v109 - 8);
  v6 = *(v107 + 64);
  v7 = __chkstk_darwin(v109);
  v108 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v99 - v9;
  __chkstk_darwin(v8);
  v110 = &v99 - v11;
  v12 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v118 = &v99 - v14;
  v15 = sub_10007AE2C();
  v116 = *(v15 - 8);
  v117 = v15;
  v16 = *(v116 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v99 - v21;
  __chkstk_darwin(v20);
  v24 = &v99 - v23;
  v25 = v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading];
  v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading] = 1;
  if ((v25 & 1) == 0)
  {
    sub_100069A30();
  }

  v26 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups;
  v27 = *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups];
  sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);

  isa = sub_10007B29C().super.isa;

  v114 = CKSharingAccessTypeFromOptionsGroups();

  v29 = *&v2[v26];

  v30 = sub_10007B29C().super.isa;

  v113 = CKSharingPermissionTypeFromOptionsGroups();

  v31 = *&v2[v26];

  v32 = sub_10007B29C().super.isa;

  v33 = CKSharingAllowOthersToInviteFromOptionsGroups();

  v34 = *&v2[v26];

  v36 = sub_100004C74(v35);

  v37 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_share];
  if (v37)
  {
    v111 = v36;
    LODWORD(v112) = v33;
    v38 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_containerSetupInfo];
    v39 = swift_allocObject();
    *(v39 + 16) = v2;
    v40 = v38;
    v41 = v2;
    v42 = v37;
    sub_10007AE0C();
    v43 = v42;
    v44 = sub_10007AE1C();
    v45 = sub_10007B41C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v37;
      v48 = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "Begin addToCloudKitSharing share: %@", v46, 0xCu);
      sub_100008824(v47, &qword_10009F570, &qword_10007DAF0);
    }

    (*(v116 + 8))(v24, v117);
    v49 = sub_10007B35C();
    v50 = v118;
    (*(*(v49 - 8) + 56))(v118, 1, 1, v49);
    sub_10007B32C();
    v51 = v43;
    v52 = v40;

    v53 = v115;

    v54 = sub_10007B31C();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = &protocol witness table for MainActor;
    *(v55 + 32) = v51;
    *(v55 + 40) = v38;
    *(v55 + 48) = sub_10006E738;
    *(v55 + 56) = v39;
    v56 = v113;
    v57 = v114;
    *(v55 + 64) = v53;
    *(v55 + 72) = v57;
    *(v55 + 80) = v56;
    LOBYTE(v56) = v111;
    *(v55 + 88) = v112;
    *(v55 + 89) = v56 & 1;
    sub_10004C328(0, 0, v50, &unk_10007FCE8, v55);
  }

  else
  {
    v59 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sandboxingURLWrapper];
    if (v59)
    {
      v111 = v36;
      LODWORD(v112) = v33;
      v106 = v59;
      v60 = [v106 url];
      v61 = v110;
      sub_10007AC1C();

      v105 = swift_allocObject();
      *(v105 + 16) = v2;
      v62 = v2;
      sub_10007AE0C();
      v63 = v107;
      v64 = v107 + 16;
      v65 = *(v107 + 16);
      v66 = v109;
      v65(v10, v61, v109);
      v67 = sub_10007AE1C();
      v68 = sub_10007B41C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v101 = v65;
        v70 = v69;
        v100 = swift_slowAlloc();
        v119 = v100;
        *v70 = 136315138;
        sub_10002169C();
        v71 = sub_10007B69C();
        v102 = v64;
        v73 = v72;
        v74 = *(v63 + 8);
        v103 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v104 = v74;
        v74(v10, v66);
        v75 = sub_100037C08(v71, v73, &v119);

        *(v70 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v67, v68, "Begin startFileSharing fileURL: %s", v70, 0xCu);
        sub_10000585C(v100);

        v65 = v101;
      }

      else
      {

        v84 = *(v63 + 8);
        v103 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v104 = v84;
        v84(v10, v66);
      }

      (*(v116 + 8))(v22, v117);
      v85 = sub_10007B35C();
      (*(*(v85 - 8) + 56))(v118, 1, 1, v85);
      v65(v108, v110, v66);
      sub_10007B32C();
      v86 = v115;

      v87 = v105;

      v88 = sub_10007B31C();
      v89 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v90 = (v6 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
      v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      *(v93 + 16) = v88;
      *(v93 + 24) = &protocol witness table for MainActor;
      v94 = v93 + v89;
      v95 = v109;
      (*(v63 + 32))(v94, v108, v109);
      v96 = (v93 + v90);
      *v96 = sub_10006E478;
      v96[1] = v87;
      *(v93 + v91) = v86;
      v97 = v113;
      *(v93 + v92) = v114;
      v98 = v93 + ((v92 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v98 = v97;
      LOBYTE(v97) = v111;
      *(v98 + 8) = v112;
      *(v98 + 9) = v97 & 1;
      sub_10004C328(0, 0, v118, &unk_10007FCE0, v93);

      return v104(v110, v95);
    }

    else
    {
      sub_10007AE0C();
      v76 = sub_10007AE1C();
      v77 = sub_10007B3FC();
      v78 = os_log_type_enabled(v76, v77);
      v79 = v109;
      v80 = v107;
      if (v78)
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Error: both share and sandboxingURLWrapper are nil", v81, 2u);
      }

      (*(v116 + 8))(v19, v117);
      v82 = v112;
      (*(v80 + 56))(v112, 1, 1, v79);
      v83 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
      sub_10006C6E8(v82, 0, v83);

      return sub_100008824(v82, &unk_10009ED10, &qword_10007D310);
    }
  }
}

id sub_10006B76C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    result = [result _remoteViewControllerProxy];
    if (result)
    {
      sub_10007B56C();
      swift_unknownObjectRelease();
      sub_1000285C4(&v3, &v4);
      sub_1000057A0(&qword_10009F558, &qword_10007FCD8);
      swift_dynamicCast();
      sub_10006D138(v2);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10006B888()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    result = [result _remoteViewControllerProxy];
    if (result)
    {
      sub_10007B56C();
      swift_unknownObjectRelease();
      sub_1000285C4(&v3, &v4);
      sub_1000057A0(&qword_10009F558, &qword_10007FCD8);
      swift_dynamicCast();
      sub_10006D294(v2, 0.0, 0.0, 0.0, 0.0);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10006B9D4(void *a1)
{
  v2 = v1;
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_10007AC4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sandboxingURLWrapper];
  *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sandboxingURLWrapper] = a1;
  v14 = a1;

  v15 = [v14 url];
  sub_10007AC1C();

  v16 = sub_10007ABCC();
  v18 = v17;
  (*(v9 + 8))(v12, v8);
  v19 = &v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle];
  v20 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle + 8];
  *v19 = v16;
  v19[1] = v18;

  sub_100069A30();
  v21 = [v14 url];
  sub_10007AC1C();

  (*(v9 + 56))(v7, 0, 1, v8);
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  v23 = v2;
  sub_100018054(v7, 0, sub_10006E2A4, v22);

  return sub_100008824(v7, &unk_10009ED10, &qword_10007D310);
}

uint64_t sub_10006BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_10007B32C();
  v8[8] = sub_10007B31C();
  v10 = sub_10007B2EC();

  return _swift_task_switch(sub_10006ECD0, v10, v9);
}

void sub_10006BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a3;
  v9 = sub_10007AE2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v47 - v15;
  sub_10007AE0C();

  swift_errorRetain();

  v17 = sub_10007AE1C();
  v18 = sub_10007B41C();

  v53 = v18;
  v19 = os_log_type_enabled(v17, v18);
  v52 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v50 = v9;
    v21 = v20;
    v47 = swift_slowAlloc();
    v57 = a2;
    v58 = v47;
    *v21 = 136315650;
    v56 = a1;

    sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
    v54 = v10;
    v22 = sub_10007B1AC();
    v49 = v14;
    v24 = sub_100037C08(v22, v23, &v58);
    v48 = a4;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v56 = a5;
    swift_errorRetain();
    sub_1000057A0(&qword_10009F530, &qword_10007FCA8);
    v26 = sub_10007B1AC();
    v28 = sub_100037C08(v26, v27, &v58);

    *(v21 + 14) = v28;
    v29 = v55;
    a4 = v48;
    *(v21 + 22) = 2080;
    v56 = v29;
    v57 = a4;

    v30 = sub_10007B1AC();
    v32 = sub_100037C08(v30, v31, &v58);
    v10 = v54;

    *(v21 + 24) = v32;
    v14 = v49;
    _os_log_impl(&_mh_execute_header, v17, v53, "replyFromUserAndItemInfo name: %s, error: %s, email: %s", v21, 0x20u);
    swift_arrayDestroy();

    v9 = v50;
  }

  v33 = *(v10 + 8);
  v33(v16, v9);
  if (a5)
  {
    swift_errorRetain();
    sub_10007AE0C();
    swift_errorRetain();
    v34 = sub_10007AE1C();
    v35 = sub_10007B3FC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54 = v10;
      v38 = v37;
      v56 = v37;
      *v36 = 136315138;
      v58 = a5;
      swift_errorRetain();
      sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
      v39 = sub_10007B1AC();
      v41 = sub_100037C08(v39, v40, &v56);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error from replyFromUserAndItemInfo: %s", v36, 0xCu);
      sub_10000585C(v38);
    }

    else
    {
    }

    v33(v14, v9);
  }

  else
  {
    v42 = v51;
    v43 = (v51 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName);
    v44 = *(v51 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName + 8);
    *v43 = v52;
    v43[1] = a2;

    v45 = (v42 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail);
    v46 = *(v42 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail + 8);
    *v45 = v55;
    v45[1] = a4;

    sub_100069A30();
  }
}

uint64_t sub_10006C1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v14 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v23 - v16;
  v18 = sub_10007B35C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_10007B32C();
  v19 = a6;

  swift_errorRetain();
  v20 = sub_10007B31C();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v19;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = a4;
  v21[9] = a5;
  sub_10000DAD0(0, 0, v17, v24, v21);
}

uint64_t sub_10006C33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_10007B32C();
  v8[8] = sub_10007B31C();
  v10 = sub_10007B2EC();

  return _swift_task_switch(sub_10006C3E4, v10, v9);
}

uint64_t sub_10006C3E4()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  sub_10006BCC0(v6, v5, v4, v3, v2);
  v8 = v0[1];

  return v8();
}

uint64_t sub_10006C5DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_10007B32C();
  v7[6] = sub_10007B31C();
  v9 = sub_10007B2EC();

  return _swift_task_switch(sub_10006ECD4, v9, v8);
}

uint64_t sub_10006C6E8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v42 - v13;
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v44 = sub_10007AE2C();
  v17 = *(v44 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v44);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v46 = a1;
  sub_1000087B4(a1, v16);
  swift_errorRetain();
  v45 = a2;
  v21 = a2;
  v22 = sub_10007AE1C();
  v23 = sub_10007B41C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v48 = a3;
    v25 = v24;
    v43 = swift_slowAlloc();
    *&v51[0] = v43;
    *v25 = 136315650;
    sub_1000087B4(v16, v14);
    v26 = sub_10007B1AC();
    v28 = v27;
    sub_100008824(v16, &unk_10009ED10, &qword_10007D310);
    v29 = sub_100037C08(v26, v28, v51);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    *&v50 = v48;
    swift_errorRetain();
    sub_1000057A0(&qword_10009F530, &qword_10007FCA8);
    v30 = sub_10007B1AC();
    v32 = sub_100037C08(v30, v31, v51);

    *(v25 + 14) = v32;
    *(v25 + 22) = 2080;
    v33 = v45;
    *&v50 = v45;
    v34 = v21;
    sub_1000057A0(&qword_10009E4E0, "̇");
    v35 = sub_10007B1AC();
    v37 = sub_100037C08(v35, v36, v51);

    *(v25 + 24) = v37;
    _os_log_impl(&_mh_execute_header, v22, v23, "replyFromSharing shareURL: %s, error: %s, share: %s", v25, 0x20u);
    swift_arrayDestroy();

    a3 = v48;

    (*(v17 + 8))(v20, v44);
    v38 = v33;
  }

  else
  {

    sub_100008824(v16, &unk_10009ED10, &qword_10007D310);
    (*(v17 + 8))(v20, v44);
    v38 = v45;
  }

  v39 = v4[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading];
  v4[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading] = 0;
  if (v39 == 1)
  {
    sub_100069A30();
  }

  v40 = v47;
  sub_1000087B4(v46, v47);
  if ([v4 _remoteViewControllerProxy])
  {
    sub_10007B56C();
    swift_unknownObjectRelease();
    sub_1000285C4(&v50, v51);
    sub_1000057A0(&qword_10009F558, &qword_10007FCD8);
    swift_dynamicCast();
    sub_10006CEB0(v49, a3, v40, v38);
    swift_unknownObjectRelease();
    return sub_100008824(v40, &unk_10009ED10, &qword_10007D310);
  }

  else
  {
    result = sub_100008824(v40, &unk_10009ED10, &qword_10007D310);
    __break(1u);
  }

  return result;
}

uint64_t sub_10006CB84(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v10 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v27 - v13;
  v15 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - v17;
  v19 = sub_10007B35C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1000087B4(a1, v14);
  sub_10007B32C();
  v20 = a4;
  v21 = a2;
  swift_errorRetain();
  v22 = sub_10007B31C();
  v23 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = &protocol witness table for MainActor;
  v25[4] = v20;
  sub_100018608(v14, v25 + v23);
  *(v25 + v24) = a2;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_10000DAD0(0, 0, v18, v28, v25);
}

uint64_t sub_10006CD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_10007B32C();
  v7[6] = sub_10007B31C();
  v9 = sub_10007B2EC();

  return _swift_task_switch(sub_10006CE30, v9, v8);
}

uint64_t sub_10006CE30()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_10006C6E8(v4, v3, v2);
  v6 = v0[1];

  return v6();
}

void sub_10006CEB0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_10007AE2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v17 = sub_10007AE1C();
  v18 = sub_10007B41C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = a2;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Add Participants service dismissing after sharing", v19, 2u);
    a2 = v26;
  }

  (*(v13 + 8))(v16, v12);
  if (a2)
  {
    a2 = sub_10007AB7C();
  }

  sub_1000087B4(a3, v11);
  v20 = sub_10007AC4C();
  v21 = *(v20 - 8);
  v23 = 0;
  if ((*(v21 + 48))(v11, 1, v20) != 1)
  {
    sub_10007ABFC(v22);
    v23 = v24;
    (*(v21 + 8))(v11, v20);
  }

  [a1 dismissViewControllerWithError:a2 shareURL:v23 ckShare:a4];
}

id sub_10006D138(void *a1)
{
  v2 = sub_10007AE2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v7 = sub_10007AE1C();
  v8 = sub_10007B41C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Add Participants service cancelled--dismissing", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return [a1 dismissViewControllerWithError:0 shareURL:0 ckShare:0];
}