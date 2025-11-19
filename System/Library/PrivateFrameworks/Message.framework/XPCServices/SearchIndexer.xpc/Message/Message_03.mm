uint64_t sub_1000357A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035808()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100035840()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100035878()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000358C0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100035908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for DetermineMessageBatches.CommandID(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DetermineMessageBatches.CommandID(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100035A44()
{
  result = qword_1005CDA88;
  if (!qword_1005CDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDA88);
  }

  return result;
}

uint64_t sub_100035AC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_100035B98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DetermineNewestMessages()
{
  result = qword_1005CDB08;
  if (!qword_1005CDB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100035C94()
{
  sub_10002AABC();
  if (v0 <= 0x3F)
  {
    sub_100035D34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100035D34()
{
  if (!qword_1005CDB18)
  {
    sub_10000DEFC(&unk_1005D91B0, &unk_1004CF400);
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CDB18);
    }
  }
}

void sub_100035DAC(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  sub_1000118A4(a1, v19 - v7);
  sub_1000118A4(a1, v5);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v9 = sub_1004A4A54();
  v10 = sub_1004A6034();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 68159235;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v12 = &v5[*(v2 + 20)];
    *(v11 + 10) = *v12;
    *(v11 + 11) = 2082;
    v13 = &v8[*(v2 + 20)];
    *(v11 + 13) = sub_10015BA6C(*(v13 + 1), *(v13 + 2), &v21);
    *(v11 + 21) = 1040;
    *(v11 + 23) = 2;
    *(v11 + 27) = 512;
    v14 = *(v12 + 12);
    sub_100011908(v5);
    *(v11 + 29) = v14;
    *(v11 + 31) = 2160;
    *(v11 + 33) = 0x786F626C69616DLL;
    *(v11 + 41) = 2085;
    v15 = *(v13 + 4);
    LODWORD(v13) = *(v13 + 10);

    sub_100011908(v8);
    v19[1] = v15;
    v20 = v13;
    v16 = sub_1004A5824();
    v18 = sub_10015BA6C(v16, v17, &v21);

    *(v11 + 43) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v11, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v5);

    sub_100011908(v8);
  }
}

uint64_t sub_10003602C(uint64_t a1, uint64_t a2)
{
  v135 = a1;
  v136 = a2;
  v2 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v123 = &v123 - v4;
  v134 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v130 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v131 = &v123 - v8;
  __chkstk_darwin(v9);
  v133 = &v123 - v10;
  __chkstk_darwin(v11);
  v125 = &v123 - v12;
  __chkstk_darwin(v13);
  v124 = &v123 - v14;
  __chkstk_darwin(v15);
  v126 = &v123 - v16;
  v17 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v123 - v19;
  v129 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v21 = *(v129 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v129);
  v127 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v123 - v25;
  __chkstk_darwin(v27);
  v128 = &v123 - v28;
  v29 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v123 - v31;
  v33 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v132 = &v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v123 - v38;
  __chkstk_darwin(v40);
  v42 = &v123 - v41;
  __chkstk_darwin(v43);
  v137 = &v123 - v44;
  v45 = type metadata accessor for DetermineNewestMessages();
  sub_10000E268(v138 + *(v45 + 32), v32, &qword_1005CD510, &unk_1004CF2E0);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_100025F40(v32, &qword_1005CD510, &unk_1004CF2E0);
    v46 = v136;
    v47 = v131;
    sub_1000118A4(v136, v131);
    v48 = v130;
    sub_1000118A4(v46, v130);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v49 = sub_1004A4A54();
    v50 = sub_1004A6014();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v141[0] = swift_slowAlloc();
      *v51 = 68159235;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v52 = v134;
      v53 = v48 + *(v134 + 20);
      *(v51 + 10) = *v53;
      *(v51 + 11) = 2082;
      v54 = v47 + *(v52 + 20);
      *(v51 + 13) = sub_10015BA6C(*(v54 + 8), *(v54 + 16), v141);
      *(v51 + 21) = 1040;
      *(v51 + 23) = 2;
      *(v51 + 27) = 512;
      v55 = *(v53 + 24);
      sub_100011908(v48);
      *(v51 + 29) = v55;
      *(v51 + 31) = 2160;
      *(v51 + 33) = 0x786F626C69616DLL;
      *(v51 + 41) = 2085;
      v56 = *(v54 + 32);
      v57 = *(v54 + 40);

      sub_100011908(v47);
      v139 = v56;
      v140 = v57;
      v58 = sub_1004A5824();
      v60 = sub_10015BA6C(v58, v59, v141);

      *(v51 + 43) = v60;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did not get any UIDs", v51, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011908(v48);

      sub_100011908(v47);
    }

    v64 = v135;
    v65 = v137;
    sub_100016D2C();
    v66 = sub_1004A7114();
    goto LABEL_21;
  }

  v61 = v136;
  sub_100025FDC(v32, v42, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v42, v39, &unk_1005D91B0, &unk_1004CF400);
  v131 = v33;
  v62 = v42;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v39, &unk_1005D91B0, &unk_1004CF400);
    v63 = 1;
  }

  else
  {
    sub_100025FDC(v39, v26, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v26, v20, &qword_1005CD1D0, &unk_1004CF2C0);
    v63 = 0;
  }

  v65 = v137;
  v67 = v61;
  v68 = v129;
  (*(v21 + 56))(v20, v63, 1, v129);
  v69 = (*(v21 + 48))(v20, 1, v68);
  v71 = v132;
  v70 = v133;
  if (v69 == 1)
  {
    sub_100025F40(v20, &qword_1005CD518, &qword_1004CF2F0);
    v72 = v125;
    sub_1000118A4(v67, v125);
    sub_1000118A4(v67, v70);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v73 = sub_1004A4A54();
    v74 = sub_1004A6034();
    v75 = os_log_type_enabled(v73, v74);
    v64 = v135;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v137 = v62;
      v141[0] = v136;
      *v76 = 68159235;
      *(v76 + 4) = 2;
      *(v76 + 8) = 256;
      v77 = v134;
      v78 = v70 + *(v134 + 20);
      *(v76 + 10) = *v78;
      *(v76 + 11) = 2082;
      v79 = v70;
      v80 = v72 + *(v77 + 20);
      *(v76 + 13) = sub_10015BA6C(*(v80 + 8), *(v80 + 16), v141);
      *(v76 + 21) = 1040;
      *(v76 + 23) = 2;
      *(v76 + 27) = 512;
      v81 = *(v78 + 24);
      sub_100011908(v79);
      *(v76 + 29) = v81;
      *(v76 + 31) = 2160;
      *(v76 + 33) = 0x786F626C69616DLL;
      *(v76 + 41) = 2085;
      v82 = *(v80 + 32);
      LODWORD(v78) = *(v80 + 40);

      sub_100011908(v72);
      v139 = v82;
      v140 = v78;
      v83 = sub_1004A5824();
      v85 = sub_10015BA6C(v83, v84, v141);

      *(v76 + 43) = v85;
      _os_log_impl(&_mh_execute_header, v73, v74, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned empty list as newest UIDs.", v76, 0x33u);
      swift_arrayDestroy();
      v62 = v137;
    }

    else
    {
      sub_100011908(v70);

      sub_100011908(v72);
    }

    goto LABEL_20;
  }

  v86 = v20;
  v87 = v128;
  sub_100025FDC(v86, v128, &qword_1005CD1D0, &unk_1004CF2C0);
  v88 = v126;
  sub_1000118A4(v67, v126);
  v89 = v124;
  sub_1000118A4(v67, v124);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v137 = v62;
  sub_10000E268(v62, v71, &unk_1005D91B0, &unk_1004CF400);
  v90 = v127;
  sub_10000E268(v87, v127, &qword_1005CD1D0, &unk_1004CF2C0);
  v91 = sub_1004A4A54();
  v92 = sub_1004A6034();
  if (!os_log_type_enabled(v91, v92))
  {
    sub_100025F40(v71, &unk_1005D91B0, &unk_1004CF400);
    sub_100011908(v89);

    sub_100025F40(v90, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100011908(v88);
    v116 = v87;
    goto LABEL_19;
  }

  LODWORD(v136) = v92;
  v93 = swift_slowAlloc();
  v133 = swift_slowAlloc();
  v141[0] = v133;
  *v93 = 68159747;
  *(v93 + 4) = 2;
  *(v93 + 8) = 256;
  v94 = v134;
  v95 = v89 + *(v134 + 20);
  *(v93 + 10) = *v95;
  *(v93 + 11) = 2082;
  v96 = v71;
  v97 = v88;
  v98 = v88 + *(v94 + 20);
  *(v93 + 13) = sub_10015BA6C(*(v98 + 8), *(v98 + 16), v141);
  *(v93 + 21) = 1040;
  *(v93 + 23) = 2;
  *(v93 + 27) = 512;
  v99 = *(v95 + 24);
  sub_100011908(v89);
  *(v93 + 29) = v99;
  *(v93 + 31) = 2160;
  *(v93 + 33) = 0x786F626C69616DLL;
  *(v93 + 41) = 2085;
  v100 = *(v98 + 32);
  LODWORD(v95) = *(v98 + 40);

  sub_100011908(v97);
  v139 = v100;
  v140 = v95;
  v101 = sub_1004A5824();
  v103 = sub_10015BA6C(v101, v102, v141);

  *(v93 + 43) = v103;
  *(v93 + 51) = 2048;
  v104 = MessageIdentifierSet.count.getter();
  sub_100025F40(v96, &unk_1005D91B0, &unk_1004CF400);
  *(v93 + 53) = v104;
  *(v93 + 61) = 2082;
  result = sub_1000E5314();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_25;
  }

  v106 = result;
  v107 = v123;
  MessageIdentifierSet.ranges.getter(v123);
  v108 = sub_1000E4C0C();
  v110 = v109;
  result = sub_100025F40(v107, &qword_1005CD7A0, &unk_1004CF590);
  if (v110)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (HIDWORD(v108) < v106)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v139 = __PAIR64__(HIDWORD(v108), v106);
  v111 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
  v112 = MessageIdentifierRange.debugDescription.getter(v111);
  v114 = v113;
  sub_100025F40(v127, &qword_1005CD1D0, &unk_1004CF2C0);
  v115 = sub_10015BA6C(v112, v114, v141);

  *(v93 + 63) = v115;
  _os_log_impl(&_mh_execute_header, v91, v136, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld UIDs in range %{public}s as newest UIDs.", v93, 0x47u);
  swift_arrayDestroy();

  v116 = v128;
LABEL_19:
  sub_100025F40(v116, &qword_1005CD1D0, &unk_1004CF2C0);
  v64 = v135;
  v62 = v137;
LABEL_20:
  v66 = sub_100025FDC(v62, v65, &unk_1005D91B0, &unk_1004CF400);
LABEL_21:
  v117 = *(v138 + 88);
  v118 = *(v138 + 96);
  __chkstk_darwin(v66);
  *(&v123 - 2) = v65;
  if (*(v64 + 192) == 1)
  {
    v120 = *(v64 + 176);
    v119 = *(v64 + 184);
    v139 = *(v64 + 168);
    v121 = v139;

    sub_1000BE940(&v139, v117, v118, 0, sub_1000371A8);
    sub_100020D58(v121, v120, v119, 1);
    v122 = v139;
    *(v64 + 176) = 0;
    *(v64 + 184) = 0;
    *(v64 + 168) = v122;
    *(v64 + 192) = 1;
  }

  return sub_100025F40(v65, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_100036E24(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for MailboxSyncState() + 64);
  sub_100025F40(v3, &qword_1005CDC18, &qword_1004CF9E0);
  sub_10000E268(a2, v3, &unk_1005D91B0, &unk_1004CF400);
  v4 = type metadata accessor for NewestMessages();
  v5 = *(v4 + 24);
  *(v3 + *(v4 + 20)) = 0;
  *(v3 + v5) = 0;
  v6 = *(*(v4 - 8) + 56);

  return v6(v3, 0, 1, v4);
}

uint64_t sub_100036EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_100036F38()
{
  if (qword_1005CCE20 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100036FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(qword_1005CDC28, &qword_1004CF9F0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_100037024@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_10001F6D8(a1, a2);
  if (result)
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = *(v3 + 72);
    *(v7 + 16) = *(v3 + 64);
    *(v7 + 24) = v8;
    *(v7 + 32) = 521;
    v6 = v7 | 0x4000000000000006;
  }

  *a3 = v6;
  return result;
}

unint64_t sub_1000370C8()
{
  result = qword_1005CDB58;
  if (!qword_1005CDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDB58);
  }

  return result;
}

unint64_t sub_100037128(uint64_t a1)
{
  result = sub_100037150();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100037150()
{
  result = qword_1005CDC10;
  if (!qword_1005CDC10)
  {
    type metadata accessor for DetermineNewestMessages();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDC10);
  }

  return result;
}

uint64_t sub_1000371B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10000C9C0(&qword_1005CDC20, &qword_1004CF9E8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v27 - v11);
  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  result = sub_10006FDFC(a2, a3, a4);
  if ((result & 1) != 0 && ((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0xB)
  {
    v19 = swift_projectBox();
    sub_10000E268(v19, v12, &qword_1005CDC20, &qword_1004CF9E8);
    v20 = *v12;
    v21 = *(v9 + 48);
    if (*(v4 + 72) == v12[1])
    {
      v22 = *(v12 + *(v9 + 64));
      v23 = sub_1000FFC98(*(v4 + 64), *v12);

      if (v23)
      {
        sub_100025FDC(v12 + v21, v17, &unk_1005D91B0, &unk_1004CF400);
        if (v22 == 521)
        {
          v24 = *(type metadata accessor for DetermineNewestMessages() + 32);
          sub_100025F40(v4 + v24, &qword_1005CD510, &unk_1004CF2E0);
          sub_100025FDC(v17, v4 + v24, &unk_1005D91B0, &unk_1004CF400);
          return (*(v14 + 56))(v4 + v24, 0, 1, v13);
        }

        v26 = v17;
        return sub_100025F40(v26, &unk_1005D91B0, &unk_1004CF400);
      }
    }

    else
    {
      v25 = *v12;
    }

    v26 = v12 + v21;
    return sub_100025F40(v26, &unk_1005D91B0, &unk_1004CF400);
  }

  return result;
}

uint64_t sub_100037418()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003746C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

uint64_t sub_100037500(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  type metadata accessor for DirectedAcyclicGraph.Node();
  (*(v4 + 16))(v7, a1, v3);
  v11 = sub_100037634(v7);
  swift_getWitnessTable();
  sub_1004A5DC4();
  sub_1004A5DA4();
}

uint64_t sub_100037634(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

uint64_t sub_1000376C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(a1);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v21[-v11];
  v14 = *(*v13 + 96);
  swift_beginAccess();
  v15 = v6[2];
  v15(v12, a1 + v14, v5);
  v16 = *(*a2 + 96);
  swift_beginAccess();
  v15(v9, a2 + v16, v5);
  v17 = *(*(v2 + 88) + 8);
  v18 = sub_1004A5724();
  v19 = v6[1];
  v19(v9, v5);
  v19(v12, v5);
  return v18 & 1;
}

uint64_t sub_10003787C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v11 - v6;
  v8 = *(v2 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = *(v2 + 88);
  sub_1004A5564();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000379C0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int sub_100037A84()
{
  sub_1004A6E94();
  sub_10003787C(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100037B0C()
{
  sub_1004A6E94();
  v1 = *v0;
  sub_10003787C(v3);
  return sub_1004A6F14();
}

void *sub_100037B58()
{
  v0 = type metadata accessor for DirectedAcyclicGraph.Node();
  v1 = sub_1004A5C54();
  if (sub_1004A5CC4())
  {
    WitnessTable = swift_getWitnessTable();
    v3 = sub_100038070(v1, v0, WitnessTable);
  }

  else
  {
    v3 = _swiftEmptySetSingleton;
  }

  v4 = swift_getWitnessTable();
  v5 = sub_1004A5DC4();
  swift_getTupleTypeMetadata2();
  v6 = sub_1004A5C54();
  sub_1000219E0(v6, v0, v5, v4);

  v7 = sub_1004A5C54();
  sub_1000219E0(v7, v0, v5, v4);

  return v3;
}

uint64_t sub_100037CB4()
{
  type metadata accessor for DirectedAcyclicGraph.Node();
  swift_getWitnessTable();
  if ((sub_1004A5D74() & 1) == 0)
  {
    return 0;
  }

  sub_1004A5DC4();
  swift_getWitnessTable();
  if ((sub_1004A5544() & 1) == 0)
  {
    return 0;
  }

  return sub_1004A5544();
}

uint64_t sub_100037DE4()
{
  type metadata accessor for DirectedAcyclicGraph.Node();
  swift_getWitnessTable();
  sub_1004A5D84();
  sub_1004A5DC4();
  swift_getWitnessTable();
  sub_1004A5534();

  return sub_1004A5534();
}

Swift::Int sub_100037EE8()
{
  sub_1004A6E94();
  sub_100037DE4();
  return sub_1004A6F14();
}

Swift::Int sub_100037F60(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  return sub_100037EE8();
}

uint64_t sub_100037F74(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return sub_100037DE4();
}

Swift::Int sub_100037F88(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_100037DE4();
  return sub_1004A6F14();
}

uint64_t sub_100037FD4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  return sub_100037CB4();
}

uint64_t sub_100037FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = sub_10003842C(a1, *(a2 + 16));
  v7 = v6;
  v9 = v8;

  *a3 = v5;
  a3[1] = v7;
  a3[2] = v9;
  return result;
}

uint64_t sub_100038070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v41 - v11;
  v42 = v12;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  if (sub_1004A5C94())
  {
    sub_1004A66C4();
    v16 = sub_1004A66B4();
  }

  else
  {
    v16 = _swiftEmptySetSingleton;
  }

  v46 = sub_1004A5CC4();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 7;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_1004A5C74();
    sub_1004A5C34();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1004A6784();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = v16[5];
    v23 = sub_1004A5554();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = v52[v26 >> 6];
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v9, (v24[6] + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_1004A5724();
        v35 = *v50;
        (*v50)(v9, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = v52[v26 >> 6];
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    v52[v27] = v29 | v28;
    v37 = v24[6] + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = v24[2];
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    v24[2] = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10003842C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100037B58();
  v18 = v7;
  v19 = v8;
  v20 = v9;
  if (sub_1004A5CB4())
  {
    v16 = v5;
    for (i = 0; ; ++i)
    {
      v11 = sub_1004A5C74();
      sub_1004A5C34();
      if (v11)
      {
        (*(v4 + 16))(v6, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, a2);
        v12 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1004A6784();
        if (v16 != 8)
        {
          __break(1u);
          return result;
        }

        v17 = result;
        (*(v4 + 16))(v6, &v17, a2);
        swift_unknownObjectRelease();
        v12 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_10:
          __break(1u);
          return v18;
        }
      }

      v13 = type metadata accessor for DirectedAcyclicGraph();
      sub_100037500(v6, v13);
      (*(v4 + 8))(v6, a2);
      if (v12 == sub_1004A5CB4())
      {
        return v18;
      }
    }
  }

  return v7;
}

uint64_t sub_100038664()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1000386BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = sub_10003A194(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v8 & 1) != 0 && v2 == v5)
  {
    return v4 == v7 && (sub_1000FFC98(v3, v6) & 1) != 0;
  }

  return result;
}

uint64_t sub_100038744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = sub_10003A194(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v4 == v8)
  {
    return sub_1000FFC98(v3, v7) & (v5 == v9);
  }

  return result;
}

BOOL sub_1000387D8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_100100010(*a1, *a2);
  v8 = v2 == v4 && v3 == v5;
  return (v6 & 1) != 0 && v8;
}

