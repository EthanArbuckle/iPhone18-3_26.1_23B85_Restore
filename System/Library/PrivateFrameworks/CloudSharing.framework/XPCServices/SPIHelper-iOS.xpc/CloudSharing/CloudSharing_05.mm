uint64_t sub_10008604C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_100086324;
  }

  else
  {
    v7 = sub_100086188;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100086188()
{
  v1 = v0[24];
  v2 = v0[20];

  sub_10009D9D0();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "successfully completed folder sharing prep", v5, 2u);
  }

  v6 = v0[27];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[18];

  v6(v7, v8);
  v10 = v0[35];
  v11 = v0[36];
  v13 = v0[33];
  v12 = v0[34];
  v14 = v0[32];
  v15 = v0[28];

  sub_1000323E0(v14, v13, v12, v10, v11, 5u);
  v16 = v0[14];

  v18 = v0[21];
  v17 = v0[22];
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[16];

  v22 = v0[1];
  v23 = v0[31] == 0;

  return v22(v23);
}

uint64_t sub_100086324()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[28];
  v7 = v0[24];

  sub_1000323E0(v5, v4, v3, v1, v2, 5u);
  v8 = v0[14];

  v9 = v0[38];
  v11 = v0[21];
  v10 = v0[22];
  v13 = v0[19];
  v12 = v0[20];
  v14 = v0[16];

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_100086420(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_10009D9F0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_10009DF10();
  v2[17] = sub_10009DF00();
  v7 = sub_10009DED0();
  v2[18] = v7;
  v2[19] = v6;

  return _swift_task_switch(sub_100086538, v7, v6);
}

void sub_100086538()
{
  v2 = v0[9];
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v0[20] = BRCloudDocsErrorDomain;
    v0[21] = v2;
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_1000865E8;
    v4 = v0[10];

    sub_100022220();
  }
}

uint64_t sub_1000865E8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_100086858;
  }

  else
  {
    v7 = sub_100086724;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100086724()
{
  v2 = v0[16];
  v1 = v0[17];

  sub_10009D9D0();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "createShare completed with this many retries left: %ld", v6, 0xCu);
  }

  v7 = v0[16];
  v8 = v0[11];
  v9 = v0[12];

  (*(v9 + 8))(v7, v8);
  v11 = v0[15];
  v10 = v0[16];
  v13 = v0[13];
  v12 = v0[14];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_100086858()
{
  *(v0 + 64) = *(v0 + 184);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = *(v0 + 136);

LABEL_9:
    v15 = *(v0 + 104);
    sub_10009D9D0();
    v16 = sub_10009D9E0();
    v17 = sub_10009DFD0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 168);
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v16, v17, "tryToCreateShare error: unexpected error--retries left: %ld", v19, 0xCu);
    }

    v20 = *(v0 + 184);
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v23 = *(v0 + 88);

    (*(v22 + 8))(v21, v23);
    sub_100005B1C();
    v24 = swift_allocError();
    *v25 = 0xD000000000000023;
    *(v25 + 8) = 0x80000001000A7420;
    *(v25 + 16) = xmmword_1000A2520;
    *(v25 + 32) = 0x80000001000A7450;
    *(v25 + 40) = 11;
    goto LABEL_25;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 208) = v3;
  *(v0 + 216) = v4;
  v5 = *(v0 + 48);
  *(v0 + 224) = v5;
  v6 = *(v0 + 56);
  if (v6 != 1)
  {
    v14 = *(v0 + 136);

    sub_1000323E0(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (v3)
  {
    v56 = *(v0 + 160);

    v7 = v3;

    v8 = [v7 domain];
    v9 = sub_10009DD90();
    v11 = v10;

    if (v9 == sub_10009DD90() && v11 == v12)
    {

LABEL_14:
      v27 = *(v0 + 168);
      v28 = [v7 code];

      if (v28 == 7 && v27 > 1)
      {
        v29 = *(v0 + 120);
        sub_10009D9D0();
        v30 = sub_10009D9E0();
        v31 = sub_10009DFF0();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = *(v0 + 168);
          v33 = swift_slowAlloc();
          *v33 = 134217984;
          *(v33 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v30, v31, "About to retry createShare--retries left including this one: %ld", v33, 0xCu);
        }

        v34 = *(v0 + 120);
        v35 = *(v0 + 88);
        v36 = *(v0 + 96);

        (*(v36 + 8))(v34, v35);
        v37 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
        v38 = swift_task_alloc();
        *(v0 + 232) = v38;
        *v38 = v0;
        v38[1] = sub_100086DDC;

        return static Task<>.sleep(nanoseconds:)(1000000000);
      }

      goto LABEL_22;
    }

    v26 = sub_10009E2E0();

    if (v26)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

LABEL_22:
  v57 = v1;
  v39 = *(v0 + 136);
  v40 = *(v0 + 112);

  sub_10009D9D0();
  v41 = sub_10009D9E0();
  v42 = sub_10009DFD0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 168);
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v41, v42, "tryToCreateShare error: failed to create share--retries left: %ld", v44, 0xCu);
  }

  v45 = *(v0 + 184);
  v46 = *(v0 + 112);
  v48 = *(v0 + 88);
  v47 = *(v0 + 96);

  (*(v47 + 8))(v46, v48);
  sub_100005B1C();
  v24 = swift_allocError();
  *v49 = v57;
  *(v49 + 8) = v2;
  *(v49 + 16) = v3;
  *(v49 + 24) = v4;
  *(v49 + 32) = v5;
  *(v49 + 40) = 1;
  sub_1000323E0(v57, v2, v3, v4, v5, 1u);
LABEL_25:

  v51 = *(v0 + 120);
  v50 = *(v0 + 128);
  v53 = *(v0 + 104);
  v52 = *(v0 + 112);

  v54 = *(v0 + 8);

  return v54(v24);
}

uint64_t sub_100086DDC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 144);
    v6 = *(v2 + 152);
    v7 = sub_10008F504;
  }

  else
  {
    v5 = *(v2 + 144);
    v6 = *(v2 + 152);
    v7 = sub_100086F00;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100086F00()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];

  result = sub_1000323E0(v6, v4, v3, v1, v2, 1u);
  v8 = v0[21];
  if (v8 < 2)
  {
    __break(1u);
  }

  else
  {
    v0[21] = v8 - 1;
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_1000865E8;
    v10 = v0[10];

    return sub_100022220();
  }

  return result;
}

