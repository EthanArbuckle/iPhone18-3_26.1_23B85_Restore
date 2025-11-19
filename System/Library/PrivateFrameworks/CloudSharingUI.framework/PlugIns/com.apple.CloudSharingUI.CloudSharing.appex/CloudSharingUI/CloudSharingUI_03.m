uint64_t sub_100052594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneTimeLinkListView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000525F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for OneTimeLinkListView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100051AC8(a1, v6, a2);
}

unint64_t sub_100052678()
{
  result = qword_100117E28;
  if (!qword_100117E28)
  {
    type metadata accessor for OneTimeLinkRowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117E28);
  }

  return result;
}

uint64_t sub_1000526D0()
{
  v1 = type metadata accessor for OneTimeLinkListView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C62E4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v5 + *(v1 + 20));

  v10 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_100052804()
{
  v2 = *(type metadata accessor for OneTimeLinkListView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100011080;

  return sub_100051C84(v0 + v3, v4);
}

uint64_t sub_100052928(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052998()
{
  sub_100010624(&qword_100117DE8, &qword_1000CFDB8);
  sub_10001E490(&qword_100117E18, &qword_100117DE8, &qword_1000CFDB8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100052A30()
{
  v0 = sub_100059520();
  v1 = (v0 + OBJC_IVAR___CloudSharingViewController_ckClientFolderSubitemName);
  v2 = *(v0 + OBJC_IVAR___CloudSharingViewController_ckClientFolderSubitemName + 8);
  if (v2 || (v1 = (v0 + OBJC_IVAR___CloudSharingViewController_ckClientRootFolderName), (v2 = *(v0 + OBJC_IVAR___CloudSharingViewController_ckClientRootFolderName + 8)) != 0))
  {
    v3 = *v1;

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName);
    v2 = *(v0 + OBJC_IVAR___CloudSharingViewController_explicitOrURLName + 8);

    result = swift_unknownObjectRelease();
    if (!v2)
    {
      return result;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v7 == v3 && v8 == v2)
  {
  }

  else
  {
    v5 = sub_1000C73A4();

    if (v5)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_1000C60A4();
    }
  }
}

uint64_t sub_100052BD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100052C58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100052CE0()
{
  v1 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v5 = sub_1000C5D84();
  v6 = 1;
  v7 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_100010F24(v4, &qword_100116260, &qword_1000CD940);
  if (v7 == 1)
  {
    v8 = *(v0 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v9 = v15;
    if (v15)
    {
      v10 = sub_1000C6D44();
      v11 = NSSelectorFromString(v10);

      if ([v9 respondsToSelector:v11] && objc_msgSend(v9, "br_isCloudDocsShare"))
      {

        return 1;
      }

      v12 = sub_10005A104();

      if (v12 == 9)
      {
        return 1;
      }
    }

    return 0;
  }

  return v6;
}

uint64_t sub_100052EEC(char a1)
{
  *(v2 + 168) = v1;
  *(v2 + 106) = a1;
  v3 = *(*(sub_10000FEB8(&qword_100116C80, &unk_1000CE870) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v4 = type metadata accessor for AlertViewModelButton(0);
  *(v2 + 192) = v4;
  v5 = *(v4 - 8);
  *(v2 + 200) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v7 = sub_1000C5F74();
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
  v10 = *(*(sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50) - 8) + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = sub_1000C6F14();
  *(v2 + 312) = sub_1000C6F04();
  v12 = sub_1000C6ED4();
  *(v2 + 320) = v12;
  *(v2 + 328) = v11;

  return _swift_task_switch(sub_100053114, v12, v11);
}

uint64_t sub_100053114()
{
  v1 = *(v0 + 168);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v0 + 57) & 1) != 0 || (v2 = *(v0 + 168), swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v0 + 58) - 2 > 3))
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
    sub_1000C6F24();
    v6 = sub_1000C6F44();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);

    v7 = sub_1000C6F04();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    v9 = sub_1000B82F8(0, 0, v4, &unk_1000D1038, v8);
    *(v0 + 336) = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 0;

    sub_1000C60A4();
    v10 = async function pointer to Task.value.getter[1];
    v11 = swift_task_alloc();
    *(v0 + 344) = v11;
    v12 = sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    *(v0 + 352) = v12;
    *v11 = v0;
    v11[1] = sub_100053464;

    return Task.value.getter(v12, v9, &type metadata for () + 8, v12, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100053464()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = sub_1000536F8;
  }

  else
  {
    v7 = sub_1000535A0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000535A0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 168);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 105) = 2;

  sub_1000C60A4();

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

uint64_t sub_1000536F8()
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

    sub_1000C60A4();
    sub_1000C5F54();
    sub_1000199B8(v4, v3, v5, v6, v7, v264);
    v8 = v3;
    v9 = sub_1000C5F64();
    v10 = sub_1000C6FD4();
    v256 = v5;
    v11 = v5;
    v12 = v6;
    v13 = v6;
    v14 = v264;
    sub_1000494BC(v4, v8, v11, v13, v7, v264);
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
      sub_1000199B8(v4, v18, v256, v12, v7, v264);
      v21 = sub_1000C6D94();
      v23 = sub_100071844(v21, v22, &v267);
      v24 = v12;

      *(v19 + 4) = v23;
      v14 = v264;
      _os_log_impl(&_mh_execute_header, loga, v245, "saveShareAndReportErrors error: %s", v19, 0xCu);
      sub_100010544(v20);

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

      sub_1000199B8(v4, v18, v256, v24, v261, 4u);
      v31 = v256;
      v32 = v18;
      sub_1000230E4(22);
      v34 = v33;

      if (v34)
      {
        v246 = v24;
        v35 = *(v0 + 360);
        v36 = *(v0 + 280);

        sub_1000C5F54();
        v37 = sub_1000C5F64();
        v38 = sub_1000C6FD4();
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
          v44[1] = sub_100054E5C;
          v45 = *(v0 + 168);

          return sub_100052EEC(0);
        }

        v128 = *(v0 + 312);

        v24 = v246;
        v30 = v256;
        v49 = v32;
        LOBYTE(v14) = v264;
        goto LABEL_16;
      }

      v63 = v31;
      sub_1000230E4(14);
      v65 = v64;

      if (v65)
      {
        v247 = v24;
        v66 = *(v0 + 272);
        sub_1000C5F54();
        v67 = sub_1000C5F64();
        v68 = sub_1000C6FD4();
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

        v77 = sub_1000C6CE4();
        v78 = sub_1000C6D84();
        if (*(v77 + 16))
        {
          v80 = sub_100071DEC(v78, v79);
          v82 = v81;

          v83 = v32;
          if (v82)
          {
            sub_100038D8C(*(v77 + 56) + 32 * v80, v0 + 112);

            sub_100010778(0, &qword_100116320, CKShare_ptr);
            if (swift_dynamicCast())
            {
              v84 = *(v0 + 264);
              sub_1000494BC(v4, v32, v256, v247, v261, 4u);
              v85 = *(v0 + 152);
              sub_1000C5F54();
              v86 = v85;
              v87 = sub_1000C5F64();
              v88 = sub_1000C6FC4();

              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                v90 = swift_slowAlloc();
                *v89 = 138412290;
                *(v89 + 4) = v86;
                *v90 = v86;
                v91 = v86;
                _os_log_impl(&_mh_execute_header, v87, v88, "saveShareAndReportErrors oplock error server's updated share: %@", v89, 0xCu);
                sub_100010F24(v90, &qword_100117080, &unk_1000CC350);
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

              sub_1000C60A4();
              sub_1000C65D4();
              LOWORD(v232._object) = 256;
              v98 = sub_1000C68C4();
              v100 = v99;
              v102 = v101;
              v104 = v103;
              v105 = v94[6];
              v106 = sub_1000C61F4();
              (*(*(v106 - 8) + 56))(v93 + v105, 1, 1, v106);
              v107 = swift_allocObject();
              swift_weakInit();
              sub_1000C5DB4();
              v108 = v93 + v94[5];
              *v108 = v98;
              *(v108 + 8) = v100;
              *(v108 + 16) = v102 & 1;
              *(v108 + 24) = v104;
              v109 = (v93 + v94[7]);
              *v109 = sub_10007B4F4;
              v109[1] = v107;
              v110 = objc_opt_self();
              v111 = [v110 mainBundle];
              v232._countAndFlagsBits = 0x80000001000DADE0;
              v270._countAndFlagsBits = 0x1000000000000019;
              v270._object = 0x80000001000DADC0;
              v275.value._countAndFlagsBits = 0;
              v275.value._object = 0;
              v112.super.isa = v111;
              v280._countAndFlagsBits = 0;
              v280._object = 0xE000000000000000;
              v113 = sub_1000C5B74(v270, v275, v112, v280, v232);
              v115 = v114;

              v116 = v93;
              v117 = [v110 mainBundle];
              v233._countAndFlagsBits = 0x80000001000DAE30;
              v271._object = 0x80000001000DAE10;
              v271._countAndFlagsBits = 0xD000000000000011;
              v276.value._countAndFlagsBits = 0;
              v276.value._object = 0;
              v118.super.isa = v117;
              v281._countAndFlagsBits = 0;
              v281._object = 0xE000000000000000;
              v119 = sub_1000C5B74(v271, v276, v118, v281, v233);
              v121 = v120;

              sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
              v122 = *(v235 + 72);
              v123 = (*(v235 + 80) + 32) & ~*(v235 + 80);
              v124 = swift_allocObject();
              *(v124 + 16) = xmmword_1000CB170;
              sub_100049224(v116, v124 + v123);
              sub_1000C5DB4();
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
              sub_100017574(v236, v248, &qword_100116C80, &unk_1000CE870);

              sub_1000C60A4();
              sub_100010F24(v236, &qword_100116C80, &unk_1000CE870);
              swift_getKeyPath();
              swift_getKeyPath();
              *(v242 + 63) = 1;

              sub_1000C60A4();

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
        sub_1000C5F54();
        v224 = sub_1000C5F64();
        v225 = sub_1000C6FC4();
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
        sub_1000100B0();
        swift_allocError();
        *v231 = v4;
        *(v231 + 8) = v83;
        *(v231 + 16) = v256;
        *(v231 + 24) = v247;
        *(v231 + 32) = v261;
        *(v231 + 40) = 4;
        swift_willThrow();
        sub_1000199B8(v4, v83, v256, v247, v261, 4u);

        v0 = v242;

        sub_1000494BC(v4, v83, v256, v247, v261, 4u);
        goto LABEL_17;
      }

      v129 = *(v0 + 360);
      v130 = *(v0 + 312);

      v131 = v63;
      sub_10002335C(2011);
      LOBYTE(v129) = v132;

      if (v129)
      {
        v255 = v131;
        v133 = *(v0 + 248);
        sub_1000494BC(v4, v32, v256, v24, v261, 4u);
        sub_1000C5F54();
        v134 = sub_1000C5F64();
        v135 = sub_1000C6FC4();
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
        sub_1000C65D4();
        LOWORD(v232._object) = 256;
        v144 = sub_1000C68C4();
        v146 = v145;
        LOBYTE(v139) = v147;
        v149 = v148;
        v150 = v141[6];
        v151 = sub_1000C61F4();
        (*(*(v151 - 8) + 56))(v140 + v150, 1, 1, v151);
        v152 = swift_allocObject();
        swift_weakInit();
        sub_1000C5DB4();
        v153 = v140 + v141[5];
        *v153 = v144;
        *(v153 + 8) = v146;
        *(v153 + 16) = v139 & 1;
        *(v153 + 24) = v149;
        v154 = (v140 + v141[7]);
        *v154 = sub_10007B4EC;
        v154[1] = v152;
        v155 = [objc_opt_self() mainBundle];
        v232._countAndFlagsBits = 0x80000001000DAD70;
        v272._countAndFlagsBits = 0x6E67695320746F4ELL;
        v272._object = 0xED00006E49206465;
        v277.value._countAndFlagsBits = 0;
        v277.value._object = 0;
        v156.super.isa = v155;
        v282._countAndFlagsBits = 0;
        v282._object = 0xE000000000000000;
        v157 = sub_1000C5B74(v272, v277, v156, v282, v232);
        v159 = v158;

        v160 = sub_100079048();
        v161 = sub_10003CC40(v160);
        v163 = v162;

        sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
        v164 = *(v243 + 72);
        v165 = (*(v243 + 80) + 32) & ~*(v243 + 80);
        v166 = swift_allocObject();
        *(v166 + 16) = xmmword_1000CB170;
        v167 = v166 + v165;
        v116 = v140;
        sub_100049224(v140, v167);
        sub_1000C5DB4();
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
        sub_100017574(v142, v249, &qword_100116C80, &unk_1000CE870);

        sub_1000C60A4();
        sub_100010F24(v142, &qword_100116C80, &unk_1000CE870);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 62) = 1;

LABEL_39:
        sub_1000C60A4();

LABEL_40:

        sub_1000492E0(v116);
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
      sub_10002335C(2045);
      v173 = v172;

      if (v173)
      {
        v255 = v171;
        v174 = *(v0 + 240);
        sub_1000494BC(v4, v32, v256, v24, v261, 4u);
        sub_1000C5F54();
        v175 = sub_1000C5F64();
        v176 = sub_1000C6FC4();
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
        sub_1000C65D4();
        LOWORD(v232._object) = 256;
        v183 = sub_1000C68C4();
        v185 = v184;
        LOBYTE(v180) = v186;
        v188 = v187;
        v189 = v182[6];
        v190 = sub_1000C61F4();
        (*(*(v190 - 8) + 56))(v181 + v189, 1, 1, v190);
        v191 = swift_allocObject();
        swift_weakInit();
        sub_1000C5DB4();
        v192 = v181 + v182[5];
        *v192 = v183;
        *(v192 + 8) = v185;
        *(v192 + 16) = v180 & 1;
        *(v192 + 24) = v188;
        v193 = (v181 + v182[7]);
        *v193 = sub_10007B974;
        v193[1] = v191;
        v194 = objc_opt_self();
        v195 = [v194 mainBundle];
        v232._countAndFlagsBits = 0x80000001000DAC40;
        v273._object = 0x80000001000DAC20;
        v273._countAndFlagsBits = 0x1000000000000017;
        v278.value._countAndFlagsBits = 0;
        v278.value._object = 0;
        v196.super.isa = v195;
        v283._countAndFlagsBits = 0;
        v283._object = 0xE000000000000000;
        v197 = sub_1000C5B74(v273, v278, v196, v283, v232);
        v199 = v198;

        v200 = [v194 mainBundle];
        v234._countAndFlagsBits = 0x80000001000DAD00;
        v274._countAndFlagsBits = 0xD000000000000041;
        v274._object = 0x80000001000DACB0;
        v279.value._countAndFlagsBits = 0;
        v279.value._object = 0;
        v201.super.isa = v200;
        v284._countAndFlagsBits = 0;
        v284._object = 0xE000000000000000;
        v202 = sub_1000C5B74(v274, v279, v201, v284, v234);
        v204 = v203;

        sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
        isa = logb[9].isa;
        v206 = (LOBYTE(logb[10].isa) + 32) & ~LOBYTE(logb[10].isa);
        v207 = swift_allocObject();
        *(v207 + 16) = xmmword_1000CB170;
        v208 = v207 + v206;
        v116 = v181;
        sub_100049224(v181, v208);
        sub_1000C5DB4();
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
        sub_100017574(v244, v250, &qword_100116C80, &unk_1000CE870);

        sub_1000C60A4();
        sub_100010F24(v244, &qword_100116C80, &unk_1000CE870);
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
    sub_1000100B0();
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

uint64_t sub_100054E5C()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = sub_1000550E8;
  }

  else
  {
    v7 = sub_100054F98;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100054F98()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  v6 = v0[42];
  v7 = v0[39];

  sub_1000494BC(v5, v4, v3, v1, v2, 4u);
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

uint64_t sub_1000550E8()
{
  v1 = v0[39];
  v2 = v0[29];

  sub_1000C5F54();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FD4();
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

  sub_1000494BC(v30, v10, v9, v32, v7, 4u);
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

void sub_10005539C(void *a1)
{
  v4 = sub_1000C5F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v10 = v20;
  if (v20)
  {
    sub_1000C5F54();
    v11 = a1;
    v12 = sub_1000C5F64();
    v13 = sub_1000C6FF4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[1] = v2;
      v16 = v15;
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "removingParticipantFromShare: %@", v14, 0xCu);
      sub_100010F24(v16, &qword_100117080, &unk_1000CC350);
    }

    (*(v5 + 8))(v8, v4);
    [v10 removeParticipant:v11];
  }

  else
  {
    sub_1000100B0();
    swift_allocError();
    *v18 = 0xD00000000000001DLL;
    *(v18 + 8) = 0x80000001000DB5E0;
    *(v18 + 16) = xmmword_1000CFEE0;
    *(v18 + 32) = 0x80000001000DB600;
    *(v18 + 40) = 11;
    swift_willThrow();
  }
}

uint64_t sub_100055638(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v3 = sub_10000FEB8(&qword_100116790, &qword_1000D0610);
  v2[95] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v5 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v6 = sub_1000C5D84();
  v2[106] = v6;
  v7 = *(v6 - 8);
  v2[107] = v7;
  v8 = *(v7 + 64) + 15;
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v9 = sub_1000C5F74();
  v2[111] = v9;
  v10 = *(v9 - 8);
  v2[112] = v10;
  v11 = *(v10 + 64) + 15;
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  sub_1000C6F14();
  v2[118] = sub_1000C6F04();
  v13 = sub_1000C6ED4();
  v2[119] = v13;
  v2[120] = v12;

  return _swift_task_switch(sub_1000558AC, v13, v12);
}

uint64_t sub_1000558AC()
{
  v96 = v0;
  v1 = *(v0 + 936);
  sub_1000C5F54();
  v2 = sub_1000C5F64();
  v3 = sub_1000C6FB4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 936);
  v6 = *(v0 + 896);
  v7 = *(v0 + 888);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v95 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, &v95);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Start", v8, 0xCu);
    sub_100010544(v9);
  }

  v10 = *(v6 + 8);
  v10(v5, v7);
  *(v0 + 968) = v10;
  v11 = *(v0 + 752);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v0 + 1012) & 0xFE) != 8)
  {
    v12 = *(v0 + 752);
    v13 = *(v12 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v14 = *(v0 + 696);
    if (v14)
    {
      v15 = [*(v0 + 696) URL];
      if (v15)
      {
        v16 = v15;
        v93 = v14;
        v17 = *(v0 + 944);
        v18 = *(v0 + 928);
        v19 = *(v0 + 880);
        v20 = *(v0 + 872);
        v21 = *(v0 + 856);
        v22 = *(v0 + 848);

        sub_1000C5D44();

        sub_1000C5F54();
        v90 = *(v21 + 16);
        v90(v20, v19, v22);
        v23 = sub_1000C5F64();
        v24 = sub_1000C6FB4();
        v25 = os_log_type_enabled(v23, v24);
        v26 = *(v0 + 928);
        v85 = *(v0 + 896);
        v27 = *(v0 + 888);
        v28 = *(v0 + 872);
        v29 = *(v0 + 856);
        v30 = *(v0 + 848);
        if (v25)
        {
          v83 = v12;
          v31 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          *v31 = 136315394;
          *(v31 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, &v95);
          *(v31 + 12) = 2080;
          v79 = v27;
          v80 = v26;
          v32 = sub_1000C5D04();
          v34 = v33;
          v88 = *(v29 + 8);
          v88(v28, v30);
          v35 = sub_100071844(v32, v34, &v95);

          *(v31 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v23, v24, "%s Found CKShare URL, replacing URL with: %s", v31, 0x16u);
          swift_arrayDestroy();

          v12 = v83;

          v37 = v79;
          v36 = v80;
        }

        else
        {

          v88 = *(v29 + 8);
          v88(v28, v30);
          v36 = v26;
          v37 = v27;
        }

        v10(v36, v37);
        v62 = *(v0 + 880);
        v63 = *(v0 + 856);
        v64 = *(v0 + 848);
        v65 = *(v0 + 840);
        v66 = *(v0 + 832);
        v67 = *(v12 + 24);
        v90(v65, v62, v64);
        (*(v63 + 56))(v65, 0, 1, v64);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100017574(v65, v66, &qword_100116260, &qword_1000CD940);

        sub_1000C60A4();

        sub_100010F24(v65, &qword_100116260, &qword_1000CD940);
        v88(v62, v64);
LABEL_20:
        v68 = *(v0 + 936);
        v69 = *(v0 + 928);
        v70 = *(v0 + 920);
        v71 = *(v0 + 912);
        v72 = *(v0 + 904);
        v73 = *(v0 + 880);
        v74 = *(v0 + 872);
        v75 = *(v0 + 864);
        v76 = *(v0 + 840);
        v81 = *(v0 + 832);
        v82 = *(v0 + 824);
        v84 = *(v0 + 816);
        v86 = *(v0 + 808);
        v87 = *(v0 + 800);
        v89 = *(v0 + 792);
        v91 = *(v0 + 784);
        v92 = *(v0 + 776);
        v94 = *(v0 + 768);
        sub_100068C08();

        v77 = *(v0 + 8);

        return v77();
      }
    }
  }

  v38 = *(v0 + 856);
  v39 = *(v0 + 848);
  v40 = *(v0 + 824);
  sub_100017574(*(v0 + 744), v40, &qword_100116260, &qword_1000CD940);
  v41 = *(v38 + 48);
  *(v0 + 976) = v41;
  *(v0 + 984) = (v38 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v41(v40, 1, v39) == 1)
  {
    v42 = *(v0 + 944);
    v43 = *(v0 + 904);
    v44 = *(v0 + 824);

    sub_100010F24(v44, &qword_100116260, &qword_1000CD940);
    sub_1000C5F54();
    v45 = sub_1000C5F64();
    v46 = sub_1000C6FD4();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 904);
    v49 = *(v0 + 896);
    v50 = *(v0 + 888);
    if (v47)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v95 = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, &v95);
      _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s Is not a CKShare nor is there a fileURL. This is a silent failure.", v51, 0xCu);
      sub_100010544(v52);
    }

    v10(v48, v50);
    goto LABEL_20;
  }

  v53 = *(v0 + 920);
  (*(*(v0 + 856) + 32))(*(v0 + 864), *(v0 + 824), *(v0 + 848));
  sub_1000C5F54();
  v54 = sub_1000C5F64();
  v55 = sub_1000C6FB4();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 920);
  v58 = *(v0 + 896);
  v59 = *(v0 + 888);
  if (v56)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v95 = v61;
    *v60 = 136446210;
    *(v60 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, &v95);
    _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s Copying sharing URL...", v60, 0xCu);
    sub_100010544(v61);
  }

  v10(v57, v59);
  *(v0 + 1008) = *(*(v0 + 760) + 48);

  return _swift_task_switch(sub_1000561B0, 0, 0);
}

