uint64_t sub_1000A0A0C()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 344);
  v6 = *(v2 + 336);
  if (v0)
  {
    v7 = sub_1000A0D44;
  }

  else
  {
    v7 = sub_1000A0B48;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000A0B48()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 232);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 108) == 1 && (v3 = *(v0 + 232), swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , (*(v0 + 110) & 0xFE) != 8))
  {
    v5 = *(v0 + 232);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 111) = 2;
  }

  else
  {
    v4 = *(v0 + 232);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 109) = 4;
  }

  sub_1000C60A4();
  v6 = *(v0 + 232);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10000BF98();
    swift_unknownObjectRelease();
  }

  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000A0D44()
{
  v133 = v0;
  v1 = *(v0 + 232);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10000BF98();
    swift_unknownObjectRelease();
  }

  *(v0 + 224) = *(v0 + 368);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (!swift_dynamicCast())
  {
    v19 = *(v0 + 224);

    return sub_1000C72E4();
  }

  v2 = *(v0 + 304);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_1000C5F54();
  sub_1000199B8(v3, v4, v6, v5, v7, v8);
  v9 = sub_1000C5F64();
  v10 = sub_1000C6FD4();
  sub_1000494BC(v3, v4, v6, v5, v7, v8);
  v121 = v10;
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 352);
  v13 = *(v0 + 304);
  v122 = *(v0 + 288);
  v124 = *(v0 + 280);
  v130 = v7;
  v128 = v4;
  v129 = v5;
  v126 = v6;
  v127 = v3;
  if (v11)
  {
    v119 = *(v0 + 304);
    v14 = swift_slowAlloc();
    v117 = v12;
    v15 = swift_slowAlloc();
    v131 = v15;
    *v14 = 136315138;
    *(v0 + 160) = v3;
    *(v0 + 168) = v4;
    *(v0 + 176) = v6;
    *(v0 + 184) = v5;
    *(v0 + 192) = v7;
    *(v0 + 200) = v8;
    sub_1000199B8(v3, v4, v6, v5, v7, v8);
    v16 = sub_1000C6D94();
    v18 = sub_100071844(v16, v17, &v131);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v121, "Failed to fetch share: %s", v14, 0xCu);
    sub_100010544(v15);

    v117(v119, v124);
  }

  else
  {

    v12(v13, v124);
  }

  v20 = *(v0 + 232);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 58) = 2;

  result = sub_1000C60A4();
  if (v8 != 5)
  {
    v131 = 0;
    v132 = 0xE000000000000000;
    sub_1000C7244(34);
    v31 = v132;
    *(v0 + 208) = v131;
    *(v0 + 216) = v31;
    v135._countAndFlagsBits = 0xD000000000000020;
    v135._object = 0x80000001000DC8A0;
    sub_1000C6E04(v135);
    *(v0 + 64) = v3;
    *(v0 + 72) = v4;
    *(v0 + 80) = v6;
    *(v0 + 88) = v5;
    *(v0 + 96) = v130;
    *(v0 + 104) = v8;
    sub_1000C72D4();
    v32 = *(v0 + 208);
    v33 = *(v0 + 216);
    return sub_1000C72E4();
  }

  if (!v6)
  {
    __break(1u);
    return result;
  }

  v22 = *(v0 + 368);
  v23 = *(v0 + 328);

  v24 = v6;

  sub_1000230E4(3);
  if (v25)
  {

    v26 = v3;
    v27 = v4;
    v28 = v6;
    v29 = v5;
    v30 = v130;
    goto LABEL_12;
  }

  v34 = *(v0 + 232);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 59) == 3)
  {
    v35 = v24;
    v36 = [v35 domain];
    v37 = sub_1000C6D84();
    v39 = v38;

    if (v37 == sub_1000C6D84() && v39 == v40)
    {
    }

    else
    {
      v41 = sub_1000C73A4();

      if ((v41 & 1) == 0)
      {

        goto LABEL_24;
      }
    }

    v42 = [v35 code];

    if (v42 == 20)
    {

      goto LABEL_33;
    }

LABEL_24:
    v43 = v35;
    v44 = [v43 domain];
    v45 = sub_1000C6D84();
    v47 = v46;

    if (v45 == sub_1000C6D84() && v47 == v48)
    {
    }

    else
    {
      v49 = sub_1000C73A4();

      if ((v49 & 1) == 0)
      {

LABEL_31:
        v51 = *(v0 + 232);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        sub_100067838(4 * ((*(v0 + 107) & 0xFE) == 2), v126);
LABEL_32:

        v6 = v126;
        goto LABEL_33;
      }
    }

    v50 = [v43 code];

    if (v50 == 7)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_33:
  v52 = v24;
  v53 = [v52 domain];
  v54 = sub_1000C6D84();
  v56 = v55;

  if (v54 == sub_1000C6D84() && v56 == v57)
  {
  }

  else
  {
    v58 = sub_1000C73A4();

    if ((v58 & 1) == 0)
    {

      goto LABEL_40;
    }
  }

  v59 = [v52 code];

  if (v59 == 20)
  {
    v60 = 0;
    goto LABEL_46;
  }

LABEL_40:
  v61 = v52;
  v62 = [v61 domain];
  v63 = sub_1000C6D84();
  v65 = v64;

  if (v63 == sub_1000C6D84() && v65 == v66)
  {

LABEL_44:
    v68 = [v61 code];

    v60 = v68 != 7;
    goto LABEL_46;
  }

  v67 = sub_1000C73A4();

  if (v67)
  {
    goto LABEL_44;
  }

  v60 = 1;
LABEL_46:
  v69 = *(v0 + 232);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 60) != 1 || v60)
  {
    v77 = *(v0 + 296);
    sub_1000C5F54();

    v78 = v52;

    v79 = sub_1000C5F64();
    v80 = sub_1000C6FD4();
    sub_1000494BC(v127, v128, v6, v5, v130, 5u);
    if (os_log_type_enabled(v79, v80))
    {
      v123 = v80;
      v125 = v78;
      v81 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v81 = 136315394;
      v82 = sub_1000C6E54();
      v84 = v83;
      if (("ngError thrown: " & 0x2000000000000000) != 0)
      {
        v85 = ("ngError thrown: " >> 40) & 0xF0000;
      }

      else
      {
        v85 = 2424832;
      }

      if (v85)
      {
        v86 = v82;
        while (sub_1000C6E54() != v86 || v87 != v84)
        {
          v88 = sub_1000C73A4();

          if (v88)
          {
            goto LABEL_64;
          }

          if ((sub_1000C6DF4() ^ v85) < 0x4000)
          {
            goto LABEL_60;
          }
        }

LABEL_64:

        sub_1000C6E64();
        v100 = sub_1000C6DC4();
        v90 = v101;

        v89 = v100;
      }

      else
      {
LABEL_60:

        v89 = 0;
        v90 = 0xE000000000000000;
      }

      v98 = v127;
      v118 = *(v0 + 296);
      v120 = *(v0 + 352);
      v115 = *(v0 + 288);
      v116 = *(v0 + 280);
      v102 = sub_100071844(v89, v90, &v131);

      *(v81 + 4) = v102;
      *(v81 + 12) = 2080;
      v96 = v128;
      v97 = v129;
      *(v0 + 112) = v127;
      *(v0 + 120) = v128;
      *(v0 + 128) = v126;
      *(v0 + 136) = v129;
      v95 = v130;
      *(v0 + 144) = v130;
      *(v0 + 152) = 5;
      sub_1000199B8(v127, v128, v126, v129, v130, 5u);
      v103 = sub_1000C6D94();
      v105 = sub_100071844(v103, v104, &v131);

      *(v81 + 14) = v105;
      _os_log_impl(&_mh_execute_header, v79, v123, "%s error: %s", v81, 0x16u);
      swift_arrayDestroy();

      v6 = v126;

      v120(v118, v116);
      v78 = v125;
    }

    else
    {
      v91 = *(v0 + 352);
      v93 = *(v0 + 288);
      v92 = *(v0 + 296);
      v94 = *(v0 + 280);

      v91(v92, v94);
      v95 = v130;
      v96 = v128;
      v97 = v129;
      v98 = v127;
    }

    v106 = *(v0 + 232);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    sub_100067838(4 * ((*(v0 + 61) & 0xFE) == 2), v6);

    sub_1000494BC(v98, v96, v6, v97, v95, 5u);

    goto LABEL_67;
  }

  v70 = *(v0 + 232);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LODWORD(v70) = *(v0 + 62);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v70 != 1)
  {
    v99 = *(v0 + 232);
    *(v0 + 63) = 0;

    sub_1000C60A4();

    sub_1000494BC(v127, v4, v6, v5, v130, 5u);

    goto LABEL_67;
  }

  v71 = *(v0 + 320);
  v72 = *(v0 + 232);
  v73 = *(v0 + 240);
  *(v0 + 105) = 2;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 106) = 0;

  sub_1000C60A4();
  sub_1000C6F24();
  v74 = sub_1000C6F44();
  (*(*(v74 - 8) + 56))(v73, 0, 1, v74);

  v75 = sub_1000C6F04();
  v76 = swift_allocObject();
  v76[2] = v75;
  v76[3] = &protocol witness table for MainActor;
  v76[4] = v72;
  sub_1000B8860(0, 0, v73, &unk_1000D3A70, v76);

  v26 = v127;
  v27 = v128;
  v28 = v6;
  v29 = v5;
  v30 = v130;
LABEL_12:
  sub_1000494BC(v26, v27, v28, v29, v30, 5u);
LABEL_67:
  v107 = *(v0 + 224);

  v109 = *(v0 + 304);
  v108 = *(v0 + 312);
  v110 = *(v0 + 296);
  v111 = *(v0 + 272);
  v113 = *(v0 + 240);
  v112 = *(v0 + 248);

  v114 = *(v0 + 8);

  return v114();
}

uint64_t sub_1000A1BF0()
{
  v0[2] = sub_1000C6F14();
  v0[3] = sub_1000C6F04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100051D40;

  return sub_100066080(3);
}

uint64_t sub_1000A1CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1000C5F74();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_1000C6F14();
  v4[15] = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  v4[16] = v9;
  v4[17] = v8;

  return _swift_task_switch(sub_1000A1DAC, v9, v8);
}

uint64_t sub_1000A1DAC()
{
  v1 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 57) == 1)
  {
    v2 = *(v0 + 72);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (*(v0 + 58) == 1 || (v3 = *(v0 + 72), swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v0 + 59) == 3))
    {
      v4 = swift_task_alloc();
      *(v0 + 152) = v4;
      *v4 = v0;
      v4[1] = sub_1000A2410;
      v5 = *(v0 + 72);

      return sub_10006E2A4();
    }

    else
    {
      v9 = *(v0 + 120);

      v10 = *(v0 + 112);
      sub_1000C5F54();
      v11 = sub_1000C5F64();
      v12 = sub_1000C6FF4();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 112);
      v15 = *(v0 + 80);
      v16 = *(v0 + 88);
      if (v13)
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "shareTypeStabilizedForUI completed", v17, 2u);
      }

      (*(v16 + 8))(v14, v15);
      v19 = *(v0 + 104);
      v18 = *(v0 + 112);
      v20 = *(v0 + 96);

      v21 = *(v0 + 8);

      return v21();
    }
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_1000A20B0;
    v8 = *(v0 + 72);

    return sub_1000A0430();
  }
}

uint64_t sub_1000A20B0()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return _swift_task_switch(sub_1000A21D0, v4, v3);
}

uint64_t sub_1000A21D0()
{
  v1 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 58) == 1 || (v2 = *(v0 + 72), swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v0 + 59) == 3))
  {
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_1000A2410;
    v4 = *(v0 + 72);

    return sub_10006E2A4();
  }

  else
  {
    v6 = *(v0 + 120);

    v7 = *(v0 + 112);
    sub_1000C5F54();
    v8 = sub_1000C5F64();
    v9 = sub_1000C6FF4();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 112);
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "shareTypeStabilizedForUI completed", v14, 2u);
    }

    (*(v13 + 8))(v11, v12);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 96);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000A2410()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_1000A2674;
  }

  else
  {
    v7 = sub_1000A254C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000A254C()
{
  v1 = v0[15];

  v2 = v0[14];
  sub_1000C5F54();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FF4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  v7 = v0[10];
  v8 = v0[11];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "shareTypeStabilizedForUI completed", v9, 2u);
  }

  (*(v8 + 8))(v6, v7);
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000A2674()
{
  v62 = v0;
  *(v0 + 64) = *(v0 + 160);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  result = swift_dynamicCast();
  if (result)
  {
    v60 = *(v0 + 24);
    v2 = *(v0 + 32);
    v3 = *(v0 + 48);
    v58 = *(v0 + 16);
    v59 = *(v0 + 40);
    v57 = *(v0 + 56);
    if (v57 == 6)
    {
      if (!v2)
      {
        __break(1u);
        return result;
      }

      v4 = *(v0 + 160);
      v5 = *(v0 + 120);
      v6 = *(v0 + 104);

      v7 = v2;

      sub_1000C5F54();
      v8 = v7;
      v9 = sub_1000C5F64();
      LOBYTE(v6) = sub_1000C6FD4();

      v55 = v6;
      v10 = os_log_type_enabled(v9, v6);
      v11 = *(v0 + 104);
      v12 = *(v0 + 88);
      v56 = *(v0 + 80);
      if (v10)
      {
        buf = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v61 = v54;
        *buf = 136315138;
        v13 = v8;
        v53 = v11;
        v14 = v2;
        v15 = [v13 description];
        log = v9;
        v16 = v8;
        v17 = v3;
        v18 = sub_1000C6D84();
        v20 = v19;

        v2 = v14;
        v21 = v18;
        v3 = v17;
        v8 = v16;
        v22 = sub_100071844(v21, v20, &v61);

        *(buf + 4) = v22;
        _os_log_impl(&_mh_execute_header, log, v55, "shareTypeStabilizedForUI nameAndEmailError: %s", buf, 0xCu);
        sub_100010544(v54);

        (*(v12 + 8))(v53, v56);
      }

      else
      {

        (*(v12 + 8))(v11, v56);
      }

      v33 = *(v0 + 72);
      v34 = v8;
      v30 = v2;
      sub_100067838(0, v2);
    }

    else
    {
      v30 = *(v0 + 32);
      v31 = *(v0 + 160);
      v32 = *(v0 + 120);
    }

    v35 = v3;
    v36 = *(v0 + 96);
    v37 = *(v0 + 72);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 60) = 5;

    sub_1000C60A4();
    v38 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
    sub_1000C5F54();
    v39 = sub_1000C5F64();
    v40 = sub_1000C6FD4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "shareTypeStabilizedForUI unexpected nameAndEmailError, returning CKError.internalError as best approximation", v41, 2u);
    }

    v43 = *(v0 + 88);
    v42 = *(v0 + 96);
    v44 = *(v0 + 72);
    v45 = *(v0 + 80);

    (*(v43 + 8))(v42, v45);
    v46 = v38;
    sub_100067838(0, v38);

    sub_1000494BC(v58, v60, v30, v59, v35, v57);
    v47 = *(v0 + 64);

    v49 = *(v0 + 104);
    v48 = *(v0 + 112);
    v50 = *(v0 + 96);

    v28 = *(v0 + 8);
  }

  else
  {
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);

    v27 = *(v0 + 64);

    v28 = *(v0 + 8);
    v29 = *(v0 + 160);
  }

  return v28();
}

uint64_t sub_1000A2B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v4[18] = sub_1000C6F14();
  v4[19] = sub_1000C6F04();
  v5 = swift_task_alloc();
  v4[20] = v5;
  *v5 = v4;
  v5[1] = sub_1000A2BD4;

  return sub_100064C74();
}

uint64_t sub_1000A2BD4()
{
  v2 = v0;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 168) = v2;

  v7 = sub_1000C6ED4();
  if (v2)
  {
    v8 = sub_1000A2DA8;
  }

  else
  {
    v8 = sub_1000A2D30;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000A2D30()
{
  v1 = v0[19];
  v2 = v0[17];

  sub_100059520();
  sub_10000C954();
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A2DA8()
{
  *(v0 + 128) = *(v0 + 168);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (!swift_dynamicCast())
  {
    v16 = *(v0 + 128);

    return sub_1000C72E4();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  if (v6 != 5)
  {
    sub_1000C7244(34);
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    v20._object = 0x80000001000DC8A0;
    v20._countAndFlagsBits = 0xD000000000000020;
    sub_1000C6E04(v20);
    *(v0 + 64) = v2;
    *(v0 + 72) = v1;
    *(v0 + 80) = v4;
    *(v0 + 88) = v3;
    *(v0 + 96) = v5;
    *(v0 + 104) = v6;
    sub_1000C72D4();
    v17 = *(v0 + 112);
    v18 = *(v0 + 120);
    return sub_1000C72E4();
  }

  v7 = *(v0 + 168);
  v8 = *(v0 + 152);

  if (v4)
  {
    v10 = *(v0 + 136);
    swift_getKeyPath();
    swift_getKeyPath();

    v11 = v4;

    sub_1000C6094();

    v12 = *(v0 + 57) == 2;
    v13 = v11;
    sub_100067838(4 * v12, v4);

    sub_1000494BC(v2, v1, v4, v3, v5, 5u);
    v14 = *(v0 + 128);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A3098()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A30D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100011080;

  return sub_1000A1BF0();
}

BOOL sub_1000A3214(void *a1, uint64_t *a2)
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

void *sub_1000A3244@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1000A3270@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000A335C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000A3608(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000A339C()
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

unint64_t sub_1000A3420()
{
  result = qword_1001196F8;
  if (!qword_1001196F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001196F8);
  }

  return result;
}

unint64_t sub_1000A3478()
{
  result = qword_100119700;
  if (!qword_100119700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119700);
  }

  return result;
}

unint64_t sub_1000A34D0()
{
  result = qword_100119708;
  if (!qword_100119708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119708);
  }

  return result;
}

uint64_t sub_1000A3524()
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

uint64_t sub_1000A358C()
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

uint64_t sub_1000A3608(uint64_t a1)
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

unint64_t sub_1000A3668()
{
  result = qword_100119710;
  if (!qword_100119710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119710);
  }

  return result;
}

uint64_t sub_1000A3704@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = v5;
  v24 = a5;
  v11 = sub_1000C65A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000FEB8(a1, a2);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v23 - v18);
  sub_100017574(v10, &v23 - v18, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100020D0C(v19, v24, a3, a4);
  }

  v21 = *v19;
  sub_1000C6FE4();
  v22 = sub_1000C6764();
  sub_1000C5F44();

  sub_1000C6594();
  swift_getAtKeyPath();

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1000A38E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  *(a5 + 40) = 0;
  sub_1000C6AD4();
  *(a5 + 48) = v8;
  *(a5 + 56) = *(&v8 + 1);
  sub_1000C6AD4();
  *(a5 + 64) = v8;
  *(a5 + 72) = *(&v8 + 1);
  sub_1000C6AD4();
  *(a5 + 80) = v8;
  *(a5 + 88) = *(&v8 + 1);
  type metadata accessor for CGRect(0);
  sub_1000C6AD4();
  *(a5 + 96) = v8;
  *(a5 + 112) = v9;
  *(a5 + 128) = v10;
  *(a5 + 136) = xmmword_1000D3E00;
  *(a5 + 152) = xmmword_1000D3E00;
  v6 = *(type metadata accessor for PeopleView() + 44);
  *(a5 + v6) = swift_getKeyPath();
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000A3A74()
{
  result = qword_100119728;
  if (!qword_100119728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119728);
  }

  return result;
}

