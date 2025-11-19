uint64_t sub_1000382A0(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 176) = a3;
  *(v4 + 184) = a4;
  *(v4 + 168) = a2;
  *(v4 + 160) = a1;
  v5 = sub_10009D9F0();
  *(v4 + 192) = v5;
  v6 = *(v5 - 8);
  *(v4 + 200) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  sub_10009DF10();
  *(v4 + 216) = sub_10009DF00();
  v9 = sub_10009DED0();
  *(v4 + 224) = v9;
  *(v4 + 232) = v8;

  return _swift_task_switch(sub_10003839C, v9, v8);
}

uint64_t sub_10003839C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  *(v0 + 264) = sub_10009D830();
  v5 = objc_allocWithZone(QLThumbnailGenerationRequest);
  sub_10009D800(v6);
  v8 = v7;
  v9 = [v5 initWithFileAtURL:v7 size:-1 scale:v3 representationTypes:{v2, v1}];
  *(v0 + 240) = v9;

  v10 = [objc_opt_self() sharedGenerator];
  *(v0 + 248) = v10;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100038558;
  v11 = swift_continuation_init();
  *(v0 + 136) = sub_100003714(&unk_1000CAD60, &qword_1000A0F60);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10003A8C8;
  *(v0 + 104) = &unk_1000C2920;
  *(v0 + 112) = v11;
  [v10 generateBestRepresentationForRequest:v9 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100038558()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_100038748;
  }

  else
  {
    v6 = sub_100038688;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100038688()
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
    sub_10009D810();
  }

  v8 = *(v0 + 208);

  v9 = *(v0 + 8);

  return v9(v6);
}

uint64_t sub_100038748()
{
  v27 = v0;
  v1 = *(v0 + 256);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);

  swift_willThrow();
  sub_10009D9D0();
  swift_errorRetain();
  v4 = sub_10009D9E0();
  v5 = sub_10009DFD0();

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
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v11 = sub_10009DDA0();
    v13 = sub_1000307A4(v11, v12, &v26);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "generateBestRepresentation throws error: %s", v9, 0xCu);
    sub_10000670C(v10);

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
    sub_10009D810();
  }

  v20 = *(v0 + 208);

  v21 = *(v0 + 8);

  return v21(0);
}

unint64_t sub_100038978()
{
  sub_100003714(&qword_1000CA288, &qword_10009FFC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A04A0;
  *(inited + 32) = 7;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v69._countAndFlagsBits = 0x80000001000A5DA0;
  v82._object = 0x80000001000A5D40;
  v82._countAndFlagsBits = 0xD00000000000005DLL;
  v95.value._countAndFlagsBits = 0;
  v95.value._object = 0;
  v3.super.isa = v2;
  v108._countAndFlagsBits = 0;
  v108._object = 0xE000000000000000;
  v4 = sub_10009D680(v82, v95, v3, v108, v69);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 8;
  v7 = [v1 mainBundle];
  v70._countAndFlagsBits = 0x80000001000A5E30;
  v83._countAndFlagsBits = 0xD00000000000005FLL;
  v83._object = 0x80000001000A5DD0;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v8.super.isa = v7;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  v9 = sub_10009D680(v83, v96, v8, v109, v70);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 9;
  v12 = [v1 mainBundle];
  v71._countAndFlagsBits = 0x80000001000A5ED0;
  v84._object = 0x80000001000A5E70;
  v84._countAndFlagsBits = 0xD00000000000005DLL;
  v97.value._countAndFlagsBits = 0;
  v97.value._object = 0;
  v13.super.isa = v12;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  v14 = sub_10009D680(v84, v97, v13, v110, v71);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 10;
  v17 = [v1 mainBundle];
  v72._countAndFlagsBits = 0x80000001000A5F70;
  v85._countAndFlagsBits = 0xD000000000000062;
  v85._object = 0x80000001000A5F00;
  v98.value._countAndFlagsBits = 0;
  v98.value._object = 0;
  v18.super.isa = v17;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v19 = sub_10009D680(v85, v98, v18, v111, v72);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 11;
  v22 = [v1 mainBundle];
  v73._countAndFlagsBits = 0x80000001000A6010;
  v86._countAndFlagsBits = 0xD00000000000005ELL;
  v86._object = 0x80000001000A5FB0;
  v99.value._countAndFlagsBits = 0;
  v99.value._object = 0;
  v23.super.isa = v22;
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  v24 = sub_10009D680(v86, v99, v23, v112, v73);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  *(inited + 152) = 0;
  v27 = [v1 mainBundle];
  v74._countAndFlagsBits = 0x80000001000A6040;
  v87._countAndFlagsBits = 0xD00000000000005FLL;
  v87._object = 0x80000001000A5DD0;
  v100.value._countAndFlagsBits = 0;
  v100.value._object = 0;
  v28.super.isa = v27;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  v29 = sub_10009D680(v87, v100, v28, v113, v74);
  v31 = v30;

  *(inited + 160) = v29;
  *(inited + 168) = v31;
  *(inited + 176) = 1;
  v32 = [v1 mainBundle];
  v75._countAndFlagsBits = 0x80000001000A60E0;
  v88._countAndFlagsBits = 0xD000000000000061;
  v88._object = 0x80000001000A6070;
  v101.value._countAndFlagsBits = 0;
  v101.value._object = 0;
  v33.super.isa = v32;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v34 = sub_10009D680(v88, v101, v33, v114, v75);
  v36 = v35;

  *(inited + 184) = v34;
  *(inited + 192) = v36;
  *(inited + 200) = 2;
  v37 = [v1 mainBundle];
  v76._countAndFlagsBits = 0x80000001000A6180;
  v89._countAndFlagsBits = 0xD000000000000064;
  v89._object = 0x80000001000A6110;
  v102.value._countAndFlagsBits = 0;
  v102.value._object = 0;
  v38.super.isa = v37;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v39 = sub_10009D680(v89, v102, v38, v115, v76);
  v41 = v40;

  *(inited + 208) = v39;
  *(inited + 216) = v41;
  *(inited + 224) = 3;
  v42 = [v1 mainBundle];
  v77._countAndFlagsBits = 0x80000001000A6230;
  v90._countAndFlagsBits = 0xD000000000000065;
  v90._object = 0x80000001000A61C0;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v43.super.isa = v42;
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  v44 = sub_10009D680(v90, v103, v43, v116, v77);
  v46 = v45;

  *(inited + 232) = v44;
  *(inited + 240) = v46;
  *(inited + 248) = 4;
  v47 = [v1 mainBundle];
  v78._countAndFlagsBits = 0x80000001000A62D0;
  v91._countAndFlagsBits = 0xD00000000000005ELL;
  v91._object = 0x80000001000A6270;
  v104.value._countAndFlagsBits = 0;
  v104.value._object = 0;
  v48.super.isa = v47;
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  v49 = sub_10009D680(v91, v104, v48, v117, v78);
  v51 = v50;

  *(inited + 256) = v49;
  *(inited + 264) = v51;
  *(inited + 272) = 5;
  v52 = [v1 mainBundle];
  v79._countAndFlagsBits = 0x80000001000A6360;
  v92._countAndFlagsBits = 0xD00000000000005ELL;
  v92._object = 0x80000001000A6300;
  v105.value._countAndFlagsBits = 0;
  v105.value._object = 0;
  v53.super.isa = v52;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v54 = sub_10009D680(v92, v105, v53, v118, v79);
  v56 = v55;

  *(inited + 280) = v54;
  *(inited + 288) = v56;
  *(inited + 296) = 6;
  v57 = [v1 mainBundle];
  v93._countAndFlagsBits = 0xD00000000000005CLL;
  v80._countAndFlagsBits = 0x80000001000A63F0;
  v93._object = 0x80000001000A6390;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v58.super.isa = v57;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v59 = sub_10009D680(v93, v106, v58, v119, v80);
  v61 = v60;

  *(inited + 304) = v59;
  *(inited + 312) = v61;
  *(inited + 320) = 13;
  v62 = [v1 mainBundle];
  v81._countAndFlagsBits = 0x80000001000A6480;
  v94._object = 0x80000001000A6420;
  v94._countAndFlagsBits = 0xD00000000000005DLL;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v63.super.isa = v62;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v64 = sub_10009D680(v94, v107, v63, v120, v81);
  v66 = v65;

  *(inited + 328) = v64;
  *(inited + 336) = v66;
  v67 = sub_100031504(inited);
  swift_setDeallocating();
  sub_100003714(qword_1000CA290, &qword_10009FFD0);
  swift_arrayDestroy();
  return v67;
}

_OWORD *sub_100039068(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10003909C@<X0>(void *a1@<X8>)
{
  result = sub_10009DC20();
  *a1 = v3;
  return result;
}

unint64_t sub_1000390F0()
{
  result = qword_1000CAB28;
  if (!qword_1000CAB28)
  {
    sub_10000594C(&qword_1000CA250, &qword_10009FDF8);
    sub_1000391A4(&qword_1000CAB30, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB28);
  }

  return result;
}

uint64_t sub_1000391A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000391EC()
{
  result = qword_1000CAB40;
  if (!qword_1000CAB40)
  {
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB40);
  }

  return result;
}

uint64_t sub_100039270()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000392B0()
{
  result = qword_1000CAB80;
  if (!qword_1000CAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB80);
  }

  return result;
}

uint64_t sub_100039304(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000037C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100039358@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, *(a1 + 1));
  *a2 = result;
  return result;
}

unint64_t sub_100039390()
{
  result = qword_1000CABD8;
  if (!qword_1000CABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CABD8);
  }

  return result;
}

unint64_t sub_1000393E4()
{
  result = qword_1000CABF0;
  if (!qword_1000CABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CABF0);
  }

  return result;
}

unint64_t sub_100039438()
{
  result = qword_1000CAC08;
  if (!qword_1000CAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAC08);
  }

  return result;
}

unint64_t sub_10003948C()
{
  result = qword_1000CAC18;
  if (!qword_1000CAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAC18);
  }

  return result;
}

uint64_t sub_1000394E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039520(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  return sub_10001B1E8(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100039528(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], *(a1 + 1), a1[16], a1[17], *(a1 + 3));
}

uint64_t sub_100039588(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1000395BC(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1000395F0(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_10003961C()
{
  result = qword_1000CAC60;
  if (!qword_1000CAC60)
  {
    sub_10000594C(&qword_1000CA6C0, &qword_1000A0578);
    sub_100039304(&qword_1000CAC68, &qword_1000CA6B0, UIImage_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAC60);
  }

  return result;
}

uint64_t sub_1000396CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100039704(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 2);
  v11 = v4[3];
  v12 = v4[4];
  v13 = *(v4 + 5);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1000397E4;

  return sub_10001FB70(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_1000397E4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000398E0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000841C;

  return sub_1000208A8(a1, a2, v7);
}

unint64_t sub_1000399B0()
{
  result = qword_1000CACB8;
  if (!qword_1000CACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CACB8);
  }

  return result;
}

unint64_t sub_100039A04()
{
  result = qword_1000CACD0;
  if (!qword_1000CACD0)
  {
    sub_10000594C(&qword_1000CACD8, &qword_1000A0EB0);
    sub_100039304(&qword_1000CACE0, &qword_1000CACE8, CKContainerSetupInfo_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CACD0);
  }

  return result;
}

unint64_t sub_100039AB4()
{
  result = qword_1000CAD20;
  if (!qword_1000CAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAD20);
  }

  return result;
}

uint64_t sub_100039B10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000594C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100039B58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000093DC;

  return sub_100020EA0(a1, v4, v5, v6);
}

uint64_t sub_100039C0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000093DC;

  return sub_1000305B4(a1, v5);
}

uint64_t sub_100039CC4()
{
  v1 = sub_100003714(&qword_1000CAD50, &qword_1000A0EF8);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = sub_10009D860();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100039E10(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100003714(&qword_1000CAD50, &qword_1000A0EF8) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100019674(a1, a2, v6, v7, v8);
}

uint64_t sub_100039EA0()
{
  v1 = sub_100003714(&qword_1000CAD50, &qword_1000A0EF8);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  v7 = v0 + v3;
  v8 = sub_10009D860();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16, v2 | 7);
}

uint64_t sub_10003A00C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003714(&qword_1000CAD50, &qword_1000A0EF8) - 8);
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
  v14[1] = sub_1000093DC;

  return sub_100019884(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_10003A168(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10003A174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000841C;

  return sub_10002E4A4(a1, v4, v5, v6);
}

uint64_t sub_10003A228()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (v5)
  {
    v2 = [v5 _copyWithoutPersonalInfo];
    sub_1000194F8();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100005B1C();
    swift_allocError();
    *v4 = 0xD000000000000024;
    *(v4 + 8) = 0x80000001000A65E0;
    *(v4 + 16) = xmmword_1000A0430;
    *(v4 + 32) = 0x80000001000A6610;
    *(v4 + 40) = 11;
    return swift_willThrow();
  }
}

uint64_t sub_10003A35C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000093DC;

  return sub_10001F89C(a1, v4, v5, v6, v7);
}

uint64_t sub_10003A560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000093DC;

  return sub_10001EAA4(a1, v4, v5, v6);
}

uint64_t sub_10003A614()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000093DC;

  return sub_10001DDC4();
}

uint64_t sub_10003A6C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10003A714()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000093DC;

  return sub_10001BFF4();
}

uint64_t *sub_10003A8E4@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_10003A964@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_10003A9A4()
{
  v1 = *v0;
  sub_10009E380();
  sub_10009E390(v1);
  return sub_10009E3A0();
}

Swift::Int sub_10003A9EC()
{
  v1 = *v0;
  sub_10009E380();
  sub_10009E390(v1);
  return sub_10009E3A0();
}

uint64_t sub_10003AA40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__showingAlert;
  v4 = sub_100003714(&qword_1000CAAC8, &unk_1000A1870);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__showingAlertBool;
  v6 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanAccessPermissions;
  v9 = sub_100003714(&qword_1000CB028, &qword_1000A1880);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanAccessPermissionSelected;
  v11 = sub_100003714(&qword_1000CB030, &qword_1000A1888);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__readWritePermissions;
  v13 = sub_100003714(&qword_1000CB038, &qword_1000A1890);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__readWritePermissionSelected;
  v15 = sub_100003714(&qword_1000CB040, &qword_1000A1898);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanAddPeoplePermissions;
  v17 = sub_100003714(&qword_1000CB048, &qword_1000A18A0);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanAddPeoplePermissionSelected;
  v19 = sub_100003714(&qword_1000CB050, &qword_1000A18A8);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v7(v0 + OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__anyoneCanAddPeople, v6);
  v20 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanRequestAccessPermissions;
  v21 = sub_100003714(&qword_1000CB058, &qword_1000A18B0);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanRequestAccessSelected;
  v23 = sub_100003714(&qword_1000CB060, &qword_1000A18B8);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__localizedPermissionSummary;
  v25 = sub_100003714(&qword_1000CAA80, &qword_1000A18C0);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v7(v0 + OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__shouldShowSharingOptionsView, v6);
  v26 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__didTapCopyLink;
  v27 = sub_100003714(&qword_1000CB068, &qword_1000A18C8);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  v7(v0 + OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__savingInProgress, v6);
  return v0;
}

