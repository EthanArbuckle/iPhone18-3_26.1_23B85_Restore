uint64_t sub_10009E3BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = _swiftEmptyArrayStorage;
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;

      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_100091AE8(0, v7[2] + 1, 1);
          v7 = v22;
        }

        v13 = v7[2];
        v12 = v7[3];
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_100091AE8((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        v7[2] = v14;
        v15 = &v7[3 * v13];
        *(v15 + 8) = v8;
        v15[5] = v10;
        v15[6] = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_16:

    return v7;
  }

  return result;
}

uint64_t sub_10009E544(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = _swiftEmptyArrayStorage;
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;

      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_100091C08(0, v7[2] + 1, 1);
          v7 = v22;
        }

        v13 = v7[2];
        v12 = v7[3];
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_100091C08((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        v7[2] = v14;
        v15 = &v7[3 * v13];
        *(v15 + 8) = v8;
        v15[5] = v10;
        v15[6] = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_16:

    return v7;
  }

  return result;
}

void sub_10009E6CC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_10000E268(a3 + v15 + v16 * v13, v12, &qword_1005CEA38, &qword_1004D14F0);
      v17 = a1(v12);
      if (v3)
      {
        sub_100025F40(v12, &qword_1005CEA38, &qword_1004D14F0);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_100025FDC(v12, v24, &qword_1005CEA38, &qword_1004D14F0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100091DC8(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_100091DC8(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        sub_100025FDC(v24, v14 + v15 + v20 * v16, &qword_1005CEA38, &qword_1004D14F0);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_100025F40(v12, &qword_1005CEA38, &qword_1004D14F0);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_10009E950(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v25 = *(SearchResult - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(SearchResult - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1000B4820(a3 + v15 + v16 * v13, v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v17 = a1(v12);
      if (v3)
      {
        sub_1000B35D0(v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1000B4888(v12, v24, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100091EE8(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_100091EE8(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        sub_1000B4888(v24, v14 + v15 + v20 * v16, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_1000B35D0(v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_10009EBDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 49);
    v7 = _swiftEmptyArrayStorage;
    while (v5 < *(v4 + 16))
    {
      v12 = *(v6 - 17);
      v13 = *(v6 - 9);
      v14 = *(v6 - 1);
      v15 = *v6;
      v19 = v12;
      v20 = v13;
      v21 = v14;
      v22 = v15;
      result = v18(&v19);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v23 = v7;
        if ((result & 1) == 0)
        {
          result = sub_100091FA8(0, v7[2] + 1, 1);
          v7 = v23;
        }

        v9 = v7[2];
        v8 = v7[3];
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          result = sub_100091FA8((v8 > 1), v9 + 1, 1);
          v10 = v9 + 1;
          v3 = 0;
          v7 = v23;
        }

        v7[2] = v10;
        v11 = &v7[3 * v9];
        *(v11 + 8) = v12;
        v11[5] = v13;
        *(v11 + 48) = v14;
        *(v11 + 49) = v15;
        v4 = a3;
      }

      ++v5;
      v6 += 24;
      if (v17 == v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_15:

    return v7;
  }

  return result;
}

uint64_t sub_10009EE10(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(BOOL, uint64_t, uint64_t))
{
  v7 = a3;
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = a4;
    v10 = result;
    v11 = 0;
    v12 = (a3 + 48);
    v13 = _swiftEmptyArrayStorage;
    v25 = result;
    v24 = *(a3 + 16);
    while (v11 < *(v7 + 16))
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      v29 = *(v12 - 4);
      v30 = v14;
      v31 = v15;
      v9();
      v16 = v10(&v29);
      if (v6)
      {
        a5(v30, v31);

        goto LABEL_15;
      }

      if (v16)
      {
        v17 = v29;
        v19 = v30;
        v18 = v31;
        result = swift_isUniquelyReferenced_nonNull_native();
        v32 = v13;
        if ((result & 1) == 0)
        {
          result = a6(0, v13[2] + 1, 1);
          v13 = v32;
        }

        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          result = a6(v20 > 1, v21 + 1, 1);
          v13 = v32;
        }

        v13[2] = v21 + 1;
        v22 = &v13[3 * v21];
        *(v22 + 8) = v17;
        v22[5] = v19;
        v22[6] = v18;
        v9 = a4;
        v7 = a3;
        v10 = v25;
        v8 = v24;
      }

      else
      {
        result = (a5)(v30, v31);
      }

      ++v11;
      v12 += 3;
      if (v8 == v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_10009EFD8(uint64_t a1, void (*a2)(_BYTE *__return_ptr, _BYTE *), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a2;
    v6 = 0;
    v7 = a1 + 32;
    v8 = *(a4 + 16);
    v38 = (a4 + 32);
    v9 = _swiftEmptyArrayStorage;
    v36 = a1 + 32;
    do
    {
      v20 = (v7 + 24 * v6);
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = *(v20 + 16);
      LOBYTE(v20) = *(v20 + 17);
      *v40 = v21;
      *&v40[8] = v22;
      v40[16] = v23;
      v40[17] = v20;
      v5(v39, v40);
      if (v8)
      {
        v24 = *v39;
        v25 = v38;
        v26 = v8;
        while (1)
        {
          v27 = v25[9];
          *&v40[128] = v25[8];
          *&v40[144] = v27;
          *&v40[160] = v25[10];
          *&v40[169] = *(v25 + 169);
          v28 = v25[5];
          *&v40[64] = v25[4];
          *&v40[80] = v28;
          v29 = v25[7];
          *&v40[96] = v25[6];
          *&v40[112] = v29;
          v30 = v25[1];
          *v40 = *v25;
          *&v40[16] = v30;
          v31 = v25[3];
          *&v40[32] = v25[2];
          *&v40[48] = v31;
          if (*v39 == *v40)
          {
            break;
          }

          v25 += 12;
          if (!--v26)
          {
            goto LABEL_4;
          }
        }

        sub_10001025C(v40, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000866F0(0, v9[2] + 1, 1, v9);
        }

        v33 = v9[2];
        v32 = v9[3];
        if (v33 >= v32 >> 1)
        {
          v9 = sub_1000866F0((v32 > 1), v33 + 1, 1, v9);
        }

        *&v39[132] = *&v40[136];
        *&v39[148] = *&v40[152];
        *&v39[164] = *&v40[168];
        v39[180] = v40[184];
        *&v39[68] = *&v40[72];
        *&v39[84] = *&v40[88];
        *&v39[100] = *&v40[104];
        *&v39[116] = *&v40[120];
        *&v39[4] = *&v40[8];
        *&v39[20] = *&v40[24];
        *&v39[36] = *&v40[40];
        *&v39[52] = *&v40[56];
        v9[2] = v33 + 1;
        v10 = &v9[24 * v33];
        *(v10 + 8) = v24;
        v11 = *v39;
        v12 = *&v39[16];
        v13 = *&v39[32];
        *(v10 + 84) = *&v39[48];
        *(v10 + 68) = v13;
        *(v10 + 52) = v12;
        *(v10 + 36) = v11;
        v14 = *&v39[64];
        v15 = *&v39[80];
        v16 = *&v39[96];
        *(v10 + 148) = *&v39[112];
        *(v10 + 132) = v16;
        *(v10 + 116) = v15;
        *(v10 + 100) = v14;
        v17 = *&v39[128];
        v18 = *&v39[144];
        v19 = *&v39[160];
        *(v10 + 209) = *&v39[173];
        *(v10 + 196) = v19;
        *(v10 + 180) = v18;
        *(v10 + 164) = v17;
        v7 = v36;
        v5 = a2;
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v4);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v9[2])
  {
    sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
    v34 = sub_1004A6A74();
  }

  else
  {
    v34 = &_swiftEmptyDictionarySingleton;
  }

  *v40 = v34;
  sub_1000B2F70(v9, 1, v40);

  return *v40;
}

uint64_t sub_10009F2AC(uint64_t a1)
{
  sub_100016D2C();
  result = sub_1004A7114();
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = MessageIdentifierSet.insert(_:)(v12, &v11, v10))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(a1 + 48) + ((v8 << 8) | (4 * v9)));
    v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009F3CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = sub_10002587C(a1, v9);
  v12 = sub_10012154C(v11, a2, a3, v9, v10);
  if ((v12 & 1) != 0 && (a5 & 1) == 0)
  {
    v13 = a1[3];
    v14 = a1[4];
    sub_10002587C(a1, v13);
    v12 = (*(v14 + 56))(v13, v14) ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_10009F468(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 172);
  v6 = *(a5 + 8);
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  v10[0] = *a5;
  v10[1] = v6;
  v11 = v5;
  v12 = v7;
  v13 = v8;
  return sub_10012182C(v10, a1 & 1, a2) & 1;
}

uint64_t sub_10009F4BC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, void *a8@<X8>)
{
  v66 = a7;
  v68 = a8;
  v69 = a5;
  v13 = type metadata accessor for MailboxSyncState();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3[12];
  if (v17)
  {
    HIDWORD(v64) = a1;
    v18 = v17 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v19 = _s13SelectedStateV7WrappedVMa(0);
    sub_1000B4820(v18 + *(v19 + 20), v16, type metadata accessor for MailboxSyncState);
    v65 = v17;

    v20 = sub_1000D2C78(a2 & 0x101010101FFFF01);
    v22 = v21;
    v24 = v23;
    sub_1000B35D0(v16, type metadata accessor for MailboxSyncState);
    if ((sub_100014D94(0, v20) & 1) != 0 && (sub_100014D94(0, v22) & 1) == 0 && ((sub_100167D14(v20, v22) & 1) == 0 || (sub_100014D94(0, v24) & 1) == 0))
    {
      v63 = v68;
      *v68 = v65;
      v63[1] = v20;
      v63[2] = v22;
      v63[3] = v24;
      *(v63 + 40) = 0;
      goto LABEL_22;
    }

    v67 = a6;

    v25 = *(a3 + 43);
    v26 = *a3;
    v27 = a3[1];
    v28 = a3[2];
    v29 = a4;
    v30 = *(a3 + 6);
    swift_bridgeObjectRetain_n();

    *(&v76 + 1) = sub_1000CE570(&off_100599030);
    LOBYTE(v77) = 1;
    v81 = 0u;
    v82 = 0u;
    v83 = 256;
    *&v74 = v26;
    *(&v74 + 1) = v27;
    LOWORD(v75) = v25;
    *(&v75 + 1) = v28;
    LODWORD(v76) = v30;
    v70 = v28;
    v71 = v30;
    *(&v77 + 1) = &type metadata for ReSyncMailbox;
    sub_100026044();
    sub_1004A6674();
    DWORD2(v80) = *(a3 + 8);
    BYTE12(v80) = *(a3 + 36);
    *(&v80 + 13) = WORD2(v64);
    LOWORD(v93) = v83;
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v89 = v79;
    v84 = v74;
    v85 = v75;
    v91 = v81;
    v92 = v82;
    v90 = v80;
    *(&v93 + 1) = _swiftEmptyArrayStorage;
    v94 = _swiftEmptyArrayStorage;
    sub_10000E268(&v84, &v74, &qword_1005CF510, &qword_1004D2788);
    if ((sub_100012728(&v77 + 1, v29) & 1) == 0)
    {
      if (!*(v69 + 16) || (v37 = sub_100063B5C(*(&v75 + 1), v76), (v38 & 1) == 0) || (v39 = *(*(v69 + 56) + 8 * v37), , v40 = , v41 = sub_10012DF2C(v40, v39), , , (v41 & 1) != 0))
      {
        if ((v66 & 1) != 0 || (v77 & 1) == 0)
        {
          sub_100025F40(&v74, &qword_1005CF510, &qword_1004D2788);
          v42 = sub_10000C9C0(&qword_1005CF510, &qword_1004D2788);
          v43 = v68;
          v68[3] = v42;
          v43[4] = sub_1000B458C(&qword_1005CF518, &qword_1005CF510, &qword_1004D2788);
          v44 = swift_allocObject();
          *v43 = v44;
          v45 = v93;
          *(v44 + 144) = v92;
          *(v44 + 160) = v45;
          *(v44 + 176) = v94;
          v46 = v89;
          *(v44 + 80) = v88;
          *(v44 + 96) = v46;
          v47 = v91;
          *(v44 + 112) = v90;
          *(v44 + 128) = v47;
          v48 = v85;
          *(v44 + 16) = v84;
          *(v44 + 32) = v48;
          v49 = v87;
          *(v44 + 48) = v86;
          *(v44 + 64) = v49;

LABEL_21:
          *(v43 + 40) = 1;
          goto LABEL_22;
        }
      }
    }

    sub_100025F40(&v74, &qword_1005CF510, &qword_1004D2788);
    sub_100025F40(&v84, &qword_1005CF510, &qword_1004D2788);

    v31 = v68;
    v68[4] = 0;
    *v31 = 0u;
    *(v31 + 1) = 0u;
  }

  else
  {
    v67 = a6;
    v32 = *(a3 + 43);
    v33 = *a3;
    v34 = a3[1];
    v35 = a3[2];
    v36 = *(a3 + 6);
    swift_bridgeObjectRetain_n();

    *(&v76 + 1) = sub_1000CE570(&off_100599058);
    LOBYTE(v77) = 1;
    v81 = 0u;
    v82 = 0u;
    v83 = 256;
    *&v74 = v33;
    *(&v74 + 1) = v34;
    LOWORD(v75) = v32;
    *(&v75 + 1) = v35;
    LODWORD(v76) = v36;
    v72 = v35;
    v73 = v36;
    *(&v77 + 1) = &type metadata for ReSyncMailbox;
    sub_100026044();
    sub_1004A6674();
    DWORD2(v80) = *(a3 + 8);
    BYTE12(v80) = *(a3 + 36);
    *(&v80 + 13) = a1;
    LOWORD(v93) = v83;
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v89 = v79;
    v84 = v74;
    v85 = v75;
    v91 = v81;
    v92 = v82;
    v90 = v80;
    *(&v93 + 1) = _swiftEmptyArrayStorage;
    v94 = _swiftEmptyArrayStorage;
    sub_10000E268(&v84, &v74, &qword_1005CF510, &qword_1004D2788);
    if ((sub_100012728(&v77 + 1, a4) & 1) == 0)
    {
      if (!*(v69 + 16) || (v50 = sub_100063B5C(*(&v75 + 1), v76), (v51 & 1) == 0) || (v52 = *(*(v69 + 56) + 8 * v50), , v53 = , v54 = sub_10012DF2C(v53, v52), , , (v54 & 1) != 0))
      {
        if ((v66 & 1) != 0 || (v77 & 1) == 0)
        {
          sub_100025F40(&v74, &qword_1005CF510, &qword_1004D2788);
          v55 = sub_10000C9C0(&qword_1005CF510, &qword_1004D2788);
          v43 = v68;
          v68[3] = v55;
          v43[4] = sub_1000B458C(&qword_1005CF518, &qword_1005CF510, &qword_1004D2788);
          v56 = swift_allocObject();
          *v43 = v56;
          v57 = v93;
          *(v56 + 144) = v92;
          *(v56 + 160) = v57;
          *(v56 + 176) = v94;
          v58 = v89;
          *(v56 + 80) = v88;
          *(v56 + 96) = v58;
          v59 = v91;
          *(v56 + 112) = v90;
          *(v56 + 128) = v59;
          v60 = v85;
          *(v56 + 16) = v84;
          *(v56 + 32) = v60;
          v61 = v87;
          *(v56 + 48) = v86;
          *(v56 + 64) = v61;
          goto LABEL_21;
        }
      }
    }

    sub_100025F40(&v74, &qword_1005CF510, &qword_1004D2788);
    sub_100025F40(&v84, &qword_1005CF510, &qword_1004D2788);
    v31 = v68;
    *v68 = 0u;
    *(v31 + 1) = 0u;
    v31[4] = 0;
  }

  *(v31 + 40) = -1;
LABEL_22:
}

double sub_10009FBE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t (*a5)(uint64_t *)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void), uint64_t a11, char *a12, unint64_t a13, uint64_t a14, char a15)
{
  v751 = a8;
  v752 = a7;
  v783 = a6;
  v757 = a4;
  v762 = a3;
  v764 = a2;
  v859 = a13;
  v858 = BYTE3(a13);
  v856 = BYTE5(a13);
  v857 = BYTE4(a13);
  v854 = HIBYTE(a13);
  v855 = BYTE6(a13);
  v19 = sub_10000C9C0(&qword_1005CF3C0, &qword_1004D26A8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v719 = v704 - v21;
  v720 = sub_10000C9C0(&qword_1005CF3C8, &qword_1004D26B0);
  v22 = *(*(v720 - 8) + 64);
  v23 = __chkstk_darwin(v720);
  v716 = v704 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v717 = v704 - v25;
  v740 = _s29DetermineMessageBatchesResultOMa(0);
  v26 = *(*(v740 - 8) + 64);
  __chkstk_darwin(v740);
  v741 = v704 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MessageBatches(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v744 = v704 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v731 = v704 - v33;
  v754 = type metadata accessor for PendingPersistenceUpdates();
  v34 = *(*(v754 - 8) + 64);
  __chkstk_darwin(v754);
  v730 = v704 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v771 = type metadata accessor for SearchMailbox();
  v36 = *(*(v771 - 8) + 64);
  __chkstk_darwin(v771);
  v770 = (v704 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v772 = sub_10000C9C0(&qword_1005CF308, &qword_1004D2600);
  v38 = *(*(v772 - 8) + 64);
  __chkstk_darwin(v772);
  v769 = v704 - v39;
  v785 = _s19UserInitiatedSearchV5StateOMa(0);
  v40 = *(*(v785 - 8) + 64);
  __chkstk_darwin(v785);
  v773 = v704 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v784 = _s19UserInitiatedSearchVMa(0);
  v779 = *(v784 - 8);
  v42 = *(v779 + 64);
  __chkstk_darwin(v784);
  v776 = (v704 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v746 = type metadata accessor for DownloadTask(0);
  v44 = *(*(v746 - 8) + 64);
  v45 = __chkstk_darwin(v746);
  v723 = (v704 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __chkstk_darwin(v45);
  v725 = (v704 - v48);
  v49 = __chkstk_darwin(v47);
  v734 = (v704 - v50);
  __chkstk_darwin(v49);
  v742 = (v704 - v51);
  v747 = sub_10000C9C0(&qword_1005CF310, &unk_1004D2608);
  v52 = *(*(v747 - 8) + 64);
  v53 = __chkstk_darwin(v747);
  v722 = v704 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v724 = v704 - v56;
  v57 = __chkstk_darwin(v55);
  v735 = v704 - v58;
  __chkstk_darwin(v57);
  v743 = v704 - v59;
  v60 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v61 = *(*(v60 - 8) + 64);
  v62 = __chkstk_darwin(v60 - 8);
  v713 = v704 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v718 = v704 - v65;
  v66 = __chkstk_darwin(v64);
  v765 = v704 - v67;
  v68 = __chkstk_darwin(v66);
  v750 = v704 - v69;
  v70 = __chkstk_darwin(v68);
  v756 = v704 - v71;
  __chkstk_darwin(v70);
  v780 = v704 - v72;
  v736 = type metadata accessor for MessagesPendingDownloadPerPass();
  v73 = *(*(v736 - 8) + 64);
  v74 = __chkstk_darwin(v736);
  v714 = v704 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __chkstk_darwin(v74);
  v739 = v704 - v77;
  __chkstk_darwin(v76);
  v748 = v704 - v78;
  v733 = type metadata accessor for MessagesPendingDownload();
  v79 = *(*(v733 - 8) + 64);
  v80 = __chkstk_darwin(v733);
  v712 = (v704 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = __chkstk_darwin(v80);
  v715 = (v704 - v83);
  v84 = __chkstk_darwin(v82);
  v721 = v704 - v85;
  v86 = __chkstk_darwin(v84);
  v732 = (v704 - v87);
  v88 = __chkstk_darwin(v86);
  v778 = (v704 - v89);
  v90 = __chkstk_darwin(v88);
  v749 = (v704 - v91);
  v92 = __chkstk_darwin(v90);
  v753 = v704 - v93;
  __chkstk_darwin(v92);
  v781 = v704 - v94;
  v95 = _s29DetermineNewestMessagesResultOMa(0);
  v96 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v98 = v704 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for NewestMessages();
  v728 = *(v99 - 8);
  v729 = v99;
  v100 = *(v728 + 64);
  __chkstk_darwin(v99);
  v102 = v704 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v760 = 0;
  v761 = a1;
  v755 = a13;
  v726 = a13 & 0xFFFF00;
  v777 = a5;
  sub_1000A7A7C(a1, a5, v783, v98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v103 = *v98;
    v104 = *(v98 + 1);
    *a9 = *v98;
    *(a9 + 16) = v104;
    *(a9 + 32) = *(v98 + 4);
    return *&v103;
  }

  v737 = v102;
  v738 = a9;
  sub_1000B4888(v98, v102, type metadata accessor for NewestMessages);
  v768 = *(v15 + 172);
  v105 = *v15;
  v767 = *(v15 + 8);
  v106 = *(v15 + 16);
  v766 = *(v15 + 24);
  v107 = *(v15 + 144);
  v108 = *(v107 + 16);
  v758 = v15;
  v759 = v107;
  v775 = v105;
  v774 = v106;
  v710 = v108;
  if (v108)
  {
    *&v811 = _swiftEmptyArrayStorage;
    v109 = v107;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    sub_100092068(0, v108, 0);
    v110 = v811;
    v111 = (v109 + 48);
    do
    {
      v112 = *(v111 - 1);
      v113 = *v111;
      sub_100014CEC(v112, *v111);
      *&v811 = v110;
      v115 = v110[2];
      v114 = v110[3];
      if (v115 >= v114 >> 1)
      {
        sub_100092068((v114 > 1), v115 + 1, 1);
        v110 = v811;
      }

      v111 += 5;
      v110[2] = v115 + 1;
      v116 = &v110[2 * v115];
      v116[4] = v112;
      v116[5] = v113;
      --v108;
    }

    while (v108);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v110 = _swiftEmptyArrayStorage;
  }

  v117 = sub_1000CE67C(v110);

  v118 = v761 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v745 = _s13SelectedStateV7WrappedVMa(0);
  v119 = *(v745 + 20);
  v711 = v118;
  v120 = v118 + v119;
  v727 = type metadata accessor for MailboxSyncState();
  v121 = *(v120 + v727[14]);
  *&v817 = _swiftEmptySetSingleton;
  BYTE8(v817) = 0;

  v818 = sub_10016324C(_swiftEmptyArrayStorage);
  v122 = sub_10015D510(v121, v117);

  if (v122[2])
  {
    *&v811 = v775;
    *(&v811 + 1) = v767;
    LOWORD(v812) = v768;
    *(&v812 + 1) = v774;
    LODWORD(v813) = v766;
    *&v845 = v774;
    DWORD2(v845) = v766;
    *(&v813 + 1) = v122;
    *&v814 = &type metadata for GetUIDsForDownloadRequests;
    sub_100026044();
    sub_1004A6674();
    v790 = v815;
    v791 = v816;
    v792 = v817;
    v793 = v818;
    v786 = v811;
    v787 = v812;
    v788 = v813;
    v789 = v814;
    sub_1000965C0(&v786, v794);
    *&v794[120] = _swiftEmptyArrayStorage;
    *&v794[128] = _swiftEmptyArrayStorage;
    sub_1000965F8(&v786);
    *&v795[96] = *&v794[96];
    *&v795[112] = *&v794[112];
    *&v795[128] = *&v794[128];
    *&v795[32] = *&v794[32];
    *&v795[48] = *&v794[48];
    *&v795[64] = *&v794[64];
    *&v795[80] = *&v794[80];
    *v795 = *v794;
    *&v795[16] = *&v794[16];
    v123 = sub_10000C9C0(&qword_1005CF318, &qword_1004D2618);
    *&v794[24] = v123;
    v121 = sub_1000B458C(&qword_1005CF320, &qword_1005CF318, &qword_1004D2618);
    *&v794[32] = v121;
    *v794 = swift_allocObject();
    sub_10000E268(v795, *v794 + 16, &qword_1005CF318, &qword_1004D2618);
    v124 = v777(v794);
    sub_1000197E0(v794);
    if (v124)
    {
      swift_bridgeObjectRelease_n();
      v125 = v738;
      v738[3] = v123;
      v125[4] = v121;
      v126 = swift_allocObject();
      *v125 = v126;
      v127 = *&v795[112];
      *(v126 + 112) = *&v795[96];
      *(v126 + 128) = v127;
      *(v126 + 144) = *&v795[128];
      v128 = *&v795[48];
      *(v126 + 48) = *&v795[32];
      *(v126 + 64) = v128;
      v129 = *&v795[80];
      *(v126 + 80) = *&v795[64];
      *(v126 + 96) = v129;
      v130 = *&v795[16];
      *(v126 + 16) = *v795;
      *(v126 + 32) = v130;
      v131 = type metadata accessor for NewestMessages;
      v132 = v737;
      goto LABEL_165;
    }

    sub_100025F40(v795, &qword_1005CF318, &qword_1004D2618);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v133 = v762;
  v134 = v781;
  v135 = v758;
  if (qword_1005CCE28 != -1)
  {
    swift_once();
  }

  v709 = qword_1005DDEF0;
  if ((sub_1000B33E4(qword_1005DDEF0, v764, v133) & 1) == 0)
  {

    v153 = v764;
    v137 = v711;
    v136 = v745;
LABEL_48:
    v847 = 0;
    v845 = 0u;
    v846 = 0u;
    goto LABEL_49;
  }

  v136 = v745;
  v121 = v727;
  v137 = v711;
  v138 = v748;
  sub_1000B4820(v711 + *(v745 + 20) + v727[13] + *(v754 + 28), v748, type metadata accessor for MessagesPendingDownloadPerPass);
  sub_1000B4820(v138, v134, type metadata accessor for MessagesPendingDownload);
  v139 = sub_1000B35D0(v138, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!*(*v134 + 16) && !*(*(v137 + *(v136 + 20) + *(v121 + 14)) + 16))
  {

    sub_1000B35D0(v134, type metadata accessor for MessagesPendingDownload);
    v153 = v764;
    goto LABEL_48;
  }

  v140 = v780;
  v752(v139);
  v141 = v137;
  v142 = v753;
  sub_1000B4820(v134, v753, type metadata accessor for MessagesPendingDownload);
  v143 = v140;
  v144 = v756;
  sub_10000E268(v143, v756, &unk_1005D91B0, &unk_1004CF400);
  v145 = *(v136 + 20);
  v146 = v141;
  v147 = *(v141 + v145 + *(v121 + 14));
  v148 = v749;
  sub_1000B4820(v142, v749, type metadata accessor for MessagesPendingDownload);
  v149 = v750;
  sub_10000E268(v144, v750, &unk_1005D91B0, &unk_1004CF400);
  v150 = swift_allocObject();
  *(v150 + 16) = v147;
  *&v811 = v759;
  *(&v811 + 1) = sub_1000B4908;
  *&v812 = v150;
  *(&v812 + 1) = sub_1000B2F18;
  *&v813 = 0;
  *(&v813 + 1) = sub_1000B2F2C;
  *&v814 = 0;

  v151 = sub_1000B0484(v148, v149, &v811);
  v708 = v152;
  sub_100025F40(v144, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v142, type metadata accessor for MessagesPendingDownload);
  v153 = v764;
  v707 = v151;
  v706 = 0;
  v121 = v708;
  v154 = *(v708 + 16);
  if (v154 > 7)
  {

    v156 = sub_1000B0290(v155, v121 + 32, v154 - 7, (2 * v154) | 1);
    v137 = v146;
LABEL_24:
    v136 = v745;
    goto LABEL_25;
  }

  v223 = v154 - 1;
  v137 = v146;
  v156 = v121;
  if (v154 <= 1)
  {
    goto LABEL_24;
  }

  v224 = *(v121 + 2);
  if (!v224)
  {
    goto LABEL_287;
  }

  if (v223 >= v224)
  {
    goto LABEL_288;
  }

  v225 = *(v121 + 8);
  v782 = *(v121 + 5);
  v226 = *(v121 + 48);
  LODWORD(v763) = *(v121 + 49);
  v227 = 24 * v223;
  v228 = v121 + 24 * v223 + 32;
  v229 = *v228;
  v230 = *(v228 + 8);
  v231 = *(v228 + 16);
  v232 = *(v228 + 17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v156 = v121;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v156 = sub_10013991C(v708);
  }

  *(v156 + 8) = v229;
  *(v156 + 5) = v230;
  v156[48] = v231;
  v156[49] = v232;
  v234 = &v156[v227 + 32];
  *v234 = v225;
  *(v234 + 1) = v782;
  v234[16] = v226;
  v234[17] = v763;
  v133 = v762;
  v153 = v764;
  v137 = v711;
  v136 = v745;
  v121 = v708;
  if (v154 >> 1 != 1)
  {
    v235 = v154 - 2;
    if (v154 != 3)
    {
      v236 = *(v156 + 2);
      if (v236 < 2)
      {
        goto LABEL_287;
      }

      if (v235 >= v236)
      {
        goto LABEL_288;
      }

      v237 = *(v156 + 14);
      v782 = *(v156 + 8);
      LODWORD(v763) = v156[72];
      LODWORD(v705) = v156[73];
      v238 = 24 * v235;
      v239 = &v156[24 * v235];
      v240 = *(v239 + 8);
      v241 = *(v239 + 5);
      v242 = v239[48];
      v243 = v239[49];
      v244 = v156;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v244 = sub_10013991C(v244);
      }

      v156 = v244;
      v245 = &v244[v238];
      *(v244 + 14) = v240;
      *(v244 + 8) = v241;
      v244[72] = v242;
      v244[73] = v243;
      *(v245 + 8) = v237;
      *(v245 + 5) = v782;
      v245[48] = v763;
      v245[49] = v705;
      v133 = v762;
      v153 = v764;
      v137 = v711;
      v136 = v745;
      v121 = v708;
    }

    if (v154 >> 1 == 2)
    {
      goto LABEL_25;
    }

    v246 = v154 - 3;
    if (v154 == 5)
    {
      goto LABEL_25;
    }

    v247 = *(v156 + 2);
    if (v247 >= 3)
    {
      if (v246 < v247)
      {
        v248 = *(v156 + 20);
        v782 = *(v156 + 11);
        v249 = v156[96];
        v250 = v156[97];
        v251 = 24 * v246;
        v252 = &v156[24 * v246];
        v253 = *(v252 + 8);
        v254 = *(v252 + 5);
        v255 = v252[48];
        v256 = v252[49];
        v257 = v156;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v257 = sub_10013991C(v257);
        }

        v156 = v257;
        v258 = &v257[v251];
        *(v257 + 20) = v253;
        *(v257 + 11) = v254;
        v257[96] = v255;
        v257[97] = v256;
        *(v258 + 8) = v248;
        *(v258 + 5) = v782;
        v258[48] = v249;
        v258[49] = v250;
        v133 = v762;
        v153 = v764;
        v137 = v711;
        v136 = v745;
        v121 = v708;
        goto LABEL_25;
      }

LABEL_288:
      __break(1u);
      goto LABEL_289;
    }

LABEL_287:
    __break(1u);
    goto LABEL_288;
  }

LABEL_25:
  v157 = *(v156 + 2);
  if (!v157)
  {

    v135 = v758;
LABEL_47:
    sub_100025F40(v780, &unk_1005D91B0, &unk_1004CF400);

    sub_1000B35D0(v781, type metadata accessor for MessagesPendingDownload);
    goto LABEL_48;
  }

  v158 = *(v137 + *(v136 + 20) + v727[20]);
  v159 = v156 + 32;
  v160 = *(v158 + 16);
  v782 = (v158 + 32);
  v704[1] = v158;
  v763 = v157;
  v161 = v156;

  v705 = v161;
  v162 = v763;

  v163 = 0;
  v164 = _swiftEmptyArrayStorage;
  v165 = v159;
  do
  {
    if (v160)
    {
      v176 = *&v159[24 * v163];
      v177 = v782;
      v178 = v160;
      while (1)
      {
        v179 = *v177;
        v180 = v177[1];
        v181 = v177[3];
        *&v795[32] = v177[2];
        *&v795[48] = v181;
        *v795 = v179;
        *&v795[16] = v180;
        v182 = v177[4];
        v183 = v177[5];
        v184 = v177[7];
        *&v795[96] = v177[6];
        *&v795[112] = v184;
        *&v795[64] = v182;
        *&v795[80] = v183;
        v185 = v177[8];
        v186 = v177[9];
        v187 = v177[10];
        *&v795[169] = *(v177 + 169);
        *&v795[144] = v186;
        *&v795[160] = v187;
        *&v795[128] = v185;
        if (v176 == *v795)
        {
          break;
        }

        v177 += 12;
        if (!--v178)
        {
          goto LABEL_28;
        }
      }

      sub_10001025C(v795, v794);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v164 = sub_1000866F0(0, v164[2] + 1, 1, v164);
      }

      v189 = v164[2];
      v188 = v164[3];
      if (v189 >= v188 >> 1)
      {
        v164 = sub_1000866F0((v188 > 1), v189 + 1, 1, v164);
      }

      *&v794[132] = *&v795[136];
      *&v794[148] = *&v795[152];
      *&v794[164] = *&v795[168];
      v794[180] = v795[184];
      *&v794[68] = *&v795[72];
      *&v794[84] = *&v795[88];
      *&v794[100] = *&v795[104];
      *&v794[116] = *&v795[120];
      *&v794[4] = *&v795[8];
      *&v794[20] = *&v795[24];
      *&v794[36] = *&v795[40];
      *&v794[52] = *&v795[56];
      v164[2] = v189 + 1;
      v166 = &v164[24 * v189];
      *(v166 + 8) = v176;
      v167 = *v794;
      v168 = *&v794[16];
      v169 = *&v794[32];
      *(v166 + 84) = *&v794[48];
      *(v166 + 68) = v169;
      *(v166 + 52) = v168;
      *(v166 + 36) = v167;
      v170 = *&v794[64];
      v171 = *&v794[80];
      v172 = *&v794[96];
      *(v166 + 148) = *&v794[112];
      *(v166 + 132) = v172;
      *(v166 + 116) = v171;
      *(v166 + 100) = v170;
      v173 = *&v794[128];
      v174 = *&v794[144];
      v175 = *&v794[160];
      *(v166 + 209) = *&v794[173];
      *(v166 + 196) = v175;
      *(v166 + 180) = v174;
      *(v166 + 164) = v173;
      v162 = v763;
      v159 = v165;
    }

LABEL_28:
    ++v163;
  }

  while (v163 != v162);
  if (v164[2])
  {
    sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
    v190 = sub_1004A6A74();
  }

  else
  {
    v190 = &_swiftEmptyDictionarySingleton;
  }

  v191 = v775;
  v192 = v774;
  *v795 = v190;
  v193 = v760;
  sub_1000B2F70(v164, 1, v795);
  if (v193)
  {
    goto LABEL_368;
  }

  v760 = 0;
  v194 = v705;

  v782 = *v795;
  v850[0] = v191;
  v850[1] = v767;
  v851 = v768;
  v852 = v192;
  v195 = v766;
  v853 = v766;
  swift_bridgeObjectRetain_n();

  v196 = sub_1000CE570(_swiftEmptyArrayStorage);
  v197 = v742;
  *v742 = v196;
  *(v197 + 8) = 0;
  v198 = v706;
  sub_10003F6A4(v850, v194, v706, v819);
  v199 = *(&v820 + 1);
  v200 = v819[1];
  *(v197 + 64) = v819[0];
  *(v197 + 80) = v200;
  *(v197 + 96) = v820;
  *(v197 + 112) = v821;
  *(v197 + 9) = 0;
  *v795 = v192;
  *&v795[8] = v195;
  v795[12] = 0;
  v795[13] = v198;
  v201 = v746;
  *(v197 + 16) = v746;
  sub_1000B38F4();

  sub_1004A6674();
  v202 = *(v201 + 36);
  v763 = *(v201 + 40);
  v203 = v197 + v202;
  v204 = v192;
  v205 = _s18InProgressMessagesVMa(0);
  v206 = v205[6];
  sub_100016D2C();
  sub_1004A7114();
  v207 = v203 + v205[9];
  sub_1004A7114();
  v208 = v203 + v205[10];
  sub_1004A7114();
  v121 = _swiftEmptyArrayStorage;
  v209 = sub_100162D4C(_swiftEmptyArrayStorage);
  *v203 = v204;
  *(v203 + 8) = v195;
  *(v203 + 16) = v782;
  *(v203 + v205[7]) = _swiftEmptyArrayStorage;
  *(v203 + v205[8]) = _swiftEmptyArrayStorage;
  *(v203 + v205[11]) = v209;
  sub_100045288(v197 + v763);
  sub_1000458FC(v199);

  v210 = v743;
  sub_1000B4888(v197, v743, type metadata accessor for DownloadTask);
  v211 = v747;
  v212 = (v210 + *(v747 + 36));
  *v212 = _swiftEmptyArrayStorage;
  v212[1] = _swiftEmptyArrayStorage;
  *&v795[24] = v211;
  v213 = sub_1000B458C(&qword_1005CF350, &qword_1005CF310, &unk_1004D2608);
  *&v795[32] = v213;
  v214 = sub_1000B3774(v795);
  sub_10000E268(v210, v214, &qword_1005CF310, &unk_1004D2608);
  LOBYTE(v203) = v777(v795);
  sub_1000197E0(v795);
  if ((v203 & 1) == 0)
  {
    sub_100025F40(v210, &qword_1005CF310, &unk_1004D2608);
    v135 = v758;
    v133 = v762;
    v153 = v764;
    v137 = v711;
    v136 = v745;
    v121 = v708;
    goto LABEL_47;
  }

  *(&v846 + 1) = v211;
  v847 = v213;
  v215 = sub_1000B3774(&v845);
  sub_100025FDC(v210, v215, &qword_1005CF310, &unk_1004D2608);
  sub_100025F40(v780, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v781, type metadata accessor for MessagesPendingDownload);
  v216 = v738;
  v135 = v758;
  v133 = v762;
  v153 = v764;
  v137 = v711;
  v136 = v745;
  if (*(&v846 + 1))
  {
    swift_bridgeObjectRelease_n();
    sub_1000B35D0(v737, type metadata accessor for NewestMessages);
    v217 = &v845;
LABEL_106:
    sub_1000B364C(v217, &v786);
    sub_1000B364C(&v786, v216);
    return *&v103;
  }

LABEL_49:
  v218 = a10;
  v216 = a11;
  v743 = v755 >> 16;
  sub_100025F40(&v845, &qword_1005CF328, &unk_1004D2620);
  v708 = a11;
  v742 = a10;
  if (a10(0))
  {

    goto LABEL_111;
  }

  if (sub_1000B33E4(v709, v153, v133))
  {
    v121 = v739;
    sub_1000B4820(v137 + *(v136 + 20) + v727[13] + *(v754 + 28), v739, type metadata accessor for MessagesPendingDownloadPerPass);
    if (v743)
    {
      v218 = v760;
      if (v743 == 1)
      {
        v219 = v778;
        sub_1000B4820(v121 + *(v736 + 20), v778, type metadata accessor for MessagesPendingDownload);
        v220 = sub_1000B35D0(v121, type metadata accessor for MessagesPendingDownloadPerPass);
      }

      else
      {
        v222 = v732;
        sub_1000B4820(v121 + *(v736 + 20), v732, type metadata accessor for MessagesPendingDownload);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v216 = v737;
        if (sub_1004A70C4())
        {
          sub_1000B35D0(v121, type metadata accessor for MessagesPendingDownloadPerPass);
          sub_1000B4820(v222, v778, type metadata accessor for MessagesPendingDownload);
        }

        else
        {
          v259 = v778;
          sub_1000B4820(v222, v778, type metadata accessor for MessagesPendingDownload);
          v260 = __chkstk_darwin(*v222);
          v702 = v216;
          v216 = sub_1000B3DD8(v260, sub_1000B4904);
          v133 = v762;
          sub_1000B35D0(v121, type metadata accessor for MessagesPendingDownloadPerPass);
          v261 = *v259;

          *v259 = v216;
        }

        v220 = sub_1000B35D0(v222, type metadata accessor for MessagesPendingDownload);
        v219 = v778;
      }
    }

    else
    {
      v221 = sub_100163144(_swiftEmptyArrayStorage);
      v219 = v778;
      *v778 = v221;
      v216 = *(v733 + 20);
      sub_100016D2C();
      sub_1004A7114();
      v220 = sub_1000B35D0(v121, type metadata accessor for MessagesPendingDownloadPerPass);
      v218 = v760;
    }

    v262 = *(*v219 + 16);
    v760 = v218;
    if (!v262 && !*(*(v137 + *(v136 + 20) + v727[14]) + 16))
    {

      sub_1000B35D0(v219, type metadata accessor for MessagesPendingDownload);
      v135 = v758;
      goto LABEL_109;
    }

    v263 = v765;
    v752(v220);
    v264 = v137;
    v265 = v753;
    sub_1000B4820(v219, v753, type metadata accessor for MessagesPendingDownload);
    v266 = v756;
    sub_10000E268(v263, v756, &unk_1005D91B0, &unk_1004CF400);
    v267 = v264;
    v268 = *(v264 + *(v136 + 20) + v727[14]);
    v269 = v749;
    sub_1000B4820(v265, v749, type metadata accessor for MessagesPendingDownload);
    v270 = v750;
    sub_10000E268(v266, v750, &unk_1005D91B0, &unk_1004CF400);
    v271 = swift_allocObject();
    *(v271 + 16) = v268;
    *&v845 = v759;
    *(&v845 + 1) = sub_1000B4908;
    *&v846 = v271;
    *(&v846 + 1) = sub_1000B2F18;
    v847 = 0;
    v848 = sub_1000B2F2C;
    v849 = 0;

    v272 = sub_1000B0484(v269, v270, &v845);
    v780 = v273;
    sub_100025F40(v266, &unk_1005D91B0, &unk_1004CF400);
    sub_1000B35D0(v265, type metadata accessor for MessagesPendingDownload);
    v763 = v272;
    LODWORD(v739) = 0;
    v121 = v780;
    v274 = *(v780 + 16);
    if (v274 > 7)
    {

      v276 = sub_1000B0290(v275, v121 + 32, v274 - 7, (2 * v274) | 1);
      v135 = v758;
      v133 = v762;
      v277 = v267;
      v218 = v276;
LABEL_85:
      v278 = *(v218 + 16);
      if (!v278)
      {

        v153 = v764;
        v216 = v778;
LABEL_108:
        sub_100025F40(v765, &unk_1005D91B0, &unk_1004CF400);

        sub_1000B35D0(v216, type metadata accessor for MessagesPendingDownload);
        goto LABEL_109;
      }

      v279 = *(v277 + *(v136 + 20) + v727[20]);
      v280 = v218 + 32;
      v281 = *(v279 + 16);
      v782 = (v279 + 32);
      v707 = v279;

      v732 = v218;

      v282 = 0;
      v283 = _swiftEmptyArrayStorage;
      v284 = v278;
      v781 = v280;
      do
      {
        if (v281)
        {
          v295 = *(v280 + 24 * v282);
          v296 = v782;
          v297 = v281;
          while (1)
          {
            v298 = *v296;
            v299 = v296[1];
            v300 = v296[3];
            *&v795[32] = v296[2];
            *&v795[48] = v300;
            *v795 = v298;
            *&v795[16] = v299;
            v301 = v296[4];
            v302 = v296[5];
            v303 = v296[7];
            *&v795[96] = v296[6];
            *&v795[112] = v303;
            *&v795[64] = v301;
            *&v795[80] = v302;
            v304 = v296[8];
            v305 = v296[9];
            v306 = v296[10];
            *&v795[169] = *(v296 + 169);
            *&v795[144] = v305;
            *&v795[160] = v306;
            *&v795[128] = v304;
            if (v295 == *v795)
            {
              break;
            }

            v296 += 12;
            if (!--v297)
            {
              goto LABEL_88;
            }
          }

          sub_10001025C(v795, v794);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v283 = sub_1000866F0(0, v283[2] + 1, 1, v283);
          }

          v308 = v283[2];
          v307 = v283[3];
          if (v308 >= v307 >> 1)
          {
            v283 = sub_1000866F0((v307 > 1), v308 + 1, 1, v283);
          }

          *&v794[132] = *&v795[136];
          *&v794[148] = *&v795[152];
          *&v794[164] = *&v795[168];
          v794[180] = v795[184];
          *&v794[68] = *&v795[72];
          *&v794[84] = *&v795[88];
          *&v794[100] = *&v795[104];
          *&v794[116] = *&v795[120];
          *&v794[4] = *&v795[8];
          *&v794[20] = *&v795[24];
          *&v794[36] = *&v795[40];
          *&v794[52] = *&v795[56];
          v283[2] = v308 + 1;
          v285 = &v283[24 * v308];
          *(v285 + 8) = v295;
          v286 = *v794;
          v287 = *&v794[16];
          v288 = *&v794[32];
          *(v285 + 84) = *&v794[48];
          *(v285 + 68) = v288;
          *(v285 + 52) = v287;
          *(v285 + 36) = v286;
          v289 = *&v794[64];
          v290 = *&v794[80];
          v291 = *&v794[96];
          *(v285 + 148) = *&v794[112];
          *(v285 + 132) = v291;
          *(v285 + 116) = v290;
          *(v285 + 100) = v289;
          v292 = *&v794[128];
          v293 = *&v794[144];
          v294 = *&v794[160];
          *(v285 + 209) = *&v794[173];
          *(v285 + 196) = v294;
          *(v285 + 180) = v293;
          *(v285 + 164) = v292;
          v278 = v284;
          v280 = v781;
        }

LABEL_88:
        ++v282;
      }

      while (v282 != v278);
      if (v283[2])
      {
        sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
        v309 = sub_1004A6A74();
      }

      else
      {
        v309 = &_swiftEmptyDictionarySingleton;
      }

      v310 = v774;
      v311 = v760;
      *v795 = v309;
      sub_1000B2F70(v283, 1, v795);
      if (!v311)
      {
        v760 = 0;
        v312 = v732;

        v782 = *v795;
        v841[0] = v775;
        v841[1] = v767;
        v842 = v768;
        v843 = v310;
        v313 = v766;
        v844 = v766;
        swift_bridgeObjectRetain_n();

        v314 = sub_1000CE570(_swiftEmptyArrayStorage);
        v136 = v734;
        *v734 = v314;
        *(v136 + 8) = 0;
        v315 = v312;
        LOBYTE(v312) = v739;
        sub_10003F6A4(v841, v315, v739, v822);
        v316 = *(&v823 + 1);
        v317 = v822[1];
        *(v136 + 64) = v822[0];
        *(v136 + 80) = v317;
        *(v136 + 96) = v823;
        *(v136 + 112) = v824;
        *(v136 + 9) = 1;
        *v795 = v310;
        *&v795[8] = v313;
        v795[12] = 1;
        v795[13] = v312;
        v318 = v746;
        *(v136 + 16) = v746;
        sub_1000B38F4();

        sub_1004A6674();
        v319 = *(v318 + 36);
        v781 = *(v318 + 40);
        v320 = v136 + v319;
        v321 = _s18InProgressMessagesVMa(0);
        v322 = v321[6];
        sub_100016D2C();
        sub_1004A7114();
        v323 = v320 + v321[9];
        sub_1004A7114();
        v324 = v320 + v321[10];
        sub_1004A7114();
        v325 = sub_100162D4C(_swiftEmptyArrayStorage);
        *v320 = v310;
        *(v320 + 8) = v313;
        *(v320 + 16) = v782;
        *(v320 + v321[7]) = _swiftEmptyArrayStorage;
        *(v320 + v321[8]) = _swiftEmptyArrayStorage;
        v121 = _swiftEmptyArrayStorage;
        *(v320 + v321[11]) = v325;
        sub_100045288(v136 + v781);
        sub_1000458FC(v316);

        v326 = v735;
        sub_1000B4888(v136, v735, type metadata accessor for DownloadTask);
        v327 = v747;
        v328 = (v326 + *(v747 + 36));
        *v328 = _swiftEmptyArrayStorage;
        v328[1] = _swiftEmptyArrayStorage;
        *&v795[24] = v327;
        v218 = sub_1000B458C(&qword_1005CF350, &qword_1005CF310, &unk_1004D2608);
        *&v795[32] = v218;
        v329 = sub_1000B3774(v795);
        sub_10000E268(v326, v329, &qword_1005CF310, &unk_1004D2608);
        LOBYTE(v320) = v777(v795);
        sub_1000197E0(v795);
        if (v320)
        {

          *(&v830 + 1) = v327;
          *&v831 = v218;
          v330 = sub_1000B3774(&v829);
          sub_100025FDC(v326, v330, &qword_1005CF310, &unk_1004D2608);
          sub_100025F40(v765, &unk_1005D91B0, &unk_1004CF400);
          sub_1000B35D0(v778, type metadata accessor for MessagesPendingDownload);
          v216 = v738;
          v135 = v758;
          v133 = v762;
          v153 = v764;
          if (*(&v830 + 1))
          {
            swift_bridgeObjectRelease_n();
            sub_1000B35D0(v737, type metadata accessor for NewestMessages);
            v217 = &v829;
            goto LABEL_106;
          }

          goto LABEL_110;
        }

        sub_100025F40(v326, &qword_1005CF310, &unk_1004D2608);
        v135 = v758;
        v133 = v762;
        v153 = v764;
        v216 = v778;
        v121 = v780;
        goto LABEL_108;
      }

      while (1)
      {
LABEL_368:

        __break(1u);
      }
    }

    v383 = v274 - 1;
    v135 = v758;
    v133 = v762;
    v277 = v267;
    v218 = v121;
    if (v274 <= 1)
    {
      goto LABEL_85;
    }

    v384 = *(v121 + 2);
    if (!v384)
    {
      goto LABEL_314;
    }

    if (v383 >= v384)
    {
      goto LABEL_315;
    }

    v385 = v121 + 32;
    v386 = *(v121 + 8);
    v782 = *(v121 + 5);
    LODWORD(v781) = *(v121 + 48);
    v218 = v121;
    v387 = *(v121 + 49);
    v388 = 24 * v383;
    v389 = &v385[24 * v383];
    v390 = *v389;
    v391 = *(v389 + 1);
    v392 = v389[16];
    v393 = v389[17];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v218 = sub_10013991C(v780);
    }

    *(v218 + 32) = v390;
    *(v218 + 40) = v391;
    *(v218 + 48) = v392;
    *(v218 + 49) = v393;
    v394 = v218 + 32 + v388;
    *v394 = v386;
    *(v394 + 8) = v782;
    *(v394 + 16) = v781;
    *(v394 + 17) = v387;
    v135 = v758;
    v133 = v762;
    v277 = v711;
    v136 = v745;
    v121 = v780;
    if (v274 >> 1 == 1)
    {
      goto LABEL_85;
    }

    v395 = v274 - 2;
    if (v274 != 3)
    {
      v396 = *(v218 + 16);
      if (v396 < 2)
      {
        goto LABEL_314;
      }

      if (v395 >= v396)
      {
        goto LABEL_315;
      }

      LODWORD(v782) = *(v218 + 56);
      v781 = *(v218 + 64);
      LODWORD(v732) = *(v218 + 72);
      v397 = *(v218 + 73);
      v398 = 24 * v395;
      v399 = v218 + 24 * v395;
      v400 = *(v399 + 32);
      v401 = *(v399 + 40);
      v402 = *(v399 + 48);
      v403 = *(v399 + 49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v218 = sub_10013991C(v218);
      }

      v404 = v218 + v398;
      *(v218 + 56) = v400;
      *(v218 + 64) = v401;
      *(v218 + 72) = v402;
      *(v218 + 73) = v403;
      *(v404 + 32) = v782;
      *(v404 + 40) = v781;
      *(v404 + 48) = v732;
      *(v404 + 49) = v397;
      v135 = v758;
      v133 = v762;
      v277 = v711;
      v136 = v745;
      v121 = v780;
    }

    if (v274 >> 1 == 2)
    {
      goto LABEL_85;
    }

    v405 = v274 - 3;
    if (v274 == 5)
    {
      goto LABEL_85;
    }

    v406 = *(v218 + 16);
    if (v406 >= 3)
    {
      if (v405 < v406)
      {
        LODWORD(v782) = *(v218 + 80);
        v407 = v218;
        v408 = *(v218 + 88);
        v409 = v407[96];
        v410 = v407[97];
        v411 = 24 * v405;
        v412 = &v407[24 * v405];
        v413 = *(v412 + 8);
        v414 = *(v412 + 5);
        v415 = v412[48];
        v416 = v412[49];
        v417 = v407;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v417 = sub_10013991C(v417);
        }

        v418 = &v417[v411];
        *(v417 + 20) = v413;
        *(v417 + 11) = v414;
        v417[96] = v415;
        v417[97] = v416;
        *(v418 + 8) = v782;
        *(v418 + 5) = v408;
        v218 = v417;
        v418[48] = v409;
        v418[49] = v410;
        v135 = v758;
        v133 = v762;
        v277 = v711;
        v136 = v745;
        v121 = v780;
        goto LABEL_85;
      }

LABEL_315:
      __break(1u);
      goto LABEL_316;
    }

LABEL_314:
    __break(1u);
    goto LABEL_315;
  }

LABEL_109:
  *&v831 = 0;
  v829 = 0u;
  v830 = 0u;
LABEL_110:
  sub_100025F40(&v829, &qword_1005CF328, &unk_1004D2620);
LABEL_111:
  if (qword_1005CCE90 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF88, v153, v133) & 1) == 0)
  {
    __break(1u);
    goto LABEL_220;
  }

  v331 = a12;
  v332 = v135[19];
  v333 = *(v332 + 16);
  v739 = v333;
  if (v333)
  {
    v334 = v332 + ((*(v779 + 80) + 32) & ~*(v779 + 80));
    v335 = *(v779 + 72);
    v336 = v776;
    v337 = v773;
    v765 = a12;
    v763 = v335;
    do
    {
      sub_1000B4820(v334, v336, _s19UserInitiatedSearchVMa);
      sub_1000B4820(v336 + *(v784 + 20), v337, _s19UserInitiatedSearchV5StateOMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1000B35D0(v336, _s19UserInitiatedSearchVMa);
        sub_1000B35D0(v337, _s19UserInitiatedSearchV5StateOMa);
      }

      else
      {
        v338 = *(v337 + 8);
        v778 = *v337;
        v781 = *(v337 + 16);
        LODWORD(v780) = *(v337 + 24);
        v339 = *v336;
        LODWORD(v779) = *(v331 + 2);
        v340 = v770;
        *v770 = 223;
        *(v340 + 104) = _swiftEmptySetSingleton;
        *(v340 + 112) = 0;
        v341 = v771;
        v342 = *(v771 + 52);
        v343 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
        (*(*(v343 - 8) + 56))(v340 + v342, 1, 1, v343);
        *(v340 + 8) = v339;
        v344 = v767;
        *(v340 + 16) = v775;
        *(v340 + 24) = v344;
        *(v340 + 32) = v768;
        v345 = v774;
        *(v340 + 40) = v774;
        LODWORD(v344) = v766;
        *(v340 + 48) = v766;
        LODWORD(v786) = v339;
        *(&v786 + 1) = v345;
        LODWORD(v787) = v344;
        *(v340 + 56) = v341;
        v346 = v769;
        swift_bridgeObjectRetain_n();

        v347 = v778;
        sub_1000B3664(v778);
        sub_1000B3720();

        sub_1004A6674();
        *(v340 + 120) = v347;
        *(v340 + 128) = v338;
        v782 = v338;
        *(v340 + 136) = v781;
        *(v340 + 144) = v780;
        *(v340 + 145) = v779;
        sub_1000B4888(v340, v346, type metadata accessor for SearchMailbox);
        v348 = v772;
        v349 = (v346 + *(v772 + 36));
        *v349 = _swiftEmptyArrayStorage;
        v349[1] = _swiftEmptyArrayStorage;
        *(&v787 + 1) = v348;
        v350 = sub_1000B458C(&qword_1005CF338, &qword_1005CF308, &qword_1004D2600);
        *&v788 = v350;
        v351 = sub_1000B3774(&v786);
        sub_10000E268(v346, v351, &qword_1005CF308, &qword_1004D2600);
        LOBYTE(v339) = v777(&v786);
        sub_1000197E0(&v786);
        if (v339)
        {
          swift_bridgeObjectRelease_n();
          *&v794[24] = v772;
          *&v794[32] = v350;
          v363 = sub_1000B3774(v794);
          sub_100025FDC(v346, v363, &qword_1005CF308, &qword_1004D2600);
          sub_1000B37D8(v347);

          sub_1000B35D0(v776, _s19UserInitiatedSearchVMa);
          sub_1000B35D0(v737, type metadata accessor for NewestMessages);
          sub_1000B364C(v794, v795);
          sub_1000B364C(v795, v738);
          return *&v103;
        }

        sub_1000B37D8(v347);

        sub_100025F40(v346, &qword_1005CF308, &qword_1004D2600);
        v336 = v776;
        sub_1000B35D0(v776, _s19UserInitiatedSearchVMa);
        v331 = v765;
        v337 = v773;
        v335 = v763;
      }

      v334 += v335;
      --v333;
    }

    while (v333);
  }

  v352 = v764;
  if (*(v764 + 16) == 15 && !v762[2] && !v757[2])
  {
    v353 = v730;
    sub_1000B4820(v711 + *(v745 + 20) + v727[13], v730, type metadata accessor for PendingPersistenceUpdates);
    v354 = v731;
    sub_1000B4820(v737, v731, type metadata accessor for NewestMessages);
    (*(v728 + 56))(v354, 0, 1, v729);
    v355 = v353 + *(v754 + 28);
    LOBYTE(v355) = sub_1000DC530(v743, v354);
    sub_100025F40(v354, &qword_1005CDC18, &qword_1004CF9E0);
    sub_1000B35D0(v353, type metadata accessor for PendingPersistenceUpdates);
    if ((v355 & 1) == 0 && !(*(*(v711 + *(v745 + 20) + v727[14]) + 16) | v739))
    {
      swift_bridgeObjectRelease_n();
      sub_1000B35D0(v737, type metadata accessor for NewestMessages);
      *&v103 = 0;
      v433 = v738;
      *v738 = 0u;
      *(v433 + 16) = 0u;
      *(v433 + 32) = 0;
      return *&v103;
    }
  }

  v356 = v758;
  sub_10000E08C(v758, v795);
  v357 = v761;

  v358 = v777;
  v359 = v783;
  sub_1000AA7E4(v352, v762, v757, v777, v783, v356, v357, &v786);
  v360 = v738;
  if (*(&v787 + 1))
  {
    swift_bridgeObjectRelease_n();
    sub_1000B35D0(v737, type metadata accessor for NewestMessages);
    sub_1000B364C(&v786, v794);
    sub_1000B364C(v794, v360);
    return *&v103;
  }

  sub_100025F40(&v786, &qword_1005CF328, &unk_1004D2620);
  v361 = v741;
  sub_1000AB17C(v357, v358, v359, v331, a14, a15 & 1, v741);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    swift_bridgeObjectRelease_n();
    sub_1000B35D0(v737, type metadata accessor for NewestMessages);
    v103 = *v361;
    v362 = *(v361 + 16);
    *v360 = *v361;
    *(v360 + 16) = v362;
    *(v360 + 32) = *(v361 + 32);
    return *&v103;
  }

  v765 = v331;
  v364 = v755 >> 8;
  v365 = v744;
  v366 = sub_1000B4888(v361, v744, type metadata accessor for MessageBatches);
  v782 = v704;
  v367 = v859;
  v368 = v858;
  v369 = v857;
  v370 = v856;
  v371 = v854;
  __chkstk_darwin(v366);
  v704[-4] = v372;
  v704[-3] = v365;
  LOBYTE(v702) = v367;
  v785 = v364;
  BYTE1(v702) = v364;
  BYTE2(v702) = v743;
  BYTE3(v702) = v368;
  BYTE4(v702) = v369;
  BYTE5(v702) = v370;
  LODWORD(v784) = v373;
  BYTE6(v702) = v373;
  HIBYTE(v702) = v371;
  v374 = v764;
  v375 = v762;
  sub_1000A8478(v764, v762, v757, v777, sub_1000B4930, &v829);
  v781 = v367;
  LODWORD(v778) = v368;
  LODWORD(v780) = v369;
  LODWORD(v779) = v370;
  LODWORD(v776) = v371;
  if (*(&v830 + 1))
  {
    sub_1000B364C(&v829, &v786);
    sub_1000B364C(&v786, v794);
    v376 = v737;
    v377 = v765;
    v378 = v784;
    v379 = v785;
    if (!*&v794[24])
    {
      goto LABEL_158;
    }

LABEL_136:
    swift_bridgeObjectRelease_n();
    v382 = v376;
LABEL_161:
    sub_1000B35D0(v382, type metadata accessor for NewestMessages);
    sub_1000B364C(v794, v795);
    v431 = v795;
    goto LABEL_162;
  }

  v380 = sub_100025F40(&v829, &qword_1005CF328, &unk_1004D2620);
  v782 = v704;
  __chkstk_darwin(v380);
  v704[-6] = v758;
  v704[-5] = v365;
  v377 = v765;
  v704[-4] = v761;
  v704[-3] = v377;
  LOBYTE(v702) = v367;
  v381 = v785;
  BYTE1(v702) = v785;
  BYTE2(v702) = v743;
  BYTE3(v702) = v368;
  BYTE4(v702) = v369;
  BYTE5(v702) = v370;
  v378 = v784;
  BYTE6(v702) = v784;
  HIBYTE(v702) = v371;
  sub_1000A814C(v374, v375, v757, v777, v359, sub_1000B4934, &v829);
  v379 = v381;
  if (*(&v830 + 1))
  {
    sub_1000B364C(&v829, &v786);
    sub_1000B364C(&v786, v794);
    v375 = v762;
    v374 = v764;
    v376 = v737;
    if (*&v794[24])
    {
      goto LABEL_136;
    }
  }

  else
  {
    sub_100025F40(&v829, &qword_1005CF328, &unk_1004D2620);
    memset(v794, 0, 40);
    v375 = v762;
    v374 = v764;
  }

LABEL_158:
  v419 = sub_100025F40(v794, &qword_1005CF328, &unk_1004D2620);
  __chkstk_darwin(v419);
  v420 = v744;
  v704[-6] = v758;
  v704[-5] = v420;
  v704[-4] = v761;
  LOBYTE(v704[-3]) = v781;
  BYTE1(v704[-3]) = v379;
  v421 = v743;
  BYTE2(v704[-3]) = v743;
  BYTE3(v704[-3]) = v778;
  BYTE4(v704[-3]) = v780;
  BYTE5(v704[-3]) = v779;
  BYTE6(v704[-3]) = v378;
  v422 = v776;
  HIBYTE(v704[-3]) = v776;
  v702 = v377;
  v423 = v375;
  v424 = v378;
  v425 = v757;
  v426 = v777;
  v427 = v783;
  sub_1000AA4B8(v374, v423, v757, v777, v783, sub_1000B3B3C, v794);
  if (*&v794[24])
  {
    goto LABEL_160;
  }

  v428 = sub_100025F40(v794, &qword_1005CF328, &unk_1004D2620);
  __chkstk_darwin(v428);
  v429 = v744;
  v704[-6] = v758;
  v704[-5] = v429;
  v704[-4] = v761;
  v704[-3] = v377;
  LOBYTE(v702) = v781;
  BYTE1(v702) = v785;
  BYTE2(v702) = v421;
  v430 = v778;
  BYTE3(v702) = v778;
  BYTE4(v702) = v780;
  BYTE5(v702) = v779;
  BYTE6(v702) = v424;
  HIBYTE(v702) = v422;
  sub_1000AA18C(v374, v762, v425, v426, v427, sub_1000B3BC4, v794);
  if (*&v794[24])
  {
LABEL_160:
    swift_bridgeObjectRelease_n();
    v382 = v737;
    goto LABEL_161;
  }

  v434 = v430;
  sub_100025F40(v794, &qword_1005CF328, &unk_1004D2620);
  sub_10000E08C(v758, v795);
  v435 = qword_1005CCE98;

  if (v435 != -1)
  {
    swift_once();
  }

  v136 = v764;
  v133 = v762;
  v436 = sub_1000B33E4(qword_1005DDF90, v764, v762);
  v437 = v744;
  v438 = v710;
  v439 = v765;
  if ((v436 & 1) == 0)
  {
    goto LABEL_178;
  }

  sub_1000ACFA8(v758, v761, &v786);
  if (!v786)
  {
    sub_100025F40(&v786, &qword_1005CF3D8, &qword_1004D26B8);
LABEL_178:
    *&v827 = 0;
    v825 = 0u;
    v826 = 0u;
    sub_10000E0E8(v758);

    goto LABEL_179;
  }

  sub_1000B3F58(&v786, v794);
  *&v794[136] = _swiftEmptyArrayStorage;
  *&v794[144] = _swiftEmptyArrayStorage;
  sub_1000B3FB4(&v786);
  *&v795[96] = *&v794[96];
  *&v795[112] = *&v794[112];
  *&v795[128] = *&v794[128];
  *&v795[144] = *&v794[144];
  *&v795[32] = *&v794[32];
  *&v795[48] = *&v794[48];
  *&v795[64] = *&v794[64];
  *&v795[80] = *&v794[80];
  *v795 = *v794;
  *&v795[16] = *&v794[16];
  if (*(*v794 + 16) && (sub_1000AEB8C(*v794, v136, v133, v757) & 1) == 0)
  {
    goto LABEL_175;
  }

  v440 = sub_10000C9C0(&qword_1005CF3E0, &unk_1004D26C0);
  *&v794[24] = v440;
  v441 = sub_1000B458C(&qword_1005CF3E8, &qword_1005CF3E0, &unk_1004D26C0);
  *&v794[32] = v441;
  *v794 = swift_allocObject();
  sub_10000E268(v795, *v794 + 16, &qword_1005CF3E0, &unk_1004D26C0);
  v442 = v777(v794);
  sub_1000197E0(v794);
  if (v442)
  {
    *(&v826 + 1) = v440;
    *&v827 = v441;
    v443 = swift_allocObject();
    *&v825 = v443;
    v444 = *&v795[112];
    *(v443 + 112) = *&v795[96];
    *(v443 + 128) = v444;
    *(v443 + 144) = *&v795[128];
    *(v443 + 160) = *&v795[144];
    v445 = *&v795[48];
    *(v443 + 48) = *&v795[32];
    *(v443 + 64) = v445;
    v446 = *&v795[80];
    *(v443 + 80) = *&v795[64];
    *(v443 + 96) = v446;
    v447 = *&v795[16];
    *(v443 + 16) = *v795;
    *(v443 + 32) = v447;
  }

  else
  {
LABEL_175:
    sub_100025F40(v795, &qword_1005CF3E0, &unk_1004D26C0);
    v825 = 0u;
    v826 = 0u;
    *&v827 = 0;
  }

  sub_10000E0E8(v758);

  v437 = v744;
LABEL_179:
  if (*(&v826 + 1))
  {
    swift_bridgeObjectRelease_n();
    sub_1000B35D0(v737, type metadata accessor for NewestMessages);
    sub_1000B364C(&v825, &v829);
    v448 = &v829;
    v449 = v738;
    goto LABEL_196;
  }

  sub_100025F40(&v825, &qword_1005CF328, &unk_1004D2620);
  if (v438 || v739)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_184;
  }

  sub_10000E08C(v758, v795);
  v456 = qword_1005CCE48;

  if (v456 != -1)
  {
    swift_once();
  }

  if (sub_1000B33E4(qword_1005DDF10, v136, v133))
  {
    v457 = 0x100000000000000;
    if (!v776)
    {
      v457 = 0;
    }

    v458 = 0x1000000000000;
    if (!v784)
    {
      v458 = 0;
    }

    v459 = 0x10000000000;
    if (!v779)
    {
      v459 = 0;
    }

    v460 = &_mh_execute_header;
    if (!v780)
    {
      v460 = 0;
    }

    v461 = 0x1000000;
    if (!v434)
    {
      v461 = 0;
    }

    v462 = v719;
    sub_1000AAC34(v758, 0, v761, v461 | v781 | v460 | v459 | v458 | v457 | v726, v719);
    PendingDownload = type metadata accessor for FindPendingDownload();
    if ((*(*(PendingDownload - 8) + 48))(v462, 1, PendingDownload) != 1)
    {
      v593 = v716;
      sub_1000B4820(v462, v716, type metadata accessor for FindPendingDownload);
      v594 = (v593 + *(v720 + 36));
      *v594 = _swiftEmptyArrayStorage;
      v594[1] = _swiftEmptyArrayStorage;
      sub_1000B35D0(v462, type metadata accessor for FindPendingDownload);
      v595 = v717;
      sub_100025FDC(v593, v717, &qword_1005CF3C8, &qword_1004D26B0);
      v596 = *(v595 + 48);
      if (!*(v596 + 16) || (sub_1000AEB8C(v596, v764, v762, v757)) && (*&v795[24] = v720, v597 = sub_1000B458C(&qword_1005CF3D0, &qword_1005CF3C8, &qword_1004D26B0), *&v795[32] = v597, v598 = sub_1000B3774(v795), sub_10000E268(v595, v598, &qword_1005CF3C8, &qword_1004D26B0), v599 = v777(v795), sub_1000197E0(v795), (v599))
      {
        *(&v787 + 1) = v720;
        *&v788 = v597;
        v600 = sub_1000B3774(&v786);
        sub_100025FDC(v595, v600, &qword_1005CF3C8, &qword_1004D26B0);
      }

      else
      {
        sub_100025F40(v595, &qword_1005CF3C8, &qword_1004D26B0);
        v786 = 0u;
        v787 = 0u;
        *&v788 = 0;
      }

      goto LABEL_215;
    }

    sub_100025F40(v462, &qword_1005CF3C0, &qword_1004D26A8);
  }

  *&v788 = 0;
  v786 = 0u;
  v787 = 0u;
LABEL_215:
  sub_10000E0E8(v758);

  if (*(&v787 + 1))
  {

    sub_1000B364C(&v786, v794);
    v464 = v794;
    goto LABEL_217;
  }

  sub_100025F40(&v786, &qword_1005CF328, &unk_1004D2620);
  if ((sub_1000B33E4(v709, v764, v762) & 1) == 0)
  {

LABEL_290:
    v804 = 0;
    v802 = 0u;
    v803 = 0u;
    goto LABEL_291;
  }

  v470 = v748;
  sub_1000B4820(v711 + *(v745 + 20) + v727[13] + *(v754 + 28), v748, type metadata accessor for MessagesPendingDownloadPerPass);
  v471 = v721;
  sub_1000B4820(v470, v721, type metadata accessor for MessagesPendingDownload);
  v472 = sub_1000B35D0(v470, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!*(*v471 + 16) && !*(*(v711 + *(v745 + 20) + v727[14]) + 16))
  {
LABEL_289:

    sub_1000B35D0(v721, type metadata accessor for MessagesPendingDownload);
    goto LABEL_290;
  }

  v473 = v718;
  v752(v472);
  v474 = v753;
  sub_1000B4820(v721, v753, type metadata accessor for MessagesPendingDownload);
  v475 = v756;
  sub_10000E268(v473, v756, &unk_1005D91B0, &unk_1004CF400);
  v476 = v745;
  v477 = v711;
  v478 = v727;
  v479 = *(v711 + *(v745 + 20) + v727[14]);
  v480 = v474;
  v481 = v749;
  sub_1000B4820(v480, v749, type metadata accessor for MessagesPendingDownload);
  v482 = v750;
  sub_10000E268(v475, v750, &unk_1005D91B0, &unk_1004CF400);
  v483 = swift_allocObject();
  *(v483 + 16) = v479;
  *&v786 = v759;
  *(&v786 + 1) = sub_1000B4908;
  *&v787 = v483;
  *(&v787 + 1) = sub_1000B2F18;
  *&v788 = 0;
  *(&v788 + 1) = sub_1000B2F2C;
  *&v789 = 0;

  v779 = sub_1000B0484(v481, v482, &v786);
  v485 = v484;
  v486 = v475;
  v488 = v487;
  sub_100025F40(v486, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v753, type metadata accessor for MessagesPendingDownload);
  v489 = 0;
  v490 = 0;
  v776 = (v488 + 32);
  v778 = (v485 | ((HIDWORD(v485) & 1) << 32));
  v780 = v488;
  while (1)
  {
    v491 = v489;
    v492 = *(&off_1005993C8 + v490 + 32);
    LODWORD(v785) = v491;
    LODWORD(v784) = v492;
    if (v492)
    {
      v493 = v492 == 1 ? 11 : 13;
      v494 = v756;
      v495 = v779;
      v496 = sub_1000DB9D8(v493, v779, v778, v756);
      __chkstk_darwin(v496);
      v702 = v494;

      v497 = v495;
      v498 = v760;
      v499 = sub_10009EBDC(sub_1000B490C, &v704[-4], v497);
      v760 = v498;
      v500 = sub_1000B0110(v499);
      sub_100025F40(v494, &unk_1005D91B0, &unk_1004CF400);
    }

    else
    {
      v533 = *(v488 + 16);
      if (v533 > 7)
      {

        v500 = sub_1000B0290(v534, v776, v533 - 7, (2 * v533) | 1);
        goto LABEL_235;
      }

      v559 = v533 - 1;
      if (v533 <= 1)
      {
        v500 = v488;
LABEL_258:
        v477 = v711;
        v476 = v745;
        v478 = v727;
        goto LABEL_235;
      }

      v560 = *(v780 + 16);
      if (!v560)
      {
        goto LABEL_364;
      }

      if (v559 >= v560)
      {
        goto LABEL_365;
      }

      v561 = v780;
      LODWORD(v782) = *(v780 + 32);
      v781 = *(v780 + 40);
      v562 = *(v780 + 48);
      v563 = *(v780 + 49);
      v564 = 24 * v559;
      v565 = &v776[6 * v559];
      v566 = *v565;
      v567 = *(v565 + 1);
      v568 = *(v565 + 16);
      v569 = *(v565 + 17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v561 = sub_10013991C(v780);
      }

      *(v561 + 8) = v566;
      *(v561 + 5) = v567;
      v561[48] = v568;
      v561[49] = v569;
      v570 = &v561[v564 + 32];
      *v570 = v782;
      *(v570 + 1) = v781;
      v570[16] = v562;
      v570[17] = v563;
      if (v533 >> 1 != 1)
      {
        v571 = v533 - 2;
        if (v533 != 3)
        {
          v572 = *(v561 + 2);
          if (v572 < 2)
          {
            goto LABEL_364;
          }

          if (v571 >= v572)
          {
            goto LABEL_365;
          }

          LODWORD(v782) = *(v561 + 14);
          v781 = *(v561 + 8);
          LODWORD(v773) = v561[72];
          v573 = v561[73];
          v574 = 24 * v571;
          v575 = &v561[24 * v571];
          v576 = *(v575 + 8);
          v577 = *(v575 + 5);
          v578 = v575[48];
          v579 = v575[49];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v561 = sub_10013991C(v561);
          }

          v580 = &v561[v574];
          *(v561 + 14) = v576;
          *(v561 + 8) = v577;
          v561[72] = v578;
          v561[73] = v579;
          *(v580 + 8) = v782;
          *(v580 + 5) = v781;
          v580[48] = v773;
          v580[49] = v573;
        }

        if (v533 >> 1 != 2)
        {
          v581 = v533 - 3;
          if (v533 != 5)
          {
            v582 = *(v561 + 2);
            if (v582 < 3)
            {
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
              goto LABEL_368;
            }

            if (v581 >= v582)
            {
              goto LABEL_365;
            }

            LODWORD(v782) = *(v561 + 20);
            v583 = *(v561 + 11);
            v584 = v561[96];
            v585 = v561[97];
            v586 = 24 * v581;
            v587 = &v561[24 * v581];
            v588 = *(v587 + 8);
            v589 = *(v587 + 5);
            v590 = v587[48];
            v591 = v587[49];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v561 = sub_10013991C(v561);
            }

            v592 = &v561[v586];
            *(v561 + 20) = v588;
            *(v561 + 11) = v589;
            v561[96] = v590;
            v561[97] = v591;
            *(v592 + 8) = v782;
            *(v592 + 5) = v583;
            v500 = v561;
            v592[48] = v584;
            v592[49] = v585;
            goto LABEL_258;
          }
        }
      }

      v477 = v711;
      v476 = v745;
      v478 = v727;
      v500 = v561;
    }

LABEL_235:
    v501 = *(v500 + 16);
    if (v501)
    {
      break;
    }

LABEL_229:
    v489 = 1;
    v490 = &_mh_execute_header.magic + 1;
    v488 = v780;
    if (v785)
    {
      sub_100025F40(v718, &unk_1005D91B0, &unk_1004CF400);

      goto LABEL_289;
    }
  }

  v502 = *(v477 + *(v476 + 20) + v478[20]);
  v503 = v500 + 32;
  v504 = *(v502 + 16);
  v505 = (v502 + 32);
  v781 = v502;

  v782 = v500;

  v506 = _swiftEmptyArrayStorage;
  for (i = 0; i != v501; ++i)
  {
    if (v504)
    {
      v518 = *(v503 + 24 * i);
      v519 = v505;
      v520 = v504;
      while (1)
      {
        v521 = *v519;
        v522 = v519[1];
        v523 = v519[3];
        *&v795[32] = v519[2];
        *&v795[48] = v523;
        *v795 = v521;
        *&v795[16] = v522;
        v524 = v519[4];
        v525 = v519[5];
        v526 = v519[7];
        *&v795[96] = v519[6];
        *&v795[112] = v526;
        *&v795[64] = v524;
        *&v795[80] = v525;
        v527 = v519[8];
        v528 = v519[9];
        v529 = v519[10];
        *&v795[169] = *(v519 + 169);
        *&v795[144] = v528;
        *&v795[160] = v529;
        *&v795[128] = v527;
        if (v518 == *v795)
        {
          break;
        }

        v519 += 12;
        if (!--v520)
        {
          goto LABEL_238;
        }
      }

      sub_10001025C(v795, v794);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v506 = sub_1000866F0(0, v506[2] + 1, 1, v506);
      }

      v531 = v506[2];
      v530 = v506[3];
      if (v531 >= v530 >> 1)
      {
        v506 = sub_1000866F0((v530 > 1), v531 + 1, 1, v506);
      }

      *&v794[132] = *&v795[136];
      *&v794[148] = *&v795[152];
      *&v794[164] = *&v795[168];
      v794[180] = v795[184];
      *&v794[68] = *&v795[72];
      *&v794[84] = *&v795[88];
      *&v794[100] = *&v795[104];
      *&v794[116] = *&v795[120];
      *&v794[4] = *&v795[8];
      *&v794[20] = *&v795[24];
      *&v794[36] = *&v795[40];
      *&v794[52] = *&v795[56];
      v506[2] = v531 + 1;
      v508 = &v506[24 * v531];
      *(v508 + 8) = v518;
      v509 = *v794;
      v510 = *&v794[16];
      v511 = *&v794[32];
      *(v508 + 84) = *&v794[48];
      *(v508 + 68) = v511;
      *(v508 + 52) = v510;
      *(v508 + 36) = v509;
      v512 = *&v794[64];
      v513 = *&v794[80];
      v514 = *&v794[96];
      *(v508 + 148) = *&v794[112];
      *(v508 + 132) = v514;
      *(v508 + 116) = v513;
      *(v508 + 100) = v512;
      v515 = *&v794[128];
      v516 = *&v794[144];
      v517 = *&v794[160];
      *(v508 + 209) = *&v794[173];
      *(v508 + 196) = v517;
      *(v508 + 180) = v516;
      *(v508 + 164) = v515;
      v503 = v500 + 32;
    }

LABEL_238:
    ;
  }

  if (v506[2])
  {
    sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
    v532 = sub_1004A6A74();
  }

  else
  {
    v532 = &_swiftEmptyDictionarySingleton;
  }

  v535 = v760;
  *v795 = v532;
  sub_1000B2F70(v506, 1, v795);
  v760 = v535;
  v536 = v775;
  if (v535)
  {
    goto LABEL_368;
  }

  v537 = v782;

  v781 = *v795;
  v837[0] = v536;
  v837[1] = v767;
  v838 = v768;
  v538 = v774;
  v839 = v774;
  v539 = v766;
  v840 = v766;
  swift_bridgeObjectRetain_n();

  v540 = sub_1000CE570(_swiftEmptyArrayStorage);
  v541 = v725;
  *v725 = v540;
  *(v541 + 8) = 0;
  v542 = v784;
  sub_10003F6A4(v837, v537, v784, &v825);
  v543 = *(&v827 + 1);
  v544 = v826;
  *(v541 + 64) = v825;
  *(v541 + 80) = v544;
  *(v541 + 96) = v827;
  *(v541 + 112) = v828;
  *(v541 + 9) = 0;
  *v795 = v538;
  *&v795[8] = v539;
  v795[12] = 0;
  v795[13] = v542;
  v545 = v746;
  *(v541 + 16) = v746;
  sub_1000B38F4();

  sub_1004A6674();
  v546 = *(v545 + 36);
  v547 = *(v545 + 40);
  v548 = v541 + v546;
  v549 = _s18InProgressMessagesVMa(0);
  v550 = v549[6];
  sub_100016D2C();
  sub_1004A7114();
  v551 = v548 + v549[9];
  sub_1004A7114();
  v552 = v548 + v549[10];
  sub_1004A7114();
  v553 = sub_100162D4C(_swiftEmptyArrayStorage);
  *v548 = v538;
  *(v548 + 8) = v539;
  *(v548 + 16) = v781;
  *(v548 + v549[7]) = _swiftEmptyArrayStorage;
  *(v548 + v549[8]) = _swiftEmptyArrayStorage;
  *(v548 + v549[11]) = v553;
  sub_100045288(v541 + v547);
  sub_1000458FC(v543);

  v554 = v724;
  sub_1000B4888(v541, v724, type metadata accessor for DownloadTask);
  v555 = v747;
  v556 = (v554 + *(v747 + 36));
  *v556 = _swiftEmptyArrayStorage;
  v556[1] = _swiftEmptyArrayStorage;
  *&v795[24] = v555;
  v557 = sub_1000B458C(&qword_1005CF350, &qword_1005CF310, &unk_1004D2608);
  *&v795[32] = v557;
  v558 = sub_1000B3774(v795);
  sub_10000E268(v554, v558, &qword_1005CF310, &unk_1004D2608);
  LOBYTE(v548) = v777(v795);
  sub_1000197E0(v795);
  if ((v548 & 1) == 0)
  {
    sub_100025F40(v554, &qword_1005CF310, &unk_1004D2608);
    v477 = v711;
    v476 = v745;
    v478 = v727;
    goto LABEL_229;
  }

  *(&v803 + 1) = v555;
  v804 = v557;
  v601 = sub_1000B3774(&v802);
  sub_100025FDC(v554, v601, &qword_1005CF310, &unk_1004D2608);
  sub_100025F40(v718, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v721, type metadata accessor for MessagesPendingDownload);
  if (!*(&v803 + 1))
  {
LABEL_291:
    sub_100025F40(&v802, &qword_1005CF328, &unk_1004D2620);
    v808 = 0u;
    v809 = 0u;
    v810 = 0;
    goto LABEL_292;
  }

  sub_1000B364C(&v802, &v805);
  v464 = &v805;
LABEL_217:
  sub_1000B364C(v464, &v808);
  if (*(&v809 + 1))
  {

    sub_1000B35D0(v737, type metadata accessor for NewestMessages);
    sub_1000B364C(&v808, &v829);
    v431 = &v829;
    goto LABEL_162;
  }

LABEL_292:
  sub_100025F40(&v808, &qword_1005CF328, &unk_1004D2620);
  if (v742(0))
  {

    goto LABEL_363;
  }

  v602 = v758;
  sub_10000E08C(v758, v795);
  v603 = 0x100000000000000;
  if (!v854)
  {
    v603 = 0;
  }

  v604 = 0x1000000000000;
  if (!v855)
  {
    v604 = 0;
  }

  v605 = 0x10000000000;
  if (!v856)
  {
    v605 = 0;
  }

  v606 = &_mh_execute_header;
  if (!v857)
  {
    v606 = 0;
  }

  v607 = 0x1000000;
  if (!v858)
  {
    v607 = 0;
  }

  v608 = v607 | v859 | v606 | v605 | v604 | v603 | v726;
  v609 = v761;

  sub_1000A86C4(v764, v762, v757, v777, v783, v602, 1, v609, &v829, v608);
  if (*(&v830 + 1))
  {

    sub_1000B364C(&v829, v794);
    v610 = v794;
    goto LABEL_306;
  }

  sub_100025F40(&v829, &qword_1005CF328, &unk_1004D2620);
  if ((sub_1000B33E4(v709, v764, v762) & 1) == 0)
  {

LABEL_360:
    v804 = 0;
    v802 = 0u;
    v803 = 0u;
    goto LABEL_361;
  }

  sub_1000B4820(v711 + *(v745 + 20) + v727[13] + *(v754 + 28), v714, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!v743)
  {
LABEL_316:
    v614 = sub_100163144(_swiftEmptyArrayStorage);
    *v715 = v614;
    v615 = *(v733 + 20);
    sub_100016D2C();
    sub_1004A7114();
    v612 = type metadata accessor for MessagesPendingDownloadPerPass;
    v613 = v714;
    goto LABEL_321;
  }

  if (v743 == 1)
  {
    v611 = v714;
    sub_1000B4820(v714 + *(v736 + 20), v715, type metadata accessor for MessagesPendingDownload);
    v612 = type metadata accessor for MessagesPendingDownloadPerPass;
    v613 = v611;
  }

  else
  {
    sub_1000B4820(v714 + *(v736 + 20), v712, type metadata accessor for MessagesPendingDownload);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    if (sub_1004A70C4())
    {
      sub_1000B35D0(v714, type metadata accessor for MessagesPendingDownloadPerPass);
      sub_1000B4820(v712, v715, type metadata accessor for MessagesPendingDownload);
    }

    else
    {
      v616 = v712;
      v617 = v715;
      sub_1000B4820(v712, v715, type metadata accessor for MessagesPendingDownload);
      v618 = __chkstk_darwin(*v616);
      v702 = v737;
      v619 = v760;
      v620 = sub_1000B3DD8(v618, sub_1000B3C74);
      v760 = v619;
      sub_1000B35D0(v714, type metadata accessor for MessagesPendingDownloadPerPass);
      v621 = *v617;

      *v617 = v620;
    }

    v612 = type metadata accessor for MessagesPendingDownload;
    v613 = v712;
  }

LABEL_321:
  v622 = sub_1000B35D0(v613, v612);
  if (!*(*v715 + 16) && !*(*(v711 + *(v745 + 20) + v727[14]) + 16))
  {
LABEL_359:

    sub_1000B35D0(v715, type metadata accessor for MessagesPendingDownload);
    goto LABEL_360;
  }

  v623 = v713;
  v752(v622);
  v624 = v753;
  sub_1000B4820(v715, v753, type metadata accessor for MessagesPendingDownload);
  v625 = v756;
  sub_10000E268(v623, v756, &unk_1005D91B0, &unk_1004CF400);
  v626 = *(v711 + *(v745 + 20) + v727[14]);
  v627 = v749;
  sub_1000B4820(v624, v749, type metadata accessor for MessagesPendingDownload);
  v628 = v750;
  sub_10000E268(v625, v750, &unk_1005D91B0, &unk_1004CF400);
  v629 = swift_allocObject();
  *(v629 + 16) = v626;
  *v794 = v759;
  *&v794[8] = sub_1000B4908;
  *&v794[16] = v629;
  *&v794[24] = sub_1000B2F18;
  *&v794[32] = 0;
  *&v794[40] = sub_1000B2F2C;
  *&v794[48] = 0;

  v781 = sub_1000B0484(v627, v628, v794);
  v631 = v630;
  v633 = v632;
  sub_100025F40(v625, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v624, type metadata accessor for MessagesPendingDownload);
  v634 = 0;
  v635 = 0;
  v784 = v633;
  v779 = v633 + 32;
  v780 = v631 | ((HIDWORD(v631) & 1) << 32);
  while (1)
  {
    LODWORD(v785) = v634;
    if (*(&off_1005993F0 + v635 + 32))
    {
      v636 = *(&off_1005993F0 + v635 + 32);
      v637 = v636 == 1 ? 11 : 13;
      v638 = v756;
      v639 = v781;
      v640 = sub_1000DB9D8(v637, v781, v780, v756);
      __chkstk_darwin(v640);
      v702 = v638;

      v641 = v639;
      v642 = v760;
      v643 = sub_10009EBDC(sub_1000B490C, &v704[-4], v641);
      v760 = v642;
      v644 = sub_1000B0110(v643);
      sub_100025F40(v638, &unk_1005D91B0, &unk_1004CF400);
    }

    else
    {
      v636 = *(&off_1005993F0 + v635 + 32);
      v668 = *(v784 + 16);
      if (v668 <= 7)
      {

        v670 = v668 - 1;
        if (v668 > 1)
        {
          v671 = *(v784 + 16);
          if (!v671)
          {
            goto LABEL_366;
          }

          if (v670 >= v671)
          {
            goto LABEL_367;
          }

          v644 = v784;
          v672 = *(v784 + 32);
          v673 = *(v784 + 40);
          v674 = *(v784 + 48);
          LODWORD(v782) = *(v784 + 49);
          v675 = 24 * v670;
          v676 = (v779 + 24 * v670);
          v677 = *v676;
          v678 = *(v676 + 1);
          LODWORD(v778) = *(v676 + 16);
          LODWORD(v776) = *(v676 + 17);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v644 = sub_10013991C(v784);
          }

          *(v644 + 32) = v677;
          *(v644 + 40) = v678;
          *(v644 + 48) = v778;
          *(v644 + 49) = v776;
          v679 = v644 + 32 + v675;
          *v679 = v672;
          *(v679 + 8) = v673;
          *(v679 + 16) = v674;
          *(v679 + 17) = v782;
          if (v668 >> 1 != 1)
          {
            v680 = v668 - 2;
            if (v668 != 3)
            {
              v681 = *(v644 + 16);
              if (v681 < 2)
              {
                goto LABEL_366;
              }

              if (v680 >= v681)
              {
                goto LABEL_367;
              }

              v682 = *(v644 + 56);
              v683 = *(v644 + 64);
              v684 = *(v644 + 72);
              LODWORD(v782) = *(v644 + 73);
              v685 = 24 * v680;
              v686 = v644 + 24 * v680;
              v687 = *(v686 + 32);
              v778 = *(v686 + 40);
              LODWORD(v776) = *(v686 + 48);
              LODWORD(v773) = *(v686 + 49);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v644 = sub_10013991C(v644);
              }

              v688 = v644 + v685;
              *(v644 + 56) = v687;
              *(v644 + 64) = v778;
              *(v644 + 72) = v776;
              *(v644 + 73) = v773;
              *(v688 + 32) = v682;
              *(v688 + 40) = v683;
              *(v688 + 48) = v684;
              *(v688 + 49) = v782;
            }

            if (v668 >> 1 != 2)
            {
              v689 = v668 - 3;
              if (v668 != 5)
              {
                v690 = *(v644 + 16);
                if (v690 < 3)
                {
                  goto LABEL_366;
                }

                if (v689 >= v690)
                {
                  goto LABEL_367;
                }

                v691 = *(v644 + 80);
                v692 = *(v644 + 88);
                v693 = *(v644 + 96);
                LODWORD(v782) = *(v644 + 97);
                v694 = 24 * v689;
                v695 = v644 + 24 * v689;
                v696 = *(v695 + 32);
                v697 = *(v695 + 40);
                v698 = *(v695 + 48);
                LODWORD(v778) = *(v695 + 49);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v644 = sub_10013991C(v644);
                }

                v699 = v644 + v694;
                *(v644 + 80) = v696;
                *(v644 + 88) = v697;
                *(v644 + 96) = v698;
                *(v644 + 97) = v778;
                *(v699 + 32) = v691;
                *(v699 + 40) = v692;
                *(v699 + 48) = v693;
                *(v699 + 49) = v782;
              }
            }
          }
        }

        else
        {
          v644 = v784;
        }
      }

      else
      {

        v644 = sub_1000B0290(v669, v779, v668 - 7, (2 * v668) | 1);
      }
    }

    if (*(v644 + 16))
    {
      break;
    }

LABEL_325:
    v634 = 1;
    v635 = &_mh_execute_header.magic + 1;
    if (v785)
    {
      sub_100025F40(v713, &unk_1005D91B0, &unk_1004CF400);

      goto LABEL_359;
    }
  }

  v645 = (v711 + *(v745 + 20) + v727[20]);
  v647 = *v645;
  v646 = v645[1];
  v648 = v645[2];

  v782 = sub_10009EFD8(v649, sub_1000AFBE0, 0, v647);

  v833[0] = v775;
  v833[1] = v767;
  v834 = v768;
  v650 = v774;
  v835 = v774;
  LODWORD(v646) = v766;
  v836 = v766;
  swift_bridgeObjectRetain_n();

  v651 = sub_1000CE570(_swiftEmptyArrayStorage);
  v652 = v723;
  *v723 = v651;
  *(v652 + 8) = 0;
  sub_10003F6A4(v833, v644, v636, &v829);
  v653 = *(&v831 + 1);
  v654 = v830;
  *(v652 + 64) = v829;
  *(v652 + 80) = v654;
  *(v652 + 96) = v831;
  *(v652 + 112) = v832;
  *(v652 + 9) = 1;
  v796 = v650;
  v797 = v646;
  v798 = 1;
  v799 = v636;
  v655 = v746;
  *(v652 + 16) = v746;
  sub_1000B38F4();

  sub_1004A6674();
  v656 = *(v655 + 40);
  v657 = v652 + *(v655 + 36);
  v658 = _s18InProgressMessagesVMa(0);
  v659 = v658[6];
  sub_100016D2C();
  sub_1004A7114();
  v660 = v657 + v658[9];
  sub_1004A7114();
  v661 = v657 + v658[10];
  sub_1004A7114();
  v662 = sub_100162D4C(_swiftEmptyArrayStorage);
  *v657 = v650;
  *(v657 + 8) = v646;
  *(v657 + 16) = v782;
  *(v657 + v658[7]) = _swiftEmptyArrayStorage;
  *(v657 + v658[8]) = _swiftEmptyArrayStorage;
  *(v657 + v658[11]) = v662;
  sub_100045288(v652 + v656);
  sub_1000458FC(v653);

  v663 = v722;
  sub_1000B4888(v652, v722, type metadata accessor for DownloadTask);
  v664 = v747;
  v665 = (v663 + *(v747 + 36));
  *v665 = _swiftEmptyArrayStorage;
  v665[1] = _swiftEmptyArrayStorage;
  v800 = v664;
  v666 = sub_1000B458C(&qword_1005CF350, &qword_1005CF310, &unk_1004D2608);
  v801 = v666;
  v667 = sub_1000B3774(&v796);
  sub_10000E268(v663, v667, &qword_1005CF310, &unk_1004D2608);
  LOBYTE(v657) = v777(&v796);
  sub_1000197E0(&v796);
  if ((v657 & 1) == 0)
  {
    sub_100025F40(v663, &qword_1005CF310, &unk_1004D2608);
    goto LABEL_325;
  }

  *(&v803 + 1) = v747;
  v804 = v666;
  v700 = sub_1000B3774(&v802);
  sub_100025FDC(v663, v700, &qword_1005CF310, &unk_1004D2608);
  sub_100025F40(v713, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v715, type metadata accessor for MessagesPendingDownload);
  if (!*(&v803 + 1))
  {
LABEL_361:
    sub_100025F40(&v802, &qword_1005CF328, &unk_1004D2620);
    v805 = 0u;
    v806 = 0u;
    v807 = 0;
    goto LABEL_362;
  }

  sub_1000B364C(&v802, v795);
  v610 = v795;
LABEL_306:
  sub_1000B364C(v610, &v805);
  if (*(&v806 + 1))
  {
LABEL_307:
    sub_1000B35D0(v737, type metadata accessor for NewestMessages);
    goto LABEL_308;
  }

LABEL_362:
  sub_100025F40(&v805, &qword_1005CF328, &unk_1004D2620);
LABEL_363:
  v437 = v744;
  v133 = v762;
  v136 = v764;
  v439 = v765;
LABEL_184:
  v450 = 0x100000000000000;
  if (!v854)
  {
    v450 = 0;
  }

  v451 = 0x1000000000000;
  if (!v855)
  {
    v451 = 0;
  }

  v452 = 0x10000000000;
  if (!v856)
  {
    v452 = 0;
  }

  v453 = &_mh_execute_header;
  if (!v857)
  {
    v453 = 0;
  }

  v454 = 0x1000000;
  if (!v858)
  {
    v454 = 0;
  }

  v702 = v454 | v859 | v453 | v452 | v451 | v450 | v726;
  v135 = v757;
  v216 = v758;
  v121 = v777;
  v455 = v783;
  sub_1000AD0C8(v761, v136, v133, v757, v437, v777, v783, v439, &v808);
  v218 = v738;
  if (!*(&v809 + 1))
  {
    sub_100025F40(&v808, &qword_1005CF328, &unk_1004D2620);
    sub_10000E08C(v216, v795);
    sub_1000A9E50(v136, v133, v135, v121, v455, v216, v439, &v805);
    if (*(&v806 + 1))
    {
      sub_1000B35D0(v737, type metadata accessor for NewestMessages);
      sub_1000B364C(&v805, &v808);
      v431 = &v808;
      v432 = v218;
      goto LABEL_163;
    }

LABEL_220:
    v465 = sub_100025F40(&v805, &qword_1005CF328, &unk_1004D2620);
    __chkstk_darwin(v465);
    v437 = v744;
    v704[-4] = v216;
    v704[-3] = v437;
    v466 = v761;
    v702 = v467;
    v703 = v761;
    sub_1000A9C04(v136, v133, v135, v121, sub_1000B3C68, &v808);
    if (*(&v809 + 1))
    {
      goto LABEL_195;
    }

    sub_100025F40(&v808, &qword_1005CF328, &unk_1004D2620);
    sub_10000E08C(v216, v795);

    sub_1000A98BC(v136, v133, v135, v121, v783, v216, v765, v466, &v805);
    if (*(&v806 + 1))
    {
      goto LABEL_307;
    }

    sub_100025F40(&v805, &qword_1005CF328, &unk_1004D2620);
    v468 = v758;
    sub_10000E08C(v758, v795);
    sub_1000A9608(v764, v762, v757, v777, v468, v765, &v805);
    sub_1000B35D0(v737, type metadata accessor for NewestMessages);
    if (!*(&v806 + 1))
    {
      sub_100025F40(&v805, &qword_1005CF328, &unk_1004D2620);
      v469 = v738;
      v738[4] = 0;
      *v469 = 0u;
      *(v469 + 1) = 0u;
      goto LABEL_164;
    }

LABEL_308:
    sub_1000B364C(&v805, &v808);
    v431 = &v808;
LABEL_162:
    v432 = v738;
LABEL_163:
    sub_1000B364C(v431, v432);
LABEL_164:
    v131 = type metadata accessor for MessageBatches;
    v132 = v744;
    goto LABEL_165;
  }

LABEL_195:
  sub_1000B35D0(v737, type metadata accessor for NewestMessages);
  sub_1000B364C(&v808, v795);
  v448 = v795;
  v449 = v218;
LABEL_196:
  sub_1000B364C(v448, v449);
  v131 = type metadata accessor for MessageBatches;
  v132 = v437;
LABEL_165:
  sub_1000B35D0(v132, v131);
  return *&v103;
}

uint64_t sub_1000A51C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t *)@<X4>, char *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, char a15)
{
  v241 = a8;
  v242 = a7;
  v271 = a5;
  v260 = a2;
  v254 = a1;
  v249 = a9;
  v257 = type metadata accessor for SearchMailbox();
  v20 = *(*(v257 - 8) + 64);
  __chkstk_darwin(v257);
  v256 = (&v228 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v258 = sub_10000C9C0(&qword_1005CF308, &qword_1004D2600);
  v22 = *(*(v258 - 8) + 64);
  __chkstk_darwin(v258);
  v255 = &v228 - v23;
  v273 = _s19UserInitiatedSearchV5StateOMa(0);
  v24 = *(*(v273 - 8) + 64);
  __chkstk_darwin(v273);
  v264 = &v228 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = _s19UserInitiatedSearchVMa(0);
  v244 = *(v272 - 8);
  v26 = *(v244 + 64);
  __chkstk_darwin(v272);
  v259 = (&v228 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v236 = _s29DetermineMessageBatchesResultOMa(0);
  v28 = *(*(v236 - 8) + 64);
  __chkstk_darwin(v236);
  v237 = &v228 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MessageBatches(0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v235 = &v228 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for DownloadTask(0);
  v33 = *(*(v231 - 8) + 64);
  __chkstk_darwin(v231);
  v232 = (&v228 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = sub_10000C9C0(&qword_1005CF310, &unk_1004D2608);
  v35 = *(*(v233 - 8) + 64);
  __chkstk_darwin(v233);
  v234 = &v228 - v36;
  v37 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v240 = &v228 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v245 = &v228 - v42;
  __chkstk_darwin(v41);
  v247 = &v228 - v43;
  v44 = type metadata accessor for MessagesPendingDownloadPerPass();
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v243 = &v228 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for MessagesPendingDownload();
  v48 = *(*(v47 - 8) + 64);
  v49 = __chkstk_darwin(v47 - 8);
  v238 = &v228 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v239 = &v228 - v52;
  __chkstk_darwin(v51);
  v268 = &v228 - v53;
  v246 = 0;
  v269 = _s29DetermineNewestMessagesResultOMa(0);
  v54 = *(*(v269 - 8) + 64);
  __chkstk_darwin(v269);
  v56 = &v228 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = *(v15 + 172);
  v57 = *v15;
  v262 = *(v15 + 8);
  v58 = *(v15 + 16);
  v261 = *(v15 + 24);
  v250 = v15;
  v59 = *(v15 + 144);
  v60 = *(v59 + 16);
  v248 = a3;
  v265 = v58;
  v266 = v57;
  v230 = a4;
  v270 = v59;
  if (v60)
  {
    *&v281 = _swiftEmptyArrayStorage;
    swift_bridgeObjectRetain_n();

    sub_100092068(0, v60, 0);
    v61 = v281;
    v62 = (v59 + 48);
    do
    {
      v64 = *(v62 - 1);
      v63 = *v62;
      sub_100014CEC(v64, *v62);
      *&v281 = v61;
      v66 = v61[2];
      v65 = v61[3];
      v16 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        sub_100092068((v65 > 1), v66 + 1, 1);
        v61 = v281;
      }

      v62 += 5;
      v61[2] = v16;
      v67 = &v61[2 * v66];
      v67[4] = v64;
      v67[5] = v63;
      --v60;
    }

    while (v60);
    a3 = v248;
  }

  else
  {
    swift_bridgeObjectRetain_n();

    v61 = _swiftEmptyArrayStorage;
  }

  v68 = sub_1000CE67C(v61);

  v69 = v254 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v251 = _s13SelectedStateV7WrappedVMa(0);
  v70 = *(v251 + 20);
  v267 = v69;
  v71 = v69 + v70;
  v252 = type metadata accessor for MailboxSyncState();
  v72 = *(v71 + *(v252 + 56));
  *&v287 = _swiftEmptySetSingleton;
  BYTE8(v287) = 0;

  v73 = sub_10016324C(_swiftEmptyArrayStorage);
  v288 = v73;
  v74 = sub_10015D510(v72, v68);

  if (v74[2])
  {
    *&v281 = v266;
    *(&v281 + 1) = v262;
    LOWORD(v282) = v263;
    *(&v282 + 1) = v265;
    LODWORD(v283) = v261;
    *&v278 = v265;
    DWORD2(v278) = v261;
    *(&v283 + 1) = v74;
    *&v284 = &type metadata for GetUIDsForDownloadRequests;
    sub_100026044();
    sub_1004A6674();
    v293 = v285;
    v294 = v286;
    v295 = v287;
    v296 = v288;
    v289 = v281;
    v290 = v282;
    v291 = v283;
    v292 = v284;
    sub_1000965C0(&v289, v274);
    *&v274[120] = _swiftEmptyArrayStorage;
    *&v274[128] = _swiftEmptyArrayStorage;
    sub_1000965F8(&v289);
    *&v275[96] = *&v274[96];
    *&v275[112] = *&v274[112];
    *&v275[128] = *&v274[128];
    *&v275[32] = *&v274[32];
    *&v275[48] = *&v274[48];
    *&v275[64] = *&v274[64];
    *&v275[80] = *&v274[80];
    *v275 = *v274;
    *&v275[16] = *&v274[16];
    v73 = &qword_1004D2618;
    v75 = sub_10000C9C0(&qword_1005CF318, &qword_1004D2618);
    *&v274[24] = v75;
    v76 = sub_1000B458C(&qword_1005CF320, &qword_1005CF318, &qword_1004D2618);
    *&v274[32] = v76;
    *v274 = swift_allocObject();
    sub_10000E268(v275, *v274 + 16, &qword_1005CF318, &qword_1004D2618);
    v77 = v271(v274);
    sub_1000197E0(v274);
    if (v77)
    {

      v78 = v249;
      v249[3] = v75;
      v78[4] = v76;
      result = swift_allocObject();
      *v78 = result;
      v80 = *&v275[112];
      *(result + 112) = *&v275[96];
      *(result + 128) = v80;
      *(result + 144) = *&v275[128];
      v81 = *&v275[48];
      *(result + 48) = *&v275[32];
      *(result + 64) = v81;
      v82 = *&v275[80];
      *(result + 80) = *&v275[64];
      *(result + 96) = v82;
      v83 = *&v275[16];
      *(result + 16) = *v275;
      *(result + 32) = v83;
      return result;
    }

    sub_100025F40(v275, &qword_1005CF318, &qword_1004D2618);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v229 = a13;
  LOBYTE(v84) = v250;
  sub_1000A7A7C(v254, v271, a6, v56);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v86 = v264;
  v87 = v268;
  if (EnumCaseMultiPayload == 1)
  {

    v88 = *(v56 + 1);
    v89 = v249;
    *v249 = *v56;
    *(v89 + 16) = v88;
    *(v89 + 32) = *(v56 + 4);
    return result;
  }

  sub_1000B35D0(v56, _s29DetermineNewestMessagesResultOMa);
  if (qword_1005CCE28 != -1)
  {
    swift_once();
  }

  v90 = v260;
  v91 = sub_1000B33E4(qword_1005DDEF0, v260, a3);
  v253 = a6;
  if ((v91 & 1) == 0)
  {

    goto LABEL_62;
  }

  v16 = v251;
  v92 = v252;
  v93 = v267;
  v94 = v267 + *(v251 + 20) + *(v252 + 52);
  v95 = v94 + *(type metadata accessor for PendingPersistenceUpdates() + 28);
  v84 = v243;
  sub_1000B4820(v95, v243, type metadata accessor for MessagesPendingDownloadPerPass);
  sub_1000B4820(v84, v87, type metadata accessor for MessagesPendingDownload);
  v96 = sub_1000B35D0(v84, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!*(*v87 + 16) && !*(*(v93 + *(v16 + 20) + *(v92 + 56)) + 16))
  {

    sub_1000B35D0(v87, type metadata accessor for MessagesPendingDownload);
    a3 = v248;
    v90 = v260;
    goto LABEL_62;
  }

  v97 = v247;
  v242(v96);
  v98 = v239;
  sub_1000B4820(v87, v239, type metadata accessor for MessagesPendingDownload);
  a6 = &unk_1004CF400;
  v87 = v245;
  sub_10000E268(v97, v245, &unk_1005D91B0, &unk_1004CF400);
  v99 = *(v93 + *(v16 + 20) + *(v92 + 56));
  v16 = v238;
  sub_1000B4820(v98, v238, type metadata accessor for MessagesPendingDownload);
  v100 = v240;
  sub_10000E268(v87, v240, &unk_1005D91B0, &unk_1004CF400);
  v101 = swift_allocObject();
  *(v101 + 16) = v99;
  *&v289 = v270;
  *(&v289 + 1) = sub_1000B38CC;
  *&v290 = v101;
  *(&v290 + 1) = sub_1000B2F18;
  *&v291 = 0;
  *(&v291 + 1) = sub_1000B2F2C;
  *&v292 = 0;

  v102 = sub_1000B0484(v16, v100, &v289);
  v243 = v103;
  sub_100025F40(v87, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v98, type metadata accessor for MessagesPendingDownload);
  v242 = v102;
  LODWORD(v241) = 0;
  v104 = v243;
  v73 = *(v243 + 16);
  LOBYTE(v84) = v73 - 7;
  a3 = v248;
  v90 = v260;
  if (v73 > 7)
  {

    v106 = sub_1000B0290(v105, v104 + 32, v73 - 7, (2 * v73) | 1);
    v86 = v264;
LABEL_25:
    v108 = v267;
    v109 = v251;
    v110 = v252;
    v73 = v106[2];
    if (!v73)
    {
      goto LABEL_60;
    }

LABEL_26:
    v111 = *(v108 + *(v109 + 20) + *(v110 + 80));
    v112 = *(v111 + 16);
    v269 = v111 + 32;
    v270 = (v106 + 4);
    v251 = v111;
    v113 = v106;

    v252 = v113;

    v114 = 0;
    v115 = _swiftEmptyArrayStorage;
    v267 = v73;
    do
    {
      if (v112)
      {
        v126 = *(v270 + 24 * v114);
        v127 = v269;
        v128 = v112;
        while (1)
        {
          v129 = *v127;
          v130 = v127[1];
          v131 = v127[3];
          *&v275[32] = v127[2];
          *&v275[48] = v131;
          *v275 = v129;
          *&v275[16] = v130;
          v132 = v127[4];
          v133 = v127[5];
          v134 = v127[7];
          *&v275[96] = v127[6];
          *&v275[112] = v134;
          *&v275[64] = v132;
          *&v275[80] = v133;
          v135 = v127[8];
          v136 = v127[9];
          v137 = v127[10];
          *&v275[169] = *(v127 + 169);
          *&v275[144] = v136;
          *&v275[160] = v137;
          *&v275[128] = v135;
          if (v126 == *v275)
          {
            break;
          }

          v127 += 12;
          if (!--v128)
          {
            goto LABEL_28;
          }
        }

        sub_10001025C(v275, v274);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_1000866F0(0, v115[2] + 1, 1, v115);
        }

        v139 = v115[2];
        v138 = v115[3];
        if (v139 >= v138 >> 1)
        {
          v115 = sub_1000866F0((v138 > 1), v139 + 1, 1, v115);
        }

        *&v274[132] = *&v275[136];
        *&v274[148] = *&v275[152];
        *&v274[164] = *&v275[168];
        v274[180] = v275[184];
        *&v274[68] = *&v275[72];
        *&v274[84] = *&v275[88];
        *&v274[100] = *&v275[104];
        *&v274[116] = *&v275[120];
        *&v274[4] = *&v275[8];
        *&v274[20] = *&v275[24];
        *&v274[36] = *&v275[40];
        *&v274[52] = *&v275[56];
        v115[2] = v139 + 1;
        v116 = &v115[24 * v139];
        *(v116 + 8) = v126;
        v117 = *v274;
        v118 = *&v274[16];
        v119 = *&v274[32];
        *(v116 + 84) = *&v274[48];
        *(v116 + 68) = v119;
        *(v116 + 52) = v118;
        *(v116 + 36) = v117;
        v120 = *&v274[64];
        v121 = *&v274[80];
        v122 = *&v274[96];
        *(v116 + 148) = *&v274[112];
        *(v116 + 132) = v122;
        *(v116 + 116) = v121;
        *(v116 + 100) = v120;
        v123 = *&v274[128];
        v124 = *&v274[144];
        v125 = *&v274[160];
        *(v116 + 209) = *&v274[173];
        *(v116 + 196) = v125;
        *(v116 + 180) = v124;
        *(v116 + 164) = v123;
        v73 = v267;
      }

LABEL_28:
      ++v114;
    }

    while (v114 != v73);
    if (v115[2])
    {
      sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
      v140 = sub_1004A6A74();
    }

    else
    {
      v140 = &_swiftEmptyDictionarySingleton;
    }

    v141 = v266;
    *v275 = v140;
    v142 = v246;
    sub_1000B2F70(v115, 1, v275);
    if (v142)
    {

      __break(1u);
      return result;
    }

    v143 = v252;

    v270 = *v275;
    v297[0] = v141;
    v297[1] = v262;
    v298 = v263;
    v144 = v265;
    v299 = v265;
    v300 = v261;
    v145 = v261;
    swift_bridgeObjectRetain_n();

    v146 = sub_1000CE570(_swiftEmptyArrayStorage);
    v147 = v232;
    *v232 = v146;
    *(v147 + 8) = 0;
    v148 = v241;
    sub_10003F6A4(v297, v143, v241, v275);
    v149 = *&v275[40];
    v150 = *&v275[16];
    *(v147 + 64) = *v275;
    *(v147 + 80) = v150;
    *(v147 + 96) = *&v275[32];
    *(v147 + 112) = v275[48];
    *(v147 + 9) = 0;
    *v274 = v144;
    *&v274[8] = v145;
    LODWORD(a6) = v145;
    v274[12] = 0;
    v274[13] = v148;
    v151 = v231;
    *(v147 + 16) = v231;
    sub_1000B38F4();

    sub_1004A6674();
    v152 = *(v151 + 36);
    v269 = *(v151 + 40);
    v84 = v147 + v152;
    v153 = _s18InProgressMessagesVMa(0);
    v154 = v153[6];
    sub_100016D2C();
    sub_1004A7114();
    v155 = v84 + v153[9];
    sub_1004A7114();
    v156 = v84 + v153[10];
    sub_1004A7114();
    v157 = sub_100162D4C(_swiftEmptyArrayStorage);
    *v84 = v144;
    *(v84 + 8) = a6;
    *(v84 + 16) = v270;
    *(v84 + v153[7]) = _swiftEmptyArrayStorage;
    *(v84 + v153[8]) = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
    *(v84 + v153[11]) = v157;
    sub_100045288(v147 + v269);
    sub_1000458FC(v149);

    v158 = v234;
    sub_1000B4888(v147, v234, type metadata accessor for DownloadTask);
    v87 = v233;
    v159 = (v158 + *(v233 + 36));
    *v159 = _swiftEmptyArrayStorage;
    v159[1] = _swiftEmptyArrayStorage;
    *&v274[24] = v87;
    v73 = sub_1000B458C(&qword_1005CF350, &qword_1005CF310, &unk_1004D2608);
    *&v274[32] = v73;
    v160 = sub_1000B3774(v274);
    sub_10000E268(v158, v160, &qword_1005CF310, &unk_1004D2608);
    LOBYTE(v84) = v271(v274);
    sub_1000197E0(v274);
    if ((v84 & 1) == 0)
    {
      sub_100025F40(v158, &qword_1005CF310, &unk_1004D2608);
      a3 = v248;
      v90 = v260;
      v86 = v264;
      LOBYTE(v84) = v242;
      goto LABEL_61;
    }

    *(&v279 + 1) = v87;
    v280 = v73;
    v161 = sub_1000B3774(&v278);
    sub_100025FDC(v158, v161, &qword_1005CF310, &unk_1004D2608);
    sub_100025F40(v247, &unk_1005D91B0, &unk_1004CF400);
    sub_1000B35D0(v268, type metadata accessor for MessagesPendingDownload);
    a3 = v248;
    v90 = v260;
    v86 = v264;
    if (*(&v279 + 1))
    {
      sub_1000B364C(&v278, &v281);
      v162 = &v281;
      return sub_1000B364C(v162, v249);
    }

    goto LABEL_63;
  }

  v107 = v73 - 1;
  v86 = v264;
  v106 = v104;
  if (v73 <= 1)
  {
    goto LABEL_25;
  }

  v163 = *(v104 + 16);
  if (!v163)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v107 < v163)
  {
    LODWORD(v16) = *(v104 + 32);
    v270 = *(v104 + 40);
    LOBYTE(a6) = *(v104 + 48);
    LODWORD(v269) = *(v104 + 49);
    v87 = 24 * v107;
    v164 = v104 + 32 + 24 * v107;
    LODWORD(a3) = *v164;
    v90 = *(v164 + 8);
    LOBYTE(v84) = *(v164 + 16);
    LOBYTE(v86) = *(v164 + 17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v104;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_50;
  }

LABEL_95:
  while (1)
  {
    __break(1u);
LABEL_96:
    v106 = sub_10013991C(v243);
LABEL_50:
    *(v106 + 8) = a3;
    v106[5] = v90;
    *(v106 + 48) = v84;
    *(v106 + 49) = v86;
    v166 = v106 + v87 + 32;
    *v166 = v16;
    *(v166 + 1) = v270;
    v166[16] = a6;
    v166[17] = v269;
    a3 = v248;
    v90 = v260;
    v86 = v264;
    v108 = v267;
    v110 = v252;
    v84 = v73 >> 1;
    if (v73 >> 1 == 1)
    {
      break;
    }

    v167 = v73 - 2;
    if (v73 == 3)
    {
      goto LABEL_57;
    }

    v168 = v106[2];
    if (v168 < 2)
    {
      goto LABEL_94;
    }

    if (v167 < v168)
    {
      LODWORD(v270) = *(v106 + 14);
      v269 = v106[8];
      LODWORD(v245) = *(v106 + 72);
      v87 = *(v106 + 73);
      v169 = 24 * v167;
      v170 = &v106[3 * v167];
      v171 = *(v170 + 8);
      v172 = *(v170 + 5);
      v173 = v170[48];
      LODWORD(v16) = v170[49];
      a6 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a6 = sub_10013991C(a6);
      }

      v108 = v267;
      v110 = v252;
      v106 = a6;
      v174 = &a6[v169];
      *(a6 + 14) = v171;
      *(a6 + 8) = v172;
      a6[72] = v173;
      a6[73] = v16;
      *(v174 + 8) = v270;
      *(v174 + 5) = v269;
      v174[48] = v245;
      v174[49] = v87;
      a3 = v248;
      v90 = v260;
      v86 = v264;
LABEL_57:
      if (v84 == 2)
      {
        break;
      }

      v175 = v73 - 3;
      if (v73 == 5)
      {
        break;
      }

      v219 = v106[2];
      if (v219 < 3)
      {
        goto LABEL_94;
      }

      if (v175 < v219)
      {
        LODWORD(v270) = *(v106 + 20);
        v220 = v106[11];
        v221 = *(v106 + 96);
        v222 = *(v106 + 97);
        v16 = 24 * v175;
        v223 = &v106[3 * v175];
        v87 = *(v223 + 8);
        v224 = *(v223 + 5);
        v225 = v223[48];
        v226 = v223[49];
        a6 = v106;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a6 = sub_10013991C(a6);
        }

        v106 = a6;
        v227 = &a6[v16];
        *(a6 + 20) = v87;
        *(a6 + 11) = v224;
        a6[96] = v225;
        a6[97] = v226;
        *(v227 + 8) = v270;
        *(v227 + 5) = v220;
        v227[48] = v221;
        v227[49] = v222;
        a3 = v248;
        v90 = v260;
        v86 = v264;
        goto LABEL_25;
      }
    }
  }

  v109 = v251;
  v73 = v106[2];
  if (v73)
  {
    goto LABEL_26;
  }

LABEL_60:

  LOBYTE(v84) = v242;
LABEL_61:
  sub_100025F40(v247, &unk_1005D91B0, &unk_1004CF400);

  sub_1000B35D0(v268, type metadata accessor for MessagesPendingDownload);
LABEL_62:
  v280 = 0;
  v278 = 0u;
  v279 = 0u;
LABEL_63:
  sub_100025F40(&v278, &qword_1005CF328, &unk_1004D2620);
  if (qword_1005CCE90 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF88, v90, a3) & 1) == 0)
  {
    __break(1u);
    goto LABEL_94;
  }

  v252 = a12;
  v247 = *(v250 + 152);
  v176 = *(v247 + 16);
  v177 = v259;
  if (!v176)
  {
LABEL_73:
    result = sub_100061FF0(v247);
    if (result)
    {
      v194 = v237;
      v195 = v250;
      sub_1000AB17C(v254, v271, v253, v252, a14, a15 & 1, v237);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        v196 = *(v194 + 16);
        v197 = v249;
        *v249 = *v194;
        *(v197 + 16) = v196;
        *(v197 + 32) = *(v194 + 32);
      }

      else
      {
        v200 = HIDWORD(v229) & 1;
        v201 = v229 & 1;
        v272 = HIWORD(v229) & 1;
        v273 = (v229 >> 40) & 1;
        v270 = HIBYTE(v229) & 1;
        v202 = BYTE3(v229) & 1;
        v203 = v229 >> 16;
        v204 = v194;
        v205 = v229 >> 8;
        v206 = v235;
        sub_1000B4888(v204, v235, type metadata accessor for MessageBatches);
        v207 = __chkstk_darwin(v90);
        *(&v228 - 4) = v195;
        *(&v228 - 3) = v206;
        LODWORD(v268) = v201;
        *(&v228 - 16) = v201;
        v265 = v205;
        v266 = v203;
        *(&v228 - 15) = v205;
        *(&v228 - 14) = v203;
        LODWORD(v267) = v202;
        *(&v228 - 13) = v202;
        v269 = v200;
        *(&v228 - 12) = v200;
        v209 = v272;
        v208 = v273;
        v211 = v270;
        v210 = v271;
        *(&v228 - 11) = v273;
        *(&v228 - 10) = v209;
        *(&v228 - 9) = v211;
        v212 = v248;
        v213 = v230;
        sub_1000A8478(v207, v248, v230, v210, sub_1000B3630, &v276);
        if (v277)
        {
          sub_1000B364C(&v276, &v278);
          sub_1000B364C(&v278, &v281);
          v214 = v249;
          v215 = v235;
        }

        else
        {
          v216 = sub_100025F40(&v276, &qword_1005CF328, &unk_1004D2620);
          __chkstk_darwin(v216);
          v217 = v235;
          *(&v228 - 6) = v250;
          *(&v228 - 5) = v217;
          v218 = v252;
          *(&v228 - 4) = v254;
          *(&v228 - 3) = v218;
          *(&v228 - 16) = v268;
          LOBYTE(v218) = v266;
          *(&v228 - 15) = v265;
          *(&v228 - 14) = v218;
          *(&v228 - 13) = v267;
          *(&v228 - 12) = v269;
          *(&v228 - 11) = v208;
          *(&v228 - 10) = v209;
          *(&v228 - 9) = v211;
          sub_1000A814C(v260, v212, v213, v271, v253, sub_1000B3634, &v276);
          v215 = v217;
          if (v277)
          {
            sub_1000B364C(&v276, &v278);
            sub_1000B364C(&v278, &v281);
          }

          else
          {
            sub_100025F40(&v276, &qword_1005CF328, &unk_1004D2620);
            v281 = 0u;
            v282 = 0u;
            *&v283 = 0;
          }

          v214 = v249;
        }

        sub_1000B35D0(v215, type metadata accessor for MessageBatches);
        if (*(&v282 + 1))
        {
          sub_1000B364C(&v281, v274);
          return sub_1000B364C(v274, v214);
        }

        else
        {
          result = sub_100025F40(&v281, &qword_1005CF328, &unk_1004D2620);
          *(v214 + 32) = 0;
          *v214 = 0u;
          *(v214 + 16) = 0u;
        }
      }
    }

    else
    {
      v198 = v249;
      v249[4] = 0;
      *v198 = 0u;
      *(v198 + 1) = 0u;
    }

    return result;
  }

  v178 = v247 + ((*(v244 + 80) + 32) & ~*(v244 + 80));
  v179 = *(v244 + 72);
  v251 = v179;
  while (2)
  {
    sub_1000B4820(v178, v177, _s19UserInitiatedSearchVMa);
    sub_1000B4820(v177 + *(v272 + 20), v86, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000B35D0(v177, _s19UserInitiatedSearchVMa);
      sub_1000B35D0(v86, _s19UserInitiatedSearchV5StateOMa);
      goto LABEL_69;
    }

    v181 = *v86;
    v180 = *(v86 + 8);
    v269 = *(v86 + 16);
    LODWORD(v268) = *(v86 + 24);
    v182 = *v177;
    LODWORD(v267) = *(v252 + 4);
    v184 = v256;
    v183 = v257;
    *v256 = 223;
    *(v184 + 104) = _swiftEmptySetSingleton;
    *(v184 + 112) = 0;
    v185 = *(v183 + 52);
    v186 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    (*(*(v186 - 8) + 56))(v184 + v185, 1, 1, v186);
    *(v184 + 8) = v182;
    v187 = v265;
    v188 = v262;
    *(v184 + 16) = v266;
    *(v184 + 24) = v188;
    *(v184 + 32) = v263;
    *(v184 + 40) = v187;
    LODWORD(v188) = v261;
    *(v184 + 48) = v261;
    LODWORD(v278) = v182;
    *(&v278 + 1) = v187;
    LODWORD(v279) = v188;
    *(v184 + 56) = v183;
    swift_bridgeObjectRetain_n();

    sub_1000B3664(v181);
    sub_1000B3720();

    sub_1004A6674();
    *(v184 + 120) = v181;
    *(v184 + 128) = v180;
    v270 = v180;
    *(v184 + 136) = v269;
    *(v184 + 144) = v268;
    *(v184 + 145) = v267;
    v189 = v255;
    sub_1000B4888(v184, v255, type metadata accessor for SearchMailbox);
    v190 = v258;
    v191 = (v189 + *(v258 + 36));
    *v191 = _swiftEmptyArrayStorage;
    v191[1] = _swiftEmptyArrayStorage;
    *(&v279 + 1) = v190;
    v192 = sub_1000B458C(&qword_1005CF338, &qword_1005CF308, &qword_1004D2600);
    v280 = v192;
    v193 = sub_1000B3774(&v278);
    sub_10000E268(v189, v193, &qword_1005CF308, &qword_1004D2600);
    LOBYTE(v182) = v271(&v278);
    sub_1000197E0(&v278);
    if ((v182 & 1) == 0)
    {
      sub_1000B37D8(v181);

      sub_100025F40(v189, &qword_1005CF308, &qword_1004D2600);
      v177 = v259;
      sub_1000B35D0(v259, _s19UserInitiatedSearchVMa);
      v90 = v260;
      v86 = v264;
      v179 = v251;
LABEL_69:
      v178 += v179;
      if (!--v176)
      {
        goto LABEL_73;
      }

      continue;
    }

    break;
  }

  *(&v282 + 1) = v258;
  *&v283 = v192;
  v199 = sub_1000B3774(&v281);
  sub_100025FDC(v189, v199, &qword_1005CF308, &qword_1004D2600);
  sub_1000B37D8(v181);

  sub_1000B35D0(v259, _s19UserInitiatedSearchVMa);
  sub_1000B364C(&v281, v274);
  v162 = v274;
  return sub_1000B364C(v162, v249);
}