uint64_t type metadata accessor for PeopleView()
{
  result = qword_100119798;
  if (!qword_100119798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A3B58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v34 = sub_10000FEB8(&qword_100119B68, &qword_1000D4A78);
  v5 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v7 = (&v34 - v6);
  v8 = *v2;
  v9 = v3[1];
  v10 = *(v3 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v11 = sub_1000C6224();
  swift_beginAccess();
  v12 = *(v11 + 16);

  v13 = sub_1000C6224();
  v14 = type metadata accessor for PersonInfoViewModel();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = sub_10007C100(v12, a1, v13);

  v36 = a1;
  v37 = v3;
  *v7 = swift_getKeyPath();
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for PersonInfoView();
  v19 = v7 + v18[5];
  *v19 = sub_1000B0960;
  *(v19 + 1) = v17;
  v19[16] = 0;
  v20 = v7 + v18[6];
  v40 = 3;

  sub_10000FEB8(&qword_100117018, &qword_1000CD830);
  sub_1000C6AD4();
  v21 = v39;
  *v20 = v38;
  *(v20 + 1) = v21;
  v22 = v18[7];
  *(v7 + v22) = swift_getKeyPath();
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  swift_storeEnumTagMultiPayload();
  v23 = v18[8];
  *(v7 + v23) = swift_getKeyPath();
  sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
  swift_storeEnumTagMultiPayload();
  v24 = v17[6];
  v25 = (v7 + *(v34 + 52));
  *v25 = v17[5];
  v25[1] = v24;
  sub_1000B0968();
  sub_10001E490(&qword_100119B78, &qword_100119B68, &qword_1000D4A78);

  v26 = v35;
  sub_1000C6324();
  swift_beginAccess();
  v27 = v17[2];
  v28 = v17[3];

  LOBYTE(v28) = sub_10003C790(v29, v28);

  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = (v28 & 1) == 0;
  result = sub_10000FEB8(&qword_100119AE0, &qword_1000D49E0);
  v33 = (v26 + *(result + 36));
  *v33 = KeyPath;
  v33[1] = sub_1000B0A24;
  v33[2] = v31;
  return result;
}

uint64_t sub_1000A3F50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v56 = a2;
  v3 = sub_1000C6674();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000FEB8(&qword_100119850, &qword_1000D4068);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v49 - v10;
  v12 = sub_10000FEB8(&qword_100119848, &qword_1000D4060);
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v54 = sub_10000FEB8(&qword_100119838, &qword_1000D4050);
  v55 = *(v54 - 8);
  v16 = *(v55 + 64);
  __chkstk_darwin(v54);
  v51 = &v49 - v17;
  v58 = sub_10000FEB8(&qword_100119818, &qword_1000D4040);
  v18 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v57 = &v49 - v19;
  v60 = a1;
  sub_10000FEB8(&qword_100119878, &qword_1000D4078);
  sub_10001E490(&qword_100119880, &qword_100119878, &qword_1000D4078);
  sub_1000C6864();
  sub_1000C6664();
  v20 = sub_10001E490(&qword_100119858, &qword_100119850, &qword_1000D4068);
  sub_1000C69F4();
  (*(v53 + 8))(v6, v3);
  (*(v8 + 8))(v11, v7);
  sub_1000C6794();
  v70 = v7;
  v71 = v3;
  v72 = v20;
  v73 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v51;
  sub_1000C6934();
  (*(v52 + 8))(v15, v12);
  v23 = v50;
  v59 = v50;
  sub_10000FEB8(&qword_100119840, &qword_1000D4058);
  v70 = v12;
  v71 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = sub_100010624(&qword_100119860, &qword_1000D4070);
  v25 = sub_10001E490(&qword_100119868, &qword_100119860, &qword_1000D4070);
  v70 = v24;
  v71 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v57;
  v27 = v54;
  sub_1000C69D4();
  (*(v55 + 8))(v22, v27);
  v28 = v23;
  v29 = *v23;
  v30 = v28[1];
  LODWORD(v7) = *(v28 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = &v26[*(sub_10000FEB8(&qword_100119830, &qword_1000D4048) + 36)];
  sub_1000C6094();

  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v32 = v70;
  v33 = v71;
  LOBYTE(OpaqueTypeConformance2) = v72;
  v55 = type metadata accessor for AlertViewModelAlert(0);
  v34 = &v31[*(v55 + 20)];
  *v34 = v32;
  *(v34 + 1) = v33;
  v34[16] = OpaqueTypeConformance2;
  v54 = v29;
  LODWORD(v53) = v7;
  v35 = sub_1000C6224();
  swift_beginAccess();
  v36 = *(v35 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  v37 = &v26[*(v58 + 36)];
  sub_1000C6094();

  sub_1000C6234();
  swift_getKeyPath();
  sub_1000C6354();

  v38 = v67;
  v39 = v68;
  v40 = v69;
  swift_getKeyPath();
  v64 = v38;
  v65 = v39;
  v66 = v40;
  sub_10000FEB8(&qword_100119888, &qword_1000D4180);
  sub_1000C6BA4();

  v41 = v61;
  v42 = v62;
  LOBYTE(v29) = v63;

  v43 = &v37[*(v55 + 20)];
  *v43 = v41;
  *(v43 + 1) = v42;
  v43[16] = v29;
  v44 = sub_1000C6224();
  swift_beginAccess();
  v45 = *(v44 + 16);

  if (!swift_unknownObjectWeakLoadStrong() || (v46 = sub_10000B7A8(), swift_unknownObjectRelease(), !v46))
  {
    [objc_allocWithZone(UIImage) init];
  }

  sub_1000C6A74();
  sub_1000AD890();
  v47 = v57;
  sub_1000C6914();

  return sub_100010F24(v47, &qword_100119818, &qword_1000D4040);
}

uint64_t sub_1000A4878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v170 = sub_10000FEB8(&qword_1001198C8, &qword_1000D41F8);
  v166 = *(v170 - 8);
  v3 = *(v166 + 64);
  __chkstk_darwin(v170);
  v150 = &v146 - v4;
  v5 = sub_10000FEB8(&qword_1001198D0, &qword_1000D4200);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v168 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v182 = &v146 - v9;
  v169 = sub_10000FEB8(&qword_1001198D8, &qword_1000D4208);
  v165 = *(v169 - 8);
  v10 = *(v165 + 64);
  __chkstk_darwin(v169);
  v149 = &v146 - v11;
  v12 = sub_10000FEB8(&qword_1001198E0, &qword_1000D4210);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v180 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v191 = &v146 - v16;
  v164 = sub_10000FEB8(&qword_1001198E8, &qword_1000D4218);
  v163 = *(v164 - 8);
  v17 = *(v163 + 64);
  __chkstk_darwin(v164);
  v148 = &v146 - v18;
  v19 = sub_10000FEB8(&qword_1001198F0, &qword_1000D4220);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v179 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v190 = &v146 - v23;
  v161 = sub_10000FEB8(&qword_1001198F8, &qword_1000D4228);
  v160 = *(v161 - 8);
  v24 = *(v160 + 64);
  __chkstk_darwin(v161);
  v147 = &v146 - v25;
  v26 = sub_10000FEB8(&qword_100119900, &qword_1000D4230);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v187 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v189 = &v146 - v30;
  v159 = sub_10000FEB8(&qword_100119908, &qword_1000D4238);
  v158 = *(v159 - 8);
  v31 = *(v158 + 64);
  __chkstk_darwin(v159);
  v154 = &v146 - v32;
  v33 = sub_10000FEB8(&qword_100119910, &qword_1000D4240);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v178 = &v146 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v186 = &v146 - v37;
  v153 = type metadata accessor for OneTimeLinkListView();
  v38 = *(*(v153 - 8) + 64);
  __chkstk_darwin(v153);
  v152 = (&v146 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = sub_10000FEB8(&qword_100119918, &qword_1000D4248);
  v156 = *(v157 - 8);
  v40 = *(v156 + 64);
  __chkstk_darwin(v157);
  v151 = &v146 - v41;
  v42 = sub_10000FEB8(&qword_100119920, &qword_1000D4250);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v177 = &v146 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v185 = &v146 - v46;
  v176 = sub_10000FEB8(&qword_100119928, &qword_1000D4258);
  v175 = *(v176 - 8);
  v47 = v175[8];
  v48 = __chkstk_darwin(v176);
  v174 = &v146 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v184 = &v146 - v50;
  v155 = sub_10000FEB8(&qword_100119930, &qword_1000D4260);
  v51 = *(v155 - 1);
  v52 = *(v51 + 64);
  __chkstk_darwin(v155);
  v146 = &v146 - v53;
  v54 = sub_10000FEB8(&qword_100119938, &qword_1000D4268);
  v55 = *(*(v54 - 8) + 64);
  v56 = __chkstk_darwin(v54 - 8);
  v173 = &v146 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v59 = &v146 - v58;
  v61 = *a1;
  v60 = *(a1 + 8);
  v171 = a1;
  v62 = *(a1 + 16);
  v63 = type metadata accessor for PeopleViewModel();
  v64 = sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v65 = sub_1000C6224();
  swift_beginAccess();
  v66 = *(*(v65 + 16) + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v181 = v59;
  v172 = v60;
  v183 = v62;
  v188 = v63;
  v192 = v64;
  v162 = v61;
  if (v193 == 1)
  {
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (v193 >> 62)
    {
      v67 = sub_1000C72F4();
    }

    else
    {
      v67 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v71 = v171;
    v72 = v155;

    if (v67 < 1)
    {
      v70 = 1;
    }

    else
    {
      v155 = &v146;
      __chkstk_darwin(v68);
      *(&v146 - 2) = v71;
      sub_1000A7288(v71, &v193);
      sub_10000FEB8(&qword_100119960, &qword_1000D42C8);
      sub_10000FEB8(&qword_100119A08, &unk_1000D45B0);
      sub_1000AF1F8();
      sub_10001E490(&qword_100119A10, &qword_100119A08, &unk_1000D45B0);
      v69 = v146;
      v59 = v181;
      sub_1000C6C04();
      (*(v51 + 32))(v59, v69, v72);
      v70 = 0;
    }
  }

  else
  {
    v70 = 1;
    v71 = v171;
    v72 = v155;
  }

  v73 = (*(v51 + 56))(v59, v70, 1, v72);
  __chkstk_darwin(v73);
  *(&v146 - 2) = v71;
  sub_1000A8C20(v71, &v193);
  sub_10000FEB8(&qword_100119940, &qword_1000D42B8);
  sub_10000FEB8(&qword_100119948, &qword_1000D42C0);
  sub_1000AF58C(&qword_100119950, &qword_100119940, &qword_1000D42B8, sub_1000AF1F8);
  sub_10001E490(&qword_100119990, &qword_100119948, &qword_1000D42C0);
  sub_1000C6C04();
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v193 >> 62)
  {
    v74 = sub_1000C72F4();
  }

  else
  {
    v74 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = v156;

  if (v74)
  {
    v76 = sub_1000C6224();
    KeyPath = swift_getKeyPath();
    v78 = v152;
    *v152 = KeyPath;
    sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
    swift_storeEnumTagMultiPayload();
    *(v78 + *(v153 + 20)) = v76;
    sub_1000B00B4(&qword_100119998, type metadata accessor for OneTimeLinkListView);
    v79 = v151;
    sub_1000C6324();
    v80 = v185;
    v81 = v157;
    (*(v75 + 32))(v185, v79, v157);
    v82 = 0;
  }

  else
  {
    v82 = 1;
    v80 = v185;
    v81 = v157;
  }

  (*(v75 + 56))(v80, v82, 1, v81);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v83 = v193;

  v85 = HIBYTE(*(&v83 + 1)) & 0xFLL;
  if ((*(&v83 + 1) & 0x2000000000000000) == 0)
  {
    v85 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (v85)
  {
    goto LABEL_19;
  }

  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v86 = v193;

  v87 = HIBYTE(*(&v86 + 1)) & 0xFLL;
  if ((*(&v86 + 1) & 0x2000000000000000) == 0)
  {
    v87 = v86 & 0xFFFFFFFFFFFFLL;
  }

  if (v87)
  {
LABEL_19:
    __chkstk_darwin(v84);
    *(&v146 - 2) = v71;
    sub_1000A9F48(v71, &v193);
    sub_10000FEB8(&qword_1001195C0, &qword_1000D3310);
    sub_10000FEB8(&qword_1001199A0, &qword_1000D43B0);
    sub_10009BAC0();
    sub_10001E490(&qword_1001199A8, &qword_1001199A0, &qword_1000D43B0);
    v88 = v154;
    sub_1000C6C04();
    v89 = v158;
    v90 = v186;
    v91 = v88;
    v92 = v159;
    (*(v158 + 32))(v186, v91, v159);
    v93 = 0;
    v94 = v164;
  }

  else
  {
    v93 = 1;
    v90 = v186;
    v94 = v164;
    v92 = v159;
    v89 = v158;
  }

  v95 = 1;
  (*(v89 + 56))(v90, v93, 1, v92);
  v96 = *(v71 + 24);
  v97 = *(v71 + 32);
  v98 = *(v71 + 40);
  type metadata accessor for GlobalPermissionViewModel();
  sub_1000B00B4(&qword_100117130, type metadata accessor for GlobalPermissionViewModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v100 = v161;
  if (v193 == 1)
  {
    __chkstk_darwin(v99);
    *(&v146 - 2) = v71;
    sub_100096E64();
    v101 = v147;
    sub_1000C6C14();
    v102 = v101 + *(v100 + 36);
    v103 = *(v71 + 152);
    *v102 = *(v71 + 136);
    *(v102 + 16) = v103;
    *(v102 + 32) = 0;
    sub_100020D0C(v101, v189, &qword_1001198F8, &qword_1000D4228);
    v95 = 0;
  }

  v104 = 1;
  (*(v160 + 56))(v189, v95, 1, v100);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v193 == 1)
  {
    v105 = sub_1000AA1AC();
    v71 = v171;
    *&v193 = v105;
    *(&v193 + 1) = v106;
    sub_1000383C8();
    *&v193 = sub_1000C68D4();
    *(&v193 + 1) = v107;
    LOBYTE(v194) = v108 & 1;
    v195 = v109;
    __chkstk_darwin(v193);
    *(&v146 - 2) = v71;
    sub_10000FEB8(&qword_1001199C0, &unk_1000D44E8);
    sub_10001E490(&qword_1001199C8, &qword_1001199C0, &unk_1000D44E8);
    v110 = v148;
    sub_1000C6C24();
    v111 = v110 + *(v94 + 36);
    v112 = *(v71 + 152);
    *v111 = *(v71 + 136);
    *(v111 + 16) = v112;
    *(v111 + 32) = 0;
    sub_100020D0C(v110, v190, &qword_1001198E8, &qword_1000D4218);
    v104 = 0;
  }

  v113 = 1;
  (*(v163 + 56))(v190, v104, 1, v94);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v193 == 1)
  {
    __chkstk_darwin(v114);
    *(&v146 - 2) = v71;
    sub_1000AB430(v71, &v193);
    sub_10000FEB8(&qword_1001199D0, &qword_1000D44F8);
    sub_10000FEB8(&qword_1001195C0, &qword_1000D3310);
    sub_1000AF58C(&qword_1001199D8, &qword_1001199D0, &qword_1000D44F8, sub_1000AF608);
    sub_10009BAC0();
    v115 = v149;
    sub_1000C6C24();
    v116 = v115 + *(sub_10000FEB8(&qword_100119A00, &qword_1000D4518) + 36);
    v117 = *(v71 + 152);
    *v116 = *(v71 + 136);
    *(v116 + 16) = v117;
    *(v116 + 32) = 0;
    v118 = sub_1000C6C64();
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v119 = v193;
    v120 = v115 + *(v169 + 36);
    *v120 = v118;
    *(v120 + 8) = v119;
    sub_100020D0C(v115, v191, &qword_1001198D8, &qword_1000D4208);
    v113 = 0;
  }

  v121 = 1;
  (*(v165 + 56))(v191, v113, 1, v169);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v193 == 1)
  {
    v192 = &v146;
    __chkstk_darwin(v122);
    *(&v146 - 2) = v71;
    sub_10000FEB8(&qword_1001199B8, &qword_1000D44E0);
    v123 = sub_100010624(&qword_1001199C0, &unk_1000D44E8);
    v124 = sub_100010624(&qword_1001195F0, &qword_1000D3320);
    v125 = sub_10001E490(&qword_1001199C8, &qword_1001199C0, &unk_1000D44E8);
    v126 = sub_10001E490(&qword_1001195E8, &qword_1001195F0, &qword_1000D3320);
    *&v193 = v123;
    *(&v193 + 1) = v124;
    v194 = &type metadata for Text;
    v195 = v125;
    v196 = v126;
    v197 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v127 = v150;
    sub_1000C6C14();
    v128 = v127 + *(v170 + 36);
    v129 = *(v71 + 152);
    *v128 = *(v71 + 136);
    *(v128 + 16) = v129;
    *(v128 + 32) = 0;
    sub_1000AF514(v127, v182);
    v121 = 0;
  }

  v130 = v182;
  (*(v166 + 56))(v182, v121, 1, v170);
  v131 = v173;
  sub_100017574(v181, v173, &qword_100119938, &qword_1000D4268);
  v132 = v175[2];
  v133 = v174;
  v134 = v176;
  v132(v174, v184, v176);
  v135 = v177;
  sub_100017574(v185, v177, &qword_100119920, &qword_1000D4250);
  v136 = v178;
  sub_100017574(v186, v178, &qword_100119910, &qword_1000D4240);
  sub_100017574(v189, v187, &qword_100119900, &qword_1000D4230);
  v137 = v179;
  sub_100017574(v190, v179, &qword_1001198F0, &qword_1000D4220);
  sub_100017574(v191, v180, &qword_1001198E0, &qword_1000D4210);
  v138 = v130;
  v139 = v168;
  sub_100017574(v138, v168, &qword_1001198D0, &qword_1000D4200);
  v140 = v167;
  sub_100017574(v131, v167, &qword_100119938, &qword_1000D4268);
  v141 = sub_10000FEB8(&qword_1001199B0, &qword_1000D44D8);
  v132((v140 + v141[12]), v133, v134);
  sub_100017574(v135, v140 + v141[16], &qword_100119920, &qword_1000D4250);
  sub_100017574(v136, v140 + v141[20], &qword_100119910, &qword_1000D4240);
  sub_100017574(v187, v140 + v141[24], &qword_100119900, &qword_1000D4230);
  sub_100017574(v137, v140 + v141[28], &qword_1001198F0, &qword_1000D4220);
  v142 = v180;
  sub_100017574(v180, v140 + v141[32], &qword_1001198E0, &qword_1000D4210);
  sub_100017574(v139, v140 + v141[36], &qword_1001198D0, &qword_1000D4200);
  sub_100010F24(v182, &qword_1001198D0, &qword_1000D4200);
  sub_100010F24(v191, &qword_1001198E0, &qword_1000D4210);
  sub_100010F24(v190, &qword_1001198F0, &qword_1000D4220);
  sub_100010F24(v189, &qword_100119900, &qword_1000D4230);
  sub_100010F24(v186, &qword_100119910, &qword_1000D4240);
  sub_100010F24(v185, &qword_100119920, &qword_1000D4250);
  v143 = v175[1];
  v144 = v176;
  v143(v184, v176);
  sub_100010F24(v181, &qword_100119938, &qword_1000D4268);
  sub_100010F24(v139, &qword_1001198D0, &qword_1000D4200);
  sub_100010F24(v142, &qword_1001198E0, &qword_1000D4210);
  sub_100010F24(v179, &qword_1001198F0, &qword_1000D4220);
  sub_100010F24(v187, &qword_100119900, &qword_1000D4230);
  sub_100010F24(v178, &qword_100119910, &qword_1000D4240);
  sub_100010F24(v177, &qword_100119920, &qword_1000D4250);
  v143(v174, v144);
  return sub_100010F24(v173, &qword_100119938, &qword_1000D4268);
}

uint64_t sub_1000A665C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for PeopleView();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  __chkstk_darwin(v3 - 8);
  v51 = sub_10000FEB8(&qword_100119A18, &unk_1000D4650);
  v43 = *(v51 - 8);
  v5 = v43;
  v6 = *(v43 + 64);
  v7 = __chkstk_darwin(v51);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v42 - v9;
  v10 = sub_10000FEB8(&qword_100118D78, &qword_1000D2050);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v42 - v12;
  sub_1000C65D4();
  v47 = sub_1000C68C4();
  v46 = v14;
  v16 = v15;
  v49 = v17;
  v48 = sub_1000C6A34();
  v45 = sub_1000C6784();
  sub_1000C6804();
  v18 = enum case for Font.Design.default(_:);
  v19 = sub_1000C67F4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v13, v18, v19);
  (*(v20 + 56))(v13, 0, 1, v19);
  *(&v54 + 1) = sub_1000C6824();
  sub_100010F24(v13, &qword_100118D78, &qword_1000D2050);
  *&v54 = swift_getKeyPath();
  v53 = v16 & 1;
  LOBYTE(v62[0]) = v16 & 1;
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  sub_10008EC80(a1, &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v25 = swift_allocObject();
  sub_1000AF064(&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  sub_10000FEB8(&qword_100116C40, &qword_1000CD170);
  sub_10000FEB8(&qword_100119A20, &qword_1000D4698);
  sub_10001E490(&qword_100119A28, &qword_100116C40, &qword_1000CD170);
  sub_10001E490(&qword_100119A30, &qword_100119A20, &qword_1000D4698);
  sub_1000B00B4(&qword_100119A38, type metadata accessor for PersonRowViewModel);
  v26 = v55;
  sub_1000C6BF4();
  v27 = *(v5 + 16);
  v28 = v50;
  v29 = v51;
  v27(v50, v26, v51);
  v30 = v47;
  v31 = v46;
  *&v58 = v47;
  *(&v58 + 1) = v46;
  LOBYTE(v59) = v53;
  *(&v59 + 1) = *v57;
  DWORD1(v59) = *&v57[3];
  v32 = v49;
  v33 = v48;
  *(&v59 + 1) = v49;
  *&v60 = v48;
  LOBYTE(v26) = v45;
  BYTE8(v60) = v45;
  *(&v60 + 9) = *v56;
  HIDWORD(v60) = *&v56[3];
  v61 = v54;
  v34 = v58;
  v35 = v59;
  v36 = v54;
  v37 = v52;
  *(v52 + 2) = v60;
  *(v37 + 3) = v36;
  *v37 = v34;
  *(v37 + 1) = v35;
  v38 = v37;
  v39 = sub_10000FEB8(&qword_100119A40, &qword_1000D46A0);
  v27(&v38[*(v39 + 48)], v28, v29);
  sub_100017574(&v58, v62, &qword_100119A48, &unk_1000D46A8);
  v40 = *(v43 + 8);
  v40(v55, v29);
  v40(v28, v29);
  v62[0] = v30;
  v62[1] = v31;
  v63 = v53;
  *v64 = *v57;
  *&v64[3] = *&v57[3];
  v65 = v32;
  v66 = v33;
  v67 = v26;
  *v68 = *v56;
  *&v68[3] = *&v56[3];
  v69 = v54;
  return sub_100010F24(v62, &qword_100119A48, &unk_1000D46A8);
}

uint64_t sub_1000A6D20(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = type metadata accessor for RequesterInfoView();
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v21 = v11;
  v22 = a2;
  sub_10008EC80(a2, &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1000AF064(&v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  *v10 = swift_getKeyPath();
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  swift_storeEnumTagMultiPayload();
  v14 = v10 + v7[5];
  *v14 = sub_1000AFB7C;
  *(v14 + 1) = v13;
  v14[16] = 0;
  v15 = v10 + v7[6];
  v23 = 3;

  sub_10000FEB8(&qword_100117018, &qword_1000CD830);
  sub_1000C6AD4();
  v16 = v25;
  *v15 = v24;
  *(v15 + 1) = v16;
  v17 = v7[7];
  *(v10 + v17) = swift_getKeyPath();
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  swift_storeEnumTagMultiPayload();
  v18 = v7[8];
  *(v10 + v18) = swift_getKeyPath();
  sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
  swift_storeEnumTagMultiPayload();
  sub_1000AFC2C();
  sub_1000B00B4(&qword_100119A58, type metadata accessor for RequesterInfoView);
  return sub_1000C6324();
}

uint64_t sub_1000A6FFC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v6 = sub_1000C6224();
  swift_beginAccess();
  v7 = *(v6 + 16);

  v8 = sub_1000C6224();
  v9 = type metadata accessor for RequesterInfoViewModel();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = sub_1000B3CA8(v7, a2, v8);

  return v12;
}

uint64_t sub_1000A7138@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  sub_1000C6224();
  sub_10000FEB8(&qword_100117018, &qword_1000CD830);
  sub_1000C6AD4();
  v9 = sub_1000C6334();
  *a3 = a1;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
}

double sub_1000A7288@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v74 = sub_1000C6694();
  v76 = *(v74 - 8);
  v3 = *(v76 + 64);
  __chkstk_darwin(v74);
  v71 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000FEB8(&qword_100117C30, &qword_1000CFA00);
  v6 = *(v5 - 8);
  v75 = v5 - 8;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v72 = &v71 - v8;
  v9 = sub_10000FEB8(&unk_100117BD0, qword_1000CF980);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v78 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v82 = &v71 - v14;
  __chkstk_darwin(v13);
  v16 = &v71 - v15;
  v73 = a1;
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v80 = sub_1000C6A74();
  v20 = v74;
  v21 = v72;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v77 = *(&v102 + 1);
  v79 = v102;
  v22 = v73 + *(type metadata accessor for PeopleView() + 44);
  sub_1000A3704(&qword_100117C90, &unk_1000CFAB0, &unk_100117BD0, qword_1000CF980, v16);
  v23 = v82;
  v24 = v76;
  (*(v76 + 104))(v82, enum case for UserInterfaceSizeClass.regular(_:), v20);
  (*(v24 + 56))(v23, 0, 1, v20);
  v25 = *(v75 + 56);
  sub_100017574(v16, v21, &unk_100117BD0, qword_1000CF980);
  sub_100017574(v23, v21 + v25, &unk_100117BD0, qword_1000CF980);
  v26 = *(v24 + 48);
  if (v26(v21, 1, v20) == 1)
  {
    sub_100010F24(v23, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v16, &unk_100117BD0, qword_1000CF980);
    if (v26(v21 + v25, 1, v20) == 1)
    {
      sub_100010F24(v21, &unk_100117BD0, qword_1000CF980);
LABEL_9:
      v49 = sub_1000C6794();
      sub_1000C6204();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      LOBYTE(v83) = 0;
      v58 = v80;

      v59 = v77;

      v60 = sub_1000C67A4();
      sub_1000C6204();
      LOBYTE(v91[0]) = 0;
      *&v93 = v58;
      *(&v93 + 1) = v79;
      *&v94 = v59;
      BYTE8(v94) = v49;
      *&v95 = v51;
      *(&v95 + 1) = v53;
      *&v96 = v55;
      *(&v96 + 1) = v57;
      LOBYTE(v97) = 0;
      BYTE8(v97) = v60;
      *&v98 = v61;
      *(&v98 + 1) = v62;
      *&v99 = v63;
      *(&v99 + 1) = v64;
      v100 = 0;
      v87 = v97;
      v88 = v98;
      v89 = v99;
      v90 = 0;
      v83 = v93;
      v84 = v94;
      v85 = v95;
      v86 = v96;
      v101 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_100017574(v21, v78, &unk_100117BD0, qword_1000CF980);
  if (v26(v21 + v25, 1, v20) == 1)
  {
    sub_100010F24(v82, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v16, &unk_100117BD0, qword_1000CF980);
    (*(v24 + 8))(v78, v20);
LABEL_6:
    sub_100010F24(v21, &qword_100117C30, &qword_1000CFA00);
    goto LABEL_7;
  }

  v43 = v24;
  v44 = *(v24 + 32);
  v45 = v71;
  v44(v71, v21 + v25, v20);
  sub_1000B00B4(&qword_100117C58, &type metadata accessor for UserInterfaceSizeClass);
  v46 = v78;
  v47 = sub_1000C6D34();
  v48 = *(v43 + 8);
  v48(v45, v20);
  sub_100010F24(v82, &unk_100117BD0, qword_1000CF980);
  sub_100010F24(v16, &unk_100117BD0, qword_1000CF980);
  v48(v46, v20);
  sub_100010F24(v21, &unk_100117BD0, qword_1000CF980);
  if (v47)
  {
    goto LABEL_9;
  }

LABEL_7:
  v27 = sub_1000C6794();
  sub_1000C6204();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  LOBYTE(v83) = 0;
  v36 = v80;

  v37 = v77;

  v38 = sub_1000C67A4();
  sub_1000C6204();
  LOBYTE(v91[0]) = 0;
  *&v93 = v36;
  *(&v93 + 1) = v79;
  *&v94 = v37;
  BYTE8(v94) = v27;
  *&v95 = v29;
  *(&v95 + 1) = v31;
  *&v96 = v33;
  *(&v96 + 1) = v35;
  LOBYTE(v97) = 0;
  BYTE8(v97) = v38;
  *&v98 = v39;
  *(&v98 + 1) = v40;
  *&v99 = v41;
  *(&v99 + 1) = v42;
  v100 = 0;
  v87 = v97;
  v88 = v98;
  v89 = v99;
  v90 = 256;
  v83 = v93;
  v84 = v94;
  v85 = v95;
  v86 = v96;
  v101 = 1;
LABEL_10:
  sub_100017574(&v93, v91, &qword_100119970, &qword_1000D42D0);
  sub_10000FEB8(&qword_100119970, &qword_1000D42D0);
  sub_1000AF2D8(&qword_100119968, &qword_100119970, &qword_1000D42D0, sub_1000AF2A8);
  sub_1000C6624();

  sub_100010F24(&v93, &qword_100119970, &qword_1000D42D0);
  v106 = v91[6];
  v65 = v92;
  v102 = v91[0];
  v103 = v91[1];
  v104 = v91[2];
  v105 = v91[3];
  v66 = v91[5];
  v67 = v81;
  *(v81 + 64) = v91[4];
  *(v67 + 80) = v66;
  *(v67 + 96) = v106;
  *(v67 + 112) = v65;
  v68 = v103;
  *v67 = v102;
  *(v67 + 16) = v68;
  result = *&v104;
  v70 = v105;
  *(v67 + 32) = v104;
  *(v67 + 48) = v70;
  return result;
}

uint64_t sub_1000A7AC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v111 = a2;
  v95 = sub_1000C6374();
  v94 = *(v95 - 8);
  v3 = *(v94 + 64);
  v4 = __chkstk_darwin(v95);
  v92 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v5;
  __chkstk_darwin(v4);
  v93 = &v88 - v6;
  v97 = sub_10000FEB8(&qword_100119AC0, &qword_1000D4978);
  v7 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v103 = &v88 - v8;
  v106 = sub_10000FEB8(&qword_100119AC8, &qword_1000D4980);
  v104 = *(v106 - 8);
  v9 = *(v104 + 64);
  __chkstk_darwin(v106);
  v96 = &v88 - v10;
  v11 = sub_10000FEB8(&qword_100119AD0, &qword_1000D4988);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v110 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v109 = &v88 - v15;
  v16 = type metadata accessor for PeopleView();
  v99 = *(v16 - 8);
  v17 = *(v99 + 64);
  __chkstk_darwin(v16 - 8);
  v113 = v18;
  v112 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10000FEB8(&qword_100119AD8, &qword_1000D4990);
  v107 = *(v108 - 8);
  v19 = *(v107 + 64);
  v20 = __chkstk_darwin(v108);
  v105 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v117 = &v88 - v22;
  v23 = sub_10000FEB8(&qword_100118D78, &qword_1000D2050);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v88 - v25;
  v27 = *a1;
  v28 = *(a1 + 8);
  v29 = *(a1 + 16);
  v30 = type metadata accessor for PeopleViewModel();
  v31 = sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v102 = v28;
  v101 = v29;
  v100 = v30;
  v98 = v31;
  v32 = sub_1000C6224();
  swift_beginAccess();
  v33 = *(*(v32 + 16) + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  KeyPath = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (LOBYTE(v126[0]) == 1)
  {
    sub_1000C65D4();
    v121 = sub_1000C68C4();
    v120 = v38;
    v40 = v39;
    v119 = v41;
    v118 = sub_1000C6A34();
    v42 = sub_1000C6784();
    sub_1000C6804();
    v43 = enum case for Font.Design.default(_:);
    v44 = a1;
    v45 = sub_1000C67F4();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v26, v43, v45);
    (*(v46 + 56))(v26, 0, 1, v45);
    a1 = v44;
    v35 = sub_1000C6824();
    sub_100010F24(v26, &qword_100118D78, &qword_1000D2050);
    KeyPath = swift_getKeyPath();
    LOBYTE(v126[0]) = v40 & 1;
    v37 = v40 & 1;
    v36 = v42;
  }

  v89 = a1;
  v114 = v36;
  v115 = v37;
  *&v116 = KeyPath;
  *(&v116 + 1) = v35;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v47 = v112;
  sub_10008EC80(a1, v112);
  v48 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v99 = *(v99 + 80);
  v49 = swift_allocObject();
  v90 = v48;
  sub_1000AF064(v47, v49 + v48);
  sub_10000FEB8(&qword_100116C40, &qword_1000CD170);
  sub_10000FEB8(&qword_100119AE0, &qword_1000D49E0);
  sub_10001E490(&qword_100119A28, &qword_100116C40, &qword_1000CD170);
  sub_1000B01C8();
  sub_1000B00B4(&qword_100119A38, type metadata accessor for PersonRowViewModel);
  sub_1000C6BF4();
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (LOBYTE(v126[0]) == 1)
  {
    v50 = v89;
    v51 = v112;
    sub_10008EC80(v89, v112);
    v52 = v90;
    v53 = swift_allocObject();
    sub_1000AF064(v51, v53 + v52);
    sub_1000B0340();
    sub_1000C6B34();
    v54 = v94;
    v55 = v93;
    v56 = v95;
    (*(v94 + 104))(v93, enum case for CoordinateSpace.global(_:), v95);
    sub_10008EC80(v50, v51);
    v57 = swift_allocObject();
    sub_1000AF064(v51, v57 + v52);
    v58 = v92;
    (*(v54 + 16))(v92, v55, v56);
    v59 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v60 = swift_allocObject();
    (*(v54 + 32))(v60 + v59, v58, v56);
    v61 = sub_1000C6C54();
    v63 = v62;
    (*(v54 + 8))(v55, v56);
    v64 = sub_10000FEB8(&qword_100119B18, &qword_1000D4A50);
    v65 = v103;
    v66 = &v103[*(v64 + 36)];
    *v66 = sub_1000B04AC;
    v66[1] = v60;
    v66[2] = v61;
    v66[3] = v63;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_1000B0394;
    *(v67 + 24) = v57;
    v68 = (v65 + *(v97 + 36));
    *v68 = sub_1000B0564;
    v68[1] = v67;
    v69 = *(v50 + 72);
    LOBYTE(v122) = *(v50 + 64);
    *(&v122 + 1) = v69;
    sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
    sub_1000C6B04();
    sub_10008EC80(v50, v51);
    v70 = swift_allocObject();
    sub_1000AF064(v51, v70 + v52);
    sub_1000B07A8();
    sub_10009CBAC();
    v71 = v96;
    sub_1000C69B4();

    sub_100010F24(v65, &qword_100119AC0, &qword_1000D4978);
    v72 = v104;
    v73 = v109;
    v74 = v106;
    (*(v104 + 32))(v109, v71, v106);
    v75 = 0;
  }

  else
  {
    v75 = 1;
    v73 = v109;
    v74 = v106;
    v72 = v104;
  }

  (*(v72 + 56))(v73, v75, 1, v74);
  v76 = v107;
  v77 = *(v107 + 16);
  v78 = v105;
  v79 = v117;
  v80 = v108;
  v77(v105, v117, v108);
  v81 = v110;
  sub_100017574(v73, v110, &qword_100119AD0, &qword_1000D4988);
  *&v122 = v121;
  *(&v122 + 1) = v120;
  *&v123 = v115;
  *(&v123 + 1) = v119;
  *&v124 = v118;
  *(&v124 + 1) = v114;
  v125 = v116;
  v82 = v123;
  v83 = v111;
  *v111 = v122;
  *(v83 + 1) = v82;
  v84 = v125;
  *(v83 + 2) = v124;
  *(v83 + 3) = v84;
  v85 = sub_10000FEB8(&qword_100119B00, &qword_1000D4A40);
  v77(&v83[*(v85 + 48)], v78, v80);
  sub_100017574(v81, &v83[*(v85 + 64)], &qword_100119AD0, &qword_1000D4988);
  sub_100017574(&v122, v126, &qword_100119B08, &qword_1000D4A48);
  sub_100010F24(v73, &qword_100119AD0, &qword_1000D4988);
  v86 = *(v76 + 8);
  v86(v79, v80);
  sub_100010F24(v81, &qword_100119AD0, &qword_1000D4988);
  v86(v78, v80);
  v126[0] = v121;
  v126[1] = v120;
  v126[2] = v115;
  v126[3] = v119;
  v126[4] = v118;
  v126[5] = v114;
  v127 = v116;
  return sub_100010F24(v126, &qword_100119B08, &qword_1000D4A48);
}

uint64_t sub_1000A898C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v5 = sub_1000C6224();
  v15 = *(a1 + 6);
  v16 = *(a1 + 7);
  v17 = a1[16];
  sub_10000FEB8(&qword_100119B60, &qword_1000D4A70);
  sub_1000C6AE4();
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_5;
  }

  v7 = sub_10000C7BC(v9, v11, v13, v14);

  result = swift_unknownObjectRelease();
  if ((v7 & 1) == 0)
  {
LABEL_5:
    v10 = *(a1 + 64);
    v12 = a1[9];
    sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
    return sub_1000C6AF4();
  }

  return result;
}

uint64_t sub_1000A8B0C(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  v4 = *(a1 + 128);
  sub_10000FEB8(&qword_100119B60, &qword_1000D4A70);
  return sub_1000C6AF4();
}

double sub_1000A8B6C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  sub_1000C6224();
  v6 = sub_10002E018();

  *a2 = v6;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  return result;
}

uint64_t sub_1000A8C20@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v84 = a2;
  v83 = sub_1000C6694();
  v86 = *(v83 - 8);
  v3 = *(v86 + 64);
  __chkstk_darwin(v83);
  v76 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10000FEB8(&qword_100117C30, &qword_1000CFA00);
  v5 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v82 = &v76 - v6;
  v7 = sub_10000FEB8(&unk_100117BD0, qword_1000CF980);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v77 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v85 = &v76 - v12;
  __chkstk_darwin(v11);
  v81 = &v76 - v13;
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v17 = sub_1000C6224();
  swift_beginAccess();
  v18 = *(*(v17 + 16) + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (LOBYTE(v95[0]) != 1)
  {
    goto LABEL_6;
  }

  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v19 = *&v95[0] >> 62 ? sub_1000C72F4() : *((*&v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v19 <= 0)
  {
LABEL_6:
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v79 = sub_1000C6A74();
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v78 = v95[0];
    v30 = a1 + *(type metadata accessor for PeopleView() + 44);
    v31 = v81;
    sub_1000A3704(&qword_100117C90, &unk_1000CFAB0, &unk_100117BD0, qword_1000CF980, v81);
    v33 = v85;
    v32 = v86;
    v34 = v83;
    (*(v86 + 104))(v85, enum case for UserInterfaceSizeClass.regular(_:), v83);
    (*(v32 + 56))(v33, 0, 1, v34);
    v35 = *(v80 + 48);
    v36 = v82;
    sub_100017574(v31, v82, &unk_100117BD0, qword_1000CF980);
    sub_100017574(v33, v36 + v35, &unk_100117BD0, qword_1000CF980);
    v37 = *(v32 + 48);
    if (v37(v36, 1, v34) == 1)
    {
      sub_100010F24(v33, &unk_100117BD0, qword_1000CF980);
      sub_100010F24(v31, &unk_100117BD0, qword_1000CF980);
      if (v37(v36 + v35, 1, v34) == 1)
      {
        sub_100010F24(v36, &unk_100117BD0, qword_1000CF980);
LABEL_14:
        v59 = sub_1000C6794();
        sub_1000C6204();
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v67 = v66;
        LOBYTE(v87) = 0;
        v68 = v79;

        v69 = *(&v78 + 1);

        v70 = sub_1000C67A4();
        sub_1000C6204();
        LOBYTE(v95[0]) = 0;
        *&v99 = v68;
        *(&v99 + 1) = v78;
        *&v100 = v69;
        BYTE8(v100) = v59;
        *&v101 = v61;
        *(&v101 + 1) = v63;
        *&v102 = v65;
        *(&v102 + 1) = v67;
        LOBYTE(v103) = 0;
        BYTE8(v103) = v70;
        *&v104 = v71;
        *(&v104 + 1) = v72;
        *&v105 = v73;
        *(&v105 + 1) = v74;
        v106 = 0;
        v91 = v103;
        v92 = v104;
        v93 = v105;
        v94 = 0;
        v87 = v99;
        v88 = v100;
        v89 = v101;
        v90 = v102;
        v107 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v38 = v77;
      sub_100017574(v36, v77, &unk_100117BD0, qword_1000CF980);
      if (v37(v36 + v35, 1, v34) != 1)
      {
        v55 = v86;
        v56 = v76;
        (*(v86 + 32))(v76, v36 + v35, v34);
        sub_1000B00B4(&qword_100117C58, &type metadata accessor for UserInterfaceSizeClass);
        v57 = sub_1000C6D34();
        v58 = *(v55 + 8);
        v58(v56, v34);
        sub_100010F24(v85, &unk_100117BD0, qword_1000CF980);
        sub_100010F24(v31, &unk_100117BD0, qword_1000CF980);
        v58(v38, v34);
        sub_100010F24(v36, &unk_100117BD0, qword_1000CF980);
        if (v57)
        {
          goto LABEL_14;
        }

LABEL_12:
        v39 = sub_1000C6794();
        sub_1000C6204();
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;
        LOBYTE(v87) = 0;
        v48 = v79;

        v49 = *(&v78 + 1);

        v50 = sub_1000C67A4();
        sub_1000C6204();
        LOBYTE(v95[0]) = 0;
        *&v99 = v48;
        *(&v99 + 1) = v78;
        *&v100 = v49;
        BYTE8(v100) = v39;
        *&v101 = v41;
        *(&v101 + 1) = v43;
        *&v102 = v45;
        *(&v102 + 1) = v47;
        LOBYTE(v103) = 0;
        BYTE8(v103) = v50;
        *&v104 = v51;
        *(&v104 + 1) = v52;
        *&v105 = v53;
        *(&v105 + 1) = v54;
        v106 = 0;
        v91 = v103;
        v92 = v104;
        v93 = v105;
        v94 = 256;
        v87 = v99;
        v88 = v100;
        v89 = v101;
        v90 = v102;
        v107 = 1;
LABEL_15:
        sub_100017574(&v99, v95, &qword_100119970, &qword_1000D42D0);
        sub_10000FEB8(&qword_100119970, &qword_1000D42D0);
        sub_1000AF2D8(&qword_100119968, &qword_100119970, &qword_1000D42D0, sub_1000AF2A8);
        sub_1000C6624();

        result = sub_100010F24(&v99, &qword_100119970, &qword_1000D42D0);
        v23 = v95[0];
        v25 = v95[1];
        v26 = v95[2];
        v28 = v95[4];
        v29 = v95[5];
        v27 = v95[3];
        v21 = v96;
        v22 = v97;
        v24 = v98;
        goto LABEL_16;
      }

      sub_100010F24(v85, &unk_100117BD0, qword_1000CF980);
      sub_100010F24(v31, &unk_100117BD0, qword_1000CF980);
      (*(v86 + 8))(v38, v34);
    }

    sub_100010F24(v36, &qword_100117C30, &qword_1000CFA00);
    goto LABEL_12;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0uLL;
  v24 = -256;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
LABEL_16:
  v75 = v84;
  *v84 = v23;
  v75[1] = v25;
  v75[2] = v26;
  v75[3] = v27;
  v75[4] = v28;
  v75[5] = v29;
  *(v75 + 12) = v21;
  *(v75 + 13) = v22;
  *(v75 + 56) = v24;
  return result;
}

uint64_t sub_1000A9598@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  result = sub_1000C68C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000A9610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_1000C6634();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  __chkstk_darwin(v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000FEB8(&qword_100119A90, &qword_1000D5BD0);
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  __chkstk_darwin(v7);
  v10 = &v55 - v9;
  v11 = sub_10000FEB8(&qword_100119A98, &qword_1000D48D0);
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  __chkstk_darwin(v11);
  v62 = &v55 - v13;
  v14 = sub_10000FEB8(&qword_100119AA0, &qword_1000D48D8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v60 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v59 = &v55 - v19;
  v20 = __chkstk_darwin(v18);
  v58 = &v55 - v21;
  __chkstk_darwin(v20);
  v69 = &v55 - v22;
  v24 = *a1;
  v23 = a1[1];
  v25 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v70 = v24;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v27 = v71;
  v26 = v72;

  v28 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v28 = v27 & 0xFFFFFFFFFFFFLL;
  }

  v56 = v6;
  if (v28)
  {
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v73 = v71;
    v74 = v72;
    sub_1000C6234();
    swift_getKeyPath();
    sub_1000C6354();

    sub_1000383C8();
    sub_1000C6B64();
    sub_1000C63E4();
    sub_10001E490(&qword_100119AA8, &qword_100119A90, &qword_1000D5BD0);
    sub_1000B00B4(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect);
    v29 = v62;
    v30 = v64;
    v31 = v66;
    sub_1000C6924();
    (*(v65 + 8))(v6, v31);
    (*(v63 + 8))(v10, v30);
    v33 = v67;
    v32 = v68;
    v34 = v69;
    (*(v67 + 32))(v69, v29, v68);
    v35 = 0;
    v36 = v32;
    v37 = v34;
  }

  else
  {
    v35 = 1;
    v36 = v68;
    v37 = v69;
    v33 = v67;
  }

  v38 = 1;
  v57 = *(v33 + 56);
  v57(v37, v35, 1, v36);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v40 = v71;
  v39 = v72;

  v41 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v41 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v73 = v71;
    v74 = v72;
    sub_1000C6234();
    swift_getKeyPath();
    sub_1000C6354();

    sub_1000383C8();
    sub_1000C6B64();
    v42 = v56;
    sub_1000C63E4();
    sub_10001E490(&qword_100119AA8, &qword_100119A90, &qword_1000D5BD0);
    sub_1000B00B4(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect);
    v43 = v62;
    v44 = v64;
    v45 = v66;
    sub_1000C6924();
    (*(v65 + 8))(v42, v45);
    (*(v63 + 8))(v10, v44);
    v46 = v68;
    v47 = v58;
    (*(v67 + 32))(v58, v43, v68);
    v38 = 0;
    v48 = v46;
  }

  else
  {
    v48 = v68;
    v47 = v58;
  }

  v57(v47, v38, 1, v48);
  v49 = v69;
  v50 = v59;
  sub_100017574(v69, v59, &qword_100119AA0, &qword_1000D48D8);
  v51 = v60;
  sub_100017574(v47, v60, &qword_100119AA0, &qword_1000D48D8);
  v52 = v61;
  sub_100017574(v50, v61, &qword_100119AA0, &qword_1000D48D8);
  v53 = sub_10000FEB8(&qword_100119AB8, &qword_1000D4930);
  sub_100017574(v51, v52 + *(v53 + 48), &qword_100119AA0, &qword_1000D48D8);
  sub_100010F24(v47, &qword_100119AA0, &qword_1000D48D8);
  sub_100010F24(v49, &qword_100119AA0, &qword_1000D48D8);
  sub_100010F24(v51, &qword_100119AA0, &qword_1000D48D8);
  return sub_100010F24(v50, &qword_100119AA0, &qword_1000D48D8);
}

uint64_t sub_1000A9F48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v6 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v6 = *v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    sub_1000383C8();
    result = sub_1000C68D4();
    v6 = v10 & 1;
  }

  else
  {
    result = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = result;
  a2[1] = v8;
  a2[2] = v6;
  a2[3] = v9;
  return result;
}

uint64_t sub_1000AA108@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  type metadata accessor for GlobalPermissionViewModel();
  sub_1000B00B4(&qword_100117130, type metadata accessor for GlobalPermissionViewModel);
  sub_1000C6224();
  result = sub_1000C6334();
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1000AA1AC()
{
  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CFF90;
  *(inited + 32) = 7;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v76._countAndFlagsBits = 0x80000001000DC980;
  v89._object = 0x80000001000DC950;
  v89._countAndFlagsBits = 0xD000000000000020;
  v102.value._countAndFlagsBits = 0;
  v102.value._object = 0;
  v4.super.isa = v3;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v5 = sub_1000C5B74(v89, v102, v4, v115, v76);
  v7 = v6;

  *(inited + 40) = v5;
  *(inited + 48) = v7;
  *(inited + 56) = 8;
  v8 = [v2 mainBundle];
  v77._countAndFlagsBits = 0x80000001000DCA00;
  v90._countAndFlagsBits = 0xD000000000000022;
  v90._object = 0x80000001000DC9D0;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v9.super.isa = v8;
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  v10 = sub_1000C5B74(v90, v103, v9, v116, v77);
  v12 = v11;

  *(inited + 64) = v10;
  *(inited + 72) = v12;
  *(inited + 80) = 9;
  v13 = [v2 mainBundle];
  v78._countAndFlagsBits = 0x80000001000DCA90;
  v91._object = 0x80000001000DCA60;
  v91._countAndFlagsBits = 0xD000000000000020;
  v104.value._countAndFlagsBits = 0;
  v104.value._object = 0;
  v14.super.isa = v13;
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  v15 = sub_1000C5B74(v91, v104, v14, v117, v78);
  v17 = v16;

  *(inited + 88) = v15;
  *(inited + 96) = v17;
  *(inited + 104) = 10;
  v18 = [v2 mainBundle];
  v79._countAndFlagsBits = 0x80000001000DCB10;
  v92._countAndFlagsBits = 0xD000000000000025;
  v92._object = 0x80000001000DCAE0;
  v105.value._countAndFlagsBits = 0;
  v105.value._object = 0;
  v19.super.isa = v18;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v20 = sub_1000C5B74(v92, v105, v19, v118, v79);
  v22 = v21;

  *(inited + 112) = v20;
  *(inited + 120) = v22;
  *(inited + 128) = 11;
  v23 = [v2 mainBundle];
  v80._countAndFlagsBits = 0x80000001000DCB90;
  v93._countAndFlagsBits = 0xD000000000000021;
  v93._object = 0x80000001000DCB60;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v24.super.isa = v23;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v25 = sub_1000C5B74(v93, v106, v24, v119, v80);
  v27 = v26;

  *(inited + 136) = v25;
  *(inited + 144) = v27;
  *(inited + 152) = 0;
  v28 = [v2 mainBundle];
  v81._countAndFlagsBits = 0x80000001000DCBF0;
  v94._countAndFlagsBits = 0xD000000000000022;
  v94._object = 0x80000001000DC9D0;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v29.super.isa = v28;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v30 = sub_1000C5B74(v94, v107, v29, v120, v81);
  v32 = v31;

  *(inited + 160) = v30;
  *(inited + 168) = v32;
  *(inited + 176) = 1;
  v33 = [v2 mainBundle];
  v82._countAndFlagsBits = 0x80000001000DCC70;
  v95._countAndFlagsBits = 0xD000000000000024;
  v95._object = 0x80000001000DCC40;
  v108.value._countAndFlagsBits = 0;
  v108.value._object = 0;
  v34.super.isa = v33;
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  v35 = sub_1000C5B74(v95, v108, v34, v121, v82);
  v37 = v36;

  *(inited + 184) = v35;
  *(inited + 192) = v37;
  *(inited + 200) = 2;
  v38 = [v2 mainBundle];
  v83._countAndFlagsBits = 0x80000001000DCCF0;
  v96._countAndFlagsBits = 0xD000000000000027;
  v96._object = 0x80000001000DCCC0;
  v109.value._countAndFlagsBits = 0;
  v109.value._object = 0;
  v39.super.isa = v38;
  v122._countAndFlagsBits = 0;
  v122._object = 0xE000000000000000;
  v40 = sub_1000C5B74(v96, v109, v39, v122, v83);
  v42 = v41;

  *(inited + 208) = v40;
  *(inited + 216) = v42;
  *(inited + 224) = 3;
  v43 = [v2 mainBundle];
  v84._countAndFlagsBits = 0x80000001000DCD80;
  v97._countAndFlagsBits = 0xD000000000000028;
  v97._object = 0x80000001000DCD50;
  v110.value._countAndFlagsBits = 0;
  v110.value._object = 0;
  v44.super.isa = v43;
  v123._countAndFlagsBits = 0;
  v123._object = 0xE000000000000000;
  v45 = sub_1000C5B74(v97, v110, v44, v123, v84);
  v47 = v46;

  *(inited + 232) = v45;
  *(inited + 240) = v47;
  *(inited + 248) = 4;
  v48 = [v2 mainBundle];
  v85._countAndFlagsBits = 0x80000001000DCE10;
  v98._countAndFlagsBits = 0xD000000000000021;
  v98._object = 0x80000001000DCDE0;
  v111.value._countAndFlagsBits = 0;
  v111.value._object = 0;
  v49.super.isa = v48;
  v124._countAndFlagsBits = 0;
  v124._object = 0xE000000000000000;
  v50 = sub_1000C5B74(v98, v111, v49, v124, v85);
  v52 = v51;

  *(inited + 256) = v50;
  *(inited + 264) = v52;
  *(inited + 272) = 5;
  v53 = [v2 mainBundle];
  v86._countAndFlagsBits = 0x80000001000DCE90;
  v99._countAndFlagsBits = 0xD000000000000021;
  v99._object = 0x80000001000DCE60;
  v112.value._countAndFlagsBits = 0;
  v112.value._object = 0;
  v54.super.isa = v53;
  v125._countAndFlagsBits = 0;
  v125._object = 0xE000000000000000;
  v55 = sub_1000C5B74(v99, v112, v54, v125, v86);
  v57 = v56;

  *(inited + 280) = v55;
  *(inited + 288) = v57;
  *(inited + 296) = 6;
  v58 = [v2 mainBundle];
  v100._countAndFlagsBits = 0xD00000000000001FLL;
  v87._countAndFlagsBits = 0x80000001000DCF00;
  v100._object = 0x80000001000DCEE0;
  v113.value._countAndFlagsBits = 0;
  v113.value._object = 0;
  v59.super.isa = v58;
  v126._countAndFlagsBits = 0;
  v126._object = 0xE000000000000000;
  v60 = sub_1000C5B74(v100, v113, v59, v126, v87);
  v62 = v61;

  *(inited + 304) = v60;
  *(inited + 312) = v62;
  *(inited + 320) = 13;
  v63 = [v2 mainBundle];
  v88._countAndFlagsBits = 0x80000001000DCF80;
  v101._object = 0x80000001000DCF50;
  v101._countAndFlagsBits = 0xD000000000000020;
  v114.value._countAndFlagsBits = 0;
  v114.value._object = 0;
  v64.super.isa = v63;
  v127._countAndFlagsBits = 0;
  v127._object = 0xE000000000000000;
  v65 = sub_1000C5B74(v101, v114, v64, v127, v88);
  v67 = v66;

  *(inited + 328) = v65;
  *(inited + 336) = v67;
  v68 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  v69 = *v0;
  v70 = v0[1];
  v71 = *(v0 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v72 = sub_1000C6224();
  swift_beginAccess();
  v73 = *(v72 + 16);

  v74 = sub_10003CC40(v68);

  return v74;
}

uint64_t sub_1000AA908(uint64_t a1)
{
  v2 = type metadata accessor for PeopleView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_1000C61F4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10008EC80(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1000AF064(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_10000FEB8(&qword_100119A60, &qword_1000D4738);
  sub_10001E490(&qword_100119A68, &qword_100119A60, &qword_1000D4738);
  return sub_1000C6B24();
}

uint64_t sub_1000AAB04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v4 = sub_1000C6224();
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_10000C218();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000AABF4@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_100050DE0(v2, v3, v5 & 1);

  sub_1000500D8(v2, v4, v6);
}

uint64_t sub_1000AACD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for PeopleView();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v30 = sub_10000FEB8(&qword_1001199E8, &qword_1000D4500);
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v30);
  v12 = &v29 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v32 == 1)
  {
    v16 = sub_1000C61F4();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_10008EC80(a1, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v18 = swift_allocObject();
    sub_1000AF064(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    sub_10000FEB8(&qword_100119A70, &qword_1000D4788);
    sub_1000AFDB4();
    sub_1000C6B24();
    v19 = [objc_opt_self() labelColor];
    v20 = sub_1000C6A64();
    KeyPath = swift_getKeyPath();
    v22 = v30;
    v23 = &v12[*(v30 + 36)];
    *v23 = KeyPath;
    v23[1] = v20;
    v24 = v31;
    sub_100020D0C(v12, v31, &qword_1001199E8, &qword_1000D4500);
    v25 = 0;
    v26 = v24;
    v27 = v22;
  }

  else
  {
    v25 = 1;
    v27 = v30;
    v26 = v31;
  }

  return (*(v9 + 56))(v26, v25, 1, v27);
}

uint64_t sub_1000AB08C(uint64_t *a1)
{
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v9 = sub_1000C6224();
  swift_beginAccess();
  v10 = *(v9 + 16);

  sub_1000C6F24();
  v11 = sub_1000C6F44();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  sub_1000C6F14();

  v12 = sub_1000C6F04();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  sub_1000B8860(0, 0, v5, &unk_1000D47D0, v13);
}

uint64_t sub_1000AB258@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C65C4();
  v19 = 1;
  sub_1000AB30C(v12);
  v3 = v12[0];
  v4 = v12[1];
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  LOBYTE(v12[0]) = v13;
  v18 = v16;
  v10 = v19;
  result = sub_1000C65E4();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = result;
  *(a1 + 88) = sub_1000AB408;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_1000AB30C@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1000C6A84();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_100050DE0(v2, v4, v6);

  sub_1000500D8(v2, v4, v6);
}

uint64_t sub_1000AB430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  type metadata accessor for GlobalPermissionViewModel();
  sub_1000B00B4(&qword_100117130, type metadata accessor for GlobalPermissionViewModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if ((v11 & 1) == 0)
  {
    sub_1000C6224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    sub_1000383C8();
    result = sub_1000C68D4();
    v8 = v10 & 1;
  }

  *a2 = result;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  return result;
}

uint64_t sub_1000AB5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for PeopleView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v26 - v8;
  v10 = sub_10000FEB8(&qword_1001199C0, &unk_1000D44E8);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v28 = v26 - v13;
  sub_1000C61C4();
  v14 = sub_1000C61F4();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  sub_10008EC80(a1, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1000AF064(v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_10000FEB8(&qword_100119A60, &qword_1000D4738);
  sub_10001E490(&qword_100119A68, &qword_100119A60, &qword_1000D4738);
  sub_1000C6B24();
  sub_1000C65D4();
  v17 = sub_1000C68C4();
  v19 = v18;
  LOBYTE(v9) = v20;
  v27 = v21;
  v22 = *(a1 + 56);
  v35 = *(a1 + 48);
  v36 = v22;
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  sub_1000C6B04();
  v26[1] = v34;
  v33 = a1;
  v32 = a1;
  sub_10000FEB8(&qword_1001195F0, &qword_1000D3320);
  sub_10001E490(&qword_1001199C8, &qword_1001199C0, &unk_1000D44E8);
  sub_10001E490(&qword_1001195E8, &qword_1001195F0, &qword_1000D3320);
  v23 = v29;
  v24 = v28;
  sub_1000C6994();

  sub_1000500D8(v17, v19, v9 & 1);

  return (*(v30 + 8))(v24, v23);
}

uint64_t sub_1000ABA4C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  return sub_1000C6AF4();
}

__n128 sub_1000ABAC4@<Q0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C65C4();
  a1(v7);
  *&v6[48] = *&v8[9];
  *&v6[39] = *v8;
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 17) = *v6;
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 65) = *&v6[48];
  return result;
}

