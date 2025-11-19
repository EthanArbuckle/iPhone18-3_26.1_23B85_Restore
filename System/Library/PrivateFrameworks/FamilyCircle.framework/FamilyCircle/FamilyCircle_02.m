uint64_t sub_100048DFC()
{
  v15 = *(v0 + 216);
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  (*(v0 + 192))(*(v0 + 120), *(v0 + 104));
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100048F10()
{
  v15 = *(v0 + 232);
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  (*(v0 + 192))(*(v0 + 120), *(v0 + 104));
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000491D4(int a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a3;
  v6[5] = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v6[6] = v11;
  v13 = a3;
  v14 = a4;

  v15 = swift_task_alloc();
  v6[7] = v15;
  *v15 = v6;
  v15[1] = sub_10003DC90;

  return AgeRangeDaemonService.saveAgeRangeGlobalState(_:for:cacheDuration:privacyVersion:)(a1, v10, v12, v13, v14);
}

uint64_t sub_1000492E4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for DeclaredAgeRangeServerResponse();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = sub_100022F18(&qword_1000B9058, &qword_10008D850);
  v3[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v12 = sub_100022F18(&qword_1000B8E40, &qword_10008D550);
  v3[19] = v12;
  v13 = *(v12 - 8);
  v3[20] = v13;
  v14 = *(v13 + 64) + 15;
  v3[21] = swift_task_alloc();
  v15 = *(*(sub_100022F18(&qword_1000B8E48, &qword_10008D558) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v16 = *(*(sub_100022F18(&qword_1000B89A8, &qword_10008CE90) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v17 = type metadata accessor for FamilyFeatureFlags();
  v3[36] = v17;
  v18 = *(v17 - 8);
  v3[37] = v18;
  v19 = *(v18 + 64) + 15;
  v3[38] = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  v3[39] = v20;
  v21 = *(v20 - 8);
  v3[40] = v21;
  v22 = *(v21 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return _swift_task_switch(sub_1000496E4, 0, 0);
}

uint64_t sub_1000496E4()
{
  v30 = v0;
  v1 = *(v0 + 384);
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 384);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000029, 0x8000000100088C30, &v29);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s called.", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 392) = v10;
  v11 = *(v0 + 376);
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  v14 = *(v0 + 288);
  (*(v13 + 104))(v12, enum case for FamilyFeatureFlags.fetchParentalControlsFromServer(_:), v14);
  v15 = static FamilyFeatureFlags.enabled(_:)();
  v16 = v15 & 1;
  *(v0 + 25) = v15 & 1;
  (*(v13 + 8))(v12, v14);
  static FamilyLogger.daemon.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "serverFeatureFlagEnabled : %{BOOL}d", v19, 8u);
  }

  v20 = *(v0 + 376);
  v21 = *(v0 + 312);
  v22 = *(v0 + 320);

  *(v0 + 400) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v20, v21);
  v23 = swift_task_alloc();
  *(v0 + 408) = v23;
  *v23 = v0;
  v23[1] = sub_100049994;
  v24 = *(v0 + 280);
  v25 = *(v0 + 40);
  v26 = *(v0 + 48);
  v27 = *(v0 + 32);

  return sub_10004C3A4(v24, v27, v25);
}

uint64_t sub_100049994()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_10004BD28;
  }

  else
  {
    v3 = sub_100049AA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100049AA8()
{
  v214 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 240);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = type metadata accessor for ShareOptionMetadata();
  sub_10005901C(&qword_1000B8E50, &type metadata accessor for ShareOptionMetadata);
  sub_10005901C(&qword_1000B8E58, &type metadata accessor for ShareOptionMetadata);
  UserDefaultsBackedShareOption.init()();
  UserDefaultsBackedShareOption.value(for:)();
  if (v1)
  {
    v8 = *(v0 + 280);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    sub_10002624C(v8, &qword_1000B89A8, &qword_10008CE90);
    v10 = *(v0 + 376);
    v9 = *(v0 + 384);
    v11 = *(v0 + 360);
    v12 = *(v0 + 368);
    v13 = *(v0 + 344);
    v14 = *(v0 + 352);
    v16 = *(v0 + 328);
    v15 = *(v0 + 336);
    v17 = *(v0 + 304);
    v18 = *(v0 + 280);
    v159 = *(v0 + 272);
    v161 = *(v0 + 264);
    v163 = *(v0 + 256);
    v165 = *(v0 + 248);
    v167 = *(v0 + 240);
    v169 = *(v0 + 232);
    v171 = *(v0 + 224);
    v173 = *(v0 + 216);
    v175 = *(v0 + 208);
    v177 = *(v0 + 200);
    v179 = *(v0 + 192);
    v181 = *(v0 + 184);
    v183 = *(v0 + 176);
    v185 = *(v0 + 168);
    v187 = *(v0 + 144);
    v190 = *(v0 + 136);
    v194 = *(v0 + 128);
    v198 = *(v0 + 120);
    v201 = *(v0 + 96);
    v203 = *(v0 + 80);
    v208 = *(v0 + 72);

    v19 = *(v0 + 8);

    return v19();
  }

  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  sub_100024C08(v21, v22, &qword_1000B8E48, &qword_10008D558);
  v23 = *(v7 - 8);
  v211 = *(v23 + 48);
  v24 = v211(v22, 1, v7);
  v25 = *(v0 + 272);
  v26 = *(v0 + 232);
  v27 = *(v0 + 104);
  v28 = *(v0 + 112);
  if (v24 == 1)
  {
    sub_10002624C(*(v0 + 232), &qword_1000B8E48, &qword_10008D558);
    (*(v28 + 56))(v25, 1, 1, v27);
  }

  else
  {
    v29 = *(v0 + 272);
    ShareOptionMetadata.birthdate.getter();
    (*(v23 + 8))(v26, v7);
    v30 = *(v28 + 48);
    if (v30(v25, 1, v27) != 1)
    {
      v207 = v23;
      v197 = v7;
      v205 = *(v0 + 280);
      v73 = *(v0 + 264);
      v74 = *(v0 + 144);
      v75 = *(v0 + 104);
      v76 = *(v0 + 112);
      v77 = *(v0 + 88);
      v34 = *(v0 + 96);
      v193 = *(v76 + 32);
      v193(v74, *(v0 + 272), v75);
      (*(v76 + 16))(v73, v74, v75);
      (*(v76 + 56))(v73, 0, 1, v75);
      v7 = *(v77 + 48);
      sub_100024C08(v73, v34, &qword_1000B89A8, &qword_10008CE90);
      sub_100024C08(v205, v34 + v7, &qword_1000B89A8, &qword_10008CE90);
      if (v30(v34, 1, v75) != 1)
      {
        goto LABEL_31;
      }

      v78 = *(v0 + 104);
      sub_10002624C(*(v0 + 264), &qword_1000B89A8, &qword_10008CE90);
      if (v30(v34 + v7, 1, v78) == 1)
      {
        v79 = *(v0 + 112);
        sub_10002624C(*(v0 + 96), &qword_1000B89A8, &qword_10008CE90);
        (*(v79 + 8))(*(v0 + 144), *(v0 + 104));
        goto LABEL_40;
      }

LABEL_33:
      sub_10002624C(*(v0 + 96), &qword_1000B9058, &qword_10008D850);
LABEL_34:
      v86 = swift_task_alloc();
      *(v0 + 424) = v86;
      *v86 = v0;
      v86[1] = sub_10004AD50;
      v87 = *(v0 + 40);
      v88 = *(v0 + 48);
      v89 = *(v0 + 32);

      return AgeRangeDaemonService.deleteAgeRanges(with:)(v89, v87);
    }
  }

  sub_10002624C(*(v0 + 272), &qword_1000B89A8, &qword_10008CE90);
  while (*(v0 + 25) == 1)
  {
    v31 = *(v0 + 224);
    sub_100024C08(*(v0 + 240), v31, &qword_1000B8E48, &qword_10008D558);
    v32 = v211;
    v33 = v211(v31, 1, v7);
    v34 = *(v0 + 224);
    if (v33 == 1)
    {
      sub_10002624C(*(v0 + 224), &qword_1000B8E48, &qword_10008D558);
      v35 = 0;
LABEL_12:
      v209 = v23;
      v199 = v7;
      v36 = *(v0 + 368);
      static FamilyLogger.daemon.getter();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 67109120;
        *(v39 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v37, v38, "Current declaredAgeRangeSharingOption: %d", v39, 8u);
      }

      v204 = v35;
      v41 = *(v0 + 392);
      v40 = *(v0 + 400);
      v43 = *(v0 + 360);
      v42 = *(v0 + 368);
      v44 = *(v0 + 312);
      v45 = *(v0 + 240);
      v46 = *(v0 + 216);

      v41(v42, v44);
      static FamilyLogger.daemon.getter();
      sub_100024C08(v45, v46, &qword_1000B8E48, &qword_10008D558);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v50 = *(v0 + 208);
        v49 = *(v0 + 216);
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v213 = v52;
        *v51 = 136315138;
        sub_100024C08(v49, v50, &qword_1000B8E48, &qword_10008D558);
        v53 = v199;
        v54 = v211(v50, 1, v199);
        v55 = *(v0 + 208);
        if (v54 == 1)
        {
          sub_10002624C(*(v0 + 208), &qword_1000B8E48, &qword_10008D558);
          v56 = 0;
          v57 = 1;
        }

        else
        {
          v56 = ShareOptionMetadata.privacyVersion.getter();
          v57 = v100;
          (*(v209 + 8))(v55, v199);
        }

        v191 = *(v0 + 392);
        v195 = *(v0 + 400);
        v188 = *(v0 + 360);
        v101 = *(v0 + 312);
        v102 = *(v0 + 216);
        *(v0 + 16) = v56;
        *(v0 + 24) = v57 & 1;
        sub_100022F18(&qword_1000B9060, &qword_10008D858);
        v103 = String.init<A>(describing:)();
        v105 = v104;
        sub_10002624C(v102, &qword_1000B8E48, &qword_10008D558);
        v106 = sub_1000373D4(v103, v105, &v213);

        *(v51 + 4) = v106;
        _os_log_impl(&_mh_execute_header, v47, v48, "Current privacyVersion: %s", v51, 0xCu);
        sub_100024F7C(v52);

        v191(v188, v101);
        v32 = v211;
      }

      else
      {
        v91 = *(v0 + 392);
        v90 = *(v0 + 400);
        v92 = *(v0 + 360);
        v93 = *(v0 + 312);
        v94 = *(v0 + 216);

        sub_10002624C(v94, &qword_1000B8E48, &qword_10008D558);
        v91(v92, v93);
        v53 = v199;
      }

      v107 = *(v0 + 200);
      sub_100024C08(*(v0 + 240), v107, &qword_1000B8E48, &qword_10008D558);
      v108 = v32(v107, 1, v53);
      v109 = *(v0 + 248);
      v110 = *(v0 + 200);
      v111 = *(v0 + 128);
      v112 = *(v0 + 104);
      v113 = *(v0 + 112);
      if (v108 == 1)
      {
        sub_10002624C(*(v0 + 200), &qword_1000B8E48, &qword_10008D558);
        (*(v113 + 56))(v109, 1, 1, v112);
        static Date.now.getter();
        if ((*(v113 + 48))(v109, 1, v112) != 1)
        {
          sub_10002624C(*(v0 + 248), &qword_1000B89A8, &qword_10008CE90);
        }
      }

      else
      {
        v114 = *(v0 + 248);
        ShareOptionMetadata.updatedAt.getter();
        (*(v209 + 8))(v110, v53);
        (*(v113 + 56))(v109, 0, 1, v112);
        (*(v113 + 32))(v111, v109, v112);
      }

      v115 = *(v0 + 192);
      sub_100024C08(*(v0 + 240), v115, &qword_1000B8E48, &qword_10008D558);
      v116 = v32(v115, 1, v53);
      v117 = *(v0 + 192);
      if (v116 == 1)
      {
        sub_10002624C(*(v0 + 192), &qword_1000B8E48, &qword_10008D558);
        if (!v204)
        {
          goto LABEL_52;
        }
      }

      else
      {
        ShareOptionMetadata.cacheDuration.getter();
        (*(v209 + 8))(v117, v53);
        if (!v204)
        {
LABEL_52:
          v124 = swift_task_alloc();
          *(v0 + 464) = v124;
          *v124 = v0;
          v124[1] = sub_10004B554;
          v125 = *(v0 + 80);
          v126 = *(v0 + 40);
          v127 = *(v0 + 48);
          v128 = *(v0 + 32);

          return sub_10004CFFC(v125, v128, v126);
        }
      }

      v118 = *(v0 + 128);
      v119 = *(v0 + 136);
      v121 = *(v0 + 112);
      v120 = *(v0 + 120);
      v122 = *(v0 + 104);
      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      LOBYTE(v118) = static Date.> infix(_:_:)();
      v123 = *(v121 + 8);
      v123(v120, v122);
      v123(v119, v122);
      if (v118)
      {
        goto LABEL_52;
      }

      v129 = *(v0 + 336);
      static FamilyLogger.daemon.getter();
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 67109120;
        *(v132 + 4) = v204;
        _os_log_impl(&_mh_execute_header, v130, v131, "Returning declaredAgeRangeSharingOption: %d from cache", v132, 8u);
      }

      v134 = *(v0 + 392);
      v133 = *(v0 + 400);
      v135 = *(v0 + 336);
      v136 = *(v0 + 312);
      v137 = *(v0 + 240);
      v138 = *(v0 + 184);

      v134(v135, v136);
      sub_100024C08(v137, v138, &qword_1000B8E48, &qword_10008D558);
      v139 = v211(v138, 1, v199);
      v140 = *(v0 + 184);
      if (v139 == 1)
      {
        sub_10002624C(*(v0 + 184), &qword_1000B8E48, &qword_10008D558);
      }

      else
      {
        v141 = *(v0 + 184);
        v142 = ShareOptionMetadata.privacyVersion.getter();
        v144 = v143;
        (*(v209 + 8))(v140, v199);
        if ((v144 & 1) == 0)
        {
LABEL_61:
          v71 = *(v0 + 280);
          v72 = *(v0 + 240);
          v145 = *(v0 + 128);
          v146 = *(v0 + 104);
          v212.super.super.isa = [objc_allocWithZone(NSNumber) initWithInteger:v142];
          v123(v145, v146);
          goto LABEL_62;
        }
      }

      v142 = 0;
      goto LABEL_61;
    }

    v35 = ShareOptionMetadata.shareOption.getter();
    result = (*(v23 + 8))(v34, v7);
    if (v35 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_66:
      __break(1u);
      return result;
    }

    if (v35 <= 0x7FFFFFFF)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_28:
    v70 = ShareOptionMetadata.shareOption.getter();
    v30 = (v207 + 8);
    result = (*(v207 + 8))(v34, v7);
    if (v70 < 0xFFFFFFFF80000000)
    {
      goto LABEL_66;
    }

    if (v70 <= 0x7FFFFFFF)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_31:
    v80 = *(v0 + 104);
    sub_100024C08(*(v0 + 96), *(v0 + 256), &qword_1000B89A8, &qword_10008CE90);
    v81 = v30(v34 + v7, 1, v80);
    v83 = *(v0 + 256);
    v82 = *(v0 + 264);
    if (v81 == 1)
    {
      v85 = *(v0 + 104);
      v84 = *(v0 + 112);
      sub_10002624C(*(v0 + 264), &qword_1000B89A8, &qword_10008CE90);
      (*(v84 + 8))(v83, v85);
      goto LABEL_33;
    }

    v95 = *(v0 + 136);
    v96 = *(v0 + 104);
    v97 = *(v0 + 112);
    v206 = *(v0 + 96);
    v193(v95, v34 + v7, v96);
    sub_10005901C(&qword_1000B9068, &type metadata accessor for Date);
    v98 = dispatch thunk of static Equatable.== infix(_:_:)();
    v99 = *(v97 + 8);
    v99(v95, v96);
    sub_10002624C(v82, &qword_1000B89A8, &qword_10008CE90);
    v99(v83, v96);
    sub_10002624C(v206, &qword_1000B89A8, &qword_10008CE90);
    if ((v98 & 1) == 0)
    {
      goto LABEL_34;
    }

    v99(*(v0 + 144), *(v0 + 104));
LABEL_40:
    v7 = v197;
    v23 = v207;
  }

  v207 = v23;
  v58 = v7;
  v59 = *(v0 + 328);
  static FamilyLogger.daemon.getter();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "Fetching parental controls from local database", v62, 2u);
  }

  v64 = *(v0 + 392);
  v63 = *(v0 + 400);
  v65 = *(v0 + 328);
  v66 = *(v0 + 312);
  v67 = *(v0 + 240);
  v68 = *(v0 + 176);

  v64(v65, v66);
  sub_100024C08(v67, v68, &qword_1000B8E48, &qword_10008D558);
  v7 = v58;
  v69 = v211(v68, 1, v58);
  v34 = *(v0 + 176);
  if (v69 != 1)
  {
    goto LABEL_28;
  }

  sub_10002624C(*(v0 + 176), &qword_1000B8E48, &qword_10008D558);
  v70 = 0;
LABEL_21:
  v71 = *(v0 + 280);
  v72 = *(v0 + 240);
  sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
  v212.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v204 = v70;
LABEL_62:
  sub_10002624C(v72, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v71, &qword_1000B89A8, &qword_10008CE90);
  v148 = *(v0 + 376);
  v147 = *(v0 + 384);
  v150 = *(v0 + 360);
  v149 = *(v0 + 368);
  v151 = *(v0 + 344);
  v152 = *(v0 + 352);
  v154 = *(v0 + 328);
  v153 = *(v0 + 336);
  v155 = *(v0 + 304);
  v156 = *(v0 + 280);
  v158 = *(v0 + 272);
  v160 = *(v0 + 264);
  v162 = *(v0 + 256);
  v164 = *(v0 + 248);
  v166 = *(v0 + 240);
  v168 = *(v0 + 232);
  v170 = *(v0 + 224);
  v172 = *(v0 + 216);
  v174 = *(v0 + 208);
  v176 = *(v0 + 200);
  v178 = *(v0 + 192);
  v180 = *(v0 + 184);
  v182 = *(v0 + 176);
  v184 = *(v0 + 168);
  v186 = *(v0 + 144);
  v189 = *(v0 + 136);
  v192 = *(v0 + 128);
  v196 = *(v0 + 120);
  v200 = *(v0 + 96);
  v202 = *(v0 + 80);
  v210 = *(v0 + 72);

  v157 = *(v0 + 8);

  return v157(v204, v212.super.super.isa);
}

