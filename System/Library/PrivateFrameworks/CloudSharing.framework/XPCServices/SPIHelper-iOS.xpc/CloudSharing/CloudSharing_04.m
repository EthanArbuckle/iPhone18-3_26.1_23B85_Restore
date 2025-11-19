uint64_t sub_10006D890()
{
  v1 = *(v0 + 576);
  *(v0 + 712) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10006D91C, v3, v2);
}

uint64_t sub_10006D91C()
{
  v1 = v0[89];
  v2 = v0[80];
  v3 = v0[79];

  v0[90] = *(v3 + 16);

  v4 = swift_task_alloc();
  v0[91] = v4;
  *v4 = v0;
  v4[1] = sub_10006D9F4;
  if (v2 == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return sub_100049714(v5, v3, 0, 0);
}

uint64_t sub_10006D9F4()
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v7 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v4 = sub_10006DF98;
  }

  else
  {
    v5 = *(v2 + 720);

    v4 = sub_10006DB10;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10006DB10()
{
  v1 = *(v0 + 576);
  *(v0 + 744) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10006DB9C, v3, v2);
}

uint64_t sub_10006DB9C()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 61);
  v3 = *(v0 + 632);

  v4 = *(v3 + 16);
  if (v2)
  {
    v5 = &off_1000C1B68;
  }

  else
  {
    v5 = &off_1000C1B90;
  }

  sub_100047B6C(v5);

  return _swift_task_switch(sub_10006DC48, 0, 0);
}

uint64_t sub_10006DC48()
{
  v1 = *(v0 + 576);
  *(v0 + 752) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10006DCD4, v3, v2);
}

uint64_t sub_10006DCD4()
{
  v1 = v0[94];
  v2 = v0[79];

  v0[95] = *(v2 + 16);

  return _swift_task_switch(sub_10006DD50, 0, 0);
}

uint64_t sub_10006DD50()
{
  v1 = *(v0 + 576);
  *(v0 + 768) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10006DDDC, v3, v2);
}

uint64_t sub_10006DDDC()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 62);

  sub_10004A3E0(v3);

  v4 = *(v0 + 600);
  v5 = *(v0 + 592);

  return _swift_task_switch(sub_10006DE5C, v5, v4);
}

uint64_t sub_10006DE5C()
{
  v1 = *(v0 + 632);
  v2 = *(v1 + 16);

  v3 = sub_10004834C();

  v4 = *(*(v1 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride);
  if (v4 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    LOBYTE(v4) = *(v0 + 60);
  }

  v5 = *(v0 + 632);
  v6 = swift_task_alloc();
  *(v0 + 776) = v6;
  *v6 = v0;
  v6[1] = sub_10006E404;

  return sub_100023A48(v3 & 1, v4 & 1);
}

uint64_t sub_10006DF98()
{
  v1 = v0[90];
  v2 = v0[81];

  v3 = v0[75];
  v4 = v0[74];

  return _swift_task_switch(sub_10006E00C, v4, v3);
}

uint64_t sub_10006E00C()
{
  v1 = *(v0 + 584);

  *(v0 + 400) = *(v0 + 736);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v37 = *(v0 + 608);
    v38 = *(v0 + 632);
    v2 = *(v0 + 568);
    v3 = *(v0 + 560);
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 456);
    v36 = *(v0 + 432);
    v7 = *(v0 + 424);

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
    sub_100008658(v2, v3, &qword_1000CA250, &qword_10009FDF8);
    v12 = (*(v5 + 80) + 34) & ~*(v5 + 80);
    v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    sub_100017C10(v3, v14 + v12);
    *(v14 + v13) = v6;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v15 = v6;
    v16 = v7;
    sub_10008C148(v0 + 112, v0 + 304);
    sub_10004F5E0(0xD000000000000070, 0x80000001000A7610, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, sub_10008D3B4, v14);

    sub_10008C148(v0 + 112, v0 + 352);
    sub_10008F51C(0xD000000000000070, 0x80000001000A7610);
    v18 = v17;
    v19 = sub_10009D860();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    v36(v3, 0, v18);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);
    v20 = *(v0 + 400);

    v21 = *(v0 + 568);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);
  }

  else
  {
    v27 = *(v0 + 632);
    v28 = *(v0 + 608);
    v29 = *(v0 + 560);
    v30 = *(v0 + 552);
    v31 = *(v0 + 520);
    v39 = *(v0 + 512);
    v32 = *(v0 + 432);
    v33 = *(v0 + 440);
    sub_100008728(*(v0 + 568), &qword_1000CA250, &qword_10009FDF8);

    v34 = *(v0 + 400);

    sub_100083E60(0, 0xD000000000000070, 0x80000001000A7610, v32, v33);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10006E404()
{
  v2 = *(*v1 + 776);
  v3 = *v1;
  v3[98] = v0;

  if (v0)
  {
    v4 = v3[81];

    v5 = v3[75];
    v6 = v3[74];

    return _swift_task_switch(sub_10006F394, v6, v5);
  }

  else
  {
    v7 = v3[79];
    v8 = swift_task_alloc();
    v3[99] = v8;
    *v8 = v3;
    v8[1] = sub_10006E578;

    return sub_100026F78();
  }
}

uint64_t sub_10006E578()
{
  v2 = *(*v1 + 792);
  v3 = *v1;
  v3[100] = v0;

  if (v0)
  {
    v4 = v3[81];

    v5 = v3[75];
    v6 = v3[74];

    return _swift_task_switch(sub_10006F78C, v6, v5);
  }

  else
  {
    v7 = v3[79];
    v8 = swift_task_alloc();
    v3[101] = v8;
    *v8 = v3;
    v8[1] = sub_10006E6F4;
    v9 = v3[71];

    return sub_100028ADC(v9);
  }
}

uint64_t sub_10006E6F4()
{
  v2 = *v1;
  v3 = *(*v1 + 808);
  v9 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v4 = v2[81];

    v5 = v2[75];
    v6 = v2[74];
    v7 = sub_10006FB84;
  }

  else
  {
    v5 = v2[75];
    v6 = v2[74];
    v7 = sub_10006E818;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10006E818()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 552);
  v3 = sub_100094060();
  v43 = v4;
  v44 = v3;
  v42 = v5;
  v6 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v7 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v9 = *(v0 + 416);
  if (v9)
  {
    v10 = *(v0 + 648);
    v40 = *(v0 + 672);
    v41 = *(v0 + 632);
    v11 = *(v0 + 584);
    v12 = *(v0 + 568);
    v13 = *(v0 + 560);
    v14 = *(v0 + 552);
    v35 = v14;
    v36 = v12;
    v33 = *(v0 + 544);
    v15 = *(v0 + 536);
    v16 = *(v0 + 528);
    v38 = *(v0 + 440);
    v39 = *(v0 + 608);
    v37 = *(v0 + 432);
    v17 = *(v0 + 424);

    *(v0 + 192) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 200) = -1;
    sub_100008658(v14, v13, &qword_1000CA250, &qword_10009FDF8);
    v32 = v9;
    v34 = sub_10009DDA0();
    v19 = v18;
    sub_100008658(v12, v13, &qword_1000CA250, &qword_10009FDF8);
    v20 = (*(v15 + 80) + 34) & ~*(v15 + 80);
    v21 = (v33 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v44;
    *(v22 + 24) = v43;
    *(v22 + 32) = v42;
    sub_100017C10(v13, v22 + v20);
    *(v22 + v21) = v9;
    *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
    v23 = v17;
    v24 = v32;
    sub_10004F5E0(0xD000000000000070, 0x80000001000A7610, v34, v19, v0 + 160, 0, sub_10008F50C, v22);

    v25 = [v24 _copyWithoutPersonalInfo];
    v37(v35, v25, 0);

    sub_100008728(v35, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v36, &qword_1000CA250, &qword_10009FDF8);
    v26 = *(v0 + 568);
    v27 = *(v0 + 560);
    v28 = *(v0 + 552);
    v29 = *(v0 + 520);
    v30 = *(v0 + 512);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006EBB0()
{
  v1 = *(v0 + 584);

  *(v0 + 400) = *(v0 + 664);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v37 = *(v0 + 608);
    v38 = *(v0 + 632);
    v2 = *(v0 + 568);
    v3 = *(v0 + 560);
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 456);
    v36 = *(v0 + 432);
    v7 = *(v0 + 424);

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
    sub_100008658(v2, v3, &qword_1000CA250, &qword_10009FDF8);
    v12 = (*(v5 + 80) + 34) & ~*(v5 + 80);
    v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    sub_100017C10(v3, v14 + v12);
    *(v14 + v13) = v6;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v15 = v6;
    v16 = v7;
    sub_10008C148(v0 + 112, v0 + 304);
    sub_10004F5E0(0xD000000000000070, 0x80000001000A7610, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, sub_10008D3B4, v14);

    sub_10008C148(v0 + 112, v0 + 352);
    sub_10008F51C(0xD000000000000070, 0x80000001000A7610);
    v18 = v17;
    v19 = sub_10009D860();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    v36(v3, 0, v18);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);
    v20 = *(v0 + 400);

    v21 = *(v0 + 568);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);
  }

  else
  {
    v27 = *(v0 + 632);
    v28 = *(v0 + 608);
    v29 = *(v0 + 560);
    v30 = *(v0 + 552);
    v31 = *(v0 + 520);
    v39 = *(v0 + 512);
    v32 = *(v0 + 432);
    v33 = *(v0 + 440);
    sub_100008728(*(v0 + 568), &qword_1000CA250, &qword_10009FDF8);

    v34 = *(v0 + 400);

    sub_100083E60(0, 0xD000000000000070, 0x80000001000A7610, v32, v33);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10006EF9C()
{
  v1 = *(v0 + 584);

  *(v0 + 400) = *(v0 + 704);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v37 = *(v0 + 608);
    v38 = *(v0 + 632);
    v2 = *(v0 + 568);
    v3 = *(v0 + 560);
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 456);
    v36 = *(v0 + 432);
    v7 = *(v0 + 424);

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
    sub_100008658(v2, v3, &qword_1000CA250, &qword_10009FDF8);
    v12 = (*(v5 + 80) + 34) & ~*(v5 + 80);
    v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    sub_100017C10(v3, v14 + v12);
    *(v14 + v13) = v6;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v15 = v6;
    v16 = v7;
    sub_10008C148(v0 + 112, v0 + 304);
    sub_10004F5E0(0xD000000000000070, 0x80000001000A7610, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, sub_10008D3B4, v14);

    sub_10008C148(v0 + 112, v0 + 352);
    sub_10008F51C(0xD000000000000070, 0x80000001000A7610);
    v18 = v17;
    v19 = sub_10009D860();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    v36(v3, 0, v18);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);
    v20 = *(v0 + 400);

    v21 = *(v0 + 568);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);
  }

  else
  {
    v27 = *(v0 + 632);
    v28 = *(v0 + 608);
    v29 = *(v0 + 560);
    v30 = *(v0 + 552);
    v31 = *(v0 + 520);
    v39 = *(v0 + 512);
    v32 = *(v0 + 432);
    v33 = *(v0 + 440);
    sub_100008728(*(v0 + 568), &qword_1000CA250, &qword_10009FDF8);

    v34 = *(v0 + 400);

    sub_100083E60(0, 0xD000000000000070, 0x80000001000A7610, v32, v33);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10006F394()
{
  v1 = *(v0 + 584);

  *(v0 + 400) = *(v0 + 784);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v37 = *(v0 + 608);
    v38 = *(v0 + 632);
    v2 = *(v0 + 568);
    v3 = *(v0 + 560);
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 456);
    v36 = *(v0 + 432);
    v7 = *(v0 + 424);

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
    sub_100008658(v2, v3, &qword_1000CA250, &qword_10009FDF8);
    v12 = (*(v5 + 80) + 34) & ~*(v5 + 80);
    v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    sub_100017C10(v3, v14 + v12);
    *(v14 + v13) = v6;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v15 = v6;
    v16 = v7;
    sub_10008C148(v0 + 112, v0 + 304);
    sub_10004F5E0(0xD000000000000070, 0x80000001000A7610, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, sub_10008D3B4, v14);

    sub_10008C148(v0 + 112, v0 + 352);
    sub_10008F51C(0xD000000000000070, 0x80000001000A7610);
    v18 = v17;
    v19 = sub_10009D860();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    v36(v3, 0, v18);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);
    v20 = *(v0 + 400);

    v21 = *(v0 + 568);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);
  }

  else
  {
    v27 = *(v0 + 632);
    v28 = *(v0 + 608);
    v29 = *(v0 + 560);
    v30 = *(v0 + 552);
    v31 = *(v0 + 520);
    v39 = *(v0 + 512);
    v32 = *(v0 + 432);
    v33 = *(v0 + 440);
    sub_100008728(*(v0 + 568), &qword_1000CA250, &qword_10009FDF8);

    v34 = *(v0 + 400);

    sub_100083E60(0, 0xD000000000000070, 0x80000001000A7610, v32, v33);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10006F78C()
{
  v1 = *(v0 + 584);

  *(v0 + 400) = *(v0 + 800);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v37 = *(v0 + 608);
    v38 = *(v0 + 632);
    v2 = *(v0 + 568);
    v3 = *(v0 + 560);
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 456);
    v36 = *(v0 + 432);
    v7 = *(v0 + 424);

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
    sub_100008658(v2, v3, &qword_1000CA250, &qword_10009FDF8);
    v12 = (*(v5 + 80) + 34) & ~*(v5 + 80);
    v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    sub_100017C10(v3, v14 + v12);
    *(v14 + v13) = v6;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v15 = v6;
    v16 = v7;
    sub_10008C148(v0 + 112, v0 + 304);
    sub_10004F5E0(0xD000000000000070, 0x80000001000A7610, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, sub_10008D3B4, v14);

    sub_10008C148(v0 + 112, v0 + 352);
    sub_10008F51C(0xD000000000000070, 0x80000001000A7610);
    v18 = v17;
    v19 = sub_10009D860();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    v36(v3, 0, v18);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);
    v20 = *(v0 + 400);

    v21 = *(v0 + 568);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);
  }

  else
  {
    v27 = *(v0 + 632);
    v28 = *(v0 + 608);
    v29 = *(v0 + 560);
    v30 = *(v0 + 552);
    v31 = *(v0 + 520);
    v39 = *(v0 + 512);
    v32 = *(v0 + 432);
    v33 = *(v0 + 440);
    sub_100008728(*(v0 + 568), &qword_1000CA250, &qword_10009FDF8);

    v34 = *(v0 + 400);

    sub_100083E60(0, 0xD000000000000070, 0x80000001000A7610, v32, v33);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10006FB84()
{
  v1 = *(v0 + 584);

  *(v0 + 400) = *(v0 + 816);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v37 = *(v0 + 608);
    v38 = *(v0 + 632);
    v2 = *(v0 + 568);
    v3 = *(v0 + 560);
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 456);
    v36 = *(v0 + 432);
    v7 = *(v0 + 424);

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
    sub_100008658(v2, v3, &qword_1000CA250, &qword_10009FDF8);
    v12 = (*(v5 + 80) + 34) & ~*(v5 + 80);
    v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    sub_100017C10(v3, v14 + v12);
    *(v14 + v13) = v6;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v15 = v6;
    v16 = v7;
    sub_10008C148(v0 + 112, v0 + 304);
    sub_10004F5E0(0xD000000000000070, 0x80000001000A7610, 0xD000000000000015, 0x80000001000A76D0, v0 + 64, 0, sub_10008D3B4, v14);

    sub_10008C148(v0 + 112, v0 + 352);
    sub_10008F51C(0xD000000000000070, 0x80000001000A7610);
    v18 = v17;
    v19 = sub_10009D860();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    v36(v3, 0, v18);
    sub_10008C1A4(v0 + 112);
    sub_10008C1A4(v0 + 112);

    sub_10008C1A4(v0 + 112);
    sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);
    v20 = *(v0 + 400);

    v21 = *(v0 + 568);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);
  }

  else
  {
    v27 = *(v0 + 632);
    v28 = *(v0 + 608);
    v29 = *(v0 + 560);
    v30 = *(v0 + 552);
    v31 = *(v0 + 520);
    v39 = *(v0 + 512);
    v32 = *(v0 + 432);
    v33 = *(v0 + 440);
    sub_100008728(*(v0 + 568), &qword_1000CA250, &qword_10009FDF8);

    v34 = *(v0 + 400);

    sub_100083E60(0, 0xD000000000000070, 0x80000001000A7610, v32, v33);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10006FF7C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
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
    if (("er(_:withReply:)" & 0x2000000000000000) != 0)
    {
      v25 = ("er(_:withReply:)" >> 40) & 0xF0000;
    }

    else
    {
      v25 = 7340032;
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

uint64_t sub_100070424@<X0>(_OWORD *a1@<X0>, unint64_t a2@<X1>, _UNKNOWN **a3@<X2>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a3)
  {
    v9 = a3;
    v23 = HIDWORD(a2);
    v24 = a2 >> 24;
  }

  else
  {
    LOBYTE(v23) = 0;
    LOBYTE(v24) = 0;
    v9 = &off_1000C1BB8;
  }

  a7[3] = type metadata accessor for SPIAnalyticsEvent();
  a7[4] = &off_1000C2CF0;
  v10 = sub_10008D654(a7);
  v11 = sub_100003714(&qword_1000CB070, &unk_1000A18D0);
  v12 = v11[12];
  v13 = v11[16];
  v14 = v11[20];
  v15 = v11[24];
  v16 = (v10 + v11[28]);
  v17 = (v10 + v11[32]);
  sub_100008658(a4, v10, &qword_1000CA250, &qword_10009FDF8);
  *(v10 + v12) = a5;
  *(v10 + v13) = v24;
  *(v10 + v14) = v23;
  *(v10 + v15) = v9;
  v18 = *(a6 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v16 = *(a6 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v16[1] = v18;
  v19 = *(a1 + 25);
  v20 = a1[1];
  *v17 = *a1;
  v17[1] = v20;
  *(v17 + 25) = v19;
  swift_storeEnumTagMultiPayload();

  v21 = a5;
  return sub_100008658(a1, v28, &qword_1000CB088, &unk_1000A18F0);
}

uint64_t sub_100070590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_10009D9F0();
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v9 = *(v8 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v10 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v6[25] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_10009DF10();
  v6[29] = sub_10009DF00();
  v13 = sub_10009DED0();
  v6[30] = v13;
  v6[31] = v12;

  return _swift_task_switch(sub_1000706F4, v13, v12);
}

uint64_t sub_1000706F4()
{
  v1 = v0[28];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = type metadata accessor for ModelDelegateSPI();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[32] = sub_10003F4A4();
  v8 = sub_10009D860();
  v0[33] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v0[34] = v10;
  v0[35] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v4, v8);
  v11 = *(v9 + 56);
  v0[36] = v11;
  v0[37] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v1, 0, 1, v8);
  v12 = swift_allocObject();
  v0[38] = v12;
  *(v12 + 16) = v3;
  *(v12 + 24) = v2;

  v13 = swift_task_alloc();
  v0[39] = v13;
  *v13 = v0;
  v13[1] = sub_1000708A4;
  v14 = v0[28];

  return sub_10003F638(v14, sub_10008D260, v12);
}

uint64_t sub_1000708A4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 304);
  v5 = *(*v1 + 224);
  v9 = *v1;
  *(*v1 + 320) = a1;

  sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
  v6 = *(v2 + 248);
  v7 = *(v2 + 240);

  return _swift_task_switch(sub_100070A1C, v7, v6);
}

uint64_t sub_100070A1C()
{
  v1 = v0[40];
  if (v1)
  {
    v3 = v0[36];
    v2 = v0[37];
    v4 = v0[32];
    v5 = v0[33];
    v7 = v0[28];
    v6 = v0[29];
    v9 = v0[18];
    v8 = v0[19];

    v3(v7, 1, 1, v5);
    v10 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v9(v7, 0, v10);

    sub_100008728(v7, &qword_1000CA250, &qword_10009FDF8);
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[26];
    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[22];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = *(v0[32] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
    v0[41] = v19;
    if (v19)
    {

      v20 = swift_task_alloc();
      v0[42] = v20;
      *v20 = v0;
      v20[1] = sub_100070C7C;

      return sub_1000250A0();
    }

    else
    {
      return sub_10009E250();
    }
  }
}

uint64_t sub_100070C7C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_1000714B8;
  }

  else
  {
    v7 = sub_100070DB8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100070DB8()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = *(v0 + 216);
  (*(v0 + 272))(v6, *(v0 + 136), v5);
  v3(v6, 0, 1, v5);
  v7 = swift_task_alloc();
  *(v0 + 352) = v7;
  *v7 = v0;
  v7[1] = sub_100070E94;
  v8 = *(v0 + 216);

  return sub_100028ADC(v8);
}

uint64_t sub_100070E94()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 360) = v0;

  sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
  v6 = *(v2 + 248);
  v7 = *(v2 + 240);
  if (v0)
  {
    v8 = sub_1000719B8;
  }

  else
  {
    v8 = sub_100070FFC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100070FFC()
{
  v50 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 232);
  v3 = *(v0 + 192);

  sub_10009D9D0();

  v4 = sub_10009D9E0();
  v5 = sub_10009DFF0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 328);
    v7 = *(v0 + 224);
    v48 = *(v0 + 192);
    v8 = *(v0 + 168);
    v46 = *(v0 + 200);
    v47 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136315138;
    v11 = *(v6 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v12 = sub_10009DDA0();
    v14 = sub_1000307A4(v12, v13, &v49);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished existingShareForFile shareURL: %s", v9, 0xCu);
    sub_10000670C(v10);

    (*(v8 + 8))(v48, v47);
  }

  else
  {
    v15 = *(v0 + 192);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 328);
  v19 = *(v18 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v20 = *(v0 + 120);
  if (!v20)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {

    goto LABEL_9;
  }

  v22 = [v21 originalShare];

  if (!v22)
  {
LABEL_9:
    v30 = *(v0 + 208);
    v31 = *(v18 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v32 = *(v18 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v33 = *(v0 + 128);
    if (v33)
    {
      v34 = [*(v0 + 128) _copyWithoutPersonalInfo];
    }

    else
    {
      v34 = 0;
    }

    v35 = *(v0 + 328);
    v36 = *(v0 + 256);
    v25 = *(v0 + 208);
    v37 = *(v0 + 152);
    (*(v0 + 144))(v25, v34, 0);

    goto LABEL_13;
  }

  v23 = *(v0 + 328);
  v24 = *(v0 + 256);
  v25 = *(v0 + 224);
  v27 = *(v0 + 144);
  v26 = *(v0 + 152);
  v28 = *(v18 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v29 = [v22 _copyWithoutPersonalInfo];
  v27(v25, v29, 0);

LABEL_13:
  sub_100008728(v25, &qword_1000CA250, &qword_10009FDF8);
  v39 = *(v0 + 216);
  v38 = *(v0 + 224);
  v40 = *(v0 + 208);
  v42 = *(v0 + 184);
  v41 = *(v0 + 192);
  v43 = *(v0 + 176);

  v44 = *(v0 + 8);

  return v44();
}

void sub_1000714B8()
{
  v70 = v0;
  *(v0 + 112) = *(v0 + 344);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v1 = *(v0 + 184);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_10009D9D0();
  sub_100032380(v3, v2, v5, v4, v6, v7);
  v8 = sub_10009D9E0();
  v9 = sub_10009DFF0();
  sub_1000323E0(v3, v2, v5, v4, v6, v7);
  v59 = v9;
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  v65 = v11;
  v66 = *(v0 + 184);
  v68 = v5;
  v63 = v2;
  v64 = v3;
  v61 = v6;
  v62 = v4;
  if (v10)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v4;
    v16 = v14;
    v69 = v14;
    *v13 = 136315138;
    *(v0 + 64) = v3;
    *(v0 + 72) = v2;
    *(v0 + 80) = v5;
    *(v0 + 88) = v15;
    *(v0 + 96) = v6;
    *(v0 + 104) = v7;
    sub_100032380(v3, v2, v5, v15, v6, v7);
    v17 = sub_10009DDA0();
    v19 = sub_1000307A4(v17, v18, &v69);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v59, "Initial error finishing existingShareForFile: %s", v13, 0xCu);
    sub_10000670C(v16);
  }

  v20 = *(v12 + 8);
  v20(v66, v65);
  v21 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  v22 = v21;
  if (v7 == 4)
  {

    v23 = v5;
    if (!v5)
    {
      __break(1u);
      return;
    }

    goto LABEL_10;
  }

  if (v7 != 1)
  {
LABEL_11:
    v35 = *(v0 + 232);
    v36 = *(v0 + 176);

    sub_10009D9D0();
    v37 = v22;
    v38 = sub_10009D9E0();
    v39 = sub_10009DFD0();

    v60 = v7;
    v67 = v20;
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "existingShareForFile returning mapped error: %@", v40, 0xCu);
      sub_100008728(v41, &qword_1000CA8E0, &qword_10009FE08);
    }

    v43 = *(v0 + 328);
    v45 = *(v0 + 288);
    v44 = *(v0 + 296);
    v46 = *(v0 + 256);
    v47 = *(v0 + 264);
    v48 = *(v0 + 224);
    v49 = *(v0 + 152);
    v50 = *(v0 + 168) + 8;
    v51 = *(v0 + 144);
    v67(*(v0 + 176), *(v0 + 160));
    v45(v48, 1, 1, v47);
    v51(v48, 0, v37);

    sub_1000323E0(v64, v63, v68, v62, v61, v60);
    sub_100008728(v48, &qword_1000CA250, &qword_10009FDF8);
    v52 = *(v0 + 112);

    v54 = *(v0 + 216);
    v53 = *(v0 + 224);
    v55 = *(v0 + 208);
    v57 = *(v0 + 184);
    v56 = *(v0 + 192);
    v58 = *(v0 + 176);

    v34 = *(v0 + 8);
    goto LABEL_14;
  }

  v23 = v5;
  if (v5)
  {
LABEL_10:
    v22 = v23;
    goto LABEL_11;
  }

  __break(1u);