uint64_t sub_10003AE68()
{
  sub_10003AA40();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GlobalPermissionViewModel()
{
  result = qword_1000CAE50;
  if (!qword_1000CAE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003AF14()
{
  sub_100032004(319, &qword_1000CA658, &qword_1000CA660, &qword_1000A1300);
  if (v1 <= 0x3F)
  {
    v25 = *(v0 - 8) + 64;
    sub_100031F60(319, &qword_1000CA610);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_100032004(319, &qword_1000CAE60, &qword_1000CAE68, &qword_1000A1308);
      if (v6 <= 0x3F)
      {
        v26 = *(v5 - 8) + 64;
        sub_100031F60(319, &qword_1000CAE70);
        if (v8 <= 0x3F)
        {
          v27 = *(v7 - 8) + 64;
          sub_100032004(319, &qword_1000CAE78, &qword_1000CAE80, &qword_1000A1310);
          if (v10 <= 0x3F)
          {
            v28 = *(v9 - 8) + 64;
            sub_100031F60(319, &qword_1000CAE88);
            if (v12 <= 0x3F)
            {
              v29 = *(v11 - 8) + 64;
              sub_100032004(319, &qword_1000CAE90, &qword_1000CAE98, &qword_1000A1318);
              if (v14 <= 0x3F)
              {
                v30 = *(v13 - 8) + 64;
                sub_100031F60(319, &qword_1000CAEA0);
                if (v16 <= 0x3F)
                {
                  v31 = *(v15 - 8) + 64;
                  sub_100032004(319, &qword_1000CAEA8, &qword_1000CAEB0, &qword_1000A1320);
                  if (v18 <= 0x3F)
                  {
                    v32 = *(v17 - 8) + 64;
                    sub_100031F60(319, &qword_1000CAEB8);
                    if (v20 <= 0x3F)
                    {
                      v33 = *(v19 - 8) + 64;
                      sub_100031F60(319, &qword_1000CA6C8);
                      if (v22 <= 0x3F)
                      {
                        v34 = *(v21 - 8) + 64;
                        sub_100032004(319, &qword_1000CAEC0, &unk_1000CAEC8, &qword_1000A1328);
                        if (v24 <= 0x3F)
                        {
                          v35 = *(v23 - 8) + 64;
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

uint64_t getEnumTagSinglePayload for SharingMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003B674()
{
  result = qword_1000CAFC8;
  if (!qword_1000CAFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAFC8);
  }

  return result;
}

unint64_t sub_10003B6C8()
{
  result = qword_1000CAFD0;
  if (!qword_1000CAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAFD0);
  }

  return result;
}

unint64_t sub_10003B77C()
{
  result = qword_1000CAFE0;
  if (!qword_1000CAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAFE0);
  }

  return result;
}

unint64_t sub_10003B7D0()
{
  result = qword_1000CAFE8;
  if (!qword_1000CAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAFE8);
  }

  return result;
}

unint64_t sub_10003B884()
{
  result = qword_1000CAFF8;
  if (!qword_1000CAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAFF8);
  }

  return result;
}

unint64_t sub_10003B8D8()
{
  result = qword_1000CB000;
  if (!qword_1000CB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB000);
  }

  return result;
}

uint64_t sub_10003B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10003B9C8()
{
  result = qword_1000CB010;
  if (!qword_1000CB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB010);
  }

  return result;
}

unint64_t sub_10003BA1C()
{
  result = qword_1000CB018;
  if (!qword_1000CB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB018);
  }

  return result;
}

uint64_t sub_10003BAA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000594C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003BB34()
{
  v1 = type metadata accessor for SPIAnalyticsEvent();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003BF8C(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = sub_100003714(&qword_1000CB078, &qword_1000A18E0);
      v15 = *&v4[v14[20]];

      v16 = *&v4[v14[24] + 8];

      v17 = &v4[v14[28]];
      sub_10003C04C(*v17, *(v17 + 1), *(v17 + 2), *(v17 + 3), *(v17 + 4), v17[40]);
      v18 = sub_10009D860();
      (*(*(v18 - 8) + 8))(v4, v18);
      result = 0xD000000000000029;
      break;
    case 2u:
    case 3u:
    case 8u:
    case 0xDu:
      sub_10003BFF0(v4);
      result = 0xD00000000000002BLL;
      break;
    case 4u:
    case 6u:
      sub_10003BFF0(v4);
      result = 0xD000000000000030;
      break;
    case 5u:
    case 0xAu:
      sub_10003BFF0(v4);
      result = 0xD000000000000026;
      break;
    case 7u:
    case 9u:
      sub_10003BFF0(v4);
      result = 0xD000000000000022;
      break;
    case 0xBu:
      sub_10003BFF0(v4);
      result = 0xD000000000000036;
      break;
    case 0xCu:
      v10 = sub_100003714(&qword_1000CB070, &unk_1000A18D0);

      v11 = *&v4[v10[24]];

      v12 = *&v4[v10[28] + 8];

      v13 = &v4[v10[32]];
      sub_10003C04C(*v13, *(v13 + 1), *(v13 + 2), *(v13 + 3), *(v13 + 4), v13[40]);
      sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
      result = 0xD000000000000038;
      break;
    case 0xEu:
      sub_10003BFF0(v4);
      goto LABEL_4;
    default:
      v5 = sub_100003714(&qword_1000CB080, &qword_1000A18E8);
      v6 = *&v4[*(v5 + 64) + 8];

      v7 = &v4[*(v5 + 80)];
      sub_10003C04C(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4), v7[40]);
      v8 = sub_10009D860();
      (*(*(v8 - 8) + 8))(v4, v8);
LABEL_4:
      result = 0xD000000000000028;
      break;
  }

  return result;
}

uint64_t type metadata accessor for SPIAnalyticsEvent()
{
  result = qword_1000CB100;
  if (!qword_1000CB100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003BF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SPIAnalyticsEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BFF0(uint64_t a1)
{
  v2 = type metadata accessor for SPIAnalyticsEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003C04C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_1000323E0(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

void *sub_10003C060()
{
  v1 = v0;
  v2 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v119 - v4;
  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SPIAnalyticsEvent();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003BF8C(v1, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v99 = sub_100003714(&qword_1000CB078, &qword_1000A18E0);
      v100 = v99[12];
      v101 = v99[16];
      v102 = *&v14[v99[20]];
      v103 = &v14[v99[24]];
      v104 = v103[1];
      v119 = *v103;
      v105 = &v14[v99[28]];
      v106 = *(v105 + 1);
      v121 = *v105;
      v122[0] = v106;
      *(v122 + 9) = *(v105 + 25);
      v107 = v105[40];
      v108 = v14[v100];
      v109 = v14[v101];
      (*(v7 + 32))(v10, v14, v6);
      (*(v7 + 16))(v5, v10, v6);
      (*(v7 + 56))(v5, 0, 1, v6);
      sub_10009339C(v108, v107 != 255);
      sub_100093528(v109, v107 != 255);
      sub_100093698(v108, v102);
      v110 = sub_100092CB8(v5, 0, v119, v104, &v121, 0, 0xE000000000000000);

      isa = sub_10009DF90().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120 = v110;
      sub_10003D290(isa, 0x737365636361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
      v113 = v120;
      v114 = sub_10009DF90().super.super.isa;
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v113;
      sub_10003D290(v114, 0x697373696D726570, 0xEB00000000736E6FLL, v115);
      v116 = v120;
      v117 = sub_10009DF90().super.super.isa;
      v118 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v116;
      sub_10003D290(v117, 0x766E49776F6C6C61, 0xED0000676E697469, v118);
      sub_100008728(&v121, &qword_1000CB088, &unk_1000A18F0);
      v20 = v120;
      sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
      goto LABEL_15;
    case 2u:
      v57 = *(v14 + 1);
      v119 = *v14;
      v59 = *(v14 + 3);
      v58 = *(v14 + 4);
      v60 = *(v14 + 5);
      v61 = *(v14 + 4);
      v121 = *(v14 + 3);
      v122[0] = v61;
      *(v122 + 9) = *(v14 + 73);
      v62 = v14[88];
      v63 = v14[16];
      v64 = v14[17];
      (*(v7 + 56))(v5, 1, 1, v6);
      sub_10009339C(v63, v62 != 255);
      sub_100093528(v64, v62 != 255);
      sub_100093698(v63, v59);
      v65 = sub_100092CB8(v5, 0, v58, v60, &v121, v119, v57);

      v66 = sub_10009DF90().super.super.isa;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v65;
      sub_10003D290(v66, 0x737365636361, 0xE600000000000000, v67);
      v68 = v120;
      v69 = sub_10009DF90().super.super.isa;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v68;
      sub_10003D290(v69, 0x697373696D726570, 0xEB00000000736E6FLL, v70);
      v71 = v120;
      goto LABEL_9;
    case 3u:
      v72 = *(v14 + 1);
      v73 = *(v14 + 2);
      v74 = *(v14 + 3);
      v75 = *(v14 + 3);
      v121 = *(v14 + 2);
      v122[0] = v75;
      *(v122 + 9) = *(v14 + 57);
      v76 = v14[72];
      v77 = *v14;
      v78 = v14[1];
      (*(v7 + 56))(v5, 1, 1, v6);
      sub_10009339C(v77, v76 != 255);
      sub_100093528(v78, v76 != 255);
      sub_100093698(v77, v72);
      v79 = sub_100092CB8(v5, 0, v73, v74, &v121, 0, 0xE000000000000000);

      v80 = sub_10009DF90().super.super.isa;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v79;
      sub_10003D290(v80, 0x737365636361, 0xE600000000000000, v81);
      v82 = v120;
      v83 = sub_10009DF90().super.super.isa;
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v82;
      sub_10003D290(v83, 0x697373696D726570, 0xEB00000000736E6FLL, v84);
      v71 = v120;
LABEL_9:
      v85 = sub_10009DF90().super.super.isa;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v71;
      sub_10003D290(v85, 0x766E49776F6C6C61, 0xED0000676E697469, v86);
      sub_100008728(&v121, &qword_1000CB088, &unk_1000A18F0);
      goto LABEL_10;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 2);
      v18 = *(v14 + 3);
      v19 = *(v14 + 3);
      v121 = *(v14 + 2);
      v122[0] = v19;
      *(v122 + 9) = *(v14 + 57);
      (*(v7 + 56))(v5, 1, 1, v6);
      v20 = sub_100092CB8(v5, 0, v17, v18, &v121, v15, v16);
      sub_100008728(&v121, &qword_1000CB088, &unk_1000A18F0);

      goto LABEL_11;
    case 9u:
    case 0xBu:
      v23 = *v14;
      v24 = *(v14 + 1);
      v25 = *(v14 + 2);
      v26 = *(v14 + 40);
      v121 = *(v14 + 24);
      v122[0] = v26;
      *(v122 + 9) = *(v14 + 49);
      (*(v7 + 56))(v5, 1, 1, v6);
      v20 = sub_100092CB8(v5, v23, v24, v25, &v121, 0, 0xE000000000000000);
      sub_100008728(&v121, &qword_1000CB088, &unk_1000A18F0);

      goto LABEL_11;
    case 0xAu:
      v28 = *v14;
      v27 = *(v14 + 1);
      v29 = *(v14 + 2);
      v30 = *(v14 + 3);
      v31 = *(v14 + 3);
      v121 = *(v14 + 2);
      v122[0] = v31;
      *(v122 + 9) = *(v14 + 57);
      sub_100093750(v27, v14[72] != 255);
      (*(v7 + 56))(v5, 1, 1, v6);
      v32 = sub_100092CB8(v5, v28, v29, v30, &v121, 0, 0xE000000000000000);

      sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
      v33 = sub_10009DF90().super.super.isa;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v32;
      sub_10003D290(v33, 0x737574617473, 0xE600000000000000, v34);
      sub_100008728(&v121, &qword_1000CB088, &unk_1000A18F0);

      return v120;
    case 0xCu:
      v35 = sub_100003714(&qword_1000CB070, &unk_1000A18D0);
      v36 = *&v14[v35[12]];
      v37 = v35[16];
      v38 = *&v14[v35[24]];
      v39 = v35[20];
      v40 = &v14[v35[28]];
      v41 = *v40;
      v42 = v40[1];
      v43 = &v14[v35[32]];
      v44 = *(v43 + 1);
      v121 = *v43;
      v122[0] = v44;
      *(v122 + 9) = *(v43 + 25);
      v45 = v14[v37];
      v46 = v14[v39];
      v47 = v43[40];
      sub_100017C10(v14, v5);
      sub_10009339C(v45, v47 != 255);
      sub_100093528(v46, v47 != 255);
      sub_100093698(v45, v38);
      v48 = sub_100092CB8(v5, v36, v41, v42, &v121, 0, 0xE000000000000000);

      v49 = sub_10009DF90().super.super.isa;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v48;
      sub_10003D290(v49, 0x737365636361, 0xE600000000000000, v50);
      v51 = v120;
      v52 = sub_10009DF90().super.super.isa;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v51;
      sub_10003D290(v52, 0x697373696D726570, 0xEB00000000736E6FLL, v53);
      v54 = v120;
      v55 = sub_10009DF90().super.super.isa;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v54;
      sub_10003D290(v55, 0x766E49776F6C6C61, 0xED0000676E697469, v56);
      sub_100008728(&v121, &qword_1000CB088, &unk_1000A18F0);

LABEL_10:
      v20 = v120;
      goto LABEL_11;
    case 0xDu:
    case 0xEu:
      v21 = *v14;
      v22 = *(v14 + 24);
      v121 = *(v14 + 8);
      v122[0] = v22;
      *(v122 + 9) = *(v14 + 33);
      (*(v7 + 56))(v5, 1, 1, v6);
      v20 = sub_100092CB8(v5, v21, 0, 0, &v121, 0, 0xE000000000000000);
      sub_100008728(&v121, &qword_1000CB088, &unk_1000A18F0);

LABEL_11:
      sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
      break;
    default:
      v88 = sub_100003714(&qword_1000CB080, &qword_1000A18E8);
      v89 = *&v14[v88[12]];
      v90 = &v14[v88[16]];
      v92 = *v90;
      v91 = v90[1];
      v93 = &v14[v88[20]];
      v94 = *(v93 + 1);
      v121 = *v93;
      v122[0] = v94;
      *(v122 + 9) = *(v93 + 25);
      v95 = v93[40];
      (*(v7 + 32))(v10, v14, v6);
      sub_100091D0C(v89, v95 != 255);
      (*(v7 + 16))(v5, v10, v6);
      (*(v7 + 56))(v5, 0, 1, v6);
      v96 = sub_100092CB8(v5, 0, v92, v91, &v121, 0, 0xE000000000000000);

      sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
      v97 = sub_10009DF90().super.super.isa;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v96;
      sub_10003D290(v97, 0x737574617473, 0xE600000000000000, v98);
      sub_100008728(&v121, &qword_1000CB088, &unk_1000A18F0);
      v20 = v120;
LABEL_15:
      (*(v7 + 8))(v10, v6);
      break;
  }

  return v20;
}

BOOL sub_10003CCE4()
{
  v1 = type metadata accessor for SPIAnalyticsEvent();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003BF8C(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = sub_100003714(&qword_1000CB078, &qword_1000A18E0);
      v31 = *&v4[v30[20]];

      v32 = *&v4[v30[24] + 8];

      v29 = v30[28];
      goto LABEL_13;
    case 2u:
      v23 = *(v4 + 1);
      v24 = *(v4 + 3);
      v25 = *(v4 + 5);
      v26 = *(v4 + 4);
      v36 = *(v4 + 3);
      v37 = v26;
      v8 = *(v4 + 10);
      v9 = v4[88];

      goto LABEL_7;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      v5 = *(v4 + 1);
      v6 = *(v4 + 3);
      v7 = *(v4 + 3);
      v36 = *(v4 + 2);
      v37 = v7;
      v8 = *(v4 + 8);
      v9 = v4[72];

      goto LABEL_7;
    case 9u:
    case 0xBu:
      v12 = *v4;
      v13 = *(v4 + 2);
      v14 = *(v4 + 40);
      v36 = *(v4 + 24);
      v37 = v14;
      v8 = *(v4 + 7);
      v9 = v4[64];
      goto LABEL_6;
    case 0xAu:
      v12 = *v4;
      v15 = *(v4 + 3);
      v16 = *(v4 + 3);
      v36 = *(v4 + 2);
      v37 = v16;
      v8 = *(v4 + 8);
      v9 = v4[72];
LABEL_6:

LABEL_7:

      break;
    case 0xCu:
      v18 = sub_100003714(&qword_1000CB070, &unk_1000A18D0);

      v19 = *&v4[v18[24]];

      v20 = *&v4[v18[28] + 8];

      v21 = &v4[v18[32]];
      v22 = *(v21 + 1);
      v36 = *v21;
      v37 = v22;
      v8 = *(v21 + 4);
      v9 = v21[40];
      sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
      break;
    case 0xDu:
    case 0xEu:
      v10 = *v4;
      v11 = *(v4 + 24);
      v36 = *(v4 + 8);
      v37 = v11;
      v8 = *(v4 + 5);
      v9 = v4[48];

      break;
    default:
      v27 = sub_100003714(&qword_1000CB080, &qword_1000A18E8);
      v28 = *&v4[*(v27 + 64) + 8];

      v29 = *(v27 + 80);
LABEL_13:
      v33 = &v4[v29];
      v34 = *(v33 + 1);
      v36 = *v33;
      v37 = v34;
      v8 = *(v33 + 4);
      v9 = v33[40];
      v35 = sub_10009D860();
      (*(*(v35 - 8) + 8))(v4, v35);
      break;
  }

  sub_10003C04C(v36, *(&v36 + 1), v37, *(&v37 + 1), v8, v9);
  return v9 != 255;
}

uint64_t sub_10003CFEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003714(&qword_1000CAD90, &qword_1000A1280);
  v39 = a2;
  result = sub_10009E280();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_10009E380();
      sub_10009DDE0();
      result = sub_10009E3A0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10003D290(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100030DD4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10003CFEC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100030DD4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_10009E300();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10009100C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

void sub_10003D458()
{
  sub_10003D920(319, &qword_1000CB110, &type metadata accessor for URL, type metadata accessor for CSUIShareItemStatus);
  if (v0 <= 0x3F)
  {
    sub_10003D5C4();
    if (v1 <= 0x3F)
    {
      sub_10003D680();
      if (v2 <= 0x3F)
      {
        sub_10003D73C();
        if (v3 <= 0x3F)
        {
          sub_10003D7F0();
          if (v4 <= 0x3F)
          {
            sub_10003D880();
            if (v5 <= 0x3F)
            {
              sub_10003D920(319, &qword_1000CB140, sub_10000856C, type metadata accessor for CSUICurrentUserCKShareStatus);
              if (v6 <= 0x3F)
              {
                sub_10003D9D8();
                if (v7 <= 0x3F)
                {
                  sub_10003DAB8();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_10003D5C4()
{
  if (!qword_1000CB118)
  {
    sub_10009D860();
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1000CB118);
    }
  }
}

void sub_10003D680()
{
  if (!qword_1000CB120)
  {
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1000CB120);
    }
  }
}

void sub_10003D73C()
{
  if (!qword_1000CB128)
  {
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1000CB128);
    }
  }
}

void sub_10003D7F0()
{
  if (!qword_1000CB130)
  {
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000CB130);
    }
  }
}

void sub_10003D880()
{
  if (!qword_1000CB138)
  {
    sub_10000856C();
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000CB138);
    }
  }
}

void sub_10003D920(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

void sub_10003D9D8()
{
  if (!qword_1000CB148)
  {
    sub_10000594C(&qword_1000CA250, &qword_10009FDF8);
    sub_10000594C(&qword_1000CB150, &qword_1000A1920);
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1000CB148);
    }
  }
}

void sub_10003DAB8()
{
  if (!qword_1000CB158)
  {
    sub_10000594C(&qword_1000CB150, &qword_1000A1920);
    sub_10000594C(&qword_1000CB088, &unk_1000A18F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000CB158);
    }
  }
}

void *sub_10003DB40(void *a1)
{
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000067C8(a1, a1[3]);
  v7 = sub_10003C060();
  sub_10009D9D0();

  v8 = sub_10009D9E0();
  v9 = sub_10009DFF0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_10003DD30();
    v12 = sub_10009DD10();
    v14 = sub_1000307A4(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Analytics payload: %s", v10, 0xCu);
    sub_10000670C(v11);
  }

  (*(v3 + 8))(v6, v2);
  return v7;
}

unint64_t sub_10003DD30()
{
  result = qword_1000CAD58;
  if (!qword_1000CAD58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CAD58);
  }

  return result;
}

uint64_t sub_10003DD80(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_10009DB10();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003DE1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v5;
  return result;
}

uint64_t sub_10003DE9C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_10003DF10()
{
  v1 = v0;
  v2 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = sub_10009D860();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderURL;
  v13 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderURL);
  v35 = v2;
  v14 = sub_1000390F0();
  v36 = v14;
  swift_getKeyPath();
  v33 = v2;
  v34 = v14;
  swift_getKeyPath();

  sub_10009DAF0();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100008728(v7, &qword_1000CA250, &qword_10009FDF8);
    v15 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderTitle);

    sub_10003EDBC(0, 0);

    v17 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckFolderSubitemName);
    __chkstk_darwin(v16);
    v18 = sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
    *(&v31 - 2) = v18;
    v19 = sub_1000391EC();
    *(&v31 - 1) = v19;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v31 - 2) = v18;
    *(&v31 - 1) = v19;
    swift_getKeyPath();

    sub_10009DAF0();

    v21 = v38;
    if (v38)
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v21 == 0;

    sub_10009DB00();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v22 = sub_10009D7F0();
    v24 = v23;
    v25 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderTitle);

    sub_10003EDBC(v22, v24);

    swift_getKeyPath();
    swift_getKeyPath();
    v37 = 0;

    sub_10009DB00();
    (*(v9 + 8))(v12, v8);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = swift_unknownObjectRelease();
    v28 = *(v1 + v31);
    __chkstk_darwin(v27);
    *(&v31 - 2) = v2;
    *(&v31 - 1) = v14;
    v29 = swift_getKeyPath();
    __chkstk_darwin(v29);
    *(&v31 - 2) = v2;
    *(&v31 - 1) = v14;
    swift_getKeyPath();

    v30 = v32;
    sub_10009DAF0();

    return sub_100008728(v30, &qword_1000CA250, &qword_10009FDF8);
  }

  return result;
}

uint64_t sub_10003E3FC()
{
  v1 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v15 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderTitle);
  v6 = sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
  v15[2] = v6;
  v7 = sub_1000391EC();
  v15[3] = v7;
  swift_getKeyPath();
  v15[0] = v6;
  v15[1] = v7;
  swift_getKeyPath();

  sub_10009DAF0();

  if (v17)
  {

    v9 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckFolderSubitemName);
    __chkstk_darwin(v8);
    v15[-2] = v6;
    v15[-1] = v7;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[-2] = v6;
    v15[-1] = v7;
    swift_getKeyPath();

    sub_10009DAF0();

    if (v17)
    {

      v11 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v12 = sub_10009D860();
      v11 = (*(*(v12 - 8) + 48))(v4, 1, v12) != 1;
      sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
    }
  }

  else
  {
    v11 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v11;

  sub_10009DB00();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v13 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = !v13;

  return sub_10009DB00();
}