uint64_t sub_10004AD50()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 456) = v0;
    v5 = sub_10004B31C;
  }

  else
  {
    v5 = sub_10004AE70;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004AE70()
{
  v1 = [objc_allocWithZone(NSNumber) initWithInteger:0];
  v0[54] = v1;
  v2 = swift_task_alloc();
  v0[55] = v2;
  *v2 = v0;
  v2[1] = sub_10004AF30;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];

  return AgeRangeDaemonService.setAgeRangeGlobalState(_:for:privacyVersion:)(0, v5, v3, v1);
}

uint64_t sub_10004AF30()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v6 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = sub_10004B2AC;
  }

  else
  {

    v4 = sub_10004B04C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004B04C()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[14];
  v39 = [objc_allocWithZone(NSNumber) initWithInteger:0];
  (*(v5 + 8))(v3, v4);
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v1, &qword_1000B89A8, &qword_10008CE90);
  v7 = v0[47];
  v6 = v0[48];
  v9 = v0[45];
  v8 = v0[46];
  v10 = v0[43];
  v11 = v0[44];
  v13 = v0[41];
  v12 = v0[42];
  v14 = v0[38];
  v15 = v0[35];
  v18 = v0[34];
  v19 = v0[33];
  v20 = v0[32];
  v21 = v0[31];
  v22 = v0[30];
  v23 = v0[29];
  v24 = v0[28];
  v25 = v0[27];
  v26 = v0[26];
  v27 = v0[25];
  v28 = v0[24];
  v29 = v0[23];
  v30 = v0[22];
  v31 = v0[21];
  v32 = v0[18];
  v33 = v0[17];
  v34 = v0[16];
  v35 = v0[15];
  v36 = v0[12];
  v37 = v0[10];
  v38 = v0[9];

  v16 = v0[1];

  return v16(0, v39);
}

uint64_t sub_10004B2AC()
{
  *(v0 + 456) = *(v0 + 448);

  return _swift_task_switch(sub_10004B31C, 0, 0);
}

uint64_t sub_10004B31C()
{
  v1 = v0[35];
  v2 = v0[30];
  (*(v0[14] + 8))(v0[18], v0[13]);
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v1, &qword_1000B89A8, &qword_10008CE90);
  v36 = v0[57];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[43];
  v8 = v0[44];
  v10 = v0[41];
  v9 = v0[42];
  v11 = v0[38];
  v12 = v0[35];
  v15 = v0[34];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[22];
  v28 = v0[21];
  v29 = v0[18];
  v30 = v0[17];
  v31 = v0[16];
  v32 = v0[15];
  v33 = v0[12];
  v34 = v0[10];
  v35 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10004B554()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_10004BF10;
  }

  else
  {
    v3 = sub_10004B668;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004B668()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  static FamilyLogger.daemon.getter();
  (*(v5 + 16))(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    v13 = DeclaredAgeRangeServerResponse.featureEnabled.getter() & 1;
    v14 = *(v10 + 8);
    v14(v9, v11);
    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Parental controls, declaredAgeRangeEnabled: %{BOOL}d", v12, 8u);
  }

  else
  {
    v14 = *(v10 + 8);
    v14(*(v0 + 72), *(v0 + 56));
  }

  *(v0 + 480) = v14;
  v16 = *(v0 + 392);
  v15 = *(v0 + 400);
  v17 = *(v0 + 352);
  v18 = *(v0 + 312);
  v19 = *(v0 + 80);

  v16(v17, v18);
  if (DeclaredAgeRangeServerResponse.featureEnabled.getter())
  {
    v20 = *(v0 + 80);
    v21 = DeclaredAgeRangeServerResponse.shareOption.getter();
  }

  else
  {
    v21 = 0;
  }

  *(v0 + 28) = v21;
  v22 = *(v0 + 344);
  static FamilyLogger.daemon.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v23, v24, "Fetched parental controls, declaredAgeRangeShareOption: %d", v25, 8u);
  }

  v27 = *(v0 + 392);
  v26 = *(v0 + 400);
  v28 = *(v0 + 344);
  v29 = *(v0 + 312);
  v30 = *(v0 + 80);

  v27(v28, v29);
  DeclaredAgeRangeServerResponse.cacheDuration.getter();
  v32 = [objc_allocWithZone(NSNumber) initWithDouble:v31];
  *(v0 + 488) = v32;
  v33 = [objc_allocWithZone(NSNumber) initWithInteger:DeclaredAgeRangeServerResponse.privacyVersion.getter()];
  *(v0 + 496) = v33;
  v34 = swift_task_alloc();
  *(v0 + 504) = v34;
  *v34 = v0;
  v34[1] = sub_10004B944;
  v35 = *(v0 + 40);
  v36 = *(v0 + 48);
  v37 = *(v0 + 32);

  return AgeRangeDaemonService.saveAgeRangeGlobalState(_:for:cacheDuration:privacyVersion:)(v21, v37, v35, v32, v33);
}

uint64_t sub_10004B944()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 488);

  if (v0)
  {
    v6 = sub_10004C148;
  }

  else
  {
    v6 = sub_10004BA90;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10004BA90()
{
  v1 = *(v0 + 480);
  v42 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 80);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v44 = [objc_allocWithZone(NSNumber) initWithInteger:DeclaredAgeRangeServerResponse.privacyVersion.getter()];
  v1(v6, v8);
  (*(v5 + 8))(v3, v4);
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v42, &qword_1000B89A8, &qword_10008CE90);
  v43 = *(v0 + 28);
  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  v12 = *(v0 + 360);
  v11 = *(v0 + 368);
  v13 = *(v0 + 344);
  v14 = *(v0 + 352);
  v16 = *(v0 + 328);
  v15 = *(v0 + 336);
  v17 = *(v0 + 304);
  v18 = *(v0 + 280);
  v21 = *(v0 + 272);
  v22 = *(v0 + 264);
  v23 = *(v0 + 256);
  v24 = *(v0 + 248);
  v25 = *(v0 + 240);
  v26 = *(v0 + 232);
  v27 = *(v0 + 224);
  v28 = *(v0 + 216);
  v29 = *(v0 + 208);
  v30 = *(v0 + 200);
  v31 = *(v0 + 192);
  v32 = *(v0 + 184);
  v33 = *(v0 + 176);
  v34 = *(v0 + 168);
  v35 = *(v0 + 144);
  v36 = *(v0 + 136);
  v37 = *(v0 + 128);
  v38 = *(v0 + 120);
  v39 = *(v0 + 96);
  v40 = *(v0 + 80);
  v41 = *(v0 + 72);

  v19 = *(v0 + 8);

  return v19(v43, v44);
}

uint64_t sub_10004BD28()
{
  v34 = v0[52];
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v6 = v0[44];
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[38];
  v10 = v0[35];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[23];
  v25 = v0[22];
  v26 = v0[21];
  v27 = v0[18];
  v28 = v0[17];
  v29 = v0[16];
  v30 = v0[15];
  v31 = v0[12];
  v32 = v0[10];
  v33 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10004BF10()
{
  v1 = v0[35];
  v2 = v0[30];
  (*(v0[14] + 8))(v0[16], v0[13]);
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v1, &qword_1000B89A8, &qword_10008CE90);
  v36 = v0[59];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[43];
  v8 = v0[44];
  v10 = v0[41];
  v9 = v0[42];
  v11 = v0[38];
  v12 = v0[35];
  v15 = v0[34];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[22];
  v28 = v0[21];
  v29 = v0[18];
  v30 = v0[17];
  v31 = v0[16];
  v32 = v0[15];
  v33 = v0[12];
  v34 = v0[10];
  v35 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10004C148()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 64) + 8;
  (*(v0 + 480))(*(v0 + 80), *(v0 + 56));
  (*(v5 + 8))(v3, v4);
  sub_10002624C(v2, &qword_1000B8E48, &qword_10008D558);
  sub_10002624C(v1, &qword_1000B89A8, &qword_10008CE90);
  v40 = *(v0 + 512);
  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  v10 = *(v0 + 360);
  v9 = *(v0 + 368);
  v11 = *(v0 + 344);
  v12 = *(v0 + 352);
  v14 = *(v0 + 328);
  v13 = *(v0 + 336);
  v15 = *(v0 + 304);
  v16 = *(v0 + 280);
  v19 = *(v0 + 272);
  v20 = *(v0 + 264);
  v21 = *(v0 + 256);
  v22 = *(v0 + 248);
  v23 = *(v0 + 240);
  v24 = *(v0 + 232);
  v25 = *(v0 + 224);
  v26 = *(v0 + 216);
  v27 = *(v0 + 208);
  v28 = *(v0 + 200);
  v29 = *(v0 + 192);
  v30 = *(v0 + 184);
  v31 = *(v0 + 176);
  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = *(v0 + 136);
  v35 = *(v0 + 128);
  v36 = *(v0 + 120);
  v37 = *(v0 + 96);
  v38 = *(v0 + 80);
  v39 = *(v0 + 72);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10004C3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(sub_100022F18(&qword_1000B89A8, &qword_10008CE90) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10004C444, 0, 0);
}

uint64_t sub_10004C444()
{
  v1 = v0[7];
  v2 = [*(*sub_1000297A8((v1 + 48) *(v1 + 72)) + 16)];
  if (!v2 || (v3 = v2, v4 = [v2 aa_altDSID], v3, !v4))
  {
LABEL_8:
    v14 = v0[4];
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == v6 && v9 == v5)
  {
  }

  else
  {
    v11 = v0[5];
    v12 = v0[6];
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v19 = *sub_1000297A8((v1 + 48), *(v1 + 72));
  v20 = swift_task_alloc();
  v0[9] = v20;
  *v20 = v0;
  v20[1] = sub_10004C624;
  v21 = v0[8];

  return sub_100033084(v21);
}

uint64_t sub_10004C624()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10004C914;
  }

  else
  {
    v3 = sub_10004C738;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004C738()
{
  v1 = v0[8];
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10002624C(v1, &qword_1000B89A8, &qword_10008CE90);
    type metadata accessor for AgeRangeError(0);
    v0[3] = -4020;
    sub_100023D48(&_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v4 = v0[2];
    swift_willThrow();
  }

  else
  {
    v7 = v0[4];
    (*(v3 + 32))(v7, v1, v2);
    (*(v3 + 56))(v7, 0, 1, v2);
  }

  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004C914()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t AgeRangeDaemonService.ageRangeGlobalState(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004CA1C;

  return sub_1000492E4(a1, a2);
}

uint64_t sub_10004CA1C(uint64_t a1, void *a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {

    v10 = *(v7 + 8);

    return v10(a1);
  }
}

uint64_t sub_10004CCEC(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10004CDC0;

  return sub_1000492E4(v4, v6);
}

uint64_t sub_10004CDC0(int a1, void *a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 32);
  v10 = *v3;

  if (v4)
  {
    v11 = *(v7 + 16);
    v12 = *(v7 + 24);

    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, 0, v13);

    _Block_release(*(v7 + 24));
    v14 = *(v10 + 8);

    return v14();
  }

  else
  {

    *(v7 + 48) = a1;

    return _swift_task_switch(sub_10004CF78, 0, 0);
  }
}

uint64_t sub_10004CF78()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  (*(v3 + 16))(v3, v1, 0);
  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10004CFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10004D0C0, 0, 0);
}

uint64_t sub_10004D0C0()
{
  v1 = *(v0[7] + 88);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10004D15C;
  v4 = v0[5];
  v3 = v0[6];

  return sub_10006D428(v4, v3);
}

uint64_t sub_10004D15C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 80);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 96) = a1;

    return _swift_task_switch(sub_10004D2B0, 0, 0);
  }
}

void sub_10004D2B0()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v1;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for AgeRangeError(0);
  v0[3] = -4012;
  sub_100023D48(&_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v3 = v0[2];
  swift_willThrow();

  v4 = v0[10];

  v5 = v0[1];

  v5();
}

uint64_t sub_10004D55C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 136) = a1;
  v6 = type metadata accessor for Logger();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10004D630, 0, 0);
}

uint64_t sub_10004D630()
{
  v24 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  static FamilyLogger.daemon.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  if (v5)
  {
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v22 = *(v0 + 88);
    v11 = *(v0 + 136);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 67109378;
    *(v12 + 4) = v11;
    *(v12 + 8) = 2080;
    *(v12 + 10) = sub_1000373D4(v10, v9, &v23);
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting parental controls declaredAgeRangeSharingOption: %d on server side for altDSID: %s", v12, 0x12u);
    sub_100024F7C(v13);

    v14 = *(v8 + 8);
    v14(v22, v7);
  }

  else
  {

    v14 = *(v8 + 8);
    v14(v6, v7);
  }

  *(v0 + 96) = v14;
  v15 = *(*(v0 + 56) + 88);
  v16 = [objc_allocWithZone(NSNumber) initWithInt:*(v0 + 136)];
  *(v0 + 104) = v16;
  v17 = swift_task_alloc();
  *(v0 + 112) = v17;
  *v17 = v0;
  v17[1] = sub_10004D83C;
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  v20 = *(v0 + 32);

  return sub_10006FB90(v20, v18, v16, v19);
}

uint64_t sub_10004D83C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_10004DC78;
  }

  else
  {
    v8 = *(v4 + 104);
    *(v4 + 128) = a1;

    v7 = sub_10004D96C;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_10004D96C()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v1;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for AgeRangeError(0);
  v0[3] = -4011;
  sub_100023D48(&_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v3 = v0[2];
  swift_willThrow();

  v5 = v0[10];
  v4 = v0[11];

  v6 = v0[1];

  v6();
}

uint64_t sub_10004DC78()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t AgeRangeDaemonService.setAgeRangeGlobalState(_:for:privacyVersion:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 184) = a1;
  v6 = type metadata accessor for FamilyFeatureFlags();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v5 + 72) = v9;
  v10 = *(v9 - 8);
  *(v5 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10004DE28, 0, 0);
}

uint64_t sub_10004DE28()
{
  v43 = v0;
  v1 = *(v0 + 104);
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD00000000000002DLL, 0x8000000100088650, &v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = *(v0 + 96);
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 48);
  (*(v13 + 104))(v12, enum case for FamilyFeatureFlags.fetchParentalControlsFromServer(_:), v14);
  v15 = static FamilyFeatureFlags.enabled(_:)();
  (*(v13 + 8))(v12, v14);
  static FamilyLogger.daemon.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v15 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "serverFeatureFlagEnabled : %{BOOL}d", v18, 8u);
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 72);
  v21 = *(v0 + 80);

  v10(v19, v20);
  if (v15)
  {
    v22 = swift_task_alloc();
    *(v0 + 112) = v22;
    *v22 = v0;
    v22[1] = sub_10004E210;
    v23 = *(v0 + 32);
    v24 = *(v0 + 40);
    v25 = *(v0 + 16);
    v26 = *(v0 + 24);
    v27 = *(v0 + 184);

    return sub_10004D55C(v27, v25, v26, v23);
  }

  else
  {
    v29 = *(v0 + 88);
    static FamilyLogger.daemon.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Setting parental controls in local database", v32, 2u);
    }

    v33 = *(v0 + 88);
    v34 = *(v0 + 72);

    v10(v33, v34);
    v35 = [objc_allocWithZone(NSNumber) initWithDouble:86400.0];
    *(v0 + 160) = v35;
    v36 = swift_task_alloc();
    *(v0 + 168) = v36;
    *v36 = v0;
    v36[1] = sub_10004E620;
    v37 = *(v0 + 32);
    v38 = *(v0 + 40);
    v39 = *(v0 + 16);
    v40 = *(v0 + 24);
    v41 = *(v0 + 184);

    return AgeRangeDaemonService.saveAgeRangeGlobalState(_:for:cacheDuration:privacyVersion:)(v41, v39, v40, v35, v37);
  }
}

uint64_t sub_10004E210(uint64_t a1, double a2)
{
  v5 = *(*v3 + 112);
  v6 = *v3;
  *(v6 + 120) = a1;

  if (v2)
  {
    v8 = *(v6 + 96);
    v7 = *(v6 + 104);
    v9 = *(v6 + 88);
    v10 = *(v6 + 64);

    v11 = *(v6 + 8);

    return v11();
  }

  else
  {
    *(v6 + 128) = a2;

    return _swift_task_switch(sub_10004E38C, 0, 0);
  }
}

uint64_t sub_10004E38C()
{
  v1 = [objc_allocWithZone(NSNumber) initWithDouble:*(v0 + 128)];
  *(v0 + 136) = v1;
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_10004E460;
  v3 = *(v0 + 120);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 184);

  return AgeRangeDaemonService.saveAgeRangeGlobalState(_:for:cacheDuration:privacyVersion:)(v7, v5, v6, v1, v3);
}

uint64_t sub_10004E460()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_10004E794;
  }

  else
  {
    v4 = sub_10004E58C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004E58C()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10004E620()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  *(v3 + 176) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10004E828, 0, 0);
  }

  else
  {

    v5 = *(v3 + 96);
    v4 = *(v3 + 104);
    v6 = *(v3 + 88);
    v7 = *(v3 + 64);

    v8 = *(v3 + 8);

    return v8();
  }
}

uint64_t sub_10004E794()
{
  v1 = *(v0 + 152);

  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10004E828()
{
  v1 = *(v0 + 176);

  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10004EA60(int a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = a3;

  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_10004EB54;

  return AgeRangeDaemonService.setAgeRangeGlobalState(_:for:privacyVersion:)(a1, v8, v10, v11);
}

uint64_t sub_10004EB54()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 32);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v12 = *(v9 + 8);

  return v12();
}