LABEL_8:
  v24 = *(v0 + 328);
  v25 = *(v0 + 256);
  v27 = *(v0 + 224);
  v26 = *(v0 + 232);
  v29 = *(v0 + 208);
  v28 = *(v0 + 216);
  v31 = *(v0 + 184);
  v30 = *(v0 + 192);
  v32 = *(v0 + 176);

  v33 = *(v0 + 112);

  v34 = *(v0 + 8);
LABEL_14:

  v34();
}

void sub_1000719B8()
{
  v70 = v0;
  *(v0 + 112) = *(v0 + 360);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v1 = *(v0 + 184);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_10009D9D0();
  sub_100032380(v3, v2, v5, v4, v6, v7);
  v8 = sub_10009D9E0();
  v9 = sub_10009DFF0();
  sub_1000323E0(v3, v2, v5, v4, v6, v7);
  v59 = v9;
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  v65 = v11;
  v66 = *(v0 + 184);
  v68 = v5;
  v63 = v2;
  v64 = v3;
  v61 = v6;
  v62 = v4;
  if (v10)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v4;
    v16 = v14;
    v69 = v14;
    *v13 = 136315138;
    *(v0 + 64) = v3;
    *(v0 + 72) = v2;
    *(v0 + 80) = v5;
    *(v0 + 88) = v15;
    *(v0 + 96) = v6;
    *(v0 + 104) = v7;
    sub_100032380(v3, v2, v5, v15, v6, v7);
    v17 = sub_10009DDA0();
    v19 = sub_1000307A4(v17, v18, &v69);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v59, "Initial error finishing existingShareForFile: %s", v13, 0xCu);
    sub_10000670C(v16);
  }

  v20 = *(v12 + 8);
  v20(v66, v65);
  v21 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  v22 = v21;
  if (v7 == 4)
  {

    v23 = v5;
    if (!v5)
    {
      __break(1u);
      return;
    }

    goto LABEL_10;
  }

  if (v7 != 1)
  {
LABEL_11:
    v35 = *(v0 + 232);
    v36 = *(v0 + 176);

    sub_10009D9D0();
    v37 = v22;
    v38 = sub_10009D9E0();
    v39 = sub_10009DFD0();

    v60 = v7;
    v67 = v20;
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "existingShareForFile returning mapped error: %@", v40, 0xCu);
      sub_100008728(v41, &qword_1000CA8E0, &qword_10009FE08);
    }

    v43 = *(v0 + 328);
    v45 = *(v0 + 288);
    v44 = *(v0 + 296);
    v46 = *(v0 + 256);
    v47 = *(v0 + 264);
    v48 = *(v0 + 224);
    v49 = *(v0 + 152);
    v50 = *(v0 + 168) + 8;
    v51 = *(v0 + 144);
    v67(*(v0 + 176), *(v0 + 160));
    v45(v48, 1, 1, v47);
    v51(v48, 0, v37);

    sub_1000323E0(v64, v63, v68, v62, v61, v60);
    sub_100008728(v48, &qword_1000CA250, &qword_10009FDF8);
    v52 = *(v0 + 112);

    v54 = *(v0 + 216);
    v53 = *(v0 + 224);
    v55 = *(v0 + 208);
    v57 = *(v0 + 184);
    v56 = *(v0 + 192);
    v58 = *(v0 + 176);

    v34 = *(v0 + 8);
    goto LABEL_14;
  }

  v23 = v5;
  if (v5)
  {
LABEL_10:
    v22 = v23;
    goto LABEL_11;
  }

  __break(1u);
LABEL_8:
  v24 = *(v0 + 328);
  v25 = *(v0 + 256);
  v27 = *(v0 + 224);
  v26 = *(v0 + 232);
  v29 = *(v0 + 208);
  v28 = *(v0 + 216);
  v31 = *(v0 + 184);
  v30 = *(v0 + 192);
  v32 = *(v0 + 176);

  v33 = *(v0 + 112);

  v34 = *(v0 + 8);
LABEL_14:

  v34();
}

uint64_t sub_100071EB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
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
    if (("fileURL (from wrapper): " & 0x2000000000000000) != 0)
    {
      v25 = ("fileURL (from wrapper): " >> 40) & 0xF0000;
    }

    else
    {
      v25 = 3145728;
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

uint64_t sub_1000723E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_10009D9F0();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  sub_10009DF10();
  v7[15] = sub_10009DF00();
  v12 = sub_10009DED0();
  v7[16] = v12;
  v7[17] = v11;

  return _swift_task_switch(sub_1000724EC, v12, v11);
}

uint64_t sub_1000724EC()
{
  v1 = type metadata accessor for ModelDelegateSPI();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[18] = sub_10003F4A4();
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1000725A8;
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];

  return sub_100041370(v8, v7, v5, v6);
}

uint64_t sub_1000725A8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return _swift_task_switch(sub_1000726C8, v4, v3);
}

uint64_t sub_1000726C8()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  v0[20] = v1;
  if (!v1)
  {
    return sub_10009E250();
  }

  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_1000727E4;

  return sub_10002D518();
}

uint64_t sub_1000727E4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_100072BB4;
  }

  else
  {
    v7 = sub_100072920;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100072920()
{
  v27 = v0;
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v4 = v0[3];
  v25 = v0[2];
  v6 = v0[4];
  v5 = v0[5];
  sub_10009D9D0();

  v7 = sub_10009D9E0();
  v8 = sub_10009DFF0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  if (v9)
  {
    v13 = v6;
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1000307A4(v25, v4, &v26);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1000307A4(v13, v5, &v26);
    _os_log_impl(&_mh_execute_header, v7, v8, "Finished user name (%s) & email (%s)", v14, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v10, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v15 = v0[20];
  v16 = v0[18];
  v18 = v0[9];
  v17 = v0[10];
  v19 = sub_10009DD50();

  v20 = sub_10009DD50();

  v18(v19, v20, 0);

  v22 = v0[13];
  v21 = v0[14];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100072BB4()
{
  v30 = v0;
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[13];

  sub_10009D9D0();
  swift_errorRetain();
  v4 = sub_10009D9E0();
  v5 = sub_10009DFD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    v0[6] = v6;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v12 = sub_10009DDA0();
    v14 = sub_1000307A4(v12, v13, &v29);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error finishing userNameAndEmail %s", v10, 0xCu);
    sub_10000670C(v11);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[22];
  v19 = v0[20];
  v20 = v0[18];
  v22 = v0[9];
  v21 = v0[10];
  v23 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  v24 = v23;
  v22(0, 0, v23);

  v26 = v0[13];
  v25 = v0[14];

  v27 = v0[1];

  return v27();
}

void sub_100072ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t sub_100072F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v60 = a6;
  v56 = a5;
  v57 = a3;
  v62 = a4;
  v63 = a2;
  v9 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v61 = &v49 - v11;
  v12 = sub_10009D860();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v58 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v16;
  __chkstk_darwin(v15);
  v18 = &v49 - v17;
  v19 = sub_10009D9F0();
  v53 = *(v19 - 8);
  v54 = v19;
  v20 = *(v53 + 64);
  __chkstk_darwin(v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D9D0();
  v59 = v13;
  v23 = *(v13 + 16);
  v23(v18, a1, v12);
  v24 = sub_10009D9E0();
  v25 = sub_10009DFF0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v51 = v6;
    v27 = v26;
    v49 = swift_slowAlloc();
    v50 = a1;
    v64 = v49;
    *v27 = 136315138;
    sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
    v28 = sub_10009E2C0();
    v29 = v23;
    v30 = v12;
    v32 = v31;
    (*(v59 + 8))(v18, v30);
    v33 = sub_1000307A4(v28, v32, &v64);
    v12 = v30;
    v23 = v29;

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "Begin forciblyShareFolder, folderURL: %s", v27, 0xCu);
    sub_10000670C(v49);
    a1 = v50;

    v7 = v51;
  }

  else
  {

    (*(v59 + 8))(v18, v12);
  }

  (*(v53 + 8))(v22, v54);
  v52 = v12;
  v34 = v61;
  sub_10009DF20();
  v35 = sub_10009DF40();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v23(v58, a1, v12);
  sub_10009DF10();

  v54 = v7;

  v36 = v57;

  v37 = sub_10009DF00();
  v38 = v59;
  v39 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v40 = (v55 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v37;
  *(v44 + 24) = &protocol witness table for MainActor;
  (*(v38 + 32))(v44 + v39, v58, v52);
  v45 = (v44 + v40);
  v47 = v60;
  v46 = v61;
  *v45 = v56;
  v45[1] = v47;
  *(v44 + v41) = v62;
  *(v44 + v42) = v54;
  *(v44 + v43) = v63;
  *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
  sub_10004CDF4(0, 0, v46, &unk_1000A2548, v44);
}

uint64_t sub_1000735CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v26;
  v8[30] = v27;
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[24] = a4;
  v9 = sub_10009DC90();
  v8[31] = v9;
  v10 = *(v9 - 8);
  v8[32] = v10;
  v11 = *(v10 + 64) + 15;
  v8[33] = swift_task_alloc();
  v12 = sub_10009DCB0();
  v8[34] = v12;
  v13 = *(v12 - 8);
  v8[35] = v13;
  v14 = *(v13 + 64) + 15;
  v8[36] = swift_task_alloc();
  v15 = sub_10009DCD0();
  v8[37] = v15;
  v16 = *(v15 - 8);
  v8[38] = v16;
  v17 = *(v16 + 64) + 15;
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v18 = sub_10009D9F0();
  v8[41] = v18;
  v19 = *(v18 - 8);
  v8[42] = v19;
  v20 = *(v19 + 64) + 15;
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v21 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v8[49] = swift_task_alloc();
  sub_10009DF10();
  v8[50] = sub_10009DF00();
  v23 = sub_10009DED0();
  v8[51] = v23;
  v8[52] = v22;

  return _swift_task_switch(sub_100073868, v23, v22);
}

uint64_t sub_100073868()
{
  v1 = v0[49];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = type metadata accessor for ModelDelegateSPI();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[53] = sub_10003F4A4();
  v8 = sub_10009D860();
  v0[54] = v8;
  v9 = *(v8 - 8);
  (*(v9 + 16))(v1, v4, v8);
  v10 = *(v9 + 56);
  v0[55] = v10;
  v0[56] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v1, 0, 1, v8);
  v11 = swift_allocObject();
  v0[57] = v11;
  *(v11 + 16) = v3;
  *(v11 + 24) = v2;

  v12 = swift_task_alloc();
  v0[58] = v12;
  *v12 = v0;
  v12[1] = sub_100073A0C;
  v13 = v0[49];

  return sub_10003F638(v13, sub_100079998, v11);
}

uint64_t sub_100073A0C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *(*v1 + 456);
  v5 = *(*v1 + 392);
  v9 = *v1;
  *(*v1 + 472) = a1;

  sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
  v6 = *(v2 + 416);
  v7 = *(v2 + 408);

  return _swift_task_switch(sub_100073B84, v7, v6);
}

uint64_t sub_100073B84()
{
  v1 = *(v0 + 472);
  if (v1)
  {
    v3 = *(v0 + 440);
    v2 = *(v0 + 448);
    v4 = *(v0 + 424);
    v5 = *(v0 + 432);
    v7 = *(v0 + 392);
    v6 = *(v0 + 400);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);

    v3(v7, 1, 1, v5);
    v10 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v9(v7, 0, v10);

LABEL_3:
    sub_100008728(v7, &qword_1000CA250, &qword_10009FDF8);
    v12 = *(v0 + 384);
    v11 = *(v0 + 392);
    v14 = *(v0 + 368);
    v13 = *(v0 + 376);
    v16 = *(v0 + 352);
    v15 = *(v0 + 360);
    v17 = *(v0 + 344);
    v19 = *(v0 + 312);
    v18 = *(v0 + 320);
    v20 = *(v0 + 288);
    v57 = *(v0 + 264);

    v21 = *(v0 + 8);

    return v21();
  }

  v23 = *(*(v0 + 424) + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v0 + 480) = v23;
  if (!v23)
  {
    return sub_10009E250();
  }

  v24 = *(v0 + 216);
  v25 = *(v0 + 224);
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);

  isa = sub_10009DE90().super.isa;
  *(v0 + 488) = CKSharingAccessTypeFromOptionsGroups();

  v27 = sub_10009DE90().super.isa;
  *(v0 + 496) = CKSharingPermissionTypeFromOptionsGroups();

  v28 = sub_10009DE90().super.isa;
  *(v0 + 105) = CKSharingAllowOthersToInviteFromOptionsGroups();

  v29 = sub_10009DE90().super.isa;
  *(v0 + 106) = CKSharingAllowAccessRequestsFromOptionsGroups();

  v30 = *(v25 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  if (v30)
  {
    v31 = *(v25 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 160) = v31;
    *(v0 + 168) = v30;

    sub_10009DB00();
  }

  v32 = *(v0 + 240);
  v33 = *(v0 + 192);
  v59 = *(v0 + 232);

  sub_1000799A0(v34);
  sub_100097154(v59);

  if ((sub_10008B820(v33) & 1) == 0)
  {
    v43 = *(v0 + 400);
    v44 = *(v0 + 384);

    sub_10009D9D0();
    v45 = sub_10009D9E0();
    v46 = sub_10009DFD0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "forciblyShareFolder does not seem valid", v47, 2u);
    }

    v49 = *(v0 + 440);
    v48 = *(v0 + 448);
    v50 = *(v0 + 432);
    v51 = *(v0 + 384);
    v7 = *(v0 + 392);
    v52 = *(v0 + 328);
    v53 = *(v0 + 336);
    v56 = *(v0 + 208);
    v58 = *(v0 + 424);
    v55 = *(v0 + 200);

    (*(v53 + 8))(v51, v52);
    v49(v7, 1, 1, v50);
    v54 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v55(v7, 0, v54);

    goto LABEL_3;
  }

  v35 = *(v0 + 376);
  sub_10009D9D0();
  v36 = sub_10009D9E0();
  v37 = sub_10009DFF0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "starting folder remove subitem shares", v38, 2u);
  }

  v39 = *(v0 + 376);
  v40 = *(v0 + 328);
  v41 = *(v0 + 336);

  v42 = *(v41 + 8);
  *(v0 + 504) = v42;
  v42(v39, v40);

  return _swift_task_switch(sub_1000740E8, 0, 0);
}

uint64_t sub_1000740E8()
{
  v1 = v0[24];
  v2 = swift_task_alloc();
  v0[64] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 2;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[65] = v4;
  *v4 = v0;
  v4[1] = sub_1000741E0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000002ALL, 0x80000001000A5300, sub_100018704, v2, &type metadata for () + 8);
}

uint64_t sub_1000741E0()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v7 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = sub_100074744;
  }

  else
  {
    v5 = *(v2 + 512);

    v4 = sub_1000742FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100074314()
{
  v1 = v0[50];
  v2 = v0[46];

  sub_10009D9D0();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "successfully completed forcible clean, delaying before prep as bird seems to require that", v5, 2u);
  }

  v37 = *(v0 + 105);
  v38 = *(v0 + 106);
  v6 = v0[63];
  v35 = v0[61];
  v36 = v0[62];
  v33 = v0[60];
  v34 = v0[53];
  v7 = v0[46];
  v9 = v0[41];
  v8 = v0[42];
  v10 = v0[39];
  v11 = v0[37];
  v12 = v0[38];
  v39 = v0[36];
  v40 = v0[40];
  v45 = v0[35];
  v46 = v0[34];
  v41 = v0[33];
  v44 = v0[32];
  v42 = v0[31];
  v31 = v0[28];
  v32 = v0[26];
  v30 = v0[25];

  v6(v7, v9);
  sub_1000037C4(0, &qword_1000CA468, OS_dispatch_queue_ptr);
  v13 = sub_10009E030();
  sub_10009DCC0();
  sub_10009DCE0();
  v43 = *(v12 + 8);
  v43(v10, v11);
  v14 = swift_allocObject();
  *(v14 + 16) = v33;
  *(v14 + 24) = v31;
  *(v14 + 32) = v30;
  *(v14 + 40) = v32;
  *(v14 + 48) = v34;
  *(v14 + 56) = v35;
  *(v14 + 64) = v36;
  *(v14 + 72) = v37;
  *(v14 + 73) = v38;
  v0[6] = sub_10008BF2C;
  v0[7] = v14;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100047570;
  v0[5] = &unk_1000C30E8;
  v15 = _Block_copy(v0 + 2);

  v16 = v31;

  sub_10009DCA0();
  v0[23] = _swiftEmptyArrayStorage;
  sub_10008F3BC(&qword_1000CB5A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003714(&qword_1000CB5A8, &qword_1000A20A0);
  sub_10008BF80();
  sub_10009E1A0();
  sub_10009E010();
  _Block_release(v15);

  (*(v44 + 8))(v41, v42);
  (*(v45 + 8))(v39, v46);
  v43(v40, v11);
  v17 = v0[7];

  v19 = v0[48];
  v18 = v0[49];
  v21 = v0[46];
  v20 = v0[47];
  v23 = v0[44];
  v22 = v0[45];
  v24 = v0[43];
  v26 = v0[39];
  v25 = v0[40];
  v27 = v0[36];
  v47 = v0[33];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100074744()
{
  v1 = v0[64];

  v2 = v0[51];
  v3 = v0[52];

  return _swift_task_switch(sub_1000747A8, v2, v3);
}

void sub_1000747A8()
{
  v91 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 360);
  sub_10009D9D0();
  swift_errorRetain();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 528);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "forciblyShareFolder forcibly unshare subitems error: %@", v6, 0xCu);
    sub_100008728(v7, &qword_1000CA8E0, &qword_10009FE08);
  }

  v9 = *(v0 + 528);
  v10 = *(v0 + 504);
  v11 = *(v0 + 360);
  v12 = *(v0 + 328);
  v13 = *(v0 + 336);

  v10(v11, v12);
  v14 = sub_10009D7A0();
  sub_100005B1C();
  v15 = swift_allocError();
  *v16 = 0xD00000000000004BLL;
  *(v16 + 8) = 0x80000001000A73A0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v14;
  *(v16 + 40) = 3;
  swift_willThrow();

  *(v0 + 176) = v15;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = *(v0 + 352);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  sub_10009D9D0();
  sub_100032380(v18, v19, v20, v21, v22, v23);
  v24 = sub_10009D9E0();
  v25 = sub_10009DFD0();
  sub_1000323E0(v18, v19, v20, v21, v22, v23);
  v26 = os_log_type_enabled(v24, v25);
  v81 = *(v0 + 352);
  v82 = *(v0 + 504);
  v79 = v18;
  v80 = *(v0 + 328);
  v84 = v20;
  v77 = v21;
  v78 = v19;
  v76 = v22;
  v87 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v22;
    v30 = v28;
    v90 = v28;
    *v27 = 136315138;
    *(v0 + 112) = v18;
    *(v0 + 120) = v19;
    *(v0 + 128) = v20;
    *(v0 + 136) = v21;
    *(v0 + 144) = v29;
    *(v0 + 152) = v87;
    sub_100032380(v18, v19, v20, v21, v29, v87);
    v31 = sub_10009DDA0();
    v33 = sub_1000307A4(v31, v32, &v90);

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "Initial error finishing forciblyShareFolder folderPrepError: %s", v27, 0xCu);
    sub_10000670C(v30);

    v23 = v87;
  }

  v82(v81, v80);
  v34 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  v35 = v34;
  if (v23 == 4)
  {

    v36 = v20;
    if (!v20)
    {
      __break(1u);
      return;
    }

    goto LABEL_12;
  }

  if (v23 != 1)
  {
LABEL_13:
    v49 = *(v0 + 400);
    v50 = *(v0 + 344);

    sub_10009D9D0();
    v51 = v35;
    v52 = sub_10009D9E0();
    v53 = sub_10009DFD0();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&_mh_execute_header, v52, v53, "forciblyShareFolder returning mapped error: %@", v54, 0xCu);
      sub_100008728(v55, &qword_1000CA8E0, &qword_10009FE08);
    }

    v57 = *(v0 + 480);
    v59 = *(v0 + 440);
    v58 = *(v0 + 448);
    v60 = *(v0 + 424);
    v61 = *(v0 + 432);
    v62 = *(v0 + 392);
    v64 = *(v0 + 200);
    v63 = *(v0 + 208);
    (*(v0 + 504))(*(v0 + 344), *(v0 + 328));
    v59(v62, 1, 1, v61);
    v64(v62, 0, v51);

    sub_1000323E0(v79, v78, v84, v77, v76, v87);
    sub_100008728(v62, &qword_1000CA250, &qword_10009FDF8);
    v65 = *(v0 + 176);

    v67 = *(v0 + 384);
    v66 = *(v0 + 392);
    v69 = *(v0 + 368);
    v68 = *(v0 + 376);
    v71 = *(v0 + 352);
    v70 = *(v0 + 360);
    v72 = *(v0 + 344);
    v74 = *(v0 + 312);
    v73 = *(v0 + 320);
    v75 = *(v0 + 288);
    v89 = *(v0 + 264);

    v48 = *(v0 + 8);
    goto LABEL_16;
  }

  v36 = v20;
  if (v20)
  {
LABEL_12:
    v35 = v36;
    goto LABEL_13;
  }

  __break(1u);