uint64_t sub_10003E760()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

uint64_t sub_10003E81C(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_10009D860();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003714(&qword_1000CB208, &qword_1000A1AD8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v48 = &v44 - v17;
  v18 = __chkstk_darwin(v16);
  v45 = &v44 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v52 = v20;
  v23 = sub_1000390F0();
  v53 = v23;
  swift_getKeyPath();
  v50 = v12;
  v51 = v23;
  swift_getKeyPath();
  v46 = v2;
  sub_10009DAF0();

  v24 = *(v8 + 56);
  sub_10003F3DC(v22, v11);
  sub_10003F3DC(v49, &v11[v24]);
  v25 = v4;
  v26 = *(v4 + 48);
  if (v26(v11, 1, v3) != 1)
  {
    v28 = v45;
    sub_10003F3DC(v11, v45);
    if (v26(&v11[v24], 1, v3) != 1)
    {
      v29 = v44;
      (*(v25 + 32))(v44, &v11[v24], v3);
      sub_10003F384();
      v27 = sub_10009DD40();
      v30 = *(v25 + 8);
      v30(v29, v3);
      sub_100008728(v22, &qword_1000CA250, &qword_10009FDF8);
      v30(v28, v3);
      sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
      goto LABEL_8;
    }

    sub_100008728(v22, &qword_1000CA250, &qword_10009FDF8);
    (*(v25 + 8))(v28, v3);
    goto LABEL_6;
  }

  sub_100008728(v22, &qword_1000CA250, &qword_10009FDF8);
  if (v26(&v11[v24], 1, v3) != 1)
  {
LABEL_6:
    sub_100008728(v11, &qword_1000CB208, &qword_1000A1AD8);
    v27 = 0;
    goto LABEL_8;
  }

  sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
  v27 = 1;
LABEL_8:
  v31 = v46;
  v33 = v48;
  v32 = v49;
  v34 = sub_10003F3DC(v49, v48);
  __chkstk_darwin(v34);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  sub_10003F3DC(v33, v47);

  sub_10009DB00();
  sub_100008728(v33, &qword_1000CA250, &qword_10009FDF8);
  v36 = *v31;
  if ((v27 & 1) == 0)
  {
    v37 = *v31;
    v38 = v31 + *(v36 + 104);
    v39 = *v38;
    if (*v38)
    {
      v40 = *(v38 + 1);

      v39(v41);
      sub_1000186F4(v39);
      return sub_100008728(v32, &qword_1000CA250, &qword_10009FDF8);
    }
  }

  v42 = *v31;
  if (*(v31 + *(v36 + 104)))
  {
    return sub_100008728(v32, &qword_1000CA250, &qword_10009FDF8);
  }

  result = sub_10009E250();
  __break(1u);
  return result;
}

uint64_t sub_10003EDBC(uint64_t a1, uint64_t a2)
{
  sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
  sub_1000391EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v6 = a2 == 0;
  if (v17)
  {
    if (a2)
    {
      if (v16 == a1 && v17 == a2)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_10009E2E0();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  __chkstk_darwin(v5);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();

  result = sub_10009DB00();
  v9 = *v2;
  if ((v6 & 1) != 0 || (v10 = *v2, v11 = v2 + *(v9 + 104), (v12 = *v11) == 0))
  {
    v15 = *v2;
    if (!*(v2 + *(v9 + 104)))
    {
      result = sub_10009E250();
      __break(1u);
    }
  }

  else
  {
    v13 = *(v11 + 1);

    v12(v14);
    return sub_1000186F4(v12);
  }

  return result;
}

uint64_t sub_10003F024()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = sub_10009DB10();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = (v0 + *(*v0 + 104));
  v5 = v4[1];
  sub_1000186F4(*v4);
  return v0;
}

uint64_t sub_10003F0C8()
{
  sub_10003F024();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10003F138(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  v5 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

uint64_t sub_10003F1D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  v14 = *(v7 + 16);
  v14(v17 - v12);
  v15 = *a2;
  v17[2] = v5;
  v17[3] = v6;
  swift_getKeyPath();
  v17[0] = v5;
  v17[1] = v6;
  swift_getKeyPath();
  (v14)(v11, v13, v5);

  sub_10009DB00();
  return (*(v7 + 8))(v13, v5);
}

__n128 sub_10003F360(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_10003F384()
{
  result = qword_1000CAB30;
  if (!qword_1000CAB30)
  {
    sub_10009D860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB30);
  }

  return result;
}

uint64_t sub_10003F3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F4A4()
{
  *(v0 + 16) = 2;
  v1 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_fileOrFolderURL;
  v2 = sub_10009D860();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = 0;
  *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = 0;
  v4 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
  *v4 = nullsub_1;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPISharingURL);
  *v5 = nullsub_1;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIFileOrSetup);
  *v6 = nullsub_1;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIRemove);
  *v7 = nullsub_1;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIMail);
  *v8 = nullsub_1;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIMetadata);
  *v9 = nullsub_1;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIUserStatus);
  *v10 = nullsub_1;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appIcon) = 0;
  v11 = (v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
  *v11 = 0;
  v11[1] = 0;
  return v0;
}

uint64_t sub_10003F638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_10009D9F0();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = sub_10009D6F0();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();
  v11 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v12 = sub_10009D860();
  v4[24] = v12;
  v13 = *(v12 - 8);
  v4[25] = v13;
  v14 = *(v13 + 64) + 15;
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_10003F7EC, 0, 0);
}

uint64_t sub_10003F7EC()
{
  v1 = v0[15];
  v2 = (v0[16] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
  v3 = v2[1];
  *v2 = v0[14];
  v2[1] = v1;

  v0[27] = sub_10009DF10();

  v0[28] = sub_10009DF00();
  v5 = sub_10009DED0();

  return _swift_task_switch(sub_10003F8AC, v5, v4);
}

uint64_t sub_10003F8AC()
{
  v1 = *(v0 + 224);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 232) = sub_1000998E0();

  return _swift_task_switch(sub_10003F934, 0, 0);
}

uint64_t sub_10003F934()
{
  v1 = *(v0 + 216);
  *(v0 + 240) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10003F9C0, v3, v2);
}

uint64_t sub_10003F9C0()
{
  v2 = v0[29];
  v1 = v0[30];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[31] = sub_10004BA80(v2);

  return _swift_task_switch(sub_10003FA54, 0, 0);
}

uint64_t sub_10003FA54()
{
  v1 = *(v0 + 216);
  *(v0 + 256) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10003FAE0, v3, v2);
}

uint64_t sub_10003FAE0()
{
  v2 = v0[31];
  v1 = v0[32];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[33] = sub_100032A60(v2);

  return _swift_task_switch(sub_10003FB74, 0, 0);
}

uint64_t sub_10003FB74()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[16];
  v5 = v0[13];
  v6 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v7 = *(v4 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v4 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[33];

  v8 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_fileOrFolderURL;
  swift_beginAccess();
  sub_100045818(v5, v4 + v8);
  swift_endAccess();
  sub_10003F3DC(v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100008728(v0[23], &qword_1000CA250, &qword_10009FDF8);
  }

  else
  {
    v9 = v0[22];
    (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
    sub_100003714(&qword_1000CA498, &qword_1000A04B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A0490;
    *(inited + 32) = NSURLIsPackageKey;
    *(inited + 40) = NSURLIsDirectoryKey;
    v11 = NSURLIsPackageKey;
    v12 = NSURLIsDirectoryKey;
    sub_1000315FC(inited);
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    sub_10009D7C0();
    v13 = v0[25];
    v14 = v0[24];
    v15 = v0[21];
    v16 = v0[22];
    v17 = v0[20];
    v25 = v0[16];
    log = v0[26];

    v18 = sub_10009D6E0();
    v19 = sub_10009D690();
    (*(v15 + 8))(v16, v17);
    (*(v13 + 8))(log, v14);
    *(v25 + 16) = v19 & ~v18 & 1;
  }

  v20 = *(v4 + v6);
  v0[34] = v20;
  if (!v20)
  {
    return sub_10009E250();
  }

  v21 = v0[27];

  v0[35] = sub_10009DF00();
  v23 = sub_10009DED0();

  return _swift_task_switch(sub_100040200, v23, v22);
}

uint64_t sub_100040200()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[16];
  v4 = v0[13];

  sub_100043F7C(v3, 0, v4, 0, v2);

  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[19];

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1000402BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v8 = sub_10009D860();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000403C8, 0, 0);
}

uint64_t sub_1000403C8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_10003F3DC(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[3];
    sub_100008728(v0[9], &qword_1000CA250, &qword_10009FDF8);
    if (v4)
    {
      v5 = v0[6];
      v6 = v0[3];
      v7 = (v0[7] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
      v8 = v7[1];
      *v7 = v0[5];
      v7[1] = v5;
      v9 = v6;

      v0[14] = sub_10009DF10();

      v0[15] = sub_10009DF00();
      v11 = sub_10009DED0();

      return _swift_task_switch(sub_100040838, v11, v10);
    }

    else
    {
      sub_1000459A4(0xD00000000000001ELL, 0x80000001000A6F60, v0[5], v0[6]);
      v25 = v0[12];
      v26 = v0[8];
      v27 = v0[9];

      v28 = v0[1];

      return v28();
    }
  }

  else
  {
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[10];
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[3];
    (*(v13 + 32))(v12, v0[9], v14);
    v18 = *(v16 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
    *(v16 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v17;
    v19 = v17;

    (*(v13 + 16))(v15, v12, v14);
    (*(v13 + 56))(v15, 0, 1, v14);
    v20 = swift_task_alloc();
    v0[13] = v20;
    *v20 = v0;
    v20[1] = sub_10004067C;
    v22 = v0[7];
    v21 = v0[8];
    v23 = v0[5];
    v24 = v0[6];

    return sub_10003F638(v21, v23, v24);
  }
}

uint64_t sub_10004067C(void *a1)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 64);
  v6 = *v1;

  sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);

  return _swift_task_switch(sub_1000407AC, 0, 0);
}

uint64_t sub_1000407AC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100040838()
{
  v1 = *(v0 + 120);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 128) = sub_1000998E0();

  return _swift_task_switch(sub_1000408C0, 0, 0);
}

uint64_t sub_1000408C0()
{
  v1 = *(v0 + 112);
  *(v0 + 136) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10004094C, v3, v2);
}

uint64_t sub_10004094C()
{
  v2 = v0[16];
  v1 = v0[17];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[18] = sub_10004BA80(v2);

  return _swift_task_switch(sub_1000409E0, 0, 0);
}

uint64_t sub_1000409E0()
{
  v1 = *(v0 + 112);
  *(v0 + 152) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100040A6C, v3, v2);
}

uint64_t sub_100040A6C()
{
  v2 = v0[18];
  v1 = v0[19];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[20] = sub_100032A60(v2);

  return _swift_task_switch(sub_100040B00, 0, 0);
}

uint64_t sub_100040B00()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v4 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[20];

  v5 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v2;

  v6 = *(v1 + v3);
  v0[21] = v6;
  if (!v6)
  {
    return sub_10009E250();
  }

  v7 = v0[14];
  v8 = v0[3];
  (*(v0[11] + 56))(v0[8], 1, 1, v0[10]);
  v9 = v8;

  v0[22] = sub_10009DF00();
  v11 = sub_10009DED0();

  return _swift_task_switch(sub_100040C64, v11, v10);
}

uint64_t sub_100040C64()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[4];

  sub_100043F7C(v4, v5, v3, 0, v2);

  sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);

  return _swift_task_switch(sub_100040D14, 0, 0);
}

uint64_t sub_100040D14()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100040D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100040E34, 0, 0);
}

uint64_t sub_100040E34()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPISharingURL);
  v3 = v2[1];
  *v2 = v0[4];
  v2[1] = v1;

  v0[8] = sub_10009DF10();

  v0[9] = sub_10009DF00();
  v5 = sub_10009DED0();

  return _swift_task_switch(sub_100040EF4, v5, v4);
}

uint64_t sub_100040EF4()
{
  v1 = *(v0 + 72);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 80) = sub_1000998E0();

  return _swift_task_switch(sub_100040F7C, 0, 0);
}

uint64_t sub_100040F7C()
{
  v1 = *(v0 + 64);
  *(v0 + 88) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100041008, v3, v2);
}

uint64_t sub_100041008()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[12] = sub_10004BA80(v2);

  return _swift_task_switch(sub_10004109C, 0, 0);
}

uint64_t sub_10004109C()
{
  v1 = *(v0 + 64);
  *(v0 + 104) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100041128, v3, v2);
}

uint64_t sub_100041128()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[14] = sub_100032A60(v2);

  return _swift_task_switch(sub_1000411BC, 0, 0);
}

uint64_t sub_1000411BC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = *(v3 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v3 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[14];

  v5 = sub_10009D860();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v0[15] = sub_10009DF00();
  v7 = sub_10009DED0();

  return _swift_task_switch(sub_1000412B4, v7, v6);
}

uint64_t sub_1000412B4()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[2];
  v5 = v0[3];

  sub_100044AB4(v4, v5, v6, 0, v3, v2);

  sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100041370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100041398, 0, 0);
}

uint64_t sub_100041398()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIFileOrSetup);
  v3 = v2[1];
  *v2 = v0[4];
  v2[1] = v1;

  v0[7] = sub_10009DF10();

  v0[8] = sub_10009DF00();
  v5 = sub_10009DED0();

  return _swift_task_switch(sub_100041458, v5, v4);
}

uint64_t sub_100041458()
{
  v1 = *(v0 + 64);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 72) = sub_1000998E0();

  return _swift_task_switch(sub_1000414E0, 0, 0);
}

uint64_t sub_1000414E0()
{
  v1 = *(v0 + 56);
  *(v0 + 80) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10004156C, v3, v2);
}

uint64_t sub_10004156C()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[11] = sub_10004BA80(v2);

  return _swift_task_switch(sub_100041600, 0, 0);
}

uint64_t sub_100041600()
{
  v1 = *(v0 + 56);
  *(v0 + 96) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10004168C, v3, v2);
}

uint64_t sub_10004168C()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[13] = sub_100032A60(v2);

  return _swift_task_switch(sub_100041720, 0, 0);
}

uint64_t sub_100041720()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[13];

  v0[14] = sub_10009DF00();
  v5 = sub_10009DED0();

  return _swift_task_switch(sub_1000417CC, v5, v4);
}

uint64_t sub_1000417CC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  sub_100043F7C(v3, v4, v5, 0, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100041900, 0, 0);
}

uint64_t sub_100041900()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIRemove);
  v3 = v2[1];
  *v2 = v0[4];
  v2[1] = v1;

  v0[8] = sub_10009DF10();

  v0[9] = sub_10009DF00();
  v5 = sub_10009DED0();

  return _swift_task_switch(sub_1000419C0, v5, v4);
}

uint64_t sub_1000419C0()
{
  v1 = *(v0 + 72);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 80) = sub_1000998E0();

  return _swift_task_switch(sub_100041A48, 0, 0);
}

uint64_t sub_100041A48()
{
  v1 = *(v0 + 64);
  *(v0 + 88) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100041AD4, v3, v2);
}

uint64_t sub_100041AD4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[12] = sub_10004BA80(v2);

  return _swift_task_switch(sub_100041B68, 0, 0);
}

uint64_t sub_100041B68()
{
  v1 = *(v0 + 64);
  *(v0 + 104) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100041BF4, v3, v2);
}

uint64_t sub_100041BF4()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[14] = sub_100032A60(v2);

  return _swift_task_switch(sub_100041C88, 0, 0);
}

uint64_t sub_100041C88()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = *(v3 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v3 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[14];

  v5 = sub_10009D860();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v0[15] = sub_10009DF00();
  v7 = sub_10009DED0();

  return _swift_task_switch(sub_10004635C, v7, v6);
}

uint64_t sub_100041D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100041E20, 0, 0);
}

uint64_t sub_100041E20()
{
  v1 = v0[4];
  v2 = (v0[5] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIRemove);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;

  v0[7] = sub_10009DF10();

  v0[8] = sub_10009DF00();
  v5 = sub_10009DED0();

  return _swift_task_switch(sub_100041EE0, v5, v4);
}

uint64_t sub_100041EE0()
{
  v1 = *(v0 + 64);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 72) = sub_1000998E0();

  return _swift_task_switch(sub_100041F68, 0, 0);
}

uint64_t sub_100041F68()
{
  v1 = *(v0 + 56);
  *(v0 + 80) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100041FF4, v3, v2);
}

uint64_t sub_100041FF4()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[11] = sub_10004BA80(v2);

  return _swift_task_switch(sub_100042088, 0, 0);
}

uint64_t sub_100042088()
{
  v1 = *(v0 + 56);
  *(v0 + 96) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100042114, v3, v2);
}

uint64_t sub_100042114()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[13] = sub_100032A60(v2);

  return _swift_task_switch(sub_1000421A8, 0, 0);
}

uint64_t sub_1000421A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = *(v3 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v3 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[13];

  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v2, v4, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  v0[14] = sub_10009DF00();
  v9 = sub_10009DED0();

  return _swift_task_switch(sub_1000422E0, v9, v8);
}

uint64_t sub_1000422E0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[5];
  v3 = v0[6];

  sub_100043F7C(v4, 0, v3, 0, v2);

  sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10004238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100042430, 0, 0);
}

uint64_t sub_100042430()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIRemove);
  v3 = v2[1];
  *v2 = v0[4];
  v2[1] = v1;

  v0[8] = sub_10009DF10();

  v0[9] = sub_10009DF00();
  v5 = sub_10009DED0();

  return _swift_task_switch(sub_1000424F0, v5, v4);
}

uint64_t sub_1000424F0()
{
  v1 = *(v0 + 72);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 80) = sub_1000998E0();

  return _swift_task_switch(sub_100042578, 0, 0);
}

uint64_t sub_100042578()
{
  v1 = *(v0 + 64);
  *(v0 + 88) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100042604, v3, v2);
}

uint64_t sub_100042604()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[12] = sub_10004BA80(v2);

  return _swift_task_switch(sub_100042698, 0, 0);
}

uint64_t sub_100042698()
{
  v1 = *(v0 + 64);
  *(v0 + 104) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100042724, v3, v2);
}

uint64_t sub_100042724()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[14] = sub_100032A60(v2);

  return _swift_task_switch(sub_1000427B8, 0, 0);
}

uint64_t sub_1000427B8()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v4 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[14];

  v5 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v2;

  v6 = *(v1 + v3);
  v0[15] = v6;
  if (!v6)
  {
    return sub_10009E250();
  }

  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[2];
  v10 = sub_10009D860();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = v9;

  v0[16] = sub_10009DF00();
  v13 = sub_10009DED0();

  return _swift_task_switch(sub_100042948, v13, v12);
}

uint64_t sub_100042948()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];

  sub_100043F7C(v4, v5, v3, 0, v2);

  sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000429F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_10009D6F0();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v11 = sub_10009D860();
  v6[22] = v11;
  v12 = *(v11 - 8);
  v6[23] = v12;
  v13 = *(v12 + 64) + 15;
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_100042B54, 0, 0);
}

