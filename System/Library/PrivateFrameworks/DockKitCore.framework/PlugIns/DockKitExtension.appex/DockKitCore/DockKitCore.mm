uint64_t sub_100001570()
{
  v0 = sub_1000077A0();
  sub_100006E60(v0, qword_1000102E8);
  sub_100006D34(v0, qword_1000102E8);
  return sub_100007790();
}

uint64_t sub_100001610()
{
  v1 = v0[6];
  v2 = sub_100006C30(&_swiftEmptyArrayStorage);
  sub_1000071D8(0, &qword_100010230, NSNumber_ptr);
  isa = sub_100007950(5242880).super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000051C4(isa, 0x6953676F4C78616DLL, 0xEA0000000000657ALL, isUniquelyReferenced_nonNull_native);
  v5 = sub_100007950(2).super.super.isa;
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000051C4(v5, 0x746F687370616E73, 0xEC00000065707954, v6);
  v0[7] = v2;
  v0[8] = *(v1 + OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_manager);
  v7 = async function pointer to DockCoreManager.connectedDockAccessory()[1];
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_100001788;

  return DockCoreManager.connectedDockAccessory()();
}

uint64_t sub_100001788(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v8 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = v3[7];

    v6 = sub_100001C78;
  }

  else
  {
    v6 = sub_1000018A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000018A4()
{
  v1 = v0[10];
  if (v1)
  {
    if (qword_1000102E0 != -1)
    {
      swift_once();
    }

    v2 = sub_1000077A0();
    sub_100006D34(v2, qword_1000102E8);
    v3 = v1;
    v4 = sub_100007780();
    v5 = sub_100007930();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = sub_100007770();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Got accessory %@, attempting to pull diagnostics...", v6, 0xCu);
      sub_1000073A0(v7, &qword_100010238, &qword_100007FE0);
    }

    v9 = sub_100007770();
    v0[12] = v9;
    v10 = async function pointer to DockCoreManager.getAccessoryDiagnostics(info:options:)[1];
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_100001ABC;
    v12 = v0[7];
    v13 = v0[8];

    return DockCoreManager.getAccessoryDiagnostics(info:options:)(v9, v12);
  }

  else
  {
    v14 = v0[7];

    v15 = v0[1];

    return v15(0, 0);
  }
}