uint64_t sub_1000ABB5C@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_100050DE0(v2, v3, v5 & 1);

  sub_1000500D8(v2, v4, v6);
}

uint64_t sub_1000ABC44(uint64_t a1)
{
  v2 = type metadata accessor for PeopleView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  sub_1000C61C4();
  v9 = sub_1000C61F4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_10008EC80(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1000AF064(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  return sub_1000C6B24();
}

uint64_t sub_1000ABE08(uint64_t *a1)
{
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14[-v4];
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v9 = sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  v14[15] = 1;

  sub_1000C60A4();
  v10 = sub_1000C6F44();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_1000C6F14();

  v11 = sub_1000C6F04();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  sub_1000B82F8(0, 0, v5, &unk_1000CDDF0, v12);
}

uint64_t sub_1000ABFE8@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  result = sub_1000C68C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000AC064@<X0>(uint64_t a1@<X8>)
{
  sub_1000AC0C0();
  sub_1000383C8();
  result = sub_1000C68D4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000AC0C0()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v95._countAndFlagsBits = 0x1000000000000049;
  v75._countAndFlagsBits = 0x80000001000DD020;
  v95._object = 0x80000001000DCFD0;
  v108.value._countAndFlagsBits = 0;
  v108.value._object = 0;
  v3.super.isa = v2;
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  sub_1000C5B74(v95, v108, v3, v121, v75);

  sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CB170;
  v91 = v0[1];
  v92 = *v0;
  v90 = *(v0 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v5 = sub_1000C6224();
  swift_beginAccess();
  v6 = *(v5 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000382F4();
  *(v4 + 32) = v93;
  *(v4 + 40) = v94;
  v7 = sub_1000C6D54();
  v76._object = v8;
  v89 = v7;

  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CFF90;
  *(inited + 32) = 7;
  v10 = [v1 mainBundle];
  v76._countAndFlagsBits = 0x80000001000DD020;
  v96._countAndFlagsBits = 0xD00000000000007BLL;
  v96._object = 0x80000001000DD050;
  v109.value._countAndFlagsBits = 0;
  v109.value._object = 0;
  v11.super.isa = v10;
  v122._countAndFlagsBits = 0;
  v122._object = 0xE000000000000000;
  v12 = sub_1000C5B74(v96, v109, v11, v122, v76);
  v14 = v13;

  *(inited + 40) = v12;
  *(inited + 48) = v14;
  *(inited + 56) = 8;
  v15 = [v1 mainBundle];
  v77._countAndFlagsBits = 0x80000001000DD170;
  v97._countAndFlagsBits = 0xD000000000000091;
  v97._object = 0x80000001000DD0D0;
  v110.value._countAndFlagsBits = 0;
  v110.value._object = 0;
  v16.super.isa = v15;
  v123._countAndFlagsBits = 0;
  v123._object = 0xE000000000000000;
  v17 = sub_1000C5B74(v97, v110, v16, v123, v77);
  v19 = v18;

  *(inited + 64) = v17;
  *(inited + 72) = v19;
  *(inited + 80) = 9;
  v20 = [v1 mainBundle];
  v78._countAndFlagsBits = 0x80000001000DD020;
  v98._countAndFlagsBits = 0xD00000000000007BLL;
  v98._object = 0x80000001000DD1B0;
  v111.value._countAndFlagsBits = 0;
  v111.value._object = 0;
  v21.super.isa = v20;
  v124._countAndFlagsBits = 0;
  v124._object = 0xE000000000000000;
  v22 = sub_1000C5B74(v98, v111, v21, v124, v78);
  v24 = v23;

  *(inited + 88) = v22;
  *(inited + 96) = v24;
  *(inited + 104) = 10;
  v25 = [v1 mainBundle];
  v79._countAndFlagsBits = 0x80000001000DD020;
  v99._countAndFlagsBits = 0xD000000000000080;
  v99._object = 0x80000001000DD230;
  v112.value._countAndFlagsBits = 0;
  v112.value._object = 0;
  v26.super.isa = v25;
  v125._countAndFlagsBits = 0;
  v125._object = 0xE000000000000000;
  v27 = sub_1000C5B74(v99, v112, v26, v125, v79);
  v29 = v28;

  *(inited + 112) = v27;
  *(inited + 120) = v29;
  *(inited + 128) = 11;
  v30 = [v1 mainBundle];
  v80._countAndFlagsBits = 0x80000001000DD020;
  v100._countAndFlagsBits = 0xD00000000000007CLL;
  v100._object = 0x80000001000DD2C0;
  v113.value._countAndFlagsBits = 0;
  v113.value._object = 0;
  v31.super.isa = v30;
  v126._countAndFlagsBits = 0;
  v126._object = 0xE000000000000000;
  v32 = sub_1000C5B74(v100, v113, v31, v126, v80);
  v34 = v33;

  *(inited + 136) = v32;
  *(inited + 144) = v34;
  *(inited + 152) = 0;
  v35 = [v1 mainBundle];
  v81._countAndFlagsBits = 0x80000001000DD020;
  v101._countAndFlagsBits = 0x10000000000000A2;
  v101._object = 0x80000001000DD340;
  v114.value._countAndFlagsBits = 0;
  v114.value._object = 0;
  v36.super.isa = v35;
  v127._countAndFlagsBits = 0;
  v127._object = 0xE000000000000000;
  v37 = sub_1000C5B74(v101, v114, v36, v127, v81);
  v39 = v38;

  *(inited + 160) = v37;
  *(inited + 168) = v39;
  *(inited + 176) = 1;
  v40 = [v1 mainBundle];
  v82._countAndFlagsBits = 0x80000001000DD020;
  v102._countAndFlagsBits = 0x1000000000000090;
  v102._object = 0x80000001000DD3F0;
  v115.value._countAndFlagsBits = 0;
  v115.value._object = 0;
  v41.super.isa = v40;
  v128._countAndFlagsBits = 0;
  v128._object = 0xE000000000000000;
  v42 = sub_1000C5B74(v102, v115, v41, v128, v82);
  v44 = v43;

  *(inited + 184) = v42;
  *(inited + 192) = v44;
  *(inited + 200) = 2;
  v45 = [v1 mainBundle];
  v83._countAndFlagsBits = 0x80000001000DD020;
  v103._countAndFlagsBits = 0x1000000000000093;
  v103._object = 0x80000001000DD490;
  v116.value._countAndFlagsBits = 0;
  v116.value._object = 0;
  v46.super.isa = v45;
  v129._countAndFlagsBits = 0;
  v129._object = 0xE000000000000000;
  v47 = sub_1000C5B74(v103, v116, v46, v129, v83);
  v49 = v48;

  *(inited + 208) = v47;
  *(inited + 216) = v49;
  *(inited + 224) = 3;
  v50 = [v1 mainBundle];
  v84._countAndFlagsBits = 0x80000001000DD020;
  v104._countAndFlagsBits = 0x1000000000000094;
  v104._object = 0x80000001000DD530;
  v117.value._countAndFlagsBits = 0;
  v117.value._object = 0;
  v51.super.isa = v50;
  v130._countAndFlagsBits = 0;
  v130._object = 0xE000000000000000;
  v52 = sub_1000C5B74(v104, v117, v51, v130, v84);
  v54 = v53;

  *(inited + 232) = v52;
  *(inited + 240) = v54;
  *(inited + 248) = 4;
  v55 = [v1 mainBundle];
  v85._countAndFlagsBits = 0x80000001000DD020;
  v105._object = 0x80000001000DD5D0;
  v105._countAndFlagsBits = 0x100000000000008DLL;
  v118.value._countAndFlagsBits = 0;
  v118.value._object = 0;
  v56.super.isa = v55;
  v131._countAndFlagsBits = 0;
  v131._object = 0xE000000000000000;
  v57 = sub_1000C5B74(v105, v118, v56, v131, v85);
  v59 = v58;

  *(inited + 256) = v57;
  *(inited + 264) = v59;
  *(inited + 272) = 5;
  v60 = [v1 mainBundle];
  v86._countAndFlagsBits = 0x80000001000DD020;
  v106._object = 0x80000001000DD660;
  v106._countAndFlagsBits = 0x100000000000008DLL;
  v119.value._countAndFlagsBits = 0;
  v119.value._object = 0;
  v61.super.isa = v60;
  v132._countAndFlagsBits = 0;
  v132._object = 0xE000000000000000;
  v62 = sub_1000C5B74(v106, v119, v61, v132, v86);
  v64 = v63;

  *(inited + 280) = v62;
  *(inited + 288) = v64;
  *(inited + 296) = 6;
  v65 = [v1 mainBundle];
  v107._countAndFlagsBits = 0x100000000000008BLL;
  v87._countAndFlagsBits = 0x80000001000DD020;
  v107._object = 0x80000001000DD6F0;
  v120.value._countAndFlagsBits = 0;
  v120.value._object = 0;
  v66.super.isa = v65;
  v133._countAndFlagsBits = 0;
  v133._object = 0xE000000000000000;
  v67 = sub_1000C5B74(v107, v120, v66, v133, v87);
  v69 = v68;

  *(inited + 304) = v67;
  *(inited + 312) = v69;
  *(inited + 320) = 13;
  *(inited + 328) = v89;
  *(inited + 336) = v88;
  v70 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  v71 = sub_1000C6224();
  swift_beginAccess();
  v72 = *(v71 + 16);

  v73 = sub_10003CC40(v70);

  return v73;
}

uint64_t sub_1000AC8D4(uint64_t a1)
{
  v2 = sub_1000C6654();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10000FEB8(&qword_100119860, &qword_1000D4070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  sub_1000C6644();
  v11 = a1;
  sub_10000FEB8(&qword_100119890, &unk_1000D41D0);
  sub_10001E490(&qword_100119898, &qword_100119890, &unk_1000D41D0);
  sub_1000C6254();
  sub_10001E490(&qword_100119868, &qword_100119860, &qword_1000D4070);
  sub_1000C6684();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000ACAC0(uint64_t a1)
{
  v2 = type metadata accessor for PeopleView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  sub_1000C61E4();
  v9 = sub_1000C61F4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_10008EC80(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1000AF064(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_10000FEB8(&qword_1001198A0, &qword_1000D41E0);
  sub_1000AF0E0();
  return sub_1000C6B24();
}

uint64_t sub_1000ACC98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  type metadata accessor for PeopleViewModel();
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
  v4 = sub_1000C6224();
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_10000816C();
  v6 = sub_1000077D8();
  if (v6)
  {
    [v6 _dismissViewControllerWithError:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000ACDA0()
{
  sub_1000C6C34();
  sub_10000FEB8(&qword_1001198C0, &qword_1000D41F0);
  sub_100010624(&qword_1001198B0, &qword_1000D41E8);
  sub_10001E490(&qword_1001198B8, &qword_1001198B0, &qword_1000D41E8);
  swift_getOpaqueTypeConformance2();
  return sub_1000C6C44();
}

uint64_t sub_1000ACEC4()
{
  v0 = sub_10000FEB8(&qword_1001198B0, &qword_1000D41E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  sub_1000C65D4();
  sub_1000C6AC4();
  sub_10001E490(&qword_1001198B8, &qword_1001198B0, &qword_1000D41E8);
  sub_1000C6984();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000AD00C@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5;
  v7 = sub_1000C68A4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1000500D8(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1000AD19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000AD278(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 56) = a2;
  }

  else
  {
    v7 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000AD328()
{
  sub_1000AD404();
  if (v0 <= 0x3F)
  {
    sub_1000AD498();
    if (v1 <= 0x3F)
    {
      sub_1000847EC();
      if (v2 <= 0x3F)
      {
        sub_1000AD52C();
        if (v3 <= 0x3F)
        {
          sub_1000AD584();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000AD404()
{
  if (!qword_1001197A8)
  {
    type metadata accessor for PeopleViewModel();
    sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel);
    v0 = sub_1000C6244();
    if (!v1)
    {
      atomic_store(v0, &qword_1001197A8);
    }
  }
}

void sub_1000AD498()
{
  if (!qword_1001197B8)
  {
    type metadata accessor for GlobalPermissionViewModel();
    sub_1000B00B4(&qword_100117130, type metadata accessor for GlobalPermissionViewModel);
    v0 = sub_1000C6244();
    if (!v1)
    {
      atomic_store(v0, &qword_1001197B8);
    }
  }
}

void sub_1000AD52C()
{
  if (!qword_1001197C0)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_1000C6B14();
    if (!v1)
    {
      atomic_store(v0, &qword_1001197C0);
    }
  }
}

void sub_1000AD584()
{
  if (!qword_100117BC8)
  {
    sub_100010624(&unk_100117BD0, qword_1000CF980);
    v0 = sub_1000C6214();
    if (!v1)
    {
      atomic_store(v0, &qword_100117BC8);
    }
  }
}

uint64_t sub_1000AD604@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = sub_1000C66B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000FEB8(&qword_100119808, &qword_1000D4030);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v15 - v10;
  v16 = v1;
  sub_10000FEB8(&qword_100119810, &qword_1000D4038);
  v12 = sub_100010624(&qword_100119818, &qword_1000D4040);
  v13 = sub_1000AD890();
  v17 = v12;
  v18 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1000C6394();
  sub_1000C66A4();
  sub_10001E490(&qword_100119870, &qword_100119808, &qword_1000D4030);
  sub_1000B00B4(&qword_100119008, &type metadata accessor for StackNavigationViewStyle);
  sub_1000C68E4();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1000AD890()
{
  result = qword_100119820;
  if (!qword_100119820)
  {
    sub_100010624(&qword_100119818, &qword_1000D4040);
    sub_1000AD94C();
    sub_1000B00B4(&qword_100117168, type metadata accessor for AlertViewModelAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119820);
  }

  return result;
}

unint64_t sub_1000AD94C()
{
  result = qword_100119828;
  if (!qword_100119828)
  {
    sub_100010624(&qword_100119830, &qword_1000D4048);
    sub_100010624(&qword_100119838, &qword_1000D4050);
    sub_100010624(&qword_100119840, &qword_1000D4058);
    sub_100010624(&qword_100119848, &qword_1000D4060);
    sub_100010624(&qword_100119850, &qword_1000D4068);
    sub_1000C6674();
    sub_10001E490(&qword_100119858, &qword_100119850, &qword_1000D4068);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100010624(&qword_100119860, &qword_1000D4070);
    sub_10001E490(&qword_100119868, &qword_100119860, &qword_1000D4070);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000B00B4(&qword_100117168, type metadata accessor for AlertViewModelAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119828);
  }

  return result;
}

uint64_t sub_1000ADBB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C6C54();
  v26 = v3;
  v27 = v2;
  sub_1000ADE68(&v40);
  v25 = v40;
  HIDWORD(v23) = v41;
  v28 = BYTE1(v41);
  v29 = v42;
  v30 = v43;
  sub_1000C6C54();
  sub_1000C62C4();
  sub_1000C65D4();
  LOWORD(v23) = 256;
  v4 = sub_1000C68C4();
  v6 = v5;
  v8 = v7;
  v9 = [objc_opt_self() labelColor];
  sub_1000C6A64();
  v10 = sub_1000C6884();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_1000500D8(v4, v6, v8 & 1);

  *&v36 = v27;
  *(&v36 + 1) = v26;
  *&v37 = v25;
  BYTE8(v37) = v24;
  BYTE9(v37) = v28;
  v38 = v29;
  *v39 = v30;
  *&v39[8] = v31;
  *&v39[24] = v32;
  *&v39[40] = v33;
  v17 = v37;
  *a1 = v36;
  *(a1 + 16) = v17;
  v18 = v38;
  v19 = *v39;
  v20 = *&v39[32];
  v21 = *&v39[48];
  *(a1 + 64) = *&v39[16];
  *(a1 + 80) = v20;
  *(a1 + 32) = v18;
  *(a1 + 48) = v19;
  *(a1 + 96) = v21;
  *(a1 + 104) = v10;
  *(a1 + 112) = v12;
  *(a1 + 120) = v14 & 1;
  *(a1 + 128) = v16;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  sub_100017574(&v36, &v40, &qword_100119BE0, &qword_1000D4CA0);
  sub_100050DE0(v10, v12, v14 & 1);

  sub_1000500D8(v10, v12, v14 & 1);

  v40 = v27;
  v41 = v26;
  *&v42 = v25;
  BYTE8(v42) = v24;
  BYTE9(v42) = v28;
  *(&v42 + 10) = v34;
  HIWORD(v42) = v35;
  v43 = v29;
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  return sub_100010F24(&v40, &qword_100119BE0, &qword_1000D4CA0);
}

uint64_t sub_1000ADE68@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 quaternaryLabelColor];
  v4 = sub_1000C6A64();
  v5 = sub_1000C6A84();
  v6 = [v2 labelColor];
  v7 = sub_1000C6A64();
  result = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = 256;
  *(a1 + 16) = v5;
  *(a1 + 24) = result;
  *(a1 + 32) = v7;
  return result;
}

double sub_1000ADF10@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C65C4();
  v21 = 1;
  sub_1000ADBB4(&v10);
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v22 = v10;
  v23 = v11;
  v32[6] = v16;
  v32[7] = v17;
  v32[8] = v18;
  v32[2] = v12;
  v32[3] = v13;
  v32[4] = v14;
  v32[5] = v15;
  v31 = v19;
  v33 = v19;
  v32[0] = v10;
  v32[1] = v11;
  sub_100017574(&v22, &v9, &qword_100119BD8, &qword_1000D4C98);
  sub_100010F24(v32, &qword_100119BD8, &qword_1000D4C98);
  *&v20[55] = v25;
  *&v20[39] = v24;
  *&v20[103] = v28;
  *&v20[119] = v29;
  *&v20[135] = v30;
  *&v20[71] = v26;
  *&v20[87] = v27;
  *&v20[7] = v22;
  *&v20[23] = v23;
  v3 = *&v20[112];
  *(a1 + 113) = *&v20[96];
  *(a1 + 129) = v3;
  *(a1 + 145) = *&v20[128];
  v4 = *&v20[48];
  *(a1 + 49) = *&v20[32];
  *(a1 + 65) = v4;
  v5 = *&v20[80];
  *(a1 + 81) = *&v20[64];
  *(a1 + 97) = v5;
  result = *v20;
  v7 = *&v20[16];
  *(a1 + 17) = *v20;
  v20[151] = v31;
  v8 = v21;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 161) = *&v20[144];
  *(a1 + 33) = v7;
  return result;
}

uint64_t sub_1000AE090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C65F4();
  v17 = 0;
  sub_1000AE270(__src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v19, __src, 0x109uLL);
  sub_100017574(__dst, v14, &qword_100119B80, &qword_1000D4BA8);
  sub_100010F24(v19, &qword_100119B80, &qword_1000D4BA8);
  memcpy(&v16[7], __dst, 0x109uLL);
  v5 = v17;
  v6 = (a2 + *(sub_10000FEB8(&qword_100119B88, &qword_1000D4BB0) + 36));
  v7 = *(sub_10000FEB8(&qword_100119B90, &qword_1000D4BB8) + 28);
  v8 = sub_1000C6894();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *v6 = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v16, 0x110uLL);
  KeyPath = swift_getKeyPath();
  v10 = a2 + *(sub_10000FEB8(&qword_100119B98, &qword_1000D4C20) + 36);
  *v10 = KeyPath;
  *(v10 + 8) = 1;
  v11 = sub_1000C6C64();
  v12 = (a2 + *(sub_10000FEB8(&qword_100119BA0, &qword_1000D4C28) + 36));
  *v12 = v11;
  v12[1] = a1;
}

uint64_t sub_1000AE270@<X0>(void *a1@<X8>)
{
  v5 = sub_1000C65C4();
  LOBYTE(v33[0]) = 1;
  sub_1000AE660(&v41);
  v16 = *&v42[80];
  v17 = *&v42[96];
  v12 = *&v42[16];
  v13 = *&v42[32];
  v14 = *&v42[48];
  v15 = *&v42[64];
  v10 = v41;
  v11 = *v42;
  v19[6] = *&v42[80];
  v19[7] = *&v42[96];
  v19[2] = *&v42[16];
  v19[3] = *&v42[32];
  v19[4] = *&v42[48];
  v19[5] = *&v42[64];
  v18 = v42[112];
  v20 = v42[112];
  v19[0] = v41;
  v19[1] = *v42;
  sub_100017574(&v10, &v29, &qword_100119BB0, &qword_1000D4C38);
  sub_100010F24(v19, &qword_100119BB0, &qword_1000D4C38);
  *&v9[87] = v15;
  *&v9[103] = v16;
  *&v9[119] = v17;
  *&v9[23] = v11;
  *&v9[39] = v12;
  *&v9[55] = v13;
  *&v9[71] = v14;
  v9[135] = v18;
  *&v9[7] = v10;
  v1 = v33[0];
  v2 = sub_1000C65C4();
  LOBYTE(v33[0]) = 1;
  sub_1000AE910(&v41);
  v23 = *&v42[16];
  v24 = *&v42[32];
  v25 = *&v42[48];
  v26 = v42[64];
  v21 = v41;
  v22 = *v42;
  v28 = v42[64];
  v27[2] = *&v42[16];
  v27[3] = *&v42[32];
  v27[4] = *&v42[48];
  v27[0] = v41;
  v27[1] = *v42;
  sub_100017574(&v21, &v29, &qword_100119BB8, &qword_1000D4C40);
  sub_100010F24(v27, &qword_100119BB8, &qword_1000D4C40);
  *&v8[39] = v23;
  *&v8[55] = v24;
  *&v8[71] = v25;
  v8[87] = v26;
  *&v8[7] = v21;
  *&v8[23] = v22;
  v3 = v33[0];
  v29 = v5;
  v30[0] = v1;
  *&v30[1] = *v9;
  *&v30[65] = *&v9[64];
  *&v30[49] = *&v9[48];
  *&v30[33] = *&v9[32];
  *&v30[17] = *&v9[16];
  *&v30[129] = *&v9[128];
  *&v30[113] = *&v9[112];
  *&v30[97] = *&v9[96];
  *&v30[81] = *&v9[80];
  __src[6] = *&v30[80];
  __src[7] = *&v30[96];
  v31 = v2;
  v32[0] = v33[0];
  *&v32[1] = *v8;
  __src[8] = *&v30[112];
  *(&__src[8] + 9) = *&v30[121];
  __src[2] = *&v30[16];
  __src[3] = *&v30[32];
  __src[4] = *&v30[48];
  __src[5] = *&v30[64];
  __src[0] = v5;
  __src[1] = *v30;
  *&v32[17] = *&v8[16];
  *&v32[81] = *&v8[80];
  *&v32[65] = *&v8[64];
  *&v32[49] = *&v8[48];
  *&v32[33] = *&v8[32];
  __src[11] = *v32;
  __src[12] = *&v32[16];
  __src[10] = v2;
  *(&__src[15] + 9) = *&v32[73];
  __src[14] = *&v32[48];
  __src[15] = *&v32[64];
  __src[13] = *&v32[32];
  memcpy(a1, __src, 0x109uLL);
  v37 = *&v8[32];
  v38 = *&v8[48];
  v39 = *&v8[64];
  v35 = *v8;
  v33[0] = v2;
  v33[1] = 0;
  v34 = v3;
  v40 = *&v8[80];
  v36 = *&v8[16];
  sub_100017574(&v29, &v41, &qword_100119BC0, &qword_1000D4C48);
  sub_100017574(&v31, &v41, &qword_100119BC8, &qword_1000D4C50);
  sub_100010F24(v33, &qword_100119BC8, &qword_1000D4C50);
  v41 = v5;
  v42[0] = v1;
  *&v42[81] = *&v9[80];
  *&v42[97] = *&v9[96];
  v43 = *&v9[112];
  v44 = *&v9[128];
  *&v42[17] = *&v9[16];
  *&v42[33] = *&v9[32];
  *&v42[49] = *&v9[48];
  *&v42[65] = *&v9[64];
  *&v42[1] = *v9;
  return sub_100010F24(&v41, &qword_100119BC0, &qword_1000D4C48);
}

uint64_t sub_1000AE660@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C6A94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = sub_1000C6AB4();
  (*(v3 + 8))(v6, v2);
  sub_1000C6C54();
  sub_1000C62C4();
  LOBYTE(v23[0]) = 1;
  *&v19[3] = *&v19[27];
  *&v19[11] = *&v19[35];
  *&v19[19] = *&v19[43];
  sub_1000C6A24();
  v8 = sub_1000C6A44();

  v18 = 1;
  v20[0] = v7;
  v20[1] = 0;
  LOWORD(v21[0]) = 1;
  *(&v21[2] + 2) = *&v19[16];
  *(&v21[1] + 2) = *&v19[8];
  *(v21 + 2) = *v19;
  *&v21[3] = *&v19[23];
  *(&v21[3] + 1) = v8;
  v21[4] = xmmword_1000D2900;
  v22 = 0x4010000000000000;
  *(&v17[6] + 7) = 0x4010000000000000;
  *(&v17[5] + 7) = xmmword_1000D2900;
  *(v17 + 7) = v7;
  *(&v17[3] + 7) = v21[2];
  *(&v17[4] + 7) = v21[3];
  *(&v17[1] + 7) = v21[0];
  *(&v17[2] + 7) = v21[1];
  v16[104] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v9 = v17[0];
  v10 = v17[1];
  v11 = v17[3];
  *(a1 + 41) = v17[2];
  *(a1 + 25) = v10;
  *(a1 + 9) = v9;
  v12 = v17[4];
  v13 = v17[5];
  *(a1 + 104) = *(&v17[5] + 15);
  *(a1 + 89) = v13;
  *(a1 + 73) = v12;
  *(a1 + 57) = v11;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  v23[0] = v7;
  v23[1] = 0;
  v24 = 1;
  *&v27[14] = *&v19[23];
  v28 = v8;
  *v27 = *&v19[16];
  v26 = *&v19[8];
  v25 = *v19;
  v29 = xmmword_1000D2900;
  v30 = 0x4010000000000000;
  sub_100017574(v20, v16, &qword_100119BD0, &unk_1000D4C88);
  return sub_100010F24(v23, &qword_100119BD0, &unk_1000D4C88);
}

uint64_t sub_1000AE910@<X0>(uint64_t a1@<X8>)
{
  sub_1000383C8();

  v2 = sub_1000C68D4();
  v4 = v3;
  v6 = v5;
  sub_1000C67E4();
  sub_1000C6814();
  sub_1000C6844();

  v7 = sub_1000C68B4();
  v9 = v8;
  v11 = v10;

  sub_1000500D8(v2, v4, v6 & 1);

  v12 = [objc_opt_self() labelColor];
  sub_1000C6A64();
  v13 = sub_1000C6884();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1000500D8(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v17 & 1;
  *(a1 + 40) = v19;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  sub_100050DE0(v13, v15, v17 & 1);

  sub_1000500D8(v13, v15, v17 & 1);
}

uint64_t sub_1000AEB04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  return sub_1000AE090(*v1, a1);
}

uint64_t sub_1000AEBAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_1000AEC2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000AEDFC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_1000AEEB0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_100017574(a1, &v13 - v9, &qword_100116C80, &unk_1000CE870);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100017574(v10, v8, &qword_100116C80, &unk_1000CE870);

  sub_1000C60A4();
  return sub_100010F24(v10, &qword_100116C80, &unk_1000CE870);
}

uint64_t sub_1000AF064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000AF0E0()
{
  result = qword_1001198A8;
  if (!qword_1001198A8)
  {
    sub_100010624(&qword_1001198A0, &qword_1000D41E0);
    sub_100010624(&qword_1001198B0, &qword_1000D41E8);
    sub_10001E490(&qword_1001198B8, &qword_1001198B0, &qword_1000D41E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001198A8);
  }

  return result;
}

unint64_t sub_1000AF1F8()
{
  result = qword_100119958;
  if (!qword_100119958)
  {
    sub_100010624(&qword_100119960, &qword_1000D42C8);
    sub_1000AF2D8(&qword_100119968, &qword_100119970, &qword_1000D42D0, sub_1000AF2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119958);
  }

  return result;
}

uint64_t sub_1000AF2D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000AF35C()
{
  result = qword_100119988;
  if (!qword_100119988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119988);
  }

  return result;
}

uint64_t sub_1000AF514(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_1001198C8, &qword_1000D41F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AF58C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000AF608()
{
  result = qword_1001199E0;
  if (!qword_1001199E0)
  {
    sub_100010624(&qword_1001199E8, &qword_1000D4500);
    sub_10001E490(&qword_1001199F0, &qword_1001199F8, &unk_1000D4508);
    sub_10001E490(&qword_100117D30, &qword_100117D38, &qword_1000D2370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001199E0);
  }

  return result;
}

uint64_t sub_1000AF76C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C6554();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AF7D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C6474();
  *a1 = result;
  return result;
}

uint64_t sub_1000AF804(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000C6484();
}

uint64_t sub_1000AF830@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000C6574();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000AF864(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000C6584();
}

uint64_t sub_1000AF894@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C6514();
  *a1 = result;
  return result;
}

uint64_t sub_1000AF8C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C6514();
  *a1 = result;
  return result;
}

uint64_t sub_1000AF8EC(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000C6524();
}

uint64_t sub_1000AF918(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000C6524();
}

uint64_t sub_1000AF944(uint64_t *a1)
{
  v3 = *(type metadata accessor for PeopleView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000A6D20(a1, v4);
}

uint64_t sub_1000AF9C4()
{
  v1 = (type metadata accessor for PeopleView() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_100050264();
  v9 = *(v0 + v4 + 24);
  v10 = *(v0 + v4 + 32);
  v11 = *(v0 + v4 + 40);
  sub_100050264();
  v12 = *(v0 + v4 + 56);

  v13 = *(v0 + v4 + 72);

  v14 = *(v0 + v4 + 88);

  v15 = *(v0 + v4 + 128);

  v16 = v1[13];
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000C6694();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v5 + v16, 1, v17))
    {
      (*(v18 + 8))(v5 + v16, v17);
    }
  }

  else
  {
    v19 = *(v5 + v16);
  }

  v20 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v20);

  return _swift_deallocObject(v0, v20 + 8, v2 | 7);
}

uint64_t sub_1000AFB7C()
{
  v1 = *(type metadata accessor for PeopleView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A6FFC((v0 + v2), v3);
}

unint64_t sub_1000AFC2C()
{
  result = qword_100119A50;
  if (!qword_100119A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119A50);
  }

  return result;
}

uint64_t sub_1000AFC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_10000FEB8(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v16 - v13;
  sub_100017574(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

unint64_t sub_1000AFDB4()
{
  result = qword_100119A78;
  if (!qword_100119A78)
  {
    sub_100010624(&qword_100119A70, &qword_1000D4788);
    sub_10001E490(&qword_100119A80, &qword_100119A88, &qword_1000D4790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119A78);
  }

  return result;
}

uint64_t sub_1000AFE6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C6474();
  *a1 = result;
  return result;
}

uint64_t sub_1000AFE98(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000C6484();
}

uint64_t sub_1000AFEC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011080;

  return sub_100068DA0(a1, v4, v5, v6);
}

uint64_t sub_1000B00B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B0154@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PeopleView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_1000A3B58(*a1, a2);
}

unint64_t sub_1000B01C8()
{
  result = qword_100119AE8;
  if (!qword_100119AE8)
  {
    sub_100010624(&qword_100119AE0, &qword_1000D49E0);
    sub_10001E490(&qword_100119AF0, &qword_100119AF8, &unk_1000D49E8);
    sub_10001E490(&qword_100117CC8, &qword_100117CD0, &qword_1000CFDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119AE8);
  }

  return result;
}

uint64_t sub_1000B02CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PeopleView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000B0340()
{
  result = qword_100119B10;
  if (!qword_100119B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119B10);
  }

  return result;
}

