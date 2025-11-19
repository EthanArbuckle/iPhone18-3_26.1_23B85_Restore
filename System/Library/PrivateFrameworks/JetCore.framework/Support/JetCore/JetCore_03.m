uint64_t sub_10004DD74()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 2400);

  *(v0 + 2464) = *(v0 + 2424);
  v78 = *(v0 + 2368);
  v79 = *(v0 + 2376);
  v96 = *(v0 + 2288);
  v3 = *(v0 + 196);
  v4 = *(v0 + 2208);
  v5 = *(v0 + 2200);
  v6 = *(v0 + 2192);
  v7 = *(v0 + 2160);
  v91 = *(v0 + 2152);
  v93 = *(v0 + 2280);
  v88 = *(v0 + 2136);
  v89 = *(v0 + 2120);
  v77 = *(v0 + 2112);
  v8 = *(v0 + 2088);
  v85 = *(v0 + 1824);
  (*(*(v0 + 2064) + 8))(*(v0 + 2072), *(v0 + 2056));
  TaskLocal.get()();
  v83 = *(v0 + 408);
  sub_100001CC0((v0 + 376), *(v0 + 400));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001000896E0;
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 1648) = v8;
  v10 = sub_1000061A4((v0 + 1624));
  v78(v10, v77, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1624, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0x3A726F727245202ELL;
  v11._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  swift_getErrorValue();
  v12 = *(v0 + 1680);
  v13 = *(v0 + 1688);
  *(v0 + 1264) = v13;
  v14 = sub_1000061A4((v0 + 1240));
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1240, &qword_1000A5630, &unk_100083BF0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 376));
  v93(v88, v91, v89);
  v16 = *(v85 + 40);
  sub_1000064B4(v85, v0 + 1096);
  v17 = AssetPushSubscriptionRecord.assetURLString.getter();
  if (!v18)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
LABEL_13:
    sub_100001D4C((v0 + 1096));
    goto LABEL_18;
  }

  v19 = v17;
  v20 = v18;
  v21 = AssetPushSubscriptionRecord.bundleID.getter();
  if (!v22)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
LABEL_12:

    goto LABEL_13;
  }

  v23 = v21;
  v24 = v22;
  v25 = AssetPushSubscriptionRecord.usageID.getter();
  if (!v26)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));

    goto LABEL_12;
  }

  v92 = v26;
  v94 = v25;
  v97 = v23;
  v27 = AssetPushSubscriptionRecord.priority.getter();
  if ((v27 & 0x100000000) != 0 || (v28 = sub_10005B2BC(v27), v28 == 6))
  {
    v28 = 0;
  }

  v90 = v28;
  v29 = *(v0 + 2136);
  v30 = *(v0 + 1928);
  v31 = *(v0 + 1920);
  v32 = *(v0 + 1880);
  AssetPushSubscriptionRecord.serverDate.getter();
  v33 = *(v30 + 48);
  if (v33(v32, 1, v31) == 1)
  {
    v34 = *(v0 + 1880);
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
    sub_10000DCA0(v34, &qword_1000A56E0, &unk_100083BE0);
    v35 = 0.0;
    v36 = 1;
  }

  else
  {
    v37 = *(v0 + 1920);
    v38 = *(v0 + 1872);
    v86 = *(*(v0 + 1928) + 32);
    (v86)(*(v0 + 1944), *(v0 + 1880), v37);
    AssetPushSubscriptionRecord.scheduleToDate.getter();
    v39 = v33(v38, 1, v37);
    v40 = *(v0 + 2136);
    v41 = *(v0 + 2128);
    v42 = *(v0 + 2120);
    if (v39 == 1)
    {
      v43 = *(v0 + 1872);
      (*(*(v0 + 1928) + 8))(*(v0 + 1944), *(v0 + 1920));
      (*(v41 + 8))(v40, v42);
      sub_10000DCA0(v43, &qword_1000A56E0, &unk_100083BE0);
      v35 = 0.0;
      v36 = 1;
    }

    else
    {
      v44 = *(v0 + 1952);
      v80 = *(v0 + 1944);
      v81 = *(v0 + 1936);
      v82 = *(v0 + 2120);
      v84 = *(v0 + 2136);
      v45 = *(v0 + 1928);
      v46 = *(v0 + 1920);
      v47 = *(v0 + 1872);
      v86();
      v87 = *(v0 + 1128);
      sub_100001CC0((v0 + 1096), *(v0 + 1120));
      dispatch thunk of DateProvider.now.getter();
      Date.timeIntervalSince(_:)();
      v49 = v48;
      v50 = *(v45 + 8);
      v50(v44, v46);
      Date.timeIntervalSince(_:)();
      v52 = v51;
      v50(v81, v46);
      v50(v80, v46);
      (*(v41 + 8))(v84, v82);
      v36 = 0;
      v35 = v49 / v52;
    }
  }

  v53 = *(v0 + 1832);
  *(v0 + 2472) = v36;
  *(v0 + 112) = v19;
  *(v0 + 120) = v20;
  *(v0 + 128) = v97;
  *(v0 + 136) = v24;
  *(v0 + 144) = v94;
  *(v0 + 152) = v92;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = v90;
  *(v0 + 177) = 0;
  *(v0 + 178) = v16;
  *(v0 + 179) = *(v0 + 102);
  *(v0 + 183) = *(v0 + 106);
  *(v0 + 184) = v35;
  *(v0 + 192) = *(v0 + 2472);
  sub_100001D4C((v0 + 1096));
  v54 = v53[4];
  sub_100001CC0(v53, v53[3]);
  v55 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v55;
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = *(v0 + 192);
  v56 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v56;
  sub_10005BD64();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();
  sub_10005BDB8(v0 + 112);
LABEL_18:
  v57 = *(v0 + 2152);
  v58 = *(v0 + 1888);
  v59 = *(v0 + 1840);
  AssetPushSubscriptionRecord.serverDate.getter();
  v60 = *sub_100001CC0(v59, v59[3]);
  *(v0 + 1040) = type metadata accessor for MetricsPipelineManager();
  *(v0 + 1048) = &off_1000A0070;
  *(v0 + 1016) = v60;

  if (v16)
  {
    if (v16 == 1)
    {
      v61 = 0xEB0000000065636ELL;
      v62 = 0x616E65746E69616DLL;
    }

    else
    {
      v61 = 0xEC0000007463656ELL;
      v62 = 0x6E6F636552737061;
    }
  }

  else
  {
    v61 = 0xE900000000000064;
    v62 = 0x656C756465686373;
  }

  v63 = *(v0 + 2360);
  v64 = *(v0 + 2352);
  v65 = *(v0 + 2312);
  v95 = v65;
  v98 = *(v0 + 2328);
  v66 = *(v0 + 2304);
  v67 = *(v0 + 2296);
  v68 = *(v0 + 1856);
  v69 = *(v0 + 1848);
  if ((v63 & &_mh_execute_header) != 0)
  {
    v70 = 0;
  }

  else
  {
    v70 = v63;
  }

  if ((v64 & &_mh_execute_header) != 0)
  {
    v71 = 0;
  }

  else
  {
    v71 = v64;
  }

  sub_100002758(*(v0 + 1888), v68 + *(v69 + 48), &qword_1000A56E0, &unk_100083BE0);
  *v68 = v95;
  *(v68 + 16) = v98;
  *(v68 + 32) = v67;
  *(v68 + 40) = v66;
  *(v68 + 48) = 0u;
  *(v68 + 64) = 0u;
  *(v68 + 80) = v62;
  *(v68 + 88) = v61;
  *(v68 + 96) = 0;
  *(v68 + 104) = v71;
  v72 = v68 + *(v69 + 52);
  *v72 = v70;
  *(v72 + 8) = BYTE4(v63) & 1;
  v73 = *sub_100001CC0((v0 + 1016), *(v0 + 1040));
  v74 = swift_task_alloc();
  *(v0 + 2448) = v74;
  *v74 = v0;
  v74[1] = sub_10005192C;
  v75 = *(v0 + 1856);

  return sub_100038808(v75);
}

uint64_t sub_10004E584()
{
  v2 = *(*v1 + 2432);
  v5 = *v1;
  *(*v1 + 2440) = v0;

  if (v0)
  {
    v3 = sub_10004FBA8;
  }

  else
  {
    v3 = sub_10004E698;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004E698()
{
  v1 = *(v0 + 1896);
  sub_10000DBEC(*(v0 + 1864));
  sub_10000DCA0(v1, &qword_1000A56E0, &unk_100083BE0);
  v205 = *(v0 + 2440);
  v196 = *(v0 + 2344);
  v2 = *(v0 + 2304);
  v3 = *(v0 + 2296);
  v4 = *(v0 + 2072);
  v5 = *(v0 + 2064);
  v6 = *(v0 + 2056);
  v7 = *(v0 + 2024);
  v8 = *(v0 + 2016);
  v9 = *(v0 + 2008);
  sub_100001D4C((v0 + 536));
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v165 = (v0 + 1776);
  sub_10006A688((v0 + 1752), v3, v2);
  v10 = *(v0 + 1760);

  v11 = *(v0 + 488);
  sub_100001CC0((v0 + 456), *(v0 + 480));
  v12 = v205;
  dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
  v13 = Hasher._combine(_:) + 4;
  v206 = v0;
  if (v12)
  {
    v14 = *(v0 + 2272);
    v15 = *(v0 + 196);
    v16 = *(v206 + 2208);
    v17 = *(v206 + 2200);
    v18 = *(v206 + 2192);
    TaskLocal.get()();
    v19 = *(v206 + 928);
    sub_100001CC0((v206 + 896), *(v206 + 920));
    v0 = v206;
    v13 = Hasher._combine(_:) + 4;
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v206 + 896));
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = 0;
      v22 = 1;
      v23 = 1;
      goto LABEL_68;
    }

    v20 = 0;
    v21 = *(v206 + 2272);
    v22 = 1;
    v23 = 1;
  }

  else
  {
    v24 = *(v0 + 2272);
    v23 = 0;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = 0;
      v22 = 1;
      goto LABEL_68;
    }

    v20 = 0;
    v21 = *(v0 + 2272);
    v22 = 1;
  }

LABEL_6:
  v25 = 0x8000000100089650;
  v26 = "App with bundle ID ";
  v27 = "com.apple.jetpackctl";
  v28 = "ully refreshed asset at URL: ";
  v29 = "ownload attempts: ";
  v30 = *(v13 + 156);
  v31 = v22;
  v32 = v23;
LABEL_7:
  v167 = v29;
  v169 = v28;
  v171 = v27;
  v173 = v26;
  v176 = v25;
  v184 = v30;
  v34 = *(v21 + 2);
  v33 = *(v21 + 3);
  if (v34 >= v33 >> 1)
  {
    v35 = sub_10001EE94((v33 > 1), v34 + 1, 1, v21);
  }

  else
  {
    v35 = v21;
  }

  v36 = *(v0 + 2152);
  v37 = *(v0 + 2128);
  v38 = *(v0 + 2120);
  (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
  (*(v37 + 8))(v36, v38);
  *(v35 + 2) = v34 + 1;
  v39 = &v35[32 * v34];
  *(v39 + 4) = v31;
  *(v39 + 5) = 0;
  *(v39 + 6) = v32;
  *(v39 + 7) = v20;
LABEL_10:
  v40 = *(v0 + 2264) + 1;
  if (v40 != *(v0 + 2256))
  {
    v179 = v35;
    do
    {
      *(v0 + 2272) = v35;
      *(v0 + 2264) = v40;
      v51 = *(v0 + 2176);
      if (v40 >= *(v51 + 16))
      {
        __break(1u);
        goto LABEL_59;
      }

      v52 = *(v0 + 2152);
      v53 = *(v0 + 2128);
      v54 = *(v0 + 2120);
      v55 = *(v53 + 16);
      v53 += 16;
      v56 = v51 + ((*(v0 + 284) + 32) & ~*(v0 + 284)) + *(v53 + 56) * v40;
      *(v0 + 2280) = v55;
      *(v0 + 2288) = v53 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v55(v52, v56, v54);
      v57 = AssetPushSubscriptionRecord.assetURLString.getter();
      *(v0 + 2296) = v57;
      *(v0 + 2304) = v58;
      if (v58)
      {
        v59 = v57;
        v60 = v58;
        v61 = *(v0 + 2096);
        v62 = *(v0 + 2088);
        v63 = *(v0 + 2080);
        URL.init(string:)();
        if ((*(v61 + 48))(v63, 1, v62) == 1)
        {
          v64 = *(v0 + 2080);

          sub_10000DCA0(v64, &qword_1000A4EF0, &unk_100083C10);
        }

        else
        {
          v65 = *(v0 + 2152);
          (*(*(v0 + 2096) + 32))(*(v0 + 2112), *(v0 + 2080), *(v0 + 2088));
          v66 = AssetPushSubscriptionRecord.bundleID.getter();
          *(v0 + 2312) = v66;
          *(v0 + 2320) = v67;
          if (v67)
          {
            v68 = v66;
            v69 = v67;
            v70 = *(v0 + 2152);
            *(v0 + 2328) = AssetPushSubscriptionRecord.usageID.getter();
            *(v0 + 2336) = v71;
            if (v71)
            {
              v72 = *(v0 + 2152);
              v73 = AssetPushSubscriptionRecord.id.getter();
              *(v0 + 2344) = v73;
              if ((v73 & 0x100000000) == 0)
              {
                if ((v68 != 0xD000000000000014 || v69 != v176) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v76 = *(v0 + 520);
                  v198 = *(v0 + 528);
                  sub_100001CC0((v0 + 496), v76);
                  if (((*(v198 + 8))(v68, v69, v76) & 1) == 0)
                  {
                    v77 = *(v0 + 196);
                    v78 = *(v0 + 2208);
                    v79 = *(v0 + 2200);
                    v80 = *(v0 + 2192);
                    v81 = *(v0 + 2160);

                    TaskLocal.get()();
                    v199 = *(v0 + 1008);
                    sub_100001CC0((v0 + 976), *(v0 + 1000));
                    *(swift_allocObject() + 16) = v184;
                    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v82._countAndFlagsBits = 0xD000000000000013;
                    v82._object = (v171 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v82);
                    *(v0 + 1456) = &type metadata for String;
                    *(v0 + 1432) = v68;
                    *(v0 + 1440) = v69;
                    LogMessage.StringInterpolation.appendInterpolation(safe:)();
                    sub_10000DCA0(v0 + 1432, &qword_1000A5630, &unk_100083BF0);
                    v83._countAndFlagsBits = 0xD000000000000024;
                    v83._object = (v173 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v83);
                    LogMessage.init(stringInterpolation:)();
                    Logger.info(_:)();

                    sub_100001D4C((v0 + 976));
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v179 = sub_10001EE94(0, *(v179 + 2) + 1, 1, v179);
                    }

                    v85 = *(v179 + 2);
                    v84 = *(v179 + 3);
                    if (v85 >= v84 >> 1)
                    {
                      v179 = sub_10001EE94((v84 > 1), v85 + 1, 1, v179);
                    }

                    v86 = *(v0 + 2152);
                    v87 = *(v0 + 2128);
                    v88 = *(v0 + 2120);
                    (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
                    (*(v87 + 8))(v86, v88);
                    v35 = v179;
                    *(v179 + 2) = v85 + 1;
                    v89 = &v179[32 * v85];
                    *(v89 + 4) = 0;
                    *(v89 + 5) = 0;
                    *(v89 + 6) = 0;
                    *(v89 + 7) = 1;
                    goto LABEL_10;
                  }
                }

                if ((sub_10006DD60(v59, v60, *v165) & 1) == 0)
                {
                  goto LABEL_63;
                }

                v90 = *(v0 + 196);
                v91 = *(v0 + 2208);
                v189 = *(v0 + 2200);
                v92 = *(v0 + 2192);
                v93 = *(v0 + 2160);

                TaskLocal.get()();
                v200 = *(v0 + 768);
                sub_100001CC0((v0 + 736), *(v0 + 760));
                *(swift_allocObject() + 16) = v184;
                LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v94._countAndFlagsBits = 0xD00000000000002DLL;
                v94._object = (v167 | 0x8000000000000000);
                LogMessage.StringInterpolation.appendLiteral(_:)(v94);
                *(v0 + 1200) = &type metadata for String;
                *(v0 + 1176) = v59;
                *(v0 + 1184) = v60;
                LogMessage.StringInterpolation.appendInterpolation(safe:)();
                sub_10000DCA0(v0 + 1176, &qword_1000A5630, &unk_100083BF0);
                v95._object = (v169 | 0x8000000000000000);
                v95._countAndFlagsBits = 0xD000000000000014;
                LogMessage.StringInterpolation.appendLiteral(_:)(v95);
                LogMessage.init(stringInterpolation:)();
                Logger.error(_:)();

                sub_100001D4C((v0 + 736));
                v96 = *(v0 + 488);
                sub_100001CC0((v0 + 456), *(v0 + 480));
                dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v21 = v179;
                v22 = 0;
                v23 = 0;
                v31 = 0;
                v32 = 0;
                v20 = 1;
                v30 = v184;
                v13 = (Hasher._combine(_:) + 4);
                v98 = 1;
                v26 = v173;
                v25 = v176;
                v28 = v169;
                v27 = v171;
                v29 = v167;
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_7;
                }

LABEL_68:
                v20 = v98;
                v21 = sub_10001EE94(0, *(*(v0 + 2272) + 16) + 1, 1, *(v0 + 2272));
                goto LABEL_6;
              }

              (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
            }

            else
            {
              (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
            }
          }

          else
          {
            (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
          }
        }
      }

      v74 = *(v0 + 2152);
      v75 = AssetPushSubscriptionRecord.id.getter();
      if ((v75 & 0x100000000) != 0)
      {
        v186 = 0x296C696E28;
        v188 = 0xE500000000000000;
      }

      else
      {
        *(v0 + 108) = v75;
        v186 = dispatch thunk of CustomStringConvertible.description.getter();
        v188 = v41;
      }

      v42 = *(v0 + 196);
      v43 = *(v206 + 2208);
      v44 = *(v206 + 2200);
      v45 = *(v206 + 2192);
      v46 = *(v206 + 2160);
      v47 = *(v206 + 2128);
      v192 = *(v206 + 2120);
      v197 = *(v206 + 2152);
      TaskLocal.get()();
      v48 = *(v206 + 608);
      sub_100001CC0((v206 + 576), *(v206 + 600));
      v0 = v206;
      *(swift_allocObject() + 16) = v184;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v49._countAndFlagsBits = 0xD00000000000002FLL;
      v49._object = 0x8000000100089550;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      *(v206 + 1424) = &type metadata for String;
      *(v206 + 1400) = v186;
      *(v206 + 1408) = v188;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v206 + 1400, &qword_1000A5630, &unk_100083BF0);
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v50);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v47 + 8))(v197, v192);
      sub_100001D4C((v206 + 576));
      v40 = *(v206 + 2264) + 1;
      v35 = v179;
    }

    while (v40 != *(v206 + 2256));
  }

  v99 = *(v0 + 2176);

  v100 = v35;
  v101 = *(v35 + 2);
  if (v101)
  {
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = v100 + 56;
    while (1)
    {
      v107 = *(v106 - 3);
      v108 = __OFADD__(v105, v107);
      v105 += v107;
      if (v108)
      {
        break;
      }

      v109 = *(v106 - 2);
      v108 = __OFADD__(v104, v109);
      v104 += v109;
      if (v108)
      {
        goto LABEL_60;
      }

      v110 = *(v106 - 1);
      v108 = __OFADD__(v103, v110);
      v103 += v110;
      if (v108)
      {
        goto LABEL_61;
      }

      v108 = __OFADD__(v102, *v106);
      v102 += *v106;
      if (v108)
      {
        goto LABEL_62;
      }

      v106 += 4;
      if (!--v101)
      {
        goto LABEL_50;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v183 = *(v0 + 372);
    v191 = *(v0 + 196);
    v195 = *(v0 + 2208);
    v204 = *(v0 + 2200);
    v149 = *(v0 + 2160);
    v150 = *(v0 + 2152);
    v151 = *(v0 + 2104);
    v152 = *(v0 + 2096);
    v153 = *(v0 + 2088);
    v178 = *(v0 + 2112);
    v181 = *(v0 + 2072);
    v154 = *(v0 + 2048);
    v155 = *(v0 + 2040);
    v175 = *(v0 + 2032);
    *(v0 + 2352) = AssetPushSubscriptionRecord.downloadAttempts.getter();
    *(v0 + 2360) = AssetPushSubscriptionRecord.priority.getter();
    v156 = *(v152 + 16);
    *(v0 + 2368) = v156;
    *(v0 + 2376) = (v152 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v156(v151, v178, v153);
    (*(v155 + 104))(v154, v183, v175);

    URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
    static OSLogger.jetPackAssets.getter();
    v157 = *(v0 + 1088);
    sub_100001CC0((v0 + 1056), *(v0 + 1080));
    *(swift_allocObject() + 16) = v184;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v158._countAndFlagsBits = 0xD000000000000017;
    v158._object = 0x80000001000896C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v158);
    *(v0 + 1360) = v153;
    sub_1000061A4((v0 + 1336));
    URLJetPackAssetRequest.url.getter();
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 1336, &qword_1000A5630, &unk_100083BF0);
    v159._countAndFlagsBits = 0;
    v159._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v159);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 1056));
    v160 = type metadata accessor for AssetSQLiteDatabase();
    v161 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v162 = swift_task_alloc();
    *(v0 + 2384) = v162;
    *v162 = v0;
    v162[1] = sub_10004CB18;
    v163 = *(v0 + 1816);

    return BaseObjectGraph.inject<A>(_:)(v0 + 1800, v160, v160);
  }

  else
  {
    v105 = 0;
    v104 = 0;
    v103 = 0;
    v102 = 0;
LABEL_50:
    v111 = *(v206 + 196);
    v112 = *(v206 + 2208);
    v113 = *(v206 + 2200);
    v114 = *(v206 + 2192);
    v115 = *(v206 + 2160);

    v116 = *(v206 + 1776);

    TaskLocal.get()();
    v193 = *(v206 + 680);
    sub_100001CC0((v206 + 656), v193);
    v117 = v206;
    *(swift_allocObject() + 16) = v184;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v118._countAndFlagsBits = 0xD000000000000034;
    v118._object = 0x8000000100089580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v118);
    *(v206 + 1488) = &type metadata for Int;
    *(v206 + 1464) = v105;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v206 + 1464, &qword_1000A5630, &unk_100083BF0);
    v119._countAndFlagsBits = 0x7070696B73202C20;
    v119._object = 0xEC000000203A6465;
    LogMessage.StringInterpolation.appendLiteral(_:)(v119);
    *(v206 + 1552) = &type metadata for Int;
    *(v206 + 1528) = v102;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v206 + 1528, &qword_1000A5630, &unk_100083BF0);
    v120._countAndFlagsBits = 0;
    v120._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v120);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v206 + 656));
    if (v104 >= 1)
    {
      v121 = *(v206 + 196);
      v122 = *(v206 + 2208);
      v123 = *(v206 + 2200);
      v124 = *(v206 + 2192);
      v125 = *(v206 + 2160);
      TaskLocal.get()();
      v201 = *(v206 + 888);
      sub_100001CC0((v206 + 856), *(v206 + 880));
      v117 = v206;
      *(swift_allocObject() + 16) = v184;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v126._countAndFlagsBits = 0xD00000000000003ALL;
      v126._object = 0x8000000100089610;
      LogMessage.StringInterpolation.appendLiteral(_:)(v126);
      *(v206 + 1616) = &type metadata for Int;
      *(v206 + 1592) = v104;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v206 + 1592, &qword_1000A5630, &unk_100083BF0);
      v127._countAndFlagsBits = 0;
      v127._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v127);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v206 + 856));
    }

    v128 = v117[277];
    if (v103 < 1)
    {
      v136 = v117[277];
    }

    else
    {
      v129 = *(v206 + 196);
      v130 = *(v206 + 2208);
      v131 = *(v206 + 2200);
      v132 = *(v206 + 2192);
      v133 = *(v206 + 2160);
      TaskLocal.get()();
      v202 = *(v206 + 808);
      sub_100001CC0((v206 + 776), *(v206 + 800));
      v117 = v206;
      *(swift_allocObject() + 16) = v184;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v134._countAndFlagsBits = 0xD00000000000004CLL;
      v134._object = 0x80000001000895C0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v134);
      *(v206 + 1232) = &type metadata for Int;
      *(v206 + 1208) = v103;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v206 + 1208, &qword_1000A5630, &unk_100083BF0);
      v135._countAndFlagsBits = 0;
      v135._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v135);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v206 + 776));
    }

    sub_100001D4C(v117 + 62);
    sub_100001D4C(v117 + 57);
    v137 = v117[270];
    v138 = v117[269];
    v139 = v117[268];
    v140 = v117[267];
    v141 = v117[264];
    v142 = v117[263];
    v143 = v117[260];
    v144 = v117[259];
    v145 = v117[256];
    v146 = v117[253];
    v164 = v117[250];
    v166 = v117[249];
    v168 = v117[246];
    v170 = v117[245];
    v172 = v117[244];
    v174 = v117[243];
    v177 = v117[242];
    v180 = v117[239];
    v182 = v117[238];
    v185 = v117[237];
    v187 = v117[236];
    v190 = v117[235];
    v194 = v117[234];
    v203 = v117[233];
    v207 = v117[232];

    v147 = v117[1];

    return v147();
  }
}