uint64_t sub_10003882C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v97 = *(a5 + 16);
  if (!v97)
  {
    return 0;
  }

  v5 = a4;
  v7 = a2;
  v8 = 0;
  v98 = a5 + 32;
  if (a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2 == 0xC000000000000000;
  }

  v10 = a2 >> 62;
  v11 = !v9;
  v96 = v11;
  v88 = HIDWORD(a1);
  v12 = __OFSUB__(HIDWORD(a1), a1);
  v92 = v12;
  v91 = HIDWORD(a1) - a1;
  __n = BYTE6(a2);
  v89 = a1;
  v86 = (a1 >> 32) - a1;
  v87 = a1 >> 32;
  while (1)
  {
    v13 = (v98 + 48 * v8);
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[3];
    v16 = v13[4];
    v18 = v14 >> 62;
    if (v14 >> 62 == 3)
    {
      if (v15)
      {
        v19 = 0;
      }

      else
      {
        v19 = v14 == 0xC000000000000000;
      }

      v21 = !v19 || v10 < 3;
      if (((v21 | v96) & 1) == 0)
      {
        v22 = 0;
        v23 = 0xC000000000000000;
        goto LABEL_53;
      }

LABEL_37:
      v24 = 0;
      if (v10 > 1)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    if (v18 <= 1)
    {
      break;
    }

    if (v18 != 2)
    {
      goto LABEL_37;
    }

    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (v27)
    {
      goto LABEL_165;
    }

    if (v10 > 1)
    {
      goto LABEL_38;
    }

LABEL_34:
    v28 = __n;
    if (v10)
    {
      v28 = v91;
      if (v92)
      {
        goto LABEL_164;
      }
    }

LABEL_40:
    if (v24 != v28)
    {
      goto LABEL_14;
    }

    if (v24 < 1)
    {
      goto LABEL_52;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v39 = *(v15 + 16);
        sub_100014CEC(v15, v14);

        v40 = sub_1004A40D4();
        if (v40)
        {
          v41 = v40;
          v42 = sub_1004A4104();
          if (__OFSUB__(v39, v42))
          {
            goto LABEL_168;
          }

          __s1 = (v39 - v42 + v41);
        }

        else
        {
          __s1 = 0;
        }

        v7 = a2;
        sub_1004A40F4();
        if (v10 == 2)
        {
          v76 = *(a1 + 24);
          v80 = *(a1 + 16);
          v51 = sub_1004A40D4();
          if (v51)
          {
            v65 = sub_1004A4104();
            v66 = v80;
            if (__OFSUB__(v80, v65))
            {
              goto LABEL_182;
            }

            v51 += v80 - v65;
          }

          else
          {
            v66 = v80;
          }

          v72 = v76 - v66;
          if (__OFSUB__(v76, v66))
          {
            goto LABEL_177;
          }

          v73 = sub_1004A40F4();
          if (v73 >= v72)
          {
            v54 = v72;
          }

          else
          {
            v54 = v73;
          }

          result = __s1;
          if (!__s1)
          {
            goto LABEL_193;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_192;
          }

LABEL_158:
          v7 = a2;
          if (result == v51)
          {
            goto LABEL_54;
          }

          goto LABEL_12;
        }

        if (v10 == 1)
        {
          if (v87 < v89)
          {
            goto LABEL_174;
          }

          v51 = sub_1004A40D4();
          if (v51)
          {
            v52 = sub_1004A4104();
            if (__OFSUB__(v89, v52))
            {
              goto LABEL_183;
            }

            v51 += v89 - v52;
          }

          v53 = sub_1004A40F4();
          v54 = v86;
          if (v53 < v86)
          {
            v54 = v53;
          }

          result = __s1;
          if (!__s1)
          {
            goto LABEL_191;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_190;
          }

LABEL_105:
          if (result == v51)
          {
            goto LABEL_54;
          }

LABEL_12:
          if (!memcmp(result, v51, v54))
          {
            goto LABEL_54;
          }

          goto LABEL_13;
        }

        v5 = a4;
        v49 = __s1;
        LODWORD(__s2[0]) = a1;
        BYTE4(__s2[0]) = v88;
        *(__s2 + 5) = *(&a1 + 5);
        HIBYTE(__s2[0]) = HIBYTE(a1);
        LODWORD(__s2[1]) = a2;
        WORD2(__s2[1]) = WORD2(a2);
        if (!__s1)
        {
          goto LABEL_189;
        }

        goto LABEL_127;
      }

      memset(__s2, 0, 14);
      if (!v10)
      {
LABEL_81:
        v99 = a1;
        v100 = v88;
        v101 = *(&a1 + 5);
        v102 = HIBYTE(a1);
        v103 = v7;
        v104 = BYTE2(v7);
        v105 = BYTE3(v7);
        v106 = BYTE4(v7);
        v107 = BYTE5(v7);
        sub_100014CEC(v15, v14);

        v49 = __s2;
        v50 = &v99;
        goto LABEL_128;
      }

      if (v10 != 2)
      {
        if (v87 < v89)
        {
          goto LABEL_170;
        }

        sub_100014CEC(v15, v14);

        v60 = sub_1004A40D4();
        if (!v60)
        {
          sub_1004A40F4();
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          result = sub_1004A40F4();
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
          return result;
        }

        v61 = v60;
        v62 = sub_1004A4104();
        if (__OFSUB__(v89, v62))
        {
          goto LABEL_176;
        }

        v34 = (v89 - v62 + v61);
        v35 = sub_1004A40F4();
        if (!v34)
        {
          goto LABEL_187;
        }

        goto LABEL_114;
      }

      v78 = *(a1 + 24);
      __s1b = *(a1 + 16);
      sub_100014CEC(v15, v14);

      v46 = sub_1004A40D4();
      if (v46)
      {
        v47 = sub_1004A4104();
        v48 = __s1b;
        if (__OFSUB__(__s1b, v47))
        {
          goto LABEL_180;
        }

        v46 = &__s1b[v46 - v47];
      }

      else
      {
        v48 = __s1b;
      }

      v69 = v78 - v48;
      if (__OFSUB__(v78, v48))
      {
        goto LABEL_172;
      }

      v70 = sub_1004A40F4();
      if (!v46)
      {
        goto LABEL_188;
      }
    }

    else
    {
      if (v18)
      {
        if (v15 > v15 >> 32)
        {
          goto LABEL_167;
        }

        sub_100014CEC(v15, v14);

        v43 = sub_1004A40D4();
        if (v43)
        {
          v44 = v43;
          v45 = sub_1004A4104();
          if (__OFSUB__(v15, v45))
          {
            goto LABEL_169;
          }

          __s1a = (v15 - v45 + v44);
        }

        else
        {
          __s1a = 0;
        }

        v7 = a2;
        sub_1004A40F4();
        if (v10 == 2)
        {
          v77 = *(a1 + 24);
          v81 = *(a1 + 16);
          v51 = sub_1004A40D4();
          if (v51)
          {
            v67 = sub_1004A4104();
            v68 = v81;
            if (__OFSUB__(v81, v67))
            {
              goto LABEL_184;
            }

            v51 += v81 - v67;
          }

          else
          {
            v68 = v81;
          }

          v74 = v77 - v68;
          if (__OFSUB__(v77, v68))
          {
            goto LABEL_179;
          }

          v75 = sub_1004A40F4();
          if (v75 >= v74)
          {
            v54 = v74;
          }

          else
          {
            v54 = v75;
          }

          result = __s1a;
          if (!__s1a)
          {
            goto LABEL_201;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_200;
          }

          goto LABEL_158;
        }

        if (v10 == 1)
        {
          if (v87 < v89)
          {
            goto LABEL_178;
          }

          v51 = sub_1004A40D4();
          if (v51)
          {
            v56 = sub_1004A4104();
            if (__OFSUB__(v89, v56))
            {
              goto LABEL_185;
            }

            v51 += v89 - v56;
          }

          v57 = sub_1004A40F4();
          v54 = v86;
          if (v57 < v86)
          {
            v54 = v57;
          }

          result = __s1a;
          if (!__s1a)
          {
            goto LABEL_199;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_198;
          }

          goto LABEL_105;
        }

        v5 = a4;
        v49 = __s1a;
        LODWORD(__s2[0]) = a1;
        BYTE4(__s2[0]) = v88;
        *(__s2 + 5) = *(&a1 + 5);
        HIBYTE(__s2[0]) = HIBYTE(a1);
        LODWORD(__s2[1]) = a2;
        WORD2(__s2[1]) = WORD2(a2);
        if (!__s1a)
        {
          goto LABEL_194;
        }

LABEL_127:
        v50 = __s2;
LABEL_128:
        if (!memcmp(v49, v50, __n))
        {
          goto LABEL_54;
        }

        goto LABEL_13;
      }

      __s2[0] = v15;
      LOWORD(__s2[1]) = v14;
      BYTE2(__s2[1]) = BYTE2(v14);
      BYTE3(__s2[1]) = BYTE3(v14);
      BYTE4(__s2[1]) = BYTE4(v14);
      BYTE5(__s2[1]) = BYTE5(v14);
      if (!v10)
      {
        goto LABEL_81;
      }

      if (v10 == 1)
      {
        if (v87 < v89)
        {
          goto LABEL_171;
        }

        sub_100014CEC(v15, v14);

        v31 = sub_1004A40D4();
        if (!v31)
        {
          goto LABEL_197;
        }

        v32 = v31;
        v33 = sub_1004A4104();
        if (__OFSUB__(v89, v33))
        {
          goto LABEL_175;
        }

        v34 = (v89 - v33 + v32);
        v35 = sub_1004A40F4();
        if (!v34)
        {
          goto LABEL_196;
        }

LABEL_114:
        if (v35 >= v86)
        {
          v63 = v86;
        }

        else
        {
          v63 = v35;
        }

        v64 = memcmp(__s2, v34, v63);
        goto LABEL_141;
      }

      v79 = *(a1 + 24);
      __s1c = *(a1 + 16);
      sub_100014CEC(v15, v14);

      v46 = sub_1004A40D4();
      if (v46)
      {
        v58 = sub_1004A4104();
        v59 = __s1c;
        if (__OFSUB__(__s1c, v58))
        {
          goto LABEL_181;
        }

        v46 = &__s1c[v46 - v58];
      }

      else
      {
        v59 = __s1c;
      }

      v69 = v79 - v59;
      if (__OFSUB__(v79, v59))
      {
        goto LABEL_173;
      }

      v70 = sub_1004A40F4();
      if (!v46)
      {
        goto LABEL_195;
      }
    }

    if (v70 >= v69)
    {
      v71 = v69;
    }

    else
    {
      v71 = v70;
    }

    v64 = memcmp(__s2, v46, v71);
    v7 = a2;
LABEL_141:
    v5 = a4;
    if (!v64)
    {
      goto LABEL_54;
    }

LABEL_13:
    sub_100014D40(v15, v14);

LABEL_14:
    if (++v8 == v97)
    {
      return 0;
    }
  }

  if (!v18)
  {
    v24 = BYTE6(v14);
    if (v10 > 1)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  LODWORD(v24) = HIDWORD(v15) - v15;
  if (__OFSUB__(HIDWORD(v15), v15))
  {
    goto LABEL_166;
  }

  v24 = v24;
  if (v10 <= 1)
  {
    goto LABEL_34;
  }

LABEL_38:
  if (v10 == 2)
  {
    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_163;
    }

    goto LABEL_40;
  }

  if (v24)
  {
    goto LABEL_14;
  }

LABEL_52:
  v22 = v15;
  v23 = v14;
LABEL_53:
  sub_100014CEC(v22, v23);

LABEL_54:
  if (v16 != v5)
  {
    goto LABEL_13;
  }

  v36 = *(v17 + 16);
  if (v36 != *(a3 + 16))
  {
    goto LABEL_13;
  }

  if (v36)
  {
    v37 = v17 == a3;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    v38 = 32;
    while (v36)
    {
      if (*(v17 + v38) != *(a3 + v38))
      {
        goto LABEL_13;
      }

      ++v38;
      if (!--v36)
      {
        goto LABEL_161;
      }
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
  }

LABEL_161:
  sub_100014D40(v15, v14);

  return 1;
}

_BYTE *sub_1000391F0(uint64_t a1)
{
  v5 = *v2;
  v6 = *(v5 + 16);
  v110 = a1;
  if (v6)
  {
    v7 = 0;
    a1 = *(a1 + 40);
    v8 = 72;
    while (1)
    {
      v9 = *(v5 + v8);
      v10 = a1 - v9;
      if (a1 >= v9)
      {
        if (__OFSUB__(a1, v9))
        {
          goto LABEL_210;
        }
      }

      else
      {
        if (__OFSUB__(v9, a1))
        {
          goto LABEL_211;
        }

        v10 = a1 - v9;
        if (__OFSUB__(0, v9 - a1))
        {
          goto LABEL_212;
        }
      }

      if (v10 / 1000000000.0 > 2100.0)
      {
        break;
      }

      ++v7;
      v8 += 48;
      if (v6 == v7)
      {
        v3 = *(v5 + 16);
        a1 = v110;
        goto LABEL_17;
      }
    }

    v3 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
      goto LABEL_232;
    }

    if (v3 != v6)
    {
      v83 = v8 + 48;
      while (v3 < v6)
      {
        v87 = *(v5 + v83);
        v88 = a1 - v87;
        if (a1 >= v87)
        {
          if (__OFSUB__(a1, v87))
          {
            goto LABEL_215;
          }
        }

        else
        {
          if (__OFSUB__(v87, a1))
          {
            goto LABEL_214;
          }

          v88 = a1 - v87;
          if (__OFSUB__(0, v87 - a1))
          {
            goto LABEL_216;
          }
        }

        if (v88 / 1000000000.0 <= 2100.0)
        {
          if (v3 != v7)
          {
            if (v7 >= v6)
            {
              goto LABEL_219;
            }

            v89 = v5 + 32 + 48 * v7;
            v121 = *(v89 + 16);
            v1 = *(v89 + 24);
            v115 = *(v89 + 40);
            v117 = *(v89 + 32);
            v90 = *(v5 + v83 - 40);
            v91 = *(v5 + v83 - 32);
            v129 = *(v5 + v83 - 24);
            v92 = *(v5 + v83 - 16);
            v126 = *v89;
            v128 = *(v5 + v83 - 8);
            v124 = *(v89 + 8);
            sub_100014CEC(*v89, v124);
            v119 = v1;

            sub_100014CEC(v90, v91);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_100139868(v5);
            }

            if (v7 >= *(v5 + 16))
            {
              goto LABEL_220;
            }

            v93 = v5 + 48 * v7;
            v94 = *(v93 + 32);
            v95 = *(v93 + 40);
            v1 = *(v93 + 56);
            *(v93 + 32) = v90;
            *(v93 + 40) = v91;
            *(v93 + 48) = v129;
            *(v93 + 56) = v92;
            *(v93 + 64) = v128;
            *(v93 + 72) = v87;
            sub_100014D40(v94, v95);

            if (v3 >= *(v5 + 16))
            {
              goto LABEL_221;
            }

            v84 = (v5 + v83);
            v85 = *(v5 + v83 - 40);
            v86 = *(v5 + v83 - 32);
            v1 = *(v5 + v83 - 16);
            *(v84 - 5) = v126;
            *(v84 - 4) = v124;
            *(v84 - 6) = v121;
            *(v84 - 2) = v119;
            *(v84 - 1) = v117;
            *v84 = v115;
            sub_100014D40(v85, v86);

            *v122 = v5;
          }

          ++v7;
        }

        ++v3;
        v6 = *(v5 + 16);
        v83 += 48;
        if (v3 == v6)
        {
          goto LABEL_16;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v3 = *(v5 + 16);
LABEL_16:
    v6 = v7;
    a1 = v110;
    if (v3 < v7)
    {
LABEL_224:
      __break(1u);
      goto LABEL_225;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_17:
  sub_1001647BC(v6, v3);
  v3 = *v122;
  v5 = *(*v122 + 2);
  if (!v5)
  {
    v1 = 0;
    goto LABEL_180;
  }

  v1 = 0;
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = a1;
  a1 = *(a1 + 16);
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 == 0xC000000000000000;
  }

  v15 = v11 >> 62;
  v116 = *(v13 + 24);
  v118 = v11;
  v114 = *(v13 + 32);
  v16 = !v14;
  v125 = v16;
  v17 = __OFSUB__(HIDWORD(v12), v12);
  v112 = v17;
  v113 = a1;
  v111 = HIDWORD(v12) - v12;
  v123 = BYTE6(v11);
  v120 = v12;
  v107 = v12 >> 32;
  v108 = v12;
  v106 = (v12 >> 32) - v12;
  v109 = *(*v122 + 2);
  while (1)
  {
    if (v1 >= *(v3 + 2))
    {
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v18 = &v3[48 * v1 + 32];
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v23 = *(v18 + 24);
    v22 = *(v18 + 32);
    v24 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v25 = 0;
      }

      else
      {
        v25 = v19 == 0xC000000000000000;
      }

      v27 = !v25 || v15 < 3;
      if (((v27 | v125) & 1) == 0)
      {
        v127 = v22;
        v28 = 0;
        v29 = 0xC000000000000000;
        goto LABEL_69;
      }

LABEL_53:
      v30 = 0;
      if (v15 <= 1)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }

    if (v24 > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_53;
      }

      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_223;
      }

      if (v15 <= 1)
      {
        goto LABEL_50;
      }
    }

    else if (v24)
    {
      LODWORD(v30) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_222;
      }

      v30 = v30;
      if (v15 <= 1)
      {
LABEL_50:
        v34 = v123;
        if (v15)
        {
          v34 = v111;
          if (v112)
          {
            goto LABEL_217;
          }
        }

        goto LABEL_56;
      }
    }

    else
    {
      v30 = BYTE6(v19);
      if (v15 <= 1)
      {
        goto LABEL_50;
      }
    }

LABEL_54:
    if (v15 != 2)
    {
      if (v30)
      {
        goto LABEL_29;
      }

LABEL_68:
      v127 = v22;
      v28 = v20;
      v29 = v19;
LABEL_69:
      sub_100014CEC(v28, v29);

LABEL_70:
      if (v21 == a1 && v127 == v114)
      {
        v42 = *(v23 + 16);
        if (v42 == *(v116 + 16))
        {
          if (v42)
          {
            v43 = v23 == v116;
          }

          else
          {
            v43 = 1;
          }

          if (!v43)
          {
            v44 = 32;
            while (v42)
            {
              if (*(v23 + v44) != *(v116 + v44))
              {
                goto LABEL_28;
              }

              ++v44;
              if (!--v42)
              {
                goto LABEL_176;
              }
            }

            goto LABEL_209;
          }

LABEL_176:
          sub_100014D40(v20, v19);

          v5 = v110;
          sub_10003A30C(v110, __s1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_177;
          }

          goto LABEL_227;
        }
      }

      goto LABEL_28;
    }

    v36 = *(v120 + 16);
    v35 = *(v120 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
      goto LABEL_218;
    }

LABEL_56:
    if (v30 != v34)
    {
      goto LABEL_29;
    }

    if (v30 < 1)
    {
      goto LABEL_68;
    }

    v127 = v22;
    if (v24 <= 1)
    {
      break;
    }

    if (v24 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (v15)
      {
        if (v15 == 2)
        {
          v98 = *(v120 + 24);
          v104 = *(v120 + 16);
          sub_100014CEC(v20, v19);

          v40 = sub_1004A40D4();
          if (v40)
          {
            v51 = sub_1004A4104();
            v52 = v104;
            if (__OFSUB__(v104, v51))
            {
              goto LABEL_246;
            }

            v40 = &v104[v40 - v51];
          }

          else
          {
            v52 = v104;
          }

          v71 = v98 - v52;
          if (__OFSUB__(v98, v52))
          {
            goto LABEL_239;
          }

          result = sub_1004A40F4();
          if (!v40)
          {
            goto LABEL_254;
          }

          goto LABEL_151;
        }

        if (v107 < v108)
        {
          goto LABEL_235;
        }

        sub_100014CEC(v20, v19);

        v62 = sub_1004A40D4();
        if (!v62)
        {
          goto LABEL_252;
        }

        v63 = v62;
        v64 = sub_1004A4104();
        if (__OFSUB__(v108, v64))
        {
          goto LABEL_241;
        }

        v40 = (v108 - v64 + v63);
        result = sub_1004A40F4();
        if (!v40)
        {
          goto LABEL_253;
        }

LABEL_130:
        if (result >= v106)
        {
          v65 = v106;
        }

        else
        {
          v65 = result;
        }

LABEL_154:
        v5 = v109;
        a1 = v113;
        if (!memcmp(__s1, v40, v65))
        {
          goto LABEL_70;
        }

        goto LABEL_28;
      }

      goto LABEL_98;
    }

    a1 = *(v20 + 16);
    sub_100014CEC(v20, v19);

    v45 = sub_1004A40D4();
    if (v45)
    {
      v46 = v45;
      v5 = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v47 = sub_1004A4104();
      if (__OFSUB__(a1, v47))
      {
        goto LABEL_230;
      }

      v102 = (a1 - v47 + v46);
    }

    else
    {
      v102 = 0;
    }

    sub_1004A40F4();
    a1 = v113;
    if (v15 == 2)
    {
      v96 = *(v120 + 24);
      v100 = *(v120 + 16);
      v54 = sub_1004A40D4();
      if (v54)
      {
        v66 = sub_1004A4104();
        v67 = v100;
        if (__OFSUB__(v100, v66))
        {
          goto LABEL_247;
        }

        v54 += v100 - v66;
      }

      else
      {
        v67 = v100;
      }

      v72 = v96 - v67;
      if (__OFSUB__(v96, v67))
      {
        goto LABEL_242;
      }

      v73 = sub_1004A40F4();
      if (v73 >= v72)
      {
        v57 = v72;
      }

      else
      {
        v57 = v73;
      }

      result = v102;
      if (!v102)
      {
        goto LABEL_262;
      }

      v5 = v109;
      a1 = v113;
      if (!v54)
      {
        goto LABEL_261;
      }
    }

    else
    {
      if (v15 != 1)
      {
        v5 = v109;
        result = v102;
        *__s1 = v120;
        *&__s1[8] = v118;
        *&__s1[12] = WORD2(v118);
        if (!v102)
        {
          goto LABEL_255;
        }

        goto LABEL_142;
      }

      if (v107 < v108)
      {
        goto LABEL_237;
      }

      v54 = sub_1004A40D4();
      if (v54)
      {
        v55 = sub_1004A4104();
        if (__OFSUB__(v108, v55))
        {
          goto LABEL_249;
        }

        v54 += v108 - v55;
      }

      a1 = v113;
      v56 = sub_1004A40F4();
      v57 = v106;
      if (v56 < v106)
      {
        v57 = v56;
      }

      result = v102;
      if (!v102)
      {
        goto LABEL_260;
      }

      v5 = v109;
      if (!v54)
      {
        goto LABEL_259;
      }
    }

LABEL_171:
    if (result == v54)
    {
      goto LABEL_70;
    }

    v70 = v57;
    v53 = v54;
LABEL_173:
    if (!memcmp(result, v53, v70))
    {
      goto LABEL_70;
    }

LABEL_28:
    sub_100014D40(v20, v19);

LABEL_29:
    if (++v1 == v5)
    {
      v1 = *(v3 + 2);
      a1 = v110;
      if (v1 > 0x10)
      {
        v5 = sub_100039EE0(0x11uLL);
        sub_10003A30C(v110, __s1);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
LABEL_233:
            __break(1u);
            goto LABEL_234;
          }

LABEL_205:
          if (v5 < *(v3 + 2))
          {
            v76 = &v3[48 * v5 + 32];
            v77 = a1;
            goto LABEL_207;
          }

LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
        }

LABEL_232:
        v3 = sub_100139868(v3);
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_233;
        }

        goto LABEL_205;
      }

LABEL_180:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_181:
        v79 = *(v3 + 2);
        v78 = *(v3 + 3);
        if (v79 >= v78 >> 1)
        {
          v3 = sub_100085CEC((v78 > 1), v79 + 1, 1, v3);
        }

        *(v3 + 2) = v79 + 1;
        v80 = &v3[48 * v79];
        v81 = *a1;
        v82 = *(a1 + 32);
        *(v80 + 3) = *(a1 + 16);
        *(v80 + 4) = v82;
        *(v80 + 2) = v81;
        *v122 = v3;
        return sub_10003A30C(a1, __s1);
      }

LABEL_225:
      v3 = sub_100085CEC(0, v1 + 1, 1, v3);
      goto LABEL_181;
    }
  }

  if (v24)
  {
    a1 = v20;
    if (v20 > v20 >> 32)
    {
      __break(1u);
LABEL_227:
      v3 = sub_100139868(v3);
LABEL_177:
      if (v1 < *(v3 + 2))
      {
        v76 = &v3[48 * v1 + 32];
        v77 = v5;
LABEL_207:
        result = sub_10003A344(v77, v76);
        *v122 = v3;
        return result;
      }

      __break(1u);
      goto LABEL_229;
    }

    sub_100014CEC(v20, v19);

    v48 = sub_1004A40D4();
    if (v48)
    {
      v49 = v48;
      v5 = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v50 = sub_1004A4104();
      if (__OFSUB__(v20, v50))
      {
        goto LABEL_231;
      }

      v103 = (v20 - v50 + v49);
    }

    else
    {
      v103 = 0;
    }

    sub_1004A40F4();
    a1 = v113;
    if (v15 == 2)
    {
      v97 = *(v120 + 24);
      v101 = *(v120 + 16);
      v54 = sub_1004A40D4();
      if (v54)
      {
        v68 = sub_1004A4104();
        v69 = v101;
        if (__OFSUB__(v101, v68))
        {
          goto LABEL_248;
        }

        v54 += v101 - v68;
      }

      else
      {
        v69 = v101;
      }

      v74 = v97 - v69;
      if (__OFSUB__(v97, v69))
      {
        goto LABEL_244;
      }

      v75 = sub_1004A40F4();
      if (v75 >= v74)
      {
        v57 = v74;
      }

      else
      {
        v57 = v75;
      }

      result = v103;
      if (!v103)
      {
        goto LABEL_266;
      }

      v5 = v109;
      a1 = v113;
      if (!v54)
      {
        goto LABEL_265;
      }
    }

    else
    {
      if (v15 != 1)
      {
        v5 = v109;
        result = v103;
        *__s1 = v120;
        *&__s1[8] = v118;
        *&__s1[12] = WORD2(v118);
        if (!v103)
        {
          goto LABEL_256;
        }

LABEL_142:
        v53 = __s1;
LABEL_143:
        v70 = v123;
        goto LABEL_173;
      }

      if (v107 < v108)
      {
        goto LABEL_243;
      }

      v54 = sub_1004A40D4();
      if (v54)
      {
        v58 = sub_1004A4104();
        if (__OFSUB__(v108, v58))
        {
          goto LABEL_250;
        }

        v54 += v108 - v58;
      }

      a1 = v113;
      v59 = sub_1004A40F4();
      v57 = v106;
      if (v59 < v106)
      {
        v57 = v59;
      }

      result = v103;
      if (!v103)
      {
        goto LABEL_264;
      }

      v5 = v109;
      if (!v54)
      {
        goto LABEL_263;
      }
    }

    goto LABEL_171;
  }

  *__s1 = v20;
  *&__s1[8] = v19;
  __s1[10] = BYTE2(v19);
  __s1[11] = BYTE3(v19);
  __s1[12] = BYTE4(v19);
  __s1[13] = BYTE5(v19);
  if (!v15)
  {
LABEL_98:
    v130 = v120;
    v131 = v118;
    v132 = WORD2(v118);
    sub_100014CEC(v20, v19);

    result = __s1;
    v53 = &v130;
    goto LABEL_143;
  }

  if (v15 != 1)
  {
    v99 = *(v120 + 24);
    v105 = *(v120 + 16);
    sub_100014CEC(v20, v19);

    v40 = sub_1004A40D4();
    if (v40)
    {
      v60 = sub_1004A4104();
      v61 = v105;
      if (__OFSUB__(v105, v60))
      {
        goto LABEL_245;
      }

      v40 = &v105[v40 - v60];
    }

    else
    {
      v61 = v105;
    }

    v71 = v99 - v61;
    if (__OFSUB__(v99, v61))
    {
      goto LABEL_238;
    }

    result = sub_1004A40F4();
    if (!v40)
    {
      goto LABEL_257;
    }

LABEL_151:
    if (result >= v71)
    {
      v65 = v71;
    }

    else
    {
      v65 = result;
    }

    goto LABEL_154;
  }

  if (v107 < v108)
  {
    goto LABEL_236;
  }

  sub_100014CEC(v20, v19);

  v37 = sub_1004A40D4();
  if (v37)
  {
    v38 = v37;
    v39 = sub_1004A4104();
    if (__OFSUB__(v108, v39))
    {
      goto LABEL_240;
    }

    v40 = (v108 - v39 + v38);
    result = sub_1004A40F4();
    if (!v40)
    {
      goto LABEL_258;
    }

    goto LABEL_130;
  }

  sub_1004A40F4();
  __break(1u);
