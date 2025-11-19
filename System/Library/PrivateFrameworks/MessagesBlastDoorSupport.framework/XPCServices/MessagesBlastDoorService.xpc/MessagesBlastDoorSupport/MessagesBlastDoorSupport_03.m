uint64_t EmergencySOSChatSessionCloseDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD200, &qword_1000CCE50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000588D4();
  sub_1000C5D04();
  v11 = *v3;
  LOBYTE(v15) = 0;
  sub_1000C5BA4();
  if (!v2)
  {
    v12 = *(v3 + 3);
    v15 = *(v3 + 1);
    v16 = v12;
    v17 = *(v3 + 5);
    v14[15] = 1;
    sub_100058928();
    sub_1000C5BB4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000588D4()
{
  result = qword_1000FD208;
  if (!qword_1000FD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD208);
  }

  return result;
}

unint64_t sub_100058928()
{
  result = qword_1000FD210;
  if (!qword_1000FD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD210);
  }

  return result;
}

double EmergencySOSChatSessionCloseDictionary.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005A7A0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000589E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 4475235;
  if (v2 != 1)
  {
    v4 = 25444;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 22131;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 4475235;
  if (*a2 != 1)
  {
    v8 = 25444;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 22131;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000C5C04();
  }

  return v11 & 1;
}

Swift::Int sub_100058AB8()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100058B3C()
{
  *v0;
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_100058BAC()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100058C2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005A9D4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100058C5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE300000000000000;
  v5 = 4475235;
  if (v2 != 1)
  {
    v5 = 25444;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 22131;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100058C9C()
{
  v1 = 4475235;
  if (*v0 != 1)
  {
    v1 = 25444;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 22131;
  }
}

uint64_t sub_100058CD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005A9D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100058D00(uint64_t a1)
{
  v2 = sub_10005A980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058D3C(uint64_t a1)
{
  v2 = sub_10005A980();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BusinessChatSessionCloseDictionary.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v6 = sub_1000124CC(&qword_1000FD218, &qword_1000CCE58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10005A980();
  sub_1000C5D04();
  v16 = 0;
  sub_1000C5BA4();
  if (v4)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = 1;
  sub_1000C5B84();
  v14 = 2;
  sub_1000C5B94();
  return (*(v7 + 8))(v10, v6);
}

uint64_t BusinessChatSessionCloseDictionary.init(from:)(uint64_t *a1)
{
  result = sub_10005AA20(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100058F54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10005AA20(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_100058FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v121 = a1;
  v111 = a3;
  v117 = sub_1000C5974();
  v114 = *(v117 - 8);
  v4 = *(v114 + 64);
  v5 = __chkstk_darwin(v117);
  v115 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v113 = &v101 - v8;
  v9 = __chkstk_darwin(v7);
  v116 = &v101 - v10;
  __chkstk_darwin(v9);
  v112 = &v101 - v11;
  v12 = sub_1000C4ED4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C1974();
  v119 = *(v16 - 8);
  v17 = *(v119 + 64);
  __chkstk_darwin(v16);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C4FC4();
  v118 = *(v20 - 8);
  v21 = *(v118 + 64);
  __chkstk_darwin(v20);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000C19B4();
  v120 = *(v24 - 8);
  v25 = *(v120 + 64);
  __chkstk_darwin(v24);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000C1464();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1000C1454();
  sub_10005B120(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();
  if (v3)
  {
  }

  v122 = v24;
  v110 = v31;
  v105 = v15;
  v108 = v19;
  v33 = v16;
  v109 = v23;
  v107 = v20;
  v34 = sub_1000C1984();
  if (v35 >> 60 == 15)
  {
    sub_10005B0CC();
    swift_allocError();
    swift_willThrow();

    return (*(v120 + 8))(v27, v122);
  }

  v102 = 0;
  v103 = v34;
  v104 = v35;
  isa = sub_1000C1544().super.isa;
  v37 = [(objc_class *)isa _imOptionallyDecompressData];

  v121 = sub_1000C1564();
  v39 = v38;

  v106 = v39;
  v40 = v39 >> 62;
  if ((v39 >> 62) > 1)
  {
    v41 = v109;
    v42 = v119;
    v43 = v108;
    if (v40 != 2)
    {
      goto LABEL_30;
    }

    v45 = *(v121 + 16);
    v44 = *(v121 + 24);
    v46 = __OFSUB__(v44, v45);
    v47 = v44 - v45;
    if (v46)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    if (v47 <= 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v41 = v109;
    v42 = v119;
    v43 = v108;
    if (!v40)
    {
      if (!BYTE6(v106))
      {
        goto LABEL_30;
      }

      goto LABEL_12;
    }

    if (__OFSUB__(HIDWORD(v121), v121))
    {
      goto LABEL_57;
    }

    if (HIDWORD(v121) - v121 <= 0)
    {
LABEL_30:
      (*(v42 + 104))(v43, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v16);
      sub_1000C1964();
      (*(v42 + 8))(v43, v16);
      sub_1000C4FB4();
      sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion);
      v69 = v107;
      swift_allocError();
      v70 = v118;
      (*(v118 + 16))(v71, v41, v69);
      swift_willThrow();
      sub_100018CBC(v103, v104);

      sub_100018CD0(v121, v106);
      (*(v70 + 8))(v41, v69);
      return (*(v120 + 8))(v27, v122);
    }
  }

LABEL_12:
  v48 = objc_opt_self();
  v49 = sub_1000C1544().super.isa;
  v124 = 0;
  v50 = [v48 propertyListWithData:v49 options:0 format:0 error:&v124];

  v101 = v27;
  if (!v50)
  {
    v54 = v122;
    v72 = v124;
    sub_1000C1474();

    swift_willThrow();
    v53 = v120;
LABEL_33:
    swift_getErrorValue();
    swift_getDynamicType();
    v124 = 0xD000000000000025;
    v125 = 0x80000001000D6B90;
    v127._countAndFlagsBits = sub_1000C5D34();
    sub_1000C52E4(v127);

    sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v103, v104);

    sub_100018CD0(v121, v106);
    return (*(v53 + 8))(v101, v54);
  }

  v51 = v124;
  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  v52 = swift_dynamicCast();
  v53 = v120;
  v54 = v122;
  if (!v52)
  {
    sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    goto LABEL_33;
  }

  v55 = v123 + 64;
  v56 = 1 << *(v123 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v123 + 64);
  v59 = (v56 + 63) >> 6;
  v60 = v123;

  v61 = 0;
  do
  {
    if (v58)
    {
      goto LABEL_22;
    }

    do
    {
      v62 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v62 >= v59)
      {

        sub_10005B224();
        v73 = v102;
        sub_1000C1444();
        if (v73)
        {
          v124 = v73;
          swift_errorRetain();
          sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
          v74 = v115;
          v75 = v117;
          if (swift_dynamicCast())
          {

            v76 = v114;
            (*(v114 + 32))(v116, v74, v75);
            v77 = v119;
            v78 = v108;
            (*(v119 + 104))(v108, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v33);
            sub_1000C1964();
            (*(v77 + 8))(v78, v33);
            v79 = v116;
            (*(v76 + 16))(v113, v116, v75);
            sub_1000C4FA4();
            sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion);
            v80 = v107;
            swift_allocError();
            v81 = v118;
            (*(v118 + 16))(v82, v41, v80);
            swift_willThrow();
            sub_100018CBC(v103, v104);

            sub_100018CD0(v121, v106);
            (*(v81 + 8))(v41, v80);
            (*(v76 + 8))(v79, v75);
            goto LABEL_43;
          }

          goto LABEL_50;
        }

        v119 = 0;
        v117 = 0;
        v116 = 0;
        v84 = v124;
        v83 = v125;
        v85 = v126[0];
LABEL_45:
        v95 = v118;
        if (v84 && (v83 || v85 != 0xE000000000000000) && (sub_1000C5C04() & 1) == 0)
        {
          v99 = v101;
          v100 = v119;
          sub_1000C1994();
          if (v100)
          {
            (*(v120 + 8))(v99, v122);
            sub_100018CBC(v103, v104);
            sub_100018CD0(v121, v106);
          }

          sub_1000C3534();
          (*(v120 + 8))(v101, v122);
          sub_100018CBC(v103, v104);
          sub_100018CD0(v121, v106);
        }

        v96 = v109;
        sub_1000C4FB4();
        sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion);
        v97 = v107;
        swift_allocError();
        (*(v95 + 16))(v98, v96, v97);
        swift_willThrow();
        sub_100018CBC(v103, v104);

        sub_100018CD0(v121, v106);
        (*(v95 + 8))(v96, v97);
        return (*(v120 + 8))(v101, v122);
      }

      v58 = *(v55 + 8 * v62);
      ++v61;
    }

    while (!v58);
    v61 = v62;
LABEL_22:
    v63 = __clz(__rbit64(v58)) | (v61 << 6);
    v64 = *(v60 + 48) + 16 * v63;
    v66 = *v64;
    v65 = *(v64 + 8);
    sub_10001D804(*(v60 + 56) + 32 * v63, v126);
    v124 = v66;
    v125 = v65;
    if (v66 == 1868985701 && v65 == 0xE400000000000000)
    {

      sub_10005B168(&v124);
      break;
    }

    v58 &= v58 - 1;
    v68 = sub_1000C5C04();

    sub_10005B168(&v124);
  }

  while ((v68 & 1) == 0);

  sub_10005B1D0();
  v86 = v102;
  sub_1000C1444();
  if (!v86)
  {
    v119 = 0;
    v84 = v124;
    v116 = v125;
    v117 = v126[1];
    v83 = v126[3];
    v85 = v126[4];

    goto LABEL_45;
  }

  v124 = v86;
  swift_errorRetain();
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  v87 = v117;
  if (!swift_dynamicCast())
  {
LABEL_50:

    swift_getErrorValue();
    swift_getDynamicType();
    v124 = 0xD000000000000025;
    v125 = 0x80000001000D6B90;
    v128._countAndFlagsBits = sub_1000C5D34();
    sub_1000C52E4(v128);

    sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v103, v104);

    sub_100018CD0(v121, v106);
    return (*(v120 + 8))(v101, v122);
  }

  v88 = v114;
  v89 = v116;
  (*(v114 + 32))();
  v90 = v119;
  v91 = v108;
  (*(v119 + 104))(v108, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v33);
  sub_1000C1964();
  (*(v90 + 8))(v91, v33);
  (*(v88 + 16))(v113, v89, v87);
  sub_1000C4FA4();
  sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion);
  v92 = v107;
  swift_allocError();
  v93 = v118;
  (*(v118 + 16))(v94, v41, v92);
  swift_willThrow();
  sub_100018CBC(v103, v104);

  sub_100018CD0(v121, v106);
  (*(v93 + 8))(v41, v92);
  (*(v88 + 8))(v89, v87);
LABEL_43:
  (*(v120 + 8))(v101, v122);
}

uint64_t sub_10005A550(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F17E0;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005A59C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD290, &qword_1000CD340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10005B278();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v27 = 0;
  v11 = sub_1000C5A04();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v14 = sub_1000C5A04();
  v16 = v15;
  v23 = v14;
  v25 = 2;
  v17 = sub_1000C5A94();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = sub_100015F68(a1);
  v22 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

uint64_t sub_10005A7A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD2A0, &unk_1000CD350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_1000588D4();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  LOBYTE(v18) = 0;
  v11 = sub_1000C5AB4();
  v22 = 1;
  sub_10005B2CC();
  sub_1000C5AC4();
  (*(v6 + 8))(v9, v5);
  v12 = v20;
  v13 = v21;
  v16 = v19;
  v17 = v18;
  result = sub_100015F68(a1);
  *a2 = v11;
  v15 = v17;
  *(a2 + 24) = v16;
  *(a2 + 8) = v15;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  return result;
}

unint64_t sub_10005A980()
{
  result = qword_1000FD220;
  if (!qword_1000FD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD220);
  }

  return result;
}

uint64_t sub_10005A9D4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1898;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005AA20(uint64_t *a1)
{
  v3 = sub_1000124CC(&qword_1000FD298, &qword_1000CD348);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_10001530C(a1, v8);
  sub_10005A980();
  sub_1000C5CF4();
  if (!v1)
  {
    v13 = 0;
    v8 = sub_1000C5AB4();
    v12 = 1;
    sub_1000C5A94();
    v11 = 2;
    sub_1000C5AA4();
    (*(v4 + 8))(v7, v3);
  }

  sub_100015F68(a1);
  return v8;
}

__n128 sub_10005AC28(uint64_t a1, uint64_t a2)
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

uint64_t sub_10005AC44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005AC8C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

__n128 sub_10005ACE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10005ACFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10005AD44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005ADB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005ADF8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_10005AE78()
{
  result = qword_1000FD228;
  if (!qword_1000FD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD228);
  }

  return result;
}

unint64_t sub_10005AED0()
{
  result = qword_1000FD230;
  if (!qword_1000FD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD230);
  }

  return result;
}

unint64_t sub_10005AF28()
{
  result = qword_1000FD238;
  if (!qword_1000FD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD238);
  }

  return result;
}

unint64_t sub_10005AF80()
{
  result = qword_1000FD240;
  if (!qword_1000FD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD240);
  }

  return result;
}

unint64_t sub_10005AFD8()
{
  result = qword_1000FD248;
  if (!qword_1000FD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD248);
  }

  return result;
}

unint64_t sub_10005B030()
{
  result = qword_1000FD250;
  if (!qword_1000FD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD250);
  }

  return result;
}

unint64_t sub_10005B0CC()
{
  result = qword_1000FD260;
  if (!qword_1000FD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD260);
  }

  return result;
}

uint64_t sub_10005B120(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005B168(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FD268, &unk_1000CD328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005B1D0()
{
  result = qword_1000FD270;
  if (!qword_1000FD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD270);
  }

  return result;
}

unint64_t sub_10005B224()
{
  result = qword_1000FD278;
  if (!qword_1000FD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD278);
  }

  return result;
}

unint64_t sub_10005B278()
{
  result = qword_1000FD288;
  if (!qword_1000FD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD288);
  }

  return result;
}

unint64_t sub_10005B2CC()
{
  result = qword_1000FD2A8;
  if (!qword_1000FD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2A8);
  }

  return result;
}

unint64_t sub_10005B344()
{
  result = qword_1000FD2B0;
  if (!qword_1000FD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2B0);
  }

  return result;
}

unint64_t sub_10005B39C()
{
  result = qword_1000FD2B8;
  if (!qword_1000FD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2B8);
  }

  return result;
}

unint64_t sub_10005B3F4()
{
  result = qword_1000FD2C0;
  if (!qword_1000FD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2C0);
  }

  return result;
}

uint64_t sub_10005B45C(uint64_t a1, int a2)
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

uint64_t sub_10005B4A4(uint64_t result, int a2, int a3)
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

uint64_t sub_10005B4F0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000124CC(&qword_1000FD2D8, &qword_1000CD5A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10005BC30();
  sub_1000C5D04();
  v15 = 0;
  sub_1000C5BA4();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    sub_100015FB4(&qword_1000FC380);
    sub_1000C5BB4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10005B6AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10005BA38(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10005B6F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 103;
  }

  else
  {
    v4 = 29793;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE100000000000000;
  }

  if (*a2)
  {
    v6 = 103;
  }

  else
  {
    v6 = 29793;
  }

  if (*a2)
  {
    v7 = 0xE100000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000C5C04();
  }

  return v9 & 1;
}

Swift::Int sub_10005B784()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10005B7F0()
{
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_10005B848()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10005B8B0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F1900;
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

void sub_10005B910(uint64_t *a1@<X8>)
{
  v2 = 29793;
  if (*v1)
  {
    v2 = 103;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE100000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10005B938()
{
  if (*v0)
  {
    result = 103;
  }

  else
  {
    result = 29793;
  }

  *v0;
  return result;
}

uint64_t sub_10005B95C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F1900;
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

uint64_t sub_10005B9C0(uint64_t a1)
{
  v2 = sub_10005BC30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005B9FC(uint64_t a1)
{
  v2 = sub_10005BC30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005BA38(uint64_t *a1)
{
  v3 = sub_1000124CC(&qword_1000FD2C8, &unk_1000CD598);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10001530C(a1, v8);
  sub_10005BC30();
  sub_1000C5CF4();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1000C5AB4();
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    v10[15] = 1;
    sub_100015FB4(&qword_1000FC3A8);
    sub_1000C5AC4();
    (*(v4 + 8))(v7, v3);
  }

  sub_100015F68(a1);
  return v8;
}

unint64_t sub_10005BC30()
{
  result = qword_1000FD2D0;
  if (!qword_1000FD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2D0);
  }

  return result;
}

unint64_t sub_10005BC98()
{
  result = qword_1000FD2E0;
  if (!qword_1000FD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2E0);
  }

  return result;
}

unint64_t sub_10005BCF0()
{
  result = qword_1000FD2E8;
  if (!qword_1000FD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2E8);
  }

  return result;
}

unint64_t sub_10005BD48()
{
  result = qword_1000FD2F0;
  if (!qword_1000FD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2F0);
  }

  return result;
}

uint64_t sub_10005BDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000124CC(&qword_1000FC788, &qword_1000CAD48);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10005E10C(a3, v27 - v11);
  v13 = sub_1000C5404();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100018F90(v12, &qword_1000FC788, &qword_1000CAD48);
  }

  else
  {
    sub_1000C53F4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000C53E4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000C5294() + 32;
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

      sub_100018F90(a3, &qword_1000FC788, &qword_1000CAD48);

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

  sub_100018F90(a3, &qword_1000FC788, &qword_1000CAD48);
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

uint64_t sub_10005C0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v5 = sub_1000124CC(&qword_1000FD300, &qword_1000CD750);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v35 = &v30 - v7;
  v8 = sub_1000C4CF4();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C4CC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C5514();
  sub_100014F70();
  v18 = sub_1000C56D4();
  v19 = *(v13 + 16);
  v36 = a1;
  v19(v16, a1, v12);
  if (os_log_type_enabled(v18, v17))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = a3;
    v22 = v21;
    v39 = v21;
    *v20 = 136446210;
    sub_1000C4CB4();
    v23 = sub_1000C4CD4();
    v31 = v5;
    v25 = v24;
    (*(v33 + 8))(v11, v34);
    (*(v13 + 8))(v16, v12);
    v26 = sub_10008AC30(v23, v25, &v39);
    v5 = v31;

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v17, "Unpacking animated image at path %{public}s", v20, 0xCu);
    sub_100015F68(v22);
  }

  else
  {

    v27 = (*(v13 + 8))(v16, v12);
  }

  __chkstk_darwin(v27);
  v28 = v38;
  *(&v30 - 2) = v36;
  *(&v30 - 1) = v28;
  sub_1000124CC(&qword_1000FD308, &qword_1000CD758);
  (*(v37 + 104))(v35, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v5);
  return sub_1000C5434();
}

uint64_t sub_10005C4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v31 = a1;
  v32 = sub_1000124CC(&qword_1000FD310, &unk_1000CD760);
  v3 = *(v32 - 8);
  v28 = *(v3 + 64);
  __chkstk_darwin(v32);
  v27 = &v23 - v4;
  v5 = sub_1000C3D64();
  v25 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C4CC4();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000124CC(&qword_1000FC788, &qword_1000CAD48);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  v16 = sub_1000C5404();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v11, v29, v8);
  (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v5);
  v17 = v27;
  (*(v3 + 16))(v27, v31, v32);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + *(v6 + 80) + v18) & ~*(v6 + 80);
  v20 = (v7 + *(v3 + 80) + v19) & ~*(v3 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v9 + 32))(v21 + v18, v11, v24);
  (*(v6 + 32))(v21 + v19, v26, v25);
  (*(v3 + 32))(v21 + v20, v17, v32);
  sub_10005BDF4(0, 0, v15, &unk_1000CD778, v21);
}

uint64_t sub_10005C840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = sub_1000C3D64();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v10 = *(*(sub_1000124CC(&qword_1000FC460, &qword_1000C9D30) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v11 = sub_1000C4D84();
  v6[21] = v11;
  v12 = *(v11 - 8);
  v6[22] = v12;
  v13 = *(v12 + 64) + 15;
  v6[23] = swift_task_alloc();
  v14 = sub_1000C4CF4();
  v6[24] = v14;
  v15 = *(v14 - 8);
  v6[25] = v15;
  v16 = *(v15 + 64) + 15;
  v6[26] = swift_task_alloc();
  v17 = sub_1000C14E4();
  v6[27] = v17;
  v18 = *(v17 - 8);
  v6[28] = v18;
  v19 = *(v18 + 64) + 15;
  v6[29] = swift_task_alloc();
  v20 = sub_1000C4CC4();
  v6[30] = v20;
  v21 = *(v20 - 8);
  v6[31] = v21;
  v22 = *(v21 + 64) + 15;
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_10005CAAC, 0, 0);
}

uint64_t sub_10005CAAC()
{
  v66 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[14];
  v5 = sub_1000C5514();
  sub_100014F70();
  v6 = sub_1000C56D4();
  v64 = *(v2 + 16);
  v64(v1, v4, v3);
  v7 = os_log_type_enabled(v6, v5);
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];
  if (v7)
  {
    v11 = v0[28];
    v12 = v0[29];
    v60 = v0[27];
    v62 = v5;
    v13 = v0[25];
    v14 = v0[26];
    v58 = v0[24];
    v15 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v65[0] = v61;
    *v15 = 136446210;
    v59 = v10;
    sub_1000C4CB4();
    sub_1000C4CE4();
    (*(v13 + 8))(v14, v58);
    sub_10005E604(&qword_1000FC778, &type metadata accessor for URL);
    v16 = sub_1000C5BE4();
    v18 = v17;
    (*(v11 + 8))(v12, v60);
    (*(v9 + 8))(v8, v59);
    v19 = sub_10008AC30(v16, v18, v65);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v62, "Task running for animated image: %{public}s)", v15, 0xCu);
    sub_100015F68(v61);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v20 = v0[15];
  if (sub_1000C3D54() <= 5000)
  {
    v33 = v0[30];
    v34 = v0[23];
    v35 = v0[20];
    v36 = v0[14];
    v0[5] = v33;
    v0[6] = &protocol witness table for File;
    v63 = *(v0 + 15);
    v37 = sub_10002E5DC(v0 + 2);
    v64(v37, v36, v33);
    sub_1000C3D44();
    v38 = sub_1000C4D54();
    (*(*(v38 - 8) + 56))(v35, 1, 1, v38);
    sub_1000C4D64();
    sub_1000C4D74();
    v39 = v0[11];
    sub_10001530C(v0 + 7, v0[10]);
    v40 = swift_task_alloc();
    *(v40 + 16) = v63;
    v41 = swift_task_alloc();
    *(v41 + 16) = sub_10005E324;
    *(v41 + 24) = v40;
    sub_1000C2834();
    (*(v0[22] + 8))(v0[23], v0[21]);

    sub_100015F68(v0 + 7);
  }

  else
  {
    v22 = v0[18];
    v21 = v0[19];
    v23 = v0[17];
    v24 = v0[15];
    v25 = sub_1000C5514();
    v26 = sub_1000C56D4();
    (*(v22 + 16))(v21, v24, v23);
    v27 = os_log_type_enabled(v26, v25);
    v29 = v0[18];
    v28 = v0[19];
    v30 = v0[17];
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 134349056;
      v32 = sub_1000C3D54();
      (*(v29 + 8))(v28, v30);
      *(v31 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v25, "context.maxCount too large: %{public}ld)", v31, 0xCu);
    }

    else
    {
      (*(v29 + 8))(v0[19], v0[17]);
    }

    v42 = v0[15];

    v65[0] = 40;
    v65[1] = 0xE100000000000000;
    v0[13] = sub_1000C3D54();
    v68._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v68);

    sub_1000C4FC4();
    sub_10005E604(&qword_1000FC360, &type metadata accessor for Explosion);
    v43 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    v44 = sub_1000C5534();
    v45 = sub_1000C56D4();
    if (os_log_type_enabled(v45, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v48;
      *v47 = v48;
      _os_log_impl(&_mh_execute_header, v45, v44, "Caught error: %@", v46, 0xCu);
      sub_100018F90(v47, &qword_1000FC468, &qword_1000CAD70);
    }

    v49 = v0[16];

    v0[12] = v43;
    sub_1000124CC(&qword_1000FD310, &unk_1000CD760);
    sub_1000C5424();
  }

  v50 = v0[32];
  v51 = v0[29];
  v52 = v0[26];
  v53 = v0[23];
  v55 = v0[19];
  v54 = v0[20];

  v56 = v0[1];

  return v56();
}

uint64_t sub_10005D1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v79 = a2;
  v6 = sub_1000124CC(&qword_1000FD308, &qword_1000CD758);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v70 = &v56 - v8;
  v69 = sub_1000124CC(&qword_1000FD318, &qword_1000CD798);
  v9 = *(v69 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v69);
  v68 = &v56 - v11;
  v75 = sub_1000C30A4();
  v12 = *(v75 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v75);
  v74 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v73 = &v56 - v17;
  v18 = sub_1000C4D84();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v72 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000C3D84();
  v57 = *(v21 - 8);
  v22 = *(v57 + 64);
  v23 = __chkstk_darwin(v21);
  v67 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v71 = &v56 - v25;
  v26 = sub_1000C3454();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  sub_1000C5594();
  v31 = sub_1000C3414();
  if (!v32)
  {
LABEL_21:
    sub_1000C4FC4();
    sub_10005E604(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    v54 = *(v27 + 8);
    v55 = v30;
    return v54(v55, v26);
  }

  v58 = v9;
  v78 = v30;
  v33 = v31;
  v34 = v32;
  if ((sub_10009B58C(v31, v32) & 1) == 0)
  {
    sub_1000C4FC4();
    sub_10005E604(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    v54 = *(v27 + 8);
    v55 = v78;
    return v54(v55, v26);
  }

  v64 = v33;
  v66 = v34;
  result = sub_1000C3D54();
  v36 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = sub_1000C33F4();
  v37 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    if (v37 >= v36)
    {
      v37 = v36;
    }

    v61 = v37;
    if (v37 < 0)
    {
      goto LABEL_30;
    }

    v60 = v21;
    v56 = v26;
    v26 = 0;
    v63 = enum case for StickerEffect.none(_:);
    v62 = (v12 + 104);
    v59 = (v57 + 16);
    ++v58;
    v57 += 8;
    v65 = v27;
    v77 = a3;
    while (1)
    {
      v38 = sub_1000C33F4();
      v39 = sub_1000C3D54();
      sub_10005E374(v26, v38, v39);
      if (v3)
      {
        (*(v65 + 8))(v78, v56);
      }

      v41 = v40;
      v42 = swift_allocObject();
      v43 = v76;
      *(v42 + 16) = v76;
      v43;
      sub_1000C3D34();

      sub_1000C3D44();
      v44 = sub_1000C5584();
      type metadata accessor for CGImage(0);
      v81 = v45;
      v82 = &protocol witness table for CGImageRef;
      v80 = v44;
      v46 = sub_1000C4D54();
      (*(*(v46 - 8) + 56))(v73, 1, 1, v46);
      sub_1000C4D64();
      (*v62)(v74, v63, v75);

      v47 = v71;
      sub_1000C3D74();
      result = sub_1000C3D54();
      if (__OFSUB__(result, 1))
      {
        break;
      }

      if (v26 >= result - 1)
      {
        v48 = 1;
      }

      else
      {
        result = sub_1000C33F4();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_27;
        }

        v48 = v41 >= result - 1;
      }

      v49 = v60;
      (*v59)(v67, v47, v60);
      sub_10005E604(&qword_1000FD320, &type metadata accessor for AnimatedImageFrame);
      sub_1000C3FF4();
      v30 = sub_1000124CC(&qword_1000FD310, &unk_1000CD760);
      v50 = v68;
      sub_1000C5414();
      (*v58)(v50, v69);
      if (v48)
      {
        sub_1000C5514();
        sub_100014F70();
        v51 = sub_1000C56D4();
        sub_1000C1A54();

        v80 = 0;
        sub_1000C5424();
      }

      (*v57)(v47, v49);
      v27 = v65;
      v52 = v78;
      if (v61 == v26)
      {

        return (*(v27 + 8))(v52, v56);
      }

      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10005DB6C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005DC64;

  return v7(a1);
}

uint64_t sub_10005DC64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10005DD64()
{
  v18 = sub_1000C4CC4();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v17 = sub_1000C3D64();
  v5 = *(v17 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1000124CC(&qword_1000FD310, &unk_1000CD760);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v16 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v18);
  (*(v5 + 8))(v0 + v7, v17);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v16, v13 | 7);
}

