uint64_t sub_1003AA504(__int128 *a1)
{
  v2 = &v25;
  v3 = a1[9];
  v33 = a1[8];
  v34 = v3;
  v35 = a1[10];
  v36 = *(a1 + 176);
  v4 = a1[5];
  v29 = a1[4];
  v30 = v4;
  v5 = a1[7];
  v31 = a1[6];
  v32 = v5;
  v6 = a1[1];
  v25 = *a1;
  v26 = v6;
  v7 = a1[3];
  v27 = a1[2];
  v28 = v7;
  if (sub_10000FE74(&v25) != 1)
  {
    goto LABEL_11;
  }

  v8 = *(v1 + 20);
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v10)
  {
    v11._countAndFlagsBits = 40;
    v11._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v2 = result;
  v12 = *(v1 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  *(v1 + 20) = v13;
  result = sub_1002F178C(41, 0xE100000000000000, (v1 + 8), v13);
  if (v14)
  {
    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v17 = __CFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
    goto LABEL_14;
  }

  *(v1 + 20) = v18;
  v19 = __OFADD__(v2, result);
  result += v2;
  if (!v19)
  {
    return result;
  }

  __break(1u);
LABEL_11:
  v20 = *(v2 + 144);
  *(v2 + 320) = *(v2 + 128);
  *(v2 + 336) = v20;
  *(v2 + 352) = *(v2 + 160);
  v37[176] = v36;
  v21 = v30;
  *(v2 + 256) = v29;
  *(v2 + 272) = v21;
  v22 = v32;
  *(v2 + 288) = v31;
  *(v2 + 304) = v22;
  v23 = v26;
  *(v2 + 192) = v25;
  *(v2 + 208) = v23;
  v24 = v28;
  *(v2 + 224) = v27;
  *(v2 + 240) = v24;
  return sub_1003AA66C(v37);
}

uint64_t sub_1003AA66C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v36;
  *(v2 + 20) = v11;
  v13 = *(a1 + 144);
  v36[8] = *(a1 + 128);
  v36[9] = v13;
  v36[10] = *(a1 + 160);
  v37 = *(a1 + 176);
  v14 = *(a1 + 80);
  v36[4] = *(a1 + 64);
  v36[5] = v14;
  v15 = *(a1 + 112);
  v36[6] = *(a1 + 96);
  v36[7] = v15;
  v16 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v16;
  v17 = *(a1 + 48);
  v36[2] = *(a1 + 32);
  v36[3] = v17;
  if (sub_10000FE88(v36) == 1)
  {
    v18 = UInt32.init(_:)(v36);
    v19 = *(v18 + 80);
    v38[4] = *(v18 + 64);
    v38[5] = v19;
    v38[6] = *(v18 + 96);
    v39 = *(v18 + 112);
    v20 = *(v18 + 16);
    v38[0] = *v18;
    v38[1] = v20;
    v21 = *(v18 + 48);
    v38[2] = *(v18 + 32);
    v38[3] = v21;
    v12 = v2;
    v22 = sub_10045D97C(v38);
    v23 = v8 + v22;
    if (!__OFADD__(v8, v22))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v24 = UInt32.init(_:)(v36);
  v25 = v24[9];
  v12[20] = v24[8];
  v12[21] = v25;
  v12[22] = v24[10];
  v26 = v24[5];
  v12[16] = v24[4];
  v12[17] = v26;
  v27 = v24[7];
  v12[18] = v24[6];
  v12[19] = v27;
  v28 = v24[1];
  v12[12] = *v24;
  v12[13] = v28;
  v29 = v24[3];
  v12[14] = v24[2];
  v12[15] = v29;
  result = sub_1004993BC(v38);
  v23 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_9:
  v30 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v31)
  {
    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
  }

  v33 = *(v2 + 20);
  v10 = __CFADD__(v33, result);
  v34 = v33 + result;
  if (v10)
  {
    goto LABEL_15;
  }

  *(v2 + 20) = v34;
  v35 = __OFADD__(v23, result);
  result += v23;
  if (v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1003AA830(uint64_t a1)
{
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = BodyStructure.subpartCount.getter() + 1;
  v3 = _swiftEmptyArrayStorage;
  v4 = sub_1003AAAD8(_swiftEmptyArrayStorage, inited);
  swift_setDeallocating();
  if (!v4)
  {
    return v3;
  }

  v3 = sub_100447044(v4, 0);
  sub_1000510B4(a1, v7);
  v5 = sub_1003AAC54(v7, (v3 + 4), v4);
  result = sub_100025F40(v7, &qword_1005DBE08, &qword_1004FF1B0);
  if (v5 == v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1003AA91C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1003AA9EC(uint64_t result)
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

  result = sub_100460CC0(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_1003AAAD8(uint64_t a1, uint64_t a2)
{
  rawValue = a1;
  if (_s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(a1, a2))
  {
    if ((_s12NIOIMAPCore216SectionSpecifierV4PartV23__derived_struct_equalsySbAE_AEtFZ_0(rawValue, a2) & 1) == 0)
    {
      v4 = *(a2 + 16);

      v5 = 1;
      do
      {
        rawValue = BodyStructure.index(after:)(rawValue).array._rawValue;

        if (rawValue[2] == v4)
        {
          if (!v4 || rawValue == a2)
          {
            goto LABEL_23;
          }

          v8 = 4;
          v9 = v4;
          while (rawValue[v8] == *(a2 + v8 * 8))
          {
            ++v8;
            if (!--v9)
            {
              goto LABEL_23;
            }
          }
        }

        v6 = __OFADD__(v5++, 1);
      }

      while (!v6);
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    return 0;
  }

  if (!_s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(a2, rawValue) || (_s12NIOIMAPCore216SectionSpecifierV4PartV23__derived_struct_equalsySbAE_AEtFZ_0(rawValue, a2) & 1) != 0)
  {
    return 0;
  }

  v10 = *(a2 + 16);

  v5 = -1;
  while (1)
  {
    rawValue = BodyStructure.index(before:)(rawValue).array._rawValue;

    if (rawValue[2] == v10)
    {
      break;
    }

LABEL_16:
    v6 = __OFSUB__(v5--, 1);
    if (v6)
    {
      goto LABEL_26;
    }
  }

  if (v10 && rawValue != a2)
  {
    v11 = 4;
    v12 = v10;
    while (rawValue[v11] == *(a2 + v11 * 8))
    {
      ++v11;
      if (!--v12)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_16;
  }

LABEL_23:

  return v5;
}

uint64_t sub_1003AAC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = v3[9];
  v40 = v3[10];
  v34 = v3[4];
  v35 = v3[5];
  v36 = v3[6];
  LOBYTE(v41) = *(v3 + 176);
  v37 = v3[7];
  v38 = v3[8];
  v30 = *v3;
  v31 = v3[1];
  v32 = v3[2];
  v33 = v3[3];
  if (!a2)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_14:
    rawValue = _swiftEmptyArrayStorage;
LABEL_17:
    *(a1 + 128) = v38;
    *(a1 + 144) = v39;
    *(a1 + 160) = v40;
    *(a1 + 64) = v34;
    *(a1 + 80) = v35;
    *(a1 + 96) = v36;
    *(a1 + 112) = v37;
    *a1 = v30;
    *(a1 + 16) = v31;
    *(a1 + 32) = v32;
    *(a1 + 48) = v33;
    *(a1 + 176) = v41;
    *(a1 + 184) = rawValue;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = v3;
    v7 = a2;
    rawValue = _swiftEmptyArrayStorage;
    v9 = 1;
    while (1)
    {
      sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
      v10 = swift_allocObject();
      v11 = BodyStructure.subpartCount.getter() + 1;
      *(v10 + 32) = v11;
      if (rawValue[2] == 1 && (rawValue == v10 || rawValue[4] == v11))
      {
        swift_setDeallocating();
        swift_deallocClassInstance();
        v5 = v9 - 1;
        goto LABEL_17;
      }

      swift_setDeallocating();
      swift_deallocClassInstance();
      v12 = v6[9];
      v76 = v6[8];
      v77 = v12;
      v78 = v6[10];
      v79 = *(v6 + 176);
      v13 = v6[5];
      v72 = v6[4];
      v73 = v13;
      v14 = v6[7];
      v74 = v6[6];
      v75 = v14;
      v15 = v6[1];
      v68 = *v6;
      v69 = v15;
      v16 = v6[3];
      v70 = v6[2];
      v71 = v16;
      sub_1003A861C(rawValue, &v42);
      v54[8] = v50;
      v54[9] = v51;
      v54[10] = v52;
      v55 = v53;
      v54[4] = v46;
      v54[5] = v47;
      v54[6] = v48;
      v54[7] = v49;
      v54[0] = v42;
      v54[1] = v43;
      v54[2] = v44;
      v54[3] = v45;
      if (sub_10000FE74(v54) == 1)
      {
        goto LABEL_19;
      }

      v17 = v6[9];
      v64 = v6[8];
      v65 = v17;
      v66 = v6[10];
      v67 = *(v6 + 176);
      v18 = v6[5];
      v60 = v6[4];
      v61 = v18;
      v19 = v6[7];
      v62 = v6[6];
      v63 = v19;
      v20 = v6[1];
      v56 = *v6;
      v57 = v20;
      v21 = v6[3];
      v58 = v6[2];
      v59 = v21;
      v22.array._rawValue = BodyStructure.index(after:)(rawValue).array._rawValue;

      v23 = v51;
      *(v7 + 128) = v50;
      *(v7 + 144) = v23;
      *(v7 + 160) = v52;
      *(v7 + 176) = v53;
      v24 = v47;
      *(v7 + 64) = v46;
      *(v7 + 80) = v24;
      v25 = v49;
      *(v7 + 96) = v48;
      *(v7 + 112) = v25;
      v26 = v43;
      *v7 = v42;
      *(v7 + 16) = v26;
      v27 = v45;
      *(v7 + 32) = v44;
      *(v7 + 48) = v27;
      if (v5 == v9)
      {
        break;
      }

      v7 += 184;
      rawValue = v22.array._rawValue;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    rawValue = v22.array._rawValue;
    goto LABEL_17;
  }

  __break(1u);
LABEL_19:
  sub_1004A6724(32);

  v80._countAndFlagsBits = sub_1004A5824();
  sub_1004A5994(v80);

  result = sub_1004A69A4();
  __break(1u);
  return result;
}

void sub_1003AB028(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v9 = v5 + 1;
      v8 = *v5;
      v51 = v9;
      if (v8 < 0)
      {
        v25 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v26 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        v27 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x1C);
        v28 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x24);
        v29 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x26);
        v30 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
        v44 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x3C);
        v46 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x3E);
        v48 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x38);
        v50 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
        v31 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
        sub_1004A6EB4(1uLL);
        swift_beginAccess();
        v32 = *(v25 + 24) + (v29 | (v28 << 8));
        sub_1004A6EA4();
        if (v30)
        {
          v33 = v48 | ((v44 | (v46 << 16)) << 32);
          sub_1004A6EC4(1u);
          swift_beginAccess();
          v34 = *(v30 + 24) + ((v33 >> 24) & 0xFFFF00 | BYTE6(v33));
          sub_1004A6EA4();
        }

        else
        {
          sub_1004A6EC4(0);
        }

        sub_1003AB028(a1, v31);

        goto LABEL_4;
      }

      v10 = *(v8 + 16);
      v11 = *(v8 + 24);
      v12 = *(v8 + 38);
      v13 = *(v8 + 36);
      v14 = *(v8 + 32);
      v15 = *(v8 + 40);
      v16 = *(v8 + 48);
      v35 = *(v8 + 60);
      v36 = *(v8 + 62);
      v37 = *(v8 + 56);
      v17 = *(v8 + 64);
      v38 = *(v8 + 84);
      v39 = *(v8 + 86);
      v40 = *(v8 + 80);
      v41 = *(v8 + 72);
      v47 = *(v8 + 96);
      v49 = *(v8 + 88);
      v42 = *(v8 + 108);
      v43 = *(v8 + 110);
      v45 = *(v8 + 104);
      sub_1004A6EB4(0);
      if (v10)
      {
        v18 = v14 | ((v13 | (v12 << 16)) << 32);
        sub_1004A6EC4(1u);
        swift_beginAccess();
        v19 = *(v10 + 24) + ((v18 >> 24) & 0xFFFF00 | BYTE6(v18));
        sub_1004A6EA4();
        if (v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1004A6EC4(0);
        if (v15)
        {
LABEL_8:
          v20 = v37 | ((v35 | (v36 << 16)) << 32);
          sub_1004A6EC4(1u);
          swift_beginAccess();
          v21 = *(v15 + 24) + ((v20 >> 24) & 0xFFFF00 | BYTE6(v20));
          sub_1004A6EA4();
          v22 = v49;
          if (v17)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }

      sub_1004A6EC4(0);
      v22 = v49;
      if (v17)
      {
LABEL_9:
        v23 = v40 | ((v38 | (v39 << 16)) << 32);
        sub_1004A6EC4(1u);
        swift_beginAccess();
        v24 = *(v17 + 24) + ((v23 >> 24) & 0xFFFF00 | BYTE6(v23));
        sub_1004A6EA4();
        if (!v22)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

LABEL_15:
      sub_1004A6EC4(0);
      if (!v22)
      {
LABEL_16:
        sub_1004A6EC4(0);
        goto LABEL_4;
      }

LABEL_3:
      v6 = v45 | ((v42 | (v43 << 16)) << 32);
      sub_1004A6EC4(1u);
      swift_beginAccess();
      v7 = *(v22 + 24) + ((v6 >> 24) & 0xFFFF00 | BYTE6(v6));
      sub_1004A6EA4();
LABEL_4:
      --v4;
      v5 = v51;
    }

    while (v4);
  }
}

void sub_1003AB39C(uint64_t a1, uint64_t a2)
{
  v57 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v57);
  v54 = &v54 - v5;
  v6 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for ParameterValue();
  v14 = *(v13 - 8);
  v64 = v13;
  v65 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v59 = (&v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v63 = &v54 - v18;
  v19 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v62 = &v54 - v21;
  v61 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v22 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v66 = (&v54 - v23);
  v69 = type metadata accessor for MetadataOption();
  v24 = *(v69 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v69);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v54 - v29;
  v31 = *(a2 + 16);
  sub_1004A6EB4(v31);
  v68 = v31;
  if (v31)
  {
    v32 = v3;
    v33 = 0;
    v67 = a2 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v34 = *(v24 + 72);
    v60 = (v65 + 48);
    v55 = (v32 + 48);
    v56 = v9;
    v35 = &unk_1004CF7E0;
    v65 = v34;
    v58 = v12;
    do
    {
      sub_1003B1888(v67 + v34 * v33, v30, type metadata accessor for MetadataOption);
      sub_1003B1888(v30, v27, type metadata accessor for MetadataOption);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v39 = v35;
        if (EnumCaseMultiPayload != 1)
        {
          v41 = v66;
          sub_100025FDC(v27, v66, &qword_1005DBCA8, &unk_100504BF0);
          sub_1004A6EB4(2uLL);
          v42 = *v41;
          v43 = v41[1];
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v44 = v62;
          sub_10000E268(v41 + *(v61 + 52), v62, &qword_1005D7F50, &unk_100502FF0);
          if ((*v60)(v44, 1, v64) == 1)
          {
            sub_1004A6EC4(0);
            goto LABEL_16;
          }

          v45 = v63;
          sub_1003B1820(v44, v63, type metadata accessor for ParameterValue);
          sub_1004A6EC4(1u);
          v46 = v59;
          sub_1003B1888(v45, v59, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v47 = *v46;
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(*(v47 + 16));
            v48 = *(v47 + 16);
            if (v48)
            {
              v49 = (v47 + 40);
              do
              {
                v50 = *(v49 - 1);
                v51 = *v49;

                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v49 += 2;
                --v48;
              }

              while (v48);
            }

            sub_1003B18F0(v63, type metadata accessor for ParameterValue);
            v9 = v56;
            v12 = v58;
            v34 = v65;
LABEL_16:
            v35 = v39;
          }

          else
          {
            v35 = v39;
            sub_100025FDC(v46, v12, &qword_1005CDA78, v39);
            sub_1004A6EB4(0);
            sub_10000E268(v12, v9, &qword_1005CDA78, v39);
            if ((*v55)(v9, 1, v57) == 1)
            {
              sub_1004A6EB4(1uLL);
            }

            else
            {
              v52 = v54;
              sub_100025FDC(v9, v54, &qword_1005CDA68, &qword_1004CF7D0);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              v53 = v52;
              v35 = v39;
              v12 = v58;
              sub_100025F40(v53, &qword_1005CDA68, &qword_1004CF7D0);
            }

            sub_100025F40(v12, &qword_1005CDA78, v39);
            sub_1003B18F0(v63, type metadata accessor for ParameterValue);
            v34 = v65;
          }

          sub_1003B18F0(v30, type metadata accessor for MetadataOption);
          sub_100025F40(v66, &qword_1005DBCA8, &unk_100504BF0);
          goto LABEL_5;
        }

        v40 = *v27;
        sub_1004A6EB4(1uLL);
        v35 = v39;
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        v36 = *v27;
        sub_1004A6EB4(0);
        v37 = v36;
        v34 = v65;
        sub_1004A6EB4(v37);
      }

      sub_1003B18F0(v30, type metadata accessor for MetadataOption);
LABEL_5:
      ++v33;
    }

    while (v33 != v68);
  }
}

void sub_1003ABB18(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v56 = &v55 - v6;
  v7 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v55 - v11;
  v65 = type metadata accessor for ParameterValue();
  v68 = *(v65 - 8);
  v12 = *(v68 + 64);
  __chkstk_darwin(v65);
  v60 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v64 = &v55 - v15;
  v16 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v63 = &v55 - v18;
  v62 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v19 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v69 = (&v55 - v20);
  v21 = type metadata accessor for SearchReturnOption();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v55 - v27;
  v29 = *(a2 + 16);
  sub_1004A6EB4(v29);
  v70 = v29;
  if (v29)
  {
    v30 = 0;
    v31 = a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v32 = *(v22 + 72);
    v33 = v31;
    v61 = (v68 + 48);
    v55 = (v4 + 48);
    v66 = v21;
    v67 = v31;
    v68 = v32;
    v59 = v3;
    do
    {
      sub_1003B1888(v33 + v32 * v30, v28, type metadata accessor for SearchReturnOption);
      sub_1003B1888(v28, v25, type metadata accessor for SearchReturnOption);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v41 = *v25;
          v40 = *(v25 + 1);
          v42 = v25[8];
          sub_1004A6EB4(5uLL);
          sub_1004A6EB4(v42);
          v43 = v41;
          v33 = v67;
          sub_1004A6EE4(v43);
          v44 = v40;
          v32 = v68;
          sub_1004A6EE4(v44);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v36 = v69;
          sub_100025FDC(v25, v69, &qword_1005DBCA8, &unk_100504BF0);
          sub_1004A6EB4(6uLL);
          v37 = *v36;
          v38 = v36[1];
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v39 = v63;
          sub_10000E268(v36 + *(v62 + 52), v63, &qword_1005D7F50, &unk_100502FF0);
          if ((*v61)(v39, 1, v65) == 1)
          {
            sub_1004A6EC4(0);
          }

          else
          {
            v45 = v64;
            sub_1003B1820(v39, v64, type metadata accessor for ParameterValue);
            sub_1004A6EC4(1u);
            v46 = v60;
            sub_1003B1888(v45, v60, type metadata accessor for ParameterValue);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v47 = *v46;
              sub_1004A6EB4(1uLL);
              sub_1004A6EB4(*(v47 + 16));
              v48 = *(v47 + 16);
              if (v48)
              {
                v49 = (v47 + 40);
                do
                {
                  v50 = *(v49 - 1);
                  v51 = *v49;

                  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                  v49 += 2;
                  --v48;
                }

                while (v48);
              }

              sub_1003B18F0(v64, type metadata accessor for ParameterValue);
              v3 = v59;
              v33 = v67;
            }

            else
            {
              v52 = v57;
              sub_100025FDC(v46, v57, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1004A6EB4(0);
              v53 = v58;
              sub_10000E268(v52, v58, &qword_1005CDA78, &unk_1004CF7E0);
              if ((*v55)(v53, 1, v3) == 1)
              {
                sub_1004A6EB4(1uLL);
              }

              else
              {
                v54 = v56;
                sub_100025FDC(v53, v56, &qword_1005CDA68, &qword_1004CF7D0);
                sub_1004A6EB4(0);
                sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
                sub_1000956A0();
                sub_1004A5564();
                sub_100025F40(v54, &qword_1005CDA68, &qword_1004CF7D0);
              }

              sub_100025F40(v52, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1003B18F0(v64, type metadata accessor for ParameterValue);
              v33 = v67;
              v3 = v59;
            }
          }

          sub_1003B18F0(v28, type metadata accessor for SearchReturnOption);
          sub_100025F40(v69, &qword_1005DBCA8, &unk_100504BF0);
          v32 = v68;
          goto LABEL_6;
        }

        v34 = 0;
      }

      else if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v34 = 3;
        }

        else
        {
          v34 = 4;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      sub_1004A6EB4(v34);
LABEL_5:
      sub_1003B18F0(v28, type metadata accessor for SearchReturnOption);
LABEL_6:
      ++v30;
    }

    while (v30 != v70);
  }
}