uint64_t sub_100086FF8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t *a8)
{
  v87 = a7;
  v89 = a3;
  v88 = a2;
  v91 = a1;
  v12 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v93 = (&v85 - v14);
  v15 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v85 - v21;
  v23 = __chkstk_darwin(v20);
  v86 = &v85 - v24;
  __chkstk_darwin(v23);
  v90 = &v85 - v25;
  v26 = sub_10009D860();
  v94 = *(v26 - 8);
  v27 = v94[8];
  v28 = __chkstk_darwin(v26);
  v92 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v85 - v29;
  v95 = swift_allocObject();
  *(v95 + 16) = a8;
  if (a4 == 1)
  {
    v31 = 2;
  }

  else
  {
    v31 = 1;
  }

  if (a5 == 3)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  v33 = objc_allocWithZone(CKAllowedSharingOptions);
  _Block_copy(a8);
  v34 = [v33 initWithAllowedParticipantPermissionOptions:v32 allowedParticipantAccessOptions:v31];
  [v34 setSupportAllowingAddedParticipantsToInviteOthers:a6 & 1];
  [v34 setSupportAllowingAccessRequests:0];
  v35 = [v34 shareOptions];
  v36 = v35;
  if (v35 && (v37 = v35, v38 = [v37 optionsGroups], v37, v38))
  {
    sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
    v39 = sub_10009DEA0();

    v40 = [v91 url];
    v41 = v30;
    sub_10009D820();

    v96 = 0;
    v97 = 0xE000000000000000;
    sub_10009E1E0(26);

    v96 = 0xD000000000000018;
    v97 = 0x80000001000A75B0;
    sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
    v98._countAndFlagsBits = sub_10009E2C0();
    sub_10009DE10(v98);

    sub_100079B58(v96, v97, 0xD000000000000056, 0x80000001000A7E60);

    if (v39 >> 62)
    {
      v42 = sub_10009E260();
    }

    else
    {
      v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v94;
    v94 = v37;
    v85 = v26;
    if (v42)
    {
      v44 = v93;
      sub_10009DF20();
      v45 = sub_10009DF40();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      (v43[2])(v92, v30, v26);
      sub_10009DF10();
      v87 = v87;
      v46 = v95;

      v47 = v88;

      v90 = v34;
      v48 = v89;

      v49 = sub_10009DF00();
      v50 = *(v43 + 80);
      v91 = v41;
      v51 = (v50 + 56) & ~v50;
      v52 = (v27 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
      v86 = v39;
      v54 = v43;
      v55 = swift_allocObject();
      *(v55 + 2) = v49;
      *(v55 + 3) = &protocol witness table for MainActor;
      *(v55 + 4) = v87;
      *(v55 + 5) = sub_10008F4F8;
      *(v55 + 6) = v46;
      v56 = v85;
      (v54[4])(&v55[v51], v92, v85);
      *&v55[v52] = v86;
      *&v55[v53] = v47;
      *&v55[(v53 + 15) & 0xFFFFFFFFFFFFFFF8] = v48;
      sub_10004CDF4(0, 0, v93, &unk_1000A29C8, v55);

      (v54[1])(v91, v56);
    }

    else
    {

      v69 = v90;
      (v43[7])(v90, 1, 1, v26);
      sub_100003714(&qword_1000CB348, &qword_1000A1E28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10009FCE0;
      *(inited + 32) = sub_10009DD90();
      v71 = v43;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v72;
      *(inited + 48) = 0xD000000000000031;
      *(inited + 56) = 0x80000001000A7EC0;
      sub_10003269C(inited);
      swift_setDeallocating();
      sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
      v73 = CKErrorDomain;
      isa = sub_10009DCF0().super.isa;

      v75 = [objc_allocWithZone(NSError) initWithDomain:v73 code:1 userInfo:isa];

      v76 = v71;
      v77 = v85;
      v78 = v86;
      sub_100008658(v69, v86, &qword_1000CA250, &qword_10009FDF8);
      if ((v76[6])(v78, 1, v77) == 1)
      {
        v80 = 0;
      }

      else
      {
        sub_10009D800(v79);
        v80 = v81;
        (v76[1])(v78, v77);
      }

      v82 = v94;
      v83 = v76;
      v84 = sub_10009D7A0();
      (a8[2])(a8, v80, 0, v84);

      sub_100008728(v90, &qword_1000CA250, &qword_10009FDF8);
      (v83[1])(v41, v77);
    }
  }

  else
  {
    v93 = a8;
    v57 = v94;
    (v94[7])(v22, 1, 1, v26);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    v58 = v26;
    v59 = swift_initStackObject();
    *(v59 + 16) = xmmword_10009FCE0;
    *(v59 + 32) = sub_10009DD90();
    *(v59 + 72) = &type metadata for String;
    *(v59 + 40) = v60;
    *(v59 + 48) = 0xD000000000000050;
    *(v59 + 56) = 0x80000001000A8000;
    sub_10003269C(v59);
    swift_setDeallocating();
    sub_100008728(v59 + 32, &unk_1000CA918, &qword_1000A1E30);
    v61 = CKErrorDomain;
    v62 = sub_10009DCF0().super.isa;

    v63 = [objc_allocWithZone(NSError) initWithDomain:v61 code:1 userInfo:v62];

    sub_100008658(v22, v19, &qword_1000CA250, &qword_10009FDF8);
    if ((v57[6])(v19, 1, v58) == 1)
    {
      v65 = 0;
    }

    else
    {
      sub_10009D800(v64);
      v65 = v66;
      (v57[1])(v19, v58);
    }

    v67 = sub_10009D7A0();
    (v93[2])(v93, v65, 0, v67);

    sub_100008728(v22, &qword_1000CA250, &qword_10009FDF8);
  }
}

uint64_t sub_100087AB0(void *a1, char *a2, uint64_t a3, unint64_t a4, char *a5, void (**a6)(const void *, void *, void, void *))
{
  v51 = a5;
  v52 = a3;
  v55 = a2;
  v9 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v54 = &v49 - v11;
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = &v49 - v17;
  v18 = sub_10009D860();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v53 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a6;
  v49 = a6;
  _Block_copy(a6);
  v25 = [a1 url];
  sub_10009D820();

  v56 = 0;
  v57 = 0xE000000000000000;
  sub_10009E1E0(26);

  v56 = 0xD000000000000018;
  v57 = 0x80000001000A75B0;
  sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
  v58._countAndFlagsBits = sub_10009E2C0();
  sub_10009DE10(v58);

  sub_100079B58(v56, v57, 0xD000000000000056, 0x80000001000A7E60);

  if (a4 >> 62)
  {
    if (sub_10009E260())
    {
      goto LABEL_3;
    }
  }

  else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v26 = v54;
    sub_10009DF20();
    v27 = sub_10009DF40();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    (*(v19 + 16))(v53, v23, v18);
    sub_10009DF10();
    v50 = v51;

    v28 = v52;

    v29 = sub_10009DF00();
    v30 = *(v19 + 80);
    v49 = a4;
    v31 = (v30 + 56) & ~v30;
    v32 = (v20 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = v23;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 2) = v29;
    *(v35 + 3) = &protocol witness table for MainActor;
    *(v35 + 4) = v50;
    *(v35 + 5) = sub_10008F4F8;
    *(v35 + 6) = v24;
    (*(v19 + 32))(&v35[v31], v53, v18);
    *&v35[v32] = v49;
    v36 = v54;
    *&v35[v33] = v55;
    v23 = v51;
    *&v35[v34] = v28;
    sub_10004CDF4(0, 0, v36, &unk_1000A29B0, v35);

    goto LABEL_9;
  }

  v37 = v50;
  (*(v19 + 56))(v50, 1, 1, v18);
  v55 = v16;
  sub_100003714(&qword_1000CB348, &qword_1000A1E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = sub_10009DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v39;
  *(inited + 48) = 0xD000000000000031;
  *(inited + 56) = 0x80000001000A7EC0;
  sub_10003269C(inited);
  swift_setDeallocating();
  sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
  v40 = CKErrorDomain;
  isa = sub_10009DCF0().super.isa;
  v42 = v55;

  v43 = [objc_allocWithZone(NSError) initWithDomain:v40 code:1 userInfo:isa];

  sub_100008658(v37, v42, &qword_1000CA250, &qword_10009FDF8);
  if ((*(v19 + 48))(v42, 1, v18) == 1)
  {
    v45 = 0;
  }

  else
  {
    sub_10009D800(v44);
    v45 = v46;
    (*(v19 + 8))(v42, v18);
  }

  v47 = sub_10009D7A0();
  v49[2](v49, v45, 0, v47);

  sub_100008728(v37, &qword_1000CA250, &qword_10009FDF8);
LABEL_9:
  (*(v19 + 8))(v23, v18);
}

void sub_10008813C(void *a1, void *a2, uint64_t a3, void (**a4)(const void *, void *, void, void *), uint64_t a5, uint64_t a6, char a7, void *a8, const void *a9)
{
  v77 = a8;
  v81 = a4;
  v79 = a3;
  v78 = a2;
  v13 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v76 - v15;
  v17 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v76 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v76 - v26;
  __chkstk_darwin(v25);
  v80 = &v76 - v28;
  v82 = swift_allocObject();
  *(v82 + 16) = a9;
  if (a5 == 1)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  if (a6 == 3)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v31 = objc_allocWithZone(CKAllowedSharingOptions);
  _Block_copy(a9);
  v32 = [v31 initWithAllowedParticipantPermissionOptions:v30 allowedParticipantAccessOptions:v29];
  [v32 setSupportAllowingAddedParticipantsToInviteOthers:a7 & 1];
  [v32 setSupportAllowingAccessRequests:0];
  v33 = [v32 shareOptions];
  v34 = v33;
  if (v33 && (v35 = v33, v36 = [v35 optionsGroups], v35, v36))
  {
    v76 = v35;
    sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
    v37 = sub_10009DEA0();

    v38 = a1;
    v39 = [v38 description];
    v40 = sub_10009DD90();
    v42 = v41;

    sub_100079B58(v40, v42, 0xD00000000000005FLL, 0x80000001000A7D60);

    if (v37 >> 62)
    {
      if (sub_10009E260())
      {
        goto LABEL_11;
      }
    }

    else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      sub_10009DF20();
      v43 = sub_10009DF40();
      (*(*(v43 - 8) + 56))(v16, 0, 1, v43);
      sub_10009DF10();
      v44 = v38;
      v45 = v77;
      v46 = v82;

      v47 = v78;
      v48 = v79;

      v49 = v81;

      v50 = sub_10009DF00();
      v51 = swift_allocObject();
      v51[2] = v50;
      v51[3] = &protocol witness table for MainActor;
      v51[4] = v45;
      v51[5] = sub_10008F4F8;
      v51[6] = v46;
      v51[7] = v44;
      v51[8] = v47;
      v51[9] = v37;
      v51[10] = v48;
      v51[11] = v49;
      sub_10004CDF4(0, 0, v16, &unk_1000A29A0, v51);

      return;
    }

    v81 = a9;

    v64 = sub_10009D860();
    v65 = *(v64 - 8);
    v66 = v80;
    (*(v65 + 56))(v80, 1, 1, v64);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v68;
    *(inited + 48) = 0xD000000000000031;
    *(inited + 56) = 0x80000001000A7DC0;
    sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v69 = CKErrorDomain;
    isa = sub_10009DCF0().super.isa;

    v71 = [objc_allocWithZone(NSError) initWithDomain:v69 code:1 userInfo:isa];

    sub_100008658(v66, v27, &qword_1000CA250, &qword_10009FDF8);
    v73 = 0;
    if ((*(v65 + 48))(v27, 1, v64) != 1)
    {
      sub_10009D800(v72);
      v73 = v74;
      (*(v65 + 8))(v27, v64);
    }

    v75 = sub_10009D7A0();
    v81[2](v81, v73, 0, v75);

    v63 = v80;
  }

  else
  {
    v81 = a9;
    v52 = sub_10009D860();
    v53 = *(v52 - 8);
    (*(v53 + 56))(v24, 1, 1, v52);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    v54 = swift_initStackObject();
    *(v54 + 16) = xmmword_10009FCE0;
    *(v54 + 32) = sub_10009DD90();
    *(v54 + 72) = &type metadata for String;
    *(v54 + 40) = v55;
    *(v54 + 48) = 0xD000000000000054;
    *(v54 + 56) = 0x80000001000A7E00;
    sub_10003269C(v54);
    swift_setDeallocating();
    sub_100008728(v54 + 32, &unk_1000CA918, &qword_1000A1E30);
    v56 = CKErrorDomain;
    v57 = sub_10009DCF0().super.isa;

    v58 = [objc_allocWithZone(NSError) initWithDomain:v56 code:1 userInfo:v57];

    sub_100008658(v24, v21, &qword_1000CA250, &qword_10009FDF8);
    v60 = 0;
    if ((*(v53 + 48))(v21, 1, v52) != 1)
    {
      sub_10009D800(v59);
      v60 = v61;
      (*(v53 + 8))(v21, v52);
    }

    v62 = sub_10009D7A0();
    v81[2](v81, v60, 0, v62);

    v63 = v24;
  }

  sub_100008728(v63, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_100088A3C(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, void (**a7)(void, void, void, void))
{
  v48 = a6;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v10 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v48 - v12;
  v14 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v48 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  _Block_copy(a7);
  v22 = a1;
  v23 = [v22 description];
  v24 = sub_10009DD90();
  v26 = v25;

  sub_100079B58(v24, v26, 0xD00000000000005FLL, 0x80000001000A7D60);

  if (a5 >> 62)
  {
    if (sub_10009E260())
    {
      goto LABEL_3;
    }
  }

  else if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_10009DF20();
    v27 = sub_10009DF40();
    (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
    sub_10009DF10();
    v28 = v22;
    v29 = v48;

    v30 = v49;

    v31 = v50;

    v32 = v51;

    v33 = sub_10009DF00();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v29;
    v34[5] = sub_10008F4F8;
    v34[6] = v21;
    v34[7] = v28;
    v34[8] = v30;
    v34[9] = a5;
    v34[10] = v31;
    v34[11] = v32;
    sub_10004CDF4(0, 0, v13, &unk_1000A2998, v34);
  }

  v35 = sub_10009D860();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v20, 1, 1, v35);
  sub_100003714(&qword_1000CB348, &qword_1000A1E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = sub_10009DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v38;
  *(inited + 48) = 0xD000000000000031;
  *(inited + 56) = 0x80000001000A7DC0;
  sub_10003269C(inited);
  swift_setDeallocating();
  sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
  v39 = CKErrorDomain;
  isa = sub_10009DCF0().super.isa;

  v41 = objc_allocWithZone(NSError);
  v42 = [v41 initWithDomain:v39 code:1 userInfo:{isa, v48, v49}];

  sub_100008658(v20, v18, &qword_1000CA250, &qword_10009FDF8);
  v44 = 0;
  if ((*(v36 + 48))(v18, 1, v35) != 1)
  {
    sub_10009D800(v43);
    v44 = v45;
    (*(v36 + 8))(v18, v35);
  }

  v46 = sub_10009D7A0();
  (a7)[2](a7, v44, 0, v46);

  sub_100008728(v20, &qword_1000CA250, &qword_10009FDF8);
}

void sub_100088F54(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8)
{
  v71 = a7;
  v75 = a4;
  v74 = a3;
  v73 = a2;
  v72 = a1;
  v11 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v70 - v13;
  v15 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v70 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v70 - v24;
  __chkstk_darwin(v23);
  v27 = &v70 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a8;
  if (a5 == 3)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  v30 = objc_allocWithZone(CKAllowedSharingOptions);
  v76 = a8;
  _Block_copy(a8);
  v31 = [v30 initWithAllowedParticipantPermissionOptions:v29 allowedParticipantAccessOptions:1];
  [v31 setSupportAllowingAddedParticipantsToInviteOthers:a6 & 1];
  [v31 setSupportAllowingAccessRequests:0];
  v32 = [v31 shareOptions];
  v33 = v32;
  if (v32 && (v34 = v32, v35 = [v34 optionsGroups], v34, v35))
  {
    sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
    v36 = sub_10009DEA0();

    sub_100079B58(0x74706F2068746977, 0xEC000000736E6F69, 0xD000000000000070, 0x80000001000A7610);
    if (v36 >> 62)
    {
      if (sub_10009E260())
      {
        goto LABEL_8;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      sub_10009DF20();
      v37 = sub_10009DF40();
      (*(*(v37 - 8) + 56))(v14, 0, 1, v37);
      sub_10009DF10();
      v38 = v71;

      v76 = v34;
      v39 = v72;
      v40 = v72;
      v41 = v73;
      v42 = v73;
      v43 = v74;

      v44 = v75;

      v45 = sub_10009DF00();
      v46 = swift_allocObject();
      v46[2] = v45;
      v46[3] = &protocol witness table for MainActor;
      v46[4] = v38;
      v46[5] = sub_10008F4F8;
      v46[6] = v28;
      v46[7] = v39;
      v46[8] = v41;
      v46[9] = 0;
      v46[10] = v36;
      v46[11] = v43;
      v46[12] = v44;
      sub_10004CDF4(0, 0, v14, &unk_1000A2808, v46);

      return;
    }

    v75 = v28;

    v59 = sub_10009D860();
    v60 = *(v59 - 8);
    (*(v60 + 56))(v27, 1, 1, v59);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v62;
    *(inited + 48) = 0xD000000000000033;
    *(inited + 56) = 0x80000001000A7690;
    sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v63 = CKErrorDomain;
    isa = sub_10009DCF0().super.isa;

    v65 = [objc_allocWithZone(NSError) initWithDomain:v63 code:1 userInfo:isa];

    sub_100008658(v27, v25, &qword_1000CA250, &qword_10009FDF8);
    v67 = 0;
    if ((*(v60 + 48))(v25, 1, v59) != 1)
    {
      sub_10009D800(v66);
      v67 = v68;
      (*(v60 + 8))(v25, v59);
    }

    v69 = sub_10009D7A0();
    (*(v76 + 2))(v76, v67, 0, v69);

    v58 = v27;
  }

  else
  {
    v75 = v28;
    v47 = sub_10009D860();
    v48 = *(v47 - 8);
    (*(v48 + 56))(v22, 1, 1, v47);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_10009FCE0;
    *(v49 + 32) = sub_10009DD90();
    *(v49 + 72) = &type metadata for String;
    *(v49 + 40) = v50;
    *(v49 + 48) = 0xD000000000000064;
    *(v49 + 56) = 0x80000001000A7870;
    sub_10003269C(v49);
    swift_setDeallocating();
    sub_100008728(v49 + 32, &unk_1000CA918, &qword_1000A1E30);
    v51 = CKErrorDomain;
    v52 = sub_10009DCF0().super.isa;

    v53 = [objc_allocWithZone(NSError) initWithDomain:v51 code:1 userInfo:v52];

    sub_100008658(v22, v19, &qword_1000CA250, &qword_10009FDF8);
    v55 = 0;
    if ((*(v48 + 48))(v19, 1, v47) != 1)
    {
      sub_10009D800(v54);
      v55 = v56;
      (*(v48 + 8))(v19, v47);
    }

    v57 = sub_10009D7A0();
    (*(v76 + 2))(v76, v55, 0, v57);

    v58 = v22;
  }

  sub_100008728(v58, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_100089800(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, void (**a7)(void, void, void, void))
{
  v44 = a6;
  v45 = a4;
  v12 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v44 - v14;
  v16 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  _Block_copy(a7);
  sub_100079B58(0x74706F2068746977, 0xEC000000736E6F69, 0xD000000000000070, 0x80000001000A7610);
  if (a5 >> 62)
  {
    if (sub_10009E260())
    {
      goto LABEL_3;
    }
  }

  else if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_10009DF20();
    v24 = sub_10009DF40();
    (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
    sub_10009DF10();
    v25 = v44;

    v26 = a1;
    v27 = a2;

    v28 = v45;

    v29 = sub_10009DF00();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = &protocol witness table for MainActor;
    v30[4] = v25;
    v30[5] = sub_10008F4F8;
    v30[6] = v23;
    v30[7] = a1;
    v30[8] = a2;
    v30[9] = 0;
    v30[10] = a5;
    v30[11] = a3;
    v30[12] = v28;
    sub_10004CDF4(0, 0, v15, &unk_1000A2800, v30);
  }

  v31 = sub_10009D860();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v22, 1, 1, v31);
  sub_100003714(&qword_1000CB348, &qword_1000A1E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = sub_10009DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v34;
  *(inited + 48) = 0xD000000000000033;
  *(inited + 56) = 0x80000001000A7690;
  sub_10003269C(inited);
  swift_setDeallocating();
  sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
  v35 = CKErrorDomain;
  isa = sub_10009DCF0().super.isa;

  v37 = objc_allocWithZone(NSError);
  v38 = [v37 initWithDomain:v35 code:1 userInfo:{isa, v44}];

  sub_100008658(v22, v20, &qword_1000CA250, &qword_10009FDF8);
  v40 = 0;
  if ((*(v32 + 48))(v20, 1, v31) != 1)
  {
    sub_10009D800(v39);
    v40 = v41;
    (*(v32 + 8))(v20, v31);
  }

  v42 = sub_10009D7A0();
  (a7)[2](a7, v40, 0, v42);

  sub_100008728(v22, &qword_1000CA250, &qword_10009FDF8);
}

void sub_100089CE8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8)
{
  v71 = a7;
  v75 = a4;
  v74 = a3;
  v73 = a2;
  v72 = a1;
  v11 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v70 - v13;
  v15 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v70 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v70 - v24;
  __chkstk_darwin(v23);
  v27 = &v70 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a8;
  if (a5 == 3)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  v30 = objc_allocWithZone(CKAllowedSharingOptions);
  v76 = a8;
  _Block_copy(a8);
  v31 = [v30 initWithAllowedParticipantPermissionOptions:v29 allowedParticipantAccessOptions:1];
  [v31 setSupportAllowingAddedParticipantsToInviteOthers:a6 & 1];
  [v31 setSupportAllowingAccessRequests:0];
  v32 = [v31 shareOptions];
  v33 = v32;
  if (v32 && (v34 = v32, v35 = [v34 optionsGroups], v34, v35))
  {
    sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
    v36 = sub_10009DEA0();

    sub_100079B58(0x74706F2068746977, 0xEC000000736E6F69, 0xD000000000000070, 0x80000001000A7610);
    if (v36 >> 62)
    {
      if (sub_10009E260())
      {
        goto LABEL_8;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      sub_10009DF20();
      v37 = sub_10009DF40();
      (*(*(v37 - 8) + 56))(v14, 0, 1, v37);
      sub_10009DF10();
      v38 = v73;
      v39 = v73;
      v40 = v74;

      v41 = v75;

      v42 = v71;

      v76 = v34;
      v43 = v72;
      v44 = v72;
      v45 = sub_10009DF00();
      v46 = swift_allocObject();
      v46[2] = v45;
      v46[3] = &protocol witness table for MainActor;
      v46[4] = v42;
      v46[5] = sub_10008F4F8;
      v46[6] = v28;
      v46[7] = 0;
      v46[8] = v43;
      v46[9] = v38;
      v46[10] = v36;
      v46[11] = v40;
      v46[12] = v41;
      sub_10004CDF4(0, 0, v14, &unk_1000A27F8, v46);

      return;
    }

    v75 = v28;

    v59 = sub_10009D860();
    v60 = *(v59 - 8);
    (*(v60 + 56))(v27, 1, 1, v59);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v62;
    *(inited + 48) = 0xD000000000000033;
    *(inited + 56) = 0x80000001000A7690;
    sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v63 = CKErrorDomain;
    isa = sub_10009DCF0().super.isa;

    v65 = [objc_allocWithZone(NSError) initWithDomain:v63 code:1 userInfo:isa];

    sub_100008658(v27, v25, &qword_1000CA250, &qword_10009FDF8);
    v67 = 0;
    if ((*(v60 + 48))(v25, 1, v59) != 1)
    {
      sub_10009D800(v66);
      v67 = v68;
      (*(v60 + 8))(v25, v59);
    }

    v69 = sub_10009D7A0();
    (*(v76 + 2))(v76, v67, 0, v69);

    v58 = v27;
  }

  else
  {
    v75 = v28;
    v47 = sub_10009D860();
    v48 = *(v47 - 8);
    (*(v48 + 56))(v22, 1, 1, v47);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_10009FCE0;
    *(v49 + 32) = sub_10009DD90();
    *(v49 + 72) = &type metadata for String;
    *(v49 + 40) = v50;
    *(v49 + 48) = 0xD000000000000056;
    *(v49 + 56) = 0x80000001000A7810;
    sub_10003269C(v49);
    swift_setDeallocating();
    sub_100008728(v49 + 32, &unk_1000CA918, &qword_1000A1E30);
    v51 = CKErrorDomain;
    v52 = sub_10009DCF0().super.isa;

    v53 = [objc_allocWithZone(NSError) initWithDomain:v51 code:1 userInfo:v52];

    sub_100008658(v22, v19, &qword_1000CA250, &qword_10009FDF8);
    v55 = 0;
    if ((*(v48 + 48))(v19, 1, v47) != 1)
    {
      sub_10009D800(v54);
      v55 = v56;
      (*(v48 + 8))(v19, v47);
    }

    v57 = sub_10009D7A0();
    (*(v76 + 2))(v76, v55, 0, v57);

    v58 = v22;
  }

  sub_100008728(v58, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_10008A594(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, void (**a7)(void, void, void, void))
{
  v44 = a6;
  v45 = a4;
  v12 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v44 - v14;
  v16 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  _Block_copy(a7);
  sub_100079B58(0x74706F2068746977, 0xEC000000736E6F69, 0xD000000000000070, 0x80000001000A7610);
  if (a5 >> 62)
  {
    if (sub_10009E260())
    {
      goto LABEL_3;
    }
  }

  else if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_10009DF20();
    v24 = sub_10009DF40();
    (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
    sub_10009DF10();
    v25 = a2;

    v26 = v45;

    v27 = v44;

    v28 = a1;
    v29 = sub_10009DF00();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = &protocol witness table for MainActor;
    v30[4] = v27;
    v30[5] = sub_10008F4F8;
    v30[6] = v23;
    v30[7] = 0;
    v30[8] = a1;
    v30[9] = a2;
    v30[10] = a5;
    v30[11] = a3;
    v30[12] = v26;
    sub_10004CDF4(0, 0, v15, &unk_1000A2758, v30);
  }

  v31 = sub_10009D860();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v22, 1, 1, v31);
  sub_100003714(&qword_1000CB348, &qword_1000A1E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = sub_10009DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v34;
  *(inited + 48) = 0xD000000000000033;
  *(inited + 56) = 0x80000001000A7690;
  sub_10003269C(inited);
  swift_setDeallocating();
  sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
  v35 = CKErrorDomain;
  isa = sub_10009DCF0().super.isa;

  v37 = objc_allocWithZone(NSError);
  v38 = [v37 initWithDomain:v35 code:1 userInfo:{isa, v44}];

  sub_100008658(v22, v20, &qword_1000CA250, &qword_10009FDF8);
  v40 = 0;
  if ((*(v32 + 48))(v20, 1, v31) != 1)
  {
    sub_10009D800(v39);
    v40 = v41;
    (*(v32 + 8))(v20, v31);
  }

  v42 = sub_10009D7A0();
  (a7)[2](a7, v40, 0, v42);

  sub_100008728(v22, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_10008AA7C(void *a1, void (**a2)(const void *, void *, void, void *))
{
  v4 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v77 = &v74 - v6;
  v7 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v82 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v83 = &v74 - v12;
  v13 = __chkstk_darwin(v11);
  v78 = &v74 - v14;
  v15 = __chkstk_darwin(v13);
  v79 = &v74 - v16;
  v17 = __chkstk_darwin(v15);
  v80 = &v74 - v18;
  __chkstk_darwin(v17);
  v81 = &v74 - v19;
  v20 = sub_10009D9F0();
  v84 = *(v20 - 8);
  v85 = v20;
  v21 = *(v84 + 64);
  v22 = __chkstk_darwin(v20);
  v76 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v74 - v25;
  __chkstk_darwin(v24);
  v28 = &v74 - v27;
  v29 = sub_10009D860();
  v87 = *(v29 - 8);
  v30 = *(v87 + 64);
  v31 = __chkstk_darwin(v29);
  v75 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v74 - v32;
  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  v86 = a2;
  _Block_copy(a2);
  v35 = [a1 url];
  sub_10009D820();

  v88 = 0;
  v89 = 0xE000000000000000;
  sub_10009E1E0(26);

  v88 = 0xD000000000000018;
  v89 = 0x80000001000A75B0;
  sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
  v36 = v29;
  v90._countAndFlagsBits = sub_10009E2C0();
  sub_10009DE10(v90);

  sub_100079B58(v88, v89, 0xD000000000000030, 0x80000001000A75D0);

  v37 = sub_10009D830();
  sub_10009D800(v38);
  v40 = v39;
  v41 = [v39 br_isInSyncedLocation];

  if (v37)
  {
    sub_10009D810();
  }

  if (v41)
  {
    v42 = shareStatus(url:)();
    v43 = v87;
    v44 = v34;
    if ((v42 & 0x10000) != 0)
    {
      sub_10009D9D0();
      v62 = sub_10009D9E0();
      v63 = sub_10009DFD0();
      v45 = v36;
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Error getting status in existingShareForFile, reporting as CKError.invalidArguments", v64, 2u);
      }

      (*(v84 + 8))(v26, v85);
      v57 = v81;
      (*(v43 + 56))(v81, 1, 1, v36);
      v58 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
      v65 = v57;
      v59 = v80;
    }

    else
    {
      v45 = v36;
      if (v42)
      {
        v46 = v77;
        sub_10009DF20();
        v47 = sub_10009DF40();
        (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
        v48 = v75;
        (*(v43 + 16))(v75, v33, v45);
        sub_10009DF10();

        v49 = sub_10009DF00();
        v50 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = v49;
        *(v51 + 24) = &protocol witness table for MainActor;
        (*(v43 + 32))(v51 + v50, v48, v45);
        v52 = (v51 + ((v30 + v50 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v52 = sub_10008F4F8;
        v52[1] = v44;
        sub_10004CDF4(0, 0, v46, &unk_1000A2748, v51);

        goto LABEL_20;
      }

      v66 = v76;
      sub_10009D9D0();
      v67 = sub_10009D9E0();
      v68 = sub_10009DFF0();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "Finished existingShareForFile: item not shared", v69, 2u);
      }

      (*(v84 + 8))(v66, v85);
      v57 = v79;
      (*(v43 + 56))(v79, 1, 1, v36);
      v58 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
      v65 = v57;
      v59 = v78;
    }

    sub_100008658(v65, v59, &qword_1000CA250, &qword_10009FDF8);
    v60 = (*(v43 + 48))(v59, 1, v45);
  }

  else
  {
    sub_10009D9D0();
    v53 = sub_10009D9E0();
    v54 = sub_10009DFF0();
    v55 = os_log_type_enabled(v53, v54);
    v43 = v87;
    if (v55)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Finished existingShareForFile: not in synced (iCloud Drive) location", v56, 2u);
    }

    (*(v84 + 8))(v28, v85);
    v57 = v83;
    v45 = v29;
    (*(v43 + 56))(v83, 1, 1, v29);
    v58 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v59 = v82;
    sub_100008658(v57, v82, &qword_1000CA250, &qword_10009FDF8);
    v60 = (*(v43 + 48))(v59, 1, v29);
  }

  v70 = 0;
  if (v60 != 1)
  {
    sub_10009D800(v61);
    v70 = v71;
    (*(v43 + 8))(v59, v45);
  }

  v72 = sub_10009D7A0();
  v86[2](v86, v70, 0, v72);

  sub_100008728(v57, &qword_1000CA250, &qword_10009FDF8);
LABEL_20:
  (*(v43 + 8))(v33, v45);
}

uint64_t sub_10008B410(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v6 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  if (a1)
  {
    v16 = a1;
    v17 = [v16 url];
    sub_10009D820();

    v18 = sub_10009D860();
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  }

  else
  {
    v19 = sub_10009D860();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_10009E1E0(60);
  v36._countAndFlagsBits = 0xD000000000000023;
  v36._object = 0x80000001000A7520;
  sub_10009DE10(v36);
  sub_100008658(v15, v13, &qword_1000CA250, &qword_10009FDF8);
  v37._countAndFlagsBits = sub_10009DDA0();
  sub_10009DE10(v37);

  v38._object = 0x80000001000A7550;
  v38._countAndFlagsBits = 0xD000000000000015;
  sub_10009DE10(v38);
  v33 = a2;
  v20 = a2;
  sub_100003714(&qword_1000CACD8, &qword_1000A0EB0);
  v39._countAndFlagsBits = sub_10009DDA0();
  sub_10009DE10(v39);

  sub_100079B58(v34, v35, 0xD00000000000003FLL, 0x80000001000A7570);

  sub_10009DF20();
  v21 = sub_10009DF40();
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  sub_100008658(v15, v13, &qword_1000CA250, &qword_10009FDF8);
  sub_10009DF10();
  v22 = v20;
  v23 = v32;

  v24 = sub_10009DF00();
  v25 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = &protocol witness table for MainActor;
  sub_100017C10(v13, v27 + v25);
  *(v27 + v26) = a2;
  v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v28 = v31;
  v28[1] = v23;
  sub_100019B10(0, 0, v9, &unk_1000A26F0, v27);

  return sub_100008728(v15, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_10008B820(char *a1)
{
  v2 = sub_10009D9F0();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  v4 = __chkstk_darwin(v2);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v51 = &v49 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v49 - v12;
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  v16 = sub_10009D6F0();
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000CA498, &qword_1000A04B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v21 = NSURLIsDirectoryKey;
  sub_1000315FC(inited);
  swift_setDeallocating();
  sub_1000462B8(inited + 32);
  sub_10009D7C0();
  v52 = a1;
  v49 = v10;

  v22 = sub_10009D690();
  (*(v50 + 8))(v19, v16);
  if (v22 == 2 || (v22 & 1) == 0)
  {
    sub_10009D9D0();
    v27 = sub_10009D9E0();
    v28 = sub_10009DFD0();
    v29 = os_log_type_enabled(v27, v28);
    v25 = v53;
    v24 = v54;
    v26 = v13;
    if (v29)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "folderURL is not actually a folder, reporting as CKError.invalidArguments", v30, 2u);
    }

    (*(v25 + 8))(v15, v24);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v25 = v53;
    v24 = v54;
    v26 = v13;
  }

  v31 = sub_10009D830();
  sub_10009D800(v32);
  v34 = v33;
  v35 = [v33 br_isInSyncedLocation];

  if (v31)
  {
    sub_10009D810();
  }

  if ((v35 & 1) == 0)
  {
    sub_10009D9D0();
    v36 = sub_10009D9E0();
    v37 = sub_10009DFD0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "folderURL is not in a synced location (someplace in iCloud Drive), reporting as CKError.invalidArguments", v38, 2u);
    }

    (*(v25 + 8))(v26, v24);
  }

  v39 = shareStatus(url:)();
  v40 = v51;
  if ((v39 & 0x10000) != 0)
  {
    v41 = v49;
    sub_10009D9D0();
    v42 = sub_10009D9E0();
    v43 = sub_10009DFD0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Error getting status in forciblyShareFolder, reporting as CKError.invalidArguments", v44, 2u);
    }

    (*(v25 + 8))(v41, v24);
  }

  if (v39)
  {
    sub_10009D9D0();
    v45 = sub_10009D9E0();
    v46 = sub_10009DFD0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "folderURL in forciblyShareFolder is already shared, reporting as CKError.invalidArguments", v47, 2u);
    }

    (*(v25 + 8))(v40, v24);
  }

  if ((v23 & v35) == 1)
  {
    return ((v39 & 0x10000) == 0) & (v39 ^ 1u);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008BEDC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 74, 7);
}

uint64_t sub_10008BF68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10008BF80()
{
  result = qword_1000CB5B0;
  if (!qword_1000CB5B0)
  {
    sub_10000594C(&qword_1000CB5A8, &qword_1000A20A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB5B0);
  }

  return result;
}

uint64_t sub_10008BFEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 90, 7);
}

uint64_t sub_10008C044(uint64_t a1)
{
  v17 = *(v1 + 16);
  v4 = *(v1 + 40);
  v14 = *(v1 + 32);
  v15 = *(v1 + 24);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  v7 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 89);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000093DC;

  return sub_1000754D0(a1, v17, v15, v14, v4, v5, v6, v8);
}

uint64_t sub_10008C1F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10008C248(uint64_t a1)
{
  v17 = *(v1 + 16);
  v4 = *(v1 + 40);
  v14 = *(v1 + 32);
  v15 = *(v1 + 24);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 65);
  v9 = *(v1 + 66);
  v11 = *(v1 + 72);
  v10 = *(v1 + 80);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000093DC;

  return sub_100076650(a1, v17, v15, v14, v4, v5, v6, v7);
}

void sub_10008C3B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, void (**a8)(void, void, void, void))
{
  v82 = a7;
  v83 = a3;
  v88 = a2;
  v84 = a1;
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v85 = (&v76 - v17);
  v18 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v87 = &v76 - v20;
  v90 = sub_10009D860();
  v21 = *(v90 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v90);
  v86 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  v81 = sub_10009D9F0();
  v80 = *(v81 - 8);
  v26 = *(v80 + 64);
  __chkstk_darwin(v81);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = swift_allocObject();
  *(v91 + 16) = a8;
  if (a4 == 1)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  if (a5 == 3)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v31 = objc_allocWithZone(CKAllowedSharingOptions);
  _Block_copy(a8);
  v32 = [v31 initWithAllowedParticipantPermissionOptions:v30 allowedParticipantAccessOptions:v29];
  [v32 setSupportAllowingAddedParticipantsToInviteOthers:a6 & 1];
  [v32 setSupportAllowingAccessRequests:0];
  v89 = v32;
  v33 = [v32 shareOptions];
  v34 = v33;
  if (v33 && (v35 = v33, v36 = [v35 optionsGroups], v35, v36))
  {
    v79 = v35;
    sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
    v78 = sub_10009DEA0();

    sub_10009D9D0();
    v85 = v21;
    v37 = v21[2];
    v38 = v84;
    v39 = v90;
    (v37)(v25, v84, v90);
    v40 = sub_10009D9E0();
    v41 = sub_10009DFF0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v76 = v42;
      v77 = swift_slowAlloc();
      v92 = v77;
      *v42 = 136315138;
      sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL);
      v43 = sub_10009E2C0();
      v44 = v37;
      v46 = v45;
      v85[1](v25, v39);
      v47 = sub_1000307A4(v43, v46, &v92);
      v37 = v44;
      v38 = v84;

      v48 = v76;
      *(v76 + 1) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Begin forciblyShareFolder, folderURL: %s", v48, 0xCu);
      sub_10000670C(v77);
    }

    else
    {

      v85[1](v25, v39);
    }

    (*(v80 + 8))(v28, v81);
    v62 = v87;
    sub_10009DF20();
    v63 = sub_10009DF40();
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    (v37)(v86, v38, v39);
    sub_10009DF10();

    v84 = v82;

    v64 = v83;

    v65 = sub_10009DF00();
    v66 = v85;
    v67 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v68 = (v22 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = (v68 + 23) & 0xFFFFFFFFFFFFFFF8;
    v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    *(v72 + 16) = v65;
    *(v72 + 24) = &protocol witness table for MainActor;
    v66[4](v72 + v67, v86, v90);
    v73 = (v72 + v68);
    v74 = v91;
    *v73 = sub_10008F4F8;
    v73[1] = v74;
    *(v72 + v69) = v78;
    *(v72 + v70) = v84;
    v75 = v87;
    *(v72 + v71) = v88;
    *(v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8)) = v64;
    sub_10004CDF4(0, 0, v75, &unk_1000A26E0, v72);
  }

  else
  {
    v49 = v21;
    v50 = v21[7];
    v51 = v85;
    v52 = v90;
    (v50)(v85, 1, 1, v90);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v54;
    *(inited + 48) = 0xD000000000000053;
    *(inited + 56) = 0x80000001000A74C0;
    sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v55 = CKErrorDomain;
    isa = sub_10009DCF0().super.isa;

    v57 = [objc_allocWithZone(NSError) initWithDomain:v55 code:1 userInfo:isa];

    sub_100008658(v51, v16, &qword_1000CA250, &qword_10009FDF8);
    if ((v49[6])(v16, 1, v52) == 1)
    {
      v59 = 0;
    }

    else
    {
      sub_10009D800(v58);
      v59 = v60;
      v49[1](v16, v52);
    }

    v61 = sub_10009D7A0();
    (a8)[2](a8, v59, 0, v61);

    sub_100008728(v51, &qword_1000CA250, &qword_10009FDF8);
  }
}

