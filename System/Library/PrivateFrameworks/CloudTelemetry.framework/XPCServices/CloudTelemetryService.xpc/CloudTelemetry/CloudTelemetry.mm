uint64_t sub_1000015A8(uint64_t a1, const char *a2)
{
  v4 = sub_100079530();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100079BA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10003F214();
  (*(v10 + 16))(v13, v14, v9);
  (*(v5 + 16))(v8, a1, v4);
  v15 = sub_100079B80();
  v16 = sub_10007A180();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a2;
    v18 = v17;
    v25 = swift_slowAlloc();
    v27 = v25;
    *v18 = 136446210;
    sub_100009AA4(&unk_10009DE10, &type metadata accessor for CocoaError);
    v19 = sub_10007A6D0();
    v24 = v9;
    v21 = v20;
    (*(v5 + 8))(v8, v4);
    v22 = sub_100006B00(v19, v21, &v27);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, v26, v18, 0xCu);
    sub_1000070A8(v25);

    return (*(v10 + 8))(v13, v24);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_10000189C()
{
  v0 = sub_100079BA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003F214();
  (*(v1 + 16))(v4, v5, v0);
  swift_errorRetain();
  v6 = sub_100079B80();
  v7 = sub_10007A180();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_10007A6D0();
    v12 = sub_100006B00(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "unable to access transparency log (UNKNOWN): %{public}s", v8, 0xCu);
    sub_1000070A8(v9);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100001AF4()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6BB0);
  sub_1000070F4(v0, qword_1000A6BB0);
  return sub_100079B90();
}

uint64_t sub_100001B74@<X0>(uint64_t a1@<X8>)
{
  v148 = a1;
  v2 = sub_10000712C(&qword_10009E008, &qword_10007E1F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v144 = &v138 - v4;
  v143 = sub_100079750();
  v142 = *(v143 - 8);
  v5 = *(v142 + 64);
  __chkstk_darwin(v143);
  v147 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_100079A00();
  v146 = *(v145 - 8);
  v7 = *(v146 + 64);
  v8 = __chkstk_darwin(v145);
  v140 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v141 = &v138 - v10;
  v11 = sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v149 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v151 = &v138 - v15;
  v16 = sub_1000798B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v139 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v152 = &v138 - v22;
  v23 = __chkstk_darwin(v21);
  v160 = &v138 - v24;
  v25 = __chkstk_darwin(v23);
  v154 = &v138 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v138 - v28;
  __chkstk_darwin(v27);
  v31 = &v138 - v30;
  v155 = objc_opt_self();
  v32 = [v155 defaultManager];
  v33 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_rootLogsURL;
  swift_beginAccess();
  v165 = *(v17 + 16);
  v165(v31, v1 + v33, v16);
  sub_100079800(v34);
  v36 = v35;
  v161 = v17;
  v37 = *(v17 + 8);
  v164 = (v17 + 8);
  v163 = v37;
  v37(v31, v16);
  type metadata accessor for URLResourceKey();
  isa = sub_100079FE0().super.isa;
  v166[0] = 0;
  v39 = [v32 contentsOfDirectoryAtURL:v36 includingPropertiesForKeys:isa options:0 error:v166];

  v40 = v166[0];
  if (!v39)
  {
    v53 = v166[0];
    sub_1000797A0();

    return swift_willThrow();
  }

  v41 = sub_100079FF0();
  v42 = v40;

  v43 = *(v41 + 16);
  v156 = v16;
  v153 = (v17 + 16);
  v159 = v43;
  if (v43)
  {
    v44 = 0;
    *&v158 = "yyyy-MM-dd-HH-mm-ss";
    v157 = v161 + 4;
    v162 = &_swiftEmptyArrayStorage;
    while (v44 < *(v41 + 16))
    {
      v45 = (*(v161 + 80) + 32) & ~*(v161 + 80);
      v17 = v161[9];
      v165(v29, v41 + v45 + v17 * v44, v16);
      sub_1000797E0();
      v46 = sub_100002E08();

      if (v46)
      {
        v47 = *v157;
        (*v157)(v160, v29, v16);
        v48 = v162;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v166[0] = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100009190(0, v48[2] + 1, 1);
          v48 = v166[0];
        }

        v51 = v48[2];
        v50 = v48[3];
        if (v51 >= v50 >> 1)
        {
          sub_100009190(v50 > 1, v51 + 1, 1);
          v48 = v166[0];
        }

        v48[2] = v51 + 1;
        v162 = v48;
        v52 = v48 + v45 + v51 * v17;
        v16 = v156;
        v47(v52, v160, v156);
      }

      else
      {
        v163(v29, v16);
      }

      if (v159 == ++v44)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_54:
    v162 = sub_100009388(v162);
    goto LABEL_16;
  }

  v162 = &_swiftEmptyArrayStorage;
LABEL_15:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_16:
  v55 = v161;
  v56 = v150;
  v57 = v162;
  v58 = v162[2];
  v166[0] = v162 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
  v59 = v166[0];
  v166[1] = v58;
  sub_10000797C(v166);
  v60 = v56;
  v61 = sub_100002F64(1uLL, v57);
  v65 = ((v64 >> 1) - v63);
  v150 = v59;
  v157 = v61;
  if (v64 >> 1 == v63)
  {
  }

  else
  {
    if ((v64 >> 1) <= v63)
    {
      __break(1u);
LABEL_56:
      swift_once();
      goto LABEL_42;
    }

    v72 = v62;
    v73 = v63;
    v74 = v55[9];

    v75 = v72 + v73 * v74;
    *&v76 = 136446210;
    v158 = v76;
    do
    {
      v78 = v154;
      v165(v154, v75, v16);
      v79 = [v155 defaultManager];
      sub_100079800(v80);
      v82 = v81;
      v163(v78, v16);
      v166[0] = 0;
      LODWORD(v78) = [v79 removeItemAtURL:v82 error:v166];

      if (v78)
      {
        v77 = v166[0];
      }

      else
      {
        v83 = v166[0];
        sub_1000797A0();

        swift_willThrow();
        if (qword_1000A03E0 != -1)
        {
          swift_once();
        }

        v60 = 0;
        v84 = sub_100079BA0();
        sub_1000070F4(v84, qword_1000A6BB0);
        swift_errorRetain();
        v85 = sub_100079B80();
        v86 = sub_10007A170();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v160 = 0;
          v88 = v87;
          v159 = swift_slowAlloc();
          v166[0] = v159;
          *v88 = v158;
          swift_getErrorValue();
          v89 = sub_10007A6D0();
          v91 = v74;
          v92 = sub_100006B00(v89, v90, v166);

          *(v88 + 4) = v92;
          v74 = v91;
          _os_log_impl(&_mh_execute_header, v85, v86, "failed to erase old log: %{public}s", v88, 0xCu);
          sub_1000070A8(v159);

          v60 = v160;
        }

        else
        {
        }

        v16 = v156;
      }

      v75 += v74;
      --v65;
    }

    while (v65);
  }

  swift_unknownObjectRelease();
  v66 = v162[2];
  if (v66)
  {
    v67 = v161;
    v68 = v151;
    v165(v151, &v150[v161[9] * (v66 - 1)], v16);
    v69 = 0;
    v70 = v16;
    v65 = v152;
    v71 = v149;
  }

  else
  {
    v69 = 1;
    v68 = v151;
    v70 = v16;
    v65 = v152;
    v71 = v149;
    v67 = v161;
  }

  v17 = v67[7];
  (v17)(v68, v69, 1, v70);
  sub_10000939C(v68, v71, &qword_10009DFB0, &qword_10007BA50);
  if ((v67[6])(v71, 1, v70) == 1)
  {
    v93 = &qword_10009DFB0;
    v94 = &qword_10007BA50;
    v95 = v71;
LABEL_34:
    sub_1000096C4(v95, v93, v94);
    return sub_100009404(v68, v148);
  }

  (v67[4])(v65, v71, v70);
  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLCreationDateKey;
  v97 = NSURLCreationDateKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_100009668(inited + 32);
  v98 = v147;
  sub_1000797C0();
  if (v60)
  {

    v163(v65, v70);
    return sub_1000096C4(v68, &qword_10009DFB0, &qword_10007BA50);
  }

  v99 = v144;
  sub_100079700();
  (*(v142 + 8))(v98, v143);
  v100 = v146;
  v101 = v145;
  if ((*(v146 + 48))(v99, 1, v145) == 1)
  {
    v163(v65, v156);
    v93 = &qword_10009E008;
    v94 = &qword_10007E1F0;
    v95 = v99;
    goto LABEL_34;
  }

  v102 = v141;
  (*(v100 + 32))(v141, v99, v101);
  v103 = v140;
  sub_1000799C0();
  sub_1000799E0();
  v105 = v104;
  v107 = *(v100 + 8);
  v106 = v100 + 8;
  v108 = v103;
  v59 = v107;
  (v107)(v108, v101);
  if (v105 <= 604800.0)
  {
    (v59)(v102, v101);
    v163(v65, v156);
    return sub_100009404(v68, v148);
  }

  v146 = v106;
  if (qword_1000A03E0 != -1)
  {
    goto LABEL_56;
  }

LABEL_42:
  v162 = v59;
  v109 = sub_100079BA0();
  v110 = sub_1000070F4(v109, qword_1000A6BB0);
  v111 = v139;
  v112 = v156;
  v165(v139, v65, v156);
  v165 = v110;
  v113 = sub_100079B80();
  v114 = sub_10007A150();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = v111;
    v116 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v166[0] = v161;
    *v116 = 136446210;
    v117 = sub_1000797E0();
    v160 = v60;
    v119 = v118;
    v163(v115, v112);
    v120 = sub_100006B00(v117, v119, v166);

    *(v116 + 4) = v120;
    _os_log_impl(&_mh_execute_header, v113, v114, "aging out log file: %{public}s", v116, 0xCu);
    sub_1000070A8(v161);
  }

  else
  {

    v163(v111, v112);
  }

  v121 = v151;
  v122 = [v155 defaultManager];
  v123 = v152;
  sub_100079800(&v167);
  v125 = v124;
  v166[0] = 0;
  v126 = [v122 removeItemAtURL:v124 error:v166];

  if (v126)
  {
    v127 = v166[0];
    (v162)(v141, v145);
    v128 = v156;
    v163(v123, v156);
    sub_1000096C4(v121, &qword_10009DFB0, &qword_10007BA50);
  }

  else
  {
    v129 = v166[0];
    sub_1000797A0();

    swift_willThrow();
    v160 = 0;
    swift_errorRetain();
    v130 = sub_100079B80();
    v131 = sub_10007A170();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v166[0] = v133;
      *v132 = 136446210;
      swift_getErrorValue();
      v134 = sub_10007A6D0();
      v136 = sub_100006B00(v134, v135, v166);

      *(v132 + 4) = v136;
      _os_log_impl(&_mh_execute_header, v130, v131, "failed to erase old log: %{public}s", v132, 0xCu);
      sub_1000070A8(v133);

      (v162)(v141, v145);
      v128 = v156;
      v163(v152, v156);
      v137 = v151;
    }

    else
    {

      (v162)(v141, v145);
      v128 = v156;
      v163(v152, v156);
      v137 = v121;
    }

    sub_1000096C4(v137, &qword_10009DFB0, &qword_10007BA50);
  }

  return (v17)(v148, 1, 1, v128);
}

uint64_t sub_100002E08()
{

  v0 = sub_100079F30();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_100079F30();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_10007A610();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_100079F30();
      v3 = v5;
    }

    while (v5);
  }

  sub_100079F30();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

unint64_t sub_100002F64(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    v4 = *(sub_1000798B0() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_100002FF8(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000030A0;

  return sub_1000031A0(a1);
}

uint64_t sub_1000030A0(uint64_t a1)
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

uint64_t sub_1000031A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000031C0, 0, 0);
}

uint64_t sub_1000031C0()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_writeInternalEvents) = 2;
  *(v2 + OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_fileDeletionSource) = 0;
  v3 = [objc_opt_self() fileHandleWithNullDevice];
  *(v2 + OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_activeFile) = v3;
  v4 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_rootLogsURL;
  v5 = sub_1000798B0();
  v0[4] = v5;
  v6 = *(v5 - 8);
  v0[5] = v6;
  (*(v6 + 16))(v2 + v4, v1, v5);

  return _swift_task_switch(sub_1000032D8, v2, 0);
}

uint64_t sub_1000032D8()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1000033B8();
  (*(v2 + 8))(v4, v1);
  v5 = v0[1];
  v6 = v0[3];

  return v5(v6);
}

