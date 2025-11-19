void *sub_10014C370(uint64_t a1)
{
  v38 = *(a1 + 16);
  if (!v38)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v1 = 0;
  v37 = a1 + 32;
  while (1)
  {
    v3 = (v37 + 16 * v1);
    v4 = *v3;
    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    swift_bridgeObjectRetain_n();
    v7 = sub_1004A5804();
    v9 = v8;
    v10 = MailboxName.inbox.unsafeMutableAddressor();
    if ((v6 | (v6 << 32)) == (v10[2] | (v10[2] << 32)))
    {
      v11 = *v10;
      v12 = *(v4 + 16);
      if (v12 == *(*v10 + 16))
      {
        if (!v12 || v4 == v11)
        {
LABEL_12:

          goto LABEL_15;
        }

        v13 = 32;
        while (*(v4 + v13) == *(v11 + v13))
        {
          ++v13;
          if (!--v12)
          {
            goto LABEL_12;
          }
        }
      }
    }

    if (sub_1004A5924() >= 3)
    {
      sub_1004A5964();
      sub_1004A6724(16);
      sub_1004A5AB4();
      v14 = v6;
      v6 = sub_1004A5864();
      v39 = v5;
      v16 = v15;

      v41 = v6;
      v42 = v16;
      LODWORD(v6) = v14;
      v43._countAndFlagsBits = 0x6E656C202CA680E2;
      v43._object = 0xAC0000003D687467;
      sub_1004A5994(v43);
      sub_1004A5924();
      v44._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v44);

      v5 = v39;

      v7 = v41;
      v9 = v42;
    }

LABEL_15:
    v18 = sub_100064090(v7, v9);
    v19 = *(&_swiftEmptyDictionarySingleton + 2);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (*(&_swiftEmptyDictionarySingleton + 3) < v21)
    {
      sub_1000C86A0(v21, 1);
      v23 = sub_100064090(v7, v9);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_29;
      }

      v18 = v23;
    }

    if (v22)
    {
      v40 = v5;

      v25 = *(&_swiftEmptyDictionarySingleton + 7);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      v28 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_100087BE8(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v30 = v26[2];
      v29 = v26[3];
      if (v30 >= v29 >> 1)
      {
        v26 = sub_100087BE8((v29 > 1), v30 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v26[2] = v30 + 1;
      v2 = &v26[2 * v30];
      v2[4] = v4;
      *(v2 + 10) = v28;
      *(v2 + 11) = v40;
    }

    else
    {
      sub_10000C9C0(&qword_1005CEFB8, &unk_1004D1EA0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1004CEAA0;
      *(v31 + 32) = v4;
      *(v31 + 40) = v6;
      *(v31 + 44) = v5;
      *(&_swiftEmptyDictionarySingleton + (v18 >> 6) + 8) |= 1 << v18;
      v32 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v18);
      *v32 = v7;
      v32[1] = v9;
      *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v18) = v31;
      v33 = *(&_swiftEmptyDictionarySingleton + 2);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_28;
      }

      *(&_swiftEmptyDictionarySingleton + 2) = v35;
    }

    if (++v1 == v38)
    {
      return &_swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_10014C740(uint64_t a1)
{
  v1 = _swiftEmptyDictionarySingleton;
  v45 = *(a1 + 16);
  if (!v45)
  {
    return v1;
  }

  v2 = 0;
  v44 = a1 + 32;
  while (1)
  {
    v4 = (v44 + 56 * v2);
    v46 = *v4;
    v5 = *(v4 + 1);
    v6 = v4[4];
    v7 = *(v4 + 3);
    v8 = *(v4 + 4);
    v9 = *(v4 + 5);
    v10 = *(v4 + 48);
    swift_bridgeObjectRetain_n();
    sub_100014CEC(v7, v8);
    v48 = v9;

    v11 = sub_1004A5804();
    v13 = v12;
    v14 = MailboxName.inbox.unsafeMutableAddressor();
    v50 = v8;
    v47 = v7;
    v49 = v10;
    if ((v6 | (v6 << 32)) == (v14[2] | (v14[2] << 32)))
    {
      v15 = *v14;
      v16 = *(v5 + 16);
      if (v16 == *(*v14 + 16))
      {
        if (!v16 || v5 == v15)
        {
LABEL_12:

          goto LABEL_15;
        }

        v17 = 32;
        while (*(v5 + v17) == *(v15 + v17))
        {
          ++v17;
          if (!--v16)
          {
            goto LABEL_12;
          }
        }
      }
    }

    if (sub_1004A5924() >= 3)
    {
      sub_1004A5964();
      sub_1004A6724(16);
      sub_1004A5AB4();
      v18 = sub_1004A5864();
      v19 = v1;
      v20 = v2;
      v21 = v6;
      v6 = v22;

      v51 = v6;
      LODWORD(v6) = v21;
      v2 = v20;
      v1 = v19;
      v52._countAndFlagsBits = 0x6E656C202CA680E2;
      v52._object = 0xAC0000003D687467;
      sub_1004A5994(v52);
      sub_1004A5924();
      v53._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v53);

      v11 = v18;
      v13 = v51;
    }

LABEL_15:
    v23 = v11;
    v25 = sub_100064090(v11, v13);
    v26 = v1[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v1[3] >= v28)
    {
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1000C868C(v28, 1);
      v1 = _swiftEmptyDictionarySingleton;
      v30 = sub_100064090(v23, v13);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_29;
      }

      v25 = v30;
      if (v29)
      {
LABEL_22:
        v37 = v5;

        v38 = v1[7];
        v39 = *(v38 + 8 * v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v38 + 8 * v25) = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = sub_100087AC4(0, *(v39 + 2) + 1, 1, v39);
          *(v38 + 8 * v25) = v39;
        }

        v42 = *(v39 + 2);
        v41 = *(v39 + 3);
        if (v42 >= v41 >> 1)
        {
          v39 = sub_100087AC4((v41 > 1), v42 + 1, 1, v39);
          *(v38 + 8 * v25) = v39;
        }

        *(v39 + 2) = v42 + 1;
        v3 = &v39[56 * v42];
        *(v3 + 8) = v46;
        *(v3 + 5) = v37;
        *(v3 + 12) = v6;
        *(v3 + 7) = v47;
        *(v3 + 8) = v50;
        *(v3 + 9) = v48;
        v3[80] = v49;
        goto LABEL_4;
      }
    }

    sub_10000C9C0(&qword_1005CEFB0, &qword_1004D1E98);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1004CEAA0;
    *(v32 + 32) = v46;
    *(v32 + 40) = v5;
    *(v32 + 48) = v6;
    *(v32 + 56) = v47;
    *(v32 + 64) = v8;
    *(v32 + 72) = v48;
    *(v32 + 80) = v49;
    v1[(v25 >> 6) + 8] |= 1 << v25;
    v33 = (v1[6] + 16 * v25);
    *v33 = v23;
    v33[1] = v13;
    *(v1[7] + 8 * v25) = v32;
    v34 = v1[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_28;
    }

    v1[2] = v36;
LABEL_4:
    if (++v2 == v45)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void *sub_10014CBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = sub_100142FFC(a1);

  v5 = *(a2 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = 0;
    v8 = (a2 + 48);
    do
    {
      if (v7 >= *(a2 + 16))
      {
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
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v9 = *(v8 - 4);
      v10 = *(v8 - 1);
      v11 = *v8;
      if ((*v8 & 4) != 0)
      {
        v14 = *(v8 - 1);

        v13 = sub_10014A3F0(v15, v9);
      }

      else
      {
        sub_1000C9E18(*(v8 - 1), *v8);
        sub_1000C9E18(v10, v11);

        v13 = sub_10014A3F0(v12, v9);

        sub_1000C9F38(v11);
      }

      result = sub_1000C9EF0(v10, v11);
      v16 = v13[2];
      v17 = v6[2];
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        goto LABEL_67;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v18 <= v6[3] >> 1)
      {
        if (!v13[2])
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v19 = v17 + v16;
        }

        else
        {
          v19 = v17;
        }

        result = sub_100087BE8(result, v19, 1, v6);
        v6 = result;
        if (!v13[2])
        {
LABEL_3:

          if (v16)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }
      }

      if ((v6[3] >> 1) - v6[2] < v16)
      {
        goto LABEL_69;
      }

      sub_10000C9C0(&qword_1005CEFC0, &qword_1004D7050);
      swift_arrayInitWithCopy();

      if (v16)
      {
        v20 = v6[2];
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_70;
        }

        v6[2] = v22;
      }

LABEL_4:
      ++v7;
      v8 += 3;
    }

    while (v5 != v7);
  }

  v23 = sub_10014C370(v6);

  sub_10000C9C0(&qword_1005D18E0, &qword_1004D7058);
  result = sub_1004A6A54();
  v24 = 0;
  v25 = 1 << v23[32];
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v92 = v23 + 64;
  v27 = v26 & *(v23 + 8);
  v28 = (v25 + 63) >> 6;
  v96 = result + 8;
  v98 = result;
  for (i = v23; v27; v98[2] = v44)
  {
    v29 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
LABEL_31:
    v32 = v29 | (v24 << 6);
    v33 = (*(v23 + 6) + 16 * v32);
    v34 = *v33;
    v35 = *(*(v23 + 7) + 8 * v32);
    v36 = *(v35 + 16);
    if (v36)
    {
      v101 = *v33;
      v99 = v33[1];

      sub_100092468(0, v36, 0);
      v37 = _swiftEmptyArrayStorage[2];
      v38 = 44;
      do
      {
        v39 = *(v35 + v38);
        v40 = _swiftEmptyArrayStorage[3];
        if (v37 >= v40 >> 1)
        {
          sub_100092468((v40 > 1), v37 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v37 + 1;
        *(&_swiftEmptyArrayStorage[4] + v37) = v39;
        v38 += 16;
        ++v37;
        --v36;
      }

      while (v36);

      v23 = i;
      v34 = v101;
      v41 = v99;
    }

    else
    {
      v41 = v33[1];
    }

    result = v98;
    *(v96 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v42 = (v98[6] + 16 * v32);
    *v42 = v34;
    v42[1] = v41;
    *(v98[7] + 8 * v32) = _swiftEmptyArrayStorage;
    v43 = v98[2];
    v21 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v21)
    {
      goto LABEL_71;
    }
  }

  v30 = v24;
  while (1)
  {
    v24 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v24 >= v28)
    {
      break;
    }

    v31 = *&v92[8 * v24];
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v27 = (v31 - 1) & v31;
      goto LABEL_31;
    }
  }

  v45 = sub_10014C740(a3);

  sub_10000C9C0(&qword_1005D18E8, &qword_1004D7060);
  result = sub_1004A6A54();
  v46 = result;
  v47 = 0;
  v48 = *(v45 + 64);
  v84 = v45 + 64;
  v49 = 1 << *(v45 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v48;
  v52 = (v49 + 63) >> 6;
  v87 = v45;
  v88 = result + 8;
  v85 = v52;
  v86 = result;
  if ((v50 & v48) == 0)
  {
LABEL_45:
    v54 = v47;
    while (1)
    {
      v47 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_65;
      }

      if (v47 >= v52)
      {

        return v83;
      }

      v55 = *(v84 + 8 * v47);
      ++v54;
      if (v55)
      {
        v53 = __clz(__rbit64(v55));
        v51 = (v55 - 1) & v55;
        goto LABEL_50;
      }
    }
  }

  while (1)
  {
    v53 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
LABEL_50:
    v56 = v53 | (v47 << 6);
    v57 = (*(v45 + 48) + 16 * v56);
    v58 = *v57;
    v59 = *(*(v45 + 56) + 8 * v56);
    v60 = *(v59 + 16);
    if (v60)
    {
      v91 = *v57;
      v93 = v56;
      v95 = v51;
      v97 = v47;
      v89 = v57[1];

      sub_1000924A8(0, v60, 0);
      v61 = 0;
      v62 = _swiftEmptyArrayStorage;
      v63 = v59;
      do
      {
        v103 = v62;
        v102 = *(v63 + v61 + 32);
        v64 = *(v63 + v61 + 56);
        v65 = *(v63 + v61 + 64);
        v66 = *(v63 + v61 + 80);
        if (*(v63 + v61 + 72))
        {
          v100 = *(v63 + v61 + 40);
          sub_100014CEC(v64, v65);

          sub_100014CEC(v64, v65);

          sub_100014CEC(v64, v65);

          v68 = SectionSpecifier.Part.debugDescription.getter(v67);
          v69 = v66;
          v71 = v70;

          v104._countAndFlagsBits = v68;
          v104._object = v71;
          sub_1004A5994(v104);
          v66 = v69;

          sub_100014D40(v64, v65);

          sub_100014D40(v64, v65);

          v73 = 0x656D686361747461;
          v72 = 0xEB0000000020746ELL;
        }

        else
        {
          sub_100014CEC(*(v63 + v61 + 56), *(v63 + v61 + 64));
          sub_100014CEC(v64, v65);
          sub_100014D40(v64, v65);

          v72 = 0xE400000000000000;
          v73 = 1954047348;
        }

        v74 = dword_1004D9268[v66];
        v62 = v103;
        v76 = v103[2];
        v75 = v103[3];
        if (v76 >= v75 >> 1)
        {
          sub_1000924A8((v75 > 1), v76 + 1, 1);
          v62 = v103;
        }

        v62[2] = v76 + 1;
        v77 = &v62[6 * v76];
        *(v77 + 8) = v102;
        v77[5] = v64;
        v77[6] = v65;
        v77[7] = v73;
        v77[8] = v72;
        *(v77 + 18) = v74;
        v61 += 56;
        --v60;
      }

      while (v60);
      v78 = v62;

      v79 = v78;
      v46 = v86;
      v45 = v87;
      v51 = v95;
      v47 = v97;
      v52 = v85;
      v58 = v91;
      v56 = v93;
      result = v89;
    }

    else
    {

      v79 = _swiftEmptyArrayStorage;
    }

    *(v88 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
    v80 = (v46[6] + 16 * v56);
    *v80 = v58;
    v80[1] = result;
    *(v46[7] + 8 * v56) = v79;
    v81 = v46[2];
    v21 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v21)
    {
      break;
    }

    v46[2] = v82;
    if (!v51)
    {
      goto LABEL_45;
    }
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_10014D328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10009A040(a1);
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  if (*(a1 + 48))
  {
    v9 = 0;
  }

  else
  {
    v12 = *(a1 + 40);
    sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
    result = sub_1004A6934();
    v9 = 0xE000000000000000;
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  *a2 = v10;
  *(a2 + 4) = v6 & 1;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v8 & 1;
  return result;
}

double sub_10014D3F8@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for MessagesPendingDownload();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v15 = *a1;
  v47 = a1[1];
  v48 = v15;
  v46 = a1[2];
  v45 = type metadata accessor for PendingPersistenceUpdates();
  v16 = &a1[*(v45 + 28)];
  sub_10014FA6C(v16, v14, type metadata accessor for MessagesPendingDownload);
  if (*(*v14 + 16) || (v17 = *(v8 + 20), sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0), (sub_1004A70C4() & 1) == 0))
  {

    sub_1000B492C(v19);
    v20 = sub_100143D50();
    v43 = v21;
    v44 = v20;
    sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
    v22 = &v14[*(v8 + 20)];
    v42 = sub_100143D50();
    v18 = v23;
  }

  else
  {
    v42 = 0;
    v18 = 0;
    v43 = 1;
    v44 = 0;
  }

  sub_10014FAD4(v14, type metadata accessor for MessagesPendingDownload);
  v24 = type metadata accessor for MessagesPendingDownloadPerPass();
  sub_10014FA6C(v16 + *(v24 + 20), v12, type metadata accessor for MessagesPendingDownload);
  if (*(*v12 + 16) || (v25 = *(v8 + 20), sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0), (sub_1004A70C4() & 1) == 0))
  {

    sub_1000B492C(v30);
    v26 = sub_100143D50();
    v29 = v31;
    sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
    v32 = &v12[*(v8 + 20)];
    v27 = sub_100143D50();
    v28 = v33;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
  }

  sub_10014FAD4(v12, type metadata accessor for MessagesPendingDownload);
  v34 = &a1[*(v45 + 32)];
  v35 = sub_100143D50();
  v37 = v36;
  sub_10014FAD4(a1, type metadata accessor for PendingPersistenceUpdates);
  LOBYTE(v50) = v48;
  BYTE1(v50) = v47;
  BYTE2(v50) = v46;
  *(&v50 + 1) = v44;
  *&v51 = v43;
  *(&v51 + 1) = v42;
  *&v52 = v18;
  *(&v52 + 1) = v26;
  *&v53 = v29;
  *(&v53 + 1) = v27;
  *&v54 = v28;
  *(&v54 + 1) = v35;
  v55 = v37;
  v56[0] = v48;
  v56[1] = v47;
  v56[2] = v46;
  v57 = v44;
  v58 = v43;
  v59 = v42;
  v60 = v18;
  v61 = v26;
  v62 = v29;
  v63 = v27;
  v64 = v28;
  v65 = v35;
  v66 = v37;
  sub_10014F844(&v50, &v49);
  sub_10014F87C(v56);
  v38 = v53;
  v39 = v54;
  *(a2 + 32) = v52;
  *(a2 + 48) = v38;
  *(a2 + 64) = v39;
  *(a2 + 80) = v55;
  result = *&v50;
  v41 = v51;
  *a2 = v50;
  *(a2 + 16) = v41;
  return result;
}