BOOL sub_10004ED18(_BOOL8 result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    v3 = v1 - 1;
    while (1)
    {
      v4 = v3;
      if (v3-- == 0)
      {
        return v4 != 0;
      }

      v6 = *(v2 - 1);
      v7 = __OFADD__(v6, 1);
      v8 = v6 + 1;
      if (v7)
      {
        break;
      }

      v9 = *v2++;
      if (v9 == v8)
      {
        return v4 != 0;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_10004ED60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v6 = *v2++;
      v5 = v6;
      if (v6 < 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005580C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v4 = _swiftEmptyArrayStorage[2];
        v3 = _swiftEmptyArrayStorage[3];
        if (v4 >= v3 >> 1)
        {
          sub_10005580C((v3 > 1), v4 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v4 + 1;
        _swiftEmptyArrayStorage[v4 + 4] = v5;
      }

      --v1;
    }

    while (v1);
  }

  v7 = _swiftEmptyArrayStorage[2];

  return v7 != 0;
}

uint64_t AgeRangeDaemonService.shouldPromptAgeRange(with:bundleID:appName:privacyVersion:userAgeOverride:attestedAtOverrideInDays:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[17] = a8;
  v9[18] = v8;
  v9[15] = a6;
  v9[16] = a7;
  v9[13] = a4;
  v9[14] = a5;
  v9[11] = a2;
  v9[12] = a3;
  v9[10] = a1;
  v10 = type metadata accessor for Logger();
  v9[19] = v10;
  v11 = *(v10 - 8);
  v9[20] = v11;
  v12 = *(v11 + 64) + 15;
  v9[21] = swift_task_alloc();
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v9[24] = swift_task_alloc();
  v9[25] = swift_task_alloc();

  return _swift_task_switch(sub_10004EF4C, 0, 0);
}

uint64_t sub_10004EF4C()
{
  v22 = v0;
  v1 = v0[25];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[25];
  v6 = v0[19];
  v7 = v0[20];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000064, 0x8000000100088680, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[26] = v10;
  v11 = *sub_1000297A8((v0[18] + 48), *(v0[18] + 72));
  if (sub_100032AF0() & 1) != 0 || (sub_100032DDC())
  {
    type metadata accessor for AgeRangeError(0);
    v0[9] = -4004;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = v0[8];
    swift_willThrow();
    v14 = v0[24];
    v13 = v0[25];
    v16 = v0[22];
    v15 = v0[23];
    v17 = v0[21];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = swift_task_alloc();
    v0[27] = v20;
    *v20 = v0;
    v20[1] = sub_10004F208;

    return sub_100056BF0();
  }
}

uint64_t sub_10004F208(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 216);
  v5 = *v3;
  v5[28] = a1;
  v5[29] = a2;

  if (v2)
  {
    v7 = v5[24];
    v6 = v5[25];
    v9 = v5[22];
    v8 = v5[23];
    v10 = v5[21];

    v11 = v5[1];

    return v11();
  }

  else
  {

    return _swift_task_switch(sub_10004F384, 0, 0);
  }
}

uint64_t sub_10004F384()
{
  v1 = v0;
  v2 = v0[10];
  if (v2 >> 62)
  {
LABEL_35:
    v63 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v1[10];
  }

  else
  {
    v63 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[10];
  }

  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v7 = v4 + 32;
  do
  {
    if (v3 == v5)
    {
      v21 = swift_task_alloc();
      v1[30] = v21;
      *v21 = v1;
      v21[1] = sub_10004F918;
      v22 = v1[28];
      v23 = v1[29];
      v24 = v1[18];
      v25 = v1[16];
      v26 = v1[13];
      v27 = v1[14];
      v28 = v1[11];
      v29 = v1[12];
      v65 = v1[17];
      v30 = v1[10];

      return AgeRangeDaemonService.requestAgeRange(with:userAgeOverride:altDSID:bundleID:appName:attestedAtOverrideInDays:)(v30, v25, v22, v23, v28, v29, v26, v27);
    }

    if (v6)
    {
      v20 = v1[10];
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v63 + 16))
      {
        goto LABEL_34;
      }

      v10 = *(v7 + 8 * v5);
    }

    v11 = v10;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v12 = v1;
    v13 = v1[18];
    v14 = [v10 integerValue];
    v15 = sub_1000297A8((v13 + 48), *(v13 + 72));
    v16 = *v15;
    v17 = [*(*v15 + 16) aa_primaryAppleAccount];
    if (v17)
    {
      v18 = v17;
      isa = [*(v16 + 24) ageOfMajorityForAccount:v17];
      if (!isa)
      {
        sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
        isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
      }

      v2 = isa;
    }

    else
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      v2 = NSNumber.init(integerLiteral:)(18).super.super.isa;
    }

    v8 = [(objc_class *)v2 integerValue];

    ++v5;
    v9 = v8 < v14;
    v1 = v12;
  }

  while (!v9);
  v32 = v12[24];
  static FamilyLogger.daemon.getter();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "One of the gates is above 18", v35, 2u);
  }

  v36 = v12[26];
  v37 = v1[24];
  v38 = v1[19];
  v39 = v1[20];

  v36(v37, v38);
  type metadata accessor for AgeRangeError(0);
  v1[3] = -4010;
  sub_100023D48(_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v40 = v1[2];
  swift_willThrow();
  v1[33] = v40;
  v1[4] = v40;
  swift_errorRetain();
  sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
  if (swift_dynamicCast())
  {
    v41 = v1[5];
    v1[34] = v41;
    v1[6] = v41;
    _BridgedStoredNSError.code.getter();
    if (v1[7] == -4009)
    {
      v42 = v1[22];
      static FamilyLogger.daemon.getter();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "no response, need to prompt", v45, 2u);
      }

      v46 = v1[26];
      v47 = v1[22];
      v48 = v1[19];
      v49 = v1[20];

      v46(v47, v48);
      v50 = swift_task_alloc();
      v1[35] = v50;
      *v50 = v1;
      v50[1] = sub_10004FBB8;
      v51 = v1[29];
      v52 = v1[18];
      v53 = v1[15];
      v54 = v1[28];

      return sub_1000520D8(v54, v51, v53);
    }

    v56 = v1[29];
  }

  else
  {
    v55 = v1[29];
  }

  swift_willThrow();
  v58 = v1[24];
  v57 = v1[25];
  v60 = v1[22];
  v59 = v1[23];
  v61 = v1[21];

  v62 = v1[1];

  return v62();
}

uint64_t sub_10004F918(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v8 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v5 = sub_1000500E8;
  }

  else
  {
    v6 = v3[29];

    v5 = sub_10004FA34;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004FA34()
{
  v1 = v0[23];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Found response, no need to prompt", v4, 2u);
  }

  v5 = v0[31];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[19];
  v9 = v0[20];

  v6(v7, v8);
  v10 = [objc_allocWithZone(FAAgeRangeAlertModel) initWithAgeRangeResponse:v5 shouldPrompt:0 flowType:0 title:0 message:0 primaryButtonText:0 secondaryButtonText:0];

  v12 = v0[24];
  v11 = v0[25];
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[21];

  v16 = v0[1];

  return v16(v10);
}

uint64_t sub_10004FBB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v8 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v5 = v3[29];

    v6 = sub_100050374;
  }

  else
  {
    v6 = sub_10004FCD4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10004FCD4()
{
  v1 = v0[21];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[36];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "flowType for age range OOP UI: %ld", v5, 0xCu);
  }

  v6 = v0[36];
  v7 = v0[26];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];

  v7(v8, v10);
  if (v6 == 3)
  {
    v11 = v0[33];
    v12 = v0[34];
    v13 = v0[29];
    v15 = v0[13];
    v14 = v0[14];

    v16 = sub_1000572C4(v15, v14, 3);

    v18 = v0[24];
    v17 = v0[25];
    v20 = v0[22];
    v19 = v0[23];
    v21 = v0[21];

    v22 = v0[1];

    return v22(v16);
  }

  else
  {
    v24 = swift_task_alloc();
    v0[38] = v24;
    *v24 = v0;
    v24[1] = sub_10004FEF0;
    v25 = v0[28];
    v26 = v0[29];
    v27 = v0[18];
    v28 = v0[16];
    v30 = v0[13];
    v29 = v0[14];
    v31 = v0[11];
    v32 = v0[12];
    v33 = v0[10];
    v35 = v0[36];

    return sub_100050A5C(v30, v29, v25, v26, v31, v32, v33, v28);
  }
}

uint64_t sub_10004FEF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  v4[39] = v1;

  v7 = v4[29];

  if (v1)
  {
    v8 = sub_100050420;
  }

  else
  {
    v4[40] = a1;
    v8 = sub_100050034;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100050034()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 320);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 168);

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_1000500E8()
{
  v1 = v0[32];
  v0[4] = v1;
  v0[33] = v1;
  swift_errorRetain();
  sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
  type metadata accessor for AgeRangeError(0);
  if (swift_dynamicCast())
  {
    v2 = v0[5];
    v0[6] = v2;
    v0[34] = v2;
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
    _BridgedStoredNSError.code.getter();
    if (v0[7] == -4009)
    {
      v3 = v0[22];
      static FamilyLogger.daemon.getter();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "no response, need to prompt", v6, 2u);
      }

      v7 = v0[26];
      v8 = v0[22];
      v9 = v0[19];
      v10 = v0[20];

      v7(v8, v9);
      v11 = swift_task_alloc();
      v0[35] = v11;
      *v11 = v0;
      v11[1] = sub_10004FBB8;
      v13 = v0[28];
      v12 = v0[29];
      v14 = v0[18];
      v15 = v0[15];

      return sub_1000520D8(v13, v12, v15);
    }

    v18 = v0[29];
  }

  else
  {
    v17 = v0[29];
  }

  swift_willThrow();
  v20 = v0[24];
  v19 = v0[25];
  v22 = v0[22];
  v21 = v0[23];
  v23 = v0[21];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100050374()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 296);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 168);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100050420()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 312);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 168);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100050698(int a1, int a2, int a3, void *a4, void *a5, void *a6, void *aBlock, uint64_t a8)
{
  v8[4] = a6;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  v8[6] = _Block_copy(aBlock);
  sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8[7] = v12;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v8[8] = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v8[9] = v16;
  v18 = a4;
  v19 = a5;
  v20 = a6;

  v21 = swift_task_alloc();
  v8[10] = v21;
  *v21 = v8;
  v21[1] = sub_100050804;

  return AgeRangeDaemonService.shouldPromptAgeRange(with:bundleID:appName:privacyVersion:userAgeOverride:attestedAtOverrideInDays:)(v12, v23, v14, v15, v17, v18, a5, a6);
}

uint64_t sub_100050804(void *a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  v18 = *(*v2 + 56);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 24);
  v11 = *(*v2 + 16);
  v12 = *v2;

  v13 = *(v4 + 48);
  if (v3)
  {
    v14 = _convertErrorToNSError(_:)();

    (v13)[2](v13, 0, v14);

    _Block_release(v13);
  }

  else
  {
    (v13)[2](*(v4 + 48), a1, 0);
    _Block_release(v13);
  }

  v15 = *(v12 + 8);

  return v15();
}

uint64_t sub_100050A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[20] = v18;
  v9[21] = v8;
  v9[18] = a7;
  v9[19] = a8;
  v9[16] = a5;
  v9[17] = a6;
  v9[14] = a3;
  v9[15] = a4;
  v9[12] = a1;
  v9[13] = a2;
  v10 = type metadata accessor for AgeRangeDaemonServiceNewInfoCalculator();
  v9[22] = v10;
  v11 = *(v10 - 8);
  v9[23] = v11;
  v12 = *(v11 + 64) + 15;
  v9[24] = swift_task_alloc();
  v13 = type metadata accessor for NewInfoMetadata();
  v9[25] = v13;
  v14 = *(v13 - 8);
  v9[26] = v14;
  v15 = *(v14 + 64) + 15;
  v9[27] = swift_task_alloc();

  return _swift_task_switch(sub_100050B90, 0, 0);
}

char *sub_100050B90()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = [v1 integerValue];
    *(v0 + 248) = v2;
    v3 = *(v0 + 144);
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v48 = *(v0 + 144);
      }

      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      result = sub_10005580C(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        __break(1u);
        return result;
      }

      v49 = v2;
      v6 = 0;
      v7 = v3 & 0xC000000000000001;
      v8 = *(v0 + 144) + 32;
      do
      {
        if (v7)
        {
          v9 = *(v0 + 144);
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = *(v8 + 8 * v6);
        }

        v11 = v10;
        v12 = [v10 integerValue];

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_10005580C((v13 > 1), v14 + 1, 1);
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v14 + 1;
        _swiftEmptyArrayStorage[v14 + 4] = v12;
      }

      while (v4 != v6);
      v2 = v49;
    }

    v15 = sub_1000567F8(_swiftEmptyArrayStorage, v2);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    *(v0 + 360) = v16;
    *(v0 + 256) = v15;
    *(v0 + 264) = v18;
    *(v0 + 361) = v20;

    v24 = *(v0 + 104);
    v50 = *(v0 + 96);
    type metadata accessor for AgeRangeStringsProvider();
    static AgeRangeStringsProvider.promptTitle.getter();
    sub_100022F18(&qword_1000B8230, &qword_10008D830);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10008C640;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100024F28();
    *(v25 + 32) = v50;
    *(v25 + 40) = v24;

    v26 = String.init(format:_:)();
    v28 = v27;
    *(v0 + 16) = v26;
    *(v0 + 24) = v27;

    *(v0 + 272) = v28;
    v29 = static AgeRangeStringsProvider.promptSecondaryButtonText.getter();
    v31 = 0;
    *(v0 + 32) = v29;
    *(v0 + 40) = v30;
    *(v0 + 280) = v30;
    if ((v17 & 1) == 0)
    {
      v31 = [objc_allocWithZone(NSNumber) initWithInteger:v15];
    }

    *(v0 + 288) = v31;
    if (v21)
    {
      v32 = 0;
    }

    else
    {
      v32 = [objc_allocWithZone(NSNumber) initWithInteger:v19];
    }

    *(v0 + 296) = v32;
    v34 = *(v0 + 128);
    v33 = *(v0 + 136);
    v36 = *(v0 + 112);
    v35 = *(v0 + 120);
    v37 = objc_allocWithZone(FAAgeRange);
    v38 = v32;
    v39 = v31;
    v40 = String._bridgeToObjectiveC()();
    v41 = String._bridgeToObjectiveC()();
    *(v0 + 304) = [v37 initWithAltDSID:v40 bundleID:v41 lowerbound:v39 upperbound:v38];

    v42 = swift_task_alloc();
    *(v0 + 312) = v42;
    *v42 = v0;
    v42[1] = sub_100051518;
    v43 = *(v0 + 168);
    v44 = *(v0 + 128);
    v45 = *(v0 + 136);
    v47 = *(v0 + 112);
    v46 = *(v0 + 120);

    return AgeRangeDaemonService.fetchAllAgeRangesForBundleID(with:bundleID:)(v47, v46, v44, v45);
  }

  else
  {
    v22 = *sub_1000297A8((*(v0 + 168) + 48), *(*(v0 + 168) + 72));
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *v23 = v0;
    v23[1] = sub_100050FF0;

    return sub_1000340F0();
  }
}

uint64_t sub_100050FF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = v4[27];
    v8 = v4[24];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v4[30] = a1;

    return _swift_task_switch(sub_100051154, 0, 0);
  }
}

char *sub_100051154()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  *(v0 + 248) = v2;
  v3 = *(v0 + 144);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v47 = *(v0 + 144);
    }

    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    result = sub_10005580C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v48 = v1;
    v49 = v2;
    v6 = 0;
    v7 = *(v0 + 144) + 32;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = *(v0 + 144);
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v7 + 8 * v6);
      }

      v10 = v9;
      v11 = [v9 integerValue];

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10005580C((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      _swiftEmptyArrayStorage[v13 + 4] = v11;
    }

    while (v4 != v6);
    v1 = v48;
    v2 = v49;
  }

  v14 = sub_1000567F8(_swiftEmptyArrayStorage, v2);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  *(v0 + 360) = v15;
  *(v0 + 256) = v14;
  *(v0 + 264) = v17;
  *(v0 + 361) = v19;

  if (v1)
  {
    v21 = *(v0 + 216);
    v22 = *(v0 + 192);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v24 = *(v0 + 104);
    v50 = *(v0 + 96);
    type metadata accessor for AgeRangeStringsProvider();
    static AgeRangeStringsProvider.promptTitle.getter();
    sub_100022F18(&qword_1000B8230, &qword_10008D830);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10008C640;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100024F28();
    *(v25 + 32) = v50;
    *(v25 + 40) = v24;

    v26 = String.init(format:_:)();
    v28 = v27;
    *(v0 + 16) = v26;
    *(v0 + 24) = v27;

    *(v0 + 272) = v28;
    v29 = 0;
    *(v0 + 32) = static AgeRangeStringsProvider.promptSecondaryButtonText.getter();
    *(v0 + 40) = v30;
    *(v0 + 280) = v30;
    if ((v16 & 1) == 0)
    {
      v29 = [objc_allocWithZone(NSNumber) initWithInteger:v14];
    }

    *(v0 + 288) = v29;
    if (v20)
    {
      v31 = 0;
    }

    else
    {
      v31 = [objc_allocWithZone(NSNumber) initWithInteger:v18];
    }

    *(v0 + 296) = v31;
    v33 = *(v0 + 128);
    v32 = *(v0 + 136);
    v35 = *(v0 + 112);
    v34 = *(v0 + 120);
    v36 = objc_allocWithZone(FAAgeRange);
    v37 = v31;
    v38 = v29;
    v39 = String._bridgeToObjectiveC()();
    v40 = String._bridgeToObjectiveC()();
    *(v0 + 304) = [v36 initWithAltDSID:v39 bundleID:v40 lowerbound:v38 upperbound:v37];

    v41 = swift_task_alloc();
    *(v0 + 312) = v41;
    *v41 = v0;
    v41[1] = sub_100051518;
    v42 = *(v0 + 168);
    v43 = *(v0 + 128);
    v44 = *(v0 + 136);
    v46 = *(v0 + 112);
    v45 = *(v0 + 120);

    return AgeRangeDaemonService.fetchAllAgeRangesForBundleID(with:bundleID:)(v46, v45, v43, v44);
  }
}

