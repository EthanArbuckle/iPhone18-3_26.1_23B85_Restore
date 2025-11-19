uint64_t sub_100001648()
{
  v0 = sub_100001770(&qword_100010220, &qword_100009E90);
  v1 = *(*(v0 - 8) + 64);
  v4 = __chkstk_darwin(v0 - 8, v2, v3);
  v6 = &v10 - v5;
  sub_100001A84(v4);
  v7 = sub_1000097A0();
  if (sub_1000017B8(v6, 1, v7) == 1)
  {
    sub_1000017E0(v6);
    return 0;
  }

  else
  {
    v8 = sub_100009790();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  return v8;
}

uint64_t sub_100001770(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000017E0(uint64_t a1)
{
  v2 = sub_100001770(&qword_100010220, &qword_100009E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100001854(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_100001888();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_100001890@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

void type metadata accessor for BPSCompletionState()
{
  if (!qword_100010228)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010228);
    }
  }
}

__n128 sub_10000190C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001918(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100001958(uint64_t result, int a2, int a3)
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

uint64_t sub_1000019A4(void *a1)
{
  v3 = 0;
  if ([a1 closeAndReturnError:&v3])
  {

    return _objc_retain_x1();
  }

  else
  {
    v1 = v3;
    sub_1000095F0();

    swift_willThrow();
  }
}

uint64_t sub_100001A88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100009770();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_100009760();
  sub_100009750();

  v5 = sub_1000097A0();

  return sub_100002104(a1, 0, 1, v5);
}

char *sub_100001B24()
{
  v1 = sub_100009870();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009570();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10, v11);
  v12 = sub_100001770(&qword_100010220, &qword_100009E90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14, v15);
  v17 = &v31 - v16;
  sub_100001A88(&v31 - v16);
  v18 = sub_1000097A0();
  if (sub_1000017B8(v17, 1, v18) == 1)
  {
    sub_1000017E0(v17);
    v19 = 0;
  }

  else
  {
    v19 = sub_100009780();
    (*(*(v18 - 8) + 8))(v17, v18);
  }

  v20 = sub_1000095B0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1000095A0();
  sub_100001770(&qword_100010230, &qword_100009FD8);
  v23 = *(v8 + 72);
  v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100009FC0;
  sub_100009560();
  sub_100009550();
  v32 = v25;
  sub_100002064(&qword_100010238, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100001770(&qword_100010240, &qword_100009FE0);
  sub_100001E80();
  sub_100009910();
  sub_100009580();
  v32 = v19;
  sub_100001770(&qword_100010250, &qword_100009FE8);
  sub_100001F2C();
  v26 = sub_100009590();
  if (v0)
  {
  }

  else
  {
    v28 = v26;
    v29 = v27;

    sub_100009860();
    v6 = sub_100009850();
    sub_1000020AC(v28, v29);
  }

  return v6;
}

unint64_t sub_100001E80()
{
  result = qword_100010248;
  if (!qword_100010248)
  {
    sub_100001EE4(&qword_100010240, &qword_100009FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010248);
  }

  return result;
}

uint64_t sub_100001EE4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001F2C()
{
  result = qword_100010258;
  if (!qword_100010258)
  {
    sub_100001EE4(&qword_100010250, &qword_100009FE8);
    sub_100001FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010258);
  }

  return result;
}

unint64_t sub_100001FB0()
{
  result = qword_100010260;
  if (!qword_100010260)
  {
    sub_100001EE4(&qword_100010268, &qword_100009FF0);
    sub_100002064(&qword_100010270, &type metadata accessor for UIContextElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010260);
  }

  return result;
}

uint64_t sub_100002064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000020AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for BiomeEventAttachmentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BiomeEventAttachmentError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000022A0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000022F0()
{
  result = qword_100010278;
  if (!qword_100010278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010278);
  }

  return result;
}

Swift::Int sub_10000237C(unsigned __int8 a1)
{
  sub_1000099E0();
  sub_1000099F0(a1);
  return sub_100009A00();
}

Swift::Int sub_1000023E0()
{
  v1 = *v0;
  sub_1000099E0();
  sub_1000099F0(v1);
  return sub_100009A00();
}

uint64_t sub_100002434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v38 = a3;
  v39 = a1;
  v3 = sub_1000096D0();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  __chkstk_darwin(v3, v5, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009640();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v14 = __chkstk_darwin(v9, v12, v13);
  v41 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v14, v16, v17);
  v20 = &v38 - v19;
  __chkstk_darwin(v18, v21, v22);
  v24 = &v38 - v23;
  v25 = objc_opt_self();
  v26 = [v25 defaultManager];
  v27 = [v26 temporaryDirectory];

  sub_100009630();
  sub_100009620();
  v28 = *(v10 + 8);
  v44 = v9;
  v28(v20, v9);
  sub_1000096C0();
  sub_1000096B0();
  (*(v42 + 8))(v8, v43);
  v29 = v41;
  sub_100009620();

  v30 = [v25 defaultManager];
  sub_100009600(v31);
  v33 = v32;
  v45 = 0;
  LOBYTE(v8) = [v30 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:&v45];

  if (v8)
  {
    v34 = v45;
    sub_100009610();
  }

  else
  {
    v37 = v45;
    sub_1000095F0();

    swift_willThrow();
  }

  v35 = v44;
  v28(v29, v44);
  return (v28)(v24, v35);
}

uint64_t sub_1000027B8@<X0>(uint64_t a1@<X8>)
{
  v46[1] = a1;
  v2 = sub_1000096D0();
  v3 = sub_1000045D0(v2);
  v47 = v4;
  v48 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7, v8);
  sub_1000045E4();
  v11 = v10 - v9;
  v12 = sub_100009640();
  v13 = sub_1000045D0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13, v18, v19);
  sub_1000045F4();
  v23 = __chkstk_darwin(v20, v21, v22);
  v25 = v46 - v24;
  __chkstk_darwin(v23, v26, v27);
  v29 = v46 - v28;
  v30 = objc_opt_self();
  v31 = [v30 defaultManager];
  v32 = [v31 temporaryDirectory];

  sub_100009630();
  sub_100009620();
  v33 = *(v15 + 8);
  v49 = v12;
  v34 = v12;
  v35 = v33;
  v33(v25, v34);
  sub_1000096C0();
  sub_1000096B0();
  (*(v47 + 8))(v11, v48);
  sub_100009620();

  v36 = [v30 defaultManager];
  sub_100009600(v37);
  v39 = v38;
  v50 = 0;
  LOBYTE(v30) = [v36 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:&v50];

  if (v30)
  {
    v40 = *v46[0];
    v41 = *(v46[0] + 8);
    v42 = v50;
    sub_100009610();
  }

  else
  {
    v45 = v50;
    sub_1000095F0();

    swift_willThrow();
  }

  v43 = v49;
  v35(v1, v49);
  return (v35)(v29, v43);
}