uint64_t sub_10004FBA8()
{
  v176 = (v0 + 1776);
  v1 = *(v0 + 2440);
  v2 = *(v0 + 196);
  v3 = *(v0 + 2208);
  v4 = *(v0 + 2200);
  v5 = *(v0 + 2192);
  v6 = *(v0 + 2160);
  v204 = *(v0 + 1896);
  sub_10000DBEC(*(v0 + 1864));
  TaskLocal.get()();
  v194 = *(v0 + 448);
  sub_100001CC0((v0 + 416), *(v0 + 440));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x8000000100086D40;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 1704);
  v9 = *(v0 + 1712);
  *(v0 + 1328) = v9;
  v10 = sub_1000061A4((v0 + 1304));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1304, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v204, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C((v0 + 416));
  v12 = *(v0 + 2344);
  v13 = *(v0 + 2304);
  v14 = *(v0 + 2296);
  v15 = *(v0 + 2072);
  v16 = *(v0 + 2064);
  v17 = *(v0 + 2056);
  v18 = *(v0 + 2024);
  v19 = *(v0 + 2016);
  v20 = *(v0 + 2008);
  sub_100001D4C((v0 + 536));
  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v15, v17);
  sub_10006A688((v0 + 1752), v14, v13);
  v21 = *(v0 + 1760);

  v22 = *(v0 + 488);
  sub_100001CC0((v0 + 456), *(v0 + 480));
  dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
  v205 = v0;
  v23 = *(v0 + 2272);
  v24 = 0;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    v26 = 1;
    goto LABEL_64;
  }

  v25 = *(v0 + 2272);
  v26 = 1;
LABEL_3:
  v27 = v24;
  v28 = 0x8000000100089650;
  v29 = "App with bundle ID ";
  v30 = "com.apple.jetpackctl";
  v31 = "ully refreshed asset at URL: ";
  v32 = "ownload attempts: ";
  v33 = v26;
LABEL_4:
  v165 = v31;
  v167 = v32;
  v169 = v30;
  v171 = v29;
  v173 = v28;
  v35 = *(v25 + 2);
  v34 = *(v25 + 3);
  if (v35 >= v34 >> 1)
  {
    v36 = sub_10001EE94((v34 > 1), v35 + 1, 1, v25);
  }

  else
  {
    v36 = v25;
  }

  v37 = *(v0 + 2152);
  v38 = *(v0 + 2128);
  v39 = *(v0 + 2120);
  (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
  (*(v38 + 8))(v37, v39);
  *(v36 + 2) = v35 + 1;
  v40 = &v36[32 * v35];
  *(v40 + 4) = v33;
  *(v40 + 5) = 0;
  *(v40 + 6) = 0;
  *(v40 + 7) = v27;
LABEL_7:
  v41 = *(v0 + 2264) + 1;
  if (v41 != *(v0 + 2256))
  {
    v179 = v36;
    do
    {
      *(v0 + 2272) = v36;
      *(v0 + 2264) = v41;
      v52 = *(v0 + 2176);
      if (v41 >= *(v52 + 16))
      {
        __break(1u);
        goto LABEL_56;
      }

      v53 = *(v0 + 2152);
      v54 = *(v0 + 2128);
      v55 = *(v0 + 2120);
      v56 = *(v54 + 16);
      v54 += 16;
      v57 = v52 + ((*(v0 + 284) + 32) & ~*(v0 + 284)) + *(v54 + 56) * v41;
      *(v0 + 2280) = v56;
      *(v0 + 2288) = v54 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v56(v53, v57, v55);
      v58 = AssetPushSubscriptionRecord.assetURLString.getter();
      *(v0 + 2296) = v58;
      *(v0 + 2304) = v59;
      if (v59)
      {
        v60 = v58;
        v61 = v59;
        v62 = *(v0 + 2096);
        v63 = *(v0 + 2088);
        v64 = *(v0 + 2080);
        URL.init(string:)();
        if ((*(v62 + 48))(v64, 1, v63) == 1)
        {
          v65 = *(v0 + 2080);

          sub_10000DCA0(v65, &qword_1000A4EF0, &unk_100083C10);
        }

        else
        {
          v66 = *(v0 + 2152);
          (*(*(v0 + 2096) + 32))(*(v0 + 2112), *(v0 + 2080), *(v0 + 2088));
          v67 = AssetPushSubscriptionRecord.bundleID.getter();
          *(v0 + 2312) = v67;
          *(v0 + 2320) = v68;
          if (v68)
          {
            v69 = v67;
            v70 = v68;
            v71 = *(v0 + 2152);
            *(v0 + 2328) = AssetPushSubscriptionRecord.usageID.getter();
            *(v0 + 2336) = v72;
            if (v72)
            {
              v73 = *(v0 + 2152);
              v74 = AssetPushSubscriptionRecord.id.getter();
              *(v0 + 2344) = v74;
              if ((v74 & 0x100000000) == 0)
              {
                if ((v69 != 0xD000000000000014 || v70 != v173) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v77 = *(v0 + 520);
                  v196 = *(v0 + 528);
                  sub_100001CC0((v0 + 496), v77);
                  if (((*(v196 + 8))(v69, v70, v77) & 1) == 0)
                  {
                    v78 = *(v0 + 196);
                    v79 = *(v0 + 2208);
                    v80 = *(v0 + 2200);
                    v81 = *(v0 + 2192);
                    v82 = *(v0 + 2160);

                    TaskLocal.get()();
                    v197 = *(v0 + 1008);
                    sub_100001CC0((v0 + 976), *(v0 + 1000));
                    *(swift_allocObject() + 16) = xmmword_1000839C0;
                    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v83._countAndFlagsBits = 0xD000000000000013;
                    v83._object = (v169 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v83);
                    *(v0 + 1456) = &type metadata for String;
                    *(v0 + 1432) = v69;
                    *(v0 + 1440) = v70;
                    LogMessage.StringInterpolation.appendInterpolation(safe:)();
                    sub_10000DCA0(v0 + 1432, &qword_1000A5630, &unk_100083BF0);
                    v84._countAndFlagsBits = 0xD000000000000024;
                    v84._object = (v171 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v84);
                    LogMessage.init(stringInterpolation:)();
                    Logger.info(_:)();

                    sub_100001D4C((v0 + 976));
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v179 = sub_10001EE94(0, *(v179 + 2) + 1, 1, v179);
                    }

                    v86 = *(v179 + 2);
                    v85 = *(v179 + 3);
                    if (v86 >= v85 >> 1)
                    {
                      v179 = sub_10001EE94((v85 > 1), v86 + 1, 1, v179);
                    }

                    v87 = *(v0 + 2152);
                    v88 = *(v0 + 2128);
                    v89 = *(v0 + 2120);
                    (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
                    (*(v88 + 8))(v87, v89);
                    v36 = v179;
                    *(v179 + 2) = v86 + 1;
                    v90 = &v179[32 * v86];
                    *(v90 + 4) = 0;
                    *(v90 + 5) = 0;
                    *(v90 + 6) = 0;
                    *(v90 + 7) = 1;
                    goto LABEL_7;
                  }
                }

                if ((sub_10006DD60(v60, v61, *v176) & 1) == 0)
                {
                  goto LABEL_60;
                }

                v91 = *(v0 + 196);
                v92 = *(v0 + 2208);
                v188 = *(v0 + 2200);
                v93 = *(v0 + 2192);
                v94 = *(v0 + 2160);

                TaskLocal.get()();
                v198 = *(v0 + 768);
                sub_100001CC0((v0 + 736), *(v0 + 760));
                *(swift_allocObject() + 16) = xmmword_1000839C0;
                LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v95._countAndFlagsBits = 0xD00000000000002DLL;
                v95._object = (v167 | 0x8000000000000000);
                LogMessage.StringInterpolation.appendLiteral(_:)(v95);
                *(v0 + 1200) = &type metadata for String;
                *(v0 + 1176) = v60;
                *(v0 + 1184) = v61;
                LogMessage.StringInterpolation.appendInterpolation(safe:)();
                sub_10000DCA0(v0 + 1176, &qword_1000A5630, &unk_100083BF0);
                v31 = v165;
                v96._object = (v165 | 0x8000000000000000);
                v96._countAndFlagsBits = 0xD000000000000014;
                LogMessage.StringInterpolation.appendLiteral(_:)(v96);
                LogMessage.init(stringInterpolation:)();
                Logger.error(_:)();

                sub_100001D4C((v0 + 736));
                v97 = *(v0 + 488);
                sub_100001CC0((v0 + 456), *(v0 + 480));
                dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v25 = v179;
                v26 = 0;
                v33 = 0;
                v27 = 1;
                v24 = 1;
                v29 = v171;
                v28 = v173;
                v32 = v167;
                v30 = v169;
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_4;
                }

LABEL_64:
                v25 = sub_10001EE94(0, *(*(v0 + 2272) + 16) + 1, 1, *(v0 + 2272));
                goto LABEL_3;
              }

              (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
            }

            else
            {
              (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
            }
          }

          else
          {
            (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
          }
        }
      }

      v75 = *(v0 + 2152);
      v76 = AssetPushSubscriptionRecord.id.getter();
      if ((v76 & 0x100000000) != 0)
      {
        v185 = 0x296C696E28;
        v187 = 0xE500000000000000;
      }

      else
      {
        *(v0 + 108) = v76;
        v185 = dispatch thunk of CustomStringConvertible.description.getter();
        v187 = v42;
      }

      v43 = *(v0 + 196);
      v44 = *(v205 + 2208);
      v45 = *(v205 + 2200);
      v46 = *(v205 + 2192);
      v47 = *(v205 + 2160);
      v48 = *(v205 + 2128);
      v191 = *(v205 + 2120);
      v195 = *(v205 + 2152);
      TaskLocal.get()();
      v49 = *(v205 + 608);
      sub_100001CC0((v205 + 576), *(v205 + 600));
      v0 = v205;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v50._countAndFlagsBits = 0xD00000000000002FLL;
      v50._object = 0x8000000100089550;
      LogMessage.StringInterpolation.appendLiteral(_:)(v50);
      *(v205 + 1424) = &type metadata for String;
      *(v205 + 1400) = v185;
      *(v205 + 1408) = v187;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v205 + 1400, &qword_1000A5630, &unk_100083BF0);
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v51);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v48 + 8))(v195, v191);
      sub_100001D4C((v205 + 576));
      v41 = *(v205 + 2264) + 1;
      v36 = v179;
    }

    while (v41 != *(v205 + 2256));
  }

  v99 = *(v0 + 2176);

  v100 = v36;
  v101 = *(v36 + 2);
  if (v101)
  {
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = v100 + 56;
    while (1)
    {
      v107 = *(v106 - 3);
      v108 = __OFADD__(v105, v107);
      v105 += v107;
      if (v108)
      {
        break;
      }

      v109 = *(v106 - 2);
      v108 = __OFADD__(v104, v109);
      v104 += v109;
      if (v108)
      {
        goto LABEL_57;
      }

      v110 = *(v106 - 1);
      v108 = __OFADD__(v103, v110);
      v103 += v110;
      if (v108)
      {
        goto LABEL_58;
      }

      v108 = __OFADD__(v102, *v106);
      v102 += *v106;
      if (v108)
      {
        goto LABEL_59;
      }

      v106 += 4;
      if (!--v101)
      {
        goto LABEL_47;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v183 = *(v0 + 372);
    v190 = *(v0 + 196);
    v193 = *(v0 + 2208);
    v203 = *(v0 + 2200);
    v149 = *(v0 + 2160);
    v150 = *(v0 + 2152);
    v151 = *(v0 + 2104);
    v152 = *(v0 + 2096);
    v153 = *(v0 + 2088);
    v178 = *(v0 + 2112);
    v181 = *(v0 + 2072);
    v154 = *(v0 + 2048);
    v155 = *(v0 + 2040);
    v175 = *(v0 + 2032);
    *(v0 + 2352) = AssetPushSubscriptionRecord.downloadAttempts.getter();
    *(v0 + 2360) = AssetPushSubscriptionRecord.priority.getter();
    v156 = *(v152 + 16);
    *(v0 + 2368) = v156;
    *(v0 + 2376) = (v152 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v156(v151, v178, v153);
    (*(v155 + 104))(v154, v183, v175);

    URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
    static OSLogger.jetPackAssets.getter();
    v157 = *(v0 + 1088);
    sub_100001CC0((v0 + 1056), *(v0 + 1080));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v158._countAndFlagsBits = 0xD000000000000017;
    v158._object = 0x80000001000896C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v158);
    *(v0 + 1360) = v153;
    sub_1000061A4((v0 + 1336));
    URLJetPackAssetRequest.url.getter();
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 1336, &qword_1000A5630, &unk_100083BF0);
    v159._countAndFlagsBits = 0;
    v159._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v159);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 1056));
    v160 = type metadata accessor for AssetSQLiteDatabase();
    v161 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v162 = swift_task_alloc();
    *(v0 + 2384) = v162;
    *v162 = v0;
    v162[1] = sub_10004CB18;
    v163 = *(v0 + 1816);

    return BaseObjectGraph.inject<A>(_:)(v0 + 1800, v160, v160);
  }

  else
  {
    v105 = 0;
    v104 = 0;
    v103 = 0;
    v102 = 0;
LABEL_47:
    v111 = *(v205 + 196);
    v112 = *(v205 + 2208);
    v113 = *(v205 + 2200);
    v114 = *(v205 + 2192);
    v115 = *(v205 + 2160);

    v116 = *(v205 + 1776);

    TaskLocal.get()();
    v199 = *(v205 + 688);
    sub_100001CC0((v205 + 656), *(v205 + 680));
    v117 = v205;
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v118._countAndFlagsBits = 0xD000000000000034;
    v118._object = 0x8000000100089580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v118);
    *(v205 + 1488) = &type metadata for Int;
    *(v205 + 1464) = v105;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v205 + 1464, &qword_1000A5630, &unk_100083BF0);
    v119._countAndFlagsBits = 0x7070696B73202C20;
    v119._object = 0xEC000000203A6465;
    LogMessage.StringInterpolation.appendLiteral(_:)(v119);
    *(v205 + 1552) = &type metadata for Int;
    *(v205 + 1528) = v102;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v205 + 1528, &qword_1000A5630, &unk_100083BF0);
    v120._countAndFlagsBits = 0;
    v120._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v120);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v205 + 656));
    if (v104 >= 1)
    {
      v121 = *(v205 + 196);
      v122 = *(v205 + 2208);
      v123 = *(v205 + 2200);
      v124 = *(v205 + 2192);
      v125 = *(v205 + 2160);
      TaskLocal.get()();
      v200 = *(v205 + 888);
      sub_100001CC0((v205 + 856), *(v205 + 880));
      v117 = v205;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v126._countAndFlagsBits = 0xD00000000000003ALL;
      v126._object = 0x8000000100089610;
      LogMessage.StringInterpolation.appendLiteral(_:)(v126);
      *(v205 + 1616) = &type metadata for Int;
      *(v205 + 1592) = v104;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v205 + 1592, &qword_1000A5630, &unk_100083BF0);
      v127._countAndFlagsBits = 0;
      v127._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v127);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v205 + 856));
    }

    v128 = v117[277];
    if (v103 < 1)
    {
      v136 = v117[277];
    }

    else
    {
      v129 = *(v205 + 196);
      v130 = *(v205 + 2208);
      v131 = *(v205 + 2200);
      v132 = *(v205 + 2192);
      v133 = *(v205 + 2160);
      TaskLocal.get()();
      v201 = *(v205 + 808);
      sub_100001CC0((v205 + 776), *(v205 + 800));
      v117 = v205;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v134._countAndFlagsBits = 0xD00000000000004CLL;
      v134._object = 0x80000001000895C0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v134);
      *(v205 + 1232) = &type metadata for Int;
      *(v205 + 1208) = v103;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v205 + 1208, &qword_1000A5630, &unk_100083BF0);
      v135._countAndFlagsBits = 0;
      v135._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v135);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v205 + 776));
    }

    sub_100001D4C(v117 + 62);
    sub_100001D4C(v117 + 57);
    v137 = v117[270];
    v138 = v117[269];
    v139 = v117[268];
    v140 = v117[267];
    v141 = v117[264];
    v142 = v117[263];
    v143 = v117[260];
    v144 = v117[259];
    v145 = v117[256];
    v146 = v117[253];
    v164 = v117[250];
    v166 = v117[249];
    v168 = v117[246];
    v170 = v117[245];
    v172 = v117[244];
    v174 = v117[243];
    v177 = v117[242];
    v180 = v117[239];
    v182 = v117[238];
    v184 = v117[237];
    v186 = v117[236];
    v189 = v117[235];
    v192 = v117[234];
    v202 = v117[233];
    v206 = v117[232];

    v147 = v117[1];

    return v147();
  }
}

