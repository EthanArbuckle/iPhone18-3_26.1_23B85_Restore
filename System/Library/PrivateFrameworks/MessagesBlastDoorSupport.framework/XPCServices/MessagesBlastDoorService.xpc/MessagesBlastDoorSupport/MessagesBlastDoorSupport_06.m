uint64_t sub_1000A8084(void *a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDCB8, &qword_1000CFD90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000A8850();
  sub_1000C5D04();
  v11[1] = a2;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  sub_100015FB4(&qword_1000FC380);
  sub_1000C5BB4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000A8204@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_1000C19B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1464();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_1000A83CC(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v1)
  {
    sub_1000A70B0(a1);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

unint64_t sub_1000A8378()
{
  result = qword_1000FDC98;
  if (!qword_1000FDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDC98);
  }

  return result;
}

uint64_t sub_1000A83CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A8414()
{
  result = qword_1000FDCA0;
  if (!qword_1000FDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDCA0);
  }

  return result;
}

Swift::Int sub_1000A8488()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

Swift::Int sub_1000A84DC()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

uint64_t sub_1000A8520@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F20F8;
  v7._object = v3;
  v5 = sub_1000C59F4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000A8590@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F2130;
  v8._object = a2;
  v6 = sub_1000C59F4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_1000A85E8(uint64_t a1)
{
  v2 = sub_1000A8850();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A8624(uint64_t a1)
{
  v2 = sub_1000A8850();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000A8660@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000A86A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1000A86A8(uint64_t *a1)
{
  v3 = sub_1000124CC(&qword_1000FDCA8, &unk_1000CFD80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10001530C(a1, a1[3]);
  sub_1000A8850();
  sub_1000C5CF4();
  if (v1)
  {
    sub_100015F68(a1);
  }

  else
  {
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    sub_100015FB4(&qword_1000FC3A8);
    sub_1000C5AC4();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100015F68(a1);
  }

  return v9;
}

unint64_t sub_1000A8850()
{
  result = qword_1000FDCB0;
  if (!qword_1000FDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDCB0);
  }

  return result;
}

unint64_t sub_1000A88B8()
{
  result = qword_1000FDCC0;
  if (!qword_1000FDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDCC0);
  }

  return result;
}

unint64_t sub_1000A8910()
{
  result = qword_1000FDCC8;
  if (!qword_1000FDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDCC8);
  }

  return result;
}

unint64_t sub_1000A8968()
{
  result = qword_1000FDCD0;
  if (!qword_1000FDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDCD0);
  }

  return result;
}

void *sub_1000A89BC()
{
  v2 = v1;
  v3 = sub_1000124CC(&qword_1000FDCD8, &qword_1000CFEE8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v89 - v9;
  __chkstk_darwin(v8);
  v12 = &v89 - v11;
  v13 = sub_1000124CC(&qword_1000FDCE0, &qword_1000CFEF0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v89 - v15;
  v116 = sub_1000C33B4();
  v17 = *(v116 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v116);
  v115 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v112 = &v89 - v21;
  v22 = (v0 + *(type metadata accessor for MessageDictionary() + 116));
  v23 = v22[1];
  if (v23 >> 60 == 15)
  {
    return &_swiftEmptyArrayStorage;
  }

  v106 = v17;
  v107 = v16;
  v92 = v10;
  v105 = v7;
  v24 = *v22;
  sub_100018C68(*v22, v23);
  v113 = v24;
  isa = sub_1000C1544().super.isa;
  v26 = [(objc_class *)isa _imOptionallyDecompressData];

  v27 = sub_1000C1564();
  v29 = v28;

  sub_1000124CC(&qword_1000FC470, &qword_1000C9C80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000CBED0;
  v31 = sub_10001D1A8(0, &qword_1000FC8F8, NSArray_ptr);
  *(v30 + 56) = sub_1000124CC(&qword_1000FDCE8, &qword_1000CFEF8);
  *(v30 + 32) = v31;
  v32 = sub_10001D1A8(0, &qword_1000FC488, NSString_ptr);
  *(v30 + 88) = sub_1000124CC(&qword_1000FC490, &qword_1000C9C90);
  *(v30 + 64) = v32;
  v33 = sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
  *(v30 + 120) = sub_1000124CC(&qword_1000FC4A8, &qword_1000C9CA0);
  *(v30 + 96) = v33;
  v34 = sub_10001D1A8(0, &qword_1000FC478, NSDictionary_ptr);
  *(v30 + 152) = sub_1000124CC(&qword_1000FC480, &qword_1000C9C88);
  *(v30 + 128) = v34;
  v35 = sub_10001D1A8(0, &qword_1000FDCF0, NSMutableArray_ptr);
  *(v30 + 184) = sub_1000124CC(&qword_1000FDCF8, &unk_1000D1270);
  *(v30 + 160) = v35;
  v36 = sub_10001D1A8(0, &qword_1000FC4E0, NSMutableDictionary_ptr);
  *(v30 + 216) = sub_1000124CC(&qword_1000FC4E8, &unk_1000C9CC0);
  *(v30 + 192) = v36;
  v37 = sub_10001D1A8(0, &qword_1000FC500, NSMutableString_ptr);
  *(v30 + 248) = sub_1000124CC(&qword_1000FC508, &unk_1000C9CD0);
  *(v30 + 224) = v37;
  v38 = sub_10001D1A8(0, &qword_1000FDD00, NSNull_ptr);
  *(v30 + 280) = sub_1000124CC(&qword_1000FDD08, &qword_1000CFF00);
  *(v30 + 256) = v38;
  sub_10001D1A8(0, &qword_1000FC510, NSSet_ptr);
  v39 = sub_1000C5614();
  *&v126[0] = 0;
  sub_1000C54A4();
  v110 = v29;
  v111 = v23;
  v114 = v27;
  if (!*&v126[0])
  {
    sub_1000C4FC4();
    sub_100018BFC();
    v65 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    goto LABEL_25;
  }

  v95 = v39;
  v93 = v12;
  v40 = objc_opt_self();
  v41 = sub_1000C5484().super.isa;

  v42 = sub_1000C1544().super.isa;
  *&v126[0] = 0;
  v43 = [v40 _strictlyUnarchivedObjectOfClasses:v41 fromData:v42 error:v126];

  v44 = *&v126[0];
  if (!v43)
  {
    v80 = v44;
    v65 = sub_1000C1474();

    swift_willThrow();
    goto LABEL_25;
  }

  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_10001D804(v128, v126);
  sub_1000124CC(&qword_1000FDD10, &qword_1000CFF08);
  v45 = swift_dynamicCast();
  v46 = v95;
  v47 = v113;
  if (!v45)
  {
    sub_1000C4FC4();
    sub_100018BFC();
    v65 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    sub_100015F68(v128);
    goto LABEL_27;
  }

  v48 = v117;
  v94 = *(v117 + 16);
  if (!v94)
  {
    v51 = &_swiftEmptyArrayStorage;
    v52 = v114;
LABEL_31:

    sub_100018CBC(v47, v23);
    sub_100018CD0(v52, v29);
    sub_100015F68(v128);
    return v51;
  }

  v49 = 0;
  v50 = v107;
  v91 = (v106 + 56);
  v103 = (v106 + 32);
  v51 = &_swiftEmptyArrayStorage;
  v52 = v114;
  v90 = v117;
  while (1)
  {
    if (v49 >= *(v48 + 16))
    {
      __break(1u);
    }

    v109 = v49;
    v53 = *(v48 + 8 * v49 + 32);
    if (v53)
    {
      break;
    }

    (*v91)(v50, 1, 1, v116);
    sub_100018F90(v50, &qword_1000FDCE0, &qword_1000CFEF0);
LABEL_8:
    v49 = v109 + 1;
    if (v94 == v109 + 1)
    {
      goto LABEL_31;
    }
  }

  v108 = v51;
  v54 = v53;
  v55 = sub_1000C1354();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  sub_1000C1344();
  v58 = objc_opt_self();
  v59 = sub_1000C5174().super.isa;
  v104 = v54;

  *&v117 = 0;
  v60 = [v58 dataWithJSONObject:v59 options:0 error:&v117];

  v61 = v117;
  if (!v60)
  {
    v87 = v61;

    v88 = sub_1000C1474();

    v65 = v88;
    swift_willThrow();
LABEL_34:
    sub_100015F68(v128);

    goto LABEL_25;
  }

  v62 = sub_1000C1564();
  v64 = v63;

  sub_1000A97A4();
  sub_1000C1334();
  v65 = v2;
  if (v2)
  {

    sub_100018CD0(v62, v64);
    goto LABEL_34;
  }

  sub_100018CD0(v62, v64);
  v123 = v126[6];
  v124 = v126[7];
  v125[0] = v127[0];
  *(v125 + 10) = *(v127 + 10);
  v119 = v126[2];
  v120 = v126[3];
  v121 = v126[4];
  v122 = v126[5];
  v117 = v126[0];
  v118 = v126[1];
  if (BYTE9(v127[1]) == 2)
  {
    v102 = 0;
    v66 = sub_1000C3394();
    v67 = v93;
    (*(*(v66 - 8) + 56))(v93, 1, 1, v66);
  }

  else
  {
    v68 = v92;
    sub_1000C3384();
    v67 = v93;
    v102 = 0;
    v69 = sub_1000C3394();
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    sub_1000A9868(v68, v67);
  }

  v101 = v117;
  v100 = BYTE8(v117);
  v98 = v119;
  v99 = v118;
  v96 = v121;
  v97 = v120;
  sub_1000A97F8(v67, v105);

  v70 = v107;
  v71 = v102;
  sub_1000C33A4();
  v2 = v71;
  if (!v71)
  {

    sub_10006710C(&v117);
    sub_100018F90(v67, &qword_1000FDCD8, &qword_1000CFEE8);
    v72 = v116;
    (*v91)(v70, 0, 1, v116);
    v73 = *v103;
    v74 = v112;
    (*v103)(v112, v70, v72);
    v73(v115, v74, v72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v111;
    v47 = v113;
    v50 = v70;
    if (isUniquelyReferenced_nonNull_native)
    {
      v52 = v114;
      v76 = v108;
    }

    else
    {
      v76 = sub_100045164(0, v108[2] + 1, 1, v108);
      v52 = v114;
    }

    v78 = v76[2];
    v77 = v76[3];
    v79 = v76;
    if (v78 >= v77 >> 1)
    {
      v79 = sub_100045164(v77 > 1, v78 + 1, 1, v76);
    }

    *(v79 + 16) = v78 + 1;
    v51 = v79;
    v73((v79 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v78), v115, v116);
    v29 = v110;
    v48 = v90;
    goto LABEL_8;
  }

  sub_10006710C(&v117);

  sub_100018F90(v67, &qword_1000FDCD8, &qword_1000CFEE8);
  sub_100015F68(v128);

  v65 = v71;
LABEL_25:
  v47 = v113;
LABEL_27:
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v81 = sub_1000C5714();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1000C94D0;
  *&v126[0] = v65;
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  v83 = sub_1000C4A84();
  v85 = v84;
  *(v82 + 56) = &type metadata for String;
  *(v82 + 64) = sub_100014FBC();
  *(v82 + 32) = v83;
  *(v82 + 40) = v85;
  sub_1000C5554();
  sub_1000C1A44();

  sub_100018CBC(v47, v111);
  sub_100018CD0(v114, v110);

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_1000A97A4()
{
  result = qword_1000FDD18;
  if (!qword_1000FDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDD18);
  }

  return result;
}

uint64_t sub_1000A97F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDCD8, &qword_1000CFEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A9868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDCD8, &qword_1000CFEE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A9930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a2;
  v150 = a1;
  v127[1] = a3;
  v3 = sub_1000124CC(&qword_1000FDD28, &unk_1000CFF60);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v127[0] = v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v131 = v127 - v7;
  v130 = sub_1000C23A4();
  v134 = *(v130 - 8);
  v8 = *(v134 + 64);
  __chkstk_darwin(v130);
  v132 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000124CC(&qword_1000FC608, qword_1000CA058);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v128 = v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v129 = v127 - v15;
  v16 = __chkstk_darwin(v14);
  v133 = v127 - v17;
  __chkstk_darwin(v16);
  v142 = v127 - v18;
  v138 = sub_1000124CC(&qword_1000FDD30, &qword_1000CFF70);
  v135 = *(v138 - 8);
  v19 = *(v135 + 64);
  __chkstk_darwin(v138);
  v140 = v127 - v20;
  v21 = sub_1000124CC(&qword_1000FDD38, &unk_1000CFF78);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v141 = v127 - v23;
  v24 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v137 = v127 - v26;
  v27 = sub_1000124CC(&qword_1000FDD40, &qword_1000CFF88);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v139 = v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v136 = v127 - v32;
  __chkstk_darwin(v31);
  v143 = v127 - v33;
  v151 = sub_1000C4CC4();
  v161 = *(v151 - 8);
  v34 = v161[8];
  v35 = __chkstk_darwin(v151);
  v152 = v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = v127 - v37;
  v39 = sub_1000C4CF4();
  v147 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v43 = v127 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1000C5554();
  v149 = sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v44 = sub_1000C56B4();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v45 = swift_allocObject();
  v144 = xmmword_1000C94D0;
  *(v45 + 16) = xmmword_1000C94D0;
  sub_1000C4CB4();
  v46 = sub_1000C4CD4();
  v48 = v47;
  v49 = *(v40 + 8);
  v146 = v40 + 8;
  v148 = v49;
  v49(v43, v39);
  v157 = v46;
  v158 = v48;
  v50 = sub_1000C4A84();
  v52 = v51;

  *(v45 + 56) = &type metadata for String;
  v53 = sub_100014FBC();
  *(v45 + 64) = v53;
  *(v45 + 32) = v50;
  *(v45 + 40) = v52;
  sub_1000C1A54();

  v145 = sub_1000C5524();
  v54 = sub_1000C56B4();
  v55 = swift_allocObject();
  *(v55 + 16) = v144;
  sub_1000C23D4();
  sub_1000C4CB4();
  v56 = v161[1];
  v57 = v38;
  v58 = v151;
  ++v161;
  v149 = v56;
  v56(v57, v151);
  v59 = sub_1000C4CD4();
  v61 = v60;
  v148(v43, v147);
  v157 = v59;
  v158 = v61;
  v62 = sub_1000C4A84();
  v64 = v63;
  v65 = v152;

  *(v55 + 56) = &type metadata for String;
  *(v55 + 64) = v53;
  *(v55 + 32) = v62;
  *(v55 + 40) = v64;
  sub_1000C1A54();

  sub_1000C23D4();
  v155 = v150;
  v156 = v65;
  sub_10001D1A8(0, &qword_1000FDD48, off_1000EEAD0);
  v66 = v154;
  sub_1000C4C94();
  if (v66)
  {
    return v149(v65, v58);
  }

  v68 = v58;
  v69 = v137;
  v70 = v136;
  v71 = v157;
  v149(v65, v68);
  v161 = v71;
  v72 = [v71 headerImage];
  v73 = v143;
  v74 = v138;
  v75 = v140;
  v76 = v139;
  if (!v72)
  {
    goto LABEL_7;
  }

  v77 = v72;
  v78 = [v72 data];
  if (!v78)
  {

LABEL_7:
    v105 = v135;
    (*(v135 + 56))(v73, 1, 1, v74);
    goto LABEL_8;
  }

  v79 = v78;
  v80 = sub_1000C1564();
  v82 = v81;

  v154 = *(v74 + 48);
  v159 = &type metadata for Data;
  v160 = &protocol witness table for Data;
  v157 = v80;
  v158 = v82;
  v83 = sub_1000C4D54();
  (*(*(v83 - 8) + 56))(v69, 1, 1, v83);
  sub_100018C68(v80, v82);
  sub_1000C4D64();
  v84 = [v77 kind];
  sub_1000AA940(v84, v70 + v154);

  sub_100018CD0(v80, v82);
  v105 = v135;
  (*(v135 + 56))(v70, 0, 1, v74);
  sub_10001D860(v70, v73, &qword_1000FDD40, &qword_1000CFF88);
  v75 = v140;
  v76 = v139;
LABEL_8:
  sub_1000AAE18(v73, v76);
  v85 = 1;
  v86 = (*(v105 + 48))(v76, 1, v74);
  v87 = v142;
  v88 = v141;
  if (v86 != 1)
  {
    sub_10001D860(v76, v75, &qword_1000FDD30, &qword_1000CFF70);
    v89 = v75 + *(v74 + 48);
    sub_1000C23B4();
    sub_100018F90(v75, &qword_1000FDD30, &qword_1000CFF70);
    v85 = 0;
  }

  v90 = sub_1000C23C4();
  v91 = 1;
  (*(*(v90 - 8) + 56))(v88, v85, 1, v90);
  v92 = v161;
  v93 = [v161 backgroundColor];
  if (v93)
  {
    v94 = v93;
    sub_1000C4D14();

    v91 = 0;
  }

  v95 = sub_1000C4D24();
  v96 = *(v95 - 8);
  v97 = *(v96 + 56);
  v98 = 1;
  v152 = v95;
  v153 = v96 + 56;
  v154 = v97;
  v97(v87, v91, 1);
  v99 = [v92 primaryText];
  v100 = [v99 text];

  sub_1000C5224();
  v101 = [v92 primaryText];
  v102 = [v101 overrideColor];

  if (v102)
  {
    v103 = v102;
    sub_1000C4D14();
    v104 = v134;

    v98 = 0;
  }

  else
  {
    v104 = v134;
  }

  v106 = 1;
  (v154)(v133, v98, 1, v152);
  sub_1000C2394();
  v107 = [v92 secondaryText];
  if (v107)
  {
    v108 = v107;
    v109 = [v108 text];
    sub_1000C5224();

    v110 = &MBDHTMLToSuper_MENTION_Frame__classData;
    v111 = [v108 overrideColor];
    if (v111)
    {
      v112 = v111;
      v113 = v129;
      sub_1000C4D14();

      v115 = 0;
    }

    else
    {
      v115 = 1;
      v113 = v129;
    }

    (v154)(v113, v115, 1, v152);
    v114 = v131;
    sub_1000C2394();

    v106 = 0;
    v104 = v134;
  }

  else
  {
    v114 = v131;
    v110 = &MBDHTMLToSuper_MENTION_Frame__classData;
  }

  v116 = *(v104 + 56);
  v117 = 1;
  v118 = v114;
  v119 = v130;
  v116(v118, v106, 1, v130);
  v120 = [v92 tertiaryText];
  if (v120)
  {
    v121 = v120;
    v122 = [v121 text];
    sub_1000C5224();

    v123 = [v121 v110[47].base_prots];
    if (v123)
    {
      v124 = v123;
      sub_1000C4D14();

      v126 = 0;
    }

    else
    {
      v126 = 1;
    }

    (v154)(v128, v126, 1, v152);
    v125 = v127[0];
    sub_1000C2394();

    v117 = 0;
    v119 = v130;
  }

  else
  {
    v125 = v127[0];
  }

  v116(v125, v117, 1, v119);
  sub_1000C23E4();

  return sub_100018F90(v143, &qword_1000FDD40, &qword_1000CFF88);
}

uint64_t sub_1000AA940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = enum case for OrderPreviewImageType.merchantLogo(_:);
    goto LABEL_5;
  }

  if (!a1)
  {
    v3 = enum case for OrderPreviewImageType.productPhoto(_:);
LABEL_5:
    v4 = sub_1000C4224();
    return (*(*(v4 - 8) + 104))(a2, v3, v4);
  }

  sub_1000C5554();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v6 = sub_1000C56B4();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000C94D0;
  type metadata accessor for BDOrderPreviewMetadataImageKind(0);
  v8 = sub_1000C5284();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100014FBC();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1000C1A54();

  v11 = sub_1000C5284();
  v13 = v12;
  sub_1000AB2C0();
  swift_allocError();
  *v14 = v11;
  v14[1] = v13;
  sub_1000C4FC4();
  sub_1000AB314(&qword_1000FC360, &type metadata accessor for Explosion);
  swift_allocError();
  sub_1000C4FD4();
  return swift_willThrow();
}

uint64_t sub_1000AAB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4CF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  sub_1000C4CB4();
  sub_1000C4CD4();
  (*(v5 + 8))(v8, v4);
  v10 = sub_1000C51F4();

  LOBYTE(v4) = [v9 fileExistsAtPath:v10 isDirectory:0];

  if (v4)
  {
    __chkstk_darwin(v11);
    *(&v13 - 2) = a2;
    *(&v13 - 1) = a1;
    sub_10001D1A8(0, &qword_1000FDD48, off_1000EEAD0);
    return sub_1000C4C94();
  }

  else
  {
    sub_1000C4FC4();
    sub_1000AB314(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }
}

uint64_t sub_1000AAE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDD40, &qword_1000CFF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AAE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a2;
  v39 = a3;
  v4 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v42 = &v38 - v6;
  v46 = sub_1000C14E4();
  v45 = *(v46 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v46);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C4CF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v40 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = [objc_opt_self() defaultManager];
  v41 = a1;
  sub_1000C4CB4();
  sub_1000C4CD4();
  v21 = *(v11 + 8);
  v21(v19, v10);
  v22 = sub_1000C51F4();

  v23 = [v20 isWritableFileAtPath:v22];

  if (v23)
  {
    sub_1000C4CB4();
    sub_1000C4CE4();
    v21(v17, v10);
    v24 = v44;
    v25 = sub_1000C1504();
    if (v24)
    {
      return (*(v45 + 8))(v9, v46);
    }

    else
    {
      v28 = v45;
      v29 = *(v45 + 8);
      v43 = v26;
      v44 = v25;
      v30 = v9;
      v31 = v46;
      v29(v30, v46);
      v32 = v40;
      sub_1000C4CB4();
      v33 = v42;
      sub_1000C4CE4();
      v21(v32, v10);
      (*(v28 + 56))(v33, 0, 1, v31);
      v34 = objc_allocWithZone(BDOrderPreviewMetadata);
      v36 = v43;
      v35 = v44;
      v37 = sub_1000AB378(v44, v43, v33);
      result = sub_100018CD0(v35, v36);
      *v39 = v37;
    }
  }

  else
  {
    sub_1000C4FC4();
    sub_1000AB314(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1000AB2C0()
{
  result = qword_1000FDD50;
  if (!qword_1000FDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDD50);
  }

  return result;
}

uint64_t sub_1000AB314(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000AB378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6.super.isa = sub_1000C1544().super.isa;
  v7 = sub_1000C14E4();
  v8 = *(v7 - 8);
  v10 = 0;
  if ((*(v8 + 48))(a3, 1, v7) != 1)
  {
    sub_1000C1494(v9);
    v10 = v11;
    (*(v8 + 8))(a3, v7);
  }

  v16 = 0;
  v12 = [v4 initWithOrderData:v6.super.isa workingDirectory:v10 error:&v16];

  if (v12)
  {
    v13 = v16;
  }

  else
  {
    v14 = v16;
    sub_1000C1474();

    swift_willThrow();
  }

  return v12;
}

uint64_t sub_1000AB4E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  if (*a1)
  {
    sub_10002D3E8(a2, v17 - v7);
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    v17[1] = *(a1 + 40);
    v17[2] = v8;
    v17[3] = v2;
    v12 = *(a1 + 48);
    v18 = a2;
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);

    sub_1000C22B4();
    sub_100016058(a1);
    v15 = v18;
  }

  else
  {
    sub_100016058(a1);
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    v15 = a2;
  }

  return sub_1000AB6AC(v15);
}