id sub_100002B10(uint64_t a1, uint64_t a2)
{
  v130 = a2;
  v4 = sub_100001770(&qword_100010280, &unk_10000A160);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6, v7);
  v122 = v112 - v8;
  v9 = sub_100009870();
  v10 = sub_1000045D0(v9);
  v124 = v11;
  v125 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10, v14, v15);
  sub_1000045E4();
  v18 = v17 - v16;
  v19 = sub_1000097D0();
  v20 = sub_1000045D0(v19);
  v126 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20, v24, v25);
  sub_1000045F4();
  __chkstk_darwin(v26, v27, v28);
  v127 = (v112 - v29);
  v131 = sub_100009640();
  v30 = sub_1000045D0(v131);
  v128 = v31;
  v33 = *(v32 + 64);
  v36 = __chkstk_darwin(v30, v34, v35);
  v38 = v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v36, v39, v40);
  v43 = v112 - v42;
  v46 = __chkstk_darwin(v41, v44, v45);
  v123 = v112 - v47;
  __chkstk_darwin(v46, v48, v49);
  v51 = v112 - v50;
  v52 = sub_100003588();
  v53 = v129;
  sub_100002434(a1, v130, v51);
  if (v53)
  {

    return v51;
  }

  v116 = v43;
  v118 = v18;
  v115 = a1;
  v113 = v38;
  v114 = v2;
  v119 = v19;
  v120 = v52;
  v121 = 0;
  v112[1] = "genceFlow-3505.5.1\n";
  v112[0] = "ligenceFlowDiagnostics";
  sub_1000097C0();
  v54 = v128;
  v56 = v128 + 16;
  v55 = *(v128 + 16);
  v57 = v123;
  v129 = v51;
  v55(v123, v51, v131);
  v58 = sub_1000097B0();
  v59 = sub_100009900();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    v117 = v55;
    v61 = aBlock;
    *v60 = 136315138;
    sub_10000435C();
    v62 = v131;
    v63 = sub_100009990();
    v64 = v62;
    v66 = v65;
    v67 = *(v128 + 8);
    v67(v57, v64);
    v68 = sub_100008AC8(v63, v66, &aBlock);

    *(v60 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v58, v59, "InteractionStoreAttachment: file path: %s", v60, 0xCu);
    sub_1000043B4(v61);
    v55 = v117;
    sub_100004610();
    v69 = v67;
    sub_100004610();
  }

  else
  {

    v69 = *(v54 + 8);
    v69(v57, v131);
  }

  v70 = *(v126 + 8);
  v70(v127, v119);
  v71 = v118;
  sub_100009860();
  v72 = sub_100009840();
  v74 = v73;
  (*(v124 + 1))(v71, v125);
  v75 = v121;
  v51 = v129;
  if (v74 >> 60 == 15)
  {
    sub_10000374C();
    swift_allocError();
    *v76 = 4;
    swift_willThrow();

    v77 = v51;
LABEL_8:
    v69(v77, v131);
    return v51;
  }

  v127 = v70;
  sub_100009670();
  if (v75)
  {
    v69(v51, v131);
    sub_1000037A0(v72, v74);

    return v51;
  }

  v125 = v72;
  sub_1000037B4();
  v79 = v116;
  v117 = v55;
  v55(v116, v51, v131);
  v80 = v51;
  v51 = 1;
  v81 = sub_1000037F8(v79, 1);
  if (!v81)
  {
    sub_10000374C();
    swift_allocError();
    *v92 = 1;
    swift_willThrow();
    sub_1000037A0(v125, v74);

    v77 = v80;
    goto LABEL_8;
  }

  v82 = v81;
  v123 = v74;
  v124 = v69;
  v118 = v56;
  [v81 open];
  v83 = swift_allocObject();
  *(v83 + 16) = 1;
  v84 = swift_allocObject();
  v85 = v115;
  v86 = v130;
  *(v84 + 16) = v115;
  *(v84 + 24) = v86;
  v136 = sub_100003B14;
  v137 = v84;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_1000045C8;
  v135 = &unk_10000C998;
  v87 = _Block_copy(&aBlock);

  v88 = swift_allocObject();
  v88[2] = v83;
  v88[3] = v82;
  v88[4] = v85;
  v88[5] = v86;
  v136 = sub_100003F40;
  v137 = v88;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_1000045C8;
  v135 = &unk_10000C9E8;
  v89 = _Block_copy(&aBlock);

  v90 = v82;

  v91 = [v120 sinkWithCompletion:v87 receiveInput:v89];
  _Block_release(v89);
  _Block_release(v87);

  sub_100003F4C();
  v130 = v83;
  v121 = 0;
  v93 = v114;
  sub_1000097C0();
  v94 = v113;
  v117(v113, v129, v131);
  v95 = sub_1000097B0();
  v96 = sub_100009900();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v99 = v131;
    v100 = v98;
    aBlock = v98;
    *v97 = 136315138;
    sub_10000435C();
    v101 = sub_100009990();
    v103 = v102;
    v124(v94, v99);
    v104 = sub_100008AC8(v101, v103, &aBlock);

    *(v97 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v95, v96, "InteractionStoreAttachment: finished writing to: %s", v97, 0xCu);
    sub_1000043B4(v100);
    sub_100004610();
    sub_100004610();

    v105 = v114;
  }

  else
  {

    v124(v94, v131);
    v105 = v93;
  }

  v127(v105, v119);
  v106 = v122;
  v107 = v129;
  v108 = v131;
  v117(v122, v129, v131);
  sub_100002104(v106, 0, 1, v108);
  v109 = objc_allocWithZone(DEAttachmentItem);
  result = sub_10000896C(v106);
  v110 = v120;
  v111 = v123;
  if (result)
  {
    v51 = result;

    [v90 close];
    sub_1000037A0(v125, v111);

    v124(v107, v131);
    return v51;
  }

  __break(1u);
  return result;
}