LABEL_10:
  v37 = *(v0 + 480);
  v38 = *(v0 + 424);
  v40 = *(v0 + 392);
  v39 = *(v0 + 400);
  v42 = *(v0 + 376);
  v41 = *(v0 + 384);
  v44 = *(v0 + 360);
  v43 = *(v0 + 368);
  v46 = *(v0 + 344);
  v45 = *(v0 + 352);
  v83 = *(v0 + 320);
  v85 = *(v0 + 312);
  v86 = *(v0 + 288);
  v88 = *(v0 + 264);

  v47 = *(v0 + 176);

  v48 = *(v0 + 8);
LABEL_16:

  v48();
}

uint64_t sub_100074E88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
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
    if (("SPIHelper_iOS.SPIHelper" & 0x2000000000000000) != 0)
    {
      v25 = ("SPIHelper_iOS.SPIHelper" >> 40) & 0xF0000;
    }

    else
    {
      v25 = 4915200;
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

uint64_t sub_100075330(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  v25 = a8;
  v24 = a7;
  v15 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v24 - v17;
  sub_10009DF20();
  v19 = sub_10009DF40();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  sub_10009DF10();

  v20 = a2;

  v21 = sub_10009DF00();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = &protocol witness table for MainActor;
  *(v22 + 32) = a1;
  *(v22 + 40) = v20;
  *(v22 + 48) = a3;
  *(v22 + 56) = a4;
  *(v22 + 64) = a5;
  *(v22 + 72) = a6;
  *(v22 + 80) = v24;
  *(v22 + 88) = v25;
  *(v22 + 89) = a9;
  sub_10004CDF4(0, 0, v18, &unk_1000A25A0, v22);
}

uint64_t sub_1000754D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 57) = v20;
  *(v8 + 408) = v18;
  *(v8 + 416) = v19;
  *(v8 + 392) = a7;
  *(v8 + 400) = a8;
  *(v8 + 376) = a5;
  *(v8 + 384) = a6;
  *(v8 + 368) = a4;
  v9 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  *(v8 + 424) = swift_task_alloc();
  v10 = *(*(sub_100003714(&qword_1000CA8F0, &qword_1000A09C8) - 8) + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  v11 = sub_10009D9F0();
  *(v8 + 440) = v11;
  v12 = *(v11 - 8);
  *(v8 + 448) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = sub_10009DF10();
  *(v8 + 496) = sub_10009DF00();
  v15 = sub_10009DED0();
  *(v8 + 504) = v15;
  *(v8 + 512) = v14;

  return _swift_task_switch(sub_100075680, v15, v14);
}

uint64_t sub_100075680()
{
  v1 = v0[60];
  sub_10009D9D0();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "starting folder sharing prep", v4, 2u);
  }

  v5 = v0[60];
  v6 = v0[55];
  v7 = v0[56];

  v8 = *(v7 + 8);
  v0[65] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[66] = v9;
  *v9 = v0;
  v9[1] = sub_1000757B8;
  v10 = v0[46];

  return sub_100026B34(1);
}

uint64_t sub_1000757B8()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 512);
  v6 = *(v2 + 504);
  if (v0)
  {
    v7 = sub_10007611C;
  }

  else
  {
    v7 = sub_1000758F4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000758F4()
{
  v1 = v0[59];
  sub_10009D9D0();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "successfully completed folder sharing prep", v4, 2u);
  }

  v5 = v0[65];
  v6 = v0[59];
  v7 = v0[55];
  v8 = v0[56];

  v5(v6, v7);
  v9 = swift_task_alloc();
  v0[68] = v9;
  *v9 = v0;
  v9[1] = sub_100075A48;
  v10 = v0[46];

  return sub_100086420(300, v10);
}

uint64_t sub_100075A48(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v7 = *v1;
  *(*v1 + 552) = a1;

  v4 = *(v2 + 512);
  v5 = *(v2 + 504);

  return _swift_task_switch(sub_100075B70, v5, v4);
}

uint64_t sub_100075B70()
{
  v1 = *(v0 + 552);
  if (v1)
  {
    v2 = *(v0 + 496);
    v3 = *(v0 + 424);
    v5 = *(v0 + 384);
    v4 = *(v0 + 392);

    *(v0 + 360) = v1;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    swift_dynamicCast();
    v6 = *(v0 + 320);
    *(v0 + 64) = *(v0 + 304);
    *(v0 + 80) = v6;
    *(v0 + 89) = *(v0 + 329);
    sub_10008F51C(0xD000000000000013, 0x80000001000A7400);
    v8 = v7;
    sub_10008C1A4(v0 + 64);
    v9 = sub_10009D860();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = v8;
    v5(v3, 0, v8);

    sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
    v12 = *(v0 + 472);
    v11 = *(v0 + 480);
    v14 = *(v0 + 456);
    v13 = *(v0 + 464);
    v16 = *(v0 + 424);
    v15 = *(v0 + 432);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 488);
    *(v0 + 560) = sub_10009DF00();
    v21 = sub_10009DED0();

    return _swift_task_switch(sub_100075D9C, v21, v20);
  }
}

uint64_t sub_100075D9C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 400);

  v3 = *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  if (!v3)
  {
    return sub_10009E250();
  }

  v4 = *(v0 + 408);
  v5 = *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);

  if (v4 == 1)
  {
    v14 = 1;
  }

  else
  {
    v6 = *(v0 + 464);
    sub_10009D9D0();
    v7 = sub_10009D9E0();
    v8 = sub_10009DFD0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "share is public, and you can only add participants to a private share--will still create the share and return sharingURL and share", v9, 2u);
    }

    v10 = *(v0 + 520);
    v11 = *(v0 + 464);
    v12 = *(v0 + 440);
    v13 = *(v0 + 448);

    v10(v11, v12);
    v14 = *(v0 + 408);
  }

  v31 = v14;
  v30 = v4 != 1;
  v16 = *(v0 + 488);
  v17 = *(v0 + 432);
  v18 = *(v0 + 58);
  v19 = *(v0 + 57);
  v20 = *(v0 + 416);
  v22 = *(v0 + 384);
  v21 = *(v0 + 392);
  v23 = *(v0 + 376);
  sub_10009DF20();
  v24 = sub_10009DF40();
  (*(*(v24 - 8) + 56))(v17, 0, 1, v24);

  v25 = v23;

  v26 = sub_10009DF00();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = &protocol witness table for MainActor;
  *(v27 + 32) = v25;
  *(v27 + 40) = v3;
  *(v27 + 48) = v31;
  *(v27 + 56) = v20;
  *(v27 + 64) = v19;
  *(v27 + 65) = v18;
  *(v27 + 66) = v30;
  *(v27 + 72) = v22;
  *(v27 + 80) = v21;
  sub_10004CDF4(0, 0, v17, &unk_1000A25B8, v27);

  v28 = *(v0 + 504);
  v29 = *(v0 + 512);

  return _swift_task_switch(sub_100076070, v28, v29);
}

uint64_t sub_100076070()
{
  v1 = v0[62];

  v3 = v0[59];
  v2 = v0[60];
  v5 = v0[57];
  v4 = v0[58];
  v7 = v0[53];
  v6 = v0[54];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10007611C()
{
  v44 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 496);

  *(v0 + 352) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 536);
    v4 = *(v0 + 456);

    v5 = *(v0 + 128);
    *(v0 + 16) = *(v0 + 112);
    *(v0 + 32) = v5;
    *(v0 + 41) = *(v0 + 137);
    sub_10009D9D0();
    sub_10008C148(v0 + 16, v0 + 160);
    v6 = sub_10009D9E0();
    v7 = sub_10009DFD0();
    sub_10008C1A4(v0 + 16);
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 520);
    v11 = *(v0 + 448);
    v10 = *(v0 + 456);
    v12 = *(v0 + 440);
    if (v8)
    {
      v42 = *(v0 + 520);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v43 = v14;
      *v13 = 136315138;
      v15 = *(v0 + 32);
      *(v0 + 208) = *(v0 + 16);
      *(v0 + 224) = v15;
      *(v0 + 233) = *(v0 + 41);
      sub_10008C148(v0 + 16, v0 + 256);
      v16 = sub_10009DDA0();
      v18 = sub_1000307A4(v16, v17, &v43);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "Initial error finishing forciblyShareFolder: %s", v13, 0xCu);
      sub_10000670C(v14);

      v42(v10, v12);
    }

    else
    {

      v9(v10, v12);
    }

    v28 = *(v0 + 424);
    v30 = *(v0 + 384);
    v29 = *(v0 + 392);
    sub_10008F51C(0xD000000000000013, 0x80000001000A7400);
    v32 = v31;
    v33 = sub_10009D860();
    (*(*(v33 - 8) + 56))(v28, 1, 1, v33);
    v30(v28, 0, v32);

    sub_10008C1A4(v0 + 16);
    sub_100008728(v28, &qword_1000CA250, &qword_10009FDF8);
    v34 = *(v0 + 352);

    v36 = *(v0 + 472);
    v35 = *(v0 + 480);
    v38 = *(v0 + 456);
    v37 = *(v0 + 464);
    v40 = *(v0 + 424);
    v39 = *(v0 + 432);

    v26 = *(v0 + 8);
  }

  else
  {
    v19 = *(v0 + 472);
    v20 = *(v0 + 480);
    v22 = *(v0 + 456);
    v21 = *(v0 + 464);
    v24 = *(v0 + 424);
    v23 = *(v0 + 432);
    v25 = *(v0 + 352);

    v26 = *(v0 + 8);
    v27 = *(v0 + 536);
  }

  return v26();
}

uint64_t sub_100076650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 152) = v18;
  *(v8 + 160) = v19;
  *(v8 + 60) = v17;
  *(v8 + 59) = v16;
  *(v8 + 58) = a8;
  *(v8 + 136) = a6;
  *(v8 + 144) = a7;
  *(v8 + 128) = a5;
  v9 = sub_10009D9F0();
  *(v8 + 168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v8 + 208) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = sub_10009DF10();
  *(v8 + 248) = sub_10009DF00();

  return _swift_task_switch(sub_1000767B8, 0, 0);
}

uint64_t sub_1000767B8()
{
  v1 = *(v0 + 240);
  *(v0 + 256) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100076844, v3, v2);
}

uint64_t sub_100076844()
{
  v1 = v0[32];
  v2 = v0[16];
  v3 = v0[17];

  v0[33] = *(v2 + 16);

  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_100076910;
  v5 = v0[16];
  if (v3 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return sub_100048CBC(v6, v5, 0);
}

uint64_t sub_100076910()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_100076CA8;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_100076A2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100076A2C()
{
  v1 = *(v0 + 240);
  *(v0 + 288) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100076AB8, v3, v2);
}

uint64_t sub_100076AB8()
{
  v1 = v0[36];
  v2 = v0[18];
  v3 = v0[16];

  v0[37] = *(v3 + 16);

  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_100076B8C;
  v5 = v0[16];
  if (v2 == 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return sub_100049714(v6, v5, 0, 1);
}

uint64_t sub_100076B8C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_100077258;
  }

  else
  {
    v5 = *(v2 + 296);

    v4 = sub_100076D34;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100076CA8()
{
  v1 = v0[33];
  v0[46] = v0[35];
  v2 = v0[30];
  v3 = v0[31];

  v5 = sub_10009DED0();

  return _swift_task_switch(sub_1000772E4, v5, v4);
}

uint64_t sub_100076D34()
{
  v1 = *(v0 + 240);
  *(v0 + 320) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100076DC0, v3, v2);
}

uint64_t sub_100076DC0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 58);
  v3 = *(v0 + 128);

  v4 = *(v3 + 16);
  if (v2)
  {
    v5 = &off_1000C1BE0;
  }

  else
  {
    v5 = &off_1000C1C08;
  }

  sub_100047B6C(v5);

  return _swift_task_switch(sub_100076E6C, 0, 0);
}

uint64_t sub_100076E6C()
{
  v1 = *(v0 + 240);
  *(v0 + 328) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100076EF8, v3, v2);
}

uint64_t sub_100076EF8()
{
  v1 = v0[41];
  v2 = v0[16];

  v0[42] = *(v2 + 16);

  return _swift_task_switch(sub_100076F74, 0, 0);
}

uint64_t sub_100076F74()
{
  v1 = *(v0 + 240);
  *(v0 + 344) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100077000, v3, v2);
}

uint64_t sub_100077000()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 59);

  sub_10004A3E0(v5);

  v7 = sub_10009DED0();
  *(v0 + 352) = v7;
  *(v0 + 360) = v6;

  return _swift_task_switch(sub_1000770A4, v7, v6);
}

uint64_t sub_1000770A4()
{
  if (*(v0 + 60))
  {
    v1 = swift_task_alloc();
    *(v0 + 392) = v1;
    *v1 = v0;
    v1[1] = sub_100077F3C;
    v2 = *(v0 + 128);

    return sub_100026F78();
  }

  else
  {
    v4 = *(v0 + 128);
    v5 = *(v4 + 16);

    v6 = sub_10004834C();

    v7 = *(*(v4 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride);
    if (v7 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10009DAF0();

      LOBYTE(v7) = *(v0 + 57);
    }

    v8 = swift_task_alloc();
    *(v0 + 376) = v8;
    *v8 = v0;
    v8[1] = sub_10007785C;
    v9 = *(v0 + 128);

    return sub_100023A48(v6 & 1, v7 & 1);
  }
}

uint64_t sub_100077258()
{
  v1 = v0[37];
  v0[46] = v0[39];
  v2 = v0[30];
  v3 = v0[31];

  v5 = sub_10009DED0();

  return _swift_task_switch(sub_1000772E4, v5, v4);
}

void sub_1000772E4()
{
  v67 = v0;
  v1 = v0;
  *(v0 + 112) = *(v0 + 368);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    sub_10009D9D0();
    sub_100032380(v3, v4, v5, v6, v7, v8);
    v9 = sub_10009D9E0();
    v10 = sub_10009DFF0();
    v63 = v3;
    v64 = v7;
    v65 = v4;
    v11 = v4;
    v12 = v8;
    sub_1000323E0(v3, v11, v5, v6, v7, v8);
    v13 = os_log_type_enabled(v9, v10);
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v59 = v14;
    v60 = *(v0 + 192);
    v62 = v5;
    v58 = v6;
    if (v13)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v5;
      v19 = v17;
      v66 = v17;
      *v16 = 136315138;
      *(v1 + 64) = v63;
      *(v1 + 72) = v65;
      *(v1 + 80) = v18;
      *(v1 + 88) = v6;
      *(v1 + 96) = v7;
      *(v1 + 104) = v8;
      sub_100032380(v63, v65, v18, v6, v7, v8);
      v20 = sub_10009DDA0();
      v22 = sub_1000307A4(v20, v21, &v66);
      v12 = v8;

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Initial error finishing completeForciblyShareFolder: %s", v16, 0xCu);
      sub_10000670C(v19);
    }

    v23 = *(v15 + 8);
    v23(v60, v59);
    v24 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v25 = v24;
    v61 = v23;
    if (v12 == 1 || v12 == 3)
    {

      v26 = v62;
      if (v62)
      {
        v37 = *(v1 + 248);

        v25 = v62;

LABEL_14:
        v39 = *(v1 + 184);
        sub_10009D9D0();
        v40 = v25;
        v41 = sub_10009D9E0();
        v42 = sub_10009DFD0();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          *(v43 + 4) = v40;
          *v44 = v40;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v41, v42, "completeForciblyShareFolder returning mapped error: %@", v43, 0xCu);
          sub_100008728(v44, &qword_1000CA8E0, &qword_10009FE08);
        }

        v46 = *(v1 + 224);
        v47 = *(v1 + 160);
        v48 = *(v1 + 152);
        v49 = *(v1 + 176) + 8;
        v61(*(v1 + 184), *(v1 + 168));
        v50 = sub_10009D860();
        (*(*(v50 - 8) + 56))(v46, 1, 1, v50);
        v48(v46, 0, v40);

        sub_1000323E0(v63, v65, v26, v58, v64, v12);
        sub_100008728(v46, &qword_1000CA250, &qword_10009FDF8);
        v51 = *(v1 + 112);

        v53 = *(v1 + 224);
        v52 = *(v1 + 232);
        v54 = *(v1 + 216);
        v56 = *(v1 + 192);
        v55 = *(v1 + 200);
        v57 = *(v1 + 184);

        v36 = *(v1 + 8);
        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      v26 = v62;
      if (v12 != 4)
      {
        v38 = *(v1 + 248);
        goto LABEL_13;
      }

      if (v62)
      {
        v27 = *(v1 + 248);
        v25 = v62;
LABEL_13:

        goto LABEL_14;
      }
    }

    __break(1u);
    return;
  }

  v28 = *(v0 + 248);
  v30 = *(v0 + 224);
  v29 = *(v1 + 232);
  v31 = *(v1 + 216);
  v33 = *(v1 + 192);
  v32 = *(v1 + 200);
  v34 = *(v1 + 184);

  v35 = *(v1 + 112);

  v36 = *(v1 + 8);
LABEL_17:

  v36();
}

uint64_t sub_10007785C()
{
  v2 = *(*v1 + 376);
  v3 = *v1;
  v3[48] = v0;

  if (v0)
  {
    v4 = v3[44];
    v5 = v3[45];

    return _swift_task_switch(sub_1000779C4, v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[49] = v6;
    *v6 = v3;
    v6[1] = sub_100077F3C;
    v7 = v3[16];

    return sub_100026F78();
  }
}

void sub_1000779C4()
{
  v67 = v0;
  v1 = v0;
  *(v0 + 112) = *(v0 + 384);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    sub_10009D9D0();
    sub_100032380(v3, v4, v5, v6, v7, v8);
    v9 = sub_10009D9E0();
    v10 = sub_10009DFF0();
    v63 = v3;
    v64 = v7;
    v65 = v4;
    v11 = v4;
    v12 = v8;
    sub_1000323E0(v3, v11, v5, v6, v7, v8);
    v13 = os_log_type_enabled(v9, v10);
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v59 = v14;
    v60 = *(v0 + 192);
    v62 = v5;
    v58 = v6;
    if (v13)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v5;
      v19 = v17;
      v66 = v17;
      *v16 = 136315138;
      *(v1 + 64) = v63;
      *(v1 + 72) = v65;
      *(v1 + 80) = v18;
      *(v1 + 88) = v6;
      *(v1 + 96) = v7;
      *(v1 + 104) = v8;
      sub_100032380(v63, v65, v18, v6, v7, v8);
      v20 = sub_10009DDA0();
      v22 = sub_1000307A4(v20, v21, &v66);
      v12 = v8;

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Initial error finishing completeForciblyShareFolder: %s", v16, 0xCu);
      sub_10000670C(v19);
    }

    v23 = *(v15 + 8);
    v23(v60, v59);
    v24 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v25 = v24;
    v61 = v23;
    if (v12 == 1 || v12 == 3)
    {

      v26 = v62;
      if (v62)
      {
        v37 = *(v1 + 248);

        v25 = v62;

LABEL_14:
        v39 = *(v1 + 184);
        sub_10009D9D0();
        v40 = v25;
        v41 = sub_10009D9E0();
        v42 = sub_10009DFD0();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          *(v43 + 4) = v40;
          *v44 = v40;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v41, v42, "completeForciblyShareFolder returning mapped error: %@", v43, 0xCu);
          sub_100008728(v44, &qword_1000CA8E0, &qword_10009FE08);
        }

        v46 = *(v1 + 224);
        v47 = *(v1 + 160);
        v48 = *(v1 + 152);
        v49 = *(v1 + 176) + 8;
        v61(*(v1 + 184), *(v1 + 168));
        v50 = sub_10009D860();
        (*(*(v50 - 8) + 56))(v46, 1, 1, v50);
        v48(v46, 0, v40);

        sub_1000323E0(v63, v65, v26, v58, v64, v12);
        sub_100008728(v46, &qword_1000CA250, &qword_10009FDF8);
        v51 = *(v1 + 112);

        v53 = *(v1 + 224);
        v52 = *(v1 + 232);
        v54 = *(v1 + 216);
        v56 = *(v1 + 192);
        v55 = *(v1 + 200);
        v57 = *(v1 + 184);

        v36 = *(v1 + 8);
        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      v26 = v62;
      if (v12 != 4)
      {
        v38 = *(v1 + 248);
        goto LABEL_13;
      }

      if (v62)
      {
        v27 = *(v1 + 248);
        v25 = v62;
LABEL_13:

        goto LABEL_14;
      }
    }

    __break(1u);
    return;
  }

  v28 = *(v0 + 248);
  v30 = *(v0 + 224);
  v29 = *(v1 + 232);
  v31 = *(v1 + 216);
  v33 = *(v1 + 192);
  v32 = *(v1 + 200);
  v34 = *(v1 + 184);

  v35 = *(v1 + 112);

  v36 = *(v1 + 8);
LABEL_17:

  v36();
}

uint64_t sub_100077F3C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = sub_1000782CC;
  }

  else
  {
    v7 = sub_100078078;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100078078()
{
  v1 = v0[29];
  v2 = v0[16];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_100078164;
  v4 = v0[29];
  v5 = v0[16];

  return sub_100028ADC(v4);
}

uint64_t sub_100078164()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 416) = v0;

  sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
  v6 = *(v2 + 360);
  v7 = *(v2 + 352);
  if (v0)
  {
    v8 = sub_100078BA4;
  }

  else
  {
    v8 = sub_100078844;
  }

  return _swift_task_switch(v8, v7, v6);
}

void sub_1000782CC()
{
  v67 = v0;
  v1 = v0;
  *(v0 + 112) = *(v0 + 400);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    sub_10009D9D0();
    sub_100032380(v3, v4, v5, v6, v7, v8);
    v9 = sub_10009D9E0();
    v10 = sub_10009DFF0();
    v63 = v3;
    v64 = v7;
    v65 = v4;
    v11 = v4;
    v12 = v8;
    sub_1000323E0(v3, v11, v5, v6, v7, v8);
    v13 = os_log_type_enabled(v9, v10);
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v59 = v14;
    v60 = *(v0 + 192);
    v62 = v5;
    v58 = v6;
    if (v13)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v5;
      v19 = v17;
      v66 = v17;
      *v16 = 136315138;
      *(v1 + 64) = v63;
      *(v1 + 72) = v65;
      *(v1 + 80) = v18;
      *(v1 + 88) = v6;
      *(v1 + 96) = v7;
      *(v1 + 104) = v8;
      sub_100032380(v63, v65, v18, v6, v7, v8);
      v20 = sub_10009DDA0();
      v22 = sub_1000307A4(v20, v21, &v66);
      v12 = v8;

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Initial error finishing completeForciblyShareFolder: %s", v16, 0xCu);
      sub_10000670C(v19);
    }

    v23 = *(v15 + 8);
    v23(v60, v59);
    v24 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v25 = v24;
    v61 = v23;
    if (v12 == 1 || v12 == 3)
    {

      v26 = v62;
      if (v62)
      {
        v37 = *(v1 + 248);

        v25 = v62;

LABEL_14:
        v39 = *(v1 + 184);
        sub_10009D9D0();
        v40 = v25;
        v41 = sub_10009D9E0();
        v42 = sub_10009DFD0();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          *(v43 + 4) = v40;
          *v44 = v40;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v41, v42, "completeForciblyShareFolder returning mapped error: %@", v43, 0xCu);
          sub_100008728(v44, &qword_1000CA8E0, &qword_10009FE08);
        }

        v46 = *(v1 + 224);
        v47 = *(v1 + 160);
        v48 = *(v1 + 152);
        v49 = *(v1 + 176) + 8;
        v61(*(v1 + 184), *(v1 + 168));
        v50 = sub_10009D860();
        (*(*(v50 - 8) + 56))(v46, 1, 1, v50);
        v48(v46, 0, v40);

        sub_1000323E0(v63, v65, v26, v58, v64, v12);
        sub_100008728(v46, &qword_1000CA250, &qword_10009FDF8);
        v51 = *(v1 + 112);

        v53 = *(v1 + 224);
        v52 = *(v1 + 232);
        v54 = *(v1 + 216);
        v56 = *(v1 + 192);
        v55 = *(v1 + 200);
        v57 = *(v1 + 184);

        v36 = *(v1 + 8);
        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      v26 = v62;
      if (v12 != 4)
      {
        v38 = *(v1 + 248);
        goto LABEL_13;
      }

      if (v62)
      {
        v27 = *(v1 + 248);
        v25 = v62;
LABEL_13:

        goto LABEL_14;
      }
    }

    __break(1u);
    return;
  }

  v28 = *(v0 + 248);
  v30 = *(v0 + 224);
  v29 = *(v1 + 232);
  v31 = *(v1 + 216);
  v33 = *(v1 + 192);
  v32 = *(v1 + 200);
  v34 = *(v1 + 184);

  v35 = *(v1 + 112);

  v36 = *(v1 + 8);