uint64_t sub_100042B54()
{
  v1 = v0[16];
  v2 = (v0[17] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIMail);
  v3 = v2[1];
  *v2 = v0[15];
  v2[1] = v1;

  v0[25] = sub_10009DF10();

  v0[26] = sub_10009DF00();
  v5 = sub_10009DED0();

  return _swift_task_switch(sub_100042C14, v5, v4);
}

uint64_t sub_100042C14()
{
  v1 = *(v0 + 208);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 216) = sub_1000998E0();

  return _swift_task_switch(sub_100042C9C, 0, 0);
}

uint64_t sub_100042C9C()
{
  v1 = *(v0 + 200);
  *(v0 + 224) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100042D28, v3, v2);
}

uint64_t sub_100042D28()
{
  v2 = v0[27];
  v1 = v0[28];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[29] = sub_10004BA80(v2);

  return _swift_task_switch(sub_100042DBC, 0, 0);
}

uint64_t sub_100042DBC()
{
  v1 = *(v0 + 200);
  *(v0 + 240) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100042E48, v3, v2);
}

uint64_t sub_100042E48()
{
  v2 = v0[29];
  v1 = v0[30];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[31] = sub_100032A60(v2);

  return _swift_task_switch(sub_100042EDC, 0, 0);
}

uint64_t sub_100042EDC()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[17];
  v5 = v0[14];
  v6 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v7 = *(v4 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v4 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[31];

  v8 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_fileOrFolderURL;
  swift_beginAccess();
  sub_100045818(v5, v4 + v8);
  swift_endAccess();
  sub_10003F3DC(v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v9 = v0[17];
    v10 = v0[13];
    sub_100008728(v0[21], &qword_1000CA250, &qword_10009FDF8);
    v11 = v9 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName;
    v12 = *(v9 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
    v13 = *(v11 + 8);

    v14 = sub_100045D24(v10, v12, v13);
    v16 = v15;
  }

  else
  {
    v17 = v0[20];
    (*(v0[23] + 32))(v0[24], v0[21], v0[22]);
    sub_100003714(&qword_1000CA498, &qword_1000A04B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = NSURLTypeIdentifierKey;
    v19 = NSURLTypeIdentifierKey;
    sub_1000315FC(inited);
    swift_setDeallocating();
    sub_1000462B8(inited + 32);
    sub_10009D7C0();
    v21 = v0[19];
    v20 = v0[20];
    v22 = v0[18];

    v14 = sub_10009D6A0();
    v16 = v23;
    (*(v21 + 8))(v20, v22);
    if (!v16)
    {
      v24 = v0[13];
      v25 = (v0[17] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
      v26 = *v25;
      v27 = v25[1];

      v14 = sub_100045D24(v24, v26, v27);
      v16 = v28;
    }

    (*(v0[23] + 8))(v0[24], v0[22]);
  }

  v29 = (v0[17] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI);
  v30 = v29[1];
  *v29 = v14;
  v29[1] = v16;

  v31 = *(v4 + v6);
  v0[32] = v31;
  if (!v31)
  {
    return sub_10009E250();
  }

  v32 = v0[25];

  v0[33] = sub_10009DF00();
  v34 = sub_10009DED0();

  return _swift_task_switch(sub_10004337C, v34, v33);
}

uint64_t sub_10004337C()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];

  sub_100044AB4(v6, 0, v9, v8, v7, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100043444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000434E8, 0, 0);
}

uint64_t sub_1000434E8()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIMetadata);
  v3 = v2[1];
  *v2 = v0[4];
  v2[1] = v1;

  v0[8] = sub_10009DF10();

  v0[9] = sub_10009DF00();
  v5 = sub_10009DED0();

  return _swift_task_switch(sub_1000419C0, v5, v4);
}

uint64_t sub_1000435A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100043648, 0, 0);
}

uint64_t sub_100043648()
{
  v1 = v0[4];
  v2 = (v0[5] + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIUserStatus);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;

  v0[7] = sub_10009DF10();
  v0[8] = sub_10009DF00();
  v5 = sub_10009DED0();

  return _swift_task_switch(sub_100043708, v5, v4);
}

uint64_t sub_100043708()
{
  v1 = *(v0 + 64);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 72) = sub_1000998E0();

  return _swift_task_switch(sub_100043790, 0, 0);
}

uint64_t sub_100043790()
{
  v1 = *(v0 + 56);
  *(v0 + 80) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10004381C, v3, v2);
}

uint64_t sub_10004381C()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[11] = sub_10004BA80(v2);

  return _swift_task_switch(sub_1000438B0, 0, 0);
}

uint64_t sub_1000438B0()
{
  v1 = *(v0 + 56);
  *(v0 + 96) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_10004393C, v3, v2);
}

uint64_t sub_10004393C()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[13] = sub_100032A60(v2);

  return _swift_task_switch(sub_1000439D0, 0, 0);
}

uint64_t sub_1000439D0()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel;
  v4 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel) = v0[13];

  v5 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share) = v2;

  v6 = *(v1 + v3);
  v0[14] = v6;
  if (!v6)
  {
    return sub_10009E250();
  }

  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[2];
  v10 = sub_10009D860();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = v9;

  v0[15] = sub_10009DF00();
  v13 = sub_10009DED0();

  return _swift_task_switch(sub_100043B60, v13, v12);
}

uint64_t sub_100043B60()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[5];
  v3 = v0[6];

  sub_100043F7C(v4, 0, v3, 0, v2);

  sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100043C0C()
{
  sub_100008728(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_fileOrFolderURL, &qword_1000CA250, &qword_10009FDF8);
  v1 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI + 8);

  v2 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);

  v3 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI + 8);

  v4 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPISharingURL + 8);

  v5 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIFileOrSetup + 8);

  v6 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIRemove + 8);

  v7 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIMail + 8);

  v8 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIMetadata + 8);

  v9 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPIUserStatus + 8);

  v10 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName + 8);

  return v0;
}

uint64_t sub_100043D28()
{
  sub_100043C0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelDelegateSPI()
{
  result = qword_1000CB238;
  if (!qword_1000CB238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100043DD4()
{
  sub_100043EA4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100043EA4()
{
  if (!qword_1000CB248)
  {
    sub_10009D860();
    v0 = sub_10009E150();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CB248);
    }
  }
}

uint64_t sub_100043EFC(uint64_t a1)
{
  result = sub_100046314(&qword_1000CB330, type metadata accessor for ModelDelegateSPI);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100043F7C(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v72 = a2;
  v73 = a3;
  v7 = sub_10009D9F0();
  v76 = *(v7 - 8);
  v8 = *(v76 + 64);
  __chkstk_darwin(v7);
  v75 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v69 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v71 = &v68 - v15;
  v16 = __chkstk_darwin(v14);
  v70 = &v68 - v17;
  __chkstk_darwin(v16);
  v19 = &v68 - v18;
  v20 = sub_10009D860();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v74 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100046314(&qword_1000CB340, type metadata accessor for ModelDelegateSPI);
  sub_10002D3C8();
  a5[6] = v24;
  swift_unknownObjectWeakAssign();
  v25 = *(sub_1000194F8() + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_share);
  v26 = v25;
  swift_unknownObjectRelease();
  if (v25)
  {
    v27 = a5[3];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v78 = v25;

    sub_10009DB00();
  }

  v28 = a5[3];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v29 = v78;
  if (v78)
  {
    v30 = a5[3];

    v31 = [v29 containerID];
    sub_1000983D8(v31, 0);

    sub_100021DEC(0, a4 & 1);
  }

  else
  {
    v32 = a5[2];

    sub_1000484EC(2u);

    v33 = a5[2];

    sub_10004886C(1u);
  }

  v34 = a5[3];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v35 = v78;
  if (v78)
  {
    v68 = v21;
    v36 = v20;
    v37 = v7;
    v38 = [v78 containerIdentifier];
    v39 = sub_10009DD90();
    v41 = v40;

    sub_10009DD90();
    v42 = sub_10009DDB0();
    v44 = v43;

    if (v39 == v42 && v41 == v44)
    {

LABEL_11:
      swift_getKeyPath();
      swift_getKeyPath();
      v78 = xmmword_1000A1AE0;

      sub_10009DB00();

      v7 = v37;
      v20 = v36;
      v21 = v68;
      goto LABEL_14;
    }

    v45 = sub_10009E2E0();

    if (v45)
    {
      goto LABEL_11;
    }

    v7 = v37;
    v20 = v36;
    v21 = v68;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v78 = 0xD000000000000013;
  *(&v78 + 1) = 0x80000001000A6F40;

  sub_10009DB00();
LABEL_14:
  sub_10003F3DC(v73, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100008728(v19, &qword_1000CA250, &qword_10009FDF8);
    v46 = sub_10001A8A0();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v78) = v46;

    sub_10009DB00();
    v47 = v75;
    v48 = v72;
    if (v72)
    {
      v49 = a5[3];
      swift_getKeyPath();
      swift_getKeyPath();
      *&v78 = v48;
      v50 = v48;

      sub_10009DB00();
    }
  }

  else
  {
    v51 = v74;
    (*(v21 + 32))(v74, v19, v20);
    v52 = v70;
    (*(v21 + 16))(v70, v51, v20);
    (*(v21 + 56))(v52, 0, 1, v20);
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v71;
    sub_10009DAF0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10003F3DC(v52, v69);

    sub_10009DB00();
    sub_1000218C4(v53);
    sub_100008728(v53, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v52, &qword_1000CA250, &qword_10009FDF8);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v78) = 9;

    sub_10009DB00();
    v54 = *(sub_1000194F8() + 16);
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v78) = v54 & 1;

    sub_10009DB00();
    swift_getKeyPath();
    swift_getKeyPath();
    v78 = xmmword_1000A1AE0;

    sub_10009DB00();
    v55 = a5[3];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v56 = v78;
    if (!v78)
    {
      v57 = a5[3];
      sub_10009DD90();
      sub_10009DDB0();

      v58 = objc_allocWithZone(CKContainerID);
      v59 = sub_10009DD50();

      v56 = [v58 initWithContainerIdentifier:v59 environment:1];

      sub_1000983D8(v56, 0);
    }

    v47 = v75;

    (*(v21 + 8))(v74, v20);
  }

  sub_10009D9D0();

  v60 = sub_10009D9E0();
  v61 = sub_10009DFF0();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v77 = v63;
    *v62 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
    v64 = sub_10009DDA0();
    v66 = sub_1000307A4(v64, v65, &v77);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v60, v61, "setUpForExplicitSPI final sourceAppBundleID: %s.", v62, 0xCu);
    sub_10000670C(v63);
  }

  (*(v76 + 8))(v47, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v78) = 1;

  return sub_10009DB00();
}

uint64_t sub_100044AB4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v64 = a5;
  v65 = a2;
  v66 = a3;
  v8 = sub_10009D9F0();
  v68 = *(v8 - 8);
  v9 = *(v68 + 64);
  __chkstk_darwin(v8);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v69 = &v60 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - v18;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v70 = sub_10009D860();
  v22 = *(v70 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v70);
  v63 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  a6[6] = sub_100046314(&qword_1000CB340, type metadata accessor for ModelDelegateSPI);
  swift_unknownObjectWeakAssign();
  sub_10002D3C8();
  v25 = a6[2];

  sub_1000484EC(2u);

  v26 = a6[2];

  sub_10004886C(1u);

  swift_getKeyPath();
  swift_getKeyPath();
  *&v72 = 0xD000000000000013;
  *(&v72 + 1) = 0x80000001000A6F40;

  sub_10009DB00();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (v72 != 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v72) = 2;

    sub_10009DB00();
  }

  v27 = v70;
  if (a4)
  {
    v28 = a6[3];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v72 = a4;
    v29 = a4;

    sub_10009DB00();
    v30 = a6[3];

    v31 = [v29 containerID];
    sub_1000983D8(v31, 0);

    v32 = a6[3];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v33 = v72;
    if (!v72)
    {

      goto LABEL_13;
    }

    v60 = v29;
    v61 = v8;
    v34 = [v72 containerIdentifier];
    v35 = sub_10009DD90();
    v37 = v36;

    sub_10009DD90();
    v38 = sub_10009DDB0();
    v40 = v39;

    if (v35 == v38 && v37 == v40)
    {

      v27 = v70;
      v41 = v60;
    }

    else
    {
      v42 = sub_10009E2E0();

      v27 = v70;
      v41 = v60;
      if ((v42 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v72 = xmmword_1000A1AE0;

    sub_10009DB00();

LABEL_12:
    v8 = v61;
  }

LABEL_13:
  sub_10003F3DC(v64, v21);
  if ((*(v22 + 48))(v21, 1, v27) == 1)
  {
    sub_100008728(v21, &qword_1000CA250, &qword_10009FDF8);
  }

  else
  {
    v43 = v63;
    (*(v22 + 32))(v63, v21, v27);
    (*(v22 + 16))(v19, v43, v27);
    (*(v22 + 56))(v19, 0, 1, v27);
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = v69;
    sub_10009DAF0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10003F3DC(v19, v62);

    sub_10009DB00();
    sub_1000218C4(v44);
    v45 = v44;
    v27 = v70;
    sub_100008728(v45, &qword_1000CA250, &qword_10009FDF8);
    sub_100008728(v19, &qword_1000CA250, &qword_10009FDF8);
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = xmmword_1000A1AE0;

    sub_10009DB00();
    (*(v22 + 8))(v43, v27);
  }

  v46 = v67;
  v47 = v65;
  v48 = sub_10001A8A0();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v72) = v48;

  sub_10009DB00();
  if (v47)
  {
    v49 = a6[3];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v72 = v47;
    v50 = v47;

    sub_10009DB00();
  }

  v51 = a6[3];
  (*(v22 + 16))(v19, v66, v27);
  (*(v22 + 56))(v19, 0, 1, v27);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10003F3DC(v19, v69);

  sub_10009DB00();
  sub_100008728(v19, &qword_1000CA250, &qword_10009FDF8);
  sub_10009D9D0();

  v52 = sub_10009D9E0();
  v53 = sub_10009DFF0();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v71 = v55;
    *v54 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
    v56 = sub_10009DDA0();
    v58 = sub_1000307A4(v56, v57, &v71);

    *(v54 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v52, v53, "setUpForExplicitSharingURLSPI final sourceAppBundleID: %s.", v54, 0xCu);
    sub_10000670C(v55);
  }

  (*(v68 + 8))(v46, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v72) = 1;

  return sub_10009DB00();
}