LABEL_252:
  result = sub_1004A40F4();
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
  return result;
}

Swift::UInt64 sub_100039EE0(Swift::UInt64 result)
{
  if (result)
  {
    v1 = result;
    v2 = PCG32Random.next()();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = PCG32Random.next()();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100039F4C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10003A0DC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100014D40(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100066884(v13, a3, a4, &v12);
  v10 = v4;
  sub_100014D40(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10003A0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1004A40D4();
  v11 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1004A40F4();
  sub_100066884(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10003A194(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100014CEC(a3, a4);
          return sub_100039F4C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10003A37C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_10003A398(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10003A3AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10003A3F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003A460()
{
  result = qword_1005CDD30;
  if (!qword_1005CDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDD30);
  }

  return result;
}

Swift::Int sub_10003A4D4()
{
  result = sub_100093190(&off_100598BD0);
  qword_1005DDEF0 = result;
  return result;
}

uint64_t sub_10003A4FC()
{
  v5[8] = 0;
  *v5 = *(v0 + 9);
  sub_1004A6934();
  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  sub_1004A5994(v6);
  v1 = 65;
  if (*(v0 + 112) != 1)
  {
    v1 = 66;
  }

  if (*(v0 + 112))
  {
    v2._countAndFlagsBits = v1;
  }

  else
  {
    v2._countAndFlagsBits = 1919251285;
  }

  if (*(v0 + 112))
  {
    v3 = 0xE100000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1004A5994(v2);

  return *&v5[1];
}

void sub_10003A5C0(uint64_t a1)
{
  v2 = v1;
  v187 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v4 = *(*(v187 - 8) + 64);
  __chkstk_darwin(v187);
  *&v191 = &v182 - v5;
  v6 = type metadata accessor for DownloadTask(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v185 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v182 - v10;
  __chkstk_darwin(v12);
  v194 = &v182 - v13;
  __chkstk_darwin(v14);
  v190 = &v182 - v15;
  __chkstk_darwin(v16);
  v202 = &v182 - v17;
  __chkstk_darwin(v18);
  v20 = &v182 - v19;
  __chkstk_darwin(v21);
  v23 = &v182 - v22;
  __chkstk_darwin(v24);
  v200 = (&v182 - v25);
  v195 = type metadata accessor for MailboxTaskLogger(0);
  v26 = *(*(v195 - 8) + 64);
  __chkstk_darwin(v195);
  v183 = &v182 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v184 = &v182 - v29;
  __chkstk_darwin(v30);
  v199 = &v182 - v31;
  __chkstk_darwin(v32);
  v198 = &v182 - v33;
  __chkstk_darwin(v34);
  v197 = &v182 - v35;
  __chkstk_darwin(v36);
  v201 = &v182 - v37;
  __chkstk_darwin(v38);
  v40 = &v182 - v39;
  __chkstk_darwin(v41);
  v43 = &v182 - v42;
  __chkstk_darwin(v44);
  v46 = &v182 - v45;
  __chkstk_darwin(v47);
  v49 = &v182 - v48;
  v192 = v6;
  v50 = *(v6 + 40);
  v186 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v51 = sub_1004A70C4();
  v196 = a1;
  v193 = v2;
  if ((v51 & 1) == 0)
  {
    sub_10003EB54(a1, v43, type metadata accessor for MailboxTaskLogger);
    sub_10003EB54(a1, v40, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_10003EB54(v2, v202, type metadata accessor for DownloadTask);
    v74 = v190;
    sub_10003EB54(v2, v190, type metadata accessor for DownloadTask);
    v75 = v194;
    sub_10003EB54(v2, v194, type metadata accessor for DownloadTask);
    sub_10003EB54(v2, v11, type metadata accessor for DownloadTask);
    v76 = sub_1004A4A54();
    v77 = sub_1004A6034();
    if (!os_log_type_enabled(v76, v77))
    {
      v98 = a1;
      sub_10003EBBC(v40, type metadata accessor for MailboxTaskLogger);

      sub_10003EBBC(v11, type metadata accessor for DownloadTask);
      sub_10003EBBC(v75, type metadata accessor for DownloadTask);
      sub_10003EBBC(v74, type metadata accessor for DownloadTask);
      sub_10003EBBC(v43, type metadata accessor for MailboxTaskLogger);
      sub_10003EBBC(v202, type metadata accessor for DownloadTask);
LABEL_25:
      v2 = v193;
      goto LABEL_26;
    }

    v200 = v11;
    v78 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v205[0] = v189;
    *v78 = 68160259;
    *(v78 + 4) = 2;
    *(v78 + 8) = 256;
    v79 = v195;
    v80 = &v40[*(v195 + 20)];
    *(v78 + 10) = *v80;
    *(v78 + 11) = 2082;
    v81 = v74;
    v82 = &v43[*(v79 + 20)];
    *(v78 + 13) = sub_10015BA6C(*(v82 + 1), *(v82 + 2), v205);
    *(v78 + 21) = 1040;
    *(v78 + 23) = 2;
    *(v78 + 27) = 512;
    LOWORD(v80) = *(v80 + 12);
    sub_10003EBBC(v40, type metadata accessor for MailboxTaskLogger);
    *(v78 + 29) = v80;
    *(v78 + 31) = 2160;
    *(v78 + 33) = 0x786F626C69616DLL;
    *(v78 + 41) = 2085;
    v83 = *(v82 + 4);
    LODWORD(v80) = *(v82 + 10);
    v84 = v81;

    sub_10003EBBC(v43, type metadata accessor for MailboxTaskLogger);
    v203 = v83;
    v204 = v80;
    v85 = sub_1004A5824();
    v87 = sub_10015BA6C(v85, v86, v205);

    *(v78 + 43) = v87;
    *(v78 + 51) = 2082;
    v88 = v202;
    v89 = *(v202 + 104);

    v91 = v191;
    sub_1000B492C(v90);
    v92 = MessageIdentifierSet.debugDescription.getter(v187);
    v94 = v93;
    sub_100025F40(v91, &unk_1005D91B0, &unk_1004CF400);
    sub_10003EBBC(v88, type metadata accessor for DownloadTask);
    v95 = sub_10015BA6C(v92, v94, v205);

    *(v78 + 53) = v95;
    *(v78 + 61) = 2080;
    if (*(v84 + 112))
    {
      v96 = 0xE100000000000000;
      if (*(v84 + 112) == 1)
      {
        v97 = 65;
      }

      else
      {
        v97 = 66;
      }
    }

    else
    {
      v97 = 1919251285;
      v96 = 0xE400000000000000;
    }

    sub_10003EBBC(v84, type metadata accessor for DownloadTask);
    v102 = sub_10015BA6C(v97, v96, v205);

    *(v78 + 63) = v102;
    *(v78 + 71) = 2082;
    if (*(v194 + 9))
    {
      v103 = 6581810;
    }

    else
    {
      v103 = 7631665;
    }

    sub_10003EBBC(v194, type metadata accessor for DownloadTask);
    v104 = sub_10015BA6C(v103, 0xE300000000000000, v205);

    *(v78 + 73) = v104;
    *(v78 + 81) = 2082;
    v105 = v200;
    v106 = v200 + *(v192 + 40);
    v107 = MessageIdentifierSet.debugDescription.getter(v187);
    v109 = v108;
    sub_10003EBBC(v105, type metadata accessor for DownloadTask);
    v110 = sub_10015BA6C(v107, v109, v205);

    *(v78 + 83) = v110;
    _os_log_impl(&_mh_execute_header, v76, v77, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for %{public}s %s '%{public}s' -- full message download for %{public}s", v78, 0x5Bu);
    swift_arrayDestroy();

LABEL_24:
    v98 = v196;
    goto LABEL_25;
  }

  sub_10003EB54(a1, v49, type metadata accessor for MailboxTaskLogger);
  sub_10003EB54(a1, v46, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10003EB54(v2, v200, type metadata accessor for DownloadTask);
  sub_10003EB54(v2, v23, type metadata accessor for DownloadTask);
  sub_10003EB54(v2, v20, type metadata accessor for DownloadTask);
  v52 = sub_1004A4A54();
  v53 = sub_1004A6034();
  if (os_log_type_enabled(v52, v53))
  {
    LODWORD(v202) = v53;
    v54 = v20;
    v55 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v205[0] = v194;
    *v55 = 68160003;
    *(v55 + 4) = 2;
    *(v55 + 8) = 256;
    v56 = v195;
    v57 = &v46[*(v195 + 20)];
    *(v55 + 10) = *v57;
    *(v55 + 11) = 2082;
    v58 = v23;
    v59 = &v49[*(v56 + 20)];
    *(v55 + 13) = sub_10015BA6C(*(v59 + 1), *(v59 + 2), v205);
    *(v55 + 21) = 1040;
    *(v55 + 23) = 2;
    *(v55 + 27) = 512;
    LOWORD(v57) = *(v57 + 12);
    sub_10003EBBC(v46, type metadata accessor for MailboxTaskLogger);
    *(v55 + 29) = v57;
    *(v55 + 31) = 2160;
    *(v55 + 33) = 0x786F626C69616DLL;
    *(v55 + 41) = 2085;
    v60 = *(v59 + 4);
    LODWORD(v57) = *(v59 + 10);

    sub_10003EBBC(v49, type metadata accessor for MailboxTaskLogger);
    v203 = v60;
    v204 = v57;
    v61 = sub_1004A5824();
    v63 = sub_10015BA6C(v61, v62, v205);

    *(v55 + 43) = v63;
    *(v55 + 51) = 2082;
    v64 = v200;
    v65 = v200[13];

    v67 = v191;
    sub_1000B492C(v66);
    v68 = MessageIdentifierSet.debugDescription.getter(v187);
    v70 = v69;
    sub_100025F40(v67, &unk_1005D91B0, &unk_1004CF400);
    sub_10003EBBC(v64, type metadata accessor for DownloadTask);
    v71 = sub_10015BA6C(v68, v70, v205);

    *(v55 + 53) = v71;
    *(v55 + 61) = 2080;
    if (*(v58 + 112))
    {
      v72 = 0xE100000000000000;
      if (*(v58 + 112) == 1)
      {
        v73 = 65;
      }

      else
      {
        v73 = 66;
      }
    }

    else
    {
      v73 = 1919251285;
      v72 = 0xE400000000000000;
    }

    sub_10003EBBC(v58, type metadata accessor for DownloadTask);
    v99 = sub_10015BA6C(v73, v72, v205);

    *(v55 + 63) = v99;
    *(v55 + 71) = 2082;
    if (*(v54 + 9))
    {
      v100 = 6581810;
    }

    else
    {
      v100 = 7631665;
    }

    sub_10003EBBC(v54, type metadata accessor for DownloadTask);
    v101 = sub_10015BA6C(v100, 0xE300000000000000, v205);

    *(v55 + 73) = v101;
    _os_log_impl(&_mh_execute_header, v52, v202, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for %{public}s %s '%{public}s'", v55, 0x51u);
    swift_arrayDestroy();

    goto LABEL_24;
  }

  sub_10003EBBC(v46, type metadata accessor for MailboxTaskLogger);

  sub_10003EBBC(v20, type metadata accessor for DownloadTask);
  sub_10003EBBC(v23, type metadata accessor for DownloadTask);
  sub_10003EBBC(v49, type metadata accessor for MailboxTaskLogger);
  sub_10003EBBC(v200, type metadata accessor for DownloadTask);
  v98 = v196;
LABEL_26:
  v111 = *(v2 + 104);
  v114 = *(v111 + 64);
  v113 = v111 + 64;
  v112 = v114;
  v115 = 1 << *(*(v2 + 104) + 32);
  v116 = -1;
  if (v115 < 64)
  {
    v116 = ~(-1 << v115);
  }

  v117 = v116 & v112;
  v118 = (v115 + 63) >> 6;
  v200 = *(v2 + 104);

  v119 = 0;
  *&v120 = 68159491;
  v191 = v120;
  *&v120 = 68159747;
  v188 = v120;
  v121 = v198;
  v122 = v197;
  if (v117)
  {
    goto LABEL_31;
  }

LABEL_32:
  v124 = v201;
  while (1)
  {
    v123 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      __break(1u);
      return;
    }

    if (v123 >= v118)
    {
      break;
    }

    v117 = *(v113 + 8 * v123);
    ++v119;
    if (v117)
    {
      while (1)
      {
        v125 = __clz(__rbit64(v117));
        v117 &= v117 - 1;
        v126 = v125 | (v123 << 6);
        v127 = v200[7];
        LODWORD(v202) = *(v200[6] + 4 * v126);
        v128 = v127 + 16 * v126;
        if (*(v128 + 8))
        {
          v129 = v124;
          sub_10003EB54(v98, v124, type metadata accessor for MailboxTaskLogger);
          sub_10003EB54(v98, v122, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v130 = sub_1004A4A54();
          v131 = sub_1004A6004();
          if (!os_log_type_enabled(v130, v131))
          {
            sub_10003EBBC(v122, type metadata accessor for MailboxTaskLogger);

            sub_10003EBBC(v129, type metadata accessor for MailboxTaskLogger);
            v119 = v123;
            if (!v117)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          v145 = swift_slowAlloc();
          LODWORD(v190) = v131;
          v146 = v145;
          v194 = swift_slowAlloc();
          v205[0] = v194;
          *v146 = v191;
          *(v146 + 4) = 2;
          *(v146 + 8) = 256;
          v147 = v195;
          v148 = v122 + *(v195 + 20);
          *(v146 + 10) = *v148;
          *(v146 + 11) = 2082;
          v149 = *(v147 + 20);
          v189 = v130;
          v150 = v129;
          v151 = v129 + v149;
          *(v146 + 13) = sub_10015BA6C(*(v129 + v149 + 8), *(v129 + v149 + 16), v205);
          *(v146 + 21) = 1040;
          *(v146 + 23) = 2;
          *(v146 + 27) = 512;
          v152 = *(v148 + 24);
          sub_10003EBBC(v122, type metadata accessor for MailboxTaskLogger);
          *(v146 + 29) = v152;
          *(v146 + 31) = 2160;
          *(v146 + 33) = 0x786F626C69616DLL;
          *(v146 + 41) = 2085;
          v153 = *(v151 + 32);
          LODWORD(v151) = *(v151 + 40);

          sub_10003EBBC(v150, type metadata accessor for MailboxTaskLogger);
          v203 = v153;
          v204 = v151;
          v98 = v196;
          v154 = sub_1004A5824();
          v156 = sub_10015BA6C(v154, v155, v205);

          *(v146 + 43) = v156;
          v121 = v198;
          *(v146 + 51) = 1024;
          *(v146 + 53) = v202;
          v133 = v189;
          _os_log_impl(&_mh_execute_header, v189, v190, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u, unknown size", v146, 0x39u);
        }

        else
        {
          v194 = *v128;
          sub_10003EB54(v98, v121, type metadata accessor for MailboxTaskLogger);
          v132 = v199;
          sub_10003EB54(v98, v199, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v133 = sub_1004A4A54();
          v134 = sub_1004A6004();
          if (!os_log_type_enabled(v133, v134))
          {
            sub_10003EBBC(v132, type metadata accessor for MailboxTaskLogger);

            sub_10003EBBC(v121, type metadata accessor for MailboxTaskLogger);
            v119 = v123;
            v122 = v197;
            if (!v117)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          v135 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v205[0] = v190;
          *v135 = v188;
          v136 = v121;
          *(v135 + 4) = 2;
          *(v135 + 8) = 256;
          v137 = v195;
          v138 = v199 + *(v195 + 20);
          *(v135 + 10) = *v138;
          *(v135 + 11) = 2082;
          v139 = v136 + *(v137 + 20);
          *(v135 + 13) = sub_10015BA6C(*(v139 + 8), *(v139 + 16), v205);
          *(v135 + 21) = 1040;
          *(v135 + 23) = 2;
          *(v135 + 27) = 512;
          v140 = *(v138 + 24);
          sub_10003EBBC(v199, type metadata accessor for MailboxTaskLogger);
          *(v135 + 29) = v140;
          *(v135 + 31) = 2160;
          *(v135 + 33) = 0x786F626C69616DLL;
          *(v135 + 41) = 2085;
          v141 = *(v139 + 32);
          LODWORD(v139) = *(v139 + 40);

          sub_10003EBBC(v198, type metadata accessor for MailboxTaskLogger);
          v203 = v141;
          v204 = v139;
          v98 = v196;
          v142 = sub_1004A5824();
          v144 = sub_10015BA6C(v142, v143, v205);

          *(v135 + 43) = v144;
          v121 = v198;
          *(v135 + 51) = 1024;
          *(v135 + 53) = v202;
          *(v135 + 57) = 2048;
          *(v135 + 59) = v194;
          _os_log_impl(&_mh_execute_header, v133, v134, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u, size %{iec-bytes}ld", v135, 0x43u);
        }

        swift_arrayDestroy();

        v119 = v123;
        v122 = v197;
        if (!v117)
        {
          goto LABEL_32;
        }

LABEL_31:
        v123 = v119;
        v124 = v201;
      }
    }
  }

  v157 = v193;
  v158 = v193 + *(v192 + 36);
  v159 = _s18InProgressMessagesVMa(0);
  v160 = v158 + *(v159 + 24);
  if ((sub_1004A70C4() & 1) == 0)
  {
    v161 = v184;
    sub_10003EB54(v98, v184, type metadata accessor for MailboxTaskLogger);
    v162 = v183;
    sub_10003EB54(v98, v183, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v163 = v185;
    sub_10003EB54(v157, v185, type metadata accessor for DownloadTask);
    v164 = sub_1004A4A54();
    v165 = sub_1004A6004();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v205[0] = swift_slowAlloc();
      *v166 = v191;
      *(v166 + 4) = 2;
      *(v166 + 8) = 256;
      v167 = v195;
      v168 = v162 + *(v195 + 20);
      *(v166 + 10) = *v168;
      *(v166 + 11) = 2082;
      v169 = v162;
      v170 = v161;
      v171 = v161 + *(v167 + 20);
      *(v166 + 13) = sub_10015BA6C(*(v171 + 8), *(v171 + 16), v205);
      *(v166 + 21) = 1040;
      *(v166 + 23) = 2;
      *(v166 + 27) = 512;
      LOWORD(v168) = *(v168 + 24);
      sub_10003EBBC(v169, type metadata accessor for MailboxTaskLogger);
      *(v166 + 29) = v168;
      *(v166 + 31) = 2160;
      *(v166 + 33) = 0x786F626C69616DLL;
      *(v166 + 41) = 2085;
      v172 = *(v171 + 32);
      LODWORD(v171) = *(v171 + 40);

      sub_10003EBBC(v170, type metadata accessor for MailboxTaskLogger);
      v203 = v172;
      v204 = v171;
      v173 = sub_1004A5824();
      v175 = sub_10015BA6C(v173, v174, v205);

      *(v166 + 43) = v175;
      *(v166 + 51) = 2082;
      v176 = v185;
      v177 = v185 + *(v192 + 36) + *(v159 + 24);
      v178 = MessageIdentifierSet.debugDescription.getter(v187);
      v180 = v179;
      sub_10003EBBC(v176, type metadata accessor for DownloadTask);
      v181 = sub_10015BA6C(v178, v180, v205);

      *(v166 + 53) = v181;
      _os_log_impl(&_mh_execute_header, v164, v165, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Using cached body structure for message(s) %{public}s", v166, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_10003EBBC(v162, type metadata accessor for MailboxTaskLogger);

      sub_10003EBBC(v163, type metadata accessor for DownloadTask);
      sub_10003EBBC(v161, type metadata accessor for MailboxTaskLogger);
    }
  }
}

uint64_t sub_10003BAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v76 = a5;
  v77 = a4;
  v78 = a6;
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v70 - v15;
  __chkstk_darwin(v17);
  v19 = &v70 - v18;
  v20 = sub_10000C9C0(&qword_1005CDF88, &qword_1004CFFB8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v75 = (&v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v25 = &v70 - v24;
  __chkstk_darwin(v26);
  v81 = &v70 - v27;
  v28 = *(v6 + 80);
  v83 = *(v6 + 64);
  v84 = v28;
  v85 = *(v6 + 96);
  v86 = *(v6 + 112);
  v29 = type metadata accessor for DownloadTask(0);
  v30 = v6 + *(v29 + 40);
  v74 = v6 + *(v29 + 36);
  v31 = *(v74 + 16);

  v79 = a2;
  v80 = a3;
  v32 = sub_10003235C(0, a2, a3);
  v73 = v30;
  if (v32)
  {
    v33 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    (*(*(v33 - 8) + 56))(v25, 1, 1, v33);
    v34 = a1;
  }

  else
  {
    v72 = a1;
    v82 = v31;
    v35 = *(&v85 + 1);
    sub_100016D2C();
    v36 = sub_1004A7114();
    __chkstk_darwin(v36);
    *(&v70 - 2) = v30;
    *(&v70 - 1) = &v82;
    sub_1000DCDF4(v16, sub_10003EC68, v35, v19);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v37 = sub_1004A70C4();
    v38 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    v39 = v38;
    v40 = 1;
    if ((v37 & 1) == 0)
    {
      v41 = &v25[*(v38 + 48)];
      sub_10002A54C(v19, v25);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v42 = *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      v71 = v25;
      v43 = v41 + v42;
      sub_10002A54C(v19, v41);
      *v43 = &off_100598BF8;
      *(v43 + 8) = 0;
      *(v43 + 16) = 1;
      v25 = v71;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      v40 = 0;
    }

    (*(*(v39 - 8) + 56))(v25, v40, 1, v39);
    sub_100025F40(v19, &unk_1005D91B0, &unk_1004CF400);
    v44 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    v45 = *(v44 - 8);
    v46 = (*(v45 + 48))(v25, 1, v44);
    v34 = v72;
    if (v46 != 1)
    {

      v59 = v81;
      sub_100025FDC(v25, v81, &qword_1005CDF90, &qword_1004CFFC0);
      v60 = v44;
      v48 = v59;
      (*(v45 + 56))(v59, 0, 1, v60);
      goto LABEL_14;
    }
  }

  if (sub_10003235C(1, v79, v80))
  {

    v47 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    v48 = v81;
    (*(*(v47 - 8) + 56))(v81, 1, 1, v47);
  }

  else
  {
    sub_10003D680(v73, v31, v13);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v49 = sub_1004A70C4();
    v50 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    v51 = v50;
    if ((v49 & 1) == 0)
    {
      v52 = *(v50 + 48);
      v73 = v31;
      v53 = v13;
      v54 = v81 + v52;
      sub_10002A54C(v13, v81);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v55 = v34;
      v56 = v54 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      sub_10002A54C(v53, v54);
      *v56 = &off_100598C90;
      *(v56 + 8) = 0;
      *(v56 + 16) = 1;
      v34 = v55;
      v13 = v53;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
    }

    v57 = *(*(v51 - 8) + 56);
    v48 = v81;
    v57();

    sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
  }

  v58 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
  if ((*(*(v58 - 8) + 48))(v25, 1, v58) != 1)
  {
    sub_100025F40(v25, &qword_1005CDF88, &qword_1004CFFB8);
  }

LABEL_14:
  v61 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v48, 1, v61) == 1)
  {
    v64 = v75;
    sub_10003FE00(v79, v80, v76, v75);
    if (v63(v64, 1, v61) == 1)
    {
      sub_100040B64(v34, v79, v80, v77, v78);
      if (v63(v64, 1, v61) != 1)
      {
        sub_100025F40(v64, &qword_1005CDF88, &qword_1004CFFB8);
      }
    }

    else
    {
      v68 = v78;
      sub_100025FDC(v64, v78, &qword_1005CDF90, &qword_1004CFFC0);
      (*(v62 + 56))(v68, 0, 1, v61);
    }

    v69 = v81;
    result = v63(v81, 1, v61);
    if (result != 1)
    {
      return sub_100025F40(v69, &qword_1005CDF88, &qword_1004CFFB8);
    }
  }

  else
  {
    v65 = v48;
    v66 = v78;
    sub_100025FDC(v65, v78, &qword_1005CDF90, &qword_1004CFFC0);
    return (*(v62 + 56))(v66, 0, 1, v61);
  }

  return result;
}

uint64_t sub_10003C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v66 = type metadata accessor for MessageHeader();
  v61 = *(v66 - 8);
  v13 = *(v61 + 64);
  __chkstk_darwin(v66);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s19MessageHeaderStatusOMa(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  v65 = _s25MessageSectionsToDownloadVMa(0);
  v67 = *(v65 - 8);
  v21 = *(v67 + 64);
  __chkstk_darwin(v65);
  v23 = (&v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v6 + *(type metadata accessor for DownloadTask(0) + 36);
  v25 = *(v7 + 88);
  v26 = *(v7 + 9);
  v62 = *(v7 + 96);
  v60 = v26;
  v63 = a2;
  v64 = a4;
  v27 = sub_10004F60C(v25, v62, v26, a2, a4, a6);
  if ((~v27 & 0xFF00000000) != 0)
  {
    return v27;
  }

  v56 = a6;
  v57 = v25;
  v53 = a1;
  v54 = a3;
  result = _s18InProgressMessagesVMa(0);
  v29 = *(result + 32);
  v55 = v24;
  v30 = *(v24 + v29);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = v30 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v34 = (v61 + 48);
    while (v32 < *(v30 + 16))
    {
      v35 = (v33 + *(v67 + 72) * v32);
      sub_10003EB54(v35, v23, _s25MessageSectionsToDownloadVMa);
      sub_10003EB54(v23 + *(v65 + 20), v20, _s19MessageHeaderStatusOMa);
      v36 = *v34;
      if ((*v34)(v20, 3, v66))
      {
        sub_10003EBBC(v23, _s25MessageSectionsToDownloadVMa);
        result = sub_10003EBBC(v20, _s19MessageHeaderStatusOMa);
      }

      else
      {
        sub_10003EBBC(v20, _s19MessageHeaderStatusOMa);
        v37 = sub_10001EE3C(*v23 | &_mh_execute_header, v63, v64);
        result = sub_10003EBBC(v23, _s25MessageSectionsToDownloadVMa);
        if ((v37 & 1) == 0)
        {
          if (v32 < *(v30 + 16))
          {
            v38 = *v35;
            v39 = v35 + *(v65 + 20);
            v40 = v59;
            sub_10003EB54(v39, v59, _s19MessageHeaderStatusOMa);
            if (v36(v40, 3, v66))
            {
              sub_10003EBBC(v40, _s19MessageHeaderStatusOMa);
              goto LABEL_12;
            }

            v48 = v58;
            sub_10003EC80(v40, v58, type metadata accessor for MessageHeader);
            v49 = sub_10000C9C0(&qword_1005CDF80, &qword_1004CFFB0);
            swift_allocBox();
            v50 = *(v49 + 64);
            *v51 = v57;
            *(v51 + 8) = v62;
            *(v51 + 12) = v38;
            sub_10003EC80(v48, v51 + v50, type metadata accessor for MessageHeader);
            v44 = v38 | &_mh_execute_header;

            return v44;
          }

LABEL_20:
          __break(1u);
          return result;
        }
      }

      if (v31 == ++v32)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_12:
  v41 = v56;
  v42 = v57;
  v43 = v62;
  v44 = sub_100043BDC(v57, v62, v56);
  if ((~v44 & 0xFF00000000) == 0)
  {

    v45 = sub_10004A0B8(v53, v63, v54, v64, v41);
    if ((v45 & 0x100000000) != 0)
    {
    }

    else
    {
      v46 = v45;
      v47 = swift_allocObject();
      *(v47 + 16) = v42;
      *(v47 + 24) = v43;
      *(v47 + 28) = v60;
      *(v47 + 32) = v46;
      return v46 | 0x200000000;
    }
  }

  return v44;
}

uint64_t sub_10003C820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v30 = a1;
  v31 = &v26 - v7;
  v35 = 0;
  v8 = *(v2 + 88);
  v9 = *(v3 + 96);
  v10 = (a1 + 176);
  v11 = *(a1 + 176);
  v32 = v3;
  v33 = &v35;
  v12 = *(a1 + 168);
  v13 = *(a1 + 184);
  LODWORD(v14) = *(a1 + 192);
  v29 = v9;
  if (v14)
  {
    v34 = v12;
    sub_100020D10(v12, v11, v13, 1);
    sub_1000BDFC4(&v34, v8, v9, 0, sub_10003E6C4);
    sub_100020D58(v12, v11, v13, 1);
    v11 = 0;
    v13 = 0;
    v12 = v34;
    *(a1 + 168) = v34;
    *v10 = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 1;
    if (*(v3 + 112))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_100020D10(v12, v11, v13, 0);

    if (*(v3 + 112))
    {
      goto LABEL_7;
    }
  }

  v15 = *(type metadata accessor for DownloadTask(0) + 36);
  v27 = v14;
  v14 = v3 + v15;
  v16 = *(_s18InProgressMessagesVMa(0) + 40);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v26 = v14;
  LOBYTE(v14) = v27;
  if ((sub_1004A70C4() & 1) == 0)
  {
    sub_1000B55B8(*(v3 + 64), *(v3 + 72), v26 + v16, v28);
  }

LABEL_7:
  v17 = *(v3 + 104);

  v19 = v31;
  sub_1000B492C(v18);
  if ((v14 & 1) == 0)
  {
    return sub_100025F40(v19, &unk_1005D91B0, &unk_1004CF400);
  }

  v34 = v12;

  v20 = v29;
  sub_1000BBECC(&v34, v8, v29, v19);
  v21 = sub_100020D58(v12, v11, v13, 1);
  v22 = v8;
  v23 = v34;
  v24 = v30;
  *(v30 + 168) = v34;
  *v10 = 0;
  v10[1] = 0;
  *(v24 + 192) = 1;
  __chkstk_darwin(v21);
  *(&v26 - 2) = &v35;
  *(&v26 - 1) = v3;
  v34 = v23;

  sub_1000BE940(&v34, v22, v20, 0, sub_10003E6CC);
  sub_100025F40(v19, &unk_1005D91B0, &unk_1004CF400);
  result = sub_100020D58(v23, 0, 0, 1);
  *(v24 + 168) = v34;
  *v10 = 0;
  v10[1] = 0;
  *(v24 + 192) = 1;
  return result;
}

uint64_t sub_10003CB44(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v65 = a3;
  v63 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v61 = *(v63 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(v63);
  v60 = &v54[-v6];
  v57 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  v7 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v9 = &v54[-v8];
  v10 = type metadata accessor for MessagesPendingDownload();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v59 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v54[-v14];
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v54[-v18];
  v20 = *(a2 + 9);
  v62 = a2;
  v21 = *(a2 + 104);

  sub_1000B492C(v22);
  v58 = type metadata accessor for PendingPersistenceUpdates();
  v23 = *(v58 + 28);
  v64 = a1;
  v24 = a1 + v23;
  v25 = v24;
  v55 = v20;
  if (v20 == 1)
  {
    v25 = v24 + *(type metadata accessor for MessagesPendingDownloadPerPass() + 20);
  }

  v56 = v24;
  sub_10003EB54(v25, v15, type metadata accessor for MessagesPendingDownload);
  sub_10002A54C(v19, v9);
  v26 = MessageIdentifierSet.startIndex.getter(v16);
  v28 = v27;
  if (v26 != MessageIdentifierSet.endIndex.getter(v16) || v28 != v29)
  {
    do
    {
      MessageIdentifierSet.subscript.getter(v28, v16, &v67);
      v31 = v67;
      v26 = MessageIdentifierSet.index(_:offsetBy:)(v26, v28, 1);
      v28 = v32;
      v33 = *v15;
      v34 = sub_100067004(v31);
      if (v35)
      {
        v36 = v34;
        v37 = *v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *v15;
        v67 = *v15;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10013ADF0();
          v39 = v67;
        }

        sub_10013D534(v36, v39);
        *v15 = v39;
        v66 = v31;
        v40 = v15 + *(v10 + 20);
        MessageIdentifierSet.insert(_:)(&v67, &v66, v16);
      }
    }

    while (v26 != MessageIdentifierSet.endIndex.getter(v16) || v28 != v41);
  }

  v42 = &v9[*(v57 + 36)];
  *v42 = v26;
  v42[1] = v28;
  sub_100025F40(v9, &qword_1005CDA38, &unk_1004D14C0);
  sub_100025F40(v19, &unk_1005D91B0, &unk_1004CF400);
  if (v55)
  {
    v43 = type metadata accessor for MessagesPendingDownloadPerPass();
    v44 = v56;
    sub_10003E784(v15, v56 + *(v43 + 20));
    v45 = v44 + *(v43 + 20);
  }

  else
  {
    v45 = v56;
    sub_10003E784(v15, v56);
  }

  v46 = v45;
  v47 = v59;
  sub_10003EB54(v46, v59, type metadata accessor for MessagesPendingDownload);
  v48 = *v47;

  sub_10003EBBC(v47, type metadata accessor for MessagesPendingDownload);
  v49 = *(v48 + 16);

  v50 = v62 + *(type metadata accessor for DownloadTask(0) + 36);
  v51 = _s18InProgressMessagesVMa(0);
  v52 = *(v58 + 32);
  (*(v61 + 16))(v60, v50 + *(v51 + 36), v63);
  result = sub_1004A7104();
  *v65 = v49 < 0x20;
  return result;
}

uint64_t sub_10003CFE0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    if (*(a3 + 9))
    {
      v4 = 10;
    }

    else
    {
      v4 = 9;
    }

    sub_10013FC9C(v4);
    sub_100088568(&v40, v4);
  }

  v5 = a3 + *(type metadata accessor for DownloadTask(0) + 36);
  v6 = *(v5 + *(_s18InProgressMessagesVMa(0) + 44));
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v35 = v6;

  for (i = 0; v10; result = sub_10003E730(v37))
  {
    v14 = i;
LABEL_14:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(*(v35 + 48) + 4 * v16);
    v18 = *(v35 + 56) + 184 * v16;
    v20 = *(v18 + 32);
    v19 = *(v18 + 48);
    v21 = *v18;
    v37[1] = *(v18 + 16);
    v37[2] = v20;
    v37[0] = v21;
    v22 = *(v18 + 112);
    v24 = *(v18 + 64);
    v23 = *(v18 + 80);
    v37[6] = *(v18 + 96);
    v37[7] = v22;
    v37[4] = v24;
    v37[5] = v23;
    v26 = *(v18 + 144);
    v25 = *(v18 + 160);
    v27 = *(v18 + 128);
    v38 = *(v18 + 176);
    v37[9] = v26;
    v37[10] = v25;
    v37[8] = v27;
    v37[3] = v19;
    v28 = *(type metadata accessor for MailboxSyncState() + 80);
    v29 = *(v18 + 96);
    *&v39[116] = *(v18 + 112);
    *&v39[100] = v29;
    v30 = *(v18 + 64);
    *&v39[84] = *(v18 + 80);
    *&v39[68] = v30;
    v39[180] = *(v18 + 176);
    v31 = *(v18 + 144);
    *&v39[164] = *(v18 + 160);
    v32 = *(v18 + 128);
    *&v39[148] = v31;
    *&v39[132] = v32;
    v33 = *(v18 + 16);
    *&v39[4] = *v18;
    *&v39[20] = v33;
    v34 = *(v18 + 48);
    *&v39[36] = *(v18 + 32);
    *&v39[52] = v34;
    v40 = v17;
    v49 = *&v39[128];
    v50 = *&v39[144];
    v51[0] = *&v39[160];
    *(v51 + 13) = *&v39[173];
    v45 = *&v39[64];
    v46 = *&v39[80];
    v47 = *&v39[96];
    v48 = *&v39[112];
    v41 = *v39;
    v42 = *&v39[16];
    v43 = *&v39[32];
    v44 = *&v39[48];
    sub_10003E6D4(v37, v36);
    sub_10000FE90(&v40);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003D274()
{
  v5[8] = 0;
  sub_1004A6724(41);
  v6._object = 0x80000001004AA100;
  v6._countAndFlagsBits = 0xD000000000000023;
  sub_1004A5994(v6);
  *v5 = *(v0 + 9);
  sub_1004A6934();
  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  sub_1004A5994(v7);
  v1 = 65;
  if (*(v0 + 112) != 1)
  {
    v1 = 66;
  }

  if (*(v0 + 112))
  {
    v2._countAndFlagsBits = v1;
  }

  else
  {
    v2._countAndFlagsBits = 1919251285;
  }

  if (*(v0 + 112))
  {
    v3 = 0xE100000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1004A5994(v2);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  sub_1004A5994(v8);
  return *&v5[1];
}

uint64_t sub_10003D37C()
{
  if (qword_1005CCE28 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10003D3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_10003C310(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  return result;
}

uint64_t sub_10003D458(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4) == 2)
  {
    v5 = v4 + *(a4 + 36);
    return sub_100047070(*result);
  }

  return result;
}

Swift::Int sub_10003D4A4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  v3 = *(v0 + 13);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

void sub_10003D534()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 13);
  sub_1004A6EB4(*(v0 + 8) | (*(v0 + 8) << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1004A6EB4(v2);
}

Swift::Int sub_10003D5A8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  v3 = *(v0 + 13);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

BOOL sub_10003D634(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 12))
  {
    v3 = &_mh_execute_header;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 12))
  {
    v4 = &_mh_execute_header;
  }

  else
  {
    v4 = 0;
  }

  return sub_10003DE70(*a1, v3 | *(a1 + 2) | (*(a1 + 13) << 40), *a2, v4 | *(a2 + 8) | (*(a2 + 13) << 40));
}

uint64_t sub_10003D680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  v16 = *(v3 + 40);
  sub_100016D2C();
  sub_1004A7114();
  v22 = a1;
  sub_1000DCDF4(v12, sub_10003ECE8, v16, v15);
  v23 = a2;
  sub_1004A7114();
  v20 = a1;
  v21 = &v23;
  sub_1000DCDF4(v9, sub_10003EEA8, v16, v12);
  MessageIdentifierSet.subtracting(_:)(v12, v19);
  sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
  return sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_10003D844(uint64_t a1, uint64_t a2)
{
  if (BYTE4(a1) > 1u)
  {
    if (BYTE4(a1) == 2)
    {
      if (BYTE4(a2) == 2)
      {
        return a2 == a1;
      }
    }

    else if (a1)
    {
      if (BYTE4(a2) == 3 && a2 == 1)
      {
        return 1;
      }
    }

    else if (BYTE4(a2) == 3 && !a2)
    {
      return 1;
    }
  }

  else
  {
    if (!BYTE4(a1))
    {
      if (!BYTE4(a2))
      {
        return a2 == a1;
      }

      return 0;
    }

    if (BYTE4(a2) == 1)
    {
      return a2 == a1;
    }
  }

  return 0;
}

uint64_t sub_10003D8C0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v36 = _s18SectionDataRequestVMa();
  v3 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for DownloadTask.CommandID(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v36 - v16);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  v24 = sub_10000C9C0(&qword_1005CDF98, &qword_1004CFFC8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v36 - v26;
  v29 = *(v28 + 56);
  sub_10003EB54(a1, &v36 - v26, type metadata accessor for DownloadTask.CommandID);
  sub_10003EB54(v39, &v27[v29], type metadata accessor for DownloadTask.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10003EB54(v27, v20, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_17;
      }

      sub_100025FDC(&v27[v29], v8, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      v31 = sub_1004A7034();
      sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
      v32 = v20;
    }

    else
    {
      sub_10003EB54(v27, v23, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
LABEL_17:
        sub_100025F40(v27, &qword_1005CDF98, &qword_1004CFFC8);
LABEL_18:
        v31 = 0;
        return v31 & 1;
      }

      sub_100025FDC(&v27[v29], v11, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      v31 = sub_1004A7034();
      sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
      v32 = v23;
    }

    sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
LABEL_22:
    sub_10003EBBC(v27, type metadata accessor for DownloadTask.CommandID);
    return v31 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10003EB54(v27, v17, type metadata accessor for DownloadTask.CommandID);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_17;
    }

    v31 = *&v27[v29] == *v17;
    goto LABEL_22;
  }

  v33 = v38;
  sub_10003EB54(v27, v38, type metadata accessor for DownloadTask.CommandID);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10003EBBC(v33, _s18SectionDataRequestVMa);
    goto LABEL_17;
  }

  v34 = v37;
  sub_10003EC80(&v27[v29], v37, _s18SectionDataRequestVMa);
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0 || (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(v33 + *(v36 + 20)), *(v34 + *(v36 + 20))) & 1) == 0 || (sub_100102AF4(*(v33 + *(v36 + 24)), *(v34 + *(v36 + 24))) & 1) == 0)
  {
    sub_10003EBBC(v34, _s18SectionDataRequestVMa);
    sub_10003EBBC(v33, _s18SectionDataRequestVMa);
    sub_10003EBBC(v27, type metadata accessor for DownloadTask.CommandID);
    goto LABEL_18;
  }

  sub_10003EBBC(v34, _s18SectionDataRequestVMa);
  sub_10003EBBC(v33, _s18SectionDataRequestVMa);
  sub_10003EBBC(v27, type metadata accessor for DownloadTask.CommandID);
  v31 = 1;
  return v31 & 1;
}

BOOL sub_10003DE70(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 ^ a4;
  if (a2 != a4)
  {
    return 0;
  }

  v5 = *(result + 16);
  if (v5 != *(a3 + 16))
  {
    return 0;
  }

  if (v5)
  {
    v6 = result == a3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_11:
    if ((a2 & &_mh_execute_header) != 0)
    {
      v9 = 6581810;
    }

    else
    {
      v9 = 7631665;
    }

    if ((a4 & &_mh_execute_header) != 0)
    {
      v10 = 6581810;
    }

    else
    {
      v10 = 7631665;
    }

    if (v9 == v10)
    {
      swift_bridgeObjectRelease_n();
      return (v4 & 0xFF0000000000) == 0;
    }

    v11 = sub_1004A6D34();
    swift_bridgeObjectRelease_n();
    if (v11)
    {
      return (v4 & 0xFF0000000000) == 0;
    }

    return 0;
  }

  v7 = (result + 32);
  v8 = (a3 + 32);
  while (v5)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
    if (!--v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10003DF4C(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t sub_10003DF60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 14))
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

uint64_t sub_10003DFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 14) = 1;
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

    *(result + 14) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003E010(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s18InProgressMessagesVMa(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10003E154(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = _s18InProgressMessagesVMa(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10003E2A4()
{
  sub_10003E3DC(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
  if (v0 <= 0x3F)
  {
    _s18InProgressMessagesVMa(319);
    if (v1 <= 0x3F)
    {
      sub_10003E3DC(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003E3DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_10003E464()
{
  sub_10003E3DC(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v0 <= 0x3F)
  {
    _s18SectionDataRequestVMa();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_10003E530()
{
  result = qword_1005CDEB0;
  if (!qword_1005CDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDEB0);
  }

  return result;
}

uint64_t sub_10003E5CC(uint64_t a1)
{
  result = sub_10003E624(&qword_1005CDF70, type metadata accessor for DownloadTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003E624(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003E670()
{
  result = qword_1005CDF78;
  if (!qword_1005CDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDF78);
  }

  return result;
}

uint64_t sub_10003E784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UntaggedResponse(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + 104);
  v15 = *(type metadata accessor for DownloadTask(0) + 36);
  sub_10003EB54(a1, v13, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 20)
  {
    return sub_10003EBBC(v13, type metadata accessor for UntaggedResponse);
  }

  memcpy(v35, v13, sizeof(v35));
  if ((v35[12] & 1) == 0)
  {
    if (*(v14 + 16))
    {
      v16 = *&v35[8];
      v17 = sub_100067004(*&v35[8]);
      if (v18)
      {
        v19 = *(*(v14 + 56) + 16 * v17 + 9);
        v20 = *&v35[540];
        v21 = v35[544];
        v31 = *&v35[336];
        v32 = *&v35[352];
        v33 = *&v35[368];
        v34 = v35[384];
        v27 = *&v35[272];
        v28 = *&v35[288];
        v29 = *&v35[304];
        v30 = *&v35[320];
        v23 = *&v35[208];
        v24 = *&v35[224];
        v25 = *&v35[240];
        v26 = *&v35[256];
        if (sub_10003EC1C(&v23) == 1)
        {
          if ((v21 & 1) == 0)
          {
            sub_10004E67C(v16, v20, v19, a2, a3, a5);
            return sub_100025D5C(v35);
          }
        }

        else
        {
          v36[8] = v31;
          v36[9] = v32;
          v36[10] = v33;
          v37 = v34;
          v36[4] = v27;
          v36[5] = v28;
          v36[6] = v29;
          v36[7] = v30;
          v36[0] = v23;
          v36[1] = v24;
          v36[2] = v25;
          v36[3] = v26;
          if ((v21 & 1) == 0)
          {
            sub_10004DDC8(v16, v36, v20, a2, a3, a5);
            return sub_100025D5C(v35);
          }
        }

        sub_100045D7C(v16, *&v35[200], a5);
      }
    }
  }

  return sub_100025D5C(v35);
}

void sub_10003EA2C(unint64_t a1, uint64_t a2)
{
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0xD && (*(v2 + 96) | (*(v2 + 96) << 32)) == (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
    v5 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    if (sub_1000FFC98(*(v2 + 88), *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
    {
      if (*(v2 + 9))
      {
        v8 = 6581810;
      }

      else
      {
        v8 = 7631665;
      }

      if (v4)
      {
        v9 = 6581810;
      }

      else
      {
        v9 = 7631665;
      }

      if (v8 == v9)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v10 = sub_1004A6D34();
        swift_bridgeObjectRelease_n();
        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      if (*(*(v2 + 104) + 16))
      {
        v11 = v2;
        v12 = *(v2 + 104);
        sub_100067004(v5);
        if (v13)
        {
          v14 = v11 + *(type metadata accessor for DownloadTask(0) + 36);
          sub_100043D14(v5, v6, v7, a2);
        }
      }
    }
  }
}

uint64_t sub_10003EB54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003EBBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003EC1C(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

uint64_t sub_10003EC30()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_10003EC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003ED30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) == 0)
  {
    v12 = a2;
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    result = MessageIdentifierSet.contains(_:)(&v12, v7);
    if ((result & 1) == 0)
    {
      if (!*(a5 + 16) || (result = sub_100067004(a2), (v9 & 1) == 0))
      {
        v10 = a2;
        return MessageIdentifierSet.insert(_:)(v11, &v10, v7);
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadTask.ActionID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for DownloadTask.ActionID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003EE68(uint64_t a1)
{
  if (*(a1 + 4) <= 2u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_10003EE80(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 4) = a2;
  return result;
}

Swift::Int sub_10003EEC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1004A6E94();
  if (v2 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }

  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

void sub_10003EF48()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v2 = *v0;
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v2);
  }

  sub_1004A6EB4(v1);
}

Swift::Int sub_10003EFAC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1004A6E94();
  if (v2 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }

  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

uint64_t sub_10003F02C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_10003F310(*a1, v3 | *(a1 + 8), *a2, v4 | *(a2 + 8));
}

Swift::Int sub_10003F070()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6ED4(v5);
  sub_1004A6EB4(v2 | (v2 << 32));
  sub_10009296C(v7, v3);
  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

void sub_10003F108(__int128 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 16);
  sub_1004A6EB4(*(v1 + 8));
  sub_1004A6ED4(v6);
  sub_1004A6EB4(v3 | (v3 << 32));
  sub_10009296C(a1, v4);
  sub_1004A6EB4(v5);
}

Swift::Int sub_10003F178()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6ED4(v5);
  sub_1004A6EB4(v2 | (v2 << 32));
  sub_10009296C(v7, v3);
  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

unint64_t sub_10003F20C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10003F350(v5, v7) & 1;
}

uint64_t sub_10003F278(uint64_t a1, int *a2)
{
  if (*(a2 + 16) == 1)
  {
    v2 = *a2;
    v7 = *a2;
    v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    result = MessageIdentifierSet.contains(_:)(&v7, v3);
    if ((result & 1) == 0)
    {
      v5 = v2;
      return MessageIdentifierSet.insert(_:)(v6, &v5, v3);
    }
  }

  return result;
}

uint64_t sub_10003F310(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }

    return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
  }

  result = 0;
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if ((a4 & 1) == 0 && v6 == a1)
  {
    return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
  }

  return result;
}

uint64_t *sub_10003F350(uint64_t *result, uint64_t *a2)
{
  if (result[1] != a2[1])
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v5 = result[3];
  if (v4)
  {
    v6 = v2 == v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_11:
    if (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)))
    {
      v9 = result;
      if (sub_1000FFC98(result[3], a2[3]) & 1) != 0 && (sub_100115D34(v9[5], a2[5]))
      {
        return (*(v9 + 48) == *(a2 + 48));
      }
    }

    return 0;
  }

  v7 = (v2 + 32);
  v8 = (v3 + 32);
  while (v4)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003F440(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  v37 = *(result + 49);
  LOBYTE(v9) = *(result + 48);
  v10 = *a3;
  result = sub_100067004(v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_1000C41D8(v15, i & 1);
    v17 = *a3;
    result = sub_100067004(v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1004A6E24();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = v7;
    v22 = v19[7] + 16 * result;
    *v22 = v8;
    *(v22 + 8) = v9;
    *(v22 + 9) = v37;
    v23 = v19[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_10013AC88();
  result = v21;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = v19[7] + 16 * result;
  *v20 = v8;
  *(v20 + 8) = v9;
  *(v20 + 9) = v37;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 73); ; i += 24)
    {
      v6 = *(i - 17);
      v9 = *(i - 9);
      v8 = *i;
      v3 = *(i - 1);
      v26 = *a3;
      result = sub_100067004(v6);
      v28 = v26[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        break;
      }

      LODWORD(v7) = v27;
      if (v26[3] < v30)
      {
        sub_1000C41D8(v30, 1);
        v31 = *a3;
        result = sub_100067004(v6);
        if ((v7 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v7)
      {
        v25 = v33[7] + 16 * result;
        *v25 = v9;
        *(v25 + 8) = v3;
        *(v25 + 9) = v8;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        *(v33[6] + 4 * result) = v6;
        v34 = v33[7] + 16 * result;
        *v34 = v9;
        *(v34 + 8) = v3;
        *(v34 + 9) = v8;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_10003F6A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a4;
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 8);
  v9 = a1[3];
  v33 = *(a1 + 8);
  v10 = *(a2 + 16);
  if (v10)
  {
    v26 = a1[3];
    v27 = *(a1 + 8);
    v28 = a1[1];
    v29 = *a1;
    v34 = _swiftEmptyArrayStorage;
    sub_100091D68(0, v10, 0);
    v11 = a2;
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 3 * v14;
    do
    {
      v16 = *(v11 + v12 + 32);
      v17 = *(v11 + v12 + 40);
      v18 = *(v11 + v12 + 48);
      v19 = *(v11 + v12 + 49);
      v34 = v13;
      v20 = v13[3];
      v21 = v14 + 1;
      if (v14 >= v20 >> 1)
      {
        sub_100091D68((v20 > 1), v14 + 1, 1);
        v11 = a2;
        v13 = v34;
      }

      v13[2] = v21;
      v22 = &v13[v15 + v12 / 8];
      *(v22 + 8) = v16;
      v22[5] = v17;
      *(v22 + 48) = v18;
      *(v22 + 49) = v19;
      v12 += 24;
      v14 = v21;
      --v10;
    }

    while (v10);

    v4 = a3;
    v6 = v29;
    v5 = a4;
    v7 = v28;
    v8 = v27;
    v9 = v26;
    if (v13[2])
    {
      goto LABEL_7;
    }

LABEL_9:
    v23 = &_swiftEmptyDictionarySingleton;
    goto LABEL_10;
  }

  v13 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_10000C9C0(&qword_1005CDFA0, &qword_1004CFFE0);
  v23 = sub_1004A6A74();
LABEL_10:
  v34 = v23;
  sub_10003F440(v13, 1, &v34);

  v25 = v34;
  *v5 = v6;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v33;
  *(v5 + 40) = v25;
  *(v5 + 48) = v4;
  return result;
}

__n128 sub_10003F898(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003F8B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10003F8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s5BatchV7MessageVwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s5BatchV7MessageVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s5BatchV7MessageVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10003FA0C()
{
  result = qword_1005CDFA8;
  if (!qword_1005CDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDFA8);
  }

  return result;
}

unint64_t sub_10003FA64()
{
  result = qword_1005CDFB0;
  if (!qword_1005CDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDFB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowOfInterestSizes.MailboxType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WindowOfInterestSizes.MailboxType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003FC0C()
{
  result = qword_1005CDFB8;
  if (!qword_1005CDFB8)
  {
    sub_10000DEFC(&qword_1005CDFC0, qword_1004D0118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDFB8);
  }

  return result;
}

unint64_t sub_10003FC74()
{
  result = qword_1005CDFC8;
  if (!qword_1005CDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDFC8);
  }

  return result;
}

uint64_t sub_10003FCC8(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v24 = _swiftEmptyArrayStorage;
  sub_100091E08(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v19 = *i;
    a1(&v20, &v19);
    if (v3)
    {
      break;
    }

    v9 = v20;
    v10 = v21;
    v11 = v23;
    v12 = v22;
    v24 = v5;
    v14 = v5[2];
    v13 = v5[3];
    if (v14 >= v13 >> 1)
    {
      v17 = v21;
      v18 = v20;
      sub_100091E08((v13 > 1), v14 + 1, 1);
      v10 = v17;
      v9 = v18;
      v5 = v24;
    }

    v5[2] = v14 + 1;
    v15 = &v5[5 * v14];
    *(v15 + 2) = v9;
    *(v15 + 3) = v10;
    *(v15 + 68) = (v12 | (v11 << 32)) >> 32;
    *(v15 + 16) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003FE00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, _DWORD *a4@<X8>)
{
  v97 = a3;
  v105 = a1;
  v106 = a2;
  v103 = a4;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v99 = &v92 - v7;
  v94 = type metadata accessor for MailboxTaskLogger(0);
  v8 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v101 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v92 - v11;
  v107 = type metadata accessor for DownloadTask.CommandID(0);
  v12 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v104 = (&v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = type metadata accessor for MessageHeader();
  v14 = *(v115 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v115);
  v102 = (&v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = sub_10000C9C0(&qword_1005CE1F8, &qword_1004D0918);
  v17 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v19 = &v92 - v18;
  v20 = _s19MessageHeaderStatusOMa(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v100 = (&v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v108 = &v92 - v24;
  __chkstk_darwin(v25);
  v114 = &v92 - v26;
  v27 = _s25MessageSectionsToDownloadVMa(0);
  v119 = *(v27 - 8);
  v28 = *(v119 + 64);
  __chkstk_darwin(v27);
  v30 = (&v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = *(_s18InProgressMessagesVMa(0) + 32);
  v96 = v4;
  v31 = *(v4 + v95);
  v118 = *(v31 + 16);
  if (!v118)
  {
LABEL_29:
    v66 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    return (*(*(v66 - 8) + 56))(v103, 1, 1, v66);
  }

  v32 = 0;
  v121 = v31;
  v122 = 0;
  v33 = &v124;
  v93 = (*(v119 + 80) + 32) & ~*(v119 + 80);
  v117 = v31 + v93;
  v110 = v19;
  v111 = (v14 + 56);
  v113 = (v14 + 48);
  v120 = v30;
  while (1)
  {
    if (v32 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v116 = (*(v119 + 72) * v32);
    v34 = sub_100050EB8(&v116[v117], v30, _s25MessageSectionsToDownloadVMa);
    v19 = v27;
    v4 = *(v30 + *(v27 + 24));
    v35 = *(v4 + 2);
    if (v35)
    {
      break;
    }

LABEL_12:
    v4 = &v92;
    v27 = v19;
    v30 = v120;
    v49 = *(v120 + *(v19 + 7));
    *&v124 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v34);
    *(&v92 - 2) = &v124;
    v19 = v122;
    v51 = sub_1000CC5CC(sub_1000517B4, (&v92 - 4), v50);
    v122 = v19;
    v31 = v121;
    if (v51)
    {
LABEL_4:
      sub_100050F20(v30, _s25MessageSectionsToDownloadVMa);
    }

    else
    {
      v52 = *(v27 + 20);
      v53 = v30;
      v54 = v114;
      v14 = v115;
      v109 = *v111;
      v109(v114, 2, 3, v115);
      v55 = *(v112 + 48);
      v56 = v53 + v52;
      v19 = v110;
      sub_100050EB8(v56, v110, _s19MessageHeaderStatusOMa);
      sub_100050EB8(v54, &v19[v55], _s19MessageHeaderStatusOMa);
      v4 = *v113;
      v57 = (*v113)(v19, 3, v14);
      if (v57 > 1)
      {
        if (v57 == 2)
        {
          sub_100050F20(v114, _s19MessageHeaderStatusOMa);
          v59 = v4(&v19[v55], 3, v115);
          v30 = v120;
          if (v59 != 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_100050F20(v114, _s19MessageHeaderStatusOMa);
          v61 = v4(&v19[v55], 3, v115);
          v30 = v120;
          if (v61 != 3)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v14 = v108;
        if (v57)
        {
          sub_100050F20(v114, _s19MessageHeaderStatusOMa);
          v60 = v4(&v19[v55], 3, v115);
          v30 = v120;
          if (v60 != 1)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_100050EB8(v19, v108, _s19MessageHeaderStatusOMa);
          v58 = v4(&v19[v55], 3, v115);
          v30 = v120;
          if (v58)
          {
            sub_100050F20(v114, _s19MessageHeaderStatusOMa);
            sub_100050F20(v14, type metadata accessor for MessageHeader);
LABEL_23:
            sub_100025F40(v19, &qword_1005CE1F8, &qword_1004D0918);
            v62 = _s25MessageSectionsToDownloadVMa;
            v63 = v30;
LABEL_24:
            sub_100050F20(v63, v62);
            v31 = v121;
            goto LABEL_5;
          }

          v4 = v102;
          sub_100050F80(&v19[v55], v102, type metadata accessor for MessageHeader);
          v64 = static MessageHeader.== infix(_:_:)();
          sub_100050F20(v4, type metadata accessor for MessageHeader);
          sub_100050F20(v114, _s19MessageHeaderStatusOMa);
          sub_100050F20(v14, type metadata accessor for MessageHeader);
          if ((v64 & 1) == 0)
          {
            sub_100050F20(v30, _s25MessageSectionsToDownloadVMa);
            v62 = _s19MessageHeaderStatusOMa;
            v63 = v19;
            goto LABEL_24;
          }
        }
      }

      sub_100050F20(v19, _s19MessageHeaderStatusOMa);
      v4 = v104;
      *v104 = *v30;
      swift_storeEnumTagMultiPayload();
      v65 = sub_100111C04(v4, v105, v106);
      sub_100050F20(v4, type metadata accessor for DownloadTask.CommandID);
      sub_100050F20(v30, _s25MessageSectionsToDownloadVMa);
      v31 = v121;
      if ((v65 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_5:
    if (++v32 == v118)
    {
      goto LABEL_29;
    }
  }

  v27 = 0;
  v14 = v4 + 32;
  while (v27 < *(v4 + 2))
  {
    v36 = *v14;
    v37 = *(v14 + 32);
    v125 = *(v14 + 16);
    v126 = v37;
    v124 = v36;
    v38 = *(v14 + 48);
    v39 = *(v14 + 64);
    v40 = *(v14 + 96);
    v129 = *(v14 + 80);
    v130 = v40;
    v127 = v38;
    v128 = v39;
    v41 = *(v14 + 112);
    v42 = *(v14 + 128);
    v43 = *(v14 + 160);
    v133 = *(v14 + 144);
    v134 = v43;
    v131 = v41;
    v132 = v42;
    v44 = *(v14 + 176);
    v45 = *(v14 + 192);
    v46 = *(v14 + 208);
    *(v137 + 9) = *(v14 + 217);
    v136 = v45;
    v137[0] = v46;
    v135 = v44;
    v31 = *(&v125 + 1);
    sub_100050408(&v124, v123);

    v48 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v47, _swiftEmptyArrayStorage);

    v34 = sub_100050440(&v124);
    if (v48)
    {
      v27 = v19;
      v30 = v120;
      v31 = v121;
      goto LABEL_4;
    }

    ++v27;
    v14 += 240;
    if (v35 == v27)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  if (v32 >= *(v31 + 16))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = v116;
  LODWORD(v33) = *&v116[v117];
  v4 = v100;
  v109(v100, 3, 3, v115);
  result = swift_isUniquelyReferenced_nonNull_native();
  v14 = v101;
  if (result)
  {
    goto LABEL_33;
  }

LABEL_40:
  result = sub_10013987C(v31);
  v31 = result;
LABEL_33:
  if (v32 >= *(v31 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1000511B8(v4, &v19[v31 + v93 + *(v27 + 20)]);
    *(v96 + v95) = v31;
    v68 = v97;
    v69 = v98;
    sub_100050EB8(v97, v98, type metadata accessor for MailboxTaskLogger);
    sub_100050EB8(v68, v14, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v70 = sub_1004A4A54();
    v71 = sub_1004A6004();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v123[0] = swift_slowAlloc();
      *v72 = 68159491;
      LODWORD(v122) = v33;
      *(v72 + 4) = 2;
      *(v72 + 8) = 256;
      v73 = v94;
      v74 = v14;
      v75 = v14 + *(v94 + 20);
      *(v72 + 10) = *v75;
      *(v72 + 11) = 2082;
      v76 = v69 + *(v73 + 20);
      *(v72 + 13) = sub_10015BA6C(*(v76 + 8), *(v76 + 16), v123);
      *(v72 + 21) = 1040;
      *(v72 + 23) = 2;
      *(v72 + 27) = 512;
      LOWORD(v75) = *(v75 + 24);
      sub_100050F20(v74, type metadata accessor for MailboxTaskLogger);
      *(v72 + 29) = v75;
      *(v72 + 31) = 2160;
      *(v72 + 33) = 0x786F626C69616DLL;
      *(v72 + 41) = 2085;
      v77 = *(v76 + 32);
      LODWORD(v76) = *(v76 + 40);

      sub_100050F20(v69, type metadata accessor for MailboxTaskLogger);
      *&v124 = v77;
      DWORD2(v124) = v76;
      v78 = sub_1004A5824();
      v80 = sub_10015BA6C(v78, v79, v123);
      LODWORD(v33) = v122;

      *(v72 + 43) = v80;
      *(v72 + 51) = 1024;
      *(v72 + 53) = v33;
      _os_log_impl(&_mh_execute_header, v70, v71, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Fetching headers for message %u", v72, 0x39u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100050F20(v14, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v69, type metadata accessor for MailboxTaskLogger);
    }

    v81 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
    v82 = v103;
    v83 = v103 + *(v81 + 48);
    *v103 = v33;
    swift_storeEnumTagMultiPayload();
    LODWORD(v124) = v33;
    v84 = sub_100016948();
    v85 = v99;
    MessageIdentifierSet.init(_:)(&v124, &type metadata for UID, v84);
    sub_10000C9C0(&qword_1005CE240, &unk_100509A40);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1004D01D0;
    *(v86 + 32) = 7;
    *(v86 + 40) = 0;
    *(v86 + 48) = 0;
    *(v86 + 56) = 0;
    *(v86 + 68) = -64;
    *(v86 + 64) = 0;
    v87 = SectionSpecifier.header.unsafeMutableAddressor();
    v89 = *v87;
    v88 = v87[1];
    v90 = *(v87 + 16);
    *(v86 + 72) = 1;
    *(v86 + 80) = v89;
    *(v86 + 88) = v88;
    *(v86 + 96) = v90;
    *(v86 + 108) = 33;
    *(v86 + 104) = 0;
    v91 = v83 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
    sub_100025FDC(v85, v83, &unk_1005D91B0, &unk_1004CF400);
    *v91 = v86;
    *(v91 + 8) = 0;
    *(v91 + 16) = 1;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v81 - 8) + 56))(v82, 0, 1, v81);

    return sub_100051190(v88, v90);
  }

  return result;
}

uint64_t sub_100040B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v205 = a5;
  v229 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v232 = *(v229 - 8);
  v10 = *(v232 + 64);
  __chkstk_darwin(v229);
  v202 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v204 = &v194 - v13;
  __chkstk_darwin(v14);
  v223 = &v194 - v15;
  v228 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v16 = *(*(v228 - 8) + 64);
  __chkstk_darwin(v228);
  v206 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v225 = &v194 - v19;
  v20 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v207 = &v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v224 = &v194 - v24;
  v216 = _s25MessageSectionsToDownloadVMa(0);
  v203 = *(v216 - 8);
  v25 = *(v203 + 64);
  __chkstk_darwin(v216);
  v210 = (&v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v201 = (&v194 - v28);
  __chkstk_darwin(v29);
  v233 = (&v194 - v30);
  __chkstk_darwin(v31);
  v221 = (&v194 - v32);
  v33 = sub_10000C9C0(&qword_1005CE238, &unk_1004D0960);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v199 = &v194 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v196 = &v194 - v37;
  __chkstk_darwin(v38);
  v197 = &v194 - v39;
  __chkstk_darwin(v40);
  v209 = &v194 - v41;
  __chkstk_darwin(v42);
  v198 = &v194 - v43;
  __chkstk_darwin(v44);
  v208 = &v194 - v45;
  __chkstk_darwin(v46);
  v214 = &v194 - v47;
  __chkstk_darwin(v48);
  v50 = &v194 - v49;
  __chkstk_darwin(v51);
  v213 = &v194 - v52;
  __chkstk_darwin(v53);
  v55 = &v194 - v54;
  __chkstk_darwin(v56);
  v58 = &v194 - v57;
  v59 = *(v5 + *(_s18InProgressMessagesVMa(0) + 32));
  v222 = a1;
  v236 = a3;
  sub_100051E04(a3, v59, v55);
  v60 = _s18SectionDataRequestVMa();
  v61 = *(v60 - 8);
  v234 = *(v61 + 48);
  v235 = v61 + 48;
  if (v234(v55, 1, v60) != 1)
  {
    sub_100050F80(v55, v58, _s18SectionDataRequestVMa);
    (*(v61 + 56))(v58, 0, 1, v60);
LABEL_54:
    if (v234(v58, 1, v60) == 1)
    {
      sub_100025F40(v58, &qword_1005CE238, &unk_1004D0960);
      v183 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
      return (*(*(v183 - 8) + 56))(v205, 1, 1, v183);
    }

    else
    {
      v185 = sub_10000C9C0(&qword_1005CDF90, &qword_1004CFFC0);
      v186 = v205;
      v187 = v205 + *(v185 + 48);
      *&v265 = &off_100598D28;
      v188 = *&v58[*(v60 + 24)];
      __chkstk_darwin(v185);
      *(&v194 - 2) = v58;
      v190 = sub_10003FCC8(sub_100051794, (&v194 - 4), v189);
      sub_1000818E8(v190);
      sub_100050EB8(v58, v186, _s18SectionDataRequestVMa);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v191 = v202;
      sub_10000E268(v58, v202, &qword_1005CD1D0, &unk_1004CF2C0);
      v192 = v265;
      v193 = v187 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      sub_10000E268(v191, v187, &unk_1005D91B0, &unk_1004CF400);
      *v193 = v192;
      *(v193 + 8) = 0;
      *(v193 + 16) = 1;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      sub_100025F40(v191, &unk_1005D91B0, &unk_1004CF400);
      sub_100050F20(v58, _s18SectionDataRequestVMa);
      return (*(*(v185 - 8) + 56))(v186, 0, 1, v185);
    }
  }

  v194 = v55;
  v200 = v58;
  v62 = *(v59 + 16);
  v226 = (v232 + 48);
  v227 = (v232 + 56);
  v232 = v61 + 56;
  swift_bridgeObjectRetain_n();
  v217 = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v230 = v60;
  v215 = v62;
  v218 = a4;
  v195 = v59;
  if (!v62)
  {
LABEL_28:
    v121 = *(v59 + 16);
    if (v215 == v121)
    {

      (*v232)(v200, 1, 1, v60);
    }

    else
    {
      if (v215 >= v121)
      {
        goto LABEL_59;
      }

      v122 = v59 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v215;
      v123 = *(v122 + *(v216 + 24));
      sub_100050EB8(v122, v201, _s25MessageSectionsToDownloadVMa);
      sub_100050EB8(v122, v210, _s25MessageSectionsToDownloadVMa);
      v124 = *(v123 + 2);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v233 = v123;
      v125 = 0;
      if (v124)
      {
        v126 = v123 + 10;
        while (1)
        {
          v127 = *(v126 - 8);
          v128 = *(v126 + 24);
          v266 = *(v126 + 8);
          v267 = v128;
          v265 = v127;
          v129 = *(v126 + 40);
          v130 = *(v126 + 56);
          v131 = *(v126 + 88);
          v270 = *(v126 + 72);
          v271 = v131;
          v268 = v129;
          v269 = v130;
          v132 = *(v126 + 104);
          v133 = *(v126 + 120);
          v134 = *(v126 + 152);
          v274 = *(v126 + 136);
          v275 = v134;
          v272 = v132;
          v273 = v133;
          v135 = *(v126 + 168);
          v136 = *(v126 + 184);
          v137 = *(v126 + 200);
          *(v278 + 9) = *(v126 + 209);
          v277 = v136;
          v278[0] = v137;
          v276 = v135;
          v138 = *v210;
          v139 = v126[1];
          v278[2] = *v126;
          v279[0] = v139;
          *(v279 + 15) = *(v126 + 31);
          v140 = *(&v266 + 1);
          sub_100050408(&v265, &v251);

          v141 = sub_100053688(v138, v140, v236);

          v142 = sub_100052E1C(1, v141);

          if (*(v142 + 16))
          {
            LODWORD(v251) = v138;
            v143 = sub_100016948();

            v144 = v206;
            MessageIdentifierSet.init(_:)(&v251, &type metadata for UID, v143);
            if (MessageIdentifierSet.count.getter() <= 0)
            {
              sub_100025F40(v144, &unk_1005D91B0, &unk_1004CF400);
              v147 = 1;
              v146 = v207;
            }

            else
            {
              v145 = v204;
              sub_100025FDC(v144, v204, &unk_1005D91B0, &unk_1004CF400);
              v146 = v207;
              sub_100025FDC(v145, v207, &qword_1005CD1D0, &unk_1004CF2C0);
              v147 = 0;
            }

            v150 = v229;
            (*v227)(v146, v147, 1, v229);
            if ((*v226)(v146, 1, v150) == 1)
            {
              goto LABEL_63;
            }

            v151 = v146;
            v148 = v209;
            sub_100025FDC(v151, v209, &qword_1005CD1D0, &unk_1004CF2C0);
            v149 = v230;
            *(v148 + *(v230 + 20)) = v140;
            *(v148 + *(v149 + 24)) = v142;
            (*v232)(v148, 0, 1, v149);
          }

          else
          {
            v148 = v209;
            v149 = v230;
            (*v232)(v209, 1, 1, v230);
          }

          sub_100050440(&v265);
          v152 = v234(v148, 1, v149);
          sub_100025F40(v148, &qword_1005CE238, &unk_1004D0960);
          if (v152 != 1)
          {
            break;
          }

          ++v125;
          v126 += 15;
          if (v124 == v125)
          {
            v125 = v124;
            break;
          }
        }

        v60 = v230;
        v123 = v233;
      }

      else
      {
        v60 = v230;
      }

      v153 = *(v123 + 2);
      if (v125 == v153)
      {

        sub_100050F20(v201, _s25MessageSectionsToDownloadVMa);
        v154 = *v232;
        v155 = v198;
        (*v232)(v198, 1, 1, v60);

        v156 = v199;
      }

      else
      {
        if (v125 >= v153)
        {
          goto LABEL_60;
        }

        v157 = &v123[60 * v125];
        v158 = *(v157 + 2);
        v159 = *(v157 + 4);
        v252 = *(v157 + 3);
        v253 = v159;
        v251 = v158;
        v160 = *(v157 + 5);
        v161 = *(v157 + 6);
        v162 = *(v157 + 8);
        v256 = *(v157 + 7);
        v257 = v162;
        v254 = v160;
        v255 = v161;
        v163 = *(v157 + 9);
        v164 = *(v157 + 10);
        v165 = *(v157 + 12);
        v260 = *(v157 + 11);
        v261 = v165;
        v258 = v163;
        v259 = v164;
        v166 = *(v157 + 13);
        v167 = *(v157 + 14);
        v168 = *(v157 + 15);
        *(v264 + 9) = *(v157 + 249);
        v263 = v167;
        v264[0] = v168;
        v262 = v166;
        v169 = *(v157 + 15);
        v249 = *(v157 + 14);
        v250[0] = v169;
        *(v250 + 9) = *(v157 + 249);
        v170 = *(v157 + 11);
        v245 = *(v157 + 10);
        v246 = v170;
        v171 = *(v157 + 13);
        v247 = *(v157 + 12);
        v248 = v171;
        v172 = *(v157 + 7);
        v241 = *(v157 + 6);
        v242 = v172;
        v173 = *(v157 + 9);
        v243 = *(v157 + 8);
        v244 = v173;
        v174 = *(v157 + 3);
        v237 = *(v157 + 2);
        v238 = v174;
        v175 = *(v157 + 5);
        v239 = *(v157 + 4);
        v240 = v175;
        sub_100050408(&v251, &v265);
        v176 = v197;
        v177 = v201;
        sub_100052950(&v237, v236, v201, v197);

        sub_100050F20(v177, _s25MessageSectionsToDownloadVMa);
        v277 = v249;
        v278[0] = v250[0];
        *(v278 + 9) = *(v250 + 9);
        v273 = v245;
        v274 = v246;
        v275 = v247;
        v276 = v248;
        v269 = v241;
        v270 = v242;
        v271 = v243;
        v272 = v244;
        v265 = v237;
        v266 = v238;
        v267 = v239;
        v268 = v240;
        sub_100050440(&v265);
        v178 = v196;
        sub_10000E268(v176, v196, &qword_1005CE238, &unk_1004D0960);
        if (v234(v178, 1, v60) == 1)
        {
          goto LABEL_65;
        }

        v155 = v198;
        sub_100050F80(v178, v198, _s18SectionDataRequestVMa);
        sub_100025F40(v176, &qword_1005CE238, &unk_1004D0960);
        v154 = *v232;
        (*v232)(v155, 0, 1, v60);

        v156 = v199;
      }

      sub_100050F20(v210, _s25MessageSectionsToDownloadVMa);

      sub_10000E268(v155, v156, &qword_1005CE238, &unk_1004D0960);
      if (v234(v156, 1, v60) == 1)
      {
        goto LABEL_64;
      }

      v179 = v156;
      v180 = v200;
      sub_100050F80(v179, v200, _s18SectionDataRequestVMa);
      sub_100025F40(v155, &qword_1005CE238, &unk_1004D0960);
      v154(v180, 0, 1, v60);
    }

    v181 = v194;
    v182 = v234(v194, 1, v60);
    v58 = v200;
    if (v182 != 1)
    {
      sub_100025F40(v181, &qword_1005CE238, &unk_1004D0960);
    }

    goto LABEL_54;
  }

  v63 = 0;
  v212 = v59 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
  v211 = *(v203 + 72);
  while (1)
  {
    v219 = v63;
    v64 = v212 + v211 * v63;
    v65 = *(v64 + *(v216 + 24));
    sub_100050EB8(v64, v221, _s25MessageSectionsToDownloadVMa);
    sub_100050EB8(v64, v233, _s25MessageSectionsToDownloadVMa);
    v66 = *(v65 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v231 = v66;
    v220 = v65;
    v67 = 0;
    if (v66)
    {
      v68 = (v65 + 40);
      while (1)
      {
        v69 = *(v68 - 8);
        v70 = *(v68 + 24);
        v266 = *(v68 + 8);
        v267 = v70;
        v265 = v69;
        v71 = *(v68 + 40);
        v72 = *(v68 + 56);
        v73 = *(v68 + 88);
        v270 = *(v68 + 72);
        v271 = v73;
        v268 = v71;
        v269 = v72;
        v74 = *(v68 + 104);
        v75 = *(v68 + 120);
        v76 = *(v68 + 152);
        v274 = *(v68 + 136);
        v275 = v76;
        v272 = v74;
        v273 = v75;
        v77 = *(v68 + 168);
        v78 = *(v68 + 184);
        v79 = *(v68 + 200);
        *(v278 + 9) = *(v68 + 209);
        v277 = v78;
        v278[0] = v79;
        v276 = v77;
        v80 = *v233;
        v81 = v68[1];
        v279[2] = *v68;
        v280[0] = v81;
        *(v280 + 15) = *(v68 + 31);
        v82 = *(&v266 + 1);
        sub_100050408(&v265, &v251);

        v83 = sub_100053688(v80, v82, v236);

        v84 = sub_100052E1C(1, v83);

        if (*(v84 + 16))
        {
          LODWORD(v251) = v80;
          v85 = sub_100016948();

          v86 = v225;
          MessageIdentifierSet.init(_:)(&v251, &type metadata for UID, v85);
          if (MessageIdentifierSet.count.getter() <= 0)
          {
            sub_100025F40(v86, &unk_1005D91B0, &unk_1004CF400);
            v89 = 1;
            v88 = v224;
          }

          else
          {
            v87 = v223;
            sub_100025FDC(v86, v223, &unk_1005D91B0, &unk_1004CF400);
            v88 = v224;
            sub_100025FDC(v87, v224, &qword_1005CD1D0, &unk_1004CF2C0);
            v89 = 0;
          }

          v90 = v229;
          (*v227)(v88, v89, 1, v229);
          v91 = (*v226)(v88, 1, v90) == 1;
          v92 = v88;
          v60 = v230;
          if (v91)
          {
            goto LABEL_61;
          }

          sub_100025FDC(v92, v50, &qword_1005CD1D0, &unk_1004CF2C0);
          *&v50[*(v60 + 20)] = v82;
          *&v50[*(v60 + 24)] = v84;
          (*v232)(v50, 0, 1, v60);
        }

        else
        {
          v60 = v230;
          (*v232)(v50, 1, 1, v230);
        }

        sub_100050440(&v265);
        v93 = v234(v50, 1, v60);
        sub_100025F40(v50, &qword_1005CE238, &unk_1004D0960);
        if (v93 != 1)
        {
          break;
        }

        ++v67;
        v68 += 15;
        if (v231 == v67)
        {
          v67 = v231;
          break;
        }
      }

      v65 = v220;
    }

    v94 = *(v65 + 16);
    if (v67 == v94)
    {

      sub_100050F20(v221, _s25MessageSectionsToDownloadVMa);
      v95 = v213;
      (*v232)(v213, 1, 1, v60);

      goto LABEL_22;
    }

    v96 = v214;
    if (v67 >= v94)
    {
      break;
    }

    v97 = (v65 + 240 * v67);
    v98 = v97[2];
    v99 = v97[4];
    v252 = v97[3];
    v253 = v99;
    v251 = v98;
    v100 = v97[5];
    v101 = v97[6];
    v102 = v97[8];
    v256 = v97[7];
    v257 = v102;
    v254 = v100;
    v255 = v101;
    v103 = v97[9];
    v104 = v97[10];
    v105 = v97[12];
    v260 = v97[11];
    v261 = v105;
    v258 = v103;
    v259 = v104;
    v106 = v97[13];
    v107 = v97[14];
    v108 = v97[15];
    *(v264 + 9) = *(v97 + 249);
    v263 = v107;
    v264[0] = v108;
    v262 = v106;
    v109 = v97[15];
    v249 = v97[14];
    v250[0] = v109;
    *(v250 + 9) = *(v97 + 249);
    v110 = v97[11];
    v245 = v97[10];
    v246 = v110;
    v111 = v97[13];
    v247 = v97[12];
    v248 = v111;
    v112 = v97[7];
    v241 = v97[6];
    v242 = v112;
    v113 = v97[9];
    v243 = v97[8];
    v244 = v113;
    v114 = v97[3];
    v237 = v97[2];
    v238 = v114;
    v115 = v97[5];
    v239 = v97[4];
    v240 = v115;
    sub_100050408(&v251, &v265);
    v116 = v96;
    v117 = v221;
    sub_100052950(&v237, v236, v221, v116);
    v118 = v214;

    sub_100050F20(v117, _s25MessageSectionsToDownloadVMa);
    v277 = v249;
    v278[0] = v250[0];
    *(v278 + 9) = *(v250 + 9);
    v273 = v245;
    v274 = v246;
    v275 = v247;
    v276 = v248;
    v269 = v241;
    v270 = v242;
    v271 = v243;
    v272 = v244;
    v265 = v237;
    v266 = v238;
    v267 = v239;
    v268 = v240;
    sub_100050440(&v265);
    v119 = v208;
    sub_10000E268(v118, v208, &qword_1005CE238, &unk_1004D0960);
    if (v234(v119, 1, v60) == 1)
    {
      goto LABEL_62;
    }

    v95 = v213;
    sub_100050F80(v119, v213, _s18SectionDataRequestVMa);
    sub_100025F40(v118, &qword_1005CE238, &unk_1004D0960);
    (*v232)(v95, 0, 1, v60);

LABEL_22:

    sub_100050F20(v233, _s25MessageSectionsToDownloadVMa);
    v120 = v234(v95, 1, v60);
    sub_100025F40(v95, &qword_1005CE238, &unk_1004D0960);
    if (v120 != 1)
    {
      v215 = v219;
LABEL_27:
      v59 = v195;
      goto LABEL_28;
    }

    v63 = v219 + 1;
    if (v219 + 1 == v215)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:

  sub_100050F20(v233, _s25MessageSectionsToDownloadVMa);
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:

  __break(1u);
LABEL_65:

  result = sub_100050F20(v210, _s25MessageSectionsToDownloadVMa);
  __break(1u);
  return result;
}

void sub_100042334(uint64_t a1, uint64_t a2)
{
  v203 = a2;
  v212 = a1;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v204 = &v186 - v4;
  v211 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  v5 = *(*(v211 - 8) + 64);
  __chkstk_darwin(v211);
  v210 = &v186 - v6;
  v195 = _s18SectionDataRequestVMa();
  v7 = *(*(v195 - 8) + 64);
  __chkstk_darwin(v195);
  v192 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v194 = &v186 - v10;
  __chkstk_darwin(v11);
  v207 = &v186 - v12;
  v13 = _s19MessageHeaderStatusOMa(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v200 = &v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v199 = &v186 - v17;
  v205 = _s25MessageSectionsToDownloadVMa(0);
  v18 = *(v205 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v205);
  v21 = (&v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v201 = type metadata accessor for MailboxTaskLogger(0);
  v22 = *(*(v201 - 8) + 64);
  __chkstk_darwin(v201);
  v193 = &v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v196 = &v186 - v25;
  __chkstk_darwin(v26);
  v197 = &v186 - v27;
  __chkstk_darwin(v28);
  *&v198 = &v186 - v29;
  __chkstk_darwin(v30);
  v32 = &v186 - v31;
  __chkstk_darwin(v33);
  v209 = (&v186 - v34);
  __chkstk_darwin(v35);
  v37 = &v186 - v36;
  __chkstk_darwin(v38);
  v40 = &v186 - v39;
  v208 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v41 = *(*(v208 - 8) + 64);
  __chkstk_darwin(v208);
  v206 = &v186 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v186 - v44;
  __chkstk_darwin(v46);
  v48 = &v186 - v47;
  __chkstk_darwin(v49);
  v51 = &v186 - v50;
  v52 = type metadata accessor for DownloadTask.CommandID(0);
  v53 = *(*(v52 - 1) + 64);
  __chkstk_darwin(v52);
  v55 = &v186 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050EB8(v212, v55, type metadata accessor for DownloadTask.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v78 = v45;
      sub_100025FDC(v55, v45, &unk_1005D91B0, &unk_1004CF400);
      v79 = v203;
      v80 = v209;
      sub_100050EB8(v203, v209, type metadata accessor for MailboxTaskLogger);
      sub_100050EB8(v79, v32, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v81 = v206;
      sub_10000E268(v78, v206, &unk_1005D91B0, &unk_1004CF400);
      v82 = sub_1004A4A54();
      v83 = sub_1004A6034();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        v215[0] = v212;
        *v84 = 68159491;
        *(v84 + 4) = 2;
        *(v84 + 8) = 256;
        v85 = v201;
        v86 = &v32[*(v201 + 20)];
        *(v84 + 10) = *v86;
        *(v84 + 11) = 2082;
        v87 = v80;
        v88 = &v80[*(v85 + 20)];
        *(v84 + 13) = sub_10015BA6C(*(v88 + 1), *(v88 + 2), v215);
        *(v84 + 21) = 1040;
        *(v84 + 23) = 2;
        *(v84 + 27) = 512;
        LOWORD(v86) = *(v86 + 12);
        sub_100050F20(v32, type metadata accessor for MailboxTaskLogger);
        *(v84 + 29) = v86;
        *(v84 + 31) = 2160;
        *(v84 + 33) = 0x786F626C69616DLL;
        *(v84 + 41) = 2085;
        v89 = *(v88 + 4);
        LODWORD(v86) = *(v88 + 10);

        sub_100050F20(v87, type metadata accessor for MailboxTaskLogger);
        v213 = v89;
        v214 = v86;
        v90 = sub_1004A5824();
        v92 = sub_10015BA6C(v90, v91, v215);

        *(v84 + 43) = v92;
        *(v84 + 51) = 2082;
        v93 = MessageIdentifierSet.debugDescription.getter(v208);
        v95 = v94;
        sub_100025F40(v81, &unk_1005D91B0, &unk_1004CF400);
        v96 = sub_10015BA6C(v93, v95, v215);

        *(v84 + 53) = v96;
        _os_log_impl(&_mh_execute_header, v82, v83, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did complete fetching message size for messages %{public}s", v84, 0x3Du);
        swift_arrayDestroy();

        sub_100025F40(v78, &unk_1005D91B0, &unk_1004CF400);
        return;
      }

      sub_100050F20(v32, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v81, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v78, &unk_1005D91B0, &unk_1004CF400);
      v104 = v80;
    }

    else
    {
      sub_100025FDC(v55, v51, &unk_1005D91B0, &unk_1004CF400);
      v57 = v203;
      sub_100050EB8(v203, v40, type metadata accessor for MailboxTaskLogger);
      sub_100050EB8(v57, v37, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v51, v48, &unk_1005D91B0, &unk_1004CF400);
      v58 = sub_1004A4A54();
      v59 = sub_1004A6034();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v212 = v51;
        v215[0] = v61;
        *v60 = 68159491;
        *(v60 + 4) = 2;
        *(v60 + 8) = 256;
        v62 = v201;
        v63 = &v37[*(v201 + 20)];
        *(v60 + 10) = *v63;
        *(v60 + 11) = 2082;
        v64 = &v40[*(v62 + 20)];
        *(v60 + 13) = sub_10015BA6C(*(v64 + 1), *(v64 + 2), v215);
        *(v60 + 21) = 1040;
        *(v60 + 23) = 2;
        *(v60 + 27) = 512;
        LOWORD(v63) = *(v63 + 12);
        sub_100050F20(v37, type metadata accessor for MailboxTaskLogger);
        *(v60 + 29) = v63;
        *(v60 + 31) = 2160;
        *(v60 + 33) = 0x786F626C69616DLL;
        *(v60 + 41) = 2085;
        v65 = *(v64 + 4);
        LODWORD(v64) = *(v64 + 10);

        sub_100050F20(v40, type metadata accessor for MailboxTaskLogger);
        v213 = v65;
        v214 = v64;
        v66 = sub_1004A5824();
        v68 = sub_10015BA6C(v66, v67, v215);

        *(v60 + 43) = v68;
        *(v60 + 51) = 2082;
        v69 = MessageIdentifierSet.debugDescription.getter(v208);
        v71 = v70;
        sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
        v72 = sub_10015BA6C(v69, v71, v215);

        *(v60 + 53) = v72;
        _os_log_impl(&_mh_execute_header, v58, v59, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did complete fetching body structure for messages %{public}s", v60, 0x3Du);
        swift_arrayDestroy();

        sub_100025F40(v212, &unk_1005D91B0, &unk_1004CF400);
        return;
      }

      sub_100050F20(v37, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v51, &unk_1005D91B0, &unk_1004CF400);
      v104 = v40;
    }

    v103 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v73 = *v55;
    v212 = _s18InProgressMessagesVMa(0);
    v74 = *(v212 + 8);
    v75 = *(v202 + v74);
    v76 = *(v75 + 16);
    if (!v76)
    {
      return;
    }

    v77 = 0;
    while (1)
    {
      if (v77 >= *(v75 + 16))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v32 = (v75 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v77);
      sub_100050EB8(v32, v21, _s25MessageSectionsToDownloadVMa);
      v55 = *v21;
      sub_100050F20(v21, _s25MessageSectionsToDownloadVMa);
      if (v73 == v55)
      {
        break;
      }

      if (v76 == ++v77)
      {
        return;
      }
    }

    v211 = v74;
    if (v77 >= *(v75 + 16))
    {
      __break(1u);
    }

    else
    {
      v210 = *(v205 + 20);
      v162 = v199;
      sub_100050EB8(&v32[v210], v199, _s19MessageHeaderStatusOMa);
      v163 = type metadata accessor for MessageHeader();
      v164 = *(v163 - 8);
      v165 = v200;
      v209 = *(v164 + 56);
      v207 = v164 + 56;
      (v209)(v200, 2, 3, v163);
      v166 = sub_10004CF1C(v162, v165);
      sub_100050F20(v165, _s19MessageHeaderStatusOMa);
      sub_100050F20(v162, _s19MessageHeaderStatusOMa);
      if (v166)
      {
LABEL_57:
        v170 = v203;
        v171 = v198;
        sub_100050EB8(v203, v198, type metadata accessor for MailboxTaskLogger);
        v172 = v197;
        sub_100050EB8(v170, v197, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v173 = sub_1004A4A54();
        v174 = sub_1004A6014();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          LODWORD(v209) = v174;
          v176 = v175;
          v210 = swift_slowAlloc();
          v215[0] = v210;
          *v176 = 68159491;
          *(v176 + 4) = 2;
          *(v176 + 8) = 256;
          v177 = v201;
          v178 = v172 + *(v201 + 20);
          *(v176 + 10) = *v178;
          *(v176 + 11) = 2082;
          v179 = v171;
          v180 = v171 + *(v177 + 20);
          *(v176 + 13) = sub_10015BA6C(*(v180 + 8), *(v180 + 16), v215);
          *(v176 + 21) = 1040;
          *(v176 + 23) = 2;
          *(v176 + 27) = 512;
          LOWORD(v178) = *(v178 + 24);
          sub_100050F20(v172, type metadata accessor for MailboxTaskLogger);
          *(v176 + 29) = v178;
          *(v176 + 31) = 2160;
          *(v176 + 33) = 0x786F626C69616DLL;
          *(v176 + 41) = 2085;
          v181 = *(v180 + 32);
          LODWORD(v180) = *(v180 + 40);

          sub_100050F20(v179, type metadata accessor for MailboxTaskLogger);
          v213 = v181;
          v214 = v180;
          v182 = sub_1004A5824();
          v184 = sub_10015BA6C(v182, v183, v215);

          *(v176 + 43) = v184;
          *(v176 + 51) = 1024;
          *(v176 + 53) = v73;
          _os_log_impl(&_mh_execute_header, v173, v209, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server did not return header data for message %u.", v176, 0x39u);
          swift_arrayDestroy();
        }

        else
        {
          sub_100050F20(v172, type metadata accessor for MailboxTaskLogger);

          sub_100050F20(v171, type metadata accessor for MailboxTaskLogger);
        }

        LODWORD(v215[0]) = v73;
        v185 = v202 + *(v212 + 9);
        MessageIdentifierSet.insert(_:)(&v213, v215, v208);
        sub_100168F68(v77, v21);
        v103 = _s25MessageSectionsToDownloadVMa;
        v104 = v21;
        goto LABEL_51;
      }

      if (v77 < *(v75 + 16))
      {
        v167 = v199;
        sub_100050EB8(&v32[v210], v199, _s19MessageHeaderStatusOMa);
        v168 = v200;
        (v209)(v200, 3, 3, v163);
        v169 = sub_10004CF1C(v167, v168);
        sub_100050F20(v168, _s19MessageHeaderStatusOMa);
        sub_100050F20(v167, _s19MessageHeaderStatusOMa);
        if ((v169 & 1) == 0)
        {
          return;
        }

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v97 = v207;
  sub_100050F80(v55, v207, _s18SectionDataRequestVMa);
  v98 = v204;
  sub_10000E268(v97, v204, &qword_1005CD1D0, &unk_1004CF2C0);
  v73 = v210;
  sub_10000E268(v98, v210, &unk_1005D91B0, &unk_1004CF400);
  v99 = (v73 + *(v211 + 36));
  v77 = MessageIdentifierSet.startIndex.getter(v208);
  v32 = v100;
  sub_100025F40(v98, &unk_1005D91B0, &unk_1004CF400);
  *v99 = v77;
  v99[1] = v32;
  v209 = v99;
  v76 = *(_s18InProgressMessagesVMa(0) + 32);
  v55 = v202;
  v52 = *(v202 + v76);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_64:
    v52 = sub_10013987C(v52);
  }

  v199 = v76;
  *(v55 + v76) = v52;
  v55 = v208;
  if (v77 != MessageIdentifierSet.endIndex.getter(v208) || v32 != v101)
  {
    v206 = 0;
    *&v102 = 68160003;
    v198 = v102;
    while (1)
    {
      v76 = v73;
      MessageIdentifierSet.subscript.getter(v32, v55, &v213);
      v105 = v213;
      v106 = MessageIdentifierSet.index(_:offsetBy:)(v77, v32, 1);
      v107 = v209;
      v211 = v108;
      v212 = v106;
      *v209 = v106;
      v107[1] = v108;
      v32 = v52[2];
      if (v32)
      {
        v109 = 0;
        while (1)
        {
          if (v109 >= v52[2])
          {
            __break(1u);
            goto LABEL_62;
          }

          v77 = v52 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v109;
          sub_100050EB8(v77, v21, _s25MessageSectionsToDownloadVMa);
          v76 = *v21;
          v110 = sub_100050F20(v21, _s25MessageSectionsToDownloadVMa);
          if (v105 == v76)
          {
            break;
          }

          if (v32 == ++v109)
          {
            goto LABEL_27;
          }
        }

        if (v109 >= v52[2])
        {
          goto LABEL_63;
        }

        v204 = &v186;
        v200 = *(v205 + 24);
        v111 = *(v77 + v200);
        __chkstk_darwin(v110);
        *(&v186 - 2) = v207;

        v112 = v206;
        v113 = sub_100154AC8(sub_100050FE8, (&v186 - 4), v111);
        v115 = v114;
        v206 = v112;
        v55 = v208;

        if ((v115 & 1) == 0)
        {
          v204 = v113;
          if (v109 >= v52[2])
          {
            goto LABEL_67;
          }

          if ((v204 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          v118 = *(v77 + v200);
          if (v204 >= *(v118 + 16))
          {
            goto LABEL_69;
          }

          v200 = 240 * v204;
          v119 = v118 + 240 * v204;
          v120 = *(v119 + 72);
          v121 = *(v207 + *(v195 + 24));
          v122 = v197 & 0xFFFFFF0000000000 | *(v119 + 80) | (*(v119 + 84) << 32);

          v197 = v122;
          LOBYTE(v121) = sub_100127DAC(v121, v120, v122);

          if ((v121 & 1) == 0)
          {
            break;
          }
        }
      }

LABEL_27:
      v73 = v210;
      v116 = MessageIdentifierSet.endIndex.getter(v55);
      v32 = v211;
      v77 = v212;
      if (v212 == v116 && v211 == v117)
      {
        goto LABEL_17;
      }
    }

    v123 = v203;
    sub_100050EB8(v203, v196, type metadata accessor for MailboxTaskLogger);
    sub_100050EB8(v123, v193, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v124 = v207;
    sub_100050EB8(v207, v194, _s18SectionDataRequestVMa);
    v125 = v124;
    v126 = v192;
    sub_100050EB8(v125, v192, _s18SectionDataRequestVMa);
    v127 = sub_1004A4A54();
    v128 = sub_1004A6014();
    if (os_log_type_enabled(v127, v128))
    {
      v189 = v128;
      v191 = v127;
      v129 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v215[0] = v188;
      *v129 = v198;
      *(v129 + 4) = 2;
      *(v129 + 8) = 256;
      v130 = v201;
      v131 = v193;
      v132 = v193 + *(v201 + 20);
      *(v129 + 10) = *v132;
      *(v129 + 11) = 2082;
      v133 = v196 + *(v130 + 20);
      *(v129 + 13) = sub_10015BA6C(*(v133 + 8), *(v133 + 16), v215);
      *(v129 + 21) = 1040;
      *(v129 + 23) = 2;
      *(v129 + 27) = 512;
      LODWORD(v190) = *(v132 + 24);
      sub_100050F20(v131, type metadata accessor for MailboxTaskLogger);
      *(v129 + 29) = v190;
      *(v129 + 31) = 2160;
      *(v129 + 33) = 0x786F626C69616DLL;
      *(v129 + 41) = 2085;
      v134 = *(v133 + 32);
      LODWORD(v133) = *(v133 + 40);

      sub_100050F20(v196, type metadata accessor for MailboxTaskLogger);
      v213 = v134;
      v214 = v133;
      v135 = sub_1004A5824();
      v137 = sub_10015BA6C(v135, v136, v215);

      *(v129 + 43) = v137;
      *(v129 + 51) = 1024;
      *(v129 + 53) = v105;
      *(v129 + 57) = 2082;
      v138 = v195;
      v139 = v194;
      v140 = SectionSpecifier.Part.debugDescription.getter(*(v194 + *(v195 + 20)));
      v142 = v141;
      sub_100050F20(v139, _s18SectionDataRequestVMa);
      v143 = sub_10015BA6C(v140, v142, v215);

      *(v129 + 59) = v143;
      v190 = v129;
      *(v129 + 67) = 2080;
      v144 = v192;
      v145 = *(v192 + *(v138 + 24));
      v146 = *(v145 + 16);
      if (v146)
      {
        v213 = _swiftEmptyArrayStorage;
        sub_100091E28(0, v146, 0);
        v147 = v213;
        v148 = (v145 + 32);
        v149 = v213[2];
        do
        {
          v150 = *v148;
          v213 = v147;
          v151 = v147[3];
          if (v149 >= v151 >> 1)
          {
            v187 = v150;
            sub_100091E28((v151 > 1), v149 + 1, 1);
            v150 = v187;
            v147 = v213;
          }

          v147[2] = v149 + 1;
          v147[v149 + 4] = v150;
          ++v148;
          ++v149;
          --v146;
        }

        while (v146);
        v144 = v192;
      }

      sub_10000C9C0(&qword_1005CE200, &qword_1004D0920);
      v152 = sub_1004A5C24();
      v154 = v153;

      sub_100050F20(v144, _s18SectionDataRequestVMa);
      v155 = sub_10015BA6C(v152, v154, v215);

      v156 = v190;
      *(v190 + 69) = v155;
      v157 = v191;
      _os_log_impl(&_mh_execute_header, v191, v189, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server did not return any data for message %u, part '[%{public}s]', ranges %s", v156, 0x4Du);
      swift_arrayDestroy();

      v55 = v208;
    }

    else
    {
      sub_100050F20(v193, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v126, _s18SectionDataRequestVMa);
      sub_100050F20(v196, type metadata accessor for MailboxTaskLogger);
      sub_100050F20(v194, _s18SectionDataRequestVMa);
    }

    if (v109 < v52[2])
    {
      v158 = *(v205 + 24);
      v159 = *(v77 + v158);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v77 + v158) = v159;
      v161 = v202;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v159 = sub_100139890(v159);
        *(v77 + v158) = v159;
      }

      if (v204 < *(v159 + 2))
      {
        v159[v200 + 86] = 1;
        *(v77 + v158) = v159;
        *(v161 + v199) = v52;
        goto LABEL_27;
      }

      goto LABEL_71;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

LABEL_17:
  sub_100025F40(v73, &qword_1005CDA38, &unk_1004D14C0);
  v103 = _s18SectionDataRequestVMa;
  v104 = v207;
LABEL_51:
  sub_100050F20(v104, v103);
}

size_t sub_100043BDC(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  sub_10004FE6C();
  v8 = 0;
  v9 = *(_s18InProgressMessagesVMa(0) + 32);
  v10 = *(v3 + v9);
  v11 = v10[2];
  while (1)
  {
    if (v11 == v8)
    {
      return 0xFF00000000;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10013987C(v10);
      v10 = result;
    }

    if (v8 >= v10[2])
    {
      break;
    }

    v13 = *(_s25MessageSectionsToDownloadVMa(0) - 8);
    v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v8;
    v15 = sub_10004934C(a1, a2, a3);
    *(v4 + v9) = v10;
    ++v8;
    if ((~v15 & 0xF000000000000007) != 0)
    {
      return 0x300000001;
    }
  }

  __break(1u);
  return result;
}

void sub_100043D14(int a1, uint64_t a2, int a3, uint64_t isa_low)
{
  v138 = a3;
  v8 = _s19MessageHeaderStatusOMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v140 = (&v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v13 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v124 - v15;
  __chkstk_darwin(v17);
  v130 = &v124 - v18;
  __chkstk_darwin(v19);
  v131 = &v124 - v20;
  __chkstk_darwin(v21);
  v135 = &v124 - v22;
  __chkstk_darwin(v23);
  v136 = &v124 - v24;
  __chkstk_darwin(v25);
  v132 = (&v124 - v26);
  __chkstk_darwin(v27);
  v133 = &v124 - v28;
  v134 = _s25MessageSectionsToDownloadVMa(0);
  v29 = *(v134 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v134);
  v137 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v139 = &v124 - v33;
  __chkstk_darwin(v34);
  v36 = (&v124 - v35);
  sub_100047730(a1, v145);
  v155 = v145[8];
  v156 = v145[9];
  v157[0] = v146[0];
  *(v157 + 9) = *(v146 + 9);
  v151 = v145[4];
  v152 = v145[5];
  v153 = v145[6];
  v154 = v145[7];
  v147 = v145[0];
  v148 = v145[1];
  v149 = v145[2];
  v150 = v145[3];
  if (sub_100051008(&v147) != 1)
  {
    v129 = isa_low;
    v127 = a2;
    v158[8] = v155;
    v158[9] = v156;
    v159[0] = v157[0];
    *(v159 + 9) = *(v157 + 9);
    v158[4] = v151;
    v158[5] = v152;
    v158[6] = v153;
    v158[7] = v154;
    v158[0] = v147;
    v158[1] = v148;
    v158[2] = v149;
    v158[3] = v150;
    v50 = _s18InProgressMessagesVMa(0);
    v51 = 0;
    v52 = *(v50 + 32);
    v128 = v4;
    v125 = v50;
    v126 = v52;
    v53 = *(&v4->isa + v52);
    v54 = *(v53 + 16);
    while (v54 != v51)
    {
      if (v51 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_100050EB8(v53 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v51++, v36, _s25MessageSectionsToDownloadVMa);
      isa_low = LODWORD(v36->isa);
      sub_100050F20(v36, _s25MessageSectionsToDownloadVMa);
      if (isa_low == a1)
      {
        v55 = v129;
        v56 = v131;
        sub_100050EB8(v129, v131, type metadata accessor for MailboxTaskLogger);
        v57 = v130;
        sub_100050EB8(v55, v130, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v58 = v127;
        swift_bridgeObjectRetain_n();
        v59 = sub_1004A4A54();
        v60 = sub_1004A6014();
        v140 = v59;
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v144 = v139;
          *v61 = 68159747;
          *(v61 + 4) = 2;
          *(v61 + 8) = 256;
          v62 = v141;
          v63 = v57;
          v64 = v57 + *(v141 + 20);
          *(v61 + 10) = *v64;
          *(v61 + 11) = 2082;
          v65 = v56 + *(v62 + 20);
          *(v61 + 13) = sub_10015BA6C(*(v65 + 8), *(v65 + 16), &v144);
          *(v61 + 21) = 1040;
          *(v61 + 23) = 2;
          *(v61 + 27) = 512;
          LOWORD(v64) = *(v64 + 24);
          sub_100050F20(v63, type metadata accessor for MailboxTaskLogger);
          *(v61 + 29) = v64;
          *(v61 + 31) = 2160;
          *(v61 + 33) = 0x786F626C69616DLL;
          *(v61 + 41) = 2085;
          v66 = *(v65 + 32);
          LODWORD(v65) = *(v65 + 40);

          sub_100050F20(v56, type metadata accessor for MailboxTaskLogger);
          v142 = v66;
          v143 = v65;
          v67 = sub_1004A5824();
          v69 = sub_10015BA6C(v67, v68, &v144);

          *(v61 + 43) = v69;
          *(v61 + 51) = 2048;
          v70 = *(v58 + 16);

          *(v61 + 53) = v70;

          *(v61 + 61) = 1024;
          *(v61 + 63) = a1;
          v71 = v140;
          _os_log_impl(&_mh_execute_header, v140, v60, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u -- but sections for this message have already been added.", v61, 0x43u);
          swift_arrayDestroy();

          sub_100025F40(v145, &qword_1005CE208, &qword_1004D0928);

          return;
        }

        sub_100050F20(v57, type metadata accessor for MailboxTaskLogger);
        sub_100025F40(v145, &qword_1005CE208, &qword_1004D0928);

        v94 = v56;
LABEL_27:
        sub_100050F20(v94, type metadata accessor for MailboxTaskLogger);
        return;
      }
    }

    v72 = v129;
    v73 = v133;
    sub_100050EB8(v129, v133, type metadata accessor for MailboxTaskLogger);
    v74 = v132;
    sub_100050EB8(v72, v132, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v75 = v127;
    swift_bridgeObjectRetain_n();
    v76 = sub_1004A4A54();
    v77 = sub_1004A6034();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      LODWORD(v130) = v77;
      v79 = v78;
      v131 = swift_slowAlloc();
      v144 = v131;
      *v79 = 68159747;
      *(v79 + 4) = 2;
      *(v79 + 8) = 256;
      v80 = v141;
      v81 = v74 + *(v141 + 20);
      *(v79 + 10) = *v81;
      *(v79 + 11) = 2082;
      v82 = *(v80 + 20);
      v124 = v76;
      v83 = v73;
      v84 = v73 + v82;
      *(v79 + 13) = sub_10015BA6C(*(v84 + 8), *(v84 + 16), &v144);
      *(v79 + 21) = 1040;
      *(v79 + 23) = 2;
      *(v79 + 27) = 512;
      v85 = *(v81 + 12);
      sub_100050F20(v74, type metadata accessor for MailboxTaskLogger);
      *(v79 + 29) = v85;
      *(v79 + 31) = 2160;
      *(v79 + 33) = 0x786F626C69616DLL;
      *(v79 + 41) = 2085;
      v86 = *(v84 + 32);
      v87 = *(v84 + 40);

      sub_100050F20(v83, type metadata accessor for MailboxTaskLogger);
      v142 = v86;
      v143 = v87;
      v72 = v129;
      v88 = sub_1004A5824();
      v90 = sub_10015BA6C(v88, v89, &v144);

      *(v79 + 43) = v90;
      *(v79 + 51) = 2048;
      v91 = *(v75 + 16);

      *(v79 + 53) = v91;

      *(v79 + 61) = 1024;
      *(v79 + 63) = a1;
      v92 = v124;
      _os_log_impl(&_mh_execute_header, v124, v130, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u.", v79, 0x43u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100050F20(v74, type metadata accessor for MailboxTaskLogger);

      v93 = sub_100050F20(v73, type metadata accessor for MailboxTaskLogger);
    }

    v95 = v128;
    v96 = v140;
    v97 = v138;
    if (!*(v75 + 16))
    {
      LODWORD(v144) = a1;
      v98 = *(v125 + 40);
      v99 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v93 = MessageIdentifierSet.insert(_:)(&v142, &v144, v99);
    }

    __chkstk_darwin(v93);
    *(&v124 - 4) = v158;
    *(&v124 - 3) = v95;
    *(&v124 - 2) = v72;
    v100 = sub_1000D7348(sub_10005102C, &(&v124)[-6], v75);
    v101 = type metadata accessor for MessageHeader();
    if (v97)
    {
      v102 = 2;
    }

    else
    {
      v102 = 1;
    }

    (*(*(v101 - 8) + 56))(v96, v102, 3, v101);
    v103 = v134;
    v51 = v139;
    sub_100050EB8(v96, &v139[*(v134 + 20)], _s19MessageHeaderStatusOMa);
    *v51 = a1;
    *(v51 + *(v103 + 24)) = v100;
    *(v51 + *(v103 + 28)) = _swiftEmptyArrayStorage;
    v104 = v136;
    sub_100050EB8(v72, v136, type metadata accessor for MailboxTaskLogger);
    v105 = v135;
    sub_100050EB8(v72, v135, type metadata accessor for MailboxTaskLogger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v106 = sub_1004A4A54();
    v107 = sub_1004A6034();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      LODWORD(v133) = v107;
      v109 = v108;
      v134 = swift_slowAlloc();
      v144 = v134;
      *v109 = 68160003;
      *(v109 + 4) = 2;
      *(v109 + 8) = 256;
      v110 = v141;
      v111 = *(v141 + 20);
      v132 = v106;
      v112 = v105 + v111;
      *(v109 + 10) = *(v105 + v111);
      *(v109 + 11) = 2082;
      v113 = v104;
      v114 = v104 + *(v110 + 20);
      *(v109 + 13) = sub_10015BA6C(*(v114 + 8), *(v114 + 16), &v144);
      *(v109 + 21) = 1040;
      *(v109 + 23) = 2;
      *(v109 + 27) = 512;
      LOWORD(v112) = *(v112 + 24);
      sub_100050F20(v105, type metadata accessor for MailboxTaskLogger);
      *(v109 + 29) = v112;
      *(v109 + 31) = 2160;
      *(v109 + 33) = 0x786F626C69616DLL;
      *(v109 + 41) = 2085;
      v115 = *(v114 + 32);
      LODWORD(v114) = *(v114 + 40);

      sub_100050F20(v113, type metadata accessor for MailboxTaskLogger);
      v142 = v115;
      v143 = v114;
      v116 = sub_1004A5824();
      v118 = sub_10015BA6C(v116, v117, &v144);

      *(v109 + 43) = v118;
      v51 = v139;
      *(v109 + 51) = 2048;
      v119 = *(v100 + 2);

      *(v109 + 53) = v119;
      v36 = v128;

      *(v109 + 61) = 1024;
      *(v109 + 63) = a1;
      *(v109 + 67) = 1024;
      *(v109 + 69) = v138 & 1;
      v120 = v132;
      _os_log_impl(&_mh_execute_header, v132, v133, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld sections for message %u. Downloading message headers: %{BOOL}d", v109, 0x49u);
      swift_arrayDestroy();

      isa_low = v137;
    }

    else
    {

      sub_100050F20(v105, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v104, type metadata accessor for MailboxTaskLogger);
      isa_low = v137;
      v36 = v128;
    }

    sub_100050EB8(v51, isa_low, _s25MessageSectionsToDownloadVMa);
    v53 = v126;
    v4 = *(&v36->isa + v126);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_29:
      v4 = sub_100085E0C(0, v4[2].isa + 1, 1, v4);
    }

    v121 = v140;
    isa = v4[2].isa;
    v122 = v4[3].isa;
    if (isa >= v122 >> 1)
    {
      v4 = sub_100085E0C(v122 > 1, isa + 1, 1, v4);
    }

    sub_100025F40(v145, &qword_1005CE208, &qword_1004D0928);
    sub_100050F20(v51, _s25MessageSectionsToDownloadVMa);
    sub_100050F20(v121, _s19MessageHeaderStatusOMa);
    v4[2].isa = (isa + 1);
    sub_100050F80(isa_low, v4 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * isa, _s25MessageSectionsToDownloadVMa);
    *(&v36->isa + v53) = v4;
    return;
  }

  sub_100050EB8(isa_low, v16, type metadata accessor for MailboxTaskLogger);
  sub_100050EB8(isa_low, v13, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_bridgeObjectRetain_n();
  v37 = sub_1004A4A54();
  v38 = sub_1004A6014();
  if (!os_log_type_enabled(v37, v38))
  {

    sub_100050F20(v13, type metadata accessor for MailboxTaskLogger);

    v94 = v16;
    goto LABEL_27;
  }

  v39 = swift_slowAlloc();
  LODWORD(v139) = v38;
  v40 = v39;
  v140 = swift_slowAlloc();
  v142 = v140;
  *v40 = 68159747;
  *(v40 + 4) = 2;
  *(v40 + 8) = 256;
  v41 = v141;
  v42 = a2;
  v43 = &v13[*(v141 + 20)];
  *(v40 + 10) = *v43;
  *(v40 + 11) = 2082;
  v44 = &v16[*(v41 + 20)];
  *(v40 + 13) = sub_10015BA6C(*(v44 + 1), *(v44 + 2), &v142);
  *(v40 + 21) = 1040;
  *(v40 + 23) = 2;
  *(v40 + 27) = 512;
  LOWORD(v43) = *(v43 + 12);
  sub_100050F20(v13, type metadata accessor for MailboxTaskLogger);
  *(v40 + 29) = v43;
  *(v40 + 31) = 2160;
  *(v40 + 33) = 0x786F626C69616DLL;
  *(v40 + 41) = 2085;
  v45 = *(v44 + 4);
  LODWORD(v44) = *(v44 + 10);

  sub_100050F20(v16, type metadata accessor for MailboxTaskLogger);
  *&v158[0] = v45;
  DWORD2(v158[0]) = v44;
  v46 = sub_1004A5824();
  v48 = sub_10015BA6C(v46, v47, &v142);

  *(v40 + 43) = v48;
  *(v40 + 51) = 2048;
  v49 = *(v42 + 16);

  *(v40 + 53) = v49;

  *(v40 + 61) = 1024;
  *(v40 + 63) = a1;
  _os_log_impl(&_mh_execute_header, v37, v139, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u, but we don’t have a body structure for this message.", v40, 0x43u);
  swift_arrayDestroy();
}

BOOL sub_100044DE0(__int128 *a1, __int128 *a2)
{
  v3 = a1[9];
  v119 = a1[8];
  v120 = v3;
  v121 = a1[10];
  v122 = *(a1 + 176);
  v4 = a1[5];
  v115 = a1[4];
  v116 = v4;
  v5 = a1[7];
  v117 = a1[6];
  v118 = v5;
  v6 = a1[1];
  v111 = *a1;
  v112 = v6;
  v7 = a1[3];
  v113 = a1[2];
  v114 = v7;
  if (sub_10003EC1C(&v111) == 1)
  {
    v8 = a2[9];
    v85 = a2[8];
    v86 = v8;
    v87 = a2[10];
    v88 = *(a2 + 176);
    v9 = a2[5];
    v81 = a2[4];
    v82 = v9;
    v10 = a2[7];
    v83 = a2[6];
    v84 = v10;
    v11 = a2[1];
    v77 = *a2;
    v78 = v11;
    v12 = a2[3];
    v79 = a2[2];
    v80 = v12;
    return sub_10003EC1C(&v77) == 1;
  }

  v14 = a2[9];
  v85 = a2[8];
  v86 = v14;
  v87 = a2[10];
  v88 = *(a2 + 176);
  v15 = a2[5];
  v81 = a2[4];
  v82 = v15;
  v16 = a2[7];
  v83 = a2[6];
  v84 = v16;
  v17 = a2[1];
  v77 = *a2;
  v78 = v17;
  v18 = a2[3];
  v79 = a2[2];
  v80 = v18;
  if (sub_10003EC1C(&v77) == 1)
  {
    return 0;
  }

  v73 = v119;
  v74 = v120;
  v75 = v121;
  v76 = v122;
  v69 = v115;
  v70 = v116;
  v71 = v117;
  v72 = v118;
  v65 = v111;
  v66 = v112;
  v67 = v113;
  v68 = v114;
  if (sub_10000FE74(&v65) != 1)
  {
    v61 = v85;
    v62 = v86;
    v63 = v87;
    v64 = v88;
    v57 = v81;
    v58 = v82;
    v59 = v83;
    v60 = v84;
    v53 = v77;
    v54 = v78;
    v55 = v79;
    v56 = v80;
    if (sub_10000FE74(&v53) == 1)
    {
      return 0;
    }

    v51[8] = v73;
    v51[9] = v74;
    v51[10] = v75;
    v52 = v76;
    v51[4] = v69;
    v51[5] = v70;
    v51[6] = v71;
    v51[7] = v72;
    v51[0] = v65;
    v51[1] = v66;
    v51[2] = v67;
    v51[3] = v68;
    if (sub_10000FE88(v51) == 1)
    {
      v19 = UInt32.init(_:)(v51);
      v20 = *(v19 + 64);
      v94 = *(v19 + 80);
      v95 = *(v19 + 96);
      *&v96 = *(v19 + 112);
      v21 = *(v19 + 16);
      v89 = *v19;
      v90 = v21;
      v22 = *(v19 + 48);
      v91 = *(v19 + 32);
      v92 = v22;
      v93 = v20;
      v47 = v61;
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v43 = v57;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      if (sub_10000FE88(&v39) == 1)
      {
        v23 = UInt32.init(_:)(&v39);
        v24 = *(v23 + 80);
        v104 = *(v23 + 64);
        v105 = v24;
        v106 = *(v23 + 96);
        *&v107 = *(v23 + 112);
        v25 = *(v23 + 16);
        v100 = *v23;
        v101 = v25;
        v26 = *(v23 + 48);
        v102 = *(v23 + 32);
        v103 = v26;
        return static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v89, &v100);
      }
    }

    else
    {
      v27 = UInt32.init(_:)(v51);
      v28 = v27[9];
      v97 = v27[8];
      v98 = v28;
      v99 = v27[10];
      v29 = v27[4];
      v94 = v27[5];
      v30 = v27[6];
      v96 = v27[7];
      v95 = v30;
      v31 = v27[1];
      v89 = *v27;
      v90 = v31;
      v32 = v27[2];
      v92 = v27[3];
      v93 = v29;
      v91 = v32;
      v50 = v64;
      v48 = v62;
      v49 = v63;
      v46 = v60;
      v47 = v61;
      v44 = v58;
      v45 = v59;
      v42 = v56;
      v43 = v57;
      v40 = v54;
      v41 = v55;
      v39 = v53;
      if (sub_10000FE88(&v39) != 1)
      {
        v33 = UInt32.init(_:)(&v39);
        v34 = v33[9];
        v108 = v33[8];
        v109 = v34;
        v110 = v33[10];
        v35 = v33[5];
        v104 = v33[4];
        v105 = v35;
        v36 = v33[6];
        v107 = v33[7];
        v106 = v36;
        v37 = v33[1];
        v100 = *v33;
        v101 = v37;
        v38 = v33[2];
        v103 = v33[3];
        v102 = v38;
        return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v89, &v100);
      }
    }

    UInt32.init(_:)(&v39);
    return 0;
  }

  v61 = v85;
  v62 = v86;
  v63 = v87;
  v64 = v88;
  v57 = v81;
  v58 = v82;
  v59 = v83;
  v60 = v84;
  v53 = v77;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  return sub_10000FE74(&v53) == 1;
}

uint64_t sub_1000451E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v14[0] = a1[10];
  *(v14 + 9) = *(a1 + 169);
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v15[9] = v7;
  v16[0] = a2[10];
  *(v16 + 9) = *(a2 + 169);
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return sub_10004D254(v13, v15) & 1;
}

uint64_t sub_100045288@<X0>(uint64_t a1@<X8>)
{
  v2 = _s25MessageSectionsToDownloadVMa(0);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  v4 = __chkstk_darwin(v2);
  v53 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v49 = v44 - v7;
  __chkstk_darwin(v6);
  v52 = v44 - v8;

  sub_10004C3D0(v9);
  v75[0] = sub_100066AB4(v10, v11);
  sub_10004C218(v75);

  v12 = v75[0];
  sub_100016D2C();
  sub_1004A7114();
  v13 = *(v12 + 2);
  if (!v13)
  {
  }

  v47 = *v54;
  v46 = *(v54 + 8);
  v44[1] = v12;
  v14 = v12 + 48;
  v45 = xmmword_1004CEAA0;
  v48 = a1;
  while (1)
  {
    if (*v14)
    {
      goto LABEL_4;
    }

    v16 = *(v14 - 1);
    if (HIDWORD(v16) || v16 > 0x15F90)
    {
      goto LABEL_4;
    }

    v18 = v16 * 1.25;
    if (v18 == INFINITY)
    {
      break;
    }

    if (v18 <= -1.0)
    {
      goto LABEL_25;
    }

    if (v18 >= 4294967300.0)
    {
      goto LABEL_26;
    }

    v19 = *(v14 - 4);
    v20 = v16 + 0x4000;
    if (v20 <= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    sub_1000503E0(&v57);
    v69[8] = v65;
    v69[9] = v66;
    v69[10] = v67;
    v70 = v68;
    v69[4] = v61;
    v69[5] = v62;
    v69[6] = v63;
    v69[7] = v64;
    v69[0] = v57;
    v69[1] = v58;
    v69[2] = v59;
    v69[3] = v60;
    v22 = v47;

    sub_100025F40(v69, &qword_1005CDFD0, &qword_1004EE450);
    *&v56[97] = v63;
    *&v56[113] = v64;
    *&v56[65] = v61;
    *&v56[81] = v62;
    v56[177] = v68;
    *&v56[145] = v66;
    *&v56[161] = v67;
    *&v56[129] = v65;
    *&v56[1] = v57;
    *&v56[17] = v58;
    *&v56[33] = v59;
    *&v56[49] = v60;
    *(&v74[8] + 7) = *&v56[128];
    *(&v74[9] + 7) = *&v56[144];
    *(&v74[10] + 7) = *&v56[160];
    *(&v74[4] + 7) = *&v56[64];
    *(&v74[5] + 7) = *&v56[80];
    *(&v74[6] + 7) = *&v56[96];
    *(&v74[7] + 7) = *&v56[112];
    *(v74 + 7) = *v56;
    *(&v74[1] + 7) = *&v56[16];
    *(&v74[2] + 7) = *&v56[32];
    *(&v74[3] + 7) = *&v56[48];
    v92 = *&v56[128];
    v93 = *&v56[144];
    v94 = *&v56[160];
    v88 = *&v56[64];
    v89 = *&v56[80];
    v90 = *&v56[96];
    v91 = *&v56[112];
    v84 = *v56;
    v85 = *&v56[16];
    v86 = *&v56[32];
    LOBYTE(v71) = 0;
    *(&v71 + 1) = v22;
    *&v72 = __PAIR64__(v19, v46);
    *(&v72 + 1) = _swiftEmptyArrayStorage;
    LODWORD(v73) = v21;
    *(&v73 + 1) = _swiftEmptyArrayStorage;
    LODWORD(v74[0]) = 0;
    WORD2(v74[0]) = 2;
    BYTE6(v74[0]) = 0;
    *(&v74[11] + 7) = *&v56[176];
    LOBYTE(v75[0]) = 0;
    v75[1] = v22;
    v76 = v46;
    v77 = v19;
    v78 = _swiftEmptyArrayStorage;
    v79 = v21;
    v80 = _swiftEmptyArrayStorage;
    v81 = 0;
    v82 = 2;
    v83 = 0;
    v95 = *&v56[176];
    v87 = *&v56[48];
    sub_100050408(&v71, v55);
    sub_100050440(v75);
    v23 = v51;
    v24 = *(v51 + 20);
    v25 = type metadata accessor for MessageHeader();
    v26 = v49;
    (*(*(v25 - 8) + 56))(&v49[v24], 1, 3, v25);
    sub_10000C9C0(&qword_1005CDFD8, &qword_1004D01E0);
    v27 = swift_allocObject();
    v28 = v74[9];
    v27[13] = v74[8];
    v27[14] = v28;
    v27[15] = v74[10];
    *(v27 + 249) = *(&v74[10] + 9);
    v29 = v74[5];
    v30 = v74[6];
    v31 = v74[3];
    v27[9] = v74[4];
    v27[10] = v29;
    v32 = v74[7];
    v27[11] = v30;
    v27[12] = v32;
    v33 = v74[1];
    v34 = v74[2];
    v35 = v73;
    v27[5] = v74[0];
    v27[6] = v33;
    v27[7] = v34;
    v27[8] = v31;
    v36 = v71;
    v37 = v72;
    v27[1] = v45;
    v27[2] = v36;
    v27[3] = v37;
    v27[4] = v35;
    *v26 = v19;
    *(v26 + *(v23 + 24)) = v27;
    *(v26 + *(v23 + 28)) = _swiftEmptyArrayStorage;
    v38 = v52;
    sub_100050F80(v26, v52, _s25MessageSectionsToDownloadVMa);
    sub_100050EB8(v38, v53, _s25MessageSectionsToDownloadVMa);
    v39 = *(_s18InProgressMessagesVMa(0) + 32);
    v40 = *(v54 + v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_100085E0C(0, v40[2] + 1, 1, v40);
    }

    v42 = v40[2];
    v41 = v40[3];
    if (v42 >= v41 >> 1)
    {
      v40 = sub_100085E0C(v41 > 1, v42 + 1, 1, v40);
    }

    v40[2] = v42 + 1;
    sub_100050F80(v53, v40 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v42, _s25MessageSectionsToDownloadVMa);
    *(v54 + v39) = v40;
    *v56 = v19;
    v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    MessageIdentifierSet.insert(_:)(v55, v56, v15);
    sub_100050F20(v52, _s25MessageSectionsToDownloadVMa);
LABEL_4:
    v14 += 24;
    if (!--v13)
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000458FC(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = *(a1 + 56) + 16 * v13;
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *(*(a1 + 48) + 4 * v13);
      v16 = *v14;
      if (*(v14 + 9) == 1)
      {
        sub_1000503E0(&v84);
        goto LABEL_15;
      }

      v17 = *(v2 + 16);
      if (*(v17 + 16))
      {
        result = sub_100067004(*(*(a1 + 48) + 4 * v13));
        if (v18)
        {
          v19 = *(v17 + 56) + 184 * result;
          v21 = *(v19 + 32);
          v20 = *(v19 + 48);
          v22 = *(v19 + 16);
          v60 = *v19;
          v61 = v22;
          v62 = v21;
          v63 = v20;
          v23 = *(v19 + 64);
          v24 = *(v19 + 80);
          v25 = *(v19 + 112);
          v66 = *(v19 + 96);
          v67 = v25;
          v64 = v23;
          v65 = v24;
          v26 = *(v19 + 128);
          v27 = *(v19 + 144);
          v28 = *(v19 + 160);
          v71 = *(v19 + 176);
          v69 = v27;
          v70 = v28;
          v68 = v26;
          LODWORD(v48) = v15;
          v29 = *(_s18InProgressMessagesVMa(0) + 24);
          sub_10003E6D4(&v60, &v72);
          v30 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
          MessageIdentifierSet.insert(_:)(&v72, &v48, v30);
          v80 = v68;
          v81 = v69;
          v82 = v70;
          v83 = v71;
          v76 = v64;
          v77 = v65;
          v78 = v66;
          v79 = v67;
          v72 = v60;
          v73 = v61;
          v74 = v62;
          v75 = v63;
          UInt32.init(_:)(&v72);
          v92 = v80;
          v93 = v81;
          v94 = v82;
          v95 = v83;
          v88 = v76;
          v89 = v77;
          v90 = v78;
          v91 = v79;
          v84 = v72;
          v85 = v73;
          v86 = v74;
          v87 = v75;
LABEL_15:
          v47 = v15;
          if (HIDWORD(v16))
          {
            v56 = v92;
            v57 = v93;
            v58 = v94;
            v59 = v95;
            v52 = v88;
            v53 = v89;
            v54 = v90;
            v55 = v91;
            v48 = v84;
            v49 = v85;
            v50 = v86;
            v51 = v87;
            v31 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v32 = v2;
              LODWORD(v16) = 0;
              v83 = v59;
              v80 = v56;
              v81 = v57;
              v82 = v58;
LABEL_20:
              v76 = v52;
              v77 = v53;
              v78 = v54;
              v79 = v55;
              v72 = v48;
              v73 = v49;
              v33 = v50;
              v34 = v51;
              goto LABEL_21;
            }

            LODWORD(v16) = 0;
            v71 = v59;
            v68 = v56;
            v69 = v57;
            v70 = v58;
          }

          else
          {
            v56 = v92;
            v57 = v93;
            v58 = v94;
            v59 = v95;
            v52 = v88;
            v53 = v89;
            v54 = v90;
            v55 = v91;
            v48 = v84;
            v49 = v85;
            v50 = v86;
            v51 = v87;
            v31 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v32 = v2;
              v80 = v56;
              v81 = v57;
              v82 = v58;
              v83 = v59;
              goto LABEL_20;
            }

            v68 = v56;
            v69 = v57;
            v70 = v58;
            v71 = v59;
          }

          v64 = v52;
          v65 = v53;
          v66 = v54;
          v67 = v55;
          v60 = v48;
          v61 = v49;
          v62 = v50;
          v63 = v51;
          v32 = v2;
          v31 = sub_100085E34(0, *(v31 + 2) + 1, 1, v31);
          v80 = v68;
          v81 = v69;
          v82 = v70;
          v83 = v71;
          v76 = v64;
          v77 = v65;
          v78 = v66;
          v79 = v67;
          v72 = v60;
          v73 = v61;
          v33 = v62;
          v34 = v63;
LABEL_21:
          v74 = v33;
          v75 = v34;
          v36 = *(v31 + 2);
          v35 = *(v31 + 3);
          if (v36 >= v35 >> 1)
          {
            v31 = sub_100085E34((v35 > 1), v36 + 1, 1, v31);
          }

          *(v31 + 2) = v36 + 1;
          v37 = &v31[192 * v36];
          *(v37 + 8) = v47;
          *(v37 + 9) = v16;
          v38 = v72;
          v39 = v73;
          v40 = v74;
          *(v37 + 88) = v75;
          *(v37 + 72) = v40;
          *(v37 + 56) = v39;
          *(v37 + 40) = v38;
          v41 = v76;
          v42 = v77;
          v43 = v78;
          *(v37 + 152) = v79;
          *(v37 + 136) = v43;
          *(v37 + 120) = v42;
          *(v37 + 104) = v41;
          v44 = v80;
          v45 = v81;
          v46 = v82;
          v37[216] = v83;
          *(v37 + 200) = v46;
          *(v37 + 184) = v45;
          *(v37 + 168) = v44;
          result = _s18InProgressMessagesVMa(0);
          v2 = v32;
          *(v32 + *(result + 28)) = v31;
        }
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100045D7C(int a1, uint64_t a2, uint64_t a3)
{
  v7 = _s25MessageSectionsToDownloadVMa(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + *(_s18InProgressMessagesVMa(0) + 32));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        return;
      }

      sub_100050EB8(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v11, _s25MessageSectionsToDownloadVMa);
      v15 = *v11;
      sub_100050F20(v11, _s25MessageSectionsToDownloadVMa);
      if (v15 == a1)
      {
        break;
      }

      if (v13 == ++v14)
      {
        return;
      }
    }

    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = *(type metadata accessor for MessageData.BodySection() - 8);
      v18 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v19 = *(v17 + 72);
      do
      {
        sub_100045F58(v18, v3, v14, a3);
        v18 += v19;
        --v16;
      }

      while (v16);
    }
  }
}

void sub_100045F58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v89 = type metadata accessor for MessageData.BodySection();
  v8 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v85 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v77 - v14;
  v16 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v88 = &v77 - v18;
  v19 = type metadata accessor for MessageData.BodyData();
  v86 = *(v19 - 8);
  v87 = v19;
  v20 = *(v86 + 64);
  __chkstk_darwin(v19);
  v84 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s19MessageHeaderStatusOMa(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v83 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v77 - v26;
  __chkstk_darwin(v28);
  v30 = &v77 - v29;
  v31 = _s18InProgressMessagesVMa(0);
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v94 = *(v31 + 32);
  v95 = a2;
  a2 = *&v94[a2];
  if (*(a2 + 16) <= a3)
  {
    goto LABEL_24;
  }

  v82 = v15;
  v32 = _s25MessageSectionsToDownloadVMa(0);
  v33 = *(v32 - 8);
  v90 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v34 = *(v33 + 72);
  v92 = v32;
  v93 = a3;
  v35 = (a2 + v90 + *(v32 + 20));
  v91 = v34 * a3;
  sub_100050EB8(&v35[v34 * a3], v30, _s19MessageHeaderStatusOMa);
  v36 = type metadata accessor for MessageHeader();
  v37 = *(v36 - 8);
  v80 = *(v37 + 56);
  v81 = v36;
  v79 = v37 + 56;
  v80(v27, 3, 3);
  v38 = sub_10004CF1C(v30, v27);
  sub_100050F20(v27, _s19MessageHeaderStatusOMa);
  sub_100050F20(v30, _s19MessageHeaderStatusOMa);
  if ((v38 & 1) == 0)
  {
    goto LABEL_8;
  }

  v39 = *a1;
  v30 = *(a1 + 8);
  v40 = *(a1 + 16);
  v41 = SectionSpecifier.header.unsafeMutableAddressor();
  v77 = v10;
  v43 = *v41;
  v42 = v41[1];
  v44 = *(v41 + 16);

  sub_100051190(v42, v44);
  LOBYTE(v39) = static SectionSpecifier.__derived_struct_equals(_:_:)(v39, v30, v40, v43, v42, v44);

  v45 = v77;
  sub_1000511A4(v42, v44);
  if ((v39 & 1) == 0)
  {
LABEL_8:
    v27 = v94;
    v10 = v95;
    a2 = *&v94[v95];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27[v10] = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
      if (*(a2 + 16) <= v93)
      {
        __break(1u);
      }

      else
      {
        v27 = (a2 + v90 + v91);
        v30 = *(v92 + 24);
        a2 = *&v27[v30];
        v66 = swift_isUniquelyReferenced_nonNull_native();
        *&v27[v30] = a2;
        if (v66)
        {
          goto LABEL_11;
        }
      }

      a2 = sub_100139890(a2);
LABEL_11:
      *&v27[v30] = a2;
      if (!*(a2 + 16))
      {
        return;
      }

      v67 = 0;
      for (i = 32; ; i += 240)
      {
        *&v27[v30] = a2;
        if (v67 >= *(a2 + 16))
        {
          break;
        }

        v10 = a2 + i;
        sub_100046884(a1, a4);
        ++v67;
        a2 = *&v27[v30];
        if (v67 == *(a2 + 16))
        {
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      a2 = sub_10013987C(a2);
      *&v27[v10] = a2;
    }
  }

  v46 = v88;
  sub_10000E268(a1 + *(v89 + 24), v88, &qword_1005CE218, &unk_1004F3FD0);
  if ((*(v86 + 48))(v46, 1, v87) == 1)
  {
    sub_100025F40(v46, &qword_1005CE218, &unk_1004F3FD0);
    v47 = v82;
    sub_100050EB8(a4, v82, type metadata accessor for MailboxTaskLogger);
    v48 = v85;
    sub_100050EB8(a4, v85, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100050EB8(a1, v45, type metadata accessor for MessageData.BodySection);
    v49 = sub_1004A4A54();
    v50 = sub_1004A6014();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      LODWORD(v94) = v50;
      v52 = v51;
      v95 = swift_slowAlloc();
      v98 = v95;
      *v52 = 68159491;
      *(v52 + 4) = 2;
      *(v52 + 8) = 256;
      v53 = v78;
      v54 = v48 + *(v78 + 20);
      *(v52 + 10) = *v54;
      *(v52 + 11) = 2082;
      v55 = v47;
      v56 = v47 + *(v53 + 20);
      *(v52 + 13) = sub_10015BA6C(*(v56 + 8), *(v56 + 16), &v98);
      *(v52 + 21) = 1040;
      *(v52 + 23) = 2;
      *(v52 + 27) = 512;
      LOWORD(v54) = *(v54 + 24);
      sub_100050F20(v48, type metadata accessor for MailboxTaskLogger);
      *(v52 + 29) = v54;
      *(v52 + 31) = 2160;
      *(v52 + 33) = 0x786F626C69616DLL;
      *(v52 + 41) = 2085;
      v57 = *(v56 + 32);
      LODWORD(v56) = *(v56 + 40);

      sub_100050F20(v55, type metadata accessor for MailboxTaskLogger);
      v96 = v57;
      v97 = v56;
      v58 = sub_1004A5824();
      v60 = sub_10015BA6C(v58, v59, &v98);

      *(v52 + 43) = v60;
      *(v52 + 51) = 2082;
      v61 = SectionSpecifier.debugDescription.getter(*v45, *(v45 + 8), *(v45 + 16));
      v63 = v62;
      sub_100050F20(v45, type metadata accessor for MessageData.BodySection);
      v64 = sub_10015BA6C(v61, v63, &v98);

      *(v52 + 53) = v64;
      _os_log_impl(&_mh_execute_header, v49, v94, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No header data in response for '%{public}s'", v52, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100050F20(v48, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v47, type metadata accessor for MailboxTaskLogger);
      sub_100050F20(v45, type metadata accessor for MessageData.BodySection);
    }
  }

  else
  {
    v69 = v84;
    sub_100050F80(v46, v84, type metadata accessor for MessageData.BodyData);
    v70 = sub_1004A5384();
    v71 = v83;
    (*(*(v70 - 8) + 16))(v83, v69, v70);
    (v80)(v71, 0, 3, v81);
    v73 = v94;
    v72 = v95;
    v74 = *&v94[v95];
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v73[v72] = v74;
    if ((v75 & 1) == 0)
    {
      *&v73[v72] = sub_10013987C(v74);
    }

    sub_100050F20(v69, type metadata accessor for MessageData.BodyData);
    v76 = *&v73[v72];
    if (*(v76 + 16) <= v93)
    {
      __break(1u);
    }

    else
    {
      sub_1000511B8(v71, v76 + v90 + *(v92 + 20) + v91);
    }
  }
}