uint64_t sub_1000511E0()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = v0[273];
  v2 = v0[270];
  TaskLocal.get()();
  v3 = v0[146];
  sub_100001CC0(v0 + 142, v0[145]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001000894E0;
  v7._countAndFlagsBits = 0xD000000000000033;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[216];
  v9 = v0[217];
  v0[162] = v9;
  v10 = sub_1000061A4(v0 + 159);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 159), &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 142);

  v12 = v0[270];
  v13 = v0[269];
  v14 = v0[268];
  v15 = v0[267];
  v16 = v0[264];
  v17 = v0[263];
  v18 = v0[260];
  v19 = v0[259];
  v20 = v0[256];
  v21 = v0[253];
  v24 = v0[250];
  v25 = v0[249];
  v26 = v0[246];
  v27 = v0[245];
  v28 = v0[244];
  v29 = v0[243];
  v30 = v0[242];
  v31 = v0[239];
  v32 = v0[238];
  v33 = v0[237];
  v34 = v0[236];
  v35 = v0[235];
  v36 = v0[234];
  v37 = v0[233];
  v38 = v0[232];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10005157C()
{
  v1 = v0[277];

  v29 = v0[279];
  v2 = v0[270];
  v3 = v0[269];
  v4 = v0[268];
  v5 = v0[267];
  v6 = v0[264];
  v7 = v0[263];
  v8 = v0[260];
  v9 = v0[259];
  v10 = v0[256];
  v11 = v0[253];
  v14 = v0[250];
  v15 = v0[249];
  v16 = v0[246];
  v17 = v0[245];
  v18 = v0[244];
  v19 = v0[243];
  v20 = v0[242];
  v21 = v0[239];
  v22 = v0[238];
  v23 = v0[237];
  v24 = v0[236];
  v25 = v0[235];
  v26 = v0[234];
  v27 = v0[233];
  v28 = v0[232];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100051750()
{
  v1 = v0[277];

  sub_100001D4C(v0 + 57);
  v29 = v0[281];
  v2 = v0[270];
  v3 = v0[269];
  v4 = v0[268];
  v5 = v0[267];
  v6 = v0[264];
  v7 = v0[263];
  v8 = v0[260];
  v9 = v0[259];
  v10 = v0[256];
  v11 = v0[253];
  v14 = v0[250];
  v15 = v0[249];
  v16 = v0[246];
  v17 = v0[245];
  v18 = v0[244];
  v19 = v0[243];
  v20 = v0[242];
  v21 = v0[239];
  v22 = v0[238];
  v23 = v0[237];
  v24 = v0[236];
  v25 = v0[235];
  v26 = v0[234];
  v27 = v0[233];
  v28 = v0[232];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10005192C()
{
  v2 = *(*v1 + 2448);
  v5 = *v1;
  *(*v1 + 2456) = v0;

  if (v0)
  {
    v3 = sub_100053008;
  }

  else
  {
    v3 = sub_100051A40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100051A40()
{
  v165 = (v0 + 1776);
  v2 = *(v0 + 1888);
  sub_10000DBEC(*(v0 + 1856));
  sub_10000DCA0(v2, &qword_1000A56E0, &unk_100083BE0);
  v3 = *(v0 + 2456);
  v4 = *(v0 + 2464);
  v5 = *(v0 + 2344);
  sub_100001D4C((v0 + 1016));

  v6 = *(v0 + 488);
  sub_100001CC0((v0 + 456), *(v0 + 480));
  dispatch thunk of AssetPushSubscriptionStore.incrementDownloadCounter(id:)();
  v207 = v0;
  if (!v3)
  {
    v15 = *(v0 + 2152);
    v16 = AssetPushSubscriptionRecord.downloadAttempts.getter();
    if ((v16 & &_mh_execute_header) != 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    else
    {
      v197 = *(v0 + 2272);
      v19 = *(v0 + 196);
      v20 = *(v0 + 2208);
      v21 = *(v0 + 2200);
      v22 = *(v0 + 2192);
      v23 = *(v0 + 2160);
      TaskLocal.get()();
      v192 = *(v0 + 848);
      sub_100001CC0((v0 + 816), *(v0 + 840));
      v12 = Hasher._combine(_:) + 4;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      v1 = 1;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v24._countAndFlagsBits = 0xD000000000000042;
      v24._object = 0x8000000100089760;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      *(v0 + 1584) = &type metadata for Int32;
      *(v0 + 1560) = v18;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 1560, &qword_1000A5630, &unk_100083BF0);
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 816));
      v15 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = 0;
        v14 = *(v0 + 2272);
        v1 = 1;
        goto LABEL_10;
      }
    }

    v98 = 0;
    goto LABEL_72;
  }

  v196 = *(v0 + 2272);
  v7 = *(v0 + 196);
  v8 = *(v207 + 2208);
  v9 = *(v207 + 2200);
  v10 = *(v207 + 2192);
  TaskLocal.get()();
  v11 = *(v207 + 928);
  sub_100001CC0((v207 + 896), *(v207 + 920));
  v12 = Hasher._combine(_:) + 4;
  v0 = v207;
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  sub_100001D4C((v207 + 896));
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    v98 = 0;
    v1 = 1;
    v15 = 1;
    goto LABEL_72;
  }

  v13 = 0;
  v14 = *(v207 + 2272);
  v1 = 1;
  v15 = 1;
LABEL_10:
  v26 = 0x8000000100089650;
  v27 = "App with bundle ID ";
  v28 = "com.apple.jetpackctl";
  v29 = "ully refreshed asset at URL: ";
  v30 = "ownload attempts: ";
  v31 = *(v12 + 156);
  v32 = v1;
  v33 = v15;
LABEL_11:
  v167 = v30;
  v169 = v29;
  v171 = v28;
  v173 = v27;
  v176 = v26;
  v184 = v31;
  v35 = *(v14 + 2);
  v34 = *(v14 + 3);
  if (v35 >= v34 >> 1)
  {
    v14 = sub_10001EE94((v34 > 1), v35 + 1, 1, v14);
  }

  v36 = *(v0 + 2152);
  v37 = *(v0 + 2128);
  v38 = *(v0 + 2120);
  (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
  (*(v37 + 8))(v36, v38);
  *(v14 + 2) = v35 + 1;
  v39 = &v14[32 * v35];
  *(v39 + 4) = 0;
  *(v39 + 5) = v32;
  *(v39 + 6) = v33;
  *(v39 + 7) = v13;
LABEL_14:
  v40 = *(v0 + 2264) + 1;
  if (v40 != *(v0 + 2256))
  {
    v179 = v14;
    do
    {
      *(v0 + 2272) = v14;
      *(v0 + 2264) = v40;
      v51 = *(v0 + 2176);
      if (v40 >= *(v51 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v52 = *(v0 + 2152);
      v53 = *(v0 + 2128);
      v54 = *(v0 + 2120);
      v55 = *(v53 + 16);
      v53 += 16;
      v56 = v51 + ((*(v0 + 284) + 32) & ~*(v0 + 284)) + *(v53 + 56) * v40;
      *(v0 + 2280) = v55;
      *(v0 + 2288) = v53 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v55(v52, v56, v54);
      v57 = AssetPushSubscriptionRecord.assetURLString.getter();
      *(v0 + 2296) = v57;
      *(v0 + 2304) = v58;
      if (v58)
      {
        v59 = v57;
        v60 = v58;
        v61 = *(v0 + 2096);
        v62 = *(v0 + 2088);
        v63 = *(v0 + 2080);
        URL.init(string:)();
        if ((*(v61 + 48))(v63, 1, v62) == 1)
        {
          v64 = *(v0 + 2080);

          sub_10000DCA0(v64, &qword_1000A4EF0, &unk_100083C10);
        }

        else
        {
          v65 = *(v0 + 2152);
          (*(*(v0 + 2096) + 32))(*(v0 + 2112), *(v0 + 2080), *(v0 + 2088));
          v66 = AssetPushSubscriptionRecord.bundleID.getter();
          *(v0 + 2312) = v66;
          *(v0 + 2320) = v67;
          if (v67)
          {
            v68 = v66;
            v69 = v67;
            v70 = *(v0 + 2152);
            *(v0 + 2328) = AssetPushSubscriptionRecord.usageID.getter();
            *(v0 + 2336) = v71;
            if (v71)
            {
              v72 = *(v0 + 2152);
              v73 = AssetPushSubscriptionRecord.id.getter();
              *(v0 + 2344) = v73;
              if ((v73 & 0x100000000) == 0)
              {
                if ((v68 != 0xD000000000000014 || v69 != v176) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v76 = *(v0 + 520);
                  v199 = *(v0 + 528);
                  sub_100001CC0((v0 + 496), v76);
                  if (((*(v199 + 8))(v68, v69, v76) & 1) == 0)
                  {
                    v77 = *(v0 + 196);
                    v78 = *(v0 + 2208);
                    v79 = *(v0 + 2200);
                    v80 = *(v0 + 2192);
                    v81 = *(v0 + 2160);

                    TaskLocal.get()();
                    v200 = *(v0 + 1008);
                    sub_100001CC0((v0 + 976), *(v0 + 1000));
                    *(swift_allocObject() + 16) = v184;
                    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v82._countAndFlagsBits = 0xD000000000000013;
                    v82._object = (v171 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v82);
                    *(v0 + 1456) = &type metadata for String;
                    *(v0 + 1432) = v68;
                    *(v0 + 1440) = v69;
                    LogMessage.StringInterpolation.appendInterpolation(safe:)();
                    sub_10000DCA0(v0 + 1432, &qword_1000A5630, &unk_100083BF0);
                    v83._countAndFlagsBits = 0xD000000000000024;
                    v83._object = (v173 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v83);
                    LogMessage.init(stringInterpolation:)();
                    Logger.info(_:)();

                    sub_100001D4C((v0 + 976));
                    v14 = v179;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v14 = sub_10001EE94(0, *(v179 + 2) + 1, 1, v179);
                    }

                    v85 = *(v14 + 2);
                    v84 = *(v14 + 3);
                    if (v85 >= v84 >> 1)
                    {
                      v14 = sub_10001EE94((v84 > 1), v85 + 1, 1, v14);
                    }

                    v86 = *(v0 + 2152);
                    v87 = *(v0 + 2128);
                    v88 = *(v0 + 2120);
                    (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
                    (*(v87 + 8))(v86, v88);
                    *(v14 + 2) = v85 + 1;
                    v89 = &v14[32 * v85];
                    *(v89 + 4) = 0;
                    *(v89 + 5) = 0;
                    *(v89 + 6) = 0;
                    *(v89 + 7) = 1;
                    goto LABEL_14;
                  }
                }

                if ((sub_10006DD60(v59, v60, *v165) & 1) == 0)
                {
                  goto LABEL_66;
                }

                v90 = *(v0 + 196);
                v91 = *(v0 + 2208);
                v189 = *(v0 + 2200);
                v92 = *(v0 + 2192);
                v93 = *(v0 + 2160);

                TaskLocal.get()();
                v201 = *(v0 + 768);
                sub_100001CC0((v0 + 736), *(v0 + 760));
                *(swift_allocObject() + 16) = v184;
                LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v94._countAndFlagsBits = 0xD00000000000002DLL;
                v94._object = (v167 | 0x8000000000000000);
                LogMessage.StringInterpolation.appendLiteral(_:)(v94);
                *(v0 + 1200) = &type metadata for String;
                *(v0 + 1176) = v59;
                *(v0 + 1184) = v60;
                LogMessage.StringInterpolation.appendInterpolation(safe:)();
                sub_10000DCA0(v0 + 1176, &qword_1000A5630, &unk_100083BF0);
                v95._object = (v169 | 0x8000000000000000);
                v95._countAndFlagsBits = 0xD000000000000014;
                LogMessage.StringInterpolation.appendLiteral(_:)(v95);
                LogMessage.init(stringInterpolation:)();
                Logger.error(_:)();

                sub_100001D4C((v0 + 736));
                v96 = *(v0 + 488);
                sub_100001CC0((v0 + 456), *(v0 + 480));
                dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
                v14 = v179;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v1 = 0;
                v15 = 0;
                v32 = 0;
                v33 = 0;
                v13 = 1;
                v31 = v184;
                v98 = 1;
                v27 = v173;
                v26 = v176;
                v29 = v169;
                v28 = v171;
                v30 = v167;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
LABEL_72:
                  v13 = v98;
                  v14 = sub_10001EE94(0, *(*(v0 + 2272) + 16) + 1, 1, *(v0 + 2272));
                  v12 = (Hasher._combine(_:) + 4);
                  goto LABEL_10;
                }

                goto LABEL_11;
              }

              (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
            }

            else
            {
              (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
            }
          }

          else
          {
            (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
          }
        }
      }

      v74 = *(v0 + 2152);
      v75 = AssetPushSubscriptionRecord.id.getter();
      if ((v75 & 0x100000000) != 0)
      {
        v186 = 0x296C696E28;
        v188 = 0xE500000000000000;
      }

      else
      {
        *(v0 + 108) = v75;
        v186 = dispatch thunk of CustomStringConvertible.description.getter();
        v188 = v41;
      }

      v42 = *(v0 + 196);
      v43 = *(v207 + 2208);
      v44 = *(v207 + 2200);
      v45 = *(v207 + 2192);
      v46 = *(v207 + 2160);
      v47 = *(v207 + 2128);
      v193 = *(v207 + 2120);
      v198 = *(v207 + 2152);
      TaskLocal.get()();
      v48 = *(v207 + 608);
      sub_100001CC0((v207 + 576), *(v207 + 600));
      v0 = v207;
      *(swift_allocObject() + 16) = v184;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v49._countAndFlagsBits = 0xD00000000000002FLL;
      v49._object = 0x8000000100089550;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      *(v207 + 1424) = &type metadata for String;
      *(v207 + 1400) = v186;
      *(v207 + 1408) = v188;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v207 + 1400, &qword_1000A5630, &unk_100083BF0);
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v50);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v47 + 8))(v198, v193);
      sub_100001D4C((v207 + 576));
      v40 = *(v207 + 2264) + 1;
      v14 = v179;
    }

    while (v40 != *(v207 + 2256));
  }

  v99 = *(v0 + 2176);

  v100 = *(v14 + 2);
  v101 = v14;
  if (v100)
  {
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = v101 + 56;
    while (1)
    {
      v107 = *(v106 - 3);
      v108 = __OFADD__(v105, v107);
      v105 += v107;
      if (v108)
      {
        break;
      }

      v109 = *(v106 - 2);
      v108 = __OFADD__(v104, v109);
      v104 += v109;
      if (v108)
      {
        goto LABEL_63;
      }

      v110 = *(v106 - 1);
      v108 = __OFADD__(v103, v110);
      v103 += v110;
      if (v108)
      {
        goto LABEL_64;
      }

      v108 = __OFADD__(v102, *v106);
      v102 += *v106;
      if (v108)
      {
        goto LABEL_65;
      }

      v106 += 4;
      if (!--v100)
      {
        goto LABEL_53;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v183 = *(v0 + 372);
    v191 = *(v0 + 196);
    v195 = *(v0 + 2208);
    v206 = *(v0 + 2200);
    v149 = *(v0 + 2160);
    v150 = *(v0 + 2152);
    v151 = *(v0 + 2104);
    v152 = *(v0 + 2096);
    v153 = *(v0 + 2088);
    v178 = *(v0 + 2112);
    v181 = *(v0 + 2072);
    v154 = *(v0 + 2048);
    v155 = *(v0 + 2040);
    v175 = *(v0 + 2032);
    *(v0 + 2352) = AssetPushSubscriptionRecord.downloadAttempts.getter();
    *(v0 + 2360) = AssetPushSubscriptionRecord.priority.getter();
    v156 = *(v152 + 16);
    *(v0 + 2368) = v156;
    *(v0 + 2376) = (v152 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v156(v151, v178, v153);
    (*(v155 + 104))(v154, v183, v175);

    URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
    static OSLogger.jetPackAssets.getter();
    v157 = *(v0 + 1088);
    sub_100001CC0((v0 + 1056), *(v0 + 1080));
    *(swift_allocObject() + 16) = v184;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v158._countAndFlagsBits = 0xD000000000000017;
    v158._object = 0x80000001000896C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v158);
    *(v0 + 1360) = v153;
    sub_1000061A4((v0 + 1336));
    URLJetPackAssetRequest.url.getter();
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 1336, &qword_1000A5630, &unk_100083BF0);
    v159._countAndFlagsBits = 0;
    v159._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v159);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 1056));
    v160 = type metadata accessor for AssetSQLiteDatabase();
    v161 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v162 = swift_task_alloc();
    *(v0 + 2384) = v162;
    *v162 = v0;
    v162[1] = sub_10004CB18;
    v163 = *(v0 + 1816);

    return BaseObjectGraph.inject<A>(_:)(v0 + 1800, v160, v160);
  }

  else
  {
    v105 = 0;
    v104 = 0;
    v103 = 0;
    v102 = 0;
LABEL_53:
    v111 = *(v207 + 196);
    v112 = *(v207 + 2208);
    v113 = *(v207 + 2200);
    v114 = *(v207 + 2192);
    v115 = *(v207 + 2160);

    v116 = *(v207 + 1776);

    TaskLocal.get()();
    v202 = *(v207 + 688);
    sub_100001CC0((v207 + 656), *(v207 + 680));
    v117 = v207;
    *(swift_allocObject() + 16) = v184;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v118._countAndFlagsBits = 0xD000000000000034;
    v118._object = 0x8000000100089580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v118);
    *(v207 + 1488) = &type metadata for Int;
    *(v207 + 1464) = v105;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v207 + 1464, &qword_1000A5630, &unk_100083BF0);
    v119._countAndFlagsBits = 0x7070696B73202C20;
    v119._object = 0xEC000000203A6465;
    LogMessage.StringInterpolation.appendLiteral(_:)(v119);
    *(v207 + 1552) = &type metadata for Int;
    *(v207 + 1528) = v102;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v207 + 1528, &qword_1000A5630, &unk_100083BF0);
    v120._countAndFlagsBits = 0;
    v120._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v120);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v207 + 656));
    if (v104 >= 1)
    {
      v121 = *(v207 + 196);
      v122 = *(v207 + 2208);
      v123 = *(v207 + 2200);
      v124 = *(v207 + 2192);
      v125 = *(v207 + 2160);
      TaskLocal.get()();
      v203 = *(v207 + 888);
      sub_100001CC0((v207 + 856), *(v207 + 880));
      v117 = v207;
      *(swift_allocObject() + 16) = v184;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v126._countAndFlagsBits = 0xD00000000000003ALL;
      v126._object = 0x8000000100089610;
      LogMessage.StringInterpolation.appendLiteral(_:)(v126);
      *(v207 + 1616) = &type metadata for Int;
      *(v207 + 1592) = v104;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v207 + 1592, &qword_1000A5630, &unk_100083BF0);
      v127._countAndFlagsBits = 0;
      v127._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v127);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v207 + 856));
    }

    v128 = v117[277];
    if (v103 < 1)
    {
      v136 = v117[277];
    }

    else
    {
      v129 = *(v207 + 196);
      v130 = *(v207 + 2208);
      v131 = *(v207 + 2200);
      v132 = *(v207 + 2192);
      v133 = *(v207 + 2160);
      TaskLocal.get()();
      v204 = *(v207 + 808);
      sub_100001CC0((v207 + 776), *(v207 + 800));
      v117 = v207;
      *(swift_allocObject() + 16) = v184;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v134._countAndFlagsBits = 0xD00000000000004CLL;
      v134._object = 0x80000001000895C0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v134);
      *(v207 + 1232) = &type metadata for Int;
      *(v207 + 1208) = v103;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v207 + 1208, &qword_1000A5630, &unk_100083BF0);
      v135._countAndFlagsBits = 0;
      v135._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v135);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v207 + 776));
    }

    sub_100001D4C(v117 + 62);
    sub_100001D4C(v117 + 57);
    v137 = v117[270];
    v138 = v117[269];
    v139 = v117[268];
    v140 = v117[267];
    v141 = v117[264];
    v142 = v117[263];
    v143 = v117[260];
    v144 = v117[259];
    v145 = v117[256];
    v146 = v117[253];
    v164 = v117[250];
    v166 = v117[249];
    v168 = v117[246];
    v170 = v117[245];
    v172 = v117[244];
    v174 = v117[243];
    v177 = v117[242];
    v180 = v117[239];
    v182 = v117[238];
    v185 = v117[237];
    v187 = v117[236];
    v190 = v117[235];
    v194 = v117[234];
    v205 = v117[233];
    v208 = v117[232];

    v147 = v117[1];

    return v147();
  }
}

uint64_t sub_100053008()
{
  v167 = (v0 + 1776);
  v1 = *(v0 + 2456);
  v2 = *(v0 + 196);
  v3 = *(v0 + 2208);
  v4 = *(v0 + 2200);
  v5 = *(v0 + 2192);
  v6 = *(v0 + 2160);
  v208 = *(v0 + 1888);
  sub_10000DBEC(*(v0 + 1856));
  TaskLocal.get()();
  v197 = *(v0 + 968);
  sub_100001CC0((v0 + 936), *(v0 + 960));
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v8._object = 0x8000000100086D40;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 1656);
  v10 = *(v0 + 1664);
  *(v0 + 1520) = v10;
  v11 = sub_1000061A4((v0 + 1496));
  (*(*(v10 - 8) + 16))(v11, v9, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1496, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v208, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C((v0 + 936));
  v13 = *(v0 + 2464);
  v14 = *(v0 + 2344);
  sub_100001D4C((v0 + 1016));

  v15 = *(v0 + 488);
  sub_100001CC0((v0 + 456), *(v0 + 480));
  dispatch thunk of AssetPushSubscriptionStore.incrementDownloadCounter(id:)();
  v209 = v0;
  v16 = *(v0 + 2152);
  v17 = AssetPushSubscriptionRecord.downloadAttempts.getter();
  if ((v17 & &_mh_execute_header) != 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_67;
  }

  v198 = *(v0 + 2272);
  v20 = *(v0 + 196);
  v21 = *(v0 + 2208);
  v22 = *(v0 + 2200);
  v23 = *(v0 + 2192);
  v24 = *(v0 + 2160);
  TaskLocal.get()();
  v193 = *(v0 + 848);
  sub_100001CC0((v0 + 816), *(v0 + 840));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  v7 = 1;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0xD000000000000042;
  v25._object = 0x8000000100089760;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v0 + 1584) = &type metadata for Int32;
  *(v0 + 1560) = v19;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1560, &qword_1000A5630, &unk_100083BF0);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 816));
  v16 = 0;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
LABEL_67:
    v100 = 0;
    goto LABEL_68;
  }

  v27 = 0;
  v28 = *(v0 + 2272);
  v7 = 1;
LABEL_7:
  v29 = 0x8000000100089650;
  v30 = "App with bundle ID ";
  v31 = "com.apple.jetpackctl";
  v32 = "ully refreshed asset at URL: ";
  v33 = "ownload attempts: ";
  v34 = v7;
  v35 = v16;
LABEL_8:
  v169 = v33;
  v171 = v32;
  v173 = v31;
  v175 = v30;
  v178 = v29;
  v37 = *(v28 + 2);
  v36 = *(v28 + 3);
  if (v37 >= v36 >> 1)
  {
    v28 = sub_10001EE94((v36 > 1), v37 + 1, 1, v28);
  }

  v38 = *(v0 + 2152);
  v39 = *(v0 + 2128);
  v40 = *(v0 + 2120);
  (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
  (*(v39 + 8))(v38, v40);
  *(v28 + 2) = v37 + 1;
  v41 = &v28[32 * v37];
  *(v41 + 4) = 0;
  *(v41 + 5) = v34;
  *(v41 + 6) = v35;
  *(v41 + 7) = v27;
LABEL_11:
  v42 = *(v0 + 2264) + 1;
  if (v42 != *(v0 + 2256))
  {
    v181 = v28;
    do
    {
      *(v0 + 2272) = v28;
      *(v0 + 2264) = v42;
      v53 = *(v0 + 2176);
      if (v42 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_59;
      }

      v54 = *(v0 + 2152);
      v55 = *(v0 + 2128);
      v56 = *(v0 + 2120);
      v57 = *(v55 + 16);
      v55 += 16;
      v58 = v53 + ((*(v0 + 284) + 32) & ~*(v0 + 284)) + *(v55 + 56) * v42;
      *(v0 + 2280) = v57;
      *(v0 + 2288) = v55 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v57(v54, v58, v56);
      v59 = AssetPushSubscriptionRecord.assetURLString.getter();
      *(v0 + 2296) = v59;
      *(v0 + 2304) = v60;
      if (v60)
      {
        v61 = v59;
        v62 = v60;
        v63 = *(v0 + 2096);
        v64 = *(v0 + 2088);
        v65 = *(v0 + 2080);
        URL.init(string:)();
        if ((*(v63 + 48))(v65, 1, v64) == 1)
        {
          v66 = *(v0 + 2080);

          sub_10000DCA0(v66, &qword_1000A4EF0, &unk_100083C10);
        }

        else
        {
          v67 = *(v0 + 2152);
          (*(*(v0 + 2096) + 32))(*(v0 + 2112), *(v0 + 2080), *(v0 + 2088));
          v68 = AssetPushSubscriptionRecord.bundleID.getter();
          *(v0 + 2312) = v68;
          *(v0 + 2320) = v69;
          if (v69)
          {
            v70 = v68;
            v71 = v69;
            v72 = *(v0 + 2152);
            *(v0 + 2328) = AssetPushSubscriptionRecord.usageID.getter();
            *(v0 + 2336) = v73;
            if (v73)
            {
              v74 = *(v0 + 2152);
              v75 = AssetPushSubscriptionRecord.id.getter();
              *(v0 + 2344) = v75;
              if ((v75 & 0x100000000) == 0)
              {
                if ((v70 != 0xD000000000000014 || v71 != v178) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v78 = *(v0 + 520);
                  v200 = *(v0 + 528);
                  sub_100001CC0((v0 + 496), v78);
                  if (((*(v200 + 8))(v70, v71, v78) & 1) == 0)
                  {
                    v79 = *(v0 + 196);
                    v80 = *(v0 + 2208);
                    v81 = *(v0 + 2200);
                    v82 = *(v0 + 2192);
                    v83 = *(v0 + 2160);

                    TaskLocal.get()();
                    v201 = *(v0 + 1008);
                    sub_100001CC0((v0 + 976), *(v0 + 1000));
                    *(swift_allocObject() + 16) = xmmword_1000839C0;
                    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v84._countAndFlagsBits = 0xD000000000000013;
                    v84._object = (v173 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v84);
                    *(v0 + 1456) = &type metadata for String;
                    *(v0 + 1432) = v70;
                    *(v0 + 1440) = v71;
                    LogMessage.StringInterpolation.appendInterpolation(safe:)();
                    sub_10000DCA0(v0 + 1432, &qword_1000A5630, &unk_100083BF0);
                    v85._countAndFlagsBits = 0xD000000000000024;
                    v85._object = (v175 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v85);
                    LogMessage.init(stringInterpolation:)();
                    Logger.info(_:)();

                    sub_100001D4C((v0 + 976));
                    v28 = v181;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v28 = sub_10001EE94(0, *(v181 + 2) + 1, 1, v181);
                    }

                    v87 = *(v28 + 2);
                    v86 = *(v28 + 3);
                    if (v87 >= v86 >> 1)
                    {
                      v28 = sub_10001EE94((v86 > 1), v87 + 1, 1, v28);
                    }

                    v88 = *(v0 + 2152);
                    v89 = *(v0 + 2128);
                    v90 = *(v0 + 2120);
                    (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
                    (*(v89 + 8))(v88, v90);
                    *(v28 + 2) = v87 + 1;
                    v91 = &v28[32 * v87];
                    *(v91 + 4) = 0;
                    *(v91 + 5) = 0;
                    *(v91 + 6) = 0;
                    *(v91 + 7) = 1;
                    goto LABEL_11;
                  }
                }

                if ((sub_10006DD60(v61, v62, *v167) & 1) == 0)
                {
                  goto LABEL_63;
                }

                v92 = *(v0 + 196);
                v93 = *(v0 + 2208);
                v190 = *(v0 + 2200);
                v94 = *(v0 + 2192);
                v95 = *(v0 + 2160);

                TaskLocal.get()();
                v202 = *(v0 + 768);
                sub_100001CC0((v0 + 736), *(v0 + 760));
                *(swift_allocObject() + 16) = xmmword_1000839C0;
                LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v96._countAndFlagsBits = 0xD00000000000002DLL;
                v96._object = (v169 | 0x8000000000000000);
                LogMessage.StringInterpolation.appendLiteral(_:)(v96);
                *(v0 + 1200) = &type metadata for String;
                *(v0 + 1176) = v61;
                *(v0 + 1184) = v62;
                LogMessage.StringInterpolation.appendInterpolation(safe:)();
                sub_10000DCA0(v0 + 1176, &qword_1000A5630, &unk_100083BF0);
                v97._object = (v171 | 0x8000000000000000);
                v97._countAndFlagsBits = 0xD000000000000014;
                LogMessage.StringInterpolation.appendLiteral(_:)(v97);
                LogMessage.init(stringInterpolation:)();
                Logger.error(_:)();

                sub_100001D4C((v0 + 736));
                v98 = *(v0 + 488);
                sub_100001CC0((v0 + 456), *(v0 + 480));
                dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
                v28 = v181;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v7 = 0;
                v16 = 0;
                v34 = 0;
                v35 = 0;
                v27 = 1;
                v100 = 1;
                v30 = v175;
                v29 = v178;
                v32 = v171;
                v31 = v173;
                v33 = v169;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
LABEL_68:
                  v27 = v100;
                  v28 = sub_10001EE94(0, *(*(v0 + 2272) + 16) + 1, 1, *(v0 + 2272));
                  goto LABEL_7;
                }

                goto LABEL_8;
              }

              (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
            }

            else
            {
              (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
            }
          }

          else
          {
            (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2088));
          }
        }
      }

      v76 = *(v0 + 2152);
      v77 = AssetPushSubscriptionRecord.id.getter();
      if ((v77 & 0x100000000) != 0)
      {
        v187 = 0x296C696E28;
        v189 = 0xE500000000000000;
      }

      else
      {
        *(v0 + 108) = v77;
        v187 = dispatch thunk of CustomStringConvertible.description.getter();
        v189 = v43;
      }

      v44 = *(v0 + 196);
      v45 = *(v209 + 2208);
      v46 = *(v209 + 2200);
      v47 = *(v209 + 2192);
      v48 = *(v209 + 2160);
      v49 = *(v209 + 2128);
      v194 = *(v209 + 2120);
      v199 = *(v209 + 2152);
      TaskLocal.get()();
      v50 = *(v209 + 608);
      sub_100001CC0((v209 + 576), *(v209 + 600));
      v0 = v209;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v51._countAndFlagsBits = 0xD00000000000002FLL;
      v51._object = 0x8000000100089550;
      LogMessage.StringInterpolation.appendLiteral(_:)(v51);
      *(v209 + 1424) = &type metadata for String;
      *(v209 + 1400) = v187;
      *(v209 + 1408) = v189;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v209 + 1400, &qword_1000A5630, &unk_100083BF0);
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v52);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v49 + 8))(v199, v194);
      sub_100001D4C((v209 + 576));
      v42 = *(v209 + 2264) + 1;
      v28 = v181;
    }

    while (v42 != *(v209 + 2256));
  }

  v101 = *(v0 + 2176);

  v102 = *(v28 + 2);
  v103 = v28;
  if (v102)
  {
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = v103 + 56;
    while (1)
    {
      v109 = *(v108 - 3);
      v110 = __OFADD__(v107, v109);
      v107 += v109;
      if (v110)
      {
        break;
      }

      v111 = *(v108 - 2);
      v110 = __OFADD__(v106, v111);
      v106 += v111;
      if (v110)
      {
        goto LABEL_60;
      }

      v112 = *(v108 - 1);
      v110 = __OFADD__(v105, v112);
      v105 += v112;
      if (v110)
      {
        goto LABEL_61;
      }

      v110 = __OFADD__(v104, *v108);
      v104 += *v108;
      if (v110)
      {
        goto LABEL_62;
      }

      v108 += 4;
      if (!--v102)
      {
        goto LABEL_50;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v185 = *(v0 + 372);
    v192 = *(v0 + 196);
    v196 = *(v0 + 2208);
    v207 = *(v0 + 2200);
    v151 = *(v0 + 2160);
    v152 = *(v0 + 2152);
    v153 = *(v0 + 2104);
    v154 = *(v0 + 2096);
    v155 = *(v0 + 2088);
    v180 = *(v0 + 2112);
    v183 = *(v0 + 2072);
    v156 = *(v0 + 2048);
    v157 = *(v0 + 2040);
    v177 = *(v0 + 2032);
    *(v0 + 2352) = AssetPushSubscriptionRecord.downloadAttempts.getter();
    *(v0 + 2360) = AssetPushSubscriptionRecord.priority.getter();
    v158 = *(v154 + 16);
    *(v0 + 2368) = v158;
    *(v0 + 2376) = (v154 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v158(v153, v180, v155);
    (*(v157 + 104))(v156, v185, v177);

    URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
    static OSLogger.jetPackAssets.getter();
    v159 = *(v0 + 1088);
    sub_100001CC0((v0 + 1056), *(v0 + 1080));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v160._countAndFlagsBits = 0xD000000000000017;
    v160._object = 0x80000001000896C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v160);
    *(v0 + 1360) = v155;
    sub_1000061A4((v0 + 1336));
    URLJetPackAssetRequest.url.getter();
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 1336, &qword_1000A5630, &unk_100083BF0);
    v161._countAndFlagsBits = 0;
    v161._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v161);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 1056));
    v162 = type metadata accessor for AssetSQLiteDatabase();
    v163 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v164 = swift_task_alloc();
    *(v0 + 2384) = v164;
    *v164 = v0;
    v164[1] = sub_10004CB18;
    v165 = *(v0 + 1816);

    return BaseObjectGraph.inject<A>(_:)(v0 + 1800, v162, v162);
  }

  else
  {
    v107 = 0;
    v106 = 0;
    v105 = 0;
    v104 = 0;
LABEL_50:
    v113 = *(v209 + 196);
    v114 = *(v209 + 2208);
    v115 = *(v209 + 2200);
    v116 = *(v209 + 2192);
    v117 = *(v209 + 2160);

    v118 = *(v209 + 1776);

    TaskLocal.get()();
    v203 = *(v209 + 688);
    sub_100001CC0((v209 + 656), *(v209 + 680));
    v119 = v209;
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v120._countAndFlagsBits = 0xD000000000000034;
    v120._object = 0x8000000100089580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v120);
    *(v209 + 1488) = &type metadata for Int;
    *(v209 + 1464) = v107;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v209 + 1464, &qword_1000A5630, &unk_100083BF0);
    v121._countAndFlagsBits = 0x7070696B73202C20;
    v121._object = 0xEC000000203A6465;
    LogMessage.StringInterpolation.appendLiteral(_:)(v121);
    *(v209 + 1552) = &type metadata for Int;
    *(v209 + 1528) = v104;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v209 + 1528, &qword_1000A5630, &unk_100083BF0);
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v122);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v209 + 656));
    if (v106 >= 1)
    {
      v123 = *(v209 + 196);
      v124 = *(v209 + 2208);
      v125 = *(v209 + 2200);
      v126 = *(v209 + 2192);
      v127 = *(v209 + 2160);
      TaskLocal.get()();
      v204 = *(v209 + 888);
      sub_100001CC0((v209 + 856), *(v209 + 880));
      v119 = v209;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v128._countAndFlagsBits = 0xD00000000000003ALL;
      v128._object = 0x8000000100089610;
      LogMessage.StringInterpolation.appendLiteral(_:)(v128);
      *(v209 + 1616) = &type metadata for Int;
      *(v209 + 1592) = v106;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v209 + 1592, &qword_1000A5630, &unk_100083BF0);
      v129._countAndFlagsBits = 0;
      v129._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v129);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v209 + 856));
    }

    v130 = v119[277];
    if (v105 < 1)
    {
      v138 = v119[277];
    }

    else
    {
      v131 = *(v209 + 196);
      v132 = *(v209 + 2208);
      v133 = *(v209 + 2200);
      v134 = *(v209 + 2192);
      v135 = *(v209 + 2160);
      TaskLocal.get()();
      v205 = *(v209 + 808);
      sub_100001CC0((v209 + 776), *(v209 + 800));
      v119 = v209;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v136._countAndFlagsBits = 0xD00000000000004CLL;
      v136._object = 0x80000001000895C0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v136);
      *(v209 + 1232) = &type metadata for Int;
      *(v209 + 1208) = v105;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v209 + 1208, &qword_1000A5630, &unk_100083BF0);
      v137._countAndFlagsBits = 0;
      v137._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v137);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v209 + 776));
    }

    sub_100001D4C(v119 + 62);
    sub_100001D4C(v119 + 57);
    v139 = v119[270];
    v140 = v119[269];
    v141 = v119[268];
    v142 = v119[267];
    v143 = v119[264];
    v144 = v119[263];
    v145 = v119[260];
    v146 = v119[259];
    v147 = v119[256];
    v148 = v119[253];
    v166 = v119[250];
    v168 = v119[249];
    v170 = v119[246];
    v172 = v119[245];
    v174 = v119[244];
    v176 = v119[243];
    v179 = v119[242];
    v182 = v119[239];
    v184 = v119[238];
    v186 = v119[237];
    v188 = v119[236];
    v191 = v119[235];
    v195 = v119[234];
    v206 = v119[233];
    v210 = v119[232];

    v149 = v119[1];

    return v149();
  }
}

