uint64_t sub_100083D2C@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100083E20(a1, a2, v10);
  if (v11 == 2)
  {
    sub_100084858(v10);
    *&v10[0] = 0;
    *(&v10[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    *&v10[0] = 0xD00000000000002BLL;
    *(&v10[0] + 1) = 0x800000010013B800;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    v7 = v10[0];
    sub_100076AA8();
    swift_allocError();
    *v8 = v7;
    return swift_willThrow();
  }

  else
  {
    sub_10002A694(a3, v10);
    return sub_10001B428(v10);
  }
}

void **sub_100083E20@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{

  sub_10007683C(a1, a2, &__dst);
  sub_10001DD08(v3, &__dst, v17);
  std::string::~string(&__dst);
  sub_10002A468(&__dst, v17);
  type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__(0);
  sub_1000848C0();
  dispatch thunk of Sequence.makeIterator()();
  v7 = v16;
  while (1)
  {
    v8 = v15;
    *&v11[0] = v15;
    v13 = v7;
    if (sub_10002BFC0(v11, &v13))
    {

      result = sub_10002A4B8(v17);
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 72) = 2;
      return result;
    }

    *&v11[0] = v8;
    v9 = sub_10002A1D0(v11);
    sub_10002A33C(&__dst, v9);
    *&v11[0] = v8;
    sub_10002A428(v11);
    v15 = *&v11[0];
    sub_10002A694(v11, &__dst);
    sub_10001B428(&__dst);
    if (v12)
    {
      break;
    }

    sub_10001B428(v11);
  }

  sub_10002A4B8(v17);
  sub_10002A694(a3, v11);
  return sub_10001B428(v11);
}

