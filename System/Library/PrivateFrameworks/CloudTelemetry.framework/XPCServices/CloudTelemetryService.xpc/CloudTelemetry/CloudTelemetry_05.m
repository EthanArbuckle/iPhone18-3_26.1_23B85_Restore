uint64_t sub_100065A50()
{
  v40 = v0;
  v1 = *(v0 + 257);
  v2 = *(v0 + 255);
  v3 = *(v0 + 214);

  swift_errorRetain();
  v4 = sub_100079B80();
  v5 = sub_10007A170();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 257);
    v7 = *(v0 + 230);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = *(v0 + 180);
    v11 = *(v0 + 181);
    v12 = *(v0 + 182);
    v13 = sub_10007A6D0();
    v15 = sub_100006B00(v13, v14, &v39);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "immediate backend failed to send events: %{public}s", v8, 0xCu);
    sub_1000070A8(v9);

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = *(v0 + 257);
    v17 = *(v0 + 230);

    swift_unknownObjectRelease();
  }

  if (*(*(v0 + 224) + 16))
  {
    v18 = *(v0 + 235);
    v19 = *(v0 + 233);
    v20 = *(v0 + 214);

    v21 = sub_100079B80();
    v22 = sub_10007A190();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 235);
      v24 = *(v0 + 234);
      v25 = *(v0 + 233);
      v26 = *(v0 + 232);
      v27 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v27 = 136446466;
      *(v27 + 4) = sub_100006B00(v26, v25, &v39);
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_100006B00(v24, v23, &v39);
      _os_log_impl(&_mh_execute_header, v21, v22, "caching sendOneMessage %{public}s:%{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    v28 = *(v0 + 198);
    v29 = *(*(v0 + 195) + 144);
    sub_1000799C0();
    v30 = swift_task_alloc();
    *(v0 + 258) = v30;
    *v30 = v0;
    v30[1] = sub_100062220;
    v31 = *(v0 + 246);
    v32 = *(v0 + 245);
    v33 = *(v0 + 244);
    v34 = v0[217];
    v35 = *(v0 + 198);

    return sub_100020D38((v0 + 93), v35, v34, v33, v32, v31);
  }

  else
  {
    v37 = *(v0 + 220);
    v38 = *v37 + 256;
    v0[260] = *v38;
    *(v0 + 261) = v38 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;

    return _swift_task_switch(sub_100062560, v37, 0);
  }
}

uint64_t sub_100065DF8()
{
  v19 = v0;
  v1 = v0[259];
  v2 = v0[214];
  swift_errorRetain();
  v3 = sub_100079B80();
  v4 = sub_10007A170();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[259];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = v0[174];
    v9 = v0[175];
    v10 = v0[176];
    v11 = sub_10007A6D0();
    v13 = sub_100006B00(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "failed to cache sendOneMessage event: %{public}s", v6, 0xCu);
    sub_1000070A8(v7);
  }

  else
  {
    v14 = v0[259];
  }

  v15 = v0[220];
  v16 = *v15 + 256;
  v0[260] = *v16;
  v0[261] = v16 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;

  return _swift_task_switch(sub_100062560, v15, 0);
}

_xpc_connection_s *sub_100065FAC()
{
  v62 = v0;
  v1 = *(v0 + 2200);
  v2 = *(v0 + 2144);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1688);
  sub_1000070A8((v0 + 1016));
  sub_100068C78(v3, v4, type metadata accessor for CachedSession);
  swift_errorRetain();
  v5 = sub_100079B80();
  v6 = sub_10007A170();

  if (os_log_type_enabled(v5, v6))
  {
    v57 = *(v0 + 2200);
    v7 = *(v0 + 1688);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446466;
    v11 = *(v7 + 16);
    v10 = *(v7 + 32);
    v12 = *(v7 + 48);
    *(v0 + 632) = *v7;
    *(v0 + 648) = v11;
    *(v0 + 680) = v12;
    *(v0 + 664) = v10;
    v13 = *(v0 + 632);
    v14 = *(v0 + 640);
    v15 = *(v0 + 648);
    v16 = *(v0 + 656);
    v59 = v9;
    v60 = v13;
    v61 = v14;
    sub_100009B00(v0 + 632, v0 + 688);

    v64._countAndFlagsBits = 58;
    v64._object = 0xE100000000000000;
    sub_100079F00(v64);
    v65._countAndFlagsBits = v15;
    v65._object = v16;
    sub_100079F00(v65);
    sub_100068BD0(v7, type metadata accessor for CachedSession);
    sub_100019EF4(v0 + 632);
    v17 = sub_100006B00(v60, v14, &v59);

    *(v8 + 4) = v17;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v18 = *(v0 + 1176);
    v19 = *(v0 + 1184);
    v20 = *(v0 + 1192);
    v21 = sub_10007A6D0();
    v23 = sub_100006B00(v21, v22, &v59);

    *(v8 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v5, v6, "unable to determine sampling for identity %{public}s with error %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = *(v0 + 1688);

    sub_100068BD0(v24, type metadata accessor for CachedSession);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v26 = reply;
    v27 = *(v0 + 1560);
    v28 = MessageKeys.samplingOutcome.unsafeMutableAddressor();
    v29 = *v28;
    v30 = v28[1];

    v31 = ServiceSamplingOutcome.rawValue.getter(6);
    v32 = sub_100079EA0();

    xpc_dictionary_set_int64(v26, (v32 + 32), v31);

    result = swift_beginAccess();
    v34 = *(v27 + 112);
    if (v34)
    {
      swift_beginAccess();
      result = *(v34 + 16);
      if (result)
      {
        v35 = *(v0 + 2144);
        xpc_connection_send_message(result, v26);
        v36 = sub_100079B80();
        v37 = sub_10007A150();
        v38 = os_log_type_enabled(v36, v37);
        v39 = *(v0 + 2200);
        v40 = *(v0 + 1696);
        if (v38)
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "CheckSamplingResult Error Reply Sent", v41, 2u);

          swift_unknownObjectRelease();
        }

        else
        {
          v43 = *(v0 + 2200);

          swift_unknownObjectRelease();
        }

        sub_100068BD0(v40, type metadata accessor for CachedSession);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v42 = *(v0 + 2200);
  sub_100068BD0(*(v0 + 1696), type metadata accessor for CachedSession);

LABEL_12:
  v44 = *(v0 + 1704);
  v45 = *(v0 + 1696);
  v46 = *(v0 + 1688);
  v47 = *(v0 + 1664);
  v48 = *(v0 + 1656);
  v49 = *(v0 + 1648);
  v50 = *(v0 + 1640);
  v51 = *(v0 + 1632);
  v52 = *(v0 + 1624);
  v53 = *(v0 + 1616);
  v55 = *(v0 + 1608);
  v56 = *(v0 + 1600);
  v58 = *(v0 + 1584);

  v54 = *(v0 + 8);

  return v54();
}

void sub_100066470(void *a1)
{
  v2 = v1;
  v4 = sub_100079BB0();
  swift_unknownObjectRelease();
  if (v4 == a1)
  {
    if (qword_1000A5D30 != -1)
    {
      swift_once();
    }

    v16 = sub_100079BA0();
    sub_1000070F4(v16, qword_1000A5D38);

    v17 = sub_100079B80();
    v18 = sub_10007A150();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_100006B00(v2[16], v2[17], &v28);
      _os_log_impl(&_mh_execute_header, v17, v18, "XPC client %{public}s closed connection", v19, 0xCu);
      sub_1000070A8(v20);
    }

    v21 = v2[22];
    sub_100028130();
  }

  else
  {
    v5 = sub_100079BC0();
    swift_unknownObjectRelease();
    if (v5 == a1)
    {
      if (qword_1000A5D30 != -1)
      {
        swift_once();
      }

      v22 = sub_100079BA0();
      sub_1000070F4(v22, qword_1000A5D38);

      oslog = sub_100079B80();
      v23 = sub_10007A150();

      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v28 = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_100006B00(v2[16], v2[17], &v28);
        _os_log_impl(&_mh_execute_header, oslog, v23, "XPC client %{public}s interrupted connection", v24, 0xCu);
        sub_1000070A8(v25);
      }
    }

    else
    {
      v6 = xpc_copy_description(a1);
      v7 = sub_100079F10();
      v9 = v8;
      if (qword_1000A5D30 != -1)
      {
        swift_once();
      }

      v10 = sub_100079BA0();
      sub_1000070F4(v10, qword_1000A5D38);

      v11 = sub_100079B80();
      v12 = sub_10007A150();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v28 = v14;
        *v13 = 136315138;
        v15 = sub_100006B00(v7, v9, &v28);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v11, v12, "XPC connection triggered error: %s", v13, 0xCu);
        sub_1000070A8(v14);
      }

      else
      {
      }

      v26 = v2[22];
      sub_100028130();

      free(v6);
    }
  }
}

uint64_t sub_10006689C(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v3[37] = *v2;
  v4 = *(*(sub_100079A00() - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v5 = *(*(sub_10000712C(&unk_10009EC50, &unk_10007D650) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return _swift_task_switch(sub_1000669F0, v2, 0);
}

_xpc_connection_s *sub_1000669F0()
{
  v154 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 280);
  v3 = MessageKeys.sendOneMessageSessionInfo.unsafeMutableAddressor();
  v4 = *v3;
  v5 = v3[1];

  XPCDictionary.subscript.getter(v2, v1);

  v6 = type metadata accessor for XPCObject();
  v7 = *(*(v6 - 8) + 48);
  v8 = v7(v1, 1, v6);
  v9 = *(v0 + 376);
  if (v8 == 1)
  {
    sub_1000096C4(*(v0 + 376), &unk_10009EC50, &unk_10007D650);
    goto LABEL_8;
  }

  v10 = *(v0 + 376);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v11 = *(v0 + 368);
    v12 = *(v0 + 280);
    v13 = *v9;
    v14 = MessageKeys.sendOneMessageEvent.unsafeMutableAddressor();
    v15 = *v14;
    v16 = v14[1];

    XPCDictionary.subscript.getter(v12, v11);

    v17 = v7(v11, 1, v6);
    v18 = *(v0 + 368);
    if (v17 == 1)
    {
      swift_unknownObjectRelease();
      sub_1000096C4(v18, &unk_10009EC50, &unk_10007D650);
      goto LABEL_8;
    }

    v49 = *(v0 + 368);
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v50 = *(v0 + 360);
      v51 = *v18;
      v52 = MessageKeys.eventType.unsafeMutableAddressor();
      v53 = *v52;
      v54 = v52[1];

      XPCDictionary.subscript.getter(v13, v50);

      v55 = v7(v50, 1, v6);
      v56 = *(v0 + 360);
      if (v55 == 1)
      {
LABEL_24:
        sub_1000096C4(v56, &unk_10009EC50, &unk_10007D650);
LABEL_34:
        if (qword_1000A5D30 != -1)
        {
          swift_once();
        }

        v72 = *(v0 + 288);
        v73 = sub_100079BA0();
        sub_1000070F4(v73, qword_1000A5D38);

        v74 = sub_100079B80();
        v75 = sub_10007A170();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = *(v0 + 288);
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v153 = v78;
          *v77 = 136446210;
          *(v77 + 4) = sub_100006B00(*(v76 + 128), *(v76 + 136), &v153);
          _os_log_impl(&_mh_execute_header, v74, v75, "missing required values in create session from %{public}s", v77, 0xCu);
          sub_1000070A8(v78);
        }

        reply = xpc_dictionary_create_reply(*(v0 + 280));
        if (!reply)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_18;
        }

        v80 = reply;
        v81 = *(v0 + 288);
        xpc_dictionary_set_string(reply, "error", "missing required sendOneMessage event fields");
        result = swift_beginAccess();
        v82 = *(v81 + 112);
        if (v82)
        {
          swift_beginAccess();
          result = *(v82 + 16);
          if (result)
          {
            xpc_connection_send_message(result, v80);
            v32 = sub_100079B80();
            v83 = sub_10007A150();
            if (os_log_type_enabled(v32, v83))
            {
              v84 = swift_slowAlloc();
              *v84 = 0;
              _os_log_impl(&_mh_execute_header, v32, v83, "CheckSamplingResult Error Reply Sent", v84, 2u);
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_17;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_81;
      }

      v57 = *(v0 + 360);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v58 = *(v0 + 352);
        v59 = v56[1];
        v152 = *v56;
        v60 = MessageKeys.clientType.unsafeMutableAddressor();
        v61 = *v60;
        v62 = v60[1];

        XPCDictionary.subscript.getter(v13, v58);

        v63 = v7(v58, 1, v6);
        v56 = *(v0 + 352);
        if (v63 == 1)
        {

          goto LABEL_24;
        }

        v64 = *(v0 + 352);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v65 = *(v0 + 344);
          v150 = *v56;
          xdict = v51;
          v66 = v56[1];
          v67 = MessageKeys.transportConfiguration.unsafeMutableAddressor();
          v68 = *v67;
          v69 = v67[1];

          XPCDictionary.subscript.getter(v13, v65);

          v70 = v7(v65, 1, v6);
          v71 = *(v0 + 344);
          if (v70 == 1)
          {

            sub_1000096C4(v71, &unk_10009EC50, &unk_10007D650);
            goto LABEL_34;
          }

          v149 = v66;
          if (swift_getEnumCaseMultiPayload() != 12)
          {

            sub_100068BD0(v71, type metadata accessor for XPCObject);
            goto LABEL_34;
          }

          v148 = v59;
          v85 = *(v0 + 336);
          v86 = *v71;
          v87 = MessageKeys.tcAllowsCellularAccess.unsafeMutableAddressor();
          v89 = *v87;
          v88 = v87[1];

          XPCDictionary.subscript.getter(v86, v85);

          v90 = v7(v85, 1, v6);
          v91 = *(v0 + 336);
          if (v90 == 1)
          {
            sub_1000096C4(*(v0 + 336), &unk_10009EC50, &unk_10007D650);
            goto LABEL_56;
          }

          v92 = *(v0 + 336);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_55;
          }

          v93 = *(v0 + 328);
          v147 = *v91;
          v94 = MessageKeys.tcAllowsExpensiveAccess.unsafeMutableAddressor();
          v96 = *v94;
          v95 = v94[1];

          XPCDictionary.subscript.getter(v86, v93);

          v97 = v7(v93, 1, v6);
          v91 = *(v0 + 328);
          if (v97 == 1)
          {
            sub_1000096C4(*(v0 + 328), &unk_10009EC50, &unk_10007D650);
            goto LABEL_56;
          }

          v98 = *(v0 + 328);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v99 = *(v0 + 320);
            v146 = *v91;
            v100 = MessageKeys.tcBundleID.unsafeMutableAddressor();
            v102 = *v100;
            v101 = v100[1];

            XPCDictionary.subscript.getter(v86, v99);

            v103 = v6;
            v104 = v7(v99, 1, v6);
            v105 = *(v0 + 320);
            if (v104 == 1)
            {
              sub_1000096C4(*(v0 + 320), &unk_10009EC50, &unk_10007D650);
              goto LABEL_56;
            }

            v121 = *(v0 + 320);
            if (swift_getEnumCaseMultiPayload() == 8)
            {
              v122 = *(v0 + 296);
              v144 = v105[1];
              v145 = *v105;
              *(v0 + 264) = sub_100032434(_swiftEmptyArrayStorage);
              count = xpc_dictionary_get_count(xdict);
              sub_10000712C(&unk_10009EB50, &unk_10007D3B0);
              sub_100079D80(count);
              v124 = swift_allocObject();
              *(v124 + 16) = v0 + 264;
              *(v124 + 24) = v122;
              v125 = swift_allocObject();
              *(v125 + 16) = sub_100068C40;
              *(v125 + 24) = v124;
              *(v0 + 104) = sub_100032638;
              *(v0 + 112) = v125;
              *(v0 + 72) = _NSConcreteStackBlock;
              *(v0 + 80) = 1107296256;
              *(v0 + 88) = sub_10002F120;
              *(v0 + 96) = &unk_100098E08;
              v126 = _Block_copy((v0 + 72));
              v127 = *(v0 + 112);
              swift_unknownObjectRetain();

              xpc_dictionary_apply(xdict, v126);
              swift_unknownObjectRelease();
              _Block_release(v126);
              LOBYTE(v127) = swift_isEscapingClosureAtFileLocation();

              if (v127)
              {
LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

              v128 = *(v0 + 312);
              v129 = MessageKeys.samplingUUID.unsafeMutableAddressor();
              v131 = *v129;
              v130 = *(v129 + 1);

              XPCDictionary.subscript.getter(v13, v128);

              v132 = v7(v128, 1, v103);
              v133 = *(v0 + 312);
              if (v132 == 1)
              {
                sub_1000096C4(*(v0 + 312), &unk_10009EC50, &unk_10007D650);
              }

              else
              {
                v134 = *(v0 + 312);
                if (swift_getEnumCaseMultiPayload() == 8)
                {
                  v135 = *v133;
                  v136 = v133[1];
LABEL_75:
                  v137 = *(v0 + 304);
                  v138 = *(v0 + 272);
                  type metadata accessor for Session();
                  sub_100009D54(v135, v136);
                  v140 = v139;

                  *(v0 + 16) = v150;
                  *(v0 + 24) = v149;
                  *(v0 + 32) = v152;
                  *(v0 + 40) = v148;
                  *(v0 + 48) = v147;
                  *(v0 + 49) = v146;
                  *(v0 + 56) = v145;
                  *(v0 + 64) = v144;
                  sub_1000799C0();
                  v141 = *(v0 + 264);

                  sub_100009BA8(v0 + 16, 0x4D656E4F646E6553, 0xEE00656761737365, v137, v141, v138, v140);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v142 = type metadata accessor for CachedSession();
                  (*(*(v142 - 8) + 56))(v138, 0, 1, v142);
                  v143 = *(v0 + 264);

                  goto LABEL_19;
                }

                sub_100068BD0(v133, type metadata accessor for XPCObject);
              }

              v135 = 0;
              v136 = 0;
              goto LABEL_75;
            }

            sub_100068BD0(v105, type metadata accessor for XPCObject);
          }

          else
          {
LABEL_55:
            sub_100068BD0(v91, type metadata accessor for XPCObject);
          }

LABEL_56:
          if (qword_1000A5D30 == -1)
          {
            goto LABEL_57;
          }

          goto LABEL_78;
        }
      }

      sub_100068BD0(v56, type metadata accessor for XPCObject);
      goto LABEL_34;
    }

    swift_unknownObjectRelease();
    v19 = v18;
  }

  else
  {
    v19 = v9;
  }

  sub_100068BD0(v19, type metadata accessor for XPCObject);