uint64_t sub_1000AB6AC(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AB76C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1000C2364();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v26 = &v23 - v6;
  v7 = sub_1000C3F34();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = sub_1000C1554();
  v16 = v15;
  v17 = sub_1000C1464();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_1000ABA98(&qword_1000FDD60, &type metadata accessor for NameAndPhotoSchema);
  v20 = v27;
  sub_1000C1444();
  if (v20)
  {

    return sub_100018CD0(v14, v16);
  }

  else
  {
    v27 = v5;
    (*(v25 + 16))(v11, v13, v7);
    sub_1000C2354();
    v21 = v24;
    (*(v24 + 16))(v27, v26, v1);
    sub_1000C2374();

    sub_100018CD0(v14, v16);
    (*(v21 + 8))(v26, v1);
    return (*(v25 + 8))(v13, v7);
  }
}

uint64_t sub_1000ABA98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000ABB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a2;
  v104 = a3;
  v99 = sub_1000C30A4();
  v98 = *(v99 - 8);
  v4 = *(v98 + 64);
  __chkstk_darwin(v99);
  v107 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000124CC(&qword_1000FDD70, &qword_1000D00B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v110 = &v92 - v8;
  v114 = sub_1000C3454();
  v108 = *(v114 - 8);
  v9 = *(v108 + 64);
  __chkstk_darwin(v114);
  v106 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000124CC(&qword_1000FDD78, &qword_1000D00B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v103 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v96 = &v92 - v16;
  v17 = __chkstk_darwin(v15);
  v102 = &v92 - v18;
  __chkstk_darwin(v17);
  v115 = &v92 - v19;
  v20 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v109 = &v92 - v22;
  v23 = sub_1000C4D84();
  v24 = *(v23 - 8);
  v112 = v23;
  v113 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v97 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v101 = &v92 - v29;
  v30 = __chkstk_darwin(v28);
  v100 = &v92 - v31;
  __chkstk_darwin(v30);
  v33 = &v92 - v32;
  v34 = sub_1000C4CF4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100014F70();
  v39 = sub_1000C5844();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000C94D0;
  sub_1000C4CB4();
  v41 = sub_1000C4CD4();
  v43 = v42;
  (*(v35 + 8))(v38, v34);
  v116 = v41;
  v117 = v43;
  v44 = sub_1000C4A84();
  v46 = v45;

  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_100014FBC();
  *(v40 + 32) = v44;
  *(v40 + 40) = v46;
  v47 = v115;
  sub_1000C5554();
  sub_1000C1A44();

  v48 = sub_1000C4CC4();
  v118 = v48;
  v119 = &protocol witness table for File;
  v49 = sub_10002E5DC(&v116);
  (*(*(v48 - 8) + 16))(v49, a1, v48);
  sub_1000C25B4();
  v50 = sub_1000C4D54();
  (*(*(v50 - 8) + 56))(v109, 1, 1, v50);
  sub_1000C4D64();
  v51 = sub_1000C25F4();
  v52 = *(v51 - 8);
  v53 = *(v52 + 7);
  v53(v47, 1, 1, v51);
  sub_1000C4D74();
  sub_10001530C(&v116, v118);
  v54 = v111;
  v55 = v110;
  v56 = v114;
  sub_1000C2834();
  if (v54)
  {
    sub_100018F90(v47, &qword_1000FDD78, &qword_1000D00B8);
    (*(v113 + 8))(v33, v112);
    return sub_100015F68(&v116);
  }

  v95 = 0;
  v94 = v52 + 56;
  v111 = v51;
  v93 = v53;
  v109 = v52;
  v59 = v107;
  v58 = v108;
  v60 = v55;
  if ((*(v108 + 48))(v55, 1, v56) == 1)
  {
    sub_100018F90(v55, &qword_1000FDD70, &qword_1000D00B0);
    sub_100015F68(&v116);
    v61 = v104;
    v62 = v109;
    v63 = v47;
  }

  else
  {
    v92 = v33;
    v64 = v106;
    (*(v58 + 32))(v106, v60, v56);
    sub_100015F68(&v116);
    v65 = sub_1000C3414();
    if (!v66)
    {
      sub_1000C4FC4();
      sub_1000ACDE8(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      (*(v58 + 8))(v64, v56);
      sub_100018F90(v47, &qword_1000FDD78, &qword_1000D00B8);
      return (*(v113 + 8))(v92, v112);
    }

    v67 = v65;
    v68 = v66;
    if (sub_1000C25A4())
    {
      v69 = v67 == 0x682E63696C627570;
      v70 = v113;
      v71 = v59;
      if ((!v69 || v68 != 0xEB00000000636965) && (sub_1000C5C04() & 1) == 0)
      {

        sub_1000C4FC4();
        sub_1000ACDE8(&qword_1000FC360, &type metadata accessor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        (*(v108 + 8))(v106, v114);
        sub_100018F90(v115, &qword_1000FDD78, &qword_1000D00B8);
        return (*(v70 + 8))(v92, v112);
      }

      sub_1000C25C4();
      sub_1000C25B4();
      v116 = 0;
      v117 = 0;
      v72 = v100;
      v73 = v92;
      v74 = v95;
      sub_1000C4D34();
      if (v74)
      {

        (*(v108 + 8))(v106, v114);
        sub_100018F90(v115, &qword_1000FDD78, &qword_1000D00B8);
        return (*(v70 + 8))(v73, v112);
      }

      v86 = v112;
      (*(v70 + 16))(v101, v72, v112);
      (*(v98 + 104))(v71, enum case for StickerEffect.none(_:), v99);
      v87 = v102;
      sub_1000C25E4();
      (*(v70 + 8))(v72, v86);
      (*(v108 + 8))(v106, v114);
      v63 = v115;
      sub_100018F90(v115, &qword_1000FDD78, &qword_1000D00B8);
      v93(v87, 0, 1, v111);
      sub_1000ACE30(v87, v63);
      v33 = v73;
      v61 = v104;
      v95 = 0;
    }

    else
    {
      v110 = v67;
      v75 = sub_10009B58C(v67, v68);
      v76 = v113;
      if ((v75 & 1) != 0 && sub_1000C33F4() > 1)
      {
        v77 = sub_1000C5844();
        sub_1000C5554();
        sub_1000C1A44();

        v78 = sub_1000C25C4();
        v79 = v106;
        v80 = sub_1000C33F4();
        v81 = sub_1000C25D4();
        v82 = v95;
        sub_1000ACEA0(v78, v80, v81);
        v62 = v109;
        if (v82)
        {

          (*(v108 + 8))(v79, v114);
          sub_100018F90(v115, &qword_1000FDD78, &qword_1000D00B8);
          return (*(v113 + 8))(v92, v112);
        }

        sub_1000C25B4();
        sub_1000C4D44();
        v63 = v115;
        v95 = 0;
        sub_1000C33F4();
        sub_1000C3434();
        (*(v98 + 104))(v107, enum case for StickerEffect.none(_:), v99);
        v91 = v96;
        sub_1000C25E4();
        (*(v108 + 8))(v79, v114);
        sub_100018F90(v63, &qword_1000FDD78, &qword_1000D00B8);
        v93(v91, 0, 1, v111);
        sub_1000ACE30(v91, v63);
        v33 = v92;
        v61 = v104;
        goto LABEL_21;
      }

      v83 = sub_1000C5844();
      sub_1000C5554();
      sub_1000C1A44();

      v33 = v92;
      (*(v76 + 16))(v101, v92, v112);
      v84 = v106;
      sub_1000C33F4();
      sub_1000C3404();
      sub_1000C3424();
      sub_1000C3094();
      sub_1000C3434();
      v85 = v102;
      sub_1000C25E4();
      (*(v108 + 8))(v84, v114);
      v63 = v115;
      sub_100018F90(v115, &qword_1000FDD78, &qword_1000D00B8);
      v93(v85, 0, 1, v111);
      sub_1000ACE30(v85, v63);
      v61 = v104;
    }

    v62 = v109;
  }

LABEL_21:
  v88 = v103;
  sub_1000ACD78(v63, v103);
  v89 = v111;
  if ((*(v62 + 6))(v88, 1, v111) == 1)
  {
    sub_100018F90(v88, &qword_1000FDD78, &qword_1000D00B8);
    v90 = sub_1000C5844();
    sub_1000C5554();
    sub_1000C1A44();

    sub_1000C4FC4();
    sub_1000ACDE8(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018F90(v63, &qword_1000FDD78, &qword_1000D00B8);
    return (*(v113 + 8))(v33, v112);
  }

  else
  {
    sub_100018F90(v63, &qword_1000FDD78, &qword_1000D00B8);
    (*(v113 + 8))(v33, v112);
    return (*(v62 + 4))(v61, v88, v89);
  }
}

uint64_t sub_1000ACCE8@<X0>(uint64_t a1@<X8>)
{
  sub_1000C5594();
  v2 = sub_1000C3454();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_1000ACD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDD78, &qword_1000D00B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ACDE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000ACE30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDD78, &qword_1000D00B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ACEA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a3)
  {
    sub_1000C4FC4();
    sub_1000ACDE8(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  if (a3 < a2)
  {
    v3 = a2 / a3 * result;
    if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -9.22337204e18)
    {
      if (v3 < 9.22337204e18)
      {
        return v3;
      }

LABEL_11:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_1000AD004(uint64_t a1)
{
  result = sub_100012514();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000AD0CC(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v19 = a3;
  v4 = sub_1000C4ED4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C19B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C1464();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_1000AD93C(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v3)
  {
    v17 = v19;
    sub_1000C1994();
    v17(v7);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1000AD2C4@<X0>(void (*a1)(char *, char *, uint64_t)@<X8>)
{
  v17 = a1;
  v2 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_1000C19B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C1464();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_1000AD93C(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v1)
  {
    v15 = sub_1000C3B84();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    sub_10002C370(v5, v17);
    sub_1000AB6AC(v5);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1000AD610(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v20 = a4;
  v5 = sub_1000C4ED4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C19B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C1464();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_1000AD93C(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v4)
  {
    v18 = v20;
    sub_1000C1994();
    v18(v8);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_1000AD93C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AD984(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000AD9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000ADA48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v14[1] = a4;
  v7 = sub_1000124CC(&qword_1000FDD98, &qword_1000D01D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000AE128();
  sub_1000C5D04();
  v17 = 0;
  sub_1000C5AF4();
  if (!v5)
  {
    v16 = 1;
    sub_1000C5B74();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000ADBE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000ADF5C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1000ADC44(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7299942;
  }

  else
  {
    v2 = 7234918;
  }

  if (*a2)
  {
    v3 = 7299942;
  }

  else
  {
    v3 = 7234918;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000C5C04();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1000ADCBC()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000ADD24()
{
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_1000ADD70()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000ADDD4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F2168;
  v8._object = v3;
  v5 = sub_1000C59F4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1000ADE34(uint64_t *a1@<X8>)
{
  v2 = 7234918;
  if (*v1)
  {
    v2 = 7299942;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1000ADE5C()
{
  if (*v0)
  {
    return 7299942;
  }

  else
  {
    return 7234918;
  }
}

uint64_t sub_1000ADE80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F2168;
  v9._object = a2;
  v6 = sub_1000C59F4(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000ADEE4(uint64_t a1)
{
  v2 = sub_1000AE128();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000ADF20(uint64_t a1)
{
  v2 = sub_1000AE128();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ADF5C(uint64_t *a1)
{
  v3 = sub_1000124CC(&qword_1000FDD88, &qword_1000D01D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000AE128();
  sub_1000C5CF4();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1000C5A04();
    v11 = 1;
    sub_1000C5A84();
    (*(v4 + 8))(v7, v3);
  }

  sub_100015F68(a1);
  return v8;
}

unint64_t sub_1000AE128()
{
  result = qword_1000FDD90;
  if (!qword_1000FDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDD90);
  }

  return result;
}

unint64_t sub_1000AE190()
{
  result = qword_1000FDDA0;
  if (!qword_1000FDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDA0);
  }

  return result;
}

unint64_t sub_1000AE1E8()
{
  result = qword_1000FDDA8;
  if (!qword_1000FDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDA8);
  }

  return result;
}

unint64_t sub_1000AE240()
{
  result = qword_1000FDDB0;
  if (!qword_1000FDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDB0);
  }

  return result;
}

uint64_t sub_1000AE2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a1;
  v5[5] = a2;
  v6 = sub_1000C4CC4();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  v8 = sub_1000C4CF4();
  v5[12] = v8;
  v9 = *(v8 - 8);
  v5[13] = v9;
  v10 = *(v9 + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000AE414, 0, 0);
}

uint64_t sub_1000AE414()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v24 = v0[11];
  v25 = v0[10];
  v23 = v0[8];
  v5 = v0[5];
  v26 = v0[6];
  v27 = v0[7];
  sub_1000C5554();
  sub_100014F70();
  v6 = sub_1000C56B4();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000C94D0;
  sub_1000C4CB4();
  v8 = sub_1000C4CD4();
  v10 = v9;
  (*(v1 + 8))(v2, v3);
  v0[2] = v8;
  v0[3] = v10;
  v11 = sub_1000C4A84();
  v13 = v12;

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100014FBC();
  *(v7 + 32) = v11;
  *(v7 + 40) = v13;
  sub_1000C1A54();

  (*(v4 + 16))(v24, v5, v23);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v0[15] = v15;
  (*(v4 + 32))(v15 + v14, v24, v23);
  v16 = (v15 + ((v25 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v26;
  v16[1] = v27;
  v17 = async function pointer to File.withResource<A>(_:)[1];

  v18 = swift_task_alloc();
  v0[16] = v18;
  v19 = sub_1000C3374();
  *v18 = v0;
  v18[1] = sub_1000AE690;
  v20 = v0[4];
  v21 = v0[5];

  return File.withResource<A>(_:)(v20, &unk_1000D03C0, v15, v19);
}

uint64_t sub_1000AE690()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000AE7E4, 0, 0);
  }

  else
  {
    v5 = v3[14];
    v4 = v3[15];
    v6 = v3[11];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1000AE7E4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_1000AE85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v5 = *(*(sub_1000C3354() - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v6 = *(*(sub_1000C3334() - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v7 = sub_1000C14E4();
  v4[25] = v7;
  v8 = *(v7 - 8);
  v4[26] = v8;
  v9 = *(v8 + 64) + 15;
  v4[27] = swift_task_alloc();
  v10 = sub_1000C4CF4();
  v4[28] = v10;
  v11 = *(v10 - 8);
  v4[29] = v11;
  v12 = *(v11 + 64) + 15;
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000AE9D4, 0, 0);
}

uint64_t sub_1000AE9D4()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[20];
  sub_1000C4CB4();
  sub_1000C4CE4();
  (*(v2 + 8))(v1, v3);
  v0[31] = sub_1000C1504();
  v0[32] = v6;
  (*(v0[26] + 8))(v0[27], v0[25]);
  v7 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  v0[33] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000AECD8;
  v9 = swift_continuation_init();
  v0[17] = sub_1000124CC(&qword_1000FDDC0, &qword_1000D03C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000AF040;
  v0[13] = &unk_1000F5C98;
  v0[14] = v9;
  [v7 getPreviewMetadata:isa withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000AECD8()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000AEDB8, 0, 0);
}

id sub_1000AEDB8()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 192);
    [v1 activityType];
    [v1 isIndoor];
    [v1 configurationType];
    sub_1000C3344();
    result = [v1 configurationName];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v19 = *(v0 + 240);
    v20 = *(v0 + 216);
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    v9 = *(v0 + 152);
    sub_1000C5224();

    [v1 goalTypeIdentifier];
    sub_1000C3364();
    sub_1000C3324();
    sub_100018CD0(v6, v5);

    v10 = *(v0 + 8);
  }

  else
  {
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    sub_1000C4FC4();
    sub_1000AF314(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();

    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CD0(v11, v12);
    v15 = *(v0 + 240);
    v16 = *(v0 + 216);
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_1000AF040(uint64_t a1, void *a2)
{
  v3 = sub_10001530C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000AF0A4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10003A8F0;

  return sub_1000AE2EC(a1, a2, v8, v7, v6);
}

uint64_t sub_1000AF158()
{
  v1 = sub_1000C4CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000AF1F8(uint64_t a1)
{
  v4 = *(sub_1000C4CC4() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003A8F0;

  return sub_1000AE85C(a1, v1 + v5, v7, v8);
}

uint64_t sub_1000AF314(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000AF384(uint64_t a1)
{
  result = sub_100012B50();
  *(a1 + 8) = result;
  return result;
}

void sub_1000AF3F4(void (*a1)(char *, char *, uint64_t)@<X8>)
{
  v84 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v74 - v3;
  v5 = sub_1000C5974();
  v85 = *(v5 - 8);
  v6 = *(v85 + 64);
  v7 = __chkstk_darwin(v5);
  v83 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v87 = &v74 - v10;
  __chkstk_darwin(v9);
  v12 = &v74 - v11;
  v13 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v88 = &v74 - v15;
  v16 = sub_1000C1974();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000C4FC4();
  v89 = *(v21 - 8);
  v22 = *(v89 + 64);
  __chkstk_darwin(v21);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000C1984();
  if (v26 >> 60 == 15)
  {
    sub_100014F70();
    v27 = sub_1000C5824();
    sub_1000C5554();
    sub_1000C1A44();

    sub_1000B0254();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v80 = v21;
  v81 = v25;
  v82 = v26;
  isa = sub_1000C1544().super.isa;
  v29 = [(objc_class *)isa _imOptionallyDecompressData];

  v91 = sub_1000C1564();
  v31 = v30;

  v90 = v31;
  v32 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v32 == 2)
    {
      v34 = *(v91 + 16);
      v33 = *(v91 + 24);
      v35 = __OFSUB__(v33, v34);
      v36 = v33 - v34;
      if (v35)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v36 > 0)
      {
        goto LABEL_10;
      }
    }

LABEL_15:
    (*(v17 + 104))(v20, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v16);
    sub_1000C1964();
    (*(v17 + 8))(v20, v16);
    sub_1000C4FB4();
    sub_100014F70();
    v59 = sub_1000C5824();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1000C94D0;
    v62 = v88;
    v61 = v89;
    v87 = *(v89 + 16);
    v63 = v80;
    (v87)(v88, v24, v80);
    (*(v61 + 56))(v62, 0, 1, v63);
    v64 = sub_1000C4A84();
    v66 = v65;
    sub_100018F90(v62, &qword_1000FC438, &unk_1000C9DC0);
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = sub_100014FBC();
    *(v60 + 32) = v64;
    *(v60 + 40) = v66;
    sub_1000C5554();
    sub_1000C1A44();

    sub_1000B02A8(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    (v87)(v67, v24, v63);
    swift_willThrow();
    sub_100018CBC(v81, v82);
    sub_100018CD0(v91, v90);
    (*(v61 + 8))(v24, v63);
    return;
  }

  if (!v32)
  {
    if (!BYTE6(v90))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v91), v91))
  {
LABEL_19:
    __break(1u);
    return;
  }

  if (HIDWORD(v91) - v91 <= 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v37 = sub_1000C1464();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_1000C1454();
  sub_1000B02F0();
  v79 = v40;
  v41 = v86;
  sub_1000C1444();
  if (v41)
  {
    v92 = v41;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    if (swift_dynamicCast())
    {

      v42 = v85;
      (*(v85 + 32))(v87, v12, v5);
      v86 = sub_100014F70();
      v74 = sub_1000C5824();
      v84 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v43 = swift_allocObject();
      v78 = xmmword_1000C94D0;
      *(v43 + 16) = xmmword_1000C94D0;
      v75 = *(v42 + 16);
      v76 = v42 + 16;
      v75(v4, v87, v5);
      (*(v42 + 56))(v4, 0, 1, v5);
      v44 = sub_1000C4A84();
      v46 = v45;
      sub_100018F90(v4, &qword_1000FC430, &unk_1000C9B00);
      *(v43 + 56) = &type metadata for String;
      v77 = sub_100014FBC();
      *(v43 + 64) = v77;
      *(v43 + 32) = v44;
      *(v43 + 40) = v46;
      sub_1000C5554();
      v47 = v74;
      sub_1000C1A44();

      (*(v17 + 104))(v20, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v16);
      sub_1000C1964();
      (*(v17 + 8))(v20, v16);
      v75(v83, v87, v5);
      sub_1000C4FA4();
      v48 = sub_1000C5824();
      v49 = swift_allocObject();
      *(v49 + 16) = v78;
      v50 = v89;
      v86 = v5;
      v51 = v24;
      v84 = *(v89 + 16);
      v52 = v88;
      v53 = v80;
      v84(v88, v51, v80);
      (*(v50 + 56))(v52, 0, 1, v53);
      v54 = sub_1000C4A84();
      v56 = v55;
      sub_100018F90(v52, &qword_1000FC438, &unk_1000C9DC0);
      v57 = v77;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = v57;
      *(v49 + 32) = v54;
      *(v49 + 40) = v56;
      sub_1000C5554();
      sub_1000C1A44();

      sub_1000B02A8(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      v84(v58, v51, v53);
      swift_willThrow();
      sub_100018CBC(v81, v82);

      sub_100018CD0(v91, v90);
      (*(v50 + 8))(v51, v53);
      (*(v85 + 8))(v87, v86);
    }

    else
    {

      sub_100014F70();
      v69 = sub_1000C5824();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1000C94D0;
      v92 = v41;
      v71 = sub_1000C4A84();
      v73 = v72;
      *(v70 + 56) = &type metadata for String;
      *(v70 + 64) = sub_100014FBC();
      *(v70 + 32) = v71;
      *(v70 + 40) = v73;
      sub_1000C5554();
      sub_1000C1A44();

      swift_getErrorValue();
      swift_getDynamicType();
      v92 = 0;
      v93 = 0xE000000000000000;
      sub_1000C5944(22);

      v92 = 0xD000000000000014;
      v93 = 0x80000001000D5330;
      v94._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v94);

      sub_1000B02A8(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100018CD0(v91, v90);
      sub_100018CBC(v81, v82);
    }
  }

  else
  {
    sub_100014F70();

    v68 = sub_1000C5824();
    sub_1000C5554();
    sub_1000C1A44();

    sub_1000C4954();

    sub_1000C4964();
    sub_100018CBC(v81, v82);
    sub_100018CD0(v91, v90);
  }
}

uint64_t sub_1000B00E0@<X0>(void (*a1)(char *, char *, uint64_t)@<X8>)
{
  v3 = sub_1000C19B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1464();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_1000B02A8(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v1)
  {
    sub_1000AF3F4(a1);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

unint64_t sub_1000B0254()
{
  result = qword_1000FDDD0;
  if (!qword_1000FDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDD0);
  }

  return result;
}

uint64_t sub_1000B02A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B02F0()
{
  result = qword_1000FDDD8;
  if (!qword_1000FDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDD8);
  }

  return result;
}

uint64_t sub_1000B0354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = sub_1000C3244();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = a1[3];
  v18 = a1[4];
  sub_10001530C(a1, v17);
  v45 = (*(v18 + 8))(v17, v18);
  v48 = v19;
  v20 = a1[3];
  v21 = a1[4];
  sub_10001530C(a1, v20);
  v44 = (*(v21 + 16))(v20, v21);
  v47 = v22;
  v23 = [objc_opt_self() sharedInstance];
  v24 = a1[3];
  v25 = a1[4];
  sub_10001530C(a1, v24);
  (*(v25 + 32))(v24, v25);
  if (v26 || (v27 = a1[3], v28 = a1[4], sub_10001530C(a1, v27), (*(v28 + 24))(v27, v28), v29))
  {
    v30 = objc_allocWithZone(MBDMessageToSuperParserContext);
    v31 = sub_1000C51F4();

    v32 = [v30 initWithContent:v31];

    if (![v23 parseContext:v32])
    {

      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      return sub_100015F68(a1);
    }

    _AttributedString.init(fromNSAttributedString:)([v32 body], v14);
    if (v2)
    {

      return sub_100015F68(a1);
    }

    v33 = sub_1000C3D24();
    (*(*(v33 - 8) + 56))(v14, 0, 1, v33);
    sub_1000B1500(v14, v16);
  }

  else
  {
    v34 = a1[3];
    v35 = a1[4];
    sub_10001530C(a1, v34);
    (*(v35 + 16))(v34, v35);
    if (v36)
    {
    }

    v37 = sub_1000C3D24();
    (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
  }

  v38 = v46;
  sub_1000B1428(v16, v11);
  sub_1000C3224();
  sub_1000B1498(v16);

  if (!v2)
  {
    (*(v41 + 32))(v43, v38, v42);
  }

  return sub_100015F68(a1);
}

void __swiftcall MessageEditedPartDictionary.init(xhtmlBody:)(MessagesBlastDoorService::MessageEditedPartDictionary *__return_ptr retstr, Swift::String_optional xhtmlBody)
{
  v6 = xhtmlBody;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10[0] = xhtmlBody;
  memset(&v10[1], 0, 48);
  sub_100060550(&v6, &v5);
  sub_1000605AC(v10);
  v3 = v7;
  retstr->xhtmlBody = v6;
  retstr->plainTextSubject = v3;
  v4 = v9;
  retstr->plainTextBody = v8;
  retstr->auxXHTMLBody = v4;
}

uint64_t MessageContent.init(messageEditedPartDictionary:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v8[3] = &type metadata for MessageEditedPartDictionary;
  v8[4] = &off_1000F5D70;
  v4 = swift_allocObject();
  v8[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v6 = a1[3];
  v4[3] = a1[2];
  v4[4] = v6;
  return sub_1000B0354(v8, a2);
}

uint64_t sub_1000B0908()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_1000B0958()
{
  v1 = 0x646F426C6D746878;
  v2 = 0x7865546E69616C70;
  if (*v0 != 2)
  {
    v2 = 0x4C4D544858787561;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1000B09F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B0DC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B0A18(uint64_t a1)
{
  v2 = sub_1000B0C50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B0A54(uint64_t a1)
{
  v2 = sub_1000B0C50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageEditedPartDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FDDE0, &qword_1000D04B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000B0C50();
  sub_1000C5D04();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_1000C5AF4();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_1000C5AF4();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_1000C5AF4();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_1000C5AF4();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000B0C50()
{
  result = qword_1000FDDE8;
  if (!qword_1000FDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDE8);
  }

  return result;
}

double MessageEditedPartDictionary.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000B0F40(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1000B0D00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1000B0D30()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1000B0D60()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1000B0D90()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1000B0DC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F426C6D746878 && a2 == 0xE900000000000079;
  if (v4 || (sub_1000C5C04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000D8E70 == a2 || (sub_1000C5C04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865546E69616C70 && a2 == 0xED000079646F4274 || (sub_1000C5C04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C4D544858787561 && a2 == 0xEC00000079646F42)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000C5C04();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000B0F40@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FDE08, &unk_1000D06C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000B0C50();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(a1);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    return sub_1000605AC(&v37);
  }

  else
  {
    LOBYTE(v37) = 0;
    v11 = sub_1000C5A04();
    v31 = v6;
    v32 = v12;
    v30 = a2;
    LOBYTE(v37) = 1;
    v13 = sub_1000C5A04();
    v15 = v14;
    LOBYTE(v37) = 2;
    v16 = sub_1000C5A04();
    v18 = v17;
    v45 = 3;
    v19 = sub_1000C5A04();
    v20 = *(v31 + 8);
    v31 = v19;
    v21 = v9;
    v23 = v22;
    v20(v21, v5);
    v24 = v32;
    *&v33 = v11;
    *(&v33 + 1) = v32;
    *&v34 = v13;
    *(&v34 + 1) = v15;
    *&v35 = v16;
    *(&v35 + 1) = v18;
    *&v36 = v31;
    *(&v36 + 1) = v23;
    sub_100060550(&v33, &v37);
    sub_100015F68(a1);
    v37 = v11;
    v38 = v24;
    v39 = v13;
    v40 = v15;
    v41 = v16;
    v42 = v18;
    v43 = v31;
    v44 = v23;
    result = sub_1000605AC(&v37);
    v26 = v34;
    v27 = v30;
    *v30 = v33;
    v27[1] = v26;
    v28 = v36;
    v27[2] = v35;
    v27[3] = v28;
  }

  return result;
}

uint64_t sub_1000B1240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000B129C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1000B1324()
{
  result = qword_1000FDDF0;
  if (!qword_1000FDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDF0);
  }

  return result;
}

unint64_t sub_1000B137C()
{
  result = qword_1000FDDF8;
  if (!qword_1000FDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDDF8);
  }

  return result;
}

unint64_t sub_1000B13D4()
{
  result = qword_1000FDE00;
  if (!qword_1000FDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE00);
  }

  return result;
}

uint64_t sub_1000B1428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1498(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B1500(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1570(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6580578;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 101;
    }

    else
    {
      v4 = 114;
    }

    v3 = 0xE100000000000000;
  }

  else
  {
    if (a1 == 2)
    {
      v4 = 6581616;
    }

    else
    {
      if (a1 == 3)
      {
        v3 = 0xE300000000000000;
        v4 = 6580578;
        goto LABEL_12;
      }

      v4 = 6581346;
    }

    v3 = 0xE300000000000000;
  }

LABEL_12:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 101;
    }

    else
    {
      v7 = 114;
    }

    v6 = 0xE100000000000000;
    if (v4 != v7)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a2 != 3)
    {
      v2 = 6581346;
    }

    if (a2 == 2)
    {
      v5 = 6581616;
    }

    else
    {
      v5 = v2;
    }

    v6 = 0xE300000000000000;
    if (v4 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v3 != v6)
  {
LABEL_26:
    v8 = sub_1000C5C04();
    goto LABEL_27;
  }

  v8 = 1;
LABEL_27:

  return v8 & 1;
}

uint64_t sub_1000B1698(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x77736E656770;
  if (a1 != 5)
  {
    v5 = 0x637A736E656770;
    v4 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1701667182;
  if (a1 != 3)
  {
    v7 = 0x68736E656770;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C737365636361;
  if (a1 != 1)
  {
    v9 = 0x692D656C646E7562;
    v8 = 0xE900000000000064;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x64692D6D616461;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6C737365636361)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE900000000000064;
        if (v10 != 0x692D656C646E7562)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64692D6D616461)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x77736E656770)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x637A736E656770)
      {
LABEL_39:
        v13 = sub_1000C5C04();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701667182)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x68736E656770)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1000B18B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 101;
    }

    else
    {
      v3 = 115;
    }

    v4 = 0xE100000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0xE100000000000000;
    v3 = 114;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 102;
    }

    else
    {
      v3 = 29539;
    }

    if (v2 == 3)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 101;
    }

    else
    {
      v6 = 115;
    }

    v5 = 0xE100000000000000;
    if (v3 != v6)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE100000000000000;
    if (v3 != 114)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE100000000000000;
    if (v3 != 102)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    if (v3 != 29539)
    {
LABEL_29:
      v7 = sub_1000C5C04();
      goto LABEL_30;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_29;
  }

  v7 = 1;
LABEL_30:

  return v7 & 1;
}

uint64_t sub_1000B19E4(char a1, char a2)
{
  if (*&aO_0[8 * a1] == *&aO_0[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000C5C04();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000B1A4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6450529;
  v3 = a1;
  if (a1 <= 3u)
  {
    v9 = 6516065;
    v10 = 6581601;
    if (a1 == 2)
    {
      v10 = 6450529;
    }

    if (a1)
    {
      v9 = 7564641;
    }

    if (a1 <= 1u)
    {
      v7 = v9;
    }

    else
    {
      v7 = v10;
    }

    v8 = 0xE300000000000000;
  }

  else
  {
    v4 = 7631733;
    v5 = 7496296;
    if (a1 != 7)
    {
      v5 = 7368052;
    }

    if (a1 != 6)
    {
      v4 = v5;
    }

    v6 = 1650552161;
    if (a1 != 4)
    {
      v6 = 1634954593;
    }

    if (a1 <= 5u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v3 <= 5)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v2 = 6581601;
      }
    }

    else
    {
      if (a2)
      {
        v11 = 0xE300000000000000;
        if (v7 != 7564641)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      v2 = 6516065;
    }

    v11 = 0xE300000000000000;
    if (v7 != v2)
    {
      goto LABEL_47;
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v11 = 0xE400000000000000;
      if (v7 != 1650552161)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v7 != 1634954593)
      {
LABEL_47:
        v12 = sub_1000C5C04();
        goto LABEL_48;
      }
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (a2 == 6)
    {
      if (v7 != 7631733)
      {
        goto LABEL_47;
      }
    }

    else if (a2 == 7)
    {
      if (v7 != 7496296)
      {
        goto LABEL_47;
      }
    }

    else if (v7 != 7368052)
    {
      goto LABEL_47;
    }
  }

LABEL_45:
  if (v8 != v11)
  {
    goto LABEL_47;
  }

  v12 = 1;
LABEL_48:

  return v12 & 1;
}

uint64_t sub_1000B1C54(char a1, char a2)
{
  if (*&aSait_1[8 * a1] == *&aSait_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000C5C04();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000B1CBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6778213;
  v3 = a1;
  v4 = 7630949;
  v5 = 0xE300000000000000;
  v6 = 29797;
  if (a1 != 4)
  {
    v6 = 29554;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = 0xE200000000000000;
  }

  v7 = 6910053;
  if (a1 != 1)
  {
    v7 = 6451301;
  }

  if (!a1)
  {
    v7 = 6778213;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v3 <= 2)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE300000000000000;
      if (v8 != 7630949)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      if (a2 == 4)
      {
        if (v8 != 29797)
        {
          goto LABEL_31;
        }
      }

      else if (v8 != 29554)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v10 = 0xE300000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v8 != 6910053)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 6451301;
    }

    if (v8 != v2)
    {
LABEL_31:
      v11 = sub_1000C5C04();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v9 != v10)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_1000B1E28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 30311;
    }

    else
    {
      v3 = 30320;
    }

    v4 = 0xE200000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0xE100000000000000;
    v3 = 110;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 6580583;
    }

    else
    {
      v3 = 112;
    }

    if (v2 == 3)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 30311;
    }

    else
    {
      v6 = 30320;
    }

    v5 = 0xE200000000000000;
    if (v3 != v6)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE100000000000000;
    if (v3 != 110)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE300000000000000;
    if (v3 != 6580583)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v5 = 0xE100000000000000;
    if (v3 != 112)
    {
LABEL_29:
      v7 = sub_1000C5C04();
      goto LABEL_30;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_29;
  }

  v7 = 1;
LABEL_30:

  return v7 & 1;
}

uint64_t sub_1000B1F64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 110;
    }

    else
    {
      v3 = 7630191;
    }

    if (v2 == 2)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 6580583;
    }

    else
    {
      v3 = 112;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  v5 = 0xE100000000000000;
  v6 = 112;
  v7 = 0xE100000000000000;
  v8 = 110;
  if (a2 != 2)
  {
    v8 = 7630191;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v6 = 6580583;
    v5 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000C5C04();
  }

  return v11 & 1;
}

uint64_t sub_1000B2064(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x2D746E65746E6F63;
    }

    else
    {
      v3 = 1701869940;
    }

    if (v2)
    {
      v4 = 0xEA00000000006469;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001000D4FC0;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1635017060;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0x80000001000D4FE0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x2D746E65746E6F63;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xEA00000000006469;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 1635017060;
    v6 = 0x80000001000D4FE0;
    if (a2 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000D4FC0;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_1000C5C04();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_1000B21EC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000B221C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_1000B224C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_1000B227C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t MessageDictionary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v264 = a2;
  v3 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v242[-v5];
  v7 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v265 = sub_1000124CC(&qword_1000FDE10, &qword_1000D06D0);
  v9 = *(v265 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v265);
  v12 = &v242[-v11];
  v13 = type metadata accessor for MessageDictionary();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v242[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1[3];
  v17 = a1[4];
  v268 = a1;
  sub_10001530C(a1, v18);
  sub_1000421CC();
  v266 = v12;
  v19 = v267;
  sub_1000C5CF4();
  if (v19)
  {
    return sub_100015F68(v268);
  }

  v267 = v9;
  v262 = v13;
  v263 = v16;
  LOBYTE(v270) = 0;
  v20 = sub_1000C5A44();
  v21 = v262;
  v22 = v263;
  v23 = &v263[v262[21]];
  *v23 = v20;
  v23[8] = v24 & 1;
  LOBYTE(v270) = 1;
  v25 = sub_1000C5A04();
  v27 = (v22 + v21[22]);
  *v27 = v25;
  v27[1] = v28;
  sub_1000C1614();
  LOBYTE(v270) = 2;
  sub_1000B684C(&qword_1000FDC60, &type metadata accessor for UUID);
  sub_1000C5A54();
  sub_10001D860(0, v22 + v21[18], &qword_1000FC520, &qword_1000C9D20);
  LOBYTE(v270) = 3;
  v29 = sub_1000C5A04();
  v30 = (v22 + v21[23]);
  *v30 = v29;
  v30[1] = v31;
  LOBYTE(v270) = 4;
  v32 = sub_1000C5A04();
  v33 = (v22 + v21[24]);
  *v33 = v32;
  v33[1] = v34;
  LOBYTE(v270) = 5;
  v35 = sub_1000C5A84();
  v36 = v22 + v21[25];
  *v36 = v35;
  v36[8] = v37 & 1;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  LOBYTE(v269) = 6;
  v261 = sub_100015FB4(&qword_1000FC3A8);
  sub_1000C5A54();
  *v22 = v270;
  LOBYTE(v270) = 7;
  v38 = sub_1000C5A04();
  v40 = v263;
  *(v263 + 1) = v38;
  *(v40 + 2) = v39;
  LOBYTE(v270) = 8;
  v41 = sub_1000C5A04();
  v260 = 0;
  v42 = v263;
  *(v263 + 3) = v41;
  *(v42 + 4) = v43;
  LOBYTE(v270) = 9;
  v44 = v260;
  v45 = sub_1000C5A04();
  v260 = v44;
  if (v44)
  {
    (*(v267 + 8))(v266, v265);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    LODWORD(v267) = 0;
    v245 = 0;
    v246 = 0;
    v247 = 0;
    v254 = 0;
    v252 = 0;
    v51 = 0;
    v243 = 0;
    v244 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    goto LABEL_15;
  }

  v53 = v263;
  *(v263 + 5) = v45;
  *(v53 + 6) = v46;
  LOBYTE(v270) = 10;
  v54 = v260;
  v55 = sub_1000C5A04();
  v260 = v54;
  if (v54)
  {
    (*(v267 + 8))(v266, v265);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    LODWORD(v267) = 0;
    v245 = 0;
    v246 = 0;
    v247 = 0;
    v254 = 0;
    v252 = 0;
    v51 = 0;
    v243 = 0;
    v244 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    goto LABEL_15;
  }

  v57 = v263;
  *(v263 + 7) = v55;
  *(v57 + 8) = v56;
  LOBYTE(v270) = 11;
  v58 = v260;
  v59 = sub_1000C5A14();
  v260 = v58;
  if (v58)
  {
    goto LABEL_14;
  }

  v263[72] = v59;
  LOBYTE(v270) = 12;
  v60 = v260;
  v61 = sub_1000C5A14();
  v260 = v60;
  if (v60)
  {
    goto LABEL_14;
  }

  v263[73] = v61;
  LOBYTE(v270) = 13;
  v62 = v260;
  v63 = sub_1000C5A14();
  v260 = v62;
  if (v62)
  {
    goto LABEL_14;
  }

  v263[96] = v63;
  LOBYTE(v270) = 14;
  v64 = v260;
  v65 = sub_1000C5A14();
  v260 = v64;
  if (v64)
  {
    goto LABEL_14;
  }

  v263[98] = v65;
  LOBYTE(v270) = 15;
  v66 = v260;
  v67 = sub_1000C5A14();
  v260 = v66;
  if (v66 || (v263[99] = v67, LOBYTE(v269) = 16, sub_100042DD4(), v68 = v260, sub_1000C5A54(), (v260 = v68) != 0))
  {
LABEL_14:
    (*(v267 + 8))(v266, v265);
    v49 = 0;
    v50 = 0;
    LODWORD(v267) = 0;
    v245 = 0;
    v246 = 0;
    v247 = 0;
    v254 = 0;
    v252 = 0;
    v51 = 0;
    v243 = 0;
    v244 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    goto LABEL_15;
  }

  *(v263 + 5) = v270;
  LOBYTE(v270) = 17;
  v107 = v260;
  v108 = sub_1000C5A14();
  v260 = v107;
  if (v107)
  {
    goto LABEL_88;
  }

  v263[97] = v108;
  LOBYTE(v270) = 18;
  v109 = v260;
  v110 = sub_1000C5A34();
  v260 = v109;
  if (v109 || (v112 = v263, *(v263 + 13) = v110, v112[112] = v111 & 1, LOBYTE(v270) = 19, v113 = v260, v114 = sub_1000C5A04(), (v260 = v113) != 0))
  {
LABEL_88:
    (*(v267 + 8))(v266, v265);
    v50 = 0;
    LODWORD(v267) = 0;
    v245 = 0;
    v246 = 0;
    v247 = 0;
    v254 = 0;
    v252 = 0;
    v51 = 0;
    v243 = 0;
    v244 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    goto LABEL_15;
  }

  v116 = v263;
  *(v263 + 15) = v114;
  *(v116 + 16) = v115;
  LOBYTE(v270) = 22;
  v117 = v260;
  v118 = sub_1000C5A04();
  v260 = v117;
  if (v117)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v245 = 0;
    v246 = 0;
    v247 = 0;
    v254 = 0;
    v252 = 0;
    v51 = 0;
    v243 = 0;
    v244 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    goto LABEL_15;
  }

  v120 = &v263[v262[26]];
  *v120 = v118;
  v120[1] = v119;
  LOBYTE(v269) = 23;
  v121 = v260;
  sub_1000C5A54();
  v260 = v121;
  if (v121)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v246 = 0;
    v247 = 0;
    v254 = 0;
    v252 = 0;
    v51 = 0;
    v243 = 0;
    v244 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v245 = 1;
    goto LABEL_15;
  }

  *&v263[v262[27]] = v270;
  v276 = 24;
  sub_1000B67F8();
  v122 = v260;
  sub_1000C5A54();
  v260 = v122;
  if (v122)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v247 = 0;
    v254 = 0;
    v252 = 0;
    v51 = 0;
    v243 = 0;
    v244 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v245 = 1;
    v246 = 1;
    goto LABEL_15;
  }

  v123 = &v263[v262[28]];
  v124 = v273[0];
  *(v123 + 2) = v272;
  *(v123 + 3) = v124;
  *(v123 + 61) = *(v273 + 13);
  v125 = v271;
  *v123 = v270;
  *(v123 + 1) = v125;
  LOBYTE(v269) = 25;
  v126 = v260;
  v127 = sub_1000C5A04();
  v260 = v126;
  if (v126)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v254 = 0;
    v252 = 0;
    v51 = 0;
    v243 = 0;
    v244 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    goto LABEL_15;
  }

  v129 = &v263[v262[31]];
  *v129 = v127;
  v129[1] = v128;
  LOBYTE(v269) = 26;
  v130 = v260;
  v131 = sub_1000C5A04();
  v260 = v130;
  if (v130)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v254 = 0;
    v252 = 0;
    v243 = 0;
    v244 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v51 = 1;
    goto LABEL_15;
  }

  v133 = &v263[v262[32]];
  *v133 = v131;
  v133[1] = v132;
  LOBYTE(v269) = 27;
  v134 = v260;
  v135 = sub_1000C5A04();
  v260 = v134;
  if (v134)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v254 = 0;
    v252 = 0;
    v244 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v51 = 1;
    v243 = 1;
    goto LABEL_15;
  }

  v137 = &v263[v262[33]];
  *v137 = v135;
  v137[1] = v136;
  v275 = 28;
  v138 = v260;
  sub_1000C5A54();
  v260 = v138;
  if (v138)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v254 = 0;
    v252 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v245 = 1;
    v246 = 1;
    v139 = &v277 + 4;
LABEL_105:
    *(v139 - 64) = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    goto LABEL_15;
  }

  *&v263[v262[30]] = v269;
  v275 = 30;
  v140 = v260;
  sub_1000C5A54();
  v260 = v140;
  if (v140)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v254 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v139 = &v278;
    goto LABEL_105;
  }

  *&v263[v262[34]] = v269;
  v275 = 31;
  v141 = v260;
  sub_1000C5A54();
  v260 = v141;
  if (v141)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v254 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v245 = 1;
    v246 = 1;
    v142 = &v277 + 4;
LABEL_110:
    *(v142 - 64) = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    goto LABEL_15;
  }

  *&v263[v262[29]] = v269;
  v275 = 32;
  v143 = v260;
  sub_1000C5A54();
  v260 = v143;
  if (v143)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v142 = &v279;
    goto LABEL_110;
  }

  *&v263[v262[36]] = v269;
  LOBYTE(v269) = 33;
  v144 = v260;
  v145 = sub_1000C5A04();
  v260 = v144;
  if (v144)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v250 = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    goto LABEL_15;
  }

  v147 = &v263[v262[37]];
  *v147 = v145;
  v147[1] = v146;
  v275 = 34;
  v148 = v260;
  sub_1000C5A54();
  v260 = v148;
  if (v148)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v251 = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    goto LABEL_15;
  }

  *&v263[v262[38]] = v269;
  LOBYTE(v269) = 20;
  v149 = v260;
  v150 = sub_1000C5A34();
  v260 = v149;
  if (v149)
  {
    goto LABEL_117;
  }

  v152 = &v263[v262[19]];
  *v152 = v150;
  v152[8] = v151 & 1;
  sub_1000C15D4();
  LOBYTE(v269) = 21;
  sub_1000B684C(&qword_1000FD4A8, &type metadata accessor for Date);
  v153 = v260;
  sub_1000C5A54();
  v260 = v153;
  if (v153)
  {
LABEL_117:
    (*(v267 + 8))(v266, v265);
    LODWORD(v267) = 0;
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
LABEL_118:
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    goto LABEL_15;
  }

  sub_10001D860(v6, &v263[v262[20]], &qword_1000FC5A8, &qword_1000CEA40);
  LOBYTE(v269) = 29;
  v154 = v260;
  v155 = sub_1000C5A84();
  v260 = v154;
  if (v154 || (v157 = &v263[v262[35]], *v157 = v155, v157[8] = v156 & 1, LOBYTE(v269) = 37, v158 = v260, v159 = sub_1000C5A04(), (v260 = v158) != 0))
  {
    (*(v267 + 8))(v266, v265);
    v258 = 0;
    v253 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    goto LABEL_118;
  }

  v161 = &v263[v262[41]];
  *v161 = v159;
  v161[1] = v160;
  LOBYTE(v269) = 36;
  v162 = v260;
  v163 = sub_1000C5A34();
  v260 = v162;
  if (v162 || (v165 = &v263[v262[40]], *v165 = v163, v165[8] = v164 & 1, LOBYTE(v269) = 35, v166 = v260, v167 = sub_1000C5A04(), (v260 = v166) != 0))
  {
    (*(v267 + 8))(v266, v265);
    v258 = 0;
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
LABEL_127:
    v253 = 1;
    goto LABEL_15;
  }

  v169 = &v263[v262[39]];
  *v169 = v167;
  v169[1] = v168;
  v275 = 39;
  v170 = v260;
  sub_1000C5A54();
  v260 = v170;
  if (v170)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v261) = 0;
    v255 = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    v258 = 1;
    goto LABEL_127;
  }

  *&v263[v262[43]] = v269;
  v275 = 38;
  v171 = v260;
  sub_1000C5A54();
  v260 = v171;
  if (v171)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v261) = 0;
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    v258 = 1;
    v253 = 1;
LABEL_132:
    v255 = 1;
    goto LABEL_15;
  }

  *&v263[v262[42]] = v269;
  v275 = 40;
  v172 = v260;
  sub_1000C5A54();
  v260 = v172;
  if (v172)
  {
    (*(v267 + 8))(v266, v265);
    v257 = 0;
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    v258 = 1;
    v253 = 1;
    LODWORD(v261) = 1;
    goto LABEL_132;
  }

  *&v263[v262[44]] = v269;
  v275 = 42;
  v173 = v260;
  sub_1000C5A54();
  v260 = v173;
  if (v173)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v266) = 0;
    v256 = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    v258 = 1;
    v253 = 1;
    LODWORD(v261) = 1;
    v255 = 1;
    v257 = 1;
    goto LABEL_15;
  }

  *&v263[v262[46]] = v269;
  LOBYTE(v269) = 41;
  v174 = v260;
  v175 = sub_1000C5A04();
  v260 = v174;
  if (v174)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v266) = 0;
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    v258 = 1;
    v253 = 1;
    LODWORD(v261) = 1;
    v255 = 1;
    v257 = 1;