uint64_t sub_1000B0394()
{
  v1 = *(type metadata accessor for PeopleView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000A8B0C(v2);
}

uint64_t sub_1000B0424()
{
  v1 = sub_1000C6374();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B04AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*(sub_1000C6374() - 8) + 80);

  return sub_10008D974(a1);
}

uint64_t sub_1000B052C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B0564(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2], a1[3]);
}

uint64_t sub_1000B0594()
{
  v1 = (type metadata accessor for PeopleView() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_100050264();
  v9 = *(v0 + v4 + 24);
  v10 = *(v0 + v4 + 32);
  v11 = *(v0 + v4 + 40);
  sub_100050264();
  v12 = *(v0 + v4 + 56);

  v13 = *(v0 + v4 + 72);

  v14 = *(v0 + v4 + 88);

  v15 = *(v0 + v4 + 128);

  v16 = v1[13];
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000C6694();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v5 + v16, 1, v17))
    {
      (*(v18 + 8))(v5 + v16, v17);
    }
  }

  else
  {
    v19 = *(v5 + v16);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

double sub_1000B0738@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PeopleView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1000A8B6C(v4, a1);
}

unint64_t sub_1000B07A8()
{
  result = qword_100119B20;
  if (!qword_100119B20)
  {
    sub_100010624(&qword_100119AC0, &qword_1000D4978);
    sub_1000B0860();
    sub_10001E490(&qword_100119B50, &qword_100119B58, &qword_1000D4A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119B20);
  }

  return result;
}