void sub_1003AC298(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v48 = &v47 - v6;
  v7 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for ParameterValue();
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  __chkstk_darwin(v13);
  v54 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v58 = &v47 - v17;
  v18 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v57 = &v47 - v20;
  v56 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v21 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v23 = (&v47 - v22);
  v62 = type metadata accessor for StoreModifier();
  v24 = *(v62 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v62);
  v27 = (&v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v30 = &v47 - v29;
  v31 = *(a2 + 16);
  sub_1004A6EB4(v31);
  v61 = v31;
  if (v31)
  {
    v32 = 0;
    v60 = a2 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v59 = *(v24 + 72);
    v55 += 48;
    v49 = (v52 + 48);
    v52 = v13;
    v53 = v12;
    do
    {
      sub_1003B1888(v60 + v59 * v32, v30, type metadata accessor for StoreModifier);
      sub_1003B1888(v30, v27, type metadata accessor for StoreModifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100025FDC(v27, v23, &qword_1005DBCA8, &unk_100504BF0);
        sub_1004A6EB4(1uLL);
        v34 = *v23;
        v35 = v23[1];
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v36 = v57;
        sub_10000E268(v23 + *(v56 + 52), v57, &qword_1005D7F50, &unk_100502FF0);
        if ((*v55)(v36, 1, v13) == 1)
        {
          sub_1004A6EC4(0);
        }

        else
        {
          v37 = v58;
          sub_1003B1820(v36, v58, type metadata accessor for ParameterValue);
          sub_1004A6EC4(1u);
          v38 = v54;
          sub_1003B1888(v37, v54, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v39 = *v38;
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(*(v39 + 16));
            v40 = *(v39 + 16);
            if (v40)
            {
              v41 = (v39 + 40);
              do
              {
                v42 = *(v41 - 1);
                v43 = *v41;

                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v41 += 2;
                --v40;
              }

              while (v40);
            }

            sub_1003B18F0(v58, type metadata accessor for ParameterValue);
            v13 = v52;
            v12 = v53;
          }

          else
          {
            sub_100025FDC(v38, v12, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1004A6EB4(0);
            v44 = v50;
            sub_10000E268(v12, v50, &qword_1005CDA78, &unk_1004CF7E0);
            if ((*v49)(v44, 1, v51) == 1)
            {
              sub_1004A6EB4(1uLL);
            }

            else
            {
              v45 = v48;
              sub_100025FDC(v44, v48, &qword_1005CDA68, &qword_1004CF7D0);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              v46 = v45;
              v13 = v52;
              v12 = v53;
              sub_100025F40(v46, &qword_1005CDA68, &qword_1004CF7D0);
            }

            sub_100025F40(v12, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003B18F0(v58, type metadata accessor for ParameterValue);
          }
        }

        sub_1003B18F0(v30, type metadata accessor for StoreModifier);
        sub_100025F40(v23, &qword_1005DBCA8, &unk_100504BF0);
      }

      else
      {
        v33 = *v27;
        sub_1004A6EB4(0);
        sub_1004A6EF4(v33);
        sub_1003B18F0(v30, type metadata accessor for StoreModifier);
      }

      ++v32;
    }

    while (v32 != v61);
  }
}

void sub_1003AC97C(uint64_t a1, uint64_t a2)
{
  v60 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v3 = *(v60 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v60);
  v57 = v56 - v5;
  v6 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v59 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = v56 - v10;
  v68 = type metadata accessor for ParameterValue();
  v70 = *(v68 - 8);
  v11 = *(v70 + 64);
  __chkstk_darwin(v68);
  v63 = (v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v67 = v56 - v14;
  v15 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v66 = v56 - v17;
  v65 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v18 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v20 = (v56 - v19);
  Modifier = type metadata accessor for FetchModifier();
  v22 = *(Modifier - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(Modifier);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v56 - v27;
  v29 = *(a2 + 16);
  sub_1004A6EB4(v29);
  if (v29)
  {
    v30 = v3;
    v31 = 0;
    v72 = a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v32 = *(v22 + 72);
    v64 = (v70 + 48);
    v58 = (v30 + 48);
    v33 = &unk_1004CF7E0;
    v69 = Modifier;
    v70 = v29;
    v71 = v32;
    v62 = v20;
    do
    {
      sub_1003B1888(v72 + v71 * v31, v28, type metadata accessor for FetchModifier);
      sub_1003B1888(v28, v25, type metadata accessor for FetchModifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          sub_100025FDC(v25, v20, &qword_1005DBCA8, &unk_100504BF0);
          sub_1004A6EB4(2uLL);
          v40 = *v20;
          v41 = v20[1];
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v42 = v66;
          sub_10000E268(v20 + *(v65 + 52), v66, &qword_1005D7F50, &unk_100502FF0);
          if ((*v64)(v42, 1, v68) == 1)
          {
            sub_1004A6EC4(0);
          }

          else
          {
            v43 = v67;
            sub_1003B1820(v42, v67, type metadata accessor for ParameterValue);
            sub_1004A6EC4(1u);
            v44 = v63;
            sub_1003B1888(v43, v63, type metadata accessor for ParameterValue);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v45 = *v44;
              sub_1004A6EB4(1uLL);
              sub_1004A6EB4(*(v45 + 16));
              v46 = *(v45 + 16);
              if (v46)
              {
                v47 = (v45 + 40);
                do
                {
                  v48 = *(v47 - 1);
                  v49 = *v47;

                  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                  v47 += 2;
                  --v46;
                }

                while (v46);
              }

              sub_1003B18F0(v67, type metadata accessor for ParameterValue);
              v29 = v70;
            }

            else
            {
              v50 = v33;
              v51 = v61;
              sub_100025FDC(v44, v61, &qword_1005CDA78, v50);
              sub_1004A6EB4(0);
              v52 = v59;
              sub_10000E268(v51, v59, &qword_1005CDA78, v50);
              v53 = (*v58)(v52, 1, v60);
              v29 = v70;
              if (v53 == 1)
              {
                sub_1004A6EB4(1uLL);
                v54 = v51;
              }

              else
              {
                v55 = v57;
                sub_100025FDC(v52, v57, &qword_1005CDA68, &qword_1004CF7D0);
                sub_1004A6EB4(0);
                v56[1] = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
                sub_1000956A0();
                sub_1004A5564();
                sub_100025F40(v55, &qword_1005CDA68, &qword_1004CF7D0);
                v54 = v61;
              }

              sub_100025F40(v54, &qword_1005CDA78, v50);
              sub_1003B18F0(v67, type metadata accessor for ParameterValue);
              v33 = v50;
            }

            v20 = v62;
          }

          sub_1003B18F0(v28, type metadata accessor for FetchModifier);
          sub_100025F40(v20, &qword_1005DBCA8, &unk_100504BF0);
          goto LABEL_5;
        }

        v37 = *v25;
        v36 = *(v25 + 1);
        v38 = v25[8];
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(v38);
        v39 = v37;
        v29 = v70;
        sub_1004A6EE4(v39);
        sub_1004A6EE4(v36);
      }

      else
      {
        v34 = *v25;
        sub_1004A6EB4(0);
        sub_1004A6EF4(v34);
      }

      sub_1003B18F0(v28, type metadata accessor for FetchModifier);
LABEL_5:
      ++v31;
    }

    while (v31 != v29);
  }
}

void sub_1003AD0B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = v5[1];
      v20 = *v5;
      v21 = v7;
      v8 = v5[3];
      v22 = v5[2];
      v23 = v8;
      v9 = v22;
      if (v22 == 254)
      {
        v6 = 2;
      }

      else
      {
        if (v22 != 255)
        {
          v10 = *(&v22 + 1);
          v11 = *(&v23 + 1);
          sub_1004A6EB4(1uLL);
          if (v9)
          {
            sub_1004A6EB4(1uLL);
            v12 = v10;
            v13 = *(&v22 + 1);
            v15 = *(&v23 + 1);
            v14 = v23;
            sub_1003B17E0(v20, *(&v20 + 1), v21, *(&v21 + 1), v22 & 1);
            v16 = v14;
            v10 = v12;
            sub_1003A3378(v13, v16, v15);
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          }

          else
          {
            sub_1004A6EB4(0);
            v17 = *(&v22 + 1);
            v18 = v23;
            sub_1003B17E0(v20, *(&v20 + 1), v21, *(&v21 + 1), v22 & 1);
            sub_1003A3378(v17, v18, *(&v18 + 1));
          }

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          if (HIBYTE(v11) == 255)
          {
            sub_1004A6EC4(0);
          }

          else
          {
            sub_1004A6EC4(1u);
            if ((v11 & 0x100000000000000) != 0)
            {
              sub_1004A6EB4(1uLL);
              sub_1003AD2A4(a1, v10);
            }

            else
            {
              sub_1004A6EB4(0);
              swift_beginAccess();
              v19 = *(v10 + 24) + ((v11 >> 24) & 0xFFFF00 | BYTE6(v11));
              sub_1004A6EA4();
            }
          }

          sub_1003A34D8(&v20);
          goto LABEL_5;
        }

        v6 = 0;
      }

      sub_1004A6EB4(v6);
LABEL_5:
      v5 += 4;
      --v4;
    }

    while (v4);
  }
}

void sub_1003AD2A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a2 + 55);
    do
    {
      v6 = *(v5 - 23);
      v7 = *(v5 - 15);
      v8 = *(v5 - 7) | ((*(v5 - 3) | (*(v5 - 1) << 16)) << 32);
      if (*v5)
      {
        sub_1004A6EB4(1uLL);

        sub_1003AD2A4(a1, v6);
        sub_1003A30F4(v6, v7, v8, 1);
      }

      else
      {
        sub_1004A6EB4(0);
        swift_beginAccess();
        v9 = *(v6 + 24) + ((v8 >> 24) & 0xFFFF00 | BYTE6(v8));
        sub_1004A6EA4();
      }

      v5 += 24;
      --v4;
    }

    while (v4);
  }
}

void sub_1003AD398(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  v29 = v4;
  if (v4)
  {
    v5 = 0;
    v28 = a2 + 32;
    do
    {
      v6 = (v28 + (v5 << 6));
      v7 = v6[1];
      v30 = *v6;
      v31 = v7;
      v8 = v6[3];
      v32 = v6[2];
      v33 = v8;
      v9 = v30;
      v10 = *(&v32 + 5) | (BYTE7(v32) << 16);
      if (v10 >> 22)
      {
        v11 = v32;
        v12 = *(&v33 + 1);
        if (v10 >> 22 != 1)
        {
          v17 = v32 | ((*(&v32 + 1) | ((*&v10 & 0xFFFFFFLL) << 32)) << 8);
          v18 = *(&v32 + 1) | v33 | *(&v33 + 1);
          if (v17 == 0x8000000000000000 && (v31 | *(&v30 + 1) | v30 | *(&v31 + 1) | v18) == 0)
          {
            sub_1004A6EB4(0);
          }

          else
          {
            if (v17 == 0x8000000000000000 && v30 == 1 && (v31 | *(&v30 + 1) | *(&v31 + 1) | v18) == 0)
            {
              v22 = 1;
            }

            else
            {
              v22 = 4;
            }

            sub_1004A6EB4(v22);
          }

          goto LABEL_4;
        }

        v27 = *(&v32 + 1);
        sub_1004A6EB4(3uLL);
        if (v11)
        {
          sub_1004A6EB4(1uLL);
          v13 = v33;
          v26 = *(&v32 + 1);
          sub_1003B17E0(v30, *(&v30 + 1), v31, *(&v31 + 1), v32 & 1);
          sub_1003A3378(v26, v13, *(&v13 + 1));
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        }

        else
        {
          sub_1004A6EB4(0);
          v23 = *(&v32 + 1);
          v24 = v33;
          sub_1003B17E0(v30, *(&v30 + 1), v31, *(&v31 + 1), v32 & 1);
          sub_1003A3378(v23, v24, *(&v24 + 1));
        }

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        if (HIBYTE(v12) != 255)
        {
          sub_1004A6EC4(1u);
          if ((v12 & 0x100000000000000) != 0)
          {
            sub_1004A6EB4(1uLL);
            sub_1003AD2A4(a1, v27);
          }

          else
          {
            sub_1004A6EB4(0);
            swift_beginAccess();
            v25 = *(v27 + 24) + ((v12 >> 24) & 0xFFFF00 | BYTE6(v12));
            sub_1004A6EA4();
          }

LABEL_31:
          sub_1002E8088(&v30);
          goto LABEL_4;
        }

        sub_1004A6EC4(0);
        sub_1002E8088(&v30);
      }

      else
      {
        sub_1004A6EB4(2uLL);
        sub_1004A6EB4(*(v9 + 16));
        v14 = *(v9 + 16);
        if (v14)
        {
          v15 = (v9 + 32);

          do
          {
            v16 = *v15++;
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

            --v14;
          }

          while (v14);
          goto LABEL_31;
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v29);
  }
}

void sub_1003AD7B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = v5[1];
      v18 = *v5;
      v19 = v7;
      v8 = v5[3];
      v20 = v5[2];
      v21 = v8;
      v9 = v20;
      v10 = *(&v20 + 1);
      v11 = *(&v8 + 1);
      if (v20 > 0xFDu)
      {
        if (v20 == 254)
        {
          v6 = 1;
        }

        else
        {
          if (v20 != 255)
          {
LABEL_13:
            sub_1004A6EB4(4uLL);
            if (v9)
            {
              sub_1004A6EB4(1uLL);
              v16 = v21;
              v17 = *(&v20 + 1);
              v12 = *(&v21 + 1);
              sub_1003B17E0(v18, *(&v18 + 1), v19, *(&v19 + 1), v20 & 1);
              sub_1003A3378(v17, v16, v12);
              _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            }

            else
            {
              sub_1004A6EB4(0);
              v13 = *(&v20 + 1);
              v14 = v21;
              sub_1003B17E0(v18, *(&v18 + 1), v19, *(&v19 + 1), v20 & 1);
              sub_1003A3378(v13, v14, *(&v14 + 1));
            }

            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            if (HIBYTE(v11) == 255)
            {
              sub_1004A6EC4(0);
            }

            else
            {
              sub_1004A6EC4(1u);
              if ((v11 & 0x100000000000000) != 0)
              {
                sub_1004A6EB4(1uLL);
                sub_1003AD2A4(a1, v10);
              }

              else
              {
                sub_1004A6EB4(0);
                swift_beginAccess();
                v15 = *(v10 + 24) + ((v11 >> 24) & 0xFFFF00 | BYTE6(v11));
                sub_1004A6EA4();
              }
            }

            sub_1003A3404(&v18);
            goto LABEL_5;
          }

          v6 = 0;
        }
      }

      else if (v20 == 252)
      {
        v6 = 3;
      }

      else
      {
        if (v20 != 253)
        {
          goto LABEL_13;
        }

        v6 = 2;
      }

      sub_1004A6EB4(v6);
LABEL_5:
      v5 += 4;
      --v4;
    }

    while (v4);
  }
}

