uint64_t sub_1000525A4()
{
  v1 = *(v0 + 968);
  *(v0 + 1152) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100052630, v3, v2);
}

uint64_t sub_100052630()
{
  v1 = v0[144];
  v2 = v0[135];
  v3 = v0[133];

  v0[145] = *(v3 + 16);

  v4 = swift_task_alloc();
  v0[146] = v4;
  *v4 = v0;
  v4[1] = sub_100052708;
  if (v2 == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return sub_100049714(v5, v3, 0, 1);
}

uint64_t sub_100052708()
{
  v2 = *v1;
  v3 = *(*v1 + 1168);
  v7 = *v1;
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v4 = sub_100052E0C;
  }

  else
  {
    v5 = *(v2 + 1160);

    v4 = sub_100052894;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100052824()
{
  v1 = v0[141];
  v0[152] = v0[143];

  v2 = v0[124];
  v3 = v0[123];

  return _swift_task_switch(sub_100052E7C, v3, v2);
}

uint64_t sub_100052894()
{
  v1 = *(v0 + 968);
  *(v0 + 1184) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100052920, v3, v2);
}

uint64_t sub_100052920()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 59);
  v3 = *(v0 + 1064);

  v4 = *(v3 + 16);
  if (v2)
  {
    v5 = &off_1000C1A28;
  }

  else
  {
    v5 = &off_1000C1A50;
  }

  sub_100047B6C(v5);

  return _swift_task_switch(sub_1000529CC, 0, 0);
}

uint64_t sub_1000529CC()
{
  v1 = *(v0 + 968);
  *(v0 + 1192) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100052A58, v3, v2);
}

uint64_t sub_100052A58()
{
  v1 = v0[149];
  v2 = v0[133];

  v0[150] = *(v2 + 16);

  return _swift_task_switch(sub_100052AD4, 0, 0);
}

uint64_t sub_100052AD4()
{
  v1 = *(v0 + 968);
  *(v0 + 1208) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100052B60, v3, v2);
}

uint64_t sub_100052B60()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 60);

  sub_10004A3E0(v3);

  v4 = *(v0 + 992);
  v5 = *(v0 + 984);

  return _swift_task_switch(sub_100052BE0, v5, v4);
}

uint64_t sub_100052BE0()
{
  v1 = *(*(v0 + 1064) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 58) == 1)
  {
    v2 = *(v0 + 896);
    sub_10009D9D0();
    v3 = sub_10009D9E0();
    v4 = sub_10009DFD0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "addParticipantsToShare (internal) will return an error for this public share", v5, 2u);
    }

    v6 = *(v0 + 1112);
    v7 = *(v0 + 1104);
    v8 = *(v0 + 896);
    v9 = *(v0 + 880);

    v7(v8, v9);
  }

  if (*(v0 + 61))
  {
    v10 = *(v0 + 968);
    *(v0 + 1240) = sub_10009DF00();
    v12 = sub_10009DED0();
    *(v0 + 1248) = v12;
    *(v0 + 1256) = v11;

    return _swift_task_switch(sub_100053720, v12, v11);
  }

  else
  {
    v13 = *(v0 + 1064);
    v14 = swift_task_alloc();
    *(v0 + 1224) = v14;
    *v14 = v0;
    v14[1] = sub_10005324C;

    return sub_100086420(300, v13);
  }
}

uint64_t sub_100052E0C()
{
  v1 = v0[145];
  v0[152] = v0[147];

  v2 = v0[124];
  v3 = v0[123];

  return _swift_task_switch(sub_100052E7C, v3, v2);
}

uint64_t sub_100052E7C()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 976);

  *(v0 + 776) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v42 = *(v0 + 1024);
    v43 = *(v0 + 1032);
    v3 = *(v0 + 1016);
    v4 = *(v0 + 1008);
    v44 = *(v0 + 1000);
    v45 = *(v0 + 1064);
    v5 = *(v0 + 936);
    v38 = *(v0 + 928);
    v6 = *(v0 + 920);
    v7 = *(v0 + 912);
    v8 = *(v0 + 840);
    v41 = *(v0 + 832);
    v39 = *(v0 + 960);
    v40 = *(v0 + 824);
    v9 = *(v0 + 816);

    v10 = *(v0 + 464);
    *(v0 + 160) = *(v0 + 448);
    *(v0 + 176) = v10;
    *(v0 + 185) = *(v0 + 473);
    v11 = *(v0 + 488);
    v12 = *(v0 + 448);
    v13 = *(v0 + 464);
    *(v0 + 144) = *(v0 + 480);
    *(v0 + 152) = v11;
    *(v0 + 112) = v12;
    *(v0 + 128) = v13;
    v4(v5, v8, v7);
    v14 = (*(v6 + 80) + 34) & ~*(v6 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    (*(v6 + 32))(v15 + v14, v5, v7);
    *(v15 + ((v38 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
    v16 = v9;
    sub_10008C148(v0 + 160, v0 + 496);
    sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, 0xD000000000000015, 0x80000001000A76D0, v0 + 112, 0, sub_10008F510, v15);

    sub_10008C148(v0 + 160, v0 + 544);
    sub_10008F51C(0xD000000000000056, 0x80000001000A7E60);
    v18 = v17;
    v42(v39, 1, 1, v7);
    v40(v39, 0, v18);
    sub_10008C1A4(v0 + 160);
    sub_10008C1A4(v0 + 160);

    sub_10008C1A4(v0 + 160);
    sub_100008728(v39, &qword_1000CA250, &qword_10009FDF8);
    v19 = *(v0 + 776);

    v20 = *(v0 + 960);
    v21 = *(v0 + 952);
    v22 = *(v0 + 936);
    v23 = *(v0 + 904);
    v24 = *(v0 + 896);
    v25 = *(v0 + 872);
  }

  else
  {
    v27 = *(v0 + 1064);
    v28 = *(v0 + 1000);
    v29 = *(v0 + 960);
    v30 = *(v0 + 952);
    v31 = *(v0 + 936);
    v32 = *(v0 + 904);
    v33 = *(v0 + 896);
    v46 = *(v0 + 872);
    v34 = *(v0 + 832);
    v35 = *(v0 + 824);

    v36 = *(v0 + 776);

    sub_100083E60(0, 0xD000000000000056, 0x80000001000A7E60, v35, v34);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10005324C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1224);
  v7 = *v1;
  *(*v1 + 1232) = a1;

  v4 = *(v2 + 992);
  v5 = *(v2 + 984);

  return _swift_task_switch(sub_100053374, v5, v4);
}

uint64_t sub_100053374()
{
  v1 = *(v0 + 1232);
  if (v1)
  {
    v37 = *(v0 + 1032);
    v38 = *(v0 + 1064);
    v36 = *(v0 + 1024);
    v31 = *(v0 + 1016);
    v29 = *(v0 + 1008);
    v39 = *(v0 + 1000);
    v2 = *(v0 + 976);
    v3 = *(v0 + 936);
    v30 = *(v0 + 928);
    v4 = *(v0 + 920);
    v5 = *(v0 + 912);
    v6 = *(v0 + 840);
    v35 = *(v0 + 832);
    v33 = *(v0 + 960);
    v34 = *(v0 + 824);
    v32 = *(v0 + 816);

    *(v0 + 808) = v1;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    swift_dynamicCast();
    v7 = *(v0 + 656);
    v8 = *(v0 + 640);
    *(v0 + 256) = v8;
    *(v0 + 272) = v7;
    *(v0 + 281) = *(v0 + 665);
    v9 = *(v0 + 672);
    v10 = *(v0 + 680);
    *(v0 + 208) = v8;
    v11 = *(v0 + 656);
    *(v0 + 240) = v9;
    *(v0 + 248) = v10;
    *(v0 + 224) = v11;
    v12 = v3;
    v29(v3, v6, v5);
    v13 = (*(v4 + 80) + 34) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    (*(v4 + 32))(v14 + v13, v12, v5);
    *(v14 + ((v30 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v15 = v32;
    sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, 0xD00000000000002ALL, 0x80000001000A7F00, v0 + 208, 0, sub_10008F510, v14);

    sub_10008C148(v0 + 256, v0 + 688);
    sub_10008F51C(0xD000000000000056, 0x80000001000A7E60);
    v17 = v16;
    v36(v33, 1, 1, v5);
    v34(v33, 0, v17);
    sub_10008C1A4(v0 + 256);
    sub_10008C1A4(v0 + 256);

    sub_100008728(v33, &qword_1000CA250, &qword_10009FDF8);
    v18 = *(v0 + 960);
    v19 = *(v0 + 952);
    v20 = *(v0 + 936);
    v21 = *(v0 + 904);
    v22 = *(v0 + 896);
    v23 = *(v0 + 872);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = *(v0 + 968);
    *(v0 + 1240) = sub_10009DF00();
    v28 = sub_10009DED0();
    *(v0 + 1248) = v28;
    *(v0 + 1256) = v27;

    return _swift_task_switch(sub_100053720, v28, v27);
  }
}

uint64_t sub_100053720()
{
  v1 = *(v0 + 60);
  v2 = *(v0 + 59);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 968);
  v5 = *(v0 + 872);
  sub_10009DF20();
  v6 = sub_10009DF40();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);

  v7 = sub_10009DF00();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 41) = v1;
  v9 = sub_10004CDF4(0, 0, v5, &unk_1000A29C0, v8);
  *(v0 + 1264) = v9;
  v10 = async function pointer to Task.value.getter[1];
  v11 = swift_task_alloc();
  *(v0 + 1272) = v11;
  v12 = sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  *(v0 + 1280) = v12;
  *v11 = v0;
  v11[1] = sub_1000538C0;

  return Task.value.getter(v12, v9, &type metadata for () + 8, v12, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000538C0()
{
  v2 = *v1;
  v3 = *(*v1 + 1272);
  v4 = *v1;
  *(*v1 + 1288) = v0;

  v5 = *(v2 + 1256);
  v6 = *(v2 + 1248);
  if (v0)
  {
    v7 = sub_100053A94;
  }

  else
  {
    v7 = sub_1000539FC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000539FC()
{
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1240);

  *(v0 + 62) = -1;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0;
  *(v0 + 1296) = 0u;
  *(v0 + 1312) = 0u;
  *(v0 + 1328) = 0;
  *(v0 + 344) = -1;
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);

  return _swift_task_switch(sub_100053C5C, v4, v3);
}

uint64_t sub_100053A94()
{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1280);
  v3 = *(v0 + 1240);

  *(v0 + 784) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 1288);
    v5 = *(v0 + 1264);

    v6 = *(v0 + 592);
    v7 = *(v0 + 600);
    v8 = *(v0 + 608);
    v9 = *(v0 + 616);
    v10 = *(v0 + 624);
    v11 = *(v0 + 632);
    v12 = *(v0 + 784);
  }

  else
  {
    v13 = *(v0 + 1288);
    v14 = *(v0 + 1280);
    v15 = *(v0 + 1264);
    v16 = *(v0 + 784);

    v7 = 0x80000001000A7F30;
    sub_10009E1E0(68);
    v21._object = 0x80000001000A7F90;
    v21._countAndFlagsBits = 0xD000000000000042;
    sub_10009DE10(v21);
    *(v0 + 792) = v13;
    swift_errorRetain();
    v22._countAndFlagsBits = sub_10009DDA0();
    sub_10009DE10(v22);

    v8 = 0;
    v9 = 0;
    v10 = 0xE000000000000000;
    v6 = 0xD000000000000054;
    v11 = 11;
  }

  *(v0 + 62) = v11;
  *(v0 + 1328) = v10;
  *(v0 + 1320) = v9;
  *(v0 + 1312) = v8;
  *(v0 + 1304) = v7;
  *(v0 + 1296) = v6;
  *(v0 + 304) = v6;
  *(v0 + 312) = v7;
  *(v0 + 320) = v8;
  *(v0 + 328) = v9;
  *(v0 + 336) = v10;
  *(v0 + 344) = v11;
  v17 = *(v0 + 992);
  v18 = *(v0 + 984);

  return _swift_task_switch(sub_100053C5C, v18, v17);
}

uint64_t sub_100053C5C()
{
  v59 = *(v0 + 62);
  v1 = *(v0 + 1064);
  v52 = *(v0 + 1008);
  v54 = *(v0 + 1016);
  v2 = *(v0 + 976);
  v3 = *(v0 + 960);
  v4 = *(v0 + 952);
  v5 = *(v0 + 944);
  v50 = *(v0 + 928);
  v6 = *(v0 + 920);
  v7 = *(v0 + 912);
  v42 = *(v0 + 840);
  v43 = *(v0 + 936);
  v56 = *(v0 + 816);

  v8 = sub_100094060();
  v46 = v9;
  v48 = v8;
  v44 = v10;
  v11 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v12 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v58 = *(v0 + 800);
  sub_100008658(v4, v3, &qword_1000CA250, &qword_10009FDF8);
  v13 = sub_10009DDA0();
  v15 = v14;
  v52(v43, v42, v7);
  v16 = (*(v6 + 80) + 34) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v48;
  *(v17 + 24) = v46;
  *(v17 + 32) = v44;
  (*(v6 + 32))(v17 + v16, v43, v7);
  *(v17 + ((v50 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v56;
  v18 = v56;
  sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, v13, v15, v0 + 304, 0, sub_10008F510, v17);

  if (v59 == 255)
  {
    if (v58)
    {
      v30 = [v58 _copyWithoutPersonalInfo];
    }

    else
    {
      v30 = 0;
    }

    v31 = *(v0 + 1064);
    v32 = *(v0 + 1000);
    v29 = *(v0 + 952);
    v33 = *(v0 + 832);
    (*(v0 + 824))(v29, v30, 0);
  }

  else
  {
    v19 = *(v0 + 1320);
    v20 = *(v0 + 1312);
    v21 = *(v0 + 1304);
    v22 = *(v0 + 1296);
    v51 = *(v0 + 1032);
    v53 = *(v0 + 1328);
    v60 = *(v0 + 1000);
    v23 = *(v0 + 960);
    v55 = *(v0 + 952);
    v57 = *(v0 + 1064);
    v24 = *(v0 + 912);
    v49 = *(v0 + 832);
    v45 = *(v0 + 1024);
    v47 = *(v0 + 824);
    *(v0 + 352) = v22;
    *(v0 + 360) = v21;
    *(v0 + 368) = v20;
    *(v0 + 376) = v19;
    *(v0 + 384) = v53;
    v25 = *(v0 + 62);
    *(v0 + 392) = v25;
    sub_10008F51C(0xD000000000000056, 0x80000001000A7E60);
    v27 = v26;
    v45(v23, 1, 1, v24);
    v47(v23, 0, v27);
    v28 = v20;
    v29 = v55;
    sub_10003C04C(v22, v21, v28, v19, v53, v25);

    sub_100008728(v23, &qword_1000CA250, &qword_10009FDF8);
  }

  sub_100008728(v29, &qword_1000CA250, &qword_10009FDF8);
  v34 = *(v0 + 960);
  v35 = *(v0 + 952);
  v36 = *(v0 + 936);
  v37 = *(v0 + 904);
  v38 = *(v0 + 896);
  v39 = *(v0 + 872);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1000540BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v8 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v44 - v10;
  v12 = sub_10009D9F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v17 = sub_10009D7A0();
  }

  else
  {
    v17 = 0;
  }

  sub_10009D9D0();
  v18 = v17;
  v19 = sub_10009D9E0();
  v20 = sub_10009DFD0();

  if (os_log_type_enabled(v19, v20))
  {
    v47 = v20;
    v48 = v19;
    v49 = v13;
    v50 = v12;
    v51 = v18;
    v44[0] = v17;
    v44[1] = a5;
    v45 = a4;
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v21 = 136315394;
    v22 = sub_10009DE60();
    v24 = v23;
    if (("orationOptionsGroups" & 0x2000000000000000) != 0)
    {
      v25 = ("orationOptionsGroups" >> 40) & 0xF0000;
    }

    else
    {
      v25 = 5636096;
    }

    if (v25)
    {
      v26 = v22;
      while (sub_10009DE60() != v26 || v27 != v24)
      {
        v28 = sub_10009E2E0();

        if (v28)
        {
          goto LABEL_18;
        }

        if ((v25 ^ sub_10009DE00()) < 0x4000)
        {
          goto LABEL_14;
        }
      }

LABEL_18:

      sub_10009DE70();
      v31 = sub_10009DDD0();
      v30 = v32;

      v29 = v31;
    }

    else
    {
LABEL_14:

      v29 = 0;
      v30 = 0xE000000000000000;
    }

    a4 = v45;
    v17 = v44[0];
    v18 = v51;
    v33 = sub_1000307A4(v29, v30, &v52);

    *(v21 + 4) = v33;
    *(v21 + 12) = 2080;
    if (v17)
    {
      v34 = v18;
      v35 = [v34 description];
      v36 = sub_10009DD90();
      v38 = v37;

      v18 = v51;
    }

    else
    {
      v38 = 0xEE00646569666963;
      v36 = 0x65707320656E6F6ELL;
    }

    v39 = sub_1000307A4(v36, v38, &v52);

    *(v21 + 14) = v39;
    v40 = v48;
    _os_log_impl(&_mh_execute_header, v48, v47, "%s: model concluded SPI unexpectedly, deferCheckReplyCount() will reply then fatalError(). Error: %s", v21, 0x16u);
    swift_arrayDestroy();

    (*(v49 + 8))(v16, v50);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v41 = sub_10009D860();
  (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
  v42 = v18;
  a4(v11, 0, v17);

  sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
  result = sub_10009E250();
  __break(1u);
  return result;
}

uint64_t sub_100054564@<X0>(_OWORD *a1@<X0>, unint64_t a2@<X1>, _UNKNOWN **a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  if (a3)
  {
    v8 = a3;
    v22 = a2 >> 24;
    v9 = HIDWORD(a2);
  }

  else
  {
    LOBYTE(v9) = 0;
    LOBYTE(v22) = 0;
    v8 = &off_1000C1A78;
  }

  a6[3] = type metadata accessor for SPIAnalyticsEvent();
  a6[4] = &off_1000C2CF0;
  v10 = sub_10008D654(a6);
  v11 = sub_100003714(&qword_1000CB078, &qword_1000A18E0);
  v12 = v11[12];
  v13 = v11[16];
  v14 = v11[20];
  v15 = (v10 + v11[24]);
  v16 = (v10 + v11[28]);
  v17 = sub_10009D860();
  (*(*(v17 - 8) + 16))(v10, a4, v17);
  *(v10 + v12) = v22;
  *(v10 + v13) = v9;
  *(v10 + v14) = v8;
  v18 = *(a5 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v15 = *(a5 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v15[1] = v18;
  v19 = *(a1 + 25);
  v20 = a1[1];
  *v16 = *a1;
  v16[1] = v20;
  *(v16 + 25) = v19;
  swift_storeEnumTagMultiPayload();

  return sub_100008658(a1, v25, &qword_1000CB088, &unk_1000A18F0);
}

uint64_t sub_1000547F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 113) = a6;
  *(v6 + 112) = a5;
  *(v6 + 16) = a4;
  v7 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  *(v6 + 24) = swift_task_alloc();
  sub_10009DF10();
  *(v6 + 32) = sub_10009DF00();
  v9 = sub_10009DED0();
  *(v6 + 40) = v9;
  *(v6 + 48) = v8;

  return _swift_task_switch(sub_1000548CC, v9, v8);
}

uint64_t sub_1000548CC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v0 + 56) = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000549F4;
  v3 = *(v0 + 113);
  v4 = *(v0 + 112);

  return sub_100023A48(v4, v3);
}

uint64_t sub_1000549F4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];

    return _swift_task_switch(sub_100054F60, v4, v5);
  }

  else
  {
    v6 = v3[7];
    v7 = swift_task_alloc();
    v3[10] = v7;
    *v7 = v3;
    v7[1] = sub_100054B5C;

    return sub_100026F78();
  }
}

uint64_t sub_100054B5C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_100054FD8;
  }

  else
  {
    v7 = sub_100054C98;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100054C98()
{
  v1 = v0[7];
  v2 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_100054D80;
  v4 = v0[3];

  return sub_100028ADC(v4);
}

uint64_t sub_100054D80()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 104) = v0;

  sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
  v6 = *(v2 + 48);
  v7 = *(v2 + 40);
  if (v0)
  {
    v8 = sub_100055050;
  }

  else
  {
    v8 = sub_100054EE8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100054EE8()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100054F60()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[9];
  v4 = v0[3];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100054FD8()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[11];
  v4 = v0[3];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100055050()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[13];
  v4 = v0[3];

  v5 = v0[1];

  return v5();
}

void sub_1000551E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  sub_100008658(a1, &v18 - v10, &qword_1000CA250, &qword_10009FDF8);
  v12 = sub_10009D860();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_10009D800(v14);
    v15 = v16;
    (*(v13 + 8))(v11, v12);
  }

  if (a3)
  {
    v17 = sub_10009D7A0();
  }

  else
  {
    v17 = 0;
  }

  (*(a4 + 16))(a4, v15, a2, v17);
}

uint64_t sub_10005534C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 704) = v19;
  *(v8 + 688) = v18;
  *(v8 + 680) = a8;
  *(v8 + 672) = a7;
  *(v8 + 664) = a6;
  *(v8 + 656) = a5;
  *(v8 + 648) = a4;
  v9 = sub_10009D9F0();
  *(v8 + 712) = v9;
  v10 = *(v9 - 8);
  *(v8 + 720) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v8 + 768) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 776) = swift_task_alloc();
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = sub_10009DF10();
  *(v8 + 808) = sub_10009DF00();
  v15 = sub_10009DED0();
  *(v8 + 816) = v15;
  *(v8 + 824) = v14;

  return _swift_task_switch(sub_1000554F0, v15, v14);
}

uint64_t sub_1000554F0()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = type metadata accessor for ModelDelegateSPI();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[104] = sub_10003F4A4();
  v6 = swift_allocObject();
  v0[105] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;

  return _swift_task_switch(sub_1000555A8, 0, 0);
}

uint64_t sub_1000555A8()
{
  v1 = v0[105];
  v2 = v0[100];
  v3 = (v0[104] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
  v4 = v3[1];
  *v3 = sub_10008EA5C;
  v3[1] = v1;

  v0[106] = sub_10009DF00();
  v6 = sub_10009DED0();

  return _swift_task_switch(sub_100055670, v6, v5);
}

uint64_t sub_100055670()
{
  v1 = *(v0 + 848);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 856) = sub_1000998E0();

  return _swift_task_switch(sub_1000556F8, 0, 0);
}

uint64_t sub_1000556F8()
{
  v1 = *(v0 + 800);
  *(v0 + 864) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100055784, v3, v2);
}

uint64_t sub_100055784()
{
  v1 = v0[108];
  v2 = v0[107];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[109] = sub_10004BA80(v2);

  return _swift_task_switch(sub_10005581C, 0, 0);
}

uint64_t sub_10005581C()
{
  v1 = *(v0 + 800);
  *(v0 + 880) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_1000558A8, v3, v2);
}

uint64_t sub_1000558A8()
{
  v1 = v0[110];
  v2 = v0[109];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[111] = sub_100032A60(v2);

  return _swift_task_switch(sub_100055940, 0, 0);
}

uint64_t sub_100055940()
{
  v1 = v0[111];
  v2 = v0[104];
  v3 = v0[84];
  v4 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v0[112] = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v5 = *(v2 + v4);
  *(v2 + v4) = v1;

  v6 = *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v3;

  v7 = *(v2 + v4);
  v0[113] = v7;
  if (!v7)
  {
    return sub_10009E250();
  }

  v8 = v0[100];
  v9 = v0[99];
  v10 = v0[84];
  v11 = sub_10009D860();
  v0[114] = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v0[115] = v13;
  v0[116] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v9, 1, 1, v11);
  v14 = v10;

  v0[117] = sub_10009DF00();
  v16 = sub_10009DED0();

  return _swift_task_switch(sub_100055AF4, v16, v15);
}

uint64_t sub_100055AF4()
{
  v1 = v0[117];
  v2 = v0[113];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[99];
  v6 = v0[85];

  sub_100043F7C(v4, v6, v5, 0, v2);

  sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
  v7 = v0[103];
  v8 = v0[102];

  return _swift_task_switch(sub_100055BC0, v8, v7);
}

