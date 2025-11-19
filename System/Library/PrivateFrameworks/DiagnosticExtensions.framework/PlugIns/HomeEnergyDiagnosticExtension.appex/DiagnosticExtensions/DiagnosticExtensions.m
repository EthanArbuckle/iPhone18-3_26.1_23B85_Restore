uint64_t sub_100001288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v153 = a1;
  v167 = a3;
  v4 = sub_1000038EC();
  v5 = *(v4 - 8);
  v155 = v4;
  v156 = v5;
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v150 = v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v154 = v137 - v9;
  v10 = sub_1000031A4(&qword_10000C2C0, &qword_100003DF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v149 = v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v152 = v137 - v15;
  __chkstk_darwin(v14);
  v158 = v137 - v16;
  v17 = sub_10000396C();
  v160 = *(v17 - 8);
  v161 = v17;
  v18 = *(v160 + 64);
  v19 = __chkstk_darwin(v17);
  v151 = v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v157 = v137 - v21;
  v22 = sub_10000388C();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_1000038BC();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v26 = sub_10000398C();
  v27 = *(v26 - 8);
  v163 = v26;
  v164 = v27;
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000037FC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v36 = v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = v137 - v37;
  v39 = v32 + 16;
  v159 = *(v32 + 16);
  v159(v137 - v37, a2, v31);
  v165 = sub_100003438(&off_100008350);
  v166 = v40;
  sub_10000397C();
  sub_1000038AC();
  sub_10000387C();
  v41 = sub_1000038DC();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_1000038CC();
  v45 = v162;
  sub_10000389C();
  if (v45)
  {

    (*(v164 + 8))(v30, v163);
    (*(v32 + 8))(v38, v31);

    return (*(v32 + 56))(v167, 1, 1, v31);
  }

  v162 = v44;
  v147 = v30;
  v148 = 0;
  v146 = v32;
  v159(v36, v38, v31);
  v47 = v158;
  sub_10000395C();
  v48 = v160;
  v49 = v161;
  v145 = *(v160 + 48);
  if (v145(v47, 1, v161) == 1)
  {
    sub_100003514(v47, &qword_10000C2C0, &qword_100003DF0);
    sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100003D90;
    v165 = 0;
    v166 = 0xE000000000000000;
    sub_1000039CC(73);
    v168._countAndFlagsBits = 0xD000000000000047;
    v168._object = 0x8000000100003EC0;
    sub_1000039AC(v168);
    sub_100003574(&qword_10000C2B8, &type metadata accessor for URL);
    v169._countAndFlagsBits = sub_1000039DC();
    sub_1000039AC(v169);

    v51 = v165;
    v52 = v166;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    sub_1000039FC();

LABEL_15:
    (*(v164 + 8))(v147, v163);
    v82 = v146;
    (*(v146 + 8))(v38, v31);
    return (*(v82 + 56))(v167, 1, 1, v31);
  }

  v53 = v39;
  v142 = v36;
  v143 = v38;
  v144 = v31;
  v54 = *(v48 + 32);
  v55 = v157;
  v54(v157, v47, v49);
  sub_10000386C();
  v56 = sub_10000384C();
  if (!v56)
  {
    sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_100003D90;
    v165 = 0;
    v166 = 0xE000000000000000;
    sub_1000039CC(61);
    v172._countAndFlagsBits = 0xD00000000000003BLL;
    v172._object = 0x8000000100003F10;
    sub_1000039AC(v172);
    sub_100003574(&qword_10000C2B8, &type metadata accessor for URL);
    v38 = v143;
    v31 = v144;
    v173._countAndFlagsBits = sub_1000039DC();
    sub_1000039AC(v173);

    v80 = v165;
    v81 = v166;
    *(v79 + 56) = &type metadata for String;
    *(v79 + 32) = v80;
    *(v79 + 40) = v81;
    sub_1000039FC();

    (*(v48 + 8))(v55, v161);
    goto LABEL_15;
  }

  v57 = v56;
  v138 = v54;
  v139 = v48 + 32;
  v141 = v53;
  v165 = &_swiftEmptyArrayStorage;
  v58 = sub_100003574(&qword_10000C2C8, &type metadata accessor for ArchiveFlags);
  v59 = sub_1000031A4(&qword_10000C2D0, &qword_100003DF8);
  v60 = sub_100003604(&qword_10000C2D8, &qword_10000C2D0, &qword_100003DF8);
  v61 = v154;
  v62 = v155;
  v158 = v58;
  sub_1000039BC();
  v63 = v61;
  v64 = sub_10000383C();
  v65 = v156 + 8;
  v66 = *(v156 + 8);
  v66(v63, v62);
  if (v64)
  {
    v140 = v57;
    sub_10000394C();
    v165 = &_swiftEmptyArrayStorage;
    v137[1] = v59;
    v137[0] = v60;
    v156 = v65;
    sub_1000039BC();
    v67 = sub_10000391C();
    v66(v63, v62);
    v154 = v67;
    if (v67)
    {
      v68 = v144;
      v159(v142, v153, v144);
      v69 = v152;
      sub_10000395C();
      v70 = v161;
      if (v145(v69, 1, v161) == 1)
      {
        v71 = v69;
        v72 = v160;
        sub_100003514(v71, &qword_10000C2C0, &qword_100003DF0);
        sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_100003D90;
        v165 = 0;
        v166 = 0xE000000000000000;
        sub_1000039CC(82);
        v170._countAndFlagsBits = 0xD000000000000050;
        v170._object = 0x8000000100003FE0;
        sub_1000039AC(v170);
        sub_100003574(&qword_10000C2B8, &type metadata accessor for URL);
        v171._countAndFlagsBits = sub_1000039DC();
        sub_1000039AC(v171);

        v74 = v165;
        v75 = v166;
        *(v73 + 56) = &type metadata for String;
        *(v73 + 32) = v74;
        *(v73 + 40) = v75;
        sub_1000039FC();

        v76 = v146;
        (*(v146 + 56))(v167, 1, 1, v68);
        v77 = v148;
        sub_10000393C();
        v78 = v77;
        if (v77)
        {

          v78 = 0;
        }

        sub_10000385C();
        if (v78)
        {
        }

        sub_10000385C();
        v122 = v163;
        v121 = v164;
        v123 = v161;

        (*(v72 + 8))(v157, v123);
LABEL_27:
        (*(v121 + 8))(v147, v122);
        return (*(v76 + 8))(v143, v68);
      }

      v153 = v64;
      v100 = v151;
      v138(v151, v69, v70);
      v101 = sub_1000038FC();
      v102 = *(v101 + 48);
      v103 = *(v101 + 52);
      swift_allocObject();
      v104 = sub_10000390C();
      v105 = v148;
      v106 = v167;
      if (v104)
      {
        v152 = v66;
        v107 = v160;
        v108 = v149;
        (*(v160 + 56))(v149, 1, 1, v161);
        v165 = &_swiftEmptyArrayStorage;
        v109 = v150;
        v110 = v155;
        sub_1000039BC();
        sub_10000392C();
        v148 = v105;
        if (v105)
        {
          (v152)(v109, v110);
          sub_100003514(v108, &qword_10000C2C0, &qword_100003DF0);
          sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_100003D90;
          *(v111 + 56) = &type metadata for String;
          *(v111 + 32) = 0xD000000000000048;
          *(v111 + 40) = 0x80000001000040B0;
          sub_1000039FC();

          swift_willThrow();

          v112 = *(v107 + 8);
          v112(v100, v161);
          sub_10000393C();
          v113 = v146;
          v114 = v144;

          sub_10000385C();

          sub_10000385C();

          v112(v157, v161);
          (*(v164 + 8))(v147, v163);
          return (*(v113 + 8))(v143, v114);
        }

        (v152)(v109, v110);
        sub_100003514(v108, &qword_10000C2C0, &qword_100003DF0);
        v129 = *(v107 + 8);
        v129(v100, v161);
        v130 = v167;
        v68 = v144;
        v159(v167, v143, v144);
        v76 = v146;
        (*(v146 + 56))(v130, 0, 1, v68);
        v131 = v148;
        sub_10000393C();
        v132 = v131;
        if (v131)
        {

          v132 = 0;
        }

        sub_10000385C();
        if (v132)
        {
        }

        sub_10000385C();
        v122 = v163;
        v121 = v164;
        v136 = v161;

        v129(v157, v136);
        goto LABEL_27;
      }

      sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_100003D90;
      *(v124 + 56) = &type metadata for String;
      *(v124 + 32) = 0xD000000000000032;
      *(v124 + 40) = 0x8000000100004070;
      sub_1000039FC();

      v125 = *(v160 + 8);
      v160 += 8;
      v125(v100, v161);
      v126 = v146;
      v127 = v144;
      (*(v146 + 56))(v106, 1, 1, v144);
      sub_10000393C();
      v128 = v105;
      if (v105)
      {

        v128 = 0;
      }

      sub_10000385C();
      if (v128)
      {
      }

      sub_10000385C();
      v134 = v163;
      v133 = v164;
      v135 = v161;

      v125(v157, v135);
      (*(v133 + 8))(v147, v134);
      return (*(v126 + 8))(v143, v127);
    }

    else
    {
      v91 = v160;
      sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_100003D90;
      v165 = 0;
      v166 = 0xE000000000000000;
      sub_1000039CC(63);
      v176._countAndFlagsBits = 0xD00000000000003DLL;
      v176._object = 0x8000000100003FA0;
      sub_1000039AC(v176);
      sub_100003574(&qword_10000C2B8, &type metadata accessor for URL);
      v93 = v143;
      v94 = v144;
      v177._countAndFlagsBits = sub_1000039DC();
      sub_1000039AC(v177);

      v95 = v165;
      v96 = v166;
      *(v92 + 56) = &type metadata for String;
      *(v92 + 32) = v95;
      *(v92 + 40) = v96;
      sub_1000039FC();

      v97 = v146;
      (*(v146 + 56))(v167, 1, 1, v94);
      v98 = v148;
      sub_10000385C();
      v99 = v98;
      if (v98)
      {

        v99 = 0;
      }

      sub_10000385C();
      if (v99)
      {
      }

      v119 = v163;
      v118 = v164;
      v120 = v161;

      (*(v91 + 8))(v157, v120);
      (*(v118 + 8))(v147, v119);
      return (*(v97 + 8))(v93, v94);
    }
  }

  else
  {
    v83 = v160;
    sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_100003D90;
    v165 = 0;
    v166 = 0xE000000000000000;
    sub_1000039CC(66);
    v174._countAndFlagsBits = 0xD000000000000040;
    v174._object = 0x8000000100003F50;
    sub_1000039AC(v174);
    sub_100003574(&qword_10000C2B8, &type metadata accessor for URL);
    v85 = v143;
    v86 = v144;
    v175._countAndFlagsBits = sub_1000039DC();
    sub_1000039AC(v175);

    v87 = v165;
    v88 = v166;
    *(v84 + 56) = &type metadata for String;
    *(v84 + 32) = v87;
    *(v84 + 40) = v88;
    sub_1000039FC();

    v89 = v146;
    (*(v146 + 56))(v167, 1, 1, v86);
    v90 = v148;
    sub_10000385C();
    if (v90)
    {
    }

    v115 = v163;
    v116 = v161;
    v117 = v157;

    (*(v83 + 8))(v117, v116);
    (*(v164 + 8))(v147, v115);
    return (*(v89 + 8))(v85, v86);
  }
}