LABEL_8:
  if (qword_1000A5D30 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 288);
  v21 = sub_100079BA0();
  sub_1000070F4(v21, qword_1000A5D38);

  v22 = sub_100079B80();
  v23 = sub_10007A170();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 288);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v153 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_100006B00(*(v24 + 128), *(v24 + 136), &v153);
    _os_log_impl(&_mh_execute_header, v22, v23, "missing required values for sendOneMessage from %{public}s", v25, 0xCu);
    sub_1000070A8(v26);
  }

  v27 = xpc_dictionary_create_reply(*(v0 + 280));
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v27;
  v29 = *(v0 + 288);
  xpc_dictionary_set_string(v27, "error", "missing required sendOneMessage fields");
  swift_beginAccess();
  v30 = *(v29 + 112);
  if (!v30)
  {
    __break(1u);
    goto LABEL_77;
  }

  swift_beginAccess();
  v31 = *(v30 + 16);
  if (!v31)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
LABEL_57:
    v106 = *(v0 + 288);
    v107 = sub_100079BA0();
    sub_1000070F4(v107, qword_1000A5D38);

    v108 = sub_100079B80();
    v109 = sub_10007A170();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = *(v0 + 288);
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v153 = v112;
      *v111 = 136446210;
      *(v111 + 4) = sub_100006B00(*(v110 + 128), *(v110 + 136), &v153);
      _os_log_impl(&_mh_execute_header, v108, v109, "missing required values in transport configuration from %{public}s", v111, 0xCu);
      sub_1000070A8(v112);
    }

    v113 = xpc_dictionary_create_reply(*(v0 + 280));
    if (!v113)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_18;
    }

    v114 = v113;
    v115 = *(v0 + 288);
    xpc_dictionary_set_string(v113, "error", "missing required sendOneMessage event fields");
    result = swift_beginAccess();
    v116 = *(v115 + 112);
    if (v116)
    {
      result = swift_beginAccess();
      v117 = *(v116 + 16);
      if (v117)
      {
        v118 = *(v116 + 16);
        swift_unknownObjectRetain();

        xpc_connection_send_message(v117, v114);
        swift_unknownObjectRelease();
        v32 = sub_100079B80();
        v119 = sub_10007A150();
        if (os_log_type_enabled(v32, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&_mh_execute_header, v32, v119, "CheckSamplingResult Error Reply Sent", v120, 2u);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

LABEL_83:
      __break(1u);
      return result;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  xpc_connection_send_message(v31, v28);
  v32 = sub_100079B80();
  v33 = sub_10007A150();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "CheckSamplingResult Error Reply Sent", v34, 2u);
  }

LABEL_17:
  swift_unknownObjectRelease();

LABEL_18:
  v35 = *(v0 + 272);
  v36 = type metadata accessor for CachedSession();
  (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
LABEL_19:
  v38 = *(v0 + 368);
  v37 = *(v0 + 376);
  v40 = *(v0 + 352);
  v39 = *(v0 + 360);
  v42 = *(v0 + 336);
  v41 = *(v0 + 344);
  v44 = *(v0 + 320);
  v43 = *(v0 + 328);
  v46 = *(v0 + 304);
  v45 = *(v0 + 312);

  v47 = *(v0 + 8);

  return v47();
}

BOOL sub_100067A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
    sub_100068B7C();
  }

  while ((sub_100079DE0() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_100067AA8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  v4 = *(v0 + 152);

  v5 = *(v0 + 160);

  v6 = *(v0 + 168);

  v7 = *(v0 + 176);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100067B08()
{
  sub_100067AA8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100067B34@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10007A3C0();
  *a1 = result;
  return result;
}

Swift::Int sub_100067B60()
{
  v2 = *v0;
  sub_10007A730();
  sub_100079DB0();
  return sub_10007A760();
}

void sub_100067BC4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_1000688EC(&unk_10009FB80, a2, type metadata accessor for Client);
  v4 = sub_10007A3C0();
  sub_10007A740(v4);
}

Swift::Int sub_100067C3C()
{
  v2 = *v0;
  sub_10007A730();
  sub_100079DB0();
  return sub_10007A760();
}

BOOL sub_100067CA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1000688EC(&unk_10009FB80, a2, type metadata accessor for Client);
  v4 = sub_10007A3C0();
  return v4 == sub_10007A3C0();
}

void sub_100067D3C(uint64_t a1, void *a2, uint64_t a3)
{
  v47 = a3;
  v4 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for ServiceEventValue();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v44 - v16;
  v18 = type metadata accessor for XPCObject();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v44 - v24;
  v45 = sub_100079F10();
  v27 = v26;
  v28 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v28, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    v29 = &unk_10009EC50;
    v30 = &unk_10007D650;
    v31 = v17;
  }

  else
  {
    sub_100068CE0(v17, v25, type metadata accessor for XPCObject);
    sub_100068C78(v25, v23, type metadata accessor for XPCObject);
    sub_10002E2D8(v23, v9);
    v32 = v48;
    if ((*(v48 + 48))(v9, 1, v10) != 1)
    {
      sub_100068CE0(v9, v13, type metadata accessor for ServiceEventValue);
      v43 = v46;
      sub_100068C78(v13, v46, type metadata accessor for ServiceEventValue);
      (*(v32 + 56))(v43, 0, 1, v10);
      sub_10002EF60(v43, v45, v27);
      sub_100068BD0(v13, type metadata accessor for ServiceEventValue);
      sub_100068BD0(v25, type metadata accessor for XPCObject);
      return;
    }

    sub_100068BD0(v25, type metadata accessor for XPCObject);

    v29 = &qword_10009FC90;
    v30 = &qword_10007C910;
    v31 = v9;
  }

  sub_1000096C4(v31, v29, v30);
  type = xpc_get_type(a2);
  xpc_type_get_name(type);
  v34 = sub_100079F10();
  v36 = v35;
  if (qword_1000A5D30 != -1)
  {
    swift_once();
  }

  v37 = sub_100079BA0();
  sub_1000070F4(v37, qword_1000A5D38);

  v38 = sub_100079B80();
  v39 = sub_10007A170();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49 = v41;
    *v40 = 136446210;
    v42 = sub_100006B00(v34, v36, &v49);

    *(v40 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v38, v39, "skipping invalid payload value of type %{public}s", v40, 0xCu);
    sub_1000070A8(v41);
  }

  else
  {
  }
}