id sub_100003588()
{
  v0 = sub_1000096A0();
  v1 = sub_1000045D0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6, v7);
  sub_1000045E4();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(BMPublisherOptions) init];
  sub_100009690();
  isa = sub_100009680().super.isa;
  (*(v3 + 8))(v10, v0);
  [v11 setStartDate:isa];

  v13 = [BiomeLibrary() IntelligenceEngine];
  swift_unknownObjectRelease();
  v14 = [v13 Interaction];
  swift_unknownObjectRelease();
  v15 = [v14 Donation];
  swift_unknownObjectRelease();
  v16 = sub_100009830();
  v17 = [v15 publisherWithUseCase:v16 options:v11];

  return v17;
}

unint64_t sub_10000374C()
{
  result = qword_100010288;
  if (!qword_100010288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010288);
  }

  return result;
}

uint64_t sub_1000037A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000020AC(a1, a2);
  }

  return a1;
}

unint64_t sub_1000037B4()
{
  result = qword_100010290;
  if (!qword_100010290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010290);
  }

  return result;
}

id sub_1000037F8(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100009600(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6 append:a2 & 1];

  v9 = sub_100009640();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

id sub_1000038AC(void *a1)
{
  v2 = sub_1000097D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 state];
  if (result)
  {
    sub_1000097C0();
    v10 = a1;
    v11 = sub_1000097B0();
    v12 = sub_1000098F0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v18 = [v10 error];
      sub_100001770(&qword_1000102A8, &unk_10000A170);
      v15 = sub_100009880();
      v17 = sub_100008AC8(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "InteractionStoreAttachment: failed to fully publish events: %s", v13, 0xCu);
      sub_1000043B4(v14);
    }

    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

uint64_t sub_100003ADC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100003B14(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000038AC(a1);
}

uint64_t sub_100003B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100003B34(void *a1, uint64_t a2)
{
  v4 = sub_1000097D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7, v8);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    sub_100003F4C();
  }

  swift_beginAccess();
  *(a2 + 16) = 0;
  v11 = [a1 eventBody];
  if (v11)
  {
    v12 = v11;
    v28 = v4;
    v13 = [v11 jsonDictionary];
    sub_100009810();

    v14 = objc_opt_self();
    isa = sub_100009800().super.isa;

    v29[0] = 0;
    v16 = [v14 dataWithJSONObject:isa options:3 error:v29];

    v17 = v29[0];
    if (v16)
    {
      v18 = sub_100009650();
      v20 = v19;

      sub_10000408C(v18, v20);
      sub_1000020AC(v18, v20);
    }

    else
    {
      v21 = v17;
      sub_1000095F0();

      swift_willThrow();
      v22 = v28;
      sub_1000097C0();
      swift_errorRetain();
      v23 = sub_1000097B0();
      v24 = sub_1000098F0();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        swift_errorRetain();
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&_mh_execute_header, v23, v24, "InteractionStoreAttachment: error during event processing: %@", v25, 0xCu);
        sub_100004558(v26);
      }

      else
      {
      }

      (*(v5 + 8))(v10, v22);
    }
  }
}

uint64_t sub_100003EF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100003F40(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  sub_100003B34(a1, v1[2]);
}

uint64_t sub_100003F4C()
{
  v0 = sub_100009870();
  v1 = sub_1000045D0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6, v7);
  sub_1000045E4();
  v10 = v9 - v8;
  sub_100009860();
  v11 = sub_100009840();
  v13 = v12;
  (*(v3 + 8))(v10, v0);
  if (v13 >> 60 == 15)
  {
    sub_10000374C();
    swift_allocError();
    *v14 = 3;
    return swift_willThrow();
  }

  else
  {
    sub_10000408C(v11, v13);
    return sub_1000037A0(v11, v13);
  }
}

uint64_t sub_10000408C(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = v2;
      sub_100004500(a1, a2);
      v11 = sub_1000095C0();
      if (!v11)
      {
        goto LABEL_15;
      }

      v16 = sub_1000095E0();
      if (__OFSUB__(a1, v16))
      {
LABEL_25:
        __break(1u);
        JUMPOUT(0x100004218);
      }

      v11 += a1 - v16;
LABEL_15:
      v14 = (a1 >> 32) - a1;
LABEL_16:
      v17 = sub_1000095D0();
      if (v17 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v17;
      }

      v19 = v18 + v11;
      if (v11)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      sub_100004294(v11, v20, v10);

      return sub_1000020AC(a1, a2);
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
      v10 = v2;
      sub_100004500(a1, a2);
      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v11 = sub_1000095C0();
      if (!v11)
      {
        goto LABEL_6;
      }

      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v12 = sub_1000095E0();
      if (__OFSUB__(v8, v12))
      {
        goto LABEL_24;
      }

      v11 += v8 - v12;
LABEL_6:
      v13 = __OFSUB__(v9, v8);
      v14 = v9 - v8;
      if (!v13)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_9:
      v5 = v2;
      v7 = 0;
      v6 = 0;
      return sub_100004400(v7, v6, v5, a1, a2);
    case 3uLL:
      goto LABEL_9;
    default:
      v5 = v2;
      v6 = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = a1;
      return sub_100004400(v7, v6, v5, a1, a2);
  }
}

void sub_10000422C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100004294(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = [a3 write:a1 maxLength:sub_100009660()];
    result = sub_100009660();
    if (v3 == result)
    {
      return result;
    }

    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  sub_10000374C();
  swift_allocError();
  *v6 = v5;
  return swift_willThrow();
}

unint64_t sub_10000435C()
{
  result = qword_100010298;
  if (!qword_100010298)
  {
    sub_100009640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010298);
  }

  return result;
}