void sub_1000033B8()
{
  v1 = sub_100079520();
  v89 = *(v1 - 8);
  v2 = v89[8];
  v3 = __chkstk_darwin(v1);
  v5 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v78 - v6;
  v8 = sub_100079530();
  v90 = *(v8 - 8);
  v9 = *(v90 + 64);
  v10 = __chkstk_darwin(v8);
  v85 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v88 = v78 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v78 - v15;
  v17 = __chkstk_darwin(v14);
  v87 = v78 - v18;
  v19 = __chkstk_darwin(v17);
  v86 = v78 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = v78 - v22;
  __chkstk_darwin(v21);
  v25 = v78 - v24;
  sub_100003F98();
  if (v0)
  {
    v93 = v0;
    swift_errorRetain();
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    if (swift_dynamicCast())
    {
      v80 = v16;
      v26 = v90 + 16;
      v83 = *(v90 + 16);
      v83(v23, v25, v8);
      v81 = sub_100009AA4(&qword_10009DE28, &type metadata accessor for CocoaError);
      sub_100079790();
      sub_100079510();
      v27 = sub_100009AA4(&qword_10009DE30, &type metadata accessor for CocoaError.Code);
      v82 = v25;
      v28 = v27;
      sub_100079FC0();
      sub_100079FC0();
      v84 = v8;
      v29 = v89[1];
      v29(v5, v1);
      v29(v7, v1);
      if (v92 == v91)
      {
        v30 = v83;
        v31 = v84;

        if (qword_1000A03E0 != -1)
        {
          swift_once();
        }

        v32 = sub_100079BA0();
        sub_1000070F4(v32, qword_1000A6BB0);
        v33 = v86;
        v30(v86, v23, v31);
        v34 = sub_100079B80();
        v35 = sub_10007A190();
        v36 = os_log_type_enabled(v34, v35);
        v37 = v90;
        if (v36)
        {
          v38 = v33;
          v39 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *v39 = 138412290;
          sub_1000794D0();
          v40 = _swift_stdlib_bridgeErrorToNSError();
          v41 = *(v37 + 8);
          v41(v38, v31);
          *(v39 + 4) = v40;
          v42 = v89;
          *v89 = v40;
          _os_log_impl(&_mh_execute_header, v34, v35, "transparency log - no write permission. %@", v39, 0xCu);
          sub_1000096C4(v42, &qword_10009DE20, &unk_10007B800);
        }

        else
        {

          v41 = *(v37 + 8);
          v41(v33, v31);
        }

        sub_1000015A8(v23, "unable to access transparency log (PERM): %{public}s");
        sub_1000794D0();
        swift_willThrow();
        v41(v23, v31);
        v41(v82, v31);
LABEL_30:

        return;
      }

      v43 = *(v90 + 8);
      v44 = v23;
      v45 = v84;
      v89 = (v90 + 8);
      v86 = v43;
      (v43)(v44, v84);
      v78[1] = v28;
      v79 = v29;
      v46 = v87;
      v78[0] = v26;
      v83(v87, v82, v45);
      v47 = v79;
      sub_100079790();
      sub_100079500();
      sub_100079FC0();
      sub_100079FC0();
      v47(v5, v1);
      v47(v7, v1);
      v48 = v83;
      if (v92 == v91)
      {
        v49 = v46;
        v50 = v86;
        v51 = v84;

        if (qword_1000A03E0 != -1)
        {
          swift_once();
        }

        v52 = sub_100079BA0();
        sub_1000070F4(v52, qword_1000A6BB0);
        v53 = v80;
        v54 = v46;
        v48(v80, v46, v51);
        v55 = sub_100079B80();
        v56 = sub_10007A190();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v57 = 138412290;
          sub_1000794D0();
          v59 = _swift_stdlib_bridgeErrorToNSError();
          v50(v53, v51);
          *(v57 + 4) = v59;
          *v58 = v59;
          _os_log_impl(&_mh_execute_header, v55, v56, "transparency log - no space. %@", v57, 0xCu);
          sub_1000096C4(v58, &qword_10009DE20, &unk_10007B800);

          v54 = v49;
        }

        else
        {

          v50(v53, v51);
        }

        v71 = v82;
        sub_1000015A8(v54, "unable to write transparency log (OOS): %{public}s");
        sub_1000794D0();
        swift_willThrow();
        v50(v54, v51);
        v50(v71, v51);
        goto LABEL_30;
      }

      v60 = v84;
      (v86)(v46, v84);
      (*(v90 + 32))(v88, v82, v60);
      sub_100079790();
      sub_1000794F0();
      sub_100079FC0();
      sub_100079FC0();
      v47(v5, v1);
      v47(v7, v1);
      if (v92 == v91)
      {
        v61 = v86;
        v62 = v84;

        if (qword_1000A03E0 != -1)
        {
          swift_once();
        }

        v63 = sub_100079BA0();
        sub_1000070F4(v63, qword_1000A6BB0);
        v64 = v85;
        v65 = v88;
        v83(v85, v88, v62);
        v66 = sub_100079B80();
        v67 = sub_10007A190();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v68 = 138412290;
          sub_1000794D0();
          v70 = _swift_stdlib_bridgeErrorToNSError();
          v61(v64, v62);
          *(v68 + 4) = v70;
          *v69 = v70;
          _os_log_impl(&_mh_execute_header, v66, v67, "transparency log - unknown write error. %@", v68, 0xCu);
          sub_1000096C4(v69, &qword_10009DE20, &unk_10007B800);
        }

        else
        {

          v61(v64, v62);
        }

        sub_1000015A8(v65, "unable to access storebag cache (WRITE-UNKNOWN): %{public}s");
        sub_1000794D0();
        swift_willThrow();
        v61(v65, v62);
        goto LABEL_30;
      }

      (v86)(v88, v84);
    }

    if (qword_1000A03E0 != -1)
    {
      swift_once();
    }

    v72 = sub_100079BA0();
    sub_1000070F4(v72, qword_1000A6BB0);
    swift_errorRetain();
    v73 = sub_100079B80();
    v74 = sub_10007A190();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      swift_errorRetain();
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v77;
      *v76 = v77;
      _os_log_impl(&_mh_execute_header, v73, v74, "transparency log - unexpected error. %@", v75, 0xCu);
      sub_1000096C4(v76, &qword_10009DE20, &unk_10007B800);
    }

    sub_10000189C();
    swift_willThrow();
  }
}