uint64_t sub_100051518(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v9 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {
    v5 = v3[34];
    v6 = v3[35];

    v7 = sub_100051984;
  }

  else
  {
    v7 = sub_10005163C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005163C()
{
  v1 = *(v0 + 320);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v47 = *(v0 + 320);
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  v5 = *(v0 + 216);
  if (v2)
  {
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 176);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    AgeRangeDaemonServiceNewInfoCalculator.init()();
    AgeRangeDaemonServiceNewInfoCalculator.isThisNewInformation(from:newRequestRange:bundleID:)();

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v11 = *(v0 + 320);

    v12 = v4;
    NewInfoMetadata.init(isSuperSet:isOverLapping:ageRange:)();
  }

  v13 = sub_1000297A8((*(v0 + 168) + 48), *(*(v0 + 168) + 72));
  v14 = *v13;
  v15 = [*(*v13 + 16) aa_primaryAppleAccount];
  if (v15)
  {
    v16 = v15;
    isa = [*(v14 + 24) ageOfMajorityForAccount:v15];
    if (!isa)
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
    }

    v18 = isa;
  }

  else
  {
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v18 = NSNumber.init(integerLiteral:)(18).super.super.isa;
  }

  v19 = *(v0 + 248);
  v20 = *(v0 + 216);
  v21 = [(objc_class *)v18 integerValue];

  if (NewInfoMetadata.isSuperSet.getter())
  {
    v22 = v19 >= v21;
    v23 = *(v0 + 361);
    v24 = *(v0 + 360);
    v26 = *(v0 + 256);
    v25 = *(v0 + 264);
    v27 = *(v0 + 216);
    v28 = swift_task_alloc();
    *(v28 + 16) = v22;
    *(v28 + 24) = v27;
    v29 = v24 & 1;
    LODWORD(v21) = v23 & 1;
    v30 = sub_100058ED4;
LABEL_15:
    v37 = sub_100057474(v26, v29, v25, v21, v30);
    v39 = v38;

    goto LABEL_17;
  }

  v31 = *(v0 + 216);
  v32 = NewInfoMetadata.isOverLapping.getter();
  v33 = *(v0 + 361);
  v34 = *(v0 + 360);
  v26 = *(v0 + 256);
  v25 = *(v0 + 264);
  if (v32)
  {
    v35 = *(v0 + 216);
    v36 = swift_task_alloc();
    *(v36 + 16) = v19 >= v21;
    *(v36 + 24) = v35;
    v29 = v34 & 1;
    LODWORD(v21) = v33 & 1;
    v30 = sub_100058EB0;
    goto LABEL_15;
  }

  v40 = v19 >= v21;
  v29 = v34 & 1;
  LOBYTE(v21) = v33 & 1;
  v37 = sub_10005774C(*(v0 + 256), v29, *(v0 + 264), v33 & 1, v40);
  v39 = v41;
LABEL_17:
  *(v0 + 48) = v37;
  *(v0 + 56) = v39;
  *(v0 + 64) = sub_100057A8C(*(v0 + 256), v29, *(v0 + 264), v21, 3);
  *(v0 + 72) = v42;
  v43 = swift_task_alloc();
  *(v0 + 336) = v43;
  *v43 = v0;
  v43[1] = sub_100051A08;
  v45 = *(v0 + 112);
  v44 = *(v0 + 120);

  return sub_1000562D0(v45, v44);
}

uint64_t sub_100051984()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  v3 = *(v0 + 328);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100051A08(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 80) = v1;
  *(v3 + 88) = a1;
  v4 = *(v2 + 336);
  v6 = *v1;

  return _swift_task_switch(sub_100051B08, 0, 0);
}

uint64_t sub_100051B08()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = [*(v0 + 296) integerValue];
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1000297A8((*(v0 + 168) + 48), *(*(v0 + 168) + 72));
  v4 = *v3;
  v5 = [*(*v3 + 16) aa_primaryAppleAccount];
  if (v5)
  {
    v6 = v5;
    isa = [*(v4 + 24) ageOfMajorityForAccount:v5];
    if (!isa)
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
    }

    v8 = isa;
  }

  else
  {
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v8 = NSNumber.init(integerLiteral:)(18).super.super.isa;
  }

  v9 = [(objc_class *)v8 integerValue];

  v10 = async function pointer to static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)[1];
  v11 = swift_task_alloc();
  *(v0 + 344) = v11;
  *v11 = v0;
  v11[1] = sub_100051CA4;

  return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(1, v2, v1 == 0, 0, 0, v9);
}

uint64_t sub_100051CA4(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = a1;

  return _swift_task_switch(sub_100051DA4, 0, 0);
}

uint64_t sub_100051DA4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 296);
  v3 = *(v0 + 216);
  v4 = *(v0 + 288);
  v5 = v2;
  v25 = NewInfoMetadata.isOverLapping.getter();
  if (v1)
  {
    v6 = *(v0 + 352);
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  v26 = *(v0 + 48);
  v27 = *(v0 + 64);
  v10 = *(v0 + 296);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v13 = *(v0 + 272);
  v14 = *(v0 + 16);
  v32 = *(v0 + 216);
  v33 = *(v0 + 304);
  v30 = *(v0 + 208);
  v31 = *(v0 + 200);
  v34 = *(v0 + 192);
  v28 = *(v0 + 32);
  v29 = *(v0 + 160);
  v15 = [objc_allocWithZone(FAAgeRangeResponse) initWithLowerbound:v11 upperbound:v10 validationLevel:*(v0 + 88) response:1 parentalControlsInformation:v7.super.isa isSharingNewInformation:v25 & 1];

  v16 = objc_allocWithZone(FAAgeRangeAlertModel);
  v17 = v15;
  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();

  v21 = String._bridgeToObjectiveC()();

  v22 = [v16 initWithAgeRangeResponse:v17 shouldPrompt:1 flowType:v29 title:v18 message:v19 primaryButtonText:v20 secondaryButtonText:v21];

  (*(v30 + 8))(v32, v31);

  v23 = *(v0 + 8);

  return v23(v22);
}

uint64_t sub_100052004@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel();
  a3[4] = &off_1000A8C30;
  v6 = sub_10003A24C(a3);
  v7 = *(sub_100022F18(&qword_1000B9040, &qword_10008D838) + 48);
  *v6 = a1;
  v8 = type metadata accessor for NewInfoMetadata();
  (*(*(v8 - 8) + 16))(v6 + v7, a2, v8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000520D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v7 = type metadata accessor for Logger();
  v4[23] = v7;
  v8 = *(v7 - 8);
  v4[24] = v8;
  v9 = *(v8 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[28] = v10;
  *v10 = v4;
  v10[1] = sub_1000521F8;

  return sub_1000492E4(a1, a2);
}

uint64_t sub_1000521F8(int a1, void *a2)
{
  v5 = *(*v3 + 224);
  v6 = *v3;
  *(v6 + 272) = a1;

  if (v2)
  {
    v8 = *(v6 + 208);
    v7 = *(v6 + 216);
    v9 = *(v6 + 200);

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_10005235C, 0, 0);
  }
}

uint64_t sub_10005235C()
{
  v22 = v0;
  v1 = *(v0 + 216);
  static FamilyLogger.common.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 272);
    v5 = *(v0 + 216);
    v6 = *(v0 + 184);
    v7 = *(v0 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000373D4(0xD000000000000024, 0x8000000100088B80, &v21);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s age range state: %d", v8, 0x12u);
    sub_100024F7C(v9);

    v10 = *(v7 + 8);
    v10(v5, v6);
  }

  else
  {
    v11 = *(v0 + 216);
    v12 = *(v0 + 184);
    v13 = *(v0 + 192);

    v10 = *(v13 + 8);
    v10(v11, v12);
  }

  *(v0 + 232) = v10;
  if (*(v0 + 272))
  {
    v14 = swift_task_alloc();
    *(v0 + 256) = v14;
    *v14 = v0;
    v14[1] = sub_100052974;
    v15 = *(v0 + 176);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);

    return sub_1000492E4(v17, v16);
  }

  else
  {
    v19 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    *(v0 + 240) = v19;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_10005265C;
    v20 = swift_continuation_init();
    *(v0 + 136) = sub_100022F18(&unk_1000B8440, &unk_10008C890);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10007415C;
    *(v0 + 104) = &unk_1000A8B90;
    *(v0 + 112) = v20;
    [v19 startRequestWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10005265C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_100052CD4;
  }

  else
  {
    v3 = sub_10005276C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005276C()
{
  v23 = v0;
  v1 = *(v0 + 144);
  LOBYTE(v2) = FAFamilyCircle.isPartOfFamilyAndChildOrTeen(altDSID:)(*(v0 + 152))._0;
  v3 = v2;

  v4 = v3 & 0x100;
  v5 = *(v0 + 208);
  static FamilyLogger.common.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 232);
  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  if (v8)
  {
    v21 = *(v0 + 232);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_1000373D4(0xD000000000000024, 0x8000000100088B80, &v22);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v3 & 1;
    *(v13 + 18) = 1024;
    *(v13 + 20) = v4 >> 8;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s isPartOfFamily: %{BOOL}d, isChildOrTeen: %{BOOL}d", v13, 0x18u);
    sub_100024F7C(v14);

    v21(v10, v11);
  }

  else
  {

    v9(v10, v11);
  }

  if (((v4 != 0) & v3) != 0)
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v18 = *(v0 + 200);

  v19 = *(v0 + 8);

  return v19(v15);
}

uint64_t sub_100052974(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 256);
  v5 = *v3;
  v5[33] = a2;

  if (v2)
  {
    v7 = v5[26];
    v6 = v5[27];
    v8 = v5[25];

    v9 = v5[1];

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_100052AD0, 0, 0);
  }
}

uint64_t sub_100052AD0()
{
  v1 = v0[33];
  v2 = v0[21];
  sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
  v3 = static NSObject.== infix(_:_:)();
  v4 = v0[33];
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v6 = v0[25];
    v7 = v0[21];
    static FamilyLogger.common.getter();
    v8 = v7;
    v9 = v4;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[33];
      v13 = v0[21];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      *(v14 + 4) = v13;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v12;
      *v15 = v13;
      v15[1] = v12;
      v16 = v13;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "Privacy version mismatch, currentVersion: %@, serverPrivacyVersion: %@ ", v14, 0x16u);
      sub_100022F18(&qword_1000B8590, &qword_10008C960);
      swift_arrayDestroy();
    }

    v4 = v0[33];
    v18 = v0[29];
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];

    v18(v19, v21);
    v5 = 2;
  }

  v23 = v0[26];
  v22 = v0[27];
  v24 = v0[25];

  v25 = v0[1];

  return v25(v5);
}

uint64_t sub_100052CD4()
{
  v18 = v0;
  v1 = *(v0 + 248);
  swift_willThrow();

  v2 = *(v0 + 208);
  static FamilyLogger.common.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_1000373D4(0xD000000000000024, 0x8000000100088B80, &v17);
    *(v10 + 12) = 1024;
    *(v10 + 14) = 0;
    *(v10 + 18) = 1024;
    *(v10 + 20) = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s isPartOfFamily: %{BOOL}d, isChildOrTeen: %{BOOL}d", v10, 0x18u);
    sub_100024F7C(v11);
  }

  v6(v7, v8);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 200);

  v15 = *(v0 + 8);

  return v15(2);
}

uint64_t AgeRangeDaemonService.fetchFamilyCircle()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100052F34;

  return sub_100057DB8();
}

uint64_t sub_100052F34(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1000531AC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100053254;

  return sub_100057DB8();
}

uint64_t sub_100053254(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t AgeRangeDaemonService.fetchAltDSID()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100053474;

  return sub_100056BF0();
}

uint64_t sub_100053474(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1000536FC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000537A4;

  return sub_100056BF0();
}

uint64_t sub_1000537A4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v2)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = String._bridgeToObjectiveC()();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v3 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t AgeRangeDaemonService.fetchAge()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000539D4, 0, 0);
}

uint64_t sub_1000539D4()
{
  v14 = v0;
  v1 = v0[5];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0x6567416863746566, 0xEA00000000002928, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = *sub_1000297A8((v0[2] + 48), *(v0[2] + 72));
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_100053B7C;

  return sub_1000340F0();
}

uint64_t sub_100053B7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_100053CD0, 0, 0);
  }
}

uint64_t sub_100053CD0()
{
  v1 = v0[5];
  v2 = [objc_allocWithZone(NSNumber) initWithInteger:v0[7]];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100053ED8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100053F80;

  return AgeRangeDaemonService.fetchAge()();
}

uint64_t sub_100053F80(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t AgeRangeDaemonService.fetchPrivacyVersion(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000541C8;

  return sub_1000492E4(a1, a2);
}

uint64_t sub_1000541C8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v3 + 16);
  v9 = *v3;

  v7 = *(v9 + 8);
  if (!v2)
  {
    v6 = a2;
  }

  return v7(v6);
}

uint64_t sub_100054454(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100054528;

  return sub_1000492E4(v4, v6);
}

uint64_t sub_100054528(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 40);
  v7 = *(*v3 + 32);
  v8 = *v3;

  if (v2)
  {
    v9 = v5[2];
    v10 = v5[3];

    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
    v12 = *(v8 + 8);

    return v12();
  }

  else
  {
    v5[6] = a2;

    return _swift_task_switch(sub_1000546C8, 0, 0);
  }
}

uint64_t sub_1000546C8()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];

  (v3)[2](v3, v1, 0);
  _Block_release(v3);

  v4 = v0[1];

  return v4();
}

uint64_t AgeRangeDaemonService.deinit()
{
  v1 = *(v0 + 40);

  sub_100024F7C((v0 + 48));

  return v0;
}

uint64_t AgeRangeDaemonService.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  sub_100024F7C((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_100054F58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NewInfoMetadata();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v106 - v14;
  v16 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v18);
  v20 = v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058F44(v3, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v22 = *v20;
      type metadata accessor for AgeRangeStringsProvider();
      if (v22 == 1)
      {
        static AgeRangeStringsProvider.promptMessageAdult.getter();
        goto LABEL_18;
      }

      static AgeRangeStringsProvider.promptMessage.getter();
      goto LABEL_17;
    }

    v44 = *v20;
    v45 = sub_100022F18(&qword_1000B9040, &qword_10008D838);
    (*(v7 + 32))(v15, &v20[*(v45 + 48)], v6);
    type metadata accessor for AgeRangeStringsProvider();
    if (v44 == 1)
    {
      static AgeRangeStringsProvider.promptMessageAdult.getter();
      v46 = String.init(format:_:)();
      v48 = v47;

      v109 = v46;
      v110 = v48;

      v49._countAndFlagsBits = 2570;
      v49._object = 0xE200000000000000;
      String.append(_:)(v49);

      v51 = v109;
      v50 = v110;
      v52 = NewInfoMetadata.rangeDescription.getter();
      v54 = v53;
      v109 = v51;
      v110 = v50;

      v55._countAndFlagsBits = v52;
      v55._object = v54;
      String.append(_:)(v55);

      v43 = v109;
      (*(v7 + 8))(v15, v6);
    }

    else
    {
      v107 = static AgeRangeStringsProvider.promptMessage.getter();
      sub_100022F18(&qword_1000B8230, &qword_10008D830);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_10008C760;
      v109 = a1;
      v108 = v7;
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      *(v88 + 56) = &type metadata for String;
      v92 = sub_100024F28();
      *(v88 + 64) = v92;
      *(v88 + 32) = v89;
      *(v88 + 40) = v91;
      v109 = a2;
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v88 + 96) = &type metadata for String;
      *(v88 + 104) = v92;
      *(v88 + 72) = v93;
      *(v88 + 80) = v94;
      v95 = String.init(format:_:)();
      v97 = v96;

      v109 = v95;
      v110 = v97;

      v98._countAndFlagsBits = 2570;
      v98._object = 0xE200000000000000;
      String.append(_:)(v98);

      v100 = v109;
      v99 = v110;
      v101 = NewInfoMetadata.rangeDescription.getter();
      v103 = v102;
      v109 = v100;
      v110 = v99;

      v104._countAndFlagsBits = v101;
      v104._object = v103;
      String.append(_:)(v104);

      v43 = v109;
      (*(v108 + 8))(v15, v6);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        type metadata accessor for AgeRangeStringsProvider();
        static AgeRangeStringsProvider.promptPrimaryButtonText.getter();
LABEL_18:
        v43 = String.init(format:_:)();

        return v43;
      }

      type metadata accessor for AgeRangeStringsProvider();
      static AgeRangeStringsProvider.userNotificationBody.getter();
LABEL_17:
      sub_100022F18(&qword_1000B8230, &qword_10008D830);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_10008C760;
      v109 = a1;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      *(v81 + 56) = &type metadata for String;
      v85 = sub_100024F28();
      *(v81 + 64) = v85;
      *(v81 + 32) = v82;
      *(v81 + 40) = v84;
      v109 = a2;
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v81 + 96) = &type metadata for String;
      *(v81 + 104) = v85;
      *(v81 + 72) = v86;
      *(v81 + 80) = v87;
      goto LABEL_18;
    }

    v23 = *v20;
    v24 = sub_100022F18(&qword_1000B9040, &qword_10008D838);
    (*(v7 + 32))(v12, &v20[*(v24 + 48)], v6);
    v25 = type metadata accessor for AgeRangeStringsProvider();
    if (v23 == 1)
    {
      static AgeRangeStringsProvider.promptMessageAdult.getter();
      v26 = String.init(format:_:)();
      v28 = v27;

      v109 = v26;
      v110 = v28;

      v29._countAndFlagsBits = 2570;
      v29._object = 0xE200000000000000;
      String.append(_:)(v29);

      v30 = v109;
      v31 = v110;
      v32 = NewInfoMetadata.rangeDescription.getter();
      v34 = v33;
      v109 = v30;
      v110 = v31;

      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);

      v36._countAndFlagsBits = 10;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);

      v38 = v109;
      v37 = v110;
      static AgeRangeStringsProvider.promptMessageNewInfoText.getter();
      v39 = String.init(format:_:)();
      v41 = v40;

      v109 = v38;
      v110 = v37;

      v42._countAndFlagsBits = v39;
      v42._object = v41;
      String.append(_:)(v42);

      v43 = v109;
      (*(v7 + 8))(v12, v6);
    }

    else
    {
      v106[1] = static AgeRangeStringsProvider.promptMessage.getter();
      sub_100022F18(&qword_1000B8230, &qword_10008D830);
      v56 = swift_allocObject();
      v108 = v7;
      v109 = a1;
      v57 = v56;
      *(v56 + 16) = xmmword_10008C760;
      v107 = v25;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v57[7] = &type metadata for String;
      v61 = sub_100024F28();
      v57[8] = v61;
      v57[4] = v58;
      v57[5] = v60;
      v109 = a2;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v57[12] = &type metadata for String;
      v57[13] = v61;
      v57[9] = v62;
      v57[10] = v63;
      v64 = String.init(format:_:)();
      v66 = v65;

      v109 = v64;
      v110 = v66;

      v67._countAndFlagsBits = 2570;
      v67._object = 0xE200000000000000;
      String.append(_:)(v67);

      v69 = v109;
      v68 = v110;
      v70 = NewInfoMetadata.rangeDescription.getter();
      v72 = v71;
      v109 = v69;
      v110 = v68;

      v73._countAndFlagsBits = v70;
      v73._object = v72;
      String.append(_:)(v73);

      v74._countAndFlagsBits = 2570;
      v74._object = 0xE200000000000000;
      String.append(_:)(v74);

      v76 = v109;
      v75 = v110;
      static AgeRangeStringsProvider.promptMessageNewInfoText.getter();
      v77 = String.init(format:_:)();
      v79 = v78;

      v109 = v76;
      v110 = v75;

      v80._countAndFlagsBits = v77;
      v80._object = v79;
      String.append(_:)(v80);

      v43 = v109;
      (*(v108 + 8))(v12, v6);
    }
  }

  return v43;
}