uint64_t sub_100054714()
{
  v1 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1000547D0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_1000547D0()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100054990;
  }

  else
  {
    v3 = sub_1000548E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000548E4()
{
  v1 = v0[8];
  v2 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  v3 = dispatch thunk of AssetPushSubscriptionStore.findPendingSubscriptionsToRefresh()();
  v4 = sub_100001D4C(v0 + 2);
  v5 = v0[1];
  if (!v1)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t sub_1000549A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000549C8, 0, 0);
}

uint64_t sub_1000549C8()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100054A80;
  v2 = v0[2];
  v3 = v0[3];

  return sub_100049B14(v2, "DefaultRefreshAssetsTaskHandler.handleTask", 42, 2, &unk_100085F00, v2);
}

uint64_t sub_100054A80()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100054BB4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_100054BCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100040348;

  return (sub_100054C78)(a1);
}

uint64_t sub_100054C78(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v1;
  v4[1] = sub_100054D38;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v2, v2);
}

uint64_t sub_100054D38()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100060C40, 0, 0);
  }

  else
  {
    v4 = type metadata accessor for AssetSQLiteDatabase();
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[11] = v6;
    *v6 = v3;
    v6[1] = sub_100054ED0;
    v7 = v3[8];

    return BaseObjectGraph.inject<A>(_:)(v3 + 7, v4, v4);
  }
}

uint64_t sub_100054ED0()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100060C3C;
  }

  else
  {
    v3 = sub_100054FE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100054FE4()
{
  v0[13] = v0[7];
  v1 = swift_task_alloc();
  v0[14] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1000550C0;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)();
}

uint64_t sub_1000550C0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100060C18;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_100060C38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000551DC(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v1;
  v4[1] = sub_10005529C;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v2, v2);
}

uint64_t sub_10005529C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100055548, 0, 0);
  }

  else
  {
    v4 = type metadata accessor for AssetSQLiteDatabase();
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[11] = v6;
    *v6 = v3;
    v6[1] = sub_100055434;
    v7 = v3[8];

    return BaseObjectGraph.inject<A>(_:)(v3 + 7, v4, v4);
  }
}

uint64_t sub_100055434()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100055758;
  }

  else
  {
    v3 = sub_100055560;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100055560()
{
  v0[13] = v0[7];
  v1 = swift_task_alloc();
  v0[14] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_10005563C;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)();
}

uint64_t sub_10005563C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100055828;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1000557BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100055758()
{
  sub_100001D4C(v0 + 2);
  v1 = v0[12];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000557BC()
{
  v1 = v0[13];

  sub_100001D4C(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100055828()
{
  v1 = v0[13];
  v2 = v0[14];

  sub_100001D4C(v0 + 2);
  v3 = v0[16];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10005589C(uint64_t a1)
{
  v1[23] = a1;
  v2 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v4 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v5 = swift_task_alloc();
  v1[26] = v5;
  *v5 = v1;
  v5[1] = sub_1000559A0;

  return BaseObjectGraph.inject<A>(_:)(v1 + 13, v3, v3);
}

uint64_t sub_1000559A0()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_100056134;
  }

  else
  {
    v3 = sub_100055AB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100055AB4()
{
  v1 = sub_100001CC0(v0 + 13, v0[16]);
  sub_100001CC0(v1 + 5, v1[8]);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_100055B64;
  v3 = v0[25];

  return sub_100015738(v3);
}

uint64_t sub_100055B64()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);
  v8 = *v0;

  sub_100002758(v3, v4, &unk_1000A56A0, &unk_100083E10);
  v5 = swift_task_alloc();
  *(v1 + 232) = v5;
  *v5 = v8;
  v5[1] = sub_100055CF8;
  v6 = *(v1 + 192);

  return sub_10000FD7C(v1 + 16, v6);
}

uint64_t sub_100055CF8()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(sub_100055DF4, 0, 0);
}

uint64_t sub_100055DF4()
{
  sub_10000DCA0(v0[25], &unk_1000A56A0, &unk_100083E10);
  v1 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_100055EC8;
  v4 = v0[23];

  return BaseObjectGraph.inject<A>(_:)(v0 + 18, v1, v1);
}

uint64_t sub_100055EC8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v6 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    sub_10000D6E8(v2 + 16);
    v4 = sub_1000561A0;
  }

  else
  {
    v4 = sub_100055FE4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100055FE4()
{
  v1 = v0[22];
  sub_100001CC0(v0 + 18, v0[21]);
  sub_10000D6E8((v0 + 2));
  result = v0[10];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v3 = v0[31];
  v4 = dispatch thunk of AssetPushSubscriptionStore.findOverduePendingSubscriptionsToRefresh(maxDownloadAttempts:)();
  if (v3)
  {
    sub_100001D4C(v0 + 18);
    sub_100001D4C(v0 + 13);
    v6 = v0[24];
    v5 = v0[25];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v8 = v0[24];
    v9 = v0[25];
    v10 = v4;
    sub_100001D4C(v0 + 18);
    sub_100001D4C(v0 + 13);

    v11 = v0[1];

    return v11(v10);
  }
}

uint64_t sub_100056134()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000561A0()
{
  sub_100001D4C(v0 + 13);
  v1 = v0[31];
  v3 = v0[24];
  v2 = v0[25];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100056214(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100056234, 0, 0);
}

uint64_t sub_100056234()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000562EC;
  v2 = v0[2];
  v3 = v0[3];

  return sub_100049B14(v2, "MaintenanceRefreshAssetsTaskHandler.handleTask", 46, 2, &unk_100085EA0, v2);
}

uint64_t sub_1000562EC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100060C6C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_100056438(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for AssetPushSubscriptionRecord();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for JetPackAsset();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = type metadata accessor for JetPackAssetStandardCachePolicy();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v11 = *(v10 + 64) + 15;
  v2[19] = swift_task_alloc();
  v12 = type metadata accessor for JetPackAssetDiskCache();
  v13 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v14 = swift_task_alloc();
  v2[20] = v14;
  *v14 = v2;
  v14[1] = sub_10005660C;

  return BaseObjectGraph.inject<A>(_:)(v2 + 7, v12, v12);
}

uint64_t sub_10005660C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_10005705C;
  }

  else
  {
    v3 = sub_100056720;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100056720()
{
  v0[22] = v0[7];
  v1 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_1000567E4;
  v4 = v0[8];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1000567E4()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1000570E8;
  }

  else
  {
    v3 = sub_1000568F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000568F8()
{
  v1 = v0[19];
  JetPackAssetStandardCachePolicy.init()();
  v2 = async function pointer to JetPackAssetDiskCache._allCachedAssets.getter[1];
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_100056994;
  v4 = v0[22];

  return JetPackAssetDiskCache._allCachedAssets.getter();
}

uint64_t sub_100056994(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = sub_10005717C;
  }

  else
  {
    *(v4 + 216) = a1;
    v7 = sub_100056ABC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100056ABC()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[19];
  v4 = v0[9];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = sub_10004304C(sub_10005BE0C, v5, v1, &type metadata accessor for JetPackAsset, sub_10003DCA4);

  v7 = *(v6 + 16);
  v72 = v0;
  if (v7)
  {
    v8 = v0[15];
    sub_10003DBFC(0, v7, 0);
    v9 = *(v8 + 16);
    v8 += 16;
    v10 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v68 = *(v8 + 56);
    v70 = v9;
    v11 = (v8 - 8);
    do
    {
      v12 = v72[16];
      v13 = v72[14];
      v70(v12, v10, v13);
      v14 = JetPackAsset.cacheKey.getter();
      v16 = v15;
      (*v11)(v12, v13);
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_10003DBFC((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
      v10 += v68;
      --v7;
    }

    while (v7);
  }

  v20 = sub_10006B8B8(_swiftEmptyArrayStorage);

  v21 = v72;
  v22 = v72[6];
  sub_100001CC0(v72 + 2, v72[5]);
  result = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (v2)
  {
    v24 = v72[22];
    v26 = v72[18];
    v25 = v72[19];
    v27 = v72[17];

    (*(v26 + 8))(v25, v27);
    sub_100001D4C(v72 + 2);
    v28 = v72[19];
    v29 = v72[16];
    v31 = v72[12];
    v30 = v72[13];

    v32 = v72[1];

    return v32();
  }

  v71 = *(result + 16);
  if (v71)
  {
    v33 = 0;
    v34 = v72[11];
    v35 = v20 + 56;
    v66 = (v34 + 32);
    v67 = _swiftEmptyArrayStorage;
    v69 = result;
    while (1)
    {
      if (v33 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v37 = *(v34 + 72);
      (*(v34 + 16))(v21[13], result + v36 + v37 * v33, v21[10]);
      v38 = AssetPushSubscriptionRecord.assetURLString.getter();
      if (v39)
      {
        v40 = v39;
        if (*(v20 + 16))
        {
          v41 = v38;
          v42 = *(v20 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v43 = Hasher._finalize()();
          v44 = -1 << *(v20 + 32);
          v45 = v43 & ~v44;
          if ((*(v35 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
          {
            v46 = ~v44;
            while (1)
            {
              v47 = (*(v20 + 48) + 16 * v45);
              v48 = *v47 == v41 && v40 == v47[1];
              if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v45 = (v45 + 1) & v46;
              if (((*(v35 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
              {
                goto LABEL_12;
              }
            }

            v49 = v72[12];
            v65 = v72[13];
            v50 = v72[10];

            v51 = *v66;
            (*v66)(v49, v65, v50);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10003DC60(0, v67[2] + 1, 1);
            }

            v52 = v67;
            v54 = v67[2];
            v53 = v67[3];
            if (v54 >= v53 >> 1)
            {
              sub_10003DC60(v53 > 1, v54 + 1, 1);
              v52 = v67;
            }

            v55 = v72[12];
            v56 = v72[10];
            v52[2] = v54 + 1;
            v67 = v52;
            v51(v52 + v36 + v54 * v37, v55, v56);
            v21 = v72;
            goto LABEL_14;
          }
        }

LABEL_12:

        v21 = v72;
      }

      (*(v34 + 8))(v21[13], v21[10]);
LABEL_14:
      ++v33;
      result = v69;
      if (v33 == v71)
      {
        goto LABEL_33;
      }
    }
  }

  v67 = _swiftEmptyArrayStorage;
LABEL_33:
  v57 = v21[22];
  v59 = v21[18];
  v58 = v21[19];
  v61 = v21[16];
  v60 = v21[17];
  v63 = v21[12];
  v62 = v21[13];

  (*(v59 + 8))(v58, v60);
  sub_100001D4C(v21 + 2);

  v64 = v21[1];

  return v64(v67);
}

uint64_t sub_10005705C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000570E8()
{
  v1 = v0[22];

  v2 = v0[24];
  v3 = v0[19];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10005717C()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];

  (*(v3 + 8))(v2, v4);
  sub_100001D4C(v0 + 2);
  v5 = v0[26];
  v6 = v0[19];
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];

  v10 = v0[1];

  return v10();
}

BOOL sub_100057238()
{
  v0 = type metadata accessor for JetPackAssetCacheStatus();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  JetPackAssetStandardCachePolicy.status(for:dateProvider:)();
  (*(v1 + 32))(v5, v7, v0);
  v8 = (*(v1 + 88))(v5, v0) == enum case for JetPackAssetCacheStatus.valid(_:);
  (*(v1 + 8))(v5, v0);
  return v8;
}

uint64_t sub_10005739C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000573BC, 0, 0);
}

uint64_t sub_1000573BC()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *(v1 + 16) = *(v0 + 1);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100057490;
  v3 = v0[2];
  v4 = v0[3];

  return sub_100049B14(v3, "APSConnectedRefreshTaskHandler.handleTask", 41, 2, &unk_100085E08, v1);
}

uint64_t sub_100057490()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100027E80, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000575D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a3;
  v4[51] = a4;
  v4[49] = a2;
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[52] = swift_task_alloc();
  v6 = type metadata accessor for AssetPushSubscriptionRecord();
  v4[53] = v6;
  v7 = *(v6 - 8);
  v4[54] = v7;
  v8 = *(v7 + 64) + 15;
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_1000576E0, 0, 0);
}

uint64_t sub_1000576E0()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 464) = qword_1000A63A8;
  TaskLocal.get()();
  v1 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 472) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 480) = *(v2 + 72);
  *(v0 + 544) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v3 = type metadata accessor for JetPackAssetDiskCache();
  v4 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 488) = v5;
  *v5 = v0;
  v5[1] = sub_1000578D8;
  v6 = *(v0 + 392);

  return BaseObjectGraph.inject<A>(_:)(v0 + 368, v3, v3);
}

uint64_t sub_1000578D8()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_1000584FC;
  }

  else
  {
    v3 = sub_1000579EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000579EC()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 400);
  *(v0 + 504) = *(v0 + 368);
  JetPackAssetDiskCache._evict(cacheKey:)(v2);
  if (v3)
  {
    v4 = *(v0 + 544);
    v6 = *(v0 + 472);
    v5 = *(v0 + 480);
    v7 = *(v0 + 464);
    v8 = *(v0 + 416);
    TaskLocal.get()();
    v19 = *(v0 + 88);
    sub_100001CC0((v0 + 56), *(v0 + 80));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._object = 0x8000000100089CA0;
    v9._countAndFlagsBits = 0xD00000000000002ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    swift_getErrorValue();
    v10 = *(v0 + 320);
    v11 = *(v0 + 328);
    *(v0 + 280) = v11;
    v12 = sub_1000061A4((v0 + 256));
    (*(*(v11 - 8) + 16))(v12, v10, v11);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 256, &qword_1000A5630, &unk_100083BF0);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 56));
  }

  v14 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v15 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v16 = swift_task_alloc();
  *(v0 + 512) = v16;
  *v16 = v0;
  v16[1] = sub_100057C20;
  v17 = *(v0 + 392);

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v14, v14);
}

uint64_t sub_100057C20()
{
  v2 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_100058588;
  }

  else
  {
    v3 = sub_100057D34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100057D34()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 128);
  sub_100001CC0((v0 + 96), *(v0 + 120));
  v3 = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (v1)
  {
    v6 = *(v0 + 544);
    v8 = *(v0 + 472);
    v7 = *(v0 + 480);
    v9 = *(v0 + 464);
    v10 = *(v0 + 416);
    TaskLocal.get()();
    v53 = *(v0 + 168);
    sub_100001CC0((v0 + 136), *(v0 + 160));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._object = 0x8000000100089CD0;
    v11._countAndFlagsBits = 0xD000000000000031;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    swift_getErrorValue();
    v12 = *(v0 + 344);
    v13 = *(v0 + 352);
    *(v0 + 312) = v13;
    v14 = sub_1000061A4((v0 + 288));
    (*(*(v13 - 8) + 16))(v14, v12, v13);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 288, &qword_1000A5630, &unk_100083BF0);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 136));
    goto LABEL_28;
  }

  v16 = v3;
  v17 = *(v3 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = *(v0 + 432);
    v51 = *(v0 + 408);
    v52 = (v19 + 32);
    v49 = *(v3 + 16);
    v50 = v3;
    do
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = *(v19 + 72);
      (*(v19 + 16))(*(v0 + 456), v16 + v20 + v21 * v18, *(v0 + 424));
      v22 = AssetPushSubscriptionRecord.assetURLString.getter();
      if (v23)
      {
        if (v22 == *(v0 + 400) && v23 == v51)
        {

LABEL_16:
          v27 = *v52;
          (*v52)(*(v0 + 440), *(v0 + 456), *(v0 + 424));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10003DC60(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v29 = _swiftEmptyArrayStorage[2];
          v28 = _swiftEmptyArrayStorage[3];
          if (v29 >= v28 >> 1)
          {
            sub_10003DC60(v28 > 1, v29 + 1, 1);
          }

          v30 = *(v0 + 440);
          v31 = *(v0 + 424);
          _swiftEmptyArrayStorage[2] = v29 + 1;
          v3 = v27(_swiftEmptyArrayStorage + v20 + v29 * v21, v30, v31);
          v17 = v49;
          v16 = v50;
          goto LABEL_6;
        }

        v25 = *(v0 + 408);
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v26)
        {
          goto LABEL_16;
        }
      }

      v3 = (*(v19 + 8))(*(v0 + 456), *(v0 + 424));
LABEL_6:
      ++v18;
    }

    while (v17 != v18);
  }

  v32 = _swiftEmptyArrayStorage[2];
  if (!v32)
  {
LABEL_27:

LABEL_28:
    v44 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v45 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v46 = swift_task_alloc();
    *(v0 + 528) = v46;
    *v46 = v0;
    v46[1] = sub_10005822C;
    v47 = *(v0 + 392);
    v3 = v0 + 176;
    v4 = v44;
    v5 = v44;

    return BaseObjectGraph.inject<A>(_:)(v3, v4, v5);
  }

  v33 = 0;
  v34 = *(v0 + 432);
  v35 = _swiftEmptyArrayStorage + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v36 = v34 + 16;
  while (v33 < _swiftEmptyArrayStorage[2])
  {
    v37 = *(v0 + 448);
    v38 = *(v0 + 424);
    (*(v34 + 16))(v37, &v35[*(v34 + 72) * v33], v38);
    v39 = AssetPushSubscriptionRecord.id.getter();
    v3 = (*(v34 + 8))(v37, v38);
    if ((v39 & 0x100000000) == 0)
    {
      v40 = v36;
      v41 = v35;
      v42 = v32;
      v43 = *(v0 + 128);
      sub_100001CC0((v0 + 96), *(v0 + 120));
      v32 = v42;
      v35 = v41;
      v36 = v40;
      v3 = dispatch thunk of AssetPushSubscriptionStore.delete(id:)();
    }

    if (v32 == ++v33)
    {
      goto LABEL_27;
    }
  }

LABEL_32:
  __break(1u);
  return BaseObjectGraph.inject<A>(_:)(v3, v4, v5);
}