__n128 sub_10014D788@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v50[-v14];
  v16 = _s15MissingMessagesO10IncompleteVMa(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = _s15MissingMessagesOMa(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = 1;
  v70 = 1;
  sub_10014FA6C(a1, v23, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v52 = a1;
    if (EnumCaseMultiPayload == 1)
    {
      sub_10014F7DC(v23, v19, _s15MissingMessagesO10IncompleteVMa);
      sub_10000E268(v19, v15, &qword_1005CD1D0, &unk_1004CF2C0);
      v25 = sub_100143D50();
      v27 = v26;
      sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
      v28 = _s15MissingMessagesO8ProgressVMa(0);
      v29 = &v19[*(v28 + 20)];
      v30 = sub_100143D50();
      v32 = v31;
      v33 = *(v16 + 24);
      v34 = &v19[*(v16 + 20)];
      v35 = *v34;
      v36 = v34[4];
      if (v36)
      {
        v35 = 0;
      }

      v51 = v35;
      v71 = v36;
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_10014FA6C(&v19[v33], v11, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      sub_1004A6934();
      sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
      v38 = v58;
      v37 = v59;
      sub_10014FAD4(v52, _s15MissingMessagesOMa);
      v39 = &v19[*(v28 + 24)];
      v40 = *v39;
      v41 = a2;
      v42 = v39[4];
      v43 = v19;
      v44 = v51;
      sub_10014FAD4(v43, _s15MissingMessagesO10IncompleteVMa);
      if (v42)
      {
        v45 = 0;
      }

      else
      {
        v45 = v40;
      }

      v70 = v42;
      a2 = v41;
      v46 = 2;
      v47 = 2;
    }

    else
    {
      sub_10014F7DC(v23, v7, _s15MissingMessagesO8CompleteVMa);
      if (v7[4])
      {
        v44 = 0;
      }

      else
      {
        v44 = *v7;
      }

      v71 = v7[4];
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_10014FA6C(&v7[*(v4 + 20)], v11, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      sub_1004A6934();
      sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
      v38 = v58;
      v37 = v59;
      sub_10014FAD4(v52, _s15MissingMessagesOMa);
      sub_10014FAD4(v7, _s15MissingMessagesO8CompleteVMa);
      v32 = 0;
      v30 = 0;
      v27 = 0;
      v25 = 0;
      v45 = 0;
      v47 = 1;
      v46 = 2;
    }
  }

  else
  {
    sub_10014FAD4(a1, _s15MissingMessagesOMa);
    v37 = 0;
    v38 = 0;
    v44 = 0;
    v32 = 0;
    v30 = 0;
    v27 = 0;
    v25 = 0;
    v45 = 0;
    v47 = 2;
    v46 = 1;
  }

  LOBYTE(v54) = v46;
  *(&v54 + 1) = v25;
  v55.n128_u64[0] = v27;
  v55.n128_u64[1] = v30;
  *&v56 = v32;
  DWORD2(v56) = v44;
  BYTE12(v56) = v71;
  *v57 = v38;
  *&v57[8] = v37;
  *&v57[16] = v45;
  v57[20] = v70;
  v57[21] = v47;
  LOBYTE(v58) = v46;
  v59 = v25;
  v60 = v27;
  v61 = v30;
  v62 = v32;
  v63 = v44;
  v64 = v71;
  v65 = v38;
  v66 = v37;
  v67 = v45;
  v68 = v70;
  v69 = v47;
  sub_10014F774(&v54, v53);
  sub_10014F7AC(&v58);
  v48 = *v57;
  *(a2 + 32) = v56;
  *(a2 + 48) = v48;
  *(a2 + 62) = *&v57[14];
  result = v55;
  *a2 = v54;
  *(a2 + 16) = result;
  return result;
}

void *sub_10014DCF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s15MissingMessagesOMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PendingPersistenceUpdates();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 12);
  v78 = *(a1 + 12);
  v15 = *(a1 + 16);
  v16 = *(a1 + 20);
  v77 = *(a1 + 20);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v37 = v12;
  v38 = a2;
  v30 = v7;
  if (v18)
  {
    if (v18 == 1)
    {
      v35 = 0;
      v36 = v17;
      v76 = 1;
      v75 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v76 = 1;
      v75 = 1;
    }
  }

  else
  {
    v76 = 0;
    v75 = 1;
    v35 = v17;
    v36 = 0;
  }

  v34 = sub_100167580(*(a1 + 152), *(a1 + 160), *(a1 + 168));
  v19 = sub_100143434(*(a1 + 176));
  if (v19[2])
  {
    v33 = v19;
  }

  else
  {

    v33 = 0;
  }

  if (v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  if (v14)
  {
    v21 = 0;
  }

  else
  {
    v21 = v13;
  }

  v31 = v21;
  v32 = v20;
  v22 = type metadata accessor for MailboxSyncState();
  v23 = (a1 + v22[12]);
  v24 = v23[3];
  v25 = v23[4];
  sub_10002587C(v23, v24);
  (*(v25 + 88))(&v71, v24, v25);
  sub_10014FA6C(a1 + v22[13], v11, type metadata accessor for PendingPersistenceUpdates);
  sub_10014D3F8(v11, v79);
  *(&v70[3] + 7) = v79[3];
  *(&v70[4] + 7) = v79[4];
  *(&v70[5] + 7) = v80;
  *(&v70[2] + 7) = v79[2];
  *(v70 + 7) = v79[0];
  *(&v70[1] + 7) = v79[1];
  v26 = sub_10014365C(*(a1 + v22[14]));
  v27 = v30;
  sub_10014FA6C(a1 + v22[17], v30, _s15MissingMessagesOMa);
  sub_10014D788(v27, &v66);
  sub_10014FAD4(a1, type metadata accessor for MailboxSyncState);
  *&v40[104] = v73;
  *&v40[88] = v72;
  *&v40[72] = v71;
  *&v40[153] = v70[2];
  *&v40[169] = v70[3];
  *&v40[185] = v70[4];
  *&v40[200] = *(&v70[4] + 15);
  *&v40[121] = v70[0];
  *&v40[137] = v70[1];
  *&v40[286] = *&v69[14];
  *&v40[256] = v68;
  *&v40[272] = *v69;
  *&v40[224] = v66;
  *&v40[240] = v67;
  v54 = v73;
  v53 = v72;
  v52 = v71;
  v57 = v70[1];
  v56 = v70[0];
  *&v60[15] = *(&v70[4] + 15);
  *v60 = v70[4];
  v59 = v70[3];
  v58 = v70[2];
  *v40 = v37;
  *&v40[8] = v31;
  v40[12] = v78;
  *&v40[16] = v32;
  v40[20] = v77;
  *&v40[24] = v35;
  v40[32] = v76;
  *&v40[40] = v36;
  v40[48] = v75;
  *&v40[56] = v34;
  *&v40[64] = v33;
  v40[120] = v74;
  *&v40[216] = v26;
  v41 = v37;
  v42 = v31;
  v43 = v78;
  v44 = v32;
  v45 = v77;
  v46 = v35;
  v47 = v76;
  v48 = v36;
  v49 = v75;
  v50 = v34;
  v51 = v33;
  v55 = v74;
  v61 = v26;
  *(v65 + 14) = *&v69[14];
  v65[0] = *v69;
  v64 = v68;
  v62 = v66;
  v63 = v67;
  sub_10014F70C(v40, &v39);
  sub_10014F744(&v41);
  return memcpy(v38, v40, 0x126uLL);
}

void *sub_10014E150@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s19UserInitiatedSearchVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MailboxSyncState();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014F670(v82);
  memcpy(v71, v82, sizeof(v71));
  v13 = *a1;
  v77 = *(a1 + 16);
  v14 = *(a1 + 48);
  v78 = *(a1 + 32);
  v79 = v14;
  v80[0] = *(a1 + 64);
  *(v80 + 9) = *(a1 + 73);
  v76 = v13;
  v15 = DWORD2(v77);

  v17 = sub_100145348(v16, v15);
  v60 = v18;
  v61 = v17;
  sub_100099FE4(&v76, v66);
  sub_10014D328(&v76, &v73);
  v19 = *(a1 + 96);
  if (v19)
  {
    v20 = (v19 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
    swift_beginAccess();
    LODWORD(v66[0]) = *v20;
    v21 = sub_1004A5824();
    v58 = v22;
    v59 = v21;
    v23 = _s13SelectedStateV7WrappedVMa(0);
    sub_10014FA6C(v20 + *(v23 + 20), v12, type metadata accessor for MailboxSyncState);
    sub_10014DCF0(v12, v65);
    memcpy(v66, v65, 0x126uLL);
    UInt32.init(_:)(v66);
    memcpy(v81, v66, sizeof(v81));
  }

  else
  {
    memcpy(v81, v82, sizeof(v81));
    v58 = 0;
    v59 = 0;
  }

  memcpy(v70, v71, 0x126uLL);
  sub_100025F40(v70, &qword_1005D1858, &qword_1004D7008);
  memcpy(v71, v81, sizeof(v71));
  v24 = *(a1 + 136);

  v26 = sub_100143218(v25);

  *&v66[0] = v26;

  sub_10014A11C(v66);

  v27 = *(*&v66[0] + 16);
  v62 = a2;
  if (v27)
  {
    v57 = *&v66[0];
  }

  else
  {

    v57 = 0;
  }

  v28 = *(a1 + 152);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = a1;
    *&v66[0] = _swiftEmptyArrayStorage;
    sub_100092468(0, v29, 0);
    v31 = *&v66[0];
    v32 = v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v33 = *(v5 + 72);
    do
    {
      sub_10014FA6C(v32, v8, _s19UserInitiatedSearchVMa);
      v34 = *v8;
      sub_10014FAD4(v8, _s19UserInitiatedSearchVMa);
      *&v66[0] = v31;
      v36 = v31[2];
      v35 = v31[3];
      if (v36 >= v35 >> 1)
      {
        sub_100092468((v35 > 1), v36 + 1, 1);
        v31 = *&v66[0];
      }

      v31[2] = v36 + 1;
      *(v31 + v36 + 8) = v34;
      v32 += v33;
      --v29;
    }

    while (v29);
    a1 = v30;
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {

      v31 = 0;
    }
  }

  v56 = v31;
  v37 = *(a1 + 144);
  v38 = *(v37 + 16);
  if (v38)
  {
    v55 = a1;
    *v65 = _swiftEmptyArrayStorage;
    sub_1000924A8(0, v38, 0);
    v39 = *v65;
    v40 = (v37 + 64);
    do
    {
      v63 = *(v40 - 8);
      v41 = *(v40 - 3);
      v42 = *(v40 - 2);
      v43 = *v40;
      if (*(v40 - 1))
      {
        *&v66[0] = 0x656D686361747461;
        *(&v66[0] + 1) = 0xEB0000000020746ELL;
        sub_100014CEC(v41, v42);
        sub_100014CEC(v41, v42);

        v83._countAndFlagsBits = SectionSpecifier.Part.debugDescription.getter(v44);
        sub_1004A5994(v83);

        sub_100014D40(v41, v42);

        v45 = *(&v66[0] + 1);
        v46 = *&v66[0];
      }

      else
      {
        sub_100014CEC(*(v40 - 3), *(v40 - 2));
        v45 = 0xE400000000000000;
        v46 = 1954047348;
      }

      v47 = dword_1004D9268[v43];
      *v65 = v39;
      v49 = v39[2];
      v48 = v39[3];
      if (v49 >= v48 >> 1)
      {
        v54 = v45;
        sub_1000924A8((v48 > 1), v49 + 1, 1);
        v45 = v54;
        v39 = *v65;
      }

      v39[2] = v49 + 1;
      v50 = &v39[6 * v49];
      *(v50 + 8) = v63;
      v40 += 40;
      v50[5] = v41;
      v50[6] = v42;
      v50[7] = v46;
      v50[8] = v45;
      *(v50 + 18) = v47;
      --v38;
    }

    while (v38);
    sub_10000E0E8(v55);
    v51 = v39;
  }

  else
  {
    sub_10000E0E8(a1);
    v51 = _swiftEmptyArrayStorage;
  }

  if (!v51[2])
  {

    v51 = 0;
  }

  *v65 = v61;
  *&v65[8] = v60;
  *&v65[16] = v73;
  *&v65[32] = v74;
  v65[48] = v75;
  *&v65[49] = *v72;
  *&v65[52] = *&v72[3];
  *&v65[56] = v59;
  *&v65[64] = v58;
  memcpy(&v65[72], v71, 0x126uLL);
  *&v65[368] = v57;
  *&v65[376] = v56;
  *&v65[384] = v51;
  *&v66[0] = v61;
  *(&v66[0] + 1) = v60;
  v66[1] = v73;
  v66[2] = v74;
  LOBYTE(v66[3]) = v75;
  *(&v66[3] + 1) = *v72;
  DWORD1(v66[3]) = *&v72[3];
  *(&v66[3] + 1) = v59;
  *&v66[4] = v58;
  memcpy(&v66[4] + 8, v71, 0x126uLL);
  v67 = v57;
  v68 = v56;
  v69 = v51;
  sub_10014F6A4(v65, &v64);
  sub_10014F6DC(v66);
  return memcpy(v62, v65, 0x188uLL);
}

char *sub_10014E7C4(char *result)
{
  if ((result[24] & 1) == 0)
  {
    return 0;
  }

  v1 = 0;
  v2 = *(*result + 16);
  v3 = *result + 32;
  v4 = _swiftEmptyArrayStorage;
LABEL_3:
  v5 = (v3 + 176 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v6 = *v5;
    v7 = v5[2];
    v19[1] = v5[1];
    v19[2] = v7;
    v19[0] = v6;
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[6];
    v19[5] = v5[5];
    v20 = v10;
    v19[3] = v8;
    v19[4] = v9;
    v11 = v5[7];
    v12 = v5[8];
    v13 = v5[10];
    v23 = v5[9];
    v24 = v13;
    v21 = v11;
    v22 = v12;
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    ++v1;
    v5 += 11;
    if (v20)
    {
      sub_10000E08C(v19, v17);
      sub_10014E150(v19, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100087D1C(0, *(v4 + 2) + 1, 1, v4);
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = sub_100087D1C((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      result = memcpy(&v4[392 * v16 + 32], __src, 0x188uLL);
      v1 = v14;
      goto LABEL_3;
    }
  }

  return v4;
}

uint64_t sub_10014E934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if ((*a1 & 0xFF0000) != 0)
  {
    v5 = 0x20000;
  }

  else
  {
    v5 = 0x10000;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0x2000000;
  }

  if ((v4 & 0x100) != 0)
  {
    v7 = 512;
  }

  else
  {
    v7 = 256;
  }

  if (v4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 | v5 | v7 | v6;
  if (*a1 == 2)
  {
    v10 = 3;
  }

  else
  {
    v10 = v9;
  }

  if (*(a1 + 48))
  {
    v11 = *(a1 + 48);

    sub_10014A7F4(v12, a1);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 65);
  v16._rawValue = *(a1 + 72);
  if (v16._rawValue)
  {
    v18 = *(a1 + 80);
    v17 = *(a1 + 88);
    v19 = *(a1 + 72);
    swift_bridgeObjectRetain_n();

    v20 = MailboxName.init(_:)(v16);
    v21 = sub_100145348(v20.bytes._rawValue, v20._hashValue._value);
    v23 = v22;
    sub_10014F52C(a1);
  }

  else
  {
    sub_10014F52C(a1);
    v21 = 0;
    v23 = 0;
    v18 = 0;
    v17 = 0;
  }

  sub_10014F580(v21, v23);

  result = sub_10014F5C4(v21, v23);
  *a2 = v10;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = v23;
  *(a2 + 40) = v18;
  *(a2 + 48) = v17;
  return result;
}

unint64_t sub_10014EB20()
{
  result = qword_1005D17C0;
  if (!qword_1005D17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D17C0);
  }

  return result;
}

unint64_t sub_10014EBB8()
{
  result = qword_1005D17D8;
  if (!qword_1005D17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D17D8);
  }

  return result;
}

unint64_t sub_10014EC10()
{
  result = qword_1005D17E0;
  if (!qword_1005D17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D17E0);
  }

  return result;
}

uint64_t sub_10014EC64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_10014ECC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10014ED30(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10014ED54(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014ED74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_10014EDBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10014EE70(uint64_t a1, uint64_t a2)
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
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10014EEA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_10014EEEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10014EF60()
{
  result = qword_1005D17F0;
  if (!qword_1005D17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D17F0);
  }

  return result;
}

unint64_t sub_10014F010()
{
  result = qword_1005D17F8;
  if (!qword_1005D17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D17F8);
  }

  return result;
}

unint64_t sub_10014F0B8()
{
  result = qword_1005D1800;
  if (!qword_1005D1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1800);
  }

  return result;
}