void sub_100055740(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1000557DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_10005580C(char *a1, int64_t a2, char a3)
{
  result = sub_10005582C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10005582C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100022F18(&qword_1000B9070, &qword_10008D868);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

Swift::Int sub_100055930(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000562BC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100055A64(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100055A64(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000561A4(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_100055FB0((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000561B8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1000561B8((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_100055FB0((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_100055FB0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_1000561B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100022F18(&qword_1000B94F0, &qword_10008D860);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000562D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_1000562F0, 0, 0);
}

uint64_t sub_1000562F0()
{
  v1 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100056428;
  v2 = swift_continuation_init();
  v0[17] = sub_100022F18(&unk_1000B8440, &unk_10008C890);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10007415C;
  v0[13] = &unk_1000A8C08;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100056428()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_100056778;
  }

  else
  {
    v3 = sub_100056538;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100056538()
{
  v24 = v0[18];
  v1 = [v24 members];
  sub_100002B10(0, &qword_1000B9050, FAFamilyMember_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v26 = v2;
    v27 = v2 & 0xC000000000000001;
    v25 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v27)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v25 + 16))
        {
          goto LABEL_22;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 altDSID];
      if (v8)
      {
        v9 = i;
        v11 = v0[19];
        v10 = v0[20];
        v12 = v8;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (v13 == v11 && v15 == v10)
        {

          i = v9;
          v2 = v26;
        }

        else
        {
          v17 = v0[19];
          v18 = v0[20];
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          i = v9;
          v2 = v26;
          if ((v19 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if ([v6 isMe] && (FAFamilyMember.isTeenOrChild.getter() & 1) != 0)
        {
          v20 = v0[21];

          v21 = 2;
          goto LABEL_25;
        }
      }

LABEL_4:

      ++v4;
      if (v7 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  v6 = v0[21];
  v21 = 1;
LABEL_25:

  v22 = v0[1];

  return v22(v21);
}

uint64_t sub_100056778()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_1000567F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.daemon.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v2;
    v15 = a2;
    v16 = v14;
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1000373D4(0xD000000000000014, 0x8000000100088C60, &v31);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v16, 0xCu);
    sub_100024F7C(v17);

    a2 = v15;
    v3 = v29;
  }

  (*(v7 + 8))(v11, v6);
  if ((*(a1 + 16) - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    type metadata accessor for AgeRangeError(0);
    v18 = -4008;
LABEL_10:
    v30 = v18;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return v3;
  }

  v31 = a1;

  sub_100055930(&v31);
  if (!v3)
  {
    v19 = v31;
    if (sub_10004ED18(v31))
    {

      type metadata accessor for AgeRangeError(0);
      v18 = -4007;
      goto LABEL_10;
    }

    if (sub_10004ED60(v19))
    {

      type metadata accessor for AgeRangeError(0);
      v18 = -4013;
      goto LABEL_10;
    }

    v21 = *(v19 + 2);
    v22 = v21 == 0;
    if (v21)
    {
      v23 = *(v19 + 4);
      v24 = v23 > a2;
      if (v23 > a2)
      {
        v3 = 0;
LABEL_20:

        v25 = 0;
        goto LABEL_21;
      }

      v26 = (v19 + 40);
      v27 = v21 - 1;
      while (1)
      {
        v3 = v23;
        if (!v27)
        {
          break;
        }

        v28 = *v26++;
        v23 = v28;
        --v27;
        if (v28 > a2)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v25 = 1;
    v24 = v22;
LABEL_21:
    LOBYTE(v31) = v24;
    LOBYTE(v30) = v25;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_100056B54@<X0>(uint64_t **a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  return sub_100042508(v1[2], v1[3], v1[7], a1);
}

uint64_t sub_100056BF0()
{
  v1 = type metadata accessor for Logger();
  v0[21] = v1;
  v2 = *(v1 - 8);
  v0[22] = v2;
  v3 = *(v2 + 64) + 15;
  v0[23] = swift_task_alloc();

  return _swift_task_switch(sub_100056CAC, 0, 0);
}

uint64_t sub_100056CAC()
{
  v18 = v0;
  v1 = v0[23];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0x746C416863746566, 0xEE00292844495344, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = [objc_opt_self() defaultStore];
  v0[24] = v10;
  if (v10)
  {
    v11 = v10;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100056FB4;
    v12 = swift_continuation_init();
    v0[17] = sub_100022F18(&qword_1000B9048, &unk_10008D840);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10006D050;
    v0[13] = &unk_1000A8BB8;
    v0[14] = v12;
    [v11 aa_primaryAppleAccountWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    type metadata accessor for AgeRangeError(0);
    v0[20] = -4004;
    sub_100023D48(&_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = v0[19];
    swift_willThrow();
    v14 = v0[23];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100056FB4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_10005724C;
  }

  else
  {
    v3 = sub_1000570C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000570C4()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = [v1 aa_altDSID];
    if (v2)
    {
      v3 = *(v0 + 184);
      v4 = v2;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = *(v0 + 8);

      return v8(v5, v7);
    }
  }

  type metadata accessor for AgeRangeError(0);
  *(v0 + 160) = -4004;
  sub_100023D48(&_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v10 = *(v0 + 152);
  swift_willThrow();
  v11 = *(v0 + 184);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10005724C()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[25];
  v4 = v0[23];

  v5 = v0[1];

  return v5();
}

id sub_1000572C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AgeRangeStringsProvider();
  static AgeRangeStringsProvider.unconfiguredAlertTitle.getter();
  static AgeRangeStringsProvider.unconfiguredAlertMessage.getter();
  sub_100022F18(&qword_1000B8230, &qword_10008D830);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10008C640;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100024F28();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  String.init(format:_:)();

  static AgeRangeStringsProvider.unconfiguredAlertPrimaryButtonText.getter();
  static AgeRangeStringsProvider.unconfiguredAlertSecondaryButtonText.getter();
  v6 = objc_allocWithZone(FAAgeRangeAlertModel);
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v6 initWithAgeRangeResponse:0 shouldPrompt:1 flowType:a3 title:v7 message:v8 primaryButtonText:v9 secondaryButtonText:v10];

  return v11;
}

uint64_t sub_100057474(uint64_t a1, char a2, uint64_t a3, int a4, void (*a5)(void *__return_ptr, void))
{
  v27 = a4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.daemon.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = a3;
    v26 = a5;
    v18 = v17;
    v19 = a1;
    v20 = swift_slowAlloc();
    v28[0] = v20;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000373D4(0xD00000000000002FLL, 0x8000000100088B50, v28);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v18, 0xCu);
    sub_100024F7C(v20);
    a1 = v19;

    a3 = v25;
    a5 = v26;
  }

  v21 = (*(v10 + 8))(v14, v9);
  if ((v27 & 1) == 0)
  {
    a5(v28, v21);
    sub_1000297A8(v28, v29);
    if (a2)
    {
      v23 = sub_100054840(a3, &static AgeRangeStringsProvider.promptMessageUnder.getter, &static AgeRangeStringsProvider.userNotificationBodyUnder.getter);
    }

    else
    {
      v23 = sub_100054F58(a1, a3);
    }

    goto LABEL_10;
  }

  if ((a2 & 1) == 0)
  {
    a5(v28, v21);
    sub_1000297A8(v28, v29);
    v23 = sub_100054840(a1, &static AgeRangeStringsProvider.promptMessageOver.getter, &static AgeRangeStringsProvider.userNotificationBodyOver.getter);
LABEL_10:
    v22 = v23;
    sub_100024F7C(v28);
    return v22;
  }

  return 0;
}

uint64_t sub_10005774C(uint64_t a1, char a2, uint64_t a3, char a4, int a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.daemon.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = a5;
    v32 = a3;
    v19 = a1;
    v20 = v18;
    v21 = a4;
    v22 = a2;
    v23 = swift_slowAlloc();
    v34[0] = v23;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000373D4(0xD00000000000002FLL, 0x8000000100088B50, v34);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s", v20, 0xCu);
    sub_100024F7C(v23);
    a2 = v22;
    a4 = v21;

    a1 = v19;
    a3 = v32;
    LOBYTE(a5) = v33;
  }

  (*(v11 + 8))(v15, v10);
  if ((a4 & 1) == 0)
  {
    v25 = a5 & 1;
    if ((a2 & 1) == 0)
    {
      v35 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel();
      v36 = &off_1000A8C30;
      *sub_10003A24C(v34) = v25;
      swift_storeEnumTagMultiPayload();
      sub_1000297A8(v34, v35);
      v29 = sub_100054F58(a1, a3);
      goto LABEL_11;
    }

    v35 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel();
    v36 = &off_1000A8C30;
    *sub_10003A24C(v34) = v25;
    swift_storeEnumTagMultiPayload();
    sub_1000297A8(v34, v35);
    v26 = &static AgeRangeStringsProvider.promptMessageUnder.getter;
    v27 = &static AgeRangeStringsProvider.userNotificationBodyUnder.getter;
    v28 = a3;
LABEL_9:
    v29 = sub_100054840(v28, v26, v27);
LABEL_11:
    v24 = v29;
    sub_100024F7C(v34);
    return v24;
  }

  if ((a2 & 1) == 0)
  {
    v35 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel();
    v36 = &off_1000A8C30;
    *sub_10003A24C(v34) = a5 & 1;
    swift_storeEnumTagMultiPayload();
    sub_1000297A8(v34, v35);
    v26 = &static AgeRangeStringsProvider.promptMessageOver.getter;
    v27 = &static AgeRangeStringsProvider.userNotificationBodyOver.getter;
    v28 = a1;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_100057A8C(uint64_t a1, char a2, uint64_t a3, char a4, int a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.daemon.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = a5;
    v31 = a1;
    v19 = a3;
    v20 = v18;
    v21 = a4;
    v22 = a2;
    v23 = swift_slowAlloc();
    v33[0] = v23;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000373D4(0xD00000000000002FLL, 0x8000000100088B50, v33);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s", v20, 0xCu);
    sub_100024F7C(v23);
    a2 = v22;
    a4 = v21;

    a3 = v19;
    a1 = v31;
  }

  (*(v11 + 8))(v15, v10);
  if ((a4 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      v34 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel();
      v35 = &off_1000A8C30;
      sub_10003A24C(v33);
      swift_storeEnumTagMultiPayload();
      sub_1000297A8(v33, v34);
      v28 = sub_100054F58(a1, a3);
      goto LABEL_11;
    }

    v34 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel();
    v35 = &off_1000A8C30;
    sub_10003A24C(v33);
    swift_storeEnumTagMultiPayload();
    sub_1000297A8(v33, v34);
    v25 = &static AgeRangeStringsProvider.promptMessageUnder.getter;
    v26 = &static AgeRangeStringsProvider.userNotificationBodyUnder.getter;
    v27 = a3;
LABEL_9:
    v28 = sub_100054840(v27, v25, v26);
LABEL_11:
    v24 = v28;
    sub_100024F7C(v33);
    return v24;
  }

  if ((a2 & 1) == 0)
  {
    v34 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel();
    v35 = &off_1000A8C30;
    sub_10003A24C(v33);
    swift_storeEnumTagMultiPayload();
    sub_1000297A8(v33, v34);
    v25 = &static AgeRangeStringsProvider.promptMessageOver.getter;
    v26 = &static AgeRangeStringsProvider.userNotificationBodyOver.getter;
    v27 = a1;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_100057DB8()
{
  v1 = type metadata accessor for Logger();
  v0[19] = v1;
  v2 = *(v1 - 8);
  v0[20] = v2;
  v3 = *(v2 + 64) + 15;
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_100057E74, 0, 0);
}

uint64_t sub_100057E74()
{
  v14 = v0;
  v1 = v0[21];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000013, 0x8000000100088B30, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[22] = v10;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000580A8;
  v11 = swift_continuation_init();
  v0[17] = sub_100022F18(&unk_1000B8440, &unk_10008C890);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10007415C;
  v0[13] = &unk_1000A8B68;
  v0[14] = v11;
  [v10 startRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000580A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_10005822C;
  }

  else
  {
    v3 = sub_1000581B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000581B8()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10005822C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_1000582CC(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 40);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100058344()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_100054454(v2, v3, v4);
}

uint64_t sub_1000583F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100026620;

  return sub_100053ED8(v2, v3);
}

uint64_t sub_1000584A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100026620;

  return sub_1000536FC(v2);
}

uint64_t sub_100058550()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058590()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100026620;

  return sub_1000531AC(v2);
}

uint64_t sub_10005863C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100026358;

  return sub_100050698(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100058724()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100026620;

  return sub_10004EA60(v2, v3, v4, v6, v5);
}

uint64_t sub_1000587EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_10004CCEC(v2, v3, v4);
}

uint64_t sub_1000588A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100026620;

  return sub_1000491D4(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100058978()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_100048068(v2, v3, v4);
}

uint64_t sub_100058A2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_100046F68(v2, v3, v4);
}

uint64_t sub_100058AE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_100044CD8(v2, v3, v4);
}

uint64_t sub_100058B94()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058BDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_100043CB8(v2, v3, v4);
}

uint64_t sub_100058C90()
{
  _Block_release(*(v0 + 64));
  v1 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100058D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[6];
  v16 = v9[7];
  v18 = v9[8];
  v17 = v9[9];
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_100026620;

  return sub_100041A00(v11, v12, v13, v14, v15, v16, v18, v17, a9);
}

uint64_t sub_100058DE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100026620;

  return sub_10003DB98(v2, v3, v4, v5, v6);
}

uint64_t type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel()
{
  result = qword_1000B90E8;
  if (!qword_1000B90E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100058F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058FA8(uint64_t a1)
{
  v3 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10005901C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000590B4()
{
  sub_100059128();
  if (v0 <= 0x3F)
  {
    sub_100059158();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *sub_100059128()
{
  result = qword_1000B90F8;
  if (!qword_1000B90F8)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_1000B90F8);
  }

  return result;
}

void sub_100059158()
{
  if (!qword_1000B9100)
  {
    type metadata accessor for NewInfoMetadata();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000B9100);
    }
  }
}

id sub_1000591E8()
{
  result = [objc_allocWithZone(type metadata accessor for PDSRegistrarService()) init];
  static PDSRegistrarService.sharedInstance = result;
  return result;
}

uint64_t *PDSRegistrarService.sharedInstance.unsafeMutableAddressor()
{
  if (qword_1000B7F28 != -1)
  {
    swift_once();
  }

  return &static PDSRegistrarService.sharedInstance;
}

id static PDSRegistrarService.sharedInstance.getter()
{
  if (qword_1000B7F28 != -1)
  {
    swift_once();
  }

  v1 = static PDSRegistrarService.sharedInstance;

  return v1;
}

id sub_100059320()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v5 = OBJC_IVAR___PDSRegistrarService_pdsRegistrar;
  *&v0[OBJC_IVAR___PDSRegistrarService_pdsRegistrar] = 0;
  v6 = [objc_allocWithZone(ACAccountStore) init];
  v7 = [v6 aida_accountForPrimaryiCloudAccount];

  if (v7 && (v8 = [v7 aida_dsid]) != 0)
  {
    v9 = v8;
    v10 = [objc_opt_self() userWithDSID:v8];
  }

  else
  {
    v10 = 0;
  }

  *&v1[OBJC_IVAR___PDSRegistrarService_pdsUser] = v10;
  v11 = objc_allocWithZone(PDSRegistrar);
  v12 = sub_100059F90();

  v13 = *&v1[v5];
  *&v1[v5] = v12;

  v15.receiver = v1;
  v15.super_class = type metadata accessor for PDSRegistrarService();
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t PDSRegistrarService.registerToPDS(_:usePDS:)(char a1, char a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v54 - v14;
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v54 - v18;
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v54 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v54 - v25;
  if (a2)
  {
    v27 = objc_allocWithZone(PDSRegistration);
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 initWithTopic:v28 pushEnvironment:a1];

    v30 = *(v2 + OBJC_IVAR___PDSRegistrarService_pdsUser);
    if (v30)
    {
      v31 = *(v2 + OBJC_IVAR___PDSRegistrarService_pdsRegistrar);
      if (v31)
      {
        v57 = 0;
        v32 = v30;
        v33 = v31;
        if ([v33 ensureRegistrationPresent:v29 forUser:v32 error:&v57])
        {
          v55 = v32;
          v34 = v57;
          static FamilyLogger.daemon.getter();
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v57 = v54;
            *v37 = 136315138;
            v56 = a1;
            v38 = dispatch thunk of CustomStringConvertible.description.getter();
            v40 = sub_1000373D4(v38, v39, &v57);

            *(v37 + 4) = v40;
            _os_log_impl(&_mh_execute_header, v35, v36, "PDS Registration was successful. environment is: %s", v37, 0xCu);
            sub_100024F7C(v54);
          }

          return (*(v6 + 8))(v26, v5);
        }

        else
        {
          v52 = v57;
          v53 = _convertNSErrorToError(_:)();

          swift_willThrow();
          static FamilyLogger.daemon.getter();
          swift_errorRetain();
          sub_100024D60(v53);

          return (*(v6 + 8))(v11, v5);
        }
      }

      else
      {
        v48 = v30;
        static FamilyLogger.daemon.getter();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "PDSRegistrar is nil", v51, 2u);
        }

        return (*(v6 + 8))(v23, v5);
      }
    }

    else
    {
      static FamilyLogger.daemon.getter();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "PDSUser is nil", v47, 2u);
      }

      return (*(v6 + 8))(v19, v5);
    }
  }

  else
  {
    static FamilyLogger.daemon.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Did not register to PDS since server flag is not enabled", v44, 2u);
    }

    return (*(v6 + 8))(v15, v5);
  }
}

Swift::Void __swiftcall PDSRegistrarService.removeRegistrationFromPDS()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v36[-v10];
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v36[-v14];
  __chkstk_darwin(v13, v16);
  v18 = &v36[-v17];
  v19 = *(v0 + OBJC_IVAR___PDSRegistrarService_pdsUser);
  if (v19)
  {
    v20 = *(v0 + OBJC_IVAR___PDSRegistrarService_pdsRegistrar);
    if (v20)
    {
      v37 = 0;
      v21 = v19;
      v22 = v20;
      if ([v22 removeAllRegistrationsFromUser:v21 error:&v37])
      {
        v23 = v37;
        static FamilyLogger.daemon.getter();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "PDS deregistration was successful, removed all registration properly!", v26, 2u);
        }
      }

      else
      {
        v34 = v37;
        v35 = _convertNSErrorToError(_:)();

        swift_willThrow();
        static FamilyLogger.daemon.getter();
        swift_errorRetain();
        sub_100024D60(v35);

        v18 = v7;
      }
    }

    else
    {
      v30 = v19;
      static FamilyLogger.daemon.getter();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "PDSRegistrar is nil", v33, 2u);
      }

      v18 = v15;
    }
  }

  else
  {
    static FamilyLogger.daemon.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "PDSUser is nil in removing registration after this change", v29, 2u);
    }

    v18 = v11;
  }

  (*(v2 + 8))(v18, v1);
}