uint64_t sub_10005822C()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_10005861C;
  }

  else
  {
    v3 = sub_100058340;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100058340()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 480);
  v7 = *(v0 + 472);
  v8 = *(v0 + 504);
  v3 = *(v0 + 464);
  v9 = *(v0 + 456);
  v10 = *(v0 + 448);
  v11 = *(v0 + 440);
  v12 = *(v0 + 416);
  sub_100001CC0((v0 + 176), *(v0 + 200));
  type metadata accessor for PushManager();
  sub_100038280();
  TaskLocal.get()();
  v4 = *(v0 + 248);
  sub_100001CC0((v0 + 216), *(v0 + 240));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 216));
  sub_100001D4C((v0 + 176));
  sub_100001D4C((v0 + 96));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000584FC()
{
  v1 = v0[62];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[55];
  v5 = v0[52];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100058588()
{
  v1 = v0[63];

  v2 = v0[65];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];
  v6 = v0[52];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10005861C()
{
  v1 = v0[63];

  sub_100001D4C(v0 + 12);
  v2 = v0[67];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];
  v6 = v0[52];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000586B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100040348;

  return sub_10005CDC0(a1);
}

uint64_t sub_100058760(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100040348;

  return sub_1000551DC(a1);
}

uint64_t sub_100058814(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for OSSignposter();
  sub_100018750(v3, a2);
  v4 = sub_100018718(v3, a2);
  if (qword_1000A4D98 != -1)
  {
    swift_once();
  }

  v5 = sub_100018718(v3, qword_1000A6420);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_1000588D8(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for OSSignpostID();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000589A4, 0, 0);
}

uint64_t sub_1000589A4()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v1 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);
  if (qword_1000A4DB8 != -1)
  {
    swift_once();
  }

  v5 = v0[12];
  v6 = type metadata accessor for OSSignposter();
  sub_100018718(v6, qword_1000A5908);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v7 = OSSignposter.logHandle.getter();
  v8 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v11, "MaintenanceCleanupTaskHandler.handleTask", "", v10, 2u);
  }

  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[10];

  (*(v15 + 16))(v12, v13, v14);
  v16 = type metadata accessor for OSSignpostIntervalState();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[13] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v15 + 8))(v13, v14);
  v19 = type metadata accessor for AssetSQLiteDatabase();
  v20 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  v21[1] = sub_100058CC8;
  v22 = v0[8];

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v19, v19);
}

uint64_t sub_100058CC8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100059070;
  }

  else
  {
    v3 = sub_100058DDC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100058DDC()
{
  v0[16] = v0[7];
  v1 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100058E98;
  v3 = v0[8];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)();
}

uint64_t sub_100058E98()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10005912C;
  }

  else
  {
    v3 = sub_100058FAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100058FAC()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];

  sub_1000591F0("MaintenanceCleanupTaskHandler.handleTask", 40, 2, v3, &qword_1000A4DB8, qword_1000A5908);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100059070()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[11];
  sub_1000591F0("MaintenanceCleanupTaskHandler.handleTask", 40, 2, v0[13], &qword_1000A4DB8, qword_1000A5908);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005912C()
{
  v1 = v0[16];

  v2 = v0[18];
  v3 = v0[12];
  v4 = v0[11];
  sub_1000591F0("MaintenanceCleanupTaskHandler.handleTask", 40, 2, v0[13], &qword_1000A4DB8, qword_1000A5908);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000591F0(const char *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6)
{
  v26 = a3;
  v27 = a1;
  v8 = type metadata accessor for OSSignpostError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a5 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for OSSignposter();
  sub_100018718(v18, a6);
  v19 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v26 & 1) == 0)
  {
    if (v27)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v9 + 88))(v12, v8) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v12, v8);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v20, v24, v27, v22, v23, 2u);

LABEL_15:

      return (*(v14 + 8))(v17, v13);
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v27 = &v28;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000594C8(uint64_t a1, uint64_t a2)
{
  v2[54] = a2;
  v4 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[55] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[56] = v5;
  *v5 = v2;
  v5[1] = sub_10005958C;

  return sub_10005DE38(a2);
}

uint64_t sub_10005958C()
{
  v2 = *(*v1 + 448);
  v3 = *v1;
  v3[57] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000596FC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[58] = v4;
    *v4 = v3;
    v4[1] = sub_100059980;
    v5 = v3[54];

    return sub_10005E9CC(v5);
  }
}

uint64_t sub_1000596FC()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = v0[57];
  v2 = v0[55];
  TaskLocal.get()();
  v3 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100089890;
  v7._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[38];
  v9 = v0[39];
  v0[25] = v9;
  v10 = sub_1000061A4(v0 + 22);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 22), &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);
  v12 = swift_task_alloc();
  v0[58] = v12;
  *v12 = v0;
  v12[1] = sub_100059980;
  v13 = v0[54];

  return sub_10005E9CC(v13);
}

uint64_t sub_100059980()
{
  v2 = *(*v1 + 464);
  v3 = *v1;
  v3[59] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100059AF0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[60] = v4;
    *v4 = v3;
    v4[1] = sub_100059D74;
    v5 = v3[54];

    return sub_10005F9D8(v5);
  }
}

uint64_t sub_100059AF0()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = v0[59];
  v2 = v0[55];
  TaskLocal.get()();
  v3 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001000898C0;
  v7._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[41];
  v9 = v0[42];
  v0[29] = v9;
  v10 = sub_1000061A4(v0 + 26);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 26), &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  v12 = swift_task_alloc();
  v0[60] = v12;
  *v12 = v0;
  v12[1] = sub_100059D74;
  v13 = v0[54];

  return sub_10005F9D8(v13);
}

uint64_t sub_100059D74()
{
  v2 = *(*v1 + 480);
  v3 = *v1;
  v3[61] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100059EE4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[62] = v4;
    *v4 = v3;
    v4[1] = sub_10005A168;
    v5 = v3[54];

    return sub_100060180(v5);
  }
}

uint64_t sub_100059EE4()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = v0[61];
  v2 = v0[55];
  TaskLocal.get()();
  v3 = v0[16];
  sub_100001CC0(v0 + 12, v0[15]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001000898F0;
  v7._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[44];
  v9 = v0[45];
  v0[33] = v9;
  v10 = sub_1000061A4(v0 + 30);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 30), &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 12);
  v12 = swift_task_alloc();
  v0[62] = v12;
  *v12 = v0;
  v12[1] = sub_10005A168;
  v13 = v0[54];

  return sub_100060180(v13);
}

uint64_t sub_10005A168()
{
  v2 = *(*v1 + 496);
  v3 = *v1;
  v3[63] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005A2A4, 0, 0);
  }

  else
  {
    v4 = v3[55];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10005A2A4()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = v0[63];
  v2 = v0[55];
  TaskLocal.get()();
  v3 = v0[21];
  sub_100001CC0(v0 + 17, v0[20]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100089920;
  v7._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[47];
  v9 = v0[48];
  v0[37] = v9;
  v10 = sub_1000061A4(v0 + 34);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 34), &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 17);
  v12 = v0[55];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10005A4F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100040348;

  return sub_1000588D8(a1);
}

uint64_t sub_10005A58C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DAF8;

  return sub_10005BE2C(a1);
}

uint64_t sub_10005A654()
{
  sub_100001CC0(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10005A6F0;

  return sub_1000473EC();
}

uint64_t sub_10005A6F0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10005A7E4(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_10005A7E4(v6, a2, a3);
  }

  return result;
}

uint64_t sub_10005A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LogMessage.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v20[3] = &type metadata for DefaultRefreshAssetsTaskHandler;
  v20[4] = &off_10009FAE0;
  v20[0] = swift_allocObject();
  sub_10005B7F4(a3, v20[0] + 16);
  v11 = *(a5 + 120);
  SendableWrapper.withValue<A>(_:)();
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v19, v19[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v12 = *(type metadata accessor for LogMessage() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x80000001000893B0;
  v15._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  v18[3] = &type metadata for String;
  v18[0] = a1;
  v18[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v18, &qword_1000A5630, &unk_100083BF0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v19);
  return sub_100001D4C(v20);
}

uint64_t sub_10005AB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LogMessage.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v20[3] = &type metadata for MaintenanceRefreshAssetsTaskHandler;
  v20[4] = &off_10009FB10;
  v20[0] = swift_allocObject();
  sub_10005B7BC(a3, v20[0] + 16);
  v11 = *(a5 + 120);
  SendableWrapper.withValue<A>(_:)();
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v19, v19[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v12 = *(type metadata accessor for LogMessage() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x80000001000893B0;
  v15._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  v18[3] = &type metadata for String;
  v18[0] = a1;
  v18[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v18, &qword_1000A5630, &unk_100083BF0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v19);
  return sub_100001D4C(v20);
}

uint64_t sub_10005ADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v22[3] = a5;
  v22[4] = a6;
  v13 = *(a4 + 120);
  SendableWrapper.withValue<A>(_:)();
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v21, v21[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v14 = *(type metadata accessor for LogMessage() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x80000001000893B0;
  v17._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v20[3] = &type metadata for String;
  v20[0] = a1;
  v20[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v20, &qword_1000A5630, &unk_100083BF0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v21);
  return sub_100001D4C(v22);
}

uint64_t sub_10005B020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LogMessage.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v20[3] = &type metadata for APSConnectedRefreshTaskHandler;
  v20[4] = &off_10009FB58;
  v20[0] = swift_allocObject();
  sub_10005B554(a3, v20[0] + 16);
  v11 = *(a5 + 120);
  SendableWrapper.withValue<A>(_:)();
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v19, v19[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v12 = *(type metadata accessor for LogMessage() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x80000001000893B0;
  v15._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  v18[3] = &type metadata for String;
  v18[0] = a1;
  v18[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v18, &qword_1000A5630, &unk_100083BF0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v19);
  return sub_100001D4C(v20);
}

uint64_t sub_10005B2BC(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 3;
    }

    if (a1 != 5)
    {
      if (a1 == 99)
      {
        return 5;
      }

      return 6;
    }

    return 4;
  }

  else
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 2;
      }

      return 6;
    }

    return 1;
  }
}

unint64_t sub_10005B32C()
{
  result = qword_1000A5938;
  if (!qword_1000A5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5938);
  }

  return result;
}

unint64_t sub_10005B39C()
{
  result = qword_1000A5940;
  if (!qword_1000A5940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5940);
  }

  return result;
}

uint64_t sub_10005B408(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  sub_100001CC0(a1, v3);
  return (*(v4 + 32))(v2, v3, v4);
}

uint64_t sub_10005B46C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005B514()
{
  sub_100001D4C((v0 + 16));
  sub_100001D4C((v0 + 64));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10005B5AC()
{
  sub_100001D4C((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005B5F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100001D4C((v0 + 32));
  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10005B648(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DAF8;

  return sub_100043FB4(a1, v4, v5, (v1 + 4), v6, v7);
}

unint64_t sub_10005B730()
{
  result = qword_1000A5950;
  if (!qword_1000A5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5950);
  }

  return result;
}

uint64_t sub_10005B784()
{
  sub_100001D4C((v0 + 16));

  return _swift_deallocObject(v0, 57, 7);
}

__n128 sub_10005B82C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_10005B868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005B8B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005B968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005B9B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScheduleTime(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScheduleTime(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_10005BAA8()
{
  result = qword_1000A5958;
  if (!qword_1000A5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5958);
  }

  return result;
}

uint64_t sub_10005BAFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005BB94;

  return sub_100056438(v2, v3);
}

uint64_t sub_10005BB94(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10005BC90(uint64_t a1)
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
  v10[1] = sub_100040348;

  return sub_10004AB90(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_10005BD64()
{
  result = qword_1000A5960;
  if (!qword_1000A5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5960);
  }

  return result;
}

BOOL sub_10005BE0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100057238();
}

uint64_t sub_10005BE4C()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v1 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);
  v5 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_10005C03C;
  v8 = v0[17];

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v5, v5);
}

uint64_t sub_10005C03C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10005C790;
  }

  else
  {
    v3 = sub_10005C150;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005C150()
{
  sub_100001CC0(v0 + 7, v0[10]);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_10005C1EC;

  return sub_10001760C();
}

uint64_t sub_10005C1EC()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005C4A4, 0, 0);
  }

  else
  {
    v4 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[22] = v6;
    *v6 = v3;
    v6[1] = sub_10005C390;
    v7 = v3[17];

    return BaseObjectGraph.inject<A>(_:)(v3 + 12, v4, v4);
  }
}

uint64_t sub_10005C390()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_10005C7A8;
  }

  else
  {
    v3 = sub_10005C508;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005C4A4()
{
  sub_100001D4C(v0 + 7);
  v1 = v0[21];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10005C508()
{
  v1 = *sub_100001CC0(v0 + 12, v0[15]);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_10005C5A4;

  return sub_100027EE4();
}

uint64_t sub_10005C5A4()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_10005C724;
  }

  else
  {
    v3 = sub_10005C6B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005C6B8()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10005C724()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  v1 = v0[25];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10005C7A8()
{
  sub_100001D4C(v0 + 7);
  v1 = v0[23];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10005C80C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100040348;

  return sub_1000594C8(a1, v1);
}

uint64_t sub_10005C8C8()
{
  if (jet_debug_tooling_os_variant_has_internal_content()())
  {
    v1 = type metadata accessor for AssetSQLiteDatabase();
    v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_10005C9B4;
    v4 = v0[3];

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10005C9B4()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_10005CD3C;
  }

  else
  {
    v3 = sub_10005CAC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005CAC8()
{
  v1 = v0[3];
  v0[6] = v0[2];
  v2 = swift_task_alloc();
  v0[7] = v2;
  v2[2] = v1;
  v2[3] = 0xD000000000000057;
  v2[4] = 0x8000000100089C00;
  v3 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10005CBBC;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)();
}

uint64_t sub_10005CBBC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10005CD54;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_10005CCD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10005CCD8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005CD54()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[9];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10005CDC0(uint64_t a1)
{
  v1[17] = a1;
  v2 = type metadata accessor for OSSignpostID();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10005CE8C, 0, 0);
}

uint64_t sub_10005CE8C()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v1 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);
  if (qword_1000A4DB0 != -1)
  {
    swift_once();
  }

  v5 = v0[21];
  v6 = type metadata accessor for OSSignposter();
  sub_100018718(v6, qword_1000A58F0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v7 = OSSignposter.logHandle.getter();
  v8 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v9 = v0[21];
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v11, "PostInstallScheduledTaskHandler.handleTask", "", v10, 2u);
  }

  v12 = v0[20];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[19];

  (*(v15 + 16))(v12, v13, v14);
  v16 = type metadata accessor for OSSignpostIntervalState();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[22] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v15 + 8))(v13, v14);
  v19 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v20 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v21 = swift_task_alloc();
  v0[23] = v21;
  *v21 = v0;
  v21[1] = sub_10005D1BC;
  v22 = v0[17];

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v19, v19);
}

uint64_t sub_10005D1BC()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_10005DC6C;
  }

  else
  {
    v3 = sub_10005D2D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005D2D0()
{
  sub_100001CC0(v0 + 7, v0[10]);
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_10005D36C;

  return sub_10001760C();
}

uint64_t sub_10005D36C()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005D624, 0, 0);
  }

  else
  {
    v4 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[27] = v6;
    *v6 = v3;
    v6[1] = sub_10005D510;
    v7 = v3[17];

    return BaseObjectGraph.inject<A>(_:)(v3 + 12, v4, v4);
  }
}

uint64_t sub_10005D510()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_10005DD28;
  }

  else
  {
    v3 = sub_10005D6E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005D624()
{
  sub_100001D4C(v0 + 7);
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[20];
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, v0[22], &qword_1000A4DB0, qword_1000A58F0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005D6E8()
{
  v1 = *sub_100001CC0(v0 + 12, v0[15]);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_10005D784;

  return sub_100027EE4();
}

uint64_t sub_10005D784()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  v3[30] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005DBA0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[31] = v4;
    *v4 = v3;
    v4[1] = sub_10005D8F4;
    v5 = v3[17];

    return sub_10005C8A8(v5);
  }
}

uint64_t sub_10005D8F4()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_10005DAD4;
  }

  else
  {
    v3 = sub_10005DA08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005DA08()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, v2, &qword_1000A4DB0, qword_1000A58F0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005DAD4()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  v1 = v0[32];
  v2 = v0[21];
  v3 = v0[20];
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, v0[22], &qword_1000A4DB0, qword_1000A58F0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005DBA0()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[20];
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, v0[22], &qword_1000A4DB0, qword_1000A58F0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005DC6C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[20];
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, v0[22], &qword_1000A4DB0, qword_1000A58F0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005DD28()
{
  sub_100001D4C(v0 + 7);
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[20];
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, v0[22], &qword_1000A4DB0, qword_1000A58F0);

  v4 = v0[1];

  return v4();
}

unint64_t sub_10005DDEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E308, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005DE38(uint64_t a1)
{
  v1[35] = a1;
  v2 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v3 = type metadata accessor for AssetPushSubscriptionRecord();
  v1[37] = v3;
  v4 = *(v3 - 8);
  v1[38] = v4;
  v5 = *(v4 + 64) + 15;
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_10005DF24, 0, 0);
}

uint64_t sub_10005DF24()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 320) = qword_1000A63A8;
  TaskLocal.get()();
  v1 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 328) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 336) = *(v2 + 72);
  *(v0 + 376) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v3 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v4 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 344) = v5;
  *v5 = v0;
  v5[1] = sub_10005E128;
  v6 = *(v0 + 280);

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v3, v3);
}

uint64_t sub_10005E128()
{
  v2 = *(*v1 + 344);
  v3 = *v1;
  v3[44] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005E8E4, 0, 0);
  }

  else
  {
    v4 = sub_100001D04(&qword_1000A4E90, &unk_100085E40);
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[45] = v6;
    *v6 = v3;
    v6[1] = sub_10005E2CC;
    v7 = v3[35];

    return BaseObjectGraph.inject<A>(_:)(v3 + 12, v4, v4);
  }
}

uint64_t sub_10005E2CC()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_10005E954;
  }

  else
  {
    v3 = sub_10005E3E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005E3E0()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  result = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (v1)
  {
    sub_100001D4C((v0 + 96));
    sub_100001D4C((v0 + 56));
    v4 = *(v0 + 312);
    v5 = *(v0 + 288);

    v6 = *(v0 + 8);
LABEL_17:

    return v6();
  }

  v7 = result;
  v8 = *(result + 16);
  v9 = 0;
  if (!v8)
  {
LABEL_16:
    v27 = *(v0 + 376);
    v28 = v9;
    v30 = *(v0 + 328);
    v29 = *(v0 + 336);
    v31 = *(v0 + 320);
    v44 = *(v0 + 312);
    v32 = *(v0 + 288);

    TaskLocal.get()();
    v42 = *(v0 + 168);
    sub_100001CC0((v0 + 136), *(v0 + 160));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v33._countAndFlagsBits = 0xD000000000000028;
    v33._object = 0x8000000100089AE0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v0 + 240) = &type metadata for Int;
    *(v0 + 216) = v28;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
    v34._object = 0x8000000100089B10;
    v34._countAndFlagsBits = 0xD00000000000001DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 136));
    sub_100001D4C((v0 + 96));
    sub_100001D4C((v0 + 56));

    v6 = *(v0 + 8);
    goto LABEL_17;
  }

  v10 = 0;
  v11 = *(v0 + 304);
  v43 = result + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v41 = (v11 + 8);
  v39 = *(result + 16);
  v40 = result;
  while (v10 < *(v7 + 16))
  {
    (*(v11 + 16))(*(v0 + 312), v43 + *(v11 + 72) * v10, *(v0 + 296));
    v12 = AssetPushSubscriptionRecord.bundleID.getter();
    v14 = *(v0 + 312);
    if (v13)
    {
      v15 = v12;
      v16 = v13;
      if ((AssetPushSubscriptionRecord.id.getter() & 0x100000000) != 0)
      {
        (*v41)(*(v0 + 312), *(v0 + 296));
      }

      else
      {
        v17 = *(v0 + 120);
        v18 = *(v0 + 128);
        sub_100001CC0((v0 + 96), v17);
        if ((*(v18 + 8))(v15, v16, v17, v18))
        {
          (*v41)(*(v0 + 312), *(v0 + 296));
        }

        else
        {
          v19 = *(v0 + 88);
          sub_100001CC0((v0 + 56), *(v0 + 80));
          result = dispatch thunk of AssetPushSubscriptionStore.delete(id:)();
          if (__OFADD__(v9++, 1))
          {
            goto LABEL_21;
          }

          v21 = *(v0 + 376);
          v22 = *(v0 + 336);
          v35 = *(v0 + 328);
          v23 = *(v0 + 320);
          v38 = *(v0 + 312);
          v24 = *(v0 + 288);
          v37 = *(v0 + 296);
          TaskLocal.get()();
          v36 = *(v0 + 208);
          sub_100001CC0((v0 + 176), *(v0 + 200));
          *(swift_allocObject() + 16) = xmmword_1000839C0;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v25._countAndFlagsBits = 0xD000000000000036;
          v25._object = 0x8000000100089B30;
          LogMessage.StringInterpolation.appendLiteral(_:)(v25);
          *(v0 + 272) = &type metadata for String;
          *(v0 + 248) = v15;
          *(v0 + 256) = v16;
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
          v26._countAndFlagsBits = 0;
          v26._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v26);
          LogMessage.init(stringInterpolation:)();
          Logger.info(_:)();

          (*v41)(v38, v37);
          result = sub_100001D4C((v0 + 176));
        }

        v8 = v39;
        v7 = v40;
      }
    }

    else
    {
      result = (*v41)(*(v0 + 312), *(v0 + 296));
    }

    if (v8 == ++v10)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10005E8E4()
{
  v1 = v0[44];
  v2 = v0[39];
  v3 = v0[36];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005E954()
{
  sub_100001D4C(v0 + 7);
  v1 = v0[46];
  v2 = v0[39];
  v3 = v0[36];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005E9CC(uint64_t a1)
{
  v1[26] = a1;
  v2 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v3 = type metadata accessor for AssetPushSubscriptionRecord();
  v1[28] = v3;
  v4 = *(v3 - 8);
  v1[29] = v4;
  v5 = *(v4 + 64) + 15;
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10005EAB8, 0, 0);
}

uint64_t sub_10005EAB8()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 248) = qword_1000A63A8;
  TaskLocal.get()();
  v1 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 256) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 264) = *(v2 + 72);
  *(v0 + 360) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v3 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
  v4 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = sub_10005ECBC;
  v6 = *(v0 + 208);

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v3, v3);
}

uint64_t sub_10005ECBC()
{
  v2 = *(*v1 + 272);
  v3 = *v1;
  v3[35] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005F870, 0, 0);
  }

  else
  {
    v4 = sub_100001D04(&unk_1000A5730, &unk_100084200);
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[36] = v6;
    *v6 = v3;
    v6[1] = sub_10005EE60;
    v7 = v3[26];

    return BaseObjectGraph.inject<A>(_:)(v3 + 12, v4, v4);
  }
}