uint64_t sub_1000561B0()
{
  v1 = v0[108];
  v2 = v0[101];
  v3 = v0[95];
  v4 = swift_task_alloc();
  v0[124] = v4;
  *(v4 + 16) = v1;
  swift_asyncLet_begin();
  v5 = v0[101];

  return _swift_asyncLet_get(v0 + 2, v5, sub_100056264, v0 + 82);
}

uint64_t sub_100056280()
{
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[95];
  sub_100017574(v0[101], v2, &qword_100116790, &qword_1000D0610);
  v0[125] = *(v2 + *(v3 + 48));
  sub_100020D0C(v2, v1, &qword_100116260, &qword_1000CD940);
  v4 = v0[101];

  return _swift_asyncLet_finish(v0 + 2, v4, sub_10005633C, v0 + 88);
}

uint64_t sub_100056358()
{
  v1 = v0[124];

  v2 = v0[120];
  v3 = v0[119];

  return _swift_task_switch(sub_1000563C0, v3, v2);
}

uint64_t sub_1000563C0()
{
  v93 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 792);
  v3 = *(v0 + 760);
  *(v1 + *(v0 + 1008)) = *(v0 + 1000);
  sub_100017574(v1, v2, &qword_100116790, &qword_1000D0610);
  v4 = *(v2 + *(v3 + 48));
  if (!v4)
  {
    v14 = *(v0 + 912);
    v15 = *(v0 + 816);
    v16 = *(v0 + 784);
    sub_100010F24(*(v0 + 792), &qword_100116260, &qword_1000CD940);
    sub_1000C5F54();
    sub_100017574(v15, v16, &qword_100116790, &qword_1000D0610);
    v17 = sub_1000C5F64();
    v18 = sub_1000C6FB4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 984);
      v20 = *(v0 + 976);
      v21 = *(v0 + 848);
      v22 = *(v0 + 784);
      v23 = *(v0 + 776);
      v24 = *(v0 + 760);
      v25 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, v92);
      *(v25 + 12) = 2080;
      sub_100017574(v22, v23, &qword_100116790, &qword_1000D0610);

      result = v20(v23, 1, v21);
      if (result == 1)
      {
        goto LABEL_13;
      }

      v83 = *(v0 + 912);
      v87 = *(v0 + 968);
      v77 = *(v0 + 896);
      v80 = *(v0 + 888);
      v27 = *(v0 + 856);
      v28 = *(v0 + 848);
      v29 = *(v0 + 784);
      v30 = *(v0 + 776);
      v31 = sub_1000C5D04();
      v33 = v32;
      sub_100010F24(v29, &qword_100116790, &qword_1000D0610);
      (*(v27 + 8))(v30, v28);
      v34 = sub_100071844(v31, v33, v92);

      *(v25 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s Replacing URL with: %s", v25, 0x16u);
      swift_arrayDestroy();

      v87(v83, v80);
    }

    else
    {
      v35 = *(v0 + 968);
      v36 = *(v0 + 912);
      v37 = *(v0 + 896);
      v38 = *(v0 + 888);
      v39 = *(v0 + 784);

      sub_100010F24(v39, &qword_100116790, &qword_1000D0610);
      v35(v36, v38);
    }

    v40 = *(v0 + 984);
    v41 = *(v0 + 976);
    v42 = *(v0 + 848);
    v43 = *(v0 + 768);
    v44 = *(v0 + 760);
    v45 = *(*(v0 + 752) + 24);
    sub_100017574(*(v0 + 816), v43, &qword_100116790, &qword_1000D0610);
    v46 = *(v43 + *(v44 + 48));

    result = v41(v43, 1, v42);
    if (result != 1)
    {
      v47 = *(v0 + 944);
      v48 = *(v0 + 856);
      v49 = *(v0 + 848);
      v50 = *(v0 + 840);
      v51 = *(v0 + 832);
      v84 = *(v0 + 816);
      v88 = *(v0 + 864);
      v52 = *(v0 + 768);

      (*(v48 + 16))(v50, v52, v49);
      (*(v48 + 56))(v50, 0, 1, v49);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100017574(v50, v51, &qword_100116260, &qword_1000CD940);
      sub_1000C60A4();
      sub_100010F24(v50, &qword_100116260, &qword_1000CD940);
      sub_100010F24(v84, &qword_100116790, &qword_1000D0610);
      v53 = *(v48 + 8);
      v53(v88, v49);
      v53(v52, v49);
      v54 = *(v0 + 936);
      v55 = *(v0 + 928);
      v56 = *(v0 + 920);
      v57 = *(v0 + 912);
      v58 = *(v0 + 904);
      v59 = *(v0 + 880);
      v60 = *(v0 + 872);
      v61 = *(v0 + 864);
      v62 = *(v0 + 840);
      v69 = *(v0 + 832);
      v71 = *(v0 + 824);
      v73 = *(v0 + 816);
      v75 = *(v0 + 808);
      v78 = *(v0 + 800);
      v81 = *(v0 + 792);
      v85 = *(v0 + 784);
      v89 = *(v0 + 776);
      v91 = *(v0 + 768);
      sub_100068C08();

      v13 = *(v0 + 8);
      goto LABEL_9;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v63 = *(v0 + 928);
  v64 = *(v0 + 920);
  v65 = *(v0 + 912);
  v66 = *(v0 + 904);
  v67 = *(v0 + 880);
  v68 = *(v0 + 872);
  v7 = *(v0 + 864);
  v8 = *(v0 + 856);
  v9 = *(v0 + 848);
  v70 = *(v0 + 840);
  v72 = *(v0 + 832);
  v10 = *(v0 + 816);
  v74 = *(v0 + 824);
  v76 = *(v0 + 808);
  v11 = *(v0 + 792);
  v79 = *(v0 + 800);
  v82 = *(v0 + 784);
  v86 = *(v0 + 776);
  v90 = *(v0 + 768);

  sub_100010F24(v11, &qword_100116260, &qword_1000CD940);
  sub_1000100B0();
  swift_allocError();
  *v12 = 0xD00000000000001CLL;
  *(v12 + 8) = 0x80000001000DAA50;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v4;
  *(v12 + 40) = 7;
  swift_willThrow();
  sub_100010F24(v10, &qword_100116790, &qword_1000D0610);
  (*(v8 + 8))(v7, v9);
  sub_100068C08();

  v13 = *(v0 + 8);
LABEL_9:

  return v13();
}

uint64_t sub_100056B08()
{
  v1[5] = v0;
  v2 = sub_1000C5F74();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_1000C6F14();
  v1[13] = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  v1[14] = v7;
  v1[15] = v6;

  return _swift_task_switch(sub_100056C58, v7, v6);
}

uint64_t sub_100056C58()
{
  v45 = v0;
  v1 = *(v0 + 40);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 176) = 2;

    sub_1000C60A4();
    v4 = *(v3 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v5 = *(v0 + 16);
    *(v0 + 136) = v5;
    if (v5)
    {
      v6 = *(v0 + 96);
      v7 = *(v0 + 40);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if ((*(v0 + 179) & 0xFE) == 8)
      {
        v8 = 0;
      }

      else
      {
        v19 = *(v0 + 40);
        v8 = sub_10003AB60();
      }

      *(v0 + 144) = v8;
      v38 = *(v0 + 40);
      v39 = sub_1000B2C00();
      *(v0 + 152) = v40;
      v41 = swift_task_alloc();
      *(v0 + 160) = v41;
      *v41 = v0;
      v41[1] = sub_1000571E8;
      v42 = *(v0 + 96);

      return sub_10001FEC4(v42, v5, v8, v39 & 0x101FFFFFFFFFFLL);
    }

    v16 = *(v0 + 104);

    sub_1000100B0();
    v17 = swift_allocError();
    *v18 = xmmword_1000CFEF0;
    *(v18 + 16) = xmmword_1000CFF00;
    *(v18 + 32) = 0x80000001000DA7F0;
    *(v18 + 40) = 11;
    swift_willThrow();
    swift_unknownObjectRelease();
    v20 = *(v0 + 64);
    v21 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 177) = 0;

    sub_1000C60A4();
    sub_1000C5F54();
    swift_errorRetain();
    v22 = sub_1000C5F64();
    v23 = sub_1000C6FD4();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 56);
    v43 = *(v0 + 64);
    v26 = *(v0 + 48);
    if (v24)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315138;
      *(v0 + 24) = v17;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v29 = sub_1000C6D94();
      v31 = sub_100071844(v29, v30, &v44);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "stopSharing error: %s", v27, 0xCu);
      sub_100010544(v28);
    }

    (*(v25 + 8))(v43, v26);
    v33 = *(v0 + 88);
    v32 = *(v0 + 96);
    v35 = *(v0 + 72);
    v34 = *(v0 + 80);
    v36 = *(v0 + 64);
    swift_willThrow();

    v15 = *(v0 + 8);
  }

  else
  {
    v9 = *(v0 + 104);

    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_1000571E8()
{
  v2 = *v1;
  v3 = (*v1)[20];
  v4 = *v1;
  (*v1)[21] = v0;

  v5 = v2[19];
  v6 = v2[18];
  sub_100010F24(v2[12], &qword_100116260, &qword_1000CD940);

  v7 = v2[15];
  v8 = v2[14];
  if (v0)
  {
    v9 = sub_100057750;
  }

  else
  {
    v9 = sub_100057388;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100057388()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);

  v6 = *(v5 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 0;
  swift_retain_n();
  sub_1000C60A4();
  v7 = sub_1000C5D84();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100017574(v2, v3, &qword_100116260, &qword_1000CD940);

  sub_1000C60A4();
  sub_100010F24(v2, &qword_100116260, &qword_1000CD940);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 181) = 0;

  sub_1000C60A4();
  sub_1000C5F54();

  v8 = sub_1000C5F64();
  v9 = sub_1000C6FF4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    *(v11 + 4) = (*(v0 + 182) & 0xFE) != 8;

    _os_log_impl(&_mh_execute_header, v8, v9, "stopSharing succeeded. Is CloudKit Sharing: %{BOOL}d", v11, 8u);
  }

  else
  {
    v12 = *(v0 + 40);
  }

  v13 = *(v0 + 128);
  (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
  sub_10000816C();
  v14 = sub_1000077D8();
  if (v14)
  {
    [v14 _shareWasMadePrivate];
    swift_unknownObjectRelease();
  }

  v15 = *(v0 + 128);
  v16 = sub_1000077D8();
  v17 = *(v0 + 128);
  v18 = *(v0 + 136);
  if (v16)
  {
    [v16 _dismissViewControllerWithError:0];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = *(v0 + 128);
    swift_unknownObjectRelease();
  }

  v21 = *(v0 + 88);
  v20 = *(v0 + 96);
  v23 = *(v0 + 72);
  v22 = *(v0 + 80);
  v24 = *(v0 + 64);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100057750()
{
  v28 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);

  swift_unknownObjectRelease();

  v4 = *(v0 + 168);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 177) = 0;

  sub_1000C60A4();
  sub_1000C5F54();
  swift_errorRetain();
  v7 = sub_1000C5F64();
  v8 = sub_1000C6FD4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 56);
    v26 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    *(v0 + 24) = v4;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v13 = sub_1000C6D94();
    v15 = sub_100071844(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "stopSharing error: %s", v11, 0xCu);
    sub_100010544(v12);

    (*(v9 + 8))(v26, v10);
  }

  else
  {
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 48);

    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);
  v23 = *(v0 + 64);
  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1000579C0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1000C5F74();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = sub_1000C6F14();
  v3[13] = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  v3[14] = v8;
  v3[15] = v7;

  return _swift_task_switch(sub_100057AD4, v8, v7);
}