void sub_10000287C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_1000031A4(&qword_10000C2A0, &qword_100003DE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v49 = &v47 - v5;
  v6 = sub_1000037FC();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v47 - v12;
  __chkstk_darwin(v11);
  v50 = &v47 - v14;
  v15 = sub_10000382C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MobileGestalt_get_current_device();
  if (!v20)
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = v20;
  v22 = MobileGestalt_copy_modelNumber_obj();

  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = sub_10000399C();
  v25 = v24;

  v26 = MobileGestalt_get_current_device();
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = v26;
  v48 = a1;
  v28 = MobileGestalt_copy_buildVersion_obj();

  if (!v28)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v29 = sub_10000399C();
  v31 = v30;

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1000039CC(25);

  v54 = 0x694B796772656E45;
  v55 = 0xEA00000000005F74;
  v56._countAndFlagsBits = v23;
  v56._object = v25;
  sub_1000039AC(v56);

  v57._countAndFlagsBits = 95;
  v57._object = 0xE100000000000000;
  sub_1000039AC(v57);
  v58._countAndFlagsBits = v29;
  v58._object = v31;
  sub_1000039AC(v58);

  v59._countAndFlagsBits = 95;
  v59._object = 0xE100000000000000;
  sub_1000039AC(v59);
  sub_10000381C();
  sub_100003574(&qword_10000C2A8, &type metadata accessor for UUID);
  v60._countAndFlagsBits = sub_1000039DC();
  sub_1000039AC(v60);

  (*(v16 + 8))(v19, v15);
  v61._countAndFlagsBits = 0x7365726F74535FLL;
  v61._object = 0xE700000000000000;
  sub_1000039AC(v61);
  v32 = [objc_opt_self() defaultManager];
  v33 = [v32 temporaryDirectory];

  sub_1000037EC();
  v34 = v50;
  sub_1000037CC();

  v35 = v51;
  v36 = *(v51 + 8);
  v37 = v13;
  v38 = v52;
  v36(v37, v52);
  sub_1000037DC();
  v39 = v49;
  sub_100001288(v48, v10, v49);
  v36(v10, v38);
  if ((*(v35 + 48))(v39, 1, v38) == 1)
  {
    sub_100003514(v39, &qword_10000C2A0, &qword_100003DE0);
    sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100003D90;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 32) = 0xD000000000000012;
    *(v40 + 40) = 0x8000000100003E80;
    sub_1000039FC();

    v36(v34, v38);
    v41 = 1;
    v42 = v53;
  }

  else
  {
    v43 = v53;
    (*(v35 + 32))(v53, v39, v38);
    sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100003D90;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1000039CC(32);

    v54 = 0xD00000000000001ELL;
    v55 = 0x8000000100003EA0;
    sub_100003574(&qword_10000C2B8, &type metadata accessor for URL);
    v62._countAndFlagsBits = sub_1000039DC();
    sub_1000039AC(v62);

    v45 = v54;
    v46 = v55;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 32) = v45;
    *(v44 + 40) = v46;
    sub_1000039FC();

    v36(v34, v38);
    v42 = v43;
    v41 = 0;
  }

  (*(v35 + 56))(v42, v41, 1, v38);
}

id sub_10000314C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataStoreArchive();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000031A4(uint64_t *a1, uint64_t *a2)
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

_BYTE *sub_1000031EC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100003280(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100003338(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000033B4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_100003280(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_100003338(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1000037AC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_10000379C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10000380C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000033B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1000037AC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_10000379C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100003438(uint64_t a1)
{
  v9 = sub_1000031A4(&qword_10000C2E0, &unk_100003E00);
  v10 = sub_100003604(&qword_10000C2E8, &qword_10000C2E0, &unk_100003E00);
  v8[0] = a1;
  v2 = sub_10000364C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1000031EC(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100003690(v8);
  return v5;
}

uint64_t sub_100003514(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000031A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000035BC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003604(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000035BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10000364C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003690(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_100003720(os_log_t log)
{
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to find directory: %@.", &v1, 0xCu);
}