Swift::Int sub_100083F94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100080AE0(v2);
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
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
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
      type metadata accessor for _NSRange(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1000840DC(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000840DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10007FDB8(v8);
      v8 = result;
    }

    v79 = v8 + 2;
    v80 = v8[2];
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v8[2 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_100084654((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
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
      result = sub_10007DF24(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v33 = v8[3];
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_10007DF24((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v34;
    v35 = v8 + 4;
    v36 = &v8[2 * v5 + 4];
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = v8[4];
          v38 = v8[5];
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8[2 * v34];
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[2 * v5];
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v8[2 * v34];
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
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

        v74 = &v35[2 * v5 - 2];
        v75 = *v74;
        v76 = &v35[2 * v5];
        v77 = v76[1];
        sub_100084654((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = v8[2];
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove(&v35[2 * v5], v76 + 2, 16 * (v78 - 1 - v5));
        v8[2] = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[2 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8[2 * v34];
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[2 * v5];
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
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

uint64_t sub_100084654(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
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

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_100084858(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BDA8, &qword_100131AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000848C0()
{
  result = qword_10016A8B8;
  if (!qword_10016A8B8)
  {
    type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8B8);
  }

  return result;
}

uint64_t sub_100084918()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016BDB0);
  sub_10002FD14(v0, qword_10016BDB0);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_1000849DC()
{
  if (qword_10016A650 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_100173800, &unk_10016BDC8);
}

void sub_100084A40()
{
  v2 = static Utils.daemonBundleId.getter();
  v3 = v0;
  v1._countAndFlagsBits = 0x7972616D6972702ELL;
  v1._object = 0xEC00000079656B2DLL;
  String.append(_:)(v1);
  qword_10016BDF0 = v2;
  *algn_10016BDF8 = v3;
}

void sub_100084AA0()
{
  _StringGuts.grow(_:)(16);
  v0 = static Utils.daemonBundleId.getter();
  v2 = v1;

  v3._countAndFlagsBits = 0x72656D656870652ELL;
  v3._object = 0xEE0079656B2D6C61;
  String.append(_:)(v3);
  qword_10016BE00 = v0;
  *algn_10016BE08 = v2;
}

void sub_100084B34()
{
  _StringGuts.grow(_:)(17);
  v0 = static Utils.daemonBundleId.getter();
  v2 = v1;

  v3._countAndFlagsBits = 0x7274656D6D79732ELL;
  v3._object = 0xEF79656B2D736369;
  String.append(_:)(v3);
  qword_10016BE10 = v0;
  *algn_10016BE18 = v2;
}

uint64_t sub_100084BC8()
{
  v0 = static Utils.daemonBundleId.getter();
  result = sub_100084BF0(v0, v1);
  qword_10016BE20 = result;
  *algn_10016BE28 = v3;
  return result;
}

uint64_t sub_100084BF0(uint64_t a1, unint64_t a2)
{
  *&v38 = a1;
  *(&v38 + 1) = a2;

  sub_100026F94(&qword_10016BEF8, &qword_100131B60);
  if (swift_dynamicCast())
  {
    sub_10002C604(__src, &v39);
    sub_100026F50(&v39, v40);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v38;
    sub_100026FDC(&v39);
    goto LABEL_64;
  }

  v37 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10002BA6C(__src, &qword_10016BF00, &qword_100131B68);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    sub_100087724(__src, HIBYTE(a2) & 0xF, &v39);
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = _StringObject.sharedUTF8.getter();
    }

    sub_100087724(v4, v5, &v39);
  }

  if (*(&v39 + 1) >> 60 != 15)
  {
    __src[0] = v39;
    goto LABEL_64;
  }

  v32 = *(&v39 + 1);
  v33 = v39;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_13:
  *&__src[0] = sub_100089134(v6);
  *(&__src[0] + 1) = v7;
  __chkstk_darwin(*&__src[0]);
  v8 = sub_1000877EC(sub_1000891D4);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&__src[0] + 16);
      v16 = *(*&__src[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
        goto LABEL_71;
      }

      if (v11 != v19)
      {
        goto LABEL_24;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_61;
    }
  }

  else if (v15)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_72;
    }

    if (v11 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_24:
      if (v15 == 2)
      {
        v20 = *(*&__src[0] + 24);
      }

      else if (v15 == 1)
      {
        v20 = *&__src[0] >> 32;
      }

      else
      {
        v20 = BYTE14(__src[0]);
      }

LABEL_61:
      if (v20 >= v11)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_63:

        goto LABEL_64;
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
    }
  }

  else if (v11 != BYTE14(__src[0]))
  {
    goto LABEL_24;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v21 = v8 & 0xFFFFFFFFFFFFLL;
  }

  *(&v38 + 7) = 0;
  *&v38 = 0;
  if (4 * v21 == v10 >> 14)
  {
    goto LABEL_58;
  }

  LOBYTE(v22) = 0;
  v23 = (v8 >> 59) & 1;
  if ((v9 & 0x1000000000000000) == 0)
  {
    LOBYTE(v23) = 1;
  }

  v24 = 4 << v23;
  v34 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v35 = v9 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v25 = v14 & 0xC;
    v26 = v14;
    if (v25 == v24)
    {
      v26 = sub_1000876A8(v14, v12, v13);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v21)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      v6 = String.UTF8View._foreignCount()();
      v33 = 0;
      v32 = 0xF000000000000000;
      goto LABEL_13;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      v29 = String.UTF8View._foreignSubscript(position:)();
      if (v25 != v24)
      {
        goto LABEL_47;
      }
    }

    else if ((v13 & 0x2000000000000000) != 0)
    {
      *&v39 = v12;
      *(&v39 + 1) = v35;
      v29 = *(&v39 + v27);
      if (v25 != v24)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v28 = v34;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = _StringObject.sharedUTF8.getter();
      }

      v29 = *(v28 + v27);
      if (v25 != v24)
      {
LABEL_47:
        if ((v13 & 0x1000000000000000) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_51;
      }
    }

    v14 = sub_1000876A8(v14, v12, v13);
    if ((v13 & 0x1000000000000000) == 0)
    {
LABEL_48:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_53;
    }

LABEL_51:
    if (v21 <= v14 >> 16)
    {
      goto LABEL_67;
    }

    v14 = String.UTF8View._foreignIndex(after:)();
LABEL_53:
    *(&v38 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_66;
    }

    if (v22 == 14)
    {
      *&v39 = v38;
      *(&v39 + 6) = *(&v38 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v22) = 0;
    }
  }

  while (4 * v21 != v14 >> 14);
  if (v22)
  {
    *&v39 = v38;
    *(&v39 + 6) = *(&v38 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10008923C(v33, v32);
    goto LABEL_63;
  }

LABEL_58:

  sub_10008923C(v33, v32);
LABEL_64:
  v30 = __src[0];
  sub_100087600(*&__src[0], *(&__src[0] + 1));

  sub_1000822A0(v30, *(&v30 + 1));
  return v30;
}

uint64_t sub_10008512C()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for OSSignposter();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100085270, v0, 0);
}

uint64_t sub_100085270()
{
  v22 = v0;
  if (qword_10016A4E0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[2];
  v4 = v0[3];
  v6 = sub_10002FD14(v3, qword_10016BDB0);
  (*(v2 + 16))(v1, v6, v3);
  static OSSignpostID.exclusive.getter();
  v7 = swift_slowAlloc();
  *v7 = 0;
  v8 = OSSignposter.logHandle.getter();
  v9 = static os_signpost_type_t.begin.getter();
  v10 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, v10, "databaseEncryptionKey", "", v7, 2u);
  sub_100085500(v5, &v21);
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[4];
  v16 = v0[5];
  LOBYTE(v4) = static os_signpost_type_t.end.getter();
  v17 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v4, v17, "databaseEncryptionKey", "", v7, 2u);

  v18 = v21;

  (*(v16 + 8))(v13, v15);
  (*(v12 + 8))(v11, v14);

  v19 = v0[1];

  return v19(v18, *(&v18 + 1));
}

uint64_t sub_100085500@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (static SecureEnclave.isAvailable.getter() & 1) != 0 && (sub_100026F50((a1 + 112), *(a1 + 136)), v27 = v14, v15 = type metadata accessor for ConfigurationStoreImplementation(), v16 = sub_10004FBA0(v15, &off_100164E30), v3 = v2, v14 = v27, (v16))
  {
    sub_100085CEC(v12);
    if (!v2)
    {
LABEL_6:
      (*(v8 + 32))(v14, v12, v7);
      sub_100089E20(&qword_10016BEE0, &type metadata accessor for SymmetricKey);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      result = (*(v8 + 8))(v14, v7);
      *v28 = v31;
      return result;
    }
  }

  else
  {
    sub_1000860FC(v12);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  if (qword_10016A4E8 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016BDC8, qword_10016BDE0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v18 = *(type metadata accessor for LogMessage() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  swift_getErrorValue();
  v22 = v29;
  v23 = v30;
  v32 = v30;
  v24 = sub_100042BAC(&v31);
  (*(*(v23 - 8) + 16))(v24, v22, v23);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v31, &qword_10016AB10, &unk_100130B10);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  return swift_willThrow();
}

uint64_t sub_100085944(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SHA256Digest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089E20(&qword_10016BF38, &type metadata accessor for SHA256Digest);
  v9 = dispatch thunk of Sequence.underestimatedCount.getter();
  v39 = &_swiftEmptyArrayStorage;
  sub_10007E9EC(0, v9 & ~(v9 >> 63), 0);
  v10 = v39;
  (*(v5 + 16))(v8, a1, v4);
  result = dispatch thunk of Sequence.makeIterator()();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = v38;
    if (v9)
    {
      v34 = v1;
      v13 = v37;
      *&v36 = *(v37 + 16);
      v35 = xmmword_10012FA10;
      v14 = v38;
      while (v36 != v14)
      {
        if (v12 < 0)
        {
          goto LABEL_21;
        }

        if (v14 >= *(v13 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(v13 + 32 + v14);
        sub_100026F94(&qword_10016BF40, &qword_100131BA0);
        v16 = swift_allocObject();
        *(v16 + 16) = v35;
        *(v16 + 56) = &type metadata for UInt8;
        *(v16 + 64) = &protocol witness table for UInt8;
        *(v16 + 32) = v15;
        result = String.init(format:_:)();
        v39 = v10;
        v19 = v10[2];
        v18 = v10[3];
        if (v19 >= v18 >> 1)
        {
          v33 = result;
          v21 = v17;
          sub_10007E9EC((v18 > 1), v19 + 1, 1);
          v17 = v21;
          result = v33;
          v10 = v39;
        }

        v10[2] = v19 + 1;
        v20 = &v10[2 * v19];
        v20[4] = result;
        v20[5] = v17;
        ++v14;
        if (!--v9)
        {
          v38 = v14;
          v2 = v34;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v14 = v38;
LABEL_12:
      v22 = v37;
      v23 = *(v37 + 16);
      if (v14 == v23)
      {
LABEL_13:

        return v10;
      }

      v36 = xmmword_10012FA10;
      while (v14 < v23)
      {
        v24 = v14 + 1;
        v25 = *(v22 + 32 + v14);
        v38 = v24;
        sub_100026F94(&qword_10016BF40, &qword_100131BA0);
        v26 = swift_allocObject();
        *(v26 + 16) = v36;
        *(v26 + 56) = &type metadata for UInt8;
        *(v26 + 64) = &protocol witness table for UInt8;
        *(v26 + 32) = v25;
        result = String.init(format:_:)();
        v39 = v10;
        v29 = v10[2];
        v28 = v10[3];
        if (v29 >= v28 >> 1)
        {
          *&v35 = result;
          v31 = v2;
          v32 = v27;
          sub_10007E9EC((v28 > 1), v29 + 1, 1);
          v27 = v32;
          v2 = v31;
          result = v35;
          v10 = v39;
        }

        v10[2] = v29 + 1;
        v30 = &v10[2 * v29];
        v30[4] = result;
        v30[5] = v27;
        v23 = *(v22 + 16);
        v14 = v38;
        if (v38 == v23)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100085CEC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SharedSecret();
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  if (qword_10016A4F0 != -1)
  {
    swift_once();
  }

  result = sub_100086578(qword_10016BDF0, *algn_10016BDF8, v17);
  if (!v1)
  {
    if (qword_10016A4F8 != -1)
    {
      swift_once();
    }

    sub_100086578(qword_10016BE00, *algn_10016BE08, v15);
    SecureEnclave.P256.KeyAgreement.PrivateKey.publicKey.getter();
    SecureEnclave.P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    v20 = 0;
    (*(v27 + 8))(v5, v2);
    type metadata accessor for SHA256();
    if (qword_10016A508 != -1)
    {
      swift_once();
    }

    v25 = qword_10016BE20;
    v26 = *algn_10016BE28;
    v24 = xmmword_100131AC0;
    sub_100087600(qword_10016BE20, *algn_10016BE28);
    sub_100089E20(&qword_10016BEE8, &type metadata accessor for SHA256);
    sub_100087654();
    SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
    sub_1000822A0(v24, *(&v24 + 1));
    sub_1000822A0(v25, v26);
    (*(v21 + 8))(v9, v22);
    v19 = *(v11 + 8);
    v19(v15, v10);
    return (v19)(v17, v10);
  }

  return result;
}

uint64_t sub_1000860FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SymmetricKeySize();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for SymmetricKey();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogMessage.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100026F94(&qword_10016BF30, &unk_100131B90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v31 - v13;
  if (qword_10016A500 != -1)
  {
    swift_once();
  }

  v15 = qword_10016BE10;
  v16 = *algn_10016BE18;
  sub_100087120(qword_10016BE10, *algn_10016BE18, &v34, v14);
  if (v1)
  {
    v17 = v34;
    sub_100089370();
    result = swift_allocError();
    *v19 = v17;
    return result;
  }

  v32 = 0;
  if ((*(v35 + 48))(v14, 1, v5) == 1)
  {
    v31[0] = a1;
    sub_10002BA6C(v14, &qword_10016BF30, &unk_100131B90);
    if (qword_10016A4E8 != -1)
    {
      swift_once();
    }

    v31[2] = unk_10016BDE8;
    v31[1] = sub_100026F50(qword_10016BDC8, qword_10016BDE0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v20 = *(type metadata accessor for LogMessage() - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._object = 0x800000010013B9A0;
    v23._countAndFlagsBits = 0xD000000000000027;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    v33[3] = &type metadata for String;
    v33[0] = v15;
    v33[1] = v16;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v33, &qword_10016AB10, &unk_100130B10);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    static SymmetricKeySize.bits256.getter();
    SymmetricKey.init(size:)();
    v25 = v32;
    v26 = sub_1000899F4(v8, v15, v16);
    if (v25)
    {
      v28 = v26;
      v29 = v27;
      sub_100089370();
      swift_allocError();
      *v30 = v28;
      v30[1] = v29;
      return (*(v35 + 8))(v8, v5);
    }

    v32 = 0;
    v14 = v8;
    a1 = v31[0];
  }

  return (*(v35 + 32))(a1, v14, v5);
}

uint64_t sub_100086578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LogMessage.StringInterpolation();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100026F94(&qword_10016BF08, &qword_100131B70);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v28 - v16;
  sub_1000869A0(a1, a2, v33, &v28 - v16);
  if (v3)
  {
    v18 = v33[0];
    v19 = v33[1];
    sub_100089370();
    result = swift_allocError();
    *v21 = v18;
    v21[1] = v19;
    return result;
  }

  v34 = 0;
  if ((*(v8 + 48))(v17, 1, v7) != 1)
  {
    return (*(v8 + 32))(a3, v17, v7);
  }

  v29 = a3;
  sub_10002BA6C(v17, &qword_10016BF08, &qword_100131B70);
  if (qword_10016A4E8 != -1)
  {
    swift_once();
  }

  v31 = unk_10016BDE8;
  v30 = sub_100026F50(qword_10016BDC8, qword_10016BDE0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v22 = *(type metadata accessor for LogMessage() - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._object = 0x800000010013B900;
  v25._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  v32[3] = &type metadata for String;
  v32[0] = a1;
  v32[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v32, &qword_10016AB10, &unk_100130B10);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  result = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0, 0);
  v27 = v34;
  if (!result)
  {
    __break(1u);
    return result;
  }

  result = SecureEnclave.P256.KeyAgreement.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
  a3 = v29;
  if (!v27)
  {
    sub_100089640(v11, a1, a2);
    v34 = 0;
    v17 = v11;
    return (*(v8 + 32))(a3, v17, v7);
  }

  return result;
}

uint64_t sub_1000869A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a3;
  v68 = a4;
  v5 = v4;
  v8 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v66 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F94(&qword_10016BF18, &qword_100131B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100131AD0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v13;
  type metadata accessor for CFString(0);
  *(inited + 72) = v14;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v15;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v16;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v17;
  v18 = qword_10016A510;
  swift_bridgeObjectRetain_n();
  v19 = kSecClassGenericPassword;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_10016BFB0;
  v21 = *algn_10016BFB8;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v20;
  *(inited + 200) = v21;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v22;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v23;
  v24 = qword_10016A518;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_10016BFC0;
  v26 = *algn_10016BFC8;
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v25;
  *(inited + 296) = v26;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v27;
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = 1;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v28;
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = 0;

  sub_100088F4C(inited);
  swift_setDeallocating();
  sub_100026F94(&qword_10016BF20, &qword_100131B80);
  swift_arrayDestroy();
  v72 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = SecItemCopyMatching(isa, &v72);

  if (v30 == -25300)
  {
    goto LABEL_12;
  }

  if (v30)
  {
    v70 = 0;
    v71 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v70 = 0xD000000000000016;
    v71 = 0x800000010013B950;
    v37 = SecCopyErrorMessageString(v30, 0);
    if (v37)
    {
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      *v69 = v30;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v41;
    }

    v42._countAndFlagsBits = v38;
    v42._object = v40;
    String.append(_:)(v42);

    v43 = v70;
    v44 = v71;
    sub_100089370();
    swift_willThrowTypedImpl();
    goto LABEL_18;
  }

  if (!v72 || (*v69 = v72, swift_unknownObjectRetain(), !swift_dynamicCast()))
  {
LABEL_12:
    v34 = 1;
    v35 = v68;
LABEL_13:
    (*(v9 + 56))(v35, v34, 1, v8);
    return swift_unknownObjectRelease();
  }

  v31 = v71;
  v65 = v70;
  v32 = v71 >> 62;
  if ((v71 >> 62) <= 1)
  {
    if (!v32)
    {
      *v69 = v65;
      *&v69[8] = v71;
      *&v69[12] = WORD2(v71);
      v33 = v5;
      sub_10008A1EC(v69, &v69[BYTE6(v71)], &v70);
      goto LABEL_42;
    }

    v56 = v65;
    v57 = (v65 >> 32) - v65;
    if (v65 >> 32 >= v65)
    {

      v48 = __DataStorage._bytes.getter();
      if (!v48)
      {
LABEL_35:
        v59 = __DataStorage._length.getter();
        if (v59 >= v57)
        {
          v60 = v57;
        }

        else
        {
          v60 = v59;
        }

        v61 = &v48[v60];
        if (v48)
        {
          v55 = v61;
        }

        else
        {
          v55 = 0;
        }

LABEL_30:
        v33 = v5;
        sub_10008A1EC(v48, v55, &v70);
        goto LABEL_42;
      }

      v58 = __DataStorage._offset.getter();
      if (!__OFSUB__(v56, v58))
      {
        v48 += v56 - v58;
        goto LABEL_35;
      }

LABEL_48:
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  if (v32 == 2)
  {
    v46 = *(v65 + 16);
    v47 = *(v65 + 24);

    v48 = __DataStorage._bytes.getter();
    if (v48)
    {
      v49 = __DataStorage._offset.getter();
      if (__OFSUB__(v46, v49))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v48 += v46 - v49;
    }

    v50 = __OFSUB__(v47, v46);
    v51 = v47 - v46;
    if (!v50)
    {
      v52 = __DataStorage._length.getter();
      if (v52 >= v51)
      {
        v53 = v51;
      }

      else
      {
        v53 = v52;
      }

      v54 = &v48[v53];
      if (v48)
      {
        v55 = v54;
      }

      else
      {
        v55 = 0;
      }

      goto LABEL_30;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v69[6] = 0;
  *v69 = 0;
  v33 = v5;
  sub_10008A1EC(v69, v69, &v70);
LABEL_42:
  sub_1000822A0(v65, v31);
  SecureEnclave.P256.KeyAgreement.PrivateKey.init(dataRepresentation:authenticationContext:)();
  if (!v33)
  {
    sub_1000822A0(v65, v31);
    v63 = v68;
    (*(v9 + 32))(v68, v66, v8);
    v35 = v63;
    v34 = 0;
    goto LABEL_13;
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v70 = 0xD00000000000002DLL;
  v71 = 0x800000010013B970;
  swift_getErrorValue();
  v62._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v62);

  v43 = v70;
  v44 = v71;
  sub_100089370();
  swift_willThrowTypedImpl();

  sub_1000822A0(v65, v31);
LABEL_18:
  result = swift_unknownObjectRelease();
  v45 = v67;
  *v67 = v43;
  v45[1] = v44;
  return result;
}

void sub_10008710C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100087114);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100087120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  sub_100026F94(&qword_10016BF18, &qword_100131B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100131AD0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  type metadata accessor for CFString(0);
  *(inited + 72) = v10;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v11;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v12;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v13;
  v14 = qword_10016A510;
  swift_bridgeObjectRetain_n();
  v15 = kSecClassGenericPassword;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_10016BFB0;
  v17 = *algn_10016BFB8;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v16;
  *(inited + 200) = v17;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v18;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v19;
  v20 = qword_10016A518;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_10016BFC0;
  v22 = *algn_10016BFC8;
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v21;
  *(inited + 296) = v22;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v23;
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = 1;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v24;
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = 0;

  sub_100088F4C(inited);
  swift_setDeallocating();
  sub_100026F94(&qword_10016BF20, &qword_100131B80);
  swift_arrayDestroy();
  result = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = SecItemCopyMatching(isa, &result);

  if (v26 == -25300)
  {
    goto LABEL_10;
  }

  if (!v26)
  {
    if (result)
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        SymmetricKey.init<A>(data:)();
        v27 = 0;
LABEL_11:
        v28 = type metadata accessor for SymmetricKey();
        (*(*(v28 - 8) + 56))(a4, v27, 1, v28);
        return swift_unknownObjectRelease();
      }
    }

LABEL_10:
    v27 = 1;
    goto LABEL_11;
  }

  _StringGuts.grow(_:)(24);

  *&v36 = 0xD000000000000016;
  *(&v36 + 1) = 0x800000010013B950;
  v30 = SecCopyErrorMessageString(v26, 0);
  if (v30)
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v34;
  }

  v35._countAndFlagsBits = v31;
  v35._object = v33;
  String.append(_:)(v35);

  sub_100089370();
  swift_willThrowTypedImpl();
  v29 = swift_unknownObjectRelease();
  *a3 = v36;
  return v29;
}

void sub_100087590(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100087598);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000875A4()
{
  sub_100026FDC((v0 + 112));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100087600(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100087654()
{
  result = qword_10016BEF0;
  if (!qword_10016BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BEF0);
  }

  return result;
}

uint64_t sub_1000876A8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100087724@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_10008907C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_1000877EC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000822A0(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000822A0(v6, v5);
    *v3 = xmmword_100131AC0;
    sub_1000822A0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_100087C90(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1000822A0(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_100131AC0;
    sub_1000822A0(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_100087C90(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_100087B90@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_10008907C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100089250(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000892CC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_100087C24(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100087C90(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100087D44(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_100089E20(&qword_10016BEE8, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100087F24(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_100087F24(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_100089E20(&qword_10016BEE8, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100087F24(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100089E20(&qword_10016BEE8, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100088004@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100088054(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v39 = a1;
  v2 = type metadata accessor for JWT.Secret();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JWT.Error();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for JWT();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OSSignposter();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A4E0 != -1)
  {
    swift_once();
  }

  v20 = sub_10002FD14(v15, qword_10016BDB0);
  v21 = *(v16 + 16);
  v40 = v15;
  v21(v19, v20, v15);
  static OSSignpostID.exclusive.getter();
  v22 = swift_slowAlloc();
  *v22 = 0;
  v23 = OSSignposter.logHandle.getter();
  v24 = static os_signpost_type_t.begin.getter();
  v25 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v24, v25, "verifyAccessTokenSignature", "", v22, 2u);

  _s19OnDeviceStorageCore3JWTV4fromACSS_tAC5ErrorOYKcfC();
  v26 = v10;
  v28 = v34;
  v27 = v35;
  v29 = v36;
  (*(v35 + 104))(v34, enum case for JWT.Secret.derived(_:), v36);
  JWT.verifySignature(secret:)();
  (*(v27 + 8))(v28, v29);
  (*(v32 + 8))(v26, v33);
  LOBYTE(v27) = static os_signpost_type_t.end.getter();
  v30 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v27, v30, "verifyAccessTokenSignature", "", v22, 2u);

  (*(v41 + 8))(v14, v42);
  (*(v16 + 8))(v19, v40);
  return 0;
}

unint64_t sub_10008858C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026F94(&qword_10016B000, &qword_100131BC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10009E660(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1000886B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026F94(&qword_10016BF90, &qword_1001321F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10009E700(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1000887C4(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BF80, &qword_100131BE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100026F94(&qword_10016BF88, &unk_100131BF0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10002BA04(v10, v6, &qword_10016BF80, &qword_100131BE8);
      result = sub_10009E5F4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
      result = sub_100057720(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *(v6 + v9);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100088994(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BF70, &qword_100131BD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100026F94(&qword_10016BF78, &qword_100131BE0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10002BA04(v10, v6, &qword_10016BF70, &qword_100131BD8);
      result = sub_10009E5F4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
      result = sub_100057720(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *(v6 + v9);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100088B64(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BF60, &qword_100131BC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100026F94(&qword_10016BF68, &qword_100131BD0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10002BA04(v10, v6, &qword_10016BF60, &qword_100131BC8);
      result = sub_10009E5F4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
      result = sub_100057720(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *(v6 + v9);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100088D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026F94(&qword_10016BF58, &qword_100131BB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10009E80C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100088E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026F94(&qword_10016BF50, &qword_100131BA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002BA04(v4, v13, &qword_10016B898, &qword_100131BB0);
      result = sub_10009E850(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100070144(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_100088F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026F94(&qword_10016BF28, &qword_100131B88);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002BA04(v4, &v13, &qword_10016BF20, &qword_100131B80);
      v5 = v13;
      v6 = v14;
      result = sub_10009E700(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100070144(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10008907C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_100089134(uint64_t result)
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
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
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

void *sub_1000891D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100087C24(sub_100089350, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_10008923C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000822A0(a1, a2);
  }

  return a1;
}

uint64_t sub_100089250(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000892CC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
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

unint64_t sub_100089370()
{
  result = qword_10016BF10;
  if (!qword_10016BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF10);
  }

  return result;
}

uint64_t sub_1000893C4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SHA256Digest();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_100084BF0(a1, a2);
  v15 = v14;
  sub_100089E20(&qword_10016BEE8, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100087600(v13, v15);
  sub_100087D44(v13, v15);
  sub_1000822A0(v13, v15);
  dispatch thunk of HashFunction.finalize()();
  sub_1000822A0(v13, v15);
  (*(v5 + 8))(v8, v4);
  v16 = sub_100085944(v12);
  (*(v9 + 8))(v12, v20);
  v21 = v16;
  sub_100026F94(&qword_10016AB28, &qword_100131390);
  sub_10002EFDC();
  v17 = BidirectionalCollection<>.joined(separator:)();

  return v17;
}

uint64_t sub_100089E20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100089E78(void *a1@<X8>)
{
  _StringGuts.grow(_:)(37);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x2E736574796220;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x800000010013B9F0;
}

void sub_100089F58(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v5[2] = a1;
      LOWORD(v5[3]) = a2;
      BYTE2(v5[3]) = BYTE2(a2);
      BYTE3(v5[3]) = BYTE3(a2);
      BYTE4(v5[3]) = BYTE4(a2);
      BYTE5(v5[3]) = BYTE5(a2);
      sub_100089E78(v5);
      return;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
LABEL_7:
    sub_10008A550(v3, v4);
    return;
  }

  memset(&v5[2], 0, 14);
  sub_100089E78(v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymmetricKey()
{
  sub_10008A508(&qword_10016BEE0, &type metadata accessor for SymmetricKey);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_100089F58(v3, v4);
  v1 = v0;
  sub_1000822A0(v3, v4);
  return v1;
}

uint64_t sub_10008A18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v5 = v4;
  sub_100089F58(v3, v4);
  v7 = v6;
  sub_1000822A0(v3, v5);
  return v7;
}

uint64_t sub_10008A1EC@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v4 = a2 - a1;
    if (a2 == a1)
    {
      result = 0;
      v6 = 0xC000000000000000;
    }

    else if (v4 < 15)
    {
      result = sub_10008907C(a1, a2);
      v6 = v14 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = type metadata accessor for __DataStorage();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:)();
      if (v4 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v4;
        v6 = v13 | 0x8000000000000000;
      }

      else
      {
        result = v4 << 32;
        v6 = v13 | 0x4000000000000000;
      }
    }
  }

  else
  {
    if (qword_10016A670 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100026F50(v15, v15[3]);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v7 = *(type metadata accessor for LogMessage() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100026FDC(v15);
    result = 0;
    v6 = 0xC000000000000000;
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_10008A400(uint64_t a1)
{
  result = sub_10008A508(&qword_10016BF98, &type metadata accessor for SymmetricKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A458(uint64_t a1)
{
  result = sub_10008A508(&qword_10016BFA0, &type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A4B0(uint64_t a1)
{
  result = sub_10008A508(&qword_10016BFA8, &type metadata accessor for SecureEnclave.P256.Signing.PrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A508(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10008A550(uint64_t a1, uint64_t a2)
{
  if (!__DataStorage._bytes.getter() || !__OFSUB__(a1, __DataStorage._offset.getter()))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      sub_100089E78(&v4);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10008A604()
{
  result = static Utils.daemonProcessName.getter();
  qword_10016BFB0 = result;
  *algn_10016BFB8 = v1;
  return result;
}

uint64_t sub_10008A628()
{
  result = static Utils.keychainAccessGroup.getter();
  qword_10016BFC0 = result;
  *algn_10016BFC8 = v1;
  return result;
}

uint64_t sub_10008A65C()
{
  v0 = type metadata accessor for ErrorCode.Daemon();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ErrorCode.Daemon.keyStore(_:), v0);
  v5 = ErrorCode.Daemon.errorCode.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_10008A748()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10008A778(uint64_t a1)
{
  v2 = sub_10008A8FC();

  return RichError.description.getter(a1, v2);
}

uint64_t sub_10008A7B4(uint64_t a1)
{
  v2 = sub_10008A8FC();

  return RichError.debugDescription.getter(a1, v2);
}

unint64_t sub_10008A7F8()
{
  result = qword_10016BFD0;
  if (!qword_10016BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFD0);
  }

  return result;
}

unint64_t sub_10008A850()
{
  result = qword_10016BFD8;
  if (!qword_10016BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFD8);
  }

  return result;
}

unint64_t sub_10008A8A8()
{
  result = qword_10016BFE0;
  if (!qword_10016BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFE0);
  }

  return result;
}

unint64_t sub_10008A8FC()
{
  result = qword_10016BFE8;
  if (!qword_10016BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFE8);
  }

  return result;
}

uint64_t sub_10008A960()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v5, v0);
  v6 = OSLogger.Subsystem.rawValue.getter();
  v8 = v7;
  result = (*(v1 + 8))(v4, v0);
  qword_100173660 = v6;
  *algn_100173668 = v8;
  return result;
}

uint64_t sub_10008AB60(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v3, a2);
  sub_10002FD14(v3, a2);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_10008AC28(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_10008ACD4(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0xD00000000000004CLL;
  }

  _StringGuts.grow(_:)(70);
  v4._object = 0x800000010013BAA0;
  v4._countAndFlagsBits = 0xD000000000000043;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_10008AD90()
{
  v1 = type metadata accessor for ErrorCode.Daemon();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &enum case for ErrorCode.Daemon.missingEntitlements(_:);
  if (*(v0 + 8))
  {
    v6 = &enum case for ErrorCode.Daemon.bundleIdAccessDenied(_:);
  }

  (*(v2 + 104))(v5, *v6, v1);
  v7 = ErrorCode.Daemon.errorCode.getter();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_10008AE94(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10008AEE8(uint64_t a1)
{
  v2 = sub_10008B498();

  return RichError.description.getter(a1, v2);
}

uint64_t sub_10008AF24(uint64_t a1)
{
  v2 = sub_10008B498();

  return RichError.debugDescription.getter(a1, v2);
}

uint64_t sub_10008AF60(uint64_t a1, uint64_t a2)
{
  if ((static Utils.isQaTool(bundleId:)() & 1) == 0)
  {
    v4 = AccessCredential.bundleIds.getter();
    if (v4)
    {
      v5 = v4;
      v9 = a1;
      v10 = a2;
      __chkstk_darwin(v4);
      v8[2] = &v9;
      v6 = sub_10008AC28(sub_10008B168, v8, v5);

      if ((v6 & 1) == 0)
      {
        v9 = a1;
        v10 = a2;
        sub_100042B50();
        swift_willThrowTypedImpl();
      }
    }
  }

  return a1;
}

uint64_t sub_10008B060()
{
  v1 = v0[8];
  sub_100026F50(v0 + 4, v0[7]);
  return dispatch thunk of EntitlementChecker.hasEntitlement(_:)() & 1;
}

uint64_t sub_10008B0C0()
{
  v1 = v0[8];
  sub_100026F50(v0 + 4, v0[7]);
  return dispatch thunk of EntitlementChecker.hasEntitlements(_:)() & 1;
}

uint64_t sub_10008B110(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10008B168(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10008B1C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008B210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10008B264(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10008B27C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 sub_10008B2BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10008B2E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10008B328(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10008B394()
{
  result = qword_10016BFF0;
  if (!qword_10016BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFF0);
  }

  return result;
}

unint64_t sub_10008B3EC()
{
  result = qword_10016BFF8;
  if (!qword_10016BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFF8);
  }

  return result;
}

unint64_t sub_10008B444()
{
  result = qword_10016C000;
  if (!qword_10016C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C000);
  }

  return result;
}

unint64_t sub_10008B498()
{
  result = qword_10016C008;
  if (!qword_10016C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C008);
  }

  return result;
}

__n128 sub_10008B4EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10008B500(uint64_t a1, int a2)
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

uint64_t sub_10008B548(uint64_t result, int a2, int a3)
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

uint64_t sub_10008B5A4(uint64_t a1, unint64_t a2)
{

  v4 = String.Iterator.next()();
  v5 = a1;
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    v5 = a1;
    while ((v5 ^ a2) >= 0x4000)
    {
      v10 = Substring.subscript.getter();
      v12 = v11;
      v5 = Substring.index(after:)();
      if (countAndFlagsBits == v10 && object == v12)
      {
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v9 = String.Iterator.next()();
      countAndFlagsBits = v9.value._countAndFlagsBits;
      object = v9.value._object;
      if (!v9.value._object)
      {
        goto LABEL_9;
      }
    }

    return 1;
  }

  else
  {
LABEL_9:

    if ((v5 ^ a2) >= 0x4000)
    {
      Substring.subscript.getter();
      Substring.index(after:)();
LABEL_13:

      return 0;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_10008B764()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_10008B8C0()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSLogger();
  sub_10002FDA4(v5, qword_10016C010);
  sub_10002FD14(v5, qword_10016C010);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v6 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v6, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_10008BA18()
{
  *(v1 + 104) = v0;
  v2 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  *(v1 + 112) = v4;
  *v4 = v1;
  v4[1] = sub_10008BADC;

  return BaseObjectGraph.inject<A>(_:)(v1 + 64, v2, v2);
}

uint64_t sub_10008BADC()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_10008C18C;
  }

  else
  {
    v3 = sub_10008BBF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008BBF0()
{
  v1 = sub_100026F50(v0 + 8, v0[11]);
  v0[16] = v1;
  v2 = *v1;

  return _swift_task_switch(sub_10008BC60, v2, 0);
}

uint64_t sub_10008BC60()
{
  v1 = **(v0 + 128);
  *(v0 + 136) = sub_100050B84();

  return _swift_task_switch(sub_10008BCD0, 0, 0);
}

uint64_t sub_10008BCD0()
{
  v1 = v0[13];
  v2 = sub_100026F50(v0 + 8, v0[11]);
  sub_10008E36C(v1, (v0 + 2));
  v3 = *v2;
  v0[18] = *v2;

  return _swift_task_switch(sub_10008BD54, v3, 0);
}

uint64_t sub_10008BD54()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_10008BE50;
  v4 = *(v0 + 144);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10008BE50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v7 = *(v3 + 144);
  if (v1)
  {
    v8 = sub_10008C0B4;
  }

  else
  {
    v8 = sub_10008BF84;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10008BF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[18];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v3[20];
  v9 = v3[17];
  *(v4 + 216) = v7;
  v3[22] = sub_10008E3D4(v8, v9);

  v10 = *(v4 + 216);
  v6 = __OFSUB__(v10, 1);
  v11 = v10 - 1;
  if (v6)
  {
LABEL_7:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v12 = v3[17];
  *(v4 + 216) = v11;
  sub_10008E3A4((v3 + 2));

  a1 = sub_10008C04C;
  a2 = 0;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10008C04C()
{
  sub_100026FDC(v0 + 8);
  v1 = v0[1];
  v2 = v0[22];

  return v1(v2);
}

uint64_t sub_10008C0B4()
{
  v1 = *(v0 + 136);
  sub_10008E3A4(v0 + 16);

  return _swift_task_switch(sub_10008C128, 0, 0);
}

uint64_t sub_10008C128()
{
  sub_100026FDC(v0 + 8);
  v1 = v0[21];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10008C1A4(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v33 = _swiftEmptyArrayStorage;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v9 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = (*(a1 + 56) + (v11 << 6));
      v17 = v15[1];
      v16 = v15[2];
      v18 = *v15;
      *(v35 + 9) = *(v15 + 41);
      v34[1] = v17;
      v35[0] = v16;
      v34[0] = v18;
      *&v28[9] = *(v15 + 41);
      v19 = v15[2];
      v27 = v15[1];
      *v28 = v19;
      v26 = *v15;
      v29[0] = v14;
      v29[1] = v13;
      *(v32 + 9) = *&v28[9];
      v31 = v27;
      v32[0] = v19;
      v30 = v26;

      sub_100092A0C(v34, v25);
      v20 = sub_100091984();
      sub_10002BA6C(v29, &qword_10016C040, &qword_1001321E8);
      sub_10007FEC0(v20);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v21 = sub_10006A4E8(v33);

  if (v21[2])
  {
    sub_100026F94(&qword_10016BF90, &qword_1001321F0);
    v22 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v22 = _swiftEmptyDictionarySingleton;
  }

  v29[0] = v22;

  sub_100092A74(v23, 1, v29);

  return v29[0];
}

uint64_t sub_10008C3C8()
{
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  *v3 = v0;
  v3[1] = sub_10008C484;

  return BaseObjectGraph.inject<A>(_:)(v0 + 144, v1, v1);
}

uint64_t sub_10008C484()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_10008CECC;
  }

  else
  {
    v3 = sub_10008C598;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008C598()
{
  v1 = *sub_100026F50(v0 + 18, v0[21]);
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_10008C63C;

  return sub_100064D70((v0 + 10));
}

uint64_t sub_10008C63C()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_10008CE68;
  }

  else
  {
    v3 = sub_10008C750;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008C750()
{
  v1 = *(v0 + 80);
  if (!v1)
  {
    v32 = sub_1000886B0(_swiftEmptyArrayStorage);
LABEL_25:
    sub_100026FDC((v0 + 144));
    v63 = *(v0 + 8);

    return v63(v32);
  }

  *(v0 + 16) = v1;
  *(v0 + 24) = *(v0 + 88);
  *(v0 + 40) = *(v0 + 104);
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = *(v0 + 136);
  v2 = v0;
  v3 = sub_1000886B0(_swiftEmptyArrayStorage);
  *(v0 + 192) = *(v0 + 24);
  v68 = (v0 + 80);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v4, v6, 0xD000000000000018, 0x800000010013BE60, isUniquelyReferenced_nonNull_native);
  *(v0 + 200) = *(v0 + 32);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v8, v10, 0xD000000000000019, 0x800000010013BE80, v11);
  *(v0 + 208) = *(v0 + 40);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v13;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v12, v14, 0xD00000000000001ALL, 0x800000010013BEA0, v15);
  *(v0 + 216) = *(v0 + 48);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v16, v18, 0xD00000000000001BLL, 0x800000010013BEC0, v19);
  *(v0 + 224) = *(v0 + 56);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v20, v22, 0xD000000000000019, 0x800000010013BEE0, v23);
  *(v0 + 232) = *(v0 + 64);
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  v26 = v25;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v24, v26, 0xD00000000000001ALL, 0x800000010013BF00, v27);
  *(v0 + 240) = sub_1000F8A78();
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v28, v30, 0x632E73726F727265, 0xEC000000746E756FLL, v31);
  v32 = v3;
  v65 = v2;
  v33 = *(v2 + 72);
  *(v2 + 184) = v33;
  v34 = *(v33 + 16);
  if (!v34)
  {
    sub_10002BA6C(v68, &qword_10016C048, &qword_1001321F8);
LABEL_24:
    v0 = v65;
    goto LABEL_25;
  }

  v64 = v3;

  sub_10007E9EC(0, v34, 0);
  v70 = _swiftEmptyArrayStorage;
  v35 = v33 + 64;
  v36 = -1 << *(v33 + 32);
  result = _HashTable.startBucket.getter();
  v38 = result;
  v39 = 0;
  v40 = *(v33 + 36);
  v66 = v34;
  v67 = v40;
  while ((v38 & 0x8000000000000000) == 0 && v38 < 1 << *(v33 + 32))
  {
    v42 = v38 >> 6;
    if ((*(v35 + 8 * (v38 >> 6)) & (1 << v38)) == 0)
    {
      goto LABEL_29;
    }

    if (v40 != *(v33 + 36))
    {
      goto LABEL_30;
    }

    v69 = v39;
    v43 = *(*(v33 + 56) + 8 * v38);
    v68[21] = *(*(v33 + 48) + 8 * v38);
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 8250;
    v45._object = 0xE200000000000000;
    String.append(_:)(v45);
    v68[22] = v43;
    v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v46);

    v47 = v70;
    v49 = v70[2];
    v48 = v70[3];
    if (v49 >= v48 >> 1)
    {
      result = sub_10007E9EC((v48 > 1), v49 + 1, 1);
      v47 = v70;
    }

    v47[2] = v49 + 1;
    v50 = &v47[2 * v49];
    v50[4] = 2108681;
    v50[5] = 0xE300000000000000;
    v41 = 1 << *(v33 + 32);
    if (v38 >= v41)
    {
      goto LABEL_31;
    }

    v35 = v33 + 64;
    v51 = *(v33 + 64 + 8 * v42);
    if ((v51 & (1 << v38)) == 0)
    {
      goto LABEL_32;
    }

    v70 = v47;
    v40 = v67;
    if (v67 != *(v33 + 36))
    {
      goto LABEL_33;
    }

    v52 = v51 & (-2 << (v38 & 0x3F));
    if (v52)
    {
      v41 = __clz(__rbit64(v52)) | v38 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v53 = v42 << 6;
      v54 = (v33 + 72 + 8 * v42);
      v55 = v42 + 1;
      while (v55 < (v41 + 63) >> 6)
      {
        v57 = *v54++;
        v56 = v57;
        v53 += 64;
        ++v55;
        if (v57)
        {
          result = sub_1000579A0(v38, v67, 0);
          v41 = __clz(__rbit64(v56)) + v53;
          goto LABEL_5;
        }
      }

      result = sub_1000579A0(v38, v67, 0);
    }

LABEL_5:
    v39 = v69 + 1;
    v38 = v41;
    if (v69 + 1 == v66)
    {
      sub_10002BA6C(v68, &qword_10016C048, &qword_1001321F8);
      sub_10002BA6C((v68 + 13), &qword_10016C050, &unk_100132200);
      v68[23] = v70;
      sub_100026F94(&qword_10016AB28, &qword_100131390);
      sub_10002EFDC();
      v58 = BidirectionalCollection<>.joined(separator:)();
      v60 = v59;

      v61._countAndFlagsBits = v58;
      v61._object = v60;
      String.append(_:)(v61);

      v62 = swift_isUniquelyReferenced_nonNull_native();
      sub_1000A1380(10, 0xE100000000000000, 0x642E73726F727265, 0xEF64656C69617465, v62);
      v32 = v64;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_10008CE68()
{
  sub_100026FDC(v0 + 18);
  v1 = v0[37];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10008CEE4()
{
  v1 = type metadata accessor for LogMessage.StringInterpolation();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for OSLogger();
  sub_10002FD14(v26, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD00000000000002ELL;
  v5._object = 0x800000010013BDD0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  sub_100026F50(v0, v0[3]);
  type metadata accessor for ConfigurationStoreImplementation();
  v6 = sub_10004FE24();
  v29 = &type metadata for Int64;
  v27 = v6;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v27, &qword_10016AB10, &unk_100130B10);
  v7._countAndFlagsBits = 0x695365676150202CLL;
  v7._object = 0xEC000000203A657ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  sub_100026F50(v0, v0[3]);
  v8 = sub_10004FEF0();
  v29 = &type metadata for Int32;
  LODWORD(v27) = v8;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v27, &qword_10016AB10, &unk_100130B10);
  v9._countAndFlagsBits = 0x536568636143202CLL;
  v9._object = 0xED0000203A657A69;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  sub_100026F50(v0, v0[3]);
  v10 = sub_10004FFBC();
  v29 = &type metadata for Int32;
  LODWORD(v27) = v10;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v27, &qword_10016AB10, &unk_100130B10);
  v11._countAndFlagsBits = 0x695479737542202CLL;
  v11._object = 0xEF203A74756F656DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  sub_100026F50(v0, v0[3]);
  v12 = sub_100050088();
  v29 = &type metadata for Int32;
  LODWORD(v27) = v12;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v27, &qword_10016AB10, &unk_100130B10);
  v13._countAndFlagsBits = 0xD000000000000013;
  v13._object = 0x800000010013BE00;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  sub_100026F50(v0, v0[3]);
  v14 = sub_100050154();
  v29 = &type metadata for String;
  v27 = v14;
  v28 = v15;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v27, &qword_10016AB10, &unk_100130B10);
  v16._countAndFlagsBits = 0x616E72756F4A202CLL;
  v16._object = 0xEF203A65646F4D6CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  sub_100026F50(v0, v0[3]);
  v17 = sub_100050238();
  v29 = &type metadata for String;
  v27 = v17;
  v28 = v18;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v27, &qword_10016AB10, &unk_100130B10);
  v19._object = 0x800000010013BE20;
  v19._countAndFlagsBits = 0xD000000000000015;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  sub_100026F50(v0, v0[3]);
  v20 = sub_100050318();
  v29 = &type metadata for Int32;
  LODWORD(v27) = v20;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v27, &qword_10016AB10, &unk_100130B10);
  v21._object = 0x800000010013BE40;
  v21._countAndFlagsBits = 0xD000000000000015;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  sub_100026F50(v0, v0[3]);
  v22 = sub_1000503E4();
  v29 = &type metadata for Bool;
  LOBYTE(v27) = v22 & 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v27, &qword_10016AB10, &unk_100130B10);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();
}

uint64_t sub_10008D458(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v4 = *(*(type metadata accessor for SystemStatusProvider.MemoryStats(0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10008D514, 0, 0);
}

uint64_t sub_10008D514()
{
  sub_100026F50(*(v0 + 208), *(*(v0 + 208) + 24));
  type metadata accessor for ConfigurationStoreImplementation();
  if (sub_1000503E4())
  {
    v1 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    *v3 = v0;
    v3[1] = sub_10008D658;
    v4 = *(v0 + 200);

    return BaseObjectGraph.inject<A>(_:)(v0 + 64, v1, v1);
  }

  else
  {
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10008D658()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10008E110;
  }

  else
  {
    v3 = sub_10008D76C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008D76C()
{
  v1 = sub_100026F50(v0 + 8, v0[11]);
  v0[31] = v1;
  v2 = *v1;

  return _swift_task_switch(sub_10008D7DC, v2, 0);
}

uint64_t sub_10008D7DC()
{
  v1 = **(v0 + 248);
  *(v0 + 256) = sub_100050B84();

  return _swift_task_switch(sub_10008D84C, 0, 0);
}

uint64_t sub_10008D84C()
{
  v1 = v0[32];
  v2 = v0[26];
  v3 = sub_100026F50(v0 + 8, v0[11]);
  sub_10008E36C(v2, (v0 + 2));
  v4 = *v3;
  v0[33] = *v3;

  return _swift_task_switch(sub_10008D8EC, v4, 0);
}

uint64_t sub_10008D8EC()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  *v3 = v0;
  v3[1] = sub_10008D9E8;
  v4 = *(v0 + 264);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10008D9E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(v4 + 280) = a1;
  *(v4 + 288) = v1;

  v7 = *(v3 + 264);
  if (v1)
  {
    v8 = sub_10008DE54;
  }

  else
  {
    v8 = sub_10008DB1C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10008DB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[33];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v3[35];
  v9 = v3[32];
  *(v4 + 216) = v7;
  v3[37] = sub_10008E3D4(v8, v9);

  v10 = *(v4 + 216);
  v6 = __OFSUB__(v10, 1);
  v11 = v10 - 1;
  if (v6)
  {
LABEL_7:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v12 = v3[32];
  *(v4 + 216) = v11;
  sub_10008E3A4((v3 + 2));

  a1 = sub_10008DBE4;
  a2 = 0;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10008DBE4()
{
  v1 = v0[32];
  v2 = v0[26];
  sub_10008F0D4(v0[37]);
  v3 = *(v1 + 16);

  v4 = v0[37];
  if (v3)
  {
    v5 = v0[28];
    v6 = v0[26];
    sub_100090354(v0[37], v3, v5);

    sub_100090BC0(v5);
    sub_100092724(v5, type metadata accessor for SystemStatusProvider.MemoryStats);
  }

  else
  {
    v7 = v0[37];
  }

  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v8 = v0[27];
  v9 = type metadata accessor for OSLogger();
  sub_10002FD14(v9, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v10 = *(type metadata accessor for LogMessage() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x800000010013BB30;
  v13._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v0[20] = &type metadata for Int;
  v0[17] = v3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 17), &qword_10016AB10, &unk_100130B10);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC(v0 + 8);
  v16 = v0[27];
  v15 = v0[28];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10008DE54()
{
  v1 = *(v0 + 256);
  sub_10008E3A4(v0 + 16);
  swift_bridgeObjectRelease_n();

  return _swift_task_switch(sub_10008DECC, 0, 0);
}

uint64_t sub_10008DECC()
{
  sub_100026FDC(v0 + 8);
  v1 = v0[36];
  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v3 = type metadata accessor for OSLogger();
  sub_10002FD14(v3, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013BAF0;
  v7._countAndFlagsBits = 0xD000000000000030;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[21];
  v9 = v0[22];
  v0[16] = v9;
  v10 = sub_100042BAC(v0 + 13);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 13), &qword_10016AB10, &unk_100130B10);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v13 = v0[27];
  v12 = v0[28];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10008E110()
{
  v1 = v0[30];
  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v3 = type metadata accessor for OSLogger();
  sub_10002FD14(v3, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013BAF0;
  v7._countAndFlagsBits = 0xD000000000000030;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[21];
  v9 = v0[22];
  v0[16] = v9;
  v10 = sub_100042BAC(v0 + 13);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 13), &qword_10016AB10, &unk_100130B10);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v13 = v0[27];
  v12 = v0[28];

  v14 = v0[1];

  return v14();
}

void *sub_10008E3D4(uint64_t a1, uint64_t a2)
{
  v2 = _swiftEmptyDictionarySingleton;
  v3 = &off_1001641A0;
  for (i = 9; ; --i)
  {
    v5 = *(v3 - 8);
    v7 = *(v3 - 3);
    v6 = *(v3 - 2);
    v9 = *(v3 - 1);
    v8 = *v3;
    pCurrent[0] = 0;
    v138 = 0;

    v135 = v5;
    v10 = sqlite3_status(v5, pCurrent, &v138, 0);
    v133 = v9;
    v123 = v3;
    if (v10)
    {
      *&v146[0] = 0x203A726F727245;
      *(&v146[0] + 1) = 0xE700000000000000;

      v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v11);

      v125 = *(&v146[0] + 1);
      v129 = *&v146[0];
    }

    else
    {
      v129 = pCurrent[0] | (v138 << 32);

      v125 = 0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10009E700(v7, v6);
    v15 = v14;
    v16 = _swiftEmptyDictionarySingleton[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_76;
    }

    if (_swiftEmptyDictionarySingleton[3] >= v18)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000A2D70();
      }
    }

    else
    {
      sub_1000A0258(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_10009E700(v7, v6);
      if ((v15 & 1) != (v19 & 1))
      {
        goto LABEL_80;
      }
    }

    v137 = v10 != 0;
    if ((v15 & 1) == 0)
    {
      break;
    }

    v20 = _swiftEmptyDictionarySingleton[7] + (v13 << 6);
    v22 = *(v20 + 16);
    v21 = *(v20 + 32);
    v23 = *v20;
    *(v147 + 9) = *(v20 + 41);
    v146[1] = v22;
    v147[0] = v21;
    v146[0] = v23;
    *v20 = v135;
    *(v20 + 8) = v7;
    *(v20 + 16) = v6;
    *(v20 + 24) = v133;
    *(v20 + 32) = v8;
    *(v20 + 40) = v129;
    *(v20 + 48) = v125;
    *(v20 + 56) = v137;
    sub_100092A44(v146);

    v24 = v123;
    if (!i)
    {
      goto LABEL_17;
    }

LABEL_16:
    v3 = v24 + 5;
  }

  _swiftEmptyDictionarySingleton[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (_swiftEmptyDictionarySingleton[6] + 16 * v13);
  *v25 = v7;
  v25[1] = v6;
  v26 = _swiftEmptyDictionarySingleton[7] + (v13 << 6);
  *v26 = v135;
  *(v26 + 8) = v7;
  *(v26 + 16) = v6;
  *(v26 + 24) = v133;
  *(v26 + 32) = v8;
  *(v26 + 40) = v129;
  *(v26 + 48) = v125;
  *(v26 + 56) = v137;

  v27 = _swiftEmptyDictionarySingleton[2];
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    goto LABEL_79;
  }

  _swiftEmptyDictionarySingleton[2] = v29;
  v24 = v123;
  if (i)
  {
    goto LABEL_16;
  }

LABEL_17:
  v30 = 0;
  do
  {
    v32 = v2;
    v110 = v30;
    v33 = &off_100164310 + 5 * v30;
    v35 = v33[5];
    v34 = v33[6];
    v36 = v33[7];
    v37 = v33[8];
    v114 = *(v33 + 8);
    v138 = v114;
    v139 = v35;
    v140 = v34;
    v112 = v36;
    v141 = v36;
    v142 = v37;
    *pCurrent = 0x2E6E69616DLL;
    *&pCurrent[2] = 0xE500000000000000;
    swift_bridgeObjectRetain_n();
    v130 = v37;

    v118 = v35;
    v38._countAndFlagsBits = v35;
    v132 = v34;
    v38._object = v34;
    String.append(_:)(v38);

    v39 = *pCurrent;
    v40 = *&pCurrent[2];
    sub_100092784(a1, &v138, *pCurrent, *&pCurrent[2], v146);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *pCurrent = v32;
    sub_1000A16B4(v146, v39, v40, v41);
    v111 = v110 + 1;

    v2 = *pCurrent;
    v42 = 1 << *(a2 + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v44 = v43 & *(a2 + 64);
    v45 = (v42 + 63) >> 6;

    v46 = 0;
    v116 = v45;
    v47 = a2 + 64;
    if (v44)
    {
      while (1)
      {
        v126 = v2;
        v52 = v46;
LABEL_30:
        v53 = __clz(__rbit64(v44)) | (v52 << 6);
        v54 = (*(a2 + 48) + 16 * v53);
        v55 = v54[1];
        v56 = *(*(a2 + 56) + 8 * v53);
        *pCurrent = *v54;
        *&pCurrent[2] = v55;
        swift_bridgeObjectRetain_n();

        v57._countAndFlagsBits = 46;
        v57._object = 0xE100000000000000;
        String.append(_:)(v57);

        v58._countAndFlagsBits = v118;
        v58._object = v132;
        String.append(_:)(v58);

        v134 = *pCurrent;
        v60 = *&pCurrent[2];
        __chkstk_darwin(v59);

        Connection.withUnsafeHandleUnchecked<A>(_:)();
        if (pCurrent[0])
        {
          *pCurrent = 0x203A726F727245;
          *&pCurrent[2] = 0xE700000000000000;

          v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v61);

          v121 = *&pCurrent[2];
          v122 = *pCurrent;
          v120 = 1;
        }

        else
        {
          v122 = 0;

          v120 = 0;
          v121 = 0;
        }

        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = sub_10009E700(v134, v60);
        v65 = v64;
        v66 = v126[2];
        v67 = (v64 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          break;
        }

        if (v126[3] >= v68)
        {
          v45 = v116;
          if ((v62 & 1) == 0)
          {
            sub_1000A2D70();
            v45 = v116;
          }
        }

        else
        {
          sub_1000A0258(v68, v62);
          v63 = sub_10009E700(v134, v60);
          v45 = v116;
          if ((v65 & 1) != (v69 & 1))
          {
            goto LABEL_80;
          }
        }

        v44 &= v44 - 1;
        if (v65)
        {

          v2 = v126;
          v48 = v126[7] + (v63 << 6);
          v50 = *(v48 + 16);
          v49 = *(v48 + 32);
          v51 = *v48;
          *(v145 + 9) = *(v48 + 41);
          v144 = v50;
          v145[0] = v49;
          *pCurrent = v51;
          *v48 = v114;
          *(v48 + 8) = v134;
          *(v48 + 16) = v60;
          *(v48 + 24) = v112;
          *(v48 + 32) = v130;
          *(v48 + 40) = v122;
          *(v48 + 48) = v121;
          *(v48 + 56) = v120;
          sub_100092A44(pCurrent);

          v46 = v52;
          v47 = a2 + 64;
          if (!v44)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v2 = v126;
          v126[(v63 >> 6) + 8] |= 1 << v63;
          v70 = (v126[6] + 16 * v63);
          *v70 = v134;
          v70[1] = v60;
          v71 = v126[7] + (v63 << 6);
          *v71 = v114;
          *(v71 + 8) = v134;
          *(v71 + 16) = v60;
          *(v71 + 24) = v112;
          *(v71 + 32) = v130;
          *(v71 + 40) = v122;
          *(v71 + 48) = v121;
          *(v71 + 56) = v120;

          v72 = v126[2];
          v28 = __OFADD__(v72, 1);
          v73 = v72 + 1;
          if (v28)
          {
            goto LABEL_75;
          }

          v126[2] = v73;
          v46 = v52;
          v47 = a2 + 64;
          if (!v44)
          {
            goto LABEL_26;
          }
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      __break(1u);
      goto LABEL_78;
    }

    while (1)
    {
LABEL_26:
      v52 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (v52 >= v45)
      {
        break;
      }

      v44 = *(v47 + 8 * v52);
      ++v46;
      if (v44)
      {
        v126 = v2;
        goto LABEL_30;
      }
    }

    v31 = a2;

    v30 = v111;
  }

  while (v111 != 13);
  v74 = 0;
  do
  {
    v75 = &off_100164538 + 5 * v74;
    v117 = *(v75 + 8);
    v76 = v75[6];
    v124 = v75[5];
    v77 = v75[8];
    v113 = v74 + 1;
    v115 = v75[7];
    v78 = 1 << *(v31 + 32);
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    else
    {
      v79 = -1;
    }

    v80 = v79 & *(v31 + 64);
    v119 = (v78 + 63) >> 6;

    v131 = v76;

    v127 = v77;

    v81 = 0;
LABEL_51:
    if (v80)
    {
      v86 = v2;
      v87 = v81;
      goto LABEL_57;
    }

    while (1)
    {
      v87 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_72;
      }

      if (v87 >= v119)
      {
        break;
      }

      v80 = *(v47 + 8 * v87);
      ++v81;
      if (v80)
      {
        v86 = v2;
LABEL_57:
        v88 = __clz(__rbit64(v80)) | (v87 << 6);
        v89 = (*(v31 + 48) + 16 * v88);
        v90 = v89[1];
        v91 = *(*(v31 + 56) + 8 * v88);
        *pCurrent = *v89;
        *&pCurrent[2] = v90;
        swift_bridgeObjectRetain_n();

        v92._countAndFlagsBits = 46;
        v92._object = 0xE100000000000000;
        String.append(_:)(v92);

        v93._countAndFlagsBits = v124;
        v93._object = v131;
        String.append(_:)(v93);

        v136 = *pCurrent;
        v94 = *&pCurrent[2];
        v95._countAndFlagsBits = v124;
        v95._object = v131;
        String.append(_:)(v95);
        Connection.scalar(_:_:)();

        if (*(&v144 + 1))
        {
          sub_100026F94(&qword_10016C038, &qword_1001321C0);
          v2 = v86;
          if (swift_dynamicCast())
          {
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
          }
        }

        else
        {
          sub_10002BA6C(pCurrent, &qword_10016C030, &qword_1001321B8);
          v2 = v86;
        }

        v96 = swift_isUniquelyReferenced_nonNull_native();
        v97 = sub_10009E700(v136, v94);
        v99 = v98;
        v100 = v2[2];
        v101 = (v98 & 1) == 0;
        v102 = v100 + v101;
        if (__OFADD__(v100, v101))
        {
          goto LABEL_74;
        }

        if (v2[3] >= v102)
        {
          v31 = a2;
          if ((v96 & 1) == 0)
          {
            sub_1000A2D70();
            v31 = a2;
          }
        }

        else
        {
          sub_1000A0258(v102, v96);
          v97 = sub_10009E700(v136, v94);
          v31 = a2;
          if ((v99 & 1) != (v103 & 1))
          {
            goto LABEL_80;
          }
        }

        v80 &= v80 - 1;
        if (v99)
        {

          v82 = v2[7] + (v97 << 6);
          v84 = *(v82 + 16);
          v83 = *(v82 + 32);
          v85 = *v82;
          *(v145 + 9) = *(v82 + 41);
          v144 = v84;
          v145[0] = v83;
          *pCurrent = v85;
          *v82 = v117;
          *(v82 + 8) = v136;
          *(v82 + 16) = v94;
          *(v82 + 24) = v115;
          *(v82 + 32) = v127;
          *(v82 + 40) = 0;
          *(v82 + 48) = 1;
          *(v82 + 56) = 0;
          sub_100092A44(pCurrent);

          goto LABEL_50;
        }

        v2[(v97 >> 6) + 8] |= 1 << v97;
        v104 = (v2[6] + 16 * v97);
        *v104 = v136;
        v104[1] = v94;
        v105 = v2[7] + (v97 << 6);
        *v105 = v117;
        *(v105 + 8) = v136;
        *(v105 + 16) = v94;
        *(v105 + 24) = v115;
        *(v105 + 32) = v127;
        *(v105 + 40) = 0;
        *(v105 + 48) = 1;
        *(v105 + 56) = 0;

        v106 = v2[2];
        v28 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v28)
        {
          goto LABEL_77;
        }

        v2[2] = v107;
LABEL_50:
        v81 = v87;
        v47 = a2 + 64;
        goto LABEL_51;
      }
    }

    v74 = v113;
  }

  while (v113 != 4);
  return v2;
}

void sub_10008F0C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10008F0D4(uint64_t a1)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v158 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + 64);
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v160 = a1;

  v12 = 0;
  v159 = xmmword_10012FA10;
  v157 = (a1 + 64);
  v154 = v11;
LABEL_6:
  if (v10)
  {
    v13 = v12;
  }

  else
  {
    do
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_138;
      }

      if (v13 >= v11)
      {
        v38 = v160;

        if (!v38[2])
        {
          goto LABEL_31;
        }

        v39 = sub_10009E700(0x735579726F6D654DLL, 0xEA00000000006465);
        if ((v40 & 1) == 0)
        {
          goto LABEL_31;
        }

        v41 = (v38[7] + (v39 << 6));
        v43 = v41[1];
        v42 = v41[2];
        v44 = *v41;
        *(v181 + 9) = *(v41 + 41);
        v180 = v43;
        v181[0] = v42;
        v179 = v44;
        sub_100092A0C(&v179, &v176);
        v45 = sub_100091984();
        sub_100092A44(&v179);
        if (!*(v45 + 16))
        {

          goto LABEL_31;
        }

        v1 = 0xD000000000000016;
        v46 = sub_10009E700(0xD000000000000016, 0x800000010013BD20);
        if ((v47 & 1) == 0)
        {

          v38 = v160;
          goto LABEL_31;
        }

        v48 = (*(v45 + 56) + 16 * v46);
        v2 = *v48;
        v11 = v48[1];

        if (qword_10016A558 == -1)
        {
          goto LABEL_28;
        }

        goto LABEL_144;
      }

      v10 = v7[v13];
      ++v12;
    }

    while (!v10);
  }

  v155 = v13;
  v156 = ((v10 - 1) & v10);
  v14 = (v160[7] + ((v13 << 12) | (__clz(__rbit64(v10)) << 6)));
  v16 = v14[1];
  v15 = v14[2];
  v17 = *v14;
  *(v173 + 9) = *(v14 + 41);
  v172[1] = v16;
  v173[0] = v15;
  v172[0] = v17;
  sub_100092A0C(v172, &v179);
  v18 = sub_100091984();
  sub_100092A44(v172);
  v19 = 0;
  v21 = v18 + 64;
  v20 = *(v18 + 64);
  v161 = v18;
  v22 = 1 << *(v18 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v2 = v23 & v20;
  v24 = (v22 + 63) >> 6;
  if ((v23 & v20) != 0)
  {
    do
    {
LABEL_19:
      v26 = (v19 << 10) | (16 * __clz(__rbit64(v2)));
      v27 = *(v161 + 56);
      v28 = (*(v161 + 48) + v26);
      v29 = v28[1];
      v162 = *v28;
      v30 = (v27 + v26);
      v31 = v30[1];
      v166 = *v30;
      v32 = qword_10016A558;

      v165 = v31;

      if (v32 != -1)
      {
        swift_once();
      }

      v2 &= v2 - 1;
      v164 = type metadata accessor for OSLogger();
      v163 = sub_10002FD14(v164, qword_10016C010);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v33 = *(type metadata accessor for LogMessage() - 8);
      v34 = *(v33 + 72);
      v11 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      *(swift_allocObject() + 16) = v159;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v35._countAndFlagsBits = 0x505F4554494C5153;
      v35._object = 0xED0000203A465245;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *(&v180 + 1) = &type metadata for String;
      *&v179 = v162;
      *(&v179 + 1) = v29;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      v1 = &qword_10016AB10;
      sub_10002BA6C(&v179, &qword_10016AB10, &unk_100130B10);
      v36._countAndFlagsBits = 8250;
      v36._object = 0xE200000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *(&v180 + 1) = &type metadata for String;
      *&v179 = v166;
      *(&v179 + 1) = v165;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v179, &qword_10016AB10, &unk_100130B10);
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();
    }

    while (v2);
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      v11 = v154;
      v12 = v155;
      v10 = v156;
      v7 = v157;
      goto LABEL_6;
    }

    v2 = *(v21 + 8 * v25);
    ++v19;
    if (v2)
    {
      v19 = v25;
      goto LABEL_19;
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
  while (2)
  {
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    swift_once();
LABEL_28:
    v49 = type metadata accessor for OSLogger();
    sub_10002FD14(v49, qword_10016C010);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v50 = *(type metadata accessor for LogMessage() - 8);
    v51 = *(v50 + 72);
    v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    *(swift_allocObject() + 16) = v159;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v53._countAndFlagsBits = v1 + 14;
    v53._object = 0x800000010013BD80;
    LogMessage.StringInterpolation.appendLiteral(_:)(v53);
    *(&v177 + 1) = &type metadata for String;
    *&v176 = v2;
    *(&v176 + 1) = v11;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v176, &qword_10016AB10, &unk_100130B10);
    v54._countAndFlagsBits = 66;
    v54._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v38 = v160;
    v7 = v157;
LABEL_31:
    v55 = 1 << *(v38 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v2 = v56 & v38[8];
    v1 = (v55 + 63) >> 6;

    v57 = 0;
    v156 = _swiftEmptyArrayStorage;
    v11 = &type metadata for String;
LABEL_34:
    v58 = v57;
    if (!v2)
    {
      goto LABEL_36;
    }

    do
    {
      v57 = v58;
LABEL_39:
      v59 = (v160[6] + ((v57 << 10) | (16 * __clz(__rbit64(v2)))));
      v60 = *v59;
      v61 = v59[1];
      v2 &= v2 - 1;
      *&v176 = *v59;
      *(&v176 + 1) = v61;
      *&v174[0] = 0x7469486568636143;
      *(&v174[0] + 1) = 0xE800000000000000;
      sub_10002C5B0();

      if (StringProtocol.contains<A>(_:)())
      {
        v62 = v156;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v169 = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10007E9EC(0, v62[2] + 1, 1);
          v62 = v169;
        }

        v65 = v62[2];
        v64 = v62[3];
        v66 = v65 + 1;
        if (v65 >= v64 >> 1)
        {
          v166 = v65 + 1;
          sub_10007E9EC((v64 > 1), v65 + 1, 1);
          v66 = v166;
          v62 = v169;
        }

        v62[2] = v66;
        v156 = v62;
        v67 = &v62[2 * v65];
        v67[4] = v60;
        v67[5] = v61;
        v7 = v157;
        goto LABEL_34;
      }

      v58 = v57;
      v7 = v157;
    }

    while (v2);
    while (1)
    {
LABEL_36:
      v57 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_139;
      }

      if (v57 >= v1)
      {
        break;
      }

      v2 = v7[v57];
      ++v58;
      if (v2)
      {
        goto LABEL_39;
      }
    }

    v68 = v160;

    v69 = 1 << *(v68 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & v68[8];
    v1 = (v69 + 63) >> 6;

    v72 = 0;
    v164 = _swiftEmptyArrayStorage;
    v2 = 0xE900000000000073;
    if (v71)
    {
      while (1)
      {
        v73 = v72;
LABEL_54:
        v74 = (v160[6] + ((v73 << 10) | (16 * __clz(__rbit64(v71)))));
        v75 = *v74;
        v11 = v74[1];
        v71 &= v71 - 1;
        *&v176 = *v74;
        *(&v176 + 1) = v11;
        *&v174[0] = 0x73694D6568636143;
        *(&v174[0] + 1) = 0xE900000000000073;
        sub_10002C5B0();

        if (StringProtocol.contains<A>(_:)())
        {
          v76 = v164;
          v77 = swift_isUniquelyReferenced_nonNull_native();
          v169 = v76;
          if ((v77 & 1) == 0)
          {
            sub_10007E9EC(0, v76[2] + 1, 1);
            v76 = v169;
          }

          v79 = v76[2];
          v78 = v76[3];
          v80 = v79 + 1;
          if (v79 >= v78 >> 1)
          {
            v166 = v79 + 1;
            sub_10007E9EC((v78 > 1), v79 + 1, 1);
            v80 = v166;
            v76 = v169;
          }

          v76[2] = v80;
          v164 = v76;
          v81 = &v76[2 * v79];
          v81[4] = v75;
          v81[5] = v11;
        }

        else
        {
        }

        v72 = v73;
        v7 = v157;
        if (!v71)
        {
          goto LABEL_51;
        }
      }
    }

    while (1)
    {
LABEL_51:
      v73 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_140;
      }

      if (v73 >= v1)
      {
        break;
      }

      v71 = v7[v73];
      ++v72;
      if (v71)
      {
        goto LABEL_54;
      }
    }

    v82 = v160;

    v11 = v156;
    v1 = v156[2];
    if (!v1 || (v83 = v164, (v162 = v164[2]) == 0))
    {
LABEL_135:
    }

    v84 = 0;
    v157 = v156 + 4;
    v163 = (v164 + 4);
    v153 = "sql.MemoryUsed.highwater";
    v155 = v1;
LABEL_69:
    if (v84 >= *(v11 + 16))
    {
      continue;
    }

    break;
  }

  if (!v82[2])
  {
LABEL_68:
    if (++v84 == v1)
    {
      goto LABEL_135;
    }

    goto LABEL_69;
  }

  v161 = v84;
  v85 = &v157[2 * v84];
  v87 = *v85;
  v86 = v85[1];

  v88 = sub_10009E700(v87, v86);
  if ((v89 & 1) == 0)
  {

LABEL_67:
    v84 = v161;
    goto LABEL_68;
  }

  v90 = (v82[7] + (v88 << 6));
  v92 = v90[1];
  v91 = v90[2];
  v93 = *v90;
  *(v178 + 9) = *(v90 + 41);
  v177 = v92;
  v178[0] = v91;
  v176 = v93;
  sub_100092A0C(&v176, &v169);
  v1 = 0;
  v94 = HIBYTE(v86) & 0xF;
  if ((v86 & 0x2000000000000000) == 0)
  {
    v94 = v87 & 0xFFFFFFFFFFFFLL;
  }

  v165 = v94;
  v95 = 4 * v94;
  while (1)
  {
    if (v1 >= v83[2])
    {
      goto LABEL_137;
    }

    v96 = (v163 + 16 * v1);
    v11 = v96[1];
    v166 = *v96;

    if (v165)
    {
      while (String.subscript.getter() != 46 || v97 != 0xE100000000000000)
      {
        v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v98 & 1) != 0 || v95 == String.index(after:)() >> 14)
        {
          goto LABEL_84;
        }
      }
    }

LABEL_84:
    v99 = String.subscript.getter();
    v101 = v100;
    v2 = v102;

    LOBYTE(v99) = sub_10008B5A4(v99, v101);

    if (v99)
    {
      break;
    }

    ++v1;

    v83 = v164;
    if (v1 == v162)
    {
      sub_100092A44(&v176);

      v82 = v160;
      goto LABEL_87;
    }
  }

  v82 = v160;
  if (!v160[2])
  {
    sub_100092A44(&v176);

    goto LABEL_103;
  }

  v103 = sub_10009E700(v166, v11);
  v105 = v104;

  if ((v105 & 1) == 0)
  {
    sub_100092A44(&v176);
LABEL_103:

    v11 = v156;
    v83 = v164;
LABEL_104:
    v1 = v155;
    goto LABEL_67;
  }

  v106 = (v82[7] + (v103 << 6));
  v108 = v106[1];
  v107 = v106[2];
  v109 = *v106;
  *(v175 + 9) = *(v106 + 41);
  v174[1] = v108;
  v175[0] = v107;
  v174[0] = v109;
  sub_100092A0C(v174, &v169);
  v110 = sub_100091984();
  sub_100092A44(&v176);
  v154 = sub_100091984();
  sub_100092A44(v174);
  v1 = v110 + 64;
  v111 = 1 << *(v110 + 32);
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  else
  {
    v112 = -1;
  }

  v113 = v112 & *(v110 + 64);
  v114 = (v111 + 63) >> 6;
  v166 = v110;

  v115 = 0;
  if (!v113)
  {
LABEL_95:
    while (1)
    {
      v11 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_141;
      }

      if (v11 >= v114)
      {
LABEL_105:

        goto LABEL_106;
      }

      v113 = *(v1 + 8 * v11);
      ++v115;
      if (v113)
      {
        goto LABEL_98;
      }
    }
  }

  while (1)
  {
    v11 = v115;
LABEL_98:
    v116 = (*(v166 + 56) + ((v11 << 10) | (16 * __clz(__rbit64(v113)))));
    v117 = v116[1];
    v165 = *v116;
    v169 = v165;
    v170 = v117;
    v167 = 0x746E6572727563;
    v168 = 0xE700000000000000;
    v2 = sub_10002C5B0();

    if (StringProtocol.contains<A>(_:)())
    {
      break;
    }

    v113 &= v113 - 1;

    v115 = v11;
    if (!v113)
    {
      goto LABEL_95;
    }
  }

  v169 = v165;
  v170 = v117;
  v167 = 8250;
  v168 = 0xE200000000000000;
  v118 = StringProtocol.components<A>(separatedBy:)();

  v119 = *(v118 + 16);
  if (!v119)
  {
    goto LABEL_121;
  }

  v120 = (v118 + 16 + 16 * v119);
  v121 = v120[1];
  v152 = *v120;
  v165 = v121;
  v166 = v2;

  v1 = v154 + 64;
  v122 = 1 << *(v154 + 32);
  if (v122 < 64)
  {
    v123 = ~(-1 << v122);
  }

  else
  {
    v123 = -1;
  }

  v124 = v123 & *(v154 + 64);
  v125 = (v122 + 63) >> 6;

  v126 = 0;
  if (!v124)
  {
LABEL_114:
    while (1)
    {
      v127 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        goto LABEL_143;
      }

      if (v127 >= v125)
      {
        goto LABEL_105;
      }

      v124 = *(v1 + 8 * v127);
      ++v126;
      if (v124)
      {
        goto LABEL_117;
      }
    }
  }

  while (1)
  {
    v127 = v126;
LABEL_117:
    v128 = (*(v154 + 56) + ((v127 << 10) | (16 * __clz(__rbit64(v124)))));
    v2 = *v128;
    v11 = v128[1];
    v169 = *v128;
    v170 = v11;
    v167 = 0x746E6572727563;
    v168 = 0xE700000000000000;

    if (StringProtocol.contains<A>(_:)())
    {
      break;
    }

    v124 &= v124 - 1;

    v126 = v127;
    if (!v124)
    {
      goto LABEL_114;
    }
  }

  v169 = v2;
  v170 = v11;
  v167 = 8250;
  v168 = 0xE200000000000000;
  v129 = StringProtocol.components<A>(separatedBy:)();

  v130 = *(v129 + 16);
  if (!v130)
  {
LABEL_121:

LABEL_106:

    v82 = v160;
    v11 = v156;
    v83 = v164;
LABEL_107:
    v1 = v155;
    v84 = v161;
    goto LABEL_68;
  }

  v131 = (v129 + 16 + 16 * v130);
  v133 = *v131;
  v132 = v131[1];

  v134 = sub_100091C40(v152, v165);
  v82 = v160;
  v83 = v164;
  if (v135)
  {

LABEL_87:
    v11 = v156;
    goto LABEL_104;
  }

  v136 = v134;
  result = sub_100091C40(v133, v132);
  if (v138)
  {

    goto LABEL_87;
  }

  v139 = v136 + result;
  if (!__OFADD__(v136, result))
  {
    if (v139 < 1)
    {
      v140 = 0.0;
    }

    else
    {
      v140 = v136 / v139 * 100.0;
    }

    if (qword_10016A558 != -1)
    {
      swift_once();
    }

    v141 = type metadata accessor for OSLogger();
    v166 = sub_10002FD14(v141, qword_10016C010);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v142 = *(type metadata accessor for LogMessage() - 8);
    v143 = *(v142 + 72);
    v144 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    v2 = swift_allocObject();
    *(v2 + 16) = v159;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v145._countAndFlagsBits = 0xD00000000000001FLL;
    v145._object = (v153 | 0x8000000000000000);
    LogMessage.StringInterpolation.appendLiteral(_:)(v145);
    v171 = &type metadata for String;
    v169 = v87;
    v170 = v86;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v169, &qword_10016AB10, &unk_100130B10);
    v146._countAndFlagsBits = 0x20746948202D205DLL;
    v146._object = 0xEE00203A65746152;
    LogMessage.StringInterpolation.appendLiteral(_:)(v146);
    sub_100026F94(&qword_10016BF40, &qword_100131BA0);
    v147 = swift_allocObject();
    *(v147 + 16) = v159;
    *(v147 + 56) = &type metadata for Double;
    *(v147 + 64) = &protocol witness table for Double;
    *(v147 + 32) = v140;
    v148 = String.init(format:_:)();
    v171 = &type metadata for String;
    v169 = v148;
    v170 = v149;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v169, &qword_10016AB10, &unk_100130B10);
    v150._countAndFlagsBits = 37;
    v150._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v150);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v82 = v160;
    v11 = v156;
    goto LABEL_107;
  }

  __break(1u);
  return result;
}

int *sub_100090354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_10009E700(0x735579726F6D654DLL, 0xEA00000000006465), (v5 & 1) == 0))
  {
    v99 = 0;
    v100 = 0;
    goto LABEL_19;
  }

  v6 = (*(a1 + 56) + (v4 << 6));
  v8 = v6[1];
  v7 = v6[2];
  v9 = *v6;
  *(v113 + 9) = *(v6 + 41);
  v112[1] = v8;
  v113[0] = v7;
  v112[0] = v9;
  sub_100092A0C(v112, v110);
  v10 = sub_100091984();
  sub_100092A44(v112);
  if (!*(v10 + 16))
  {
    v100 = 0;
    goto LABEL_18;
  }

  v11 = sub_10009E700(0xD000000000000016, 0x800000010013BD20);
  if ((v12 & 1) == 0)
  {
    v100 = 0;
    if (*(v10 + 16))
    {
      goto LABEL_13;
    }

LABEL_18:

    v99 = 0;
    goto LABEL_19;
  }

  v13 = (*(v10 + 56) + 16 * v11);
  v14 = *v13;
  v15 = v13[1];

  v16 = sub_100091C40(v14, v15);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v100 = v18;
  if (!*(v10 + 16))
  {
    goto LABEL_18;
  }

LABEL_13:
  v19 = sub_10009E700(0xD000000000000018, 0x800000010013BD40);
  if ((v20 & 1) == 0)
  {
    goto LABEL_18;
  }

  v21 = (*(v10 + 56) + 16 * v19);
  v22 = *v21;
  v23 = v21[1];

  v24 = sub_100091C40(v22, v23);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v99 = v26;
LABEL_19:
  v27 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  v105 = _swiftEmptyArrayStorage;
  while (1)
  {
    v33 = v32;
    if (!v30)
    {
      break;
    }

LABEL_26:
    v34 = (*(a1 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v30)))));
    v35 = *v34;
    v36 = v34[1];
    v30 &= v30 - 1;
    *&v110[0] = *v34;
    *(&v110[0] + 1) = v36;
    *&v108[0] = 0x7469486568636143;
    *(&v108[0] + 1) = 0xE800000000000000;
    sub_10002C5B0();

    if (StringProtocol.contains<A>(_:)())
    {
      v37 = v105;
      v106 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10007E9EC(0, v105[2] + 1, 1);
        v37 = v106;
      }

      v39 = *(v37 + 16);
      v38 = *(v37 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_10007E9EC((v38 > 1), v39 + 1, 1);
        v40 = v39 + 1;
        v37 = v106;
      }

      *(v37 + 16) = v40;
      v105 = v37;
      v41 = v37 + 16 * v39;
      *(v41 + 32) = v35;
      *(v41 + 40) = v36;
    }

    else
    {
    }
  }

  while (1)
  {
    v32 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:

      goto LABEL_71;
    }

    if (v32 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v32);
    ++v33;
    if (v30)
    {
      goto LABEL_26;
    }
  }

  v42 = 1 << *(a1 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(a1 + 64);
  v45 = (v42 + 63) >> 6;

  v46 = 0;
  v104 = _swiftEmptyArrayStorage;
  while (v44)
  {
    v47 = v46;
LABEL_41:
    v48 = (*(a1 + 48) + ((v47 << 10) | (16 * __clz(__rbit64(v44)))));
    v49 = *v48;
    v50 = v48[1];
    v44 &= v44 - 1;
    *&v110[0] = *v48;
    *(&v110[0] + 1) = v50;
    *&v108[0] = 0x73694D6568636143;
    *(&v108[0] + 1) = 0xE900000000000073;
    sub_10002C5B0();

    if (StringProtocol.contains<A>(_:)())
    {
      v51 = v104;
      v106 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10007E9EC(0, v104[2] + 1, 1);
        v51 = v106;
      }

      v53 = *(v51 + 16);
      v52 = *(v51 + 24);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        sub_10007E9EC((v52 > 1), v53 + 1, 1);
        v54 = v53 + 1;
        v51 = v106;
      }

      *(v51 + 16) = v54;
      v104 = v51;
      v55 = v51 + 16 * v53;
      *(v55 + 32) = v49;
      *(v55 + 40) = v50;
      v46 = v47;
    }

    else
    {

      v46 = v47;
    }
  }

  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_69;
    }

    if (v47 >= v45)
    {
      break;
    }

    v44 = *(v27 + 8 * v47);
    ++v46;
    if (v44)
    {
      goto LABEL_41;
    }
  }

  if (!v105[2])
  {

    goto LABEL_64;
  }

  v57 = v105[4];
  v56 = v105[5];

  if (!v104[2])
  {

LABEL_63:

LABEL_64:
    v92 = 0.0;
    goto LABEL_65;
  }

  v59 = v104[4];
  v58 = v104[5];

  if (!*(a1 + 16))
  {
    goto LABEL_61;
  }

  v60 = sub_10009E700(v57, v56);
  if ((v61 & 1) == 0)
  {
    goto LABEL_61;
  }

  v62 = (*(a1 + 56) + (v60 << 6));
  v64 = v62[1];
  v63 = v62[2];
  v65 = *v62;
  *(v111 + 9) = *(v62 + 41);
  v110[1] = v64;
  v111[0] = v63;
  v110[0] = v65;
  if (!*(a1 + 16))
  {
    sub_100092A0C(v110, v108);
    goto LABEL_67;
  }

  sub_100092A0C(v110, v108);
  v66 = sub_10009E700(v59, v58);
  if ((v67 & 1) == 0)
  {
LABEL_67:

    sub_100092A44(v110);
    goto LABEL_64;
  }

  v68 = (*(a1 + 56) + (v66 << 6));
  v70 = v68[1];
  v69 = v68[2];
  v71 = *v68;
  *&v109[9] = *(v68 + 41);
  v108[1] = v70;
  *v109 = v69;
  v108[0] = v71;
  sub_100092A0C(v108, &v106);
  v72 = sub_100091984();
  sub_100092A44(v110);
  v73 = sub_100091984();
  sub_100092A44(v108);
  v106 = 778858867;
  v107 = 0xE400000000000000;
  v74._countAndFlagsBits = v57;
  v74._object = v56;
  String.append(_:)(v74);

  v75._countAndFlagsBits = 0x746E65727275632ELL;
  v75._object = 0xE800000000000000;
  String.append(_:)(v75);
  if (!*(v72 + 16))
  {
    goto LABEL_70;
  }

  v76 = sub_10009E700(v106, v107);
  v78 = v77;

  if ((v78 & 1) == 0)
  {
LABEL_71:

    goto LABEL_63;
  }

  v79 = (*(v72 + 56) + 16 * v76);
  v81 = *v79;
  v80 = v79[1];

  v106 = 778858867;
  v107 = 0xE400000000000000;
  v82._countAndFlagsBits = v59;
  v82._object = v58;
  String.append(_:)(v82);

  v83._countAndFlagsBits = 0x746E65727275632ELL;
  v83._object = 0xE800000000000000;
  String.append(_:)(v83);
  if (!*(v73 + 16))
  {

    goto LABEL_61;
  }

  v84 = sub_10009E700(v106, v107);
  v86 = v85;

  if ((v86 & 1) == 0)
  {
LABEL_61:

    goto LABEL_63;
  }

  v87 = (*(v73 + 56) + 16 * v84);
  v89 = *v87;
  v88 = v87[1];

  v90 = sub_100091C40(v81, v80);
  if (v91)
  {
    goto LABEL_63;
  }

  v96 = v90;
  result = sub_100091C40(v89, v88);
  v92 = 0.0;
  if (v97)
  {
LABEL_65:
    Date.init()();
    sub_100026F50(v101, v101[3]);
    type metadata accessor for ConfigurationStoreImplementation();
    v93 = sub_10004FFBC();
    sub_100026F50(v101, v101[3]);
    v94 = sub_10004FEF0();
    result = type metadata accessor for SystemStatusProvider.MemoryStats(0);
    *(a3 + result[5]) = v100;
    *(a3 + result[6]) = v99;
    *(a3 + result[7]) = v93;
    *(a3 + result[8]) = v92;
    *(a3 + result[9]) = v94;
    *(a3 + result[10]) = a2;
  }

  else
  {
    v98 = result + v96;
    if (!__OFADD__(v96, result))
    {
      if (v98 >= 1)
      {
        v92 = v96 / v98 * 100.0;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100090BC0(uint64_t a1)
{
  v6 = sub_100026F94(&qword_10016C028, &qword_1001321A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v64 - v8;
  v10 = type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LogMessage.StringInterpolation();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = type metadata accessor for SystemStatusProvider.MemoryStats(0);
  v76 = *(v1 + 40);
  if ((v76 * 80) >> 64 != (80 * v76) >> 63)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_12;
  }

  v71 = v11;
  v72 = v10;
  v65 = v14;
  v73 = v9;
  v74 = v1;
  v2 = 0xD000000000000022;
  v3 = &unk_10012F000;
  v77 = *(a1 + *(v17 + 20));
  v75 = v17;
  if (80 * v76 / 100 < v77)
  {
    *&v78 = a1;
    if (qword_10016A558 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for OSLogger();
    v70 = sub_10002FD14(v18, qword_10016C010);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v19 = *(type metadata accessor for LogMessage() - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._countAndFlagsBits = 0xD000000000000034;
    v22._object = 0x800000010013BC30;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    v81 = &type metadata for Int64;
    v79 = v77 / 1024;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
    v23._countAndFlagsBits = 0x202F20424BLL;
    v23._object = 0xE500000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    v81 = &type metadata for Int64;
    v79 = v76 / 1024;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    v3 = &unk_10012F000;
    sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
    v24._countAndFlagsBits = 16971;
    v24._object = 0xE200000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    a1 = v78;
    v17 = v75;
  }

  v4 = *(a1 + *(v17 + 32));
  if (v4 < 85.0 && v4 > 0.0)
  {
    if (qword_10016A558 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for OSLogger();
    sub_10002FD14(v25, qword_10016C010);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v26 = *(type metadata accessor for LogMessage() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = swift_allocObject();
    v78 = xmmword_10012FA10;
    *(v29 + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 0xD00000000000002ALL;
    v30._object = 0x800000010013BBE0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    sub_100026F94(&qword_10016BF40, &qword_100131BA0);
    v31 = swift_allocObject();
    *(v31 + 16) = v78;
    *(v31 + 56) = &type metadata for Double;
    *(v31 + 64) = &protocol witness table for Double;
    *(v31 + 32) = v4;
    v32 = String.init(format:_:)();
    v81 = &type metadata for String;
    v79 = v32;
    v80 = v33;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
    v2 = 0xD000000000000022;
    v34._countAndFlagsBits = 0xD00000000000001ELL;
    v34._object = 0x800000010013BC10;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();
  }

  if (qword_10016A558 != -1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v70 = type metadata accessor for OSLogger();
  v69 = sub_10002FD14(v70, qword_10016C010);
  v67 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v35 = *(type metadata accessor for LogMessage() - 8);
  v68 = *(v35 + 72);
  v66 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v36 = swift_allocObject();
  v78 = v3[161];
  *(v36 + 16) = v78;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._object = 0x800000010013BB60;
  v37._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  v81 = &type metadata for Int64;
  v79 = v77;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
  v38._countAndFlagsBits = 0x3A6B616550202C42;
  v38._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v38);
  v39 = v75;
  v40 = *(a1 + v75[6]);
  v81 = &type metadata for Int64;
  v79 = v40;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
  v41._countAndFlagsBits = v2 - 17;
  v41._object = 0x800000010013BB90;
  LogMessage.StringInterpolation.appendLiteral(_:)(v41);
  sub_100026F94(&qword_10016BF40, &qword_100131BA0);
  v42 = swift_allocObject();
  *(v42 + 16) = v78;
  *(v42 + 56) = &type metadata for Double;
  *(v42 + 64) = &protocol witness table for Double;
  *(v42 + 32) = v4;
  v43 = String.init(format:_:)();
  v81 = &type metadata for String;
  v79 = v43;
  v80 = v44;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
  v45._countAndFlagsBits = 0x5365676150202C25;
  v45._object = 0xED0000203A657A69;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  v46 = *(a1 + v39[9]);
  v81 = &type metadata for Int32;
  LODWORD(v79) = v46;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
  v47._countAndFlagsBits = 0x6568636143202C42;
  v47._object = 0xEE00203A657A6953;
  LogMessage.StringInterpolation.appendLiteral(_:)(v47);
  v48 = *(a1 + v39[7]);
  v81 = &type metadata for Int32;
  LODWORD(v79) = v48;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
  v49._countAndFlagsBits = 0x63656E6E6F43202CLL;
  v49._object = 0xEF203A736E6F6974;
  LogMessage.StringInterpolation.appendLiteral(_:)(v49);
  v50 = *(a1 + v39[10]);
  v81 = &type metadata for Int;
  v79 = v50;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v51);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v52 = v76;
  v53 = v77 / v76 * 100.0;
  *(swift_allocObject() + 16) = v78;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v54._object = 0x800000010013BBB0;
  v54._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  v55 = swift_allocObject();
  *(v55 + 16) = v78;
  *(v55 + 56) = &type metadata for Double;
  *(v55 + 64) = &protocol witness table for Double;
  *(v55 + 32) = v53;
  v56 = String.init(format:_:)();
  v81 = &type metadata for String;
  v79 = v56;
  v80 = v57;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
  v58._countAndFlagsBits = 0x20666F2025;
  v58._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v58);
  v81 = &type metadata for Int64;
  v79 = v52 / 1024;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
  v59._countAndFlagsBits = 0x74696D696C20424BLL;
  v59._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v59);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v60 = v73;
  sub_100091F40(v73);
  if ((*(v71 + 48))(v60, 1, v72) == 1)
  {
    return sub_10002BA6C(v60, &qword_10016C028, &qword_1001321A8);
  }

  v62 = v60;
  v63 = v65;
  sub_100092280(v62, v65);
  sub_1000922E4(v63);
  return sub_100092724(v63, type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint);
}

uint64_t sub_100091704(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009173C(double a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSLogger();
  sub_10002FD14(v4, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x800000010013BDB0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  sub_100026F94(&qword_10016BF40, &qword_100131BA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10012FA10;
  *(v9 + 56) = &type metadata for Double;
  *(v9 + 64) = &protocol witness table for Double;
  *(v9 + 32) = a1;
  v13[3] = &type metadata for String;
  v13[0] = String.init(format:_:)();
  v13[1] = v10;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v13, &qword_10016AB10, &unk_100130B10);
  v11._countAndFlagsBits = 115;
  v11._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();
}

uint64_t sub_100091984()
{
  sub_100026F94(&qword_10016BBF0, &unk_1001318D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10012FA10;
  *&v33 = 778858867;
  *(&v33 + 1) = 0xE400000000000000;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);
  *(inited + 32) = 778858867;
  *(inited + 40) = 0xE400000000000000;
  v33 = *(v0 + 24);
  *(inited + 48) = v33;
  sub_1000937A8(&v33, &v31);
  v5 = sub_1000886B0(inited);
  swift_setDeallocating();
  sub_10002BA6C(inited + 32, &qword_10016B730, &qword_1001321B0);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (*(v0 + 56))
  {
    v31 = 778858867;
    v32 = 0xE400000000000000;
    v8._countAndFlagsBits = v2;
    v8._object = v3;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 0x746E65727275632ELL;
    v9._object = 0xE800000000000000;
    String.append(_:)(v9);
    v10 = v31;
    v11 = v32;
    v31 = 0x203A726F727245;
    v32 = 0xE700000000000000;
    v12._countAndFlagsBits = v6;
    v12._object = v7;
    String.append(_:)(v12);
    v13 = v31;
    v14 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v5;
    v16 = v13;
  }

  else
  {
    v31 = 778858867;
    v32 = 0xE400000000000000;
    v17._countAndFlagsBits = v2;
    v17._object = v3;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x746E65727275632ELL;
    v18._object = 0xE800000000000000;
    String.append(_:)(v18);
    v19 = v31;
    v20 = v32;
    LODWORD(v31) = v6;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v5;
    sub_1000A1380(v21, v23, v19, v20, v24);

    result = v31;
    if (v7)
    {
      return result;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    v26 = result;
    _StringGuts.grow(_:)(16);

    v31 = 778858867;
    v32 = 0xE400000000000000;
    v27._countAndFlagsBits = v2;
    v27._object = v3;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 0x746177686769682ELL;
    v28._object = 0xEA00000000007265;
    String.append(_:)(v28);
    v10 = v31;
    v11 = v32;
    LODWORD(v31) = HIDWORD(v6);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v26;
    v16 = v29;
  }

  sub_1000A1380(v16, v14, v10, v11, isUniquelyReferenced_nonNull_native);

  return v31;
}

uint64_t sub_100091C40(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100092E24(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100091F40@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  nullsub_1(v17);
  v16 = 93;
  v4 = task_info(mach_task_self_, 0x16u, v17, &v16);
  if (v4)
  {
    if (qword_10016A558 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for OSLogger();
    sub_10002FD14(v5, qword_10016C010);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v6 = *(type metadata accessor for LogMessage() - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._object = 0x800000010013BCE0;
    v9._countAndFlagsBits = 0xD000000000000034;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v34 = &type metadata for Int32;
    v33[0] = v4;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v33, &qword_10016AB10, &unk_100130B10);
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    v11 = type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    Date.init()();
    v13 = *(&v19 + 1);
    if ((*(&v19 + 1) & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v14 = v18;
    v15 = type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint(0);
    *(a1 + *(v15 + 20)) = v14;
    *(a1 + *(v15 + 24)) = v13;
    return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
  }
}

void sub_100092274(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100092280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000922E4(uint64_t a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for OSLogger();
  sub_10002FD14(v25, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = *(v4 + 72);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010013BC70;
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  sub_100026F94(&qword_10016BF40, &qword_100131BA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10012FA10;
  v7 = type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint(0);
  v8 = *(a1 + *(v7 + 20));
  *(v6 + 56) = &type metadata for Double;
  *(v6 + 64) = &protocol witness table for Double;
  *(v6 + 32) = vcvtd_n_f64_u64(v8, 0x14uLL);
  v9 = String.init(format:_:)();
  v28 = &type metadata for String;
  v26 = v9;
  v27 = v10;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v26, &qword_10016AB10, &unk_100130B10);
  v11._countAndFlagsBits = 0x6B616550202C424DLL;
  v11._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10012FA10;
  v13 = *(a1 + *(v7 + 24)) * 0.000000953674316;
  *(v12 + 56) = &type metadata for Double;
  *(v12 + 64) = &protocol witness table for Double;
  *(v12 + 32) = v13;
  v14 = String.init(format:_:)();
  v28 = &type metadata for String;
  v26 = v14;
  v27 = v15;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v26, &qword_10016AB10, &unk_100130B10);
  v16._countAndFlagsBits = 16973;
  v16._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  if (v8 >= 0x3200400)
  {
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._countAndFlagsBits = 0xD000000000000032;
    v18._object = 0x800000010013BCA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10012FA10;
    *(v19 + 56) = &type metadata for Double;
    *(v19 + 64) = &protocol witness table for Double;
    *(v19 + 32) = vcvtd_n_f64_u64(v8 >> 10, 0xAuLL);
    v20 = String.init(format:_:)();
    v28 = &type metadata for String;
    v26 = v20;
    v27 = v21;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v26, &qword_10016AB10, &unk_100130B10);
    v22._countAndFlagsBits = 16973;
    v22._object = 0xE200000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();
  }

  return result;
}

uint64_t sub_100092724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100092784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *pHighwater = 0;
  if (a1)
  {
    __chkstk_darwin(a1);

    Connection.withUnsafeHandleUnchecked<A>(_:)();

    if (!v16)
    {
      goto LABEL_6;
    }
  }

  else if (!sqlite3_status(*a2, &pHighwater[1], pHighwater, 0))
  {
LABEL_6:
    v10 = *(a2 + 24);
    v9 = *(a2 + 32);
    v12 = pHighwater[1] | (pHighwater[0] << 32);

    v14 = 0;
    v13 = 0;
    goto LABEL_7;
  }

  v10 = *(a2 + 24);
  v9 = *(a2 + 32);

  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12 = 0x203A726F727245;
  v13 = 0xE700000000000000;
  v14 = 1;
LABEL_7:
  *a5 = *a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = v10;
  *(a5 + 32) = v9;
  *(a5 + 40) = v12;
  *(a5 + 48) = v13;
  *(a5 + 56) = v14;
}

void sub_100092964(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100092970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100042680;

  return sub_10008D458(a5);
}

uint64_t sub_100092A74(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10009E700(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10009FA64(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_10009E700(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1000A2924();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x800000010013AA00;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v25;
  if (v42 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_10009E700(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_10009FA64(v32, 1);
        v33 = *a3;
        v28 = sub_10009E700(v6, v5);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v6;
      v36[1] = v5;
      v37 = (v35[7] + 16 * v28);
      *v37 = v26;
      v37[1] = v8;
      v38 = v35[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v35[2] = v39;
      v4 += 4;
      if (v42 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

unsigned __int8 *sub_100092E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000933B0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
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

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000933B0()
{
  v0 = String.subscript.getter();
  v4 = sub_100093430(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100093430(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10006CFA4(v9, 0);
  v12 = sub_100093588(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100093588(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000876A8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000876A8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10009381C@<X0>(sqlite3 *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sqlite3_db_status(a1, *v2[2], v2[3], v2[4], 0);
  *a2 = result;
  return result;
}

uint64_t sub_100093860(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for StatusCommand();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100093930, 0, 0);
}

uint64_t sub_100093930()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  StatusRequest.command.getter();
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for StatusCommand.ping(_:))
  {
    v6 = sub_1000886B0(&off_100164628);
    sub_10002BA6C(&unk_100164648, &qword_10016B730, &qword_1001321B0);
    v8 = v0[7];
    v7 = v0[8];

    v9 = v0[1];

    return v9(v6);
  }

  if (v5 == enum case for StatusCommand.sql(_:))
  {
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v12 = sub_100093CBC;
LABEL_7:
    v11[1] = v12;
    v13 = v0[3];
    v14 = v0[4];

    return sub_10008BA18();
  }

  if (v5 == enum case for StatusCommand.stats(_:))
  {
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_10009401C;
    v16 = v0[3];
    v17 = v0[4];

    return sub_10008C3C8();
  }

  else
  {
    if (v5 == enum case for StatusCommand.all(_:))
    {
      v11 = swift_task_alloc();
      v0[12] = v11;
      *v11 = v0;
      v12 = sub_100093E6C;
      goto LABEL_7;
    }

    v18 = v0[7];
    v32 = v0[8];
    v19 = v0[5];
    v20 = v0[6];
    v21 = v0[2];
    v22 = type metadata accessor for DaemonError();
    sub_100074354();
    swift_allocError();
    v24 = v23;
    StatusRequest.command.getter();
    v25 = StatusCommand.rawValue.getter();
    v27 = v26;
    v28 = *(v20 + 8);
    v28(v18, v19);
    *v24 = v25;
    v24[1] = v27;
    (*(*(v22 - 8) + 104))(v24, enum case for DaemonError.unsupportedStatusCommand(_:), v22);
    swift_willThrow();
    v28(v32, v19);
    v30 = v0[7];
    v29 = v0[8];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_100093CBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1000941B8;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_100093DE4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100093DE4()
{
  v1 = sub_10008C1A4(v0[11]);

  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_100093E6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_100094224;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_100093F94;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100093F94()
{
  v1 = sub_10008C1A4(v0[14]);

  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_10009401C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_100094290;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_100094144;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100094144()
{
  v1 = v0[17];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_1000941B8()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100094224()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100094290()
{
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

__n128 sub_100094308(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100094324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_10009436C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000943FC()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10009448C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009450C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10009457C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_10009461C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100094630(uint64_t a1, unsigned int a2)
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

uint64_t sub_100094678(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000946F8()
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_100094758()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C1C0);
  v1 = sub_10002FD14(v0, qword_10016C1C0);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100094820()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100096B74(0, &qword_10016C288, OS_dispatch_queue_ptr);
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v9 = static Utils.daemonProcessName.getter();
  v11 = v10;

  v14 = v9;
  v15 = v11;
  v12._object = 0x800000010013C040;
  v12._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v12);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100096BBC(&qword_10016C290, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100026F94(&qword_10016C298, &unk_1001323C0);
  sub_100096C04();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10016C1D8 = result;
  return result;
}

uint64_t sub_100094AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_100096BBC(&qword_10016ADA0, type metadata accessor for DaemonActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100094BA0, v7, v6);
}

uint64_t sub_100094BA0()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_100026F50(v1, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_100094CCC;
  v7 = v0[3];

  return v9(v7, v2, v3);
}

uint64_t sub_100094CCC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100094DC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a2;
  v36 = a6;
  v34 = a4;
  v9 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for LogMessage.StringInterpolation();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v15 = *(type metadata accessor for LogMessage() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x800000010013BFB0;
  v18._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v39 = sub_100096B74(0, &qword_10016C280, BGSystemTask_ptr);
  *&aBlock = a1;
  v19 = a1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_100026EEC(v34, &aBlock);
  v22 = qword_10016A6C8;
  v23 = v19;

  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_1001738A8;
  v25 = sub_100096BBC(&qword_10016ADA0, type metadata accessor for DaemonActor);
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v25;
  v27 = v35;
  v26[4] = v35;
  v26[5] = a3;
  v26[6] = v23;
  sub_10002C604(&aBlock, (v26 + 7));
  v28 = v36;
  v26[12] = a5;
  v26[13] = v28;

  v29 = sub_10009C9B8(0, 0, v12, &unk_1001323B8, v26);
  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = a3;
  v30[4] = v29;
  v30[5] = v28;
  v40 = sub_10009694C;
  v41 = v30;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v38 = sub_10008287C;
  v39 = &unk_100165728;
  v31 = _Block_copy(&aBlock);

  [v23 setExpirationHandler:v31];
  _Block_release(v31);
}

uint64_t sub_10009521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_100096BBC(&qword_10016ADA0, type metadata accessor for DaemonActor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[20] = v11;
  v8[21] = v10;

  return _swift_task_switch(sub_100095344, v11, v10);
}

uint64_t sub_100095344()
{
  v1 = v0[17];
  v2 = v1[3];
  v3 = v1[4];
  sub_100026F50(v1, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_100095470;
  v7 = v0[18];

  return v9(v7, v2, v3);
}

uint64_t sub_100095470()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_10009561C;
  }

  else
  {
    v7 = sub_1000955AC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000955AC()
{
  v1 = *(v0 + 152);
  sub_100096970(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10009561C()
{
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x800000010013C000;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 16);
  v9._countAndFlagsBits = 2629678;
  v9._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  swift_getErrorValue();
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  *(v0 + 72) = v11;
  v12 = sub_100042BAC((v0 + 48));
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 48);
  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v14 = *(v0 + 152);
  sub_100096970(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  v15 = *(v0 + 8);

  return v15();
}

void sub_100095898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v6 = *(type metadata accessor for LogMessage() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x800000010013BFE0;
  v9._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v11[3] = &type metadata for String;
  v11[0] = a1;
  v11[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v11);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  Task.cancel()();
}

uint64_t sub_100095AAC(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  v3 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_100096BBC(&qword_10016ADA0, type metadata accessor for DaemonActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v8;
  v2[23] = v7;

  return _swift_task_switch(sub_100095C30, v8, v7);
}

uint64_t sub_100095C30()
{
  v39 = v0;
  if (qword_10016A568 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016C1C0);
  sub_100026EEC(v2, v0 + 16);
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v7 = 136315138;
    v9 = *(v0 + 48);
    sub_100026F50((v0 + 16), *(v0 + 40));
    v10 = *(v9 + 8);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100026FDC((v0 + 16));
    v14 = sub_10006CB64(v11, v13, &v38);

    *(v7 + 4) = v14;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v15, "TaskCenter.run", "task=%s", v7, 0xCu);
    sub_100026FDC(v8);
  }

  else
  {

    sub_100026FDC((v0 + 16));
  }

  v16 = *(v0 + 168);
  v17 = *(v0 + 144);
  v18 = *(v0 + 152);
  (*(v18 + 16))(*(v0 + 160), v16, v17);
  v19 = type metadata accessor for OSSignpostIntervalState();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v0 + 192) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v18 + 8))(v16, v17);
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 136);
  v23 = *(v0 + 120);
  sub_100026F50(qword_10016C198, qword_10016C1B0);
  *(v0 + 200) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v24 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 208) = *(v24 + 72);
  *(v0 + 232) = *(v24 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._object = 0x800000010013BF60;
  v25._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v23[3];
  v27 = sub_100026F50(v23, v26);
  *(v0 + 80) = v26;
  v28 = sub_100042BAC((v0 + 56));
  (*(*(v26 - 8) + 16))(v28, v27, v26);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 56);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v30 = v23[3];
  v31 = v23[4];
  sub_100026F50(v23, v30);
  v32 = *(v31 + 24);
  v37 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  *(v0 + 216) = v34;
  *v34 = v0;
  v34[1] = sub_100096108;
  v35 = *(v0 + 128);

  return v37(v35, v30, v31);
}

uint64_t sub_100096108()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_100096420;
  }

  else
  {
    v7 = sub_100096244;
  }

  return _swift_task_switch(v7, v6, v5);
}