uint64_t sub_100055BC0()
{
  v46 = v0;
  v1 = *(*(v0 + 832) + *(v0 + 896));
  *(v0 + 944) = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = *(v0 + 688);
  v3 = *(v0 + 672);
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);

  isa = sub_10009DE90().super.isa;
  *(v0 + 952) = CKSharingAccessTypeFromOptionsGroups();

  v5 = sub_10009DE90().super.isa;
  *(v0 + 960) = CKSharingPermissionTypeFromOptionsGroups();

  v6 = sub_10009DE90().super.isa;
  *(v0 + 59) = CKSharingAllowOthersToInviteFromOptionsGroups();

  v7 = sub_10009DE90().super.isa;
  *(v0 + 60) = CKSharingAllowAccessRequestsFromOptionsGroups();

  v8 = [v3 participants];
  sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
  v9 = sub_10009DEA0();

  if (v9 >> 62)
  {
    v10 = sub_10009E260();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 >= 2)
  {
    v11 = *(v0 + 760);
    sub_10009D9D0();
    v12 = sub_10009D9E0();
    v13 = sub_10009DFD0();
    if (os_log_type_enabled(v12, v13))
    {
      v43 = v13;
      v14 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v14;
      v45 = v42;
      *v14 = 136315138;
      v15 = sub_10009DE60();
      v17 = v16;
      if (("Invite:withReply:)" & 0x2000000000000000) != 0)
      {
        v18 = ("Invite:withReply:)" >> 40) & 0xF0000;
      }

      else
      {
        v18 = 6225920;
      }

      if (v18)
      {
        v19 = v15;
        while (sub_10009DE60() != v19 || v20 != v17)
        {
          v21 = sub_10009E2E0();

          if (v21)
          {
            goto LABEL_19;
          }

          if ((sub_10009DE00() ^ v18) < 0x4000)
          {
            goto LABEL_15;
          }
        }

LABEL_19:

        sub_10009DE70();
        v28 = sub_10009DDD0();
        v23 = v29;

        v22 = v28;
      }

      else
      {
LABEL_15:

        v22 = 0;
        v23 = 0xE000000000000000;
      }

      v30 = *(v0 + 760);
      v31 = *(v0 + 720);
      v32 = *(v0 + 712);
      v33 = sub_1000307A4(v22, v23, &v45);

      *(v44 + 1) = v33;
      _os_log_impl(&_mh_execute_header, v12, v43, "%s: passed-in CKShare should not have participants already added. Will return an error in the future.", v44, 0xCu);
      sub_10000670C(v42);

      (*(v31 + 8))(v30, v32);
    }

    else
    {
      v25 = *(v0 + 760);
      v26 = *(v0 + 720);
      v27 = *(v0 + 712);

      (*(v26 + 8))(v25, v27);
    }
  }

  v34 = *(v0 + 704);
  v35 = *(v0 + 648);
  v45 = *(v0 + 696);

  sub_1000799A0(v36);
  v37 = v45;
  v38 = v35 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier;
  v39 = *(v35 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  *(v0 + 968) = v39;
  v40 = *(v38 + 8);
  *(v0 + 976) = v40;
  if (v40)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 616) = v39;
    *(v0 + 624) = v40;

    sub_10009DB00();
  }

  sub_100097154(v37);

  *(v0 + 984) = *(v1 + 16);

  v41 = swift_task_alloc();
  *(v0 + 992) = v41;
  *v41 = v0;
  v41[1] = sub_1000560FC;

  return sub_10004B1CC();
}

uint64_t sub_1000560FC()
{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v4 = *(*v1 + 984);
  v5 = *v1;
  *(*v1 + 1000) = v0;

  v6 = *(v2 + 824);
  v7 = *(v2 + 816);
  if (v0)
  {
    v8 = sub_10005832C;
  }

  else
  {
    v8 = sub_100056254;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100056254()
{
  v1 = *(*(v0 + 944) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 57))
  {

    return _swift_task_switch(sub_100056534, 0, 0);
  }

  else
  {
    v2 = *(v0 + 920);
    v3 = *(v0 + 912);
    v4 = *(v0 + 832);
    v5 = *(v0 + 808);
    v6 = *(v0 + 792);
    v24 = *(v0 + 664);
    v25 = *(v0 + 944);
    v22 = *(v0 + 928);
    v23 = *(v0 + 656);
    v7 = *(v0 + 648);

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 56) = -1;
    v8 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
    v9 = v7;

    LOWORD(v21) = 0;
    sub_10007B224(0xD00000000000005FLL, 0x80000001000A7D60, 0xD00000000000003DLL, 0x80000001000A76F0, v0 + 16, v8, v9, 0, 0, v21, v9, 0, v4);

    v2(v6, 1, 1, v3);
    v10 = v8;
    v23(v6, 0, v8);

    sub_100008728(v6, &qword_1000CA250, &qword_10009FDF8);
    v11 = *(v0 + 792);
    v12 = *(v0 + 784);
    v13 = *(v0 + 776);
    v14 = *(v0 + 760);
    v15 = *(v0 + 752);
    v16 = *(v0 + 744);
    v17 = *(v0 + 736);
    v18 = *(v0 + 728);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100056534()
{
  v1 = *(v0 + 800);
  *(v0 + 1008) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_1000565C0, v3, v2);
}

uint64_t sub_1000565C0()
{
  v1 = v0[126];
  v2 = v0[119];
  v3 = v0[118];

  v0[127] = *(v3 + 16);

  v4 = swift_task_alloc();
  v0[128] = v4;
  *v4 = v0;
  v4[1] = sub_100056694;
  if (v2 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return sub_100048CBC(v5, v3, 0);
}

uint64_t sub_100056694()
{
  v2 = *v1;
  v3 = *(*v1 + 1024);
  v7 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v4 = sub_100056A30;
  }

  else
  {
    v5 = *(v2 + 1016);

    v4 = sub_1000567B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000567B0()
{
  v1 = *(v0 + 800);
  *(v0 + 1040) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10005683C, v3, v2);
}

uint64_t sub_10005683C()
{
  v1 = v0[130];
  v2 = v0[120];
  v3 = v0[118];

  v0[131] = *(v3 + 16);

  v4 = swift_task_alloc();
  v0[132] = v4;
  *v4 = v0;
  v4[1] = sub_100056914;
  if (v2 == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return sub_100049714(v5, v3, 0, 1);
}

uint64_t sub_100056914()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v7 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v4 = sub_100056F90;
  }

  else
  {
    v5 = *(v2 + 1048);

    v4 = sub_100056AA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100056A30()
{
  v1 = v0[127];
  v0[138] = v0[129];

  v2 = v0[103];
  v3 = v0[102];

  return _swift_task_switch(sub_100057000, v3, v2);
}

uint64_t sub_100056AA0()
{
  v1 = *(v0 + 800);
  *(v0 + 1072) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100056B2C, v3, v2);
}

uint64_t sub_100056B2C()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 59);
  v3 = *(v0 + 944);

  v4 = *(v3 + 16);
  if (v2)
  {
    v5 = &off_1000C1AA0;
  }

  else
  {
    v5 = &off_1000C1AC8;
  }

  sub_100047B6C(v5);

  return _swift_task_switch(sub_100056BD8, 0, 0);
}

uint64_t sub_100056BD8()
{
  v1 = *(v0 + 800);
  *(v0 + 1080) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100056C64, v3, v2);
}

uint64_t sub_100056C64()
{
  v1 = v0[135];
  v2 = v0[118];

  v0[136] = *(v2 + 16);

  return _swift_task_switch(sub_100056CE0, 0, 0);
}

uint64_t sub_100056CE0()
{
  v1 = *(v0 + 800);
  *(v0 + 1096) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100056D6C, v3, v2);
}

uint64_t sub_100056D6C()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 60);

  sub_10004A3E0(v3);

  v4 = *(v0 + 824);
  v5 = *(v0 + 816);

  return _swift_task_switch(sub_100056DEC, v5, v4);
}

uint64_t sub_100056DEC()
{
  v1 = *(*(v0 + 944) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 58) == 1)
  {
    v2 = *(v0 + 752);
    sub_10009D9D0();
    v3 = sub_10009D9E0();
    v4 = sub_10009DFD0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "addParticipantsToShare (internal) will return an error for this public share", v5, 2u);
    }

    v6 = *(v0 + 752);
    v7 = *(v0 + 720);
    v8 = *(v0 + 712);

    (*(v7 + 8))(v6, v8);
  }

  v9 = *(v0 + 944);
  v10 = swift_task_alloc();
  *(v0 + 1112) = v10;
  *v10 = v0;
  v10[1] = sub_100057388;
  v11 = *(v0 + 60);
  v12 = *(v0 + 59);

  return sub_100023A48(v12, v11);
}

uint64_t sub_100056F90()
{
  v1 = v0[131];
  v0[138] = v0[133];

  v2 = v0[103];
  v3 = v0[102];

  return _swift_task_switch(sub_100057000, v3, v2);
}

uint64_t sub_100057000()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 808);

  *(v0 + 632) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v39 = *(v0 + 928);
    v3 = *(v0 + 920);
    v4 = *(v0 + 912);
    v5 = *(v0 + 832);
    v6 = *(v0 + 792);
    v7 = *(v0 + 664);
    v41 = *(v0 + 656);
    v43 = *(v0 + 944);
    v8 = *(v0 + 648);

    v9 = *(v0 + 176);
    *(v0 + 112) = *(v0 + 160);
    *(v0 + 128) = v9;
    *(v0 + 137) = *(v0 + 185);
    v10 = *(v0 + 200);
    v12 = *(v0 + 160);
    v11 = *(v0 + 176);
    *(v0 + 96) = *(v0 + 192);
    *(v0 + 104) = v10;
    *(v0 + 64) = v12;
    *(v0 + 80) = v11;
    v13 = v8;
    swift_retain_n();
    v14 = v13;
    sub_10008C148(v0 + 112, v0 + 208);
    LOWORD(v38) = 0;
    sub_10007B224(0xD00000000000005FLL, 0x80000001000A7D60, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v14, 0, 0, v38, v14, 0, v5);

    sub_10008C148(v0 + 112, v0 + 256);
    sub_10008F51C(0xD00000000000005FLL, 0x80000001000A7D60);
    v16 = v15;
    v3(v6, 1, 1, v4);
    v41(v6, 0, v16);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v6, &qword_1000CA250, &qword_10009FDF8);
    v17 = *(v0 + 632);

    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v20 = *(v0 + 776);
    v21 = *(v0 + 760);
    v22 = *(v0 + 752);
    v23 = *(v0 + 744);
    v24 = *(v0 + 736);
    v25 = *(v0 + 728);
  }

  else
  {
    v27 = *(v0 + 944);
    v28 = *(v0 + 832);
    v29 = *(v0 + 792);
    v30 = *(v0 + 784);
    v31 = *(v0 + 776);
    v32 = *(v0 + 760);
    v33 = *(v0 + 752);
    v40 = *(v0 + 744);
    v42 = *(v0 + 736);
    v44 = *(v0 + 728);
    v34 = *(v0 + 664);
    v35 = *(v0 + 656);

    v36 = *(v0 + 632);

    sub_100083E60(0, 0xD00000000000005FLL, 0x80000001000A7D60, v35, v34);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100057388()
{
  v2 = *(*v1 + 1112);
  v3 = *v1;
  v3[140] = v0;

  if (v0)
  {
    v4 = v3[103];
    v5 = v3[102];

    return _swift_task_switch(sub_1000586B4, v5, v4);
  }

  else
  {
    v6 = v3[118];
    v7 = swift_task_alloc();
    v3[141] = v7;
    *v7 = v3;
    v7[1] = sub_1000574F4;

    return sub_100026F78();
  }
}

uint64_t sub_1000574F4()
{
  v2 = *v1;
  v3 = *(*v1 + 1128);
  v4 = *v1;
  *(*v1 + 1136) = v0;

  v5 = *(v2 + 824);
  v6 = *(v2 + 816);
  if (v0)
  {
    v7 = sub_100058A3C;
  }

  else
  {
    v7 = sub_100057630;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100057630()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 928);
  (*(v0 + 920))(*(v0 + 784), 1, 1, *(v0 + 912));
  v3 = swift_task_alloc();
  *(v0 + 1144) = v3;
  *v3 = v0;
  v3[1] = sub_1000576E4;
  v4 = *(v0 + 784);

  return sub_100028ADC(v4);
}

uint64_t sub_1000576E4()
{
  v2 = *v1;
  v3 = (*v1)[143];
  v8 = *v1;
  (*v1)[144] = v0;

  sub_100008728(v2[98], &qword_1000CA250, &qword_10009FDF8);
  v4 = v2[103];
  v5 = v2[102];
  if (v0)
  {
    v6 = sub_100058DC4;
  }

  else
  {
    v6 = sub_100057830;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100057830()
{
  v112 = v0;
  v1 = *(v0 + 944);
  v2 = *(v0 + 832);
  v3 = *(v0 + 808);
  v4 = *(v0 + 792);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 648);

  *(v0 + 504) = sub_100094060();
  *(v0 + 512) = v8;
  *(v0 + 520) = v9;
  v10 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v11 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v12 = *(v0 + 640);
  sub_100008658(v5, v4, &qword_1000CA250, &qword_10009FDF8);
  sub_10009DDA0();
  v13 = v7;

  sub_10008E8A8(v0 + 504, v0 + 528);
  v14 = v12;
  v15 = sub_10009DE60();
  v17 = v16;
  if (("Invite:withReply:)" & 0x2000000000000000) != 0)
  {
    v18 = ("Invite:withReply:)" >> 40) & 0xF0000;
  }

  else
  {
    v18 = 6225920;
  }

  v110 = v14;
  if (v18)
  {
    v19 = v15;
    while (sub_10009DE60() != v19 || v20 != v17)
    {
      v21 = sub_10009E2E0();

      if (v21)
      {
        goto LABEL_12;
      }

      if ((sub_10009DE00() ^ v18) < 0x4000)
      {
        goto LABEL_10;
      }
    }

LABEL_12:

    sub_10009DE70();
    v106 = sub_10009DDD0();
    v108 = v22;
  }

  else
  {
LABEL_10:

    v106 = 0;
    v108 = 0xE000000000000000;
  }

  v23 = *(v0 + 507);
  v24 = *(v0 + 508);
  v25 = *(v0 + 512);
  *(v0 + 328) = type metadata accessor for SPIAnalyticsEvent();
  *(v0 + 336) = &off_1000C2CF0;
  v26 = sub_10008D654((v0 + 304));
  v107 = v12;
  if (v12)
  {
    v27 = (*(v0 + 832) + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
    v104 = v24;
    v28 = v23;
    v29 = v25;
    v30 = *v27;
    v31 = v27[1];
    sub_10008E8A8(v0 + 504, v0 + 576);

    v32 = v110;
    v33 = sub_100045D24(v32, v30, v31);
    v35 = v34;

    v25 = v29;
    v23 = v28;
    v24 = v104;
  }

  else
  {
    sub_10008E8A8(v0 + 504, v0 + 552);
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  v36 = *(v0 + 968);
  v37 = 0x73736563637553;
  *v26 = v33;
  v26[1] = v35;
  *(v26 + 16) = v23;
  *(v26 + 17) = v24;
  v26[3] = v25;
  *(v26 + 2) = v36;
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  v26[10] = 0;
  *(v26 + 88) = -1;
  swift_storeEnumTagMultiPayload();
  sub_100008658(v0 + 304, v0 + 384, &qword_1000CB798, &qword_1000A27F0);
  v38 = *(v0 + 976);
  if (*(v0 + 408))
  {
    v39 = *(v0 + 744);
    sub_10008D5D8((v0 + 384), v0 + 344);

    sub_10009D9D0();
    sub_10008D5F0(v0 + 344, v0 + 424);

    v40 = sub_10009D9E0();
    v41 = sub_10009DFF0();

    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 744);
    v44 = *(v0 + 720);
    v45 = *(v0 + 712);
    if (v42)
    {
      v46 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v46 = 136315394;
      *(v46 + 4) = sub_1000307A4(v106, v108, &v111);
      *(v46 + 12) = 2080;
      sub_1000067C8((v0 + 424), *(v0 + 448));
      v102 = v43;
      v47 = sub_10003BB34();
      v49 = v48;
      sub_10000670C((v0 + 424));
      v50 = sub_1000307A4(v47, v49, &v111);

      *(v46 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "Finishing %s, sending event %s", v46, 0x16u);
      swift_arrayDestroy();

      v51 = *(v44 + 8);
      v51(v102, v45);
    }

    else
    {

      v51 = *(v44 + 8);
      v51(v43, v45);
      sub_10000670C((v0 + 424));
    }

    v55 = *(v0 + 736);
    v56 = *(v0 + 648);
    v57 = sub_1000067C8((v0 + 344), *(v0 + 368));
    sub_100079DD8(v57);
    sub_10009D9D0();
    sub_10008D5F0(v0 + 344, v0 + 464);
    v58 = v56;
    v59 = sub_10009D9E0();
    v60 = sub_10009DFF0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = *(v0 + 976);
      v62 = *(v0 + 968);
      v101 = *(v0 + 720);
      v103 = *(v0 + 712);
      v105 = *(v0 + 736);
      v100 = v51;
      v63 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v63 = 136315650;
      *(v0 + 600) = v62;
      *(v0 + 608) = v61;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v64 = sub_10009DDA0();
      v66 = sub_1000307A4(v64, v65, &v111);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2080;
      sub_1000067C8((v0 + 464), *(v0 + 488));
      sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v67 = sub_10009DD10();
      v69 = v68;

      sub_10000670C((v0 + 464));
      v70 = sub_1000307A4(v67, v69, &v111);

      *(v63 + 14) = v70;
      *(v63 + 22) = 2080;
      *(v63 + 24) = sub_1000307A4(0xD00000000000005FLL, 0x80000001000A7D60, &v111);
      _os_log_impl(&_mh_execute_header, v59, v60, "Requester: %s, event detail is: %s\n%s", v63, 0x20u);
      swift_arrayDestroy();

      v100(v105, v103);
    }

    else
    {
      v71 = *(v0 + 736);
      v72 = *(v0 + 720);
      v73 = *(v0 + 712);

      v51(v71, v73);
      sub_10000670C((v0 + 464));
    }

    v54 = v108;
    v37 = 0x73736563637553;
    sub_1000067C8((v0 + 344), *(v0 + 368));
    if (sub_10003CCE4())
    {
      v37 = 0x7272652068746957;
      v53 = 0xEA0000000000726FLL;
    }

    else
    {
      v53 = 0xE700000000000000;
    }

    sub_10000670C((v0 + 344));
  }

  else
  {
    v52 = *(v0 + 976);

    sub_100008728(v0 + 384, &qword_1000CB798, &qword_1000A27F0);
    v53 = 0xE700000000000000;
    v54 = v108;
  }

  v74 = *(v0 + 728);
  sub_10009D9D0();

  v75 = sub_10009D9E0();
  v76 = sub_10009DFF0();

  v77 = os_log_type_enabled(v75, v76);
  v78 = *(v0 + 728);
  v79 = *(v0 + 720);
  v80 = *(v0 + 712);
  if (v77)
  {
    v109 = *(v0 + 712);
    v81 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v81 = 136315394;
    v82 = sub_1000307A4(v106, v54, &v111);

    *(v81 + 4) = v82;
    *(v81 + 12) = 2080;
    v83 = sub_1000307A4(v37, v53, &v111);

    *(v81 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "Finished %s: %s.", v81, 0x16u);
    swift_arrayDestroy();

    (*(v79 + 8))(v78, v109);
  }

  else
  {

    (*(v79 + 8))(v78, v80);
  }

  sub_100008728(v0 + 304, &qword_1000CB798, &qword_1000A27F0);
  sub_10008E904(v0 + 504);

  sub_10008E904(v0 + 504);
  v84 = *(v0 + 832);

  if (v107)
  {
    v85 = [v110 _copyWithoutPersonalInfo];
  }

  else
  {
    v85 = 0;
  }

  v86 = *(v0 + 944);
  v87 = *(v0 + 832);
  v88 = *(v0 + 776);
  v89 = *(v0 + 664);
  (*(v0 + 656))(v88, v85, 0);

  sub_100008728(v88, &qword_1000CA250, &qword_10009FDF8);
  v90 = *(v0 + 792);
  v91 = *(v0 + 784);
  v92 = *(v0 + 776);
  v93 = *(v0 + 760);
  v94 = *(v0 + 752);
  v95 = *(v0 + 744);
  v96 = *(v0 + 736);
  v97 = *(v0 + 728);

  v98 = *(v0 + 8);

  return v98();
}

uint64_t sub_10005832C()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 808);

  *(v0 + 632) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v39 = *(v0 + 928);
    v3 = *(v0 + 920);
    v4 = *(v0 + 912);
    v5 = *(v0 + 832);
    v6 = *(v0 + 792);
    v7 = *(v0 + 664);
    v41 = *(v0 + 656);
    v43 = *(v0 + 944);
    v8 = *(v0 + 648);

    v9 = *(v0 + 176);
    *(v0 + 112) = *(v0 + 160);
    *(v0 + 128) = v9;
    *(v0 + 137) = *(v0 + 185);
    v10 = *(v0 + 200);
    v12 = *(v0 + 160);
    v11 = *(v0 + 176);
    *(v0 + 96) = *(v0 + 192);
    *(v0 + 104) = v10;
    *(v0 + 64) = v12;
    *(v0 + 80) = v11;
    v13 = v8;
    swift_retain_n();
    v14 = v13;
    sub_10008C148(v0 + 112, v0 + 208);
    LOWORD(v38) = 0;
    sub_10007B224(0xD00000000000005FLL, 0x80000001000A7D60, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v14, 0, 0, v38, v14, 0, v5);

    sub_10008C148(v0 + 112, v0 + 256);
    sub_10008F51C(0xD00000000000005FLL, 0x80000001000A7D60);
    v16 = v15;
    v3(v6, 1, 1, v4);
    v41(v6, 0, v16);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v6, &qword_1000CA250, &qword_10009FDF8);
    v17 = *(v0 + 632);

    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v20 = *(v0 + 776);
    v21 = *(v0 + 760);
    v22 = *(v0 + 752);
    v23 = *(v0 + 744);
    v24 = *(v0 + 736);
    v25 = *(v0 + 728);
  }

  else
  {
    v27 = *(v0 + 944);
    v28 = *(v0 + 832);
    v29 = *(v0 + 792);
    v30 = *(v0 + 784);
    v31 = *(v0 + 776);
    v32 = *(v0 + 760);
    v33 = *(v0 + 752);
    v40 = *(v0 + 744);
    v42 = *(v0 + 736);
    v44 = *(v0 + 728);
    v34 = *(v0 + 664);
    v35 = *(v0 + 656);

    v36 = *(v0 + 632);

    sub_100083E60(0, 0xD00000000000005FLL, 0x80000001000A7D60, v35, v34);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1000586B4()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 808);

  *(v0 + 632) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v39 = *(v0 + 928);
    v3 = *(v0 + 920);
    v4 = *(v0 + 912);
    v5 = *(v0 + 832);
    v6 = *(v0 + 792);
    v7 = *(v0 + 664);
    v41 = *(v0 + 656);
    v43 = *(v0 + 944);
    v8 = *(v0 + 648);

    v9 = *(v0 + 176);
    *(v0 + 112) = *(v0 + 160);
    *(v0 + 128) = v9;
    *(v0 + 137) = *(v0 + 185);
    v10 = *(v0 + 200);
    v12 = *(v0 + 160);
    v11 = *(v0 + 176);
    *(v0 + 96) = *(v0 + 192);
    *(v0 + 104) = v10;
    *(v0 + 64) = v12;
    *(v0 + 80) = v11;
    v13 = v8;
    swift_retain_n();
    v14 = v13;
    sub_10008C148(v0 + 112, v0 + 208);
    LOWORD(v38) = 0;
    sub_10007B224(0xD00000000000005FLL, 0x80000001000A7D60, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v14, 0, 0, v38, v14, 0, v5);

    sub_10008C148(v0 + 112, v0 + 256);
    sub_10008F51C(0xD00000000000005FLL, 0x80000001000A7D60);
    v16 = v15;
    v3(v6, 1, 1, v4);
    v41(v6, 0, v16);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v6, &qword_1000CA250, &qword_10009FDF8);
    v17 = *(v0 + 632);

    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v20 = *(v0 + 776);
    v21 = *(v0 + 760);
    v22 = *(v0 + 752);
    v23 = *(v0 + 744);
    v24 = *(v0 + 736);
    v25 = *(v0 + 728);
  }

  else
  {
    v27 = *(v0 + 944);
    v28 = *(v0 + 832);
    v29 = *(v0 + 792);
    v30 = *(v0 + 784);
    v31 = *(v0 + 776);
    v32 = *(v0 + 760);
    v33 = *(v0 + 752);
    v40 = *(v0 + 744);
    v42 = *(v0 + 736);
    v44 = *(v0 + 728);
    v34 = *(v0 + 664);
    v35 = *(v0 + 656);

    v36 = *(v0 + 632);

    sub_100083E60(0, 0xD00000000000005FLL, 0x80000001000A7D60, v35, v34);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100058A3C()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 808);

  *(v0 + 632) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v39 = *(v0 + 928);
    v3 = *(v0 + 920);
    v4 = *(v0 + 912);
    v5 = *(v0 + 832);
    v6 = *(v0 + 792);
    v7 = *(v0 + 664);
    v41 = *(v0 + 656);
    v43 = *(v0 + 944);
    v8 = *(v0 + 648);

    v9 = *(v0 + 176);
    *(v0 + 112) = *(v0 + 160);
    *(v0 + 128) = v9;
    *(v0 + 137) = *(v0 + 185);
    v10 = *(v0 + 200);
    v12 = *(v0 + 160);
    v11 = *(v0 + 176);
    *(v0 + 96) = *(v0 + 192);
    *(v0 + 104) = v10;
    *(v0 + 64) = v12;
    *(v0 + 80) = v11;
    v13 = v8;
    swift_retain_n();
    v14 = v13;
    sub_10008C148(v0 + 112, v0 + 208);
    LOWORD(v38) = 0;
    sub_10007B224(0xD00000000000005FLL, 0x80000001000A7D60, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v14, 0, 0, v38, v14, 0, v5);

    sub_10008C148(v0 + 112, v0 + 256);
    sub_10008F51C(0xD00000000000005FLL, 0x80000001000A7D60);
    v16 = v15;
    v3(v6, 1, 1, v4);
    v41(v6, 0, v16);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v6, &qword_1000CA250, &qword_10009FDF8);
    v17 = *(v0 + 632);

    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v20 = *(v0 + 776);
    v21 = *(v0 + 760);
    v22 = *(v0 + 752);
    v23 = *(v0 + 744);
    v24 = *(v0 + 736);
    v25 = *(v0 + 728);
  }

  else
  {
    v27 = *(v0 + 944);
    v28 = *(v0 + 832);
    v29 = *(v0 + 792);
    v30 = *(v0 + 784);
    v31 = *(v0 + 776);
    v32 = *(v0 + 760);
    v33 = *(v0 + 752);
    v40 = *(v0 + 744);
    v42 = *(v0 + 736);
    v44 = *(v0 + 728);
    v34 = *(v0 + 664);
    v35 = *(v0 + 656);

    v36 = *(v0 + 632);

    sub_100083E60(0, 0xD00000000000005FLL, 0x80000001000A7D60, v35, v34);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100058DC4()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 808);

  *(v0 + 632) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v39 = *(v0 + 928);
    v3 = *(v0 + 920);
    v4 = *(v0 + 912);
    v5 = *(v0 + 832);
    v6 = *(v0 + 792);
    v7 = *(v0 + 664);
    v41 = *(v0 + 656);
    v43 = *(v0 + 944);
    v8 = *(v0 + 648);

    v9 = *(v0 + 176);
    *(v0 + 112) = *(v0 + 160);
    *(v0 + 128) = v9;
    *(v0 + 137) = *(v0 + 185);
    v10 = *(v0 + 200);
    v12 = *(v0 + 160);
    v11 = *(v0 + 176);
    *(v0 + 96) = *(v0 + 192);
    *(v0 + 104) = v10;
    *(v0 + 64) = v12;
    *(v0 + 80) = v11;
    v13 = v8;
    swift_retain_n();
    v14 = v13;
    sub_10008C148(v0 + 112, v0 + 208);
    LOWORD(v38) = 0;
    sub_10007B224(0xD00000000000005FLL, 0x80000001000A7D60, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v14, 0, 0, v38, v14, 0, v5);

    sub_10008C148(v0 + 112, v0 + 256);
    sub_10008F51C(0xD00000000000005FLL, 0x80000001000A7D60);
    v16 = v15;
    v3(v6, 1, 1, v4);
    v41(v6, 0, v16);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v6, &qword_1000CA250, &qword_10009FDF8);
    v17 = *(v0 + 632);

    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v20 = *(v0 + 776);
    v21 = *(v0 + 760);
    v22 = *(v0 + 752);
    v23 = *(v0 + 744);
    v24 = *(v0 + 736);
    v25 = *(v0 + 728);
  }

  else
  {
    v27 = *(v0 + 944);
    v28 = *(v0 + 832);
    v29 = *(v0 + 792);
    v30 = *(v0 + 784);
    v31 = *(v0 + 776);
    v32 = *(v0 + 760);
    v33 = *(v0 + 752);
    v40 = *(v0 + 744);
    v42 = *(v0 + 736);
    v44 = *(v0 + 728);
    v34 = *(v0 + 664);
    v35 = *(v0 + 656);

    v36 = *(v0 + 632);

    sub_100083E60(0, 0xD00000000000005FLL, 0x80000001000A7D60, v35, v34);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10005914C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v8 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v44 - v10;
  v12 = sub_10009D9F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v17 = sub_10009D7A0();
  }

  else
  {
    v17 = 0;
  }

  sub_10009D9D0();
  v18 = v17;
  v19 = sub_10009D9E0();
  v20 = sub_10009DFD0();

  if (os_log_type_enabled(v19, v20))
  {
    v47 = v20;
    v48 = v19;
    v49 = v13;
    v50 = v12;
    v51 = v18;
    v44[0] = v17;
    v44[1] = a5;
    v45 = a4;
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v21 = 136315394;
    v22 = sub_10009DE60();
    v24 = v23;
    if (("Invite:withReply:)" & 0x2000000000000000) != 0)
    {
      v25 = ("Invite:withReply:)" >> 40) & 0xF0000;
    }

    else
    {
      v25 = 6225920;
    }

    if (v25)
    {
      v26 = v22;
      while (sub_10009DE60() != v26 || v27 != v24)
      {
        v28 = sub_10009E2E0();

        if (v28)
        {
          goto LABEL_18;
        }

        if ((v25 ^ sub_10009DE00()) < 0x4000)
        {
          goto LABEL_14;
        }
      }

LABEL_18:

      sub_10009DE70();
      v31 = sub_10009DDD0();
      v30 = v32;

      v29 = v31;
    }

    else
    {
LABEL_14:

      v29 = 0;
      v30 = 0xE000000000000000;
    }

    a4 = v45;
    v17 = v44[0];
    v18 = v51;
    v33 = sub_1000307A4(v29, v30, &v52);

    *(v21 + 4) = v33;
    *(v21 + 12) = 2080;
    if (v17)
    {
      v34 = v18;
      v35 = [v34 description];
      v36 = sub_10009DD90();
      v38 = v37;

      v18 = v51;
    }

    else
    {
      v38 = 0xEE00646569666963;
      v36 = 0x65707320656E6F6ELL;
    }

    v39 = sub_1000307A4(v36, v38, &v52);

    *(v21 + 14) = v39;
    v40 = v48;
    _os_log_impl(&_mh_execute_header, v48, v47, "%s: model concluded SPI unexpectedly, deferCheckReplyCount() will reply then fatalError(). Error: %s", v21, 0x16u);
    swift_arrayDestroy();

    (*(v49 + 8))(v16, v50);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v41 = sub_10009D860();
  (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
  v42 = v18;
  a4(v11, 0, v17);

  sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
  result = sub_10009E250();
  __break(1u);
  return result;
}

uint64_t sub_100059628(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v44 = a8;
  v47 = a7;
  v45 = a5;
  v46 = a6;
  v35 = a4;
  v36 = a3;
  v37 = a2;
  v42 = a9;
  v11 = sub_10009D860();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  __chkstk_darwin(v11);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v34 - v15;
  strcpy(v48, "sharingURL: ");
  BYTE5(v48[1]) = 0;
  HIWORD(v48[1]) = -5120;
  sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
  v38 = v11;
  v49._countAndFlagsBits = sub_10009E2C0();
  sub_10009DE10(v49);

  sub_100079B58(v48[0], v48[1], 0xD000000000000082, 0x80000001000A7CD0);

  v40 = v16;
  sub_10009DF20();
  v17 = sub_10009DF40();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v18 = v41;
  (*(v41 + 16))(&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  sub_10009DF10();
  v19 = a2;

  v43 = v43;
  v20 = v42;

  v21 = sub_10009DF00();
  v22 = v18;
  v23 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 2) = v21;
  *(v28 + 3) = &protocol witness table for MainActor;
  v29 = v44;
  *(v28 + 4) = v43;
  *(v28 + 5) = v29;
  *(v28 + 6) = v20;
  (*(v22 + 32))(&v28[v23], v39, v38);
  v30 = v36;
  *&v28[v24] = v37;
  *&v28[v25] = v30;
  *&v28[v26] = v35;
  v31 = v46;
  *&v28[v27] = v45;
  v32 = &v28[(v27 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v32 = v31;
  v32[8] = v47;
  sub_10004CDF4(0, 0, v40, &unk_1000A2988, v28);
}

uint64_t sub_100059994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 59) = v21;
  *(v8 + 488) = v19;
  *(v8 + 496) = v20;
  *(v8 + 472) = v18;
  *(v8 + 456) = a7;
  *(v8 + 464) = a8;
  *(v8 + 440) = a5;
  *(v8 + 448) = a6;
  *(v8 + 432) = a4;
  v9 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v8 + 504) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  *(v8 + 528) = swift_task_alloc();
  v11 = sub_10009D9F0();
  *(v8 + 536) = v11;
  v12 = *(v11 - 8);
  *(v8 + 544) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 552) = swift_task_alloc();
  *(v8 + 560) = sub_10009DF10();
  *(v8 + 568) = sub_10009DF00();
  v15 = sub_10009DED0();
  *(v8 + 576) = v15;
  *(v8 + 584) = v14;

  return _swift_task_switch(sub_100059B0C, v15, v14);
}