void sub_1003AD9BC(uint64_t a1, uint64_t a2)
{
  v94 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v3 = *(v94 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v94);
  v88 = &v79 - v5;
  v6 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v87 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = &v79 - v10;
  matched = type metadata accessor for SequenceMatchData();
  v103 = *(matched - 8);
  v104 = matched;
  v12 = *(v103 + 64);
  __chkstk_darwin(matched);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C9C0(&qword_1005DBE10, &unk_10050C850);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v101 = &v79 - v17;
  v100 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v102 = *(v100 - 8);
  v18 = *(v102 + 8);
  __chkstk_darwin(v100);
  v85 = &v79 - v19;
  v20 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v99 = &v79 - v22;
  v106 = type metadata accessor for QResyncParameter(0);
  v23 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v80 = *(v83 - 8);
  v25 = *(v80 + 64);
  __chkstk_darwin(v83);
  v79 = &v79 - v26;
  v27 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v82 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v81 = &v79 - v31;
  v98 = type metadata accessor for ParameterValue();
  v89 = *(v98 - 8);
  v32 = *(v89 + 64);
  __chkstk_darwin(v98);
  v84 = (&v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v97 = &v79 - v35;
  v36 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v96 = &v79 - v38;
  v95 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v39 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v105 = (&v79 - v40);
  v41 = type metadata accessor for SelectParameter(0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v79 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = &v79 - v47;
  v49 = *(a2 + 16);
  sub_1004A6EB4(v49);
  v109 = v49;
  if (v49)
  {
    v50 = 0;
    v108 = a2 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v51 = *(v42 + 72);
    v91 = (v103 + 48);
    v92 = (v102 + 48);
    v89 += 48;
    v90 = (v3 + 48);
    v80 += 48;
    v102 = v14;
    v103 = v51;
    v93 = v41;
    do
    {
      sub_1003B1888(v108 + v51 * v50, v48, type metadata accessor for SelectParameter);
      sub_1003B1888(v48, v45, type metadata accessor for SelectParameter);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v55 = v14;
        v56 = v105;
        sub_100025FDC(v45, v105, &qword_1005DBCA8, &unk_100504BF0);
        sub_1004A6EB4(0);
        v57 = *v56;
        v58 = v56[1];
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v59 = v96;
        sub_10000E268(v56 + *(v95 + 52), v96, &qword_1005D7F50, &unk_100502FF0);
        if ((*v89)(v59, 1, v98) == 1)
        {
          sub_1004A6EC4(0);
          v14 = v55;
        }

        else
        {
          v66 = v97;
          sub_1003B1820(v59, v97, type metadata accessor for ParameterValue);
          sub_1004A6EC4(1u);
          v67 = v84;
          sub_1003B1888(v66, v84, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v68 = *v67;
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(*(v68 + 16));
            v69 = *(v68 + 16);
            if (v69)
            {
              v70 = (v68 + 40);
              do
              {
                v71 = *(v70 - 1);
                v72 = *v70;

                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v70 += 2;
                --v69;
              }

              while (v69);
            }

            sub_1003B18F0(v97, type metadata accessor for ParameterValue);
            v14 = v102;
          }

          else
          {
            v76 = v81;
            sub_100025FDC(v67, v81, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1004A6EB4(0);
            v77 = v82;
            sub_10000E268(v76, v82, &qword_1005CDA78, &unk_1004CF7E0);
            if ((*v80)(v77, 1, v83) == 1)
            {
              sub_1004A6EB4(1uLL);
            }

            else
            {
              v78 = v79;
              sub_100025FDC(v77, v79, &qword_1005CDA68, &qword_1004CF7D0);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              sub_100025F40(v78, &qword_1005CDA68, &qword_1004CF7D0);
            }

            sub_100025F40(v76, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003B18F0(v97, type metadata accessor for ParameterValue);
            v14 = v55;
          }

          v51 = v103;
        }

        sub_1003B18F0(v48, type metadata accessor for SelectParameter);
        sub_100025F40(v105, &qword_1005DBCA8, &unk_100504BF0);
        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v53 = v107;
        sub_1003B1820(v45, v107, type metadata accessor for QResyncParameter);
        sub_1004A6EB4(1uLL);
        sub_1004A6EE4(*v53);
        sub_1004A6EF4(*(v53 + 8));
        v54 = v99;
        sub_10000E268(v53 + *(v106 + 24), v99, &qword_1005CD510, &unk_1004CF2E0);
        if ((*v92)(v54, 1, v100) == 1)
        {
          sub_1004A6EC4(0);
        }

        else
        {
          v60 = v85;
          sub_100025FDC(v54, v85, &unk_1005D91B0, &unk_1004CF400);
          sub_1004A6EC4(1u);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          v14 = v102;
          sub_1004A5564();
          v61 = v60;
          v51 = v103;
          sub_100025F40(v61, &unk_1005D91B0, &unk_1004CF400);
        }

        v62 = v107;
        v63 = v101;
        sub_10000E268(v107 + *(v106 + 28), v101, &qword_1005DBE10, &unk_10050C850);
        if ((*v91)(v63, 1, v104) != 1)
        {
          sub_1003B1820(v63, v14, type metadata accessor for SequenceMatchData);
          sub_1004A6EC4(1u);
          v64 = v86;
          sub_10000E268(v14, v86, &qword_1005CD1C0, &unk_1004CEC40);
          v65 = *v90;
          if ((*v90)(v64, 1, v94) == 1)
          {
            sub_1004A6EB4(1uLL);
          }

          else
          {
            v73 = v88;
            sub_100025FDC(v64, v88, &qword_1005CD1D0, &unk_1004CF2C0);
            sub_1004A6EB4(0);
            sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
            sub_1000956A0();
            v14 = v102;
            sub_1004A5564();
            sub_100025F40(v73, &qword_1005CD1D0, &unk_1004CF2C0);
          }

          v74 = v87;
          sub_10000E268(&v14[*(v104 + 20)], v87, &qword_1005CD1C0, &unk_1004CEC40);
          if (v65(v74, 1, v94) == 1)
          {
            sub_1004A6EB4(1uLL);
          }

          else
          {
            v75 = v88;
            sub_100025FDC(v74, v88, &qword_1005CD1D0, &unk_1004CF2C0);
            sub_1004A6EB4(0);
            sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
            sub_1000956A0();
            v14 = v102;
            sub_1004A5564();
            sub_100025F40(v75, &qword_1005CD1D0, &unk_1004CF2C0);
          }

          sub_1003B18F0(v14, type metadata accessor for SequenceMatchData);
          sub_1003B18F0(v107, type metadata accessor for QResyncParameter);
          sub_1003B18F0(v48, type metadata accessor for SelectParameter);
          v51 = v103;
          goto LABEL_5;
        }

        sub_1004A6EC4(0);
        sub_1003B18F0(v62, type metadata accessor for QResyncParameter);
      }

      else
      {
        sub_1004A6EB4(2uLL);
      }

      sub_1003B18F0(v48, type metadata accessor for SelectParameter);
LABEL_5:
      ++v50;
    }

    while (v50 != v109);
  }
}

void sub_1003AE7F8(uint64_t a1, uint64_t a2)
{
  v56 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v64 = *(v56 - 8);
  v3 = v64[8];
  __chkstk_darwin(v56);
  v52 = &v52 - v4;
  v5 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v52 - v9;
  v10 = type metadata accessor for ParameterValue();
  v63 = *(v10 - 8);
  v11 = *(v63 + 8);
  __chkstk_darwin(v10);
  v57 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v62 = &v52 - v14;
  v15 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v52 - v17;
  v61 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v19 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v21 = (&v52 - v20);
  Parameter = type metadata accessor for CreateParameter();
  v23 = *(Parameter - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(Parameter);
  v26 = (&v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v29 = &v52 - v28;
  v66 = a2;
  v30 = *(a2 + 16);
  sub_1004A6EB4(v30);
  v67 = v30;
  if (v30)
  {
    v31 = 0;
    v66 += (*(v23 + 80) + 32) & ~*(v23 + 80);
    v32 = *(v23 + 72);
    v58 = v10;
    v59 = (v63 + 48);
    v53 = (v64 + 6);
    v64 = v26;
    v65 = v32;
    v63 = v29;
    v60 = Parameter;
    do
    {
      sub_1003B1888(v66 + v65 * v31, v29, type metadata accessor for CreateParameter);
      sub_1003B1888(v29, v26, type metadata accessor for CreateParameter);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = v21;
        v34 = v18;
        v35 = *v26;
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(*(v35 + 16));
        v36 = *(v35 + 16);
        if (v36)
        {
          v37 = (v35 + 40);
          do
          {
            v38 = *(v37 - 1);
            v39 = *v37;
            sub_1004A5814();

            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

            v37 += 2;
            --v36;
          }

          while (v36);
          v29 = v63;
          sub_1003B18F0(v63, type metadata accessor for CreateParameter);

          v10 = v58;
          v18 = v34;
          v21 = v33;
          v26 = v64;
        }

        else
        {
          sub_1003B18F0(v29, type metadata accessor for CreateParameter);

          v18 = v34;
          v21 = v33;
        }
      }

      else
      {
        sub_100025FDC(v26, v21, &qword_1005DBCA8, &unk_100504BF0);
        sub_1004A6EB4(0);
        v40 = *v21;
        v41 = v21[1];
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        sub_10000E268(v21 + *(v61 + 52), v18, &qword_1005D7F50, &unk_100502FF0);
        if ((*v59)(v18, 1, v10) == 1)
        {
          sub_1004A6EC4(0);
        }

        else
        {
          v42 = v62;
          sub_1003B1820(v18, v62, type metadata accessor for ParameterValue);
          sub_1004A6EC4(1u);
          v43 = v57;
          sub_1003B1888(v42, v57, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v44 = *v43;
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(*(v44 + 16));
            v45 = *(v44 + 16);
            if (v45)
            {
              v46 = (v44 + 40);
              do
              {
                v47 = *(v46 - 1);
                v48 = *v46;

                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v46 += 2;
                --v45;
              }

              while (v45);
            }

            sub_1003B18F0(v62, type metadata accessor for ParameterValue);
            v10 = v58;
            v29 = v63;
            v26 = v64;
          }

          else
          {
            v49 = v54;
            sub_100025FDC(v43, v54, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1004A6EB4(0);
            v50 = v55;
            sub_10000E268(v49, v55, &qword_1005CDA78, &unk_1004CF7E0);
            if ((*v53)(v50, 1, v56) == 1)
            {
              sub_1004A6EB4(1uLL);
            }

            else
            {
              v51 = v52;
              sub_100025FDC(v50, v52, &qword_1005CDA68, &qword_1004CF7D0);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              sub_100025F40(v51, &qword_1005CDA68, &qword_1004CF7D0);
            }

            sub_100025F40(v49, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003B18F0(v62, type metadata accessor for ParameterValue);
            v29 = v63;
            v26 = v64;
          }
        }

        sub_1003B18F0(v29, type metadata accessor for CreateParameter);
        sub_100025F40(v21, &qword_1005DBCA8, &unk_100504BF0);
      }

      ++v31;
    }

    while (v31 != v67);
  }
}

void sub_1003AEFBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = (v5 + 16 * v4);
      v7 = *v6;
      v8 = *(v6 + 8);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          sub_1004A6EB4(7uLL);
          sub_1004A6EB4(*(v7 + 16));
          v12 = *(v7 + 16);
          if (v12)
          {
            v13 = (v7 + 40);
            do
            {
              v14 = *v13;
              v13 += 4;
              sub_1004A6EB4(v14 | (v14 << 32));
              --v12;
            }

            while (v12);
          }
        }

        else
        {
          sub_1004A6EB4(qword_1004FF818[v7]);
        }
      }

      else if (v8)
      {
        sub_1004A6EB4(4uLL);
        sub_1004A6EB4(*(v7 + 16));
        v15 = *(v7 + 16);
        if (v15)
        {
          v16 = (v7 + 40);
          do
          {
            v17 = *v16;
            v16 += 4;
            sub_1004A6EB4(v17 | (v17 << 32));
            --v15;
          }

          while (v15);
        }
      }

      else
      {
        sub_1004A6EB4(3uLL);
        sub_1004A6EB4(*(v7 + 16));
        v9 = *(v7 + 16);
        if (v9)
        {
          v10 = (v7 + 40);
          do
          {
            v11 = *v10;
            v10 += 4;
            sub_1004A6EB4(v11 | (v11 << 32));
            --v9;
          }

          while (v9);
        }
      }

      ++v4;
    }

    while (v4 != v3);
  }
}

void sub_1003AF0EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  v34 = v3;
  if (v3)
  {
    v4 = 0;
    v33 = a2 + 32;
    while (1)
    {
      v5 = (v33 + (v4 << 6));
      v6 = *v5;
      v7 = *(v5 + 2);
      v8 = *(v5 + 3);
      v9 = *(v5 + 10);
      v10 = *(v5 + 22);
      v11 = v5[3];
      v12 = v5[4];
      v13 = v5[5];
      v37 = v5[7];
      v38 = v5[6];
      swift_beginAccess();
      v14 = *(v6 + 24) + (v10 | (v9 << 8));
      sub_1004A6EA4();
      v35 = v4;
      if (v12)
      {
        sub_1004A6EC4(1u);
        sub_1004A55B4();
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1004A6EB4(*(v37 + 16));
      v15 = *(v37 + 16);

      swift_retain_n();
      v36 = v15;
      if (v15)
      {
        break;
      }

LABEL_3:

      v4 = v35 + 1;
      if (v35 + 1 == v34)
      {
        return;
      }
    }

    v16 = 0;
    while (v16 < *(v38 + 16))
    {
      if (v16 >= *(v37 + 16))
      {
        goto LABEL_19;
      }

      v17 = v38 + 32 + 24 * v16;
      v18 = *(v17 + 22);
      v19 = *(v17 + 20);
      v20 = *(v17 + 8);
      v21 = *(v17 + 12);
      v22 = *v17;
      v23 = *(v37 + 32 + 8 * v16);

      if (v22)
      {
        swift_beginAccess();
        v24 = *(v22 + 24) + (v18 | (v19 << 8));
        sub_1004A6EA4();
        sub_1004A6EB4(*(v23 + 16));
        v25 = *(v23 + 16);
        if (v25)
        {
          v26 = (v23 + 54);
          do
          {
            v27 = *(v26 - 22);
            v28 = *(v26 - 14);
            v29 = *(v26 - 10);
            v30 = *(v26 - 1);
            v31 = *v26;
            v26 += 24;
            swift_beginAccess();
            v32 = *(v27 + 24) + (v31 | (v30 << 8));
            sub_1004A6EA4();
            --v25;
          }

          while (v25);
        }

        ++v16;

        if (v16 != v36)
        {
          continue;
        }
      }

      goto LABEL_3;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

void sub_1003AF39C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      if (v6)
      {
        v7 = *(v4 - 1);
        sub_1004A6EB4(0);
        sub_1004A5834();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EB4(1uLL);
      }

      v4 = v5;
      --v3;
    }

    while (v3);
  }
}

void sub_1003AF454(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  v133 = v4;
  if (!v4)
  {
    return;
  }

  v5 = 0;
  v132 = a2 + 32;
  while (1)
  {
    v134 = v5;
    v6 = (v132 + 184 * v5);
    v7 = v6[9];
    v8 = v6[7];
    v148 = v6[8];
    v149 = v7;
    v9 = v6[9];
    v150 = v6[10];
    v10 = v6[5];
    v11 = v6[3];
    v144 = v6[4];
    v145 = v10;
    v12 = v6[5];
    v13 = v6[7];
    v146 = v6[6];
    v147 = v13;
    v14 = v6[1];
    v140 = *v6;
    v141 = v14;
    v15 = v6[3];
    v17 = *v6;
    v16 = v6[1];
    v142 = v6[2];
    v143 = v15;
    v152[8] = v148;
    v152[9] = v9;
    v152[10] = v6[10];
    v152[4] = v144;
    v152[5] = v12;
    v152[6] = v146;
    v152[7] = v8;
    v152[0] = v17;
    v152[1] = v16;
    v151 = *(v6 + 176);
    v153 = *(v6 + 176);
    v152[2] = v142;
    v152[3] = v11;
    if (sub_10000FE88(v152) != 1)
    {
      break;
    }

    v18 = UInt32.init(_:)(v152);
    __dst[8] = v148;
    __dst[9] = v149;
    __dst[10] = v150;
    LOBYTE(__dst[11]) = v151;
    __dst[4] = v144;
    __dst[5] = v145;
    __dst[6] = v146;
    __dst[7] = v147;
    __dst[0] = v140;
    __dst[1] = v141;
    __dst[2] = v142;
    __dst[3] = v143;
    v19 = UInt32.init(_:)(__dst);
    sub_1004A6EB4(1uLL);
    v20 = *v18;
    sub_100259A40(v19, v137);
    sub_1003AF454(a1, v20);
    v21 = v18[1];
    v22 = v18[2];
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v23 = v18[4];
    if (!v23)
    {
      goto LABEL_3;
    }

    v24 = v18[5];
    v135 = v18[9];
    v123 = v18[6];
    v124 = v18[10];
    v125 = v18[11];
    v121 = v18[12];
    v122 = v18[13];
    v126 = v18[14];
    v128 = v18[7];
    sub_1004A6EC4(1u);
    v25 = *(v24 + 16);
    sub_1004A6EB4(v25);

    if (v25)
    {
      v26 = 0;
      v27 = (v24 + 40);
      v28 = (v23 + 40);
      while (v26 < *(v23 + 16))
      {
        v29 = *(v28 - 1);
        v30 = *v28;
        ++v26;
        v31 = *(v27 - 1);
        v32 = *v27;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v27 += 2;
        v28 += 2;
        if (v25 == v26)
        {
          goto LABEL_11;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_11:

    if (v128 == 1)
    {
      goto LABEL_3;
    }

    sub_1004A6EC4(1u);
    if (v128)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v33 = *(v124 + 16);
      sub_1004A6EB4(v33);

      if (v33)
      {
        v34 = 0;
        v35 = (v124 + 40);
        v36 = (v135 + 40);
        while (v34 < *(v135 + 16))
        {
          v37 = *(v36 - 1);
          v38 = *v36;
          ++v34;
          v39 = *(v35 - 1);
          v40 = *v35;

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v35 += 2;
          v36 += 2;
          if (v33 == v34)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_86;
      }

LABEL_17:

      v41 = v125;
      v42 = v126;
      if (!v125)
      {
        goto LABEL_3;
      }
    }

    else
    {
      sub_1004A6EC4(0);
      v41 = v125;
      v42 = v126;
      if (!v125)
      {
        goto LABEL_3;
      }
    }

    sub_1004A6EC4(1u);
    sub_1004A6EB4(*(v41 + 16));
    v95 = *(v41 + 16);
    if (v95)
    {
      v96 = (v41 + 40);
      do
      {
        v97 = *(v96 - 1);
        v98 = *v96;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v96 += 2;
        --v95;
      }

      while (v95);
    }

    if (v42)
    {
      sub_1004A6EC4(1u);
      if (v122)
      {
        sub_1004A6EC4(1u);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1004A6EB4(*(v42 + 16));
      v103 = *(v42 + 16);
      if (v103)
      {
        v104 = (v42 + 55);
        do
        {
          v105 = *(v104 - 23);
          if (*v104)
          {
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(v105);
          }

          else
          {
            v106 = *(v104 - 15);
            v107 = *(v104 - 1);
            v108 = *(v104 - 3);
            v109 = *(v104 - 7);
            sub_1004A6EB4(0);
            if (v105)
            {
              v110 = v109 | ((v108 | (v107 << 16)) << 32);
              sub_1004A6EC4(1u);
              swift_beginAccess();
              v111 = *(v105 + 24) + ((v110 >> 24) & 0xFFFF00 | BYTE6(v110));
              sub_1004A6EA4();
            }

            else
            {
              sub_1004A6EC4(0);
            }
          }

          v104 += 24;
          --v103;
        }

        while (v103);
      }

      goto LABEL_4;
    }

LABEL_3:
    sub_1004A6EC4(0);
LABEL_4:
    sub_100051110(&v140);
    v5 = v134 + 1;
    if (v134 + 1 == v133)
    {
      return;
    }
  }

  v43 = UInt32.init(_:)(v152);
  sub_1004A6EB4(0);
  v44 = *v43;
  v45 = *v43 >> 62;
  if (!v45)
  {
    v53 = *(v44 + 16);
    v54 = *(v44 + 24);
    v55 = *(v44 + 32);
    v56 = *(v44 + 40);
    sub_1004A6EB4(0);
    sub_1000510B4(&v140, __dst);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

LABEL_25:

    goto LABEL_28;
  }

  v46 = (v44 & 0x3FFFFFFFFFFFFFFFLL);
  if (v45 != 1)
  {
    v57 = v46[2];
    v58 = v46[3];
    v59 = v46[4];
    sub_1004A6EB4(2uLL);
    sub_1000510B4(&v140, __dst);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1004A6EB4(v59);
    goto LABEL_25;
  }

  memcpy(__dst, v46 + 2, 0x148uLL);
  sub_1004A6EB4(1uLL);
  sub_1000510B4(&v140, v137);
  sub_100259990(__dst, v137);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v175 = __dst[5];
  v176 = __dst[6];
  v177 = __dst[7];
  v178 = *&__dst[8];
  v171 = __dst[1];
  v172 = __dst[2];
  v173 = __dst[3];
  v174 = __dst[4];
  Envelope.hash(into:)(a1);
  v137[8] = *(&__dst[16] + 8);
  v137[9] = *(&__dst[17] + 8);
  v137[10] = *(&__dst[18] + 8);
  v138 = BYTE8(__dst[19]);
  v137[4] = *(&__dst[12] + 8);
  v137[5] = *(&__dst[13] + 8);
  v137[6] = *(&__dst[14] + 8);
  v137[7] = *(&__dst[15] + 8);
  v137[0] = *(&__dst[8] + 8);
  v137[1] = *(&__dst[9] + 8);
  v137[2] = *(&__dst[10] + 8);
  v137[3] = *(&__dst[11] + 8);
  if (sub_10000FE88(v137) == 1)
  {
    v47 = UInt32.init(_:)(v137);
    sub_1004A6EB4(1uLL);
    sub_1003AF454(a1, *v47);
    v48 = *(v47 + 8);
    v49 = *(v47 + 16);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v50 = *(v47 + 72);
    v167 = *(v47 + 56);
    v168 = v50;
    v51 = *(v47 + 104);
    v169 = *(v47 + 88);
    v170 = v51;
    v52 = *(v47 + 40);
    v165 = *(v47 + 24);
    v166 = v52;
    sub_1003B053C(a1);
  }

  else
  {
    v60 = UInt32.init(_:)(v137);
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, *v60);
    v61 = *(v60 + 24);
    v62 = *(v60 + 56);
    v162 = *(v60 + 40);
    v163 = v62;
    v164 = *(v60 + 72);
    v63 = *(v60 + 8);
    v161 = v61;
    v160 = v63;
    BodyStructure.Fields.hash(into:)();
    v64 = *(v60 + 136);
    v156 = *(v60 + 120);
    v157 = v64;
    v158 = *(v60 + 152);
    v159 = *(v60 + 168);
    v65 = *(v60 + 104);
    v154 = *(v60 + 88);
    v155 = v65;
    sub_1003B0920(a1);
  }

  sub_1004A6EB4(*&__dst[20]);
  sub_1002599EC(__dst);
LABEL_28:
  v67 = v43[2];
  v66 = v43[3];
  v130 = v43;
  v68 = *(v66 + 16);
  sub_1004A6EB4(v68);

  if (v68)
  {
    v69 = 0;
    v70 = (v66 + 40);
    v71 = (v67 + 40);
    while (v69 < *(v67 + 16))
    {
      v72 = *(v71 - 1);
      v73 = *v71;
      ++v69;
      v74 = *(v70 - 1);
      v75 = *v70;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v70 += 2;
      v71 += 2;
      if (v68 == v69)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

LABEL_32:

  if (v130[5])
  {
    v76 = v130[4];
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v130[7])
    {
      goto LABEL_34;
    }

LABEL_37:
    sub_1004A6EC4(0);
    if (v130[9])
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  sub_1004A6EC4(0);
  if (!v130[7])
  {
    goto LABEL_37;
  }

LABEL_34:
  v77 = v130[6];
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v130[9])
  {
LABEL_35:
    v78 = v130[8];
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_39;
  }

LABEL_38:
  sub_1004A6EC4(0);
LABEL_39:
  sub_1004A6EB4(v130[10]);
  v79 = v130[12];
  if (v79 == 1)
  {
    goto LABEL_3;
  }

  v80 = v130[11];
  v82 = v130[13];
  v81 = v130[14];
  v83 = v130[16];
  v136 = v130[17];
  v84 = v130[19];
  v85 = v130[21];
  v127 = v130[20];
  v129 = v130[18];
  sub_1004A6EC4(1u);
  if (v79)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v81 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v81 == 1)
    {
      goto LABEL_3;
    }
  }

  sub_1004A6EC4(1u);
  if (!v81)
  {
    sub_1004A6EC4(0);
    v94 = v129;
    if (v129)
    {
LABEL_59:
      sub_1004A6EC4(1u);
      sub_1004A6EB4(*(v94 + 16));
      v99 = *(v94 + 16);
      if (v99)
      {
        v100 = (v94 + 40);
        do
        {
          v101 = *(v100 - 1);
          v102 = *v100;

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v100 += 2;
          --v99;
        }

        while (v99);
      }

      if (v85)
      {
        sub_1004A6EC4(1u);
        if (v127)
        {
          sub_1004A6EC4(1u);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        }

        else
        {
          sub_1004A6EC4(0);
        }

        sub_1004A6EB4(*(v85 + 16));
        v112 = *(v85 + 16);
        if (v112)
        {
          v113 = (v85 + 55);
          do
          {
            v114 = *(v113 - 23);
            if (*v113)
            {
              sub_1004A6EB4(1uLL);
              sub_1004A6EB4(v114);
            }

            else
            {
              v115 = *(v113 - 15);
              v116 = *(v113 - 1);
              v117 = *(v113 - 3);
              v118 = *(v113 - 7);
              sub_1004A6EB4(0);
              if (v114)
              {
                v119 = v118 | ((v117 | (v116 << 16)) << 32);
                sub_1004A6EC4(1u);
                swift_beginAccess();
                v120 = *(v114 + 24) + ((v119 >> 24) & 0xFFFF00 | BYTE6(v119));
                sub_1004A6EA4();
              }

              else
              {
                sub_1004A6EC4(0);
              }
            }

            v113 += 24;
            --v112;
          }

          while (v112);
        }

        goto LABEL_4;
      }

      goto LABEL_3;
    }

    goto LABEL_3;
  }

  v131 = v85;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v86 = *(v136 + 16);
  sub_1004A6EB4(v86);

  if (!v86)
  {
LABEL_49:

    v85 = v131;
    v94 = v129;
    if (v129)
    {
      goto LABEL_59;
    }

    goto LABEL_3;
  }

  v87 = 0;
  v88 = (v136 + 40);
  v89 = (v83 + 40);
  while (v87 < *(v83 + 16))
  {
    v90 = *(v89 - 1);
    v91 = *v89;
    ++v87;
    v92 = *(v88 - 1);
    v93 = *v88;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v88 += 2;
    v89 += 2;
    if (v86 == v87)
    {
      goto LABEL_49;
    }
  }

LABEL_87:
  __break(1u);
}

void sub_1003B0040(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (HIBYTE(a4) == 255)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    if ((a4 & 0x100000000000000) != 0)
    {
      sub_1004A6EB4(1uLL);

      sub_1003AD2A4(a1, a2);
    }

    else
    {
      sub_1004A6EB4(0);
      swift_beginAccess();
      v7 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
      sub_1004A6EA4();
    }
  }
}

void sub_1003B0110(uint64_t a1)
{
  v28 = a1;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v27 = &v25 - v5;
  v6 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  matched = type metadata accessor for SequenceMatchData();
  v13 = *(matched - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(matched);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C9C0(&qword_1005DBE10, &unk_10050C850);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v25 - v19;
  sub_10000E268(v1, &v25 - v19, &qword_1005DBE10, &unk_10050C850);
  if ((*(v13 + 48))(v20, 1, matched) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1003B1820(v20, v16, type metadata accessor for SequenceMatchData);
    sub_1004A6EC4(1u);
    sub_10000E268(v16, v11, &qword_1005CD1C0, &unk_1004CEC40);
    v21 = *(v3 + 48);
    if (v21(v11, 1, v2) == 1)
    {
      sub_1004A6EB4(1uLL);
    }

    else
    {
      v22 = v27;
      sub_100025FDC(v11, v27, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_1004A6EB4(0);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_100025F40(v22, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    v23 = v26;
    sub_10000E268(&v16[*(matched + 20)], v26, &qword_1005CD1C0, &unk_1004CEC40);
    if (v21(v23, 1, v2) == 1)
    {
      sub_1004A6EB4(1uLL);
    }

    else
    {
      v24 = v27;
      sub_100025FDC(v23, v27, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_1004A6EB4(0);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_100025F40(v24, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    sub_1003B18F0(v16, type metadata accessor for SequenceMatchData);
  }
}

void sub_1003B053C(uint64_t a1)
{
  v3 = v1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v1[2];
  v28 = v1[6];
  v21 = v1[3];
  v22 = v1[7];
  v26 = v1[8];
  v27 = v1[4];
  v24 = v1[10];
  v25 = v1[9];
  v23 = v1[11];
  sub_1004A6EC4(1u);
  v5 = *(v4 + 16);
  sub_1004A6EB4(v5);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    v8 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      ++v6;
      v11 = *(v7 - 1);
      v12 = *v7;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v7 += 2;
      v8 += 2;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_6:

  if (v27 == 1)
  {
LABEL_7:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(1u);
  if (v27)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v13 = *(v22 + 16);
    sub_1004A6EB4(v13);

    if (v13)
    {
      v14 = 0;
      v15 = (v22 + 40);
      v16 = (v28 + 40);
      while (v14 < *(v28 + 16))
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        ++v14;
        v19 = *(v15 - 1);
        v20 = *v15;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v15 += 2;
        v16 += 2;
        if (v13 == v14)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

LABEL_13:
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(a1, v26, v25, v24, v23);
}

void sub_1003B0794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  sub_1004A6EC4(1u);
  v8 = *(a2 + 16);
  sub_1004A6EB4(v8);
  if (v8)
  {
    v9 = (a2 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  if (a5)
  {
    sub_1004A6EC4(1u);
    if (a4)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EC4(0);
    }

    v12 = *(a5 + 16);
    sub_1004A6EB4(v12);
    if (v12)
    {
      v13 = (a5 + 55);
      do
      {
        v14 = *(v13 - 23);
        if (*v13)
        {
          sub_1004A6EB4(1uLL);
          sub_1004A6EB4(v14);
        }

        else
        {
          v15 = *(v13 - 15);
          v16 = *(v13 - 1);
          v17 = *(v13 - 3);
          v18 = *(v13 - 7);
          sub_1004A6EB4(0);
          if (v14)
          {
            v19 = v18 | ((v17 | (v16 << 16)) << 32);
            sub_1004A6EC4(1u);
            swift_beginAccess();
            v20 = *(v14 + 24) + ((v19 >> 24) & 0xFFFF00 | BYTE6(v19));
            sub_1004A6EA4();
          }

          else
          {
            sub_1004A6EC4(0);
          }
        }

        v13 += 24;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
LABEL_8:
    sub_1004A6EC4(0);
  }
}

void sub_1003B0920(uint64_t a1)
{
  v3 = v1[1];
  if (v3 == 1)
  {
    goto LABEL_4;
  }

  v4 = *v1;
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v22 = v1[10];
  v23 = v1[6];
  sub_1004A6EC4(1u);
  if (v3)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v5 == 1)
    {
LABEL_4:
      sub_1004A6EC4(0);
      return;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v5 == 1)
    {
      goto LABEL_4;
    }
  }

  sub_1004A6EC4(1u);
  if (!v5)
  {
    sub_1004A6EC4(0);
    goto LABEL_13;
  }

  v19 = v10;
  v20 = v9;
  v21 = v8;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v11 = *(v23 + 16);
  sub_1004A6EB4(v11);

  if (!v11)
  {
LABEL_11:

    v9 = v20;
    v8 = v21;
    v10 = v19;
LABEL_13:

    sub_1003B0794(a1, v8, v9, v10, v22);
    return;
  }

  v12 = 0;
  v13 = (v23 + 40);
  v14 = (v7 + 40);
  while (v12 < *(v7 + 16))
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    ++v12;
    v17 = *(v13 - 1);
    v18 = *v13;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v13 += 2;
    v14 += 2;
    if (v11 == v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

BOOL _s12NIOIMAPCore213BodyStructureO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 144);
  v81[8] = *(a1 + 128);
  v81[9] = v3;
  v81[10] = *(a1 + 160);
  v82 = *(a1 + 176);
  v4 = *(a1 + 80);
  v81[4] = *(a1 + 64);
  v81[5] = v4;
  v5 = *(a1 + 112);
  v81[6] = *(a1 + 96);
  v81[7] = v5;
  v6 = *(a1 + 16);
  v81[0] = *a1;
  v81[1] = v6;
  v7 = *(a1 + 48);
  v81[2] = *(a1 + 32);
  v81[3] = v7;
  if (sub_10000FE88(v81) != 1)
  {
    v30 = UInt32.init(_:)(v81);
    v70 = v30[7];
    v71 = v30[8];
    v72 = v30[9];
    v73 = v30[10];
    v66 = v30[3];
    v67 = v30[4];
    v68 = v30[5];
    v69 = v30[6];
    v63 = *v30;
    v64 = v30[1];
    v65 = v30[2];
    LOBYTE(v51) = *(a2 + 176);
    v31 = a2[10];
    v49 = a2[9];
    v50 = v31;
    v32 = a2[8];
    v47 = a2[7];
    v48 = v32;
    v33 = a2[6];
    v45 = a2[5];
    v46 = v33;
    v34 = a2[4];
    v43 = a2[3];
    v44 = v34;
    v35 = a2[2];
    v41 = a2[1];
    v42 = v35;
    v40 = *a2;
    if (sub_10000FE88(&v40) != 1)
    {
      v36 = UInt32.init(_:)(&v40);
      v59 = v36[7];
      v60 = v36[8];
      v61 = v36[9];
      v62 = v36[10];
      v55 = v36[3];
      v56 = v36[4];
      v57 = v36[5];
      v58 = v36[6];
      v52 = *v36;
      v53 = v36[1];
      v54 = v36[2];
      return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v63, &v52);
    }

    UInt32.init(_:)(&v40);
    return 0;
  }

  v8 = UInt32.init(_:)(v81);
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 72);
  v85 = *(v8 + 56);
  v86 = v12;
  v13 = *(v8 + 104);
  v87 = *(v8 + 88);
  v88 = v13;
  v14 = *(v8 + 40);
  v83 = *(v8 + 24);
  v84 = v14;
  v15 = a2[3];
  v65 = a2[2];
  v66 = v15;
  v16 = a2[9];
  v71 = a2[8];
  v72 = v16;
  v73 = a2[10];
  v74 = *(a2 + 176);
  v17 = a2[7];
  v69 = a2[6];
  v70 = v17;
  v18 = a2[5];
  v67 = a2[4];
  v68 = v18;
  v19 = a2[1];
  v63 = *a2;
  v64 = v19;
  if (sub_10000FE88(&v63) != 1)
  {
    UInt32.init(_:)(&v63);
    return 0;
  }

  v20 = UInt32.init(_:)(&v63);
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v24 = *(v20 + 72);
  v77 = *(v20 + 56);
  v78 = v24;
  v25 = *(v20 + 104);
  v79 = *(v20 + 88);
  v80 = v25;
  v26 = *(v20 + 40);
  v75 = *(v20 + 24);
  v76 = v26;
  if ((sub_10039C870(v10) & 1) == 0 || (v9 != v22 || v11 != v23) && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v89[2] = v85;
  v89[3] = v86;
  v89[4] = v87;
  v89[5] = v88;
  v89[0] = v83;
  v89[1] = v84;
  v90[2] = v77;
  v90[3] = v78;
  v90[4] = v79;
  v90[5] = v80;
  v90[0] = v75;
  v90[1] = v76;
  v27 = v83;
  if (!*(&v83 + 1))
  {
    if (!*(&v75 + 1))
    {
      v40 = v83;
      v43 = v86;
      v44 = v87;
      v45 = v88;
      v41 = v84;
      v42 = v85;
      sub_10000E268(v89, &v52, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_10000E268(v90, &v52, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_100025F40(&v40, &qword_1005DBCC8, &qword_1004FE5E0);
      return 1;
    }

    goto LABEL_17;
  }

  if (!*(&v75 + 1))
  {
LABEL_17:
    *&v40 = *&v89[0];
    *(&v40 + 1) = *(&v83 + 1);
    v43 = v86;
    v44 = v87;
    v45 = v88;
    v41 = v84;
    v42 = v85;
    v46 = v75;
    v50 = v79;
    v51 = v80;
    v48 = v77;
    v49 = v78;
    v47 = v76;
    sub_10000E268(v89, &v52, &qword_1005DBCC8, &qword_1004FE5E0);
    sub_10000E268(v90, &v52, &qword_1005DBCC8, &qword_1004FE5E0);
    sub_100025F40(&v40, &qword_1005DBCD0, &qword_1004FE5E8);
    return 0;
  }

  *&v38[0] = *&v90[0];
  *(&v38[0] + 1) = *(&v75 + 1);
  v38[3] = v78;
  v38[4] = v79;
  v38[5] = v80;
  v38[1] = v76;
  v38[2] = v77;
  v44 = v79;
  v45 = v80;
  v42 = v77;
  v43 = v78;
  v40 = v38[0];
  v41 = v76;
  v56 = v87;
  v57 = v88;
  v54 = v85;
  v55 = v86;
  v53 = v84;
  v52 = v83;
  sub_10000E268(v89, v39, &qword_1005DBCC8, &qword_1004FE5E0);
  sub_10000E268(v90, v39, &qword_1005DBCC8, &qword_1004FE5E0);
  v28 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(&v52, &v40);
  sub_100025F40(v38, &qword_1005DBCC8, &qword_1004FE5E0);
  v39[0] = v27;
  v39[3] = v86;
  v39[4] = v87;
  v39[5] = v88;
  v39[1] = v84;
  v39[2] = v85;
  sub_100025F40(v39, &qword_1005DBCC8, &qword_1004FE5E0);
  return v28;
}

unint64_t sub_1003B0FE8()
{
  result = qword_1005DBD88;
  if (!qword_1005DBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD88);
  }

  return result;
}

unint64_t sub_1003B1040()
{
  result = qword_1005DBD90;
  if (!qword_1005DBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD90);
  }

  return result;
}

unint64_t sub_1003B1098()
{
  result = qword_1005DBD98;
  if (!qword_1005DBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD98);
  }

  return result;
}

unint64_t sub_1003B1134()
{
  result = qword_1005DBDB0;
  if (!qword_1005DBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBDB0);
  }

  return result;
}

unint64_t sub_1003B118C()
{
  result = qword_1005DBDB8;
  if (!qword_1005DBDB8)
  {
    sub_10000DEFC(&qword_1005DBDC0, &qword_1004FF018);
    sub_1003B1134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBDB8);
  }

  return result;
}

unint64_t sub_1003B1214()
{
  result = qword_1005DBDC8;
  if (!qword_1005DBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBDC8);
  }

  return result;
}

uint64_t sub_1003B12B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(&qword_1005DBDA8, &qword_1004FF010);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003B132C()
{
  result = qword_1005DBDD8;
  if (!qword_1005DBDD8)
  {
    sub_10000DEFC(&qword_1005DBDC0, &qword_1004FF018);
    sub_1003B1098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBDD8);
  }

  return result;
}

unint64_t sub_1003B13B4()
{
  result = qword_1005DBDE0;
  if (!qword_1005DBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBDE0);
  }

  return result;
}

unint64_t sub_1003B140C()
{
  result = qword_1005DBDE8;
  if (!qword_1005DBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBDE8);
  }

  return result;
}

uint64_t sub_1003B152C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 177))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 176);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003B1574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 176) = 0;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = ~a2;
    }
  }

  return result;
}

