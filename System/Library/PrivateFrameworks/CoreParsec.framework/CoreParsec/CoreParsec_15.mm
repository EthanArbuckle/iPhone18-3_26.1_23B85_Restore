unint64_t sub_10013B828()
{
  result = qword_10021E3E0;
  if (!qword_10021E3E0)
  {
    sub_1000461CC(&qword_10021E3D8, &qword_1001A2C08);
    sub_10013B8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3E0);
  }

  return result;
}

unint64_t sub_10013B8B4()
{
  result = qword_10021E3E8;
  if (!qword_10021E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3E8);
  }

  return result;
}

uint64_t MessageSchemaModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v8 = sub_100046184(&qword_10021E3F0, &unk_1001A2C10);
  v9 = sub_100003650(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v18 - v14;
  v16 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10013B6F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!*(a2 + 16) || (v20 = a2, v19 = 0, sub_100046184(&qword_10021CA80, &qword_1001A1658), sub_10013BB98(), sub_100003D34(), !v4))
  {
    if (!*(a3 + 16) || (v20 = a3, v19 = 1, sub_100046184(&qword_10021E3C0, &qword_1001A2C00), sub_10013BC24(), sub_100003D34(), !v4))
    {
      if (*(v18 + 16))
      {
        v20 = v18;
        v19 = 2;
        sub_100046184(&qword_10021E3D8, &qword_1001A2C08);
        sub_10013BD04();
        sub_100003D34();
      }
    }
  }

  return (*(v11 + 8))(v15, v8);
}

unint64_t sub_10013BB98()
{
  result = qword_10021E3F8;
  if (!qword_10021E3F8)
  {
    sub_1000461CC(&qword_10021CA80, &qword_1001A1658);
    sub_10012578C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3F8);
  }

  return result;
}

unint64_t sub_10013BC24()
{
  result = qword_10021E400;
  if (!qword_10021E400)
  {
    sub_1000461CC(&qword_10021E3C0, &qword_1001A2C00);
    sub_10013BCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E400);
  }

  return result;
}

unint64_t sub_10013BCB0()
{
  result = qword_10021E408;
  if (!qword_10021E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E408);
  }

  return result;
}

unint64_t sub_10013BD04()
{
  result = qword_10021E410;
  if (!qword_10021E410)
  {
    sub_1000461CC(&qword_10021E3D8, &qword_1001A2C08);
    sub_10013BD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E410);
  }

  return result;
}

unint64_t sub_10013BD90()
{
  result = qword_10021E418;
  if (!qword_10021E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E418);
  }

  return result;
}

void static MessageSchemaModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10011AF78(a1, a4);
  if (v10)
  {
    sub_10011BE00(a2, a5);
    if (v11)
    {

      sub_10011C218(a3, a6);
    }
  }
}

uint64_t sub_10013BE60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MessageSchemaModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void MessageSchemaModel.init(_:dontCopy:)(uint64_t *a1, char a2)
{
  v3 = v2;
  v4 = a1[3];
  v5 = a1[4];
  sub_100007534(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  sub_100046184(&qword_10021CA98, &unk_1001A1660);
  v51 = static _DictionaryStorage.copy(original:)();
  v52 = v6;
  v7 = 0;
  v8 = *(v6 + 64);
  v49 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  sub_100011B4C();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v50 = v15 + 64;
  if (v12)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v12));
      v55 = (v12 - 1) & v12;
LABEL_8:
      v19 = v16 | (v7 << 6);
      v20 = (*(v52 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      sub_100009848(*(v52 + 56) + 32 * v19, v54);
      sub_100009848(v54, v53);

      sub_100124CE8(v53);
      if (v3)
      {

        sub_100007378(v54);
        sub_100007378(a1);
        return;
      }

      v26 = v23;
      v27 = v24;
      v28 = v25;
      sub_100007378(v54);
      *(v50 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v29 = (v51[6] + 16 * v19);
      *v29 = v21;
      v29[1] = v22;
      v30 = v51[7] + 24 * v19;
      *v30 = v26;
      *(v30 + 8) = v27;
      *(v30 + 16) = v28;
      v31 = v51[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v51[2] = v33;
      v3 = 0;
      v12 = v55;
      if (!v55)
      {
        goto LABEL_3;
      }
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_3:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v7 >= v14)
      {
        break;
      }

      v18 = *(v49 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v55 = (v18 - 1) & v18;
        goto LABEL_8;
      }
    }

    if (a2)
    {
      Dictionary.init(dictionaryLiteral:)();
      v34 = a1;
    }

    else
    {
      v34 = a1;
      v35 = a1[3];
      v36 = a1[4];
      sub_100007534(a1, v35);
      v37 = (*(v36 + 24))(v35, v36);
      v38 = Dictionary.init(dictionaryLiteral:)();
      __chkstk_darwin(v38);
      sub_100006CA8();
      sub_10011D9F0(v39, sub_10013C3B4, v40, v37);
      if (v3)
      {

        sub_100007378(a1);
        return;
      }
    }

    v41 = v34[3];
    v42 = v34[4];
    sub_100007534(v34, v41);
    v43 = (*(v42 + 32))(v41, v42);
    v44 = Dictionary.init(dictionaryLiteral:)();
    __chkstk_darwin(v44);
    sub_100006CA8();
    sub_10011D9F0(v45, sub_10013C4AC, v46, v43);

    sub_100007378(v34);
    if (v3)
    {
    }
  }
}

void *sub_10013C2D8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a3[3];
  v8 = a3[4];
  sub_100007534(a3, v7);
  result = (*(v8 + 48))(v11, v5, v6, v7, v8);
  if (!v3)
  {
    PropertyModel.init(_:)(v11, v12);
    v10 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v11[0] = *a1;
    result = sub_1001363FC(v12, v5, v6);
    *a1 = v11[0];
  }

  return result;
}

void *sub_10013C3D0(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a3[3];
  v8 = a3[4];
  sub_100007534(a3, v7);
  result = (*(v8 + 56))(v12, v5, v6, v7, v8);
  if (!v3)
  {
    v10 = OneOfModel.init(_:)(v12);
    v11 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *a1;
    result = sub_10013651C(v10, v5, v6);
    *a1 = v12[0];
  }

  return result;
}

Swift::Void __swiftcall MessageSchemaModel.add(property:withName:)(Schematizer::PropertyModel *property, Swift::String withName)
{
  object = withName._object;
  countAndFlagsBits = withName._countAndFlagsBits;
  sub_10013C544(property, v7);
  v6 = *(v2 + 8);
  swift_isUniquelyReferenced_nonNull_native();
  v7[0] = *(v2 + 8);
  sub_1001363FC(property, countAndFlagsBits, object);
  *(v2 + 8) = v7[0];
}

Swift::Bool __swiftcall MessageSchemaModel.hasProperty(_:)(Swift::String a1)
{
  if (*(v1 + 16))
  {
    sub_100005B74(a1._countAndFlagsBits, a1._object);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MessageSchemaModel.nextAvailableTag.getter(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v2 = *(a2 + 64);
  v4 = 1;
  v5 = 1 << *(a2 + 32);
  sub_100011B4C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v13 = v12;
LABEL_6:
    v14 = *(*(result + 56) + 40 * (__clz(__rbit64(v8)) | (v13 << 6)) + 24);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v8 &= v8 - 1;
    if (v16 > v4)
    {
      v4 = v16;
    }

    v12 = v13;
    if (!v8)
    {
LABEL_3:
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return v4;
        }

        v8 = *(v3 + 8 * v13);
        ++v12;
        if (v8)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageSchemaModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10013C798()
{
  result = qword_10021E420;
  if (!qword_10021E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E420);
  }

  return result;
}

unint64_t sub_10013C7F0()
{
  result = qword_10021E428;
  if (!qword_10021E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E428);
  }

  return result;
}

unint64_t sub_10013C848()
{
  result = qword_10021E430;
  if (!qword_10021E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E430);
  }

  return result;
}

uint64_t sub_10013C89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v133 = a4;
  *&v182 = a1;
  *(&v182 + 1) = a2;
  *&v177 = 64;
  *(&v177 + 1) = 0xE100000000000000;
  sub_10000527C();
  if (StringProtocol.contains<A>(_:)())
  {
    sub_10011DDBC();
    sub_100004248();
    return sub_100003D60(v9, 17);
  }

  else
  {
    sub_10011FB8C(a3, &v182);
    *&v177 = a1;
    *(&v177 + 1) = a2;
    v179[0] = 46;
    v179[1] = 0xE100000000000000;
    v11 = StringProtocol.components<A>(separatedBy:)();
    v12 = 0;
    v164 = *(v11 + 16);
    v13 = (v11 + 40);
    v14 = _swiftEmptyArrayStorage;
    v160 = v11;
    while (1)
    {
      if (v164 == v12)
      {

        v124 = v183[0];
        *(v133 + 8) = v182;
        *(v133 + 24) = v124;
        *(v133 + 33) = *(v183 + 9);
        *v133 = v14;
        return result;
      }

      if (v12 >= *(v11 + 16))
      {
        break;
      }

      v16 = *(v13 - 1);
      v15 = *v13;
      sub_10011FB8C(&v182, &v177);
      if (v178[24] != 1)
      {

        sub_10011FBE8(&v177);
        sub_10011DDBC();
        sub_100004248();
        sub_100003D60(v125, 16);
        return sub_10011FBE8(&v182);
      }

      sub_100008C84(&v177, v179);

      sub_1000056A0();
      v21 = sub_10013DDB8(v17, v18, v19, v20);
      v184 = v12;
      HIDWORD(v168) = v22;
      if (v22)
      {
        v23 = v13;
        v24 = v180;
        v25 = v181;
        sub_100007534(v179, v180);
        (*(v25 + 48))(&v177, v16, v15, v24, v25);
        if (v5)
        {
          sub_10011FBE8(&v182);

LABEL_34:

          return sub_100007378(v179);
        }

        v26 = sub_100008C84(&v177, &v172);
        sub_100006CBC(v26, v27, v28, v29, v30, v31, v32, v33, v129, v133, v137, v142, v146, v151, v156, v160, v164, v168, v172, v173, v174, v175);
        v34 = sub_10000DFA0();
        v36 = v35(v34);
        if (v36)
        {

          sub_10011DDBC();
          sub_100004248();
          v128 = 13;
          goto LABEL_38;
        }

        sub_100006CBC(v36, v37, v38, v39, v40, v41, v42, v43, v130, v134, v138, v143, v147, v152, v157, v161, v165, v169, v172, v173, v174, v175);
        v44 = *(v25 + 40);
        v45 = sub_1000086E8();
        v46(v45);
        v47 = sub_10011FBE8(&v182);
        v182 = v177;
        v183[0] = *v178;
        *(v183 + 9) = *&v178[9];
        sub_100006CBC(v47, v48, v49, v50, v51, v52, v53, v54, v131, v135, v139, v144, v148, v153, v158, v162, v166, v170, v172, v173, v174, v175);
        v55 = *(v25 + 32);
        v5 = 0;
        v56 = sub_1000086E8();
        v58 = v57(v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100005AB4();
          v14 = v120;
        }

        v59 = v23;
        v60 = v14[2];
        v61 = v60 + 1;
        v11 = v160;
        if (v60 >= v14[3] >> 1)
        {
          sub_100008B8C();
          v14 = v121;
        }

        v62 = 0;
      }

      else
      {
        v63 = v21;
        sub_1000056A0();
        v68 = sub_10013DDB8(v64, v65, v66, v67);
        if (v69)
        {

          sub_10011DDBC();
          sub_100004248();
          sub_100003D60(v126, 15);
          sub_10011FBE8(&v182);
          return sub_100007378(v179);
        }

        v70 = v68;
        v149 = v63;
        v140 = v13;

        sub_1000056A0();
        String.subscript.getter();

        v154 = v5;
        v72 = v180;
        v71 = v181;
        sub_100007534(v179, v180);
        v73 = static String._fromSubstring(_:)();
        v75 = v74;

        (*(v71 + 48))(&v177, v73, v75, v72, v71);
        if (v154)
        {
          sub_10011FBE8(&v182);

          goto LABEL_34;
        }

        v76 = sub_100008C84(&v177, &v172);
        sub_100006CBC(v76, v77, v78, v79, v80, v81, v82, v83, v129, v133, v140, v70, v149, 0, v14, v160, v164, v168, v172, v173, v174, v175);
        v84 = sub_10000DFA0();
        v14 = v159;
        v11 = v163;
        if ((v85(v84) & 1) == 0)
        {

          sub_10011DDBC();
          sub_100004248();
          v128 = 14;
          goto LABEL_38;
        }

        if (v150 >> 14 < String.index(after:)() >> 14)
        {
          goto LABEL_41;
        }

        sub_1000056A0();
        v86 = String.subscript.getter();
        v88 = v87;

        if (!((v86 ^ v88) >> 14))
        {
          goto LABEL_42;
        }

        v89 = sub_1000081C4();
        v94 = sub_10013EAF4(v89, v90, v91, v92, v93);
        if ((v95 & 0x100) != 0)
        {
          v97 = sub_1000081C4();
          v62 = sub_10013E508(v97, v98, v99, v100, v101);
          v103 = v102;

          if (v103)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v62 = v94;
          v96 = v95;

          if (v96)
          {
            goto LABEL_37;
          }
        }

        v104 = v175;
        v105 = v176;
        sub_100007534(&v172, v175);
        v106 = *(v105 + 40);
        sub_100006828();
        v107(v104, v105);
        v108 = sub_10011FBE8(&v182);
        v182 = v177;
        v183[0] = *v178;
        *(v183 + 9) = *&v178[9];
        sub_100006CBC(v108, v109, v110, v111, v112, v113, v114, v115, v132, v136, v141, v145, v150, v155, v159, v163, v167, v171, v172, v173, v174, v175);
        v116 = *(v104 + 32);
        v5 = 0;
        v117 = sub_1000086E8();
        v58 = v118(v117);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100005AB4();
          v14 = v122;
        }

        v59 = v137;
        v60 = v14[2];
        v61 = v60 + 1;
        if (v60 >= v14[3] >> 1)
        {
          sub_100008B8C();
          v14 = v123;
        }
      }

      v14[2] = v61;
      v119 = &v14[3 * v60];
      v119[4] = v58;
      v119[5] = v62;
      *(v119 + 48) = (v168 & 0x100000000) == 0;
      sub_100007378(&v172);
      sub_100007378(v179);
      v13 = (v59 + 16);
      v12 = v184 + 1;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:

LABEL_37:

    sub_10011DDBC();
    sub_100004248();
    v128 = 15;
LABEL_38:
    sub_100003D60(v127, v128);
    sub_10011FBE8(&v182);
    sub_100007378(&v172);
    return sub_100007378(v179);
  }
}