uint64_t sub_100057AD4()
{
  v52 = v0;
  v1 = *(v0 + 88);
  sub_1000C5F54();
  v2 = sub_1000C5F64();
  v3 = sub_1000C6FB4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100071844(0xD00000000000001ELL, 0x80000001000DB6A0, v51);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Start", v8, 0xCu);
    sub_100010544(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 128) = v10;
  v11 = *(*(v0 + 48) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v12 = *(v0 + 16);
  *(v0 + 136) = v12;
  if (v12)
  {
    v13 = *(*(v0 + 48) + 16);

    *(v0 + 192) = sub_100019C78() & 1;

    v14 = sub_10003AB60();
    *(v0 + 144) = v14;
    v22 = v14;
    v23 = *(v0 + 80);
    v24 = *(v0 + 32);
    sub_1000C5F54();
    v25 = v24;
    v26 = sub_1000C5F64();
    v27 = sub_1000C6FF4();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 80);
    v30 = *(v0 + 56);
    v31 = *(v0 + 64);
    if (v28)
    {
      v50 = *(v0 + 80);
      v32 = *(v0 + 32);
      v49 = *(v0 + 56);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51[0] = v35;
      *v33 = 136446466;
      *(v33 + 4) = sub_100071844(0xD00000000000001ELL, 0x80000001000DB6A0, v51);
      *(v33 + 12) = 2112;
      *(v33 + 14) = v32;
      *v34 = v32;
      v36 = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s approving requester: %@", v33, 0x16u);
      sub_100010F24(v34, &qword_100117080, &unk_1000CC350);

      sub_100010544(v35);

      v37 = v49;
      v38 = v50;
    }

    else
    {

      v38 = v29;
      v37 = v30;
    }

    v10(v38, v37);
    v39 = [*(v0 + 32) userIdentity];
    v40 = [v39 lookupInfo];
    *(v0 + 152) = v40;

    if (v40)
    {
      v41 = *(v0 + 96);
      v42 = sub_1000C6F04();
      *(v0 + 160) = v42;
      v43 = swift_task_alloc();
      *(v0 + 168) = v43;
      *(v43 + 16) = v40;
      *(v43 + 24) = v22;
      v44 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v45 = swift_task_alloc();
      *(v0 + 176) = v45;
      v46 = sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
      *v45 = v0;
      v45[1] = sub_1000580B4;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 24, v42, &protocol witness table for MainActor, 0xD00000000000001ELL, 0x80000001000DB6A0, sub_10007B618, v43, v46);
    }

    v47 = *(v0 + 104);

    sub_1000100B0();
    swift_allocError();
    *v48 = 0xD00000000000001ELL;
    *(v48 + 8) = 0x80000001000DB6A0;
    *(v48 + 16) = xmmword_1000CFF10;
    *(v48 + 32) = 0x80000001000DB700;
    *(v48 + 40) = 11;
    swift_willThrow();
  }

  else
  {
    v15 = *(v0 + 104);

    sub_1000100B0();
    swift_allocError();
    *v16 = 0xD00000000000001ELL;
    *(v16 + 8) = 0x80000001000DB6A0;
    *(v16 + 16) = xmmword_1000CFF20;
    *(v16 + 32) = 0x80000001000DB6C0;
    *(v16 + 40) = 11;
    swift_willThrow();
  }

  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  v19 = *(v0 + 72);
  sub_100064604();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000580B4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v10 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_1000584C0;
  }

  else
  {
    v7 = v2[20];
    v8 = v2[21];

    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_1000581D8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000581D8()
{
  v35 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);

  v3 = *(v0 + 24);
  sub_1000C5F54();
  v4 = v3;
  v5 = sub_1000C5F64();
  v6 = sub_1000C6FB4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 72);
    v32 = v7;
    v33 = *(v0 + 128);
    v31 = *(v0 + 56);
    v8 = 2;
    if (!*(v0 + 192))
    {
      v8 = 3;
    }

    v29 = v8;
    v30 = *(v0 + 40);
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v9 = 136446978;
    *(v9 + 4) = sub_100071844(0xD00000000000001ELL, 0x80000001000DB6A0, &v34);
    *(v9 + 12) = 2080;
    v10 = v4;
    v11 = [v10 description];
    v12 = sub_1000C6D84();
    v14 = v13;

    v15 = sub_100071844(v12, v14, &v34);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2050;
    *(v9 + 24) = v30;
    *(v9 + 32) = 2050;
    *(v9 + 34) = v29;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s For participant %s, setting permission %{public}ld and role %{public}ld", v9, 0x2Au);
    swift_arrayDestroy();

    v33(v32, v31);
  }

  else
  {
    v16 = *(v0 + 128);
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = *(v0 + 56);

    v16(v17, v19);
  }

  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  v22 = *(v0 + 136);
  v24 = *(v0 + 80);
  v23 = *(v0 + 88);
  v25 = *(v0 + 72);
  if (*(v0 + 192))
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  [v4 setPermission:{*(v0 + 40), v29, v30}];
  [v4 setRole:v26];
  [v22 addParticipant:v4];

  sub_100064604();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1000584C0()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[13];

  v7 = v0[23];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  sub_100064604();

  v11 = v0[1];

  return v11();
}

void sub_100058580(void *a1)
{
  v4 = sub_1000C5F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v10 = v23;
  if (v23)
  {
    sub_1000C5F54();
    v11 = a1;
    v12 = sub_1000C5F64();
    v13 = sub_1000C6FF4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[1] = v2;
      v16 = v15;
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "denying requester: %@", v14, 0xCu);
      sub_100010F24(v16, &qword_100117080, &unk_1000CC350);
    }

    (*(v5 + 8))(v8, v4);
    sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000CD0E0;
    *(v18 + 32) = v11;
    sub_100010778(0, &unk_100118660, CKShareAccessRequester_ptr);
    v19 = v11;
    isa = sub_1000C6E84().super.isa;

    [v10 blockRequesters:isa];
  }

  else
  {
    sub_1000100B0();
    swift_allocError();
    *v21 = 0xD000000000000010;
    *(v21 + 8) = 0x80000001000DB640;
    *(v21 + 16) = xmmword_1000CFF30;
    *(v21 + 32) = 0x80000001000DB660;
    *(v21 + 40) = 11;
    swift_willThrow();
  }
}

uint64_t sub_1000588A0(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 161) = a1;
  v3 = sub_1000C5F74();
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v6 = *(*(sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50) - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = sub_1000C6F14();
  *(v2 + 80) = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  *(v2 + 88) = v8;
  *(v2 + 96) = v7;

  return _swift_task_switch(sub_1000589D4, v8, v7);
}

uint64_t sub_1000589D4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (*(v0 + 160) == 1)
  {
    v3 = *(v1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v4 = *(v0 + 16);
    *(v0 + 104) = v4;
    if (v4)
    {
      v5 = 2;
      if (!*(v0 + 161))
      {
        v5 = 3;
      }

      v39 = v5;
      v6 = [v4 participants];
      sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
      v7 = sub_1000C6E94();

      if (v7 >> 62)
      {
        goto LABEL_38;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C72F4())
      {
        v38 = v0;
        if (!i)
        {
          break;
        }

        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_1000C7254();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v0 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if ([v10 role] == 1 || v39 == objc_msgSend(v11, "role"))
          {
          }

          else
          {
            sub_1000C7284();
            v12 = _swiftEmptyArrayStorage[2];
            sub_1000C72B4();
            sub_1000C72C4();
            sub_1000C7294();
          }

          ++v9;
          if (v0 == i)
          {
            v0 = v38;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        ;
      }

LABEL_23:

      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
      {
        v18 = sub_1000C72F4();
        if (v18)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v18 = _swiftEmptyArrayStorage[2];
        if (v18)
        {
LABEL_26:
          v19 = sub_1000C72A4();
          if (v18 < 0)
          {
            __break(1u);
            return Task.value.getter(v19, v20, v21, v22, v23);
          }

          v24 = 0;
          do
          {
            if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
            {
              v25 = sub_1000C7254();
            }

            else
            {
              v25 = _swiftEmptyArrayStorage[v24 + 4];
            }

            v26 = v25;
            if ([v25 permission] == 3)
            {
              v27 = v39;
            }

            else
            {
              v27 = 3;
            }

            ++v24;
            [v26 setRole:v27];
            sub_1000C7284();
            v28 = _swiftEmptyArrayStorage[2];
            sub_1000C72B4();
            sub_1000C72C4();
            sub_1000C7294();
          }

          while (v18 != v24);

          v0 = v38;
LABEL_41:
          v29 = *(v0 + 64);
          v30 = *(v0 + 72);
          v31 = *(v0 + 32);
          sub_1000C6F24();
          v32 = sub_1000C6F44();
          (*(*(v32 - 8) + 56))(v29, 0, 1, v32);

          v33 = sub_1000C6F04();
          v34 = swift_allocObject();
          v34[2] = v33;
          v34[3] = &protocol witness table for MainActor;
          v34[4] = v31;
          v34[5] = _swiftEmptyArrayStorage;
          v35 = sub_1000B82F8(0, 0, v29, &unk_1000D1058, v34);
          *(v0 + 112) = v35;
          v36 = async function pointer to Task.value.getter[1];
          v37 = swift_task_alloc();
          *(v0 + 120) = v37;
          v19 = sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
          *(v0 + 128) = v19;
          *v37 = v0;
          v37[1] = sub_100058F0C;
          v23 = &protocol self-conformance witness table for Error;
          v21 = &type metadata for () + 8;
          v20 = v35;
          v22 = v19;

          return Task.value.getter(v19, v20, v21, v22, v23);
        }
      }

      goto LABEL_41;
    }
  }

  v13 = *(v0 + 80);

  v15 = *(v0 + 56);
  v14 = *(v0 + 64);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100058F0C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_10005929C;
  }

  else
  {
    v7 = sub_100059048;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100059048()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1000590DC;
  v2 = *(v0 + 32);

  return sub_100052EEC(1);
}

uint64_t sub_1000590DC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_100059494;
  }

  else
  {
    v7 = sub_100059218;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100059218()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];

  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10005929C()
{
  v28 = v0;
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[7];

  sub_1000C5F54();
  swift_errorRetain();
  v4 = sub_1000C5F64();
  v5 = sub_1000C6FD4();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[6];
    v26 = v0[7];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    v0[3] = v6;
    swift_errorRetain();
    v12 = sub_1000C6D94();
    v14 = sub_100071844(v12, v13, &v27);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "applyAllowAnyoneToInviteAndSaveShareOnChange addOrUpdate error: %s", v10, 0xCu);
    sub_100010544(v11);

    (*(v8 + 8))(v26, v9);
  }

  else
  {
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[17];
  v19 = v0[13];
  swift_willThrow();

  v20 = v0[17];
  v21 = v0[14];
  v23 = v0[7];
  v22 = v0[8];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100059494()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[19];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100059520()
{
  v1 = v0;
  v2 = sub_1000C5F74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000C5F54();
    v7 = sub_1000C5F64();
    v8 = sub_1000C6FF4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "ext computed property--extensionController is nil--will assert", v9, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v1 + 48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100059688()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (!v6)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (!v5)
  {
    return 0;
  }

  v2 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  return v4 != 0;
}

uint64_t sub_1000597C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v68 = a2;
  v69 = a3;
  v10 = sub_1000C5F74();
  v11 = *(v10 - 8);
  v70 = v10;
  v71 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v67 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v67 - v20;
  __chkstk_darwin(v19);
  v23 = &v67 - v22;
  v24 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v67 - v26;
  if ((a6 & 1) == 0)
  {
    return 8;
  }

  if (!a5)
  {
    sub_100017574(a1, &v67 - v26, &qword_100116260, &qword_1000CD940);
    v46 = sub_1000C5D84();
    v47 = (*(*(v46 - 8) + 48))(v27, 1, v46);
    sub_100010F24(v27, &qword_100116260, &qword_1000CD940);
    if (v47 != 1)
    {
      return 9;
    }

    v48 = sub_10005A104();
    if ((v48 & 0xFE) != 8 && (v48 > 7u || ((1 << v48) & 0xC1) == 0))
    {
      v58 = v48;
      sub_1000C5F54();
      v59 = sub_1000C5F64();
      v60 = sub_1000C6FF4();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v72[0] = v62;
        *v61 = 136315138;
        v63 = sub_10001E4F8(v58);
        v65 = sub_100071844(v63, v64, v72);

        *(v61 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v59, v60, "Combine for sharingType specific CK sharingType: %s.", v61, 0xCu);
        sub_100010544(v62);
      }

      (*(v71 + 8))(v18, v70);
      return v58;
    }

    sub_1000C5F54();
    v49 = v69;

    v50 = sub_1000C5F64();
    v51 = sub_1000C6FF4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v72[1] = v49;
      v73 = v53;
      *v52 = 136315138;
      v54 = v68;
      v72[0] = v68;
      sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
      v55 = sub_1000C71B4();
      v57 = sub_100071844(v55, v56, &v73);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Combine for sharingType sourceAppBundleID: %s.", v52, 0xCu);
      sub_100010544(v53);

      (*(v71 + 8))(v15, v70);
      if (!v49)
      {
        return 0;
      }
    }

    else
    {

      (*(v71 + 8))(v15, v70);
      v54 = v68;
      if (!v49)
      {
        return 0;
      }
    }

    if (v54 == 0x6C7070612E6D6F63 && v49 == 0xEF7365746F4E2E65 || (sub_1000C73A4() & 1) != 0 || v54 == 0xD000000000000015 && 0x80000001000D7380 == v49 || (sub_1000C73A4() & 1) != 0)
    {
      return 1;
    }

    if (v54 == 0xD000000000000013 && 0x80000001000D73A0 == v49 || (sub_1000C73A4() & 1) != 0)
    {
      return 3;
    }

    if (v54 == 0xD000000000000010 && 0x80000001000DAC00 == v49 || (sub_1000C73A4() & 1) != 0 || v54 == 0xD000000000000016 && 0x80000001000D73C0 == v49 || (sub_1000C73A4() & 1) != 0)
    {
      return 4;
    }

    if (v54 == 0xD000000000000010 && 0x80000001000DABE0 == v69 || (sub_1000C73A4() & 1) != 0 || v68 == 0xD000000000000012 && 0x80000001000D73E0 == v69 || (sub_1000C73A4() & 1) != 0)
    {
      return 5;
    }

    v66 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v66 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v66)
    {
      return 6;
    }

    return 0;
  }

  v28 = sub_10009EC80(a4, a5, a1);
  v29 = sub_10009D15C(v28);
  if ((v29 & 0xFE) != 8 && (v29 == 7 || !v29) && v69)
  {
    v30 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v30 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = v29;
      sub_1000C5F54();

      v32 = sub_1000C5F64();
      v33 = sub_1000C6FF4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v72[0] = swift_slowAlloc();
        *v34 = 136315394;
        *(v34 + 4) = sub_100071844(a4, a5, v72);
        *(v34 + 12) = 2080;
        v35 = sub_10001E4F8(v31);
        v37 = sub_100071844(v35, v36, v72);

        *(v34 + 14) = v37;
        _os_log_impl(&_mh_execute_header, v32, v33, "Combine for sharingType itemUTI: %s, sharingType: %s--return .other for unspecified.", v34, 0x16u);
        swift_arrayDestroy();
      }

      (*(v71 + 8))(v23, v70);
      return 6;
    }
  }

  v39 = v29;
  sub_1000C5F54();

  v40 = sub_1000C5F64();
  v41 = sub_1000C6FF4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_100071844(a4, a5, v72);
    *(v42 + 12) = 2080;
    v43 = sub_10001E4F8(v39);
    v45 = sub_100071844(v43, v44, v72);

    *(v42 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v40, v41, "Combine for sharingType itemUTI: %s, sharingType: %s.", v42, 0x16u);
    swift_arrayDestroy();
  }

  (*(v71 + 8))(v21, v70);
  return v39;
}

uint64_t sub_10005A104()
{
  v1 = sub_1000C5F74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - v8;
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (!v39[0])
  {
    sub_1000C5F54();
    v33 = sub_1000C5F64();
    v34 = sub_1000C6FF4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "ckSharingTypeFromShare on model--no CKShare yet so return .cloudKit(type: .other).", v35, 2u);
    }

    (*(v2 + 8))(v6, v1);
    return 6;
  }

  v13 = v39[0];
  sub_1000C7164();
  v14 = sub_1000C7174();

  if (!v14 || (v39[2] = v14, sub_10000FEB8(&unk_1001162F0, &unk_1000CBB70), (swift_dynamicCast() & 1) == 0))
  {
    sub_1000C5F54();
    v30 = sub_1000C5F64();
    v31 = sub_1000C6FF4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "ckSharingTypeFromShare on model--couldn't get a string from CKShare.shareType so return .cloudKit(type: .other).", v32, 2u);
    }

    else
    {
    }

    (*(v2 + 8))(v9, v1);
    return 6;
  }

  v15 = sub_10009D67C(v39[0], v39[1]);
  v17 = v16;

  sub_1000C5F54();

  v18 = sub_1000C5F64();
  v19 = sub_1000C6FF4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v20;
    v38 = swift_slowAlloc();
    v39[0] = v38;
    *v20 = 136315138;
    v21 = sub_10009E760(v15, v17);
    v22 = sub_10009D15C(v21);
    v23 = sub_10001E4F8(v22);
    LOBYTE(v20) = v19;
    v25 = v15;
    v26 = sub_100071844(v23, v24, v39);

    v27 = v37;
    *(v37 + 1) = v26;
    v15 = v25;
    _os_log_impl(&_mh_execute_header, v18, v20, "ckSharingTypeFromShare on model--CKShare converts to: %s.", v27, 0xCu);
    sub_100010544(v38);
  }

  (*(v2 + 8))(v11, v1);
  v28 = sub_10009E760(v15, v17);

  return sub_10009D15C(v28);
}

uint64_t sub_10005A544@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_10000FEB8(&unk_100118618, &qword_1000D0F00);
  result = a2(a1, *(a1 + v6[12]), *(a1 + v6[12] + 8), *(a1 + v6[16]), *(a1 + v6[16] + 8), *(a1 + v6[20]));
  *a3 = result;
  return result;
}

_BYTE *sub_10005A5BC(_BYTE *result)
{
  if (*result == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1000C60A4();
  }

  return result;
}