double sub_1003B15D4(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 168) = 0;
    result = 0.0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 176) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 176) = -a2;
  }

  return result;
}

uint64_t sub_1003B163C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 177))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 176);
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

uint64_t sub_1003B1684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003B1714(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_1004A5924();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1004A5954();

  return sub_1004A5AB4();
}

uint64_t sub_1003B17E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_1003B1820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B1888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B18F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void BodyExtension.hash(into:)(uint64_t a1, Swift::UInt a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x100000000000000) != 0)
  {
    sub_1004A6EB4(1uLL);
    sub_1004A6EB4(a2);
  }

  else
  {
    sub_1004A6EB4(0);
    if (a2)
    {
      sub_1004A6EC4(1u);
      swift_beginAccess();
      v6 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
      sub_1004A6EA4();
    }

    else
    {
      sub_1004A6EC4(0);
    }
  }
}

Swift::Int BodyExtension.hashValue.getter(Swift::UInt a1, uint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  BodyExtension.hash(into:)(v7, a1, a2, a3 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(a3) & 1) << 56));
  return sub_1004A6F14();
}

Swift::Int sub_1003B1A94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | ((*(v0 + 20) | (*(v0 + 22) << 16)) << 32);
  v4 = *(v0 + 23);
  sub_1004A6E94();
  BodyExtension.hash(into:)(v6, v1, v2, v3 | (v4 << 56));
  return sub_1004A6F14();
}

Swift::Int sub_1003B1B40()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | ((*(v0 + 20) | (*(v0 + 22) << 16)) << 32);
  v4 = *(v0 + 23);
  sub_1004A6E94();
  BodyExtension.hash(into:)(v6, v1, v2, v3 | (v4 << 56));
  return sub_1004A6F14();
}

BOOL sub_1003B1C18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x100000000000000) != 0)
  {
    return HIBYTE(a6) & (a1 == a4);
  }

  if ((a6 & 0x100000000000000) != 0)
  {
    return 0;
  }

  if (a1)
  {
    if (a4)
    {
      sub_1003A336C(a4, a5, a6, 0);
      sub_1003A336C(a1, a2, a3, 0);
      v12 = sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
      sub_1003B1E64(a4, a5, a6, 0);
      sub_1003B1E64(a1, a2, a3, 0);
      return v12;
    }

LABEL_9:
    sub_1003A336C(a4, a5, a6, 0);
    sub_1003A336C(a1, a2, a3, 0);

    return 0;
  }

  if (a4)
  {
    goto LABEL_9;
  }

  return 1;
}

unint64_t sub_1003B1D5C()
{
  result = qword_1005DBE18;
  if (!qword_1005DBE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBE18);
  }

  return result;
}

uint64_t sub_1003B1DBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 23);
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

uint64_t sub_1003B1E04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 23) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003B1E64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1003B1E70(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= HIDWORD(a2))
  {
    v4[0] = result;
    v4[1] = a2;
    v5 = a3;
    v6 = WORD2(a3);
    v7 = BYTE6(a3);
    v8 = a2;
    v9 = HIDWORD(a2);

    v3 = sub_10044226C(v4);
    sub_1003A52D0(v4);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t GmailLabel.init(useAttribute:)(uint64_t a1, unint64_t a2)
{
  v2 = ByteBufferAllocator.buffer(string:)(a1, a2, j__malloc, j__realloc, sub_100127C74, sub_100127C84);

  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 12);
  result = sub_1002F178C(a1._countAndFlagsBits, a1._object, v1, *(v1 + 12));
  if (v6)
  {
    v7._countAndFlagsBits = countAndFlagsBits;
    v7._object = object;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 12);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v10;
  }

  return result;
}

uint64_t ByteBuffer.writeBytes<A>(_:)(uint64_t *a1, uint64_t a2)
{
  result = ByteBuffer.setBytes<A>(_:at:)(a1, *(v2 + 12), a2);
  v4 = *(v2 + 12);
  v5 = __CFADD__(v4, result);
  v6 = v4 + result;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 12) = v6;
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.getBytes(at:length:)(Swift::Int at, Swift::Int length)
{
  v6 = 0;
  if (at >= v3 && (length & 0x8000000000000000) == 0)
  {
    if ((HIDWORD(v3) - v3) - length >= at - v3)
    {
      v7 = at;
      v8 = v4;
      v9 = v2;
      swift_beginAccess();
      if (length)
      {
        v11 = length;
        v12 = *(v9 + 24);
        v13 = ((v8 >> 24) & 0xFFFF00 | BYTE6(v8)) + v7;
        v14 = v11;
        v15 = sub_10015BEAC(v11, 0);
        memcpy(v15 + 4, (v12 + v13), v14);
        v6 = v15;
      }

      else
      {
        v6 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  result.is_nil = length;
  result.value._rawValue = v6;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.readBytes(length:)(Swift::Int length)
{
  v2 = length;
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = v4 | (*(v1 + 3) << 32);
  v6 = *(v1 + 4) | (*(v1 + 10) << 32) | (*(v1 + 22) << 48);
  result = ByteBuffer.getBytes(at:length:)(v4, length);
  if (result.value._rawValue)
  {
    if (__CFADD__(v4, v2))
    {
      __break(1u);
    }

    else
    {
      *(v1 + 2) = v4 + v2;
    }
  }

  return result;
}

void ByteBuffer.writeStaticString(_:)(const void *a1, uint64_t a2, char a3)
{
  ByteBuffer.setStaticString(_:at:)(a1, a2, a3, *(v3 + 12));
  v4 = *(v3 + 12);
  v6 = __CFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 12) = v7;
  }
}

void ByteBuffer.setStaticString(_:at:)(const void *a1, uint64_t a2, char a3, Swift::UInt32 a4)
{
  if (a3)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = a4 + a2;
  if (__CFADD__(a4, a2))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = *(v4 + 4);
    v11 = v8 >= v10;
    v12 = v8 - v10;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v13, v14 & 1);
  }

  if (a2 <= 0xFFFFFFFFLL)
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(a2, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(a1, a1 + a2, a4);
    return;
  }

LABEL_14:
  __break(1u);
}

Swift::Int __swiftcall ByteBuffer.writeNullTerminatedString(_:)(Swift::String a1)
{
  result = ByteBuffer.setNullTerminatedString(_:at:)(a1, *(v1 + 12));
  v3 = *(v1 + 12);
  v4 = __CFADD__(v3, result);
  v5 = v3 + result;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v5;
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.setNullTerminatedString(_:at:)(Swift::String _, Swift::Int at)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = sub_1002F178C(_._countAndFlagsBits, _._object, v2, at);
  if (v7)
  {
    v8._countAndFlagsBits = countAndFlagsBits;
    v8._object = object;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, at);
  }

  v9 = v6;
  v10 = v6 + at;
  v19 = 0;
  v11 = v6 + at + 1;
  if (v10 == -1)
  {
    __break(1u);
  }

  v12 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = *(v2 + 16);
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v16, v17 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v10);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(&v19, &v20, v10);
  return v9 + 1;
}

Swift::Int __swiftcall ByteBuffer._setStringSlowpath(_:at:)(Swift::String _, Swift::Int at)
{
  v3 = at;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  result = sub_1003B247C(_._countAndFlagsBits, _._object, v2, at);
  if (v7)
  {
    result = sub_1003B2588(countAndFlagsBits, object, v2, v3);
    if ((result & 0x100000000) != 0)
    {
      LODWORD(result) = sub_1003B51F8(countAndFlagsBits, object, v3);
    }

    return result;
  }

  return result;
}