void static ProtoTagPathHelper.extractValue(from:pathAndType:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_59:
    sub_10011DDBC();
    sub_100004248();
    *v72 = 0x2064696C61766E69;
    *(v72 + 8) = 0xEF68746170676174;
    *(v72 + 41) = 12;
    swift_willThrow();
    return;
  }

  v123 = a3;
  v128 = a4;
  v5 = sub_10013DBEC(a1, a2);
  v126 = *(v4 + 16);
  v6 = Data.count.getter();
  if (v6 < 0)
  {
    goto LABEL_77;
  }

  v7 = v6;
  v8 = 0;
  v9 = v4 + 32;
  v124 = v4 + 32;
  v125 = v4;
  while (1)
  {
    if (v8 >= *(v4 + 16))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v129 = v8;
    v10 = v9 + 24 * v8;
    v11 = *v10;
    if (*(v10 + 16))
    {
      v12 = *(v10 + 8);
      while (1)
      {
        v13 = [v5 position];
        if ((v13 & 0x8000000000000000) == 0 && v13 >= v7)
        {
          break;
        }

        v21 = v5;
        v22 = 0;
        v23 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v36 = 0;
            goto LABEL_21;
          }

          LOBYTE(v131) = 0;
          v25 = [v21 position] + 1;
          if (v25 >= [v21 position] && (v26 = objc_msgSend(v21, "position") + 1, v26 <= objc_msgSend(v21, "length")))
          {
            v27 = [v21 data];
            v28 = [v21 position];
            sub_10000CA84(v28, v29, v30, v31, v32, v33, v34, v35, v122, v123);

            [v21 setPosition:{objc_msgSend(v21, "position") + 1}];
          }

          else
          {
            [v21 _setError];
          }

          v23 |= (v131 & 0x7F) << v22;
          if ((v131 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
        }

        if ([v21 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v23;
        }

LABEL_21:
        v37 = v36 & 7;
        if (v11 == (v36 >> 3))
        {
          if (!v12)
          {
            goto LABEL_41;
          }

          --v12;
        }

        PBReaderSkipValueWithTag();
      }

      sub_100011B60(v13, v14, v15, v16, v17, v18, v19, v20, v122, v123, v124, v125, v126, v127, v128);
      v73 = sub_1000045B8();
      [v73 v74];
      v75 = sub_1000045B8();
      [v75 v76];
      sub_10000638C();
      if (!v79)
      {
        goto LABEL_64;
      }

      __break(1u);
LABEL_63:
      sub_100011B60(v38, v39, v40, v41, v42, v43, v44, v45, v122, v123, v124, v125, v126, v127, v128);
      v80 = sub_1000045B8();
      [v80 v81];
      v82 = sub_1000045B8();
      [v82 v83];
      sub_10000638C();
      if (!v79)
      {
        goto LABEL_64;
      }

      goto LABEL_79;
    }

    while (1)
    {
      v38 = [v5 position];
      if ((v38 & 0x8000000000000000) == 0 && v38 >= v7)
      {
        goto LABEL_63;
      }

      v46 = v5;
      v47 = 0;
      v48 = 0;
      for (j = 0; ; ++j)
      {
        if (j > 9)
        {
          v61 = 0;
          goto LABEL_39;
        }

        LOBYTE(v131) = 0;
        v50 = [v46 position] + 1;
        if (v50 >= [v46 position] && (v51 = objc_msgSend(v46, "position") + 1, v51 <= objc_msgSend(v46, "length")))
        {
          v52 = [v46 data];
          v53 = [v46 position];
          sub_10000CA84(v53, v54, v55, v56, v57, v58, v59, v60, v122, v123);

          [v46 setPosition:{objc_msgSend(v46, "position") + 1}];
        }

        else
        {
          [v46 _setError];
        }

        v48 |= (v131 & 0x7F) << v47;
        if ((v131 & 0x80) == 0)
        {
          break;
        }

        v47 += 7;
      }

      v61 = [v46 hasError] ? 0 : v48;
LABEL_39:
      v37 = v61 & 7;
      if (v11 == (v61 >> 3))
      {
        break;
      }

      PBReaderSkipValueWithTag();
    }

LABEL_41:

    v62 = sub_10012BC40(v37);
    if (v62 == 6)
    {
      break;
    }

    v63 = v62;
    if (v129 + 1 == v126)
    {
      goto LABEL_68;
    }

    if (v62 != 2)
    {
      goto LABEL_72;
    }

    v8 = v129 + 1;
    v64 = 0;
    v65 = 0;
    for (k = 0; ; ++k)
    {
      if (k > 9)
      {
        v70 = 0;
        goto LABEL_57;
      }

      LOBYTE(v131) = 0;
      v67 = [v5 position] + 1;
      if (v67 >= [v5 position] && (v68 = objc_msgSend(v5, "position") + 1, v68 <= objc_msgSend(v5, "length")))
      {
        v69 = [v5 data];
        [v69 getBytes:&v131 range:{objc_msgSend(v5, "position"), 1}];

        [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
      }

      else
      {
        [v5 _setError];
      }

      v65 |= (v131 & 0x7F) << v64;
      if ((v131 & 0x80) == 0)
      {
        break;
      }

      v64 += 7;
    }

    if ([v5 hasError])
    {
      v70 = 0;
    }

    else
    {
      v70 = v65;
    }

    if (v70 < 0)
    {
      goto LABEL_78;
    }

LABEL_57:
    v71 = [v5 position];
    v7 = (v71 + v70);
    v9 = v124;
    v4 = v125;
    if ((v71 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_59;
    }
  }

  sub_10011DDBC();
  sub_100004248();
  sub_100007E20();
  _StringGuts.grow(_:)(22);

  sub_10000B13C();
  v131 = v85;
  v132 = v84;
  HIBYTE(v130) = v37;
  v86._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v86);

  sub_10000ACD8(v87, v88, v89, v90, v91, v92, v93, v94, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
  v95 = sub_1000045B8();
  [v95 v96];
  v97 = sub_1000045B8();
  [v97 v98];
  sub_10000638C();
  if (!v79)
  {
    goto LABEL_64;
  }

  __break(1u);
LABEL_68:
  sub_10012BC90(v5, v63, v128);
  if (!v127)
  {
    v118 = sub_1000045B8();
    [v118 v119];
    v120 = sub_1000045B8();
    [v120 v121];
    sub_10000638C();
    if (!v79)
    {
      goto LABEL_64;
    }

LABEL_81:
    __break(1u);
  }

  v99 = sub_1000045B8();
  [v99 v100];
  v101 = sub_1000045B8();
  [v101 v102];
  sub_10000638C();
  if (v79)
  {
    __break(1u);
LABEL_72:
    sub_10011DDBC();
    sub_100004248();
    sub_100007E20();
    _StringGuts.grow(_:)(38);

    sub_10000B13C();
    v131 = v104 + 16;
    v132 = v103;
    HIBYTE(v130) = v37;
    v105._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v105);

    sub_10000ACD8(v106, v107, v108, v109, v110, v111, v112, v113, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
    v114 = sub_1000045B8();
    [v114 v115];
    v116 = sub_1000045B8();
    [v116 v117];
    sub_10000638C();
    if (v79)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }

LABEL_64:
  *(v77 + 1080) = v78;
}

uint64_t static ProtoTagPathHelper.extractValues(from:property:block:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(_OWORD *))
{
  v9 = a3[3];
  v10 = a3[4];
  sub_100007534(a3, v9);
  v11 = *(v10 + 40);
  sub_100006828();
  result = v12(v9, v10);
  if (!v4)
  {
    v14 = a3[3];
    v15 = a3[4];
    sub_100007534(a3, v14);
    v16 = *(v15 + 32);
    sub_100006828();
    v29 = v17(v14, v15);
    v19 = a3[3];
    v18 = a3[4];
    sub_100007534(a3, v19);
    v20 = (*(v18 + 16))(v19, v18);
    if (v20)
    {
      __chkstk_darwin(v20);
      sub_10013E008(a1, a2, v29, sub_10013DFE8);
    }

    else
    {
      sub_100046184(&qword_10021C7A0, &qword_1001A1300);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100197F20;
      *(v21 + 32) = v29;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      sub_10011FB8C(v28, &v23);
      v22 = v21;
      static ProtoTagPathHelper.extractValue(from:pathAndType:)(a1, a2, &v22, v24);
      sub_10012F098(&v22);
      if (v25[25] == 255)
      {
        sub_10000F94C(v24, &qword_10021D078, &qword_1001A2370);
      }

      else
      {
        v26[0] = v24[0];
        v26[1] = v24[1];
        v27[0] = *v25;
        *(v27 + 10) = *&v25[10];
        a4(v26);
        sub_10002633C(v26);
      }
    }

    return sub_10011FBE8(v28);
  }

  return result;
}

void static ProtoTagPathHelper.extractAllValues(from:schema:block:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *, __int128 *))
{
  v8 = a3[3];
  v9 = a3[4];
  sub_100007534(a3, v8);
  v10 = *(v9 + 40);
  sub_100006828();
  v12 = v11(v8, v9);
  if (!v4)
  {
    v13 = v12;
    v14 = sub_10013DBEC(a1, a2);
    v30 = Data.count.getter();
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      while (1)
      {
        v15 = [v14 position];
        if ((v15 & 0x8000000000000000) == 0 && v15 >= v30)
        {
          break;
        }

        v16 = 0;
        v17 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v22 = 0;
            goto LABEL_17;
          }

          v31 = 0;
          v19 = [v14 position] + 1;
          if (v19 >= [v14 position] && (v20 = objc_msgSend(v14, "position") + 1, v20 <= objc_msgSend(v14, "length")))
          {
            v21 = [v14 data];
            [v21 getBytes:&v31 range:{objc_msgSend(v14, "position"), 1}];

            [v14 setPosition:{objc_msgSend(v14, "position") + 1}];
          }

          else
          {
            [v14 _setError];
          }

          v17 |= (v31 & 0x7F) << v16;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
        }

        if ([v14 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v17;
        }

LABEL_17:
        sub_10013E288(v22 & 7, v22 >> 3, v14, v13, a4);
      }

      v23 = sub_100007010();
      [v23 v24];
      v25 = sub_100007010();
      [v25 v26];
      sub_10000638C();
      if (!v29)
      {
        *(v27 + 1080) = v28;

        return;
      }
    }

    __break(1u);
  }
}