_UNKNOWN **sub_10005A640(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return &off_100107430;
  }

  if (!a2)
  {

    return &off_100107430;
  }

  v5 = Strong;
  v6 = a2;
  v7 = [v6 participants];
  sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
  v8 = sub_1000C6E94();

  v9 = *(v5 + 24);
  v10 = v6;

  sub_100086528(a2);
  v27 = v11;

  if (v8 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C72F4())
  {
    if (i)
    {
      v13 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v14 = sub_1000C7254();
        }

        else
        {
          if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v14 = *(v8 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if ([v14 role] != 1 && objc_msgSend(v15, "role") == 2 && objc_msgSend(v15, "permission") == 3)
        {
          sub_1000C7284();
          v17 = _swiftEmptyArrayStorage[2];
          sub_1000C72B4();
          sub_1000C72C4();
          sub_1000C7294();
        }

        else
        {
        }

        ++v13;
      }

      while (v16 != i);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
LABEL_23:
      if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
      {
        v19 = _swiftEmptyArrayStorage[2];
        goto LABEL_25;
      }
    }

    v19 = sub_1000C72F4();
LABEL_25:

    if (!i)
    {
      break;
    }

    v26 = v19;
    v20 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v21 = sub_1000C7254();
      }

      else
      {
        if (v20 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v21 = *(v8 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ([v21 role] == 1 || objc_msgSend(v22, "role") == 2 && objc_msgSend(v22, "permission") != 2)
      {
      }

      else
      {
        sub_1000C7284();
        v24 = _swiftEmptyArrayStorage[2];
        sub_1000C72B4();
        sub_1000C72C4();
        sub_1000C7294();
      }

      ++v20;
      if (v23 == i)
      {
        v19 = v26;
        goto LABEL_39;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_39:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_57;
  }

  for (j = _swiftEmptyArrayStorage[2]; ; j = sub_1000C72F4())
  {

    if (!__OFSUB__(j, v27))
    {
      break;
    }

    __break(1u);
LABEL_57:
    ;
  }

  if (v19 <= 0)
  {

    return &off_100107390;
  }

  else if (j - v27 < 1)
  {

    return &off_100107408;
  }

  else
  {

    if (a1 == 3)
    {
      return &off_1001073B8;
    }

    else
    {
      return &off_1001073E0;
    }
  }
}

uint64_t sub_10005AA4C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1000C5F74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v59 - v15;
  v17 = __chkstk_darwin(v14);
  v66 = &v59 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v59 - v20;
  __chkstk_darwin(v19);
  v23 = &v59 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    if (a1)
    {
      v60 = v13;
      v61 = v16;
      v63 = v9;
      v64 = v8;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v62 = v67;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v26 = v67;
      v27 = *(v25 + 24);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      v28 = v67;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v29 = v67 == 1 && (a1 == 1) | v28 & 1 && v62 != 2 && v26 == 2;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v67) = v29;

      sub_1000C60A4();
      sub_1000C5F54();

      v30 = sub_1000C5F64();
      v31 = sub_1000C6FF4();
      v32 = os_log_type_enabled(v30, v31);
      v65 = v25;
      v59 = a6;
      if (v32)
      {
        v33 = v62 == 2;
        v34 = swift_slowAlloc();
        *v34 = 67241216;
        *(v34 + 4) = 1;
        *(v34 + 8) = 1026;
        *(v34 + 10) = v33;
        *(v34 + 14) = 1026;
        *(v34 + 16) = v26 == 2;
        *(v34 + 20) = 1026;
        *(v34 + 22) = a1 == 1;
        *(v34 + 26) = 1026;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        *(v34 + 28) = v67;

        _os_log_impl(&_mh_execute_header, v30, v31, "executionMode is set. appIsOKForCoOwners: %{BOOL,public}d, R/O: %{BOOL,public}d, private: %{BOOL,public}d, isPreShare: %{BOOL,public}d, allowCoOwnersEditing: %{BOOL,public}d", v34, 0x20u);
      }

      else
      {
      }

      v35 = v64;
      v36 = *(v63 + 8);
      v36(v23, v64);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (v67)
      {
        if (a1 != 1)
        {
          v37 = *(v65 + 24);
          swift_getKeyPath();
          swift_getKeyPath();

          sub_1000C6094();

          v38 = v67;
          if (v67)
          {
            v39 = [v67 participants];
            sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
            v40 = sub_1000C6E94();

            if (v40 >> 62)
            {
              v41 = sub_1000C72F4();
            }

            else
            {
              v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v42 = v61;

            if (v41 > 1)
            {
              sub_1000C5F54();
              v43 = sub_1000C5F64();
              v44 = sub_1000C6FB4();
              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                *v45 = 0;
                _os_log_impl(&_mh_execute_header, v43, v44, "Do allow co-owner editing with participants.", v45, 2u);
              }

              v36(v66, v35);
              v46 = *(v65 + 24);
              swift_getKeyPath();
              swift_getKeyPath();

              sub_1000C6094();

              if (v67 == 1)
              {
                v47 = v59;
              }

              else
              {
                swift_getKeyPath();
                swift_getKeyPath();
                sub_1000C6094();

                v47 = v67;
              }

              sub_10001B418(v47);

              sub_1000C5F54();

              v56 = sub_1000C5F64();
              v57 = sub_1000C6FF4();
              if (os_log_type_enabled(v56, v57))
              {
                v58 = swift_slowAlloc();
                *v58 = 67109120;
                *(v58 + 4) = sub_100019C78() & 1;

                _os_log_impl(&_mh_execute_header, v56, v57, "Setting newParticipantsCanBeCoOwners from CKShare state: %{BOOL}d.", v58, 8u);
                v42 = v61;
              }

              else
              {
              }

              v55 = v42;
              return (v36)(v55, v35);
            }
          }

          else
          {
          }

          v51 = v60;
          sub_1000C5F54();
          v52 = sub_1000C5F64();
          v53 = sub_1000C6FB4();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "Do allow co-owner editing without participants.", v54, 2u);
          }

          else
          {
          }

          v55 = v51;
          return (v36)(v55, v35);
        }
      }

      else
      {
        sub_1000C5F54();
        v48 = sub_1000C5F64();
        v49 = sub_1000C6FB4();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, "Do not allow co-owner editing. Updating state.", v50, 2u);
        }

        v36(v21, v35);
        sub_10001B418(&off_100107458);
      }
    }
  }

  return result;
}

void sub_10005B3AC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v1)
    {
      v2 = v1;
      sub_1000C7164();
      v3 = sub_1000C7174();

      if (v3)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_1000C6D84();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000C60A4();

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C60A4();
    }

    else
    {
    }
  }
}

uint64_t sub_10005B4F0(unsigned __int8 *a1)
{
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v10 = Strong;
    if (v6 == 8)
    {
LABEL_4:

      return swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (HIBYTE(v16) == 8)
    {
      if ((v6 & 0xFE) != 8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (HIBYTE(v16) == 9)
      {
        if (v6 > 6)
        {
          if (v6 == 7 || v6 == 9)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }

        if (!v6)
        {
          goto LABEL_4;
        }

        if (v6 != 4)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if ((v6 & 0xFE) != 8)
      {
        if (HIBYTE(v16) == 7 || v6 == 7 || HIBYTE(v16) == v6)
        {
          goto LABEL_4;
        }

LABEL_12:
        if (v6 == 7)
        {
          goto LABEL_4;
        }

        if (v6 != 4)
        {
          if (!v6)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }

LABEL_24:
        v11 = *(v8 + 16);
        swift_getKeyPath();
        swift_getKeyPath();
        HIBYTE(v16) = 1;

        sub_1000C60A4();
      }
    }

LABEL_25:
    v12 = *(v10 + OBJC_IVAR___CloudSharingViewController_model);
    sub_1000C6F24();
    v13 = sub_1000C6F44();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    sub_1000C6F14();

    v14 = sub_1000C6F04();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v12;
    sub_1000B82F8(0, 0, v5, &unk_1000D0DC0, v15);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005B7BC(_BYTE *a1)
{
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v11[-v5];
  if (*a1 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (v11[7] == 3)
      {
        sub_1000C6F24();
        v8 = sub_1000C6F44();
        (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
        sub_1000C6F14();

        v9 = sub_1000C6F04();
        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = &protocol witness table for MainActor;
        v10[4] = v7;
        sub_1000B8860(0, 0, v6, &unk_1000D0DB8, v10);
      }
    }
  }

  return result;
}

uint64_t sub_10005B98C()
{
  v0[2] = sub_1000C6F14();
  v0[3] = sub_1000C6F04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100051D40;

  return sub_10005BA3C(1500);
}

uint64_t sub_10005BA3C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1000C5F74();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_1000C6F14();
  v2[15] = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  v2[16] = v7;
  v2[17] = v6;

  return _swift_task_switch(sub_10005BB3C, v7, v6);
}

uint64_t sub_10005BB3C(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2 < 1)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 144) = BRCloudDocsErrorDomain;
  *(v1 + 152) = CKErrorDomain;
  *(v1 + 160) = v2;
  v3 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v4 = *(v1 + 57);
  if (v4 > 2)
  {
    if (v4 - 4 < 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v6 = swift_task_alloc();
      *(v1 + 168) = v6;
      *v6 = v1;
      v6[1] = sub_10005BE28;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v7 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_1000C60A4();
  }

  v8 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v9 = *(v1 + 58);
  if (v9 == 4 || v9 == 2)
  {
    v10 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_1000C60A4();
    v11 = swift_task_alloc();
    *(v1 + 176) = v11;
    *v11 = v1;
    v11[1] = sub_10005C224;
    v12 = *(v1 + 80);

    return sub_1000615A4();
  }

LABEL_15:
  v15 = *(v1 + 112);
  v14 = *(v1 + 120);
  v16 = *(v1 + 104);

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_10005BE28()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_10007B958;
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_10005BF4C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10005BF4C(uint64_t a1)
{
  v2 = *(v1 + 160);
  if (v2 == 1)
  {
    goto LABEL_16;
  }

  if (v2 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 160) = v2 - 1;
  v3 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v4 = *(v1 + 57);
  if (v4 > 2)
  {
    if (v4 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v6 = swift_task_alloc();
      *(v1 + 168) = v6;
      *v6 = v1;
      v6[1] = sub_10005BE28;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v7 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_1000C60A4();
  }

  v8 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v9 = *(v1 + 58);
  if (v9 == 4 || v9 == 2)
  {
    v10 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_1000C60A4();
    v11 = swift_task_alloc();
    *(v1 + 176) = v11;
    *v11 = v1;
    v11[1] = sub_10005C224;
    v12 = *(v1 + 80);

    return sub_1000615A4();
  }

LABEL_16:
  v15 = *(v1 + 112);
  v14 = *(v1 + 120);
  v16 = *(v1 + 104);

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_10005C224()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_10005C69C;
  }

  else
  {
    v7 = sub_10005C360;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005C360()
{
  v1 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 62) = 4;

  v2 = sub_1000C60A4();
  v3 = *(v0 + 160);
  if (v3 == 1)
  {
    goto LABEL_16;
  }

  if (v3 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v2);
  }

  *(v0 + 160) = v3 - 1;
  v4 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v5 = *(v0 + 57);
  if (v5 > 2)
  {
    if (v5 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 == 1)
    {
      v6 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v7 = swift_task_alloc();
      *(v0 + 168) = v7;
      *v7 = v0;
      v7[1] = sub_10005BE28;
      v2 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v2);
    }

    v8 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_1000C60A4();
  }

  v9 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v10 = *(v0 + 58);
  if (v10 == 4 || v10 == 2)
  {
    v11 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_1000C60A4();
    v12 = swift_task_alloc();
    *(v0 + 176) = v12;
    *v12 = v0;
    v12[1] = sub_10005C224;
    v13 = *(v0 + 80);

    return sub_1000615A4();
  }

LABEL_16:
  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  v17 = *(v0 + 104);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10005C69C()
{
  v76 = v0;
  *(v0 + 64) = *(v0 + 184);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v0 + 208) = v4;
  *(v0 + 216) = v3;
  v5 = *(v0 + 48);
  *(v0 + 224) = v5;
  v6 = *(v0 + 56);
  if (v6 != 1)
  {
    sub_1000494BC(v1, v2, v4, v3, v5, v6);
    goto LABEL_16;
  }

  v72 = v3;
  v73 = v1;
  if (!v4)
  {
LABEL_38:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v1);
  }

  v7 = *(v0 + 144);

  v8 = v4;
  v74 = v2;

  v9 = [v8 domain];
  v10 = sub_1000C6D84();
  v12 = v11;

  if (v10 == sub_1000C6D84() && v12 == v13)
  {

    goto LABEL_9;
  }

  v14 = sub_1000C73A4();

  if (v14)
  {
LABEL_9:
    v15 = [v8 code];

    if (v15 == 7)
    {
      v16 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v17 = swift_task_alloc();
      *(v0 + 232) = v17;
      *v17 = v0;
      v18 = sub_10005CEC8;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

LABEL_12:
  v19 = *(v0 + 112);
  v20 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 61) = 5;

  sub_1000C60A4();
  sub_1000C5F54();
  v21 = v8;
  v22 = v74;

  v23 = sub_1000C5F64();
  v24 = sub_1000C6FD4();

  v71 = v24;
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 112);
  v28 = *(v0 + 88);
  v27 = *(v0 + 96);
  if (v25)
  {
    v69 = *(v0 + 112);
    v29 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v75 = v68;
    *v29 = 136315138;
    v70 = v21;
    v30 = v21;
    v31 = [v30 description];
    log = v23;
    v67 = v28;
    v32 = sub_1000C6D84();
    v34 = v33;

    v22 = v74;
    v35 = sub_100071844(v32, v34, &v75);

    *(v29 + 4) = v35;
    v21 = v70;
    _os_log_impl(&_mh_execute_header, log, v71, "tryToCreateShareIfNeeded not-in-iCloud error after retries: %s", v29, 0xCu);
    sub_100010544(v68);

    (*(v27 + 8))(v69, v67);
  }

  else
  {

    (*(v27 + 8))(v26, v28);
  }

  v36 = *(v0 + 80);
  v37 = v21;
  sub_100067838(1u, v4);
  sub_1000494BC(v73, v22, v4, v72, v5, 1u);

LABEL_16:
  v38 = *(v0 + 152);
  v39 = *(v0 + 104);
  v40 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 60) = 5;

  sub_1000C60A4();
  v41 = [objc_allocWithZone(NSError) initWithDomain:v38 code:1 userInfo:0];
  sub_1000C5F54();
  v42 = sub_1000C5F64();
  v43 = sub_1000C6FD4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "tryToCreateShareIfNeeded unexpected error, returning CKError.internalError as best approximation", v44, 2u);
  }

  v45 = *(v0 + 184);
  v47 = *(v0 + 96);
  v46 = *(v0 + 104);
  v48 = *(v0 + 80);
  v49 = *(v0 + 88);

  (*(v47 + 8))(v46, v49);
  v50 = v41;
  sub_100067838(1u, v41);

  v51 = *(v0 + 160);
  if (v51 == 1)
  {
    goto LABEL_34;
  }

  if (v51 < 2)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 160) = v51 - 1;
  v52 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v53 = *(v0 + 57);
  if (v53 > 2)
  {
    if (v53 - 4 < 2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v53 == 1)
    {
      v54 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v17 = swift_task_alloc();
      *(v0 + 168) = v17;
      *v17 = v0;
      v18 = sub_10005BE28;
LABEL_23:
      v17[1] = v18;
      v1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v1);
    }

    v55 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_1000C60A4();
  }

  v56 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v57 = *(v0 + 58);
  if (v57 == 4 || v57 == 2)
  {
    v58 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_1000C60A4();
    v59 = swift_task_alloc();
    *(v0 + 176) = v59;
    *v59 = v0;
    v59[1] = sub_10005C224;
    v60 = *(v0 + 80);

    return sub_1000615A4();
  }

LABEL_34:
  v63 = *(v0 + 112);
  v62 = *(v0 + 120);
  v64 = *(v0 + 104);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_10005CEC8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_10007B97C;
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_10005CFEC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10005CFEC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);

  v7 = sub_1000494BC(v6, v4, v3, v1, v2, 1u);
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
  sub_1000C6094();

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
      v12[1] = sub_10005BE28;
      v7 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v7);
    }

    v13 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_1000C60A4();
  }

  v14 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v15 = *(v0 + 58);
  if (v15 == 4 || v15 == 2)
  {
    v16 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_1000C60A4();
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v17[1] = sub_10005C224;
    v18 = *(v0 + 80);

    return sub_1000615A4();
  }

LABEL_16:
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 104);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10005D314(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
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
      sub_1000C6094();

      if (HIBYTE(v12) == 1)
      {
        v8 = &unk_1000D0DA8;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        if (HIBYTE(v12) != 3)
        {
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        if ((HIBYTE(v12) - 2) < 4u || (v12 & 0x100000000000000) != 0)
        {
        }

        v8 = &unk_1000D0D98;
      }

      sub_1000C6F24();
      v9 = sub_1000C6F44();
      (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
      sub_1000C6F14();

      v10 = sub_1000C6F04();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v7;
      sub_1000B8860(0, 0, v6, v8, v11);
    }
  }

  return result;
}

uint64_t sub_10005D5C0()
{
  v0[2] = sub_1000C6F14();
  v0[3] = sub_1000C6F04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10005D670;

  return sub_10005D7AC(1);
}

uint64_t sub_10005D670()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1000C6ED4();

  return _swift_task_switch(sub_10004975C, v5, v4);
}

uint64_t sub_10005D7AC(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 163) = a1;
  *(v2 + 104) = sub_1000C6F14();
  *(v2 + 112) = sub_1000C6F04();
  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  *v3 = v2;
  v3[1] = sub_10005D864;

  return sub_10005BA3C(300);
}

uint64_t sub_10005D864()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v6 = sub_1000C6ED4();
  *(v1 + 128) = v6;
  *(v1 + 136) = v5;

  return _swift_task_switch(sub_10005D9A8, v6, v5);
}

uint64_t sub_10005D9A8()
{
  if ((*(v0 + 163) & 1) == 0)
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 57) = 3;