uint64_t sub_1003B247C(uint64_t result, unint64_t a2, uint64_t *a3, Swift::UInt32 a4)
{
  v4 = HIBYTE(a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  v7 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1004A67E4();
    }

    if (v8)
    {
      v10 = v8 + v9;
    }

    else
    {
      v10 = 0;
    }

    ByteBuffer._setBytes(_:at:)(v8, v10, a4);
    return v11;
  }

  v12 = HIBYTE(a2) & 0xF;
  v20[0] = result;
  v20[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = a4 + v12;
  if (!__CFADD__(a4, v12))
  {
    v14 = *a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = *(a3 + 4);
      v16 = v13 >= v15;
      v17 = v13 - v15;
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v18, v19 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(v4 & 0xF, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v20, v20 + v12, a4);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B2588(uint64_t result, unint64_t a2, uint64_t *a3, Swift::UInt32 a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v20 = 0;
    return v20 | (((a2 >> 60) & 1) << 32);
  }

  v7 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1004A67E4();
    }

    if (v8)
    {
      v10 = v8 + v9;
    }

    else
    {
      v10 = 0;
    }

    ByteBuffer._setBytes(_:at:)(v8, v10, a4);
    LODWORD(v12) = v11;
LABEL_16:
    v20 = v12;
    return v20 | (((a2 >> 60) & 1) << 32);
  }

  v12 = HIBYTE(a2) & 0xF;
  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = a4 + v12;
  if (!__CFADD__(a4, v12))
  {
    v14 = *a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = *(a3 + 4);
      v16 = v13 >= v15;
      v17 = v13 - v15;
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v18, v19 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(HIBYTE(a2) & 0xF, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v21, v21 + v12, a4);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.getString(at:length:)(Swift::Int at, Swift::Int length)
{
  v5 = 0;
  v6 = 0;
  if (at < v3 || length < 0)
  {
    goto LABEL_6;
  }

  if ((HIDWORD(v3) - v3) - length >= at - v3)
  {
    v8 = v2;
    swift_beginAccess();
    v9 = *(v8 + 24);
    v5 = sub_1004A58D4();
    v6 = v10;
LABEL_6:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = 0;
  v7 = 0;
LABEL_7:
  result.value._object = v7;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.getNullTerminatedString(at:)(Swift::Int at)
{
  v3 = v2;
  v4 = v1;
  v11 = ByteBuffer._getNullTerminatedStringLength(at:)(at);
  if (v11.is_nil)
  {
    goto LABEL_2;
  }

  value = v11.value;
  v6 = 0;
  v7 = 0;
  if (at >= v3 && (value & 0x8000000000000000) == 0)
  {
    if ((HIDWORD(v3) - v3) - value < at - v3)
    {
LABEL_2:
      v6 = 0;
      v7 = 0;
      goto LABEL_8;
    }

    swift_beginAccess();
    v9 = *(v4 + 24);
    v6 = sub_1004A58D4();
  }

LABEL_8:
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::Int_optional __swiftcall ByteBuffer._getNullTerminatedStringLength(at:)(Swift::Int at)
{
  v4 = v1;
  v6 = 0;
  v7 = 1;
  if (v2 > at)
  {
    goto LABEL_18;
  }

  v8 = HIDWORD(v2);
  if (HIDWORD(v2) <= at)
  {
    goto LABEL_18;
  }

  v9 = (WORD2(v3) << 8) | BYTE6(v3);
  if ((v3 - v9) < v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < v2 || (v10 = v8 - at, v8 < at))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12[0] = v4;
  v12[1] = v2;
  v13 = v3;
  v14 = WORD2(v3);
  v15 = BYTE6(v3);
  v16 = at;
  v17 = HIDWORD(v2);
  v6 = swift_beginAccess();
  v11 = 0;
  while (*(*(v4 + 24) + v9 + at + v11))
  {
    if ((v10 & ~(v10 >> 63)) == v11)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v10 == ++v11)
    {

      sub_1003A52D0(v12);
      v6 = 0;
      v7 = 1;
      goto LABEL_18;
    }
  }

  v6 = sub_1003A52D0(v12);
  if (__OFADD__(v11, at))
  {
    goto LABEL_17;
  }

  v7 = 0;
  v6 = v11;
LABEL_18:
  result.value = v6;
  result.is_nil = v7;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.readString(length:)(Swift::Int length)
{
  if (length < 0 || (v2 = *(v1 + 2), (*(v1 + 3) - v2) < length))
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = *v1;
    v6 = *(v1 + 10);
    v7 = *(v1 + 22);
    v8 = length;
    swift_beginAccess();
    v9 = *(v5 + 24);
    v3 = sub_1004A58D4();
    if (__CFADD__(v2, v8))
    {
      __break(1u);
    }

    else
    {
      *(v1 + 2) = v2 + v8;
    }
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.readNullTerminatedString()()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 22);
  v5 = *(v0 + 4) | (*(v0 + 10) << 32);
  v13 = ByteBuffer._getNullTerminatedStringLength(at:)(v2);
  if (!v13.is_nil)
  {
    value = v13.value;
    v6 = 0;
    if (value < 0)
    {
      v7 = 0;
      v11 = v2 + 1;
      if (v2 != -1)
      {
LABEL_8:
        if (v3 >= v11)
        {
          *(v0 + 2) = v11;
          goto LABEL_14;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v7 = 0;
      if (value <= v3 - v2)
      {
        swift_beginAccess();
        v9 = *(v1 + 24);
        v6 = sub_1004A58D4();
        v10 = __CFADD__(v2, value);
        v2 += value;
        if (v10)
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

        *(v0 + 2) = v2;
      }

      v11 = v2 + 1;
      if (v2 != -1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = 0;
  v7 = 0;
LABEL_14:
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t ByteBuffer.writeSubstring(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = *(v4 + 12);
  result = sub_1003B571C(a1, a2, a3, a4, v4, *(v4 + 12));
  if (v7)
  {
    v8 = sub_1004A5864();
    v10 = v9;
    v11 = sub_1002F178C(v8, v9, v4, v5);
    if (v12)
    {
      v13._countAndFlagsBits = v8;
      v13._object = v10;
      v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v5);
    }

    v14 = v11;

    result = v14;
  }

  v15 = *(v4 + 12);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 12) = v17;
  }

  return result;
}

uint64_t ByteBuffer.setSubstring(_:at:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, Swift::Int a5)
{
  result = sub_1003B571C(a1, a2, a3, a4, v5, a5);
  if (v8)
  {
    v9 = sub_1004A5864();
    v11 = v10;
    v12 = sub_1002F178C(v9, v10, v5, a5);
    if (v13)
    {
      v14._countAndFlagsBits = v9;
      v14._object = v11;
      v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, a5);
    }

    v15 = v12;

    return v15;
  }

  return result;
}

uint64_t ByteBuffer.writeDispatchData(_:)(uint64_t a1)
{
  result = ByteBuffer.setDispatchData(_:at:)(a1, *(v1 + 12));
  v3 = *(v1 + 12);
  v4 = __CFADD__(v3, result);
  v5 = v3 + result;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v5;
  }

  return result;
}

uint64_t ByteBuffer.setDispatchData(_:at:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v6 = a2 + result;
  if (__OFADD__(a2, result))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  if (v6 > *(v2 + 4) - (*(v2 + 22) | (*(v2 + 10) << 8)))
  {
    v8 = *v2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      ByteBuffer._ensureAvailableCapacity(_:at:)(v6, 0);
    }

    else
    {
      v9 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v6, v9 & 1);
    }
  }

  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v10 = *v2;
  v11 = *(v3 + 4);
  v12 = *(v3 + 10);
  v13 = *(v3 + 22);
  result = swift_beginAccess();
  v14 = v11 - (v13 | (v12 << 8));
  if (v6 < a2)
  {
    goto LABEL_16;
  }

  v15 = __OFSUB__(v6, a2);
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (v14 < a2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 > v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v15)
  {
    v16 = *(v10 + 24);
    sub_1004A5374();
    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t ByteBuffer.getDispatchData(at:length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 < a4 || a2 < 0 || (HIDWORD(a4) - a4) - a2 < a1 - a4)
  {
    v7 = sub_1004A5384();
    v8 = *(*(v7 - 8) + 56);

    return v8(a6, 1, 1, v7);
  }

  else
  {
    swift_beginAccess();
    v13 = *(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5)) + a1;
    sub_1004A5324();
    v14 = sub_1004A5384();
    return (*(*(v14 - 8) + 56))(a6, 0, 1, v14);
  }
}

uint64_t ByteBuffer.readDispatchData(length:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1004A5384();
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0 || (v11 = *(v2 + 2), (*(v2 + 3) - v11) < a1))
  {
    v12 = *(v7 + 56);

    return v12(a2, 1, 1, v5, v8);
  }

  else
  {
    v14 = *v2;
    v15 = *(v2 + 10);
    v16 = *(v2 + 22);
    v18 = v7;
    swift_beginAccess();
    v17 = *(v14 + 24) + (v16 | (v15 << 8)) + v11;
    sub_1004A5324();
    result = (*(v18 + 32))(a2, v10, v5);
    if (__CFADD__(v11, a1))
    {
      __break(1u);
    }

    else
    {
      *(v2 + 2) = v11 + a1;
      return (*(v18 + 56))(a2, 0, 1, v5);
    }
  }

  return result;
}

uint64_t ByteBuffer.readWithUnsafeReadableBytes(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v4 = *v1;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 10);
  v8 = *(v1 + 22);
  swift_beginAccess();
  v9 = *(v4 + 24) + (v8 | (v7 << 8));
  result = a1(v9 + v5, v9 + v6);
  if (!v2)
  {
    if (__CFADD__(v5, result))
    {
      __break(1u);
    }

    else
    {
      *(v1 + 2) = v5 + result;
    }
  }

  return result;
}

uint64_t ByteBuffer.readWithUnsafeMutableReadableBytes(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1;
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  v7 = *v3;
  v8 = *(v3 + 10);
  v9 = *(v3 + 22);
  swift_beginAccess();
  v10 = *(v7 + 24) + (v9 | (v8 << 8));
  result = a1(v10 + v6, v10 + v5);
  if (!v2)
  {
    if (__CFADD__(v6, result))
    {
      __break(1u);
    }

    else
    {
      *(v3 + 2) = v6 + result;
    }
  }

  return result;
}

uint64_t sub_1003B3210(uint64_t a1, unint64_t a2, unint64_t a3, Swift::UInt32 a4)
{
  v7 = a2;
  v9 = HIDWORD(a2);
  result = swift_beginAccess();
  v11 = v9 - v7;
  v12 = a4 + v9 - v7;
  if (__CFADD__(a4, v9 - v7))
  {
    __break(1u);
  }

  else
  {
    v13 = *(a1 + 24);
    v14 = *v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = *(v4 + 4);
      v16 = v12 >= v15;
      v17 = v12 - v15;
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v18, v19 & 1);
    }

    v20 = v13 + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
    ByteBuffer._ensureAvailableCapacity(_:at:)(v11, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v20 + v7), v20 + v9, a4);
    return v11;
  }

  return result;
}

uint64_t ByteBuffer.writeBuffer(_:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 10);
  v7 = *(a1 + 22);
  v8 = *(v1 + 3);
  result = swift_beginAccess();
  v10 = v5 - v4;
  v11 = v8 + v5 - v4;
  if (__CFADD__(v8, v5 - v4))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = *(v3 + 24) + (v7 | (v6 << 8));
  v13 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = *(v1 + 4);
    v15 = v11 >= v14;
    v16 = v11 - v14;
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v17, v18 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(v5 - v4, v8);
  result = ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v12 + v4), v12 + v5, v8);
  v19 = *(v1 + 3);
  v15 = __CFADD__(v19, v10);
  v20 = v19 + v10;
  if (v15)
  {
    goto LABEL_11;
  }

  *(v1 + 3) = v20;
  if (!__CFADD__(v4, v10))
  {
    *(a1 + 2) = v5;
    return (v5 - v4);
  }

LABEL_12:
  __break(1u);
  return result;
}

void ByteBuffer.writeBytes(_:)(const void *a1, uint64_t a2)
{
  ByteBuffer._setBytes(_:at:)(a1, a2, *(v2 + 12));
  v3 = *(v2 + 12);
  v5 = __CFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 12) = v6;
  }
}

Swift::Int __swiftcall ByteBuffer.writeRepeatingByte(_:count:)(Swift::UInt8 _, Swift::Int count)
{
  result = ByteBuffer.setRepeatingByte(_:count:at:)(_, count, *(v2 + 12));
  v5 = *(v2 + 12);
  v6 = __CFADD__(v5, count);
  v7 = v5 + count;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 12) = v7;
    return count;
  }

  return result;
}

uint64_t ByteBuffer.slice()(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = ByteBuffer.getSlice(at:length:)(a2, (HIDWORD(a2) - a2), a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t ByteBuffer.readSlice(length:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = result;
  v4 = *(v1 + 8);
  v3 = *(v1 + 12);
  if (v3 < result || (v3 - result) < v4)
  {
    return 0;
  }

  v6 = *(v1 + 22) | (*(v1 + 20) << 8);
  if (__CFADD__(v6, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = *v1;
    if ((v6 + v4) >> 24)
    {
      v8 = *(v1 + 16);
      result = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(*(v1 + 8), v2, *v1);
    }

    else
    {
    }

    if (!__CFADD__(v4, v2))
    {
      *(v1 + 8) = v4 + v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.writeImmutableBuffer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v5 = a3;
  v7 = BYTE6(a3);
  v6 = WORD2(a3);
  return ByteBuffer.writeBuffer(_:)(v4);
}

uint64_t ByteBuffer.readWithUnsafeMutableReadableBytes<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(*(TupleTypeMetadata2 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v19[-v12];
  v20 = a3;
  v21 = a1;
  v22 = a2;
  result = ByteBuffer.withUnsafeMutableReadableBytes<A>(_:)(sub_1003B57D4);
  if (!v5)
  {
    v15 = *v13;
    result = (*(*(a3 - 8) + 32))(a4, &v13[*(TupleTypeMetadata2 + 48)], a3);
    v16 = *(v4 + 8);
    v17 = __CFADD__(v16, v15);
    v18 = v16 + v15;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      *(v4 + 8) = v18;
    }
  }

  return result;
}

uint64_t ByteBuffer.readWithUnsafeReadableBytes<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(*(TupleTypeMetadata2 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v21[-v12];
  v14 = *v4;
  v15 = *(v4 + 8);
  v16 = *(v4 + 16);
  v17 = *(v4 + 20);
  v18 = *(v4 + 22);
  v22 = a3;
  v23 = a1;
  v24 = a2;
  result = ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1003B57F0, v21, v14, v15, v16 | (v17 << 32) | (v18 << 48));
  if (!v5)
  {
    v20 = *v13;
    result = (*(*(a3 - 8) + 32))(a4, &v13[*(TupleTypeMetadata2 + 48)], a3);
    if (__CFADD__(v15, v20))
    {
      __break(1u);
    }

    else
    {
      *(v4 + 8) = v15 + v20;
    }
  }

  return result;
}

uint64_t ByteBufferAllocator.buffer(string:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = a3;
    v16 = a4;
    v17 = a5;
    v18 = a6;
    v8 = sub_1004A59E4();
    if (v8 < 0)
    {
      __break(1u);
    }

    a6 = v18;
    a5 = v17;
    a4 = v16;
    a3 = v15;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_10:
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_6:
  v9 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v8, a3, a4, a5, a6);
  swift_beginAccess();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *(v9 + 16);
  while (1)
  {
    v23 = v9;
    v24 = v10;
    v25 = v11;
    v26 = v14;
    v27 = v12;
    v28 = v13;
    v19 = sub_1002F178C(a1, a2, &v23, v11);
    if (v20)
    {
      v21._countAndFlagsBits = a1;
      v21._object = a2;
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v11);
    }

    if (!__CFADD__(v25, v19))
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_11:
    v9 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v10 = qword_1005DE390;
    v11 = HIDWORD(qword_1005DE390);
    v14 = dword_1005DE398;
    v12 = word_1005DE39C;
    v13 = byte_1005DE39E;
  }

  return v23;
}

uint64_t ByteBuffer.init(substring:)(unint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = ByteBufferAllocator.buffer(substring:)(a1, a2, a3, a4, j__malloc, j__realloc, sub_100127C74, sub_100127C84);

  return v4;
}

uint64_t ByteBufferAllocator.buffer(substring:)(unint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1004A63E4();
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!v16)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  v17 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v16, a5, a6, a7, a8);
  swift_beginAccess();
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = *(v17 + 16);
  while (1)
  {
    v30 = v17;
    v31 = v18;
    v32 = v19;
    v33 = v22;
    v34 = v20;
    v35 = v21;
    v23 = sub_1003B571C(a1, a2, a3, a4, &v30, v19);
    if (v24)
    {
      a2 = sub_1004A5864();
      a4 = v25;
      v26 = sub_1002F178C(a2, v25, &v30, v19);
      if (v27)
      {
        v28._countAndFlagsBits = a2;
        v28._object = a4;
        v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v19);
      }

      a3 = v26;

      v23 = a3;
    }

    if (!__CFADD__(v32, v23))
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
LABEL_5:
    v17 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v18 = qword_1005DE390;
    v19 = HIDWORD(qword_1005DE390);
    v22 = dword_1005DE398;
    v20 = word_1005DE39C;
    v21 = byte_1005DE39E;
  }

  return v30;
}

uint64_t ByteBufferAllocator.buffer(staticString:)(const void *a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = a2;
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3;
  v9 = a1;
  if (!a2)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v10 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a2, a4, a5, a6, a7);
  swift_beginAccess();
  v11 = 0;
  v12 = *(v10 + 16);
  while (1)
  {
    ByteBuffer.setStaticString(_:at:)(v9, v8, v7, v11);
    if (!__CFADD__(v11, v13))
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
LABEL_6:
    v10 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v11 = HIDWORD(qword_1005DE390);
  }

  return v10;
}

uint64_t ByteBuffer.init<A>(bytes:)(uint64_t *a1, uint64_t a2)
{
  v4 = ByteBufferAllocator.buffer<A>(bytes:)(a1, j__malloc, j__realloc, sub_100127C74, sub_100127C84, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t ByteBufferAllocator.buffer<A>(bytes:)(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1004A5AE4();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v12)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v13 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v12, a2, a3, a4, a5);
  swift_beginAccess();
  v14 = 0;
  v15 = *(v13 + 16);
  while (__CFADD__(v14, ByteBuffer.setBytes<A>(_:at:)(a1, v14, a6)))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
LABEL_5:
    v13 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v14 = HIDWORD(qword_1005DE390);
  }

  return v13;
}

uint64_t ByteBuffer.init<A>(integer:endianness:as:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = ByteBufferAllocator.buffer<A>(integer:endianness:as:)(a1, a2 & 1, a3, j__malloc, j__realloc, sub_100127C74, sub_100127C84, a4);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v6;
}