unint64_t sub_10014F10C()
{
  result = qword_1005D1818;
  if (!qword_1005D1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1818);
  }

  return result;
}

unint64_t sub_10014F160()
{
  result = qword_1005D1820;
  if (!qword_1005D1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1820);
  }

  return result;
}

unint64_t sub_10014F1B4()
{
  result = qword_1005D1830;
  if (!qword_1005D1830)
  {
    sub_10000DEFC(&qword_1005D1828, &qword_1004D6FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1830);
  }

  return result;
}

unint64_t sub_10014F238()
{
  result = qword_1005D1838;
  if (!qword_1005D1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1838);
  }

  return result;
}

unint64_t sub_10014F28C()
{
  result = qword_1005D1848;
  if (!qword_1005D1848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1848);
  }

  return result;
}

unint64_t sub_10014F2E0()
{
  result = qword_1005D1850;
  if (!qword_1005D1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1850);
  }

  return result;
}

unint64_t sub_10014F334()
{
  result = qword_1005D1860;
  if (!qword_1005D1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1860);
  }

  return result;
}

unint64_t sub_10014F388()
{
  result = qword_1005D1888;
  if (!qword_1005D1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1888);
  }

  return result;
}

unint64_t sub_10014F3DC()
{
  result = qword_1005D1898;
  if (!qword_1005D1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1898);
  }

  return result;
}

unint64_t sub_10014F430()
{
  result = qword_1005D18A0;
  if (!qword_1005D18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D18A0);
  }

  return result;
}

unint64_t sub_10014F484()
{
  result = qword_1005D18B8;
  if (!qword_1005D18B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D18B8);
  }

  return result;
}

unint64_t sub_10014F4D8()
{
  result = qword_1005D18C0;
  if (!qword_1005D18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D18C0);
  }

  return result;
}

uint64_t sub_10014F580(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10014F5C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_10014F670(uint64_t a1)
{
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 286) = 0;
  return result;
}

uint64_t sub_10014F7DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10014F8AC()
{
  result = qword_1005D18D8;
  if (!qword_1005D18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D18D8);
  }

  return result;
}

unint64_t sub_10014F900()
{
  result = qword_1005D18F0;
  if (!qword_1005D18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D18F0);
  }

  return result;
}

uint64_t sub_10014FA6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014FAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10014FB34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10014FB7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10014FBD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10014FBFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_10014FC44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10014FCAC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10014FD08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_10014FD6C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10014FD90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_10014FDEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t sub_10014FE64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10014FEB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_10014FF18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10014FF3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 70))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10014FF98(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 70) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 70) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Flags.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Flags.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1001501A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001501B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100150200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s13CapturedStateV14CapturedRemoteV6ServerVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[4])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s13CapturedStateV14CapturedRemoteV6ServerVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 sub_10015031C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100150330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100150378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001503DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 294))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100150424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 292) = 0;
    *(result + 288) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 294) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 294) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001504C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100150524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1001505AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001505F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s13CapturedStateV14PathAttributesVwet(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

unint64_t sub_100150704()
{
  result = qword_1005D18F8;
  if (!qword_1005D18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D18F8);
  }

  return result;
}

unint64_t sub_10015075C()
{
  result = qword_1005D1900;
  if (!qword_1005D1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1900);
  }

  return result;
}

unint64_t sub_1001507B4()
{
  result = qword_1005D1908;
  if (!qword_1005D1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1908);
  }

  return result;
}

unint64_t sub_10015080C()
{
  result = qword_1005D1910;
  if (!qword_1005D1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1910);
  }

  return result;
}

unint64_t sub_100150864()
{
  result = qword_1005D1918;
  if (!qword_1005D1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1918);
  }

  return result;
}

unint64_t sub_1001508BC()
{
  result = qword_1005D1920;
  if (!qword_1005D1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1920);
  }

  return result;
}

unint64_t sub_100150914()
{
  result = qword_1005D1928;
  if (!qword_1005D1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1928);
  }

  return result;
}

unint64_t sub_10015096C()
{
  result = qword_1005D1930;
  if (!qword_1005D1930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1930);
  }

  return result;
}

unint64_t sub_1001509C4()
{
  result = qword_1005D1938;
  if (!qword_1005D1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1938);
  }

  return result;
}

uint64_t sub_100150A18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656E69676E65 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004AA5C0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004AA5E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA600 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004AA620 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736B736174 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_100150CB4()
{
  result = qword_1005D1948;
  if (!qword_1005D1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1948);
  }

  return result;
}

unint64_t sub_100150D08()
{
  result = qword_1005D1958;
  if (!qword_1005D1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1958);
  }

  return result;
}

unint64_t sub_100150D5C()
{
  result = qword_1005D1968;
  if (!qword_1005D1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1968);
  }

  return result;
}

uint64_t sub_100150DB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100150E18()
{
  result = qword_1005D1980;
  if (!qword_1005D1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1980);
  }

  return result;
}

unint64_t sub_100150E6C()
{
  result = qword_1005D1990;
  if (!qword_1005D1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1990);
  }

  return result;
}

unint64_t sub_100150EC0()
{
  result = qword_1005D19A8;
  if (!qword_1005D19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D19A8);
  }

  return result;
}

uint64_t sub_100150F14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786F626C69616DLL && a2 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_100151030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7374726F70707573 && a2 == 0xEC00000065766F4DLL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004AA760 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA780 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004AA7A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_1001511A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6170655368746170 && a2 == 0xED0000726F746172 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x556C616963657073 && a2 == 0xEA00000000006573)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_10015131C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576726573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004AA6C0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_100151490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E69646E6570 && a2 == 0xEB00000000636E79;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552686372616573 && a2 == 0xEE00737473657571 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004AA7C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_1001515BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C6156646975 && a2 == 0xEB00000000797469;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5764656863746566 && a2 == 0xED0000776F646E69 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D74736568676968 && a2 == 0xED0000716553646FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_1001516E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7565169 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_100151844(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6580597 && a2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_100151954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697373696DLL && a2 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004AA8C0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5564656972657571 && a2 == 0xEB00000000734449 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004AA8E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 6;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100151BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449557478656ELL && a2 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64696C6156646975 && a2 == 0xEB00000000797469 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D74736568676968 && a2 == 0xED0000716553646FLL || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473656867694879 && a2 == 0xEE00716553646F4DLL || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x70657453636E7973 && a2 == 0xE900000000000073 || (sub_1004A6D34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA6E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004AA700 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004AA720 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004AA740 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D676E697373696DLL && a2 == 0xEF73656761737365)
  {

    return 10;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100151F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000001004AA800 == a2;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004AA820 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001004AA840 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001004AA860 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001004AA880 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004AA8A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10015216C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA640 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004AA660 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617453636E7973 && a2 == 0xE900000000000065 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x75716552636E7973 && a2 == 0xEC00000073747365 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004AA680 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004AA6A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1001523C4()
{
  result = qword_1005D19B8;
  if (!qword_1005D19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D19B8);
  }

  return result;
}

unint64_t sub_100152418()
{
  result = qword_1005D19C8;
  if (!qword_1005D19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D19C8);
  }

  return result;
}

unint64_t sub_10015246C()
{
  result = qword_1005D19E0;
  if (!qword_1005D19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D19E0);
  }

  return result;
}

unint64_t sub_1001524C0()
{
  result = qword_1005D19E8;
  if (!qword_1005D19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D19E8);
  }

  return result;
}

unint64_t sub_100152514()
{
  result = qword_1005D19F0;
  if (!qword_1005D19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D19F0);
  }

  return result;
}

uint64_t sub_100152568(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001525E4()
{
  result = qword_1005D1A08;
  if (!qword_1005D1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1A08);
  }

  return result;
}

unint64_t sub_100152638()
{
  result = qword_1005D1A10;
  if (!qword_1005D1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1A10);
  }

  return result;
}

unint64_t sub_10015268C()
{
  result = qword_1005D1A20;
  if (!qword_1005D1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1A20);
  }

  return result;
}

unint64_t sub_10015273C()
{
  result = qword_1005D1A30;
  if (!qword_1005D1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1A30);
  }

  return result;
}

unint64_t sub_100152790()
{
  result = qword_1005D1A40;
  if (!qword_1005D1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1A40);
  }

  return result;
}

unint64_t sub_1001527E4()
{
  result = qword_1005D1A50;
  if (!qword_1005D1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1A50);
  }

  return result;
}

unint64_t sub_100152838()
{
  result = qword_1005D1A70;
  if (!qword_1005D1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1A70);
  }

  return result;
}

unint64_t sub_10015288C()
{
  result = qword_1005D1A80;
  if (!qword_1005D1A80)
  {
    sub_10000DEFC(&qword_1005D1A78, &qword_1004D7CD8);
    sub_100150DB0(&qword_1005D1870, &qword_1005D1868, &qword_1004D7010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1A80);
  }

  return result;
}

unint64_t sub_100152938()
{
  result = qword_1005D1A90;
  if (!qword_1005D1A90)
  {
    sub_10000DEFC(&qword_1005D1A88, &qword_1004D7CE0);
    sub_100152568(&qword_1005D1880, &qword_1005D1878, &qword_1004D7018, sub_10014F388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1A90);
  }

  return result;
}

unint64_t sub_1001529F0()
{
  result = qword_1005D1AA0;
  if (!qword_1005D1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1AA0);
  }

  return result;
}

unint64_t sub_100152A44()
{
  result = qword_1005D1AB0;
  if (!qword_1005D1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1AB0);
  }

  return result;
}

unint64_t sub_100152A98()
{
  result = qword_1005D1AB8;
  if (!qword_1005D1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1AB8);
  }

  return result;
}

unint64_t sub_100152AEC()
{
  result = qword_1005D1AC0;
  if (!qword_1005D1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1AC0);
  }

  return result;
}

unint64_t sub_100152B40()
{
  result = qword_1005D1AD0;
  if (!qword_1005D1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1AD0);
  }

  return result;
}

unint64_t sub_100152B94()
{
  result = qword_1005D1AD8;
  if (!qword_1005D1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1AD8);
  }

  return result;
}

unint64_t sub_100152BE8()
{
  result = qword_1005D1AE8;
  if (!qword_1005D1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1AE8);
  }

  return result;
}

unint64_t sub_100152C3C()
{
  result = qword_1005D1AF8;
  if (!qword_1005D1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1AF8);
  }

  return result;
}

uint64_t _s10SpecialUseOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10SpecialUseOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ConnectionStatus.Error.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionStatus.Error.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100153170(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001531CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100153244()
{
  result = qword_1005D1B00;
  if (!qword_1005D1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B00);
  }

  return result;
}

unint64_t sub_10015329C()
{
  result = qword_1005D1B08;
  if (!qword_1005D1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B08);
  }

  return result;
}

unint64_t sub_1001532F4()
{
  result = qword_1005D1B10;
  if (!qword_1005D1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B10);
  }

  return result;
}

unint64_t sub_10015334C()
{
  result = qword_1005D1B18;
  if (!qword_1005D1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B18);
  }

  return result;
}

unint64_t sub_1001533A4()
{
  result = qword_1005D1B20;
  if (!qword_1005D1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B20);
  }

  return result;
}

unint64_t sub_1001533FC()
{
  result = qword_1005D1B28;
  if (!qword_1005D1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B28);
  }

  return result;
}

unint64_t sub_100153454()
{
  result = qword_1005D1B30;
  if (!qword_1005D1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B30);
  }

  return result;
}

unint64_t sub_1001534AC()
{
  result = qword_1005D1B38;
  if (!qword_1005D1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B38);
  }

  return result;
}

unint64_t sub_100153504()
{
  result = qword_1005D1B40;
  if (!qword_1005D1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B40);
  }

  return result;
}

unint64_t sub_10015355C()
{
  result = qword_1005D1B48;
  if (!qword_1005D1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B48);
  }

  return result;
}

unint64_t sub_1001535B4()
{
  result = qword_1005D1B50;
  if (!qword_1005D1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B50);
  }

  return result;
}

unint64_t sub_10015360C()
{
  result = qword_1005D1B58;
  if (!qword_1005D1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B58);
  }

  return result;
}

unint64_t sub_100153664()
{
  result = qword_1005D1B60;
  if (!qword_1005D1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B60);
  }

  return result;
}

unint64_t sub_1001536BC()
{
  result = qword_1005D1B68;
  if (!qword_1005D1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B68);
  }

  return result;
}

unint64_t sub_100153714()
{
  result = qword_1005D1B70;
  if (!qword_1005D1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B70);
  }

  return result;
}

unint64_t sub_10015376C()
{
  result = qword_1005D1B78;
  if (!qword_1005D1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B78);
  }

  return result;
}

unint64_t sub_1001537C4()
{
  result = qword_1005D1B80;
  if (!qword_1005D1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B80);
  }

  return result;
}

unint64_t sub_10015381C()
{
  result = qword_1005D1B88;
  if (!qword_1005D1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B88);
  }

  return result;
}

unint64_t sub_100153874()
{
  result = qword_1005D1B90;
  if (!qword_1005D1B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B90);
  }

  return result;
}

unint64_t sub_1001538CC()
{
  result = qword_1005D1B98;
  if (!qword_1005D1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1B98);
  }

  return result;
}

unint64_t sub_100153924()
{
  result = qword_1005D1BA0;
  if (!qword_1005D1BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BA0);
  }

  return result;
}

unint64_t sub_10015397C()
{
  result = qword_1005D1BA8;
  if (!qword_1005D1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BA8);
  }

  return result;
}

unint64_t sub_1001539D4()
{
  result = qword_1005D1BB0;
  if (!qword_1005D1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BB0);
  }

  return result;
}

unint64_t sub_100153A2C()
{
  result = qword_1005D1BB8;
  if (!qword_1005D1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BB8);
  }

  return result;
}

unint64_t sub_100153A84()
{
  result = qword_1005D1BC0;
  if (!qword_1005D1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BC0);
  }

  return result;
}

unint64_t sub_100153ADC()
{
  result = qword_1005D1BC8;
  if (!qword_1005D1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BC8);
  }

  return result;
}

unint64_t sub_100153B34()
{
  result = qword_1005D1BD0;
  if (!qword_1005D1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BD0);
  }

  return result;
}

unint64_t sub_100153B8C()
{
  result = qword_1005D1BD8;
  if (!qword_1005D1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BD8);
  }

  return result;
}

unint64_t sub_100153BE4()
{
  result = qword_1005D1BE0;
  if (!qword_1005D1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BE0);
  }

  return result;
}

unint64_t sub_100153C3C()
{
  result = qword_1005D1BE8;
  if (!qword_1005D1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BE8);
  }

  return result;
}

unint64_t sub_100153C94()
{
  result = qword_1005D1BF0;
  if (!qword_1005D1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BF0);
  }

  return result;
}

unint64_t sub_100153CEC()
{
  result = qword_1005D1BF8;
  if (!qword_1005D1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1BF8);
  }

  return result;
}

unint64_t sub_100153D44()
{
  result = qword_1005D1C00;
  if (!qword_1005D1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C00);
  }

  return result;
}

unint64_t sub_100153D9C()
{
  result = qword_1005D1C08;
  if (!qword_1005D1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C08);
  }

  return result;
}

unint64_t sub_100153DF4()
{
  result = qword_1005D1C10;
  if (!qword_1005D1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C10);
  }

  return result;
}

unint64_t sub_100153E4C()
{
  result = qword_1005D1C18;
  if (!qword_1005D1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C18);
  }

  return result;
}

unint64_t sub_100153EA4()
{
  result = qword_1005D1C20;
  if (!qword_1005D1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C20);
  }

  return result;
}

unint64_t sub_100153EFC()
{
  result = qword_1005D1C28;
  if (!qword_1005D1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C28);
  }

  return result;
}

unint64_t sub_100153F54()
{
  result = qword_1005D1C30;
  if (!qword_1005D1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C30);
  }

  return result;
}

unint64_t sub_100153FAC()
{
  result = qword_1005D1C38;
  if (!qword_1005D1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C38);
  }

  return result;
}

unint64_t sub_100154004()
{
  result = qword_1005D1C40;
  if (!qword_1005D1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C40);
  }

  return result;
}

unint64_t sub_10015405C()
{
  result = qword_1005D1C48;
  if (!qword_1005D1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C48);
  }

  return result;
}

unint64_t sub_1001540B4()
{
  result = qword_1005D1C50;
  if (!qword_1005D1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C50);
  }

  return result;
}

unint64_t sub_10015410C()
{
  result = qword_1005D1C58;
  if (!qword_1005D1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C58);
  }

  return result;
}