void sub_100003F98()
{
  v1 = v0;
  v126 = sub_100079C80();
  v125 = *(v126 - 8);
  v2 = *(v125 + 64);
  __chkstk_darwin(v126);
  v123 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_100079CC0();
  v122 = *(v124 - 8);
  v4 = *(v122 + 64);
  __chkstk_darwin(v124);
  v121 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10007A220();
  v119 = *(v120 - 8);
  v6 = *(v119 + 64);
  __chkstk_darwin(v120);
  v118 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100079A00();
  v130 = *(v8 - 8);
  v131 = v8;
  v9 = *(v130 + 64);
  __chkstk_darwin(v8);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v114 - v14;
  v16 = sub_1000798B0();
  v17 = *(v16 - 8);
  v134 = v16;
  v135 = v17;
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v117 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v127 = &v114 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v114 - v24;
  v26 = __chkstk_darwin(v23);
  v132 = &v114 - v27;
  v28 = __chkstk_darwin(v26);
  v128 = &v114 - v29;
  v30 = __chkstk_darwin(v28);
  v116 = &v114 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v114 - v33;
  __chkstk_darwin(v32);
  v36 = &v114 - v35;
  v37 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_activeFile;
  swift_beginAccess();
  v129 = v37;
  v38 = *(v1 + v37);
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 fileHandleWithNullDevice];
  v133 = sub_100007670(0, &qword_10009DFB8, NSFileHandle_ptr);
  LOBYTE(v37) = sub_10007A2A0();

  if ((v37 & 1) == 0)
  {
    if (qword_1000A03E0 != -1)
    {
      swift_once();
    }

    v42 = sub_100079BA0();
    sub_1000070F4(v42, qword_1000A6BB0);
    v43 = sub_100079B80();
    v44 = sub_10007A190();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "witnessed log vanish - refeshing", v45, 2u);
    }
  }

  v46 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_fileDeletionSource;
  swift_beginAccess();
  if (*(v1 + v46))
  {
    v47 = *(v1 + v46);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10007A250();
    swift_unknownObjectRelease();
    v48 = *(v1 + v46);
    *(v1 + v46) = 0;
    swift_unknownObjectRelease();
  }

  v49 = v142;
  sub_100001B74(v15);
  if (!v49)
  {
    v115 = v46;
    v142 = 0;
    v51 = v134;
    v50 = v135;
    if ((v135[6])(v15, 1, v134) == 1)
    {
      sub_1000096C4(v15, &qword_10009DFB0, &qword_10007BA50);
      v52 = [objc_allocWithZone(NSDateFormatter) init];
      v53 = sub_100079DF0();
      [v52 setDateFormat:v53];

      sub_1000799C0();
      isa = sub_100079980().super.isa;
      (*(v130 + 8))(v11, v131);
      v55 = [v52 stringFromDate:isa];

      v56 = sub_100079E20();
      v58 = v57;

      v59 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_rootLogsURL;
      swift_beginAccess();
      v131 = v135[2];
      v131(v25, v1 + v59, v51);
      aBlock = 0;
      v137 = 0xE000000000000000;
      sub_10007A3B0(32);

      aBlock = 0xD00000000000001ALL;
      v137 = 0x8000000100082390;
      v143._countAndFlagsBits = v56;
      v143._object = v58;
      sub_100079F00(v143);

      v144._countAndFlagsBits = 1954051118;
      v144._object = 0xE400000000000000;
      sub_100079F00(v144);
      v60 = v132;
      sub_100079820();
      v61 = v135;

      v62 = v25;
      v63 = v61[1];
      v63(v62, v51);
      v64 = v142;
      sub_100079940();
      if (v64)
      {
        v63(v60, v51);

        return;
      }

      v69 = v128;
      (v61[4])(v128, v60, v51);
      v70 = v127;
      v71 = v131;
      v131(v127, v69, v51);
      v72 = sub_100004F30(v70);
      v142 = 0;
      v76 = v71;
      v77 = *(v1 + v129);
      *(v1 + v129) = v72;

      if (qword_1000A03E0 != -1)
      {
        swift_once();
      }

      v78 = sub_100079BA0();
      sub_1000070F4(v78, qword_1000A6BB0);
      v79 = v117;
      v76(v117, v69, v51);
      v80 = sub_100079B80();
      v81 = sub_10007A150();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = v79;
        v135 = swift_slowAlloc();
        aBlock = v135;
        *v82 = 136446210;
        v133 = sub_100079870();
        v85 = v84;
        v63(v83, v51);
        v86 = sub_100006B00(v133, v85, &aBlock);

        *(v82 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v80, v81, "created new log file at %{public}s", v82, 0xCu);
        sub_1000070A8(v135);

        v87 = v128;
      }

      else
      {

        v63(v79, v51);
        v87 = v69;
      }

      v63(v87, v51);
      v73 = v129;
    }

    else
    {
      (v50[4])(v36, v15, v51);
      v65 = v50[2];
      v65(v34, v36, v51);
      v66 = v142;
      v67 = sub_100004F30(v34);
      v68 = v51;
      if (v66)
      {
        (v50[1])(v36, v51);
        return;
      }

      v73 = v129;
      v74 = *(v1 + v129);
      *(v1 + v129) = v67;
      v75 = v67;

      sub_10007A140();
      v142 = 0;

      if (qword_1000A03E0 != -1)
      {
        swift_once();
      }

      v88 = sub_100079BA0();
      sub_1000070F4(v88, qword_1000A6BB0);
      v89 = v116;
      v65(v116, v36, v68);
      v90 = sub_100079B80();
      v91 = sub_10007A150();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = v89;
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        aBlock = v94;
        *v93 = 136446210;
        v133 = sub_100079870();
        v95 = v68;
        v97 = v96;
        v135 = v135[1];
        (v135)(v92, v95);
        v98 = sub_100006B00(v133, v97, &aBlock);

        *(v93 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v90, v91, "opened log file at %{public}s", v93, 0xCu);
        sub_1000070A8(v94);
        v73 = v129;

        (v135)(v36, v134);
      }

      else
      {

        v99 = v135[1];
        v99(v89, v68);
        v99(v36, v68);
      }
    }

    sub_100007670(0, &qword_10009DFC0, OS_dispatch_source_ptr);
    [*(v1 + v73) fileDescriptor];
    sub_10000712C(&qword_10009DFC8, &qword_10007BA58);
    v100 = v119;
    v101 = *(v119 + 72);
    v102 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v103 = swift_allocObject();
    *(v103 + 1) = xmmword_10007B7D0;
    sub_10007A210();
    sub_10007A200();
    aBlock = v103;
    sub_100009AA4(&qword_10009DFD0, &type metadata accessor for OS_dispatch_source.FileSystemEvent);
    sub_10000712C(&qword_10009DFD8, &qword_10007BA60);
    sub_100007710(&qword_10009DFE0, &qword_10009DFD8, &qword_10007BA60);
    v104 = v118;
    v105 = v120;
    sub_10007A2E0();
    v106 = sub_10007A230();
    (*(v100 + 8))(v104, v105);
    v107 = v115;
    v108 = *(v1 + v115);
    *(v1 + v115) = v106;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    v109 = swift_allocObject();
    swift_weakInit();
    v140 = sub_1000076F0;
    v141 = v109;
    aBlock = _NSConcreteStackBlock;
    v137 = 1107296256;
    v138 = sub_1000054F0;
    v139 = &unk_100095C58;
    v110 = _Block_copy(&aBlock);

    v111 = v121;
    sub_100079CB0();
    v112 = v123;
    sub_100005534();
    sub_10007A240();
    _Block_release(v110);
    swift_unknownObjectRelease();
    (*(v125 + 8))(v112, v126);
    (*(v122 + 8))(v111, v124);

    if (*(v1 + v107))
    {
      v113 = *(v1 + v107);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10007A260();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100004F30(uint64_t a1)
{
  sub_100079800(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_1000798B0();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_1000797A0();

    swift_willThrow();
    v10 = sub_1000798B0();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_100005088()
{
  v0 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_10007A0A0();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_100005244(0, 0, v3, &unk_10007BA80, v7);
  }

  return result;
}

uint64_t sub_1000051C8()
{
  v1 = *(v0 + 16);
  sub_1000033B8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100005244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000939C(a3, v24 - v10, &qword_10009E000, &qword_10007BA70);
  v12 = sub_10007A0A0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000096C4(v11, &qword_10009E000, &qword_10007BA70);
  }

  else
  {
    sub_10007A090();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10007A050();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100079EA0() + 32;

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

      sub_1000096C4(a3, &qword_10009E000, &qword_10007BA70);

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

  sub_1000096C4(a3, &qword_10009E000, &qword_10007BA70);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000054F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100005534()
{
  sub_100079C80();
  sub_100009AA4(&qword_10009DFE8, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000712C(&qword_10009DFF0, &qword_10007BA68);
  sub_100007710(&qword_10009DFF8, &qword_10009DFF0, &qword_10007BA68);
  return sub_10007A2E0();
}

uint64_t sub_10000560C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37[2] = a3;
  v37[3] = a4;
  v38._countAndFlagsBits = a1;
  v38._object = a2;
  v4 = sub_100079E70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100079A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_10007A3B0(27);

  v41 = 40;
  v42 = 0xE100000000000000;
  sub_1000799C0();
  v14 = sub_100079960();
  v16 = v15;
  v17 = v9;
  v18 = v4;
  (*(v10 + 8))(v13, v17);
  v45._countAndFlagsBits = v14;
  v45._object = v16;
  sub_100079F00(v45);

  v46._countAndFlagsBits = 5972009;
  v46._object = 0xE300000000000000;
  sub_100079F00(v46);
  sub_100079F00(v38);
  v47._object = 0x80000001000822A0;
  v47._countAndFlagsBits = 0xD000000000000013;
  sub_100079F00(v47);
  sub_100079E60();
  v19 = sub_100079E30();
  v21 = v20;
  v22 = *(v5 + 8);
  v22(v8, v18);
  if (v21 >> 60 == 15)
  {

    sub_100007174();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v43 = v19;
    v44 = v21;
    sub_100079950();
    sub_100079E60();
    v24 = sub_100079E30();
    v26 = v25;
    result = (v22)(v8, v18);
    if (v26 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {

      sub_100079950();
      sub_1000071C8(v24, v26);
      v27 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_activeFile;
      v28 = v37[1];
      swift_beginAccess();
      v29 = *(v28 + v27);
      v31 = v43;
      v30 = v44;
      v39 = v43;
      v40 = v44;
      v32 = v29;
      sub_100007230(v31, v30);
      sub_100007284();
      v33 = v37[0];
      sub_10007A130();
      if (v33)
      {

        sub_1000071DC(v39, v40);
      }

      else
      {
        sub_1000071DC(v39, v40);

        v34 = *(v28 + v27);
        v39 = 0;
        if ([v34 synchronizeAndReturnError:&v39])
        {
          v35 = v39;
        }

        else
        {
          v36 = v39;
          sub_1000797A0();

          swift_willThrow();
        }
      }

      return sub_1000071DC(v31, v30);
    }
  }

  return result;
}

_BYTE *sub_1000059F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v59._countAndFlagsBits = a1;
  v59._object = a2;
  v7 = sub_1000795E0();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v9 = sub_100079E70();
  v10 = *(v9 - 8);
  v60 = v9;
  v61 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100079A00();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10003F2A0();
  result = swift_beginAccess();
  if (*v19 == 1)
  {
    result = sub_10003F484();
    if (*result == 1)
    {
      v55 = v5;
      v56 = v6;
      v64 = 0;
      v65 = 0xE000000000000000;
      sub_10007A3B0(25);

      v64 = 40;
      v65 = 0xE100000000000000;
      sub_1000799C0();
      v21 = sub_100079960();
      v23 = v22;
      (*(v15 + 8))(v18, v14);
      v68._countAndFlagsBits = v21;
      v68._object = v23;
      sub_100079F00(v68);

      v69._countAndFlagsBits = 5972009;
      v69._object = 0xE300000000000000;
      sub_100079F00(v69);
      sub_100079F00(v59);
      v70._object = 0x80000001000822C0;
      v70._countAndFlagsBits = 0xD000000000000011;
      sub_100079F00(v70);
      sub_100079E60();
      v24 = sub_100079E30();
      v26 = v25;
      v27 = v61 + 8;
      v28 = *(v61 + 8);
      v28(v13, v60);
      if (v26 >> 60 == 15)
      {

        sub_100007174();
        swift_allocError();
        return swift_willThrow();
      }

      else
      {
        v59._object = v28;
        v61 = v27;
        v66 = v24;
        v67 = v26;
        v29 = sub_100079620();
        v30 = *(v29 + 48);
        v31 = *(v29 + 52);
        swift_allocObject();
        v32 = sub_100079610();
        sub_10000712C(&qword_10009DE48, &unk_10007C100);
        v33 = *(v57 + 72);
        v34 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_10007B7C0;
        sub_1000795D0();
        v64 = v35;
        sub_100009AA4(&qword_10009DE50, &type metadata accessor for JSONEncoder.OutputFormatting);
        sub_10000712C(&qword_10009DE58, &qword_10007B810);
        v36 = v32;
        sub_100007710(&qword_10009DE60, &qword_10009DE58, &qword_10007B810);
        sub_10007A2E0();
        sub_1000795F0();
        v64 = v58;
        sub_100007320();

        v37 = v56;
        v38 = sub_100079600();
        if (v37)
        {

          return sub_1000071DC(v66, v67);
        }

        else
        {
          v40 = v38;
          v41 = v39;
          v59._countAndFlagsBits = v36;

          sub_100079950();
          sub_100079E60();
          v42 = sub_100079E30();
          v44 = v43;
          result = (v59._object)(v13, v60);
          if (v44 >> 60 == 15)
          {
            __break(1u);
          }

          else
          {

            sub_100079950();
            sub_1000071C8(v42, v44);
            v45 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_activeFile;
            v46 = v55;
            swift_beginAccess();
            v47 = *(v46 + v45);
            v49 = v66;
            v48 = v67;
            v62 = v66;
            v63 = v67;
            v50 = v47;
            sub_100007230(v49, v48);
            sub_100007284();
            sub_10007A130();
            sub_1000071DC(v62, v63);

            v51 = *(v55 + v45);
            v62 = 0;
            if ([v51 synchronizeAndReturnError:&v62])
            {
              v52 = v62;
              sub_1000071DC(v49, v48);
              sub_1000071DC(v40, v41);
            }

            else
            {
              v53 = v62;
              sub_1000797A0();

              swift_willThrow();
              sub_1000071DC(v40, v41);

              return sub_1000071DC(v49, v48);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000605C()
{
  v1 = OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_rootLogsURL;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService15TransparencyLog_fileDeletionSource);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_100006100()
{
  sub_10007A730();
  sub_10007A740(0);
  return sub_10007A760();
}

Swift::Int sub_100006144()
{
  sub_10007A730();
  sub_10007A740(0);
  return sub_10007A760();
}

uint64_t sub_100006198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007A610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100006234(uint64_t a1)
{
  v2 = sub_100007560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006270(uint64_t a1)
{
  v2 = sub_100007560();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000062AC(void *a1, uint64_t a2)
{
  v4 = sub_10000712C(&unk_10009DF90, &unk_10007BA40);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100007560();
  sub_10007A7C0();
  v11[1] = a2;
  sub_10000712C(&unk_10009EB50, &unk_10007D3B0);
  sub_1000075B4();
  sub_10007A5C0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000642C(uint64_t a1, id *a2)
{
  result = sub_100079E00();
  *a2 = 0;
  return result;
}

uint64_t sub_1000064A4(uint64_t a1, id *a2)
{
  v3 = sub_100079E10();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100006524@<X0>(void *a1@<X8>)
{
  sub_100079E20();
  v2 = sub_100079DF0();

  *a1 = v2;
  return result;
}

uint64_t sub_100006568()
{
  v1 = *v0;
  sub_100079E20();
  v2 = sub_100079F60();

  return v2;
}

uint64_t sub_1000065A4()
{
  v1 = *v0;
  sub_100079E20();
  sub_100079EC0();
}

Swift::Int sub_1000065F8()
{
  v1 = *v0;
  sub_100079E20();
  sub_10007A730();
  sub_100079EC0();
  v2 = sub_10007A760();

  return v2;
}

uint64_t sub_10000666C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100079E20();
  v6 = v5;
  if (v4 == sub_100079E20() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10007A610();
  }

  return v9 & 1;
}

uint64_t sub_1000066F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100079DF0();

  *a2 = v5;
  return result;
}

uint64_t sub_10000673C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100079E20();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100006768(uint64_t a1)
{
  v2 = sub_100009AA4(&unk_10009F090, type metadata accessor for URLResourceKey);
  v3 = sub_100009AA4(&unk_10009E060, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

size_t sub_100006824(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000712C(&qword_10009E020, &qword_10007BAA0);
  v10 = *(sub_1000798B0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000798B0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000069FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E028, &qword_10007BAA8);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100006B00(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006BCC(v11, 0, 0, 1, a1, a2);
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
    sub_10000978C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000070A8(v11);
  return v7;
}

unint64_t sub_100006BCC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006CD8(a5, a6);
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
    result = sub_10007A410();
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

char *sub_100006CD8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006D24(a1, a2);
  sub_100006E54(&off_100095B18);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100006D24(uint64_t a1, unint64_t a2)
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

  v6 = sub_100006F40(v5, 0);
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

  result = sub_10007A410();
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
        v10 = sub_100079F40();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006F40(v10, 0);
        result = sub_10007A3A0();
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

uint64_t sub_100006E54(uint64_t result)
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

  result = sub_100006FB4(result, v12, 1, v3);
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

void *sub_100006F40(uint64_t a1, uint64_t a2)
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

  sub_10000712C(&unk_10009E030, &qword_10007BAB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006FB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&unk_10009E030, &qword_10007BAB0);
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

uint64_t sub_1000070A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000070F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000712C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100007174()
{
  result = qword_10009DE38;
  if (!qword_10009DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DE38);
  }

  return result;
}

uint64_t sub_1000071C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000071DC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000071DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100007230(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100007284()
{
  result = qword_10009DE40;
  if (!qword_10009DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DE40);
  }

  return result;
}

uint64_t sub_1000072D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100007320()
{
  result = qword_1000A03E8[0];
  if (!qword_1000A03E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A03E8);
  }

  return result;
}

unint64_t sub_100007378()
{
  result = qword_10009DE68;
  if (!qword_10009DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DE68);
  }

  return result;
}

uint64_t type metadata accessor for TransparencyLog()
{
  result = qword_1000A06F0;
  if (!qword_1000A06F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007424()
{
  result = sub_1000798B0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_10000751C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100007560()
{
  result = qword_1000A0780[0];
  if (!qword_1000A0780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A0780);
  }

  return result;
}

unint64_t sub_1000075B4()
{
  result = qword_10009DFA0;
  if (!qword_10009DFA0)
  {
    sub_1000072D8(&unk_10009EB50, &unk_10007D3B0);
    sub_100009AA4(&qword_10009DFA8, type metadata accessor for ServiceEventValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DFA0);
  }

  return result;
}

uint64_t sub_100007670(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000076B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000076F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007710(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007764()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000077A4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007838;

  return sub_1000051A8(v3, v4, v5, v2);
}

uint64_t sub_100007838()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_10009F070)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10009F070);
    }
  }
}

Swift::Int sub_10000797C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_10007A5D0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000798B0();
        v6 = sub_10007A010();
        v6[2] = v5;
      }

      v7 = *(sub_1000798B0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100007DB4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100007AA8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100007AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000798B0();
  v9 = *(*(v8 - 8) + 64);
  v10 = (__chkstk_darwin)();
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v49 = &v35 - v13;
  result = __chkstk_darwin(v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_1000797E0();
      v28 = v27;
      if (v26 == sub_1000797E0() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_10007A610();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100007DB4(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_1000798B0();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v150 = &v129 - v14;
  v15 = __chkstk_darwin(v13);
  v155 = &v129 - v16;
  v17 = __chkstk_darwin(v15);
  v154 = &v129 - v18;
  v19 = __chkstk_darwin(v17);
  v147 = &v129 - v20;
  v21 = __chkstk_darwin(v19);
  v146 = &v129 - v22;
  v23 = __chkstk_darwin(v21);
  v134 = &v129 - v24;
  result = __chkstk_darwin(v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = &_swiftEmptyArrayStorage;
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_100008970(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_100009098(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_10000900C(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_100009098(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = &_swiftEmptyArrayStorage;
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_1000797E0();
      v38 = v37;
      v39 = sub_1000797E0();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_10007A610();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_1000797E0();
        v53 = v52;
        if (v51 == sub_1000797E0() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_10007A610();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000069FC(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_1000069FC((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_100008970(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_100009098(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_10000900C(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_1000797E0();
    v70 = v69;
    if (v5 == sub_1000797E0() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_10007A610();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_100008970(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_1000798B0();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v68 = &v60 - v13;
  v14 = __chkstk_darwin(v12);
  v71 = &v60 - v15;
  result = __chkstk_darwin(v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_1000797E0();
            v53 = v52;
            if (v51 != sub_1000797E0())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_10007A610();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_1000797E0();
        v33 = v32;
        if (v31 == sub_1000797E0() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_10007A610();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_1000090AC(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_10000900C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100009098(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000090AC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1000798B0();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_100009190(size_t a1, int64_t a2, char a3)
{
  result = sub_1000091B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000091B0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000712C(&qword_10009E020, &qword_10007BAA0);
  v10 = *(sub_1000798B0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000798B0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000939C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000712C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009404(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100009474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009E018, &unk_10007CD10);
    v3 = sub_10007A390();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_100079E20();
      sub_10007A730();
      v29 = v7;
      sub_100079EC0();
      v9 = sub_10007A760();

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
        v18 = sub_100079E20();
        v20 = v19;
        if (v18 == sub_100079E20() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_10007A610();

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

uint64_t sub_100009668(uint64_t a1)
{
  type metadata accessor for URLResourceKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000096C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000712C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100009728(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10000978C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for SubmitEventsActivity.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SubmitEventsActivity.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000098C8()
{
  result = qword_1000A0890[0];
  if (!qword_1000A0890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A0890);
  }

  return result;
}

unint64_t sub_1000099F8()
{
  result = qword_1000A0B20;
  if (!qword_1000A0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0B20);
  }

  return result;
}

unint64_t sub_100009A50()
{
  result = qword_1000A0B28[0];
  if (!qword_1000A0B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A0B28);
  }

  return result;
}

uint64_t sub_100009AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CachedSession()
{
  result = qword_1000A0C30;
  if (!qword_1000A0C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v10 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v10;
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = *(a1 + 48);
  *(a6 + 56) = a2;
  *(a6 + 64) = a3;
  *(a6 + 72) = a7;
  v11 = type metadata accessor for CachedSession();
  v12 = v11[7];
  v13 = sub_100079A00();
  result = (*(*(v13 - 8) + 32))(a6 + v12, a4, v13);
  v15 = a6 + v11[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  *(a6 + v11[9]) = a5;
  return result;
}

uint64_t sub_100009C74()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_100009CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_100079A00();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

int8x16_t *sub_100009D58@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X8>)
{
  if (!result || (a2 - result + 7) < 0xF)
  {
    *a3 = 0;
    return result;
  }

  v3 = ((a2 - result) / 8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 >= 3)
  {
    v6 = v3 + 1;
    v7 = (v3 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v5 = &result->i64[v7];
    v8 = result + 1;
    v9 = 0uLL;
    v10 = v7;
    v11 = 0uLL;
    do
    {
      v9 = veorq_s8(v8[-1], v9);
      v11 = veorq_s8(*v8, v11);
      v8 += 2;
      v10 -= 4;
    }

    while (v10);
    v12 = veorq_s8(v11, v9);
    v4 = veor_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
    if (v6 == v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    v5 = result;
  }

  do
  {
    v13 = *v5++;
    *&v4 ^= v13;
  }

  while (v5 != &result->i8[(a2 - result + (a2 - result < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8]);
LABEL_10:
  *a3 = v4;
  return result;
}

uint64_t sub_100009E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8 || !*(a2 + 16))
  {
    return 0;
  }

  v33 = _swiftEmptyArrayStorage;
  sub_10000A22C(0, v8, 0);
  v9 = v33;
  v10 = (a1 + 40);
  do
  {
    v11 = *v10;
    if (*(a2 + 16))
    {
      v12 = *(v10 - 1);
      v13 = *v10;

      v14 = sub_10000A0FC(v12, v11);
      if (v15)
      {
        sub_10000A908(*(a2 + 56) + *(v32 + 72) * v14, v7);
        v16 = sub_10002FC68();
        sub_10000A96C(v7);
        v17 = [(objc_class *)v16 description];
        v18 = sub_100079E20();
        v20 = v19;

        goto LABEL_9;
      }
    }

    else
    {
      v21 = *v10;
    }

    v18 = 0;
    v20 = 0xE000000000000000;
LABEL_9:
    v33 = v9;
    v23 = v9[2];
    v22 = v9[3];
    if (v23 >= v22 >> 1)
    {
      sub_10000A22C((v22 > 1), v23 + 1, 1);
      v9 = v33;
    }

    v9[2] = v23 + 1;
    v24 = &v9[2 * v23];
    v24[4] = v18;
    v24[5] = v20;
    v10 += 2;
    --v8;
  }

  while (v8);
  v33 = v9;
  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  sub_10000A8A4();
  v25 = sub_100079DC0();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    sub_10000A588(v25, v27);
    v30 = v29;

    return v30;
  }

  return 0;
}

uint64_t sub_10000A094()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000A0C4()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

unint64_t sub_10000A0FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10007A730();
  sub_100079EC0();
  v6 = sub_10007A760();

  return sub_10000A174(a1, a2, v6);
}

unint64_t sub_10000A174(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10007A610())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_10000A22C(char *a1, int64_t a2, char a3)
{
  result = sub_10000A24C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A24C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E278, &qword_10007CCF0);
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

uint64_t sub_10000A358(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_100079D20();
      sub_10000AD2C();
      return sub_100079CD0();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10000A4D8(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_10000A4D8(v4, v5);
  }

  sub_100079D20();
  sub_10000AD2C();
  return sub_100079CD0();
}

uint64_t sub_10000A4D8(uint64_t a1, uint64_t a2)
{
  result = sub_100079670();
  if (!result || (result = sub_1000796A0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100079690();
      sub_100079D20();
      sub_10000AD2C();
      return sub_100079CD0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A588(uint64_t a1, uint64_t a2)
{
  v3 = sub_100079D20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100079D10();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100079E70();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return arc4random_uniform(0x2710u);
  }

  v21 = v8;
  sub_100079E60();
  v17 = sub_100079E30();
  v19 = v18;
  result = (*(v13 + 8))(v16, v12);
  if (v19 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_10000AD2C();
    sub_100079CF0();
    sub_100007230(v17, v19);
    sub_10000A358(v17, v19);
    sub_1000071C8(v17, v19);
    sub_100079CE0();
    (*(v4 + 8))(v7, v3);
    sub_100079D00();
    sub_1000071C8(v17, v19);
    return (*(v22 + 8))(v11, v21);
  }

  return result;
}

unint64_t sub_10000A8A4()
{
  result = qword_10009E138;
  if (!qword_10009E138)
  {
    sub_1000072D8(&qword_10009E130, &qword_10007BCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E138);
  }

  return result;
}

uint64_t sub_10000A908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A96C(uint64_t a1)
{
  v2 = type metadata accessor for ServiceEventValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for SessionUser(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionUser(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SessionUser(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10000AA28(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000AA44(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_10000AA88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100079A00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000AB48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100079A00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000ABEC()
{
  sub_100079A00();
  if (v0 <= 0x3F)
  {
    sub_10000ACA0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000ACA0()
{
  if (!qword_10009E198)
  {
    type metadata accessor for ServiceEventValue();
    v0 = sub_100079D90();
    if (!v1)
    {
      atomic_store(v0, &qword_10009E198);
    }
  }
}

unint64_t sub_10000AD2C()
{
  result = qword_10009E280;
  if (!qword_10009E280)
  {
    sub_100079D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E280);
  }

  return result;
}

uint64_t sub_10000AD84()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6BE8);
  sub_1000070F4(v0, qword_1000A6BE8);
  return sub_100079B90();
}

uint64_t sub_10000AE08(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_10007A3B0(20);

      v5 = 0xD000000000000012;
    }

    else
    {
      sub_10007A3B0(33);

      v5 = 0xD00000000000001FLL;
    }

    v7 = v5;
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    sub_100079F00(v9);
    return v7;
  }

  if (a3 == 2)
  {
    sub_10007A3B0(35);

    v7 = 0xD000000000000021;
    v8._countAndFlagsBits = sub_10007A5E0();
    sub_100079F00(v8);

    return v7;
  }

  return 0x656C74746F726874;
}

uint64_t type metadata accessor for StorebagSigningConfiguration()
{
  result = qword_1000A0D50;
  if (!qword_1000A0D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000AFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000798B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v16 - v11;
  type metadata accessor for Throttle();
  sub_100053828(a1, v12);
  if (v2)
  {
    return (*(v6 + 8))(a1, v5);
  }

  v14 = *(v6 + 32);
  v14(a2, v12, v5);
  sub_1000406E4(a1, 0x72756769666E6F63, 0xEF2F736E6F697461, v10);
  (*(v6 + 8))(a1, v5);
  v15 = type metadata accessor for StorebagSigningConfiguration();
  return (v14)(a2 + *(v15 + 20), v10, v5);
}

uint64_t sub_10000B1B0()
{
  v1 = sub_100079A00();
  v2 = *(v1 - 8);
  v108 = v1;
  v109 = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v105 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v106 = &v100 - v7;
  __chkstk_darwin(v6);
  v9 = &v100 - v8;
  v10 = sub_100079750();
  v107 = *(v10 - 8);
  v11 = *(v107 + 64);
  __chkstk_darwin(v10);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000712C(&qword_10009E008, &qword_10007E1F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v100 - v20;
  __chkstk_darwin(v19);
  v23 = &v100 - v22;
  v110 = sub_1000798B0();
  v24 = *(v110 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v110);
  v27 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0 + *(type metadata accessor for StorebagSigningConfiguration() + 20);
  sub_100079810();
  v111 = v27;
  v29 = sub_100079830();
  v102 = v21;
  v103 = v18;
  v104 = v9;
  v30 = v109;
  if (!v29)
  {
    if (qword_1000A0C40 != -1)
    {
      swift_once();
    }

    v33 = sub_100079BA0();
    sub_1000070F4(v33, qword_1000A6BE8);
    v34 = sub_100079B80();
    v35 = sub_10007A150();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v111;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "configuration does not exist", v38, 2u);
    }

    (*(v24 + 8))(v37, v110);
    return 0;
  }

  v101 = v24;
  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLContentModificationDateKey;
  v32 = NSURLContentModificationDateKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_100009668(inited + 32);
  sub_1000797C0();

  v39 = v102;
  sub_100079720();
  (*(v107 + 8))(v13, v10);
  v40 = v108;
  result = (*(v30 + 48))(v39, 1, v108);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v42 = v23;
  (*(v30 + 32))(v23, v39, v40);
  v43 = v101;
  v44 = v110;
  v45 = v103;
  (*(v30 + 56))(v23, 0, 1, v40);
  sub_10000F2A8(v23, v45);
  v46 = (*(v30 + 48))(v45, 1, v40);
  v47 = v111;
  if (v46 == 1)
  {
    sub_10000F318(v45);
    if (qword_1000A0C40 != -1)
    {
      swift_once();
    }

    v48 = sub_100079BA0();
    sub_1000070F4(v48, qword_1000A6BE8);
    v49 = sub_100079B80();
    v50 = sub_10007A170();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "unable to determine configuration creation date", v51, 2u);
    }

LABEL_30:
    sub_10000F318(v42);
    (*(v43 + 8))(v47, v44);
    return 0;
  }

  (*(v30 + 32))(v104, v45, v40);
  v52 = sub_1000798D0();
  v54 = v53;
  v55 = objc_opt_self();
  v56 = v52;
  v107 = v54;
  isa = sub_100079910().super.isa;
  v114[0] = 0;
  v58 = [v55 propertyListWithData:isa options:0 format:0 error:v114];

  if (!v58)
  {
    v67 = v114[0];
    sub_1000797A0();

    swift_willThrow();

    goto LABEL_25;
  }

  v59 = v114[0];
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_10000712C(&qword_10009E290, qword_10007BD90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    if (qword_1000A0C40 != -1)
    {
      swift_once();
    }

    v68 = sub_100079BA0();
    sub_1000070F4(v68, qword_1000A6BE8);
    v69 = sub_100079B80();
    v70 = sub_10007A170();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "failed to parse configuration", v71, 2u);
    }

    sub_1000071DC(v56, v107);

    (*(v30 + 8))(v104, v40);
    goto LABEL_30;
  }

  v60 = v112;
  if (*(*&v112 + 16) && (v61 = sub_10000A0FC(0xD000000000000016, 0x8000000100082670), (v62 & 1) != 0))
  {
    sub_10000978C(*(*&v60 + 56) + 32 * v61, v114);

    v63 = swift_dynamicCast();
    v64 = v104;
    v65 = v106;
    v66 = v105;
    if (v63)
    {
      v113 = 0;
      if (v112 > 31536000.0 || v112 < 3600.0)
      {
        v112 = 86400.0;
        v113 = 0;
      }
    }

    else
    {
      v112 = 0.0;
      v113 = v63 ^ 1;
    }
  }

  else
  {

    v112 = 0.0;
    v113 = 1;
    v64 = v104;
    v65 = v106;
    v66 = v105;
  }

  sub_1000799D0();
  sub_1000799C0();
  v72 = sub_100079990();
  v75 = *(v30 + 8);
  v74 = v30 + 8;
  v73 = v75;
  v76 = v66;
  v77 = v108;
  v75(v76, v108);
  if (v72)
  {
    if (qword_1000A0C40 != -1)
    {
      swift_once();
    }

    v78 = sub_100079BA0();
    sub_1000070F4(v78, qword_1000A6BE8);
    v79 = sub_100079B80();
    v80 = sub_10007A190();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "removing expired config", v81, 2u);
    }

    v82 = [objc_opt_self() defaultManager];
    sub_100079800(v83);
    v85 = v84;
    v114[0] = 0;
    v86 = [v82 removeItemAtURL:v84 error:v114];

    if (v86)
    {
      v87 = v114[0];
      sub_1000071DC(v56, v107);
    }

    else
    {
      v88 = v114[0];
      sub_1000797A0();

      swift_willThrow();
      swift_errorRetain();
      v89 = sub_100079B80();
      v90 = sub_10007A150();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v105 = v42;
        v92 = v91;
        v93 = swift_slowAlloc();
        v109 = v74;
        v94 = v93;
        v114[0] = v93;
        *v92 = 136446210;
        swift_getErrorValue();
        v95 = sub_10007A6D0();
        v97 = sub_100006B00(v95, v96, v114);

        *(v92 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v89, v90, "failed to remove expired configuration: %{public}s", v92, 0xCu);
        sub_1000070A8(v94);

        sub_1000071DC(v56, v107);

        v98 = v108;
        v73(v106, v108);
        v73(v104, v98);
        sub_10000F318(v105);
        (*(v101 + 8))(v47, v110);
        return 0;
      }

      sub_1000071DC(v56, v107);
    }

    v99 = v108;
    v73(v106, v108);
    v73(v104, v99);
    sub_10000F318(v42);
    (*(v43 + 8))(v47, v110);
    return 0;
  }

  v73(v65, v77);
  v73(v64, v77);
  sub_10000F318(v42);
  (*(v43 + 8))(v47, v110);
  return v56;
}

uint64_t sub_10000BFCC()
{
  v1[15] = v0;
  v2 = sub_100079590();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = *(*(sub_10000712C(&qword_10009DFB0, &qword_10007BA50) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v6 = sub_1000798B0();
  v1[20] = v6;
  v7 = *(v6 - 8);
  v1[21] = v7;
  v8 = *(v7 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_10000C164, 0, 0);
}

uint64_t sub_10000C164()
{
  v1 = v0[15];
  v2 = sub_10000B1B0();
  if (v3 >> 60 == 15)
  {
    v4 = v0[24];
    v5 = v0[15];
    type metadata accessor for Throttle();
    sub_100079820();
    v6 = sub_100053794(v4);
    v0[25] = v6;
    v7 = *(*v6 + 160);
    v19 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[26] = v9;
    *v9 = v0;
    v9[1] = sub_10000C3A8;

    return v19();
  }

  else
  {
    v11 = v3;
    v12 = v2;
    v14 = v0[23];
    v13 = v0[24];
    v15 = v0[22];
    v17 = v0[18];
    v16 = v0[19];

    v18 = v0[1];

    return v18(v12, v11);
  }
}

uint64_t sub_10000C3A8(char a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_10000C4D4, 0, 0);
}

uint64_t sub_10000C4D4()
{
  if (*(v0 + 320))
  {
    if (qword_1000A0C40 != -1)
    {
      swift_once();
    }

    v1 = sub_100079BA0();
    *(v0 + 216) = sub_1000070F4(v1, qword_1000A6BE8);
    v2 = sub_100079B80();
    v3 = sub_10007A190();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "fetching configuration from server", v4, 2u);
    }

    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(v0 + 152);

    sub_100079880();
    v8 = (*(v6 + 48))(v7, 1, v5);
    if (v8 == 1)
    {
      __break(1u);
    }

    else
    {
      (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
      v10 = RequestOptions.globalRequestOptions.unsafeMutableAddressor();
      swift_beginAccess();
      v11 = *v10;
      v12 = objc_opt_self();

      v13 = [v12 mainBundle];
      v14 = [v13 bundleIdentifier];

      if (v14)
      {
        v16 = *(v0 + 184);
        v15 = *(v0 + 192);
        v17 = *(v0 + 160);
        v18 = *(v0 + 168);
        v19 = *(v0 + 144);
        sub_100079E20();

        v20 = sub_10005D6C8(1, 1);
        v21 = sub_1000535B0(v20 & 0x101);
        *(v0 + 224) = v21;

        [v21 setTlsPinning:1];
        *(v0 + 232) = [objc_allocWithZone(C2RequestManager) init];
        (*(v18 + 16))(v15, v16, v17);
        sub_100079550();
        v22 = async function pointer to C2RequestManager.data(for:options:)[1];
        v23 = swift_task_alloc();
        *(v0 + 240) = v23;
        *v23 = v0;
        v23[1] = sub_10000C990;
        v8 = *(v0 + 144);
        v9 = v21;

        return C2RequestManager.data(for:options:)(v8, v9);
      }
    }

    __break(1u);
    return C2RequestManager.data(for:options:)(v8, v9);
  }

  if (qword_1000A0C40 != -1)
  {
    swift_once();
  }

  v24 = sub_100079BA0();
  sub_1000070F4(v24, qword_1000A6BE8);
  v25 = sub_100079B80();
  v26 = sub_10007A190();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "configuration fetch throttled", v27, 2u);
  }

  sub_10000E4C8();
  swift_allocError();
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 3;
  v30 = *(v0 + 192);
  v29 = *(v0 + 200);
  v32 = *(v0 + 176);
  v31 = *(v0 + 184);
  v34 = *(v0 + 144);
  v33 = *(v0 + 152);
  swift_willThrow();

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_10000C990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 240);
  v8 = *v4;
  v6[31] = a1;
  v6[32] = a2;
  v6[33] = a3;
  v6[34] = v3;

  v9 = v5[29];
  (*(v5[17] + 8))(v5[18], v5[16]);

  if (v3)
  {
    v10 = sub_10000D6DC;
  }

  else
  {
    v10 = sub_10000CB50;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10000CB50()
{
  v82 = v0;
  v1 = *(v0 + 264);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 264);
    v5 = [v3 statusCode];
    v6 = *(v0 + 264);
    if (v5 <= 199)
    {

LABEL_9:
      v30 = *(v0 + 256);
      v31 = *(v0 + 264);
      v32 = *(v0 + 248);
      v33 = *(v0 + 224);
      v79 = *(v0 + 184);
      v35 = *(v0 + 160);
      v34 = *(v0 + 168);
      v36 = [v3 statusCode];
      sub_10000E4C8();
      v22 = swift_allocError();
      *v37 = v36;
      *(v37 + 8) = 0;
      *(v37 + 16) = 2;
      swift_willThrow();

      sub_1000071DC(v32, v30);
      (*(v34 + 8))(v79, v35);
      goto LABEL_12;
    }

    v7 = [v3 statusCode];

    if (v7 >= 300)
    {
      goto LABEL_9;
    }
  }

  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  v10 = objc_opt_self();
  isa = sub_100079910().super.isa;
  *(v0 + 104) = 0;
  v12 = [v10 propertyListWithData:isa options:0 format:0 error:v0 + 104];

  v13 = *(v0 + 104);
  if (!v12)
  {
    v38 = *(v0 + 256);
    v39 = *(v0 + 264);
    v40 = *(v0 + 248);
    v41 = *(v0 + 224);
    v80 = *(v0 + 184);
    v43 = *(v0 + 160);
    v42 = *(v0 + 168);
    v44 = v13;
    v22 = sub_1000797A0();

    swift_willThrow();
    sub_1000071DC(v40, v38);

    (*(v42 + 8))(v80, v43);
    goto LABEL_12;
  }

  v14 = v13;
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_10000712C(&qword_10009E290, qword_10007BD90);
  if (!swift_dynamicCast())
  {
    v61 = *(v0 + 256);
    v62 = *(v0 + 264);
    v63 = *(v0 + 248);
    v64 = *(v0 + 224);
    v65 = *(v0 + 184);
    v66 = *(v0 + 160);
    v67 = *(v0 + 168);
    sub_10000E4C8();
    v22 = swift_allocError();
    *v68 = 0xD000000000000028;
    *(v68 + 8) = 0x8000000100082490;
    *(v68 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v63, v61);

    (*(v67 + 8))(v65, v66);
    goto LABEL_12;
  }

  v15 = *(v0 + 272);
  v17 = *(v0 + 248);
  v16 = *(v0 + 256);
  v18 = *(v0 + 176);
  v19 = *(v0 + 112);
  v20 = *(v0 + 120);

  v21 = v20 + *(type metadata accessor for StorebagSigningConfiguration() + 20);
  sub_100079810();
  sub_100079940();
  if (v15)
  {
    v22 = v15;
    v23 = *(v0 + 264);
    v24 = *(v0 + 224);
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);
    sub_1000071DC(*(v0 + 248), *(v0 + 256));

    v29 = *(v28 + 8);
    v29(v26, v27);
    v29(v25, v27);
LABEL_12:
    *(v0 + 304) = v22;
    v45 = *(v0 + 216);
    swift_errorRetain();
    v46 = sub_100079B80();
    v47 = sub_10007A190();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v81 = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v51 = *(v0 + 72);
      v50 = *(v0 + 80);
      v52 = *(v0 + 88);
      v53 = sub_10007A6D0();
      v55 = sub_100006B00(v53, v54, &v81);

      *(v48 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v46, v47, "failed to fetch configuration from server with error (%s)", v48, 0xCu);
      sub_1000070A8(v49);
    }

    v56 = **(v0 + 200);
    v77 = (*(v56 + 168) + **(v56 + 168));
    v57 = *(*(v56 + 168) + 4);
    v58 = swift_task_alloc();
    *(v0 + 312) = v58;
    *v58 = v0;
    v58[1] = sub_10000D4C8;
    v59 = *(v0 + 200);

    return v77();
  }

  v69 = *(v0 + 200);
  v71 = *(v0 + 168);
  v70 = *(v0 + 176);
  v72 = *(v0 + 160);
  v73 = *(v71 + 8);
  *(v0 + 280) = v73;
  *(v0 + 288) = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v73(v70, v72);
  v78 = (*(*v69 + 152) + **(*v69 + 152));
  v74 = *(*(*v69 + 152) + 4);
  v75 = swift_task_alloc();
  *(v0 + 296) = v75;
  *v75 = v0;
  v75[1] = sub_10000D210;
  v76 = *(v0 + 200);

  return v78();
}

uint64_t sub_10000D210()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return _swift_task_switch(sub_10000D338, 0, 0);
}

uint64_t sub_10000D338()
{
  v1 = v0[27];
  v2 = sub_100079B80();
  v3 = sub_10007A190();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "successfully fetched configuration from server", v4, 2u);

    v5 = v0[33];
    v6 = (v0 + 28);
  }

  else
  {
    v6 = (v0 + 33);
    v5 = v2;
    v2 = v0[28];
  }

  v7 = *v6;
  v9 = v0[35];
  v8 = v0[36];
  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[20];

  v9(v11, v12);
  v13 = v0[31];
  v14 = v0[32];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[22];
  v19 = v0[18];
  v18 = v0[19];

  v20 = v0[1];

  return v20(v13, v14);
}

uint64_t sub_10000D4C8()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return _swift_task_switch(sub_10000D5F0, 0, 0);
}

uint64_t sub_10000D5F0()
{
  v1 = v0[38];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000D6DC()
{
  v22 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);

  (*(v3 + 8))(v1, v2);
  *(v0 + 304) = *(v0 + 272);
  v4 = *(v0 + 216);
  swift_errorRetain();
  v5 = sub_100079B80();
  v6 = sub_10007A190();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 88);
    v12 = sub_10007A6D0();
    v14 = sub_100006B00(v12, v13, &v21);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "failed to fetch configuration from server with error (%s)", v7, 0xCu);
    sub_1000070A8(v8);
  }

  v15 = **(v0 + 200);
  v20 = (*(v15 + 168) + **(v15 + 168));
  v16 = *(*(v15 + 168) + 4);
  v17 = swift_task_alloc();
  *(v0 + 312) = v17;
  *v17 = v0;
  v17[1] = sub_10000D4C8;
  v18 = *(v0 + 200);

  return v20();
}

uint64_t sub_10000D950()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_10000DA08;

  return sub_10000BFCC();
}

uint64_t sub_10000DA08(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 288);
  v5 = *v3;
  v5[37] = a1;
  v5[38] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10000DB80, 0, 0);
  }
}

uint64_t sub_10000DB80()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = objc_opt_self();
  isa = sub_100079910().super.isa;
  v0[29] = 0;
  v5 = [v3 propertyListWithData:isa options:0 format:0 error:v0 + 29];

  v6 = v0[29];
  if (!v5)
  {
    v38 = v6;
    sub_1000797A0();

    swift_willThrow();

    goto LABEL_36;
  }

  v7 = v6;
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_10000712C(&qword_10009E290, qword_10007BD90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v40 = v0[37];
    v39 = v0[38];
    v41 = 0x8000000100082490;
    sub_10000E4C8();
    swift_allocError();
    v43 = 0xD000000000000028;
LABEL_38:
    *v42 = v43;
    *(v42 + 8) = v41;
    *(v42 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v40, v39);
    v44 = v0[1];

    return v44();
  }

  v8 = v0[30];
  if (!*(v8 + 16) || (v9 = v0[30], v10 = sub_10000A0FC(0x67616265726F7453, 0xE800000000000000), (v11 & 1) == 0) || (sub_10000978C(*(v8 + 56) + 32 * v10, (v0 + 6)), (swift_dynamicCast() & 1) == 0))
  {

    v40 = v0[37];
    v39 = v0[38];
    v41 = 0x80000001000824C0;
    sub_10000E4C8();
    swift_allocError();
    v43 = 0xD00000000000004ALL;
    goto LABEL_38;
  }

  v12 = v0[31];
  if (!*(v12 + 16) || (v13 = v0[31], v14 = sub_10000A0FC(0x676E696E676953, 0xE700000000000000), (v15 & 1) == 0) || (sub_10000978C(*(v12 + 56) + 32 * v14, (v0 + 10)), (swift_dynamicCast() & 1) == 0))
  {

    v40 = v0[37];
    v39 = v0[38];
    v41 = 0x8000000100082510;
    sub_10000E4C8();
    swift_allocError();
    v43 = 0xD000000000000049;
    goto LABEL_38;
  }

  v16 = v0[32];
  if (!*(v16 + 16) || (v17 = v0[32], v18 = sub_10000A0FC(0x6D6E6F7269766E45, 0xEB00000000746E65), (v19 & 1) == 0) || (sub_10000978C(*(v16 + 56) + 32 * v18, (v0 + 14)), (swift_dynamicCast() & 1) == 0))
  {

    v40 = v0[37];
    v39 = v0[38];
    v41 = 0x8000000100082560;
    sub_10000E4C8();
    swift_allocError();
    v43 = 0xD00000000000004DLL;
    goto LABEL_38;
  }

  v20 = v0[33];
  if (*(v20 + 16))
  {
    v21 = sub_10000A0FC(0x64756F6C4369, 0xE600000000000000);
    if (v22)
    {
      sub_10000978C(*(v20 + 56) + 32 * v21, (v0 + 18));
      if (swift_dynamicCast())
      {
        v50 = sub_10000EA7C(v0[35]);

        sub_10000E260(v50);
      }
    }
  }

  v23 = sub_10003F2A0();
  swift_beginAccess();
  if (*v23 == 1)
  {
    v47 = v20 + 64;
    v24 = -1;
    v25 = -1 << *(v20 + 32);
    if (-v25 < 64)
    {
      v24 = ~(-1 << -v25);
    }

    v26 = v20;
    v27 = v24 & *(v20 + 64);
    v28 = (63 - v25) >> 6;
    v51 = v26;

    v29 = 0;
    while (v27)
    {
LABEL_25:
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = (v51[6] + ((v29 << 10) | (16 * v31)));
      v33 = *v32;
      if (*v32 != 0x64756F6C4369 || v32[1] != 0xE600000000000000)
      {
        v48 = v32[1];
        if ((sub_10007A610() & 1) == 0)
        {
          if (v51[2])
          {

            v35 = sub_10000A0FC(v33, v48);
            if (v36 & 1) != 0 && (sub_10000978C(v51[7] + 32 * v35, (v0 + 22)), (swift_dynamicCast()))
            {
              v37 = v0[34];

              v49 = sub_10000EA7C(v37);

              sub_10000E260(v49);
            }

            else
            {
            }
          }
        }
      }
    }

    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
      }

      if (v30 >= v28)
      {
        break;
      }

      v27 = *(v47 + 8 * v30);
      ++v29;
      if (v27)
      {
        v29 = v30;
        goto LABEL_25;
      }
    }

    sub_1000071DC(v0[37], v0[38]);
  }

  else
  {
    sub_1000071DC(v0[37], v0[38]);
  }

  v46 = v0[1];

  return v46(_swiftEmptyArrayStorage);
}

uint64_t sub_10000E260(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10007A4A0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_10007A4A0();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10000E6DC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10000E77C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10000E350()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_100079B70();
}

uint64_t sub_10000E39C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_100079B60();
}

Swift::Int sub_10000E3F4()
{
  sub_10007A730();
  v1 = *v0;
  swift_getWitnessTable();
  sub_100079B60();
  return sub_10007A760();
}

uint64_t sub_10000E45C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_100079B50();
}

unint64_t sub_10000E4C8()
{
  result = qword_10009E288;
  if (!qword_10009E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E288);
  }

  return result;
}

unint64_t sub_10000E51C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10007A730();
  type metadata accessor for CFString(0);
  sub_10000F214(&qword_10009E348, type metadata accessor for CFString);
  sub_100079B60();
  v4 = sub_10007A760();

  return sub_10000E5D0(a1, v4);
}

unint64_t sub_10000E5D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10000F214(&qword_10009E348, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100079B50();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10000E6DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_10007A4A0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_10007A3E0();
  *v1 = result;
  return result;
}

uint64_t sub_10000E77C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10007A4A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10007A4A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000F19C();
          for (i = 0; i != v6; ++i)
          {
            sub_10000712C(&qword_10009E318, &qword_10007BEC8);
            v9 = sub_10000E8FC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SecKey(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_10000E8FC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10007A3D0();
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
    return sub_10000E97C;
  }

  __break(1u);
  return result;
}

unint64_t sub_10000E984(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009E340, &unk_10007BEE0);
    v3 = sub_10007A4D0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_10000E51C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void *sub_10000EA7C(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = v2;
    if (*(a1 + 16))
    {
      v5 = &off_100095E28 + 2 * v3;
      v6 = v5[4];
      v7 = v5[5];

      v8 = sub_10000A0FC(v6, v7);
      if ((v9 & 1) == 0)
      {
        goto LABEL_2;
      }

      sub_10000978C(*(a1 + 56) + 32 * v8, v33);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_2;
      }

      v10 = sub_1000798E0();
      v12 = v11;
      if (v11 >> 60 == 15)
      {
        if (qword_1000A0C40 != -1)
        {
          swift_once();
        }

        v13 = sub_100079BA0();
        sub_1000070F4(v13, qword_1000A6BE8);
        v14 = sub_100079B80();
        v15 = sub_10007A170();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          v17 = v15;
          v18 = v14;
          v19 = "failed to parse configuration, failed to read public key data";
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      sub_10000712C(&qword_10009E328, &qword_10007BED0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10007B7D0;
      *(inited + 32) = kSecAttrKeyType;
      *(inited + 40) = kSecAttrKeyTypeRSA;
      *(inited + 48) = kSecAttrKeyClass;
      *(inited + 56) = kSecAttrKeyClassPublic;
      v21 = kSecAttrKeyType;
      v22 = kSecAttrKeyTypeRSA;
      v23 = kSecAttrKeyClass;
      v24 = kSecAttrKeyClassPublic;
      sub_10000E984(inited);
      swift_setDeallocating();
      sub_10000712C(&qword_10009E330, &qword_10007BED8);
      swift_arrayDestroy();
      isa = sub_100079910().super.isa;
      type metadata accessor for CFString(0);
      sub_10000F214(&qword_10009E338, type metadata accessor for CFString);
      v26 = sub_100079D30().super.isa;

      v27 = SecKeyCreateWithData(isa, v26, 0);

      if (!v27)
      {
        if (qword_1000A0C40 != -1)
        {
          swift_once();
        }

        v29 = sub_100079BA0();
        sub_1000070F4(v29, qword_1000A6BE8);
        v14 = sub_100079B80();
        v30 = sub_10007A170();
        if (os_log_type_enabled(v14, v30))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          v17 = v30;
          v18 = v14;
          v19 = "failed to parse configuration, failed to decode public key";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v18, v17, v19, v16, 2u);
        }

        sub_1000071C8(v10, v12);
LABEL_23:

LABEL_2:

        goto LABEL_3;
      }

      sub_1000071C8(v10, v12);

      v28 = v27;

      sub_100079FD0();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10007A000();
      }

      sub_10007A020();
    }

LABEL_3:
    v2 = 1;
    v3 = 1;
  }

  while ((v4 & 1) == 0);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000EF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000798B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000EFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000798B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000F038()
{
  result = sub_1000798B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000F0A4(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10000F0C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000F0D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000F11C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10000F160(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10000F19C()
{
  result = qword_10009E320;
  if (!qword_10009E320)
  {
    sub_1000072D8(&qword_10009E318, &qword_10007BEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E320);
  }

  return result;
}

uint64_t sub_10000F214(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000F25C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000F2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009E008, &qword_10007E1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F318(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009E008, &qword_10007E1F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F428()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6C00);
  sub_1000070F4(v0, qword_1000A6C00);
  return sub_100079B90();
}

uint64_t sub_10000F4A8(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v16 = *(v8 + 48);
  v17 = *(v8 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = (v18 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_clientID);
  *v19 = a5;
  v19[1] = a6;
  *(v18 + 112) = a3;
  *(v18 + 120) = a1;
  v40 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v20 = v40[7];
  v21 = OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_url;
  v22 = sub_1000798B0();
  (*(*(v22 - 8) + 16))(v18 + v21, &a4[v20], v22);
  *(v18 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_options) = a7;
  v23 = a7;
  v24 = a2[3];
  v25 = a2[4];
  sub_10000751C(a2, v24);
  v26 = *(v25 + 16);

  v38 = v23;
  v27 = v26(v24, v25);
  v29 = v28;
  v31 = a2[3];
  v30 = a2[4];
  sub_10000751C(a2, v31);
  (*(v30 + 8))(v41, v31, v30);
  sub_10003762C(v27, v29, v41, a4[v40[9]], v42);

  v32 = v18 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders;
  v33 = v42[3];
  *(v32 + 32) = v42[2];
  *(v32 + 48) = v33;
  *(v32 + 64) = v42[4];
  *(v32 + 80) = v43;
  v34 = v42[1];
  *v32 = v42[0];
  *(v32 + 16) = v34;
  *(v18 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_filters) = *&a4[v40[8]];
  v35 = *(a4 + 1);
  v36 = (v18 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_name);
  *v36 = *a4;
  v36[1] = v35;
  LOBYTE(a6) = a4[v40[10]];

  sub_100012CF8(a4, type metadata accessor for SessionConfiguration.BackendHTTP);
  *(v18 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_skipLogging) = a6;
  sub_1000070A8(a2);
  return v18;
}

Swift::Int sub_10000F720()
{
  v1 = *v0;
  sub_10007A730();
  sub_10007A740(v1);
  return sub_10007A760();
}

Swift::Int sub_10000F794()
{
  v1 = *v0;
  sub_10007A730();
  sub_10007A740(v1);
  return sub_10007A760();
}

uint64_t sub_10000F7D8()
{
  v1 = 0x6449746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x73746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D695474736F70;
  }
}

uint64_t sub_10000F830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000135D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000F864(uint64_t a1)
{
  v2 = sub_100012F9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F8A0(uint64_t a1)
{
  v2 = sub_100012F9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F8DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v7 = sub_10000712C(&qword_10009E480, &qword_10007C2B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100012F9C();
  sub_10007A7C0();
  v18 = 0;
  sub_10007A5B0();
  if (!v4)
  {
    v17 = 1;
    sub_10007A5A0();
    v16 = a4;
    v15 = 2;
    sub_10000712C(&qword_10009E488, &qword_10007C2C0);
    sub_100012FF0();
    sub_10007A5C0();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10000FB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = a1;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v7 = *(v3 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_filters);
  v8 = *(v7 + 16);

  if (!v8)
  {
    return v6;
  }

  v10 = 0;
  v11 = v7 + 32;
  while (v10 < *(v7 + 16))
  {
    sub_10001378C(v11, v14);
    v12 = v15;
    v13 = v16;
    sub_10000751C(v14, v15);
    v6 = v5;
    (*(v13 + 24))(v17, v12, v13);
    if (v5)
    {
      sub_1000070A8(v14);

      return v6;
    }

    ++v10;
    result = sub_1000070A8(v14);
    v11 += 40;
    if (v8 == v10)
    {
      return v17[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000FC3C(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = sub_100079A70();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v6 = type metadata accessor for ServiceEventValue();
  v2[38] = v6;
  v7 = *(v6 - 8);
  v2[39] = v7;
  v8 = *(v7 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v9 = *(*(sub_10000712C(&qword_10009E368, &qword_10007D3C0) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v10 = sub_1000798B0();
  v2[44] = v10;
  v11 = *(v10 - 8);
  v2[45] = v11;
  v12 = *(v11 + 64) + 15;
  v2[46] = swift_task_alloc();
  v13 = sub_100079590();
  v2[47] = v13;
  v14 = *(v13 - 8);
  v2[48] = v14;
  v15 = *(v14 + 64) + 15;
  v2[49] = swift_task_alloc();
  v16 = sub_1000795E0();
  v2[50] = v16;
  v17 = *(v16 - 8);
  v2[51] = v17;
  v18 = *(v17 + 64) + 15;
  v2[52] = swift_task_alloc();
  v19 = sub_100079A00();
  v2[53] = v19;
  v20 = *(v19 - 8);
  v2[54] = v20;
  v21 = *(v20 + 64) + 15;
  v2[55] = swift_task_alloc();

  return _swift_task_switch(sub_10000FF18, v1, 0);
}

uint64_t sub_10000FF18()
{
  v171 = v0;
  v1 = v0;
  v2 = *(v0 + 33);
  v3 = *(v2 + 16);
  v168 = v1;
  if (v3)
  {
    v169 = _swiftEmptyArrayStorage;
    sub_10001276C(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = (v2 + 48);
    do
    {
      v6 = *(v1 + 34);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      v10 = sub_10000FB14(v7, v8, v9);
      v12 = v11;
      v14 = v13;

      v169 = v4;
      v16 = v4[2];
      v15 = v4[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_10001276C((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
        v4 = v169;
      }

      v4[2] = v17;
      v18 = &v4[3 * v16];
      v18[4] = v10;
      v18[5] = v12;
      v18[6] = v14;
      v5 += 3;
      --v3;
      v1 = v168;
    }

    while (v3);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    v17 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage;
    if (!v17)
    {
LABEL_16:
      *(v1 + 56) = v19;

      if (v19[2])
      {
        if (qword_1000A1060 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_99;
      }

      v38 = *(v1 + 55);
      v39 = *(v1 + 52);
      v40 = *(v1 + 49);
      v41 = *(v1 + 46);
      v43 = *(v1 + 42);
      v42 = *(v1 + 43);
      v45 = *(v1 + 40);
      v44 = *(v1 + 41);
      v46 = *(v1 + 37);

      v47 = *(v1 + 1);

      return v47();
    }
  }

  v20 = 0;
  v1 = (v4 + 6);
  v19 = _swiftEmptyArrayStorage;
  v165 = v17;
  while (v20 < v4[2])
  {
    v21 = *(v1 - 2);
    v22 = *(v1 - 1);
    v23 = *v1;

    v169 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10001276C(0, v19[2] + 1, 1);
      v17 = v165;
      v19 = v169;
    }

    v25 = v19[2];
    v24 = v19[3];
    if (v25 >= v24 >> 1)
    {
      sub_10001276C((v24 > 1), v25 + 1, 1);
      v17 = v165;
      v19 = v169;
    }

    ++v20;
    v19[2] = v25 + 1;
    v26 = &v19[3 * v25];
    v26[4] = v21;
    v26[5] = v22;
    v26[6] = v23;
    v1 += 24;
    if (v17 == v20)
    {
      v1 = v168;
      goto LABEL_16;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_99:
    swift_once();
LABEL_18:
    v27 = *(v1 + 34);
    v28 = sub_100079BA0();
    *(v1 + 57) = sub_1000070F4(v28, qword_1000A6C00);

    v29 = sub_100079B80();
    v30 = sub_10007A190();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v1 + 44);
      v32 = *(v1 + 34);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v169 = v34;
      *v33 = 134349314;
      *(v33 + 4) = v19[2];

      *(v33 + 12) = 2082;
      sub_100013074(&qword_10009E378, &type metadata accessor for URL);
      v35 = sub_10007A5E0();
      v37 = sub_100006B00(v35, v36, &v169);

      *(v33 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "submitting %{public}ld events to %{public}s", v33, 0x16u);
      sub_1000070A8(v34);
    }

    else
    {
    }

    v49 = *(v1 + 54);
    v48 = *(v1 + 55);
    v50 = *(v1 + 53);
    v51 = *(v1 + 34);
    sub_1000799C0();
    v52 = getTimeIntervalSince1970(Date:)();
    (*(v49 + 8))(v48, v50);
    v53 = *(v51 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_clientID + 8);
    v166 = *(v51 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_clientID);
    *(v1 + 58) = v53;
    v54 = v19[2];
    if (v54)
    {
      v169 = _swiftEmptyArrayStorage;

      sub_10001274C(0, v54, 0);
      v55 = v169;
      v56 = v169[2];
      v57 = (v19 + 6);
      do
      {
        v58 = *v57;
        v169 = v55;
        v59 = v55[3];

        if (v56 >= v59 >> 1)
        {
          sub_10001274C((v59 > 1), v56 + 1, 1);
          v55 = v169;
        }

        v55[2] = v56 + 1;
        v55[v56 + 4] = v58;
        v57 += 3;
        ++v56;
        --v54;
      }

      while (v54);
      v1 = v168;
    }

    else
    {

      v55 = _swiftEmptyArrayStorage;
    }

    *(v1 + 59) = v55;
    v60 = *(v1 + 51);
    v61 = *(v1 + 52);
    v62 = *(v1 + 50);
    v63 = sub_100079620();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    *(v1 + 60) = sub_100079610();
    sub_10000712C(&qword_10009DE48, &unk_10007C100);
    v66 = *(v60 + 72);
    v67 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_10007B7C0;
    sub_1000795D0();
    *(v1 + 27) = v68;
    sub_100013074(&qword_10009DE50, &type metadata accessor for JSONEncoder.OutputFormatting);
    sub_10000712C(&qword_10009DE58, &qword_10007B810);
    sub_10001278C();
    sub_10007A2E0();
    sub_1000795F0();
    *(v1 + 13) = v52;
    *(v1 + 14) = v166;
    *(v1 + 15) = v53;
    *(v1 + 16) = v55;
    sub_1000127F0();
    v69 = sub_100079600();
    *(v1 + 61) = 0;
    *(v1 + 62) = v69;
    *(v1 + 63) = v70;
    v72 = sub_10003F2A0();
    swift_beginAccess();
    if (*v72 == 1 && *sub_10003F484() == 1)
    {
      v73 = *(v1 + 34);
    }

    else
    {
      v73 = *(v1 + 34);
      if ((*(v73 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_skipLogging) & 1) == 0)
      {
        v77 = *(v73 + 120);
        *(v1 + 64) = v77;
        v78 = v73 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_name;
        *(v1 + 65) = *(v73 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_name);
        *(v1 + 66) = *(v78 + 8);

        return _swift_task_switch(sub_1000110E0, v77, 0);
      }
    }

    v74 = *(v1 + 62);
    v75 = *(v1 + 63);
    v76 = *(v1 + 49);
    (*(*(v1 + 45) + 16))(*(v1 + 46), v73 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_url, *(v1 + 44));
    sub_100079550();
    sub_100007230(v74, v75);
    sub_100012A98(v74, v75, v74, v75, &v169);
    v80 = v169;
    v79 = v170;
    if (v170 >> 60 == 15)
    {
      sub_100007230(*(v1 + 62), *(v1 + 63));
      v81 = *(v1 + 62);
      v82 = *(v1 + 63);
    }

    else
    {
      sub_100007230(v169, v170);
    }

    *(v1 + 69) = v79;
    *(v1 + 68) = v80;
    v83 = *(v1 + 49);
    sub_100079570();
    sub_100079540();
    if (v79 >> 60 != 15)
    {
      v84 = *(v1 + 49);
      v177._object = 0x80000001000826D0;
      v173.value._countAndFlagsBits = 1885960807;
      v173.value._object = 0xE400000000000000;
      v177._countAndFlagsBits = 0xD000000000000010;
      sub_100079580(v173, v177);
    }

    v85 = *(v1 + 49);
    v178._countAndFlagsBits = 0x747065636341;
    v174.value._object = 0x8000000100082690;
    v174.value._countAndFlagsBits = 0xD000000000000010;
    v178._object = 0xE600000000000000;
    sub_100079580(v174, v178);
    v179._object = 0xEC00000065707954;
    v175.value._object = 0x8000000100082690;
    v175.value._countAndFlagsBits = 0xD000000000000010;
    v179._countAndFlagsBits = 0x2D746E65746E6F43;
    sub_100079580(v175, v179);
    v86 = sub_100079560();
    if (v87 >> 60 == 15)
    {
      goto LABEL_101;
    }

    v88 = v87 >> 62;
    if ((v87 >> 62) <= 1)
    {
      if (!v88)
      {
        v89 = BYTE6(v87);
        sub_1000071C8(v86, v87);
        v90 = v89;
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (v88 != 2)
    {
      sub_1000071C8(v86, v87);
      v90 = 0;
      goto LABEL_57;
    }

    v92 = *(v86 + 16);
    v91 = *(v86 + 24);
    v86 = sub_1000071C8(v86, v87);
    v90 = v91 - v92;
    if (__OFSUB__(v91, v92))
    {
      __break(1u);
LABEL_54:
      v93 = HIDWORD(v86);
      v94 = v86;
      v86 = sub_1000071C8(v86, v87);
      LODWORD(v90) = v93 - v94;
      if (__OFSUB__(v93, v94))
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        return C2RequestManager.data(for:options:)(v86, v87);
      }

      v90 = v90;
    }

LABEL_57:
    v95 = *(v1 + 49);
    v167 = *(v1 + 43);
    v160 = *(v1 + 40);
    v161 = *(v1 + 39);
    v162 = *(v1 + 42);
    v96 = *(v1 + 34);
    *(v1 + 28) = v90;
    v176.value._countAndFlagsBits = sub_10007A5E0();
    v180._object = 0xEE006874676E654CLL;
    v180._countAndFlagsBits = 0x2D746E65746E6F43;
    sub_100079580(v176, v180);

    v97 = v96 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders;
    v98 = *(v96 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders + 16);
    *(v1 + 1) = *(v96 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders);
    *(v1 + 2) = v98;
    v100 = *(v97 + 48);
    v99 = *(v97 + 64);
    v101 = *(v97 + 32);
    *(v1 + 12) = *(v97 + 80);
    *(v1 + 4) = v100;
    *(v1 + 5) = v99;
    *(v1 + 3) = v101;
    v102 = sub_1000376DC();
    v103 = 0;
    v19 = (v102 + 64);
    v104 = *(v102 + 64);
    v163 = v102;
    v164 = (v102 + 64);
    v105 = -1;
    v106 = -1 << *(v102 + 32);
    if (-v106 < 64)
    {
      v105 = ~(-1 << -v106);
    }

    v107 = v105 & v104;
    v108 = (63 - v106) >> 6;
    v109 = &unk_10009EB70;
    if ((v105 & v104) != 0)
    {
      break;
    }

LABEL_64:
    if (v108 <= v103 + 1)
    {
      v116 = v103 + 1;
    }

    else
    {
      v116 = v108;
    }

    v117 = v116 - 1;
    v1 = v168;
    while (1)
    {
      v115 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v115 >= v108)
      {
        v141 = *(v168 + 42);
        v125 = v109;
        v142 = sub_10000712C(v109, qword_10007C110);
        (*(*(v142 - 8) + 56))(v141, 1, 1, v142);
        v107 = 0;
        v103 = v117;
        goto LABEL_73;
      }

      v107 = v19[v115];
      ++v103;
      if (v107)
      {
        v103 = v115;
        goto LABEL_72;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v115 = v103;
    v1 = v168;
LABEL_72:
    v119 = *(v1 + 41);
    v118 = *(v1 + 42);
    v120 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
    v121 = v120 | (v115 << 6);
    v122 = (*(v163 + 48) + 16 * v121);
    v123 = *v122;
    v124 = v122[1];
    sub_10000A908(*(v163 + 56) + *(v161 + 72) * v121, v119);
    v125 = v109;
    v126 = sub_10000712C(v109, qword_10007C110);
    v127 = *(v126 + 48);
    *v118 = v123;
    *(v162 + 8) = v124;
    sub_100012C24(v119, v118 + v127);
    v128 = *(*(v126 - 8) + 56);
    v129 = v126;
    v1 = v168;
    v128(v118, 0, 1, v129);

LABEL_73:
    v130 = *(v1 + 43);
    sub_100012C88(*(v1 + 42), v130);
    v131 = sub_10000712C(v125, qword_10007C110);
    if ((*(*(v131 - 8) + 48))(v130, 1, v131) == 1)
    {
      break;
    }

    v132 = v125;
    v133 = *(v1 + 43);
    v134 = *(v1 + 40);
    v135 = *(v1 + 38);
    v136 = *v133;
    v137 = v1;
    v138 = *(v167 + 8);
    sub_100012C24(v133 + *(v131 + 48), v134);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v140 = *(v137 + 40);
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v110 = v136;
        v113 = v168;
        *(v168 + 30) = *v140;
        goto LABEL_79;
      }

      v109 = v132;
      if (EnumCaseMultiPayload == 1)
      {
        v110 = v136;
        v113 = v168;
        *(v168 + 31) = *v140;
LABEL_79:
        v111.value._countAndFlagsBits = sub_10007A5E0();
        object = v111.value._object;
        goto LABEL_62;
      }

      sub_100012CF8(v140, type metadata accessor for ServiceEventValue);
      v19 = v164;
      if (!v107)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v110 = v136;
      v111.value._countAndFlagsBits = *v140;
      object = *(v160 + 8);
      v113 = v168;
LABEL_62:
      v19 = v164;
      v114 = *(v113 + 49);
      v111.value._object = object;
      v181._countAndFlagsBits = v110;
      v181._object = v138;
      sub_100079580(v111, v181);

      v109 = v132;
      if (!v107)
      {
        goto LABEL_64;
      }
    }
  }

  v144 = *(v1 + 36);
  v143 = *(v1 + 37);
  v145 = *(v1 + 34);
  v146 = *(v1 + 35);

  [*(v145 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_options) copy];
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_100007670(0, &qword_10009E370, C2RequestOptions_ptr);
  swift_dynamicCast();
  v147 = *(v1 + 29);
  *(v1 + 70) = v147;
  sub_100079A60();
  sub_100079A10();
  (*(v144 + 8))(v143, v146);
  v148 = sub_100079DF0();

  [v147 setIdentifier:v148];

  sub_100007670(0, &qword_10009EC80, NSNumber_ptr);
  isa = sub_10007A290(1).super.super.isa;
  [v147 setUseNWLoaderOverride:isa];

  v150 = sub_100079850(1);
  if (v151)
  {
    if (v150 == 0xD00000000000001BLL && v151 == 0x80000001000826B0)
    {

      goto LABEL_88;
    }

    v152 = sub_10007A610();

    if (v152)
    {
LABEL_88:
      v153 = sub_10007A290(1).super.super.isa;
      [v147 setPrivacyProxyFailClosedOverride:v153];
    }
  }

  if (*(v1 + 3) == 0x51424A3241394B34 && *(v1 + 4) == 0xEA00000000005832 || (sub_10007A610() & 1) != 0)
  {
    v154 = sub_10007A290(0).super.super.isa;
    [v147 setUseNWLoaderOverride:v154];
  }

  [v147 set_optIntoDisableAPWakeOnIdleConnections:1];
  v86 = [objc_opt_self() sharedManager];
  *(v1 + 71) = v86;
  if (!v86)
  {
    goto LABEL_102;
  }

  v156 = *(v1 + 58);
  v155 = *(v1 + 59);
  v157 = *(v1 + 56);

  v158 = async function pointer to C2RequestManager.data(for:options:)[1];
  v159 = swift_task_alloc();
  *(v1 + 72) = v159;
  *v159 = v1;
  v159[1] = sub_100011B4C;
  v86 = *(v1 + 49);
  v87 = v147;

  return C2RequestManager.data(for:options:)(v86, v87);
}

uint64_t sub_1000110E0()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  sub_10000560C(*(v0 + 520), *(v0 + 528), *(v0 + 496), *(v0 + 504));
  *(v0 + 536) = v2;
  v3 = *(v0 + 272);
  if (v2)
  {
    v4 = sub_100011DF0;
  }

  else
  {
    v4 = sub_100011174;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100011174()
{
  v102 = v0;
  v1 = v0[67];
  v2 = v0[62];
  v3 = v0[63];
  v4 = v0[49];
  (*(v0[45] + 16))(v0[46], v0[34] + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_url, v0[44]);
  sub_100079550();
  sub_100007230(v2, v3);
  sub_100012A98(v2, v3, v2, v3, &v100);
  v99 = v0;
  if (v1)
  {
    v5 = v0[57];
    swift_errorRetain();
    v6 = sub_100079B80();
    v7 = sub_10007A170();

    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[62];
    v9 = v0[63];
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v100 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = v0[24];
      v14 = v0[25];
      v15 = v0[26];
      v16 = sub_10007A6D0();
      v18 = sub_100006B00(v16, v17, &v100);

      *(v11 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "failed to compress payload: %{public}s", v11, 0xCu);
      sub_1000070A8(v12);
    }

    else
    {
    }

    sub_100007230(v10, v9);
    v20 = 0;
    v23 = v0[62];
    v24 = v0[63];
    v19 = 0xF000000000000000;
  }

  else
  {
    v20 = v100;
    v19 = v101;
    if (v101 >> 60 == 15)
    {
      sub_100007230(v0[62], v0[63]);
      v21 = v0[62];
      v22 = v0[63];
    }

    else
    {
      sub_100007230(v100, v101);
    }
  }

  v0[69] = v19;
  v0[68] = v20;
  v25 = v0[49];
  sub_100079570();
  sub_100079540();
  if (v19 >> 60 != 15)
  {
    v26 = v0[49];
    v108._object = 0x80000001000826D0;
    v104.value._countAndFlagsBits = 1885960807;
    v104.value._object = 0xE400000000000000;
    v108._countAndFlagsBits = 0xD000000000000010;
    sub_100079580(v104, v108);
  }

  v27 = v0[49];
  v109._countAndFlagsBits = 0x747065636341;
  v105.value._object = 0x8000000100082690;
  v105.value._countAndFlagsBits = 0xD000000000000010;
  v109._object = 0xE600000000000000;
  sub_100079580(v105, v109);
  v110._object = 0xEC00000065707954;
  v106.value._object = 0x8000000100082690;
  v106.value._countAndFlagsBits = 0xD000000000000010;
  v110._countAndFlagsBits = 0x2D746E65746E6F43;
  sub_100079580(v106, v110);
  v28 = sub_100079560();
  if (v29 >> 60 == 15)
  {
    goto LABEL_64;
  }

  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 != 2)
    {
      sub_1000071C8(v28, v29);
      v32 = 0;
      goto LABEL_22;
    }

    v34 = *(v28 + 16);
    v33 = *(v28 + 24);
    v28 = sub_1000071C8(v28, v29);
    v32 = v33 - v34;
    if (!__OFSUB__(v33, v34))
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v30)
  {
LABEL_19:
    v35 = HIDWORD(v28);
    v36 = v28;
    v28 = sub_1000071C8(v28, v29);
    LODWORD(v32) = v35 - v36;
    if (!__OFSUB__(v35, v36))
    {
      v32 = v32;
      goto LABEL_22;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v31 = BYTE6(v29);
  sub_1000071C8(v28, v29);
  v32 = v31;
LABEL_22:
  v37 = v0[49];
  v98 = v0[43];
  v93 = v0[40];
  v94 = v0[39];
  v95 = v0[42];
  v38 = v0[34];
  v0[28] = v32;
  v107.value._countAndFlagsBits = sub_10007A5E0();
  v111._object = 0xEE006874676E654CLL;
  v111._countAndFlagsBits = 0x2D746E65746E6F43;
  sub_100079580(v107, v111);

  v39 = v38 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders;
  v40 = *(v38 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders + 16);
  *(v0 + 1) = *(v38 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders);
  *(v0 + 2) = v40;
  v42 = *(v39 + 48);
  v41 = *(v39 + 64);
  v43 = *(v39 + 32);
  v0[12] = *(v39 + 80);
  *(v0 + 4) = v42;
  *(v0 + 5) = v41;
  *(v0 + 3) = v43;
  v28 = sub_1000376DC();
  v44 = 0;
  v45 = v28 + 64;
  v96 = v28;
  v97 = v28 + 64;
  v46 = -1;
  v47 = -1 << *(v28 + 32);
  if (-v47 < 64)
  {
    v46 = ~(-1 << -v47);
  }

  v48 = v46 & *(v28 + 64);
  v49 = (63 - v47) >> 6;
  while (1)
  {
    if (!v48)
    {
      if (v49 <= v44 + 1)
      {
        v54 = v44 + 1;
      }

      else
      {
        v54 = v49;
      }

      v55 = v54 - 1;
      while (1)
      {
        v53 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v53 >= v49)
        {
          v73 = v0[42];
          v74 = sub_10000712C(&unk_10009EB70, qword_10007C110);
          (*(*(v74 - 8) + 56))(v73, 1, 1, v74);
          v48 = 0;
          v44 = v55;
          goto LABEL_39;
        }

        v48 = *(v45 + 8 * v53);
        ++v44;
        if (v48)
        {
          v44 = v53;
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v53 = v44;
LABEL_38:
    v57 = v0[41];
    v56 = v0[42];
    v58 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v59 = v58 | (v53 << 6);
    v60 = (*(v96 + 48) + 16 * v59);
    v62 = *v60;
    v61 = v60[1];
    sub_10000A908(*(v96 + 56) + *(v94 + 72) * v59, v57);
    v63 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    v64 = *(v63 + 48);
    *v56 = v62;
    v0 = v99;
    *(v95 + 8) = v61;
    sub_100012C24(v57, v56 + v64);
    (*(*(v63 - 8) + 56))(v56, 0, 1, v63);

LABEL_39:
    v65 = v0[43];
    sub_100012C88(v0[42], v65);
    v66 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
    {
      break;
    }

    v67 = v0[43];
    v68 = v99[38];
    v69 = *v67;
    v70 = *(v98 + 8);
    sub_100012C24(v67 + *(v66 + 48), v0[40]);
    v0 = v99;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v72 = v99[40];
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v50.value._countAndFlagsBits = *v72;
        object = *(v93 + 8);
        goto LABEL_26;
      case 2:
        v99[30] = *v72;
LABEL_45:
        v50.value._countAndFlagsBits = sub_10007A5E0();
        object = v50.value._object;
LABEL_26:
        v52 = v99[49];
        v50.value._object = object;
        v112._countAndFlagsBits = v69;
        v112._object = v70;
        sub_100079580(v50, v112);

        goto LABEL_27;
      case 1:
        v99[31] = *v72;
        goto LABEL_45;
    }

    v28 = sub_100012CF8(v72, type metadata accessor for ServiceEventValue);
LABEL_27:
    v45 = v97;
  }

  v76 = v0[36];
  v75 = v0[37];
  v77 = v0[34];
  v78 = v0[35];

  [*(v77 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_options) copy];
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_100007670(0, &qword_10009E370, C2RequestOptions_ptr);
  swift_dynamicCast();
  v79 = v0[29];
  v0[70] = v79;
  sub_100079A60();
  sub_100079A10();
  (*(v76 + 8))(v75, v78);
  v80 = sub_100079DF0();

  [v79 setIdentifier:v80];

  sub_100007670(0, &qword_10009EC80, NSNumber_ptr);
  isa = sub_10007A290(1).super.super.isa;
  [v79 setUseNWLoaderOverride:isa];

  v82 = sub_100079850(1);
  if (v83)
  {
    if (v82 == 0xD00000000000001BLL && v83 == 0x80000001000826B0)
    {

      goto LABEL_53;
    }

    v84 = sub_10007A610();

    if (v84)
    {
LABEL_53:
      v85 = sub_10007A290(1).super.super.isa;
      [v79 setPrivacyProxyFailClosedOverride:v85];
    }
  }

  if (v0[3] == 0x51424A3241394B34 && v0[4] == 0xEA00000000005832 || (sub_10007A610() & 1) != 0)
  {
    v86 = sub_10007A290(0).super.super.isa;
    [v79 setUseNWLoaderOverride:v86];
  }

  [v79 set_optIntoDisableAPWakeOnIdleConnections:1];
  v28 = [objc_opt_self() sharedManager];
  v0[71] = v28;
  if (v28)
  {
    v88 = v0[58];
    v87 = v0[59];
    v89 = v0[56];

    v90 = async function pointer to C2RequestManager.data(for:options:)[1];
    v91 = swift_task_alloc();
    v0[72] = v91;
    *v91 = v0;
    v91[1] = sub_100011B4C;
    v28 = v0[49];
    v29 = v79;

    return C2RequestManager.data(for:options:)(v28, v29);
  }

LABEL_65:
  __break(1u);
  return C2RequestManager.data(for:options:)(v28, v29);
}

uint64_t sub_100011B4C(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = *(*v4 + 576);
  v10 = *v4;
  *(*v4 + 584) = v3;

  v11 = *(v8 + 568);
  v12 = *(v8 + 272);
  if (v3)
  {

    v13 = sub_100011F00;
  }

  else
  {
    sub_1000071DC(a1, a2);

    v13 = sub_100011CC4;
  }

  return _swift_task_switch(v13, v12, 0);
}

uint64_t sub_100011CC4()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 480);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 376);

  sub_1000071DC(v4, v3);
  sub_1000071C8(v2, v1);
  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 440);
  v10 = *(v0 + 416);
  v11 = *(v0 + 392);
  v12 = *(v0 + 368);
  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v16 = *(v0 + 320);
  v15 = *(v0 + 328);
  v17 = *(v0 + 296);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100011DF0()
{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[58];
  v4 = v0[56];
  sub_1000071DC(v0[62], v0[63]);

  v5 = v0[67];
  v6 = v0[55];
  v7 = v0[52];
  v8 = v0[49];
  v9 = v0[46];
  v11 = v0[42];
  v10 = v0[43];
  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[37];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100011F00()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 480);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 376);

  sub_1000071DC(v4, v3);
  sub_1000071C8(v2, v1);
  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 584);
  v10 = *(v0 + 440);
  v11 = *(v0 + 416);
  v12 = *(v0 + 392);
  v13 = *(v0 + 368);
  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v17 = *(v0 + 320);
  v16 = *(v0 + 328);
  v18 = *(v0 + 296);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100012034()
{
  sub_100079F00(*(v0 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_name));
  v2._countAndFlagsBits = 539828258;
  v2._object = 0xE400000000000000;
  sub_100079F00(v2);
  sub_1000798B0();
  sub_100013074(&qword_10009E378, &type metadata accessor for URL);
  v3._countAndFlagsBits = sub_10007A5E0();
  sub_100079F00(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  sub_100079F00(v4);
  return 8744;
}

uint64_t sub_10001211C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_url;
  v4 = sub_1000798B0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_clientID + 8);

  v6 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders + 16);
  v7 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders + 32);
  v8 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders + 56);
  v9 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_extraHeaders + 80);

  v10 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_filters);

  v11 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService11BackendHTTP_name + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10001221C()
{
  sub_10001211C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100012248(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007838;

  return v8(a1);
}

uint64_t sub_1000123AC@<X0>(Bytef *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2 - a1;
  memset(&strm.total_out, 0, 72);
  if (a1)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = 0;
  }

  memset(&strm.avail_in, 0, 32);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (HIDWORD(v8))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  strm.avail_in = v8;
  if (!a1)
  {
    goto LABEL_48;
  }

  strm.next_in = a1;
  v11 = deflateInit2_(&strm, -1, 8, 31, 8, 0, "1.2.12", 112);
  if (v11)
  {
    v12 = v11;
    sub_10001317C();
    swift_allocError();
    *v13 = v12;
    return swift_willThrow();
  }

  v15 = deflateBound(&strm, v7);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  v35 = sub_1000136EC(v15);
  v36 = v16;
  v17 = sub_1000131D0(&v35, &strm);
  if (v17 != 1)
  {
    v5 = v17;
    if (qword_1000A1060 == -1)
    {
LABEL_16:
      v22 = sub_100079BA0();
      sub_1000070F4(v22, qword_1000A6C00);
      v23 = sub_100079B80();
      v24 = sub_10007A180();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 67240192;
        *(v25 + 4) = v5;
        _os_log_impl(&_mh_execute_header, v23, v24, "zlib returned unexpected status %{public}d", v25, 8u);
      }

      *a5 = xmmword_10007C0C0;
      v18 = v35;
      v19 = v36;
      goto LABEL_39;
    }

LABEL_44:
    swift_once();
    goto LABEL_16;
  }

  if ((strm.total_out & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_100079900();
  v18 = v35;
  v19 = v36;
  v20 = v36 >> 62;
  if ((v36 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(v36);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v20 != 2)
  {
    v21 = 0;
    goto LABEL_26;
  }

  v27 = *(v35 + 16);
  v26 = *(v35 + 24);
  v28 = __OFSUB__(v26, v27);
  v21 = v26 - v27;
  if (v28)
  {
    __break(1u);
LABEL_23:
    LODWORD(v21) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      __break(1u);
      goto LABEL_46;
    }

    v21 = v21;
  }

LABEL_26:
  v29 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v29 != 2)
    {
      if (v21 < 0)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

    v31 = *(a3 + 16);
    v30 = *(a3 + 24);
    v28 = __OFSUB__(v30, v31);
    v32 = v30 - v31;
    if (!v28)
    {
      if (v21 < v32)
      {
        goto LABEL_33;
      }

LABEL_38:
      *a5 = xmmword_10007C0C0;
      goto LABEL_39;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  if (v29)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (v21 >= HIDWORD(a3) - a3)
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }

    goto LABEL_47;
  }

  if (v21 >= BYTE6(a4))
  {
    goto LABEL_38;
  }

LABEL_33:
  *a5 = v18;
  *(a5 + 8) = v19;
  v33 = v18;
  v34 = v19;
  sub_100007230(v18, v19);
  v18 = v33;
  v19 = v34;
LABEL_39:
  sub_1000071DC(v18, v19);
  return deflateEnd(&strm);
}

uint64_t sub_1000126D0@<X0>(z_streamp strm@<X2>, uint64_t result@<X0>, uint64_t a3@<X1>, _DWORD *a4@<X8>)
{
  if (result)
  {
    v5 = a3 - result;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  total_out = strm->total_out;
  v7 = v5 >= total_out;
  v8 = v5 - total_out;
  if (!v7)
  {
    goto LABEL_12;
  }

  if (HIDWORD(v8))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  strm->avail_out = v8;
  if (result)
  {
    if ((total_out & 0x8000000000000000) == 0)
    {
      strm->next_out = (total_out + result);
      result = deflate(strm, 4);
      *a4 = result;
      return result;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10001274C(void *a1, int64_t a2, char a3)
{
  result = sub_100012844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001276C(char *a1, int64_t a2, char a3)
{
  result = sub_100012978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_10001278C()
{
  result = qword_10009DE60;
  if (!qword_10009DE60)
  {
    sub_1000072D8(&qword_10009DE58, &qword_10007B810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DE60);
  }

  return result;
}

unint64_t sub_1000127F0()
{
  result = qword_1000A1068[0];
  if (!qword_1000A1068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A1068);
  }

  return result;
}

void *sub_100012844(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000712C(&qword_10009E4A0, &qword_10007C2C8);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_10000712C(&unk_10009EB50, &unk_10007D3B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100012978(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E4A8, &qword_10007C2D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100012A98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v13, 0, 14);
      v8 = v13;
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      v8 = v13 + BYTE6(a2);
LABEL_9:
      sub_1000123AC(v13, v8, a3, a4, a5);
      return sub_1000071DC(a3, a4);
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_100007230(a3, a4);
  sub_1000130BC(v9, v10, a3, a4, a5);
  return sub_1000071DC(a3, a4);
}

uint64_t sub_100012C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BackendHTTP()
{
  result = qword_1000A11F0;
  if (!qword_1000A11F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012DAC()
{
  result = sub_1000798B0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s9ZLibErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9ZLibErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_100012EF8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100012F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100012F4C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_100012F9C()
{
  result = qword_1000A1280[0];
  if (!qword_1000A1280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A1280);
  }

  return result;
}

unint64_t sub_100012FF0()
{
  result = qword_10009E490;
  if (!qword_10009E490)
  {
    sub_1000072D8(&qword_10009E488, &qword_10007C2C0);
    sub_1000075B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E490);
  }

  return result;
}

uint64_t sub_100013074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000130BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = sub_100079670();
  v11 = result;
  if (result)
  {
    result = sub_1000796A0();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = sub_100079690();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = &v11[v15];
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_1000123AC(v11, v17, a3, a4, a5);
  return sub_1000071DC(a3, a4);
}

unint64_t sub_10001317C()
{
  result = qword_10009E498;
  if (!qword_10009E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E498);
  }

  return result;
}

uint64_t sub_1000131D0(uint64_t *a1, z_streamp strm)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000071DC(v6, v5);
      *&v21 = v6;
      WORD4(v21) = v5;
      BYTE10(v21) = BYTE2(v5);
      BYTE11(v21) = BYTE3(v5);
      BYTE12(v21) = BYTE4(v5);
      BYTE13(v21) = BYTE5(v5);
      BYTE14(v21) = BYTE6(v5);
      result = sub_1000126D0(strm, &v21, &v21 + BYTE6(v5), &v20);
      if (!v2)
      {
        result = v20;
      }

      v9 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
      *a1 = v21;
      a1[1] = v9;
      return result;
    }

    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000071DC(v6, v5);
    *a1 = xmmword_10007C0D0;
    sub_1000071DC(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_100079670() && __OFSUB__(v6, sub_1000796A0()))
      {
LABEL_22:
        __break(1u);
      }

      v14 = sub_1000796B0();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_100079650();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_100013534(v6, v6 >> 32, v12, strm);

      *a1 = v6;
      a1[1] = v12 | 0x4000000000000000;
      if (!v2)
      {
        return v18;
      }

      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7 == 2)
  {
    v10 = *a1;

    sub_1000071DC(v6, v5);
    *&v21 = v6;
    *(&v21 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10007C0D0;
    sub_1000071DC(0, 0xC000000000000000);
    sub_1000798C0();
    v11 = *(&v21 + 1);
    result = sub_100013534(*(v21 + 16), *(v21 + 24), *(&v21 + 1), strm);
    *a1 = v21;
    a1[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    result = sub_1000126D0(strm, &v21, &v21, &v20);
    if (!v2)
    {
      return v20;
    }
  }

  return result;
}

uint64_t sub_100013534(uint64_t a1, uint64_t a2, uint64_t a3, z_stream *a4)
{
  result = sub_100079670();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_1000796A0();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_100079690();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = sub_1000126D0(a4, v9 + v10, v9 + v10 + v14, &v15);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1000135D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695474736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_10007A610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (sub_10007A610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_10007A610();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000136EC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1000796B0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_100079680();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1000798F0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_10001378C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for BackendHTTP.POSTData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BackendHTTP.POSTData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100013960()
{
  result = qword_1000A1390[0];
  if (!qword_1000A1390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A1390);
  }

  return result;
}

unint64_t sub_1000139B8()
{
  result = qword_1000A14A0;
  if (!qword_1000A14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A14A0);
  }

  return result;
}

unint64_t sub_100013A10()
{
  result = qword_1000A14A8[0];
  if (!qword_1000A14A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A14A8);
  }

  return result;
}

uint64_t sub_100013A64()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A1538);
  sub_1000070F4(v0, qword_1000A1538);
  return sub_100079B90();
}

uint64_t sub_100013B1C()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_100013B6C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100013BFC;
}

void sub_100013BFC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_100013C7C()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_100013CB4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_100013D4C()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
}

uint64_t sub_100013D84(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  *(v1 + 136) = a1;
}

uint64_t sub_100013E1C()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
}

uint64_t sub_100013E54(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_100013EF0(char a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000030A0;

  return sub_100013FB0(a1, a2, a3);
}

uint64_t sub_100013FB0(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = a3;
  *(v4 + 104) = v3;
  *(v4 + 88) = a2;
  *(v4 + 176) = a1;
  *(v4 + 112) = *v3;
  v5 = sub_1000798B0();
  *(v4 + 120) = v5;
  v6 = *(v5 - 8);
  *(v4 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_1000140A0, 0, 0);
}

uint64_t sub_1000140A0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  swift_defaultActor_initialize();
  swift_weakInit();
  v4[16] = sub_100019BC0(_swiftEmptyArrayStorage);
  v4[17] = &_swiftEmptySetSingleton;
  v4[18] = sub_100019CBC(_swiftEmptyArrayStorage);
  type metadata accessor for StorebagCoordinator();
  (*(v2 + 16))(v1, v5, v3);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1000141BC;
  v7 = v0[17];

  return sub_10005C5A4(v7);
}

uint64_t sub_1000141BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_1000147A8;
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = sub_1000142E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000142E4()
{
  v1 = *(v0 + 104);
  *(v1 + 112) = *(v0 + 160);
  return _swift_task_switch(sub_100014308, v1, 0);
}

uint64_t sub_100014308()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 176);
  swift_beginAccess();
  swift_weakAssign();
  if (v3)
  {
    v4 = *(v0 + 88);
    (*(*(v0 + 128) + 8))(*(v0 + 96), *(v0 + 120));

    v5 = *(v0 + 136);

    v6 = *(v0 + 8);
    v7 = *(v0 + 104);

    return v6(v7);
  }

  else
  {
    v9 = *(**(v0 + 104) + 264);
    v13 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 168) = v11;
    *v11 = v0;
    v11[1] = sub_1000144C4;
    v12 = *(v0 + 104);

    return v13();
  }
}

uint64_t sub_1000144C4()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 104);
  v6 = *v0;

  sub_100019DE4();
  swift_getObjectType();
  v4 = sub_10007A050();

  return _swift_task_switch(sub_1000145F4, v4, v3);
}

uint64_t sub_1000145F4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = [objc_opt_self() defaultCenter];
  v8 = MCEffectiveSettingsChangedNotification;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  v0[6] = sub_100019E70;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100014E3C;
  v0[5] = &unk_100096138;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  v12 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v10];
  _Block_release(v10);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v5, v1);
  v13 = v0[17];

  v14 = v0[1];
  v15 = v0[13];

  return v14(v15);
}

uint64_t sub_1000147A8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  swift_weakDestroy();
  v7 = v4[16];

  v8 = v4[17];

  v9 = v4[18];

  type metadata accessor for SessionCoordinator();
  swift_defaultActor_destroy();

  (*(v2 + 8))(v5, v3);
  swift_deallocPartialClassInstance();

  v10 = v0[1];
  v11 = v0[19];

  return v10();
}

uint64_t sub_100014898(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v6 = sub_100079BA0();
  sub_1000070F4(v6, qword_1000A1538);
  v7 = sub_100079B80();
  v8 = sub_10007A190();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "received notification for MC effective settings change", v9, 2u);
  }

  v10 = sub_10007A0A0();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;

  sub_100014B7C(0, 0, v5, &unk_10007C520, v11);
}

uint64_t sub_100014A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a4 + 264);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_100007838;

  return v9();
}