uint64_t sub_100068264()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000682AC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_10005EA6C(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_100068354(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_100079EE0();
    v13[0] = sub_100079F70();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_100068458(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_100049BCC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for SessionConfiguration.Backend(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100068584(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return String.subscript.getter();
}

uint64_t sub_1000685D0(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration.Backend(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v7 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v22[0] = a1;

  result = sub_100068458(v11);
  v13 = v22[0];
  v14 = *(v22[0] + 16);
  if (v14)
  {
    v15 = 0;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      sub_100068C78(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v6, type metadata accessor for SessionConfiguration.Backend);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      ++v15;
      result = sub_100068BD0(v6, type metadata accessor for SessionConfiguration.Backend);
      if (v14 == v15)
      {
        goto LABEL_6;
      }
    }

    v16 = sub_100068CE0(v6, v10, type metadata accessor for SessionConfiguration.BackendHTTP);
    result = sub_100068FFC(v16);
    v17 = result;
    v18 = *(result + 16);
    if (!v18)
    {
LABEL_12:

      sub_100068BD0(v10, type metadata accessor for SessionConfiguration.BackendHTTP);
      return 0;
    }

    v19 = 0;
    v20 = result + 32;
    while (v19 < *(v17 + 16))
    {
      sub_10001378C(v20, v22);
      sub_10000712C(&unk_10009FC80, &qword_10007E7E8);
      result = swift_dynamicCast();
      if (result)
      {

        sub_100068BD0(v10, type metadata accessor for SessionConfiguration.BackendHTTP);
        return v21;
      }

      ++v19;
      v20 += 40;
      if (v18 == v19)
      {
        goto LABEL_12;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_1000688EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

__n128 sub_100068944(uint64_t a1, uint64_t a2)
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

uint64_t sub_100068960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000689A8(uint64_t result, int a2, int a3)
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

uint64_t sub_100068A04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100068A50()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[14];

  if (v0[15])
  {

    v6 = v0[16];

    v7 = v0[17];
  }

  sub_1000070A8(v0 + 18);

  return _swift_deallocObject(v0, 184, 7);
}

unint64_t sub_100068B7C()
{
  result = qword_10009FCB0;
  if (!qword_10009FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009FCB0);
  }

  return result;
}

uint64_t sub_100068BD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100068C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100068CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100068D4C()
{
  v1 = v0;
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SessionConfiguration.Backend(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068ED4(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100068F9C(v9, type metadata accessor for SessionConfiguration.Backend);
    return 0x6C61636F6CLL;
  }

  else
  {
    sub_100068F38(v9, v5);
    v10 = *v5;
    v11 = v5[1];

    sub_100068F9C(v5, type metadata accessor for SessionConfiguration.BackendHTTP);
  }

  return v10;
}

uint64_t sub_100068ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.Backend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068F9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100069000()
{
  v1 = *(v0 + *(type metadata accessor for SessionConfiguration.BackendHTTP(0) + 32));
}

uint64_t sub_100069034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a3;
  v14 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v15 = v14[7];
  v16 = sub_1000798B0();
  result = (*(*(v16 - 8) + 32))(a8 + v15, a4, v16);
  *(a8 + v14[8]) = a5;
  *(a8 + v14[9]) = a6;
  *(a8 + v14[10]) = a7;
  return result;
}

uint64_t sub_1000690FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void sub_10006910C(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = &_swiftEmptyArrayStorage;
  *(a1 + 16) = 1;
  *(a1 + 24) = 1701736302;
  *(a1 + 32) = 0xE400000000000000;
}

uint64_t sub_100069158()
{
  result = type metadata accessor for SessionConfiguration.BackendHTTP(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000691D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000798B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100069294(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000798B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100069338()
{
  sub_1000693FC();
  if (v0 <= 0x3F)
  {
    sub_1000798B0();
    if (v1 <= 0x3F)
    {
      sub_10006944C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000693FC()
{
  if (!qword_10009FDA8)
  {
    v0 = sub_10007A030();
    if (!v1)
    {
      atomic_store(v0, &qword_10009FDA8);
    }
  }
}

void sub_10006944C()
{
  if (!qword_10009FDB0)
  {
    sub_1000072D8(&unk_10009FC80, &qword_10007E7E8);
    v0 = sub_10007A030();
    if (!v1)
    {
      atomic_store(v0, &qword_10009FDB0);
    }
  }
}

uint64_t sub_1000694C0()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6DA8);
  sub_1000070F4(v0, qword_1000A6DA8);
  return sub_100079B90();
}

unint64_t sub_10006953C(uint64_t a1, void *a2, char a3)
{
  if (!a3)
  {
    sub_10007A3B0(33);

    v6 = 0xD00000000000001FLL;
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    sub_100079F00(v9);
    return v6;
  }

  if (a3 == 1)
  {
    v6 = 0;
    sub_10007A3B0(52);
    v7._countAndFlagsBits = 0xD000000000000032;
    v7._object = 0x80000001000847B0;
    sub_100079F00(v7);
    v8._countAndFlagsBits = sub_10007A5E0();
    sub_100079F00(v8);

    return v6;
  }

  return 0xD000000000000010;
}

uint64_t sub_100069670()
{
  if (*v0)
  {
    result = 0x727574616E676973;
  }

  else
  {
    result = 1852797802;
  }

  *v0;
  return result;
}

uint64_t sub_1000696A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1852797802 && a2 == 0xE400000000000000;
  if (v5 || (sub_10007A610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10007A610();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10006978C(uint64_t a1)
{
  v2 = sub_100069998();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000697C8(uint64_t a1)
{
  v2 = sub_100069998();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100069804(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10000712C(&qword_10009FDF8, &qword_10007FD50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100069998();
  sub_10007A7C0();
  v16 = 0;
  sub_10007A5A0();
  if (!v5)
  {
    v15 = 1;
    sub_10007A5A0();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_100069998()
{
  result = qword_1000A60F8[0];
  if (!qword_1000A60F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A60F8);
  }

  return result;
}

uint64_t sub_1000699EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10006D414(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100069A3C()
{
  v1 = OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttlesByName;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100069A84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttlesByName;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100069B3C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_100069B8C(a1);
  return v5;
}

uint64_t sub_100069B8C(uint64_t a1)
{
  v4 = type metadata accessor for StorebagSigningConfiguration();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000798B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  type metadata accessor for Throttle();
  sub_100053828(a1, v15);
  if (v2)
  {
    (*(v9 + 8))(a1, v8);
    type metadata accessor for StorebagSource();
    v16 = *(*v1 + 48);
    v17 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v9 + 32))(v1 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttleCacheURL, v15, v8);
    (*(v9 + 16))(v13, a1, v8);
    sub_10000AFC4(v13, v7);
    sub_10006D644(v7, v1 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_storebagSigningConfiguration);
    v19 = sub_10006D6A8(_swiftEmptyArrayStorage);
    (*(v9 + 8))(a1, v8);
    *(v1 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttlesByName) = v19;
  }

  return v1;
}

uint64_t sub_100069E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  v5 = sub_100079E70();
  v4[46] = v5;
  v6 = *(v5 - 8);
  v4[47] = v6;
  v7 = *(v6 + 64) + 15;
  v4[48] = swift_task_alloc();
  v8 = sub_100079590();
  v4[49] = v8;
  v9 = *(v8 - 8);
  v4[50] = v9;
  v10 = *(v9 + 64) + 15;
  v4[51] = swift_task_alloc();
  v11 = sub_1000797B0();
  v4[52] = v11;
  v12 = *(v11 - 8);
  v4[53] = v12;
  v13 = *(v12 + 64) + 15;
  v4[54] = swift_task_alloc();
  v14 = *(*(sub_10000712C(&qword_10009DFB0, &qword_10007BA50) - 8) + 64) + 15;
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v15 = sub_1000798B0();
  v4[57] = v15;
  v16 = *(v15 - 8);
  v4[58] = v16;
  v17 = *(v16 + 64) + 15;
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v18 = swift_task_alloc();
  v4[61] = v18;
  *v18 = v4;
  v18[1] = sub_10006A0AC;

  return sub_10000D950();
}

uint64_t sub_10006A0AC(uint64_t a1)
{
  v3 = *(*v2 + 488);
  v4 = *v2;
  v4[62] = a1;

  if (v1)
  {
    v6 = v4[59];
    v5 = v4[60];
    v8 = v4[55];
    v7 = v4[56];
    v9 = v4[54];
    v10 = v4[51];
    v11 = v4[48];

    v12 = v4[1];

    return v12();
  }

  else
  {

    return _swift_task_switch(sub_10006A290, 0, 0);
  }
}

uint64_t sub_10006A290()
{
  v1 = *(v0 + 496);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v28 = *(v0 + 496);
    }

    if (sub_10007A4A0())
    {
      goto LABEL_3;
    }

LABEL_14:
    v29 = *(v0 + 496);

    v26 = 0x8000000100084A00;
    v27 = 0xD000000000000043;
    goto LABEL_15;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_3:
  v2 = *(**(v0 + 360) + 104);
  v3 = v2();
  if (*(v3 + 16))
  {
    v4 = sub_10000A0FC(*(v0 + 336), *(v0 + 344));
    if (v5)
    {
      goto LABEL_7;
    }
  }

  v6 = *(v0 + 480);
  v7 = *(v0 + 360);
  v9 = *(v0 + 336);
  v8 = *(v0 + 344);

  type metadata accessor for Throttle();

  sub_10007A3B0(32);

  v42._countAndFlagsBits = v9;
  v42._object = v8;
  sub_100079F00(v42);
  v43._countAndFlagsBits = 0x7473696C702ELL;
  v43._object = 0xE600000000000000;
  sub_100079F00(v43);
  sub_100079820();

  v10 = sub_100053794(v6);
  v11 = (*(*v7 + 120))(v0 + 16);
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v13;
  *v13 = 0x8000000000000000;
  sub_10006D128(v10, v9, v8, isUniquelyReferenced_nonNull_native);

  *v13 = v40;
  v16 = v11(v0 + 16, 0);
  v3 = (v2)(v16);
  if (*(v3 + 16))
  {
    v4 = sub_10000A0FC(*(v0 + 336), *(v0 + 344));
    if (v17)
    {
LABEL_7:
      v18 = *(*(v3 + 56) + 8 * v4);

      *(v0 + 504) = v18;
      v19 = *(*v18 + 160);

      v39 = (v19 + *v19);
      v20 = v19[1];
      v21 = swift_task_alloc();
      *(v0 + 512) = v21;
      *v21 = v0;
      v21[1] = sub_10006A75C;
      v22 = v39;

      return v22();
    }
  }

  v23 = *(v0 + 496);
  v25 = *(v0 + 336);
  v24 = *(v0 + 344);

  sub_10007A3B0(32);

  v44._countAndFlagsBits = v25;
  v44._object = v24;
  sub_100079F00(v44);
  v27 = 0xD00000000000001ELL;
  v26 = 0x8000000100084830;
LABEL_15:
  sub_10006D7AC();
  swift_allocError();
  *v30 = v27;
  *(v30 + 8) = v26;
  *(v30 + 16) = 0;
  swift_willThrow();
  v32 = *(v0 + 472);
  v31 = *(v0 + 480);
  v34 = *(v0 + 440);
  v33 = *(v0 + 448);
  v35 = *(v0 + 432);
  v36 = *(v0 + 408);
  v37 = *(v0 + 384);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10006A75C(char a1)
{
  v2 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 736) = a1;

  return _swift_task_switch(sub_10006A888, 0, 0);
}

uint64_t sub_10006A888()
{
  if (*(v0 + 736))
  {
    v1 = RequestOptions.globalRequestOptions.unsafeMutableAddressor();
    swift_beginAccess();
    v2 = *v1;
    v3 = objc_opt_self();

    v4 = [v3 mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v8 = *(v0 + 504);
      v9 = *(v0 + 456);
      v10 = *(v0 + 464);
      v11 = *(v0 + 440);
      v12 = *(v0 + 448);
      sub_100079E20();

      v13 = sub_10005D6C8(1, 1);
      v44 = sub_1000535B0(v13 & 0x101);
      *(v0 + 520) = v44;

      sub_100079880();

      sub_10006D800(v12, v11);
      v6 = (*(v10 + 48))(v11, 1, v9);
      if (v6 != 1)
      {
        v14 = *(v0 + 464);
        v15 = *(v0 + 472);
        v45 = *(v0 + 456);
        v17 = *(v0 + 432);
        v16 = *(v0 + 440);
        v19 = *(v0 + 416);
        v18 = *(v0 + 424);
        v21 = *(v0 + 336);
        v20 = *(v0 + 344);
        sub_10000712C(&qword_10009E278, &qword_10007CCF0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_10007B7D0;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        v24 = 0x80000001000849E0;
        v25 = 0x67616265726F7473;
        if (has_internal_diagnostics)
        {
          v25 = 0xD000000000000011;
        }

        else
        {
          v24 = 0xE800000000000000;
        }

        *(v22 + 32) = v25;
        *(v22 + 40) = v24;
        *(v22 + 48) = v21;
        *(v22 + 56) = v20;
        (*(v18 + 104))(v17, enum case for URL.DirectoryHint.notDirectory(_:), v19);
        sub_100025EBC();

        sub_100079890();

        (*(v18 + 8))(v17, v19);
        v26 = *(v14 + 8);
        *(v0 + 528) = v26;
        *(v0 + 536) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v26(v16, v45);
        v6 = [objc_opt_self() sharedManager];
        *(v0 + 544) = v6;
        if (v6)
        {
          v27 = *(v0 + 408);
          (*(*(v0 + 464) + 16))(*(v0 + 480), *(v0 + 472), *(v0 + 456));
          sub_100079550();
          v28 = async function pointer to C2RequestManager.data(for:options:)[1];
          v29 = swift_task_alloc();
          *(v0 + 552) = v29;
          *v29 = v0;
          v29[1] = sub_10006AD80;
          v6 = *(v0 + 408);
          v7 = v44;

          return C2RequestManager.data(for:options:)(v6, v7);
        }

LABEL_16:
        __break(1u);
        return C2RequestManager.data(for:options:)(v6, v7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v31 = *(v0 + 496);
  v30 = *(v0 + 504);
  v33 = *(v0 + 336);
  v32 = *(v0 + 344);

  sub_10007A3B0(31);

  v47._countAndFlagsBits = v33;
  v47._object = v32;
  sub_100079F00(v47);
  sub_10006D7AC();
  swift_allocError();
  *v34 = 0xD00000000000001DLL;
  *(v34 + 8) = 0x8000000100084850;
  *(v34 + 16) = 0;
  swift_willThrow();

  v36 = *(v0 + 472);
  v35 = *(v0 + 480);
  v38 = *(v0 + 440);
  v37 = *(v0 + 448);
  v39 = *(v0 + 432);
  v40 = *(v0 + 408);
  v41 = *(v0 + 384);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_10006AD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 552);
  v8 = *v4;
  v6[70] = a1;
  v6[71] = a2;
  v6[72] = a3;
  v6[73] = v3;

  v9 = v5[68];
  if (v3)
  {
    v10 = v6[62];
    (*(v6[50] + 8))(v6[51], v6[49]);

    v11 = sub_10006C95C;
  }

  else
  {
    (*(v6[50] + 8))(v6[51], v6[49]);

    v11 = sub_10006AF3C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10006AF3C()
{
  v1 = *(v0 + 576);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 576);
    v5 = [v3 statusCode];
    v6 = *(v0 + 576);
    if (v5 <= 199)
    {
      v7 = *(v0 + 496);

LABEL_10:

      v45 = *(v0 + 576);
      v46 = *(v0 + 568);
      v47 = *(v0 + 560);
      v48 = *(v0 + 528);
      v49 = *(v0 + 520);
      v50 = *(v0 + 472);
      v51 = *(v0 + 448);
      v52 = *(v0 + 456);
      v212 = v51;
      v218 = *(v0 + 536);
      v53 = [v3 statusCode];
      sub_10006D7AC();
      v23 = swift_allocError();
      *v54 = v53;
      *(v54 + 8) = 0;
      *(v54 + 16) = 1;
      swift_willThrow();

      v22 = v0;
      sub_1000071DC(v47, v46);

      v48(v50, v52);
      v25 = v212;
      goto LABEL_14;
    }

    v8 = [v3 statusCode];

    if (v8 >= 300)
    {
      v44 = *(v0 + 496);
      goto LABEL_10;
    }
  }

  v9 = *(v0 + 584);
  v10 = *(v0 + 568);
  v11 = *(v0 + 560);
  v12 = sub_1000795C0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1000795B0();
  sub_10006D870();
  sub_1000795A0();
  if (v9)
  {
    v15 = *(v0 + 568);
    v16 = *(v0 + 560);
    v209 = *(v0 + 528);
    v215 = *(v0 + 536);
    v17 = *(v0 + 520);
    v18 = *(v0 + 496);
    v197 = *(v0 + 472);
    v203 = *(v0 + 576);
    v19 = *(v0 + 456);
    v206 = *(v0 + 448);
    v20 = *(v0 + 336);
    v21 = *(v0 + 344);

    sub_10007A3B0(59);
    v22 = v0;
    v220._object = 0x80000001000848A0;
    v220._countAndFlagsBits = 0xD000000000000019;
    sub_100079F00(v220);
    v221._countAndFlagsBits = v20;
    v221._object = v21;
    sub_100079F00(v221);
    v222._countAndFlagsBits = 0xD000000000000020;
    v222._object = 0x80000001000848C0;
    sub_100079F00(v222);
    sub_10006D7AC();
    v23 = swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0xE000000000000000;
    *(v24 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v16, v15);

    v209(v197, v19);
    v25 = v206;
    goto LABEL_14;
  }

  v26 = *(v0 + 48);
  v27 = *(v0 + 56);
  v28 = *(v0 + 64);
  v29 = *(v0 + 72);
  v30 = sub_1000798E0();
  v32 = v31;
  v210 = v30;
  *(v0 + 592) = v30;
  *(v0 + 600) = v31;
  v33 = sub_1000798E0();
  v35 = v34;

  *(v0 + 608) = v33;
  *(v0 + 616) = v35;
  v216 = v32;
  if (v32 >> 60 == 15)
  {
    v36 = *(v0 + 568);
    v37 = *(v0 + 560);
    v211 = *(v0 + 528);
    v217 = *(v0 + 536);
    v38 = v35;
    v39 = *(v0 + 520);
    v40 = *(v0 + 496);
    v186 = *(v0 + 472);
    v192 = *(v0 + 576);
    v181 = *(v0 + 456);
    v198 = *(v0 + 448);
    v42 = *(v0 + 336);
    v41 = *(v0 + 344);

    sub_10007A3B0(55);
    v22 = v0;
    v223._object = 0x80000001000848A0;
    v223._countAndFlagsBits = 0xD000000000000019;
    sub_100079F00(v223);
    v224._countAndFlagsBits = v42;
    v224._object = v41;
    sub_100079F00(v224);
    v225._countAndFlagsBits = 0xD00000000000001CLL;
    v225._object = 0x80000001000848F0;
    sub_100079F00(v225);
    sub_10006D7AC();
    v23 = swift_allocError();
    *v43 = 0;
    *(v43 + 8) = 0xE000000000000000;
    *(v43 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v37, v36);

    sub_1000071C8(v33, v38);
    v211(v186, v181);
LABEL_13:
    v25 = v198;
    goto LABEL_14;
  }

  if (v35 >> 60 == 15)
  {
    v55 = *(v0 + 568);
    v56 = *(v0 + 560);
    v204 = *(v0 + 528);
    v207 = *(v0 + 536);
    v57 = *(v0 + 520);
    v58 = *(v0 + 496);
    v59 = *(v0 + 472);
    v60 = *(v0 + 456);
    v193 = *(v0 + 576);
    v198 = *(v0 + 448);
    v62 = *(v0 + 336);
    v61 = *(v0 + 344);

    sub_10007A3B0(66);
    v22 = v0;
    v226._object = 0x80000001000848A0;
    v226._countAndFlagsBits = 0xD000000000000019;
    sub_100079F00(v226);
    v227._countAndFlagsBits = v62;
    v227._object = v61;
    sub_100079F00(v227);
    v228._countAndFlagsBits = 0xD000000000000027;
    v228._object = 0x8000000100084910;
    sub_100079F00(v228);
    sub_10006D7AC();
    v23 = swift_allocError();
    *v63 = 0;
    *(v63 + 8) = 0xE000000000000000;
    *(v63 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v56, v55);

    sub_1000071C8(v210, v216);
    v204(v59, v60);
    goto LABEL_13;
  }

  v69 = *(v0 + 496);
  v205 = v35;
  v208 = v33;
  v199 = v69 & 0xFFFFFFFFFFFFFF8;
  if (v69 >> 62)
  {
    v70 = sub_10007A4A0();
    v69 = *(v0 + 496);
  }

  else
  {
    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = 0;
  v72 = v69 & 0xC000000000000001;
  v73 = v69 + 32;
  do
  {
    if (v70 == v71)
    {
      v80 = *(v0 + 576);
      v81 = *(v0 + 568);
      v82 = *(v0 + 560);
      v194 = *(v0 + 528);
      v200 = *(v0 + 536);
      v83 = *(v0 + 520);
      v84 = *(v0 + 496);
      v85 = *(v0 + 456);
      v182 = *(v0 + 472);
      v187 = *(v0 + 448);
      v87 = *(v0 + 336);
      v86 = *(v0 + 344);

      sub_10007A3B0(55);
      v22 = v0;
      v229._object = 0x80000001000848A0;
      v229._countAndFlagsBits = 0xD000000000000019;
      sub_100079F00(v229);
      v230._countAndFlagsBits = v87;
      v230._object = v86;
      sub_100079F00(v230);
      v231._countAndFlagsBits = 0xD00000000000001CLL;
      v231._object = 0x80000001000849C0;
      sub_100079F00(v231);
      sub_10006D7AC();
      v23 = swift_allocError();
      *v88 = 0;
      *(v88 + 8) = 0xE000000000000000;
      *(v88 + 16) = 0;
      swift_willThrow();
      sub_1000071DC(v82, v81);

      sub_1000071C8(v208, v205);
      sub_1000071C8(v210, v216);

      v194(v182, v85);
      v25 = v187;
      goto LABEL_14;
    }

    if (v72)
    {
      v79 = *(v0 + 496);
      v74 = sub_10007A3D0();
    }

    else
    {
      if (v71 >= *(v199 + 16))
      {
        goto LABEL_46;
      }

      v74 = *(v73 + 8 * v71);
    }

    v75 = v74;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v162 = **(v0 + 504);
      v214 = (*(v162 + 152) + **(v162 + 152));
      v163 = *(*(v162 + 152) + 4);
      v164 = swift_task_alloc();
      *(v0 + 712) = v164;
      *v164 = v0;
      v164[1] = sub_10006C338;
      v165 = *(v0 + 504);
      v68 = v214;

      return v68();
    }

    isa = sub_100079910().super.isa;
    v77 = sub_100079910().super.isa;
    v78 = SecKeyVerifySignature(v75, kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA256, isa, v77, 0);

    ++v71;
  }

  while (!v78);
  v89 = *(v0 + 496);

  v90 = objc_opt_self();
  v91 = sub_100079910().super.isa;
  v92 = [v90 gzipDecode:v91];

  if (!v92)
  {
    v119 = *(v0 + 568);
    v120 = *(v0 + 560);
    v184 = *(v0 + 576);
    v188 = *(v0 + 528);
    v121 = *(v0 + 520);
    v176 = *(v0 + 456);
    v179 = *(v0 + 472);
    v196 = *(v0 + 448);
    v202 = *(v0 + 536);
    v123 = *(v0 + 336);
    v122 = *(v0 + 344);
    sub_10007A3B0(55);
    v22 = v0;
    v232._object = 0x80000001000848A0;
    v232._countAndFlagsBits = 0xD000000000000019;
    sub_100079F00(v232);
    v233._countAndFlagsBits = v123;
    v233._object = v122;
    sub_100079F00(v233);
    v234._countAndFlagsBits = 0xD00000000000001CLL;
    v234._object = 0x8000000100084940;
    sub_100079F00(v234);
    sub_10006D7AC();
    v23 = swift_allocError();
    *v124 = 0;
    *(v124 + 8) = 0xE000000000000000;
    *(v124 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v120, v119);

    sub_1000071C8(v208, v205);
    sub_1000071C8(v210, v216);

    v188(v179, v176);
    v25 = v196;
    goto LABEL_14;
  }

  v93 = sub_100079930();
  v95 = v94;

  *(v0 + 624) = v93;
  *(v0 + 632) = v95;
  v96 = objc_opt_self();
  v97 = sub_100079910().super.isa;
  *(v0 + 296) = 0;
  v98 = [v96 JSONObjectWithData:v97 options:0 error:v0 + 296];

  v99 = *(v0 + 296);
  v195 = v93;
  v201 = v95;
  if (!v98)
  {
    v125 = v99;
    sub_1000797A0();

    swift_willThrow();

    goto LABEL_38;
  }

  v100 = v99;
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_10006D8C4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    v126 = *(v0 + 568);
    v127 = *(v0 + 560);
    v177 = *(v0 + 576);
    v180 = *(v0 + 528);
    v128 = *(v0 + 520);
    v171 = *(v0 + 456);
    v173 = *(v0 + 472);
    v185 = *(v0 + 448);
    v189 = *(v0 + 536);
    v130 = *(v0 + 336);
    v129 = *(v0 + 344);
    sub_10007A3B0(49);

    v22 = v0;
    v235._countAndFlagsBits = v130;
    v235._object = v129;
    sub_100079F00(v235);
    v236._countAndFlagsBits = 0xD000000000000016;
    v236._object = 0x8000000100084960;
    sub_100079F00(v236);
    sub_10006D7AC();
    v23 = swift_allocError();
    *v131 = 0xD000000000000019;
    *(v131 + 8) = 0x80000001000848A0;
    *(v131 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v127, v126);

    sub_1000071C8(v208, v205);
    sub_1000071C8(v210, v216);
    sub_1000071DC(v93, v95);
LABEL_39:

    v180(v173, v171);
    v25 = v185;
    goto LABEL_14;
  }

  v101 = *(v0 + 304);
  *(v0 + 640) = v101;
  v102 = objc_opt_self();
  *(v0 + 312) = 0;
  v103 = v101;
  v104 = [v102 dataWithPropertyList:v103 format:100 options:0 error:v0 + 312];
  v105 = *(v0 + 312);
  if (!v104)
  {
    v132 = v105;
    v133 = *(v0 + 568);
    v134 = *(v0 + 560);
    v177 = *(v0 + 576);
    v180 = *(v0 + 528);
    v173 = *(v0 + 472);
    v169 = *(v0 + 520);
    v171 = *(v0 + 456);
    v185 = *(v0 + 448);
    v190 = *(v0 + 536);
    v136 = *(v0 + 336);
    v135 = *(v0 + 344);
    sub_1000797A0();

    swift_willThrow();

    sub_10007A3B0(57);
    v237._object = 0x80000001000848A0;
    v237._countAndFlagsBits = 0xD000000000000019;
    sub_100079F00(v237);
    v238._countAndFlagsBits = v136;
    v238._object = v135;
    sub_100079F00(v238);
    v239._countAndFlagsBits = 0xD00000000000001ELL;
    v239._object = 0x8000000100084980;
    sub_100079F00(v239);
    sub_10006D7AC();
    v23 = swift_allocError();
    *v137 = 0;
    *(v137 + 8) = 0xE000000000000000;
    *(v137 + 16) = 0;
    swift_willThrow();
    v138 = v134;
    v22 = v0;
    sub_1000071DC(v138, v133);

    sub_1000071C8(v208, v205);
    sub_1000071C8(v210, v216);
    sub_1000071DC(v195, v201);

    goto LABEL_39;
  }

  v183 = v103;
  v106 = *(v0 + 376);
  v107 = *(v0 + 384);
  v108 = *(v0 + 368);
  v109 = sub_100079930();
  v111 = v110;

  *(v0 + 648) = v109;
  *(v0 + 656) = v111;
  v175 = v109;
  v178 = v111;
  v112 = sub_100079920(0);
  *(v0 + 136) = &type metadata for String;
  *(v0 + 112) = v112;
  *(v0 + 120) = v113;
  sub_100032BD8((v0 + 112), (v0 + 144));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100054B6C((v0 + 144), 6775138, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  *(v0 + 320) = &_swiftEmptyDictionarySingleton;
  sub_100079E60();
  v115 = sub_100079E30();
  v117 = v116;
  (*(v106 + 8))(v107, v108);
  if (v117 >> 60 == 15)
  {
    sub_10006CC2C(0x727574616E676973, 0xE900000000000065, (v0 + 208));
    sub_1000096C4(v0 + 208, &qword_10009F0C0, &qword_10007E3A0);
    v118 = *(v0 + 320);
  }

  else
  {
    v139 = sub_100079920(0);
    v141 = v140;
    sub_1000071C8(v115, v117);
    *(v0 + 200) = &type metadata for String;
    *(v0 + 176) = v139;
    *(v0 + 184) = v141;
    sub_100032BD8((v0 + 176), (v0 + 240));
    v142 = *(v0 + 320);
    v143 = swift_isUniquelyReferenced_nonNull_native();
    sub_100054B6C((v0 + 240), 0x727574616E676973, 0xE900000000000065, v143);
    *(v0 + 320) = v142;
  }

  v144 = sub_100079D30().super.isa;

  *(v0 + 328) = 0;
  v145 = [v102 dataWithPropertyList:v144 format:100 options:0 error:v0 + 328];

  v146 = *(v0 + 328);
  if (v145)
  {
    v147 = sub_100079930();
    v149 = v148;

    *(v0 + 664) = v147;
    *(v0 + 672) = v149;
    *(v0 + 680) = sub_1000260E0(v147, v149);
    *(v0 + 688) = v150;
    *(v0 + 696) = v151;
    *(v0 + 704) = v152;
    v161 = *(v0 + 352);
    sub_1000262AC();
    goto LABEL_47;
  }

  v153 = *(v0 + 568);
  v154 = *(v0 + 560);
  v191 = *(v0 + 536);
  v170 = *(v0 + 576);
  v172 = *(v0 + 528);
  v155 = *(v0 + 520);
  v167 = *(v0 + 456);
  v168 = *(v0 + 472);
  v174 = *(v0 + 448);
  v157 = *(v0 + 336);
  v156 = *(v0 + 344);
  v158 = v146;
  sub_1000797A0();

  swift_willThrow();

  sub_10007A3B0(57);
  v240._object = 0x80000001000848A0;
  v240._countAndFlagsBits = 0xD000000000000019;
  sub_100079F00(v240);
  v241._countAndFlagsBits = v157;
  v241._object = v156;
  sub_100079F00(v241);
  v242._countAndFlagsBits = 0xD00000000000001ELL;
  v242._object = 0x80000001000849A0;
  sub_100079F00(v242);
  sub_10006D7AC();
  v23 = swift_allocError();
  *v159 = 0;
  *(v159 + 8) = 0xE000000000000000;
  *(v159 + 16) = 0;
  swift_willThrow();
  v160 = v154;
  v22 = v0;
  sub_1000071DC(v160, v153);

  sub_1000071C8(v208, v205);
  sub_1000071C8(v210, v216);
  sub_1000071DC(v195, v201);
  sub_1000071DC(v175, v178);

  v172(v168, v167);
  v25 = v174;
LABEL_14:
  sub_1000096C4(v25, &qword_10009DFB0, &qword_10007BA50);
  *(v22 + 720) = v23;
  v64 = **(v22 + 504);
  v213 = (*(v64 + 168) + **(v64 + 168));
  v65 = *(*(v64 + 168) + 4);
  v66 = swift_task_alloc();
  *(v22 + 728) = v66;
  *v66 = v22;
  v66[1] = sub_10006C738;
  v67 = *(v22 + 504);
  v68 = v213;

  return v68();
}

uint64_t sub_10006C338()
{
  v1 = *(*v0 + 712);
  v3 = *v0;

  return _swift_task_switch(sub_10006C460, 0, 0);
}

uint64_t sub_10006C460()
{
  if (qword_1000A60F0 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A6DA8);
  v2 = sub_100079B80();
  v3 = sub_10007A190();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "sucessfully fetched storebag from server", v4, 2u);
  }

  v19 = v0[86];
  v20 = v0[87];
  v22 = v0[88];
  v23 = v0[84];
  v21 = v0[83];
  v25 = v2;
  v26 = v0[82];
  v24 = v0[81];
  v5 = v0[80];
  v17 = v0[79];
  v18 = v0[85];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[74];
  v11 = v0[71];
  v12 = v0[70];
  v32 = v0[67];
  v30 = v0[72];
  v31 = v0[66];
  v13 = v0[65];
  v14 = v0[63];
  v33 = v0[60];
  v27 = v0[59];
  v28 = v0[57];
  v29 = v0[56];
  v34 = v0[55];
  v35 = v0[54];
  v36 = v0[51];
  v37 = v0[48];

  sub_1000071DC(v12, v11);

  sub_1000071C8(v8, v7);
  sub_1000071C8(v10, v9);
  sub_1000071DC(v6, v17);
  sub_1000071DC(v18, v19);
  sub_1000071DC(v20, v22);
  sub_1000071DC(v21, v23);
  sub_1000071DC(v24, v26);

  v31(v27, v28);
  sub_1000096C4(v29, &qword_10009DFB0, &qword_10007BA50);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10006C738()
{
  v1 = *(*v0 + 728);
  v3 = *v0;

  return _swift_task_switch(sub_10006C860, 0, 0);
}

uint64_t sub_10006C860()
{
  v1 = v0[90];
  v2 = v0[63];
  swift_willThrow();

  v3 = v0[90];
  v5 = v0[59];
  v4 = v0[60];
  v7 = v0[55];
  v6 = v0[56];
  v8 = v0[54];
  v9 = v0[51];
  v10 = v0[48];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10006C95C()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 472);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);

  v2(v3, v4);
  sub_1000096C4(v5, &qword_10009DFB0, &qword_10007BA50);
  *(v0 + 720) = *(v0 + 584);
  v6 = **(v0 + 504);
  v11 = (*(v6 + 168) + **(v6 + 168));
  v7 = *(*(v6 + 168) + 4);
  v8 = swift_task_alloc();
  *(v0 + 728) = v8;
  *v8 = v0;
  v8[1] = sub_10006C738;
  v9 = *(v0 + 504);

  return v11();
}

uint64_t StorebagSource.deinit()
{
  v1 = OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttleCacheURL;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10006D910(v0 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_storebagSigningConfiguration);
  v3 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttlesByName);

  return v0;
}

uint64_t StorebagSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttleCacheURL;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10006D910(v0 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_storebagSigningConfiguration);
  v3 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttlesByName);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_10006CC2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10000A0FC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100054D28();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100032BD8((*(v12 + 56) + 32 * v9), a3);
    sub_10006CF78(v9, v12);
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

uint64_t sub_10006CCD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000712C(&qword_10009FEE8, &qword_100080020);
  v38 = a2;
  result = sub_10007A4C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10006CF78(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007A2F0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_10007A730();

      sub_100079EC0();
      v14 = sub_10007A760();

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

uint64_t sub_10006D128(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A0FC(a2, a3);
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
      sub_10006CCD0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000A0FC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_10007A6C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10006D2A4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_10006D2A4()
{
  v1 = v0;
  sub_10000712C(&qword_10009FEE8, &qword_100080020);
  v2 = *v0;
  v3 = sub_10007A4B0();
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

uint64_t sub_10006D414(uint64_t *a1)
{
  v3 = sub_10000712C(&qword_10009FEF0, &qword_100080028);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100069998();
  sub_10007A790();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_10007A550();
    v11 = 1;
    sub_10007A550();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000070A8(a1);
  return v8;
}

uint64_t type metadata accessor for StorebagSource()
{
  result = qword_1000A6300;
  if (!qword_1000A6300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006D644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorebagSigningConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006D6A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009FEE8, &qword_100080020);
    v3 = sub_10007A4D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000A0FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_10006D7AC()
{
  result = qword_10009FE00;
  if (!qword_10009FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009FE00);
  }

  return result;
}

uint64_t sub_10006D800(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006D870()
{
  result = qword_10009FE08;
  if (!qword_10009FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009FE08);
  }

  return result;
}

unint64_t sub_10006D8C4()
{
  result = qword_10009FE10;
  if (!qword_10009FE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009FE10);
  }

  return result;
}

uint64_t sub_10006D910(uint64_t a1)
{
  v2 = type metadata accessor for StorebagSigningConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006D978()
{
  result = sub_1000798B0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for StorebagSigningConfiguration();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10006DA50(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10006DA6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10006DAB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_10006DAF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10006DB44()
{
  result = qword_1000A6410[0];
  if (!qword_1000A6410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A6410);
  }

  return result;
}

unint64_t sub_10006DB9C()
{
  result = qword_1000A6520;
  if (!qword_1000A6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6520);
  }

  return result;
}

unint64_t sub_10006DBF4()
{
  result = qword_1000A6528[0];
  if (!qword_1000A6528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A6528);
  }

  return result;
}

uint64_t sub_10006DC48()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6DD8);
  sub_1000070F4(v0, qword_1000A6DD8);
  return sub_100079B90();
}

uint64_t sub_10006DCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return _swift_task_switch(sub_10006DCF0, v3, 0);
}

uint64_t sub_10006DCF0()
{
  v1 = *(**(v0[18] + 112) + 232);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_10006DE18;
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];

  return (v8)(v0 + 2, v6, v4, v5);
}

uint64_t sub_10006DE18()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(**(v2 + 144) + 128);
    v14 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v2 + 160) = v9;
    *v9 = v4;
    v9[1] = sub_10006E018;
    v10 = *(v2 + 136);
    v11 = *(v2 + 144);
    v12 = *(v2 + 120);
    v13 = *(v2 + 128);

    return v14(v2 + 16, v12, v13, v10);
  }
}

uint64_t sub_10006E018(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 160);
  v8 = *v3;
  v6[21] = v2;

  v9 = v6[18];
  if (v2)
  {
    v10 = sub_10006E208;
  }

  else
  {
    v6[22] = a2;
    v6[23] = a1;
    v10 = sub_10006E158;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10006E158()
{
  *(v0 + 104) = *(v0 + 16);
  sub_1000096C4(v0 + 104, &qword_10009FEF8, &qword_100080038);
  *(v0 + 112) = *(v0 + 24);
  sub_1000096C4(v0 + 112, &qword_10009FEF8, &qword_100080038);
  *(v0 + 72) = *(v0 + 40);
  sub_10002A4B4(v0 + 72);
  v1 = *(v0 + 8);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1(v2, v3);
}

uint64_t sub_10006E208()
{
  *(v0 + 88) = *(v0 + 16);
  sub_1000096C4(v0 + 88, &qword_10009FEF8, &qword_100080038);
  *(v0 + 96) = *(v0 + 24);
  sub_1000096C4(v0 + 96, &qword_10009FEF8, &qword_100080038);
  *(v0 + 56) = *(v0 + 40);
  sub_10002A4B4(v0 + 56);
  v1 = *(v0 + 168);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v5[31] = v6;
  v7 = *(v6 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return _swift_task_switch(sub_10006E384, v4, 0);
}

uint64_t sub_10006E384()
{
  v1 = *(v0 + 208);
  v2 = *v1;
  *(v0 + 272) = *v1;
  v3 = *(v2 + 16);
  *(v0 + 280) = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(v0 + 264);
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      v9 = *(v0 + 216);
      *(v0 + 192) = v8;
      *(v0 + 200) = v7;
      v10 = sub_100019E90((v0 + 168));
      (*(*(v8 - 8) + 16))(v10, v9, v8);
      sub_100070DF0(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, type metadata accessor for SessionConfiguration.Backend);
      (*(v7 + 8))(v8, v7);
      v11 = *(*v6 + 152);
      v33 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 288) = v13;
      *v13 = v0;
      v13[1] = sub_10006E754;
      v14 = *(v0 + 240);
      v15 = v0 + 72;
    }

    else
    {
      v20 = *(v0 + 248);
      v21 = sub_100052E34(0, v3, 0, _swiftEmptyArrayStorage);
      v22 = *(v20 + 80);
      *(v0 + 376) = v22;
      v23 = *(v20 + 72);
      *(v0 + 328) = v21;
      *(v0 + 336) = 0;
      *(v0 + 320) = v23;
      v24 = *(v0 + 232);
      v25 = *(v0 + 240);
      v26 = *(v0 + 216);
      v27 = *(v0 + 224);
      sub_100070DF0(*(v0 + 272) + ((v22 + 32) & ~v22), *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
      *(v0 + 152) = v27;
      *(v0 + 160) = v24;
      v28 = sub_100019E90((v0 + 128));
      (*(*(v27 - 8) + 16))(v28, v26, v27);
      (*(v24 + 8))(v27, v24);
      v29 = *(*v25 + 152);
      v33 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      *(v0 + 344) = v31;
      *v31 = v0;
      v31[1] = sub_10006E99C;
      v32 = *(v0 + 240);
      v15 = v0 + 16;
    }

    return v33(v15);
  }

  else
  {
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);

    v18 = *(v0 + 8);

    return v18(0, 0);
  }
}

uint64_t sub_10006E754(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 288);
  v11 = *v3;
  *(*v3 + 296) = v2;

  if (v2)
  {
    v8 = v6[30];
    sub_100068F9C(v6[33], type metadata accessor for SessionConfiguration.Backend);
    sub_100019EF4((v6 + 9));
    v9 = sub_10006EE14;
  }

  else
  {
    v8 = v6[30];
    v6[38] = a2;
    v6[39] = a1;
    sub_100019EF4((v6 + 9));
    v9 = sub_10006E8B0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10006E8B0()
{
  v1 = *(v0 + 264);
  v2 = (*(**(v0 + 240) + 144))(v0 + 168, v1, *(v0 + 312), *(v0 + 304));
  v4 = v3;

  sub_100068F9C(v1, type metadata accessor for SessionConfiguration.Backend);
  sub_1000070A8((v0 + 168));
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  v7 = *(v0 + 8);

  return v7(v2, v4);
}

uint64_t sub_10006E99C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 344);
  v8 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v9 = v6[41];
    v10 = v6[30];
    sub_100019EF4((v6 + 2));

    v11 = sub_10006EE88;
    v12 = v10;
  }

  else
  {
    v13 = v6[30];
    v6[45] = a2;
    v6[46] = a1;
    sub_100019EF4((v6 + 2));
    v11 = sub_10006EB00;
    v12 = v13;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10006EB00()
{
  v1 = *(v0 + 328);
  v2 = (*(**(v0 + 240) + 144))(v0 + 128, *(v0 + 256), *(v0 + 368), *(v0 + 360));
  v4 = v3;

  sub_1000070A8((v0 + 128));
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v0 + 328);
  if (v6 >= v5 >> 1)
  {
    v7 = sub_100052E34((v5 > 1), v6 + 1, 1, *(v0 + 328));
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 336) + 1;
  sub_100068F9C(*(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
  v7[2] = v6 + 1;
  v10 = &v7[2 * v6];
  v10[4] = v2;
  v10[5] = v4;
  if (v9 == v8)
  {
    type metadata accessor for BackendGroup();
    v11 = sub_1000514C8(v7);
    v13 = *(v0 + 256);
    v12 = *(v0 + 264);

    v14 = *(v0 + 8);

    return v14(v11, &off_1000981E8);
  }

  else
  {
    v16 = *(v0 + 336) + 1;
    *(v0 + 328) = v7;
    *(v0 + 336) = v16;
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);
    v19 = *(v0 + 216);
    v20 = *(v0 + 224);
    sub_100070DF0(*(v0 + 272) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 320) * v16, *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
    *(v0 + 152) = v20;
    *(v0 + 160) = v17;
    v21 = sub_100019E90((v0 + 128));
    (*(*(v20 - 8) + 16))(v21, v19, v20);
    (*(v17 + 8))(v20, v17);
    v22 = *(*v18 + 152);
    v26 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 344) = v24;
    *v24 = v0;
    v24[1] = sub_10006E99C;
    v25 = *(v0 + 240);

    return v26(v0 + 16);
  }
}

uint64_t sub_10006EE14()
{
  sub_1000070A8(v0 + 21);
  v1 = v0[37];
  v3 = v0[32];
  v2 = v0[33];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006EE88()
{
  sub_100068F9C(v0[32], type metadata accessor for SessionConfiguration.Backend);
  sub_1000070A8(v0 + 16);
  v1 = v0[44];
  v3 = v0[32];
  v2 = v0[33];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006EF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v5[31] = v6;
  v7 = *(v6 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return _swift_task_switch(sub_10006EFE8, v4, 0);
}

uint64_t sub_10006EFE8()
{
  v1 = *(v0 + 208);
  v2 = v1[1];
  *(v0 + 272) = v2;
  v3 = *(v2 + 16);
  *(v0 + 280) = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(v0 + 264);
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      v9 = *(v0 + 216);
      *(v0 + 192) = v8;
      *(v0 + 200) = v7;
      v10 = sub_100019E90((v0 + 168));
      (*(*(v8 - 8) + 16))(v10, v9, v8);
      sub_100070DF0(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, type metadata accessor for SessionConfiguration.Backend);
      (*(v7 + 8))(v8, v7);
      v11 = *(*v6 + 152);
      v33 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 288) = v13;
      *v13 = v0;
      v13[1] = sub_10006F3C0;
      v14 = *(v0 + 240);
      v15 = v0 + 72;
    }

    else
    {
      v20 = *(v0 + 248);
      v21 = sub_100052E34(0, *(*v1 + 16), 0, _swiftEmptyArrayStorage);
      v22 = *(v20 + 80);
      *(v0 + 376) = v22;
      v23 = *(v20 + 72);
      *(v0 + 328) = v21;
      *(v0 + 336) = 0;
      *(v0 + 320) = v23;
      v24 = *(v0 + 232);
      v25 = *(v0 + 240);
      v26 = *(v0 + 216);
      v27 = *(v0 + 224);
      sub_100070DF0(*(v0 + 272) + ((v22 + 32) & ~v22), *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
      *(v0 + 152) = v27;
      *(v0 + 160) = v24;
      v28 = sub_100019E90((v0 + 128));
      (*(*(v27 - 8) + 16))(v28, v26, v27);
      (*(v24 + 8))(v27, v24);
      v29 = *(*v25 + 152);
      v33 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      *(v0 + 344) = v31;
      *v31 = v0;
      v31[1] = sub_10006F51C;
      v32 = *(v0 + 240);
      v15 = v0 + 16;
    }

    return v33(v15);
  }

  else
  {
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);

    v18 = *(v0 + 8);

    return v18(0, 0);
  }
}

uint64_t sub_10006F3C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 288);
  v11 = *v3;
  *(*v3 + 296) = v2;

  if (v2)
  {
    v8 = v6[30];
    sub_100068F9C(v6[33], type metadata accessor for SessionConfiguration.Backend);
    sub_100019EF4((v6 + 9));
    v9 = sub_100070ED8;
  }

  else
  {
    v8 = v6[30];
    v6[38] = a2;
    v6[39] = a1;
    sub_100019EF4((v6 + 9));
    v9 = sub_100070ED0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10006F51C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 344);
  v8 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v9 = v6[41];
    v10 = v6[30];
    sub_100019EF4((v6 + 2));

    v11 = sub_100070ED4;
    v12 = v10;
  }

  else
  {
    v13 = v6[30];
    v6[45] = a2;
    v6[46] = a1;
    sub_100019EF4((v6 + 2));
    v11 = sub_10006F680;
    v12 = v13;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10006F680()
{
  v1 = *(v0 + 328);
  v2 = (*(**(v0 + 240) + 144))(v0 + 128, *(v0 + 256), *(v0 + 368), *(v0 + 360));
  v4 = v3;

  sub_1000070A8((v0 + 128));
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v0 + 328);
  if (v6 >= v5 >> 1)
  {
    v7 = sub_100052E34((v5 > 1), v6 + 1, 1, *(v0 + 328));
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 336) + 1;
  sub_100068F9C(*(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
  v7[2] = v6 + 1;
  v10 = &v7[2 * v6];
  v10[4] = v2;
  v10[5] = v4;
  if (v9 == v8)
  {
    type metadata accessor for BackendGroup();
    v11 = sub_1000514C8(v7);
    v13 = *(v0 + 256);
    v12 = *(v0 + 264);

    v14 = *(v0 + 8);

    return v14(v11, &off_1000981E8);
  }

  else
  {
    v16 = *(v0 + 336) + 1;
    *(v0 + 328) = v7;
    *(v0 + 336) = v16;
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);
    v19 = *(v0 + 216);
    v20 = *(v0 + 224);
    sub_100070DF0(*(v0 + 272) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 320) * v16, *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
    *(v0 + 152) = v20;
    *(v0 + 160) = v17;
    v21 = sub_100019E90((v0 + 128));
    (*(*(v20 - 8) + 16))(v21, v19, v20);
    (*(v17 + 8))(v20, v17);
    v22 = *(*v18 + 152);
    v26 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 344) = v24;
    *v24 = v0;
    v24[1] = sub_10006F51C;
    v25 = *(v0 + 240);

    return v26(v0 + 16);
  }
}

uint64_t sub_10006F994(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = type metadata accessor for SessionConfiguration.Backend(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100070DF0(a2, v19, type metadata accessor for SessionConfiguration.Backend);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    type metadata accessor for BackendLocal();
    sub_10001378C(a1, v42);
    return sub_100029FA0(v21, v22, v42);
  }

  else
  {
    sub_100068F38(v19, v15);
    v40 = type metadata accessor for BackendHTTP();
    v38 = *(v4 + 128);
    sub_10001378C(a1, v41);
    v39 = type metadata accessor for SessionConfiguration.BackendHTTP;
    sub_100070DF0(v15, v13, type metadata accessor for SessionConfiguration.BackendHTTP);

    v24 = RequestOptions.globalRequestOptions.unsafeMutableAddressor();
    swift_beginAccess();
    v25 = *v24;
    v37 = a3;
    v26 = a1[3];
    v27 = a1[4];
    sub_10000751C(a1, v26);
    v28 = *(v27 + 8);

    v36 = a4;
    v29 = v4;
    v28(v42, v26, v27);
    v30 = v43;
    v31 = v44;

    sub_100019EF4(v42);
    if (v31)
    {
      v32 = 256;
    }

    else
    {
      v32 = 0;
    }

    v33 = sub_1000535B0(v32 | v30);

    v34 = sub_10000F4A8(v38, v41, v29, v13, v37, v36, v33);
    sub_100068F9C(v15, v39);
    return v34;
  }
}

uint64_t sub_10006FC7C(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = sub_100079A70();
  v2[32] = v3;
  v4 = *(v3 - 8);
  v2[33] = v4;
  v5 = *(v4 + 64) + 15;
  v2[34] = swift_task_alloc();
  v6 = *(*(sub_10000712C(&qword_10009E7B0, &qword_10007CB90) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v7 = sub_100079A00();
  v2[36] = v7;
  v8 = *(v7 - 8);
  v2[37] = v8;
  v9 = *(v8 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_10006FDF4, v1, 0);
}

uint64_t sub_10006FDF4()
{
  v1 = *(**(*(v0 + 248) + 112) + 264);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 336) = v3;
  *v3 = v0;
  v3[1] = sub_10006FF14;

  return v5();
}

uint64_t sub_10006FF14()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_100070024, v2, 0);
}

uint64_t sub_100070024()
{
  v0[43] = *(v0[31] + 120);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_1000700CC;
  v2 = v0[35];
  v3 = v0[30];

  return sub_100021FF4(v2, v3);
}

uint64_t sub_1000700CC()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 248);
  if (v0)
  {
    v6 = sub_100070BF4;
  }

  else
  {
    v6 = sub_1000701F8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000701F8()
{
  v63 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = sub_10000712C(&qword_10009E870, &qword_10007CCE0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = (v1 + 8);
  v6 = *(v0 + 288);
  if (v4 == 1)
  {
    v7 = *(v0 + 320);
    v8 = *(v0 + 304);
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v11 = *(v0 + 256);
    sub_1000096C4(v2, &qword_10009E7B0, &qword_10007CB90);
    sub_100079A60();
    v12 = sub_100079A10();
    v14 = v13;
    *(v0 + 416) = v12;
    *(v0 + 424) = v13;
    (*(v10 + 8))(v9, v11);

    sub_1000799C0();
    sub_100079970();
    v15 = *v5;
    *(v0 + 432) = *v5;
    *(v0 + 440) = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v7, v6);
    v16 = swift_task_alloc();
    *(v0 + 448) = v16;
    *v16 = v0;
    v16[1] = sub_1000709CC;
    v17 = *(v0 + 344);
    v18 = *(v0 + 304);
    v19 = *(v0 + 240);
    v20 = v12;
    v21 = v14;
LABEL_12:

    return sub_1000222DC(v19, v20, v21, v18);
  }

  v22 = *(v0 + 320);
  v24 = *v2;
  v23 = *(v2 + 1);
  (*(v1 + 32))(*(v0 + 328), &v2[*(v3 + 48)], *(v0 + 288));
  sub_1000799C0();
  v25 = sub_100079990();
  v26 = *(v1 + 8);
  *(v0 + 368) = v26;
  *(v0 + 376) = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v22, v6);
  if ((v25 & 1) == 0)
  {

    if (qword_1000A65B0 != -1)
    {
      swift_once();
    }

    v61 = v26;
    v35 = *(v0 + 240);
    v36 = sub_100079BA0();
    sub_1000070F4(v36, qword_1000A6DD8);
    sub_100009B00(v35, v0 + 16);
    v37 = sub_100079B80();
    v38 = sub_10007A190();
    sub_100019EF4(v35);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 240);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v62 = v41;
      *v40 = 136446210;
      v43 = *(v39 + 16);
      v42 = *(v39 + 32);
      v44 = *v39;
      *(v0 + 176) = *(v39 + 48);
      *(v0 + 144) = v43;
      *(v0 + 160) = v42;
      *(v0 + 128) = v44;
      sub_100009B00(v39, v0 + 184);
      sub_100070E58();
      v45 = sub_10007A5E0();
      v47 = v46;
      v48 = *(v0 + 144);
      *(v0 + 72) = *(v0 + 128);
      *(v0 + 88) = v48;
      *(v0 + 104) = *(v0 + 160);
      *(v0 + 120) = *(v0 + 176);
      sub_100019EF4(v0 + 72);
      v49 = sub_100006B00(v45, v47, &v62);

      *(v40 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v37, v38, "CID expired for %{public}s, refreshing", v40, 0xCu);
      sub_1000070A8(v41);
    }

    v51 = *(v0 + 312);
    v50 = *(v0 + 320);
    v52 = *(v0 + 288);
    v54 = *(v0 + 264);
    v53 = *(v0 + 272);
    v55 = *(v0 + 256);
    sub_100079A60();
    v56 = sub_100079A10();
    v58 = v57;
    *(v0 + 384) = v56;
    *(v0 + 392) = v57;
    (*(v54 + 8))(v53, v55);

    sub_1000799C0();
    sub_100079970();
    v61(v50, v52);
    v59 = swift_task_alloc();
    *(v0 + 400) = v59;
    *v59 = v0;
    v59[1] = sub_100070744;
    v60 = *(v0 + 344);
    v18 = *(v0 + 312);
    v19 = *(v0 + 240);
    v20 = v56;
    v21 = v58;
    goto LABEL_12;
  }

  v26(*(v0 + 328), *(v0 + 288));
  v28 = *(v0 + 320);
  v27 = *(v0 + 328);
  v30 = *(v0 + 304);
  v29 = *(v0 + 312);
  v32 = *(v0 + 272);
  v31 = *(v0 + 280);

  v33 = *(v0 + 8);

  return v33(v24, v23);
}