uint64_t sub_10008CC80()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5 + 8);

  v12 = *(v0 + v6);

  v13 = *(v0 + v8);

  v14 = *(v0 + v9);

  return _swift_deallocObject(v0, v9 + 8, v3 | 7);
}

uint64_t sub_10008CDB4()
{
  v1 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v2 | 7);
}

uint64_t sub_10008CEFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000093DC;

  return sub_1000723E8(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_10008D054()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10008D130(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000093DC;

  return sub_100070590(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10008D26C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000093DC;

  return sub_10006C410(a1, v15, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10008D370()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008D3C8()
{
  v1 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 34) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v9 + 8, v2 | 7);
}

uint64_t sub_10008D50C@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v6 = (*(v5 + 80) + 34) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *(v2 + 32);

  return sub_100070424(a1, v9, v10, v2 + v6, v8, v11, a2);
}

uint64_t sub_10008D5D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10008D5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10008D654(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10008D6B8()
{
  sub_10000670C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008D6F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10008D770()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10008D7D8(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000093DC;

  return sub_1000686A8(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_10008D8D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008D924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000093DC;

  return sub_100066D94(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10008DA0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000093DC;

  return sub_1000649F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10008DAFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10009D860() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000093DC;

  return sub_100063678(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_10008DC44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008DC8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10008DCE0()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v14 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();

  v10 = *(v0 + 48);

  sub_10000B230(*(v0 + 56), *(v0 + 64));
  v11 = *(v0 + 80);

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);

  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v12(v0 + v8, v1);
  }

  return _swift_deallocObject(v0, v8 + v14, v3 | v7 | 7);
}

uint64_t sub_10008DE98(uint64_t a1)
{
  v3 = *(sub_10009D860() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 88) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v17 = v1[3];
  v18 = v1[2];
  v7 = v1[5];
  v16 = v1[4];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = v1[10];
  v13 = *(v1 + v4);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000841C;

  return sub_100061CA4(a1, v18, v17, v16, v7, v8, v9, v11);
}

uint64_t sub_10008E050()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008E094(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000093DC;

  return sub_10005FC78(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10008E1B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000093DC;

  return sub_1000507A0(a1, v4, v5, v6);
}

uint64_t sub_10008E26C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10008E2C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000093DC;

  return sub_10005E5E4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10008E3A8()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008E490(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10009D860() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000093DC;

  return sub_10005CB40(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_10008E5E8()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  v9 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  v10 = *(v0 + v6);

  v11 = *(v0 + v7);

  return _swift_deallocObject(v0, ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_10008E710(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = v1[3];
  v23 = v1[2];
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = v1[5];
  v21 = v1[4];
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = v1[6];
  v16 = *(v1 + v10);
  v17 = *(v1 + v10 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_10000841C;

  return sub_100059994(a1, v23, v22, v21, v20, v15, v1 + v5, v11);
}

uint64_t sub_10008E95C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000093DC;

  return sub_10005534C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10008EA64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10008EAD8(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[3];
  v17 = v1[2];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000093DC;

  return sub_100050D80(a1, v17, v8, v9, v10, v11, v1 + v5, v12);
}

uint64_t sub_10008EC48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008ECC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000093DC;

  return sub_1000547F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10008ED94()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 34) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008EE6C@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_10009D860() - 8);
  v6 = (*(v5 + 80) + 34) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v2 + 32);

  return sub_100054564(a1, v7, v8, v2 + v6, v9, a2);
}

uint64_t sub_10008EF20()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  v9 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = *(v0 + v6);

  v12 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10008F04C()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008F120(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000093DC;

  return sub_10004D940(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10008F234()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008F2D8@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_10009D860() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004F4A4(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_10008F3BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10008F51C(uint64_t a1, unint64_t a2)
{
  v5 = sub_10009D9F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  v11 = v10;
  v12 = *(v2 + 16);
  v13 = *(v2 + 40);
  if (v13 <= 3)
  {
LABEL_7:
    if (v13 - 1 < 3)
    {
      if (v12)
      {
        v14 = v12;
LABEL_16:
        v16 = v14;

        v11 = v16;
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  if (*(v2 + 40) > 7u)
  {
    if (v13 != 8)
    {
      if (v13 == 11)
      {
        v14 = sub_10009131C(*(v2 + 24), *(v2 + 32));
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    if (!v12)
    {
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_18;
  }

  if (v13 != 4)
  {
    if (v13 != 5)
    {
      goto LABEL_19;
    }

    if (!v12)
    {
      __break(1u);
      goto LABEL_7;
    }

LABEL_18:
    v11 = v12;
    goto LABEL_19;
  }

  if (!v12)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = v12;
  sub_10009045C(32);
  if (v15)
  {
    sub_10008F9B4();
    if (!v14)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_19:
  v17 = [v11 userInfo];
  v18 = sub_10009DD00();

  if (!*(v18 + 16) || (v19 = sub_100030DD4(0xD000000000000011, 0x80000001000A81A0), (v20 & 1) == 0))
  {

    v21 = 0;
    goto LABEL_24;
  }

  sub_1000066A8(*(v18 + 56) + 32 * v19, v44);

  sub_100090AEC();
  if (swift_dynamicCast())
  {
    v21 = v43;
LABEL_24:
    v22 = a1;
    v23 = sub_10008FD18(0xD000000000000011, 0x80000001000A81A0);

    v11 = v23;
    goto LABEL_25;
  }

  v22 = a1;
LABEL_25:
  sub_10009D9D0();

  v24 = v11;
  v25 = sub_10009D9E0();
  v26 = sub_10009DFD0();

  if (os_log_type_enabled(v25, v26))
  {
    v40 = v9;
    v41 = v6;
    v42 = v5;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v27 = 136315394;
    v29 = sub_10009DE60();
    sub_1000300B8(v29, v30, v22, a2);
    v32 = v31;

    if (v32)
    {
      v33 = 0;
      v34 = 0xE000000000000000;
    }

    else
    {
      sub_10009DE70();
      v35 = sub_10009DDD0();
      v34 = v36;

      v33 = v35;
    }

    v37 = sub_1000307A4(v33, v34, v44);

    *(v27 + 4) = v37;
    *(v27 + 12) = 2112;
    *(v27 + 14) = v24;
    *v28 = v24;
    v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "returning %s mapped error: %@", v27, 0x16u);
    sub_100008728(v28, &qword_1000CA8E0, &qword_10009FE08);

    sub_10000670C(v39);

    (*(v41 + 8))(v40, v42);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

void sub_10008F9B4()
{
  swift_willThrow();
  v1 = v0;
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  type metadata accessor for BRError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    type metadata accessor for CKError(0);
    v16 = v1;
    if (swift_dynamicCast())
    {
      sub_100090AA4(&qword_1000CA028, type metadata accessor for CKError);
      sub_10009D770();
      if (v19 == 32)
      {
        v17 = v20;
        sub_10009D7A0();
      }

      else
      {
      }
    }

    goto LABEL_21;
  }

  sub_100090AA4(&qword_1000C9FF0, type metadata accessor for BRError);
  sub_10009D770();
  if (v19 != 17)
  {

    goto LABEL_17;
  }

  v2 = v20;
  v3 = sub_10009D7A0();

  v4 = [v3 underlyingErrors];
  v5 = sub_10009DEA0();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = v7;
      while (1)
      {
        if (v8 >= *(v5 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v5 + 32 + 8 * v8);
        v7 = v8 + 1;
        swift_errorRetain();
        v10 = sub_10009D7A0();
        sub_10009045C(32);
        v12 = v11;

        if (v12)
        {
          break;
        }

        ++v8;
        if (v6 == v7)
        {
          goto LABEL_22;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100090B38(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_100090B38((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
      }

      _swiftEmptyArrayStorage[2] = v15;
      _swiftEmptyArrayStorage[v14 + 4] = v9;
    }

    while (v6 - 1 != v8);
  }

LABEL_22:

  if (_swiftEmptyArrayStorage[2])
  {
    v18 = _swiftEmptyArrayStorage[4];
    swift_errorRetain();

    sub_10009D7A0();
  }

  else
  {
  }

LABEL_21:
}

id sub_10008FD18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 userInfo];
  v7 = sub_10009DD00();

  v15 = v7;
  sub_100090DB8(a1, a2, v14);
  sub_100008728(v14, &qword_1000C9F00, &qword_10009F4B8);
  v8 = [v3 domain];
  if (!v8)
  {
    sub_10009DD90();
    v8 = sub_10009DD50();
  }

  v9 = [v3 code];
  v10 = objc_allocWithZone(NSError);
  isa = sub_10009DCF0().super.isa;

  v12 = [v10 initWithDomain:v8 code:v9 userInfo:isa];

  return v12;
}

void *sub_10008FE8C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10008FEB4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10008FEE4(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  switch(*(v1 + 40))
  {
    case 1:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v24 = swift_allocObject();
      *a1 = v24;
      v24[2] = v3;
      v24[3] = v2;
      v24[4] = v4;
      v24[5] = v5;
      v24[6] = v6;

      v25 = v4;
      result = 1;
      break;
    case 2:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v18 = swift_allocObject();
      *a1 = v18;
      v18[2] = v3;
      v18[3] = v2;
      v18[4] = v4;
      v18[5] = v5;
      v18[6] = v6;

      v19 = v4;
      result = 2;
      break;
    case 3:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v20 = swift_allocObject();
      *a1 = v20;
      v20[2] = v3;
      v20[3] = v2;
      v20[4] = v4;
      v20[5] = v5;
      v20[6] = v6;

      v21 = v4;
      result = 3;
      break;
    case 4:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v12 = swift_allocObject();
      *a1 = v12;
      v12[2] = v3;
      v12[3] = v2;
      v12[4] = v4;
      v12[5] = v5;
      v12[6] = v6;

      v13 = v4;
      result = 4;
      break;
    case 5:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v26 = swift_allocObject();
      *a1 = v26;
      v26[2] = v3;
      v26[3] = v2;
      v26[4] = v4;
      v26[5] = v5;
      v26[6] = v6;

      v27 = v4;
      result = 5;
      break;
    case 6:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v30 = swift_allocObject();
      *a1 = v30;
      v30[2] = v3;
      v30[3] = v2;
      v30[4] = v4;
      v30[5] = v5;
      v30[6] = v6;

      v31 = v4;
      result = 6;
      break;
    case 7:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v22 = swift_allocObject();
      *a1 = v22;
      v22[2] = v3;
      v22[3] = v2;
      v22[4] = v4;
      v22[5] = v5;
      v22[6] = v6;

      v23 = v4;
      result = 7;
      break;
    case 8:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v34 = swift_allocObject();
      *a1 = v34;
      v34[2] = v3;
      v34[3] = v2;
      v34[4] = v4;
      v34[5] = v5;
      v34[6] = v6;

      v35 = v4;
      result = 8;
      break;
    case 9:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v16 = swift_allocObject();
      *a1 = v16;
      v16[2] = v3;
      v16[3] = v2;
      v16[4] = v4;
      v16[5] = v5;
      v16[6] = v6;

      v17 = v4;
      result = 9;
      break;
    case 0xA:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v32 = swift_allocObject();
      *a1 = v32;
      v32[2] = v3;
      v32[3] = v2;
      v32[4] = v4;
      v32[5] = v5;
      v32[6] = v6;

      v33 = v4;
      result = 10;
      break;
    case 0xB:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1000C4048;
      v10 = swift_allocObject();
      *a1 = v10;
      v10[2] = v3;
      v10[3] = v2;
      v10[4] = v4;
      v10[5] = v5;
      v10[6] = v6;

      v11 = v4;
      result = 11;
      break;
    case 0xC:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1000C4048;
      v14 = swift_allocObject();
      *a1 = v14;
      v14[2] = v3;
      v14[3] = v2;
      v14[4] = v4;
      v14[5] = v5;
      v14[6] = v6;

      v15 = v4;
      result = 12;
      break;
    case 0xD:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1000C4048;
      v28 = swift_allocObject();
      *a1 = v28;
      v28[2] = v3;
      v28[3] = v2;
      v28[4] = v4;
      v28[5] = v5;
      v28[6] = v6;

      v29 = v4;
      result = 13;
      break;
    default:
      v37[0] = *v1;
      v37[1] = v2;
      v38 = v4;
      v39[0] = v5;
      v39[1] = v6;
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1000C4048;
      v8 = swift_allocObject();
      *a1 = v8;
      v8[2] = v3;
      v8[3] = v2;
      v8[4] = v4;
      v8[5] = v5;
      v8[6] = v6;
      sub_1000914C4(v37, v36);
      sub_100008658(&v38, v36, &qword_1000CB7D0, &qword_1000A2A20);
      sub_100008658(v39, v36, &qword_1000CA6A0, &qword_10009FD50);
      result = 0;
      break;
  }

  return result;
}

void sub_10009045C(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  type metadata accessor for BRError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    type metadata accessor for CKError(0);
    v14 = v3;
    if (swift_dynamicCast())
    {
      sub_100090AA4(&qword_1000CA028, type metadata accessor for CKError);
      sub_10009D770();
    }

    return;
  }

  sub_100090AA4(&qword_1000C9FF0, type metadata accessor for BRError);
  sub_10009D770();
  if (v15 != 17)
  {

    goto LABEL_9;
  }

  v4 = v16;
  v5 = sub_10009D7A0();

  v6 = [v5 underlyingErrors];
  v7 = sub_10009DEA0();

  v8 = 0;
  v9 = *(v7 + 16);
  while (1)
  {
    if (v9 == v8)
    {
LABEL_7:

      return;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = v8 + 1;
    v11 = *(v7 + 8 * v8 + 32);
    swift_errorRetain();
    v12 = sub_10009D7A0();
    v13 = sub_10009045C(a1);

    v8 = v10;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1000906D4(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  type metadata accessor for BRError(0);
  if (swift_dynamicCast())
  {
    sub_100090AA4(&qword_1000C9FF0, type metadata accessor for BRError);
    sub_10009D770();
    if (v30 == 17)
    {
      v4 = v31;
      v5 = sub_10009D7A0();

      v6 = [v5 underlyingErrors];
      v7 = sub_10009DEA0();

      v8 = 0;
      v9 = *(v7 + 16);
      while (v9 != v8)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v10 = v8 + 1;
        v11 = *(v7 + 8 * v8 + 32);
        swift_errorRetain();
        v12 = sub_10009D7A0();
        v13 = sub_1000906D4(a1);

        v8 = v10;
        if (v13)
        {
          break;
        }
      }

LABEL_15:

      return;
    }
  }

  type metadata accessor for CKError(0);
  v14 = v3;
  if (swift_dynamicCast())
  {
    sub_100090AA4(&qword_1000CA028, type metadata accessor for CKError);
    sub_10009D770();
    if (v30 == CKErrorCodeForUnderlyingErrorCode())
    {
      v4 = v31;
      v15 = sub_10009D7A0();

      v16 = [v15 underlyingErrors];
      v17 = sub_10009DEA0();

      v18 = 0;
      v19 = *(v17 + 16);
      while (v19 != v18)
      {
        if (v18 >= *(v17 + 16))
        {
LABEL_24:
          __break(1u);
          return;
        }

        v20 = v18 + 1;
        v21 = *(v17 + 8 * v18 + 32);
        swift_errorRetain();
        v22 = sub_10009D7A0();
        v23 = sub_1000906D4(a1);

        v18 = v20;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_15;
    }
  }

  v24 = [v14 domain];
  v25 = sub_10009DD90();
  v27 = v26;

  if (v25 == sub_10009DD90() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_10009E2E0();

    if ((v29 & 1) == 0)
    {
      return;
    }
  }

  [v14 code];
}

uint64_t sub_100090AA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100090AEC()
{
  result = qword_1000CB7B8;
  if (!qword_1000CB7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CB7B8);
  }

  return result;
}

void *sub_100090B38(void *a1, int64_t a2, char a3)
{
  result = sub_100090B78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100090B58(char *a1, int64_t a2, char a3)
{
  result = sub_100090CAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100090B78(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100003714(&qword_1000CB7C0, "ԛ");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100090CAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000CB7C8, &qword_1000A2A18);
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

double sub_100090DB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100030DD4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100091178();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100039068((*(v12 + 56) + 32 * v9), a3);
    sub_100090E5C(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100090E5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10009E1B0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_10009E380();

      sub_10009DDE0();
      v14 = sub_10009E3A0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

id sub_10009100C()
{
  v1 = v0;
  sub_100003714(&qword_1000CAD90, &qword_1000A1280);
  v2 = *v0;
  v3 = sub_10009E270();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100091178()
{
  v1 = v0;
  sub_100003714(&qword_1000CA910, &qword_1000A0B60);
  v2 = *v0;
  v3 = sub_10009E270();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000066A8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100039068(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_10009131C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v6 = CKErrorDomain;
    v7.super.isa = sub_10009DCF0().super.isa;
  }

  else
  {
    v6 = CKErrorDomain;
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(NSError) initWithDomain:v6 code:1 userInfo:v7.super.isa];

  return v8;
}

uint64_t sub_10009147C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

__n128 sub_100091520(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100091548(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100091594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000915F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10009160C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 41))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 40);
  if (v3 <= 0xD)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100091654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
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

BOOL sub_100091890(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000918C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000918EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000919D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100091C84(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_100091A20()
{
  result = qword_1000CB7D8;
  if (!qword_1000CB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB7D8);
  }

  return result;
}

unint64_t sub_100091A78()
{
  result = qword_1000CB7E0;
  if (!qword_1000CB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB7E0);
  }

  return result;
}

unint64_t sub_100091AD0()
{
  result = qword_1000CB7E8;
  if (!qword_1000CB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB7E8);
  }

  return result;
}

uint64_t sub_100091B24()
{
  v1 = 1701736302;
  v2 = 0x796C6E4F64616572;
  if (*v0 != 2)
  {
    v2 = 0x646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x7469725764616572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100091BA0()
{
  v1 = 0x4D63696C6275702ELL;
  if (*v0 != 1)
  {
    v1 = 0x657461766972702ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

uint64_t sub_100091C08()
{
  v1 = 0x656E6F6E2ELL;
  v2 = 0x6C6E4F646165722ELL;
  if (*v0 != 2)
  {
    v2 = 0x646578696D2ELL;
  }

  if (*v0)
  {
    v1 = 0x697257646165722ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100091C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id sub_100091CC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_100091D0C(uint64_t a1, char a2)
{
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - v11;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        if ((a2 & 1) == 0)
        {
          v14 = v10;
          sub_10009D9D0();
          v15 = sub_10009D9E0();
          v16 = sub_10009DFD0();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v15, v16, "SPIAnalyticsEvent unknown sharing status but no error", v17, 2u);
          }

          (*(v5 + 8))(v12, v14);
        }

        return 1;
      case 1:
        return 1;
      case 2:
        return 3;
    }

LABEL_16:
    v18 = v10;
    sub_10009D9D0();
    v19 = sub_10009D9E0();
    v20 = sub_10009DFD0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "SPIAnalyticsEvent unknown CSUIShareItemStatus", v21, 2u);
    }

    (*(v5 + 8))(v9, v18);
    return 1;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 4;
    }

    if (a1 == 6)
    {
      return 5;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100091F68(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009D9A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003714(&unk_1000CB830, &qword_1000A30A8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  switch(a1)
  {
    case 1:
      if (!a3)
      {
        goto LABEL_3;
      }

      if (a2 == 0x7365676170 && a3 == 0xE500000000000000 || (sub_10009E2E0() & 1) != 0)
      {

        result = 2;
      }

      else
      {
        sub_10009D9B0();
        sub_100008658(v17, v15, &unk_1000CB830, &qword_1000A30A8);
        if ((*(v7 + 48))(v15, 1, v6) == 1)
        {
          sub_100008728(v17, &unk_1000CB830, &qword_1000A30A8);
          sub_100008728(v15, &unk_1000CB830, &qword_1000A30A8);
          goto LABEL_3;
        }

        (*(v7 + 32))(v10, v15, v6);
        v19 = sub_10009D900();
        if (!v20)
        {
          (*(v7 + 8))(v10, v6);
          sub_100008728(v17, &unk_1000CB830, &qword_1000A30A8);
          goto LABEL_3;
        }

        if (v19 == 0x7365676170 && v20 == 0xE500000000000000)
        {

          (*(v7 + 8))(v10, v6);
          sub_100008728(v17, &unk_1000CB830, &qword_1000A30A8);
        }

        else
        {
          v22 = sub_10009E2E0();

          (*(v7 + 8))(v10, v6);
          sub_100008728(v17, &unk_1000CB830, &qword_1000A30A8);
          if ((v22 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        result = 2;
      }

      break;
    case 2:

      result = 1;
      break;
    case 3:

      result = 0;
      break;
    case 4:
    case 5:
    case 6:

LABEL_3:
      result = 3;
      break;
    case 7:

      result = 4;
      break;
    case 8:

      result = 10;
      break;
    case 9:

      result = 5;
      break;
    case 10:

      result = 6;
      break;
    case 11:

      result = 7;
      break;
    case 12:
    case 13:

      result = 8;
      break;
    default:

      result = 9;
      break;
  }

  return result;
}

uint64_t sub_100092368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    v6 = sub_10009DDB0();
    v7 = v5;
    if (v6 == 0xD000000000000010 && 0x80000001000A8210 == v5 || (sub_10009E2E0() & 1) != 0)
    {

      v4 = 1;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000016 && 0x80000001000A8230 == v7 || (sub_10009E2E0() & 1) != 0)
    {

      v4 = 2;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000011 && 0x80000001000A8250 == v7 || (sub_10009E2E0() & 1) != 0)
    {

      v4 = 3;
      goto LABEL_6;
    }

    if (v6 == 0x6C7070612E6D6F63 && v7 == 0xEF73656761702E65 || (sub_10009E2E0() & 1) != 0)
    {

      v4 = 4;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000011 && 0x80000001000A8270 == v7 || (sub_10009E2E0() & 1) != 0)
    {

      v4 = 5;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000015 && 0x80000001000A66F0 == v7 || (sub_10009E2E0() & 1) != 0)
    {

      v4 = 6;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000013 && 0x80000001000A66D0 == v7 || (sub_10009E2E0() & 1) != 0)
    {

      v4 = 7;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000016 && 0x80000001000A6690 == v7 || (sub_10009E2E0() & 1) != 0)
    {

      v4 = 8;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000012 && 0x80000001000A6650 == v7 || (sub_10009E2E0() & 1) != 0)
    {

      v4 = 9;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000013 && 0x80000001000A8290 == v7)
    {

LABEL_43:
      v4 = 11;
      goto LABEL_6;
    }

    v9 = sub_10009E2E0();

    if (v9)
    {
      goto LABEL_43;
    }

    v10 = sub_10009D860();
    if ((*(*(v10 - 8) + 48))(a3, 1, v10) == 1)
    {
      v4 = 10;
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_6:
  sub_100008728(a3, &qword_1000CA250, &qword_10009FDF8);
  return v4;
}

void *sub_10009277C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 != 255)
  {
    v4 = *(a1 + 24);
    v3 = *(a1 + 32);
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    v8 = *(a1 + 16);
    v27 = *a1;
    v7 = v27;
    v28 = v8;
    v29 = v3;
    v30 = v1;
    sub_10008FEE4(v24);
    sub_100032380(v7, v6, v5, v4, v3, v1);
    isa = sub_10009DF90().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003D290(isa, 0x707954726F727265, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v11 = v25;
    v12 = v26;
    sub_1000067C8(v24, v25);
    (*(v12 + 24))(v11, v12);
    v13 = sub_10009DD50();

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003D290(v13, 0xD000000000000014, 0x80000001000A81F0, v14);
    v15 = v25;
    v16 = v26;
    sub_1000067C8(v24, v25);
    v17 = (*(v16 + 8))(v15, v16);
    if (v17)
    {
      v18 = v17;
      [v17 code];
      v19 = sub_10009DF90().super.super.isa;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003D290(v19, 0x646F43726F727265, 0xE900000000000065, v20);
      v21 = [v18 domain];
      if (!v21)
      {
        sub_10009DD90();
        v21 = sub_10009DD50();
      }

      v22 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003D290(v21, 0x6D6F44726F727265, 0xEB000000006E6961, v22);

      sub_100008728(a1, &qword_1000CB088, &unk_1000A18F0);
    }

    else
    {
      sub_100008728(a1, &qword_1000CB088, &unk_1000A18F0);
    }

    sub_10000670C(v24);
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100092A1C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_100030DD4(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_10009100C();
      }
    }

    else
    {
      v32 = v51;
      sub_10003CFEC(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_100030DD4(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_10009398C();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_10009E300();
  __break(1u);
  return result;
}

void *sub_100092CB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v66 = a4;
  v67 = a5;
  v65 = a3;
  v11 = sub_10009D9F0();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  __chkstk_darwin(v11);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  v20 = sub_10009D860();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  sub_100008658(a1, v19, &qword_1000CA250, &qword_10009FDF8);
  v25 = *(v21 + 48);
  if (v25(v19, 1, v20) == 1)
  {
    sub_100008728(v19, &qword_1000CA250, &qword_10009FDF8);
    if (a2)
    {
      v26 = a2;
      sub_10009E0F0();
      v27 = sub_10009E100();

      if (v27)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          a6 = sub_10009DD90();
          a7 = v28;
          swift_unknownObjectRelease();

          goto LABEL_10;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    a6 = sub_1000959C0(v24, a2);
    a7 = v29;
    (*(v21 + 8))(v24, v20);
  }

LABEL_10:
  v30 = v68;
  v31 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v31 = a6 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    if (v25(v68, 1, v20) == 1)
    {
      v32 = sub_100096888(a6, a7);
    }

    else
    {
      v32 = sub_100096298(a6, a7, v30);
    }

    sub_100091F68(v32, a6, a7);
    v46 = v64;
    sub_100008658(v30, v64, &qword_1000CA250, &qword_10009FDF8);
    v47 = v66;

    sub_100092368(v65, v47, v46);
    sub_100003714(&qword_1000CB7F0, "Җ");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A0490;
    *(inited + 32) = 0x54676E6972616873;
    *(inited + 40) = 0xEB00000000657079;
    *(inited + 48) = sub_10009DF90();
    *(inited + 56) = 0x70704174736F68;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = sub_10009DF90();
    v49 = sub_10003258C(inited);
    swift_setDeallocating();
    sub_100003714(&qword_1000CB7F8, &qword_1000A30A0);
    swift_arrayDestroy();
    v50 = sub_10009277C(v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v49;
    sub_100092A1C(v50, sub_100091CC0, 0, isUniquelyReferenced_nonNull_native, &v69);

    return v69;
  }

  else
  {

    v33 = v63;
    sub_10009D9D0();
    v34 = sub_10009D9E0();
    v35 = sub_10009DFD0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = v68;
      *v36 = 136315138;
      v37 = sub_10009DE60();
      v39 = v38;
      if (("NSUnderlyingError" & 0x2000000000000000) != 0)
      {
        v40 = ("NSUnderlyingError" >> 40) & 0xF0000;
      }

      else
      {
        v40 = 2293760;
      }

      if (v40)
      {
        v41 = v37;
        while (sub_10009DE60() != v41 || v42 != v39)
        {
          v43 = sub_10009E2E0();

          if (v43)
          {
            goto LABEL_30;
          }

          if ((v40 ^ sub_10009DE00()) < 0x4000)
          {
            goto LABEL_25;
          }
        }

LABEL_30:

        sub_10009DE70();
        v53 = sub_10009DDD0();
        v45 = v54;

        v44 = v53;
      }

      else
      {
LABEL_25:

        v44 = 0;
        v45 = 0xE000000000000000;
      }

      v56 = v61;
      v55 = v62;
      v57 = v63;
      v58 = v68;
      v59 = sub_1000307A4(v44, v45, &v69);

      *(v36 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s: couldn't determine UTI", v36, 0xCu);
      sub_10000670C(v58);

      (*(v56 + 8))(v57, v55);
    }

    else
    {

      (*(v61 + 8))(v33, v62);
    }

    return &_swiftEmptyDictionarySingleton;
  }
}

uint64_t sub_10009339C(char a1, char a2)
{
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if ((a2 & 1) == 0)
    {
      v11 = v7;
      sub_10009D9D0();
      v12 = sub_10009D9E0();
      v13 = sub_10009DFD0();
      if (os_log_type_enabled(v12, v13))
      {
        v10 = 2;
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "SPIAnalyticsEvent sharingMode is none but no error", v14, 2u);

        (*(v5 + 8))(v9, v11);
        return v10;
      }

      (*(v5 + 8))(v9, v11);
    }

    return 2;
  }

  return a1 == 1;
}

uint64_t sub_100093528(unsigned __int8 a1, char a2)
{
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (a1)
  {
    return 0;
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v10 = v7;
      sub_10009D9D0();
      v11 = sub_10009D9E0();
      v12 = sub_10009DFD0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "SPIAnalyticsEvent sharePermission is none but no error", v13, 2u);
      }

      (*(v5 + 8))(v9, v10);
    }

    return 3;
  }
}

uint64_t sub_100093698(uint64_t result, uint64_t a2)
{
  if (!result)
  {

    return 4;
  }

  if (result == 1)
  {

    return 3;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = *(a2 + 32);
  if (v3 == 1)
  {
    if (v2 != 1)
    {
      if (*(a2 + 33))
      {

        return 0;
      }

      v4 = 0;
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  if (v2 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(a2 + 33);
LABEL_13:

  if (v3 != v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100093750(uint64_t a1, char a2)
{
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - v11;
  if (a1 <= 1)
  {
    if (!a1)
    {
      if ((a2 & 1) == 0)
      {
        v14 = v10;
        sub_10009D9D0();
        v15 = sub_10009D9E0();
        v16 = sub_10009DFD0();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "SPIAnalyticsEvent unknown user share status but no error", v17, 2u);
        }

        (*(v5 + 8))(v12, v14);
      }

      return 4;
    }

    if (a1 == 1)
    {
      return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return 3;
      case 3:
        return 2;
      case 2:
        return 1;
    }
  }

  v18 = v10;
  sub_10009D9D0();
  v19 = sub_10009D9E0();
  v20 = sub_10009DFD0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "SPIAnalyticsEvent unknown CSUICurrentUserCKShareStatus", v21, 2u);
  }

  (*(v5 + 8))(v9, v18);
  return 4;
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

uint64_t sub_100093B2C(unsigned __int8 *a1)
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

_BYTE *sub_100093B48(_BYTE *result, int a2)
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

__n128 sub_100093E1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100093E30(uint64_t a1, unsigned int a2)
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

uint64_t sub_100093E78(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100094060()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v3 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v4 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v5 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v6 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(*(v0 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();
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

uint64_t sub_1000944C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v5;
  return result;
}

uint64_t sub_100094540(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

BOOL sub_1000945E4(unsigned __int8 *a1, unsigned __int8 *a2)
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

unint64_t sub_100094678()
{
  result = qword_1000CB800;
  if (!qword_1000CB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB800);
  }

  return result;
}

unint64_t sub_1000946D0()
{
  result = qword_1000CB808;
  if (!qword_1000CB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB808);
  }

  return result;
}

unint64_t sub_100094728()
{
  result = qword_1000CB810;
  if (!qword_1000CB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB810);
  }

  return result;
}

unint64_t sub_100094780()
{
  result = qword_1000CB818;
  if (!qword_1000CB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB818);
  }

  return result;
}

unint64_t sub_1000947D8()
{
  result = qword_1000CB820;
  if (!qword_1000CB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB820);
  }

  return result;
}

__n128 sub_100094A54(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_100094A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100094AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
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
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 8)
  {
    v8 = v7 - 7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
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

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100094C60(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    return v1 - 7;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100094C74(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 7;
  }

  return result;
}

BOOL sub_100094CA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 8;
  v5 = v3 == 9;
  v6 = v3 & 0xFE;
  v8 = v3 == 7 || v2 == v3;
  if (v2 == 7)
  {
    v8 = 1;
  }

  if (v6 == 8)
  {
    v8 = 0;
  }

  if (v2 == 9)
  {
    v8 = v5;
  }

  if (v2 == 8)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100094CF8()
{
  v1 = *v0;
  v2 = 0x69636570736E752ELL;
  v3 = 0x726568746F2ELL;
  if (v1 != 6)
  {
    v3 = 2037276974;
  }

  v4 = 0x6972616661732ELL;
  if (v1 != 4)
  {
    v4 = 0x726F66656572662ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F467365746F6E2ELL;
  if (v1 != 2)
  {
    v5 = 0x65646E696D65722ELL;
  }

  if (*v0)
  {
    v2 = 0x7365746F6E2ELL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100094E04(char a1)
{
  result = 0x7265646C6F66;
  switch(a1)
  {
    case 1:
      result = 0x746E656D75636F64;
      break;
    case 2:
      result = 0x6873646165727073;
      break;
    case 3:
      result = 0x61746E6573657270;
      break;
    case 4:
      result = 0x6567616D69;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 6710384;
      break;
    case 7:
      result = 1702129518;
      break;
    case 8:
      result = 0x6C6F467365746F6ELL;
      break;
    case 9:
      result = 1953720684;
      break;
    case 10:
      result = 0x70756F7247626174;
      break;
    case 11:
      result = 0x6D726F6665657266;
      break;
    case 12:
      result = 0x43636972656E6567;
      break;
    case 13:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100094FB8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100094E04(*a1);
  v5 = v4;
  if (v3 == sub_100094E04(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10009E2E0();
  }

  return v8 & 1;
}

Swift::Int sub_100095040()
{
  v1 = *v0;
  sub_10009E380();
  sub_100094E04(v1);
  sub_10009DDE0();

  return sub_10009E3A0();
}

uint64_t sub_1000950A4()
{
  sub_100094E04(*v0);
  sub_10009DDE0();
}

Swift::Int sub_1000950F8()
{
  v1 = *v0;
  sub_10009E380();
  sub_100094E04(v1);
  sub_10009DDE0();

  return sub_10009E3A0();
}

uint64_t sub_100095158@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100097108(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100095188@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100094E04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000951B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009D8C0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10009D9F0();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  v8 = __chkstk_darwin(v6);
  v59 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v57 - v10;
  v11 = sub_100003714(&unk_1000CB830, &qword_1000A30A8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v57 - v17;
  __chkstk_darwin(v16);
  v20 = &v57 - v19;
  v21 = sub_10009D9A0();
  v64 = *(v21 - 8);
  v65 = v21;
  v22 = *(v64 + 64);
  v23 = __chkstk_darwin(v21);
  v58 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v61 = &v57 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v57 - v28;
  __chkstk_darwin(v27);
  v31 = &v57 - v30;
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669 || (sub_10009E2E0() & 1) != 0)
  {
    return 0xD00000000000001BLL;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 0xD000000000000014;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_10009E2E0() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000A82D0 == a2 || (sub_10009E2E0() & 1) != 0)
  {
    return 0xD000000000000019;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  sub_10009D9B0();
  v33 = v64;
  v57 = *(v64 + 48);
  if (v57(v20, 1, v65) == 1)
  {
    sub_1000967C8(v20);

    sub_10009D8B0();
    v34 = v65;
    (*(v33 + 56))(v15, 1, 1, v65);
    sub_10009D920();
    if (v57(v18, 1, v34) == 1)
    {
      sub_1000967C8(v18);
    }

    else
    {
      v43 = v34;
      v44 = v61;
      (*(v33 + 32))(v61, v18, v34);
      v45 = v59;
      sub_10009D9D0();
      v46 = v58;
      (*(v33 + 16))(v58, v44, v34);
      v47 = sub_10009D9E0();
      v48 = sub_10009DFF0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = v46;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v66 = v51;
        *v50 = 136315138;
        v60 = sub_10009D8D0();
        v53 = v52;
        v54 = *(v33 + 8);
        v54(v49, v43);
        v55 = sub_1000307A4(v60, v53, &v66);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v47, v48, "utiOfItem(fromCKShareType)--type from filename extension: %s", v50, 0xCu);
        sub_10000670C(v51);
      }

      else
      {

        v54 = *(v33 + 8);
        v54(v46, v43);
      }

      (*(v62 + 8))(v45, v63);
      v56 = v61;
      a1 = sub_10009D8D0();
      v54(v56, v43);
    }
  }

  else
  {
    v35 = v20;
    v36 = v65;
    (*(v33 + 32))(v31, v35, v65);
    sub_10009D930();
    v37 = sub_10009D990();
    v38 = *(v33 + 8);
    v38(v29, v36);
    v39 = v60;
    sub_10009D9D0();
    v40 = sub_10009D9E0();
    v41 = sub_10009DFF0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67109120;
      *(v42 + 4) = v37 & 1;
      _os_log_impl(&_mh_execute_header, v40, v41, "utiOfItem(fromCKShareType)--ckShareType is a UTType. Is file system item: %{BOOL}d", v42, 8u);
    }

    (*(v62 + 8))(v39, v63);
    a1 = sub_10009D8D0();
    v38(v31, v36);
  }

  return a1;
}

unint64_t sub_1000959C0(uint64_t a1, void *a2)
{
  v49 = a2;
  v3 = sub_10009D860();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  v5 = __chkstk_darwin(v3);
  v45 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = sub_10009D9F0();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  v11 = __chkstk_darwin(v9);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = sub_10009D6F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000CA498, &qword_1000A04B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = NSURLTypeIdentifierKey;
  v21 = NSURLTypeIdentifierKey;
  sub_1000315FC(inited);
  swift_setDeallocating();
  sub_1000462B8(inited + 32);
  sub_10009D7C0();
  v22 = v8;
  v23 = v14;
  v24 = v50;

  v25 = sub_10009D6A0();
  if (v26)
  {
    v27 = v25;
    (*(v16 + 8))(v19, v15);
    return v27;
  }

  v46 = v19;
  sub_10009D9D0();
  v32 = v24;
  v33 = v22;
  (*(v24 + 16))(v22, a1, v3);
  v34 = sub_10009D9E0();
  v35 = sub_10009DFD0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51[0] = v45;
    *v36 = 136315138;
    sub_100096830();
    v37 = sub_10009E2C0();
    v38 = v33;
    v40 = v39;
    (*(v32 + 8))(v38, v3);
    v41 = sub_1000307A4(v37, v40, v51);
    v42 = v23;
    v43 = v41;

    *(v36 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "resourceValues(forKeys:) returned nil for typeIdentifier (UTI) for URL: %s", v36, 0xCu);
    sub_10000670C(v45);

    (*(v47 + 8))(v42, v48);
  }

  else
  {

    (*(v32 + 8))(v33, v3);
    (*(v47 + 8))(v23, v48);
  }

  (*(v16 + 8))(v46, v15);
  if (v49)
  {
    v29 = v49;
    sub_10009E0F0();
    v30 = sub_10009E100();

    if (v30)
    {
      v51[2] = v30;
      sub_100003714(&unk_1000CA270, &qword_10009FF68);
      if (swift_dynamicCast())
      {
        v31 = sub_1000951B4(v51[0], v51[1]);

        return v31;
      }
    }
  }

  return 0;
}

uint64_t sub_1000960B0()
{
  v0 = sub_10009D9A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D960();
  v5 = sub_10009D980();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    return 0;
  }

  sub_10009D8F0();
  v8 = sub_10009D980();
  v6(v4, v0);
  if (v8)
  {
    return 3;
  }

  sub_10009D8E0();
  v9 = sub_10009D980();
  v6(v4, v0);
  if (v9)
  {
    return 2;
  }

  sub_10009D940();
  v10 = sub_10009D980();
  v6(v4, v0);
  if (v10)
  {
    return 4;
  }

  sub_10009D950();
  v11 = sub_10009D980();
  v6(v4, v0);
  if (v11)
  {
    return 5;
  }

  sub_10009D910();
  v12 = sub_10009D980();
  v6(v4, v0);
  if (v12)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100096298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009D8C0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v31[1] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&unk_1000CB830, &qword_1000A30A8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v31 - v15;
  __chkstk_darwin(v14);
  v18 = v31 - v17;
  v19 = sub_10009D9A0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v31 - v25;
  v27 = sub_10009D860();
  if ((*(*(v27 - 8) + 48))(a3, 1, v27) == 1)
  {
    if (a1 == 0xD000000000000014 && 0x80000001000A6FE0 == a2 || (sub_10009E2E0() & 1) != 0)
    {
      return 7;
    }

    else if (a1 == 0xD000000000000016 && 0x80000001000A82B0 == a2 || (sub_10009E2E0() & 1) != 0)
    {
      return 8;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001000A6FC0 == a2 || (sub_10009E2E0() & 1) != 0)
    {
      return 9;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001000A6FA0 == a2 || (sub_10009E2E0() & 1) != 0)
    {
      return 10;
    }

    else if (a1 == 0x6C656D726163 && a2 == 0xE600000000000000 || (sub_10009E2E0() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000A6F80 == a2 || (sub_10009E2E0() & 1) != 0)
    {
      return 11;
    }

    else
    {
      result = 11;
      if (a1 != 0x6D726F6665657266 || a2 != 0xE800000000000000)
      {
        if (sub_10009E2E0())
        {
          return 11;
        }

        else
        {
          return 12;
        }
      }
    }
  }

  else
  {

    sub_10009D9B0();
    v31[0] = a1;
    v29 = *(v20 + 48);
    if (v29(v18, 1, v19) == 1)
    {
      sub_1000967C8(v18);

      sub_10009D8B0();
      (*(v20 + 56))(v13, 1, 1, v19);
      sub_10009D920();
      if (v29(v16, 1, v19) == 1)
      {
        sub_1000967C8(v16);
        return 1;
      }

      (*(v20 + 32))(v24, v16, v19);
      v30 = sub_1000960B0();
      (*(v20 + 8))(v24, v19);
    }

    else
    {
      (*(v20 + 32))(v26, v18, v19);
      v30 = sub_1000960B0();
      (*(v20 + 8))(v26, v19);
    }

    return v30;
  }

  return result;
}

uint64_t sub_1000967C8(uint64_t a1)
{
  v2 = sub_100003714(&unk_1000CB830, &qword_1000A30A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100096830()
{
  result = qword_1000CA4A0;
  if (!qword_1000CA4A0)
  {
    sub_10009D860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA4A0);
  }

  return result;
}

uint64_t sub_100096888(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009D8C0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100003714(&unk_1000CB830, &qword_1000A30A8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = sub_10009D9A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669)
  {
    return 1;
  }

  v19 = v16;
  if (sub_10009E2E0())
  {
    return 1;
  }

  if (a1 == 0x737265626D756ELL && a2 == 0xE700000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x7365676170 && a2 == 0xE500000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x65746F6E79656BLL && a2 == 0xE700000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0xD000000000000016 && 0x80000001000A82B0 == a2 || (sub_10009E2E0() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_10009E2E0() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000A6FC0 == a2 || (sub_10009E2E0() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000A82D0 == a2 || (sub_10009E2E0() & 1) != 0)
  {
    return 10;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_10009E2E0() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000A6F80 == a2 || (sub_10009E2E0() & 1) != 0)
  {
    return 11;
  }

  sub_10009D8B0();
  (*(v14 + 56))(v10, 1, 1, v19);
  sub_10009D920();
  if ((*(v14 + 48))(v12, 1, v19) == 1)
  {
    sub_1000967C8(v12);
    return 12;
  }

  else
  {
    (*(v14 + 32))(v18, v12, v19);
    v21 = sub_1000960B0();
    (*(v14 + 8))(v18, v19);
    return v21;
  }
}

uint64_t getEnumTagSinglePayload for UTISupport.SharingItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UTISupport.SharingItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudKitAppType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitAppType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10009705C()
{
  result = qword_1000CB848;
  if (!qword_1000CB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB848);
  }

  return result;
}

unint64_t sub_1000970B4()
{
  result = qword_1000CB850;
  if (!qword_1000CB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB850);
  }

  return result;
}

uint64_t sub_100097108(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000C1C30;
  v6._object = a2;
  v4 = sub_10009E2B0(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100097154(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 40;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = (v3 + 16 * v2);
      v6 = v2;
      while (1)
      {
        if (v6 >= v1)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }

        v7 = *(v5 - 1);
        v8 = *v5;

        v9 = sub_100097F4C(v7, v8, 0x20uLL);
        if (v9)
        {
          break;
        }

        if (sub_100097F4C(v7, v8, 0x800uLL))
        {
          goto LABEL_13;
        }

        ++v6;
        v5 += 2;
        if (v2 == v1)
        {
          goto LABEL_18;
        }
      }

      v10 = sub_100097330();
      if (*(v10 + 2))
      {
        v7 = *(v10 + 4);
        v11 = *(v10 + 5);

        v8 = v11;
      }

      else
      {
      }

LABEL_13:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100097D24(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        result = sub_100097D24((v12 > 1), v13 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[24 * v13];
      *(v14 + 4) = v7;
      *(v14 + 5) = v8;
      v14[48] = (v9 ^ 1) & 1;
    }

    while (v2 != v1);
  }

LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

char *sub_100097330()
{
  v0 = sub_10009D9F0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v22 = sub_10009DD50();
  v2 = objc_allocWithZone(NSRegularExpression);
  v3 = sub_100097C48(0xD00000000000002FLL, 0x80000001000A8310, 1);
  v4 = sub_10009DDF0();
  v5 = sub_10009DD50();
  v6 = [v3 matchesInString:v5 options:1 range:{0, v4}];

  sub_1000982C4();
  v7 = sub_10009DEA0();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_14:

    return _swiftEmptyArrayStorage;
  }

  v8 = sub_10009E260();
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = sub_100090B58(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = sub_10009E1F0();
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 range];
      v15 = [v22 substringWithRange:{v13, v14}];
      v16 = sub_10009DD90();
      v18 = v17;

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_100090B58((v19 > 1), v20 + 1, 1);
      }

      ++v10;
      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
    }

    while (v8 != v10);

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_100097790(void **a1, char a2, id a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10009D9F0();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v24 = *a1;
  if (a2)
  {
    v25 = [v24 URL];
    if (v25)
    {
      v26 = v25;
      sub_10009D820();

      v27 = sub_10009D860();
      (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
    }

    else
    {
      v27 = sub_10009D860();
      (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
    }

    sub_100017C10(v21, v23);
    sub_10009D860();
    v37 = *(v27 - 8);
    if ((*(v37 + 48))(v23, 1, v27) == 1)
    {
      sub_10000AF84(v23);
      LOBYTE(v23) = 0;
    }

    else
    {
      v38 = sub_10009D850();
      v40 = v39;
      (*(v37 + 8))(v23, v27);
      if (v40)
      {
        if (v38 == 0x6F746C69616DLL && v40 == 0xE600000000000000)
        {

          LOBYTE(v23) = 1;
        }

        else
        {
          LOBYTE(v23) = sub_10009E2E0();
        }
      }

      else
      {
        LOBYTE(v23) = 0;
      }
    }

    sub_10009D9D0();
    v42 = sub_10009D9E0();
    v43 = sub_10009DFF0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 67109120;
      *(v44 + 4) = v23 & 1;
      _os_log_impl(&_mh_execute_header, v42, v43, "isValid(address...) is link, valid email: %{BOOL}d", v44, 8u);
    }

    (*(v46 + 8))(v16, v47);
  }

  else
  {
    LODWORD(v23) = [v24 range] == a3 && v28 == a4;
    sub_10009D9D0();
    v30 = sub_10009D9E0();
    v31 = sub_10009DFF0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 136315394;
      v48 = a5;
      type metadata accessor for CheckingType(0);
      v34 = sub_10009DDA0();
      v36 = sub_1000307A4(v34, v35, &v49);

      *(v32 + 4) = v36;
      *(v32 + 12) = 1024;
      *(v32 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v30, v31, "isValid(address...) is %s, valid: %{BOOL}d", v32, 0x12u);
      sub_10000670C(v33);
    }

    (*(v46 + 8))(v14, v47);
  }

  return v23 & 1;
}

id sub_100097C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10009DD50();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10009D7B0();

    swift_willThrow();
  }

  return v6;
}

char *sub_100097D24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000CB868, &qword_1000A3998);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100097E40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000CB7C8, &qword_1000A2A18);
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

uint64_t sub_100097F4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10009DE30();
  v40 = 0;
  v7 = [objc_allocWithZone(NSDataDetector) initWithTypes:a3 error:&v40];
  if (v7)
  {
    v8 = v7;
    v9 = v40;
    v10 = sub_10009DD50();
    v36 = v8;
    v39 = v6;
    v11 = [v8 matchesInString:v10 options:0 range:{0, v6}];

    sub_1000982C4();
    v12 = sub_10009DEA0();

    v40 = _swiftEmptyArrayStorage;
    if (v12 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009E260())
    {
      v35 = a3;
      a3 = 0;
      v14 = v12 & 0xC000000000000001;
      v15 = v12 & 0xFFFFFFFFFFFFFF8;
      p_weak_ivar_lyt = &OptionsModel.weak_ivar_lyt;
      v37 = v12 & 0xC000000000000001;
      v38 = v12 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v14)
        {
          v17 = sub_10009E1F0();
        }

        else
        {
          if (a3 >= *(v15 + 16))
          {
            goto LABEL_16;
          }

          v17 = *(v12 + 8 * a3 + 32);
        }

        v18 = v17;
        v19 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        [v17 p_weak_ivar_lyt[239]];
        sub_10009DFA0();
        if (v20)
        {
        }

        else
        {
          sub_10009E210();
          v21 = p_weak_ivar_lyt;
          v22 = v12;
          v23 = a1;
          v24 = a2;
          v25 = v40[2];
          sub_10009E230();
          a2 = v24;
          a1 = v23;
          v12 = v22;
          p_weak_ivar_lyt = v21;
          sub_10009E240();
          sub_10009E220();
          v14 = v37;
          v15 = v38;
        }

        ++a3;
        if (v19 == i)
        {
          v26 = v40;
          a3 = v35;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v26 = _swiftEmptyArrayStorage;
LABEL_19:

    if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
    {
      goto LABEL_34;
    }

    for (j = *(v26 + 16); j; j = sub_10009E260())
    {
      v28 = 0;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = sub_10009E1F0();
        }

        else
        {
          if (v28 >= *(v26 + 16))
          {
            goto LABEL_33;
          }

          v29 = *(v26 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v40 = v29;
        v32 = sub_100097790(&v40, a3 == 32, 0, v39, a3);

        if (v32)
        {

          return 1;
        }

        ++v28;
        if (v31 == j)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_35:

    return 0;
  }

  else
  {
    v34 = v40;
    sub_10009D7B0();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000982C4()
{
  result = qword_1000CB860;
  if (!qword_1000CB860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CB860);
  }

  return result;
}

uint64_t sub_100098310()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

void sub_1000983D8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10009D9F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  if (!a1)
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = a1;
  v14 = a1;

  sub_10009DB00();
  v15 = (v3 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_accountID);
  if (*(v3 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_accountID + 8))
  {
    goto LABEL_12;
  }

  v40 = v6;
  v41 = v7;
  v42 = v14;
  v16 = [v42 containerIdentifier];
  v17 = sub_10009DD90();
  v19 = v18;

  sub_10009DD90();
  v20 = sub_10009DDB0();
  v22 = v21;

  if (v17 == v20 && v19 == v22)
  {

    goto LABEL_7;
  }

  v23 = sub_10009E2E0();

  if (v23)
  {
LABEL_7:
    if (swift_weakLoadStrong())
    {
      v24 = sub_1000994BC();
      v26 = v25;

      v27 = v41;
      if (v26)
      {
        v28 = v15[1];
        *v15 = v24;
        v15[1] = v26;

        sub_10009D9D0();
        v29 = sub_10009D9E0();
        v30 = sub_10009DFF0();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "found accountID for URL", v31, 2u);
        }

        (*(v27 + 8))(v13, v40);
LABEL_12:
        if (!a2)
        {
          return;
        }

        goto LABEL_13;
      }

      if (a2)
      {

LABEL_13:
        swift_getKeyPath();
        swift_getKeyPath();
        v43 = a2;
        v32 = a2;

        sub_10009DB00();
        return;
      }

      if (swift_weakLoadStrong())
      {

        v33 = sub_100018054();
        v35 = v40;
        if (v34)
        {
          v36 = v15[1];
          *v15 = v33;
          v15[1] = v34;

          sub_10009D9D0();
          v37 = sub_10009D9E0();
          v38 = sub_10009DFF0();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "found accountID for an EDS account", v39, 2u);
          }

          (*(v27 + 8))(v11, v35);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a2)
  {
    goto LABEL_13;
  }
}

void sub_1000987EC()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v12 = v55;
  if (v55)
  {
    v13 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:v55];
    swift_getKeyPath();
    swift_getKeyPath();
    v55 = v13;

    v14 = v13;
    sub_10009DB00();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v15 = v55;
    if (v55)
    {
      if (*(v3 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_accountID + 8))
      {
        v53 = v5;
        v16 = *(v3 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_accountID);
        v17 = objc_allocWithZone(CKContainerOptions);

        v18 = [v17 init];
        v54 = v15;
        v19 = v18;
        v20 = objc_allocWithZone(CKAccountOverrideInfo);
        v21 = sub_10009DD50();

        v22 = v20;
        v23 = v19;
        v24 = [v22 initWithAccountID:v21];

        [v23 setAccountOverrideInfo:v24];
        v25 = objc_allocWithZone(CKContainer);
        v26 = [v25 initWithContainerID:v54 options:v23];
        swift_getKeyPath();
        swift_getKeyPath();
        v55 = v26;

        sub_10009DB00();
        sub_10009D9D0();

        v27 = sub_10009D9E0();
        v28 = sub_10009DFF0();

        if (os_log_type_enabled(v27, v28))
        {
          v48 = v24;
          v49 = v2;
          v50 = v28;
          v51 = v27;
          v52 = v23;
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v57 = v30;
          v31 = v29;
          *v29 = 136315138;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10009DAF0();

          v32 = v55;
          v5 = v53;
          if (v55 && (v33 = [v55 options], v32, v32 = objc_msgSend(v33, "accountOverrideInfo"), v33, v32))
          {
            v34 = [v32 accountID];

            if (v34)
            {
              v32 = sub_10009DD90();
              v36 = v35;
            }

            else
            {
              v32 = 0;
              v36 = 0;
            }

            v5 = v53;
          }

          else
          {
            v36 = 0;
          }

          v55 = v32;
          v56 = v36;
          sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
          v39 = sub_10009DDA0();
          v41 = sub_1000307A4(v39, v40, &v57);

          *(v31 + 1) = v41;
          v42 = v51;
          _os_log_impl(&_mh_execute_header, v51, v50, "replaceContainer container.options.accountOverrideInfo.accountID: %s", v31, 0xCu);
          sub_10000670C(v30);

          (*(v5 + 8))(v11, v4);
        }

        else
        {

          v5 = v53;
          (*(v53 + 8))(v11, v4);
        }
      }

      else
      {
        v37 = [objc_allocWithZone(CKContainer) initWithContainerID:v55];
        swift_getKeyPath();
        swift_getKeyPath();
        v55 = v37;

        v38 = v37;
        sub_10009DB00();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if (v55)
    {
    }

    else
    {
      sub_10009D9D0();
      v43 = sub_10009D9E0();
      v44 = sub_10009DFD0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "replaceContainer throwing as it didn't build a container", v45, 2u);
      }

      (*(v5 + 8))(v9, v4);
      sub_100005B1C();
      swift_allocError();
      *v46 = 0xD000000000000012;
      *(v46 + 8) = 0x80000001000A8460;
      *(v46 + 16) = xmmword_1000A39A0;
      *(v46 + 32) = 0x80000001000A51A0;
      *(v46 + 40) = 10;
      swift_willThrow();
    }
  }
}

uint64_t sub_100098F14(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = *(result + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = v1;

      sub_10009DAF0();

      LODWORD(v4) = v27;
      p_weak_ivar_lyt = &OptionsModel.weak_ivar_lyt;
      if ([v3 publicPermission] == 1)
      {
        v6 = &OptionsModel.weak_ivar_lyt;
        v7 = [v3 participants];
        sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
        v8 = sub_10009DEA0();

        if (v8 >> 62)
        {
          goto LABEL_47;
        }

        for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10009E260())
        {

          if (!i)
          {
            break;
          }

          v10 = [v3 v6[265]];
          v11 = sub_10009DEA0();

          v24 = v4;
          if (v11 >> 62)
          {
            v12 = sub_10009E260();
          }

          else
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v13 = &OptionsModel.weak_ivar_lyt;
          v25 = v3;
          if (v12)
          {
            v3 = 0;
            v4 = v11 & 0xC000000000000001;
            p_weak_ivar_lyt = v11 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v4)
              {
                v14 = sub_10009E1F0();
              }

              else
              {
                if (v3 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_44;
                }

                v14 = *(v11 + 8 * v3 + 32);
              }

              v6 = v14;
              v15 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if (-[SEL role](v14, "role") == 1 || [v6 v13[203]] != 2)
              {
              }

              else
              {
                sub_10009E210();
                v16 = _swiftEmptyArrayStorage[2];
                sub_10009E230();
                v13 = (&OptionsModel + 56);
                sub_10009E240();
                sub_10009E220();
              }

              ++v3;
              if (v15 == v12)
              {
                v3 = v25;
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
          }

          else
          {
LABEL_26:

            if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
            {
              v26 = sub_10009E260();
            }

            else
            {
              v26 = _swiftEmptyArrayStorage[2];
            }

            v18 = [v3 participants];
            v4 = sub_10009DEA0();

            if (v4 >> 62)
            {
              v19 = sub_10009E260();
              if (!v19)
              {
LABEL_50:

                if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
                {
                  v23 = sub_10009E260();
                }

                else
                {
                  v23 = _swiftEmptyArrayStorage[2];
                }

                if (v26 <= 0)
                {

                  if (v23 > 0)
                  {
                    return 1;
                  }

                  else
                  {
                    return v24;
                  }
                }

                else if (v23 < 1)
                {

                  return 2;
                }

                else
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_10009DAF0();

                  if (_swiftEmptyArrayStorage == 3)
                  {
                    return 2;
                  }

                  else
                  {
                    return 3;
                  }
                }
              }
            }

            else
            {
              v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v19)
              {
                goto LABEL_50;
              }
            }

            v3 = 0;
            p_weak_ivar_lyt = v4 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v20 = sub_10009E1F0();
              }

              else
              {
                if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v20 = *(v4 + 8 * v3 + 32);
              }

              v6 = v20;
              v21 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if (-[SEL role](v20, "role") == 1 || [v6 v13[203]] != 3)
              {
              }

              else
              {
                sub_10009E210();
                v22 = _swiftEmptyArrayStorage[2];
                sub_10009E230();
                v13 = (&OptionsModel + 56);
                sub_10009E240();
                sub_10009E220();
              }

              ++v3;
              if (v21 == v19)
              {
                v3 = v25;
                goto LABEL_50;
              }
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          ;
        }
      }

      v17 = [v3 *(p_weak_ivar_lyt + 2128)];

      if (v17 == 2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100099448()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_1000994BC()
{
  v31 = sub_10009D9F0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v31);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v30 - v5;
  v7 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - v9;
  v11 = sub_10009D860();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100008728(v10, &qword_1000CA250, &qword_10009FDF8);
    sub_10009D9D0();
    v16 = sub_10009D9E0();
    v17 = sub_10009DFD0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "can't get the user iCloud account ID without a document/folder sharing URL--may get here from SPI with no fileURL, will try userICloudEDSAccountID then fall back on signed-in account w. accountID == nil", v18, 2u);
    }

    (*(v0 + 8))(v4, v31);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_10009D800(v19);
    v21 = v20;
    v22 = [objc_opt_self() accountDescriptorForURL:v20 mustBeLoggedIn:1];

    if (v22)
    {
      v23 = [v22 accountIdentifier];
      if (v23)
      {
        v24 = v23;
        v25 = sub_10009DD90();

        (*(v12 + 8))(v15, v11);
        return v25;
      }
    }

    sub_10009D9D0();
    v27 = sub_10009D9E0();
    v28 = sub_10009DFD0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "accountID must be non-nil for document/folder sharing", v29, 2u);
    }

    (*(v0 + 8))(v6, v31);
    (*(v12 + 8))(v15, v11);
  }

  return 0;
}

uint64_t sub_1000998E0()
{
  v1 = v0;
  v2 = sub_100003714(&qword_1000CBA10, &qword_1000A3CB0);
  v126 = *(v2 - 8);
  v127 = v2;
  v3 = *(v126 + 64);
  v4 = __chkstk_darwin(v2);
  v124 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v125 = &v87 - v6;
  v120 = sub_100003714(&qword_1000CA940, &qword_1000A0C60);
  v117 = *(v120 - 8);
  v7 = *(v117 + 64);
  __chkstk_darwin(v120);
  v114 = &v87 - v8;
  v121 = sub_100003714(&qword_1000CA948, &qword_1000A0C68);
  v9 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v115 = &v87 - v10;
  v110 = sub_100003714(&qword_1000CBA18, &qword_1000A3CB8);
  v109 = *(v110 - 8);
  v11 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = &v87 - v12;
  v112 = sub_100003714(&qword_1000CBA20, &qword_1000A3CC0);
  v13 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v111 = &v87 - v14;
  v119 = sub_100003714(&qword_1000CBA28, &qword_1000A3CC8);
  v116 = *(v119 - 8);
  v15 = *(v116 + 64);
  __chkstk_darwin(v119);
  v113 = &v87 - v16;
  v17 = sub_100003714(&qword_1000CBA30, &qword_1000A3CD0);
  v122 = *(v17 - 8);
  v123 = v17;
  v18 = *(v122 + 64);
  __chkstk_darwin(v17);
  v118 = &v87 - v19;
  v107 = sub_100003714(&qword_1000CA9F0, &qword_1000A0D10);
  v106 = *(v107 - 8);
  v20 = *(v106 + 64);
  __chkstk_darwin(v107);
  v105 = &v87 - v21;
  v130 = sub_100003714(&qword_1000CBA08, &qword_1000A3A20);
  v104 = *(v130 - 8);
  v22 = *(v104 + 64);
  __chkstk_darwin(v130);
  v103 = &v87 - v23;
  v102 = sub_100003714(&qword_1000CBA00, &qword_1000A3A18);
  v101 = *(v102 - 8);
  v24 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v87 - v25;
  v129 = sub_100003714(&qword_1000CACC0, &qword_1000A0EA8);
  v99 = *(v129 - 8);
  v26 = *(v99 + 64);
  __chkstk_darwin(v129);
  v98 = &v87 - v27;
  v128 = sub_100003714(&qword_1000CB9F8, &qword_1000A3A10);
  v95 = *(v128 - 8);
  v28 = *(v95 + 64);
  __chkstk_darwin(v128);
  v94 = &v87 - v29;
  v93 = sub_100003714(&qword_1000CABC0, &qword_1000A0E60);
  v92 = *(v93 - 8);
  v30 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v87 - v31;
  v90 = sub_100003714(&qword_1000CAAA0, &qword_1000A0DB0);
  v89 = *(v90 - 8);
  v32 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v87 - v33;
  v87 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v34 = *(*(v87 - 8) + 64);
  v35 = __chkstk_darwin(v87);
  v37 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v87 - v38;
  v40 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = &v87 - v43;
  v45 = sub_100003714(&qword_1000CABA8, &qword_1000A0E58);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v87 - v48;
  v50 = v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckShare;
  v131 = 0;
  sub_100003714(&qword_1000CB150, &qword_1000A1920);
  sub_10009DAC0();
  v51 = *(v46 + 32);
  v96 = v50;
  v97 = v45;
  v51(v50, v49, v45);
  v52 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__currentUserIsOwner;
  LOBYTE(v131) = 1;
  sub_10009DAC0();
  (*(v41 + 32))(v1 + v52, v44, v40);
  v53 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__sharingURL;
  v54 = sub_10009D860();
  (*(*(v54 - 8) + 56))(v39, 1, 1, v54);
  sub_10003F3DC(v39, v37);
  v55 = v88;
  sub_10009DAC0();
  sub_100008728(v39, &qword_1000CA250, &qword_10009FDF8);
  (*(v89 + 32))(v1 + v53, v55, v90);
  v56 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckShareParticipantsCoOwnersState;
  v131 = &off_1000C1960;
  v57 = v91;
  sub_10009DAC0();
  (*(v92 + 32))(v1 + v56, v57, v93);
  v58 = v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__containerID;
  v131 = 0;
  sub_100003714(&qword_1000CB900, ",s");
  v59 = v94;
  sub_10009DAC0();
  (*(v95 + 32))(v58, v59, v128);
  v60 = v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__containerSetupInfo;
  v131 = 0;
  sub_100003714(&qword_1000CACD8, &qword_1000A0EB0);
  v61 = v98;
  sub_10009DAC0();
  (*(v99 + 32))(v60, v61, v129);
  v62 = (v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_accountID);
  *v62 = 0;
  v62[1] = 0;
  v63 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__container;
  v131 = 0;
  sub_100003714(&qword_1000CB918, &qword_1000A39E8);
  v64 = v100;
  sub_10009DAC0();
  v65 = v1 + v63;
  v66 = v1;
  (*(v101 + 32))(v65, v64, v102);
  v67 = v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckSystemSharingUIObserver;
  v131 = 0;
  v68 = sub_100003714(&unk_1000CB928, &qword_1000A39F0);
  v69 = v103;
  v102 = v68;
  sub_10009DAC0();
  (*(v104 + 32))(v67, v69, v130);
  swift_weakInit();
  if (_swiftEmptyArrayStorage >> 62 && sub_10009E260())
  {
    v70 = sub_1000327CC(_swiftEmptyArrayStorage);
  }

  else
  {
    v70 = &_swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_store) = v70;
  swift_beginAccess();
  v71 = v105;
  sub_10009DAD0();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_100039B10(&qword_1000CABB0, &qword_1000CA9F0, &qword_1000A0D10);

  v72 = v107;
  sub_10009DB70();

  (*(v106 + 8))(v71, v72);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v73 = v108;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CBA38, &qword_1000CBA18, &qword_1000A3CB8);
  sub_10009CE40();
  v74 = v110;
  sub_10009DB60();
  (*(v109 + 8))(v73, v74);
  swift_beginAccess();
  v75 = v114;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CACC8, &qword_1000CA940, &qword_1000A0C60);
  sub_100039A04();
  v76 = v120;
  sub_10009DB60();
  (*(v117 + 8))(v75, v76);
  sub_100039B10(&qword_1000CBA50, &qword_1000CBA20, &qword_1000A3CC0);
  sub_100039B10(&qword_1000CACF8, &qword_1000CA948, &qword_1000A0C68);
  v77 = v113;
  sub_10009DA00();
  v78 = swift_allocObject();
  swift_weakInit();

  v79 = swift_allocObject();
  *(v79 + 16) = sub_10009CF2C;
  *(v79 + 24) = v78;
  sub_100039B10(&qword_1000CBA58, &qword_1000CBA28, &qword_1000A3CC8);
  v81 = v118;
  v80 = v119;
  sub_10009DB30();

  (*(v116 + 8))(v77, v80);
  swift_beginAccess();
  v82 = v125;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CBA60, &qword_1000CBA30, &qword_1000A3CD0);
  v83 = v123;
  sub_10009DB80();
  (*(v122 + 8))(v81, v83);
  v85 = v126;
  v84 = v127;
  (*(v126 + 16))(v124, v82, v127);
  swift_beginAccess();
  sub_10009DAE0();
  swift_endAccess();
  (*(v85 + 8))(v82, v84);
  return v66;
}

void sub_10009AA68(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (!v1)
    {

      return;
    }

    v2 = v1;
    v3 = [v2 currentUserParticipant];
    v4 = [v2 owner];
    v5 = v4;
    if (v3)
    {
      if (v4)
      {
        sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
        sub_10009E110();
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_10;
      }

      v3 = v4;
    }

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DB00();
  }
}

id sub_10009ABA8(id a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      v4 = &selRef_initWithContainerSetupInfo_;
      a1 = a2;
    }

    else
    {
      if (!a1)
      {
        goto LABEL_9;
      }

      v4 = &selRef_initWithContainerID_;
    }

    a1 = [objc_allocWithZone(CKContainer) *v4];
    if (a1)
    {
      v5 = objc_allocWithZone(CKSystemSharingUIObserver);
      v6 = a1;
      a1 = [v5 initWithContainer:v6];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = a2;
      v9 = a2;

      sub_10009E0A0();

      swift_allocObject();
      swift_weakInit();

      sub_10009E0B0();

      return a1;
    }

LABEL_9:

    return a1;
  }

  return 0;
}

uint64_t sub_10009AD80(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v8 = sub_10009D9F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v30 - v15;
  if (a3)
  {
    sub_10009D9D0();
    swift_errorRetain();
    v17 = sub_10009D9E0();
    v18 = sub_10009DFD0();
    sub_10009D110(a2, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315138;
      v30[3] = a2;
      swift_errorRetain();
      sub_100003714(&qword_1000CB840, &qword_10009FDA0);
      v21 = sub_10009DDA0();
      v23 = sub_1000307A4(v21, v22, v30);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "ckShareModel systemSharingUIDidSaveShareBlock error: %s", v19, 0xCu);
      sub_10000670C(v20);
    }

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v25 = sub_10009DF40();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    v26 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10009DF10();

    sub_10009D11C(a2, 0);
    v27 = a5;
    v28 = sub_10009DF00();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = &protocol witness table for MainActor;
    v29[4] = v26;
    v29[5] = a2;
    v29[6] = a5;

    sub_100019B10(0, 0, v16, &unk_1000A3CF0, v29);
  }
}

uint64_t sub_10009B0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_10009D9F0();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v10 = sub_10009D860();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = sub_10009DF10();
  v6[21] = sub_10009DF00();
  v14 = sub_10009DED0();
  v6[22] = v14;
  v6[23] = v13;

  return _swift_task_switch(sub_10009B250, v14, v13);
}

uint64_t sub_10009B250()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (!Strong)
  {
    v8 = *(v0 + 168);
LABEL_20:

    goto LABEL_21;
  }

  v3 = swift_weakLoadStrong();
  *(v0 + 200) = v3;
  if (!v3)
  {
    v9 = *(v0 + 168);
LABEL_19:

    goto LABEL_20;
  }

  v4 = [*(v0 + 72) recordID];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v5 = *(v0 + 40);
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v6 = [*(v0 + 40) recordID];

  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    v11 = *(v0 + 168);

LABEL_21:
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    v25 = *(v0 + 112);
    v24 = *(v0 + 120);
    v26 = *(v0 + 104);

    v27 = *(v0 + 8);

    return v27();
  }

  if (!v6)
  {
LABEL_11:
    v10 = *(v0 + 168);

    goto LABEL_21;
  }

  sub_1000037C4(0, &qword_1000CBA68, CKRecordID_ptr);
  v7 = sub_10009E110();

  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v12 = [*(v0 + 72) URL];
  if (!v12)
  {
LABEL_18:
    v21 = *(v0 + 168);

    goto LABEL_19;
  }

  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 128);
  v18 = v12;
  sub_10009D820();

  (*(v16 + 32))(v14, v15, v17);
  *(v0 + 208) = sub_10009DF00();
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  v19[1] = sub_10009B540;

  return sub_1000250A0();
}

uint64_t sub_10009B540()
{
  v2 = v0;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 224) = v2;

  v7 = sub_10009DED0();
  if (v2)
  {
    v8 = sub_10009B840;
  }

  else
  {
    v8 = sub_10009B69C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10009B69C()
{
  v1 = v0[26];

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_10009B700, v2, v3);
}

uint64_t sub_10009B700()
{
  v1 = v0[15];
  sub_10009D9D0();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ckShareModel calling notifyClientShareDidChange()", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[11];
  v7 = v0[12];

  v8 = *(v7 + 8);
  v0[29] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_10009BB28;
  v10 = v0[25];
  v11 = v0[19];
  v12 = v0[10];

  return sub_100025D14(v11, v12);
}

uint64_t sub_10009B840()
{
  v1 = v0[26];

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_10009B8A4, v2, v3);
}

uint64_t sub_10009B8A4()
{
  v37 = v0;
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[14];

  sub_10009D9D0();
  swift_errorRetain();
  v4 = sub_10009D9E0();
  v5 = sub_10009DFD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v30 = v0[25];
    v31 = v0[24];
    v7 = v0[17];
    v34 = v0[16];
    v35 = v0[19];
    v8 = v0[12];
    v32 = v0[11];
    v33 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136315138;
    v0[6] = v6;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v11 = sub_10009DDA0();
    v13 = sub_1000307A4(v11, v12, &v36);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "ckShareModel systemSharingUIDidSaveShareBlock failed to refetch share: %s", v9, 0xCu);
    sub_10000670C(v10);

    (*(v8 + 8))(v33, v32);
    (*(v7 + 8))(v35, v34);
  }

  else
  {
    v14 = v0[28];
    v16 = v0[24];
    v15 = v0[25];
    v17 = v0[19];
    v18 = v0[16];
    v19 = v0[17];
    v20 = v0[14];
    v21 = v0[11];
    v22 = v0[12];

    (*(v22 + 8))(v20, v21);
    (*(v19 + 8))(v17, v18);
  }

  v24 = v0[18];
  v23 = v0[19];
  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[13];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10009BB28()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_10009BD38;
  }

  else
  {
    v7 = sub_10009BC64;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10009BC64()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];

  (*(v6 + 8))(v4, v5);
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10009BD38()
{
  v39 = v0;
  v1 = v0[31];
  v2 = v0[21];
  v3 = v0[13];

  sub_10009D9D0();
  swift_errorRetain();
  v4 = sub_10009D9E0();
  v5 = sub_10009DFD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = v0[25];
    v36 = v0[19];
    v8 = v0[17];
    v34 = v0[29];
    v35 = v0[16];
    v30 = v0[24];
    v31 = v0[12];
    v32 = v0[11];
    v33 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 136315138;
    v0[7] = v6;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v11 = sub_10009DDA0();
    v13 = sub_1000307A4(v11, v12, &v38);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "ckShareModel systemSharingUIDidSaveShareBlock failed to fetch share metadata: %s", v9, 0xCu);
    sub_10000670C(v10);

    v34(v33, v32);
    (*(v8 + 8))(v36, v35);
  }

  else
  {
    v14 = v0[31];
    v15 = v0[29];
    v17 = v0[24];
    v16 = v0[25];
    v37 = v0[19];
    v18 = v0[16];
    v19 = v0[17];
    v20 = v0[12];
    v21 = v0[13];
    v22 = v0[11];

    v15(v21, v22);
    (*(v19 + 8))(v37, v18);
  }

  v24 = v0[18];
  v23 = v0[19];
  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[13];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10009BFD0(void *a1, uint64_t a2, char a3)
{
  v6 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v37 - v8;
  v10 = sub_10009D9F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v37 - v16;
  if (a3)
  {
    sub_10009D9D0();
    swift_errorRetain();
    v18 = sub_10009D9E0();
    v19 = sub_10009DFD0();
    sub_10009CFFC(a2, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136315138;
      v37[3] = a2;
      swift_errorRetain();
      sub_100003714(&qword_1000CB840, &qword_10009FDA0);
      v22 = sub_10009DDA0();
      v24 = sub_1000307A4(v22, v23, v37);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "ckShareModel systemSharingUIDidStopSharingBlock error: %s", v20, 0xCu);
      sub_10000670C(v21);
    }

    return (*(v11 + 8))(v15, v10);
  }

  else
  {
    sub_10009D9D0();
    v26 = a1;
    v27 = sub_10009D9E0();
    v28 = sub_10009DFF0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "ckShareModel systemSharingUIDidStopSharingBlock stopped sharing: %@", v29, 0xCu);
      sub_100008728(v30, &qword_1000CA8E0, &qword_10009FE08);
    }

    (*(v11 + 8))(v17, v10);
    v32 = sub_10009DF40();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    v33 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10009DF10();
    v34 = v26;

    v35 = sub_10009DF00();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = &protocol witness table for MainActor;
    v36[4] = v33;
    v36[5] = v34;

    sub_100019B10(0, 0, v9, &unk_1000A3CE0, v36);
  }
}