uint64_t sub_100014B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001A1D4(a3, v27 - v11);
  v13 = sub_10007A0A0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10001A244(v12);
  }

  else
  {
    sub_10007A090();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10007A050();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100079EA0() + 32;
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

      sub_10001A244(a3);

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

  sub_10001A244(a3);
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

uint64_t sub_100014E3C(uint64_t a1)
{
  v2 = sub_100079640();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_100079630();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100014F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  return _swift_task_switch(sub_100014F58, v4, 0);
}

uint64_t sub_100014F58()
{
  v1 = *(v0 + 320);
  v2 = *(*(v0 + 344) + 112);
  *(v0 + 352) = v2;
  v10 = *(v0 + 328);
  *(v0 + 216) = v10;
  v3 = sub_100019E90((v0 + 192));
  v4 = *(v10 - 8);
  v5 = *(v4 + 16);
  *(v0 + 360) = v5;
  *(v0 + 368) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v3, v1);
  v6 = *(*v2 + 128);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 376) = v8;
  *v8 = v0;
  v8[1] = sub_1000150E0;

  return v11(v0 + 192);
}

uint64_t sub_1000150E0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 344);
  v6 = *v1;
  *(v2 + 416) = a1;

  sub_1000070A8((v2 + 192));

  return _swift_task_switch(sub_100015200, v4, 0);
}