uint64_t sub_100070744()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *(*v1 + 392);
  v5 = *(*v1 + 376);
  v6 = *(*v1 + 368);
  v7 = *(*v1 + 312);
  v8 = *(*v1 + 288);
  v9 = *v1;
  *(*v1 + 408) = v0;

  v6(v7, v8);

  if (v0)
  {
    v10 = *(v2 + 392);
    v11 = *(v2 + 248);

    v12 = sub_100070C98;
    v13 = v11;
  }

  else
  {
    v13 = *(v2 + 248);
    v12 = sub_100070904;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_100070904()
{
  v1 = *(v0 + 376);
  (*(v0 + 368))(*(v0 + 328), *(v0 + 288));
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v9 = *(v0 + 272);
  v8 = *(v0 + 280);

  v10 = *(v0 + 8);

  return v10(v2, v3);
}

uint64_t sub_1000709CC()
{
  v2 = *(*v1 + 448);
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 432);
  v5 = *(*v1 + 424);
  v6 = *(*v1 + 304);
  v7 = *(*v1 + 288);
  v8 = *v1;
  v8[57] = v0;

  v4(v6, v7);

  v9 = v8[53];
  if (v0)
  {
    v10 = v8[31];
    v11 = v8[53];

    return _swift_task_switch(sub_100070D4C, v10, 0);
  }

  else
  {
    v12 = v8[52];
    v14 = v8[40];
    v13 = v8[41];
    v16 = v8[38];
    v15 = v8[39];
    v17 = v8[34];
    v18 = v8[35];

    v19 = v8[1];

    return v19(v12, v9);
  }
}