uint64_t sub_100059B0C()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = type metadata accessor for ModelDelegateSPI();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[74] = sub_10003F4A4();
  v6 = swift_allocObject();
  v0[75] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;

  v7 = swift_task_alloc();
  v0[76] = v7;
  *v7 = v0;
  v7[1] = sub_100059C14;
  v9 = v0[57];
  v8 = v0[58];

  return sub_100040D90(v9, v8, sub_10008E8A0, v6);
}

uint64_t sub_100059C14()
{
  v1 = *v0;
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 600);
  v7 = *v0;

  v4 = *(v1 + 584);
  v5 = *(v1 + 576);

  return _swift_task_switch(sub_100059D58, v5, v4);
}

uint64_t sub_100059D58()
{
  v1 = *(*(v0 + 592) + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v0 + 616) = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = (*(v0 + 432) + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 400) = v4;
    *(v0 + 408) = v3;

    swift_retain_n();
    sub_10009DB00();
  }

  else
  {
  }

  v6 = *(v0 + 480);
  v26 = *(v0 + 472);

  sub_1000799A0(v7);
  sub_100097154(v26);

  v8 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 57))
  {
    v9 = swift_task_alloc();
    *(v0 + 624) = v9;
    *v9 = v0;
    v9[1] = sub_10005A104;
    v11 = *(v0 + 456);
    v10 = *(v0 + 464);

    return sub_100025D14(v11, v10);
  }

  else
  {
    v12 = *(v0 + 592);
    v13 = *(v0 + 568);
    v15 = *(v0 + 440);
    v14 = *(v0 + 448);
    v16 = *(v0 + 432);

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 56) = -1;
    v17 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
    v18 = v16;
    LOWORD(v25) = 0;
    sub_10007C428(0xD000000000000082, 0x80000001000A7CD0, 0xD00000000000003DLL, 0x80000001000A76F0, v0 + 16, v17, v18, 0, 0, v25, v18);

    v19 = v17;
    v15(0, 0, v17);

    v20 = *(v0 + 552);
    v21 = *(v0 + 528);
    v22 = *(v0 + 520);
    v23 = *(v0 + 512);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_10005A104()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v8 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v4 = *(v2 + 584);
    v5 = *(v2 + 576);
    v6 = sub_10005B72C;
  }

  else
  {
    v6 = sub_10005A224;
    v5 = 0;
    v4 = 0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10005A224()
{
  v1 = *(v0 + 560);
  *(v0 + 640) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10005A2B0, v3, v2);
}

uint64_t sub_10005A2B0()
{
  v1 = v0[80];
  v2 = v0[77];
  v3 = v0[61];

  v0[81] = *(v2 + 16);

  v4 = swift_task_alloc();
  v0[82] = v4;
  *v4 = v0;
  v4[1] = sub_10005A384;
  if (v3 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return sub_100048CBC(v5, v2, 0);
}

uint64_t sub_10005A384()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v7 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v4 = sub_10005A720;
  }

  else
  {
    v5 = *(v2 + 648);

    v4 = sub_10005A4A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10005A4A0()
{
  v1 = *(v0 + 560);
  *(v0 + 672) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10005A52C, v3, v2);
}

uint64_t sub_10005A52C()
{
  v1 = v0[84];
  v2 = v0[77];
  v3 = v0[62];

  v0[85] = *(v2 + 16);

  v4 = swift_task_alloc();
  v0[86] = v4;
  *v4 = v0;
  v4[1] = sub_10005A604;
  if (v3 == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return sub_100049714(v5, v2, 0, 1);
}

uint64_t sub_10005A604()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v7 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v4 = sub_10005AC7C;
  }

  else
  {
    v5 = *(v2 + 680);

    v4 = sub_10005A790;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10005A720()
{
  v1 = v0[81];
  v0[92] = v0[83];

  v2 = v0[73];
  v3 = v0[72];

  return _swift_task_switch(sub_10005ACEC, v3, v2);
}

uint64_t sub_10005A790()
{
  v1 = *(v0 + 560);
  *(v0 + 704) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10005A81C, v3, v2);
}

uint64_t sub_10005A81C()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 616);
  v3 = *(v0 + 59);

  v4 = *(v2 + 16);
  if (v3)
  {
    v5 = &off_1000C1AF0;
  }

  else
  {
    v5 = &off_1000C1B18;
  }

  sub_100047B6C(v5);

  return _swift_task_switch(sub_10005A8C8, 0, 0);
}

uint64_t sub_10005A8C8()
{
  v1 = *(v0 + 560);
  *(v0 + 712) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10005A954, v3, v2);
}

uint64_t sub_10005A954()
{
  v1 = v0[89];
  v2 = v0[77];

  v0[90] = *(v2 + 16);

  return _swift_task_switch(sub_10005A9D0, 0, 0);
}

uint64_t sub_10005A9D0()
{
  v1 = *(v0 + 560);
  *(v0 + 728) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10005AA5C, v3, v2);
}

uint64_t sub_10005AA5C()
{
  v1 = v0[91];
  v2 = v0[90];

  sub_10004A3E0(0);

  v3 = v0[73];
  v4 = v0[72];

  return _swift_task_switch(sub_10005AAD8, v4, v3);
}

uint64_t sub_10005AAD8()
{
  v1 = *(*(v0 + 616) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 58) == 1)
  {
    v2 = *(v0 + 552);
    sub_10009D9D0();
    v3 = sub_10009D9E0();
    v4 = sub_10009DFD0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "addParticipantsToShare (internal) will return an error for this public share", v5, 2u);
    }

    v6 = *(v0 + 552);
    v7 = *(v0 + 544);
    v8 = *(v0 + 536);

    (*(v7 + 8))(v6, v8);
  }

  v9 = *(v0 + 616);
  v10 = swift_task_alloc();
  *(v0 + 744) = v10;
  *v10 = v0;
  v10[1] = sub_10005AFA4;
  v11 = *(v0 + 59);

  return sub_100023A48(v11, 0);
}

uint64_t sub_10005AC7C()
{
  v1 = v0[85];
  v0[92] = v0[87];

  v2 = v0[73];
  v3 = v0[72];

  return _swift_task_switch(sub_10005ACEC, v3, v2);
}

uint64_t sub_10005ACEC()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 568);

  *(v0 + 416) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 616);
    v4 = *(v0 + 592);
    v6 = *(v0 + 440);
    v5 = *(v0 + 448);
    v7 = *(v0 + 432);

    v8 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v8;
    *(v0 + 137) = *(v0 + 233);
    v9 = *(v0 + 248);
    v11 = *(v0 + 208);
    v10 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v9;
    *(v0 + 64) = v11;
    *(v0 + 80) = v10;
    v12 = v7;
    sub_10008C148(v0 + 112, v0 + 256);
    LOWORD(v32) = 0;
    sub_10007C428(0xD000000000000082, 0x80000001000A7CD0, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v12, 0, 0, v32, v12);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD000000000000082, 0x80000001000A7CD0);
    v14 = v13;
    v15 = v13;
    v6(0, 0, v14);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    v16 = *(v0 + 416);

    v17 = *(v0 + 552);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v20 = *(v0 + 512);
  }

  else
  {
    v22 = *(v0 + 616);
    v23 = *(v0 + 592);
    v24 = *(v0 + 552);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v27 = *(v0 + 512);
    v29 = *(v0 + 440);
    v28 = *(v0 + 448);

    v30 = *(v0 + 416);

    sub_100084378(0, 0xD000000000000082, 0x80000001000A7CD0, v29, v28);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10005AFA4()
{
  v2 = *(*v1 + 744);
  v3 = *v1;
  v3[94] = v0;

  if (v0)
  {
    v4 = v3[73];
    v5 = v3[72];

    return _swift_task_switch(sub_10005B9E4, v5, v4);
  }

  else
  {
    v6 = v3[77];
    v7 = swift_task_alloc();
    v3[95] = v7;
    *v7 = v3;
    v7[1] = sub_10005B110;

    return sub_100026F78();
  }
}

uint64_t sub_10005B110()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  *(*v1 + 768) = v0;

  v5 = *(v2 + 584);
  v6 = *(v2 + 576);
  if (v0)
  {
    v7 = sub_10005BC9C;
  }

  else
  {
    v7 = sub_10005B24C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005B24C()
{
  v1 = v0[77];
  v2 = v0[66];
  v3 = sub_10009D860();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[97] = v4;
  *v4 = v0;
  v4[1] = sub_10005B328;
  v5 = v0[66];

  return sub_100028ADC(v5);
}

uint64_t sub_10005B328()
{
  v2 = *v1;
  v3 = (*v1)[97];
  v8 = *v1;
  (*v1)[98] = v0;

  sub_100008728(v2[66], &qword_1000CA250, &qword_10009FDF8);
  v4 = v2[73];
  v5 = v2[72];
  if (v0)
  {
    v6 = sub_10005BF54;
  }

  else
  {
    v6 = sub_10005B474;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10005B474()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 568);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);
  v29 = *(v0 + 504);
  v30 = *(v0 + 432);

  v5 = sub_100094060();
  v7 = v6;
  v9 = v8;
  *(v0 + 352) = v5;
  *(v0 + 360) = v6;
  *(v0 + 368) = v8;
  v10 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v11 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  v12 = *(v0 + 424);
  *(v0 + 192) = 0;
  *(v0 + 200) = -1;
  sub_100008658(v3, v4, &qword_1000CA250, &qword_10009FDF8);
  v13 = sub_10009DDA0();
  v15 = v14;
  v16 = v30;
  sub_10008E8A8(v0 + 352, v0 + 376);
  LOWORD(v28) = v9;
  sub_10007C428(0xD000000000000082, 0x80000001000A7CD0, v13, v15, v0 + 160, 0, v16, v5, v7, v28, v16);
  sub_10008E904(v0 + 352);

  sub_10008E904(v0 + 352);

  if (v12)
  {
    v17 = [v12 _copyWithoutPersonalInfo];
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v0 + 616);
  v19 = *(v0 + 592);
  v20 = *(v0 + 520);
  v21 = *(v0 + 448);
  (*(v0 + 440))(1, v17, 0);

  sub_100008728(v20, &qword_1000CA250, &qword_10009FDF8);
  v22 = *(v0 + 552);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10005B72C()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 568);

  *(v0 + 416) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 616);
    v4 = *(v0 + 592);
    v6 = *(v0 + 440);
    v5 = *(v0 + 448);
    v7 = *(v0 + 432);

    v8 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v8;
    *(v0 + 137) = *(v0 + 233);
    v9 = *(v0 + 248);
    v11 = *(v0 + 208);
    v10 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v9;
    *(v0 + 64) = v11;
    *(v0 + 80) = v10;
    v12 = v7;
    sub_10008C148(v0 + 112, v0 + 256);
    LOWORD(v32) = 0;
    sub_10007C428(0xD000000000000082, 0x80000001000A7CD0, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v12, 0, 0, v32, v12);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD000000000000082, 0x80000001000A7CD0);
    v14 = v13;
    v15 = v13;
    v6(0, 0, v14);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    v16 = *(v0 + 416);

    v17 = *(v0 + 552);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v20 = *(v0 + 512);
  }

  else
  {
    v22 = *(v0 + 616);
    v23 = *(v0 + 592);
    v24 = *(v0 + 552);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v27 = *(v0 + 512);
    v29 = *(v0 + 440);
    v28 = *(v0 + 448);

    v30 = *(v0 + 416);

    sub_100084378(0, 0xD000000000000082, 0x80000001000A7CD0, v29, v28);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10005B9E4()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 568);

  *(v0 + 416) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 616);
    v4 = *(v0 + 592);
    v6 = *(v0 + 440);
    v5 = *(v0 + 448);
    v7 = *(v0 + 432);

    v8 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v8;
    *(v0 + 137) = *(v0 + 233);
    v9 = *(v0 + 248);
    v11 = *(v0 + 208);
    v10 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v9;
    *(v0 + 64) = v11;
    *(v0 + 80) = v10;
    v12 = v7;
    sub_10008C148(v0 + 112, v0 + 256);
    LOWORD(v32) = 0;
    sub_10007C428(0xD000000000000082, 0x80000001000A7CD0, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v12, 0, 0, v32, v12);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD000000000000082, 0x80000001000A7CD0);
    v14 = v13;
    v15 = v13;
    v6(0, 0, v14);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    v16 = *(v0 + 416);

    v17 = *(v0 + 552);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v20 = *(v0 + 512);
  }

  else
  {
    v22 = *(v0 + 616);
    v23 = *(v0 + 592);
    v24 = *(v0 + 552);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v27 = *(v0 + 512);
    v29 = *(v0 + 440);
    v28 = *(v0 + 448);

    v30 = *(v0 + 416);

    sub_100084378(0, 0xD000000000000082, 0x80000001000A7CD0, v29, v28);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10005BC9C()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 568);

  *(v0 + 416) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 616);
    v4 = *(v0 + 592);
    v6 = *(v0 + 440);
    v5 = *(v0 + 448);
    v7 = *(v0 + 432);

    v8 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v8;
    *(v0 + 137) = *(v0 + 233);
    v9 = *(v0 + 248);
    v11 = *(v0 + 208);
    v10 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v9;
    *(v0 + 64) = v11;
    *(v0 + 80) = v10;
    v12 = v7;
    sub_10008C148(v0 + 112, v0 + 256);
    LOWORD(v32) = 0;
    sub_10007C428(0xD000000000000082, 0x80000001000A7CD0, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v12, 0, 0, v32, v12);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD000000000000082, 0x80000001000A7CD0);
    v14 = v13;
    v15 = v13;
    v6(0, 0, v14);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    v16 = *(v0 + 416);

    v17 = *(v0 + 552);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v20 = *(v0 + 512);
  }

  else
  {
    v22 = *(v0 + 616);
    v23 = *(v0 + 592);
    v24 = *(v0 + 552);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v27 = *(v0 + 512);
    v29 = *(v0 + 440);
    v28 = *(v0 + 448);

    v30 = *(v0 + 416);

    sub_100084378(0, 0xD000000000000082, 0x80000001000A7CD0, v29, v28);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10005BF54()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 568);

  *(v0 + 416) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 616);
    v4 = *(v0 + 592);
    v6 = *(v0 + 440);
    v5 = *(v0 + 448);
    v7 = *(v0 + 432);

    v8 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v8;
    *(v0 + 137) = *(v0 + 233);
    v9 = *(v0 + 248);
    v11 = *(v0 + 208);
    v10 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v9;
    *(v0 + 64) = v11;
    *(v0 + 80) = v10;
    v12 = v7;
    sub_10008C148(v0 + 112, v0 + 256);
    LOWORD(v32) = 0;
    sub_10007C428(0xD000000000000082, 0x80000001000A7CD0, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v12, 0, 0, v32, v12);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD000000000000082, 0x80000001000A7CD0);
    v14 = v13;
    v15 = v13;
    v6(0, 0, v14);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    v16 = *(v0 + 416);

    v17 = *(v0 + 552);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v20 = *(v0 + 512);
  }

  else
  {
    v22 = *(v0 + 616);
    v23 = *(v0 + 592);
    v24 = *(v0 + 552);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v27 = *(v0 + 512);
    v29 = *(v0 + 440);
    v28 = *(v0 + 448);

    v30 = *(v0 + 416);

    sub_100084378(0, 0xD000000000000082, 0x80000001000A7CD0, v29, v28);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10005C20C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v8 = sub_10009D9F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v13 = sub_10009D7A0();
  }

  else
  {
    v13 = 0;
  }

  sub_10009D9D0();
  v14 = v13;
  v15 = sub_10009D9E0();
  v16 = sub_10009DFD0();

  if (os_log_type_enabled(v15, v16))
  {
    v44 = v16;
    v46 = v14;
    v47 = v13;
    v45 = v9;
    v40 = v8;
    v41 = a5;
    v42 = a4;
    v17 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v17 = 136315394;
    v18 = sub_10009DE60();
    v20 = v19;
    if (("ontainerSetupInfo:withReply:)" & 0x2000000000000000) != 0)
    {
      v21 = ("ontainerSetupInfo:withReply:)" >> 40) & 0xF0000;
    }

    else
    {
      v21 = 8519680;
    }

    if (v21)
    {
      v22 = v18;
      while (sub_10009DE60() != v22 || v23 != v20)
      {
        v24 = sub_10009E2E0();

        if (v24)
        {
          goto LABEL_18;
        }

        if ((v21 ^ sub_10009DE00()) < 0x4000)
        {
          goto LABEL_14;
        }
      }

LABEL_18:

      sub_10009DE70();
      v27 = sub_10009DDD0();
      v26 = v28;

      v25 = v27;
    }

    else
    {
LABEL_14:

      v25 = 0;
      v26 = 0xE000000000000000;
    }

    a4 = v42;
    v29 = v40;
    v30 = sub_1000307A4(v25, v26, &v48);

    *(v17 + 4) = v30;
    *(v17 + 12) = 2080;
    if (v47)
    {
      v31 = v46;
      v32 = [v31 description];
      v33 = sub_10009DD90();
      v35 = v34;
    }

    else
    {
      v35 = 0xEE00646569666963;
      v33 = 0x65707320656E6F6ELL;
    }

    v36 = sub_1000307A4(v33, v35, &v48);

    *(v17 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v15, v44, "%s: model concluded SPI unexpectedly, deferCheckReplyCount() will reply then fatalError(). Error: %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v45 + 8))(v12, v29);
    v14 = v46;
    v13 = v47;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v37 = v14;
  a4(0, 0, v13);

  result = sub_10009E250();
  __break(1u);
  return result;
}

void sub_10005C7D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_10009D7A0();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2);
}