unint64_t sub_1000B0860()
{
  result = qword_100119B28;
  if (!qword_100119B28)
  {
    sub_100010624(&qword_100119B18, &qword_1000D4A50);
    sub_10001E490(&qword_100119B30, &qword_100119B38, &qword_1000D4A58);
    sub_10001E490(&qword_100119B40, &qword_100119B48, &qword_1000D4A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119B28);
  }

  return result;
}

unint64_t sub_1000B0968()
{
  result = qword_100119B70;
  if (!qword_100119B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119B70);
  }

  return result;
}

uint64_t sub_1000B09BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C6554();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000B0A5C()
{
  sub_100010624(&qword_100119808, &qword_1000D4030);
  sub_1000C66B4();
  sub_10001E490(&qword_100119870, &qword_100119808, &qword_1000D4030);
  sub_1000B00B4(&qword_100119008, &type metadata accessor for StackNavigationViewStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B0BDC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000C6574();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000B0C10(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000C6584();
}

unint64_t sub_1000B0C44()
{
  result = qword_100119BE8;
  if (!qword_100119BE8)
  {
    sub_100010624(&qword_100119BA0, &qword_1000D4C28);
    sub_1000B0CFC();
    sub_10001E490(&qword_100119C28, &qword_100119C30, &qword_1000D4CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119BE8);
  }

  return result;
}

unint64_t sub_1000B0CFC()
{
  result = qword_100119BF0;
  if (!qword_100119BF0)
  {
    sub_100010624(&qword_100119B98, &qword_1000D4C20);
    sub_1000B0DB4();
    sub_10001E490(&qword_100119C18, &qword_100119C20, &qword_1000D4CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119BF0);
  }

  return result;
}

unint64_t sub_1000B0DB4()
{
  result = qword_100119BF8;
  if (!qword_100119BF8)
  {
    sub_100010624(&qword_100119B88, &qword_1000D4BB0);
    sub_10001E490(&qword_100119C00, &qword_100119C08, &qword_1000D4CA8);
    sub_10001E490(&qword_100119C10, &qword_100119B90, &qword_1000D4BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119BF8);
  }

  return result;
}

uint64_t sub_1000B0F08(uint64_t result)
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

        v9 = sub_1000B1E2C(v7, v8, 0x20uLL);
        if (v9)
        {
          break;
        }

        if (sub_1000B1E2C(v7, v8, 0x800uLL))
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

      v10 = sub_1000B10E4();
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
        result = sub_1000B1BE4(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        result = sub_1000B1BE4((v12 > 1), v13 + 1, 1, v4);
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

  return sub_1000C60A4();
}

char *sub_1000B10E4()
{
  v0 = sub_1000C5F74();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v22 = sub_1000C6D44();
  v2 = objc_allocWithZone(NSRegularExpression);
  v3 = sub_1000B19FC(0xD00000000000002FLL, 0x80000001000DD7A0, 1);
  v4 = sub_1000C6DE4();
  v5 = sub_1000C6D44();
  v6 = [v3 matchesInString:v5 options:1 range:{0, v4}];

  sub_1000B21A4();
  v7 = sub_1000C6E94();

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

  v8 = sub_1000C72F4();
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = sub_1000B1D00(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = sub_1000C7254();
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 range];
      v15 = [v22 substringWithRange:{v13, v14}];
      v16 = sub_1000C6D84();
      v18 = v17;

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_1000B1D00((v19 > 1), v20 + 1, 1);
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

uint64_t sub_1000B1544(void **a1, char a2, id a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000C5F74();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
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
      sub_1000C5D44();

      v27 = sub_1000C5D84();
      (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
    }

    else
    {
      v27 = sub_1000C5D84();
      (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
    }

    sub_10000FF00(v21, v23);
    sub_1000C5D84();
    v37 = *(v27 - 8);
    if ((*(v37 + 48))(v23, 1, v27) == 1)
    {
      sub_10009CB18(v23);
      LOBYTE(v23) = 0;
    }

    else
    {
      v38 = sub_1000C5D64();
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
          LOBYTE(v23) = sub_1000C73A4();
        }
      }

      else
      {
        LOBYTE(v23) = 0;
      }
    }

    sub_1000C5F54();
    v42 = sub_1000C5F64();
    v43 = sub_1000C6FF4();
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
    sub_1000C5F54();
    v30 = sub_1000C5F64();
    v31 = sub_1000C6FF4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 136315394;
      v48 = a5;
      type metadata accessor for CheckingType(0);
      v34 = sub_1000C6D94();
      v36 = sub_100071844(v34, v35, &v49);

      *(v32 + 4) = v36;
      *(v32 + 12) = 1024;
      *(v32 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v30, v31, "isValid(address...) is %s, valid: %{BOOL}d", v32, 0x12u);
      sub_100010544(v33);
    }

    (*(v46 + 8))(v14, v47);
  }

  return v23 & 1;
}