uint64_t sub_100001ABC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = sub_100001E3C;
  }

  else
  {
    v10 = v6[12];
    v11 = v6[7];

    v6[15] = a2;
    v6[16] = a1;
    v9 = sub_100001C00;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100001C00()
{
  v1 = *(v0 + 120);

  if (v1)
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_100001C78()
{
  v16 = v0;
  v1 = v0[11];
  if (qword_1000102E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000077A0();
  sub_100006D34(v2, qword_1000102E8);
  swift_errorRetain();
  v3 = sub_100007780();
  v4 = sub_100007920();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v8 = v0[2];
    v7 = v0[3];
    v9 = v0[4];
    v10 = sub_100007A70();
    v12 = sub_100004900(v10, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to capture diagnostic snapshot: %s", v5, 0xCu);
    sub_100006D6C(v6);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(0, 0);
}

uint64_t sub_100001E3C()
{
  v19 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[14];
  if (qword_1000102E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000077A0();
  sub_100006D34(v5, qword_1000102E8);
  swift_errorRetain();
  v6 = sub_100007780();
  v7 = sub_100007920();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_100007A70();
    v15 = sub_100004900(v13, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to capture diagnostic snapshot: %s", v8, 0xCu);
    sub_100006D6C(v9);
  }

  else
  {
  }

  v16 = v0[1];

  return v16(0, 0);
}

char *sub_100002018()
{
  v1 = v0;
  v2 = sub_1000077B0();
  v140 = *(v2 - 8);
  v141 = v2;
  v3 = *(v140 + 64);
  __chkstk_darwin(v2);
  v137 = (&v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000077D0();
  v138 = *(v5 - 8);
  v139 = v5;
  v6 = *(v138 + 64);
  v7 = __chkstk_darwin(v5);
  v135 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v136 = &v134 - v9;
  v10 = sub_100006DB8(&qword_100010250, &qword_100007FF8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v134 - v12;
  v14 = sub_1000076A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100006DB8(&qword_100010258, &qword_100008000);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v134 - v21;
  v23 = sub_100007700();
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v134 - v28;
  v144 = v31;
  v145 = v30;
  (*(v31 + 56))(v22, 1, 1);
  (*(v15 + 104))(v18, enum case for URL.DirectoryHint.inferFromPath(_:), v14);
  sub_1000076E0();
  v32 = OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_attachments;
  swift_beginAccess();
  v33 = *&v1[v32];
  v142 = v32;
  *&v1[v32] = &_swiftEmptyArrayStorage;

  v34 = objc_opt_self();
  v35 = [v34 defaultManager];
  sub_1000076D0(1);
  v36 = sub_1000077F0();

  v37 = [v35 fileExistsAtPath:v36];

  v143 = v29;
  if (!v37)
  {
    if (qword_1000102E0 != -1)
    {
      swift_once();
    }

    v55 = sub_1000077A0();
    sub_100006D34(v55, qword_1000102E8);
    v43 = v144;
    v52 = v145;
    (*(v144 + 16))(v27, v143, v145);
    v56 = sub_100007780();
    v57 = sub_100007920();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v147[0] = v59;
      *v58 = 136315138;
      v60 = sub_1000076D0(1);
      v62 = v61;
      (*(v144 + 8))(v27, v145);
      v63 = sub_100004900(v60, v62, v147);
      v43 = v144;

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "No log directory in temporary file path: %s", v58, 0xCu);
      sub_100006D6C(v59);

      v52 = v145;
    }

    else
    {

      (v43[1])(v27, v52);
    }

    goto LABEL_46;
  }

  v38 = [v34 defaultManager];
  sub_1000076B0(v39);
  v41 = v40;
  sub_100006DB8(&qword_100010260, &qword_100008018);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100007FB0;
  v43 = NSURLIsRegularFileKey;
  *(v42 + 32) = NSURLIsRegularFileKey;
  *(v42 + 40) = NSURLIsReadableKey;
  type metadata accessor for URLResourceKey();
  v44 = NSURLIsRegularFileKey;
  v45 = NSURLIsReadableKey;
  isa = sub_100007880().super.isa;

  v147[0] = 0;
  v47 = [v38 contentsOfDirectoryAtURL:v41 includingPropertiesForKeys:isa options:21 error:v147];

  v48 = v147[0];
  if (!v47)
  {
    v64 = v147[0];
    sub_100007690();

    swift_willThrow();
    v43 = v144;
    if (qword_1000102E0 == -1)
    {
LABEL_14:
      v65 = sub_1000077A0();
      sub_100006D34(v65, qword_1000102E8);
      swift_errorRetain();
      v66 = sub_100007780();
      v67 = sub_100007920();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v147[0] = v69;
        *v68 = 136315138;
        swift_getErrorValue();
        v70 = sub_100007A70();
        v72 = sub_100004900(v70, v71, v147);

        *(v68 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v66, v67, "Unable to load contents of log directory: %s", v68, 0xCu);
        sub_100006D6C(v69);
      }

      else
      {
      }

      v52 = v145;
      goto LABEL_46;
    }

LABEL_70:
    swift_once();
    goto LABEL_14;
  }

  v49 = sub_100007890();
  v50 = v48;

  __chkstk_darwin(v51);
  *(&v134 - 2) = v29;
  v52 = sub_100003248(sub_1000070DC, (&v134 - 4), v49);

  v53 = v52[2];
  if (!v53)
  {
LABEL_7:
    v54 = v52[2];
    goto LABEL_20;
  }

  v54 = 0;
  while (v52[v54 + 4])
  {
    if (v53 == ++v54)
    {
      goto LABEL_7;
    }
  }

  if (__OFADD__(v54, 1))
  {
    __break(1u);
LABEL_73:
    __break(1u);
  }

  if (v54 + 1 != v53)
  {
    v124 = v54 + 5;
    do
    {
      v43 = (v124 - 4);
      if (v124 - 4 >= v53)
      {
        goto LABEL_62;
      }

      v126 = v52[v124];
      if (v126)
      {
        if (v43 != v54)
        {
          if (v54 >= v53)
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v127 = v52[v54 + 4];
          v128 = v126;
          v129 = v127;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_100006C1C(v52);
          }

          v130 = &v52[v54];
          v131 = v130[4];
          v130[4] = v126;

          if (v43 >= v52[2])
          {
            goto LABEL_65;
          }

          v132 = v52[v124];
          v52[v124] = v127;

          v53 = v52[2];
        }

        ++v54;
      }

      v125 = v124 - 3;
      ++v124;
    }

    while (v125 != v53);
  }

  if (v53 < v54)
  {
    __break(1u);
    goto LABEL_69;
  }

  if (v54 < 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_20:
  if (__OFADD__(v53, v54 - v53))
  {
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
    goto LABEL_25;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v146 = v52;
  if (!isUniquelyReferenced_nonNull_native || v54 > v52[3] >> 1)
  {
    v52 = sub_100007980();
    v146 = v52;
  }

  sub_100007108(v54, v53, 0);
  v74 = v52[2];
  v54 = (v52 + 4);
  v147[0] = v52 + 4;
  v147[1] = v74;
  sub_10000581C(v147);
  v146 = v52;
  if (qword_1000102E0 != -1)
  {
    goto LABEL_67;
  }

LABEL_25:
  v75 = sub_1000077A0();
  sub_100006D34(v75, qword_1000102E8);
  v76 = sub_100007780();
  v77 = sub_100007930();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 134217984;
    *(v78 + 4) = v52[2];
    _os_log_impl(&_mh_execute_header, v76, v77, "Found %ld file(s)", v78, 0xCu);
  }

  v79 = v52[2];
  if (v79 > 5)
  {
    sub_100005560(v52, v54, 0, 0xBuLL);
    v81 = v80;
    v79 = v80[2];
    if (v79)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  v81 = v52;
  if (!v79)
  {
LABEL_35:

    v85 = &_swiftEmptyArrayStorage;
LABEL_36:
    v86 = v142;
    swift_beginAccess();
    sub_100003514(v85);
    swift_endAccess();
    v87 = v1;
    v88 = sub_100007780();
    v89 = sub_100007930();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 134217984;
      v91 = *&v1[v86];
      if (v91 >> 62)
      {
        v133 = v90;
        v92 = sub_1000079F0();
        v90 = v133;
      }

      else
      {
        v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v90 + 4) = v92;
      v93 = v90;

      _os_log_impl(&_mh_execute_header, v88, v89, "Using %ld attachments(s)", v93, 0xCu);
    }

    else
    {

      v88 = v87;
    }

    v94 = v87;
    v95 = sub_100007780();
    v96 = sub_100007910();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v147[0] = v98;
      *v97 = 136315138;
      v99 = *&v1[v142];
      sub_1000071D8(0, &qword_100010268, DEAttachmentItem_ptr);

      v100 = sub_1000078A0();
      v102 = v101;

      v103 = sub_100004900(v100, v102, v147);

      *(v97 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v95, v96, "%s", v97, 0xCu);
      sub_100006D6C(v98);
    }

    v43 = v144;
    v52 = v145;
LABEL_46:
    v105 = v140;
    v104 = v141;
    v106 = v139;
    dispatch_group_enter(*&v1[OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_group]);
    v107 = sub_100007900();
    (*(*(v107 - 8) + 56))(v13, 1, 1, v107);
    v108 = swift_allocObject();
    v108[2] = 0;
    v108[3] = 0;
    v108[4] = v1;
    v109 = v1;
    sub_100003AF8(0, 0, v13, &unk_100008010, v108);

    v110 = v135;
    sub_1000077C0();
    v111 = v137;
    *v137 = 60;
    (*(v105 + 104))(v111, enum case for DispatchTimeInterval.seconds(_:), v104);
    v112 = v136;
    sub_1000077E0();
    (*(v105 + 8))(v111, v104);
    v113 = *(v138 + 8);
    v113(v110, v106);
    sub_100007940();
    v113(v112, v106);
    if (qword_1000102E0 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_29:
  v147[0] = &_swiftEmptyArrayStorage;
  sub_1000079C0();
  v43 = 0;
  while (v43 < v81[2])
  {
    v82 = v81[v43 + 4];
    if (!v82)
    {
      goto LABEL_73;
    }

    v43 = (v43 + 1);
    v83 = v82;
    sub_1000079A0();
    v84 = *(v147[0] + 2);
    sub_1000079D0();
    sub_1000079E0();
    sub_1000079B0();
    if (v79 == v43)
    {

      v85 = v147[0];
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  swift_once();
LABEL_47:
  v114 = sub_1000077A0();
  sub_100006D34(v114, qword_1000102E8);
  v115 = sub_100007780();
  v116 = sub_100007930();
  v117 = os_log_type_enabled(v115, v116);
  v118 = v143;
  if (v117)
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&_mh_execute_header, v115, v116, "Done collecting diagnostics!", v119, 2u);
  }

  v120 = *&v1[v142];

  v122 = sub_100003DE8(v121);

  (v43[1])(v118, v52);
  return v122;
}

uint64_t sub_100003018@<X0>(void *a1@<X8>)
{
  v2 = sub_1000076A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007700();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = sub_1000076D0(1);
  v17[1] = v12;
  (*(v3 + 104))(v6, enum case for URL.DirectoryHint.notDirectory(_:), v2);
  sub_1000072CC();
  sub_1000076F0();
  (*(v3 + 8))(v6, v2);

  sub_1000076D0(1);
  v13 = objc_allocWithZone(DEAttachmentItem);
  v14 = sub_1000077F0();

  v15 = [v13 initWithPath:v14];

  result = (*(v8 + 8))(v11, v7);
  *a1 = v15;
  return result;
}

void *sub_100003248(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v14 = &_swiftEmptyArrayStorage;
    sub_1000079C0();
    v9 = *(sub_100007700() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1000079A0();
      v12 = v14[2];
      sub_1000079D0();
      sub_1000079E0();
      sub_1000079B0();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10000338C(id *a1, void **a2)
{
  v4 = sub_100007730();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  if (!*a1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = *a2;
  v13 = [*a1 modificationDate];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v14 = v13;
  sub_100007710();

  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = [v12 modificationDate];
  if (v15)
  {
    v16 = v15;
    sub_100007710();

    sub_100007720();
    v17 = *(v5 + 8);
    v17(v9, v4);
    v17(v11, v4);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_100003514(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1000079F0();
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

  v15 = sub_1000079F0();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10000564C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100006A04(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t sub_100003604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_100007700();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[12] = v8;
  *v8 = v4;
  v8[1] = sub_1000036F4;

  return sub_1000015F0();
}

uint64_t sub_1000036F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v5 = v3[12];
  v7 = *v2;
  v4[13] = a2;

  return _swift_task_switch(sub_1000037FC, 0, 0);
}

void sub_1000037FC()
{
  v26 = v0;
  if (v0[13])
  {
    v1 = v0[6];
    v2 = objc_allocWithZone(DEAttachmentItem);
    v3 = sub_1000077F0();

    v4 = [v2 initWithPath:v3];

    if (v4)
    {
      if (qword_1000102E0 != -1)
      {
        swift_once();
      }

      v5 = sub_1000077A0();
      sub_100006D34(v5, qword_1000102E8);
      v6 = v4;
      v7 = sub_100007780();
      v8 = sub_100007930();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v9 = 136315138;
        v10 = [v6 path];

        if (!v10)
        {
          __break(1u);
          return;
        }

        v11 = v0[10];
        v12 = v0[11];
        v13 = v0[9];
        sub_1000076C0();

        v14 = sub_1000076D0(1);
        v16 = v15;
        (*(v11 + 8))(v12, v13);
        v17 = sub_100004900(v14, v16, &v25);

        *(v9 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v7, v8, "attaching diagnostic snapshot: %s", v9, 0xCu);
        sub_100006D6C(v24);
      }

      else
      {
      }

      v18 = v0[8];
      v19 = OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_attachments;
      swift_beginAccess();
      v20 = v6;
      sub_100007870();
      if (*((*(v18 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v18 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((*(v18 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000078B0();
      }

      sub_1000078D0();
      swift_endAccess();
    }
  }

  v21 = v0[11];
  dispatch_group_leave(*(v0[8] + OBJC_IVAR____TtC16DockKitExtension16DockKitExtension_group));

  v22 = v0[1];

  v22();
}

uint64_t sub_100003AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100006DB8(&qword_100010250, &qword_100007FF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100007330(a3, v26 - v10);
  v12 = sub_100007900();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000073A0(v11, &qword_100010250, &qword_100007FF8);
  }

  else
  {
    sub_1000078F0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000078E0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100007830() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1000073A0(a3, &qword_100010250, &qword_100007FF8);

      return v24;
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

  sub_1000073A0(a3, &qword_100010250, &qword_100007FF8);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

char *sub_100003DE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1000079F0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_1000056EC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100007970();
        sub_1000071D8(0, &qword_100010268, DEAttachmentItem_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000056EC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100007320(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1000071D8(0, &qword_100010268, DEAttachmentItem_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1000056EC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100007320(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_10000417C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DockKitExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004238(uint64_t a1, id *a2)
{
  result = sub_100007800();
  *a2 = 0;
  return result;
}

uint64_t sub_1000042B0(uint64_t a1, id *a2)
{
  v3 = sub_100007810();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004330@<X0>(void *a1@<X8>)
{
  sub_100007820();
  v2 = sub_1000077F0();

  *a1 = v2;
  return result;
}

uint64_t sub_100004374@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000077F0();

  *a2 = v5;
  return result;
}

uint64_t sub_1000043BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100007820();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000043E8(uint64_t a1)
{
  v2 = sub_100007644(&qword_1000102C8);
  v3 = sub_100007644(&unk_1000102D0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004480()
{
  v1 = *v0;
  sub_100007820();
  v2 = sub_100007860();

  return v2;
}

uint64_t sub_1000044BC()
{
  v1 = *v0;
  sub_100007820();
  sub_100007840();
}

Swift::Int sub_100004510()
{
  v1 = *v0;
  sub_100007820();
  sub_100007A80();
  sub_100007840();
  v2 = sub_100007A90();

  return v2;
}

uint64_t sub_100004584(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100007820();
  v6 = v5;
  if (v4 == sub_100007820() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100007A50();
  }

  return v9 & 1;
}

uint64_t sub_10000460C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004704;

  return v7(a1);
}

uint64_t sub_100004704()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_1000047FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006DB8(&qword_100010290, &qword_100008038);
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

uint64_t sub_100004900(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000049CC(v11, 0, 0, 1, a1, a2);
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
    sub_100006E00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006D6C(v11);
  return v7;
}

unint64_t sub_1000049CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004AD8(a5, a6);
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
    result = sub_100007990();
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

char *sub_100004AD8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004B24(a1, a2);
  sub_100004C54(&off_10000C698);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004B24(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004D40(v5, 0);
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

  result = sub_100007990();
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
        v10 = sub_100007850();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004D40(v10, 0);
        result = sub_100007960();
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

uint64_t sub_100004C54(uint64_t result)
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

  result = sub_100004DB4(result, v12, 1, v3);
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

void *sub_100004D40(uint64_t a1, uint64_t a2)
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

  sub_100006DB8(&qword_100010240, &qword_100007FE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004DB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006DB8(&qword_100010240, &qword_100007FE8);
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

unint64_t sub_100004EA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100007A80();
  sub_100007840();
  v6 = sub_100007A90();

  return sub_10000533C(a1, a2, v6);
}

uint64_t sub_100004F20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100006DB8(&qword_100010248, &qword_100007FF0);
  v39 = a2;
  result = sub_100007A10();
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
      sub_100007A80();
      sub_100007840();
      result = sub_100007A90();
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

uint64_t sub_1000051C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004EA8(a2, a3);
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
      sub_100004F20(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100004EA8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_100007A60();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1000053F4();
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

unint64_t sub_10000533C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100007A50())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_1000053F4()
{
  v1 = v0;
  sub_100006DB8(&qword_100010248, &qword_100007FF0);
  v2 = *v0;
  v3 = sub_100007A00();
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

void sub_100005560(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100006DB8(&qword_100010280, &qword_100008028);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100006DB8(&qword_100010288, &qword_100008030);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10000564C(uint64_t a1)
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
    sub_1000079F0();
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
  result = sub_100007980();
  *v1 = result;
  return result;
}

char *sub_1000056EC(char *a1, int64_t a2, char a3)
{
  result = sub_10000570C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000570C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006DB8(&qword_1000102A0, &qword_100008040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10000581C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100007A40(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100006DB8(&qword_100010280, &qword_100008028);
        v5 = sub_1000078C0();
        *(v5 + 2) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100005B80(v7, v8, a1, v4);
      *(v6 + 2) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100005924(0, v2, 1, a1);
  }
}

void sub_100005924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v44 = sub_100007730();
  v8 = *(*(v44 - 8) + 64);
  v9 = (__chkstk_darwin)();
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v37 - v12;
  v38 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v42 = (v11 + 8);
    v45 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    v16 = &DockKitExtension;
LABEL_5:
    v40 = v14;
    v41 = a3;
    v17 = *(v45 + 8 * a3);
    v39 = v15;
    v18 = v15;
    while (v17)
    {
      v19 = *v14;
      v20 = *v14;
      v21 = v17;
      v22 = [v21 *&v16[3].flags];
      if (!v22)
      {
        goto LABEL_18;
      }

      v23 = v22;
      sub_100007710();

      if (!v19)
      {
        goto LABEL_17;
      }

      v24 = [v20 *&v16[3].flags];
      if (!v24)
      {
        __break(1u);
        break;
      }

      v25 = v24;
      v26 = v43;
      sub_100007710();

      v27 = v18;
      v28 = v46;
      v29 = sub_100007720();
      v30 = *v42;
      v31 = v26;
      v32 = v44;
      (*v42)(v31, v44);
      v33 = v28;
      v34 = v27;
      v16 = &DockKitExtension;
      v30(v33, v32);

      if (v29 == 1)
      {
        if (!v45)
        {
          goto LABEL_19;
        }

        v35 = *v14;
        v17 = *(v14 + 8);
        *v14 = v17;
        *(v14 + 8) = v35;
        v14 -= 8;
        v36 = __CFADD__(v34, 1);
        v18 = v34 + 1;
        if (!v36)
        {
          continue;
        }
      }

      a3 = v41 + 1;
      v14 = v40 + 8;
      v15 = v39 - 1;
      if (v41 + 1 == v38)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }
}

void sub_100005B80(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v132 = sub_100007730();
  v9 = *(*(v132 - 8) + 64);
  v10 = __chkstk_darwin(v132);
  v129 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v117 - v13;
  v14 = __chkstk_darwin(v12);
  v125 = &v117 - v15;
  __chkstk_darwin(v14);
  v127 = a3;
  v128 = &v117 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = &_swiftEmptyArrayStorage;
LABEL_102:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_150;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v137 = v20;
      v112 = *(v20 + 16);
      if (v112 >= 2)
      {
        while (*v127)
        {
          v113 = *(v20 + 16 * v112);
          v114 = v20;
          v115 = *(v20 + 16 * (v112 - 1) + 32);
          v20 = *(v20 + 16 * (v112 - 1) + 40);
          sub_100006440((*v127 + 8 * v113), (*v127 + 8 * v115), (*v127 + 8 * v20), v5);
          if (v6)
          {
            goto LABEL_112;
          }

          if (v20 < v113)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_1000069F0(v114);
          }

          if (v112 - 2 >= *(v114 + 2))
          {
            goto LABEL_130;
          }

          v116 = &v114[16 * v112];
          *v116 = v113;
          *(v116 + 1) = v20;
          v137 = v114;
          sub_100006964(v112 - 1);
          v20 = v137;
          v112 = *(v137 + 16);
          if (v112 <= 1)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_148;
      }

LABEL_112:

      return;
    }

LABEL_136:
    v20 = sub_1000069F0(v20);
    goto LABEL_104;
  }

  v118 = a4;
  v19 = 0;
  v131 = (v16 + 8);
  v20 = &_swiftEmptyArrayStorage;
LABEL_3:
  v21 = v19++;
  v126 = v21;
  if (v19 < v18)
  {
    v22 = *v127;
    v5 = *(*v127 + 8 * v19);
    v135 = *(*v127 + 8 * v21);
    v136 = v5;
    v23 = v21;
    v24 = v135;
    v25 = v5;
    sub_10000338C(&v136, &v135);
    LODWORD(v130) = v26;
    if (v6)
    {

      return;
    }

    v119 = v20;
    v120 = 0;

    v27 = v23 + 2;
    v28 = (v22 + 8 * v23 + 16);
    v21 = v23;
    v124 = v18;
    while (v18 != v27)
    {
      v29 = *v28;
      if (!*v28)
      {
        goto LABEL_143;
      }

      v30 = *(v28 - 1);
      v31 = v30;
      v32 = v29;
      v33 = [v32 modificationDate];
      if (!v33)
      {
        goto LABEL_145;
      }

      v34 = v33;
      sub_100007710();

      if (!v30)
      {
        goto LABEL_144;
      }

      v35 = [v31 modificationDate];
      if (!v35)
      {
        goto LABEL_142;
      }

      v36 = v35;
      v37 = v125;
      sub_100007710();

      v38 = v128;
      v133 = sub_100007720();
      v39 = v132;
      v5 = *v131;
      (*v131)(v37, v132);
      (v5)(v38, v39);

      ++v27;
      ++v28;
      v21 = v126;
      v18 = v124;
      if (((v130 ^ (v133 != 1)) & 1) == 0)
      {
        v18 = v27 - 1;
        break;
      }
    }

    v20 = v119;
    v6 = v120;
    if (v130)
    {
      if (v18 < v21)
      {
        goto LABEL_135;
      }

      if (v21 < v18)
      {
        v40 = v18 - 1;
        v41 = v21;
        do
        {
          if (v41 != v40)
          {
            v44 = *v127;
            if (!*v127)
            {
              goto LABEL_147;
            }

            v42 = *(v44 + 8 * v41);
            *(v44 + 8 * v41) = *(v44 + 8 * v40);
            *(v44 + 8 * v40) = v42;
          }
        }

        while (++v41 < v40--);
      }
    }

    v19 = v18;
  }

  v45 = v127[1];
  if (v19 >= v45)
  {
    goto LABEL_46;
  }

  if (__OFSUB__(v19, v21))
  {
    goto LABEL_132;
  }

  if (v19 - v21 >= v118)
  {
    goto LABEL_46;
  }

  if (__OFADD__(v21, v118))
  {
    goto LABEL_133;
  }

  if (v21 + v118 >= v45)
  {
    v46 = v127[1];
  }

  else
  {
    v46 = v21 + v118;
  }

  if (v46 < v21)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v19 == v46)
  {
    goto LABEL_46;
  }

  v119 = v20;
  v120 = v6;
  v130 = *v127;
  v47 = v130 + 8 * v19 - 8;
  v48 = v21 - v19;
LABEL_35:
  v123 = v47;
  v124 = v19;
  v49 = *(v130 + 8 * v19);
  v122 = v48;
  v50 = v48;
  while (1)
  {
    if (!v49)
    {
      goto LABEL_140;
    }

    v51 = *v47;
    v5 = *v47;
    v52 = v49;
    v53 = [v52 modificationDate];
    if (!v53)
    {
      goto LABEL_139;
    }

    v54 = v53;
    sub_100007710();

    if (!v51)
    {
      goto LABEL_138;
    }

    v55 = [v5 modificationDate];
    if (!v55)
    {
      break;
    }

    v56 = v55;
    v57 = v129;
    sub_100007710();

    v58 = v134;
    v133 = sub_100007720();
    v59 = *v131;
    v60 = v57;
    v61 = v132;
    (*v131)(v60, v132);
    (v59)(v58, v61);

    if (v133 != 1)
    {
      goto LABEL_34;
    }

    if (!v130)
    {
      goto LABEL_141;
    }

    v62 = *v47;
    v49 = *(v47 + 8);
    *v47 = v49;
    *(v47 + 8) = v62;
    v47 -= 8;
    if (__CFADD__(v50++, 1))
    {
LABEL_34:
      v19 = v124 + 1;
      v47 = v123 + 8;
      v48 = v122 - 1;
      if (v124 + 1 != v46)
      {
        goto LABEL_35;
      }

      v19 = v46;
      v20 = v119;
      v6 = v120;
      v21 = v126;
LABEL_46:
      if (v19 < v21)
      {
        goto LABEL_131;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1000047FC(0, *(v20 + 16) + 1, 1, v20);
      }

      v64 = v20;
      v65 = *(v20 + 16);
      v66 = v64;
      v67 = *(v64 + 24);
      v68 = v65 + 1;
      if (v65 >= v67 >> 1)
      {
        v66 = sub_1000047FC((v67 > 1), v65 + 1, 1, v66);
      }

      *(v66 + 2) = v68;
      v69 = &v66[16 * v65];
      *(v69 + 4) = v126;
      *(v69 + 5) = v19;
      v5 = *v121;
      if (!*v121)
      {
        goto LABEL_149;
      }

      if (v65)
      {
        v20 = v66;
        while (1)
        {
          v70 = v68 - 1;
          if (v68 >= 4)
          {
            break;
          }

          if (v68 == 3)
          {
            v71 = *(v20 + 32);
            v72 = *(v20 + 40);
            v81 = __OFSUB__(v72, v71);
            v73 = v72 - v71;
            v74 = v81;
LABEL_67:
            if (v74)
            {
              goto LABEL_120;
            }

            v87 = (v20 + 16 * v68);
            v89 = *v87;
            v88 = v87[1];
            v90 = __OFSUB__(v88, v89);
            v91 = v88 - v89;
            v92 = v90;
            if (v90)
            {
              goto LABEL_123;
            }

            v93 = (v20 + 32 + 16 * v70);
            v95 = *v93;
            v94 = v93[1];
            v81 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v81)
            {
              goto LABEL_126;
            }

            if (__OFADD__(v91, v96))
            {
              goto LABEL_127;
            }

            if (v91 + v96 >= v73)
            {
              if (v73 < v96)
              {
                v70 = v68 - 2;
              }

              goto LABEL_88;
            }

            goto LABEL_81;
          }

          v97 = (v20 + 16 * v68);
          v99 = *v97;
          v98 = v97[1];
          v81 = __OFSUB__(v98, v99);
          v91 = v98 - v99;
          v92 = v81;
LABEL_81:
          if (v92)
          {
            goto LABEL_122;
          }

          v100 = v20 + 16 * v70;
          v102 = *(v100 + 32);
          v101 = *(v100 + 40);
          v81 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v81)
          {
            goto LABEL_125;
          }

          if (v103 < v91)
          {
            goto LABEL_98;
          }

LABEL_88:
          v108 = v20;
          v20 = v70 - 1;
          if (v70 - 1 >= v68)
          {
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

          if (!*v127)
          {
            goto LABEL_146;
          }

          v109 = *&v108[16 * v20 + 32];
          v110 = *&v108[16 * v70 + 40];
          sub_100006440((*v127 + 8 * v109), (*v127 + 8 * *&v108[16 * v70 + 32]), (*v127 + 8 * v110), v5);
          if (v6)
          {
            goto LABEL_112;
          }

          if (v110 < v109)
          {
            goto LABEL_116;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_1000069F0(v108);
          }

          if (v20 >= *(v108 + 2))
          {
            goto LABEL_117;
          }

          v111 = &v108[16 * v20];
          *(v111 + 4) = v109;
          *(v111 + 5) = v110;
          v137 = v108;
          sub_100006964(v70);
          v20 = v137;
          v68 = *(v137 + 16);
          if (v68 <= 1)
          {
            goto LABEL_98;
          }
        }

        v75 = v20 + 32 + 16 * v68;
        v76 = *(v75 - 64);
        v77 = *(v75 - 56);
        v81 = __OFSUB__(v77, v76);
        v78 = v77 - v76;
        if (v81)
        {
          goto LABEL_118;
        }

        v80 = *(v75 - 48);
        v79 = *(v75 - 40);
        v81 = __OFSUB__(v79, v80);
        v73 = v79 - v80;
        v74 = v81;
        if (v81)
        {
          goto LABEL_119;
        }

        v82 = (v20 + 16 * v68);
        v84 = *v82;
        v83 = v82[1];
        v81 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v81)
        {
          goto LABEL_121;
        }

        v81 = __OFADD__(v73, v85);
        v86 = v73 + v85;
        if (v81)
        {
          goto LABEL_124;
        }

        if (v86 >= v78)
        {
          v104 = (v20 + 32 + 16 * v70);
          v106 = *v104;
          v105 = v104[1];
          v81 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v81)
          {
            goto LABEL_128;
          }

          if (v73 < v107)
          {
            v70 = v68 - 2;
          }

          goto LABEL_88;
        }

        goto LABEL_67;
      }

      v20 = v66;
LABEL_98:
      v18 = v127[1];
      if (v19 >= v18)
      {
        goto LABEL_102;
      }

      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

void sub_100006440(id *a1, id *a2, void **a3, id *a4)
{
  v63 = sub_100007730();
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v63);
  v61 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v65 = &v59 - v13;
  v14 = __chkstk_darwin(v12);
  v60 = &v59 - v15;
  __chkstk_darwin(v14);
  v64 = &v59 - v16;
  v17 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v17 = a2 - a1;
  }

  v18 = v17 >> 3;
  v19 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v19 = a3 - a2;
  }

  v20 = v19 >> 3;
  v67 = a4;
  if (v18 < v19 >> 3)
  {
    v21 = a4;
    if (a4 != a1 || &a1[v18] <= a4)
    {
      memmove(a4, a1, 8 * v18);
      v21 = v67;
    }

    v68 = &v21[v18];
    if (a2 - a1 >= 8)
    {
      v22 = a2;
      if (a2 < a3)
      {
        v65 = (v8 + 8);
        v66 = a3;
        v23 = &DockKitExtension;
        v24 = v64;
        while (1)
        {
          v62 = v22;
          v25 = *v22;
          if (!*v22)
          {
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v67 = v21;
          v26 = *v21;
          v27 = *v21;
          v28 = v25;
          v29 = [v28 *&v23[3].flags];
          if (!v29)
          {
            goto LABEL_52;
          }

          v30 = v29;
          sub_100007710();

          if (!v26)
          {
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v31 = a1;
          v32 = [v27 *&v23[3].flags];
          if (!v32)
          {
            goto LABEL_50;
          }

          v33 = v32;
          v34 = v60;
          sub_100007710();

          v35 = sub_100007720();
          v36 = *v65;
          v37 = v63;
          (*v65)(v34, v63);
          v36(v24, v37);

          if (v35 != 1)
          {
            break;
          }

          v38 = v62;
          v22 = v62 + 1;
          v39 = v31;
          v21 = v67;
          if (v31 != v62)
          {
            goto LABEL_20;
          }

LABEL_21:
          a1 = v39 + 1;
          v23 = &DockKitExtension;
          if (v21 >= v68 || v22 >= v66)
          {
            goto LABEL_23;
          }
        }

        v38 = v67;
        v21 = v67 + 1;
        v39 = v31;
        v22 = v62;
        if (v31 == v67)
        {
          goto LABEL_21;
        }

LABEL_20:
        *v39 = *v38;
        goto LABEL_21;
      }
    }

LABEL_23:
    a2 = a1;
    goto LABEL_45;
  }

  v21 = a4;
  if (a4 != a2 || &a2[v20] <= a4)
  {
    memmove(a4, a2, 8 * v20);
    v21 = v67;
  }

  v68 = &v21[v20];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_45:
    if (a2 != v21 || a2 >= (v21 + ((v68 - v21 + (v68 - v21 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, v21, 8 * (v68 - v21));
    }

    return;
  }

  v60 = (v8 + 8);
  v40 = &DockKitExtension;
LABEL_30:
  v62 = a2;
  v41 = a2 - 1;
  v42 = a3 - 1;
  v43 = v68;
  while (1)
  {
    v66 = v42;
    v45 = *--v43;
    v44 = v45;
    if (!v45)
    {
      break;
    }

    v46 = *v41;
    v47 = *v41;
    v48 = v44;
    v49 = [v48 *&v40[3].flags];
    if (!v49)
    {
      goto LABEL_56;
    }

    v50 = v49;
    sub_100007710();

    if (!v46)
    {
      goto LABEL_53;
    }

    v51 = [v47 *&v40[3].flags];
    if (!v51)
    {
LABEL_54:
      __break(1u);
      break;
    }

    v52 = v51;
    v53 = v61;
    sub_100007710();

    v54 = v65;
    v64 = sub_100007720();
    v55 = *v60;
    v56 = v53;
    v57 = v63;
    (*v60)(v56, v63);
    v55(v54, v57);

    if (v64 == 1)
    {
      a3 = v66;
      v21 = v67;
      if (v66 + 1 != v62)
      {
        *v66 = *v41;
      }

      v40 = &DockKitExtension;
      if (v68 <= v21 || (a2 = v41, v41 <= a1))
      {
        a2 = v41;
        goto LABEL_45;
      }

      goto LABEL_30;
    }

    v58 = v66;
    v21 = v67;
    if (v66 + 1 != v68)
    {
      *v66 = *v43;
    }

    v42 = v58 - 1;
    v68 = v43;
    v40 = &DockKitExtension;
    if (v43 <= v21)
    {
      v68 = v43;
      a2 = v62;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_100006964(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000069F0(v3);
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

uint64_t sub_100006A04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000079F0();
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
      result = sub_1000079F0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100007220();
          for (i = 0; i != v6; ++i)
          {
            sub_100006DB8(&qword_100010270, &qword_100008020);
            v9 = sub_100006B94(v13, i, a3);
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
        sub_1000071D8(0, &qword_100010268, DEAttachmentItem_ptr);
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

void (*sub_100006B94(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100007970();
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
    return sub_100006C14;
  }

  __break(1u);
  return result;
}

unint64_t sub_100006C30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006DB8(&qword_100010248, &qword_100007FF0);
    v3 = sub_100007A20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100004EA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_100006D34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006D6C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006DB8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100006E60(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100006EC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006F04()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006F98;

  return sub_100003604(v3, v4, v5, v2);
}

uint64_t sub_100006F98()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_1000102A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000102A8);
    }
  }
}

unint64_t sub_100007108(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_100006DB8(&qword_100010280, &qword_100008028);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000071D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_100007220()
{
  result = qword_100010278;
  if (!qword_100010278)
  {
    sub_100007284(&qword_100010270, &qword_100008020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010278);
  }

  return result;
}

uint64_t sub_100007284(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000072CC()
{
  result = qword_100010298;
  if (!qword_100010298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010298);
  }

  return result;
}

_OWORD *sub_100007320(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100007330(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006DB8(&qword_100010250, &qword_100007FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000073A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006DB8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007400(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000768C;

  return sub_10000460C(a1, v5);
}

uint64_t sub_1000074B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000074F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006F98;

  return sub_10000460C(a1, v5);
}

uint64_t sub_100007644(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}