uint64_t sub_10006BDA0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 216) = v0;

  sub_100010F24(v4, &qword_100116260, &qword_1000CD940);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);
  if (v0)
  {
    v8 = sub_10006D734;
  }

  else
  {
    v8 = sub_10006BF08;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10006BF08()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 63) = 4;

  sub_1000C60A4();
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 96);

  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 40) = -1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006BFE4()
{
  v85 = v0;
  v1 = v0;
  v2 = *(v0 + 184);
  *(v0 + 72) = v2;
  v3 = v0 + 72;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = *(v0 + 144);

    v18 = *(v0 + 72);

    v19 = *(v0 + 128);
    sub_1000C5F54();
    swift_errorRetain();
    v20 = sub_1000C5F64();
    v21 = sub_1000C6FD4();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 120);
    v24 = *(v0 + 128);
    v25 = *(v0 + 112);
    if (v22)
    {
      v83 = v24;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v84 = v27;
      *v26 = 136315138;
      *(v3 + 8) = v2;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v28 = sub_1000C6D94();
      v30 = sub_100071844(v28, v29, &v84);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "iOSPrepareToShare error: %s", v26, 0xCu);
      sub_100010544(v27);

      (*(v23 + 8))(v83, v25);
    }

    else
    {

      (*(v23 + 8))(v24, v25);
    }

    v6 = 0xD000000000000013;
    v5 = 0x80000001000DA9F0;
    v31 = 0x80000001000DAA10;

    v7 = 0;
    v32 = 0xD000000000000017;
    LOBYTE(v8) = 11;
    goto LABEL_44;
  }

  v4 = *(v0 + 104);

  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *(v0 + 32);
  v81 = *(v0 + 40);
  v82 = *(v0 + 48);
  v8 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 60) = 5;

  result = sub_1000C60A4();
  if (v8 != 4)
  {
    if (v8 == 1)
    {
      result = v82;
      if (v7)
      {
        v10 = *(v0 + 168);

        v11 = v7;

        v12 = [v11 domain];
        v13 = sub_1000C6D84();
        v15 = v14;

        if (v13 == sub_1000C6D84() && v15 == v16)
        {
        }

        else
        {
          v42 = sub_1000C73A4();

          if ((v42 & 1) == 0)
          {

            v44 = v82;
LABEL_24:
            v47 = *(v1 + 144);

            LOBYTE(v8) = 1;
            sub_1000494BC(v6, v5, v7, v81, v44, 1u);
            v48 = *(v1 + 72);

            v32 = 0;
            v31 = 0;
            v6 = 0xD000000000000013;
            v5 = 0x80000001000DA9F0;
            goto LABEL_44;
          }
        }

        v43 = [v11 code];

        v44 = v82;
        if (v43 == 7)
        {
          sub_1000494BC(v6, v5, v7, v81, v82, 1u);

LABEL_28:

          goto LABEL_29;
        }

        goto LABEL_24;
      }

      __break(1u);
LABEL_63:
      __break(1u);
      return result;
    }

    v40 = *(v0 + 144);

    v41 = *(v0 + 72);

    v32 = v81;
    v31 = v82;
LABEL_44:
    v70 = *(v1 + 128);
    v69 = *(v1 + 136);
    v71 = *(v1 + 96);

    *v71 = v6;
    *(v71 + 8) = v5;
    *(v71 + 16) = v7;
    *(v71 + 24) = v32;
    *(v71 + 32) = v31;
    *(v71 + 40) = v8;
    v72 = *(v1 + 8);

    return v72();
  }

  if (!v7)
  {
    goto LABEL_63;
  }

  v33 = *(v0 + 168);

  v34 = v7;

  v35 = [v34 domain];
  v36 = sub_1000C6D84();
  v38 = v37;

  if (v36 == sub_1000C6D84() && v38 == v39)
  {
  }

  else
  {
    v45 = sub_1000C73A4();

    if ((v45 & 1) == 0)
    {

      v31 = v82;
      goto LABEL_26;
    }
  }

  v46 = [v34 code];

  v31 = v82;
  if (v46 != 7)
  {
LABEL_26:
    v49 = objc_opt_self();
    v50 = v34;
    v51 = sub_1000C5CD4();
    LOBYTE(v49) = [v49 shouldRetryShareSaveOnError:v51];
    sub_1000494BC(v6, v5, v7, v81, v31, 4u);

    if (v49)
    {

      goto LABEL_28;
    }

    v67 = *(v1 + 144);

    v68 = *(v1 + 72);

    LOBYTE(v8) = 4;
    v32 = v81;
    goto LABEL_44;
  }

  sub_1000494BC(v6, v5, v7, v81, v82, 4u);
LABEL_29:
  v52 = *(v1 + 72);

  v53 = *(v1 + 226);
  v54 = *(v1 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v55 = *(v1 + 61);
  if (v55 == 4)
  {
    v56 = v53;
  }

  else
  {
    v56 = v55 != 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v1 + 62) != 9)
  {
    goto LABEL_40;
  }

  v57 = *(*(v1 + 104) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v58 = *(v1 + 88);
  if (!v58)
  {
    goto LABEL_36;
  }

  if (!v56)
  {
LABEL_40:
    v62 = *(v1 + 136);
    v63 = *(v1 + 104);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v64 = swift_task_alloc();
    *(v1 + 208) = v64;
    *v64 = v1;
    v64[1] = sub_10006BDA0;
    v65 = *(v1 + 104);
    v66 = *(v1 + 136);

    return sub_100055638(v66);
  }

  v56 = 1;
LABEL_36:
  *(v1 + 226) = v56;
  v59 = *(v1 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v1 + 58) == 1)
  {
    v60 = swift_task_alloc();
    *(v1 + 176) = v60;
    *v60 = v1;
    v60[1] = sub_10006B328;
    v61 = *(v1 + 104);

    return sub_1000615A4();
  }

  else
  {
    v73 = *(v1 + 104);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 0;

    sub_1000C60A4();
    v74 = *(v73 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v75 = *(v1 + 64);
    if (v75)
    {
      v76 = *(*(v1 + 104) + 16);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (*(v1 + 224) == 1)
      {
        v77 = *(*(v1 + 104) + 16);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1000C6094();

        if (*(v1 + 225) > 1u)
        {
          if (*(v1 + 225) != 2)
          {
            return sub_1000C72E4();
          }

          v78 = 2;
        }

        else if (*(v1 + 225))
        {
          v78 = 3;
        }

        else
        {
          v78 = 1;
        }
      }

      else
      {
        v78 = 1;
      }

      [v75 setPublicPermission:v78];
    }

    v79 = swift_task_alloc();
    *(v1 + 192) = v79;
    *v79 = v1;
    v79[1] = sub_10006B710;
    v80 = *(v1 + 104);

    return sub_100067EF4();
  }
}

uint64_t sub_10006CB8C()
{
  v85 = v0;
  v1 = v0;
  v2 = *(v0 + 200);
  *(v0 + 72) = v2;
  v3 = v0 + 72;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = *(v0 + 144);

    v18 = *(v0 + 72);

    v19 = *(v0 + 128);
    sub_1000C5F54();
    swift_errorRetain();
    v20 = sub_1000C5F64();
    v21 = sub_1000C6FD4();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 120);
    v24 = *(v0 + 128);
    v25 = *(v0 + 112);
    if (v22)
    {
      v83 = v24;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v84 = v27;
      *v26 = 136315138;
      *(v3 + 8) = v2;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v28 = sub_1000C6D94();
      v30 = sub_100071844(v28, v29, &v84);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "iOSPrepareToShare error: %s", v26, 0xCu);
      sub_100010544(v27);

      (*(v23 + 8))(v83, v25);
    }

    else
    {

      (*(v23 + 8))(v24, v25);
    }

    v6 = 0xD000000000000013;
    v5 = 0x80000001000DA9F0;
    v31 = 0x80000001000DAA10;

    v7 = 0;
    v32 = 0xD000000000000017;
    LOBYTE(v8) = 11;
    goto LABEL_44;
  }

  v4 = *(v0 + 104);

  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *(v0 + 32);
  v81 = *(v0 + 40);
  v82 = *(v0 + 48);
  v8 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 60) = 5;

  result = sub_1000C60A4();
  if (v8 != 4)
  {
    if (v8 == 1)
    {
      result = v82;
      if (v7)
      {
        v10 = *(v0 + 168);

        v11 = v7;

        v12 = [v11 domain];
        v13 = sub_1000C6D84();
        v15 = v14;

        if (v13 == sub_1000C6D84() && v15 == v16)
        {
        }

        else
        {
          v42 = sub_1000C73A4();

          if ((v42 & 1) == 0)
          {

            v44 = v82;
LABEL_24:
            v47 = *(v1 + 144);

            LOBYTE(v8) = 1;
            sub_1000494BC(v6, v5, v7, v81, v44, 1u);
            v48 = *(v1 + 72);

            v32 = 0;
            v31 = 0;
            v6 = 0xD000000000000013;
            v5 = 0x80000001000DA9F0;
            goto LABEL_44;
          }
        }

        v43 = [v11 code];

        v44 = v82;
        if (v43 == 7)
        {
          sub_1000494BC(v6, v5, v7, v81, v82, 1u);

LABEL_28:

          goto LABEL_29;
        }

        goto LABEL_24;
      }

      __break(1u);
LABEL_63:
      __break(1u);
      return result;
    }

    v40 = *(v0 + 144);

    v41 = *(v0 + 72);

    v32 = v81;
    v31 = v82;
LABEL_44:
    v70 = *(v1 + 128);
    v69 = *(v1 + 136);
    v71 = *(v1 + 96);

    *v71 = v6;
    *(v71 + 8) = v5;
    *(v71 + 16) = v7;
    *(v71 + 24) = v32;
    *(v71 + 32) = v31;
    *(v71 + 40) = v8;
    v72 = *(v1 + 8);

    return v72();
  }

  if (!v7)
  {
    goto LABEL_63;
  }

  v33 = *(v0 + 168);

  v34 = v7;

  v35 = [v34 domain];
  v36 = sub_1000C6D84();
  v38 = v37;

  if (v36 == sub_1000C6D84() && v38 == v39)
  {
  }

  else
  {
    v45 = sub_1000C73A4();

    if ((v45 & 1) == 0)
    {

      v31 = v82;
      goto LABEL_26;
    }
  }

  v46 = [v34 code];

  v31 = v82;
  if (v46 != 7)
  {
LABEL_26:
    v49 = objc_opt_self();
    v50 = v34;
    v51 = sub_1000C5CD4();
    LOBYTE(v49) = [v49 shouldRetryShareSaveOnError:v51];
    sub_1000494BC(v6, v5, v7, v81, v31, 4u);

    if (v49)
    {

      goto LABEL_28;
    }

    v67 = *(v1 + 144);

    v68 = *(v1 + 72);

    LOBYTE(v8) = 4;
    v32 = v81;
    goto LABEL_44;
  }

  sub_1000494BC(v6, v5, v7, v81, v82, 4u);
LABEL_29:
  v52 = *(v1 + 72);

  v53 = *(v1 + 226);
  v54 = *(v1 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v55 = *(v1 + 61);
  if (v55 == 4)
  {
    v56 = v53;
  }

  else
  {
    v56 = v55 != 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v1 + 62) != 9)
  {
    goto LABEL_40;
  }

  v57 = *(*(v1 + 104) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v58 = *(v1 + 88);
  if (!v58)
  {
    goto LABEL_36;
  }

  if (!v56)
  {
LABEL_40:
    v62 = *(v1 + 136);
    v63 = *(v1 + 104);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v64 = swift_task_alloc();
    *(v1 + 208) = v64;
    *v64 = v1;
    v64[1] = sub_10006BDA0;
    v65 = *(v1 + 104);
    v66 = *(v1 + 136);

    return sub_100055638(v66);
  }

  v56 = 1;
LABEL_36:
  *(v1 + 226) = v56;
  v59 = *(v1 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v1 + 58) == 1)
  {
    v60 = swift_task_alloc();
    *(v1 + 176) = v60;
    *v60 = v1;
    v60[1] = sub_10006B328;
    v61 = *(v1 + 104);

    return sub_1000615A4();
  }

  else
  {
    v73 = *(v1 + 104);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 0;

    sub_1000C60A4();
    v74 = *(v73 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v75 = *(v1 + 64);
    if (v75)
    {
      v76 = *(*(v1 + 104) + 16);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (*(v1 + 224) == 1)
      {
        v77 = *(*(v1 + 104) + 16);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1000C6094();

        if (*(v1 + 225) > 1u)
        {
          if (*(v1 + 225) != 2)
          {
            return sub_1000C72E4();
          }

          v78 = 2;
        }

        else if (*(v1 + 225))
        {
          v78 = 3;
        }

        else
        {
          v78 = 1;
        }
      }

      else
      {
        v78 = 1;
      }

      [v75 setPublicPermission:v78];
    }

    v79 = swift_task_alloc();
    *(v1 + 192) = v79;
    *v79 = v1;
    v79[1] = sub_10006B710;
    v80 = *(v1 + 104);

    return sub_100067EF4();
  }
}

uint64_t sub_10006D734()
{
  v23 = v0;
  v1 = v0[18];

  v2 = v0[27];
  v3 = v0[16];
  sub_1000C5F54();
  swift_errorRetain();
  v4 = sub_1000C5F64();
  v5 = sub_1000C6FD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v21 = v0[16];
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v0[10] = v2;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v10 = sub_1000C6D94();
    v12 = sub_100071844(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "iOSPrepareToShare error: %s", v8, 0xCu);
    sub_100010544(v9);

    (*(v6 + 8))(v21, v7);
  }

  else
  {
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];

    (*(v14 + 8))(v13, v15);
  }

  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[12];

  *v18 = 0xD000000000000013;
  *(v18 + 8) = 0x80000001000DA9F0;
  *(v18 + 16) = xmmword_1000CFF70;
  *(v18 + 32) = 0x80000001000DAA10;
  *(v18 + 40) = 11;
  v19 = v0[1];

  return v19();
}

uint64_t sub_10006D96C()
{
  v1[12] = v0;
  sub_1000C6F14();
  v1[13] = sub_1000C6F04();
  v3 = sub_1000C6ED4();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_10006DA04, v3, v2);
}

uint64_t sub_10006DA04()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);

  v3 = sub_100019C78();

  v4 = *(*(v1 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
  if (v4 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    LOBYTE(v4) = *(v0 + 57);
  }

  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_10006DB40;
  v6 = *(v0 + 96);

  return sub_100063020(v3 & 1, v4 & 1);
}

uint64_t sub_10006DB40()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[14];
    v5 = v3[15];

    return _swift_task_switch(sub_10006DE44, v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[18] = v6;
    *v6 = v3;
    v6[1] = sub_10006DCA8;
    v7 = v3[12];

    return sub_100067EF4();
  }
}

uint64_t sub_10006DCA8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_10006E074;
  }

  else
  {
    v7 = sub_10006DDE4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10006DDE4()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10006DE44()
{
  v1 = *(v0 + 136);
  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 32);
  v0 = *(v0 + 56);
  v2 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  if (v0 != 4)
  {
    if (v0 != 1)
    {
LABEL_9:
      v6 = v2;
      sub_1000C7244(20);

      v7 = [v6 description];
      v8 = sub_1000C6D84();
      v10 = v9;

      v12._countAndFlagsBits = v8;
      v12._object = v10;
      sub_1000C6E04(v12);

      goto LABEL_10;
    }

    if (!v1)
    {
      __break(1u);
LABEL_6:
      v3 = *(v0 + 80);

      sub_1000C7244(28);
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      v11._object = 0x80000001000DA860;
      sub_1000C6E04(v11);
      *(v0 + 88) = v1;
      sub_1000C72D4();
      v4 = *(v0 + 64);
      v5 = *(v0 + 72);
LABEL_10:
      sub_1000C72E4();
      return;
    }

LABEL_8:
    v2 = v1;
    goto LABEL_9;
  }

  if (v1)
  {
    goto LABEL_8;
  }

  __break(1u);
}

void sub_10006E074()
{
  v1 = *(v0 + 152);
  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 32);
  v0 = *(v0 + 56);
  v2 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  if (v0 != 4)
  {
    if (v0 != 1)
    {
LABEL_9:
      v6 = v2;
      sub_1000C7244(20);

      v7 = [v6 description];
      v8 = sub_1000C6D84();
      v10 = v9;

      v12._countAndFlagsBits = v8;
      v12._object = v10;
      sub_1000C6E04(v12);

      goto LABEL_10;
    }

    if (!v1)
    {
      __break(1u);
LABEL_6:
      v3 = *(v0 + 80);

      sub_1000C7244(28);
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      v11._object = 0x80000001000DA860;
      sub_1000C6E04(v11);
      *(v0 + 88) = v1;
      sub_1000C72D4();
      v4 = *(v0 + 64);
      v5 = *(v0 + 72);
LABEL_10:
      sub_1000C72E4();
      return;
    }

LABEL_8:
    v2 = v1;
    goto LABEL_9;
  }

  if (v1)
  {
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_10006E2A4()
{
  v1[20] = v0;
  v2 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v3 = sub_1000C5D84();
  v1[22] = v3;
  v4 = *(v3 - 8);
  v1[23] = v4;
  v5 = *(v4 + 64) + 15;
  v1[24] = swift_task_alloc();
  sub_1000C6F14();
  v1[25] = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  v1[26] = v7;
  v1[27] = v6;

  return _swift_task_switch(sub_10006E3D0, v7, v6);
}

uint64_t sub_10006E3D0()
{
  v1 = *(v0 + 160);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if (*(v0 + 96) || *(v0 + 104) != 0xE000000000000000)
  {
    v4 = *(v0 + 104);
    v5 = sub_1000C73A4();

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
    v6 = sub_1000C73A4();

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
  sub_1000C6094();

  if ((*(v0 + 384) & 0xFE) == 8)
  {
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if ((*(v9 + 48))(v10, 1, v8) == 1)
    {
      v12 = *(v0 + 200);
      v13 = *(v0 + 168);

      sub_100010F24(v13, &qword_100116260, &qword_1000CD940);
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
    v22[1] = sub_10006EB64;
    v23 = *(v0 + 192);

    return sub_100011F10(v0 + 16, v23);
  }

  else
  {
    v14 = *(v0 + 160);
    v15 = sub_10003AB60();
    *(v0 + 224) = v15;
    v24 = v15;
    v25 = swift_task_alloc();
    *(v0 + 232) = v25;
    *v25 = v0;
    v25[1] = sub_10006E7EC;

    return sub_10004B70C(v24);
  }
}

uint64_t sub_10006E7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 232);
  v12 = *v5;
  *(*v5 + 240) = v4;

  if (v4)
  {
    v13 = *(v10 + 208);
    v14 = *(v10 + 216);
    v15 = sub_10006EAC0;
  }

  else
  {

    *(v10 + 248) = a4;
    *(v10 + 256) = a3;
    *(v10 + 264) = a2;
    *(v10 + 272) = a1;
    v13 = *(v10 + 208);
    v14 = *(v10 + 216);
    v15 = sub_10006E93C;
  }

  return _swift_task_switch(v15, v13, v14);
}

uint64_t sub_10006E93C()
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

      sub_1000C60A4();
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

  sub_1000100B0();
  swift_allocError();
  *v12 = 0xD000000000000016;
  *(v12 + 8) = 0x80000001000DAB30;
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

uint64_t sub_10006EAC0()
{
  *(v0 + 328) = *(v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_10006EED4;

  return sub_100012694(v0 + 56);
}

uint64_t sub_10006EB64()
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

  return _swift_task_switch(sub_10006ECA0, v6, v5);
}

uint64_t sub_10006ECA0()
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
    sub_1000100B0();
    swift_allocError();
    *v9 = 0xD000000000000016;
    *(v9 + 8) = 0x80000001000DAB30;
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

        sub_1000C60A4();
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

    sub_1000100B0();
    swift_allocError();
    *v20 = 0xD000000000000016;
    *(v20 + 8) = 0x80000001000DAB30;
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

uint64_t sub_10006EED4()
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

  return _swift_task_switch(sub_10006F020, v5, v4);
}