LABEL_7:
    sub_1000C60A4();
    goto LABEL_8;
  }

  v1 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

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
  sub_1000C6094();

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

  sub_1000C60A4();
  v11 = *(v10 + 16);

  v12 = sub_100019C78();

  v13 = *(*(v10 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
  if (v13 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    LOBYTE(v13) = *(v0 + 62);
  }

  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_10005DCB4;
  v15 = *(v0 + 96);

  return sub_100063020(v12 & 1, v13 & 1);
}

uint64_t sub_10005DCB4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_10005DEA4;
  }

  else
  {
    v7 = sub_10005DDF0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005DDF0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 162) = 2;

  sub_1000C60A4();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005DEA4()
{
  v1 = v0;
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);

  *(v0 + 64) = v2;
  v4 = v0 + 64;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
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

    result = sub_1000C60A4();
    if (v11 == 10)
    {
      if (!v9)
      {
        __break(1u);
        return result;
      }

      v13 = *(v0 + 96);

      v14 = v9;

      sub_100067838(1u, v9);
      sub_1000494BC(v32, v7, v9, v8, v10, 0xAu);

      v15 = v1[8];
    }

    else
    {
      v26 = *(v0 + 96);
      v27 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_100067838(2u, v27);
      sub_1000494BC(v32, v7, v9, v8, v10, v11);

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

      sub_1000C60A4();
      *(v4 + 24) = v22;
      sub_1000799C8(&qword_100116450, type metadata accessor for CKError);
      v23 = CKErrorDomain;
      v24 = [objc_allocWithZone(NSError) initWithDomain:v23 code:sub_1000C5CC4() userInfo:0];

      sub_100067838(1u, v24);
      v25 = *(v4 + 8);
    }

    else
    {
      v29 = *(v4 + 8);

      swift_getKeyPath();
      swift_getKeyPath();
      *(v4 - 1) = 4;

      sub_1000C60A4();
      v30 = sub_1000C5CD4();
      sub_100067838(2u, v30);
    }
  }

  v31 = v1[1];

  return v31();
}

uint64_t sub_10005E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000C6F14();
  v4[3] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10005E324, v6, v5);
}

uint64_t sub_10005E324()
{
  v1 = (v0[2] + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData);
  v2 = *v1;
  v0[6] = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10005E3F0;
  v5 = v0[2];

  return sub_10005E534(0, v2, v3);
}

uint64_t sub_10005E3F0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_10004975C, v5, v4);
}

uint64_t sub_10005E534(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a2;
  *(v4 + 145) = a1;
  sub_1000C6F14();
  *(v4 + 96) = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  *(v4 + 104) = v6;
  *(v4 + 112) = v5;

  return _swift_task_switch(sub_10005E5D4, v6, v5);
}

uint64_t sub_10005E5D4()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData);
  *(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData) = *(v0 + 72);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_10005E694;
  v4 = *(v0 + 88);
  v5 = *(v0 + 145);

  return sub_10005D7AC(v5);
}

uint64_t sub_10005E694()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_10005E7B4, v4, v3);
}

uint64_t sub_10005E7B4()
{
  v1 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 57) != 4)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 59) != 3)
  {
    v3 = *(v0 + 88);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (*(v0 + 60) != 2)
    {
LABEL_6:
      v7 = *(v0 + 88);
      v6 = *(v0 + 96);
      v8 = *(v0 + 145);

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 58) = v8;

      sub_1000C60A4();
      goto LABEL_7;
    }
  }

  v4 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

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

  sub_1000C60A4();
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_10005EA80;
  v14 = *(v0 + 88);

  return sub_100067EF4();
}

uint64_t sub_10005EA80()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_10005EC6C;
  }

  else
  {
    v7 = sub_10005EBBC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005EBBC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 3;

  sub_1000C60A4();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005EC6C()
{
  v1 = v0;
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);

  *(v0 + 64) = v2;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
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

    result = sub_1000C60A4();
    if (v10 == 4)
    {
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v12 = *(v0 + 88);

      v13 = v8;

      sub_100067838(5u, v8);
      sub_1000494BC(v22, v6, v8, v7, v9, 4u);
    }

    else
    {
      v18 = *(v0 + 88);
      v19 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_100067838(2u, v19);
      sub_1000494BC(v22, v6, v8, v7, v9, v10);
    }

    v20 = v1[8];
  }

  else
  {
    v14 = *(v0 + 136);
    v15 = v1[11];
    v16 = v1[8];

    v17 = sub_1000C5CD4();
    sub_100067838(2u, v17);
  }

  v21 = v1[1];

  return v21();
}

uint64_t sub_10005EEC0(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
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
      sub_1000C6094();

      v8 = HIBYTE(v12);
      if (HIBYTE(v12) - 2 >= 4)
      {
        sub_1000C6F24();
        v9 = sub_1000C6F44();
        (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
        sub_1000C6F14();

        v10 = sub_1000C6F04();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = &protocol witness table for MainActor;
        *(v11 + 32) = v7;
        *(v11 + 40) = v8 & 1;
        sub_1000B8860(0, 0, v6, &unk_1000D0C98, v11);
      }
    }
  }

  return result;
}

uint64_t sub_10005F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  sub_1000C6F14();
  *(v5 + 24) = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_10005F120, v7, v6);
}

uint64_t sub_10005F120()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData);
  v2 = *v1;
  *(v0 + 48) = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10005E3F0;
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);

  return sub_10005E534(v5, v2, v3);
}

uint64_t sub_10005F1F0(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
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
      sub_1000C6F24();
      v8 = sub_1000C6F44();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      sub_1000C6F14();

      v9 = sub_1000C6F04();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v7;
      sub_1000B82F8(0, 0, v6, &unk_1000D0C88, v10);
    }
  }

  return result;
}

uint64_t sub_10005F358(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 256) = a2;
  *(v7 + 72) = a1;
  *(v7 + 80) = a3;
  v8 = sub_1000C65A4();
  *(v7 + 120) = v8;
  v9 = *(v8 - 8);
  *(v7 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  v11 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v12 = sub_1000C5D84();
  *(v7 + 160) = v12;
  v13 = *(v12 - 8);
  *(v7 + 168) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  v15 = sub_1000C5F74();
  *(v7 + 184) = v15;
  v16 = *(v15 - 8);
  *(v7 + 192) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 200) = swift_task_alloc();
  sub_1000C6F14();
  *(v7 + 208) = sub_1000C6F04();
  v19 = sub_1000C6ED4();
  *(v7 + 216) = v19;
  *(v7 + 224) = v18;

  return _swift_task_switch(sub_10005F554, v19, v18);
}

uint64_t sub_10005F554()
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

    v6 = sub_100083FB0();
    v10 = v6;
    sub_1000C5F54();
    v11 = v10;
    v12 = sub_1000C5F64();
    v13 = sub_1000C6FF4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v6;
      _os_log_impl(&_mh_execute_header, v12, v13, "iOS appIcon: icon: %@", v14, 0xCu);
      sub_100010F24(v15, &qword_100117080, &unk_1000CC350);
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
    sub_100010778(0, &qword_100116760, NSObject_ptr);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v23 = *(v0 + 40);
    if (qword_100115F80 != -1)
    {
      swift_once();
    }

    v24 = qword_100117E30;
    v25 = sub_1000C7184();

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
      sub_1000C6094();

      v27 = *(v0 + 48);
      v28 = [objc_allocWithZone(UIImage) init];
      v29 = sub_1000C7184();

      if (!v6)
      {
        if ((v29 & 1) == 0)
        {
          v39 = *(v0 + 232);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000C6094();

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
  sub_100017574(*(v0 + 72), v43, &qword_100116260, &qword_1000CD940);
  if ((*(v42 + 48))(v43, 1, v41) == 1)
  {
    v44 = *(v0 + 208);
    v45 = *(v0 + 152);

    sub_100010F24(v45, &qword_100116260, &qword_1000CD940);
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
    sub_1000C6FE4();
    v52 = sub_1000C6764();
    sub_1000C5F44();

    sub_1000C6594();
    swift_getAtKeyPath();
    sub_1000798F4(v46, 0);
    (*(v49 + 8))(v48, v50);
    sub_1000798F4(v46, 0);
    v47 = *(v0 + 64);
  }

  v53 = swift_unknownObjectWeakLoadStrong();
  if (v53)
  {
    v54 = *(v53 + OBJC_IVAR___CloudSharingViewController_itemUTI + 8);
    if (v54)
    {
      v55 = *(v0 + 168);
      v56 = *(v0 + 160);
      v57 = *(v0 + 144);
      v58 = *(v53 + OBJC_IVAR___CloudSharingViewController_itemUTI);
      (*(v55 + 16))(v57, *(v0 + 176), v56);
      (*(v55 + 56))(v57, 0, 1, v56);

      LOBYTE(v56) = sub_10009EC80(v58, v54, v57);

      sub_100010F24(v57, &qword_100116260, &qword_1000CD940);
      if (sub_10009D2CC(v56) == 0x7265646C6F66 && v59 == 0xE600000000000000)
      {

        goto LABEL_37;
      }

      v60 = sub_1000C73A4();

      if (v60)
      {
LABEL_37:
        v6 = sub_100083FB0();
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
  v62[1] = sub_10005FC74;
  v63 = *(v0 + 176);
  v64 = *(v0 + 104);
  v65 = *(v0 + 112);

  return sub_10007A668(v63, v64, v65, v47);
}

uint64_t sub_10005FC74(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = a1;

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);

  return _swift_task_switch(sub_10005FD9C, v5, v4);
}

uint64_t sub_10005FD9C()
{
  v1 = v0[26];

  v2 = v0[31];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v3 = v0[29];
  sub_100010778(0, &qword_100116760, NSObject_ptr);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v4 = v0[5];
  if (qword_100115F80 != -1)
  {
    swift_once();
  }

  v5 = qword_100117E30;
  v6 = sub_1000C7184();

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
  sub_1000C6094();

  v8 = v0[6];
  v9 = [objc_allocWithZone(UIImage) init];
  v10 = sub_1000C7184();

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
  sub_1000C6094();

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

uint64_t sub_10006001C(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = sub_10000FEB8(&unk_100118600, &qword_1000D0C10);
  v7 = *(a2 + v6[12]);
  v8 = *(a2 + v6[16]);
  v9 = *(a2 + v6[20]);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 24) = v11;
  *v11 = v3;
  v11[1] = sub_100060160;

  return v13(a2, v7, v8, v9);
}

uint64_t sub_100060160(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

void sub_100060270(uint64_t *a1@<X0>, void *a2@<X8>)
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

uint64_t sub_1000602D8(char *a1)
{
  v2 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19[-v4];
  v6 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
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
    sub_1000C6094();

    v12 = sub_1000C5D84();
    v13 = (*(*(v12 - 8) + 48))(v9, 1, v12);
    sub_100010F24(v9, &qword_100116260, &qword_1000CD940);
    if (v13 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

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
    sub_1000C6094();

    if (v20 == 2 && v14)
    {
      v15 = sub_1000C6F44();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      v16 = swift_allocObject();
      swift_weakInit();
      sub_1000C6F14();

      v17 = sub_1000C6F04();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = &protocol witness table for MainActor;
      v18[4] = v16;

      sub_1000B8860(0, 0, v5, &unk_1000D0C00, v18);
    }
  }

  return result;
}

uint64_t sub_100060614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_1000C5F74();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = sub_1000C6F14();
  v4[12] = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  v4[13] = v9;
  v4[14] = v8;

  return _swift_task_switch(sub_100060718, v9, v8);
}

uint64_t sub_100060718()
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
      sub_1000C5F54();
      v5 = sub_1000C5F64();
      v6 = sub_1000C6FF4();
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
      v0[18] = sub_1000C6F04();
      v13 = swift_task_alloc();
      v0[19] = v13;
      *v13 = v0;
      v13[1] = sub_1000608F8;

      return sub_100064C74();
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

uint64_t sub_1000608F8()
{
  v2 = v0;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 160) = v2;

  v7 = sub_1000C6ED4();
  if (v2)
  {
    v8 = sub_100060B3C;
  }

  else
  {
    v8 = sub_100060A54;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100060A54()
{
  v1 = v0[18];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_100060AB8, v2, v3);
}

uint64_t sub_100060AB8()
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

uint64_t sub_100060B3C()
{
  v1 = v0[18];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_100060BA0, v2, v3);
}

uint64_t sub_100060BA0()
{
  v28 = v0;
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v5 = v0[9];

  swift_unknownObjectRelease();

  sub_1000C5F54();
  swift_errorRetain();
  v6 = sub_1000C5F64();
  v7 = sub_1000C6FD4();

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
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v13 = sub_1000C6D94();
    v15 = sub_100071844(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to refetch share for network change %s", v11, 0xCu);
    sub_100010544(v12);

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

uint64_t sub_100060E84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_100060F44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100060FBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C5D84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_shouldStopAccessingSharedFileOrFolderURL;
  if (*(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_shouldStopAccessingSharedFileOrFolderURL) == 1)
  {
    sub_100017574(a1, &v19 - v14, &qword_100116260, &qword_1000CD940);
    if ((*(v5 + 48))(v15, 1, v4) == 1)
    {
      sub_100010F24(v15, &qword_100116260, &qword_1000CD940);
    }

    else
    {
      sub_1000C5D34();
      (*(v5 + 8))(v15, v4);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v5 + 48))(v13, 1, v4))
  {
    result = sub_100010F24(v13, &qword_100116260, &qword_1000CD940);
    v18 = 0;
  }

  else
  {
    (*(v5 + 16))(v8, v13, v4);
    sub_100010F24(v13, &qword_100116260, &qword_1000CD940);
    v18 = sub_1000C5D54();
    result = (*(v5 + 8))(v8, v4);
  }

  *(v2 + v16) = v18;
  return result;
}

double sub_10006127C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1000612FC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_100061380@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_100061400(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_1000C60A4();
}

uint64_t sub_1000614A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_100061520(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000615A4()
{
  v1[4] = v0;
  v2 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_1000C5D84();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_1000C6F14();
  v1[11] = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  v1[12] = v7;
  v1[13] = v6;

  return _swift_task_switch(sub_1000616E8, v7, v6);
}

uint64_t sub_1000616E8()
{
  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 136) = 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v0 + 137) & 0xFE) == 8)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v6 = *(v0 + 88);
      v7 = *(v0 + 56);
      v8 = *(v0 + 32);

      sub_100010F24(v7, &qword_100116260, &qword_1000CD940);
      sub_1000100B0();
      swift_allocError();
      *v9 = 0xD000000000000016;
      *(v9 + 8) = 0x80000001000DAA30;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 0;
      *(v9 + 40) = 0;
      swift_willThrow();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 138) = 0;
    }

    else
    {
      (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
      v13 = sub_1000170EC();
      v15 = v13;
      v16 = *(v0 + 88);
      if (!v14)
      {
        v29 = *(v0 + 88);

        if (v15)
        {
          v30 = *(v0 + 32);
          v31 = *(v30 + 16);
          swift_getKeyPath();
          swift_getKeyPath();
          v32 = v15;

          sub_1000C6094();

          if (*(v0 + 140) == 1)
          {
            v33 = *(v30 + 16);
            swift_getKeyPath();
            swift_getKeyPath();

            sub_1000C6094();

            if (*(v0 + 142) > 1u)
            {
              if (*(v0 + 142) != 2)
              {
                return sub_1000C72E4();
              }

              v34 = 2;
            }

            else if (*(v0 + 142))
            {
              v34 = 3;
            }

            else
            {
              v34 = 1;
            }
          }

          else
          {
            v34 = 1;
          }

          [v32 setPublicPermission:v34];
          v40 = *(*(v30 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
          if (v40 == 2)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            sub_1000C6094();

            LOBYTE(v40) = *(v0 + 141);
          }

          v41 = *(v0 + 72);
          v42 = *(v0 + 80);
          v43 = *(v0 + 64);
          v44 = *(v0 + 32);
          [v32 setAllowsAccessRequests:v40 & 1];
          v45 = *(v44 + 24);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 24) = v15;

          sub_1000C60A4();

          (*(v41 + 8))(v42, v43);
        }

        else
        {
          v35 = *(v0 + 72);
          v52 = *(v0 + 80);
          v36 = *(v0 + 64);
          v38 = *(v0 + 40);
          v37 = *(v0 + 48);
          v39 = *(*(v0 + 32) + 24);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 16) = 0;
          swift_retain_n();
          sub_1000C60A4();
          (*(v35 + 56))(v37, 1, 1, v36);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_100017574(v37, v38, &qword_100116260, &qword_1000CD940);

          sub_1000C60A4();
          sub_100010F24(v37, &qword_100116260, &qword_1000CD940);

          (*(v35 + 8))(v52, v36);
        }

        v46 = *(v0 + 32);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 139) = 0;

        sub_1000C60A4();
        v47 = *(v0 + 80);
        v48 = *(v0 + 48);
        v49 = *(v0 + 56);
        v50 = *(v0 + 40);

        v28 = *(v0 + 8);
        goto LABEL_10;
      }

      v51 = *(v0 + 80);
      v17 = v13;
      v18 = *(v0 + 64);
      v19 = *(v0 + 72);
      v20 = *(v0 + 32);
      v21 = v14;
      v22 = v14;

      sub_1000100B0();
      swift_allocError();
      *v23 = xmmword_1000CFF40;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 16) = v21;
      *(v23 + 40) = 1;
      swift_willThrow();

      (*(v19 + 8))(v51, v18);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 143) = 0;
    }

    sub_1000C60A4();
    v24 = *(v0 + 80);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);
    v27 = *(v0 + 40);

    v28 = *(v0 + 8);
LABEL_10:

    return v28();
  }

  v10 = *(v0 + 32);
  *(v0 + 112) = sub_100059520();
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_100061EE0;

  return sub_100008CE8();
}

uint64_t sub_100061EE0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = v2[14];
  swift_unknownObjectRelease();
  v6 = v2[13];
  v7 = v2[12];
  if (v0)
  {
    v8 = sub_100062110;
  }

  else
  {
    v8 = sub_100062034;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100062034()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 145) = 0;

  sub_1000C60A4();
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100062110()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 0;

  sub_1000C60A4();
  v3 = *(v0 + 128);
  v4 = *(v0 + 80);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000621EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 296) = a2;
  *(v4 + 304) = v3;
  *(v4 + 408) = a3;
  *(v4 + 288) = a1;
  v5 = sub_1000C5F74();
  *(v4 + 312) = v5;
  v6 = *(v5 - 8);
  *(v4 + 320) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  sub_1000C6F14();
  *(v4 + 336) = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  *(v4 + 344) = v9;
  *(v4 + 352) = v8;

  return _swift_task_switch(sub_1000622E8, v9, v8);
}