id PDSRegistrarService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PDSRegistrarService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100059F90()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithClientID:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10005A0C8()
{
  if (qword_1000B7F40 != -1)
  {
    swift_once();
  }

  v1 = off_1000B9368;

  os_unfair_lock_lock(v1 + 6);
  if (*(v1 + 2))
  {
    v2 = *(v1 + 2);
  }

  else
  {
    v2 = type metadata accessor for CoreDataStack();
    v3 = sub_1000634A4(0x6943796C696D6146, 0xEC000000656C6372, 0xD000000000000016, 0x80000001000881C0, 0);
    if (v0)
    {
      goto LABEL_7;
    }

    v2 = v3;
    v5 = *(v1 + 2);

    *(v1 + 2) = v2;
  }

LABEL_7:
  os_unfair_lock_unlock(v1 + 6);

  return v2;
}

id FamilySettingsDaemonListener.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___FAFamilySettingsDaemonListener_listener];
  dispatch thunk of XPCListener.cancel()();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FamilySettingsDaemonListener();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10005A400(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_10005A4AC(a1, a2);
}

uint64_t sub_10005A4AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  updated = type metadata accessor for FamilySettings.XPC.UpdateValueMessage();
  v3[8] = updated;
  v8 = *(updated - 8);
  v3[9] = v8;
  v3[10] = *(v8 + 64);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10005A5D4, 0, 0);
}

uint64_t sub_10005A5D4()
{
  v1 = v0[4] + OBJC_IVAR___FAFamilySettingsDaemonListener_coreDataStackFactory;
  v2 = *(v1 + 8);
  v3 = *((*v1)() + 56);
  if (!v3)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];
  v21 = v0[7];
  v9 = v0[5];
  v10 = v0[3];
  v11 = v3;

  v12 = [v11 newBackgroundContext];
  v0[12] = v12;

  (*(v7 + 16))(v5, v10, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v0[13] = v14;
  (*(v7 + 32))(v14 + v13, v5, v6);
  *(v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  (*(v8 + 104))(v21, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v9);
  v15 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v12;
  v16 = swift_task_alloc();
  v0[14] = v16;
  updated = type metadata accessor for FamilySettings.XPC.UpdateValueResponse();
  *v16 = v0;
  v16[1] = sub_10005A890;
  v18 = v0[7];
  v19 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v19, v18, sub_10005DCF0, v14, updated);
}

uint64_t sub_10005A890()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_10005DF8C;
  }

  else
  {
    v7 = sub_10005DF90;
  }

  return _swift_task_switch(v7, 0, 0);
}

void *sub_10005AA24(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return &unk_10008DA48;
}

uint64_t sub_10005AA88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_10005AB34(a1, a2);
}

uint64_t sub_10005AB34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  ValueMessage = type metadata accessor for FamilySettings.XPC.ReadValueMessage();
  v3[8] = ValueMessage;
  v8 = *(ValueMessage - 8);
  v3[9] = v8;
  v3[10] = *(v8 + 64);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10005AC5C, 0, 0);
}

uint64_t sub_10005AC5C()
{
  v1 = v0[4] + OBJC_IVAR___FAFamilySettingsDaemonListener_coreDataStackFactory;
  v2 = *(v1 + 8);
  v3 = *((*v1)() + 56);
  if (!v3)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];
  v21 = v0[7];
  v9 = v0[5];
  v10 = v0[3];
  v11 = v3;

  v12 = [v11 newBackgroundContext];
  v0[12] = v12;

  (*(v7 + 16))(v5, v10, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v0[13] = v14;
  (*(v7 + 32))(v14 + v13, v5, v6);
  *(v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  (*(v8 + 104))(v21, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v9);
  v15 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v12;
  v16 = swift_task_alloc();
  v0[14] = v16;
  ValueResponse = type metadata accessor for FamilySettings.XPC.ReadValueResponse();
  *v16 = v0;
  v16[1] = sub_10005AF18;
  v18 = v0[7];
  v19 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v19, v18, sub_10005DB5C, v14, ValueResponse);
}

uint64_t sub_10005AF18()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_10005B124;
  }

  else
  {
    v7 = sub_10005B0AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005B0AC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005B124()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

void *sub_10005B19C(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return &unk_10008DA28;
}

uint64_t sub_10005B200(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026358;

  return sub_10005B2AC(a1, a2);
}

uint64_t sub_10005B2AC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for FamilySettings.XPC.ShareSettingsMessage();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v3[13] = *(v8 + 64);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10005B3D4, 0, 0);
}

uint64_t sub_10005B3D4()
{
  v1 = v0[7] + OBJC_IVAR___FAFamilySettingsDaemonListener_coreDataStackFactory;
  v2 = *v1;
  v0[15] = *v1;
  v0[16] = *(v1 + 8);
  v3 = *(v2() + 56);
  if (!v3)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v20 = v0[10];
  v9 = v0[8];
  v10 = v0[6];
  v11 = v3;

  v12 = [v11 newBackgroundContext];
  v0[17] = v12;

  (*(v7 + 16))(v5, v10, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v0[18] = v14;
  (*(v7 + 32))(v14 + v13, v5, v6);
  *(v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  (*(v8 + 104))(v20, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v9);
  v15 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v12;
  v16 = swift_task_alloc();
  v0[19] = v16;
  v17 = sub_100022F18(&qword_1000B91C8, &unk_10008D930);
  *v16 = v0;
  v16[1] = sub_10005B6A8;
  v18 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v18, sub_10005D4EC, v14, v17);
}

uint64_t sub_10005B6A8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = v2[18];
  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {
    v6 = sub_10005BD64;
  }

  else
  {
    v6 = sub_10005B82C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10005B82C()
{
  v1 = *(v0 + 16);
  *(v0 + 168) = v1;
  if (!v1)
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 48);
    v7 = FamilySettings.XPC.ShareSettingsMessage.key.getter();
    v9 = v8;
    v10 = FamilySettings.XPC.ShareSettingsMessage.altDSID.getter();
    v12 = v11;
    sub_10005D584();
    swift_allocError();
    *v13 = v7;
    v13[1] = v9;
    v13[2] = v10;
    v13[3] = v12;
    swift_willThrow();

    goto LABEL_6;
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  *(v0 + 176) = (*(v0 + 120))();
  if (v2)
  {
    v4 = *(v0 + 136);

LABEL_6:
    v16 = *(v0 + 112);
    v17 = *(v0 + 80);

    v18 = *(v0 + 8);

    return v18();
  }

  v14 = *(v0 + 56) + OBJC_IVAR___FAFamilySettingsDaemonListener_manateeCoreDataStackFactory;
  v15 = *(v14 + 8);
  *(v0 + 184) = (*v14)();
  v20 = *(v0 + 48);
  sub_100022F18(&qword_1000B8598, &qword_10008C968);
  swift_retain_n();

  *(v0 + 192) = FamilyCoreDataSharingService.__allocating_init(container:privateStore:sharedStore:manateeContainer:)();
  FamilySettings.XPC.ShareSettingsMessage.recordZone.getter();
  dispatch thunk of FamilyCoreDataSharingService.share(forRecordZoneID:)();

  v21 = *(v0 + 24);
  *(v0 + 200) = v21;
  if (!v21)
  {
    v24 = *(v0 + 136);
    v25 = *(v0 + 48);
    v26 = FamilySettings.XPC.ShareSettingsMessage.recordZone.getter();
    v28 = v27;
    sub_10005D5D8();
    swift_allocError();
    *v29 = v26;
    v29[1] = v28;
    swift_willThrow();

    goto LABEL_6;
  }

  *(v0 + 32) = v21;
  v22 = *(&async function pointer to dispatch thunk of FamilyCoreDataSharingService.share(record:to:) + 1);
  v30 = (&async function pointer to dispatch thunk of FamilyCoreDataSharingService.share(record:to:) + async function pointer to dispatch thunk of FamilyCoreDataSharingService.share(record:to:));
  v23 = swift_task_alloc();
  *(v0 + 208) = v23;
  *v23 = v0;
  v23[1] = sub_10005BB88;

  return v30(v1, v0 + 32);
}

uint64_t sub_10005BB88()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_10005BDDC;
  }

  else
  {
    v3 = sub_10005BC9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005BC9C()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[5];
  FamilySettings.XPC.ShareSettingsResponse.init()();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10005BD64()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10005BDDC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);

  v6 = *(v0 + 216);
  v7 = *(v0 + 112);
  v8 = *(v0 + 80);

  v9 = *(v0 + 8);

  return v9();
}

void *sub_10005BE90(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return &unk_10008D920;
}

void sub_10005BEF4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v81 = v5;
  v82 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v86 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for FamilySettings.Value();
  v88 = *(v85 - 8);
  v10 = *(v88 + 64);
  __chkstk_darwin(v85, v11);
  v87 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100022F18(&qword_1000B9248, &qword_10008DA58);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v83 = v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v84 = v76 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v24 = v76 - v23;
  v26 = __chkstk_darwin(v22, v25);
  v28 = v76 - v27;
  v30 = __chkstk_darwin(v26, v29);
  v32 = v76 - v31;
  __chkstk_darwin(v30, v33);
  v35 = v76 - v34;
  FamilySettings.XPC.UpdateValueMessage.key.getter();
  v89 = a1;
  FamilySettings.XPC.UpdateValueMessage.altDSID.getter();
  v36 = a2;
  v37 = v90;
  v38 = sub_10005D62C();
  if (v37)
  {
  }

  else
  {
    v39 = v38;
    v77 = v32;
    v78 = v35;
    v79 = v28;
    v76[1] = 0;
    v90 = v36;

    if (v39)
    {
      v40 = v39;
    }

    else
    {
      type metadata accessor for FamilySettingsValueEntity();
      v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v40 = [v41 initWithContext:v90];
    }

    v42 = v85;
    v43 = v77;
    FamilySettings.XPC.UpdateValueMessage.altDSID.getter();
    v44 = String._bridgeToObjectiveC()();

    [v40 setAltDSID:v44];

    FamilySettings.XPC.UpdateValueMessage.key.getter();
    v45 = String._bridgeToObjectiveC()();

    [v40 setKey:v45];

    v46 = v78;
    FamilySettings.XPC.UpdateValueMessage.value.getter();
    sub_100024C08(v46, v43, &qword_1000B9248, &qword_10008DA58);
    v47 = v88;
    v48 = *(v88 + 48);
    if (v48(v43, 1, v42) == 1)
    {
      sub_10005DDE0(v46);
      v49 = 0;
    }

    else
    {
      v85 = v48;
      v50 = v87;
      (*(v47 + 32))(v87, v43, v42);
      v51 = FamilySettings.Value.BOOLValue.getter();
      (*(v47 + 8))(v50, v42);
      sub_10005DDE0(v46);
      if (v51 == 2)
      {
        v49 = 0;
      }

      else
      {
        v49 = [objc_allocWithZone(NSNumber) initWithBool:v51 & 1];
      }

      v48 = v85;
    }

    [v40 setBoolValue:v49];

    v52 = v79;
    FamilySettings.XPC.UpdateValueMessage.value.getter();
    sub_100024C08(v52, v24, &qword_1000B9248, &qword_10008DA58);
    if (v48(v24, 1, v42) == 1)
    {
      sub_10005DDE0(v52);
      v53 = 0;
      v54 = v81;
    }

    else
    {
      v55 = v48;
      v56 = v87;
      v57 = v88;
      (*(v88 + 32))(v87, v24, v42);
      v58 = FamilySettings.Value.intValue.getter();
      v60 = v59;
      (*(v57 + 8))(v56, v42);
      sub_10005DDE0(v52);
      if (v60)
      {
        v53 = 0;
      }

      else
      {
        v53 = [objc_allocWithZone(NSNumber) initWithInteger:v58];
      }

      v54 = v81;
      v48 = v55;
    }

    [v40 setIntValue:v53];

    v61 = v84;
    FamilySettings.XPC.UpdateValueMessage.value.getter();
    v62 = v83;
    sub_100024C08(v61, v83, &qword_1000B9248, &qword_10008DA58);
    v63 = v48(v62, 1, v42);
    v64 = v87;
    if (v63 == 1)
    {
      sub_10005DDE0(v61);
      v65 = 0;
      v66 = v86;
    }

    else
    {
      v67 = v54;
      v68 = v88;
      (*(v88 + 32))(v87, v62, v42);
      v69 = v61;
      v70 = FamilySettings.Value.doubleValue.getter();
      v72 = v71;
      (*(v68 + 8))(v64, v42);
      sub_10005DDE0(v69);
      v66 = v86;
      if (v72)
      {
        v65 = 0;
      }

      else
      {
        v65 = [objc_allocWithZone(NSNumber) initWithDouble:*&v70];
      }

      v54 = v67;
    }

    [v40 setDoubleValue:v65];

    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v82 + 8))(v66, v54);
    [v40 setUpdatedAt:isa];

    v91 = 0;
    if ([v90 save:&v91])
    {
      v74 = v91;
      FamilySettings.XPC.UpdateValueResponse.init()();
    }

    else
    {
      v75 = v91;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_10005C644()
{
  v1 = sub_100022F18(&qword_1000B9240, &qword_10008DA38);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  FamilySettings.XPC.ReadValueMessage.key.getter();
  FamilySettings.XPC.ReadValueMessage.altDSID.getter();
  v4 = sub_10005D62C();
  if (v0)
  {
  }

  else
  {
    v5 = v4;

    v6 = v5;
    FamilySettings.ValueWithMetadata.init(from:)();
    FamilySettings.XPC.ReadValueResponse.init(valueWithMetadata:)();
  }
}

uint64_t sub_10005C760@<X0>(unint64_t *a1@<X8>)
{
  FamilySettings.XPC.ShareSettingsMessage.key.getter();
  FamilySettings.XPC.ShareSettingsMessage.altDSID.getter();
  v3 = sub_10005D62C();
  if (v1)
  {
  }

  else
  {
    v5 = v3;

    *a1 = v5;
  }

  return result;
}

uint64_t sub_10005C818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v59 = a4;
  v60 = a5;
  v53 = a2;
  v54 = a3;
  v61 = a6;
  v56 = sub_100022F18(&qword_1000B8C70, &qword_10008D990);
  v64 = *(v56 - 8);
  v7 = *(v64 + 64);
  __chkstk_darwin(v56, v8);
  v10 = v47 - v9;
  v11 = sub_100022F18(&qword_1000B91E8, &qword_10008D998);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = v47 - v15;
  v17 = sub_100022F18(&qword_1000B91F0, &qword_10008D9A0);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = v47 - v21;
  v23 = sub_100022F18(&qword_1000B91F8, &unk_10008D9A8);
  v24 = *(v23 - 8);
  v57 = v23;
  v58 = v24;
  v25 = *(v24 + 64);
  v27 = __chkstk_darwin(v23, v26);
  v55 = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v51 = *a1;
  v52 = v47 - v30;
  sub_100031B9C(&qword_1000B9200, &qword_1000B91E8, &qword_10008D998);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v48 = v11;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v31 = *(v12 + 8);
  v49 = v12 + 8;
  v50 = v31;
  v31(v16, v11);
  v65 = v53;
  v66 = v54;
  v54 = sub_100022F18(&qword_1000B8630, &qword_10008C9F0);
  v32 = v10;
  static PredicateExpressions.build_Arg<A>(_:)();
  v53 = sub_100031B9C(&qword_1000B9208, &qword_1000B91F0, &qword_10008D9A0);
  v47[1] = sub_100031B9C(&qword_1000B8CA0, &qword_1000B8C70, &qword_10008D990);
  sub_10003A1E0(&qword_1000B8CA8);
  v33 = v62;
  v34 = v56;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v35 = *(v64 + 8);
  v64 += 8;
  v35(v32, v34);
  v36 = *(v63 + 8);
  v63 += 8;
  v36(v22, v33);
  v37 = v48;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v50(v16, v37);
  v65 = v59;
  v66 = v60;
  static PredicateExpressions.build_Arg<A>(_:)();
  v38 = v55;
  v39 = v32;
  v40 = v62;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v35(v39, v34);
  v36(v22, v40);
  v41 = sub_100022F18(&qword_1000B9210, &qword_10008DA18);
  v42 = v61;
  v61[3] = v41;
  v42[4] = sub_10005D8EC();
  sub_10003A24C(v42);
  sub_100031B9C(&qword_1000B9238, &qword_1000B91F8, &unk_10008D9A8);
  v43 = v52;
  v44 = v57;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v45 = *(v58 + 8);
  v45(v38, v44);
  return (v45)(v43, v44);
}

uint64_t sub_10005CDFC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 updatedAt];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10005CEA0(uint64_t a1, void **a2)
{
  v4 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v13 - v7;
  sub_100024C08(a1, &v13 - v7, &qword_1000B89A8, &qword_10008CE90);
  v9 = *a2;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v8, v10);
  }

  [v9 setUpdatedAt:isa];
}