uint64_t sub_10006F020()
{
  v1 = v0[47];
  v2 = v0[25];

  if (v1)
  {
    v3 = v0[46];
    v4 = v0[47];
    v5 = v0[44];
    v6 = v0[41];
    sub_1000100B0();
    swift_allocError();
    *v7 = 0xD000000000000016;
    *(v7 + 8) = 0x80000001000DAB30;
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

        sub_1000C60A4();
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

    sub_1000100B0();
    swift_allocError();
    *v19 = 0xD000000000000016;
    *(v19 + 8) = 0x80000001000DAB30;
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

uint64_t sub_10006F230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  sub_1000C6F14();
  v4[11] = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  v4[12] = v7;
  v4[13] = v6;

  return _swift_task_switch(sub_10006F300, v7, v6);
}

uint64_t sub_10006F300()
{
  v1 = v0[9];
  v2 = v0[10];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10006F3E4;
  v5 = v0[9];
  v4 = v0[10];

  return sub_100055638(v4);
}

uint64_t sub_10006F3E4()
{
  v2 = *v1;
  v3 = (*v1)[14];
  v4 = *v1;
  (*v1)[15] = v0;

  sub_100010F24(v2[10], &qword_100116260, &qword_1000CD940);
  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {
    v7 = sub_10006F778;
  }

  else
  {
    v7 = sub_10006F548;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10006F548()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  if (!*(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData) || (v3 = *(v0 + 120), v4 = *(v0 + 72), swift_unknownObjectRetain(), sub_10007ADF4(), swift_unknownObjectRelease(), !v3))
  {
    v15 = *(v0 + 72);
    sub_100067838(5u, 0);
LABEL_11:
    v22 = *(v0 + 80);

    v18 = *(v0 + 8);
    goto LABEL_12;
  }

  *(v0 + 64) = v3;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
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

      sub_100067838(1u, v9);
      sub_1000494BC(v7, v6, v9, v8, v10, 7u);
    }

    else
    {
      v19 = *(v0 + 72);
      v20 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_100067838(2u, v20);
      sub_1000494BC(v7, v6, v9, v8, v10, v11);
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

uint64_t sub_10006F778()
{
  v1 = *(v0 + 88);

  *(v0 + 64) = *(v0 + 120);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
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

      sub_100067838(1u, v6);
      sub_1000494BC(v4, v3, v6, v5, v7, 7u);
    }

    else
    {
      v15 = *(v0 + 72);
      v16 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_100067838(2u, v16);
      sub_1000494BC(v4, v3, v6, v5, v7, v8);
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

uint64_t sub_10006F960(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 57) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  v4 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v5 = sub_1000C5F74();
  *(v3 + 96) = v5;
  v6 = *(v5 - 8);
  *(v3 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  sub_1000C6F14();
  *(v3 + 152) = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  *(v3 + 160) = v9;
  *(v3 + 168) = v8;

  return _swift_task_switch(sub_10006FAC0, v9, v8);
}

void sub_10006FAC0()
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
    v3[1] = sub_10006FB70;
    v4 = v0[10];

    sub_100064C74();
  }
}

uint64_t sub_10006FB70()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_10006FE00;
  }

  else
  {
    v7 = sub_10006FCAC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10006FCAC()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_1000C5F54();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FF4();
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

uint64_t sub_10006FE00()
{
  *(v0 + 64) = *(v0 + 200);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
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

      sub_1000C5F54();
      v23 = sub_1000C5F64();
      v24 = sub_1000C6FD4();
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
      sub_1000100B0();
      swift_allocError();
      *v30 = 0xD00000000000003ELL;
      *(v30 + 8) = 0x80000001000DAB50;
      *(v30 + 16) = xmmword_1000CFF80;
      *(v30 + 32) = 0x80000001000DAB90;
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
      v13 = sub_1000C6D84();
      v15 = v14;

      if (v13 == sub_1000C6D84() && v15 == v16)
      {

        v17 = v87;
      }

      else
      {
        v37 = sub_1000C73A4();

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
      sub_1000C6094();

      v41 = sub_1000C5D84();
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {
        v42 = *(v0 + 152);
        v43 = *(v0 + 88);

        sub_100010F24(v43, &qword_100116260, &qword_1000CD940);
        v17 = v87;
LABEL_17:
        v46 = *(v0 + 120);
        sub_1000C5F54();
        v47 = v11;
        v48 = sub_1000C5F64();
        v49 = sub_1000C6FD4();

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
          sub_100010F24(v52, &qword_100117080, &unk_1000CC350);
          v17 = v87;
        }

        v54 = *(v0 + 120);
        v55 = *(v0 + 96);
        v56 = *(v0 + 104);

        (*(v56 + 8))(v54, v55);
        sub_1000100B0();
        swift_allocError();
        *v57 = v17;
        *(v57 + 8) = v2;
        *(v57 + 16) = v4;
        *(v57 + 24) = v88;
        *(v57 + 32) = v6;
        *(v57 + 40) = 5;
        swift_willThrow();
        sub_1000199B8(v17, v2, v4, v88, v6, 5u);

        v31 = v17;
        v32 = v2;
        v33 = v4;
        v34 = v88;
LABEL_20:
        v35 = v6;
        v36 = 5;
LABEL_21:
        sub_1000494BC(v31, v32, v33, v34, v35, v36);
        goto LABEL_22;
      }

      v67 = *(v0 + 57);
      sub_100010F24(*(v0 + 88), &qword_100116260, &qword_1000CD940);
      if ((v67 & 1) == 0)
      {
        v78 = *(v0 + 152);
        v79 = *(v0 + 136);

        sub_1000C5F54();
        v80 = sub_1000C5F64();
        v81 = sub_1000C6FD4();
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
        sub_1000100B0();
        swift_allocError();
        *v86 = v87;
        *(v86 + 8) = v2;
        *(v86 + 16) = v4;
        *(v86 + 24) = v5;
        *(v86 + 32) = v6;
        *(v86 + 40) = 5;
        swift_willThrow();
        sub_1000199B8(v87, v2, v4, v5, v6, 5u);

        v31 = v87;
        v32 = v2;
        v33 = v4;
        v34 = v5;
        goto LABEL_20;
      }

      v68 = *(v0 + 128);
      sub_1000C5F54();
      v69 = sub_1000C5F64();
      v70 = sub_1000C6FF4();
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
      v77[1] = sub_100070658;
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

uint64_t sub_100070658()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 160);
    v6 = *(v2 + 168);
    v7 = sub_10007B978;
  }

  else
  {
    v5 = *(v2 + 160);
    v6 = *(v2 + 168);
    v7 = sub_10007077C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10007077C()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[23];

  sub_1000494BC(v5, v4, v3, v1, v2, 5u);
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
      v10[1] = sub_10006FB70;
      v11 = v0[10];

      return sub_100064C74();
    }
  }

  return result;
}