uint64_t sub_100070BF4()
{
  v1 = v0[45];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[34];
  v6 = v0[35];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100070C98()
{
  v1 = *(v0 + 376);
  (*(v0 + 368))(*(v0 + 328), *(v0 + 288));
  v2 = *(v0 + 408);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100070D4C()
{
  v1 = v0[57];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[34];
  v6 = v0[35];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100070DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100070E58()
{
  result = qword_10009FF00;
  if (!qword_10009FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009FF00);
  }

  return result;
}

uint64_t sub_100070FBC()
{
  sub_10000712C(&qword_10009FFE8, &qword_100080150);
  v0 = sub_10000712C(&qword_10009FFF0, &qword_100080158);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000800D0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = XPC_ACTIVITY_REPEATING;
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = XPC_ACTIVITY_DELAY;
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = XPC_ACTIVITY_GRACE_PERIOD;
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = XPC_ACTIVITY_PRIORITY;
  *v11 = sub_100079F10();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = XPC_ACTIVITY_ALLOW_BATTERY;
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = XPC_ACTIVITY_POWER_NAP;
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY;
  *(v20 + v21) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = *(v0 + 48);
  v23 = &v4[v1];
  *v23 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  *(v23 + v22) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_NETWORK_UPLOAD_SIZE)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = XPC_ACTIVITY_NETWORK_UPLOAD_SIZE;
  *(v24 + v25) = 5242880;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = (v4 + 10 * v1);
  v27 = *(v0 + 48);
  *v26 = XPC_ACTIVITY_EXPECTED_DURATION;
  *(v26 + v27) = XPC_ACTIVITY_INTERVAL_5_MIN;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_NAME)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = (v4 + 11 * v1);
  v29 = (v28 + *(v0 + 48));
  *v28 = XPC_ACTIVITY_GROUP_NAME;
  *v29 = 0xD000000000000025;
  v29[1] = 0x8000000100084B30;
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
  {
    v30 = (v4 + 12 * v1);
    v31 = *(v0 + 48);
    *v30 = XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT;
    *(v30 + v31) = 1;
    swift_storeEnumTagMultiPayload();
    v32 = sub_100071664(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static SubmitEventsActivityConfig.activityFlags = v32;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t *SubmitEventsActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_1000A6640 != -1)
  {
    swift_once();
  }

  return &static SubmitEventsActivityConfig.activityFlags;
}

uint64_t static SubmitEventsActivityConfig.activityFlags.getter()
{
  if (qword_1000A6640 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static SubmitEventsActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_1000A6640 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SubmitEventsActivityConfig.activityFlags = a1;
}

uint64_t (*static SubmitEventsActivityConfig.activityFlags.modify())()
{
  if (qword_1000A6640 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1000715B4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_10007A720();

  return sub_1000715F8(a1, v4);
}

unint64_t sub_1000715F8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100071664(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009FFF0, &qword_100080158);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000712C(&unk_10009FFF8, &unk_100080160);
    v8 = sub_10007A4D0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_100071814(v10, v6);
      v12 = *v6;
      result = sub_1000715B4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for XPCObject();
      result = sub_100029A0C(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

uint64_t sub_100071814(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009FFF0, &qword_100080158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unsigned __int8 *XPCObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100079A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for XPCObject();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v11);
  v16 = (&v47 - v15);
  __chkstk_darwin(v14);
  v19 = (&v47 - v18);
  if (a1)
  {
    v48 = v17;
    v20 = swift_unknownObjectRetain();
    type = xpc_get_type(v20);
    if (XPCTypeNull.getter() == type)
    {
      swift_unknownObjectRelease_n();
    }

    else if (XPCTypeConnection.getter() == type || XPCTypeEndpoint.getter() == type)
    {
      swift_unknownObjectRelease();
      *v19 = a1;
    }

    else if (XPCTypeBool.getter() == type)
    {
      value = xpc_BOOL_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = value;
    }

    else if (XPCTypeInt64.getter() == type)
    {
      v25 = xpc_int64_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v25;
    }

    else if (XPCTypeUInt64.getter() == type)
    {
      v26 = xpc_uint64_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v26;
    }

    else if (XPCTypeDouble.getter() == type)
    {
      v27 = xpc_double_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v27;
    }

    else
    {
      if (XPCTypeDate.getter() != type)
      {
        if (XPCTypeData.getter() == type)
        {
          result = xpc_data_get_bytes_ptr(a1);
          if (result)
          {
            v29 = result;
            length = xpc_data_get_length(a1);
            v31 = sub_100072CBC(v29, length);
            v33 = v32;
            swift_unknownObjectRelease_n();
            *v16 = v31;
            v16[1] = v33;
            swift_storeEnumTagMultiPayload();
            v34 = v16;
LABEL_34:
            sub_100029A0C(v34, v19);
            goto LABEL_29;
          }

          __break(1u);
        }

        else
        {
          if (XPCTypeString.getter() != type)
          {
            if (XPCTypeUUID.getter() != type)
            {
              swift_unknownObjectRelease();
              if (XPCTypeShmem.getter() == type)
              {
                *v19 = a1;
              }

              else if (XPCTypeArray.getter() == type)
              {
                *v19 = a1;
              }

              else
              {
                if (XPCTypeDictionary.getter() != type)
                {
                  swift_unknownObjectRelease();
                  v17 = v48;
                  goto LABEL_17;
                }

                *v19 = a1;
              }

              goto LABEL_28;
            }

            result = xpc_uuid_get_bytes(a1);
            if (result)
            {
              v38 = *(result + 1);
              v39 = result[7];
              v40 = result[6];
              v41 = result[5];
              v42 = result[4];
              v43 = result[3];
              v44 = result[2];
              v45 = result[1];
              v46 = *result;
              sub_100079A40();
              swift_unknownObjectRelease_n();
              (*(v5 + 32))(v19, v8, v4);
              goto LABEL_28;
            }

LABEL_42:
            __break(1u);
            return result;
          }

          result = xpc_string_get_string_ptr(a1);
          if (result)
          {
            v35 = sub_100079F10();
            v37 = v36;
            swift_unknownObjectRelease_n();
            *v13 = v35;
            v13[1] = v37;
            swift_storeEnumTagMultiPayload();
            v34 = v13;
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

      v28 = xpc_date_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v28;
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
LABEL_29:
    sub_100029A0C(v19, a2);
    return (*(v48 + 56))(a2, 0, 1, v9);
  }

LABEL_17:
  v22 = *(v17 + 56);

  return v22(a2, 1, 1, v9);
}

uint64_t type metadata accessor for XPCObject()
{
  result = qword_1000A6750;
  if (!qword_1000A6750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

xpc_object_t XPCObject.obj.getter()
{
  v1 = v0;
  v2 = sub_100079A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &uuid[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for XPCObject();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &uuid[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100029A70(v1, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      return xpc_BOOL_create(*v10);
    case 3u:
      return xpc_int64_create(*v10);
    case 4u:
      return xpc_uint64_create(*v10);
    case 5u:
      return xpc_double_create(*v10);
    case 6u:
      return xpc_date_create(*v10);
    case 7u:
      v21 = *v10;
      v20 = *(v10 + 1);
      v22 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v22 != 2)
        {
          memset(uuid, 0, 14);
          v24 = uuid;
          v23 = 0;
          goto LABEL_34;
        }

        v29 = *(v21 + 16);
        v30 = *(v21 + 24);
        v31 = sub_100079670();
        if (v31)
        {
          v32 = sub_1000796A0();
          if (__OFSUB__(v29, v32))
          {
            goto LABEL_36;
          }

          v31 += v29 - v32;
        }

        v33 = __OFSUB__(v30, v29);
        v34 = v30 - v29;
        if (!v33)
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_22:
        v34 = (v21 >> 32) - v21;
        if (v21 >> 32 >= v21)
        {
          v31 = sub_100079670();
          if (!v31)
          {
LABEL_26:
            v36 = sub_100079690();
            if (v36 >= v34)
            {
              v37 = v34;
            }

            else
            {
              v37 = v36;
            }

            if (v31)
            {
              v23 = v37;
            }

            else
            {
              v23 = 0;
            }

            v24 = v31;
            goto LABEL_34;
          }

          v35 = sub_1000796A0();
          if (!__OFSUB__(v21, v35))
          {
            v31 += v21 - v35;
            goto LABEL_26;
          }

LABEL_37:
          __break(1u);
        }

        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v22)
      {
        goto LABEL_22;
      }

      *uuid = *v10;
      *&uuid[8] = v20;
      uuid[10] = BYTE2(v20);
      uuid[11] = BYTE3(v20);
      uuid[12] = BYTE4(v20);
      v23 = BYTE6(v20);
      uuid[13] = BYTE5(v20);
      v24 = uuid;
LABEL_34:
      v38 = xpc_data_create(v24, v23);
      sub_1000071DC(v21, v20);
      return v38;
    case 8u:
      v25 = *v10;
      v26 = *(v10 + 1);
      v27 = sub_100079EA0();

      v28 = xpc_string_create((v27 + 32));

      return v28;
    case 9u:
      (*(v3 + 32))(v6, v10, v2);
      *uuid = sub_100079A50();
      *&uuid[8] = v12;
      uuid[10] = v13;
      uuid[11] = v14;
      uuid[12] = v15;
      uuid[13] = v16;
      uuid[14] = v17;
      uuid[15] = v18;
      v19 = xpc_uuid_create(uuid);
      (*(v3 + 8))(v6, v2);
      return v19;
    case 0xDu:
      return xpc_null_create();
    default:
      return *v10;
  }
}

BOOL static XPCObject.== infix(_:_:)()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

xpc_object_t XPCDictionary.init(dictionaryLiteral:)(uint64_t a1)
{
  v1 = sub_100072D6C(a1);

  return v1;
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1)
{
  v3 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *v1;
  sub_10000939C(a1, &v12 - v5, &unk_10009EC50, &unk_10007D650);
  v8 = type metadata accessor for XPCObject();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000096C4(v6, &unk_10009EC50, &unk_10007D650);
    v9 = 0;
  }

  else
  {
    v9 = XPCObject.obj.getter();
    sub_100029AD4(v6);
  }

  v10 = sub_100079EA0();

  xpc_dictionary_set_value(v7, (v10 + 32), v9);
  swift_unknownObjectRelease();
  sub_1000096C4(a1, &unk_10009EC50, &unk_10007D650);
}

uint64_t XPCDictionary.keys.getter(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  v3 = _swiftEmptyArrayStorage;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || count > _swiftEmptyArrayStorage[3] >> 1)
  {
    if (_swiftEmptyArrayStorage[2] <= count)
    {
      v5 = count;
    }

    else
    {
      v5 = _swiftEmptyArrayStorage[2];
    }

    v3 = sub_100023040(isUniquelyReferenced_nonNull_native, v5, 0, _swiftEmptyArrayStorage);
  }

  v13 = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100073164;
  *(v7 + 24) = v6;
  aBlock[4] = sub_100032638;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002F120;
  aBlock[3] = &unk_100099230;
  v8 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

unsigned __int8 *XPCDictionary.subscript.getter@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_100079EA0();
  v5 = xpc_dictionary_get_value(a1, (v4 + 32));

  return XPCObject.init(_:)(v5, a2);
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = a3;
  v9 = *(*(sub_10000712C(&unk_10009EC50, &unk_10007D650) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[2] = swift_coroFrameAlloc();
    v8[3] = swift_coroFrameAlloc();
    v8[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v8[2] = malloc(v9);
    v8[3] = malloc(v9);
    v8[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v8[5] = v10;
  v12 = *v3;
  v8[6] = v12;
  v13 = sub_100079EA0();
  v14 = xpc_dictionary_get_value(v12, (v13 + 32));

  XPCObject.init(_:)(v14, v11);
  return sub_1000727EC;
}

void sub_1000727EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v6 = v2[1];
    sub_10000939C(v3, v4, &unk_10009EC50, &unk_10007D650);
    sub_10000939C(v4, v5, &unk_10009EC50, &unk_10007D650);
    v7 = type metadata accessor for XPCObject();
    LODWORD(v5) = (*(*(v7 - 8) + 48))(v5, 1, v7);

    v8 = v2[2];
    if (v5 == 1)
    {
      sub_1000096C4(v2[2], &unk_10009EC50, &unk_10007D650);
      v9 = 0;
    }

    else
    {
      v9 = XPCObject.obj.getter();
      sub_100029AD4(v8);
    }

    v16 = v2[5];
    v17 = v2[6];
    v19 = v2[3];
    v18 = v2[4];
    v21 = v2[1];
    v20 = v2[2];
    v22 = *v2;
    v23 = sub_100079EA0();

    xpc_dictionary_set_value(v17, (v23 + 32), v9);
    swift_unknownObjectRelease();
    sub_1000096C4(v19, &unk_10009EC50, &unk_10007D650);

    sub_1000096C4(v16, &unk_10009EC50, &unk_10007D650);
  }

  else
  {
    v10 = v2[4];
    v11 = v2[1];
    sub_10000939C(v3, v10, &unk_10009EC50, &unk_10007D650);
    v12 = type metadata accessor for XPCObject();
    v13 = (*(*(v12 - 8) + 48))(v10, 1, v12);

    v14 = v2[4];
    if (v13 == 1)
    {
      sub_1000096C4(v2[4], &unk_10009EC50, &unk_10007D650);
      v15 = 0;
    }

    else
    {
      v15 = XPCObject.obj.getter();
      sub_100029AD4(v14);
    }

    v16 = v2[5];
    v24 = v2[6];
    v19 = v2[3];
    v18 = v2[4];
    v25 = v2[1];
    v20 = v2[2];
    v26 = *v2;
    v27 = sub_100079EA0();

    xpc_dictionary_set_value(v24, (v27 + 32), v15);
    swift_unknownObjectRelease();
    sub_1000096C4(v16, &unk_10009EC50, &unk_10007D650);
  }

  free(v16);
  free(v18);
  free(v19);
  free(v20);

  free(v2);
}

Swift::Bool __swiftcall XPCDictionary.contains(key:)(Swift::String key)
{
  v2 = v1;
  v3 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_100079EA0();
  v8 = xpc_dictionary_get_value(v2, (v7 + 32));

  XPCObject.init(_:)(v8, v6);
  v9 = type metadata accessor for XPCObject();
  LOBYTE(v8) = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  sub_1000096C4(v6, &unk_10009EC50, &unk_10007D650);
  return v8;
}

uint64_t sub_100072BC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_100072D6C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100072C04(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100072CBC(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100072C04(a1, &a1[a2]);
  }

  v3 = sub_1000796B0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_100079660();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1000798F0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

xpc_object_t sub_100072D6C(uint64_t a1)
{
  v2 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = sub_10000712C(&unk_1000A00B0, &qword_100080228);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = (&v39 - v14);
  v16 = __chkstk_darwin(v13);
  v18 = (&v39 - v17);
  __chkstk_darwin(v16);
  v42 = (&v39 - v19);
  empty = xpc_dictionary_create_empty();
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(v8 + 48);
    v22 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v39 = *(v9 + 72);
    v40 = v21;
    v41 = v15;
    do
    {
      v26 = v42;
      sub_10000939C(v22, v42, &unk_1000A00B0, &qword_100080228);
      v27 = v26[1];
      v28 = *(v8 + 48);
      *v18 = *v26;
      v18[1] = v27;
      sub_100029A0C(v26 + v40, v18 + v28);
      sub_10000939C(v18, v15, &unk_1000A00B0, &qword_100080228);
      v46 = *v15;
      v29 = v15[1];
      v30 = v43;
      sub_10000939C(v18, v43, &unk_1000A00B0, &qword_100080228);
      v31 = *(v30 + 8);

      v32 = v8;
      sub_100029A0C(v30 + *(v8 + 48), v7);
      v33 = type metadata accessor for XPCObject();
      v34 = *(v33 - 8);
      (*(v34 + 56))(v7, 0, 1, v33);
      v35 = v7;
      v36 = v7;
      v37 = v44;
      sub_10000939C(v36, v44, &unk_10009EC50, &unk_10007D650);
      if ((*(v34 + 48))(v37, 1, v33) == 1)
      {
        sub_1000096C4(v37, &unk_10009EC50, &unk_10007D650);
        v23 = 0;
      }

      else
      {
        v23 = XPCObject.obj.getter();
        sub_100029AD4(v37);
      }

      v8 = v32;
      v24 = *(v32 + 48);
      v25 = sub_100079EA0();

      xpc_dictionary_set_value(empty, (v25 + 32), v23);
      swift_unknownObjectRelease();
      v7 = v35;
      sub_1000096C4(v35, &unk_10009EC50, &unk_10007D650);
      sub_1000096C4(v18, &unk_1000A00B0, &qword_100080228);

      v15 = v41;
      sub_100029AD4(v41 + v24);
      v22 += v39;
      --v20;
    }

    while (v20);
  }

  return empty;
}

uint64_t sub_100073164()
{
  v1 = *(v0 + 16);
  v2 = sub_100079F10();
  v4 = v3;
  v5 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_100023040(0, *(v5 + 2) + 1, 1, v5);
    *v1 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_100023040((v7 > 1), v8 + 1, 1, v5);
    *v1 = v5;
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 4) = v2;
  *(v9 + 5) = v4;
  return 1;
}

uint64_t sub_10007322C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100073244()
{
  result = sub_100073308();
  if (v1 <= 0x3F)
  {
    result = sub_100079A70();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100073308()
{
  result = qword_1000A0078;
  if (!qword_1000A0078)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000A0078);
  }

  return result;
}

uint64_t sub_100073380(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1000733B4()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6768);
  sub_1000070F4(v0, qword_1000A6768);
  return sub_100079B90();
}

uint64_t sub_10007342C()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_100073464(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_100073530(char a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t static XPCActivity.makeHandler.getter()
{
  swift_beginAccess();
  v0 = static XPCActivity.makeHandler;
  sub_1000735D4(static XPCActivity.makeHandler);
  return v0;
}

uint64_t sub_1000735D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static XPCActivity.makeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = static XPCActivity.makeHandler;
  static XPCActivity.makeHandler = a1;
  qword_1000A6E00 = a2;
  return sub_100029F90(v4);
}

Swift::Void __swiftcall XPCActivity.register(disabled:)(Swift::Bool_optional disabled)
{
  v2 = v1;
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_100079E20();
    v8 = v7;

    if (disabled.value != 2)
    {
      (*(*v2 + 144))(disabled.value);
    }

    sub_10007A3B0(20);

    aBlock = 0x6C655464756F6C43;
    v28 = 0xEF2E797274656D65;
    v34._countAndFlagsBits = v6;
    v34._object = v8;
    sub_100079F00(v34);

    v35._countAndFlagsBits = 46;
    v35._object = 0xE100000000000000;
    sub_100079F00(v35);
    v9 = v2[14];
    v36._countAndFlagsBits = (*(v2[15] + 32))();
    sub_100079F00(v36);

    v31 = sub_100075310;
    v32 = v2;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100073B3C;
    v30 = &unk_100099280;
    v10 = _Block_copy(&aBlock);

    v11 = sub_100079EA0();
    xpc_activity_register((v11 + 32), XPC_ACTIVITY_CHECK_IN, v10);

    _Block_release(v10);
    if (qword_1000A6760 != -1)
    {
      swift_once();
    }

    v12 = sub_100079BA0();
    sub_1000070F4(v12, qword_1000A6768);

    v13 = sub_100079B80();
    v14 = sub_10007A160();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v15 = 136315138;
      v17 = sub_100006B00(0x6C655464756F6C43, 0xEF2E797274656D65, &aBlock);

      *(v15 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "registered: %s", v15, 0xCu);
      sub_1000070A8(v16);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1000A6760 != -1)
    {
      swift_once();
    }

    v18 = sub_100079BA0();
    sub_1000070F4(v18, qword_1000A6768);

    oslog = sub_100079B80();
    v19 = sub_10007A160();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock = v21;
      *v20 = 136315138;
      v22 = v2[14];
      v23 = (*(v2[15] + 32))();
      v25 = sub_100006B00(v23, v24, &aBlock);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, oslog, v19, "unable to register: %s, nil bundleIdentifier", v20, 0xCu);
      sub_1000070A8(v21);
    }

    else
    {
    }
  }
}

uint64_t sub_100073B3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100073B9C()
{
  v1 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v48 = &v44 - v3;
  v47 = type metadata accessor for XPCObject();
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v47);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000712C(&qword_1000A02E0, &qword_100080338);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v17 = *(v16 + 24);
  v18 = *(v17(v15, v16) + 16);

  if (!v18)
  {
    return 0;
  }

  v49 = v14;
  v50 = v12;
  v51 = XPCDictionary.init()();
  result = v17(v15, v16);
  v20 = 0;
  v22 = result + 64;
  v21 = *(result + 64);
  v44 = v4;
  v45 = result;
  v23 = 1 << *(result + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v46 = (v4 + 56);
  v27 = &unk_1000A02E8;
  while (v25)
  {
    v28 = v20;
    v30 = v49;
    v29 = v50;
LABEL_14:
    v33 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v34 = v33 | (v28 << 6);
    v35 = *(*(v45 + 48) + 8 * v34);
    sub_100029A70(*(v45 + 56) + *(v44 + 72) * v34, v7);
    v36 = sub_10000712C(v27, &unk_100080340);
    v37 = *(v36 + 48);
    *v29 = v35;
    sub_100029A0C(v7, v29 + v37);
    (*(*(v36 - 8) + 56))(v29, 0, 1, v36);
    v32 = v28;
LABEL_15:
    sub_100075804(v29, v30);
    v38 = sub_10000712C(v27, &unk_100080340);
    if ((*(*(v38 - 8) + 48))(v30, 1, v38) == 1)
    {

      return v51;
    }

    v39 = *v30;
    sub_100029A0C(v30 + *(v38 + 48), v7);
    sub_100079F10();
    v40 = v27;
    v41 = v48;
    sub_100029A70(v7, v48);
    (*v46)(v41, 0, 1, v47);
    v42 = v41;
    v27 = v40;
    XPCDictionary.subscript.setter(v42);
    result = sub_100029AD4(v7);
    v20 = v32;
  }

  if (v26 <= v20 + 1)
  {
    v31 = v20 + 1;
  }

  else
  {
    v31 = v26;
  }

  v32 = v31 - 1;
  v30 = v49;
  v29 = v50;
  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v43 = sub_10000712C(v27, &unk_100080340);
      (*(*(v43 - 8) + 56))(v29, 1, 1, v43);
      v25 = 0;
      goto LABEL_15;
    }

    v25 = *(v22 + 8 * v28);
    ++v20;
    if (v25)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100073FD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v46 - v6;
  type metadata accessor for XPCActivityHandle();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_unknownObjectRetain();
  state = xpc_activity_get_state(v9);
  if (state == 2)
  {
    if (qword_1000A6760 != -1)
    {
      swift_once();
    }

    v22 = sub_100079BA0();
    sub_1000070F4(v22, qword_1000A6768);

    v23 = sub_100079B80();
    v24 = sub_10007A190();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136315138;
      v27 = *(v2 + 112);
      v28 = (*(*(v2 + 120) + 32))();
      v30 = sub_100006B00(v28, v29, &v47);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "run: %s", v25, 0xCu);
      sub_1000070A8(v26);
    }

    should_defer = xpc_activity_should_defer(*(v8 + 16));
    v32 = *(v8 + 16);
    if (!should_defer)
    {
      xpc_activity_set_state(v32, 4);
      v44 = sub_10007A0A0();
      (*(*(v44 - 8) + 56))(v7, 1, 1, v44);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v2;
      v45[5] = v8;

      sub_100014B7C(0, 0, v7, &unk_100080328, v45);
    }

    xpc_activity_set_state(v32, 3);
LABEL_16:
  }

  if (!state)
  {
    if (qword_1000A6760 != -1)
    {
      swift_once();
    }

    v11 = sub_100079BA0();
    sub_1000070F4(v11, qword_1000A6768);

    v12 = sub_100079B80();
    v13 = sub_10007A160();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v47 = v15;
      *v14 = 136315138;
      v16 = *(v2 + 112);
      v17 = (*(*(v2 + 120) + 32))();
      v19 = sub_100006B00(v17, v18, &v47);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "checkin: %s", v14, 0xCu);
      sub_1000070A8(v15);
    }

    v20 = sub_100073B9C();
    if (v20)
    {
      v21 = v20;
      if (xpc_activity_copy_criteria(*(v8 + 16)))
      {

        swift_unknownObjectRelease();
      }

      else
      {
        xpc_activity_set_criteria(*(v8 + 16), v21);
      }

      return swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  if (qword_1000A6760 != -1)
  {
    swift_once();
  }

  v34 = sub_100079BA0();
  sub_1000070F4(v34, qword_1000A6768);
  swift_retain_n();

  v35 = sub_100079B80();
  v36 = sub_10007A170();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v37 = 136315394;
    v39 = *(v2 + 112);
    v40 = (*(*(v2 + 120) + 32))();
    v42 = sub_100006B00(v40, v41, &v47);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2048;
    v43 = xpc_activity_get_state(*(v8 + 16));

    *(v37 + 14) = v43;

    _os_log_impl(&_mh_execute_header, v35, v36, "activity: %s, encountered unrecognized XPC activity state: %ld", v37, 0x16u);
    sub_1000070A8(v38);
  }

  else
  {
  }
}