id sub_1000B19FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000C6D44();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1000C5CE4();

    swift_willThrow();
  }

  return v6;
}

char *sub_1000B1AD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FEB8(&qword_100119C50, &qword_1000D4D10);
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

char *sub_1000B1BE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FEB8(&qword_100119C58, qword_1000D4D18);
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

char *sub_1000B1D00(char *a1, int64_t a2, char a3)
{
  result = sub_1000B1D20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B1D20(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FEB8(&qword_100119C50, &qword_1000D4D10);
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

uint64_t sub_1000B1E2C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000C6E24();
  v40 = 0;
  v7 = [objc_allocWithZone(NSDataDetector) initWithTypes:a3 error:&v40];
  if (v7)
  {
    v8 = v7;
    v9 = v40;
    v10 = sub_1000C6D44();
    v36 = v8;
    v39 = v6;
    v11 = [v8 matchesInString:v10 options:0 range:{0, v6}];

    sub_1000B21A4();
    v12 = sub_1000C6E94();

    v40 = _swiftEmptyArrayStorage;
    if (v12 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000C72F4())
    {
      v35 = a3;
      a3 = 0;
      v14 = v12 & 0xC000000000000001;
      v15 = v12 & 0xFFFFFFFFFFFFFF8;
      v16 = &unk_100113000;
      v37 = v12 & 0xC000000000000001;
      v38 = v12 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v14)
        {
          v17 = sub_1000C7254();
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

        [v17 v16[445]];
        sub_1000C6FA4();
        if (v20)
        {
        }

        else
        {
          sub_1000C7284();
          v21 = v16;
          v22 = v12;
          v23 = a1;
          v24 = a2;
          v25 = v40[2];
          sub_1000C72B4();
          a2 = v24;
          a1 = v23;
          v12 = v22;
          v16 = v21;
          sub_1000C72C4();
          sub_1000C7294();
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

    for (j = *(v26 + 16); j; j = sub_1000C72F4())
    {
      v28 = 0;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = sub_1000C7254();
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
        v32 = sub_1000B1544(&v40, a3 == 32, 0, v39, a3);

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
    sub_1000C5CE4();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000B21A4()
{
  result = qword_100119C48;
  if (!qword_100119C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100119C48);
  }

  return result;
}

uint64_t sub_1000B21F4()
{
  v1 = [v0 identifier];
  v2 = sub_1000C6D84();

  return v2;
}

void sub_1000B2250(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_1000C6D84();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_1000B22D8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContactsObserver()
{
  result = qword_100119CB0;
  if (!qword_100119CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B241C()
{
  sub_1000B24C8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000B24C8()
{
  if (!qword_100119CC0)
  {
    sub_100010624(&qword_100119CC8, &qword_1000D4DD8);
    v0 = sub_1000C60B4();
    if (!v1)
    {
      atomic_store(v0, &qword_100119CC0);
    }
  }
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

uint64_t sub_1000B26CC(unsigned __int8 *a1)
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

_BYTE *sub_1000B26E8(_BYTE *result, int a2)
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

__n128 sub_1000B29BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000B29D0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1000B2A18(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000B2C00()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v3 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v4 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v5 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v6 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (*(*(v0 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();
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

BOOL sub_1000B3010(unsigned __int8 *a1, unsigned __int8 *a2)
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

unint64_t sub_1000B30A4()
{
  result = qword_100119CD8;
  if (!qword_100119CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119CD8);
  }

  return result;
}

unint64_t sub_1000B30FC()
{
  result = qword_100119CE0;
  if (!qword_100119CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119CE0);
  }

  return result;
}

unint64_t sub_1000B3154()
{
  result = qword_100119CE8;
  if (!qword_100119CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119CE8);
  }

  return result;
}

unint64_t sub_1000B31AC()
{
  result = qword_100119CF0;
  if (!qword_100119CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119CF0);
  }

  return result;
}

unint64_t sub_1000B3204()
{
  result = qword_100119CF8;
  if (!qword_100119CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119CF8);
  }

  return result;
}

uint64_t sub_1000B3300@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_1000B3380(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000B366C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_1000B36EC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000B37E4(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!a1)
    {
      v3 = *(*(result + 32) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role) == 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_1000B389C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  v7 = *(v0 + 88);

  v8 = *(v0 + 104);

  v9 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__readWritePermissions;
  v10 = sub_10000FEB8(&qword_100117658, &qword_1000CEDF8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__readWritePermissionSelected;
  v12 = sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__personCanAddPeople;
  v14 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v13, v14);
  v15(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__personHasAddPeopleToggle, v14);
  v15(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__savingInProgress, v14);
  v15(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__shouldShowRemoveAccess, v14);
  v15(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__shouldShowRemoveMe, v14);
  return v0;
}

uint64_t sub_1000B3A6C()
{
  sub_1000B389C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RequesterInfoViewModel()
{
  result = qword_100119D60;
  if (!qword_100119D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B3B18()
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

uint64_t sub_1000B3CA8(uint64_t a1, void *a2, uint64_t a3)
{
  v94 = a3;
  v6 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v85 = &v70 - v8;
  v90 = sub_10000FEB8(&unk_100116EE0, &unk_1000CD2A0);
  v93 = *(v90 - 8);
  v9 = *(v93 + 64);
  v10 = __chkstk_darwin(v90);
  v88 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v70 - v12;
  v92 = sub_10000FEB8(&qword_100117760, &qword_1000CEF00);
  v86 = *(v92 - 8);
  v13 = *(v86 + 64);
  __chkstk_darwin(v92);
  v91 = &v70 - v14;
  v74 = sub_10000FEB8(&qword_1001177B8, &qword_1000CEF58);
  v73 = *(v74 - 8);
  v15 = *(v73 + 8);
  __chkstk_darwin(v74);
  v72 = &v70 - v16;
  v77 = sub_10000FEB8(&qword_1001187D0, &qword_1000D1150);
  v17 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v76 = &v70 - v18;
  v19 = sub_10000FEB8(&qword_1001187D8, &qword_1000D1158);
  v79 = *(v19 - 8);
  v80 = v19;
  v20 = *(v79 + 64);
  __chkstk_darwin(v19);
  v78 = &v70 - v21;
  v22 = sub_10000FEB8(&qword_1001187E0, &qword_1000D1160);
  v83 = *(v22 - 8);
  v84 = v22;
  v23 = *(v83 + 64);
  __chkstk_darwin(v22);
  v82 = &v70 - v24;
  if (_swiftEmptyArrayStorage >> 62 && sub_1000C72F4())
  {
    v25 = sub_1000727E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v25 = &_swiftEmptySetSingleton;
  }

  v87 = v3;
  *(v3 + 16) = v25;
  v26 = (v3 + 16);
  v26[2] = a2;
  v26[3] = a1;
  v26[1] = v94;
  v27 = a2[3];
  v26[4] = a2[2];
  v26[5] = v27;
  v28 = a2[5];
  v26[6] = a2[4];
  v26[7] = v28;
  v29 = a2[14];
  v26[8] = a2[13];
  v26[9] = v29;
  v30 = a2[12];
  v26[10] = a2[11];
  v26[11] = v30;
  v31 = *(a2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_contact);
  v81 = v26;
  v26[12] = v31;
  v32 = *(a2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role);
  v33 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  v70 = swift_getKeyPath();

  v75 = a2;
  v34 = v32;

  v35 = a1;

  v36 = v31;

  sub_1000C6094();

  LODWORD(v29) = v96;
  v37 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  LOBYTE(v33) = v96;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LODWORD(v27) = v96;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v38 = _swiftEmptyArrayStorage;
  if ((v29 & v27 & ((~v33 & 0xC) == 0)) != 0)
  {
    v38 = &off_1001076E8;
  }

  if ((v96 & 0xFE) == 2)
  {
    v39 = v38;
  }

  else
  {
    v39 = &off_1001076C0;
  }

  if (!v32)
  {
    goto LABEL_10;
  }

  v40 = *(v35 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v96 != 2)
  {
LABEL_10:

    v39 = _swiftEmptyArrayStorage;
  }

  v41 = v87;
  swift_beginAccess();
  v95 = v39;
  sub_10000FEB8(&qword_100117488, &qword_1000CE880);
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v75;
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
  v44 = 0;
  v45 = 0;
  if (v34 && !v43)
  {
    v46 = *(v35 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (v96 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v45 = v96;
      v44 = 1;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  swift_beginAccess();
  LOBYTE(v95) = v45;
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v95) = v44;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v47 = v96;
  swift_beginAccess();
  LOBYTE(v95) = v47;
  sub_1000C6054();
  swift_endAccess();
  if (v34 && (*(v42 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe) & 1) == 0)
  {
    v49 = *(v35 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v48 = v96;
  }

  else
  {
    v48 = 0;
  }

  swift_beginAccess();
  LOBYTE(v95) = v48 & 1;
  sub_1000C6054();
  swift_endAccess();
  if (v34)
  {
    v50 = *(v42 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe);
  }

  else
  {
    v50 = 0;
  }

  swift_beginAccess();
  LOBYTE(v95) = v50;
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  v51 = v72;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117910, &qword_1001177B8, &qword_1000CEF58);
  sub_100042288();
  v52 = v74;
  sub_1000C6114();
  (*(v73 + 1))(v51, v52);
  v53 = *(v35 + 16);
  swift_beginAccess();

  v75 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v54 = v89;
  sub_1000C6064();
  swift_endAccess();

  v74 = sub_10001E490(&unk_100116F20, &unk_100116EE0, &unk_1000CD2A0);
  v55 = v90;
  sub_1000C6114();
  v56 = *(v93 + 8);
  v72 = (v93 + 8);
  v73 = v56;
  v56(v54, v55);
  sub_10001E490(&qword_1001187E8, &qword_1001187D0, &qword_1000D1150);
  KeyPath = sub_10001E490(&qword_100117890, &qword_100117760, &qword_1000CEF00);
  v57 = v78;
  sub_1000C5F84();
  v58 = [objc_opt_self() mainRunLoop];
  v96 = v58;
  v59 = sub_1000C71A4();
  v60 = v85;
  (*(*(v59 - 8) + 56))(v85, 1, 1, v59);
  sub_10007D210();
  sub_10001E490(&qword_1001187F0, &qword_1001187D8, &qword_1000D1158);
  sub_10001E2AC();
  v61 = v82;
  v62 = v80;
  sub_1000C6104();
  sub_10001E314(v60);

  (*(v79 + 8))(v57, v62);
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1000B4D4C;
  *(v64 + 24) = v63;
  sub_10001E490(qword_1001187F8, &qword_1001187E0, &qword_1000D1160);
  v65 = v84;
  sub_1000C6124();

  (*(v83 + 8))(v61, v65);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v66 = v91;
  sub_1000C6114();
  v67 = v73;
  v73(v54, v55);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v68 = v92;
  sub_1000C6134();
  (*(v86 + 8))(v66, v68);
  (*(v93 + 16))(v88, v54, v55);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v67(v54, v55);
  return v41;
}

uint64_t sub_1000B4D14()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4D54()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B4D8C(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1000B4E74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B4EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B4F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1000383C8();

  v6 = sub_1000C68D4();
  v8 = v7;
  v10 = v9;
  v11 = [objc_opt_self() labelColor];
  sub_1000C6A64();
  v12 = sub_1000C6884();
  v14 = v13;
  v23 = v15;
  v17 = v16;

  sub_1000500D8(v6, v8, v10 & 1);

  if (a3 != 2 && a3)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
  }

  else
  {
    sub_1000C6A84();
    sub_1000C6A04();
    swift_getKeyPath();
    sub_10000FEB8(&qword_100117D28, &unk_1000CFD10);
    sub_100050F24();
    sub_1000C6624();
    v18 = a1;
    v19 = a2;
    v20 = v26;
    v21 = v27;
    sub_1000B804C();
  }

  sub_100050DE0(v12, v14, v23 & 1);

  sub_1000B8034(v18, v19, v20, v21);
  sub_1000B8094(v18, v19, v20, v21);
  *a4 = v12;
  *(a4 + 8) = v14;
  *(a4 + 16) = v23 & 1;
  *(a4 + 24) = v17;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v18;
  *(a4 + 56) = v19;
  *(a4 + 64) = v20;
  *(a4 + 72) = v21;
  sub_1000B8094(v18, v19, v20, v21);
  sub_1000500D8(v12, v14, v23 & 1);
}

double sub_1000B5208@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = sub_1000C65C4();
  v17 = 1;
  sub_1000B4F74(v3, v4, v5, &v12);
  v19 = v13;
  v20 = v14;
  v21[0] = v15[0];
  *(v21 + 9) = *(v15 + 9);
  v18 = v12;
  v22[2] = v14;
  v23[0] = v15[0];
  *(v23 + 9) = *(v15 + 9);
  v22[0] = v12;
  v22[1] = v13;
  sub_100017574(&v18, v11, &qword_100119F90, &qword_1000D5CC8);
  sub_100010F24(v22, &qword_100119F90, &qword_1000D5CC8);
  *&v16[7] = v18;
  *&v16[64] = *(v21 + 9);
  *&v16[55] = v21[0];
  *&v16[39] = v20;
  *&v16[23] = v19;
  v7 = *v16;
  *(a1 + 33) = *&v16[16];
  v8 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  *(a1 + 65) = v8;
  result = *&v16[64];
  *(a1 + 81) = *&v16[64];
  v10 = v17;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 17) = v7;
  return result;
}

uint64_t sub_1000B5340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v134 = sub_10000FEB8(&qword_100119E80, &qword_1000D5AD0);
  v133 = *(v134 - 8);
  v3 = *(v133 + 64);
  __chkstk_darwin(v134);
  v128 = &v122 - v4;
  v5 = sub_10000FEB8(&qword_100119E88, &qword_1000D5AD8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v136 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v122 - v9;
  v10 = sub_10000FEB8(&qword_100119E90, &qword_1000D5AE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v135 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v145 = &v122 - v14;
  v132 = sub_10000FEB8(&qword_100119E98, &qword_1000D5AE8);
  v131 = *(v132 - 8);
  v15 = *(v131 + 64);
  __chkstk_darwin(v132);
  v130 = &v122 - v16;
  v17 = sub_10000FEB8(&qword_100119EA0, &qword_1000D5AF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v144 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v143 = &v122 - v21;
  v22 = sub_10000FEB8(&qword_100119EA8, &qword_1000D5AF8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v129 = &v122 - v25;
  v26 = sub_10000FEB8(&qword_100119EB0, &qword_1000D5B00);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v142 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v148 = &v122 - v30;
  v31 = sub_10000FEB8(&qword_100119EB8, &qword_1000D5B08);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = (&v122 - v34);
  v36 = sub_10000FEB8(&qword_100119EC0, &unk_1000D5B10);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v141 = &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = *(a1 + 16);
  v41 = *(v40 + 16);
  v146 = a1;
  v147 = &v122 - v42;
  v138 = v23;
  v139 = v22;
  if (v41)
  {
    v125 = v32;
    v126 = v35;
    v127 = v31;
    sub_1000C65D4();
    v121 = 256;
    v120 = 0;
    v43 = sub_1000C68C4();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v149 = *(a1 + 24);
    v150 = *(a1 + 40);
    sub_10000FEB8(&qword_100117138, &unk_1000CE1D0);
    v50 = sub_1000C6B84();
    v51 = v152[0];
    v53 = *(a1 + 48);
    v52 = *(a1 + 56);
    if (v53)
    {
      v50 = swift_allocObject();
      v54 = v50;
      *(v50 + 16) = v53;
      *(v50 + 24) = v52;
      v55 = sub_1000B7904;
    }

    else
    {
      v55 = 0;
      v54 = 0;
    }

    v123 = v55;
    v124 = &v122;
    v152[0] = v51;
    *&v149 = v43;
    *(&v149 + 1) = v45;
    v56 = v47 & 1;
    v150 = v56;
    v151 = v49;
    __chkstk_darwin(v50);
    *(&v122 - 6) = v40;
    *(&v122 - 5) = v57;
    a1 = v146;
    *(&v122 - 4) = v54;
    *(&v122 - 3) = a1;
    v120 = v152;
    sub_1000229B4(v53);
    sub_100050DE0(v43, v45, v56);

    sub_10000FEB8(&qword_100119EC8, &qword_1000D5B20);
    sub_1000B74A4(&qword_100119ED0, &qword_100119EC8, &qword_1000D5B20);
    v58 = v126;
    sub_1000C6C04();
    sub_1000500D8(v43, v45, v56);

    sub_100010800(v123);
    v59 = v125;
    v60 = v147;
    v61 = v127;
    (*(v125 + 32))(v147, v58, v127);
    (*(v59 + 56))(v60, 0, 1, v61);
    v23 = v138;
    v22 = v139;
  }

  else
  {
    (*(v32 + 56))();
  }

  v62 = *(a1 + 64);
  if (*(v62 + 16))
  {
    sub_1000C65D4();
    v121 = 256;
    v120 = 0;
    v63 = sub_1000C68C4();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v149 = *(a1 + 72);
    v150 = *(a1 + 88);
    sub_10000FEB8(&qword_100117140, &qword_1000D5B40);
    v70 = sub_1000C6B84();
    v71 = a1;
    v72 = v152[0];
    v73 = *(v71 + 96);
    v74 = *(v71 + 104);
    if (v73)
    {
      v70 = swift_allocObject();
      v75 = v70;
      *(v70 + 16) = v73;
      *(v70 + 24) = v74;
      v76 = sub_1000B78D8;
    }

    else
    {
      v76 = 0;
      v75 = 0;
    }

    v126 = v76;
    v127 = &v122;
    v152[0] = v72;
    *&v149 = v63;
    *(&v149 + 1) = v65;
    v79 = v67 & 1;
    v150 = v79;
    v151 = v69;
    __chkstk_darwin(v70);
    *(&v122 - 6) = v62;
    *(&v122 - 5) = v80;
    a1 = v146;
    *(&v122 - 4) = v75;
    *(&v122 - 3) = a1;
    v120 = v152;
    sub_1000229B4(v73);
    sub_100050DE0(v63, v65, v79);

    sub_10000FEB8(&qword_100119EF8, &qword_1000D5B48);
    sub_1000B74A4(&qword_100119F00, &qword_100119EF8, &qword_1000D5B48);
    v81 = v129;
    sub_1000C6C04();
    sub_1000500D8(v63, v65, v79);

    sub_100010800(v126);
    v23 = v138;
    v22 = v139;
    v78 = v148;
    (*(v138 + 32))(v148, v81, v139);
    v77 = 0;
  }

  else
  {
    v77 = 1;
    v78 = v148;
  }

  v82 = 1;
  (*(v23 + 56))(v78, v77, 1, v22);
  v83 = *(a1 + 112);
  if (*(v83 + 16))
  {
    sub_1000C65D4();
    v121 = 256;
    v120 = 0;
    v84 = sub_1000C68C4();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = *(a1 + 128);
    v93 = *(a1 + 136);
    if (v92)
    {
      v84 = swift_allocObject();
      v94 = v84;
      *(v84 + 16) = v92;
      *(v84 + 24) = v93;
      v95 = sub_1000B78AC;
    }

    else
    {
      v95 = 0;
      v94 = 0;
    }

    v139 = &v122;
    v152[0] = *(a1 + 120);
    *&v149 = v85;
    *(&v149 + 1) = v87;
    v99 = v89 & 1;
    v150 = v99;
    v151 = v91;
    __chkstk_darwin(v84);
    *(&v122 - 6) = v83;
    *(&v122 - 5) = v95;
    v100 = v146;
    *(&v122 - 4) = v94;
    *(&v122 - 3) = v100;
    v120 = v152;
    sub_1000229B4(v92);
    sub_100050DE0(v85, v87, v99);

    sub_10000FEB8(&qword_100119F08, &qword_1000D5B50);
    sub_1000B74A4(&qword_100119F10, &qword_100119F08, &qword_1000D5B50);
    v101 = v130;
    a1 = v146;
    sub_1000C6C04();
    sub_1000500D8(v85, v87, v99);

    sub_100010800(v95);
    v98 = v131;
    v96 = v143;
    v97 = v132;
    (*(v131 + 32))(v143, v101, v132);
    v82 = 0;
  }

  else
  {
    v96 = v143;
    v97 = v132;
    v98 = v131;
  }

  v102 = 1;
  (*(v98 + 56))(v96, v82, 1, v97);
  v103 = sub_10000FEB8(&qword_100119F18, &qword_1000D5B58);
  (*(*(v103 - 8) + 56))(v145, 1, 1, v103);
  v149 = *(a1 + 224);
  v150 = *(a1 + 240);
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  v104 = v134;
  v105 = v133;
  if (v152[0] != 1)
  {
    goto LABEL_24;
  }

  if (*a1)
  {
    v106 = *(*a1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (v149)
    {
      __chkstk_darwin(v107);
      v120 = a1;
      sub_10000FEB8(&qword_100119F28, &qword_1000D5BB8);
      sub_1000B764C();
      v108 = v128;
      sub_1000C6C14();
      (*(v105 + 32))(v140, v108, v104);
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

LABEL_24:
    v109 = v140;
    (*(v105 + 56))(v140, v102, 1, v104);
    v110 = v141;
    sub_100017574(v147, v141, &qword_100119EC0, &unk_1000D5B10);
    v111 = v142;
    sub_100017574(v148, v142, &qword_100119EB0, &qword_1000D5B00);
    v112 = v144;
    sub_100017574(v96, v144, &qword_100119EA0, &qword_1000D5AF0);
    v113 = v145;
    v114 = v135;
    sub_100017574(v145, v135, &qword_100119E90, &qword_1000D5AE0);
    v115 = v136;
    sub_100017574(v109, v136, &qword_100119E88, &qword_1000D5AD8);
    v116 = v137;
    sub_100017574(v110, v137, &qword_100119EC0, &unk_1000D5B10);
    v117 = sub_10000FEB8(&qword_100119F20, &qword_1000D5B68);
    sub_100017574(v111, v116 + v117[12], &qword_100119EB0, &qword_1000D5B00);
    sub_100017574(v112, v116 + v117[16], &qword_100119EA0, &qword_1000D5AF0);
    sub_100017574(v114, v116 + v117[20], &qword_100119E90, &qword_1000D5AE0);
    sub_100017574(v115, v116 + v117[24], &qword_100119E88, &qword_1000D5AD8);
    sub_100010F24(v109, &qword_100119E88, &qword_1000D5AD8);
    sub_100010F24(v113, &qword_100119E90, &qword_1000D5AE0);
    sub_100010F24(v143, &qword_100119EA0, &qword_1000D5AF0);
    sub_100010F24(v148, &qword_100119EB0, &qword_1000D5B00);
    sub_100010F24(v147, &qword_100119EC0, &unk_1000D5B10);
    sub_100010F24(v115, &qword_100119E88, &qword_1000D5AD8);
    sub_100010F24(v114, &qword_100119E90, &qword_1000D5AE0);
    sub_100010F24(v144, &qword_100119EA0, &qword_1000D5AF0);
    sub_100010F24(v142, &qword_100119EB0, &qword_1000D5B00);
    return sub_100010F24(v141, &qword_100119EC0, &unk_1000D5B10);
  }

  v119 = *(a1 + 8);
  type metadata accessor for SharingModel();
  sub_1000B7B20(&qword_100117158, type metadata accessor for SharingModel);
  result = sub_1000C63F4();
  __break(1u);
  return result;
}

uint64_t sub_1000B63B8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a1;
  sub_1000229B4(a2);
  sub_10000FEB8(&qword_100119F70, &unk_1000D5C20);
  sub_1000C6634();
  sub_1000B7ACC();
  sub_1000B7B20(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect);
  swift_getOpaqueTypeConformance2();
  sub_1000C6B34();
  v16 = *(a4 + 176);
  v17 = *(a4 + 192);
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  result = sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  v14 = (a5 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_1000B81D0;
  v14[2] = v12;
  return result;
}

uint64_t sub_1000B65A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a1;
  sub_1000229B4(a2);
  sub_10000FEB8(&qword_100119F70, &unk_1000D5C20);
  sub_1000C6634();
  sub_1000B7ACC();
  sub_1000B7B20(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect);
  swift_getOpaqueTypeConformance2();
  sub_1000C6B34();
  v16 = *(a4 + 176);
  v17 = *(a4 + 192);
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  result = sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  v14 = (a5 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_1000B81D0;
  v14[2] = v12;
  return result;
}

uint64_t sub_1000B6798@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1 & 1;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = v9;
  sub_1000229B4(a2);
  sub_10000FEB8(&qword_100119F70, &unk_1000D5C20);
  sub_1000C6634();
  sub_1000B7ACC();
  sub_1000B7B20(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect);
  swift_getOpaqueTypeConformance2();
  sub_1000C6B34();
  v16 = *(a4 + 176);
  v17 = *(a4 + 192);
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  result = sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  v14 = (a5 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_1000B81D0;
  v14[2] = v12;
  return result;
}

uint64_t sub_1000B698C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(uint64_t))
{
  v6 = a3;
  v7 = sub_1000C6634();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a4(a1);
  v14 = v6 != a1;
  if (v6 == 2)
  {
    v14 = 2;
  }

  v16[1] = v12;
  v16[2] = v13;
  v17 = v14;
  sub_1000C63E4();
  sub_1000B7ACC();
  sub_1000B7B20(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect);
  sub_1000C6924();
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000B6B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(a1 + 272);
  v15 = v14;
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  sub_1000C6B04();
  sub_1000C6B54();
  v12 = *(a1 + 176);
  v13 = *(a1 + 192);
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v14;
  v6 = (a2 + *(sub_10000FEB8(&qword_100119F50, &qword_1000D5BC8) + 36));
  *v6 = KeyPath;
  v6[1] = sub_100050DD8;
  v6[2] = v5;
  v12 = v15;
  sub_1000C6AE4();
  v7 = swift_allocObject();
  memcpy((v7 + 16), a1, 0x120uLL);
  v8 = a2 + *(sub_10000FEB8(&qword_100119F40, &qword_1000D5BC0) + 36);
  *v8 = v14;
  *(v8 + 8) = sub_1000B794C;
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  memcpy((v9 + 16), a1, 0x120uLL);
  v10 = (a2 + *(sub_10000FEB8(&qword_100119F28, &qword_1000D5BB8) + 36));
  *v10 = sub_1000B7A88;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  sub_10005051C(a1, &v12);
  return sub_10005051C(a1, &v12);
}

uint64_t sub_1000B6D30@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  result = sub_1000C68C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000B6DB0(uint64_t a1)
{
  v3 = *(a1 + 248);
  v5 = *(a1 + 264);
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  v4 = *(a1 + 272);
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  return sub_1000C6AF4();
}

uint64_t sub_1000B6E3C()
{
  v1 = sub_1000C63B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_10000FEB8(&qword_100119E60, &qword_1000D5AC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12[-v8 - 8];
  memcpy(v12, v0, 0x120uLL);
  sub_1000B5340(v12, v9);
  sub_1000C63A4();
  sub_1000B6FD4();
  sub_1000C69F4();
  (*(v2 + 8))(v5, v1);
  return sub_100010F24(v9, &qword_100119E60, &qword_1000D5AC0);
}

unint64_t sub_1000B6FD4()
{
  result = qword_100119E68;
  if (!qword_100119E68)
  {
    sub_100010624(&qword_100119E60, &qword_1000D5AC0);
    sub_10001E490(&qword_100119E70, &qword_100119E78, &qword_1000D5AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119E68);
  }

  return result;
}

uint64_t sub_1000B7084(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, char *a5)
{
  v8 = *a5;
  v12 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  memcpy((v9 + 32), a4, 0x120uLL);
  *(v9 + 320) = v8;

  sub_1000229B4(a2);
  sub_10005051C(a4, v11);
  sub_10000FEB8(&qword_1001174A0, &qword_1000CE888);
  sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  sub_10001E490(&qword_100119F68, &qword_1001174A0, &qword_1000CE888);
  sub_1000B7510();
  sub_100042514();
  return sub_1000C6BF4();
}

uint64_t sub_1000B71DC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, char *a5)
{
  v8 = *a5;
  v12 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  memcpy((v9 + 32), a4, 0x120uLL);
  *(v9 + 320) = v8;

  sub_1000229B4(a2);
  sub_10005051C(a4, v11);
  sub_10000FEB8(&qword_100117488, &qword_1000CE880);
  sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  sub_10001E490(&qword_100119F80, &qword_100117488, &qword_1000CE880);
  sub_1000B7510();
  sub_1000422DC();
  return sub_1000C6BF4();
}

uint64_t sub_1000B7334(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, char *a5)
{
  v8 = *a5;
  v12 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  memcpy((v9 + 32), a4, 0x120uLL);
  *(v9 + 320) = v8;

  sub_1000229B4(a2);
  sub_10005051C(a4, v11);
  sub_10000FEB8(&qword_100117470, &qword_1000D5C30);
  sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  sub_10001E490(&qword_100119F88, &qword_100117470, &qword_1000D5C30);
  sub_1000B7510();
  sub_1000423F8();
  return sub_1000C6BF4();
}

uint64_t sub_1000B74A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    sub_1000B7510();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B7510()
{
  result = qword_100119ED8;
  if (!qword_100119ED8)
  {
    sub_100010624(&qword_100119EE0, &qword_1000D5B28);
    sub_10001E490(&qword_100119EE8, &qword_100119EF0, &unk_1000D5B30);
    sub_10001E490(&qword_100117CC8, &qword_100117CD0, &qword_1000CFDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119ED8);
  }

  return result;
}

unint64_t sub_1000B764C()
{
  result = qword_100119F30;
  if (!qword_100119F30)
  {
    sub_100010624(&qword_100119F28, &qword_1000D5BB8);
    sub_1000B76D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F30);
  }

  return result;
}

unint64_t sub_1000B76D8()
{
  result = qword_100119F38;
  if (!qword_100119F38)
  {
    sub_100010624(&qword_100119F40, &qword_1000D5BC0);
    sub_1000B7790();
    sub_10001E490(&qword_100119F58, &qword_100119F60, &unk_1000D5BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F38);
  }

  return result;
}

unint64_t sub_1000B7790()
{
  result = qword_100119F48;
  if (!qword_100119F48)
  {
    sub_100010624(&qword_100119F50, &qword_1000D5BC8);
    sub_10001E490(&qword_100119AA8, &qword_100119A90, &qword_1000D5BD0);
    sub_10001E490(&qword_100117CC8, &qword_100117CD0, &qword_1000CFDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F48);
  }

  return result;
}

uint64_t sub_1000B7874()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B78AC(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1000B78D8(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1000B7904(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

_BYTE *sub_1000B794C(_BYTE *result)
{
  v2 = *(v1 + 144);
  if (v2)
  {
    v3 = *(v1 + 152);
    return v2((*result & 1) == 0);
  }

  return result;
}

uint64_t sub_1000B7988()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  if (v0[8])
  {
    v5 = v0[9];
  }

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  if (v0[14])
  {
    v9 = v0[15];
  }

  v10 = v0[16];

  if (v0[18])
  {
    v11 = v0[19];
  }

  v12 = v0[20];

  if (v0[22])
  {
    v13 = v0[23];
  }

  v14 = v0[24];

  v15 = v0[25];

  v16 = v0[27];

  v17 = v0[28];

  v18 = v0[30];

  v19 = v0[31];

  v20 = v0[33];

  v21 = v0[34];

  v22 = v0[37];

  return _swift_deallocObject(v0, 304, 7);
}

unint64_t sub_1000B7ACC()
{
  result = qword_100119F78;
  if (!qword_100119F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F78);
  }

  return result;
}

uint64_t sub_1000B7B20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B7B9C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v1 + 32);
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_1000B7C24()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  if (v0[10])
  {
    v6 = v0[11];
  }

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  if (v0[16])
  {
    v10 = v0[17];
  }

  v11 = v0[18];

  if (v0[20])
  {
    v12 = v0[21];
  }

  v13 = v0[22];

  if (v0[24])
  {
    v14 = v0[25];
  }

  v15 = v0[26];

  v16 = v0[27];

  v17 = v0[29];

  v18 = v0[30];

  v19 = v0[32];

  v20 = v0[33];

  v21 = v0[35];

  v22 = v0[36];

  v23 = v0[39];

  return _swift_deallocObject(v0, 321, 7);
}

uint64_t sub_1000B7D48()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000B7D88(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  v5 = sub_1000C6634();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  LOBYTE(a3) = *a3;
  v12[1] = sub_10003D43C(a1);
  v12[2] = v10;
  v13 = (a1 ^ a3) & 1;
  sub_1000C63E4();
  sub_1000B7ACC();
  sub_1000B7B20(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect);
  sub_1000C6924();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000B7F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000B7F4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000B7F9C()
{
  sub_100010624(&qword_100119E60, &qword_1000D5AC0);
  sub_1000C63B4();
  sub_1000B6FD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B8034(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000B804C();
  }

  return result;
}

uint64_t sub_1000B804C()
{
}

uint64_t sub_1000B8094(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000B80AC();
  }

  return result;
}

uint64_t sub_1000B80AC()
{
}

unint64_t sub_1000B8150()
{
  result = qword_100119FA8;
  if (!qword_100119FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119FA8);
  }

  return result;
}

uint64_t sub_1000B81D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "Board";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "presentComposeMessage";
      v4 = 0xD000000000000016;
    }

    else
    {
      v5 = "presentComposeCopyLink";
      v4 = 0xD000000000000018;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3)
    {
      v5 = "presentComposeMail";
    }

    else
    {
      v5 = "Board";
    }
  }

  if (a2 > 1u)
  {
    v2 = "presentComposeMessage";
    v6 = "presentComposeCopyLink";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000016;
    }

    else
    {
      v8 = 0xD000000000000018;
    }
  }

  else
  {
    v6 = "presentComposeMail";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000015;
    }

    else
    {
      v8 = 0xD000000000000012;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000C73A4();
  }

  return v10 & 1;
}

uint64_t sub_1000B82F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100017574(a3, v24 - v10, &qword_1001164E0, &unk_1000CDD50);
  v12 = sub_1000C6F44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100010F24(v11, &qword_1001164E0, &unk_1000CDD50);
  }

  else
  {
    sub_1000C6F34();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000C6ED4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000C6DB4() + 32;

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

      sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);

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

  sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000B85A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100017574(a3, v24 - v10, &qword_1001164E0, &unk_1000CDD50);
  v12 = sub_1000C6F44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100010F24(v11, &qword_1001164E0, &unk_1000CDD50);
  }

  else
  {
    sub_1000C6F34();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000C6ED4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000C6DB4() + 32;

      sub_10000FEB8(&unk_10011A240, &unk_1000D62A0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);

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

  sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);
  sub_10000FEB8(&unk_10011A240, &unk_1000D62A0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000B8860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100017574(a3, v27 - v11, &qword_1001164E0, &unk_1000CDD50);
  v13 = sub_1000C6F44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100010F24(v12, &qword_1001164E0, &unk_1000CDD50);
  }

  else
  {
    sub_1000C6F34();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000C6ED4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000C6DB4() + 32;
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

      sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);

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

  sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);
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

uint64_t sub_1000B8B8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = [*(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22ActivityItemDataSource_share) URL];
  if (v10)
  {
    v11 = v10;
    sub_1000C5D44();

    v12 = sub_1000C5D84();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  }

  else
  {
    v12 = sub_1000C5D84();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  sub_10000FF00(v7, v9);
  sub_1000C5D84();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    result = sub_100010F24(v9, &qword_100116260, &qword_1000CD940);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v12;
    v15 = sub_100039C00(a1);
    return (*(v13 + 32))(v15, v9, v12);
  }

  return result;
}

Swift::Int sub_1000B8EDC()
{
  v1 = *v0;
  sub_1000C7464();
  sub_1000C6DD4();

  return sub_1000C7494();
}

uint64_t sub_1000B8F94()
{
  *v0;
  *v0;
  *v0;
  sub_1000C6DD4();
}

Swift::Int sub_1000B9038()
{
  v1 = *v0;
  sub_1000C7464();
  sub_1000C6DD4();

  return sub_1000C7494();
}

uint64_t sub_1000B90EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C01A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000B911C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "Board";
  v4 = "presentComposeMessage";
  v5 = 0xD000000000000016;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000018;
    v4 = "presentComposeCopyLink";
  }

  if (*v1)
  {
    v2 = 0xD000000000000015;
    v3 = "presentComposeMail";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

id sub_1000B9194()
{
  v0 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_1000C5D84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  sub_1000C5D74();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    v13 = sub_1000C73C4();
    (*(v5 + 8))(v11, v4);

    return v13;
  }

  return result;
}

uint64_t sub_1000B9370@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v2 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000CB170;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1000C7244(38);

  v21 = 0xD000000000000024;
  v22 = 0x80000001000DDC10;
  v8 = *(v1 + OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_sharingModel);
  v9 = *(v8 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v23._countAndFlagsBits = sub_1000C6D94();
  sub_1000C6E04(v23);

  v10 = v21;
  v11 = v22;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1000382F4();
  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  sub_1000C5DD4();

  v12 = *(v8 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v13 = sub_1000C5D84();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    result = sub_100010F24(v6, &qword_100116260, &qword_1000CD940);
    v16 = v20;
    *v20 = 0u;
    *(v16 + 1) = 0u;
  }

  else
  {
    v17 = v20;
    v20[3] = v13;
    v18 = sub_100039C00(v17);
    return (*(v14 + 32))(v18, v6, v13);
  }

  return result;
}

id sub_1000B9664(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t *__return_ptr))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  a5(v19);

  v11 = v20;
  if (v20)
  {
    v12 = sub_100011818(v19, v20);
    v13 = *(v11 - 8);
    v14 = *(v13 + 64);
    __chkstk_darwin(v12);
    v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = sub_1000C7394();
    (*(v13 + 8))(v16, v11);
    sub_100010544(v19);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_1000B97C8(void *a1)
{
  if (!a1)
  {
    return [objc_allocWithZone(NSOperation) init];
  }

  type metadata accessor for UIActivityTransportViewController();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return [objc_allocWithZone(NSOperation) init];
  }

  v4 = v3;
  v5 = a1;
  v6 = [v4 activity];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = v7;
    v8[4] = v1;
    v15[4] = sub_1000BFE18;
    v15[5] = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_10008EFD4;
    v15[3] = &unk_10010BAA8;
    v9 = _Block_copy(v15);
    v10 = objc_opt_self();
    v11 = v1;
    v12 = [v10 blockOperationWithBlock:v9];
    _Block_release(v9);

    return v12;
  }

  else
  {
    v14 = [objc_allocWithZone(NSOperation) init];

    return v14;
  }
}

void sub_1000B9948(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000C5F74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v58 - v13;
  v15 = a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport;
  v16 = *(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport);
  if (v16)
  {
    v17 = *(v15 + 8);

    v16(a2);
    sub_100010800(v16);
  }

  v18 = dispatch_semaphore_create(0);
  v19 = sub_1000C6F44();
  v20 = *(v19 - 8);
  v62 = *(v20 + 56);
  v63 = v19;
  v61 = v20 + 56;
  v62(v14, 1, 1);
  v21 = sub_1000C6F14();
  v22 = a3;
  v23 = v18;
  v60 = v21;
  v24 = sub_1000C6F04();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = &protocol witness table for MainActor;
  v25[4] = v22;
  v25[5] = v23;
  sub_1000B8860(0, 0, v14, &unk_1000D60C8, v25);

  v64 = v23;
  sub_1000C7074();
  sub_1000C5F54();
  v26 = v22;
  v27 = sub_1000C5F64();
  v28 = sub_1000C6FD4();

  v29 = &OBJC_PROTOCOL___UIActivityItemSource;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v59 = v14;
    v32 = v7;
    v33 = v31;
    v71 = v31;
    *v30 = 136315138;
    v34 = *&v26[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 8];
    v35 = *&v26[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 16];
    v36 = *&v26[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 24];
    v37 = *&v26[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 32];
    v38 = v26[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 40];
    v65 = *&v26[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error];
    v66 = v34;
    v67 = v35;
    v68 = v36;
    v69 = v37;
    v70 = v38;
    sub_1000BFFF0(v65, v34, v35, v36, v37, v38);
    sub_10000FEB8(&qword_1001167F0, &qword_1000CC600);
    v39 = sub_1000C6D94();
    v41 = v6;
    v42 = sub_100071844(v39, v40, &v71);

    *(v30 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v27, v28, "UIActivityTransportView wait finished iosPrepareToShare, error: %s", v30, 0xCu);
    sub_100010544(v33);

    v43 = v41;
    v29 = &OBJC_PROTOCOL___UIActivityItemSource;
    (*(v32 + 8))(v10, v43);
    v14 = v59;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v44 = &v26[*&v29[2].cb];
  v45 = v44[40];
  if (v45 == 255)
  {
    goto LABEL_11;
  }

  v46 = *v44;
  v47 = *(v44 + 1);
  v48 = *(v44 + 2);
  v49 = *(v44 + 3);
  v50 = *(v44 + 4);
  v51 = objc_allocWithZone(NSError);
  sub_1000199B8(v46, v47, v48, v49, v50, v45);
  v52 = [v51 initWithDomain:CKErrorDomain code:1 userInfo:0];
  v53 = v52;
  if (v45 == 4)
  {

    if (!v48)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

  if (v45 == 1)
  {

    if (!v48)
    {
      __break(1u);
LABEL_11:

      return;
    }

LABEL_13:
    v53 = v48;
  }

  (v62)(v14, 1, 1, v63);
  v54 = v26;
  v55 = v53;
  v56 = sub_1000C6F04();
  v57 = swift_allocObject();
  v57[2] = v56;
  v57[3] = &protocol witness table for MainActor;
  v57[4] = v54;
  v57[5] = v55;
  sub_1000B8860(0, 0, v14, &unk_1000D60D8, v57);

  sub_100099CE8(v46, v47, v48, v49, v50, v45);
}

uint64_t sub_1000B9E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = sub_1000C5F74();
  v5[18] = v6;
  v7 = *(v6 - 8);
  v5[19] = v7;
  v8 = *(v7 + 64) + 15;
  v5[20] = swift_task_alloc();
  sub_1000C6F14();
  v5[21] = sub_1000C6F04();
  v10 = sub_1000C6ED4();
  v5[22] = v10;
  v5[23] = v9;

  return _swift_task_switch(sub_1000B9F44, v10, v9);
}

uint64_t sub_1000B9F44()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_sharingModel);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_1000B9FE8;

  return sub_10006AE2C(v0 + 16);
}