id sub_10013DB7C()
{
  sub_100046184(&qword_100214808, &unk_1001A2E40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100198F00;
  result = [objc_allocWithZone(PBDataReader) init];
  *(v0 + 32) = result;
  qword_10021E440 = v0;
  return result;
}

void *sub_10013DBEC(uint64_t a1, uint64_t a2)
{
  if (__OFADD__(qword_10021E438, 1))
  {
    __break(1u);
LABEL_16:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  v2 = a2;
  v3 = a1;
  ++qword_10021E438;
  while (1)
  {
    if (qword_10021BFD0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_10021E440 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((qword_10021E440 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = qword_10021E438;
    if (qword_10021E438 < v4)
    {
      break;
    }

    [objc_allocWithZone(PBDataReader) init];
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((qword_10021E440 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_10021E440 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  swift_beginAccess();
  v6 = qword_10021E440;
  sub_1001068A8(v5, (qword_10021E440 & 0xC000000000000001) == 0, qword_10021E440);
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  v7 = *(v6 + 8 * v5 + 32);
LABEL_14:
  v8 = v7;
  swift_endAccess();
  sub_10013EA9C(v3, v2, v8);
  return v8;
}

unint64_t sub_10013DDB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = String.index(after:)())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (String.subscript.getter() == a1 && v9 == a2)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

void sub_10013DEA0(void *a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v5 = a2;
  v7 = sub_10012BC40(a2);
  if (v7 == 6)
  {
    sub_10011DDBC();
    swift_allocError();
    v9 = v8;
    _StringGuts.grow(_:)(22);

    v12 = v5;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    *v9 = 0xD000000000000014;
    *(v9 + 8) = 0x80000001001B2E90;
    *(v9 + 41) = 12;
    swift_willThrow();
  }

  else
  {
    sub_10012BC90(a1, v7, &v11);
    if (!v3)
    {
      a3(&v11);
      sub_10002633C(&v11);
    }
  }
}

void sub_10013DFE8(void *a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_10013DEA0(a1, a2, *(v2 + 16));
}

void sub_10013E008(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, unint64_t))
{
  v15 = a4;
  v6 = sub_10013DBEC(a1, a2);
  v16 = Data.count.getter();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  do
  {
    while (1)
    {
      v7 = [v6 position];
      if ((v7 & 0x8000000000000000) == 0 && v7 >= v16)
      {
        [v6 seekToOffset:0];
        [v6 updateData:0];
        if (!__OFSUB__(qword_10021E438, 1))
        {
          --qword_10021E438;

          return;
        }

        goto LABEL_24;
      }

      v8 = v6;
      v9 = 0;
      v10 = 0;
      for (i = 0; ; ++i)
      {
        if (i > 9)
        {
          v10 = 0;
          goto LABEL_15;
        }

        v17 = 0;
        v12 = [v8 position] + 1;
        if (v12 >= [v8 position] && (v13 = objc_msgSend(v8, "position") + 1, v13 <= objc_msgSend(v8, "length")))
        {
          v14 = [v8 data];
          [v14 getBytes:&v17 range:{objc_msgSend(v8, "position"), 1}];

          [v8 setPosition:{objc_msgSend(v8, "position") + 1}];
        }

        else
        {
          [v8 _setError];
        }

        v10 |= (v17 & 0x7F) << v9;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
      }

      if ([v8 hasError])
      {
        v10 = 0;
      }

LABEL_15:
      if (a3 == (v10 >> 3))
      {
        break;
      }

      PBReaderSkipValueWithTag();
    }

    v15(v8, v10 & 7);
  }

  while (!v4);
  [v8 seekToOffset:0];
  [v8 updateData:0];
  if (__OFSUB__(qword_10021E438, 1))
  {
LABEL_25:
    __break(1u);
  }

  --qword_10021E438;
}

uint64_t sub_10013E288(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, void (*a5)(uint64_t *, __int128 *))
{
  sub_10014341C(a2, a4, &v22);
  if (v23)
  {
    sub_100008C84(&v22, v26);
    v10 = v27;
    v11 = v28;
    sub_100007534(v26, v27);
    (*(v11 + 40))(v25, v10, v11);
    if (!v5)
    {
      v12 = sub_10012BC40(a1);
      if (v12 == 6)
      {
        sub_10011DDBC();
        swift_allocError();
        v14 = v13;
        *&v22 = 0;
        *(&v22 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        *&v22 = 0xD000000000000014;
        *(&v22 + 1) = 0x80000001001B2E90;
        v24 = a1;
        v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v15);

        v16 = *(&v22 + 1);
        *v14 = v22;
        *(v14 + 8) = v16;
        *(v14 + 41) = 12;
        swift_willThrow();
      }

      else
      {
        sub_10012BC90(a3, v12, &v22);
        a5(v26, &v22);
        sub_10002633C(&v22);
      }

      sub_10011FBE8(v25);
    }

    return sub_100007378(v26);
  }

  else
  {
    sub_10000F94C(&v22, &qword_10021CC58, &qword_1001A16F0);
    sub_10011DDBC();
    swift_allocError();
    v18 = v17;
    *&v22 = 0x6761742068746977;
    *(&v22 + 1) = 0xE900000000000020;
    LODWORD(v25[0]) = a2;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20 = *(&v22 + 1);
    *v18 = v22;
    *(v18 + 8) = v20;
    *(v18 + 41) = 4;
    return swift_willThrow();
  }
}

unsigned __int8 *sub_10013E508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  sub_10013EBD0();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100107FD4();
    v42 = v41;

    v9 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v24 = v10 - 1;
        if (v10 != 1)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v16 = 0;
            v28 = result + 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              if (!is_mul_ok(v16, a5))
              {
                goto LABEL_128;
              }

              v31 = v16 * a5;
              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v16 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v20 = v16;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            if (!is_mul_ok(v36, a5))
            {
              goto LABEL_128;
            }

            v39 = v36 * a5;
            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            if (!is_mul_ok(v16, a5))
            {
              goto LABEL_128;
            }

            v21 = v16 * a5;
            v22 = v18 + v19;
            v23 = v21 >= v22;
            v16 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
LABEL_129:

        return v20;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v9) & 0xF;
  v71 = v8;
  v72 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v71;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v69 = v45 * a5;
          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v71 + 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v52 = v45 * a5;
          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v71 + 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        if (!is_mul_ok(v45, a5))
        {
          goto LABEL_128;
        }

        v61 = v45 * a5;
        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

void sub_10013EA9C(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 updateData:isa];
}

uint64_t sub_10013EAF4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10013EC24(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_10013EBD0()
{
  result = qword_10021E448;
  if (!qword_10021E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E448);
  }

  return result;
}

uint64_t sub_10013EC24(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1000F8AF4(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_97;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1000F8AF4(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1000F8AF4(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_93;
  }

  if (v23 < a4 >> 16)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v24 < v18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 48;
        v40 = a7 + 55;
        v41 = a7 + 87;
        if (a7 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v35;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (!is_mul_ok(v30, a7))
            {
              return 0;
            }

            v46 = v30 * a7;
            v47 = v44 + v45;
            v38 = __CFADD__(v46, v47);
            v30 = v46 + v47;
            if (v38)
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_96;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 48;
      v49 = a7 + 55;
      v50 = a7 + 87;
      if (a7 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v48)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              if (v51 < 0x61 || v51 >= v50)
              {
                return v35;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v53 = v30 * a7;
          v54 = v51 + v52;
          v38 = __CFADD__(v53, v54);
          v30 = v53 + v54;
          if (v38)
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v36 = v30 * a7;
          v37 = v33 + v34;
          v38 = v36 >= v37;
          v30 = v36 - v37;
          if (!v38)
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PBase64DecodeFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v5 = sub_100046184(&qword_10021E450, &unk_1001A2E50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for String.Encoding();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v16 = &v51 - v15;
  v17 = *(arguments._rawValue + 2);
  if ((v17 - 1) > 1)
  {
    v23._countAndFlagsBits = 0xD00000000000002CLL;
    v23._object = 0x80000001001B2EB0;
    SQLiteContext.setError(message:code:)(v23, -1);
    return;
  }

  v52 = v14;
  v53 = v13;
  v56 = v12;
  v18 = *(arguments._rawValue + 4);
  SQLiteArgument.getBase64EncodedData()(v18);
  if (v19 >> 60 == 15)
  {
    v20 = SQLiteArgument.getData()(v18);
    v22 = v21;
    SQLiteContext.setData(_:destructor:)(v20, v21, 1, with.context._rawValue);
    sub_100014A2C(v20, v22);
    return;
  }

  rawValue = with.context._rawValue;
  v51 = v2;
  while (2)
  {
    static String.Encoding.utf8.getter();
    sub_100003674();
    String.init(data:encoding:)();
    if (!v24)
    {
      goto LABEL_16;
    }

    v25 = Data.init(base64Encoded:options:)();
    v27 = v26;

    if (v27 >> 60 == 15)
    {
      goto LABEL_16;
    }

    switch(v27 >> 62)
    {
      case 1uLL:
        v28 = v25;
        v29 = v25 >> 32;
        goto LABEL_13;
      case 2uLL:
        v28 = *(v25 + 16);
        v29 = *(v25 + 24);
LABEL_13:
        if (v28 != v29)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      case 3uLL:
        goto LABEL_15;
      default:
        if ((v27 & 0xFF000000000000) != 0)
        {
LABEL_14:
          v30 = sub_100003674();
          sub_100014A40(v30, v31);
          continue;
        }

LABEL_15:
        sub_100014A2C(v25, v27);
LABEL_16:
        if (v17 == 2)
        {
          v32 = *(arguments._rawValue + 5);
          v33 = SQLiteArgument.getStringNonNull()();
          if (v34)
          {
            goto LABEL_20;
          }

          sub_10013F498(v8);
          v35 = v56;
          if (sub_100008D0C(v8, 1, v56) == 1)
          {
            sub_10013F568(v8);
            v55._countAndFlagsBits = 0;
            v55._object = 0xE000000000000000;
            _StringGuts.grow(_:)(23);

            v55._countAndFlagsBits = 0xD000000000000011;
            v55._object = 0x80000001001B2EE0;
            String.append(_:)(v33);

            v36._object = 0x80000001001B2F00;
            v36._countAndFlagsBits = 0xD000000000000011;
            String.append(_:)(v36);
            SQLiteContext.setError(message:code:)(v55, -1);

LABEL_20:
            v37 = sub_100003674();
            sub_100014A40(v37, v38);
          }

          else
          {

            v44 = v52;
            v43 = v53;
            (*(v53 + 32))(v52, v8, v35);
            (*(v43 + 16))(v16, v44, v35);
            sub_100003674();
            v45 = String.init(data:encoding:)();
            if (v46)
            {
              SQLiteContext.setString(_:destructor:)(v45, v46, 1, rawValue);
              v47 = sub_100003674();
              sub_100014A40(v47, v48);
            }

            else
            {
              SQLiteContext.setNull()();
              v49 = sub_100003674();
              sub_100014A40(v49, v50);
            }

            (*(v43 + 8))(v44, v35);
          }
        }

        else
        {
          v39 = sub_100003674();
          SQLiteContext.setData(_:destructor:)(v39, v40, 1, rawValue);
          v41 = sub_100003674();
          sub_100014A40(v41, v42);
        }

        return;
    }
  }
}

uint64_t sub_10013F498@<X0>(uint64_t a1@<X8>)
{
  v2 = String.lowercased()();

  if (v2._countAndFlagsBits == 946238581 && v2._object == 0xE400000000000000)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v5 = 1;
      goto LABEL_9;
    }
  }

  static String.Encoding.utf8.getter();
  v5 = 0;
LABEL_9:
  v6 = type metadata accessor for String.Encoding();

  return sub_1000051C0(a1, v5, 1, v6);
}

uint64_t sub_10013F568(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021E450, &unk_1001A2E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PBGetFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = *(arguments._rawValue + 2);
  if (!v3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v6 = SQLiteArgument.getUnsafeData()(*(arguments._rawValue + 4));
  if (v7 >> 60 == 15)
  {
    sub_10011DC44();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 6;
    *(v8 + 24) = 4;
    swift_willThrow();
    return;
  }

  if (v3 == 1)
  {
    goto LABEL_44;
  }

  v9 = v6;
  v10 = v7;
  rawValue = arguments._rawValue;
  v43 = v3;
  v11 = sqlite3_value_text(*(arguments._rawValue + 5));
  if (!v11)
  {
    sub_10011DDBC();
    swift_allocError();
    *v36 = 0xD000000000000024;
    *(v36 + 8) = 0x80000001001B2F50;
    *(v36 + 41) = 0;
    swift_willThrow();
    sub_100014A2C(v9, v10);
    return;
  }

  v12 = v11;
  v39 = with.context._rawValue;
  v40 = v9;
  v13 = *v11;
  if (*v11)
  {
    v14 = 0;
    v15 = 0;
    v41 = v2;
    while (2)
    {
      v16 = 0;
      ++v12;
      while ((v13 - 58) >= 0xF6u)
      {
        if (!is_mul_ok(v16, 0xAuLL))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v17 = __CFADD__(10 * v16, (v13 - 48));
        v16 = 10 * v16 + (v13 - 48);
        if (v17)
        {
          goto LABEL_40;
        }

        v18 = *v12++;
        v13 = v18;
      }

      v19 = v13 == 105;
      if (v13 == 105)
      {
        v14 = v16;
LABEL_31:
        v13 = *v12;
        v15 = v19;
        if (*v12)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v15)
    {
      if (!v14)
      {
        goto LABEL_32;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        sub_1000045C4();
        v20 = *(v2 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 48) = v20;
        v22 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100003D8C();
          v20 = v29;
          *(v41 + 48) = v29;
        }

        v23 = *(v20 + 16);
        if (v23 >= *(v20 + 24) >> 1)
        {
          sub_10000639C();
          v20 = v30;
        }

        *(v20 + 16) = v23 + 1;
        v24 = v20 + 24 * v23;
        v14 = v22;
        *(v24 + 32) = v22;
        *(v24 + 40) = v16;
        *(v24 + 48) = 1;
        v2 = v41;
        *(v41 + 48) = v20;
        swift_endAccess();
        if (!v13)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_43;
    }

    if (!v16)
    {
      goto LABEL_32;
    }

    if ((v16 & 0x8000000000000000) == 0)
    {
      sub_1000045C4();
      v25 = *(v2 + 48);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 48) = v25;
      v48 = v14;
      if ((v26 & 1) == 0)
      {
        sub_100003D8C();
        v25 = v31;
        *(v2 + 48) = v31;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_10000639C();
        v25 = v32;
      }

      *(v25 + 16) = v27 + 1;
      v28 = v25 + 24 * v27;
      *(v28 + 32) = v16;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v2 + 48) = v25;
      swift_endAccess();
      v14 = v48;
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_32:
  if (v43 < 3)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v33 = sqlite3_value_text(rawValue[6]);
  if (!v33)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v34 = *v33;
  swift_beginAccess();
  v35 = *(v2 + 48);
  sub_100142AB0(v34, &v44);
  if (v45[24] == 255)
  {
    sub_10013FAAC(&v44);
    v37._object = 0x80000001001B2F80;
    v37._countAndFlagsBits = 0xD000000000000017;
    SQLiteContext.setError(message:code:)(v37, -1);
    sub_100014A2C(v40, v10);
  }

  else
  {
    v46 = v44;
    v47[0] = *v45;
    *(v47 + 9) = *&v45[9];
    sub_10011FB8C(&v46, &v44 + 8);
    *&v44 = v35;

    sub_100142B50(v39, v40, v10, &v44);
    sub_100014A2C(v40, v10);
    sub_10012F098(&v44);
    sub_10011FBE8(&v46);
  }

  v38 = *(v2 + 48);
  *(v2 + 48) = _swiftEmptyArrayStorage;
}

uint64_t PBGetFunction.deinit()
{
  v0 = SQLiteBaseFunction.deinit();
  swift_weakDestroy();
  v1 = *(v0 + 48);

  return v0;
}

uint64_t PBGetFunction.__deallocating_deinit()
{
  v0 = PBGetFunction.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10013FAAC(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021E590, &qword_1001A2E78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PGetFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = *(arguments._rawValue + 2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(arguments._rawValue + 4);
  if (SQLiteArgument.isNull.getter(v6))
  {
    SQLiteContext.setNull()();
    return;
  }

  sub_10011DE10();
  if (!v2)
  {
    SQLiteBaseSchematizer.getSQLiteBridge()();
    v8 = v7;

    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 24))(v6, ObjectType, v8);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    swift_unknownObjectRelease();
    if (v3 != 1)
    {
      v17 = *(arguments._rawValue + 5);
      v18 = SQLiteArgument.getStringNonNull()();
      if (v19)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_100131258(v18._countAndFlagsBits, v18._object, with.context._rawValue, v10, v12, v14, v16);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      return;
    }

LABEL_11:
    __break(1u);
  }
}

uint64_t *SchemaStoreModel.emptyStore.unsafeMutableAddressor()
{
  if (qword_10021BFD8 != -1)
  {
    sub_1000045E4();
  }

  return &static SchemaStoreModel.emptyStore;
}

uint64_t SchemaStoreModel.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(a2 + 8))(ObjectType, a2);
  Dictionary.init(dictionaryLiteral:)();
  v7 = v5 + 56;
  v6 = *(v5 + 56);
  v8 = *(v5 + 32);
  sub_100004154();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v103 = a2;
  v104 = v14;

  v15 = 0;
  v100 = v13;
  if (v11)
  {
    while (1)
    {
      v16 = v15;
LABEL_6:
      v17 = (*(v5 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v11)))));
      v19 = *v17;
      v18 = v17[1];
      v20 = *(v103 + 40);

      v20(v106, v19, v18, ObjectType, v103);
      if (v3)
      {
        break;
      }

      MessageSchemaModel.init(_:dontCopy:)(v106, 0);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v11 &= v11 - 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106[0] = v104;
      sub_1001360EC(v22, v24, v26, v19, v18, isUniquelyReferenced_nonNull_native);

      v104 = v106[0];
      v15 = v16;
      v3 = 0;
      v13 = v100;
      v7 = v5 + 56;
      if (!v11)
      {
        goto LABEL_3;
      }
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    while (1)
    {
LABEL_3:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v16 >= v13)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v15;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    v28 = (*(v103 + 16))(ObjectType, v103);
    Dictionary.init(dictionaryLiteral:)();
    v30 = v28 + 56;
    v29 = *(v28 + 56);
    v31 = *(v28 + 32);
    sub_100004154();
    v34 = v33 & v32;
    v36 = (v35 + 63) >> 6;
    v101 = v37;

    v38 = 0;
    v99 = v28;
    v92 = v36;
    v93 = v28 + 56;
    if (v34)
    {
      goto LABEL_14;
    }

LABEL_10:
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v36)
      {

        swift_unknownObjectRelease();
        return v104;
      }

      v34 = *(v30 + 8 * v39);
      ++v38;
      if (v34)
      {
        v38 = v39;
        while (1)
        {
LABEL_14:
          v94 = v34;
          v95 = v38;
          v40 = (*(v28 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v34)))));
          v41 = *v40;
          v42 = v40[1];
          v43 = *(v103 + 48);

          v43(v106, v41, v42, ObjectType, v103);
          if (v3)
          {

            swift_unknownObjectRelease();
          }

          v44 = Dictionary.init(dictionaryLiteral:)();
          v45 = v107;
          v46 = v108;
          sub_100007534(v106, v107);
          v47 = (*(v46 + 16))(v45, v46);
          v96 = *(v47 + 16);
          if (v96)
          {
            break;
          }

LABEL_34:

          sub_100007378(v106);
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v106[0] = v101;
          v75 = sub_100005B74(v41, v42);
          v77 = *(v101 + 16);
          v78 = (v76 & 1) == 0;
          v79 = v77 + v78;
          if (__OFADD__(v77, v78))
          {
            goto LABEL_53;
          }

          v80 = v75;
          v81 = v76;
          sub_100046184(&qword_10021E190, &qword_1001A2B60);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v74, v79))
          {
            v82 = sub_100005B74(v41, v42);
            if ((v81 & 1) != (v83 & 1))
            {
              goto LABEL_55;
            }

            v80 = v82;
          }

          v84 = v106[0];
          v101 = v106[0];
          if (v81)
          {
            v85 = *(v106[0] + 56);
            v86 = *(v85 + 8 * v80);
            *(v85 + 8 * v80) = v44;
          }

          else
          {
            *(v106[0] + 8 * (v80 >> 6) + 64) |= 1 << v80;
            v87 = (v84[6] + 16 * v80);
            *v87 = v41;
            v87[1] = v42;
            *(v84[7] + 8 * v80) = v44;
            v88 = v84[2];
            v71 = __OFADD__(v88, 1);
            v89 = v88 + 1;
            if (v71)
            {
              goto LABEL_54;
            }

            v84[2] = v89;
          }

          v28 = v99;
          v36 = v92;
          v30 = v93;
          v38 = v95;
          v34 = (v94 - 1) & v94;
          if (!v34)
          {
            goto LABEL_10;
          }
        }

        v48 = 0;
        v49 = v47 + 32;
        v98 = v47;
        v91 = v47 + 32;
LABEL_17:
        if (v48 < *(v47 + 16))
        {
          v50 = (v49 + 8 * v48);
          v52 = *v50;
          v51 = v50[1];
          v97 = v48 + 1;
          while (1)
          {
            if (v52 == v51)
            {
              v53 = 0;
            }

            else
            {
              if (v52 == 0x7FFFFFFF)
              {
                goto LABEL_49;
              }

              v53 = v52 + 1;
            }

            v54 = v107;
            v55 = v108;
            sub_100007534(v106, v107);
            v56 = (*(v55 + 32))(v52, v54, v55);
            v58 = v57;
            v105 = v53;
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v109 = v44;
            v60 = sub_100005B74(v56, v58);
            v62 = v44[2];
            v63 = (v61 & 1) == 0;
            v64 = v62 + v63;
            if (__OFADD__(v62, v63))
            {
              goto LABEL_48;
            }

            v65 = v60;
            v66 = v61;
            sub_100046184(&unk_1002167A0, &unk_10019AD50);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v59, v64))
            {
              v67 = sub_100005B74(v56, v58);
              if ((v66 & 1) != (v68 & 1))
              {
                goto LABEL_55;
              }

              v65 = v67;
            }

            if (v66)
            {

              v44 = v109;
              *(v109[7] + 4 * v65) = v52;
            }

            else
            {
              v44 = v109;
              v109[(v65 >> 6) + 8] |= 1 << v65;
              v69 = (v44[6] + 16 * v65);
              *v69 = v56;
              v69[1] = v58;
              *(v44[7] + 4 * v65) = v52;
              v70 = v44[2];
              v71 = __OFADD__(v70, 1);
              v72 = v70 + 1;
              if (v71)
              {
                goto LABEL_50;
              }

              v44[2] = v72;
            }

            v73 = v52 == v51;
            v52 = v105;
            v3 = 0;
            if (v73)
            {
              v48 = v97;
              v47 = v98;
              v49 = v91;
              if (v97 != v96)
              {
                goto LABEL_17;
              }

              goto LABEL_34;
            }
          }
        }

        goto LABEL_52;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100140460()
{
  v0 = Dictionary.init(dictionaryLiteral:)();
  result = Dictionary.init(dictionaryLiteral:)();
  static SchemaStoreModel.emptyStore = v0;
  *algn_100232DB8 = result;
  return result;
}