uint64_t sub_1000043B4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004400(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v11 = a1;
  v13 = WORD2(a2);
  v12 = a2;
  v8 = [a3 write:&v11 maxLength:sub_100009660()];
  if (v8 != sub_100009660())
  {
    sub_10000374C();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  return sub_1000020AC(a4, a5);
}

uint64_t sub_100004500(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100004558(uint64_t a1)
{
  v2 = sub_100001770(&qword_1000102A0, &qword_10000A200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004610()
{
}

uint64_t sub_10000463C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000097D0();
    v9 = a1 + *(a3 + 20);

    return sub_1000017B8(v9, a2, v8);
  }
}

uint64_t sub_1000046D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000097D0();
    v8 = v5 + *(a4 + 20);

    return sub_100002104(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TranscriptAttachment()
{
  result = qword_100010308;
  if (!qword_100010308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000047A4()
{
  result = sub_1000097D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void **sub_100004820()
{
  v1 = sub_100001770(&qword_100010280, &unk_10000A160);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3, v4);
  v129 = v118 - v5;
  v134 = type metadata accessor for TranscriptAttachment();
  v6 = sub_1000045D0(v134);
  v130 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6, v10, v11);
  v131 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009870();
  v132 = sub_1000045D0(v12);
  v133 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v132, v16, v17);
  v19 = v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100009640();
  v21 = sub_1000045D0(v20);
  v136 = v22;
  v24 = *(v23 + 64);
  v27 = __chkstk_darwin(v21, v25, v26);
  v29 = v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v27, v30, v31);
  v34 = (v118 - v33);
  v37 = __chkstk_darwin(v32, v35, v36);
  v135 = v118 - v38;
  __chkstk_darwin(v37, v39, v40);
  v42 = (v118 - v41);
  v43 = sub_1000052E0();
  v44 = v0;
  v45 = v137;
  sub_1000027B8(v42);
  if (v45)
  {

    return v42;
  }

  v123 = v9;
  v124 = v34;
  v137 = 0;
  v126 = v19;
  v122 = v29;
  v127 = v43;
  v46 = *(v134 + 20);
  v47 = v136;
  v48 = *(v136 + 16);
  v134 = v42;
  v125 = v136 + 16;
  v48(v135, v42, v20);
  v121 = v46;
  v49 = sub_1000097B0();
  v50 = sub_100009900();
  v51 = v44;
  v52 = v20;
  if (os_log_type_enabled(v49, v50))
  {
    v53 = swift_slowAlloc();
    v128 = v20;
    v54 = v53;
    v55 = swift_slowAlloc();
    aBlock = v55;
    *v54 = 136315138;
    sub_100006320();
    sub_1000062D0(v56, v57);
    v58 = v135;
    v59 = sub_100009990();
    v60 = v51;
    v61 = v48;
    v63 = v62;
    v135 = *(v136 + 8);
    (v135)(v58, v128);
    v64 = sub_100008AC8(v59, v63, &aBlock);
    v48 = v61;
    v51 = v60;

    *(v54 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v49, v50, "TranscriptAttachment: file path: %s", v54, 0xCu);
    sub_1000043B4(v55);
    sub_100004610();
    v52 = v128;
    v65 = v137;
    sub_100004610();
  }

  else
  {

    v66 = v135;
    v135 = *(v47 + 8);
    (v135)(v66, v20);
    v65 = v137;
  }

  v42 = v134;
  sub_100009670();
  v68 = v126;
  v67 = v127;
  if (v65)
  {
    (v135)(v42, v52);

    return v42;
  }

  v120 = v51;
  sub_1000054C0();
  v69 = v124;
  v48(v124, v42, v52);
  v71 = sub_100007CE8(v69);
  v137 = 0;
  v124 = v48;
  sub_100009860();
  v42 = sub_100009840();
  v73 = v72;
  v74 = v133[1];
  ++v133;
  result = v74(v68, v132);
  v75 = v131;
  if (v73 >> 60 == 15)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  aBlock = v42;
  v139 = v73;
  v76 = sub_100005504();
  v77 = v71;
  v78 = v137;
  sub_1000098E0();
  if (v78)
  {
    sub_1000020AC(aBlock, v139);
    sub_1000019A4(v71);

    (v135)(v134, v52);
    return v42;
  }

  v118[1] = v76;
  v137 = 0;
  v128 = v52;
  v79 = v123;
  sub_1000020AC(aBlock, v139);
  v80 = swift_allocObject();
  *(v80 + 16) = 1;
  sub_100009700();
  v81 = swift_allocBox();
  v119 = v74;
  v135 = v81;
  sub_1000096F0();
  sub_1000096E0();
  v82 = v120;
  sub_100005828(v120, v75);
  v83 = v75;
  v84 = v130[80];
  v85 = v79;
  v86 = swift_allocObject();
  sub_10000595C(v83, v86 + ((v84 + 16) & ~v84));
  v142 = sub_1000059C0;
  v143 = v86;
  aBlock = _NSConcreteStackBlock;
  v139 = 1107296256;
  v140 = sub_1000045C8;
  v141 = &unk_10000CA88;
  v130 = _Block_copy(&aBlock);

  sub_100005828(v82, v83);
  v87 = (v84 + 32) & ~v84;
  v88 = swift_allocObject();
  *(v88 + 16) = v80;
  *(v88 + 24) = v77;
  sub_10000595C(v83, v88 + v87);
  *(v88 + ((v85 + v87 + 7) & 0xFFFFFFFFFFFFFFF8)) = v135;
  v142 = sub_1000061C0;
  v143 = v88;
  aBlock = _NSConcreteStackBlock;
  v139 = 1107296256;
  v89 = v127;
  v140 = sub_10000422C;
  v141 = &unk_10000CAD8;
  v90 = _Block_copy(&aBlock);
  v131 = v80;

  v91 = v77;

  v92 = v130;
  v93 = [v89 sinkWithCompletion:v130 receiveInput:v90];
  _Block_release(v90);
  _Block_release(v92);

  v94 = v126;
  sub_100009860();
  v95 = sub_100009840();
  v97 = v96;
  result = v119(v94, v132);
  if (v97 >> 60 == 15)
  {
    goto LABEL_22;
  }

  aBlock = v95;
  v139 = v97;
  v98 = v137;
  sub_1000098E0();
  v42 = v98;
  v99 = v136;
  v100 = v122;
  if (v98)
  {
    sub_1000020AC(aBlock, v139);

    sub_1000019A4(v91);

    (*(v99 + 8))(v134, v128);
    return v42;
  }

  v137 = 0;
  sub_1000020AC(aBlock, v139);
  v101 = v134;
  v102 = v128;
  v124(v100, v134, v128);
  v103 = sub_1000097B0();
  v104 = sub_100009900();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = v100;
    v133 = swift_slowAlloc();
    aBlock = v133;
    *v105 = 136315138;
    sub_100006320();
    sub_1000062D0(v107, v108);
    v109 = sub_100009990();
    v111 = v110;
    v112 = *(v136 + 8);
    v112(v106, v102);
    v113 = sub_100008AC8(v109, v111, &aBlock);

    *(v105 + 4) = v113;
    _os_log_impl(&_mh_execute_header, v103, v104, "TranscriptAttachment: finished writing to: %s", v105, 0xCu);
    sub_1000043B4(v133);
    sub_100004610();
    v101 = v134;
    sub_100004610();
  }

  else
  {

    v112 = *(v99 + 8);
    v112(v100, v102);
  }

  v114 = v129;
  v124(v129, v101, v102);
  sub_100002104(v114, 0, 1, v102);
  v115 = objc_allocWithZone(DEAttachmentItem);
  result = sub_10000896C(v114);
  v116 = v127;
  if (result)
  {
    v117 = v101;
    v42 = result;

    sub_1000019A4(v91);

    v112(v117, v102);
    return v42;
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_1000052E0()
{
  v0 = sub_1000096A0();
  v1 = sub_1000045D0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(BMPublisherOptions) init];
  sub_100009690();
  isa = sub_100009680().super.isa;
  (*(v3 + 8))(v9, v0);
  [v10 setStartDate:isa];

  [v10 setLastN:256];
  v12 = [BiomeLibrary() IntelligenceFlow];
  swift_unknownObjectRelease();
  v13 = [v12 Transcript];
  swift_unknownObjectRelease();
  v14 = [v13 Datastream];
  swift_unknownObjectRelease();
  v15 = sub_100009830();
  v16 = [v14 publisherWithUseCase:v15 options:v10];

  return v16;
}

unint64_t sub_1000054C0()
{
  result = qword_100010340;
  if (!qword_100010340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010340);
  }

  return result;
}

unint64_t sub_100005504()
{
  result = qword_100010348;
  if (!qword_100010348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010348);
  }

  return result;
}