uint64_t sub_1000745D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000745F8, a4, 0);
}

uint64_t sub_1000745F8()
{
  v1 = v0[2];
  sub_100074658(v0[3]);
  v2 = v0[1];

  return v2();
}

void sub_100074658(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - v8;
  v10 = (*(v4 + 136))(v7);
  v11 = *(a1 + 16);
  if (v10)
  {
    xpc_activity_set_state(*(a1 + 16), 5);
    if (qword_1000A6760 != -1)
    {
      swift_once();
    }

    v12 = sub_100079BA0();
    sub_1000070F4(v12, qword_1000A6768);

    v28 = sub_100079B80();
    v13 = sub_10007A170();

    if (os_log_type_enabled(v28, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      v16 = v2[14];
      v17 = (*(v2[15] + 32))();
      v19 = sub_100006B00(v17, v18, aBlock);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v28, v13, "disabled: skipping %s", v14, 0xCu);
      sub_1000070A8(v15);
    }

    else
    {
      v26 = v28;
    }
  }

  else
  {
    aBlock[4] = sub_100075374;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100073B3C;
    aBlock[3] = &unk_1000992A8;
    v20 = _Block_copy(aBlock);

    v21 = xpc_activity_add_eligibility_changed_handler();
    _Block_release(v20);
    v22 = sub_10007A0A0();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    v23 = sub_10007537C();
    v24 = swift_allocObject();
    v24[2] = v2;
    v24[3] = v23;
    v24[4] = v21;
    v24[5] = a1;
    v24[6] = v2;
    v24[7] = v4;
    swift_retain_n();

    v25 = sub_100005244(0, 0, v9, &unk_100080308, v24);
    (*(*v2 + 120))(v25);
  }
}