uint64_t sub_1000A6DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v79 = a4;
  v83 = a1;
  v91 = type metadata accessor for SearchMailbox();
  v19 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10000C9C0(&qword_1005CF308, &qword_1004D2600);
  v22 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v90 = &v77 - v23;
  v101 = _s19UserInitiatedSearchV5StateOMa(0);
  v24 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v94 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = _s19UserInitiatedSearchVMa(0);
  v26 = *(v100 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v100);
  v29 = (&v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = _s29DetermineMessageBatchesResultOMa(0);
  v30 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MessageBatches(0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005CCE90 != -1)
  {
    swift_once();
  }

  result = sub_1000B33E4(qword_1005DDF88, a2, a3);
  if (result)
  {
    v80 = v32;
    v81 = v36;
    v77 = a2;
    v78 = a3;
    v84 = a7;
    v38 = a14;
    v93 = a10;
    v85 = *(a14 + 152);
    v39 = *(v85 + 16);
    v40 = v94;
    if (v39)
    {
      v41 = v85 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v42 = *(v26 + 72);
      v89 = a5;
      v88 = a14;
      v86 = v42;
      v87 = v29;
      do
      {
        sub_1000B4820(v41, v29, _s19UserInitiatedSearchVMa);
        sub_1000B4820(v29 + *(v100 + 20), v40, _s19UserInitiatedSearchV5StateOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1000B35D0(v29, _s19UserInitiatedSearchVMa);
          sub_1000B35D0(v40, _s19UserInitiatedSearchV5StateOMa);
        }

        else
        {
          v43 = *(v40 + 8);
          v102 = *v40;
          v103 = v43;
          v99 = *(v40 + 16);
          v98 = *(v40 + 24);
          v44 = *v29;
          v96 = *(v38 + 172);
          v45 = *v38;
          v95 = *(v38 + 8);
          v46 = v38;
          v47 = *(v38 + 16);
          v48 = *(v46 + 24);
          v97 = *(v93 + 4);
          *v21 = 223;
          *(v21 + 13) = _swiftEmptySetSingleton;
          v21[112] = 0;
          v49 = a6;
          v50 = v91;
          v51 = *(v91 + 52);
          v52 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
          (*(*(v52 - 8) + 56))(&v21[v51], 1, 1, v52);
          *(v21 + 2) = v44;
          v53 = v95;
          *(v21 + 2) = v45;
          *(v21 + 3) = v53;
          *(v21 + 16) = v96;
          *(v21 + 5) = v47;
          *(v21 + 12) = v48;
          LODWORD(v106) = v44;
          *(&v106 + 1) = v47;
          v107 = v48;
          *(v21 + 7) = v50;
          swift_bridgeObjectRetain_n();

          v54 = v102;
          sub_1000B3664(v102);
          sub_1000B3720();
          v55 = v103;

          sub_1004A6674();
          *(v21 + 15) = v54;
          *(v21 + 16) = v55;
          *(v21 + 17) = v99;
          v21[144] = v98;
          *(v21 + 145) = v97;
          v56 = v90;
          sub_1000B4888(v21, v90, type metadata accessor for SearchMailbox);
          v57 = v92;
          v58 = (v56 + *(v92 + 36));
          *v58 = _swiftEmptyArrayStorage;
          v58[1] = _swiftEmptyArrayStorage;
          v108 = v57;
          v59 = sub_1000B458C(&qword_1005CF338, &qword_1005CF308, &qword_1004D2600);
          v109 = v59;
          v60 = sub_1000B3774(&v106);
          sub_10000E268(v56, v60, &qword_1005CF308, &qword_1004D2600);
          a6 = v49;
          a5 = v89;
          LOBYTE(v45) = v89(&v106);
          sub_1000197E0(&v106);
          if (v45)
          {
            *(&v111 + 1) = v92;
            v112 = v59;
            v65 = sub_1000B3774(&v110);
            sub_100025FDC(v56, v65, &qword_1005CF308, &qword_1004D2600);
            sub_1000B37D8(v102);

            sub_1000B35D0(v87, _s19UserInitiatedSearchVMa);
            sub_1000B364C(&v110, &v113);
            return sub_1000B364C(&v113, v84);
          }

          sub_1000B37D8(v102);

          sub_100025F40(v56, &qword_1005CF308, &qword_1004D2600);
          v29 = v87;
          sub_1000B35D0(v87, _s19UserInitiatedSearchVMa);
          v38 = v88;
          v40 = v94;
          v42 = v86;
        }

        v41 += v42;
        --v39;
      }

      while (v39);
    }

    result = sub_100061FF0(v85);
    if (result)
    {
      v61 = v80;
      sub_1000AB17C(v83, a5, a6, v93, a12, a13 & 1, v80);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        v62 = *(v61 + 16);
        v63 = v84;
        *v84 = *v61;
        *(v63 + 16) = v62;
        *(v63 + 32) = *(v61 + 32);
      }

      else
      {
        v66 = v81;
        v67 = sub_1000B4888(v61, v81, type metadata accessor for MessageBatches);
        __chkstk_darwin(v67);
        *(&v77 - 4) = v68;
        *(&v77 - 3) = v66;
        LODWORD(v100) = a11 & 1;
        *(&v77 - 16) = a11 & 1;
        v102 = a11 >> 8;
        *(&v77 - 15) = BYTE1(a11);
        v103 = a11 >> 16;
        *(&v77 - 14) = BYTE2(a11);
        v88 = v68;
        *(&v77 - 13) = BYTE3(a11) & 1;
        *(&v77 - 12) = BYTE4(a11) & 1;
        v69 = (a11 >> 40) & 1;
        *(&v77 - 11) = v69;
        *(&v77 - 10) = BYTE6(a11) & 1;
        v70 = HIBYTE(a11) & 1;
        *(&v77 - 9) = v70;
        v71 = v77;
        v72 = v78;
        v73 = v79;
        v89 = a5;
        v101 = a6;
        sub_1000A8478(v77, v78, v79, a5, sub_1000B4930, &v104);
        if (v105)
        {
          goto LABEL_18;
        }

        v74 = sub_100025F40(&v104, &qword_1005CF328, &unk_1004D2620);
        __chkstk_darwin(v74);
        *(&v77 - 6) = v88;
        *(&v77 - 5) = v66;
        v75 = v93;
        *(&v77 - 4) = v83;
        *(&v77 - 3) = v75;
        *(&v77 - 16) = v100;
        *(&v77 - 15) = v102;
        *(&v77 - 14) = v103;
        *(&v77 - 13) = BYTE3(a11) & 1;
        *(&v77 - 12) = BYTE4(a11) & 1;
        *(&v77 - 11) = v69;
        *(&v77 - 10) = BYTE6(a11) & 1;
        *(&v77 - 9) = v70;
        sub_1000A814C(v71, v72, v73, v89, v101, sub_1000B4934, &v104);
        if (v105)
        {
LABEL_18:
          sub_1000B364C(&v104, &v106);
          sub_1000B364C(&v106, &v110);
        }

        else
        {
          sub_100025F40(&v104, &qword_1005CF328, &unk_1004D2620);
          v110 = 0u;
          v111 = 0u;
          v112 = 0;
        }

        v76 = v84;
        sub_1000B35D0(v81, type metadata accessor for MessageBatches);
        if (*(&v111 + 1))
        {
          sub_1000B364C(&v110, &v113);
          return sub_1000B364C(&v113, v76);
        }

        else
        {
          result = sub_100025F40(&v110, &qword_1005CF328, &unk_1004D2620);
          *(v76 + 32) = 0;
          *v76 = 0u;
          *(v76 + 16) = 0u;
        }
      }
    }

    else
    {
      v64 = v84;
      *(v84 + 32) = 0;
      *v64 = 0u;
      v64[1] = 0u;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A784C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  if (*(a1 + 16) && (v10 = sub_100063B5C(*(a2 + 16), *(a2 + 24)), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(a1 + 56);
    v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v15 = *(v14 - 8);
    sub_10000E268(v13 + *(v15 + 72) * v12, v9, &unk_1005D91B0, &unk_1004CF400);
    (*(v15 + 56))(v9, 0, 1, v14);
    return sub_100025FDC(v9, a3, &unk_1005D91B0, &unk_1004CF400);
  }

  else
  {
    v17 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    sub_100016D2C();
    sub_1004A7114();
    result = (*(v18 + 48))(v9, 1, v17);
    if (result != 1)
    {
      return sub_100025F40(v9, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  return result;
}

uint64_t sub_1000A7A7C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v64 = a4;
  v61 = a2;
  v6 = type metadata accessor for DetermineNewestMessages();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v59 - v11;
  v62 = sub_10000C9C0(&qword_1005CF3B0, &qword_1004D26A0);
  v13 = *(*(v62 - 8) + 64);
  v14 = __chkstk_darwin(v62);
  v60 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = &v59 - v16;
  v17 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v59 - v19;
  v21 = type metadata accessor for NewestMessages();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v27 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v28 = type metadata accessor for MailboxSyncState();
  sub_10000E268(v26 + v27 + *(v28 + 64), v20, &qword_1005CDC18, &qword_1004CF9E0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100025F40(v20, &qword_1005CDC18, &qword_1004CF9E0);
    v29 = *(v4 + 43);
    v30 = *v4;
    v31 = v4[1];
    v32 = v4[2];
    v33 = *(v4 + 6);
    *v10 = _swiftEmptySetSingleton;
    v10[8] = 0;
    v34 = *(v6 + 32);
    v35 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    (*(*(v35 - 8) + 56))(&v10[v34], 1, 1, v35);
    v65 = v32;
    v66 = v33;
    *(v10 + 2) = v6;
    sub_100026044();
    swift_bridgeObjectRetain_n();

    sub_1004A6674();
    *(v10 + 8) = v30;
    *(v10 + 9) = v31;
    *(v10 + 40) = v29;
    *(v10 + 11) = v32;
    *(v10 + 24) = v33;
    v36 = v60;
    sub_1000B4888(v10, v60, type metadata accessor for DetermineNewestMessages);
    v37 = v62;
    v38 = (v36 + *(v62 + 36));
    *v38 = _swiftEmptyArrayStorage;
    v38[1] = _swiftEmptyArrayStorage;
    v67 = v37;
    v39 = sub_1000B458C(&qword_1005CF3B8, &qword_1005CF3B0, &qword_1004D26A0);
    v68 = v39;
    v40 = sub_1000B3774(&v65);
    sub_10000E268(v36, v40, &qword_1005CF3B0, &qword_1004D26A0);
    LOBYTE(v34) = v61(&v65);
    sub_1000197E0(&v65);
    if ((v34 & 1) == 0)
    {
      sub_100025F40(v36, &qword_1005CF3B0, &qword_1004D26A0);
      _s29DetermineNewestMessagesResultOMa(0);
      v57 = v64;
      *v64 = 0u;
      *(v57 + 16) = 0u;
      *(v57 + 32) = 0;
      return swift_storeEnumTagMultiPayload();
    }

    v41 = v64;
    v64[3] = v37;
    v41[4] = v39;
    v42 = sub_1000B3774(v41);
    sub_100025FDC(v36, v42, &qword_1005CF3B0, &qword_1004D26A0);
    goto LABEL_8;
  }

  v43 = v62;
  sub_1000B4888(v20, v25, type metadata accessor for NewestMessages);
  if (*&v25[*(v21 + 24)] <= 130 && *&v25[*(v21 + 20)] < 131)
  {
LABEL_12:
    sub_1000B4888(v25, v64, type metadata accessor for NewestMessages);
    _s29DetermineNewestMessagesResultOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  v60 = v25;
  v44 = *(v4 + 43);
  v45 = *v4;
  v46 = v4[1];
  v47 = v4[2];
  v48 = *(v4 + 6);
  *v12 = _swiftEmptySetSingleton;
  v12[8] = 0;
  v49 = *(v6 + 32);
  v50 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  (*(*(v50 - 8) + 56))(&v12[v49], 1, 1, v50);
  v65 = v47;
  v66 = v48;
  *(v12 + 2) = v6;
  sub_100026044();
  swift_bridgeObjectRetain_n();

  sub_1004A6674();
  *(v12 + 8) = v45;
  *(v12 + 9) = v46;
  *(v12 + 40) = v44;
  *(v12 + 11) = v47;
  *(v12 + 24) = v48;
  v51 = v59;
  sub_1000B4888(v12, v59, type metadata accessor for DetermineNewestMessages);
  v52 = (v51 + *(v43 + 36));
  *v52 = _swiftEmptyArrayStorage;
  v52[1] = _swiftEmptyArrayStorage;
  v67 = v43;
  v53 = sub_1000B458C(&qword_1005CF3B8, &qword_1005CF3B0, &qword_1004D26A0);
  v68 = v53;
  v54 = sub_1000B3774(&v65);
  sub_10000E268(v51, v54, &qword_1005CF3B0, &qword_1004D26A0);
  LOBYTE(v49) = v61(&v65);
  sub_1000197E0(&v65);
  if ((v49 & 1) == 0)
  {
    sub_100025F40(v51, &qword_1005CF3B0, &qword_1004D26A0);
    v25 = v60;
    goto LABEL_12;
  }

  v55 = v64;
  v64[3] = v43;
  v55[4] = v53;
  v56 = sub_1000B3774(v55);
  sub_100025FDC(v51, v56, &qword_1005CF3B0, &qword_1004D26A0);
  sub_1000B35D0(v60, type metadata accessor for NewestMessages);
LABEL_8:
  _s29DetermineNewestMessagesResultOMa(0);
  return swift_storeEnumTagMultiPayload();
}

double sub_1000A814C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v30[1] = a5;
  v31 = a4;
  v12 = sub_10000C9C0(&qword_1005CF368, &qword_1004D2650);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v30 - v14;
  v16 = sub_10000C9C0(&qword_1005CF370, &qword_1004D2658);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = (v30 - v21);
  if (qword_1005CCE38 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF00, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a6();
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  if ((*(*(SearchResultMessages - 8) + 48))(v15, 1, SearchResultMessages) == 1)
  {
    sub_100025F40(v15, &qword_1005CF368, &qword_1004D2650);
LABEL_6:
    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  sub_1000B4820(v15, v20, type metadata accessor for FetchSearchResultMessages);
  v25 = &v20[*(v16 + 36)];
  *v25 = _swiftEmptyArrayStorage;
  *(v25 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v15, type metadata accessor for FetchSearchResultMessages);
  sub_100025FDC(v20, v22, &qword_1005CF370, &qword_1004D2658);
  if (!*(*v22 + 16) || (sub_1000AEB8C(*v22, a1, a2, a3)) && (v32[3] = v16, v26 = sub_1000B458C(&qword_1005CF378, &qword_1005CF370, &qword_1004D2658), v32[4] = v26, v27 = sub_1000B3774(v32), sub_10000E268(v22, v27, &qword_1005CF370, &qword_1004D2658), v28 = v31(v32), sub_1000197E0(v32), (v28))
  {
    *(a7 + 24) = v16;
    *(a7 + 32) = v26;
    v29 = sub_1000B3774(a7);
    sub_100025FDC(v22, v29, &qword_1005CF370, &qword_1004D2658);
  }

  else
  {
    sub_100025F40(v22, &qword_1005CF370, &qword_1004D2658);
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0;
  }

  return result;
}

double sub_1000A8478@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCE78 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF70, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v21);
  if (!v21[0])
  {
    sub_100025F40(v21, &qword_1005CF388, &qword_1004D2670);
LABEL_11:
    *(a6 + 32) = 0;
    *&v19 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return *&v19;
  }

  sub_1000B39AC(v21, &v22);
  *&v30 = _swiftEmptyArrayStorage;
  *(&v30 + 1) = _swiftEmptyArrayStorage;
  sub_1000B3A08(v21);
  v37 = v28;
  v38 = v29;
  v39 = v30;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v31 = v22;
  v32 = v23;
  if (*(v22 + 16) && (sub_1000AEB8C(v22, a1, a2, a3) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = sub_10000C9C0(&qword_1005CF390, &qword_1004D2678);
  *(&v23 + 1) = v12;
  v13 = sub_1000B458C(&qword_1005CF398, &qword_1005CF390, &qword_1004D2678);
  *&v24 = v13;
  *&v22 = swift_allocObject();
  sub_10000E268(&v31, v22 + 16, &qword_1005CF390, &qword_1004D2678);
  v14 = a4(&v22);
  sub_1000197E0(&v22);
  if (v14)
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v38;
    v15[7] = v37;
    v15[8] = v16;
    v15[9] = v39;
    v17 = v34;
    v15[3] = v33;
    v15[4] = v17;
    v18 = v36;
    v15[5] = v35;
    v15[6] = v18;
    v19 = v32;
    v15[1] = v31;
    v15[2] = v19;
  }

  else
  {
LABEL_9:
    sub_100025F40(&v31, &qword_1005CF390, &qword_1004D2678);
    *&v19 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return *&v19;
}

uint64_t sub_1000A86C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35[1] = a5;
  v36 = a4;
  v35[0] = a3;
  v16 = sub_10000C9C0(&qword_1005CF3C0, &qword_1004D26A8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v35 - v18;
  v20 = sub_10000C9C0(&qword_1005CF3C8, &qword_1004D26B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v24 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v35 - v25;
  if (qword_1005CCE48 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF10, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1000AAC34(a6, a7 & 1, a8, a10 & 0x101010101FFFF01, v19);
  PendingDownload = type metadata accessor for FindPendingDownload();
  if ((*(*(PendingDownload - 8) + 48))(v19, 1, PendingDownload) == 1)
  {
    sub_100025F40(v19, &qword_1005CF3C0, &qword_1004D26A8);
LABEL_6:
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    goto LABEL_7;
  }

  sub_1000B4820(v19, v24, type metadata accessor for FindPendingDownload);
  v29 = &v24[*(v20 + 36)];
  *v29 = _swiftEmptyArrayStorage;
  *(v29 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v19, type metadata accessor for FindPendingDownload);
  sub_100025FDC(v24, v26, &qword_1005CF3C8, &qword_1004D26B0);
  v30 = *(v26 + 6);
  if (!*(v30 + 16) || (sub_1000AEB8C(v30, a1, a2, v35[0])) && (v37[3] = v20, v31 = sub_1000B458C(&qword_1005CF3D0, &qword_1005CF3C8, &qword_1004D26B0), v37[4] = v31, v32 = sub_1000B3774(v37), sub_10000E268(v26, v32, &qword_1005CF3C8, &qword_1004D26B0), v33 = v36(v37), sub_1000197E0(v37), (v33))
  {
    *(a9 + 24) = v20;
    *(a9 + 32) = v31;
    v34 = sub_1000B3774(a9);
    sub_100025FDC(v26, v34, &qword_1005CF3C8, &qword_1004D26B0);
  }

  else
  {
    sub_100025F40(v26, &qword_1005CF3C8, &qword_1004D26B0);
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0;
  }

LABEL_7:
  sub_10000E0E8(a6);
}

double sub_1000A8A1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCE08 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDED0, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v24);
  if (!v24[0])
  {
    sub_100025F40(v24, &qword_1005CF478, &qword_1004D2728);
LABEL_11:
    *(a6 + 32) = 0;
    *&v22 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return *&v22;
  }

  sub_100027D64(v24, &v25);
  *(&v32 + 1) = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  sub_100027D9C(v24);
  v40 = v31;
  v41 = v32;
  v36 = v27;
  v37 = v28;
  v42 = v33;
  v38 = v29;
  v39 = v30;
  v34 = v25;
  v35 = v26;
  v12 = *(sub_100093190(&off_100599170) + 16);

  if (v12)
  {
    v13 = sub_100093190(&off_100599198);
    v14 = sub_1000AEB8C(v13, a1, a2, a3);

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v15 = sub_10000C9C0(&qword_1005CF480, &qword_1004D2730);
  *(&v26 + 1) = v15;
  v16 = sub_1000B458C(&qword_1005CF488, &qword_1005CF480, &qword_1004D2730);
  *&v27 = v16;
  *&v25 = swift_allocObject();
  sub_10000E268(&v34, v25 + 16, &qword_1005CF480, &qword_1004D2730);
  v17 = a4(&v25);
  sub_1000197E0(&v25);
  if (v17)
  {
    *(a6 + 24) = v15;
    *(a6 + 32) = v16;
    v18 = swift_allocObject();
    *a6 = v18;
    v19 = v41;
    *(v18 + 112) = v40;
    *(v18 + 128) = v19;
    *(v18 + 144) = v42;
    v20 = v37;
    *(v18 + 48) = v36;
    *(v18 + 64) = v20;
    v21 = v39;
    *(v18 + 80) = v38;
    *(v18 + 96) = v21;
    v22 = v35;
    *(v18 + 16) = v34;
    *(v18 + 32) = v22;
  }

  else
  {
LABEL_9:
    sub_100025F40(&v34, &qword_1005CF480, &qword_1004D2730);
    *&v22 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return *&v22;
}

double sub_1000A8C98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCE10 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDED8, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v24);
  if (!v24[0])
  {
    sub_100025F40(v24, &qword_1005CF460, &qword_1004D2718);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_10002A764(v24, &v25);
  *&v32 = _swiftEmptyArrayStorage;
  *(&v32 + 1) = _swiftEmptyArrayStorage;
  sub_10002A79C(v24);
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v12 = *(sub_100093190(&off_1005991C0) + 16);

  if (v12)
  {
    v13 = sub_100093190(&off_1005991E8);
    v14 = sub_1000AEB8C(v13, a1, a2, a3);

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v15 = sub_10000C9C0(&qword_1005CF468, &qword_1004D2720);
  *(&v26 + 1) = v15;
  v16 = sub_1000B458C(&qword_1005CF470, &qword_1005CF468, &qword_1004D2720);
  *&v27 = v16;
  *&v25 = swift_allocObject();
  sub_10000E268(&v33, v25 + 16, &qword_1005CF468, &qword_1004D2720);
  v17 = a4(&v25);
  sub_1000197E0(&v25);
  if (v17)
  {
    *(a6 + 24) = v15;
    *(a6 + 32) = v16;
    v18 = swift_allocObject();
    *a6 = v18;
    v19 = v38;
    v18[5] = v37;
    v18[6] = v19;
    v20 = v40;
    v18[7] = v39;
    v18[8] = v20;
    v21 = v34;
    v18[1] = v33;
    v18[2] = v21;
    result = *&v35;
    v23 = v36;
    v18[3] = v35;
    v18[4] = v23;
  }

  else
  {
LABEL_9:
    sub_100025F40(&v33, &qword_1005CF468, &qword_1004D2720);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

double sub_1000A8EFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCDF8 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDEC0, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v22);
  if (!v22[0])
  {
    sub_100025F40(v22, &qword_1005CF4B0, &qword_1004D2748);
LABEL_11:
    *(a6 + 32) = 0;
    *&v20 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return *&v20;
  }

  sub_1000258C0(v22, &v23);
  *(&v32 + 1) = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  sub_1000258F8(v22);
  v42 = v31;
  v43 = v32;
  v44 = v33;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  if (*(*(&v25 + 1) + 16) && (sub_1000AEB8C(*(&v25 + 1), a1, a2, a3) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = sub_10000C9C0(&qword_1005CF4B8, &qword_1004D2750);
  *(&v24 + 1) = v12;
  v13 = sub_1000B458C(&qword_1005CF4C0, &qword_1005CF4B8, &qword_1004D2750);
  *&v25 = v13;
  *&v23 = swift_allocObject();
  sub_10000E268(&v34, v23 + 16, &qword_1005CF4B8, &qword_1004D2750);
  v14 = a4(&v23);
  sub_1000197E0(&v23);
  if (v14)
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v43;
    *(v15 + 144) = v42;
    *(v15 + 160) = v16;
    *(v15 + 176) = v44;
    v17 = v39;
    *(v15 + 80) = v38;
    *(v15 + 96) = v17;
    v18 = v41;
    *(v15 + 112) = v40;
    *(v15 + 128) = v18;
    v19 = v35;
    *(v15 + 16) = v34;
    *(v15 + 32) = v19;
    v20 = v37;
    *(v15 + 48) = v36;
    *(v15 + 64) = v20;
  }

  else
  {
LABEL_9:
    sub_100025F40(&v34, &qword_1005CF4B8, &qword_1004D2750);
    *&v20 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return *&v20;
}

double sub_1000A915C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCE00 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDEC8, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v22);
  if (!v22[0])
  {
    sub_100025F40(v22, &qword_1005CF450, &qword_1004D2708);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_100026E5C(v22, &v23);
  *&v32 = _swiftEmptyArrayStorage;
  *(&v32 + 1) = _swiftEmptyArrayStorage;
  sub_100026E94(v22);
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v33 = v23;
  v34 = v24;
  if (*(*(&v25 + 1) + 16) && (sub_1000AEB8C(*(&v25 + 1), a1, a2, a3) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = sub_10000C9C0(&qword_1005CF4A0, &qword_1004D2740);
  *(&v24 + 1) = v12;
  v13 = sub_1000B458C(&qword_1005CF4A8, &qword_1005CF4A0, &qword_1004D2740);
  *&v25 = v13;
  *&v23 = swift_allocObject();
  sub_10000E268(&v33, v23 + 16, &qword_1005CF4A0, &qword_1004D2740);
  v14 = a4(&v23);
  sub_1000197E0(&v23);
  if (v14)
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v40;
    v15[7] = v39;
    v15[8] = v16;
    v17 = v42;
    v15[9] = v41;
    v15[10] = v17;
    v18 = v36;
    v15[3] = v35;
    v15[4] = v18;
    v19 = v38;
    v15[5] = v37;
    v15[6] = v19;
    result = *&v33;
    v21 = v34;
    v15[1] = v33;
    v15[2] = v21;
  }

  else
  {
LABEL_9:
    sub_100025F40(&v33, &qword_1005CF4A0, &qword_1004D2740);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

double sub_1000A93A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCE80 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF78, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v21);
  if (!v21[0])
  {
    sub_100025F40(v21, &qword_1005CF458, &qword_1004D2710);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1000B43E8(v21, &v22);
  *(&v30 + 1) = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage;
  sub_1000B42C8(v21);
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v32 = v22;
  v33 = v23;
  if (*(*(&v24 + 1) + 16) && (sub_1000AEB8C(*(&v24 + 1), a1, a2, a3) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = sub_10000C9C0(&qword_1005CF490, &qword_1004D2738);
  *(&v23 + 1) = v12;
  v13 = sub_1000B458C(&qword_1005CF498, &qword_1005CF490, &qword_1004D2738);
  *&v24 = v13;
  *&v22 = swift_allocObject();
  sub_10000E268(&v32, v22 + 16, &qword_1005CF490, &qword_1004D2738);
  v14 = a4(&v22);
  sub_1000197E0(&v22);
  if (v14)
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v39;
    *(v15 + 112) = v38;
    *(v15 + 128) = v16;
    *(v15 + 144) = v40;
    *(v15 + 160) = v41;
    v17 = v35;
    *(v15 + 48) = v34;
    *(v15 + 64) = v17;
    v18 = v37;
    *(v15 + 80) = v36;
    *(v15 + 96) = v18;
    result = *&v32;
    v20 = v33;
    *(v15 + 16) = v32;
    *(v15 + 32) = v20;
  }

  else
  {
LABEL_9:
    sub_100025F40(&v32, &qword_1005CF490, &qword_1004D2738);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

uint64_t sub_1000A9608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, uint64_t a5@<X5>, char *a6@<X6>, uint64_t a7@<X8>)
{
  if (qword_1005CCE68 != -1)
  {
    swift_once();
  }

  if (sub_1000B33E4(qword_1005DDF60, a1, a2))
  {
    v14 = *(a5 + 172);
    v15 = *(a5 + 8);
    v16 = *(a5 + 16);
    v17 = *(a5 + 24);
    *&v57 = *a5;
    *(&v57 + 1) = v15;
    v58 = v14;
    v59 = v16;
    v60 = v17;
    v18 = *a6;

    sub_1000EB1F8(&v57, v18, v30);
    sub_1000B40DC(v30, &v31);
    *&v43 = _swiftEmptyArrayStorage;
    *(&v43 + 1) = _swiftEmptyArrayStorage;
    sub_1000B4138(v30);
    v54 = v41;
    v55 = v42;
    v56 = v43;
    v50 = v37;
    v51 = v38;
    v52 = v39;
    v53 = v40;
    v46 = v33;
    v47 = v34;
    v48 = v35;
    v49 = v36;
    v44 = v31;
    v45 = v32;
    if (*(v37 + 16) && (sub_1000AEB8C(v37, a1, a2, a3) & 1) == 0)
    {
      goto LABEL_11;
    }

    v19 = sub_10000C9C0(&qword_1005CF400, &qword_1004D26D8);
    *(&v32 + 1) = v19;
    v20 = sub_1000B458C(&qword_1005CF408, &qword_1005CF400, &qword_1004D26D8);
    *&v33 = v20;
    *&v31 = swift_allocObject();
    sub_10000E268(&v44, v31 + 16, &qword_1005CF400, &qword_1004D26D8);
    v21 = a4(&v31);
    sub_1000197E0(&v31);
    if (v21)
    {
      *(a7 + 24) = v19;
      *(a7 + 32) = v20;
      v22 = swift_allocObject();
      *a7 = v22;
      v23 = v55;
      v22[11] = v54;
      v22[12] = v23;
      v22[13] = v56;
      v24 = v51;
      v22[7] = v50;
      v22[8] = v24;
      v25 = v53;
      v22[9] = v52;
      v22[10] = v25;
      v26 = v47;
      v22[3] = v46;
      v22[4] = v26;
      v27 = v49;
      v22[5] = v48;
      v22[6] = v27;
      v28 = v45;
      v22[1] = v44;
      v22[2] = v28;
    }

    else
    {
LABEL_11:
      sub_100025F40(&v44, &qword_1005CF400, &qword_1004D26D8);
      *a7 = 0u;
      *(a7 + 16) = 0u;
      *(a7 + 32) = 0;
    }

    return sub_10000E0E8(a5);
  }

  else
  {
    *(a7 + 32) = 0;
    *a7 = 0u;
    *(a7 + 16) = 0u;

    return sub_10000E0E8(a5);
  }
}

uint64_t sub_1000A98BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v34[1] = a5;
  v35 = a4;
  v34[0] = a3;
  v15 = sub_10000C9C0(&qword_1005CF410, &qword_1004D26E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v34 - v17;
  v19 = sub_10000C9C0(&qword_1005CF418, &qword_1004D26E8);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v34 - v24;
  if (qword_1005CCEA8 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDFA0, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1000AE8A8(a6, a7, a8, v18);
  v26 = type metadata accessor for UploadMessages(0);
  if ((*(*(v26 - 8) + 48))(v18, 1, v26) == 1)
  {
    sub_100025F40(v18, &qword_1005CF410, &qword_1004D26E0);
LABEL_6:
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    goto LABEL_7;
  }

  sub_1000B4820(v18, v23, type metadata accessor for UploadMessages);
  v28 = &v23[*(v19 + 36)];
  *v28 = _swiftEmptyArrayStorage;
  *(v28 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v18, type metadata accessor for UploadMessages);
  sub_100025FDC(v23, v25, &qword_1005CF418, &qword_1004D26E8);
  v29 = *(v25 + 5);
  if (!*(v29 + 16) || (sub_1000AEB8C(v29, a1, a2, v34[0])) && (v36[3] = v19, v30 = sub_1000B458C(&qword_1005CF420, &qword_1005CF418, &qword_1004D26E8), v36[4] = v30, v31 = sub_1000B3774(v36), sub_10000E268(v25, v31, &qword_1005CF418, &qword_1004D26E8), v32 = v35(v36), sub_1000197E0(v36), (v32))
  {
    *(a9 + 24) = v19;
    *(a9 + 32) = v30;
    v33 = sub_1000B3774(a9);
    sub_100025FDC(v25, v33, &qword_1005CF418, &qword_1004D26E8);
  }

  else
  {
    sub_100025F40(v25, &qword_1005CF418, &qword_1004D26E8);
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0;
  }

LABEL_7:
  sub_10000E0E8(a6);
}

double sub_1000A9C04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCDF0 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDEB8, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v22);
  if (!v22[0])
  {
    sub_100025F40(v22, &qword_1005CF428, &qword_1004D26F0);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1000168E0(v22, &v23);
  *&v32 = _swiftEmptyArrayStorage;
  *(&v32 + 1) = _swiftEmptyArrayStorage;
  sub_100016918(v22);
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v33 = v23;
  v34 = v24;
  if (*(v23 + 16) && (sub_1000AEB8C(v23, a1, a2, a3) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = sub_10000C9C0(&qword_1005CF430, &qword_1004D26F8);
  *(&v24 + 1) = v12;
  v13 = sub_1000B458C(&qword_1005CF438, &qword_1005CF430, &qword_1004D26F8);
  *&v25 = v13;
  *&v23 = swift_allocObject();
  sub_10000E268(&v33, v23 + 16, &qword_1005CF430, &qword_1004D26F8);
  v14 = a4(&v23);
  sub_1000197E0(&v23);
  if (v14)
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v40;
    v15[7] = v39;
    v15[8] = v16;
    v17 = v42;
    v15[9] = v41;
    v15[10] = v17;
    v18 = v36;
    v15[3] = v35;
    v15[4] = v18;
    v19 = v38;
    v15[5] = v37;
    v15[6] = v19;
    result = *&v33;
    v21 = v34;
    v15[1] = v33;
    v15[2] = v21;
  }

  else
  {
LABEL_9:
    sub_100025F40(&v33, &qword_1005CF430, &qword_1004D26F8);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

uint64_t sub_1000A9E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a3;
  v40 = a5;
  v14 = type metadata accessor for UploadFlagChanges(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C9C0(&qword_1005CF440, &qword_1004D2700);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v37 - v23;
  if (qword_1005CCEA0 != -1)
  {
    swift_once();
  }

  if (sub_1000B33E4(qword_1005DDF98, a1, a2))
  {
    v38 = a4;
    v25 = *(a6 + 172);
    v26 = *(a6 + 8);
    v27 = *(a6 + 16);
    v28 = *(a6 + 24);
    v42[0] = *a6;
    v42[1] = v26;
    v43 = v25;
    v44 = v27;
    v45 = v28;
    v29 = *(a7 + 2);

    sub_10017671C(v42, v29, v17);
    sub_1000B4820(v17, v22, type metadata accessor for UploadFlagChanges);
    v30 = &v22[*(v18 + 36)];
    *v30 = _swiftEmptyArrayStorage;
    *(v30 + 1) = _swiftEmptyArrayStorage;
    sub_1000B35D0(v17, type metadata accessor for UploadFlagChanges);
    sub_100025FDC(v22, v24, &qword_1005CF440, &qword_1004D2700);
    v31 = *(v24 + 5);
    if (!*(v31 + 16) || (sub_1000AEB8C(v31, a1, a2, v39)) && (v41[3] = v18, v32 = sub_1000B458C(&qword_1005CF448, &qword_1005CF440, &qword_1004D2700), v41[4] = v32, v33 = sub_1000B3774(v41), sub_10000E268(v24, v33, &qword_1005CF440, &qword_1004D2700), v34 = v38(v41), sub_1000197E0(v41), (v34))
    {
      *(a8 + 24) = v18;
      *(a8 + 32) = v32;
      v35 = sub_1000B3774(a8);
      sub_100025FDC(v24, v35, &qword_1005CF440, &qword_1004D2700);
    }

    else
    {
      sub_100025F40(v24, &qword_1005CF440, &qword_1004D2700);
      *a8 = 0u;
      *(a8 + 16) = 0u;
      *(a8 + 32) = 0;
    }
  }

  else
  {
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return sub_10000E0E8(a6);
}

double sub_1000AA18C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v30[1] = a5;
  v31 = a4;
  v12 = sub_10000C9C0(&qword_1005CF4C8, &qword_1004D2758);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v30 - v14;
  v16 = sub_10000C9C0(&qword_1005CF4D0, &qword_1004D2760);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = (v30 - v21);
  if (qword_1005CCE30 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDEF8, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a6();
  Messages = type metadata accessor for FetchMessages(0);
  if ((*(*(Messages - 8) + 48))(v15, 1, Messages) == 1)
  {
    sub_100025F40(v15, &qword_1005CF4C8, &qword_1004D2758);
LABEL_6:
    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  sub_1000B4820(v15, v20, type metadata accessor for FetchMessages);
  v25 = &v20[*(v16 + 36)];
  *v25 = _swiftEmptyArrayStorage;
  *(v25 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v15, type metadata accessor for FetchMessages);
  sub_100025FDC(v20, v22, &qword_1005CF4D0, &qword_1004D2760);
  if (!*(*v22 + 16) || (sub_1000AEB8C(*v22, a1, a2, a3)) && (v32[3] = v16, v26 = sub_1000B458C(&qword_1005CF4D8, &qword_1005CF4D0, &qword_1004D2760), v32[4] = v26, v27 = sub_1000B3774(v32), sub_10000E268(v22, v27, &qword_1005CF4D0, &qword_1004D2760), v28 = v31(v32), sub_1000197E0(v32), (v28))
  {
    *(a7 + 24) = v16;
    *(a7 + 32) = v26;
    v29 = sub_1000B3774(a7);
    sub_100025FDC(v22, v29, &qword_1005CF4D0, &qword_1004D2760);
  }

  else
  {
    sub_100025F40(v22, &qword_1005CF4D0, &qword_1004D2760);
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0;
  }

  return result;
}

double sub_1000AA4B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v31[1] = a5;
  v32 = a4;
  v12 = sub_10000C9C0(&qword_1005CF4E0, &qword_1004D2768);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v31 - v14;
  v16 = sub_10000C9C0(&qword_1005CF4E8, &qword_1004D2770);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v31 - v21;
  if (qword_1005CCE40 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF08, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a6();
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  if ((*(*(MissingMessages - 8) + 48))(v15, 1, MissingMessages) == 1)
  {
    sub_100025F40(v15, &qword_1005CF4E0, &qword_1004D2768);
LABEL_6:
    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  sub_1000B4820(v15, v20, type metadata accessor for FindMissingMessages);
  v25 = &v20[*(v16 + 36)];
  *v25 = _swiftEmptyArrayStorage;
  *(v25 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v15, type metadata accessor for FindMissingMessages);
  sub_100025FDC(v20, v22, &qword_1005CF4E8, &qword_1004D2770);
  v26 = *(v22 + 13);
  if (!*(v26 + 16) || (sub_1000AEB8C(v26, a1, a2, a3)) && (v33[3] = v16, v27 = sub_1000B458C(&qword_1005CF4F0, &qword_1005CF4E8, &qword_1004D2770), v33[4] = v27, v28 = sub_1000B3774(v33), sub_10000E268(v22, v28, &qword_1005CF4E8, &qword_1004D2770), v29 = v32(v33), sub_1000197E0(v33), (v29))
  {
    *(a7 + 24) = v16;
    *(a7 + 32) = v27;
    v30 = sub_1000B3774(a7);
    sub_100025FDC(v22, v30, &qword_1005CF4E8, &qword_1004D2770);
  }

  else
  {
    sub_100025F40(v22, &qword_1005CF4E8, &qword_1004D2770);
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0;
  }

  return result;
}

uint64_t sub_1000AA7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a5;
  v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v46 - v17;
  v19 = sub_10000C9C0(&qword_1005CF4F8, &qword_1004D2778);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v46 - v21;
  v53 = sub_10000C9C0(&qword_1005CF500, &qword_1004D2780);
  v23 = *(*(v53 - 8) + 64);
  v24 = __chkstk_darwin(v53);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v52 = &v46 - v27;
  if (qword_1005CCE70 != -1)
  {
    swift_once();
  }

  v49 = a1;
  v50 = a2;
  if ((sub_1000B33E4(qword_1005DDF68, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  v46 = a3;
  v47 = a4;
  v28 = *(a6 + 172);
  v29 = *(a6 + 8);
  v30 = *(a6 + 16);
  v31 = *(a6 + 24);
  *&v55 = *a6;
  *(&v55 + 1) = v29;
  v56 = v28;
  v57 = v30;
  v58 = v31;
  v48 = a7;
  v32 = a7 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v33 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v34 = v32 + v33 + *(type metadata accessor for MailboxSyncState() + 48);
  v35 = type metadata accessor for PendingServerResponses();
  sub_10000E268(v34 + *(v35 + 24), v18, &unk_1005D91B0, &unk_1004CF400);

  sub_1000FC2B4(&v55, v18, v22);
  v36 = type metadata accessor for NotifyMessagesVanished();
  if ((*(*(v36 - 8) + 48))(v22, 1, v36) == 1)
  {
    sub_100025F40(v22, &qword_1005CF4F8, &qword_1004D2778);
LABEL_6:
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    goto LABEL_12;
  }

  sub_1000B4820(v22, v26, type metadata accessor for NotifyMessagesVanished);
  v37 = v53;
  v38 = &v26[*(v53 + 36)];
  *v38 = _swiftEmptyArrayStorage;
  *(v38 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v22, type metadata accessor for NotifyMessagesVanished);
  v39 = v52;
  sub_100025FDC(v26, v52, &qword_1005CF500, &qword_1004D2780);
  v40 = *(v39 + *(v36 + 36));
  if (!*(v40 + 16) || (sub_1000AEB8C(v40, v49, v50, v46)) && (v54[3] = v37, v41 = sub_1000B458C(&qword_1005CF508, &qword_1005CF500, &qword_1004D2780), v54[4] = v41, v42 = sub_1000B3774(v54), sub_10000E268(v39, v42, &qword_1005CF500, &qword_1004D2780), v43 = v47(v54), sub_1000197E0(v54), (v43))
  {
    *(a8 + 24) = v37;
    *(a8 + 32) = v41;
    v44 = sub_1000B3774(a8);
    sub_100025FDC(v39, v44, &qword_1005CF500, &qword_1004D2780);
  }

  else
  {
    sub_100025F40(v39, &qword_1005CF500, &qword_1004D2780);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

LABEL_12:
  sub_10000E0E8(a6);
}

uint64_t sub_1000AAC34@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v53 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(*(v53 - 8) + 64);
  v10 = __chkstk_darwin(v53);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  __chkstk_darwin(v15);
  v61 = &v51 - v18;
  v19 = type metadata accessor for MessagesPendingDownload();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PendingPersistenceUpdates();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a1 + 43);
  v27 = *a1;
  v51 = a1[1];
  v59 = a1[2];
  v54 = *(a1 + 6);
  v28 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v29 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v30 = type metadata accessor for MailboxSyncState();
  sub_1000B4820(v28 + v29 + *(v30 + 52), v26, type metadata accessor for PendingPersistenceUpdates);
  v31 = &v26[*(v23 + 28)];
  v57 = a2;
  if (a2)
  {
    v31 += *(type metadata accessor for MessagesPendingDownloadPerPass() + 20);
  }

  sub_1000B4820(v31, v22, type metadata accessor for MessagesPendingDownload);
  sub_10000E268(&v26[*(v23 + 32)], v61, &unk_1005D91B0, &unk_1004CF400);
  v32 = *(*v22 + 16);
  swift_bridgeObjectRetain_n();

  v58 = v22;
  v55 = v26;
  if (v32 < 0x11A || (v33 = sub_1000DB374(), (v33 & 0x100000000) != 0))
  {

    sub_10009F2AC(v35);
  }

  else
  {
    LODWORD(v63) = 1;
    LODWORD(v62) = v33;
    v34 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v63, &v62, &type metadata for UID, v34, &v64);
    v63 = v64;
    v62 = Range<>.init<A>(_:)(&v63, &type metadata for UID, v34);
    sub_100016D2C();
    sub_1004A7124();
  }

  MessageIdentifierSet.union(_:)(v61, v17);
  sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
  v36 = v56;
  sub_10000E268(v17, v56, &unk_1005D91B0, &unk_1004CF400);
  v37 = v59;
  v38 = (v60 & 1) == 0;
  *(a5 + 56) = 0;
  v39 = 47;
  if (v38)
  {
    v39 = 0;
  }

  v53 = v39;
  *a5 = 0;
  *(a5 + 8) = v27;
  *(a5 + 16) = v51;
  *(a5 + 24) = v52;
  *(a5 + 32) = v37;
  v40 = v54;
  *(a5 + 40) = v54;
  sub_10000C9C0(&qword_1005CEF58, &qword_1004D1E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v42 = v17;
  v43 = v36;
  v44 = v57 & 1;
  if (v57)
  {
    v45 = 10;
  }

  else
  {
    v45 = 9;
  }

  *(inited + 32) = v45;
  v46 = sub_100093190(inited);
  swift_setDeallocating();
  *(a5 + 48) = v46;
  *(a5 + 57) = v44;
  PendingDownload = type metadata accessor for FindPendingDownload();
  sub_10000E268(v43, a5 + PendingDownload[9], &unk_1005D91B0, &unk_1004CF400);
  v48 = PendingDownload[11];
  v64 = v37;
  v65 = v40;
  v66 = v44;
  *(a5 + v48) = PendingDownload;
  sub_1000B4088();
  sub_1004A6674();
  sub_100025F40(v43, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v42, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v61, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v55, type metadata accessor for PendingPersistenceUpdates);
  v49 = a5 + PendingDownload[10];
  *v49 = v53;
  *(v49 + 8) = (v60 & 1) == 0;
  sub_1000B35D0(v58, type metadata accessor for MessagesPendingDownload);
  return (*(*(PendingDownload - 1) + 56))(a5, 0, 1, PendingDownload);
}

uint64_t sub_1000AB17C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v119 = a4;
  v120 = a6;
  v115 = a5;
  v116 = a3;
  v117 = a2;
  v121 = a7;
  v108 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v107 = *(v108 - 8);
  v8 = *(v107 + 64);
  v9 = __chkstk_darwin(v108);
  v98 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v94 - v11;
  v12 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v102 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v104 = &v94 - v16;
  v106 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v17 = *(*(v106 - 8) + 64);
  v18 = __chkstk_darwin(v106);
  v100 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v105 = &v94 - v21;
  v22 = __chkstk_darwin(v20);
  v103 = &v94 - v23;
  __chkstk_darwin(v22);
  v109 = &v94 - v24;
  v110 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v25 = *(*(v110 - 8) + 64);
  v26 = __chkstk_darwin(v110);
  v101 = (&v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v112 = (&v94 - v28);
  v111 = type metadata accessor for DetermineMessageBatches(0);
  v29 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10000C9C0(&qword_1005CF3A0, &unk_1004D2680);
  v32 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v114 = &v94 - v33;
  v34 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v94 - v36;
  v38 = type metadata accessor for MessageBatches(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v94 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v44 = _s13SelectedStateV7WrappedVMa(0);
  v45 = *(v44 + 20);
  v46 = type metadata accessor for MailboxSyncState();
  sub_10000E268(v43 + v45 + *(v46 + 60), v37, &qword_1005CDA20, &unk_1004D2F20);
  if ((*(v39 + 48))(v37, 1, v38) != 1)
  {
    sub_1000B4888(v37, v42, type metadata accessor for MessageBatches);
    sub_1000B4888(v42, v121, type metadata accessor for MessageBatches);
    _s29DetermineMessageBatchesResultOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_100025F40(v37, &qword_1005CDA20, &unk_1004D2F20);
  v47 = *(v118 + 43);
  v48 = *v118;
  v94 = v118[1];
  v49 = v118[2];
  v96 = *(v118 + 6);
  v50 = *(v118 + 48);
  result = *(v119 + 16);
  v52 = *(v119 + 24);
  v53 = v43 + *(v44 + 20);
  v54 = *v53;
  v55 = *(v53 + 8);
  LODWORD(v118) = *(v53 + 12);
  v56 = *(v119 + 4);
  v57 = *(v119 + 5);
  v127 = *(v119 + 42);
  if (v52)
  {
    v58 = 4507;
  }

  else
  {
    result = sub_1000D8460(result);
    v58 = result;
  }

  v97 = v47;
  v95 = v55;
  if (!v54)
  {
    sub_100016D2C();
    swift_bridgeObjectRetain_n();

    v71 = v109;
    sub_1004A7114();
    v72 = v71;
    v73 = v103;
    sub_10000E268(v72, v103, &unk_1005D91B0, &unk_1004CF400);
    v65 = v48;
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_100025F40(v73, &unk_1005D91B0, &unk_1004CF400);
      v76 = 1;
      v77 = v112;
      v75 = v104;
    }

    else
    {
      v74 = v99;
      sub_100025FDC(v73, v99, &unk_1005D91B0, &unk_1004CF400);
      v75 = v104;
      sub_100025FDC(v74, v104, &qword_1005CD1D0, &unk_1004CF2C0);
      v76 = 0;
      v77 = v112;
    }

    (*(v107 + 56))(v75, v76, 1, v108);
    sub_1000D80D8(v58, _swiftEmptyArrayStorage, v75, v77);
    sub_100025F40(v109, &unk_1005D91B0, &unk_1004CF400);
    swift_storeEnumTagMultiPayload();
LABEL_25:
    if (v57)
    {
      v79 = 256;
    }

    else
    {
      v79 = 0;
    }

    v80 = v79 | v56;
    if (v127)
    {
      v81 = v80;
    }

    else
    {
      v81 = 2;
    }

    v82 = v111;
    sub_1000B4820(v77, &v31[*(v111 + 56)], type metadata accessor for DetermineMessageBatches.TaskState);
    *v31 = _swiftEmptySetSingleton;
    v31[8] = 0;
    *(v31 + 76) = 0;
    v31[84] = 1;
    v83 = &v31[*(v82 + 60)];
    *v83 = sub_100162C58(_swiftEmptyArrayStorage);
    v83[8] = 0;
    v123 = v49;
    LODWORD(v83) = v96;
    v124 = v96;
    *(v31 + 2) = v82;
    sub_100026044();
    sub_1004A6674();
    sub_1000B35D0(v77, type metadata accessor for DetermineMessageBatches.TaskState);
    v84 = v94;
    *(v31 + 12) = v65;
    *(v31 + 13) = v84;
    *(v31 + 56) = v97;
    *(v31 + 15) = v49;
    v85 = v114;
    *(v31 + 8) = v115;
    v31[72] = v120 & 1;
    *(v31 + 11) = v54;
    *(v31 + 18) = v58;
    LODWORD(v84) = v95;
    *(v31 + 32) = v83;
    *(v31 + 33) = v84;
    v31[136] = v118;
    *(v31 + 137) = v81;
    sub_1000B4888(v31, v85, type metadata accessor for DetermineMessageBatches);
    v86 = v113;
    v87 = (v85 + *(v113 + 36));
    *v87 = _swiftEmptyArrayStorage;
    v87[1] = _swiftEmptyArrayStorage;
    v125 = v86;
    v88 = sub_1000B458C(&qword_1005CF3A8, &qword_1005CF3A0, &unk_1004D2680);
    v126 = v88;
    v89 = sub_1000B3774(&v123);
    sub_10000E268(v85, v89, &qword_1005CF3A0, &unk_1004D2680);
    v90 = v117(&v123);
    sub_1000197E0(&v123);
    if (v90)
    {
      v91 = v121;
      v121[3] = v86;
      v91[4] = v88;
      v92 = sub_1000B3774(v91);
      sub_100025FDC(v85, v92, &qword_1005CF3A0, &unk_1004D2680);
      _s29DetermineMessageBatchesResultOMa(0);
    }

    else
    {
      sub_100025F40(v85, &qword_1005CF3A0, &unk_1004D2680);
      _s29DetermineMessageBatchesResultOMa(0);
      v93 = v121;
      *v121 = 0u;
      *(v93 + 16) = 0u;
      *(v93 + 32) = 0;
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v58 + 0x4000000000000000 >= 0)
  {
    if (v54 >= 2 * v58 / 3)
    {
      if ((v50 & 1) != 0 || ((v118 ^ 1 | v120) & 1) == 0)
      {
        v77 = v112;
      }

      else
      {
        v77 = v112;
        *v112 = v54;
      }

      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      v65 = v48;
    }

    else
    {
      sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1004CEAA0;
      if (v118)
      {
        v60 = -1;
      }

      else
      {
        v60 = v55;
      }

      v122 = v60;
      LODWORD(v123) = 1;
      v61 = sub_100016948();
      swift_bridgeObjectRetain_n();

      static MessageIdentifier.... infix(_:_:)(&v123, &v122, &type metadata for UID, v61, v59 + 32);
      sub_100016D2C();
      v62 = v105;
      sub_1004A7114();
      v63 = v62;
      v64 = v100;
      sub_10000E268(v63, v100, &unk_1005D91B0, &unk_1004CF400);
      v65 = v48;
      if (MessageIdentifierSet.count.getter() <= 0)
      {
        sub_100025F40(v64, &unk_1005D91B0, &unk_1004CF400);
        v70 = 1;
        v69 = v102;
      }

      else
      {
        v66 = v64;
        v67 = v98;
        sub_100025FDC(v66, v98, &unk_1005D91B0, &unk_1004CF400);
        v68 = v67;
        v69 = v102;
        sub_100025FDC(v68, v102, &qword_1005CD1D0, &unk_1004CF2C0);
        v70 = 0;
      }

      (*(v107 + 56))(v69, v70, 1, v108);
      v78 = v101;
      sub_1000D80D8(v58, v59, v69, v101);
      sub_100025F40(v105, &unk_1005D91B0, &unk_1004CF400);
      swift_storeEnumTagMultiPayload();
      v77 = v112;
      sub_1000B4888(v78, v112, type metadata accessor for DetermineMessageBatches.TaskState);
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ABD5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v110 = a5;
  v96 = a4;
  v107 = a6;
  v112 = a4 >> 8;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v10 = *(MissingMessages - 8);
  v105 = MissingMessages;
  v106 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(MissingMessages);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v111 = &v92 - v16;
  v98 = _s15MissingMessagesOMa(0);
  v17 = *(*(v98 - 8) + 64);
  v18 = __chkstk_darwin(v98);
  v97 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v92 = &v92 - v21;
  v22 = __chkstk_darwin(v20);
  v94 = &v92 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v92 - v25;
  __chkstk_darwin(v24);
  v28 = &v92 - v27;
  v29 = type metadata accessor for MessageBatches(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v114 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v92 - v34;
  __chkstk_darwin(v33);
  v37 = &v92 - v36;
  v102 = *(a1 + 43);
  v38 = a1[1];
  v108 = *a1;
  v99 = v38;
  v39 = a1[2];
  v100 = *(a1 + 6);
  v93 = a1[5];
  v113 = *(a1 + 48);
  sub_1000B4820(a2, &v92 - v36, type metadata accessor for MessageBatches);
  v40 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v41 = _s13SelectedStateV7WrappedVMa(0);
  v42 = *(v41 + 20);
  v43 = type metadata accessor for MailboxSyncState();
  sub_1000B4820(v40 + v42 + *(v43 + 68), v28, _s15MissingMessagesOMa);
  v44 = v40 + *(v41 + 20);
  v45 = *(v44 + 8);
  LOBYTE(v40) = *(v44 + 12);
  v104 = v110[4];
  v103 = v110[5];
  v109 = v37;
  v46 = v37;
  v47 = v93;
  v95 = v35;
  sub_1000B4820(v46, v35, type metadata accessor for MessageBatches);
  v110 = v28;
  sub_1000B4820(v28, v26, _s15MissingMessagesOMa);
  v48 = v94;
  sub_1000B4820(v26, v94, _s15MissingMessagesOMa);
  v101 = v39;
  swift_bridgeObjectRetain_n();

  LOBYTE(v115) = v40;
  v115 = sub_10007C308(v48, v47, v113 & 1, v45 | (v40 << 32), v112);
  v116 = v49;
  v117 = v50;
  v118 = v51;
  if (BYTE1(v96))
  {
    if (BYTE1(v96) == 1)
    {
      v52 = 2;
    }

    else
    {
      v52 = 1;
    }

    v59 = v95;
    sub_10007B35C(v52, v95);
    v61 = v110;
    v62 = v105;
    v63 = v97;
  }

  else
  {
    v53 = v92;
    sub_1000B4820(v26, v92, _s15MissingMessagesOMa);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1000B35D0(v53, _s15MissingMessagesOMa);
      v54 = v95;
      v55 = *v95;
      v56 = sub_1000D8054();
      v57 = v56 | ((HIDWORD(v56) & 1) << 32);
      v58 = v55;
      v59 = v54;
      if (sub_1000E5918(v58, v57))
      {
        v60 = 3;
      }

      else
      {
        v60 = 1;
      }

      v61 = v110;
      v62 = v105;
      v63 = v97;
    }

    else
    {
      v60 = 1;
      v61 = v110;
      v62 = v105;
      v63 = v97;
      v59 = v95;
    }

    sub_10007B0CC(v60, v59);
  }

  sub_1000B35D0(v26, _s15MissingMessagesOMa);
  sub_1000B35D0(v59, type metadata accessor for MessageBatches);
  v105 = v115;
  v98 = v116 | (BYTE4(v116) << 32);
  LODWORD(v97) = BYTE5(v116);
  LODWORD(v96) = v117;
  LODWORD(v95) = v118;
  v64 = sub_1000E5454();
  v65 = v64;
  if (v47 >= v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = v47;
  }

  if (BYTE4(v64) & 1 | v113 & 1)
  {
    v67 = v64;
  }

  else
  {
    v67 = v66;
  }

  sub_1000B4820(v109, v114, type metadata accessor for MessageBatches);
  sub_1000B4820(v61, v63, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_1000B35D0(v63, _s15MissingMessagesOMa);
  }

  sub_1000E5698(v111);
  v94 = v67;
  if (v112)
  {
    v69 = 0;
    if (v112 == 1)
    {
      v70 = 1499;
    }

    else
    {
      v70 = 191;
    }
  }

  else
  {
    v70 = 0;
    v69 = 1;
  }

  *v13 = 0xD000000000000013;
  *(v13 + 1) = 0x80000001004AA190;
  *(v13 + 13) = sub_100093190(&off_100599440);
  v13[112] = 0;
  v71 = v62[16];
  sub_100016D2C();
  sub_1004A7114();
  v72 = &v13[v62[17]];
  sub_1004A7114();
  v73 = v99;
  *(v13 + 8) = v108;
  *(v13 + 9) = v73;
  *(v13 + 40) = v102;
  v74 = v101;
  *(v13 + 11) = v101;
  v75 = v100;
  *(v13 + 24) = v100;
  v115 = v74;
  LODWORD(v116) = v75;
  *(v13 + 2) = v62;
  sub_100026044();
  sub_1004A6674();
  sub_1000B4820(v114, &v13[v62[9]], type metadata accessor for MessageBatches);
  v76 = &v13[v62[10]];
  *v76 = v47;
  v76[8] = v113 & 1;
  v77 = &v13[v62[11]];
  *v77 = v105;
  v78 = v98;
  v77[12] = BYTE4(v98);
  *(v77 + 2) = v78;
  v77[13] = v97;
  *(v77 + 4) = v96;
  v77[20] = v95;
  v79 = &v13[v62[13]];
  *v79 = v70;
  v79[8] = v69;
  v13[v62[14]] = EnumCaseMultiPayload == 0;
  v80 = v111;
  sub_10000E268(v111, &v13[v62[15]], &unk_1005D91B0, &unk_1004CF400);
  v81 = &v13[v62[12]];
  v82 = v104;
  *v81 = v104;
  v83 = v103;
  v81[1] = v103;
  if ((v65 & 0x100000000) != 0)
  {
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
  }

  else
  {
    v88 = 256;
    if (!v83)
    {
      v88 = 0;
    }

    v85 = v88 | v82 | (v94 << 32);
    v87 = _swiftEmptyArrayStorage;
    v86 = &_mh_execute_header;
    v84 = 94;
  }

  v89 = &v13[v62[18]];
  sub_100025F40(v80, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v114, type metadata accessor for MessageBatches);
  sub_1000B35D0(v110, _s15MissingMessagesOMa);
  sub_1000B35D0(v109, type metadata accessor for MessageBatches);
  *v89 = v84;
  v89[1] = v85;
  v89[2] = v86;
  v89[3] = v87;
  v90 = v107;
  sub_1000B4888(v13, v107, type metadata accessor for FindMissingMessages);
  return (*(v106 + 56))(v90, 0, 1, v62);
}

uint64_t sub_1000AC694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a5;
  v93 = a4;
  v97 = a6;
  v90 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v88 = &v72[-v10];
  v11 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v92 = &v72[-v13];
  v14 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v94 = *(v14 - 8);
  v95 = v14;
  v15 = *(v94 + 64);
  v16 = __chkstk_darwin(v14);
  v80 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v78 = &v72[-v18];
  Messages = type metadata accessor for FetchMessages(0);
  v96 = *(Messages - 8);
  v19 = *(v96 + 64);
  __chkstk_darwin(Messages);
  v21 = &v72[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v84 = &v72[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = _s15MissingMessagesOMa(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v72[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v31 = &v72[-v30];
  v32 = type metadata accessor for MessageBatches(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v81 = &v72[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v37 = &v72[-v36];
  LODWORD(v89) = *(a1 + 43);
  v38 = a1[1];
  v82 = *a1;
  v83 = v38;
  v39 = a1[2];
  v98 = *(a1 + 6);
  sub_1000B4820(a2, &v72[-v36], type metadata accessor for MessageBatches);
  v40 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v41 = _s13SelectedStateV7WrappedVMa(0);
  v42 = *(v41 + 20);
  v43 = type metadata accessor for MailboxSyncState();
  sub_1000B4820(v40 + v42 + *(v43 + 68), v31, _s15MissingMessagesOMa);
  v102 = a1[5];
  v103 = *(a1 + 48);
  v44 = (v40 + *(v41 + 20));
  v77 = v44[144];
  v76 = v44[145];
  v75 = v44[146];
  v74 = v44[147];
  v73 = v44[148];
  v101 = v93[1];
  v91 = v37;
  v45 = v81;
  sub_1000B4820(v37, v81, type metadata accessor for MessageBatches);
  v93 = v31;
  v46 = v31;
  v47 = Messages;
  sub_1000B4820(v46, v29, _s15MissingMessagesOMa);
  swift_bridgeObjectRetain_n();
  v48 = v82;

  v49 = v84;
  sub_100053C38(v29, v84);
  *v21 = sub_1000CE570(&off_100599468);
  v21[8] = 0;
  v50 = &v21[v47[9]];
  v51 = type metadata accessor for NewServerMessages();
  v52 = *(v51 - 1);
  v53 = *(v52 + 56);
  v86 = v52 + 56;
  v87 = v53;
  v53(v50, 1, 1, v51);
  v54 = v83;
  *(v21 + 2) = v48;
  *(v21 + 3) = v54;
  *(v21 + 16) = v89;
  *(v21 + 5) = v39;
  v55 = v98;
  *(v21 + 12) = v98;
  v56 = v47[8];
  v99 = v39;
  v100 = v55;
  *&v21[v56] = v47;
  sub_100026044();
  v89 = v39;

  v57 = v88;
  sub_1004A6674();
  sub_1000B4820(v45, &v21[v47[7]], type metadata accessor for MessageBatches);
  sub_1000B4820(v49, &v21[v47[10]], type metadata accessor for FetchMessages.MissingUIDs);
  MessageIdentifierSet.suffix(_:)(47, v90, v57);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v57, &unk_1005D91B0, &unk_1004CF400);
    v61 = 1;
    v60 = v92;
  }

  else
  {
    v58 = v57;
    v59 = v80;
    sub_100025FDC(v58, v80, &unk_1005D91B0, &unk_1004CF400);
    v60 = v92;
    sub_100025FDC(v59, v92, &qword_1005CD1D0, &unk_1004CF2C0);
    v61 = 0;
  }

  v63 = v94;
  v62 = v95;
  (*(v94 + 56))(v60, v61, 1, v95);
  if ((*(v63 + 48))(v60, 1, v62) == 1)
  {

    sub_1000B35D0(v49, type metadata accessor for FetchMessages.MissingUIDs);
    sub_1000B35D0(v45, type metadata accessor for MessageBatches);
    sub_1000B35D0(v93, _s15MissingMessagesOMa);
    sub_1000B35D0(v91, type metadata accessor for MessageBatches);
    sub_100025F40(v60, &qword_1005CD518, &qword_1004CF2F0);
    sub_100025F40(v50, &qword_1005CE3B0, &unk_1004D1010);
    v64 = 1;
  }

  else
  {
    v65 = v60;
    v66 = v78;
    sub_100025FDC(v65, v78, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025F40(v50, &qword_1005CE3B0, &unk_1004D1010);
    sub_100025FDC(v66, v50 + v51[5], &qword_1005CD1D0, &unk_1004CF2C0);
    v67 = v51[9];
    sub_1000B35D0(v49, type metadata accessor for FetchMessages.MissingUIDs);
    sub_1000B35D0(v45, type metadata accessor for MessageBatches);
    sub_1000B35D0(v93, _s15MissingMessagesOMa);
    sub_1000B35D0(v91, type metadata accessor for MessageBatches);
    v64 = 0;
    *(v50 + v67) = _swiftEmptyArrayStorage;
    *v50 = v89;
    *(v50 + 8) = v98;
    v68 = (v50 + v51[6]);
    *v68 = v77;
    v68[1] = v76;
    v68[2] = v75;
    v68[3] = v74;
    v68[4] = v73;
    *(v50 + v51[7]) = v101;
    *(v50 + v51[8]) = BYTE6(v79) & 1;
  }

  v87(v50, v64, 1, v51);
  v69 = &v21[v47[11]];
  *v69 = v102;
  v69[8] = v103;
  v70 = v97;
  sub_1000B4888(v21, v97, type metadata accessor for FetchMessages);
  return (*(v96 + 56))(v70, 0, 1, v47);
}

uint64_t sub_1000ACFA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 43);
  v6 = a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v7 = v6 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v8 = *(v7 + 24);
  LODWORD(v7) = *(v7 + 32);
  v9 = v7 != 1;
  if (v7 == 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = *(a1 + 6);
  *a3 = sub_100093190(&off_100599120);
  *(a3 + 8) = 0;
  *(a3 + 113) = 0;
  *(a3 + 120) = sub_1001634D0(_swiftEmptyArrayStorage);
  *(a3 + 128) = 0;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v5;
  *(a3 + 40) = v13;
  *(a3 + 48) = v14;
  *(a3 + 56) = &type metadata for UpdateLocalFlags;
  sub_100026044();
  swift_bridgeObjectRetain_n();

  result = sub_1004A6674();
  *(a3 + 104) = v10;
  *(a3 + 112) = v9;
  return result;
}

uint64_t sub_1000AD0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(__int128 *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v187 = a1;
  v188 = a8;
  v184 = a6;
  v185 = a7;
  v186 = a5;
  v183 = a9;
  v14 = type metadata accessor for MessageBatches(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = (&v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v16);
  v179 = &v164 - v20;
  v21 = __chkstk_darwin(v19);
  v181 = &v164 - v22;
  __chkstk_darwin(v21);
  v178 = (&v164 - v23);
  v24 = type metadata accessor for PendingServerResponses();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v180 = (&v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v29 = (&v164 - v28);
  v30 = 0;
  v31 = a2 + 56;
  v191 = a3;
  v32 = a3 + 7;
  v189 = a4;
  v190 = a4 + 7;
  do
  {
    if (!*(a2 + 16))
    {
      goto LABEL_33;
    }

    v33 = *(&off_100599210 + v30 + 32);
    v34 = *(a2 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(v33);
    v35 = sub_1004A6F14();
    v36 = -1 << *(a2 + 32);
    v37 = v35 & ~v36;
    if (((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
    {
      goto LABEL_33;
    }

    ++v30;
    v38 = ~v36;
    while (*(*(a2 + 48) + v37) != v33)
    {
      v37 = (v37 + 1) & v38;
      if (((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (v191[2])
    {
      v182 = v29;
      v39 = v18;
      v40 = a2;
      v41 = v10;
      v42 = v191;
      v43 = v191[5];
      sub_1004A6E94();
      sub_1004A6EB4(v33);
      v44 = sub_1004A6F14();
      v45 = *(v42 + 32);
      v10 = v41;
      a2 = v40;
      v18 = v39;
      v29 = v182;
      v46 = -1 << v45;
      v47 = v44 & ~(-1 << v45);
      if ((*(v32 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
      {
        v48 = ~v46;
        while (*(v191[6] + v47) != v33)
        {
          v47 = (v47 + 1) & v48;
          if (((*(v32 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

LABEL_33:
        v77 = v188;
        if (!*(v188 + 2))
        {
          v182 = a2;
          v172 = *(v10 + 43);
          v78 = *v10;
          v173 = v10[1];
          v79 = v10[2];
          v80 = *(v10 + 6);
          v165 = v10[5];
          v166 = *(v10 + 48);
          v171 = v10[7];
          v190 = v10;
          v81 = *(v10 + 64);
          v174 = v80;
          LODWORD(v175) = v81;
          v82 = v187 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v168 = _s13SelectedStateV7WrappedVMa(0);
          v169 = v82;
          v83 = v82 + *(v168 + 20);
          v170 = *(v83 + 24);
          v84 = *(v83 + 32);
          v167 = type metadata accessor for MailboxSyncState();
          sub_1000B4820(v83 + *(v167 + 48), v29, type metadata accessor for PendingServerResponses);
          v85 = v29[3];
          v86 = v29[4];
          sub_10002587C(v29, v85);
          v87 = v29;
          v88 = *(v86 + 24);
          v176 = v79;
          swift_bridgeObjectRetain_n();
          v177 = v78;
          swift_bridgeObjectRetain_n();
          v89 = v86;
          v77 = v188;
          v90 = v88(v85, v89);
          sub_1000B35D0(v87, type metadata accessor for PendingServerResponses);
          v91 = *(v77 + 1);
          *(&v211 + 1) = sub_100093190(&off_100599238);
          LOBYTE(v212) = 0;
          if ((v175 & 1) != 0 || v84)
          {

            swift_bridgeObjectRelease_n();

            v217 = 0u;
            v218 = 0u;
            v219 = 0u;
            v220 = 0u;
            v221 = 0u;
            v222 = 0u;
            v223 = 0u;
            memset(v224, 0, 17);
            a2 = v182;
          }

          else
          {
            *&v209 = v177;
            *(&v209 + 1) = v173;
            v92 = v172;
            LOWORD(v210) = v172;
            *(&v210 + 1) = v176;
            LODWORD(v211) = v174;
            *&v194 = v176;
            DWORD2(v194) = v174;
            *(&v212 + 1) = &type metadata for QuickFlagChangesResync;
            sub_100026044();
            v93 = sub_1004A6674();
            *(&v215 + 1) = v171;
            *&v216[0] = v170;
            *(&v216[0] + 1) = v90;
            LOBYTE(v216[1]) = v91;
            LOBYTE(v224[1]) = v91;
            v219 = v211;
            v220 = v212;
            v221 = v213;
            v222 = v214;
            v217 = v209;
            v218 = v210;
            v223 = v215;
            v224[0] = v216[0];
            a2 = v182;
            if (v209)
            {
              v232[16] = v224[1];
              v231 = v223;
              *v232 = v224[0];
              v227 = v219;
              v228 = v220;
              v229 = v221;
              v230 = v222;
              v225 = v217;
              v226 = v218;
              __chkstk_darwin(v93);
              *(&v164 - 2) = &v225;
              v94 = a2;
              v95 = v189;
              v96 = a2;
              v97 = v184;
              sub_1000A93A8(v94, v191, v189, v184, sub_1000B42B0, &v209);
              if (*(&v210 + 1))
              {

                sub_1000B364C(&v209, &v217);
                v98 = &v217;
                v99 = v183;
LABEL_39:
                sub_1000B364C(v98, v99);
                return sub_1000B42C8(&v225);
              }

              sub_100025F40(&v209, &qword_1005CF328, &unk_1004D2620);
              v127 = v96;
              if (sub_100014D94(2, v96))
              {
                v128 = sub_100014D94(2, v191);
                v129 = v190;
                if ((v128 & 1) == 0 && ((sub_100167D14(v127, v191) & 1) == 0 || (sub_100014D94(2, v95) & 1) == 0))
                {
                  v131 = (v169 + *(v168 + 20));
                  v132 = *v131;
                  v133 = v131 + *(v167 + 48);
                  v187 = *(v133 + 5);
                  v134 = v133[48];
                  v135 = v178;
                  result = sub_1000B4820(v186, v178, type metadata accessor for MessageBatches);
                  v136 = *(v77 + 4);
                  BYTE4(v196) = 1;
                  v137 = *v135 / 2;
                  if (v137 >= v132)
                  {
                    v142 = v187;
                    sub_1000B4298(v187, v134);

                    sub_10002A758(v142, v134);
                    sub_1000B35D0(v135, type metadata accessor for MessageBatches);
                    v127 = v182;
                    v129 = v190;
LABEL_80:
                    v209 = 0u;
                    v210 = 0u;
                    v211 = 0u;
                    v212 = 0u;
                    v213 = 0u;
                    v214 = 0u;
                    v215 = 0u;
                    v77 = v188;
LABEL_81:
                    v130 = sub_100025F40(&v209, &qword_1005CF460, &qword_1004D2718);
                    goto LABEL_82;
                  }

                  v138 = v187;
                  v73 = __OFSUB__(v132, v137);
                  v139 = v132 - v137;
                  if (!v73)
                  {
                    v127 = v182;
                    v129 = v190;
                    if (v139 <= 0 || HIDWORD(v139))
                    {
LABEL_73:
                      sub_1000B4298(v187, v134);

                      v140 = v138;
                      v141 = v134;
LABEL_74:
                      sub_10002A758(v140, v141);
                      sub_1000B35D0(v178, type metadata accessor for MessageBatches);
                      goto LABEL_80;
                    }

                    if (v134)
                    {
                      if (v187 > 139)
                      {
                        goto LABEL_73;
                      }

                      if (v187 > 0)
                      {
                        goto LABEL_93;
                      }
                    }

                    else
                    {
                      v151 = *(v187 + 16);
                      if (v151 >= 0x8C)
                      {
                        goto LABEL_73;
                      }

                      v152 = (v187 + 32);
                      while (v151)
                      {
                        v153 = *v152++;
                        --v151;
                        if (v153 < v139)
                        {
                          sub_1000B4298(v187, 0);

                          v140 = v138;
                          v141 = 0;
                          goto LABEL_74;
                        }
                      }
                    }

                    if ((v166 & 1) == 0)
                    {
                      *&v194 = v177;
                      *(&v194 + 1) = v173;
                      LOWORD(v195) = v92;
                      *(&v195 + 1) = v176;
                      LODWORD(v196) = v174;
                      v192 = v176;
                      v193 = v174;
                      *(&v196 + 1) = &type metadata for DetectRemovedMessagesInRecent;
                      v157 = v136;

                      sub_1000B4298(v138, v134);
                      sub_1004A6674();
                      v158 = v178;
                      v159 = sub_1000E25D0(v178, v165, 0);
                      v161 = v160;
                      v162 = sub_1000B35D0(v158, type metadata accessor for MessageBatches);
                      *(&v199 + 1) = v159;
                      LODWORD(v200) = v161;
                      BYTE4(v200) = BYTE4(v161) & 1;
                      *(&v200 + 5) = v157;
                      if ((v134 & 1) == 0)
                      {
                        v163 = *(v138 + 16);
                        v162 = sub_10002A758(v138, 0);
                        v138 = v163;
                      }

                      v127 = v182;
                      v129 = v190;
                      *(&v200 + 1) = v138;
                      v213 = v198;
                      v214 = v199;
                      v209 = v194;
                      v210 = v195;
                      v211 = v196;
                      v212 = v197;
                      v215 = v200;
                      v77 = v188;
                      if (v194)
                      {
                        v221 = v213;
                        v222 = v214;
                        v223 = v215;
                        v217 = v209;
                        v218 = v210;
                        v219 = v211;
                        v220 = v212;
                        __chkstk_darwin(v162);
                        *(&v164 - 2) = &v217;
                        sub_1000A8C98(v127, v191, v95, v97, sub_1000B431C, &v194);
                        if (*(&v195 + 1))
                        {
                          sub_1000B364C(&v194, &v209);
                          sub_1000B364C(&v209, &v201);
                          sub_10002A79C(&v217);
LABEL_84:
                          v76 = v183;
                          if (*(&v202 + 1))
                          {
                            sub_1000B364C(&v201, &v204);
                            v98 = &v204;
                            v99 = v76;
                            goto LABEL_39;
                          }

LABEL_88:
                          sub_100025F40(&v201, &qword_1005CF328, &unk_1004D2620);
                          result = sub_1000B42C8(&v225);
                          goto LABEL_61;
                        }

                        sub_100025F40(&v194, &qword_1005CF328, &unk_1004D2620);
                        sub_10002A79C(&v217);
LABEL_87:
                        v76 = v183;
                        v203 = 0;
                        v201 = 0u;
                        v202 = 0u;
                        goto LABEL_88;
                      }

                      goto LABEL_81;
                    }

LABEL_93:

                    sub_1000B35D0(v178, type metadata accessor for MessageBatches);
                    swift_bridgeObjectRelease_n();

                    goto LABEL_80;
                  }

                  __break(1u);
LABEL_120:
                  __break(1u);
                  return result;
                }
              }

              else
              {

                v129 = v190;
              }

LABEL_82:
              __chkstk_darwin(v130);
              v143 = v186;
              *(&v164 - 4) = v129;
              *(&v164 - 3) = v143;
              *(&v164 - 2) = v77;
              sub_1000A8A1C(v127, v191, v95, v97, sub_1000B42BC, &v209);
              if (*(&v210 + 1))
              {
                sub_1000B364C(&v209, &v217);
                sub_1000B364C(&v217, &v201);
                goto LABEL_84;
              }

              sub_100025F40(&v209, &qword_1005CF328, &unk_1004D2620);
              goto LABEL_87;
            }
          }

          sub_100025F40(&v217, &qword_1005CF458, &qword_1004D2710);
          v10 = v190;
        }

        v100 = sub_100014D94(4, a2);
        v101 = v189;
        if (v100)
        {
          v100 = sub_100014D94(4, v191);
          if ((v100 & 1) == 0)
          {
            if ((sub_100167D14(a2, v191) & 1) == 0 || (v100 = sub_100014D94(4, v101), (v100 & 1) == 0))
            {
              v182 = a2;
              v172 = *(v10 + 43);
              v102 = *v10;
              v170 = v10[1];
              v177 = v10[2];
              v178 = v102;
              LODWORD(v171) = *(v10 + 6);
              v173 = v10[5];
              v190 = v10;
              v174 = *(v10 + 48);
              v103 = v187 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
              swift_beginAccess();
              v104 = _s13SelectedStateV7WrappedVMa(0);
              v105 = (v103 + *(v104 + 20));
              v175 = *v105;
              v176 = v104;
              v106 = v105 + *(type metadata accessor for MailboxSyncState() + 48);
              v107 = *(v106 + 40);
              v108 = *(v106 + 48);
              v109 = v180;
              sub_1000B4820(v106, v180, type metadata accessor for PendingServerResponses);
              v111 = v109[3];
              v110 = v109[4];
              sub_10002587C(v109, v111);
              v112 = *(v110 + 24);
              swift_bridgeObjectRetain_n();

              sub_1000B4298(v107, v108);
              v113 = v111;
              v114 = v107;
              v115 = v112(v113, v110);
              sub_1000B35D0(v109, type metadata accessor for PendingServerResponses);
              v116 = *(v188 + 1);
              LODWORD(v112) = *(v103 + *(v176 + 20) + 32);
              v117 = v181;
              sub_1000B4820(v186, v181, type metadata accessor for MessageBatches);
              *(&v211 + 1) = sub_100093190(&off_100599260);
              LOBYTE(v212) = 1;
              if (v112 && (v118 = *v117, (sub_100026C18(v175, *v117, v107, v108) & 1) != 0) && sub_100026C90(v175, v118, v115) && (v174 & 1) == 0)
              {
                *&v209 = v178;
                *(&v209 + 1) = v170;
                LOWORD(v210) = v172;
                *(&v210 + 1) = v177;
                LODWORD(v211) = v171;
                *&v204 = v177;
                DWORD2(v204) = v171;
                *(&v212 + 1) = &type metadata for DetectChangesToMessagesInRecent;
                sub_100026044();
                sub_1004A6674();
                *&v216[0] = v115;
                if ((v108 & 1) == 0)
                {
                  v119 = *(v107 + 16);
                  sub_10002A758(v107, 0);
                  v114 = v119;
                }

                v101 = v189;
                v10 = v190;
                a2 = v182;
                v120 = v173;
                *(&v216[0] + 1) = v114;
                BYTE8(v215) = v116;
                v121 = v179;
                sub_1000B4820(v117, v179, type metadata accessor for MessageBatches);
                LOBYTE(v204) = 0;
                sub_1000D7F2C(0xFFFFFFFFLL);
                v122 = sub_1000E25D0(v121, v120, 0);
                v124 = v123;
                sub_1000B35D0(v121, type metadata accessor for MessageBatches);
                v125 = sub_1000B35D0(v117, type metadata accessor for MessageBatches);
                *&v216[1] = v122;
                DWORD2(v216[1]) = v124;
                BYTE12(v216[1]) = BYTE4(v124) & 1;
                v223 = v215;
                v224[0] = v216[0];
                v219 = v211;
                v220 = v212;
                v221 = v213;
                v222 = v214;
                v217 = v209;
                v218 = v210;
                *(v224 + 13) = *(v216 + 13);
                if (v209)
                {
                  v231 = v223;
                  *v232 = v224[0];
                  *&v232[13] = *(v224 + 13);
                  v227 = v219;
                  v228 = v220;
                  v229 = v221;
                  v230 = v222;
                  v225 = v217;
                  v226 = v218;
                  __chkstk_darwin(v125);
                  *(&v164 - 2) = &v225;
                  sub_1000A915C(a2, v191, v101, v184, sub_1000B42A4, &v209);
                  if (*(&v210 + 1))
                  {
                    sub_1000B364C(&v209, &v217);
                    sub_1000B364C(&v217, v183);
                    return sub_100026E94(&v225);
                  }

                  sub_100025F40(&v209, &qword_1005CF328, &unk_1004D2620);
                  result = sub_100026E94(&v225);
                  goto LABEL_60;
                }
              }

              else
              {

                sub_10002A758(v107, v108);
                swift_bridgeObjectRelease_n();

                sub_1000B35D0(v117, type metadata accessor for MessageBatches);

                v217 = 0u;
                v218 = 0u;
                v219 = 0u;
                v220 = 0u;
                v221 = 0u;
                v222 = 0u;
                v223 = 0u;
                memset(v224, 0, 29);
                v101 = v189;
                v10 = v190;
                a2 = v182;
              }

              v100 = sub_100025F40(&v217, &qword_1005CF450, &qword_1004D2708);
              v77 = v188;
            }
          }
        }

        __chkstk_darwin(v100);
        *(&v164 - 4) = v10;
        *(&v164 - 3) = v77;
        v126 = v186;
        *(&v164 - 2) = v187;
        *(&v164 - 1) = v126;
        sub_1000A8EFC(a2, v191, v101, v184, sub_1000B428C, &v217);
        if (*(&v218 + 1))
        {
          sub_1000B364C(&v217, &v225);
          return sub_1000B364C(&v225, v183);
        }

        result = sub_100025F40(&v217, &qword_1005CF328, &unk_1004D2620);
LABEL_60:
        v76 = v183;
        goto LABEL_61;
      }
    }

LABEL_13:
    if (sub_100167D14(a2, v191))
    {
      if (v189[2])
      {
        v182 = a2;
        v49 = v10;
        v50 = v189;
        v51 = v189[5];
        sub_1004A6E94();
        sub_1004A6EB4(v33);
        v52 = sub_1004A6F14();
        v53 = *(v50 + 32);
        v10 = v49;
        a2 = v182;
        v54 = -1 << v53;
        v55 = v52 & ~(-1 << v53);
        if ((*(v190 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
        {
          v56 = ~v54;
          while (*(v189[6] + v55) != v33)
          {
            v55 = (v55 + 1) & v56;
            if (((*(v190 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_33;
        }
      }
    }

LABEL_19:
    ;
  }

  while (v30 != 2);
  v57 = sub_100014D94(2, a2);
  v58 = v189;
  if ((v57 & 1) == 0)
  {
    goto LABEL_29;
  }

  v57 = sub_100014D94(2, v191);
  if (v57)
  {
    goto LABEL_29;
  }

  if (sub_100167D14(a2, v191))
  {
    v57 = sub_100014D94(2, v58);
    if (v57)
    {
      goto LABEL_29;
    }
  }

  v182 = a2;
  LODWORD(v180) = *(v10 + 43);
  v59 = *v10;
  v179 = v10[1];
  v60 = v10[2];
  v61 = *(v10 + 6);
  v181 = v10[5];
  v190 = v10;
  v62 = *(v10 + 48);
  v63 = v187 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v64 = (v63 + *(_s13SelectedStateV7WrappedVMa(0) + 20));
  v65 = *v64;
  v66 = v64 + *(type metadata accessor for MailboxSyncState() + 48);
  v67 = *(v66 + 5);
  v68 = v66[48];
  result = sub_1000B4820(v186, v18, type metadata accessor for MessageBatches);
  v70 = *(v188 + 4);
  BYTE4(v211) = 1;
  v71 = v18;
  v72 = *v18 / 2;
  if (v72 >= v65)
  {
    goto LABEL_27;
  }

  v73 = __OFSUB__(v65, v72);
  v74 = v65 - v72;
  if (v73)
  {
    goto LABEL_120;
  }

  if ((v74 - 0x100000000) <= 0xFFFFFFFF00000000)
  {
    goto LABEL_27;
  }

  if (v68)
  {
    if (v67 <= 0)
    {
      goto LABEL_96;
    }

    goto LABEL_27;
  }

  v154 = *(v67 + 16);
  if (v154 > 0x8B)
  {
    goto LABEL_27;
  }

  v155 = (v67 + 32);
  while (v154)
  {
    v156 = *v155++;
    --v154;
    if (v156 < v74)
    {
      goto LABEL_27;
    }
  }

LABEL_96:
  if (v62)
  {
LABEL_27:
    sub_1000B35D0(v18, type metadata accessor for MessageBatches);
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v223 = 0u;
    v58 = v189;
    a2 = v182;
  }

  else
  {
    *&v209 = v59;
    *(&v209 + 1) = v179;
    LOWORD(v210) = v180;
    *(&v210 + 1) = v60;
    LODWORD(v211) = v61;
    v207 = v60;
    v208 = v61;
    *(&v211 + 1) = &type metadata for DetectRemovedMessagesInRecent;
    v144 = v70;
    swift_bridgeObjectRetain_n();

    sub_1000B4298(v67, v68);
    sub_100026044();
    sub_1004A6674();
    v145 = v71;
    v146 = sub_1000E25D0(v71, v181, v62 & 1);
    v148 = v147;
    v149 = sub_1000B35D0(v145, type metadata accessor for MessageBatches);
    *(&v214 + 1) = v146;
    LODWORD(v215) = v148;
    BYTE4(v215) = BYTE4(v148) & 1;
    *(&v215 + 5) = v144;
    if ((v68 & 1) == 0)
    {
      v150 = *(v67 + 16);
      v149 = sub_10002A758(v67, 0);
      v67 = v150;
    }

    v58 = v189;
    *(&v215 + 1) = v67;
    v221 = v213;
    v222 = v214;
    v217 = v209;
    v218 = v210;
    v219 = v211;
    v220 = v212;
    v223 = v215;
    a2 = v182;
    if (v209)
    {
      v229 = v221;
      v230 = v222;
      v231 = v223;
      v225 = v217;
      v226 = v218;
      v227 = v219;
      v228 = v220;
      __chkstk_darwin(v149);
      *(&v164 - 2) = &v225;
      sub_1000A8C98(a2, v191, v58, v184, sub_1000B493C, &v209);
      if (*(&v210 + 1))
      {
        sub_1000B364C(&v209, &v217);
        sub_1000B364C(&v217, &v204);
        sub_10002A79C(&v225);
        goto LABEL_31;
      }

      sub_100025F40(&v209, &qword_1005CF328, &unk_1004D2620);
      sub_10002A79C(&v225);
LABEL_76:
      v76 = v183;
      v206 = 0;
      v204 = 0u;
      v205 = 0u;
      goto LABEL_77;
    }
  }

  v57 = sub_100025F40(&v217, &qword_1005CF460, &qword_1004D2718);
  v10 = v190;
LABEL_29:
  __chkstk_darwin(v57);
  v75 = v186;
  *(&v164 - 4) = v10;
  *(&v164 - 3) = v75;
  *(&v164 - 2) = v188;
  sub_1000A8A1C(a2, v191, v58, v184, sub_1000B4928, &v217);
  if (!*(&v218 + 1))
  {
    sub_100025F40(&v217, &qword_1005CF328, &unk_1004D2620);
    goto LABEL_76;
  }

  sub_1000B364C(&v217, &v225);
  sub_1000B364C(&v225, &v204);
LABEL_31:
  v76 = v183;
  if (*(&v205 + 1))
  {
    sub_1000B364C(&v204, &v194);
    return sub_1000B364C(&v194, v76);
  }

LABEL_77:
  result = sub_100025F40(&v204, &qword_1005CF328, &unk_1004D2620);
LABEL_61:
  *(v76 + 32) = 0;
  *v76 = 0u;
  *(v76 + 16) = 0u;
  return result;
}

uint64_t sub_1000AE6A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = *(a2 + 8);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v6 + 8 * v7 + 24);
  }

  else
  {
    v8 = 1;
  }

  v23 = v8;
  v9 = *(a1 + 43);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *(a1 + 6);
  v22 = *(a3 + 4);
  v14 = a4 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v15 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v16 = (v14 + v15 + *(type metadata accessor for MailboxSyncState() + 76));
  v17.rawValue = *v16;
  v18 = v16[1];
  swift_bridgeObjectRetain_n();

  v19 = static MonotonicTime.now()();
  result = sub_1000CE570(&off_100599490);
  *&v24 = result;
  BYTE8(v24) = 0;
  *&v31[16] = 0;
  v31[24] = 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    v21 = exp2((v18 - 1));
    if (MonotonicTime.init(seconds:since:)(fmin(v21 + v21, 37.0), v17).rawValue >= v19)
    {

      result = swift_bridgeObjectRelease_n();
      *(a5 + 121) = 0u;
      a5[6] = 0u;
      a5[7] = 0u;
      a5[4] = 0u;
      a5[5] = 0u;
      a5[2] = 0u;
      a5[3] = 0u;
      *a5 = 0u;
      a5[1] = 0u;
    }

    else
    {
      *&v25 = v10;
      *(&v25 + 1) = v11;
      LOWORD(v26) = v9;
      *(&v26 + 1) = v12;
      LODWORD(v27) = v13;
      *(&v27 + 1) = &type metadata for CountUnreadMessages;
      sub_100026044();
      result = sub_1004A6674();
      DWORD2(v30) = v23;
      *v31 = 1000000;
      v31[8] = 0;
      *&v31[9] = v22;
      a5[2] = v26;
      a5[3] = v27;
      a5[4] = v28;
      a5[5] = v29;
      *a5 = v24;
      a5[1] = v25;
      a5[6] = v30;
      a5[7] = *v31;
      *(a5 + 121) = *&v31[9];
    }
  }

  return result;
}

uint64_t sub_1000AE8A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = type metadata accessor for UploadMessages(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 43);
  v12 = *a1;
  v30 = a1[1];
  v13 = a1[2];
  v14 = *(a1 + 6);
  v35 = *(a2 + 1);
  v15 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v16 = v15 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
  HIDWORD(v29) = *(v16 + 32);
  v17 = *(a2 + 32);
  LOBYTE(v15) = *(a2 + 40);
  v18 = type metadata accessor for MailboxSyncState();
  if (v15)
  {
    v19 = v17 != 0;
    v20 = 2;
    if (!v17)
    {
      v21 = (v16 + *(v18 + 72));
      if ((*(v21 + 9) & 1) == 0)
      {
        v22 = *v21;
        v23 = *(v21 + 8);
        if (v23)
        {
          v19 = 1;
        }

        else
        {
          v19 = v22;
        }

        if (v23)
        {
          v20 = 2;
        }

        else
        {
          v20 = 1;
        }
      }
    }
  }

  else
  {
    v20 = 0;
    v19 = v17;
  }

  swift_bridgeObjectRetain_n();

  *(v11 + 5) = sub_1000CE570(&off_100599300);
  v11[48] = 0;
  v24 = v7[13];
  v25 = type metadata accessor for UploadMessages.PendingUpload(0);
  (*(*(v25 - 8) + 56))(&v11[v24], 1, 1, v25);
  *&v11[v7[14]] = xmmword_1004D25F0;
  v11[v7[18]] = 0;
  v26 = v30;
  *v11 = v12;
  *(v11 + 1) = v26;
  *(v11 + 8) = v31;
  *(v11 + 3) = v13;
  *(v11 + 8) = v14;
  v33 = v13;
  v34 = v14;
  *(v11 + 7) = v7;
  sub_100026044();
  sub_1004A6674();
  v11[104] = v35;
  v11[105] = HIDWORD(v29) == 0;
  *(v11 + 14) = v19;
  v11[120] = v20;
  *(v11 + 16) = _swiftEmptyArrayStorage;
  *(v11 + 17) = _swiftEmptyArrayStorage;
  *(v11 + 18) = &_swiftEmptyArrayStorage[4];
  *(v11 + 152) = xmmword_1004B1230;
  *&v11[v7[15]] = _swiftEmptySetSingleton;
  *&v11[v7[16]] = _swiftEmptyArrayStorage;
  *&v11[v7[17]] = _swiftEmptyArrayStorage;
  v27 = v32;
  sub_1000B4888(v11, v32, type metadata accessor for UploadMessages);
  return (*(v8 + 56))(v27, 0, 1, v7);
}

uint64_t sub_1000AEB8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = 0;
  v7 = result + 56;
  v8 = 1 << *(result + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(result + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  v13 = a3 + 56;
  v30 = a4 + 56;
  v31 = result;
LABEL_5:
  while (v10)
  {
    if (!*(a2 + 16))
    {
      return 1;
    }

LABEL_7:
    v14 = *(*(v5 + 48) + (__clz(__rbit64(v10)) | (v6 << 6)));
    v15 = *(a2 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(v14);
    v16 = sub_1004A6F14();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v12 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 1;
    }

    v10 &= v10 - 1;
    v19 = ~v17;
    while (*(*(a2 + 48) + v18) != v14)
    {
      v18 = (v18 + 1) & v19;
      if (((*(v12 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 1;
      }
    }

    if (*(a3 + 16))
    {
      v21 = *(a3 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v14);
      v22 = sub_1004A6F14();
      v23 = -1 << *(a3 + 32);
      v24 = v22 & ~v23;
      if ((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (*(*(a3 + 48) + v24) != v14)
        {
          v24 = (v24 + 1) & v25;
          if (((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        return 1;
      }
    }

LABEL_22:
    result = sub_100167D14(a2, a3);
    v5 = v31;
    if (result)
    {
      if (*(a4 + 16))
      {
        v26 = *(a4 + 40);
        sub_1004A6E94();
        sub_1004A6EB4(v14);
        result = sub_1004A6F14();
        v5 = v31;
        v27 = -1 << *(a4 + 32);
        v28 = result & ~v27;
        if ((*(v30 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v29 = ~v27;
          while (*(*(a4 + 48) + v28) != v14)
          {
            v28 = (v28 + 1) & v29;
            if (((*(v30 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          return 1;
        }
      }
    }
  }

  do
  {
    v20 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v11)
    {
      return 0;
    }

    v10 = *(v7 + 8 * v20);
    ++v6;
  }

  while (!v10);
  v6 = v20;
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

  return 1;
}

void sub_1000AEE38(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v43 - v10;
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v43 - v17;
  __chkstk_darwin(v19);
  v22 = v43 - v21;
  v23 = *(a2 + 8);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v23 + 8 * v24 + 24);
  }

  else
  {
    v25 = 1;
  }

  v26 = *(a1 + 43);
  v30 = (a3 & 0x10000000000) == 0;
  v28 = *a1;
  v27 = a1[1];
  v29 = a1[2];
  v30 = v30 || v25 == 1;
  v31 = v30;
  v49 = *(a1 + 6);
  v48 = v27;
  if (v30)
  {
    swift_bridgeObjectRetain_n();

    v32 = 0;
    v33 = 0;
    v34 = 1;
LABEL_22:
    *a4 = sub_1000CE570(&off_1005994B8);
    *(a4 + 8) = 1;
    v42 = v48;
    *(a4 + 16) = v28;
    *(a4 + 24) = v42;
    *(a4 + 32) = v26;
    *(a4 + 40) = v29;
    LODWORD(v42) = v49;
    *(a4 + 48) = v49;
    v51 = v29;
    v52 = v42;
    *(a4 + 56) = &type metadata for PurgeMessagesOutsideWindowOfInterest;
    sub_100026044();
    sub_1004A6674();
    *(a4 + 104) = v33;
    *(a4 + 112) = v31;
    *(a4 + 116) = v32;
    *(a4 + 124) = v34 & 1;
    return;
  }

  v47 = v26;
  v35 = a1[5];
  v36 = *(a1 + 48);
  LODWORD(v50) = 1;
  if (v25 >= 2)
  {
    v43[1] = v20;
    v44 = v35;
    v46 = v31;
    v53 = v25 - 1;
    v37 = sub_100016948();
    swift_bridgeObjectRetain_n();

    static MessageIdentifier.... infix(_:_:)(&v50, &v53, &type metadata for UID, v37, &v51);
    v45 = v51 | (HIDWORD(v51) << 32);
    if (v36)
    {
      v32 = 0;
    }

    else
    {
      v50 = Range<>.init<A>(_:)(&v51, &type metadata for UID, v37);
      sub_100016D2C();
      sub_1004A7124();
      v51 = v44;
      v50 = Range<>.init<A>(_:)(&v51, &type metadata for UID, v37);
      sub_1004A7124();
      MessageIdentifierSet.subtracting(_:)(v22, v18);
      sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
      MessageIdentifierSet.ranges.getter(v11);
      sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
      v32 = sub_1000E4C0C();
      v39 = v38;
      sub_100025F40(v11, &qword_1005CD7A0, &unk_1004CF590);
      sub_100025F40(v22, &unk_1005D91B0, &unk_1004CF400);
      if ((v39 & 1) == 0)
      {
        v40 = v32 == v44;
        v41 = HIDWORD(v44) == HIDWORD(v32);
        v34 = v40 && v41;
        if (v40 && v41)
        {
          v32 = 0;
        }

        goto LABEL_21;
      }

      v32 = 1;
    }

    v34 = 1;
LABEL_21:
    LOBYTE(v31) = v46;
    LOWORD(v26) = v47;
    v33 = v45;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_1000AF20C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a5;
  v61 = a3;
  v64 = a6;
  v9 = sub_10000C9C0(&qword_1005CF380, &unk_1004D2660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v47 - v11;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v13 = *(SearchResult - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(SearchResult);
  v57 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v63 = *(SearchResultMessages - 1);
  v17 = *(v63 + 64);
  __chkstk_darwin(SearchResultMessages);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MessageBatches(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a1 + 43);
  v24 = *a1;
  v55 = a1[1];
  v25 = a1[2];
  v54 = *(a1 + 6);
  v60 = a1[5];
  v59 = *(a1 + 48);
  sub_1000B4820(a2, v23, type metadata accessor for MessageBatches);
  v26 = a1[19];
  v27 = v61 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v28 = (v27 + *(_s13SelectedStateV7WrappedVMa(0) + 20));
  v29 = v28[144];
  v52 = v28[145];
  v53 = v29;
  v30 = v28[146];
  v50 = v28[147];
  v51 = v30;
  v49 = v28[148];
  v67 = *(a4 + 1);
  *v19 = _swiftEmptySetSingleton;
  v19[8] = 0;
  v31 = SearchResultMessages[13];
  v32 = type metadata accessor for NewServerMessages();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v61 = v31;
  v47 = v33 + 56;
  v48 = v34;
  v34(&v19[v31], 1, 1, v32);
  swift_bridgeObjectRetain_n();
  v35 = v24;

  sub_10005A8F4(v36, v60, v59 & 1, v12);
  if ((*(v13 + 48))(v12, 1, SearchResult) == 1)
  {
    swift_bridgeObjectRelease_n();

    sub_1000B35D0(v23, type metadata accessor for MessageBatches);
    sub_100025F40(v12, &qword_1005CF380, &unk_1004D2660);
    sub_100025F40(&v19[v61], &qword_1005CE3B0, &unk_1004D1010);
    return (*(v63 + 56))(v64, 1, 1, SearchResultMessages);
  }

  else
  {
    v38 = v57;
    sub_1000B4888(v12, v57, type metadata accessor for FetchSearchResultMessages.Requests);
    v39 = SearchResultMessages[8];
    v65 = v25;
    v40 = v54;
    v66 = v54;
    *&v19[v39] = SearchResultMessages;
    sub_100026044();
    sub_1004A6674();
    v41 = v55;
    *(v19 + 2) = v35;
    *(v19 + 3) = v41;
    *(v19 + 16) = v56;
    *(v19 + 5) = v25;
    *(v19 + 12) = v40;
    sub_1000B4888(v23, &v19[SearchResultMessages[7]], type metadata accessor for MessageBatches);
    v42 = v61;
    sub_100025F40(&v19[v61], &qword_1005CE3B0, &unk_1004D1010);
    v48(&v19[v42], 1, 1, v32);
    v43 = &v19[SearchResultMessages[9]];
    v44 = v52;
    *v43 = v53;
    v43[1] = v44;
    v45 = v50;
    v43[2] = v51;
    v43[3] = v45;
    v43[4] = v49;
    v19[SearchResultMessages[10]] = v67;
    v19[SearchResultMessages[11]] = BYTE6(v58) & 1;
    sub_1000B4888(v38, &v19[SearchResultMessages[12]], type metadata accessor for FetchSearchResultMessages.Requests);
    v46 = v64;
    sub_1000B4820(v19, v64, type metadata accessor for FetchSearchResultMessages);
    (*(v63 + 56))(v46, 0, 1, SearchResultMessages);
    return sub_1000B35D0(v19, type metadata accessor for FetchSearchResultMessages);
  }
}

uint64_t sub_1000AF768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v7 = type metadata accessor for MessageBatches(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = *(a1 + 43);
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = *(a1 + 6);
  v26 = a1[5];
  v25 = *(a1 + 48);
  sub_1000B4820(a2, &v23 - v12, type metadata accessor for MessageBatches);
  LOWORD(a2) = *(v24 + 4);
  *(a4 + 36) = 1;
  *(a4 + 104) = 0;
  *(a4 + 112) = 1;
  *a4 = v15;
  *(a4 + 8) = v16;
  *(a4 + 16) = v14;
  *(a4 + 24) = v17;
  *(a4 + 32) = v18;
  v27 = v17;
  v28 = v18;
  *(a4 + 40) = &type metadata for DetectRemovedMessages;
  sub_100026044();
  swift_bridgeObjectRetain_n();

  sub_1004A6674();
  sub_1000B4820(v13, v11, type metadata accessor for MessageBatches);
  v19 = sub_1000E2208(v11, v26, v25 & 1);
  v21 = v20;
  result = sub_1000B35D0(v13, type metadata accessor for MessageBatches);
  *(a4 + 88) = v19;
  *(a4 + 96) = v21;
  *(a4 + 100) = BYTE4(v21) & 1;
  *(a4 + 101) = a2;
  return result;
}

double sub_1000AF930@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v9 = type metadata accessor for MessageBatches(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v29[-v14];
  v30 = *(a1 + 43);
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = *(a1 + 6);
  v33 = a1[5];
  v32 = *(a1 + 48);
  LOBYTE(a2) = *(a2 + 1);
  v20 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  LODWORD(a1) = *(v20 + *(_s13SelectedStateV7WrappedVMa(0) + 20) + 32);
  sub_1000B4820(v31, v15, type metadata accessor for MessageBatches);
  *(&v38 + 1) = sub_100093190(&off_1005994E0);
  LOBYTE(v39) = 1;
  v43 = 0uLL;
  v44[0] = 1;
  *&v36 = v16;
  *(&v36 + 1) = v17;
  LOWORD(v37) = v30;
  *(&v37 + 1) = v18;
  LODWORD(v38) = v19;
  BYTE8(v42) = a2;
  BYTE9(v42) = a1 == 0;
  v34 = v18;
  v35 = v19;
  *(&v39 + 1) = &type metadata for DetectChangesToMessages;
  sub_100026044();
  swift_bridgeObjectRetain_n();

  sub_1004A6674();
  sub_1000B4820(v15, v13, type metadata accessor for MessageBatches);
  LOBYTE(v34) = 0;
  sub_1000D7F2C(0xFFFFFFFFLL);
  v21 = sub_1000E2208(v13, v33, v32 & 1);
  v23 = v22;
  sub_1000B35D0(v15, type metadata accessor for MessageBatches);
  *&v44[8] = v21;
  *&v44[16] = v23;
  v44[20] = BYTE4(v23) & 1;
  v24 = v43;
  *(a5 + 96) = v42;
  *(a5 + 112) = v24;
  v25 = v39;
  *(a5 + 32) = v38;
  *(a5 + 48) = v25;
  v26 = v41;
  *(a5 + 64) = v40;
  *(a5 + 80) = v26;
  v27 = v37;
  *a5 = v36;
  *(a5 + 16) = v27;
  result = *v44;
  *(a5 + 128) = *v44;
  *(a5 + 141) = *&v44[13];
  return result;
}

unint64_t sub_1000AFBEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_u64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_u64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_u64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_u64(v9.u64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1000AFCA0()
{
  v1 = *v0;
  v2 = v0[2];
  v37 = v0[3];
  v38 = v0[1];
  v3 = v0[4];
  v4 = v0[6];
  v33 = v0[7];
  v34 = v0[5];
  v5 = v0[8];
  v52[0] = v1;
  v35 = v1;
  v6 = *(v1 + 16);
  sub_10000E268(v52, &v43, &qword_1005CF358, &qword_1004D2640);

  if (v6)
  {
    v7 = 0;
    v8 = (v35 + 64);
    while (1)
    {
      v9 = v7 + 1;
      v10 = *v8;
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      v13 = *(v8 - 3);
      LODWORD(v43) = *(v8 - 8);
      v44 = v13;
      v45 = v11;
      v46 = v12;
      v47 = v10;
      sub_100014CEC(v13, v11);

      v38(&v39, &v43);
      sub_100014D40(v44, v45);

      v14 = v39;
      v15 = v40;
      v16 = v42;
      v17 = v41;
      v48 = v39;
      v49 = v40;
      v51 = v42;
      v50 = v41;
      if (v37(&v48))
      {
        break;
      }

      v8 += 40;
      ++v7;
      if (v6 == v9)
      {
        goto LABEL_5;
      }
    }

    v43 = v14;
    v44 = v15;
    LOWORD(v45) = v17;
    BYTE2(v45) = (v17 | (v16 << 16)) >> 16;
    v34(&v48, &v43);
    LODWORD(v43) = v48;
    v44 = v49;
    LOWORD(v45) = v50;
    BYTE2(v45) = v51;
    result = v33(&v48, &v43);
    v19 = v48;
    if (v6 - 1 != v7)
    {
      v20 = v35 + 64;
      v32 = v35 + 64;
      do
      {
        v36 = v19;
        v21 = (v20 + 40 * v9);
        while (1)
        {
          if (v9 >= v6)
          {
            __break(1u);
LABEL_21:
            __break(1u);
            return result;
          }

          v22 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_21;
          }

          v23 = *v21;
          v24 = *(v21 - 2);
          v25 = *(v21 - 1);
          v26 = *(v21 - 3);
          LODWORD(v43) = *(v21 - 8);
          v44 = v26;
          v45 = v24;
          v46 = v25;
          v47 = v23;
          sub_100014CEC(v26, v24);

          v38(&v39, &v43);
          sub_100014D40(v44, v45);

          v28 = v39;
          v27 = v40;
          v29 = v42;
          v30 = v41;
          v48 = v39;
          v49 = v40;
          v51 = v42;
          v50 = v41;
          result = v37(&v48);
          if (result)
          {
            break;
          }

          ++v9;
          v21 += 40;
          if (v22 == v6)
          {
            v19 = v36;
            goto LABEL_18;
          }
        }

        v43 = v28;
        v44 = v27;
        LOWORD(v45) = v30;
        BYTE2(v45) = (v30 | (v29 << 16)) >> 16;
        v34(&v48, &v43);
        LODWORD(v43) = v48;
        v44 = v49;
        LOWORD(v45) = v50;
        BYTE2(v45) = v51;
        result = v33(&v48, &v43);
        if (v36 <= v48)
        {
          v19 = v48;
        }

        else
        {
          v19 = v36;
        }

        ++v9;
        v20 = v32;
      }

      while (v22 != v6);
    }

LABEL_18:
    v31 = v19;
    sub_100025F40(v52, &qword_1005CF358, &qword_1004D2640);

    return v31;
  }

  else
  {
LABEL_5:
    sub_100025F40(v52, &qword_1005CF358, &qword_1004D2640);

    return 5;
  }
}

uint64_t sub_1000B0058(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100139840(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000B0110(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 24 * v2 + 25;
  v7 = 49;
  v16 = v2 >> 1;
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 16);
    if (v3 >= v10)
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_12;
    }

    v19 = *(v1 + v7 - 17);
    v18 = *(v1 + v7 - 9);
    v17 = *(v1 + v7 - 1);
    v11 = *(v1 + v7);
    v12 = *(v1 + v6 - 17);
    v13 = *(v1 + v6 - 9);
    v14 = *(v1 + v6 - 1);
    v15 = *(v1 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10013991C(v1);
      v1 = result;
    }

    v8 = (v1 + v7);
    *(v8 - 17) = v12;
    *(v8 - 9) = v13;
    *(v8 - 1) = v14;
    *v8 = v15;
    v9 = (v1 + v6);
    *(v9 - 17) = v19;
    *(v9 - 9) = v18;
    *(v9 - 1) = v17;
    *v9 = v11;
    v4 = v16;
LABEL_5:
    ++v3;
    --v5;
    v6 -= 24;
    v7 += 24;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void *sub_1000B0290(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v4 = a2;
  v8 = a3;
  v9 = a4;
  sub_1004A6DA4();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = v10[2];

  if (__OFSUB__(v9 >> 1, v8))
  {
    goto LABEL_22;
  }

  if (v11 != (v9 >> 1) - v8)
  {
LABEL_23:
    swift_unknownObjectRelease();
    a3 = v8;
    a4 = v9;
    a2 = v4;
LABEL_2:
    sub_1000B1560(a1, a2, a3, a4);
    v7 = v6;
    goto LABEL_9;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_10;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v12 = v7[2];
  if (v12 >= 2)
  {
    a1 = 0;
    v14 = v12 >> 1;
    v9 = v12 - 1;
    v8 = 24 * v12 + 25;
    v15 = 49;
    v23 = v12 >> 1;
    do
    {
      if (a1 != v9)
      {
        v18 = v7[2];
        if (a1 >= v18)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if (v9 >= v18)
        {
          goto LABEL_21;
        }

        v26 = *(v7 + v15 - 17);
        v25 = *(v7 + v15 - 9);
        v24 = *(v7 + v15 - 1);
        v19 = *(v7 + v15);
        v4 = *(v7 + v8 - 17);
        v20 = *(v7 + v8 - 9);
        v21 = *(v7 + v8 - 1);
        v22 = *(v7 + v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10013991C(v7);
        }

        v16 = v7 + v15;
        *(v16 - 17) = v4;
        *(v16 - 9) = v20;
        *(v16 - 1) = v21;
        *v16 = v22;
        v17 = v7 + v8;
        *(v17 - 17) = v26;
        *(v17 - 9) = v25;
        *(v17 - 1) = v24;
        *v17 = v19;
        v14 = v23;
      }

      ++a1;
      --v9;
      v8 -= 24;
      v15 += 24;
    }

    while (v14 != a1);
  }

  return v7;
}

uint64_t sub_1000B0484(char **a1, uint64_t a2, void *a3)
{
  v5 = a3[1];
  v86 = *a3;
  v6 = a3[2];
  v91 = a3[3];
  v92 = v5;
  v7 = a3[4];
  v87 = a3[5];
  v80 = a3;
  v88 = a3[6];
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v83 = &v80 - v10;
  v11 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v80 - v13;
  v85 = a1;
  v15 = *a1;
  sub_10000E268(a2, &v80 - v13, &unk_1005D91B0, &unk_1004CF400);

  v84 = a2;
  v16 = MessageIdentifierSet.startIndex.getter(v8);
  v18 = v17;
  v82 = 0;
  while (v16 != MessageIdentifierSet.endIndex.getter(v8) || v18 != v23)
  {
    MessageIdentifierSet.subscript.getter(v18, v8, &v102);
    v19 = v102;
    v16 = MessageIdentifierSet.index(_:offsetBy:)(v16, v18, 1);
    v18 = v20;
    v21 = sub_100067004(v19);
    if (v22)
    {
      v24 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10013ADF0();
        v15 = v102;
      }

      sub_10013D534(v24, v15);
    }
  }

  v89 = v15;
  v26 = &v14[*(v11 + 36)];
  *v26 = v16;
  v26[1] = v18;
  sub_100025F40(v14, &qword_1005CDA38, &unk_1004D14C0);
  v27 = v86;
  v101 = v86;
  v28 = *(v86 + 16);
  sub_10000E268(&v101, &v102, &qword_1005CF358, &qword_1004D2640);
  v29 = v6;

  v93 = v7;

  if (v28)
  {
    v30 = 0;
    v31 = v27 + 64;
    v90 = v8;
    v81 = v27 + 64;
    do
    {
      v32 = (v31 + 40 * v30);
      v33 = v30;
      while (1)
      {
        if (v33 >= v28)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v30 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_43;
        }

        v34 = *v32;
        v35 = *(v32 - 2);
        v36 = *(v32 - 1);
        v37 = *(v32 - 3);
        LODWORD(v102) = *(v32 - 8);
        v103 = v37;
        v104 = v35;
        v105 = v36;
        LOBYTE(v106) = v34;
        sub_100014CEC(v37, v35);

        v38 = v29;
        v92(&v94, &v102);
        sub_100014D40(v103, v104);

        v39 = v94;
        v40 = v95;
        v41 = v97;
        v42 = v96;
        v98[0] = v94;
        v98[1] = v95;
        v100 = v97;
        v99 = v96;
        if (v91(v98))
        {
          v102 = v39;
          v103 = v40;
          LOWORD(v104) = v42;
          BYTE2(v104) = (v42 | (v41 << 16)) >> 16;
          v87(v98, &v102);
          v43 = sub_100067004(LODWORD(v98[0]));
          if (v44)
          {
            break;
          }
        }

        ++v33;
        v32 += 40;
        v8 = v90;
        if (v30 == v28)
        {
          goto LABEL_20;
        }
      }

      v45 = v43;
      v46 = v89;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v102 = v46;
      if ((v47 & 1) == 0)
      {
        sub_10013ADF0();
        v46 = v102;
      }

      v89 = v46;
      sub_10013D534(v45, v46);
      v29 = v38;
      v8 = v90;
      v31 = v81;
    }

    while (v30 != v28);
  }

LABEL_20:
  sub_100025F40(&v101, &qword_1005CF358, &qword_1004D2640);
  v48 = v29;

  v49 = v89;
  v50 = *(v89 + 2);
  v51 = _swiftEmptyArrayStorage;
  if (v50 && (v51 = sub_1001354D4(*(v89 + 2), 0), v52 = sub_10013930C(&v102, (v51 + 32), v50, v49), v81 = v106, , sub_100020D08(), v52 != v50))
  {
LABEL_44:
    __break(1u);
  }

  else
  {
    v102 = v51;

    v53 = v82;
    sub_1000B1238(&v102);
    v54 = v84;
    v55 = v85;
    v56 = v83;
    if (!v53)
    {

      v82 = v102;
      v57 = v55 + *(type metadata accessor for MessagesPendingDownload() + 20);
      MessageIdentifierSet.union(_:)(v54, v56);
      v58 = MessageIdentifierSet.startIndex.getter(v8);
      v60 = v59;
      v62 = v58 == MessageIdentifierSet.endIndex.getter(v8) && v60 == v61;
      v63 = v62;
      LODWORD(v81) = v63;
      if (v62)
      {
        sub_100025F40(v56, &unk_1005D91B0, &unk_1004CF400);
        v90 = 0;
      }

      else
      {
        MessageIdentifierSet.subscript.getter(v60, v8, &v102);
        sub_100025F40(v56, &unk_1005D91B0, &unk_1004CF400);
        v90 = v102;
      }

      v102 = v86;
      v103 = v92;
      v104 = v48;
      v105 = v91;
      v106 = v93;
      v107 = v87;
      v108 = v88;
      v109 = sub_1000DB8C8;
      v110 = 0;
      sub_10000E268(&v101, v98, &qword_1005CF358, &qword_1004D2640);

      v64 = sub_1000AFCA0();
      sub_100025F40(&v101, &qword_1005CF358, &qword_1004D2640);

      if (v64 == 5)
      {
        sub_100025F40(&v101, &qword_1005CF358, &qword_1004D2640);
      }

      else
      {
        __chkstk_darwin(v65);
        *(&v80 - 2) = v54;
        *(&v80 - 8) = v64;
        sub_10000E268(&v101, v98, &qword_1005CF358, &qword_1004D2640);

        v98[0] = sub_1000B0DA8(sub_1000B3988);

        sub_1000B10B8(v98);

        sub_100025F40(&v101, &qword_1005CF358, &qword_1004D2640);

        v66 = v98[0];
        v67 = *(v98[0] + 2);
        if (v67)
        {
          v98[0] = _swiftEmptyArrayStorage;
          sub_100091FA8(0, v67, 0);
          v68 = 0;
          v69 = v98[0];
          v70 = *(v98[0] + 2);
          v71 = 24 * v70;
          do
          {
            v72 = *&v66[v68 + 32];
            v73 = *&v66[v68 + 40];
            v74 = v66[v68 + 48];
            v75 = v66[v68 + 49];
            v98[0] = v69;
            v76 = *(v69 + 3);
            v77 = v70 + 1;
            if (v70 >= v76 >> 1)
            {
              sub_100091FA8((v76 > 1), v70 + 1, 1);
              v69 = v98[0];
            }

            *(v69 + 2) = v77;
            v78 = &v69[v71 + v68];
            *(v78 + 8) = v72;
            *(v78 + 5) = v73;
            v78[48] = v74;
            v78[49] = v75;
            v68 += 24;
            v70 = v77;
            --v67;
          }

          while (v67);
          sub_1000B35D0(v85, type metadata accessor for MessagesPendingDownload);

          v54 = v84;
          goto LABEL_41;
        }
      }

      sub_1000B35D0(v85, type metadata accessor for MessagesPendingDownload);

LABEL_41:
      sub_100025F40(v54, &unk_1005D91B0, &unk_1004CF400);
      LOBYTE(v102) = v81;
      return v82;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000B0DA8(uint64_t result)
{
  v3 = v2;
  v31 = result;
  v4 = *v1;
  v36 = v1[3];
  v37 = v1[1];
  v5 = v1[4];
  v38 = v1[2];
  v30 = v1[5];
  v34 = v1[6];
  v57 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v4 + 64;
    v35 = *(v4 + 16);
    v29 = v6 - 1;
    v33 = _swiftEmptyArrayStorage;
    do
    {
      v32 = v3;
      v9 = (v8 + 40 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v7 = v10 + 1;
        v11 = *v9;
        v12 = *(v9 - 2);
        v13 = *(v9 - 1);
        v14 = *(v9 - 3);
        LODWORD(v43) = *(v9 - 8);
        v44 = v14;
        v45 = v12;
        v46 = v13;
        v47 = v11;
        sub_100014CEC(v14, v12);

        v37(&v39, &v43);
        sub_100014D40(v44, v45);

        v15 = v39;
        v16 = v40;
        v17 = v42;
        v18 = v41;
        v48 = v39;
        v49 = v40;
        v51 = v42;
        v50 = v41;
        result = v36(&v48);
        if (result)
        {
          break;
        }

        v9 += 40;
        ++v10;
        if (v35 == v7)
        {
          goto LABEL_18;
        }
      }

      v43 = v15;
      v44 = v16;
      LOWORD(v45) = v18;
      BYTE2(v45) = (v18 | (v17 << 16)) >> 16;
      v30(&v48, &v43);
      v19 = v48;
      v20 = v49;
      v21 = v50;
      v22 = HIBYTE(v50);
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v28 = v51;
      v55 = v51;
      result = v31(&v52);
      v3 = v32;
      if (v32)
      {
        sub_100025F40(&v57, &qword_1005CF358, &qword_1004D2640);

        goto LABEL_19;
      }

      if (result)
      {
        v23 = v33;
        result = swift_isUniquelyReferenced_nonNull_native();
        v56 = v33;
        if ((result & 1) == 0)
        {
          result = sub_100092048(0, v33[2] + 1, 1);
          v23 = v56;
        }

        v25 = v23[2];
        v24 = v23[3];
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          result = sub_100092048((v24 > 1), v25 + 1, 1);
          v26 = v25 + 1;
          v23 = v56;
        }

        v23[2] = v26;
        v33 = v23;
        v27 = &v23[3 * v25];
        *(v27 + 8) = v19;
        v27[5] = v20;
        *(v27 + 48) = v21;
        *(v27 + 49) = v22;
        *(v27 + 50) = v28;
        v3 = v32;
      }

      v8 = v4 + 64;
    }

    while (v29 != v10);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

LABEL_18:
  sub_100025F40(&v57, &qword_1005CF358, &qword_1004D2640);

LABEL_19:

  return v33;
}

Swift::Int sub_1000B10B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100141A8C(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (v14 >= *(v12 - 2))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = v12[33];
          result = v12[34];
          *v13 = *(v12 - 8);
          v18 = *(v12 + 1);
          *(v12 - 2) = v14;
          *v12 = v15;
          v12[8] = v16;
          v12[9] = v17;
          v12[10] = result;
          v12 -= 24;
          *(v13 + 2) = v18;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000C9C0(&qword_1005CF360, &qword_1004D2648);
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v20[0] = v7 + 4;
    v20[1] = v6;
    sub_1000B2124(v20, v21, v22, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_1000B1238(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100141AC4(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (v14 >= *(v12 - 2))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = v12[33];
          *v13 = *(v12 - 8);
          v18 = *(v12 + 1);
          *(v12 - 2) = v14;
          *v12 = v15;
          v12[8] = v16;
          v12[9] = v17;
          v12 -= 24;
          *(v13 + 2) = v18;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v20[0] = v7 + 4;
    v20[1] = v6;
    sub_1000B2710(v20, v21, v22, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}