LABEL_17:

  v36();
}

uint64_t sub_100078844()
{
  v38 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  v3 = *(v0 + 128);

  sub_10009D9D0();

  v4 = sub_10009D9E0();
  v5 = sub_10009DFF0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 224);
    v36 = *(v0 + 200);
    v7 = *(v0 + 176);
    v34 = *(v0 + 208);
    v35 = *(v0 + 168);
    v8 = *(v0 + 128);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v12 = sub_10009DDA0();
    v14 = sub_1000307A4(v12, v13, &v37);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished forciblyShareFolder shareURL: %s", v9, 0xCu);
    sub_10000670C(v10);

    (*(v7 + 8))(v36, v35);
  }

  else
  {
    v15 = *(v0 + 200);
    v16 = *(v0 + 168);
    v17 = *(v0 + 176);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 216);
  v19 = *(v0 + 128);
  v20 = *(v19 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v21 = *(v19 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v22 = *(v0 + 120);
  if (v22)
  {
    v23 = [*(v0 + 120) _copyWithoutPersonalInfo];
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v0 + 216);
  v25 = *(v0 + 160);
  (*(v0 + 152))(v24, v23, 0);

  sub_100008728(v24, &qword_1000CA250, &qword_10009FDF8);
  v27 = *(v0 + 224);
  v26 = *(v0 + 232);
  v28 = *(v0 + 216);
  v30 = *(v0 + 192);
  v29 = *(v0 + 200);
  v31 = *(v0 + 184);

  v32 = *(v0 + 8);

  return v32();
}

void sub_100078BA4()
{
  v67 = v0;
  v1 = v0;
  *(v0 + 112) = *(v0 + 416);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    sub_10009D9D0();
    sub_100032380(v3, v4, v5, v6, v7, v8);
    v9 = sub_10009D9E0();
    v10 = sub_10009DFF0();
    v63 = v3;
    v64 = v7;
    v65 = v4;
    v11 = v4;
    v12 = v8;
    sub_1000323E0(v3, v11, v5, v6, v7, v8);
    v13 = os_log_type_enabled(v9, v10);
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v59 = v14;
    v60 = *(v0 + 192);
    v62 = v5;
    v58 = v6;
    if (v13)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v5;
      v19 = v17;
      v66 = v17;
      *v16 = 136315138;
      *(v1 + 64) = v63;
      *(v1 + 72) = v65;
      *(v1 + 80) = v18;
      *(v1 + 88) = v6;
      *(v1 + 96) = v7;
      *(v1 + 104) = v8;
      sub_100032380(v63, v65, v18, v6, v7, v8);
      v20 = sub_10009DDA0();
      v22 = sub_1000307A4(v20, v21, &v66);
      v12 = v8;

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Initial error finishing completeForciblyShareFolder: %s", v16, 0xCu);
      sub_10000670C(v19);
    }

    v23 = *(v15 + 8);
    v23(v60, v59);
    v24 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v25 = v24;
    v61 = v23;
    if (v12 == 1 || v12 == 3)
    {

      v26 = v62;
      if (v62)
      {
        v37 = *(v1 + 248);

        v25 = v62;

LABEL_14:
        v39 = *(v1 + 184);
        sub_10009D9D0();
        v40 = v25;
        v41 = sub_10009D9E0();
        v42 = sub_10009DFD0();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          *(v43 + 4) = v40;
          *v44 = v40;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v41, v42, "completeForciblyShareFolder returning mapped error: %@", v43, 0xCu);
          sub_100008728(v44, &qword_1000CA8E0, &qword_10009FE08);
        }

        v46 = *(v1 + 224);
        v47 = *(v1 + 160);
        v48 = *(v1 + 152);
        v49 = *(v1 + 176) + 8;
        v61(*(v1 + 184), *(v1 + 168));
        v50 = sub_10009D860();
        (*(*(v50 - 8) + 56))(v46, 1, 1, v50);
        v48(v46, 0, v40);

        sub_1000323E0(v63, v65, v26, v58, v64, v12);
        sub_100008728(v46, &qword_1000CA250, &qword_10009FDF8);
        v51 = *(v1 + 112);

        v53 = *(v1 + 224);
        v52 = *(v1 + 232);
        v54 = *(v1 + 216);
        v56 = *(v1 + 192);
        v55 = *(v1 + 200);
        v57 = *(v1 + 184);

        v36 = *(v1 + 8);
        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      v26 = v62;
      if (v12 != 4)
      {
        v38 = *(v1 + 248);
        goto LABEL_13;
      }

      if (v62)
      {
        v27 = *(v1 + 248);
        v25 = v62;
LABEL_13:

        goto LABEL_14;
      }
    }

    __break(1u);
    return;
  }

  v28 = *(v0 + 248);
  v30 = *(v0 + 224);
  v29 = *(v1 + 232);
  v31 = *(v1 + 216);
  v33 = *(v1 + 192);
  v32 = *(v1 + 200);
  v34 = *(v1 + 184);

  v35 = *(v1 + 112);

  v36 = *(v1 + 8);
LABEL_17:

  v36();
}

id sub_10007914C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000791BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079214(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 24);
  v20 = *(v1 + 16);
  v11 = (v1 + v6);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v7);
  v15 = *(v1 + v8);
  v16 = *(v1 + v9);
  v17 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1000093DC;

  return sub_1000735CC(a1, v20, v10, v1 + v5, v12, v13, v14, v15);
}

uint64_t sub_100079390(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000067C8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for NSFileProviderServiceName(0);
    sub_1000037C4(0, &qword_1000CB7A8, NSFileProviderService_ptr);
    sub_10008F3BC(&qword_1000CA030, type metadata accessor for NSFileProviderServiceName);
    **(*(v4 + 64) + 40) = sub_10009DD00();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1000794CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v5;
  return result;
}

uint64_t sub_10007954C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_10009DB00();
}

uint64_t sub_1000795D8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

uint64_t sub_100079650(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_100008658(a1, &v13 - v9, &qword_1000CA250, &qword_10009FDF8);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008658(v10, v8, &qword_1000CA250, &qword_10009FDF8);

  sub_10009DB00();
  return sub_100008728(v10, &qword_1000CA250, &qword_10009FDF8);
}

double sub_100079780@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_100079808(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_1000798A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v5;
  return result;
}

uint64_t sub_100079924(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_1000799A0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100097E40(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100079A94(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    sub_10009D7B0();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100079B58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v29 = a3;
  v7 = sub_10009D9F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D9D0();

  v12 = sub_10009D9E0();
  v13 = sub_10009DFF0();

  if (os_log_type_enabled(v12, v13))
  {
    v27 = a1;
    v28 = v7;
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v14 = 136315394;
    v15 = sub_10009DE60();
    sub_1000300B8(v15, v16, v29, a4);
    v18 = v17;

    if (v18)
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    else
    {
      sub_10009DE70();
      v22 = sub_10009DDD0();
      v20 = v23;

      v19 = v22;
    }

    v24 = sub_1000307A4(v19, v20, &v30);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1000307A4(v27, a2, &v30);
    _os_log_impl(&_mh_execute_header, v12, v13, "Begin %s, %s", v14, 0x16u);
    swift_arrayDestroy();

    return (*(v8 + 8))(v11, v28);
  }

  else
  {

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_100079DD8(uint64_t a1)
{
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  v38 = type metadata accessor for SPIAnalyticsEvent();
  v39 = &off_1000C2CF0;
  v10 = sub_10008D654(v37);
  sub_10003BF8C(a1, v10);
  sub_10009D9D0();
  sub_10008D5F0(v37, aBlock);
  v11 = sub_10009D9E0();
  v12 = sub_10009DFF0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v36[0] = v14;
    *v13 = 136315394;
    sub_1000067C8(aBlock, v33);
    v15 = sub_10003BB34();
    v17 = v16;
    sub_10000670C(aBlock);
    v18 = sub_1000307A4(v15, v17, v36);

    *(v13 + 4) = v18;
    *(v13 + 12) = 1024;
    *(v13 + 14) = 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "Analytics event is: %s, will be built and sent: %{BOOL}d", v13, 0x12u);
    sub_10000670C(v14);

    v19 = *(v3 + 8);
    v19(v9, v2);
  }

  else
  {

    v19 = *(v3 + 8);
    v19(v9, v2);
    sub_10000670C(aBlock);
  }

  sub_1000067C8(v37, v38);
  sub_10003BB34();
  v20 = sub_10009DD50();

  sub_10008D5F0(v37, v36);
  v21 = swift_allocObject();
  sub_10008D5D8(v36, v21 + 16);
  v34 = sub_10008D6F0;
  v35 = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004D0A0;
  v33 = &unk_1000C33B8;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);

  sub_10009D9D0();
  sub_10008D5F0(v37, aBlock);
  v23 = sub_10009D9E0();
  v24 = sub_10009DFF0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v36[0] = v26;
    *v25 = 136315138;
    sub_1000067C8(aBlock, v33);
    v27 = sub_10003BB34();
    v29 = v28;
    sub_10000670C(aBlock);
    v30 = sub_1000307A4(v27, v29, v36);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Analytics event: %s sent lazily", v25, 0xCu);
    sub_10000670C(v26);

    v19(v7, v2);
  }

  else
  {

    v19(v7, v2);
    sub_10000670C(aBlock);
  }

  return sub_10000670C(v37);
}

uint64_t sub_10007A254(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_10009D860();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = sub_10009D9F0();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_10007A37C, 0, 0);
}

uint64_t sub_10007A37C()
{
  v1 = v0[20];
  v2 = [objc_opt_self() defaultManager];
  v0[28] = v2;
  sub_10009D800(v3);
  v5 = v4;
  v0[29] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10007A4D8;
  v6 = swift_continuation_init();
  v0[17] = sub_100003714(&qword_1000CB7A0, &qword_1000A29F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100079390;
  v0[13] = &unk_1000C3DE0;
  v0[14] = v6;
  [v2 getFileProviderServicesForItemAtURL:v5 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10007A4D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_10007A914;
  }

  else
  {
    v3 = sub_10007A5E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007A5E8()
{
  v33 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 144);

  sub_10009D9D0();

  v4 = sub_10009D9E0();
  v5 = sub_10009DFF0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 216);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  if (v6)
  {
    v31 = *(v0 + 216);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315138;
    type metadata accessor for NSFileProviderServiceName(0);
    sub_1000037C4(0, &qword_1000CB7A8, NSFileProviderService_ptr);
    sub_10008F3BC(&qword_1000CA030, type metadata accessor for NSFileProviderServiceName);
    v12 = sub_10009DD10();
    v14 = sub_1000307A4(v12, v13, &v32);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "services returned: %s", v10, 0xCu);
    sub_10000670C(v11);

    (*(v8 + 8))(v31, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v15 = -1;
  v16 = -1 << *(v3 + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & *(v3 + 64);
  v18 = (63 - v16) >> 6;

  v20 = 0;
  while (v17)
  {
LABEL_12:
    v22 = *(*(v3 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v17)))));
    if (sub_10009DD90() == 0xD00000000000001DLL && 0x80000001000A8180 == v23)
    {

LABEL_20:
      v26 = 1;
LABEL_21:

      v28 = *(v0 + 208);
      v27 = *(v0 + 216);
      v29 = *(v0 + 184);

      v30 = *(v0 + 8);

      return v30(v26);
    }

    v17 &= v17 - 1;
    v25 = sub_10009E2E0();

    if (v25)
    {
      goto LABEL_20;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      v26 = 0;
      goto LABEL_21;
    }

    v17 = *(v3 + 64 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007A914()
{
  v41 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  swift_willThrow();

  sub_10009D9D0();
  (*(v6 + 16))(v5, v8, v7);
  swift_errorRetain();
  v9 = sub_10009D9E0();
  v10 = sub_10009DFD0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[30];
    v37 = v0[25];
    v12 = v0[23];
    v38 = v0[24];
    v39 = v0[26];
    v14 = v0[21];
    v13 = v0[22];
    v15 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v15 = 136315394;
    sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
    v16 = sub_10009E2C0();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_1000307A4(v16, v18, v40);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v0[19] = v11;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v20 = sub_10009DDA0();
    v22 = sub_1000307A4(v20, v21, v40);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to fetch FP services for %s: %s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v37 + 8))(v39, v38);
  }

  else
  {
    v24 = v0[25];
    v23 = v0[26];
    v26 = v0[23];
    v25 = v0[24];
    v27 = v0[21];
    v28 = v0[22];

    (*(v28 + 8))(v26, v27);
    (*(v24 + 8))(v23, v25);
  }

  v29 = v0[30];
  v31 = v0[26];
  v30 = v0[27];
  v32 = v0[23];
  v33 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v34 = 0xD000000000000011;
  *(v34 + 8) = 0x80000001000A8160;
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 16) = v33;
  *(v34 + 40) = 9;
  swift_willThrow();

  v35 = v0[1];

  return v35(0);
}

uint64_t sub_10007AC74(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_10009D6F0();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10007AD40, 0, 0);
}

uint64_t sub_10007AD40()
{
  v1 = v0[16];
  v2 = v0[12];
  sub_100003714(&qword_1000CA498, &qword_1000A04B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = NSURLIsPackageKey;
  v4 = NSURLIsPackageKey;
  sub_1000315FC(inited);
  swift_setDeallocating();
  sub_1000462B8(inited + 32);
  sub_10009D7C0();
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];

  v8 = sub_10009D6E0();
  v9 = *(v7 + 8);
  v9(v5, v6);
  if (v8 != 2 && (v8 & 1) != 0)
  {
    goto LABEL_4;
  }

  v10 = v0[15];
  v11 = v0[12];
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_10009FCE0;
  *(v12 + 32) = NSURLIsDirectoryKey;
  v13 = NSURLIsDirectoryKey;
  sub_1000315FC(v12);
  swift_setDeallocating();
  sub_1000462B8(v12 + 32);
  sub_10009D7C0();
  v18 = v0[15];
  v19 = v0[13];

  v20 = sub_10009D690();
  v9(v18, v19);
  if (v20 == 2 || (v20 & 1) == 0)
  {
LABEL_4:
    v15 = v0[15];
    v14 = v0[16];

    v16 = v0[1];

    return v16(0);
  }

  else
  {
    v21 = v0[12];
    v22 = swift_task_alloc();
    v0[17] = v22;
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    v23 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v24 = swift_task_alloc();
    v0[18] = v24;
    *v24 = v0;
    v24[1] = sub_10007B01C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, 0, 0, 0xD00000000000002ALL, 0x80000001000A5300, sub_10008F518, v22, &type metadata for () + 8);
  }
}