uint64_t sub_10004551C(void *a1)
{
  v2 = v1;
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_10009D9F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D9D0();
  v13 = a1;
  v14 = sub_10009D9E0();
  v15 = sub_10009DFD0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v9;
    v17 = v16;
    v32 = swift_slowAlloc();
    v35 = v32;
    *v17 = 136315138;
    v18 = v13;
    v19 = [v18 description];
    v34 = v7;
    v20 = v19;
    v21 = sub_10009DD90();
    v31 = v8;
    v22 = v13;
    v24 = v23;

    v25 = sub_1000307A4(v21, v24, &v35);
    v13 = v22;

    *(v17 + 4) = v25;
    v7 = v34;
    _os_log_impl(&_mh_execute_header, v14, v15, "cancelAppExtension error: %s", v17, 0xCu);
    sub_10000670C(v32);

    (*(v33 + 8))(v12, v31);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v26 = *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI);
  v27 = *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_concludeSPI + 8);
  v28 = sub_10009D860();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);

  v26(v7, 0, v13);

  return sub_100008728(v7, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_100045818(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100045888()
{
  result = qword_1000CB338;
  if (!qword_1000CB338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CB338);
  }

  return result;
}

uint64_t sub_1000459A4(uint64_t a1, unint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v31 = a1;
  v7 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v30 - v9;
  v11 = sub_10009D9F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D9D0();

  v16 = sub_10009D9E0();
  v17 = sub_10009DFD0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30[1] = a4;
    v19 = a3;
    v20 = v18;
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000307A4(v31, a2, &v32);
    _os_log_impl(&_mh_execute_header, v16, v17, "createAndInitModel error: %s", v20, 0xCu);
    sub_10000670C(v21);

    a3 = v19;
  }

  (*(v12 + 8))(v15, v11);
  v22 = sub_10009D860();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_100003714(&qword_1000CB348, &qword_1000A1E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = sub_10009DD90();
  *(inited + 72) = &type metadata for String;
  v24 = v31;
  *(inited + 40) = v25;
  *(inited + 48) = v24;
  *(inited + 56) = a2;

  sub_10003269C(inited);
  swift_setDeallocating();
  sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
  v26 = CKErrorDomain;
  isa = sub_10009DCF0().super.isa;

  v28 = [objc_allocWithZone(NSError) initWithDomain:v26 code:1 userInfo:isa];

  a3(v10, 0, v28);
  return sub_100008728(v10, &qword_1000CA250, &qword_10009FDF8);
}

unint64_t sub_100045D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10009D9A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009D9F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E0F0();
  v14 = sub_10009E100();

  if (!v14)
  {
LABEL_6:
    if (a3)
    {
      if (sub_10009DDB0() == 0x7365746F6ELL && v26 == 0xE500000000000000)
      {

        return 0xD000000000000014;
      }

      v27 = sub_10009E2E0();

      if (v27)
      {
        return 0xD000000000000014;
      }

      if (sub_10009DDB0() == 0x7265646E696D6572 && v28 == 0xE900000000000073)
      {

        return 0xD000000000000018;
      }

      v29 = sub_10009E2E0();

      if (v29)
      {
        return 0xD000000000000018;
      }

      if (sub_10009DDB0() == 0x697261666173 && v30 == 0xE600000000000000)
      {

        return 0xD000000000000019;
      }

      v31 = sub_10009E2E0();

      if (v31)
      {
        return 0xD000000000000019;
      }

      if (sub_10009DDB0() == 0x6C656D726163 && v32 == 0xE600000000000000)
      {
        goto LABEL_25;
      }

      v33 = sub_10009E2E0();

      if (v33)
      {
        return 0xD000000000000018;
      }

      if (sub_10009DDB0() == 0x6D726F6665657266 && v34 == 0xE800000000000000)
      {
LABEL_25:

        return 0xD000000000000018;
      }

      v35 = sub_10009E2E0();

      if (v35)
      {
        return 0xD000000000000018;
      }
    }

    sub_10009D970();
    v18 = sub_10009D8D0();
    (*(v5 + 8))(v8, v4);
    return v18;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v15 = sub_10009DD90();
  v17 = v16;
  swift_unknownObjectRelease();
  v18 = sub_1000951B4(v15, v17);
  v20 = v19;

  sub_10009D9D0();

  v21 = sub_10009D9E0();
  v22 = sub_10009DFF0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v10;
    v38 = v24;
    *v23 = 136315394;
    v25 = sub_1000307A4(v15, v17, &v38);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1000307A4(v18, v20, &v38);
    _os_log_impl(&_mh_execute_header, v21, v22, "utiFromCKShare raw ckShareType: %s, utiOfItemFromCKShare: %s", v23, 0x16u);
    swift_arrayDestroy();

    (*(v37 + 8))(v13, v9);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  return v18;
}

uint64_t sub_1000462B8(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100046314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100046374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009D8A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100046448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009D8A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100046524()
{
  sub_10009D8A0();
  if (v0 <= 0x3F)
  {
    sub_1000465F8();
    if (v1 <= 0x3F)
    {
      sub_100046A04(319, &unk_1000CB3C0, type metadata accessor for AlertViewModelButton, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000465F8()
{
  if (!qword_1000CB3B8)
  {
    v0 = sub_10009E150();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CB3B8);
    }
  }
}

uint64_t sub_100046668(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000466B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009D8A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100003714(&qword_1000CB3F8, &unk_1000A1F20);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000467FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009D8A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_100003714(&qword_1000CB3F8, &unk_1000A1F20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100046930()
{
  sub_10009D8A0();
  if (v0 <= 0x3F)
  {
    sub_100046A04(319, &qword_1000CB468, &type metadata accessor for ButtonRole, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100046A68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100046A04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100046A68()
{
  if (!qword_1000CB470)
  {
    sub_10000594C(&unk_1000CB478, qword_1000A1F48);
    v0 = sub_10009E150();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CB470);
    }
  }
}

unint64_t sub_100046ACC()
{
  result = qword_1000CB4B0;
  if (!qword_1000CB4B0)
  {
    sub_10009D8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB4B0);
  }

  return result;
}

uint64_t sub_100046B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009D8A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100046B9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_100046C10(int a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_100003714(&qword_1000CAD10, &qword_1000A0EB8);
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = v24 - v5;
  v25 = sub_10009E020();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009E000();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = sub_10009DCB0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10009DBC0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_10009DBB0();
  v17 = sub_1000477D0();
  v24[0] = "tor";
  v24[1] = v17;
  sub_10009DCA0();
  v31 = _swiftEmptyArrayStorage;
  sub_1000479AC(&qword_1000CB588, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003714(&qword_1000CB590, &qword_1000A2098);
  sub_1000479F4(&qword_1000CB598, &qword_1000CB590, &qword_1000A2098);
  sub_10009E1A0();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  *(v1 + 24) = sub_10009E050();
  v18 = OBJC_IVAR____TtC13SPIHelper_iOS14NetworkMonitor__status;
  v30 = 0;
  v19 = v26;
  sub_10009DAC0();
  (*(v27 + 32))(v2 + v18, v19, v28);
  v20 = *(v2 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_10004785C(sub_100047854);
  sub_10009DB90();

  if (v29)
  {
    v22 = *(v2 + 16);
    v21 = *(v2 + 24);
    sub_10009DBA0();
  }

  return v2;
}

uint64_t sub_100046FD4(uint64_t a1)
{
  v24 = a1;
  v1 = sub_10009DC90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009DCB0();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009DC00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000477D0();
    v23 = sub_10009E030();
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v9);
    v15 = *(v10 + 80);
    v24 = v5;
    v16 = v2;
    v17 = (v15 + 24) & ~v15;
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    (*(v10 + 32))(v18 + v17, v12, v9);
    aBlock[4] = sub_100047930;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047570;
    aBlock[3] = &unk_1000C2F80;
    v19 = _Block_copy(aBlock);

    sub_10009DCA0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000479AC(&qword_1000CB5A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003714(&qword_1000CB5A8, &qword_1000A20A0);
    sub_1000479F4(&qword_1000CB5B0, &qword_1000CB5A8, &qword_1000A20A0);
    v20 = v26;
    sub_10009E1A0();
    v21 = v23;
    sub_10009E040();
    _Block_release(v19);

    (*(v16 + 8))(v20, v1);
    return (*(v25 + 8))(v8, v24);
  }

  return result;
}

uint64_t sub_1000473C0()
{
  v0 = sub_10009DBE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10009DBF0();
    (*(v1 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v0);
    v9 = sub_10009DBD0();
    v10 = *(v1 + 8);
    v10(v5, v0);
    v10(v7, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    v11[7] = (v9 & 1) == 0;
    return sub_10009DB00();
  }

  return result;
}

uint64_t sub_100047570(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000475B4()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC13SPIHelper_iOS14NetworkMonitor__status;
  v3 = sub_100003714(&qword_1000CAD10, &qword_1000A0EB8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor()
{
  result = qword_1000CB4E8;
  if (!qword_1000CB4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000476C0()
{
  sub_10004776C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10004776C()
{
  if (!qword_1000CB4F8)
  {
    v0 = sub_10009DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CB4F8);
    }
  }
}

unint64_t sub_1000477D0()
{
  result = qword_1000CA468;
  if (!qword_1000CA468)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CA468);
  }

  return result;
}

uint64_t sub_10004781C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004785C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10004786C()
{
  v1 = sub_10009DC00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100047930()
{
  v1 = *(*(sub_10009DC00() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1000473C0();
}

uint64_t sub_100047994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000479AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000479F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000594C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100047A48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v5;
  return result;
}

uint64_t sub_100047ACC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_100047B6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (!v51)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v22 = sub_10004CA5C(v51, a1);

    if (v22)
    {
      return result;
    }

    sub_10009D9D0();

    v23 = sub_10009D9E0();
    v24 = sub_10009DFF0();

    if (!os_log_type_enabled(v23, v24))
    {

      (*(v5 + 8))(v9, v4);
      goto LABEL_66;
    }

    v25 = swift_slowAlloc();
    result = swift_slowAlloc();
    v51 = result;
    *v25 = 136315394;
    v26 = *(a1 + 16);
    if (!v26)
    {
      goto LABEL_69;
    }

    v27 = *(a1 + 32);
    v49 = v5;
    if (v27 == 1)
    {
      if (v26 == 1)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (*(a1 + 33))
      {
        v28 = 7237422;
        v29 = 0xE300000000000000;
        goto LABEL_43;
      }

      v31 = 0;
    }

    else
    {
      if (v26 == 1)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v31 = *(a1 + 33);
    }

    v39 = v27 ^ v31;
    if (v39)
    {
      v28 = 0x646578696D2ELL;
    }

    else
    {
      v28 = 1717989166;
    }

    if (v39)
    {
      v29 = 0xE600000000000000;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

LABEL_43:
    v40 = sub_1000307A4(v28, v29, &v51);

    *(v25 + 4) = v40;
    *(v25 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    result = v50;
    v41 = *(v50 + 16);
    if (!v41)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v42 = *(v50 + 32);
    if (v42 == 1)
    {
      if (v41 == 1)
      {
LABEL_79:
        __break(1u);
        return result;
      }

      if (*(v50 + 33))
      {

        v43 = 7237422;
        v44 = 0xE300000000000000;
LABEL_65:
        v47 = sub_1000307A4(v43, v44, &v51);

        *(v25 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v23, v24, "For Co-owners changeNewParticipantsCanBeCoOwners, newState: %s, oldState: %s", v25, 0x16u);
        swift_arrayDestroy();

        (*(v49 + 8))(v9, v4);
        goto LABEL_66;
      }

      v45 = 0;
    }

    else
    {
      if (v41 == 1)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v45 = *(v50 + 33);
    }

    if (v42 != v45)
    {
      v43 = 0x646578696D2ELL;
    }

    else
    {
      v43 = 1717989166;
    }

    if (v42 != v45)
    {
      v44 = 0xE600000000000000;
    }

    else
    {
      v44 = 0xE400000000000000;
    }

    goto LABEL_65;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v13 = sub_10004CA5C(v51, a1);

  if (v13)
  {
    return result;
  }

  sub_10009D9D0();

  v15 = sub_10009D9E0();
  v16 = sub_10009DFF0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    result = swift_slowAlloc();
    v51 = result;
    *v17 = 136315394;
    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = *(a1 + 32);
      v49 = v5;
      if (v19 == 1)
      {
        if (v18 == 1)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        if (*(a1 + 33))
        {
          v20 = 7237422;
          v21 = 0xE300000000000000;
          goto LABEL_29;
        }

        v30 = 0;
      }

      else
      {
        if (v18 == 1)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v30 = *(a1 + 33);
      }

      v32 = v19 ^ v30;
      if (v32)
      {
        v20 = 0x646578696D2ELL;
      }

      else
      {
        v20 = 1717989166;
      }

      if (v32)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

LABEL_29:
      v33 = sub_1000307A4(v20, v21, &v51);

      *(v17 + 4) = v33;
      *(v17 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      result = v50;
      v34 = *(v50 + 16);
      if (v34)
      {
        v35 = *(v50 + 32);
        if (v35 == 1)
        {
          if (v34 != 1)
          {
            if (*(v50 + 33))
            {

              v36 = 7237422;
              v37 = 0xE300000000000000;
LABEL_57:
              v46 = sub_1000307A4(v36, v37, &v51);

              *(v17 + 14) = v46;
              _os_log_impl(&_mh_execute_header, v15, v16, "changeNewParticipantsCanBeCoOwners 4 newState: %s, oldState: %s", v17, 0x16u);
              swift_arrayDestroy();

              (*(v49 + 8))(v11, v4);
              goto LABEL_66;
            }

            v38 = 0;
LABEL_51:

            if (v35 != v38)
            {
              v36 = 0x646578696D2ELL;
            }

            else
            {
              v36 = 1717989166;
            }

            if (v35 != v38)
            {
              v37 = 0xE600000000000000;
            }

            else
            {
              v37 = 0xE400000000000000;
            }

            goto LABEL_57;
          }

          goto LABEL_78;
        }

        if (v34 != 1)
        {
          v38 = *(v50 + 33);
          goto LABEL_51;
        }

        goto LABEL_74;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  (*(v5 + 8))(v11, v4);
LABEL_66:
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = a1;

  return sub_10009DB00();
}

uint64_t sub_10004834C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (v5 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    result = v5;
    v3 = *(v5 + 16);
    if (!v3)
    {
      __break(1u);
      goto LABEL_17;
    }

    if (*(v5 + 32) != 1)
    {
      if (v3 != 1)
      {
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_13;
    }

    if (v3 != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  result = v5;
  v3 = *(v5 + 16);
  if (!v3)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(v5 + 32) != 1)
  {
LABEL_13:
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (v3 != 1)
  {
LABEL_9:
    if (*(result + 33))
    {
      v4 = 1;
LABEL_15:

      return v4;
    }

LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000484EC(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (v25 != v1)
  {
    sub_10009D9D0();

    v8 = sub_10009D9E0();
    v9 = sub_10009DFF0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v10 = 136315394;
      v11 = 0x4D63696C6275702ELL;
      v12 = 0xEB0000000065646FLL;
      if (v1 != 1)
      {
        v11 = 0x657461766972702ELL;
        v12 = 0xEC00000065646F4DLL;
      }

      if (v1)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0x656E6F6E2ELL;
      }

      if (v1)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      v15 = sub_1000307A4(v13, v14, &v23);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v16 = 0x4D63696C6275702ELL;
      v17 = 0xEB0000000065646FLL;
      if (v22 != 1)
      {
        v16 = 0x657461766972702ELL;
        v17 = 0xEC00000065646F4DLL;
      }

      if (v22)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x656E6F6E2ELL;
      }

      if (v22)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      v20 = sub_1000307A4(v18, v19, &v23);

      *(v10 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "updateAccessModeOnly for newAccess: %s, oldAccess: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v6, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v1;

    return sub_10009DB00();
  }

  return result;
}

uint64_t sub_10004886C(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (v29 != v1)
  {
    sub_10009D9D0();

    v8 = sub_10009D9E0();
    v9 = sub_10009DFF0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v10 = 136315394;
      v11 = 0xE500000000000000;
      v12 = 0x6C6E4F646165722ELL;
      v13 = 0xE900000000000079;
      if (v1 != 2)
      {
        v12 = 0x646578696D2ELL;
        v13 = 0xE600000000000000;
      }

      v14 = 0x697257646165722ELL;
      if (v1)
      {
        v11 = 0xEA00000000006574;
      }

      else
      {
        v14 = 0x656E6F6E2ELL;
      }

      if (v1 <= 1)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      if (v1 <= 1)
      {
        v16 = v11;
      }

      else
      {
        v16 = v13;
      }

      v17 = sub_1000307A4(v15, v16, &v27);

      *(v10 + 4) = v17;
      *(v10 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v18 = 0xE500000000000000;
      v19 = 0x6C6E4F646165722ELL;
      v20 = 0xE900000000000079;
      if (v26 != 2)
      {
        v19 = 0x646578696D2ELL;
        v20 = 0xE600000000000000;
      }

      v21 = 0x697257646165722ELL;
      if (v26)
      {
        v18 = 0xEA00000000006574;
      }

      else
      {
        v21 = 0x656E6F6E2ELL;
      }

      if (v26 <= 1u)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }

      if (v26 <= 1u)
      {
        v23 = v18;
      }

      else
      {
        v23 = v20;
      }

      v24 = sub_1000307A4(v22, v23, &v27);

      *(v10 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v8, v9, "updatePermissionsOnly newAccess: %s, oldAccess: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v6, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v1;

    return sub_10009DB00();
  }

  return result;
}

uint64_t sub_100048C50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_100048CBC(char a1, uint64_t a2, char a3)
{
  *(v4 + 119) = a3;
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 118) = a1;
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

  return _swift_task_switch(sub_100048DB8, v9, v8);
}

uint64_t sub_100048DB8()
{
  v52 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 118);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 112) != v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 118);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v5 = *(v0 + 113);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 114) = v4;

    sub_10009DB00();
    v6 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel;
    v7 = *(v3 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v8 = *(v0 + 16);
    *(v0 + 88) = v8;
    if (v8)
    {
      v9 = *(v3 + v6);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10009DAF0();

      if ((*(v0 + 115) & 1) == 0)
      {
        v17 = *(v0 + 64);

        goto LABEL_8;
      }

      v10 = *(v0 + 118);
      v11 = [v8 publicPermission];
      if (v10 == 2)
      {
        goto LABEL_5;
      }

      v18 = *(v0 + 32);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (*(v0 + 116) != 3)
      {
        v30 = *(v0 + 32);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10009DAF0();

        if (*(v0 + 117) > 1u)
        {
          if (*(v0 + 117) != 2)
          {
            return sub_10009E250();
          }

          v12 = 2;
LABEL_14:
          v19 = *(v0 + 56);
          sub_10009D9D0();
          v20 = sub_10009D9E0();
          v21 = sub_10009DFF0();
          if (!os_log_type_enabled(v20, v21))
          {
            v28 = *(v0 + 48);
            v27 = *(v0 + 56);
            v29 = *(v0 + 40);

            (*(v28 + 8))(v27, v29);
            if (v12 != v11)
            {
              goto LABEL_45;
            }

            goto LABEL_49;
          }

          v22 = *(v0 + 118);
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 136316162;
          v50 = v11;
          v51 = v24;
          v49 = v12;
          if (v22)
          {
            if (v22 == 1)
            {
              v25 = 0x4D63696C6275702ELL;
              v26 = 0xEB0000000065646FLL;
            }

            else
            {
              v25 = 0x657461766972702ELL;
              v26 = 0xEC00000065646F4DLL;
            }
          }

          else
          {
            v26 = 0xE500000000000000;
            v25 = 0x656E6F6E2ELL;
          }

          v31 = sub_1000307A4(v25, v26, &v51);

          *(v23 + 4) = v31;
          *(v23 + 12) = 2080;
          if (v5)
          {
            if (v5 == 1)
            {
              v32 = 0x4D63696C6275702ELL;
              v33 = 0xEB0000000065646FLL;
            }

            else
            {
              v32 = 0x657461766972702ELL;
              v33 = 0xEC00000065646F4DLL;
            }
          }

          else
          {
            v33 = 0xE500000000000000;
            v32 = 0x656E6F6E2ELL;
          }

          v34 = sub_1000307A4(v32, v33, &v51);

          *(v23 + 14) = v34;
          *(v23 + 22) = 2080;
          if (v50 == 1)
          {
            v36 = 0xE500000000000000;
            v35 = 0x656E6F6E2ELL;
          }

          else
          {
            if (v50 != 2)
            {
              if (v50 == 3)
              {
                v35 = 0x697257646165722ELL;
                v36 = 0xEA00000000006574;
                goto LABEL_38;
              }

              return sub_10009E250();
            }

            v35 = 0x6C6E4F646165722ELL;
            v36 = 0xE900000000000079;
          }

LABEL_38:
          v37 = sub_1000307A4(v35, v36, &v51);

          *(v23 + 24) = v37;
          *(v23 + 32) = 2080;
          if (v49 == 1)
          {
            v39 = 0xE500000000000000;
            v38 = 0x656E6F6E2ELL;
          }

          else if (v49 == 2)
          {
            v38 = 0x6C6E4F646165722ELL;
            v39 = 0xE900000000000079;
          }

          else
          {
            v38 = 0x697257646165722ELL;
            v39 = 0xEA00000000006574;
          }

          v40 = *(v0 + 48);
          v48 = *(v0 + 56);
          v41 = *(v0 + 40);
          v42 = *(v0 + 119);
          v43 = sub_1000307A4(v38, v39, &v51);

          *(v23 + 34) = v43;
          *(v23 + 42) = 1024;
          *(v23 + 44) = v42;
          _os_log_impl(&_mh_execute_header, v20, v21, "changeAccessSetting for newAccess: %s, oldAccess: %s oldSharePermission: %s,\nnewSharePermission: %s, saveShare: %{BOOL}d", v23, 0x30u);
          swift_arrayDestroy();

          (*(v40 + 8))(v48, v41);
          v12 = v49;
          if (v49 != v50)
          {
LABEL_45:
            v44 = *(v0 + 119);
            [v8 setPublicPermission:v12];
            if (v44 == 1)
            {
              v45 = swift_task_alloc();
              *(v0 + 96) = v45;
              *v45 = v0;
              v45[1] = sub_100049564;
              v46 = *(v0 + 24);

              return sub_10002AAAC(1);
            }
          }

LABEL_49:
          v47 = *(v0 + 64);

          goto LABEL_7;
        }

        if (!*(v0 + 117))
        {
LABEL_5:
          v12 = 1;
          goto LABEL_14;
        }
      }

      v12 = 3;
      goto LABEL_14;
    }
  }

  v13 = *(v0 + 64);
LABEL_7:

LABEL_8:
  v14 = *(v0 + 56);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100049564()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1000496A0;
  }

  else
  {
    v7 = sub_10002502C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000496A0()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_100049714(char a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 118) = a4;
  *(v5 + 117) = a3;
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 116) = a1;
  v6 = sub_10009D9F0();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  sub_10009DF10();
  *(v5 + 64) = sub_10009DF00();
  v10 = sub_10009DED0();
  *(v5 + 72) = v10;
  *(v5 + 80) = v9;

  return _swift_task_switch(sub_100049814, v10, v9);
}

void sub_100049814()
{
  v55 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 116);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 112) != v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 116);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 113) = v4;

    sub_10009DB00();
    v5 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel;
    v6 = *(v3 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v7 = *(v0 + 16);
    *(v0 + 88) = v7;
    if (v7)
    {
      v8 = *(v3 + v5);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10009DAF0();

      if ((*(v0 + 114) & 1) == 0)
      {
        v29 = *(v0 + 64);

        goto LABEL_21;
      }

      v9 = *(v0 + 56);
      v10 = *(v3 + v5);

      v11 = v7;
      v12 = sub_100098F14(v7);

      sub_10009D9D0();
      v13 = sub_10009D9E0();
      v14 = sub_10009DFF0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = 0x656E6F6E2ELL;
        v16 = *(v0 + 116);
        v17 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v17 = 136315906;
        v18 = 0xE500000000000000;
        v19 = 0x6C6E4F646165722ELL;
        v20 = 0xE900000000000079;
        if (v16 != 2)
        {
          v19 = 0x646578696D2ELL;
          v20 = 0xE600000000000000;
        }

        v21 = 0x697257646165722ELL;
        if (v16)
        {
          v18 = 0xEA00000000006574;
        }

        else
        {
          v21 = 0x656E6F6E2ELL;
        }

        if (v16 <= 1)
        {
          v22 = v21;
        }

        else
        {
          v22 = v19;
        }

        if (v16 <= 1)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        v24 = sub_1000307A4(v22, v23, &v54);

        *(v17 + 4) = v24;
        *(v17 + 12) = 2080;
        v52 = v12;
        if (v12 > 1u)
        {
          if (v12 == 2)
          {
            v15 = 0x6C6E4F646165722ELL;
            v25 = 0xE900000000000079;
          }

          else
          {
            v25 = 0xE600000000000000;
            v15 = 0x646578696D2ELL;
          }
        }

        else if (v12)
        {
          v15 = 0x697257646165722ELL;
          v25 = 0xEA00000000006574;
        }

        else
        {
          v25 = 0xE500000000000000;
        }

        v33 = *(v0 + 48);
        v50 = *(v0 + 40);
        v51 = *(v0 + 56);
        v34 = *(v0 + 118);
        v35 = *(v0 + 117);
        v36 = sub_1000307A4(v15, v25, &v54);

        *(v17 + 14) = v36;
        *(v17 + 22) = 1024;
        *(v17 + 24) = v34;
        *(v17 + 28) = 1024;
        *(v17 + 30) = v35;
        _os_log_impl(&_mh_execute_header, v13, v14, "changeReadWritePermission newPermission: %s, oldSharePermission: %s,\nupdateExistingParticipants: %{BOOL}d, saveShare: %{BOOL}d", v17, 0x22u);
        swift_arrayDestroy();

        (*(v33 + 8))(v51, v50);
        v12 = v52;
      }

      else
      {
        v31 = *(v0 + 48);
        v30 = *(v0 + 56);
        v32 = *(v0 + 40);

        (*(v31 + 8))(v30, v32);
      }

      v37 = *(v0 + 116);
      if (v37 == v12)
      {
        goto LABEL_60;
      }

      if (*(v0 + 116) > 1u)
      {
        if (v37 != 2)
        {
          sub_10009E250();
          return;
        }

        v38 = 1;
        v39 = 2;
      }

      else
      {
        v38 = 0;
        if (*(v0 + 116))
        {
          v39 = 3;
        }

        else
        {
          v39 = 1;
        }
      }

      v40 = *(v0 + 32);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (*(v0 + 115) == 1)
      {
        [v11 setPublicPermission:v39];
      }

      if (*(v0 + 118) != 1 || [v11 publicPermission] != 1)
      {
LABEL_56:
        if (*(v0 + 117) == 1)
        {
          v47 = swift_task_alloc();
          *(v0 + 96) = v47;
          *v47 = v0;
          v47[1] = sub_100049F7C;
          v48 = *(v0 + 24);

          sub_10002AAAC(1);
          return;
        }

LABEL_60:
        v49 = *(v0 + 64);

        goto LABEL_20;
      }

      v41 = [v11 participants];
      sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
      v42 = sub_10009DEA0();

      v53 = v11;
      if (v42 >> 62)
      {
        v43 = sub_10009E260();
        if (v43)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
LABEL_44:
          if (v43 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v43; ++i)
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              v45 = sub_10009E1F0();
            }

            else
            {
              v45 = *(v42 + 8 * i + 32);
            }

            v46 = v45;
            if ([v45 role] != 1)
            {
              [v46 setPermission:v39];
              if (v38)
              {
                [v46 setRole:3];
              }
            }
          }
        }
      }

      v11 = v53;
      goto LABEL_56;
    }
  }

  v26 = *(v0 + 64);
LABEL_20:

LABEL_21:
  v27 = *(v0 + 56);

  v28 = *(v0 + 8);

  v28();
}

uint64_t sub_100049F7C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_10004CA38;
  }

  else
  {
    v7 = sub_10004CA34;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10004A0B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_10004A154@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v5;
  return result;
}

uint64_t sub_10004A1D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_10004A250()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v1 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride);
  if (v1 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    LOBYTE(v1) = v4;
  }

  if (v1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100022014();

LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_10009DB00();
  }

  __break(1u);
  return result;
}

uint64_t sub_10004A3E0(int a1)
{
  v3 = sub_10009D9F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride);
  if (v9 == 2 || ((v9 ^ a1) & 1) != 0)
  {
    v10 = a1 & 1;
    *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride) = a1 & 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v14[15] = a1 & 1;

    sub_10009DB00();
    sub_10009D9D0();
    v11 = sub_10009D9E0();
    v12 = sub_10009DFF0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "changeRequestAccessAllowedForSPI newAccessAllowed: %{BOOL}d--this should be the final value set in the share", v13, 8u);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