void sub_100005568(void *a1)
{
  v2 = [a1 state];
  v3 = *(type metadata accessor for TranscriptAttachment() + 20);
  if (v2 == 1)
  {
    v6 = a1;
    oslog = sub_1000097B0();
    v7 = sub_1000098F0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      [v6 error];
      sub_100001770(&qword_1000102A8, &unk_10000A170);
      v10 = sub_100009880();
      v12 = sub_100008AC8(v10, v11, &v19);

      *(v8 + 4) = v12;
      v13 = "TranscriptAttachment: failed to fully publish events: %s";
LABEL_9:
      _os_log_impl(&_mh_execute_header, oslog, v7, v13, v8, 0xCu);
      sub_1000043B4(v9);

      return;
    }
  }

  else
  {
    if (!v2)
    {
      oslog = sub_1000097B0();
      v4 = sub_100009900();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v4, "TranscriptAttachment: finished publishing events successfully", v5, 2u);
      }

      goto LABEL_10;
    }

    v14 = a1;
    oslog = sub_1000097B0();
    v7 = sub_1000098F0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      [v14 state];
      type metadata accessor for BPSCompletionState();
      v15 = sub_100009880();
      v17 = sub_100008AC8(v15, v16, &v19);

      *(v8 + 4) = v17;
      v13 = "TranscriptAttachment: unknown completion state: %s";
      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t sub_100005828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptAttachment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000588C()
{
  v2 = type metadata accessor for TranscriptAttachment();
  sub_100006338(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + v5 + 8);

  v9 = *(v0 + 28);
  v10 = sub_1000097D0();
  sub_10000634C(v10);
  (*(v11 + 8))(v1 + v5 + v9);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_10000595C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptAttachment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000059C0(void *a1)
{
  v2 = *(*(type metadata accessor for TranscriptAttachment() - 8) + 80);

  sub_100005568(a1);
}

uint64_t sub_100005A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100005A48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v7 = sub_100009700();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  __chkstk_darwin(v7, v9, v10);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009720();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14, v15);
  v52 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000097F0();
  v51 = *(v54 - 8);
  v17 = *(v51 + 64);
  __chkstk_darwin(v54, v18, v19);
  v53 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100009870();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24, v25);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = swift_projectBox();
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v28 = v56;
  }

  else
  {
    v29 = v7;
    v30 = a4;
    sub_100009860();
    v31 = sub_100009840();
    v33 = v32;
    (*(v22 + 8))(v27, v21);
    if (v33 >> 60 == 15)
    {
      __break(1u);
      return;
    }

    *&v57 = v31;
    *(&v57 + 1) = v33;
    sub_100005504();
    sub_1000098E0();
    sub_1000020AC(v57, *(&v57 + 1));
    a4 = v30;
    v7 = v29;
    v28 = v56;
  }

  swift_beginAccess();
  *(a2 + 16) = 0;
  v34 = [a1 eventBody];
  if (v34 && (v35 = sub_100006260(v34), v36 >> 60 != 15))
  {
    v41 = v35;
    v42 = v36;
    v60 = v35;
    v61 = v36;
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_100004500(v35, v36);
    sub_100009710();
    sub_1000062D0(&qword_100010350, &type metadata accessor for TranscriptProtoEvent);
    sub_100009740();
    v56 = v41;
    sub_1000097E0();
    v43 = v49;
    swift_beginAccess();
    v44 = v50;
    (*(v28 + 16))(v50, v43, v7);
    v45 = sub_100009730();
    v47 = v46;
    (*(v28 + 8))(v44, v7);
    v60 = v45;
    v61 = v47;
    sub_100005504();
    sub_1000098E0();
    v48 = v56;
    (*(v51 + 8))(v53, v54);
    sub_1000037A0(v48, v42);
    sub_1000020AC(v45, v47);
  }

  else
  {
    v37 = a4 + *(type metadata accessor for TranscriptAttachment() + 20);
    v38 = sub_1000097B0();
    v39 = sub_1000098F0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "TranscriptAttachment: event has no data", v40, 2u);
    }
  }
}