uint64_t sub_10007B01C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_10007B1A4;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_10007B138;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10007B138()
{
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_10007B1A4()
{
  v1 = v0[19];
  v2 = v0[17];

  v4 = v0[15];
  v3 = v0[16];

  v5 = v0[1];

  return v5(1);
}

uint64_t sub_10007B224(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, unint64_t a8, _UNKNOWN **a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v151 = a8;
  v147 = a7;
  v155 = a3;
  v18 = *(a5 + 8);
  v153 = *a5;
  v163 = v18;
  v19 = *(a5 + 24);
  v159 = *(a5 + 16);
  v160 = v19;
  v164 = *(a5 + 32);
  v158 = *(a5 + 40);
  v162 = sub_10009D9F0();
  v161 = *(v162 - 8);
  v20 = *(v161 + 64);
  v21 = __chkstk_darwin(v162);
  v23 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v152 = &v141 - v25;
  v26 = __chkstk_darwin(v24);
  v148 = &v141 - v27;
  v28 = __chkstk_darwin(v26);
  v146 = &v141 - v29;
  __chkstk_darwin(v28);
  v31 = &v141 - v30;
  v32 = sub_10009DE60();
  sub_1000300B8(v32, v33, a1, a2);
  v35 = v34;

  v156 = a2;
  v149 = a1;
  if (v35)
  {
    v154 = 0;
    v36 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v154 = sub_10009DDD0();
    v36 = v37;
  }

  v150 = a9;
  v38 = a12;
  v157 = v36;
  v39 = v153;
  if (a6)
  {
    if (a4)
    {
      v40 = a6;
      v41 = a4;
    }

    else
    {
      v60 = a6;
      v61 = [v60 description];
      v155 = sub_10009DD90();
      v41 = v62;

      v38 = a12;
    }

    v63 = [a6 code];
    v64 = 0xED0000726F727265;
    v65 = 0x206C6172656E6567;
    if (v63 == 12)
    {
      v66 = 12;
    }

    else
    {
      v66 = 11;
    }

    if (v63 == 12)
    {
      v65 = 0xD000000000000018;
      v64 = 0x80000001000A77D0;
    }

    if (v63 == 10)
    {
      v66 = 13;
    }

    v158 = v66;
    if (v63 == 10)
    {
      v67 = 0xD000000000000019;
    }

    else
    {
      v67 = v65;
    }

    if (v63 == 10)
    {
      v68 = 0x80000001000A77B0;
    }

    else
    {
      v68 = v64;
    }

    swift_bridgeObjectRetain_n();
    v69 = v156;
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v70 = a6;

    v71 = sub_10009D9E0();
    v72 = sub_10009DFD0();

    v73 = os_log_type_enabled(v71, v72);
    v164 = v41;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v145 = v38;
      v75 = v74;
      v163 = swift_slowAlloc();
      *&v165 = v163;
      *v75 = 136315906;
      *(v75 + 4) = sub_1000307A4(v154, v36, &v165);
      *(v75 + 12) = 2080;
      v76 = sub_1000307A4(v155, v41, &v165);

      *(v75 + 14) = v76;
      *(v75 + 22) = 2080;
      v77 = sub_1000307A4(v67, v68, &v165);

      *(v75 + 24) = v77;
      *(v75 + 32) = 2080;
      v78 = v70;
      v79 = [v78 description];
      v80 = sub_10009DD90();
      v82 = v81;

      v83 = sub_1000307A4(v80, v82, &v165);

      *(v75 + 34) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "Error in %s %s, reporting as %s, NSError: %s", v75, 0x2Au);
      swift_arrayDestroy();

      v38 = v145;

      (*(v161 + 8))(v31, v162);
      v54 = 0;
      v39 = v149;
      v163 = v156;
    }

    else
    {

      (*(v161 + 8))(v31, v162);
      v54 = 0;
      v39 = v149;
      v163 = v69;
    }

    v160 = v155;
  }

  else
  {
    v42 = *(a5 + 40);
    if (v42 == 255)
    {
      v54 = v159;
    }

    else
    {
      v43 = v23;
      v145 = a12;
      v44 = *(a5 + 16);
      v175 = *a5;
      v176 = v44;
      v177 = *(a5 + 32);
      v45 = v160;
      sub_100032380(v153, v163, v159, v160, v164, v158);
      sub_10009D9D0();

      v46 = v157;

      sub_100008658(a5, &v165, &qword_1000CB088, &unk_1000A18F0);
      v144 = v43;
      v47 = sub_10009D9E0();
      v48 = sub_10009DFD0();

      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      v143 = v48;
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v173 = v142;
        *v49 = 136315650;
        *(v49 + 4) = sub_1000307A4(v154, v46, &v173);
        *(v49 + 12) = 2080;
        if (a4)
        {
          v50 = v155;
        }

        else
        {
          v50 = 0;
        }

        if (a4)
        {
          v51 = a4;
        }

        else
        {
          v51 = 0xE000000000000000;
        }

        v52 = sub_1000307A4(v50, v51, &v173);
        v39 = v153;
        v53 = v164;

        *(v49 + 14) = v52;
        *(v49 + 22) = 2080;
        v165 = v175;
        v166 = v176;
        v167 = v177;
        v168 = v42;
        v54 = v159;
        v55 = v158;
        sub_100032380(v39, v163, v159, v45, v53, v158);
        v56 = sub_10009DDA0();
        v58 = sub_1000307A4(v56, v57, &v173);

        *(v49 + 24) = v58;
        _os_log_impl(&_mh_execute_header, v47, v143, "SharingError in %s %s, error: %s", v49, 0x20u);
        swift_arrayDestroy();

        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
        (*(v161 + 8))(v144, v162);
        v59 = v163;
        v38 = v145;
      }

      else
      {
        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

        (*(v161 + 8))(v144, v162);
        v54 = v159;
        v59 = v163;
        v38 = v145;
        v53 = v164;
        v55 = v158;
      }

      sub_100032380(v39, v59, v54, v45, v53, v55);
      sub_100032380(v39, v59, v54, v45, v53, v55);
    }
  }

  v84 = a11;
  v85 = v151 >> 24;
  v86 = HIDWORD(v151);
  if (!v150)
  {
    LODWORD(v86) = 0;
  }

  LODWORD(v153) = v86;
  if (!v150)
  {
    LODWORD(v85) = 0;
  }

  LODWORD(v151) = v85;
  if (v150)
  {
    v87 = v150;
  }

  else
  {
    v87 = &off_1000C19D8;
  }

  *(&v166 + 1) = type metadata accessor for SPIAnalyticsEvent();
  v167 = &off_1000C2CF0;
  v88 = sub_10008D654(&v165);
  if (v38)
  {
    v89 = *(a13 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
    v90 = *(a13 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName + 8);

    v91 = v39;
    v92 = v54;
    v93 = v38;
    v94 = v89;
    v84 = a11;
    v38 = sub_100045D24(v93, v94, v90);
    v96 = v95;

    v54 = v92;
    v39 = v91;
  }

  else
  {

    v96 = 0xE000000000000000;
  }

  v155 = 0x73736563637553;
  v97 = *(v84 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v98 = *(v84 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v88 = v38;
  v88[1] = v96;
  *(v88 + 16) = v151;
  *(v88 + 17) = v153;
  v88[3] = v87;
  v88[4] = v97;
  v88[5] = v98;
  v88[6] = v39;
  v88[7] = v163;
  v88[8] = v54;
  v99 = v164;
  v88[9] = v160;
  v88[10] = v99;
  v100 = v158;
  *(v88 + 88) = v158;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v165, &v171, &qword_1000CB798, &qword_1000A27F0);
  v159 = v54;
  if (v172)
  {
    sub_10008D5D8(&v171, &v173);

    v101 = v146;
    sub_10009D9D0();
    sub_10008D5F0(&v173, &v171);
    v102 = v157;

    v103 = sub_10009D9E0();
    v104 = sub_10009DFF0();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v169[0] = swift_slowAlloc();
      *v105 = 136315394;
      *(v105 + 4) = sub_1000307A4(v154, v102, v169);
      *(v105 + 12) = 2080;
      sub_1000067C8(&v171, v172);
      v106 = sub_10003BB34();
      v108 = v107;
      sub_10000670C(&v171);
      v109 = sub_1000307A4(v106, v108, v169);

      *(v105 + 14) = v109;
      _os_log_impl(&_mh_execute_header, v103, v104, "Finishing %s, sending event %s", v105, 0x16u);
      swift_arrayDestroy();

      v110 = *(v161 + 8);
      v110(v101, v162);
    }

    else
    {

      v110 = *(v161 + 8);
      v110(v101, v162);
      sub_10000670C(&v171);
    }

    v113 = v156;
    v114 = sub_1000067C8(&v173, v174);
    sub_100079DD8(v114);
    v115 = v148;
    sub_10009D9D0();
    sub_10008D5F0(&v173, &v171);

    v116 = v147;
    v117 = sub_10009D9E0();
    v118 = sub_10009DFF0();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v153 = v110;
      v120 = v119;
      v170 = swift_slowAlloc();
      *v120 = 136315650;
      v121 = *&v116[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v169[0] = *&v116[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v169[1] = v121;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v122 = sub_10009DDA0();
      v124 = sub_1000307A4(v122, v123, &v170);

      *(v120 + 4) = v124;
      *(v120 + 12) = 2080;
      sub_1000067C8(&v171, v172);
      sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v125 = sub_10009DD10();
      v126 = v39;
      v128 = v127;

      sub_10000670C(&v171);
      v129 = sub_1000307A4(v125, v128, &v170);
      v39 = v126;
      v130 = v164;

      *(v120 + 14) = v129;
      *(v120 + 22) = 2080;
      *(v120 + 24) = sub_1000307A4(v149, v113, &v170);
      _os_log_impl(&_mh_execute_header, v117, v118, "Requester: %s, event detail is: %s\n%s", v120, 0x20u);
      swift_arrayDestroy();
      v99 = v130;

      v153(v115, v162);
    }

    else
    {

      v110(v115, v162);
      sub_10000670C(&v171);
    }

    v112 = v152;
    v54 = v159;
    sub_1000067C8(&v173, v174);
    v131 = sub_10003CCE4();
    v132 = 0x7272652068746957;
    if (!v131)
    {
      v132 = 0x73736563637553;
    }

    v155 = v132;
    if (v131)
    {
      v111 = 0xEA0000000000726FLL;
    }

    else
    {
      v111 = 0xE700000000000000;
    }

    sub_10000670C(&v173);
    v100 = v158;
  }

  else
  {

    sub_100008728(&v171, &qword_1000CB798, &qword_1000A27F0);
    v111 = 0xE700000000000000;
    v112 = v152;
  }

  sub_10009D9D0();
  v133 = v157;

  v134 = sub_10009D9E0();
  v135 = sub_10009DFF0();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v164 = v99;
    v173 = v137;
    *v136 = 136315394;
    v138 = sub_1000307A4(v154, v133, &v173);

    *(v136 + 4) = v138;
    *(v136 + 12) = 2080;
    v139 = sub_1000307A4(v155, v111, &v173);

    *(v136 + 14) = v139;
    _os_log_impl(&_mh_execute_header, v134, v135, "Finished %s: %s.", v136, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v39, v163, v159, v160, v164, v100);
  }

  else
  {
    sub_10003C04C(v39, v163, v54, v160, v99, v100);
  }

  (*(v161 + 8))(v112, v162);
  return sub_100008728(&v165, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_10007C428(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, _UNKNOWN **a9, uint64_t a10, uint64_t a11)
{
  v145 = a8;
  v140 = a7;
  v148 = a3;
  v16 = *a5;
  v153 = *(a5 + 8);
  v17 = *(a5 + 24);
  v152 = *(a5 + 16);
  v151 = v17;
  v157 = *(a5 + 32);
  v154 = *(a5 + 40);
  v156 = sub_10009D9F0();
  v155 = *(v156 - 8);
  v18 = *(v155 + 64);
  v19 = __chkstk_darwin(v156);
  v138 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v134 - v22;
  v24 = __chkstk_darwin(v21);
  v143 = &v134 - v25;
  v26 = __chkstk_darwin(v24);
  v139 = &v134 - v27;
  __chkstk_darwin(v26);
  v141 = &v134 - v28;
  v29 = sub_10009DE60();
  sub_1000300B8(v29, v30, a1, a2);
  v32 = v31;

  v142 = a1;
  v150 = a2;
  if (v32)
  {
    v147 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v147 = sub_10009DDD0();
    v33 = v34;
  }

  v35 = a9;
  v144 = a11;
  v149 = v33;
  v146 = v23;
  if (a6)
  {
    if (a4)
    {
      v36 = a6;
    }

    else
    {
      v62 = a6;
      v63 = [v62 description];
      v148 = sub_10009DD90();
      a4 = v64;
    }

    v65 = v141;

    v66 = [a6 code];
    v67 = 0xED0000726F727265;
    v68 = 0x206C6172656E6567;
    if (v66 == 12)
    {
      v69 = 12;
    }

    else
    {
      v69 = 11;
    }

    if (v66 == 12)
    {
      v68 = 0xD000000000000018;
      v67 = 0x80000001000A77D0;
    }

    if (v66 == 10)
    {
      v69 = 13;
    }

    v154 = v69;
    if (v66 == 10)
    {
      v70 = 0xD000000000000019;
    }

    else
    {
      v70 = v68;
    }

    if (v66 == 10)
    {
      v71 = 0x80000001000A77B0;
    }

    else
    {
      v71 = v67;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v72 = a6;

    v73 = sub_10009D9E0();
    v74 = sub_10009DFD0();

    v75 = os_log_type_enabled(v73, v74);
    v157 = a4;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *&v158 = v153;
      *v76 = 136315906;
      *(v76 + 4) = sub_1000307A4(v147, v33, &v158);
      *(v76 + 12) = 2080;
      v77 = sub_1000307A4(v148, a4, &v158);
      v137 = a9;
      v78 = v77;

      *(v76 + 14) = v78;
      *(v76 + 22) = 2080;
      v79 = sub_1000307A4(v70, v71, &v158);

      *(v76 + 24) = v79;
      *(v76 + 32) = 2080;
      v80 = v72;
      v81 = [v80 description];
      v82 = sub_10009DD90();
      v84 = v83;

      v85 = sub_1000307A4(v82, v84, &v158);

      *(v76 + 34) = v85;
      v35 = v137;
      _os_log_impl(&_mh_execute_header, v73, v74, "Error in %s %s, reporting as %s, NSError: %s", v76, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v155 + 8))(v65, v156);
    v61 = 0;
    v86 = v142;
    v58 = v150;
    v87 = &v169;
    goto LABEL_34;
  }

  v37 = *(a5 + 40);
  if (v37 == 255)
  {
    v86 = v16;
    v61 = v152;
    v58 = v153;
    v87 = &v171;
LABEL_34:
    v59 = *(v87 - 32);
    goto LABEL_38;
  }

  v137 = a9;
  v38 = *(a5 + 16);
  v168 = *a5;
  v169 = v38;
  v170 = *(a5 + 32);
  v39 = v157;
  sub_100032380(v16, v153, v152, v151, v157, v154);
  v40 = v138;
  sub_10009D9D0();

  v141 = v16;
  sub_100008658(a5, &v158, &qword_1000CB088, &unk_1000A18F0);
  v41 = sub_10009D9E0();
  v42 = sub_10009DFD0();

  sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
  v136 = v42;
  v43 = v42;
  v44 = v41;
  if (os_log_type_enabled(v41, v43))
  {
    v45 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v166 = v135;
    *v45 = 136315650;
    *(v45 + 4) = sub_1000307A4(v147, v33, &v166);
    *(v45 + 12) = 2080;
    if (a4)
    {
      v46 = v148;
    }

    else
    {
      v46 = 0;
    }

    v47 = v39;
    if (a4)
    {
      v48 = a4;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

    v49 = sub_1000307A4(v46, v48, &v166);
    v39 = v47;

    *(v45 + 14) = v49;
    *(v45 + 22) = 2080;
    v158 = v168;
    v159 = v169;
    v160 = v170;
    v161 = v37;
    v50 = v152;
    v51 = v151;
    v52 = v47;
    v53 = v154;
    sub_100032380(v141, v153, v152, v151, v52, v154);
    v54 = sub_10009DDA0();
    v56 = sub_1000307A4(v54, v55, &v166);

    *(v45 + 24) = v56;
    _os_log_impl(&_mh_execute_header, v44, v136, "SharingError in %s %s, error: %s", v45, 0x20u);
    swift_arrayDestroy();

    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
    (*(v155 + 8))(v40, v156);
    v57 = v53;
    v58 = v153;
    v59 = v51;
    v60 = v141;
    v61 = v50;
  }

  else
  {
    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

    (*(v155 + 8))(v40, v156);
    v57 = v154;
    v58 = v153;
    v59 = v151;
    v60 = v141;
    v61 = v152;
  }

  sub_100032380(v60, v58, v61, v59, v39, v57);
  sub_100032380(v60, v58, v61, v59, v39, v57);
  v86 = v60;
  v35 = v137;
LABEL_38:
  if (v35)
  {
    v88 = BYTE4(v145);
  }

  else
  {
    v88 = 0;
  }

  if (v35)
  {
    v89 = BYTE3(v145);
  }

  else
  {
    v89 = 0;
  }

  if (v35)
  {
    v90 = v35;
  }

  else
  {
    v90 = &off_1000C1A00;
  }

  *(&v159 + 1) = type metadata accessor for SPIAnalyticsEvent();
  v160 = &off_1000C2CF0;
  v91 = sub_10008D654(&v158);
  v92 = *(v144 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v93 = *(v144 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v91 = v89;
  *(v91 + 1) = v88;
  v91[1] = v90;
  v91[2] = v92;
  v91[3] = v93;
  v91[4] = v86;
  v94 = v86;
  v153 = v58;
  v91[5] = v58;
  v91[6] = v61;
  v151 = v59;
  v95 = v157;
  v91[7] = v59;
  v91[8] = v95;
  *(v91 + 72) = v154;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v158, &v164, &qword_1000CB798, &qword_1000A27F0);
  v152 = v61;
  if (v165)
  {
    sub_10008D5D8(&v164, &v166);

    v96 = v139;
    sub_10009D9D0();
    sub_10008D5F0(&v166, &v164);
    v97 = v149;

    v98 = sub_10009D9E0();
    v99 = sub_10009DFF0();

    v100 = os_log_type_enabled(v98, v99);
    v141 = v94;
    if (v100)
    {
      v101 = swift_slowAlloc();
      v162[0] = swift_slowAlloc();
      *v101 = 136315394;
      *(v101 + 4) = sub_1000307A4(v147, v97, v162);
      *(v101 + 12) = 2080;
      sub_1000067C8(&v164, v165);
      v102 = sub_10003BB34();
      v104 = v103;
      sub_10000670C(&v164);
      v105 = sub_1000307A4(v102, v104, v162);

      *(v101 + 14) = v105;
      _os_log_impl(&_mh_execute_header, v98, v99, "Finishing %s, sending event %s", v101, 0x16u);
      swift_arrayDestroy();
      v106 = v150;

      v107 = *(v155 + 8);
      v107(v96, v156);
    }

    else
    {

      v107 = *(v155 + 8);
      v107(v96, v156);
      sub_10000670C(&v164);
      v106 = v150;
    }

    v113 = sub_1000067C8(&v166, v167);
    sub_100079DD8(v113);
    v114 = v143;
    sub_10009D9D0();
    sub_10008D5F0(&v166, &v164);

    v115 = v140;
    v116 = sub_10009D9E0();
    v117 = sub_10009DFF0();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *v118 = 136315650;
      v119 = *&v115[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v162[0] = *&v115[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v162[1] = v119;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v120 = sub_10009DDA0();
      v122 = sub_1000307A4(v120, v121, &v163);

      *(v118 + 4) = v122;
      *(v118 + 12) = 2080;
      sub_1000067C8(&v164, v165);
      sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v123 = sub_10009DD10();
      v125 = v124;

      sub_10000670C(&v164);
      v126 = sub_1000307A4(v123, v125, &v163);

      *(v118 + 14) = v126;
      *(v118 + 22) = 2080;
      *(v118 + 24) = sub_1000307A4(v142, v106, &v163);
      _os_log_impl(&_mh_execute_header, v116, v117, "Requester: %s, event detail is: %s\n%s", v118, 0x20u);
      swift_arrayDestroy();

      v107(v143, v156);
    }

    else
    {

      v107(v114, v156);
      sub_10000670C(&v164);
    }

    v110 = v157;
    v111 = v149;
    v86 = v141;
    v112 = 0x73736563637553;
    sub_1000067C8(&v166, v167);
    if (sub_10003CCE4())
    {
      v112 = 0x7272652068746957;
      v108 = 0xEA0000000000726FLL;
    }

    else
    {
      v108 = 0xE700000000000000;
    }

    sub_10000670C(&v166);
    v109 = v146;
  }

  else
  {

    sub_100008728(&v164, &qword_1000CB798, &qword_1000A27F0);
    v108 = 0xE700000000000000;
    v109 = v146;
    v110 = v157;
    v111 = v149;
    v112 = 0x73736563637553;
  }

  sub_10009D9D0();

  v127 = sub_10009D9E0();
  v128 = sub_10009DFF0();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v157 = v110;
    v166 = v130;
    *v129 = 136315394;
    v131 = sub_1000307A4(v147, v111, &v166);

    *(v129 + 4) = v131;
    *(v129 + 12) = 2080;
    v132 = sub_1000307A4(v112, v108, &v166);

    *(v129 + 14) = v132;
    _os_log_impl(&_mh_execute_header, v127, v128, "Finished %s: %s.", v129, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v86, v153, v152, v151, v157, v154);
  }

  else
  {
    sub_10003C04C(v86, v153, v152, v151, v110, v154);
  }

  (*(v155 + 8))(v109, v156);
  return sub_100008728(&v158, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_10007D55C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v148 = a8;
  v142 = a7;
  v143 = a4;
  v152 = a3;
  v147 = a9;
  v14 = *(a5 + 8);
  v155 = *a5;
  v160 = v14;
  v15 = *(a5 + 24);
  v154 = *(a5 + 16);
  v156 = v15;
  v161 = *(a5 + 32);
  v16 = *(a5 + 40);
  v159 = sub_10009D9F0();
  v158 = *(v159 - 8);
  v17 = *(v158 + 64);
  v18 = __chkstk_darwin(v159);
  v20 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v138 - v22;
  v24 = __chkstk_darwin(v21);
  v145 = &v138 - v25;
  v26 = __chkstk_darwin(v24);
  v141 = &v138 - v27;
  __chkstk_darwin(v26);
  v140 = &v138 - v28;
  v29 = sub_10009DE60();
  sub_1000300B8(v29, v30, a1, a2);
  v32 = v31;

  v153 = a2;
  v144 = a1;
  if (v32)
  {
    v151 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v151 = sub_10009DDD0();
    v33 = v34;
  }

  v146 = a10;
  v35 = v161;
  v149 = v23;
  v150 = v33;
  if (a6)
  {
    v36 = v143;
    if (v143)
    {
      v37 = a6;
      v35 = v36;
    }

    else
    {
      v60 = a6;
      v61 = [v60 description];
      v152 = sub_10009DD90();
      v35 = v62;
    }

    v63 = [a6 code];
    v64 = 0xED0000726F727265;
    v65 = 0x206C6172656E6567;
    if (v63 == 12)
    {
      v66 = 12;
    }

    else
    {
      v66 = 11;
    }

    if (v63 == 12)
    {
      v65 = 0xD000000000000018;
      v64 = 0x80000001000A77D0;
    }

    if (v63 == 10)
    {
      v67 = 13;
    }

    else
    {
      v67 = v66;
    }

    if (v63 == 10)
    {
      v65 = 0xD000000000000019;
    }

    v160 = v65;
    if (v63 == 10)
    {
      v68 = 0x80000001000A77B0;
    }

    else
    {
      v68 = v64;
    }

    swift_bridgeObjectRetain_n();
    v69 = v153;
    swift_bridgeObjectRetain_n();
    v70 = v140;
    sub_10009D9D0();
    v71 = a6;
    v72 = v70;
    v73 = v71;

    v74 = sub_10009D9E0();
    v75 = sub_10009DFD0();

    v76 = os_log_type_enabled(v74, v75);
    v157 = v67;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v161 = v35;
      v78 = v77;
      *&v162 = swift_slowAlloc();
      *v78 = 136315906;
      *(v78 + 4) = sub_1000307A4(v151, v33, &v162);
      *(v78 + 12) = 2080;
      v79 = sub_1000307A4(v152, v161, &v162);

      *(v78 + 14) = v79;
      *(v78 + 22) = 2080;
      v80 = sub_1000307A4(v160, v68, &v162);

      *(v78 + 24) = v80;
      *(v78 + 32) = 2080;
      v81 = v73;
      v82 = [v81 description];
      v83 = sub_10009DD90();
      v85 = v84;

      v86 = sub_1000307A4(v83, v85, &v162);
      v33 = v150;

      *(v78 + 34) = v86;
      _os_log_impl(&_mh_execute_header, v74, v75, "Error in %s %s, reporting as %s, NSError: %s", v78, 0x2Au);
      swift_arrayDestroy();

      v35 = v161;

      (*(v158 + 8))(v72, v159);
      v53 = 0;
      v59 = v144;
      v52 = v153;
    }

    else
    {

      (*(v158 + 8))(v72, v159);
      v53 = 0;
      v59 = v144;
      v52 = v69;
    }

    v87 = &v173;
    goto LABEL_34;
  }

  v38 = v16;
  v39 = *(a5 + 40);
  v157 = v16;
  if (v39 == 255)
  {
    v53 = v154;
    v59 = v155;
    v52 = v160;
    v87 = &v175;
LABEL_34:
    v88 = *(v87 - 32);
    goto LABEL_38;
  }

  v40 = v20;
  LODWORD(v140) = v39;
  v41 = *(a5 + 16);
  v172 = *a5;
  v173 = v41;
  v174 = *(a5 + 32);
  sub_100032380(v155, v160, v154, v156, v161, v16);
  sub_10009D9D0();
  v42 = v143;

  v43 = v33;
  sub_100008658(a5, &v162, &qword_1000CB088, &unk_1000A18F0);
  v44 = sub_10009D9E0();
  v45 = sub_10009DFD0();

  sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
  v139 = v45;
  v46 = v45;
  v47 = v44;
  if (os_log_type_enabled(v44, v46))
  {
    v48 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v170 = v138;
    *v48 = 136315650;
    *(v48 + 4) = sub_1000307A4(v151, v43, &v170);
    *(v48 + 12) = 2080;
    if (v42)
    {
      v49 = v152;
    }

    else
    {
      v49 = 0;
    }

    if (v42)
    {
      v50 = v42;
    }

    else
    {
      v50 = 0xE000000000000000;
    }

    v51 = sub_1000307A4(v49, v50, &v170);
    v52 = v160;

    *(v48 + 14) = v51;
    *(v48 + 22) = 2080;
    v162 = v172;
    v163 = v173;
    v164 = v174;
    v165 = v140;
    v53 = v154;
    v54 = v156;
    sub_100032380(v155, v52, v154, v156, v35, v38);
    v55 = sub_10009DDA0();
    v57 = sub_1000307A4(v55, v56, &v170);
    v152 = v40;
    v58 = v57;

    *(v48 + 24) = v58;
    _os_log_impl(&_mh_execute_header, v47, v139, "SharingError in %s %s, error: %s", v48, 0x20u);
    swift_arrayDestroy();

    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
    (*(v158 + 8))(v152, v159);
    v59 = v155;
  }

  else
  {
    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

    (*(v158 + 8))(v40, v159);
    v53 = v154;
    v54 = v156;
    v59 = v155;
    v52 = v160;
  }

  sub_100032380(v59, v52, v53, v54, v35, v38);
  sub_100032380(v59, v52, v53, v54, v35, v38);
  v33 = v150;
  v88 = v54;
LABEL_38:
  v152 = 0x73736563637553;
  v89 = *(v148 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
  v90 = *(v148 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName + 8);

  v91 = sub_100045D24(v147, v89, v90);
  v93 = v92;

  *(&v163 + 1) = type metadata accessor for SPIAnalyticsEvent();
  v164 = &off_1000C2CF0;
  v94 = sub_10008D654(&v162);
  v95 = *(v146 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v96 = *(v146 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v94 = v91;
  v94[1] = v93;
  v94[2] = v95;
  v94[3] = v96;
  v94[4] = v59;
  v94[5] = v52;
  v160 = v52;
  v94[6] = v53;
  v94[7] = v88;
  v94[8] = v35;
  *(v94 + 72) = v157;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v162, &v168, &qword_1000CB798, &qword_1000A27F0);
  v161 = v35;
  v156 = v88;
  if (v169)
  {
    v155 = v59;
    v154 = v53;
    sub_10008D5D8(&v168, &v170);

    v97 = v141;
    sub_10009D9D0();
    sub_10008D5F0(&v170, &v168);

    v98 = sub_10009D9E0();
    v99 = sub_10009DFF0();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v166[0] = swift_slowAlloc();
      *v100 = 136315394;
      *(v100 + 4) = sub_1000307A4(v151, v33, v166);
      *(v100 + 12) = 2080;
      sub_1000067C8(&v168, v169);
      v101 = sub_10003BB34();
      v103 = v102;
      sub_10000670C(&v168);
      v104 = sub_1000307A4(v101, v103, v166);

      *(v100 + 14) = v104;
      _os_log_impl(&_mh_execute_header, v98, v99, "Finishing %s, sending event %s", v100, 0x16u);
      swift_arrayDestroy();

      v105 = *(v158 + 8);
      v105(v97, v159);
    }

    else
    {

      v105 = *(v158 + 8);
      v105(v97, v159);
      sub_10000670C(&v168);
    }

    v110 = v145;
    v111 = v153;
    v109 = v160;
    v112 = sub_1000067C8(&v170, v171);
    sub_100079DD8(v112);
    sub_10009D9D0();
    sub_10008D5F0(&v170, &v168);

    v113 = v142;
    v114 = sub_10009D9E0();
    v115 = sub_10009DFF0();

    v116 = os_log_type_enabled(v114, v115);
    v108 = v157;
    if (v116)
    {
      v117 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      *v117 = 136315650;
      v118 = *&v113[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v166[0] = *&v113[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v166[1] = v118;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v119 = sub_10009DDA0();
      v121 = v111;
      v122 = sub_1000307A4(v119, v120, &v167);

      *(v117 + 4) = v122;
      *(v117 + 12) = 2080;
      sub_1000067C8(&v168, v169);
      sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v123 = sub_10009DD10();
      v125 = v124;

      sub_10000670C(&v168);
      v126 = sub_1000307A4(v123, v125, &v167);

      *(v117 + 14) = v126;
      *(v117 + 22) = 2080;
      *(v117 + 24) = sub_1000307A4(v144, v121, &v167);
      _os_log_impl(&_mh_execute_header, v114, v115, "Requester: %s, event detail is: %s\n%s", v117, 0x20u);
      swift_arrayDestroy();

      v109 = v160;

      v105(v145, v159);
    }

    else
    {

      v105(v110, v159);
      sub_10000670C(&v168);
    }

    v107 = v149;
    v35 = v161;
    v33 = v150;
    sub_1000067C8(&v170, v171);
    v127 = sub_10003CCE4();
    v128 = 0x7272652068746957;
    if (!v127)
    {
      v128 = 0x73736563637553;
    }

    v152 = v128;
    if (v127)
    {
      v106 = 0xEA0000000000726FLL;
    }

    else
    {
      v106 = 0xE700000000000000;
    }

    sub_10000670C(&v170);
    v53 = v154;
    v59 = v155;
  }

  else
  {

    sub_100008728(&v168, &qword_1000CB798, &qword_1000A27F0);
    v106 = 0xE700000000000000;
    v107 = v149;
    v108 = v157;
    v109 = v160;
  }

  sub_10009D9D0();

  v129 = sub_10009D9E0();
  v130 = sub_10009DFF0();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v157 = v108;
    v132 = v131;
    v133 = v59;
    v170 = swift_slowAlloc();
    *v132 = 136315394;
    v134 = v107;
    v135 = sub_1000307A4(v151, v33, &v170);

    *(v132 + 4) = v135;
    *(v132 + 12) = 2080;
    v136 = sub_1000307A4(v152, v106, &v170);

    *(v132 + 14) = v136;
    _os_log_impl(&_mh_execute_header, v129, v130, "Finished %s: %s.", v132, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v133, v160, v53, v156, v161, v157);

    (*(v158 + 8))(v134, v159);
  }

  else
  {
    sub_10003C04C(v59, v109, v53, v156, v35, v108);

    (*(v158 + 8))(v107, v159);
  }

  return sub_100008728(&v162, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_10007E720(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, uint64_t a10, int a11)
{
  v147 = a8;
  v140 = a7;
  v141 = a4;
  v150 = a3;
  v15 = *(a5 + 8);
  v157 = *a5;
  v155 = v15;
  v16 = *(a5 + 24);
  v156 = *(a5 + 16);
  v152 = v16;
  v158 = *(a5 + 32);
  v17 = *(a5 + 40);
  v154 = sub_10009D9F0();
  v153 = *(v154 - 8);
  v18 = *(v153 + 64);
  v19 = __chkstk_darwin(v154);
  v138 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v135 - v22;
  v24 = __chkstk_darwin(v21);
  v145 = &v135 - v25;
  v26 = __chkstk_darwin(v24);
  v139 = &v135 - v27;
  __chkstk_darwin(v26);
  v142 = (&v135 - v28);
  v29 = sub_10009DE60();
  sub_1000300B8(v29, v30, a1, a2);
  v32 = v31;

  v143 = a1;
  if (v32)
  {
    v149 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v149 = sub_10009DDD0();
    v33 = v34;
  }

  v146 = a11;
  v151 = a9;
  v148 = v23;
  v144 = a2;
  if (a6)
  {
    v35 = v141;
    if (v141)
    {
      v36 = a6;
      v37 = v35;
    }

    else
    {
      v64 = a6;
      v65 = [v64 description];
      v150 = sub_10009DD90();
      v37 = v66;
    }

    v67 = [a6 code];
    v68 = 0xED0000726F727265;
    v69 = 0x206C6172656E6567;
    if (v67 == 12)
    {
      v70 = 12;
    }

    else
    {
      v70 = 11;
    }

    if (v67 == 12)
    {
      v69 = 0xD000000000000018;
      v68 = 0x80000001000A77D0;
    }

    if (v67 == 10)
    {
      v38 = 13;
    }

    else
    {
      v38 = v70;
    }

    if (v67 == 10)
    {
      v71 = 0xD000000000000019;
    }

    else
    {
      v71 = v69;
    }

    if (v67 == 10)
    {
      v72 = 0x80000001000A77B0;
    }

    else
    {
      v72 = v68;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v73 = v142;
    sub_10009D9D0();
    v74 = a6;

    v75 = a2;
    v76 = sub_10009D9E0();
    v77 = sub_10009DFD0();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *&v159 = v158;
      *v78 = 136315906;
      *(v78 + 4) = sub_1000307A4(v149, v33, &v159);
      *(v78 + 12) = 2080;
      v79 = sub_1000307A4(v150, v37, &v159);
      LODWORD(v141) = v38;
      v80 = v79;

      *(v78 + 14) = v80;
      *(v78 + 22) = 2080;
      v81 = sub_1000307A4(v71, v72, &v159);

      *(v78 + 24) = v81;
      *(v78 + 32) = 2080;
      v82 = v74;
      v83 = [v82 description];
      v84 = sub_10009DD90();
      v86 = v85;

      v87 = sub_1000307A4(v84, v86, &v159);
      v41 = v37;
      v38 = v141;

      *(v78 + 34) = v87;
      _os_log_impl(&_mh_execute_header, v76, v77, "Error in %s %s, reporting as %s, NSError: %s", v78, 0x2Au);
      swift_arrayDestroy();

      (*(v153 + 8))(v142, v154);
      v61 = 0;
      v62 = v143;
      v155 = v144;
      v152 = v150;
    }

    else
    {

      (*(v153 + 8))(v73, v154);
      v61 = 0;
      v62 = v143;
      v155 = v75;
      v152 = v150;
      v41 = v37;
    }
  }

  else
  {
    v38 = v17;
    v39 = *(a5 + 40);
    if (v39 == 255)
    {
      v61 = v156;
      v62 = v157;
      v41 = v158;
    }

    else
    {
      v40 = *(a5 + 16);
      v169 = *a5;
      v170 = v40;
      v171 = *(a5 + 32);
      v41 = v158;
      sub_100032380(v157, v155, v156, v152, v158, v38);
      sub_10009D9D0();
      v42 = v141;

      sub_100008658(a5, &v159, &qword_1000CB088, &unk_1000A18F0);
      v43 = sub_10009D9E0();
      v44 = sub_10009DFD0();

      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      v137 = v44;
      v142 = v43;
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v167 = v136;
        *v45 = 136315650;
        *(v45 + 4) = sub_1000307A4(v149, v33, &v167);
        *(v45 + 12) = 2080;
        v46 = v41;
        v47 = v33;
        v48 = v46;
        v49 = v38;
        if (v42)
        {
          v50 = v150;
        }

        else
        {
          v50 = 0;
        }

        if (v42)
        {
          v51 = v42;
        }

        else
        {
          v51 = 0xE000000000000000;
        }

        v52 = v50;
        v38 = v49;
        v53 = v48;
        v33 = v47;
        v41 = v53;
        v54 = sub_1000307A4(v52, v51, &v167);

        *(v45 + 14) = v54;
        *(v45 + 22) = 2080;
        v159 = v169;
        v160 = v170;
        v161 = v171;
        v162 = v39;
        v55 = v156;
        v56 = v152;
        sub_100032380(v157, v155, v156, v152, v41, v38);
        v57 = sub_10009DDA0();
        v59 = sub_1000307A4(v57, v58, &v167);

        *(v45 + 24) = v59;
        v60 = v142;
        _os_log_impl(&_mh_execute_header, v142, v137, "SharingError in %s %s, error: %s", v45, 0x20u);
        swift_arrayDestroy();

        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
        (*(v153 + 8))(v138, v154);
        v61 = v55;
        v62 = v157;
        v63 = v155;
      }

      else
      {
        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

        (*(v153 + 8))(v138, v154);
        v61 = v156;
        v62 = v157;
        v63 = v155;
        v56 = v152;
      }

      sub_100032380(v62, v63, v61, v56, v41, v38);
      sub_100032380(v62, v63, v61, v56, v41, v38);
    }
  }

  *(&v160 + 1) = type metadata accessor for SPIAnalyticsEvent();
  v161 = &off_1000C2CF0;
  v88 = sub_10008D654(&v159);
  v156 = v61;
  v157 = v62;
  v158 = v41;
  if (v151)
  {
    v89 = *(a10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
    v90 = *(a10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName + 8);
    v91 = v88;

    v92 = v151;
    v93 = sub_100045D24(v92, v89, v90);
    v95 = v94;

    v88 = v91;
    v62 = v157;
    v61 = v156;
  }

  else
  {
    v93 = 0;
    v95 = 0xE000000000000000;
  }

  v96 = *(v147 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v97 = *(v147 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v88 = v93;
  v88[1] = v95;
  v88[2] = v96;
  v88[3] = v97;
  v98 = v155;
  v88[4] = v62;
  v88[5] = v98;
  v99 = v152;
  v88[6] = v61;
  v88[7] = v99;
  v88[8] = v158;
  *(v88 + 72) = v38;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v159, &v165, &qword_1000CB798, &qword_1000A27F0);
  if (v166)
  {
    sub_10008D5D8(&v165, &v167);

    v100 = v139;
    sub_10009D9D0();
    sub_10008D5F0(&v167, &v165);

    v101 = sub_10009D9E0();
    v102 = sub_10009DFF0();

    v103 = os_log_type_enabled(v101, v102);
    LODWORD(v141) = v38;
    if (v103)
    {
      v104 = swift_slowAlloc();
      v163[0] = swift_slowAlloc();
      *v104 = 136315394;
      *(v104 + 4) = sub_1000307A4(v149, v33, v163);
      *(v104 + 12) = 2080;
      sub_1000067C8(&v165, v166);
      v105 = sub_10003BB34();
      v107 = v106;
      sub_10000670C(&v165);
      v108 = sub_1000307A4(v105, v107, v163);

      *(v104 + 14) = v108;
      _os_log_impl(&_mh_execute_header, v101, v102, "Finishing %s, sending event %s", v104, 0x16u);
      swift_arrayDestroy();

      v109 = *(v153 + 8);
      v109(v100, v154);
    }

    else
    {

      v109 = *(v153 + 8);
      v109(v100, v154);
      sub_10000670C(&v165);
    }

    v114 = sub_1000067C8(&v167, v168);
    sub_100079DD8(v114);
    v115 = v145;
    sub_10009D9D0();
    sub_10008D5F0(&v167, &v165);
    v116 = v144;

    v117 = v140;
    v118 = sub_10009D9E0();
    v119 = sub_10009DFF0();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *v120 = 136315650;
      v121 = *&v117[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v163[0] = *&v117[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v163[1] = v121;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v122 = sub_10009DDA0();
      v124 = sub_1000307A4(v122, v123, &v164);

      *(v120 + 4) = v124;
      *(v120 + 12) = 2080;
      sub_1000067C8(&v165, v166);
      sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v125 = sub_10009DD10();
      v127 = v126;

      sub_10000670C(&v165);
      v128 = sub_1000307A4(v125, v127, &v164);

      *(v120 + 14) = v128;
      *(v120 + 22) = 2080;
      *(v120 + 24) = sub_1000307A4(v143, v116, &v164);
      _os_log_impl(&_mh_execute_header, v118, v119, "Requester: %s, event detail is: %s\n%s", v120, 0x20u);
      swift_arrayDestroy();

      v109(v145, v154);
    }

    else
    {

      v109(v115, v154);
      sub_10000670C(&v165);
    }

    v111 = v148;
    v112 = v158;
    LOBYTE(v38) = v141;
    sub_1000067C8(&v167, v168);
    v113 = 0x73736563637553;
    if (sub_10003CCE4())
    {
      v113 = 0x7272652068746957;
      v110 = 0xEA0000000000726FLL;
    }

    else
    {
      v110 = 0xE700000000000000;
    }

    sub_10000670C(&v167);
  }

  else
  {

    sub_100008728(&v165, &qword_1000CB798, &qword_1000A27F0);
    v110 = 0xE700000000000000;
    v111 = v148;
    v112 = v158;
    v113 = 0x73736563637553;
  }

  sub_10009D9D0();

  v129 = sub_10009D9E0();
  v130 = sub_10009DFF0();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    *v131 = 136315394;
    v132 = sub_1000307A4(v149, v33, &v167);

    *(v131 + 4) = v132;
    *(v131 + 12) = 2080;
    v133 = sub_1000307A4(v113, v110, &v167);

    *(v131 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v129, v130, "Finished %s: %s.", v131, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v157, v155, v156, v152, v158, v38);
  }

  else
  {
    sub_10003C04C(v157, v155, v156, v152, v112, v38);
  }

  (*(v153 + 8))(v111, v154);
  return sub_100008728(&v159, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_10007F8E0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v138 = a8;
  v133 = a7;
  v136 = a4;
  v142 = a3;
  v13 = *(a5 + 8);
  v148 = *a5;
  v14 = *(a5 + 16);
  v147 = *(a5 + 24);
  v140 = *(a5 + 32);
  LODWORD(v145) = *(a5 + 40);
  v150 = sub_10009D9F0();
  v149 = *(v150 - 8);
  v15 = *(v149 + 64);
  v16 = __chkstk_darwin(v150);
  v18 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v139 = &v128 - v20;
  v21 = __chkstk_darwin(v19);
  v135 = &v128 - v22;
  v23 = __chkstk_darwin(v21);
  v132 = &v128 - v24;
  __chkstk_darwin(v23);
  v144 = &v128 - v25;
  v26 = sub_10009DE60();
  sub_1000300B8(v26, v27, a1, a2);
  v29 = v28;

  v143 = a2;
  v134 = a1;
  if (v29)
  {
    v141 = 0;
    v146 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v141 = sub_10009DDD0();
    v146 = v30;
  }

  v137 = a9;
  v31 = v140;
  if (a6)
  {
    v32 = v136;
    if (v136)
    {
      v33 = a6;
      v31 = v32;
    }

    else
    {
      v59 = a6;
      v60 = [v59 description];
      v142 = sub_10009DD90();
      v31 = v61;
    }

    v62 = v144;

    v63 = [a6 code];
    v64 = 0xED0000726F727265;
    v65 = 0x206C6172656E6567;
    if (v63 == 12)
    {
      v66 = 12;
    }

    else
    {
      v66 = 11;
    }

    if (v63 == 12)
    {
      v65 = 0xD000000000000018;
      v64 = 0x80000001000A77D0;
    }

    if (v63 == 10)
    {
      v66 = 13;
    }

    LODWORD(v145) = v66;
    if (v63 == 10)
    {
      v67 = 0xD000000000000019;
    }

    else
    {
      v67 = v65;
    }

    if (v63 == 10)
    {
      v68 = 0x80000001000A77B0;
    }

    else
    {
      v68 = v64;
    }

    swift_bridgeObjectRetain_n();
    v69 = v143;
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v70 = a6;

    v71 = v146;

    v72 = sub_10009D9E0();
    v73 = sub_10009DFD0();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *&v151 = v148;
      *v74 = 136315906;
      *(v74 + 4) = sub_1000307A4(v141, v71, &v151);
      *(v74 + 12) = 2080;
      v75 = sub_1000307A4(v142, v31, &v151);

      *(v74 + 14) = v75;
      *(v74 + 22) = 2080;
      v76 = sub_1000307A4(v67, v68, &v151);

      *(v74 + 24) = v76;
      *(v74 + 32) = 2080;
      v77 = v70;
      v78 = [v77 description];
      v79 = sub_10009DD90();
      v81 = v80;

      v82 = sub_1000307A4(v79, v81, &v151);

      *(v74 + 34) = v82;
      _os_log_impl(&_mh_execute_header, v72, v73, "Error in %s %s, reporting as %s, NSError: %s", v74, 0x2Au);
      swift_arrayDestroy();

      (*(v149 + 8))(v62, v150);
      v34 = 0;
      v52 = v134;
      v35 = v143;
    }

    else
    {

      (*(v149 + 8))(v62, v150);
      v34 = 0;
      v52 = v134;
      v35 = v69;
    }

    v83 = v142;
    v58 = v145;
  }

  else
  {
    v34 = v14;
    v35 = v13;
    v36 = v18;
    v37 = v136;
    if (*(a5 + 40) == 255)
    {
      v58 = v145;
      v52 = v148;
      v83 = v147;
    }

    else
    {
      v129 = *(a5 + 40);
      v38 = *(a5 + 16);
      v161 = *a5;
      v162 = v38;
      v163 = *(a5 + 32);
      v39 = v13;
      v40 = v147;
      sub_100032380(v148, v39, v14, v147, v140, v145);
      sub_10009D9D0();

      v41 = v146;

      v144 = v35;
      sub_100008658(a5, &v151, &qword_1000CB088, &unk_1000A18F0);
      v131 = v36;
      v42 = sub_10009D9E0();
      v43 = sub_10009DFD0();

      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      v130 = v43;
      v44 = v43;
      v45 = v42;
      if (os_log_type_enabled(v42, v44))
      {
        v46 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v159 = v128;
        *v46 = 136315650;
        *(v46 + 4) = sub_1000307A4(v141, v41, &v159);
        *(v46 + 12) = 2080;
        v47 = v37 == 0;
        v48 = v37;
        if (v37)
        {
          v49 = v142;
        }

        else
        {
          v49 = 0;
        }

        if (v47)
        {
          v50 = 0xE000000000000000;
        }

        else
        {
          v50 = v48;
        }

        v51 = sub_1000307A4(v49, v50, &v159);

        *(v46 + 14) = v51;
        *(v46 + 22) = 2080;
        v31 = v140;
        v151 = v161;
        v152 = v162;
        v153 = v163;
        v154 = v129;
        v52 = v148;
        v53 = v144;
        v54 = v145;
        sub_100032380(v148, v144, v34, v147, v140, v145);
        v55 = sub_10009DDA0();
        v57 = sub_1000307A4(v55, v56, &v159);

        *(v46 + 24) = v57;
        v40 = v147;
        _os_log_impl(&_mh_execute_header, v45, v130, "SharingError in %s %s, error: %s", v46, 0x20u);
        swift_arrayDestroy();

        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
        (*(v149 + 8))(v131, v150);
        v58 = v54;
        v35 = v53;
      }

      else
      {
        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

        (*(v149 + 8))(v131, v150);
        v52 = v148;
        v58 = v145;
        v35 = v144;
      }

      sub_100032380(v52, v35, v34, v40, v31, v58);
      sub_100032380(v52, v35, v34, v40, v31, v58);
      v83 = v40;
    }
  }

  v145 = 0x73736563637553;
  *(&v152 + 1) = type metadata accessor for SPIAnalyticsEvent();
  v153 = &off_1000C2CF0;
  v84 = sub_10008D654(&v151);
  v85 = v138;
  swift_beginAccess();
  v86 = *(v85 + 16);
  v87 = *(v85 + 24);
  v88 = *(v137 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v89 = *(v137 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v84 = v86;
  v84[1] = v87;
  v84[2] = v88;
  v84[3] = v89;
  v84[4] = v52;
  v84[5] = v35;
  v142 = v34;
  v84[6] = v34;
  v84[7] = v83;
  v147 = v83;
  v84[8] = v31;
  *(v84 + 72) = v58;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v151, &v157, &qword_1000CB798, &qword_1000A27F0);
  v148 = v52;
  v144 = v35;
  if (v158)
  {
    sub_10008D5D8(&v157, &v159);

    v90 = v132;
    sub_10009D9D0();
    sub_10008D5F0(&v159, &v157);
    v91 = v146;

    v92 = sub_10009D9E0();
    v93 = sub_10009DFF0();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v155[0] = swift_slowAlloc();
      *v94 = 136315394;
      *(v94 + 4) = sub_1000307A4(v141, v91, v155);
      *(v94 + 12) = 2080;
      sub_1000067C8(&v157, v158);
      v95 = sub_10003BB34();
      v97 = v96;
      sub_10000670C(&v157);
      v98 = sub_1000307A4(v95, v97, v155);

      *(v94 + 14) = v98;
      _os_log_impl(&_mh_execute_header, v92, v93, "Finishing %s, sending event %s", v94, 0x16u);
      swift_arrayDestroy();

      v99 = *(v149 + 8);
      v99(v90, v150);
    }

    else
    {

      v99 = *(v149 + 8);
      v99(v90, v150);
      sub_10000670C(&v157);
    }

    v103 = sub_1000067C8(&v159, v160);
    sub_100079DD8(v103);
    v104 = v135;
    sub_10009D9D0();
    sub_10008D5F0(&v159, &v157);
    v105 = v143;

    v106 = v133;
    v107 = sub_10009D9E0();
    v108 = sub_10009DFF0();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v140 = v99;
      v110 = v109;
      v156 = swift_slowAlloc();
      *v110 = 136315650;
      v111 = *&v106[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v155[0] = *&v106[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v155[1] = v111;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v112 = sub_10009DDA0();
      v114 = sub_1000307A4(v112, v113, &v156);

      *(v110 + 4) = v114;
      *(v110 + 12) = 2080;
      sub_1000067C8(&v157, v158);
      sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v115 = sub_10009DD10();
      v117 = v116;

      sub_10000670C(&v157);
      v118 = sub_1000307A4(v115, v117, &v156);

      *(v110 + 14) = v118;
      *(v110 + 22) = 2080;
      *(v110 + 24) = sub_1000307A4(v134, v105, &v156);
      _os_log_impl(&_mh_execute_header, v107, v108, "Requester: %s, event detail is: %s\n%s", v110, 0x20u);
      swift_arrayDestroy();

      v140(v135, v150);
    }

    else
    {

      v99(v104, v150);
      sub_10000670C(&v157);
    }

    v101 = v139;
    v102 = v146;
    v52 = v148;
    v35 = v144;
    sub_1000067C8(&v159, v160);
    v119 = sub_10003CCE4();
    v120 = 0x7272652068746957;
    if (!v119)
    {
      v120 = 0x73736563637553;
    }

    v145 = v120;
    if (v119)
    {
      v100 = 0xEA0000000000726FLL;
    }

    else
    {
      v100 = 0xE700000000000000;
    }

    sub_10000670C(&v159);
  }

  else
  {

    sub_100008728(&v157, &qword_1000CB798, &qword_1000A27F0);
    v100 = 0xE700000000000000;
    v101 = v139;
    v102 = v146;
  }

  sub_10009D9D0();

  v121 = sub_10009D9E0();
  v122 = sub_10009DFF0();

  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    *v123 = 136315394;
    v124 = sub_1000307A4(v141, v102, &v159);

    *(v123 + 4) = v124;
    *(v123 + 12) = 2080;
    LOBYTE(v124) = v58;
    v125 = v31;
    v126 = sub_1000307A4(v145, v100, &v159);

    *(v123 + 14) = v126;
    _os_log_impl(&_mh_execute_header, v121, v122, "Finished %s: %s.", v123, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v148, v144, v142, v147, v125, v124);
  }

  else
  {
    sub_10003C04C(v52, v35, v142, v147, v31, v58);
  }

  (*(v149 + 8))(v101, v150);
  return sub_100008728(&v151, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_100080A3C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v141 = a8;
  v136 = a7;
  v144 = a3;
  v140 = a9;
  v15 = *(a5 + 8);
  v153 = *a5;
  v152 = v15;
  v16 = *(a5 + 24);
  v149 = *(a5 + 16);
  v148 = v16;
  v154 = *(a5 + 32);
  v150 = *(a5 + 40);
  v146 = sub_10009D9F0();
  v151 = *(v146 - 8);
  v17 = *(v151 + 64);
  v18 = __chkstk_darwin(v146);
  v20 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v133 - v22;
  v24 = __chkstk_darwin(v21);
  v139 = &v133 - v25;
  v26 = __chkstk_darwin(v24);
  v135 = &v133 - v27;
  __chkstk_darwin(v26);
  v137 = &v133 - v28;
  v29 = sub_10009DE60();
  sub_1000300B8(v29, v30, a1, a2);
  v32 = v31;

  v147 = a2;
  v138 = a1;
  if (v32)
  {
    v143 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v143 = sub_10009DDD0();
    v33 = v34;
  }

  v35 = v146;
  v142 = v23;
  v145 = v33;
  if (a6)
  {
    v36 = v147;
    if (a4)
    {
      v37 = a6;
      v38 = a4;
    }

    else
    {
      v58 = a6;
      v59 = [v58 description];
      v144 = sub_10009DD90();
      v38 = v60;
    }

    v61 = [a6 code];
    v62 = 0xED0000726F727265;
    v63 = 0x206C6172656E6567;
    if (v61 == 12)
    {
      v64 = 12;
    }

    else
    {
      v64 = 11;
    }

    if (v61 == 12)
    {
      v63 = 0xD000000000000018;
      v62 = 0x80000001000A77D0;
    }

    if (v61 == 10)
    {
      v64 = 13;
    }

    v150 = v64;
    if (v61 == 10)
    {
      v65 = 0xD000000000000019;
    }

    else
    {
      v65 = v63;
    }

    if (v61 == 10)
    {
      v66 = 0x80000001000A77B0;
    }

    else
    {
      v66 = v62;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v67 = v137;
    sub_10009D9D0();
    v68 = a6;
    v69 = v36;
    v70 = v68;

    v71 = sub_10009D9E0();
    v72 = sub_10009DFD0();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *&v155 = swift_slowAlloc();
      *v73 = 136315906;
      *(v73 + 4) = sub_1000307A4(v143, v33, &v155);
      *(v73 + 12) = 2080;
      v74 = v38;
      v75 = sub_1000307A4(v144, v38, &v155);

      *(v73 + 14) = v75;
      *(v73 + 22) = 2080;
      v76 = sub_1000307A4(v65, v66, &v155);

      *(v73 + 24) = v76;
      *(v73 + 32) = 2080;
      v35 = v146;
      v77 = v70;
      v78 = [v77 description];
      v79 = sub_10009DD90();
      v81 = v80;

      v82 = sub_1000307A4(v79, v81, &v155);
      v38 = v74;
      v33 = v145;

      *(v73 + 34) = v82;
      _os_log_impl(&_mh_execute_header, v71, v72, "Error in %s %s, reporting as %s, NSError: %s", v73, 0x2Au);
      swift_arrayDestroy();

      (*(v151 + 8))(v137, v35);
      v149 = 0;
      v153 = v138;
      v152 = v147;
    }

    else
    {

      (*(v151 + 8))(v67, v35);
      v149 = 0;
      v153 = v138;
      v152 = v69;
    }

    v148 = v144;
  }

  else
  {
    v39 = *(a5 + 40);
    if (v39 == 255)
    {
      v38 = v154;
    }

    else
    {
      v40 = v20;
      v41 = *(a5 + 16);
      v165 = *a5;
      v166 = v41;
      v167 = *(a5 + 32);
      v38 = v154;
      sub_100032380(v153, v152, v149, v148, v154, v150);
      sub_10009D9D0();

      sub_100008658(a5, &v155, &qword_1000CB088, &unk_1000A18F0);
      v42 = sub_10009D9E0();
      v43 = sub_10009DFD0();

      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      LODWORD(v137) = v43;
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v163 = v134;
        *v44 = 136315650;
        *(v44 + 4) = sub_1000307A4(v143, v33, &v163);
        *(v44 + 12) = 2080;
        v45 = v38;
        if (a4)
        {
          v46 = v144;
        }

        else
        {
          v46 = 0;
        }

        if (a4)
        {
          v47 = a4;
        }

        else
        {
          v47 = 0xE000000000000000;
        }

        v48 = v46;
        v38 = v45;
        v49 = sub_1000307A4(v48, v47, &v163);

        *(v44 + 14) = v49;
        *(v44 + 22) = 2080;
        v35 = v146;
        v155 = v165;
        v156 = v166;
        v157 = v167;
        v158 = v39;
        v144 = v40;
        v50 = v149;
        v51 = v148;
        v52 = v150;
        sub_100032380(v153, v152, v149, v148, v38, v150);
        v53 = sub_10009DDA0();
        v55 = sub_1000307A4(v53, v54, &v163);

        *(v44 + 24) = v55;
        _os_log_impl(&_mh_execute_header, v42, v137, "SharingError in %s %s, error: %s", v44, 0x20u);
        swift_arrayDestroy();

        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
        (*(v151 + 8))(v144, v35);
        v56 = v153;
        v57 = v152;
      }

      else
      {
        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

        v35 = v146;
        (*(v151 + 8))(v40, v146);
        v52 = v150;
        v50 = v149;
        v56 = v153;
        v57 = v152;
        v51 = v148;
      }

      sub_100032380(v56, v57, v50, v51, v38, v52);
      sub_100032380(v56, v57, v50, v51, v38, v52);
      v33 = v145;
    }
  }

  *(&v156 + 1) = type metadata accessor for SPIAnalyticsEvent();
  v157 = &off_1000C2CF0;
  v83 = sub_10008D654(&v155);
  v84 = v140;
  swift_beginAccess();
  v85 = *(v84 + 16);
  v154 = v38;
  if (v85)
  {
    v86 = *(a10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
    v87 = *(a10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName + 8);

    v88 = v85;
    v89 = sub_100045D24(v88, v86, v87);
    v91 = v90;

    v33 = v145;
  }

  else
  {
    v89 = 0;
    v91 = 0xE000000000000000;
  }

  v92 = &qword_1000CB000;
  v93 = 0x73736563637553;
  v94 = *(v141 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v95 = *(v141 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v83 = v89;
  v83[1] = v91;
  v83[2] = v94;
  v83[3] = v95;
  v96 = v152;
  v83[4] = v153;
  v83[5] = v96;
  v97 = v148;
  v83[6] = v149;
  v83[7] = v97;
  v83[8] = v154;
  *(v83 + 72) = v150;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v155, &v161, &qword_1000CB798, &qword_1000A27F0);
  if (v162)
  {
    sub_10008D5D8(&v161, &v163);

    v98 = v135;
    sub_10009D9D0();
    sub_10008D5F0(&v163, &v161);

    v99 = sub_10009D9E0();
    v100 = sub_10009DFF0();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = v98;
      v102 = swift_slowAlloc();
      v159[0] = swift_slowAlloc();
      *v102 = 136315394;
      *(v102 + 4) = sub_1000307A4(v143, v33, v159);
      *(v102 + 12) = 2080;
      sub_1000067C8(&v161, v162);
      v103 = sub_10003BB34();
      v105 = v104;
      sub_10000670C(&v161);
      v106 = sub_1000307A4(v103, v105, v159);

      *(v102 + 14) = v106;
      _os_log_impl(&_mh_execute_header, v99, v100, "Finishing %s, sending event %s", v102, 0x16u);
      swift_arrayDestroy();

      v107 = *(v151 + 8);
      v108 = v101;
      v92 = &qword_1000CB000;
      v107(v108, v35);
    }

    else
    {

      v107 = *(v151 + 8);
      v107(v98, v35);
      sub_10000670C(&v161);
    }

    v112 = sub_1000067C8(&v163, v164);
    sub_100079DD8(v112);
    v113 = v139;
    sub_10009D9D0();
    sub_10008D5F0(&v163, &v161);

    v114 = v136;
    v115 = sub_10009D9E0();
    v116 = sub_10009DFF0();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *v117 = 136315650;
      v118 = &v114[v92[237]];
      v119 = v118[1];
      v159[0] = *v118;
      v159[1] = v119;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v120 = sub_10009DDA0();
      v122 = sub_1000307A4(v120, v121, &v160);

      *(v117 + 4) = v122;
      *(v117 + 12) = 2080;
      sub_1000067C8(&v161, v162);
      sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v123 = sub_10009DD10();
      v125 = v124;

      sub_10000670C(&v161);
      v126 = sub_1000307A4(v123, v125, &v160);

      *(v117 + 14) = v126;
      *(v117 + 22) = 2080;
      v35 = v146;
      *(v117 + 24) = sub_1000307A4(v138, v147, &v160);
      _os_log_impl(&_mh_execute_header, v115, v116, "Requester: %s, event detail is: %s\n%s", v117, 0x20u);
      swift_arrayDestroy();

      v107(v139, v35);
    }

    else
    {

      v107(v113, v35);
      sub_10000670C(&v161);
    }

    v110 = v142;
    v111 = v154;
    v33 = v145;
    sub_1000067C8(&v163, v164);
    if (sub_10003CCE4())
    {
      v93 = 0x7272652068746957;
      v109 = 0xEA0000000000726FLL;
    }

    else
    {
      v109 = 0xE700000000000000;
    }

    sub_10000670C(&v163);
  }

  else
  {

    sub_100008728(&v161, &qword_1000CB798, &qword_1000A27F0);
    v109 = 0xE700000000000000;
    v110 = v142;
    v111 = v154;
  }

  sub_10009D9D0();

  v127 = sub_10009D9E0();
  v128 = sub_10009DFF0();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    *v129 = 136315394;
    v130 = sub_1000307A4(v143, v33, &v163);

    *(v129 + 4) = v130;
    *(v129 + 12) = 2080;
    v131 = sub_1000307A4(v93, v109, &v163);

    *(v129 + 14) = v131;
    _os_log_impl(&_mh_execute_header, v127, v128, "Finished %s: %s.", v129, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v153, v152, v149, v148, v111, v150);
  }

  else
  {
    sub_10003C04C(v153, v152, v149, v148, v111, v150);
  }

  (*(v151 + 8))(v110, v35);
  return sub_100008728(&v155, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_100081BCC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v143 = a8;
  v138 = a7;
  v149 = a4;
  v148 = a3;
  v14 = *(a5 + 8);
  v153 = *a5;
  v152 = v14;
  v15 = *(a5 + 24);
  v154 = *(a5 + 16);
  v156 = v15;
  v16 = *(a5 + 32);
  v17 = *(a5 + 40);
  v155 = sub_10009D9F0();
  v151 = *(v155 - 8);
  v18 = *(v151 + 64);
  v19 = __chkstk_darwin(v155);
  v136 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v133 - v22;
  v24 = __chkstk_darwin(v21);
  v141 = &v133 - v25;
  v26 = __chkstk_darwin(v24);
  v137 = &v133 - v27;
  __chkstk_darwin(v26);
  v145 = &v133 - v28;
  v29 = sub_10009DE60();
  sub_1000300B8(v29, v30, a1, a2);
  v32 = v31;

  v150 = a2;
  v140 = a1;
  if (v32)
  {
    v147 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v147 = sub_10009DDD0();
    v33 = v34;
  }

  v35 = a10;
  v142 = a9;
  v36 = v156;
  v144 = v23;
  v146 = v33;
  if (a6)
  {
    v37 = v149;
    v139 = a10;
    if (v149)
    {
      v38 = a6;
      v39 = v37;
    }

    else
    {
      v61 = a6;
      v62 = [v61 description];
      v148 = sub_10009DD90();
      v39 = v63;
    }

    v64 = v145;

    v65 = [a6 code];
    v66 = 0xED0000726F727265;
    v67 = 0x206C6172656E6567;
    if (v65 == 12)
    {
      v68 = 12;
    }

    else
    {
      v68 = 11;
    }

    if (v65 == 12)
    {
      v67 = 0xD000000000000018;
      v66 = 0x80000001000A77D0;
    }

    if (v65 == 10)
    {
      v69 = 13;
    }

    else
    {
      v69 = v68;
    }

    if (v65 == 10)
    {
      v67 = 0xD000000000000019;
    }

    v156 = v67;
    if (v65 == 10)
    {
      v70 = 0x80000001000A77B0;
    }

    else
    {
      v70 = v66;
    }

    swift_bridgeObjectRetain_n();
    v71 = v150;
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v72 = a6;

    v73 = sub_10009D9E0();
    v74 = sub_10009DFD0();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v149 = v39;
      v76 = v75;
      *&v157 = swift_slowAlloc();
      *v76 = 136315906;
      *(v76 + 4) = sub_1000307A4(v147, v33, &v157);
      v77 = v69;
      *(v76 + 12) = 2080;
      v78 = sub_1000307A4(v148, v149, &v157);

      *(v76 + 14) = v78;
      *(v76 + 22) = 2080;
      v79 = sub_1000307A4(v156, v70, &v157);

      *(v76 + 24) = v79;
      *(v76 + 32) = 2080;
      v80 = v72;
      v81 = [v80 description];
      v82 = sub_10009DD90();
      v84 = v83;

      v85 = sub_1000307A4(v82, v84, &v157);
      v33 = v146;

      *(v76 + 34) = v85;
      _os_log_impl(&_mh_execute_header, v73, v74, "Error in %s %s, reporting as %s, NSError: %s", v76, 0x2Au);
      swift_arrayDestroy();

      v39 = v149;

      (*(v151 + 8))(v145, v155);
      v59 = 0;
      v53 = v140;
      v60 = v150;
      v36 = v148;
    }

    else
    {

      (*(v151 + 8))(v64, v155);
      v59 = 0;
      v53 = v140;
      v60 = v71;
      v36 = v148;
      v77 = v69;
    }
  }

  else
  {
    v39 = v16;
    v40 = v17;
    if (*(a5 + 40) == 255)
    {
      v59 = v154;
      v53 = v153;
      v60 = v152;
      v77 = v40;
      goto LABEL_37;
    }

    LODWORD(v145) = *(a5 + 40);
    v139 = a10;
    v41 = *(a5 + 16);
    v167 = *a5;
    v168 = v41;
    v169 = *(a5 + 32);
    sub_100032380(v153, v152, v154, v156, v16, v17);
    v42 = v136;
    sub_10009D9D0();
    v43 = v149;

    v44 = v33;
    sub_100008658(a5, &v157, &qword_1000CB088, &unk_1000A18F0);
    v45 = sub_10009D9E0();
    v46 = sub_10009DFD0();

    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
    v135 = v46;
    v47 = v46;
    v48 = v45;
    if (os_log_type_enabled(v45, v47))
    {
      v49 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v165 = v134;
      *v49 = 136315650;
      *(v49 + 4) = sub_1000307A4(v147, v44, &v165);
      *(v49 + 12) = 2080;
      if (v43)
      {
        v50 = v148;
      }

      else
      {
        v50 = 0;
      }

      if (v43)
      {
        v51 = v43;
      }

      else
      {
        v51 = 0xE000000000000000;
      }

      v52 = sub_1000307A4(v50, v51, &v165);

      *(v49 + 14) = v52;
      *(v49 + 22) = 2080;
      v157 = v167;
      v158 = v168;
      v159 = v169;
      v160 = v145;
      v53 = v153;
      v54 = v152;
      v55 = v154;
      sub_100032380(v153, v152, v154, v36, v39, v40);
      v56 = sub_10009DDA0();
      v58 = sub_1000307A4(v56, v57, &v165);

      *(v49 + 24) = v58;
      v36 = v156;
      _os_log_impl(&_mh_execute_header, v48, v135, "SharingError in %s %s, error: %s", v49, 0x20u);
      swift_arrayDestroy();

      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      (*(v151 + 8))(v136, v155);
      v59 = v55;
      v60 = v54;
    }

    else
    {
      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

      (*(v151 + 8))(v42, v155);
      v59 = v154;
      v53 = v153;
      v60 = v152;
    }

    sub_100032380(v53, v60, v59, v36, v39, v40);
    sub_100032380(v53, v60, v59, v36, v39, v40);
    v77 = v40;
    v33 = v146;
  }

  v35 = v139;
LABEL_37:
  v145 = 0x73736563637553;
  *(&v158 + 1) = type metadata accessor for SPIAnalyticsEvent();
  v159 = &off_1000C2CF0;
  v86 = sub_10008D654(&v157);
  v87 = *(v35 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v88 = *(v35 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  v89 = v143;
  v90 = v142;
  *v86 = v143;
  v86[1] = v90;
  v86[2] = v87;
  v86[3] = v88;
  v86[4] = v53;
  v86[5] = v60;
  v86[6] = v59;
  v86[7] = v36;
  v156 = v36;
  v86[8] = v39;
  LODWORD(v148) = v77;
  *(v86 + 72) = v77;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v157, &v163, &qword_1000CB798, &qword_1000A27F0);
  v154 = v59;
  v153 = v53;
  v152 = v60;
  if (v164)
  {
    v149 = v39;
    sub_10008D5D8(&v163, &v165);

    v91 = v89;
    v92 = v137;
    sub_10009D9D0();
    sub_10008D5F0(&v165, &v163);

    v93 = sub_10009D9E0();
    v94 = sub_10009DFF0();

    v95 = os_log_type_enabled(v93, v94);
    v96 = v151;
    if (v95)
    {
      v97 = swift_slowAlloc();
      v161[0] = swift_slowAlloc();
      *v97 = 136315394;
      *(v97 + 4) = sub_1000307A4(v147, v33, v161);
      *(v97 + 12) = 2080;
      sub_1000067C8(&v163, v164);
      v98 = sub_10003BB34();
      v99 = v92;
      v101 = v100;
      sub_10000670C(&v163);
      v102 = sub_1000307A4(v98, v101, v161);

      *(v97 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v93, v94, "Finishing %s, sending event %s", v97, 0x16u);
      swift_arrayDestroy();

      v103 = *(v96 + 8);
      v103(v99, v155);
    }

    else
    {

      v103 = *(v96 + 8);
      v103(v92, v155);
      sub_10000670C(&v163);
    }

    v108 = v141;
    v109 = v150;
    v107 = v148;
    v110 = sub_1000067C8(&v165, v166);
    sub_100079DD8(v110);
    sub_10009D9D0();
    sub_10008D5F0(&v165, &v163);

    v111 = v138;
    v112 = sub_10009D9E0();
    v113 = sub_10009DFF0();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *v114 = 136315650;
      v115 = *&v111[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v161[0] = *&v111[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v161[1] = v115;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v116 = sub_10009DDA0();
      v118 = v109;
      v119 = sub_1000307A4(v116, v117, &v162);

      *(v114 + 4) = v119;
      *(v114 + 12) = 2080;
      sub_1000067C8(&v163, v164);
      sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v120 = sub_10009DD10();
      v122 = v121;

      sub_10000670C(&v163);
      v123 = sub_1000307A4(v120, v122, &v162);

      *(v114 + 14) = v123;
      *(v114 + 22) = 2080;
      *(v114 + 24) = sub_1000307A4(v140, v118, &v162);
      _os_log_impl(&_mh_execute_header, v112, v113, "Requester: %s, event detail is: %s\n%s", v114, 0x20u);
      swift_arrayDestroy();

      v96 = v151;

      v103(v141, v155);
    }

    else
    {

      v103(v108, v155);
      sub_10000670C(&v163);
    }

    v106 = v144;
    v39 = v149;
    v33 = v146;
    sub_1000067C8(&v165, v166);
    v124 = sub_10003CCE4();
    v125 = 0x7272652068746957;
    if (!v124)
    {
      v125 = 0x73736563637553;
    }

    v145 = v125;
    if (v124)
    {
      v105 = 0xEA0000000000726FLL;
    }

    else
    {
      v105 = 0xE700000000000000;
    }

    sub_10000670C(&v165);
  }

  else
  {

    v104 = v89;
    sub_100008728(&v163, &qword_1000CB798, &qword_1000A27F0);
    v105 = 0xE700000000000000;
    v106 = v144;
    v107 = v148;
    v96 = v151;
  }

  sub_10009D9D0();

  v126 = sub_10009D9E0();
  v127 = sub_10009DFF0();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = v39;
    v129 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    *v129 = 136315394;
    v130 = sub_1000307A4(v147, v33, &v165);

    *(v129 + 4) = v130;
    *(v129 + 12) = 2080;
    v131 = sub_1000307A4(v145, v105, &v165);

    *(v129 + 14) = v131;
    _os_log_impl(&_mh_execute_header, v126, v127, "Finished %s: %s.", v129, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v153, v152, v154, v156, v128, v148);
  }

  else
  {
    sub_10003C04C(v153, v152, v154, v156, v39, v107);
  }

  (*(v96 + 8))(v106, v155);
  return sub_100008728(&v157, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_100082D18(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, int a10)
{
  v142 = a8;
  v137 = a7;
  v148 = a4;
  v147 = a3;
  v141 = a10;
  v14 = *(a5 + 8);
  v152 = *a5;
  v151 = v14;
  v15 = *(a5 + 24);
  v153 = *(a5 + 16);
  v155 = v15;
  v16 = *(a5 + 32);
  v17 = *(a5 + 40);
  v154 = sub_10009D9F0();
  v150 = *(v154 - 8);
  v18 = *(v150 + 64);
  v19 = __chkstk_darwin(v154);
  v135 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v132 - v22;
  v24 = __chkstk_darwin(v21);
  v140 = &v132 - v25;
  v26 = __chkstk_darwin(v24);
  v136 = &v132 - v27;
  __chkstk_darwin(v26);
  v144 = &v132 - v28;
  v29 = sub_10009DE60();
  sub_1000300B8(v29, v30, a1, a2);
  v32 = v31;

  v149 = a2;
  v139 = a1;
  if (v32)
  {
    v146 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v146 = sub_10009DDD0();
    v33 = v34;
  }

  v35 = a9;
  v36 = v155;
  v143 = v23;
  v145 = v33;
  if (a6)
  {
    v37 = v148;
    v138 = a9;
    if (v148)
    {
      v38 = a6;
      v39 = v37;
    }

    else
    {
      v61 = a6;
      v62 = [v61 description];
      v147 = sub_10009DD90();
      v39 = v63;
    }

    v64 = v144;

    v65 = [a6 code];
    v66 = 0xED0000726F727265;
    v67 = 0x206C6172656E6567;
    if (v65 == 12)
    {
      v68 = 12;
    }

    else
    {
      v68 = 11;
    }

    if (v65 == 12)
    {
      v67 = 0xD000000000000018;
      v66 = 0x80000001000A77D0;
    }

    if (v65 == 10)
    {
      v69 = 13;
    }

    else
    {
      v69 = v68;
    }

    if (v65 == 10)
    {
      v67 = 0xD000000000000019;
    }

    v155 = v67;
    if (v65 == 10)
    {
      v70 = 0x80000001000A77B0;
    }

    else
    {
      v70 = v66;
    }

    swift_bridgeObjectRetain_n();
    v71 = v149;
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v72 = a6;

    v73 = sub_10009D9E0();
    v74 = sub_10009DFD0();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v148 = v39;
      v76 = v75;
      *&v156 = swift_slowAlloc();
      *v76 = 136315906;
      *(v76 + 4) = sub_1000307A4(v146, v33, &v156);
      v77 = v69;
      *(v76 + 12) = 2080;
      v78 = sub_1000307A4(v147, v148, &v156);

      *(v76 + 14) = v78;
      *(v76 + 22) = 2080;
      v79 = sub_1000307A4(v155, v70, &v156);

      *(v76 + 24) = v79;
      *(v76 + 32) = 2080;
      v80 = v72;
      v81 = [v80 description];
      v82 = sub_10009DD90();
      v84 = v83;

      v85 = sub_1000307A4(v82, v84, &v156);
      v33 = v145;

      *(v76 + 34) = v85;
      _os_log_impl(&_mh_execute_header, v73, v74, "Error in %s %s, reporting as %s, NSError: %s", v76, 0x2Au);
      swift_arrayDestroy();

      v39 = v148;

      (*(v150 + 8))(v144, v154);
      v59 = 0;
      v53 = v139;
      v60 = v149;
      v36 = v147;
    }

    else
    {

      (*(v150 + 8))(v64, v154);
      v59 = 0;
      v53 = v139;
      v60 = v71;
      v36 = v147;
      v77 = v69;
    }
  }

  else
  {
    v39 = v16;
    v40 = v17;
    if (*(a5 + 40) == 255)
    {
      v59 = v153;
      v53 = v152;
      v60 = v151;
      v77 = v40;
      goto LABEL_37;
    }

    LODWORD(v144) = *(a5 + 40);
    v138 = a9;
    v41 = *(a5 + 16);
    v166 = *a5;
    v167 = v41;
    v168 = *(a5 + 32);
    sub_100032380(v152, v151, v153, v155, v16, v17);
    v42 = v135;
    sub_10009D9D0();
    v43 = v148;

    v44 = v33;
    sub_100008658(a5, &v156, &qword_1000CB088, &unk_1000A18F0);
    v45 = sub_10009D9E0();
    v46 = sub_10009DFD0();

    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
    v134 = v46;
    v47 = v46;
    v48 = v45;
    if (os_log_type_enabled(v45, v47))
    {
      v49 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v164 = v133;
      *v49 = 136315650;
      *(v49 + 4) = sub_1000307A4(v146, v44, &v164);
      *(v49 + 12) = 2080;
      if (v43)
      {
        v50 = v147;
      }

      else
      {
        v50 = 0;
      }

      if (v43)
      {
        v51 = v43;
      }

      else
      {
        v51 = 0xE000000000000000;
      }

      v52 = sub_1000307A4(v50, v51, &v164);

      *(v49 + 14) = v52;
      *(v49 + 22) = 2080;
      v156 = v166;
      v157 = v167;
      v158 = v168;
      v159 = v144;
      v53 = v152;
      v54 = v151;
      v55 = v153;
      sub_100032380(v152, v151, v153, v36, v39, v40);
      v56 = sub_10009DDA0();
      v58 = sub_1000307A4(v56, v57, &v164);

      *(v49 + 24) = v58;
      v36 = v155;
      _os_log_impl(&_mh_execute_header, v48, v134, "SharingError in %s %s, error: %s", v49, 0x20u);
      swift_arrayDestroy();

      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      (*(v150 + 8))(v135, v154);
      v59 = v55;
      v60 = v54;
    }

    else
    {
      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

      (*(v150 + 8))(v42, v154);
      v59 = v153;
      v53 = v152;
      v60 = v151;
    }

    sub_100032380(v53, v60, v59, v36, v39, v40);
    sub_100032380(v53, v60, v59, v36, v39, v40);
    v77 = v40;
    v33 = v145;
  }

  v35 = v138;
LABEL_37:
  v144 = 0x73736563637553;
  *(&v157 + 1) = type metadata accessor for SPIAnalyticsEvent();
  v158 = &off_1000C2CF0;
  v86 = sub_10008D654(&v156);
  v87 = *(v35 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v88 = *(v35 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  v89 = v142;
  *v86 = v142;
  v86[1] = v87;
  v86[2] = v88;
  v86[3] = v53;
  v86[4] = v60;
  v86[5] = v59;
  v155 = v36;
  v86[6] = v36;
  v86[7] = v39;
  LODWORD(v147) = v77;
  *(v86 + 64) = v77;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v156, &v162, &qword_1000CB798, &qword_1000A27F0);
  v153 = v59;
  v152 = v53;
  v151 = v60;
  if (v163)
  {
    v148 = v39;
    sub_10008D5D8(&v162, &v164);

    v90 = v89;
    v91 = v136;
    sub_10009D9D0();
    sub_10008D5F0(&v164, &v162);

    v92 = sub_10009D9E0();
    v93 = sub_10009DFF0();

    v94 = os_log_type_enabled(v92, v93);
    v95 = v150;
    if (v94)
    {
      v96 = swift_slowAlloc();
      v160[0] = swift_slowAlloc();
      *v96 = 136315394;
      *(v96 + 4) = sub_1000307A4(v146, v33, v160);
      *(v96 + 12) = 2080;
      sub_1000067C8(&v162, v163);
      v97 = sub_10003BB34();
      v98 = v91;
      v100 = v99;
      sub_10000670C(&v162);
      v101 = sub_1000307A4(v97, v100, v160);

      *(v96 + 14) = v101;
      _os_log_impl(&_mh_execute_header, v92, v93, "Finishing %s, sending event %s", v96, 0x16u);
      swift_arrayDestroy();

      v102 = *(v95 + 8);
      v102(v98, v154);
    }

    else
    {

      v102 = *(v95 + 8);
      v102(v91, v154);
      sub_10000670C(&v162);
    }

    v107 = v140;
    v108 = v149;
    v106 = v147;
    v109 = sub_1000067C8(&v164, v165);
    sub_100079DD8(v109);
    sub_10009D9D0();
    sub_10008D5F0(&v164, &v162);

    v110 = v137;
    v111 = sub_10009D9E0();
    v112 = sub_10009DFF0();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v113 = 136315650;
      v114 = *&v110[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v160[0] = *&v110[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v160[1] = v114;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v115 = sub_10009DDA0();
      v117 = v108;
      v118 = sub_1000307A4(v115, v116, &v161);

      *(v113 + 4) = v118;
      *(v113 + 12) = 2080;
      sub_1000067C8(&v162, v163);
      sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v119 = sub_10009DD10();
      v121 = v120;

      sub_10000670C(&v162);
      v122 = sub_1000307A4(v119, v121, &v161);

      *(v113 + 14) = v122;
      *(v113 + 22) = 2080;
      *(v113 + 24) = sub_1000307A4(v139, v117, &v161);
      _os_log_impl(&_mh_execute_header, v111, v112, "Requester: %s, event detail is: %s\n%s", v113, 0x20u);
      swift_arrayDestroy();

      v95 = v150;

      v102(v140, v154);
    }

    else
    {

      v102(v107, v154);
      sub_10000670C(&v162);
    }

    v105 = v143;
    v39 = v148;
    v33 = v145;
    sub_1000067C8(&v164, v165);
    v123 = sub_10003CCE4();
    v124 = 0x7272652068746957;
    if (!v123)
    {
      v124 = 0x73736563637553;
    }

    v144 = v124;
    if (v123)
    {
      v104 = 0xEA0000000000726FLL;
    }

    else
    {
      v104 = 0xE700000000000000;
    }

    sub_10000670C(&v164);
  }

  else
  {

    v103 = v89;
    sub_100008728(&v162, &qword_1000CB798, &qword_1000A27F0);
    v104 = 0xE700000000000000;
    v105 = v143;
    v106 = v147;
    v95 = v150;
  }

  sub_10009D9D0();

  v125 = sub_10009D9E0();
  v126 = sub_10009DFF0();

  if (os_log_type_enabled(v125, v126))
  {
    v127 = v39;
    v128 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    *v128 = 136315394;
    v129 = sub_1000307A4(v146, v33, &v164);

    *(v128 + 4) = v129;
    *(v128 + 12) = 2080;
    v130 = sub_1000307A4(v144, v104, &v164);

    *(v128 + 14) = v130;
    _os_log_impl(&_mh_execute_header, v125, v126, "Finished %s: %s.", v128, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v152, v151, v153, v155, v127, v147);
  }

  else
  {
    sub_10003C04C(v152, v151, v153, v155, v39, v106);
  }

  (*(v95 + 8))(v105, v154);
  return sub_100008728(&v156, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_100083E60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v50 - v12;
  v14 = sub_10009D9F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v17);
  v22 = &v50 - v21;
  if (a1 != 1)
  {
    if (a1)
    {
      sub_10009D9D0();

      v32 = sub_10009D9E0();
      v33 = sub_10009DFD0();

      if (os_log_type_enabled(v32, v33))
      {
        v54 = v14;
        v34 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v34 = 134218242;
        *(v34 + 4) = a1;
        *(v34 + 12) = 2080;
        v35 = sub_10009DE60();
        sub_1000300B8(v35, v36, a2, a3);
        v38 = v37;

        if (v38)
        {
          v39 = 0;
          v40 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v46 = sub_10009DDD0();
          v40 = v47;

          v39 = v46;
        }

        v48 = v54;
        v49 = sub_1000307A4(v39, v40, &v55);

        *(v34 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v32, v33, "Reply called too many (%lu) times in: %s. Behavior undefined.", v34, 0x16u);
        sub_10000670C(v53);

        return (*(v15 + 8))(v19, v48);
      }

      else
      {

        return (*(v15 + 8))(v19, v14);
      }
    }

    else
    {
      sub_10009D9D0();

      v23 = sub_10009D9E0();
      v24 = sub_10009DFD0();

      if (os_log_type_enabled(v23, v24))
      {
        v51 = v24;
        v52 = a5;
        v53 = a4;
        v54 = v14;
        v25 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v55 = v50;
        *v25 = 136315138;
        v26 = sub_10009DE60();
        sub_1000300B8(v26, v27, a2, a3);
        v29 = v28;

        if (v29)
        {
          v30 = 0;
          v31 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v41 = sub_10009DDD0();
          v31 = v42;

          v30 = v41;
        }

        v43 = sub_1000307A4(v30, v31, &v55);

        *(v25 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v23, v51, "Reply never called in: %s. Replying with defaults and internalError", v25, 0xCu);
        sub_10000670C(v50);

        (*(v15 + 8))(v22, v54);
        a4 = v53;
      }

      else
      {

        (*(v15 + 8))(v22, v14);
      }

      v44 = sub_10009D860();
      (*(*(v44 - 8) + 56))(v13, 1, 1, v44);
      v45 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
      (a4)(v13, 0, v45);

      return sub_100008728(v13, &qword_1000CA250, &qword_10009FDF8);
    }
  }

  return result;
}

void sub_100084378(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_10009D9F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  if (a1 != 1)
  {
    if (a1)
    {
      sub_10009D9D0();

      v27 = sub_10009D9E0();
      v28 = sub_10009DFD0();

      if (os_log_type_enabled(v27, v28))
      {
        v48 = v10;
        v29 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49 = v47;
        *v29 = 134218242;
        *(v29 + 4) = a1;
        *(v29 + 12) = 2080;
        v30 = sub_10009DE60();
        sub_1000300B8(v30, v31, a2, a3);
        v33 = v32;

        if (v33)
        {
          v34 = 0;
          v35 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v40 = sub_10009DDD0();
          v35 = v41;

          v34 = v40;
        }

        v42 = v48;
        v43 = sub_1000307A4(v34, v35, &v49);

        *(v29 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v27, v28, "Reply called too many (%lu) times in: %s. Behavior undefined.", v29, 0x16u);
        sub_10000670C(v47);

        (*(v11 + 8))(v15, v42);
      }

      else
      {

        (*(v11 + 8))(v15, v10);
      }
    }

    else
    {
      sub_10009D9D0();

      v18 = sub_10009D9E0();
      v19 = sub_10009DFD0();

      if (os_log_type_enabled(v18, v19))
      {
        v46 = a5;
        v47 = a4;
        v48 = v10;
        v20 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v49 = v45;
        *v20 = 136315138;
        v21 = sub_10009DE60();
        sub_1000300B8(v21, v22, a2, a3);
        v24 = v23;

        if (v24)
        {
          v25 = 0;
          v26 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v36 = sub_10009DDD0();
          v26 = v37;

          v25 = v36;
        }

        v38 = sub_1000307A4(v25, v26, &v49);

        *(v20 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v18, v19, "Reply never called in: %s. Replying with defaults and internalError", v20, 0xCu);
        sub_10000670C(v45);

        (*(v11 + 8))(v17, v48);
        a4 = v47;
      }

      else
      {

        (*(v11 + 8))(v17, v10);
      }

      v39 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
      (a4)(0, 0, v39);
    }
  }
}

void sub_1000847E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_10009D9F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  if (a1 != 1)
  {
    if (a1)
    {
      sub_10009D9D0();

      v27 = sub_10009D9E0();
      v28 = sub_10009DFD0();

      if (os_log_type_enabled(v27, v28))
      {
        v48 = v10;
        v29 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49 = v47;
        *v29 = 134218242;
        *(v29 + 4) = a1;
        *(v29 + 12) = 2080;
        v30 = sub_10009DE60();
        sub_1000300B8(v30, v31, a2, a3);
        v33 = v32;

        if (v33)
        {
          v34 = 0;
          v35 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v40 = sub_10009DDD0();
          v35 = v41;

          v34 = v40;
        }

        v42 = v48;
        v43 = sub_1000307A4(v34, v35, &v49);

        *(v29 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v27, v28, "Reply called too many (%lu) times in: %s. Behavior undefined.", v29, 0x16u);
        sub_10000670C(v47);

        (*(v11 + 8))(v15, v42);
      }

      else
      {

        (*(v11 + 8))(v15, v10);
      }
    }

    else
    {
      sub_10009D9D0();

      v18 = sub_10009D9E0();
      v19 = sub_10009DFD0();

      if (os_log_type_enabled(v18, v19))
      {
        v46 = a5;
        v47 = a4;
        v48 = v10;
        v20 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v49 = v45;
        *v20 = 136315138;
        v21 = sub_10009DE60();
        sub_1000300B8(v21, v22, a2, a3);
        v24 = v23;

        if (v24)
        {
          v25 = 0;
          v26 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v36 = sub_10009DDD0();
          v26 = v37;

          v25 = v36;
        }

        v38 = sub_1000307A4(v25, v26, &v49);

        *(v20 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v18, v19, "Reply never called in: %s. Replying with defaults and internalError", v20, 0xCu);
        sub_10000670C(v45);

        (*(v11 + 8))(v17, v48);
        a4 = v47;
      }

      else
      {

        (*(v11 + 8))(v17, v10);
      }

      v39 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
      (a4)(0, v39);
    }
  }
}

void sub_100084C4C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void), uint64_t *a5, uint64_t *a6)
{
  v12 = sub_10009D9F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v46 - v18;
  if (a1 != 1)
  {
    if (a1)
    {
      sub_10009D9D0();

      v29 = sub_10009D9E0();
      v30 = sub_10009DFD0();

      if (os_log_type_enabled(v29, v30))
      {
        v49 = v12;
        v31 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v50 = v48;
        *v31 = 134218242;
        *(v31 + 4) = a1;
        *(v31 + 12) = 2080;
        v32 = sub_10009DE60();
        sub_1000300B8(v32, v33, a2, a3);
        v35 = v34;

        if (v35)
        {
          v36 = 0;
          v37 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v42 = sub_10009DDD0();
          v37 = v43;

          v36 = v42;
        }

        v44 = v49;
        v45 = sub_1000307A4(v36, v37, &v50);

        *(v31 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v29, v30, "Reply called too many (%lu) times in: %s. Behavior undefined.", v31, 0x16u);
        sub_10000670C(v48);

        (*(v13 + 8))(v17, v44);
      }

      else
      {

        (*(v13 + 8))(v17, v12);
      }
    }

    else
    {
      sub_10009D9D0();

      v20 = sub_10009D9E0();
      v21 = sub_10009DFD0();

      if (os_log_type_enabled(v20, v21))
      {
        v46[1] = a5;
        v47 = a4;
        v48 = a6;
        v49 = v12;
        v22 = swift_slowAlloc();
        v46[0] = swift_slowAlloc();
        v50 = v46[0];
        *v22 = 136315138;
        v23 = sub_10009DE60();
        sub_1000300B8(v23, v24, a2, a3);
        v26 = v25;

        if (v26)
        {
          v27 = 0;
          v28 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v38 = sub_10009DDD0();
          v28 = v39;

          v27 = v38;
        }

        a4 = v47;
        v40 = sub_1000307A4(v27, v28, &v50);

        *(v22 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v20, v21, "Reply never called in: %s. Replying with defaults and internalError", v22, 0xCu);
        sub_10000670C(v46[0]);

        (*(v13 + 8))(v19, v49);
      }

      else
      {

        (*(v13 + 8))(v19, v12);
      }

      v41 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
      a4(0, v41);
    }
  }
}

uint64_t sub_1000850B8(uint64_t a1)
{
  v1[15] = a1;
  v2 = *(*(sub_100003714(&qword_1000CA8F0, &qword_1000A09C8) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v3 = sub_10009D9F0();
  v1[17] = v3;
  v4 = *(v3 - 8);
  v1[18] = v4;
  v5 = *(v4 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = sub_10009DF10();
  v1[24] = sub_10009DF00();
  v7 = sub_10009DED0();
  v1[25] = v7;
  v1[26] = v6;

  return _swift_task_switch(sub_10008520C, v7, v6);
}

uint64_t sub_10008520C()
{
  v1 = v0[22];
  sub_10009D9D0();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "running fetchShareAndToleratePreshareErrors() for SPI", v4, 2u);
  }

  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[17];
  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];

  v11 = *(v8 + 8);
  v0[27] = v11;
  v11(v6, v7);
  sub_10009DF20();
  v12 = sub_10009DF40();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);

  v13 = sub_10009DF00();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v10;
  v15 = sub_10004CDF4(0, 0, v9, &unk_1000A2910, v14);
  v0[28] = v15;
  v16 = async function pointer to Task.value.getter[1];
  v17 = swift_task_alloc();
  v0[29] = v17;
  v18 = sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  v0[30] = v18;
  *v17 = v0;
  v17[1] = sub_100085438;

  return Task.value.getter(v18, v15, &type metadata for () + 8, v18, &protocol self-conformance witness table for Error);
}

uint64_t sub_100085438()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_100085628;
  }

  else
  {
    v7 = sub_100085574;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100085574()
{
  v1 = v0[28];
  v2 = v0[24];

  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[16];

  v8 = v0[1];
  v9 = v0[31] == 0;

  return v8(v9);
}

uint64_t sub_100085628()
{
  v112 = v0;
  *(v0 + 112) = *(v0 + 248);
  v1 = *(v0 + 240);
  swift_errorRetain();
  v2 = swift_dynamicCast();
  v3 = *(v0 + 248);
  if (!v2)
  {
    v18 = *(v0 + 224);
    v19 = *(v0 + 192);

    v20 = *(v0 + 112);

    sub_100005B1C();
    swift_allocError();
    *v21 = 0xD00000000000002BLL;
    *(v21 + 8) = 0x80000001000A7B90;
    *(v21 + 16) = xmmword_1000A2500;
    *(v21 + 32) = 0x80000001000A7BC0;
    *(v21 + 40) = 11;
    swift_willThrow();

LABEL_45:
    v98 = *(v0 + 168);
    v97 = *(v0 + 176);
    v100 = *(v0 + 152);
    v99 = *(v0 + 160);
    v101 = *(v0 + 128);

    v91 = *(v0 + 8);
    v92 = 0;
    goto LABEL_46;
  }

  v4 = *(v0 + 248);

  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 256) = v7;
  *(v0 + 264) = v6;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  *(v0 + 272) = v9;
  *(v0 + 280) = v8;
  v10 = *(v0 + 48);
  *(v0 + 288) = v10;
  v11 = *(v0 + 56);
  v110 = v9;
  if (v11 != 5)
  {
    v22 = *(v0 + 192);
    v23 = *(v0 + 152);

    sub_10009D9D0();
    sub_100032380(v7, v6, v9, v8, v10, v11);
    v24 = sub_10009D9E0();
    v25 = sub_10009DFD0();
    sub_1000323E0(v7, v6, v9, v8, v10, v11);
    v106 = v25;
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 216);
    v107 = *(v0 + 144);
    v28 = *(v0 + 136);
    v108 = v28;
    v109 = *(v0 + 152);
    if (v26)
    {
      v29 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v111 = v102;
      *v29 = 136315138;
      *(v0 + 64) = v7;
      *(v0 + 72) = v6;
      *(v0 + 80) = v9;
      *(v0 + 88) = v8;
      *(v0 + 96) = v10;
      *(v0 + 104) = v11;
      sub_100032380(v7, v6, v9, v8, v10, v11);
      v30 = sub_10009DDA0();
      v32 = v6;
      v33 = v7;
      v34 = sub_1000307A4(v30, v31, &v111);

      *(v29 + 4) = v34;
      v7 = v33;
      _os_log_impl(&_mh_execute_header, v24, v106, "fetchShareAndToleratePreshareErrors error: %s", v29, 0xCu);
      sub_10000670C(v102);

      v27(v109, v108);
    }

    else
    {

      v27(v109, v108);
      v32 = v6;
    }

    v35 = *(v0 + 224);
    sub_100005B1C();
    swift_allocError();
    *v36 = 0xD00000000000002BLL;
    *(v36 + 8) = 0x80000001000A7B90;
    *(v36 + 16) = xmmword_1000A2510;
    *(v36 + 32) = 0x80000001000A7C10;
    *(v36 + 40) = 11;
    swift_willThrow();

    v37 = v7;
    v38 = v32;
    v39 = v110;
    v40 = v8;
    v41 = v10;
    v42 = v11;
    goto LABEL_44;
  }

  if (!v9)
  {
    __break(1u);
    return result;
  }

  v103 = v10;

  v12 = v9;
  v105 = v6;

  v13 = [v12 domain];
  v14 = sub_10009DD90();
  v16 = v15;

  v104 = v7;
  if (v14 == sub_10009DD90() && v16 == v17)
  {
  }

  else
  {
    v43 = sub_10009E2E0();

    if ((v43 & 1) == 0)
    {

      goto LABEL_16;
    }
  }

  v44 = [v12 code];

  if (v44 == 20)
  {
    v45 = 1;
    goto LABEL_22;
  }

LABEL_16:
  v46 = v12;
  v47 = [v46 domain];
  v48 = sub_10009DD90();
  v50 = v49;

  if (v48 == sub_10009DD90() && v50 == v51)
  {
  }

  else
  {
    v52 = sub_10009E2E0();

    if ((v52 & 1) == 0)
    {

      v45 = 0;
      goto LABEL_22;
    }
  }

  v53 = [v46 code];

  v45 = v53 == 7;
LABEL_22:
  v54 = v12;
  v55 = [v54 domain];
  v56 = sub_10009DD90();
  v58 = v57;

  if (v56 == sub_10009DD90() && v58 == v59)
  {
  }

  else
  {
    v60 = sub_10009E2E0();

    if ((v60 & 1) == 0)
    {

      v62 = 2;
      goto LABEL_30;
    }
  }

  v61 = [v54 code];

  if (v61 == 20)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

LABEL_30:
  v63 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 57) != 3)
  {
    v64 = *(v0 + 120);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 58) = v62;

    sub_10009DB00();
  }

  v65 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v66 = *(v0 + 59);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 60) == 1 && v66 == 1)
  {
    v67 = v110;
    if (v45)
    {
      v68 = *(v0 + 168);
      sub_10009D9D0();
      v69 = sub_10009D9E0();
      v70 = sub_10009DFF0();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "starting folder sharing prep", v71, 2u);
      }

      v72 = *(v0 + 216);
      v73 = *(v0 + 168);
      v74 = *(v0 + 136);
      v75 = *(v0 + 144);

      v72(v73, v74);
      v76 = swift_task_alloc();
      *(v0 + 296) = v76;
      *v76 = v0;
      v76[1] = sub_10008604C;
      v77 = *(v0 + 120);

      return sub_100026B34(0);
    }

    v93 = *(v0 + 192);

    goto LABEL_43;
  }

  v78 = *(v0 + 192);

  v67 = v110;
  if (!v45)
  {
LABEL_43:
    v94 = *(v0 + 224);
    sub_100005B1C();
    swift_allocError();
    *v95 = v104;
    *(v95 + 8) = v105;
    *(v95 + 16) = v67;
    *(v95 + 24) = v8;
    *(v95 + 32) = v103;
    *(v95 + 40) = 5;
    swift_willThrow();

    v37 = v104;
    v38 = v105;
    v39 = v67;
    v40 = v8;
    v41 = v103;
    v42 = 5;
LABEL_44:
    sub_1000323E0(v37, v38, v39, v40, v41, v42);
    v96 = *(v0 + 112);

    goto LABEL_45;
  }

  v79 = *(v0 + 280);
  v80 = *(v0 + 288);
  v82 = *(v0 + 264);
  v81 = *(v0 + 272);
  v83 = *(v0 + 256);
  v84 = *(v0 + 224);

  sub_1000323E0(v83, v82, v81, v79, v80, 5u);
  v85 = *(v0 + 112);

  v87 = *(v0 + 168);
  v86 = *(v0 + 176);
  v89 = *(v0 + 152);
  v88 = *(v0 + 160);
  v90 = *(v0 + 128);

  v91 = *(v0 + 8);
  v92 = *(v0 + 248) == 0;
LABEL_46:

  return v91(v92);
}