void sub_10004A598(void **a1)
{
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v7)
    {
      v8 = v7;
      if ([v8 publicPermission] == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v9;

      sub_10009DB00();
      v10 = v8;
      v11 = sub_100098F14(v7);

      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v11;

      sub_10009DB00();
      sub_10009D9D0();
      v12 = v10;
      v13 = sub_10009D9E0();
      v14 = sub_10009DFF0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109120;
        *(v15 + 4) = [v12 allowsAccessRequests];

        _os_log_impl(&_mh_execute_header, v13, v14, "optionsModel ckShareModel.$ckShare about to set anyoneCanRequestAccessPublisher to ckShare's allowsAccessRequests: %{BOOL}d", v15, 8u);
      }

      else
      {

        v13 = v12;
      }

      (*(v3 + 8))(v6, v2);
      v16 = [v12 allowsAccessRequests];
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v16;

      sub_10009DB00();
      v17 = [v12 currentUserParticipant];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 role];
        sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
        v20 = [v12 owner];
        v21 = sub_10009E110();

        swift_getKeyPath();
        swift_getKeyPath();
        HIBYTE(v22) = v21 & 1 | (v19 == 2);

        sub_10009DB00();
      }

      sub_10004A250();
    }

    else
    {
    }
  }
}

uint64_t sub_10004A948(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v3 = sub_10004AAC4(v4, v1);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DB00();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    sub_10004AB4C(v3, v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10009DB00();
  }

  return result;
}