uint64_t sub_1000060CC()
{
  v2 = type metadata accessor for TranscriptAttachment();
  sub_100006338(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);

  v9 = v1 + v5;
  v10 = *(v9 + 8);

  v11 = *(v0 + 28);
  v12 = sub_1000097D0();
  sub_10000634C(v12);
  (*(v13 + 8))(v9 + v11);
  v14 = *(v1 + v7);

  return _swift_deallocObject(v1, v7 + 8, v4 | 7);
}

void sub_1000061C0(void *a1)
{
  v3 = *(type metadata accessor for TranscriptAttachment() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_100005A48(a1, v6, v7, v1 + v4);
}

uint64_t sub_100006260(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100009650();

  return v3;
}

uint64_t sub_1000062D0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_100006360(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001770(&qword_100010280, &unk_10000A160);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6, v7);
  v109 = &v96[-v8];
  v9 = sub_100009870();
  v111 = *(v9 - 8);
  v112 = v9;
  v10 = *(v111 + 64);
  __chkstk_darwin(v9, v11, v12);
  v110 = &v96[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1000097D0();
  v114 = *(v14 - 8);
  v15 = *(v114 + 64);
  v18 = __chkstk_darwin(v14, v16, v17);
  v20 = &v96[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v18, v21, v22);
  v25 = &v96[-v24];
  __chkstk_darwin(v23, v26, v27);
  v113 = &v96[-v28];
  v118 = sub_100009640();
  v115 = *(v118 - 8);
  v29 = *(v115 + 64);
  v32 = __chkstk_darwin(v118, v30, v31);
  v34 = &v96[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __chkstk_darwin(v32, v35, v36);
  v39 = &v96[-v38];
  v42 = __chkstk_darwin(v37, v40, v41);
  v116 = &v96[-v43];
  __chkstk_darwin(v42, v44, v45);
  v47 = &v96[-v46];
  v48 = v117;
  sub_10000797C(a1, a2, &v96[-v46]);
  if (v48)
  {
    return v25;
  }

  v104 = v39;
  v105 = a2;
  v102 = a1;
  v99 = v34;
  v103 = v20;
  v108 = v14;
  v117 = 0;
  v100 = v25;
  v101 = "8";
  v49 = v113;
  sub_1000097C0();
  v50 = v115;
  v25 = (v115 + 16);
  v51 = *(v115 + 16);
  v107 = v47;
  v51(v116, v47, v118);
  v52 = sub_1000097B0();
  v53 = sub_100009900();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v97 = v53;
    v55 = v54;
    v98 = swift_slowAlloc();
    v119 = v98;
    *v55 = 136315394;
    v121 = &type metadata for ElementHierarchyAttachment;
    sub_100001770(&qword_1000103B0, &qword_10000A248);
    v56 = sub_100009880();
    v58 = v50;
    v59 = v51;
    v60 = sub_100008AC8(v56, v57, &v119);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2080;
    sub_10000435C();
    v61 = v116;
    v62 = sub_100009990();
    v64 = v63;
    v106 = *(v58 + 8);
    v106(v61, v118);
    v65 = sub_100008AC8(v62, v64, &v119);
    v51 = v59;

    *(v55 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v97, "%s: file path: %s", v55, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v106 = *(v50 + 8);
    v106(v116, v118);
  }

  v66 = *(v114 + 8);
  (v66)(v49, v108);
  v67 = v107;
  v68 = v117;
  sub_100009670();
  if (v68)
  {
    v106(v67, v118);
    return v25;
  }

  sub_100009238(0, &qword_100010340, NSFileHandle_ptr);
  v69 = v104;
  v51(v104, v67, v118);
  v70 = sub_100007CE8(v69);
  v113 = v66;
  v104 = v51;
  v105 = v25;
  v116 = v70;
  sub_100001648();

  v71 = v110;
  sub_100009860();
  v72 = sub_100009840();
  v74 = v73;

  result = (*(v111 + 8))(v71, v112);
  if (v74 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v119 = v72;
    v120 = v74;
    sub_100005504();
    sub_1000098E0();
    v76 = v113;
    v117 = 0;
    sub_1000020AC(v119, v120);
    v77 = v100;
    sub_1000097C0();
    v78 = v99;
    (v104)(v99, v67, v118);
    v79 = sub_1000097B0();
    v80 = sub_100009900();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = v78;
      v82 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v82 = 136315394;
      v121 = &type metadata for ElementHierarchyAttachment;
      sub_100001770(&qword_1000103B0, &qword_10000A248);
      v83 = sub_100009880();
      v85 = sub_100008AC8(v83, v84, &v119);

      *(v82 + 4) = v85;
      *(v82 + 12) = 2080;
      sub_10000435C();
      v86 = sub_100009990();
      v88 = v87;
      v106(v81, v118);
      v89 = sub_100008AC8(v86, v88, &v119);

      *(v82 + 14) = v89;
      _os_log_impl(&_mh_execute_header, v79, v80, "%s: finished writing to: %s", v82, 0x16u);
      swift_arrayDestroy();

      v90 = v100;
    }

    else
    {

      v106(v78, v118);
      v90 = v77;
    }

    v76(v90, v108);
    v91 = v109;
    v92 = v107;
    v93 = v118;
    (v104)(v109, v107, v118);
    sub_100002104(v91, 0, 1, v93);
    v94 = objc_allocWithZone(DEAttachmentItem);
    result = sub_10000896C(v91);
    if (result)
    {
      v25 = result;
      v95 = v116;
      sub_1000019A4(v116);

      v106(v92, v118);
      return v25;
    }
  }

  __break(1u);
  return result;
}

char *sub_100006E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001770(&qword_100010280, &unk_10000A160);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6, v7);
  v109 = &v98 - v8;
  v9 = sub_100009870();
  v110 = *(v9 - 8);
  v111 = v9;
  v10 = *(v110 + 64);
  __chkstk_darwin(v9, v11, v12);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000097D0();
  v113 = *(v15 - 8);
  v16 = *(v113 + 64);
  v19 = __chkstk_darwin(v15, v17, v18);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v19, v22, v23);
  v26 = &v98 - v25;
  __chkstk_darwin(v24, v27, v28);
  v114 = (&v98 - v29);
  v118 = sub_100009640();
  v116 = *(v118 - 8);
  v30 = v116[8];
  v33 = __chkstk_darwin(v118, v31, v32);
  v35 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v33, v36, v37);
  v40 = &v98 - v39;
  v43 = __chkstk_darwin(v38, v41, v42);
  v112 = &v98 - v44;
  __chkstk_darwin(v43, v45, v46);
  v117 = &v98 - v47;
  v48 = v115;
  sub_10000797C(a1, a2, &v98 - v47);
  if (v48)
  {
    return v35;
  }

  v102 = a1;
  v103 = v40;
  v105 = v14;
  v106 = a2;
  v99 = v35;
  v107 = v21;
  v108 = 0;
  v115 = v15;
  v100 = v26;
  v101 = "8";
  sub_1000097C0();
  v49 = (v116 + 2);
  v50 = v112;
  v104 = v116[2];
  v104(v112, v117, v118);
  v51 = sub_1000097B0();
  v52 = sub_100009900();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v53 = 136315394;
    v121 = &type metadata for UIElementsAttachment;
    sub_100001770(&qword_1000103A0, &qword_10000A238);
    v54 = sub_100009880();
    v56 = sub_100008AC8(v54, v55, &v119);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2080;
    sub_10000435C();
    v57 = sub_100009990();
    v59 = v58;
    v60 = v50;
    v61 = v116[1];
    v61(v60, v118);
    v62 = sub_100008AC8(v57, v59, &v119);

    *(v53 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v51, v52, "%s: file path: %s", v53, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v63 = v50;
    v61 = v116[1];
    v61(v63, v118);
  }

  v64 = *(v113 + 8);
  v64(v114, v115);
  v35 = v106;
  v65 = v105;
  v66 = v108;
  sub_100009670();
  if (v66)
  {
    v61(v117, v118);
    return v35;
  }

  v114 = v64;
  sub_100009238(0, &qword_100010340, NSFileHandle_ptr);
  v67 = v103;
  v104(v103, v117, v118);
  v68 = sub_100007CE8(v67);
  v69 = v49;
  v70 = v68;
  v107 = v69;
  sub_100001B24();
  v112 = v70;
  v108 = v61;

  sub_100009860();
  v71 = sub_100009840();
  v73 = v72;

  result = (*(v110 + 8))(v65, v111);
  if (v73 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v119 = v71;
    v120 = v73;
    sub_100005504();
    v75 = v112;
    sub_1000098E0();
    sub_1000020AC(v119, v120);
    v76 = v100;
    sub_1000097C0();
    v77 = v99;
    v78 = v104;
    v104(v99, v117, v118);
    v79 = sub_1000097B0();
    v80 = sub_100009900();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v108;
    if (v81)
    {
      v83 = swift_slowAlloc();
      LODWORD(v111) = v80;
      v84 = v83;
      v119 = swift_slowAlloc();
      *v84 = 136315394;
      v121 = &type metadata for UIElementsAttachment;
      sub_100001770(&qword_1000103A0, &qword_10000A238);
      v85 = sub_100009880();
      v87 = sub_100008AC8(v85, v86, &v119);

      *(v84 + 4) = v87;
      *(v84 + 12) = 2080;
      sub_10000435C();
      v88 = v118;
      v89 = sub_100009990();
      v91 = v90;
      v92 = v88;
      v78 = v104;
      v82(v77, v92);
      v93 = sub_100008AC8(v89, v91, &v119);

      *(v84 + 14) = v93;
      _os_log_impl(&_mh_execute_header, v79, v111, "%s: finished writing to: %s", v84, 0x16u);
      swift_arrayDestroy();
      v75 = v112;

      v94 = v100;
    }

    else
    {

      v82(v77, v118);
      v94 = v76;
    }

    v114(v94, v115);
    v95 = v109;
    v96 = v118;
    v78(v109, v117, v118);
    sub_100002104(v95, 0, 1, v96);
    v97 = objc_allocWithZone(DEAttachmentItem);
    result = sub_10000896C(v95);
    if (result)
    {
      v35 = result;
      sub_1000019A4(v75);

      v82(v117, v118);
      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v44 = a3;
  v45 = a1;
  v3 = sub_1000096D0();
  v4 = sub_1000045D0(v3);
  v48 = v5;
  v49 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009640();
  v13 = sub_1000045D0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v20 = __chkstk_darwin(v13, v18, v19);
  v47 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v20, v22, v23);
  v26 = &v44 - v25;
  __chkstk_darwin(v24, v27, v28);
  v30 = &v44 - v29;
  v31 = objc_opt_self();
  v32 = [v31 defaultManager];
  v33 = [v32 temporaryDirectory];

  sub_100009630();
  sub_100009620();
  v34 = *(v15 + 8);
  v50 = v12;
  v34(v26, v12);
  sub_1000096C0();
  sub_1000096B0();
  (*(v48 + 8))(v11, v49);
  v35 = v47;
  sub_100009620();

  v36 = [v31 defaultManager];
  sub_100009600(v37);
  v39 = v38;
  v51 = 0;
  LOBYTE(v11) = [v36 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:&v51];

  if (v11)
  {
    v40 = v51;
    sub_100009610();
  }

  else
  {
    v43 = v51;
    sub_1000095F0();

    swift_willThrow();
  }

  v41 = v50;
  v34(v35, v50);
  return (v34)(v30, v41);
}