LABEL_139:
    v256 = 1;
    goto LABEL_15;
  }

  v177 = &v263[v262[45]];
  *v177 = v175;
  v177[1] = v176;
  LOBYTE(v269) = 43;
  v178 = v260;
  v179 = sub_1000C5A04();
  v260 = v178;
  if (v178)
  {
    (*(v267 + 8))(v266, v265);
    v259 = 0;
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    v258 = 1;
    v253 = 1;
    LODWORD(v261) = 1;
    v255 = 1;
    v257 = 1;
    LODWORD(v266) = 1;
    goto LABEL_139;
  }

  v181 = &v263[v262[47]];
  *v181 = v179;
  v181[1] = v180;
  LOBYTE(v269) = 44;
  v182 = v260;
  v183 = sub_1000C5A04();
  v260 = v182;
  if (v182)
  {
    (*(v267 + 8))(v266, v265);
    v274 = 0;
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    v258 = 1;
    v253 = 1;
    LODWORD(v261) = 1;
    v255 = 1;
    v257 = 1;
    LODWORD(v266) = 1;
    v256 = 1;
    v259 = 1;
    goto LABEL_15;
  }

  v185 = &v263[v262[48]];
  *v185 = v183;
  v185[1] = v184;
  LOBYTE(v269) = 45;
  v186 = v260;
  v187 = sub_1000C5A04();
  v260 = v186;
  if (v186)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v264) = 0;
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    v258 = 1;
    v253 = 1;
    LODWORD(v261) = 1;
    v255 = 1;
    v257 = 1;
    LODWORD(v266) = 1;
    v256 = 1;
    v259 = 1;
    v274 = 1;
    goto LABEL_15;
  }

  v189 = &v263[v262[49]];
  *v189 = v187;
  v189[1] = v188;
  LOBYTE(v269) = 46;
  v190 = v260;
  v191 = sub_1000C5A04();
  v260 = v190;
  if (v190)
  {
    (*(v267 + 8))(v266, v265);
    LODWORD(v265) = 0;
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    v258 = 1;
    v253 = 1;
    LODWORD(v261) = 1;
    v255 = 1;
    v257 = 1;
    LODWORD(v266) = 1;
    v256 = 1;
    v259 = 1;
    v274 = 1;
    LODWORD(v264) = 1;
    goto LABEL_15;
  }

  v193 = &v263[v262[50]];
  *v193 = v191;
  v193[1] = v192;
  LOBYTE(v269) = 47;
  v194 = v260;
  v195 = sub_1000C5A14();
  v260 = v194;
  if (v194 || (v263[v262[51]] = v195, LOBYTE(v269) = 48, v196 = v260, v197 = sub_1000C5A04(), (v260 = v196) != 0))
  {
    (*(v267 + 8))(v266, v265);
    v52 = 0;
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    v258 = 1;
    v253 = 1;
    LODWORD(v261) = 1;
    v255 = 1;
    v257 = 1;
    LODWORD(v266) = 1;
    v256 = 1;
    v259 = 1;
    v274 = 1;
    LODWORD(v264) = 1;
    LODWORD(v265) = 1;
    goto LABEL_15;
  }

  v199 = &v263[v262[52]];
  *v199 = v197;
  v199[1] = v198;
  LOBYTE(v269) = 49;
  v200 = v260;
  v201 = sub_1000C5A34();
  v260 = v200;
  if (v200)
  {
    (*(v267 + 8))(v266, v265);
    v47 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v267) = 1;
    v245 = 1;
    v246 = 1;
    v247 = 1;
    v254 = 1;
    v252 = 1;
    v51 = 1;
    v243 = 1;
    v244 = 1;
    v248 = 1;
    v249 = 1;
    v250 = 1;
    v251 = 1;
    v258 = 1;
    v253 = 1;
    LODWORD(v261) = 1;
    v255 = 1;
    v257 = 1;
    LODWORD(v266) = 1;
    v256 = 1;
    v259 = 1;
    v274 = 1;
    LODWORD(v264) = 1;
    LODWORD(v265) = 1;
    v52 = 1;