uint64_t ByteBufferAllocator.buffer<A>(integer:endianness:as:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(*(a8 - 8) + 64);
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = a8;
  v10 = a3;
  v9 = a2;
  if (!v12)
  {
    if (qword_1005DB9D0 == -1)
    {
LABEL_5:
      v13 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;

      goto LABEL_6;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  v13 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v12, a4, a5, a6, a7);
  swift_beginAccess();
  v14 = *(v13 + 16);
LABEL_6:
  ByteBuffer.writeInteger<A>(_:endianness:as:)(a1, v9 & 1, v10, v8);
  return v13;
}

void *ByteBuffer.init(repeating:count:)(Swift::UInt8 a1, Swift::Int a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = a2;
  v3 = a1;
  if (!a2)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (a2)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v6 = v5 | HIWORD(v5);
    v7 = __CFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  result = malloc(v9);
  if (result)
  {
    v14 = result;
    type metadata accessor for ByteBuffer._Storage();
    v11 = swift_allocObject();
    v10 = 0;
    *(v11 + 16) = v9;
    *(v11 + 24) = v14;
    *(v11 + 32) = j__malloc;
    *(v11 + 40) = j__realloc;
    *(v11 + 48) = sub_100127C74;
    *(v11 + 56) = sub_100127C84;
    for (i = v2; ; i = 0)
    {
      v15 = v11;
      ByteBuffer.setRepeatingByte(_:count:at:)(v3, v2, v10);
      if (!__CFADD__(v10, i))
      {
        break;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      swift_once();
LABEL_8:
      v10 = HIDWORD(qword_1005DE390);
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferAllocator.buffer(repeating:count:)(Swift::UInt8 a1, Swift::Int a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = a2;
  v7 = a1;
  if (!a2)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v8 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a2, a3, a4, a5, a6);
  swift_beginAccess();
  v9 = 0;
  v10 = *(v8 + 16);
  for (i = v6; ; i = 0)
  {
    ByteBuffer.setRepeatingByte(_:count:at:)(v7, v6, v9);
    if (!__CFADD__(v9, i))
    {
      break;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
LABEL_5:
    v8 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v9 = HIDWORD(qword_1005DE390);
  }

  return v8;
}

void *ByteBuffer.init(buffer:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) == a2)
  {
    if (qword_1005DB9D0 != -1)
    {
      swift_once();
    }

    v19 = qword_1005DE390;
    LODWORD(v7) = dword_1005DE398;
    v8 = word_1005DE39C;
    v9 = byte_1005DE39E;

    v11 = v19;
    goto LABEL_10;
  }

  v12 = (HIDWORD(a2) + ~a2) | ((HIDWORD(a2) + ~a2) >> 1);
  v13 = v12 | (v12 >> 2) | ((v12 | (v12 >> 2)) >> 4);
  v14 = v13 | (v13 >> 8) | ((v13 | (v13 >> 8)) >> 16);
  v15 = __CFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v16;
  }

  result = malloc(v7);
  if (result)
  {
    v18 = result;
    type metadata accessor for ByteBuffer._Storage();
    v10 = swift_allocObject();
    v8 = 0;
    v9 = 0;
    *(v10 + 16) = v7;
    *(v10 + 24) = v18;
    *(v10 + 32) = j__malloc;
    *(v10 + 40) = j__realloc;
    *(v10 + 48) = sub_100127C74;
    *(v10 + 56) = sub_100127C84;
    v11 = 0;
LABEL_10:
    v26 = v10;
    v27 = v11;
    v28 = v7;
    v29 = v8;
    v30 = v9;
    v20 = a1;
    v21 = v4;
    v22 = v6;
    v23 = a3;
    v24 = WORD2(a3);
    v25 = BYTE6(a3);
    ByteBuffer.writeBuffer(_:)(&v20);

    return v26;
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferAllocator.buffer(buffer:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) == a2)
  {
    if (qword_1005DB9D0 != -1)
    {
      swift_once();
    }

    v11 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v17 = qword_1005DE390;
    v12 = dword_1005DE398;
    v13 = word_1005DE39C;
    v14 = byte_1005DE39E;

    v15 = v17;
  }

  else
  {
    v11 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(HIDWORD(a2) - a2, a4, a5, a6, a7);
    swift_beginAccess();
    v13 = 0;
    v14 = 0;
    v12 = *(v11 + 16);
    v15 = 0;
  }

  v24 = v11;
  v25 = v15;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v18 = a1;
  v19 = v8;
  v20 = v10;
  v21 = a3;
  v22 = WORD2(a3);
  v23 = BYTE6(a3);
  ByteBuffer.writeBuffer(_:)(&v18);
  return v24;
}

void *ByteBuffer.init(dispatchData:)(uint64_t a1)
{
  v2 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!v2)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (v2)
  {
    v3 = (v2 - 1) | ((v2 - 1) >> 1) | (((v2 - 1) | ((v2 - 1) >> 1)) >> 2);
    v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
    v5 = v4 | HIWORD(v4);
    v6 = __CFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  result = malloc(v8);
  if (result)
  {
    v12 = result;
    type metadata accessor for ByteBuffer._Storage();
    v10 = swift_allocObject();
    v9 = 0;
    *(v10 + 16) = v8;
    *(v10 + 24) = v12;
    *(v10 + 32) = j__malloc;
    *(v10 + 40) = j__realloc;
    *(v10 + 48) = sub_100127C74;
    *(v10 + 56) = sub_100127C84;
    while (1)
    {
      v14 = v10;
      if (!__CFADD__(v9, ByteBuffer.setDispatchData(_:at:)(a1, v9)))
      {
        break;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      swift_once();
LABEL_8:
      v9 = HIDWORD(qword_1005DE390);
    }

    v13 = sub_1004A5384();
    (*(*(v13 - 8) + 8))(a1, v13);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferAllocator.buffer(dispatchData:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v10)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v11 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v10, a2, a3, a4, a5);
  swift_beginAccess();
  v12 = 0;
  v13 = *(v11 + 16);
  while (__CFADD__(v12, ByteBuffer.setDispatchData(_:at:)(a1, v12)))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
LABEL_5:
    v11 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v12 = HIDWORD(qword_1005DE390);
  }

  return v11;
}

uint64_t ByteBuffer.init(from:)(uint64_t *a1)
{
  result = sub_1003B5B28(a1);
  if (v1)
  {
    return v3 & 0xFFFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t ByteBuffer.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = HIDWORD(a3);
  v8 = a1[4];
  sub_10002587C(a1, a1[3]);
  result = sub_1004A6F94();
  if (v7 < v5)
  {
    __break(1u);
  }

  else
  {
    v10 = (WORD2(a4) << 8) | BYTE6(a4);
    if ((a4 - v10) >= v7)
    {
      v14 = a2;
      v15 = v5;
      v16 = v7;
      v17 = a4;
      v18 = WORD2(a4);
      v19 = BYTE6(a4);
      v20 = v5;
      v21 = v7;
      v11 = swift_beginAccess();
      v12 = *(a2 + 24) + v10 + v5;
      __chkstk_darwin(v11);

      sub_1004A5904();
      sub_1003A52D0(&v14);
      sub_100025928(v13, v13[3]);
      sub_1004A6D74();

      return sub_1000197E0(v13);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B4E60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1003B5B28(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 20) = WORD2(v6);
    *(a2 + 22) = BYTE6(v6);
  }

  return result;
}

uint64_t Optional<A>.setOrWriteImmutableBuffer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  v9 = BYTE6(a3);
  v8 = WORD2(a3);
  if (*v3)
  {
    return ByteBuffer.writeBuffer(_:)(v6);
  }

  v5 = (HIDWORD(a2) - a2);
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  *(v3 + 22) = BYTE6(a3);
  *(v3 + 20) = WORD2(a3);

  return v5;
}

uint64_t Optional<A>.setOrWriteBuffer(_:)(uint64_t a1)
{
  if (*v1)
  {

    return ByteBuffer.writeBuffer(_:)(a1);
  }

  else
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 12);
    v5 = (v4 - v3);
    v6 = *(a1 + 16);
    v7 = *(a1 + 20);
    v8 = *(a1 + 22);
    *v1 = *a1;
    *(v1 + 8) = v3 | (v4 << 32);
    *(v1 + 22) = v8;
    *(v1 + 20) = v7;
    *(v1 + 16) = v6;
    *(a1 + 8) = v4;

    return v5;
  }
}

uint64_t sub_1003B4FC4(uint64_t result, int64_t a2, int64_t a3, Swift::UInt32 a4)
{
  v7 = result;
  v8 = a3 - a2;
  if (a3 < a2)
  {
    v8 += *(result + 16);
  }

  v9 = a4 + v8;
  if (__CFADD__(a4, v8))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  v10 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = *(v4 + 16);
    v12 = v9 >= v11;
    v13 = v9 - v11;
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v14, v15 & 1);
  }

  v16 = sub_10019118C(v8, v4, a4);
  result = sub_1003B5550(v16, v8, v7, a2, a3, &v32);
  v17 = v34;
  if ((v34 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  if (HIDWORD(v34))
  {
    goto LABEL_33;
  }

  v29 = v33;
  v30 = v32;
  v18 = v35;
  v19 = v39;
  if (v35 != v34 || v36 != 0xFFFF || v37 != 255 || v34 < v33 == v38)
  {
    v28 = v32 + 32;
    while (1)
    {
      v21 = *(v30 + 16);
      if (v21 <= v18)
      {
        break;
      }

      v22 = (v28 + 2 * v18);
      if (v22[1])
      {
        goto LABEL_34;
      }

      v23 = (v21 + 0x1FFFFFFFFLL) & (v18 + 1);
      if (HIDWORD(v23))
      {
        goto LABEL_27;
      }

      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_28;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (HIDWORD(v20))
      {
        goto LABEL_30;
      }

      v24 = *v22;
      v18 = (v21 - 1) & (v18 + 1);
      ByteBuffer._ensureAvailableCapacity(_:at:)(v19 + 1, a4);
      v25 = *v4;
      v26 = *(v4 + 20);
      v27 = *(v4 + 22);
      result = swift_beginAccess();
      *(*(v25 + 24) + (v27 | (v26 << 8)) + a4 + v19++) = v24;
      if (v23 == v17 && v17 < v29 != v23 >= v29)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v20 = v39;
LABEL_25:

  return v20;
}

void *sub_1003B51F8(uint64_t a1, unint64_t a2, Swift::UInt32 a3)
{
  result = sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8);
  if (result == &type metadata for String.UTF8View)
  {
    goto LABEL_17;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_1004A59E4();
    v8 = result;
    v9 = a3 + result;
    if (!__CFADD__(a3, result))
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = a3 + v8;
  if (__CFADD__(a3, v8))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

LABEL_7:
  v10 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = *(v3 + 16);
    v12 = v9 >= v11;
    v13 = v9 - v11;
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v14, v15 & 1);
  }

  sub_10019118C(v8, v3, a3);
  result = sub_1004A6734();
  if (v16)
  {
    goto LABEL_18;
  }

  return result;
}

void *sub_1003B52E0(int64_t a1, int a2, Swift::UInt32 a3)
{
  v7 = sub_10000C9C0(&qword_1005DBE28, &qword_1004FF988);
  result = sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8);
  if (v7 != result)
  {
    v9 = a3 + a1;
    if (!__CFADD__(a3, a1))
    {
      v10 = *v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v3 + 16);
        v12 = v9 >= v11;
        v13 = v9 - v11;
        if (v12)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v14, v15 & 1);
      }

      result = sub_10019118C(a1, v3, a3);
      if (!a1)
      {
        return a1;
      }

      if (a1 >= 1)
      {
        memset(result, a2, a1);
        return a1;
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B53B4(char a1, Swift::UInt32 a2)
{
  v5 = sub_10000C9C0(&qword_1005D4B60, &qword_1004E49A8);
  result = sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8);
  if (v5 == result)
  {
    goto LABEL_10;
  }

  v7 = a2 + 1;
  if (a2 == -1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = *(v2 + 16);
    v10 = v7 >= v9;
    v11 = v7 - v9;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v12, v13 & 1);
  }

  *sub_10019118C(1uLL, v2, a2) = a1;
  return 1;
}

uint64_t sub_1003B5464(Swift::UInt32 a1)
{
  v3 = sub_10000C9C0(&qword_1005DBE20, &qword_1004FF980);
  result = sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8);
  if (v3 == result)
  {
    __break(1u);
  }

  else
  {
    v5 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = *(v1 + 16);
      v7 = a1 >= v6;
      v8 = a1 - v6;
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v9, v10 & 1);
    }

    sub_10019118C(0, v1, a1);
    return 0;
  }

  return result;
}

unint64_t sub_1003B5500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if ((a1 & 0x100000000000000) != 0)
  {
    v5 = v3 - a1 + a2;
    if ((a2 & 0x100000000000000) != 0)
    {
      return a2 - a1;
    }

    else
    {
      return v5;
    }
  }

  else if ((a2 & 0x100000000000000) != 0)
  {
    v6 = a1 - a2 + v3;
    result = -v6;
    if (__OFSUB__(0, v6))
    {
      __break(1u);
    }
  }

  else
  {
    return a2 - a1;
  }

  return result;
}

_BYTE *sub_1003B5550@<X0>(_BYTE *result@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, int64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v10 = a5 - a4;
  if (a5 < a4)
  {
    v10 += *(a3 + 16);
  }

  if (v10 > a2)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!result)
  {
    if (a4 < 0)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (HIDWORD(a4))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v18 = 0;
    goto LABEL_35;
  }

  if (a5 >= a4)
  {
    if (a5 == a4)
    {
LABEL_22:
      if ((a5 & 0x8000000000000000) == 0)
      {
LABEL_29:
        if (HIDWORD(a5))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_30:
        v21 = a5 | ((a5 >= a4) << 56) | 0xFFFFFF00000000;
        result = sub_1003B5894(v21, v21, a3, a4, a5);
        if ((v22 & 0x8000000000000000) != 0)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (HIDWORD(v22))
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v18 = v6 - v7;
        if (v6 < v7)
        {
          v18 += *(v8 + 2);
        }

        v8 = result;
        v7 = v22;
        v6 = v23;
LABEL_35:

        *a6 = v8;
        *(a6 + 8) = v7;
        *(a6 + 16) = v6;
        *(a6 + 24) = v7;
        *(a6 + 28) = 0x1FFFFFF;
        *(a6 + 32) = v18;
        return result;
      }

      __break(1u);
    }

    v19 = (a3 + 2 * a4 + 33);
    v20 = a4;
    while ((a4 & 0x8000000000000000) == 0)
    {
      if (v20 >= *(a3 + 16))
      {
        goto LABEL_38;
      }

      if (*v19)
      {
        goto LABEL_49;
      }

      ++v20;
      *result++ = *(v19 - 1);
      v19 += 2;
      if (a5 == v20)
      {
        goto LABEL_29;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = *(a3 + 16);
  v12 = v11 == a4;
  v13 = v11 < a4;
  v14 = v11 - a4;
  if (v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v12)
  {
    v15 = (a3 + 2 * a4 + 33);
    while ((a4 & 0x8000000000000000) == 0)
    {
      if (*v15)
      {
        goto LABEL_48;
      }

      *result++ = *(v15 - 1);
      v15 += 2;
      if (!--v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_12:
  if (a5 < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!a5)
  {
    goto LABEL_30;
  }

  v16 = (a3 + 33);
  v17 = a5;
  while ((*v16 & 1) == 0)
  {
    *result++ = *(v16 - 1);
    v16 += 2;
    if (!--v17)
    {
      goto LABEL_22;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1003B571C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, Swift::UInt32 a6)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v12 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v12 = sub_1004A67E4();
  }

  return sub_1003B593C(v12, a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1003B580C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v9(a3 + *(TupleTypeMetadata2 + 48), a1, a2);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1003B5894(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(a4))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = *(a3 + 16);
  if ((result & 0x100000000000000) != 0)
  {
    v6 = 0;
  }

  if ((result - a4 + v6) < 0)
  {
    goto LABEL_14;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(a5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = 0x1FFFFFF00000000;
  if (a5 < a4)
  {
    v7 = 0xFFFFFF00000000;
  }

  result = sub_1003B5500(a2 & 0x1FFFFFFFFFFFFFFLL, v7 | a5, a3);
  if ((result & 0x8000000000000000) == 0)
  {
    return a3;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1003B593C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, Swift::UInt32 a7)
{
  v9 = result;
  v10 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v12 = a2 & 0xC;
  v13 = a2;
  if (v12 == v11)
  {
    v27 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_10010C210(a2, a4, a5);
    a2 = v27;
    a3 = v15;
    a5 = v16;
    v13 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v14 = v13 >> 16;
      if (v12 != v11)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v28 = a2;
  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v13 >> 16)
  {
    goto LABEL_34;
  }

  v18 = a3;
  v19 = a5;
  result = sub_1004A5A14();
  a5 = v19;
  v14 = result;
  a3 = v18;
  a2 = v28;
  if (v12 == v11)
  {
LABEL_14:
    v20 = a3;
    v21 = a5;
    result = sub_10010C210(a2, a4, a5);
    a3 = v20;
    a5 = v21;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v11)
  {
    v22 = a2;
    v23 = a5;
    result = sub_10010C210(a3, a4, a5);
    a2 = v22;
    a5 = v23;
    a3 = result;
    if ((v23 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v24 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v24 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v24 < a2 >> 16)
  {
    goto LABEL_32;
  }

  if (v24 < a3 >> 16)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  result = sub_1004A5A14();
LABEL_21:
  if (__OFADD__(v14, result))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v14 + result < v14)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v9)
  {
    v25 = v9 + v14 + result;
  }

  else
  {
    v25 = 0;
  }

  if (v9)
  {
    v26 = (v9 + v14);
  }

  else
  {
    v26 = 0;
  }

  ByteBuffer._setBytes(_:at:)(v26, v25, a7);
  return result;
}

uint64_t sub_1003B5B28(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_10002587C(a1, a1[3]);
  sub_1004A6F74();
  if (!v1)
  {
    sub_10002587C(v9, v9[3]);
    v5 = sub_1004A6D54();
    v8 = static Base64.decode(string:options:)(v5, v6, 0);

    v4 = sub_1003F5A98(v8, j__malloc, j__realloc, sub_100127C74, sub_100127C84);

    sub_1000197E0(v9);
  }

  sub_1000197E0(a1);
  return v4;
}

int64_t ByteBuffer.rangeWithinReadableBytes(index:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 - a4;
  if ((HIDWORD(a4) - a4) - a2 < v4)
  {
    v4 = 0;
  }

  if (a2 < 0)
  {
    v4 = 0;
  }

  if (a1 >= a4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ByteBuffer.withUnsafeReadableBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5));
  return a1(v9 + a4, v9 + HIDWORD(a4));
}

Swift::Void __swiftcall ByteBuffer._moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v4;
  }
}

Swift::Void __swiftcall ByteBuffer._moveWriterIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 12);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v4;
  }
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else if (*(v1 + 12) >= v4)
  {
    *(v1 + 8) = v4;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall ByteBuffer.reserveCapacity(_:)(Swift::Int a1)
{
  if (*(v1 + 4) - (*(v1 + 22) | (*(v1 + 10) << 8)) < a1)
  {
    v2 = a1;
    v3 = *v1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      ByteBuffer._ensureAvailableCapacity(_:at:)(v2, 0);
    }

    else
    {
      v4 = variable initialization expression of Engine.isProcessingUpdates() & 1;

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v2, v4);
    }
  }
}

uint64_t ByteBuffer.withVeryUnsafeMutableBytes<A>(_:)(uint64_t (*a1)(void, void))
{
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v3 = *v1;
  v4 = *(v1 + 4);
  v5 = *(v1 + 10);
  v6 = *(v1 + 22);
  swift_beginAccess();
  return a1(*(v3 + 24) + (v6 | (v5 << 8)), *(v3 + 24) + (v6 | (v5 << 8)) + v4 - (v6 | (v5 << 8)));
}

uint64_t ByteBuffer.withUnsafeMutableReadableBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *v1;
  v6 = *(v1 + 10);
  v7 = *(v1 + 22);
  swift_beginAccess();
  v8 = *(v5 + 24) + (v7 | (v6 << 8));
  return a1(v8 + v3, v8 + v4);
}

uint64_t ByteBuffer.getSlice(at:length:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && (a2 & 0x8000000000000000) == 0 && a4 <= a1)
  {
    result = 0;
    if (HIDWORD(a4) >= a2 && (HIDWORD(a4) - a2) >= a1)
    {
      v7 = (a5 >> 24) & 0xFFFF00 | BYTE6(a5);
      v8 = __CFADD__(v7, a1);
      v9 = v7 + a1;
      if (v8)
      {
        __break(1u);
      }

      else if (HIBYTE(v9))
      {
        return ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(a1, a2, a3);
      }

      else
      {

        return a3;
      }
    }
  }

  return result;
}

uint64_t *ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor()
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  return &static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
}

uint64_t ByteBufferAllocator.buffer(capacity:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!a1)
  {
    if (qword_1005DB9D0 == -1)
    {
LABEL_5:
      v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;

      return v5;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  v5 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a1, a2, a3, a4, a5);
  swift_beginAccess();
  v6 = *(v5 + 16);
  return v5;
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(to:)(Swift::Int to)
{
  if (*(v1 + 12) < to)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = to;
  }
}

BOOL sub_1003B62BC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 4) == *(a2 + 4) && *(a1 + 6) == *(a2 + 6);
}

uint64_t _ByteBufferSlice._begin.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 6) = BYTE2(result);
  return result;
}

unint64_t _ByteBufferSlice.description.getter()
{
  sub_1004A6724(28);

  v1._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v1);

  v2._countAndFlagsBits = 3943982;
  v2._object = 0xE300000000000000;
  sub_1004A5994(v2);
  v3._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v3);

  v4._countAndFlagsBits = 32032;
  v4._object = 0xE200000000000000;
  sub_1004A5994(v4);
  return 0xD000000000000013;
}

unint64_t sub_1003B6468()
{
  v1 = *(v0 + 6);
  v2 = *v0 | (*(v0 + 2) << 32);
  return _ByteBufferSlice.description.getter();
}

uint64_t ByteBuffer.init(allocator:startingCapacity:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a5, a1, a2, a3, a4);
  swift_beginAccess();
  v6 = *(v5 + 16);
  return v5;
}

uint64_t sub_1003B64E8()
{
  result = malloc(0);
  if (result)
  {
    v1 = result;
    type metadata accessor for ByteBuffer._Storage();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v1;
    *(result + 32) = j__malloc;
    *(result + 40) = j__realloc;
    *(result + 48) = sub_100127C74;
    *(result + 56) = sub_100127C84;
    static ByteBufferAllocator.zeroCapacityWithDefaultAllocator = result;
    qword_1005DE390 = 0;
    *(&qword_1005DE390 + 7) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ByteBufferAllocator.zeroCapacityWithDefaultAllocator.getter()
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }
}

uint64_t ByteBuffer._slice.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = WORD2(result);
  *(v1 + 22) = BYTE6(result);
  return result;
}