uint64_t sub_10005EE60()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_10005F8E0;
  }

  else
  {
    v3 = sub_10005EF74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005EF74()
{
  sub_100001CC0(v0 + 7, v0[10]);
  v1 = type metadata accessor for PushManager();
  v0[38] = v1;
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_10005F0B8;

  return (sub_1000382F4)(v1, &off_10009F238);
}

uint64_t sub_10005F0B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v7 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v5 = sub_10005F958;
  }

  else
  {
    v5 = sub_10005F1CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005F1CC()
{
  v1 = *sub_100001CC0(v0 + 7, v0[10]);
  v2 = swift_task_alloc();
  v0[42] = v2;
  *v2 = v0;
  v2[1] = sub_10005F268;

  return sub_100023658();
}

uint64_t sub_10005F268(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v6 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = a2;

  return _swift_task_switch(sub_10005F368, 0, 0);
}

uint64_t sub_10005F368()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 128);
  sub_100001CC0((v0 + 96), *(v0 + 120));
  v3 = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (v1)
  {
    v4 = *(v0 + 352);
    v5 = *(v0 + 320);

    sub_100001D4C((v0 + 96));
    sub_100001D4C((v0 + 56));
    v6 = *(v0 + 240);
    v7 = *(v0 + 216);

    v8 = *(v0 + 8);
LABEL_36:

    return v8();
  }

  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = *(v0 + 232);
    v11 = v3;
    sub_10003DCE8(0, v9, 0);
    v12 = *(v10 + 16);
    v10 += 16;
    v13 = v11 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v56 = *(v10 + 56);
    v58 = v12;
    v14 = (v10 - 8);
    do
    {
      v15 = *(v0 + 240);
      v16 = *(v0 + 224);
      v58(v15, v13, v16);
      v17 = AssetPushSubscriptionRecord.channelID.getter();
      v19 = v18;
      (*v14)(v15, v16);
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_10003DCE8((v20 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v13 += v56;
      --v9;
    }

    while (v9);
  }

  v23 = *(v0 + 320);
  v24 = sub_10006BA2C(_swiftEmptyArrayStorage);

  v25 = *(v23 + 16);
  result = *(v0 + 320);
  if (!v25)
  {

    v47 = 0;
LABEL_35:

    v48 = *(v0 + 352);
    v49 = *(v0 + 360);
    v51 = *(v0 + 256);
    v50 = *(v0 + 264);
    v52 = *(v0 + 248);
    v62 = *(v0 + 240);
    v53 = *(v0 + 216);

    TaskLocal.get()();
    v60 = *(v0 + 168);
    sub_100001CC0((v0 + 136), *(v0 + 160));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v54._object = 0x8000000100089A60;
    v54._countAndFlagsBits = 0xD00000000000003ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
    *(v0 + 200) = &type metadata for Int;
    *(v0 + 176) = v47;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 176, &qword_1000A5630, &unk_100083BF0);
    v55._countAndFlagsBits = 0x6C656E6E61686320;
    v55._object = 0xE900000000000073;
    LogMessage.StringInterpolation.appendLiteral(_:)(v55);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 136));
    sub_100001D4C((v0 + 96));
    sub_100001D4C((v0 + 56));

    v8 = *(v0 + 8);
    goto LABEL_36;
  }

  v59 = v24;
  v61 = 0;
  v27 = 0;
  v28 = result + 32;
  v29 = v24 + 56;
  v57 = v23;
  while (v27 < *(v23 + 16))
  {
    v30 = (v28 + 16 * v27);
    v32 = *v30;
    v31 = v30[1];
    if (*v30 == *(v0 + 344) && v31 == *(v0 + 352))
    {
      goto LABEL_12;
    }

    v34 = *v30;
    v35 = v30[1];
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      goto LABEL_12;
    }

    if (!*(v24 + 16))
    {

LABEL_31:
      v45 = *(v0 + 304);
      sub_100001CC0((v0 + 56), *(v0 + 80));
      sub_100038280();

      if (__OFADD__(v61, 1))
      {
        goto LABEL_40;
      }

      ++v61;
      goto LABEL_11;
    }

    v36 = *(v24 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(1u);

    String.hash(into:)();
    v37 = Hasher._finalize()();
    v38 = -1 << *(v24 + 32);
    v39 = v37 & ~v38;
    if (((*(v29 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
    {
      goto LABEL_31;
    }

    v40 = ~v38;
    v41 = *(v59 + 48);
    while (1)
    {
      v42 = (v41 + 16 * v39);
      v43 = v42[1];
      if (v43)
      {
        v44 = *v42 == v32 && v43 == v31;
        if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v39 = (v39 + 1) & v40;
      if (((*(v29 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_11:
    v23 = v57;
    v24 = v59;
LABEL_12:
    if (++v27 == v25)
    {
      v46 = *(v0 + 320);

      v47 = v61;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10005F870()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005F8E0()
{
  sub_100001D4C(v0 + 7);
  v1 = v0[37];
  v2 = v0[30];
  v3 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005F958()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  v1 = v0[41];
  v2 = v0[30];
  v3 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005F9D8(uint64_t a1)
{
  *(v1 + 104) = a1;
  v2 = *(*(type metadata accessor for JetPackAssetSession.Configuration() - 8) + 64) + 15;
  *(v1 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10005FA68, 0, 0);
}

uint64_t sub_10005FA68()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 120) = qword_1000A63A8;
  TaskLocal.get()();
  v1 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 128) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 136) = *(v2 + 72);
  *(v0 + 200) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v3 = type metadata accessor for JetPackAssetDiskCache();
  *(v0 + 144) = v3;
  v4 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_10005FC64;
  v6 = *(v0 + 104);

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v3, v3);
}

uint64_t sub_10005FC64()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1000600A8;
  }

  else
  {
    v3 = sub_10005FD78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005FD78()
{
  v1 = v0[18];
  v2 = v0[14];
  v0[21] = v0[12];

  JetPackAssetSession.Configuration.init(cache:)();
  v3 = type metadata accessor for JetPackAssetSession();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[22] = JetPackAssetSession.init(configuration:)();
  v6 = async function pointer to JetPackAssetSession.performMaintenance()[1];
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_10005FE64;

  return JetPackAssetSession.performMaintenance()();
}

uint64_t sub_10005FE64()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_10006010C;
  }

  else
  {
    v3 = sub_10005FF78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005FF78()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 200);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v10 = *(v0 + 112);
  TaskLocal.get()();
  v7 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 56));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000600A8()
{
  v1 = v0[20];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10006010C()
{
  v2 = v0[21];
  v1 = v0[22];

  v3 = v0[24];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000601A0()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 144) = qword_1000A63A8;
  TaskLocal.get()();
  v1 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 152) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 160) = *(v2 + 72);
  *(v0 + 200) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v3 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
  v4 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_1000603A4;
  v6 = *(v0 + 136);

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v3, v3);
}

uint64_t sub_1000603A4()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1000607DC;
  }

  else
  {
    v3 = sub_1000604B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000604B8()
{
  v1 = *sub_100001CC0(v0 + 7, v0[10]);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_100060554;

  return sub_100027EE4();
}

uint64_t sub_100060554()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100060668;
  }

  else
  {
    v3 = sub_1000606CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100060668()
{
  sub_100001D4C(v0 + 7);
  v1 = v0[24];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000606CC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  TaskLocal.get()();
  v5 = *(v0 + 128);
  sub_100001CC0((v0 + 96), *(v0 + 120));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 96));
  sub_100001D4C((v0 + 56));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000607F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100060C48;

  return sub_10005589C(v0);
}

uint64_t sub_100060884(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100040348;

  return sub_10005A634(a1, v4);
}

uint64_t sub_100060924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100040348;

  return sub_1000575D8(a1, v4, v5, v6);
}

uint64_t sub_1000609D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DAF8;

  return sub_10005A634(a1, v4);
}

uint64_t sub_100060A78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100060C48;

  return sub_100054714();
}

uint64_t sub_100060B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100060B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100060BC0()
{
  result = qword_1000A5968;
  if (!qword_1000A5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5968);
  }

  return result;
}

uint64_t sub_100060C94()
{
  v0 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014998();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_10006112C(&qword_1000A5700, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001D04(&qword_1000A5708, &unk_100085510);
  sub_100061174();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000A6448 = result;
  return result;
}

uint64_t sub_100060EC8()
{
  v0 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  type metadata accessor for DaemonActor();
  v1 = swift_allocObject();
  type metadata accessor for _DispatchQueueExecutor();
  if (qword_1000A4DC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1000A6448;
  default argument 1 of _DispatchQueueExecutor.init(label:qos:target:)();
  result = _DispatchQueueExecutor.__allocating_init(label:qos:target:)();
  *(v1 + 16) = result;
  qword_1000A6450 = v1;
  return result;
}

uint64_t sub_100060FD0()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100061098()
{
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000610F4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DaemonActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_10006112C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100061174()
{
  result = qword_1000A5710;
  if (!qword_1000A5710)
  {
    sub_100018FD0(&qword_1000A5708, &unk_100085510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5710);
  }

  return result;
}

unint64_t sub_1000611EC()
{
  result = qword_1000A5A18;
  if (!qword_1000A5A18)
  {
    type metadata accessor for DaemonPostInstallRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A18);
  }

  return result;
}

uint64_t sub_100061244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a1;
  v3[24] = a3;
  v4 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v5 = *(*(sub_100001D04(&qword_1000A5A40, &qword_1000860F8) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v6 = type metadata accessor for SandboxExtensionToken();
  v3[27] = v6;
  v7 = *(v6 - 8);
  v3[28] = v7;
  v8 = *(v7 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v9 = type metadata accessor for URL.DirectoryHint();
  v3[31] = v9;
  v10 = *(v9 - 8);
  v3[32] = v10;
  v11 = *(v10 + 64) + 15;
  v3[33] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v3[34] = v12;
  v13 = *(v12 - 8);
  v3[35] = v13;
  v14 = *(v13 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v15 = type metadata accessor for ContainerLocation();
  v16 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v17 = swift_task_alloc();
  v3[38] = v17;
  *v17 = v3;
  v17[1] = sub_100061488;

  return BaseObjectGraph.inject<A>(_:)(v3 + 21, v15, v15);
}

uint64_t sub_100061488()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_100061A40;
  }

  else
  {
    v3 = sub_10006159C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006159C()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  v35 = *(v0 + 224);
  v36 = *(v0 + 216);
  v33 = *(v0 + 272);
  v34 = *(v0 + 208);
  v7 = *(v0 + 192);
  v37 = *(v0 + 168);
  ContainerLocation.cacheDirectoryUrl.getter();
  strcpy((v0 + 152), "testAsset.txt");
  *(v0 + 166) = -4864;
  (*(v4 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_100006518();
  URL.appending<A>(component:directoryHint:)();
  (*(v4 + 8))(v5, v6);
  v8 = *(v3 + 8);
  v8(v2, v33);
  URL.path(percentEncoded:)(0);
  v8(v1, v33);
  v9 = v7[2];
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  static SandboxExtensionToken.issue(writable:path:auditToken:)();

  if ((*(v35 + 48))(v34, 1, v36) == 1)
  {
    v13 = (v0 + 56);
    sub_10000DCA0(*(v0 + 208), &qword_1000A5A40, &qword_1000860F8);
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 184);
    TaskLocal.get()();
    v15 = *(v0 + 88);
    sub_100001CC0(v13, *(v0 + 80));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v16 = *(type metadata accessor for LogMessage() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C(v13);
    type metadata accessor for DaemonReadTestAssetResponse();
    sub_100061DA8(&qword_1000A5A48, &type metadata accessor for DaemonReadTestAssetResponse);
    sub_100061DA8(&qword_1000A5A50, &type metadata accessor for DaemonReadTestAssetResponse);
    DaemonResponse.init(reason:)();
  }

  else
  {
    v19 = *(v0 + 232);
    v20 = *(v0 + 240);
    v21 = *(v0 + 216);
    v22 = *(v0 + 224);
    v23 = *(v0 + 184);
    (*(v22 + 32))(v20, *(v0 + 208), v21);
    (*(v22 + 16))(v19, v20, v21);
    DaemonReadTestAssetResponse.init(token:)();

    (*(v22 + 8))(v20, v21);
    sub_100001D04(&qword_1000A5A58, &unk_100086100);
    swift_storeEnumTagMultiPayload();
  }

  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 264);
  v28 = *(v0 + 232);
  v27 = *(v0 + 240);
  v30 = *(v0 + 200);
  v29 = *(v0 + 208);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100061A40()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = v0[25];
  v21 = v0[23];
  TaskLocal.get()();
  v3 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100089E00;
  v7._countAndFlagsBits = 0xD00000000000002DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[16];
  v9 = v0[17];
  v0[15] = v9;
  v10 = sub_1000061A4(v0 + 12);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
  sub_10000DCA0((v0 + 12), &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);
  type metadata accessor for DaemonReadTestAssetResponse();
  sub_100061DA8(&qword_1000A5A48, &type metadata accessor for DaemonReadTestAssetResponse);
  sub_100061DA8(&qword_1000A5A50, &type metadata accessor for DaemonReadTestAssetResponse);
  DaemonResponse.init(_:)();
  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[33];
  v16 = v0[29];
  v15 = v0[30];
  v18 = v0[25];
  v17 = v0[26];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100061DA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100061E00()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100018750(v0, qword_1000A5A88);
  v1 = sub_100018718(v0, qword_1000A5A88);
  if (qword_1000A4D88 != -1)
  {
    swift_once();
  }

  v2 = sub_100018718(v0, qword_1000A63F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100061EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[146] = a4;
  v4[145] = a3;
  v4[144] = a2;
  v4[143] = a1;
  v5 = *(*(sub_100001D04(&qword_1000A5AA0, &qword_100086188) - 8) + 64) + 15;
  v4[147] = swift_task_alloc();
  v6 = type metadata accessor for JetPackAssetDiskCacheError();
  v4[148] = v6;
  v7 = *(v6 - 8);
  v4[149] = v7;
  v8 = *(v7 + 64) + 15;
  v4[150] = swift_task_alloc();
  v4[151] = swift_task_alloc();
  v9 = *(*(sub_100001D04(&qword_1000A5AA8, &qword_100086190) - 8) + 64) + 15;
  v4[152] = swift_task_alloc();
  v10 = type metadata accessor for ContainerLocation.ContainerError();
  v4[153] = v10;
  v11 = *(v10 - 8);
  v4[154] = v11;
  v12 = *(v11 + 64) + 15;
  v4[155] = swift_task_alloc();
  v13 = *(*(sub_100001D04(&qword_1000A5AB0, &qword_100086198) - 8) + 64) + 15;
  v4[156] = swift_task_alloc();
  v14 = type metadata accessor for SQLiteError();
  v4[157] = v14;
  v15 = *(v14 - 8);
  v4[158] = v15;
  v16 = *(v15 + 64) + 15;
  v4[159] = swift_task_alloc();
  v17 = type metadata accessor for _ErrorPredicate();
  v4[160] = v17;
  v18 = *(v17 - 8);
  v4[161] = v18;
  v19 = *(v18 + 64) + 15;
  v4[162] = swift_task_alloc();
  v20 = sub_100001D04(&qword_1000A5AB8, &unk_1000861A0);
  v4[163] = v20;
  v21 = *(v20 - 8);
  v4[164] = v21;
  v22 = *(v21 + 64) + 15;
  v4[165] = swift_task_alloc();
  v23 = type metadata accessor for XPCJetAsset();
  v4[166] = v23;
  v24 = *(v23 - 8);
  v4[167] = v24;
  v25 = *(v24 + 64) + 15;
  v4[168] = swift_task_alloc();
  v4[169] = swift_task_alloc();
  v26 = *(*(sub_100001D04(&qword_1000A4ED8, &qword_100084010) - 8) + 64) + 15;
  v4[170] = swift_task_alloc();
  v27 = type metadata accessor for JetPackAsset.Metadata();
  v4[171] = v27;
  v28 = *(v27 - 8);
  v4[172] = v28;
  v29 = *(v28 + 64) + 15;
  v4[173] = swift_task_alloc();
  v30 = type metadata accessor for JetPackAsset();
  v4[174] = v30;
  v31 = *(v30 - 8);
  v4[175] = v31;
  v32 = *(v31 + 64) + 15;
  v4[176] = swift_task_alloc();
  v4[177] = swift_task_alloc();
  v33 = type metadata accessor for OSSignpostID();
  v4[178] = v33;
  v34 = *(v33 - 8);
  v4[179] = v34;
  v35 = *(v34 + 64) + 15;
  v4[180] = swift_task_alloc();
  v4[181] = swift_task_alloc();
  v36 = *(*(sub_100001D04(&qword_1000A5AC0, &qword_1000861B0) - 8) + 64) + 15;
  v4[182] = swift_task_alloc();
  v37 = sub_100001D04(&qword_1000A5AC8, &unk_1000861B8);
  v4[183] = v37;
  v38 = *(v37 - 8);
  v4[184] = v38;
  v39 = *(v38 + 64) + 15;
  v4[185] = swift_task_alloc();
  v40 = type metadata accessor for ContinuousClock();
  v4[186] = v40;
  v41 = *(v40 - 8);
  v4[187] = v41;
  v42 = *(v41 + 64) + 15;
  v4[188] = swift_task_alloc();
  v43 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[189] = swift_task_alloc();
  v44 = type metadata accessor for URL();
  v4[190] = v44;
  v45 = *(v44 - 8);
  v4[191] = v45;
  v46 = *(v45 + 64) + 15;
  v4[192] = swift_task_alloc();
  v47 = type metadata accessor for URLJetPackAssetRequest();
  v4[193] = v47;
  v48 = *(v47 - 8);
  v4[194] = v48;
  v49 = *(v48 + 64) + 15;
  v4[195] = swift_task_alloc();
  v4[196] = swift_task_alloc();

  return _swift_task_switch(sub_10006257C, 0, 0);
}

uint64_t sub_10006257C()
{
  if (!jet_debug_tooling_os_variant_has_internal_content()())
  {
    goto LABEL_12;
  }

  v1 = *(v0 + 1568);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1536);
  v5 = *(v0 + 1528);
  v6 = *(v0 + 1520);
  v7 = *(v0 + 1152);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  URLJetPackAssetRequest.url.getter();
  v8 = *(v2 + 8);
  v8(v1, v3);
  URL.absoluteString.getter();
  v9 = *(v5 + 8);
  v9(v4, v6);
  v10._countAndFlagsBits = 0xD000000000000018;
  v10._object = 0x800000010008A0A0;
  LOBYTE(v7) = String.hasSuffix(_:)(v10);

  if (v7)
  {
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v11 = *(v0 + 336);
    sub_100001CC0((v0 + 304), *(v0 + 328));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v12 = *(type metadata accessor for LogMessage() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 304));
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v16 = *(v0 + 1568);
  v17 = *(v0 + 1544);
  v18 = *(v0 + 1536);
  v19 = *(v0 + 1520);
  v20 = *(v0 + 1152);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  URLJetPackAssetRequest.url.getter();
  v8(v16, v17);
  URL.absoluteString.getter();
  v9(v18, v19);
  v21._object = 0x800000010008A0C0;
  v21._countAndFlagsBits = 0xD000000000000014;
  LOBYTE(v20) = String.hasSuffix(_:)(v21);

  if (v20)
  {
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 1512);
    v23 = *(v0 + 1504);
    *(v0 + 1576) = qword_1000A6398;
    TaskLocal.get()();
    v24 = *(v0 + 456);
    sub_100001CC0((v0 + 424), *(v0 + 448));
    *(v0 + 1584) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v25 = *(type metadata accessor for LogMessage() - 8);
    *(v0 + 1592) = *(v25 + 72);
    *(v0 + 252) = *(v25 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v26._countAndFlagsBits = 0xD00000000000004CLL;
    v26._object = 0x800000010008A0E0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v0 + 1000) = &type metadata for Double;
    *(v0 + 976) = 0x404E000000000000;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 976, &qword_1000A5630, &unk_100083BF0);
    v27._countAndFlagsBits = 0x73646E6F63657320;
    v27._object = 0xE90000000000002ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    sub_100001D4C((v0 + 424));
    v28 = static Duration.seconds(_:)();
    v30 = v29;
    static Clock<>.continuous.getter();
    v31 = swift_task_alloc();
    *(v0 + 1600) = v31;
    *v31 = v0;
    v31[1] = sub_100062FF4;
    v32 = *(v0 + 1504);

    return sub_100068E74(v28, v30, 0, 0, 1);
  }

  else
  {
LABEL_12:
    v33 = *(v0 + 1472);
    v34 = *(v0 + 1464);
    v35 = *(v0 + 1456);
    v36 = *(v0 + 1168);
    sub_10006795C(v35);
    if ((*(v33 + 48))(v35, 1, v34) == 1)
    {
      sub_10000DCA0(*(v0 + 1456), &qword_1000A5AC0, &qword_1000861B0);
      if (qword_1000A4DD0 != -1)
      {
        swift_once();
      }

      v37 = *(v0 + 1448);
      v38 = type metadata accessor for OSSignposter();
      sub_100018718(v38, qword_1000A5A88);
      OSSignposter.logHandle.getter();
      OSSignpostID.init(log:)();
      v39 = OSSignposter.logHandle.getter();
      v40 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v41 = *(v0 + 1448);
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v40, v43, "GetAssetRequestHandler.handleRequest", "", v42, 2u);
      }

      v44 = *(v0 + 1448);
      v45 = *(v0 + 1440);
      v46 = *(v0 + 1432);
      v47 = *(v0 + 1424);

      (*(v46 + 16))(v45, v44, v47);
      v48 = type metadata accessor for OSSignpostIntervalState();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      *(v0 + 1608) = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v46 + 8))(v44, v47);
      v51 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
      v52 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v53 = swift_task_alloc();
      *(v0 + 1616) = v53;
      *v53 = v0;
      v53[1] = sub_100063760;
      v54 = *(v0 + 1168);

      return BaseObjectGraph.inject<A>(_:)(v0 + 504, v51, v51);
    }

    else
    {
      sub_100068E04(*(v0 + 1456), *(v0 + 1480));
      if (qword_1000A4D40 != -1)
      {
        swift_once();
      }

      v55 = *(v0 + 1480);
      v56 = *(v0 + 1144);
      TaskLocal.get()();
      v57 = *(v0 + 496);
      sub_100001CC0((v0 + 464), *(v0 + 488));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v58 = *(type metadata accessor for LogMessage() - 8);
      v59 = *(v58 + 72);
      v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C((v0 + 464));
      sub_100068E04(v55, v56);
      v61 = *(v0 + 1568);
      v62 = *(v0 + 1560);
      v63 = *(v0 + 1536);
      v64 = *(v0 + 1512);
      v65 = *(v0 + 1504);
      v66 = *(v0 + 1480);
      v67 = *(v0 + 1456);
      v68 = *(v0 + 1448);
      v69 = *(v0 + 1440);
      v70 = *(v0 + 1416);
      v72 = *(v0 + 1408);
      v73 = *(v0 + 1384);
      v74 = *(v0 + 1360);
      v75 = *(v0 + 1352);
      v76 = *(v0 + 1344);
      v77 = *(v0 + 1320);
      v78 = *(v0 + 1296);
      v79 = *(v0 + 1272);
      v80 = *(v0 + 1248);
      v81 = *(v0 + 1240);
      v82 = *(v0 + 1216);
      v83 = *(v0 + 1208);
      v84 = *(v0 + 1200);
      v85 = *(v0 + 1176);

      v71 = *(v0 + 8);

      return v71();
    }
  }
}

