uint64_t sub_10017A1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  __chkstk_darwin(v18);
  v20 = &v61 - v19;
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  v67 = type metadata accessor for UploadFlagChanges(0);
  if (*(a2 + *(v67 + 48)))
  {
    sub_10017EF90(a3, v17, type metadata accessor for MailboxTaskLogger);
    sub_10017EF90(a3, v14, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v24 = sub_1004A4A54();
    v25 = sub_1004A6034();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70 = v62;
      *v26 = 68159235;
      v63 = a2;
      v64 = v8;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = v66;
      v28 = *(v66 + 20);
      v65 = v11;
      v29 = &v14[v28];
      *(v26 + 10) = v14[v28];
      *(v26 + 11) = 2082;
      v30 = &v17[*(v27 + 20)];
      *(v26 + 13) = sub_10015BA6C(*(v30 + 1), *(v30 + 2), &v70);
      *(v26 + 21) = 1040;
      *(v26 + 23) = 2;
      *(v26 + 27) = 512;
      v31 = *(v29 + 12);
      sub_10017EFF8(v14, type metadata accessor for MailboxTaskLogger);
      *(v26 + 29) = v31;
      *(v26 + 31) = 2160;
      *(v26 + 33) = 0x786F626C69616DLL;
      *(v26 + 41) = 2085;
      v32 = *(v30 + 4);
      v33 = *(v30 + 10);
      v8 = v64;

      sub_10017EFF8(v17, type metadata accessor for MailboxTaskLogger);
      v68 = v32;
      v69 = v33;
      a2 = v63;
      v34 = sub_1004A5824();
      v36 = sub_10015BA6C(v34, v35, &v70);

      *(v26 + 43) = v36;
      v11 = v65;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more flag changes to upload. Will mark as needing to re-run.", v26, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10017EFF8(v14, type metadata accessor for MailboxTaskLogger);

      sub_10017EFF8(v17, type metadata accessor for MailboxTaskLogger);
    }

    sub_10013FC9C(7u);
    result = sub_100088568(&v68, 7);
  }

  else
  {
    sub_10017EF90(a3, v23, type metadata accessor for MailboxTaskLogger);
    sub_10017EF90(a3, v20, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v37 = sub_1004A4A54();
    v38 = sub_1004A6034();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70 = v62;
      *v39 = 68159235;
      v64 = v8;
      v65 = v11;
      *(v39 + 4) = 2;
      *(v39 + 8) = 256;
      v40 = v66;
      v41 = *(v66 + 20);
      v63 = a2;
      v42 = &v20[v41];
      *(v39 + 10) = v20[v41];
      *(v39 + 11) = 2082;
      v43 = a1;
      v44 = &v23[*(v40 + 20)];
      *(v39 + 13) = sub_10015BA6C(*(v44 + 1), *(v44 + 2), &v70);
      *(v39 + 21) = 1040;
      *(v39 + 23) = 2;
      *(v39 + 27) = 512;
      LOWORD(v42) = *(v42 + 12);
      sub_10017EFF8(v20, type metadata accessor for MailboxTaskLogger);
      *(v39 + 29) = v42;
      *(v39 + 31) = 2160;
      *(v39 + 33) = 0x786F626C69616DLL;
      *(v39 + 41) = 2085;
      v45 = *(v44 + 4);
      LODWORD(v42) = *(v44 + 10);
      a1 = v43;
      v8 = v64;

      sub_10017EFF8(v23, type metadata accessor for MailboxTaskLogger);
      v68 = v45;
      v69 = v42;
      a2 = v63;
      v46 = sub_1004A5824();
      v48 = sub_10015BA6C(v46, v47, &v70);

      *(v39 + 43) = v48;
      v11 = v65;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking no more flag changes pending upload.", v39, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10017EFF8(v20, type metadata accessor for MailboxTaskLogger);

      sub_10017EFF8(v23, type metadata accessor for MailboxTaskLogger);
    }

    result = type metadata accessor for MailboxSyncState();
    *(a1 + *(result + 52) + 1) = 0;
  }

  if (*(a2 + *(v67 + 52)) == 3)
  {
    sub_10017EF90(a3, v11, type metadata accessor for MailboxTaskLogger);
    sub_10017EF90(a3, v8, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v50 = sub_1004A4A54();
    v51 = sub_1004A6034();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v52 = 68159235;
      *(v52 + 4) = 2;
      *(v52 + 8) = 256;
      v53 = v66;
      v54 = &v8[*(v66 + 20)];
      *(v52 + 10) = *v54;
      *(v52 + 11) = 2082;
      v55 = v11;
      v56 = &v11[*(v53 + 20)];
      *(v52 + 13) = sub_10015BA6C(*(v56 + 1), *(v56 + 2), &v70);
      *(v52 + 21) = 1040;
      *(v52 + 23) = 2;
      *(v52 + 27) = 512;
      LOWORD(v54) = *(v54 + 12);
      sub_10017EFF8(v8, type metadata accessor for MailboxTaskLogger);
      *(v52 + 29) = v54;
      *(v52 + 31) = 2160;
      *(v52 + 33) = 0x786F626C69616DLL;
      *(v52 + 41) = 2085;
      v57 = *(v56 + 4);
      LODWORD(v56) = *(v56 + 10);

      sub_10017EFF8(v55, type metadata accessor for MailboxTaskLogger);
      v68 = v57;
      v69 = v56;
      v58 = sub_1004A5824();
      v60 = sub_10015BA6C(v58, v59, &v70);

      *(v52 + 43) = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking flag changes upload as “has dependencies”.", v52, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10017EFF8(v8, type metadata accessor for MailboxTaskLogger);

      sub_10017EFF8(v11, type metadata accessor for MailboxTaskLogger);
    }

    return sub_100088568(&v68, 7);
  }

  return result;
}