uint64_t sub_10005DF4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000C4CC4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C3D64() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000124CC(&qword_1000FD310, &unk_1000CD760) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10003A8F0;

  return sub_10005C840(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_10005E10C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC788, &qword_1000CAD48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005E17C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005E1B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10003B8E8;

  return sub_10005DB6C(a1, v5);
}

uint64_t sub_10005E26C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10003A8F0;

  return sub_10005DB6C(a1, v5);
}

uint64_t sub_10005E340@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_10005E374(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < result || (v3 = result, result >= a2))
  {
    sub_1000C4FC4();
    sub_10005E604(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  if (a3 < a2)
  {
    v4 = a2 / a3;
    v5 = v4 * result;
    if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v5 <= -9.22337204e18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v5 >= 9.22337204e18)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    result = a2 - 1;
    if (v3)
    {
      if (v6 >= a2)
      {
LABEL_17:
        v7 = v4 * (v3 + 1);
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (v7 <= -9.22337204e18)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if (v7 >= 9.22337204e18)
        {
LABEL_30:
          __break(1u);
          return result;
        }

        v8 = v7;
        if (a2 - 1 < v7)
        {
          v8 = a2 - 1;
        }

        if (v8 < result)
        {
          __break(1u);
          goto LABEL_24;
        }

        return result;
      }
    }

    else
    {
      if (a2 < 1)
      {
        goto LABEL_17;
      }

      v6 = 0;
    }

    result = v6;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_10005E598()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E604(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005E660(uint64_t a1)
{
  result = sub_100012568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10005E68C()
{
  result = qword_1000FD328;
  if (!qword_1000FD328)
  {
    sub_1000C3F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD328);
  }

  return result;
}

unint64_t sub_10005E724(uint64_t a1)
{
  result = sub_100012A00();
  *(a1 + 8) = result;
  return result;
}

void sub_10005E794(uint64_t a1@<X8>)
{
  v200 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v215 = &v189 - v3;
  v4 = sub_1000C5974();
  v220 = *(v4 - 8);
  v221 = v4;
  v5 = *(v220 + 64);
  v6 = __chkstk_darwin(v4);
  v216 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v227 = &v189 - v9;
  __chkstk_darwin(v8);
  *&v219 = &v189 - v10;
  v11 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v207 = &v189 - v13;
  v211 = sub_1000C3DC4();
  v209 = *(v211 - 8);
  v14 = *(v209 + 64);
  v15 = __chkstk_darwin(v211);
  v208 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v203 = &v189 - v18;
  __chkstk_darwin(v17);
  v213 = &v189 - v19;
  v214 = sub_1000C3244();
  v224 = *(v214 - 8);
  v20 = *(v224 + 64);
  v21 = __chkstk_darwin(v214);
  v206 = &v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v210 = &v189 - v24;
  __chkstk_darwin(v23);
  v212 = &v189 - v25;
  v26 = sub_1000124CC(&qword_1000FD338, &qword_1000CD898);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v204 = &v189 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v205 = &v189 - v31;
  v32 = __chkstk_darwin(v30);
  v201 = &v189 - v33;
  v34 = __chkstk_darwin(v32);
  v202 = &v189 - v35;
  v36 = __chkstk_darwin(v34);
  v217 = &v189 - v37;
  __chkstk_darwin(v36);
  v218 = &v189 - v38;
  v39 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v226 = &v189 - v41;
  v42 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v222 = &v189 - v44;
  v228 = sub_1000C1974();
  v223 = *(v228 - 8);
  v45 = *(v223 + 64);
  __chkstk_darwin(v228);
  v47 = &v189 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000C4FC4();
  *&v225 = *(v48 - 8);
  v49 = *(v225 + 64);
  __chkstk_darwin(v48);
  v51 = &v189 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000C4ED4();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  v55 = __chkstk_darwin(v52);
  v57 = &v189 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v59 = &v189 - v58;
  v60 = v229;
  sub_1000C1994();
  if (v60)
  {
    return;
  }

  v229 = v47;
  v61 = v228;
  v194 = v51;
  v195 = v48;
  v192 = v57;
  v198 = v52;
  v199 = v59;
  v196 = 0;
  v197 = v53;
  v62 = sub_1000C1984();
  if (v63 >> 60 == 15)
  {
    sub_100014F70();
    v64 = sub_1000C5714();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1000C94D0;
    v66 = v226;
    v67 = v199;
    sub_1000C4EC4();
    v68 = sub_1000C1614();
    (*(*(v68 - 8) + 56))(v66, 0, 1, v68);
    v69 = sub_1000C4A84();
    v71 = v70;
    sub_100018F90(v66, &qword_1000FC520, &qword_1000C9D20);
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = sub_100014FBC();
    *(v65 + 32) = v69;
    *(v65 + 40) = v71;
    sub_1000C5554();
    sub_1000C1A44();

    sub_100060348();
    swift_allocError();
    swift_willThrow();
    (*(v197 + 8))(v67, v198);
    return;
  }

  v190 = v62;
  v191 = v63;
  isa = sub_1000C1544().super.isa;
  v73 = [(objc_class *)isa _imOptionallyDecompressData];

  v74 = sub_1000C1564();
  v76 = v75;

  v193 = v76;
  v77 = v76 >> 62;
  v189 = v74;
  if ((v76 >> 62) > 1)
  {
    v78 = v227;
    v79 = v224;
    v80 = v225;
    v81 = v61;
    v83 = v223;
    v82 = v229;
    if (v77 == 2)
    {
      v85 = *(v74 + 16);
      v84 = *(v74 + 24);
      v86 = __OFSUB__(v84, v85);
      v87 = v84 - v85;
      if (v86)
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v87 > 0)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    (*(v83 + 104))(v82, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v81);
    sub_1000C1964();
    (*(v83 + 8))(v82, v81);
    v119 = v194;
    sub_1000C4FB4();
    sub_100014F70();
    v228 = sub_1000C5774();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_1000C94D0;
    v229 = *(v80 + 16);
    v121 = v222;
    v122 = v195;
    v229(v222, v119, v195);
    (*(v80 + 56))(v121, 0, 1, v122);
    v123 = sub_1000C4A84();
    v125 = v124;
    sub_100018F90(v121, &qword_1000FC438, &unk_1000C9DC0);
    *(v120 + 56) = &type metadata for String;
    *(v120 + 64) = sub_100014FBC();
    *(v120 + 32) = v123;
    *(v120 + 40) = v125;
    sub_1000C5554();
    v126 = v228;
    sub_1000C1A44();

    sub_10006039C(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    v229(v127, v119, v122);
    swift_willThrow();
    sub_100018CBC(v190, v191);
    sub_100018CD0(v189, v193);
    (*(v80 + 8))(v119, v122);
    (*(v197 + 8))(v199, v198);
    return;
  }

  v78 = v227;
  v79 = v224;
  v80 = v225;
  v81 = v61;
  v82 = v229;
  if (!v77)
  {
    v83 = v223;
    if (!BYTE6(v193))
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v83 = v223;
  if (__OFSUB__(HIDWORD(v74), v74))
  {
LABEL_34:
    __break(1u);
    return;
  }

  if (HIDWORD(v74) - v74 <= 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v88 = sub_1000C1464();
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  swift_allocObject();
  v91 = sub_1000C1454();
  sub_1000603E4();
  v223 = v91;
  v92 = v196;
  sub_1000C1444();
  if (v92)
  {
    *&v246 = v92;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v93 = v219;
    v94 = v221;
    if (swift_dynamicCast())
    {

      v95 = v220;
      (*(v220 + 32))(v78, v93, v94);
      v226 = sub_100014F70();
      v96 = v94;
      v214 = sub_1000C5774();
      v224 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v97 = swift_allocObject();
      v219 = xmmword_1000C94D0;
      *(v97 + 16) = xmmword_1000C94D0;
      v98 = v78;
      v99 = *(v95 + 16);
      v217 = v95 + 16;
      v100 = v215;
      v99(v215, v98, v96);
      (*(v95 + 56))(v100, 0, 1, v96);
      v101 = sub_1000C4A84();
      v103 = v102;
      sub_100018F90(v100, &qword_1000FC430, &unk_1000C9B00);
      *(v97 + 56) = &type metadata for String;
      v218 = sub_100014FBC();
      *(v97 + 64) = v218;
      *(v97 + 32) = v101;
      *(v97 + 40) = v103;
      sub_1000C5554();
      v104 = v214;
      sub_1000C1A44();

      v106 = v228;
      v105 = v229;
      (*(v83 + 104))(v229, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v228);
      sub_1000C1964();
      (*(v83 + 8))(v105, v106);
      v99(v216, v227, v221);
      v107 = v194;
      sub_1000C4FA4();
      v108 = sub_1000C5774();
      v109 = swift_allocObject();
      *(v109 + 16) = v219;
      v110 = v225;
      v229 = *(v225 + 16);
      v111 = v222;
      v112 = v195;
      v229(v222, v107, v195);
      (*(v110 + 56))(v111, 0, 1, v112);
      v113 = sub_1000C4A84();
      v115 = v114;
      sub_100018F90(v111, &qword_1000FC438, &unk_1000C9DC0);
      v116 = v218;
      *(v109 + 56) = &type metadata for String;
      *(v109 + 64) = v116;
      *(v109 + 32) = v113;
      *(v109 + 40) = v115;
      sub_1000C5554();
      sub_1000C1A44();

      sub_10006039C(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      v117 = v194;
      v229(v118, v194, v112);
      swift_willThrow();
      sub_100018CBC(v190, v191);

      sub_100018CD0(v189, v193);
      (*(v110 + 8))(v117, v112);
      (*(v220 + 8))(v227, v221);
      (*(v197 + 8))(v199, v198);
    }

    else
    {

      sub_100014F70();
      v150 = sub_1000C5774();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_1000C94D0;
      *&v246 = v92;
      v152 = sub_1000C4A84();
      v154 = v153;
      *(v151 + 56) = &type metadata for String;
      *(v151 + 64) = sub_100014FBC();
      *(v151 + 32) = v152;
      *(v151 + 40) = v154;
      sub_1000C5554();
      sub_1000C1A44();

      swift_getErrorValue();
      swift_getDynamicType();
      *&v246 = 0;
      *(&v246 + 1) = 0xE000000000000000;
      sub_1000C5944(22);

      *&v246 = 0xD000000000000014;
      *(&v246 + 1) = 0x80000001000D5330;
      v251._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v251);

      sub_10006039C(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v190, v191);

      sub_100018CD0(v189, v193);

      (*(v197 + 8))(v199, v198);
    }
  }

  else
  {
    v196 = 0;
    v241 = v246;
    v242 = v247;
    v243 = v248;
    v244 = v249;
    v245 = v250;
    v128 = *(&v246 + 1);
    *&v219 = v246;
    v129 = sub_100014F70();

    v228 = v129;
    v130 = sub_1000C5774();
    v227 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v131 = swift_allocObject();
    v225 = xmmword_1000C94D0;
    *(v131 + 16) = xmmword_1000C94D0;
    v132 = v226;
    sub_1000C4EC4();
    v133 = sub_1000C1614();
    v134 = *(v133 - 8);
    v135 = *(v134 + 56);
    v221 = v134 + 56;
    v222 = v135;
    (v135)(v132, 0, 1, v133);
    v136 = sub_1000C4A84();
    v138 = v137;
    sub_100018F90(v132, &qword_1000FC520, &qword_1000C9D20);
    *(v131 + 56) = &type metadata for String;
    v220 = sub_100014FBC();
    *(v131 + 64) = v220;
    *(v131 + 32) = v136;
    *(v131 + 40) = v138;
    sub_1000C5554();
    sub_1000C1A44();

    v229 = v128;
    if (!v128)
    {
      sub_100060438(&v241);
      v155 = sub_1000C5774();
      v156 = swift_allocObject();
      *(v156 + 16) = v225;
      v157 = v199;
      sub_1000C4EC4();
      (v222)(v132, 0, 1, v133);
      v158 = sub_1000C4A84();
      v160 = v159;
      sub_100018F90(v132, &qword_1000FC520, &qword_1000C9D20);
      v161 = v220;
      *(v156 + 56) = &type metadata for String;
      *(v156 + 64) = v161;
      *(v156 + 32) = v158;
      *(v156 + 40) = v160;
      sub_1000C5554();
      sub_1000C1A44();

      sub_10006048C();
      swift_allocError();
      swift_willThrow();
      sub_100018CBC(v190, v191);

      sub_100018CD0(v189, v193);
      (*(v197 + 8))(v157, v198);
      return;
    }

    v139 = *(v79 + 56);
    v140 = v218;
    v141 = v214;
    v139(v218, 1, 1, v214);
    v142 = v217;
    v139(v217, 1, 1, v141);
    v143 = v198;
    if (*(&v243 + 1))
    {
      v233 = v243;
      v234 = 0u;
      v235 = 0u;
      v236 = 0u;
      v237 = v243;
      v238 = 0u;
      v239 = 0u;
      v240 = 0u;

      sub_100060550(&v233, v230);
      sub_1000605AC(&v237);
      v231 = &type metadata for MessageEditedPartDictionary;
      v232 = &off_1000F5D70;
      v144 = swift_allocObject();
      v230[0] = v144;
      v145 = v234;
      v144[1] = v233;
      v144[2] = v145;
      v146 = v236;
      v144[3] = v235;
      v144[4] = v146;
      v147 = v212;
      v148 = v196;
      sub_1000B0354(v230, v212);
      v196 = v148;
      v149 = v199;
      if (v148)
      {
        sub_100018CBC(v190, v191);

        sub_100060438(&v241);
        sub_100018CD0(v189, v193);
        sub_100018F90(v142, &qword_1000FD338, &qword_1000CD898);
        sub_100018F90(v140, &qword_1000FD338, &qword_1000CD898);
        (*(v197 + 8))(v149, v198);
        return;
      }

      sub_100018F90(v140, &qword_1000FD338, &qword_1000CD898);
      v162 = v202;
      (*(v224 + 32))(v202, v147, v141);
      v139(v162, 0, 1, v141);
      sub_100060650(v162, v140);
      v143 = v198;
    }

    v163 = v245;

    sub_100060438(&v241);
    if (*(&v163 + 1))
    {
      v233 = v163;
      v234 = 0u;
      v235 = 0u;
      v236 = 0u;
      v237 = v163;
      v238 = 0u;
      v239 = 0u;
      v240 = 0u;
      sub_100060550(&v233, v230);
      sub_1000605AC(&v237);
      v231 = &type metadata for MessageEditedPartDictionary;
      v232 = &off_1000F5D70;
      v164 = swift_allocObject();
      v230[0] = v164;
      v165 = v234;
      v164[1] = v233;
      v164[2] = v165;
      v166 = v236;
      v164[3] = v235;
      v164[4] = v166;
      v167 = v210;
      v168 = v196;
      sub_1000B0354(v230, v210);
      v196 = v168;
      if (v168)
      {
        sub_100018CBC(v190, v191);

        sub_100018CD0(v189, v193);
        sub_100018F90(v142, &qword_1000FD338, &qword_1000CD898);
        sub_100018F90(v218, &qword_1000FD338, &qword_1000CD898);
        (*(v197 + 8))(v199, v143);
        return;
      }

      v169 = v143;
      sub_100018F90(v142, &qword_1000FD338, &qword_1000CD898);
      v170 = v201;
      v171 = v167;
      v172 = v214;
      (*(v224 + 32))(v201, v171, v214);
      v139(v170, 0, 1, v172);
      sub_100060650(v170, v142);
    }

    else
    {
      v169 = v143;
    }

    v173 = v197;
    LODWORD(v228) = BYTE9(v244);
    v227 = v242;
    LODWORD(v226) = BYTE8(v242);
    v174 = v209;
    v175 = v211;
    (*(v209 + 104))(v203, enum case for EditMessageCommand.MessageEditType.unspecified(_:), v211);
    v176 = v213;
    v177 = v175;
    sub_1000C3DB4();
    (*(v173 + 16))(v192, v199, v169);
    v178 = v208;
    (*(v174 + 16))(v208, v176, v175);
    v179 = v205;
    sub_1000604E0(v218, v205);
    v180 = v204;
    sub_1000604E0(v217, v204);
    v181 = sub_1000C3D24();
    (*(*(v181 - 8) + 56))(v207, 1, 1, v181);
    v182 = v196;
    sub_1000C3224();
    if (v182)
    {
      v196 = v182;
      sub_100018CBC(v190, v191);

      sub_100018CD0(v189, v193);
      sub_100018F90(v180, &qword_1000FD338, &qword_1000CD898);
      sub_100018F90(v179, &qword_1000FD338, &qword_1000CD898);
      v183 = *(v174 + 8);
      v183(v178, v177);
      v184 = v177;
      v185 = *(v173 + 8);
      v186 = v198;
      v185(v192, v198);
      v183(v213, v184);
      sub_100018F90(v217, &qword_1000FD338, &qword_1000CD898);
      sub_100018F90(v218, &qword_1000FD338, &qword_1000CD898);
      v185(v199, v186);
    }

    else
    {
      v187 = v213;
      sub_1000C3DD4();
      v188 = v189;
      sub_100018CBC(v190, v191);

      sub_100018CD0(v188, v193);
      (*(v174 + 8))(v187, v211);
      sub_100018F90(v217, &qword_1000FD338, &qword_1000CD898);
      sub_100018F90(v218, &qword_1000FD338, &qword_1000CD898);
      (*(v197 + 8))(v199, v198);
    }
  }
}

uint64_t sub_1000601D4@<X0>(uint64_t a1@<X8>)
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
  sub_10006039C(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v1)
  {
    sub_10005E794(a1);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

unint64_t sub_100060348()
{
  result = qword_1000FD340;
  if (!qword_1000FD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD340);
  }

  return result;
}

uint64_t sub_10006039C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000603E4()
{
  result = qword_1000FD348;
  if (!qword_1000FD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD348);
  }

  return result;
}

unint64_t sub_10006048C()
{
  result = qword_1000FD350;
  if (!qword_1000FD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD350);
  }

  return result;
}

uint64_t sub_1000604E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD338, &qword_1000CD898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100060600()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100060650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD338, &qword_1000CD898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100060748@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v1 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v26 - v3;
  v5 = sub_1000C4FC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C15D4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_100014F70();
  v12 = sub_1000C5804();
  sub_1000C5554();
  sub_1000C1A44();

  v13 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  v15 = [v13 initWithData:isa];

  if (v15)
  {
    [v15 version];
    result = [v15 guidString];
    if (result)
    {
      v17 = result;
      sub_1000C5224();

      [v15 dateAsTimeIntervalSince1970];
      sub_1000C15B4();
      result = [v15 collaborationId];
      if (result)
      {
        v18 = result;
        sub_1000C5224();

        sub_1000C4414();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1000C4FB4();
    v19 = sub_1000C5804();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000C94D0;
    v21 = v6;
    v27 = *(v6 + 16);
    v27(v4, v9, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v22 = sub_1000C4A84();
    v24 = v23;
    sub_10002FA20(v4);
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100014FBC();
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    sub_1000C5554();
    sub_1000C1A44();

    sub_100060BE4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    v27(v25, v9, v5);
    swift_willThrow();
    return (*(v21 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_100060BE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100060C2C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SMSDictionary() + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3 == 7564659 && v5 == 0xE300000000000000;
  if (v6 || (sub_1000C5C04() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.sms(_:);
LABEL_7:
    v8 = *v7;
    v9 = sub_1000C1E44();
    return (*(*(v9 - 8) + 104))(a1, v8, v9);
  }

  v11 = v4 == 7564653 && v5 == 0xE300000000000000;
  if (v11 || (sub_1000C5C04() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.mms(_:);
    goto LABEL_7;
  }

  v12 = v4 == 0x6E776F6E6B6E75 && v5 == 0xE700000000000000;
  if (v12 || (sub_1000C5C04() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.unknown(_:);
    goto LABEL_7;
  }

  sub_1000C4FC4();
  sub_100063124(&qword_1000FC360, &type metadata accessor for Explosion);
  swift_allocError();
  sub_1000C4FB4();
  return swift_willThrow();
}

uint64_t type metadata accessor for SMSDictionary()
{
  result = qword_1000FD3B8;
  if (!qword_1000FD3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100060E80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000124CC(&qword_1000FC5B0, &qword_1000C9EE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[10];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100060FD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000124CC(&qword_1000FC5B0, &qword_1000C9EE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_10006111C()
{
  sub_10005425C(319, &qword_1000FD3C8);
  if (v0 <= 0x3F)
  {
    sub_100061344(319, &qword_1000FD3D0, &type metadata accessor for SMSMessage.FilterSubCategoryType);
    if (v1 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCD00);
      if (v2 <= 0x3F)
      {
        sub_100061398(319, &qword_1000FD3D8, &qword_1000FC378, &qword_1000CA860);
        if (v3 <= 0x3F)
        {
          sub_100061344(319, &qword_1000FD3E0, &type metadata accessor for Date);
          if (v4 <= 0x3F)
          {
            sub_100061398(319, &qword_1000FD3E8, &qword_1000FD3F0, qword_1000CD9E0);
            if (v5 <= 0x3F)
            {
              sub_10005425C(319, &qword_1000FCD08);
              if (v6 <= 0x3F)
              {
                sub_10005425C(319, &unk_1000FD3F8);
                if (v7 <= 0x3F)
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

void sub_100061344(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100061398(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10001308C(a3, a4);
    v5 = sub_1000C5854();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000613EC(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD4C0, &qword_1000CDA40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v82 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100062FB0();
  sub_1000C5D04();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v83) = 0;
  sub_1000C5B24();
  if (!v2)
  {
    v13 = type metadata accessor for SMSDictionary();
    v14 = v13[5];
    LOBYTE(v83) = 1;
    sub_1000C1E24();
    sub_100063124(&qword_1000FD4C8, &type metadata accessor for SMSMessage.FilterSubCategoryType);
    sub_1000C5B44();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v83) = 2;
    sub_1000C5AF4();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v83) = 3;
    sub_1000C5B84();
    v21 = (v3 + v13[8]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v83) = 4;
    sub_1000C5B84();
    v83 = *(v3 + v13[9]);
    HIBYTE(v82) = 5;
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    sub_100015FB4(&qword_1000FC380);
    sub_1000C5B44();
    v24 = v13[10];
    LOBYTE(v83) = 6;
    sub_1000C15D4();
    sub_100063124(&qword_1000FD4D0, &type metadata accessor for Date);
    sub_1000C5B44();
    v25 = (v3 + v13[11]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v83) = 7;
    sub_1000C5AF4();
    v28 = (v3 + v13[12]);
    v29 = *v28;
    v30 = *(v28 + 8);
    LOBYTE(v83) = 8;
    sub_1000C5B24();
    v31 = (v3 + v13[13]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v83) = 9;
    sub_1000C5AF4();
    v34 = (v3 + v13[14]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v83) = 10;
    sub_1000C5AF4();
    v37 = (v3 + v13[15]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v83) = 11;
    sub_1000C5AF4();
    v40 = (v3 + v13[16]);
    v41 = *v40;
    v42 = v40[1];
    LOBYTE(v83) = 12;
    sub_1000C5AF4();
    v43 = (v3 + v13[17]);
    v44 = *v43;
    v45 = v43[1];
    LOBYTE(v83) = 13;
    sub_1000C5AF4();
    v46 = (v3 + v13[18]);
    v47 = *v46;
    v48 = v46[1];
    LOBYTE(v83) = 14;
    sub_1000C5AF4();
    v49 = (v3 + v13[19]);
    v50 = *v49;
    v51 = *(v49 + 8);
    LOBYTE(v83) = 15;
    sub_1000C5B24();
    v52 = (v3 + v13[20]);
    v53 = *v52;
    v54 = v52[1];
    LOBYTE(v83) = 16;
    sub_1000C5AF4();
    v55 = (v3 + v13[21]);
    v56 = *v55;
    v57 = v55[1];
    LOBYTE(v83) = 17;
    sub_1000C5AF4();
    v58 = (v3 + v13[22]);
    v59 = *v58;
    v60 = v58[1];
    LOBYTE(v83) = 18;
    sub_1000C5AF4();
    v83 = *(v3 + v13[23]);
    HIBYTE(v82) = 19;
    sub_1000124CC(&qword_1000FD3F0, qword_1000CD9E0);
    sub_10006316C(&qword_1000FD4D8, sub_1000631E4);
    sub_1000C5B44();
    v61 = *(v3 + v13[24]);
    LOBYTE(v83) = 20;
    sub_1000C5B04();
    v62 = *(v3 + v13[25]);
    LOBYTE(v83) = 21;
    sub_1000C5B04();
    v63 = (v3 + v13[26]);
    v64 = *v63;
    v65 = v63[1];
    LOBYTE(v83) = 22;
    sub_1000C5AF4();
    v66 = (v3 + v13[27]);
    v67 = *v66;
    v68 = *(v66 + 8);
    LOBYTE(v83) = 23;
    sub_1000C5B74();
    v69 = (v3 + v13[28]);
    v70 = *v69;
    v71 = v69[1];
    LOBYTE(v83) = 24;
    sub_1000C5AF4();
    v72 = (v3 + v13[29]);
    v73 = *v72;
    v74 = v72[1];
    LOBYTE(v83) = 25;
    sub_1000C5AF4();
    v75 = (v3 + v13[30]);
    v76 = *v75;
    v77 = v75[1];
    LOBYTE(v83) = 26;
    sub_1000C5AF4();
    v78 = (v3 + v13[31]);
    v79 = *v78;
    v80 = v78[1];
    LOBYTE(v83) = 27;
    sub_1000C5AF4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100061B78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v4 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v144 - v6;
  v8 = sub_1000124CC(&qword_1000FC5B0, &qword_1000C9EE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v144 - v10;
  v147 = sub_1000124CC(&qword_1000FD490, &qword_1000CDA38);
  v146 = *(v147 - 8);
  v12 = *(v146 + 64);
  __chkstk_darwin(v147);
  v14 = &v144 - v13;
  v15 = type metadata accessor for SMSDictionary();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = (&v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v17 + 20);
  v21 = sub_1000C1E24();
  v22 = *(*(v21 - 8) + 56);
  v166 = v20;
  v22(v19 + v20, 1, 1, v21);
  v164 = v15;
  v23 = *(v15 + 40);
  v24 = sub_1000C15D4();
  v25 = *(*(v24 - 8) + 56);
  v165 = v19;
  v163 = v23;
  v25(v19 + v23, 1, 1, v24);
  v27 = a1[3];
  v26 = a1[4];
  v156 = a1;
  sub_10001530C(a1, v27);
  sub_100062FB0();
  v148 = v14;
  sub_1000C5CF4();
  if (v2)
  {
    v167 = v2;
    v28 = 0;
    v29 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v155 = 0;
    v31 = v164;
    v30 = v165;
    v32 = v163;
    goto LABEL_15;
  }

  LOBYTE(v169) = 0;
  v33 = v147;
  v34 = sub_1000C5A34();
  v167 = 0;
  v32 = v163;
  v30 = v165;
  *v165 = v34;
  *(v30 + 8) = v35 & 1;
  LOBYTE(v169) = 1;
  sub_100063124(&qword_1000FD4A0, &type metadata accessor for SMSMessage.FilterSubCategoryType);
  v36 = v167;
  sub_1000C5A54();
  v167 = v36;
  if (v36)
  {
    (*(v146 + 8))(v148, v33);
    v28 = 0;
    v29 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v155 = 0;
    v31 = v164;
    goto LABEL_15;
  }

  sub_100063004(v11, v30 + v166, &qword_1000FC5B0, &qword_1000C9EE0);
  LOBYTE(v169) = 2;
  v37 = v167;
  v38 = sub_1000C5A04();
  v31 = v164;
  if (v37)
  {
    v167 = v37;
    (*(v146 + 8))(v148, v33);
    v28 = 0;
    v29 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v155 = 0;
    goto LABEL_15;
  }

  v40 = (v30 + v164[6]);
  *v40 = v38;
  v40[1] = v39;
  v144 = v39;
  LOBYTE(v169) = 3;
  v41 = sub_1000C5A94();
  v42 = (v30 + v31[7]);
  *v42 = v41;
  v42[1] = v43;
  LOBYTE(v169) = 4;
  v44 = sub_1000C5A94();
  v167 = 0;
  v45 = (v30 + v31[8]);
  *v45 = v44;
  v45[1] = v46;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  v168 = 5;
  sub_100015FB4(&qword_1000FC3A8);
  v47 = v167;
  sub_1000C5A54();
  v167 = v47;
  if (v47)
  {
    (*(v146 + 8))(v148, v33);
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v155 = 0;
LABEL_14:
    v28 = 1;
    v29 = 1;
    goto LABEL_15;
  }

  v48 = v31[9];
  v155 = v169;
  *(v30 + v48) = v169;
  LOBYTE(v169) = 6;
  sub_100063124(&qword_1000FD4A8, &type metadata accessor for Date);
  v49 = v167;
  sub_1000C5A54();
  v167 = v49;
  if (v49)
  {
    v50 = v146;
LABEL_13:
    (*(v50 + 8))(v148, v33);
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    goto LABEL_14;
  }

  sub_100063004(v7, v30 + v32, &qword_1000FC5A8, &qword_1000CEA40);
  LOBYTE(v169) = 7;
  v51 = v167;
  v52 = sub_1000C5A04();
  v50 = v146;
  if (v51)
  {
    v167 = v51;
    goto LABEL_13;
  }

  v57 = (v30 + v31[11]);
  *v57 = v52;
  v57[1] = v53;
  v154 = v53;
  LOBYTE(v169) = 8;
  v58 = sub_1000C5A34();
  v167 = 0;
  v59 = v30 + v31[12];
  *v59 = v58;
  v59[8] = v60 & 1;
  LOBYTE(v169) = 9;
  v61 = v167;
  v62 = sub_1000C5A04();
  v162 = v63;
  v167 = v61;
  if (v61)
  {
    (*(v146 + 8))(v148, v147);
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
  }

  else
  {
    v64 = (v165 + v164[13]);
    v65 = v162;
    *v64 = v62;
    v64[1] = v65;
    LOBYTE(v169) = 10;
    v66 = v167;
    v67 = sub_1000C5A04();
    v161 = v68;
    v167 = v66;
    if (v66)
    {
      (*(v146 + 8))(v148, v147);
      v149 = 0;
      v150 = 0;
      v151 = 0;
      v152 = 0;
      v153 = 0;
      v157 = 0;
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v161 = 0;
    }

    else
    {
      v69 = (v165 + v164[14]);
      v70 = v161;
      *v69 = v67;
      v69[1] = v70;
      LOBYTE(v169) = 11;
      v71 = v167;
      v72 = sub_1000C5A04();
      v160 = v73;
      v167 = v71;
      if (v71)
      {
        (*(v146 + 8))(v148, v147);
        v149 = 0;
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v157 = 0;
        v158 = 0;
        v159 = 0;
        v160 = 0;
      }

      else
      {
        v74 = (v165 + v164[15]);
        v75 = v160;
        *v74 = v72;
        v74[1] = v75;
        LOBYTE(v169) = 12;
        v76 = v167;
        v77 = sub_1000C5A04();
        v159 = v78;
        v167 = v76;
        if (v76)
        {
          (*(v146 + 8))(v148, v147);
          v149 = 0;
          v150 = 0;
          v151 = 0;
          v152 = 0;
          v153 = 0;
          v157 = 0;
          v158 = 0;
          v159 = 0;
        }

        else
        {
          v79 = (v165 + v164[16]);
          v80 = v159;
          *v79 = v77;
          v79[1] = v80;
          LOBYTE(v169) = 13;
          v81 = v167;
          v82 = sub_1000C5A04();
          v158 = v83;
          v167 = v81;
          if (v81)
          {
            (*(v146 + 8))(v148, v147);
            v149 = 0;
            v150 = 0;
            v151 = 0;
            v152 = 0;
            v153 = 0;
            v157 = 0;
            v158 = 0;
          }

          else
          {
            v84 = (v165 + v164[17]);
            v85 = v158;
            *v84 = v82;
            v84[1] = v85;
            LOBYTE(v169) = 14;
            v86 = v167;
            v87 = sub_1000C5A04();
            v157 = v88;
            v167 = v86;
            if (v86)
            {
              (*(v146 + 8))(v148, v147);
              v149 = 0;
              v150 = 0;
              v151 = 0;
              v152 = 0;
              v153 = 0;
              v157 = 0;
            }

            else
            {
              v89 = (v165 + v164[18]);
              v90 = v157;
              *v89 = v87;
              v89[1] = v90;
              LOBYTE(v169) = 15;
              v91 = v167;
              v92 = sub_1000C5A34();
              v167 = v91;
              if (v91)
              {
                goto LABEL_34;
              }

              v94 = v165 + v164[19];
              *v94 = v92;
              v94[8] = v93 & 1;
              LOBYTE(v169) = 16;
              v95 = v167;
              v96 = sub_1000C5A04();
              v153 = v97;
              v167 = v95;
              if (v95)
              {
LABEL_34:
                (*(v146 + 8))(v148, v147);
                v149 = 0;
                v150 = 0;
                v151 = 0;
                v152 = 0;
                v153 = 0;
              }

              else
              {
                v98 = (v165 + v164[20]);
                v99 = v153;
                *v98 = v96;
                v98[1] = v99;
                LOBYTE(v169) = 17;
                v100 = v167;
                v101 = sub_1000C5A04();
                v152 = v102;
                v167 = v100;
                if (v100)
                {
                  (*(v146 + 8))(v148, v147);
                  v149 = 0;
                  v150 = 0;
                  v151 = 0;
                  v152 = 0;
                }

                else
                {
                  v103 = (v165 + v164[21]);
                  v104 = v152;
                  *v103 = v101;
                  v103[1] = v104;
                  LOBYTE(v169) = 18;
                  v105 = v167;
                  v106 = sub_1000C5A04();
                  v151 = v107;
                  v167 = v105;
                  if (v105)
                  {
                    (*(v146 + 8))(v148, v147);
                    v149 = 0;
                    v150 = 0;
                    v151 = 0;
                  }

                  else
                  {
                    v108 = (v165 + v164[22]);
                    v109 = v151;
                    *v108 = v106;
                    v108[1] = v109;
                    sub_1000124CC(&qword_1000FD3F0, qword_1000CD9E0);
                    v168 = 19;
                    sub_10006316C(&qword_1000FD4B0, sub_10006306C);
                    v110 = v167;
                    sub_1000C5A54();
                    v167 = v110;
                    if (v110)
                    {
                      (*(v146 + 8))(v148, v147);
                      v149 = 0;
                      v150 = 0;
                    }

                    else
                    {
                      v111 = v164[23];
                      v150 = v169;
                      *(v165 + v111) = v169;
                      LOBYTE(v169) = 20;
                      v112 = v167;
                      v113 = sub_1000C5A14();
                      v167 = v112;
                      if (v112)
                      {
                        goto LABEL_45;
                      }

                      *(v165 + v164[24]) = v113;
                      LOBYTE(v169) = 21;
                      v114 = v167;
                      v115 = sub_1000C5A14();
                      v167 = v114;
                      if (v114 || (*(v165 + v164[25]) = v115, LOBYTE(v169) = 22, v116 = v167, v117 = sub_1000C5A04(), v149 = v118, (v167 = v116) != 0))
                      {
LABEL_45:
                        (*(v146 + 8))(v148, v147);
                        v149 = 0;
                      }

                      else
                      {
                        v119 = (v165 + v164[26]);
                        v120 = v149;
                        *v119 = v117;
                        v119[1] = v120;
                        LOBYTE(v169) = 23;
                        v121 = v167;
                        v122 = sub_1000C5A84();
                        v167 = v121;
                        if (!v121)
                        {
                          v124 = v165 + v164[27];
                          *v124 = v122;
                          v124[8] = v123 & 1;
                          LOBYTE(v169) = 24;
                          v125 = v167;
                          v126 = sub_1000C5A04();
                          v167 = v125;
                          if (!v125)
                          {
                            v128 = (v165 + v164[28]);
                            *v128 = v126;
                            v128[1] = v127;
                            LOBYTE(v169) = 25;
                            v129 = v167;
                            v130 = sub_1000C5A04();
                            v167 = v129;
                            if (!v129)
                            {
                              v132 = (v165 + v164[29]);
                              *v132 = v130;
                              v132[1] = v131;
                              LOBYTE(v169) = 26;
                              v133 = v167;
                              v134 = sub_1000C5A04();
                              v167 = v133;
                              if (!v133)
                              {
                                v136 = (v165 + v164[30]);
                                *v136 = v134;
                                v136[1] = v135;
                                LOBYTE(v169) = 27;
                                v137 = v167;
                                v138 = sub_1000C5A04();
                                v167 = v137;
                                if (!v137)
                                {
                                  v140 = v138;
                                  v141 = v139;
                                  v142 = v165;
                                  v143 = (v165 + v164[31]);
                                  (*(v146 + 8))(v148, v147);
                                  *v143 = v140;
                                  v143[1] = v141;
                                  sub_1000630C0(v142, v145);
                                  sub_100015F68(v156);
                                  return sub_100022D10(v142);
                                }
                              }
                            }
                          }
                        }

                        (*(v146 + 8))(v148, v147);
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

  v28 = 1;
  v29 = 1;
  v31 = v164;
  v30 = v165;
  v32 = v163;
LABEL_15:
  sub_100015F68(v156);
  sub_100018F90(v30 + v166, &qword_1000FC5B0, &qword_1000C9EE0);

  if (v28)
  {
    v54 = *(v30 + v31[7] + 8);
  }

  if (v29)
  {
    v55 = *(v30 + v31[8] + 8);
  }

  sub_100018F90(v30 + v32, &qword_1000FC5A8, &qword_1000CEA40);
}

uint64_t sub_100062D88(char a1)
{
  result = 6517599;
  switch(a1)
  {
    case 1:
      result = 1668510559;
      break;
    case 2:
      result = 29283;
      break;
    case 3:
      result = 22131;
      break;
    case 4:
      result = 109;
      break;
    case 5:
      result = 25970;
      break;
    case 6:
      result = 119;
      break;
    case 7:
      result = 104;
      break;
    case 8:
      result = 25449;
      break;
    case 9:
      result = 99;
      break;
    case 10:
      result = 28515;
      break;
    case 11:
      result = 25955;
      break;
    case 12:
      result = 29539;
      break;
    case 13:
      result = 97;
      break;
    case 14:
      result = 98;
      break;
    case 15:
      result = 108;
      break;
    case 16:
      result = 110;
      break;
    case 17:
      result = 103;
      break;
    case 18:
      result = 26726;
      break;
    case 19:
      result = 107;
      break;
    case 20:
      result = 25453;
      break;
    case 21:
      result = 114;
      break;
    case 22:
      result = 7234918;
      break;
    case 23:
      result = 7299942;
      break;
    case 24:
      result = 1145664868;
      break;
    case 25:
      result = 7234659;
      break;
    case 26:
      result = 6907747;
      break;
    case 27:
      result = 1768383343;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100062FB0()
{
  result = qword_1000FD498;
  if (!qword_1000FD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD498);
  }

  return result;
}

uint64_t sub_100063004(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000124CC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_10006306C()
{
  result = qword_1000FD4B8;
  if (!qword_1000FD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD4B8);
  }

  return result;
}

uint64_t sub_1000630C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSDictionary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100063124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006316C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001308C(&qword_1000FD3F0, qword_1000CD9E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000631E4()
{
  result = qword_1000FD4E0;
  if (!qword_1000FD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD4E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SMSDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SMSDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100063388(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100062D88(*a1);
  v5 = v4;
  if (v3 == sub_100062D88(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_100063410()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_100062D88(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100063474()
{
  sub_100062D88(*v0);
  sub_1000C52C4();
}

Swift::Int sub_1000634C8()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_100062D88(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100063528@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100063740();
  *a2 = result;
  return result;
}

uint64_t sub_100063558@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100062D88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10006358C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100063740();
  *a1 = result;
  return result;
}

uint64_t sub_1000635C0(uint64_t a1)
{
  v2 = sub_100062FB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000635FC(uint64_t a1)
{
  v2 = sub_100062FB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10006363C()
{
  result = qword_1000FD4E8;
  if (!qword_1000FD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD4E8);
  }

  return result;
}

unint64_t sub_100063694()
{
  result = qword_1000FD4F0;
  if (!qword_1000FD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD4F0);
  }

  return result;
}

unint64_t sub_1000636EC()
{
  result = qword_1000FD4F8;
  if (!qword_1000FD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD4F8);
  }

  return result;
}

uint64_t sub_100063740()
{
  v0 = sub_1000C5C34();

  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

id sub_1000637EC@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v161 = a1;
  v150 = a2;
  v2 = sub_1000C15D4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1000C3B74();
  v136 = *(v137 - 8);
  v6 = *(v136 + 64);
  v7 = __chkstk_darwin(v137);
  v135 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v138 = v131 - v9;
  v143 = sub_1000C34A4();
  v142 = *(v143 - 8);
  v10 = *(v142 + 64);
  v11 = __chkstk_darwin(v143);
  v141 = v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v144 = v131 - v13;
  v14 = sub_1000124CC(&qword_1000FD508, &qword_1000CDC00);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v147 = v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v131 - v19;
  __chkstk_darwin(v18);
  v148 = v131 - v21;
  v22 = sub_1000C14E4();
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v134 = v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v140 = v131 - v27;
  v28 = __chkstk_darwin(v26);
  v146 = v131 - v29;
  __chkstk_darwin(v28);
  v156 = v131 - v30;
  v31 = sub_1000C2034();
  v153 = *(v31 - 8);
  v154 = v31;
  v32 = *(v153 + 64);
  v33 = __chkstk_darwin(v31);
  v152 = v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v155 = v131 - v35;
  v157 = sub_1000C46A4();
  v159 = *(v157 - 8);
  v36 = *(v159 + 64);
  v37 = __chkstk_darwin(v157);
  v149 = v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v133 = v131 - v40;
  v41 = __chkstk_darwin(v39);
  v139 = v131 - v42;
  v43 = __chkstk_darwin(v41);
  v145 = v131 - v44;
  v45 = __chkstk_darwin(v43);
  v151 = v131 - v46;
  __chkstk_darwin(v45);
  v158 = v131 - v47;
  v48 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48 - 8);
  v51 = v131 - v50;
  v52 = sub_1000C4FC4();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  __chkstk_darwin(v52);
  v56 = v131 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v57 = sub_1000C57A4();
  sub_1000C5554();
  sub_1000C1A44();

  v58 = objc_allocWithZone(SWCollaborationNoticeTransmissionMessage);
  isa = sub_1000C1544().super.isa;
  v60 = [v58 initWithData:isa];

  if (!v60)
  {
    sub_1000C4FB4();
    v76 = sub_1000C57A4();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1000C94D0;
    v161 = *(v53 + 16);
    v161(v51, v56, v52);
    (*(v53 + 56))(v51, 0, 1, v52);
    v78 = sub_1000C4A84();
    v80 = v79;
    sub_100018F90(v51, &qword_1000FC438, &unk_1000C9DC0);
    *(v77 + 56) = &type metadata for String;
    *(v77 + 64) = sub_100014FBC();
    *(v77 + 32) = v78;
    *(v77 + 40) = v80;
    sub_1000C5554();
    sub_1000C1A44();

    sub_100064C4C(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    v161(v81, v56, v52);
    swift_willThrow();
    return (*(v53 + 8))(v56, v52);
  }

  v132 = v20;
  v61 = v56;
  v62 = collaboratonNoticeEventTypeKnown([v60 highlightChangeEventType]);
  v161 = v60;
  if (!v62)
  {
    goto LABEL_9;
  }

  v131[1] = v5;
  result = [v60 highlightChangeEvent];
  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  v64 = result;
  v65 = sub_1000C1564();
  v67 = v66;

  v68 = sub_1000C1544().super.isa;
  sub_100018CD0(v65, v67);
  v69 = unarchiveCollaborationNoticeEvent(v68);

  if (!v69)
  {
LABEL_9:
    sub_1000C4FB4();
    v82 = sub_1000C57A4();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1000C94D0;
    v160 = *(v53 + 16);
    v160(v51, v61, v52);
    (*(v53 + 56))(v51, 0, 1, v52);
    v84 = sub_1000C4A84();
    v86 = v85;
    sub_100018F90(v51, &qword_1000FC438, &unk_1000C9DC0);
    *(v83 + 56) = &type metadata for String;
    *(v83 + 64) = sub_100014FBC();
    *(v83 + 32) = v84;
    *(v83 + 40) = v86;
    sub_1000C5554();
    sub_1000C1A44();

    sub_100064C4C(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    v160(v87, v61, v52);
    swift_willThrow();

    return (*(v53 + 8))(v61, v52);
  }

  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_10001D8C8(&v163, &v164);
  sub_10001D804(&v164, &v163);
  sub_10001D1A8(0, &qword_1000FD510, SWHighlightChangeEvent_ptr);
  if (swift_dynamicCast())
  {
    v70 = v165;
    [v165 changeEventTrigger];
    (*(v153 + 104))(v152, enum case for ChangeEvent.Trigger.invalid(_:), v154);
    sub_1000C2024();
    v71 = [v70 highlightURL];
    sub_1000C14A4();

    v72 = v151;
    v73 = v160;
    sub_1000C2014();
    v74 = v159;
    if (v73)
    {
      sub_100015F68(&v164);

      v75 = &v163;
      return sub_100015F68(v75);
    }

    v110 = v157;
    (*(v74 + 104))(v72, enum case for CollaborationHighlightEvent.change(_:), v157);
    (*(v74 + 32))(v158, v72, v110);
    v104 = v161;
    goto LABEL_31;
  }

  sub_10001D1A8(0, &qword_1000FD518, SWHighlightMentionEvent_ptr);
  v88 = swift_dynamicCast();
  v74 = v159;
  v89 = v160;
  if (v88)
  {
    v90 = v165;
    v91 = sub_1000C46C4();
    v92 = *(v91 - 8);
    v93 = *(v92 + 56);
    v94 = v148;
    v153 = v92 + 56;
    v93(v148, 1, 1, v91);
    v95 = [v90 __bdSWMentionedPersonIdentity];
    if (v95)
    {
      v96 = v95;
      v156 = v90;
      v97 = [v95 rootHash];
      v98 = sub_1000C1564();
      v154 = v99;
      v155 = v98;

      v100 = [v96 publicKeys];
      sub_1000C53A4();

      v101 = [v96 trackingPreventionSalt];
      if (v101)
      {
        v102 = v101;
        sub_1000C1564();
      }

      v115 = v132;
      v116 = v160;
      sub_1000C46B4();
      v89 = v116;
      if (v116)
      {

        v117 = sub_1000C57A4();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v118 = swift_allocObject();
        *(v118 + 16) = xmmword_1000C94D0;
        v162 = v116;
        sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
        v119 = sub_1000C4A84();
        v121 = v120;
        *(v118 + 56) = &type metadata for String;
        *(v118 + 64) = sub_100014FBC();
        *(v118 + 32) = v119;
        *(v118 + 40) = v121;
        sub_1000C5554();
        sub_1000C1A44();

        v89 = 0;
        v104 = v161;
        v94 = v148;
      }

      else
      {
        v94 = v148;
        sub_100018F90(v148, &qword_1000FD508, &qword_1000CDC00);

        v93(v115, 0, 1, v91);
        sub_100064D04(v115, v94);
        v104 = v161;
      }

      v90 = v156;
    }

    else
    {
      v104 = v161;
    }

    v122 = [v90 mentionedPersonHandle];
    sub_1000C5224();

    sub_100064C94(v94, v147);
    v123 = [v90 highlightURL];
    sub_1000C14A4();

    v124 = v145;
    sub_1000C2344();
    if (v89)
    {

      sub_100018F90(v94, &qword_1000FD508, &qword_1000CDC00);
      sub_100015F68(&v164);
      v75 = &v163;
      return sub_100015F68(v75);
    }

    sub_100018F90(v94, &qword_1000FD508, &qword_1000CDC00);

    v74 = v159;
    v125 = v157;
    (*(v159 + 104))(v124, enum case for CollaborationHighlightEvent.mention(_:), v157);
    (*(v74 + 32))(v158, v124, v125);
    goto LABEL_31;
  }

  sub_10001D1A8(0, &qword_1000FD520, SWHighlightMembershipEvent_ptr);
  v103 = swift_dynamicCast();
  v104 = v161;
  if (v103)
  {
    v105 = v165;
    [v165 membershipEventTrigger];
    (*(v142 + 104))(v141, enum case for MembershipEvent.Trigger.invalid(_:), v143);
    sub_1000C3494();
    v106 = [v105 highlightURL];
    sub_1000C14A4();

    v107 = v139;
    sub_1000C3484();
    v108 = v158;
    if (!v89)
    {

      v109 = v157;
      (*(v74 + 104))(v107, enum case for CollaborationHighlightEvent.membership(_:), v157);
      (*(v74 + 32))(v108, v107, v109);
      goto LABEL_31;
    }

LABEL_20:
    sub_100015F68(&v164);

    v75 = &v163;
    return sub_100015F68(v75);
  }

  sub_10001D1A8(0, &qword_1000FD528, SWHighlightPersistenceEvent_ptr);
  v111 = swift_dynamicCast();
  v112 = v158;
  if (v111)
  {
    v105 = v165;
    [v165 persistenceEventTrigger];
    (*(v136 + 104))(v135, enum case for PersistenceEvent.Trigger.invalid(_:), v137);
    sub_1000C3B64();
    v113 = [v105 highlightURL];
    sub_1000C14A4();

    v114 = v133;
    sub_1000C3B54();
    if (v89)
    {
      goto LABEL_20;
    }

    v130 = v157;
    (*(v74 + 104))(v114, enum case for CollaborationHighlightEvent.persistence(_:), v157);
    (*(v74 + 32))(v112, v114, v130);
  }

  else
  {
    (*(v74 + 104))(v158, enum case for CollaborationHighlightEvent.invalid(_:), v157);
  }

LABEL_31:
  sub_100015F68(&v163);
  v126 = [v104 version];
  result = [v104 guidString];
  if (result)
  {
    v127 = result;
    v160 = v126;
    sub_1000C5224();

    v128 = v157;
    v129 = v158;
    (*(v74 + 16))(v149, v158, v157);
    [v104 dateAsTimeIntervalSince1970];
    sub_1000C15B4();
    sub_1000C3F54();

    (*(v74 + 8))(v129, v128);
    v75 = &v164;
    return sub_100015F68(v75);
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100064C4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100064C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD508, &qword_1000CDC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD508, &qword_1000CDC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v6 = sub_1000124CC(&qword_1000FD538, &qword_1000CDC68);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26[-v8];
  v10 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26[-v12];
  v14 = sub_1000C4D84();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1000C4CC4();
  v32 = v19;
  v33 = &protocol witness table for File;
  v20 = sub_10002E5DC(v31);
  (*(*(v19 - 8) + 16))(v20, a1, v19);
  v21 = sub_1000C4D54();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_1000C4D64();
  sub_1000C4D74();
  sub_10001530C(v31, v32);
  v30 = a2;
  v27 = sub_10006560C;
  v28 = &v29;
  v22 = sub_1000C4104();
  sub_1000C2834();
  if (v3)
  {
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    v23 = v34;
    v24 = *(v22 - 8);
    if ((*(v24 + 48))(v9, 1, v22) == 1)
    {
      sub_100018F90(v9, &qword_1000FD538, &qword_1000CDC68);
      sub_100015F68(v31);
      sub_1000C4FC4();
      sub_100065644(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      return (*(v15 + 8))(v18, v14);
    }

    (*(v15 + 8))(v18, v14);
    (*(v24 + 32))(v23, v9, v22);
  }

  return sub_100015F68(v31);
}

uint64_t sub_100065210@<X0>(CGImageSource *a1@<X0>, uint64_t a2@<X8>)
{
  v15[3] = a2;
  v4 = sub_1000C3454();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C5574();
  if (v10 && (v11 = v9, v12 = v10, (sub_10009B58C(v9, v10) & 1) != 0))
  {
    sub_1000C5594();
    sub_1000C3444();
    (*(v5 + 8))(v8, v4);
    v13 = sub_1000C40E4();
    sub_100065CBC(a1, v11, v12, v13);
    if (v2)
    {
    }

    else
    {
      return sub_1000C40F4();
    }
  }

  else
  {
    sub_1000C4FC4();
    sub_100065644(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }
}

uint64_t sub_1000654D0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1000C4104();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a2(a1);
  if (!v3)
  {
    (*(v8 + 32))(a3, v11, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  return result;
}

uint64_t sub_100065644(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10006568C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    if ([v1 __swift_objectForKeyedSubscript:kCGImagePropertyGIFDictionary])
    {
      sub_1000C58C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v8 = 0u;
    }

    v13 = v3;
    v14 = v8;
    if (*(&v8 + 1))
    {
      sub_100065F90();
      if (swift_dynamicCast())
      {
        v2 = v15;
        if ([v15 __swift_objectForKeyedSubscript:kCGImagePropertyGIFUnclampedDelayTime])
        {
          sub_1000C58C4();
          swift_unknownObjectRelease();
        }

        else
        {
          v3 = 0u;
          v8 = 0u;
        }

        v13 = v3;
        v14 = v8;
        if (*(&v8 + 1))
        {
          if (swift_dynamicCast())
          {

            return;
          }
        }

        else
        {
          sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
        }

        if (![v2 __swift_objectForKeyedSubscript:{kCGImagePropertyGIFDelayTime, v3, v8, v13, v14}])
        {
          goto LABEL_62;
        }

LABEL_55:
        sub_1000C58C4();

        swift_unknownObjectRelease();
        goto LABEL_63;
      }
    }

    else
    {
      sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
    }

    if ([v1 __swift_objectForKeyedSubscript:{kCGImagePropertyPNGDictionary, v3, v8, v13, v14}])
    {
      sub_1000C58C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = 0u;
      v9 = 0u;
    }

    v13 = v4;
    v14 = v9;
    if (*(&v9 + 1))
    {
      sub_100065F90();
      if (swift_dynamicCast())
      {
        v2 = v15;
        if ([v15 __swift_objectForKeyedSubscript:kCGImagePropertyAPNGUnclampedDelayTime])
        {
          sub_1000C58C4();
          swift_unknownObjectRelease();
        }

        else
        {
          v4 = 0u;
          v9 = 0u;
        }

        v13 = v4;
        v14 = v9;
        if (*(&v9 + 1))
        {
          if (swift_dynamicCast())
          {
            goto LABEL_59;
          }
        }

        else
        {
          sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
        }

        if ([v2 __swift_objectForKeyedSubscript:{kCGImagePropertyAPNGDelayTime, v4, v9, v13, v14}])
        {
          goto LABEL_55;
        }

        goto LABEL_62;
      }
    }

    else
    {
      sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
    }

    if ([v1 __swift_objectForKeyedSubscript:{kCGImagePropertyHEICSDictionary, v4, v9, v13, v14}])
    {
      sub_1000C58C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v10 = 0u;
    }

    v13 = v5;
    v14 = v10;
    if (*(&v10 + 1))
    {
      sub_100065F90();
      if (swift_dynamicCast())
      {
        v2 = v15;
        if ([v15 __swift_objectForKeyedSubscript:kCGImagePropertyHEICSUnclampedDelayTime])
        {
          sub_1000C58C4();
          swift_unknownObjectRelease();
        }

        else
        {
          v5 = 0u;
          v10 = 0u;
        }

        v13 = v5;
        v14 = v10;
        if (*(&v10 + 1))
        {
          if (swift_dynamicCast())
          {
            goto LABEL_59;
          }
        }

        else
        {
          sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
        }

        if ([v2 __swift_objectForKeyedSubscript:{kCGImagePropertyHEICSDelayTime, v5, v10, v13, v14}])
        {
          goto LABEL_55;
        }

        goto LABEL_62;
      }
    }

    else
    {
      sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
    }

    if ([v1 __swift_objectForKeyedSubscript:{kCGImagePropertyWebPDictionary, v5, v10, v13, v14}])
    {
      sub_1000C58C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v11 = 0u;
    }

    v13 = v6;
    v14 = v11;
    if (!*(&v11 + 1))
    {

LABEL_65:
      sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
      return;
    }

    sub_100065F90();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v2 = v15;
    if ([v15 __swift_objectForKeyedSubscript:kCGImagePropertyWebPUnclampedDelayTime])
    {
      sub_1000C58C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v11 = 0u;
    }

    v13 = v6;
    v14 = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
LABEL_59:

        return;
      }
    }

    else
    {
      sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
    }

    if ([v2 __swift_objectForKeyedSubscript:{kCGImagePropertyWebPDelayTime, v6, v11, v13, v14}])
    {
      goto LABEL_55;
    }

LABEL_62:

    v7 = 0u;
    v12 = 0u;
LABEL_63:
    v13 = v7;
    v14 = v12;
    if (*(&v12 + 1))
    {
      swift_dynamicCast();
      return;
    }

    goto LABEL_65;
  }
}

char *sub_100065CBC(CGImageSource *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = sub_1000C5564();
  if (a2 == 0x682E63696C627570 && a3 == 0xEB00000000636965 || (sub_1000C5C04() & 1) != 0)
  {
    if (v11 >= a4)
    {
      v11 = a4;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (!v11)
      {
        return &_swiftEmptyArrayStorage;
      }

      v10 = sub_100045204(0, 1, 1, &_swiftEmptyArrayStorage);
      v12 = *(v10 + 2);
      do
      {
        v13 = *(v10 + 3);
        if (v12 >= v13 >> 1)
        {
          v10 = sub_100045204((v13 > 1), v12 + 1, 1, v10);
        }

        *(v10 + 2) = v12 + 1;
        *&v10[8 * v12++ + 32] = 0x3FB1111111111111;
        --v11;
      }

      while (v11);
      return v10;
    }

    __break(1u);
    goto LABEL_37;
  }

  v14 = 1.0;
  if (v11 > a4)
  {
    v14 = v11 / a4;
  }

  if (v11 < 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    v10 = sub_100045204(0, *(v10 + 2) + 1, 1, v10);
LABEL_31:
    v24 = *(v10 + 2);
    v23 = *(v10 + 3);
    if (v24 >= v23 >> 1)
    {
      v10 = sub_100045204((v23 > 1), v24 + 1, 1, v10);
    }

    *(v10 + 2) = v24 + 1;
    *&v10[8 * v24 + 32] = v5;
    return v10;
  }

  if (!v11)
  {
    v10 = &_swiftEmptyArrayStorage;
    v5 = 0.0;
LABEL_30:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  v15 = 0;
  v10 = &_swiftEmptyArrayStorage;
  v5 = 0.0;
  v16 = 0.0;
  while (1)
  {
    v17 = v14 + v16;
    if (v14 + v16 <= v15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100045204(0, *(v10 + 2) + 1, 1, v10);
      }

      v19 = *(v10 + 2);
      v18 = *(v10 + 3);
      if (v19 >= v18 >> 1)
      {
        v10 = sub_100045204((v18 > 1), v19 + 1, 1, v10);
      }

      *(v10 + 2) = v19 + 1;
      *&v10[8 * v19 + 32] = v5;
      v5 = 0.0;
    }

    else
    {
      v17 = v16;
    }

    v20 = CGImageSourceCopyPropertiesAtIndex(a1, v15, 0);
    sub_10006568C(v20);
    if (v4)
    {
      break;
    }

    v22 = v21;
    ++v15;

    v5 = v5 + v22;
    v16 = v17;
    if (v11 == v15)
    {
      goto LABEL_30;
    }
  }

  return v10;
}

unint64_t sub_100065F90()
{
  result = qword_1000FC478;
  if (!qword_1000FC478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FC478);
  }

  return result;
}

__n128 sub_100065FDC(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100066010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 154))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10006606C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 154) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 154) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000660F8()
{
  v1 = 7827565;
  v2 = *v0;
  v3 = 7828589;
  v4 = 115;
  if (v2 != 3)
  {
    v4 = 29811;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 6845549;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100066160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100066654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100066188(uint64_t a1)
{
  v2 = sub_100067468();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000661C4(uint64_t a1)
{
  v2 = sub_100067468();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100066200@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000667EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 10);
    *(a2 + 42) = *(v7 + 10);
  }

  return result;
}

uint64_t sub_100066264()
{
  *v0;
  *v0;
  *v0;
  sub_1000C52C4();
}

uint64_t sub_100066370@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100066AF0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000663A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64692D6D616461;
  v5 = 0xE600000000000000;
  v6 = 0x77736E656770;
  if (v2 != 5)
  {
    v6 = 0x637A736E656770;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (v2 != 3)
  {
    v8 = 0x68736E656770;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C737365636361;
  if (v2 != 1)
  {
    v10 = 0x692D656C646E7562;
    v9 = 0xE900000000000064;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100066474()
{
  v1 = *v0;
  v2 = 0x64692D6D616461;
  v3 = 0x77736E656770;
  if (v1 != 5)
  {
    v3 = 0x637A736E656770;
  }

  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0x68736E656770;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C737365636361;
  if (v1 != 1)
  {
    v5 = 0x692D656C646E7562;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100066544@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100066AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100066578(uint64_t a1)
{
  v2 = sub_10006702C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000665B4(uint64_t a1)
{
  v2 = sub_10006702C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000665F0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100066B3C(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    a2[6] = v9[6];
    a2[7] = v5;
    a2[8] = v10[0];
    *(a2 + 138) = *(v10 + 10);
    v6 = v9[3];
    a2[2] = v9[2];
    a2[3] = v6;
    v7 = v9[5];
    a2[4] = v9[4];
    a2[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
  }

  return result;
}

uint64_t sub_100066654(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827565 && a2 == 0xE300000000000000;
  if (v3 || (sub_1000C5C04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6845549 && a2 == 0xE300000000000000 || (sub_1000C5C04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7828589 && a2 == 0xE300000000000000 || (sub_1000C5C04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 115 && a2 == 0xE100000000000000 || (sub_1000C5C04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 29811 && a2 == 0xE200000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1000C5C04();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000667EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD570, &qword_1000CDE90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100067468();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v27 = 0;
  sub_1000674BC();
  sub_1000C5AC4();
  v21 = v25;
  v11 = v26;
  v27 = 1;
  sub_1000C5AC4();
  v28 = v11;
  v20 = v25;
  v12 = v26;
  v27 = 2;
  sub_1000C5AC4();
  v19 = v12;
  v18 = v25;
  LOBYTE(v12) = v26;
  v27 = 3;
  sub_1000C5AC4();
  v13 = v12;
  v14 = v25;
  HIDWORD(v17) = v26;
  LOBYTE(v25) = 4;
  v15 = sub_1000C5AA4();
  (*(v6 + 8))(v9, v5);
  v27 = v28;
  v24 = v19;
  v23 = v13;
  v22 = BYTE4(v17);
  result = sub_100015F68(a1);
  *a2 = v21;
  *(a2 + 8) = v27;
  *(a2 + 16) = v20;
  *(a2 + 24) = v24;
  *(a2 + 32) = v18;
  *(a2 + 40) = v23;
  *(a2 + 48) = v14;
  *(a2 + 56) = v22;
  *(a2 + 57) = v15 & 1;
  return result;
}

uint64_t sub_100066AF0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1C10;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100066B3C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD540, &qword_1000CDCF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v76 = a1;
  sub_10001530C(a1, v10);
  sub_10006702C();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(v76);
  }

  v12 = v6;
  v44 = a2;
  LOBYTE(v51) = 0;
  v13 = v5;
  v14 = sub_1000C5A44();
  v75 = v15 & 1;
  LOBYTE(v51) = 1;
  v16 = sub_1000C5A04();
  v43 = v17;
  LOBYTE(v51) = 2;
  v18 = sub_1000C5A04();
  v42 = v19;
  v20 = v18;
  LOBYTE(v51) = 3;
  *&v41 = sub_1000C5A04();
  *(&v41 + 1) = v21;
  LOBYTE(v51) = 4;
  v22 = sub_1000C5A24();
  v39 = v20;
  v40 = v22;
  v74 = v23 & 1;
  LOBYTE(v51) = 5;
  v38 = sub_1000C5A24();
  v73 = v24 & 1;
  v68 = 6;
  sub_100067080();
  sub_1000C5A54();
  (*(v12 + 8))(v9, v13);
  *&v72[7] = v69;
  *&v72[23] = v70;
  *&v72[39] = v71[0];
  *&v72[49] = *(v71 + 10);
  *(&v50[1] + 9) = *&v72[16];
  *(&v50[2] + 9) = *&v72[32];
  *(&v50[3] + 9) = *&v72[48];
  *&v45 = v14;
  v37 = v75;
  BYTE8(v45) = v75;
  v25 = v43;
  *&v46 = v16;
  *(&v46 + 1) = v43;
  v26 = v38;
  v27 = v39;
  *&v47 = v39;
  *(&v47 + 1) = v42;
  v28 = *(&v41 + 1);
  v48 = v41;
  *&v49 = v40;
  v36 = v74;
  BYTE8(v49) = v74;
  *&v50[0] = v38;
  v29 = v73;
  BYTE8(v50[0]) = v73;
  BYTE9(v50[4]) = BYTE9(v71[1]);
  *(v50 + 9) = *v72;
  sub_1000670D4(&v45, &v51);
  sub_100015F68(v76);
  v64 = *&v72[16];
  v65 = *&v72[32];
  v66 = *&v72[48];
  v51 = v14;
  v52 = v37;
  v53 = v16;
  v54 = v25;
  v55 = v27;
  v56 = v42;
  v57 = v41;
  v58 = v28;
  v59 = v40;
  v60 = v36;
  v61 = v26;
  v62 = v29;
  v67 = v72[64];
  v63 = *v72;
  result = sub_10006710C(&v51);
  v31 = v50[2];
  v32 = v44;
  v44[6] = v50[1];
  v32[7] = v31;
  v32[8] = v50[3];
  *(v32 + 138) = *(&v50[3] + 10);
  v33 = v48;
  v32[2] = v47;
  v32[3] = v33;
  v34 = v50[0];
  v32[4] = v49;
  v32[5] = v34;
  v35 = v46;
  *v32 = v45;
  v32[1] = v35;
  return result;
}

unint64_t sub_10006702C()
{
  result = qword_1000FD548;
  if (!qword_1000FD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD548);
  }

  return result;
}

unint64_t sub_100067080()
{
  result = qword_1000FD550;
  if (!qword_1000FD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD550);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributionInfoKeyedUnarchiverSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributionInfoKeyedUnarchiverSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10006728C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000672A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000672FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100067364()
{
  result = qword_1000FD558;
  if (!qword_1000FD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD558);
  }

  return result;
}

unint64_t sub_1000673BC()
{
  result = qword_1000FD560;
  if (!qword_1000FD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD560);
  }

  return result;
}

unint64_t sub_100067414()
{
  result = qword_1000FD568;
  if (!qword_1000FD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD568);
  }

  return result;
}

unint64_t sub_100067468()
{
  result = qword_1000FD578;
  if (!qword_1000FD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD578);
  }

  return result;
}

unint64_t sub_1000674BC()
{
  result = qword_1000FD580;
  if (!qword_1000FD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD580);
  }

  return result;
}

unint64_t sub_100067524()
{
  result = qword_1000FD588;
  if (!qword_1000FD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD588);
  }

  return result;
}

unint64_t sub_10006757C()
{
  result = qword_1000FD590;
  if (!qword_1000FD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD590);
  }

  return result;
}

unint64_t sub_1000675D4()
{
  result = qword_1000FD598;
  if (!qword_1000FD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD598);
  }

  return result;
}

uint64_t sub_100067680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_1000124CC(&qword_1000FD5A8, &qword_1000CDFF8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v29 - v14;
  v16 = sub_1000C4D84();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000C4CC4();
  v36 = v21;
  v37 = &protocol witness table for File;
  v22 = sub_10002E5DC(v35);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_1000C4D54();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_1000C4D64();
  sub_1000C4D74();
  sub_10001530C(v35, v36);
  v34 = a2;
  v31 = sub_1000683DC;
  v32 = &v33;
  v24 = sub_1000C3E14();
  v25 = v38;
  sub_1000C2834();
  if (v25)
  {
    (*(v17 + 8))(v20, v16);
    return sub_100015F68(v35);
  }

  else
  {
    v27 = v30;
    sub_100015F68(v35);
    sub_100068414(v11, v9);
    v28 = *(v24 - 8);
    if ((*(v28 + 48))(v9, 1, v24) == 1)
    {
      sub_100018F90(v9, &qword_1000FD5A8, &qword_1000CDFF8);
      sub_1000C4FC4();
      sub_100068484(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018F90(v11, &qword_1000FD5A8, &qword_1000CDFF8);
      return (*(v17 + 8))(v20, v16);
    }

    else
    {
      sub_100018F90(v11, &qword_1000FD5A8, &qword_1000CDFF8);
      (*(v17 + 8))(v20, v16);
      return (*(v28 + 32))(v27, v9, v24);
    }
  }
}

uint64_t sub_100067B14(CGImageSource *a1)
{
  v2 = CGImageSourceGetType(a1);
  if (!v2 || ((v3 = v2, v4 = sub_1000C5224(), v6 = v5, v3, v4 != 0x682E63696C627570) || v6 != 0xEB00000000636965) && (sub_1000C5C04() & 1) == 0 || (, Count = CGImageSourceGetCount(a1), sub_1000C3DF4() < Count))
  {
    sub_1000C4FC4();
    sub_100068484(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  if (Count >= 1)
  {
    v8 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
    if (v8)
    {
      v9 = v8;
      if ([(__CFDictionary *)v8 __swift_objectForKeyedSubscript:kCGImagePropertyTIFFDictionary])
      {
        sub_1000C58C4();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16 = v14;
      v17 = v15;
      if (*(&v15 + 1))
      {
        sub_100065F90();
        if (swift_dynamicCast())
        {
          if ([v13 __swift_objectForKeyedSubscript:kCGImagePropertyTIFFDocumentName])
          {
            sub_1000C58C4();
            swift_unknownObjectRelease();
          }

          else
          {
            v14 = 0u;
            v15 = 0u;
          }

          v16 = v14;
          v17 = v15;
          if (*(&v15 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
          }

          if ([v13 __swift_objectForKeyedSubscript:kCGImagePropertyTIFFImageDescription])
          {
            sub_1000C58C4();

            swift_unknownObjectRelease();
          }

          else
          {

            v14 = 0u;
            v15 = 0u;
          }

          v16 = v14;
          v17 = v15;
          if (*(&v15 + 1))
          {
            v11 = swift_dynamicCast();
            v12 = v13;
            if (!v11)
            {
              v12 = 0;
            }
          }

          else
          {
            sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
            v12 = 0;
          }

          v18 = v12;
          goto LABEL_34;
        }
      }

      else
      {
        sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
      }

      v18 = 0;
LABEL_34:
      if ([(__CFDictionary *)v9 __swift_objectForKeyedSubscript:kCGImagePropertyIPTCDictionary])
      {
        sub_1000C58C4();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16 = v14;
      v17 = v15;
      if (*(&v15 + 1))
      {
        sub_100065F90();
        if (swift_dynamicCast())
        {
          if ([v13 __swift_objectForKeyedSubscript:kCGImagePropertyIPTCCredit])
          {
            sub_1000C58C4();
            swift_unknownObjectRelease();
          }

          else
          {
            v14 = 0u;
            v15 = 0u;
          }

          v16 = v14;
          v17 = v15;
          if (*(&v15 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
          }

          if ([v13 __swift_objectForKeyedSubscript:kCGImagePropertyIPTCExtDigitalSourceType])
          {
            sub_1000C58C4();

            swift_unknownObjectRelease();
          }

          else
          {

            v14 = 0u;
            v15 = 0u;
          }

          v16 = v14;
          v17 = v15;
          if (*(&v15 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
          }
        }

        else
        {
        }
      }

      else
      {

        sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
      }
    }
  }

  return sub_1000C3E04();
}

uint64_t sub_1000682A0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1000C3E14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a2(a1);
  if (!v3)
  {
    (*(v8 + 32))(a3, v11, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  return result;
}

uint64_t sub_100068414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD5A8, &qword_1000CDFF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068484(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000684CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[56])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100068520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100068580(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000685A4(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD5D8, &qword_1000CE2F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100069FBC();
  sub_1000C5D04();
  v11 = *v3;
  LOBYTE(v17) = 0;
  sub_1000C5B94();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v17) = 1;
    sub_1000C5B04();
    v20 = *(v3 + 8);
    v17 = *(v3 + 8);
    v16 = 2;
    sub_100044D1C(&v20, v15);
    sub_100042EA0();
    sub_1000C5B44();
    sub_100018CBC(v17, *(&v17 + 1));
    v19 = *(v3 + 24);
    v17 = *(v3 + 24);
    v16 = 3;
    sub_100044D1C(&v19, v15);
    sub_1000C5B44();
    sub_100018CBC(v17, *(&v17 + 1));
    v17 = *(v3 + 40);
    v18 = v17;
    v16 = 4;
    sub_100044D1C(&v18, v15);
    sub_1000C5B44();
    sub_100018CBC(v17, *(&v17 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_100068820()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000688DC()
{
  *v0;
  *v0;
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_100068984()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100068A3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100069634(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100068A6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 114;
  v5 = 6581616;
  v6 = 6580578;
  if (v2 != 3)
  {
    v6 = 6581346;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 101;
    v3 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100068AE4()
{
  v1 = *v0;
  v2 = 114;
  v3 = 6581616;
  v4 = 6580578;
  if (v1 != 3)
  {
    v4 = 6581346;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 101;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100068B58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100069634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100068B80(uint64_t a1)
{
  v2 = sub_100069FBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068BBC(uint64_t a1)
{
  v2 = sub_100069FBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100068BF8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100069680(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100068C60(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD648, &qword_1000CE658);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10006A370();
  sub_1000C5D04();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_1000C5B84();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v20 = 1;
    sub_1000C5B24();
    v19 = v3[4];
    v18[15] = 2;
    sub_1000124CC(&qword_1000FD630, &qword_1000CE650);
    sub_10006A418(&qword_1000FD650, sub_10006A49C);
    sub_1000C5BB4();
    v16 = *(v3 + 40);
    v18[14] = 3;
    sub_1000C5B04();
    v17 = *(v3 + 41);
    v18[13] = 4;
    sub_1000C5B04();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100068ED0(void *a1)
{
  v2 = v1;
  v4 = sub_1000124CC(&qword_1000FD5E0, &qword_1000CE308);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-1] - v7;
  v9 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100069F14();
  sub_1000C5D04();
  v10 = v2[1];
  v12 = *v2;
  v13[0] = v10;
  *(v13 + 10) = *(v2 + 26);
  sub_10006A040();
  sub_1000C5BB4();
  return (*(v5 + 8))(v8, v4);
}

Swift::Int sub_100069030()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000690D8()
{
  *v0;
  *v0;
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_10006916C()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100069210@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100069A08(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100069240(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 115;
  v5 = 0xE100000000000000;
  v6 = 114;
  v7 = 0xE100000000000000;
  v8 = 102;
  if (v2 != 3)
  {
    v8 = 29539;
    v7 = 0xE200000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 101;
    v3 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000692A4()
{
  v1 = *v0;
  v2 = 115;
  v3 = 114;
  v4 = 102;
  if (v1 != 3)
  {
    v4 = 29539;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 101;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100069304@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100069A08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006932C(uint64_t a1)
{
  v2 = sub_10006A370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100069368(uint64_t a1)
{
  v2 = sub_10006A370();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000693A4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100069A54(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 10);
    *(a2 + 26) = *(v7 + 10);
  }

  return result;
}

Swift::Int sub_100069400()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

Swift::Int sub_100069454()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

uint64_t sub_100069498@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F1E08;
  v7._object = v3;
  v5 = sub_1000C59F4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100069508@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F1E40;
  v8._object = a2;
  v6 = sub_1000C59F4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100069560(uint64_t a1)
{
  v2 = sub_100069F14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006959C(uint64_t a1)
{
  v2 = sub_100069F14();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000695D8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100069D70(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 10);
    *(a2 + 26) = *(v7 + 10);
  }

  return result;
}

uint64_t sub_100069634(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1CD8;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100069680@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD5C8, &qword_1000CE2F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100069FBC();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(a1);
    sub_100018CBC(0, 0xF000000000000000);
    sub_100018CBC(0, 0xF000000000000000);
    return sub_100018CBC(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v33) = 0;
    v11 = sub_1000C5AA4();
    LOBYTE(v33) = 1;
    v12 = sub_1000C5A14();
    LOBYTE(v29) = 2;
    v28 = sub_100042DD4();
    sub_1000C5A54();
    v42 = v11;
    v27 = v6;
    v13 = v33;
    v14 = v34;
    sub_100018CBC(0, 0xF000000000000000);
    LOBYTE(v29) = 3;
    sub_1000C5A54();
    v25 = v12;
    v26 = a2;
    v16 = v33;
    v15 = v34;
    sub_100018CBC(0, 0xF000000000000000);
    v43 = 4;
    sub_1000C5A54();
    v17 = v42 & 1;
    LODWORD(v28) = v42 & 1;
    (*(v27 + 8))(v9, v5);
    v18 = v40;
    v19 = v41;
    sub_100018CBC(0, 0xF000000000000000);
    LOBYTE(v29) = v17;
    v20 = v25;
    BYTE1(v29) = v25;
    *(&v29 + 1) = v13;
    *&v30 = v14;
    *(&v30 + 1) = v16;
    *&v31 = v15;
    *(&v31 + 1) = v18;
    v32 = v19;
    sub_10001F9EC(&v29, &v33);
    sub_100015F68(a1);
    LOBYTE(v33) = v28;
    BYTE1(v33) = v20;
    v34 = v13;
    v35 = v14;
    v36 = v16;
    v37 = v15;
    v38 = v18;
    v39 = v19;
    result = sub_10006A010(&v33);
    v22 = v30;
    v23 = v26;
    *v26 = v29;
    v23[1] = v22;
    v23[2] = v31;
    *(v23 + 6) = v32;
  }

  return result;
}

uint64_t sub_100069A08(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1D70;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100069A54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD620, &qword_1000CE648);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10006A370();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v29 = 0;
  v11 = sub_1000C5A94();
  v13 = v12;
  v14 = v11;
  v28 = 1;
  v15 = sub_1000C5A34();
  v23 = v16;
  v22 = v15;
  sub_1000124CC(&qword_1000FD630, &qword_1000CE650);
  v27 = 2;
  sub_10006A418(&qword_1000FD638, sub_10006A3C4);
  sub_1000C5AC4();
  v21 = v24;
  v26 = 3;
  v20 = sub_1000C5A14();
  v25 = 4;
  v17 = sub_1000C5A14();
  (*(v6 + 8))(v9, v5);
  result = sub_100015F68(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23 & 1;
  *(a2 + 32) = v21;
  *(a2 + 40) = v20;
  *(a2 + 41) = v17;
  return result;
}

uint64_t sub_100069D70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD5B0, &qword_1000CE2E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100069F14();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  sub_100069F68();
  sub_1000C5AC4();
  (*(v6 + 8))(v9, v5);
  v16[0] = v16[1];
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  result = sub_100015F68(a1);
  *a2 = v16[0];
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_100069F14()
{
  result = qword_1000FD5B8;
  if (!qword_1000FD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5B8);
  }

  return result;
}

unint64_t sub_100069F68()
{
  result = qword_1000FD5C0;
  if (!qword_1000FD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5C0);
  }

  return result;
}

unint64_t sub_100069FBC()
{
  result = qword_1000FD5D0;
  if (!qword_1000FD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5D0);
  }

  return result;
}

unint64_t sub_10006A040()
{
  result = qword_1000FD5E8;
  if (!qword_1000FD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5E8);
  }

  return result;
}

uint64_t sub_10006A0B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_10006A104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006A164()
{
  result = qword_1000FD5F0;
  if (!qword_1000FD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5F0);
  }

  return result;
}

unint64_t sub_10006A1BC()
{
  result = qword_1000FD5F8;
  if (!qword_1000FD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5F8);
  }

  return result;
}

unint64_t sub_10006A214()
{
  result = qword_1000FD600;
  if (!qword_1000FD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD600);
  }

  return result;
}

unint64_t sub_10006A26C()
{
  result = qword_1000FD608;
  if (!qword_1000FD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD608);
  }

  return result;
}

unint64_t sub_10006A2C4()
{
  result = qword_1000FD610;
  if (!qword_1000FD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD610);
  }

  return result;
}

unint64_t sub_10006A31C()
{
  result = qword_1000FD618;
  if (!qword_1000FD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD618);
  }

  return result;
}

unint64_t sub_10006A370()
{
  result = qword_1000FD628;
  if (!qword_1000FD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD628);
  }

  return result;
}

unint64_t sub_10006A3C4()
{
  result = qword_1000FD640;
  if (!qword_1000FD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD640);
  }

  return result;
}

uint64_t sub_10006A418(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001308C(&qword_1000FD630, &qword_1000CE650);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006A49C()
{
  result = qword_1000FD658;
  if (!qword_1000FD658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD658);
  }

  return result;
}

unint64_t sub_10006A50C()
{
  result = qword_1000FD660;
  if (!qword_1000FD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD660);
  }

  return result;
}

unint64_t sub_10006A564()
{
  result = qword_1000FD668;
  if (!qword_1000FD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD668);
  }

  return result;
}

unint64_t sub_10006A5BC()
{
  result = qword_1000FD670;
  if (!qword_1000FD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD670);
  }

  return result;
}

unint64_t sub_10006A638()
{
  result = qword_1000FD678;
  if (!qword_1000FD678)
  {
    sub_1000C4494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD678);
  }

  return result;
}

void sub_10006A690(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1000C5514();
  sub_100014F70();
  v4 = sub_1000C56B4();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000C94D0;
  v13[0] = sub_1000C4434();
  v13[1] = v6;
  v7 = sub_1000C4A84();
  v9 = v8;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100014FBC();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_1000C1A54();

  v10 = objc_autoreleasePoolPush();
  sub_10006A7E0(a3, a1, a2, v13);
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_10006A7E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v46[0] = sub_1000C4434();
  v46[1] = v8;
  *&v44 = 58;
  *(&v44 + 1) = 0xE100000000000000;
  sub_100018D24();
  v9 = sub_1000C58B4();

  if (!v9[2])
  {

    v20 = sub_1000C5974();
    v21 = swift_allocError();
    v23 = v22;
    sub_1000124CC(&qword_1000FC400, &unk_1000C97C0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000C94D0;
    *(v24 + 56) = &type metadata for MessageDictionary.CodingKeys;
    *(v24 + 64) = sub_1000421CC();
    *(v24 + 32) = 22;
    sub_1000C5964();
    (*(*(v20 - 8) + 104))(v23, enum case for DecodingError.dataCorrupted(_:), v20);
    result = swift_willThrow();
LABEL_15:
    *a4 = v21;
    return result;
  }

  v10 = v9[4];
  v11 = v9[5];

  if (qword_1000FC068 != -1)
  {
    swift_once();
  }

  v49 = a4;
  v12 = qword_10010AD68;
  if (!*(qword_10010AD68 + 16))
  {

    goto LABEL_10;
  }

  v13 = sub_100099FF8(v10, v11);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_10:
    v26 = sub_1000C5974();
    v21 = swift_allocError();
    v28 = v27;
    sub_1000124CC(&qword_1000FC400, &unk_1000C97C0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000C94D0;
    *(v29 + 56) = &type metadata for MessageDictionary.CodingKeys;
    *(v29 + 64) = sub_1000421CC();
    *(v29 + 32) = 22;
    sub_1000C5964();
    (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.dataCorrupted(_:), v26);
    result = swift_willThrow();
    a4 = v49;
    goto LABEL_15;
  }

  sub_100018DA8(*(v12 + 56) + 40 * v13, &v44);
  sub_100018E0C(&v44, v46);
  v16 = objc_autoreleasePoolPush();
  v17 = sub_1000C1464();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_10006ADD8();
  sub_1000C1444();
  if (v4)
  {

    sub_100018C68(a2, a3);
    v43 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v30 = *(&v44 + 1);
    v31 = v45;
    v32 = &_swiftEmptyArrayStorage;
    if (v44)
    {
      v32 = v44;
    }

    v43 = v32;

    sub_100018C68(v30, v31);

    sub_100018C68(v30, v31);

    sub_100018CD0(v30, v31);
    a2 = sub_1000C1554();
    a3 = v33;

    sub_100018CD0(v30, v31);

    sub_100018CD0(v30, v31);
  }

  objc_autoreleasePoolPop(v16);
  sub_1000C5514();
  sub_100014F70();
  v34 = sub_1000C56B4();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000C94D0;
  sub_100018DA8(v46, &v44);
  sub_1000124CC(&qword_1000FC3D8, &unk_1000CE800);
  v36 = sub_1000C4A84();
  v38 = v37;
  sub_10006AE2C(&v44);
  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = sub_100014FBC();
  *(v35 + 32) = v36;
  *(v35 + 40) = v38;
  sub_1000C1A54();

  v39 = v47;
  v40 = v48;
  sub_10001530C(v46, v47);
  v41 = sub_1000C4434();
  (*(v40 + 8))(a2, a3, v43, v41, v42, v39, v40);

  sub_100018CD0(a2, a3);
  return sub_100015F68(v46);
}

unint64_t sub_10006ADD8()
{
  result = qword_1000FD680;
  if (!qword_1000FD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD680);
  }

  return result;
}

uint64_t sub_10006AE2C(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC3E0, &unk_1000C97A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006AEA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[2] = a3;
  v25[3] = a4;
  v25[1] = a5;
  v7 = sub_1000C3124();
  v25[0] = *(v7 - 8);
  v8 = *(v25[0] + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  v14 = sub_1000124CC(&qword_1000FD688, &unk_1000CE840);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v25 - v16;
  v18 = sub_1000C33D4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018C68(a1, a2);
  v23 = v26;
  result = sub_1000C33C4();
  if (!v23)
  {
    v26 = v7;
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_10006B1E8(v17);
      sub_100018C68(a1, a2);
      sub_1000C3114();
      (*(v25[0] + 104))(v11, enum case for EncodedAppData.EncodedContent.other(_:), v26);

      return sub_1000C3134();
    }

    else
    {
      (*(v19 + 32))(v22, v17, v18);
      (*(v19 + 16))(v13, v22, v18);
      (*(v25[0] + 104))(v13, enum case for EncodedAppData.EncodedContent.businessMessage(_:), v26);

      sub_1000C3134();
      return (*(v19 + 8))(v22, v18);
    }
  }

  return result;
}

uint64_t sub_10006B1E8(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FD688, &unk_1000CE840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B250()
{
  sub_1000124CC(&qword_1000FD690, &qword_1000CE878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CBF00;
  *(inited + 32) = sub_1000C4B34();
  *(inited + 40) = v1;
  *(inited + 72) = &type metadata for BusinessMessagesAppUnpacker;
  *(inited + 80) = &off_1000F5058;
  *(inited + 88) = sub_1000C4BA4();
  *(inited + 96) = v2;
  *(inited + 128) = &type metadata for GameCenterMessagesAppUnpacker;
  *(inited + 136) = &off_1000F5088;
  v3 = sub_10006B5A8(inited);
  swift_setDeallocating();
  sub_1000124CC(&qword_1000FD698, &unk_1000CE880);
  result = swift_arrayDestroy();
  qword_10010AD60 = v3;
  return result;
}

uint64_t sub_10006B328()
{
  sub_1000124CC(&qword_1000FD6A0, &qword_1000CE8A8);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000025;
  *(inited + 16) = xmmword_1000CBEF0;
  *(inited + 40) = 0x80000001000D5590;
  *(inited + 72) = &type metadata for LinkPresentationUnpacker;
  *(inited + 80) = &off_1000F3B10;
  *(inited + 88) = 0xD000000000000032;
  *(inited + 96) = 0x80000001000D7290;
  *(inited + 128) = &type metadata for MessagesAppBalloonUnpacker;
  *(inited + 136) = &off_1000F31F0;
  *(inited + 144) = 0xD000000000000029;
  *(inited + 152) = 0x80000001000D72D0;
  *(inited + 184) = &type metadata for HandwritingUnpacker;
  *(inited + 192) = &off_1000F5328;
  *(inited + 200) = 0xD000000000000025;
  *(inited + 208) = 0x80000001000D7300;
  *(inited + 240) = &type metadata for DigitalTouchBalloonUnpacker;
  *(inited + 248) = &off_1000F6390;
  v1 = sub_10006B474(inited);
  swift_setDeallocating();
  sub_1000124CC(&qword_1000FD6A8, &qword_1000CE8B0);
  result = swift_arrayDestroy();
  qword_10010AD68 = v1;
  return result;
}

unint64_t sub_10006B474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000124CC(&qword_1000FD6B0, &qword_1000CE8B8);
    v3 = sub_1000C59D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100018F28(v4, &v13, &qword_1000FD6A8, &qword_1000CE8B0);
      v5 = v13;
      v6 = v14;
      result = sub_100099FF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100018E0C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10006B5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000124CC(&qword_1000FD6C8, &unk_1000CE8E0);
    v3 = sub_1000C59D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100018F28(v4, &v13, &qword_1000FD698, &unk_1000CE880);
      v5 = v13;
      v6 = v14;
      result = sub_100099FF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100018E0C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_10006B6DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000124CC(&qword_1000FC540, &unk_1000CE8C0);
    v3 = sub_1000C59D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100018F28(v4, &v13, &qword_1000FC7A8, &qword_1000CADA8);
      v5 = v13;
      v6 = v14;
      result = sub_100099FF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001D8C8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10006B80C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000124CC(&qword_1000FD6B8, &unk_1000CE8D0);
    v3 = sub_1000C59D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100018F28(v4, &v11, &qword_1000FD6C0, &unk_1000CE990);
      v5 = v11;
      result = sub_10009A070(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001D8C8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10006B944(uint64_t a1, unint64_t a2)
{
  v5 = sub_1000C3124();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018C68(a1, a2);
  result = sub_1000C3114();
  if (!v2)
  {
    (*(v6 + 104))(v9, enum case for EncodedAppData.EncodedContent.other(_:), v5);

    return sub_1000C3134();
  }

  return result;
}

void sub_10006BAD8(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X8>)
{
  v80 = a2;
  v4 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v77 = &v69 - v6;
  v7 = sub_1000C4FC4();
  v79 = *(v7 - 8);
  v8 = v79[8];
  __chkstk_darwin(v7);
  v78 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000124CC(&qword_1000FD6D8, &unk_1000CE978);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = sub_1000C2C34();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  if ((sub_1000C2D54() & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1000C4CC4();
  type metadata accessor for CGImageSource(0);
  sub_1000C2834();
  if (v2)
  {
    sub_100018F90(v16, &qword_1000FD6D8, &unk_1000CE978);
    return;
  }

  v76 = v16;
  if (!v81)
  {
    v40 = v78;
    sub_1000C4FB4();
    sub_100014F70();
    v41 = sub_1000C5734();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1000C94D0;
    v43 = v79;
    v80 = v79[2];
    v44 = v77;
    v80(v77, v40, v7);
    (v43[7])(v44, 0, 1, v7);
    v45 = v7;
    v46 = sub_1000C4A84();
    v48 = v47;
    sub_100018F90(v44, &qword_1000FC438, &unk_1000C9DC0);
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_100014FBC();
    *(v42 + 32) = v46;
    *(v42 + 40) = v48;
    sub_1000C5554();
    sub_1000C1A44();

    sub_10006C9FC(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    v80(v49, v40, v45);
    swift_willThrow();
LABEL_18:
    (v43[1])(v40, v45);
    sub_100018F90(v76, &qword_1000FD6D8, &unk_1000CE978);
    return;
  }

  v75 = v81;
  sub_1000124CC(&qword_1000FD6E0, &qword_1000CE988);
  inited = swift_initStackObject();
  v73 = xmmword_1000C94D0;
  *(inited + 16) = xmmword_1000C94D0;
  *(inited + 32) = kCGImageSourceShouldCache;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = 0;
  v20 = kCGImageSourceShouldCache;
  sub_10006B80C(inited);
  v74 = v7;
  swift_setDeallocating();
  sub_100018F90(inited + 32, &qword_1000FD6C0, &unk_1000CE990);
  type metadata accessor for CFString(0);
  sub_10006C9FC(&qword_1000FC2F0, type metadata accessor for CFString);
  isa = sub_1000C5174().super.isa;
  v22 = v74;

  v23 = CGImageSourceCopyPropertiesAtIndex(v75, 0, isa);

  if (!v23)
  {
    goto LABEL_15;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_15;
  }

  v81 = 0;
  type metadata accessor for CFNumber(0);
  sub_1000C5184();

  v24 = v81;
  if (!v81)
  {
LABEL_15:
    v40 = v78;
    sub_1000C4FB4();
    sub_100014F70();
    v50 = sub_1000C5734();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v51 = swift_allocObject();
    *(v51 + 16) = v73;
    v43 = v79;
    v80 = v79[2];
    v52 = v77;
    v80(v77, v40, v22);
    (v43[7])(v52, 0, 1, v22);
    v53 = sub_1000C4A84();
    v45 = v22;
LABEL_16:
    v55 = v53;
    v56 = v54;
    sub_100018F90(v52, &qword_1000FC438, &unk_1000C9DC0);
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = sub_100014FBC();
    *(v51 + 32) = v55;
    *(v51 + 40) = v56;
    sub_1000C5554();
    sub_1000C1A44();

    sub_10006C9FC(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    v80(v57, v40, v45);
    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  v25 = sub_1000C5224();
  if (!*(v24 + 2))
  {

    goto LABEL_20;
  }

  v72 = sub_100099FF8(v25, v26);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_20:

    v40 = v78;
    sub_1000C4FB4();
    sub_100014F70();
    v50 = sub_1000C5734();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v51 = swift_allocObject();
    *(v51 + 16) = v73;
    v43 = v79;
    v80 = v79[2];
    v52 = v77;
    v45 = v74;
    v80(v77, v40, v74);
    (v43[7])(v52, 0, 1, v45);
    v53 = sub_1000C4A84();
    goto LABEL_16;
  }

  v29 = *(*(v24 + 7) + 8 * v72);
  v30 = sub_1000C5224();
  v32 = v31;
  v33 = *(v24 + 2);
  v72 = v29;
  if (!v33)
  {
    v58 = v29;

    goto LABEL_22;
  }

  v71 = v30;
  v70 = v29;
  v71 = sub_100099FF8(v71, v32);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_22:

    v40 = v78;
    sub_1000C4FB4();
    sub_100014F70();
    v59 = sub_1000C5734();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v60 = swift_allocObject();
    *(v60 + 16) = v73;
    v43 = v79;
    v80 = v79[2];
    v61 = v77;
    v45 = v74;
    v80(v77, v40, v74);
    (v43[7])(v61, 0, 1, v45);
    v62 = sub_1000C4A84();
    v64 = v63;
    sub_100018F90(v61, &qword_1000FC438, &unk_1000C9DC0);
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = sub_100014FBC();
    *(v60 + 32) = v62;
    *(v60 + 40) = v64;
    sub_1000C5554();
    sub_1000C1A44();

    sub_10006C9FC(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    v80(v65, v40, v45);
    swift_willThrow();

    goto LABEL_17;
  }

  v36 = *(*(v24 + 7) + 8 * v71);

  v37 = v70;
  v38 = sub_1000C54B4();
  v79 = v37;

  v39 = v36;
  sub_1000C54B4();
  v78 = v39;

  sub_1000C5014();
  v77 = v38;
  sub_1000C4FF4();
  sub_1000C2C24();

  v16 = v76;
  sub_100018F90(v76, &qword_1000FD6D8, &unk_1000CE978);
  v18(v14, 0, 1, v17);
  sub_10006CA44(v14, v16);
LABEL_23:
  sub_10006C970(v16, v14);
  v66 = v80;
  v67 = sub_1000C2C54();
  __chkstk_darwin(v67);
  *(&v69 - 2) = a1;
  *(&v69 - 1) = v66;
  sub_1000C4C94();
  sub_100018F90(v16, &qword_1000FD6D8, &unk_1000CE978);
  if (v2)
  {
    v68 = sub_1000C2E14();
    (*(*(v68 - 8) + 8))(v66, v68);
  }
}

void sub_10006C810()
{
  v0 = sub_1000C4CF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4CB4();
  sub_1000C4CD4();
  (*(v1 + 8))(v4, v0);
  v5 = objc_allocWithZone(PFMetadata);
  v6 = sub_1000C51F4();

  v7 = [v5 initForLimitedPropertiesWithPath:v6];

  if (v7)
  {
    sub_100025C6C(v7);
  }
}

uint64_t sub_10006C970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD6D8, &unk_1000CE978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10006C9E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10006C810();
}

uint64_t sub_10006C9FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006CA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD6D8, &unk_1000CE978);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CB0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C4E94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessageDictionary();
  v9 = (v1 + v8[53]);
  if ((v9[1] & 1) == 0)
  {
    v10 = v1 + v8[56];
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = v1 + v8[57];
      if ((*(v11 + 8) & 1) == 0)
      {
        v12 = *v9;
        v13 = *v11;
        v14 = *v10 >= 0x7FFFFFFFFFFFFFFFuLL ? 0x7FFFFFFFFFFFFFFFLL : *v10;
        v15 = v8;
        result = sub_1000C1324();
        if (v14 != result)
        {
          if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v13;
          }

          v18 = v14 + v17;
          if (__OFADD__(v14, v17))
          {
            __break(1u);
            return result;
          }

          v19 = (v1 + v15[54]);
          v20 = v19[1];
          if (v20)
          {
            v36 = *v19;
            v37 = v18;
            v21 = v15;

            sub_1000C4E74();
            v22 = (v1 + v15[55]);
            v24 = *v22;
            v23 = v22[1];
            v25 = (v1 + v21[58]);
            v27 = *v25;
            v26 = v25[1];
            (*(v4 + 32))(a1, v7, v3);
            v28 = _s14descr1000F0171O17AssociatedMessageVMa();
            v29 = (a1 + v28[5]);
            v30 = v37;
            *v29 = v36;
            v29[1] = v20;
            v31 = (a1 + v28[6]);
            *v31 = v24;
            v31[1] = v23;
            v32 = (a1 + v28[7]);
            *v32 = v14;
            v32[1] = v30;
            v33 = (a1 + v28[8]);
            *v33 = v27;
            v33[1] = v26;
            (*(*(v28 - 1) + 56))(a1, 0, 1, v28);
          }
        }
      }
    }
  }

  v34 = _s14descr1000F0171O17AssociatedMessageVMa();
  v35 = *(*(v34 - 8) + 56);

  return v35(a1, 1, 1, v34);
}

uint64_t sub_10006CD98@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v1355 = a3;
  v1388 = a1;
  v1389 = a2;
  v1350 = a4;
  v4 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v1354 = &v1194 - v6;
  v1368 = sub_1000C5974();
  v1381 = *(v1368 - 8);
  v7 = *(v1381 + 64);
  v8 = __chkstk_darwin(v1368);
  v1353 = &v1194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v1366 = &v1194 - v11;
  __chkstk_darwin(v10);
  v1365 = &v1194 - v12;
  v1218 = sub_1000C27A4();
  v1217 = *(v1218 - 8);
  v13 = *(v1217 + 64);
  __chkstk_darwin(v1218);
  v1219 = &v1194 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000124CC(&qword_1000FD6F0, &unk_1000CEA00);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v1221 = &v1194 - v17;
  v1224 = sub_1000C4144();
  v1223 = *(v1224 - 8);
  v18 = *(v1223 + 64);
  v19 = __chkstk_darwin(v1224);
  v1216 = &v1194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v1220 = &v1194 - v21;
  v22 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v1296 = &v1194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v1335 = &v1194 - v27;
  v28 = __chkstk_darwin(v26);
  v1297 = &v1194 - v29;
  v30 = __chkstk_darwin(v28);
  v1215 = &v1194 - v31;
  __chkstk_darwin(v30);
  v1226 = &v1194 - v32;
  v33 = sub_1000124CC(&qword_1000FD6F8, &qword_1000CEA10);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v1334 = &v1194 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v1301 = &v1194 - v38;
  __chkstk_darwin(v37);
  v1225 = &v1194 - v39;
  v1319 = sub_1000C27D4();
  v1320 = *(v1319 - 8);
  v40 = *(v1320 + 64);
  v41 = __chkstk_darwin(v1319);
  v1315 = &v1194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v1285 = &v1194 - v44;
  __chkstk_darwin(v43);
  v1222 = &v1194 - v45;
  v46 = sub_1000124CC(&qword_1000FD700, &qword_1000CEA18);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v1260 = &v1194 - v48;
  v1262 = sub_1000C3304();
  v1261 = *(v1262 - 8);
  v49 = *(v1261 + 64);
  v50 = __chkstk_darwin(v1262);
  v1242 = &v1194 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v1251 = &v1194 - v52;
  v53 = sub_1000124CC(&qword_1000FD708, &qword_1000CEA20);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v1264 = &v1194 - v55;
  v1266 = sub_1000C2284();
  v1265 = *(v1266 - 8);
  v56 = *(v1265 + 64);
  v57 = __chkstk_darwin(v1266);
  v1248 = &v1194 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v1255 = &v1194 - v59;
  v60 = sub_1000124CC(&qword_1000FD710, &qword_1000CEA28);
  v61 = *(*(v60 - 8) + 64);
  v62 = __chkstk_darwin(v60 - 8);
  v1214 = &v1194 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v1241 = &v1194 - v65;
  v66 = __chkstk_darwin(v64);
  v1247 = &v1194 - v67;
  __chkstk_darwin(v66);
  v1276 = &v1194 - v68;
  v1328 = sub_1000C4E94();
  v1327 = *(v1328 - 8);
  v69 = *(v1327 + 64);
  v70 = __chkstk_darwin(v1328);
  v1275 = &v1194 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v1326 = &v1194 - v72;
  v73 = sub_1000124CC(&qword_1000FD718, &unk_1000CEA30);
  v74 = *(*(v73 - 8) + 64);
  v75 = __chkstk_darwin(v73 - 8);
  v1293 = &v1194 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75);
  v1342 = &v1194 - v77;
  v1344 = _s14descr1000F0171O17AssociatedMessageVMa();
  v1343 = *(v1344 - 1);
  v78 = *(v1343 + 64);
  __chkstk_darwin(v1344);
  v1340 = &v1194 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v81 = *(*(v80 - 8) + 64);
  v82 = __chkstk_darwin(v80 - 8);
  v1295 = &v1194 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __chkstk_darwin(v82);
  v1240 = &v1194 - v85;
  v86 = __chkstk_darwin(v84);
  v1246 = &v1194 - v87;
  v88 = __chkstk_darwin(v86);
  v1274 = &v1194 - v89;
  __chkstk_darwin(v88);
  v1352 = &v1194 - v90;
  v1345 = sub_1000C4E14();
  v1346 = *(v1345 - 8);
  v91 = *(v1346 + 64);
  v92 = __chkstk_darwin(v1345);
  v1239 = &v1194 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v92);
  v1356 = &v1194 - v94;
  v95 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  v96 = *(*(v95 - 8) + 64);
  v97 = __chkstk_darwin(v95 - 8);
  v1361 = &v1194 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __chkstk_darwin(v97);
  v1245 = &v1194 - v100;
  v101 = __chkstk_darwin(v99);
  v1300 = &v1194 - v102;
  v103 = __chkstk_darwin(v101);
  v1273 = &v1194 - v104;
  v105 = __chkstk_darwin(v103);
  v1304 = &v1194 - v106;
  v107 = __chkstk_darwin(v105);
  v1318 = &v1194 - v108;
  v109 = __chkstk_darwin(v107);
  v1279 = &v1194 - v110;
  v111 = __chkstk_darwin(v109);
  v1213 = &v1194 - v112;
  v113 = __chkstk_darwin(v111);
  v1229 = &v1194 - v114;
  v115 = __chkstk_darwin(v113);
  v1232 = &v1194 - v116;
  v117 = __chkstk_darwin(v115);
  v1259 = &v1194 - v118;
  __chkstk_darwin(v117);
  v1331 = &v1194 - v119;
  v120 = sub_1000124CC(&qword_1000FD720, &qword_1000CEA48);
  v121 = *(*(v120 - 8) + 64);
  v122 = __chkstk_darwin(v120 - 8);
  v1360 = &v1194 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __chkstk_darwin(v122);
  v1244 = &v1194 - v125;
  v126 = __chkstk_darwin(v124);
  v1299 = &v1194 - v127;
  v128 = __chkstk_darwin(v126);
  v1272 = &v1194 - v129;
  v130 = __chkstk_darwin(v128);
  v1303 = &v1194 - v131;
  v132 = __chkstk_darwin(v130);
  v1317 = &v1194 - v133;
  v134 = __chkstk_darwin(v132);
  v1278 = &v1194 - v135;
  v136 = __chkstk_darwin(v134);
  v1212 = &v1194 - v137;
  v138 = __chkstk_darwin(v136);
  v1228 = &v1194 - v139;
  v140 = __chkstk_darwin(v138);
  v1231 = &v1194 - v141;
  v142 = __chkstk_darwin(v140);
  v1258 = &v1194 - v143;
  __chkstk_darwin(v142);
  v1330 = &v1194 - v144;
  v145 = sub_1000124CC(&qword_1000FD728, &qword_1000CEA50);
  v146 = *(*(v145 - 8) + 64);
  v147 = __chkstk_darwin(v145 - 8);
  v1359 = &v1194 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __chkstk_darwin(v147);
  v1243 = &v1194 - v150;
  v151 = __chkstk_darwin(v149);
  v1309 = &v1194 - v152;
  v153 = __chkstk_darwin(v151);
  v1271 = &v1194 - v154;
  v155 = __chkstk_darwin(v153);
  v1314 = &v1194 - v156;
  v157 = __chkstk_darwin(v155);
  v1325 = &v1194 - v158;
  v159 = __chkstk_darwin(v157);
  v1277 = &v1194 - v160;
  v161 = __chkstk_darwin(v159);
  v1211 = &v1194 - v162;
  v163 = __chkstk_darwin(v161);
  v1227 = &v1194 - v164;
  v165 = __chkstk_darwin(v163);
  v1230 = &v1194 - v166;
  v167 = __chkstk_darwin(v165);
  v1257 = &v1194 - v168;
  __chkstk_darwin(v167);
  v1339 = &v1194 - v169;
  v170 = sub_1000124CC(&qword_1000FD730, &qword_1000CEA58);
  v171 = *(*(v170 - 8) + 64);
  v172 = __chkstk_darwin(v170 - 8);
  v1358 = &v1194 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __chkstk_darwin(v172);
  v1254 = &v1194 - v175;
  v176 = __chkstk_darwin(v174);
  v1308 = &v1194 - v177;
  v178 = __chkstk_darwin(v176);
  v1284 = &v1194 - v179;
  v180 = __chkstk_darwin(v178);
  v1313 = &v1194 - v181;
  v182 = __chkstk_darwin(v180);
  v1333 = &v1194 - v183;
  v184 = __chkstk_darwin(v182);
  v1324 = &v1194 - v185;
  v186 = __chkstk_darwin(v184);
  v1289 = &v1194 - v187;
  v188 = __chkstk_darwin(v186);
  v1210 = &v1194 - v189;
  v190 = __chkstk_darwin(v188);
  v1290 = &v1194 - v191;
  v192 = __chkstk_darwin(v190);
  v1236 = &v1194 - v193;
  v194 = __chkstk_darwin(v192);
  v1238 = &v1194 - v195;
  v196 = __chkstk_darwin(v194);
  v1270 = &v1194 - v197;
  __chkstk_darwin(v196);
  v1338 = &v1194 - v198;
  v199 = sub_1000124CC(&qword_1000FD738, &qword_1000CEA60);
  v200 = *(*(v199 - 8) + 64);
  v201 = __chkstk_darwin(v199 - 8);
  v1371 = &v1194 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __chkstk_darwin(v201);
  v1256 = &v1194 - v204;
  __chkstk_darwin(v203);
  v1341 = &v1194 - v205;
  v1362 = sub_1000C21D4();
  v1363 = *(v1362 - 8);
  v206 = *(v1363 + 64);
  v207 = __chkstk_darwin(v1362);
  v1372 = &v1194 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = __chkstk_darwin(v207);
  v1267 = &v1194 - v210;
  v211 = __chkstk_darwin(v209);
  v1307 = &v1194 - v212;
  v213 = __chkstk_darwin(v211);
  v1292 = &v1194 - v214;
  v215 = __chkstk_darwin(v213);
  v1312 = &v1194 - v216;
  v217 = __chkstk_darwin(v215);
  v1323 = &v1194 - v218;
  v219 = __chkstk_darwin(v217);
  v1288 = &v1194 - v220;
  v221 = __chkstk_darwin(v219);
  v1209 = &v1194 - v222;
  v223 = __chkstk_darwin(v221);
  v1250 = &v1194 - v224;
  v225 = __chkstk_darwin(v223);
  v1252 = &v1194 - v226;
  v227 = __chkstk_darwin(v225);
  v1282 = &v1194 - v228;
  __chkstk_darwin(v227);
  v1347 = &v1194 - v229;
  v1349 = sub_1000C2214();
  v1348 = *(v1349 - 8);
  v230 = *(v1348 + 64);
  v231 = __chkstk_darwin(v1349);
  v1357 = &v1194 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = __chkstk_darwin(v231);
  v1249 = &v1194 - v234;
  v235 = __chkstk_darwin(v233);
  v1298 = &v1194 - v236;
  v237 = __chkstk_darwin(v235);
  v1280 = &v1194 - v238;
  v239 = __chkstk_darwin(v237);
  v1302 = &v1194 - v240;
  v241 = __chkstk_darwin(v239);
  v1332 = &v1194 - v242;
  v243 = __chkstk_darwin(v241);
  v1316 = &v1194 - v244;
  v245 = __chkstk_darwin(v243);
  v1281 = &v1194 - v246;
  v247 = __chkstk_darwin(v245);
  v1208 = &v1194 - v248;
  v249 = __chkstk_darwin(v247);
  v1291 = &v1194 - v250;
  v251 = __chkstk_darwin(v249);
  v1233 = &v1194 - v252;
  v253 = __chkstk_darwin(v251);
  v1234 = &v1194 - v254;
  v255 = __chkstk_darwin(v253);
  v1263 = &v1194 - v256;
  v257 = __chkstk_darwin(v255);
  v1329 = &v1194 - v258;
  __chkstk_darwin(v257);
  v1336 = &v1194 - v259;
  v260 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v261 = *(*(v260 - 8) + 64);
  v262 = __chkstk_darwin(v260 - 8);
  v1367 = &v1194 - ((v263 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = __chkstk_darwin(v262);
  v1253 = &v1194 - v265;
  v266 = __chkstk_darwin(v264);
  v1306 = &v1194 - v267;
  v268 = __chkstk_darwin(v266);
  v1283 = &v1194 - v269;
  v270 = __chkstk_darwin(v268);
  v1311 = &v1194 - v271;
  v272 = __chkstk_darwin(v270);
  v1322 = &v1194 - v273;
  v274 = __chkstk_darwin(v272);
  v1287 = &v1194 - v275;
  v276 = __chkstk_darwin(v274);
  v1207 = &v1194 - v277;
  v278 = __chkstk_darwin(v276);
  v1235 = &v1194 - v279;
  v280 = __chkstk_darwin(v278);
  v1237 = &v1194 - v281;
  v282 = __chkstk_darwin(v280);
  v1269 = &v1194 - v283;
  v284 = __chkstk_darwin(v282);
  v1337 = &v1194 - v285;
  __chkstk_darwin(v284);
  v1382 = &v1194 - v286;
  v1373 = type metadata accessor for MessageDictionary();
  v287 = *(*(v1373 - 1) + 64);
  v288 = __chkstk_darwin(v1373);
  v1351 = (&v1194 - ((v289 + 15) & 0xFFFFFFFFFFFFFFF0));
  v290 = __chkstk_darwin(v288);
  v1369 = &v1194 - v291;
  __chkstk_darwin(v290);
  v1364 = &v1194 - v292;
  v293 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v294 = *(*(v293 - 8) + 64);
  __chkstk_darwin(v293 - 8);
  v1374 = &v1194 - v295;
  v296 = sub_1000C1974();
  v1378 = *(v296 - 8);
  v1379 = v296;
  v297 = *(v1378 + 64);
  __chkstk_darwin(v296);
  v1377 = &v1194 - ((v298 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1375 = sub_1000C4FC4();
  v1380 = *(v1375 - 8);
  v299 = *(v1380 + 8);
  __chkstk_darwin(v1375);
  v1376 = &v1194 - ((v300 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_1000124CC(&qword_1000FD740, &qword_1000CEA68);
  v302 = *(*(v301 - 8) + 64);
  __chkstk_darwin(v301 - 8);
  v1383 = &v1194 - v303;
  v304 = sub_1000C4ED4();
  v1384 = *(v304 - 8);
  v1385 = v304;
  v305 = *(v1384 + 64);
  v306 = __chkstk_darwin(v304);
  v1370 = &v1194 - ((v307 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = __chkstk_darwin(v306);
  v1268 = &v1194 - v309;
  v310 = __chkstk_darwin(v308);
  v1305 = &v1194 - v311;
  v312 = __chkstk_darwin(v310);
  v1294 = &v1194 - v313;
  v314 = __chkstk_darwin(v312);
  v1310 = &v1194 - v315;
  v316 = __chkstk_darwin(v314);
  v1321 = &v1194 - v317;
  v318 = __chkstk_darwin(v316);
  v1286 = &v1194 - v319;
  v320 = __chkstk_darwin(v318);
  v1206 = &v1194 - v321;
  v322 = __chkstk_darwin(v320);
  v324 = &v1194 - v323;
  v325 = __chkstk_darwin(v322);
  v327 = &v1194 - v326;
  v328 = __chkstk_darwin(v325);
  v330 = &v1194 - v329;
  v331 = __chkstk_darwin(v328);
  v333 = &v1194 - v332;
  v334 = __chkstk_darwin(v331);
  v336 = &v1194 - v335;
  __chkstk_darwin(v334);
  v338 = &v1194 - v337;
  v339 = sub_1000C19B4();
  v1386 = *(v339 - 8);
  v340 = *(v1386 + 64);
  __chkstk_darwin(v339);
  v342 = &v1194 - ((v341 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = sub_1000C1464();
  v344 = *(v343 + 48);
  v345 = *(v343 + 52);
  swift_allocObject();
  v346 = sub_1000C1454();
  sub_1000778AC(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  v1387 = v342;
  v347 = v1390;
  sub_1000C1444();
  if (v347)
  {
  }

  v1388 = v333;
  v1204 = v330;
  v1202 = v324;
  v1203 = v327;
  v1390 = v346;
  v1205 = v338;
  v1389 = v339;
  v349 = v1387;
  sub_1000C1994();
  v1198 = 0;
  v350 = v1384;
  v351 = v1205;
  v352 = v349;
  v353 = v1385;
  (*(v1384 + 32))(v1205, v336, v1385);
  v354 = sub_100014F70();
  v355 = sub_1000C5714();
  v1201 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v356 = swift_allocObject();
  v1200 = xmmword_1000C94D0;
  *(v356 + 16) = xmmword_1000C94D0;
  v357 = *(v350 + 16);
  v358 = v1383;
  v1197 = v350 + 16;
  v1196 = v357;
  v357(v1383, v351, v353);
  (*(v350 + 56))(v358, 0, 1, v353);
  v359 = sub_1000C4A84();
  v361 = v360;
  sub_100018F90(v358, &qword_1000FD740, &qword_1000CEA68);
  *(v356 + 56) = &type metadata for String;
  v362 = sub_100014FBC();
  *(v356 + 64) = v362;
  *(v356 + 32) = v359;
  *(v356 + 40) = v361;
  sub_1000C5554();
  sub_1000C1A44();

  v363 = sub_1000C1984();
  v1383 = v364;
  v1199 = v362;
  if (v364 >> 60 != 15)
  {
    v385 = v363;
    v1371 = v354;
    isa = sub_1000C1544().super.isa;
    v387 = [(objc_class *)isa _imOptionallyDecompressData];

    v388 = sub_1000C1564();
    v390 = v389;

    v392 = v390 >> 62;
    v1372 = v388;
    v1195 = v385;
    if ((v390 >> 62) > 1)
    {
      v393 = v1380;
      v394 = v1381;
      v395 = v1378;
      v396 = v1379;
      v397 = v1377;
      if (v392 != 2)
      {
        goto LABEL_21;
      }

      v408 = *(v1372 + 16);
      v407 = *(v1372 + 24);
      v409 = __OFSUB__(v407, v408);
      v398 = v407 - v408;
      if (!v409)
      {
LABEL_17:
        if (v398 > 0)
        {
          sub_1000778AC(&qword_1000FD750, type metadata accessor for MessageDictionary);
          v410 = v1369;
          v411 = v1198;
          sub_1000C1444();
          if (v411)
          {
            v1391 = v411;
            swift_errorRetain();
            sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
            v412 = v1365;
            v413 = v1368;
            if (swift_dynamicCast())
            {

              v414 = v1366;
              (*(v394 + 32))(v1366, v412, v413);
              v416 = v1377;
              v415 = v1378;
              v417 = v1379;
              (*(v1378 + 104))(v1377, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v1379);
              sub_1000C1964();
              (*(v415 + 8))(v416, v417);
              v418 = *(v394 + 16);
              v418(v1353, v414, v413);
              sub_1000C4FA4();
              v1388 = sub_1000C5714();
              v419 = swift_allocObject();
              *(v419 + 16) = v1200;
              v420 = v1354;
              v418(v1354, v414, v413);
              (*(v394 + 56))(v420, 0, 1, v413);
              v421 = sub_1000C4A84();
              v423 = v422;
              sub_100018F90(v420, &qword_1000FC430, &unk_1000C9B00);
              v424 = v1199;
              *(v419 + 56) = &type metadata for String;
              *(v419 + 64) = v424;
              *(v419 + 32) = v421;
              *(v419 + 40) = v423;
              sub_1000C5554();
              v425 = v1388;
              sub_1000C1A44();

              v1388 = sub_1000C5714();
              v426 = swift_allocObject();
              *(v426 + 16) = v1200;
              v427 = v1380;
              v428 = *(v1380 + 2);
              v429 = v1374;
              v430 = v1375;
              v428(v1374, v1376, v1375);
              (*(v427 + 7))(v429, 0, 1, v430);
              v431 = sub_1000C4A84();
              v433 = v432;
              sub_100018F90(v429, &qword_1000FC438, &unk_1000C9DC0);
              v434 = v1199;
              *(v426 + 56) = &type metadata for String;
              *(v426 + 64) = v434;
              *(v426 + 32) = v431;
              *(v426 + 40) = v433;
              sub_1000C5554();
              v435 = v1388;
              sub_1000C1A44();

              sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion);
              swift_allocError();
              v436 = v1376;
              v428(v437, v1376, v430);
              swift_willThrow();
              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v390);
              (*(v427 + 1))(v436, v430);
              (*(v1381 + 8))(v1366, v1368);
              (*(v1384 + 8))(v1205, v1385);
              (*(v1386 + 8))(v1387, v1389);
            }

            v484 = sub_1000C5714();
            v485 = swift_allocObject();
            *(v485 + 16) = v1200;
            v1391 = v411;
            v486 = sub_1000C4A84();
            v487 = v1199;
            *(v485 + 56) = &type metadata for String;
            *(v485 + 64) = v487;
            *(v485 + 32) = v486;
            *(v485 + 40) = v488;
            sub_1000C5554();
            sub_1000C1A44();

            swift_getErrorValue();
            swift_getDynamicType();
            v1391 = 0;
            v1392 = 0xE000000000000000;
            sub_1000C5944(22);

            v1391 = 0xD000000000000014;
            v1392 = 0x80000001000D5330;
            v1393._countAndFlagsBits = sub_1000C5D34();
            sub_1000C52E4(v1393);

            sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            sub_100018CBC(v1195, v1383);

            sub_100018CD0(v1372, v390);

            goto LABEL_27;
          }

          v1381 = v390;
          v457 = v1364;
          sub_1000778F4(v410, v1364, type metadata accessor for MessageDictionary);
          v458 = sub_1000C5714();
          v459 = swift_allocObject();
          *(v459 + 16) = v1200;
          v460 = v1382;
          sub_1000C4EC4();
          v461 = sub_1000C1614();
          v462 = *(v461 - 8);
          v463 = *(v462 + 56);
          v1379 = (v462 + 56);
          v1380 = v463;
          (v463)(v460, 0, 1, v461);
          v464 = sub_1000C4A84();
          v466 = v465;
          sub_100018F90(v460, &qword_1000FC520, &qword_1000C9D20);
          v467 = v1199;
          *(v459 + 56) = &type metadata for String;
          *(v459 + 64) = v467;
          *(v459 + 32) = v464;
          *(v459 + 40) = v466;
          sub_1000C5554();
          sub_1000C1A44();

          v468 = *(v457 + 72);
          if (v468 != 2 && (v468 & 1) != 0)
          {
            v469 = sub_1000C5714();
            v470 = swift_allocObject();
            *(v470 + 16) = v1200;
            v471 = v461;
            v472 = v467;
            v473 = v1382;
            v474 = v1205;
            sub_1000C4EC4();
            (v1380)(v473, 0, 1, v471);
            v1378 = v471;
            v475 = sub_1000C4A84();
            v477 = v476;
            sub_100018F90(v473, &qword_1000FC520, &qword_1000C9D20);
            *(v470 + 56) = &type metadata for String;
            *(v470 + 64) = v472;
            *(v470 + 32) = v475;
            *(v470 + 40) = v477;
            sub_1000C5554();
            sub_1000C1A44();

            v1196(v1388, v474, v1385);
            sub_10001A380(v1341);
            v478 = v1373;
            v479 = (v457 + v1373[26]);
            v481 = *v479;
            v480 = v479[1];
            v482 = *v457;

            v483 = v1347;
            sub_1000C34F4();
            v1198 = 0;
            (*(v1363 + 104))(v483, enum case for TextMessage.MessageType.typingIndicator(_:), v1362);
            (v1380)(v1337, 1, 1, v1378);
            v528 = v478[32];
            v529 = (v457 + v478[31]);
            v530 = v529[1];
            v1382 = *v529;
            v531 = *(v457 + v528 + 8);
            v1379 = *(v457 + v528);
            v532 = (v457 + v478[33]);
            v533 = v532[1];
            v1377 = *v532;
            v534 = v478[24];
            v535 = (v457 + v478[23]);
            v536 = v535[1];
            v1375 = *v535;
            v537 = *(v457 + v534 + 8);
            v1371 = *(v457 + v534);
            v538 = v478[22];
            v539 = (v457 + v478[21]);
            v1369 = *v539;
            LODWORD(v1368) = *(v539 + 8);
            v540 = *(v457 + v538 + 8);
            v505 = v457;
            v1380 = v530;
            v1378 = v531;
            v1376 = v533;
            v1374 = v536;
            v1370 = v537;
            if (v540)
            {
              v541 = *(v457 + v538);

              v1367 = sub_1000931CC(v541, v540);
              LODWORD(v1359) = v542;
            }

            else
            {

              v1367 = 0;
              LODWORD(v1359) = 1;
            }

            v582 = v1339;
            v583 = (v457 + v478[25]);
            v1366 = *v583;
            LODWORD(v1365) = *(v583 + 8);
            v584 = v457 + v478[35];
            v1363 = *v584;
            LODWORD(v1362) = *(v584 + 8);
            sub_100028FA0(v1338);
            v585 = v478[48];
            v586 = (v457 + v478[47]);
            v587 = v586[1];
            v1361 = *v586;
            v1358 = v587;
            v588 = *(v457 + v585 + 8);
            v1360 = *(v505 + v585);
            v1356 = v588;
            v589 = v478[50];
            v590 = (v505 + v478[49]);
            v591 = v590[1];
            v1357 = *v590;
            v1352 = v591;
            v592 = *(v505 + v589 + 8);
            v1355 = *(v505 + v589);
            v1351 = v592;
            v593 = v478[52];
            LODWORD(v1354) = *(v505 + v478[51]);
            v594 = *(v505 + v593 + 8);
            v1353 = *(v505 + v593);

            sub_10008B5E0(v582);
            v595 = (v505 + v478[45]);
            v596 = v595[1];
            v1343 = *v595;
            LODWORD(v1346) = *(v505 + 97);
            LODWORD(v1345) = *(v505 + 98);
            LODWORD(v1344) = *(v505 + 99);
            v1342 = *(v505 + 104);
            LOBYTE(v582) = *(v505 + 112);
            v597 = v505 + v478[19];
            v598 = *v597;
            v599 = *(v597 + 8);

            sub_1000C21E4();
            sub_100018F28(v505 + v478[20], v1331, &qword_1000FC5A8, &qword_1000CEA40);
            v600 = *(v505 + v478[59]);
            LOBYTE(v592) = *(v505 + v478[60]);
            v601 = (v505 + v478[61]);
            v602 = *v601;
            v603 = v601[1];
            LODWORD(v1373) = v1359 & 1;

            v552 = v1329;
            v604 = v1198;
            sub_1000C2204();
            if (v604)
            {
              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v1381);
LABEL_94:
              (*(v1384 + 8))(v1205, v1385);
              (*(v1386 + 8))(v1387, v1389);
              goto LABEL_95;
            }

            sub_100018CBC(v1195, v1383);

            sub_100018CD0(v1372, v1381);
            goto LABEL_99;
          }

          v489 = v1351;
          sub_1000779BC(v457, v1351, type metadata accessor for MessageDictionary);
          v490 = v1352;
          sub_100018F28(v1355, v1352, &qword_1000FC3B8, &qword_1000C9788);
          v491 = v1356;
          Message.init(messageDictionary:validatorContext:)(v489, v490, v1356);
          v1378 = v461;
          v1198 = 0;
          v492 = *(v457 + 96);
          v493 = v1342;
          sub_10006CB0C(v1342);
          v494 = (*(v1343 + 48))(v493, 1, v1344);
          v495 = v1385;
          if (v494 == 1)
          {
            sub_100018F90(v493, &qword_1000FD718, &unk_1000CEA30);
            v497 = v1381;
            v496 = v1382;
LABEL_38:
            v543 = sub_10008ECDC();
            v544 = v1378;
            if (v543)
            {
              v545 = sub_1000C5714();
              v546 = swift_allocObject();
              *(v546 + 16) = v1200;
              v547 = v1205;
              sub_1000C4EC4();
              (v1380)(v496, 0, 1, v544);
              v548 = sub_1000C4A84();
              v550 = v549;
              sub_100018F90(v496, &qword_1000FC520, &qword_1000C9D20);
              *(v546 + 56) = &type metadata for String;
              *(v546 + 64) = v467;
              *(v546 + 32) = v548;
              *(v546 + 40) = v550;
              sub_1000C5554();
              sub_1000C1A44();

              v551 = v1333;
              v505 = v1364;
              sub_100028FA0(v1333);
              v552 = v1332;
              v553 = v1387;
              v554 = v1198;
              sub_10009B77C(v505, v1387, v491, v551, v1355, v1332);
              if (v554)
              {
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v497);
                sub_100018F90(v551, &qword_1000FD730, &qword_1000CEA58);
                (*(v1346 + 8))(v491, v1345);
                (*(v1384 + 8))(v547, v1385);
                (*(v1386 + 8))(v553, v1389);
LABEL_95:
                v562 = v505;
                return sub_10007795C(v562, type metadata accessor for MessageDictionary);
              }

              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v497);
              sub_100018F90(v551, &qword_1000FD730, &qword_1000CEA58);
              (*(v1346 + 8))(v491, v1345);
              v563 = v1385;
              v564 = v1386;
              v565 = v1389;
              v566 = v1384;
              v567 = v1350;
              v568 = v1349;
              v569 = v547;
              goto LABEL_100;
            }

            LODWORD(v1388) = v492;
            v555 = sub_1000C4DC4();
            v557 = v556;
            v558 = v1335;
            sub_1000C4E04();
            v559 = v1334;
            v560 = v1364;
            v561 = v1198;
            sub_100017908(v555, v557, v558, v1355, v1334);
            v1198 = v561;
            if (v561)
            {
              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v497);
              sub_100018F90(v558, &qword_1000FC3B0, &qword_1000C9780);
              (*(v1346 + 8))(v491, v1345);
              (*(v1384 + 8))(v1205, v1385);
              (*(v1386 + 8))(v1387, v1389);
              v562 = v560;
              return sub_10007795C(v562, type metadata accessor for MessageDictionary);
            }

            sub_100018F90(v558, &qword_1000FC3B0, &qword_1000C9780);

            v570 = v1320;
            v571 = v1319;
            if ((*(v1320 + 48))(v559, 1, v1319) == 1)
            {
              sub_100018F90(v559, &qword_1000FD6F8, &qword_1000CEA10);
              v572 = *(v1364 + 73);
              if (v572 != 2 && (v572 & 1) != 0)
              {
                v573 = sub_1000C5714();
                v574 = swift_allocObject();
                *(v574 + 16) = v1200;
                v575 = v1382;
                v576 = v1205;
                sub_1000C4EC4();
                (v1380)(v575, 0, 1, v544);
                v577 = sub_1000C4A84();
                v579 = v578;
                sub_100018F90(v575, &qword_1000FC520, &qword_1000C9D20);
                *(v574 + 56) = &type metadata for String;
                *(v574 + 64) = v467;
                *(v574 + 32) = v577;
                *(v574 + 40) = v579;
                sub_1000C5554();
                sub_1000C1A44();

                v1196(v1294, v576, v1385);
                sub_100018F28(v1355, v1295, &qword_1000FC3B8, &qword_1000C9788);
                sub_1000C4E04();
                sub_1000C4DE4();
                v581 = *(v1364 + 80);
                v580 = *(v1364 + 88);
                if (v580 >> 60 != 15)
                {
                  sub_1000124CC(&qword_1000FD758, &unk_1000CEA70);
                  v784 = swift_allocObject();
                  *(v784 + 16) = v1200;
                  *(v784 + 32) = v581;
                  *(v784 + 40) = v580;
                }

                sub_100018C54(v581, v580);
                v785 = v1198;
                sub_1000C2234();
                v1198 = v785;
                if (v785)
                {
                  sub_100018CBC(v1195, v1383);

                  sub_100018CD0(v1372, v1381);
                  v786 = *(v1384 + 8);
                  v787 = &v1326;
LABEL_109:
                  v788 = v1385;
                  v786(*(v787 - 32), v1385);
LABEL_166:
                  (*(v1346 + 8))(v1356, v1345);
                  v786(v1205, v788);
                  (*(v1386 + 8))(v1387, v1389);
                  v562 = v1364;
                  return sub_10007795C(v562, type metadata accessor for MessageDictionary);
                }

                (*(v1363 + 104))(v1292, enum case for TextMessage.MessageType.audioMessage(_:), v1362);
                v822 = v1373;
                v823 = v1364;
                sub_100018F28(v1364 + v1373[18], v1283, &qword_1000FC520, &qword_1000C9D20);
                v824 = v822[32];
                v825 = (v823 + v822[31]);
                v826 = *v825;
                v1382 = v825[1];
                v827 = *(v823 + v824 + 8);
                v1375 = *(v823 + v824);
                v1376 = v826;
                v1380 = v827;
                v828 = (v823 + v822[33]);
                v830 = *v828;
                v829 = v828[1];
                v1374 = v830;
                v1379 = v829;
                v831 = v822[24];
                v832 = (v823 + v822[23]);
                v834 = *v832;
                v833 = v832[1];
                v1371 = v834;
                v1378 = v833;
                v835 = *(v823 + v831 + 8);
                v1370 = *(v823 + v831);
                v1377 = v835;
                v836 = v822[22];
                v837 = (v823 + v822[21]);
                v1369 = *v837;
                LODWORD(v1368) = *(v837 + 8);
                v838 = *(v823 + v836 + 8);
                if (v838)
                {
                  v839 = *(v823 + v836);

                  v1367 = sub_1000931CC(v839, v838);
                  LODWORD(v1359) = v840;
                }

                else
                {

                  v1367 = 0;
                  LODWORD(v1359) = 1;
                }

                v941 = v1373;
                v942 = v1364;
                v943 = (v1364 + v1373[25]);
                v1366 = *v943;
                LODWORD(v1365) = *(v943 + 8);
                v944 = (v1364 + v1373[35]);
                v1363 = *v944;
                LODWORD(v1362) = *(v944 + 8);
                sub_100028FA0(v1284);
                v945 = v941[48];
                v946 = (v942 + v941[47]);
                v947 = v946[1];
                v1361 = *v946;
                v1357 = v947;
                v948 = *(v942 + v945 + 8);
                v1360 = *(v942 + v945);
                v1354 = v948;
                v949 = v941[50];
                v950 = (v942 + v941[49]);
                v951 = v950[1];
                v1358 = *v950;
                v1352 = v951;
                v952 = *(v942 + v949 + 8);
                v1355 = *(v942 + v949);
                v1344 = v952;
                v953 = v941[52];
                LODWORD(v1353) = *(v942 + v941[51]);
                v954 = *(v942 + v953 + 8);
                v1351 = *(v942 + v953);
                v1347 = v954;

                sub_10008B5E0(v1271);
                v955 = (v942 + v941[45]);
                v956 = v955[1];
                v1342 = *v955;
                LODWORD(v1343) = *(v942 + 97);
                v1341 = *(v942 + 104);
                LODWORD(v1340) = *(v942 + 112);
                v957 = v942 + v941[19];
                v958 = *v957;
                v959 = *(v957 + 8);

                sub_1000C21E4();
                sub_100018F28(v942 + v941[20], v1273, &qword_1000FC5A8, &qword_1000CEA40);
                v960 = *(v942 + v941[59]);
                LOBYTE(v948) = *(v942 + v941[60]);
                v961 = (v942 + v941[61]);
                v963 = *v961;
                v962 = v961[1];

                v964 = v1198;
                sub_1000C2204();
                if (v964)
                {
LABEL_150:
                  sub_100018CBC(v1195, v1383);

                  sub_100018CD0(v1372, v1381);
LABEL_158:
                  (*(v1346 + 8))(v1356, v1345);
                  (*(v1384 + 8))(v1205, v1385);
                  (*(v1386 + 8))(v1387, v1389);
                  goto LABEL_159;
                }

                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                (*(v1346 + 8))(v1356, v1345);
                v875 = &v1312;
                goto LABEL_183;
              }

              v674 = v1364;
              v675 = v1363;
              v676 = v1382;
              if (*(v1364 + 32) || *(v1364 + 48) || *(v1364 + 64))
              {
                v677 = sub_1000C5714();
                v678 = swift_allocObject();
                *(v678 + 16) = v1200;
                sub_1000C4EC4();
                (v1380)(v676, 0, 1, v544);
                v679 = sub_1000C4A84();
                v680 = v676;
                v681 = v679;
                v683 = v682;
                sub_100018F90(v680, &qword_1000FC520, &qword_1000C9D20);
                *(v678 + 56) = &type metadata for String;
                *(v678 + 64) = v467;
                *(v678 + 32) = v681;
                *(v678 + 40) = v683;
                sub_1000C5554();
                sub_1000C1A44();

                v1196(v1305, v1205, v1385);
                v684 = v1307;
                (*(v1346 + 16))(v1307, v1356, v1345);
                (*(v675 + 104))(v684, enum case for TextMessage.MessageType.textMessage(_:), v1362);
                v685 = v1373;
                sub_100018F28(v674 + v1373[18], v1306, &qword_1000FC520, &qword_1000C9D20);
                v686 = (v674 + v685[31]);
                v687 = *v686;
                v688 = v686[1];
                v689 = (v674 + v685[32]);
                v690 = *v689;
                v691 = v689[1];
                v692 = (v674 + v685[33]);
                v693 = *v692;
                v694 = v692[1];
                v695 = (v674 + v685[23]);
                v696 = *v695;
                v697 = v695[1];
                v698 = (v674 + v685[24]);
                v700 = *v698;
                v699 = v698[1];
                v701 = v674 + v685[21];
                v702 = *v701;
                v703 = v701[8];
                v704 = (v674 + v685[22]);
                v705 = v704[1];
                v505 = v674;
                v1382 = v687;
                v1379 = v690;
                v1380 = v688;
                v1377 = v693;
                v1378 = v691;
                v1375 = v696;
                v1376 = v694;
                v1374 = v697;
                v1371 = v700;
                v1370 = v699;
                v1369 = v702;
                LODWORD(v1368) = v703;
                if (v705)
                {
                  v706 = *v704;

                  v1367 = sub_1000931CC(v706, v705);
                  LODWORD(v1359) = v707;
                }

                else
                {

                  v1367 = 0;
                  LODWORD(v1359) = 1;
                }

                v754 = v1309;
                v755 = (v674 + v685[25]);
                v1366 = *v755;
                LODWORD(v1365) = *(v755 + 8);
                v756 = v674 + v685[35];
                v1363 = *v756;
                LODWORD(v1362) = v756[8];
                sub_100028FA0(v1308);
                v757 = v685[48];
                v758 = (v674 + v685[47]);
                v759 = v758[1];
                v1361 = *v758;
                v1358 = v759;
                v760 = *(v674 + v757 + 8);
                v1360 = *(v674 + v757);
                v1355 = v760;
                v761 = v685[50];
                v762 = (v674 + v685[49]);
                v763 = v762[1];
                v1357 = *v762;
                v1351 = v763;
                v764 = *(v674 + v761 + 8);
                v1354 = *(v674 + v761);
                v1347 = v764;
                v765 = v685[52];
                LODWORD(v1353) = *(v674 + v685[51]);
                v766 = v674 + v765;
                v767 = *(v674 + v765);
                v768 = *(v766 + 1);
                v1352 = v767;

                sub_10008B5E0(v754);
                v769 = (v505 + v685[45]);
                v770 = v769[1];
                v1341 = *v769;
                LODWORD(v1344) = *(v505 + 97);
                LODWORD(v1343) = *(v505 + 98);
                LODWORD(v1342) = *(v505 + 99);
                v1340 = *(v505 + 104);
                LOBYTE(v754) = *(v505 + 112);
                v771 = v505 + v685[19];
                v772 = *v771;
                v773 = *(v771 + 8);

                sub_1000C21E4();
                sub_100018F28(v505 + v685[20], v1300, &qword_1000FC5A8, &qword_1000CEA40);
                v774 = *(v505 + v685[59]);
                LOBYTE(v764) = *(v505 + v685[60]);
                v775 = (v505 + v685[61]);
                v776 = *v775;
                v777 = v775[1];
                LODWORD(v1373) = v1359 & 1;

                v552 = v1298;
                v778 = v1198;
                sub_1000C2204();
                if (v778)
                {
                  sub_100018CBC(v1195, v1383);

                  sub_100018CD0(v1372, v1381);
                  goto LABEL_93;
                }

                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
LABEL_98:
                (*(v1346 + 8))(v1356, v1345);
LABEL_99:
                v564 = v1386;
                v553 = v1387;
                v565 = v1389;
                v566 = v1384;
                v563 = v1385;
                v569 = v1205;
                v567 = v1350;
                v568 = v1349;
LABEL_100:
                v779 = v1348;
                v780 = v1336;
LABEL_101:
                (*(v566 + 8))(v569, v563);
                (*(v564 + 8))(v553, v565);
                sub_10007795C(v1364, type metadata accessor for MessageDictionary);
                v781 = *(v779 + 32);
                v781(v780, v552, v568);
                return (v781)(v567, v780, v568);
              }

              v876 = sub_1000C5714();
              v877 = swift_allocObject();
              *(v877 + 16) = v1200;
              v878 = v1205;
              sub_1000C4EC4();
              (v1380)(v676, 0, 1, v544);
              v879 = sub_1000C4A84();
              v880 = v676;
              v882 = v881;
              sub_100018F90(v880, &qword_1000FC520, &qword_1000C9D20);
              *(v877 + 56) = &type metadata for String;
              *(v877 + 64) = v467;
              *(v877 + 32) = v879;
              *(v877 + 40) = v882;
              sub_1000C5554();
              sub_1000C1A44();

              v1196(v1268, v878, v1385);
              sub_10001A380(v1256);
              v883 = (v674 + v1373[26]);
              v885 = *v883;
              v884 = v883[1];
              v886 = *v674;

              v887 = v1198;
              sub_1000C34F4();
              v1198 = v887;
              if (v887)
              {
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                v786 = *(v1384 + 8);
                v787 = &v1300;
                goto LABEL_109;
              }

              (*(v1363 + 104))(v1267, enum case for TextMessage.MessageType.typingIndicator(_:), v1362);
              (v1380)(v1253, 1, 1, v1378);
              v1000 = v1373[32];
              v1001 = (v1364 + v1373[31]);
              v1002 = *v1001;
              v1382 = v1001[1];
              v1003 = *(v1364 + v1000 + 8);
              v1375 = *(v1364 + v1000);
              v1376 = v1002;
              v1380 = v1003;
              v1004 = (v1364 + v1373[33]);
              v1006 = *v1004;
              v1005 = v1004[1];
              v1374 = v1006;
              v1379 = v1005;
              v1007 = v1373[24];
              v1008 = (v1364 + v1373[23]);
              v1010 = *v1008;
              v1009 = v1008[1];
              v1371 = v1010;
              v1378 = v1009;
              v1011 = *(v1364 + v1007 + 8);
              v1370 = *(v1364 + v1007);
              v1377 = v1011;
              v1012 = v1373[22];
              v1013 = (v1364 + v1373[21]);
              v1369 = *v1013;
              LODWORD(v1368) = *(v1013 + 8);
              v1014 = *(v1364 + v1012 + 8);
              if (v1014)
              {
                v1015 = *(v1364 + v1012);

                v1367 = sub_1000931CC(v1015, v1014);
                LODWORD(v1359) = v1016;
              }

              else
              {

                v1367 = 0;
                LODWORD(v1359) = 1;
              }

              v1046 = v1373;
              v1047 = v1364;
              v1048 = (v1364 + v1373[25]);
              v1366 = *v1048;
              LODWORD(v1365) = *(v1048 + 8);
              v1049 = (v1364 + v1373[35]);
              v1363 = *v1049;
              LODWORD(v1362) = *(v1049 + 8);
              sub_100028FA0(v1254);
              v1050 = v1046[48];
              v1051 = (v1047 + v1046[47]);
              v1052 = v1051[1];
              v1361 = *v1051;
              v1357 = v1052;
              v1053 = *(v1047 + v1050 + 8);
              v1360 = *(v1047 + v1050);
              v1355 = v1053;
              v1054 = v1046[50];
              v1055 = (v1047 + v1046[49]);
              v1056 = v1055[1];
              v1358 = *v1055;
              v1353 = v1056;
              v1057 = *(v1047 + v1054 + 8);
              v1354 = *(v1047 + v1054);
              v1347 = v1057;
              v1058 = v1046[52];
              LODWORD(v1352) = *(v1047 + v1046[51]);
              v1059 = *(v1047 + v1058 + 8);
              v1351 = *(v1047 + v1058);

              sub_10008B5E0(v1243);
              v1060 = (v1047 + v1046[45]);
              v1061 = v1060[1];
              v1343 = *v1060;
              LODWORD(v1344) = *(v1047 + 97);
              v1342 = *(v1047 + 104);
              v1062 = *(v1047 + 112);
              v1063 = v1047 + v1046[19];
              v1064 = *v1063;
              v1065 = *(v1063 + 8);

              sub_1000C21E4();
              sub_100018F28(v1047 + v1046[20], v1245, &qword_1000FC5A8, &qword_1000CEA40);
              v1066 = v1046[61];
              LOBYTE(v1064) = *(v1047 + v1046[60]);
              v1067 = *(v1047 + v1066 + 8);
              v1193 = *(v1047 + v1066);

              v1068 = v1198;
              sub_1000C2204();
              if (v1068)
              {
                goto LABEL_150;
              }

              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v1381);
              (*(v1346 + 8))(v1356, v1345);
              v875 = &v1281;
LABEL_183:
              v552 = *(v875 - 32);
              goto LABEL_99;
            }

            v621 = v1315;
            (*(v570 + 32))(v1315, v559, v571);
            LODWORD(v1377) = sub_1000C5514();
            v622 = sub_1000C5714();
            v623 = swift_allocObject();
            *(v623 + 16) = xmmword_1000CBF00;
            v1391 = sub_1000C27C4();
            v1392 = v624;
            v625 = sub_1000C4A84();
            v627 = v626;

            *(v623 + 56) = &type metadata for String;
            *(v623 + 64) = v467;
            *(v623 + 32) = v625;
            *(v623 + 40) = v627;
            v628 = v544;
            v629 = v467;
            v630 = v1382;
            sub_1000C4EC4();
            (v1380)(v630, 0, 1, v628);
            v631 = sub_1000C4A84();
            v633 = v632;
            sub_100018F90(v630, &qword_1000FC520, &qword_1000C9D20);
            *(v623 + 96) = &type metadata for String;
            *(v623 + 104) = v629;
            *(v623 + 72) = v631;
            *(v623 + 80) = v633;
            sub_1000C1A54();

            v1196(v1310, v1205, v1385);
            v634 = v1312;
            (*(v1320 + 16))(v1312, v621, v1319);
            (*(v1363 + 104))(v634, enum case for TextMessage.MessageType.balloonPlugin(_:), v1362);
            v505 = v1364;
            v635 = v1373;
            sub_100018F28(v1364 + v1373[18], v1311, &qword_1000FC520, &qword_1000C9D20);
            v636 = v635[32];
            v637 = (v505 + v635[31]);
            v638 = v637[1];
            v1382 = *v637;
            v639 = *(v505 + v636 + 8);
            v1379 = *(v505 + v636);
            v640 = (v505 + v635[33]);
            v641 = v640[1];
            v1377 = *v640;
            v642 = v635[24];
            v643 = (v505 + v635[23]);
            v644 = v643[1];
            v1375 = *v643;
            v645 = *(v505 + v642 + 8);
            v1371 = *(v505 + v642);
            v646 = v635[22];
            v647 = (v505 + v635[21]);
            v1369 = *v647;
            LODWORD(v1368) = *(v647 + 8);
            v648 = *(v505 + v646 + 8);
            v1380 = v638;
            v1378 = v639;
            v1376 = v641;
            v1374 = v644;
            v1370 = v645;
            if (v648)
            {
              v649 = *(v505 + v646);

              v1367 = sub_1000931CC(v649, v648);
              LODWORD(v1359) = v650;
            }

            else
            {

              v1367 = 0;
              LODWORD(v1359) = 1;
            }

            v715 = v1304;
            v716 = v1314;
            v717 = (v505 + v635[25]);
            v1366 = *v717;
            LODWORD(v1365) = *(v717 + 8);
            v718 = v505 + v635[35];
            v1363 = *v718;
            LODWORD(v1362) = *(v718 + 8);
            sub_100028FA0(v1313);
            v719 = v635[48];
            v720 = (v505 + v635[47]);
            v721 = v720[1];
            v1361 = *v720;
            v1357 = v721;
            v722 = *(v505 + v719 + 8);
            v1360 = *(v505 + v719);
            v1354 = v722;
            v723 = v635[50];
            v724 = (v505 + v635[49]);
            v725 = v724[1];
            v1358 = *v724;
            v1352 = v725;
            v726 = *(v505 + v723 + 8);
            v1355 = *(v505 + v723);
            v1347 = v726;
            v727 = v635[52];
            LODWORD(v1353) = *(v505 + v635[51]);
            v728 = *(v505 + v727 + 8);
            v1351 = *(v505 + v727);

            sub_10008B5E0(v716);
            v729 = (v505 + v635[45]);
            v730 = v729[1];
            v1343 = *v729;
            LODWORD(v1344) = *(v505 + 97);
            v1342 = *(v505 + 104);
            v731 = *(v505 + 112);
            v732 = v505 + v635[19];
            v733 = *v732;
            v734 = *(v732 + 8);

            sub_1000C21E4();
            sub_100018F28(v505 + v635[20], v715, &qword_1000FC5A8, &qword_1000CEA40);
            v735 = *(v505 + v635[59]);
            v736 = v635;
            v737 = *(v505 + v635[60]);
            v738 = (v505 + v736[61]);
            v740 = *v738;
            v739 = v738[1];
            LODWORD(v1373) = v1359 & 1;

            v552 = v1302;
            v741 = v1198;
            sub_1000C2204();
            if (!v741)
            {
              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v1381);
              (*(v1320 + 8))(v1315, v1319);
              goto LABEL_98;
            }

            sub_100018CBC(v1195, v1383);

            sub_100018CD0(v1372, v1381);
            (*(v1320 + 8))(v1315, v1319);
LABEL_93:
            (*(v1346 + 8))(v1356, v1345);
            goto LABEL_94;
          }

          v498 = v1340;
          sub_1000778F4(v493, v1340, _s14descr1000F0171O17AssociatedMessageVMa);
          v496 = v1382;
          if (!*v457)
          {
            sub_10007795C(v498, _s14descr1000F0171O17AssociatedMessageVMa);
            v491 = v1356;
            v497 = v1381;
            goto LABEL_38;
          }

          LODWORD(v1388) = v492;
          v499 = v1327;
          v396 = *(v1327 + 16);
          v500 = v1326;
          v501 = v1328;
          v396(v1326, v498, v1328);
          v391 = (*(v499 + 88))(v500, v501);
          v502 = v1381;
          if (v391 == enum case for TapBack.AssociatedMessageType.unspecified(_:))
          {
            v1196(v1321, v1205, v495);
            v503 = v1323;
            (*(v1346 + 16))(v1323, v1356, v1345);
            (*(v1363 + 104))(v503, enum case for TextMessage.MessageType.textMessage(_:), v1362);
            v504 = v1373;
            v505 = v1364;
            sub_100018F28(v1364 + v1373[18], v1322, &qword_1000FC520, &qword_1000C9D20);
            v506 = (v505 + v504[31]);
            v507 = *v506;
            v508 = v506[1];
            v509 = (v505 + v504[32]);
            v510 = *v509;
            v511 = v509[1];
            v512 = (v505 + v504[33]);
            v513 = *v512;
            v514 = v512[1];
            v515 = (v505 + v504[23]);
            v516 = *v515;
            v517 = v515[1];
            v518 = (v505 + v504[24]);
            v520 = *v518;
            v519 = v518[1];
            v521 = v505 + v504[21];
            v522 = *v521;
            v523 = *(v521 + 8);
            v524 = (v505 + v504[22]);
            v525 = v524[1];
            v1382 = v507;
            v1379 = v510;
            v1380 = v508;
            v1377 = v513;
            v1378 = v511;
            v1375 = v516;
            v1376 = v514;
            v1374 = v517;
            v1371 = v520;
            v1370 = v519;
            v1369 = v522;
            LODWORD(v1368) = v523;
            if (v525)
            {
              v526 = *v524;

              v1367 = sub_1000931CC(v526, v525);
              LODWORD(v1359) = v527;
            }

            else
            {

              v1367 = 0;
              LODWORD(v1359) = 1;
            }

            v651 = v1325;
            v652 = (v505 + v504[25]);
            v1366 = *v652;
            LODWORD(v1365) = *(v652 + 8);
            v653 = v505 + v504[35];
            v1363 = *v653;
            LODWORD(v1362) = *(v653 + 8);
            sub_100028FA0(v1324);
            v654 = v504[48];
            v655 = (v505 + v504[47]);
            v656 = v655[1];
            v1361 = *v655;
            v1358 = v656;
            v657 = *(v505 + v654 + 8);
            v1360 = *(v505 + v654);
            v1355 = v657;
            v658 = v504[50];
            v659 = (v505 + v504[49]);
            v660 = v659[1];
            v1357 = *v659;
            v1351 = v660;
            v661 = *(v505 + v658 + 8);
            v1354 = *(v505 + v658);
            v1347 = v661;
            v662 = v504[52];
            LODWORD(v1353) = *(v505 + v504[51]);
            v663 = *(v505 + v662 + 8);
            v1352 = *(v505 + v662);

            sub_10008B5E0(v651);
            v664 = (v505 + v504[45]);
            v665 = v664[1];
            v1341 = *v664;
            LODWORD(v1344) = *(v505 + 97);
            LODWORD(v1343) = *(v505 + 98);
            LODWORD(v1342) = *(v505 + 99);
            v1339 = *(v505 + 104);
            LOBYTE(v651) = *(v505 + 112);
            v666 = v505 + v504[19];
            v667 = *v666;
            v668 = *(v666 + 8);

            sub_1000C21E4();
            sub_100018F28(v505 + v504[20], v1318, &qword_1000FC5A8, &qword_1000CEA40);
            v669 = *(v505 + v504[59]);
            LOBYTE(v661) = *(v505 + v504[60]);
            v670 = (v505 + v504[61]);
            v671 = *v670;
            v672 = v670[1];
            LODWORD(v1373) = v1359 & 1;

            v552 = v1316;
            v673 = v1198;
            sub_1000C2204();
            if (!v673)
            {
              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v1381);
              sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
              goto LABEL_98;
            }

            sub_100018CBC(v1195, v1383);

            sub_100018CD0(v1372, v1381);
            sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
            goto LABEL_93;
          }

          if (v391 == enum case for TapBack.AssociatedMessageType.edit(_:))
          {
            v1391 = sub_1000C4E84();
            sub_1000C5BE4();
            sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            sub_100018CBC(v1195, v1383);

            sub_100018CD0(v1372, v502);
            sub_10007795C(v498, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1346 + 8))(v1356, v1345);
            (*(v1384 + 8))(v1205, v495);
LABEL_45:
            (*(v1386 + 8))(v1387, v1389);
            return sub_10007795C(v1364, type metadata accessor for MessageDictionary);
          }

          if (v391 == enum case for TapBack.AssociatedMessageType.breadcrumbUnconsumed(_:) || v391 == enum case for TapBack.AssociatedMessageType.breadcrumbConsumed(_:))
          {
            v708 = v1356;
            v709 = sub_1000C4DC4();
            v711 = v710;
            v712 = v1297;
            sub_1000C4E04();
            v713 = v1301;
            v714 = v1198;
            sub_100017908(v709, v711, v712, v1355, v1301);
            if (!v714)
            {
              v1198 = 0;
              sub_100018F90(v712, &qword_1000FC3B0, &qword_1000C9780);

              if ((*(v1320 + 48))(v713, 1, v1319) == 1)
              {
                sub_100018F90(v1301, &qword_1000FD6F8, &qword_1000CEA10);
                v782 = v1340;
                v1391 = sub_1000C4E84();
                sub_1000C5BE4();
                sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion);
                swift_allocError();
LABEL_104:
                sub_1000C4FB4();
                swift_willThrow();
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
LABEL_105:
                v783 = v782;
LABEL_145:
                sub_10007795C(v783, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1346 + 8))(v1356, v1345);
                (*(v1384 + 8))(v1205, v1385);
                goto LABEL_45;
              }

              v789 = v1285;
              (*(v1320 + 32))(v1285, v1301, v1319);
              LODWORD(v1377) = sub_1000C5514();
              v790 = sub_1000C5714();
              v791 = swift_allocObject();
              *(v791 + 16) = xmmword_1000CBF00;
              v1391 = sub_1000C27C4();
              v1392 = v792;
              v793 = sub_1000C4A84();
              v795 = v794;

              v796 = v1199;
              *(v791 + 56) = &type metadata for String;
              *(v791 + 64) = v796;
              *(v791 + 32) = v793;
              *(v791 + 40) = v795;
              v797 = v1382;
              v798 = v1205;
              sub_1000C4EC4();
              (v1380)(v797, 0, 1, v1378);
              v799 = sub_1000C4A84();
              v801 = v800;
              sub_100018F90(v797, &qword_1000FC520, &qword_1000C9D20);
              *(v791 + 96) = &type metadata for String;
              *(v791 + 104) = v796;
              *(v791 + 72) = v799;
              *(v791 + 80) = v801;
              sub_1000C1A54();

              v1196(v1286, v798, v1385);
              v802 = v1288;
              (*(v1320 + 16))(v1288, v789, v1319);
              (*(v1363 + 104))(v802, enum case for TextMessage.MessageType.balloonPlugin(_:), v1362);
              v803 = v1373;
              v804 = v1364;
              sub_100018F28(v1364 + v1373[18], v1287, &qword_1000FC520, &qword_1000C9D20);
              v805 = v803[32];
              v806 = (v804 + v803[31]);
              v807 = *v806;
              v1382 = v806[1];
              v808 = *(v804 + v805 + 8);
              v1375 = *(v804 + v805);
              v1376 = v807;
              v1380 = v808;
              v809 = (v804 + v803[33]);
              v811 = *v809;
              v810 = v809[1];
              v1374 = v811;
              v1379 = v810;
              v812 = v803[24];
              v813 = (v804 + v803[23]);
              v815 = *v813;
              v814 = v813[1];
              v1371 = v815;
              v1378 = v814;
              v816 = *(v804 + v812 + 8);
              v1370 = *(v804 + v812);
              v1377 = v816;
              v817 = v803[22];
              v818 = (v804 + v803[21]);
              v1369 = *v818;
              LODWORD(v1368) = *(v818 + 8);
              v819 = *(v804 + v817 + 8);
              if (v819)
              {
                v820 = *(v804 + v817);

                v1341 = sub_1000931CC(v820, v819);
                LODWORD(v1339) = v821;
              }

              else
              {

                v1341 = 0;
                LODWORD(v1339) = 1;
              }

              v849 = v1373;
              v850 = v1364;
              v851 = (v1364 + v1373[25]);
              v1367 = *v851;
              LODWORD(v1366) = *(v851 + 8);
              v852 = (v1364 + v1373[35]);
              v1365 = *v852;
              LODWORD(v1363) = *(v852 + 8);
              sub_100028FA0(v1289);
              v853 = v849[48];
              v854 = (v850 + v849[47]);
              v855 = v854[1];
              v1362 = *v854;
              v1359 = v855;
              v856 = *(v850 + v853 + 8);
              v1361 = *(v850 + v853);
              v1357 = v856;
              v857 = v849[50];
              v858 = (v850 + v849[49]);
              v859 = v858[1];
              v1360 = *v858;
              v1354 = v859;
              v860 = *(v850 + v857 + 8);
              v1358 = *(v850 + v857);
              v1351 = v860;
              v861 = v849[52];
              LODWORD(v1355) = *(v850 + v849[51]);
              v862 = *(v850 + v861 + 8);
              v1353 = *(v850 + v861);
              v1352 = v862;

              sub_10008B5E0(v1277);
              v863 = (v850 + v849[45]);
              v864 = v863[1];
              v1344 = *v863;
              LODWORD(v1347) = *(v850 + 97);
              v1343 = *(v850 + 104);
              LODWORD(v1342) = *(v850 + 112);
              v865 = v850 + v849[19];
              v866 = *v865;
              v867 = *(v865 + 8);

              sub_1000C21E4();
              sub_100018F28(v850 + v849[20], v1279, &qword_1000FC5A8, &qword_1000CEA40);
              v868 = *(v850 + v849[59]);
              LOBYTE(v856) = *(v850 + v849[60]);
              v869 = (v850 + v849[61]);
              v871 = *v869;
              v870 = v869[1];

              v872 = v1198;
              sub_1000C2204();
              if (!v872)
              {
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                (*(v1320 + 8))(v1285, v1319);
                sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1346 + 8))(v1356, v1345);
                v875 = &v1313;
                goto LABEL_183;
              }

              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v1381);
              v873 = *(v1320 + 8);
              v874 = &v1317;
LABEL_123:
              v873(*(v874 - 32), v1319);
              goto LABEL_157;
            }

            sub_100018CBC(v1195, v1383);

            sub_100018CD0(v1372, v502);
            sub_100018F90(v712, &qword_1000FC3B0, &qword_1000C9780);
            sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1346 + 8))(v708, v1345);
LABEL_74:
            (*(v1384 + 8))(v1205, v1385);
            (*(v1386 + 8))(v1387, v1389);
            return sub_10007795C(v1364, type metadata accessor for MessageDictionary);
          }

          if (v391 == enum case for TapBack.AssociatedMessageType.sticker(_:))
          {
            v605 = v1381;
            v606 = sub_1000C5714();
            v607 = swift_allocObject();
            *(v607 + 16) = xmmword_1000CBF00;
            v608 = v1340;
            v609 = v1293;
            sub_1000779BC(v1340, v1293, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1343 + 56))(v609, 0, 1, v1344);
            v610 = sub_1000C4A84();
            v612 = v611;
            sub_100018F90(v609, &qword_1000FD718, &unk_1000CEA30);
            *(v607 + 56) = &type metadata for String;
            *(v607 + 64) = v467;
            *(v607 + 32) = v610;
            *(v607 + 40) = v612;
            v613 = v1382;
            sub_1000C4EC4();
            (v1380)(v613, 0, 1, v1378);
            v614 = sub_1000C4A84();
            v616 = v615;
            sub_100018F90(v613, &qword_1000FC520, &qword_1000C9D20);
            *(v607 + 96) = &type metadata for String;
            *(v607 + 104) = v467;
            *(v607 + 72) = v614;
            *(v607 + 80) = v616;
            sub_1000C5554();
            sub_1000C1A44();

            v617 = v1290;
            v618 = v1364;
            sub_100028FA0(v1290);
            v553 = v1387;
            v619 = v1356;
            v620 = v1198;
            sub_10009B77C(v618, v1387, v1356, v617, v1355, v1291);
            if (!v620)
            {
              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v605);
              sub_100018F90(v617, &qword_1000FD730, &qword_1000CEA58);
              sub_10007795C(v608, _s14descr1000F0171O17AssociatedMessageVMa);
              (*(v1346 + 8))(v619, v1345);
              v552 = v1291;
              v563 = v1385;
              v564 = v1386;
              v565 = v1389;
              v566 = v1384;
              v567 = v1350;
              v568 = v1349;
              v779 = v1348;
              v780 = v1336;
              v569 = v1205;
              goto LABEL_101;
            }

            sub_100018CBC(v1195, v1383);

            sub_100018CD0(v1372, v605);
            sub_100018F90(v617, &qword_1000FD730, &qword_1000CEA58);
            sub_10007795C(v608, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1346 + 8))(v619, v1345);
            (*(v1384 + 8))(v1205, v1385);
            (*(v1386 + 8))(v553, v1389);
LABEL_159:
            v562 = v1364;
            return sub_10007795C(v562, type metadata accessor for MessageDictionary);
          }

          if (v391 == enum case for TapBack.AssociatedMessageType.tapbackHeart(_:) || v391 == enum case for TapBack.AssociatedMessageType.tapbackThumbsUp(_:) || v391 == enum case for TapBack.AssociatedMessageType.tapbackThumbsDown(_:) || v391 == enum case for TapBack.AssociatedMessageType.tapbackHa(_:) || v391 == enum case for TapBack.AssociatedMessageType.tapbackExclamation(_:) || v391 == enum case for TapBack.AssociatedMessageType.tapbackQuestionMark(_:))
          {
LABEL_140:

            v1377 = sub_1000C5714();
            v902 = swift_allocObject();
            *(v902 + 16) = xmmword_1000CBF00;
            v903 = v1293;
            sub_1000779BC(v1340, v1293, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1343 + 56))(v903, 0, 1, v1344);
            v904 = sub_1000C4A84();
            v906 = v905;
            sub_100018F90(v903, &qword_1000FD718, &unk_1000CEA30);
            v907 = v1199;
            *(v902 + 56) = &type metadata for String;
            *(v902 + 64) = v907;
            *(v902 + 32) = v904;
            *(v902 + 40) = v906;
            v908 = v1382;
            sub_1000C4EC4();
            (v1380)(v908, 0, 1, v1378);
            v909 = sub_1000C4A84();
            v911 = v910;
            sub_100018F90(v908, &qword_1000FC520, &qword_1000C9D20);
            *(v902 + 96) = &type metadata for String;
            *(v902 + 104) = v907;
            *(v902 + 72) = v909;
            *(v902 + 80) = v911;
            sub_1000C5554();
            v912 = v1377;
            sub_1000C1A44();

            if (*(v1364 + 32))
            {
              v1382 = *(v1364 + 24);
              v1196(v1204, v1205, v1385);
              sub_100018F28(v1355, v1274, &qword_1000FC3B8, &qword_1000C9788);
              v913 = v1340;
              v396(v1275, v1340, v1328);
              v914 = (v913 + v1344[5]);
              v915 = *v914;
              v916 = v914[1];
              v917 = (v913 + v1344[6]);
              v918 = v917[1];
              v1379 = *v917;
              v1380 = v915;
              v919 = (v913 + v1344[7]);
              v920 = *v919;
              v1378 = v919[1];

              sub_100029204(v1276);
              v921 = v1198;
              sub_1000C4EA4();
              v1198 = v921;
              if (v921)
              {
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                v788 = v1385;
                v786 = *(v1384 + 8);
                v786(v1204, v1385);
LABEL_165:
                sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
                goto LABEL_166;
              }

              (*(v1363 + 104))(v1282, enum case for TextMessage.MessageType.tapback(_:), v1362);
              v922 = v1373;
              v923 = v1364;
              sub_100018F28(v1364 + v1373[18], v1269, &qword_1000FC520, &qword_1000C9D20);
              v924 = v922[32];
              v925 = (v923 + v922[31]);
              v926 = *v925;
              v1382 = v925[1];
              v927 = *(v923 + v924 + 8);
              v1375 = *(v923 + v924);
              v1376 = v926;
              v1380 = v927;
              v928 = (v923 + v922[33]);
              v930 = *v928;
              v929 = v928[1];
              v1374 = v930;
              v1379 = v929;
              v931 = v922[24];
              v932 = (v923 + v922[23]);
              v934 = *v932;
              v933 = v932[1];
              v1371 = v934;
              v1378 = v933;
              v935 = *(v923 + v931 + 8);
              v1370 = *(v923 + v931);
              v1377 = v935;
              v936 = v922[22];
              v937 = (v923 + v922[21]);
              v1369 = *v937;
              LODWORD(v1368) = *(v937 + 8);
              v938 = *(v923 + v936 + 8);
              if (v938)
              {
                v939 = *(v923 + v936);

                v1367 = sub_1000931CC(v939, v938);
                LODWORD(v1359) = v940;
              }

              else
              {

                v1367 = 0;
                LODWORD(v1359) = 1;
              }

              v976 = v1373;
              v977 = v1364;
              v978 = (v1364 + v1373[25]);
              v1366 = *v978;
              LODWORD(v1365) = *(v978 + 8);
              v979 = (v1364 + v1373[35]);
              v1363 = *v979;
              LODWORD(v1362) = *(v979 + 8);
              sub_100028FA0(v1270);
              v980 = v976[48];
              v981 = (v977 + v976[47]);
              v982 = v981[1];
              v1361 = *v981;
              v1357 = v982;
              v983 = *(v977 + v980 + 8);
              v1360 = *(v977 + v980);
              v1354 = v983;
              v984 = v976[50];
              v985 = (v977 + v976[49]);
              v986 = v985[1];
              v1358 = *v985;
              v1352 = v986;
              v987 = *(v977 + v984 + 8);
              v1355 = *(v977 + v984);
              v1344 = v987;
              v988 = v976[52];
              LODWORD(v1353) = *(v977 + v976[51]);
              v989 = *(v977 + v988 + 8);
              v1351 = *(v977 + v988);
              v1347 = v989;

              sub_10008B5E0(v1257);
              v990 = (v977 + v976[45]);
              v991 = v990[1];
              v1342 = *v990;
              LODWORD(v1343) = *(v977 + 97);
              v1341 = *(v977 + 104);
              LODWORD(v1339) = *(v977 + 112);
              v992 = v977 + v976[19];
              v993 = *v992;
              v994 = *(v992 + 8);

              sub_1000C21E4();
              sub_100018F28(v977 + v976[20], v1259, &qword_1000FC5A8, &qword_1000CEA40);
              v995 = *(v977 + v976[59]);
              LOBYTE(v983) = *(v977 + v976[60]);
              v996 = (v977 + v976[61]);
              v998 = *v996;
              v997 = v996[1];

              v999 = v1198;
              sub_1000C2204();
              if (!v999)
              {
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1346 + 8))(v1356, v1345);
                v875 = &v1295;
                goto LABEL_183;
              }

              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v1381);
LABEL_157:
              sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
              goto LABEL_158;
            }

LABEL_143:

            goto LABEL_144;
          }

          if (v391 == enum case for TapBack.AssociatedMessageType.tapbackEmoji(_:))
          {
LABEL_86:

            v742 = sub_1000C5714();
            v743 = swift_allocObject();
            *(v743 + 16) = v1200;
            v744 = v1382;
            sub_1000C4EC4();
            (v1380)(v744, 0, 1, v1378);
            v745 = sub_1000C4A84();
            v747 = v746;
            sub_100018F90(v744, &qword_1000FC520, &qword_1000C9D20);
            v748 = v1199;
            *(v743 + 56) = &type metadata for String;
            *(v743 + 64) = v748;
            *(v743 + 32) = v745;
            *(v743 + 40) = v747;
            sub_1000C5554();
            sub_1000C1A44();

            if (*(v1364 + 32))
            {
              v749 = (v1340 + v1344[8]);
              if (v749[1])
              {
                v1380 = *(v1364 + 24);
                v1382 = *v749;

                sub_1000C4E84();
                v750 = v1264;
                sub_1000C2274();
                if ((*(v1265 + 48))(v750, 1, v1266) == 1)
                {

                  v751 = &qword_1000FD708;
                  v752 = &qword_1000CEA20;
                  v753 = &v1296;
LABEL_119:
                  sub_100018F90(*(v753 - 32), v751, v752);
LABEL_144:
                  sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion);
                  swift_allocError();
                  sub_1000C4FB4();
                  swift_willThrow();
                  sub_100018CBC(v1195, v1383);

                  sub_100018CD0(v1372, v1381);
                  v783 = v1340;
                  goto LABEL_145;
                }

                v965 = v1265;
                v966 = v1255;
                v967 = v1266;
                (*(v1265 + 32))(v1255, v1264, v1266);
                v1196(v1203, v1205, v1385);
                sub_100018F28(v1355, v1246, &qword_1000FC3B8, &qword_1000C9788);
                (*(v965 + 16))(v1248, v966, v967);
                v968 = (v1340 + v1344[5]);
                v969 = *v968;
                v970 = v968[1];
                v971 = (v1340 + v1344[6]);
                v972 = v971[1];
                v1378 = *v971;
                v1379 = v969;
                v973 = (v1340 + v1344[7]);
                v974 = *v973;
                v1376 = v973[1];
                v1377 = v974;

                sub_100029204(v1247);
                v975 = v1198;
                sub_1000C2294();
                v1198 = v975;
                if (v975)
                {
                  sub_100018CBC(v1195, v1383);

                  sub_100018CD0(v1372, v1381);
                  v788 = v1385;
                  v786 = *(v1384 + 8);
                  v786(v1203, v1385);
                  (*(v1265 + 8))(v1255, v1266);
                  goto LABEL_165;
                }

                (*(v1363 + 104))(v1252, enum case for TextMessage.MessageType.emojiTapback(_:), v1362);
                v1027 = v1373;
                v1028 = v1364;
                sub_100018F28(v1364 + v1373[18], v1237, &qword_1000FC520, &qword_1000C9D20);
                v1029 = v1027[32];
                v1030 = (v1028 + v1027[31]);
                v1031 = *v1030;
                v1382 = v1030[1];
                v1032 = *(v1028 + v1029 + 8);
                v1375 = *(v1028 + v1029);
                v1376 = v1031;
                v1380 = v1032;
                v1033 = (v1028 + v1027[33]);
                v1035 = *v1033;
                v1034 = v1033[1];
                v1374 = v1035;
                v1379 = v1034;
                v1036 = v1027[24];
                v1037 = (v1028 + v1027[23]);
                v1039 = *v1037;
                v1038 = v1037[1];
                v1371 = v1039;
                v1378 = v1038;
                v1040 = *(v1028 + v1036 + 8);
                v1370 = *(v1028 + v1036);
                v1377 = v1040;
                v1041 = v1027[22];
                v1042 = (v1028 + v1027[21]);
                v1369 = *v1042;
                LODWORD(v1368) = *(v1042 + 8);
                v1043 = *(v1028 + v1041 + 8);
                if (v1043)
                {
                  v1044 = *(v1028 + v1041);

                  v1367 = sub_1000931CC(v1044, v1043);
                  LODWORD(v1359) = v1045;
                }

                else
                {

                  v1367 = 0;
                  LODWORD(v1359) = 1;
                }

                v1087 = v1373;
                v1088 = v1364;
                v1089 = (v1364 + v1373[25]);
                v1366 = *v1089;
                LODWORD(v1365) = *(v1089 + 8);
                v1090 = (v1364 + v1373[35]);
                v1363 = *v1090;
                LODWORD(v1362) = *(v1090 + 8);
                sub_100028FA0(v1238);
                v1091 = v1087[48];
                v1092 = (v1088 + v1087[47]);
                v1093 = v1092[1];
                v1361 = *v1092;
                v1357 = v1093;
                v1094 = *(v1088 + v1091 + 8);
                v1360 = *(v1088 + v1091);
                v1354 = v1094;
                v1095 = v1087[50];
                v1096 = (v1088 + v1087[49]);
                v1097 = v1096[1];
                v1358 = *v1096;
                v1352 = v1097;
                v1098 = *(v1088 + v1095 + 8);
                v1355 = *(v1088 + v1095);
                v1344 = v1098;
                v1099 = v1087[52];
                LODWORD(v1353) = *(v1088 + v1087[51]);
                v1100 = *(v1088 + v1099 + 8);
                v1351 = *(v1088 + v1099);
                v1347 = v1100;

                sub_10008B5E0(v1230);
                v1101 = (v1088 + v1087[45]);
                v1102 = v1101[1];
                v1342 = *v1101;
                LODWORD(v1343) = *(v1088 + 97);
                v1341 = *(v1088 + 104);
                LODWORD(v1339) = *(v1088 + 112);
                v1103 = v1088 + v1087[19];
                v1104 = *v1103;
                v1105 = *(v1103 + 8);

                sub_1000C21E4();
                sub_100018F28(v1088 + v1087[20], v1232, &qword_1000FC5A8, &qword_1000CEA40);
                v1106 = *(v1088 + v1087[59]);
                LOBYTE(v1094) = *(v1088 + v1087[60]);
                v1107 = (v1088 + v1087[61]);
                v1109 = *v1107;
                v1108 = v1107[1];

                v1110 = v1198;
                sub_1000C2204();
                if (!v1110)
                {
                  sub_100018CBC(v1195, v1383);

                  sub_100018CD0(v1372, v1381);
                  (*(v1265 + 8))(v1255, v1266);
                  sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
                  (*(v1346 + 8))(v1356, v1345);
                  v875 = &v1266;
                  goto LABEL_183;
                }

                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                (*(v1265 + 8))(v1255, v1266);
                goto LABEL_157;
              }
            }

            goto LABEL_143;
          }

          if (v391 == enum case for TapBack.AssociatedMessageType.tapbackSticker(_:))
          {
LABEL_116:

            v841 = sub_1000C5714();
            v842 = swift_allocObject();
            *(v842 + 16) = v1200;
            v843 = v1382;
            sub_1000C4EC4();
            (v1380)(v843, 0, 1, v1378);
            v844 = sub_1000C4A84();
            v846 = v845;
            sub_100018F90(v843, &qword_1000FC520, &qword_1000C9D20);
            v847 = v1199;
            *(v842 + 56) = &type metadata for String;
            *(v842 + 64) = v847;
            *(v842 + 32) = v844;
            *(v842 + 40) = v846;
            sub_1000C5554();
            sub_1000C1A44();

            if (*(v1364 + 32))
            {
              v1388 = *(v1364 + 24);

              sub_1000C4E84();
              v848 = v1260;
              sub_1000C32F4();
              if ((*(v1261 + 48))(v848, 1, v1262) == 1)
              {

                v751 = &qword_1000FD700;
                v752 = &qword_1000CEA18;
                v753 = &v1292;
                goto LABEL_119;
              }

              v1017 = v1261;
              v1018 = v1251;
              v1019 = v1262;
              (*(v1261 + 32))(v1251, v1260, v1262);
              v1196(v1202, v1205, v1385);
              sub_100018F28(v1355, v1240, &qword_1000FC3B8, &qword_1000C9788);
              (*(v1017 + 16))(v1242, v1018, v1019);
              v1020 = v1344[6];
              v1021 = (v1340 + v1344[5]);
              v1022 = v1021[1];
              v1382 = *v1021;
              v1023 = *(v1340 + v1020 + 8);
              v1380 = *(v1340 + v1020);
              v1024 = (v1340 + v1344[7]);
              v1025 = *v1024;
              v1378 = v1024[1];
              v1379 = v1025;
              (*(v1346 + 16))(v1239, v1356, v1345);

              sub_100029204(v1241);
              v1026 = v1198;
              sub_1000C3314();
              v1198 = v1026;
              if (v1026)
              {
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                v788 = v1385;
                v786 = *(v1384 + 8);
                v786(v1202, v1385);
                (*(v1261 + 8))(v1251, v1262);
                goto LABEL_165;
              }

              (*(v1363 + 104))(v1250, enum case for TextMessage.MessageType.stickerTapback(_:), v1362);
              v1069 = v1373;
              v1070 = v1364;
              sub_100018F28(v1364 + v1373[18], v1235, &qword_1000FC520, &qword_1000C9D20);
              v1071 = v1069[32];
              v1072 = v1070 + v1069[31];
              v1073 = *(v1072 + 8);
              v1388 = *v1072;
              v1074 = *(v1070 + v1071 + 8);
              v1382 = *(v1070 + v1071);
              v1075 = (v1070 + v1069[33]);
              v1076 = *v1075;
              v1077 = v1075[1];
              v1078 = v1069[24];
              v1079 = (v1070 + v1069[23]);
              v1379 = *v1079;
              v1380 = v1076;
              v1080 = v1079[1];
              v1081 = *(v1070 + v1078 + 8);
              v1378 = *(v1070 + v1078);
              v1082 = v1069[22];
              v1083 = (v1070 + v1069[21]);
              v1377 = *v1083;
              LODWORD(v1376) = *(v1083 + 8);
              v1084 = *(v1070 + v1082 + 8);
              if (v1084)
              {
                v1085 = *(v1070 + v1082);
                v1086 = v1084;
              }

              else
              {
                v1086 = 0xE100000000000000;
                v1085 = 56;
              }

              v1371 = v1080;

              v1375 = v1073;

              v1374 = v1074;

              v1370 = v1077;

              v1369 = v1081;

              v1368 = sub_1000931CC(v1085, v1086);
              LODWORD(v1359) = v1111;
              v1112 = v1373;
              v1113 = v1364;
              v1114 = (v1364 + v1373[25]);
              v1367 = *v1114;
              LODWORD(v1366) = *(v1114 + 8);
              v1115 = (v1364 + v1373[35]);
              v1365 = *v1115;
              LODWORD(v1363) = *(v1115 + 8);
              sub_100028FA0(v1236);
              v1116 = v1112[48];
              v1117 = (v1113 + v1112[47]);
              v1118 = v1117[1];
              v1362 = *v1117;
              v1358 = v1118;
              v1119 = *(v1113 + v1116 + 8);
              v1361 = *(v1113 + v1116);
              v1355 = v1119;
              v1120 = v1112[50];
              v1121 = (v1113 + v1112[49]);
              v1122 = v1121[1];
              v1360 = *v1121;
              v1353 = v1122;
              v1123 = *(v1113 + v1120 + 8);
              v1357 = *(v1113 + v1120);
              v1351 = v1123;
              v1124 = v1112[52];
              LODWORD(v1354) = *(v1113 + v1112[51]);
              v1125 = *(v1113 + v1124 + 8);
              v1352 = *(v1113 + v1124);

              sub_10008B5E0(v1227);
              v1126 = (v1113 + v1112[45]);
              v1127 = v1126[1];
              v1344 = *v1126;
              LODWORD(v1347) = *(v1113 + 97);
              v1343 = *(v1113 + 104);
              LODWORD(v1342) = *(v1113 + 112);
              v1128 = v1113 + v1112[19];
              v1129 = *v1128;
              v1130 = *(v1128 + 8);

              sub_1000C21E4();
              sub_100018F28(v1113 + v1112[20], v1229, &qword_1000FC5A8, &qword_1000CEA40);
              v1131 = *(v1113 + v1112[59]);
              LOBYTE(v1122) = *(v1113 + v1112[60]);
              v1132 = (v1113 + v1112[61]);
              v1133 = *v1132;
              v1134 = v1132[1];

              v1135 = v1198;
              sub_1000C2204();
              if (!v1135)
              {
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                (*(v1261 + 8))(v1251, v1262);
                sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1346 + 8))(v1356, v1345);
                v875 = &v1265;
                goto LABEL_183;
              }

              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v1381);
              (*(v1261 + 8))(v1251, v1262);
              goto LABEL_157;
            }

            goto LABEL_143;
          }

LABEL_128:
          if (v391 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedHeart(_:) && v391 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedThumbsUp(_:) && v391 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedThumbsDown(_:) && v391 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedHa(_:) && v391 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedExclamation(_:) && v391 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedQuestionMark(_:))
          {
            if (v391 == enum case for TapBack.AssociatedMessageType.tapbackDeselectedEmoji(_:))
            {
              goto LABEL_86;
            }

            if (v391 == enum case for TapBack.AssociatedMessageType.tapbackDeselectedSticker(_:))
            {
              goto LABEL_116;
            }

            if (v391 != enum case for TapBack.AssociatedMessageType.customAcknowledgement(_:))
            {
              sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion);
              swift_allocError();
              sub_1000C4FB4();
              swift_willThrow();
              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v1381);
              sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
              (*(v1346 + 8))(v1356, v1345);
              (*(v1384 + 8))(v1205, v1385);
              (*(v1386 + 8))(v1387, v1389);
              sub_10007795C(v1364, type metadata accessor for MessageDictionary);
              return (*(v1327 + 8))(v1326, v1328);
            }

            v888 = sub_1000C5714();
            v889 = swift_allocObject();
            *(v889 + 16) = xmmword_1000CBF00;
            v890 = v1293;
            sub_1000779BC(v1340, v1293, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1343 + 56))(v890, 0, 1, v1344);
            v891 = sub_1000C4A84();
            v893 = v892;
            sub_100018F90(v890, &qword_1000FD718, &unk_1000CEA30);
            v894 = v1199;
            *(v889 + 56) = &type metadata for String;
            *(v889 + 64) = v894;
            *(v889 + 32) = v891;
            *(v889 + 40) = v893;
            v895 = v1382;
            sub_1000C4EC4();
            (v1380)(v895, 0, 1, v1378);
            v896 = sub_1000C4A84();
            v898 = v897;
            sub_100018F90(v895, &qword_1000FC520, &qword_1000C9D20);
            *(v889 + 96) = &type metadata for String;
            *(v889 + 104) = v894;
            *(v889 + 72) = v896;
            *(v889 + 80) = v898;
            sub_1000C5554();
            sub_1000C1A44();

            v899 = *(v1364 + 24);
            if (*(v1364 + 32))
            {
              v900 = *(v1364 + 32);

              sub_1000C4DC4();
              sub_1000C4E04();
              v901 = v1198;
              sub_1000184B0(v1355, v1225);
              if (v901)
              {
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                sub_100018F90(v1226, &qword_1000FC3B0, &qword_1000C9780);
                sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1346 + 8))(v1356, v1345);
                (*(v1384 + 8))(v1205, v1385);
                (*(v1386 + 8))(v1387, v1389);
                return sub_10007795C(v1364, type metadata accessor for MessageDictionary);
              }

              sub_100018F90(v1226, &qword_1000FC3B0, &qword_1000C9780);

              if ((*(v1320 + 48))(v1225, 1, v1319) == 1)
              {

                sub_100018F90(v1225, &qword_1000FD6F8, &qword_1000CEA10);
                v782 = v1340;
                v1391 = sub_1000C4E84();
                sub_1000C5BE4();
                sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion);
                swift_allocError();
                goto LABEL_104;
              }

              (*(v1320 + 32))(v1222, v1225, v1319);
              sub_1000C4E84();
              v1137 = v1221;
              sub_1000C4134();
              if ((*(v1223 + 48))(v1137, 1, v1224) == 1)
              {

                sub_100018F90(v1221, &qword_1000FD6F0, &unk_1000CEA00);
                v782 = v1340;
                v1391 = sub_1000C4E84();
                sub_1000C5BE4();
                sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion);
                swift_allocError();
                sub_1000C4FB4();
                swift_willThrow();
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                (*(v1320 + 8))(v1222, v1319);
                goto LABEL_105;
              }

              v1138 = v1223;
              v1139 = v1220;
              v1140 = v1224;
              (*(v1223 + 32))(v1220, v1221, v1224);
              v1196(v1206, v1205, v1385);
              (*(v1138 + 16))(v1216, v1139, v1140);
              v1141 = v1344[6];
              v1142 = (v1340 + v1344[5]);
              v1143 = v1142[1];
              v1382 = *v1142;
              v1144 = v1340 + v1141;
              v1145 = *(v1340 + v1141);
              v1146 = *(v1144 + 8);
              v1147 = (v1340 + v1344[7]);
              v1148 = *v1147;
              v1379 = v1147[1];
              v1380 = v1145;

              sub_100029204(v1214);
              sub_1000C27B4();
              sub_1000A89BC();
              v1198 = 0;
              sub_1000C4E04();
              v1149 = v1198;
              sub_1000C4154();
              v1198 = v1149;
              if (v1149)
              {
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                v788 = v1385;
                v786 = *(v1384 + 8);
                v786(v1206, v1385);
                (*(v1223 + 8))(v1220, v1224);
                (*(v1320 + 8))(v1222, v1319);
                goto LABEL_165;
              }

              (*(v1363 + 104))(v1209, enum case for TextMessage.MessageType.customAcknowledgement(_:), v1362);
              v1150 = v1373;
              v1151 = v1364;
              sub_100018F28(v1364 + v1373[18], v1207, &qword_1000FC520, &qword_1000C9D20);
              v1152 = v1150[32];
              v1153 = (v1151 + v1150[31]);
              v1154 = *v1153;
              v1382 = v1153[1];
              v1155 = *(v1151 + v1152 + 8);
              v1375 = *(v1151 + v1152);
              v1376 = v1154;
              v1380 = v1155;
              v1156 = (v1151 + v1150[33]);
              v1158 = *v1156;
              v1157 = v1156[1];
              v1374 = v1158;
              v1379 = v1157;
              v1159 = v1150[24];
              v1160 = (v1151 + v1150[23]);
              v1162 = *v1160;
              v1161 = v1160[1];
              v1371 = v1162;
              v1378 = v1161;
              v1163 = *(v1151 + v1159 + 8);
              v1370 = *(v1151 + v1159);
              v1377 = v1163;
              v1164 = v1150[22];
              v1165 = (v1151 + v1150[21]);
              v1369 = *v1165;
              LODWORD(v1368) = *(v1165 + 8);
              v1166 = *(v1151 + v1164 + 8);
              if (v1166)
              {
                v1167 = *(v1151 + v1164);

                v1367 = sub_1000931CC(v1167, v1166);
                LODWORD(v1359) = v1168;
              }

              else
              {

                v1367 = 0;
                LODWORD(v1359) = 1;
              }

              v1169 = v1373;
              v1170 = v1364;
              v1171 = (v1364 + v1373[25]);
              v1366 = *v1171;
              LODWORD(v1365) = *(v1171 + 8);
              v1172 = (v1364 + v1373[35]);
              v1363 = *v1172;
              LODWORD(v1362) = *(v1172 + 8);
              sub_100028FA0(v1210);
              v1173 = v1169[48];
              v1174 = (v1170 + v1169[47]);
              v1175 = v1174[1];
              v1361 = *v1174;
              v1357 = v1175;
              v1176 = *(v1170 + v1173 + 8);
              v1360 = *(v1170 + v1173);
              v1354 = v1176;
              v1177 = v1169[50];
              v1178 = (v1170 + v1169[49]);
              v1179 = v1178[1];
              v1358 = *v1178;
              v1352 = v1179;
              v1180 = *(v1170 + v1177 + 8);
              v1355 = *(v1170 + v1177);
              v1344 = v1180;
              v1181 = v1169[52];
              LODWORD(v1353) = *(v1170 + v1169[51]);
              v1182 = *(v1170 + v1181 + 8);
              v1351 = *(v1170 + v1181);
              v1347 = v1182;

              sub_10008B5E0(v1211);
              v1183 = (v1170 + v1169[45]);
              v1184 = v1183[1];
              v1342 = *v1183;
              LODWORD(v1343) = *(v1170 + 97);
              v1341 = *(v1170 + 104);
              LODWORD(v1339) = *(v1170 + 112);
              v1185 = v1170 + v1169[19];
              v1186 = *v1185;
              v1187 = *(v1185 + 8);

              sub_1000C21E4();
              sub_100018F28(v1170 + v1169[20], v1213, &qword_1000FC5A8, &qword_1000CEA40);
              v1188 = *(v1170 + v1169[59]);
              LOBYTE(v1176) = *(v1170 + v1169[60]);
              v1189 = (v1170 + v1169[61]);
              v1191 = *v1189;
              v1190 = v1189[1];

              v1192 = v1198;
              sub_1000C2204();
              if (!v1192)
              {
                sub_100018CBC(v1195, v1383);

                sub_100018CD0(v1372, v1381);
                (*(v1223 + 8))(v1220, v1224);
                (*(v1320 + 8))(v1222, v1319);
                sub_10007795C(v1340, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1346 + 8))(v1356, v1345);
                v875 = &v1240;
                goto LABEL_183;
              }

              sub_100018CBC(v1195, v1383);

              sub_100018CD0(v1372, v1381);
              (*(v1223 + 8))(v1220, v1224);
              v873 = *(v1320 + 8);
              v874 = &v1254;
              goto LABEL_123;
            }

            v1136 = v1340;
            v1391 = sub_1000C4E84();
            sub_1000C5BE4();
            sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            sub_100018CBC(v1195, v1383);

            sub_100018CD0(v1372, v1381);
            sub_10007795C(v1136, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1346 + 8))(v1356, v1345);
            goto LABEL_74;
          }

          goto LABEL_140;
        }

LABEL_21:
        v438 = v395;
        (*(v395 + 104))(v397, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v396);
        sub_1000C1964();
        v1381 = v390;
        (*(v438 + 8))(v397, v396);
        v439 = v1376;
        sub_1000C4FB4();
        v440 = sub_1000C5714();
        v441 = swift_allocObject();
        *(v441 + 16) = v1200;
        v1388 = *(v393 + 2);
        v442 = v1374;
        v443 = v1375;
        v1388(v1374, v439, v1375);
        (*(v393 + 7))(v442, 0, 1, v443);
        v444 = sub_1000C4A84();
        v445 = v393;
        v447 = v446;
        sub_100018F90(v442, &qword_1000FC438, &unk_1000C9DC0);
        v448 = v1199;
        *(v441 + 56) = &type metadata for String;
        *(v441 + 64) = v448;
        *(v441 + 32) = v444;
        *(v441 + 40) = v447;
        sub_1000C5554();
        sub_1000C1A44();

        sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion);
        swift_allocError();
        v1388(v449, v439, v443);
        swift_willThrow();
        sub_100018CBC(v1195, v1383);

        sub_100018CD0(v1372, v1381);
        (*(v445 + 1))(v439, v443);
LABEL_27:
        (*(v1384 + 8))(v1205, v1385);
        v384 = v1387;
        v383 = *(v1386 + 8);
        return v383(v384, v1389);
      }

      __break(1u);
    }

    else
    {
      v393 = v1380;
      v394 = v1381;
      v395 = v1378;
      v396 = v1379;
      v397 = v1377;
      if (!v392)
      {
        v398 = BYTE6(v390);
        goto LABEL_17;
      }
    }

    LODWORD(v398) = HIDWORD(v388) - v388;
    if (__OFSUB__(HIDWORD(v388), v388))
    {
      __break(1u);
      goto LABEL_128;
    }

    v398 = v398;
    goto LABEL_17;
  }

  v365 = v352;
  v366 = sub_1000C5714();
  v367 = swift_allocObject();
  *(v367 + 16) = v1200;
  v368 = v1382;
  sub_1000C4EC4();
  v369 = sub_1000C1614();
  v370 = *(v369 - 8);
  v1388 = *(v370 + 56);
  v1383 = v370 + 56;
  (v1388)(v368, 0, 1, v369);
  v371 = sub_1000C4A84();
  v372 = v362;
  v374 = v373;
  sub_100018F90(v368, &qword_1000FC520, &qword_1000C9D20);
  *(v367 + 56) = &type metadata for String;
  *(v367 + 64) = v372;
  *(v367 + 32) = v371;
  *(v367 + 40) = v374;
  v375 = v365;
  sub_1000C5554();
  sub_1000C1A44();

  if (sub_1000C19A4())
  {
    v376 = sub_1000C5714();
    v377 = swift_allocObject();
    *(v377 + 16) = v1200;
    v378 = v1205;
    sub_1000C4EC4();
    (v1388)(v368, 0, 1, v369);
    v379 = sub_1000C4A84();
    v381 = v380;
    sub_100018F90(v368, &qword_1000FC520, &qword_1000C9D20);
    v382 = v1199;
    *(v377 + 56) = &type metadata for String;
    *(v377 + 64) = v382;
    *(v377 + 32) = v379;
    *(v377 + 40) = v381;
    sub_1000C5554();
    sub_1000C1A44();

    sub_100077858();
    swift_allocError();
    swift_willThrow();

    (*(v1384 + 8))(v378, v1385);
    v383 = *(v1386 + 8);
    v384 = v365;
    return v383(v384, v1389);
  }

  v399 = v1388;
  v400 = v1370;
  v401 = v1205;
  v402 = v1385;
  v1196(v1370, v1205, v1385);
  v403 = sub_1000C34E4();
  (*(*(v403 - 8) + 56))(v1371, 1, 1, v403);
  v404 = v1372;
  v405 = v1198;
  sub_1000C34F4();
  if (v405)
  {

    v406 = *(v1384 + 8);
    v406(v400, v402);
    v406(v401, v402);
    return (*(v1386 + 8))(v375, v1389);
  }

  else
  {
    (*(v1363 + 104))(v404, enum case for TextMessage.MessageType.typingIndicator(_:), v1362);
    v399(v1367, 1, 1, v369);
    v450 = sub_1000C21C4();
    (*(*(v450 - 8) + 56))(v1358, 1, 1, v450);
    v451 = sub_1000C3FD4();
    (*(*(v451 - 8) + 56))(v1359, 1, 1, v451);
    v452 = sub_1000C21F4();
    (*(*(v452 - 8) + 56))(v1360, 1, 1, v452);
    v453 = sub_1000C15D4();
    (*(*(v453 - 8) + 56))(v1361, 1, 1, v453);
    v454 = v1357;
    sub_1000C2204();
    v455 = v1386;
    v456 = v1389;

    (*(v1384 + 8))(v401, v1385);
    (*(v455 + 8))(v375, v456);
    return (*(v1348 + 32))(v1350, v454, v1349);
  }
}