unint64_t sub_100154164()
{
  result = qword_1005D1C60;
  if (!qword_1005D1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C60);
  }

  return result;
}

unint64_t sub_1001541BC()
{
  result = qword_1005D1C68;
  if (!qword_1005D1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C68);
  }

  return result;
}

unint64_t sub_100154214()
{
  result = qword_1005D1C70;
  if (!qword_1005D1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C70);
  }

  return result;
}

unint64_t sub_10015426C()
{
  result = qword_1005D1C78;
  if (!qword_1005D1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C78);
  }

  return result;
}

uint64_t sub_1001542C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43676E696E6E7572 && a2 == 0xEF73646E616D6D6FLL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41676E696E6E7572 && a2 == 0xEE00736E6F697463 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004AA900 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004AA920 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_100154444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F74736968 && a2 == 0xE700000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA7E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54786F626C69616DLL && a2 == 0xEB000000006B7361 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_100154648()
{
  result = qword_1005D1C88;
  if (!qword_1005D1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C88);
  }

  return result;
}

unint64_t sub_10015469C()
{
  result = qword_1005D1C98;
  if (!qword_1005D1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1C98);
  }

  return result;
}

unint64_t sub_1001546F0()
{
  result = qword_1005D1CA8;
  if (!qword_1005D1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1CA8);
  }

  return result;
}

unint64_t sub_100154778()
{
  result = qword_1005D1CB0;
  if (!qword_1005D1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1CB0);
  }

  return result;
}

unint64_t sub_1001547D0()
{
  result = qword_1005D1CB8;
  if (!qword_1005D1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1CB8);
  }

  return result;
}

unint64_t sub_100154828()
{
  result = qword_1005D1CC0;
  if (!qword_1005D1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1CC0);
  }

  return result;
}

unint64_t sub_100154880()
{
  result = qword_1005D1CC8;
  if (!qword_1005D1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1CC8);
  }

  return result;
}

unint64_t sub_1001548D8()
{
  result = qword_1005D1CD0;
  if (!qword_1005D1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1CD0);
  }

  return result;
}

unint64_t sub_100154930()
{
  result = qword_1005D1CD8;
  if (!qword_1005D1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1CD8);
  }

  return result;
}

unint64_t sub_100154988()
{
  result = qword_1005D1CE0;
  if (!qword_1005D1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1CE0);
  }

  return result;
}

unint64_t sub_1001549E0()
{
  result = qword_1005D1CE8;
  if (!qword_1005D1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1CE8);
  }

  return result;
}

unint64_t sub_100154A38()
{
  result = qword_1005D1CF0;
  if (!qword_1005D1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1CF0);
  }

  return result;
}