id sub_100007CE8(uint64_t a1)
{
  sub_100009600(__stack_chk_guard);
  v3 = v2;
  v14 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v14];

  v5 = v14;
  if (v4)
  {
    v6 = sub_100009640();
    sub_1000094B4(v6);
    v8 = *(v7 + 8);
    v9 = v5;
    v8(a1, v6);
  }

  else
  {
    v10 = v14;
    sub_1000095F0();

    swift_willThrow();
    v11 = sub_100009640();
    sub_1000094B4(v11);
    (*(v12 + 8))(a1);
  }

  return v4;
}

Swift::OpaquePointer_optional __swiftcall Diagnostics.attachments(forParameters:)(Swift::OpaquePointer_optional forParameters)
{
  v2 = v1;
  rawValue = forParameters.value._rawValue;
  v4 = type metadata accessor for TranscriptAttachment();
  v5 = sub_1000094B4(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8, v9);
  v11 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR____TtC27IntelligenceFlowDiagnostics11Diagnostics_logger;

  v13 = sub_1000097B0();
  v14 = sub_100009900();
  if (os_log_type_enabled(v13, v14))
  {
    v34[0] = v4;
    v34[1] = v2;
    v34[2] = v12;
    v15 = sub_100009538();
    v16 = swift_slowAlloc();
    v37[0] = v16;
    *v15 = 136315138;
    if (rawValue)
    {
      v18 = v16;

      v19 = sub_100009820();
      v21 = sub_100008AC8(v19, v20, v37);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "IntelligenceFlowDiagnostics: gathering attachments with parameters: %s", v15, 0xCu);
      sub_1000043B4(v18);
      sub_100004610();
      sub_100004610();

      v40 = &_swiftEmptyArrayStorage;
      v4 = v34[0];
      goto LABEL_5;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v40 = &_swiftEmptyArrayStorage;
  if (!rawValue)
  {
    goto LABEL_26;
  }

LABEL_5:
  v35 = 0xD00000000000002DLL;
  v36 = 0x800000010000A320;
  sub_100009940();
  sub_100008574(v37, rawValue, &v38);
  sub_100008A18(v37);
  if (!v39)
  {
    sub_100009038(&v38, &qword_100010358, &qword_10000A210);
LABEL_10:
    v23 = sub_1000097B0();
    v24 = sub_100009900();
    if (os_log_type_enabled(v23, v24))
    {
      *swift_slowAlloc() = 0;
      sub_1000094F8(&_mh_execute_header, v25, v26, "IntelligenceFlowDiagnostics: user did not give consent.");
      sub_100004610();
    }

    v27 = sub_1000085D8(&_swiftEmptyArrayStorage);
    goto LABEL_13;
  }

  if (!swift_dynamicCast() || (v35 & 1) == 0)
  {
    goto LABEL_10;
  }

  *v11 = 0xD000000000000020;
  v11[1] = 0x800000010000A350;
  v22 = v11 + *(v4 + 20);
  sub_1000097C0();
  sub_100004820();
  sub_100008A6C(v11);
  sub_1000098A0();
  sub_1000094C4();
  if (v28)
  {
    sub_1000094D8();
  }

  sub_1000098D0();
  sub_100002B10(0xD000000000000026, 0x800000010000A3A0);
  sub_1000098A0();
  sub_1000094C4();
  if (v28)
  {
    sub_1000094D8();
  }

  sub_1000098D0();
  sub_100006360(0xD00000000000002CLL, 0x800000010000A3D0);
  sub_1000098A0();
  sub_1000094C4();
  if (v28)
  {
    sub_1000094D8();
  }

  sub_1000098D0();
  sub_100006E94(0xD000000000000027, 0x800000010000A400);
  sub_1000098A0();
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000098C0();
  }

  sub_1000098D0();
  v29 = v40;
  v30 = sub_1000097B0();
  v31 = sub_100009900();
  if (os_log_type_enabled(v30, v31))
  {
    *swift_slowAlloc() = 0;
    sub_1000094F8(&_mh_execute_header, v32, v33, "IntelligenceFlowDiagnostics: done");
    sub_100004610();
  }

  v27 = sub_1000085D8(v29);

LABEL_13:
  v16 = v27;
LABEL_27:
  result.value._rawValue = v16;
  result.is_nil = v17;
  return result;
}