uint64_t shareStatus(url:)()
{
  v0 = sub_1000C5D84();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_1000C5F74();
  v23[0] = *(v2 - 8);
  v23[1] = v2;
  v3 = *(v23[0] + 64);
  __chkstk_darwin(v2);
  v23[2] = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C5BC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FEB8(&unk_1001196C0, &unk_1000CFFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CC5C0;
  *(inited + 32) = NSURLUbiquitousItemIsSharedKey;
  *(inited + 40) = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  v11 = NSURLUbiquitousItemIsSharedKey;
  v12 = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  sub_1000782B8(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_1000C5CF4();

  v13 = sub_1000C5BA4();
  v14 = sub_1000C5BB4();
  if (!v14)
  {
    v14 = NSURLUbiquitousSharedItemRoleParticipant;
  }

  v15 = v14;
  v16 = sub_1000C6D84();
  v18 = v17;
  if (v16 == sub_1000C6D84() && v18 == v19)
  {

    v20 = 256;
  }

  else
  {
    v21 = sub_1000C73A4();

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

uint64_t sub_100070E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v9 = sub_10000FEB8(&unk_100118600, &qword_1000D0C10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v23 - v12;
  v14 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v23 - v16;
  v18 = sub_1000C6F44();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_100017574(a5, v13, &unk_100118600, &qword_1000D0C10);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a3;
  v20[5] = a4;
  sub_100020D0C(v13, v20 + v19, &unk_100118600, &qword_1000D0C10);
  v21 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v24;
  v21[1] = a2;

  sub_1000B8860(0, 0, v17, &unk_1000D0C20, v20);
}

uint64_t sub_100071054(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v8[5] = v11;
  *v11 = v8;
  v11[1] = sub_100071158;

  return (v13)(v8 + 2, a6);
}

uint64_t sub_100071158()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_100071254, 0, 0);
}

uint64_t sub_100071254()
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

uint64_t sub_1000712E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_100071360(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_1000C60A4();
}

uint64_t sub_1000713D8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_100071454(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_100017574(a1, &v13 - v9, &qword_100116260, &qword_1000CD940);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100017574(v10, v8, &qword_100116260, &qword_1000CD940);

  sub_1000C60A4();
  return sub_100010F24(v10, &qword_100116260, &qword_1000CD940);
}

uint64_t sub_1000715D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_100071654(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

double sub_100071720@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1000717A8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_100071844(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100071910(v11, 0, 0, 1, a1, a2);
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
    sub_100038D8C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100010544(v11);
  return v7;
}

unint64_t sub_100071910(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100071A1C(a5, a6);
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
    result = sub_1000C7274();
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

char *sub_100071A1C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100071A68(a1, a2);
  sub_100071B98(&off_100107048);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100071A68(uint64_t a1, unint64_t a2)
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

  v6 = sub_100071C84(v5, 0);
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

  result = sub_1000C7274();
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
        v10 = sub_1000C6E14();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100071C84(v10, 0);
        result = sub_1000C7234();
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

uint64_t sub_100071B98(uint64_t result)
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

  result = sub_100071CF8(result, v12, 1, v3);
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

void *sub_100071C84(uint64_t a1, uint64_t a2)
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

  sub_10000FEB8(&qword_100118638, &qword_1000D0F68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100071CF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FEB8(&qword_100118638, &qword_1000D0F68);
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

unint64_t sub_100071DEC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000C7464();
  sub_1000C6DD4();
  v6 = sub_1000C7494();

  return sub_100071FC4(a1, a2, v6);
}

unint64_t sub_100071E64(char a1)
{
  v3 = *(v1 + 40);
  sub_1000C7464();
  sub_10009D2CC(a1);
  sub_1000C6DD4();

  v4 = sub_1000C7494();

  return sub_10007207C(a1, v4);
}

unint64_t sub_100071EEC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1000C7464();
  sub_1000C7474(a1);
  v4 = sub_1000C7494();

  return sub_100072508(a1, v4);
}

unint64_t sub_100071F58(int a1)
{
  v3 = *(v1 + 40);
  sub_1000C7464();
  sub_1000C7484(a1 & 1);
  v4 = sub_1000C7494();

  return sub_100072578(a1, v4);
}

unint64_t sub_100071FC4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000C73A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10007207C(char a1, uint64_t a2)
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
          v14 = sub_1000C73A4();

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

unint64_t sub_100072508(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100072578(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void (*sub_1000725E8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000C7254();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100072668;
  }

  __break(1u);
  return result;
}

uint64_t sub_100072670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_10000FEB8(&unk_100118600, &qword_1000D0C10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = &v19 - v11;
  sub_100017574(a1, &v19 - v11, &unk_100118600, &qword_1000D0C10);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  sub_100020D0C(v12, v14 + v13, &unk_100118600, &qword_1000D0C10);
  v15 = sub_10000FEB8(&qword_100118520, &qword_1000D0BC0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  result = sub_1000C6044();
  *a4 = result;
  return result;
}

unint64_t sub_1000727E4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1000C72F4();
    if (result)
    {
LABEL_3:
      sub_10000FEB8(&qword_1001185E0, &unk_1000D0BE8);
      result = sub_1000C7224();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1000C72F4();
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
    result = sub_1000C7254();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    sub_1000C6014();
    sub_1000799C8(&qword_1001185E8, &type metadata accessor for AnyCancellable);
    result = sub_1000C6D14();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1000799C8(&unk_1001185F0, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = sub_1000C6D34();
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

char *sub_100072A78(uint64_t a1)
{
  v2 = v1;
  v576 = a1;
  v499 = *v1;
  v520 = sub_10000FEB8(&qword_1001182F0, &qword_1000D0A48);
  v519 = *(v520 - 8);
  v3 = *(v519 + 64);
  __chkstk_darwin(v520);
  v518 = &v390 - v4;
  v523 = sub_10000FEB8(&qword_1001182F8, &qword_1000D0A50);
  v522 = *(v523 - 8);
  v5 = *(v522 + 64);
  __chkstk_darwin(v523);
  v521 = &v390 - v6;
  v526 = sub_10000FEB8(&qword_100118300, &qword_1000D0A58);
  v525 = *(v526 - 8);
  v7 = *(v525 + 64);
  __chkstk_darwin(v526);
  v524 = &v390 - v8;
  v513 = sub_10000FEB8(&qword_100118308, &qword_1000D0A60);
  v512 = *(v513 - 8);
  v9 = *(v512 + 64);
  __chkstk_darwin(v513);
  v510 = &v390 - v10;
  v514 = sub_10000FEB8(&qword_100118310, &qword_1000D0A68);
  v11 = *(*(v514 - 8) + 64);
  __chkstk_darwin(v514);
  v511 = &v390 - v12;
  v550 = sub_10000FEB8(&qword_100116998, &unk_1000CC910);
  v515 = *(v550 - 8);
  v13 = *(v515 + 64);
  v14 = __chkstk_darwin(v550);
  v516 = &v390 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v517 = &v390 - v16;
  v504 = sub_10000FEB8(&qword_100117710, &qword_1000CEEB0);
  v17 = *(*(v504 - 8) + 64);
  __chkstk_darwin(v504);
  v502 = &v390 - v18;
  v507 = sub_10000FEB8(&qword_100118318, &qword_1000D0A70);
  v505 = *(v507 - 8);
  v19 = *(v505 + 64);
  __chkstk_darwin(v507);
  v503 = &v390 - v20;
  v509 = sub_10000FEB8(&unk_100118320, &unk_1000D0A78);
  v508 = *(v509 - 8);
  v21 = *(v508 + 64);
  __chkstk_darwin(v509);
  v506 = &v390 - v22;
  v501 = sub_10000FEB8(&qword_100116EA0, &qword_1000CD270);
  v500 = *(v501 - 8);
  v23 = *(v500 + 64);
  v24 = __chkstk_darwin(v501);
  v497 = &v390 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v498 = &v390 - v26;
  v494 = sub_10000FEB8(&qword_100118330, &qword_1000D0A88);
  v493 = *(v494 - 8);
  v27 = *(v493 + 64);
  __chkstk_darwin(v494);
  v491 = &v390 - v28;
  v487 = sub_10000FEB8(&qword_100118338, &qword_1000D0A90);
  v485 = *(v487 - 8);
  v29 = *(v485 + 64);
  __chkstk_darwin(v487);
  v483 = &v390 - v30;
  v486 = sub_10000FEB8(&qword_100118340, &qword_1000D0A98);
  v31 = *(*(v486 - 8) + 64);
  v32 = __chkstk_darwin(v486);
  v484 = &v390 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v482 = &v390 - v34;
  v490 = sub_10000FEB8(&qword_100118348, &qword_1000D0AA0);
  v489 = *(v490 - 8);
  v35 = *(v489 + 64);
  __chkstk_darwin(v490);
  v488 = &v390 - v36;
  v496 = sub_10000FEB8(&unk_100118350, &qword_1000D0AA8);
  v495 = *(v496 - 8);
  v37 = *(v495 + 64);
  __chkstk_darwin(v496);
  v492 = &v390 - v38;
  v481 = sub_10000FEB8(&qword_100116EC8, &qword_1000D0AB0);
  v480 = *(v481 - 8);
  v39 = *(v480 + 64);
  __chkstk_darwin(v481);
  v479 = &v390 - v40;
  v478 = sub_10000FEB8(&qword_100118360, &qword_1000D0AB8);
  v477 = *(v478 - 8);
  v41 = *(v477 + 64);
  __chkstk_darwin(v478);
  v476 = &v390 - v42;
  v475 = sub_10000FEB8(&qword_100118368, &qword_1000D0AC0);
  v474 = *(v475 - 8);
  v43 = *(v474 + 64);
  __chkstk_darwin(v475);
  v473 = &v390 - v44;
  v472 = sub_10000FEB8(&unk_100118370, &qword_1000D0AC8);
  v471 = *(v472 - 8);
  v45 = *(v471 + 64);
  __chkstk_darwin(v472);
  v470 = &v390 - v46;
  v469 = sub_10000FEB8(&qword_1001169A8, &qword_1000D0AD0);
  v468 = *(v469 - 8);
  v47 = *(v468 + 64);
  __chkstk_darwin(v469);
  v467 = &v390 - v48;
  v460 = sub_10000FEB8(&qword_100116E60, &qword_1000CD230);
  v459 = *(v460 - 8);
  v49 = *(v459 + 64);
  __chkstk_darwin(v460);
  v458 = &v390 - v50;
  v455 = sub_10000FEB8(&qword_1001177C0, &qword_1000CEF60);
  v454 = *(v455 - 8);
  v51 = *(v454 + 64);
  __chkstk_darwin(v455);
  v453 = &v390 - v52;
  v461 = sub_10000FEB8(&qword_100118380, &qword_1000D0AD8);
  v53 = *(*(v461 - 8) + 64);
  __chkstk_darwin(v461);
  v462 = &v390 - v54;
  v465 = sub_10000FEB8(&qword_100118388, &qword_1000D0AE0);
  v464 = *(v465 - 8);
  v55 = *(v464 + 64);
  __chkstk_darwin(v465);
  v463 = &v390 - v56;
  v539 = sub_10000FEB8(&qword_1001177A0, &qword_1000CEF40);
  v457 = *(v539 - 8);
  v57 = *(v457 + 64);
  v58 = __chkstk_darwin(v539);
  v452 = &v390 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v456 = &v390 - v60;
  v541 = sub_10000FEB8(&qword_100116EC0, &unk_1000CC930);
  v466 = *(v541 - 8);
  v61 = *(v466 + 64);
  __chkstk_darwin(v541);
  v540 = &v390 - v62;
  v447 = sub_10000FEB8(&qword_100118390, &qword_1000D0AE8);
  v446 = *(v447 - 8);
  v63 = *(v446 + 64);
  __chkstk_darwin(v447);
  v445 = &v390 - v64;
  v450 = sub_10000FEB8(&unk_100118398, &unk_1000D0AF0);
  v449 = *(v450 - 8);
  v65 = *(v449 + 64);
  __chkstk_darwin(v450);
  v448 = &v390 - v66;
  v67 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  v68 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67 - 8);
  v575 = &v390 - v69;
  v555 = sub_10000FEB8(&qword_100117728, &unk_1000D0B00);
  v571 = *(v555 - 8);
  v70 = *(v571 + 64);
  __chkstk_darwin(v555);
  v451 = &v390 - v71;
  v444 = sub_10000FEB8(&qword_100117730, &qword_1000CEED0);
  v441 = *(v444 - 1);
  v72 = *(v441 + 64);
  __chkstk_darwin(v444);
  v443 = &v390 - v73;
  v532 = sub_10000FEB8(&qword_1001183A8, &qword_1000D0B10);
  v442 = *(v532 - 8);
  v74 = *(v442 + 64);
  __chkstk_darwin(v532);
  v440 = &v390 - v75;
  v558 = sub_10000FEB8(&qword_1001183B0, &qword_1000D0B18);
  v572 = *(v558 - 8);
  v76 = *(v572 + 64);
  v77 = __chkstk_darwin(v558);
  v551 = &v390 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v556 = &v390 - v79;
  v547 = sub_10000FEB8(&unk_100116EE0, &unk_1000CD2A0);
  v560 = *(v547 - 8);
  v80 = *(v560 + 64);
  __chkstk_darwin(v547);
  v546 = &v390 - v81;
  v549 = sub_10000FEB8(&qword_100117760, &qword_1000CEF00);
  v82 = *(*(v549 - 8) + 64);
  __chkstk_darwin(v549);
  v561 = &v390 - v83;
  v437 = sub_10000FEB8(&qword_1001183B8, &qword_1000D0B20);
  v436 = *(v437 - 1);
  v84 = *(v436 + 64);
  __chkstk_darwin(v437);
  v435 = &v390 - v85;
  v534 = sub_10000FEB8(&qword_1001183C0, &qword_1000D0B28);
  v86 = *(*(v534 - 1) + 64);
  v87 = __chkstk_darwin(v534);
  v531 = &v390 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  v567 = &v390 - v89;
  v544 = sub_10000FEB8(&qword_1001183C8, &qword_1000D0B30);
  v559 = *(v544 - 8);
  v90 = *(v559 + 64);
  __chkstk_darwin(v544);
  v543 = &v390 - v91;
  v545 = sub_10000FEB8(&qword_1001183D0, &qword_1000D0B38);
  v92 = *(*(v545 - 8) + 64);
  __chkstk_darwin(v545);
  v573 = &v390 - v93;
  v528 = sub_10000FEB8(&qword_1001183D8, &qword_1000D0B40);
  v527 = *(v528 - 1);
  v94 = *(v527 + 64);
  __chkstk_darwin(v528);
  v438 = &v390 - v95;
  v533 = sub_10000FEB8(&qword_1001183E0, &qword_1000D0B48);
  v530 = *(v533 - 1);
  v96 = *(v530 + 64);
  __chkstk_darwin(v533);
  v529 = &v390 - v97;
  v552 = sub_10000FEB8(&qword_1001182E8, &qword_1000D0698);
  v434 = *(v552 - 1);
  v98 = *(v434 + 64);
  __chkstk_darwin(v552);
  v433 = &v390 - v99;
  v432 = sub_10000FEB8(&qword_1001182E0, &qword_1000D0690);
  v431 = *(v432 - 8);
  v100 = v431[8];
  __chkstk_darwin(v432);
  v428 = &v390 - v101;
  v430 = sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  v429 = *(v430 - 8);
  v102 = v429[8];
  __chkstk_darwin(v430);
  v427 = &v390 - v103;
  v542 = sub_10000FEB8(&unk_1001182D0, &unk_1000D0680);
  v426 = *(v542 - 8);
  v104 = *(v426 + 64);
  __chkstk_darwin(v542);
  v425 = &v390 - v105;
  v548 = sub_10000FEB8(&qword_100116E48, &qword_1000CD218);
  v424 = *(v548 - 8);
  v106 = *(v424 + 64);
  __chkstk_darwin(v548);
  v423 = &v390 - v107;
  v569 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  v439 = *(v569 - 8);
  v108 = *(v439 + 64);
  __chkstk_darwin(v569);
  v422 = &v390 - v109;
  v557 = sub_10000FEB8(&qword_1001182B8, &qword_1000D0678);
  v421 = *(v557 - 8);
  v110 = *(v421 + 64);
  __chkstk_darwin(v557);
  v420 = &v390 - v111;
  v419 = sub_10000FEB8(&qword_1001182B0, &qword_1000D0670);
  v418 = *(v419 - 8);
  v112 = *(v418 + 64);
  __chkstk_darwin(v419);
  v417 = &v390 - v113;
  v562 = sub_10000FEB8(&qword_100116988, &qword_1000CC8A8);
  v416 = *(v562 - 8);
  v114 = *(v416 + 64);
  __chkstk_darwin(v562);
  v415 = &v390 - v115;
  v414 = sub_10000FEB8(&unk_1001182A0, &unk_1000D0660);
  v412 = *(v414 - 8);
  v116 = *(v412 + 64);
  __chkstk_darwin(v414);
  v411 = &v390 - v117;
  v536 = sub_10000FEB8(&qword_100118298, &qword_1000D0658);
  v410 = *(v536 - 8);
  v118 = *(v410 + 64);
  __chkstk_darwin(v536);
  v409 = &v390 - v119;
  v566 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v120 = *(*(v566 - 1) + 64);
  v121 = __chkstk_darwin(v566);
  v408 = &v390 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __chkstk_darwin(v121);
  v563 = &v390 - v124;
  __chkstk_darwin(v123);
  v413 = &v390 - v125;
  v407 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  v406 = *(v407 - 8);
  v126 = *(v406 + 64);
  __chkstk_darwin(v407);
  v405 = &v390 - v127;
  v404 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v128 = *(*(v404 - 8) + 64);
  v129 = __chkstk_darwin(v404);
  v403 = &v390 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v129);
  v402 = &v390 - v131;
  v538 = sub_10000FEB8(&qword_100116F30, &qword_1000CD630);
  v401 = *(v538 - 8);
  v132 = *(v401 + 64);
  __chkstk_darwin(v538);
  v400 = &v390 - v133;
  v537 = sub_10000FEB8(&unk_100118280, &unk_1000D0640);
  v399 = *(v537 - 8);
  v134 = *(v399 + 64);
  __chkstk_darwin(v537);
  v398 = &v390 - v135;
  v535 = sub_10000FEB8(&qword_100118278, &qword_1000D0638);
  v397 = *(v535 - 8);
  v136 = *(v397 + 64);
  __chkstk_darwin(v535);
  v396 = &v390 - v137;
  v395 = sub_10000FEB8(&qword_100118270, &qword_1000D0630);
  v394 = *(v395 - 8);
  v138 = *(v394 + 64);
  __chkstk_darwin(v395);
  v393 = &v390 - v139;
  v392 = sub_10000FEB8(&qword_100118268, &qword_1000D0628);
  v391 = *(v392 - 8);
  v140 = *(v391 + 64);
  __chkstk_darwin(v392);
  v390 = &v390 - v141;
  v570 = sub_10000FEB8(&qword_100118260, &qword_1000D0620);
  v142 = *(v570 - 8);
  v143 = *(v142 + 64);
  __chkstk_darwin(v570);
  v145 = &v390 - v144;
  v564 = sub_10000FEB8(&qword_1001178A8, &unk_1000CF2C0);
  v146 = *(v564 - 8);
  v147 = *(v146 + 64);
  __chkstk_darwin(v564);
  v149 = &v390 - v148;
  v150 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v151 = *(v150 - 8);
  v152 = *(v151 + 64);
  __chkstk_darwin(v150);
  v154 = &v390 - v153;
  if (_swiftEmptyArrayStorage >> 62 && sub_1000C72F4())
  {
    v155 = sub_1000727E4(_swiftEmptyArrayStorage);
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
  v156 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isDelegateInitialized;
  LOBYTE(v577) = 0;
  sub_1000C6054();
  v574 = *(v151 + 32);
  (v574)(v2 + v156, v154, v150);
  v157 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__executionMode;
  LOBYTE(v577) = 0;
  sub_1000C6054();
  (*(v146 + 32))(v2 + v157, v149, v564);
  v158 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingType;
  LOBYTE(v577) = 8;
  sub_1000C6054();
  (*(v142 + 32))(v2 + v158, v145, v570);
  v159 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingStage;
  LOBYTE(v577) = 0;
  v160 = v390;
  sub_1000C6054();
  (*(v391 + 32))(v2 + v159, v160, v392);
  v161 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__addedAddresses;
  v577 = _swiftEmptyArrayStorage;
  sub_10000FEB8(&qword_100117FC8, &unk_1000D0028);
  v162 = v393;
  sub_1000C6054();
  (*(v394 + 32))(v2 + v161, v162, v395);
  v163 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__createOrLoadStage;
  LOBYTE(v577) = 0;
  v164 = v396;
  sub_1000C6054();
  (*(v397 + 32))(v2 + v163, v164, v535);
  v165 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__addingAddressesStage;
  LOBYTE(v577) = 0;
  v166 = v398;
  sub_1000C6054();
  (*(v399 + 32))(v2 + v165, v166, v537);
  v167 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__savingStage;
  LOBYTE(v577) = 2;
  v168 = v400;
  sub_1000C6054();
  (*(v401 + 32))(v2 + v167, v168, v538);
  v169 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__alertNowShowing;
  v170 = type metadata accessor for AlertViewModel(0);
  v171 = v402;
  (*(*(v170 - 8) + 56))(v402, 1, 1, v170);
  sub_100017574(v171, v403, &qword_100116C80, &unk_1000CE870);
  v172 = v405;
  sub_1000C6054();
  sub_100010F24(v171, &qword_100116C80, &unk_1000CE870);
  (*(v406 + 32))(v2 + v169, v172, v407);
  v173 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isShowingAlert;
  LOBYTE(v577) = 0;
  v568 = v154;
  sub_1000C6054();
  v565 = v150;
  v174 = v574;
  (v574)(v2 + v173, v154, v150);
  v175 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isFolderShare;
  LOBYTE(v577) = 0;
  sub_1000C6054();
  v174(v2 + v175, v154, v150);
  v554 = (v151 + 32);
  v176 = v174;
  v404 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL;
  v406 = sub_1000C5D84();
  v177 = *(v406 - 8);
  v405 = *(v177 + 56);
  v407 = v177 + 56;
  v178 = v413;
  (v405)(v413, 1, 1, v406);
  v179 = sub_10000FEB8(&qword_1001183E8, &qword_1000D0B80);
  v180 = *(v179 + 48);
  v181 = *(v179 + 52);
  v182 = swift_allocObject();
  v183 = (v182 + *(*v182 + 104));
  *v183 = 0;
  v183[1] = 0;
  v184 = v563;
  sub_100017574(v178, v563, &qword_100116260, &qword_1000CD940);
  v185 = *(*v182 + 96);
  swift_beginAccess();
  sub_100017574(v184, v408, &qword_100116260, &qword_1000CD940);
  sub_1000C6054();
  sub_100010F24(v184, &qword_100116260, &qword_1000CD940);
  swift_endAccess();
  v186 = v178;
  sub_100010F24(v178, &qword_100116260, &qword_1000CD940);
  *(v2 + v404) = v182;
  v187 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isFolderSubshare;
  LOBYTE(v577) = 0;
  v188 = v568;
  sub_1000C6054();
  v189 = v188;
  v190 = v565;
  v176(v2 + v187, v189, v565);
  v191 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderTitle;
  v192 = sub_10000FEB8(&qword_1001183F0, &qword_1000D0B88);
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
  v198 = sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
  sub_1000C6054();
  swift_endAccess();
  *(v2 + v191) = v195;
  v199 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckFolderSubitemName;
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
  sub_1000C6054();
  swift_endAccess();
  *(v2 + v199) = v202;
  v205 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__folderSharingStage;
  LOBYTE(v577) = 4;
  sub_10000FEB8(&qword_100117FF0, &qword_1000D0038);
  v206 = v409;
  sub_1000C6054();
  (*(v410 + 32))(v2 + v205, v206, v536);
  v207 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__shareSaveStatus;
  LOBYTE(v577) = 0;
  v208 = v411;
  sub_1000C6054();
  (*(v412 + 32))(v2 + v207, v208, v414);
  v209 = (v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData);
  *v209 = 0;
  v209[1] = 0;
  v210 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingOptionsAllowedFromSPI;
  v577 = 15;
  v211 = v415;
  sub_1000C6054();
  (*(v416 + 32))(v2 + v210, v211, v562);
  v212 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__yourNameAndEmail;
  v577 = 0;
  v578 = 0xE000000000000000;
  v579 = 0;
  v580 = 0xE000000000000000;
  sub_10000FEB8(&qword_100118010, &unk_1000D0058);
  v213 = v417;
  sub_1000C6054();
  (*(v418 + 32))(v2 + v212, v213, v419);
  v214 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharedFileOrFolderURL;
  (v405)(v186, 1, 1, v406);
  sub_100017574(v186, v563, &qword_100116260, &qword_1000CD940);
  v215 = v420;
  sub_1000C6054();
  sub_100010F24(v186, &qword_100116260, &qword_1000CD940);
  (*(v421 + 32))(v2 + v214, v215, v557);
  v216 = v2;
  *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_shouldStopAccessingSharedFileOrFolderURL) = 0;
  v217 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__itemUTI;
  v577 = 0;
  v578 = 0;
  v218 = v422;
  sub_1000C6054();
  v566 = *(v439 + 32);
  (v566)(v2 + v217, v218, v569);
  v219 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isShareRoot;
  LOBYTE(v577) = 1;
  v220 = v568;
  sub_1000C6054();
  (v574)(&v216[v219], v220, v190);
  v221 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnail;
  v577 = [objc_allocWithZone(UIImage) init];
  v439 = sub_100010778(0, &qword_100118020, UIImage_ptr);
  v222 = v423;
  sub_1000C6054();
  (*(v424 + 32))(&v216[v221], v222, v548);
  v223 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnailFromCloudKitSPI;
  v577 = 0;
  sub_10000FEB8(&unk_100118030, &qword_1000D0088);
  v224 = v425;
  sub_1000C6054();
  v225 = *(v426 + 32);
  v226 = v542;
  v225(&v216[v223], v224, v542);
  v227 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnailFromDocumentSPI;
  v577 = 0;
  sub_1000C6054();
  v225(&v216[v227], v224, v226);
  v228 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__itemTitle;
  v577 = 0;
  v578 = 0xE000000000000000;
  v229 = v427;
  sub_1000C6054();
  v230 = v429[4];
  v231 = &v216[v228];
  v232 = v216;
  v233 = v430;
  (v230)(v231, v229, v430);
  v234 = v230;
  v235 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sourceAppBundleID;
  v577 = 0;
  v578 = 0;
  sub_1000C6054();
  (v566)(&v232[v235], v218, v569);
  v236 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sectionTitleForAuxiliaryToggles;
  v577 = 0;
  v578 = 0xE000000000000000;
  sub_1000C6054();
  (v234)(&v232[v236], v229, v233);
  v237 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__primaryCheckboxTitle;
  v577 = 0;
  v578 = 0xE000000000000000;
  sub_1000C6054();
  (v234)(&v232[v237], v229, v233);
  v563 = v234;
  v238 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__secondaryCheckboxTitle;
  v577 = 0;
  v578 = 0xE000000000000000;
  sub_1000C6054();
  (v234)(&v232[v238], v229, v233);
  v239 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__primaryCheckboxState;
  LOBYTE(v577) = 0;
  v240 = v568;
  sub_1000C6054();
  v241 = v565;
  v242 = v574;
  (v574)(&v232[v239], v240, v565);
  v243 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__secondaryCheckboxState;
  LOBYTE(v577) = 0;
  sub_1000C6054();
  v242(&v232[v243], v240, v241);
  v244 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckContainerIdentifier;
  v577 = [objc_allocWithZone(CKContainerID) init];
  sub_100010778(0, &qword_100118048, CKContainerID_ptr);
  v245 = v428;
  sub_1000C6054();
  (v431[4])(&v232[v244], v245, v432);
  v246 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__helpAnchor;
  v577 = 0;
  v578 = 0xE000000000000000;
  sub_1000C6054();
  (v563)(&v232[v246], v229, v233);
  v247 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__participantDetails;
  v577 = sub_100078D40(_swiftEmptyArrayStorage, &qword_100118628, &qword_1000D0F08);
  sub_10000FEB8(&unk_100118058, &qword_1000D0090);
  v248 = v433;
  sub_1000C6054();
  (*(v434 + 32))(&v232[v247], v248, v552);
  v249 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_networkMonitor;
  v250 = type metadata accessor for NetworkMonitor();
  v251 = *(v250 + 48);
  v252 = *(v250 + 52);
  swift_allocObject();
  *&v232[v249] = sub_10008F180(0);
  *&v232[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_ckMetadata] = 0;
  v253 = v576;
  *(v232 + 2) = v576;
  *(v232 + 3) = *(v253 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel);
  v254 = v232;
  swift_weakAssign();
  v434 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharedFileOrFolderURL;
  swift_beginAccess();

  v255 = v543;
  sub_1000C6064();
  swift_endAccess();
  v433 = sub_10001E490(&qword_1001183F8, &qword_1001183C8, &qword_1000D0B30);
  v432 = sub_1000106C0();
  v256 = v544;
  sub_1000C6114();
  v257 = *(v559 + 8);
  v559 += 8;
  v431 = v257;
  (v257)(v255, v256);
  swift_beginAccess();
  v258 = v435;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118410, &qword_1001183B8, &qword_1000D0B20);
  sub_1000105A8();
  v259 = v437;
  sub_1000C6114();
  v260 = *(v436 + 8);
  v260(v258, v259);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v260(v258, v259);
  swift_beginAccess();
  v261 = v546;
  sub_1000C6064();
  swift_endAccess();
  v574 = &protocol conformance descriptor for Published<A>.Publisher;
  v430 = sub_10001E490(&unk_100116F20, &unk_100116EE0, &unk_1000CD2A0);
  v262 = v547;
  sub_1000C6114();
  v263 = *(v560 + 8);
  v560 += 8;
  v429 = v263;
  (v263)(v261, v262);
  v435 = sub_10001E490(&qword_100118418, &qword_1001183D0, &qword_1000D0B38);
  sub_10001E490(&unk_100118420, &qword_1001183C0, &qword_1000D0B28);
  v554 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v436 = sub_10001E490(&qword_100117890, &qword_100117760, &qword_1000CEF00);
  v264 = v438;
  sub_1000C5FC4();
  v265 = swift_allocObject();
  *(v265 + 16) = sub_100079A10;
  *(v265 + 24) = v254;
  v437 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  sub_10001E490(&qword_100118430, &qword_1001183D8, &qword_1000D0B40);

  v266 = v529;
  v267 = v528;
  sub_1000C60E4();

  (*(v527 + 8))(v264, v267);
  v268 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingType;
  swift_beginAccess();
  v269 = v556;
  sub_1000C6064();
  swift_endAccess();
  v534 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10001E490(&unk_100118438, &qword_1001183E0, &qword_1000D0B48);
  v270 = v533;
  sub_1000C6134();
  (*(v530 + 8))(v266, v270);
  v271 = v572;
  v272 = v558;
  (*(v572 + 16))(v551, v269, v558);
  v531 = v268;
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v273 = *(v271 + 8);
  v572 = v271 + 8;
  v533 = v273;
  (v273)(v269, v272);
  v527 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__executionMode;
  swift_beginAccess();
  v274 = v451;
  sub_1000C6064();
  swift_endAccess();
  v530 = sub_10001E490(&qword_1001178B0, &qword_100117728, &unk_1000D0B00);
  v529 = sub_100048D84();
  v275 = v443;
  v276 = v555;
  sub_1000C6114();
  v277 = *(v571 + 8);
  v571 += 8;
  v528 = v277;
  (v277)(v274, v276);
  v563 = objc_opt_self();
  v278 = [v563 mainRunLoop];
  v577 = v278;
  v568 = sub_1000C71A4();
  v279 = *(v568 - 8);
  v567 = *(v279 + 56);
  v569 = v279 + 56;
  v280 = v575;
  (v567)(v575, 1, 1, v568);
  v551 = sub_100010778(0, &qword_100116F80, NSRunLoop_ptr);
  sub_10001E490(&qword_1001178C0, &qword_100117730, &qword_1000CEED0);
  v566 = sub_10003515C(&qword_100116F90, &qword_100116F80, NSRunLoop_ptr);
  v281 = v440;
  v282 = v444;
  sub_1000C6104();
  sub_100010F24(v280, &unk_100117770, &unk_1000CEF10);

  (*(v441 + 8))(v275, v282);
  v552 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001E490(&qword_100118448, &qword_1001183A8, &qword_1000D0B10);

  v283 = v532;
  sub_1000C6124();

  (*(v442 + 8))(v281, v283);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v284 = v555;
  sub_1000C6114();
  (v528)(v274, v284);
  v285 = *(v254 + 3);
  swift_beginAccess();

  v532 = sub_10000FEB8(&unk_100118450, &qword_1000CC940);
  sub_1000C6064();
  swift_endAccess();

  v442 = sub_10001E490(&qword_100116F60, &qword_100116EC0, &unk_1000CC930);
  v286 = v445;
  sub_1000C5F84();
  v287 = swift_allocObject();
  swift_weakInit();
  v288 = swift_allocObject();
  *(v288 + 16) = sub_100079A98;
  *(v288 + 24) = v287;
  v444 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  sub_10001E490(&unk_100118460, &qword_100118390, &qword_1000D0AE8);
  v289 = v448;
  v290 = v447;
  sub_1000C60E4();

  (*(v446 + 8))(v286, v290);
  v291 = *(v254 + 3);
  swift_beginAccess();

  v292 = sub_10000FEB8(&qword_100116990, &unk_1000CF2A0);
  v293 = v456;
  v447 = v292;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118470, &unk_100118398, &unk_1000D0AF0);
  v294 = v450;
  sub_1000C6134();
  (*(v449 + 8))(v289, v294);
  v295 = v457;
  v296 = v539;
  (*(v457 + 16))(v452, v293, v539);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();

  v457 = *(v295 + 8);
  (v457)(v293, v296);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v297 = v462;
  v298 = v555;
  sub_1000C6114();
  (v528)(v274, v298);
  swift_beginAccess();
  v299 = v556;
  sub_1000C6064();
  swift_endAccess();
  v300 = v461;
  v301 = *(v461 + 116);
  v571 = sub_10001E490(&qword_100118478, &qword_1001183B0, &qword_1000D0B18);
  sub_100079AD8();
  v302 = v558;
  sub_1000C6114();
  (v533)(v299, v302);
  v303 = *(v254 + 3);
  swift_beginAccess();
  v304 = v300[30];

  sub_1000C6064();
  swift_endAccess();

  swift_beginAccess();
  sub_10000FEB8(&unk_100117800, &unk_1000D0B90);
  v305 = v453;
  sub_1000C6064();
  swift_endAccess();
  v306 = v300[31];
  sub_10001E490(&unk_100118490, &qword_1001177C0, &qword_1000CEF60);
  sub_100048C1C();
  v307 = v455;
  sub_1000C6114();
  (*(v454 + 8))(v305, v307);
  swift_beginAccess();
  sub_10000FEB8(&unk_1001184A0, &qword_1000CC8A0);
  v308 = v458;
  sub_1000C6064();
  swift_endAccess();
  v309 = v300[32];
  sub_10001E490(&unk_100116FD0, &qword_100116E60, &qword_1000CD230);
  sub_100035290();
  v310 = v460;
  sub_1000C6114();
  (*(v459 + 8))(v308, v310);
  v311 = *(v254 + 3);
  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  v312 = v300[33];
  sub_10001E490(&unk_100117830, &qword_1001177A0, &qword_1000CEF40);
  sub_100048C70();
  v313 = v539;
  sub_1000C6114();
  (v457)(v293, v313);
  v314 = [v563 mainRunLoop];
  v577 = v314;
  v315 = v575;
  (v567)(v575, 1, 1, v568);
  sub_10001E490(&qword_1001184C8, &qword_100118380, &qword_1000D0AD8);
  v316 = v463;
  sub_1000C6104();
  sub_100010F24(v315, &unk_100117770, &unk_1000CEF10);

  sub_100010F24(v297, &qword_100118380, &qword_1000D0AD8);
  v317 = swift_allocObject();
  swift_weakInit();
  v318 = swift_allocObject();
  v319 = v576;
  *(v318 + 16) = v317;
  *(v318 + 24) = v319;
  v320 = swift_allocObject();
  *(v320 + 16) = sub_100079B6C;
  *(v320 + 24) = v318;
  sub_10001E490(&unk_1001184D0, &qword_100118388, &qword_1000D0AE0);

  v321 = v465;
  sub_1000C6124();

  (*(v464 + 8))(v316, v321);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  v322 = *(v254 + 3);
  swift_beginAccess();

  v323 = v540;
  sub_1000C6064();
  swift_endAccess();

  v324 = [v563 mainRunLoop];
  v577 = v324;
  v325 = v575;
  (v567)(v575, 1, 1, v568);
  v326 = v467;
  v327 = v541;
  sub_1000C6104();
  sub_100010F24(v325, &unk_100117770, &unk_1000CEF10);

  (*(v466 + 8))(v323, v327);
  swift_allocObject();
  swift_weakInit();
  sub_10001E490(&qword_1001169B0, &qword_1001169A8, &qword_1000D0AD0);
  v328 = v469;
  sub_1000C6124();

  (*(v468 + 8))(v326, v328);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v329 = v556;
  sub_1000C6064();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v330 = v558;
  sub_1000C6124();

  (v533)(v329, v330);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v331 = v470;
  sub_1000C6064();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_10001E490(&qword_1001184E0, &unk_100118370, &qword_1000D0AC8);
  v332 = v472;
  sub_1000C6124();

  (*(v471 + 8))(v331, v332);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v333 = v473;
  sub_1000C6064();
  swift_endAccess();
  v334 = swift_allocObject();
  swift_weakInit();
  v335 = swift_allocObject();
  *(v335 + 16) = sub_100079BCC;
  *(v335 + 24) = v334;
  sub_10001E490(&qword_1001184E8, &qword_100118368, &qword_1000D0AC0);
  v336 = v475;
  sub_1000C6124();

  (*(v474 + 8))(v333, v336);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v337 = v476;
  sub_1000C6064();
  swift_endAccess();
  v338 = swift_allocObject();
  swift_weakInit();
  v339 = swift_allocObject();
  *(v339 + 16) = sub_100079C00;
  *(v339 + 24) = v338;
  sub_10001E490(&unk_1001184F0, &qword_100118360, &qword_1000D0AB8);
  v340 = v478;
  sub_1000C6124();

  (*(v477 + 8))(v337, v340);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v341 = v479;
  sub_1000C6064();
  swift_endAccess();
  v342 = swift_allocObject();
  swift_weakInit();
  v343 = swift_allocObject();
  *(v343 + 16) = sub_100079C34;
  *(v343 + 24) = v342;
  sub_10001E490(&qword_100116F38, &qword_100116EC8, &qword_1000D0AB0);
  v344 = v481;
  sub_1000C6124();

  (*(v480 + 8))(v341, v344);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v345 = v543;
  sub_1000C6064();
  swift_endAccess();
  v346 = v544;
  sub_1000C6114();
  (v431)(v345, v346);
  swift_beginAccess();
  v347 = v546;
  sub_1000C6064();
  swift_endAccess();
  v348 = v547;
  sub_1000C6114();
  (v429)(v347, v348);
  swift_beginAccess();
  v349 = v483;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118500, &qword_100118338, &qword_1000D0A90);
  sub_100079C68();
  v350 = v487;
  sub_1000C6114();
  v351 = *(v485 + 8);
  v351(v349, v350);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v351(v349, v350);
  sub_10001E490(&qword_100118518, &qword_100118340, &qword_1000D0A98);
  v352 = v488;
  sub_1000C5FC4();
  v353 = swift_allocObject();
  swift_weakInit();
  v354 = swift_allocObject();
  *(v354 + 16) = v353;
  *(v354 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v354 + 40) = v499;
  v355 = swift_allocObject();
  *(v355 + 16) = &unk_1000D0BA8;
  *(v355 + 24) = v354;
  v356 = swift_allocObject();
  *(v356 + 16) = &unk_1000D0BB8;
  *(v356 + 24) = v355;

  sub_1000C5FF4();
  sub_10000FEB8(&qword_100118520, &qword_1000D0BC0);
  sub_10001E490(&qword_100118528, &qword_100118348, &qword_1000D0AA0);
  sub_10001E490(&qword_100118530, &qword_100118520, &qword_1000D0BC0);
  v357 = v491;
  v358 = v490;
  v359 = v352;
  sub_1000C60F4();

  sub_10001E490(&qword_100118538, &qword_100118330, &qword_1000D0A88);
  v360 = v494;
  v361 = sub_1000C60C4();

  (*(v493 + 8))(v357, v360);
  (*(v489 + 8))(v359, v358);
  v577 = v361;
  v362 = [v563 mainRunLoop];
  v581 = v362;
  v363 = v575;
  (v567)(v575, 1, 1, v568);
  sub_10000FEB8(&qword_100118540, &qword_1000D0BC8);
  sub_10001E490(&qword_100118548, &qword_100118540, &qword_1000D0BC8);
  v364 = v492;
  sub_1000C6104();
  sub_100010F24(v363, &unk_100117770, &unk_1000CEF10);

  swift_beginAccess();
  v365 = v498;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100118550, &unk_100118350, &qword_1000D0AA8);
  v366 = v496;
  sub_1000C6134();
  (*(v495 + 8))(v364, v366);
  v367 = v500;
  v368 = v501;
  (*(v500 + 16))(v497, v365, v501);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (*(v367 + 8))(v365, v368);
  swift_beginAccess();
  v369 = v517;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_1001178E0, &qword_100116998, &unk_1000CC910);
  sub_10001E3FC();
  v370 = v550;
  sub_1000C6114();
  v371 = v515;
  v573 = *(v515 + 8);
  (v573)(v369, v370);
  v372 = *(v254 + 3);
  swift_beginAccess();

  sub_10000FEB8(&qword_100118568, &unk_1000D0BD0);
  v373 = v510;
  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&qword_100118570, &qword_100118308, &qword_1000D0A60);
  sub_100079FFC();
  v374 = v513;
  sub_1000C6114();
  (*(v512 + 8))(v373, v374);
  sub_10001E490(&qword_1001178F0, &qword_100117710, &qword_1000CEEB0);
  sub_10001E490(&qword_1001185A0, &qword_100118310, &qword_1000D0A68);
  v375 = v503;
  sub_1000C5F84();
  sub_10001E490(&qword_1001185A8, &qword_100118318, &qword_1000D0A70);
  v376 = v506;
  v377 = v507;
  sub_1000C60E4();
  (*(v505 + 8))(v375, v377);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_1001185B0, &unk_100118320, &unk_1000D0A78);
  v378 = v509;
  sub_1000C6134();
  (*(v508 + 8))(v376, v378);
  v379 = v550;
  (*(v371 + 16))(v516, v369, v550);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (v573)(v369, v379);
  v380 = *&v254[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_networkMonitor];
  swift_beginAccess();

  sub_10000FEB8(&qword_1001185B8, &qword_1000D0BE0);
  v381 = v518;
  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&qword_1001185C0, &qword_1001182F0, &qword_1000D0A48);
  sub_10007A0AC();
  v382 = v521;
  v383 = v520;
  sub_1000C6114();
  (*(v519 + 8))(v381, v383);
  v384 = [v563 mainRunLoop];
  v577 = v384;
  v385 = v575;
  (v567)(v575, 1, 1, v568);
  sub_10001E490(&qword_1001185D0, &qword_1001182F8, &qword_1000D0A50);
  v386 = v524;
  v387 = v523;
  sub_1000C6104();
  sub_100010F24(v385, &unk_100117770, &unk_1000CEF10);

  (*(v522 + 8))(v382, v387);
  swift_allocObject();
  swift_weakInit();

  sub_10001E490(&qword_1001185D8, &qword_100118300, &qword_1000D0A58);
  v388 = v526;
  sub_1000C6124();

  (*(v525 + 8))(v386, v388);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  return v254;
}