uint64_t sub_1000B9FE8()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return _swift_task_switch(sub_1000BA108, v4, v3);
}

uint64_t sub_1000BA108()
{
  v37 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 128);

  v4 = &v3[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error];
  v5 = *&v3[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error];
  v6 = *&v3[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 8];
  v7 = *&v3[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 16];
  v8 = *&v3[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 24];
  v9 = *&v3[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 32];
  v10 = *(v0 + 41);
  v11 = *(v0 + 32);
  *v4 = *(v0 + 16);
  *(v4 + 1) = v11;
  v12 = v4[40];
  *(v4 + 25) = v10;
  sub_100099CE8(v5, v6, v7, v8, v9, v12);
  sub_1000C5F54();
  v13 = v3;
  v14 = sub_1000C5F64();
  v15 = sub_1000C6FD4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136315138;
    v18 = v4[40];
    if (v18 == 255)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v19 = *(v4 + 4);
      v20 = *(v4 + 1);
      *(v0 + 64) = *v4;
      *(v0 + 80) = v20;
      *(v0 + 96) = v19;
      *(v0 + 104) = v18;
      sub_1000100B0();
      v21 = sub_1000C7404();
    }

    v27 = *(v0 + 152);
    v26 = *(v0 + 160);
    v28 = *(v0 + 144);
    *(v0 + 112) = v21;
    *(v0 + 120) = v22;
    sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
    v29 = sub_1000C6D94();
    v31 = sub_100071844(v29, v30, &v36);

    *(v16 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v14, v15, "UIActivityTransportView iosPrepareToShare (sharingURL attempt) error: %s", v16, 0xCu);
    sub_100010544(v17);

    (*(v27 + 8))(v26, v28);
  }

  else
  {
    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
    v25 = *(v0 + 144);

    (*(v24 + 8))(v23, v25);
  }

  v32 = *(v0 + 160);
  v33 = *(v0 + 136);
  sub_1000C7084();

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1000BA350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1000C6F14();
  v5[4] = sub_1000C6F04();
  v7 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BA3E8, v7, v6);
}