uint64_t sub_100074A00(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  result = xpc_activity_should_defer(a1);
  if (result)
  {
    v9 = sub_10007A0A0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;

    sub_100014B7C(0, 0, v7, &unk_100080318, v10);
  }

  return result;
}

uint64_t sub_100074B3C()
{
  if ((*(**(v0 + 16) + 112))())
  {
    v1 = *(v0 + 16);
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    sub_10007A0C0();
    (*(*v1 + 120))(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100074C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return _swift_task_switch(sub_100074C50, a6, 0);
}

uint64_t sub_100074C50()
{
  result = swift_beginAccess();
  v2 = static XPCActivity.makeHandler;
  v0[11] = static XPCActivity.makeHandler;
  if (v2)
  {
    v3 = v0[10];
    v0[12] = qword_1000A6E00;
    v4 = *(v3 + 112);
    v5 = *(v3 + 120);

    v9 = (v2 + *v2);
    v6 = v2[1];
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_100074D98;
    v8 = v0[10];

    return v9(v4, v5, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100074D98(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v5 = v3[13];
  v6 = v3[12];
  v7 = v3[11];
  v8 = v3[10];
  v10 = *v2;
  v4[14] = a1;

  sub_100029F90(v7);

  return _swift_task_switch(sub_100074EF4, v8, 0);
}

uint64_t sub_100074EF4()
{
  sub_10007A0F0();
  v1 = v0[14];
  v2 = v0[7];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_100075084;
  v7 = v0[14];

  return v9(ObjectType, v2);
}

uint64_t sub_100075084()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_100075194, v2, 0);
}

uint64_t sub_100075194()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  swift_unknownObjectRelease();
  sub_1000754C0(v4, v2, v3);
  v5 = v0[1];

  return v5();
}

uint64_t XPCActivity.__allocating_init(handlerType:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 120) = a2;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 112) = a1;
  return v4;
}

uint64_t XPCActivity.init(handlerType:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t XPCActivity.deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCActivity.__deallocating_deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100075314(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10007537C()
{
  result = qword_1000A02D8;
  if (!qword_1000A02D8)
  {
    type metadata accessor for XPCActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A02D8);
  }

  return result;
}

uint64_t sub_1000753D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100075418()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_100074C2C(v5, v6, v7, v2, v3, v4);
}

void sub_1000754C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    xpc_activity_remove_eligibility_changed_handler();
  }

  xpc_activity_set_state(*(a2 + 16), 5);
  if (qword_1000A6760 != -1)
  {
    swift_once();
  }

  v5 = sub_100079BA0();
  sub_1000070F4(v5, qword_1000A6768);

  oslog = sub_100079B80();
  v6 = sub_10007A190();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = *(a3 + 112);
    v10 = (*(*(a3 + 120) + 32))();
    v12 = sub_100006B00(v10, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v6, "done: %s", v7, 0xCu);
    sub_1000070A8(v8);
  }
}

uint64_t sub_100075650()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100075690()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A474;

  return sub_100074B1C(v3, v4, v5, v2);
}

uint64_t sub_100075724()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007576C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007838;

  return sub_1000745D8(v4, v5, v6, v2, v3);
}

uint64_t sub_100075804(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_1000A02E0, &qword_100080338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t XPCError.errorDescription.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_100079F10();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

uint64_t sub_100075AB4()
{
  if (xpc_dictionary_get_string(*v0, "XPCErrorDescription"))
  {
    return sub_100079F10();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

unsigned __int8 *XPCIncomingConnection.entitlementValue(forKey:)@<X0>(uint64_t a1@<X8>)
{
  sub_100079EA0();
  v2 = xpc_connection_copy_entitlement_value();

  return XPCObject.init(_:)(v2, a1);
}

void *XPCIncomingConnection.makeConnection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3, _xpc_connection_s *a4)
{
  type metadata accessor for XPCConnection();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_100076EB4(a4, v8, a2, a3);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v9;
}

uint64_t XPCConnection.conn.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t XPCConnection.conn.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t XPCConnection.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

uint64_t XPCConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*XPCConnection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100075EB0;
}

void sub_100075EB0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100075F3C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6808);
  sub_1000070F4(v0, qword_1000A6808);
  return sub_100079B90();
}