uint64_t sub_10005C850(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v26 = a3;
  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v23 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  strcpy(v27, "sharingURL: ");
  BYTE5(v27[1]) = 0;
  HIWORD(v27[1]) = -5120;
  sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
  v28._countAndFlagsBits = sub_10009E2C0();
  sub_10009DE10(v28);

  sub_100079B58(v27[0], v27[1], 0xD00000000000003DLL, 0x80000001000A7C90);

  sub_10009DF20();
  v13 = sub_10009DF40();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  sub_10009DF10();
  v14 = a2;
  v15 = a2;
  v16 = v25;
  v17 = v24;

  v18 = sub_10009DF00();
  v19 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = &protocol witness table for MainActor;
  v21 = v26;
  *(v20 + 4) = v16;
  *(v20 + 5) = v21;
  *(v20 + 6) = v17;
  (*(v7 + 32))(&v20[v19], v23, v6);
  *&v20[(v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = v14;
  sub_10004CDF4(0, 0, v12, &unk_1000A2978, v20);
}

uint64_t sub_10005CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[51] = a7;
  v8[52] = a8;
  v8[49] = a5;
  v8[50] = a6;
  v8[48] = a4;
  sub_10009DF10();
  v8[53] = sub_10009DF00();
  v10 = sub_10009DED0();
  v8[54] = v10;
  v8[55] = v9;

  return _swift_task_switch(sub_10005CBE0, v10, v9);
}

uint64_t sub_10005CBE0()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = type metadata accessor for ModelDelegateSPI();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[56] = sub_10003F4A4();
  v6 = swift_allocObject();
  v0[57] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;

  v7 = swift_task_alloc();
  v0[58] = v7;
  *v7 = v0;
  v7[1] = sub_10005CCE8;
  v9 = v0[51];
  v8 = v0[52];

  return sub_10004185C(v9, v8, sub_10008E5D8, v6);
}

uint64_t sub_10005CCE8()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 456);
  v7 = *v0;

  v4 = *(v1 + 440);
  v5 = *(v1 + 432);

  return _swift_task_switch(sub_10005CE2C, v5, v4);
}

uint64_t sub_10005CE2C()
{
  v1 = *(v0[56] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  v0[59] = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = (v0[48] + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    swift_getKeyPath();
    swift_getKeyPath();
    v0[44] = v4;
    v0[45] = v3;

    swift_retain_n();
    sub_10009DB00();
  }

  else
  {
  }

  v6 = swift_task_alloc();
  v0[60] = v6;
  *v6 = v0;
  v6[1] = sub_10005CFC4;
  v8 = v0[51];
  v7 = v0[52];

  return sub_100025D14(v8, v7);
}

uint64_t sub_10005CFC4()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  v5 = *(v2 + 440);
  v6 = *(v2 + 432);
  if (v0)
  {
    v7 = sub_10005D7FC;
  }

  else
  {
    v7 = sub_10005D100;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005D100()
{
  v0[62] = *(v0[59] + 16);

  v1 = swift_task_alloc();
  v0[63] = v1;
  *v1 = v0;
  v1[1] = sub_10005D1A4;

  return sub_10004B1CC();
}

uint64_t sub_10005D1A4()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v9 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = v2[54];
    v5 = v2[55];
    v6 = sub_10005DA70;
  }

  else
  {
    v7 = v2[62];

    v4 = v2[54];
    v5 = v2[55];
    v6 = sub_10005D2C0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10005D2C0()
{
  v1 = *(v0 + 472);
  v2 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 57))
  {
    v3 = *(v0 + 472);
    v4 = *(v1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    *(v0 + 520) = *(v0 + 376);
    v5 = swift_task_alloc();
    *(v0 + 528) = v5;
    *v5 = v0;
    v5[1] = sub_10005D574;

    return sub_100027C80();
  }

  else
  {
    v7 = *(v0 + 472);
    v8 = *(v0 + 448);
    v9 = *(v0 + 424);
    v11 = *(v0 + 392);
    v10 = *(v0 + 400);
    v12 = *(v0 + 384);

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 56) = -1;
    v13 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
    v14 = v12;

    sub_10007E720(0xD00000000000003DLL, 0x80000001000A7C90, 0xD00000000000003DLL, 0x80000001000A76F0, v0 + 16, v13, v14, v14, 0, v8, 4);

    v15 = v13;
    v11(0, v13);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10005D574()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 440);
  v6 = *(v2 + 432);
  if (v0)
  {
    v7 = sub_10005DCF0;
  }

  else
  {
    v7 = sub_10005D6B0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005D6B0()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 424);
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v7 = *(v0 + 384);

  *(v0 + 192) = 0;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 200) = -1;
  v8 = v1;
  v9 = v7;

  sub_10007E720(0xD00000000000003DLL, 0x80000001000A7C90, 0x73736563637573, 0xE700000000000000, v0 + 160, 0, v9, v9, v1, v3, 4);

  v6(1, 0);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10005D7FC()
{
  v1 = *(v0 + 424);

  *(v0 + 368) = *(v0 + 488);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 472);
    v3 = *(v0 + 448);
    v5 = *(v0 + 392);
    v4 = *(v0 + 400);
    v6 = *(v0 + 384);

    v7 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v7;
    *(v0 + 137) = *(v0 + 233);
    v8 = *(v0 + 248);
    v10 = *(v0 + 208);
    v9 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v8;
    *(v0 + 64) = v10;
    *(v0 + 80) = v9;
    v11 = v6;
    swift_retain_n();
    v12 = v11;
    sub_10008C148(v0 + 112, v0 + 256);
    sub_10007E720(0xD00000000000003DLL, 0x80000001000A7C90, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v12, v12, 0, v3, 4);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD00000000000003DLL, 0x80000001000A7C90);
    v14 = v13;
    v15 = v13;
    v5(0, v14);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    v16 = *(v0 + 368);
  }

  else
  {
    v18 = *(v0 + 472);
    v19 = *(v0 + 448);
    v21 = *(v0 + 392);
    v20 = *(v0 + 400);

    v22 = *(v0 + 368);

    sub_1000847E4(0, 0xD00000000000003DLL, 0x80000001000A7C90, v21, v20);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10005DA70()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 424);

  *(v0 + 368) = *(v0 + 512);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 472);
    v4 = *(v0 + 448);
    v6 = *(v0 + 392);
    v5 = *(v0 + 400);
    v7 = *(v0 + 384);

    v8 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v8;
    *(v0 + 137) = *(v0 + 233);
    v9 = *(v0 + 248);
    v11 = *(v0 + 208);
    v10 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v9;
    *(v0 + 64) = v11;
    *(v0 + 80) = v10;
    v12 = v7;
    swift_retain_n();
    v13 = v12;
    sub_10008C148(v0 + 112, v0 + 256);
    sub_10007E720(0xD00000000000003DLL, 0x80000001000A7C90, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v13, v13, 0, v4, 4);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD00000000000003DLL, 0x80000001000A7C90);
    v15 = v14;
    v16 = v14;
    v6(0, v15);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    v17 = *(v0 + 368);
  }

  else
  {
    v19 = *(v0 + 472);
    v20 = *(v0 + 448);
    v22 = *(v0 + 392);
    v21 = *(v0 + 400);

    v23 = *(v0 + 368);

    sub_1000847E4(0, 0xD00000000000003DLL, 0x80000001000A7C90, v22, v21);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10005DCF0()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 424);

  *(v0 + 368) = *(v0 + 536);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 472);
    v4 = *(v0 + 448);
    v6 = *(v0 + 392);
    v5 = *(v0 + 400);
    v7 = *(v0 + 384);

    v8 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v8;
    *(v0 + 137) = *(v0 + 233);
    v9 = *(v0 + 248);
    v11 = *(v0 + 208);
    v10 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v9;
    *(v0 + 64) = v11;
    *(v0 + 80) = v10;
    v12 = v7;
    swift_retain_n();
    v13 = v12;
    sub_10008C148(v0 + 112, v0 + 256);
    sub_10007E720(0xD00000000000003DLL, 0x80000001000A7C90, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v13, v13, 0, v4, 4);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD00000000000003DLL, 0x80000001000A7C90);
    v15 = v14;
    v16 = v14;
    v6(0, v15);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    v17 = *(v0 + 368);
  }

  else
  {
    v19 = *(v0 + 472);
    v20 = *(v0 + 448);
    v22 = *(v0 + 392);
    v21 = *(v0 + 400);

    v23 = *(v0 + 368);

    sub_1000847E4(0, 0xD00000000000003DLL, 0x80000001000A7C90, v22, v21);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10005DF6C(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v7 = sub_10009D9F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = sub_10009D7A0();
  }

  else
  {
    v12 = 0;
  }

  sub_10009D9D0();
  v13 = v12;
  v14 = sub_10009D9E0();
  v15 = sub_10009DFD0();

  if (os_log_type_enabled(v14, v15))
  {
    v43 = v15;
    v45 = v13;
    v46 = v12;
    v44 = v8;
    v39 = v7;
    v40 = a4;
    v41 = a3;
    v16 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v16 = 136315394;
    v17 = sub_10009DE60();
    v19 = v18;
    if ((":containerSetupInfo:withReply:)" & 0x2000000000000000) != 0)
    {
      v20 = (":containerSetupInfo:withReply:)" >> 40) & 0xF0000;
    }

    else
    {
      v20 = 3997696;
    }

    if (v20)
    {
      v21 = v17;
      while (sub_10009DE60() != v21 || v22 != v19)
      {
        v23 = sub_10009E2E0();

        if (v23)
        {
          goto LABEL_18;
        }

        if ((v20 ^ sub_10009DE00()) < 0x4000)
        {
          goto LABEL_14;
        }
      }

LABEL_18:

      sub_10009DE70();
      v26 = sub_10009DDD0();
      v25 = v27;

      v24 = v26;
    }

    else
    {
LABEL_14:

      v24 = 0;
      v25 = 0xE000000000000000;
    }

    a3 = v41;
    v28 = v39;
    v29 = sub_1000307A4(v24, v25, &v47);

    *(v16 + 4) = v29;
    *(v16 + 12) = 2080;
    if (v46)
    {
      v30 = v45;
      v31 = [v30 description];
      v32 = sub_10009DD90();
      v34 = v33;
    }

    else
    {
      v34 = 0xEE00646569666963;
      v32 = 0x65707320656E6F6ELL;
    }

    v35 = sub_1000307A4(v32, v34, &v47);

    *(v16 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v14, v43, "%s: model concluded SPI unexpectedly, deferCheckReplyCount() will reply then fatalError(). Error: %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v44 + 8))(v11, v28);
    v13 = v45;
    v12 = v46;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v36 = v13;
  a3(0, v12);

  result = sub_10009E250();
  __break(1u);
  return result;
}

void sub_10005E3A4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10009D7A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10005E414(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = a1;
  v14 = [v13 description];
  v15 = sub_10009DD90();
  v17 = v16;

  sub_100079B58(v15, v17, 0xD00000000000002FLL, 0x80000001000A7C60);

  sub_10009DF20();
  v18 = sub_10009DF40();
  (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  sub_10009DF10();
  v19 = a2;
  v20 = v13;
  v21 = v4;

  v22 = sub_10009DF00();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v21;
  v23[5] = a3;
  v23[6] = a4;
  v23[7] = v20;
  v23[8] = a2;
  sub_10004CDF4(0, 0, v12, &unk_1000A2968, v23);
}

uint64_t sub_10005E5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[50] = a7;
  v8[51] = a8;
  v8[48] = a5;
  v8[49] = a6;
  v8[47] = a4;
  sub_10009DF10();
  v8[52] = sub_10009DF00();
  v10 = sub_10009DED0();
  v8[53] = v10;
  v8[54] = v9;

  return _swift_task_switch(sub_10005E684, v10, v9);
}

uint64_t sub_10005E684()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = type metadata accessor for ModelDelegateSPI();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[55] = sub_10003F4A4();
  v6 = swift_allocObject();
  v0[56] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;

  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = sub_10005E78C;
  v9 = v0[50];
  v8 = v0[51];

  return sub_10004238C(v9, v8, sub_10008E3A0, v6);
}

uint64_t sub_10005E78C()
{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 448);
  v7 = *v0;

  v4 = *(v1 + 432);
  v5 = *(v1 + 424);

  return _swift_task_switch(sub_10005E8D0, v5, v4);
}

uint64_t sub_10005E8D0()
{
  v1 = *(v0[55] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  v0[58] = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = (v0[47] + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    swift_getKeyPath();
    swift_getKeyPath();
    v0[44] = v4;
    v0[45] = v3;

    swift_retain_n();
    sub_10009DB00();
  }

  else
  {
  }

  v0[59] = *(v1 + 16);

  v6 = swift_task_alloc();
  v0[60] = v6;
  *v6 = v0;
  v6[1] = sub_10005EA74;

  return sub_10004B1CC();
}

uint64_t sub_10005EA74()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v9 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = v2[53];
    v5 = v2[54];
    v6 = sub_10005F06C;
  }

  else
  {
    v7 = v2[59];

    v4 = v2[53];
    v5 = v2[54];
    v6 = sub_10005EB90;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10005EB90()
{
  v1 = *(*(v0 + 464) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 57))
  {
    v2 = *(v0 + 464);
    v3 = swift_task_alloc();
    *(v0 + 496) = v3;
    *v3 = v0;
    v3[1] = sub_10005EDF4;

    return sub_100027C80();
  }

  else
  {
    v16 = *(v0 + 464);
    v5 = *(v0 + 440);
    v6 = *(v0 + 416);
    v7 = *(v0 + 392);
    v8 = *(v0 + 400);
    v9 = *(v0 + 376);
    v10 = *(v0 + 384);

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 56) = -1;
    v11 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];

    v12 = v8;
    v13 = v9;
    sub_10007D55C(0xD00000000000002FLL, 0x80000001000A7C60, 0xD00000000000003DLL, 0x80000001000A76F0, v0 + 16, v11, v13, v5, v12, v13);

    v14 = v11;
    v10(0, v11);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_10005EDF4()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = v0;

  v5 = *(v2 + 432);
  v6 = *(v2 + 424);
  if (v0)
  {
    v7 = sub_10005F2F8;
  }

  else
  {
    v7 = sub_10005EF30;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005EF30()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 440);
  v3 = *(v0 + 416);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = *(v0 + 376);
  v7 = *(v0 + 384);

  *(v0 + 192) = 0;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 200) = -1;

  v8 = v5;
  v9 = v6;
  sub_10007D55C(0xD00000000000002FLL, 0x80000001000A7C60, 0x73736563637573, 0xE700000000000000, v0 + 160, 0, v9, v2, v8, v9);

  v7(1, 0);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10005F06C()
{
  v1 = *(v0 + 472);

  v2 = *(v0 + 488);
  v3 = *(v0 + 416);

  *(v0 + 368) = v2;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 464);
    v5 = *(v0 + 440);
    v6 = *(v0 + 392);
    v7 = *(v0 + 400);
    v9 = *(v0 + 376);
    v8 = *(v0 + 384);

    v10 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v10;
    *(v0 + 137) = *(v0 + 233);
    v11 = *(v0 + 248);
    v13 = *(v0 + 208);
    v12 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v11;
    *(v0 + 64) = v13;
    *(v0 + 80) = v12;
    swift_retain_n();
    v14 = v7;
    v15 = v9;
    v16 = v14;
    v17 = v15;
    sub_10008C148(v0 + 112, v0 + 256);
    sub_10007D55C(0xD00000000000002FLL, 0x80000001000A7C60, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v17, v5, v16, v17);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD00000000000002FLL, 0x80000001000A7C60);
    v19 = v18;
    v20 = v18;
    v8(0, v19);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    v21 = *(v0 + 368);
  }

  else
  {
    v23 = *(v0 + 464);
    v24 = *(v0 + 440);
    v26 = *(v0 + 384);
    v25 = *(v0 + 392);

    v27 = *(v0 + 368);

    sub_1000847E4(0, 0xD00000000000002FLL, 0x80000001000A7C60, v26, v25);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10005F2F8()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 416);

  *(v0 + 368) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 464);
    v4 = *(v0 + 440);
    v5 = *(v0 + 392);
    v6 = *(v0 + 400);
    v8 = *(v0 + 376);
    v7 = *(v0 + 384);

    v9 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v9;
    *(v0 + 137) = *(v0 + 233);
    v10 = *(v0 + 248);
    v12 = *(v0 + 208);
    v11 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v10;
    *(v0 + 64) = v12;
    *(v0 + 80) = v11;
    swift_retain_n();
    v13 = v6;
    v14 = v8;
    v15 = v13;
    v16 = v14;
    sub_10008C148(v0 + 112, v0 + 256);
    sub_10007D55C(0xD00000000000002FLL, 0x80000001000A7C60, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v16, v4, v15, v16);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD00000000000002FLL, 0x80000001000A7C60);
    v18 = v17;
    v19 = v17;
    v7(0, v18);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    v20 = *(v0 + 368);
  }

  else
  {
    v22 = *(v0 + 464);
    v23 = *(v0 + 440);
    v25 = *(v0 + 384);
    v24 = *(v0 + 392);

    v26 = *(v0 + 368);

    sub_1000847E4(0, 0xD00000000000002FLL, 0x80000001000A7C60, v25, v24);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10005F57C(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v7 = sub_10009D9F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = sub_10009D7A0();
  }

  else
  {
    v12 = 0;
  }

  sub_10009D9D0();
  v13 = v12;
  v14 = sub_10009D9E0();
  v15 = sub_10009DFD0();

  if (os_log_type_enabled(v14, v15))
  {
    v43 = v15;
    v45 = v13;
    v46 = v12;
    v44 = v8;
    v39 = v7;
    v40 = a4;
    v41 = a3;
    v16 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v16 = 136315394;
    v17 = sub_10009DE60();
    v19 = v18;
    if (("ected SharingError" & 0x2000000000000000) != 0)
    {
      v20 = ("ected SharingError" >> 40) & 0xF0000;
    }

    else
    {
      v20 = 3080192;
    }

    if (v20)
    {
      v21 = v17;
      while (sub_10009DE60() != v21 || v22 != v19)
      {
        v23 = sub_10009E2E0();

        if (v23)
        {
          goto LABEL_18;
        }

        if ((v20 ^ sub_10009DE00()) < 0x4000)
        {
          goto LABEL_14;
        }
      }

LABEL_18:

      sub_10009DE70();
      v26 = sub_10009DDD0();
      v25 = v27;

      v24 = v26;
    }

    else
    {
LABEL_14:

      v24 = 0;
      v25 = 0xE000000000000000;
    }

    a3 = v41;
    v28 = v39;
    v29 = sub_1000307A4(v24, v25, &v47);

    *(v16 + 4) = v29;
    *(v16 + 12) = 2080;
    if (v46)
    {
      v30 = v45;
      v31 = [v30 description];
      v32 = sub_10009DD90();
      v34 = v33;
    }

    else
    {
      v34 = 0xEE00646569666963;
      v32 = 0x65707320656E6F6ELL;
    }

    v35 = sub_1000307A4(v32, v34, &v47);

    *(v16 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v14, v43, "%s: model concluded SPI unexpectedly, deferCheckReplyCount() will reply then fatalError(). Error: %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v44 + 8))(v11, v28);
    v13 = v45;
    v12 = v46;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v36 = v13;
  a3(0, v12);

  result = sub_10009E250();
  __break(1u);
  return result;
}

uint64_t sub_10005F9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v23 = 0x203A4C52557366;
  v24 = 0xE700000000000000;
  sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
  v25._countAndFlagsBits = sub_10009E2C0();
  sub_10009DE10(v25);

  sub_100079B58(v23, v24, 0xD000000000000026, 0x80000001000A7B40);

  sub_10009DF20();
  v14 = sub_10009DF40();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  (*(v7 + 16))(v9, a1, v6);
  sub_10009DF10();
  v15 = v3;

  v16 = sub_10009DF00();
  v17 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = &protocol witness table for MainActor;
  v19 = v22;
  *(v18 + 4) = v15;
  *(v18 + 5) = v19;
  *(v18 + 6) = a3;
  (*(v7 + 32))(&v18[v17], v9, v6);
  sub_10004CDF4(0, 0, v13, &unk_1000A28F8, v18);
}

uint64_t sub_10005FC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[56] = a6;
  v7[57] = a7;
  v7[54] = a4;
  v7[55] = a5;
  sub_10009DF10();
  v7[58] = sub_10009DF00();
  v9 = sub_10009DED0();
  v7[59] = v9;
  v7[60] = v8;

  return _swift_task_switch(sub_10005FD14, v9, v8);
}

uint64_t sub_10005FD14()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = type metadata accessor for ModelDelegateSPI();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[61] = sub_10003F4A4();
  v6 = swift_allocObject();
  v0[62] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;

  v7 = swift_task_alloc();
  v0[63] = v7;
  *v7 = v0;
  v7[1] = sub_10005FE1C;
  v8 = v0[57];

  return sub_100041D80(v8, sub_10008E1A0, v6);
}

uint64_t sub_10005FE1C()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 496);
  v7 = *v0;

  v4 = *(v1 + 480);
  v5 = *(v1 + 472);

  return _swift_task_switch(sub_10005FF60, v5, v4);
}