void *sub_1000782B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000FEB8(&unk_100118640, &qword_1000D0F70);
    v3 = sub_1000C7224();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1000C6D84();
      sub_1000C7464();
      v29 = v7;
      sub_1000C6DD4();
      v9 = sub_1000C7494();

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
        v18 = sub_1000C6D84();
        v20 = v19;
        if (v18 == sub_1000C6D84() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1000C73A4();

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
  result = qword_100117F90;
  if (!qword_100117F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100078500()
{
  sub_10001D1A8(319, &qword_100117460);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_10001D1A8(319, &qword_100117FA8);
    if (v4 <= 0x3F)
    {
      v43 = *(v3 - 8) + 64;
      sub_10001D1A8(319, &qword_100117FB0);
      if (v6 <= 0x3F)
      {
        v44 = *(v5 - 8) + 64;
        sub_10001D1A8(319, &qword_100117FB8);
        if (v8 <= 0x3F)
        {
          v45 = *(v7 - 8) + 64;
          sub_10002F0A0(319, &qword_100117FC0, &qword_100117FC8, &unk_1000D0028);
          if (v10 <= 0x3F)
          {
            v46 = *(v9 - 8) + 64;
            sub_10001D1A8(319, &qword_100117FD0);
            if (v12 <= 0x3F)
            {
              v47 = *(v11 - 8) + 64;
              sub_10001D1A8(319, &qword_100117FD8);
              if (v14 <= 0x3F)
              {
                v48 = *(v13 - 8) + 64;
                sub_10001D1A8(319, &qword_100117FE0);
                if (v16 <= 0x3F)
                {
                  v49 = *(v15 - 8) + 64;
                  sub_10002F0A0(319, &unk_100117450, &qword_100116C80, &unk_1000CE870);
                  if (v18 <= 0x3F)
                  {
                    v50 = *(v17 - 8) + 64;
                    sub_10002F0A0(319, &qword_100117FE8, &qword_100117FF0, &qword_1000D0038);
                    if (v20 <= 0x3F)
                    {
                      v51 = *(v19 - 8) + 64;
                      sub_10001D1A8(319, &qword_100117FF8);
                      if (v22 <= 0x3F)
                      {
                        v52 = *(v21 - 8) + 64;
                        sub_10001D1A8(319, &qword_100118000);
                        if (v24 <= 0x3F)
                        {
                          v53 = *(v23 - 8) + 64;
                          sub_10002F0A0(319, &qword_100118008, &qword_100118010, &unk_1000D0058);
                          if (v26 <= 0x3F)
                          {
                            v54 = *(v25 - 8) + 64;
                            sub_10002F0A0(319, &qword_100118018, &qword_100116260, &qword_1000CD940);
                            if (v28 <= 0x3F)
                            {
                              v55 = *(v27 - 8) + 64;
                              sub_10002F0A0(319, &qword_1001179F8, &qword_100116310, &qword_1000CBBC0);
                              if (v30 <= 0x3F)
                              {
                                v31 = *(v29 - 8) + 64;
                                sub_100078C1C(319, qword_100116C90, &qword_100118020, UIImage_ptr);
                                if (v33 <= 0x3F)
                                {
                                  v56 = *(v32 - 8) + 64;
                                  sub_10002F0A0(319, &qword_100118028, &unk_100118030, &qword_1000D0088);
                                  if (v35 <= 0x3F)
                                  {
                                    v57 = *(v34 - 8) + 64;
                                    sub_10001D1A8(319, &qword_100116C88);
                                    if (v37 <= 0x3F)
                                    {
                                      v38 = *(v36 - 8) + 64;
                                      sub_100078C1C(319, &qword_100118040, &qword_100118048, CKContainerID_ptr);
                                      if (v40 <= 0x3F)
                                      {
                                        v58 = *(v39 - 8) + 64;
                                        sub_10002F0A0(319, &qword_100118050, &unk_100118058, &qword_1000D0090);
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

void sub_100078C1C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100010778(255, a3, a4);
    v5 = sub_1000C60B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100078D40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000FEB8(a2, a3);
    v5 = sub_1000C7324();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100071DEC(v7, v8);
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

unint64_t sub_100078E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000FEB8(&unk_1001170A0, &qword_1000CDD38);
    v3 = sub_1000C7324();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_100071E64(v5);
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

void *sub_100078F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000FEB8(&unk_100118650, &qword_1000D0F90);
  v3 = sub_1000C7324();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_100071EEC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100071EEC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100079048()
{
  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CFF90;
  *(inited + 32) = 7;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v69._countAndFlagsBits = 0x80000001000DAEC0;
  v82._object = 0x80000001000DAE60;
  v82._countAndFlagsBits = 0xD00000000000005DLL;
  v95.value._countAndFlagsBits = 0;
  v95.value._object = 0;
  v3.super.isa = v2;
  v108._countAndFlagsBits = 0;
  v108._object = 0xE000000000000000;
  v4 = sub_1000C5B74(v82, v95, v3, v108, v69);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 8;
  v7 = [v1 mainBundle];
  v70._countAndFlagsBits = 0x80000001000DAF50;
  v83._countAndFlagsBits = 0xD00000000000005FLL;
  v83._object = 0x80000001000DAEF0;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v8.super.isa = v7;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  v9 = sub_1000C5B74(v83, v96, v8, v109, v70);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 9;
  v12 = [v1 mainBundle];
  v71._countAndFlagsBits = 0x80000001000DAFF0;
  v84._object = 0x80000001000DAF90;
  v84._countAndFlagsBits = 0xD00000000000005DLL;
  v97.value._countAndFlagsBits = 0;
  v97.value._object = 0;
  v13.super.isa = v12;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  v14 = sub_1000C5B74(v84, v97, v13, v110, v71);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 10;
  v17 = [v1 mainBundle];
  v72._countAndFlagsBits = 0x80000001000DB090;
  v85._countAndFlagsBits = 0xD000000000000062;
  v85._object = 0x80000001000DB020;
  v98.value._countAndFlagsBits = 0;
  v98.value._object = 0;
  v18.super.isa = v17;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v19 = sub_1000C5B74(v85, v98, v18, v111, v72);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 11;
  v22 = [v1 mainBundle];
  v73._countAndFlagsBits = 0x80000001000DB130;
  v86._countAndFlagsBits = 0xD00000000000005ELL;
  v86._object = 0x80000001000DB0D0;
  v99.value._countAndFlagsBits = 0;
  v99.value._object = 0;
  v23.super.isa = v22;
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  v24 = sub_1000C5B74(v86, v99, v23, v112, v73);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  *(inited + 152) = 0;
  v27 = [v1 mainBundle];
  v74._countAndFlagsBits = 0x80000001000DB160;
  v87._countAndFlagsBits = 0xD00000000000005FLL;
  v87._object = 0x80000001000DAEF0;
  v100.value._countAndFlagsBits = 0;
  v100.value._object = 0;
  v28.super.isa = v27;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  v29 = sub_1000C5B74(v87, v100, v28, v113, v74);
  v31 = v30;

  *(inited + 160) = v29;
  *(inited + 168) = v31;
  *(inited + 176) = 1;
  v32 = [v1 mainBundle];
  v75._countAndFlagsBits = 0x80000001000DB200;
  v88._countAndFlagsBits = 0xD000000000000061;
  v88._object = 0x80000001000DB190;
  v101.value._countAndFlagsBits = 0;
  v101.value._object = 0;
  v33.super.isa = v32;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v34 = sub_1000C5B74(v88, v101, v33, v114, v75);
  v36 = v35;

  *(inited + 184) = v34;
  *(inited + 192) = v36;
  *(inited + 200) = 2;
  v37 = [v1 mainBundle];
  v76._countAndFlagsBits = 0x80000001000DB2A0;
  v89._countAndFlagsBits = 0xD000000000000064;
  v89._object = 0x80000001000DB230;
  v102.value._countAndFlagsBits = 0;
  v102.value._object = 0;
  v38.super.isa = v37;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v39 = sub_1000C5B74(v89, v102, v38, v115, v76);
  v41 = v40;

  *(inited + 208) = v39;
  *(inited + 216) = v41;
  *(inited + 224) = 3;
  v42 = [v1 mainBundle];
  v77._countAndFlagsBits = 0x80000001000DB350;
  v90._countAndFlagsBits = 0xD000000000000065;
  v90._object = 0x80000001000DB2E0;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v43.super.isa = v42;
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  v44 = sub_1000C5B74(v90, v103, v43, v116, v77);
  v46 = v45;

  *(inited + 232) = v44;
  *(inited + 240) = v46;
  *(inited + 248) = 4;
  v47 = [v1 mainBundle];
  v78._countAndFlagsBits = 0x80000001000DB3F0;
  v91._countAndFlagsBits = 0xD00000000000005ELL;
  v91._object = 0x80000001000DB390;
  v104.value._countAndFlagsBits = 0;
  v104.value._object = 0;
  v48.super.isa = v47;
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  v49 = sub_1000C5B74(v91, v104, v48, v117, v78);
  v51 = v50;

  *(inited + 256) = v49;
  *(inited + 264) = v51;
  *(inited + 272) = 5;
  v52 = [v1 mainBundle];
  v79._countAndFlagsBits = 0x80000001000DB480;
  v92._countAndFlagsBits = 0xD00000000000005ELL;
  v92._object = 0x80000001000DB420;
  v105.value._countAndFlagsBits = 0;
  v105.value._object = 0;
  v53.super.isa = v52;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v54 = sub_1000C5B74(v92, v105, v53, v118, v79);
  v56 = v55;

  *(inited + 280) = v54;
  *(inited + 288) = v56;
  *(inited + 296) = 6;
  v57 = [v1 mainBundle];
  v93._countAndFlagsBits = 0xD00000000000005CLL;
  v80._countAndFlagsBits = 0x80000001000DB510;
  v93._object = 0x80000001000DB4B0;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v58.super.isa = v57;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v59 = sub_1000C5B74(v93, v106, v58, v119, v80);
  v61 = v60;

  *(inited + 304) = v59;
  *(inited + 312) = v61;
  *(inited + 320) = 13;
  v62 = [v1 mainBundle];
  v81._countAndFlagsBits = 0x80000001000DB5A0;
  v94._object = 0x80000001000DB540;
  v94._countAndFlagsBits = 0xD00000000000005DLL;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v63.super.isa = v62;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v64 = sub_1000C5B74(v94, v107, v63, v120, v81);
  v66 = v65;

  *(inited + 328) = v64;
  *(inited + 336) = v66;
  v67 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  return v67;
}

uint64_t sub_10007982C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011080;

  return sub_100012B38(a1, v4);
}

uint64_t sub_1000798F4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100079974@<X0>(void *a1@<X8>)
{
  result = sub_1000C6434();
  *a1 = v3;
  return result;
}

uint64_t sub_1000799C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100079A18()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100079A60()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079AA0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, *(a1 + 1));
  *a2 = result;
  return result;
}

unint64_t sub_100079AD8()
{
  result = qword_100118480;
  if (!qword_100118480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118480);
  }

  return result;
}

uint64_t sub_100079B2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100079B6C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  return sub_10005AA4C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100079B74(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], *(a1 + 1), a1[16], a1[17], *(a1 + 3));
}

uint64_t sub_100079BD4(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_100079C08(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_100079C3C(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_100079C68()
{
  result = qword_100118508;
  if (!qword_100118508)
  {
    sub_100010624(&unk_100118030, &qword_1000D0088);
    sub_10003515C(&qword_100116F70, &qword_100118020, UIImage_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118508);
  }

  return result;
}

uint64_t sub_100079D18()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100079D50(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 2);
  v11 = v4[3];
  v12 = v4[4];
  v13 = *(v4 + 5);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_100079E30;

  return sub_10005F358(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_100079E30(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100079F2C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100017CBC;

  return sub_10006001C(a1, a2, v7);
}

unint64_t sub_100079FFC()
{
  result = qword_100118578;
  if (!qword_100118578)
  {
    sub_100010624(&qword_100118580, &qword_1000D1B40);
    sub_10003515C(&qword_100118588, &unk_100118590, CKContainerSetupInfo_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118578);
  }

  return result;
}

unint64_t sub_10007A0AC()
{
  result = qword_1001185C8;
  if (!qword_1001185C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001185C8);
  }

  return result;
}

uint64_t sub_10007A110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011080;

  return sub_100060614(a1, v4, v5, v6);
}

uint64_t sub_10007A1C4()
{
  v1 = sub_10000FEB8(&unk_100118600, &qword_1000D0C10);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = sub_1000C5D84();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007A310(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10000FEB8(&unk_100118600, &qword_1000D0C10) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100070E44(a1, a2, v6, v7, v8);
}

uint64_t sub_10007A3A0()
{
  v1 = sub_10000FEB8(&unk_100118600, &qword_1000D0C10);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  v7 = v0 + v3;
  v8 = sub_1000C5D84();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16, v2 | 7);
}

uint64_t sub_10007A50C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000FEB8(&unk_100118600, &qword_1000D0C10) - 8);
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
  v14[1] = sub_100017CBC;

  return sub_100071054(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_10007A668(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 176) = a3;
  *(v4 + 184) = a4;
  *(v4 + 168) = a2;
  *(v4 + 160) = a1;
  v5 = sub_1000C5F74();
  *(v4 + 192) = v5;
  v6 = *(v5 - 8);
  *(v4 + 200) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  sub_1000C6F14();
  *(v4 + 216) = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  *(v4 + 224) = v9;
  *(v4 + 232) = v8;

  return _swift_task_switch(sub_10007A764, v9, v8);
}

uint64_t sub_10007A764()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  *(v0 + 264) = sub_1000C5D54();
  v5 = objc_allocWithZone(QLThumbnailGenerationRequest);
  sub_1000C5D24(v6);
  v8 = v7;
  v9 = [v5 initWithFileAtURL:v7 size:-1 scale:v3 representationTypes:{v2, v1}];
  *(v0 + 240) = v9;

  v10 = [objc_opt_self() sharedGenerator];
  *(v0 + 248) = v10;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10007A920;
  v11 = swift_continuation_init();
  *(v0 + 136) = sub_10000FEB8(&qword_100118610, &qword_1000D0C78);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10007B980;
  *(v0 + 104) = &unk_100109340;
  *(v0 + 112) = v11;
  [v10 generateBestRepresentationForRequest:v9 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10007A920()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_10007AB10;
  }

  else
  {
    v6 = sub_10007AA50;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10007AA50()
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
    sub_1000C5D34();
  }

  v8 = *(v0 + 208);

  v9 = *(v0 + 8);

  return v9(v6);
}

uint64_t sub_10007AB10()
{
  v27 = v0;
  v1 = *(v0 + 256);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);

  swift_willThrow();
  sub_1000C5F54();
  swift_errorRetain();
  v4 = sub_1000C5F64();
  v5 = sub_1000C6FD4();

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
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v11 = sub_1000C6D94();
    v13 = sub_100071844(v11, v12, &v26);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "generateBestRepresentation throws error: %s", v9, 0xCu);
    sub_100010544(v10);

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
    sub_1000C5D34();
  }

  v20 = *(v0 + 208);

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_10007AD40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100017CBC;

  return sub_10006F230(a1, v4, v5, v6);
}

uint64_t sub_10007ADF4()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v5)
  {
    v2 = [v5 _copyWithoutPersonalInfo];
    sub_100059520();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1000100B0();
    swift_allocError();
    *v4 = 0xD000000000000024;
    *(v4 + 8) = 0x80000001000DAAC0;
    *(v4 + 16) = xmmword_1000CFF50;
    *(v4 + 32) = 0x80000001000DAAF0;
    *(v4 + 40) = 11;
    return swift_willThrow();
  }
}

uint64_t sub_10007AF28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_10005F084(a1, v4, v5, v6, v7);
}

uint64_t sub_10007B0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100017CBC;

  return sub_10005E28C(a1, v4, v5, v6);
}

uint64_t sub_10007B190()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100017CBC;

  return sub_10005D5C0();
}

uint64_t sub_10007B244()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100017CBC;

  return sub_10005B98C();
}

uint64_t sub_10007B2F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100017CBC;

  return sub_1000A1CA0(a1, v4, v5, v6);
}

uint64_t sub_10007B438()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100017CBC;

  return sub_10006A7BC();
}

uint64_t sub_10007B510()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007B558(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_10006A4D4(a1, v4, v5, v7, v6);
}

uint64_t sub_10007B620()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007B658()
{
  v1 = sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10007B730(uint64_t a1, void *a2, char a3)
{
  v7 = *(*(sub_10000FEB8(&qword_100118670, &qword_1000D1068) - 8) + 80);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);

  sub_100064A70(a1, a2, a3 & 1, v8, v9);
}

uint64_t sub_10007B7C8()
{
  v1 = sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10007B898(uint64_t a1, char a2)
{
  v5 = *(*(sub_10000FEB8(&qword_100118670, &qword_1000D1068) - 8) + 80);
  v6 = *(v2 + 16);

  return sub_100064B48(a1, a2 & 1, v6);
}

uint64_t sub_10007B984()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10007B9F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10007BA94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10007BB14(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10007BBB0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(*(v1 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_10007BCD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  v9 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__readWritePermissions;
  v10 = sub_10000FEB8(&qword_100117658, &qword_1000CEDF8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__readWritePermissionSelected;
  v12 = sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__personHasAddPeopleToggle;
  v14 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v13, v14);
  v15(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__savingInProgress, v14);
  v15(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__shouldShowRemoveAccess, v14);
  v15(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__shouldShowRemoveMe, v14);
  return v0;
}

uint64_t sub_10007BE8C()
{
  sub_10007BCD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonInfoViewModel()
{
  result = qword_1001186D8;
  if (!qword_1001186D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007BF38()
{
  sub_10007C09C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10001D1A8(319, &qword_100117490);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10001D1A8(319, &qword_100117460);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10007C09C()
{
  if (!qword_100117480)
  {
    sub_100010624(&qword_100117488, &qword_1000CE880);
    v0 = sub_1000C60B4();
    if (!v1)
    {
      atomic_store(v0, &qword_100117480);
    }
  }
}

uint64_t sub_10007C100(uint64_t a1, void *a2, uint64_t a3)
{
  v94 = a3;
  v6 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v85 = v71 - v8;
  v90 = sub_10000FEB8(&unk_100116EE0, &unk_1000CD2A0);
  v93 = *(v90 - 8);
  v9 = *(v93 + 64);
  v10 = __chkstk_darwin(v90);
  v88 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = v71 - v12;
  v92 = sub_10000FEB8(&qword_100117760, &qword_1000CEF00);
  v86 = *(v92 - 8);
  v13 = *(v86 + 64);
  __chkstk_darwin(v92);
  v91 = v71 - v14;
  v75 = sub_10000FEB8(&qword_1001177B8, &qword_1000CEF58);
  v74 = *(v75 - 8);
  v15 = *(v74 + 64);
  __chkstk_darwin(v75);
  v73 = v71 - v16;
  v77 = sub_10000FEB8(&qword_1001187D0, &qword_1000D1150);
  v17 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v76 = v71 - v18;
  v19 = sub_10000FEB8(&qword_1001187D8, &qword_1000D1158);
  v79 = *(v19 - 8);
  v80 = v19;
  v20 = *(v79 + 64);
  __chkstk_darwin(v19);
  v78 = v71 - v21;
  v22 = sub_10000FEB8(&qword_1001187E0, &qword_1000D1160);
  v83 = *(v22 - 8);
  v84 = v22;
  v23 = *(v83 + 64);
  __chkstk_darwin(v22);
  v82 = v71 - v24;
  if (_swiftEmptyArrayStorage >> 62 && sub_1000C72F4())
  {
    v25 = sub_1000727E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v25 = &_swiftEmptySetSingleton;
  }

  v87 = v3;
  *(v3 + 112) = v25;
  v26 = v3 + 112;
  *(v26 - 96) = a2;
  *(v26 - 88) = v94;
  *(v26 - 80) = a1;
  v27 = a2[3];
  *(v26 - 72) = a2[2];
  *(v26 - 64) = v27;
  v28 = a2[5];
  *(v26 - 56) = a2[4];
  *(v26 - 48) = v28;
  v29 = a2[14];
  *(v26 - 40) = a2[13];
  *(v26 - 32) = v29;
  v30 = a2[12];
  *(v26 - 24) = a2[11];
  *(v26 - 16) = v30;
  v31 = *(a2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_contact);
  v81 = v26;
  *(v26 - 8) = v31;
  v32 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();

  v33 = v31;

  sub_1000C6094();

  v34 = a2;

  v35 = v96;
  v36 = *(a2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role);
  v37 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  LODWORD(v32) = v96;
  v38 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  LOBYTE(v29) = v96;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LODWORD(v31) = v96;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v39 = _swiftEmptyArrayStorage;
  if ((v32 & v31 & ((~v29 & 0xC) == 0)) != 0)
  {
    v39 = &off_1001074A8;
  }

  if ((v96 & 0xFE) == 2)
  {
    v40 = v39;
  }

  else
  {
    v40 = &off_100107480;
  }

  if (!v36)
  {
    goto LABEL_10;
  }

  v41 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v96 != 2)
  {
LABEL_10:

    v40 = _swiftEmptyArrayStorage;
  }

  v42 = v87;
  swift_beginAccess();
  v95 = v40;
  sub_10000FEB8(&qword_100117488, &qword_1000CE880);
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v96 == 3)
  {
    v43 = 1;
  }

  else
  {
    v43 = v96;
  }

  swift_beginAccess();
  LOBYTE(v95) = v43;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v44 = 0;
  if (v96 == 1 && v36 && !v43)
  {
    v45 = *(a1 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v44 = v96;
  }

  swift_beginAccess();
  LOBYTE(v95) = v44;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v46 = v96;
  swift_beginAccess();
  LOBYTE(v95) = v46;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v47 = 0;
  if (v96 == 1 && v36)
  {
    if (*(v34 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe))
    {
      goto LABEL_22;
    }

    v48 = *(a1 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (v96 == 2)
    {
LABEL_22:
      v47 = 0;
    }

    else
    {
      v47 = v96 & (v35 != 1);
    }
  }

  swift_beginAccess();
  LOBYTE(v95) = v47;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v96 == 1)
  {
    if (v36)
    {
      v49 = *(v34 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe);
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  swift_beginAccess();
  LOBYTE(v95) = v49;
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  v50 = v73;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117910, &qword_1001177B8, &qword_1000CEF58);
  sub_100042288();
  v51 = v75;
  sub_1000C6114();
  (*(v74 + 8))(v50, v51);
  v52 = *(a1 + 16);
  swift_beginAccess();

  v75 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v53 = v89;
  sub_1000C6064();
  swift_endAccess();

  v74 = sub_10001E490(&unk_100116F20, &unk_100116EE0, &unk_1000CD2A0);
  v54 = v90;
  sub_1000C6114();
  v71[0] = a1;
  v55 = *(v93 + 8);
  KeyPath = v93 + 8;
  v73 = v55;
  (v55)(v53, v54);
  sub_10001E490(&qword_1001187E8, &qword_1001187D0, &qword_1000D1150);
  v71[1] = sub_10001E490(&qword_100117890, &qword_100117760, &qword_1000CEF00);
  v56 = v78;
  sub_1000C5F84();
  v57 = [objc_opt_self() mainRunLoop];
  v96 = v57;
  v58 = sub_1000C71A4();
  v59 = v85;
  (*(*(v58 - 8) + 56))(v85, 1, 1, v58);
  sub_10007D210();
  sub_10001E490(&qword_1001187F0, &qword_1001187D8, &qword_1000D1158);
  sub_10001E2AC();
  v60 = v82;
  v61 = v80;
  sub_1000C6104();
  sub_10001E314(v59);

  (*(v79 + 8))(v56, v61);
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  v64 = v71[0];
  *(v63 + 16) = v62;
  *(v63 + 24) = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_10007D2D4;
  *(v65 + 24) = v63;
  sub_10001E490(qword_1001187F8, &qword_1001187E0, &qword_1000D1160);

  v66 = v84;
  sub_1000C6124();

  (*(v83 + 8))(v60, v66);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v67 = v91;
  sub_1000C6114();
  v68 = v73;
  (v73)(v53, v54);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v69 = v92;
  sub_1000C6134();
  (*(v86 + 8))(v67, v69);
  (*(v93 + 16))(v88, v53, v54);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v68(v53, v54);
  return v42;
}

unint64_t sub_10007D210()
{
  result = qword_100116F80;
  if (!qword_100116F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100116F80);
  }

  return result;
}

uint64_t sub_10007D25C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007D294()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007D2D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10007BBB0();
}

uint64_t sub_10007D2DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t Publishers.CSCombineLatest5.init(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v17 = type metadata accessor for Publishers.CSCombineLatest5();
  (*(*(a7 - 8) + 32))(a9 + v17[25], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v17[26], a3, a8);
  (*(*(a10 - 8) + 32))(a9 + v17[27], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v17[28], a5, a11);
}

uint64_t Publishers.CSCombineLatest6.init(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v16 = type metadata accessor for Publishers.CSCombineLatest6();
  (*(*(a8 - 8) + 32))(a9 + v16[29], a2, a8);
  (*(*(a10 - 8) + 32))(a9 + v16[30], a3, a10);
  (*(*(a11 - 8) + 32))(a9 + v16[31], a4, a11);
  (*(*(a12 - 8) + 32))(a9 + v16[32], a5, a12);
  return (*(*(a13 - 8) + 32))(a9 + v16[33], a6, a13);
}

uint64_t Publishers.CSCombineLatest5.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a3;
  v86 = a4;
  v87 = a1;
  v95 = *(a2 + 32);
  AssociatedTypeWitness = v95;
  v100 = *(a2 + 72);
  v92 = v100;
  v93 = *(a2 + 16);
  v64[1] = *(&v93 + 1);
  v71 = v93;
  v97 = v93;
  v94 = *(a2 + 56);
  v76 = v94;
  v99 = v94;
  v73 = *(&v94 + 1);
  v96 = sub_1000C5F94();
  v5 = *(a2 + 40);
  v89 = *(a2 + 48);
  v90 = &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>;
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 80);
  v100 = *(a2 + 88);
  v78 = v6;
  v75 = v100;
  v91 = sub_1000C5F94();
  *&v97 = swift_getAssociatedTypeWitness();
  v7 = *(&v93 + 1);
  *(&v97 + 1) = swift_getAssociatedTypeWitness();
  v8 = v95;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = v5;
  *&v99 = swift_getAssociatedTypeWitness();
  *(&v99 + 1) = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = v91;
  v80 = swift_getWitnessTable();
  v82 = sub_1000C5FE4();
  v83 = *(v82 - 8);
  v10 = *(v83 + 64);
  v11 = __chkstk_darwin(v82);
  v77 = v64 - v12;
  v72 = *(v89 - 8);
  v13 = *(v72 + 64);
  v14 = __chkstk_darwin(v11);
  v70 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(v5 - 8);
  v16 = *(v68 + 64);
  v17 = __chkstk_darwin(v14);
  v67 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v9 - 8);
  v19 = *(v74 + 64);
  v20 = __chkstk_darwin(v17);
  v90 = v64 - v21;
  v22 = *(v8 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v20);
  v66 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v7;
  v27 = *(v7 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v24);
  v31 = v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v71;
  v33 = *(*(v71 - 8) + 64);
  v34 = __chkstk_darwin(v29);
  v36 = v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(v96 - 8);
  v37 = *(v88 + 64);
  v38 = __chkstk_darwin(v34);
  v40 = v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = v64 - v41;
  v44 = v79;
  (*(v43 + 16))(v36, v79, v32);
  (*(v27 + 16))(v31, v44 + *(a2 + 100), v26);
  (*(v22 + 16))(v66, v44 + *(a2 + 104), v95);
  v65 = v42;
  sub_1000C5FA4();
  (*(v88 + 16))(v40, v42, v96);
  v45 = v69;
  (*(v68 + 16))(v67, v44 + *(a2 + 108), v69);
  v46 = v44 + *(a2 + 112);
  v47 = v89;
  (*(v72 + 16))(v70, v46, v89);
  v48 = v75;
  v49 = v45;
  v50 = v78;
  sub_1000C5FA4();
  v51 = swift_allocObject();
  v52 = v95;
  *&v53 = v95;
  *(&v53 + 1) = v49;
  *(v51 + 32) = v53;
  *(v51 + 16) = v93;
  v55 = v85;
  v54 = v86;
  *(v51 + 48) = v47;
  *(v51 + 56) = v55;
  v56 = v92;
  *&v53 = v92;
  *(&v53 + 1) = v50;
  *(v51 + 80) = v53;
  *(v51 + 64) = v94;
  *(v51 + 96) = v48;
  *(v51 + 104) = v54;
  v57 = swift_allocObject();
  v58 = v94;
  *(v57 + 16) = v93;
  *(v57 + 32) = v52;
  *(v57 + 40) = v49;
  *(v57 + 48) = v47;
  *(v57 + 56) = v55;
  *(v57 + 64) = v58;
  *(v57 + 80) = v56;
  *(v57 + 88) = v50;
  *(v57 + 96) = v48;
  *(v57 + 104) = v54;
  *(v57 + 112) = sub_10007E5E4;
  *(v57 + 120) = v51;
  v59 = v77;
  v61 = v90;
  v60 = v91;
  sub_1000C60E4();

  v62 = v82;
  sub_1000C5FD4();
  (*(v83 + 8))(v59, v62);
  (*(v74 + 8))(v61, v60);
  return (*(v88 + 8))(v65, v96);
}

uint64_t sub_10007E0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v66 = a7;
  v67 = a8;
  v68 = a1;
  v69 = a2;
  v76 = a21;
  v74 = a4;
  v75 = a15;
  v77 = a10;
  v78 = a5;
  v72 = a3;
  v73 = a9;
  v70 = a14;
  v71 = a20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v26 = *(TupleTypeMetadata3 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(TupleTypeMetadata3);
  v64 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v79 = &v61 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v61 - v33;
  __chkstk_darwin(v32);
  v36 = &v61 - v35;
  v37 = *(AssociatedTypeWitness - 8);
  v38 = *(v37 + 16);
  v63 = AssociatedTypeWitness;
  v38(&v61 - v35, a6, AssociatedTypeWitness);
  v39 = *(TupleTypeMetadata3 + 48);
  v61 = v23;
  v40 = *(v23 - 8);
  (*(v40 + 16))(&v36[v39], v66, v23);
  v41 = *(TupleTypeMetadata3 + 64);
  v62 = v24;
  v42 = *(v24 - 8);
  (*(v42 + 16))(&v36[v41], v67, v24);
  v43 = *(v26 + 16);
  v65 = v34;
  v43(v34, v36, TupleTypeMetadata3);
  v44 = *(TupleTypeMetadata3 + 48);
  v66 = *(TupleTypeMetadata3 + 64);
  v67 = v44;
  (*(v37 + 32))(v68, v34, AssociatedTypeWitness);
  v45 = v79;
  v43(v79, v36, TupleTypeMetadata3);
  v46 = *(TupleTypeMetadata3 + 48);
  v68 = *(TupleTypeMetadata3 + 64);
  v47 = v61;
  (*(v40 + 32))(v69, &v45[v46], v61);
  v48 = v64;
  (*(v26 + 32))(v64, v36, TupleTypeMetadata3);
  v49 = *(TupleTypeMetadata3 + 48);
  v50 = v62;
  (*(v42 + 32))(v72, &v48[*(TupleTypeMetadata3 + 64)], v62);
  v51 = swift_getAssociatedTypeWitness();
  (*(*(v51 - 8) + 16))(v74, v73, v51);
  v52 = swift_getAssociatedTypeWitness();
  (*(*(v52 - 8) + 16))(v78, v77, v52);
  v53 = *(v40 + 8);
  v54 = v47;
  v53(&v48[v49], v47);
  v55 = *(v37 + 8);
  v56 = v63;
  v55(v48, v63);
  v57 = *(v42 + 8);
  v58 = v79;
  v57(&v79[v68], v50);
  v55(v58, v56);
  v59 = v65;
  v57(&v65[v66], v50);
  return (v53)(&v59[v67], v54);
}

uint64_t sub_10007E62C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v6 = *(TupleTypeMetadata3 + 48);
  v12 = *(TupleTypeMetadata3 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v7 = swift_getTupleTypeMetadata3();
  v8 = a1 + *(v7 + 48);
  v9 = a1 + *(v7 + 64);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a3, a3 + TupleTypeMetadata[12], a3 + TupleTypeMetadata[16], a3 + TupleTypeMetadata[20], a3 + TupleTypeMetadata[24], a1, a1 + v6, a1 + v12, v8, v9);
}

uint64_t sub_10007E7F4()
{
  v1 = *(v0 + 120);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10007E82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 120);
  v13 = *(v2 + 104);
  v11 = *(v2 + 72);
  v12 = *(v2 + 88);
  v10 = *(v2 + 56);
  return sub_10007E62C(a1, *(v2 + 112), a2);
}

uint64_t Publishers.CSCombineLatest6.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a4;
  v90 = a3;
  v92 = a1;
  v100 = *(a2 + 16);
  v77 = v100;
  v103 = v100;
  v67[1] = *(&v100 + 1);
  v93 = *(a2 + 32);
  AssociatedTypeWitness = v93;
  v99 = *(a2 + 64);
  v81 = v99;
  v105 = v99;
  v80 = *(&v99 + 1);
  v106 = *(a2 + 80);
  *&v98 = v106;
  v97 = sub_1000C5F94();
  v5 = *(a2 + 40);
  v102 = *(a2 + 48);
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  *v95 = v102;
  v83 = v6;
  v101 = v7;
  v107 = v7;
  v94 = *(&v7 + 1);
  v96 = sub_1000C5FB4();
  *&v103 = swift_getAssociatedTypeWitness();
  v8 = *(&v100 + 1);
  *(&v103 + 1) = swift_getAssociatedTypeWitness();
  v9 = v93;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v5;
  v73 = v5;
  *&v105 = swift_getAssociatedTypeWitness();
  v11 = v102;
  *(&v105 + 1) = swift_getAssociatedTypeWitness();
  v106 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = v96;
  v85 = swift_getWitnessTable();
  v87 = sub_1000C5FE4();
  v88 = *(v87 - 8);
  v13 = *(v88 + 64);
  v14 = __chkstk_darwin(v87);
  v82 = v67 - v15;
  v78 = *(*(&v102 + 1) - 8);
  v16 = *(v78 + 64);
  v17 = __chkstk_darwin(v14);
  v76 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v11 - 8);
  v19 = *(v75 + 64);
  v20 = __chkstk_darwin(v17);
  v74 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v10 - 8);
  v22 = *(v72 + 64);
  v23 = __chkstk_darwin(v20);
  v71 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(v12 - 8);
  v25 = *(v79 + 64);
  v26 = __chkstk_darwin(v23);
  v94 = v67 - v27;
  v28 = *(v9 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v26);
  v68 = v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v8;
  v33 = *(v8 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v30);
  v37 = v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v77;
  v39 = *(*(v77 - 8) + 64);
  v40 = __chkstk_darwin(v35);
  v42 = v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(v97 - 8);
  v43 = v70;
  v44 = *(v70 + 64);
  v45 = __chkstk_darwin(v40);
  v67[0] = v67 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = v67 - v47;
  v50 = v84;
  (*(v49 + 16))(v42, v84, v38);
  (*(v33 + 16))(v37, v50 + *(a2 + 116), v32);
  v51 = v93;
  (*(v28 + 16))(v68, v50 + *(a2 + 120), v93);
  v69 = v48;
  sub_1000C5FA4();
  v52 = v97;
  (*(v43 + 16))(v67[0], v48, v97);
  v53 = v73;
  (*(v72 + 16))(v71, v50 + *(a2 + 124), v73);
  (*(v75 + 16))(v74, v50 + *(a2 + 128), *v95);
  (*(v78 + 16))(v76, v50 + *(a2 + 132), *&v95[8]);
  v54 = v83;
  v55 = v53;
  sub_1000C5FC4();
  v56 = swift_allocObject();
  *&v57 = v51;
  *(&v57 + 1) = v55;
  *&v95[8] = v57;
  *(v56 + 32) = v57;
  *(v56 + 16) = v100;
  *(v56 + 48) = v102;
  v58 = v90;
  *(v56 + 64) = v90;
  *&v57 = v98;
  *(&v57 + 1) = v54;
  v98 = v57;
  *(v56 + 88) = v57;
  *(v56 + 72) = v99;
  *(v56 + 104) = v101;
  v59 = v91;
  *(v56 + 120) = v91;
  v60 = swift_allocObject();
  v61 = v102;
  *(v60 + 16) = v100;
  *(v60 + 32) = *&v95[8];
  *(v60 + 48) = v61;
  *(v60 + 64) = v58;
  *(v60 + 72) = v99;
  *(v60 + 104) = v101;
  *(v60 + 88) = v98;
  *(v60 + 120) = v59;
  *(v60 + 128) = sub_10007F98C;
  *(v60 + 136) = v56;
  v62 = v82;
  v63 = v96;
  v64 = v94;
  sub_1000C60E4();

  v65 = v87;
  sub_1000C5FD4();
  (*(v88 + 8))(v62, v65);
  (*(v79 + 8))(v64, v63);
  return (*(v70 + 8))(v69, v52);
}

uint64_t sub_10007F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v72 = a8;
  v73 = a1;
  v74 = a2;
  v86 = a12;
  v87 = a6;
  v81 = a4;
  v82 = a11;
  v84 = a25;
  v85 = a5;
  v83 = a18;
  v79 = a17;
  v80 = a24;
  v77 = a3;
  v78 = a10;
  v71 = a9;
  v75 = a16;
  v76 = a23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v30 = *(TupleTypeMetadata3 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(TupleTypeMetadata3);
  v68 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v67 = &v65 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v65 - v37;
  __chkstk_darwin(v36);
  v40 = &v65 - v39;
  v41 = AssociatedTypeWitness;
  v42 = *(AssociatedTypeWitness - 8);
  v43 = *(v42 + 16);
  v69 = v41;
  v43(&v65 - v39, a7, v41);
  v44 = *(TupleTypeMetadata3 + 48);
  v65 = v27;
  v45 = *(v27 - 8);
  (*(v45 + 16))(&v40[v44], v72, v27);
  v46 = *(TupleTypeMetadata3 + 64);
  v66 = v28;
  v47 = *(v28 - 8);
  (*(v47 + 16))(&v40[v46], v71, v28);
  v48 = *(v30 + 16);
  v70 = v38;
  v48(v38, v40, TupleTypeMetadata3);
  v49 = *(TupleTypeMetadata3 + 48);
  v71 = *(TupleTypeMetadata3 + 64);
  v72 = v49;
  (*(v42 + 32))(v73, v38, v41);
  v50 = v67;
  v48(v67, v40, TupleTypeMetadata3);
  v51 = *(TupleTypeMetadata3 + 48);
  v73 = *(TupleTypeMetadata3 + 64);
  v52 = v65;
  (*(v45 + 32))(v74, &v50[v51], v65);
  v53 = v68;
  (*(v30 + 32))(v68, v40, TupleTypeMetadata3);
  v74 = *(TupleTypeMetadata3 + 48);
  v54 = v66;
  (*(v47 + 32))(v77, &v53[*(TupleTypeMetadata3 + 64)], v66);
  v55 = swift_getAssociatedTypeWitness();
  (*(*(v55 - 8) + 16))(v81, v78, v55);
  v56 = swift_getAssociatedTypeWitness();
  (*(*(v56 - 8) + 16))(v85, v82, v56);
  v57 = swift_getAssociatedTypeWitness();
  (*(*(v57 - 8) + 16))(v87, v86, v57);
  v58 = *(v45 + 8);
  v59 = v52;
  v58(&v53[v74], v52);
  v60 = *(v42 + 8);
  v61 = v69;
  v60(v53, v69);
  v62 = *(v47 + 8);
  v62(&v50[v73], v54);
  v60(v50, v61);
  v63 = v70;
  v62(&v70[v71], v54);
  return (v58)(&v63[v72], v59);
}

uint64_t sub_10007F9DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = a1 + *(TupleTypeMetadata3 + 64);
  v13 = *(TupleTypeMetadata3 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = a1 + TupleTypeMetadata[12];
  v8 = a1 + TupleTypeMetadata[16];
  v9 = a1 + TupleTypeMetadata[20];
  v10 = swift_getTupleTypeMetadata();
  return a2(a3, a3 + v10[12], a3 + v10[16], a3 + v10[20], a3 + v10[24], a3 + v10[28], a1, a1 + v13, v12, v7, v8, v9);
}

uint64_t sub_10007FBF0()
{
  v1 = *(v0 + 136);

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_10007FC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 136);
  v14 = *(v2 + 120);
  v12 = *(v2 + 88);
  v13 = *(v2 + 104);
  v10 = *(v2 + 56);
  v11 = *(v2 + 72);
  return sub_10007F9DC(a1, *(v2 + 128), a2);
}