uint64_t sub_100154AC8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 32); ; i += 15)
  {
    v8 = i[11];
    v9 = i[13];
    v65 = i[12];
    v66[0] = v9;
    *(v66 + 9) = *(i + 217);
    v10 = i[7];
    v11 = i[9];
    v61 = i[8];
    v62 = v11;
    v12 = i[9];
    v13 = i[11];
    v63 = i[10];
    v64 = v13;
    v14 = i[3];
    v15 = i[5];
    v57 = i[4];
    v58 = v15;
    v16 = i[5];
    v17 = i[7];
    v59 = i[6];
    v60 = v17;
    v18 = i[1];
    v54[0] = *i;
    v54[1] = v18;
    v19 = i[3];
    v21 = *i;
    v20 = i[1];
    v55 = i[2];
    v56 = v19;
    v22 = i[13];
    v52 = v65;
    v53[0] = v22;
    *(v53 + 9) = *(i + 217);
    v48 = v61;
    v49 = v12;
    v50 = v63;
    v51 = v8;
    v44 = v57;
    v45 = v16;
    v46 = v59;
    v47 = v10;
    v40 = v21;
    v41 = v20;
    v42 = v55;
    v43 = v14;
    sub_100050408(v54, &v26);
    v23 = a1(&v40);
    if (v3)
    {
      break;
    }

    v24 = v23;
    v38 = v52;
    v39[0] = v53[0];
    *(v39 + 9) = *(v53 + 9);
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    sub_100050440(&v26);
    if (v24)
    {
      return v6;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  v38 = v52;
  v39[0] = v53[0];
  *(v39 + 9) = *(v53 + 9);
  v34 = v48;
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  sub_100050440(&v26);
  return v6;
}

uint64_t sub_100154CCC(uint64_t (*a1)(int *), uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  for (i = (a3 + 48); ; i += 3)
  {
    v7 = *(i - 1);
    v8 = *i;
    v11 = *(i - 4);
    v12 = v7;
    v13 = v8;

    v9 = v14(&v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_100154DA4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void *sub_100154E94(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100091A08(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = sub_1004A6554();
    v7 = result;
    v8 = 0;
    v26 = v1 + 72;
    v27 = v2;
    v28 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v8;
      v30 = *(v1 + 36);
      v31 = *(*(v1 + 48) + 4 * v7);
      result = sub_1004A6CE4();
      v11 = result;
      v13 = v12;
      v14 = v4;
      v32 = v4;
      v15 = v1;
      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_100091A08((v16 > 1), v17 + 1, 1);
        v14 = v32;
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = v11;
      v18[5] = v13;
      v9 = 1 << *(v15 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_100020944(v7, v30, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_100020944(v7, v30, 0);
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v9;
      if (v29 + 1 == v27)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_1001550D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100091A08(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v25 = a1 + 56;
  result = sub_1004A6554();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = SyncRequest.Kind.description.getter(*(*(a1 + 48) + v5));
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_100091A08((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = result;
    v14[5] = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_100020944(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_1001552FC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100091A08(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_1004A6554();
    v7 = result;
    v8 = 0;
    v26 = v1 + 64;
    v27 = v2;
    v28 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v8;
      v30 = *(v1 + 36);
      v31 = *(*(v1 + 48) + 4 * v7);
      result = sub_1004A6CE4();
      v11 = result;
      v13 = v12;
      v14 = v4;
      v32 = v4;
      v15 = v1;
      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_100091A08((v16 > 1), v17 + 1, 1);
        v14 = v32;
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = v11;
      v18[5] = v13;
      v9 = 1 << *(v15 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_100020944(v7, v30, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_100020944(v7, v30, 0);
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v9;
      if (v29 + 1 == v27)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100155540(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);

    sub_100088220(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100155660(uint64_t result, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = 0;
  v15 = a4;
  v7 = result + 32;
  while (1)
  {
LABEL_6:
    v11 = *(v5 + 16);
    if (v6 == v11)
    {

      return v15;
    }

    if (v6 >= v11)
    {
      break;
    }

    v14 = *(v7 + 8 * v6);

    a2(&v13, &v14);

    v12 = v13;

    ++v6;
    if (v12)
    {
      v8 = *(v12 + 16);
      if (v8)
      {
        v9 = 0;
        while (v9 < v8)
        {
          v10 = v9 + 1;
          result = sub_100089758(&v14, *(v12 + 32 + 4 * v9));
          v8 = *(v12 + 16);
          v9 = v10;
          if (v10 == v8)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100155780(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1000883C4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100155884(uint64_t result, uint64_t a2, uint64_t (*a3)(char *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(v13, *(*(v4 + 48) + ((v11 << 8) | (4 * v12)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100155974(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BBA58();

  v9 = sub_100155660(a1, a2, a3, a4);
  if (v8[2] <= v9[2] >> 3)
  {
    v13 = v9;
    sub_10015CA18(v8, sub_10013FEF0);

    v10 = v13;
    if (v13[2])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_10015F234(v8, v9, &qword_1005CEEC8, &qword_1004D1D98);

    if (v10[2])
    {
LABEL_3:
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      return v11 | 0xA000000000000004;
    }
  }

  return 0xF000000000000007;
}

void *sub_100155A98(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v55 = &v48 - v5;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v48 - v10;
  v12 = sub_10000C9C0(&qword_1005D1DB8, &qword_1004D92C8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v48 - v14;
  v16 = sub_10000C9C0(&qword_1005CF310, &unk_1004D2608);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v56 = &v48 - v19;
  v20 = *(a1 + 16);
  if (!v20)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v58 = v11;
  v21 = *(type metadata accessor for RunningTask() - 8);
  v22 = (v17 + 56);
  v51 = (v3 + 16);
  v23 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v24 = *(v21 + 72);
  v59 = &_swiftEmptyDictionarySingleton;
  v25 = v56;
  v52 = v22;
  v53 = v15;
  v57 = v24;
  v50 = v16;
  while (1)
  {
    sub_100117890(v23, v60);
    if (v61 != 1)
    {
      sub_10011D8CC(v60);
      goto LABEL_4;
    }

    sub_1000B364C(v60, v62);
    sub_100104D00(v62, v60);
    sub_10000C9C0(&unk_1005CF5B8, &unk_1004D27C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1000197E0(v62);
      (*v22)(v15, 1, 1, v16);
      sub_100025F40(v15, &qword_1005D1DB8, &qword_1004D92C8);
      goto LABEL_4;
    }

    (*v22)(v15, 0, 1, v16);
    sub_100025FDC(v15, v25, &qword_1005CF310, &unk_1004D2608);
    v26 = *(v25 + 104);

    v28 = v58;
    sub_1000B492C(v27);
    if (sub_1004A70C4())
    {
      sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
      sub_1000197E0(v62);
      sub_100025F40(v25, &qword_1005CF310, &unk_1004D2608);
      v24 = v57;
      goto LABEL_4;
    }

    v29 = v2;
    v30 = *(v25 + 88);
    v31 = *(v25 + 96);

    v32 = v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60[0] = v32;
    v35 = sub_100063B5C(v30, v31);
    v36 = v32[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      break;
    }

    v39 = v34;
    if (v32[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10013C558();
      }
    }

    else
    {
      sub_1000C7AC8(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_100063B5C(v30, v31);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_23;
      }

      v35 = v40;
    }

    v2 = v29;
    v42 = *&v60[0];
    v59 = *&v60[0];
    if (v39)
    {
    }

    else
    {
      sub_100016D2C();
      v43 = v49;
      sub_1004A7114();
      v44 = v43;
      v42 = v59;
      sub_10001C8E8(v35, v30, v31, v44, v59);
    }

    v45 = v42[7] + *(v54 + 72) * v35;
    v22 = v52;
    v46 = v58;
    (*v51)(v55, v58, v29);
    sub_1004A7104();
    sub_100025F40(v46, &unk_1005D91B0, &unk_1004CF400);
    sub_1000197E0(v62);
    v25 = v56;
    sub_100025F40(v56, &qword_1005CF310, &unk_1004D2608);
    v15 = v53;
    v24 = v57;
    v16 = v50;
LABEL_4:
    v23 += v24;
    if (!--v20)
    {
      return v59;
    }
  }

  __break(1u);
LABEL_23:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void *sub_100156090(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_10015B320(a1, a2, a3, a4, a5, a6);
  sub_10015B4E8(&v13);
  v6 = v13;
  v7 = *(v13 + 2);
  if (v7)
  {
    sub_100091C48(0, v7, 0);
    v8 = _swiftEmptyArrayStorage[2];
    v9 = 32;
    do
    {
      v10 = *&v6[v9];
      v11 = _swiftEmptyArrayStorage[3];
      if (v8 >= v11 >> 1)
      {
        sub_100091C48((v11 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      _swiftEmptyArrayStorage[v8 + 4] = v10;
      v9 += 16;
      ++v8;
      --v7;
    }

    while (v7);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t StateWithTasks.init(windowOfInterestSizes:environment:mailboxFilter:fetchedMessageMetadata:tracingID:logName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v30 = type metadata accessor for StateWithTasks();
  v17 = *(v30 + 32);
  _s30MailboxesToSelectLoggingHelperCMa();
  v18 = swift_allocObject();
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = 0;
  *(a9 + v17) = v18;
  v31 = a3 & 1;
  v19 = sub_1001644B4(_swiftEmptyArrayStorage);
  v20 = sub_100163A00(_swiftEmptyArrayStorage);
  v21 = sub_1001638E4(_swiftEmptyArrayStorage);
  v22 = sub_100163B3C(_swiftEmptyArrayStorage);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v31;
  *(a9 + 17) = a8 & 1;
  *(a9 + 18) = a10 & 1;
  *(a9 + 24) = a4;
  *(a9 + 25) = BYTE1(a4) & 1;
  *(a9 + 26) = BYTE2(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = _swiftEmptySetSingleton;
  *(a9 + 64) = v19;
  *(a9 + 72) = 2;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 111) = 0;
  *(a9 + 120) = 0;
  *(a9 + 128) = 0;
  *(a9 + 136) = 1;
  *(a9 + 144) = 0;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 168) = v20;
  *(a9 + 176) = _swiftEmptyArrayStorage;
  *(a9 + 184) = _swiftEmptyArrayStorage;
  *(a9 + 192) = 0;
  *(a9 + 200) = v22;
  *(a9 + 208) = v21;
  *(a9 + 216) = _swiftEmptyArrayStorage;
  *(a9 + 224) = xmmword_1004D9280;
  *(a9 + 240) = 0;
  *(a9 + 248) = _swiftEmptyArrayStorage;
  *(a9 + 256) = _swiftEmptySetSingleton;
  *(a9 + 288) = a12;
  *(a9 + 296) = a13;
  v23 = a9 + *(v30 + 28);
  sub_1004A4A64();
  result = type metadata accessor for State.Logger();
  *(v23 + *(result + 20)) = a11;
  *(a9 + 264) = a11;
  *(a9 + 272) = _swiftEmptyArrayStorage;
  *(a9 + 280) = 0;
  return result;
}

uint64_t type metadata accessor for StateWithTasks()
{
  result = qword_1005D1D50;
  if (!qword_1005D1D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StateWithTasks.environment.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  if (*(v0 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v0 + 24);
  if (*(v0 + 26))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 40);
  return v4 | v5;
}

uint64_t StateWithTasks.update(updates:send:persist:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, void (*a4)(unint64_t), void (*a5)(void, void, void, void, void))
{
  v6 = v5;
  v90 = a2;
  v91 = a3;
  v77 = type metadata accessor for State.Logger();
  v10 = *(*(v77 - 8) + 64);
  v11 = __chkstk_darwin(v77);
  v83 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v79 = &v76 - v14;
  v15 = __chkstk_darwin(v13);
  v81 = &v76 - v16;
  __chkstk_darwin(v15);
  v78 = &v76 - v17;
  v18 = *(v5 + 184);
  v19 = *(v5 + 216);
  v100[4] = *(v5 + 200);
  v101[0] = v19;
  *(v101 + 12) = *(v5 + 228);
  v100[2] = *(v5 + 168);
  v100[3] = v18;
  v80 = sub_1000BB18C();
  v20 = *(v5 + 200);
  v99[3] = *(v5 + 184);
  v99[4] = v20;
  v100[0] = *(v5 + 216);
  *(v100 + 12) = *(v5 + 228);
  v99[2] = *(v5 + 168);
  v21 = sub_1000BBA58();
  v22 = *(v5 + 184);
  v23 = *(v5 + 216);
  v94[2] = *(v5 + 200);
  v95[0] = v23;
  *(v95 + 12) = *(v5 + 228);
  v94[0] = *(v5 + 168);
  v94[1] = v22;
  v93 = _swiftEmptySetSingleton;
  v24 = *(a1 + 16);
  v84 = a1;
  v85 = v5;
  v89 = v24;
  v82 = v21;
  if (v24)
  {
    v88 = a1 + 32;
    sub_10014F954(v94, v98);
    v25 = 0;
    v86 = a4;
    v87 = a5;
    do
    {
      v26 = *(v88 + 8 * v25);
      v27 = *(v6 + 264);
      v92 = v26 & 0x3FFFFFFFFFFFFFFFLL;

      v28 = *tracingLog.unsafeMutableAddressor();
      v29 = sub_1004A6354();

      v30 = v26 >> 62;
      if (v29)
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v31 = *(v92 + 16);
            v32 = *(v92 + 24);
            sub_1000CB7A0(v31, *(v92 + 24));
            sub_10016E8A4(v27, v31, v32);
            sub_1000CB7B4(v31, v32);
          }
        }

        else
        {
          v33 = *(v26 + 16);
          v34 = *(v26 + 24);
          v36 = *(v26 + 40);
          v35 = *(v26 + 48);
          sub_1000CB7C8(v34);

          sub_100172714(v27, v33, v34);
          sub_1000CB848(v34);
          a4 = v86;

          a5 = v87;
        }
      }

      sub_100156C7C(v26, v90, v91, a4, a5);
      if (v30 == 1 && (*(v92 + 24) & 1) != 0)
      {
        v37 = *(v92 + 16);
        if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0x13)
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v39 = *(v38 + 16);
          if (v39)
          {
            *&v98[0] = _swiftEmptyArrayStorage;

            sub_100092108(0, v39, 0);
            v40 = *&v98[0];
            v41 = *(*&v98[0] + 16);
            v42 = 32;
            do
            {
              v43 = *(v38 + v42);
              *&v98[0] = v40;
              v44 = v40[3];
              if (v41 >= v44 >> 1)
              {
                sub_100092108((v44 > 1), v41 + 1, 1);
                v40 = *&v98[0];
              }

              v40[2] = v41 + 1;
              *(v40 + v41 + 8) = v43;
              v42 += 24;
              ++v41;
              --v39;
            }

            while (v39);

            v6 = v85;
            a4 = v86;
          }

          else
          {
            v40 = _swiftEmptyArrayStorage;
          }

          v45 = v40[2];
          a5 = v87;
          if (v45)
          {
            v46 = 32;
            do
            {
              sub_100088660(v98, *(v40 + v46));
              v46 += 4;
              --v45;
            }

            while (v45);
          }
        }
      }

      ++v25;
    }

    while (v25 != v89);
  }

  else
  {
    sub_10014F954(v94, v98);
  }

  v47 = sub_100157D24(v90, v91, a4, a5);
  sub_100132BC4(v84);
  v48 = v81;
  if ((v47 & 1) == 0 && !*(*(v6 + 272) + 16) && *(v6 + 192) == 1)
  {
    *&v98[0] = *(v6 + 168);
    sub_1000BD5C8(v98);
    v49 = *&v98[0];
    *(v6 + 176) = 0;
    *(v6 + 184) = 0;
    *(v6 + 168) = v49;
    *(v6 + 192) = 1;
  }

  v50 = *(v6 + 184);
  v51 = *(v6 + 216);
  v98[2] = *(v6 + 200);
  v99[0] = v51;
  *(v99 + 12) = *(v6 + 228);
  v98[0] = *(v6 + 168);
  v98[1] = v50;
  v52 = sub_100155884(v93, v80, sub_100088660);
  v53 = sub_1000BB0C0(v52);

  v54 = v6;
  if ((~v53 & 0xF000000000000007) != 0)
  {
    v55 = v6 + *(type metadata accessor for StateWithTasks() + 28);
    v56 = v78;
    sub_1001669C8(v55, v78, type metadata accessor for State.Logger);
    sub_1001669C8(v56, v48, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v57 = sub_1004A4A54();
    v58 = sub_1004A5FF4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = v48;
      v61 = v59;
      *v59 = 68157952;
      *(v59 + 4) = 2;
      *(v59 + 8) = 256;
      v62 = *(v60 + *(v77 + 20));
      sub_100166900(v60, type metadata accessor for State.Logger);
      v61[10] = v62;
      v56 = v78;
      _os_log_impl(&_mh_execute_header, v57, v58, "[%.*hhx] Updating running search requests.", v61, 0xBu);
    }

    else
    {
      sub_100166900(v48, type metadata accessor for State.Logger);
    }

    a4(v53);
    sub_1001207D4(v53);
    sub_100166900(v56, type metadata accessor for State.Logger);
    v54 = v85;
  }

  v63 = *(v54 + 184);
  v64 = *(v54 + 216);
  v96[4] = *(v54 + 200);
  v97[0] = v64;
  *(v97 + 12) = *(v54 + 228);
  v96[2] = *(v54 + 168);
  v96[3] = v63;
  v65 = sub_100155974(v84, sub_1000BC508, 0, v82);

  v66 = v54;
  v67 = v83;
  if ((~v65 & 0xF000000000000007) != 0)
  {
    v68 = v54 + *(type metadata accessor for StateWithTasks() + 28);
    v69 = v79;
    sub_1001669C8(v68, v79, type metadata accessor for State.Logger);
    sub_1001669C8(v69, v67, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v70 = sub_1004A4A54();
    v71 = sub_1004A5FF4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 68157952;
      *(v72 + 4) = 2;
      *(v72 + 8) = 256;
      v73 = *(v67 + *(v77 + 20));
      sub_100166900(v67, type metadata accessor for State.Logger);
      *(v72 + 10) = v73;
      v69 = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "[%.*hhx] Updating running download requests.", v72, 0xBu);
    }

    else
    {
      sub_100166900(v67, type metadata accessor for State.Logger);
    }

    a4(v65);
    sub_1001207D4(v65);
    sub_100166900(v69, type metadata accessor for State.Logger);
  }

  v74 = *(v66 + 200);
  v95[3] = *(v66 + 184);
  v95[4] = v74;
  v96[0] = *(v66 + 216);
  *(v96 + 12) = *(v66 + 228);
  v95[2] = *(v66 + 168);
  sub_1000C169C(*(v66 + 264), v94);
  return sub_10014F9B0(v94);
}

void sub_100156C7C(unint64_t a1, uint64_t (*a2)(uint64_t, void *), uint64_t a3, void (*a4)(unint64_t), uint64_t a5)
{
  v6 = v5;
  v133 = a5;
  v134 = a4;
  v137 = type metadata accessor for State.Logger();
  v10 = *(*(v137 - 8) + 64);
  v11 = __chkstk_darwin(v137);
  v139 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v138 = &v133 - v13;
  v14 = type metadata accessor for TaskHistory.Running(0);
  v140 = *(v14 - 8);
  v15 = *(v140 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for RunningTask();
  v146 = *(v143 - 8);
  v18 = *(v146 + 64);
  v19 = __chkstk_darwin(v143);
  v148 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v149 = &v133 - v22;
  __chkstk_darwin(v21);
  v141 = &v133 - v23;
  v144 = v5;
  v147 = a1;
  v136 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v24 = *(a1 + 24);
    if (v24 >> 60 != 1)
    {
      goto LABEL_20;
    }

    v25 = *(a1 + 16);
    v26 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v27 = *(v26 + 24);
    v28 = *(v26 + 32);
    v29 = *(v26 + 40);
    if (*(v6 + 192) == 1)
    {
      v30 = *(v6 + 168);
      v31 = *(v30 + 16);
      if (v31)
      {
        LODWORD(v152) = v27;
        v153 = v28;
        v32 = (v30 + 128);
        v33 = v32;
        do
        {
          v35 = *v33;
          v33 += 22;
          v34 = v35;
          if (v35)
          {
            v36 = *(v32 - 18);
            v37 = *(v32 - 10);
            v38 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            if (*(v34 + v38) == v25)
            {

              goto LABEL_16;
            }
          }

          v32 = v33;
          --v31;
        }

        while (v31);
        v37 = 0;
        v36 = 0;
LABEL_16:
        v6 = v144;
        a1 = v147;
        v28 = v153;
        v27 = v152;
      }

      else
      {
        v37 = 0;
        v36 = 0;
        v6 = v144;
      }
    }

    else
    {
      v37 = 0;
      v36 = 0;
    }

    v161 = v25;
    v162 = v37;
    v163 = v36;
    v164 = v27;
    v165 = v28;
    v166 = v29;
    v47 = *(type metadata accessor for StateWithTasks() + 28);

    sub_100122D18(&v161, v6, v6 + v47);

    goto LABEL_19;
  }

  if (a1 >> 62 == 1 && *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == 1)
  {
    v39 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (((v39 >> 59) & 0x1E | (v39 >> 2) & 1) == 4)
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v41 = *(type metadata accessor for StateWithTasks() + 28);

      v43 = sub_10012FC9C(v42, v6 + v41);

      v44 = sub_100012C04();
      sub_100165A5C(v43, v144, a2, a3, v44, v46, v45 & 1);
      v6 = v144;
LABEL_19:
    }
  }

LABEL_20:
  v135 = *(type metadata accessor for StateWithTasks() + 28);
  sub_100130390(a1, v6 + v135);
  v48 = *(v6 + 272);
  v145 = v48[2];
  if (!v145)
  {
LABEL_45:
    if (v136 != 1)
    {
      return;
    }

    if (*((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != 1)
    {
      return;
    }

    v79 = *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (((v79 >> 59) & 0x1E | (v79 >> 2) & 1) != 2)
    {
      return;
    }

    v80 = v79 & 0xFFFFFFFFFFFFFFBLL;
    v81 = *(v80 + 24);
    v82 = *(v80 + 32);
    v83 = *(v80 + 40);
    if (*(v6 + 192) == 1)
    {
      v84 = *(v6 + 168);
      v85 = sub_10000C9C0(&qword_1005CCEC8, &qword_1004CDB28);
      v86 = sub_10000DF44(&qword_1005CCED0, &qword_1005CCEC8, &qword_1004CDB28);
      v87 = swift_allocObject();
      v87[2] = v84;
      v87[3] = sub_10000D2F0;
      v87[4] = 0;
      v87[5] = sub_10000D47C;
      v87[6] = 0;
    }

    else
    {
      v85 = sub_10000C9C0(&qword_1005CCEB8, &qword_1004CDB20);
      v86 = sub_10000DF44(&qword_1005CCEC0, &qword_1005CCEB8, &qword_1004CDB20);
      v87 = _swiftEmptyArrayStorage;
    }

    v158 = v85;
    v159 = v86;
    *&v157 = v87;
    v88 = sub_10002587C(&v157, v85);
    v89 = *(*(v85 - 8) + 64);
    __chkstk_darwin(v88);
    v92 = (*(v91 + 16))(&v133 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
    __chkstk_darwin(v92);
    *(&v133 - 32) = v81;
    *(&v133 - 3) = v82;
    LOBYTE(v132) = v83;

    v93 = sub_1004A5B64();

    sub_1000197E0(&v157);
    v94 = *(v93 + 16);
    if (!v94)
    {

      return;
    }

    sub_1001669C8(v144 + v135, v138, type metadata accessor for State.Logger);
    v153 = v93;
    v95 = (v93 + 48);
    *&v96 = 68158467;
    v151 = v96;
    v152 = v94;
    v97 = v139;
    do
    {
      v104 = *(v95 - 2);
      v105 = *(v95 - 2);
      v106 = *v95;
      sub_1001669C8(v138, v97, type metadata accessor for State.Logger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v107 = sub_1004A4A54();
      v108 = sub_1004A5FF4();

      if (os_log_type_enabled(v107, v108))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v154[0] = v99;
        *v98 = v151;
        *(v98 + 4) = 2;
        *(v98 + 8) = 256;
        v100 = *(v139 + *(v137 + 20));
        sub_100166900(v139, type metadata accessor for State.Logger);
        *(v98 + 10) = v100;
        *(v98 + 11) = 2160;
        *(v98 + 13) = 0x786F626C69616DLL;
        *(v98 + 21) = 2085;

        *&v157 = v104;
        DWORD2(v157) = v105;
        v101 = sub_1004A5824();
        v103 = sub_10015BA6C(v101, v102, v154);

        *(v98 + 23) = v103;
        _os_log_impl(&_mh_execute_header, v107, v108, "[%.*hhx] Notifying persistence that %{sensitive,mask.mailbox}s is already synced.", v98, 0x1Fu);
        sub_1000197E0(v99);
        v97 = v139;
      }

      else
      {
        sub_100166900(v97, type metadata accessor for State.Logger);
      }

      v95 += 6;
      v94 = (v94 - 1);
    }

    while (v94);
    v109 = sub_100163378(_swiftEmptyArrayStorage);
    v110 = 0;
    v111 = v153;
    for (i = (v153 + 56); ; i += 6)
    {
      if (v110 >= *(v111 + 16))
      {
        goto LABEL_77;
      }

      v114 = *(i - 3);
      v115 = *(i - 1);
      v116 = *i;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v157 = v109;
      v118 = sub_100063C84(v115, v116);
      v120 = v109[2];
      v121 = (v119 & 1) == 0;
      v122 = __OFADD__(v120, v121);
      v123 = v120 + v121;
      if (v122)
      {
        goto LABEL_78;
      }

      v124 = v119;
      if (v109[3] < v123)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_66;
      }

      v130 = v118;
      sub_10013A4A0();
      v118 = v130;
      v109 = v157;
      if ((v124 & 1) == 0)
      {
LABEL_67:
        v109[(v118 >> 6) + 8] |= 1 << v118;
        v126 = (v109[6] + 16 * v118);
        *v126 = v115;
        v126[1] = v116;
        v127 = v109[7] + 24 * v118;
        *v127 = 0;
        *(v127 + 4) = 1;
        *(v127 + 8) = 0;
        *(v127 + 16) = 1;

        v128 = v109[2];
        v122 = __OFADD__(v128, 1);
        v129 = v128 + 1;
        if (v122)
        {
          goto LABEL_79;
        }

        v109[2] = v129;
        goto LABEL_59;
      }

LABEL_58:
      v113 = v109[7] + 24 * v118;
      *v113 = 0;
      *(v113 + 4) = 1;
      *(v113 + 8) = 0;
      *(v113 + 16) = 1;

LABEL_59:
      v110 = (v110 + 1);
      v111 = v153;
      if (v152 == v110)
      {

        v131 = swift_allocObject();
        *(v131 + 16) = v109;
        v134(v131 | 0x9000000000000004);

        sub_100166900(v138, type metadata accessor for State.Logger);
        return;
      }
    }

    sub_1000C3328(v123, isUniquelyReferenced_nonNull_native);
    v118 = sub_100063C84(v115, v116);
    if ((v124 & 1) != (v125 & 1))
    {
      goto LABEL_80;
    }

LABEL_66:
    v109 = v157;
    if ((v124 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

  v49 = 0;
  v50 = 0;
  v51 = *(v6 + 264);
  v52 = v141;
  while (v49 < v48[2])
  {
    v150 = (*(v146 + 80) + 32) & ~*(v146 + 80);
    v53 = v48 + v150;
    v153 = *(v146 + 72) * v49;
    sub_1001669C8(v48 + v150 + v153, v52, type metadata accessor for RunningTask);
    sub_100117EA8(v147, v6);
    v152 = v48;
    if (v50)
    {
      *&v151 = 0;
      sub_100117890(v52, &v157);
      v54 = v149;
      if (v160)
      {
        if (v160 == 1)
        {
          sub_1000B364C(&v157, v154);
          v55 = v155;
          v56 = v156;
          sub_10002587C(v154, v155);
          v57 = *(v56 + 136);
          v58 = v55;
          v48 = v152;
          v59 = v56;
          v6 = v144;
          v57(v144, v52 + *(v143 + 28), v58, v59);

          sub_10011D8CC(v52);
          *v52 = 1;
          *(v52 + 8) = 0u;
          *(v52 + 24) = 0u;
          *(v52 + 37) = 0;
          *(v52 + 45) = 2;
          sub_1000197E0(v154);
        }

        else
        {
        }
      }

      else
      {

        sub_10011D8CC(v52);
        *v52 = 1;
        *(v52 + 8) = 0u;
        *(v52 + 24) = 0u;
        *(v52 + 37) = 0;
        *(v52 + 45) = 2;
        sub_10011D8CC(&v157);
      }
    }

    else
    {
      *&v151 = 0;
      v54 = v149;
    }

    sub_1001669C8(v52, v54, type metadata accessor for RunningTask);
    v60 = v148;
    if (v49 >= v48[2])
    {
      goto LABEL_75;
    }

    sub_1001669C8(&v53[v153], v148, type metadata accessor for RunningTask);
    v61 = *tracingLog.unsafeMutableAddressor();
    v62 = sub_1004A6354();

    if (v62)
    {
      v63 = v54;
      v64 = *(v54 + 48);
      v65 = *(v60 + 48);
      *&v157 = _swiftEmptyArrayStorage;
      *(&v157 + 1) = _swiftEmptyArrayStorage;
      KeyPath = swift_getKeyPath();
      v67 = __chkstk_darwin(KeyPath);
      __chkstk_darwin(v67);
      v68 = sub_100120834();
      Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(v65, KeyPath, sub_100120824, (&v133 - 4), sub_10012082C, (&v133 - 4), UInt32.init(_:), 0, v64, v68);

      v69 = *(&v157 + 1);
      v70 = *(v157 + 16);
      if (v70)
      {
        v142 = *(&v157 + 1);
        v71 = *(v63 + *(v143 + 32));
        v72 = v157 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
        v73 = *(v140 + 72);
        do
        {
          sub_1001669C8(v72, v17, type metadata accessor for TaskHistory.Running);
          sub_10011BDFC(v51, v71);
          sub_100166900(v17, type metadata accessor for TaskHistory.Running);
          v72 += v73;
          --v70;
        }

        while (v70);

        v52 = v141;
        v69 = v142;
      }

      else
      {

        v52 = v141;
      }

      v74 = *(v69 + 16);
      v6 = v144;
      v60 = v148;
      if (v74)
      {
        v75 = *&v149[*(v143 + 32)];
        v76 = (v69 + 40);
        do
        {
          v77 = *(v76 - 1);
          v78 = *v76;
          v76 += 12;
          sub_10011CC04(v51, v75, v77, v78);
          --v74;
        }

        while (v74);
      }

      v54 = v149;
    }

    sub_100166900(v60, type metadata accessor for RunningTask);
    v48 = v152;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1001399D0(v48);
    }

    if (v49 >= v48[2])
    {
      goto LABEL_76;
    }

    ++v49;
    sub_100166960(v54, v48 + v150 + v153, type metadata accessor for RunningTask);
    *(v6 + 272) = v48;
    sub_100166900(v52, type metadata accessor for RunningTask);
    v50 = v151;
    if (v49 == v145)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  sub_1004A6E24();
  __break(1u);
}

uint64_t sub_100157D24(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t (*a3)(void), void (*a4)(void, void, void, void, void))
{
  v5 = v4;
  v289 = a3;
  v290 = a4;
  v8 = type metadata accessor for Task.Logger(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v274 = (v261 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for StateWithTasks();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v288 = v261 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for RunningTask();
  v303 = *(v297 - 8);
  v14 = *(v303 + 64);
  v15 = __chkstk_darwin(v297);
  v278 = v261 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v292 = v261 - v18;
  v19 = __chkstk_darwin(v17);
  v310 = v261 - v20;
  __chkstk_darwin(v19);
  v291 = v261 - v21;
  v265 = type metadata accessor for State.Logger();
  v22 = *(*(v265 - 8) + 64);
  v23 = __chkstk_darwin(v265);
  v293 = v261 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v264 = v261 - v26;
  v27 = __chkstk_darwin(v25);
  v266 = v261 - v28;
  v29 = __chkstk_darwin(v27);
  v268 = v261 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = v261 - v32;
  __chkstk_darwin(v31);
  v35 = v261 - v34;
  v36 = type metadata accessor for Command();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = v261 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v5 + 72);
  v275 = a1;
  v276 = a2;
  if (v40 == 2)
  {
    v309 = v11;
    swift_storeEnumTagMultiPayload();
    v41 = sub_10018A834(_swiftEmptyArrayStorage);
    sub_10016642C(v39, v41, v42, v5, a1, a2);
    v287 = 0;
    sub_100166900(v39, type metadata accessor for Command);

    v11 = v309;
    sub_1001669C8(v5 + *(v309 + 28), v35, type metadata accessor for State.Logger);
    sub_1001669C8(v35, v33, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v43 = sub_1004A4A54();
    v44 = sub_1004A6004();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 68157952;
      *(v45 + 4) = 2;
      *(v45 + 8) = 256;
      v46 = v33[*(v265 + 20)];
      sub_100166900(v33, type metadata accessor for State.Logger);
      *(v45 + 10) = v46;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%.*hhx] Creating initial connection to get capabilities.", v45, 0xBu);
    }

    else
    {
      sub_100166900(v33, type metadata accessor for State.Logger);
    }

    sub_100166900(v35, type metadata accessor for State.Logger);
  }

  else
  {
    v287 = 0;
  }

  v47 = *(v5 + 280);
  v330 = sub_100121E04(*(v5 + 264), *(v5 + 272));
  v48 = *(v11 + 28);
  v49 = *(v11 + 32);
  *&v50 = 68157952;
  v262 = v50;
  *(&v50 + 1) = 2;
  v269 = xmmword_1004CEAA0;
  *&v50 = 68158723;
  v263 = v50;
  v304 = v5;
  v294 = v48;
  v277 = v49;
LABEL_9:
  v51 = sub_100012C04();
  v54 = sub_100187138(v51, v53, v52 & 1);
  v56 = v55;
  v58 = v57;
  v59 = *(v5 + v49);
  v60 = *(v5 + 200);
  v345[1] = *(v5 + 184);
  v345[2] = v60;
  v346[0] = *(v5 + 216);
  *(v346 + 12) = *(v5 + 228);
  v345[0] = *(v5 + 168);
  sub_10014F954(v345, &v318);
  sub_10018C458(v54, v56, v58, v5 + v48, v59, v345);
  sub_10014F9B0(v345);
  v267 = *(v56 + 16);
  v295 = v56;
  v296 = v54;
  v281 = v58;
  sub_100122B18(v54, v56, v58, v5 + v48);
  v279 = 0;
LABEL_13:
  memcpy(v344, v5, sizeof(v344));
  v66 = *(v5 + 272);

  v68 = sub_100164D6C(v67);
  v70 = v69;
  v72 = v71;

  v73 = *(v5 + 264);
  v74 = *(v5 + 280);
  swift_bridgeObjectRetain_n();
  sub_10012E6EC(v68, v70, v72, v296, v295, v281, v344, v314, v66);

  sub_10000E268(v314, &v328, &qword_1005D14E8, &qword_1004D6900);
  if (BYTE8(v329[1]) == 255)
  {
    sub_100025F40(&v328, &qword_1005D14E8, &qword_1004D6900);
    v81 = v310;
    v76 = _swiftEmptySetSingleton;
  }

  else
  {
    v318 = v328;
    v319[0] = v329[0];
    *(v319 + 9) = *(v329 + 9);
    sub_10011D9F0(&v318, &v328);
    v75 = v291;
    sub_100116E8C(&v328, v73, v291);
    sub_1001685A8(v75 + *(v297 + 28));
    sub_1001225FC(v75);
    sub_100166900(v75, type metadata accessor for RunningTask);
    sub_10011D9F0(&v318, &v328);
    v76 = _swiftEmptySetSingleton;
    if (BYTE8(v329[1]))
    {
      sub_1000B364C(&v328, v311);
      v77 = v312;
      v78 = v313;
      sub_10002587C(v311, v312);
      (*(v78 + 32))(&v331, v77, v78);
      v79 = v332;
      LODWORD(v78) = v333;
      v338 = v331;
      sub_1000D69D0(&v338);
      sub_1000197E0(v311);
      sub_100088220(&v328, v79, v78);

      v80 = &v318;
    }

    else
    {
      sub_10011DA4C(&v318);
      v80 = &v328;
    }

    sub_10011DA4C(v80);
    v279 = 1;
    v81 = v310;
  }

  v298 = sub_100163378(_swiftEmptyArrayStorage);
  v82 = (v317 + 56);
  v83 = 1 << *(v317 + 32);
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  else
  {
    v84 = -1;
  }

  v85 = v84 & *(v317 + 56);
  v86 = v344[21];
  v301 = v344[23];
  v302 = v344[22];
  LODWORD(v305) = LOBYTE(v344[24]);
  v87 = (v83 + 63) >> 6;
  v308 = v317;

  v88 = 0;
  v306 = v87;
  v307 = v82;
  while (2)
  {
    v299 = v86 + 32;
    v300 = v86;
    if (v85)
    {
      goto LABEL_29;
    }

    do
    {
LABEL_25:
      v89 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        __break(1u);
        goto LABEL_171;
      }

      if (v89 >= v87)
      {

        v61 = v298;
        if (v298[2])
        {
          v62 = swift_allocObject();
          *(v62 + 16) = v61;
          (v289)(v62 | 0x9000000000000004);
        }

        else
        {
        }

        v64 = v293;
        v63 = v294;
        sub_10000E268(v314, &v318, &qword_1005D14E8, &qword_1004D6900);
        sub_1001667B8(v314);
        v65 = BYTE8(v319[1]);
        sub_100025F40(&v318, &qword_1005D14E8, &qword_1004D6900);
        if (v65 != 255)
        {
          goto LABEL_13;
        }

        v165 = v296;

        v166 = v295;

        v167 = static MonotonicTime.now()();
        v168 = *(v5 + 272);
        v169 = sub_100156090(v167, v168, sub_100121D14, 0, v165, v166);

        v273 = v169[2];
        if (v273)
        {
          v170 = 0;
          v261[1] = v169;
          v272 = v169 + 4;
          v271 = *(v5 + 264);
          v171 = v292;
          while (1)
          {
            v172 = v272[v170];
            if ((v172 & 0x8000000000000000) != 0)
            {
              goto LABEL_174;
            }

            if (v172 >= v168[2])
            {
              goto LABEL_175;
            }

            v173 = (*(v303 + 80) + 32) & ~*(v303 + 80);
            v307 = v168;
            v174 = v168 + v173;
            v309 = *(v303 + 72) * v172;
            sub_1001669C8(v168 + v173 + v309, v171, type metadata accessor for RunningTask);
            v175 = v171 + *(v297 + 36);
            v176 = *v175;
            LODWORD(v302) = *(v175 + 8);
            *v175 = 0;
            v305 = v175;
            *(v175 + 8) = 1;
            v177 = sub_100012C04();
            v300 = v178;
            v301 = v177;
            LODWORD(v299) = v179;
            v180 = v288;
            sub_1001669C8(v5, v288, type metadata accessor for StateWithTasks);
            memcpy(v343, v180, sizeof(v343));
            v181 = v343[26];
            v182 = v343[15];
            v306 = v170;
            v308 = v172;
            v282 = v173;
            v283 = v174;
            v280 = v176;
            v298 = v343[22];
            v285 = v343[21];
            v286 = v343[23];
            LODWORD(v284) = LOBYTE(v343[24]);
            if ((v343[24] & 1) == 0)
            {
              goto LABEL_121;
            }

            if (!v343[15] || !*(v343[15] + 16))
            {
              v206 = *(v343[21] + 16);
              if (v206)
              {
                v207 = (v343[21] + 32);
                do
                {
                  v208 = *v207;
                  v209 = v207[2];
                  v319[0] = v207[1];
                  v319[1] = v209;
                  v318 = v208;
                  v210 = v207[3];
                  v211 = v207[4];
                  v212 = v207[6];
                  v322 = v207[5];
                  v323 = v212;
                  v320 = v210;
                  v321 = v211;
                  v213 = v207[7];
                  v214 = v207[8];
                  v215 = v207[10];
                  v326 = v207[9];
                  v327 = v215;
                  v324 = v213;
                  v325 = v214;
                  v216 = DWORD2(v319[0]);
                  sub_10000E08C(&v318, v314);

                  LOBYTE(v216) = MailboxName.isInbox.getter(v217, v216);

                  sub_10000E0E8(&v318);
                  if (v216)
                  {
                    sub_10000C9C0(&qword_1005D14A8, &unk_1004E2AB0);
                    v218 = swift_allocObject();
                    *(v218 + 16) = v269;
                    v219 = MailboxName.inbox.unsafeMutableAddressor();
                    v220 = *(v219 + 2);
                    *(v218 + 32) = *v219;
                    *(v218 + 40) = v220;
                    v183 = sub_100092FD4(v218);
                    swift_setDeallocating();

                    sub_10009DA94(v218 + 32);
                    swift_deallocClassInstance();
                    goto LABEL_125;
                  }

                  v207 += 11;
                  --v206;
                }

                while (v206);
              }

LABEL_121:
              v183 = _swiftEmptySetSingleton;
              goto LABEL_125;
            }

            v270 = v343[26];
            v183 = _swiftEmptySetSingleton;
            *&v328 = _swiftEmptySetSingleton;
            v184 = *(v343[21] + 16);
            if (!v184)
            {
              goto LABEL_123;
            }

            v185 = (v343[21] + 32);
            do
            {
              v186 = *v185;
              v187 = v185[2];
              v319[0] = v185[1];
              v319[1] = v187;
              v318 = v186;
              v188 = v185[3];
              v189 = v185[4];
              v190 = v185[6];
              v322 = v185[5];
              v323 = v190;
              v320 = v188;
              v321 = v189;
              v191 = v185[7];
              v192 = v185[8];
              v193 = v185[10];
              v326 = v185[9];
              v327 = v193;
              v324 = v191;
              v325 = v192;
              v194 = *&v319[0];
              v195 = DWORD2(v319[0]);
              v196 = v322;
              v197 = *(&v321 + 1);
              sub_10000E08C(&v318, v314);
              if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v197, v196, 0, 0) & 1) == 0)
              {
                sub_10000E0E8(&v318);
                goto LABEL_104;
              }

              if (MailboxName.isInbox.getter(v198, v195))
              {
LABEL_107:
                sub_100088220(v314, v194, v195);
                sub_10000E0E8(&v318);

                goto LABEL_104;
              }

              if (*(v182 + 16))
              {
                v199 = sub_100063B5C(v194, v195);
                if (v200)
                {
                  v201 = *(v182 + 56) + 72 * v199;
                  v202 = *v201;
                  v203 = *(v201 + 14);

                  v204 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
                  v205 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();

                  if (v204)
                  {
                    if ((v205 & ~v204) == 0)
                    {
LABEL_115:
                      if ((v204 & v203) == 0)
                      {
                        goto LABEL_107;
                      }

                      goto LABEL_116;
                    }
                  }

                  else if (!v205)
                  {
                    goto LABEL_107;
                  }

                  v204 |= v205;
                  goto LABEL_115;
                }
              }

LABEL_116:

              sub_10000E0E8(&v318);
LABEL_104:
              v185 += 11;
              --v184;
            }

            while (v184);
            v183 = v328;
LABEL_123:
            v181 = v270;
LABEL_125:
            v221 = LOBYTE(v343[3]);
            v222 = BYTE1(v343[3]);
            v223 = v343[4];
            v224 = v343[7];

            v225 = sub_100166D28();
            v226 = v225;
            if (v223 == 3 || v223 == 2)
            {

              v227 = 1;
              goto LABEL_128;
            }

            v246 = sub_100166E18(v225);
            if (v222)
            {
              goto LABEL_154;
            }

            if (v223 == 1)
            {
              if (v221)
              {
                v227 = v221 == 1;
                goto LABEL_155;
              }

LABEL_154:
              v227 = v246 ^ 1;
              goto LABEL_155;
            }

            if (v223 || (v221 - 1) >= 2)
            {
              goto LABEL_154;
            }

            v227 = 0;
LABEL_155:
            sub_100013AD0(&off_100598658, v224);
            sub_100166E18(v226);
            v252 = sub_100013CF4(v224);

            if (v252 & 1) == 0 && (v222)
            {
              sub_100166E18(v226);
            }

LABEL_128:

            sub_1000CF79C(v285, v298, v286, v284 & 1, v182, v183, v227 & 1, v181);
            v229 = v228;
            v231 = v230;

            v232 = v288;
            v233 = sub_1001627A4(v229, v231);

            v234 = *(v232 + 280);
            v235 = sub_1001222A0(*(v232 + 264), *(v232 + 272));
            sub_100166900(v232, type metadata accessor for StateWithTasks);
            *&v318 = v296;
            *(&v318 + 1) = v295;

            sub_10000C9C0(&qword_1005D1D98, &qword_1004D92B0);
            sub_10000DF44(&qword_1005D1DA0, &qword_1005D1D98, &qword_1004D92B0);
            v236 = MailboxesSelectionUsage.removing<A>(notContainedIn:)(&v318, v233);

            v237 = *(v297 + 28);
            v238 = v292;
            v239 = v274;
            sub_1001669C8(v292 + v237, v274, type metadata accessor for Task.Logger);

            sub_1000131FC(v235);
            *(&v260 + 1) = v300;
            *&v260 = v301;
            v5 = v304;
            v240 = v287;
            sub_10011E4EC(v239, v304, v289, v290, v238, v304, v275, v276, v260, v299 & 1, v236, v235);
            if (!v240)
            {
              sub_100166900(v239, type metadata accessor for Task.Logger);

              sub_10001324C(v235);
              v241 = v278;
              v242 = v238;
LABEL_140:
              v49 = v277;
              v247 = v308;
              goto LABEL_142;
            }

            sub_100166900(v239, type metadata accessor for Task.Logger);
            sub_100117890(v238, &v318);
            v241 = v278;
            v242 = v238;
            if (!BYTE13(v319[1]))
            {

              sub_10011D8CC(v238);
              *v238 = 1;
              *(v238 + 8) = 0u;
              *(v238 + 24) = 0u;
              *(v238 + 37) = 0;
              *(v238 + 45) = 2;
              sub_10011D8CC(&v318);
LABEL_139:

              sub_10001324C(v235);
              goto LABEL_140;
            }

            if (BYTE13(v319[1]) == 1)
            {
              sub_1000B364C(&v318, v314);
              v243 = v315;
              v244 = v316;
              sub_10002587C(v314, v315);
              v245 = v243;
              v241 = v278;
              (*(v244 + 136))(v5, v292 + v237, v245, v244);
              v242 = v292;

              sub_10011D8CC(v242);
              *v242 = 1;
              *(v242 + 8) = 0u;
              *(v242 + 24) = 0u;
              *(v242 + 37) = 0;
              *(v242 + 45) = 2;
              sub_1000197E0(v314);
              goto LABEL_139;
            }

            v49 = v277;
            v247 = v308;

            sub_10001324C(v235);
LABEL_142:

            sub_10001324C(v235);
            v248 = v305;
            if (((*(v305 + 8) | v302) & 1) == 0)
            {
              v249 = *v305;
              if (v280 < *v305)
              {
                v249 = v280;
              }

              *v305 = v249;
              *(v248 + 8) = 0;
            }

            sub_1001669C8(v242, v241, type metadata accessor for RunningTask);
            v250 = v306;
            v168 = v307;
            if (v247 >= v307[2])
            {
              goto LABEL_176;
            }

            v287 = 0;
            v251 = v291;
            sub_1001669C8(&v283[v309], v291, type metadata accessor for RunningTask);
            sub_10011D274(v271, v251);
            sub_100166900(v251, type metadata accessor for RunningTask);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v168 = sub_1001399D0(v168);
            }

            v171 = v292;
            v63 = v294;
            sub_100166900(v292, type metadata accessor for RunningTask);
            if (v247 >= v168[2])
            {
              goto LABEL_177;
            }

            v170 = v250 + 1;
            sub_100166960(v241, v168 + v282 + v309, type metadata accessor for RunningTask);
            *(v5 + 272) = v168;
            v64 = v293;
            if (v170 == v273)
            {

              goto LABEL_159;
            }
          }
        }

        v49 = v277;
LABEL_159:
        if (sub_100159D68())
        {
          if (v279)
          {
          }

          else
          {
            if (*(*(v5 + 272) + 16) || !*(*(v5 + 248) + 16))
            {
              goto LABEL_172;
            }

            v253 = v264;
            sub_1001669C8(v5 + v294, v264, type metadata accessor for State.Logger);
            sub_1001669C8(v253, v64, type metadata accessor for State.Logger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v254 = sub_1004A4A54();
            v255 = sub_1004A6004();
            if (os_log_type_enabled(v254, v255))
            {
              v256 = swift_slowAlloc();
              *v256 = v262;
              *(v256 + 4) = 2;
              *(v256 + 8) = 256;
              v257 = *(v293 + *(v265 + 20));
              sub_100166900(v293, type metadata accessor for State.Logger);
              *(v256 + 10) = v257;
              _os_log_impl(&_mh_execute_header, v254, v255, "[%.*hhx] Re-starting blocked non-mailbox tasks.", v256, 0xBu);
            }

            else
            {
              sub_100166900(v64, type metadata accessor for State.Logger);
            }

            sub_100166900(v264, type metadata accessor for State.Logger);

            *(v5 + 248) = _swiftEmptyArrayStorage;
          }

          v48 = v294;
        }

        else
        {

          v48 = v63;
        }

        goto LABEL_9;
      }

      v85 = v82[v89];
      ++v88;
    }

    while (!v85);
    v88 = v89;
    while (1)
    {
LABEL_29:
      v90 = *(v308 + 48) + ((v88 << 10) | (16 * __clz(__rbit64(v85))));
      v91 = *v90;
      v309 = *(v90 + 8);
      v92 = *(v5 + 272);
      v311[0] = v76;
      v93 = v76;
      v94 = *(v92 + 16);
      if (v94)
      {
        v95 = v303;
        v96 = v92 + ((*(v303 + 80) + 32) & ~*(v303 + 80));

        v97 = *(v95 + 72);
        do
        {
          sub_1001669C8(v96, v81, type metadata accessor for RunningTask);
          sub_100117890(v81, &v318);
          if (BYTE13(v319[1]))
          {
            if (BYTE13(v319[1]) == 1)
            {
              sub_1000B364C(&v318, &v328);
              v98 = *(&v329[0] + 1);
              v99 = *&v329[1];
              sub_10002587C(&v328, *(&v329[0] + 1));
              (*(v99 + 32))(&v334, v98, v99);
              v100 = v335;
              LODWORD(v98) = v336;
              v337 = v334;
              sub_1000D69D0(&v337);
              sub_1000197E0(&v328);
              v101 = v100;
              v81 = v310;
              sub_100088220(&v318, v101, v98);
            }

            sub_100166900(v81, type metadata accessor for RunningTask);
          }

          else
          {
            sub_100166900(v81, type metadata accessor for RunningTask);
            sub_10011D8CC(&v318);
          }

          v96 += v97;
          --v94;
        }

        while (v94);
        v102 = v311[0];
        v5 = v304;
        v76 = _swiftEmptySetSingleton;
      }

      else
      {

        v102 = v93;
        v76 = v93;
      }

      v85 &= v85 - 1;
      if (*(v102 + 16))
      {
        v103 = *(v102 + 40);
        sub_1004A6E94();
        v104 = v309 | (v309 << 32);
        sub_1004A6EB4(v104);
        v105 = sub_1004A6F14();
        v106 = -1 << *(v102 + 32);
        v107 = v105 & ~v106;
        if ((*(v102 + 56 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107))
        {
          v108 = ~v106;
          do
          {
            v109 = *(v102 + 48) + 16 * v107;
            if ((*(v109 + 8) | (*(v109 + 8) << 32)) == v104)
            {
              v110 = *v109;
              v111 = *(v110 + 16);
              if (v111 == *(v91 + 16))
              {
                if (!v111 || v110 == v91)
                {
LABEL_50:

                  goto LABEL_67;
                }

                v112 = 32;
                while (*(v110 + v112) == *(v91 + v112))
                {
                  ++v112;
                  if (!--v111)
                  {
                    goto LABEL_50;
                  }
                }
              }
            }

            v107 = (v107 + 1) & v108;
          }

          while (((*(v102 + 56 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) != 0);
        }
      }

      if (v305)
      {
        v113 = v300;
        v114 = *(v300 + 16);
        if (v114)
        {
          break;
        }
      }

LABEL_66:

      v81 = v310;
LABEL_67:
      v87 = v306;
      v82 = v307;
      if (!v85)
      {
        goto LABEL_25;
      }
    }

    v115 = 0;
    while (1)
    {
      v116 = v299 + 176 * v115;
      if ((*(v116 + 24) | (*(v116 + 24) << 32)) == (v309 | (v309 << 32)))
      {
        v117 = *(v116 + 16);
        v118 = *(v117 + 16);
        if (v118 == *(v91 + 16))
        {
          break;
        }
      }

LABEL_54:
      if (++v115 == v114)
      {
        goto LABEL_66;
      }
    }

    if (v118)
    {
      v119 = v117 == v91;
    }

    else
    {
      v119 = 1;
    }

    if (v119)
    {
LABEL_69:
      sub_100020D10(v300, v302, v301, 1);
      v122 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = sub_100139804(v113);
      }

      if (v115 >= *(v122 + 2))
      {
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
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }

      v123 = &v122[176 * v115];
      if (*(*(v123 + 21) + 16))
      {
        *(v123 + 21) = v76;

        v124 = *(v123 + 4);
        v299 = *(v123 + 5);
        LODWORD(v285) = *(v123 + 34);
        v125 = v123[140];
        *(v5 + 176) = 0;
        *(v5 + 184) = 0;
        *(v5 + 168) = v122;
        *(v5 + 192) = 1;
        v305 = v124;

        sub_100020D58(v113, v302, v301, 1);
        v126 = *(v5 + 200);
        v340 = *(v5 + 184);
        v341 = v126;
        v342[0] = *(v5 + 216);
        *(v342 + 12) = *(v5 + 228);
        v339 = *(v5 + 168);
        v127 = sub_1000B7930(v91, v309, &v339);
        LODWORD(v301) = v128;
        LODWORD(v300) = v128 & 0x100;
        if ((v128 & 0x100) != 0)
        {
          v129 = 0;
        }

        else
        {
          v129 = v127;
        }

        v302 = v129;
        v130 = v268;
        sub_1001669C8(v5 + v294, v268, type metadata accessor for State.Logger);
        v131 = v266;
        sub_1001669C8(v130, v266, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v132 = sub_1004A4A54();
        v133 = sub_1004A6034();

        v134 = os_log_type_enabled(v132, v133);
        LODWORD(v286) = v125;
        if (v134)
        {
          v135 = swift_slowAlloc();
          v284 = swift_slowAlloc();
          *&v328 = v284;
          *v135 = v263;
          *(v135 + 4) = 2;
          *(v135 + 8) = 256;
          v136 = v131;
          v137 = *(v131 + *(v265 + 20));
          sub_100166900(v136, type metadata accessor for State.Logger);
          *(v135 + 10) = v137;
          *(v135 + 11) = 2160;
          *(v135 + 13) = 0x786F626C69616DLL;
          *(v135 + 21) = 2085;
          *&v318 = v91;
          DWORD2(v318) = v309;
          v138 = sub_1004A5824();
          v140 = sub_10015BA6C(v138, v139, &v328);

          *(v135 + 23) = v140;
          *(v135 + 31) = 2082;
          if (v286)
          {
            v141 = 0xE300000000000000;
            v142 = 7104878;
          }

          else
          {
            LODWORD(v318) = v285;
            v142 = sub_1004A5804();
            v141 = v143;
          }

          v144 = sub_10015BA6C(v142, v141, &v328);

          *(v135 + 33) = v144;
          _os_log_impl(&_mh_execute_header, v132, v133, "[%.*hhx] No new and no running tasks for '%{sensitive,mask.mailbox}s' with change ID %{public}s. Marking as done.", v135, 0x29u);
          swift_arrayDestroy();
        }

        else
        {
          sub_100166900(v131, type metadata accessor for State.Logger);
        }

        v145 = v298;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v318 = v145;
        v147 = sub_100063C84(v305, v299);
        v149 = v145[2];
        v150 = (v148 & 1) == 0;
        v151 = __OFADD__(v149, v150);
        v152 = v149 + v150;
        v87 = v306;
        v82 = v307;
        if (v151)
        {
          goto LABEL_178;
        }

        v153 = v148;
        if (v145[3] >= v152)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v164 = v147;
            sub_10013A4A0();
            v147 = v164;
          }
        }

        else
        {
          sub_1000C3328(v152, isUniquelyReferenced_nonNull_native);
          v147 = sub_100063C84(v305, v299);
          if ((v153 & 1) != (v154 & 1))
          {
            goto LABEL_180;
          }
        }

        v155 = v301 | (v300 >> 8);
        if (v153)
        {
          v156 = v147;

          v298 = v318;
          v157 = *(v318 + 56) + 24 * v156;
          *v157 = v285;
          *(v157 + 4) = v286;
          *(v157 + 8) = v302;
          *(v157 + 16) = v155 & 1;
          sub_100166900(v268, type metadata accessor for State.Logger);
        }

        else
        {
          v158 = v318;
          *(v318 + 8 * (v147 >> 6) + 64) |= 1 << v147;
          v159 = (v158[6] + 16 * v147);
          v160 = v299;
          *v159 = v305;
          v159[1] = v160;
          v161 = v158[7] + 24 * v147;
          *v161 = v285;
          *(v161 + 4) = v286;
          *(v161 + 8) = v302;
          *(v161 + 16) = v155 & 1;
          sub_100166900(v268, type metadata accessor for State.Logger);
          v162 = v158[2];
          v151 = __OFADD__(v162, 1);
          v163 = v162 + 1;
          if (v151)
          {
            goto LABEL_179;
          }

          v298 = v158;
          v158[2] = v163;
        }

        v81 = v310;
        v86 = v339;
        v301 = v340;
        v302 = *(&v339 + 1);
        v279 = 1;
        LODWORD(v305) = BYTE8(v340);
      }

      else
      {
        sub_100020D58(v113, v302, v301, 1);

        v301 = 0;
        v302 = 0;
        *(v5 + 176) = 0;
        *(v5 + 184) = 0;
        *(v5 + 168) = v122;
        v86 = v122;
        *(v5 + 192) = 1;
        v81 = v310;
        v87 = v306;
        v82 = v307;
      }

      continue;
    }

    break;
  }

  v120 = (v117 + 32);
  v121 = (v91 + 32);
  while (v118)
  {
    if (*v120 != *v121)
    {
      goto LABEL_54;
    }

    ++v120;
    ++v121;
    if (!--v118)
    {
      goto LABEL_69;
    }
  }

LABEL_171:
  __break(1u);
LABEL_172:

  v258 = v267 != 0;
  sub_1001318D0(v330, v5 + v294, v5, v5);

  return v258;
}

uint64_t sub_100159B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v8 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ClientCommand(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000102DC(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100025F40(v11, &qword_1005D0F28, &qword_1004D6018);
    return v22(a1, a5);
  }

  sub_10016680C(v11, v16, type metadata accessor for ClientCommand);
  v17 = *(a2 + 272);
  v18 = *(a2 + 280);
  v19 = *(a2 + 264);

  LOBYTE(v19) = sub_10012304C(v16, v19, v17);

  sub_100166900(v16, type metadata accessor for ClientCommand);
  if (v19)
  {
    return v22(a1, a5);
  }

  return 0;
}

int64_t sub_100159D68()
{
  v1 = type metadata accessor for State.Logger();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v17[-v6];
  v8 = type metadata accessor for StateWithTasks();
  sub_1001669C8(v0 + *(v8 + 28), v7, type metadata accessor for State.Logger);
  v9 = *(*(v0 + 272) + 16);
  v18 = v0 + 264;
  v19 = v7;
  result = sub_10015C69C(sub_100124D14, v17);
  v11 = *(*(v0 + 272) + 16);
  if (v11 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1001649EC(result, v11, sub_100087480, type metadata accessor for RunningTask);
    v12 = *(*(v0 + 272) + 16);
    if (v9 != v12)
    {
      sub_1001669C8(v7, v5, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v13 = sub_1004A4A54();
      v14 = sub_1004A5FF4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 68158208;
        *(v15 + 4) = 2;
        *(v15 + 8) = 256;
        v16 = v5[*(v1 + 20)];
        sub_100166900(v5, type metadata accessor for State.Logger);
        *(v15 + 10) = v16;
        *(v15 + 11) = 2048;
        *(v15 + 13) = v9 - v12;
        _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx] Pruned %ld completed tasks.", v15, 0x15u);
      }

      else
      {
        sub_100166900(v5, type metadata accessor for State.Logger);
      }
    }

    sub_100166900(v7, type metadata accessor for State.Logger);
    return v9 == v12;
  }

  return result;
}

Swift::Void __swiftcall StateWithTasks.logForDidCreateFirstConnection()()
{
  v1 = 0;
  v161 = type metadata accessor for StateWithTasks();
  v2 = *(*(v161 - 8) + 64);
  v3 = __chkstk_darwin(v161);
  v157 = v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v171 = v143 - v6;
  __chkstk_darwin(v5);
  v8 = v143 - v7;
  v158 = type metadata accessor for State.Logger();
  v9 = *(*(v158 - 8) + 64);
  v10 = __chkstk_darwin(v158);
  v156 = v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v143 - v12;
  v162 = v0;
  v14 = *(v0 + 64);
  *&v176 = _swiftEmptySetSingleton;
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v160 = 0;
  if (v17)
  {
    while (1)
    {
      v19 = v1;
LABEL_9:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      sub_100088064(&v174, *(*(v14 + 56) + ((v19 << 11) | (32 * v20))));
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v1 + 1;
    if (__OFADD__(v1, 1))
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
      return;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 64 + 8 * v19);
    ++v1;
    if (v17)
    {
      v1 = v19;
      goto LABEL_9;
    }
  }

  v21 = v176;
  v22 = v161;
  v23 = v162;
  v159 = *(v161 + 28);
  sub_1001669C8(v162 + v159, v13, type metadata accessor for State.Logger);
  sub_1001669C8(v23, v8, type metadata accessor for StateWithTasks);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v24 = v171;
  sub_1001669C8(v23, v171, type metadata accessor for StateWithTasks);

  v25 = sub_1004A4A54();
  v26 = sub_1004A4A74();
  v27 = *(v26 - 8);
  v154 = *(v27 + 8);
  v155 = v26;
  v153 = v27 + 8;
  v154(v13);
  v28 = sub_1004A6034();

  v170 = v25;
  if (os_log_type_enabled(v25, v28))
  {
    v29 = swift_slowAlloc();
    LODWORD(v168) = v28;
    v30 = v29;
    v169 = swift_slowAlloc();
    *&v176 = v169;
    *v30 = 68158978;
    *(v30 + 4) = 2;
    *(v30 + 8) = 256;
    v31 = v8[*(v22 + 28) + *(v158 + 20)];
    v167 = type metadata accessor for StateWithTasks;
    sub_100166900(v8, type metadata accessor for StateWithTasks);
    *(v30 + 10) = v31;
    *(v30 + 11) = 2048;
    *(v30 + 13) = *(v14 + 16);

    *(v30 + 21) = 2082;
    v32 = v160;
    v33 = sub_100154E94(v14);
    v166 = v32;
    v174 = v33;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
    v34 = sub_1004A5614();
    v36 = v35;

    v37 = sub_10015BA6C(v34, v36, &v176);

    *(v30 + 23) = v37;
    *(v30 + 31) = 2082;
    v38 = v166;
    v39 = sub_1001550D8(v21);
    v160 = v38;

    v174 = v39;
    v23 = v162;
    v40 = sub_1004A5614();
    v42 = v41;

    v43 = sub_10015BA6C(v40, v42, &v176);

    *(v30 + 33) = v43;
    *(v30 + 41) = 2082;
    if (*(v171 + 25))
    {
      v44 = 0x756F72676B636162;
    }

    else
    {
      v44 = 0x656C6269736976;
    }

    if (*(v171 + 25))
    {
      v45 = 0xEC0000006465646ELL;
    }

    else
    {
      v45 = 0xE700000000000000;
    }

    sub_100166900(v171, v167);
    v46 = sub_10015BA6C(v44, v45, &v176);

    *(v30 + 43) = v46;
    v47 = v170;
    _os_log_impl(&_mh_execute_header, v170, v168, "[%.*hhx] [1st connection] Running sync requests %ld: {%{public}s}, kinds: %{public}s; App state: %{public}s", v30, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100166900(v8, type metadata accessor for StateWithTasks);

    swift_bridgeObjectRelease_n();
    sub_100166900(v24, type metadata accessor for StateWithTasks);
  }

  if (*(v23 + 192) == 1)
  {
    v48 = *(v23 + 168);
    v49 = sub_100012C04();
    v52 = sub_100187138(v49, v51, v50 & 1);
    v54 = v53;
    v56 = v55;
    v57 = *(v23 + *(v161 + 32));
    *(v188 + 12) = *(v23 + 228);
    v58 = *(v23 + 216);
    v187[2] = *(v23 + 200);
    v188[0] = v58;
    v59 = *(v23 + 184);
    v187[0] = *(v23 + 168);
    v187[1] = v59;
    sub_10014F954(v187, &v176);
    v164 = v56;
    sub_10018C458(v52, v54, v56, v23 + v159, v57, v187);
    sub_10014F9B0(v187);
    v61 = v54;
    v170 = *(v48 + 16);
    v171 = v48;
    if (v170)
    {
      v165 = 0;
      v62 = 0;
      v169 = v171 + 32;
      v63 = (v54 + 32);
      v163 = v164 + 32;
      *&v60 = 68160515;
      v146 = v60;
      v167 = (v54 + 32);
      v168 = v54;
      while (1)
      {
        if (v62 >= *(v171 + 16))
        {
          goto LABEL_117;
        }

        v64 = (v169 + 176 * v62);
        v65 = *v64;
        v66 = v64[2];
        v177 = v64[1];
        v178 = v66;
        v176 = v65;
        v67 = v64[3];
        v68 = v64[4];
        v69 = v64[6];
        v181 = v64[5];
        v182 = v69;
        v179 = v67;
        v180 = v68;
        v70 = v64[7];
        v71 = v64[8];
        v72 = v64[10];
        v185 = v64[9];
        v186 = v72;
        v183 = v70;
        v184 = v71;
        v73 = v177;
        v74 = DWORD2(v177);
        v75 = DWORD1(v181);
        v76 = BYTE8(v181);
        ++v62;
        v77 = *(v61 + 16);
        if (v52)
        {
          sub_10015C0B4(v177, DWORD2(v177), v63, v77, (v52 + 16));
          if ((v78 & 1) == 0)
          {
            LODWORD(v166) = v75;
            v79 = 0;
            v77 = *(v61 + 16);
            goto LABEL_57;
          }
        }

        else if (v77)
        {
          for (i = 0; i != v77; ++i)
          {
            v81 = (v63 + 16 * i);
            if ((v81[2] | (v81[2] << 32)) == (DWORD2(v177) | (DWORD2(v177) << 32)))
            {
              v82 = *v81;
              v83 = *(*v81 + 16);
              if (v83 == *(v177 + 16))
              {
                if (!v83 || v82 == v177)
                {
LABEL_40:
                  LODWORD(v166) = DWORD1(v181);
                  v79 = 0;
                  goto LABEL_41;
                }

                v84 = (v82 + 32);
                v85 = (v177 + 32);
                while (*v84 == *v85)
                {
                  ++v84;
                  ++v85;
                  if (!--v83)
                  {
                    goto LABEL_40;
                  }
                }
              }
            }
          }
        }

        if (v165 > 7)
        {
          goto LABEL_25;
        }

        LODWORD(v166) = v75;
        v77 = *(v61 + 16);
        v79 = 1;
        if (!v52)
        {
LABEL_41:
          if (!v77)
          {
            goto LABEL_58;
          }

          v86 = 0;
          while (1)
          {
            v87 = (v63 + 16 * v86);
            if ((v87[2] | (v87[2] << 32)) == (v74 | (v74 << 32)))
            {
              v88 = *v87;
              v89 = *(*v87 + 16);
              if (v89 == *(v73 + 16))
              {
                break;
              }
            }

LABEL_43:
            if (++v86 == v77)
            {
              goto LABEL_58;
            }
          }

          if (v89)
          {
            v90 = v88 == v73;
          }

          else
          {
            v90 = 1;
          }

          if (!v90)
          {
            v91 = (v88 + 32);
            v92 = (v73 + 32);
            while (v89)
            {
              if (*v91 != *v92)
              {
                goto LABEL_43;
              }

              ++v91;
              ++v92;
              if (!--v89)
              {
                goto LABEL_60;
              }
            }

            goto LABEL_116;
          }

          goto LABEL_60;
        }

LABEL_57:
        v93 = sub_10015C0B4(v73, v74, v63, v77, (v52 + 16));
        if (v94)
        {
LABEL_58:
          sub_10000E08C(&v176, &v174);
          v95 = 63740;
          goto LABEL_62;
        }

        v86 = v93;

        if ((v86 & 0x8000000000000000) != 0)
        {
          goto LABEL_118;
        }

LABEL_60:
        if (v86 >= *(v164 + 16))
        {
          goto LABEL_119;
        }

        v95 = *(v163 + 2 * v86);
        sub_10000E08C(&v176, &v174);

LABEL_62:
        v96 = BYTE12(v182);
        v97 = *(*(&v184 + 1) + 16);
        v98 = *(v185 + 16) != 0;
        v99 = *(*(&v185 + 1) + 16) != 0;
        if (v76)
        {
          if (v97 == 0 && *(v185 + 16) == 0 && *(*(&v185 + 1) + 16) == 0)
          {
            if ((v79 & 1) == 0)
            {
              LODWORD(v166) = v79;
              v100 = __OFADD__(v165++, 1);
              if (v100)
              {
                goto LABEL_121;
              }

              v98 = 0;
              v99 = 0;
              v151 = 0;
LABEL_78:
              v147 = v95;
              v148 = *(&v184 + 1);
              v149 = v96;
              v150 = v184;
              v144 = DWORD2(v182);
              v145 = *(&v183 + 1);
              v103 = 0;
              v102 = 0xE000000000000000;
              goto LABEL_79;
            }

            goto LABEL_24;
          }

          goto LABEL_74;
        }

        if (BYTE12(v182))
        {
          if (v97 == 0 && *(v185 + 16) == 0 && *(*(&v185 + 1) + 16) == 0)
          {
            if (!v79)
            {
              LODWORD(v166) = 0;
              v100 = __OFADD__(v165++, 1);
              if (v100)
              {
                goto LABEL_122;
              }

              v98 = 0;
              v99 = 0;
              v96 = 1;
              v151 = 1;
              goto LABEL_78;
            }

            goto LABEL_24;
          }

          v96 = 1;
LABEL_74:
          v101 = v76 ^ 1;
LABEL_75:
          v100 = __OFADD__(v165++, 1);
          if (v100)
          {
            goto LABEL_120;
          }

          LODWORD(v166) = v79;
          v151 = v101;
          if (!v97)
          {
            goto LABEL_78;
          }

          v147 = v95;
          v148 = *(&v184 + 1);
          v149 = v96;
          v150 = v184;
          v144 = DWORD2(v182);
          v145 = *(&v183 + 1);
          v102 = 0xE100000000000000;
          v103 = 82;
LABEL_79:
          v104 = !v98;
          v105 = 68;
          if (v104)
          {
            v105 = 0;
          }

          v152 = v105;
          if (v104)
          {
            v106 = 0xE000000000000000;
          }

          else
          {
            v106 = 0xE100000000000000;
          }

          v174 = v103;
          v175 = v102;

          v189._countAndFlagsBits = v152;
          v189._object = v106;
          sub_1004A5994(v189);

          v107 = 83;
          if (!v99)
          {
            v107 = 0;
          }

          v152 = v107;
          if (v99)
          {
            v108 = 0xE100000000000000;
          }

          else
          {
            v108 = 0xE000000000000000;
          }

          v190._countAndFlagsBits = v152;
          v190._object = v108;
          sub_1004A5994(v190);

          v109 = 76;
          if (v151)
          {
            v109 = 0;
          }

          v152 = v109;
          if (v151)
          {
            v110 = 0xE000000000000000;
          }

          else
          {
            v110 = 0xE100000000000000;
          }

          v111 = 0xE100000000000000;

          v191._countAndFlagsBits = v152;
          v191._object = v110;
          sub_1004A5994(v191);

          if (v166)
          {
            v112 = 0;
          }

          else
          {
            v112 = 42;
          }

          if (v166)
          {
            v111 = 0xE000000000000000;
          }

          v192._countAndFlagsBits = v112;
          v192._object = v111;
          sub_1004A5994(v192);

          v113 = v175;
          v166 = v174;
          v114 = v162;
          v115 = v156;
          sub_1001669C8(v162 + v159, v156, type metadata accessor for State.Logger);
          v116 = v157;
          sub_1001669C8(v114, v157, type metadata accessor for StateWithTasks);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_10000E08C(&v176, &v174);
          sub_10000E08C(&v176, &v174);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_10000E08C(&v176, &v174);

          v117 = sub_1004A4A54();
          (v154)(v115, v155);
          v118 = sub_1004A6034();

          sub_10000E0E8(&v176);
          sub_10000E0E8(&v176);
          if (os_log_type_enabled(v117, v118))
          {
            v151 = v118;
            v152 = v117;
            v119 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            v143[0] = v113;
            v143[1] = v120;
            v173 = v120;
            *v119 = v146;
            *(v119 + 4) = 2;
            *(v119 + 8) = 256;
            v121 = *(v116 + *(v161 + 28) + *(v158 + 20));
            sub_100166900(v116, type metadata accessor for StateWithTasks);
            *(v119 + 10) = v121;
            *(v119 + 11) = 2048;
            *(v119 + 13) = v165;
            *(v119 + 21) = 1040;
            *(v119 + 23) = 2;
            *(v119 + 27) = 512;
            *(v119 + 29) = WORD6(v186);
            sub_10000E0E8(&v176);
            *(v119 + 31) = 2160;
            *(v119 + 33) = 0x786F626C69616DLL;
            *(v119 + 41) = 2085;
            v174 = v73;
            LODWORD(v175) = v74;

            v122 = sub_1004A5824();
            v124 = sub_10015BA6C(v122, v123, &v173);

            *(v119 + 43) = v124;
            *(v119 + 51) = 2082;
            v125 = sub_10015BA6C(v166, v143[0], &v173);

            *(v119 + 53) = v125;
            *(v119 + 61) = 2082;
            if ((~v147 & 0xF8FC) != 0)
            {
              v127 = sub_100186D4C(v147);
              v126 = v128;
            }

            else
            {
              v126 = 0xE100000000000000;
              v127 = 47;
            }

            v129 = sub_10015BA6C(v127, v126, &v173);

            *(v119 + 63) = v129;
            *(v119 + 71) = 2082;
            v130 = v160;
            v131 = sub_1001552FC(v148);
            v160 = v130;
            v174 = v131;
            sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
            sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
            v132 = 0xE100000000000000;
            v133 = sub_1004A5614();
            v135 = v134;

            v136 = sub_10015BA6C(v133, v135, &v173);

            *(v119 + 73) = v136;
            *(v119 + 81) = 2082;
            if (v149)
            {
              v137 = 47;
            }

            else
            {
              v174 = 0;
              v175 = 0xE000000000000000;
              v172 = v144;
              sub_1004A6934();
              v137 = v174;
              v132 = v175;
            }

            v138 = sub_10015BA6C(v137, v132, &v173);

            *(v119 + 83) = v138;
            *(v119 + 91) = 2082;
            if (v150)
            {
              v139 = 0xE100000000000000;
              v140 = 47;
            }

            else
            {
              v174 = v145;
              v140 = sub_1004A6CE4();
              v139 = v141;
            }

            v142 = sub_10015BA6C(v140, v139, &v173);

            *(v119 + 93) = v142;
            v117 = v152;
            _os_log_impl(&_mh_execute_header, v152, v151, "[%.*hhx] {%ld} [1st connection] Mailbox: {%.*hx} '%{sensitive,mask.mailbox}s' %{public}s, %{public}s, {%{public}s} last sync:  {local: %{public}s, remote: %{public}s}", v119, 0x65u);
            swift_arrayDestroy();
          }

          else
          {
            sub_100166900(v116, type metadata accessor for StateWithTasks);
            sub_10000E0E8(&v176);
          }

          sub_10000E0E8(&v176);
          v63 = v167;
          v61 = v168;
          if (v62 == v170)
          {
            break;
          }
        }

        else
        {
          if (v97 != 0 || *(v185 + 16) != 0 || *(*(&v185 + 1) + 16) != 0 || (v79 & 1) == 0)
          {
            v96 = 0;
            v101 = DWORD2(v182) < v166;
            goto LABEL_75;
          }

LABEL_24:
          sub_10000E0E8(&v176);
          v63 = v167;
          v61 = v168;
LABEL_25:
          if (v62 == v170)
          {
            break;
          }
        }
      }
    }
  }
}

void *StateWithTasks.selectedMailboxes.getter()
{
  result = _swiftEmptySetSingleton;
  if (*(v0 + 192) == 1)
  {
    v2 = *(v0 + 168);
    v10 = _swiftEmptySetSingleton;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 128);
      v5 = v4;
      do
      {
        v6 = *v5;
        v5 += 22;
        if (v6)
        {
          v7 = *(v4 - 18);
          v8 = *(v4 - 10);

          sub_100088220(&v9, v8, v7);
        }

        v4 = v5;
        --v3;
      }

      while (v3);
      return v10;
    }
  }

  return result;
}

uint64_t StateWithTasks.failOldBackgroundSyncRequests()()
{
  v0 = static MonotonicTime.now()();

  return sub_10013270C(v0);
}

Swift::Void __swiftcall StateWithTasks.logSyncRequests()()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = type metadata accessor for StateWithTasks();
  sub_100132E80(v3, v1, v2, v0 + *(v4 + 28));
}

Swift::Void __swiftcall StateWithTasks.logLongRunningSyncRequests(now:)(IMAP2Helpers::MonotonicTime now)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = type metadata accessor for StateWithTasks();
  sub_100134318(now.rawValue, v1 + *(v3 + 28));
}

Swift::Void __swiftcall StateWithTasks.logLongRunningTasks(now:)(IMAP2Helpers::MonotonicTime now)
{
  v2 = v1;
  v4 = type metadata accessor for RunningTask();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 272);
  v10 = type metadata accessor for StateWithTasks();
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = *(v10 + 28);
    v13 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_1001669C8(v13, v8, type metadata accessor for RunningTask);
      sub_1001178C8(now.rawValue, v2 + v12);
      sub_100166900(v8, type metadata accessor for RunningTask);
      v13 += v14;
      --v11;
    }

    while (v11);
  }
}

void *sub_10015B320(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_10015B638(a1, a2, a3, a4, a5, a6);
  v8 = result[2];
  if (v8)
  {
    v9 = v8 + 1;
    v10 = 1 - v8;
    v11 = result + 6;
    v12 = 0.0;
    while (1)
    {
      if (*v11)
      {
        v12 = v12 + 1.0;
        if (!v10)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v13 = *(v11 - 1);
        v14 = __OFSUB__(v9, v13);
        v15 = v9 - v13;
        if (v14)
        {
          goto LABEL_23;
        }

        v12 = v12 + v15;
        if (!v10)
        {
LABEL_8:
          v26 = result;
          sub_100092348(0, v8, 0);
          result = v26;
          v16 = v26 + 7;
          do
          {
            v18 = *(v16 - 3);
            v17 = *(v16 - 2);
            v19 = *v16;
            if (*v16 <= a1)
            {
              v20 = a1 - v19;
              if (__OFSUB__(a1, v19))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (__OFSUB__(*v16, a1))
              {
                goto LABEL_24;
              }

              v20 = a1 - *v16;
              if (__OFSUB__(0, *v16 - a1))
              {
                goto LABEL_26;
              }
            }

            v21 = 5.0;
            if ((*(v16 - 1) & 1) == 0)
            {
              v14 = __OFSUB__(v9, v17);
              v22 = v9 - v17;
              if (v14)
              {
                goto LABEL_27;
              }

              v21 = v22 * 5.0;
            }

            v24 = _swiftEmptyArrayStorage[2];
            v23 = _swiftEmptyArrayStorage[3];
            if (v24 >= v23 >> 1)
            {
              sub_100092348((v23 > 1), v24 + 1, 1);
              result = v26;
            }

            v16 += 4;
            _swiftEmptyArrayStorage[2] = v24 + 1;
            v25 = &_swiftEmptyArrayStorage[2 * v24];
            *(v25 + 4) = v18;
            v25[5] = v20 / 1000000000.0 + v21 / v12;
            --v8;
          }

          while (v8);
          break;
        }
      }

      ++v10;
      v11 += 32;
      if (v10 == 1)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}