char *sub_10005CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v6 = type metadata accessor for XPCListener.InitializationOptions();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v9 = type metadata accessor for XPCPeerRequirement();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v12 = type metadata accessor for FamilySettingsDaemonListener();
  v13 = objc_allocWithZone(v12);
  sub_100022F18(&qword_1000B85A8, &qword_10008D910);
  v14 = MessageDispatcher<>.init()();
  type metadata accessor for XPCListener();
  swift_retain_n();
  static XPCPeerRequirement.hasEntitlement(_:)();

  static XPCListener.InitializationOptions.none.getter();
  v15 = XPCListener.__allocating_init(service:targetQueue:options:requirement:incomingSessionHandler:)();
  if (v4)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v15;

    *&v13[OBJC_IVAR___FAFamilySettingsDaemonListener_listener] = v16;
    *&v13[OBJC_IVAR___FAFamilySettingsDaemonListener_dispatcher] = v14;
    v17 = &v13[OBJC_IVAR___FAFamilySettingsDaemonListener_coreDataStackFactory];
    *v17 = a1;
    *(v17 + 1) = a2;
    v18 = &v13[OBJC_IVAR___FAFamilySettingsDaemonListener_manateeCoreDataStackFactory];
    v19 = v29;
    *v18 = a3;
    *(v18 + 1) = v19;
    v28.receiver = v13;
    v28.super_class = v12;

    v20 = objc_msgSendSuper2(&v28, "init", a2, v16);
    v21 = OBJC_IVAR___FAFamilySettingsDaemonListener_dispatcher;
    v22 = *&v20[OBJC_IVAR___FAFamilySettingsDaemonListener_dispatcher];
    type metadata accessor for FamilySettings.XPC.UpdateValueMessage();
    sub_10005D3F4(&qword_1000B91B0, &type metadata accessor for FamilySettings.XPC.UpdateValueMessage);
    v13 = v20;
    dispatch thunk of MessageDispatcher.registerHandler<A, B>(_:in:)();
    v23 = *&v20[v21];
    type metadata accessor for FamilySettings.XPC.ReadValueMessage();
    sub_10005D3F4(&qword_1000B91B8, &type metadata accessor for FamilySettings.XPC.ReadValueMessage);
    dispatch thunk of MessageDispatcher.registerHandler<A, B>(_:in:)();
    v24 = *&v20[v21];
    type metadata accessor for FamilySettings.XPC.ShareSettingsMessage();
    sub_10005D3F4(&qword_1000B91C0, &type metadata accessor for FamilySettings.XPC.ShareSettingsMessage);
    dispatch thunk of MessageDispatcher.registerHandler<A, B>(_:in:)();
  }

  return v13;
}

uint64_t sub_10005D3F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005D43C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100026358;

  return sub_10005B200(a1, a2);
}

uint64_t sub_10005D4EC@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for FamilySettings.XPC.ShareSettingsMessage() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_10005C760(a1);
}

unint64_t sub_10005D584()
{
  result = qword_1000B91D0;
  if (!qword_1000B91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B91D0);
  }

  return result;
}

unint64_t sub_10005D5D8()
{
  result = qword_1000B91D8;
  if (!qword_1000B91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B91D8);
  }

  return result;
}

unint64_t sub_10005D62C()
{
  v0 = sub_100022F18(&qword_1000B91E0, qword_10008D940);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  type metadata accessor for FamilySettingsValueEntity();
  v3 = static FamilySettingsValueEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  Predicate.init(_:)();
  v4 = NSPredicate.init<A>(_:)();
  [v3 setPredicate:v4];

  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10008D220;
  sub_100002B10(0, &qword_1000B8C68, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v5 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setSortDescriptors:isa];

  [v3 setFetchLimit:1];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v11)
  {

    return v5;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v9 = result;
  v10 = _CocoaArrayWrapper.endIndex.getter();
  result = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_8:
    v5 = v8;

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_10005D8EC()
{
  result = qword_1000B9218;
  if (!qword_1000B9218)
  {
    sub_100022F60(&qword_1000B9210, &qword_10008DA18);
    sub_10005D970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9218);
  }

  return result;
}

unint64_t sub_10005D970()
{
  result = qword_1000B9220;
  if (!qword_1000B9220)
  {
    sub_100022F60(&qword_1000B91F8, &unk_10008D9A8);
    sub_10005D9FC();
    sub_10003A10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9220);
  }

  return result;
}

unint64_t sub_10005D9FC()
{
  result = qword_1000B9228;
  if (!qword_1000B9228)
  {
    sub_100022F60(&qword_1000B91F0, &qword_10008D9A0);
    sub_100031B9C(&qword_1000B9230, &qword_1000B91E8, &qword_10008D998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9228);
  }

  return result;
}

uint64_t sub_10005DAAC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100026620;

  return sub_10005AA88(a1, a2);
}

uint64_t sub_10005DB9C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100026620;

  return sub_10005A400(a1, a2);
}

uint64_t sub_10005DC4C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_10005DD30(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, void))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  return a2(v2 + v5, *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10005DDE0(uint64_t a1)
{
  v2 = sub_100022F18(&qword_1000B9248, &qword_10008DA58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10005DE48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10005DE54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10005DE9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10005DEE8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005DEF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10005DF3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *FAFamilyChecklistRankingConfigCache.shared.unsafeMutableAddressor()
{
  if (qword_1000B7F30 != -1)
  {
    swift_once();
  }

  return &static FAFamilyChecklistRankingConfigCache.shared;
}

uint64_t sub_10005DFE4()
{
  type metadata accessor for FAFamilyChecklistRankingConfigCache();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static FAFamilyChecklistRankingConfigCache.shared = v0;
  return result;
}

uint64_t static FAFamilyChecklistRankingConfigCache.shared.getter()
{
  if (qword_1000B7F30 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10005E07C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v12 = 0;
  v7 = [v6 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v12];

  v8 = v12;
  if (v7)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    URL.appendingPathComponent(_:)();
    return (*(v1 + 8))(v5, v0);
  }

  else
  {
    v11 = v12;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t FAFamilyChecklistRankingConfigCache.load()()
{
  v1[6] = v0;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10005E364, v0, 0);
}

uint64_t sub_10005E364()
{
  v18 = v0;
  v1 = v0[13];
  v2 = [objc_opt_self() defaultManager];
  sub_10005E07C();
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  URL.path.getter();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = String._bridgeToObjectiveC()();

  LOBYTE(v4) = [v2 fileExistsAtPath:v7];

  if (v4)
  {
    v8 = v0[12];
    sub_10005E07C();
    v9 = v0[12];
    v10 = Data.init(contentsOf:options:)();
    v12 = v11;
    v6(v0[12], v0[10]);
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[9];

  v16 = v0[1];

  return v16(v10, v12);
}

unint64_t sub_10005E6D4()
{
  result = qword_1000B9250;
  if (!qword_1000B9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9250);
  }

  return result;
}

uint64_t FAFamilyChecklistRankingConfigCache.save(with:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for Logger();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10005E848, v2, 0);
}

uint64_t sub_10005E848()
{
  v1 = v0[14];
  sub_10005E07C();
  v2 = v0[14];
  v3 = v0[6];
  v4 = v0[7];
  Data.write(to:options:)();
  v5 = v0[12];
  v7 = v0[11];
  v8 = v0[14];
  (*(v0[13] + 8))();

  v9 = v0[1];

  return v9();
}

uint64_t FAFamilyChecklistRankingConfigCache.invalidate()()
{
  v1[3] = v0;
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10005EBA8, v0, 0);
}

uint64_t sub_10005EBA8()
{
  v1 = v0[6];
  v2 = [objc_opt_self() defaultManager];
  sub_10005E07C();
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  URL.path.getter();
  (*(v4 + 8))(v3, v5);
  v6 = String._bridgeToObjectiveC()();

  v0[2] = 0;
  v7 = [v2 removeItemAtPath:v6 error:v0 + 2];

  v8 = v0[2];
  if (v7)
  {
    v9 = v0[6];
    v10 = v8;
  }

  else
  {
    v12 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = v0[6];
  }

  v11 = v0[1];

  return v11();
}

uint64_t FAFamilyChecklistRankingConfigCache.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10005EDBC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100053474;

  return FAFamilyChecklistRankingConfigCache.load()();
}

uint64_t sub_10005EE4C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100026620;

  return FAFamilyChecklistRankingConfigCache.save(with:)(a1, a2);
}

uint64_t sub_10005EEF4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100026358;

  return FAFamilyChecklistRankingConfigCache.invalidate()();
}

unint64_t sub_10005EFBC()
{
  result = qword_1000B9320;
  if (!qword_1000B9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9320);
  }

  return result;
}

void sub_10005F010(uint64_t a1, void *a2)
{
  v61 = a1;
  v60 = sub_100022F18(&qword_1000B9350, &qword_10008DD70);
  v3 = *(v60 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v60, v5);
  v59 = &v58 - v6;
  sub_100022F18(&qword_1000B9358, &qword_10008DD78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008DD00;
  v8 = [a2 agePresetKeySTCustomRestrictionWebFilterState];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(inited + 32) = v9;
  *(inited + 40) = v11;
  [a2 webFilterAutoFilter];
  *(inited + 48) = UInt._bridgeToObjectiveC()();
  v12 = [a2 agePresetKeyAllowExplicitContent];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 56) = v13;
  *(inited + 64) = v15;
  sub_100060238();
  *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(0);
  v16 = [a2 agePresetKeyPresetOnlyImageGeneration];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(inited + 80) = v17;
  *(inited + 88) = v19;
  *(inited + 96) = NSNumber.init(BOOLeanLiteral:)(0);
  v20 = [a2 agePresetKeyAllowBookstoreErotica];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(inited + 104) = v21;
  *(inited + 112) = v23;
  *(inited + 120) = NSNumber.init(BOOLeanLiteral:)(0);
  v24 = [a2 agePresetKeyAllowExternalIntelligenceIntegrations];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(inited + 128) = v25;
  *(inited + 136) = v27;
  *(inited + 144) = NSNumber.init(BOOLeanLiteral:)(0);
  v28 = [a2 agePresetKeyAllowWritingTools];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(inited + 152) = v29;
  *(inited + 160) = v31;
  *(inited + 168) = NSNumber.init(BOOLeanLiteral:)(0);
  v32 = [a2 agePresetKeyForceAssistantProfanityFilter];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  *(inited + 176) = v33;
  *(inited + 184) = v35;
  *(inited + 192) = NSNumber.init(BOOLeanLiteral:)(1);
  v36 = [a2 agePresetKeyAllowAppRemoval];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  *(inited + 200) = v37;
  *(inited + 208) = v39;
  *(inited + 216) = NSNumber.init(BOOLeanLiteral:)(0);
  v40 = [a2 agePresetKeyRatingApps];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  *(inited + 224) = v41;
  *(inited + 232) = v43;
  *(inited + 240) = NSNumber.init(integerLiteral:)(100);
  v44 = [a2 agePresetKeyRatingMovies];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  *(inited + 248) = v45;
  *(inited + 256) = v47;
  *(inited + 264) = NSNumber.init(integerLiteral:)(100);
  v48 = [a2 agePresetKeyRatingTVShows];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  *(inited + 272) = v49;
  *(inited + 280) = v51;
  *(inited + 288) = NSNumber.init(integerLiteral:)(100);
  sub_1000242C0(inited);
  swift_setDeallocating();
  sub_100022F18(&qword_1000B9360, &unk_10008DD80);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v54 = v59;
  v53 = v60;
  (*(v3 + 16))(v59, v61, v60);
  v55 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v56 = swift_allocObject();
  (*(v3 + 32))(v56 + v55, v54, v53);
  v62[4] = sub_100060284;
  v62[5] = v56;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 1107296256;
  v62[2] = sub_10005F7E8;
  v62[3] = &unk_1000A8F90;
  v57 = _Block_copy(v62);

  [a2 saveExpressIntroductionSettingsDefaultsWithIsContentRestrictionsEnabled:1 contentRestrictionsByKey:isa isCommunicationSafetyEnabled:1 isScreenDistanceEnabled:1 isStrictPolicy:1 completionHandler:v57];
  _Block_release(v57);
}

uint64_t sub_10005F52C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v21 - v10;
  if (a1)
  {
    swift_errorRetain();
    static FamilyLogger.ageAttestation.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to apply proto account restrictions. ScreenTime error - %@", v14, 0xCu);
      sub_100060300(v15);
    }

    (*(v3 + 8))(v8, v2);
    v21 = a1;
    sub_100022F18(&qword_1000B9350, &qword_10008DD70);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    static FamilyLogger.ageAttestation.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Applied proto account restrictions through ScreenTime.", v20, 2u);
    }

    (*(v3 + 8))(v11, v2);
    v22 = 1;
    sub_100022F18(&qword_1000B9350, &qword_10008DD70);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10005F7E8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10005F9DC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10005FAB0;

  return sub_10005FDE4(v6);
}

uint64_t sub_10005FAB0(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v13 = *(v10 + 8);

  return v13();
}

id sub_10005FCA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingProtoAccountRestrictionsOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005FCF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026358;

  return sub_10005F9DC(v2, v3, v4);
}

uint64_t sub_10005FDAC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10005FDE4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10005FEA4, 0, 0);
}

uint64_t sub_10005FEA4()
{
  v1 = v0[5];
  static FamilyLogger.ageAttestation.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Applying proto account restrictions through ScreenTime settings.", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *(v9 + 16) = v8;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_100060038;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 9, 0, 0, 0xD00000000000002ELL, 0x8000000100089030, sub_100060230, v9, &type metadata for Bool);
}

uint64_t sub_100060038()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1000601C0;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100060154;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100060154()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000601C0()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3(0);
}

unint64_t sub_100060238()
{
  result = qword_1000B8E30;
  if (!qword_1000B8E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8E30);
  }

  return result;
}

uint64_t sub_100060284(uint64_t a1)
{
  v2 = *(*(sub_100022F18(&qword_1000B9350, &qword_10008DD70) - 8) + 80);

  return sub_10005F52C(a1);
}

uint64_t sub_100060300(uint64_t a1)
{
  v2 = sub_100022F18(&qword_1000B8590, &qword_10008C960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000603C4(uint64_t a1, void *a2, char a3)
{
  v6 = *(v3 + 56);
  if (v6)
  {
    v8 = [v6 persistentStoreCoordinator];
    v9 = [v8 persistentStores];

    sub_100002B10(0, &qword_1000B9498, NSPersistentStore_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v5 = v13;
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v20 = v13;
        v15 = sub_1000605D4(&v20, v3, a1, a2);
        if (v4)
        {

          return v5;
        }

        if (v15)
        {

          return v5;
        }

        ++v12;
        if (v14 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:

    sub_100063700();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = a3;
    swift_willThrow();
    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000605D4(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v76._countAndFlagsBits = a3;
  v76._object = a4;
  v77 = sub_100022F18(&qword_1000B94A0, &qword_10008DDD8);
  v6 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77, v7);
  v78 = &v69 - v8;
  v9 = sub_100022F18(&qword_1000B8290, &unk_10008C690);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12, v14);
  v79 = &v69 - v16;
  __chkstk_darwin(v15, v17);
  v80 = &v69 - v18;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v69 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v69 - v32;
  __chkstk_darwin(v31, v34);
  v82 = &v69 - v35;
  v75 = *a1;
  v36 = *(a2 + 24);
  v81._countAndFlagsBits = *(a2 + 16);
  v81._object = v36;

  v37._countAndFlagsBits = 0x6573616261746144;
  v37._object = 0xE800000000000000;
  String.append(_:)(v37);
  object = v81._object;
  countAndFlagsBits = v81._countAndFlagsBits;
  v81 = String.lowercased()();
  v39._countAndFlagsBits = 46;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x6574696C7173;
  v40._object = 0xE600000000000000;
  String.append(_:)(v40);
  v74 = v81._countAndFlagsBits;
  v41 = [objc_opt_self() defaultManager];
  v42 = [v41 URLsForDirectory:5 inDomains:1];

  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v43 + 16))
  {
    v44 = v43 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v70 = *(v20 + 16);
    v71 = v20 + 16;
    v70(v33, v44, v19);

    v45 = 1;
    URL.appendingPathComponent(_:isDirectory:)();
    v81._countAndFlagsBits = countAndFlagsBits;
    v81._object = object;
    v46._countAndFlagsBits = 46;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    String.append(_:)(v76);
    URL.appendingPathComponent(_:isDirectory:)();

    v76._object = v20;
    v47 = *(v20 + 8);
    v47(v25, v19);
    URL.appendingPathComponent(_:isDirectory:)();

    v47(v29, v19);
    v76._countAndFlagsBits = v47;
    v47(v33, v19);
    v48 = [v75 URL];
    v69 = v29;
    if (v48)
    {
      v49 = v80;
      v50 = v48;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = 0;
      v51 = v78;
    }

    else
    {
      v51 = v78;
      v49 = v80;
    }

    v53 = v76._object;
    v54 = *(v76._object + 7);
    v54(v49, v45, 1, v19);
    v55 = v79;
    v56 = v82;
    v70(v79, v82, v19);
    v54(v55, 0, 1, v19);
    v57 = v55;
    v58 = *(v77 + 48);
    sub_100063754(v49, v51);
    sub_100063754(v55, v51 + v58);
    v59 = v53;
    v60 = v49;
    v61 = v59[6];
    if (v61(v51, 1, v19) == 1)
    {
      sub_10002624C(v57, &qword_1000B8290, &unk_10008C690);
      sub_10002624C(v60, &qword_1000B8290, &unk_10008C690);
      (v76._countAndFlagsBits)(v56, v19);
      if (v61(v51 + v58, 1, v19) == 1)
      {
        sub_10002624C(v51, &qword_1000B8290, &unk_10008C690);
        LOBYTE(v43) = 1;
        return v43 & 1;
      }
    }

    else
    {
      v62 = v72;
      sub_100063754(v51, v72);
      if (v61(v51 + v58, 1, v19) != 1)
      {
        v65 = v69;
        (*(v76._object + 4))(v69, v51 + v58, v19);
        sub_1000637C4(&qword_1000B94A8);
        LOBYTE(v43) = dispatch thunk of static Equatable.== infix(_:_:)();
        v66 = v65;
        v67 = v76._countAndFlagsBits;
        (v76._countAndFlagsBits)(v66, v19);
        sub_10002624C(v79, &qword_1000B8290, &unk_10008C690);
        sub_10002624C(v80, &qword_1000B8290, &unk_10008C690);
        v67(v82, v19);
        v67(v62, v19);
        sub_10002624C(v51, &qword_1000B8290, &unk_10008C690);
        return v43 & 1;
      }

      v63 = v62;
      sub_10002624C(v79, &qword_1000B8290, &unk_10008C690);
      sub_10002624C(v80, &qword_1000B8290, &unk_10008C690);
      v64 = v76._countAndFlagsBits;
      (v76._countAndFlagsBits)(v82, v19);
      v64(v63, v19);
    }

    sub_10002624C(v51, &qword_1000B94A0, &qword_10008DDD8);
    LOBYTE(v43) = 0;
    return v43 & 1;
  }

  sub_100063700();
  swift_allocError();
  *v52 = 0;
  *(v52 + 8) = 1;
  swift_willThrow();
  return v43 & 1;
}

uint64_t sub_100061528()
{
  v1 = type metadata accessor for Logger();
  v82 = *(v1 - 8);
  v83 = v1;
  v2 = *(v82 + 64);
  v4 = __chkstk_darwin(v1, v3);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v6);
  v8 = &v74 - v7;
  v9 = sub_100022F18(&qword_1000B8290, &unk_10008C690);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v74 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v79 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v78 = &v74 - v26;
  __chkstk_darwin(v25, v27);
  v84 = &v74 - v28;
  sub_100002B10(0, &qword_1000B9488, NSBundle_ptr);
  v29 = static NSBundle.familyCircle.getter();
  v30 = *(v0 + 16);
  v31 = *(v0 + 24);
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v29 URLForResource:v32 withExtension:v33];

  if (v34)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v19 + 56))(v14, 0, 1, v18);
  }

  else
  {
    (*(v19 + 56))(v14, 1, 1, v18);
  }

  sub_1000261DC(v14, v17);
  v35 = (*(v19 + 48))(v17, 1, v18);
  v36 = v84;
  v37 = v78;
  if (v35 == 1)
  {
    sub_10002624C(v17, &qword_1000B8290, &unk_10008C690);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v84, v17, v18);
    static FamilyLogger.daemon.getter();
    v38 = *(v19 + 16);
    v38(v37, v36, v18);
    v77 = v8;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v41 = os_log_type_enabled(v39, v40);
    v80 = v19;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v76 = v38;
      v43 = v42;
      v44 = swift_slowAlloc();
      v85 = v44;
      *v43 = 136315138;
      sub_1000637C4(&qword_1000B9490);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v37;
      v47 = v45;
      v49 = v48;
      v78 = *(v19 + 8);
      (v78)(v46, v18);
      v50 = sub_1000373D4(v47, v49, &v85);

      *(v43 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v39, v40, "The modelURL is : %s", v43, 0xCu);
      sub_100024F7C(v44);
      v36 = v84;

      v38 = v76;
    }

    else
    {

      v78 = *(v19 + 8);
      (v78)(v37, v18);
    }

    v51 = *(v82 + 8);
    v51(v77, v83);
    v52 = v18;
    v53 = v79;
    v54 = objc_allocWithZone(NSManagedObjectModel);
    URL._bridgeToObjectiveC()(v55);
    v57 = v56;
    v58 = [v54 initWithContentsOfURL:v56];

    v59 = v81;
    if (v58)
    {
      v79 = v51;
      static FamilyLogger.daemon.getter();
      v38(v53, v36, v52);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v85 = v63;
        *v62 = 136315138;
        v64 = URL.absoluteString.getter();
        v75 = v52;
        v65 = v53;
        v67 = v66;
        v68 = v52;
        v69 = v78;
        (v78)(v65, v68);
        v70 = sub_1000373D4(v64, v67, &v85);

        *(v62 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v60, v61, "Successfully loaded Core Data model at path %s", v62, 0xCu);
        sub_100024F7C(v63);

        (v79)(v81, v83);
        v69(v84, v75);
      }

      else
      {

        v72 = v78;
        (v78)(v53, v52);
        (v79)(v59, v83);
        v72(v36, v52);
      }
    }

    else
    {
      sub_100063700();
      swift_allocError();
      *v71 = 0;
      *(v71 + 8) = 3;
      swift_willThrow();
      (v78)(v36, v52);
    }

    return v58;
  }

  return result;
}