uint64_t sub_10005FF60()
{
  v1 = *(v0[61] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  v0[64] = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = (v0[54] + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    swift_getKeyPath();
    swift_getKeyPath();
    v0[50] = v4;
    v0[51] = v3;

    swift_retain_n();
    sub_10009DB00();
  }

  else
  {
  }

  v6 = swift_task_alloc();
  v0[65] = v6;
  *v6 = v0;
  v6[1] = sub_100060108;

  return sub_1000850B8(v1);
}

uint64_t sub_100060108(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  *(*v2 + 528) = v1;

  if (v1)
  {
    v7 = *(v4 + 472);
    v8 = *(v4 + 480);
    v9 = sub_10006044C;
  }

  else
  {
    *(v4 + 58) = a1 & 1;
    v7 = *(v4 + 472);
    v8 = *(v4 + 480);
    v9 = sub_100060234;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100060234()
{
  if (*(v0 + 58))
  {
    *(v0 + 536) = *(*(v0 + 512) + 16);

    v1 = swift_task_alloc();
    *(v0 + 544) = v1;
    *v1 = v0;
    v1[1] = sub_1000606C4;

    return sub_10004B1CC();
  }

  else
  {
    v3 = *(v0 + 512);
    v4 = *(v0 + 488);
    v5 = *(v0 + 464);
    v7 = *(v0 + 440);
    v6 = *(v0 + 448);
    v8 = *(v0 + 432);

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 56) = -1;
    v9 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:20 userInfo:0];
    v10 = v8;

    sub_10007E720(0xD000000000000026, 0x80000001000A7B40, 0xD000000000000013, 0x80000001000A7B70, v0 + 16, v9, v10, v10, 0, v4, 6);

    v11 = v9;
    v7(0, v9);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10006044C()
{
  v1 = *(v0 + 464);

  *(v0 + 416) = *(v0 + 528);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 512);
    v3 = *(v0 + 488);
    v5 = *(v0 + 440);
    v4 = *(v0 + 448);
    v6 = *(v0 + 432);

    v7 = *(v0 + 272);
    *(v0 + 160) = *(v0 + 256);
    *(v0 + 176) = v7;
    *(v0 + 185) = *(v0 + 281);
    v8 = *(v0 + 296);
    v9 = *(v0 + 256);
    v10 = *(v0 + 272);
    *(v0 + 144) = *(v0 + 288);
    *(v0 + 152) = v8;
    *(v0 + 112) = v9;
    *(v0 + 128) = v10;
    v11 = v6;
    swift_retain_n();
    v12 = v11;
    sub_10008C148(v0 + 160, v0 + 304);
    sub_10007E720(0xD000000000000026, 0x80000001000A7B40, 0xD000000000000015, 0x80000001000A76D0, v0 + 112, 0, v12, v12, 0, v3, 6);

    sub_10008C148(v0 + 160, v0 + 352);
    sub_10008F51C(0xD000000000000026, 0x80000001000A7B40);
    v14 = v13;
    v15 = v13;
    v5(0, v14);
    sub_10008C1A4(v0 + 160);

    sub_10008C1A4(v0 + 160);

    sub_10008C1A4(v0 + 160);
    v16 = *(v0 + 416);
  }

  else
  {
    v18 = *(v0 + 512);
    v19 = *(v0 + 488);
    v21 = *(v0 + 440);
    v20 = *(v0 + 448);

    v22 = *(v0 + 416);

    sub_1000847E4(0, 0xD000000000000026, 0x80000001000A7B40, v21, v20);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000606C4()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v9 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = v2[59];
    v5 = v2[60];
    v6 = sub_100060D20;
  }

  else
  {
    v7 = v2[67];

    v4 = v2[59];
    v5 = v2[60];
    v6 = sub_1000607E0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000607E0()
{
  v1 = *(v0 + 512);
  v2 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 57))
  {
    v3 = *(v0 + 512);
    v4 = *(v1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    *(v0 + 560) = *(v0 + 424);
    v5 = swift_task_alloc();
    *(v0 + 568) = v5;
    *v5 = v0;
    v5[1] = sub_100060A98;

    return sub_100027C80();
  }

  else
  {
    v7 = *(v0 + 512);
    v8 = *(v0 + 488);
    v9 = *(v0 + 464);
    v11 = *(v0 + 440);
    v10 = *(v0 + 448);
    v12 = *(v0 + 432);

    *(v0 + 96) = 0;
    *(v0 + 80) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 104) = -1;
    v13 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
    v14 = v12;

    sub_10007E720(0xD000000000000026, 0x80000001000A7B40, 0xD00000000000003DLL, 0x80000001000A76F0, v0 + 64, v13, v14, v14, 0, v8, 6);

    v15 = v13;
    v11(0, v13);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100060A98()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = v0;

  v5 = *(v2 + 480);
  v6 = *(v2 + 472);
  if (v0)
  {
    v7 = sub_100060FA4;
  }

  else
  {
    v7 = sub_100060BD4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100060BD4()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 512);
  v3 = *(v0 + 488);
  v4 = *(v0 + 464);
  v6 = *(v0 + 440);
  v5 = *(v0 + 448);
  v7 = *(v0 + 432);

  *(v0 + 240) = 0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 248) = -1;
  v8 = v1;
  v9 = v7;

  sub_10007E720(0xD000000000000026, 0x80000001000A7B40, 0x73736563637573, 0xE700000000000000, v0 + 208, 0, v9, v9, v1, v3, 6);

  v6(1, 0);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100060D20()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 464);

  *(v0 + 416) = *(v0 + 552);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 512);
    v4 = *(v0 + 488);
    v6 = *(v0 + 440);
    v5 = *(v0 + 448);
    v7 = *(v0 + 432);

    v8 = *(v0 + 272);
    *(v0 + 160) = *(v0 + 256);
    *(v0 + 176) = v8;
    *(v0 + 185) = *(v0 + 281);
    v9 = *(v0 + 296);
    v10 = *(v0 + 256);
    v11 = *(v0 + 272);
    *(v0 + 144) = *(v0 + 288);
    *(v0 + 152) = v9;
    *(v0 + 112) = v10;
    *(v0 + 128) = v11;
    v12 = v7;
    swift_retain_n();
    v13 = v12;
    sub_10008C148(v0 + 160, v0 + 304);
    sub_10007E720(0xD000000000000026, 0x80000001000A7B40, 0xD000000000000015, 0x80000001000A76D0, v0 + 112, 0, v13, v13, 0, v4, 6);

    sub_10008C148(v0 + 160, v0 + 352);
    sub_10008F51C(0xD000000000000026, 0x80000001000A7B40);
    v15 = v14;
    v16 = v14;
    v6(0, v15);
    sub_10008C1A4(v0 + 160);

    sub_10008C1A4(v0 + 160);

    sub_10008C1A4(v0 + 160);
    v17 = *(v0 + 416);
  }

  else
  {
    v19 = *(v0 + 512);
    v20 = *(v0 + 488);
    v22 = *(v0 + 440);
    v21 = *(v0 + 448);

    v23 = *(v0 + 416);

    sub_1000847E4(0, 0xD000000000000026, 0x80000001000A7B40, v22, v21);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100060FA4()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 464);

  *(v0 + 416) = *(v0 + 576);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 512);
    v4 = *(v0 + 488);
    v6 = *(v0 + 440);
    v5 = *(v0 + 448);
    v7 = *(v0 + 432);

    v8 = *(v0 + 272);
    *(v0 + 160) = *(v0 + 256);
    *(v0 + 176) = v8;
    *(v0 + 185) = *(v0 + 281);
    v9 = *(v0 + 296);
    v10 = *(v0 + 256);
    v11 = *(v0 + 272);
    *(v0 + 144) = *(v0 + 288);
    *(v0 + 152) = v9;
    *(v0 + 112) = v10;
    *(v0 + 128) = v11;
    v12 = v7;
    swift_retain_n();
    v13 = v12;
    sub_10008C148(v0 + 160, v0 + 304);
    sub_10007E720(0xD000000000000026, 0x80000001000A7B40, 0xD000000000000015, 0x80000001000A76D0, v0 + 112, 0, v13, v13, 0, v4, 6);

    sub_10008C148(v0 + 160, v0 + 352);
    sub_10008F51C(0xD000000000000026, 0x80000001000A7B40);
    v15 = v14;
    v16 = v14;
    v6(0, v15);
    sub_10008C1A4(v0 + 160);

    sub_10008C1A4(v0 + 160);

    sub_10008C1A4(v0 + 160);
    v17 = *(v0 + 416);
  }

  else
  {
    v19 = *(v0 + 512);
    v20 = *(v0 + 488);
    v22 = *(v0 + 440);
    v21 = *(v0 + 448);

    v23 = *(v0 + 416);

    sub_1000847E4(0, 0xD000000000000026, 0x80000001000A7B40, v22, v21);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100061224(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v7 = sub_10009D9F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = sub_10009D7A0();
  }

  else
  {
    v12 = 0;
  }

  sub_10009D9D0();
  v13 = v12;
  v14 = sub_10009D9E0();
  v15 = sub_10009DFD0();

  if (os_log_type_enabled(v14, v15))
  {
    v43 = v15;
    v45 = v13;
    v46 = v12;
    v44 = v8;
    v39 = v7;
    v40 = a4;
    v41 = a3;
    v16 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v16 = 136315394;
    v17 = sub_10009DE60();
    v19 = v18;
    if (("Error finishing " & 0x2000000000000000) != 0)
    {
      v20 = ("Error finishing " >> 40) & 0xF0000;
    }

    else
    {
      v20 = 2490368;
    }

    if (v20)
    {
      v21 = v17;
      while (sub_10009DE60() != v21 || v22 != v19)
      {
        v23 = sub_10009E2E0();

        if (v23)
        {
          goto LABEL_18;
        }

        if ((v20 ^ sub_10009DE00()) < 0x4000)
        {
          goto LABEL_14;
        }
      }

LABEL_18:

      sub_10009DE70();
      v26 = sub_10009DDD0();
      v25 = v27;

      v24 = v26;
    }

    else
    {
LABEL_14:

      v24 = 0;
      v25 = 0xE000000000000000;
    }

    a3 = v41;
    v28 = v39;
    v29 = sub_1000307A4(v24, v25, &v47);

    *(v16 + 4) = v29;
    *(v16 + 12) = 2080;
    if (v46)
    {
      v30 = v45;
      v31 = [v30 description];
      v32 = sub_10009DD90();
      v34 = v33;
    }

    else
    {
      v34 = 0xEE00646569666963;
      v32 = 0x65707320656E6F6ELL;
    }

    v35 = sub_1000307A4(v32, v34, &v47);

    *(v16 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v14, v43, "%s: model concluded SPI unexpectedly, deferCheckReplyCount() will reply then fatalError(). Error: %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v44 + 8))(v11, v28);
    v13 = v45;
    v12 = v46;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v36 = v13;
  a3(0, v12);

  result = sub_10009E250();
  __break(1u);
  return result;
}

uint64_t sub_10006165C(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = sub_10009D860();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a4);
  sub_10009D820();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = a1;
  a7(v15, a6, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1000617A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = a6;
  v52 = a5;
  v53 = a8;
  v51 = a7;
  v54 = a4;
  v44 = a1;
  v48 = a9;
  v11 = sub_10009D860();
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  __chkstk_darwin(v11);
  v55 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v40 - v15;
  v17 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v47 = *(v17 - 8);
  v43 = *(v47 + 64);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  sub_10009E1E0(38);

  strcpy(v56, "sharingURL: ");
  BYTE5(v56[1]) = 0;
  HIWORD(v56[1]) = -5120;
  sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
  v20 = v11;
  v40 = v11;
  v57._countAndFlagsBits = sub_10009E2C0();
  sub_10009DE10(v57);

  v58._countAndFlagsBits = 0x3A6572616873202CLL;
  v58._object = 0xE900000000000020;
  sub_10009DE10(v58);
  v21 = a2;
  v22 = [v21 description];
  v23 = sub_10009DD90();
  v25 = v24;

  v59._countAndFlagsBits = v23;
  v59._object = v25;
  sub_10009DE10(v59);

  v60._countAndFlagsBits = 0x5255656C6966202CLL;
  v60._object = 0xEB00000000203A4CLL;
  sub_10009DE10(v60);
  sub_100008658(a3, v19, &qword_1000CA250, &qword_10009FDF8);
  v41 = v19;
  v61._countAndFlagsBits = sub_10009DDA0();
  sub_10009DE10(v61);

  sub_100079B58(v56[0], v56[1], 0xD000000000000048, 0x80000001000A7AA0);

  v42 = v16;
  sub_10009DF20();
  v26 = sub_10009DF40();
  (*(*(v26 - 8) + 56))(v16, 0, 1, v26);
  v27 = v46;
  (*(v46 + 16))(v55, v44, v20);
  sub_100008658(a3, v19, &qword_1000CA250, &qword_10009FDF8);
  sub_10009DF10();
  v44 = v21;
  v49 = v49;
  v28 = v48;

  v29 = v50;
  v30 = v51;
  sub_10008DC8C(v50, v51);
  v31 = v52;

  v32 = sub_10009DF00();
  v33 = (*(v27 + 80) + 88) & ~*(v27 + 80);
  v34 = (v45 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (*(v47 + 80) + v34 + 8) & ~*(v47 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = v32;
  *(v36 + 3) = &protocol witness table for MainActor;
  v38 = v53;
  v37 = v54;
  *(v36 + 4) = v49;
  *(v36 + 5) = v38;
  *(v36 + 6) = v28;
  *(v36 + 7) = v29;
  *(v36 + 8) = v30;
  *(v36 + 9) = v37;
  *(v36 + 10) = v31;
  (*(v27 + 32))(&v36[v33], v55, v40);
  *&v36[v34] = v44;
  sub_100017C10(v41, &v36[v35]);
  sub_100019B10(0, 0, v42, &unk_1000A28E8, v36);
}

uint64_t sub_100061CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 648) = v15;
  *(v8 + 632) = v14;
  *(v8 + 616) = v13;
  *(v8 + 608) = a8;
  *(v8 + 600) = a7;
  *(v8 + 592) = a6;
  *(v8 + 584) = a5;
  *(v8 + 576) = a4;
  sub_10009DF10();
  *(v8 + 656) = sub_10009DF00();
  v10 = sub_10009DED0();
  *(v8 + 664) = v10;
  *(v8 + 672) = v9;

  return _swift_task_switch(sub_100061D70, v10, v9);
}

uint64_t sub_100061D70()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[74];
  v6 = v0[73];
  v7 = type metadata accessor for ModelDelegateSPI();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_10003F4A4();
  v0[85] = v10;
  v11 = objc_allocWithZone(UIImage);
  isa = sub_10009D870().super.isa;
  v13 = [v11 initWithData:isa];

  v14 = *(v10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appIcon);
  *(v10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appIcon) = v13;

  v15 = (v10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
  v16 = *(v10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName + 8);
  *v15 = v2;
  v15[1] = v1;

  v17 = swift_allocObject();
  v0[86] = v17;
  *(v17 + 16) = v6;
  *(v17 + 24) = v5;

  v18 = swift_task_alloc();
  v0[87] = v18;
  *v18 = v0;
  v18[1] = sub_100061F1C;
  v19 = v0[81];
  v20 = v0[80];
  v21 = v0[79];

  return sub_1000429F8(v21, v20, v19, sub_10008E048, v17);
}

uint64_t sub_100061F1C()
{
  v1 = *v0;
  v2 = *(*v0 + 696);
  v3 = *(*v0 + 688);
  v7 = *v0;

  v4 = *(v1 + 672);
  v5 = *(v1 + 664);

  return _swift_task_switch(sub_100062060, v5, v4);
}

uint64_t sub_100062060()
{
  v1 = *(v0 + 680);
  v2 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v0 + 704) = v2;
  if (!v2)
  {
    return sub_10009E250();
  }

  v3 = swift_allocObject();
  *(v0 + 712) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v5 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI);
  v4 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI + 8);
  if (v4)
  {
    *(v3 + 16) = v5;
    *(v3 + 24) = v4;

    v6 = swift_task_alloc();
    *(v0 + 720) = v6;
    *v6 = v0;
    v6[1] = sub_100062414;

    return sub_1000093E0();
  }

  else
  {
    v8 = *(v0 + 656);
    v19 = *(v0 + 584);
    v20 = *(v0 + 592);
    v17 = *(v0 + 576);
    v18 = v3;

    *(v0 + 208) = 0;
    *(v0 + 192) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 216) = -1;
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v10;
    *(inited + 48) = 0xD000000000000023;
    *(inited + 56) = 0x80000001000A7AF0;
    sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v11 = CKErrorDomain;
    isa = sub_10009DCF0().super.isa;

    v13 = [objc_allocWithZone(NSError) initWithDomain:v11 code:1 userInfo:isa];

    v14 = v17;
    sub_10007F8E0(0xD000000000000048, 0x80000001000A7AA0, 0xD000000000000023, 0x80000001000A7AF0, v0 + 176, v13, v14, v18, v14);

    v15 = v13;
    v19(v5, 0, v5, 0, v13);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100062414(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 720);
  v8 = *v3;
  *(*v3 + 728) = v2;

  if (v2)
  {
    v9 = v6[84];
    v10 = v6[83];
    v11 = sub_1000626B8;
  }

  else
  {
    v6[92] = a2;
    v6[93] = a1;
    v9 = v6[84];
    v10 = v6[83];
    v11 = sub_100062554;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100062554()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v14 = *(v0 + 744);
  v15 = *(v0 + 680);
  v4 = *(v0 + 656);
  v5 = *(v0 + 592);
  v6 = *(v0 + 584);
  v7 = *(v0 + 576);

  v8 = sub_10000AA94(0);
  v10 = v9;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0;
  *(v0 + 408) = -1;
  v11 = v7;
  sub_10007F8E0(0xD000000000000048, 0x80000001000A7AA0, 0x73736563637573, 0xE700000000000000, v0 + 368, 0, v11, v2, v11);

  v6(v8, v10, v14, v1, 0);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000626B8()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 656);

  *(v0 + 560) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 728);
    v4 = *(v0 + 712);
    v5 = *(v0 + 704);
    v45 = *(v0 + 680);
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);

    v9 = *(v0 + 432);
    *(v0 + 320) = *(v0 + 416);
    *(v0 + 336) = v9;
    *(v0 + 345) = *(v0 + 441);
    v10 = *(v0 + 456);
    v11 = *(v0 + 416);
    v12 = *(v0 + 432);
    *(v0 + 304) = *(v0 + 448);
    *(v0 + 312) = v10;
    *(v0 + 272) = v11;
    *(v0 + 288) = v12;
    v13 = v8;
    sub_10008C148(v0 + 320, v0 + 464);
    sub_10007F8E0(0xD000000000000048, 0x80000001000A7AA0, 0xD000000000000015, 0x80000001000A76D0, v0 + 272, 0, v13, v4, v13);

    sub_10008C148(v0 + 320, v0 + 512);
    sub_10008F51C(0xD000000000000048, 0x80000001000A7AA0);
    v15 = v14;
    v16 = v14;
    v7(0, 0, 0, 0, v15);

    sub_10008C1A4(v0 + 320);

    sub_10008C1A4(v0 + 320);

    sub_10008C1A4(v0 + 320);
    v17 = *(v0 + 560);
  }

  else
  {
    v18 = *(v0 + 560);

    sub_10009E1E0(22);

    v19 = sub_10009DE60();
    v21 = v20;
    if (("upInfo:withReply:)" & 0x2000000000000000) != 0)
    {
      v22 = ("upInfo:withReply:)" >> 40) & 0xF0000;
    }

    else
    {
      v22 = 4718592;
    }

    if (v22)
    {
      v23 = v19;
      while (sub_10009DE60() != v23 || v24 != v21)
      {
        v25 = sub_10009E2E0();

        if (v25)
        {
          goto LABEL_14;
        }

        if ((sub_10009DE00() ^ v22) < 0x4000)
        {
          goto LABEL_12;
        }
      }

LABEL_14:

      sub_10009DE70();
      v28 = sub_10009DDD0();
      v27 = v29;

      v26._countAndFlagsBits = v28;
    }

    else
    {
LABEL_12:

      v26._countAndFlagsBits = 0;
      v27 = 0xE000000000000000;
    }

    v30 = *(v0 + 728);
    v31 = *(v0 + 712);
    v44 = *(v0 + 704);
    v46 = *(v0 + 680);
    v42 = *(v0 + 584);
    v43 = *(v0 + 592);
    v41 = *(v0 + 576);
    v26._object = v27;
    sub_10009DE10(v26);

    v48._countAndFlagsBits = 8250;
    v48._object = 0xE200000000000000;
    sub_10009DE10(v48);
    *(v0 + 568) = v30;
    swift_errorRetain();
    v49._countAndFlagsBits = sub_10009DDA0();
    sub_10009DE10(v49);

    *(v0 + 256) = 0;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 264) = -1;
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v33;
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = 0x80000001000A7B20;

    sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v34 = CKErrorDomain;
    isa = sub_10009DCF0().super.isa;

    v36 = [objc_allocWithZone(NSError) initWithDomain:v34 code:1 userInfo:isa];

    v37 = v41;
    sub_10007F8E0(0xD000000000000048, 0x80000001000A7AA0, 0xD000000000000010, 0x80000001000A7B20, v0 + 224, v36, v37, v31, v37);

    v38 = v36;
    v42(0, 0, 0, 0, v36);
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100062C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void, void, void), uint64_t a7)
{
  v10 = sub_10009D9F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v15 = sub_10009D7A0();
  }

  else
  {
    v15 = 0;
  }

  sub_10009D9D0();
  v16 = v15;
  v17 = sub_10009D9E0();
  v18 = sub_10009DFD0();

  if (os_log_type_enabled(v17, v18))
  {
    v46 = v18;
    v48 = v16;
    v49 = v15;
    v47 = v11;
    v42 = v10;
    v43 = a7;
    v44 = a6;
    v19 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v50 = v45;
    *v19 = 136315394;
    v20 = sub_10009DE60();
    v22 = v21;
    if (("upInfo:withReply:)" & 0x2000000000000000) != 0)
    {
      v23 = ("upInfo:withReply:)" >> 40) & 0xF0000;
    }

    else
    {
      v23 = 4718592;
    }

    if (v23)
    {
      v24 = v20;
      while (sub_10009DE60() != v24 || v25 != v22)
      {
        v26 = sub_10009E2E0();

        if (v26)
        {
          goto LABEL_18;
        }

        if ((v23 ^ sub_10009DE00()) < 0x4000)
        {
          goto LABEL_14;
        }
      }

LABEL_18:

      sub_10009DE70();
      v29 = sub_10009DDD0();
      v28 = v30;

      v27 = v29;
    }

    else
    {
LABEL_14:

      v27 = 0;
      v28 = 0xE000000000000000;
    }

    a6 = v44;
    v31 = v42;
    v32 = sub_1000307A4(v27, v28, &v50);

    *(v19 + 4) = v32;
    *(v19 + 12) = 2080;
    if (v49)
    {
      v33 = v48;
      v34 = [v33 description];
      v35 = sub_10009DD90();
      v37 = v36;
    }

    else
    {
      v37 = 0xEE00646569666963;
      v35 = 0x65707320656E6F6ELL;
    }

    v38 = sub_1000307A4(v35, v37, &v50);

    *(v19 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v17, v46, "%s: model concluded SPI unexpectedly, deferCheckReplyCount() will reply then fatalError(). Error: %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v47 + 8))(v14, v31);
    v16 = v48;
    v15 = v49;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v39 = v16;
  a6(0, 0, 0, 0, v15);

  result = sub_10009E250();
  __break(1u);
  return result;
}

void sub_1000632C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a2)
  {
    v9 = sub_10009DD50();
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v8 = sub_10009DD50();
  }

LABEL_4:
  if (a5)
  {
    v10 = sub_10009D7A0();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a6 + 16))(a6, v9, v8);
}

uint64_t sub_100063388(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v26 = a3;
  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v23 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  strcpy(v27, "sharingURL: ");
  BYTE5(v27[1]) = 0;
  HIWORD(v27[1]) = -5120;
  sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
  v28._countAndFlagsBits = sub_10009E2C0();
  sub_10009DE10(v28);

  sub_100079B58(v27[0], v27[1], 0xD000000000000042, 0x80000001000A7A50);

  sub_10009DF20();
  v13 = sub_10009DF40();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  sub_10009DF10();
  v14 = a2;
  v15 = a2;
  v16 = v25;
  v17 = v24;

  v18 = sub_10009DF00();
  v19 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = &protocol witness table for MainActor;
  v21 = v26;
  *(v20 + 4) = v16;
  *(v20 + 5) = v21;
  *(v20 + 6) = v17;
  (*(v7 + 32))(&v20[v19], v23, v6);
  *&v20[(v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = v14;
  sub_10004CDF4(0, 0, v12, &unk_1000A28D8, v20);
}

uint64_t sub_100063678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[51] = a7;
  v8[52] = a8;
  v8[49] = a5;
  v8[50] = a6;
  v8[48] = a4;
  sub_10009DF10();
  v8[53] = sub_10009DF00();
  v10 = sub_10009DED0();
  v8[54] = v10;
  v8[55] = v9;

  return _swift_task_switch(sub_100063718, v10, v9);
}

uint64_t sub_100063718()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = swift_allocObject();
  v0[56] = v3;
  *(v3 + 16) = 0;
  v4 = type metadata accessor for ModelDelegateSPI();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[57] = sub_10003F4A4();
  v7 = swift_allocObject();
  v0[58] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;

  v8 = swift_task_alloc();
  v0[59] = v8;
  *v8 = v0;
  v8[1] = sub_10006383C;
  v10 = v0[51];
  v9 = v0[52];

  return sub_100043444(v10, v9, sub_10008DC7C, v7);
}