double sub_100008574@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000091D4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100009174(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

char *sub_1000085D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100009980();
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

  v10 = &_swiftEmptyArrayStorage;
  result = sub_100009218(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_100009960();
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_100009238(0, &qword_1000103B8, DEAttachmentItem_ptr);
      swift_dynamicCast();
      v10 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        sub_100009218((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      v3[2] = v8 + 1;
      sub_100009278(&v9, &v3[4 * v8 + 4]);
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

id Diagnostics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Diagnostics.init()()
{
  ObjectType = swift_getObjectType();
  sub_1000097C0();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id Diagnostics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000896C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009640();
  v6 = 0;
  if (sub_1000017B8(a1, 1, v4) != 1)
  {
    sub_100009600(v5);
    v6 = v7;
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v8 = [v2 initWithPathURL:v6];

  return v8;
}

uint64_t sub_100008A6C(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptAttachment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008AC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008B8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100009174(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000043B4(v11);
  return v7;
}

unint64_t sub_100008B8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100008C8C(a5, a6);
    *a1 = v9;
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
    result = sub_100009970();
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

char *sub_100008C8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100008CD8(a1, a2);
  sub_100008DF0(&off_10000C720);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100008CD8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100009890())
  {
    result = sub_100008ED4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100009950();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_100009970();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100008DF0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100008F44(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100008ED4(uint64_t a1, uint64_t a2)
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

  sub_100001770(&qword_100010398, &unk_10000A228);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100008F44(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001770(&qword_100010398, &unk_10000A228);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100009038(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001770(a2, a3);
  sub_1000094B4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for Diagnostics()
{
  result = qword_100010388;
  if (!qword_100010388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000090E4()
{
  result = sub_1000097D0();
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

uint64_t sub_100009174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000091D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009920(*(v2 + 40));

  return sub_100009394(a1, v4);
}

char *sub_100009218(char *a1, int64_t a2, char a3)
{
  result = sub_100009288(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100009238(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

_OWORD *sub_100009278(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_100009288(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001770(&unk_1000103C0, &qword_10000A250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100009394(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100009458(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100009930();
    sub_100008A18(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000094D8()
{

  return sub_1000098C0();
}

void sub_1000094F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_100009518(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100009538()
{

  return swift_slowAlloc();
}