uint64_t ByteBuffer._Storage.capacity.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t ByteBuffer._Storage.bytes.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t ByteBuffer._Storage.allocator.getter()
{
  result = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  return result;
}

uint64_t ByteBuffer._Storage.__allocating_init(bytesNoCopy:capacity:allocator:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  return result;
}

uint64_t ByteBuffer._Storage.init(bytesNoCopy:capacity:allocator:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t ByteBuffer._Storage.deinit()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v1(*(v0 + 24));
  return v0;
}

uint64_t ByteBuffer._Storage.__deallocating_deinit()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v1(*(v0 + 24));
  return swift_deallocClassInstance();
}

uint64_t static ByteBuffer._Storage._allocateAndPrepareRawMemory(bytes:allocator:)(unsigned int a1, uint64_t (*a2)(void))
{
  result = a2(a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer._Storage.allocateStorage(capacity:)(int a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
    v5 = v4 | HIWORD(v4);
    v6 = __CFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v1[4];
  result = v9(v8);
  if (result)
  {
    v11 = result;
    v12 = v1[7];
    result = swift_allocObject();
    *(result + 16) = v8;
    *(result + 24) = v11;
    *(result + 32) = v9;
    *(result + 40) = *(v1 + 5);
    *(result + 56) = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer._Storage.reallocSlice(_:capacity:)(unint64_t a1, int a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = ByteBuffer._Storage.allocateStorage(capacity:)(a2);
  v6 = *(v2 + 56);
  swift_beginAccess();
  v7 = *(v5 + 24);
  swift_beginAccess();
  if (v4 < v3)
  {
    v8 = -(v3 - v4);
  }

  else
  {
    v8 = v4 - v3;
  }

  v6(v7, *(v2 + 24) + v3, v8);
  return v5;
}

Swift::Void __swiftcall ByteBuffer._Storage.reallocStorage(capacity:)(Swift::UInt32 capacity)
{
  if (capacity)
  {
    v2 = (capacity - 1) | ((capacity - 1) >> 1) | (((capacity - 1) | ((capacity - 1) >> 1)) >> 2);
    v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
    v4 = v3 | HIWORD(v3);
    v5 = __CFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v1 + 40);
  swift_beginAccess();
  v9 = v8(*(v1 + 24), v7);
  if (v9)
  {
    *(v1 + 24) = v9;
    swift_beginAccess();
    *(v1 + 16) = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003B6B2C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  result = swift_beginAccess();
  v9 = (a1 >> 24) & 0xFFFF00 | BYTE6(a1);
  v10 = v9 + a2;
  if (__OFADD__(v9, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10 + a3;
  if (__OFADD__(v10, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11 < v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 == v11)
  {
LABEL_15:
    v23._countAndFlagsBits = 23840;
    v23._object = 0xE200000000000000;
    sub_1004A5994(v23);
    return 91;
  }

  if (v10 < v11)
  {
    v12 = *(v3 + 16);
    while (v10 < v12)
    {
      v13 = *(v7 + v10++);
      sub_10014F900();
      v14 = sub_1004A5A84();
      v16 = v15;
      v17 = sub_1004A5924();
      v18 = v17 == 1;
      if (v17 == 1)
      {
        v19._countAndFlagsBits = 48;
      }

      else
      {
        v19._countAndFlagsBits = 0;
      }

      if (v18)
      {
        v20 = 0xE100000000000000;
      }

      else
      {
        v20 = 0xE000000000000000;
      }

      v19._object = v20;
      sub_1004A5994(v19);

      v21._countAndFlagsBits = v14;
      v21._object = v16;
      sub_1004A5994(v21);

      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      sub_1004A5994(v22);

      if (!--a3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(Swift::UInt32 capacity, Swift::Bool resetIndices)
{
  v3 = v2;
  if (resetIndices)
  {
    v4 = *(v2 + 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 22) | (*(v2 + 10) << 8);
  v6 = v5 + v4;
  if (__CFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6 + capacity;
  if (__CFADD__(v6, capacity))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= *(v2 + 4))
  {
    v7 = *(v2 + 4);
  }

  v8 = v7 - v6;
  if (v7 < v6)
  {
    goto LABEL_16;
  }

  v9 = *v2;
  v10 = ByteBuffer._Storage.allocateStorage(capacity:)(capacity);
  v11 = *(v9 + 56);
  swift_beginAccess();
  v12 = *(v10 + 24);
  swift_beginAccess();
  v11(v12, *(v9 + 24) + v6, v8);

  *v3 = v10;
  v13 = *(v3 + 2);
  v14 = v13 >= v4;
  v15 = v13 - v4;
  if (!v14)
  {
    goto LABEL_17;
  }

  *(v3 + 2) = v15;
  v16 = *(v3 + 3);
  v14 = v16 >= v4;
  v17 = v16 - v4;
  if (v14)
  {
    *(v3 + 3) = v17;
    swift_beginAccess();
    *(v3 + 4) = *(v10 + 16);
    *(v3 + 10) = 0;
    *(v3 + 22) = 0;
    return;
  }

LABEL_18:
  __break(1u);
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(Swift::UInt32 extraCapacity, Swift::Bool resetIndices)
{
  v3 = *(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8));
  v4 = __CFADD__(v3, extraCapacity);
  v5 = v3 + extraCapacity;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v5, resetIndices);
  }
}

Swift::Void __swiftcall ByteBuffer._ensureAvailableCapacity(_:at:)(Swift::UInt32 _, Swift::UInt32 at)
{
  v3 = *(v2 + 10);
  v4 = *(v2 + 22);
  v5 = v4 | (v3 << 8);
  v6 = v5 + at;
  if (__CFADD__(v5, at))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6 + _;
  if (__CFADD__(v6, _))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v2 + 4);
  if (v8 >= v7)
  {
    return;
  }

  v11 = *v2;
  v12 = swift_beginAccess();
  v13 = *(v11 + 16);
  if (v13 < v7)
  {
    v12 = at + _;
    if (!__CFADD__(at, _))
    {
      if (v5)
      {
        v14 = v8 - v5;
        if (v8 >= v5)
        {
          v15 = v2;
          v16 = ByteBuffer._Storage.allocateStorage(capacity:)(v12);
          v17 = *(v11 + 56);
          swift_beginAccess();
          v18 = *(v16 + 24);
          swift_beginAccess();
          v17(v18, *(v11 + 24) + v5, v14);

          v2 = v15;
          *v15 = v16;
          v11 = v16;
LABEL_12:
          swift_beginAccess();
          LOWORD(v3) = 0;
          LOBYTE(v4) = 0;
          v13 = *(v11 + 16);
          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        return;
      }

LABEL_11:
      ByteBuffer._Storage.reallocStorage(capacity:)(v12);
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13 < v5)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_13:
  *(v2 + 4) = v13;
  *(v2 + 10) = v3;
  *(v2 + 22) = v4;
}

void ByteBuffer._setBytes(_:at:)(const void *a1, uint64_t a2, Swift::UInt32 a3)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = a3 + v4;
  if (__CFADD__(a3, v4))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = *(v3 + 4);
    v11 = v5 >= v10;
    v12 = v5 - v10;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v13, v14 & 1);
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if (!HIDWORD(v4))
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(v4, a3);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(a1, a2, a3);
    return;
  }

LABEL_15:
  __break(1u);
}

char *ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(const void *a1, uint64_t a2, unsigned int a3)
{
  v7 = *v3;
  v8 = *(v3 + 4);
  v9 = *(v3 + 10);
  v10 = *(v3 + 22);
  swift_beginAccess();
  result = sub_1003B7140(a3, *(v7 + 24) + (v10 | (v9 << 8)), *(v7 + 24) + (v10 | (v9 << 8)) + v8 - (v10 | (v9 << 8)));
  if (v12)
  {
    v13 = a1 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    return memmove(&result[v12], a1, a2 - a1);
  }

  return result;
}

unint64_t sub_1003B7140(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = a3 - a2;
  if (a2)
  {
    v6 = a3 - a2;
  }

  else
  {
    v6 = 0;
  }

  result = sub_1002881FC(0, v6, a2, a3);
  if (!v4)
  {
    if (!a2)
    {
      return 0;
    }

LABEL_12:
    if (v5 >= v4)
    {
      return v4;
    }

    goto LABEL_15;
  }

  if (result < v4)
  {
    v4 = v5;
    if (a2)
    {
      return v4;
    }

    return 0;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t ByteBuffer._setSlowPath<A>(bytes:at:)(uint64_t *a1, Swift::UInt32 a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v33 = &v31 - v10;
  if (sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8) == a3)
  {
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[2];

    return sub_1003B4FC4(v22, v23, v24, a2);
  }

  result = sub_1004A5AE4();
  v12 = result;
  v13 = a2 + result;
  if (__CFADD__(a2, result))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v14 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = *(v4 + 16);
    v16 = v13 >= v15;
    v17 = v13 - v15;
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v18, v19 & 1);
  }

  v32 = v8;
  sub_10019118C(v12, v4, a2);
  v20 = sub_1004A6384();
  swift_getAssociatedConformanceWitness();
  result = sub_1004A6414();
  if (v36 != 1)
  {
    v25 = a2;
    v26 = a2;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (HIDWORD(v21))
      {
        goto LABEL_21;
      }

      v27 = v35;
      ByteBuffer._ensureAvailableCapacity(_:at:)(v20 + 1, v25);
      v28 = *v4;
      v29 = *(v4 + 20);
      v30 = *(v4 + 22);
      swift_beginAccess();
      *(*(v28 + 24) + (v30 | (v29 << 8)) + v26 + v20) = v27;
      result = sub_1004A6414();
      ++v20;
      if (v36 == 1)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
LABEL_18:
  (*(v32 + 8))(v33, AssociatedTypeWitness);
  return v21;
}

uint64_t ByteBuffer._setBytes<A>(_:at:)(uint64_t *a1, Swift::UInt32 a2, uint64_t a3)
{
  sub_1004A5AF4();
  if (v8)
  {
    return ByteBuffer._setSlowPath<A>(bytes:at:)(a1, a2, a3);
  }

  else
  {
    return v7;
  }
}

Swift::Void __swiftcall ByteBuffer.reserveCapacity(minimumWritableBytes:)(Swift::Int minimumWritableBytes)
{
  v2 = *(v1 + 3);
  v3 = v2 + minimumWritableBytes;
  if (__OFADD__(v2, minimumWritableBytes))
  {
    __break(1u);
  }

  else if (v3 > *(v1 + 4) - (*(v1 + 22) | (*(v1 + 10) << 8)))
  {
    v4 = *v1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      ByteBuffer._ensureAvailableCapacity(_:at:)(v3, 0);
    }

    else
    {
      v5 = variable initialization expression of Engine.isProcessingUpdates() & 1;

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v3, v5);
    }
  }
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebaseIfNeeded()()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = variable initialization expression of Engine.isProcessingUpdates();
    v3 = variable initialization expression of Engine.isProcessingUpdates() & 1;

    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v2, v3);
  }
}

uint64_t ByteBuffer.withUnsafeMutableWritableBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v3 = *v1;
  v4 = *(v1 + 4);
  v5 = *(v1 + 10);
  v6 = *(v1 + 22);
  swift_beginAccess();
  v7 = sub_1003B7140(*(v1 + 3), *(v3 + 24) + (v6 | (v5 << 8)), *(v3 + 24) + (v6 | (v5 << 8)) + v4 - (v6 | (v5 << 8)));
  if (v9)
  {
    v10 = v9 + v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9 + v7;
  }

  else
  {
    v11 = 0;
  }

  return a1(v11, v10);
}

uint64_t ByteBuffer.writeWithUnsafeMutableBytes(minimumWritableBytes:_:)(Swift::Int a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  if (a1 >= 1)
  {
    ByteBuffer.reserveCapacity(minimumWritableBytes:)(a1);
  }

  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v6 = *v2;
  v7 = *(v4 + 4);
  v8 = *(v4 + 10);
  v9 = *(v4 + 22);
  swift_beginAccess();
  v10 = v9 | (v8 << 8);
  v11 = (v7 - v10);
  v12 = *(v4 + 3);
  v13 = sub_1003B7140(v12, *(v6 + 24) + v10, *(v6 + 24) + v10 + v11);
  if (v15)
  {
    v16 = v15 + v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15 + v13;
  }

  else
  {
    v17 = 0;
  }

  result = a2(v17, v16);
  if (!v3)
  {
    if (__CFADD__(v12, result))
    {
      __break(1u);
    }

    else
    {
      *(v4 + 3) = v12 + result;
    }
  }

  return result;
}

uint64_t ByteBuffer.writeWithUnsafeMutableBytes(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1;
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v5 = *v1;
  v6 = *(v3 + 4);
  v7 = *(v3 + 10);
  v8 = *(v3 + 22);
  swift_beginAccess();
  v9 = v8 | (v7 << 8);
  v10 = (v6 - v9);
  v11 = *(v3 + 3);
  v12 = sub_1003B7140(v11, *(v5 + 24) + v9, *(v5 + 24) + v9 + v10);
  if (v14)
  {
    v15 = v14 + v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14 + v12;
  }

  else
  {
    v16 = 0;
  }

  result = a1(v16, v15);
  if (!v2)
  {
    if (__CFADD__(v11, result))
    {
      __break(1u);
    }

    else
    {
      *(v3 + 3) = v11 + result;
    }
  }

  return result;
}

uint64_t ByteBuffer.withVeryUnsafeBytes<A>(_:)(uint64_t (*a1)(unint64_t, unint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v8 = (a5 >> 24) & 0xFFFF00 | BYTE6(a5);
  return a1(*(a3 + 24) + v8, *(a3 + 24) + v8 + (a5 - v8));
}

uint64_t ByteBuffer.withUnsafeReadableBytesWithStorageManagement<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5));
  return a1(v9 + a4, v9 + HIDWORD(a4), a3);
}

uint64_t ByteBuffer.withVeryUnsafeBytesWithStorageManagement<A>(_:)(uint64_t (*a1)(unint64_t, unint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v8 = (a5 >> 24) & 0xFFFF00 | BYTE6(a5);
  return a1(*(a3 + 24) + v8, *(a3 + 24) + v8 + (a5 - v8), a3);
}

uint64_t ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(uint64_t result, Swift::UInt32 a2, uint64_t a3)
{
  if (__CFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {

    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(a2, 1);
    return a3;
  }

  return result;
}

Swift::Bool __swiftcall ByteBuffer.discardReadBytes()()
{
  v1 = *(v0 + 2);
  if (!v1)
  {
    return v1 != 0;
  }

  v2 = *(v0 + 3);
  if (v1 == v2)
  {
    v0[1] = 0;
    return v1 != 0;
  }

  v3 = *v0;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(0, 1);
    return v1 != 0;
  }

  v4 = *v0;
  result = swift_beginAccess();
  v6 = *(v0 + 22) | (*(v0 + 10) << 8);
  if (__CFADD__(v6, v1))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v4 + 24);
    v8 = v2 >= v1;
    v9 = v2 - v1;
    v10 = !v8;
    result = memmove((v7 + v6), (v7 + v6 + v1), v9);
    *(v0 + 2) = 0;
    if ((v10 & 1) == 0)
    {
      *(v0 + 3) = v9;
      return v1 != 0;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ByteBuffer.clear()()
{
  v1 = v0;
  v2 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    v5 = ByteBuffer._Storage.allocateStorage(capacity:)(*(v4 + 16));

    *v1 = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v1 + 4) = *(v4 + 16);
  *(v1 + 10) = 0;
  *(v1 + 22) = 0;
  v1[1] = 0;
}

Swift::Void __swiftcall ByteBuffer.clear(minimumCapacity:)(Swift::UInt32 minimumCapacity)
{
  v2 = v1;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    if (*(v6 + 16) < minimumCapacity)
    {
      ByteBuffer._Storage.reallocStorage(capacity:)(minimumCapacity);
    }
  }

  else
  {
    v7 = ByteBuffer._Storage.allocateStorage(capacity:)(minimumCapacity);

    *v2 = v7;
    v6 = v7;
  }

  swift_beginAccess();
  *(v2 + 4) = *(v6 + 16);
  *(v2 + 10) = 0;
  *(v2 + 22) = 0;
  v2[1] = 0;
}

Swift::Void __swiftcall ByteBuffer.clear(minimumCapacity:)(Swift::Int minimumCapacity)
{
  if (HIDWORD(minimumCapacity))
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = minimumCapacity;
    v4 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      swift_beginAccess();
      if (*(v6 + 16) < v3)
      {
        ByteBuffer._Storage.reallocStorage(capacity:)(v3);
      }
    }

    else
    {
      v7 = ByteBuffer._Storage.allocateStorage(capacity:)(v3);

      *v2 = v7;
      v6 = v7;
    }

    swift_beginAccess();
    *(v2 + 4) = *(v6 + 16);
    *(v2 + 10) = 0;
    *(v2 + 22) = 0;
    v2[1] = 0;
  }
}

uint64_t ByteBuffer.description.getter(uint64_t a1)
{
  sub_1004A6724(136);
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  v5._object = 0x80000001004B0530;
  sub_1004A5994(v5);
  v6._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v6);

  v7._countAndFlagsBits = 0x726574697277202CLL;
  v7._object = 0xEF203A7865646E49;
  sub_1004A5994(v7);
  v8._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v8);

  v9._object = 0x80000001004B0550;
  v9._countAndFlagsBits = 0xD000000000000011;
  sub_1004A5994(v9);
  v10._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v10);

  v11._countAndFlagsBits = 0x696361706163202CLL;
  v11._object = 0xEC000000203A7974;
  sub_1004A5994(v11);
  v12._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v12);

  v13._countAndFlagsBits = 0xD000000000000013;
  v13._object = 0x80000001004B0570;
  sub_1004A5994(v13);
  swift_beginAccess();
  v4 = *(a1 + 16);
  v14._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v14);

  v15._countAndFlagsBits = 0x3A6563696C73202CLL;
  v15._object = 0xE900000000000020;
  sub_1004A5994(v15);
  v16._countAndFlagsBits = _ByteBufferSlice.description.getter();
  sub_1004A5994(v16);

  v17._countAndFlagsBits = 0x6761726F7473202CLL;
  v17._object = 0xEB00000000203A65;
  sub_1004A5994(v17);
  swift_beginAccess();
  v3 = *(a1 + 24);
  sub_1004A6934();
  v18._countAndFlagsBits = 10272;
  v18._object = 0xE200000000000000;
  sub_1004A5994(v18);
  LODWORD(v3) = *(a1 + 16);
  v19._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v19);

  v20._countAndFlagsBits = 0x2029736574796220;
  v20._object = 0xE90000000000007DLL;
  sub_1004A5994(v20);
  return 0;
}

uint64_t ByteBuffer.debugDescription.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  sub_1004A6724(30);
  v7 = ByteBuffer.description.getter(a1);

  v10._object = 0x80000001004B0590;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1004A5994(v10);
  if (v6 - v4 >= 0x400uLL)
  {
    v8 = 1024;
  }

  else
  {
    v8 = v6 - v4;
  }

  v11._countAndFlagsBits = sub_1003B6B2C(a3 & 0xFFFFFFFFFFFFFFLL, v4, v8);
  sub_1004A5994(v11);

  return v7;
}

Swift::Void __swiftcall ByteBuffer.moveWriterIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 12);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else if (*(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)) >= v4)
  {
    *(v1 + 12) = v4;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall ByteBuffer.moveWriterIndex(to:)(Swift::Int to)
{
  if (*(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)) < to)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = to;
  }
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ByteBuffer.copyBytes(at:to:length:)(Swift::Int at, Swift::Int to, Swift::Int length)
{
  if (length < 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v4 = length;
  if (!length)
  {
    return v4;
  }

  if (*(v3 + 2) > at)
  {
LABEL_6:
    v6 = 1;
LABEL_8:
    sub_1003B87E8();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    return v4;
  }

  if (__OFADD__(at, length))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(v3 + 3);
  if (at + length > v5)
  {
    goto LABEL_6;
  }

  v9 = at;
  v10 = *v3;
  at = swift_isUniquelyReferenced_nonNull_native();
  if (at)
  {
LABEL_15:
    if (!HIDWORD(v4))
    {
      v12 = to;
      ByteBuffer._ensureAvailableCapacity(_:at:)(v4, to);
      ByteBuffer._copyStorageAndRebaseIfNeeded()();
      v13 = *v3;
      v14 = *(v3 + 4);
      v15 = *(v3 + 10);
      v16 = *(v3 + 22);
      swift_beginAccess();
      v17 = v16 | (v15 << 8);
      v18 = *(v13 + 24) + v17;
      v19 = sub_1003B7140(v12, v18, v18 + (v14 - v17));
      if (v20)
      {
        memmove((v20 + v19), (v18 + v9), v4);
      }

      return v4;
    }

    goto LABEL_19;
  }

  if (!__OFADD__(to, v4))
  {
    if (v5 <= to + v4)
    {
      LODWORD(v5) = to + v4;
    }

    v11 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v5, v11 & 1);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return at;
}

uint64_t QuotaRoot.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  v6 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
  return sub_1004A6EA4();
}