uint64_t sub_100062FF4()
{
  v2 = *v1;
  v3 = *(*v1 + 1600);
  v4 = *v1;

  v5 = v2[188];
  v6 = v2[187];
  v7 = v2[186];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_1000693D0;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10006318C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10006318C()
{
  v1 = *(v0 + 252);
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1584);
  v4 = *(v0 + 1576);
  TaskLocal.get()();
  v5 = *(v0 + 416);
  sub_100001CC0((v0 + 384), *(v0 + 408));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 384));
  v6 = *(v0 + 1472);
  v7 = *(v0 + 1464);
  v8 = *(v0 + 1456);
  v9 = *(v0 + 1168);
  sub_10006795C(v8);
  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    sub_10000DCA0(*(v0 + 1456), &qword_1000A5AC0, &qword_1000861B0);
    if (qword_1000A4DD0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 1448);
    v11 = type metadata accessor for OSSignposter();
    sub_100018718(v11, qword_1000A5A88);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v12 = OSSignposter.logHandle.getter();
    v13 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v14 = *(v0 + 1448);
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v16, "GetAssetRequestHandler.handleRequest", "", v15, 2u);
    }

    v17 = *(v0 + 1448);
    v18 = *(v0 + 1440);
    v19 = *(v0 + 1432);
    v20 = *(v0 + 1424);

    (*(v19 + 16))(v18, v17, v20);
    v21 = type metadata accessor for OSSignpostIntervalState();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    *(v0 + 1608) = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v19 + 8))(v17, v20);
    v24 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v25 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v26 = swift_task_alloc();
    *(v0 + 1616) = v26;
    *v26 = v0;
    v26[1] = sub_100063760;
    v27 = *(v0 + 1168);

    return BaseObjectGraph.inject<A>(_:)(v0 + 504, v24, v24);
  }

  else
  {
    sub_100068E04(*(v0 + 1456), *(v0 + 1480));
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 1480);
    v29 = *(v0 + 1144);
    TaskLocal.get()();
    v30 = *(v0 + 496);
    sub_100001CC0((v0 + 464), *(v0 + 488));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v31 = *(type metadata accessor for LogMessage() - 8);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    sub_100001D4C((v0 + 464));
    sub_100068E04(v28, v29);
    v34 = *(v0 + 1568);
    v35 = *(v0 + 1560);
    v36 = *(v0 + 1536);
    v37 = *(v0 + 1512);
    v38 = *(v0 + 1504);
    v39 = *(v0 + 1480);
    v40 = *(v0 + 1456);
    v41 = *(v0 + 1448);
    v42 = *(v0 + 1440);
    v43 = *(v0 + 1416);
    v46 = *(v0 + 1408);
    v47 = *(v0 + 1384);
    v48 = *(v0 + 1360);
    v49 = *(v0 + 1352);
    v50 = *(v0 + 1344);
    v51 = *(v0 + 1320);
    v52 = *(v0 + 1296);
    v53 = *(v0 + 1272);
    v54 = *(v0 + 1248);
    v55 = *(v0 + 1240);
    v56 = *(v0 + 1216);
    v57 = *(v0 + 1208);
    v58 = *(v0 + 1200);
    v59 = *(v0 + 1176);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_100063760()
{
  v2 = *(*v1 + 1616);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1000656E4;
  }

  else
  {
    v3 = sub_100063878;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100063878()
{
  sub_10000626C((v0 + 504), v0 + 704);
  sub_100001CC0((v0 + 704), *(v0 + 728));
  type metadata accessor for PushManager();
  sub_100038628();
  sub_100001D4C((v0 + 704));
  v1 = *(v0 + 1568);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1536);
  v5 = *(v0 + 1528);
  v6 = *(v0 + 1520);
  v21 = *(v0 + 1512);
  v7 = *(v0 + 1160);
  v20 = *(v0 + 1152);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  URLJetPackAssetRequest.url.getter();
  v8 = *(v2 + 8);
  *(v0 + 1624) = v8;
  *(v0 + 1632) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  *(v0 + 1640) = URL.absoluteString.getter();
  *(v0 + 1648) = v9;
  (*(v5 + 8))(v4, v6);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  *(v0 + 1656) = URLJetPackAssetRequest.usageIDOrDefault.getter();
  *(v0 + 1664) = v10;
  v8(v1, v3);
  *(v0 + 1672) = *v7;
  *(v0 + 1680) = v7[1];
  type metadata accessor for LocalPreferences();
  sub_100068984(v7, v0 + 112);
  sub_100068984(v7, v0 + 160);
  *(v0 + 1688) = static LocalPreferences.currentApplication.getter();
  DaemonGetAssetRequest.urlAssetRequest.getter();
  static OSLogger.jetPackAssets.getter();
  v11 = *(v0 + 576);
  sub_100001CC0((v0 + 544), *(v0 + 568));
  *(v0 + 1696) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v12 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1704) = *(v12 + 72);
  *(v0 + 300) = *(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001000896C0;
  v13._countAndFlagsBits = 0xD000000000000017;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v0 + 968) = v6;
  sub_1000061A4((v0 + 944));
  URLJetPackAssetRequest.url.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 944, &qword_1000A5630, &unk_100083BF0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 544));
  v15 = type metadata accessor for AssetSQLiteDatabase();
  v16 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v17 = swift_task_alloc();
  *(v0 + 1712) = v17;
  *v17 = v0;
  v17[1] = sub_100063C18;
  v18 = *(v0 + 1168);

  return BaseObjectGraph.inject<A>(_:)(v0 + 1120, v15, v15);
}

uint64_t sub_100063C18()
{
  v2 = *(*v1 + 1712);
  v5 = *v1;
  *(*v1 + 1720) = v0;

  if (v0)
  {
    v3 = sub_100063F50;
  }

  else
  {
    v3 = sub_100063D2C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100063D2C()
{
  v1 = v0[211];
  v2 = v0[210];
  v3 = v0[209];
  v4 = v0[195];
  v5 = v0[146];
  v0[216] = v0[140];
  v6 = swift_task_alloc();
  v0[217] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = 0;
  *(v6 + 56) = v1;
  v7 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v8 = swift_task_alloc();
  v0[218] = v8;
  *v8 = v0;
  v8[1] = sub_100063E34;
  v9 = v0[177];
  v10 = v0[174];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v9, &unk_1000861F0, v6, v10);
}

uint64_t sub_100063E34()
{
  v2 = *v1;
  v3 = *(*v1 + 1744);
  v7 = *v1;
  *(*v1 + 1752) = v0;

  if (v0)
  {
    v4 = sub_100065094;
  }

  else
  {
    v5 = *(v2 + 1736);

    v4 = sub_10006458C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100063F50()
{
  v1 = *(v0 + 1720);
  v2 = *(v0 + 1632);
  (*(v0 + 1624))(*(v0 + 1560), *(v0 + 1544));
  *(v0 + 1760) = v1;
  v3 = *(v0 + 1688);

  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 300);
  v5 = *(v0 + 1704);
  v6 = *(v0 + 1696);
  v48 = *(v0 + 1672);
  v46 = *(v0 + 1656);
  v47 = *(v0 + 1648);
  v45 = *(v0 + 1640);
  v7 = *(v0 + 1512);
  v42 = *(v0 + 1360);
  v49 = *(v0 + 1320);
  v50 = *(v0 + 1296);
  v51 = *(v0 + 1304);
  v52 = *(v0 + 1288);
  v53 = *(v0 + 1280);
  v54 = *(v0 + 1312);
  v43 = *(v0 + 1168);
  v44 = *(v0 + 1160);
  *(v0 + 1768) = qword_1000A6398;
  TaskLocal.get()();
  v41 = *(v0 + 936);
  sub_100001CC0((v0 + 904), *(v0 + 928));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000021;
  v8._object = 0x8000000100089ED0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 1040);
  v10 = *(v0 + 1048);
  *(v0 + 1032) = v10;
  v11 = sub_1000061A4((v0 + 1008));
  (*(*(v10 - 8) + 16))(v11, v9, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1008, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 904));
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v42, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v43;
  *(v14 + 40) = v48;
  *(v14 + 56) = v46;
  *(v14 + 72) = v45;
  *(v14 + 80) = v47;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0;
  sub_100068984(v44, v0 + 16);

  sub_100023290(0, 0, v42, &unk_1000861D8, v14);

  *(v0 + 1112) = v1;
  swift_errorRetain();
  *(v0 + 1776) = sub_100001D04(&qword_1000A5AD8, &unk_1000861E0);
  _ErrorTraverser.init(startingWith:)();
  static _ErrorPredicate.noConnection.getter();
  v15 = _ErrorTraverser.first(_:)();
  *(v0 + 1784) = v15;
  (*(v52 + 8))(v50, v53);
  (*(v54 + 8))(v49, v51);
  if (v15)
  {
    v16 = *(v0 + 300);
    v17 = *(v0 + 1704);
    v18 = *(v0 + 1696);
    sub_100068B00(*(v0 + 1160));
    TaskLocal.get()();
    v19 = *(v0 + 376);
    sub_100001CC0((v0 + 344), *(v0 + 368));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 344));
    v20 = _convertErrorToNSError(_:)();
    v21 = [v20 domain];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
    *(v0 + 1064) = v22;
    *(v0 + 1072) = v23;

    *(v0 + 1792) = v24;
    v25 = _convertErrorToNSError(_:)();
    *(v0 + 1800) = [v25 code];

    v26 = sub_100001D04(&unk_1000A5740, &unk_100085540);
    v27 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v28 = swift_task_alloc();
    *(v0 + 1808) = v28;
    *v28 = v0;
    v28[1] = sub_100065A5C;
    v29 = *(v0 + 1168);
    v30 = v0 + 744;
  }

  else
  {
    sub_100068B00(*(v0 + 1160));
    v31 = _convertErrorToNSError(_:)();
    v32 = [v31 domain];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
    *(v0 + 1080) = v33;
    *(v0 + 1088) = v34;

    *(v0 + 1832) = v35;
    v36 = _convertErrorToNSError(_:)();
    *(v0 + 1840) = [v36 code];

    v26 = sub_100001D04(&unk_1000A5740, &unk_100085540);
    v37 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v38 = swift_task_alloc();
    *(v0 + 1848) = v38;
    *v38 = v0;
    v38[1] = sub_1000661B8;
    v39 = *(v0 + 1168);
    v30 = v0 + 584;
  }

  return BaseObjectGraph.inject<A>(_:)(v30, v26, v26);
}

uint64_t sub_10006458C()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1560);
  v5 = *(v0 + 1544);
  v6 = *(v0 + 1416);

  v3(v4, v5);
  if (JetPackAsset.wasReadFromCache.getter())
  {
    v7 = *(v0 + 1416);
    if (JetPackAsset.wasRevalidated.getter())
    {
      v106 = 0xD000000000000010;
      v109 = 0x800000010008A020;
    }

    else
    {
      v8 = *(v0 + 1416);
      v9 = JetPackAsset.willBeRevalidated.getter();
      v10 = 0x800000010008A000;
      if (v9)
      {
        v11 = 0xD000000000000013;
      }

      else
      {
        v11 = 0x6568636163;
      }

      if ((v9 & 1) == 0)
      {
        v10 = 0xE500000000000000;
      }

      v106 = v11;
      v109 = v10;
    }
  }

  else
  {
    v106 = 0x6B726F7774656ELL;
    v109 = 0xE700000000000000;
  }

  v128 = *(v0 + 1752);
  v97 = *(v0 + 1672);
  v100 = *(v0 + 1664);
  v103 = *(v0 + 1648);
  v91 = *(v0 + 1640);
  v94 = *(v0 + 1656);
  v112 = *(v0 + 1416);
  v116 = *(v0 + 1408);
  v12 = *(v0 + 1400);
  v120 = *(v0 + 1392);
  v13 = *(v0 + 1384);
  v14 = *(v0 + 1376);
  v15 = *(v0 + 1368);
  v16 = *(v0 + 1360);
  v124 = *(v0 + 1352);
  v17 = *(v0 + 1168);
  v18 = *(v0 + 1160);
  JetPackAsset.metadata.getter();
  v19 = JetPackAsset.Metadata.assetVersion.getter();
  v21 = v20;
  (*(v14 + 8))(v13, v15);
  v22 = type metadata accessor for TaskPriority();
  v87 = *(*(v22 - 8) + 56);
  v87(v16, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v17;
  *(v23 + 40) = v97;
  *(v23 + 56) = v94;
  *(v23 + 64) = v100;
  *(v23 + 72) = v91;
  *(v23 + 80) = v103;
  *(v23 + 88) = v19;
  *(v23 + 96) = v21;
  *(v23 + 104) = v106;
  *(v23 + 112) = v109;
  *(v23 + 120) = 1;
  sub_100068984(v18, v0 + 64);

  sub_100023290(0, 0, v16, &unk_1000861F8, v23);

  (*(v12 + 16))(v116, v112, v120);
  v24 = v18[2];
  v25 = v18[3];
  v26 = v18[4];
  v27 = v18[5];
  XPCJetAsset.init(_:auditToken:)();
  if (v128)
  {
    (*(*(v0 + 1400) + 8))(*(v0 + 1416), *(v0 + 1392));
    *(v0 + 1760) = v128;
    v28 = *(v0 + 1688);

    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 300);
    v30 = *(v0 + 1704);
    v31 = *(v0 + 1696);
    v104 = *(v0 + 1672);
    v98 = *(v0 + 1656);
    v101 = *(v0 + 1648);
    v95 = *(v0 + 1640);
    v32 = *(v0 + 1512);
    v86 = *(v0 + 1360);
    v107 = *(v0 + 1320);
    v125 = *(v0 + 1312);
    v113 = *(v0 + 1304);
    v110 = *(v0 + 1296);
    v117 = *(v0 + 1288);
    v121 = *(v0 + 1280);
    v89 = *(v0 + 1168);
    v92 = *(v0 + 1160);
    *(v0 + 1768) = qword_1000A6398;
    TaskLocal.get()();
    v85 = *(v0 + 936);
    sub_100001CC0((v0 + 904), *(v0 + 928));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v33._countAndFlagsBits = 0xD000000000000021;
    v33._object = 0x8000000100089ED0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    swift_getErrorValue();
    v34 = *(v0 + 1040);
    v35 = *(v0 + 1048);
    *(v0 + 1032) = v35;
    v36 = sub_1000061A4((v0 + 1008));
    (*(*(v35 - 8) + 16))(v36, v34, v35);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 1008, &qword_1000A5630, &unk_100083BF0);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 904));
    v87(v86, 1, 1, v22);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = v89;
    *(v38 + 40) = v104;
    *(v38 + 56) = v98;
    *(v38 + 72) = v95;
    *(v38 + 80) = v101;
    *(v38 + 88) = 0u;
    *(v38 + 104) = 0u;
    *(v38 + 120) = 0;
    sub_100068984(v92, v0 + 16);

    sub_100023290(0, 0, v86, &unk_1000861D8, v38);

    *(v0 + 1112) = v128;
    swift_errorRetain();
    *(v0 + 1776) = sub_100001D04(&qword_1000A5AD8, &unk_1000861E0);
    _ErrorTraverser.init(startingWith:)();
    static _ErrorPredicate.noConnection.getter();
    v39 = _ErrorTraverser.first(_:)();
    *(v0 + 1784) = v39;
    (*(v117 + 8))(v110, v121);
    (*(v125 + 8))(v107, v113);
    if (v39)
    {
      v40 = *(v0 + 300);
      v41 = *(v0 + 1704);
      v42 = *(v0 + 1696);
      sub_100068B00(*(v0 + 1160));
      TaskLocal.get()();
      v43 = *(v0 + 376);
      sub_100001CC0((v0 + 344), *(v0 + 368));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      sub_100001D4C((v0 + 344));
      v44 = _convertErrorToNSError(_:)();
      v45 = [v44 domain];

      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;
      *(v0 + 1064) = v46;
      *(v0 + 1072) = v47;

      *(v0 + 1792) = v48;
      v49 = _convertErrorToNSError(_:)();
      *(v0 + 1800) = [v49 code];

      v50 = sub_100001D04(&unk_1000A5740, &unk_100085540);
      v51 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v52 = swift_task_alloc();
      *(v0 + 1808) = v52;
      *v52 = v0;
      v52[1] = sub_100065A5C;
      v53 = *(v0 + 1168);
      v54 = v0 + 744;
    }

    else
    {
      sub_100068B00(*(v0 + 1160));
      v76 = _convertErrorToNSError(_:)();
      v77 = [v76 domain];

      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;
      *(v0 + 1080) = v78;
      *(v0 + 1088) = v79;

      *(v0 + 1832) = v80;
      v81 = _convertErrorToNSError(_:)();
      *(v0 + 1840) = [v81 code];

      v50 = sub_100001D04(&unk_1000A5740, &unk_100085540);
      v82 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v83 = swift_task_alloc();
      *(v0 + 1848) = v83;
      *v83 = v0;
      v83[1] = sub_1000661B8;
      v84 = *(v0 + 1168);
      v54 = v0 + 584;
    }

    return BaseObjectGraph.inject<A>(_:)(v54, v50, v50);
  }

  else
  {
    v55 = *(v0 + 1664);
    v56 = *(v0 + 1648);
    v126 = *(v0 + 1464);
    v129 = *(v0 + 1608);
    v122 = *(v0 + 1416);
    v57 = *(v0 + 1400);
    v114 = *(v0 + 1688);
    v118 = *(v0 + 1392);
    v58 = *(v0 + 1352);
    v59 = *(v0 + 1344);
    v60 = *(v0 + 1336);
    v61 = *(v0 + 1328);
    v62 = *(v0 + 1160);
    v63 = *(v0 + 1144);
    sub_100068B00(v62);
    sub_100068B00(v62);

    (*(v60 + 16))(v59, v58, v61);
    DaemonGetAssetResponse.init(asset:)();

    (*(v60 + 8))(v58, v61);
    (*(v57 + 8))(v122, v118);
    swift_storeEnumTagMultiPayload();
    sub_100067C3C("GetAssetRequestHandler.handleRequest", 36, 2);

    v64 = *(v0 + 1568);
    v65 = *(v0 + 1560);
    v66 = *(v0 + 1536);
    v67 = *(v0 + 1512);
    v68 = *(v0 + 1504);
    v69 = *(v0 + 1480);
    v70 = *(v0 + 1456);
    v71 = *(v0 + 1448);
    v72 = *(v0 + 1440);
    v73 = *(v0 + 1416);
    v88 = *(v0 + 1408);
    v90 = *(v0 + 1384);
    v93 = *(v0 + 1360);
    v96 = *(v0 + 1352);
    v99 = *(v0 + 1344);
    v102 = *(v0 + 1320);
    v105 = *(v0 + 1296);
    v108 = *(v0 + 1272);
    v111 = *(v0 + 1248);
    v115 = *(v0 + 1240);
    v119 = *(v0 + 1216);
    v123 = *(v0 + 1208);
    v127 = *(v0 + 1200);
    v130 = *(v0 + 1176);

    v74 = *(v0 + 8);

    return v74();
  }
}

uint64_t sub_100065094()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1728);

  v3 = *(v0 + 1752);
  v4 = *(v0 + 1632);
  (*(v0 + 1624))(*(v0 + 1560), *(v0 + 1544));
  *(v0 + 1760) = v3;
  v5 = *(v0 + 1688);

  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 300);
  v7 = *(v0 + 1704);
  v8 = *(v0 + 1696);
  v50 = *(v0 + 1672);
  v48 = *(v0 + 1656);
  v49 = *(v0 + 1648);
  v47 = *(v0 + 1640);
  v9 = *(v0 + 1512);
  v44 = *(v0 + 1360);
  v51 = *(v0 + 1320);
  v52 = *(v0 + 1296);
  v53 = *(v0 + 1304);
  v54 = *(v0 + 1288);
  v55 = *(v0 + 1280);
  v56 = *(v0 + 1312);
  v45 = *(v0 + 1168);
  v46 = *(v0 + 1160);
  *(v0 + 1768) = qword_1000A6398;
  TaskLocal.get()();
  v43 = *(v0 + 936);
  sub_100001CC0((v0 + 904), *(v0 + 928));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD000000000000021;
  v10._object = 0x8000000100089ED0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v11 = *(v0 + 1040);
  v12 = *(v0 + 1048);
  *(v0 + 1032) = v12;
  v13 = sub_1000061A4((v0 + 1008));
  (*(*(v12 - 8) + 16))(v13, v11, v12);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1008, &qword_1000A5630, &unk_100083BF0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 904));
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v44, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v45;
  *(v16 + 40) = v50;
  *(v16 + 56) = v48;
  *(v16 + 72) = v47;
  *(v16 + 80) = v49;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 120) = 0;
  sub_100068984(v46, v0 + 16);

  sub_100023290(0, 0, v44, &unk_1000861D8, v16);

  *(v0 + 1112) = v3;
  swift_errorRetain();
  *(v0 + 1776) = sub_100001D04(&qword_1000A5AD8, &unk_1000861E0);
  _ErrorTraverser.init(startingWith:)();
  static _ErrorPredicate.noConnection.getter();
  v17 = _ErrorTraverser.first(_:)();
  *(v0 + 1784) = v17;
  (*(v54 + 8))(v52, v55);
  (*(v56 + 8))(v51, v53);
  if (v17)
  {
    v18 = *(v0 + 300);
    v19 = *(v0 + 1704);
    v20 = *(v0 + 1696);
    sub_100068B00(*(v0 + 1160));
    TaskLocal.get()();
    v21 = *(v0 + 376);
    sub_100001CC0((v0 + 344), *(v0 + 368));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 344));
    v22 = _convertErrorToNSError(_:)();
    v23 = [v22 domain];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    *(v0 + 1064) = v24;
    *(v0 + 1072) = v25;

    *(v0 + 1792) = v26;
    v27 = _convertErrorToNSError(_:)();
    *(v0 + 1800) = [v27 code];

    v28 = sub_100001D04(&unk_1000A5740, &unk_100085540);
    v29 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v30 = swift_task_alloc();
    *(v0 + 1808) = v30;
    *v30 = v0;
    v30[1] = sub_100065A5C;
    v31 = *(v0 + 1168);
    v32 = v0 + 744;
  }

  else
  {
    sub_100068B00(*(v0 + 1160));
    v33 = _convertErrorToNSError(_:)();
    v34 = [v33 domain];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
    *(v0 + 1080) = v35;
    *(v0 + 1088) = v36;

    *(v0 + 1832) = v37;
    v38 = _convertErrorToNSError(_:)();
    *(v0 + 1840) = [v38 code];

    v28 = sub_100001D04(&unk_1000A5740, &unk_100085540);
    v39 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v40 = swift_task_alloc();
    *(v0 + 1848) = v40;
    *v40 = v0;
    v40[1] = sub_1000661B8;
    v41 = *(v0 + 1168);
    v32 = v0 + 584;
  }

  return BaseObjectGraph.inject<A>(_:)(v32, v28, v28);
}

uint64_t sub_1000656E4()
{
  *(v0 + 536) = 0;
  *(v0 + 504) = 0u;
  *(v0 + 520) = 0u;
  sub_10000DCA0(v0 + 504, &qword_1000A5AD0, &qword_1000861C8);
  v1 = *(v0 + 1568);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1536);
  v5 = *(v0 + 1528);
  v6 = *(v0 + 1520);
  v21 = *(v0 + 1512);
  v7 = *(v0 + 1160);
  v20 = *(v0 + 1152);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  URLJetPackAssetRequest.url.getter();
  v8 = *(v2 + 8);
  *(v0 + 1624) = v8;
  *(v0 + 1632) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  *(v0 + 1640) = URL.absoluteString.getter();
  *(v0 + 1648) = v9;
  (*(v5 + 8))(v4, v6);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  *(v0 + 1656) = URLJetPackAssetRequest.usageIDOrDefault.getter();
  *(v0 + 1664) = v10;
  v8(v1, v3);
  *(v0 + 1672) = *v7;
  *(v0 + 1680) = v7[1];
  type metadata accessor for LocalPreferences();
  sub_100068984(v7, v0 + 112);
  sub_100068984(v7, v0 + 160);
  *(v0 + 1688) = static LocalPreferences.currentApplication.getter();
  DaemonGetAssetRequest.urlAssetRequest.getter();
  static OSLogger.jetPackAssets.getter();
  v11 = *(v0 + 576);
  sub_100001CC0((v0 + 544), *(v0 + 568));
  *(v0 + 1696) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v12 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1704) = *(v12 + 72);
  *(v0 + 300) = *(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001000896C0;
  v13._countAndFlagsBits = 0xD000000000000017;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v0 + 968) = v6;
  sub_1000061A4((v0 + 944));
  URLJetPackAssetRequest.url.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 944, &qword_1000A5630, &unk_100083BF0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 544));
  v15 = type metadata accessor for AssetSQLiteDatabase();
  v16 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v17 = swift_task_alloc();
  *(v0 + 1712) = v17;
  *v17 = v0;
  v17[1] = sub_100063C18;
  v18 = *(v0 + 1168);

  return BaseObjectGraph.inject<A>(_:)(v0 + 1120, v15, v15);
}