uint64_t sub_10004AAC4(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC;
  result = (a2 >> 1) & 2;
  do
  {
    while (v2 > 1)
    {
      if (v2 == 2)
      {
        v2 = 1;
        if (v3 != 8)
        {
          return result;
        }
      }

      else
      {
        if (v3 == 12)
        {
          return 3;
        }

LABEL_11:
        if ((a2 & 8) != 0)
        {
          v5 = v2 == 1;
          v2 = 1;
          if (v5)
          {
            return 0;
          }
        }

        else
        {
          v5 = v2 == 2;
          v2 = 2;
          if (v5)
          {
            return 0;
          }
        }
      }
    }

    if (!v2)
    {
      if (!a2)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v2 = 2;
  }

  while ((a2 & 8) == 0);
  return 1;
}

uint64_t sub_10004AB4C(char a1, uint64_t a2)
{
  if ((a2 & 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a2 & 1u) <= (a2 == 0))
  {
    result = a2 == 0;
  }

  else
  {
    result = a2 & 1;
  }

  do
  {
    while (a1)
    {
      if (a1 == 1)
      {
        a1 = 2;
        if ((a2 & 3) != 2)
        {
          return result;
        }
      }

      else
      {
        a1 = 1;
        if (a2 == 0 || (a2 & 2) != 0)
        {
          return 2;
        }
      }
    }

    a1 = v3;
  }

  while (a2);
  return 0;
}

uint64_t sub_10004ABC0()
{
  v1 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__readWritePermission;
  v2 = sub_100003714(&qword_1000CABE0, &qword_1000A0E68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__sharingMode;
  v4 = sub_100003714(&qword_1000CABF8, &qword_1000A0E70);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__sharingOptionsAllowed;
  v6 = sub_100003714(&qword_1000CAAB0, &qword_1000A0DC0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__allowCoOwnersEditing;
  v8 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__newParticipantsCanBeCoOwners;
  v11 = sub_100003714(&qword_1000CABC0, &qword_1000A0E60);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v9(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__participantsAreAlwaysCoOwners, v8);
  v13 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__currentUserCanInvitePublisher;
  v14 = sub_100003714(&qword_1000CB758, &qword_1000A2440);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v9(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__currentUserCanManageAccessRequestsPublisher, v8);
  v9(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__anyoneCanRequestAccessPublisher, v8);
  v12(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__coOwnerNewParticipantsCanBeCoOwners, v11);
  v15 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel);

  v16 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_store);

  return v0;
}

uint64_t sub_10004AE58()
{
  sub_10004ABC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OptionsModel()
{
  result = qword_1000CB640;
  if (!qword_1000CB640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004AF04()
{
  sub_100031F60(319, &qword_1000CB650);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_100031F60(319, &qword_1000CB658);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_100031F60(319, &qword_1000CA680);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_100031F60(319, &qword_1000CA610);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_100031F60(319, &qword_1000CB660);
          if (v10 <= 0x3F)
          {
            v11 = *(v9 - 8) + 64;
            sub_10004B140();
            if (v13 <= 0x3F)
            {
              v17 = *(v12 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10004B140()
{
  if (!qword_1000CB668)
  {
    sub_10000594C(&unk_1000CB670, &qword_1000A2138);
    v0 = sub_10009DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CB668);
    }
  }
}

uint64_t sub_10004B1CC()
{
  v1[2] = v0;
  v2 = sub_10009D9F0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_10009DF10();
  v1[6] = sub_10009DF00();
  v6 = sub_10009DED0();
  v1[7] = v6;
  v1[8] = v5;

  return _swift_task_switch(sub_10004B2C0, v6, v5);
}

uint64_t sub_10004B2C0()
{
  *(v0 + 72) = 10;
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_10009D9D0();

  v3 = sub_10009D9E0();
  v4 = sub_10009DFF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    *(v6 + 4) = *(v0 + 89) != 2;

    *(v6 + 8) = 2048;
    *(v6 + 10) = 10;
    _os_log_impl(&_mh_execute_header, v3, v4, "waitForCurrentUserInvitingFromShare completed: %{BOOL}d, retriesLeft: %ld", v6, 0x12u);
  }

  else
  {
    v7 = *(v0 + 16);
  }

  v8 = *(v0 + 16);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 88) == 2)
  {
    v9 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_10004B52C;

    return static Task<>.sleep(nanoseconds:)(10000000);
  }

  else
  {
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_10004B52C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_10004CA3C;
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_10004B650;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10004B650(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = v2 - 1;
  if (v2 == 1)
  {
    v20 = *(v1 + 40);
    v19 = *(v1 + 48);

    sub_100005B1C();
    swift_allocError();
    *v21 = 0xD000000000000026;
    *(v21 + 8) = 0x80000001000A72C0;
    *(v21 + 16) = xmmword_1000A2110;
    *(v21 + 32) = 0x80000001000A72F0;
    *(v21 + 40) = 11;
    swift_willThrow();

    v17 = *(v1 + 8);
  }

  else
  {
    if (v2 < 2)
    {
      __break(1u);
      return static Task<>.sleep(nanoseconds:)(a1);
    }

    *(v1 + 72) = v3;
    v4 = *(v1 + 40);
    v5 = *(v1 + 16);
    sub_10009D9D0();

    v6 = sub_10009D9E0();
    v7 = sub_10009DFF0();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v1 + 16);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 67109376;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      *(v10 + 4) = *(v1 + 89) != 2;

      *(v10 + 8) = 2048;
      *(v10 + 10) = v3;
      _os_log_impl(&_mh_execute_header, v6, v7, "waitForCurrentUserInvitingFromShare completed: %{BOOL}d, retriesLeft: %ld", v10, 0x12u);
    }

    else
    {
      v11 = *(v1 + 16);
    }

    v12 = *(v1 + 16);
    (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if (*(v1 + 88) == 2)
    {
      v13 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v14 = swift_task_alloc();
      *(v1 + 80) = v14;
      *v14 = v1;
      v14[1] = sub_10004B52C;
      a1 = 10000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v16 = *(v1 + 40);
    v15 = *(v1 + 48);

    v17 = *(v1 + 8);
  }

  return v17();
}

uint64_t sub_10004B974@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v5;
  return result;
}

uint64_t sub_10004B9F4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

char *sub_10004BA80(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v97 = *v1;
  v3 = sub_100003714(&qword_1000CA950, &qword_1000A0C70);
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  __chkstk_darwin(v3);
  v88 = v73 - v5;
  v6 = sub_100003714(&qword_1000CA958, &qword_1000A0C78);
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  __chkstk_darwin(v6);
  v91 = v73 - v8;
  v9 = sub_100003714(&qword_1000CB750, &qword_1000A2438);
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  __chkstk_darwin(v9);
  v94 = v73 - v11;
  v12 = sub_100003714(&qword_1000CAA08, &qword_1000A0D28);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v87 = v73 - v14;
  v82 = sub_100003714(&qword_1000CA9F0, &qword_1000A0D10);
  v81 = *(v82 - 8);
  v15 = *(v81 + 64);
  __chkstk_darwin(v82);
  v80 = v73 - v16;
  v17 = sub_100003714(&qword_1000CA9C0, &qword_1000A0CE0);
  v84 = *(v17 - 8);
  v85 = v17;
  v18 = *(v84 + 64);
  __chkstk_darwin(v17);
  v83 = v73 - v19;
  v79 = sub_100003714(&qword_1000CB758, &qword_1000A2440);
  v78 = *(v79 - 8);
  v20 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = v73 - v21;
  v98 = sub_100003714(&qword_1000CABC0, &qword_1000A0E60);
  v76 = *(v98 - 1);
  v22 = *(v76 + 64);
  __chkstk_darwin(v98);
  v75 = v73 - v23;
  v74 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v24 = *(v74 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v74);
  v27 = v73 - v26;
  v28 = sub_100003714(&qword_1000CABF8, &qword_1000A0E70);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v73 - v31;
  v33 = sub_100003714(&qword_1000CABE0, &qword_1000A0E68);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = v73 - v36;
  v38 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__readWritePermission;
  LOBYTE(v100) = 1;
  sub_10009DAC0();
  (*(v34 + 32))(&v2[v38], v37, v33);
  v39 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__sharingMode;
  LOBYTE(v100) = 0;
  sub_10009DAC0();
  (*(v29 + 32))(&v2[v39], v32, v28);
  v40 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__allowCoOwnersEditing;
  LOBYTE(v100) = 0;
  sub_10009DAC0();
  v41 = *(v24 + 32);
  v42 = v74;
  v41(&v2[v40], v27, v74);
  v43 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__newParticipantsCanBeCoOwners;
  v100 = &off_1000C1988;
  v44 = v75;
  sub_10009DAC0();
  v76 = *(v76 + 32);
  (v76)(&v2[v43], v44, v98);
  v45 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__participantsAreAlwaysCoOwners;
  LOBYTE(v100) = 0;
  sub_10009DAC0();
  v41(&v2[v45], v27, v42);
  v46 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__currentUserCanInvitePublisher;
  LOBYTE(v100) = 2;
  sub_100003714(&unk_1000CB670, &qword_1000A2138);
  v47 = v77;
  sub_10009DAC0();
  (*(v78 + 32))(&v2[v46], v47, v79);
  v48 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__currentUserCanManageAccessRequestsPublisher;
  LOBYTE(v100) = 0;
  sub_10009DAC0();
  v41(&v2[v48], v27, v42);
  v49 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__anyoneCanRequestAccessPublisher;
  LOBYTE(v100) = 0;
  sub_10009DAC0();
  v41(&v2[v49], v27, v42);
  v50 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel__coOwnerNewParticipantsCanBeCoOwners;
  v100 = &off_1000C19B0;
  sub_10009DAC0();
  (v76)(&v2[v50], v44, v98);
  v2[OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride] = 2;
  if (_swiftEmptyArrayStorage >> 62 && sub_10009E260())
  {
    v51 = sub_1000327CC(_swiftEmptyArrayStorage);
  }

  else
  {
    v51 = &_swiftEmptySetSingleton;
  }

  v79 = OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_store;
  *&v2[OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_store] = v51;
  v52 = v86;
  *&v2[OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel] = v86;
  swift_beginAccess();
  v99 = 15;

  sub_10009DAC0();
  swift_endAccess();
  swift_beginAccess();
  sub_100003714(&qword_1000CABA8, &qword_1000A0E58);
  v53 = v80;
  sub_10009DAD0();
  swift_endAccess();
  v98 = objc_opt_self();
  v54 = [v98 mainRunLoop];
  v100 = v54;
  v77 = sub_10009E130();
  v55 = *(v77 - 1);
  v76 = *(v55 + 56);
  v78 = v55 + 56;
  v56 = v87;
  (v76)(v87, 1, 1, v77);
  v75 = sub_1000037C4(0, &qword_1000CAB88, NSRunLoop_ptr);
  v73[1] = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100039B10(&qword_1000CABB0, &qword_1000CA9F0, &qword_1000A0D10);
  v74 = sub_10004C89C();
  v58 = v82;
  v57 = v83;
  sub_10009DB50();
  sub_10004C904(v56);

  (*(v81 + 8))(v53, v58);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v52;
  sub_100039B10(&qword_1000CAC30, &qword_1000CA9C0, &qword_1000A0CE0);

  v61 = v85;
  sub_10009DB70();

  (*(v84 + 8))(v57, v61);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  sub_100003714(&qword_1000CAAB0, &qword_1000A0DC0);
  v62 = v88;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CACB0, &qword_1000CA950, &qword_1000A0C70);
  sub_1000399B0();
  v63 = v90;
  v64 = v91;
  sub_10009DB60();
  (*(v89 + 8))(v62, v63);
  v65 = [v98 mainRunLoop];
  v100 = v65;
  (v76)(v56, 1, 1, v77);
  sub_100039B10(&qword_1000CACF0, &qword_1000CA958, &qword_1000A0C78);
  v66 = v93;
  v67 = v94;
  sub_10009DB50();
  sub_10004C904(v56);

  (*(v92 + 8))(v64, v66);
  v68 = swift_allocObject();
  swift_weakInit();

  v69 = swift_allocObject();
  v70 = v97;
  *(v69 + 16) = v68;
  *(v69 + 24) = v70;
  sub_100039B10(&qword_1000CB760, &qword_1000CB750, &qword_1000A2438);
  v71 = v96;
  sub_10009DB70();

  (*(v95 + 8))(v67, v71);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  return v2;
}

unint64_t sub_10004C89C()
{
  result = qword_1000CAB98;
  if (!qword_1000CAB98)
  {
    sub_1000037C4(255, &qword_1000CAB88, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB98);
  }

  return result;
}

uint64_t sub_10004C904(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000CAA08, &qword_1000A0D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004C96C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C9A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10004C9E4(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_10004A598(a1);
}

uint64_t sub_10004C9EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004CA24(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10004A948(a1);
}

BOOL sub_10004CA5C(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = *(result + 32);
  if (v3 == 1)
  {
    if (v2 == 1)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (*(result + 33) == 1)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v5 = 0;
  }

  else
  {
    if (v2 == 1)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v5 = *(result + 33);
  }

  v6 = v3 == v5;
  v4 = 1;
  if (!v6)
  {
    v4 = 2;
  }

LABEL_11:
  v7 = *(a2 + 16);
  if (!v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(a2 + 32);
  if ((v8 & 1) == 0)
  {
    if (v7 != 1)
    {
      v10 = *(a2 + 33);
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v7 != 1)
  {
    if (*(a2 + 33) == 1)
    {
      v9 = 0;
      return v4 == v9;
    }

    v10 = 0;
LABEL_19:
    v6 = v8 == v10;
    v9 = 1;
    if (!v6)
    {
      v9 = 2;
    }

    return v4 == v9;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10004CB38(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  sub_100008658(a1, &v16 - v12, &qword_1000CA250, &qword_10009FDF8);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008658(v13, v8, &qword_1000CA250, &qword_10009FDF8);

  sub_10009DB00();
  sub_1000218C4(v11);
  sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
  return sub_100008728(v13, &qword_1000CA250, &qword_10009FDF8);
}

double sub_10004CCF0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10004CD70(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_10004CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100008658(a3, v24 - v10, &qword_1000CA8F0, &qword_1000A09C8);
  v12 = sub_10009DF40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008728(v11, &qword_1000CA8F0, &qword_1000A09C8);
  }

  else
  {
    sub_10009DF30();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10009DED0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10009DDC0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100008728(a3, &qword_1000CA8F0, &qword_1000A09C8);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008728(a3, &qword_1000CA8F0, &qword_1000A09C8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

Class sub_10004D0A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
    v5.super.isa = sub_10009DCF0().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

id sub_10004D13C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(*(sub_10009D9F0() - 8) + 64);
  __chkstk_darwin();
  sub_1000037C4(0, &qword_1000CB7B0, RBSProcessHandle_ptr);
  isa = sub_10009E370().super.super.isa;
  v5 = sub_100079A94(isa);

  v6 = [v5 bundle];
  if (v6 && (v7 = v6, v8 = [v6 identifier], v7, v8))
  {
    v9 = sub_10009DD90();
    v11 = v10;
  }

  else
  {

    v9 = 0;
    v11 = 0;
  }

  v12 = &v1[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
  *v12 = v9;
  v12[1] = v11;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_10004D440(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009D9F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10009D860();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 url];
  sub_10009D820();

  sub_10009D9D0();
  v16 = sub_10009D9E0();
  v17 = sub_10009DFF0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v20 = v6;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Extracting url from FPSandboxingURLWrapper then calling:", v18, 2u);
    v6 = v20;
  }

  (*(v7 + 8))(v10, v6);
  sub_10004D684(v14, a2, a3);
  return (*(v11 + 8))(v14, v21);
}

uint64_t sub_10004D684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10009D860();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
  v16 = sub_10009E2C0();
  sub_100079B58(v16, v17, 0xD00000000000001ELL, 0x80000001000A8060);

  sub_10009DF20();
  v18 = sub_10009DF40();
  (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  (*(v9 + 16))(v11, a1, v8);
  sub_10009DF10();
  v19 = v4;

  v20 = sub_10009DF00();
  v21 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v20;
  *(v22 + 3) = &protocol witness table for MainActor;
  *(v22 + 4) = v19;
  *(v22 + 5) = a2;
  *(v22 + 6) = a3;
  (*(v9 + 32))(&v22[v21], v11, v8);
  sub_100019B10(0, 0, v15, &unk_1000A29D8, v22);
}

uint64_t sub_10004D940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[83] = a7;
  v7[82] = a6;
  v7[81] = a5;
  v7[80] = a4;
  v8 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v7[84] = swift_task_alloc();
  v7[85] = swift_task_alloc();
  v9 = sub_10009D6F0();
  v7[86] = v9;
  v10 = *(v9 - 8);
  v7[87] = v10;
  v11 = *(v10 + 64) + 15;
  v7[88] = swift_task_alloc();
  v12 = sub_10009D860();
  v7[89] = v12;
  v13 = *(v12 - 8);
  v7[90] = v13;
  v7[91] = *(v13 + 64);
  v7[92] = swift_task_alloc();
  v7[93] = swift_task_alloc();
  sub_10009DF10();
  v7[94] = sub_10009DF00();
  v15 = sub_10009DED0();
  v7[95] = v15;
  v7[96] = v14;

  return _swift_task_switch(sub_10004DAF8, v15, v14);
}

uint64_t sub_10004DAF8()
{
  v1 = *(v0 + 664);
  v2 = sub_10009D830();
  sub_10009D800(v3);
  v5 = v4;
  v6 = [v4 br_isInSyncedLocation];

  if (v2)
  {
    v7 = *(v0 + 664);
    sub_10009D810();
  }

  if (!v6)
  {
    v16 = *(v0 + 752);
    v17 = *(v0 + 744);
    v18 = *(v0 + 728);
    v19 = *(v0 + 720);
    v20 = *(v0 + 712);
    v21 = *(v0 + 664);
    v108 = *(v0 + 648);
    v113 = *(v0 + 656);
    v22 = *(v0 + 640);

    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 136) = -1;
    (*(v19 + 16))(v17, v21, v20);
    v23 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v24 = (v18 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    (*(v19 + 32))(v25 + v23, v17, v20);
    *(v25 + v24) = 1;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
    v26 = v22;
    sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0x6542746F6E6E6163, 0xEE00646572616853, v0 + 96, 0, sub_10008F230, v25);

    v108(1, 0);
    goto LABEL_21;
  }

  v8 = *(v0 + 664);
  v9 = shareStatus(url:)();
  if ((v9 & 0x10000) != 0)
  {
    v27 = *(v0 + 752);
    v28 = *(v0 + 744);
    v29 = *(v0 + 728);
    v30 = *(v0 + 720);
    v31 = *(v0 + 712);
    v32 = *(v0 + 664);
    v109 = *(v0 + 648);
    v114 = *(v0 + 656);
    v104 = *(v0 + 640);

    *(v0 + 560) = 0;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 568) = -1;
    v33 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    (*(v30 + 16))(v28, v32, v31);
    v34 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v35 = (v29 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    (*(v30 + 32))(v36 + v34, v28, v31);
    *(v36 + v35) = 0;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v104;
    v37 = v104;
    sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0x20676E6974746567, 0xEE00737574617473, v0 + 528, v33, sub_10008F514, v36);

    v109(0, v33);

    goto LABEL_21;
  }

  if (v9)
  {
    v10 = v9;
    v11 = *(v0 + 752);
    v12 = *(v0 + 704);
    v13 = *(v0 + 664);

    sub_100003714(&qword_1000CA498, &qword_1000A04B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = NSURLParentDirectoryURLKey;
    v15 = NSURLParentDirectoryURLKey;
    sub_1000315FC(inited);
    swift_setDeallocating();
    sub_1000462B8(inited + 32);
    sub_10009D7C0();
    v41 = *(v0 + 720);
    v42 = *(v0 + 712);
    v43 = *(v0 + 704);
    v44 = *(v0 + 680);
    v45 = *(v0 + 672);

    sub_10009D6B0();
    sub_100008658(v44, v45, &qword_1000CA250, &qword_10009FDF8);
    if ((*(v41 + 48))(v45, 1, v42) == 1)
    {
      sub_100008728(*(v0 + 672), &qword_1000CA250, &qword_10009FDF8);
LABEL_14:
      v46 = *(v0 + 744);
      v87 = *(v0 + 728);
      v47 = *(v0 + 720);
      v48 = *(v0 + 712);
      v110 = *(v0 + 688);
      v115 = *(v0 + 704);
      v101 = *(v0 + 680);
      v105 = *(v0 + 696);
      v49 = *(v0 + 664);
      v95 = *(v0 + 648);
      v98 = *(v0 + 656);
      v92 = *(v0 + 640);
      if ((v10 & 0x100) != 0)
      {
        v50 = 4;
      }

      else
      {
        v50 = 2;
      }

      *(v0 + 384) = 0u;
      *(v0 + 400) = 0u;
      *(v0 + 416) = 0;
      *(v0 + 424) = -1;
      *(v0 + 632) = v50;
      type metadata accessor for CSUIShareItemStatus(0);
      v89 = sub_10009DDA0();
      v52 = v51;
      (*(v47 + 16))(v46, v49, v48);
      v53 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v54 = (v87 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      (*(v47 + 32))(v55 + v53, v46, v48);
      *(v55 + v54) = v50;
      *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v92;
      v56 = v92;
      sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, v89, v52, v0 + 384, 0, sub_10008F514, v55);

      v95(v50, 0);
      sub_100008728(v101, &qword_1000CA250, &qword_10009FDF8);
      (*(v105 + 8))(v115, v110);
      goto LABEL_21;
    }

    v57 = *(*(v0 + 720) + 32);
    v57(*(v0 + 736), *(v0 + 672), *(v0 + 712));
    v58 = shareStatus(url:)();
    if ((v58 & 0x10000) != 0)
    {
      v76 = *(v0 + 744);
      v77 = *(v0 + 728);
      v78 = *(v0 + 720);
      v79 = *(v0 + 712);
      v100 = *(v0 + 736);
      v103 = *(v0 + 696);
      v107 = *(v0 + 688);
      v112 = *(v0 + 704);
      v117 = v57;
      v80 = *(v0 + 664);
      v94 = *(v0 + 656);
      v97 = *(v0 + 680);
      v88 = *(v0 + 640);
      v91 = *(v0 + 648);
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0;
      *(v0 + 520) = -1;
      v86 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
      v81 = v76;
      (*(v78 + 16))(v76, v80, v79);
      v82 = (*(v78 + 80) + 16) & ~*(v78 + 80);
      v83 = (v77 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      v117(v84 + v82, v81, v79);
      *(v84 + v83) = 0;
      *(v84 + ((v83 + 15) & 0xFFFFFFFFFFFFFFF8)) = v88;
      v85 = v88;
      sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0x7320746E65726170, 0xED00007375746174, v0 + 480, v86, sub_10008F514, v84);

      v91(0, v86);
      (*(v78 + 8))(v100, v79);
      sub_100008728(v97, &qword_1000CA250, &qword_10009FDF8);
      (*(v103 + 8))(v112, v107);
    }

    else
    {
      if ((v58 & 1) == 0)
      {
        (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));
        goto LABEL_14;
      }

      v59 = *(v0 + 744);
      v60 = *(v0 + 728);
      v116 = v57;
      v61 = *(v0 + 720);
      v62 = *(v0 + 712);
      v99 = *(v0 + 736);
      v102 = *(v0 + 696);
      v106 = *(v0 + 688);
      v111 = *(v0 + 704);
      v63 = *(v0 + 664);
      v93 = *(v0 + 656);
      v96 = *(v0 + 680);
      v64 = *(v0 + 648);
      v65 = *(v0 + 640);
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
      *(v0 + 464) = 0;
      *(v0 + 472) = -1;
      v90 = v64;
      (*(v61 + 16))(v59, v63, v62);
      v66 = (*(v61 + 80) + 16) & ~*(v61 + 80);
      v67 = (v60 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
      v68 = swift_allocObject();
      v116(v68 + v66, v59, v62);
      *(v68 + v67) = 5;
      *(v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
      v69 = v65;
      sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0x7320746E65726170, 0xED00007375746174, v0 + 432, 0, sub_10008F514, v68);

      v90(5, 0);
      (*(v61 + 8))(v99, v62);
      sub_100008728(v96, &qword_1000CA250, &qword_10009FDF8);
      (*(v102 + 8))(v111, v106);
    }

LABEL_21:
    v70 = *(v0 + 744);
    v71 = *(v0 + 736);
    v72 = *(v0 + 704);
    v73 = *(v0 + 680);
    v74 = *(v0 + 672);

    v75 = *(v0 + 8);

    return v75();
  }

  v38 = swift_task_alloc();
  *(v0 + 776) = v38;
  *v38 = v0;
  v38[1] = sub_10004EA04;
  v39 = *(v0 + 664);

  return sub_10007A254(v39);
}

uint64_t sub_10004EA04(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 776);
  v6 = *v2;
  *(*v2 + 784) = v1;

  if (v1)
  {
    v7 = *(v4 + 768);
    v8 = *(v4 + 760);
    v9 = sub_10004EDD4;
  }

  else
  {
    *(v4 + 137) = a1 & 1;
    v7 = *(v4 + 768);
    v8 = *(v4 + 760);
    v9 = sub_10004EB38;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10004EB38()
{
  if (*(v0 + 137))
  {
    v1 = swift_task_alloc();
    *(v0 + 792) = v1;
    *v1 = v0;
    v1[1] = sub_10004F0A0;
    v2 = *(v0 + 664);

    return sub_10007AC74(v2);
  }

  else
  {
    v4 = *(v0 + 752);
    v5 = *(v0 + 744);
    v6 = *(v0 + 728);
    v7 = *(v0 + 720);
    v8 = *(v0 + 712);
    v9 = *(v0 + 664);
    v21 = *(v0 + 648);
    v22 = *(v0 + 656);
    v10 = *(v0 + 640);

    *(v0 + 224) = 0;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 232) = -1;
    (*(v7 + 16))(v5, v9, v8);
    v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    (*(v7 + 32))(v13 + v11, v5, v8);
    *(v13 + v12) = 1;
    *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;
    v14 = v10;
    sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0xD000000000000030, 0x80000001000A80C0, v0 + 192, 0, sub_10008F514, v13);

    v21(1, 0);
    v15 = *(v0 + 744);
    v16 = *(v0 + 736);
    v17 = *(v0 + 704);
    v18 = *(v0 + 680);
    v19 = *(v0 + 672);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10004EDD4()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  v6 = *(v0 + 712);
  v7 = *(v0 + 664);
  v21 = *(v0 + 648);
  v22 = *(v0 + 656);
  v20 = *(v0 + 640);

  *(v0 + 176) = 0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 184) = -1;
  sub_10009E1E0(64);
  v24._countAndFlagsBits = 0xD00000000000003ELL;
  v24._object = 0x80000001000A8080;
  sub_10009DE10(v24);
  *(v0 + 616) = v1;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  v25._countAndFlagsBits = sub_10009DDA0();
  sub_10009DE10(v25);

  v8 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  (*(v5 + 16))(v3, v7, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v9, v3, v6);
  *(v11 + v10) = 1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v12 = v20;
  sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, 0, 0xE000000000000000, v0 + 144, v8, sub_10008F514, v11);

  v21(1, v8);

  v13 = *(v0 + 744);
  v14 = *(v0 + 736);
  v15 = *(v0 + 704);
  v16 = *(v0 + 680);
  v17 = *(v0 + 672);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10004F0A0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v7 = *v1;
  *(*v1 + 138) = a1;

  v4 = *(v2 + 768);
  v5 = *(v2 + 760);

  return _swift_task_switch(sub_10004F1C8, v5, v4);
}

uint64_t sub_10004F1C8()
{
  v1 = *(v0 + 138);
  v2 = *(v0 + 752);

  v3 = *(v0 + 744);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  v6 = *(v0 + 712);
  v7 = *(v0 + 664);
  v8 = *(v0 + 648);
  v28 = v8;
  v29 = *(v0 + 656);
  v9 = *(v0 + 640);
  if (v1 == 1)
  {
    *(v0 + 320) = 0;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 328) = -1;
    (*(v5 + 16))(v3, v7, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v10, v3, v6);
    v13 = 6;
    *(v12 + v11) = 6;
    *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v9;
    v14 = v9;
    v15 = 0xD000000000000024;
    v16 = 0x80000001000A8100;
    v17 = v0 + 288;
  }

  else
  {
    *(v0 + 272) = 0;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 280) = -1;
    (*(v5 + 16))(v3, v7, v6);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v19 = (v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v18, v3, v6);
    v13 = 3;
    *(v12 + v19) = 3;
    *(v12 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v9;
    v20 = v9;
    v15 = 0x61685365426E6163;
    v16 = 0xEB00000000646572;
    v17 = v0 + 240;
  }

  sub_10004F5E0(0xD00000000000001ELL, 0x80000001000A8060, v15, v16, v17, 0, sub_10008F514, v12);

  v28(v13, 0);
  v21 = *(v0 + 744);
  v22 = *(v0 + 736);
  v23 = *(v0 + 704);
  v24 = *(v0 + 680);
  v25 = *(v0 + 672);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10004F4A4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = type metadata accessor for SPIAnalyticsEvent();
  a5[4] = &off_1000C2CF0;
  v10 = sub_10008D654(a5);
  v11 = sub_100003714(&qword_1000CB080, &qword_1000A18E8);
  v12 = v11[12];
  v13 = (v10 + v11[16]);
  v14 = (v10 + v11[20]);
  v15 = sub_10009D860();
  (*(*(v15 - 8) + 16))(v10, a2, v15);
  *(v10 + v12) = a3;
  v16 = *(a4 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v17 = *(a4 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v13 = v16;
  v13[1] = v17;
  v18 = *(a1 + 25);
  v19 = a1[1];
  *v14 = *a1;
  v14[1] = v19;
  *(v14 + 25) = v18;
  swift_storeEnumTagMultiPayload();

  return sub_100008658(a1, &v21, &qword_1000CB088, &unk_1000A18F0);
}

uint64_t sub_10004F5E0(uint64_t a1, unint64_t a2, void (*a3)(void, void), unint64_t a4, uint64_t a5, void *a6, void (*a7)(uint64_t *__return_ptr, __int128 *), uint64_t a8)
{
  v127 = a8;
  v128 = a7;
  v131 = a3;
  v13 = *(a5 + 8);
  v138 = *a5;
  v137 = v13;
  v14 = *(a5 + 24);
  v136 = *(a5 + 16);
  v139 = v14;
  v140 = *(a5 + 32);
  v133 = *(a5 + 40);
  v142 = sub_10009D9F0();
  v141 = *(v142 - 8);
  v15 = *(v141 + 64);
  v16 = __chkstk_darwin(v142);
  v135 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v126 = &v121 - v19;
  v20 = __chkstk_darwin(v18);
  v129 = &v121 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v121 - v23;
  __chkstk_darwin(v22);
  v26 = &v121 - v25;
  v27 = sub_10009DE60();
  sub_1000300B8(v27, v28, a1, a2);
  v30 = v29;

  v132 = a2;
  v125 = a1;
  if (v30)
  {
    v130 = 0;
    v134 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v130 = sub_10009DDD0();
    v134 = v31;
  }

  v32 = v135;
  if (a6)
  {
    if (a4)
    {
      v33 = a6;
      v34 = a4;
    }

    else
    {
      v57 = a6;
      v58 = [v57 description];
      v131 = sub_10009DD90();
      v34 = v59;
    }

    v60 = v134;
    v61 = v132;

    v62 = [a6 code];
    v63 = 0xED0000726F727265;
    v64 = 0x206C6172656E6567;
    if (v62 == 12)
    {
      v65 = 12;
    }

    else
    {
      v65 = 11;
    }

    if (v62 == 12)
    {
      v64 = 0xD000000000000018;
      v63 = 0x80000001000A77D0;
    }

    if (v62 == 10)
    {
      v66 = 13;
    }

    else
    {
      v66 = v65;
    }

    if (v62 == 10)
    {
      v64 = 0xD000000000000019;
    }

    v139 = v64;
    if (v62 == 10)
    {
      v67 = 0x80000001000A77B0;
    }

    else
    {
      v67 = v63;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v68 = a6;

    v69 = sub_10009D9E0();
    v70 = sub_10009DFD0();

    if (!os_log_type_enabled(v69, v70))
    {

      (*(v141 + 8))(v26, v142);
      v52 = 0;
      v53 = v125;
      v55 = v61;
      v56 = v131;
      v32 = v135;
      v54 = v129;
      v51 = v66;
      goto LABEL_37;
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v140 = v34;
    *&v153 = v72;
    *v71 = 136315906;
    *(v71 + 4) = sub_1000307A4(v130, v60, &v153);
    *(v71 + 12) = 2080;
    v73 = sub_1000307A4(v131, v140, &v153);

    *(v71 + 14) = v73;
    *(v71 + 22) = 2080;
    v74 = sub_1000307A4(v139, v67, &v153);

    *(v71 + 24) = v74;
    *(v71 + 32) = 2080;
    v75 = v68;
    v76 = [v75 description];
    v77 = sub_10009DD90();
    v79 = v78;

    v80 = v77;
    v51 = v66;
    v81 = sub_1000307A4(v80, v79, &v153);

    *(v71 + 34) = v81;
    _os_log_impl(&_mh_execute_header, v69, v70, "Error in %s %s, reporting as %s, NSError: %s", v71, 0x2Au);
    swift_arrayDestroy();
    v34 = v140;

    (*(v141 + 8))(v26, v142);
    v52 = 0;
    v53 = v125;
    v55 = v132;
    v56 = v131;
    v32 = v135;
    goto LABEL_34;
  }

  v35 = *(a5 + 40);
  if (v35 == 255)
  {
    v34 = v140;
    v51 = v133;
    v52 = v136;
    v53 = v138;
    v55 = v137;
    v56 = v139;
LABEL_34:
    v54 = v129;
    goto LABEL_37;
  }

  v36 = v24;
  v37 = *(a5 + 16);
  v150 = *a5;
  v151 = v37;
  v152 = *(a5 + 32);
  v34 = v140;
  sub_100032380(v138, v137, v136, v139, v140, v133);
  sub_10009D9D0();

  v38 = v134;

  sub_100008658(a5, &v153, &qword_1000CB088, &unk_1000A18F0);
  v123 = v36;
  v39 = sub_10009D9E0();
  v40 = sub_10009DFD0();

  sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
  v122 = v40;
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v149 = v121;
    *v41 = 136315650;
    *(v41 + 4) = sub_1000307A4(v130, v38, &v149);
    *(v41 + 12) = 2080;
    if (a4)
    {
      v42 = v131;
    }

    else
    {
      v42 = 0;
    }

    if (a4)
    {
      v43 = a4;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    v44 = sub_1000307A4(v42, v43, &v149);
    v32 = v135;

    *(v41 + 14) = v44;
    *(v41 + 22) = 2080;
    v153 = v150;
    v154 = v151;
    v155 = v152;
    v156 = v35;
    v45 = v136;
    v46 = v139;
    v47 = v133;
    sub_100032380(v138, v137, v136, v139, v34, v133);
    v48 = sub_10009DDA0();
    v50 = sub_1000307A4(v48, v49, &v149);

    *(v41 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v39, v122, "SharingError in %s %s, error: %s", v41, 0x20u);
    swift_arrayDestroy();

    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
    (*(v141 + 8))(v123, v142);
    v51 = v47;
    v52 = v45;
    v53 = v138;
    v54 = v129;
    v55 = v137;
    v56 = v46;
  }

  else
  {
    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

    (*(v141 + 8))(v123, v142);
    v51 = v133;
    v52 = v136;
    v53 = v138;
    v54 = v129;
    v55 = v137;
    v56 = v139;
  }

  sub_100032380(v53, v55, v52, v56, v34, v51);
  sub_100032380(v53, v55, v52, v56, v34, v51);
LABEL_37:
  v82 = 0x73736563637553;
  *&v153 = v53;
  *(&v153 + 1) = v55;
  *&v154 = v52;
  *(&v154 + 1) = v56;
  v155 = v34;
  v156 = v51;
  v128(&v149, &v153);
  v138 = v53;
  v136 = v52;
  sub_10003C04C(v53, v55, v52, v56, v34, v51);
  sub_100008658(&v149, &v145, &qword_1000CB798, &qword_1000A27F0);
  v137 = v55;
  v139 = v56;
  if (v146)
  {
    sub_10008D5D8(&v145, v147);
    sub_10009D9D0();
    sub_10008D5F0(v147, &v145);
    v83 = v134;

    v84 = sub_10009D9E0();
    v85 = sub_10009DFF0();

    v86 = os_log_type_enabled(v84, v85);
    v140 = v34;
    v133 = v51;
    if (v86)
    {
      v87 = swift_slowAlloc();
      v143[0] = swift_slowAlloc();
      *v87 = 136315394;
      *(v87 + 4) = sub_1000307A4(v130, v83, v143);
      *(v87 + 12) = 2080;
      sub_1000067C8(&v145, v146);
      v88 = sub_10003BB34();
      v90 = v89;
      sub_10000670C(&v145);
      v91 = sub_1000307A4(v88, v90, v143);
      v92 = v142;

      *(v87 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v84, v85, "Finishing %s, sending event %s", v87, 0x16u);
      swift_arrayDestroy();

      v93 = *(v141 + 8);
      v93(v54, v92);
    }

    else
    {

      v93 = *(v141 + 8);
      v93(v54, v142);
      sub_10000670C(&v145);
    }

    v96 = sub_1000067C8(v147, v148);
    sub_100079DD8(v96);
    v97 = v126;
    sub_10009D9D0();
    sub_10008D5F0(v147, &v145);
    v98 = v132;

    v99 = v124;
    v100 = sub_10009D9E0();
    v101 = sub_10009DFF0();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v131 = v93;
      v144 = v103;
      *v102 = 136315650;
      v104 = *&v99[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v143[0] = *&v99[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v143[1] = v104;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v105 = sub_10009DDA0();
      v107 = sub_1000307A4(v105, v106, &v144);

      *(v102 + 4) = v107;
      *(v102 + 12) = 2080;
      sub_1000067C8(&v145, v146);
      sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v108 = sub_10009DD10();
      v110 = v109;

      sub_10000670C(&v145);
      v111 = v108;
      v112 = v142;
      v113 = sub_1000307A4(v111, v110, &v144);
      v32 = v135;

      *(v102 + 14) = v113;
      *(v102 + 22) = 2080;
      *(v102 + 24) = sub_1000307A4(v125, v98, &v144);
      _os_log_impl(&_mh_execute_header, v100, v101, "Requester: %s, event detail is: %s\n%s", v102, 0x20u);
      swift_arrayDestroy();

      v131(v126, v112);
      v34 = v140;
      v95 = v134;
      v56 = v139;
      v82 = 0x73736563637553;
    }

    else
    {

      v93(v97, v142);
      sub_10000670C(&v145);
      v34 = v140;
      v95 = v134;
      v56 = v139;
    }

    sub_1000067C8(v147, v148);
    if (sub_10003CCE4())
    {
      v82 = 0x7272652068746957;
      v94 = 0xEA0000000000726FLL;
    }

    else
    {
      v94 = 0xE700000000000000;
    }

    sub_10000670C(v147);
    LOBYTE(v51) = v133;
  }

  else
  {
    sub_100008728(&v145, &qword_1000CB798, &qword_1000A27F0);
    v94 = 0xE700000000000000;
    v95 = v134;
  }

  sub_10009D9D0();

  v114 = sub_10009D9E0();
  v115 = sub_10009DFF0();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v147[0] = swift_slowAlloc();
    *v116 = 136315394;
    v117 = v51;
    v118 = sub_1000307A4(v130, v95, v147);

    *(v116 + 4) = v118;
    *(v116 + 12) = 2080;
    v119 = sub_1000307A4(v82, v94, v147);

    *(v116 + 14) = v119;
    _os_log_impl(&_mh_execute_header, v114, v115, "Finished %s: %s.", v116, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v138, v137, v136, v139, v34, v117);

    (*(v141 + 8))(v135, v142);
  }

  else
  {
    sub_10003C04C(v138, v137, v136, v56, v34, v51);

    (*(v141 + 8))(v32, v142);
  }

  return sub_100008728(&v149, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_1000507A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = sub_10009D860();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  sub_10009DF10();
  v4[7] = sub_10009DF00();
  v10 = sub_10009DED0();
  v4[8] = v10;
  v4[9] = v9;

  return _swift_task_switch(sub_1000508CC, v10, v9);
}

uint64_t sub_1000508CC()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100008728(v0[3], &qword_1000CA250, &qword_10009FDF8);
    v5 = 0;
  }

  else
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    (*(v7 + 32))(v6, v0[3], v8);
    v9 = shareStatus(url:)();
    (*(v7 + 8))(v6, v8);
    v5 = ((v9 & 0x10000) == 0) & v9;
  }

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_100050A58;
  v11 = v0[2];

  return sub_10002EBD4(60, v11, v5);
}

uint64_t sub_100050A58()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_100050C0C;
  }

  else
  {
    v7 = sub_100050B94;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100050B94()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100050C0C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_100050D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[108] = v22;
  v8[107] = v21;
  v8[106] = a8;
  v8[105] = a7;
  v8[104] = a6;
  v8[103] = a5;
  v8[102] = a4;
  v9 = *(*(sub_100003714(&qword_1000CA8F0, &qword_1000A09C8) - 8) + 64) + 15;
  v8[109] = swift_task_alloc();
  v10 = sub_10009D9F0();
  v8[110] = v10;
  v11 = *(v10 - 8);
  v8[111] = v11;
  v12 = *(v11 + 64) + 15;
  v8[112] = swift_task_alloc();
  v8[113] = swift_task_alloc();
  v13 = sub_10009D860();
  v8[114] = v13;
  v14 = *(v13 - 8);
  v8[115] = v14;
  v8[116] = *(v14 + 64);
  v8[117] = swift_task_alloc();
  v15 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v8[118] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[119] = swift_task_alloc();
  v8[120] = swift_task_alloc();
  v8[121] = sub_10009DF10();
  v8[122] = sub_10009DF00();
  v18 = sub_10009DED0();
  v8[123] = v18;
  v8[124] = v17;

  return _swift_task_switch(sub_100050F8C, v18, v17);
}

uint64_t sub_100050F8C()
{
  v1 = v0[120];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[103];
  v7 = type metadata accessor for ModelDelegateSPI();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v0[125] = sub_10003F4A4();
  v10 = *(v2 + 16);
  v0[126] = v10;
  v0[127] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v4, v3);
  v11 = *(v2 + 56);
  v0[128] = v11;
  v0[129] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v1, 0, 1, v3);
  v12 = swift_allocObject();
  v0[130] = v12;
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;

  v13 = swift_task_alloc();
  v0[131] = v13;
  *v13 = v0;
  v13[1] = sub_100051118;
  v14 = v0[120];

  return sub_10003F638(v14, sub_10008EC40, v12);
}

uint64_t sub_100051118(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1048);
  v4 = *(*v1 + 1040);
  v5 = *(*v1 + 960);
  v9 = *v1;
  *(*v1 + 1056) = a1;

  sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
  v6 = *(v2 + 992);
  v7 = *(v2 + 984);

  return _swift_task_switch(sub_100051290, v7, v6);
}

uint64_t sub_100051290()
{
  v1 = *(v0 + 1056);
  if (v1)
  {
    v69 = *(v0 + 1024);
    v71 = *(v0 + 1032);
    v62 = *(v0 + 1016);
    v2 = *(v0 + 1008);
    v3 = *(v0 + 976);
    v73 = *(v0 + 1000);
    v75 = *(v0 + 960);
    v4 = *(v0 + 936);
    v5 = *(v0 + 928);
    v6 = *(v0 + 920);
    v7 = *(v0 + 912);
    v8 = *(v0 + 840);
    v65 = *(v0 + 824);
    v67 = *(v0 + 832);
    v9 = *(v0 + 816);
    v63 = v1;

    *(v0 + 432) = 0;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 440) = -1;
    v2(v4, v8, v7);
    v10 = (*(v6 + 80) + 34) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    (*(v6 + 32))(v11 + v10, v4, v7);
    *(v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
    v12 = v75;
    v13 = v63;
    v14 = v9;
    sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, 0xD00000000000001FLL, 0x80000001000A7FE0, v0 + 400, v1, sub_10008F510, v11);

    v69(v75, 1, 1, v7);
    v15 = v13;
    v65(v75, 0, v1);

LABEL_3:

    sub_100008728(v12, &qword_1000CA250, &qword_10009FDF8);
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    v18 = *(v0 + 936);
    v19 = *(v0 + 904);
    v20 = *(v0 + 896);
    v21 = *(v0 + 872);

    v22 = *(v0 + 8);

    return v22();
  }

  v24 = *(*(v0 + 1000) + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_sharingModel);
  *(v0 + 1064) = v24;
  if (!v24)
  {
    return sub_10009E250();
  }

  v25 = *(v0 + 848);
  v26 = *(v0 + 816);
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);

  isa = sub_10009DE90().super.isa;
  *(v0 + 1072) = CKSharingAccessTypeFromOptionsGroups();

  v28 = sub_10009DE90().super.isa;
  *(v0 + 1080) = CKSharingPermissionTypeFromOptionsGroups();

  v29 = sub_10009DE90().super.isa;
  *(v0 + 59) = CKSharingAllowOthersToInviteFromOptionsGroups();

  v30 = sub_10009DE90().super.isa;
  *(v0 + 60) = CKSharingAllowAccessRequestsFromOptionsGroups();

  v31 = *(v26 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  if (v31)
  {
    v32 = *(v26 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 760) = v32;
    *(v0 + 768) = v31;

    sub_10009DB00();
  }

  v33 = *(v0 + 1032);
  v34 = *(v0 + 1024);
  v35 = *(v0 + 1016);
  v36 = *(v0 + 1000);
  v37 = *(v0 + 960);
  v38 = *(v0 + 912);
  v39 = *(v0 + 864);
  v40 = *(v0 + 856);
  (*(v0 + 1008))(v37, *(v0 + 840), v38);
  v34(v37, 0, 1, v38);
  v41 = OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_fileOrFolderURL;
  swift_beginAccess();
  sub_10008EC48(v37, v36 + v41);
  swift_endAccess();

  sub_1000799A0(v42);
  sub_100097154(v40);

  LOBYTE(v41) = sub_10009D830();
  sub_10009D800(v43);
  v45 = v44;
  v46 = [v44 br_isInSyncedLocation];

  if (v41)
  {
    v47 = *(v0 + 840);
    sub_10009D810();
  }

  if ((v46 & 1) == 0)
  {
    v70 = *(v0 + 1024);
    v72 = *(v0 + 1032);
    v49 = *(v0 + 1016);
    v50 = *(v0 + 1008);
    v51 = *(v0 + 976);
    v74 = *(v0 + 1000);
    v76 = *(v0 + 960);
    v52 = *(v0 + 936);
    v64 = *(v0 + 928);
    v53 = *(v0 + 920);
    v54 = *(v0 + 912);
    v55 = *(v0 + 840);
    v66 = *(v0 + 824);
    v68 = *(v0 + 832);
    v56 = *(v0 + 816);

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 56) = -1;
    v57 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v50(v52, v55, v54);
    v58 = (*(v53 + 80) + 34) & ~*(v53 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = 0;
    *(v59 + 32) = 0;
    (*(v53 + 32))(v59 + v58, v52, v54);
    *(v59 + ((v64 + v58 + 7) & 0xFFFFFFFFFFFFFFF8)) = v56;
    v12 = v76;
    v60 = v56;
    sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, 0xD00000000000002ALL, 0x80000001000A7F00, v0 + 16, v57, sub_10008ECBC, v59);

    v70(v76, 1, 1, v54);
    v61 = v57;
    v66(v76, 0, v57);

    goto LABEL_3;
  }

  v48 = swift_task_alloc();
  *(v0 + 1088) = v48;
  *v48 = v0;
  v48[1] = sub_1000519F0;

  return sub_1000850B8(v24);
}