uint64_t Publishers.CSCombineLatest7.init(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v17 = type metadata accessor for Publishers.CSCombineLatest7();
  (*(*(a10 - 8) + 32))(a9 + v17[33], a2, a10);
  (*(*(a11 - 8) + 32))(a9 + v17[34], a3, a11);
  (*(*(a12 - 8) + 32))(a9 + v17[35], a4, a12);
  (*(*(a13 - 8) + 32))(a9 + v17[36], a5, a13);
  (*(*(a14 - 8) + 32))(a9 + v17[37], a6, a14);
  return (*(*(a15 - 8) + 32))(a9 + v17[38], a7, a15);
}

uint64_t Publishers.CSCombineLatest7.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v106 = a3;
  v108 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v125 = *(a2 + 88);
  v126 = v7;
  v124 = v11;
  v127 = v6;
  AssociatedTypeWitness = v6;
  v129 = v5;
  v130 = v7;
  v120 = v5;
  v131 = v8;
  v132 = v9;
  v117 = v9;
  v118 = v8;
  v133 = v10;
  v134 = v125;
  v116 = v10;
  v135 = v11;
  v12 = sub_1000C5FB4();
  v13 = *(a2 + 56);
  v119 = *(a2 + 48);
  v121 = v13;
  v122 = *(a2 + 64);
  v123 = v12;
  v112 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  v98 = *(a2 + 104);
  v135 = v15;
  v115 = v14;
  v114 = v15;
  v113 = sub_1000C5FB4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v129 = swift_getAssociatedTypeWitness();
  v16 = v126;
  v130 = swift_getAssociatedTypeWitness();
  v17 = v118;
  v131 = swift_getAssociatedTypeWitness();
  v18 = v119;
  v132 = swift_getAssociatedTypeWitness();
  v133 = swift_getAssociatedTypeWitness();
  v134 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = v113;
  v101 = swift_getWitnessTable();
  v103 = sub_1000C5FE4();
  v104 = *(v103 - 8);
  v20 = *(v104 + 64);
  v21 = __chkstk_darwin(v103);
  v99 = &v89 - v22;
  v96 = *(v122 - 8);
  v23 = *(v96 + 64);
  v24 = __chkstk_darwin(v21);
  v95 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *(v13 - 8);
  v26 = *(v94 + 64);
  v27 = __chkstk_darwin(v24);
  v93 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(v18 - 8);
  v29 = *(v92 + 64);
  v30 = __chkstk_darwin(v27);
  v91 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(v19 - 8);
  v32 = *(v97 + 64);
  v33 = __chkstk_darwin(v30);
  v112 = &v89 - v34;
  v89 = *(v17 - 8);
  v35 = *(v89 + 64);
  v36 = __chkstk_darwin(v33);
  v90 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v16 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v36);
  v42 = &v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v120;
  v44 = *(v120 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v40);
  v48 = &v89 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(*(v127 - 8) + 64);
  v50 = __chkstk_darwin(v46);
  v52 = &v89 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(v123 - 8);
  v53 = *(v111 + 64);
  v54 = __chkstk_darwin(v50);
  v109 = &v89 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v110 = &v89 - v56;
  v58 = v100;
  (*(v57 + 16))(v52, v100);
  (*(v44 + 16))(v48, v58 + *(a2 + 132), v43);
  (*(v38 + 16))(v42, v58 + *(a2 + 136), v126);
  (*(v89 + 16))(v90, v58 + *(a2 + 140), v118);
  v59 = v110;
  sub_1000C5FC4();
  (*(v111 + 16))(v109, v59, v123);
  v60 = v119;
  (*(v92 + 16))(v91, v58 + *(a2 + 144), v119);
  v61 = v121;
  (*(v94 + 16))(v93, v58 + *(a2 + 148), v121);
  v62 = v58 + *(a2 + 152);
  v63 = v122;
  (*(v96 + 16))(v95, v62, v122);
  v64 = v114;
  v65 = v115;
  v66 = v98;
  v67 = v60;
  v68 = v61;
  v69 = v63;
  sub_1000C5FC4();
  v70 = swift_allocObject();
  v71 = v120;
  v70[2] = v127;
  v70[3] = v71;
  v72 = v125;
  v73 = v118;
  v70[4] = v126;
  v70[5] = v73;
  v70[6] = v67;
  v70[7] = v68;
  v74 = v106;
  v70[8] = v69;
  v70[9] = v74;
  v76 = v116;
  v75 = v117;
  v70[10] = v117;
  v70[11] = v76;
  v77 = v124;
  v70[12] = v72;
  v70[13] = v77;
  v70[14] = v66;
  v70[15] = v65;
  v70[16] = v64;
  v78 = v107;
  v70[17] = v107;
  v79 = swift_allocObject();
  v80 = v120;
  v79[2] = v127;
  v79[3] = v80;
  v79[4] = v126;
  v79[5] = v73;
  v82 = v121;
  v81 = v122;
  v79[6] = v119;
  v79[7] = v82;
  v79[8] = v81;
  v79[9] = v74;
  v79[10] = v75;
  v79[11] = v76;
  v79[12] = v72;
  v79[13] = v77;
  v83 = v115;
  v79[14] = v66;
  v79[15] = v83;
  v79[16] = v114;
  v79[17] = v78;
  v79[18] = sub_1000813CC;
  v79[19] = v70;
  v84 = v99;
  v85 = v113;
  v86 = v112;
  sub_1000C60E4();

  v87 = v103;
  sub_1000C5FD4();
  (*(v104 + 8))(v84, v87);
  (*(v97 + 8))(v86, v85);
  return (*(v111 + 8))(v110, v123);
}