uint64_t static SchemaStoreModel.emptyStore.getter()
{
  if (qword_10021BFD8 != -1)
  {
    sub_1000045E4();
  }

  v0 = static SchemaStoreModel.emptyStore;

  return v0;
}

uint64_t sub_10014053C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73616D65686373 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D756E65 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100140600(char a1)
{
  if (a1)
  {
    return 0x736D756E65;
  }

  else
  {
    return 0x73616D65686373;
  }
}

uint64_t sub_10014063C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10014053C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100140664(uint64_t a1)
{
  v2 = sub_100140C34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001406A0(uint64_t a1)
{
  v2 = sub_100140C34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SchemaStoreModel.init(from:)(uint64_t *a1)
{
  v3 = sub_100046184(&qword_10021E828, &qword_1001A2EB0);
  v4 = sub_100003BC8(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a1[3];
  sub_100007534(a1, v7);
  sub_100140C34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100046184(&qword_10021E838, &qword_1001A2EB8);
    sub_100140DA4(&qword_10021E840, sub_100140C88);
    sub_1000086FC();
    v7 = v11;
    if (!v11)
    {
      v7 = Dictionary.init(dictionaryLiteral:)();
    }

    sub_100046184(&qword_10021E850, &qword_1001A2EC0);
    sub_100140CDC(&qword_10021E858, sub_100140D50);
    sub_1000086FC();
    if (!v11)
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    v9 = sub_10000F6C0();
    v10(v9);
    sub_100007378(a1);
  }

  return v7;
}

uint64_t SchemaStoreModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100046184(&qword_10021E868, &qword_1001A2EC8);
  v9 = sub_100003BC8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v18 - v14;
  v16 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_100140C34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!*(a2 + 16) || (v20 = a2, v19 = 0, sub_100046184(&qword_10021E838, &qword_1001A2EB8), sub_100140DA4(&qword_10021E870, sub_100140E18), sub_100003D34(), !v3))
  {
    if (*(a3 + 16))
    {
      v20 = a3;
      v19 = 1;
      sub_100046184(&qword_10021E850, &qword_1001A2EC0);
      sub_100140CDC(&qword_10021E880, sub_100140E6C);
      sub_100003D34();
    }
  }

  return (*(v11 + 8))(v15, v4);
}

void static SchemaStoreModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10011C340(a1, a3);
  if (v6)
  {

    sub_10011C558(a2, a4);
  }
}

uint64_t sub_100140BAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SchemaStoreModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_100140C08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1000063C0(a1, a2, a3, a4, a5);
  *(v8 + 4 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_100003DB0(v6, v11);
  }
}

unint64_t sub_100140C34()
{
  result = qword_10021E830;
  if (!qword_10021E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E830);
  }

  return result;
}

unint64_t sub_100140C88()
{
  result = qword_10021E848;
  if (!qword_10021E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E848);
  }

  return result;
}

uint64_t sub_100140CDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021E850, &qword_1001A2EC0);
    a2();
    result = sub_10000DFB8();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100140D50()
{
  result = qword_10021E860;
  if (!qword_10021E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E860);
  }

  return result;
}

uint64_t sub_100140DA4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021E838, &qword_1001A2EB8);
    a2();
    result = sub_10000DFB8();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100140E18()
{
  result = qword_10021E878;
  if (!qword_10021E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E878);
  }

  return result;
}

unint64_t sub_100140E6C()
{
  result = qword_10021E888;
  if (!qword_10021E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E888);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SchemaStoreModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100140FB0()
{
  result = qword_10021E890;
  if (!qword_10021E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E890);
  }

  return result;
}

unint64_t sub_100141008()
{
  result = qword_10021E898;
  if (!qword_10021E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E898);
  }

  return result;
}

unint64_t sub_100141060()
{
  result = qword_10021E8A0;
  if (!qword_10021E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E8A0);
  }

  return result;
}

void sub_1001410B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1000063C0(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_100003DB0(v6, v11);
  }
}

unint64_t sub_1001410E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_10014114C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1000063C0(a1, a2, a3, a4, a5);
  result = v9(v8, v7 + 40 * v6);
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

void sub_100141198(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1000063C0(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_100003DB0(v6, v13);
  }
}