uint64_t sub_10009C420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10009D9F0();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_10009DF10();
  v5[11] = sub_10009DF00();
  v10 = sub_10009DED0();

  return _swift_task_switch(sub_10009C514, v10, v9);
}

uint64_t sub_10009C514()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v3 = *(v0 + 40);
      if (v3)
      {
        v4 = [*(v0 + 40) recordID];

        if (v4)
        {
          v5 = *(v0 + 56);
          sub_1000037C4(0, &qword_1000CBA68, CKRecordID_ptr);
          v6 = v5;
          v7 = sub_10009E110();

          if (v7)
          {
            v8 = *(v0 + 80);
            sub_10009D9D0();
            v9 = sub_10009D9E0();
            v10 = sub_10009DFF0();
            v11 = os_log_type_enabled(v9, v10);
            v13 = *(v0 + 72);
            v12 = *(v0 + 80);
            v14 = *(v0 + 64);
            if (v11)
            {
              v15 = swift_slowAlloc();
              *v15 = 0;
              _os_log_impl(&_mh_execute_header, v9, v10, "ckShareModel systemSharingUIDidStopSharingBlock dismissing", v15, 2u);
            }

            else
            {
            }

            (*(v13 + 8))(v12, v14);
            goto LABEL_10;
          }
        }
      }
    }
  }