void *XPCConnection.__allocating_init(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1000770D0(a1, a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

void *XPCConnection.init(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000770D0(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t XPCConnection.__allocating_init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  swift_allocObject();
  v12 = sub_100077304(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t XPCConnection.init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  v7 = sub_100077304(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t XPCConnection.__allocating_init(serviceName:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  XPCConnection.init(serviceName:targetQ:listen:delegate:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void XPCConnection.init(serviceName:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v7[2] = 0;
  v11 = (v7 + 2);
  v7[4] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {

    swift_beginAccess();
    v7[4] = a6;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v12 = v7[2];
    v7[2] = 0;
    swift_unknownObjectRelease();
    v7[5] = a3;
    return;
  }

  v13 = sub_100079EA0();
  v14 = a3;
  v15 = xpc_connection_create((v13 + 32), v14);

  swift_beginAccess();
  v7[4] = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v16 = v7[2];
  v7[2] = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7[5] = v14;
  v17 = qword_1000A6800;
  v18 = v14;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_100079BA0();
  sub_1000070F4(v19, qword_1000A6808);
  v20 = sub_100079B80();
  v21 = sub_10007A190();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "C.", v22, 2u);
  }

  if (!*v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = *v11;
  v24 = swift_unknownObjectRetain();
  xpc_connection_set_target_queue(v24, v18);
  swift_unknownObjectRelease();

  v25 = *v11;
  if (!*v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v29[5] = v7;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 1107296256;
  v29[2] = sub_100073B3C;
  v29[3] = &unk_100099368;
  v26 = _Block_copy(v29);

  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(v25, v26);
  _Block_release(v26);
  swift_unknownObjectRelease();
  v27 = v7[2];
  if (v27)
  {
    v28 = v7[2];
    swift_unknownObjectRetain();

    xpc_connection_activate(v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_100076548(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, uint64_t), void (*a6)(uint64_t))
{
  swift_allocObject();
  v12 = a5(a1, a2, a3, a4);
  a6(a1);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_10007660C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t))
{
  v9 = a5();
  a6(a1);

  swift_unknownObjectRelease();
  return v9;
}

_xpc_connection_s *XPCConnection.endpoint()()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return xpc_endpoint_create(result);
  }

  __break(1u);
  return result;
}

uint64_t XPCConnection.send(_:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  if (v4)
  {
    swift_unknownObjectRetain();
    v5 = XPCIncomingConnection.conn.getter(a1);
    xpc_connection_send_message(v4, v5);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCConnection.sendWithReply(_:)(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  return _swift_task_switch(sub_10007675C, 0, 0);
}

uint64_t sub_10007675C()
{
  v1 = *(v0 + 56);
  v2 = swift_beginAccess();
  v10 = *(v1 + 16);
  *(v0 + 64) = v10;
  if (v10)
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 48);
    v13 = *(*(v0 + 56) + 40);
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *(v14 + 16) = v10;
    *(v14 + 24) = v12;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    v15 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    swift_unknownObjectRetain();
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_1000768A0;
    v9 = &type metadata for XPCDictionary;
    v7 = sub_1000777EC;
    v2 = v0 + 40;
    v6 = 0x8000000100084C30;
    v3 = 0;
    v4 = 0;
    v5 = 0xD000000000000011;
    v8 = v14;
  }

  else
  {
    __break(1u);
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000768A0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_100076A24;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1000769BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000769BC()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[5];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100076A24()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_100076A90(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, NSObject *a4)
{
  v8 = sub_10000712C(&qword_1000A03C8, &unk_1000805F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = XPCIncomingConnection.conn.getter(a3);
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  aBlock[4] = sub_10007792C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100073B3C;
  aBlock[3] = &unk_100099408;
  v16 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(a2, v13, a4, v16);
  _Block_release(v16);
  return swift_unknownObjectRelease();
}

uint64_t XPCConnection.auditToken.getter()
{
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    __break(1u);
  }

  xpc_connection_get_audit_token();
  return 0;
}

_xpc_connection_s *XPCConnection.remoteUID.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return xpc_connection_get_euid(result);
  }

  __break(1u);
  return result;
}

uint64_t XPCConnection.deinit()
{
  v1 = v0;
  if (qword_1000A6800 != -1)
  {
    swift_once();
  }

  v2 = sub_100079BA0();
  sub_1000070F4(v2, qword_1000A6808);
  v3 = sub_100079B80();
  v4 = sub_10007A170();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "connection released", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  if (v6)
  {
    xpc_connection_cancel(v6);
    v7 = *(v1 + 16);
  }

  swift_unknownObjectRelease();
  sub_1000777F8(v1 + 24);

  return v1;
}

uint64_t XPCConnection.__deallocating_deinit()
{
  XPCConnection.deinit();

  return swift_deallocClassInstance();
}

void *sub_100076EB4(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v9 = v5[2];
  v5[2] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v5[4] = a4;
  swift_unknownObjectWeakAssign();
  v5[5] = a2;
  v10 = qword_1000A6800;
  v11 = a2;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_100079BA0();
  sub_1000070F4(v12, qword_1000A6808);
  v13 = sub_100079B80();
  v14 = sub_10007A190();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "D.", v15, 2u);
  }

  xpc_connection_set_target_queue(a1, v11);
  v18[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v18[5] = v5;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100073B3C;
  v18[3] = &unk_1000994A8;
  v16 = _Block_copy(v18);

  xpc_connection_set_event_handler(a1, v16);
  _Block_release(v16);
  xpc_connection_activate(a1);
  return v5;
}

void *sub_1000770D0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[2] = 0;
  v4[4] = 0;
  swift_unknownObjectWeakInit();
  v7 = a1;
  v8 = xpc_connection_create(0, v7);
  swift_beginAccess();
  v4[4] = a3;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v9 = v4[2];
  v4[2] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4[5] = v7;
  v10 = qword_1000A6800;
  v11 = v7;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_100079BA0();
  sub_1000070F4(v12, qword_1000A6808);
  v13 = sub_100079B80();
  v14 = sub_10007A190();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "A.", v15, 2u);
  }

  xpc_connection_set_target_queue(v8, v11);
  v18[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v18[5] = v4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100073B3C;
  v18[3] = &unk_100099480;
  v16 = _Block_copy(v18);

  xpc_connection_set_event_handler(v8, v16);
  _Block_release(v16);
  xpc_connection_activate(v8);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_100077304(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  v7 = v6;
  *(v6 + 16) = 0;
  v11 = (v6 + 16);
  v11[2] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = sub_100079EA0();
  v14 = a3;

  mach_service = xpc_connection_create_mach_service((v13 + 32), v14, v12);

  swift_beginAccess();
  v11[2] = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v16 = *v11;
  *v11 = mach_service;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v11[3] = v14;
  v17 = qword_1000A6800;
  v18 = v14;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_100079BA0();
  sub_1000070F4(v19, qword_1000A6808);
  v20 = sub_100079B80();
  v21 = sub_10007A190();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "B.", v22, 2u);
  }

  xpc_connection_set_target_queue(mach_service, v18);
  v25[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v25[5] = v7;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_100073B3C;
  v25[3] = &unk_100099458;
  v23 = _Block_copy(v25);

  xpc_connection_set_event_handler(mach_service, v23);
  _Block_release(v23);
  xpc_connection_activate(mach_service);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_100077578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_xpc_connection_s *sub_100077590(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    v10 = xpc_endpoint_create(result);
    v11 = xpc_connection_create_from_endpoint(v10);
    swift_beginAccess();
    v12 = v5[2];
    v5[2] = v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v5[4] = a4;
    swift_unknownObjectWeakAssign();
    v5[5] = a2;
    v13 = qword_1000A6800;
    v14 = a2;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_100079BA0();
    sub_1000070F4(v15, qword_1000A6808);
    v16 = sub_100079B80();
    v17 = sub_10007A190();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "E.", v18, 2u);
    }

    xpc_connection_set_target_queue(v11, v14);
    aBlock[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100073B3C;
    aBlock[3] = &unk_100099430;
    v19 = _Block_copy(aBlock);

    xpc_connection_set_event_handler(v11, v19);
    _Block_release(v19);
    xpc_connection_activate(v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100077824()
{
  result = qword_1000A02F0;
  if (!qword_1000A02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A02F0);
  }

  return result;
}

uint64_t sub_100077898()
{
  v1 = sub_10000712C(&qword_1000A03C8, &unk_1000805F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10007792C(void *a1)
{
  v2 = *(sub_10000712C(&qword_1000A03C8, &unk_1000805F0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  type = xpc_get_type(a1);
  if (type == XPCTypeError.getter())
  {
    sub_100077824();
    swift_allocError();
    *v7 = a1;
    swift_unknownObjectRetain();
    sub_10000712C(&qword_1000A03C8, &unk_1000805F0);
    return sub_10007A060();
  }

  else
  {
    v5 = swift_unknownObjectRetain();
    XPCIncomingConnection.init(conn:)(v5);
    sub_10000712C(&qword_1000A03C8, &unk_1000805F0);
    return sub_10007A070();
  }
}

uint64_t _s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF_0(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 32);
    type = xpc_get_type(a1);
    v6 = XPCTypeError.getter();
    ObjectType = swift_getObjectType();
    if (type == v6)
    {
      (*(v4 + 8))(a1, ObjectType, v4);
    }

    else
    {
      (*(v4 + 16))(a1, ObjectType, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t getTimeIntervalSince1970(Date:)()
{
  result = sub_1000799B0();
  v2 = (*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v3 = v1 < 0.0 && ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v1 >= 0.0)
  {
    v2 = 0;
  }

  v4 = (*&v1 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v2;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v4 = 1;
  }

  if ((v4 | v3))
  {
    return 0;
  }

  if (v1 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v1 < 9.22337204e18)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100077C14()
{
  sub_10000712C(&qword_10009FFE8, &qword_100080150);
  v0 = sub_10000712C(&qword_10009FFF0, &qword_100080158);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10007DF40;
  v4 = (v3 + v2);
  v5 = (v4 + *(v0 + 48));
  *v4 = XPC_ACTIVITY_PRIORITY;
  *v5 = sub_100079F10();
  v5[1] = v6;
  type metadata accessor for XPCObject();
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_POWER_NAP)
  {
    v8 = (v4 + v1);
    v9 = *(v0 + 48);
    *v8 = XPC_ACTIVITY_POWER_NAP;
    *(v8 + v9) = 1;
    result = swift_storeEnumTagMultiPayload();
    if (XPC_ACTIVITY_POST_INSTALL)
    {
      v10 = *(v0 + 48);
      v11 = (v4 + 2 * v1);
      *v11 = XPC_ACTIVITY_POST_INSTALL;
      *(v11 + v10) = 1;
      swift_storeEnumTagMultiPayload();
      v12 = sub_100071664(v3);
      swift_setDeallocating();
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      static PostInstallActivityConfig.activityFlags = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *PostInstallActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_1000A69A0 != -1)
  {
    swift_once();
  }

  return &static PostInstallActivityConfig.activityFlags;
}

uint64_t static PostInstallActivityConfig.activityFlags.getter()
{
  if (qword_1000A69A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static PostInstallActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_1000A69A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PostInstallActivityConfig.activityFlags = a1;
}

uint64_t (*static PostInstallActivityConfig.activityFlags.modify())()
{
  if (qword_1000A69A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100077FE0()
{
  sub_10000712C(&qword_10009FFE8, &qword_100080150);
  v0 = sub_10000712C(&qword_10009FFF0, &qword_100080158);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100080650;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = XPC_ACTIVITY_REPEATING;
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = XPC_ACTIVITY_DELAY;
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = XPC_ACTIVITY_GRACE_PERIOD;
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = XPC_ACTIVITY_PRIORITY;
  *v11 = sub_100079F10();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = XPC_ACTIVITY_ALLOW_BATTERY;
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = XPC_ACTIVITY_POWER_NAP;
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = XPC_ACTIVITY_EXPECTED_DURATION;
  *(v20 + v21) = XPC_ACTIVITY_INTERVAL_1_MIN;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_NAME)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = &v4[v1];
  v23 = (v22 + *(v0 + 48));
  *v22 = XPC_ACTIVITY_GROUP_NAME;
  *v23 = 0xD000000000000025;
  v23[1] = 0x8000000100084B30;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT;
  *(v24 + v25) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_DISK_INTENSIVE)
  {
    v26 = *(v0 + 48);
    v27 = (v4 + 10 * v1);
    *v27 = XPC_ACTIVITY_DISK_INTENSIVE;
    *(v27 + v26) = 1;
    swift_storeEnumTagMultiPayload();
    v28 = sub_100071664(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static CacheCleanupActivityConfig.activityFlags = v28;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *CacheCleanupActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_1000A69A8 != -1)
  {
    swift_once();
  }

  return &static CacheCleanupActivityConfig.activityFlags;
}

uint64_t static CacheCleanupActivityConfig.activityFlags.getter()
{
  if (qword_1000A69A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CacheCleanupActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_1000A69A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CacheCleanupActivityConfig.activityFlags = a1;
}

uint64_t (*static CacheCleanupActivityConfig.activityFlags.modify())()
{
  if (qword_1000A69A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

Swift::Int sub_10007856C()
{
  v1 = *v0;
  sub_10007A730();
  sub_10007A750(v1);
  return sub_10007A760();
}

Swift::Int sub_1000785E0()
{
  v1 = *v0;
  sub_10007A730();
  sub_10007A750(v1);
  return sub_10007A760();
}

unint64_t sub_100078624@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t XPCMessage.init(ty:payload:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v11 = a2;
  swift_unknownObjectRetain();
  v8 = xpc_int64_create(a1);
  XPCObject.init(_:)(v8, v7);
  XPCDictionary.subscript.setter(v7);
  swift_unknownObjectRelease();
  return v11;
}

void *XPCMessage.init(fromXPC:)()
{
  v0 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = (&v9 - v2);
  swift_getObjectType();
  rawValue = OS_xpc_object.type()()._rawValue;
  if (rawValue != XPCTypeDictionary.getter())
  {
    goto LABEL_2;
  }

  v5 = swift_unknownObjectRetain();
  v6 = XPCIncomingConnection.init(conn:)(v5);
  XPCDictionary.subscript.getter(v6, v3);
  swift_unknownObjectRelease();
  v7 = type metadata accessor for XPCObject();
  if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
  {
    swift_unknownObjectRelease();
    sub_1000791C4(v3);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    swift_unknownObjectRelease();
    sub_100029AD4(v3);
    return 0;
  }

  result = v6;
  if (*v3 >= 5uLL)
  {
LABEL_2:
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t XPCMessage.description.getter(void *a1, char a2)
{
  v43 = type metadata accessor for XPCObject();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v43);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v39 - v10;
  v45 = 0;
  v46 = 0xE000000000000000;
  LOBYTE(v44) = a2;
  sub_10007A480();
  v47._countAndFlagsBits = 2683;
  v47._object = 0xE200000000000000;
  sub_100079F00(v47);
  v42 = a1;
  v12 = XPCDictionary.keys.getter(a1);
  v41 = *(v12 + 16);
  if (!v41)
  {
LABEL_17:

    v35 = sub_100079D60();
    v37 = v36;

    v48._countAndFlagsBits = v35;
    v48._object = v37;
    sub_100079F00(v48);

    v49._countAndFlagsBits = 125;
    v49._object = 0xE100000000000000;
    sub_100079F00(v49);
    return v45;
  }

  v13 = 0;
  v40 = (v4 + 48);
  v14 = (v12 + 40);
  v15 = &_swiftEmptyDictionarySingleton;
  v39 = v12;
  while (v13 < *(v12 + 16))
  {
    v19 = *(v14 - 1);
    v18 = *v14;

    XPCDictionary.subscript.getter(v42, v11);
    if ((*v40)(v11, 1, v43) == 1)
    {
      goto LABEL_21;
    }

    v20 = v11;
    v21 = v7;
    sub_100029A0C(v11, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v15;
    v23 = sub_10000A0FC(v19, v18);
    v25 = v15[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v15[3] < v28)
    {
      sub_100078C48(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_10000A0FC(v19, v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      if (v29)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v34 = v23;
    sub_100078F84();
    v23 = v34;
    if (v29)
    {
LABEL_3:
      v16 = v23;

      v15 = v44;
      v17 = v44[7] + *(v4 + 72) * v16;
      v7 = v21;
      sub_10007922C(v21, v17);
      goto LABEL_4;
    }

LABEL_13:
    v15 = v44;
    v44[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v15[6] + 16 * v23);
    *v31 = v19;
    v31[1] = v18;
    v7 = v21;
    sub_100029A0C(v21, v15[7] + *(v4 + 72) * v23);
    v32 = v15[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_20;
    }

    v15[2] = v33;
LABEL_4:
    ++v13;
    v14 += 2;
    v12 = v39;
    v11 = v20;
    if (v41 == v13)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t sub_100078C48(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCObject();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_10000712C(&qword_1000A03D8, "b^");
  v44 = a2;
  result = sub_10007A4C0();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_100029A0C(v31, v45);
      }

      else
      {
        sub_100029A70(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_100029A0C(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_100078F84()
{
  v1 = v0;
  v2 = type metadata accessor for XPCObject();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000712C(&qword_1000A03D8, "b^");
  v5 = *v0;
  v6 = sub_10007A4B0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_100029A70(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_100029A0C(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1000791C4(uint64_t a1)
{
  v2 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007922C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100079294()
{
  result = qword_1000A03D0;
  if (!qword_1000A03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A03D0);
  }

  return result;
}

uint64_t sub_1000792E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_100079330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCMessage.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
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