uint64_t sub_1001411F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 98))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_100141230(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001412C0(unsigned __int8 a1, char a2)
{
  v2 = 7630441;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7630441;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x3436746E69;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1953393013;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x3436746E6975;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x74616F6C66;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x656C62756F64;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1819242338;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v5 = 1836412517;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1635017060;
      break;
    case 9:
      v3 = 0xE600000000000000;
      v5 = 0x676E69727473;
      break;
    case 10:
      v3 = 0xE600000000000000;
      v5 = 0x616D65686373;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x3436746E69;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1953393013;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x3436746E6975;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x74616F6C66;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x656C62756F64;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1819242338;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v2 = 1836412517;
      break;
    case 8:
      v6 = 0xE400000000000000;
      v2 = 1635017060;
      break;
    case 9:
      v6 = 0xE600000000000000;
      v2 = 0x676E69727473;
      break;
    case 10:
      v6 = 0xE600000000000000;
      v2 = 0x616D65686373;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001414E8(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100141548(uint64_t a1, void (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  a2(a1);
  sub_100005F34();

  return Hasher._finalize()();
}

uint64_t sub_1001415A0()
{
  String.hash(into:)();
}

uint64_t sub_1001416C0()
{
  String.hash(into:)();
}

Swift::Int sub_100141794(uint64_t a1, Swift::UInt8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1001417F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  sub_100005F34();

  return Hasher._finalize()();
}

Schematizer::TypeModel_optional __swiftcall TypeModel.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001FEAA0, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t TypeModel.rawValue.getter(char a1)
{
  result = 7630441;
  switch(a1)
  {
    case 1:
      result = 0x3436746E69;
      break;
    case 2:
      result = 1953393013;
      break;
    case 3:
      result = 0x3436746E6975;
      break;
    case 4:
      result = 0x74616F6C66;
      break;
    case 5:
      result = 0x656C62756F64;
      break;
    case 6:
      result = 1819242338;
      break;
    case 7:
      result = 1836412517;
      break;
    case 8:
      result = 1635017060;
      break;
    case 9:
      result = 0x676E69727473;
      break;
    case 10:
      result = 0x616D65686373;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10014198C()
{
  result = qword_10021E950;
  if (!qword_10021E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E950);
  }

  return result;
}

Schematizer::TypeModel_optional sub_100141A48@<W0>(Swift::String *a1@<X0>, Schematizer::TypeModel_optional *a2@<X8>)
{
  result.value = TypeModel.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100141A78@<X0>(uint64_t *a1@<X8>)
{
  result = TypeModel.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for TypeModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TypeModel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        break;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100141CB8()
{
  result = qword_10021E958;
  if (!qword_10021E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E958);
  }

  return result;
}

void sub_100141D0C(int a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
LABEL_12:
    sub_100135B60();
    v14 = *(*v1 + 16);
    sub_100135C04(v14);
    v15 = *v1;
    *(v15 + 16) = v14 + 1;
    *(v15 + 8 * v14 + 32) = vdup_n_s32(v2);
    *v1 = v15;
    return;
  }

  v5 = 0;
  for (i = 24; ; i += 8)
  {
    if (v4 == v5)
    {
      v5 = v4 - 1;
      v8 = (v3 + 32 + 8 * (v4 - 1));
      v9 = v8[1];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        if (v11 != a1)
        {
          goto LABEL_12;
        }

        i = *v8;
        if (i <= a1)
        {
          v12 = *v1;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_10:
            if (v4 <= *(v3 + 16))
            {
              v13 = v3 + 8 * v5;
              *(v13 + 32) = i;
              *(v13 + 36) = v2;
              goto LABEL_33;
            }

            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          sub_1000063F0();
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v7 = *(v3 + i + 8);
    if (v7 > a1)
    {
      break;
    }

    ++v5;
  }

  if (i == 24)
  {
    goto LABEL_22;
  }

  v16 = *(v3 + i + 4);
  v10 = __OFADD__(v16, 1);
  v17 = v16 + 1;
  if (v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v17 != a1)
  {
LABEL_22:
    if (v7 - 1 != a1)
    {

      sub_100142750(v5, v5, a1 | (a1 << 32));
      return;
    }

    LODWORD(v5) = *(v3 + i + 12);
    if (v5 >= a1)
    {
      v21 = *v1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v22 = v3 + i;
        *(v22 + 8) = v2;
        *(v22 + 12) = v5;
        goto LABEL_33;
      }

LABEL_40:
      sub_1000063F0();
      goto LABEL_25;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = *(v3 + i);
  if (v7 - 1 != a1)
  {
    if (v18 > a1)
    {
      goto LABEL_42;
    }

    v23 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000063F0();
    }

    v24 = (v3 + i);
    *v24 = v18;
    v24[1] = v2;
LABEL_33:
    *v1 = v3;
    return;
  }

  v2 = *(v3 + i + 12);
  if (v2 >= v18)
  {
    v19 = *v1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_1000063F0();
LABEL_19:
  v20 = (v3 + i);
  *v20 = v18;
  v20[1] = v2;
  *v1 = v3;

  sub_10014218C(v5);
}

void sub_100141F3C(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
LABEL_12:
    sub_100135B78();
    v14 = *(*v1 + 16);
    sub_100135C1C(v14);
    v15 = *v1;
    *(v15 + 16) = v14 + 1;
    *(v15 + 16 * v14 + 32) = vdupq_n_s64(v2);
    *v1 = v15;
    return;
  }

  v5 = 0;
  for (i = 24; ; i += 16)
  {
    if (v4 == v5)
    {
      v5 = v4 - 1;
      v8 = (v3 + 32 + 16 * (v4 - 1));
      v9 = v8[1];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        if (v11 != a1)
        {
          goto LABEL_12;
        }

        i = *v8;
        if (*v8 <= a1)
        {
          v12 = *v1;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_10:
            if (v4 <= *(v3 + 16))
            {
              v13 = v3 + 16 * v5;
              *(v13 + 32) = i;
              *(v13 + 40) = v2;
              goto LABEL_33;
            }

            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          sub_1001428D4(v3);
          v3 = v25;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v7 = *(v3 + i + 8);
    if (v7 > a1)
    {
      break;
    }

    ++v5;
  }

  if (i == 24)
  {
    goto LABEL_22;
  }

  v16 = *(v3 + i);
  v10 = __OFADD__(v16, 1);
  v17 = v16 + 1;
  if (v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v17 != a1)
  {
LABEL_22:
    if (v7 - 1 != a1)
    {

      sub_100142800(v5, v5, a1, a1);
      return;
    }

    v5 = *(v3 + i + 16);
    if (v5 >= a1)
    {
      v21 = *v1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v22 = v3 + i;
        *(v22 + 8) = v2;
        *(v22 + 16) = v5;
        goto LABEL_33;
      }

LABEL_40:
      sub_1001428D4(v3);
      v3 = v26;
      goto LABEL_25;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = *(v3 + i - 8);
  if (v7 - 1 != a1)
  {
    if (v18 > a1)
    {
      goto LABEL_42;
    }

    v23 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001428D4(v3);
      v3 = v28;
    }

    v24 = (v3 + i);
    *(v24 - 1) = v18;
    *v24 = v2;
LABEL_33:
    *v1 = v3;
    return;
  }

  v2 = *(v3 + i + 16);
  if (v2 >= v18)
  {
    v19 = *v1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_1001428D4(v3);
  v3 = v27;
LABEL_19:
  v20 = (v3 + i);
  *(v20 - 1) = v18;
  *v20 = v2;
  *v1 = v3;

  sub_100142208(v5);
}

void sub_10014218C(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001428C0(v3);
    v3 = v9;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    sub_100115B50((v7 + 40), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_100142208(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001428D4(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    sub_10001B82C((v7 + 48), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_100142290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  swift_bridgeObjectRetain_n();
  v3[5] = sub_100138B30(a3);
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_100141F3C(*(*(a3 + 56) + ((v12 << 9) | (8 * v13))));
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      v3[6] = _swiftEmptyArrayStorage;
      v3[2] = a1;
      v3[3] = a2;
      return;
    }

    v9 = *(a3 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1001423C8(uint64_t a1, void *a2)
{
  v5 = *(v2 + 32);
  if (*(v5 + 16))
  {
    v6 = sub_100005B74(a1, a2);
    if (v7)
    {
      return *(*(v5 + 56) + 8 * v6);
    }
  }

  sub_10011DDBC();
  swift_allocError();
  v10 = v9;
  _StringGuts.grow(_:)(29);

  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  *v10 = 0xD00000000000001BLL;
  *(v10 + 8) = 0x80000001001B3090;
  *(v10 + 41) = 4;
  return swift_willThrow();
}

unint64_t *sub_1001424B8(unint64_t *result)
{
  v2 = 0;
  v3 = *(v1 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v8 << 6);
    if (*(*(v3 + 56) + 8 * v10) == result)
    {
      v11 = (*(v3 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];

      return v12;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      sub_10011DDBC();
      swift_allocError();
      v15 = v14;
      _StringGuts.grow(_:)(28);

      v18 = 0xD00000000000001ALL;
      v19 = 0x80000001001B3070;
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = &v18;
      String.append(_:)(v16);

      v17 = v19;
      *v15 = v18;
      *(v15 + 8) = v17;
      *(v15 + 41) = 4;
      swift_willThrow();
      return v12;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100142640()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];
}

void *sub_100142678()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t sub_1001426B0()
{
  sub_100142678();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100142750(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __OFSUB__(1, v7);
  v9 = 1 - v7;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v5 + v9;
  if (__OFADD__(v5, v9))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1001428E8(result, 1, sub_100123220);

  return sub_100142960(v6, a2, 1, a3);
}

uint64_t sub_100142800(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v4 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1001428E8(result, 1, sub_1001233FC);

  return sub_100142A08(v7, a2, 1, a3, a4);
}

uint64_t sub_1001428E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

char *sub_100142960(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = (v10 + 8 * result);
  if (v7)
  {
    v12 = *(v9 + 16);
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (!v13)
    {
      result = sub_100115B50((v10 + 8 * a2), v14, &v11[a3]);
      v15 = *(v9 + 16);
      v13 = __OFADD__(v15, v7);
      v16 = v15 + v7;
      if (!v13)
      {
        *(v9 + 16) = v16;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

char *sub_100142A08(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *v5;
  v12 = *v5 + 32;
  v13 = (v12 + 16 * result);
  if (v8)
  {
    v14 = *(v11 + 16);
    v15 = __OFSUB__(v14, a2);
    v16 = v14 - a2;
    if (!v15)
    {
      result = sub_10001B82C((v12 + 16 * a2), v16, &v13[2 * a3]);
      v17 = *(v11 + 16);
      v15 = __OFADD__(v17, v8);
      v18 = v17 + v8;
      if (!v15)
      {
        *(v11 + 16) = v18;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v13 = a4;
    v13[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_100142AB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 'u':
      v2 = 1;
      goto LABEL_16;
    case 'U':
      v2 = 3;
      goto LABEL_16;
    case 'b':
      v2 = 8;
      goto LABEL_16;
    case 'd':
      v2 = 5;
      goto LABEL_16;
    case 'i':
      v2 = 0;
      goto LABEL_16;
    case 't':
      v2 = 7;
      goto LABEL_16;
    case 'I':
      v2 = 2;
LABEL_16:
      *a2 = v2;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      v3 = 2;
      goto LABEL_17;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = -1;
LABEL_17:
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_100142B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static ProtoTagPathHelper.extractValue(from:pathAndType:)(a2, a3, a4, &v6);
  sub_1001314A4(a1, 0, 0);
  return sub_10000F94C(&v6, &qword_10021D078, &qword_1001A2370);
}

uint64_t sub_100142E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

char *sub_100142F70(char *a1, int64_t a2, char a3)
{
  result = sub_100142FD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100142F90(char *a1, int64_t a2, char a3)
{
  result = sub_1001430E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100142FB0(char *a1, int64_t a2, char a3)
{
  result = sub_1001431EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100142FD0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100046184(&qword_10021EA48, &unk_1001A3400);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_100123794((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100046184(&qword_10021CC90, &qword_1001A1730);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1001430E8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100046184(&qword_1002153A8, &qword_1001996B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_100115A08((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1001431EC(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100046184(&qword_10021EA40, &qword_1001A33F8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1001237C4((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001432F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005B74(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 24 * v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];

  return v7;
}

uint64_t sub_100143374@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = xmmword_1001A3410;
  if (*(a3 + 16))
  {
    v12 = xmmword_1001A3410;
    result = sub_100005B74(result, a2);
    if (v7)
    {
      v8 = (*(a3 + 56) + 40 * result);
      v9 = *v8;
      v10 = *(v8 + 1);
      v12 = *(v8 + 1);
      v11 = v8[32];
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }

    v5 = v12;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  *a4 = v9;
  *(a4 + 8) = v10;
  *(a4 + 16) = v5;
  *(a4 + 32) = v11;
  return result;
}

double sub_10014341C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_1000BBA18(a1), (v5 & 1) != 0))
  {
    sub_100008BB0(v4);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t static ProtoFirstOfHelper.getFirst<A>(ofTags:fromData:atTagPath:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a1;
  v66 = a6;
  v62 = *(a5 - 8);
  v10 = *(v62 + 64);
  __chkstk_darwin(a1);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10021BFE0 != -1)
  {
    sub_100003DB8();
  }

  v13 = qword_10021EA50;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v13 updateData:isa];

  v15 = sub_1000045B8();
  [v15 v16];
  v17 = *(a4 + 16);
  v18 = Data.count.getter();
  if (v18 < 0)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v19 = v18;
  v64 = v6;
  if (v17)
  {
    v20 = 0;
    v21 = a4 + 32;
    v60 = a4 + 32;
    v61 = v17;
    while (1)
    {
      v63 = v20;
      v22 = *(v21 + 8 * v20);
      while (1)
      {
        v23 = [v13 position];
        if ((v23 & 0x8000000000000000) == 0 && v23 >= v19)
        {
          goto LABEL_56;
        }

        v24 = 0;
        v25 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v30 = 0;
            goto LABEL_21;
          }

          LOBYTE(v68) = 0;
          [v13 position];
          if (a2 >= [sub_10000640C() position] && (objc_msgSend(v13, "position"), a2 <= objc_msgSend(sub_10000640C(), "length")))
          {
            [v13 data];
            objc_claimAutoreleasedReturnValue();
            v27 = sub_10000DFD8();
            sub_100004604(v27);

            sub_10000AD00([v13 position]);
          }

          else
          {
            [v13 _setError];
          }

          sub_100006CD8();
          v25 |= v28;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
        }

        v30 = [v13 hasError] ? 0 : v25;
LABEL_21:
        a2 = v30 & 7;
        if (v22 == (v30 >> 3))
        {
          break;
        }

        PBReaderSkipValueWithTag();
      }

      if (a2 != 2)
      {
        break;
      }

      v31 = 0;
      v32 = 0;
      for (j = 0; ; ++j)
      {
        if (j > 9)
        {
          a2 = 0;
          goto LABEL_37;
        }

        LOBYTE(v68) = 0;
        [v13 position];
        if (a2 >= [sub_10000640C() position] && (objc_msgSend(v13, "position"), a2 <= objc_msgSend(sub_10000640C(), "length")))
        {
          [v13 data];
          objc_claimAutoreleasedReturnValue();
          v34 = sub_10000DFD8();
          sub_100004604(v34);

          sub_10000AD00([v13 position]);
        }

        else
        {
          [v13 _setError];
        }

        sub_100006CD8();
        v32 |= v35;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
      }

      if ([v13 hasError])
      {
        a2 = 0;
      }

      else
      {
        a2 = v32;
      }

      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

LABEL_37:
      v37 = [v13 position];
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      v20 = v63 + 1;
      v19 = (v37 + a2);
      v21 = v60;
      if (v63 + 1 == v61)
      {
        goto LABEL_39;
      }
    }

    sub_10011DDBC();
    sub_100004248();
    v54 = v53;
    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v68 = 0xD000000000000024;
    v69 = 0x80000001001B23E0;
    v67 = a2;
    v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v55._object;
    String.append(_:)(v55);

    v56 = v69;
    *v54 = v68;
    *(v54 + 8) = v56;
    *(v54 + 41) = 12;
    swift_willThrow();
    v57 = sub_1000045B8();
    [v57 v58];
  }

  else
  {
LABEL_39:
    v38 = (v62 + 8);
    while (1)
    {
      v39 = [v13 position];
      if ((v39 & 0x8000000000000000) == 0 && v39 >= v19)
      {
        break;
      }

      v40 = 0;
      v41 = 0;
      for (k = 0; ; ++k)
      {
        if (k > 9)
        {
          v46 = 0;
          goto LABEL_54;
        }

        LOBYTE(v68) = 0;
        [v13 position];
        if (a2 >= [sub_10000640C() position] && (objc_msgSend(v13, "position"), a2 <= objc_msgSend(sub_10000640C(), "length")))
        {
          [v13 data];
          objc_claimAutoreleasedReturnValue();
          v43 = sub_10000DFD8();
          sub_100004604(v43);

          sub_10000AD00([v13 position]);
        }

        else
        {
          [v13 _setError];
        }

        sub_100006CD8();
        v41 |= v44;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v40 += 7;
      }

      if ([v13 hasError])
      {
        v46 = 0;
      }

      else
      {
        v46 = v41;
      }

LABEL_54:
      a2 = v46 >> 3;
      LODWORD(v68) = v46 >> 3;
      v47 = v66;
      v48 = *(v66 + 8);
      sub_100144200();
      dispatch thunk of BinaryInteger.init<A>(_:)();
      LOBYTE(v48) = IntegerSet.contains(_:)(v12, v65, a5, v47);
      (*v38)(v12, a5);
      if (v48)
      {
        object = (v46 >> 3);
        goto LABEL_57;
      }

      PBReaderSkipValueWithTag();
    }

LABEL_56:
    object = 0;
LABEL_57:
    v50 = sub_1000045B8();
    [v50 v51];
  }

  return object;
}

id static ProtoFirstOfHelper.getOneOfValue<A>(ofTags:messageSchema:fromData:atTagPath:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v65 = a5;
  v58[0] = a2;
  v64 = a1;
  v60 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v63 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10021BFE0 != -1)
  {
    sub_100003DB8();
  }

  v12 = qword_10021EA50;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v12 updateData:isa];

  v14 = sub_1000045B8();
  [v14 v15];
  v16 = a3[2];
  v17 = Data.count.getter();
  if (v17 < 0)
  {
    __break(1u);
    __break(1u);
    __break(1u);
  }

  v18 = v17;
  v59 = v9;
  v19 = &selRef_resultWithError_;
  v61 = v6;
  if (!v16)
  {
    v27 = (v59 + 8);
    for (i = v17; ; v18 = i)
    {
      v28 = [v12 v19[216]];
      if ((v28 & 0x8000000000000000) == 0 && v28 >= v18)
      {
        goto LABEL_36;
      }

      v29 = 0;
      for (j = 0; j <= 9; ++j)
      {
        LOBYTE(v67) = 0;
        [v12 position];
        if (a3 >= [sub_10000640C() position] && (objc_msgSend(v12, "position"), a3 <= objc_msgSend(sub_10000640C(), "length")))
        {
          [v12 data];
          objc_claimAutoreleasedReturnValue();
          v31 = sub_10000DFD8();
          sub_100008738(v31);

          sub_10000AD00([v12 position]);
        }

        else
        {
          [v12 _setError];
        }

        sub_1000081DC();
        if ((v32 & 0x80) == 0)
        {
          [v12 hasError];
          break;
        }

        v29 += 7;
      }

      a3 = 0;
      v23 = 0;
      LODWORD(v67) = 0;
      v33 = v65;
      v34 = *(v65 + 8);
      sub_100144200();
      v35 = v63;
      dispatch thunk of BinaryInteger.init<A>(_:)();
      LOBYTE(v34) = IntegerSet.contains(_:)(v35, v64, a4, v33);
      (*v27)(v35, a4);
      if (v34)
      {
        break;
      }

      PBReaderSkipValueWithTag();
      v19 = &selRef_resultWithError_;
    }

    v40 = sub_10012BC40(0);
    if (v40 == 6)
    {
      sub_10011DDBC();
      sub_100004248();
      sub_10000F6D0();
      _StringGuts.grow(_:)(21);

      sub_100007DBC();
LABEL_40:
      *&v67 = v52;
      *(&v67 + 1) = v50;
      LOBYTE(v66[0]) = 0;
      v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v41);

      MEMORY[0] = v67;
      v42 = 12;
    }

    else
    {
      v43 = v40;
      v44 = v58[0][3];
      v45 = v58[0][4];
      sub_100007534(v58[0], v44);
      v46 = v61;
      v47 = (*(v45 + 40))(v44, v45);
      if (v46)
      {
        goto LABEL_37;
      }

      sub_10014341C(0, v47, &v67);

      if (*(&v68 + 1))
      {
        sub_10011FEDC(&v67, v71);
        sub_1000092B4(v71, v70);
        v48 = v72;
        v49 = v73;
        sub_100007534(v71, v72);
        (*(v49 + 40))(v66, v48, v49);
        sub_10012BC90(v12, v43, &v67);
        sub_10011FBE8(v66);
        v56 = v60;
        sub_10011FEDC(v70, v60);
        v57 = v68;
        *(v56 + 40) = v67;
        *(v56 + 56) = v57;
        *(v56 + 72) = v69[0];
        *(v56 + 82) = *(v69 + 10);
        sub_100007378(v71);
        goto LABEL_37;
      }

      sub_100144254(&v67);
      sub_10011DDBC();
      sub_100004248();
      v23 = v53;
      *&v67 = 0x6761742068746957;
      *(&v67 + 1) = 0xE900000000000020;
      v66[0] = 0;
      v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v54);

      v55 = *(&v67 + 1);
      *v23 = v67;
      *(v23 + 8) = v55;
      v42 = 4;
    }

    *(v23 + 41) = v42;
    swift_willThrow();
    goto LABEL_37;
  }

  v58[2] = v16;
  v58[1] = a3 + 4;
  i = 0;
  v20 = a3[4];
  while (1)
  {
    v21 = [v12 position];
    if ((v21 & 0x8000000000000000) == 0 && v21 >= v18)
    {
      break;
    }

    v22 = 0;
    v23 = 0;
    for (k = 0; k <= 9; ++k)
    {
      LOBYTE(v67) = 0;
      [v12 position];
      if (a3 >= [sub_10000640C() position] && (objc_msgSend(v12, "position"), a3 <= objc_msgSend(sub_10000640C(), "length")))
      {
        [v12 data];
        objc_claimAutoreleasedReturnValue();
        v25 = sub_10000DFD8();
        sub_100008738(v25);

        sub_10000AD00([v12 position]);
      }

      else
      {
        [v12 _setError];
      }

      sub_1000081DC();
      if ((v26 & 0x80) == 0)
      {
        [v12 hasError];
        break;
      }

      v22 += 7;
    }

    a3 = 0;
    if (!v20)
    {
      sub_10011DDBC();
      sub_100004248();
      sub_10000F6D0();
      _StringGuts.grow(_:)(38);

      sub_100007DBC();
      v52 = v51 + 17;
      goto LABEL_40;
    }

    PBReaderSkipValueWithTag();
  }

LABEL_36:
  v36 = v60;
  *(v60 + 96) = 0;
  v36[4] = 0u;
  v36[5] = 0u;
  v36[2] = 0u;
  v36[3] = 0u;
  *v36 = 0u;
  v36[1] = 0u;
LABEL_37:
  v37 = sub_1000045B8();
  return [v37 v38];
}

id sub_1001441CC()
{
  result = [objc_allocWithZone(PBDataReader) init];
  qword_10021EA50 = result;
  return result;
}

unint64_t sub_100144200()
{
  result = qword_10021EA58;
  if (!qword_10021EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EA58);
  }

  return result;
}

uint64_t sub_100144254(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021CC58, &qword_1001A16F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001442E0()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_100057FF8(v8, qword_100232DC8);
  sub_10000964C(v0, qword_100232DC8);
  static CharacterSet.alphanumerics.getter();
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v9 = *(v1 + 8);
  v9(v4, v0);
  return (v9)(v7, v0);
}

uint64_t sub_100144420(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100144474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100144528(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100144548(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_1001445A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001445C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100144634(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

sqlite3_stmt *Bool.init(with:column:)(uint64_t a1, uint64_t a2)
{
  result = sub_100154FFC();
  if (v2)
  {

    return v5;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v6 = sqlite3_column_int(result, a2);

    return (v6 != 0);
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_100144700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Bool.init(with:column:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

sqlite3_stmt *Float.init(with:column:)(uint64_t a1, uint64_t a2)
{
  result = sub_100154FFC();
  if (v2)
  {
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(result, a2);
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1001447B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = Float.init(with:column:)(a1, a2);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

sqlite3_stmt *Double.init(with:column:)(uint64_t a1, uint64_t a2)
{
  result = sub_100154FFC();
  if (v2)
  {
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(result, a2);
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_100144860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = Double.init(with:column:)(a1, a2);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t RawRepresentable<>.init(with:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v11 = type metadata accessor for Optional();
  v12 = sub_100003650(v11);
  v42 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v45 = &v41 - v16;
  v43 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_100003650(AssociatedTypeWitness);
  v44 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v41 - v25;
  v27 = *(a5 + 8);

  v46 = v26;
  v29 = v49;
  v27(v28, a2, AssociatedTypeWitness, a5);
  if (v29)
  {
  }

  v31 = v42;
  v49 = a1;
  v32 = v44;
  (*(v44 + 16))(v23, v46, AssociatedTypeWitness);
  v33 = v45;
  dispatch thunk of RawRepresentable.init(rawValue:)();
  if (sub_100008D0C(v33, 1, a3) == 1)
  {
    (*(v31 + 8))(v45, v11);
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v34._object = 0x80000001001B3110;
    v34._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v34);
    v35._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0xD000000000000018;
    v36._object = 0x80000001001B3130;
    String.append(_:)(v36);
    v37 = v46;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v38 = v47;
    v39 = v48;
    sub_10011DC44();
    swift_allocError();
    *v40 = v38;
    *(v40 + 8) = v39;
    *(v40 + 16) = 0;
    *(v40 + 24) = 3;
    swift_willThrow();

    return (*(v32 + 8))(v37, AssociatedTypeWitness);
  }

  else
  {
    (*(v32 + 8))(v46, AssociatedTypeWitness);

    return (*(*(a3 - 8) + 32))(v41, v45, a3);
  }
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.getColumnCount()()
{
  result = sub_100154FFC();
  if (!v0)
  {
    return sqlite3_column_count(result);
  }

  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.columnName(for:)(Swift::Int a1)
{
  v3 = sub_100154FFC();
  if (!v1)
  {
    if (a1 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a1 <= 0x7FFFFFFF)
    {
      v3 = sqlite3_column_name(v3, a1);
      if (v3)
      {
        v3 = String.init(cString:)();
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_10:
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.columnIndex(for:)(Swift::String a1)
{
  v3 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = String.lowercased()();
  swift_beginAccess();
  v7 = *(v3 + 32);

  v8 = sub_100144ED0(v6._countAndFlagsBits, v6._object, v7);
  v10 = v9;

  if ((v10 & 1) == 0 || (v11 = sub_100154FFC(), v2))
  {

    return v8;
  }

  v20 = countAndFlagsBits;
  v21 = object;
  result = sqlite3_column_count(v11);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v13 = result;
  while (1)
  {
    if (v13 == v8)
    {

      sub_10011DC44();
      sub_100004248();
      *v18 = v20;
      *(v18 + 8) = v21;
      *(v18 + 16) = 0;
      *(v18 + 24) = 1;
      swift_willThrow();

      return v8;
    }

    v14 = sub_100154FFC();
    if (!sqlite3_column_name(v14, v8))
    {
      goto LABEL_14;
    }

    String.init(cString:)();
    v15 = String.lowercased()();

    if (v6._countAndFlagsBits == v15._countAndFlagsBits && v6._object == v15._object)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_17;
    }

LABEL_14:
    ++v8;
  }

LABEL_17:
  swift_beginAccess();
  v19 = *(v3 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v3 + 32);
  sub_100135D6C(v8, v6._countAndFlagsBits, v6._object);
  *(v3 + 32) = v22;

  swift_endAccess();
  return v8;
}

uint64_t sub_100144ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005B74(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

SQLiter::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.type(at:)(Swift::Int at)
{
  v3 = sub_100154FFC();
  if (v1)
  {
    return v3;
  }

  if (at < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return v3;
  }

  v4 = sqlite3_column_type(v3, at);
  LOBYTE(v3) = SQLiteDataType.init(rawValue:)(v4);
  if (v3 == 5)
  {
    _StringGuts.grow(_:)(21);

    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    sub_10011DC44();
    sub_100004248();
    *v6 = 0xD000000000000013;
    *(v6 + 8) = 0x80000001001B3150;
    *(v6 + 16) = 0;
    *(v6 + 24) = 3;
    LOBYTE(v3) = swift_willThrow();
  }

  return v3;
}

SQLiter::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.type(for:)(Swift::String a1)
{
  v1 = SQLiteRow.columnIndex(for:)(a1);
  if (!v2)
  {
    LOBYTE(v1) = SQLiteRow.type(at:)(v1);
  }

  return v1;
}

uint64_t SQLiteRow.get<A>(at:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100006418(a1, a2, a3, a4, a5);
  v6 = sub_100004624();
  return v5(v6);
}

{
  sub_100006418(a1, a2, a3, a4, a5);
  v6 = sub_100004624();
  return v5(v6);
}

Swift::Int SQLiteRow.get<A>(from:type:)(Swift::String a1)
{
  result = sub_100008758(a1);
  if (!v1)
  {
    sub_100011B80();
    sub_100006CE8();
    return v2();
  }

  return result;
}

{
  result = sub_100008758(a1);
  if (!v1)
  {
    sub_100011B80();
    sub_100006CE8();
    return v2();
  }

  return result;
}

uint64_t SQLiteRow.getNonNull<A>(at:type:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = SQLiteRow.type(at:)(a1);
  if (!v11)
  {
    if (result == 4)
    {
      sub_10011DC44();
      v12 = sub_100004248();
      return sub_100003DD8(v12, v13);
    }

    else
    {
      return SQLiteRow.get<A>(at:type:)(a1, v10, a3, a4, a5);
    }
  }

  return result;
}

uint64_t SQLiteRow.getNonNull<A>(at:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  result = SQLiteRow.get<A>(at:type:)(a1, v16, a2, a3, a4);
  if (!v5)
  {
    if (sub_100008D0C(v15, 1, a3) == 1)
    {
      (*(v12 + 8))(v15, v11);
      sub_10011DC44();
      v18 = sub_100004248();
      return sub_100003DD8(v18, v19);
    }

    else
    {
      return (*(*(a3 - 8) + 32))(a5, v15, a3);
    }
  }

  return result;
}

uint64_t SQLiteRow.getNonNull<A>(from:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_100145508(a1, a2, a3, a4, a5, a6, SQLiteRow.getNonNull<A>(at:type:));
}

{
  return sub_100145508(a1, a2, a3, a4, a5, a6, SQLiteRow.getNonNull<A>(at:type:));
}

uint64_t SQLiteRow.getNullable<A>(at:type:)@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  result = SQLiteRow.type(at:)(a1);
  if (!v9)
  {
    if (result == 4)
    {
      v10 = a4;
      v11 = 1;
    }

    else
    {
      v12 = *(a3 + 8);

      v12(v13, a1, a2, a3);
      v10 = a4;
      v11 = 0;
    }

    return sub_1000051C0(v10, v11, 1, a2);
  }

  return result;
}

uint64_t SQLiteRow.forEachColumn(_:)(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  result = sub_100154FFC();
  if (!v1)
  {
    result = sqlite3_column_count(result);
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      v5 = result;
      while (v5 != v4)
      {
        v6 = sub_100154FFC();
        result = sqlite3_column_name(v6, v4);
        if (result)
        {
          v7 = String.init(cString:)();
          a1(v4, v7, v8);
        }

        ++v4;
      }
    }
  }

  return result;
}

uint64_t static SQLiteUndefined.sqlColumnType.setter(char a1)
{
  result = sub_10000877C();
  static SQLiteUndefined.sqlColumnType = a1;
  return result;
}

uint64_t static SQLiteUndefined.sqlNullable.setter(char a1)
{
  result = sub_10000877C();
  static SQLiteUndefined.sqlNullable = a1;
  return result;
}

SQLiter::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteUndefined.getSQLDataType()()
{
  sub_10011DC44();
  swift_allocError();
  return sub_100006448(v0, 58);
}

double SQLiteUndefined.unwrapIfOptional()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t static SQLiteUndefined.create(from:at:nullable:)()
{
  sub_10011DC44();
  swift_allocError();
  return sub_100006448(v0, 36);
}

uint64_t SQLiteUndefined.bind(to:at:)()
{
  sub_10011DC44();
  swift_allocError();
  return sub_100006448(v0, 47);
}

unint64_t static SQLiteUndefined.create(from:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SQLiteUndefined;
  result = sub_10012F9A8();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_100145A88(uint64_t a1)
{
  result = sub_100145AB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100145AB0()
{
  result = qword_10021EAB8;
  if (!qword_10021EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EAB8);
  }

  return result;
}

unint64_t sub_100145B08()
{
  result = qword_10021EAC0;
  if (!qword_10021EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EAC0);
  }

  return result;
}

uint64_t static SQLiteError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a4)
  {
    case 1:
      if (a8 != 1)
      {
        return 0;
      }

      goto LABEL_23;
    case 2:
      if (a8 != 2)
      {
        return 0;
      }

      goto LABEL_23;
    case 3:
      if (a8 != 3)
      {
        return 0;
      }

LABEL_23:
      if (a1 != a5 || a2 != a6)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    case 4:
      v9 = a3 | a2;
      if (a3 | a2 | a1)
      {
        if (a1 != 1 || v9)
        {
          if (a1 != 2 || v9)
          {
            if (a1 != 3 || v9)
            {
              if (a1 != 4 || v9)
              {
                if (a1 != 5 || v9)
                {
                  if (a1 != 6 || v9)
                  {
                    if (a1 != 7 || v9)
                    {
                      if (a1 != 8 || v9)
                      {
                        if (a1 != 9 || v9)
                        {
                          if (a1 != 10 || v9)
                          {
                            if (a8 != 4 || a5 != 11)
                            {
                              return 0;
                            }
                          }

                          else if (a8 != 4 || a5 != 10)
                          {
                            return 0;
                          }
                        }

                        else if (a8 != 4 || a5 != 9)
                        {
                          return 0;
                        }
                      }

                      else if (a8 != 4 || a5 != 8)
                      {
                        return 0;
                      }
                    }

                    else if (a8 != 4 || a5 != 7)
                    {
                      return 0;
                    }
                  }

                  else if (a8 != 4 || a5 != 6)
                  {
                    return 0;
                  }
                }

                else if (a8 != 4 || a5 != 5)
                {
                  return 0;
                }
              }

              else if (a8 != 4 || a5 != 4)
              {
                return 0;
              }
            }

            else if (a8 != 4 || a5 != 3)
            {
              return 0;
            }
          }

          else if (a8 != 4 || a5 != 2)
          {
            return 0;
          }
        }

        else if (a8 != 4 || a5 != 1)
        {
          return 0;
        }

        if (!(a7 | a6))
        {
          return 1;
        }
      }

      else if (a8 == 4 && !(a7 | a6 | a5))
      {
        return 1;
      }

      return 0;
    default:
      if (a8 || a1 != a5)
      {
        return 0;
      }

      if (a2 == a6 && a3 == a7)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100145DBC(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t sub_100145DD8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100145E18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_100145E60(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_100145ECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  dispatch thunk of static CaseIterable.allCases.getter();
  swift_getKeyPath();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v3 = _ArrayProtocol.filter(_:)();

  return v3;
}

BOOL sub_100145FC4@<W0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = SQLiteVTabColumnSchema.visible.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_100145FFC()
{
  v1 = *(v0 + 24);
  swift_getAtKeyPath();
  return v3;
}

uint64_t SQLiteVTab.getConnectionClass()()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  return sub_100006470();
}

uint64_t SQLiteVTab.__deallocating_deinit()
{
  v0 = SQLiteBaseVTab.deinit();

  return _swift_deallocClassInstance(v0, 41, 7);
}

uint64_t static SQLiteVTab.getTable(forConnection:)()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  sub_100146180();
  swift_allocError();
  *v1 = 0;
  *(v1 + 4) = 1;
  return swift_willThrow();
}

unint64_t sub_100146180()
{
  result = qword_10021EAC8[0];
  if (!qword_10021EAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021EAC8);
  }

  return result;
}

uint64_t static SQLiteVTab.getConnection(forCursor:)()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 336);
    v1 = *(v0 + 344);
    swift_getAssociatedTypeWitness();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  sub_100146180();
  swift_allocError();
  *v4 = 1;
  *(v4 + 4) = 1;
  return swift_willThrow();
}

uint64_t static SQLiteVTab.getTable(forCursor:)()
{
  static SQLiteVTab.getConnection(forCursor:)();
  if (!v1)
  {
    v0 = static SQLiteVTab.getTable(forConnection:)();
  }

  return v0;
}

uint64_t SQLiteVTab.BaseConnection.getCursorClass()()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  return sub_100006470();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteVTab.BaseConnection.getTableSchema()()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 16);
  dispatch thunk of static CaseIterable.allCases.getter();
  v14[3] = v1;
  v14[4] = v15;
  v14[2] = v2;
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_100152A48(sub_100146C24, v14, v4, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v6);

  v15 = v7;
  sub_100046184(&unk_100219130, &qword_100199320);
  sub_10001B84C();
  v8 = BidirectionalCollection<>.joined(separator:)();
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteVTab.BaseConnection.columnName(atIndex:)(Swift::Int32 atIndex)
{
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = type metadata accessor for Optional();
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v27);
  v9 = &v27 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = AssociatedConformanceWitness[1];
  v16 = AssociatedConformanceWitness[2];
  v18 = AssociatedConformanceWitness[3];
  v28 = atIndex;
  v19 = AssociatedTypeWitness;
  SQLiteColumnDescribing<>.init(index:)(atIndex, AssociatedTypeWitness, v9);
  if (sub_100008D0C(v9, 1, AssociatedTypeWitness) == 1)
  {
    v21 = *(v6 + 8);
    v20 = (v6 + 8);
    v21(v9, v27);
    sub_100146180();
    swift_allocError();
    *v22 = v28;
    *(v22 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v14, v9, AssociatedTypeWitness);
    v19 = (*(v17 + 32))(AssociatedTypeWitness, v17);
    v20 = v23;
    (*(v10 + 8))(v14, AssociatedTypeWitness);
  }

  v24 = v19;
  v25 = v20;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t SQLiteBaseVTab.Connection.deinit()
{
  v1 = *(v0 + 24);

  swift_weakDestroy();
  return v0;
}

uint64_t SQLiteVTab.BaseConnection.__deallocating_deinit()
{
  SQLiteBaseVTab.Connection.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t SQLiteBaseVTab.Cursor.__deallocating_deinit()
{
  swift_weakDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t initializeBufferWithCopyOfBuffer for SQLiteVTabError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteVTabError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SQLiteVTabError(uint64_t result, int a2, int a3)
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

uint64_t sub_100146AE8(uint64_t a1)
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

uint64_t sub_100146B04(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

uint64_t sub_100146C60()
{
  v0 = type metadata accessor for Logger();
  sub_100057FF8(v0, qword_100232DE0);
  sub_10000964C(v0, qword_100232DE0);
  return Logger.init(subsystem:category:)();
}

uint64_t static SQLiteType.sqlNull.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Optional();
  sub_100006478();
  a1[4] = swift_getWitnessTable();
  sub_1000205C4(a1);
  sub_100007E38();
  return sub_1000051C0(v2, v3, v4, v5);
}

uint64_t static SQLiteType.getSQLNonNullDataType()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  result = sub_10000701C();
  switch(v3)
  {
    case 1:
      result = 2;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
      result = 0;
      break;
    case 6:
    case 7:
    case 8:
      result = 3;
      break;
    case 10:
      sub_10011DC44();
      v4 = sub_100004248();
      result = sub_10000879C(v4, v5);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SQLiteType.isEqualTo(sqlValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v56 = a3;
  v60 = a1;
  sub_100003A6C();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_100003664();
  v55 = (v12 - v11);
  v13 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_100003A6C();
  v57 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  sub_100003A6C();
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v25);
  v61 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v55 - v28;
  v31 = __chkstk_darwin(v30);
  v33 = &v55 - v32;
  v59 = v7;
  (*(v7 + 16))(&v55 - v32, v4, a2, v31);
  sub_1000051C0(v33, 0, 1, a2);
  sub_1000092B4(v60, v62);
  sub_100046184(&qword_10021ECE8, &qword_1001A3928);
  v34 = swift_dynamicCast();
  sub_1000051C0(v29, v34 ^ 1u, 1, a2);
  v58 = TupleTypeMetadata2;
  v35 = *(TupleTypeMetadata2 + 48);
  v60 = v22;
  v36 = (v22 + 16);
  v37 = *(v22 + 16);
  v37(v20, v33, v13);
  v37(&v20[v35], v29, v13);
  sub_10000C8CC();
  if (sub_100008D0C(v38, v39, v40) != 1)
  {
    v37(v61, v20, v13);
    sub_10000C8CC();
    if (sub_100008D0C(v46, v47, v48) != 1)
    {
      v50 = v59;
      v36 = v55;
      (*(v59 + 32))(v55, &v20[v35], a2);
      v51 = *(*(v56 + 16) + 8);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v50 + 8);
      v52(v36, a2);
      v53 = sub_10000CAA4();
      v36(v53);
      v52(v61, a2);
      (v36)(v20, v13);
      goto LABEL_8;
    }

    v49 = sub_10000CAA4();
    v36(v49);
    (*(v59 + 8))(v61, a2);
    goto LABEL_6;
  }

  v41 = sub_10000CAA4();
  v36(v41);
  sub_10000C8CC();
  if (sub_100008D0C(v42, v43, v44) != 1)
  {
LABEL_6:
    (*(v57 + 8))(v20, v58);
    v45 = 0;
    goto LABEL_8;
  }

  (v36)(v20, v13);
  v45 = 1;
LABEL_8:
  (v36)(v29, v13);
  return v45 & 1;
}

uint64_t static SQLiteSafeType<>.create(from:at:nullable:)@<X0>(Swift::Int at@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v7 = v6;
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  result = SQLiteRow.type(at:)(at);
  v7 = v14;
  if (v14)
  {
    return result;
  }

  sub_10000DFF0();
  if (v15)
  {
    a6[3] = type metadata accessor for Optional();
    sub_100006478();
    a6[4] = swift_getWitnessTable();
    sub_1000205C4(a6);
    sub_100007E38();
    return sub_1000051C0(v16, v17, v18, v19);
  }

  else
  {
LABEL_6:
    v20 = *(a4 + 8);
    a6[3] = a3;
    a6[4] = a5;
    sub_1000205C4(a6);

    result = v20(v21, at, a3, a4);
    if (v7)
    {
      return sub_100147348(a6);
    }
  }

  return result;
}

uint64_t *sub_100147348(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t SQLiteSafeType<>.getSQLDataType()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000BF2C(a3);
  v3();
  result = sub_10000701C();
  switch(v5)
  {
    case 1:
      result = 2;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
      result = 0;
      break;
    case 6:
    case 7:
    case 8:
      result = 3;
      break;
    case 10:
      sub_10011DC44();
      v6 = sub_100004248();
      result = sub_10000879C(v6, v7);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SQLiteSafeType<>.unwrapIfOptional()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  v5 = sub_1000205C4(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(v5, v3, a1);
}

uint64_t static SQLiteUnsafeType<>.create(from:at:nullable:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v36 = a4;
  v35 = a2;
  v34 = a6;
  v10 = type metadata accessor for Optional();
  sub_100003A6C();
  v33 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = *(a5 + 8);

  result = v17(v18, a1, a3, a5);
  if (!v6)
  {
    v21 = v33;
    v20 = v34;
    v22 = v35;
    v23 = v36;
    sub_10000C8CC();
    if (sub_100008D0C(v24, v25, v26) == 1)
    {
      (*(v21 + 8))(v16, v10);
      if (v22)
      {
        v20[3] = v10;
        v37 = v23;
        sub_100006478();
        v20[4] = swift_getWitnessTable();
        sub_1000205C4(v20);
        sub_100007E38();
        return sub_1000051C0(v27, v28, v29, v30);
      }

      else
      {
        sub_10011DC44();
        sub_100004248();
        *(v32 + 8) = 0;
        *(v32 + 16) = 0;
        *v32 = 6;
        *(v32 + 24) = 4;
        return swift_willThrow();
      }
    }

    else
    {
      v20[3] = a3;
      v20[4] = v23;
      v31 = sub_1000205C4(v20);
      return (*(*(a3 - 8) + 32))(v31, v16, a3);
    }
  }

  return result;
}

uint64_t SQLiteUnsafeType<>.getSQLDataType()(uint64_t a1, uint64_t a2)
{
  sub_10000BF2C(a2);
  v2();
  result = sub_10000701C();
  switch(v4)
  {
    case 1:
      result = 2;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
      result = 0;
      break;
    case 6:
    case 7:
    case 8:
      result = 3;
      break;
    case 10:
      sub_10011DC44();
      v5 = sub_100004248();
      result = sub_10000879C(v5, v6);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SQLiteUnsafeType<>.unwrapIfOptional()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  v5 = sub_1000205C4(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(v5, v3, a1);
}

uint64_t static Bool.create(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = String.lowercased()();
  value = Bool.init(_:)(v2).value;
  *(a1 + 24) = sub_100046184(&qword_10021ECF0, &qword_1001A3930);
  result = sub_100149810(&qword_10021ECF8, &qword_10021ECF0, &qword_1001A3930);
  *(a1 + 32) = result;
  *a1 = value;
  return result;
}

uint64_t sub_100147824@<X0>(Swift::Int at@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = v5;
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  result = SQLiteRow.type(at:)(at);
  v8 = v12;
  if (v12)
  {
    return result;
  }

  if (result == 4)
  {
    a5[3] = sub_100046184(&qword_10021ECF0, &qword_1001A3930);
    result = sub_100149810(&qword_10021ECF8, &qword_10021ECF0, &qword_1001A3930);
    a5[4] = result;
    v13 = 2;
  }

  else
  {
LABEL_5:
    a5[3] = a3;
    a5[4] = a4;

    result = Bool.init(with:column:)(v14, at);
    if (v8)
    {
      return sub_100147348(a5);
    }

    v13 = result & 1;
  }

  *a5 = v13;
  return result;
}

uint64_t static Float.create(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;

  v6 = sub_100149590(a1, a2, &v9, &__swift_stdlib_strtof_clocale);

  if (v6)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  *(a3 + 24) = sub_100046184(&qword_10021ED00, &qword_1001A3938);
  result = sub_100149810(&qword_10021ED08, &qword_10021ED00, &qword_1001A3938);
  *(a3 + 32) = result;
  *a3 = v7;
  *(a3 + 4) = !v6;
  return result;
}

float sub_100147A0C@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *v3;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *a3 = result;
  return result;
}

uint64_t sub_100147A1C@<X0>(Swift::Int at@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = v5;
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  result = SQLiteRow.type(at:)(at);
  v8 = v12;
  if (v12)
  {
    return result;
  }

  if (result == 4)
  {
    *(a5 + 24) = sub_100046184(&qword_10021ED00, &qword_1001A3938);
    result = sub_100149810(&qword_10021ED08, &qword_10021ED00, &qword_1001A3938);
    *(a5 + 32) = result;
    *a5 = 0;
    *(a5 + 4) = 1;
  }

  else
  {
LABEL_5:
    *(a5 + 24) = a3;
    *(a5 + 32) = a4;

    result = Float.init(with:column:)(v13, at);
    if (v8)
    {
      return sub_100147348(a5);
    }

    else
    {
      *a5 = v14;
    }
  }

  return result;
}

uint64_t sub_100147B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = sub_100109714(a1, a2);
  *(a3 + 24) = sub_100046184(&qword_10021ED00, &qword_1001A3938);
  result = sub_100149810(&qword_10021ED08, &qword_10021ED00, &qword_1001A3938);
  *(a3 + 32) = result;
  *a3 = v6;
  *(a3 + 4) = BYTE4(v6) & 1;
  return result;
}

uint64_t static Double.create(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;

  v6 = sub_100149590(a1, a2, &v9, &_swift_stdlib_strtod_clocale);

  if (v6)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  *(a3 + 24) = sub_100046184(&qword_10021ED10, &qword_1001A3940);
  result = sub_100149810(&qword_10021ED18, &qword_10021ED10, &qword_1001A3940);
  *(a3 + 32) = result;
  *a3 = v7;
  *(a3 + 8) = !v6;
  return result;
}

uint64_t sub_100147CAC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_100149590(a1, a2, &v4, &_swift_stdlib_strtod_clocale);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

double sub_100147D34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *v3;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *a3 = result;
  return result;
}

void sub_100147D44(Swift::Int at@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = v5;
  if (a2)
  {
    v11 = SQLiteRow.type(at:)(at);
    v8 = v12;
    if (v12)
    {
      return;
    }

    if (v11 == SQLiter_SQLiteDataType_null)
    {
      *(a5 + 24) = sub_100046184(&qword_10021ED10, &qword_1001A3940);
      *(a5 + 32) = sub_100149810(&qword_10021ED18, &qword_10021ED10, &qword_1001A3940);
      *a5 = 0;
      *(a5 + 8) = 1;
      return;
    }
  }

  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  v13 = sub_100154FFC();
  if (v8)
  {
    sub_100147348(a5);
    return;
  }

  if (at < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    return;
  }

  *a5 = sqlite3_column_double(v13, at);
}

uint64_t sub_100147E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = sub_100147CAC(a1, a2);
  v8 = v7;
  *(a3 + 24) = sub_100046184(&qword_10021ED10, &qword_1001A3940);
  result = sub_100149810(&qword_10021ED18, &qword_10021ED10, &qword_1001A3940);
  *(a3 + 32) = result;
  *a3 = v6;
  *(a3 + 8) = v8 & 1;
  return result;
}

uint64_t static String.create(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for String;
  a3[4] = &protocol witness table for String;
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_100147F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v4 = v3[1];
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v5;
  a3[1] = v4;
}

uint64_t sub_100147F44@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{

  result = String.init(with:column:)(v11, a1);
  if (!v5)
  {
    if (v13)
    {
      a5[3] = a3;
      a5[4] = a4;
      *a5 = result;
      a5[1] = v13;
    }

    else if (a2)
    {
      a5[3] = sub_100046184(&qword_1002181F0, &qword_10019C610);
      result = sub_100149810(&qword_10021EDD0, &qword_1002181F0, &qword_10019C610);
      a5[4] = result;
      *a5 = 0;
      a5[1] = 0;
    }

    else
    {
      sub_10011DC44();
      swift_allocError();
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 6;
      *(v14 + 24) = 4;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100148034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = a3;
  a5[4] = a4;
  *a5 = a1;
  a5[1] = a2;
}

unint64_t static Data.create(from:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = Data.init(base64Encoded:options:)();
  v4 = v3;
  a1[3] = sub_100046184(&qword_10021ED20, &qword_1001A3948);
  result = sub_100149684();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001480BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *v3;
  v5 = v3[1];
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
  a3[1] = v5;
  return sub_100014924(v4, v5);
}

uint64_t sub_1001480D4@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{

  result = Data.init(with:column:)(v11, a1);
  if (!v5)
  {
    if (v13 >> 60 == 15)
    {
      if (a2)
      {
        *(a5 + 24) = sub_100046184(&qword_10021ED20, &qword_1001A3948);
        result = sub_100149684();
        *(a5 + 32) = result;
        *a5 = xmmword_1001995F0;
      }

      else
      {
        sub_10011DC44();
        swift_allocError();
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        *v14 = 6;
        *(v14 + 24) = 4;
        return swift_willThrow();
      }
    }

    else
    {
      *(a5 + 24) = a3;
      *(a5 + 32) = a4;
      *a5 = result;
      *(a5 + 8) = v13;
    }
  }

  return result;
}

uint64_t static Optional<A>.create(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    return (*(a3 + 64))();
  }

  a4[3] = type metadata accessor for Optional();
  sub_100006478();
  a4[4] = swift_getWitnessTable();
  sub_1000205C4(a4);
  sub_100007E38();
  return sub_1000051C0(v7, v8, v9, v10);
}

uint64_t Optional<A>.getSQLDataType()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, v10);
  if (sub_100008D0C(v12, 1, v3) == 1)
  {
    return 4;
  }

  (*(v4 + 32))(v7, v12, v3);
  v16 = *(a2 + 40);
  v17 = sub_10000CC98();
  v15 = v18(v17);
  (*(v4 + 8))(v7, v3);
  return v15;
}

uint64_t Optional<A>.unwrapIfOptional()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  sub_100003A6C();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_100003664();
  v13 = v12 - v11;
  sub_100003A6C();
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  sub_100003664();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17, v21);
  result = sub_100008D0C(v19, 1, v5);
  if (result == 1)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v23 = *(v7 + 32);
    v24 = sub_10000CC98();
    v25(v24);
    (*(a2 + 48))(v5, a2);
    return (*(v7 + 8))(v13, v5);
  }

  return result;
}

uint64_t sub_100148658(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, v10);
  if (sub_100008D0C(v12, 1, v3) == 1)
  {
    return 4;
  }

  (*(v4 + 32))(v7, v12, v3);
  v15 = (*(v2 + 40))(v3, v2);
  (*(v4 + 8))(v7, v3);
  return v15;
}

uint64_t sub_100148818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 - 8);
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  result = sub_100008D0C(v14, 1, v5);
  if (result == 1)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    (*(v6 + 32))(v9, v14, v5);
    (*(v4 + 48))(v5, v4);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_100148A0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = *(a3 + 16);
    v8 = *(a3 + 16);
    return (*(*(a4 - 8) + 64))();
  }

  else
  {
    a5[3] = a3;
    a5[4] = a4;
    v10 = sub_1000205C4(a5);
    return sub_1000051C0(v10, 1, 1, *(a3 + 16));
  }
}

uint64_t static RawRepresentable<>.sqlColumnType.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_10000BF2C(a3);
  return v4();
}

void sub_100148AE0()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_7;
  }

  sub_100005AD8();
  if (v2 == v3)
  {
    sub_100008BD0();
    if (!(v2 ^ v3 | v5))
    {
      goto LABEL_12;
    }

    if (sqlite3_column_int(v4, v1) < -128)
    {
      sub_10011DC44();
      v6 = sub_100004248();
      sub_100003E48(v6, v7);
LABEL_7:

LABEL_8:
      sub_10000AF78();
      return;
    }

    sub_10000F2C8();
    if (v1 <= 127)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_100148B6C()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_7;
  }

  sub_100005AD8();
  if (v2 == v3)
  {
    sub_100008BD0();
    if (!(v2 ^ v3 | v5))
    {
      goto LABEL_12;
    }

    if (sqlite3_column_int(v4, v1) < -32768)
    {
      sub_10011DC44();
      v6 = sub_100004248();
      sub_100003E48(v6, v7);
LABEL_7:

LABEL_8:
      sub_10000AF78();
      return;
    }

    sub_10000F2C8();
    if (v1 < 0x8000)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_100148BF8()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_6;
  }

  sub_100005AD8();
  if (v2 == v3)
  {
    sub_100008BD0();
    if (!(v2 ^ v3 | v5))
    {
      goto LABEL_8;
    }

    sqlite3_column_int(v4, v1);
LABEL_6:

    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

void sub_100148C5C()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_2;
  }

  sub_100005AD8();
  if (v2 != v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100008BD0();
  if (!(v2 ^ v3 | v5))
  {
    goto LABEL_11;
  }

  if (sqlite3_column_int(v4, v1) < 0)
  {
    sub_10011DC44();
    v6 = sub_100004248();
    sub_100003E48(v6, v7);
LABEL_2:

LABEL_8:
    sub_10000AF78();
    return;
  }

  sub_10000F2C8();
  if (v1 <= 0xFF)
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_100148CEC()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_2;
  }

  sub_100005AD8();
  if (v2 != v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100008BD0();
  if (!(v2 ^ v3 | v5))
  {
    goto LABEL_11;
  }

  if (sqlite3_column_int(v4, v1) < 0)
  {
    sub_10011DC44();
    v6 = sub_100004248();
    sub_100003E48(v6, v7);
LABEL_2:

LABEL_8:
    sub_10000AF78();
    return;
  }

  sub_10000F2C8();
  if (!HIWORD(v1))
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_100148D7C()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_2;
  }

  sub_100005AD8();
  if (v2 != v3)
  {
    __break(1u);
  }

  else
  {
    sub_100008BD0();
    if (v2 ^ v3 | v5)
    {
      if ((sqlite3_column_int(v4, v1) & 0x80000000) == 0)
      {
        sub_10000F2C8();
        goto LABEL_8;
      }

      sub_10011DC44();
      v6 = sub_100004248();
      sub_100003E48(v6, v7);
LABEL_2:

LABEL_8:
      sub_10000AF78();
      return;
    }
  }

  __break(1u);
}

void sub_100148E00()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v0[4] = sub_10000EC68(&qword_10021EDC8);
    *v0 = 256;
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148AE0();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v7;
    }
  }
}

void sub_100148EB8()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v0[4] = sub_10000EC68(&qword_10021EDB8);
    *v0 = 256;
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148C5C();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v7;
    }
  }
}

void sub_100148F70()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021EDA8);
    sub_100007970(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148B6C();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

void sub_100149020()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021ED98);
    sub_100007970(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148CEC();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

void sub_1001490D0()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021ED88);
    sub_10000DCC4(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148BF8();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

void sub_100149180()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021ED78);
    sub_10000DCC4(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148D7C();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

void sub_100149230()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_7;
  }

  sub_100005AD8();
  if (v2 == v3)
  {
    sub_100008BD0();
    if (!(v2 ^ v3 | v5))
    {
      goto LABEL_9;
    }

    if (sqlite3_column_int64(v4, v1) < 0)
    {
      sub_10011DC44();
      v6 = sub_100004248();
      sub_100003E48(v6, v7);
    }

LABEL_7:

    return;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

void sub_1001492C0()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021ED68);
    sub_1000081F0(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_10004051C();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

void sub_1001493B4(Swift::Int at@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, unint64_t *a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v12 = v9;
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  SQLiteRow.type(at:)(at);
  v12 = v17;
  if (v17)
  {
    return;
  }

  sub_10000DFF0();
  if (v18)
  {
    a8[3] = sub_100046184(a5, a6);
    v19 = sub_100149810(a7, a5, a6);
    sub_1000081F0(v19);
  }

  else
  {
LABEL_6:
    a8[3] = a3;
    a8[4] = a4;

    sub_100149230();
    if (v12)
    {
      sub_100147348(a8);
    }

    else
    {
      *a8 = v20;
    }
  }
}

void sub_10014949C()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021ED50);
    sub_1000081F0(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_10004051C();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

BOOL sub_100149590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 < 0x21 && ((0x100003E01uLL >> v6) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

LABEL_14:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v4)
    {
      return v11;
    }

    return v8;
  }

  v10[0] = a1;
  v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

  v5 = v10;
LABEL_10:
  v7 = a4(v5, a3);
  if (!v7)
  {
    return 0;
  }

  return *v7 == 0;
}

unint64_t sub_100149684()
{
  result = qword_10021ED28;
  if (!qword_10021ED28)
  {
    sub_1000461CC(&qword_10021ED20, &qword_1001A3948);
    sub_10012F954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ED28);
  }

  return result;
}

unint64_t sub_100149708(uint64_t a1)
{
  result = sub_100149730();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100149730()
{
  result = qword_10021ED30;
  if (!qword_10021ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ED30);
  }

  return result;
}

uint64_t sub_100149784(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v7 = *(*a3 + 8);
  *(a1 + 8) = swift_getWitnessTable();
  v6 = *(v4 + 16);
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100149810(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(a2, a3);
    sub_100006478();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_100149868@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X2>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = a2()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

unsigned __int8 *sub_100149988@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021EDC0, qword_1001A3A20);
  result = sub_10014FCA0(&qword_10021EDC8, &qword_10021EDC0, qword_1001A3A20);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v29) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v19 = v8 - 1;
          if (v8 != 1)
          {
            LOBYTE(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v19 != 0;
                if (!v19)
                {
                  break;
                }

                v21 = *i - 48;
                if (v21 > 9)
                {
                  goto LABEL_53;
                }

                v22 = (10 * a1);
                if (v22 != 10 * a1)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = v22 + v21;
                if ((v22 + v21) != a1)
                {
                  goto LABEL_53;
                }

                --v19;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LOBYTE(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_53;
            }

            v28 = (10 * a1);
            if (v28 != 10 * a1)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = v28 + v27;
            if ((v28 + v27) != a1)
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LOBYTE(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              v14 = (10 * a1);
              if (v14 != 10 * a1)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = v14 - v13;
              if ((v14 - v13) != a1)
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LOBYTE(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v34[0] = a1;
    v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v23 = v7 - 1;
      if (v7 != 1)
      {
        LOBYTE(a1) = 0;
        for (k = v34 + 1; ; ++k)
        {
          LOBYTE(v7) = v23 != 0;
          if (!v23)
          {
            break;
          }

          v25 = *k - 48;
          if (v25 > 9)
          {
            goto LABEL_53;
          }

          v26 = (10 * a1);
          if (v26 != 10 * a1)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v26 + v25;
          if ((v26 + v25) != a1)
          {
            goto LABEL_53;
          }

          --v23;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LOBYTE(a1) = 0;
        if (v7)
        {
          for (m = v34; ; ++m)
          {
            v31 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v32 = *m - 48;
            if (v32 > 9 || (v33 = (10 * a1), v33 != 10 * a1) || (LODWORD(a1) = v33 + v32, (v33 + v32) != a1))
            {
              LOBYTE(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v31 = 1;
LABEL_68:
        v35 = v31;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v15 = v7 - 1;
      if (v7 != 1)
      {
        LOBYTE(a1) = 0;
        for (n = v34 + 1; ; ++n)
        {
          LOBYTE(v7) = v15 != 0;
          if (!v15)
          {
            break;
          }

          v17 = *n - 48;
          if (v17 > 9)
          {
            goto LABEL_53;
          }

          v18 = (10 * a1);
          if (v18 != 10 * a1)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v18 - v17;
          if ((v18 - v17) != a1)
          {
            goto LABEL_53;
          }

          --v15;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LOBYTE(a1) = 0;
LABEL_54:
    v35 = v7;
LABEL_55:
    LOBYTE(v29) = v35;
    goto LABEL_56;
  }

  LODWORD(a1) = sub_10014D0F0(a1, a2, 10);

  v29 = (a1 >> 8) & 1;
LABEL_56:
  if (v29)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 1) = v29 & 1;
  return result;
}

unsigned __int8 *sub_100149D60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021EDA0, &qword_1001A3A10);
  result = sub_10014FCA0(&qword_10021EDA8, &qword_10021EDA0, &qword_1001A3A10);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v29) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v19 = v8 - 1;
          if (v8 != 1)
          {
            LOWORD(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v19 != 0;
                if (!v19)
                {
                  break;
                }

                v21 = *i - 48;
                if (v21 > 9)
                {
                  goto LABEL_53;
                }

                v22 = (10 * a1);
                if (v22 != 10 * a1)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = v22 + v21;
                if ((v22 + v21) != a1)
                {
                  goto LABEL_53;
                }

                --v19;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LOWORD(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_53;
            }

            v28 = (10 * a1);
            if (v28 != 10 * a1)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = v28 + v27;
            if ((v28 + v27) != a1)
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              v14 = (10 * a1);
              if (v14 != 10 * a1)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = v14 - v13;
              if ((v14 - v13) != a1)
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LOWORD(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v34[0] = a1;
    v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v23 = v7 - 1;
      if (v7 != 1)
      {
        LOWORD(a1) = 0;
        for (k = v34 + 1; ; ++k)
        {
          LOBYTE(v7) = v23 != 0;
          if (!v23)
          {
            break;
          }

          v25 = *k - 48;
          if (v25 > 9)
          {
            goto LABEL_53;
          }

          v26 = (10 * a1);
          if (v26 != 10 * a1)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v26 + v25;
          if ((v26 + v25) != a1)
          {
            goto LABEL_53;
          }

          --v23;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LOWORD(a1) = 0;
        if (v7)
        {
          for (m = v34; ; ++m)
          {
            v31 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v32 = *m - 48;
            if (v32 > 9 || (v33 = (10 * a1), v33 != 10 * a1) || (LODWORD(a1) = v33 + v32, (v33 + v32) != a1))
            {
              LOWORD(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v31 = 1;
LABEL_68:
        v35 = v31;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v15 = v7 - 1;
      if (v7 != 1)
      {
        LOWORD(a1) = 0;
        for (n = v34 + 1; ; ++n)
        {
          LOBYTE(v7) = v15 != 0;
          if (!v15)
          {
            break;
          }

          v17 = *n - 48;
          if (v17 > 9)
          {
            goto LABEL_53;
          }

          v18 = (10 * a1);
          if (v18 != 10 * a1)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v18 - v17;
          if ((v18 - v17) != a1)
          {
            goto LABEL_53;
          }

          --v15;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LOWORD(a1) = 0;
LABEL_54:
    v35 = v7;
LABEL_55:
    LOBYTE(v29) = v35;
    goto LABEL_56;
  }

  LODWORD(a1) = sub_10014D6D4(a1, a2, 10);

  v29 = WORD1(a1) & 1;
LABEL_56:
  if (v29)
  {
    LOWORD(v9) = 0;
  }

  else
  {
    LOWORD(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 2) = v29 & 1;
  return result;
}