uint64_t sub_1000519F0(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1088);
  v6 = *v2;
  *(v4 + 61) = a1;
  *(v4 + 1096) = v1;

  v7 = *(v3 + 992);
  v8 = *(v3 + 984);
  if (v1)
  {
    v9 = sub_100051F58;
  }

  else
  {
    v9 = sub_100051B38;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100051B38()
{
  v1 = *(v0 + 904);
  sub_10009D9D0();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 61);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "url is a shared location: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 1064);
  v7 = *(v0 + 904);
  v8 = *(v0 + 888);
  v9 = *(v0 + 880);

  v10 = *(v8 + 8);
  *(v0 + 1104) = v10;
  *(v0 + 1112) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v9);
  v11 = *(v6 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 57))
  {

    return _swift_task_switch(sub_100052328, 0, 0);
  }

  else
  {
    v37 = *(v0 + 1024);
    v38 = *(v0 + 1032);
    v12 = *(v0 + 1016);
    v13 = *(v0 + 1008);
    v39 = *(v0 + 1000);
    v40 = *(v0 + 1064);
    v14 = *(v0 + 976);
    v15 = *(v0 + 936);
    v33 = *(v0 + 928);
    v16 = *(v0 + 920);
    v17 = *(v0 + 912);
    v18 = *(v0 + 840);
    v36 = *(v0 + 832);
    v34 = *(v0 + 960);
    v35 = *(v0 + 824);
    v19 = *(v0 + 816);

    *(v0 + 96) = 0;
    *(v0 + 80) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 104) = -1;
    v20 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
    v13(v15, v18, v17);
    v21 = (*(v16 + 80) + 34) & ~*(v16 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    (*(v16 + 32))(v22 + v21, v15, v17);
    *(v22 + ((v33 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
    v23 = v19;
    sub_10004F5E0(0xD000000000000056, 0x80000001000A7E60, 0xD00000000000003DLL, 0x80000001000A76F0, v0 + 64, v20, sub_10008F510, v22);

    v37(v34, 1, 1, v17);
    v24 = v20;
    v35(v34, 0, v20);

    sub_100008728(v34, &qword_1000CA250, &qword_10009FDF8);
    v25 = *(v0 + 960);
    v26 = *(v0 + 952);
    v27 = *(v0 + 936);
    v28 = *(v0 + 904);
    v29 = *(v0 + 896);
    v30 = *(v0 + 872);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_100051F58()
{
  v1 = *(v0 + 1096);
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

uint64_t sub_100052328()
{
  v1 = *(v0 + 968);
  *(v0 + 1120) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_1000523B4, v3, v2);
}

uint64_t sub_1000523B4()
{
  v1 = v0[140];
  v2 = v0[134];
  v3 = v0[133];

  v0[141] = *(v3 + 16);

  v4 = swift_task_alloc();
  v0[142] = v4;
  *v4 = v0;
  v4[1] = sub_100052488;
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

uint64_t sub_100052488()
{
  v2 = *v1;
  v3 = *(*v1 + 1136);
  v7 = *v1;
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v4 = sub_100052824;
  }

  else
  {
    v5 = *(v2 + 1128);

    v4 = sub_1000525A4;
  }

  return _swift_task_switch(v4, 0, 0);
}