uint64_t sub_100015200()
{
  if (static Mode.__derived_enum_equals(_:_:)(*(v0 + 416), 3) || static Mode.__derived_enum_equals(_:_:)(*(v0 + 416), 2))
  {
    v2 = *(v0 + 360);
    v1 = *(v0 + 368);
    v3 = *(v0 + 352);
    v5 = *(v0 + 328);
    v4 = *(v0 + 336);
    v6 = *(v0 + 320);
    *(v0 + 296) = v5;
    *(v0 + 304) = v4;
    v7 = sub_100019E90((v0 + 272));
    v2(v7, v6, v5);
    v8 = *(*v3 + 136);
    v30 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 384) = v10;
    *v10 = v0;
    v10[1] = sub_100015518;
    v11 = *(v0 + 352);
    v12 = v0 + 152;
    v13 = v0 + 272;
LABEL_4:

    return v30(v12, v13);
  }

  if (static Mode.__derived_enum_equals(_:_:)(*(v0 + 416), 1))
  {
    v15 = *(v0 + 320);
    (*(*(v0 + 336) + 8))(*(v0 + 328));
    sub_100019EF4(v0 + 16);
    if (*(v0 + 49))
    {
      v17 = *(v0 + 360);
      v16 = *(v0 + 368);
      v18 = *(v0 + 352);
      v19 = *(v0 + 320);
      v31 = *(v0 + 328);
      *(v0 + 256) = v31;
      v20 = sub_100019E90((v0 + 232));
      v17(v20, v19, v31);
      v21 = *(*v18 + 136);
      v30 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      *(v0 + 400) = v23;
      *v23 = v0;
      v23[1] = sub_100015670;
      v24 = *(v0 + 352);
      v12 = v0 + 112;
      v13 = v0 + 232;
      goto LABEL_4;
    }
  }

  sub_10006910C(v0 + 72);
  v25 = *(v0 + 312);
  v26 = *(v0 + 96);
  v27 = *(v0 + 104);
  v28 = *(v0 + 88);
  *v25 = *(v0 + 72);
  *(v25 + 16) = v28;
  *(v25 + 24) = v26;
  *(v25 + 32) = v27;
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100015518()
{
  v2 = *(*v1 + 384);
  v3 = *v1;
  *(v3 + 392) = v0;

  if (v0)
  {
    v4 = *(v3 + 344);

    return _swift_task_switch(sub_1000157C8, v4, 0);
  }

  else
  {
    sub_1000070A8((v3 + 272));
    v5 = *(v3 + 312);
    v6 = *(v3 + 176);
    v7 = *(v3 + 184);
    v8 = *(v3 + 168);
    *v5 = *(v3 + 152);
    *(v5 + 16) = v8;
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_100015670()
{
  v2 = *(*v1 + 400);
  v3 = *v1;
  *(v3 + 408) = v0;

  if (v0)
  {
    v4 = *(v3 + 344);

    return _swift_task_switch(sub_10001582C, v4, 0);
  }

  else
  {
    sub_1000070A8((v3 + 232));
    v5 = *(v3 + 312);
    v6 = *(v3 + 136);
    v7 = *(v3 + 144);
    v8 = *(v3 + 128);
    *v5 = *(v3 + 112);
    *(v5 + 16) = v8;
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_1000157C8()
{
  sub_1000070A8(v0 + 34);
  v1 = v0[49];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10001582C()
{
  sub_1000070A8(v0 + 29);
  v1 = v0[51];
  v2 = v0[1];

  return v2();
}