Swift::Int QuotaRoot.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  swift_beginAccess();
  v5 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
  sub_1004A6EA4();
  return sub_1004A6F14();
}

Swift::Int sub_1003B8664()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 10);
  v5 = *(v0 + 22);
  sub_1004A6E94();
  swift_beginAccess();
  v6 = *(v1 + 24) + (v5 | (v4 << 8));
  sub_1004A6EA4();
  return sub_1004A6F14();
}

uint64_t ByteBuffer.modifyIfUniquelyOwned<A>(_:)@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    result = a1(v3);
    if (v4)
    {
      return result;
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(*(a2 - 8) + 56))(a3, v10, 1, a2);
}

void sub_1003B8798(const void *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (a1)
  {
    v7 = a1 + a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 16);
  ByteBuffer._setBytes(_:at:)(a1, v7, v6);
  *a3 = v9;
}

unint64_t sub_1003B87E8()
{
  result = qword_1005DBE30;
  if (!qword_1005DBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBE30);
  }

  return result;
}

unint64_t sub_1003B8840()
{
  result = qword_1005DBE38;
  if (!qword_1005DBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBE38);
  }

  return result;
}

unint64_t sub_1003B8898()
{
  result = qword_1005DBE40;
  if (!qword_1005DBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBE40);
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for _ByteBufferSlice(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _ByteBufferSlice(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 7))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ByteBufferSlice(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 6) = 0;
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

  *(result + 7) = v3;
  return result;
}

__n128 sub_1003B8970(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1003B8984(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 23))
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

uint64_t sub_1003B89CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 23) = 1;
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

    *(result + 23) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003B8A6C()
{
  result = qword_1005DBEF8;
  if (!qword_1005DBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBEF8);
  }

  return result;
}

uint64_t ByteBuffer.setInteger<A>(_:at:endianness:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v12 = sub_1004A6974();
  }

  else
  {
    v12 = sub_1004A6994();
  }

  __chkstk_darwin(v12);
  v16 = a2;
  v15 = 803;
  sub_1003B93AC(v10, sub_1003B9364, &v17[-4], a5, &type metadata for Never, &type metadata for Int, &protocol witness table for Never, v13);
  (*(v7 + 8))(v10, a5);
  return v17[2];
}

uint64_t ByteBuffer.writeInteger<A>(_:endianness:as:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = ByteBuffer.setInteger<A>(_:at:endianness:as:)(a1, *(v4 + 12), a2 & 1, a4, a4);
  v6 = *(v4 + 12);
  v7 = __CFADD__(v6, result);
  v8 = v6 + result;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 12) = v8;
  }

  return result;
}

Swift::UInt32 __swiftcall UInt32.nextPowerOf2ClampedToMax()()
{
  if (!v0)
  {
    return 1;
  }

  v1 = (v0 - 1) | ((v0 - 1) >> 1) | (((v0 - 1) | ((v0 - 1) >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  v3 = v2 | HIWORD(v2);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

uint64_t ByteBuffer._toEndianness<A>(value:endianness:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_1004A6974();
  }

  else
  {
    return sub_1004A6994();
  }
}

uint64_t ByteBuffer.readInteger<A>(endianness:as:)@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v5 = sub_1004A6374();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *v2;
  v11 = *(v2 + 2);
  ByteBuffer.getInteger<A>(at:endianness:as:)(v11, v11 | (*(v2 + 3) << 32), *(v2 + 4) | (*(v2 + 10) << 32) | (*(v2 + 22) << 48), a1, &v18 - v8);
  v12 = *(a1 - 1);
  if ((*(v12 + 48))(v9, 1, a1) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v13 = 1;
    return (*(v12 + 56))(a2, v13, 1, a1);
  }

  result = (*(v12 + 32))(a2, v9, a1);
  v15 = *(v12 + 64);
  v16 = __CFADD__(v11, v15);
  v17 = v11 + v15;
  if (!v16)
  {
    v13 = 0;
    *(v2 + 2) = v17;
    return (*(v12 + 56))(a2, v13, 1, a1);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.getInteger<A>(at:endianness:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, unint64_t a3@<X5>, void *a4@<X6>, uint64_t a5@<X8>)
{
  v7 = *(a4 - 1);
  v8 = *(v7 + 64);
  if (a1 < a2 || v8 < 0 || (HIDWORD(a2) - a2) - v8 < a1 - a2)
  {
    v9 = *(v7 + 56);

    return v9(a5, 1, 1, a4);
  }

  else
  {
    v40 = v5;
    v41 = v6;
    if (a4 == &type metadata for UInt8)
    {
      v39 = v7;
      __chkstk_darwin(a1);
      v35 = &type metadata for UInt8;
      v36 = v25;
      v37 = v26;
      v38 = v27;
      v30 = v29;
      ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1003B94E8, v34, v31, v32, v28 & 0xFFFFFFFFFFFFFFLL);
      return (*(v39 + 56))(v30, 0, 1, &type metadata for UInt8);
    }

    else
    {
      __chkstk_darwin(HIDWORD(a3));
      v33[2] = v11;
      v33[3] = v12;
      v34[0] = v13;
      v34[1] = v14;
      v35 = v15;
      v36 = __PAIR64__(v17, v16);
      LODWORD(v37) = v18;
      WORD2(v37) = v19;
      BYTE6(v37) = v20;
      HIBYTE(v37) = v21 & 1;
      v22 = v16;
      v23 = v15;
      v24 = v18;
      sub_1004A6374();
      return ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1003B94A0, v33, v23, v22, v24 & 0xFFFFFFFFFFFFFFLL);
    }
  }
}

uint64_t sub_1003B90D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v22 = a4;
  v23 = a5;
  v20 = a2;
  v21 = a3;
  v24 = a6;
  v9 = *(*(*(a8 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  sub_1004A6DE4();
  sub_1004A6D04();
  v26 = a1;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  sub_1003B93AC(v16, sub_1003B9FA4, v25, a7, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never, v17);
  v18 = v24;
  if (v23)
  {
    sub_1004A6974();
  }

  else
  {
    sub_1004A6994();
  }

  (*(v12 + 8))(v16, a7);
  return (*(v12 + 56))(v18, 0, 1, a7);
}

void sub_1003B9364(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 24);
  v6 = *(v3 + 16);
  ByteBuffer._setBytes(_:at:)(a1, a2, v5);
  *a3 = v7;
}

uint64_t sub_1003B93AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_1003B94A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64) | (*(v3 + 68) << 32) | (*(v3 + 70) << 48);
  return sub_1003B90D0(a1, a2, *(v3 + 32), *(v3 + 40), *(v3 + 71), a3, *(v3 + 16), *(v3 + 24));
}

uint64_t sub_1003B94E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + *(v1 + 32));
  return swift_dynamicCast();
}

uint64_t FixedWidthInteger.nextPowerOf2()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 8);
  v44 = v7[3];
  v45 = a2;
  v8 = *(v44 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  v41 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v42 = &v38 - v18;
  __chkstk_darwin(v19);
  v21 = &v38 - v20;
  v22 = sub_1004A64B4();
  v46 = a3;
  if ((v22 & 1) == 0)
  {
    v23 = v13;
    v24 = sub_1004A64B4();
    v25 = sub_1004A64A4();
    if (v24)
    {
      if (v25 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        sub_1004A6DE4();
        sub_1004A6D04();
        v26 = *(v7[4] + 8);
        v27 = sub_1004A5644();
        v13 = v23;
        (*(v23 + 8))(v21, a1);
        if ((v27 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }
    }

    else if (v25 < 64)
    {
      v13 = v23;
      if (!sub_1004A6494())
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    v47 = 0;
    sub_1001C08B0();
    sub_1004A6474();
    v36 = *(v7[2] + 8);
    v37 = sub_1004A5724();
    v13 = v23;
    (*(v23 + 8))(v21, a1);
    if ((v37 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    swift_getAssociatedConformanceWitness();
    sub_1004A6DE4();
    return sub_1004A6D04();
  }

  if (sub_1004A64A4() >= 64)
  {
    v47 = 0;
    sub_1001C08B0();
    sub_1004A6474();
    v28 = *(v7[2] + 8);
    v29 = sub_1004A5724();
    (*(v13 + 8))(v21, a1);
    if ((v29 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_3:
  if (!sub_1004A6494())
  {
    goto LABEL_16;
  }

LABEL_10:
  v38 = v7;
  swift_getAssociatedConformanceWitness();
  v40 = v4;
  sub_1004A6DE4();
  sub_1004A6D04();
  v39 = sub_1004A6964();
  sub_1004A6DE4();
  v30 = v41;
  sub_1004A6D04();
  v31 = *(v44 + 8);
  v32 = v42;
  sub_1004A69C4();
  v33 = *(v13 + 8);
  v33(v30, a1);
  v34 = sub_1004A6984();
  result = (v33)(v32, a1);
  if (__OFSUB__(v39, v34))
  {
    __break(1u);
  }

  else
  {
    v47 = v39 - v34;
    sub_1001C08B0();
    sub_1004A6484();
    return (v33)(v21, a1);
  }

  return result;
}

uint64_t FixedWidthInteger.previousPowerOf2()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a2;
  v21[2] = a3;
  v4 = *(a2 + 8);
  v5 = *(v4[3] + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1004A64B4())
  {
    if (sub_1004A64A4() >= 64)
    {
LABEL_13:
      v22 = 0;
      sub_1001C08B0();
      sub_1004A6474();
      v19 = *(v4[2] + 8);
      v20 = sub_1004A5724();
      (*(v8 + 8))(v12, a1);
      if (v20)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v13 = sub_1004A64B4();
    v14 = sub_1004A64A4();
    if (v13)
    {
      if (v14 > 64)
      {
        goto LABEL_13;
      }

      swift_getAssociatedConformanceWitness();
      sub_1004A6DE4();
      sub_1004A6D04();
      v15 = *(v4[4] + 8);
      v16 = sub_1004A5644();
      (*(v8 + 8))(v12, a1);
      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v14 >= 64)
    {
      goto LABEL_13;
    }
  }

  if (!sub_1004A6494())
  {
LABEL_14:
    swift_getAssociatedConformanceWitness();
    sub_1004A6DE4();
    return sub_1004A6D04();
  }

LABEL_10:
  swift_getAssociatedConformanceWitness();
  sub_1004A6DE4();
  sub_1004A6D04();
  result = sub_1004A6964();
  v18 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_1004A6984();
    if (!__OFSUB__(v18, result))
    {
      v22 = v18 - result;
      sub_1001C08B0();
      sub_1004A6484();
      return (*(v8 + 8))(v12, a1);
    }
  }

  __break(1u);
  return result;
}

char *Endianness.host.unsafeMutableAddressor()
{
  if (qword_1005DB9D8 != -1)
  {
    swift_once();
  }

  return &static Endianness.host;
}

uint64_t static Endianness.host.getter()
{
  if (qword_1005DB9D8 != -1)
  {
    swift_once();
  }

  return static Endianness.host;
}

unint64_t sub_1003B9F40()
{
  result = qword_1005DBF00;
  if (!qword_1005DBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF00);
  }

  return result;
}

void *sub_1003B9FA4(void *result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = (v2 + v1[4]);
  }

  else
  {
    v3 = 0;
  }

  if (result && v3)
  {
    if (v2)
    {
      v4 = v2 + v1[5];
    }

    else
    {
      v4 = 0;
    }

    return memmove(result, v3, v4 - v3);
  }

  return result;
}

uint64_t ByteBuffer.readableBytesView.getter@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= v4)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
    *(a4 + 20) = WORD2(a3);
    *(a4 + 22) = BYTE6(a3);
    *(a4 + 24) = a2;
    *(a4 + 32) = v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003BA02C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 >= a4 && (HIDWORD(a4) - a4) - 2 >= a1 - a4)
  {
    swift_beginAccess();
    v6 = 0;
    v5 = *(*(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5)) + a1);
    v11 = bswap32(v5) >> 16;
    if ((a2 & 1) == 0)
    {
      LOWORD(v5) = v11;
    }

    v5 = v5;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  return v5 | (v6 << 16);
}

uint64_t NamespaceDescription.string.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4) | (*(v0 + 10) << 32) | (*(v0 + 22) << 48);
}

uint64_t QuotaRoot.storage.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);
  v10 = *v3;

  *v3 = a1;
  *(v3 + 2) = v5;
  *(v3 + 3) = v7;
  *(v3 + 4) = v4;
  *(v3 + 10) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t ByteBufferView._range.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ByteBufferView._range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ByteBufferView.init(buffer:range:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 < 0 || (a3 - (BYTE6(a3) | (a3 >> 24) & 0xFFFF00)) < a5)
  {
    __break(1u);
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 20) = WORD2(a3);
    *(a6 + 22) = BYTE6(a3);
    *(a6 + 24) = a4;
    *(a6 + 32) = a5;
  }

  return result;
}

uint64_t ByteBufferView.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= v4)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
    *(a4 + 20) = WORD2(a3);
    *(a4 + 22) = BYTE6(a3);
    *(a4 + 24) = a2;
    *(a4 + 32) = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003BA25C(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  result = swift_beginAccess();
  v8 = a1[3];
  v9 = a1[4];
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
  }

  else if (v9 == v8)
  {
    return 0;
  }

  else
  {
    v10 = (*(v4 + 24) + (v6 | (v5 << 8)) + v8);
    v11 = ~v8 + v9;
    do
    {
      v12 = *v10++;
      result = v12 == a2;
    }

    while (v12 != a2 && v11-- != 0);
  }

  return result;
}

uint64_t ByteBufferView.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 20);
  v9 = *(v3 + 22);
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a2;
  return ByteBuffer.withVeryUnsafeBytes<A>(_:)(sub_1003BD190, v11, v5, v6, v7 | (v8 << 32) | (v9 << 48));
}

uint64_t ByteBufferView.subscript.getter(uint64_t result)
{
  if (v1[3] > result || v1[4] <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = *(v1 + 2);
  if (result < v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result - v4 < (*(v1 + 3) - v4))
  {
    v5 = *v1;
    v6 = *(v1 + 10);
    v7 = *(v1 + 22);
    swift_beginAccess();
    return *(*(v5 + 24) + (v7 | (v6 << 8)) + v3);
  }

LABEL_10:
  __break(1u);
  return result;
}

char *ByteBufferView.subscript.setter(char a1, uint64_t a2)
{
  if (v2[3] > a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = a2;
  if (v2[4] <= a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v12 = a1;
  v4 = a2 + 1;
  if (a2 == -1)
  {
    goto LABEL_12;
  }

  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = *(v2 + 4);
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v9, v10 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v3);
  return ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(&v12, &v13, v3);
}

void (*ByteBufferView.subscript.modify(void (**a1)(uint64_t a1), uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v6 = result;
  *a1 = result;
  *(result + 3) = a2;
  *(result + 4) = v2;
  if (v2[3] > a2 || v2[4] <= a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v2 + 2);
  if (a2 < v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2 - v7 < (*(v2 + 3) - v7))
  {
    v8 = *v2;
    v9 = *(v2 + 10);
    v10 = *(v2 + 22);
    swift_beginAccess();
    *(v6 + 40) = *(*(v8 + 24) + (v10 | (v9 << 8)) + a2);
    return sub_1003BA5D4;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1003BA5D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  ByteBufferView.subscript.setter(*(*a1 + 40), *(*a1 + 24));

  free(v1);
}

uint64_t ByteBufferView.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0 || (v6 = *(v3 + 16), v7 = *(v3 + 20), v8 = *(v3 + 22), v6 - (v8 | (v7 << 8)) < a2))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v11 = *v3;
    result = sub_1003BD79C(v3, v10);
    *a3 = v11;
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    *(a3 + 22) = v8;
    *(a3 + 24) = v9;
    *(a3 + 32) = a2;
  }

  return result;
}

uint64_t ByteBufferView.subscript.setter(uint64_t *a1, uint64_t a2, Swift::Int at)
{
  sub_1003BA6F0(a2, at, a1);

  return sub_1003A52D0(a1);
}

char *sub_1003BA6F0(uint64_t a1, Swift::Int at, uint64_t *a3)
{
  v4 = v3[3];
  if (v4 > a1)
  {
    __break(1u);
    goto LABEL_51;
  }

  v5 = v3[4];
  if (v5 < at)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v8 = a3[3];
  v7 = a3[4];
  v9 = v7 - v8;
  v10 = __OFSUB__(v7, v8);
  v11 = at - a1;
  if (__OFSUB__(at, a1))
  {
    goto LABEL_52;
  }

  if (v9 == v11)
  {
    v12 = *a3;
    v13 = *(a3 + 10);
    v14 = *(a3 + 22);
    swift_beginAccess();
    if (!v10)
    {
      v15 = a1 + v9;
      if (!__CFADD__(a1, v9))
      {
        v16 = *(v12 + 24);
        v17 = *v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = *(v3 + 4);
          v19 = v15 >= v18;
          v20 = v15 - v18;
          if (v19)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          v22 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v21, v22 & 1);
        }

        if (v9 <= 0xFFFFFFFFLL)
        {
          ByteBuffer._ensureAvailableCapacity(_:at:)(v9, a1);
          return ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v16 + (v14 | (v13 << 8)) + v8), v16 + (v14 | (v13 << 8)) + v8 + v9, a1);
        }

        goto LABEL_55;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v9 >= v11)
  {
    if (!__OFADD__(a1, v9))
    {
      v40 = *(v3 + 3);
      v37 = __OFSUB__(v40, at);
      v41 = v40 - at;
      if (!v37)
      {
        ByteBuffer.copyBytes(at:to:length:)(at, a1 + v9, v41);
        if (v43)
        {
LABEL_74:
          swift_unexpectedError();
          __break(1u);
          goto LABEL_75;
        }

        v44 = *a3;
        v61 = *(a3 + 10);
        v45 = *(a3 + 22);
        swift_beginAccess();
        if (!v10)
        {
          atb = v45;
          v46 = a1 + v9;
          if (!__CFADD__(a1, v9))
          {
            v47 = *(v44 + 24);
            v48 = *v3;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = *(v3 + 4);
              v19 = v46 >= v49;
              v50 = v46 - v49;
              if (v19)
              {
                v51 = v50;
              }

              else
              {
                v51 = 0;
              }

              v52 = variable initialization expression of Engine.isProcessingUpdates();
              ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v51, v52 & 1);
            }

            if (v9 <= 0xFFFFFFFFLL)
            {
              ByteBuffer._ensureAvailableCapacity(_:at:)(v9, a1);
              result = ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v47 + (atb | (v61 << 8)) + v8), v47 + (atb | (v61 << 8)) + v8 + v9, a1);
              v53 = v9 - v11;
              if (!__OFSUB__(v9, v11))
              {
                v54 = *(v3 + 3);
                v19 = __CFADD__(v54, v53);
                v55 = v54 + v53;
                if (!v19)
                {
                  if (*(v3 + 4) - (*(v3 + 22) | (*(v3 + 10) << 8)) >= v55)
                  {
                    *(v3 + 3) = v55;
                    v37 = __OFADD__(v5, v53);
                    v56 = v5 + v53;
                    if (!v37)
                    {
                      if (v56 >= v4)
                      {
                        v3[3] = v4;
                        v3[4] = v56;
                        return result;
                      }

                      goto LABEL_73;
                    }

LABEL_72:
                    __break(1u);
LABEL_73:
                    __break(1u);
                    goto LABEL_74;
                  }

LABEL_71:
                  __break(1u);
                  goto LABEL_72;
                }

                goto LABEL_69;
              }

              goto LABEL_67;
            }

            goto LABEL_65;
          }

          goto LABEL_63;
        }

        goto LABEL_61;
      }

      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v24 = *a3;
  v25 = *(a3 + 10);
  v60 = *(a3 + 22);
  swift_beginAccess();
  if (v10)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v57 = v25;
  v26 = a1 + v9;
  if (__CFADD__(a1, v9))
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v27 = *(v24 + 24);
  v28 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = *(v3 + 4);
    v19 = v26 >= v29;
    v30 = v26 - v29;
    if (v19)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v31, v32 & 1);
  }

  if (v9 > 0xFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(v9, a1);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v27 + (v60 | (v57 << 8)) + v8), v27 + (v60 | (v57 << 8)) + v8 + v9, a1);
  if (__OFADD__(a1, v9))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v33 = *(v3 + 3);
  if (__OFSUB__(v33, at))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  ByteBuffer.copyBytes(at:to:length:)(at, a1 + v9, v33 - at);
  if (!v34)
  {
    v35 = v11 - v9;
    if (!__OFSUB__(v11, v9))
    {
      v36 = *(v3 + 3);
      v37 = __OFSUB__(v36, v35);
      v38 = v36 - v35;
      if (!v37)
      {
        if (*(v3 + 4) - (*(v3 + 22) | (*(v3 + 10) << 8)) >= v38)
        {
          *(v3 + 3) = v38;
          result = sub_1003BC2C4(v35, v4, v5);
          v3[3] = result;
          v3[4] = v39;
          return result;
        }

        goto LABEL_70;
      }

      goto LABEL_68;
    }

    goto LABEL_66;
  }

LABEL_75:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}