uint64_t sub_100080B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v118 = a8;
  v111 = a7;
  v109 = a6;
  v105 = a5;
  v101 = a4;
  v98 = a3;
  v97 = a2;
  v96 = a1;
  v107 = a21;
  v108 = a29;
  v110 = a14;
  v106 = a13;
  v104 = a28;
  v100 = a27;
  v103 = a20;
  v99 = a19;
  v102 = a12;
  v95 = a11;
  v94 = a10;
  v92 = a9;
  v91 = a26;
  v88 = a25;
  v90 = a18;
  v87 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v120 = swift_getAssociatedTypeWitness();
  v121 = swift_getAssociatedTypeWitness();
  v122 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v89 = *(TupleTypeMetadata - 1);
  v30 = *(v89 + 64);
  v31 = __chkstk_darwin(TupleTypeMetadata);
  v93 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v113 = &v86 - v34;
  v35 = __chkstk_darwin(v33);
  v112 = &v86 - v36;
  v37 = __chkstk_darwin(v35);
  v114 = &v86 - v38;
  __chkstk_darwin(v37);
  v40 = &v86 - v39;
  v41 = swift_getAssociatedTypeWitness();
  v42 = *(v41 - 8);
  v115 = v41;
  v116 = v42;
  (*(v42 + 16))(v40, v118, v41);
  v43 = TupleTypeMetadata[12];
  v44 = swift_getAssociatedTypeWitness();
  v45 = *(v44 - 8);
  v117 = v44;
  v118 = v45;
  (*(v45 + 16))(&v40[v43], v92, v44);
  v46 = TupleTypeMetadata[16];
  v47 = swift_getAssociatedTypeWitness();
  v48 = *(v47 - 8);
  v49 = &v40[v46];
  v50 = v47;
  (*(v48 + 16))(v49, v94);
  v51 = TupleTypeMetadata[20];
  v52 = swift_getAssociatedTypeWitness();
  v53 = *(v52 - 8);
  v88 = v53;
  v54 = *(v53 + 16);
  v87 = v52;
  v54(&v40[v51], v95, v52);
  v55 = v89;
  v56 = *(v89 + 16);
  v57 = v114;
  v56(v114, v40, TupleTypeMetadata);
  v95 = TupleTypeMetadata[12];
  v94 = TupleTypeMetadata[16];
  v92 = TupleTypeMetadata[20];
  (*(v116 + 32))(v96, v57, v115);
  v58 = v112;
  v56(v112, v40, TupleTypeMetadata);
  v59 = TupleTypeMetadata[12];
  v96 = TupleTypeMetadata[16];
  v91 = TupleTypeMetadata[20];
  (*(v118 + 32))(v97, &v58[v59], v117);
  v60 = v113;
  v56(v113, v40, TupleTypeMetadata);
  v97 = TupleTypeMetadata[12];
  v61 = TupleTypeMetadata[16];
  v90 = TupleTypeMetadata[20];
  v62 = *(v48 + 32);
  v86 = v50;
  v62(v98, &v60[v61], v50);
  v63 = v93;
  (*(v55 + 32))(v93, v40, TupleTypeMetadata);
  v64 = TupleTypeMetadata[12];
  v65 = TupleTypeMetadata[16];
  (*(v53 + 32))(v101, &v63[TupleTypeMetadata[20]], v52);
  v66 = swift_getAssociatedTypeWitness();
  (*(*(v66 - 8) + 16))(v105, v102, v66);
  v67 = swift_getAssociatedTypeWitness();
  (*(*(v67 - 8) + 16))(v109, v106, v67);
  v68 = swift_getAssociatedTypeWitness();
  (*(*(v68 - 8) + 16))(v111, v110, v68);
  v69 = *(v48 + 8);
  v110 = v48 + 8;
  v111 = v69;
  v69(&v63[v65], v50);
  v70 = v117;
  v72 = v118 + 8;
  v71 = *(v118 + 8);
  v71(&v63[v64], v117);
  v73 = v71;
  v109 = v71;
  v118 = v72;
  v74 = v115;
  v75 = *(v116 + 8);
  v75(v63, v115);
  v76 = *(v88 + 8);
  v77 = v113;
  v78 = v87;
  v76(&v113[v90], v87);
  v73(&v77[v97], v70);
  v79 = v77;
  v80 = v74;
  v75(v79, v74);
  v81 = v112;
  v76(&v112[v91], v78);
  v82 = v86;
  v83 = v111;
  v111(&v81[v96], v86);
  v75(v81, v80);
  v84 = v114;
  v76(&v114[v92], v78);
  v83(&v84[v94], v82);
  return v109(&v84[v95], v117);
}