uint64_t sub_1000622E8()
{
  v1 = *(v0 + 304);
  if (*(v0 + 408))
  {
    v2 = sub_10003AB60();
    *(v0 + 368) = v2;
    v3 = v0 + 16;
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v6 = v2;
    v7 = sub_1000C6D44();
    *(v0 + 392) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_10006288C;
    v8 = swift_continuation_init();
    *(v0 + 200) = sub_10000FEB8(&unk_100118250, &qword_1000D0560);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10007B980;
    *(v0 + 168) = &unk_1001090C0;
    *(v0 + 176) = v8;
    [v6 fetchShareParticipantWithPhoneNumber:v7 completionHandler:v0 + 144];
  }

  else
  {
    v9 = sub_10003AB60();
    *(v0 + 360) = v9;
    v3 = v0 + 80;
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = v9;
    v13 = sub_1000C6D44();
    *(v0 + 376) = v13;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_1000626D0;
    v14 = swift_continuation_init();
    *(v0 + 264) = sub_10000FEB8(&unk_100118250, &qword_1000D0560);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10007B980;
    *(v0 + 232) = &unk_1001090E8;
    *(v0 + 240) = v14;
    [v12 fetchShareParticipantWithEmailAddress:v13 completionHandler:v0 + 208];
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_1000626D0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 384) = v3;
  v4 = *(v1 + 352);
  v5 = *(v1 + 344);
  if (v3)
  {
    v6 = sub_100062A48;
  }

  else
  {
    v6 = sub_100062800;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100062800()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[42];

  v4 = v0[35];

  v5 = v0[41];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_10006288C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 352);
  v5 = *(v1 + 344);
  if (v3)
  {
    v6 = sub_100062C44;
  }

  else
  {
    v6 = sub_1000629BC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000629BC()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[42];

  v4 = v0[34];

  v5 = v0[41];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_100062A48()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[42];

  swift_willThrow();

  v5 = v0[48];
  v6 = v0[41];
  sub_1000C5F54();
  swift_errorRetain();
  v7 = sub_1000C5F64();
  v8 = sub_1000C6FD4();

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
    sub_100010F24(v10, &qword_100117080, &unk_1000CC350);
  }

  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];

  (*(v13 + 8))(v12, v14);
  v15 = sub_1000C5CD4();
  sub_1000100B0();
  swift_allocError();
  *v16 = 0xD000000000000019;
  *(v16 + 8) = 0x80000001000DA9A0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 2;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100062C44()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[46];
  v4 = v0[42];

  swift_willThrow();

  v5 = v0[50];
  v6 = v0[41];
  sub_1000C5F54();
  swift_errorRetain();
  v7 = sub_1000C5F64();
  v8 = sub_1000C6FD4();

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
    sub_100010F24(v10, &qword_100117080, &unk_1000CC350);
  }

  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];

  (*(v13 + 8))(v12, v14);
  v15 = sub_1000C5CD4();
  sub_1000100B0();
  swift_allocError();
  *v16 = 0xD000000000000019;
  *(v16 + 8) = 0x80000001000DA9A0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 2;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100062E44(uint64_t a1, unsigned __int8 a2)
{
  if (sub_100059688())
  {
    v5 = *(v2 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

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

    sub_1000C6094();

    if (v13)
    {
      goto LABEL_6;
    }
  }

  v7 = *(v2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v12 != 1)
  {
    return 3;
  }

LABEL_6:
  v8 = *(v2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v11 & 1 | a2 & (a1 == 3))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100063020(char a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 220) = a2;
  *(v3 + 219) = a1;
  v4 = sub_1000C5F74();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  sub_1000C6F14();
  *(v3 + 88) = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  *(v3 + 96) = v8;
  *(v3 + 104) = v7;

  return _swift_task_switch(sub_100063128, v8, v7);
}

uint64_t sub_100063128()
{
  v1 = *(*(v0 + 48) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v2 = *(v0 + 16);
  *(v0 + 112) = v2;
  if (!v2)
  {
    v16 = *(v0 + 88);

    sub_1000100B0();
    swift_allocError();
    *v17 = 0xD000000000000043;
    *(v17 + 8) = 0x80000001000DA8D0;
    *(v17 + 16) = xmmword_1000CFF50;
    *(v17 + 32) = 0x80000001000DA920;
    *(v17 + 40) = 11;
    swift_willThrow();
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);

    v15 = *(v0 + 8);
LABEL_7:

    return v15();
  }

  v3 = *(*(v0 + 48) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (*(v0 + 216) == 1)
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    sub_1000C5F54();
    v6 = sub_1000C5F64();
    v7 = sub_1000C6FF4();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "addParticipantsToShare, doing nothing as we have a public share", v12, 2u);
    }

    (*(v11 + 8))(v9, v10);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);

    v15 = *(v0 + 8);
    goto LABEL_7;
  }

  v21 = *(v0 + 48);
  *(v0 + 24) = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = *(v0 + 32);
  *(v0 + 120) = result;
  v22 = *(result + 16);
  *(v0 + 128) = v22;
  if (v22)
  {
    *(v0 + 136) = _swiftEmptyArrayStorage;
    *(v0 + 144) = 0;
    if (*(result + 16))
    {
      v23 = *(result + 32);
      *(v0 + 152) = v23;
      v24 = *(result + 40);
      *(v0 + 160) = v24;
      v25 = *(result + 48);
      *(v0 + 221) = v25;
      sub_100079744();
      v26 = swift_task_alloc();
      *(v0 + 168) = v26;
      *v26 = v0;
      v26[1] = sub_100063684;
      v27 = *(v0 + 48);

      return sub_1000621EC(v23, v24, v25);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(v0 + 192) = _swiftEmptyArrayStorage;
    v28 = *(v0 + 112);
    v29 = *(v0 + 72);
    v30 = *(v0 + 48);
    v31 = *(v0 + 220);

    [v28 setAllowsAccessRequests:v31];
    sub_1000C5F54();

    v32 = sub_1000C5F64();
    v33 = sub_1000C6FF4();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 48);
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v37 = *(*(v0 + 40) + 16);

      *(v36 + 4) = v37;

      _os_log_impl(&_mh_execute_header, v32, v33, "addParticipantsToShare, adding %ld", v36, 0xCu);
    }

    else
    {
      v38 = *(v0 + 48);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v39 = swift_task_alloc();
    *(v0 + 200) = v39;
    *v39 = v0;
    v39[1] = sub_100063CC4;
    v40 = *(v0 + 48);

    return sub_100063F60(_swiftEmptyArrayStorage, 1, 1);
  }

  return result;
}

uint64_t sub_100063684(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v4 + 221);
  v8 = *(v3 + 160);
  v9 = *(v3 + 152);
  if (v1)
  {
    v10 = *(v4 + 136);
    v11 = *(v4 + 120);
    sub_10007974C();

    v12 = *(v4 + 96);
    v13 = *(v4 + 104);
    v14 = sub_100063E5C;
  }

  else
  {
    sub_10007974C();
    v12 = *(v4 + 96);
    v13 = *(v4 + 104);
    v14 = sub_1000637F4;
  }

  return _swift_task_switch(v14, v12, v13);
}

void sub_1000637F4()
{
  v1 = *(*(v0 + 48) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (*(v0 + 217) == 3)
  {
    v2 = 2;
  }

  else
  {
    v3 = *(*(v0 + 48) + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (*(v0 + 218) > 1u)
    {
      if (*(v0 + 218) != 2)
      {
        sub_1000C72E4();
        return;
      }

      v2 = 2;
    }

    else if (*(v0 + 218))
    {
      v2 = 3;
    }

    else
    {
      v2 = 1;
    }
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 48);
  v6 = *(v0 + 219);
  [v4 setPermission:v2];
  [v4 setRole:{sub_100062E44(objc_msgSend(v4, "permission"), v6)}];
  v7 = v4;
  sub_1000C6E74();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000C6EA4();
  }

  v8 = *(v0 + 176);
  v9 = *(v0 + 128);
  v10 = *(v0 + 144) + 1;
  sub_1000C6EC4();

  v11 = *(v0 + 24);
  if (v10 == v9)
  {
    *(v0 + 192) = v11;
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 72);
    v15 = *(v0 + 48);
    v16 = *(v0 + 220);

    [v13 setAllowsAccessRequests:v16];
    sub_1000C5F54();

    v17 = sub_1000C5F64();
    v18 = sub_1000C6FF4();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 48);
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v22 = *(*(v0 + 40) + 16);

      *(v21 + 4) = v22;

      _os_log_impl(&_mh_execute_header, v17, v18, "addParticipantsToShare, adding %ld", v21, 0xCu);
    }

    else
    {
      v31 = *(v0 + 48);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v32 = swift_task_alloc();
    *(v0 + 200) = v32;
    *v32 = v0;
    v32[1] = sub_100063CC4;
    v33 = *(v0 + 48);

    sub_100063F60(v11, 1, 1);
  }

  else
  {
    v23 = *(v0 + 144) + 1;
    *(v0 + 136) = v11;
    *(v0 + 144) = v23;
    v24 = *(v0 + 120);
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = v24 + 24 * v23;
      v26 = *(v25 + 32);
      *(v0 + 152) = v26;
      v27 = *(v25 + 40);
      *(v0 + 160) = v27;
      v28 = *(v25 + 48);
      *(v0 + 221) = v28;
      sub_100079744();
      v29 = swift_task_alloc();
      *(v0 + 168) = v29;
      *v29 = v0;
      v29[1] = sub_100063684;
      v30 = *(v0 + 48);

      sub_1000621EC(v26, v27, v28);
    }
  }
}

uint64_t sub_100063CC4()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_100063ED8;
  }

  else
  {
    v7 = v2[24];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_100063DE0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100063DE0()
{
  v1 = v0[14];
  v2 = v0[11];

  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100063E5C()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[23];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100063ED8()
{
  v1 = v0[24];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[26];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100063F60(uint64_t a1, char a2, char a3)
{
  *(v4 + 116) = a3;
  *(v4 + 115) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = sub_1000C5F74();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  sub_1000C6F14();
  *(v4 + 64) = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  *(v4 + 72) = v9;
  *(v4 + 80) = v8;

  return _swift_task_switch(sub_10006405C, v9, v8);
}

uint64_t sub_10006405C()
{
  v1 = *(*(v0 + 32) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v2 = *(v0 + 16);
  *(v0 + 88) = v2;
  if (!v2)
  {
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);

    sub_1000100B0();
    swift_allocError();
    *v20 = 0xD000000000000034;
    *(v20 + 8) = 0x80000001000DA960;
    *(v20 + 16) = xmmword_1000CFF50;
    *(v20 + 32) = 0x80000001000DA920;
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

    sub_1000C6094();

    if (*(v0 + 114) == 1)
    {
      v5 = *(v0 + 56);
      v4 = *(v0 + 64);

      sub_1000C5F54();
      v6 = sub_1000C5F64();
      v7 = sub_1000C6FF4();
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
  *(v0 + 96) = sub_1000B2C00();
  *(v0 + 104) = v16;
  *(v0 + 112) = v17;

  return _swift_task_switch(sub_10006432C, 0, 0);
}

uint64_t sub_10006432C()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000C72F4())
  {
    v3 = 0;
    v4 = *(v0 + 104);
    v5 = v1 & 0xC000000000000001;
    v6 = *(v0 + 24) + 32;
    v7 = &unk_100113000;
    v20 = *(v0 + 100);
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v9 = *(v0 + 24);
        v10 = sub_1000C7254();
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
          return sub_1000C72E4();
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
      [v1 v7[339]];
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
        v7 = &unk_100113000;
        goto LABEL_5;
      }

      v8 = 2;
      v7 = &unk_100113000;
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

  return _swift_task_switch(sub_10001B330, v17, v18);
}

uint64_t sub_100064604()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5F54();
  v5 = sub_1000C5F64();
  v6 = sub_1000C6FB4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100071844(0xD00000000000001ELL, 0x80000001000DB6A0, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Finish", v7, 0xCu);
    sub_100010544(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10006479C(uint64_t a1, void *a2, void *a3)
{
  v26 = a1;
  v27 = a3;
  v5 = sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  v6 = *(v5 - 8);
  v28 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000CD0E0;
  *(v9 + 32) = a2;
  v10 = objc_allocWithZone(CKFetchShareParticipantsOperation);
  sub_100010778(0, &qword_100118678, CKUserIdentityLookupInfo_ptr);
  v11 = a2;
  isa = sub_1000C6E84().super.isa;

  v24 = [v10 initWithUserIdentityLookupInfos:isa];

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v25 = *(v6 + 16);
  v14 = v5;
  v25(v8, a1, v5);
  v15 = *(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  v17 = *(v6 + 32);
  v23 = v6 + 32;
  v18 = v14;
  v17(v16 + ((v15 + 32) & ~v15), v8, v14);
  v19 = v11;

  v20 = v24;
  sub_1000C7114();
  v25(v8, v26, v18);
  v21 = swift_allocObject();
  *(v21 + 16) = v13;
  v17(v21 + ((v15 + 24) & ~v15), v8, v18);

  sub_1000C7124();
  [v27 addOperation:v20];
}

void sub_100064A70(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_100010778(0, &qword_100116760, NSObject_ptr);
  if (sub_1000C7184())
  {
    if (a3)
    {
      swift_errorRetain();
      sub_10000FEB8(&qword_100118670, &qword_1000D1068);
      sub_1000C6EE4();
    }

    else
    {
      swift_beginAccess();
      v8 = *(a5 + 16);
      *(a5 + 16) = a2;
      v9 = a2;
    }
  }
}

uint64_t sub_100064B48(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  }

  else
  {
    swift_beginAccess();
    v4 = *(a3 + 16);
    if (v4)
    {
      v8 = *(a3 + 16);
      v5 = v4;
      sub_10000FEB8(&qword_100118670, &qword_1000D1068);
      return sub_1000C6EF4();
    }

    sub_1000100B0();
    swift_allocError();
    *v7 = 0xD00000000000001ELL;
    *(v7 + 8) = 0x80000001000DB6A0;
    *(v7 + 16) = xmmword_1000CFF00;
    *(v7 + 32) = 0x80000001000DB730;
    *(v7 + 40) = 11;
    sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  }

  return sub_1000C6EE4();
}

uint64_t sub_100064C74()
{
  v1[4] = v0;
  v2 = sub_1000C5F74();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = sub_1000C5D84();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_1000C6F14();
  v1[18] = sub_1000C6F04();
  v10 = sub_1000C6ED4();
  v1[19] = v10;
  v1[20] = v9;

  return _swift_task_switch(sub_100064E44, v10, v9);
}

uint64_t sub_100064E44()
{
  v59 = v0;
  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

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
  sub_1000C6094();

  v6 = *(v3 + 48);
  *(v0 + 168) = v6;
  *(v0 + 176) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);

    sub_100010F24(v8, &qword_100116260, &qword_1000CD940);
    sub_1000100B0();
    swift_allocError();
    *v9 = 0xD000000000000016;
    *(v9 + 8) = 0x80000001000DAA30;
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
  sub_1000C5F54();
  (*(v34 + 16))(v31, v32, v33);
  v36 = sub_1000C5F64();
  v37 = sub_1000C6FF4();
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
    sub_1000799C8(&qword_100116300, &type metadata accessor for URL);
    v46 = sub_1000C7374();
    v55 = v42;
    v48 = v47;
    v54 = v37;
    v49 = *(v40 + 8);
    v49(v39, v41);
    v50 = sub_100071844(v46, v48, &v58);

    *(v45 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v36, v54, "Fetching share for URL: %s", v45, 0xCu);
    sub_100010544(v56);

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
  v51[1] = sub_100065330;
  v52 = *(v0 + 136);
  v53 = *(v0 + 88);

  return sub_10001E6D0(v53, v52);
}

uint64_t sub_100065330(uint64_t a1)
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
    v9 = sub_1000657EC;
  }

  else
  {
    v9 = sub_100065474;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100065474()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  sub_100020D0C(v6, v5, &qword_100116260, &qword_1000CD940);
  sub_100017574(v5, v7, &qword_100116260, &qword_1000CD940);
  LODWORD(v4) = v2(v7, 1, v4);
  sub_100010F24(v7, &qword_100116260, &qword_1000CD940);
  v8 = v0[25];
  if (v4 != 1)
  {
    v9 = [objc_allocWithZone(BRCKShareSubitem) initWithShare:v8];

    v8 = v9;
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[4];
  sub_100017574(v0[12], v10, &qword_100116260, &qword_1000CD940);
  v13 = *(v12 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL);
  sub_100017574(v10, v11, &qword_100116260, &qword_1000CD940);

  sub_10000DEEC(v11);

  sub_100010F24(v10, &qword_100116260, &qword_1000CD940);
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

    sub_1000C60A4();
    sub_100010F24(v19, &qword_100116260, &qword_1000CD940);
    v15(v16, v17);
  }

  else
  {
    v33 = v0[23];
    v21 = v0[8];
    v20 = v0[9];
    v0[2] = 0;
    swift_retain_n();
    sub_1000C60A4();
    (*(v18 + 56))(v20, 1, 1, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100017574(v20, v21, &qword_100116260, &qword_1000CD940);

    sub_1000C60A4();
    sub_100010F24(v20, &qword_100116260, &qword_1000CD940);

    sub_100010F24(v19, &qword_100116260, &qword_1000CD940);
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

uint64_t sub_1000657EC()
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

uint64_t sub_1000658E8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_1000C6F14();
  v3[12] = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  v3[13] = v5;
  v3[14] = v4;

  return _swift_task_switch(sub_100065984, v5, v4);
}

uint64_t sub_100065984()
{
  v1 = type metadata accessor for CloudKitOperations();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[15] = v4;
  v4[2] = 0xD000000000000021;
  v4[3] = 0x80000001000D7770;
  v4[4] = 0xD000000000000016;
  v4[5] = 0x80000001000D77A0;
  v4[6] = 0xD00000000000001DLL;
  v4[7] = 0x80000001000D77C0;
  v0[6] = 0;
  v0[5] = 0;
  sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
  sub_1000C6054();

  return _swift_task_switch(sub_100065A8C, 0, 0);
}

uint64_t sub_100065A8C()
{
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_task_alloc();
  v0[16] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = sub_10000FEB8(&qword_100118630, &qword_1000D0F18);
  *v6 = v0;
  v6[1] = sub_100065BA4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002DLL, 0x80000001000DA250, sub_10007B414, v4, v7);
}

uint64_t sub_100065BA4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100065F14;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_100065CC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100065CC0()
{
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  return _swift_task_switch(sub_100065CE8, *(v0 + 104), *(v0 + 112));
}

uint64_t sub_100065CE8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *(v2 + 24);
  if (v3)
  {
    v5 = v0[10];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[8] = v5;
    v6 = v5;

    sub_1000C60A4();
  }

  else
  {
    v7 = v0[20];

    v8 = v7;
    sub_1000860A0(v7, 0);
  }

  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  v12 = v0[15];
  v13 = v0[11];
  v14 = *(v13 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_ckMetadata);
  *(v13 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_ckMetadata) = v9;
  v15 = v9;

  v16 = *(v13 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[7] = v11;

  v17 = v11;
  sub_1000C60A4();
  swift_setDeallocating();
  v18 = *(v12 + 3);

  v19 = *(v12 + 5);

  v20 = *(v12 + 7);

  v21 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18CloudKitOperations__ckSourceAppBundleID;
  v22 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  (*(*(v22 - 8) + 8))(&v12[v21], v22);
  v23 = *(*v12 + 48);
  v24 = *(*v12 + 52);
  swift_deallocClassInstance();

  v25 = v0[1];

  return v25();
}

uint64_t sub_100065F14()
{
  v1 = v0[16];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_100065F78, v2, v3);
}

uint64_t sub_100065F78()
{
  v1 = v0[15];
  v2 = v0[12];

  swift_setDeallocating();
  v3 = *(v1 + 3);

  v4 = *(v1 + 5);

  v5 = *(v1 + 7);

  v6 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18CloudKitOperations__ckSourceAppBundleID;
  v7 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  (*(*(v7 - 8) + 8))(&v1[v6], v7);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 52);
  swift_deallocClassInstance();
  v10 = v0[1];
  v11 = v0[18];

  return v10();
}

uint64_t sub_100066080(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1000C5F74();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  sub_1000C6F14();
  v2[16] = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  v2[17] = v8;
  v2[18] = v7;

  return _swift_task_switch(sub_1000661B8, v8, v7);
}

void sub_1000661B8()
{
  v1 = *(v0 + 72);
  if (v1 < 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v0 + 152) = BRCloudDocsErrorDomain;
  *(v0 + 160) = v1;
  v2 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 57) != 1)
  {
    goto LABEL_5;
  }

  v3 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 58) - 1 < 3)
  {
LABEL_12:
    v8 = *(v0 + 128);

    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 104);

    v12 = *(v0 + 8);

    v12();
    return;
  }

  if (*(v0 + 58))
  {
LABEL_5:
    v4 = *(v0 + 160);
    if (v4 != 1)
    {
      while (1)
      {
        if (v4 < 2)
        {
          __break(1u);
          goto LABEL_20;
        }

        *(v0 + 160) = v4 - 1;
        v5 = *(v0 + 80);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        if (*(v0 + 57) == 1)
        {
          v6 = *(v0 + 80);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000C6094();

          v7 = *(v0 + 58);
          if (v7 != 4)
          {
            break;
          }
        }

        v4 = *(v0 + 160);
        if (v4 == 1)
        {
          goto LABEL_12;
        }
      }

      if ((v7 - 1) >= 3)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_12;
  }

LABEL_15:
  v13 = *(v0 + 120);
  v14 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v15 = sub_1000C5D84();
  *(v0 + 168) = v15;
  v16 = *(v15 - 8);
  *(v0 + 176) = v16;
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_10006657C;
  v18 = *(v0 + 120);

  sub_100012E80(v18, 0);
}