uint64_t sub_10006383C()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 464);
  v7 = *v0;

  v4 = *(v1 + 440);
  v5 = *(v1 + 432);

  return _swift_task_switch(sub_100063980, v5, v4);
}

uint64_t sub_100063980()
{
  v1 = *(*(v0 + 456) + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v0 + 480) = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = (*(v0 + 384) + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 352) = v4;
    *(v0 + 360) = v3;

    swift_retain_n();
    sub_10009DB00();
  }

  else
  {
  }

  v6 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 57))
  {
    v7 = swift_task_alloc();
    *(v0 + 488) = v7;
    *v7 = v0;
    v7[1] = sub_100063CE0;
    v9 = *(v0 + 408);
    v8 = *(v0 + 416);

    return sub_100025D14(v9, v8);
  }

  else
  {
    v10 = *(v0 + 448);
    v11 = *(v0 + 456);
    v12 = *(v0 + 424);
    v13 = *(v0 + 400);
    v19 = *(v0 + 392);
    v14 = *(v0 + 384);

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 56) = -1;
    v15 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
    v16 = v14;

    sub_100080A3C(0xD000000000000042, 0x80000001000A7A50, 0xD00000000000003DLL, 0x80000001000A76F0, v0 + 16, v15, v16, v16, v10, v11);

    v17 = v15;
    v19(0, v15);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100063CE0()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 440);
  v6 = *(v2 + 432);
  if (v0)
  {
    v7 = sub_100063FD4;
  }

  else
  {
    v7 = sub_100063E1C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100063E1C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);
  v13 = *(v0 + 392);
  v6 = *(v0 + 384);

  v7 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  *(v2 + 16) = *(v0 + 376);
  v8 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_ckMetadata);
  *(v0 + 176) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 192) = 0;
  *(v0 + 200) = -1;
  v9 = v8;
  v10 = v6;

  sub_100080A3C(0xD000000000000042, 0x80000001000A7A50, 0x73736563637573, 0xE700000000000000, v0 + 160, 0, v10, v10, v2, v3);

  v13(v8, 0);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100063FD4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 424);

  *(v0 + 368) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 496);
    v4 = *(v0 + 480);
    v5 = *(v0 + 448);
    v6 = *(v0 + 456);
    v8 = *(v0 + 392);
    v7 = *(v0 + 400);
    v9 = *(v0 + 384);

    v10 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v10;
    *(v0 + 137) = *(v0 + 233);
    v11 = *(v0 + 248);
    v13 = *(v0 + 208);
    v12 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v11;
    *(v0 + 64) = v13;
    *(v0 + 80) = v12;
    v14 = v9;
    swift_retain_n();
    v15 = v14;
    sub_10008C148(v0 + 112, v0 + 256);
    sub_100080A3C(0xD000000000000042, 0x80000001000A7A50, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v15, v15, v5, v6);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD000000000000042, 0x80000001000A7A50);
    v17 = v16;
    v18 = v16;
    v8(0, v17);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    v19 = *(v0 + 368);

    v20 = *(v0 + 8);
  }

  else
  {
    v21 = *(v0 + 480);
    v23 = *(v0 + 448);
    v22 = *(v0 + 456);
    v25 = *(v0 + 392);
    v24 = *(v0 + 400);

    v26 = *(v0 + 368);

    sub_100084C4C(0, 0xD000000000000042, 0x80000001000A7A50, v25, v24, 0xA033);

    v20 = *(v0 + 8);
    v27 = *(v0 + 496);
  }

  return v20();
}

uint64_t sub_100064258(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v7 = sub_10009D9F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = sub_10009D7A0();
  }

  else
  {
    v12 = 0;
  }

  sub_10009D9D0();
  v13 = v12;
  v14 = sub_10009D9E0();
  v15 = sub_10009DFD0();

  if (os_log_type_enabled(v14, v15))
  {
    v43 = v15;
    v45 = v13;
    v46 = v12;
    v44 = v8;
    v39 = v7;
    v40 = a4;
    v41 = a3;
    v16 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v16 = 136315394;
    v17 = sub_10009DE60();
    v19 = v18;
    if (("ntainerSetupInfo:withReply:)" & 0x2000000000000000) != 0)
    {
      v20 = ("ntainerSetupInfo:withReply:)" >> 40) & 0xF0000;
    }

    else
    {
      v20 = 4325376;
    }

    if (v20)
    {
      v21 = v17;
      while (sub_10009DE60() != v21 || v22 != v19)
      {
        v23 = sub_10009E2E0();

        if (v23)
        {
          goto LABEL_18;
        }

        if ((v20 ^ sub_10009DE00()) < 0x4000)
        {
          goto LABEL_14;
        }
      }

LABEL_18:

      sub_10009DE70();
      v26 = sub_10009DDD0();
      v25 = v27;

      v24 = v26;
    }

    else
    {
LABEL_14:

      v24 = 0;
      v25 = 0xE000000000000000;
    }

    a3 = v41;
    v28 = v39;
    v29 = sub_1000307A4(v24, v25, &v47);

    *(v16 + 4) = v29;
    *(v16 + 12) = 2080;
    if (v46)
    {
      v30 = v45;
      v31 = [v30 description];
      v32 = sub_10009DD90();
      v34 = v33;
    }

    else
    {
      v34 = 0xEE00646569666963;
      v32 = 0x65707320656E6F6ELL;
    }

    v35 = sub_1000307A4(v32, v34, &v47);

    *(v16 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v14, v43, "%s: model concluded SPI unexpectedly, deferCheckReplyCount() will reply then fatalError(). Error: %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v44 + 8))(v11, v28);
    v13 = v45;
    v12 = v46;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v36 = v13;
  a3(0, v12);

  result = sub_10009E250();
  __break(1u);
  return result;
}

uint64_t sub_100064690(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, uint64_t a6, uint64_t a7, void (*a8)(char *, void *, uint64_t, uint64_t))
{
  v13 = sub_10009D860();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a5);
  sub_10009D820();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = a4;
  v21 = a1;
  a8(v17, a4, a7, v19);

  return (*(v14 + 8))(v17, v13);
}

void sub_1000647E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10009D7A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100064858(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  sub_100079B58(0x6168732068746977, 0xEA00000000006572, 0xD00000000000002CLL, 0x80000001000A7A20);
  sub_10009DF20();
  v13 = sub_10009DF40();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_10009DF10();
  v14 = a2;
  v15 = v4;

  v16 = a1;
  v17 = sub_10009DF00();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v15;
  v18[5] = a3;
  v18[6] = a4;
  v18[7] = v16;
  v18[8] = a2;
  sub_10004CDF4(0, 0, v12, &unk_1000A28C8, v18);
}

uint64_t sub_1000649F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[51] = a7;
  v8[52] = a8;
  v8[49] = a5;
  v8[50] = a6;
  v8[48] = a4;
  v9 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v8[53] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v8[57] = sub_10009DF10();
  v8[58] = sub_10009DF00();
  v12 = sub_10009DED0();
  v8[59] = v12;
  v8[60] = v11;

  return _swift_task_switch(sub_100064AEC, v12, v11);
}

uint64_t sub_100064AEC()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = type metadata accessor for ModelDelegateSPI();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[61] = sub_10003F4A4();
  v6 = swift_allocObject();
  v0[62] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;

  return _swift_task_switch(sub_100064BA0, 0, 0);
}

uint64_t sub_100064BA0()
{
  v1 = v0[62];
  v2 = v0[57];
  v3 = (v0[61] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
  v4 = v3[1];
  *v3 = sub_10008DAE8;
  v3[1] = v1;

  v0[63] = sub_10009DF00();
  v6 = sub_10009DED0();

  return _swift_task_switch(sub_100064C64, v6, v5);
}

uint64_t sub_100064C64()
{
  v1 = *(v0 + 504);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 512) = sub_1000998E0();

  return _swift_task_switch(sub_100064CEC, 0, 0);
}

uint64_t sub_100064CEC()
{
  v1 = *(v0 + 456);
  *(v0 + 520) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100064D78, v3, v2);
}

uint64_t sub_100064D78()
{
  v1 = v0[65];
  v2 = v0[64];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[66] = sub_10004BA80(v2);

  return _swift_task_switch(sub_100064E10, 0, 0);
}

uint64_t sub_100064E10()
{
  v1 = *(v0 + 456);
  *(v0 + 536) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100064E9C, v3, v2);
}

uint64_t sub_100064E9C()
{
  v1 = v0[67];
  v2 = v0[66];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[68] = sub_100032A60(v2);

  return _swift_task_switch(sub_100064F34, 0, 0);
}

uint64_t sub_100064F34()
{
  v1 = v0[68];
  v2 = v0[61];
  v3 = v0[51];
  v4 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v0[69] = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v5 = *(v2 + v4);
  *(v2 + v4) = v1;

  v6 = *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v3;

  v7 = *(v2 + v4);
  v0[70] = v7;
  if (!v7)
  {
    return sub_10009E250();
  }

  v9 = v0[56];
  v8 = v0[57];
  v10 = v0[51];
  v11 = sub_10009D860();
  v0[71] = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v0[72] = v13;
  v0[73] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v9, 1, 1, v11);
  v14 = v10;

  v0[74] = sub_10009DF00();
  v16 = sub_10009DED0();

  return _swift_task_switch(sub_1000650E4, v16, v15);
}

uint64_t sub_1000650E4()
{
  v1 = v0[74];
  v2 = v0[70];
  v4 = v0[61];
  v3 = v0[62];
  v5 = v0[56];
  v6 = v0[52];

  sub_100043F7C(v4, v6, v5, 0, v2);

  sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
  v7 = v0[59];
  v8 = v0[60];

  return _swift_task_switch(sub_1000651A8, v7, v8);
}

uint64_t sub_1000651A8()
{
  v1 = *(v0[61] + v0[69]);
  v0[75] = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = (v0[48] + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    swift_getKeyPath();
    swift_getKeyPath();
    v0[44] = v4;
    v0[45] = v3;

    swift_retain_n();
    sub_10009DB00();
  }

  else
  {
  }

  v0[76] = *(v1 + 16);

  v6 = swift_task_alloc();
  v0[77] = v6;
  *v6 = v0;
  v6[1] = sub_100065344;

  return sub_10004B1CC();
}

uint64_t sub_100065344()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v9 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v4 = v2[59];
    v5 = v2[60];
    v6 = sub_100065D54;
  }

  else
  {
    v7 = v2[76];

    v4 = v2[59];
    v5 = v2[60];
    v6 = sub_100065460;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100065460()
{
  v1 = *(*(v0 + 600) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v2 = *(v0 + 57);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v6 = *(v0 + 576);
    v7 = *(v0 + 568);
    v23 = *(v0 + 488);
    v24 = *(v0 + 600);
    v8 = *(v0 + 464);
    v9 = *(v0 + 448);
    v10 = *(v0 + 408);
    v22 = *(v0 + 400);
    v11 = *(v0 + 384);
    v20 = *(v0 + 584);
    v21 = *(v0 + 392);

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 56) = -1;
    v12 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
    v13 = v10;
    v14 = v11;
    sub_100082D18(0xD00000000000002CLL, 0x80000001000A7A20, 0xD00000000000003DLL, 0x80000001000A76F0, v0 + 16, v12, v14, v13, v14, 9);

    v6(v9, 1, 1, v7);
    v15 = v12;
    v21(v9, 0, v12);

    sub_100008728(v9, &qword_1000CA250, &qword_10009FDF8);
    v17 = *(v0 + 440);
    v16 = *(v0 + 448);
    v18 = *(v0 + 432);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v3 = *(v0 + 600);
    v4 = swift_task_alloc();
    *(v0 + 632) = v4;
    *v4 = v0;
    v4[1] = sub_100065734;

    return sub_100026F78();
  }
}

uint64_t sub_100065734()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *v1;
  *(*v1 + 640) = v0;

  v5 = *(v2 + 480);
  v6 = *(v2 + 472);
  if (v0)
  {
    v7 = sub_100066050;
  }

  else
  {
    v7 = sub_100065870;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100065870()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 584);
  (*(v0 + 576))(*(v0 + 440), 1, 1, *(v0 + 568));
  v3 = swift_task_alloc();
  *(v0 + 648) = v3;
  *v3 = v0;
  v3[1] = sub_100065924;
  v4 = *(v0 + 440);

  return sub_100028ADC(v4);
}

uint64_t sub_100065924()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v4 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 656) = v0;

  sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
  v6 = *(v2 + 480);
  v7 = *(v2 + 472);
  if (v0)
  {
    v8 = sub_100066344;
  }

  else
  {
    v8 = sub_100065A8C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100065A8C()
{
  v25 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 432);
  v3 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v4 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v6 = *(v0 + 376);
  if (v6)
  {
    v22 = *(v0 + 488);
    v23 = *(v0 + 600);
    v7 = *(v0 + 464);
    v8 = *(v0 + 448);
    v10 = *(v0 + 424);
    v9 = *(v0 + 432);
    v11 = *(v0 + 400);
    v21 = *(v0 + 392);
    v12 = *(v0 + 384);
    v13 = v6;

    *(v0 + 192) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 200) = -1;
    strcpy(v24, "sharingURL: ");
    BYTE5(v24[1]) = 0;
    HIWORD(v24[1]) = -5120;
    sub_100008658(v9, v8, &qword_1000CA250, &qword_10009FDF8);
    v27._countAndFlagsBits = sub_10009DDA0();
    sub_10009DE10(v27);

    v14 = v12;
    v15 = v13;
    sub_100082D18(0xD00000000000002CLL, 0x80000001000A7A20, v24[0], v24[1], v0 + 160, 0, v14, v15, v14, 9);

    v16 = [v15 _copyWithoutPersonalInfo];
    v21(v9, v16, 0);

    sub_100008728(v9, &qword_1000CA250, &qword_10009FDF8);
    v18 = *(v0 + 440);
    v17 = *(v0 + 448);
    v19 = *(v0 + 432);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100065D54()
{
  v1 = *(v0 + 608);

  v2 = *(v0 + 624);
  v3 = *(v0 + 464);

  *(v0 + 368) = v2;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 576);
    v5 = *(v0 + 568);
    v36 = *(v0 + 488);
    v37 = *(v0 + 600);
    v6 = *(v0 + 448);
    v7 = *(v0 + 400);
    v8 = *(v0 + 408);
    v9 = *(v0 + 384);
    v34 = *(v0 + 392);
    v35 = *(v0 + 584);

    v10 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v10;
    *(v0 + 137) = *(v0 + 233);
    v11 = *(v0 + 248);
    v13 = *(v0 + 208);
    v12 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v11;
    *(v0 + 64) = v13;
    *(v0 + 80) = v12;
    v14 = v8;
    v15 = v9;
    v16 = v14;
    v17 = v15;
    sub_10008C148(v0 + 112, v0 + 256);
    sub_100082D18(0xD00000000000002CLL, 0x80000001000A7A20, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v17, v16, v17, 9);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD00000000000002CLL, 0x80000001000A7A20);
    v19 = v18;
    v4(v6, 1, 1, v5);
    v34(v6, 0, v19);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v6, &qword_1000CA250, &qword_10009FDF8);
    v20 = *(v0 + 368);

    v22 = *(v0 + 440);
    v21 = *(v0 + 448);
    v23 = *(v0 + 432);
  }

  else
  {
    v25 = *(v0 + 600);
    v26 = *(v0 + 488);
    v28 = *(v0 + 440);
    v27 = *(v0 + 448);
    v29 = *(v0 + 432);
    v31 = *(v0 + 392);
    v30 = *(v0 + 400);

    v32 = *(v0 + 368);

    sub_100083E60(0, 0xD00000000000002CLL, 0x80000001000A7A20, v31, v30);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100066050()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 464);

  *(v0 + 368) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 576);
    v4 = *(v0 + 568);
    v35 = *(v0 + 488);
    v36 = *(v0 + 600);
    v5 = *(v0 + 448);
    v6 = *(v0 + 400);
    v7 = *(v0 + 408);
    v8 = *(v0 + 384);
    v33 = *(v0 + 392);
    v34 = *(v0 + 584);

    v9 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v9;
    *(v0 + 137) = *(v0 + 233);
    v10 = *(v0 + 248);
    v12 = *(v0 + 208);
    v11 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v10;
    *(v0 + 64) = v12;
    *(v0 + 80) = v11;
    v13 = v7;
    v14 = v8;
    v15 = v13;
    v16 = v14;
    sub_10008C148(v0 + 112, v0 + 256);
    sub_100082D18(0xD00000000000002CLL, 0x80000001000A7A20, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v16, v15, v16, 9);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD00000000000002CLL, 0x80000001000A7A20);
    v18 = v17;
    v3(v5, 1, 1, v4);
    v33(v5, 0, v18);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
    v19 = *(v0 + 368);

    v21 = *(v0 + 440);
    v20 = *(v0 + 448);
    v22 = *(v0 + 432);
  }

  else
  {
    v24 = *(v0 + 600);
    v25 = *(v0 + 488);
    v27 = *(v0 + 440);
    v26 = *(v0 + 448);
    v28 = *(v0 + 432);
    v30 = *(v0 + 392);
    v29 = *(v0 + 400);

    v31 = *(v0 + 368);

    sub_100083E60(0, 0xD00000000000002CLL, 0x80000001000A7A20, v30, v29);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100066344()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 464);

  *(v0 + 368) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 576);
    v4 = *(v0 + 568);
    v35 = *(v0 + 488);
    v36 = *(v0 + 600);
    v5 = *(v0 + 448);
    v6 = *(v0 + 400);
    v7 = *(v0 + 408);
    v8 = *(v0 + 384);
    v33 = *(v0 + 392);
    v34 = *(v0 + 584);

    v9 = *(v0 + 224);
    *(v0 + 112) = *(v0 + 208);
    *(v0 + 128) = v9;
    *(v0 + 137) = *(v0 + 233);
    v10 = *(v0 + 248);
    v12 = *(v0 + 208);
    v11 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 240);
    *(v0 + 104) = v10;
    *(v0 + 64) = v12;
    *(v0 + 80) = v11;
    v13 = v7;
    v14 = v8;
    v15 = v13;
    v16 = v14;
    sub_10008C148(v0 + 112, v0 + 256);
    sub_100082D18(0xD00000000000002CLL, 0x80000001000A7A20, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v16, v15, v16, 9);

    sub_10008C148(v0 + 112, v0 + 304);
    sub_10008F51C(0xD00000000000002CLL, 0x80000001000A7A20);
    v18 = v17;
    v3(v5, 1, 1, v4);
    v33(v5, 0, v18);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
    v19 = *(v0 + 368);

    v21 = *(v0 + 440);
    v20 = *(v0 + 448);
    v22 = *(v0 + 432);
  }

  else
  {
    v24 = *(v0 + 600);
    v25 = *(v0 + 488);
    v27 = *(v0 + 440);
    v26 = *(v0 + 448);
    v28 = *(v0 + 432);
    v30 = *(v0 + 392);
    v29 = *(v0 + 400);

    v31 = *(v0 + 368);

    sub_100083E60(0, 0xD00000000000002CLL, 0x80000001000A7A20, v30, v29);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100066638(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v8 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v44 - v10;
  v12 = sub_10009D9F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v17 = sub_10009D7A0();
  }

  else
  {
    v17 = 0;
  }

  sub_10009D9D0();
  v18 = v17;
  v19 = sub_10009D9E0();
  v20 = sub_10009DFD0();

  if (os_log_type_enabled(v19, v20))
  {
    v47 = v20;
    v48 = v19;
    v49 = v13;
    v50 = v12;
    v51 = v18;
    v44[0] = v17;
    v44[1] = a5;
    v45 = a4;
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v21 = 136315394;
    v22 = sub_10009DE60();
    v24 = v23;
    if (("rticipant that isn't an admin" & 0x2000000000000000) != 0)
    {
      v25 = ("rticipant that isn't an admin" >> 40) & 0xF0000;
    }

    else
    {
      v25 = 2883584;
    }

    if (v25)
    {
      v26 = v22;
      while (sub_10009DE60() != v26 || v27 != v24)
      {
        v28 = sub_10009E2E0();

        if (v28)
        {
          goto LABEL_18;
        }

        if ((v25 ^ sub_10009DE00()) < 0x4000)
        {
          goto LABEL_14;
        }
      }

LABEL_18:

      sub_10009DE70();
      v31 = sub_10009DDD0();
      v30 = v32;

      v29 = v31;
    }

    else
    {
LABEL_14:

      v29 = 0;
      v30 = 0xE000000000000000;
    }

    a4 = v45;
    v17 = v44[0];
    v18 = v51;
    v33 = sub_1000307A4(v29, v30, &v52);

    *(v21 + 4) = v33;
    *(v21 + 12) = 2080;
    if (v17)
    {
      v34 = v18;
      v35 = [v34 description];
      v36 = sub_10009DD90();
      v38 = v37;

      v18 = v51;
    }

    else
    {
      v38 = 0xEE00646569666963;
      v36 = 0x65707320656E6F6ELL;
    }

    v39 = sub_1000307A4(v36, v38, &v52);

    *(v21 + 14) = v39;
    v40 = v48;
    _os_log_impl(&_mh_execute_header, v48, v47, "%s: model concluded SPI unexpectedly, deferCheckReplyCount() will reply then fatalError(). Error: %s", v21, 0x16u);
    swift_arrayDestroy();

    (*(v49 + 8))(v16, v50);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v41 = sub_10009D860();
  (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
  v42 = v18;
  a4(v11, 0, v17);

  sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
  result = sub_10009E250();
  __break(1u);
  return result;
}

uint64_t sub_100066B14(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, void *, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v15, a4, a7, v14);
}

uint64_t sub_100066BD8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = a1;
  v12 = [v11 description];
  v13 = sub_10009DD90();
  v15 = v14;

  sub_100079B58(v13, v15, 0xD000000000000029, 0x80000001000A7940);

  sub_10009DF20();
  v16 = sub_10009DF40();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  sub_10009DF10();
  v17 = v11;
  v18 = v3;

  v19 = sub_10009DF00();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v18;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = v17;
  sub_10004CDF4(0, 0, v10, &unk_1000A2828, v20);
}

uint64_t sub_100066D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[78] = a7;
  v7[77] = a6;
  v7[76] = a5;
  v7[75] = a4;
  v8 = sub_10009D9F0();
  v7[79] = v8;
  v9 = *(v8 - 8);
  v7[80] = v9;
  v10 = *(v9 + 64) + 15;
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v7[84] = swift_task_alloc();
  sub_10009DF10();
  v7[85] = sub_10009DF00();
  v12 = sub_10009DED0();
  v7[86] = v12;
  v7[87] = v11;

  return _swift_task_switch(sub_100066EBC, v12, v11);
}

uint64_t sub_100066EBC()
{
  v1 = type metadata accessor for ModelDelegateSPI();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[88] = sub_10003F4A4();
  v4 = swift_task_alloc();
  v0[89] = v4;
  *v4 = v0;
  v4[1] = sub_100066F7C;
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];

  return sub_1000435A8(v5, v7, v6);
}

uint64_t sub_100066F7C()
{
  v1 = *v0;
  v2 = *(*v0 + 712);
  v6 = *v0;

  v3 = *(v1 + 696);
  v4 = *(v1 + 688);

  return _swift_task_switch(sub_10006709C, v4, v3);
}