LABEL_10:
  v16 = *(v0 + 80);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10009C758()
{
  v1 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckShare;
  v2 = sub_100003714(&qword_1000CABA8, &qword_1000A0E58);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__currentUserIsOwner;
  v4 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__sharingURL;
  v6 = sub_100003714(&qword_1000CAAA0, &qword_1000A0DB0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckShareParticipantsCoOwnersState;
  v8 = sub_100003714(&qword_1000CABC0, &qword_1000A0E60);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__containerID;
  v10 = sub_100003714(&qword_1000CB9F8, &qword_1000A3A10);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__containerSetupInfo;
  v12 = sub_100003714(&qword_1000CACC0, &qword_1000A0EA8);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_accountID + 8);

  v14 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__container;
  v15 = sub_100003714(&qword_1000CBA00, &qword_1000A3A18);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckSystemSharingUIObserver;
  v17 = sub_100003714(&qword_1000CBA08, &qword_1000A3A20);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  swift_weakDestroy();
  v18 = *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_store);

  return v0;
}

uint64_t sub_10009CA0C()
{
  sub_10009C758();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CKShareModel()
{
  result = qword_1000CB8E0;
  if (!qword_1000CB8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009CAB8()
{
  sub_100032004(319, &qword_1000CB8F0, &qword_1000CB150, &qword_1000A1920);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_100031F60(319, &qword_1000CA610);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_100032004(319, &qword_1000CA698, &qword_1000CA250, &qword_10009FDF8);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_100031F60(319, &qword_1000CB660);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_100032004(319, &qword_1000CB8F8, &qword_1000CB900, ",s");
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_100032004(319, &qword_1000CB908, &qword_1000CACD8, &qword_1000A0EB0);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_100032004(319, &qword_1000CB910, &qword_1000CB918, &qword_1000A39E8);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_100032004(319, &qword_1000CB920, &unk_1000CB928, &qword_1000A39F0);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
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

uint64_t sub_10009CE00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10009CE40()
{
  result = qword_1000CBA40;
  if (!qword_1000CBA40)
  {
    sub_10000594C(&qword_1000CB900, ",s");
    sub_10009CEDC(&qword_1000CBA48, &qword_1000CA6D8, CKContainerID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBA40);
  }

  return result;
}

uint64_t sub_10009CEDC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10009CF34()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009CF6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10009CFA4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009CFFC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10009D008()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009D050(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000093DC;

  return sub_10009C420(a1, v4, v5, v7, v6);
}

void sub_10009D110(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_10009D11C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10009D128()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009D178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000841C;

  return sub_10009B0D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10009D240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Swift::String a9)
{
  v9 = sub_10009D9F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = objc_allocWithZone(ISIcon);
  v18 = sub_10009DD50();
  v19 = [v17 initWithType:v18];

  v20 = [objc_opt_self() mainScreen];
  [v20 scale];
  v22 = v21;

  v23 = [objc_allocWithZone(ISImageDescriptor) initWithSize:128.0 scale:{128.0, v22}];
  v24 = [v19 imageForDescriptor:v23];
  if (!v24)
  {

    return 0;
  }

  v25 = v24;
  v26 = v25;
  if ([v25 placeholder])
  {
    v27 = [v19 prepareImageForDescriptor:v23];
    v28 = v25;
    if (v27)
    {
      v29 = v27;

      v28 = v29;
    }

    sub_10009D9D0();
    v26 = v28;
    v30 = sub_10009D9E0();
    v31 = sub_10009DFF0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v54 = v9;
      v33 = v32;
      *v32 = 67109120;
      *(v32 + 1) = [v26 placeholder];

      _os_log_impl(&_mh_execute_header, v30, v31, "iOS appIcon placeholder;  did prepareImage(forDescriptor:), is still placeHolder: %{BOOL}d", v33, 8u);
      v9 = v54;
    }

    else
    {

      v30 = v26;
    }

    (*(v10 + 8))(v16, v9);
  }

  sub_10009D9D0();
  v35 = v26;
  v36 = sub_10009D9E0();
  v37 = sub_10009DFF0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v54 = v14;
    v40 = v25;
    v41 = v23;
    v42 = v19;
    v43 = v10;
    v44 = v9;
    v45 = v39;
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v46 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "iOS appIcon image: %@", v38, 0xCu);
    sub_10000C2B0(v45);
    v9 = v44;
    v10 = v43;
    v19 = v42;
    v23 = v41;
    v25 = v40;
    v14 = v54;
  }

  (*(v10 + 8))(v14, v9);
  v47._countAndFlagsBits = [v35 CGImage];
  if (v47._countAndFlagsBits)
  {
    countAndFlagsBits = v47._countAndFlagsBits;
    v34 = [objc_allocWithZone(UIImage) initWithCGImage:v47._countAndFlagsBits];

    return v34;
  }

  __break(1u);
  return sub_10009D680(v47, v48, v49, v50, a9);
}