uint64_t sub_100061CAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v87 = a6;
  v85 = a5;
  v83 = a4;
  v89 = type metadata accessor for Logger();
  v86 = *(v89 - 8);
  v9 = *(v86 + 64);
  v11 = __chkstk_darwin(v89, v10);
  v88 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v16 = v78 - v15;
  __chkstk_darwin(v14, v17);
  v19 = v78 - v18;
  v20 = type metadata accessor for URL();
  v81 = *(v20 - 8);
  v82 = v20;
  v21 = *(v81 + 64);
  __chkstk_darwin(v20, v22);
  v24 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90._countAndFlagsBits = a2;
  v90._object = a3;

  v25._countAndFlagsBits = 0x6573616261746144;
  v25._object = 0xE800000000000000;
  String.append(_:)(v25);
  countAndFlagsBits = v90._countAndFlagsBits;
  object = v90._object;
  v90 = String.lowercased()();
  v28._countAndFlagsBits = 46;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x6574696C7173;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  v30 = object;
  v31 = v90._object;
  v84 = a1;
  v32 = v91;
  sub_100060D70(a1, countAndFlagsBits, v30, v90._countAndFlagsBits, v90._object);
  if (v32)
  {

    return v16;
  }

  v78[1] = v31;
  v78[2] = v30;
  v78[3] = a2;
  v78[4] = a3;
  v79 = v19;
  v80 = v16;
  v33 = objc_allocWithZone(NSPersistentStoreDescription);
  URL._bridgeToObjectiveC()(v34);
  v36 = v35;
  v16 = [v33 initWithURL:v35];

  (*(v81 + 8))(v24, v82);
  [v16 setType:NSSQLiteStoreType];
  [v16 setShouldInferMappingModelAutomatically:1];
  [v16 setShouldMigrateStoreAutomatically:1];
  [v16 setTimeout:10.0];
  v37 = v84;
  if (v84 == 2)
  {
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    [v16 setOption:isa forKey:NSPersistentHistoryTrackingKey];

    v39 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    [v16 setOption:v39 forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];
  }

  v40 = objc_allocWithZone(NSPersistentCloudKitContainerOptions);
  v41 = String._bridgeToObjectiveC()();
  v42 = [v40 initWithContainerIdentifier:v41];

  v91 = v42;
  [v42 setDatabaseScope:v37];
  v90._countAndFlagsBits = 0xD000000000000025;
  v90._object = 0x80000001000891A0;
  v43 = String.lowercased()();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 46;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  v45 = v86;
  if (v37 == 1)
  {
    v47 = 0xE600000000000000;
    v48 = 0x63696C627570;
    v46 = v79;
    goto LABEL_11;
  }

  v46 = v79;
  if (v37 == 3)
  {
    v47 = 0xE600000000000000;
    v48 = 0x646572616873;
LABEL_11:
    v85 = 0;

    v49._countAndFlagsBits = v48;
    v49._object = v47;
    String.append(_:)(v49);

    v51 = v90._countAndFlagsBits;
    v50 = v90._object;
    static FamilyLogger.common.getter();

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v46;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v90._countAndFlagsBits = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_1000373D4(v51, v50, &v90._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v52, v53, "Setting up CK APS connection %s", v55, 0xCu);
      sub_100024F7C(v56);

      v57 = v54;
      v58 = *(v45 + 8);
    }

    else
    {

      v58 = *(v45 + 8);
      v57 = v46;
    }

    v59 = v89;
    v58(v57, v89);
    v60 = v88;
    v61 = v87;
    v62 = String._bridgeToObjectiveC()();

    [v91 setApsConnectionMachServiceName:v62];

    v63 = v80;
    static FamilyLogger.common.getter();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 67109120;
      *(v66 + 4) = v61 & 1;
      _os_log_impl(&_mh_execute_header, v64, v65, "Setting useDeviceToDeviceEncryption to: %{BOOL}d", v66, 8u);
      v63 = v80;
    }

    v58(v63, v59);
    if (v61)
    {
      v67 = v91;
      [v91 setUseDeviceToDeviceEncryption:1];
      v68 = [objc_allocWithZone(CKContainerOptions) init];
      v69 = String._bridgeToObjectiveC()();
      [v68 setEncryptionServiceName:v69];

      [v68 setUseZoneWidePCS:1];
      [v67 setContainerOptions:v68];
      static FamilyLogger.common.getter();
      v70 = v68;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        *(v73 + 4) = v70;
        *v74 = v70;
        v75 = v70;
        _os_log_impl(&_mh_execute_header, v71, v72, "Setting cloudKit container options to: %@", v73, 0xCu);
        sub_10002624C(v74, &qword_1000B8590, &qword_10008C960);
        v60 = v88;

        v59 = v89;
      }

      else
      {
        v75 = v71;
        v71 = v70;
      }

      v58(v60, v59);
    }

    v76 = v91;
    [v16 setCloudKitContainerOptions:v91];

    return v16;
  }

  if (v37 == 2)
  {
    v47 = 0xE700000000000000;
    v48 = 0x65746176697270;
    goto LABEL_11;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100062564(uint64_t a1)
{
  v3 = v1;
  v51 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v44 - v12;
  static FamilyLogger.daemon.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v48 = v5;
  v49 = v10;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1000373D4(*(v3 + 16), *(v3 + 24), aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "Initializing on-disk Core Data database %s", v17, 0xCu);
    sub_100024F7C(v18);
  }

  v19 = *(v5 + 8);
  v19(v13, v4);
  v20 = v3;
  v21 = sub_100061528();
  if (!v2)
  {
    v22 = v21;
    v46 = 0;
    v23 = *(v3 + 16);
    v24 = *(v3 + 24);
    v25 = objc_allocWithZone(NSPersistentCloudKitContainer);
    v26 = v22;
    v27 = String._bridgeToObjectiveC()();
    v28 = [v25 initWithName:v27 managedObjectModel:v26];

    v47 = v26;
    v29 = v49;
    static FamilyLogger.daemon.getter();
    v30 = v51;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v33 = 136315138;
      sub_100002B10(0, &qword_1000B9478, NSPersistentStoreDescription_ptr);
      v34 = Array.description.getter();
      v36 = sub_1000373D4(v34, v35, aBlock);

      *(v33 + 4) = v36;
      v30 = v51;
      _os_log_impl(&_mh_execute_header, v31, v32, "Loading stores %s", v33, 0xCu);
      sub_100024F7C(v45);

      v37 = v49;
    }

    else
    {

      v37 = v29;
    }

    v19(v37, v4);
    sub_100002B10(0, &qword_1000B9478, NSPersistentStoreDescription_ptr);
    v20 = v28;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v20 setPersistentStoreDescriptions:isa];

    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v30;
    v40[4] = v3;
    aBlock[4] = sub_1000636E4;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100063418;
    aBlock[3] = &unk_1000A9008;
    v41 = _Block_copy(aBlock);

    [v20 loadPersistentStoresWithCompletionHandler:v41];
    _Block_release(v41);
    swift_beginAccess();
    if (*(v39 + 16))
    {
      v42 = *(v39 + 16);
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
    }
  }

  return v20;
}

uint64_t sub_100062A70(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v89 = a5;
  v92 = type metadata accessor for Logger();
  v91 = *(v92 - 8);
  v8 = *(v91 + 64);
  __chkstk_darwin(v92, v9);
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for URLResourceValues();
  v93 = *(v94 - 8);
  v11 = *(v93 + 64);
  __chkstk_darwin(v94, v12);
  v96 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100022F18(&qword_1000B8290, &unk_10008C690);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v17, v20);
  v104 = &v87 - v22;
  __chkstk_darwin(v21, v23);
  v25 = &v87 - v24;
  v26 = type metadata accessor for URL();
  v105 = *(v26 - 8);
  v106 = v26;
  v27 = *(v105 + 64);
  v29 = __chkstk_darwin(v26, v28);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v29, v32);
  v97 = &v87 - v34;
  __chkstk_darwin(v33, v35);
  v103 = &v87 - v36;
  v95 = v31;
  if (a2)
  {
    swift_beginAccess();
    v37 = a3[2];
    a3[2] = a2;
    swift_errorRetain();
  }

  if (a4 >> 62)
  {
    goto LABEL_43;
  }

  v38 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v88 = a3;
  if (v38)
  {
    v39 = 0;
    v101 = a4 & 0xFFFFFFFFFFFFFF8;
    v102 = a4 & 0xC000000000000001;
    v99 = (v105 + 56);
    a3 = (v105 + 48);
    v40 = &_swiftEmptyArrayStorage;
    v98 = (v105 + 32);
    v100 = v38;
    while (1)
    {
      if (v102)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v43 = (v39 + 1);
        if (__OFADD__(v39, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v39 >= *(v101 + 16))
        {
          goto LABEL_41;
        }

        v42 = *(a4 + 8 * v39 + 32);
        v43 = (v39 + 1);
        if (__OFADD__(v39, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v38 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_5;
        }
      }

      v44 = v40;
      v45 = v42;
      v46 = [v45 URL];
      if (v46)
      {
        v47 = v46;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = 0;
      }

      else
      {
        v48 = 1;
      }

      v49 = v19;
      v50 = v19;
      v51 = v106;
      (*v99)(v49, v48, 1, v106);
      v52 = v50;
      v53 = v50;
      v54 = v104;
      sub_1000261DC(v53, v104);
      sub_1000261DC(v54, v25);

      if ((*a3)(v25, 1, v51) == 1)
      {
        sub_10002624C(v25, &qword_1000B8290, &unk_10008C690);
        v40 = v44;
        v19 = v52;
        v41 = v100;
      }

      else
      {
        v55 = *v98;
        (*v98)(v103, v25, v51);
        v56 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_1000643D4(0, v44[2] + 1, 1, v44);
        }

        v19 = v52;
        v58 = v56[2];
        v57 = v56[3];
        v59 = v56;
        v41 = v100;
        if (v58 >= v57 >> 1)
        {
          v59 = sub_1000643D4(v57 > 1, v58 + 1, 1, v56);
        }

        *(v59 + 16) = v58 + 1;
        v40 = v59;
        v55((v59 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v58), v103, v106);
      }

      ++v39;
      if (v43 == v41)
      {
        goto LABEL_25;
      }
    }
  }

  v40 = &_swiftEmptyArrayStorage;
LABEL_25:
  v60 = v97;
  a4 = v106;
  v104 = v40[2];
  if (v104)
  {
    v25 = 0;
    v19 = 0;
    v100 = NSURLFileProtectionKey;
    v103 = (v105 + 8);
    v101 = v93 + 8;
    v102 = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (v25 < v40[2])
    {
      v61 = v40;
      v62 = *(v105 + 16);
      v62(v60, v40 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v25, a4);
      v63 = [objc_opt_self() defaultManager];
      URL.path(percentEncoded:)(1);
      v64 = String._bridgeToObjectiveC()();

      v65 = [v63 fileExistsAtPath:v64];

      if (v65)
      {
        v62(v95, v60, a4);
        URLResourceValues.init()();
        URLResourceValues.isExcludedFromBackup.setter();
        URL.setResourceValues(_:)();
        URL._bridgeToObjectiveC()(v66);
        v68 = v67;
        if (qword_1000B7F38 != -1)
        {
          swift_once();
        }

        v108[0] = 0;
        v69 = [v68 setResourceValue:qword_1000BC028 forKey:v100 error:v108];

        if (!v69)
        {
          v73 = v108[0];
          v74 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v75 = v95;
          sub_100063700();
          v76 = swift_allocError();
          *v77 = v74;
          *(v77 + 8) = 0;
          swift_willThrow();
          (*v101)(v96, v94);
          v78 = *v103;
          (*v103)(v75, a4);
          (v78)(v97, a4);

          v79 = v88;
          swift_beginAccess();
          v80 = v79[2];
          v79[2] = v76;
          swift_errorRetain();

          v81 = v90;
          static FamilyLogger.daemon.getter();
          v82 = v89;

          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v107 = v86;
            *v85 = 136315138;
            *(v85 + 4) = sub_1000373D4(*(v82 + 16), *(v82 + 24), &v107);
            _os_log_impl(&_mh_execute_header, v83, v84, "Done initializing %s CloudKit database", v85, 0xCu);
            sub_100024F7C(v86);
          }

          else
          {
          }

          return (*(v91 + 8))(v81, v92);
        }

        v70 = *v101;
        v71 = v108[0];
        v70(v96, v94);
        a3 = *v103;
        (*v103)(v95, a4);
      }

      else
      {
        a3 = *v103;
      }

      ++v25;
      v60 = v97;
      (a3)(v97, a4);
      v40 = v61;
      if (v104 == v25)
      {
      }
    }

    goto LABEL_42;
  }
}

void sub_100063418(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_1000634A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10008D210;
  v12 = sub_100061CAC(2, a1, a2, a3, a4, a5);
  if (v5)
  {
    *(v11 + 16) = 0;
  }

  else
  {
    *(v11 + 32) = v12;
    v13 = a5 & 1;
    *(v11 + 40) = sub_100061CAC(3, a1, a2, a3, a4, a5 & 1);
    type metadata accessor for CoreDataStack();
    a5 = swift_allocObject();
    *(a5 + 56) = 0;
    *(a5 + 16) = a1;
    *(a5 + 24) = a2;
    *(a5 + 32) = a3;
    *(a5 + 40) = a4;
    *(a5 + 48) = v13;
    v15 = sub_100062564(v11);

    v16 = *(a5 + 56);
    *(a5 + 56) = v15;
  }

  return a5;
}

uint64_t sub_10006362C(uint64_t a1, uint64_t *a2)
{
  sub_100022F18(&qword_1000B94B0, &qword_10008DDF0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *a2 = result;
  return result;
}

uint64_t sub_100063678()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_100063700()
{
  result = qword_1000B9480;
  if (!qword_1000B9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9480);
  }

  return result;
}

uint64_t sub_100063754(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022F18(&qword_1000B8290, &unk_10008C690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000637C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100063808(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10006381C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_100063878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreDataStack.ErrorType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreDataStack.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100063A34()
{
  result = qword_1000B94B8;
  if (!qword_1000B94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B94B8);
  }

  return result;
}

id sub_100063A88()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9[3] = sub_100022F18(&unk_1000B94C0, &unk_10008E420);
  v9[0] = v2;
  sub_100063C28(v9, v10);
  sub_100024F7C(v9);
  if (!v11)
  {
    sub_1000272A4(v10);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_100023D48(_swiftEmptyArrayStorage);
  }

  v3 = [v0 domain];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = [v0 code];
  v5 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithDomain:v3 code:v4 userInfo:isa];

  return v7;
}