uint64_t sub_10006709C()
{
  v1 = *(v0[88] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  v0[90] = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v0[91] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[92] = v2;
  *v2 = v0;
  v2[1] = sub_1000671C4;

  return sub_10004B1CC();
}

uint64_t sub_1000671C4()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v9 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v4 = v2[87];
    v5 = v2[86];
    v6 = sub_100068138;
  }

  else
  {
    v7 = v2[91];

    v4 = v2[87];
    v5 = v2[86];
    v6 = sub_1000672E8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000672E8()
{
  v132 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 680);

  v3 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 217) == 1)
  {
    v4 = *(v0 + 672);
    sub_10009D9D0();
    v5 = sub_10009D9E0();
    v6 = sub_10009DFF0();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 672);
    v9 = *(v0 + 640);
    v10 = *(v0 + 632);
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "currentUser is owner", v11, 2u);
    }

    (*(v9 + 8))(v8, v10);
    v12 = 1;
    goto LABEL_13;
  }

  v13 = *(*(v0 + 720) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 218) != 1)
  {
    v14 = [*(v0 + 624) currentUserParticipant];
    if (v14)
    {
      v15 = v14;
      if ([v14 role] == 3)
      {

        v12 = 3;
        goto LABEL_13;
      }

      if ([v15 role] == 2)
      {

        v12 = 2;
        goto LABEL_13;
      }

      v127 = *(v0 + 720);
      v130 = *(v0 + 704);
      v104 = *(v0 + 624);
      v120 = *(v0 + 608);
      v125 = *(v0 + 616);
      v105 = *(v0 + 600);
      *(v0 + 272) = 0u;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0;
      *(v0 + 312) = -1;
      sub_100003714(&qword_1000CB348, &qword_1000A1E28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10009FCE0;
      *(inited + 32) = sub_10009DD90();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v107;
      *(inited + 48) = 0xD00000000000003DLL;
      *(inited + 56) = 0x80000001000A79E0;
      sub_10003269C(inited);
      swift_setDeallocating();
      sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
      v108 = CKErrorDomain;
      isa = sub_10009DCF0().super.isa;

      v110 = [objc_allocWithZone(NSError) initWithDomain:v108 code:1 userInfo:isa];

      v111 = v104;
      v112 = v105;
      sub_100081BCC(0xD000000000000029, 0x80000001000A7940, 0xD00000000000003DLL, 0x80000001000A79E0, v0 + 272, v110, v112, v111, 0, v112);

      v120(0, v110);
    }

    else
    {
      v126 = *(v0 + 720);
      v128 = *(v0 + 704);
      v16 = *(v0 + 624);
      v17 = *(v0 + 616);
      v121 = *(v0 + 608);
      v18 = *(v0 + 600);
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0;
      *(v0 + 264) = -1;
      sub_100003714(&qword_1000CB348, &qword_1000A1E28);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_10009FCE0;
      *(v19 + 32) = sub_10009DD90();
      *(v19 + 72) = &type metadata for String;
      *(v19 + 40) = v20;
      *(v19 + 48) = 0xD000000000000031;
      *(v19 + 56) = 0x80000001000A79A0;
      sub_10003269C(v19);
      swift_setDeallocating();
      sub_100008728(v19 + 32, &unk_1000CA918, &qword_1000A1E30);
      v21 = CKErrorDomain;
      v22 = sub_10009DCF0().super.isa;

      v23 = [objc_allocWithZone(NSError) initWithDomain:v21 code:1 userInfo:v22];

      v24 = v16;
      v25 = v18;
      sub_100081BCC(0xD000000000000029, 0x80000001000A7940, 0xD000000000000031, 0x80000001000A79A0, v0 + 224, v23, v25, v24, 0, v25);

      v121(0, v23);
    }

    goto LABEL_41;
  }

  v12 = 4;
LABEL_13:
  v26 = *(v0 + 624);
  v27 = *(v0 + 600);
  *(v0 + 592) = v12;
  type metadata accessor for CSUICurrentUserCKShareStatus(0);
  sub_10009DDA0();
  v28 = v26;
  v29 = v27;
  v30 = sub_10009DE60();
  v32 = v31;
  if (("Numbers:withReply:)" & 0x2000000000000000) != 0)
  {
    v33 = ("Numbers:withReply:)" >> 40) & 0xF0000;
  }

  else
  {
    v33 = 2686976;
  }

  if (v33)
  {
    v34 = v30;
    while (sub_10009DE60() != v34 || v35 != v32)
    {
      v36 = sub_10009E2E0();

      if (v36)
      {
        goto LABEL_24;
      }

      if ((sub_10009DE00() ^ v33) < 0x4000)
      {
        goto LABEL_22;
      }
    }

LABEL_24:

    sub_10009DE70();
    v115 = sub_10009DDD0();
    v37 = v38;
  }

  else
  {
LABEL_22:

    v115 = 0;
    v37 = 0xE000000000000000;
  }

  v39 = 0x73736563637553;
  v40 = *(v0 + 624);
  v41 = *(v0 + 600);
  *(v0 + 392) = type metadata accessor for SPIAnalyticsEvent();
  *(v0 + 400) = &off_1000C2CF0;
  v42 = sub_10008D654((v0 + 368));
  v43 = v41 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier;
  v44 = *(v41 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v45 = *(v43 + 8);
  *v42 = v40;
  v42[1] = v12;
  v42[2] = v44;
  v42[3] = v45;
  *(v42 + 2) = 0u;
  *(v42 + 3) = 0u;
  v42[8] = 0;
  *(v42 + 72) = -1;
  swift_storeEnumTagMultiPayload();
  sub_100008658(v0 + 368, v0 + 448, &qword_1000CB798, &qword_1000A27F0);
  v129 = v12;
  if (*(v0 + 472))
  {
    v46 = *(v0 + 664);
    v47 = *(v0 + 624);
    sub_10008D5D8((v0 + 448), v0 + 408);

    v48 = v47;
    sub_10009D9D0();
    sub_10008D5F0(v0 + 408, v0 + 488);

    v49 = sub_10009D9E0();
    v50 = sub_10009DFF0();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 664);
    v53 = v37;
    v54 = *(v0 + 640);
    v117 = v44;
    v122 = *(v0 + 632);
    v114 = v53;
    if (v51)
    {
      v55 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v55 = 136315394;
      *(v55 + 4) = sub_1000307A4(v115, v53, &v131);
      *(v55 + 12) = 2080;
      sub_1000067C8((v0 + 488), *(v0 + 512));
      v56 = sub_10003BB34();
      v58 = v57;
      sub_10000670C((v0 + 488));
      v59 = sub_1000307A4(v56, v58, &v131);

      *(v55 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v49, v50, "Finishing %s, sending event %s", v55, 0x16u);
      swift_arrayDestroy();

      v60 = *(v54 + 8);
      v60(v52, v122);
    }

    else
    {

      v60 = *(v54 + 8);
      v60(v52, v122);
      sub_10000670C((v0 + 488));
    }

    v64 = *(v0 + 656);
    v65 = *(v0 + 600);
    v66 = sub_1000067C8((v0 + 408), *(v0 + 432));
    sub_100079DD8(v66);
    sub_10009D9D0();
    sub_10008D5F0(v0 + 408, v0 + 528);
    v67 = v65;
    v68 = sub_10009D9E0();
    v69 = sub_10009DFF0();

    v70 = os_log_type_enabled(v68, v69);
    v71 = *(v0 + 656);
    v72 = *(v0 + 640);
    v73 = *(v0 + 632);
    if (v70)
    {
      v123 = *(v0 + 632);
      v74 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v74 = 136315650;
      *(v0 + 568) = v117;
      *(v0 + 576) = v45;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v75 = sub_10009DDA0();
      v118 = v71;
      v77 = sub_1000307A4(v75, v76, &v131);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      sub_1000067C8((v0 + 528), *(v0 + 552));
      sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v78 = sub_10009DD10();
      v80 = v79;

      sub_10000670C((v0 + 528));
      v81 = sub_1000307A4(v78, v80, &v131);

      *(v74 + 14) = v81;
      *(v74 + 22) = 2080;
      *(v74 + 24) = sub_1000307A4(0xD000000000000029, 0x80000001000A7940, &v131);
      _os_log_impl(&_mh_execute_header, v68, v69, "Requester: %s, event detail is: %s\n%s", v74, 0x20u);
      swift_arrayDestroy();

      v60(v118, v123);
    }

    else
    {

      v60(v71, v73);
      sub_10000670C((v0 + 528));
    }

    v37 = v114;
    v39 = 0x73736563637553;
    sub_1000067C8((v0 + 408), *(v0 + 432));
    if (sub_10003CCE4())
    {
      v39 = 0x7272652068746957;
      v63 = 0xEA0000000000726FLL;
    }

    else
    {
      v63 = 0xE700000000000000;
    }

    sub_10000670C((v0 + 408));
    v12 = v129;
  }

  else
  {
    v61 = *(v0 + 624);

    v62 = v61;
    sub_100008728(v0 + 448, &qword_1000CB798, &qword_1000A27F0);
    v63 = 0xE700000000000000;
  }

  v82 = *(v0 + 648);
  sub_10009D9D0();

  v83 = sub_10009D9E0();
  v84 = sub_10009DFF0();

  v85 = os_log_type_enabled(v83, v84);
  v86 = *(v0 + 640);
  v87 = *(v0 + 632);
  v119 = v87;
  v124 = *(v0 + 648);
  v88 = *(v0 + 624);
  v89 = *(v0 + 600);
  if (v85)
  {
    v113 = *(v0 + 624);
    v90 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *v90 = 136315394;
    v91 = sub_1000307A4(v115, v37, &v131);
    v116 = v89;
    v92 = v39;
    v93 = v91;

    *(v90 + 4) = v93;
    *(v90 + 12) = 2080;
    v94 = sub_1000307A4(v92, v63, &v131);

    *(v90 + 14) = v94;
    _os_log_impl(&_mh_execute_header, v83, v84, "Finished %s: %s.", v90, 0x16u);
    swift_arrayDestroy();
    v12 = v129;

    (*(v86 + 8))(v124, v119);
    sub_100008728(v0 + 368, &qword_1000CB798, &qword_1000A27F0);
  }

  else
  {

    (*(v86 + 8))(v124, v119);
    sub_100008728(v0 + 368, &qword_1000CB798, &qword_1000A27F0);
  }

  v95 = *(v0 + 720);
  v96 = *(v0 + 704);
  v97 = *(v0 + 616);
  (*(v0 + 608))(v12, 0);

LABEL_41:

  v98 = *(v0 + 672);
  v99 = *(v0 + 664);
  v100 = *(v0 + 656);
  v101 = *(v0 + 648);

  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_100068138()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 680);

  *(v0 + 584) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 744);
    v34 = *(v0 + 704);
    v35 = *(v0 + 720);
    v5 = *(v0 + 624);
    v32 = *(v0 + 608);
    v33 = *(v0 + 616);
    v6 = *(v0 + 600);

    v7 = *(v0 + 320);
    v8 = *(v0 + 328);
    v9 = *(v0 + 336);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    *(v0 + 176) = v7;
    *(v0 + 184) = v8;
    *(v0 + 192) = v9;
    *(v0 + 200) = v10;
    *(v0 + 208) = v11;
    v12 = *(v0 + 360);
    *(v0 + 216) = v12;
    v13 = v5;
    v14 = v6;
    sub_100032380(v7, v8, v9, v10, v11, v12);
    sub_100081BCC(0xD000000000000029, 0x80000001000A7940, 0xD00000000000002CLL, 0x80000001000A7970, v0 + 176, 0, v14, v13, 0, v14);

    v32(0, 0);

    sub_1000323E0(v7, v8, v9, v10, v11, v12);
    sub_1000323E0(v7, v8, v9, v10, v11, v12);
    v15 = *(v0 + 584);

    v16 = *(v0 + 672);
    v17 = *(v0 + 664);
    v18 = *(v0 + 656);
    v19 = *(v0 + 648);

    v20 = *(v0 + 8);
  }

  else
  {
    v21 = *(v0 + 720);
    v22 = *(v0 + 704);
    v23 = *(v0 + 672);
    v24 = *(v0 + 664);
    v25 = *(v0 + 656);
    v26 = *(v0 + 648);
    v27 = *(v0 + 616);
    v28 = *(v0 + 608);

    v29 = *(v0 + 584);

    sub_100084C4C(0, 0xD000000000000029, 0x80000001000A7940, v28, v27, 0xB88);

    v20 = *(v0 + 8);
    v30 = *(v0 + 744);
  }

  return v20();
}

uint64_t sub_100068440(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_1000684E8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  sub_100079B58(0x6F6974706F206F6ELL, 0xEA0000000000736ELL, 0xD000000000000053, 0x80000001000A78E0);
  sub_10009DF20();
  v17 = sub_10009DF40();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  sub_10009DF10();
  v18 = a2;

  v19 = v6;

  v20 = a1;
  v21 = sub_10009DF00();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v19;
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = v20;
  v22[8] = a2;
  v22[9] = a3;
  v22[10] = a4;
  sub_10004CDF4(0, 0, v16, &unk_1000A2818, v22);
}

uint64_t sub_1000686A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[60] = v18;
  v8[61] = v19;
  v8[58] = a7;
  v8[59] = a8;
  v8[56] = a5;
  v8[57] = a6;
  v8[55] = a4;
  v9 = sub_10009D9F0();
  v8[62] = v9;
  v10 = *(v9 - 8);
  v8[63] = v10;
  v11 = *(v10 + 64) + 15;
  v8[64] = swift_task_alloc();
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v8[65] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v8[69] = sub_10009DF10();
  v8[70] = sub_10009DF00();
  v15 = sub_10009DED0();
  v8[71] = v15;
  v8[72] = v14;

  return _swift_task_switch(sub_10006880C, v15, v14);
}

uint64_t sub_10006880C()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = type metadata accessor for ModelDelegateSPI();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[73] = sub_10003F4A4();
  v6 = swift_allocObject();
  v0[74] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;

  return _swift_task_switch(sub_1000688C0, 0, 0);
}

uint64_t sub_1000688C0()
{
  v1 = v0[74];
  v2 = v0[69];
  v3 = (v0[73] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
  v4 = v3[1];
  *v3 = sub_10008D8CC;
  v3[1] = v1;

  v0[75] = sub_10009DF00();
  v6 = sub_10009DED0();

  return _swift_task_switch(sub_100068988, v6, v5);
}

uint64_t sub_100068988()
{
  v1 = *(v0 + 600);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 608) = sub_1000998E0();

  return _swift_task_switch(sub_100068A10, 0, 0);
}

uint64_t sub_100068A10()
{
  v1 = *(v0 + 552);
  *(v0 + 616) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100068A9C, v3, v2);
}

uint64_t sub_100068A9C()
{
  v1 = v0[77];
  v2 = v0[76];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[78] = sub_10004BA80(v2);

  return _swift_task_switch(sub_100068B34, 0, 0);
}

uint64_t sub_100068B34()
{
  v1 = *(v0 + 552);
  *(v0 + 632) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100068BC0, v3, v2);
}

uint64_t sub_100068BC0()
{
  v1 = v0[79];
  v2 = v0[78];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[80] = sub_100032A60(v2);

  return _swift_task_switch(sub_100068C58, 0, 0);
}

uint64_t sub_100068C58()
{
  v1 = v0[80];
  v2 = v0[73];
  v3 = v0[58];
  v4 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v0[81] = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v5 = *(v2 + v4);
  *(v2 + v4) = v1;

  v6 = *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v3;

  v7 = *(v2 + v4);
  v0[82] = v7;
  if (!v7)
  {
    return sub_10009E250();
  }

  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[58];
  v11 = sub_10009D860();
  v0[83] = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v0[84] = v13;
  v0[85] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v9, 1, 1, v11);
  v14 = v10;

  v0[86] = sub_10009DF00();
  v16 = sub_10009DED0();

  return _swift_task_switch(sub_100068E0C, v16, v15);
}

uint64_t sub_100068E0C()
{
  v1 = v0[86];
  v2 = v0[82];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[68];
  v6 = v0[59];

  sub_100043F7C(v4, v6, v5, 0, v2);

  sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
  v7 = v0[72];
  v8 = v0[71];

  return _swift_task_switch(sub_100068ED8, v8, v7);
}

uint64_t sub_100068ED8()
{
  v1 = *(v0[73] + v0[81]);
  v0[87] = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = (v0[55] + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    swift_getKeyPath();
    swift_getKeyPath();
    v0[50] = v4;
    v0[51] = v3;

    swift_retain_n();
    sub_10009DB00();
  }

  else
  {
  }

  v6 = v0[61];
  v9 = v0[60];

  sub_1000799A0(v7);
  sub_100097154(v9);

  v0[88] = *(v1 + 16);

  v8 = swift_task_alloc();
  v0[89] = v8;
  *v8 = v0;
  v8[1] = sub_1000690A8;

  return sub_10004B1CC();
}

uint64_t sub_1000690A8()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v9 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
    v4 = v2[72];
    v5 = v2[71];
    v6 = sub_10006AD2C;
  }

  else
  {
    v7 = v2[88];

    v4 = v2[72];
    v5 = v2[71];
    v6 = sub_1000691CC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000691CC()
{
  v1 = *(*(v0 + 696) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v2 = *(v0 + 57);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v8 = *(v0 + 680);
    v9 = *(v0 + 672);
    v10 = *(v0 + 664);
    v53 = *(v0 + 584);
    v55 = *(v0 + 696);
    v11 = *(v0 + 560);
    v12 = *(v0 + 544);
    v13 = *(v0 + 464);
    v14 = *(v0 + 440);
    v50 = *(v0 + 448);
    v51 = *(v0 + 456);

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 56) = -1;
    v15 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
    v16 = v13;
    v17 = v14;
    sub_100082D18(0xD000000000000053, 0x80000001000A78E0, 0xD00000000000003DLL, 0x80000001000A76F0, v0 + 16, v15, v17, v16, v17, 11);

    v9(v12, 1, 1, v10);
    goto LABEL_14;
  }

  if ([*(v0 + 464) publicPermission] != 1 || !*(*(v0 + 480) + 16) && !*(*(v0 + 488) + 16))
  {
    if ([*(v0 + 464) publicPermission] != 1)
    {
      v30 = *(v0 + 512);
      sub_10009D9D0();
      v31 = sub_10009D9E0();
      v32 = sub_10009DFD0();
      v33 = os_log_type_enabled(v31, v32);
      v35 = *(v0 + 504);
      v34 = *(v0 + 512);
      v36 = *(v0 + 496);
      if (v33)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "provided share is public, and you can only add participants to a private share--will still return sharingURL and share", v37, 2u);
      }

      (*(v35 + 8))(v34, v36);
      v38 = *(v0 + 696);
      v39 = *(v0 + 680);
      (*(v0 + 672))(*(v0 + 536), 1, 1, *(v0 + 664));
      v40 = swift_task_alloc();
      *(v0 + 864) = v40;
      *v40 = v0;
      v40[1] = sub_10006A8E8;
      v41 = *(v0 + 536);

      return sub_100028ADC(v41);
    }

    v48 = *(v0 + 672);
    v49 = *(v0 + 680);
    v24 = *(v0 + 664);
    v54 = *(v0 + 584);
    v56 = *(v0 + 696);
    v25 = *(v0 + 560);
    v12 = *(v0 + 544);
    v26 = *(v0 + 464);
    v27 = *(v0 + 440);
    v50 = *(v0 + 448);
    v52 = *(v0 + 456);

    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 248) = -1;
    v15 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v28 = v26;
    v29 = v27;
    sub_100082D18(0xD000000000000053, 0x80000001000A78E0, 0xD00000000000007FLL, 0x80000001000A7730, v0 + 208, v15, v29, v28, v29, 11);

    v48(v12, 1, 1, v24);
LABEL_14:
    v18 = v15;
    v50(v12, 0, v15);

    sub_100008728(v12, &qword_1000CA250, &qword_10009FDF8);
    v19 = *(v0 + 544);
    v20 = *(v0 + 536);
    v21 = *(v0 + 528);
    v22 = *(v0 + 512);

    v23 = *(v0 + 8);

    return v23();
  }

  v3 = *(*(v0 + 696) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v4 = *(v0 + 432);
  if (v4)
  {
    v5 = [*(v0 + 432) participants];
    sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
    v6 = sub_10009DEA0();

    if (v6 >> 62)
    {
      v7 = sub_10009E260();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 == 1)
    {
      *(v0 + 58) = [*(v0 + 464) allowsAccessRequests];

      return _swift_task_switch(sub_1000698A8, 0, 0);
    }
  }

  else
  {
  }

  v42 = *(v0 + 464);
  v43 = *(*(v0 + 696) + 16);

  v44 = sub_10004834C();

  v45 = [v42 allowsAccessRequests];
  v46 = swift_task_alloc();
  *(v0 + 832) = v46;
  *v46 = v0;
  v46[1] = sub_10006A58C;

  return sub_100023A48(v44 & 1, v45);
}

uint64_t sub_1000698A8()
{
  v1 = *(v0 + 552);
  *(v0 + 728) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100069934, v3, v2);
}

uint64_t sub_100069934()
{
  v1 = v0[91];
  v2 = v0[87];

  v0[92] = *(v2 + 16);

  v3 = swift_task_alloc();
  v0[93] = v3;
  *v3 = v0;
  v3[1] = sub_1000699F8;

  return sub_100048CBC(2, v2, 0);
}

uint64_t sub_1000699F8()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v7 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v4 = sub_100069D84;
  }

  else
  {
    v5 = *(v2 + 736);

    v4 = sub_100069B14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100069B14()
{
  v1 = *(v0 + 552);
  *(v0 + 760) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100069BA0, v3, v2);
}

uint64_t sub_100069BA0()
{
  v1 = v0[95];
  v2 = v0[87];

  v0[96] = *(v2 + 16);

  v3 = swift_task_alloc();
  v0[97] = v3;
  *v3 = v0;
  v3[1] = sub_100069C68;

  return sub_100049714(1, v2, 0, 1);
}

uint64_t sub_100069C68()
{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v7 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v4 = sub_10006A1FC;
  }

  else
  {
    v5 = *(v2 + 768);

    v4 = sub_100069DF4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100069D84()
{
  v1 = v0[92];
  v0[103] = v0[94];

  v2 = v0[72];
  v3 = v0[71];

  return _swift_task_switch(sub_10006A26C, v3, v2);
}

uint64_t sub_100069DF4()
{
  v1 = *(v0 + 552);
  *(v0 + 792) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100069E80, v3, v2);
}

uint64_t sub_100069E80()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 696);

  v3 = *(v2 + 16);

  sub_100047B6C(&off_1000C1B40);

  return _swift_task_switch(sub_100069F0C, 0, 0);
}

uint64_t sub_100069F0C()
{
  v1 = *(v0 + 552);
  *(v0 + 800) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100069F98, v3, v2);
}

uint64_t sub_100069F98()
{
  v1 = v0[100];
  v2 = v0[87];

  v0[101] = *(v2 + 16);

  return _swift_task_switch(sub_10006A014, 0, 0);
}

uint64_t sub_10006A014()
{
  v1 = *(v0 + 552);
  *(v0 + 816) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10006A0A0, v3, v2);
}

uint64_t sub_10006A0A0()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 58);

  sub_10004A3E0(v3);

  v4 = *(v0 + 576);
  v5 = *(v0 + 568);

  return _swift_task_switch(sub_10006A120, v5, v4);
}

uint64_t sub_10006A120()
{
  v1 = v0[58];
  v2 = *(v0[87] + 16);

  v3 = sub_10004834C();

  v4 = [v1 allowsAccessRequests];
  v5 = swift_task_alloc();
  v0[104] = v5;
  *v5 = v0;
  v5[1] = sub_10006A58C;

  return sub_100023A48(v3 & 1, v4);
}

uint64_t sub_10006A1FC()
{
  v1 = v0[96];
  v0[103] = v0[98];

  v2 = v0[72];
  v3 = v0[71];

  return _swift_task_switch(sub_10006A26C, v3, v2);
}

uint64_t sub_10006A26C()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 560);

  *(v0 + 416) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v34 = *(v0 + 672);
    v3 = *(v0 + 664);
    v37 = *(v0 + 584);
    v38 = *(v0 + 696);
    v4 = *(v0 + 544);
    v5 = *(v0 + 456);
    v6 = *(v0 + 464);
    v7 = *(v0 + 440);
    v35 = *(v0 + 448);
    v36 = *(v0 + 680);

    v8 = *(v0 + 272);
    *(v0 + 112) = *(v0 + 256);
    *(v0 + 128) = v8;
    *(v0 + 137) = *(v0 + 281);
    v9 = *(v0 + 296);
    v10 = *(v0 + 256);
    v11 = *(v0 + 272);
    *(v0 + 96) = *(v0 + 288);
    *(v0 + 104) = v9;
    *(v0 + 64) = v10;
    *(v0 + 80) = v11;
    v12 = v6;
    v13 = v7;
    v14 = v12;
    v15 = v13;
    sub_10008C148(v0 + 112, v0 + 304);
    sub_100082D18(0xD000000000000053, 0x80000001000A78E0, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v15, v14, v15, 11);

    sub_10008C148(v0 + 112, v0 + 352);
    sub_10008F51C(0xD000000000000053, 0x80000001000A78E0);
    v17 = v16;
    v34(v4, 1, 1, v3);
    v35(v4, 0, v17);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
    v18 = *(v0 + 416);

    v19 = *(v0 + 544);
    v20 = *(v0 + 536);
    v21 = *(v0 + 528);
    v22 = *(v0 + 512);
  }

  else
  {
    v24 = *(v0 + 696);
    v25 = *(v0 + 584);
    v26 = *(v0 + 544);
    v27 = *(v0 + 536);
    v28 = *(v0 + 528);
    v29 = *(v0 + 512);
    v31 = *(v0 + 448);
    v30 = *(v0 + 456);

    v32 = *(v0 + 416);

    sub_100083E60(0, 0xD000000000000053, 0x80000001000A78E0, v31, v30);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10006A58C()
{
  v2 = *(*v1 + 832);
  v3 = *v1;
  v3[105] = v0;

  if (v0)
  {
    v4 = v3[72];
    v5 = v3[71];

    return _swift_task_switch(sub_10006B054, v5, v4);
  }

  else
  {
    v6 = v3[87];
    v7 = swift_task_alloc();
    v3[106] = v7;
    *v7 = v3;
    v7[1] = sub_10006A6F8;

    return sub_100026F78();
  }
}

uint64_t sub_10006A6F8()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v4 = *v1;
  *(*v1 + 856) = v0;

  v5 = *(v2 + 576);
  v6 = *(v2 + 568);
  if (v0)
  {
    v7 = sub_10006B374;
  }

  else
  {
    v7 = sub_10006A834;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10006A834()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 680);
  (*(v0 + 672))(*(v0 + 536), 1, 1, *(v0 + 664));
  v3 = swift_task_alloc();
  *(v0 + 864) = v3;
  *v3 = v0;
  v3[1] = sub_10006A8E8;
  v4 = *(v0 + 536);

  return sub_100028ADC(v4);
}