uint64_t sub_10017AA50()
{
  if (qword_1005CCEA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10017AAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_100177930(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  return result;
}

uint64_t sub_10017AB08(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(result + 192) == 1)
  {
    v5 = *(result + 176);
    v4 = *(result + 184);
    v9 = *(result + 168);
    v6 = v9;
    v7 = result;

    sub_1000BE940(&v9, v2, v3, 0, sub_10017E52C);
    result = sub_100020D58(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

uint64_t sub_10017ABDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = sub_10000C9C0(&qword_1005D27E8, &qword_1004DA4C8);
  v6 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v52 = (v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v51 = v43 - v9;
  v50 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v49 = *(v50 - 8);
  v10 = *(v49 + 64);
  __chkstk_darwin(v50);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v60 = sub_1001641A4(_swiftEmptyArrayStorage);
  sub_100095920(a2, &v59);
  sub_10017E534(a1, a2, &v60);
  sub_100095958(a2);
  sub_100095958(a2);
  v14 = v60;
  v15 = *(v60 + 16);
  if (v15)
  {
    v43[1] = a1;
    v44 = a3;
    v59 = _swiftEmptyArrayStorage;
    sub_1000921A8(0, v15, 0);
    v13 = v59;
    v16 = v14 + 64;
    v17 = -1 << *(v14 + 32);
    result = sub_1004A6554();
    v19 = result;
    v20 = 0;
    v57 = *(v14 + 36);
    v45 = v14 + 72;
    v46 = v15;
    v48 = v14 + 64;
    v47 = v14;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v14 + 32))
    {
      if ((*(v16 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_24;
      }

      if (v57 != *(v14 + 36))
      {
        goto LABEL_25;
      }

      v55 = 1 << v19;
      v56 = v19 >> 6;
      v54 = v20;
      v23 = v12;
      v24 = v53;
      v25 = *(v53 + 48);
      v26 = *(v14 + 48);
      v27 = *(v14 + 56);
      v28 = v27 + *(*(sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400) - 8) + 72) * v19;
      v58 = *(v26 + 16 * v19);
      v29 = v13;
      v30 = v51;
      sub_10000E268(v28, &v51[v25], &unk_1005D91B0, &unk_1004CF400);
      v31 = v52;
      *v52 = v58;
      v32 = *(v24 + 48);
      v12 = v23;
      v33 = &v30[v25];
      v13 = v29;
      sub_100025FDC(v33, v31 + v32, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v31 + v32, v23, &unk_1005D91B0, &unk_1004CF400);
      *(v23 + *(v50 + 20)) = v58;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_100025F40(v31, &qword_1005D27E8, &qword_1004DA4C8);
      v59 = v29;
      v35 = v29[2];
      v34 = v29[3];
      if (v35 >= v34 >> 1)
      {
        sub_1000921A8(v34 > 1, v35 + 1, 1);
        v13 = v59;
      }

      v13[2] = v35 + 1;
      result = sub_10017F180(v23, v13 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v35, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v14 = v47;
      v21 = 1 << *(v47 + 32);
      v16 = v48;
      if (v19 >= v21)
      {
        goto LABEL_26;
      }

      v36 = *(v48 + 8 * v56);
      if ((v36 & v55) == 0)
      {
        goto LABEL_27;
      }

      if (v57 != *(v47 + 36))
      {
        goto LABEL_28;
      }

      v37 = v36 & (-2 << (v19 & 0x3F));
      if (v37)
      {
        v21 = __clz(__rbit64(v37)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v22 = v46;
      }

      else
      {
        v38 = v56 << 6;
        v39 = v56 + 1;
        v40 = (v45 + 8 * v56);
        v22 = v46;
        while (v39 < (v21 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            result = sub_100020944(v19, v57, 0);
            v21 = __clz(__rbit64(v41)) + v38;
            goto LABEL_4;
          }
        }

        result = sub_100020944(v19, v57, 0);
      }

LABEL_4:
      v20 = v54 + 1;
      v19 = v21;
      if (v54 + 1 == v22)
      {

        a3 = v44;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_22:
    sub_100176908(v13, a3);
  }

  return result;
}

uint64_t sub_10017B0F8()
{
  v1 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for UploadFlagChanges.EncodedFlags(0) + 20));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = &v5[*(v1 + 20)];
    v10 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    while (1)
    {
      result = sub_10017EF90(v10, v5, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v13 = *(*v9 + 16) != 0;
      v14 = __OFADD__(v8, v13);
      v15 = v8 + v13;
      if (v14)
      {
        break;
      }

      v16 = *(*(v9 + 1) + 16) != 0;
      v8 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_10;
      }

      sub_10017EFF8(v5, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
    return 0;
  }

  return result;
}

uint64_t sub_10017B264@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v93 = a1;
  v83 = a2;
  v85 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v97 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = &v82 - v7;
  v8 = sub_10000C9C0(&qword_1005D2500, &qword_1004DA328);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v82 - v13;
  v15 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v90 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = &v82 - v19;
  v21 = __chkstk_darwin(v20);
  v23 = &v82 - v22;
  v86 = v24;
  v87 = v14 + 8;
  v94 = (v24 + 48);
  v95 = (v24 + 56);
  v21.n128_u64[0] = 68159491;
  v84 = v21;
  v89 = &v82 - v22;
  v91 = v11;
  for (i = v14; ; v14 = i)
  {
    sub_10000E268(v3, v11, &qword_1005D2500, &qword_1004DA328);
    if ((*v94)(v11, 1, v15) == 1)
    {
      sub_100025F40(v11, &qword_1005D2500, &qword_1004DA328);
      result = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
      v26 = (v3 + *(result + 24));
      v28 = v26[2];
      v27 = v26[3];
      if (v28 == v27 >> 1)
      {
        (*v95)(v14, 1, 1, v15);
        sub_100025F40(v14, &qword_1005D2500, &qword_1004DA328);
        v71 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
        v72 = *(*(v71 - 8) + 56);
        v73 = v83;
        v74 = 1;
        return v72(v73, v74, 1, v71);
      }

      if (v28 >= (v27 >> 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v29 = v26[1];
      v30 = v86;
      sub_10017EF90(v29 + *(v86 + 72) * v28, v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v26[1] = v29;
      v26[2] = v28 + 1;
      v26[3] = v27;
      v31 = *(v30 + 56);
      v31(v14, 0, 1, v15);
    }

    else
    {
      v32 = v88;
      sub_10017F180(v11, v88, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_100025F40(v3, &qword_1005D2500, &qword_1004DA328);
      v31 = *v95;
      (*v95)(v3, 1, 1, v15);
      sub_10017F180(v32, v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v33 = *(v15 + 20);
      v34 = v87;
      v35 = *&v87[v33];

      *&v34[v33] = _swiftEmptySetSingleton;
      v31(v14, 0, 1, v15);
    }

    sub_10017F180(v14, v23, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v36 = &v23[*(v15 + 20)];
    v38 = *v36;
    v37 = v36[1];
    v39 = *(*v36 + 16);
    v40 = *(v37 + 16);
    if (v39)
    {
      if (v40)
      {
        sub_100025F40(v3, &qword_1005D2500, &qword_1004DA328);
        sub_10017EF90(v23, v3, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v31(v3, 0, 1, v15);
        v60 = v23;
        v61 = v83;
        sub_10000E268(v60, v83, &unk_1005D91B0, &unk_1004CF400);
        v62 = *(v37 + 16);
        if (v62)
        {
          v63 = sub_100135390(*(v37 + 16), 0);
          v64 = sub_100139548(&v99, v63 + 4, v62, v37);

          result = sub_100020D08();
          if (v64 != v62)
          {
            goto LABEL_28;
          }

          v61 = v83;
        }

        else
        {
          v63 = _swiftEmptyArrayStorage;
        }

        v80 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
        v81 = v61 + *(v80 + 48);
        sub_10017EFF8(v89, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        *v81 = 257;
        *(v81 + 8) = v63;
        v72 = *(*(v80 - 8) + 56);
        v73 = v61;
        v74 = 0;
        v71 = v80;
      }

      else
      {
        v75 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
        v96 = *(v75 + 48);
        v97 = v75;
        v76 = v23;
        v67 = v83;
        sub_10000E268(v76, v83, &unk_1005D91B0, &unk_1004CF400);
        v77 = sub_100135390(v39, 0);
        v78 = sub_100139548(&v99, v77 + 4, v39, v38);

        result = sub_100020D08();
        if (v78 != v39)
        {
          goto LABEL_29;
        }

        v79 = v67 + v96;
        sub_10017EFF8(v89, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        *v79 = 256;
        *(v79 + 8) = v77;
LABEL_23:
        v71 = v97;
        v72 = *(*(v97 - 8) + 56);
        v73 = v67;
        v74 = 0;
      }

      return v72(v73, v74, 1, v71);
    }

    if (v40)
    {
      break;
    }

    v41 = v93;
    v42 = v96;
    sub_10017EF90(v93, v96, type metadata accessor for MailboxTaskLogger);
    v43 = v97;
    sub_10017EF90(v41, v97, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v44 = v90;
    sub_10017EF90(v23, v90, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v45 = sub_1004A4A54();
    v46 = sub_1004A6034();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v47 = v84.n128_u32[0];
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      v48 = v85;
      v49 = v97 + *(v85 + 20);
      *(v47 + 10) = *v49;
      *(v47 + 11) = 2082;
      v50 = v96 + *(v48 + 20);
      *(v47 + 13) = sub_10015BA6C(*(v50 + 8), *(v50 + 16), &v98);
      *(v47 + 21) = 1040;
      *(v47 + 23) = 2;
      *(v47 + 27) = 512;
      LOWORD(v49) = *(v49 + 24);
      sub_10017EFF8(v97, type metadata accessor for MailboxTaskLogger);
      *(v47 + 29) = v49;
      *(v47 + 31) = 2160;
      *(v47 + 33) = 0x786F626C69616DLL;
      *(v47 + 41) = 2085;
      v51 = *(v50 + 32);
      LODWORD(v50) = *(v50 + 40);

      sub_10017EFF8(v96, type metadata accessor for MailboxTaskLogger);
      v99 = v51;
      LODWORD(v100) = v50;
      v23 = v89;
      v52 = sub_1004A5824();
      v54 = sub_10015BA6C(v52, v53, &v98);

      *(v47 + 43) = v54;
      *(v47 + 51) = 2080;
      v55 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v56 = MessageIdentifierSet.debugDescription.getter(v55);
      v58 = v57;
      sub_10017EFF8(v44, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v59 = sub_10015BA6C(v56, v58, &v98);

      *(v47 + 53) = v59;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No flag changes for messages %s", v47, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_10017EFF8(v43, type metadata accessor for MailboxTaskLogger);

      sub_10017EFF8(v44, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_10017EFF8(v42, type metadata accessor for MailboxTaskLogger);
    }

    sub_10017EFF8(v23, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v11 = v91;
  }

  v65 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
  v96 = *(v65 + 48);
  v97 = v65;
  v66 = v23;
  v67 = v83;
  sub_10000E268(v66, v83, &unk_1005D91B0, &unk_1004CF400);
  v68 = sub_100135390(v40, 0);
  v69 = sub_100139548(&v99, v68 + 4, v40, v37);

  result = sub_100020D08();
  if (v69 == v40)
  {
    v70 = v67 + v96;
    sub_10017EFF8(v89, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    *v70 = 257;
    *(v70 + 8) = v68;
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10017BD28(int *a1, uint64_t a2, void *a3)
{
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = *a1;
  v10 = *(a1 + 13);
  v11 = *(a1 + 21);
  v12 = 256;
  if ((*(a1 + 5) & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x10000;
  if ((*(a1 + 6) & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x1000000;
  if ((*(a1 + 7) & 1) == 0)
  {
    v14 = 0;
  }

  v15 = &_mh_execute_header;
  if ((a1[2] & 1) == 0)
  {
    v15 = 0;
  }

  v16 = 0x10000000000;
  if ((*(a1 + 9) & 1) == 0)
  {
    v16 = 0;
  }

  v17 = a1[1] & 1 | (*(a1 + 10) << 48) | v12 | v13 | v14 | v15 | v16 | (*(a1 + 11) << 56);
  v47[0] = a1[3] & 1;
  *&v47[1] = v10;
  v47[9] = v11;
  v18 = FlagEncoder.encode(_:)(v17, *v47, *&v47[8]);
  v20 = v19;
  v21 = Flag.deleted.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];

  v24 = sub_100011C2C(v22, v23, v18);

  if (v24)
  {
    sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004CEAA0;
    v26 = v21[1];
    *(inited + 32) = *v21;
    LOBYTE(v21) = inited + 32;
    *(inited + 40) = v26;

    v27 = sub_1000933B0(inited);
    swift_setDeallocating();
    sub_100093590(inited + 32);

    v28 = _swiftEmptySetSingleton;
    v18 = v27;
  }

  else
  {

    v28 = v20;
  }

  v48 = v9;
  v29 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v47 = *a3;
  v31 = *v47;
  *a3 = 0x8000000000000000;
  v33 = sub_100063F7C(v18, v28);
  v34 = *(v31 + 16);
  v35 = (v32 & 1) == 0;
  v36 = v34 + v35;
  if (__OFADD__(v34, v35))
  {
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v21) = v32;
  if (*(v31 + 24) >= v36)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

LABEL_24:
    sub_10013CBFC();
    goto LABEL_19;
  }

  sub_1000C8C10(v36, isUniquelyReferenced_nonNull_native);
  v37 = sub_100063F7C(v18, v28);
  if ((v21 & 1) != (v38 & 1))
  {
    result = sub_1004A6E24();
    __break(1u);
    return result;
  }

  v33 = v37;
LABEL_19:
  v39 = v46;
  v40 = *a3;
  *a3 = *v47;

  v41 = *a3;
  if (v21)
  {
  }

  else
  {
    sub_100016D2C();
    sub_1004A7114();
    sub_10001C990(v33, v18, v28, v8, v41);
  }

  v42 = v41[7] + *(v45 + 72) * v33;
  return MessageIdentifierSet.insert(_:)(v47, &v48, v39);
}

void sub_10017C094(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1004A6CC4(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
        v6 = sub_1004A5C64();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10017C530(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10017C1C0(0, v2, 1, a1);
  }
}

void sub_10017C1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v47 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v8 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v39 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v44 = -v18;
    v45 = v17;
    v20 = a1 - a3;
    v38 = v18;
    v21 = v17 + v18 * a3;
    v48 = &v37 - v15;
LABEL_6:
    v42 = v19;
    v43 = a3;
    v40 = v21;
    v41 = v20;
    v22 = v19;
    while (1)
    {
      sub_10017EF90(v21, v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_10017EF90(v22, v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v23 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v24 = MessageIdentifierSet.startIndex.getter(v23);
      v26 = v25;
      v28 = v24 == MessageIdentifierSet.endIndex.getter(v23) && v26 == v27;
      v29 = v28;
      if (v28)
      {
        v49 = 0;
      }

      else
      {
        MessageIdentifierSet.subscript.getter(v26, v23, &v51);
        v49 = v51;
      }

      v30 = MessageIdentifierSet.startIndex.getter(v23);
      v32 = v31;
      if (v30 == MessageIdentifierSet.endIndex.getter(v23) && v32 == v33)
      {
        sub_10017EFF8(v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v16 = v48;
        sub_10017EFF8(v48, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
LABEL_5:
        a3 = v43 + 1;
        v19 = v42 + v38;
        v20 = v41 - 1;
        v21 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return;
        }

        goto LABEL_6;
      }

      MessageIdentifierSet.subscript.getter(v32, v23, &v50);
      if (v29)
      {
        sub_10017EFF8(v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v16 = v48;
        sub_10017EFF8(v48, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      }

      else
      {
        v34 = v50;
        sub_10017EFF8(v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v16 = v48;
        sub_10017EFF8(v48, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        if (v49 >= v34)
        {
          goto LABEL_5;
        }
      }

      if (!v45)
      {
        break;
      }

      v35 = v46;
      sub_10017F180(v21, v46, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      swift_arrayInitWithTakeFrontToBack();
      sub_10017F180(v35, v22, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v22 += v44;
      v21 += v44;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_10017C530(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v140 = a1;
  v156 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v149 = *(v156 - 8);
  v8 = *(v149 + 64);
  __chkstk_darwin(v156);
  v143 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v155 = &v135 - v11;
  __chkstk_darwin(v12);
  v158 = &v135 - v13;
  __chkstk_darwin(v14);
  v16 = &v135 - v15;
  __chkstk_darwin(v17);
  v19 = &v135 - v18;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v150 = a3;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_131:
    a3 = *v140;
    if (!*v140)
    {
      goto LABEL_171;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_133;
    }

    goto LABEL_165;
  }

  v137 = &v135 - v23;
  v138 = v25;
  v151 = v24;
  v136 = a4;
  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  v157 = v16;
  while (1)
  {
    v29 = v27;
    if (v27 + 1 >= v26)
    {
      v41 = v27 + 1;
    }

    else
    {
      v152 = v26;
      v30 = *v150;
      v31 = *(v149 + 72);
      v32 = *v150 + v31 * (v27 + 1);
      v33 = v137;
      sub_10017EF90(v32, v137, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v154 = v30;
      v34 = v30 + v31 * v27;
      v35 = v138;
      sub_10017EF90(v34, v138, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      LODWORD(v148) = sub_100176A78();
      if (v5)
      {
        sub_10017EFF8(v35, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        sub_10017EFF8(v33, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
LABEL_143:

        return;
      }

      sub_10017EFF8(v35, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_10017EFF8(v33, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v139 = v27;
      v36 = v27 + 2;
      a3 = v154 + v31 * (v27 + 2);
      v37 = v31;
      v153 = v31;
      v146 = v28;
      v147 = 0;
      while (1)
      {
        v41 = v152;
        if (v152 == v36)
        {
          break;
        }

        sub_10017EF90(a3, v151, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v42 = v19;
        sub_10017EF90(v32, v19, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v43 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
        v44 = MessageIdentifierSet.startIndex.getter(v43);
        v46 = v45;
        v48 = v44 == MessageIdentifierSet.endIndex.getter(v43) && v46 == v47;
        v49 = v48;
        LODWORD(v154) = v49;
        if (v48)
        {
          v50 = 0;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v46, v43, v159);
          v50 = v159[0];
        }

        v51 = MessageIdentifierSet.startIndex.getter(v43);
        v53 = v52;
        v55 = v51 == MessageIdentifierSet.endIndex.getter(v43) && v53 == v54;
        v56 = !v55;
        if (v55)
        {
          v38 = 0;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v53, v43, v159);
          v38 = v159[0];
        }

        if (v50 < v38)
        {
          v39 = v56;
        }

        else
        {
          v39 = 0;
        }

        if (v154)
        {
          v40 = v56;
        }

        else
        {
          v40 = v39;
        }

        sub_10017EFF8(v42, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        sub_10017EFF8(v151, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        ++v36;
        v37 = v153;
        a3 += v153;
        v32 += v153;
        v28 = v146;
        v5 = v147;
        v19 = v42;
        if ((v148 ^ v40))
        {
          v41 = v36 - 1;
          break;
        }
      }

      v16 = v157;
      v29 = v139;
      if (v148)
      {
        if (v41 < v139)
        {
          goto LABEL_164;
        }

        if (v139 < v41)
        {
          v135 = v19;
          v57 = v37 * (v41 - 1);
          v58 = v41 * v37;
          v152 = v41;
          v59 = v139;
          v60 = v139 * v37;
          do
          {
            if (v59 != --v41)
            {
              v61 = *v150;
              if (!*v150)
              {
                goto LABEL_168;
              }

              a3 = v61 + v60;
              sub_10017F180(v61 + v60, v143, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
              if (v60 < v57 || a3 >= v61 + v58)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v60 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10017F180(v143, v61 + v57, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
              v37 = v153;
            }

            ++v59;
            v57 -= v37;
            v58 -= v37;
            v60 += v37;
          }

          while (v59 < v41);
          v16 = v157;
          v19 = v135;
          v29 = v139;
          v41 = v152;
        }
      }
    }

    v62 = v150[1];
    if (v41 < v62)
    {
      if (__OFSUB__(v41, v29))
      {
        goto LABEL_161;
      }

      if (v41 - v29 < v136)
      {
        break;
      }
    }

LABEL_80:
    if (v41 < v29)
    {
      goto LABEL_160;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_100085288(0, *(v28 + 2) + 1, 1, v28);
    }

    a3 = *(v28 + 2);
    v86 = *(v28 + 3);
    v87 = a3 + 1;
    if (a3 >= v86 >> 1)
    {
      v28 = sub_100085288((v86 > 1), a3 + 1, 1, v28);
    }

    *(v28 + 2) = v87;
    v88 = &v28[16 * a3];
    *(v88 + 4) = v29;
    *(v88 + 5) = v41;
    v27 = v41;
    v89 = *v140;
    if (!*v140)
    {
      goto LABEL_170;
    }

    if (a3)
    {
      while (1)
      {
        v90 = v87 - 1;
        if (v87 >= 4)
        {
          break;
        }

        if (v87 == 3)
        {
          v91 = *(v28 + 4);
          v92 = *(v28 + 5);
          v101 = __OFSUB__(v92, v91);
          v93 = v92 - v91;
          v94 = v101;
LABEL_100:
          if (v94)
          {
            goto LABEL_149;
          }

          v107 = &v28[16 * v87];
          v109 = *v107;
          v108 = *(v107 + 1);
          v110 = __OFSUB__(v108, v109);
          v111 = v108 - v109;
          v112 = v110;
          if (v110)
          {
            goto LABEL_152;
          }

          v113 = &v28[16 * v90 + 32];
          v115 = *v113;
          v114 = *(v113 + 1);
          v101 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v101)
          {
            goto LABEL_155;
          }

          if (__OFADD__(v111, v116))
          {
            goto LABEL_156;
          }

          if (v111 + v116 >= v93)
          {
            if (v93 < v116)
            {
              v90 = v87 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        v117 = &v28[16 * v87];
        v119 = *v117;
        v118 = *(v117 + 1);
        v101 = __OFSUB__(v118, v119);
        v111 = v118 - v119;
        v112 = v101;
LABEL_114:
        if (v112)
        {
          goto LABEL_151;
        }

        v120 = &v28[16 * v90];
        v122 = *(v120 + 4);
        v121 = *(v120 + 5);
        v101 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v101)
        {
          goto LABEL_154;
        }

        if (v123 < v111)
        {
          goto LABEL_3;
        }

LABEL_121:
        a3 = v90 - 1;
        if (v90 - 1 >= v87)
        {
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (!*v150)
        {
          goto LABEL_167;
        }

        v128 = *&v28[16 * a3 + 32];
        v129 = *&v28[16 * v90 + 40];
        sub_10017D120(*v150 + *(v149 + 72) * v128, *v150 + *(v149 + 72) * *&v28[16 * v90 + 32], *v150 + *(v149 + 72) * v129, v89);
        if (v5)
        {
          goto LABEL_143;
        }

        if (v129 < v128)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_100141810(v28);
        }

        if (a3 >= *(v28 + 2))
        {
          goto LABEL_146;
        }

        v130 = &v28[16 * a3];
        *(v130 + 4) = v128;
        *(v130 + 5) = v129;
        v160 = v28;
        sub_100141784(v90);
        v28 = v160;
        v87 = *(v160 + 2);
        v16 = v157;
        if (v87 <= 1)
        {
          goto LABEL_3;
        }
      }

      v95 = &v28[16 * v87 + 32];
      v96 = *(v95 - 64);
      v97 = *(v95 - 56);
      v101 = __OFSUB__(v97, v96);
      v98 = v97 - v96;
      if (v101)
      {
        goto LABEL_147;
      }

      v100 = *(v95 - 48);
      v99 = *(v95 - 40);
      v101 = __OFSUB__(v99, v100);
      v93 = v99 - v100;
      v94 = v101;
      if (v101)
      {
        goto LABEL_148;
      }

      v102 = &v28[16 * v87];
      v104 = *v102;
      v103 = *(v102 + 1);
      v101 = __OFSUB__(v103, v104);
      v105 = v103 - v104;
      if (v101)
      {
        goto LABEL_150;
      }

      v101 = __OFADD__(v93, v105);
      v106 = v93 + v105;
      if (v101)
      {
        goto LABEL_153;
      }

      if (v106 >= v98)
      {
        v124 = &v28[16 * v90 + 32];
        v126 = *v124;
        v125 = *(v124 + 1);
        v101 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v101)
        {
          goto LABEL_157;
        }

        if (v93 < v127)
        {
          v90 = v87 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_100;
    }

LABEL_3:
    v26 = v150[1];
    if (v27 >= v26)
    {
      goto LABEL_131;
    }
  }

  if (__OFADD__(v29, v136))
  {
    goto LABEL_162;
  }

  if (v29 + v136 < v62)
  {
    v62 = v29 + v136;
  }

  if (v62 < v29)
  {
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v28 = sub_100141810(v28);
LABEL_133:
    v160 = v28;
    v131 = *(v28 + 2);
    if (v131 >= 2)
    {
      while (*v150)
      {
        v132 = *&v28[16 * v131];
        v133 = *&v28[16 * v131 + 24];
        sub_10017D120(*v150 + *(v149 + 72) * v132, *v150 + *(v149 + 72) * *&v28[16 * v131 + 16], *v150 + *(v149 + 72) * v133, a3);
        if (v5)
        {
          goto LABEL_143;
        }

        if (v133 < v132)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_100141810(v28);
        }

        if (v131 - 2 >= *(v28 + 2))
        {
          goto LABEL_159;
        }

        v134 = &v28[16 * v131];
        *v134 = v132;
        *(v134 + 1) = v133;
        v160 = v28;
        sub_100141784(v131 - 1);
        v28 = v160;
        v131 = *(v160 + 2);
        if (v131 <= 1)
        {
          goto LABEL_143;
        }
      }

      goto LABEL_169;
    }

    goto LABEL_143;
  }

  v142 = v62;
  if (v41 == v62)
  {
    goto LABEL_80;
  }

  v135 = v19;
  v146 = v28;
  v147 = v5;
  v63 = *v150;
  v64 = *(v149 + 72);
  v65 = *v150 + v64 * (v41 - 1);
  v153 = -v64;
  v154 = v63;
  v139 = v29;
  v66 = v29 - v41;
  v141 = v64;
  v67 = v63 + v41 * v64;
  v68 = v158;
LABEL_60:
  v152 = v41;
  v144 = v67;
  v145 = v66;
  v148 = v65;
  v69 = v65;
  while (1)
  {
    sub_10017EF90(v67, v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    sub_10017EF90(v69, v68, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v70 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v71 = MessageIdentifierSet.startIndex.getter(v70);
    v73 = v72;
    v75 = v71 == MessageIdentifierSet.endIndex.getter(v70) && v73 == v74;
    v76 = v75;
    if (v75)
    {
      v77 = 0;
    }

    else
    {
      MessageIdentifierSet.subscript.getter(v73, v70, v159);
      v77 = v159[0];
    }

    v78 = MessageIdentifierSet.startIndex.getter(v70);
    v80 = v79;
    if (v78 == MessageIdentifierSet.endIndex.getter(v70) && v80 == v81)
    {
      a3 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element;
      v68 = v158;
      sub_10017EFF8(v158, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v16 = v157;
      sub_10017EFF8(v157, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
LABEL_59:
      v41 = v152 + 1;
      v65 = v148 + v141;
      v66 = v145 - 1;
      v67 = v144 + v141;
      if (v152 + 1 == v142)
      {
        v28 = v146;
        v5 = v147;
        v19 = v135;
        v29 = v139;
        v41 = v142;
        goto LABEL_80;
      }

      goto LABEL_60;
    }

    v82 = v80;
    v68 = v158;
    MessageIdentifierSet.subscript.getter(v82, v70, v159);
    if (v76)
    {
      sub_10017EFF8(v68, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v16 = v157;
      sub_10017EFF8(v157, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    }

    else
    {
      v83 = v159[0];
      a3 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element;
      sub_10017EFF8(v68, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v16 = v157;
      sub_10017EFF8(v157, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      if (v77 >= v83)
      {
        goto LABEL_59;
      }
    }

    if (!v154)
    {
      break;
    }

    a3 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element;
    v84 = v155;
    sub_10017F180(v67, v155, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    swift_arrayInitWithTakeFrontToBack();
    sub_10017F180(v84, v69, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v69 += v153;
    v67 += v153;
    if (__CFADD__(v66++, 1))
    {
      goto LABEL_59;
    }
  }

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
}

void sub_10017D120(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v8 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v69 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v67 - v11;
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_99;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_100;
  }

  v21 = (a2 - a1) / v19;
  v80 = a1;
  v79 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v24 = v69;
    }

    else
    {
      v24 = v69;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    if (v23 < 1)
    {
      v44 = a4 + v23;
    }

    else
    {
      v41 = -v19;
      v42 = a4 + v23;
      v43 = v72;
      v44 = a4 + v23;
      v75 = a4;
      v71 = -v19;
      do
      {
        v67 = v44;
        v45 = a2;
        a2 += v41;
        v76 = a2;
        v70 = v45;
        while (1)
        {
          if (v45 <= a1)
          {
            v80 = v45;
            v78 = v67;
            goto LABEL_97;
          }

          v46 = a3;
          v68 = v44;
          v74 = v42 + v41;
          sub_10017EF90(v42 + v41, v43, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_10017EF90(a2, v24, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          v47 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
          v48 = MessageIdentifierSet.startIndex.getter(v47);
          v50 = v49;
          v52 = v48 == MessageIdentifierSet.endIndex.getter(v47) && v50 == v51;
          v53 = v52;
          if (v52)
          {
            v54 = 0;
          }

          else
          {
            MessageIdentifierSet.subscript.getter(v50, v47, &v78);
            v54 = v78;
          }

          v55 = v69;
          v56 = MessageIdentifierSet.startIndex.getter(v47);
          v58 = v57;
          v60 = v56 == MessageIdentifierSet.endIndex.getter(v47) && v58 == v59;
          v61 = !v60;
          if (v60)
          {
            v62 = 0;
          }

          else
          {
            MessageIdentifierSet.subscript.getter(v58, v47, &v78);
            v62 = v78;
          }

          a2 = v76;
          v24 = v55;
          v63 = v54 < v62 && v61;
          v64 = v53 ? v61 : v63;
          a3 = v46 + v71;
          sub_10017EFF8(v55, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_10017EFF8(v72, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          if (v64)
          {
            break;
          }

          v44 = v74;
          v65 = v75;
          if (v46 < v42 || a3 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v43 = v72;
          }

          else
          {
            v43 = v72;
            if (v46 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v42 = v44;
          v45 = v70;
          v41 = v71;
          if (v74 <= v65)
          {
            a2 = v70;
            goto LABEL_96;
          }
        }

        v66 = v75;
        if (v46 < v70 || a3 >= v70)
        {
          swift_arrayInitWithTakeFrontToBack();
          v43 = v72;
          v44 = v68;
        }

        else
        {
          v43 = v72;
          v44 = v68;
          if (v46 != v70)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v41 = v71;
      }

      while (v42 > v66);
    }

LABEL_96:
    v80 = a2;
    v78 = v44;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v74 = a4 + v22;
    v78 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v70 = a3;
      v71 = v19;
      do
      {
        v76 = a2;
        sub_10017EF90(a2, v17, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v75 = a4;
        sub_10017EF90(a4, v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v26 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
        v27 = MessageIdentifierSet.startIndex.getter(v26);
        v29 = v28;
        v31 = v27 == MessageIdentifierSet.endIndex.getter(v26) && v29 == v30;
        v32 = v31;
        if (v31)
        {
          v33 = 0;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v29, v26, &v77);
          v33 = v77;
        }

        v34 = MessageIdentifierSet.startIndex.getter(v26);
        v36 = v35;
        if (v34 == MessageIdentifierSet.endIndex.getter(v26) && v36 == v37)
        {
          sub_10017EFF8(v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_10017EFF8(v17, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          v38 = v71;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v36, v26, &v77);
          if (v32)
          {
            sub_10017EFF8(v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
            sub_10017EFF8(v17, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
            v38 = v71;
LABEL_42:
            a4 = v75;
            a2 = v76 + v38;
            v39 = v70;
            if (a1 < v76 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v76)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_47;
          }

          v40 = v77;
          sub_10017EFF8(v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_10017EFF8(v17, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          v38 = v71;
          if (v33 < v40)
          {
            goto LABEL_42;
          }
        }

        a2 = v76;
        a4 = v75 + v38;
        v39 = v70;
        if (a1 < v75 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
          v79 = a4;
          goto LABEL_47;
        }

        v79 = a4;
LABEL_47:
        a1 += v38;
        v80 = a1;
      }

      while (a4 < v74 && a2 < v39);
    }
  }

LABEL_97:
  sub_10017D910(&v80, &v79, &v78);
}

uint64_t sub_10017D820(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10017D910(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_10017DA34()
{
  sub_10017DAA8();
  if (v0 <= 0x3F)
  {
    sub_10017DAF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10017DAA8()
{
  if (!qword_1005D24C0)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D24C0);
    }
  }
}

void sub_10017DAF8()
{
  if (!qword_1005D24C8)
  {
    type metadata accessor for UploadFlagChanges.EncodedFlags(255);
    sub_10000DEFC(&unk_1005D24D0, &qword_1004DA320);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D24C8);
    }
  }
}

void sub_10017DBE4()
{
  sub_10017DCF4(319, &qword_1005D2570, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10017DCF4(319, &qword_1005D2578, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_10017DCF4(319, &unk_1005D2580, &type metadata accessor for ArraySlice);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10017DCF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10017DD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_10000C9C0(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10017DE64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = sub_10000C9C0(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10017DF20()
{
  sub_100057614(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10017DFE0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

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

void *sub_10017E124(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

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

void sub_10017E254()
{
  sub_100057614(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UploadFlagChanges.FlagsToUpload(319);
    if (v1 <= 0x3F)
    {
      sub_100057614(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10017E3B0()
{
  result = qword_1005D26F8;
  if (!qword_1005D26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D26F8);
  }

  return result;
}

unint64_t sub_10017E404()
{
  result = qword_1005D2700;
  if (!qword_1005D2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2700);
  }

  return result;
}

unint64_t sub_10017E458()
{
  result = qword_1005D2708;
  if (!qword_1005D2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2708);
  }

  return result;
}

unint64_t sub_10017E4AC(uint64_t a1)
{
  result = sub_10017E4D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10017E4D4()
{
  result = qword_1005D27C0;
  if (!qword_1005D27C0)
  {
    type metadata accessor for UploadFlagChanges(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D27C0);
  }

  return result;
}

uint64_t sub_10017E534(uint64_t result, uint64_t a2, void *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; i += 2)
    {
      v8 = i[1];
      v14[0] = *i;
      v14[1] = v8;
      v9 = i[1];
      v12 = *i;
      v13 = v9;
      sub_10017F058(v14, &v10);
      sub_10017BD28(&v12, a2, a3);
      if (v3)
      {
        break;
      }

      v10 = v12;
      v11 = v13;
      result = sub_10017F0B4(&v10);
      if (!--v4)
      {
        return result;
      }
    }

    v10 = v12;
    v11 = v13;
    return sub_10017F0B4(&v10);
  }

  return result;
}

uint64_t sub_10017E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UntaggedResponse(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100058284(0, a2, a3, a4) & 1) != 0 || (result = sub_100058284(1, a2, a3, a4), (result))
  {
    sub_10017EF90(a1, v11, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      memcpy(v18, v11, sizeof(v18));
      if (v18[64])
      {
        if (BYTE4(v18[1]) != 1)
        {
          v16 = v18[1];
          v13 = *(type metadata accessor for UploadFlagChanges(0) + 40);
          v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
          MessageIdentifierSet.remove(_:)(&v16, v14, &v17);
        }
      }

      return sub_100025D5C(v18);
    }

    else
    {
      return sub_10017EFF8(v11, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

void sub_10017E77C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a5;
  v70 = type metadata accessor for MailboxTaskLogger(0);
  v10 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  __chkstk_darwin(v16);
  v18 = &v67 - v17;
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  v22 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v29 == 16)
  {
    if (v5[1] == *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
    {
      v45 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v46 = *v5;
      v47 = *(*v5 + 16);
      if (v47 == *(v45 + 16))
      {
        v48 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v49 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        if (!v47 || v46 == v45)
        {
LABEL_12:
          if (sub_10007102C(1, a2, a3, a4))
          {
            if ((v49 & 1) == 0)
            {
              *(v5 + *(type metadata accessor for UploadFlagChanges(0) + 48)) = 1;
            }

            v69 = v5;
            v52 = v71;
            sub_10017EF90(v71, v15, type metadata accessor for MailboxTaskLogger);
            sub_10017EF90(v52, v12, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            swift_bridgeObjectRetain_n();
            v53 = sub_1004A4A54();
            v54 = sub_1004A6034();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              *v55 = 68159491;
              *(v55 + 4) = 2;
              *(v55 + 8) = 256;
              v56 = v70;
              v57 = &v12[*(v70 + 20)];
              *(v55 + 10) = *v57;
              *(v55 + 11) = 2082;
              v58 = &v15[*(v56 + 20)];
              *(v55 + 13) = sub_10015BA6C(*(v58 + 1), *(v58 + 2), &v74);
              *(v55 + 21) = 1040;
              *(v55 + 23) = 2;
              *(v55 + 27) = 512;
              LOWORD(v57) = *(v57 + 12);
              sub_10017EFF8(v12, type metadata accessor for MailboxTaskLogger);
              *(v55 + 29) = v57;
              *(v55 + 31) = 2160;
              *(v55 + 33) = 0x786F626C69616DLL;
              *(v55 + 41) = 2085;
              v59 = *(v58 + 4);
              LODWORD(v58) = *(v58 + 10);

              sub_10017EFF8(v15, type metadata accessor for MailboxTaskLogger);
              v72 = v59;
              v73 = v58;
              v60 = sub_1004A5824();
              v62 = sub_10015BA6C(v60, v61, &v74);

              *(v55 + 43) = v62;
              *(v55 + 51) = 2048;
              v63 = *(v48 + 16);

              *(v55 + 53) = v63;

              _os_log_impl(&_mh_execute_header, v53, v54, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received local flag changes for %ld messages.", v55, 0x3Du);
              swift_arrayDestroy();
            }

            else
            {

              sub_10017EFF8(v12, type metadata accessor for MailboxTaskLogger);

              sub_10017EFF8(v15, type metadata accessor for MailboxTaskLogger);
            }

            sub_1001798F8(v48, v71);
          }

          else
          {
            *(v5 + *(type metadata accessor for UploadFlagChanges(0) + 48)) = 1;
          }
        }

        else
        {
          v50 = (v46 + 32);
          v51 = (v45 + 32);
          while (*v50 == *v51)
          {
            ++v50;
            ++v51;
            if (!--v47)
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  else if (v29 == 17)
  {
    v67 = v27;
    v69 = v5;
    v30 = &v67 - v28;
    v31 = sub_10000C9C0(&qword_1005D22E8, &unk_1004DA480);
    v32 = swift_projectBox();
    sub_10000E268(v32 + *(v31 + 48), v30, &unk_1005D91B0, &unk_1004CF400);
    v33 = v71;
    sub_10017EF90(v71, v21, type metadata accessor for MailboxTaskLogger);
    sub_10017EF90(v33, v18, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v68 = v30;
    sub_10000E268(v30, v25, &unk_1005D91B0, &unk_1004CF400);
    v34 = sub_1004A4A54();
    v35 = sub_1004A6034();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v74 = v71;
      *v36 = 68159491;
      *(v36 + 4) = 2;
      *(v36 + 8) = 256;
      v37 = v70;
      v38 = &v18[*(v70 + 20)];
      *(v36 + 10) = *v38;
      *(v36 + 11) = 2082;
      v39 = &v21[*(v37 + 20)];
      *(v36 + 13) = sub_10015BA6C(*(v39 + 1), *(v39 + 2), &v74);
      *(v36 + 21) = 1040;
      *(v36 + 23) = 2;
      *(v36 + 27) = 512;
      LOWORD(v38) = *(v38 + 12);
      sub_10017EFF8(v18, type metadata accessor for MailboxTaskLogger);
      *(v36 + 29) = v38;
      *(v36 + 31) = 2160;
      *(v36 + 33) = 0x786F626C69616DLL;
      *(v36 + 41) = 2085;
      v40 = *(v39 + 4);
      LODWORD(v38) = *(v39 + 10);

      sub_10017EFF8(v21, type metadata accessor for MailboxTaskLogger);
      v72 = v40;
      v73 = v38;
      v41 = sub_1004A5824();
      v43 = sub_10015BA6C(v41, v42, &v74);

      *(v36 + 43) = v43;
      *(v36 + 51) = 2048;
      v44 = MessageIdentifierSet.count.getter();
      sub_100025F40(v25, &unk_1005D91B0, &unk_1004CF400);
      *(v36 + 53) = v44;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld messages have flag changes after copy", v36, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100025F40(v25, &unk_1005D91B0, &unk_1004CF400);
      sub_10017EFF8(v18, type metadata accessor for MailboxTaskLogger);

      sub_10017EFF8(v21, type metadata accessor for MailboxTaskLogger);
    }

    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v64 = v68;
    v65 = sub_1004A70C4();
    sub_100025F40(v64, &unk_1005D91B0, &unk_1004CF400);
    if (v65)
    {
      v66 = 2;
    }

    else
    {
      v66 = 3;
    }

    *(v69 + *(type metadata accessor for UploadFlagChanges(0) + 52)) = v66;
  }
}

uint64_t sub_10017EF90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10017EFF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10017F108()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10017F140()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10017F180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for DownloadRequest.QoS(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DownloadRequest.QoS(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10017F358()
{
  result = qword_1005D27F0;
  if (!qword_1005D27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D27F0);
  }

  return result;
}

uint64_t sub_10017F3AC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  if (v2 == v3)
  {
    *a1 = xmmword_1004D25F0;
  }

  else if (v2 < v3)
  {
    v4 = *(v1[1] + 16 * v2);
    *a1 = v4;
    v1[2] = v2 + 1;
    return sub_100014CEC(v4, *(&v4 + 1));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10017F3F4(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 11)
  {
    return v4 >> 60 == 11;
  }

  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (((v4 >> 60) | 4) == 0xF)
  {
    return 0;
  }

  return sub_10003A194(*a1, v3, *a2, v4);
}

uint64_t sub_10017F45C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 & 0x3000000000000000;
  v9 = (v5 >> 60) & 3;
  if (!v9)
  {
    if (!v8)
    {
      return sub_10003A194(v4, v5, v6, v7);
    }

    return 0;
  }

  if (v9 == 1)
  {
    if (v8 == 0x1000000000000000)
    {
      v5 &= 0xCFFFFFFFFFFFFFFFLL;
      v7 &= 0xCFFFFFFFFFFFFFFFLL;
      return sub_10003A194(v4, v5, v6, v7);
    }

    return 0;
  }

  return v8 == 0x2000000000000000 && v6 == 0 && v7 == 0x2000000000000000;
}

Swift::Int sub_10017F4C8()
{
  result = sub_100093190(&off_1005992D8);
  qword_1005DDFA0 = result;
  return result;
}

uint64_t sub_10017F4F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  v12 = v4 == 2 && v3 == 1;
  if (v2)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (*(a1 + 8) == 1)
  {
    v13 = v8;
  }

  if (*(a1 + 8))
  {
    return v13;
  }

  else
  {
    return v6;
  }
}

void sub_10017F5B8(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  sub_100016B98(a1, v20 - v7, type metadata accessor for MailboxTaskLogger);
  sub_100016B98(a1, v5, type metadata accessor for MailboxTaskLogger);
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
    v22 = swift_slowAlloc();
    *v11 = 68159235;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v12 = &v5[*(v2 + 20)];
    *(v11 + 10) = *v12;
    *(v11 + 11) = 2082;
    v13 = &v8[*(v2 + 20)];
    *(v11 + 13) = sub_10015BA6C(*(v13 + 1), *(v13 + 2), &v22);
    *(v11 + 21) = 1040;
    *(v11 + 23) = 2;
    *(v11 + 27) = 512;
    v14 = *(v12 + 12);
    sub_100184CB0(v5, type metadata accessor for MailboxTaskLogger);
    *(v11 + 29) = v14;
    *(v11 + 31) = 2160;
    *(v11 + 33) = 0x786F626C69616DLL;
    *(v11 + 41) = 2085;
    v15 = *(v13 + 4);
    v16 = *(v13 + 10);

    sub_100184CB0(v8, type metadata accessor for MailboxTaskLogger);
    v20[1] = v15;
    v21 = v16;
    v17 = sub_1004A5824();
    v19 = sub_10015BA6C(v17, v18, &v22);

    *(v11 + 43) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v11, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100184CB0(v5, type metadata accessor for MailboxTaskLogger);

    sub_100184CB0(v8, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_10017F88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v98 = a4;
  v99 = a5;
  v100 = a6;
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v96 = &v89 - v12;
  v95 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v94 = *(v95 - 8);
  v13 = *(v94 + 64);
  __chkstk_darwin(v95);
  v91 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v90 = &v89 - v16;
  v97 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v17 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v92 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v89 - v20;
  __chkstk_darwin(v22);
  v93 = &v89 - v23;
  v24 = sub_10000C9C0(&qword_1005D28E0, &qword_1004DA6E0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v89 - v26;
  v28 = type metadata accessor for UploadMessages.PendingUpload(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v6;
  if (*(v6 + 120) == 2 && !*(v6 + 112))
  {
    if ((sub_100112234(0, 0xF000000000000000, a2, a3) & 1) == 0)
    {
      v46 = sub_10000C9C0(&qword_1005D2AA0, &qword_1004DAA58);
      v47 = v100;
      v48 = v100 + *(v46 + 48);
      *v100 = xmmword_1004D25F0;
      v49 = *(v33 + 32);
      *v48 = *(v33 + 24);
      *(v48 + 2) = v49;
      *(v48 + 2) = &off_100599530;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v46 - 8) + 56))(v47, 0, 1, v46);
    }

    if ((sub_10001A004(0, 0xF000000000000000, a1, a2, a3) & 1) == 0)
    {
LABEL_6:
      v34 = sub_10000C9C0(&qword_1005D2AA0, &qword_1004DAA58);
      v35 = *(*(v34 - 8) + 56);
      v36 = v34;
      v37 = v100;

      return v35(v37, 1, 1, v36);
    }
  }

  if (sub_1000716B8(1, a1, a2, a3))
  {
    goto LABEL_6;
  }

  v89 = type metadata accessor for UploadMessages(0);
  v39 = *(v89 + 52);
  sub_10000E268(v33 + v39, v27, &qword_1005D28E0, &qword_1004DA6E0);
  if ((*(v29 + 48))(v27, 1, v28) != 1)
  {
    sub_100184DA4(v27, v32);
    sub_100025F40(v33 + v39, &qword_1005D28E0, &qword_1004DA6E0);
    (*(v29 + 56))(v33 + v39, 1, 1, v28);
    v50 = *(v99 + 88);
    v51 = *(v99 + 120);
    v103[4] = *(v99 + 104);
    v103[5] = v51;
    v104 = *(v99 + 136);
    v52 = *(v99 + 56);
    v103[0] = *(v99 + 40);
    v103[1] = v52;
    v103[2] = *(v99 + 72);
    v103[3] = v50;
    v53 = 256;
    if ((v32[17] & 1) == 0)
    {
      v53 = 0;
    }

    v54 = 0x10000;
    if ((v32[18] & 1) == 0)
    {
      v54 = 0;
    }

    v55 = 0x1000000;
    if ((v32[19] & 1) == 0)
    {
      v55 = 0;
    }

    v56 = &_mh_execute_header;
    if ((v32[20] & 1) == 0)
    {
      v56 = 0;
    }

    v57 = 0x10000000000;
    if ((v32[21] & 1) == 0)
    {
      v57 = 0;
    }

    v58 = v32[16] & 1 | (v32[22] << 48) | v53 | v54 | v55 | v56 | v57 | (v32[23] << 56);
    v101[0] = v32[24] & 1;
    *&v101[1] = 2;
    v102 = 0;
    v59 = FlagEncoder.encode(_:)(v58, *v101, 0);

    v60 = *v32;
    v61 = *(v32 + 1);
    v62 = (v33 + *(v89 + 56));
    v63 = *v62;
    v64 = v62[1];
    sub_100014CEC(*v32, v61);
    sub_1000CBB68(v63, v64);
    *v62 = v60;
    v62[1] = v61;
    v65 = sub_10000C9C0(&qword_1005D2AA0, &qword_1004DAA58);
    v66 = v100;
    v67 = v100 + *(v65 + 48);
    *v100 = *v32;
    v68 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
    v69 = *(v68 + 64);
    v70 = *(v68 + 80);
    v71 = *(v33 + 32);
    *v67 = *(v33 + 24);
    *(v67 + 2) = v71;
    *(v67 + 2) = v59;
    sub_100025FDC(&v32[*(v28 + 24)], &v67[v69], &qword_1005D0F20, &qword_1004E9390);
    *&v67[v70] = *&v32[*(v28 + 28)];
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v65 - 8) + 56))(v66, 0, 1, v65);
  }

  v40 = v89;
  sub_100025F40(v27, &qword_1005D28E0, &qword_1004DA6E0);
  if (sub_100180340(a1, a2, a3, v98) & 1) == 0 || (sub_100112234(0, 0xB000000000000000, a2, a3))
  {
LABEL_38:
    v80 = sub_10000C9C0(&qword_1005D2AA0, &qword_1004DAA58);
    return (*(*(v80 - 8) + 56))(v100, 1, 1, v80);
  }

  v41 = *(v33 + *(v40 + 68));
  sub_100016D2C();
  result = sub_1004A7114();
  v42 = *(v41 + 16);
  v43 = v97;
  if (!v42)
  {
LABEL_33:
    v72 = v93;
    sub_100025FDC(v21, v93, &unk_1005D91B0, &unk_1004CF400);
    v73 = v92;
    sub_10000E268(v72, v92, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v73, &unk_1005D91B0, &unk_1004CF400);
      v77 = 1;
      v76 = v96;
    }

    else
    {
      v74 = v91;
      sub_100025FDC(v73, v91, &unk_1005D91B0, &unk_1004CF400);
      v75 = v74;
      v76 = v96;
      sub_100025FDC(v75, v96, &qword_1005CD1D0, &unk_1004CF2C0);
      v77 = 0;
    }

    v78 = v94;
    v79 = v95;
    (*(v94 + 56))(v76, v77, 1, v95);
    if ((*(v78 + 48))(v76, 1, v79) != 1)
    {
      v81 = v90;
      sub_100025FDC(v76, v90, &qword_1005CD1D0, &unk_1004CF2C0);
      v82 = &off_1005987A0;
      v83 = &off_1005988A8;
      if (*(v33 + 105))
      {
        v82 = &off_100598810;
        v83 = &off_100598940;
      }

      if (*(v33 + 104))
      {
        v84 = v82;
      }

      else
      {
        v84 = v83;
      }

      sub_100025F40(v72, &unk_1005D91B0, &unk_1004CF400);
      v85 = sub_10000C9C0(&qword_1005D2AA0, &qword_1004DAA58);
      v86 = v100;
      v87 = v100 + *(v85 + 48);
      *v100 = xmmword_1004DA570;
      v88 = v87 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      sub_100025FDC(v81, v87, &unk_1005D91B0, &unk_1004CF400);
      *v88 = v84;
      *(v88 + 8) = 0;
      *(v88 + 16) = 1;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v85 - 8) + 56))(v86, 0, 1, v85);
    }

    sub_100025F40(v72, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v76, &qword_1005CD518, &qword_1004CF2F0);
    goto LABEL_38;
  }

  v44 = 0;
  v45 = (v41 + 57);
  while (v44 < *(v41 + 16))
  {
    if ((*v45 & 1) == 0 && (*(v45 - 1) & 1) == 0)
    {
      *v101 = HIDWORD(*(v45 - 9));
      result = MessageIdentifierSet.insert(_:)(v103, v101, v43);
    }

    ++v44;
    v45 += 32;
    if (v42 == v44)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100180340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10009A990(0, 0x2000000000000000, a1, a2, a4);
  if ((result & 1) == 0)
  {
    return 0;
  }

  v8 = *(v4 + 128);
  v9 = (v8 + 40);
  v10 = -*(v8 + 16);
  v11 = -1;
  while (v10 + v11 != -1)
  {
    if (++v11 >= *(v8 + 16))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v12 = v9 + 2;
    v14 = *(v9 - 1);
    v13 = *v9;
    sub_100014CEC(v14, *v9);
    v15 = sub_10001A004(v14, v13, a1, a2, a3);
    result = sub_100014D40(v14, v13);
    v9 = v12;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  result = type metadata accessor for UploadMessages(0);
  v17 = *(v4 + *(result + 68));
  v18 = (v17 + 40);
  v19 = -*(v17 + 16);
  v20 = -1;
  do
  {
    v16 = v19 + v20 == -1;
    if (v19 + v20 == -1)
    {
      break;
    }

    if (++v20 >= *(v17 + 16))
    {
      goto LABEL_14;
    }

    v21 = v18 + 4;
    v23 = *(v18 - 1);
    v22 = *v18;
    sub_100014CEC(v23, *v18);
    v24 = sub_10009A990(v23, v22, a1, a2, a4);
    result = sub_100014D40(v23, v22);
    v18 = v21;
  }

  while ((v24 & 1) != 0);
  return v16;
}

void sub_1001804B4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v191 = a8;
  v189 = a6;
  v187 = a4;
  v188 = a5;
  v190 = a3;
  v10 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v176 - v12;
  v14 = type metadata accessor for MailboxTaskLogger(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v23 = &v176 - v22;
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v27 = &v176 - v26;
  __chkstk_darwin(v28);
  v30 = &v176 - v29;
  __chkstk_darwin(v31);
  v33 = &v176 - v32;
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  v37 = &v176 - v36;
  __chkstk_darwin(v38);
  v46 = &v176 - v42;
  if (a2 >> 60 == 11)
  {
    return;
  }

  if (a2 >> 60 == 15)
  {
    if (*(v8 + 120) == 2 && !*(v8 + 112))
    {
      v47 = v39;
      v186 = v8;
      v48 = v191;
      sub_100016B98(v191, &v176 - v42, type metadata accessor for MailboxTaskLogger);
      sub_100016B98(v48, v37, type metadata accessor for MailboxTaskLogger);
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
        v194 = swift_slowAlloc();
        *v51 = 68159235;
        *(v51 + 4) = 2;
        *(v51 + 8) = 256;
        v52 = v47;
        v53 = &v37[*(v47 + 20)];
        *(v51 + 10) = *v53;
        *(v51 + 11) = 2082;
        v54 = &v46[*(v52 + 20)];
        *(v51 + 13) = sub_10015BA6C(*(v54 + 1), *(v54 + 2), &v194);
        *(v51 + 21) = 1040;
        *(v51 + 23) = 2;
        *(v51 + 27) = 512;
        LOWORD(v53) = *(v53 + 12);
        sub_100184CB0(v37, type metadata accessor for MailboxTaskLogger);
        *(v51 + 29) = v53;
        *(v51 + 31) = 2160;
        *(v51 + 33) = 0x786F626C69616DLL;
        *(v51 + 41) = 2085;
        v55 = *(v54 + 4);
        v56 = *(v54 + 10);

        sub_100184CB0(v46, type metadata accessor for MailboxTaskLogger);
        v192 = v55;
        v193 = v56;
        v57 = sub_1004A5824();
        v59 = sub_10015BA6C(v57, v58, &v194);

        *(v51 + 43) = v59;
        _os_log_impl(&_mh_execute_header, v49, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server supports mailbox specific APPENDLIMIT, but did not return its value.", v51, 0x33u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100184CB0(v37, type metadata accessor for MailboxTaskLogger);

        sub_100184CB0(v46, type metadata accessor for MailboxTaskLogger);
      }

      v83 = v186;
      *(v186 + 112) = 1;
      *(v83 + 120) = 2;
    }

    return;
  }

  v183 = v40;
  v184 = v39;
  v179 = v33;
  v180 = v43;
  v181 = v41;
  v182 = v44;
  v60 = v45;
  v185 = type metadata accessor for UploadMessages(0);
  v61 = v185[14];
  v62 = *(v8 + v61);
  v63 = *(v8 + v61 + 8);
  if (v63 >> 60 == 15)
  {
    return;
  }

  *(v8 + v61) = xmmword_1004D25F0;
  v176 = v62;
  v64 = v62;
  sub_100014CEC(v62, v63);
  v177 = v64;
  v178 = v63;
  sub_1000CBB68(v64, v63);
  v186 = v8;
  if (!v189)
  {
    if ((~v190 & 0xF000000000000007) != 0 && ((v190 >> 59) & 0x1E | (v190 >> 2) & 1) == 7)
    {
      v84 = type metadata accessor for ResponseCodeAppend();
      v85 = swift_projectBox();
      v86 = *v85;
      sub_10000E268(v85 + *(v84 + 20), v13, &qword_1005CD1D0, &unk_1004CF2C0);
      v87 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v88 = MessageIdentifierSet.startIndex.getter(v87);
      v90 = v89;
      if (v88 == MessageIdentifierSet.endIndex.getter(v87) && v90 == v91)
      {
        sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
        __break(1u);
        return;
      }

      MessageIdentifierSet.subscript.getter(v90, v87, &v192);
      v92 = v192;
      sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
      v93 = v191;
      v94 = v180;
      sub_100016B98(v191, v180, type metadata accessor for MailboxTaskLogger);
      v95 = v179;
      sub_100016B98(v93, v179, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v96 = sub_1004A4A54();
      v97 = sub_1004A6034();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *v98 = 68159491;
        v190 = v92;
        v191 = v86;
        *(v98 + 4) = 2;
        *(v98 + 8) = 256;
        v99 = v184;
        v100 = v95 + *(v184 + 20);
        *(v98 + 10) = *v100;
        *(v98 + 11) = 2082;
        v101 = v94 + *(v99 + 20);
        *(v98 + 13) = sub_10015BA6C(*(v101 + 8), *(v101 + 16), &v194);
        *(v98 + 21) = 1040;
        *(v98 + 23) = 2;
        *(v98 + 27) = 512;
        LOWORD(v100) = *(v100 + 24);
        sub_100184CB0(v95, type metadata accessor for MailboxTaskLogger);
        *(v98 + 29) = v100;
        *(v98 + 31) = 2160;
        *(v98 + 33) = 0x786F626C69616DLL;
        *(v98 + 41) = 2085;
        v102 = *(v101 + 32);
        LODWORD(v101) = *(v101 + 40);

        sub_100184CB0(v94, type metadata accessor for MailboxTaskLogger);
        v192 = v102;
        v193 = v101;
        v103 = sub_1004A5824();
        v105 = sub_10015BA6C(v103, v104, &v194);
        v86 = v191;

        *(v98 + 43) = v105;
        v92 = v190;
        *(v98 + 51) = 1024;
        *(v98 + 53) = v92;
        _os_log_impl(&_mh_execute_header, v96, v97, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND succeeded with UID %u.", v98, 0x39u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100184CB0(v95, type metadata accessor for MailboxTaskLogger);

        sub_100184CB0(v94, type metadata accessor for MailboxTaskLogger);
      }

      v145 = v186;
      v146 = v185[17];
      v147 = *(v186 + v146);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = sub_100087114(0, *(v147 + 2) + 1, 1, v147);
      }

      v170 = *(v147 + 2);
      v169 = *(v147 + 3);
      if (v170 >= v169 >> 1)
      {
        v147 = sub_100087114((v169 > 1), v170 + 1, 1, v147);
      }

      *(v147 + 2) = v170 + 1;
      v171 = &v147[32 * v170];
      v172 = v178;
      *(v171 + 4) = v177;
      *(v171 + 5) = v172;
      *(v171 + 6) = v86 | (v92 << 32);
      *(v171 + 28) = 0;
      goto LABEL_47;
    }

    v122 = v191;
    sub_100016B98(v191, v30, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(v122, v27, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v123 = sub_1004A4A54();
    v124 = sub_1004A6034();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *v125 = 68159235;
      *(v125 + 4) = 2;
      *(v125 + 8) = 256;
      v126 = v184;
      v127 = &v27[*(v184 + 20)];
      *(v125 + 10) = *v127;
      *(v125 + 11) = 2082;
      v128 = &v30[*(v126 + 20)];
      *(v125 + 13) = sub_10015BA6C(*(v128 + 1), *(v128 + 2), &v194);
      *(v125 + 21) = 1040;
      *(v125 + 23) = 2;
      *(v125 + 27) = 512;
      LOWORD(v127) = *(v127 + 12);
      sub_100184CB0(v27, type metadata accessor for MailboxTaskLogger);
      *(v125 + 29) = v127;
      *(v125 + 31) = 2160;
      *(v125 + 33) = 0x786F626C69616DLL;
      *(v125 + 41) = 2085;
      v129 = *(v128 + 4);
      LODWORD(v128) = *(v128 + 10);

      sub_100184CB0(v30, type metadata accessor for MailboxTaskLogger);
      v192 = v129;
      v193 = v128;
      v130 = sub_1004A5824();
      v132 = sub_10015BA6C(v130, v131, &v194);

      *(v125 + 43) = v132;
      _os_log_impl(&_mh_execute_header, v123, v124, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND succeeded without UIDValidity.", v125, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100184CB0(v27, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v30, type metadata accessor for MailboxTaskLogger);
    }

    v145 = v186;
    v146 = v185[17];
    v147 = *(v186 + v146);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v147 = sub_100087114(0, *(v147 + 2) + 1, 1, v147);
    }

    v161 = *(v147 + 2);
    v160 = *(v147 + 3);
    if (v161 >= v160 >> 1)
    {
      v147 = sub_100087114((v160 > 1), v161 + 1, 1, v147);
    }

    *(v147 + 2) = v161 + 1;
    v151 = &v147[32 * v161];
    v162 = v178;
    *(v151 + 4) = v177;
    *(v151 + 5) = v162;
    *(v151 + 6) = 0;
    v152 = 1;
LABEL_46:
    *(v151 + 28) = v152;
LABEL_47:
    *(v145 + v146) = v147;
    return;
  }

  if (v189 != 1)
  {
    v106 = v191;
    sub_100016B98(v191, v60, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(v106, v17, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v107 = v190;
    sub_1000110B0(v190);

    v108 = sub_1004A4A54();
    v109 = sub_1004A6034();
    sub_10001114C(v107);

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v194 = v191;
      *v110 = 68159491;
      *(v110 + 4) = 2;
      *(v110 + 8) = 256;
      v111 = v184;
      v112 = &v17[*(v184 + 20)];
      *(v110 + 10) = *v112;
      *(v110 + 11) = 2082;
      v113 = v60 + *(v111 + 20);
      *(v110 + 13) = sub_10015BA6C(*(v113 + 8), *(v113 + 16), &v194);
      *(v110 + 21) = 1040;
      *(v110 + 23) = 2;
      *(v110 + 27) = 512;
      LOWORD(v112) = *(v112 + 12);
      sub_100184CB0(v17, type metadata accessor for MailboxTaskLogger);
      *(v110 + 29) = v112;
      *(v110 + 31) = 2160;
      *(v110 + 33) = 0x786F626C69616DLL;
      *(v110 + 41) = 2085;
      v114 = *(v113 + 32);
      v115 = *(v113 + 40);

      sub_100184CB0(v60, type metadata accessor for MailboxTaskLogger);
      v192 = v114;
      v193 = v115;
      v116 = sub_1004A5824();
      v118 = sub_10015BA6C(v116, v117, &v194);

      *(v110 + 43) = v118;
      *(v110 + 51) = 2082;
      v119 = ResponseText.debugDescription.getter(v107, v187, v188);
      v121 = sub_10015BA6C(v119, v120, &v194);

      *(v110 + 53) = v121;
      _os_log_impl(&_mh_execute_header, v108, v109, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed: %{public}s", v110, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100184CB0(v17, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v60, type metadata accessor for MailboxTaskLogger);
    }

    v145 = v186;
    v146 = v185[17];
    v147 = *(v186 + v146);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v147 = sub_100087114(0, *(v147 + 2) + 1, 1, v147);
    }

    v148 = v176;
    v150 = *(v147 + 2);
    v149 = *(v147 + 3);
    if (v150 >= v149 >> 1)
    {
      v173 = sub_100087114((v149 > 1), v150 + 1, 1, v147);
      v148 = v176;
      v147 = v173;
    }

    *(v147 + 2) = v150 + 1;
    v151 = &v147[32 * v150];
    *(v151 + 2) = v148;
    *(v151 + 6) = 0;
    v152 = 256;
    goto LABEL_46;
  }

  v65 = v190;
  if ((~v190 & 0xF000000000000007) != 0 && v190 == 0x800000000000002CLL)
  {
    v133 = v191;
    v134 = v181;
    sub_100016B98(v191, v181, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(v133, v23, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v135 = sub_1004A4A54();
    v136 = sub_1004A6034();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *v137 = 68159235;
      *(v137 + 4) = 2;
      *(v137 + 8) = 256;
      v138 = v184;
      v139 = &v23[*(v184 + 20)];
      *(v137 + 10) = *v139;
      *(v137 + 11) = 2082;
      v140 = v134 + *(v138 + 20);
      *(v137 + 13) = sub_10015BA6C(*(v140 + 8), *(v140 + 16), &v194);
      *(v137 + 21) = 1040;
      *(v137 + 23) = 2;
      *(v137 + 27) = 512;
      LOWORD(v139) = *(v139 + 12);
      sub_100184CB0(v23, type metadata accessor for MailboxTaskLogger);
      *(v137 + 29) = v139;
      *(v137 + 31) = 2160;
      *(v137 + 33) = 0x786F626C69616DLL;
      *(v137 + 41) = 2085;
      v141 = *(v140 + 32);
      LODWORD(v139) = *(v140 + 40);

      sub_100184CB0(v134, type metadata accessor for MailboxTaskLogger);
      v192 = v141;
      v193 = v139;
      v142 = sub_1004A5824();
      v144 = sub_10015BA6C(v142, v143, &v194);

      *(v137 + 43) = v144;
      _os_log_impl(&_mh_execute_header, v135, v136, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed with “No, try create”.", v137, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100184CB0(v23, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v134, type metadata accessor for MailboxTaskLogger);
    }

    v163 = v186;
    v164 = v185[16];
    v165 = *(v186 + v164);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v165 = sub_100086B4C(0, *(v165 + 2) + 1, 1, v165);
    }

    v166 = v176;
    v168 = *(v165 + 2);
    v167 = *(v165 + 3);
    if (v168 >= v167 >> 1)
    {
      v175 = sub_100086B4C((v167 > 1), v168 + 1, 1, v165);
      v166 = v176;
      v165 = v175;
    }

    *(v165 + 2) = v168 + 1;
    *&v165[16 * v168 + 32] = v166;
    *(v163 + v164) = v165;
  }

  else
  {
    v66 = v191;
    v67 = v182;
    sub_100016B98(v191, v182, type metadata accessor for MailboxTaskLogger);
    v68 = v183;
    sub_100016B98(v66, v183, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000110B0(v65);

    v69 = sub_1004A4A54();
    v70 = sub_1004A6034();
    sub_10001114C(v65);

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *v71 = 68159491;
      *(v71 + 4) = 2;
      *(v71 + 8) = 256;
      v72 = v184;
      v73 = v68 + *(v184 + 20);
      *(v71 + 10) = *v73;
      *(v71 + 11) = 2082;
      v74 = v67;
      v75 = v67 + *(v72 + 20);
      *(v71 + 13) = sub_10015BA6C(*(v75 + 8), *(v75 + 16), &v194);
      *(v71 + 21) = 1040;
      *(v71 + 23) = 2;
      *(v71 + 27) = 512;
      LOWORD(v73) = *(v73 + 24);
      sub_100184CB0(v68, type metadata accessor for MailboxTaskLogger);
      *(v71 + 29) = v73;
      *(v71 + 31) = 2160;
      *(v71 + 33) = 0x786F626C69616DLL;
      *(v71 + 41) = 2085;
      v76 = *(v75 + 32);
      LODWORD(v75) = *(v75 + 40);

      sub_100184CB0(v74, type metadata accessor for MailboxTaskLogger);
      v192 = v76;
      v193 = v75;
      v77 = sub_1004A5824();
      v79 = sub_10015BA6C(v77, v78, &v194);

      *(v71 + 43) = v79;
      *(v71 + 51) = 2082;
      v80 = ResponseText.debugDescription.getter(v190, v187, v188);
      v82 = sub_10015BA6C(v80, v81, &v194);

      *(v71 + 53) = v82;
      _os_log_impl(&_mh_execute_header, v69, v70, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed: %{public}s", v71, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100184CB0(v68, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v67, type metadata accessor for MailboxTaskLogger);
    }

    v153 = v186;
    v154 = v185[17];
    v155 = *(v186 + v154);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v155 = sub_100087114(0, *(v155 + 2) + 1, 1, v155);
    }

    v156 = v178;
    v158 = *(v155 + 2);
    v157 = *(v155 + 3);
    if (v158 >= v157 >> 1)
    {
      v174 = sub_100087114((v157 > 1), v158 + 1, 1, v155);
      v156 = v178;
      v155 = v174;
    }

    *(v155 + 2) = v158 + 1;
    v159 = &v155[32 * v158];
    *(v159 + 4) = v177;
    *(v159 + 5) = v156;
    *(v159 + 6) = 0;
    *(v159 + 28) = 256;
    *(v153 + v154) = v155;
  }
}

void sub_100181970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v89 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v88 = &v81[-v9];
  __chkstk_darwin(v10);
  v12 = &v81[-v11];
  __chkstk_darwin(v13);
  v15 = &v81[-v14];
  __chkstk_darwin(v16);
  v18 = &v81[-v17];
  __chkstk_darwin(v19);
  v21 = &v81[-v20];
  v22 = type metadata accessor for UploadMessages(0);
  v23 = *(a2 + *(v22 + 64));

  sub_10009333C(v24);
  v25 = a2;

  v86 = a3;
  v87 = v22;
  if (*(a2 + *(v22 + 72)) == 1)
  {
    sub_100016B98(a3, v21, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(a3, v18, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v26 = sub_1004A4A54();
    v27 = sub_1004A6034();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v28 = 68159235;
      *(v28 + 4) = 2;
      *(v28 + 8) = 256;
      v29 = v85;
      v30 = *(v85 + 20);
      v84 = a1;
      v31 = &v18[v30];
      *(v28 + 10) = v18[v30];
      *(v28 + 11) = 2082;
      v32 = &v21[*(v29 + 20)];
      *(v28 + 13) = sub_10015BA6C(*(v32 + 1), *(v32 + 2), &v92);
      *(v28 + 21) = 1040;
      *(v28 + 23) = 2;
      *(v28 + 27) = 512;
      LOWORD(v31) = *(v31 + 12);
      sub_100184CB0(v18, type metadata accessor for MailboxTaskLogger);
      *(v28 + 29) = v31;
      *(v28 + 31) = 2160;
      *(v28 + 33) = 0x786F626C69616DLL;
      *(v28 + 41) = 2085;
      v33 = *(v32 + 4);
      LODWORD(v31) = *(v32 + 10);
      v25 = a2;

      sub_100184CB0(v21, type metadata accessor for MailboxTaskLogger);
      v90 = v33;
      v91 = v31;
      a1 = v84;
      v34 = sub_1004A5824();
      v36 = sub_10015BA6C(v34, v35, &v92);

      *(v28 + 43) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more messages to upload. Will mark as needing to re-run.", v28, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100184CB0(v18, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v21, type metadata accessor for MailboxTaskLogger);
    }

    sub_10013FC9C(6u);
    sub_100088568(&v90, 6);
    v38 = v87;
  }

  else
  {
    v37 = *(type metadata accessor for MailboxSyncState() + 52);
    v38 = v87;
    if (*(a1 + v37) == 1)
    {
      v39 = v86;
      sub_100016B98(v86, v15, type metadata accessor for MailboxTaskLogger);
      sub_100016B98(v39, v12, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v40 = sub_1004A4A54();
      v41 = sub_1004A6034();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v92 = v83;
        *v42 = 68159235;
        v82 = v41;
        *(v42 + 4) = 2;
        *(v42 + 8) = 256;
        v43 = v85;
        v44 = *(v85 + 20);
        v84 = v25;
        v45 = a1;
        v46 = &v12[v44];
        *(v42 + 10) = v12[v44];
        *(v42 + 11) = 2082;
        v47 = &v15[*(v43 + 20)];
        *(v42 + 13) = sub_10015BA6C(*(v47 + 1), *(v47 + 2), &v92);
        *(v42 + 21) = 1040;
        *(v42 + 23) = 2;
        *(v42 + 27) = 512;
        LOWORD(v46) = *(v46 + 12);
        sub_100184CB0(v12, type metadata accessor for MailboxTaskLogger);
        *(v42 + 29) = v46;
        a1 = v45;
        *(v42 + 31) = 2160;
        *(v42 + 33) = 0x786F626C69616DLL;
        *(v42 + 41) = 2085;
        v48 = *(v47 + 4);
        LODWORD(v47) = *(v47 + 10);

        sub_100184CB0(v15, type metadata accessor for MailboxTaskLogger);
        v90 = v48;
        v91 = v47;
        v49 = sub_1004A5824();
        v51 = sub_10015BA6C(v49, v50, &v92);

        *(v42 + 43) = v51;
        v25 = v84;
        _os_log_impl(&_mh_execute_header, v40, v82, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing all messages pending upload.", v42, 0x33u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100184CB0(v12, type metadata accessor for MailboxTaskLogger);

        sub_100184CB0(v15, type metadata accessor for MailboxTaskLogger);
      }

      *(a1 + v37) = 0;
    }
  }

  v52 = 0;
  v53 = 0;
  v54 = *(v25 + *(v38 + 68));
  v55 = *(v54 + 16);
  v56 = v54 + 57;
LABEL_12:
  v57 = (v56 + 32 * v52);
  while (v55 != v52)
  {
    if (v52 >= v55)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    v58 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_33;
    }

    v59 = *v57;
    v57 += 32;
    ++v52;
    if ((v59 & 1) == 0)
    {
      v52 = v58;
      if (!__OFADD__(v53++, 1))
      {
        goto LABEL_12;
      }

      __break(1u);
      break;
    }
  }

  if (v53 >= 1)
  {
    v61 = v86;
    sub_100016B98(v86, v88, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(v61, v89, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v62 = sub_1004A4A54();
    v63 = sub_1004A6034();
    if (!os_log_type_enabled(v62, v63))
    {
      sub_100184CB0(v89, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v88, type metadata accessor for MailboxTaskLogger);
      v77 = *(v25 + 120);
      if (!*(v25 + 120))
      {
        return;
      }

      goto LABEL_26;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = v88;
    v67 = v89;
    v87 = v65;
    v92 = v65;
    *v64 = 68159491;
    *(v64 + 4) = 2;
    *(v64 + 8) = 256;
    v68 = v85;
    v69 = *(v85 + 20);
    v84 = a1;
    v70 = &v67[v69];
    *(v64 + 10) = v67[v69];
    *(v64 + 11) = 2082;
    v71 = &v66[*(v68 + 20)];
    *(v64 + 13) = sub_10015BA6C(*(v71 + 1), *(v71 + 2), &v92);
    *(v64 + 21) = 1040;
    *(v64 + 23) = 2;
    *(v64 + 27) = 512;
    LOWORD(v70) = *(v70 + 12);
    sub_100184CB0(v67, type metadata accessor for MailboxTaskLogger);
    *(v64 + 29) = v70;
    *(v64 + 31) = 2160;
    *(v64 + 33) = 0x786F626C69616DLL;
    *(v64 + 41) = 2085;
    v72 = v25;
    v73 = *(v71 + 4);
    LODWORD(v70) = *(v71 + 10);

    sub_100184CB0(v66, type metadata accessor for MailboxTaskLogger);
    v90 = v73;
    v91 = v70;
    a1 = v84;
    v74 = sub_1004A5824();
    v76 = sub_10015BA6C(v74, v75, &v92);

    *(v64 + 43) = v76;
    v25 = v72;
    *(v64 + 51) = 2048;
    *(v64 + 53) = v53;
    _os_log_impl(&_mh_execute_header, v62, v63, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did successfully upload %ld message(s).", v64, 0x3Du);
    swift_arrayDestroy();
  }

  v77 = *(v25 + 120);
  if (!*(v25 + 120))
  {
    return;
  }

LABEL_26:
  v78 = *(v25 + 112);
  if (v77 == 1)
  {
    v79 = 0;
  }

  else
  {
    if (!v78)
    {
      return;
    }

    v78 = 0;
    v79 = 1;
  }

  v80 = a1 + *(type metadata accessor for MailboxSyncState() + 72);
  *v80 = v78;
  *(v80 + 8) = v79;
  *(v80 + 9) = 0;
}

uint64_t sub_1001822B0()
{
  if (qword_1005CCEA8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100182328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  result = sub_100183218(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

uint64_t sub_1001823A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 8);
  if ((v5 & 0x3000000000000000) == 0x1000000000000000)
  {
    v7 = *result;
    v8 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    result = sub_100011E60(*result, v5 & 0xCFFFFFFFFFFFFFFFLL, *(v4 + *(a4 + 60)));
    if (result)
    {
      v9 = *(a4 + 68);
      v10 = *(v4 + v9);
      sub_100014CEC(v7, v8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100087114(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v17 = v11 + 1;
        v15 = v10;
        v16 = *(v10 + 16);
        result = sub_100087114((v12 > 1), v11 + 1, 1, v15);
        v11 = v16;
        v13 = v17;
        v10 = result;
      }

      *(v10 + 16) = v13;
      v14 = v10 + 32 * v11;
      *(v14 + 32) = v7;
      *(v14 + 40) = v8;
      *(v14 + 48) = 0;
      *(v14 + 56) = 256;
      *(v4 + v9) = v10;
    }
  }

  return result;
}

uint64_t sub_1001824B0(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(result + 192) == 1)
  {
    v5 = *(result + 176);
    v4 = *(result + 184);
    v9 = *(result + 168);
    v6 = v9;
    v7 = result;

    sub_1000BE940(&v9, v2, v3, 0, sub_100183210);
    result = sub_100020D58(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

unint64_t sub_10018258C()
{
  result = qword_1005D2818;
  if (!qword_1005D2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2818);
  }

  return result;
}

BOOL sub_1001825E0(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) == 0)
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && a1 == a3)
      {
        return 1;
      }
    }

    return 0;
  }

  return (a4 & 0x100) != 0;
}

BOOL sub_100182614(uint64_t a1, unint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, unint64_t a6, uint64_t a7, __int16 a8)
{
  if ((sub_10003A194(a1, a2, a5, a6) & 1) == 0)
  {
    return 0;
  }

  if ((a4 & 0x100) == 0)
  {
    if ((a8 & 0x100) == 0)
    {
      if (a4)
      {
        if (a8)
        {
          return 1;
        }
      }

      else if ((a8 & 1) == 0 && a3 == a7)
      {
        return 1;
      }
    }

    return 0;
  }

  return (a8 & 0x100) != 0;
}

uint64_t sub_10018269C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10018276C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100182838()
{
  sub_100182DF4(319, &qword_1005D28A8, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1001828E0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100182908(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 16))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100182964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *sub_1001829B8(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100182A1C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005D28E0, &qword_1004DA6E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_100182AEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D28E0, &qword_1004DA6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100182BBC()
{
  sub_100182E48(319, &qword_1005CD828, sub_10002AB18);
  if (v0 <= 0x3F)
  {
    sub_100182EA8(319, &qword_1005D2950, &type metadata for OpaquePersistedMessageIdentifier, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100182EA8(319, &qword_1005D2958, &type metadata for OpaquePersistedMessageIdentifier, &type metadata accessor for ArraySlice);
      if (v2 <= 0x3F)
      {
        sub_100182DF4(319, &qword_1005D2960, type metadata accessor for UploadMessages.PendingUpload);
        if (v3 <= 0x3F)
        {
          sub_100182EA8(319, &qword_1005D2968, &type metadata for OpaquePersistedMessageIdentifier, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100182E48(319, &qword_1005CF8B0, sub_1000CEA84);
            if (v5 <= 0x3F)
            {
              sub_100182EA8(319, &unk_1005D2970, &type metadata for UploadMessages.CompletedUpload, &type metadata accessor for Array);
              if (v6 <= 0x3F)
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

void sub_100182DF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004A6374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100182E48(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1004A5DC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100182EA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 initializeWithCopy for Action.UnreadCountOutsideWindowOfInterest(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100182F0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 26))
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

uint64_t sub_100182F60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100182FD4(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t sub_100182FF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_10018303C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_1004DA580;
    }
  }

  return result;
}

void *sub_100183090(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

unint64_t sub_1001830E0()
{
  result = qword_1005D29D8;
  if (!qword_1005D29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D29D8);
  }

  return result;
}

unint64_t sub_100183138()
{
  result = qword_1005D29E0;
  if (!qword_1005D29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D29E0);
  }

  return result;
}

unint64_t sub_10018318C(uint64_t a1)
{
  result = sub_1001831B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001831B4()
{
  result = qword_1005D2A98;
  if (!qword_1005D2A98)
  {
    type metadata accessor for UploadMessages(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2A98);
  }

  return result;
}

unint64_t sub_100183218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v49 = a1;
  v7 = sub_10000C9C0(&qword_1005D28E0, &qword_1004DA6E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v46 = &v46 - v9;
  result = type metadata accessor for UploadMessages(0);
  v47 = result;
  v52 = *(v4 + *(result + 68));
  v11 = *(v52 + 16);
  v50 = v4;
  v51 = v11;
  if (v11)
  {
    v12 = 0;
    v13 = (v52 + 57);
    while (1)
    {
      if (v12 >= *(v52 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v14 = *(v13 - 25);
      v15 = *(v13 - 17);
      v16 = *(v13 - 9);
      v17 = *(v13 - 1);
      v18 = *v13;
      sub_100014CEC(v14, v15);
      sub_100014CEC(v14, v15);
      v19 = a2;
      v20 = a2;
      v21 = a3;
      v22 = sub_10001FF50(v14, v15, v20, a3);
      sub_100014D40(v14, v15);
      if ((v22 & 1) == 0)
      {
        break;
      }

      ++v12;
      result = sub_100014D40(v14, v15);
      v13 += 32;
      a3 = v21;
      a2 = v19;
      if (v51 == v12)
      {
        goto LABEL_6;
      }
    }

    v39 = swift_allocObject();
    v40 = *(v50 + 32);
    *(v39 + 16) = *(v50 + 24);
    *(v39 + 24) = v40;
    *(v39 + 32) = v14;
    *(v39 + 40) = v15;
    if ((v18 & 1) == 0)
    {
      *(v39 + 48) = v16;
      *(v39 + 56) = v17 & 1;
    }

    sub_100014CEC(v14, v15);
    goto LABEL_21;
  }

LABEL_6:
  result = sub_10001FF50(0, 0x2000000000000000, a2, a3);
  if (result)
  {
    v23 = v49;
    if ((sub_10009A990(0, 0x2000000000000000, v49, a2, a3) & 1) != 0 && (sub_1000728DC(2, v23, a2, a3) & 1) == 0)
    {
      v24 = v46;
      v25 = v47;
      v26 = v50;
      sub_10000E268(v50 + *(v47 + 52), v46, &qword_1005D28E0, &qword_1004DA6E0);
      v27 = type metadata accessor for UploadMessages.PendingUpload(0);
      v28 = (*(*(v27 - 8) + 48))(v24, 1, v27);
      sub_100025F40(v24, &qword_1005D28E0, &qword_1004DA6E0);
      if (v28 == 1)
      {
        v29 = v26;
        sub_10017F3AC(&v53);
        v30 = *(&v53 + 1);
        if (*(&v53 + 1) >> 60 != 15)
        {
          v14 = v53;
          v31 = *(v25 + 60);
          sub_100014CEC(v53, *(&v53 + 1));
          sub_100088A40(&v53, v14, v30);
          sub_100014D40(v53, *(&v53 + 1));
          v32 = swift_allocObject();
          v33 = *(v29 + 32);
          *(v32 + 16) = *(v29 + 24);
          *(v32 + 24) = v33;
          *(v32 + 32) = v14;
          *(v32 + 40) = v30;
          sub_1000CBB54(v14, v30);
LABEL_21:

          return v14;
        }
      }
    }

    return 0;
  }

  v34 = *(v48 + 176);
  v35 = *(v34 + 16);
  v36 = v35 + 7;
  if (!__OFADD__(v35, 7))
  {
    if (v36 <= 99)
    {
      if (v35)
      {
        v37 = sub_100135564(*(v34 + 16), 0);
        v38 = sub_1001396A0(&v53, v37 + 2, v35, v34);

        sub_100020D08();
        if (v38 != v35)
        {
          __break(1u);
          return 0;
        }
      }

      else
      {
        v37 = _swiftEmptyArrayStorage;
      }

      v41 = v50;
      v42 = *(v47 + 64);
      v43 = *(v50 + v42);

      *(v41 + v42) = v37;
      v44 = swift_allocObject();
      v45 = *(v41 + 32);
      *(v44 + 16) = *(v41 + 24);
      *(v44 + 24) = v45;
      *(v44 + 32) = v36;

      return 0;
    }

    return 0;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_100183688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v11 = type metadata accessor for MailboxTaskLogger(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for UntaggedResponse(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v6 + 120) == 2 && *(v6 + 112) == 0;
  if (v22 && (sub_100058C74(0, 0xF000000000000000, a2, a3, a4) & 1) != 0)
  {
    sub_100016B98(a1, v21, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v23 = *v21;
      v24 = *(v21 + 2);
      v25 = *(v21 + 6);
      v50[4] = *(v21 + 5);
      v50[5] = v25;
      v26 = *(v21 + 8);
      v51 = *(v21 + 7);
      v52 = v26;
      v27 = *(v21 + 2);
      v50[0] = *(v21 + 1);
      v50[1] = v27;
      v28 = *(v21 + 4);
      v29 = *(v6 + 32) | (*(v6 + 32) << 32);
      v50[2] = *(v21 + 3);
      v50[3] = v28;
      if (v29 == (v24 | (v24 << 32)))
      {
        v30 = sub_1000FFC98(*(v6 + 24), v23);

        sub_10009A0FC(v50);
        if ((v30 & 1) != 0 && BYTE8(v51) != 1)
        {
          v45 = v6;
          v31 = v51;
          v32 = v46;
          sub_100016B98(v46, v17, type metadata accessor for MailboxTaskLogger);
          sub_100016B98(v32, v14, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v33 = sub_1004A4A54();
          v34 = sub_1004A6034();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v35 = 68159491;
            *(v35 + 4) = 2;
            *(v35 + 8) = 256;
            v36 = &v14[*(v11 + 20)];
            *(v35 + 10) = *v36;
            *(v35 + 11) = 2082;
            v37 = *(v11 + 20);
            v46 = v31;
            v38 = &v17[v37];
            *(v35 + 13) = sub_10015BA6C(*&v17[v37 + 8], *&v17[v37 + 16], &v49);
            *(v35 + 21) = 1040;
            *(v35 + 23) = 2;
            *(v35 + 27) = 512;
            LOWORD(v36) = *(v36 + 12);
            sub_100184CB0(v14, type metadata accessor for MailboxTaskLogger);
            *(v35 + 29) = v36;
            *(v35 + 31) = 2160;
            *(v35 + 33) = 0x786F626C69616DLL;
            *(v35 + 41) = 2085;
            v39 = *(v38 + 4);
            LODWORD(v38) = *(v38 + 10);

            sub_100184CB0(v17, type metadata accessor for MailboxTaskLogger);
            v47 = v39;
            v48 = v38;
            v31 = v46;
            v40 = sub_1004A5824();
            v42 = sub_10015BA6C(v40, v41, &v49);

            *(v35 + 43) = v42;
            *(v35 + 51) = 2048;
            *(v35 + 53) = v31;
            _os_log_impl(&_mh_execute_header, v33, v34, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received a mailbox specific APPENDLIMIT of %ld.", v35, 0x3Du);
            swift_arrayDestroy();
          }

          else
          {
            sub_100184CB0(v14, type metadata accessor for MailboxTaskLogger);

            sub_100184CB0(v17, type metadata accessor for MailboxTaskLogger);
          }

          v43 = v45;
          *(v45 + 112) = v31;
          *(v43 + 120) = 1;
        }
      }

      else
      {
        sub_10009A0FC(v50);
      }
    }

    else
    {
      sub_100184CB0(v21, type metadata accessor for UntaggedResponse);
    }
  }
}

void sub_100183AF8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v150 = a4;
  v149 = a5;
  v8 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v139[-v10];
  v12 = type metadata accessor for MailboxTaskLogger(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v139[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v139[-v17];
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v23 = &v139[-v22];
  __chkstk_darwin(v24);
  v26 = &v139[-v25];
  __chkstk_darwin(v27);
  v29 = &v139[-v28];
  __chkstk_darwin(v30);
  v35 = &v139[-v34];
  v36 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v36 == 15)
  {
    v148 = v31;
    v57 = sub_10000C9C0(&qword_1005D22F0, &unk_1004EFDE0);
    v58 = swift_projectBox();
    v59 = *v58;
    v60 = *(v58 + 8);
    v35 = *(v58 + 16);
    v61 = *(v58 + 24);
    v154 = *(v58 + 32);
    v155 = *(v58 + 40);
    if ((*(v151 + 32) | (*(v151 + 32) << 32)) != (v60 | (v60 << 32)))
    {
      return;
    }

    v62 = v58;
    v147 = v61;
    v63 = (v58 + *(v57 + 96));
    v64 = *v63;
    v65 = v63[1];
    if ((sub_1000FFC98(*(v151 + 24), v59) & 1) == 0)
    {
      return;
    }

    sub_10000E268(v62 + *(v57 + 80), v11, &qword_1005D0F20, &qword_1004E9390);
    v66 = v147;
    sub_100014CEC(v35, v147);
    sub_100014CEC(v35, v66);
    sub_100014CEC(v64, v65);
    v67 = sub_100070BAC(v35, v66 | 0x1000000000000000, a2, a3, v150);
    sub_100014D40(v35, v66);
    if ((v67 & 1) == 0)
    {
      sub_100025F40(v11, &qword_1005D0F20, &qword_1004E9390);
      sub_100014D40(v35, v66);
      sub_100014D40(v64, v65);
      return;
    }

    v146 = v64;
    v150 = v65;
    v68 = type metadata accessor for UploadMessages(0);
    v69 = v151;
    v70 = v151 + *(v68 + 60);
    sub_100140424(v35, v66, &v153);
    sub_1000CBB68(v153, *(&v153 + 1));
    if (*(v69 + 120) > 1u)
    {
      goto LABEL_55;
    }

    v71 = *(v69 + 112);
    v72 = v150 >> 62;
    if ((v150 >> 62) > 1)
    {
      if (v72 != 2)
      {
        if (v71 < 0)
        {
          goto LABEL_50;
        }

        goto LABEL_55;
      }

      v107 = *(v146 + 16);
      v106 = *(v146 + 24);
      v89 = __OFSUB__(v106, v107);
      v73 = v106 - v107;
      if (v89)
      {
        __break(1u);
        goto LABEL_45;
      }
    }

    else if (v72)
    {
      LODWORD(v73) = HIDWORD(v146) - v146;
      if (__OFSUB__(HIDWORD(v146), v146))
      {
        __break(1u);
        goto LABEL_75;
      }

      v73 = v73;
    }

    else
    {
      v73 = BYTE6(v150);
    }

    if (v71 < v73)
    {
LABEL_50:
      v143 = *(v69 + 112);
      v144 = v150 >> 62;
      v145 = v68;
      v110 = v149;
      sub_100016B98(v149, v18, type metadata accessor for MailboxTaskLogger);
      sub_100016B98(v110, v15, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v111 = v146;
      v112 = v150;
      sub_100014CEC(v146, v150);
      sub_100014CEC(v111, v112);
      v113 = sub_1004A4A54();
      v114 = sub_1004A6014();
      v149 = v113;
      if (!os_log_type_enabled(v113, v114))
      {
        sub_100014D40(v111, v112);
        sub_100184CB0(v15, type metadata accessor for MailboxTaskLogger);
        sub_100014D40(v111, v112);

        sub_100184CB0(v18, type metadata accessor for MailboxTaskLogger);
        v90 = v147;
LABEL_67:
        v88 = *(v145 + 68);
        v92 = *(v69 + v88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_73:
          v92 = sub_100087114(0, *(v92 + 2) + 1, 1, v92);
        }

        v137 = *(v92 + 2);
        v136 = *(v92 + 3);
        if (v137 >= v136 >> 1)
        {
          v92 = sub_100087114((v136 > 1), v137 + 1, 1, v92);
        }

        sub_100014D40(v146, v150);
        sub_100025F40(v11, &qword_1005D0F20, &qword_1004E9390);
        *(v92 + 2) = v137 + 1;
        v138 = &v92[32 * v137];
        *(v138 + 4) = v35;
        *(v138 + 5) = v90;
        *(v138 + 6) = 0;
        *(v138 + 28) = 256;
        *(v69 + v88) = v92;
        return;
      }

      v142 = v114;
      v115 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      *v115 = 68159747;
      *(v115 + 4) = 2;
      *(v115 + 8) = 256;
      v116 = v148;
      v117 = &v15[*(v148 + 20)];
      *(v115 + 10) = *v117;
      *(v115 + 11) = 2082;
      v118 = &v18[*(v116 + 20)];
      *(v115 + 13) = sub_10015BA6C(*(v118 + 1), *(v118 + 2), &v152);
      *(v115 + 21) = 1040;
      *(v115 + 23) = 2;
      *(v115 + 27) = 512;
      v119 = *(v117 + 12);
      sub_100184CB0(v15, type metadata accessor for MailboxTaskLogger);
      *(v115 + 29) = v119;
      *(v115 + 31) = 2160;
      *(v115 + 33) = 0x786F626C69616DLL;
      *(v115 + 41) = 2085;
      v120 = *(v118 + 4);
      LODWORD(v118) = *(v118 + 10);

      sub_100184CB0(v18, type metadata accessor for MailboxTaskLogger);
      *&v153 = v120;
      DWORD2(v153) = v118;
      v121 = sub_1004A5824();
      v123 = sub_10015BA6C(v121, v122, &v152);

      *(v115 + 43) = v123;
      *(v115 + 51) = 2048;
      if (v144 > 1)
      {
        v132 = v150;
        v125 = v146;
        if (v144 != 2)
        {
          sub_100014D40(v146, v150);
          v126 = 0;
          v127 = v132;
          goto LABEL_65;
        }

        v124 = *(v146 + 16);
        v133 = *(v146 + 24);
        sub_100014D40(v146, v150);
        v126 = v133 - v124;
        v69 = v151;
        if (!__OFSUB__(v133, v124))
        {
LABEL_63:
          v127 = v150;
          v134 = v146;
LABEL_66:
          v90 = v147;
          *(v115 + 53) = v126;
          sub_100014D40(v134, v127);
          *(v115 + 61) = 2048;
          *(v115 + 63) = v143;
          v135 = v149;
          _os_log_impl(&_mh_execute_header, v149, v142, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Message byte count (%{iec-bytes}ld) is above server’s APPENDLIMIT (%{iec-bytes}ld).", v115, 0x47u);
          swift_arrayDestroy();

          goto LABEL_67;
        }

        __break(1u);
      }

      else
      {
        v124 = v150;
        v125 = v146;
        if (!v144)
        {
          sub_100014D40(v146, v150);
          v126 = BYTE6(v124);
          v127 = v124;
LABEL_65:
          v134 = v125;
          v69 = v151;
          goto LABEL_66;
        }
      }

      sub_100014D40(v125, v124);
      LODWORD(v126) = HIDWORD(v125) - v125;
      v69 = v151;
      if (!__OFSUB__(HIDWORD(v125), v125))
      {
        v126 = v126;
        goto LABEL_63;
      }

LABEL_75:
      __break(1u);
      return;
    }

LABEL_55:
    v128 = v69 + *(v68 + 52);
    sub_100025F40(v128, &qword_1005D28E0, &qword_1004DA6E0);
    v129 = type metadata accessor for UploadMessages.PendingUpload(0);
    sub_100025FDC(v11, v128 + *(v129 + 24), &qword_1005D0F20, &qword_1004E9390);
    *v128 = v35;
    *(v128 + 8) = v66;
    *(v128 + 16) = v154;
    *(v128 + 24) = v155;
    v130 = (v128 + *(v129 + 28));
    v131 = v150;
    *v130 = v146;
    v130[1] = v131;
    (*(*(v129 - 8) + 56))(v128, 0, 1, v129);
    return;
  }

  if (v36 == 14)
  {
    v37 = a1 & 0xFFFFFFFFFFFFFFBLL;
    if ((*(v151 + 32) | (*(v151 + 32) << 32)) == (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
    {
      v38 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v39 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v147 = v32;
      v148 = v31;
      v40 = *(v151 + 24);
      v146 = v33;
      if (sub_1000FFC98(v40, *(v37 + 16)))
      {
        v41 = *(v38 + 16);
        if (v41)
        {
          LODWORD(v144) = v39;
          v42 = v149;
          sub_100016B98(v149, v35, type metadata accessor for MailboxTaskLogger);
          sub_100016B98(v42, v29, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          swift_bridgeObjectRetain_n();
          v43 = sub_1004A4A54();
          v44 = sub_1004A6034();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v142 = v44;
            v46 = v45;
            v143 = swift_slowAlloc();
            v154 = v143;
            *v46 = 68159491;
            *(v46 + 4) = 2;
            *(v46 + 8) = 256;
            v47 = v148;
            v48 = *(v148 + 20);
            v145 = v38;
            v49 = &v29[v48];
            *(v46 + 10) = v29[v48];
            *(v46 + 11) = 2082;
            v50 = *(v47 + 20);
            v141 = v43;
            v51 = v35 + v50;
            *(v46 + 13) = sub_10015BA6C(*(v35 + v50 + 8), *(v35 + v50 + 16), &v154);
            *(v46 + 21) = 1040;
            *(v46 + 23) = 2;
            *(v46 + 27) = 512;
            v140 = *(v49 + 12);
            sub_100184CB0(v29, type metadata accessor for MailboxTaskLogger);
            *(v46 + 29) = v140;
            *(v46 + 31) = 2160;
            *(v46 + 33) = 0x786F626C69616DLL;
            *(v46 + 41) = 2085;
            v52 = *(v51 + 32);
            LODWORD(v51) = *(v51 + 40);

            sub_100184CB0(v35, type metadata accessor for MailboxTaskLogger);
            *&v153 = v52;
            DWORD2(v153) = v51;
            v53 = sub_1004A5824();
            v55 = sub_10015BA6C(v53, v54, &v154);

            *(v46 + 43) = v55;
            v38 = v145;
            *(v46 + 51) = 2048;
            v56 = *(v38 + 16);

            *(v46 + 53) = v56;

            v35 = v141;
            _os_log_impl(&_mh_execute_header, v141, v142, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received %ld message(s).", v46, 0x3Du);
            swift_arrayDestroy();
          }

          else
          {

            sub_100184CB0(v29, type metadata accessor for MailboxTaskLogger);

            sub_100184CB0(v35, type metadata accessor for MailboxTaskLogger);
          }

          LOBYTE(v39) = v144;
        }

        if ((sub_100070BAC(0, 0x2000000000000000, a2, a3, v150) & 1) == 0)
        {
          *(v151 + *(type metadata accessor for UploadMessages(0) + 72)) = 1;
          return;
        }

        v145 = v38;
        v66 = v151;
        if ((v39 & 1) == 0)
        {
          *(v66 + *(type metadata accessor for UploadMessages(0) + 72)) = 1;
        }

        v11 = *(v66 + 128);
        if (*(v11 + 2))
        {
          v74 = v149;
          sub_100016B98(v149, v26, type metadata accessor for MailboxTaskLogger);
          sub_100016B98(v74, v23, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v75 = sub_1004A4A54();
          v76 = sub_1004A6014();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            v154 = v150;
            *v77 = 68159235;
            *(v77 + 4) = 2;
            *(v77 + 8) = 256;
            v78 = v148;
            v79 = &v23[*(v148 + 20)];
            *(v77 + 10) = *v79;
            *(v77 + 11) = 2082;
            v80 = &v26[*(v78 + 20)];
            *(v77 + 13) = sub_10015BA6C(*(v80 + 1), *(v80 + 2), &v154);
            *(v77 + 21) = 1040;
            *(v77 + 23) = 2;
            *(v77 + 27) = 512;
            LOWORD(v79) = *(v79 + 12);
            sub_100184CB0(v23, type metadata accessor for MailboxTaskLogger);
            *(v77 + 29) = v79;
            v66 = v151;
            *(v77 + 31) = 2160;
            *(v77 + 33) = 0x786F626C69616DLL;
            *(v77 + 41) = 2085;
            v81 = *(v80 + 4);
            LODWORD(v80) = *(v80 + 10);

            sub_100184CB0(v26, type metadata accessor for MailboxTaskLogger);
            *&v153 = v81;
            DWORD2(v153) = v80;
            v82 = sub_1004A5824();
            v35 = sub_10015BA6C(v82, v83, &v154);

            *(v77 + 43) = v35;
            _os_log_impl(&_mh_execute_header, v75, v76, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Unexpectedly received multiple .uploadMessages", v77, 0x33u);
            swift_arrayDestroy();
          }

          else
          {
            sub_100184CB0(v23, type metadata accessor for MailboxTaskLogger);

            sub_100184CB0(v26, type metadata accessor for MailboxTaskLogger);
          }
        }

        v85 = sub_1000CE67C(v84);

        v154 = v85;
        v86 = *(v66 + *(type metadata accessor for UploadMessages(0) + 64));

        sub_10009333C(v87);

        if (!v41)
        {

LABEL_46:
          v108 = (2 * *(v11 + 2)) | 1;
          v109 = *(v66 + 136);

          swift_unknownObjectRelease();
          *(v66 + 136) = v11;
          *(v66 + 144) = v11 + 32;
          *(v66 + 152) = 0;
          *(v66 + 160) = v108;
          return;
        }

        v88 = 0;
        v69 = v145 + 40;
        do
        {
          v90 = *(v69 - 8);
          v91 = *v69;
          v92 = v154;
          sub_100014CEC(v90, *v69);
          if ((sub_100011E60(v90, v91, v92) & 1) != 0 || (v92 = *(v11 + 2), v92 > 6))
          {
            sub_100014D40(v90, v91);
            v89 = __OFADD__(v88++, 1);
            if (v89)
            {
              __break(1u);
              goto LABEL_73;
            }
          }

          else
          {
            sub_100014CEC(v90, v91);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_100086B4C(0, (v92 + 1), 1, v11);
            }

            v35 = *(v11 + 2);
            v93 = *(v11 + 3);
            if (v35 >= v93 >> 1)
            {
              v11 = sub_100086B4C((v93 > 1), v35 + 1, 1, v11);
            }

            *(v11 + 2) = v35 + 1;
            v94 = &v11[16 * v35];
            *(v94 + 4) = v90;
            *(v94 + 5) = v91;
            *(v66 + 128) = v11;
            sub_100088A40(&v153, v90, v91);
            sub_100014D40(v153, *(&v153 + 1));
          }

          v69 += 16;
          --v41;
        }

        while (v41);

        if (v88 < 1)
        {
          goto LABEL_46;
        }

        v95 = v149;
        v69 = v147;
        sub_100016B98(v149, v147, type metadata accessor for MailboxTaskLogger);
        v18 = v146;
        sub_100016B98(v95, v146, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v68 = sub_1004A4A54();
        v96 = sub_1004A6034();
        if (os_log_type_enabled(v68, v96))
        {
          v97 = swift_slowAlloc();
          LODWORD(v150) = v96;
          v98 = v97;
          v151 = swift_slowAlloc();
          v152 = v151;
          *v98 = 68159491;
          *(v98 + 4) = 2;
          *(v98 + 8) = 256;
          v99 = v148;
          v100 = &v18[*(v148 + 20)];
          *(v98 + 10) = *v100;
          *(v98 + 11) = 2082;
          v101 = v69 + *(v99 + 20);
          *(v98 + 13) = sub_10015BA6C(*(v101 + 8), *(v101 + 16), &v152);
          *(v98 + 21) = 1040;
          *(v98 + 23) = 2;
          *(v98 + 27) = 512;
          LOWORD(v100) = *(v100 + 12);
          sub_100184CB0(v18, type metadata accessor for MailboxTaskLogger);
          *(v98 + 29) = v100;
          *(v98 + 31) = 2160;
          *(v98 + 33) = 0x786F626C69616DLL;
          *(v98 + 41) = 2085;
          v102 = *(v101 + 32);
          LODWORD(v101) = *(v101 + 40);

          sub_100184CB0(v69, type metadata accessor for MailboxTaskLogger);
          *&v153 = v102;
          DWORD2(v153) = v101;
          v103 = sub_1004A5824();
          v105 = sub_10015BA6C(v103, v104, &v152);

          *(v98 + 43) = v105;
          *(v98 + 51) = 2048;
          *(v98 + 53) = v88;
          _os_log_impl(&_mh_execute_header, v68, v150, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Skipping %ld message(s).", v98, 0x3Du);
          swift_arrayDestroy();

          goto LABEL_46;
        }

LABEL_45:
        sub_100184CB0(v18, type metadata accessor for MailboxTaskLogger);

        sub_100184CB0(v69, type metadata accessor for MailboxTaskLogger);
        goto LABEL_46;
      }
    }
  }
}

uint64_t sub_100184CB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100184D20(uint64_t a1)
{
  v3 = v1[2];

  sub_100014D40(v1[4], v1[5]);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100184D6C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100184DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadMessages.PendingUpload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for UploadMessages.CompletedUpload.Status(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UploadMessages.CompletedUpload.Status(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UploadMessages.CompletedUpload.Status(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_100184E68(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100184E84(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

BOOL sub_100184EC0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a1 + 24);
  if (sub_10003A194(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    if (v5)
    {
      if (v3 && (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5, v3) & 1) != 0)
      {
        return v2 == v4;
      }
    }

    else if (!v3)
    {
      return v2 == v4;
    }
  }

  return 0;
}

uint64_t sub_100184F4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_100184FA8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100185010(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v44 = a1;
  v3 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v45 = &v41 - v5;
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v41 - v8;
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  __chkstk_darwin(v10);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v41 - v14;
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  v21 = _s19UserInitiatedSearchV5StateOMa(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v26 = *(*(MessagesVMa - 8) + 64);
  __chkstk_darwin(MessagesVMa);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v2 + *(_s19UserInitiatedSearchVMa(0) + 20);
  sub_100185CDC(v29, v24);
  v47 = v21;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_100185DA4(v24, _s19UserInitiatedSearchV5StateOMa);
  }

  sub_100185D40(v24, v28);
  v30 = *(MessagesVMa + 20);
  sub_10000E268(v28, v9, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.intersection(_:)(v9, v17);
  v44 = v9;
  sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.union(_:)(v17, v20);
  sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
  v31 = v45;
  sub_10000E268(&v28[*(MessagesVMa + 24)], v45, &qword_1005CD510, &unk_1004CF2E0);
  v32 = *(v50 + 48);
  v33 = v32(v31, 1, v10);
  v42 = MessagesVMa;
  v43 = v20;
  if (v33 == 1)
  {
    sub_100016D2C();
    v34 = v46;
    sub_1004A7114();
    if (v32(v31, 1, v10) != 1)
    {
      sub_100025F40(v31, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v34 = v46;
    sub_100020950(v31, v46);
  }

  v36 = v44;
  sub_10000E268(v28, v44, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.intersection(_:)(v36, v17);
  v37 = v10;
  sub_100025F40(v36, &unk_1005D91B0, &unk_1004CF400);
  v38 = v48;
  MessageIdentifierSet.union(_:)(v17, v48);
  sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v34, &unk_1005D91B0, &unk_1004CF400);
  sub_100185DA4(v29, _s19UserInitiatedSearchV5StateOMa);
  sub_10000E268(v28, v29, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100185DA4(v28, _s19UserInitiatedSearchV13FetchMessagesVMa);
  v39 = v42;
  v40 = *(v42 + 24);
  sub_100020950(v38, v29 + v40);
  (*(v50 + 56))(v29 + v40, 0, 1, v37);
  sub_100020950(v43, v29 + *(v39 + 20));
  return swift_storeEnumTagMultiPayload();
}

BOOL sub_100185554(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((static SearchKey.__derived_enum_equals(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(v2, v3, v4, v5, v6, v7);
}

BOOL sub_100185614(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_10000C9C0(&qword_1005CE810, &unk_1004D1120);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v18 = *(MessagesVMa + 20);
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v19 = *(MessagesVMa + 24);
  v20 = a1 + v19;
  v21 = *(v13 + 48);
  sub_10000E268(v20, v16, &qword_1005CD510, &unk_1004CF2E0);
  sub_10000E268(a2 + v19, &v16[v21], &qword_1005CD510, &unk_1004CF2E0);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_100025F40(v16, &qword_1005CD510, &unk_1004CF2E0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_10000E268(v16, v12, &qword_1005CD510, &unk_1004CF2E0);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
LABEL_8:
    sub_100025F40(v16, &qword_1005CE810, &unk_1004D1120);
    return 0;
  }

  sub_100020950(&v16[v21], v8);
  v24 = sub_1004A7034();
  sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v16, &qword_1005CD510, &unk_1004CF2E0);
  return (v24 & 1) != 0;
}

BOOL sub_10018595C(uint64_t a1, uint64_t a2)
{
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v5 = *(*(MessagesVMa - 8) + 64);
  __chkstk_darwin(MessagesVMa - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s19UserInitiatedSearchV5StateOMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = sub_10000C9C0(&qword_1005D0948, &unk_1004DAB60);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v32 - v17;
  v20 = &v32 + *(v19 + 56) - v17;
  sub_100185CDC(a1, &v32 - v17);
  sub_100185CDC(a2, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100185CDC(v18, v14);
    v23 = *v14;
    v22 = *(v14 + 1);
    v24 = *(v14 + 2);
    v25 = v14[24];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = *v20;
      v26 = *(v20 + 1);
      v28 = *(v20 + 2);
      v29 = v20[24];
      if (static SearchKey.__derived_enum_equals(_:_:)(v23, v27))
      {
        v30 = static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(v22, v24, v25, v26, v28, v29);
        sub_1000B37D8(v27);

        sub_1000B37D8(v23);

        if (v30)
        {
          sub_100185DA4(v18, _s19UserInitiatedSearchV5StateOMa);
          return 1;
        }
      }

      else
      {
        sub_1000B37D8(v27);

        sub_1000B37D8(v23);
      }

      sub_100185DA4(v18, _s19UserInitiatedSearchV5StateOMa);
      return 0;
    }

    sub_1000B37D8(v23);

LABEL_7:
    sub_100025F40(v18, &qword_1005D0948, &unk_1004DAB60);
    return 0;
  }

  sub_100185CDC(v18, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100185DA4(v11, _s19UserInitiatedSearchV13FetchMessagesVMa);
    goto LABEL_7;
  }

  sub_100185D40(v20, v7);
  v21 = sub_100185614(v11, v7);
  sub_100185DA4(v7, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_100185DA4(v11, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_100185DA4(v18, _s19UserInitiatedSearchV5StateOMa);
  return v21;
}

uint64_t sub_100185CDC(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100185D40(uint64_t a1, uint64_t a2)
{
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  (*(*(MessagesVMa - 8) + 32))(a2, a1, MessagesVMa);
  return a2;
}

uint64_t sub_100185DA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100185E04()
{
  result = _s19UserInitiatedSearchV13FetchMessagesVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100185E70(void *a1)
{
  v1 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  if (v1 == 31)
  {
    return (*a1 >> 3) + 31;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100185E94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100185EDC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100185F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1001860BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10018622C()
{
  sub_1000E2E4C(319, &qword_1005CE2B8, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v0 <= 0x3F)
  {
    sub_1000E2E4C(319, &qword_1005CDDC0, type metadata accessor for MessageIdentifierSet);
    if (v1 <= 0x3F)
    {
      sub_100035D34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100186314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = _s19UserInitiatedSearchV5StateOMa(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1001863A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = _s19UserInitiatedSearchV5StateOMa(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10018643C()
{
  result = _s19UserInitiatedSearchV5StateOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001864B8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_10015C0B4(a2, a3, v9, v8, (*v3 + 16));
    v12 = v11;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_10015C014(a2, a3, v9, v8);
    v12 = 0;
    if (v20)
    {
LABEL_3:
      if ((a1 & 0x100000000) != 0)
      {
      }

      else
      {
        sub_100187EA0(a2, a3);

        v16 = v3[2];
        v14 = v3 + 2;
        v15 = v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v14 = v16;
        if ((result & 1) == 0)
        {
          result = sub_100091BA8(0, *(v15 + 16) + 1, 1);
          v15 = *v14;
        }

        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_100091BA8((v18 > 1), v19 + 1, 1);
          v15 = *v14;
        }

        *(v15 + 16) = v19 + 1;
        *(v15 + 4 * v19 + 32) = a1;
        *v14 = v15;
      }

      return result;
    }
  }

  v21 = v10;

  if ((a1 & 0x100000000) != 0)
  {
    sub_1001891EC(v21, v12);

    return sub_1001895C0(v21, sub_100141960);
  }

  else
  {
    v22 = v3[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100141960(v22);
      v22 = result;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v22 + 16))
    {
      *(v22 + 4 * v21 + 32) = a1;
      v3[2] = v22;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100186664(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = result;
  v9 = v4[1];
  v10 = v9 + 32;
  v11 = *(v9 + 16);
  if (*v4)
  {
    result = sub_100166A50(a4, v10, v11, *v4 + 16, *v4 + 32);
    if ((v12 & 1) == 0)
    {
      v13 = result;
      if (a3 == 1)
      {
LABEL_4:
        sub_100189330(v13, v11);
        sub_100189520(v13, v25);
      }

LABEL_17:
      v21 = v4[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100141A78(v21);
        v21 = result;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v13 < *(v21 + 16))
      {
        v22 = v21 + 24 * v13;
        v23 = *(v22 + 48);
        *(v22 + 32) = v8;
        *(v22 + 40) = a2;
        *(v22 + 48) = a3;

        v4[2] = v21;
        return result;
      }

      __break(1u);
      return result;
    }
  }

  else if (v11)
  {
    v13 = 0;
    while (*(v10 + 4 * v13) != a4)
    {
      if (v11 == ++v13)
      {
        v11 = 0;
        goto LABEL_10;
      }
    }

    v11 = 0;
    if (a3 == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

LABEL_10:
  if (a3 != 1)
  {
    sub_100188018(v5, v11, sub_100091DA8);
    v16 = v4[2];
    v14 = v4 + 2;
    v15 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v16;
    if ((result & 1) == 0)
    {
      result = sub_100091FE8(0, *(v15 + 16) + 1, 1);
      v15 = *v14;
    }

    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = v17 + 1;
    if (v17 >= v18 >> 1)
    {
      v24 = *(v15 + 16);
      result = sub_100091FE8((v18 > 1), v17 + 1, 1);
      v17 = v24;
      v15 = *v14;
    }

    *(v15 + 16) = v19;
    v20 = v15 + 24 * v17;
    *(v20 + 32) = v8;
    *(v20 + 40) = a2;
    *(v20 + 48) = a3;
    *v14 = v15;
  }

  return result;
}

uint64_t sub_10018682C(__int128 *a1, uint64_t a2, unsigned int a3)
{
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_10015C0B4(a2, a3, v9, v8, (*v3 + 16));
    v12 = v11;
    v13 = a1[9];
    v93 = a1[8];
    v94 = v13;
    v95 = a1[10];
    v14 = a1[5];
    v89 = a1[4];
    v90 = v14;
    v15 = a1[7];
    v91 = a1[6];
    v92 = v15;
    v16 = a1[1];
    v85 = *a1;
    v86 = v16;
    v17 = a1[3];
    v87 = a1[2];
    v88 = v17;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_10015C014(a2, a3, v9, v8);
    v12 = 0;
    v20 = a1[9];
    v93 = a1[8];
    v94 = v20;
    v95 = a1[10];
    v21 = a1[5];
    v89 = a1[4];
    v90 = v21;
    v22 = a1[7];
    v91 = a1[6];
    v92 = v22;
    v23 = a1[1];
    v85 = *a1;
    v86 = v23;
    v24 = a1[3];
    v87 = a1[2];
    v88 = v24;
    if (v25)
    {
LABEL_3:
      v82 = v93;
      v83 = v94;
      v84 = v95;
      v78 = v89;
      v79 = v90;
      v80 = v91;
      v81 = v92;
      v74 = v85;
      v75 = v86;
      v76 = v87;
      v77 = v88;
      if (sub_1000CBCC8(&v74) == 1)
      {
      }

      v71 = v93;
      v72 = v94;
      v73 = v95;
      v67 = v89;
      v68 = v90;
      v69 = v91;
      v70 = v92;
      v63 = v85;
      v64 = v86;
      v65 = v87;
      v66 = v88;
      sub_100187EA0(a2, a3);

      v29 = v3[2];
      v28 = v3 + 2;
      v27 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v28 = v29;
      if ((result & 1) == 0)
      {
        result = sub_1000919E8(0, *(v27 + 16) + 1, 1);
        v27 = *v28;
      }

      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1000919E8((v30 > 1), v31 + 1, 1);
        v27 = *v28;
      }

      *(v27 + 16) = v31 + 1;
      v32 = (v27 + 176 * v31);
      v33 = v63;
      v34 = v65;
      v32[3] = v64;
      v32[4] = v34;
      v32[2] = v33;
      v35 = v66;
      v36 = v67;
      v37 = v69;
      v32[7] = v68;
      v32[8] = v37;
      v32[5] = v35;
      v32[6] = v36;
      v38 = v70;
      v39 = v71;
      v40 = v73;
      v32[11] = v72;
      v32[12] = v40;
      v32[9] = v38;
      v32[10] = v39;
      *v28 = v27;
      return result;
    }
  }

  v26 = v10;

  v82 = v93;
  v83 = v94;
  v84 = v95;
  v78 = v89;
  v79 = v90;
  v80 = v91;
  v81 = v92;
  v74 = v85;
  v75 = v86;
  v76 = v87;
  v77 = v88;
  if (sub_1000CBCC8(&v74) == 1)
  {
    sub_1001891EC(v26, v12);

    sub_10018964C(v26, v62);
    return sub_10000E0E8(v62);
  }

  v59 = v93;
  v60 = v94;
  v61 = v95;
  v55 = v89;
  v56 = v90;
  v57 = v91;
  v58 = v92;
  v51 = v85;
  v52 = v86;
  v53 = v87;
  v54 = v88;
  v41 = v3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141AFC(v41);
    v41 = result;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v26 < *(v41 + 16))
  {
    v42 = (v41 + 176 * v26);
    v43 = v42[2];
    v44 = v42[4];
    v62[1] = v42[3];
    v62[2] = v44;
    v62[0] = v43;
    v45 = v42[5];
    v46 = v42[6];
    v47 = v42[8];
    v62[5] = v42[7];
    v62[6] = v47;
    v62[3] = v45;
    v62[4] = v46;
    v48 = v42[9];
    v49 = v42[10];
    v50 = v42[12];
    v62[9] = v42[11];
    v62[10] = v50;
    v62[7] = v48;
    v62[8] = v49;
    v42[10] = v59;
    v42[11] = v60;
    v42[12] = v61;
    v42[6] = v55;
    v42[7] = v56;
    v42[8] = v57;
    v42[9] = v58;
    v42[2] = v51;
    v42[3] = v52;
    v42[4] = v53;
    v42[5] = v54;
    result = sub_10000E0E8(v62);
    v3[2] = v41;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100186BA4(unsigned __int16 a1, uint64_t a2, unsigned int a3)
{
  v6 = a1;
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_10015C0B4(a2, a3, v9, v8, (*v3 + 16));
    v12 = v11;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_10015C014(a2, a3, v9, v8);
    v12 = 0;
    if (v15)
    {
LABEL_3:
      if ((~v6 & 0xF8FC) != 0)
      {
        sub_100187EA0(a2, a3);

        v19 = v3[2];
        v18 = v3 + 2;
        v17 = v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v18 = v19;
        if ((result & 1) == 0)
        {
          result = sub_1000923E8(0, *(v17 + 16) + 1, 1);
          v17 = *v18;
        }

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_1000923E8((v20 > 1), v21 + 1, 1);
          v17 = *v18;
        }

        *(v17 + 16) = v21 + 1;
        *(v17 + 2 * v21 + 32) = v6;
        *v18 = v17;
      }

      else
      {
      }

      return result;
    }
  }

  v16 = v10;

  if ((~v6 & 0xF8FC) == 0)
  {
    sub_1001891EC(v16, v12);

    return sub_100189704(v16);
  }

  v22 = v3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141B5C(v22);
    v22 = result;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(v22 + 16))
  {
    *(v22 + 2 * v16 + 32) = v6;
    v3[2] = v22;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100186D4C(unsigned __int16 a1)
{
  if ((a1 >> 14) <= 1u)
  {
    if (!(a1 >> 14))
    {
      sub_1004A6724(29);
      v5._countAndFlagsBits = 0xD000000000000016;
      v5._object = 0x80000001004AB100;
      sub_1004A5994(v5);
      sub_1004A6934();
      v6._countAndFlagsBits = 8236;
      v6._object = 0xE200000000000000;
      sub_1004A5994(v6);
      v7._countAndFlagsBits = sub_1004A5824();
      sub_1004A5994(v7);

LABEL_8:
      v8._countAndFlagsBits = 41;
      v8._object = 0xE100000000000000;
      sub_1004A5994(v8);
      return 0;
    }

    sub_1004A6724(23);
    v1._object = 0x80000001004AB0E0;
    v1._countAndFlagsBits = 0xD000000000000014;
LABEL_7:
    sub_1004A5994(v1);
    sub_1004A6934();
    goto LABEL_8;
  }

  if (a1 >> 14 == 2)
  {
    v1._countAndFlagsBits = 0x6154657669746361;
    v1._object = 0xEB00000000286B73;
    goto LABEL_7;
  }

  v3 = 0x6973695672657375;
  v4 = 0x6E7953736465656ELL;
  if (a1 != 49154)
  {
    v4 = 0x797469726F697270;
  }

  if (a1 != 49152)
  {
    v3 = 0x7953657669746361;
  }

  if (a1 <= 0xC001u)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_100186F80(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100141B70(v2);
  }

  v3 = v2[2];
  v4 = v2 + 4;
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 28);
          if (*(v12 + 12) >= v13)
          {
            break;
          }

          v14 = v12[2];
          v15 = *(v12 + 6);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v15;
          *(v12 + 12) = v13;
          v12 -= 2;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 2;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000C9C0(&qword_1005D14B0, &unk_1004DB0F0);
      v8 = sub_1004A5C64();
      v8[2] = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v17[0] = v8 + 4;
    v17[1] = v7;
    sub_100188688(v17, v18, v19, v6);
    v8[2] = 0;
  }

  *a1 = v2;
  return result;
}

BOOL sub_1001870E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return (sub_100104744(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_10010463C(v2, v3) & 1) != 0;
}

uint64_t sub_100187138(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  memcpy(v50, v3, sizeof(v50));
  v8 = LOBYTE(v50[3]);
  v44 = BYTE1(v50[3]);
  v9 = v50[4];
  v10 = sub_10012E208();
  v11 = v50[7];

  v12 = sub_100166D28();
  v13 = v12;
  v42 = a1;
  v43 = a2;
  v41 = a3;
  if (v9 == 3 || v9 == 2)
  {

    v14 = 1;
    goto LABEL_4;
  }

  v32 = sub_100166E18(v12);
  if (v44)
  {
    goto LABEL_12;
  }

  if (v9 == 1)
  {
    if (v8)
    {
      v14 = v8 == 1;
      goto LABEL_13;
    }

LABEL_12:
    v14 = v32 ^ 1;
    goto LABEL_13;
  }

  if (v9 || (v8 - 1) >= 2)
  {
    goto LABEL_12;
  }

  v14 = 0;
LABEL_13:
  sub_100013AD0(&off_100598658, v11);
  sub_100166E18(v13);
  v33 = sub_100013CF4(v11);

  if (v33 & 1) == 0 && (v44)
  {
    sub_100166E18(v13);
  }

LABEL_4:

  v15 = v50[32];
  v16 = sub_1000CF79C(v50[21], v50[22], v50[23], v50[24] & 1, v50[15], v10, v14 & 1, v50[26]);
  v18 = v17;
  v20 = v19;

  v40 = &v36;
  __chkstk_darwin(v21);
  v35[2] = v4;
  v35[3] = v16;
  v35[4] = v18;
  v35[5] = v20;
  v22 = sub_100187AB0(v16, v18, v20);
  v38 = v23;
  v39 = v22;
  v37 = v24;
  __chkstk_darwin(v22);
  v34[2] = v4;
  v25 = *(v4 + 200);
  v48[3] = *(v4 + 184);
  v48[4] = v25;
  v49[0] = *(v4 + 216);
  *(v49 + 12) = *(v4 + 228);
  v48[2] = *(v4 + 168);

  v26 = sub_1000B6A4C();
  v27 = *(v4 + 184);
  v28 = *(v4 + 216);
  v47 = *(v4 + 200);
  v48[0] = v28;
  *(v48 + 12) = *(v4 + 228);
  v45 = *(v4 + 168);
  v46 = v27;
  v29 = sub_1000B52D4();
  v30 = sub_10018B248(v42, v43, v41 & 1, sub_10018CA44, v35, v39, v38, v37, sub_10018CA70, v34, v15, v26, v29, v44 & 1);

  return v30;
}

void *sub_100187434(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[24])
  {
    v1 = __dst[22];
    v2 = __dst[23];
    v3 = __dst[26];
    v4 = __dst[21];
    v5 = __dst[15];
    v32[0] = __dst[15];
    if (__dst[15])
    {
      v6 = LOBYTE(__dst[3]);
      v7 = BYTE1(__dst[3]);
      v8 = __dst[4];
      v23 = LOBYTE(__dst[5]);
      v9 = __dst[7];
      swift_bridgeObjectRetain_n();
      sub_100020D10(v4, v1, v2, 1);
      sub_10000E268(v32, v24, &qword_1005CF820, &qword_1004D2D00);

      v10 = sub_100166D28();
      v11 = v10;
      if (v8 == 2 || v8 == 3)
      {

        sub_100166D28();

        v12 = 0;
        LOBYTE(v6) = 1;
LABEL_6:
        v13 = BYTE1(__dst[2]);
        v14 = swift_allocObject();
        memcpy((v14 + 16), __dst, 0x108uLL);
        sub_1000CECCC(__dst, v24);
        v15 = sub_10012DCC8();
        *&v26 = v4;
        *(&v26 + 1) = v5;
        LOBYTE(v27) = v13;
        *(&v27 + 1) = v3;
        LOBYTE(v28) = v6 & 1;
        BYTE1(v28) = v12;
        *(&v28 + 1) = sub_1000CECC4;
        *&v29 = v14;
        *(&v29 + 1) = 7;
        v30 = v15;
        v25 = v15;
        v24[2] = v28;
        v24[3] = v29;
        v24[0] = v26;
        v24[1] = v27;
        v16 = sub_1000CC9D4();
        sub_1000CED28(&v26);
        return v16;
      }

      v18 = sub_100166E18(v10);
      if (v7)
      {
        goto LABEL_16;
      }

      if (v8 == 1)
      {
        if (!v6)
        {
LABEL_16:
          LOBYTE(v6) = v18 ^ 1;
LABEL_17:
          sub_100013AD0(&off_100598658, v9);
          sub_100166E18(v11);
          v19 = sub_100013CF4(v9);

          if (v19 & 1) == 0 && (v7)
          {
            sub_100166E18(v11);
          }

          v20 = sub_100166D28();
          sub_100166E18(v20);
          sub_100013AD0(&off_100598658, v9);
          sub_100166E18(v20);
          v21 = sub_100013CF4(v9);

          if (v21)
          {

            v12 = 0;
          }

          else if (v7)
          {
            v22 = sub_100166E18(v20);

            v12 = v22 & 1;
          }

          else
          {

            v12 = 1;
          }

          if (v23 >= 2)
          {
            if (v23 == 2)
            {
              v12 *= 2;
            }
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_6;
        }

        if (v6 == 1)
        {
          goto LABEL_17;
        }
      }

      else if (v8 || (v6 - 1) >= 2)
      {
        goto LABEL_16;
      }

      LOBYTE(v6) = 0;
      goto LABEL_17;
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_100187728()
{
  v1 = v0[4];
  sub_10018A510(v0[2], v0[3]);

  return swift_deallocClassInstance();
}

uint64_t sub_100187788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001877D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Int sub_100187820(unsigned __int8 a1)
{
  sub_1004A6E94();
  if ((a1 - 5) >= 6u)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    a1 -= 4;
  }

  sub_1004A6EB4(a1);
  return sub_1004A6F14();
}

void sub_100187894()
{
  v1 = *v0;
  if ((v1 - 5) >= 6)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    LOBYTE(v1) = v1 - 4;
  }

  sub_1004A6EB4(v1);
}

Swift::Int sub_1001878E0()
{
  v1 = *v0;
  sub_1004A6E94();
  if ((v1 - 5) >= 6)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    LOBYTE(v1) = v1 - 4;
  }

  sub_1004A6EB4(v1);
  return sub_1004A6F14();
}

uint64_t sub_100187950()
{
  v1 = *v0;
  v2 = 0x6E776F4472657375;
  v3 = 1668184435;
  v4 = 0x6E7953736465656ELL;
  v5 = 0x797469726F697270;
  if (v1 != 10)
  {
    v5 = 0x6E776F4472657375;
  }

  if (v1 != 9)
  {
    v4 = v5;
  }

  if (v1 != 8)
  {
    v3 = v4;
  }

  if (v1 == 7)
  {
    v2 = 1802723700;
  }

  if (v1 == 6)
  {
    v2 = 0x656C6269736976;
  }

  if (v1 == 5)
  {
    v2 = 0x7261655372657375;
  }

  if (*v0 <= 7u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100187A40()
{
  v1 = 1668184435;
  v2 = 0x686372616573;
  if (*v0 != 2)
  {
    v2 = 45;
  }

  if (*v0)
  {
    v1 = 0x64616F6C6E776F64;
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

uint64_t sub_100187AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {

    sub_1000923C8(0, v4, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (a3 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      v13 = v6;
      v11 = v6[2];
      v10 = v6[3];
      if (v11 >= v10 >> 1)
      {
        sub_1000923C8((v10 > 1), v11 + 1, 1);
        v6 = v13;
      }

      v6[2] = v11 + 1;
      *(v6 + v11 + 32) = (v8 & 0x40000000) != 0;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_100187BC8()
{
  if (*v0)
  {
    result = 0x69736956746F6E2ELL;
  }

  else
  {
    result = 0x656C62697369762ELL;
  }

  *v0;
  return result;
}

uint64_t sub_100187C0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a2();
    swift_beginAccess();
    v5 = *v3;
    *v3 = v4;
  }

  return v4;
}

unint64_t sub_100187C94@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = *result, v6 = *(result + 8), result = sub_100063B5C(*result, v6), (v7 & 1) != 0))
  {
    v8 = *(*(a2 + 56) + result);
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 12) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 12) = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t sub_100187D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_100187D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  result = sub_100011B00(*a1, v5, a2);
  if (result)
  {
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  return result;
}

uint64_t sub_100187D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 12))
  {
    result = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 2);
    v5 = *a1;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_100187DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  result = MailboxesSelectionUsage.subscript.getter(*a1, v5, a2);
  if ((v7 & 0x100) == 0 && (v7 & 1) != 0 && result)
  {
    *a3 = v4;
    *(a3 + 8) = v5;
    if (result == 1)
    {
      v8 = 8;
    }

    else
    {
      v8 = 7;
    }

    *(a3 + 12) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 12) = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t sub_100187EA0(uint64_t a1, int a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_1000919C8(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_1000919C8((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    v14 = *(v13 + 16);
    if (sub_1004A4754() > v11)
    {
      v15 = *v3;
      result = swift_isUniquelyReferenced_native();
      v16 = *v3;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v17 = *v3;
        v18 = sub_1004A4774();

        *v3 = v18;
        v16 = v18;
      }

      if (v16)
      {
        v19 = *(v16 + 16);
        v20 = *(*v6 + 16) + ~(*(v16 + 24) >> 6);
        return sub_1004A4714();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_100188190();
}

uint64_t sub_100188018(int a1, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v5 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = a3(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = a3(v11 > 1, v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  *(v8 + 4 * v12 + 32) = a1;
  v5[1] = v8;
  v13 = *v5;
  if (*v5)
  {
    swift_beginAccess();
    v14 = *(v13 + 16);
    if (sub_1004A4754() > v12)
    {
      v15 = *v5;
      result = swift_isUniquelyReferenced_native();
      v16 = *v5;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v17 = *v5;
        v18 = sub_1004A4774();

        *v5 = v18;
        v16 = v18;
      }

      if (v16)
      {
        v19 = *(v16 + 16);
        v20 = *(*v7 + 16) + ~(*(v16 + 24) >> 6);
        return sub_1004A4714();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_100188234();
}

uint64_t sub_100188190()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_1004A4784();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_1001882D4(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_100188234()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_1004A4784();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_100188354(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1001882D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = sub_1004A4784();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = sub_1004A4794();
    sub_1001883D4(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_100188354(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = sub_1004A4784();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = sub_1004A4794();
    sub_100188424(a1, (v10 + 16));
    return v10;
  }

  return result;
}

Swift::Int sub_100188474(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v6 = result + 8;
      while (1)
      {
        v7 = *(v6 + 16 * v5);
        v8 = *a3;
        sub_1004A6E94();
        sub_1004A6EB4(v7 | (v7 << 32));
        result = sub_1004A6F14();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            sub_1004A4744();
          }
        }

        result = sub_1004A4734();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100188580(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 4 * v6);
        v8 = *a3;
        sub_1004A6E94();
        sub_1004A6EE4(v7);
        result = sub_1004A6F14();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            sub_1004A4744();
          }
        }

        result = sub_1004A4734();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100188688(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_91:
    v94 = *v94;
    if (!v94)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_100141810(v9);
      v9 = result;
    }

    v86 = v9 + 16;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = &v9[16 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_100188C30((*a3 + 16 * *v88), (*a3 + 16 * *v90), (*a3 + 16 * v91), v94);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_115;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_116;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_117;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8 + 12);
      v12 = 16 * v10;
      v13 = *a3 + 16 * v10;
      v14 = *(v13 + 12);
      v15 = v10 + 2;
      v16 = (v13 + 44);
      while (v6 != v15)
      {
        v17 = *(v16 - 16) >= *v16;
        ++v15;
        v16 += 16;
        if ((((v14 < v11) ^ v17) & 1) == 0)
        {
          v8 = v15 - 1;
          if (v14 >= v11)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v14 >= v11)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_120;
      }

      if (v10 < v8)
      {
        v18 = 16 * v8 - 16;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v23 = (v22 + v12);
            v24 = (v22 + v18);
            v25 = *(v22 + v12);
            v26 = *(v22 + v12 + 8);
            v27 = *(v22 + v12 + 12);
            if (v12 != v18 || v23 >= v24 + 1)
            {
              *v23 = *v24;
            }

            v21 = v22 + v18;
            *v21 = v25;
            *(v21 + 8) = v26;
            *(v21 + 12) = v27;
          }

          ++v20;
          v18 -= 16;
          v12 += 16;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_119;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_121;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100085288((v39 > 1), v40 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v10;
    *(v42 + 5) = v8;
    v43 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v9 + 4);
          v46 = *(v9 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_60:
          if (v48)
          {
            goto LABEL_106;
          }

          v61 = &v9[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_109;
          }

          v67 = &v9[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_113;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v71 = &v9[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_74:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = &v9[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_111;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_81:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v83 = *&v9[16 * v82 + 32];
        v84 = *&v9[16 * v44 + 40];
        sub_100188C30((*a3 + 16 * v83), (*a3 + 16 * *&v9[16 * v44 + 32]), (*a3 + 16 * v84), v43);
        if (v4)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100141810(v9);
        }

        if (v82 >= *(v9 + 2))
        {
          goto LABEL_103;
        }

        v85 = &v9[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        result = sub_100141784(v44);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v9[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_104;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_105;
      }

      v56 = &v9[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_107;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_110;
      }

      if (v60 >= v52)
      {
        v78 = &v9[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_114;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v8 + 12;
  v30 = v10 - v8;
LABEL_33:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *v32;
    if (*(v32 - 16) >= v33)
    {
LABEL_32:
      ++v8;
      v29 += 16;
      --v30;
      if (v8 != v6)
      {
        goto LABEL_33;
      }

      v8 = v6;
      goto LABEL_40;
    }

    if (!v28)
    {
      break;
    }

    v34 = v32 - 12;
    v35 = *(v32 - 28);
    *(v32 - 16) = v33;
    v32 -= 16;
    v36 = *(v32 + 4);
    v37 = *(v32 + 3);
    *v34 = v35;
    *(v32 - 12) = v36;
    *(v32 - 1) = v37;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_100188C30(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
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
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
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

      if (v4[12] < v6[12])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v19 = v5 + 16;
      if (*(v6 - 4) < *(v15 - 4))
      {
        v21 = v6 - 16;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 16, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 16;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v15 -= 16;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_100188E2C(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1000919C8(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = sub_1004A4784();
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = sub_1004A4784();
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v17 = *(v7 + 16);
  if (v13 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  v19 = *(v7 + 16);
  result = sub_1004A4784();
  if (result <= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = result;
  }

  if (v20 < v11)
  {
    if (v13 <= v20)
    {
      v15 = v20;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v21 = sub_1001882D4(v7, v15, 0, v13);

    *v3 = v21;
    return result;
  }

  if (!v10 || (v22 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v23 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v24 = *v3;
  v23 = sub_1004A4774();

  *v3 = v23;
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v23 + 24) & 0x3FLL) != v13)
  {
    *(v23 + 24) = *(v23 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_10018900C(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_100091DA8(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = sub_1004A4784();
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = sub_1004A4784();
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v17 = *(v7 + 16);
  if (v13 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  v19 = *(v7 + 16);
  result = sub_1004A4784();
  if (result <= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = result;
  }

  if (v20 < v11)
  {
    if (v13 <= v20)
    {
      v15 = v20;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v21 = sub_100188354(v7, v15, 0, v13);

    *v3 = v21;
    return result;
  }

  if (!v10 || (v22 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v23 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v24 = *v3;
  v23 = sub_1004A4774();

  *v3 = v23;
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v23 + 24) & 0x3FLL) != v13)
  {
    *(v23 + 24) = *(v23 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

unint64_t sub_1001891EC(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_100189494(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= sub_1004A4764())
  {
LABEL_16:
    v14 = sub_100189494(a1);
    sub_100188190();
    return v14;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_1004A4774();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {
    result = sub_100189788(a2, (v10 + 16), v10 + 32, v2);
    v13 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v13 >= a1)
    {
      sub_100189B48(a1, v13, v4, (v10 + 16));
      return sub_100189494(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_100189330(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1001895C0(a1, sub_100141A40);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= sub_1004A4764())
  {
LABEL_16:
    v14 = sub_1001895C0(a1, sub_100141A40);
    sub_100188234();
    return v14;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_1004A4774();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {
    result = sub_100189968(a2, (v10 + 16), v10 + 32, v2);
    v13 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v13 >= a1)
    {
      sub_100189F38(a1, v13, v4, (v10 + 16));
      return sub_1001895C0(a1, sub_100141A40);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100189494(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141998(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v7 += 32;
    v9 = *(v7 + 8);
    memmove(v7, (v7 + 16), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100189520@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141A78(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    result = memmove(v9, (v9 + 24), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1001895C0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 4 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 36), 4 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

uint64_t sub_10018964C@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141AFC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 176 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 13, 176 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100189704(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141B5C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 2 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 34), 2 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_100189788(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v20 = sub_1004A46F4();
  sub_1004A4744();
  if (v20)
  {
    v7 = sub_1004A4704();
    while (1)
    {
      result = sub_1004A4724();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = *(v11 + 16 * result + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v13 | (v13 << 32));
      result = sub_1004A6F14();
      v14 = 1 << *a2;
      v15 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_22;
      }

      v16 = v15 & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v16 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v17 = sub_1004A4724();
      if ((v18 & 1) == 0)
      {
        v8 = ((v15 & ((v17 - (a2[1] >> 6)) >> 63)) + v17 - (a2[1] >> 6)) ^ v15;
      }

      v6 = a1;
      sub_1004A4714();
LABEL_5:
      sub_1004A4744();
    }

    if (v16 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_1004A4714();
}

unint64_t sub_100189968(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v20 = sub_1004A46F4();
  sub_1004A4744();
  if (v20)
  {
    v7 = sub_1004A4704();
    while (1)
    {
      result = sub_1004A4724();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = *(v11 + 4 * result + 32);
      sub_1004A6E94();
      sub_1004A6EE4(v13);
      result = sub_1004A6F14();
      v14 = 1 << *a2;
      v15 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_22;
      }

      v16 = v15 & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v16 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v17 = sub_1004A4724();
      if ((v18 & 1) == 0)
      {
        v8 = ((v15 & ((v17 - (a2[1] >> 6)) >> 63)) + v17 - (a2[1] >> 6)) ^ v15;
      }

      v6 = a1;
      sub_1004A4714();
LABEL_5:
      sub_1004A4744();
    }

    if (v16 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_1004A4714();
}

void sub_100189B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_54;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 < (v9 - v5) / 2)
    {
      v10 = *a4;
      if (sub_1004A4754() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 < a1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (a1)
        {
          v11 = 0;
          v12 = a3 + 40;
          while (1)
          {
            v13 = *(v12 + 16 * v11);
            v14 = *a4;
            sub_1004A6E94();
            sub_1004A6EB4(v13 | (v13 << 32));
            sub_1004A6F14();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004A46F4())
            {
              while (1)
              {
                v15 = sub_1004A4724();
                if ((v16 & 1) == 0 && v15 == v11)
                {
                  break;
                }

                sub_1004A4744();
              }
            }

            if (__OFADD__(v11, v5))
            {
              goto LABEL_51;
            }

            ++v11;
            sub_1004A4734();
            if (v11 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_1004A46F4();
      v23 = sub_1004A4724();
      if ((v24 & 1) != 0 || v23 >= a1)
      {
LABEL_29:
        sub_1004A4744();
LABEL_17:
        v17 = a4[1];
        if (__OFSUB__(v17 >> 6, v5))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v18 = 1 << *a4;
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v19)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v21 = (v20 & (((v17 >> 6) - v5) >> 63)) + (v17 >> 6) - v5;
        if (v21 < v20)
        {
          v20 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v21 - v20) << 6);
        return;
      }

      if (!__OFADD__(v23, v5))
      {
        sub_1004A4734();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_1004A46F4();
      v25 = sub_1004A4724();
      if ((v26 & 1) == 0 && v25 >= v4)
      {
        if (__OFSUB__(v25, v5))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_1004A4734();
      }

      sub_1004A4744();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v22 = *a4;
    if ((v9 - a2) >= sub_1004A4754() / 3)
    {
      goto LABEL_35;
    }

    if (v9 < v4)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v4 < 0)
    {
LABEL_61:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      v27 = a3 + 40;
      while (1)
      {
        v28 = *(v27 + 16 * v4);
        v29 = *a4;
        sub_1004A6E94();
        sub_1004A6EB4(v28 | (v28 << 32));
        sub_1004A6F14();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            v30 = sub_1004A4724();
            if ((v31 & 1) == 0 && v30 == v4)
            {
              break;
            }

            sub_1004A4744();
          }
        }

        sub_1004A4734();
        if (++v4 == v9)
        {
          return;
        }
      }

      goto LABEL_53;
    }
  }
}