uint64_t sub_10006657C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_100066A00;
  }

  else
  {
    (*(v2[22] + 8))(v2[15], v2[21]);
    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_1000666A8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000666A8()
{
  v1 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 232) = 2;

  result = sub_1000C60A4();
  v3 = *(v0 + 160);
  if (v3 == 1)
  {
LABEL_8:
    v7 = *(v0 + 128);

    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 104);

    v11 = *(v0 + 8);

    return v11();
  }

  while (1)
  {
    if (v3 < 2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    *(v0 + 160) = v3 - 1;
    v4 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (*(v0 + 57))
    {
      v5 = *(v0 + 80);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v6 = *(v0 + 58);
      if (v6 != 4)
      {
        break;
      }
    }

    v3 = *(v0 + 160);
    if (v3 == 1)
    {
      goto LABEL_8;
    }
  }

  if ((v6 - 1) < 3)
  {
    goto LABEL_8;
  }

  v12 = *(v0 + 120);
  v13 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v14 = sub_1000C5D84();
  *(v0 + 168) = v14;
  v15 = *(v14 - 8);
  *(v0 + 176) = v15;
  result = (*(v15 + 48))(v12, 1, v14);
  if (result == 1)
  {
    goto LABEL_16;
  }

  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_10006657C;
  v17 = *(v0 + 120);

  return sub_100012E80(v17, 0);
}

uint64_t sub_100066A00()
{
  v1 = *(v0 + 192);
  (*(*(v0 + 176) + 8))(*(v0 + 120), *(v0 + 168));
  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = *(v0 + 192);
    v17 = *(v0 + 128);
    v18 = *(v0 + 104);

    v19 = *(v0 + 64);

    sub_1000C5F54();
    swift_errorRetain();
    v20 = sub_1000C5F64();
    v21 = sub_1000C6FD4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 192);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "prepFolderSharingIfNeeded folderSharingStage -> .failed, unexpected error: %@", v23, 0xCu);
      sub_100010F24(v24, &qword_100117080, &unk_1000CC350);
    }

    v26 = *(v0 + 192);
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);

    (*(v28 + 8))(v27, v29);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 60) = 3;

    sub_1000C60A4();
    goto LABEL_16;
  }

  v2 = *(v0 + 192);
  v3 = *(v0 + 80);

  v4 = *(v0 + 24);
  v83 = *(v0 + 16);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 200) = v4;
  *(v0 + 208) = v6;
  v7 = *(v0 + 48);
  *(v0 + 216) = v7;
  v8 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v0 + 61) & 0xFE) == 2)
  {
    v9 = *(v0 + 128);

    v10 = v83;
    v11 = v4;
    v12 = v6;
    v13 = v5;
    v14 = v7;
    v15 = v8;
LABEL_15:
    sub_1000494BC(v10, v11, v12, v13, v14, v15);
    v51 = *(v0 + 64);
LABEL_16:

    goto LABEL_17;
  }

  v81 = v6;
  v82 = v7;
  if (v8 != 3)
  {
    v41 = v8;
    v42 = *(v0 + 128);
    v43 = *(v0 + 112);

    sub_1000C5F54();
    v44 = sub_1000C5F64();
    v45 = sub_1000C6FD4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "prepFolderSharingIfNeeded unexpected error, folderSharingStage -> .failed", v46, 2u);
    }

    v47 = *(v0 + 112);
    v49 = *(v0 + 88);
    v48 = *(v0 + 96);
    v50 = *(v0 + 80);

    (*(v48 + 8))(v47, v49);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 62) = 3;

    sub_1000C60A4();
    v14 = v82;
    v10 = v83;
    v11 = v4;
    v13 = v5;
    v12 = v6;
    v15 = v41;
    goto LABEL_15;
  }

  v31 = v5;
  v32 = v4;
  v33 = v6;
  if (!v6)
  {
    v34 = v82;

    v35 = 0;
    goto LABEL_29;
  }

  v80 = *(v0 + 152);
  v34 = v82;
  sub_1000199B8(v83, v32, v6, v31, v82, 3u);
  v35 = v6;
  v36 = [v35 domain];
  v37 = sub_1000C6D84();
  v39 = v38;

  if (v37 == sub_1000C6D84() && v39 == v40)
  {
  }

  else
  {
    v57 = sub_1000C73A4();

    if ((v57 & 1) == 0)
    {

      goto LABEL_29;
    }
  }

  v58 = [v35 code];

  if (v58 != 7)
  {
LABEL_29:
    v67 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_1000C60A4();
    sub_100067838(2u, v33);

    sub_1000494BC(v83, v32, v33, v31, v34, 3u);
    v68 = *(v0 + 64);

    v69 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 232) = 2;

    v66 = sub_1000C60A4();
    v70 = *(v0 + 160);
    if (v70 != 1)
    {
      while (v70 >= 2)
      {
        *(v0 + 160) = v70 - 1;
        v71 = *(v0 + 80);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        if (*(v0 + 57))
        {
          v72 = *(v0 + 80);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000C6094();

          if (*(v0 + 58) != 4)
          {
            if (*(v0 + 58))
            {
              goto LABEL_40;
            }

            v73 = *(v0 + 120);
            v74 = *(v0 + 80);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v0 + 59) = 1;

            sub_1000C60A4();
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1000C6094();

            v75 = sub_1000C5D84();
            *(v0 + 168) = v75;
            v76 = *(v75 - 8);
            *(v0 + 176) = v76;
            v66 = (*(v76 + 48))(v73, 1, v75);
            if (v66 != 1)
            {
              v77 = swift_task_alloc();
              *(v0 + 184) = v77;
              *v77 = v0;
              v77[1] = sub_10006657C;
              v78 = *(v0 + 120);

              return sub_100012E80(v78, 0);
            }

LABEL_42:
            __break(1u);
            return static Task<>.sleep(nanoseconds:)(v66);
          }
        }

        v70 = *(v0 + 160);
        if (v70 == 1)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_40:
    v79 = *(v0 + 128);

LABEL_17:
    v53 = *(v0 + 112);
    v52 = *(v0 + 120);
    v54 = *(v0 + 104);

    v55 = *(v0 + 8);

    return v55();
  }

  v59 = *(v0 + 160);
  sub_1000494BC(v83, v32, v81, v31, v82, 3u);
  if (v59 <= 0)
  {
    v60 = *(v0 + 152);
    v61 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 233) = 3;

    sub_1000C60A4();
    v62 = [objc_allocWithZone(NSError) initWithDomain:v60 code:46 userInfo:0];
    sub_100067838(2u, v62);
  }

  v63 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 234) = 0;

  sub_1000C60A4();
  v64 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v65 = swift_task_alloc();
  *(v0 + 224) = v65;
  *v65 = v0;
  v65[1] = sub_100067400;
  v66 = 1000000000;

  return static Task<>.sleep(nanoseconds:)(v66);
}

uint64_t sub_100067400()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = sub_10007B930;
  }

  else
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = sub_100067524;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100067524()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);

  v3 = *(v0 + 64);

  v5 = *(v0 + 160);
  if (v5 == 1)
  {
LABEL_8:
    v9 = *(v0 + 128);

    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 104);

    v13 = *(v0 + 8);

    return v13();
  }

  while (1)
  {
    if (v5 < 2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    *(v0 + 160) = v5 - 1;
    v6 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (*(v0 + 57))
    {
      v7 = *(v0 + 80);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v8 = *(v0 + 58);
      if (v8 != 4)
      {
        break;
      }
    }

    v5 = *(v0 + 160);
    if (v5 == 1)
    {
      goto LABEL_8;
    }
  }

  if ((v8 - 1) < 3)
  {
    goto LABEL_8;
  }

  v14 = *(v0 + 120);
  v15 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v16 = sub_1000C5D84();
  *(v0 + 168) = v16;
  v17 = *(v16 - 8);
  *(v0 + 176) = v17;
  result = (*(v17 + 48))(v14, 1, v16);
  if (result == 1)
  {
    goto LABEL_16;
  }

  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_10006657C;
  v19 = *(v0 + 120);

  return sub_100012E80(v19, 0);
}

void sub_100067838(unsigned __int8 a1, void *a2)
{
  v4 = a1;
  v5 = sub_1000C5F74();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  if (v4 == 6)
  {
    sub_100059520();
    v63 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    sub_10000B6FC(v63, 0);
    swift_unknownObjectRelease();
    v13 = v63;
  }

  else
  {
    v14 = v2;
    if (a2)
    {
      v15 = a2;
      sub_1000C5F54();
      v16 = v15;
      v17 = sub_1000C5F64();
      v18 = sub_1000C6FD4();

      if (os_log_type_enabled(v17, v18))
      {
        LODWORD(v59) = v18;
        v61 = v17;
        v63 = v6;
        v19 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v64 = v58;
        v60 = v19;
        *v19 = 136315394;
        v20 = sub_1000C6E54();
        v22 = v21;
        if (("or" & 0x2000000000000000) != 0)
        {
          v23 = ("or" >> 40) & 0xF0000;
        }

        else
        {
          v23 = 2031616;
        }

        v62 = v14;
        if (v23)
        {
          v24 = v20;
          while (sub_1000C6E54() != v24 || v25 != v22)
          {
            v26 = sub_1000C73A4();

            if (v26)
            {
              goto LABEL_31;
            }

            if ((v23 ^ sub_1000C6DF4()) < 0x4000)
            {
              goto LABEL_16;
            }
          }

LABEL_31:

          sub_1000C6E64();
          v41 = sub_1000C6DC4();
          v28 = v42;

          v27 = v41;
        }

        else
        {
LABEL_16:

          v27 = 0;
          v28 = 0xE000000000000000;
        }

        v44 = v60;
        v43 = v61;
        v45 = sub_100071844(v27, v28, &v64);

        *(v44 + 1) = v45;
        *(v44 + 6) = 2080;
        v46 = v16;
        v47 = [v46 description];
        v48 = sub_1000C6D84();
        v50 = v49;

        v51 = sub_100071844(v48, v50, &v64);

        *(v44 + 14) = v51;
        _os_log_impl(&_mh_execute_header, v43, v59, "%s cancelling via extension with error: %s", v44, 0x16u);
        swift_arrayDestroy();

        (*(v63 + 1))(v12, v5);
      }

      else
      {

        (v6[1])(v12, v5);
      }

      sub_100059520();
      sub_10000B6FC(v16, 1u);
    }

    else
    {
      sub_1000C5F54();
      v29 = sub_1000C5F64();
      v30 = sub_1000C6FF4();
      if (os_log_type_enabled(v29, v30))
      {
        LODWORD(v60) = v30;
        v63 = v6;
        v31 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v64 = v59;
        v61 = v31;
        LODWORD(v31->isa) = 136315138;
        v32 = sub_1000C6E54();
        v34 = v33;
        if (("or" & 0x2000000000000000) != 0)
        {
          v35 = ("or" >> 40) & 0xF0000;
        }

        else
        {
          v35 = 2031616;
        }

        v62 = v14;
        if (v35)
        {
          v36 = v32;
          while (sub_1000C6E54() != v36 || v37 != v34)
          {
            v38 = sub_1000C73A4();

            if (v38)
            {
              goto LABEL_35;
            }

            if ((v35 ^ sub_1000C6DF4()) < 0x4000)
            {
              goto LABEL_27;
            }
          }

LABEL_35:

          sub_1000C6E64();
          v52 = sub_1000C6DC4();
          v40 = v53;

          v39 = v52;
        }

        else
        {
LABEL_27:

          v39 = 0;
          v40 = 0xE000000000000000;
        }

        v54 = sub_100071844(v39, v40, &v64);

        v55 = v61;
        *(&v61->isa + 4) = v54;
        _os_log_impl(&_mh_execute_header, v29, v60, "%s dismissing via extension without error", v55, 0xCu);
        sub_100010544(v59);

        (*(v63 + 1))(v10, v5);
      }

      else
      {

        (v6[1])(v10, v5);
      }

      sub_100059520();
      sub_10000816C();
      v56 = sub_1000077D8();
      if (v56)
      {
        [v56 _dismissViewControllerWithError:0];
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100067EF4()
{
  v1[6] = v0;
  v2 = sub_1000C5F74();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  sub_1000C6F14();
  v1[12] = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  v1[13] = v7;
  v1[14] = v6;

  return _swift_task_switch(sub_10006802C, v7, v6);
}

uint64_t sub_10006802C()
{
  v38 = v0;
  v1 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = 2;

  sub_1000C60A4();
  v2 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v3 = *(v0 + 16);
  *(v0 + 120) = v3;
  if (v3)
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if ((*(v0 + 170) & 0xFE) == 8)
    {
      v6 = 0;
    }

    else
    {
      v10 = *(v0 + 48);
      v6 = sub_10003AB60();
    }

    *(v0 + 128) = v6;
    v28 = *(v0 + 48);
    v29 = sub_1000B2C00();
    v31 = v30;
    v33 = v32;
    *(v0 + 136) = v30;
    v34 = swift_task_alloc();
    *(v0 + 144) = v34;
    *v34 = v0;
    v34[1] = sub_100068500;
    v35 = *(v0 + 88);

    return sub_10001EBFC(v35, v3, v6, v29 & 0x101FFFFFFFFFFLL, v31, v33 & 0x101);
  }

  else
  {
    v7 = *(v0 + 96);

    sub_1000100B0();
    v8 = swift_allocError();
    *v9 = xmmword_1000CFF60;
    *(v9 + 16) = xmmword_1000CFF10;
    *(v9 + 32) = 0x80000001000DA8A0;
    *(v9 + 40) = 11;
    swift_willThrow();
    v11 = *(v0 + 72);
    v12 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 169) = 0;

    sub_1000C60A4();
    sub_1000C5F54();
    swift_errorRetain();
    v13 = sub_1000C5F64();
    v14 = sub_1000C6FD4();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 64);
    v36 = *(v0 + 72);
    v17 = *(v0 + 56);
    if (v15)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v18 = 136315138;
      *(v0 + 24) = v8;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v20 = sub_1000C6D94();
      v22 = sub_100071844(v20, v21, &v37);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "saveShare error: %s", v18, 0xCu);
      sub_100010544(v19);
    }

    (*(v16 + 8))(v36, v17);
    v23 = *(v0 + 80);
    v24 = *(v0 + 88);
    v25 = *(v0 + 72);
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_100068500(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = (*v2)[18];
  v6 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  v7 = v3[17];
  v8 = v3[16];
  sub_100010F24(v3[11], &qword_100116260, &qword_1000CD940);

  v9 = v3[14];
  v10 = v3[13];
  if (v1)
  {
    v11 = sub_1000689B4;
  }

  else
  {
    v11 = sub_1000686A8;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_1000686A8()
{
  v34 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);

  v5 = *(v4 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;

  v6 = v1;
  sub_1000C60A4();
  sub_1000C5F54();
  v7 = v6;
  v8 = sub_1000C5F64();
  v9 = sub_1000C6FF4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 152);
    v32 = *(v0 + 80);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315394;
    *(v0 + 40) = [v10 rootRecordID];
    sub_10000FEB8(&unk_100118240, &qword_1000D0390);
    v15 = sub_1000C6D94();
    v17 = sub_100071844(v15, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 1026;
    v18 = [v10 allowsAccessRequests];

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "saveShare succeeded, rootRecordID: %s, share allowAccessRequests: %{BOOL,public}d", v13, 0x12u);
    sub_100010544(v14);

    (*(v11 + 8))(v32, v12);
  }

  else
  {
    v19 = *(v0 + 152);
    v20 = *(v0 + 80);
    v21 = *(v0 + 56);
    v22 = *(v0 + 64);

    (*(v22 + 8))(v20, v21);
  }

  v23 = *(v0 + 48);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10000B5CC();
    swift_unknownObjectRelease();
  }

  v24 = *(v0 + 152);
  v25 = *(v0 + 120);
  v26 = *(v0 + 80);
  v27 = *(v0 + 88);
  v28 = *(v0 + 72);
  v29 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 171) = 3;

  sub_1000C60A4();

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000689B4()
{
  v25 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = *(v0 + 160);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 169) = 0;

  sub_1000C60A4();
  sub_1000C5F54();
  swift_errorRetain();
  v6 = sub_1000C5F64();
  v7 = sub_1000C6FD4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 64);
    v23 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v0 + 24) = v3;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v12 = sub_1000C6D94();
    v14 = sub_100071844(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "saveShare error: %s", v10, 0xCu);
    sub_100010544(v11);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 56);

    (*(v16 + 8))(v15, v17);
  }

  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  v20 = *(v0 + 72);
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100068C08()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5F54();
  v5 = sub_1000C5F64();
  v6 = sub_1000C6FB4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Finish", v7, 0xCu);
    sub_100010544(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100068DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1000C6F14();
  v4[4] = sub_1000C6F04();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_100068E50;

  return sub_100069028();
}