uint64_t sub_10006A8E8()
{
  v2 = *v1;
  v3 = *(*v1 + 864);
  v4 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 872) = v0;

  sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
  v6 = *(v2 + 576);
  v7 = *(v2 + 568);
  if (v0)
  {
    v8 = sub_10006B694;
  }

  else
  {
    v8 = sub_10006AA50;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10006AA50()
{
  v26 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 528);
  v3 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v4 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v6 = *(v0 + 424);
  if (v6)
  {
    v23 = *(v0 + 584);
    v24 = *(v0 + 696);
    v7 = *(v0 + 560);
    v8 = *(v0 + 544);
    v9 = *(v0 + 528);
    v10 = *(v0 + 520);
    v11 = *(v0 + 456);
    v22 = *(v0 + 448);
    v12 = *(v0 + 440);
    v13 = v6;

    *(v0 + 192) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 200) = -1;
    strcpy(v25, "sharingURL: ");
    BYTE5(v25[1]) = 0;
    HIWORD(v25[1]) = -5120;
    sub_100008658(v9, v8, &qword_1000CA250, &qword_10009FDF8);
    v28._countAndFlagsBits = sub_10009DDA0();
    sub_10009DE10(v28);

    v14 = v12;
    v15 = v13;
    sub_100082D18(0xD000000000000053, 0x80000001000A78E0, v25[0], v25[1], v0 + 160, 0, v14, v15, v14, 11);

    v16 = [v15 _copyWithoutPersonalInfo];
    v22(v9, v16, 0);

    sub_100008728(v9, &qword_1000CA250, &qword_10009FDF8);
    v17 = *(v0 + 544);
    v18 = *(v0 + 536);
    v19 = *(v0 + 528);
    v20 = *(v0 + 512);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006AD2C()
{
  v1 = *(v0 + 704);

  v2 = *(v0 + 720);
  v3 = *(v0 + 560);

  *(v0 + 416) = v2;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v35 = *(v0 + 672);
    v4 = *(v0 + 664);
    v38 = *(v0 + 584);
    v39 = *(v0 + 696);
    v5 = *(v0 + 544);
    v6 = *(v0 + 456);
    v7 = *(v0 + 464);
    v8 = *(v0 + 440);
    v36 = *(v0 + 448);
    v37 = *(v0 + 680);

    v9 = *(v0 + 272);
    *(v0 + 112) = *(v0 + 256);
    *(v0 + 128) = v9;
    *(v0 + 137) = *(v0 + 281);
    v10 = *(v0 + 296);
    v11 = *(v0 + 256);
    v12 = *(v0 + 272);
    *(v0 + 96) = *(v0 + 288);
    *(v0 + 104) = v10;
    *(v0 + 64) = v11;
    *(v0 + 80) = v12;
    v13 = v7;
    v14 = v8;
    v15 = v13;
    v16 = v14;
    sub_10008C148(v0 + 112, v0 + 304);
    sub_100082D18(0xD000000000000053, 0x80000001000A78E0, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v16, v15, v16, 11);

    sub_10008C148(v0 + 112, v0 + 352);
    sub_10008F51C(0xD000000000000053, 0x80000001000A78E0);
    v18 = v17;
    v35(v5, 1, 1, v4);
    v36(v5, 0, v18);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
    v19 = *(v0 + 416);

    v20 = *(v0 + 544);
    v21 = *(v0 + 536);
    v22 = *(v0 + 528);
    v23 = *(v0 + 512);
  }

  else
  {
    v25 = *(v0 + 696);
    v26 = *(v0 + 584);
    v27 = *(v0 + 544);
    v28 = *(v0 + 536);
    v29 = *(v0 + 528);
    v30 = *(v0 + 512);
    v32 = *(v0 + 448);
    v31 = *(v0 + 456);

    v33 = *(v0 + 416);

    sub_100083E60(0, 0xD000000000000053, 0x80000001000A78E0, v32, v31);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10006B054()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 560);

  *(v0 + 416) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v34 = *(v0 + 672);
    v3 = *(v0 + 664);
    v37 = *(v0 + 584);
    v38 = *(v0 + 696);
    v4 = *(v0 + 544);
    v5 = *(v0 + 456);
    v6 = *(v0 + 464);
    v7 = *(v0 + 440);
    v35 = *(v0 + 448);
    v36 = *(v0 + 680);

    v8 = *(v0 + 272);
    *(v0 + 112) = *(v0 + 256);
    *(v0 + 128) = v8;
    *(v0 + 137) = *(v0 + 281);
    v9 = *(v0 + 296);
    v10 = *(v0 + 256);
    v11 = *(v0 + 272);
    *(v0 + 96) = *(v0 + 288);
    *(v0 + 104) = v9;
    *(v0 + 64) = v10;
    *(v0 + 80) = v11;
    v12 = v6;
    v13 = v7;
    v14 = v12;
    v15 = v13;
    sub_10008C148(v0 + 112, v0 + 304);
    sub_100082D18(0xD000000000000053, 0x80000001000A78E0, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v15, v14, v15, 11);

    sub_10008C148(v0 + 112, v0 + 352);
    sub_10008F51C(0xD000000000000053, 0x80000001000A78E0);
    v17 = v16;
    v34(v4, 1, 1, v3);
    v35(v4, 0, v17);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
    v18 = *(v0 + 416);

    v19 = *(v0 + 544);
    v20 = *(v0 + 536);
    v21 = *(v0 + 528);
    v22 = *(v0 + 512);
  }

  else
  {
    v24 = *(v0 + 696);
    v25 = *(v0 + 584);
    v26 = *(v0 + 544);
    v27 = *(v0 + 536);
    v28 = *(v0 + 528);
    v29 = *(v0 + 512);
    v31 = *(v0 + 448);
    v30 = *(v0 + 456);

    v32 = *(v0 + 416);

    sub_100083E60(0, 0xD000000000000053, 0x80000001000A78E0, v31, v30);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10006B374()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 560);

  *(v0 + 416) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v34 = *(v0 + 672);
    v3 = *(v0 + 664);
    v37 = *(v0 + 584);
    v38 = *(v0 + 696);
    v4 = *(v0 + 544);
    v5 = *(v0 + 456);
    v6 = *(v0 + 464);
    v7 = *(v0 + 440);
    v35 = *(v0 + 448);
    v36 = *(v0 + 680);

    v8 = *(v0 + 272);
    *(v0 + 112) = *(v0 + 256);
    *(v0 + 128) = v8;
    *(v0 + 137) = *(v0 + 281);
    v9 = *(v0 + 296);
    v10 = *(v0 + 256);
    v11 = *(v0 + 272);
    *(v0 + 96) = *(v0 + 288);
    *(v0 + 104) = v9;
    *(v0 + 64) = v10;
    *(v0 + 80) = v11;
    v12 = v6;
    v13 = v7;
    v14 = v12;
    v15 = v13;
    sub_10008C148(v0 + 112, v0 + 304);
    sub_100082D18(0xD000000000000053, 0x80000001000A78E0, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v15, v14, v15, 11);

    sub_10008C148(v0 + 112, v0 + 352);
    sub_10008F51C(0xD000000000000053, 0x80000001000A78E0);
    v17 = v16;
    v34(v4, 1, 1, v3);
    v35(v4, 0, v17);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
    v18 = *(v0 + 416);

    v19 = *(v0 + 544);
    v20 = *(v0 + 536);
    v21 = *(v0 + 528);
    v22 = *(v0 + 512);
  }

  else
  {
    v24 = *(v0 + 696);
    v25 = *(v0 + 584);
    v26 = *(v0 + 544);
    v27 = *(v0 + 536);
    v28 = *(v0 + 528);
    v29 = *(v0 + 512);
    v31 = *(v0 + 448);
    v30 = *(v0 + 456);

    v32 = *(v0 + 416);

    sub_100083E60(0, 0xD000000000000053, 0x80000001000A78E0, v31, v30);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10006B694()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 560);

  *(v0 + 416) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v34 = *(v0 + 672);
    v3 = *(v0 + 664);
    v37 = *(v0 + 584);
    v38 = *(v0 + 696);
    v4 = *(v0 + 544);
    v5 = *(v0 + 456);
    v6 = *(v0 + 464);
    v7 = *(v0 + 440);
    v35 = *(v0 + 448);
    v36 = *(v0 + 680);

    v8 = *(v0 + 272);
    *(v0 + 112) = *(v0 + 256);
    *(v0 + 128) = v8;
    *(v0 + 137) = *(v0 + 281);
    v9 = *(v0 + 296);
    v10 = *(v0 + 256);
    v11 = *(v0 + 272);
    *(v0 + 96) = *(v0 + 288);
    *(v0 + 104) = v9;
    *(v0 + 64) = v10;
    *(v0 + 80) = v11;
    v12 = v6;
    v13 = v7;
    v14 = v12;
    v15 = v13;
    sub_10008C148(v0 + 112, v0 + 304);
    sub_100082D18(0xD000000000000053, 0x80000001000A78E0, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, v15, v14, v15, 11);

    sub_10008C148(v0 + 112, v0 + 352);
    sub_10008F51C(0xD000000000000053, 0x80000001000A78E0);
    v17 = v16;
    v34(v4, 1, 1, v3);
    v35(v4, 0, v17);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
    v18 = *(v0 + 416);

    v19 = *(v0 + 544);
    v20 = *(v0 + 536);
    v21 = *(v0 + 528);
    v22 = *(v0 + 512);
  }

  else
  {
    v24 = *(v0 + 696);
    v25 = *(v0 + 584);
    v26 = *(v0 + 544);
    v27 = *(v0 + 536);
    v28 = *(v0 + 528);
    v29 = *(v0 + 512);
    v31 = *(v0 + 448);
    v30 = *(v0 + 456);

    v32 = *(v0 + 416);

    sub_100083E60(0, 0xD000000000000053, 0x80000001000A78E0, v31, v30);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10006B9B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v8 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v44 - v10;
  v12 = sub_10009D9F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v17 = sub_10009D7A0();
  }

  else
  {
    v17 = 0;
  }

  sub_10009D9D0();
  v18 = v17;
  v19 = sub_10009D9E0();
  v20 = sub_10009DFD0();

  if (os_log_type_enabled(v19, v20))
  {
    v47 = v20;
    v48 = v19;
    v49 = v13;
    v50 = v12;
    v51 = v18;
    v44[0] = v17;
    v44[1] = a5;
    v45 = a4;
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v21 = 136315394;
    v22 = sub_10009DE60();
    v24 = v23;
    if (("orationOptionsGroups" & 0x2000000000000000) != 0)
    {
      v25 = ("orationOptionsGroups" >> 40) & 0xF0000;
    }

    else
    {
      v25 = 5439488;
    }

    if (v25)
    {
      v26 = v22;
      while (sub_10009DE60() != v26 || v27 != v24)
      {
        v28 = sub_10009E2E0();

        if (v28)
        {
          goto LABEL_18;
        }

        if ((v25 ^ sub_10009DE00()) < 0x4000)
        {
          goto LABEL_14;
        }
      }

LABEL_18:

      sub_10009DE70();
      v31 = sub_10009DDD0();
      v30 = v32;

      v29 = v31;
    }

    else
    {
LABEL_14:

      v29 = 0;
      v30 = 0xE000000000000000;
    }

    a4 = v45;
    v17 = v44[0];
    v18 = v51;
    v33 = sub_1000307A4(v29, v30, &v52);

    *(v21 + 4) = v33;
    *(v21 + 12) = 2080;
    if (v17)
    {
      v34 = v18;
      v35 = [v34 description];
      v36 = sub_10009DD90();
      v38 = v37;

      v18 = v51;
    }

    else
    {
      v38 = 0xEE00646569666963;
      v36 = 0x65707320656E6F6ELL;
    }

    v39 = sub_1000307A4(v36, v38, &v52);

    *(v21 + 14) = v39;
    v40 = v48;
    _os_log_impl(&_mh_execute_header, v48, v47, "%s: model concluded SPI unexpectedly, deferCheckReplyCount() will reply then fatalError(). Error: %s", v21, 0x16u);
    swift_arrayDestroy();

    (*(v49 + 8))(v16, v50);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v41 = sub_10009D860();
  (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
  v42 = v18;
  a4(v11, 0, v17);

  sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
  result = sub_10009E250();
  __break(1u);
  return result;
}

uint64_t sub_10006C0A8(void *a1, int a2, void *a3, void *a4, int a5, int a6, int a7, void *aBlock, void (*a9)(id, id, uint64_t, uint64_t, uint64_t, id, void *))
{
  v12 = _Block_copy(aBlock);
  v13 = sub_10009DEA0();
  v14 = sub_10009DEA0();
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
  v15 = sub_10009DEA0();
  _Block_copy(v12);
  v16 = a3;
  v17 = a4;
  v18 = a1;
  a9(v16, v17, v13, v14, v15, v18, v12);
  _Block_release(v12);
  _Block_release(v12);
}

uint64_t sub_10006C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 480) = v19;
  *(v8 + 488) = v20;
  *(v8 + 464) = v18;
  *(v8 + 448) = a7;
  *(v8 + 456) = a8;
  *(v8 + 432) = a5;
  *(v8 + 440) = a6;
  *(v8 + 424) = a4;
  v9 = sub_10009D9F0();
  *(v8 + 496) = v9;
  v10 = *(v9 - 8);
  *(v8 + 504) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v8 + 528) = v12;
  v13 = *(v12 - 8);
  *(v8 + 536) = v13;
  *(v8 + 544) = *(v13 + 64);
  *(v8 + 552) = swift_task_alloc();
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = sub_10009DF10();
  *(v8 + 584) = sub_10009DF00();
  v15 = sub_10009DED0();
  *(v8 + 592) = v15;
  *(v8 + 600) = v14;

  return _swift_task_switch(sub_10006C5BC, v15, v14);
}

uint64_t sub_10006C5BC()
{
  v1 = v0[56];
  if (v1)
  {
    v2 = v0[71];
    v3 = [v1 url];
    sub_10009D820();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[71];
  v7 = v0[54];
  v6 = v0[55];
  v8 = sub_10009D860();
  (*(*(v8 - 8) + 56))(v5, v4, 1, v8);
  v9 = type metadata accessor for ModelDelegateSPI();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v0[76] = sub_10003F4A4();
  v12 = swift_allocObject();
  v0[77] = v12;
  *(v12 + 16) = v7;
  *(v12 + 24) = v6;

  v13 = swift_task_alloc();
  v0[78] = v13;
  *v13 = v0;
  v13[1] = sub_10006C748;
  v14 = v0[71];
  v15 = v0[57];
  v16 = v0[58];

  return sub_1000402BC(v14, v15, v16, sub_10008D3A8, v12);
}

uint64_t sub_10006C748()
{
  v1 = *v0;
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 616);
  v7 = *v0;

  v4 = *(v1 + 600);
  v5 = *(v1 + 592);

  return _swift_task_switch(sub_10006C88C, v5, v4);
}

uint64_t sub_10006C88C()
{
  v43 = v0;
  v1 = *(*(v0 + 608) + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v0 + 632) = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 472);
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);

  isa = sub_10009DE90().super.isa;
  *(v0 + 640) = CKSharingPermissionTypeFromOptionsGroups();

  v6 = sub_10009DE90().super.isa;
  *(v0 + 61) = CKSharingAllowOthersToInviteFromOptionsGroups();

  v7 = sub_10009DE90().super.isa;
  *(v0 + 62) = CKSharingAllowAccessRequestsFromOptionsGroups();

  v42 = v2;

  sub_1000799A0(v8);
  v9 = v2;
  *(v0 + 648) = v2;
  if (!*(v2 + 16))
  {
    v10 = *(v0 + 520);
    sub_10009D9D0();
    v11 = sub_10009D9E0();
    v12 = sub_10009DFD0();
    if (os_log_type_enabled(v11, v12))
    {
      v39 = v12;
      v41 = v11;
      v13 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      v40 = v13;
      *v13 = 136315138;
      v14 = sub_10009DE60();
      v16 = v15;
      if (("er(_:withReply:)" & 0x2000000000000000) != 0)
      {
        v17 = ("er(_:withReply:)" >> 40) & 0xF0000;
      }

      else
      {
        v17 = 7340032;
      }

      if (v17)
      {
        v18 = v14;
        while (sub_10009DE60() != v18 || v19 != v16)
        {
          v20 = sub_10009E2E0();

          if (v20)
          {
            goto LABEL_17;
          }

          if ((sub_10009DE00() ^ v17) < 0x4000)
          {
            goto LABEL_13;
          }
        }

LABEL_17:

        sub_10009DE70();
        v27 = sub_10009DDD0();
        v22 = v28;

        v21 = v27;
      }

      else
      {
LABEL_13:

        v21 = 0;
        v22 = 0xE000000000000000;
      }

      v29 = *(v0 + 520);
      v31 = *(v0 + 496);
      v30 = *(v0 + 504);
      v32 = sub_1000307A4(v21, v22, &v42);

      *(v40 + 1) = v32;
      _os_log_impl(&_mh_execute_header, v41, v39, "%s: email addresses & phone numbers are all empty. Will return an error in the future.", v40, 0xCu);
      sub_10000670C(v38);

      (*(v30 + 8))(v29, v31);
    }

    else
    {
      v24 = *(v0 + 520);
      v26 = *(v0 + 496);
      v25 = *(v0 + 504);

      (*(v25 + 8))(v24, v26);
    }
  }

  v33 = *(v0 + 456);
  sub_100097154(v9);
  if (v33)
  {
    v34 = *(v0 + 456);
    *(v0 + 680) = v34;
    *(v0 + 672) = v34;
    *(v0 + 688) = *(*(v0 + 632) + 16);
    v35 = v34;

    v36 = swift_task_alloc();
    *(v0 + 696) = v36;
    *v36 = v0;
    v36[1] = sub_10006D040;

    return sub_10004B1CC();
  }

  else
  {
    v37 = swift_task_alloc();
    *(v0 + 656) = v37;
    *v37 = v0;
    v37[1] = sub_10006CD50;

    return sub_1000250A0();
  }
}

uint64_t sub_10006CD50()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v9 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v4 = v2[81];

    v5 = v2[75];
    v6 = v2[74];
    v7 = sub_10006EBB0;
  }

  else
  {
    v5 = v2[75];
    v6 = v2[74];
    v7 = sub_10006CE74;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10006CE74()
{
  v1 = *(*(v0 + 632) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v2 = *(v0 + 408);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 57) != 3)
  {
    v4 = *(v0 + 632);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 58) = 2;

    result = sub_10009DB00();
  }

  if (v2)
  {
    v5 = *(v0 + 456);
    *(v0 + 680) = v2;
    *(v0 + 672) = v2;
    *(v0 + 688) = *(*(v0 + 632) + 16);
    v6 = v5;

    v7 = v2;
    v8 = swift_task_alloc();
    *(v0 + 696) = v8;
    *v8 = v0;
    v8[1] = sub_10006D040;

    return sub_10004B1CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006D040()
{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v4 = *v1;
  v2[88] = v0;

  v5 = v2[86];
  if (v0)
  {
    v6 = v2[85];
    v7 = v2[81];

    v8 = v2[75];
    v9 = v2[74];
    v10 = sub_10006EF9C;
  }

  else
  {

    v8 = v2[75];
    v9 = v2[74];
    v10 = sub_10006D194;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10006D194()
{
  v1 = *(*(v0 + 632) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v2 = *(v0 + 59);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = *(v0 + 672);
    v4 = *(v0 + 648);
    v59 = *(v0 + 680);
    v60 = *(v0 + 632);
    v5 = *(v0 + 584);
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = *(v0 + 544);
    v9 = *(v0 + 536);
    v55 = *(v0 + 440);
    v57 = *(v0 + 608);
    v54 = *(v0 + 432);
    v10 = *(v0 + 424);

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 56) = -1;
    v11 = objc_allocWithZone(NSError);
    v12 = v3;
    v13 = [v11 initWithDomain:CKErrorDomain code:10 userInfo:0];
    v62 = v6;
    sub_100008658(v6, v7, &qword_1000CA250, &qword_10009FDF8);
    v14 = (*(v9 + 80) + 34) & ~*(v9 + 80);
    v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    sub_100017C10(v7, v16 + v14);
    *(v16 + v15) = v3;
    *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;
    v17 = v12;
    v18 = v10;
    sub_10004F5E0(0xD000000000000070, 0x80000001000A7610, 0xD00000000000003DLL, 0x80000001000A76F0, v0 + 16, v13, sub_10008F50C, v16);

    v19 = sub_10009D860();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    v20 = v13;
    v21 = v7;
LABEL_10:
    v54(v21, 0, v13);

    sub_100008728(v7, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v62, &qword_1000CA250, &qword_10009FDF8);
    v22 = *(v0 + 568);
    v23 = *(v0 + 560);
    v24 = *(v0 + 552);
    v25 = *(v0 + 520);
    v26 = *(v0 + 512);

    v27 = *(v0 + 8);

    return v27();
  }

  if ([*(v0 + 672) publicPermission] == 1 && (*(*(v0 + 480) + 16) || *(*(v0 + 488) + 16)))
  {

    return _swift_task_switch(sub_10006D890, 0, 0);
  }

  if ([*(v0 + 672) publicPermission] == 1)
  {
    v28 = *(v0 + 672);
    v29 = *(v0 + 648);
    v59 = *(v0 + 680);
    v61 = *(v0 + 632);
    v30 = *(v0 + 584);
    v31 = *(v0 + 568);
    v32 = *(v0 + 560);
    v33 = *(v0 + 544);
    v34 = *(v0 + 536);
    v56 = *(v0 + 440);
    v58 = *(v0 + 608);
    v54 = *(v0 + 432);
    v35 = *(v0 + 424);

    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 248) = -1;
    v36 = objc_allocWithZone(NSError);
    v37 = v28;
    v13 = [v36 initWithDomain:CKErrorDomain code:12 userInfo:0];
    v62 = v31;
    sub_100008658(v31, v32, &qword_1000CA250, &qword_10009FDF8);
    v38 = (*(v34 + 80) + 34) & ~*(v34 + 80);
    v39 = (v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0;
    sub_100017C10(v32, v40 + v38);
    *(v40 + v39) = v28;
    *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
    v7 = v32;
    v17 = v37;
    v41 = v35;
    sub_10004F5E0(0xD000000000000070, 0x80000001000A7610, 0xD00000000000007FLL, 0x80000001000A7730, v0 + 208, v13, sub_10008F50C, v40);

    v42 = sub_10009D860();
    (*(*(v42 - 8) + 56))(v32, 1, 1, v42);
    v20 = v13;
    v21 = v32;
    goto LABEL_10;
  }

  v43 = *(v0 + 512);

  sub_10009D9D0();
  v44 = sub_10009D9E0();
  v45 = sub_10009DFD0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "provided share is public, and you can only add participants to a private share--will still return sharingURL and share", v46, 2u);
  }

  v48 = *(v0 + 504);
  v47 = *(v0 + 512);
  v49 = *(v0 + 496);

  (*(v48 + 8))(v47, v49);
  v50 = *(v0 + 632);
  v51 = swift_task_alloc();
  *(v0 + 808) = v51;
  *v51 = v0;
  v51[1] = sub_10006E6F4;
  v52 = *(v0 + 568);

  return sub_100028ADC(v52);
}