uint64_t sub_100065A5C()
{
  v2 = *v1;
  v3 = *(*v1 + 1808);
  v8 = *v1;
  *(*v1 + 1816) = v0;

  if (v0)
  {
    v4 = v2[224];
    v5 = v2[145];

    sub_100068B00(v5);
    v6 = sub_100065E90;
  }

  else
  {
    v2[228] = v2[133];
    v6 = sub_100065B8C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100065B8C()
{
  v1 = *(v0 + 1824);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1672);
  v36 = *(v0 + 1160);
  v6 = *(v0 + 776);
  sub_100001CC0((v0 + 744), *(v0 + 768));
  *(v0 + 208) = v1;
  *(v0 + 216) = v3;
  *(v0 + 224) = v2;
  *(v0 + 232) = v5;
  *(v0 + 240) = v4;
  *(v0 + 248) = 1;
  sub_100068B54();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100068B00(v36);
  sub_100001D4C((v0 + 744));
  v7 = *(v0 + 1784);
  v8 = *(v0 + 1760);
  v9 = *(v0 + 1608);
  v10 = *(v0 + 1144);
  _convertErrorToNSError(_:)();
  type metadata accessor for DaemonGetAssetResponse();
  sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse);
  sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse);
  DaemonResponse.init(nsError:)();

  sub_100067C3C("GetAssetRequestHandler.handleRequest", 36, 2);

  v11 = *(v0 + 1568);
  v12 = *(v0 + 1560);
  v13 = *(v0 + 1536);
  v14 = *(v0 + 1512);
  v15 = *(v0 + 1504);
  v16 = *(v0 + 1480);
  v17 = *(v0 + 1456);
  v18 = *(v0 + 1448);
  v19 = *(v0 + 1440);
  v20 = *(v0 + 1416);
  v23 = *(v0 + 1408);
  v24 = *(v0 + 1384);
  v25 = *(v0 + 1360);
  v26 = *(v0 + 1352);
  v27 = *(v0 + 1344);
  v28 = *(v0 + 1320);
  v29 = *(v0 + 1296);
  v30 = *(v0 + 1272);
  v31 = *(v0 + 1248);
  v32 = *(v0 + 1240);
  v33 = *(v0 + 1216);
  v34 = *(v0 + 1208);
  v35 = *(v0 + 1200);
  v37 = *(v0 + 1176);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100065E90()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1768);
  v3 = *(v0 + 300);
  v4 = *(v0 + 1704);
  v5 = *(v0 + 1696);
  TaskLocal.get()();
  v6 = *(v0 + 696);
  sub_100001CC0((v0 + 664), *(v0 + 688));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 664));
  v7 = *(v0 + 1784);
  v8 = *(v0 + 1760);
  v9 = *(v0 + 1608);
  v10 = *(v0 + 1144);
  _convertErrorToNSError(_:)();
  type metadata accessor for DaemonGetAssetResponse();
  sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse);
  sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse);
  DaemonResponse.init(nsError:)();

  sub_100067C3C("GetAssetRequestHandler.handleRequest", 36, 2);

  v11 = *(v0 + 1568);
  v12 = *(v0 + 1560);
  v13 = *(v0 + 1536);
  v14 = *(v0 + 1512);
  v15 = *(v0 + 1504);
  v16 = *(v0 + 1480);
  v17 = *(v0 + 1456);
  v18 = *(v0 + 1448);
  v19 = *(v0 + 1440);
  v20 = *(v0 + 1416);
  v23 = *(v0 + 1408);
  v24 = *(v0 + 1384);
  v25 = *(v0 + 1360);
  v26 = *(v0 + 1352);
  v27 = *(v0 + 1344);
  v28 = *(v0 + 1320);
  v29 = *(v0 + 1296);
  v30 = *(v0 + 1272);
  v31 = *(v0 + 1248);
  v32 = *(v0 + 1240);
  v33 = *(v0 + 1216);
  v34 = *(v0 + 1208);
  v35 = *(v0 + 1200);
  v36 = *(v0 + 1176);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000661B8()
{
  v2 = *v1;
  v3 = *(*v1 + 1848);
  v8 = *v1;
  *(*v1 + 1856) = v0;

  if (v0)
  {
    v4 = v2[229];
    v5 = v2[145];

    sub_100068B00(v5);
    v6 = sub_100066E04;
  }

  else
  {
    v2[233] = v2[135];
    v6 = sub_1000662E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000662E8()
{
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1840);
  v3 = *(v0 + 1832);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1672);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 616);
  sub_100001CC0((v0 + 584), *(v0 + 608));
  *(v0 + 256) = v1;
  *(v0 + 264) = v3;
  *(v0 + 272) = v2;
  *(v0 + 280) = v5;
  *(v0 + 288) = v4;
  *(v0 + 296) = 0;
  sub_100068B54();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100068B00(v6);
  sub_100001D4C((v0 + 584));
  v8 = *(v0 + 1776);
  v9 = *(v0 + 1264);
  v10 = *(v0 + 1256);
  v11 = *(v0 + 1248);
  *(v0 + 1104) = *(v0 + 1760);
  swift_errorRetain();
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v14 = *(v0 + 1768);
    v99 = *(v0 + 1760);
    v15 = *(v0 + 300);
    v16 = *(v0 + 1704);
    v90 = *(v0 + 1696);
    v17 = *(v0 + 1608);
    v18 = *(v0 + 1272);
    v19 = *(v0 + 1264);
    v20 = *(v0 + 1256);
    v21 = *(v0 + 1248);
    v95 = *(v0 + 1144);
    v13(v21, 0, 1, v20);
    (*(v19 + 32))(v18, v21, v20);
    TaskLocal.get()();
    v22 = *(v0 + 896);
    sub_100001CC0((v0 + 864), *(v0 + 888));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 864));
    sub_100069384(&qword_1000A5B00, &type metadata accessor for SQLiteError);
    swift_allocError();
    v23 = v18;
    (*(v19 + 16))(v24, v18, v20);
    _convertErrorToNSError(_:)();
    type metadata accessor for DaemonGetAssetResponse();
    sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse);
    sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse);
LABEL_5:
    DaemonResponse.init(nsError:)();

    (*(v19 + 8))(v23, v20);
LABEL_6:

    goto LABEL_7;
  }

  v25 = *(v0 + 1776);
  v26 = *(v0 + 1760);
  v27 = *(v0 + 1248);
  v28 = *(v0 + 1232);
  v29 = *(v0 + 1224);
  v30 = *(v0 + 1216);
  v13(v27, 1, 1, *(v0 + 1256));
  sub_10000DCA0(v27, &qword_1000A5AB0, &qword_100086198);
  *(v0 + 1136) = v26;
  swift_errorRetain();
  v31 = swift_dynamicCast();
  v32 = *(v28 + 56);
  if (v31)
  {
    v33 = *(v0 + 1768);
    v100 = *(v0 + 1760);
    v34 = *(v0 + 300);
    v35 = *(v0 + 1704);
    v91 = *(v0 + 1696);
    v36 = *(v0 + 1608);
    v37 = *(v0 + 1240);
    v19 = *(v0 + 1232);
    v20 = *(v0 + 1224);
    v38 = *(v0 + 1216);
    v96 = *(v0 + 1144);
    v32(v38, 0, 1, v20);
    (*(v19 + 32))(v37, v38, v20);
    TaskLocal.get()();
    v39 = *(v0 + 856);
    sub_100001CC0((v0 + 824), *(v0 + 848));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 824));
    sub_100069384(&qword_1000A5AF8, &type metadata accessor for ContainerLocation.ContainerError);
    swift_allocError();
    v23 = v37;
    (*(v19 + 16))(v40, v37, v20);
    _convertErrorToNSError(_:)();
    type metadata accessor for DaemonGetAssetResponse();
    sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse);
    sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse);
    goto LABEL_5;
  }

  v53 = *(v0 + 1776);
  v54 = *(v0 + 1760);
  v55 = *(v0 + 1216);
  v56 = *(v0 + 1192);
  v57 = *(v0 + 1184);
  v58 = *(v0 + 1176);
  v32(v55, 1, 1, *(v0 + 1224));
  sub_10000DCA0(v55, &qword_1000A5AA8, &qword_100086190);
  *(v0 + 1096) = v54;
  swift_errorRetain();
  v59 = swift_dynamicCast();
  v60 = *(v56 + 56);
  if (v59)
  {
    v61 = *(v0 + 1208);
    v62 = *(v0 + 1200);
    v63 = *(v0 + 1192);
    v64 = *(v0 + 1184);
    v65 = *(v0 + 1176);
    v60(v65, 0, 1, v64);
    (*(v63 + 32))(v61, v65, v64);
    (*(v63 + 104))(v62, enum case for JetPackAssetDiskCacheError.prepareDefaultLocation(_:), v64);
    LOBYTE(v61) = static JetPackAssetDiskCacheError.== infix(_:_:)();
    v66 = *(v63 + 8);
    v66(v62, v64);
    if (v61)
    {
      v67 = *(v0 + 1768);
      v68 = *(v0 + 300);
      v69 = *(v0 + 1704);
      v70 = *(v0 + 1696);
      v98 = *(v0 + 1760);
      v102 = *(v0 + 1608);
      v71 = *(v0 + 1192);
      v87 = *(v0 + 1184);
      v89 = *(v0 + 1208);
      v93 = *(v0 + 1144);
      TaskLocal.get()();
      v72 = *(v0 + 816);
      sub_100001CC0((v0 + 784), *(v0 + 808));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      sub_100001D4C((v0 + 784));
      sub_100069384(&qword_1000A5AF0, &type metadata accessor for JetPackAssetDiskCacheError);
      swift_allocError();
      (*(v71 + 16))(v73, v89, v87);
      _convertErrorToNSError(_:)();
      type metadata accessor for DaemonGetAssetResponse();
      sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse);
      sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse);
      DaemonResponse.init(nsError:)();

      v66(v89, v87);
      goto LABEL_6;
    }

    v66(*(v0 + 1208), *(v0 + 1184));
  }

  else
  {
    v74 = *(v0 + 1176);
    v60(v74, 1, 1, *(v0 + 1184));
    sub_10000DCA0(v74, &qword_1000A5AA0, &qword_100086188);
  }

  v75 = *(v0 + 1760);
  v76 = *(v0 + 1608);
  v77 = *(v0 + 1144);
  type metadata accessor for DaemonGetAssetResponse();
  sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse);
  sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse);
  DaemonResponse.init(_:)();
LABEL_7:
  sub_100067C3C("GetAssetRequestHandler.handleRequest", 36, 2);

  v41 = *(v0 + 1568);
  v42 = *(v0 + 1560);
  v43 = *(v0 + 1536);
  v44 = *(v0 + 1512);
  v45 = *(v0 + 1504);
  v46 = *(v0 + 1480);
  v47 = *(v0 + 1456);
  v48 = *(v0 + 1448);
  v49 = *(v0 + 1440);
  v50 = *(v0 + 1416);
  v78 = *(v0 + 1408);
  v79 = *(v0 + 1384);
  v80 = *(v0 + 1360);
  v81 = *(v0 + 1352);
  v82 = *(v0 + 1344);
  v83 = *(v0 + 1320);
  v84 = *(v0 + 1296);
  v85 = *(v0 + 1272);
  v86 = *(v0 + 1248);
  v88 = *(v0 + 1240);
  v92 = *(v0 + 1216);
  v94 = *(v0 + 1208);
  v97 = *(v0 + 1200);
  v101 = *(v0 + 1176);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_100066E04()
{
  v1 = *(v0 + 1856);
  v2 = *(v0 + 1768);
  v3 = *(v0 + 300);
  v4 = *(v0 + 1704);
  v5 = *(v0 + 1696);
  TaskLocal.get()();
  v6 = *(v0 + 656);
  sub_100001CC0((v0 + 624), *(v0 + 648));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 624));
  v7 = *(v0 + 1776);
  v8 = *(v0 + 1264);
  v9 = *(v0 + 1256);
  v10 = *(v0 + 1248);
  *(v0 + 1104) = *(v0 + 1760);
  swift_errorRetain();
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v13 = *(v0 + 1768);
    v14 = *(v0 + 300);
    v15 = *(v0 + 1704);
    v88 = *(v0 + 1696);
    v16 = *(v0 + 1608);
    v17 = *(v0 + 1272);
    v18 = *(v0 + 1264);
    v19 = *(v0 + 1256);
    v20 = *(v0 + 1248);
    v93 = *(v0 + 1144);
    v97 = *(v0 + 1760);
    v12(v20, 0, 1, v19);
    (*(v18 + 32))(v17, v20, v19);
    TaskLocal.get()();
    v21 = *(v0 + 896);
    sub_100001CC0((v0 + 864), *(v0 + 888));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 864));
    sub_100069384(&qword_1000A5B00, &type metadata accessor for SQLiteError);
    swift_allocError();
    (*(v18 + 16))(v22, v17, v19);
    _convertErrorToNSError(_:)();
    type metadata accessor for DaemonGetAssetResponse();
    sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse);
    sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse);
    DaemonResponse.init(nsError:)();

    (*(v18 + 8))(v17, v19);
LABEL_5:

    goto LABEL_6;
  }

  v23 = *(v0 + 1776);
  v24 = *(v0 + 1760);
  v25 = *(v0 + 1248);
  v26 = *(v0 + 1232);
  v27 = *(v0 + 1224);
  v28 = *(v0 + 1216);
  v12(v25, 1, 1, *(v0 + 1256));
  sub_10000DCA0(v25, &qword_1000A5AB0, &qword_100086198);
  *(v0 + 1136) = v24;
  swift_errorRetain();
  v29 = swift_dynamicCast();
  v30 = *(v26 + 56);
  v31 = *(v0 + 1760);
  if (v29)
  {
    v32 = *(v0 + 1768);
    v33 = *(v0 + 300);
    v34 = *(v0 + 1704);
    v94 = *(v0 + 1760);
    v98 = *(v0 + 1608);
    v35 = *(v0 + 1240);
    v36 = *(v0 + 1232);
    v37 = *(v0 + 1224);
    v38 = *(v0 + 1216);
    v91 = *(v0 + 1144);
    v30(v38, 0, 1, v37);
    (*(v36 + 32))(v35, v38, v37);
    TaskLocal.get()();
    v39 = *(v0 + 856);
    sub_100001CC0((v0 + 824), *(v0 + 848));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 824));
    sub_100069384(&qword_1000A5AF8, &type metadata accessor for ContainerLocation.ContainerError);
    swift_allocError();
    (*(v36 + 16))(v40, v35, v37);
    _convertErrorToNSError(_:)();
    type metadata accessor for DaemonGetAssetResponse();
    sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse);
    sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse);
    DaemonResponse.init(nsError:)();

    (*(v36 + 8))(v35, v37);
    goto LABEL_5;
  }

  v53 = *(v0 + 1776);
  v54 = *(v0 + 1216);
  v55 = *(v0 + 1192);
  v56 = *(v0 + 1184);
  v57 = *(v0 + 1176);
  v30(v54, 1, 1, *(v0 + 1224));
  sub_10000DCA0(v54, &qword_1000A5AA8, &qword_100086190);
  *(v0 + 1096) = v31;
  swift_errorRetain();
  v58 = swift_dynamicCast();
  v59 = *(v55 + 56);
  if (v58)
  {
    v60 = *(v0 + 1208);
    v61 = *(v0 + 1200);
    v62 = *(v0 + 1192);
    v63 = *(v0 + 1184);
    v64 = *(v0 + 1176);
    v59(v64, 0, 1, v63);
    (*(v62 + 32))(v60, v64, v63);
    (*(v62 + 104))(v61, enum case for JetPackAssetDiskCacheError.prepareDefaultLocation(_:), v63);
    LOBYTE(v60) = static JetPackAssetDiskCacheError.== infix(_:_:)();
    v65 = *(v62 + 8);
    v65(v61, v63);
    if (v60)
    {
      v66 = *(v0 + 1768);
      v67 = *(v0 + 300);
      v68 = *(v0 + 1704);
      v69 = *(v0 + 1696);
      v96 = *(v0 + 1760);
      v100 = *(v0 + 1608);
      v70 = *(v0 + 1192);
      v85 = *(v0 + 1184);
      v87 = *(v0 + 1208);
      v90 = *(v0 + 1144);
      TaskLocal.get()();
      v71 = *(v0 + 816);
      sub_100001CC0((v0 + 784), *(v0 + 808));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      sub_100001D4C((v0 + 784));
      sub_100069384(&qword_1000A5AF0, &type metadata accessor for JetPackAssetDiskCacheError);
      swift_allocError();
      (*(v70 + 16))(v72, v87, v85);
      _convertErrorToNSError(_:)();
      type metadata accessor for DaemonGetAssetResponse();
      sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse);
      sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse);
      DaemonResponse.init(nsError:)();

      v65(v87, v85);
      goto LABEL_5;
    }

    v65(*(v0 + 1208), *(v0 + 1184));
  }

  else
  {
    v73 = *(v0 + 1176);
    v59(v73, 1, 1, *(v0 + 1184));
    sub_10000DCA0(v73, &qword_1000A5AA0, &qword_100086188);
  }

  v74 = *(v0 + 1760);
  v75 = *(v0 + 1608);
  v76 = *(v0 + 1144);
  type metadata accessor for DaemonGetAssetResponse();
  sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse);
  sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse);
  DaemonResponse.init(_:)();
LABEL_6:
  sub_100067C3C("GetAssetRequestHandler.handleRequest", 36, 2);

  v41 = *(v0 + 1568);
  v42 = *(v0 + 1560);
  v43 = *(v0 + 1536);
  v44 = *(v0 + 1512);
  v45 = *(v0 + 1504);
  v46 = *(v0 + 1480);
  v47 = *(v0 + 1456);
  v48 = *(v0 + 1448);
  v49 = *(v0 + 1440);
  v50 = *(v0 + 1416);
  v77 = *(v0 + 1408);
  v78 = *(v0 + 1384);
  v79 = *(v0 + 1360);
  v80 = *(v0 + 1352);
  v81 = *(v0 + 1344);
  v82 = *(v0 + 1320);
  v83 = *(v0 + 1296);
  v84 = *(v0 + 1272);
  v86 = *(v0 + 1248);
  v89 = *(v0 + 1240);
  v92 = *(v0 + 1216);
  v95 = *(v0 + 1208);
  v99 = *(v0 + 1200);
  v101 = *(v0 + 1176);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_10006795C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for JetPackError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001D04(&unk_1000A5750, &unk_100085550);
  BaseObjectGraph.inject<A>(_:)();
  type metadata accessor for KillSwitchManager();
  if (sub_10006C540())
  {
    (*(v3 + 104))(v6, enum case for JetPackError.daemonKillSwitch(_:), v2);
    sub_100069384(&qword_1000A4F00, &type metadata accessor for JetPackError);
    swift_allocError();
    (*(v3 + 32))(v7, v6, v2);
    _convertErrorToNSError(_:)();
    type metadata accessor for DaemonGetAssetResponse();
    sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse);
    sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse);
    DaemonResponse.init(nsError:)();
    swift_unknownObjectRelease();

    v8 = sub_100001D04(&qword_1000A5AC8, &unk_1000861B8);
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }

  else
  {
    v10 = sub_100001D04(&qword_1000A5AC8, &unk_1000861B8);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100067C3C(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4DD0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_100018718(v14, qword_1000A5A88);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v5 + 88))(v8, v4) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v20, v19, a1, v17, v18, 2u);

LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100067F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 296) = v21;
  *(v8 + 224) = v19;
  *(v8 + 232) = v20;
  *(v8 + 192) = v17;
  *(v8 + 208) = v18;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  v9 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for AssetRequestMetricsEvent();
  *(v8 + 248) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  v12 = sub_100001D04(&qword_1000A5760, &qword_100085560);
  v13 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v14 = swift_task_alloc();
  *(v8 + 264) = v14;
  *v14 = v8;
  v14[1] = sub_100068054;

  return BaseObjectGraph.inject<A>(_:)(v8 + 16, v12, v12);
}

uint64_t sub_100068054()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_100068728;
  }

  else
  {
    v3 = sub_100068168;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100068168()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v20 = *(v0 + 296);
  v18 = *(v0 + 224);
  v19 = *(v0 + 232);
  v16 = *(v0 + 208);
  v17 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = *(v2 + 48);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *v1 = v7;
  *(v1 + 8) = v8;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v16;
  *(v1 + 56) = v17;
  *(v1 + 64) = v18;
  *(v1 + 72) = v19;
  *(v1 + 80) = 0x74736575716572;
  *(v1 + 88) = 0xE700000000000000;
  *(v1 + 96) = v20;
  *(v1 + 104) = 0;
  v11 = v1 + *(v2 + 52);
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = *sub_100001CC0((v0 + 16), *(v0 + 40));

  v13 = swift_task_alloc();
  *(v0 + 280) = v13;
  *v13 = v0;
  v13[1] = sub_10006832C;
  v14 = *(v0 + 256);

  return sub_100038808(v14);
}

uint64_t sub_10006832C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1000684BC;
  }

  else
  {
    v3 = sub_100068440;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100068440()
{
  sub_10000DBEC(v0[32]);
  sub_100001D4C(v0 + 2);
  v1 = v0[32];
  v2 = v0[30];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000684BC()
{
  sub_10000DBEC(v0[32]);
  sub_100001D4C(v0 + 2);
  v1 = v0[36];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v2 = v0[30];
  TaskLocal.get()();
  v3 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100086D40;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[16];
  v9 = v0[17];
  v0[15] = v9;
  v10 = sub_1000061A4(v0 + 12);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 12), &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  v12 = v0[32];
  v13 = v0[30];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100068728()
{
  v1 = v0[34];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v2 = v0[30];
  TaskLocal.get()();
  v3 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100086D40;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[16];
  v9 = v0[17];
  v0[15] = v9;
  v10 = sub_1000061A4(v0 + 12);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 12), &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  v12 = v0[32];
  v13 = v0[30];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000689E4(uint64_t a1)
{
  v18 = *(v1 + 16);
  v16 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v11 = *(v1 + 120);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100040348;

  return sub_100067F18(a1, v18, v16, v4, v5, v6, v7, v8);
}

unint64_t sub_100068B54()
{
  result = qword_1000A5B08;
  if (!qword_1000A5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5B08);
  }

  return result;
}

uint64_t sub_100068BA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000DAF8;

  return sub_1000086E8(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100068C80()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_100068CE8(uint64_t a1)
{
  v18 = *(v1 + 16);
  v16 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v11 = *(v1 + 120);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DAF8;

  return sub_100067F18(a1, v18, v16, v4, v5, v6, v7, v8);
}

uint64_t sub_100068E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A5AC8, &unk_1000861B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100068F74, 0, 0);
}

uint64_t sub_100068F74()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100069384(&qword_1000A5B10, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100069384(&qword_1000A5B18, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100069104;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100069104()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000692C0, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000692C0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_100069384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000693D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v58 = a4;
  v53 = a3;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001D04(&qword_1000A5BE8, &qword_100086278);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = &_swiftEmptyDictionarySingleton;
  v46 = v4;
  *(v4 + 16) = v9;
  v10 = sub_10006B8B8(a1);

  v11 = 0;
  v48 = 0;
  v12 = *(v10 + 56);
  v56 = v10;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v50 = &v64;
  v47 = "ations for ";
  v45 = "ibe to notifications for ";
  v49 = xmmword_1000839C0;
  v51 = v16;
  while (v15)
  {
    v26 = v11;
LABEL_11:
    v27 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v28 = (*(v56 + 48) + ((v26 << 10) | (16 * v27)));
    v30 = *v28;
    v29 = v28[1];
    out_token = -1;
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v29;
    v32 = v58;
    v31[4] = v53;
    v31[5] = v32;
    v66 = sub_10006B990;
    v67 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v64 = sub_100069C80;
    v65 = &unk_10009FDD8;
    v33 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();
    v34 = v57;

    v35 = String.utf8CString.getter();
    v36 = notify_register_dispatch((v35 + 32), &out_token, v34, v33);

    _Block_release(v33);

    if (v36)
    {
      static OSLogger.daemon.getter();
      v55 = v66;
      v54 = sub_100001CC0(aBlock, v65);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v38 = *(type metadata accessor for LogMessage() - 8);
      v39 = *(v38 + 72);
      v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      *(swift_allocObject() + 16) = v49;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v41._object = (v47 | 0x8000000000000000);
      v41._countAndFlagsBits = 0xD000000000000029;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      v62 = &type metadata for String;
      v60 = v30;
      v61 = v29;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100013EFC(&v60);
      v42._countAndFlagsBits = 0x6C75736552202D20;
      v42._object = 0xEB00000000203A74;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      v62 = &type metadata for UInt32;
      LODWORD(v60) = v36;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100013EFC(&v60);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();
    }

    else
    {
      v17 = out_token;
      v18 = *(v46 + 16);
      __chkstk_darwin(v37);
      *(&v45 - 4) = v30;
      *(&v45 - 3) = v29;
      *(&v45 - 4) = v17;

      os_unfair_lock_lock((v18 + 24));
      v19 = v48;
      sub_10006B9B4((v18 + 16));
      v48 = v19;
      os_unfair_lock_unlock((v18 + 24));

      static OSLogger.daemon.getter();
      v55 = v66;
      v54 = sub_100001CC0(aBlock, v65);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v20 = *(type metadata accessor for LogMessage() - 8);
      v21 = *(v20 + 72);
      v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      *(swift_allocObject() + 16) = v49;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v23._countAndFlagsBits = 0xD00000000000002DLL;
      v23._object = (v45 | 0x8000000000000000);
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v62 = &type metadata for String;
      v60 = v30;
      v61 = v29;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100013EFC(&v60);
      v24._countAndFlagsBits = 0x206E656B6F745B20;
      v24._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v62 = &type metadata for Int32;
      LODWORD(v60) = v17;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100013EFC(&v60);
      v25._countAndFlagsBits = 93;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      LogMessage.init(stringInterpolation:)();
      Logger.debug(_:)();
    }

    sub_100001D4C(aBlock);
    v11 = v26;
    v16 = v51;
  }

  while (1)
  {
    v26 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    if (v26 >= v16)
    {
      break;
    }

    v15 = *(v10 + 56 + 8 * v26);
    ++v11;
    if (v15)
    {
      goto LABEL_11;
    }
  }

  return v46;
}