uint64_t sub_100068E50()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_1000C6ED4();

  return _swift_task_switch(sub_100068F8C, v5, v4);
}

uint64_t sub_100068F8C()
{
  v1 = v0[4];
  v2 = v0[2];

  sub_100059520();
  sub_10000816C();
  v3 = sub_1000077D8();
  if (v3)
  {
    [v3 _dismissViewControllerWithError:0];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_100069028()
{
  v1[2] = v0;
  v2 = sub_1000C5F74();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1000C5D84();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v1[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_1000C6F14();
  v1[15] = sub_1000C6F04();
  v11 = sub_1000C6ED4();
  v1[16] = v11;
  v1[17] = v10;

  return _swift_task_switch(sub_1000691E4, v11, v10);
}

uint64_t sub_1000691E4()
{
  v1 = v0[14];
  v2 = v0[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1000692D0;
  v4 = v0[14];
  v5 = v0[2];

  return sub_100055638(v4);
}

uint64_t sub_1000692D0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  sub_100010F24(v4, &qword_100116260, &qword_1000CD940);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1000696F4;
  }

  else
  {
    v8 = sub_100069438;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100069438()
{
  v1 = v0[15];

  v2 = v0[13];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(v0[2] + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v6 = *(v4 + 48);
  v7 = v6(v2, 1, v3);
  v8 = v0[13];
  if (v7 == 1)
  {
    sub_100010F24(v0[13], &qword_100116260, &qword_1000CD940);
  }

  else
  {
    v9 = v0[11];
    v10 = v0[12];
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    (*(v12 + 32))(v11, v0[13], v13);
    (*(v12 + 16))(v10, v11, v13);
    (*(v12 + 56))(v10, 0, 1, v13);
    v14 = [objc_opt_self() generalPasteboard];
    sub_100017574(v10, v9, &qword_100116260, &qword_1000CD940);
    if (v6(v9, 1, v13) == 1)
    {
      v16 = 0;
    }

    else
    {
      v17 = v0[11];
      v18 = v0[6];
      v19 = v0[7];
      sub_1000C5D24(v15);
      v16 = v20;
      (*(v19 + 8))(v17, v18);
    }

    v21 = v0[12];
    v23 = v0[7];
    v22 = v0[8];
    v24 = v0[6];
    [v14 setURL:v16];

    sub_100010F24(v21, &qword_100116260, &qword_1000CD940);
    (*(v23 + 8))(v22, v24);
  }

  v26 = v0[13];
  v25 = v0[14];
  v28 = v0[11];
  v27 = v0[12];
  v29 = v0[10];
  v30 = v0[8];
  v31 = v0[5];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1000696F4()
{
  v59 = v0;
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[5];
  v4 = v0[2];

  sub_1000C5F54();

  swift_errorRetain();
  v5 = sub_1000C5F64();
  v6 = sub_1000C6FD4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  if (v7)
  {
    v9 = v0[10];
    v54 = v0[9];
    v55 = v0[4];
    v56 = v0[3];
    v57 = v0[5];
    v53 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v58 = v12;
    *v10 = 136315394;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v13 = sub_1000C6D94();
    v15 = sub_100071844(v13, v14, &v58);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch sharing URL to copy to pasteboard %s: %@", v10, 0x16u);
    sub_100010F24(v11, &qword_100117080, &unk_1000CC350);

    sub_100010544(v12);

    (*(v55 + 8))(v57, v56);
  }

  else
  {
    v18 = v0[4];
    v17 = v0[5];
    v19 = v0[3];
    v20 = v0[19];

    (*(v18 + 8))(v17, v19);
  }

  v21 = v0[13];
  v22 = v0[6];
  v23 = v0[7];
  v24 = *(v0[2] + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v25 = *(v23 + 48);
  v26 = v25(v21, 1, v22);
  v27 = v0[13];
  if (v26 == 1)
  {
    sub_100010F24(v0[13], &qword_100116260, &qword_1000CD940);
  }

  else
  {
    v28 = v0[11];
    v29 = v0[12];
    v31 = v0[7];
    v30 = v0[8];
    v32 = v0[6];
    (*(v31 + 32))(v30, v0[13], v32);
    (*(v31 + 16))(v29, v30, v32);
    (*(v31 + 56))(v29, 0, 1, v32);
    v33 = [objc_opt_self() generalPasteboard];
    sub_100017574(v29, v28, &qword_100116260, &qword_1000CD940);
    if (v25(v28, 1, v32) == 1)
    {
      v35 = 0;
    }

    else
    {
      v36 = v0[11];
      v37 = v0[6];
      v38 = v0[7];
      sub_1000C5D24(v34);
      v35 = v39;
      (*(v38 + 8))(v36, v37);
    }

    v40 = v0[12];
    v42 = v0[7];
    v41 = v0[8];
    v43 = v0[6];
    [v33 setURL:v35];

    sub_100010F24(v40, &qword_100116260, &qword_1000CD940);
    (*(v42 + 8))(v41, v43);
  }

  v45 = v0[13];
  v44 = v0[14];
  v47 = v0[11];
  v46 = v0[12];
  v48 = v0[10];
  v49 = v0[8];
  v50 = v0[5];

  v51 = v0[1];

  return v51();
}

uint64_t sub_100069BBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_1000798CC(v0 + 40);
  sub_1000798F4(*(v0 + 56), *(v0 + 64));
  v4 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isDelegateInitialized;
  v5 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v7 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__executionMode;
  v8 = sub_10000FEB8(&qword_1001178A8, &unk_1000CF2C0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingType;
  v10 = sub_10000FEB8(&qword_100118260, &qword_1000D0620);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingStage;
  v12 = sub_10000FEB8(&qword_100118268, &qword_1000D0628);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__addedAddresses;
  v14 = sub_10000FEB8(&qword_100118270, &qword_1000D0630);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__createOrLoadStage;
  v16 = sub_10000FEB8(&qword_100118278, &qword_1000D0638);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__addingAddressesStage;
  v18 = sub_10000FEB8(&unk_100118280, &unk_1000D0640);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__savingStage;
  v20 = sub_10000FEB8(&qword_100116F30, &qword_1000CD630);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__alertNowShowing;
  v22 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v6(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isShowingAlert, v5);
  v6(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isFolderShare, v5);
  v23 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL);

  v6(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isFolderSubshare, v5);
  v24 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderTitle);

  v25 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckFolderSubitemName);

  v26 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__folderSharingStage;
  v27 = sub_10000FEB8(&qword_100118298, &qword_1000D0658);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  v28 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__shareSaveStatus;
  v29 = sub_10000FEB8(&unk_1001182A0, &unk_1000D0660);
  (*(*(v29 - 8) + 8))(v0 + v28, v29);
  v30 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData);
  swift_unknownObjectRelease();
  v31 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingOptionsAllowedFromSPI;
  v32 = sub_10000FEB8(&qword_100116988, &qword_1000CC8A8);
  (*(*(v32 - 8) + 8))(v0 + v31, v32);
  v33 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__yourNameAndEmail;
  v34 = sub_10000FEB8(&qword_1001182B0, &qword_1000D0670);
  (*(*(v34 - 8) + 8))(v0 + v33, v34);
  v35 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharedFileOrFolderURL;
  v36 = sub_10000FEB8(&qword_1001182B8, &qword_1000D0678);
  (*(*(v36 - 8) + 8))(v0 + v35, v36);
  v37 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__itemUTI;
  v38 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  v39 = *(*(v38 - 8) + 8);
  v39(v0 + v37, v38);
  v6(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isShareRoot, v5);
  v40 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnail;
  v41 = sub_10000FEB8(&qword_100116E48, &qword_1000CD218);
  (*(*(v41 - 8) + 8))(v0 + v40, v41);
  v42 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnailFromCloudKitSPI;
  v43 = sub_10000FEB8(&unk_1001182D0, &unk_1000D0680);
  v44 = *(*(v43 - 8) + 8);
  v44(v0 + v42, v43);
  v44(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnailFromDocumentSPI, v43);
  v45 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__itemTitle;
  v46 = sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  v47 = *(*(v46 - 8) + 8);
  v47(v0 + v45, v46);
  v39(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sourceAppBundleID, v38);
  v47(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sectionTitleForAuxiliaryToggles, v46);
  v47(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__primaryCheckboxTitle, v46);
  v47(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__secondaryCheckboxTitle, v46);
  v6(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__primaryCheckboxState, v5);
  v6(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__secondaryCheckboxState, v5);
  v48 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckContainerIdentifier;
  v49 = sub_10000FEB8(&qword_1001182E0, &qword_1000D0690);
  (*(*(v49 - 8) + 8))(v0 + v48, v49);
  v47(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__helpAnchor, v46);
  v50 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__participantDetails;
  v51 = sub_10000FEB8(&qword_1001182E8, &qword_1000D0698);
  (*(*(v51 - 8) + 8))(v0 + v50, v51);
  v52 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_networkMonitor);

  return v0;
}

uint64_t sub_10006A3E8()
{
  sub_100069BBC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10006A440()
{
  v0 = sub_1000C6D44();
  v1 = [objc_opt_self() imageNamed:v0];

  if (!v1)
  {
    v1 = [objc_allocWithZone(UIImage) init];
  }

  qword_100117E30 = v1;
}

uint64_t sub_10006A4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1000C6F14();
  v5[3] = sub_1000C6F04();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10006A598;

  return sub_100063F60(a5, 1, 0);
}

uint64_t sub_10006A598()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1000C6ED4();
  if (v2)
  {
    v8 = sub_10006A758;
  }

  else
  {
    v8 = sub_10006A6F4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10006A6F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006A758()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_10006A7BC()
{
  v1 = sub_1000C5F74();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = sub_1000C6F14();
  v0[6] = sub_1000C6F04();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10006A8C4;

  return sub_100067EF4();
}

uint64_t sub_10006A8C4()
{
  v2 = v0;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 64) = v2;

  v7 = sub_1000C6ED4();
  if (v2)
  {
    v8 = sub_10006AB2C;
  }

  else
  {
    v8 = sub_10006AA20;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10006AA20()
{
  v1 = v0[6];
  v2 = v0[4];

  sub_1000C5F54();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FF4();
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

uint64_t sub_10006AB2C()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_10006AB9C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C60A4();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100067838(6u, 0);
  }

  return result;
}

uint64_t sub_10006AC5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_10006ACDC()
{
  v1 = (*(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL) + *(**(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL) + 104));
  v2 = *v1;
  v3 = v1[1];
  *v1 = sub_100079958;
  v1[1] = v0;

  sub_100011334(v2);

  v4 = (*(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderTitle) + *(**(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderTitle) + 104));
  v5 = *v4;
  v6 = v4[1];
  *v4 = sub_10007995C;
  v4[1] = v0;

  sub_100011334(v5);

  v7 = (*(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckFolderSubitemName) + *(**(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckFolderSubitemName) + 104));
  v8 = *v7;
  v9 = v7[1];
  *v7 = sub_100079960;
  v7[1] = v0;

  sub_100011334(v8);
}

uint64_t sub_10006AE2C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_1000C5F74();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  sub_1000C6F14();
  v2[18] = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  v2[19] = v8;
  v2[20] = v7;

  return _swift_task_switch(sub_10006AF58, v8, v7);
}

uint64_t sub_10006AF58()
{
  v1 = *(v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 57) = 2;

  sub_1000C60A4();
  *(v0 + 168) = BRCloudDocsErrorDomain;
  *(v0 + 226) = 0;
  v2 = *(v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 58) == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    *v3 = v0;
    v3[1] = sub_10006B328;
    v4 = *(v0 + 104);

    return sub_1000615A4();
  }

  else
  {
    v6 = *(v0 + 104);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 0;

    sub_1000C60A4();
    v7 = *(v6 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v8 = *(v0 + 64);
    if (v8)
    {
      v9 = *(*(v0 + 104) + 16);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (*(v0 + 224) == 1)
      {
        v10 = *(*(v0 + 104) + 16);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1000C6094();

        if (*(v0 + 225) > 1u)
        {
          if (*(v0 + 225) != 2)
          {
            return sub_1000C72E4();
          }

          v11 = 2;
        }

        else if (*(v0 + 225))
        {
          v11 = 3;
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v11 = 1;
      }

      [v8 setPublicPermission:v11];
    }

    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_10006B710;
    v13 = *(v0 + 104);

    return sub_100067EF4();
  }
}

uint64_t sub_10006B328()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {
    v7 = sub_10006BFE4;
  }

  else
  {
    v7 = sub_10006B464;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10006B464()
{
  v1 = *(v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 0;

  sub_1000C60A4();
  v2 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v3 = *(v0 + 64);
  if (v3)
  {
    v4 = *(*(v0 + 104) + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (*(v0 + 224) == 1)
    {
      v5 = *(*(v0 + 104) + 16);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (*(v0 + 225) > 1u)
      {
        if (*(v0 + 225) != 2)
        {
          return sub_1000C72E4();
        }

        v6 = 2;
      }

      else if (*(v0 + 225))
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    [v3 setPublicPermission:v6];
  }

  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_10006B710;
  v8 = *(v0 + 104);

  return sub_100067EF4();
}

uint64_t sub_10006B710()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {
    v7 = sub_10006CB8C;
  }

  else
  {
    v7 = sub_10006B84C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10006B84C()
{
  v1 = *(v0 + 226);
  v2 = *(v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v3 = *(v0 + 61);
  if (v3 != 4)
  {
    v1 = v3 != 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 62) != 9)
  {
    goto LABEL_11;
  }

  v4 = *(*(v0 + 104) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v5 = *(v0 + 88);
  if (!v5)
  {
    goto LABEL_7;
  }

  if ((v1 & 1) == 0)
  {
LABEL_11:
    v10 = *(v0 + 136);
    v11 = *(v0 + 104);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v12 = swift_task_alloc();
    *(v0 + 208) = v12;
    *v12 = v0;
    v12[1] = sub_10006BDA0;
    v13 = *(v0 + 136);
    v14 = *(v0 + 104);

    return sub_100055638(v13);
  }

  v1 = 1;
LABEL_7:
  *(v0 + 226) = v1 & 1;
  v6 = *(v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 58) == 1)
  {
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_10006B328;
    v8 = *(v0 + 104);

    return sub_1000615A4();
  }

  else
  {
    v15 = *(v0 + 104);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 0;

    sub_1000C60A4();
    v16 = *(v15 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v17 = *(v0 + 64);
    if (v17)
    {
      v18 = *(*(v0 + 104) + 16);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (*(v0 + 224) == 1)
      {
        v19 = *(*(v0 + 104) + 16);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1000C6094();

        if (*(v0 + 225) > 1u)
        {
          if (*(v0 + 225) != 2)
          {
            return sub_1000C72E4();
          }

          v20 = 2;
        }

        else if (*(v0 + 225))
        {
          v20 = 3;
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v20 = 1;
      }

      [v17 setPublicPermission:v20];
    }

    v21 = swift_task_alloc();
    *(v0 + 192) = v21;
    *v21 = v0;
    v21[1] = sub_10006B710;
    v22 = *(v0 + 104);

    return sub_100067EF4();
  }
}