LABEL_15:
    sub_100015F68(v268);
    v69 = *v263;

    v80 = *(v263 + 2);

    v70 = *(v263 + 4);

    if (v47)
    {
      v81 = *(v263 + 6);

      if (v48)
      {
LABEL_17:
        v71 = *(v263 + 8);

        if ((v49 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      }
    }

    else if (v48)
    {
      goto LABEL_17;
    }

    if (!v49)
    {
LABEL_18:
      v72 = v52;
      if (v50)
      {
LABEL_19:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        goto LABEL_20;
      }

LABEL_25:
      v79 = v262;
      v77 = v263;
      sub_100018F90(&v263[v262[18]], &qword_1000FC520, &qword_1000C9D20);
      v76 = 0;
      v75 = 0;
      v74 = 0;
      v73 = 0;
      if (!v267)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_24:
    v72 = v52;
    sub_100018CBC(*(v263 + 10), *(v263 + 11));
    if (v50)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  v203 = &v263[v262[53]];
  *v203 = v201;
  v203[8] = v202 & 1;
  LOBYTE(v269) = 50;
  v204 = v260;
  v205 = sub_1000C5A04();
  v73 = v204 == 0;
  v260 = v204;
  if (v204 || (v207 = &v263[v262[54]], *v207 = v205, v207[1] = v206, LOBYTE(v269) = 54, v208 = v260, v209 = sub_1000C5A04(), (v260 = v208) != 0))
  {
    (*(v267 + 8))(v266, v265);
    sub_100015F68(v268);
    v74 = 0;
    v75 = 0;
    v76 = 0;
  }

  else
  {
    v211 = &v263[v262[58]];
    *v211 = v209;
    v211[1] = v210;
    LOBYTE(v269) = 51;
    v212 = v260;
    v213 = sub_1000C5A04();
    v260 = v212;
    if (v212)
    {
      (*(v267 + 8))(v266, v265);
      sub_100015F68(v268);
      v74 = 0;
      v76 = 0;
      v75 = 1;
    }

    else
    {
      v215 = &v263[v262[55]];
      *v215 = v213;
      v215[1] = v214;
      LOBYTE(v269) = 52;
      v216 = v260;
      v217 = sub_1000C5A44();
      v260 = v216;
      if (v216)
      {
        goto LABEL_159;
      }

      v219 = &v263[v262[56]];
      *v219 = v217;
      v219[8] = v218 & 1;
      LOBYTE(v269) = 53;
      v220 = v260;
      v221 = sub_1000C5A84();
      v260 = v220;
      if (v220 || (v223 = &v263[v262[57]], *v223 = v221, v223[8] = v222 & 1, v275 = 55, v224 = v260, sub_1000C5A54(), (v260 = v224) != 0))
      {
LABEL_159:
        (*(v267 + 8))(v266, v265);
        sub_100015F68(v268);
        v76 = 0;
        v74 = 1;
        v75 = 1;
      }

      else
      {
        *&v263[v262[59]] = v269;
        LOBYTE(v269) = 56;
        v225 = v260;
        v226 = sub_1000C5A44();
        v260 = v225;
        if (!v225)
        {
          v228 = v226 == 1;
          if (v227)
          {
            v228 = 2;
          }

          v263[v262[60]] = v228;
          LOBYTE(v269) = 57;
          v229 = v260;
          v230 = sub_1000C5A04();
          v260 = v229;
          if (!v229)
          {
            v238 = v230;
            v239 = v231;
            (*(v267 + 8))(v266, v265);
            v240 = v263;
            v241 = &v263[v262[61]];
            *v241 = v238;
            v241[1] = v239;
            sub_10002E640(v240, v264);
            sub_100015F68(v268);
            return sub_10002E6A4(v240);
          }
        }

        (*(v267 + 8))(v266, v265);
        sub_100015F68(v268);
        v74 = 1;
        v75 = 1;
        v76 = 1;
      }
    }
  }

  v232 = v263;
  v233 = *v263;

  v234 = v232[2];

  v235 = v232[4];

  v236 = v232[6];

  v237 = v232[8];

  sub_100018CBC(v232[10], v232[11]);
  LODWORD(v267) = 1;
  v245 = 1;
  v246 = 1;
  v247 = 1;
  v254 = 1;
  v252 = 1;
  v51 = 1;
  v243 = 1;
  v244 = 1;
  v248 = 1;
  v249 = 1;
  v250 = 1;
  v251 = 1;
  v258 = 1;
  v253 = 1;
  LODWORD(v261) = 1;
  v255 = 1;
  v257 = 1;
  LODWORD(v266) = 1;
  v256 = 1;
  v259 = 1;
  v274 = 1;
  LODWORD(v264) = 1;
  LODWORD(v265) = 1;
  v72 = 1;
LABEL_20:
  v77 = v263;
  v78 = *(v263 + 16);

  v79 = v262;
  sub_100018F90(&v77[v262[18]], &qword_1000FC520, &qword_1000C9D20);
  if (v267)
  {
LABEL_26:
    sub_100018F90(&v77[v79[20]], &qword_1000FC5A8, &qword_1000CEA40);
  }

LABEL_27:
  v82 = *&v77[v79[22] + 8];

  v83 = *&v77[v79[23] + 8];

  v84 = *&v77[v79[24] + 8];

  if (v245)
  {
    v85 = *&v77[v79[26] + 8];

    if ((v246 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (!v246)
  {
LABEL_29:
    if (v247)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

  result = sub_100018CBC(*&v263[v262[27]], *&v263[v262[27] + 8]);
  if (v247)
  {
LABEL_30:
    v86 = &v263[v262[28]];
    v87 = *(v86 + 3);
    v272 = *(v86 + 2);
    v273[0] = v87;
    *(v273 + 13) = *(v86 + 61);
    v88 = *(v86 + 1);
    v270 = *v86;
    v271 = v88;
    result = sub_100018F90(&v270, &qword_1000FDE18, &unk_1000D06D8);
    if ((v254 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_59;
  }

LABEL_58:
  if (!v254)
  {
LABEL_31:
    if (v252)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = sub_100018CBC(*&v263[v262[29]], *&v263[v262[29] + 8]);
  if (v252)
  {
LABEL_32:
    result = sub_100018CBC(*&v263[v262[30]], *&v263[v262[30] + 8]);
    if ((v51 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_61;
  }

LABEL_60:
  if (!v51)
  {
LABEL_33:
    v89 = v262;
    if (v243)
    {
      goto LABEL_34;
    }

    goto LABEL_62;
  }

LABEL_61:
  v89 = v262;
  v98 = *&v263[v262[31] + 8];

  if (v243)
  {
LABEL_34:
    v90 = v263;
    v91 = *&v263[v89[32] + 8];

    if ((v244 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_63;
  }

LABEL_62:
  v90 = v263;
  if (!v244)
  {
LABEL_35:
    if (v248)
    {
      goto LABEL_36;
    }

    goto LABEL_64;
  }

LABEL_63:
  v99 = *&v90[v89[33] + 8];

  if (v248)
  {
LABEL_36:
    result = sub_100018CBC(*&v90[v89[34]], *&v90[v89[34] + 8]);
    if ((v249 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_65;
  }

LABEL_64:
  if (!v249)
  {
LABEL_37:
    if (v250)
    {
      goto LABEL_38;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = sub_100018CBC(*&v90[v89[36]], *&v90[v89[36] + 8]);
  if (v250)
  {
LABEL_38:
    v92 = *&v90[v89[37] + 8];

    if ((v251 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_67;
  }

LABEL_66:
  if (!v251)
  {
LABEL_39:
    if (v258)
    {
      goto LABEL_40;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = sub_100018CBC(*&v90[v89[38]], *&v90[v89[38] + 8]);
  if (v258)
  {
LABEL_40:
    v93 = *&v90[v89[39] + 8];

    if ((v253 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_69;
  }

LABEL_68:
  if (!v253)
  {
LABEL_41:
    if (v261)
    {
      goto LABEL_42;
    }

    goto LABEL_70;
  }

LABEL_69:
  v100 = *&v90[v89[41] + 8];

  if (v261)
  {
LABEL_42:
    result = sub_100018CBC(*&v90[v89[42]], *&v90[v89[42] + 8]);
    if ((v255 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_71;
  }

LABEL_70:
  if (!v255)
  {
LABEL_43:
    if (v257)
    {
      goto LABEL_44;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = sub_100018CBC(*&v90[v89[43]], *&v90[v89[43] + 8]);
  if (v257)
  {
LABEL_44:
    result = sub_100018CBC(*&v90[v89[44]], *&v90[v89[44] + 8]);
    if ((v266 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_73;
  }

LABEL_72:
  if (!v266)
  {
LABEL_45:
    if (v256)
    {
      goto LABEL_46;
    }

    goto LABEL_74;
  }

LABEL_73:
  v101 = *&v90[v89[45] + 8];

  if (v256)
  {
LABEL_46:
    result = sub_100018CBC(*&v90[v89[46]], *&v90[v89[46] + 8]);
    if ((v259 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_75;
  }

LABEL_74:
  if (!v259)
  {
LABEL_47:
    if (v274)
    {
      goto LABEL_48;
    }

    goto LABEL_76;
  }

LABEL_75:
  v102 = *&v90[v89[47] + 8];

  if (v274)
  {
LABEL_48:
    v94 = *&v90[v89[48] + 8];

    if ((v264 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_77;
  }

LABEL_76:
  if (!v264)
  {
LABEL_49:
    if (v265)
    {
      goto LABEL_50;
    }

    goto LABEL_78;
  }

LABEL_77:
  v103 = *&v90[v89[49] + 8];

  if (v265)
  {
LABEL_50:
    v95 = *&v90[v89[50] + 8];

    if ((v72 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_79;
  }

LABEL_78:
  if (!v72)
  {
LABEL_51:
    if (v73)
    {
      goto LABEL_52;
    }

    goto LABEL_80;
  }

LABEL_79:
  v104 = *&v90[v89[52] + 8];

  if (v73)
  {
LABEL_52:
    v96 = *&v90[v89[54] + 8];

    if ((v74 & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_81;
  }

LABEL_80:
  if (!v74)
  {
LABEL_53:
    if (v75)
    {
      goto LABEL_54;
    }

LABEL_82:
    if (!v76)
    {
      return result;
    }

    goto LABEL_83;
  }

LABEL_81:
  v105 = *&v90[v89[55] + 8];

  if ((v75 & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_54:
  v97 = *&v90[v89[58] + 8];

  if ((v76 & 1) == 0)
  {
    return result;
  }

LABEL_83:
  v106 = *&v90[v89[59]];
}

uint64_t MessageDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FDE28, &qword_1000D06E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v146 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000421CC();
  sub_1000C5D04();
  v11 = type metadata accessor for MessageDictionary();
  v12 = (v3 + v11[21]);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v157[0]) = 0;
  sub_1000C5B34();
  if (!v2)
  {
    v15 = (v3 + v11[22]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v157[0]) = 1;
    sub_1000C5AF4();
    v19 = v11[18];
    LOBYTE(v157[0]) = 2;
    sub_1000C1614();
    sub_1000B684C(&qword_1000FDC70, &type metadata accessor for UUID);
    sub_1000C5B44();
    v20 = (v3 + v11[23]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v157[0]) = 3;
    sub_1000C5AF4();
    v23 = (v3 + v11[24]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v157[0]) = 4;
    sub_1000C5AF4();
    v26 = (v3 + v11[25]);
    v27 = *v26;
    v28 = *(v26 + 8);
    LOBYTE(v157[0]) = 5;
    sub_1000C5B74();
    *&v157[0] = *v3;
    LOBYTE(v153) = 6;
    v29 = sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    v30 = sub_100015FB4(&qword_1000FC380);
    v163 = v29;
    sub_1000C5B44();
    v146[2] = v30;
    v31 = *(v3 + 8);
    v32 = *(v3 + 16);
    LOBYTE(v157[0]) = 7;
    sub_1000C5AF4();
    v33 = *(v3 + 24);
    v34 = *(v3 + 32);
    LOBYTE(v157[0]) = 8;
    sub_1000C5AF4();
    v35 = *(v3 + 40);
    v36 = *(v3 + 48);
    LOBYTE(v157[0]) = 9;
    sub_1000C5AF4();
    v37 = *(v3 + 56);
    v38 = *(v3 + 64);
    LOBYTE(v157[0]) = 10;
    sub_1000C5AF4();
    v39 = *(v3 + 72);
    LOBYTE(v157[0]) = 11;
    sub_1000C5B04();
    v40 = *(v3 + 73);
    LOBYTE(v157[0]) = 12;
    sub_1000C5B04();
    v41 = *(v3 + 96);
    LOBYTE(v157[0]) = 13;
    sub_1000C5B04();
    v42 = *(v3 + 98);
    LOBYTE(v157[0]) = 14;
    sub_1000C5B04();
    v43 = *(v3 + 99);
    LOBYTE(v157[0]) = 15;
    sub_1000C5B04();
    v44 = *(v3 + 88);
    *&v157[0] = *(v3 + 80);
    *(&v157[0] + 1) = v44;
    LOBYTE(v153) = 16;
    sub_100018C54(*&v157[0], v44);
    sub_100042EA0();
    sub_1000C5B44();
    sub_100018CBC(*&v157[0], *(&v157[0] + 1));
    v45 = *(v3 + 97);
    LOBYTE(v157[0]) = 17;
    sub_1000C5B04();
    v46 = *(v3 + 104);
    v47 = *(v3 + 112);
    LOBYTE(v157[0]) = 18;
    sub_1000C5B24();
    v48 = *(v3 + 120);
    v49 = *(v3 + 128);
    LOBYTE(v157[0]) = 19;
    sub_1000C5AF4();
    v50 = (v3 + v11[19]);
    v51 = *v50;
    v52 = *(v50 + 8);
    LOBYTE(v157[0]) = 20;
    sub_1000C5B24();
    v146[1] = v11[20];
    LOBYTE(v157[0]) = 21;
    sub_1000C15D4();
    sub_1000B684C(&qword_1000FD4D0, &type metadata accessor for Date);
    sub_1000C5B44();
    v53 = (v3 + v11[26]);
    v54 = *v53;
    v55 = v53[1];
    LOBYTE(v157[0]) = 22;
    sub_1000C5AF4();
    v56 = (v3 + v11[27]);
    v57 = v56[1];
    v161 = *v56;
    v162 = v57;
    v160 = 23;
    sub_100018C54(v161, v57);
    sub_1000C5B44();
    sub_100018CBC(v161, v162);
    v58 = v3 + v11[28];
    v59 = *(v58 + 16);
    v60 = *(v58 + 48);
    v158 = *(v58 + 32);
    *v159 = v60;
    v61 = *(v58 + 16);
    v157[0] = *v58;
    v157[1] = v61;
    v62 = *(v58 + 48);
    v155 = v158;
    v156[0] = v62;
    *&v159[13] = *(v58 + 61);
    *(v156 + 13) = *(v58 + 61);
    v153 = v157[0];
    v154 = v59;
    v152 = 24;
    sub_100018F28(v157, v150, &qword_1000FDE18, &unk_1000D06D8);
    sub_1000B6894();
    sub_1000C5B44();
    v150[2] = v155;
    *v151 = v156[0];
    *&v151[13] = *(v156 + 13);
    v150[0] = v153;
    v150[1] = v154;
    sub_100018F90(v150, &qword_1000FDE18, &unk_1000D06D8);
    v63 = (v3 + v11[31]);
    v64 = *v63;
    v65 = v63[1];
    LOBYTE(v148) = 25;
    sub_1000C5AF4();
    v66 = (v3 + v11[32]);
    v67 = *v66;
    v68 = v66[1];
    LOBYTE(v148) = 26;
    sub_1000C5AF4();
    v69 = (v3 + v11[33]);
    v70 = *v69;
    v71 = v69[1];
    LOBYTE(v148) = 27;
    sub_1000C5AF4();
    v72 = (v3 + v11[30]);
    v73 = v72[1];
    v148 = *v72;
    v149 = v73;
    v147 = 28;
    sub_100018C54(v148, v73);
    sub_1000C5B44();
    sub_100018CBC(v148, v149);
    v74 = (v3 + v11[35]);
    v75 = *v74;
    v76 = *(v74 + 8);
    LOBYTE(v148) = 29;
    sub_1000C5B74();
    v77 = (v3 + v11[34]);
    v78 = v77[1];
    v148 = *v77;
    v149 = v78;
    v147 = 30;
    sub_100018C54(v148, v78);
    sub_1000C5B44();
    sub_100018CBC(v148, v149);
    v79 = (v3 + v11[29]);
    v80 = v79[1];
    v148 = *v79;
    v149 = v80;
    v147 = 31;
    sub_100018C54(v148, v80);
    sub_1000C5B44();
    sub_100018CBC(v148, v149);
    v81 = (v3 + v11[36]);
    v82 = v81[1];
    v148 = *v81;
    v149 = v82;
    v147 = 32;
    sub_100018C54(v148, v82);
    sub_1000C5B44();
    sub_100018CBC(v148, v149);
    v83 = (v3 + v11[37]);
    v84 = *v83;
    v85 = v83[1];
    LOBYTE(v148) = 33;
    sub_1000C5AF4();
    v86 = (v3 + v11[38]);
    v87 = v86[1];
    v148 = *v86;
    v149 = v87;
    v147 = 34;
    sub_100018C54(v148, v87);
    sub_1000C5B44();
    sub_100018CBC(v148, v149);
    v88 = (v3 + v11[39]);
    v89 = *v88;
    v90 = v88[1];
    LOBYTE(v148) = 35;
    sub_1000C5AF4();
    v91 = (v3 + v11[40]);
    v92 = *v91;
    v93 = *(v91 + 8);
    LOBYTE(v148) = 36;
    sub_1000C5B24();
    v94 = (v3 + v11[41]);
    v95 = *v94;
    v96 = v94[1];
    LOBYTE(v148) = 37;
    sub_1000C5AF4();
    v97 = (v3 + v11[42]);
    v98 = v97[1];
    v148 = *v97;
    v149 = v98;
    v147 = 38;
    sub_100018C54(v148, v98);
    sub_1000C5B44();
    sub_100018CBC(v148, v149);
    v99 = (v3 + v11[43]);
    v100 = v99[1];
    v148 = *v99;
    v149 = v100;
    v147 = 39;
    sub_100018C54(v148, v100);
    sub_1000C5B44();
    sub_100018CBC(v148, v149);
    v101 = (v3 + v11[44]);
    v102 = v101[1];
    v148 = *v101;
    v149 = v102;
    v147 = 40;
    sub_100018C54(v148, v102);
    sub_1000C5B44();
    sub_100018CBC(v148, v149);
    v103 = (v3 + v11[45]);
    v104 = *v103;
    v105 = v103[1];
    LOBYTE(v148) = 41;
    sub_1000C5AF4();
    v106 = (v3 + v11[46]);
    v107 = v106[1];
    v148 = *v106;
    v149 = v107;
    v147 = 42;
    sub_100018C54(v148, v107);
    sub_1000C5B44();
    sub_100018CBC(v148, v149);
    v108 = (v3 + v11[47]);
    v109 = *v108;
    v110 = v108[1];
    LOBYTE(v148) = 43;
    sub_1000C5AF4();
    v111 = (v3 + v11[48]);
    v112 = *v111;
    v113 = v111[1];
    LOBYTE(v148) = 44;
    sub_1000C5AF4();
    v114 = (v3 + v11[49]);
    v115 = *v114;
    v116 = v114[1];
    LOBYTE(v148) = 45;
    sub_1000C5AF4();
    v117 = (v3 + v11[50]);
    v118 = *v117;
    v119 = v117[1];
    LOBYTE(v148) = 46;
    sub_1000C5AF4();
    v120 = *(v3 + v11[51]);
    LOBYTE(v148) = 47;
    sub_1000C5B04();
    v121 = (v3 + v11[52]);
    v122 = *v121;
    v123 = v121[1];
    LOBYTE(v148) = 48;
    sub_1000C5AF4();
    v124 = (v3 + v11[53]);
    v125 = *v124;
    v126 = *(v124 + 8);
    LOBYTE(v148) = 49;
    sub_1000C5B24();
    v127 = (v3 + v11[54]);
    v128 = *v127;
    v129 = v127[1];
    LOBYTE(v148) = 50;
    sub_1000C5AF4();
    v130 = (v3 + v11[55]);
    v131 = *v130;
    v132 = v130[1];
    LOBYTE(v148) = 51;
    sub_1000C5AF4();
    v133 = (v3 + v11[56]);
    v134 = *v133;
    v135 = *(v133 + 8);
    LOBYTE(v148) = 52;
    sub_1000C5B34();
    v136 = (v3 + v11[57]);
    v137 = *v136;
    v138 = *(v136 + 8);
    LOBYTE(v148) = 53;
    sub_1000C5B74();
    v139 = (v3 + v11[58]);
    v140 = *v139;
    v141 = v139[1];
    LOBYTE(v148) = 54;
    sub_1000C5AF4();
    v148 = *(v3 + v11[59]);
    v147 = 55;
    sub_1000C5B44();
    v142 = *(v3 + v11[60]);
    LOBYTE(v148) = 56;
    sub_1000C5B04();
    v143 = (v3 + v11[61]);
    v144 = *v143;
    v145 = v143[1];
    LOBYTE(v148) = 57;
    sub_1000C5AF4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t MessageDictionary.CodingKeys.rawValue.getter(char a1)
{
  result = 30320;
  switch(a1)
  {
    case 1:
      result = 30311;
      break;
    case 2:
      result = 114;
      break;
    case 3:
      result = 6580583;
      break;
    case 4:
      result = 110;
      break;
    case 5:
      result = 1970434151;
      break;
    case 6:
      result = 112;
      break;
    case 7:
      result = 115;
      break;
    case 8:
      result = 116;
      break;
    case 9:
      result = 120;
      break;
    case 10:
      result = 30825;
      break;
    case 11:
      result = 117;
      break;
    case 12:
      result = 97;
      break;
    case 13:
      result = 29281;
      break;
    case 14:
      result = 7565171;
      break;
    case 15:
      result = 99;
      break;
    case 16:
      result = 808280425;
      break;
    case 17:
      result = 101;
      break;
    case 18:
      result = 28786;
      break;
    case 19:
      result = 29549;
      break;
    case 20:
      result = 29811;
      break;
    case 21:
      result = 25715;
      break;
    case 22:
      result = 6580578;
      break;
    case 23:
      result = 28770;
      break;
    case 24:
      result = 1768190050;
      break;
    case 25:
      result = 26484;
      break;
    case 26:
      result = 6711156;
      break;
    case 27:
      result = 6580585;
      break;
    case 28:
      result = 6515060;
      break;
    case 29:
      result = 1684628084;
      break;
    case 30:
      result = 6910829;
      break;
    case 31:
      result = 6911073;
      break;
    case 32:
      result = 6581363;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0xD00000000000001BLL;
      break;
    case 35:
      result = 0x546567617373654DLL;
      break;
    case 36:
      result = 0xD000000000000012;
      break;
    case 37:
      result = 0xD000000000000012;
      break;
    case 38:
      result = 0x4B4457524C6ELL;
      break;
    case 39:
      result = 1262770030;
      break;
    case 40:
      result = 1263359854;
      break;
    case 41:
      result = 1145655920;
      break;
    case 42:
      result = 1146241390;
      break;
    case 43:
      result = 6517345;
      break;
    case 44:
      result = 6648417;
      break;
    case 45:
      result = 0x7372676F61;
      break;
    case 46:
      result = 0x6572676F61;
      break;
    case 47:
      result = 1734766451;
      break;
    case 48:
      result = 0x646967666F73;
      break;
    case 49:
      result = 7630177;
      break;
    case 50:
      result = 7040353;
      break;
    case 51:
      result = 6712673;
      break;
    case 52:
      result = 0x636C726D61;
      break;
    case 53:
      result = 0x6E6C726D61;
      break;
    case 54:
      result = 6647137;
      break;
    case 55:
      result = 26226;
      break;
    case 56:
      result = 6383970;
      break;
    case 57:
      result = 1684632162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata accessor for MessageDictionary()
{
  result = qword_1000FDEC8;
  if (!qword_1000FDEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000B67F8()
{
  result = qword_1000FDE20;
  if (!qword_1000FDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE20);
  }

  return result;
}

uint64_t sub_1000B684C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B6894()
{
  result = qword_1000FDE30;
  if (!qword_1000FDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE30);
  }

  return result;
}

uint64_t sub_1000B68E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MessageDictionary.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MessageDictionary.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_1000B6970()
{
  v1 = *v0;
  sub_1000C5CB4();
  MessageDictionary.CodingKeys.rawValue.getter(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000B69D4()
{
  MessageDictionary.CodingKeys.rawValue.getter(*v0);
  sub_1000C52C4();
}

Swift::Int sub_1000B6A28()
{
  v1 = *v0;
  sub_1000C5CB4();
  MessageDictionary.CodingKeys.rawValue.getter(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000B6A88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s24MessagesBlastDoorService17MessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_1000B6AB8@<X0>(unint64_t *a1@<X8>)
{
  result = MessageDictionary.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B6AEC@<X0>(_BYTE *a1@<X8>)
{
  result = _s24MessagesBlastDoorService17MessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_1000B6B20(uint64_t a1)
{
  v2 = sub_1000421CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B6B5C(uint64_t a1)
{
  v2 = sub_1000421CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BalloonPluginPayloadAttachment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FDE38, &unk_1000D06F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8 - 8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100018E78();
  sub_1000C5D04();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  sub_1000C5AF4();
  if (!v2)
  {
    v23 = *(v3 + 1);
    v21 = *(v3 + 1);
    v20 = 1;
    sub_100018F28(&v23, v19, &qword_1000FC3F8, &qword_1000CE300);
    sub_100042EA0();
    sub_1000C5B44();
    sub_100018CBC(v21, *(&v21 + 1));
    v13 = v3[4];
    v14 = v3[5];
    LOBYTE(v21) = 2;
    sub_1000C5AF4();
    v21 = *(v3 + 3);
    v22 = v21;
    v20 = 3;
    sub_100018F28(&v22, v19, &qword_1000FC3F8, &qword_1000CE300);
    sub_1000C5B44();
    sub_100018CBC(v21, *(&v21 + 1));
    v15 = *(v3 + 16);
    v16 = *(v3 + 68);
    LOBYTE(v21) = 4;
    v19[0] = v16;
    sub_1000C5B54();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 BalloonPluginPayloadAttachment.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000B7134(a1, v6);
  if (!v2)
  {
    v5 = *v7;
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 61) = *&v7[13];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

MessagesBlastDoorService::BalloonPluginPayloadAttachment::CodingKeys_optional __swiftcall BalloonPluginPayloadAttachment.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v5._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._rawValue = &off_1000F2748;
  v5._object = object;
  v3 = sub_1000C59F4(v2, v5);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_1000B6EE8()
{
  v1 = *v0;
  sub_1000C5CB4();
  v2 = *&aO_0[8 * v1];
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000B6F44()
{
  v1 = *&aO_0[8 * *v0];
  sub_1000C52C4();
}

Swift::Int sub_1000B6F84()
{
  v1 = *v0;
  sub_1000C5CB4();
  v2 = *&aO_0[8 * v1];
  sub_1000C52C4();

  return sub_1000C5CD4();
}

MessagesBlastDoorService::BalloonPluginPayloadAttachment::CodingKeys_optional sub_1000B6FDC@<W0>(Swift::String *a1@<X0>, MessagesBlastDoorService::BalloonPluginPayloadAttachment::CodingKeys_optional *a2@<X8>)
{
  result.value = BalloonPluginPayloadAttachment.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1000B7068(uint64_t a1)
{
  v2 = sub_100018E78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B70A4(uint64_t a1)
{
  v2 = sub_100018E78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s24MessagesBlastDoorService17MessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_1000C5C34();

  if (v0 >= 0x3A)
  {
    return 58;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000B7134@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FDFF8, &unk_1000D0BC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100018E78();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  LOBYTE(v33) = 0;
  *&v28 = sub_1000C5A04();
  *(&v28 + 1) = v11;
  LOBYTE(v29) = 1;
  sub_100042DD4();
  sub_1000C5A54();
  v27 = v33;
  v26 = v34;
  LOBYTE(v33) = 2;
  *&v25 = sub_1000C5A04();
  *(&v25 + 1) = v12;
  LOBYTE(v29) = 3;
  sub_1000C5A54();
  v13 = v34;
  v24 = v33;
  v44 = 4;
  v14 = sub_1000C5A64();
  (*(v6 + 8))(v9, v5);
  v43 = BYTE4(v14) & 1;
  v15 = *(&v28 + 1);
  v29 = v28;
  v16 = v27;
  v17 = v26;
  *&v30 = v27;
  *(&v30 + 1) = v26;
  v18 = *(&v25 + 1);
  v31 = v25;
  *v32 = v24;
  *&v32[8] = v13;
  *&v32[16] = v14;
  v23 = v13;
  v32[20] = BYTE4(v14) & 1;
  sub_100018ECC(&v29, &v33);
  sub_100015F68(a1);
  v33 = v28;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v37 = v25;
  v38 = v18;
  v39 = v24;
  v40 = v23;
  v41 = v14;
  v42 = BYTE4(v14) & 1;
  result = sub_100018E24(&v33);
  v20 = *v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v20;
  *(a2 + 61) = *&v32[13];
  v21 = v30;
  *a2 = v29;
  *(a2 + 16) = v21;
  return result;
}

unint64_t sub_1000B7568()
{
  result = qword_1000FDE40;
  if (!qword_1000FDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE40);
  }

  return result;
}

unint64_t sub_1000B75C0()
{
  result = qword_1000FDE48;
  if (!qword_1000FDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE48);
  }

  return result;
}

unint64_t sub_1000B7618()
{
  result = qword_1000FDE50;
  if (!qword_1000FDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE50);
  }

  return result;
}

unint64_t sub_1000B7670()
{
  result = qword_1000FDE58;
  if (!qword_1000FDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE58);
  }

  return result;
}

unint64_t sub_1000B76C8()
{
  result = qword_1000FDE60;
  if (!qword_1000FDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE60);
  }

  return result;
}

unint64_t sub_1000B7720()
{
  result = qword_1000FDE68;
  if (!qword_1000FDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDE68);
  }

  return result;
}

uint64_t sub_1000B7788(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 72);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 80);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1000B78E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000B7A20()
{
  sub_1000B7CD8();
  if (v0 <= 0x3F)
  {
    sub_10005425C(319, &qword_1000FCD00);
    if (v1 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCD08);
      if (v2 <= 0x3F)
      {
        sub_10005425C(319, &qword_1000FCCF0);
        if (v3 <= 0x3F)
        {
          sub_10005425C(319, &qword_1000FD3C8);
          if (v4 <= 0x3F)
          {
            sub_1000B7D3C(319, &qword_1000FDED8, &type metadata accessor for UUID);
            if (v5 <= 0x3F)
            {
              sub_1000B7D3C(319, &qword_1000FD3E0, &type metadata accessor for Date);
              if (v6 <= 0x3F)
              {
                sub_10005425C(319, &qword_1000FDEE0);
                if (v7 <= 0x3F)
                {
                  sub_10005425C(319, &unk_1000FD3F8);
                  if (v8 <= 0x3F)
                  {
                    sub_10005425C(319, &unk_1000FDEE8);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1000B7CD8()
{
  if (!qword_1000FD3D8)
  {
    sub_10001308C(&qword_1000FC378, &qword_1000CA860);
    v0 = sub_1000C5854();
    if (!v1)
    {
      atomic_store(v0, &qword_1000FD3D8);
    }
  }
}

void sub_1000B7D3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000C5854();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MessageDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC7)
  {
    goto LABEL_17;
  }

  if (a2 + 57 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 57) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 57;
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

      return (*a1 | (v4 << 8)) - 57;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 57;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3A;
  v8 = v6 - 58;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 57) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC7)
  {
    v4 = 0;
  }

  if (a2 > 0xC6)
  {
    v5 = ((a2 - 199) >> 8) + 1;
    *result = a2 + 57;
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
    *result = a2 + 57;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000B7EE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 69))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000B7F3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1000B7FDC(uint64_t a1)
{
  result = sub_100012664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B8008()
{
  result = qword_1000FE000;
  if (!qword_1000FE000)
  {
    sub_1000C3464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE000);
  }

  return result;
}

unint64_t sub_1000B80A0(uint64_t a1)
{
  result = sub_1000125BC();
  *(a1 + 8) = result;
  return result;
}

void sub_1000B8110(void (*a1)(char *, char *, uint64_t)@<X8>)
{
  v129 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v131 = v117 - v3;
  v135 = sub_1000C5974();
  v140 = *(v135 - 8);
  v4 = *(v140 + 64);
  v5 = __chkstk_darwin(v135);
  v132 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v141 = v117 - v8;
  __chkstk_darwin(v7);
  v134 = v117 - v9;
  v10 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v137 = v117 - v12;
  *&v130 = sub_1000C4274();
  v128 = *(v130 - 8);
  v13 = *(v128 + 64);
  v14 = __chkstk_darwin(v130);
  v127 = v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v133 = v117 - v16;
  v17 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v136 = v117 - v19;
  v20 = sub_1000C1974();
  v138 = *(v20 - 8);
  v139 = v20;
  v21 = *(v138 + 64);
  __chkstk_darwin(v20);
  v23 = v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000C4FC4();
  v142 = *(v24 - 8);
  v25 = *(v142 + 64);
  __chkstk_darwin(v24);
  v27 = v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000C4ED4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = v117 - v34;
  v36 = v143;
  sub_1000C1994();
  if (!v36)
  {
    v120 = v33;
    v121 = 0;
    v123 = v23;
    v124 = v27;
    v37 = v142;
    v122 = v24;
    v125 = v35;
    v126 = v29;
    v143 = v28;
    v38 = sub_1000C1984();
    if (v39 >> 60 == 15)
    {
      sub_100014F70();
      v40 = sub_1000C5714();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1000C94D0;
      v42 = v137;
      v43 = v125;
      sub_1000C4EC4();
      v44 = sub_1000C1614();
      (*(*(v44 - 8) + 56))(v42, 0, 1, v44);
      v45 = sub_1000C4A84();
      v47 = v46;
      sub_100018F90(v42, &qword_1000FC520, &qword_1000C9D20);
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = sub_100014FBC();
      *(v41 + 32) = v45;
      *(v41 + 40) = v47;
      sub_1000C5554();
      sub_1000C1A44();

      sub_1000B97A8();
      swift_allocError();
      swift_willThrow();
      (*(v126 + 8))(v43, v143);
      return;
    }

    v118 = v38;
    v119 = v39;
    isa = sub_1000C1544().super.isa;
    v49 = [(objc_class *)isa _imOptionallyDecompressData];

    v50 = sub_1000C1564();
    v52 = v51;

    v137 = v52;
    v53 = v52 >> 62;
    if ((v52 >> 62) <= 1)
    {
      v54 = v37;
      v55 = v140;
      v56 = v141;
      v57 = v138;
      v58 = v139;
      v59 = v123;
      if (!v53)
      {
        v60 = v124;
        if (!BYTE6(v137))
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      v60 = v124;
      if (!__OFSUB__(HIDWORD(v50), v50))
      {
        if (HIDWORD(v50) - v50 <= 0)
        {
          goto LABEL_16;
        }

LABEL_11:
        v65 = sub_1000C1464();
        v66 = *(v65 + 48);
        v67 = *(v65 + 52);
        swift_allocObject();
        v68 = sub_1000C1454();
        sub_1000B9844();
        v69 = v121;
        sub_1000C1444();
        v117[1] = v68;
        if (v69)
        {
          v142 = v50;
          *&v145 = v69;
          swift_errorRetain();
          sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
          v71 = v134;
          v70 = v135;
          if (swift_dynamicCast())
          {

            (*(v55 + 32))(v56, v71, v70);
            v134 = sub_100014F70();
            v72 = v70;
            v73 = sub_1000C57C4();
            v133 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
            v74 = swift_allocObject();
            v75 = v56;
            v76 = v74;
            v130 = xmmword_1000C94D0;
            *(v74 + 16) = xmmword_1000C94D0;
            v129 = *(v55 + 16);
            v77 = v131;
            v129(v131, v75, v72);
            (*(v55 + 56))(v77, 0, 1, v72);
            v78 = sub_1000C4A84();
            v80 = v79;
            sub_100018F90(v77, &qword_1000FC430, &unk_1000C9B00);
            v76[7] = &type metadata for String;
            v131 = sub_100014FBC();
            v76[8] = v131;
            v76[4] = v78;
            v76[5] = v80;
            sub_1000C5554();
            sub_1000C1A44();

            v82 = v138;
            v81 = v139;
            v83 = v123;
            (*(v138 + 104))(v123, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v139);
            sub_1000C1964();
            (*(v82 + 8))(v83, v81);
            v129(v132, v141, v135);
            v84 = v124;
            sub_1000C4FA4();
            v85 = sub_1000C57C4();
            v86 = swift_allocObject();
            *(v86 + 16) = v130;
            v139 = *(v54 + 16);
            v87 = v136;
            v88 = v122;
            v139(v136, v84, v122);
            (*(v54 + 56))(v87, 0, 1, v88);
            v89 = v54;
            v90 = sub_1000C4A84();
            v92 = v91;
            sub_100018F90(v87, &qword_1000FC438, &unk_1000C9DC0);
            v93 = v131;
            *(v86 + 56) = &type metadata for String;
            *(v86 + 64) = v93;
            *(v86 + 32) = v90;
            *(v86 + 40) = v92;
            sub_1000C5554();
            sub_1000C1A44();

            sub_1000B97FC(&qword_1000FC360, &type metadata accessor for Explosion);
            swift_allocError();
            v94 = v124;
            v139(v95, v124, v88);
            swift_willThrow();
            sub_100018CBC(v118, v119);

            sub_100018CD0(v142, v137);
            (*(v89 + 8))(v94, v88);
            (*(v140 + 8))(v141, v135);
            (*(v126 + 8))(v125, v143);
          }

          else
          {

            sub_100014F70();
            v110 = sub_1000C57C4();
            sub_1000124CC(&qword_1000FC348, qword_1000C9550);
            v111 = swift_allocObject();
            *(v111 + 16) = xmmword_1000C94D0;
            *&v145 = v69;
            v112 = sub_1000C4A84();
            v114 = v113;
            *(v111 + 56) = &type metadata for String;
            *(v111 + 64) = sub_100014FBC();
            *(v111 + 32) = v112;
            *(v111 + 40) = v114;
            sub_1000C5554();
            sub_1000C1A44();

            swift_getErrorValue();
            swift_getDynamicType();
            *&v145 = 0;
            *(&v145 + 1) = 0xE000000000000000;
            sub_1000C5944(22);

            *&v145 = 0xD000000000000014;
            *(&v145 + 1) = 0x80000001000D5330;
            v172._countAndFlagsBits = sub_1000C5D34();
            sub_1000C52E4(v172);

            sub_1000B97FC(&qword_1000FC360, &type metadata accessor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            sub_100018CBC(v118, v119);

            sub_100018CD0(v142, v137);

            (*(v126 + 8))(v125, v143);
          }
        }

        else
        {
          v144[10] = v155;
          v144[11] = v156;
          v144[12] = v157;
          v144[13] = v158;
          v144[6] = v151;
          v144[7] = v152;
          v144[8] = v153;
          v144[9] = v154;
          v144[2] = v147;
          v144[3] = v148;
          v144[4] = v149;
          v144[5] = v150;
          v144[0] = v145;
          v144[1] = v146;
          v169 = v155;
          v170 = v156;
          v171 = v157;
          v165 = v151;
          v166 = v152;
          v167 = v153;
          v168 = v154;
          v161 = v147;
          v162 = v148;
          v163 = v149;
          v164 = v150;
          v159 = v145;
          v160 = v146;
          v108 = v133;
          sub_1000B91E8();
          v109 = v125;
          v142 = v50;
          v115 = v126;
          (*(v126 + 16))(v120, v125, v143);
          v116 = v128;
          (*(v128 + 16))(v127, v108, v130);

          sub_1000B9898(v144);
          sub_1000C4534();
          sub_100018CBC(v118, v119);

          sub_100018CD0(v142, v137);
          (*(v116 + 8))(v133, v130);
          (*(v115 + 8))(v109, v143);
        }

        return;
      }

LABEL_21:
      __break(1u);
      return;
    }

    v54 = v37;
    v59 = v123;
    v60 = v124;
    v55 = v140;
    v56 = v141;
    v57 = v138;
    v58 = v139;
    if (v53 == 2)
    {
      v62 = *(v50 + 16);
      v61 = *(v50 + 24);
      v63 = __OFSUB__(v61, v62);
      v64 = v61 - v62;
      if (v63)
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v64 > 0)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    v96 = v57;
    (*(v57 + 104))(v59, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v58);
    sub_1000C1964();
    v142 = v50;
    (*(v96 + 8))(v59, v58);
    sub_1000C4FB4();
    sub_100014F70();
    v97 = sub_1000C57C4();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1000C94D0;
    v141 = *(v54 + 16);
    v99 = v136;
    v100 = v60;
    v101 = v122;
    (v141)(v136, v100, v122);
    (*(v54 + 56))(v99, 0, 1, v101);
    v102 = v54;
    v103 = sub_1000C4A84();
    v105 = v104;
    sub_100018F90(v99, &qword_1000FC438, &unk_1000C9DC0);
    *(v98 + 56) = &type metadata for String;
    *(v98 + 64) = sub_100014FBC();
    *(v98 + 32) = v103;
    *(v98 + 40) = v105;
    sub_1000C5554();
    sub_1000C1A44();

    sub_1000B97FC(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    v106 = v124;
    (v141)(v107, v124, v101);
    swift_willThrow();
    sub_100018CBC(v118, v119);
    sub_100018CD0(v142, v137);
    (*(v102 + 8))(v106, v101);
    (*(v126 + 8))(v125, v143);
  }
}

void sub_1000B91E8()
{
  if (*(v0 + 72))
  {
    v1 = 0;
  }

  else
  {
    v1 = v0[8];
  }

  if (v1 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (*(v0 + 88))
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[10];
  }

  if (v2 < 0)
  {
    goto LABEL_17;
  }

  if (v0[15] & 1) != 0 || (v0[17] & 1) != 0 || (v0[19] & 1) != 0 || (v0[21] & 1) != 0 || (v0[23])
  {
    sub_1000B98C8();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v14 = v0[16];
    v15 = v0[14];
    v13 = v0[18];
    v11 = v0[20];
    v10 = v0[22];
    v3 = v0[1];
    v19 = *v0;
    v4 = v0[3];
    v5 = v0[5];
    v17 = v0[4];
    v18 = v0[2];
    v6 = v0[25];
    v16 = v0[24];
    v7 = v0[7];
    v12 = v0[6];
    v8 = v0[12];
    v9 = *(v0 + 104);

    sub_1000C4264();
  }
}

uint64_t sub_1000B93B0(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FE040, &qword_1000D0EC8);
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v8 = &v26[-v7];
  v9 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000BA8C0();
  sub_1000C5D04();
  v10 = v3[10];
  v11 = v3[8];
  v51 = v3[9];
  v52 = v10;
  v12 = v3[10];
  v13 = v3[12];
  v53 = v3[11];
  v54 = v13;
  v14 = v3[6];
  v15 = v3[4];
  v47 = v3[5];
  v48 = v14;
  v16 = v3[6];
  v17 = v3[8];
  v49 = v3[7];
  v50 = v17;
  v18 = v3[2];
  v19 = *v3;
  v43 = v3[1];
  v44 = v18;
  v20 = v3[2];
  v21 = v3[4];
  v45 = v3[3];
  v46 = v21;
  v22 = *v3;
  v39 = v12;
  v40 = v53;
  v41 = v3[12];
  v42 = v22;
  v35 = v16;
  v36 = v49;
  v37 = v11;
  v38 = v51;
  v31 = v20;
  v32 = v45;
  v33 = v15;
  v34 = v47;
  v29 = v19;
  v30 = v43;
  v28 = 0;
  sub_1000BA9D0(&v42, v27);
  sub_1000BAA08();
  sub_1000C5BB4();
  v27[10] = v39;
  v27[11] = v40;
  v27[12] = v41;
  v27[6] = v35;
  v27[7] = v36;
  v27[8] = v37;
  v27[9] = v38;
  v27[2] = v31;
  v27[3] = v32;
  v27[4] = v33;
  v27[5] = v34;
  v27[0] = v29;
  v27[1] = v30;
  sub_1000BA968(v27);
  if (!v2)
  {
    v23 = *(v3 + 26);
    v24 = *(v3 + 27);
    v26[15] = 1;
    sub_1000C5B84();
  }

  return (*(v55 + 8))(v8, v5);
}

uint64_t sub_1000B9634@<X0>(void (*a1)(char *, char *, uint64_t)@<X8>)
{
  v3 = sub_1000C19B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1464();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_1000B97FC(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v1)
  {
    sub_1000B8110(a1);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

unint64_t sub_1000B97A8()
{
  result = qword_1000FE010;
  if (!qword_1000FE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE010);
  }

  return result;
}

uint64_t sub_1000B97FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B9844()
{
  result = qword_1000FE018;
  if (!qword_1000FE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE018);
  }

  return result;
}

unint64_t sub_1000B98C8()
{
  result = qword_1000FE020;
  if (!qword_1000FE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE020);
  }

  return result;
}

__n128 sub_1000B992C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1000B9968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1000B99B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B9A48(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1734959987;
  }

  else
  {
    v2 = 1768977011;
  }

  if (*a2)
  {
    v3 = 1734959987;
  }

  else
  {
    v3 = 1768977011;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000C5C04();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1000B9AC0()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000B9B28()
{
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_1000B9B74()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000B9BD8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F27E0;
  v8._object = v3;
  v5 = sub_1000C59F4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1000B9C38(uint64_t *a1@<X8>)
{
  v2 = 1768977011;
  if (*v1)
  {
    v2 = 1734959987;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_1000B9C60()
{
  if (*v0)
  {
    return 1734959987;
  }

  else
  {
    return 1768977011;
  }
}

uint64_t sub_1000B9C84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F27E0;
  v9._object = a2;
  v6 = sub_1000C59F4(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000B9CE8(uint64_t a1)
{
  v2 = sub_1000BA8C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B9D24(uint64_t a1)
{
  v2 = sub_1000BA8C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000B9D60@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000BA594(a1, v12);
  if (!v2)
  {
    v5 = v12[11];
    a2[10] = v12[10];
    a2[11] = v5;
    v6 = v12[13];
    a2[12] = v12[12];
    a2[13] = v6;
    v7 = v12[7];
    a2[6] = v12[6];
    a2[7] = v7;
    v8 = v12[9];
    a2[8] = v12[8];
    a2[9] = v8;
    v9 = v12[3];
    a2[2] = v12[2];
    a2[3] = v9;
    v10 = v12[5];
    a2[4] = v12[4];
    a2[5] = v10;
    result = *v12;
    v11 = v12[1];
    *a2 = v12[0];
    a2[1] = v11;
  }

  return result;
}

uint64_t sub_1000B9DE4(char a1)
{
  result = 6580595;
  switch(a1)
  {
    case 1:
      result = 6580592;
      break;
    case 2:
      result = 0x6873616873;
      break;
    case 3:
      result = 1684628083;
      break;
    case 4:
      result = 6909043;
      break;
    case 5:
      result = 6906227;
      break;
    case 6:
      result = 7827571;
      break;
    case 7:
      result = 7567475;
      break;
    case 8:
      result = 7567731;
      break;
    case 9:
      result = 6386547;
      break;
    case 10:
      result = 7303795;
      break;
    case 11:
      result = 7498099;
      break;
    case 12:
      result = 7762035;
      break;
    case 13:
      result = 1769108851;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B9F0C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000B9DE4(*a1);
  v5 = v4;
  if (v3 == sub_1000B9DE4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_1000B9F94()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000B9DE4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000B9FF8()
{
  sub_1000B9DE4(*v0);
  sub_1000C52C4();
}

Swift::Int sub_1000BA04C()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000B9DE4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000BA0AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BAC7C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000BA0DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B9DE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000BA124@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BAC7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BA158(uint64_t a1)
{
  v2 = sub_1000BB424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BA194(uint64_t a1)
{
  v2 = sub_1000BB424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BA1D0(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FE078, &qword_1000D10E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39[-v8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000BB424();
  sub_1000C5D04();
  v11 = *v3;
  v12 = v3[1];
  v39[15] = 0;
  sub_1000C5B84();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v39[14] = 1;
    sub_1000C5B84();
    v15 = v3[4];
    v16 = v3[5];
    v39[13] = 2;
    sub_1000C5B84();
    v17 = v3[6];
    v18 = v3[7];
    v39[12] = 3;
    sub_1000C5AF4();
    v19 = v3[8];
    v20 = *(v3 + 72);
    v39[11] = 4;
    sub_1000C5B24();
    v21 = v3[10];
    v22 = *(v3 + 88);
    v39[10] = 5;
    sub_1000C5B24();
    v23 = v3[12];
    v24 = *(v3 + 104);
    v39[9] = 6;
    sub_1000C5B14();
    v25 = v3[14];
    v26 = *(v3 + 120);
    v39[8] = 7;
    sub_1000C5B14();
    v27 = v3[16];
    v28 = *(v3 + 136);
    v39[7] = 8;
    sub_1000C5B14();
    v29 = v3[18];
    v30 = *(v3 + 152);
    v39[6] = 9;
    sub_1000C5B14();
    v31 = v3[20];
    v32 = *(v3 + 168);
    v39[5] = 10;
    sub_1000C5B14();
    v33 = *(v3 + 169);
    v39[4] = 11;
    sub_1000C5B04();
    v34 = v3[22];
    v35 = *(v3 + 184);
    v39[3] = 12;
    sub_1000C5B34();
    v36 = v3[24];
    v37 = v3[25];
    v39[2] = 13;
    sub_1000C5AF4();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_1000BA510@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000BACC8(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v10[12];
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1000BA594@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v24 = sub_1000124CC(&qword_1000FE028, &qword_1000D0EC0);
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v24);
  v8 = &v23 - v7;
  v9 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000BA8C0();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v10 = v5;
  v69 = 0;
  sub_1000BA914();
  v11 = v24;
  sub_1000C5AC4();
  v65 = v52;
  v66 = v53;
  v67 = v54;
  v61 = v48;
  v62 = v49;
  v63 = v50;
  v64 = v51;
  v57 = v44;
  v58 = v45;
  v59 = v46;
  v60 = v47;
  v55 = v42;
  v56 = v43;
  v68 = 1;
  v12 = sub_1000C5A94();
  v14 = v13;
  (*(v10 + 8))(v8, v11);
  v35 = v65;
  v36 = v66;
  v37 = v67;
  v31 = v61;
  v32 = v62;
  v33 = v63;
  v34 = v64;
  v27 = v57;
  v28 = v58;
  v29 = v59;
  v30 = v60;
  v25 = v55;
  v26 = v56;
  *&v38 = v12;
  *(&v38 + 1) = v14;
  sub_1000BA998(&v25, v39);
  sub_100015F68(a1);
  v39[10] = v65;
  v39[11] = v66;
  v39[12] = v67;
  v39[6] = v61;
  v39[7] = v62;
  v39[8] = v63;
  v39[9] = v64;
  v39[2] = v57;
  v39[3] = v58;
  v39[4] = v59;
  v39[5] = v60;
  v39[0] = v55;
  v39[1] = v56;
  v40 = v12;
  v41 = v14;
  result = sub_1000B9898(v39);
  v16 = v36;
  a2[10] = v35;
  a2[11] = v16;
  v17 = v38;
  a2[12] = v37;
  a2[13] = v17;
  v18 = v32;
  a2[6] = v31;
  a2[7] = v18;
  v19 = v34;
  a2[8] = v33;
  a2[9] = v19;
  v20 = v28;
  a2[2] = v27;
  a2[3] = v20;
  v21 = v30;
  a2[4] = v29;
  a2[5] = v21;
  v22 = v26;
  *a2 = v25;
  a2[1] = v22;
  return result;
}

unint64_t sub_1000BA8C0()
{
  result = qword_1000FE030;
  if (!qword_1000FE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE030);
  }

  return result;
}

unint64_t sub_1000BA914()
{
  result = qword_1000FE038;
  if (!qword_1000FE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE038);
  }

  return result;
}

unint64_t sub_1000BAA08()
{
  result = qword_1000FE048;
  if (!qword_1000FE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE048);
  }

  return result;
}

__n128 sub_1000BAA6C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1000BAAA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1000BAAF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000BAB78()
{
  result = qword_1000FE050;
  if (!qword_1000FE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE050);
  }

  return result;
}

unint64_t sub_1000BABD0()
{
  result = qword_1000FE058;
  if (!qword_1000FE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE058);
  }

  return result;
}

unint64_t sub_1000BAC28()
{
  result = qword_1000FE060;
  if (!qword_1000FE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE060);
  }

  return result;
}

uint64_t sub_1000BAC7C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F2830;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000BACC8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v123 = sub_1000124CC(&qword_1000FE068, &qword_1000D10D8);
  v5 = *(v123 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v123);
  v8 = &v39 - v7;
  v9 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000BB424();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(a1);
  }

  else
  {
    v10 = v5;
    v63 = a2;
    LOBYTE(v77[0]) = 0;
    v11 = sub_1000C5A94();
    v61 = v12;
    LOBYTE(v77[0]) = 1;
    v13 = sub_1000C5A94();
    v60 = v14;
    v58 = v13;
    LOBYTE(v77[0]) = 2;
    v57 = sub_1000C5A94();
    v59 = v15;
    LOBYTE(v77[0]) = 3;
    v56 = sub_1000C5A04();
    v62 = v16;
    LOBYTE(v77[0]) = 4;
    v55 = sub_1000C5A34();
    v122 = v17 & 1;
    LOBYTE(v77[0]) = 5;
    v54 = sub_1000C5A34();
    v120 = v18 & 1;
    LOBYTE(v77[0]) = 6;
    v53 = sub_1000C5A24();
    v118 = v19 & 1;
    LOBYTE(v77[0]) = 7;
    v52 = sub_1000C5A24();
    v116 = v20 & 1;
    LOBYTE(v77[0]) = 8;
    v51 = sub_1000C5A24();
    v114 = v21 & 1;
    LOBYTE(v77[0]) = 9;
    v22 = sub_1000C5A24();
    v112 = v23 & 1;
    LOBYTE(v77[0]) = 10;
    v24 = sub_1000C5A24();
    v110 = v25 & 1;
    LOBYTE(v77[0]) = 11;
    v50 = sub_1000C5A14();
    LOBYTE(v77[0]) = 12;
    v49 = sub_1000C5A44();
    v107 = v26 & 1;
    v105 = 13;
    v27 = sub_1000C5A04();
    v47 = v28;
    v48 = v27;
    (*(v10 + 8))(v8, v123);
    v29 = v61;
    *&v64 = v11;
    *(&v64 + 1) = v61;
    v30 = v58;
    *&v65 = v58;
    *(&v65 + 1) = v60;
    *&v66 = v57;
    *(&v66 + 1) = v59;
    *&v67 = v56;
    *(&v67 + 1) = v62;
    *&v68 = v55;
    v40 = v122;
    BYTE8(v68) = v122;
    *&v69 = v54;
    v41 = v120;
    BYTE8(v69) = v120;
    *&v70 = v53;
    v42 = v118;
    BYTE8(v70) = v118;
    *&v71 = v52;
    v43 = v116;
    BYTE8(v71) = v116;
    *&v72 = v51;
    v44 = v114;
    BYTE8(v72) = v114;
    *&v73 = v22;
    v45 = v112;
    BYTE8(v73) = v112;
    *&v74 = v24;
    v46 = v110;
    BYTE8(v74) = v110;
    BYTE9(v74) = v50;
    *&v75 = v49;
    LODWORD(v123) = v107;
    BYTE8(v75) = v107;
    *&v76 = v48;
    *(&v76 + 1) = v47;
    sub_1000BA9D0(&v64, v77);
    sub_100015F68(a1);
    v77[0] = v11;
    v77[1] = v29;
    v77[2] = v30;
    v77[3] = v60;
    v77[4] = v57;
    v77[5] = v59;
    v77[6] = v56;
    v77[7] = v62;
    v77[8] = v55;
    v78 = v40;
    *v79 = *v121;
    *&v79[3] = *&v121[3];
    v80 = v54;
    v81 = v41;
    *v82 = *v119;
    *&v82[3] = *&v119[3];
    v83 = v53;
    v84 = v42;
    *&v85[3] = *&v117[3];
    *v85 = *v117;
    v86 = v52;
    v87 = v43;
    *v88 = *v115;
    *&v88[3] = *&v115[3];
    v89 = v51;
    v90 = v44;
    *v91 = *v113;
    *&v91[3] = *&v113[3];
    v92 = v22;
    v93 = v45;
    *&v94[3] = *&v111[3];
    *v94 = *v111;
    v95 = v24;
    v96 = v46;
    v97 = v50;
    v98 = v108;
    v99 = v109;
    v100 = v49;
    v101 = v123;
    *&v102[3] = *&v106[3];
    *v102 = *v106;
    v103 = v48;
    v104 = v47;
    result = sub_1000BA968(v77);
    v32 = v75;
    v33 = v63;
    v63[10] = v74;
    v33[11] = v32;
    v33[12] = v76;
    v34 = v71;
    v33[6] = v70;
    v33[7] = v34;
    v35 = v73;
    v33[8] = v72;
    v33[9] = v35;
    v36 = v67;
    v33[2] = v66;
    v33[3] = v36;
    v37 = v69;
    v33[4] = v68;
    v33[5] = v37;
    v38 = v65;
    *v33 = v64;
    v33[1] = v38;
  }

  return result;
}

unint64_t sub_1000BB424()
{
  result = qword_1000FE070;
  if (!qword_1000FE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE070);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepositionStickerCommandStickerContents.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RepositionStickerCommandStickerContents.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000BB5CC()
{
  result = qword_1000FE080;
  if (!qword_1000FE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE080);
  }

  return result;
}

unint64_t sub_1000BB624()
{
  result = qword_1000FE088;
  if (!qword_1000FE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE088);
  }

  return result;
}

unint64_t sub_1000BB67C()
{
  result = qword_1000FE090;
  if (!qword_1000FE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FE090);
  }

  return result;
}

uint64_t sub_1000BB6E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_1000C27A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C3EA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v12 = sub_1000C57B4();
  sub_1000C5554();
  sub_1000C1A44();

  if (*(a3 + 16))
  {
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  else
  {
    v17[1] = v10;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    result = sub_1000C3E54();
    if (!v16)
    {
      sub_1000BB9E0(v14, v15, v8);
      (*(v5 + 104))(v8, enum case for BalloonPlugin.Payload.digitalTouchBalloon(_:), v4);
      return sub_1000C4474();
    }
  }

  return result;
}

uint64_t sub_1000BB9E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v6 = sub_1000C3FB4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C3DA4();
  v20 = *(v10 - 8);
  v11 = *(v20 + 64);
  __chkstk_darwin(v10);
  v12 = sub_1000C1774();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for ETP_Header(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_100018C68(a1, a2);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCBD8, type metadata accessor for ETP_Header);
  result = sub_1000C1864();
  if (!v3)
  {
    if (v17[*(v14 + 20)] == 8)
    {
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }

    else
    {
      sub_1000BBD6C(v17);
      sub_1000BC14C(v17, v9);
      sub_1000C3F74();
    }

    return sub_1000C0E48(v17, type metadata accessor for ETP_Header);
  }

  return result;
}

uint64_t sub_1000BBD6C(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_1000C1614();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for ETP_Header(0);
  v15 = (a1 + v14[6]);
  if (v15[1] & 1) != 0 || (v16 = (a1 + v14[9]), !v16[1]) || (v17 = (a1 + v14[11]), (v17[1]) || *(a1 + v14[10]) == 2)
  {
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
LABEL_6:
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v24 = *(a1 + v14[10]);
  v25 = v14;
  v23 = *v15;
  v19 = *v16;
  v20 = *v17;

  sub_1000C15E4();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100018F90(v5, &qword_1000FC520, &qword_1000C9D20);
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    goto LABEL_6;
  }

  (*(v7 + 32))(v13, v5, v6);
  (*(v7 + 16))(v11, v13, v6);
  v21 = (a1 + v25[8]);
  v22 = *v21;
  v26 = *(v21 + 4);
  sub_1000C3D94();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_1000BC14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C27F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ETP_Header(0);
  v11 = *(a1 + *(v10 + 20));
  if (v11 == 4)
  {
    v12 = &enum case for DigitalTouchMessage.readreceipt(_:);
LABEL_3:
    v13 = *v12;
    v14 = sub_1000C3FB4();
    return (*(*(v14 - 8) + 104))(a2, v13, v14);
  }

  v16 = a1 + *(v10 + 28);
  v17 = *(v16 + 8);
  if (v17 >> 60 == 15)
  {
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  if (*(a1 + *(v10 + 20)) > 4u)
  {
    if (*(a1 + *(v10 + 20)) <= 6u)
    {
      if (v11 == 5)
      {
        return sub_1000BC8F4(a1, a2);
      }

      else
      {
        return sub_1000BE114(a1, a2);
      }
    }

    if (v11 == 7)
    {
      return sub_1000BE834(a1, a2);
    }

LABEL_19:
    sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
    v19 = sub_1000C57B4();
    sub_1000C5554();
    sub_1000C1A44();

    result = sub_1000BF20C(a1);
    if (!v2)
    {
      v12 = &enum case for DigitalTouchMessage.tap(_:);
      goto LABEL_3;
    }

    return result;
  }

  if (*(a1 + *(v10 + 20)) > 1u)
  {
    if (v11 == 2)
    {
      return sub_1000BC534(a1, a2);
    }

    v20 = *v16;
    sub_100018C54(*v16, *(v16 + 8));
    sub_1000BFD10(v20, v17, v9);
    result = sub_100018CD0(v20, v17);
    if (!v2)
    {
      (*(v6 + 32))(a2, v9, v5);
      v12 = &enum case for DigitalTouchMessage.doodle(_:);
      goto LABEL_3;
    }

    return result;
  }

  if (!*(a1 + *(v10 + 20)))
  {
    goto LABEL_19;
  }

  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v18 = sub_1000C57B4();
  sub_1000C5554();
  sub_1000C1A44();

  result = sub_1000BF20C(a1);
  if (!v2)
  {
    v12 = &enum case for DigitalTouchMessage.quicktap(_:);
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1000BC534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C1774();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for ETP_Heartbeat(0);
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v11 = sub_1000C57B4();
  sub_1000C5554();
  sub_1000C1A44();

  v12 = (a1 + *(type metadata accessor for ETP_Header(0) + 28));
  v13 = *v12;
  v14 = v12[1];
  if (v14 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v12;
  }

  v16 = 0xC000000000000000;
  if (v14 >> 60 != 15)
  {
    v16 = v14;
  }

  v34 = v15;
  v35 = v16;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_100018C54(v13, v14);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCB98, type metadata accessor for ETP_Heartbeat);
  result = sub_1000C1864();
  if (!v2)
  {
    v18 = &v10[v7[5]];
    if (v18[4] & 1) != 0 || (v19 = &v10[v7[6]], (v19[4]) || (v20 = &v10[v7[7]], (v20[4]) || (v21 = &v10[v7[8]], (v21[4]) || (v22 = &v10[v7[10]], (v22[4]))
    {
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      return sub_1000C0E48(v10, type metadata accessor for ETP_Heartbeat);
    }

    else
    {
      v23 = *v18;
      v24 = *v19;
      v25 = *v20;
      v26 = *v21;
      v27 = *v22;
      v28 = &v10[v7[9]];
      v29 = *v28;
      v28[4];
      sub_1000C3554();
      sub_1000C0E48(v10, type metadata accessor for ETP_Heartbeat);
      v30 = enum case for DigitalTouchMessage.heartbeat(_:);
      v31 = sub_1000C3FB4();
      return (*(*(v31 - 8) + 104))(a2, v30, v31);
    }
  }

  return result;
}

uint64_t sub_1000BC8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a1;
  v141 = a2;
  v2 = sub_1000C3DA4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v140 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1000C3FB4();
  v142 = *(v147 - 8);
  v5 = *(v142 + 64);
  v6 = __chkstk_darwin(v147);
  v149 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v137 = (&v130 - v8);
  v136 = sub_1000C27F4();
  v139 = *(v136 - 8);
  v9 = *(v139 + 64);
  v10 = __chkstk_darwin(v136);
  v135 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v138 = &v130 - v12;
  v150 = sub_1000C3FA4();
  v146 = *(v150 - 8);
  v13 = *(v146 + 64);
  v14 = __chkstk_darwin(v150);
  v143 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v151 = &v130 - v17;
  __chkstk_darwin(v16);
  v148 = (&v130 - v18);
  v19 = sub_1000124CC(&qword_1000FE098, &qword_1000D1260);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v144 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v145 = (&v130 - v24);
  v25 = __chkstk_darwin(v23);
  v154 = &v130 - v26;
  __chkstk_darwin(v25);
  v152 = &v130 - v27;
  v28 = sub_1000124CC(&unk_1000FE0A0, &qword_1000D1268);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v130 - v30;
  v32 = sub_1000C2644();
  v153 = *(v32 - 8);
  v33 = *(v153 + 64);
  v34 = __chkstk_darwin(v32);
  v36 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v39 = &v130 - v38;
  __chkstk_darwin(v37);
  v41 = &v130 - v40;
  v42 = sub_1000C1774();
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v44 = type metadata accessor for ETP_Video(0);
  v45 = *(*(v44 - 1) + 64);
  __chkstk_darwin(v44);
  v47 = &v130 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v48 = sub_1000C57B4();
  sub_1000C5554();
  sub_1000C1A44();

  v49 = (v155 + *(type metadata accessor for ETP_Header(0) + 28));
  v50 = *v49;
  v51 = v49[1];
  if (v51 >> 60 == 15)
  {
    v52 = 0;
  }

  else
  {
    v52 = *v49;
  }

  v53 = 0xC000000000000000;
  if (v51 >> 60 != 15)
  {
    v53 = v51;
  }

  v158[0] = v52;
  v158[1] = v53;
  v160 = 0;
  memset(v159, 0, sizeof(v159));
  sub_100018C54(v50, v51);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCB38, type metadata accessor for ETP_Video);
  v54 = v156;
  result = sub_1000C1864();
  if (v54)
  {
    return result;
  }

  v133 = v39;
  v56 = v154;
  v132 = v36;
  v134 = v41;
  v156 = v32;
  v57 = v47[v44[7]];
  if (v57 == 2)
  {
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    v58 = v47;
    return sub_1000C0E48(v58, type metadata accessor for ETP_Video);
  }

  v155 = 0;
  v59 = ((v57 & 1) + 1);
  v60 = v31;
  sub_1000C2634();
  v61 = v153;
  v62 = v156;
  if ((*(v153 + 48))(v60, 1, v156) == 1)
  {
    sub_100018F90(v60, &unk_1000FE0A0, &qword_1000D1268);
    *&v159[0] = 0;
    *(&v159[0] + 1) = 0xE000000000000000;
    sub_1000C5944(24);

    *&v159[0] = 0xD000000000000016;
    *(&v159[0] + 1) = 0x80000001000D9280;
    v158[0] = v59;
    v161._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v161);

    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    return sub_1000C0E48(v47, type metadata accessor for ETP_Video);
  }

  v63 = v134;
  (*(v61 + 32))(v134, v60, v62);
  v64 = sub_1000C22E4();
  v65 = *(*(v64 - 8) + 56);
  v65(v152, 1, 1, v64);
  v66 = v44[5];
  v131 = v47;
  v67 = &v47[v66];
  v68 = v67[1];
  if (v68 >> 60 != 15)
  {
    v130 = v65;
    v75 = *v67;
    sub_100018C54(*v67, v68);
    v76 = v155;
    sub_1000BB9E0(v75, v68);
    v155 = v76;
    if (v76)
    {
      sub_100018CD0(v75, v68);
    }

    else
    {
      sub_100018CD0(v75, v68);
      v112 = v137;
      sub_1000C3F94();
      v113 = v142;
      v114 = v147;
      if ((*(v142 + 88))(v112, v147) != enum case for DigitalTouchMessage.doodle(_:))
      {
        (*(v113 + 8))(v112, v114);
        sub_1000C4FC4();
        sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        (*(v146 + 8))(v148, v150);
        sub_100018F90(v152, &qword_1000FE098, &qword_1000D1260);
        (*(v61 + 8))(v134, v62);
        goto LABEL_59;
      }

      (*(v113 + 96))(v112, v114);
      v115 = v138;
      v116 = v112;
      v117 = v136;
      (*(v139 + 32))(v138, v116, v136);
      sub_1000C3F84();
      v118 = v139;
      v119 = v115;
      v120 = v117;
      (*(v139 + 16))(v135, v119, v117);
      v121 = v155;
      sub_1000C22D4();
      v155 = v121;
      v122 = v148;
      if (!v121)
      {
        (*(v118 + 8))(v138, v120);
        (*(v146 + 8))(v122, v150);
        v124 = v152;
        sub_100018F90(v152, &qword_1000FE098, &qword_1000D1260);
        v130(v56, 0, 1, v64);
        sub_1000C0D90(v56, v124);
        v63 = v134;
        goto LABEL_13;
      }

      (*(v118 + 8))(v138, v120);
      (*(v146 + 8))(v122, v150);
    }

    sub_100018F90(v152, &qword_1000FE098, &qword_1000D1260);
    (*(v61 + 8))(v134, v62);
    return sub_1000C0E48(v131, type metadata accessor for ETP_Video);
  }

LABEL_13:
  v69 = v131;
  v70 = &v131[v44[6]];
  v71 = v145;
  if (v70[1] >> 60 != 15)
  {
    sub_1000124CC(&qword_1000FC470, &qword_1000C9C80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1000CBEF0;
    v78 = sub_10001D1A8(0, &qword_1000FC8F8, NSArray_ptr);
    *(v77 + 56) = sub_1000124CC(&qword_1000FDCE8, &qword_1000CFEF8);
    *(v77 + 32) = v78;
    v79 = sub_10001D1A8(0, &qword_1000FDCF0, NSMutableArray_ptr);
    *(v77 + 88) = sub_1000124CC(&qword_1000FDCF8, &unk_1000D1270);
    *(v77 + 64) = v79;
    v80 = sub_10001D1A8(0, &qword_1000FC498, NSData_ptr);
    *(v77 + 120) = sub_1000124CC(&qword_1000FC4A0, &qword_1000C9C98);
    *(v77 + 96) = v80;
    v81 = sub_10001D1A8(0, &qword_1000FC4F0, NSMutableData_ptr);
    *(v77 + 152) = sub_1000124CC(&qword_1000FC4F8, &qword_1000D1280);
    *(v77 + 128) = v81;
    sub_10001D1A8(0, &qword_1000FC510, NSSet_ptr);
    v82 = sub_1000C5614();
    v158[0] = 0;
    result = sub_1000C5494();
    if (!v158[0])
    {
      __break(1u);
      return result;
    }

    v83.super.isa = sub_1000C5484().super.isa;

    v84 = *v70;
    v85 = v70[1];
    if (v85 >> 60 == 15)
    {
      v86 = 0;
    }

    else
    {
      v86 = v84;
    }

    if (v85 >> 60 == 15)
    {
      v87 = 0xC000000000000000;
    }

    else
    {
      v87 = v85;
    }

    v88 = objc_opt_self();
    sub_100018C54(v84, v85);
    isa = sub_1000C1544().super.isa;
    sub_100018CD0(v86, v87);
    v158[0] = 0;
    v90 = [v88 _strictlyUnarchivedObjectOfClasses:v83.super.isa fromData:isa error:v158];

    v91 = v158[0];
    if (!v90)
    {
      v123 = v91;
      sub_1000C1474();

      swift_willThrow();
      sub_100018F90(v152, &qword_1000FE098, &qword_1000D1260);
      (*(v153 + 8))(v63, v156);
      return sub_1000C0E48(v69, type metadata accessor for ETP_Video);
    }

    sub_1000C58C4();
    swift_unknownObjectRelease();
    sub_10001D804(v159, v158);
    sub_1000124CC(&qword_1000FC858, &qword_1000CB040);
    v92 = swift_dynamicCast();
    v93 = v153;
    if (!v92)
    {
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100015F68(v159);
      sub_100018F90(v152, &qword_1000FE098, &qword_1000D1260);
      (*(v93 + 8))(v63, v156);
      goto LABEL_49;
    }

    v135 = v82;
    v94 = v157;
    v154 = *(v157 + 16);
    if (v154)
    {
      v95 = 0;
      v145 = (v142 + 88);
      LODWORD(v140) = enum case for DigitalTouchMessage.video(_:);
      LODWORD(v138) = enum case for DigitalTouchMessage.readreceipt(_:);
      v139 = v142 + 8;
      v137 = (v146 + 16);
      v148 = (v146 + 8);
      v136 = v146 + 32;
      v96 = (v157 + 40);
      v97 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v95 >= *(v94 + 16))
        {
          __break(1u);
        }

        v98 = v94;
        v100 = *(v96 - 1);
        v99 = *v96;
        sub_100018C68(v100, *v96);
        v101 = v155;
        sub_1000BB9E0(v100, v99);
        v155 = v101;
        if (v101)
        {

          sub_100018CD0(v100, v99);
          sub_100015F68(v159);
          sub_100018F90(v152, &qword_1000FE098, &qword_1000D1260);
          (*(v153 + 8))(v63, v156);

          return sub_1000C0E48(v131, type metadata accessor for ETP_Video);
        }

        v102 = v63;
        v103 = v149;
        sub_1000C3F94();
        v104 = v147;
        v105 = (*v145)(v103, v147);
        if (v105 == v140)
        {

          (*v139)(v149, v104);
          goto LABEL_58;
        }

        if (v105 == v138)
        {
          break;
        }

        (*v139)(v149, v104);
        v106 = v143;
        (*v137)(v143, v151, v150);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_10004513C(0, v97[2] + 1, 1, v97);
        }

        v108 = v97[2];
        v107 = v97[3];
        if (v108 >= v107 >> 1)
        {
          v97 = sub_10004513C(v107 > 1, v108 + 1, 1, v97);
        }

        ++v95;
        sub_100018CD0(v100, v99);
        v109 = v146;
        v110 = v150;
        (*(v146 + 8))(v151, v150);
        v97[2] = v108 + 1;
        (*(v109 + 32))(v97 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v108, v106, v110);
        v96 += 2;
        v63 = v134;
        v111 = v144;
        v94 = v98;
        if (v154 == v95)
        {
          goto LABEL_52;
        }
      }

LABEL_58:
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100018CD0(v100, v99);
      (*v148)(v151, v150);
      sub_100015F68(v159);
      sub_100018F90(v152, &qword_1000FE098, &qword_1000D1260);
      (*(v153 + 8))(v102, v156);
    }

    else
    {
      v111 = v144;
LABEL_52:

      v125 = v153;
      v126 = v156;
      (*(v153 + 16))(v132, v63, v156);
      v127 = v152;
      sub_1000C0D20(v152, v111);
      v128 = v141;
      v129 = v155;
      sub_1000C2624();
      if (!v129)
      {

        sub_100015F68(v159);
        sub_100018F90(v127, &qword_1000FE098, &qword_1000D1260);
        (*(v125 + 8))(v63, v126);
        sub_1000C0E48(v131, type metadata accessor for ETP_Video);
        return (*(v142 + 104))(v128, enum case for DigitalTouchMessage.video(_:), v147);
      }

      sub_100015F68(v159);
      sub_100018F90(v127, &qword_1000FE098, &qword_1000D1260);
      (*(v125 + 8))(v63, v126);
    }

LABEL_59:
    v58 = v131;
    return sub_1000C0E48(v58, type metadata accessor for ETP_Video);
  }

  (*(v61 + 16))(v133, v63, v62);
  v72 = v152;
  sub_1000C0D20(v152, v71);
  v73 = v141;
  v74 = v155;
  sub_1000C2624();
  if (v74)
  {
    sub_100018F90(v72, &qword_1000FE098, &qword_1000D1260);
    (*(v61 + 8))(v63, v62);
LABEL_49:
    v58 = v69;
    return sub_1000C0E48(v58, type metadata accessor for ETP_Video);
  }

  sub_100018F90(v72, &qword_1000FE098, &qword_1000D1260);
  (*(v61 + 8))(v63, v62);
  sub_1000C0E48(v69, type metadata accessor for ETP_Video);
  return (*(v142 + 104))(v73, enum case for DigitalTouchMessage.video(_:), v147);
}

uint64_t sub_1000BE114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = sub_1000C1E74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C1774();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for ETP_Kiss(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v15 = sub_1000C57B4();
  sub_1000C5554();
  sub_1000C1A44();

  v16 = (a1 + *(type metadata accessor for ETP_Header(0) + 28));
  v17 = *v16;
  v18 = v16[1];
  if (v18 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v16;
  }

  v20 = 0xC000000000000000;
  if (v18 >> 60 != 15)
  {
    v20 = v18;
  }

  v62 = v19;
  v63 = v20;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  sub_100018C54(v17, v18);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCB18, type metadata accessor for ETP_Kiss);
  result = sub_1000C1864();
  if (!v2)
  {
    v57 = v4;
    v58 = v8;
    v22 = &v14[v11[6]];
    v23 = *(v22 + 1);
    if (v23 >> 60 == 15 || (v24 = &v14[v11[5]], v24[1] >> 60 == 15) || (v25 = &v14[v11[7]], v25[1] >> 60 == 15))
    {
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
LABEL_11:
      sub_1000C4FB4();
      swift_willThrow();
      return sub_1000C0E48(v14, type metadata accessor for ETP_Kiss);
    }

    v26 = *v22;
    sub_100018C54(*v22, *(v22 + 1));
    sub_1000BFAB4(v26, v23);
    v28 = v27;
    sub_100018CD0(v26, v23);
    v29 = v25[1];
    if (v29 >> 60 == 15)
    {
      v30 = 0;
    }

    else
    {
      v30 = *v25;
    }

    if (v29 >> 60 == 15)
    {
      v31 = 0xC000000000000000;
    }

    else
    {
      v31 = v25[1];
    }

    sub_100018C54(*v25, v29);
    sub_1000BFBE4(v30, v31);
    v33 = v32;
    sub_100018CD0(v30, v31);
    v34 = *v24;
    v35 = v24[1];
    v36 = v28;
    if (v35 >> 60 == 15)
    {
      v37 = 0;
    }

    else
    {
      v37 = v34;
    }

    if (v35 >> 60 == 15)
    {
      v38 = 0xC000000000000000;
    }

    else
    {
      v38 = v35;
    }

    sub_100018C54(v34, v35);
    sub_1000BFBE4(v37, v38);
    v40 = v39;
    result = sub_100018CD0(v37, v38);
    v41 = v33;
    v42 = *(v36 + 16);
    if (v42 != *(v33 + 16) || v42 != *(v40 + 16))
    {

      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      goto LABEL_11;
    }

    v56 = v40;
    if (v42)
    {
      v43 = 0;
      v54[1] = v5 + 32;
      v44 = _swiftEmptyArrayStorage;
      v55 = v36;
      while (v43 < *(v36 + 16))
      {
        if (v43 >= *(v41 + 16))
        {
          goto LABEL_41;
        }

        if (v43 >= *(v56 + 16))
        {
          goto LABEL_42;
        }

        v45 = *(v36 + 4 * v43 + 32);
        v46 = v41;
        v47 = *(v56 + 2 * v43 + 32);
        v48 = *(v41 + 2 * v43 + 32);
        sub_1000C1E64();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1000450EC(0, v44[2] + 1, 1, v44);
        }

        v50 = v44[2];
        v49 = v44[3];
        if (v50 >= v49 >> 1)
        {
          v44 = sub_1000450EC(v49 > 1, v50 + 1, 1, v44);
        }

        ++v43;
        v44[2] = v50 + 1;
        result = (*(v5 + 32))(v44 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v50, v58);
        v36 = v55;
        v41 = v46;
        if (v42 == v43)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    else
    {
LABEL_39:

      v51 = v64;
      sub_1000C20E4();
      sub_1000C0E48(v14, type metadata accessor for ETP_Kiss);
      v52 = enum case for DigitalTouchMessage.kiss(_:);
      v53 = sub_1000C3FB4();
      return (*(*(v53 - 8) + 104))(v51, v52, v53);
    }
  }

  return result;
}

uint64_t sub_1000BE834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v4 = sub_1000C2784();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C1774();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for ETP_Anger(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v15 = sub_1000C57B4();
  sub_1000C5554();
  sub_1000C1A44();

  v16 = (a1 + *(type metadata accessor for ETP_Header(0) + 28));
  v17 = *v16;
  v18 = v16[1];
  if (v18 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v16;
  }

  v20 = 0xC000000000000000;
  if (v18 >> 60 != 15)
  {
    v20 = v18;
  }

  v76 = v19;
  v77 = v20;
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  sub_100018C54(v17, v18);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCAF8, type metadata accessor for ETP_Anger);
  result = sub_1000C1864();
  if (!v2)
  {
    v71 = v8;
    v22 = v72;
    v23 = &v14[v11[5]];
    if (v23[4])
    {
      goto LABEL_10;
    }

    v24 = &v14[v11[6]];
    if (v24[4])
    {
      goto LABEL_10;
    }

    v25 = &v14[v11[7]];
    if (v25[4])
    {
      goto LABEL_10;
    }

    v26 = *v23;
    v27 = *v24;
    v28 = *v25;
    v29 = &v14[v11[9]];
    v30 = v29[1];
    v31 = &v14[v11[8]];
    v32 = v31[1] >> 60;
    if (v30 >> 60 == 15)
    {
      if (v31[1] >> 60 == 15)
      {
LABEL_15:
        sub_1000C2224();
        sub_1000C0E48(v14, type metadata accessor for ETP_Anger);
        v33 = enum case for DigitalTouchMessage.anger(_:);
        v34 = sub_1000C3FB4();
        return (*(*(v34 - 8) + 104))(v22, v33, v34);
      }

LABEL_10:
      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
LABEL_11:
      sub_1000C4FB4();
      swift_willThrow();
      return sub_1000C0E48(v14, type metadata accessor for ETP_Anger);
    }

    if (v31[1] >> 60 == 15)
    {
      goto LABEL_10;
    }

    v35 = *v29;
    v36 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v36 != 2)
      {
        sub_100018C54(*v29, v29[1]);
        sub_100018CD0(v35, v30);
        goto LABEL_29;
      }

      v38 = *(v35 + 24);
      v69 = *(v35 + 16);
      v70 = v38;
      sub_100018C54(v35, v30);
      sub_100018CD0(v35, v30);
      v37 = v70 - v69;
      if (!__OFSUB__(v70, v69))
      {
LABEL_26:
        if ((v37 & 3) != 0)
        {
          goto LABEL_10;
        }

LABEL_29:
        v39 = *v31;
        v40 = v31[1];
        if (v40 >> 60 == 15)
        {
          v41 = 0;
        }

        else
        {
          v41 = *v31;
        }

        if (v40 >> 60 == 15)
        {
          v42 = 0xC000000000000000;
        }

        else
        {
          v42 = v31[1];
        }

        v43 = v42 >> 62;
        if ((v42 >> 62) > 1)
        {
          if (v43 != 2)
          {
            sub_100018C54(v39, v40);
            sub_100018CD0(v41, v42);
LABEL_46:
            v46 = *v29;
            v47 = v29[1];
            if (v47 >> 60 == 15)
            {
              v48 = 0;
            }

            else
            {
              v48 = *v29;
            }

            if (v47 >> 60 == 15)
            {
              v49 = 0xC000000000000000;
            }

            else
            {
              v49 = v29[1];
            }

            sub_100018C54(v46, v47);
            sub_1000BFAB4(v48, v49);
            v50 = v49;
            v52 = v51;
            sub_100018CD0(v48, v50);
            v53 = *v31;
            v54 = v31[1];
            if (v54 >> 60 == 15)
            {
              v55 = 0;
            }

            else
            {
              v55 = *v31;
            }

            if (v54 >> 60 == 15)
            {
              v56 = 0xC000000000000000;
            }

            else
            {
              v56 = v31[1];
            }

            sub_100018C54(v53, v54);
            sub_1000BFBE4(v55, v56);
            v58 = v57;
            result = sub_100018CD0(v55, v56);
            v59 = v58;
            v60 = *(v52 + 16);
            if (v60 != *(v58 + 16))
            {

              sub_1000C4FC4();
              sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
              swift_allocError();
              goto LABEL_11;
            }

            if (!v60)
            {
LABEL_70:

              goto LABEL_15;
            }

            v61 = 0;
            v67 = v5 + 32;
            v62 = _swiftEmptyArrayStorage;
            v69 = v52;
            v70 = v59;
            v68 = v60;
            while (v61 < *(v52 + 16))
            {
              if (v61 >= *(v59 + 16))
              {
                goto LABEL_72;
              }

              v63 = *(v52 + 4 * v61 + 32);
              v64 = *(v59 + 2 * v61 + 32);
              sub_1000C2774();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v62 = sub_100045114(0, v62[2] + 1, 1, v62);
              }

              v66 = v62[2];
              v65 = v62[3];
              if (v66 >= v65 >> 1)
              {
                v62 = sub_100045114(v65 > 1, v66 + 1, 1, v62);
              }

              ++v61;
              v62[2] = v66 + 1;
              result = (*(v5 + 32))(v62 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v66, v71);
              v52 = v69;
              v59 = v70;
              if (v68 == v61)
              {
                goto LABEL_70;
              }
            }

            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v45 = *(v41 + 24);
          v69 = *(v41 + 16);
          v70 = v45;
          sub_100018C54(v39, v40);
          v39 = sub_100018CD0(v41, v42);
          v44 = v70 - v69;
          if (!__OFSUB__(v70, v69))
          {
LABEL_43:
            if (v44)
            {
              goto LABEL_10;
            }

            goto LABEL_46;
          }

          __break(1u);
        }

        else if (!v43)
        {
          v70 = HIWORD(v42);
          sub_100018C54(v39, v40);
          sub_100018CD0(v41, v42);
          v44 = v70;
          goto LABEL_43;
        }

        v70 = HIDWORD(v41);
        sub_100018C54(v39, v40);
        result = sub_100018CD0(v41, v42);
        v44 = v70 - v41;
        if (__OFSUB__(v70, v41))
        {
LABEL_74:
          __break(1u);
          return result;
        }

        goto LABEL_43;
      }

      __break(1u);
    }

    else if (!v36)
    {
      v70 = HIWORD(v30);
      sub_100018C54(v35, v30);
      sub_100018CD0(v35, v30);
      v37 = v70;
      goto LABEL_26;
    }

    v70 = HIDWORD(v35);
    sub_100018C54(v35, v30);
    result = sub_100018CD0(v35, v30);
    v37 = v70 - v35;
    if (__OFSUB__(v70, v35))
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1000BF20C(uint64_t a1)
{
  v3 = sub_1000C5074();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1774();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for ETP_Tap(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a1 + *(type metadata accessor for ETP_Header(0) + 28));
  v15 = *v14;
  v16 = v14[1];
  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v14;
  }

  v18 = 0xC000000000000000;
  if (v16 >> 60 != 15)
  {
    v18 = v16;
  }

  v78 = v17;
  v79 = v18;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  sub_100018C54(v15, v16);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCBB8, type metadata accessor for ETP_Tap);
  result = sub_1000C1864();
  if (v1)
  {
    return result;
  }

  v20 = &v13[v10[6]];
  v21 = v20[1];
  if (v21 >> 60 == 15)
  {
    goto LABEL_53;
  }

  v22 = &v13[v10[5]];
  if (*(v22 + 1) >> 60 == 15)
  {
    goto LABEL_53;
  }

  v80 = &v13[v10[7]];
  if (v80[1] >> 60 == 15)
  {
    goto LABEL_53;
  }

  v23 = *v20;
  v24 = v21 >> 62;
  v74 = v22;
  if ((v21 >> 62) <= 1)
  {
    if (!v24)
    {
      v73 = HIWORD(v21);
      sub_100018C54(v23, v21);
      sub_100018CD0(v23, v21);
      v25 = v73;
      goto LABEL_18;
    }

LABEL_17:
    v73 = HIDWORD(v23);
    sub_100018C54(v23, v21);
    result = sub_100018CD0(v23, v21);
    v25 = v73 - v23;
    if (__OFSUB__(v73, v23))
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    goto LABEL_18;
  }

  if (v24 != 2)
  {
    sub_100018C54(v23, v21);
    sub_100018CD0(v23, v21);
    v27 = v74;
    goto LABEL_21;
  }

  v26 = *(v23 + 24);
  v72 = *(v23 + 16);
  v73 = v26;
  sub_100018C54(v23, v21);
  sub_100018CD0(v23, v21);
  v25 = v73 - v72;
  if (__OFSUB__(v73, v72))
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  v27 = v74;
  if ((v25 & 3) != 0)
  {
LABEL_53:
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    goto LABEL_54;
  }

LABEL_21:
  v28 = *v27;
  v29 = v27[1];
  if (v29 >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    v30 = *v27;
  }

  if (v29 >> 60 == 15)
  {
    v31 = 0xC000000000000000;
  }

  else
  {
    v31 = v27[1];
  }

  v32 = v31 >> 62;
  if ((v31 >> 62) <= 1)
  {
    if (!v32)
    {
      v73 = HIWORD(v31);
      sub_100018C54(v28, v29);
      sub_100018CD0(v30, v31);
      v33 = v73;
      goto LABEL_35;
    }

LABEL_34:
    v73 = HIDWORD(v30);
    sub_100018C54(v28, v29);
    result = sub_100018CD0(v30, v31);
    v33 = v73 - v30;
    if (__OFSUB__(v73, v30))
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    goto LABEL_35;
  }

  if (v32 != 2)
  {
    sub_100018C54(v28, v29);
    sub_100018CD0(v30, v31);
    goto LABEL_38;
  }

  v34 = *(v30 + 24);
  v72 = *(v30 + 16);
  v73 = v34;
  sub_100018C54(v28, v29);
  v28 = sub_100018CD0(v30, v31);
  v33 = v73 - v72;
  if (__OFSUB__(v73, v72))
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_35:
  if (v33)
  {
    goto LABEL_53;
  }

LABEL_38:
  v35 = *v80;
  v36 = v80[1];
  if (v36 >> 60 == 15)
  {
    v37 = 0;
  }

  else
  {
    v37 = *v80;
  }

  if (v36 >> 60 == 15)
  {
    v38 = 0xC000000000000000;
  }

  else
  {
    v38 = v80[1];
  }

  v39 = v38 >> 62;
  if ((v38 >> 62) <= 1)
  {
    if (!v39)
    {
      v73 = HIWORD(v38);
      sub_100018C54(v35, v36);
      sub_100018CD0(v37, v38);
      v40 = v73;
      goto LABEL_52;
    }

LABEL_51:
    v73 = HIDWORD(v37);
    sub_100018C54(v35, v36);
    result = sub_100018CD0(v37, v38);
    v40 = v73 - v37;
    if (__OFSUB__(v73, v37))
    {
LABEL_95:
      __break(1u);
      return result;
    }

    goto LABEL_52;
  }

  if (v39 != 2)
  {
    sub_100018C54(v35, v36);
    sub_100018CD0(v37, v38);
    v42 = v74;
    goto LABEL_58;
  }

  v41 = *(v37 + 24);
  v72 = *(v37 + 16);
  v73 = v41;
  sub_100018C54(v35, v36);
  v35 = sub_100018CD0(v37, v38);
  v40 = v73 - v72;
  if (__OFSUB__(v73, v72))
  {
    __break(1u);
    goto LABEL_51;
  }

LABEL_52:
  v42 = v74;
  if ((v40 & 3) != 0)
  {
    goto LABEL_53;
  }

LABEL_58:
  v43 = *v20;
  v44 = v20[1];
  if (v44 >> 60 == 15)
  {
    v45 = 0;
  }

  else
  {
    v45 = *v20;
  }

  if (v44 >> 60 == 15)
  {
    v46 = 0xC000000000000000;
  }

  else
  {
    v46 = v20[1];
  }

  v47 = v42;
  sub_100018C54(v43, v44);
  sub_1000BFAB4(v45, v46);
  v73 = v48;
  sub_100018CD0(v45, v46);
  v49 = v47[1];
  if (v49 >> 60 == 15)
  {
    v50 = 0;
  }

  else
  {
    v50 = *v47;
  }

  if (v49 >> 60 == 15)
  {
    v51 = 0xC000000000000000;
  }

  else
  {
    v51 = v47[1];
  }

  sub_100018C54(*v47, v49);
  sub_1000BFBE4(v50, v51);
  v53 = v52;
  sub_100018CD0(v50, v51);
  v54 = v80[1];
  if (v54 >> 60 == 15)
  {
    v55 = 0;
  }

  else
  {
    v55 = *v80;
  }

  if (v54 >> 60 == 15)
  {
    v56 = 0xC000000000000000;
  }

  else
  {
    v56 = v80[1];
  }

  sub_100018C54(*v80, v54);
  sub_1000BFAB4(v55, v56);
  v74 = v57;
  v58 = v55;
  v59 = v73;
  result = sub_100018CD0(v58, v56);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = v53;
    if (v60 == *(v53 + 16))
    {
      v62 = v74;
      if (v60 == v74[2])
      {
        v63 = 0;
        v70[1] = v4 + 32;
        v80 = _swiftEmptyArrayStorage;
        v71 = v60;
        v72 = v61;
        while (v63 < *(v59 + 16))
        {
          if (v63 >= *(v61 + 16))
          {
            goto LABEL_91;
          }

          if (v63 >= v62[2])
          {
            goto LABEL_92;
          }

          v64 = *(v59 + 4 * v63 + 32);
          v65 = *(v62 + v63 + 8);
          v66 = *(v61 + 2 * v63 + 32);
          sub_1000C5064();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_10004509C(0, v80[2] + 1, 1, v80);
          }

          v68 = v80[2];
          v67 = v80[3];
          if (v68 >= v67 >> 1)
          {
            v80 = sub_10004509C(v67 > 1, v68 + 1, 1, v80);
          }

          ++v63;
          v69 = v80;
          v80[2] = v68 + 1;
          result = (*(v4 + 32))(v69 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v68, v7, v3);
          v61 = v72;
          v59 = v73;
          v62 = v74;
          if (v71 == v63)
          {

            sub_1000C1FE4();
            return sub_1000C0E48(v13, type metadata accessor for ETP_Tap);
          }
        }

        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }
    }
  }

  sub_1000C4FC4();
  sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
  swift_allocError();
LABEL_54:
  sub_1000C4FB4();
  swift_willThrow();
  return sub_1000C0E48(v13, type metadata accessor for ETP_Tap);
}

void sub_1000BFAB4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_16:
      v3 = _swiftEmptyArrayStorage[2];
LABEL_17:
      if (!(v3 >> 61))
      {
        sub_1000A4648();
        sub_1000C1364();
        return;
      }

      goto LABEL_20;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2) >> 2;
    if (BYTE6(a2) <= 3uLL)
    {
      goto LABEL_16;
    }

LABEL_15:
    v9 = sub_1000C53C4();
    *(v9 + 16) = v3;
    bzero((v9 + 32), 4 * v3);
    goto LABEL_17;
  }

  LODWORD(v7) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v7 = v7;
LABEL_11:
    v8 = v7 + 3;
    if (v7 >= 0)
    {
      v8 = v7;
    }

    if (v7 < -3)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v3 = v8 >> 2;
    if (v7 <= 3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

void sub_1000BFBE4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_14:
      v3 = _swiftEmptyArrayStorage[2];
LABEL_15:
      if ((v3 + 0x4000000000000000) >= 0)
      {
        sub_1000A4648();
        sub_1000C1364();
        return;
      }

      goto LABEL_18;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2) >> 1;
    if (BYTE6(a2) <= 1uLL)
    {
      goto LABEL_14;
    }

LABEL_13:
    v8 = sub_1000C53C4();
    *(v8 + 16) = v3;
    bzero((v8 + 32), 2 * v3);
    goto LABEL_15;
  }

  LODWORD(v7) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v7 = v7;
LABEL_11:
    if (v7 < -1)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v3 = v7 / 2;
    if (v7 <= 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
}

void sub_1000BFD10(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a3;
  v5 = sub_1000C2614();
  v6 = *(v5 - 8);
  v123 = v5;
  v124 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v125 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C21A4();
  v10 = *(v9 - 8);
  v127 = v9;
  v128 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v126 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v97 - v15;
  __chkstk_darwin(v14);
  v18 = &v97 - v17;
  v19 = sub_1000C1774();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = type metadata accessor for ETP_Doodle(0);
  v22 = *(*(v21 - 1) + 64);
  __chkstk_darwin(v21);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v26 = sub_1000C57B4();
  sub_1000C5554();
  sub_1000C1A44();

  v132 = a1;
  v133 = a2;
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  sub_100018C68(a1, a2);
  sub_1000C1764();
  sub_1000C0E00(&qword_1000FCB78, type metadata accessor for ETP_Doodle);
  v27 = v134;
  sub_1000C1864();
  if (v27)
  {
    return;
  }

  v118 = v25;
  v121 = v18;
  v134 = v16;
  v28 = &v24[v21[5]];
  if ((v28[4] & 1) != 0 || (v29 = &v24[v21[6]], v29[1] >> 60 == 15) || (v31 = &v24[v21[7]], v32 = v31[1], v32 >> 60 == 15) || (v33 = *v28, !v33))
  {
    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    goto LABEL_5;
  }

  v120 = 0;
  v34 = *v31;
  sub_100018C54(*v31, v32);
  sub_1000BFAB4(v34, v32);
  v36 = v35;
  sub_100018CD0(v34, v32);
  v37 = &v24[v21[8]];
  v38 = *v37;
  v39 = v37[1];
  v107 = v37;
  if (v39 >> 60 == 15)
  {
    v40 = 0;
  }

  else
  {
    v40 = v38;
  }

  if (v39 >> 60 == 15)
  {
    v41 = 0xC000000000000000;
  }

  else
  {
    v41 = v39;
  }

  sub_100018C54(v38, v39);
  sub_1000BFBE4(v40, v41);
  v43 = v42;
  sub_100018CD0(v40, v41);
  v104 = *(v36 + 16);
  if (v104 != v33)
  {

    sub_1000C4FC4();
    sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
LABEL_5:
    sub_1000C4FB4();
    swift_willThrow();
    v30 = v24;
LABEL_6:
    sub_1000C0E48(v30, type metadata accessor for ETP_Doodle);
    return;
  }

  v98 = v24;
  v44 = v29[1];
  if (v44 >> 60 == 15)
  {
    v45 = 0;
  }

  else
  {
    v45 = *v29;
  }

  if (v44 >> 60 == 15)
  {
    v46 = 0xC000000000000000;
  }

  else
  {
    v46 = v29[1];
  }

  sub_100018C54(*v29, v44);
  sub_1000BFAB4(v45, v46);
  v48 = v47;
  sub_100018CD0(v45, v46);
  v114 = 0;
  v49 = 0;
  v102 = v48 + 32;
  v117 = (v128 + 32);
  v103 = v36;
  v101 = v36 + 32;
  v100 = v124 + 32;
  v99 = v48 + 36;
  v97 = v43 + 32;
  v108 = _swiftEmptyArrayStorage;
  v50 = v127;
  v113 = v48;
  v51 = v43;
  v52 = 0;
  v115 = v51;
  while (1)
  {
    v53 = *(v48 + 16);
    if (v49 >= v53)
    {

      if (v52 == v104)
      {
        v94 = v98;
LABEL_80:
        v95 = *(v48 + 16);

        if (v49 == v95)
        {
          v96 = v107[1] >> 60;
          sub_1000C27E4();
LABEL_84:
          v30 = v94;
          goto LABEL_6;
        }
      }

      else
      {

        v94 = v98;
      }

      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      goto LABEL_84;
    }

    if (v49 < 0)
    {
      goto LABEL_89;
    }

    v54 = *(v102 + 4 * v49);
    v119 = v54 >> 16;
    if (__OFADD__(v49 + 1, v54 >> 16))
    {
      goto LABEL_90;
    }

    v116 = v49 + 1 + (v54 >> 16);
    if (v53 < v116)
    {

      sub_1000C4FC4();
      sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      v30 = v98;
      goto LABEL_6;
    }

    v55 = v49 + 1;
    v105 = v54;
    v106 = v52;
    v56 = v107[1];
    v57 = sub_1000C57B4();
    sub_1000C5554();
    if (v56 >> 60 == 15)
    {
      sub_1000C1A44();

      v58 = v116;
      if (v116 <= v49)
      {
        goto LABEL_93;
      }

      v59 = v120;
      if (*(v48 + 16) < v116)
      {
        goto LABEL_94;
      }

      v60 = v116 - v55;
      if (v116 != v55)
      {
        *&v129 = _swiftEmptyArrayStorage;

        sub_1000459D4(0, v60 & ~(v60 >> 63), 0);
        if ((v60 & 0x8000000000000000) == 0)
        {
          v63 = v58 - v55;
          v64 = 0;
          v65 = v129;
          v66 = v99 + 4 * v49;
          v59 = v120;
          while ((v55 + v64) < v58 && v64 < v63)
          {
            v68 = *(v66 + 4 * v64);
            sub_1000C2194();
            if (v59)
            {

              swift_bridgeObjectRelease_n();

              sub_1000C0E48(v98, type metadata accessor for ETP_Doodle);
              return;
            }

            *&v129 = v65;
            v70 = *(v65 + 16);
            v69 = *(v65 + 24);
            if (v70 >= v69 >> 1)
            {
              sub_1000459D4(v69 > 1, v70 + 1, 1);
              v65 = v129;
            }

            ++v64;
            *(v65 + 16) = v70 + 1;
            (*(v128 + 32))(v65 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v70, v126, v127);
            v63 = v58 - v55;
            if (v119 == v64)
            {
              v48 = v113;

              v50 = v127;
              goto LABEL_62;
            }
          }

          __break(1u);
          goto LABEL_86;
        }

        goto LABEL_96;
      }

      goto LABEL_62;
    }

    sub_1000C1A44();

    v61 = v116;
    if (v116 <= v49)
    {
      goto LABEL_92;
    }

    v59 = v120;
    v62 = v115;
    if (*(v48 + 16) < v116)
    {
      goto LABEL_95;
    }

    if (v116 != v55)
    {
      break;
    }

LABEL_62:
    v87 = v106;
    if (v106 >= *(v103 + 16))
    {
      goto LABEL_91;
    }

    v88 = *(v101 + 4 * v106);
    sub_1000C2604();
    v120 = v59;
    if (v59)
    {

LABEL_78:

LABEL_79:

      sub_1000C0E48(v98, type metadata accessor for ETP_Doodle);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = sub_1000450C4(0, v108[2] + 1, 1, v108);
    }

    v90 = v108[2];
    v89 = v108[3];
    if (v90 >= v89 >> 1)
    {
      v108 = sub_1000450C4(v89 > 1, v90 + 1, 1, v108);
    }

    v91 = v108;
    v108[2] = v90 + 1;
    (*(v124 + 32))(v91 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v90, v125, v123);
    v52 = v87 + 1;
    v92 = v116;
    v49 = v116;
    if (v52 == v104)
    {

      v94 = v98;
      v49 = v92;
      goto LABEL_80;
    }
  }

  *&v129 = _swiftEmptyArrayStorage;
  v71 = (v116 - v55) & ~((v116 - v55) >> 63);
  v112 = v116 - v55;

  sub_1000459D4(0, v71, 0);
  v72 = v112;
  if ((v112 & 0x8000000000000000) == 0)
  {
    v73 = 0;
    v74 = v129;
    v75 = *(v62 + 16);
    v76 = v114;
    if (v114 > v75)
    {
      v75 = v114;
    }

    v111 = v75 - v114;
    v110 = v99 + 4 * v49;
    v109 = v97 + 2 * v114;
    while (1)
    {
      v77 = v134;
      if ((v55 + v73) >= v61 || v73 >= v72)
      {
        break;
      }

      v78 = v120;
      v79 = v121;
      if (v111 == v73)
      {

        sub_1000C4FC4();
        sub_1000C0E00(&qword_1000FC360, &type metadata accessor for Explosion);
        v93 = swift_allocError();
        sub_1000C4FB4();
        v120 = v93;
        swift_willThrow();

        goto LABEL_79;
      }

      if (v76 < 0)
      {
        goto LABEL_87;
      }

      if (v76 + v73 >= *(v62 + 16))
      {
        goto LABEL_88;
      }

      v80 = *(v110 + 4 * v73);
      v81 = *(v109 + 2 * v73);
      sub_1000C2194();
      v120 = v78;
      if (v78)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_78;
      }

      v82 = *v117;
      (*v117)(v79, v77, v50);
      *&v129 = v74;
      v83 = v50;
      v85 = *(v74 + 16);
      v84 = *(v74 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_1000459D4(v84 > 1, v85 + 1, 1);
        v74 = v129;
      }

      ++v73;
      *(v74 + 16) = v85 + 1;
      v82((v74 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v85), v79, v83);
      v50 = v83;
      v48 = v113;
      v62 = v115;
      v61 = v116;
      v76 = v114;
      v72 = v112;
      if (v119 == v73)
      {
        v86 = v114;

        v114 = v86 + v73;
        v59 = v120;
        goto LABEL_62;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000C0D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FE098, &qword_1000D1260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C0D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FE098, &qword_1000D1260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C0E00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C0E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000C0F5C(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithLongLong:a1];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Found unexpected event class for event type %{public}@", &v4, 0xCu);
}

void sub_1000C1014(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not unarchive event with error: %{public}@", &v2, 0xCu);
}

void sub_1000C108C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SWHighlightMentionEvent(__BDForwardDeclare) __bdInitWithHighlightURL:mentionedPersonHandle:mentionedPersonIdentity:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%s] SWHighlightMentionEvent did not respond to any of the expected initializers.", &v1, 0xCu);
}