uint64_t sub_100081424@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v14 = a1 + TupleTypeMetadata[12];
  v13 = a1 + TupleTypeMetadata[16];
  v12 = a1 + TupleTypeMetadata[20];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v6 = swift_getTupleTypeMetadata();
  v7 = a1 + v6[12];
  v8 = a1 + v6[16];
  v9 = a1 + v6[20];
  v10 = swift_getTupleTypeMetadata();
  return a2(a3, a3 + v10[12], a3 + v10[16], a3 + v10[20], a3 + v10[24], a3 + v10[28], a3 + v10[32], a1, v14, v13, v12, v7, v8, v9);
}

uint64_t sub_100081690()
{
  v1 = *(v0 + 152);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1000816C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 152);
  v15 = *(v2 + 136);
  v13 = *(v2 + 104);
  v14 = *(v2 + 120);
  v11 = *(v2 + 72);
  v12 = *(v2 + 88);
  v10 = *(v2 + 56);
  return sub_100081424(a1, *(v2 + 144), a2);
}

uint64_t sub_10008179C(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10008187C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v42 = *(a3[2] - 8);
  v4 = *(v42 + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v42 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3[6] - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(*(a3[4] - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(a3[2] - 8) + 64) + v17;
  v25 = *(*(v8 - 8) + 64) + v22;
  v26 = a2 - v23;
  if (a2 > v23)
  {
    v27 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
    v28 = 8 * v27;
    if (v27 <= 3)
    {
      v30 = ((v26 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v30))
      {
        v29 = *(a1 + v27);
        if (!v29)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 > 0xFF)
      {
        v29 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 < 2)
      {
LABEL_36:
        if (v23)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    v29 = *(a1 + v27);
    if (!*(a1 + v27))
    {
      goto LABEL_36;
    }

LABEL_23:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v23 + (v33 | v31) + 1;
  }

LABEL_37:
  if (v4 == v23)
  {
    v34 = *(v42 + 48);

    return v34();
  }

  v36 = (a1 + v24) & ~v17;
  if (v6 == v23)
  {
    v37 = *(v5 + 48);
    v38 = *(v5 + 84);
    v39 = a3[3];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v10 == v23)
  {
    v37 = *(v9 + 48);
    v38 = *(v9 + 84);
    v39 = a3[4];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v13 == v23)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = a3[5];

    return v37(v36, v38, v39);
  }

  v40 = *(v15 + 48);
  v41 = (v25 + v36) & ~v22;

  return v40(v41, v16);
}

char *sub_100081D1C(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v42 = a4[3];
  v43 = *(a4[2] - 8);
  v5 = *(v43 + 84);
  v6 = *(v42 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v43 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a4[5];
  v41 = a4[4];
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4[6] - 8);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v6 + 80);
  v19 = *(*(v42 - 8) + 64);
  v20 = *(v10 + 80);
  v21 = *(*(v41 - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(*(v9 - 8) + 64);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  v26 = v23 + v24;
  v27 = ((v23 + v24 + ((v21 + v22 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20)) & ~v22)) & ~v24) + *(*(a4[6] - 8) + 64);
  v28 = a3 >= v25;
  v29 = a3 - v25;
  if (v29 != 0 && v28)
  {
    if (v27 <= 3)
    {
      v34 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v34))
      {
        v30 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 < a2)
  {
    v31 = ~v25 + a2;
    if (v27 < 4)
    {
      v33 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v36 = v31 & ~(-1 << (8 * v27));
        v37 = result;
        bzero(result, v27);
        result = v37;
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v37 = v36;
            if (v30 > 1)
            {
LABEL_60:
              if (v30 == 2)
              {
                *&result[v27] = v33;
              }

              else
              {
                *&result[v27] = v33;
              }

              return result;
            }
          }

          else
          {
            *v37 = v31;
            if (v30 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v37 = v36;
        v37[2] = BYTE2(v36);
      }

      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = result;
      bzero(result, v27);
      result = v32;
      *v32 = v31;
      v33 = 1;
      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v30)
    {
      result[v27] = v33;
    }

    return result;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&result[v27] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  result[v27] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v5 == v25)
  {
    v38 = *(v43 + 56);

    return v38();
  }

  else
  {
    v39 = &result[v17 + v18] & ~v18;
    if (v7 == v25)
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v39 = (v39 + v19 + v20) & ~v20;
      if (v11 == v25)
      {
        v40 = *(v10 + 56);
      }

      else
      {
        v39 = (v39 + v21 + v22) & ~v22;
        if (v14 == v25)
        {
          v40 = *(v13 + 56);
        }

        else
        {
          v40 = *(v16 + 56);
          v39 = (v26 + v39) & ~v24;
        }
      }
    }

    return v40(v39);
  }
}

uint64_t sub_10008223C(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100082338(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v61 = a3[3];
  v62 = v4;
  v5 = *(v4 + 84);
  v6 = *(v61 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a3[5];
  v59 = v9;
  v60 = a3[4];
  v10 = *(v60 - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v15 = a3[6];
  v14 = a3[7];
  v57 = v14;
  v58 = v15;
  v16 = *(v15 - 8);
  if (v13 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = *(v15 - 8);
  v19 = *(v16 + 84);
  if (v19 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = *(v16 + 84);
  }

  v21 = *(v14 - 8);
  v22 = *(v21 + 84);
  v23 = *(v4 + 64);
  v24 = *(v6 + 80);
  v25 = *(*(v61 - 8) + 64);
  v26 = *(v10 + 80);
  v27 = *(*(v60 - 8) + 64);
  v28 = *(v12 + 80);
  v29 = *(*(v9 - 8) + 64);
  v30 = *(v16 + 80);
  v31 = *(v16 + 64);
  v32 = *(v21 + 80);
  v33 = *(v21 + 64);
  if (v22 <= v20)
  {
    v34 = v20;
  }

  else
  {
    v34 = *(v21 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v35 = *(*(v60 - 8) + 64);
  v36 = v23 + v24;
  v37 = v29 + v30;
  v38 = v31 + v32;
  v39 = a2 - v34;
  if (a2 > v34)
  {
    v40 = (v38 + ((v37 + ((v27 + v28 + ((v25 + v26 + (v36 & ~v24)) & ~v26)) & ~v28)) & ~v30)) & ~v32;
    v41 = v40 + v33;
    v42 = 8 * (v40 + v33);
    if (v41 <= 3)
    {
      v44 = ((v39 + ~(-1 << v42)) >> v42) + 1;
      if (HIWORD(v44))
      {
        v43 = *(a1 + v41);
        if (!v43)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v44 > 0xFF)
      {
        v43 = *(a1 + v41);
        if (!*(a1 + v41))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v44 < 2)
      {
LABEL_38:
        if (v34)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }

    v43 = *(a1 + v41);
    if (!*(a1 + v41))
    {
      goto LABEL_38;
    }

LABEL_25:
    v45 = (v43 - 1) << v42;
    if (v41 > 3)
    {
      v45 = 0;
    }

    if (v41)
    {
      if (v41 <= 3)
      {
        v46 = v41;
      }

      else
      {
        v46 = 4;
      }

      if (v46 > 2)
      {
        if (v46 == 3)
        {
          v47 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v47 = *a1;
        }
      }

      else if (v46 == 1)
      {
        v47 = *a1;
      }

      else
      {
        v47 = *a1;
      }
    }

    else
    {
      v47 = 0;
    }

    return v34 + (v47 | v45) + 1;
  }

LABEL_39:
  if (v5 == v34)
  {
    v48 = *(v62 + 48);

    return v48(a1);
  }

  v50 = (a1 + v36) & ~v24;
  if (v7 == v34)
  {
    v51 = *(v6 + 48);
    v52 = (a1 + v36) & ~v24;
    v53 = *(v6 + 84);
    v54 = v61;

    return v51(v52, v53, v54);
  }

  if (v11 == v34)
  {
    v51 = *(v10 + 48);
    v52 = (v50 + v25 + v26) & ~v26;
    v53 = *(v10 + 84);
    v54 = v60;

    return v51(v52, v53, v54);
  }

  v52 = (((v50 + v25 + v26) & ~v26) + v27 + v28) & ~v28;
  if (v13 == v34)
  {
    v51 = *(v12 + 48);
    v53 = *(v12 + 84);
    v54 = v59;

    return v51(v52, v53, v54);
  }

  v52 = (v37 + v52) & ~v30;
  if (v19 == v34)
  {
    v51 = *(v18 + 48);
    v53 = v19;
    v54 = v58;

    return v51(v52, v53, v54);
  }

  v55 = *(v21 + 48);
  v56 = (v38 + v52) & ~v32;

  return v55(v56, v22, v57);
}

unsigned int *sub_10008289C(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v55 = v6;
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = a4[5];
  v53 = a4[4];
  v13 = *(v53 - 8);
  v54 = *(v13 + 84);
  if (v54 > v11)
  {
    v11 = *(v13 + 84);
  }

  v51 = a4[5];
  v14 = *(v12 - 8);
  v52 = *(v14 + 84);
  if (v52 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v50 = a4[6];
  v16 = *(v50 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(a4[7] - 8);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(*(v53 - 8) + 64);
  v25 = *(v14 + 80);
  v26 = *(*(v12 - 8) + 64);
  v27 = *(v16 + 80);
  v28 = *(*(v50 - 8) + 64);
  v29 = *(v19 + 80);
  v30 = v26 + v27;
  v31 = v28 + v29;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v19 + 64);
  if (*(v19 + 84) <= v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = *(v19 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  if (v33 < a2)
  {
    v35 = ~v33 + a2;
    if (v32 >= 4)
    {
      v36 = result;
      bzero(result, v32);
      result = v36;
      *v36 = v35;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    }

    v37 = (v35 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v35 & ~(-1 << (8 * v32));
      v41 = result;
      bzero(result, v32);
      result = v41;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *v41 = v40;
          if (v34 > 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *v41 = v35;
          if (v34 > 1)
          {
LABEL_22:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_59:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *v41 = v40;
      *(v41 + 2) = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(result + v32) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v32) = 0;
  }

  else if (v34)
  {
    *(result + v32) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v33)
  {
    v42 = v55;
LABEL_45:
    v43 = *(v42 + 56);
LABEL_48:

    return v43();
  }

  v44 = (result + v20 + v21) & ~v21;
  if (v10 == v33)
  {
    v43 = *(v9 + 56);
    goto LABEL_48;
  }

  v45 = (v44 + v22 + v23) & ~v23;
  if (v54 == v33)
  {
    v42 = v13;
    goto LABEL_45;
  }

  v46 = (v45 + v24 + v25) & ~v25;
  if (v52 == v33)
  {
    v47 = *(v14 + 56);

    return v47(v46);
  }

  v46 = (v30 + v46) & ~v27;
  if (v17 == v33)
  {
    v47 = *(v16 + 56);

    return v47(v46);
  }

  v48 = *(v19 + 56);
  v49 = (v31 + v46) & ~v29;

  return v48(v49);
}

uint64_t sub_100082E1C(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              v15 = a1[8];
              result = swift_checkMetadataState();
              if (v16 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100082F34(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v55 = a3[2];
  v54 = a3[3];
  v5 = *(*(v55 - 8) + 84);
  v6 = *(v54 - 8);
  v7 = *(v6 + 84);
  v8 = a3[5];
  v52 = a3[4];
  v9 = *(v52 - 8);
  if (v7 <= v5)
  {
    v10 = *(*(v55 - 8) + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v52 - 8);
  v53 = *(v9 + 84);
  if (v53 > v10)
  {
    v10 = *(v9 + 84);
  }

  v50 = a3[5];
  v51 = *(*(v8 - 8) + 84);
  if (v51 > v10)
  {
    v10 = *(*(v8 - 8) + 84);
  }

  v12 = *(a3[6] - 8);
  if (*(v12 + 84) <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v49 = a3[7];
  v14 = *(v49 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v48 = a3[8];
  v17 = *(v48 - 8);
  v18 = *(v6 + 80);
  v56 = *(*(v54 - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(v8 - 8);
  v21 = *(v9 + 64);
  v22 = *(v20 + 80);
  v23 = *(v12 + 80);
  v24 = *(v14 + 80);
  v25 = *(v17 + 80);
  if (*(v17 + 84) <= v16)
  {
    v26 = v16;
  }

  else
  {
    v26 = *(v17 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(*(v55 - 8) + 64) + v18;
  v28 = *(v20 + 64) + v23;
  v29 = *(v12 + 64) + v24;
  v30 = *(*(v49 - 8) + 64) + v25;
  v31 = a2 >= v26;
  v32 = a2 - v26;
  if (v32 == 0 || !v31)
  {
    goto LABEL_42;
  }

  v33 = ((v30 + ((v29 + ((v28 + ((v21 + v22 + ((v56 + v19 + (v27 & ~v18)) & ~v19)) & ~v22)) & ~v23)) & ~v24)) & ~v25) + *(*(v48 - 8) + 64);
  v34 = 8 * v33;
  if (v33 > 3)
  {
    goto LABEL_21;
  }

  v36 = ((v32 + ~(-1 << v34)) >> v34) + 1;
  if (HIWORD(v36))
  {
    v35 = *(a1 + v33);
    if (!v35)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v36 > 0xFF)
  {
    v35 = *(a1 + v33);
    if (!*(a1 + v33))
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v36 >= 2)
  {
LABEL_21:
    v35 = *(a1 + v33);
    if (!*(a1 + v33))
    {
      goto LABEL_41;
    }

LABEL_28:
    v37 = (v35 - 1) << v34;
    if (v33 > 3)
    {
      v37 = 0;
    }

    if (v33)
    {
      if (v33 <= 3)
      {
        v38 = ((v30 + ((v29 + ((v28 + ((v21 + v22 + ((v56 + v19 + (v27 & ~v18)) & ~v19)) & ~v22)) & ~v23)) & ~v24)) & ~v25) + *(*(v48 - 8) + 64);
      }

      else
      {
        v38 = 4;
      }

      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v39 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v39 = *a1;
        }
      }

      else if (v38 == 1)
      {
        v39 = *a1;
      }

      else
      {
        v39 = *a1;
      }
    }

    else
    {
      v39 = 0;
    }

    return v26 + (v39 | v37) + 1;
  }

LABEL_41:
  if (!v26)
  {
    return 0;
  }

LABEL_42:
  if (v5 == v26)
  {
    v41 = *(v55 - 8);
    v40 = v55;
LABEL_44:
    v42 = *(v41 + 48);
    goto LABEL_48;
  }

  if (v7 == v26)
  {
    v40 = v54;
    v42 = *(*(v54 - 8) + 48);
    a1 = ((a1 + v27) & ~v18);
    v5 = v7;
LABEL_48:

    return v42(a1, v5, v40);
  }

  a1 = ((((a1 + v27) & ~v18) + v56 + v19) & ~v19);
  v5 = v53;
  if (v53 == v26)
  {
    v41 = *(v52 - 8);
    v40 = v52;
    goto LABEL_44;
  }

  v44 = (a1 + v21 + v22) & ~v22;
  if (v51 == v26)
  {
    v45 = *(v20 + 48);

    return v45(v44);
  }

  else
  {
    v46 = (v28 + v44) & ~v23;
    if (*(v12 + 84) != v26)
    {
      a1 = ((v29 + v46) & ~v24);
      if (v15 == v26)
      {
        v42 = *(v14 + 48);
        v5 = *(v14 + 84);
        v40 = v49;
      }

      else
      {
        v42 = *(v17 + 48);
        a1 = ((a1 + v30) & ~v25);
        v5 = *(v17 + 84);
        v40 = v48;
      }

      return v42(a1, v5, v40);
    }

    v47 = *(v12 + 48);

    return v47(v46);
  }
}

uint64_t sub_100083518(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v52 = *(a4[2] - 8);
  v4 = *(v52 + 84);
  v5 = *(a4[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v52 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a4[5];
  v9 = *(a4[4] - 8);
  v50 = *(v9 + 84);
  if (v50 > v7)
  {
    v7 = *(v9 + 84);
  }

  v47 = a4[5];
  v10 = *(v8 - 8);
  v48 = *(v10 + 84);
  if (v48 > v7)
  {
    v7 = *(v10 + 84);
  }

  v11 = a4[7];
  v12 = *(a4[6] - 8);
  v45 = *(v12 + 84);
  if (v45 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(a4[8] - 8);
  v18 = *(*(a4[2] - 8) + 64);
  v51 = *(a4[3] - 8);
  v19 = *(v5 + 80);
  v20 = *(v51 + 64);
  v49 = *(a4[4] - 8);
  v21 = *(v9 + 80);
  v22 = *(v49 + 64);
  v46 = *(v8 - 8);
  v23 = *(v10 + 80);
  v24 = *(v46 + 64);
  v25 = *(v12 + 80);
  v26 = *(*(a4[6] - 8) + 64);
  v27 = *(v14 + 80);
  v28 = *(*(v11 - 8) + 64);
  v29 = *(v17 + 80);
  v30 = v18 + v19;
  v31 = v26 + v27;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v17 + 64);
  if (*(v17 + 84) <= v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = *(v17 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  result = a1;
  if (v33 < a2)
  {
    v36 = ~v33 + a2;
    if (v32 >= 4)
    {
      bzero(a1, v32);
      result = a1;
      *a1 = v36;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_24;
      }

      goto LABEL_57;
    }

    v37 = (v36 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v36 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      result = a1;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v40;
          if (v34 > 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *a1 = v36;
          if (v34 > 1)
          {
LABEL_24:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_57:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *a1 = v40;
      a1[2] = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_45;
    }

    *&a1[v32] = 0;
  }

  else if (v34)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return result;
  }

LABEL_45:
  if (v4 == v33)
  {
    v41 = *(v52 + 56);
    goto LABEL_65;
  }

  if (v6 == v33)
  {
    v41 = *(v51 + 56);
    result = &a1[v30] & ~v19;
    goto LABEL_65;
  }

  result = ((&a1[v30] & ~v19) + v20 + v21) & ~v21;
  if (v50 == v33)
  {
    v42 = v49;
LABEL_64:
    v41 = *(v42 + 56);
LABEL_65:

    return v41(result);
  }

  result = (result + v22 + v23) & ~v23;
  if (v48 == v33)
  {
    v42 = v46;
    goto LABEL_64;
  }

  v43 = (v24 + v25 + result) & ~v25;
  if (v45 != v33)
  {
    result = (v31 + v43) & ~v27;
    if (v15 == v33)
    {
      v41 = *(v14 + 56);
    }

    else
    {
      v41 = *(v17 + 56);
      result = (v28 + v29 + result) & ~v29;
    }

    return v41(result);
  }

  v44 = *(v12 + 56);

  return v44(v43);
}

uint64_t sub_100083B40(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100083B58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100083B6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100083BB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100083C08()
{
  result = qword_100118980;
  if (!qword_100118980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118980);
  }

  return result;
}

void sub_100083C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(_UIShareInvitationModalAddParticipantController);
  isa = sub_1000C6E84().super.isa;
  v8 = [v6 initWithCurrentAddresses:isa];

  if (v8)
  {
    v9 = v8;
    v10 = sub_1000C6D44();
    [v9 setContinueActionTitle:v10];

    if (a3)
    {
      v14[4] = a3;
      v14[5] = a4;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_100083DC8;
      v14[3] = &unk_100109810;
      v11 = _Block_copy(v14);
      v12 = v9;
      sub_1000229B4(a3);
    }

    else
    {
      v13 = v9;
      v11 = 0;
    }

    [v9 setCompletion:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100083DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = sub_1000C6E94();
  }

  else
  {
    v6 = 0;
  }

  v5(a2, v6);
}

uint64_t sub_100083E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100083F44();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100083EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100083F44();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100083F1C()
{
  sub_100083F44();
  sub_1000C6724();
  __break(1u);
}

unint64_t sub_100083F44()
{
  result = qword_100118988;
  if (!qword_100118988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118988);
  }

  return result;
}

uint64_t sub_100083F98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100083FB0()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v40 - v6;
  v8 = objc_allocWithZone(ISIcon);
  v9 = sub_1000C6D44();
  v10 = [v8 initWithType:v9];

  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [objc_allocWithZone(ISImageDescriptor) initWithSize:128.0 scale:{128.0, v13}];
  v15 = [v10 imageForDescriptor:v14];
  if (!v15)
  {

    return 0;
  }

  v16 = v15;
  v17 = v16;
  if ([v16 placeholder])
  {
    v18 = [v10 prepareImageForDescriptor:v14];
    v19 = v16;
    if (v18)
    {
      v20 = v18;

      v19 = v20;
    }

    sub_1000C5F54();
    v17 = v19;
    v21 = sub_1000C5F64();
    v22 = sub_1000C6FF4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v41 = v0;
      v24 = v23;
      *v23 = 67109120;
      *(v23 + 1) = [v17 placeholder];

      _os_log_impl(&_mh_execute_header, v21, v22, "iOS appIcon placeholder;  did prepareImage(forDescriptor:), is still placeHolder: %{BOOL}d", v24, 8u);
      v0 = v41;
    }

    else
    {

      v21 = v17;
    }

    (*(v1 + 8))(v7, v0);
  }

  sub_1000C5F54();
  v26 = v17;
  v27 = sub_1000C5F64();
  v28 = sub_1000C6FF4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41 = v5;
    v31 = v16;
    v32 = v14;
    v33 = v10;
    v34 = v1;
    v35 = v0;
    v36 = v30;
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v37 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "iOS appIcon image: %@", v29, 0xCu);
    sub_10003BBA0(v36);
    v0 = v35;
    v1 = v34;
    v10 = v33;
    v14 = v32;
    v16 = v31;
    v5 = v41;
  }

  (*(v1 + 8))(v5, v0);
  result = [v26 CGImage];
  if (result)
  {
    v39 = result;
    v25 = [objc_allocWithZone(UIImage) initWithCGImage:result];

    return v25;
  }

  __break(1u);
  return result;
}

BOOL sub_10008440C(_BOOL8 result, uint64_t a2)
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

void sub_1000844DC()
{
  sub_100084744();
  if (v0 <= 0x3F)
  {
    sub_10008479C();
    if (v1 <= 0x3F)
    {
      sub_1000847EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10008458C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100084668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_100084744()
{
  if (!qword_100118A18)
  {
    sub_1000C61F4();
    v0 = sub_1000C71C4();
    if (!v1)
    {
      atomic_store(v0, &qword_100118A18);
    }
  }
}

unint64_t sub_10008479C()
{
  result = qword_100118A20;
  if (!qword_100118A20)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100118A20);
  }

  return result;
}

void sub_1000847EC()
{
  if (!qword_100118A28)
  {
    v0 = sub_1000C6B14();
    if (!v1)
    {
      atomic_store(v0, &qword_100118A28);
    }
  }
}

uint64_t sub_100084880@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v37 - v8;
  v37 = &v37 - v8;
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = sub_1000C6B44();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  __chkstk_darwin(v12);
  v38 = &v37 - v14;
  sub_100010624(&qword_100117CD0, &qword_1000CFDD0);
  v15 = sub_1000C6384();
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  v17 = __chkstk_darwin(v15);
  v39 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v41 = &v37 - v19;
  sub_100085254(v2, v9);
  (*(v4 + 16))(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  *(v21 + 24) = v11;
  (*(v4 + 32))(v21 + v20, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v22 = (v2 + *(a1 + 40));
  v23 = *v22;
  v24 = v22[1];
  v25 = v38;
  sub_1000C6B24();
  v26 = v2 + *(a1 + 44);
  v27 = *v26;
  v28 = *(v26 + 8);
  v46 = v27;
  v47 = v28;
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  sub_1000C6AE4();
  WitnessTable = swift_getWitnessTable();
  v30 = v39;
  sub_1000C69E4();
  (*(v42 + 8))(v25, v12);
  v31 = sub_10008549C();
  v44 = WitnessTable;
  v45 = v31;
  swift_getWitnessTable();
  v33 = v40;
  v32 = v41;
  v34 = *(v40 + 16);
  v34(v41, v30, v15);
  v35 = *(v33 + 8);
  v35(v30, v15);
  v34(v43, v32, v15);
  return (v35)(v32, v15);
}

uint64_t sub_100084C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AsyncMainActorButton();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-v9];
  v11 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23[-v13];
  v15 = (a1 + *(v6 + 44));
  v16 = *v15;
  v17 = *(v15 + 1);
  v23[16] = v16;
  v24 = v17;
  v23[15] = 1;
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  sub_1000C6AF4();
  v18 = sub_1000C6F44();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  (*(v7 + 16))(v10, a1, v6);
  sub_1000C6F14();
  v19 = sub_1000C6F04();
  v20 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v19;
  *(v21 + 3) = &protocol witness table for MainActor;
  *(v21 + 4) = a2;
  *(v21 + 5) = a3;
  (*(v7 + 32))(&v21[v20], v10, v6);
  sub_1000B8860(0, 0, v14, &unk_1000D1938, v21);
}

uint64_t sub_100084EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_1000C6F14();
  v6[7] = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_100084F80, v8, v7);
}

uint64_t sub_100084F80()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = type metadata accessor for AsyncMainActorButton();
  v0[10] = v4;
  v5 = (v3 + *(v4 + 36));
  v6 = v5[1];
  v10 = (*v5 + **v5);
  v7 = (*v5)[1];
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_100085084;

  return v10();
}

uint64_t sub_100085084()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_1000851A4, v4, v3);
}

uint64_t sub_1000851A4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);

  v4 = (v3 + *(v1 + 44));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 96) = 0;
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  sub_1000C6AF4();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100085254(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000852C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for AsyncMainActorButton();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = sub_1000C61F4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  v10 = *(v7 + v3[9] + 8);

  v11 = *(v7 + v3[10] + 8);

  v12 = *(v7 + v3[11] + 8);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_100085418()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for AsyncMainActorButton() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100084C9C(v4, v1, v2);
}

unint64_t sub_10008549C()
{
  result = qword_100117CC8;
  if (!qword_100117CC8)
  {
    sub_100010624(&qword_100117CD0, &qword_1000CFDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117CC8);
  }

  return result;
}

uint64_t sub_100085500()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = type metadata accessor for AsyncMainActorButton();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = &v0[v5];
  v9 = sub_1000C61F4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v0[v5], 1, v9))
  {
    (*(v10 + 8))(&v0[v5], v9);
  }

  v11 = *&v8[v3[9] + 8];

  v12 = *&v8[v3[10] + 8];

  v13 = *&v8[v3[11] + 8];

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_10008565C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for AsyncMainActorButton() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100011080;

  return sub_100084EE4(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_100085798(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1000C6B44();
  sub_100010624(&qword_100117CD0, &qword_1000CFDD0);
  sub_1000C6384();
  swift_getWitnessTable();
  sub_10008549C();
  return swift_getWitnessTable();
}

uint64_t sub_10008583C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100085898(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100085914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v3 = v23;
    v4 = (v25._object >> 56) & 0xF;
    if ((v25._object & 0x2000000000000000) == 0)
    {
      v4 = v25._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v26._countAndFlagsBits = 10272;
      v26._object = 0xE200000000000000;
      sub_1000C6E04(v26);
      sub_1000C6E04(v25);

      v27._countAndFlagsBits = 41;
      v27._object = 0xE100000000000000;
      sub_1000C6E04(v27);
      v3 = v23;
    }

    else
    {
    }

    v24 = v3;
    sub_1000383C8();
    v5 = sub_1000C68D4();
    v7 = v6;
    v9 = v8;
    v20 = v10;
    KeyPath = swift_getKeyPath();
    v12 = swift_getKeyPath();
    v13 = v9 & 1;
    LOBYTE(v24) = v9 & 1;
    v22[0] = 0;
    v14 = swift_getKeyPath();
    v15 = (a2 + *(sub_10000FEB8(&qword_100118A38, &qword_1000D1AA0) + 36));
    v16 = *(sub_10000FEB8(&qword_100118A40, &qword_1000D1AA8) + 28);
    v17 = enum case for Text.TruncationMode.tail(_:);
    v18 = sub_1000C6874();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    result = swift_getKeyPath();
    *v15 = result;
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v13;
    *(a2 + 17) = v24;
    *(a2 + 20) = *(&v24 + 3);
    *(a2 + 24) = v20;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    *(a2 + 49) = *v22;
    *(a2 + 52) = *&v22[3];
    *(a2 + 56) = v12;
    *(a2 + 64) = 1;
    *(a2 + 65) = *v21;
    *(a2 + 68) = *&v21[3];
    *(a2 + 72) = v14;
    *(a2 + 80) = 0x3FEB333333333333;
  }

  else
  {
    type metadata accessor for SharingModel();
    sub_100085BA0();
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

unint64_t sub_100085BA0()
{
  result = qword_100117158;
  if (!qword_100117158)
  {
    type metadata accessor for SharingModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117158);
  }

  return result;
}

uint64_t sub_100085C08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C6494();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100085C60@<X0>(void *a1@<X8>)
{
  result = sub_1000C64C4();
  *a1 = v3;
  return result;
}

uint64_t sub_100085CD8(uint64_t a1)
{
  v2 = sub_1000C6874();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000C6464();
}

unint64_t sub_100085DA8()
{
  result = qword_100118A48;
  if (!qword_100118A48)
  {
    sub_100010624(&qword_100118A38, &qword_1000D1AA0);
    sub_100085E4C();
    sub_100086038(&qword_100118AB0, &qword_100118A40, &qword_1000D1AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A48);
  }

  return result;
}

unint64_t sub_100085E4C()
{
  result = qword_100118A50;
  if (!qword_100118A50)
  {
    sub_100010624(&qword_100118A58, &qword_1000D1AE0);
    sub_100085EF0();
    sub_100086038(&qword_100118AA0, &qword_100118AA8, &qword_1000D1B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A50);
  }

  return result;
}

unint64_t sub_100085EF0()
{
  result = qword_100118A60;
  if (!qword_100118A60)
  {
    sub_100010624(&qword_100118A68, &qword_1000D1AE8);
    sub_100085F94();
    sub_100086038(&qword_100118A90, &qword_100118A98, &qword_1000D1B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A60);
  }

  return result;
}

unint64_t sub_100085F94()
{
  result = qword_100118A70;
  if (!qword_100118A70)
  {
    sub_100010624(&qword_100118A78, &qword_1000D1AF0);
    sub_100086038(&qword_100118A80, &qword_100118A88, &qword_1000D1AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A70);
  }

  return result;
}

uint64_t sub_100086038(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000860A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000C5F74();
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

  sub_1000C60A4();
  v15 = (v3 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_accountID);
  if (*(v3 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_accountID + 8))
  {
    goto LABEL_12;
  }

  v40 = v6;
  v41 = v7;
  v42 = v14;
  v16 = [v42 containerIdentifier];
  v17 = sub_1000C6D84();
  v19 = v18;

  sub_1000C6D84();
  v20 = sub_1000C6DA4();
  v22 = v21;

  if (v17 == v20 && v19 == v22)
  {

    goto LABEL_7;
  }

  v23 = sub_1000C73A4();

  if (v23)
  {
LABEL_7:
    if (swift_weakLoadStrong())
    {
      v24 = sub_100087238();
      v26 = v25;

      v27 = v41;
      if (v26)
      {
        v28 = v15[1];
        *v15 = v24;
        v15[1] = v26;

        sub_1000C5F54();
        v29 = sub_1000C5F64();
        v30 = sub_1000C6FF4();
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

        sub_1000C60A4();
        return;
      }

      if (swift_weakLoadStrong())
      {

        v33 = sub_100016C68();
        v35 = v40;
        if (v34)
        {
          v36 = v15[1];
          *v15 = v33;
          v15[1] = v34;

          sub_1000C5F54();
          v37 = sub_1000C5F64();
          v38 = sub_1000C6FF4();
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

uint64_t sub_1000864B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}