uint64_t sub_1000BA3E8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v3 + OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_sharingModel);
  sub_100067838(3u, v2);
  v5 = v0[1];

  return v5();
}

id sub_1000BA4F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIActivityTransportView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000BA5C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1000C6F14();
  v2[4] = sub_1000C6F04();
  v4 = sub_1000C6ED4();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1000BA658, v4, v3);
}

uint64_t sub_1000BA658(uint64_t a1)
{
  if (*(v1 + 16) < 1)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 56) = **(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v1 + 96) - 2 > 3 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v1 + 97) == 2))
  {
    v2 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
    v3 = swift_task_alloc();
    *(v1 + 64) = v3;
    *v3 = v1;
    v3[1] = sub_1000BA848;
    a1 = 1000000000;

    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = *(v1 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v5 = *(v1 + 98) - 3 < 2;
  v6 = *(v1 + 8);

  return v6(v5);
}

uint64_t sub_1000BA848()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = sub_1000BA96C;
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = sub_1000C0830;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000BA96C()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    goto LABEL_13;
  }

  *(v0 + 72) = v1;
  if (v1 < 2)
  {
    __break(1u);
LABEL_13:
    v4 = (v0 + 99);
    v8 = *(v0 + 56);
    goto LABEL_9;
  }

  *(v0 + 80) = **(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 96) - 2 > 3 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v0 + 97) == 2))
  {
    v2 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1000BAB78;

    return static Task<>.sleep(nanoseconds:)(1000000000);
  }

  v4 = (v0 + 98);
LABEL_9:
  v5 = *(v0 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v6 = *v4 - 3 < 2;
  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1000BAB78()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = sub_1000C07D8;
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = sub_1000BAC9C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000BAC9C(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2 == 2)
  {
    v5 = (v1 + 99);
    v10 = *(v1 + 80);
  }

  else
  {
    *(v1 + 72) = v2 - 1;
    if (v2 < 3)
    {
      __break(1u);
      return static Task<>.sleep(nanoseconds:)(a1);
    }

    *(v1 + 80) = **(v1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (*(v1 + 96) - 2 > 3 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v1 + 97) == 2))
    {
      v3 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v4 = swift_task_alloc();
      *(v1 + 88) = v4;
      *v4 = v1;
      v4[1] = sub_1000BAB78;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v5 = (v1 + 98);
  }

  v6 = *(v1 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v7 = *v5 - 3 < 2;
  v8 = *(v1 + 8);

  return v8(v7);
}

void sub_1000BAEAC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for ShareCopyLinkActivity()) init];
  sub_10000FEB8(&qword_100116370, &qword_1000CDD30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000CB170;
  *(v3 + 56) = type metadata accessor for UIActivityTransportView.Coordinator();
  sub_10000FEB8(&unk_10011A250, &unk_1000D62B0);
  sub_1000C6754();
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CD0E0;
  *(v4 + 32) = v2;
  v5 = *v0;
  v6 = *(v0 + 144);
  v77[0] = *(v0 + 128);
  v77[1] = v6;
  v70 = v2;
  sub_10000FEB8(&unk_10011A210, &qword_1000D60B8);
  sub_1000C6BB4();
  v7 = aBlock;
  v8 = v72;
  v9 = v73;
  v10 = v74;
  v11 = type metadata accessor for UIActivityTransportViewController();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v12[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel] = v5;
  v14 = &v12[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController__transportPrepCompletion];
  *v14 = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;

  sub_1000229B4(v9);
  isa = sub_1000C6E84().super.isa;

  sub_100010778(0, &qword_10011A260, UIActivity_ptr);
  v16 = sub_1000C6E84().super.isa;

  v78.receiver = v12;
  v78.super_class = v11;
  v17 = objc_msgSendSuper2(&v78, "initWithActivityItems:applicationActivities:", isa, v16);

  sub_100010800(v9);

  v18 = v17;
  [v18 setAllowsEmbedding:1];
  [v18 setConfigureForCloudSharing:1];
  sub_10000FEB8(&qword_10011A268, &qword_1000D62C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000D5D80;
  *(v19 + 32) = UIActivityTypeAirDrop;
  *(v19 + 40) = UIActivityTypeAddToReadingList;
  v20 = UIActivityTypeCreateReminder;
  v21 = UIActivityTypeSaveToNotes;
  *(v19 + 48) = UIActivityTypeCreateReminder;
  *(v19 + 56) = v21;
  type metadata accessor for ActivityType(0);
  v22 = UIActivityTypeAirDrop;
  v23 = UIActivityTypeAddToReadingList;
  v24 = v20;
  v25 = v21;
  v26 = sub_1000C6E84().super.isa;

  [v18 setExcludedActivityTypes:v26];

  v27 = swift_allocObject();
  v28 = *(v1 + 112);
  *(v27 + 112) = *(v1 + 96);
  *(v27 + 128) = v28;
  v29 = *(v1 + 80);
  *(v27 + 80) = *(v1 + 64);
  *(v27 + 96) = v29;
  *(v27 + 192) = *(v1 + 176);
  v30 = *(v1 + 160);
  *(v27 + 160) = *(v1 + 144);
  *(v27 + 176) = v30;
  *(v27 + 144) = *(v1 + 128);
  v31 = *(v1 + 16);
  *(v27 + 16) = *v1;
  *(v27 + 32) = v31;
  v32 = *(v1 + 48);
  *(v27 + 48) = *(v1 + 32);
  *(v27 + 64) = v32;
  v33 = &v18[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport];
  v34 = *&v18[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport];
  v35 = *&v18[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport + 8];
  *v33 = sub_1000C0354;
  v33[1] = v27;
  sub_1000C035C(v1, v77);
  sub_100010800(v34);
  v36 = swift_allocObject();
  v37 = *(v1 + 144);
  *(v36 + 144) = *(v1 + 128);
  *(v36 + 160) = v37;
  *(v36 + 176) = *(v1 + 160);
  *(v36 + 192) = *(v1 + 176);
  v38 = *(v1 + 80);
  *(v36 + 80) = *(v1 + 64);
  *(v36 + 96) = v38;
  v39 = *(v1 + 112);
  *(v36 + 112) = *(v1 + 96);
  *(v36 + 128) = v39;
  v40 = *(v1 + 16);
  *(v36 + 16) = *v1;
  *(v36 + 32) = v40;
  v41 = *(v1 + 48);
  *(v36 + 48) = *(v1 + 32);
  *(v36 + 64) = v41;
  v75 = sub_1000C0450;
  v76 = v36;
  aBlock = _NSConcreteStackBlock;
  v72 = 1107296256;
  v73 = sub_10009CD68;
  v74 = &unk_10010BCB8;
  v42 = _Block_copy(&aBlock);
  sub_1000C035C(v1, v77);

  [v18 setCompletionWithItemsHandler:v42];
  _Block_release(v42);

  v43 = qword_100119FB0;
  qword_100119FB0 = v18;
  v44 = v18;

  v45 = [v44 view];
  if (!v45)
  {
    goto LABEL_17;
  }

  v46 = swift_allocObject();
  *(v46 + 16) = _swiftEmptyArrayStorage;
  v47 = (v46 + 16);
  sub_1000BECC4(v45, v46);

  swift_beginAccess();
  v48 = *v47;

  if (v48 >> 62)
  {
    v49 = sub_1000C72F4();
    if (!v49)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v49)
    {
      goto LABEL_13;
    }
  }

  if (v49 < 1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  for (i = 0; i != v49; ++i)
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      v51 = sub_1000C7254();
    }

    else
    {
      v51 = *(v48 + 8 * i + 32);
    }

    v52 = v51;
    [v51 setDirectionalLayoutMargins:{0.0, 20.0, 0.0, 20.0}];
    objc_opt_self();
    v53 = swift_dynamicCastObjCClass();
    if (v53)
    {
      v54 = v53;
      [v53 contentInset];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      [v54 setAlwaysBounceVertical:0];
      [v54 setScrollEnabled:0];
      [v54 setClipsToBounds:0];
      [v54 setContentInset:{v56, v58, -15.0, v60}];
    }
  }

LABEL_13:

  v61 = [objc_allocWithZone(UIViewController) init];
  v62 = [v61 view];
  if (!v62)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v63 = v62;
  [v62 setDirectionalLayoutMargins:{0.0, 0.0, -1.0, 0.0}];

  v64 = [v61 view];
  if (v64)
  {
    v65 = v64;
    [v64 setClipsToBounds:1];

    sub_100007B2C(v44);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1000D5D90;
    v67 = objc_opt_self();
    *(v66 + 32) = [v67 traitCollectionWithHorizontalSizeClass:1];
    *(v66 + 40) = [v67 traitCollectionWithVerticalSizeClass:1];
    sub_100010778(0, &qword_10011A270, UITraitCollection_ptr);
    v68 = sub_1000C6E84().super.isa;

    v69 = [v67 traitCollectionWithTraitsFromCollections:v68];

    [v61 setOverrideTraitCollection:v69 forChildViewController:v44];
    return;
  }

LABEL_19:
  __break(1u);
}