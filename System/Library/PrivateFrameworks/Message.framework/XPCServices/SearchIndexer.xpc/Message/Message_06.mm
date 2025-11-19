void *sub_100070BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v44 = a3;
  v52 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v52 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v52);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v42 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v42 - v18;
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  __chkstk_darwin(v22);
  v24 = &v42 - v23;
  result = sub_10001FE00(a1, a2, a5);
  v48 = result[2];
  if (v48)
  {
    v43 = v8;
    v26 = 0;
    v46 = result + 4;
    v49 = result;
    do
    {
      if (v26 >= result[2])
      {
        __break(1u);
        return result;
      }

      v54 = v26;
      v27 = *(v53 + 16);
      if (!v27)
      {
        goto LABEL_3;
      }

      v55 = *(v46 + v54);
      v28 = v53 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v29 = *(v47 + 72);
      v30 = v28;
      v31 = v27;
      while (1)
      {
        sub_10006F6C4(v30, v24, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v24, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v30 += v29;
        if (!--v31)
        {
          goto LABEL_3;
        }
      }

      v32 = *(v21 + 2);
      sub_100020EDC(*v21);
      if (v32 != v55)
      {
        goto LABEL_8;
      }

      v33 = v45;
      while (1)
      {
        sub_10006F6C4(v28, v33, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v33, v16, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v16, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v28 += v29;
        if (!--v27)
        {
LABEL_22:
          v41 = 1;
          goto LABEL_24;
        }
      }

      v34 = *(v16 + 2);
      sub_100020EDC(*v16);
      if (v34 != v55)
      {
        goto LABEL_13;
      }

      v35 = *(v44 + 16);
      if (v35)
      {
        v36 = v44 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v37 = *(v43 + 72);
        do
        {
          v38 = v50;
          sub_10006F6C4(v36, v50, type metadata accessor for TaskHistory.Running);
          v39 = v51;
          sub_1000738FC(v38, v51, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v40 = *(v39 + 4);
            sub_100020EDC(*(v39 + 8));
            if (v40 == v55)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v39, type metadata accessor for TaskHistory.Running);
          }

          v36 += v37;
          --v35;
        }

        while (v35);
      }

LABEL_3:
      v26 = v54 + 1;
      result = v49;
    }

    while (v54 + 1 != v48);
  }

  v41 = 0;
LABEL_24:

  return v41;
}

void *sub_10007105C(int a1, uint64_t a2)
{
  v46 = a1;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v4 = *(*(Missing - 8) + 64);
  __chkstk_darwin(Missing);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005CEA18, &qword_1004D14D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v45 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = *(a2 + 16);
  v19 = _swiftEmptyArrayStorage;
  v41 = v15;
  if (v18)
  {
    v20 = *(v15 + 72);
    v42 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v43 = v14;
    v21 = a2 + v42;
    v44 = Missing;
    v22 = v14;
    do
    {
      sub_10000E268(v21, v17, &qword_1005CEA18, &qword_1004D14D0);
      sub_10006F6C4(&v17[*(v22 + 52)], v6, type metadata accessor for FindMissingMessages.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v46 != 2 && ((v6[8] ^ v46) & 1) == 0)
        {
LABEL_11:
          sub_100025FDC(v17, v12, &qword_1005CEA18, &qword_1004D14D0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100091F48(0, v19[2] + 1, 1);
            v19 = v47;
          }

          v30 = v19[2];
          v29 = v19[3];
          if (v30 >= v29 >> 1)
          {
            sub_100091F48(v29 > 1, v30 + 1, 1);
            v19 = v47;
          }

          v19[2] = v30 + 1;
          sub_100025FDC(v12, v19 + v42 + v30 * v20, &qword_1005CEA18, &qword_1004D14D0);
          v22 = v43;
          Missing = v44;
          goto LABEL_4;
        }
      }

      else
      {
        v23 = Missing;
        v24 = v20;
        v25 = v12;
        v26 = v46;
        sub_10006F72C(v6, type metadata accessor for FindMissingMessages.CommandID);
        v27 = v26 == 2;
        v12 = v25;
        v20 = v24;
        Missing = v23;
        if (v27)
        {
          goto LABEL_11;
        }
      }

      sub_100025F40(v17, &qword_1005CEA18, &qword_1004D14D0);
LABEL_4:
      v21 += v20;
      --v18;
    }

    while (v18);
  }

  v31 = v19[2];
  if (v31)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_100091A28(0, v31, 0);
    v32 = v47;
    v33 = v19 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v34 = *(v41 + 72);
    do
    {
      v35 = v45;
      sub_10000E268(v33, v45, &qword_1005CEA18, &qword_1004D14D0);
      v36 = *v35;
      sub_100025F40(v35, &qword_1005CEA18, &qword_1004D14D0);
      v47 = v32;
      v38 = v32[2];
      v37 = v32[3];
      if (v38 >= v37 >> 1)
      {
        sub_100091A28((v37 > 1), v38 + 1, 1);
        v32 = v47;
      }

      v32[2] = v38 + 1;
      *(v32 + v38 + 8) = v36;
      v33 += v34;
      --v31;
    }

    while (v31);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v32;
}

uint64_t sub_100071488(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 48;
    while (1)
    {
      v6 = (v5 + 24 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_26;
        }

        v8 = *(v6 - 4);
        result = *(v6 - 1);
        v9 = *v6;
        v10 = *v6 >> 60;
        if (v10 != 11)
        {
          break;
        }

        if (v3 == 2)
        {
          goto LABEL_14;
        }

LABEL_5:
        result = sub_100073A18(result, v9);
LABEL_6:
        ++v7;
        v6 += 3;
        if (v4 == v2)
        {
          goto LABEL_19;
        }
      }

      if (v10 == 15)
      {
        break;
      }

      if (v3 != 1)
      {
        goto LABEL_6;
      }

LABEL_14:
      v11 = *(v6 - 1);
      v12 = *v6;
      sub_100073A30(result, v9);
      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = v5;
      if ((result & 1) == 0)
      {
        result = sub_100092188(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      v15 = v12;
      v16 = v11;
      if (v14 >= v13 >> 1)
      {
        result = sub_100092188((v13 > 1), v14 + 1, 1);
        v16 = v11;
        v15 = v12;
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v17 = &_swiftEmptyArrayStorage[3 * v14];
      *(v17 + 8) = v8;
      v17[5] = v16;
      v17[6] = v15;
      v5 = v23;
      if (v4 == v2)
      {
        goto LABEL_19;
      }
    }

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

LABEL_19:
  v18 = _swiftEmptyArrayStorage[2];
  if (v18)
  {
    sub_100091A28(0, v18, 0);
    v19 = _swiftEmptyArrayStorage[2];
    v20 = 4;
    do
    {
      v21 = _swiftEmptyArrayStorage[v20];
      v22 = _swiftEmptyArrayStorage[3];
      if (v19 >= v22 >> 1)
      {
        sub_100091A28((v22 > 1), v19 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      *(&_swiftEmptyArrayStorage[4] + v19) = v21;
      v20 += 3;
      ++v19;
      --v18;
    }

    while (v18);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000716D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, __n128))
{
  v59 = a3;
  v51 = a2;
  v58 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v58);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v57 = &v48 - v13;
  v14 = type metadata accessor for TaskHistory.Previous(0);
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  __chkstk_darwin(v21);
  v23 = &v48 - v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v48 - v26;
  result = a5(a1, a4, v25);
  v54 = *(result + 16);
  if (v54)
  {
    v55 = v11;
    v56 = result;
    v48 = v8;
    v49 = v20;
    v29 = 0;
    v52 = result + 32;
    v50 = v17;
    do
    {
      if (v29 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v60 = v29;
      v30 = *(v59 + 16);
      if (!v30)
      {
        goto LABEL_3;
      }

      v61 = *(v52 + 4 * v60);
      v31 = v59 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v32 = *(v53 + 72);
      v33 = v31;
      v34 = v30;
      while (1)
      {
        sub_10006F6C4(v33, v27, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v27, v23, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_10006F72C(v23, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v33 += v32;
        if (!--v34)
        {
          goto LABEL_3;
        }
      }

      v35 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v36 = *&v23[*(v35 + 48)];
      sub_10006F72C(v23, type metadata accessor for ClientCommand);
      if (v36 != v61)
      {
        goto LABEL_8;
      }

      v38 = v49;
      v37 = v50;
      while (1)
      {
        sub_10006F6C4(v31, v38, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v38, v37, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_10006F72C(v37, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v31 += v32;
        if (!--v30)
        {
LABEL_22:
          v47 = 1;
          goto LABEL_24;
        }
      }

      v39 = *(v37 + *(v35 + 48));
      sub_10006F72C(v37, type metadata accessor for ClientCommand);
      if (v39 != v61)
      {
        goto LABEL_13;
      }

      v40 = *(v51 + 16);
      if (v40)
      {
        v41 = v51 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
        v42 = *(v48 + 72);
        do
        {
          v43 = v57;
          sub_10006F6C4(v41, v57, type metadata accessor for TaskHistory.Running);
          v44 = v55;
          sub_1000738FC(v43, v55, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_10006F72C(v44, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v45 = *(v44 + 8);
            v46 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_10006F72C(v44 + *(v46 + 64), type metadata accessor for ClientCommand);
            if (v45 == v61)
            {
              goto LABEL_22;
            }
          }

          v41 += v42;
          --v40;
        }

        while (v40);
      }

LABEL_3:
      v29 = v60 + 1;
      result = v56;
    }

    while (v60 + 1 != v54);
  }

  v47 = 0;
LABEL_24:

  return v47;
}

void *sub_100071BC4(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = type metadata accessor for DownloadTask.CommandID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100091DE8(0, v12, 0);
    v13 = v20;
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    do
    {
      sub_10000E268(v14, v6, &qword_1005CEA38, &qword_1004D14F0);
      sub_1000738FC(&v6[*(v2 + 52)], v11, type metadata accessor for DownloadTask.CommandID);
      v20 = v13;
      v17 = v13[2];
      v16 = v13[3];
      if (v17 >= v16 >> 1)
      {
        sub_100091DE8(v16 > 1, v17 + 1, 1);
        v13 = v20;
      }

      v13[2] = v17 + 1;
      sub_1000738FC(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, type metadata accessor for DownloadTask.CommandID);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

void *sub_100071DFC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CEA18, &qword_1004D14D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v8 = *(Missing - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(Missing - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100091F28(0, v12, 0);
    v13 = v20;
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    do
    {
      sub_10000E268(v14, v6, &qword_1005CEA18, &qword_1004D14D0);
      sub_1000738FC(&v6[*(v2 + 52)], v11, type metadata accessor for FindMissingMessages.CommandID);
      v20 = v13;
      v17 = v13[2];
      v16 = v13[3];
      if (v17 >= v16 >> 1)
      {
        sub_100091F28(v16 > 1, v17 + 1, 1);
        v13 = v20;
      }

      v13[2] = v17 + 1;
      sub_1000738FC(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, type metadata accessor for FindMissingMessages.CommandID);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_100072034(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 48;
    do
    {
      v6 = (v5 + 24 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_22;
        }

        v8 = *v6;
        if (*v6)
        {
          break;
        }

        if (v3)
        {
          goto LABEL_10;
        }

LABEL_5:
        ++v7;
        v6 += 24;
        if (v4 == v2)
        {
          goto LABEL_15;
        }
      }

      if (v3)
      {
        goto LABEL_5;
      }

LABEL_10:
      v9 = *(v6 - 4);
      v10 = *(v6 - 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100091F68(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_100091F68((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[3 * v12];
      *(v13 + 8) = v9;
      v13[5] = v10;
      *(v13 + 48) = v8;
    }

    while (v4 != v2);
  }

LABEL_15:
  v14 = _swiftEmptyArrayStorage[2];
  if (v14)
  {
    sub_100091AA8(0, v14, 0);
    v15 = _swiftEmptyArrayStorage[2];
    v16 = 4;
    do
    {
      v17 = _swiftEmptyArrayStorage[v16];
      v18 = _swiftEmptyArrayStorage[3];
      if (v15 >= v18 >> 1)
      {
        sub_100091AA8((v18 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      *(&_swiftEmptyArrayStorage[4] + v15) = v17;
      v16 += 3;
      ++v15;
      --v14;
    }

    while (v14);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10007222C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, __n128))
{
  v54 = a3;
  v45 = a2;
  v53 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v53);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v43 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v46 = &v43 - v18;
  __chkstk_darwin(v19);
  v21 = &v43 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v43 - v24;
  result = a5(a1 & 1, a4, v23);
  v49 = *(result + 16);
  if (v49)
  {
    v44 = v8;
    v27 = 0;
    v47 = result + 32;
    v50 = result;
    do
    {
      if (v27 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v55 = v27;
      v28 = *(v54 + 16);
      if (!v28)
      {
        goto LABEL_3;
      }

      v56 = *(v47 + 4 * v55);
      v29 = v54 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v30 = *(v48 + 72);
      v31 = v29;
      v32 = v28;
      while (1)
      {
        sub_10006F6C4(v31, v25, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v25, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v31 += v30;
        if (!--v32)
        {
          goto LABEL_3;
        }
      }

      v33 = *(v21 + 2);
      sub_100020EDC(*v21);
      if (v33 != v56)
      {
        goto LABEL_8;
      }

      v34 = v46;
      while (1)
      {
        sub_10006F6C4(v29, v34, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v34, v16, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v16, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v29 += v30;
        if (!--v28)
        {
LABEL_22:
          v42 = 1;
          goto LABEL_24;
        }
      }

      v35 = *(v16 + 2);
      sub_100020EDC(*v16);
      if (v35 != v56)
      {
        goto LABEL_13;
      }

      v36 = *(v45 + 16);
      if (v36)
      {
        v37 = v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v38 = *(v44 + 72);
        do
        {
          v39 = v51;
          sub_10006F6C4(v37, v51, type metadata accessor for TaskHistory.Running);
          v40 = v52;
          sub_1000738FC(v39, v52, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v41 = *(v40 + 4);
            sub_100020EDC(*(v40 + 8));
            if (v41 == v56)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v40, type metadata accessor for TaskHistory.Running);
          }

          v37 += v38;
          --v36;
        }

        while (v36);
      }

LABEL_3:
      v27 = v55 + 1;
      result = v50;
    }

    while (v55 + 1 != v49);
  }

  v42 = 0;
LABEL_24:

  return v42;
}

uint64_t sub_1000726AC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 48;
    do
    {
      v6 = (v5 + 24 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_26;
        }

        v8 = *(v6 - 4);
        result = *(v6 - 1);
        v9 = *v6;
        v10 = (*v6 >> 60) & 3;
        if (!v10)
        {
          if (!v3)
          {
            goto LABEL_14;
          }

          goto LABEL_5;
        }

        if (v10 != 1)
        {
          break;
        }

        if (v3 == 2)
        {
          goto LABEL_14;
        }

LABEL_5:
        ++v7;
        v6 += 3;
        if (v4 == v2)
        {
          goto LABEL_19;
        }
      }

      if (v3 != 1)
      {
        result = sub_1000739FC(result, v9);
        goto LABEL_5;
      }

LABEL_14:
      v11 = *(v6 - 1);
      v12 = *v6;
      sub_1000739E0(result, v9);
      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = v5;
      if ((result & 1) == 0)
      {
        result = sub_100092168(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      v15 = v12;
      v16 = v11;
      if (v14 >= v13 >> 1)
      {
        result = sub_100092168((v13 > 1), v14 + 1, 1);
        v16 = v11;
        v15 = v12;
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v17 = &_swiftEmptyArrayStorage[3 * v14];
      *(v17 + 8) = v8;
      v17[5] = v16;
      v17[6] = v15;
      v5 = v23;
    }

    while (v4 != v2);
  }

LABEL_19:
  v18 = _swiftEmptyArrayStorage[2];
  if (v18)
  {
    sub_100091AA8(0, v18, 0);
    v19 = _swiftEmptyArrayStorage[2];
    v20 = 4;
    do
    {
      v21 = _swiftEmptyArrayStorage[v20];
      v22 = _swiftEmptyArrayStorage[3];
      if (v19 >= v22 >> 1)
      {
        sub_100091AA8((v22 > 1), v19 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      *(&_swiftEmptyArrayStorage[4] + v19) = v21;
      v20 += 3;
      ++v19;
      --v18;
    }

    while (v18);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000728F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, __n128))
{
  v54 = a3;
  v45 = a2;
  v53 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v53);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v43 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v46 = &v43 - v18;
  __chkstk_darwin(v19);
  v21 = &v43 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v43 - v24;
  result = a5(a1, a4, v23);
  v49 = *(result + 16);
  if (v49)
  {
    v44 = v8;
    v27 = 0;
    v47 = result + 32;
    v50 = result;
    do
    {
      if (v27 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v55 = v27;
      v28 = *(v54 + 16);
      if (!v28)
      {
        goto LABEL_3;
      }

      v56 = *(v47 + 4 * v55);
      v29 = v54 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v30 = *(v48 + 72);
      v31 = v29;
      v32 = v28;
      while (1)
      {
        sub_10006F6C4(v31, v25, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v25, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v31 += v30;
        if (!--v32)
        {
          goto LABEL_3;
        }
      }

      v33 = *(v21 + 2);
      sub_100020EDC(*v21);
      if (v33 != v56)
      {
        goto LABEL_8;
      }

      v34 = v46;
      while (1)
      {
        sub_10006F6C4(v29, v34, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v34, v16, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v16, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v29 += v30;
        if (!--v28)
        {
LABEL_22:
          v42 = 1;
          goto LABEL_24;
        }
      }

      v35 = *(v16 + 2);
      sub_100020EDC(*v16);
      if (v35 != v56)
      {
        goto LABEL_13;
      }

      v36 = *(v45 + 16);
      if (v36)
      {
        v37 = v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v38 = *(v44 + 72);
        do
        {
          v39 = v51;
          sub_10006F6C4(v37, v51, type metadata accessor for TaskHistory.Running);
          v40 = v52;
          sub_1000738FC(v39, v52, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v41 = *(v40 + 4);
            sub_100020EDC(*(v40 + 8));
            if (v41 == v56)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v40, type metadata accessor for TaskHistory.Running);
          }

          v37 += v38;
          --v36;
        }

        while (v36);
      }

LABEL_3:
      v27 = v55 + 1;
      result = v50;
    }

    while (v55 + 1 != v49);
  }

  v42 = 0;
LABEL_24:

  return v42;
}

uint64_t sub_100072D74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a3;
  v83 = a4;
  v81 = a2;
  v84 = a1;
  v5 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v68 - v8;
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v68 - v12;
  v77 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
  v14 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v74 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = (&v68 - v17);
  v19 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v78 = *(v19 - 8);
  v79 = v19;
  v20 = *(v78 + 64);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v68 - v24;
  v26 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v73 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v68 - v30;
  v32 = *(v4 + 72);
  v75 = *(v4 + 64);
  v76 = v32;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v33 = v4 + MissingMessages[18];
  if (*(v33 + 24) && ((v84 >> 59) & 0x1E | (v84 >> 2) & 1) == 0xA)
  {
    v69 = v22;
    v70 = v9;
    v71 = v6;
    v72 = v5;
    v34 = swift_projectBox();
    sub_10000E268(v34, v18, &qword_1005CD4F8, &unk_1004CF790);
    v35 = *v18;
    v36 = *(v77 + 48);
    v37 = *(v77 + 64);
    if (v76 == v18[1])
    {
      v38 = sub_1000FFC98(v75, *v18);

      if (v38)
      {
        sub_100025FDC(v18 + v36, v31, &unk_1005D91B0, &unk_1004CF400);
        v39 = sub_100025FDC(v18 + v37, v25, &qword_1005CD1D0, &unk_1004CF2C0);
        v40 = *(v33 + 24);
        __chkstk_darwin(v39);
        *(&v68 - 2) = v25;
        v41 = sub_100154CA0(sub_100073964, (&v68 - 4), v40);
        v5 = v72;
        if ((v42 & 1) == 0)
        {
          v43 = v41;
          if (sub_100070294(v41, 0, v81, v82, v83, sub_10001FB54))
          {
            v44 = v40;
            result = swift_isUniquelyReferenced_nonNull_native();
            v9 = v70;
            v6 = v71;
            if (result)
            {
              if ((v43 & 0x8000000000000000) == 0)
              {
                goto LABEL_9;
              }
            }

            else
            {
              result = sub_1001398E0(v44);
              v44 = result;
              if ((v43 & 0x8000000000000000) == 0)
              {
LABEL_9:
                v68 = v4;
                if (v43 < v44[2])
                {
                  v46 = *(_s20GrowWindowOfInterestV6ResultVMa() - 8);
                  v47 = v44 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43;
                  sub_100077584(v31);
                  sub_100025F40(v31, &unk_1005D91B0, &unk_1004CF400);
                  *(v33 + 24) = v44;
                  sub_100025F40(v25, &qword_1005CD1D0, &unk_1004CF2C0);
                  v4 = v68;
LABEL_14:
                  v22 = v69;
                  goto LABEL_15;
                }

LABEL_32:
                __break(1u);
                return result;
              }
            }

            __break(1u);
            goto LABEL_32;
          }
        }

        sub_100025F40(v31, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v25, &qword_1005CD1D0, &unk_1004CF2C0);
LABEL_13:
        v9 = v70;
        v6 = v71;
        goto LABEL_14;
      }
    }

    else
    {
      v48 = *v18;
    }

    sub_100025F40(v18 + v37, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025F40(v18 + v36, &unk_1005D91B0, &unk_1004CF400);
    v5 = v72;
    goto LABEL_13;
  }

LABEL_15:
  result = sub_100070294(0, 1, v81, v82, v83, sub_10001FB54);
  if ((result & 1) == 0)
  {
    return result;
  }

  v49 = v4 + MissingMessages[11];
  v50 = *v49;
  v51 = *(v49 + 8) | (*(v49 + 12) << 32);
  v52 = *(v49 + 13);
  v53 = *(v49 + 16);
  LOBYTE(v49) = *(v49 + 20);
  v86 = v52;
  v85 = v49;
  sub_10007A65C(v50, v13);
  if ((*(v78 + 48))(v13, 1, v79) == 1)
  {
    v54 = &qword_1005CD518;
    v55 = &qword_1004CF2F0;
    v56 = v13;
  }

  else
  {
    sub_100025FDC(v13, v22, &qword_1005CD1D0, &unk_1004CF2C0);
    if (((v84 >> 59) & 0x1E | (v84 >> 2) & 1) == 0xA)
    {
      v57 = v22;
      v58 = swift_projectBox();
      v59 = v74;
      sub_10000E268(v58, v74, &qword_1005CD4F8, &unk_1004CF790);
      v60 = *v59;
      v61 = *(v77 + 48);
      v62 = *(v77 + 64);
      if (v76 == v59[1])
      {
        v63 = sub_1000FFC98(v75, *v59);

        if (v63)
        {
          v64 = v73;
          sub_100025FDC(v59 + v61, v73, &unk_1005D91B0, &unk_1004CF400);
          sub_100016D2C();
          v65 = sub_1004A7034();
          sub_100025F40(v59 + v62, &qword_1005CD1D0, &unk_1004CF2C0);
          if (v65)
          {
            v66 = MissingMessages[17];
            (*(v6 + 16))(v9, v64, v5);
            sub_1004A7104();
          }

          sub_100025F40(v64, &unk_1005D91B0, &unk_1004CF400);
          v54 = &qword_1005CD1D0;
          v55 = &unk_1004CF2C0;
          v56 = v57;
          return sub_100025F40(v56, v54, v55);
        }
      }

      else
      {
        v67 = *v59;
      }

      sub_100025F40(v57, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v59 + v62, &qword_1005CD1D0, &unk_1004CF2C0);
      v54 = &unk_1005D91B0;
      v55 = &unk_1004CF400;
      v56 = v59 + v61;
    }

    else
    {
      v54 = &qword_1005CD1D0;
      v55 = &unk_1004CF2C0;
      v56 = v22;
    }
  }

  return sub_100025F40(v56, v54, v55);
}

uint64_t sub_100073540(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MailboxTaskLogger(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  if ((*(a5 + 4) & 1) == 0)
  {
    v19 = *a5;
    v37 = a4;
    v16 = sub_10010AD6C(a2, a3, v19);
    a4 = v37;
    if ((v16 & 0x100000000) == 0)
    {
      v36 = v16;
      sub_10006F6C4(a6, v18, type metadata accessor for MailboxTaskLogger);
      sub_10006F6C4(a6, v14, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v20 = sub_1004A4A54();
      v21 = sub_1004A6004();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v34 = v21;
        v23 = v22;
        v35 = swift_slowAlloc();
        v40 = v35;
        *v23 = 68159491;
        *(v23 + 4) = 2;
        *(v23 + 8) = 256;
        v32 = &v14[*(v11 + 20)];
        v33 = v20;
        *(v23 + 10) = *v32;
        *(v23 + 11) = 2082;
        v24 = &v18[*(v11 + 20)];
        *(v23 + 13) = sub_10015BA6C(*(v24 + 1), *(v24 + 2), &v40);
        *(v23 + 21) = 1040;
        *(v23 + 23) = 2;
        *(v23 + 27) = 512;
        LODWORD(v32) = *(v32 + 12);
        sub_10006F72C(v14, type metadata accessor for MailboxTaskLogger);
        *(v23 + 29) = v32;
        *(v23 + 31) = 2160;
        *(v23 + 33) = 0x786F626C69616DLL;
        *(v23 + 41) = 2085;
        v25 = *(v24 + 4);
        LODWORD(v24) = *(v24 + 10);

        sub_10006F72C(v18, type metadata accessor for MailboxTaskLogger);
        v38 = v25;
        v39 = v24;
        v26 = sub_1004A5824();
        v28 = sub_10015BA6C(v26, v27, &v40);

        *(v23 + 43) = v28;
        *(v23 + 51) = 1024;
        *(v23 + 53) = v36;
        v29 = v33;
        _os_log_impl(&_mh_execute_header, v33, v34, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating server next UID to %u.", v23, 0x39u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10006F72C(v14, type metadata accessor for MailboxTaskLogger);

        v16 = sub_10006F72C(v18, type metadata accessor for MailboxTaskLogger);
      }

      a4 = v37;
    }
  }

  __chkstk_darwin(v16);
  *(&v31 - 4) = a5;
  *(&v31 - 3) = a6;
  *(&v31 - 2) = a4;
  return sub_10012D0D0(a2, a3, sub_1000738E4, (&v31 - 6));
}

uint64_t sub_1000738FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100073984(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1000739C8(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_100020EDC(a2);
  }

  return result;
}

uint64_t sub_1000739E0(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_100014CEC(result, a2);
}

uint64_t sub_1000739FC(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_100014D40(result, a2);
}

uint64_t sub_100073A18(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_100014D40(a1, a2);
  }

  return a1;
}

uint64_t sub_100073A30(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_100014CEC(a1, a2);
  }

  return a1;
}

uint64_t sub_100073A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15MissingMessagesO10NewMissingVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 3)
    {
      return v12 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100073B2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s15MissingMessagesO10NewMissingVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void sub_100073BE8()
{
  sub_1000576D4(319, &qword_1005CD840);
  if (v0 <= 0x3F)
  {
    _s15MissingMessagesO10NewMissingVMa(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100073C9C()
{
  sub_100073D3C(319, &qword_1005CE2B8, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100073D3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for WindowOfInterestSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WindowOfInterestSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100073DF4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100073E10(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_100073E40()
{
  result = qword_1005CEB88;
  if (!qword_1005CEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CEB88);
  }

  return result;
}

unint64_t sub_100073E98()
{
  result = qword_1005CEBB0;
  if (!qword_1005CEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CEBB0);
  }

  return result;
}

unint64_t sub_100073EF0()
{
  result = qword_1005CEBD8;
  if (!qword_1005CEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CEBD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindMissingMessages.CommandID.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FindMissingMessages.CommandID.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *sub_100074098(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1000740D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100074118(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100074168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v110 = a5;
  *&v111 = a4;
  v105 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  v12 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v108 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v104 = &v101 - v15;
  v16 = sub_10000C9C0(&qword_1005CDA60, &qword_1004CF7C8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v101 - v18;
  v109 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v107 = *(v109 - 8);
  v20 = *(v107 + 64);
  __chkstk_darwin(v109);
  v102 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v106 = &v101 - v23;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v25 = *(Missing - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(Missing);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v101 - v30;
  result = sub_1000777F0(v32, v33, v34, a6);
  if ((a3 * 3) >> 64 != (3 * a3) >> 63)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v103 = v19;
  if (result < (3 * a3) / 4)
  {
    v37 = sub_100077BAC(result, v111 & 0xFFFFFFFF00000101, v36, a6);
    if ((v37 & 0x100000000) == 0)
    {
      v38 = v37;
      if (v37 >= 2)
      {
        v101 = a7;
        result = sub_1000790F8(a1, a2);
        v39 = result;
        v40 = *(result + 16);
        if (v40)
        {
          v41 = 0;
          while (v41 < *(v39 + 16))
          {
            sub_100079780(v39 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v41, v31, type metadata accessor for FindMissingMessages.CommandID);
            sub_100079718(v31, v28, type metadata accessor for FindMissingMessages.CommandID);
            if (swift_getEnumCaseMultiPayload() == 1)
            {

              goto LABEL_28;
            }

            ++v41;
            result = sub_100078ACC(v28, type metadata accessor for FindMissingMessages.CommandID);
            if (v40 == v41)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_10:
        v42 = v111;
        v43 = (v111 >> 8) & 1;

        v44 = *(a6 + 16);
        if ((v43 | v42))
        {
          if ((v110 & 0x100000000) != 0)
          {
            sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
            v77 = swift_allocBox();
            v79 = v78;
            v115[0] = v38;
            LODWORD(v114) = v38;
            v80 = sub_100016948();
            static MessageIdentifier.... infix(_:_:)(v115, &v114, &type metadata for UID, v80, v112);
            *v115 = v112[0];
            v114 = Range<>.init<A>(_:)(v115, &type metadata for UID, v80);
            sub_100016D2C();
            sub_1004A7124();
            v81 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
            (*(*(v81 - 8) + 56))(v79, 0, 1, v81);
            v82 = v77 | 0xA000000000000000;
            v60 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
            v83 = v101;
            v84 = (v101 + *(v60 + 48));
            *v101 = v44;
            *(v83 + 8) = 0;
            if ((v111 & 0x100) != 0)
            {
              *v84 = v82;
            }

            else
            {
              sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
              v85 = *(type metadata accessor for SearchReturnOption() - 8);
              v86 = *(v85 + 72);
              v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
              v88 = swift_allocObject();
              *(v88 + 16) = xmmword_1004CEAA0;
              swift_storeEnumTagMultiPayload();
              *v84 = v82;
              v84[1] = v88;
            }

            type metadata accessor for ClientCommand(0);
            swift_storeEnumTagMultiPayload();
            v74 = *(*(v60 - 8) + 56);
            v75 = v83;
          }

          else
          {
            if ((v110 & 0xFFFFFFFE) == 0)
            {
LABEL_28:
              v76 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
              return (*(*(v76 - 8) + 56))(v101, 1, 1, v76);
            }

            LODWORD(v112[0]) = 1;
            if ((v110 & 0xFFFFFFFE) > 0xFFFFFFF5uLL)
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              return result;
            }

            v115[0] = v110 + 10;
            v45 = sub_1000796C4();
            static MessageIdentifier.... infix(_:_:)(v112, v115, &type metadata for SequenceNumber, v45, &v113);
            sub_100016D2C();
            v46 = v108;
            sub_1004A7114();
            v112[0] = v113;
            *v115 = Range<>.init<A>(_:)(v112, &type metadata for SequenceNumber, v45);
            v47 = v109;
            v48 = v103;
            if (HIDWORD(*v115) != v115[0])
            {
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              v49 = sub_1004A70B4();
              sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
              sub_1004A7064();
              v49(v112, 0);
            }

            result = a3 + 20;
            if (__OFADD__(a3, 20))
            {
              goto LABEL_48;
            }

            v50 = v104;
            MessageIdentifierSet.suffix(_:)(result, v105, v104);
            sub_100025F40(v46, &qword_1005CDA58, &qword_1004CF7C0);
            v51 = MessageIdentifierSet.count.getter();
            v52 = v106;
            if (v51 <= 0)
            {
              sub_100025F40(v50, &qword_1005CDA58, &qword_1004CF7C0);
              v54 = 1;
            }

            else
            {
              v53 = v102;
              sub_100025FDC(v50, v102, &qword_1005CDA58, &qword_1004CF7C0);
              sub_100025FDC(v53, v48, &qword_1005CDA68, &qword_1004CF7D0);
              v54 = 0;
            }

            v89 = v107;
            v90 = *(v107 + 56);
            v90(v48, v54, 1, v47);
            if ((*(v89 + 48))(v48, 1, v47) == 1)
            {
              sub_100025F40(v48, &qword_1005CDA60, &qword_1004CF7C8);
              goto LABEL_28;
            }

            sub_100025FDC(v48, v52, &qword_1005CDA68, &qword_1004CF7D0);
            sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
            v91 = swift_allocBox();
            v93 = v92;
            sub_10000E268(v52, v92, &qword_1005CDA68, &qword_1004CF7D0);
            v90(v93, 0, 1, v47);
            v94 = v91 | 0xB000000000000004;
            v60 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
            v95 = v101;
            v96 = (v101 + *(v60 + 48));
            *v101 = v44;
            *(v95 + 8) = 1;
            if ((v111 & 0x100) != 0)
            {
              sub_100025F40(v52, &qword_1005CDA68, &qword_1004CF7D0);
              *v96 = v94;
            }

            else
            {
              sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
              v97 = *(type metadata accessor for SearchReturnOption() - 8);
              v98 = *(v97 + 72);
              v99 = (*(v97 + 80) + 32) & ~*(v97 + 80);
              v100 = swift_allocObject();
              *(v100 + 16) = xmmword_1004CEAA0;
              swift_storeEnumTagMultiPayload();
              sub_100025F40(v52, &qword_1005CDA68, &qword_1004CF7D0);
              *v96 = v94;
              v96[1] = v100;
            }

            type metadata accessor for ClientCommand(0);
            swift_storeEnumTagMultiPayload();
            v74 = *(*(v60 - 8) + 56);
            v75 = v101;
          }
        }

        else
        {
          v57 = a3 - 1;
          if (__OFSUB__(a3, 1))
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          if (v57 > 0xFFFFFFFFLL)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          if (v57 > 0x7FFFFFFFFFFFFFFELL)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if (HIDWORD(a3))
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v115[0] = 1;
          LODWORD(v114) = a3;
          v58 = sub_1000796C4();
          static MessageIdentifier.... infix(_:_:)(v115, &v114, &type metadata for SequenceNumber, v58, v112);
          v59 = v112[0];
          v60 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
          v61 = v101;
          v62 = (v101 + *(v60 + 48));
          *v101 = v44;
          *(v61 + 8) = 1;
          sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
          v63 = swift_allocBox();
          v65 = v64;
          sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
          inited = swift_initStackObject();
          v111 = xmmword_1004CEAA0;
          *(inited + 16) = xmmword_1004CEAA0;
          LODWORD(v112[0]) = 1;
          v115[0] = v38;
          v67 = sub_100016948();
          static MessageIdentifier.... infix(_:_:)(v112, v115, &type metadata for UID, v67, inited + 32);
          sub_100077D40(inited);
          v68 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
          (*(*(v68 - 8) + 56))(v65, 0, 1, v68);
          sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
          v69 = *(type metadata accessor for SearchReturnOption() - 8);
          v70 = *(v69 + 72);
          v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
          v72 = swift_allocObject();
          *(v72 + 16) = v111;
          v73 = v72 + v71;
          *v73 = v59;
          *(v73 + 8) = 1;
          swift_storeEnumTagMultiPayload();
          *v62 = v63 | 0xA000000000000000;
          v62[1] = v72;
          type metadata accessor for ClientCommand(0);
          swift_storeEnumTagMultiPayload();
          v74 = *(*(v60 - 8) + 56);
          v75 = v61;
        }

        return v74(v75, 0, 1, v60);
      }
    }
  }

  v55 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
  v56 = *(*(v55 - 8) + 56);

  return v56(a7, 1, 1, v55);
}

uint64_t sub_100075DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v109 = a2;
  v110 = a1;
  v132 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v15 = *(v132 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v132);
  v121 = &v103 - v17;
  v18 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v120 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v128 = &v103 - v23;
  v24 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v131 = &v103 - v26;
  v133 = sub_10000C9C0(&qword_1005CEBF8, &qword_1004D16F8);
  v27 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v107 = (&v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v104 = &v103 - v30;
  __chkstk_darwin(v31);
  v33 = (&v103 - v32);
  __chkstk_darwin(v34);
  v130 = &v103 - v35;
  v36 = sub_10000C9C0(&qword_1005CEC00, &qword_1004D1700);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v105 = &v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v106 = (&v103 - v40);
  __chkstk_darwin(v41);
  v43 = &v103 - v42;
  __chkstk_darwin(v44);
  v111 = (&v103 - v45);
  v129 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v46 = *(v129 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v129);
  v116 = &v103 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v115 = &v103 - v50;
  __chkstk_darwin(v51);
  v108 = &v103 - v52;
  v53 = *(a11 + 16);
  v114 = a11;

  v112 = a3;

  v118 = a4;

  v113 = a5;

  v117 = a6;

  v127 = v53;
  if (!v53)
  {
LABEL_17:
    v86 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
    v87 = v111;
    (*(*(v86 - 8) + 56))(v111, 1, 1, v86);
    goto LABEL_20;
  }

  v125 = (v46 + 56);
  v126 = (v15 + 48);
  v119 = (v46 + 48);
  v54 = _s20GrowWindowOfInterestV6ResultVMa();
  v55 = 0;
  v56 = v114 + ((*(*(v54 - 8) + 80) + 32) & ~*(*(v54 - 8) + 80));
  v122 = *(*(v54 - 8) + 72);
  v123 = v54;
  v124 = v43;
  v57 = v128;
  while (1)
  {
    v58 = v133;
    v59 = *(v133 + 48);
    v60 = v130;
    sub_100079780(v56, &v130[v59], _s20GrowWindowOfInterestV6ResultVMa);
    *v33 = v55;
    v61 = v33 + *(v58 + 48);
    sub_100079718(&v60[v59], v61, _s20GrowWindowOfInterestV6ResultVMa);
    sub_10000E268(v61 + *(v54 + 24), v57, &qword_1005CD510, &unk_1004CF2E0);
    v62 = (*v126)(v57, 1, v132);
    sub_100025F40(v57, &qword_1005CD510, &unk_1004CF2E0);
    if (v62 != 1)
    {
      v69 = v131;
      (*v125)(v131, 1, 1, v129);
      v71 = v124;
LABEL_9:
      v74 = v69;
      v75 = &qword_1005CD518;
      v76 = &qword_1004CF2F0;
LABEL_10:
      sub_100025F40(v74, v75, v76);
      v77 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
      (*(*(v77 - 8) + 56))(v71, 1, 1, v77);
      goto LABEL_11;
    }

    v63 = v61 + *(v54 + 20);
    v64 = v120;
    sub_100079780(v63, v120, _s15MissingMessagesO11QueriedUIDsVMa);
    v65 = v64;
    v66 = v121;
    sub_100025FDC(v65, v121, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_100025F40(v66, &unk_1005D91B0, &unk_1004CF400);
      v70 = 1;
      v69 = v131;
    }

    else
    {
      v67 = v116;
      sub_100025FDC(v66, v116, &unk_1005D91B0, &unk_1004CF400);
      v68 = v67;
      v69 = v131;
      sub_100025FDC(v68, v131, &qword_1005CD1D0, &unk_1004CF2C0);
      v70 = 0;
    }

    v72 = v129;
    (*v125)(v69, v70, 1, v129);
    v73 = (*v119)(v69, 1, v72);
    v71 = v124;
    if (v73 == 1)
    {
      goto LABEL_9;
    }

    v82 = v69;
    v83 = v115;
    sub_100025FDC(v82, v115, &qword_1005CD1D0, &unk_1004CF2C0);
    if (sub_10001FB6C(v55, 0, v118, v117))
    {
      v74 = v83;
      v75 = &qword_1005CD1D0;
      v76 = &unk_1004CF2C0;
      goto LABEL_10;
    }

    v84 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
    v85 = *(v84 + 48);
    *v71 = v55;
    sub_100025FDC(v83, v71 + v85, &qword_1005CD1D0, &unk_1004CF2C0);
    (*(*(v84 - 8) + 56))(v71, 0, 1, v84);
LABEL_11:
    sub_100025F40(v33, &qword_1005CEBF8, &qword_1004D16F8);
    v78 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
    v79 = *(v78 - 8);
    v80 = *(v79 + 48);
    v81 = v80(v71, 1, v78);
    sub_100025F40(v71, &qword_1005CEC00, &qword_1004D1700);
    if (v81 != 1)
    {
      break;
    }

    ++v55;
    v54 = v123;
    v56 += v122;
    if (v127 == v55)
    {
      goto LABEL_17;
    }
  }

  v88 = v133;
  v89 = *(v133 + 48);
  v90 = v104;
  sub_100079780(v56, &v104[v89], _s20GrowWindowOfInterestV6ResultVMa);
  v91 = v107;
  *v107 = v55;
  v92 = *(v88 + 48);
  sub_100079718(&v90[v89], v91 + v92, _s20GrowWindowOfInterestV6ResultVMa);
  v93 = v106;
  sub_100077E8C(v55, v91 + v92, v118, v117, v106);
  sub_100025F40(v91, &qword_1005CEBF8, &qword_1004D16F8);
  v94 = v105;
  sub_10000E268(v93, v105, &qword_1005CEC00, &qword_1004D1700);
  if (v80(v94, 1, v78) == 1)
  {

    __break(1u);
  }

  else
  {
    v87 = v111;
    sub_100025FDC(v94, v111, &qword_1005CEC08, &qword_1004D1708);
    sub_100025F40(v93, &qword_1005CEC00, &qword_1004D1700);
    (*(v79 + 56))(v87, 0, 1, v78);
LABEL_20:

    v95 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
    if ((*(*(v95 - 8) + 48))(v87, 1, v95) == 1)
    {
      sub_100025F40(v87, &qword_1005CEC00, &qword_1004D1700);
      return 0;
    }

    else
    {
      v96 = *v87;
      v97 = v108;
      sub_100025FDC(v87 + *(v95 + 48), v108, &qword_1005CD1D0, &unk_1004CF2C0);
      v98 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
      swift_allocBox();
      v99 = *(v98 + 48);
      v100 = v109;
      *v101 = v110;
      v101[1] = v100;
      sub_100025FDC(v97, v101 + v99, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    return v96;
  }

  return result;
}

uint64_t sub_1000769D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v33 - v7;
  v39 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v39);
  v35 = &v33 - v11;
  v40 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v40);
  v38 = &v33 - v14;
  v15 = _s20GrowWindowOfInterestV6ResultVMa();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016D2C();
  result = sub_1004A7114();
  v21 = *(a4 + 16);
  if (v21)
  {
    v22 = *(v15 + 24);
    v23 = a4 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v24 = (v12 + 16);
    v25 = v16;
    v26 = (v9 + 48);
    v36 = *(v25 + 72);
    v37 = v22;
    v34 = v19;
    do
    {
      sub_100079780(v23, v19, _s20GrowWindowOfInterestV6ResultVMa);
      (*v24)(v38, v19, v40);
      sub_1004A7104();
      sub_10000E268(&v19[v37], v8, &qword_1005CD510, &unk_1004CF2E0);
      if ((*v26)(v8, 1, v39) == 1)
      {
        sub_100078ACC(v19, _s20GrowWindowOfInterestV6ResultVMa);
        result = sub_100025F40(v8, &qword_1005CD510, &unk_1004CF2E0);
      }

      else
      {
        v27 = v8;
        v28 = v26;
        v29 = v24;
        v30 = v8;
        v31 = v35;
        sub_100025FDC(v27, v35, &unk_1005D91B0, &unk_1004CF400);
        sub_1004A70F4();
        v32 = v31;
        v8 = v30;
        v24 = v29;
        v26 = v28;
        v19 = v34;
        sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
        result = sub_100078ACC(v19, _s20GrowWindowOfInterestV6ResultVMa);
      }

      v23 += v36;
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t _s20GrowWindowOfInterestV6ResultVMa()
{
  result = qword_1005CEC80;
  if (!qword_1005CEC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100076E18@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v32 = a4;
  v33 = a1;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  LODWORD(v35[0]) = 1;
  LODWORD(v36) = a2;
  v17 = sub_100016948();
  static MessageIdentifier.... infix(_:_:)(v35, &v36, &type metadata for UID, v17, &v37);
  sub_100016D2C();
  sub_1004A7114();
  v35[0] = v37;
  v36 = Range<>.init<A>(_:)(v35, &type metadata for UID, v17);
  if (HIDWORD(v36) != v36)
  {
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v18 = sub_1004A70B4();
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    sub_1004A7064();
    v18(v35, 0);
  }

  MessageIdentifierSet.intersection(_:)(v10, v13);
  sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.suffix(_:)(v30, v5, v16);
  sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
  v19 = sub_1000E5314();
  if ((v19 & 0x100000000) != 0 || (v20 = v19, v19 > a2))
  {
    v25 = v29;
    sub_1004A7114();
    LODWORD(v36) = 1;
    LODWORD(v34) = a2;
    static MessageIdentifier.... infix(_:_:)(&v36, &v34, &type metadata for UID, v17, v35);
    v36 = v35[0];
    v34 = Range<>.init<A>(_:)(&v36, &type metadata for UID, v17);
    v26 = _s20GrowWindowOfInterestV6ResultVMa();
    v27 = v32;
    v28 = v32 + *(v26 + 20);
    sub_1004A7124();
    sub_100025F40(v33, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
    (*(v31 + 56))(v27 + *(v26 + 24), 1, 1, v5);
    return sub_100025FDC(v25, v27, &unk_1005D91B0, &unk_1004CF400);
  }

  else
  {
    v21 = v32;
    sub_10000E268(v16, v32, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v36) = v20;
    LODWORD(v34) = a2;
    static MessageIdentifier.... infix(_:_:)(&v36, &v34, &type metadata for UID, v17, v35);
    v36 = v35[0];
    v34 = Range<>.init<A>(_:)(&v36, &type metadata for UID, v17);
    v22 = _s20GrowWindowOfInterestV6ResultVMa();
    v23 = v21 + *(v22 + 20);
    sub_1004A7124();
    sub_100025F40(v33, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
    return (*(v31 + 56))(v21 + *(v22 + 24), 1, 1, v5);
  }
}

uint64_t sub_100077270@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  __chkstk_darwin(v2);
  v23 = &v23 - v4;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v23 - v16;
  v18 = _s20GrowWindowOfInterestV6ResultVMa();
  sub_10000E268(v1 + *(v18 + 24), v17, &qword_1005CD510, &unk_1004CF2E0);
  v19 = 1;
  LODWORD(v6) = (*(v6 + 48))(v17, 1, v5);
  v20 = v24;
  sub_100025F40(v17, &qword_1005CD510, &unk_1004CF2E0);
  if (v6 == 1)
  {
    sub_100079780(v1 + *(v18 + 20), v13, _s15MissingMessagesO11QueriedUIDsVMa);
    sub_100025FDC(v13, v9, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
    }

    else
    {
      v21 = v23;
      sub_100025FDC(v9, v23, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v21, v20, &qword_1005CD1D0, &unk_1004CF2C0);
      v19 = 0;
    }
  }

  return (*(v25 + 56))(v20, v19, 1, v26);
}

uint64_t sub_100077584(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = *(_s20GrowWindowOfInterestV6ResultVMa() + 24);
  sub_10000E268(v2 + v16, v10, &qword_1005CD510, &unk_1004CF2E0);
  v17 = *(v12 + 48);
  v18 = (v12 + 56);
  if (v17(v10, 1, v11) == 1)
  {
    sub_100025F40(v10, &qword_1005CD510, &unk_1004CF2E0);
    sub_100025F40(v2 + v16, &qword_1005CD510, &unk_1004CF2E0);
    sub_10000E268(a1, v2 + v16, &unk_1005D91B0, &unk_1004CF400);
    return (*v18)(v2 + v16, 0, 1, v11);
  }

  else
  {
    sub_100025FDC(v10, v15, &unk_1005D91B0, &unk_1004CF400);
    MessageIdentifierSet.union(_:)(a1, v7);
    sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
    (*v18)(v7, 0, 1, v11);
    return sub_1000618F8(v7, v2 + v16);
  }
}

uint64_t sub_1000777F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v41 - v7;
  v48 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v48);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v41 - v13;
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v17 = _s20GrowWindowOfInterestV6ResultVMa();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a4 + 16);
  if (v23)
  {
    v46 = v8;
    v24 = 0;
    v25 = *(v19 + 24);
    v26 = a4 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v43 = *(v20 + 72);
    v44 = v25;
    v27 = (v9 + 48);
    v28 = &unk_1005D91B0;
    v41 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v27;
    while (1)
    {
      sub_100079780(v26, v22, _s20GrowWindowOfInterestV6ResultVMa);
      sub_10000E268(v22, v47, v28, &unk_1004CF400);
      v29 = v46;
      sub_10000E268(&v22[v44], v46, &qword_1005CD510, &unk_1004CF2E0);
      v30 = v28;
      v31 = *v27;
      if ((*v27)(v29, 1, v48) == 1)
      {
        sub_100016D2C();
        v32 = v45;
        sub_1004A7114();
        v33 = v29;
        v34 = v32;
        v22 = v41;
        v35 = v31(v33, 1, v48);
        v28 = v30;
        if (v35 != 1)
        {
          sub_100025F40(v46, &qword_1005CD510, &unk_1004CF2E0);
        }
      }

      else
      {
        v36 = v29;
        v34 = v45;
        sub_100025FDC(v36, v45, v30, &unk_1004CF400);
        v28 = v30;
      }

      v37 = v47;
      MessageIdentifierSet.subtracting(_:)(v34, v16);
      sub_100025F40(v37, v28, &unk_1004CF400);
      sub_100025F40(v34, v28, &unk_1004CF400);
      v38 = MessageIdentifierSet.count.getter();
      sub_100025F40(v16, v28, &unk_1004CF400);
      result = sub_100078ACC(v22, _s20GrowWindowOfInterestV6ResultVMa);
      v40 = __OFADD__(v24, v38);
      v24 += v38;
      if (v40)
      {
        break;
      }

      v27 = v42;
      v26 += v43;
      if (!--v23)
      {
        return v24;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_100077BAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = v13 - 1;
    v15 = *(_s20GrowWindowOfInterestV6ResultVMa() - 8);
    sub_10000E268(a4 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v14, v9, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v9, v12, &unk_1005D91B0, &unk_1004CF400);
    v16 = sub_1000E5314();
    sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
    v17 = 0;
    v18 = 1;
    if ((v16 & 0x100000000) == 0 && (v16 & 0xFFFFFFFE) != 0)
    {
      v18 = 0;
      v17 = (v16 - 1);
    }
  }

  else
  {
    v18 = 0;
    v17 = HIDWORD(a2);
  }

  return v17 | (v18 << 32);
}

unint64_t sub_100077D40(unint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    sub_100016D2C();
    result = sub_1004A7114();
    v2 = *(v1 + 16);
    if (!v2)
    {
    }

    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v6[0] = *(v1 + 32 + 8 * v3);
      v4 = sub_100016948();
      result = Range<>.init<A>(_:)(v6, &type metadata for UID, v4);
      v6[4] = result;
      if (HIDWORD(result) != result)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v5 = sub_1004A70B4();
        sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
        sub_1004A7064();
        result = v5(v6, 0);
      }

      if (v2 == ++v3)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100077E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v48 = a1;
  v52 = a5;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v51 = &v45 - v9;
  v10 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v45 - v15;
  v17 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v45 - v19;
  v21 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v49 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v45 = &v45 - v26;
  v27 = _s20GrowWindowOfInterestV6ResultVMa();
  sub_10000E268(a2 + *(v27 + 24), v16, &qword_1005CD510, &unk_1004CF2E0);
  LODWORD(v7) = (*(v7 + 48))(v16, 1, v6);
  sub_100025F40(v16, &qword_1005CD510, &unk_1004CF2E0);
  if (v7 != 1)
  {
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_7:
    v35 = &qword_1005CD518;
    v36 = &qword_1004CF2F0;
    v37 = v20;
LABEL_8:
    sub_100025F40(v37, v35, v36);
    v38 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
    return (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
  }

  v28 = a2 + *(v27 + 20);
  v29 = v50;
  sub_100079780(v28, v50, _s15MissingMessagesO11QueriedUIDsVMa);
  v30 = v29;
  v31 = v51;
  sub_100025FDC(v30, v51, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v31, &unk_1005D91B0, &unk_1004CF400);
    v34 = 1;
  }

  else
  {
    v32 = v31;
    v33 = v49;
    sub_100025FDC(v32, v49, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v33, v20, &qword_1005CD1D0, &unk_1004CF2C0);
    v34 = 0;
  }

  (*(v22 + 56))(v20, v34, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_7;
  }

  v40 = v45;
  sub_100025FDC(v20, v45, &qword_1005CD1D0, &unk_1004CF2C0);
  v41 = v48;
  if (sub_10001FB6C(v48, 0, v46, v47))
  {
    v35 = &qword_1005CD1D0;
    v36 = &unk_1004CF2C0;
    v37 = v40;
    goto LABEL_8;
  }

  v42 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
  v43 = *(v42 + 48);
  v44 = v52;
  *v52 = v41;
  sub_100025FDC(v40, v44 + v43, &qword_1005CD1D0, &unk_1004CF2C0);
  return (*(*(v42 - 8) + 56))(v44, 0, 1, v42);
}

uint64_t sub_100078398(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v28 = &v28 - v6;
  v7 = sub_10000C9C0(&qword_1005CEBE0, &unk_1004D16D0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  __chkstk_darwin(v18);
  v20 = &v28 - v19;
  sub_100077270(&v28 - v19);
  sub_10000E268(a2, v17, &qword_1005CD1D0, &unk_1004CF2C0);
  (*(v4 + 56))(v17, 0, 1, v3);
  v21 = *(v8 + 56);
  sub_10000E268(v20, v11, &qword_1005CD518, &qword_1004CF2F0);
  sub_10000E268(v17, &v11[v21], &qword_1005CD518, &qword_1004CF2F0);
  v22 = *(v4 + 48);
  if (v22(v11, 1, v3) != 1)
  {
    sub_10000E268(v11, v29, &qword_1005CD518, &qword_1004CF2F0);
    if (v22(&v11[v21], 1, v3) != 1)
    {
      v24 = &v11[v21];
      v25 = v28;
      sub_100025FDC(v24, v28, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100016D2C();
      v26 = v29;
      v23 = sub_1004A7034();
      sub_100025F40(v25, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v17, &qword_1005CD518, &qword_1004CF2F0);
      sub_100025F40(v20, &qword_1005CD518, &qword_1004CF2F0);
      sub_100025F40(v26, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v11, &qword_1005CD518, &qword_1004CF2F0);
      return v23 & 1;
    }

    sub_100025F40(v17, &qword_1005CD518, &qword_1004CF2F0);
    sub_100025F40(v20, &qword_1005CD518, &qword_1004CF2F0);
    sub_100025F40(v29, &qword_1005CD1D0, &unk_1004CF2C0);
    goto LABEL_6;
  }

  sub_100025F40(v17, &qword_1005CD518, &qword_1004CF2F0);
  sub_100025F40(v20, &qword_1005CD518, &qword_1004CF2F0);
  if (v22(&v11[v21], 1, v3) != 1)
  {
LABEL_6:
    sub_100025F40(v11, &qword_1005CEBE0, &unk_1004D16D0);
    v23 = 0;
    return v23 & 1;
  }

  sub_100025F40(v11, &qword_1005CD518, &qword_1004CF2F0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1000787AC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v32 - v6;
  v8 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s20GrowWindowOfInterestV6ResultVMa();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v32 = &v32 - v22;
  sub_100016D2C();
  sub_1004A7114();
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = v4;
    v25 = *(v12 + 20);
    v26 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v27 = *(v13 + 72);
    v28 = (v24 + 16);
    do
    {
      sub_100079780(v26, v16, _s20GrowWindowOfInterestV6ResultVMa);
      sub_100079780(&v16[v25], v11, _s15MissingMessagesO11QueriedUIDsVMa);
      (*v28)(v7, v11, v3);
      sub_1004A7104();
      sub_100078ACC(v16, _s20GrowWindowOfInterestV6ResultVMa);
      sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
      v26 += v27;
      --v23;
    }

    while (v23);
  }

  v29 = v20;
  v30 = v32;
  sub_100025FDC(v29, v32, &unk_1005D91B0, &unk_1004CF400);
  return sub_100025FDC(v30, v33, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_100078ACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100078B2C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v43 = &v43 - v9;
  v10 = sub_10000C9C0(&qword_1005CEC20, &qword_1004D1710);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v43 - v12;
  v14 = type metadata accessor for DownloadTask.CommandID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v57 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v48 = &v43 - v19;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v20 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v50 = &v43 - v25;
  v55 = *(a1 + 16);
  if (!v55)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = 0;
  v27 = *(v24 + 80);
  v53 = *(v24 + 72);
  v54 = a1 + ((v27 + 32) & ~v27);
  v51 = (v15 + 48);
  v52 = (v15 + 56);
  v58 = _swiftEmptyArrayStorage;
  v28 = v50;
  v46 = v15;
  v47 = v14;
  do
  {
    sub_100079780(v54 + v53 * v26, v28, type metadata accessor for TaskHistory.Running);
    sub_100079780(v28, v22, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100078ACC(v22, type metadata accessor for TaskHistory.Running);
      v29 = 1;
    }

    else
    {
      v30 = v13;
      v31 = *(v22 + 2);
      v32 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
      sub_100078ACC(&v22[*(v32 + 64)], type metadata accessor for ClientCommand);
      v33 = *(v49 + 16);
      if (v33)
      {
        v34 = v49 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v35 = *(v45 + 72);
        while (1)
        {
          sub_10000E268(v34, v7, &qword_1005CEA38, &qword_1004D14F0);
          if (*v7 == v31)
          {
            break;
          }

          sub_100025F40(v7, &qword_1005CEA38, &qword_1004D14F0);
          v34 += v35;
          if (!--v33)
          {
            v29 = 1;
            v13 = v30;
            goto LABEL_14;
          }
        }

        v36 = v43;
        sub_100025FDC(v7, v43, &qword_1005CEA38, &qword_1004D14F0);
        v13 = v30;
        sub_100079780(v36 + *(v44 + 52), v30, type metadata accessor for DownloadTask.CommandID);
        sub_100025F40(v36, &qword_1005CEA38, &qword_1004D14F0);
        v29 = 0;
LABEL_14:
        v15 = v46;
        v14 = v47;
        v28 = v50;
      }

      else
      {
        v29 = 1;
        v13 = v30;
        v15 = v46;
        v14 = v47;
      }
    }

    (*v52)(v13, v29, 1, v14);
    sub_100078ACC(v28, type metadata accessor for TaskHistory.Running);
    if ((*v51)(v13, 1, v14) == 1)
    {
      sub_100025F40(v13, &qword_1005CEC20, &qword_1004D1710);
    }

    else
    {
      v37 = v48;
      sub_100079718(v13, v48, type metadata accessor for DownloadTask.CommandID);
      sub_100079718(v37, v57, type metadata accessor for DownloadTask.CommandID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_100085F6C(0, v58[2] + 1, 1, v58);
      }

      v39 = v58[2];
      v38 = v58[3];
      if (v39 >= v38 >> 1)
      {
        v58 = sub_100085F6C(v38 > 1, v39 + 1, 1, v58);
      }

      v40 = v57;
      v41 = v58;
      v58[2] = v39 + 1;
      sub_100079718(v40, v41 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v39, type metadata accessor for DownloadTask.CommandID);
      v28 = v50;
    }

    ++v26;
  }

  while (v26 != v55);
  return v58;
}

void *sub_1000790F8(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = sub_10000C9C0(&qword_1005CEA18, &qword_1004D14D0);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v43 = &v43 - v9;
  v10 = sub_10000C9C0(&qword_1005CEA10, &qword_1004D16F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v43 - v12;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v15 = *(Missing - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(Missing);
  v57 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v48 = &v43 - v19;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v20 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v50 = &v43 - v25;
  v55 = *(a1 + 16);
  if (!v55)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = 0;
  v27 = *(v24 + 80);
  v53 = *(v24 + 72);
  v54 = a1 + ((v27 + 32) & ~v27);
  v51 = (v15 + 48);
  v52 = (v15 + 56);
  v58 = _swiftEmptyArrayStorage;
  v28 = v50;
  v46 = v15;
  v47 = Missing;
  do
  {
    sub_100079780(v54 + v53 * v26, v28, type metadata accessor for TaskHistory.Running);
    sub_100079780(v28, v22, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100078ACC(v22, type metadata accessor for TaskHistory.Running);
      v29 = 1;
    }

    else
    {
      v30 = v13;
      v31 = *(v22 + 2);
      v32 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
      sub_100078ACC(&v22[*(v32 + 64)], type metadata accessor for ClientCommand);
      v33 = *(v49 + 16);
      if (v33)
      {
        v34 = v49 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v35 = *(v45 + 72);
        while (1)
        {
          sub_10000E268(v34, v7, &qword_1005CEA18, &qword_1004D14D0);
          if (*v7 == v31)
          {
            break;
          }

          sub_100025F40(v7, &qword_1005CEA18, &qword_1004D14D0);
          v34 += v35;
          if (!--v33)
          {
            v29 = 1;
            v13 = v30;
            goto LABEL_14;
          }
        }

        v36 = v43;
        sub_100025FDC(v7, v43, &qword_1005CEA18, &qword_1004D14D0);
        v13 = v30;
        sub_100079780(v36 + *(v44 + 52), v30, type metadata accessor for FindMissingMessages.CommandID);
        sub_100025F40(v36, &qword_1005CEA18, &qword_1004D14D0);
        v29 = 0;
LABEL_14:
        v15 = v46;
        Missing = v47;
        v28 = v50;
      }

      else
      {
        v29 = 1;
        v13 = v30;
        v15 = v46;
        Missing = v47;
      }
    }

    (*v52)(v13, v29, 1, Missing);
    sub_100078ACC(v28, type metadata accessor for TaskHistory.Running);
    if ((*v51)(v13, 1, Missing) == 1)
    {
      sub_100025F40(v13, &qword_1005CEA10, &qword_1004D16F0);
    }

    else
    {
      v37 = v48;
      sub_100079718(v13, v48, type metadata accessor for FindMissingMessages.CommandID);
      sub_100079718(v37, v57, type metadata accessor for FindMissingMessages.CommandID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_10008634C(0, v58[2] + 1, 1, v58);
      }

      v39 = v58[2];
      v38 = v58[3];
      if (v39 >= v38 >> 1)
      {
        v58 = sub_10008634C(v38 > 1, v39 + 1, 1, v58);
      }

      v40 = v57;
      v41 = v58;
      v58[2] = v39 + 1;
      sub_100079718(v40, v41 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v39, type metadata accessor for FindMissingMessages.CommandID);
      v28 = v50;
    }

    ++v26;
  }

  while (v26 != v55);
  return v58;
}

unint64_t sub_1000796C4()
{
  result = qword_1005CEC10;
  if (!qword_1005CEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CEC10);
  }

  return result;
}

uint64_t sub_100079718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100079780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for PartialRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PartialRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000798AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s15MissingMessagesO11QueriedUIDsVMa(0);
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

uint64_t sub_100079A18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = _s15MissingMessagesO11QueriedUIDsVMa(0);
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

void sub_100079B7C()
{
  sub_100050DB8();
  if (v0 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
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

uint64_t getEnumTagSinglePayload for CommandID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CommandID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_100079C90()
{
  result = qword_1005CECC0;
  if (!qword_1005CECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CECC0);
  }

  return result;
}

uint64_t sub_100079CE4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MessagesToRemoveHelper.Range();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_10007CEDC(v13, v11, type metadata accessor for MessagesToRemoveHelper.Range);
      v15 = a1(v11);
      if (v3)
      {
        return sub_10007CF44(v11, type metadata accessor for MessagesToRemoveHelper.Range);
      }

      if (v15)
      {
        break;
      }

      sub_10007CF44(v11, type metadata accessor for MessagesToRemoveHelper.Range);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_10007CFA4(v11, v19, type metadata accessor for MessagesToRemoveHelper.Range);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

unint64_t sub_100079EB0(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v8 = *i;
    v9 = *i;
    result = a1(&v9);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v8 | (HIDWORD(v8) << 32);
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100079F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = BYTE5(a4);
  v65 = a3;
  v66 = a1;
  v63 = a2;
  v67 = a6;
  v61 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v8 = *(*(v61 - 8) + 64);
  v9 = __chkstk_darwin(v61);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v57 = &v56 - v12;
  v13 = __chkstk_darwin(v11);
  v62 = &v56 - v14;
  __chkstk_darwin(v13);
  v60 = &v56 - v15;
  v16 = type metadata accessor for MessageBatches(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v58 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v56 = &v56 - v26;
  __chkstk_darwin(v25);
  v28 = &v56 - v27;
  v29 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v56 - v34;
  LOBYTE(v70[0]) = v7 & 1;
  LOBYTE(v69) = BYTE4(a5) & 1;
  v64 = a5;
  sub_10007BCFC(v65, v66, &v56 - v34);
  sub_10000E268(v35, v33, &qword_1005CD518, &qword_1004CF2F0);
  if ((*(v21 + 48))(v33, 1, v20) == 1)
  {
    sub_100025F40(v35, &qword_1005CD518, &qword_1004CF2F0);
    sub_100025F40(v33, &qword_1005CD518, &qword_1004CF2F0);
    return (*(v21 + 56))(v67, 1, 1, v20);
  }

  v65 = v21;
  v66 = v20;
  v37 = v67;
  sub_100025FDC(v33, v28, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_10007CEDC(v63, v19, type metadata accessor for MessageBatches);
  LOBYTE(v70[0]) = 0;
  v38 = 0xFFFFFFFFLL;
  if ((v64 & &_mh_execute_header) == 0)
  {
    v38 = a5;
  }

  sub_1000D7F2C(v38);
  v39 = *(v19 + 1);

  v40 = sub_10007CF44(v19, type metadata accessor for MessageBatches);
  __chkstk_darwin(v40);
  *(&v56 - 2) = v28;
  v41 = sub_100079EB0(sub_10007C260, (&v56 - 4), v39);
  v43 = v42;

  v44 = v28;
  if ((v43 & 1) == 0)
  {
    v70[0] = v41;
    v45 = sub_100016948();
    v69 = Range<>.init<A>(_:)(v70, &type metadata for UID, v45);
    sub_100016D2C();
    v46 = v62;
    sub_1004A7124();
    v48 = v60;
    v47 = v61;
    MessageIdentifierSet.intersection(_:)(v28, v60);
    sub_100025F40(v46, &unk_1005D91B0, &unk_1004CF400);
    if ((v64 & 0x100000000) != 0 || (LODWORD(v70[0]) = v64, (MessageIdentifierSet.contains(_:)(v70, v47) & 1) == 0))
    {
      v50 = v59;
      sub_10000E268(v48, v59, &unk_1005D91B0, &unk_1004CF400);
      v54 = MessageIdentifierSet.count.getter();
      sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v35, &qword_1005CD518, &qword_1004CF2F0);
      if (v54 >= 1)
      {
        v52 = v50;
        v53 = v58;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v69) = v64;
      LODWORD(v68) = -1;
      static MessageIdentifier.... infix(_:_:)(&v69, &v68, &type metadata for UID, v45, v70);
      v69 = v70[0];
      v68 = Range<>.init<A>(_:)(&v69, &type metadata for UID, v45);
      v49 = v62;
      sub_1004A7124();
      v50 = v57;
      MessageIdentifierSet.union(_:)(v49, v57);
      sub_100025F40(v49, &unk_1005D91B0, &unk_1004CF400);
      v51 = MessageIdentifierSet.count.getter();
      sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v35, &qword_1005CD518, &qword_1004CF2F0);
      if (v51 >= 1)
      {
        v52 = v50;
        v53 = v56;
LABEL_13:
        sub_100025FDC(v52, v53, &unk_1005D91B0, &unk_1004CF400);
        sub_100025FDC(v53, v37, &qword_1005CD1D0, &unk_1004CF2C0);
        v55 = 0;
LABEL_15:
        (*(v65 + 56))(v37, v55, 1, v66);
        return sub_100025F40(v44, &qword_1005CD1D0, &unk_1004CF2C0);
      }
    }

    sub_100025F40(v50, &unk_1005D91B0, &unk_1004CF400);
    v55 = 1;
    goto LABEL_15;
  }

  sub_100025F40(v35, &qword_1005CD518, &qword_1004CF2F0);
  (*(v65 + 56))(v37, 1, 1, v66);
  return sub_100025F40(v44, &qword_1005CD1D0, &unk_1004CF2C0);
}

uint64_t sub_10007A65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v33 - v6;
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  __chkstk_darwin(v8);
  v34 = &v33 - v10;
  v36 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v11 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v37 = &v33 - v15;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  __chkstk_darwin(v19);
  v35 = &v33 - v20;
  sub_100016D2C();
  sub_1004A7114();
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = (v4 + 16);
    v23 = (a1 + 40);
    do
    {
      if ((*v23 & 1) == 0)
      {
        v42 = *(v23 - 1);
        v24 = sub_100016948();
        v41 = Range<>.init<A>(_:)(&v42, &type metadata for UID, v24);
        sub_1004A7124();
        (*v22)(v7, v13, v3);
        sub_1004A7104();
        sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
      }

      v23 += 12;
      --v21;
    }

    while (v21);
  }

  v25 = v35;
  sub_100025FDC(v18, v35, &unk_1005D91B0, &unk_1004CF400);
  v26 = v37;
  sub_10000E268(v25, v37, &unk_1005D91B0, &unk_1004CF400);
  v27 = MessageIdentifierSet.count.getter();
  sub_100025F40(v25, &unk_1005D91B0, &unk_1004CF400);
  if (v27 <= 0)
  {
    sub_100025F40(v26, &unk_1005D91B0, &unk_1004CF400);
    v31 = 1;
    v30 = v40;
  }

  else
  {
    v28 = v34;
    sub_100025FDC(v26, v34, &unk_1005D91B0, &unk_1004CF400);
    v29 = v28;
    v30 = v40;
    sub_100025FDC(v29, v40, &qword_1005CD1D0, &unk_1004CF2C0);
    v31 = 0;
  }

  return (*(v38 + 56))(v30, v31, 1, v39);
}

void sub_10007AA20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = a1;
  v11 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  if ((a1 & 0x100000000) == 0)
  {
    if (a1 == -1)
    {
      __break(1u);
      return;
    }

    ++v10;
    if ((a4 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if ((a4 & 0x100000000) == 0)
  {
LABEL_6:
    if (v10 <= a4)
    {
      v33 = a4;
    }

    else
    {
      v33 = v10;
    }

    if ((a1 & &_mh_execute_header) != 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = v33;
    }

LABEL_12:
    v48 = v10;
    v49 = v28;
    v50 = v32;
    v51 = &v47 - v29;
    v52 = v31;
    v53 = v30;
    v54 = a2;
    v55 = v27;
    v56 = a5;
    sub_100016D2C();
    sub_1004A7114();
    v34 = *(a3 + 16);
    if (v34)
    {
      v35 = (a3 + 32);
      v36 = sub_100016948();
      v37 = (v47 + 16);
      do
      {
        v38 = *v35;
        v35 = (v35 + 12);
        v58[0] = v38;
        *v60 = Range<>.init<A>(_:)(v58, &type metadata for UID, v36);
        sub_1004A7124();
        (*v37)(v14, v20, v11);
        sub_1004A7104();
        sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
        --v34;
      }

      while (v34);
    }

    v39 = v49;
    sub_100025FDC(v23, v49, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v58[0]) = v48;
    v60[0] = -1;
    v40 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(v58, v60, &type metadata for UID, v40, &v59);
    v41 = v50;
    sub_1004A7114();
    v58[0] = v59;
    *v60 = Range<>.init<A>(_:)(v58, &type metadata for UID, v40);
    if (HIDWORD(*v60) != v60[0])
    {
      v42 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      v42(v58, 0);
    }

    v43 = v52;
    MessageIdentifierSet.subtracting(_:)(v41, v52);
    sub_100025F40(v39, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
    if ((v54 & &_mh_execute_header) != 0)
    {
      v44 = 1;
    }

    else
    {
      v44 = v54;
    }

    v60[0] = v44;
    LODWORD(v57) = -1;
    static MessageIdentifier.... infix(_:_:)(v60, &v57, &type metadata for UID, v40, v58);
    *v60 = v58[0];
    v57 = Range<>.init<A>(_:)(v60, &type metadata for UID, v40);
    v45 = v53;
    sub_1004A7124();
    v46 = v51;
    MessageIdentifierSet.intersection(_:)(v45, v51);
    sub_100025F40(v45, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v43, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v46, v56, &unk_1005D91B0, &unk_1004CF400);
    return;
  }

  sub_1000E5FCC(a5);
}

BOOL sub_10007AF3C(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a2 + 5);
  if (*(a1 + 5))
  {
    return (*(a2 + 5) & 1) != 0;
  }

  if (*(a2 + 5))
  {
    return 0;
  }

  v4 = *a2 | (*(a2 + 4) << 32);
  if (((*a1 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
  {
    if ((v4 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((v4 & 0x100000000) == 0)
  {
    *(a2 + 4);
    *(a1 + 4);
    if (*a1 == *a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10007B03C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 14931;
  }

  else
  {
    v2 = 978332499;
  }

  v4 = v2;
  sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
  v5._countAndFlagsBits = sub_1004A5804();
  sub_1004A5994(v5);

  return v4;
}

uint64_t sub_10007B0CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *v2;
  v18 = *(v2 + 8) | (*(v2 + 12) << 32);
  v19 = *(v2 + 16);
  v20 = *(v2 + 20);
  LOBYTE(v28) = *(v2 + 13);
  LOBYTE(v27) = v20;
  sub_10007B4AC(a1, a2, v17, v18 | (v28 << 40), v19 | (v20 << 32), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100025F40(v8, &qword_1005CD518, &qword_1004CF2F0);
    result = sub_1000D7EB4();
    if (v22)
    {
      return result;
    }

    LODWORD(v27) = result;
    LODWORD(v26) = -1;
    v23 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v27, &v26, &type metadata for UID, v23, &v28);
    v27 = v28;
    v26 = Range<>.init<A>(_:)(&v27, &type metadata for UID, v23);
    sub_100016D2C();
    sub_1004A7124();
    sub_10007B980(v14);
    v24 = v14;
  }

  else
  {
    sub_100025FDC(v8, v16, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10007B980(v16);
    v24 = v16;
  }

  return sub_100025F40(v24, &qword_1005CD1D0, &unk_1004CF2C0);
}

uint64_t sub_10007B35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = &v13 - v7;
  v9 = *(a2 + 8);
  v10 = *(v9 + 16);
  if (v10 > a1)
  {
    v11 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
      __break(1u);
    }

    else if (v11 < v10)
    {
      LODWORD(v15) = *(v9 + 8 * v11 + 32);
      LODWORD(v14) = -1;
      v12 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v15, &v14, &type metadata for UID, v12, &v16);
      v15 = v16;
      v14 = Range<>.init<A>(_:)(&v15, &type metadata for UID, v12);
      sub_100016D2C();
      sub_1004A7124();
      sub_10007B980(v8);
      return sub_100025F40(v8, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10007B4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a3;
  v52 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v49 = *(v52 - 8);
  v11 = *(v49 + 64);
  __chkstk_darwin(v52);
  v51 = v42 - v12;
  v13 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v42 - v15;
  v17 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v45 = *(v17 - 8);
  v18 = *(v45 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v50 = v42 - v22;
  v23 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v26 = __chkstk_darwin(v25);
  v29 = v42 - v28;
  v53 = a2;
  if (*(*(a2 + 8) + 16) <= a1)
  {
    v35 = *(v45 + 56);

    return v35(a6, 1, 1, v17);
  }

  else
  {
    v42[1] = v26;
    v43 = v27;
    v42[0] = v21;
    v55 = v17;
    v44 = a6;
    sub_100016D2C();
    sub_1004A7114();
    if (a1 >= 1)
    {
      v30 = a5;
      v31 = a5;
      v32 = (v45 + 48);
      v46 = (v49 + 16);
      v33 = HIDWORD(v31) & 1;
      v48 = a4 & 0xFFFFFFFFFFLL | (((a4 >> 40) & 1) << 40);
      v49 = (a4 >> 40) & 1;
      v47 = v30 | (v33 << 32);
      while (1)
      {
        v57 = v49;
        v56 = v33;
        sub_100079F40(v29, v53, v54, v48, v47, v16);
        if ((*v32)(v16, 1, v55) == 1)
        {
          break;
        }

        v34 = v50;
        sub_100025FDC(v16, v50, &qword_1005CD1D0, &unk_1004CF2C0);
        (*v46)(v51, v34, v52);
        sub_1004A7104();
        sub_100025F40(v34, &qword_1005CD1D0, &unk_1004CF2C0);
        if (!--a1)
        {
          goto LABEL_11;
        }
      }

      sub_100025F40(v16, &qword_1005CD518, &qword_1004CF2F0);
    }

LABEL_11:
    v37 = v43;
    sub_10000E268(v29, v43, &unk_1005D91B0, &unk_1004CF400);
    v38 = MessageIdentifierSet.count.getter();
    sub_100025F40(v29, &unk_1005D91B0, &unk_1004CF400);
    if (v38 < 1)
    {
      sub_100025F40(v37, &unk_1005D91B0, &unk_1004CF400);
      return (*(v45 + 56))(v44, 1, 1, v55);
    }

    else
    {
      v39 = v42[0];
      sub_100025FDC(v37, v42[0], &unk_1005D91B0, &unk_1004CF400);
      v40 = v39;
      v41 = v44;
      sub_100025FDC(v40, v44, &qword_1005CD1D0, &unk_1004CF2C0);
      return (*(v45 + 56))(v41, 0, 1, v55);
    }
  }
}

uint64_t sub_10007B980(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  v4 = *(v1 + 8);
  v5 = *(v1 + 13);
  v9[2] = a1;

  v6 = sub_1000D7608(sub_10007BA80, v9, v2);

  *v1 = v6;
  LOBYTE(v6) = sub_10010243C(v6, v2);

  if ((v6 & 1) == 0 && (v5 & 1) == 0 && ((v4 | (v3 << 32)) & 0x100000000) == 0)
  {
    if (v4 == -1)
    {
      __break(1u);
    }

    else
    {
      v10[0] = v4 + 1;
      v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      result = MessageIdentifierSet.contains(_:)(v10, v8);
      if ((result & 1) == 0)
      {
        *(v1 + 12) = 256;
        *(v1 + 8) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_10007BA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  result = sub_10007BAC4(*(v2 + 16), *a1);
  *a2 = result;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_10007BAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22[-v6];
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v22[-v13];
  v25 = a2;
  v15 = sub_100016948();
  v24 = Range<>.init<A>(_:)(&v25, &type metadata for UID, v15);
  sub_100016D2C();
  sub_1004A7124();
  MessageIdentifierSet.intersection(_:)(a1, v14);
  sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
  v16 = sub_1000E5314();
  if (v16 & 0x100000000) != 0 || (v17 = v16, MessageIdentifierSet.ranges.getter(v7), v18 = sub_1000E4C0C() >> 32, v20 = v19, sub_100025F40(v7, &qword_1005CD7A0, &unk_1004CF590), (v20))
  {
    sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
    return 0;
  }

  else
  {
    v23 = v18;
    LODWORD(v24) = v17;
    static MessageIdentifier.... infix(_:_:)(&v24, &v23, &type metadata for UID, v15, &v25);
    sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
    return v25;
  }
}

uint64_t sub_10007BCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v44 = a2;
  v47 = a3;
  v4 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v38 - v7;
  v9 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  __chkstk_darwin(v9);
  v39 = &v38 - v11;
  v42 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v12 = *(*(v42 - 8) + 64);
  v13 = __chkstk_darwin(v42);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v43 = &v38 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - v19;
  v21 = __chkstk_darwin(v18);
  v40 = &v38 - v22;
  __chkstk_darwin(v21);
  v41 = &v38 - v23;
  sub_100016D2C();
  sub_1004A7114();
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = (a1 + 32);
    v26 = sub_100016948();
    do
    {
      v27 = *v25;
      v25 = (v25 + 12);
      v49 = v27;
      v48 = Range<>.init<A>(_:)(&v49, &type metadata for UID, v26);
      sub_1004A7124();
      (*(v5 + 16))(v8, v15, v4);
      sub_1004A7104();
      sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
      --v24;
    }

    while (v24);
  }

  v28 = v20;
  v29 = v40;
  sub_100025FDC(v28, v40, &unk_1005D91B0, &unk_1004CF400);
  v30 = v41;
  MessageIdentifierSet.subtracting(_:)(v44, v41);
  sub_100025F40(v29, &unk_1005D91B0, &unk_1004CF400);
  v31 = v43;
  sub_10000E268(v30, v43, &unk_1005D91B0, &unk_1004CF400);
  v32 = MessageIdentifierSet.count.getter();
  sub_100025F40(v30, &unk_1005D91B0, &unk_1004CF400);
  if (v32 <= 0)
  {
    sub_100025F40(v31, &unk_1005D91B0, &unk_1004CF400);
    v36 = 1;
    v35 = v47;
  }

  else
  {
    v33 = v39;
    sub_100025FDC(v31, v39, &unk_1005D91B0, &unk_1004CF400);
    v34 = v33;
    v35 = v47;
    sub_100025FDC(v34, v47, &qword_1005CD1D0, &unk_1004CF2C0);
    v36 = 0;
  }

  return (*(v45 + 56))(v35, v36, 1, v46);
}

BOOL sub_10007C0F8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v14 = *a1;
  v11 = sub_100016948();
  v13 = Range<>.init<A>(_:)(&v14, &type metadata for UID, v11);
  sub_100016D2C();
  sub_1004A7124();
  MessageIdentifierSet.intersection(_:)(a2, v8);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  LOBYTE(a2) = sub_1004A70C4();
  sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
  return (a2 & 1) == 0;
}

uint64_t sub_10007C280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_10010243C(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if ((a2 & 0x10000000000) != 0)
  {
    if ((a5 & 0x10000000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((a5 & 0x10000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x100000000) != 0)
    {
      if ((a5 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else if ((a5 & 0x100000000) != 0 || a5 != a2)
    {
      return 0;
    }
  }

  if ((a3 & 0x100000000) != 0)
  {
    if ((a6 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((a6 & 0x100000000) == 0 && a6 == a3)
  {
    return 1;
  }

  return 0;
}

char *sub_10007C308(unint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v73) = a5;
  v80 = a4;
  v81 = a3;
  v78 = a2;
  v7 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v74 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v77 = v72 - v11;
  v76 = sub_10000C9C0(&qword_1005CECC8, &qword_1004D1828);
  v12 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v14 = v72 - v13;
  v15 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v20 = *(*(v19 - 1) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v75 = v72 - v24;
  v25 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C9C0(&qword_1005CECD0, &unk_1004D1830);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = v72 - v32;
  v79 = a1;
  sub_1000E5D14(v72 - v32);
  if ((*(v26 + 48))(v33, 1, v25) == 1)
  {
    if (v81)
    {
      LODWORD(v83) = 1;
      LODWORD(v82) = -1;
      v34 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v83, &v82, &type metadata for UID, v34, &v84);
      v35 = v84;
      v19 = sub_100086338(0, 1, 1, _swiftEmptyArrayStorage);
      v37 = *(v19 + 2);
      v36 = *(v19 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v19 = sub_100086338((v36 > 1), v37 + 1, 1, v19);
      }

LABEL_55:
      sub_10007CF44(v79, _s15MissingMessagesOMa);
      *(v19 + 2) = v38;
      v70 = &v19[12 * v37];
      *(v70 + 4) = v35;
      v70[40] = 0;
      goto LABEL_56;
    }

    v46 = HIDWORD(v78);
    if (v73 > 1u)
    {
      v48 = 0xFFFFFFFFLL;
      if (v46 != 0xFFFFFFFF)
      {
        LODWORD(v83) = HIDWORD(v78) + 1;
        LODWORD(v82) = -1;
        v67 = sub_100016948();
        static MessageIdentifier.... infix(_:_:)(&v83, &v82, &type metadata for UID, v67, &v84);
        v35 = v84;
        v19 = sub_100086338(0, 1, 1, _swiftEmptyArrayStorage);
        v37 = *(v19 + 2);
        v68 = *(v19 + 3);
        goto LABEL_53;
      }

      __break(1u);
    }

    else
    {
      if ((v78 & 0xFFFFFFFE) == 0)
      {
        v19 = _swiftEmptyArrayStorage;
        goto LABEL_48;
      }

      LODWORD(v83) = 1;
      LODWORD(v82) = v78 - 1;
      v47 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v83, &v82, &type metadata for UID, v47, &v84);
      v5 = v84;
      v19 = sub_100086338(0, 1, 1, _swiftEmptyArrayStorage);
      a1 = *(v19 + 2);
      v48 = *(v19 + 3);
      v14 = (a1 + 1);
      if (a1 < v48 >> 1)
      {
LABEL_11:
        *(v19 + 2) = v14;
        v49 = &v19[12 * a1];
        *(v49 + 4) = v5;
        v49[40] = 0;
LABEL_48:
        if (v46 == 0xFFFFFFFF)
        {
          sub_10007CF44(v79, _s15MissingMessagesOMa);
          goto LABEL_56;
        }

        LODWORD(v83) = v46 + 1;
        LODWORD(v82) = -1;
        v69 = sub_100016948();
        static MessageIdentifier.... infix(_:_:)(&v83, &v82, &type metadata for UID, v69, &v84);
        v35 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100086338(0, *(v19 + 2) + 1, 1, v19);
        }

        v37 = *(v19 + 2);
        v68 = *(v19 + 3);
LABEL_53:
        v38 = v37 + 1;
        if (v37 >= v68 >> 1)
        {
          v19 = sub_100086338((v68 > 1), v37 + 1, 1, v19);
        }

        goto LABEL_55;
      }
    }

    v19 = sub_100086338((v48 > 1), v14, 1, v19);
    goto LABEL_11;
  }

  sub_10007CFA4(v33, v29, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
  v39 = sub_100016948();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v39, &v84);
  v83 = v84;
  v72[0] = v39;
  v82 = Range<>.init<A>(_:)(&v83, &type metadata for UID, v39);
  sub_100016D2C();
  sub_1004A7124();
  v40 = *(v25 + 20);
  v73 = v29;
  sub_10007CEDC(&v29[v40], v18, _s15MissingMessagesO11QueriedUIDsVMa);
  v41 = v75;
  MessageIdentifierSet.subtracting(_:)(v18, v75);
  sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
  v42 = v77;
  v72[1] = v19;
  MessageIdentifierSet.ranges.getter(v77);
  sub_10000E268(v42, v14, &qword_1005CD7A0, &unk_1004CF590);
  v43 = *(v76 + 36);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v44 = sub_1004A7044();
  sub_100025F40(v42, &qword_1005CD7A0, &unk_1004CF590);
  *&v14[v43] = v44;
  v45 = v41;
  if (v44 != sub_1004A7074())
  {
    v50 = v43;
    v19 = _swiftEmptyArrayStorage;
    while (1)
    {
      MessageIdentifierSet.RangeView.subscript.getter(v7, &v84);
      v51 = v84;
      v52 = sub_1004A7044();
      v53 = sub_1004A7074();
      if (v44 < v52 || v44 >= v53)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100086338(0, *(v19 + 2) + 1, 1, v19);
      }

      v55 = *(v19 + 2);
      v54 = *(v19 + 3);
      if (v55 >= v54 >> 1)
      {
        v19 = sub_100086338((v54 > 1), v55 + 1, 1, v19);
      }

      ++v44;
      *(v19 + 2) = v55 + 1;
      v56 = &v19[12 * v55];
      *(v56 + 4) = v51;
      v56[40] = 0;
      if (v44 == sub_1004A7074())
      {
        *&v14[v50] = v44;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_21:
  sub_100025F40(v14, &qword_1005CECC8, &qword_1004D1828);
  v57 = v74;
  v52 = v45;
  MessageIdentifierSet.ranges.getter(v74);
  v58 = sub_1000E4C0C();
  v60 = v59;
  sub_100025F40(v57, &qword_1005CD7A0, &unk_1004CF590);
  v44 = v73;
  v61 = HIDWORD(v78);
  if (v81)
  {
    v62 = 0;
  }

  else
  {
    v62 = HIDWORD(v78);
  }

  if (v62 <= *v73)
  {
    v62 = *v73;
  }

  if (v81)
  {
    LODWORD(v61) = *v73;
    v62 = *v73;
  }

  if (!v73[4])
  {
    LODWORD(v61) = v62;
  }

  if (v60)
  {
    if (v73[4] & v81)
    {
      v63 = 1;
      goto LABEL_39;
    }
  }

  else
  {
    if (v61 <= HIDWORD(v58))
    {
      LODWORD(v61) = HIDWORD(v58);
    }

    if ((v73[4] & v81) != 0)
    {
      LODWORD(v61) = HIDWORD(v58);
    }
  }

  if (v61 == -1)
  {
    sub_10007CF44(v79, _s15MissingMessagesOMa);
    sub_100025F40(v45, &unk_1005D91B0, &unk_1004CF400);
    sub_10007CF44(v44, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
    goto LABEL_56;
  }

  v63 = v61 + 1;
LABEL_39:
  LODWORD(v83) = v63;
  LODWORD(v82) = -1;
  static MessageIdentifier.... infix(_:_:)(&v83, &v82, &type metadata for UID, v72[0], &v84);
  v51 = v84;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_58:
    v19 = sub_100086338(0, *(v19 + 2) + 1, 1, v19);
  }

  v65 = *(v19 + 2);
  v64 = *(v19 + 3);
  if (v65 >= v64 >> 1)
  {
    v19 = sub_100086338((v64 > 1), v65 + 1, 1, v19);
  }

  sub_10007CF44(v79, _s15MissingMessagesOMa);
  sub_100025F40(v52, &unk_1005D91B0, &unk_1004CF400);
  sub_10007CF44(v44, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
  *(v19 + 2) = v65 + 1;
  v66 = &v19[12 * v65];
  *(v66 + 4) = v51;
  v66[40] = 1;
LABEL_56:
  LOBYTE(v84) = 0;
  LOBYTE(v83) = BYTE4(v80) & 1;
  return v19;
}

__n128 sub_10007CD80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_10007CD94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_10007CDDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PartialRange(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s11QueryRangesV7ElementVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s11QueryRangesV7ElementVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10007CEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007CF44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007CFA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s11QueryRangesV19FetchedWindowUpdateOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11QueryRangesV19FetchedWindowUpdateOwst(uint64_t result, int a2, int a3)
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_10007D058(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007D074(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 5) = 1;
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

unint64_t sub_10007D0BC()
{
  result = qword_1005CECD8;
  if (!qword_1005CECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CECD8);
  }

  return result;
}

Swift::Int sub_10007D110()
{
  result = sub_100093190(&off_100598FB8);
  qword_1005DDF10 = result;
  return result;
}

uint64_t sub_10007D138(uint64_t a1)
{
  v2 = v1;
  PendingDownload = type metadata accessor for FindPendingDownload();
  v5 = PendingDownload - 8;
  v6 = *(*(PendingDownload - 8) + 64);
  __chkstk_darwin(PendingDownload);
  v103 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v102 = &v96 - v9;
  v10 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v96 - v12;
  v106 = type metadata accessor for MailboxTaskLogger(0);
  v14 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v98 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v101 = &v96 - v17;
  __chkstk_darwin(v18);
  v20 = &v96 - v19;
  __chkstk_darwin(v21);
  v100 = &v96 - v22;
  __chkstk_darwin(v23);
  v25 = &v96 - v24;
  __chkstk_darwin(v26);
  v28 = &v96 - v27;
  v29 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v99 = &v96 - v34;
  __chkstk_darwin(v35);
  v37 = &v96 - v36;
  v38 = *(v5 + 44);
  v105 = v2;
  sub_10002A54C(v2 + v38, &v96 - v36);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  if (sub_1004A70C4())
  {
    sub_1000808D8(a1, v28, type metadata accessor for MailboxTaskLogger);
    sub_1000808D8(a1, v25, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v39 = sub_1004A4A54();
    v40 = sub_1004A6034();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v41 = 68159235;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v42 = v106;
      v43 = &v25[*(v106 + 20)];
      *(v41 + 10) = *v43;
      *(v41 + 11) = 2082;
      v44 = &v28[*(v42 + 20)];
      *(v41 + 13) = sub_10015BA6C(*(v44 + 1), *(v44 + 2), &v109);
      *(v41 + 21) = 1040;
      *(v41 + 23) = 2;
      *(v41 + 27) = 512;
      LOWORD(v43) = *(v43 + 12);
      sub_100080940(v25, type metadata accessor for MailboxTaskLogger);
      *(v41 + 29) = v43;
      *(v41 + 31) = 2160;
      *(v41 + 33) = 0x786F626C69616DLL;
      *(v41 + 41) = 2085;
      v45 = *(v44 + 4);
      LODWORD(v44) = *(v44 + 10);

      sub_100080940(v28, type metadata accessor for MailboxTaskLogger);
      v107 = v45;
      v108 = v44;
      v46 = sub_1004A5824();
      v48 = sub_10015BA6C(v46, v47, &v109);

      *(v41 + 43) = v48;
      _os_log_impl(&_mh_execute_header, v39, v40, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v41, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100080940(v25, type metadata accessor for MailboxTaskLogger);

      sub_100080940(v28, type metadata accessor for MailboxTaskLogger);
    }

    v77 = v37;
    return sub_100025F40(v77, &unk_1005D91B0, &unk_1004CF400);
  }

  v97 = v29;
  v104 = v37;
  MessageIdentifierSet.ranges.getter(v13);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v49 = sub_1004A7044();
  v50 = sub_1004A7074();
  v51 = sub_1004A7044();
  result = sub_1004A7074();
  if (v49 < v51 || result < v49)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v53 = sub_1004A7044();
  v54 = sub_1004A7074();
  result = sub_100025F40(v13, &qword_1005CD7A0, &unk_1004CF590);
  if (v50 < v53 || v54 < v50)
  {
    goto LABEL_26;
  }

  if (!__OFSUB__(v50, v49))
  {
    if (v50 - v49 > 19)
    {
      v78 = v101;
      sub_1000808D8(a1, v101, type metadata accessor for MailboxTaskLogger);
      v79 = v98;
      sub_1000808D8(a1, v98, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v80 = v104;
      sub_10002A54C(v104, v32);
      v81 = v103;
      sub_1000808D8(v105, v103, type metadata accessor for FindPendingDownload);
      v82 = sub_1004A4A54();
      v83 = sub_1004A6034();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v109 = v105;
        *v84 = 68159747;
        *(v84 + 4) = 2;
        *(v84 + 8) = 256;
        v85 = v106;
        v86 = v78;
        v87 = v79 + *(v106 + 20);
        *(v84 + 10) = *v87;
        *(v84 + 11) = 2082;
        v88 = v86 + *(v85 + 20);
        *(v84 + 13) = sub_10015BA6C(*(v88 + 8), *(v88 + 16), &v109);
        *(v84 + 21) = 1040;
        *(v84 + 23) = 2;
        *(v84 + 27) = 512;
        LOWORD(v87) = *(v87 + 24);
        sub_100080940(v79, type metadata accessor for MailboxTaskLogger);
        *(v84 + 29) = v87;
        *(v84 + 31) = 2160;
        *(v84 + 33) = 0x786F626C69616DLL;
        *(v84 + 41) = 2085;
        v89 = *(v88 + 32);
        LODWORD(v87) = *(v88 + 40);

        sub_100080940(v86, type metadata accessor for MailboxTaskLogger);
        v107 = v89;
        v108 = v87;
        v90 = sub_1004A5824();
        v92 = sub_10015BA6C(v90, v91, &v109);

        *(v84 + 43) = v92;
        *(v84 + 51) = 2048;
        v93 = MessageIdentifierSet.count.getter();
        sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
        *(v84 + 53) = v93;
        *(v84 + 61) = 2082;
        if (*(v81 + 57))
        {
          v94 = 6581810;
        }

        else
        {
          v94 = 7631665;
        }

        sub_100080940(v81, type metadata accessor for FindPendingDownload);
        v95 = sub_10015BA6C(v94, 0xE300000000000000, &v109);

        *(v84 + 63) = v95;
        _os_log_impl(&_mh_execute_header, v82, v83, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Excluding %ld, UIDs %{public}s", v84, 0x47u);
        swift_arrayDestroy();

        v77 = v104;
      }

      else
      {
        sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
        sub_100080940(v79, type metadata accessor for MailboxTaskLogger);

        sub_100080940(v81, type metadata accessor for FindPendingDownload);
        sub_100080940(v78, type metadata accessor for MailboxTaskLogger);
        v77 = v80;
      }
    }

    else
    {
      v55 = v100;
      sub_1000808D8(a1, v100, type metadata accessor for MailboxTaskLogger);
      sub_1000808D8(a1, v20, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v56 = v99;
      sub_10002A54C(v104, v99);
      v57 = v102;
      sub_1000808D8(v105, v102, type metadata accessor for FindPendingDownload);
      v58 = sub_1004A4A54();
      v59 = sub_1004A6034();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v109 = v105;
        *v60 = 68159747;
        *(v60 + 4) = 2;
        *(v60 + 8) = 256;
        v61 = v106;
        v62 = &v20[*(v106 + 20)];
        *(v60 + 10) = *v62;
        *(v60 + 11) = 2082;
        v63 = v56;
        v64 = v55;
        v65 = v55 + *(v61 + 20);
        *(v60 + 13) = sub_10015BA6C(*(v65 + 8), *(v65 + 16), &v109);
        *(v60 + 21) = 1040;
        *(v60 + 23) = 2;
        *(v60 + 27) = 512;
        LOWORD(v62) = *(v62 + 12);
        sub_100080940(v20, type metadata accessor for MailboxTaskLogger);
        *(v60 + 29) = v62;
        *(v60 + 31) = 2160;
        *(v60 + 33) = 0x786F626C69616DLL;
        *(v60 + 41) = 2085;
        v66 = *(v65 + 32);
        v67 = *(v65 + 40);

        sub_100080940(v64, type metadata accessor for MailboxTaskLogger);
        v107 = v66;
        v108 = v67;
        v68 = sub_1004A5824();
        v70 = sub_10015BA6C(v68, v69, &v109);

        *(v60 + 43) = v70;
        *(v60 + 51) = 2082;
        v71 = MessageIdentifierSet.debugDescription.getter(v97);
        v73 = v72;
        sub_100025F40(v63, &unk_1005D91B0, &unk_1004CF400);
        v74 = sub_10015BA6C(v71, v73, &v109);

        *(v60 + 53) = v74;
        *(v60 + 61) = 2082;
        if (*(v57 + 57))
        {
          v75 = 6581810;
        }

        else
        {
          v75 = 7631665;
        }

        sub_100080940(v57, type metadata accessor for FindPendingDownload);
        v76 = sub_10015BA6C(v75, 0xE300000000000000, &v109);

        *(v60 + 63) = v76;
        _os_log_impl(&_mh_execute_header, v58, v59, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Excluding UIDs %{public}s, %{public}s", v60, 0x47u);
        swift_arrayDestroy();

        v77 = v104;
      }

      else
      {
        sub_100080940(v20, type metadata accessor for MailboxTaskLogger);

        sub_100080940(v57, type metadata accessor for FindPendingDownload);
        sub_100025F40(v56, &unk_1005D91B0, &unk_1004CF400);
        sub_100080940(v55, type metadata accessor for MailboxTaskLogger);
        v77 = v104;
      }
    }

    return sub_100025F40(v77, &unk_1005D91B0, &unk_1004CF400);
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_10007DDF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v154 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v8 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v141 - v10;
  __chkstk_darwin(v12);
  v152 = &v141 - v13;
  __chkstk_darwin(v14);
  v149 = &v141 - v15;
  __chkstk_darwin(v16);
  v147 = &v141 - v17;
  __chkstk_darwin(v18);
  v148 = &v141 - v19;
  __chkstk_darwin(v20);
  v150 = &v141 - v21;
  __chkstk_darwin(v22);
  v151 = &v141 - v23;
  v24 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v141 - v29;
  v31 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  __chkstk_darwin(&v141 - v36);
  v38 = &v141 - v37;
  __chkstk_darwin(v39);
  v156 = &v141 - v44;
  v45 = *v3;
  if (!*v3)
  {
    sub_1000808D8(a2, v11, type metadata accessor for MailboxTaskLogger);
    sub_1000808D8(a2, v8, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v77 = sub_1004A4A54();
    v78 = sub_1004A6004();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v155 = a2;
      v156 = v80;
      v159[0] = v80;
      *v79 = 68159235;
      *(v79 + 4) = 2;
      *(v79 + 8) = 256;
      v81 = v154;
      v82 = &v8[*(v154 + 20)];
      *(v79 + 10) = *v82;
      *(v79 + 11) = 2082;
      v83 = a1;
      v84 = v3;
      v85 = &v11[*(v81 + 20)];
      *(v79 + 13) = sub_10015BA6C(*(v85 + 1), *(v85 + 2), v159);
      *(v79 + 21) = 1040;
      *(v79 + 23) = 2;
      *(v79 + 27) = 512;
      LOWORD(v82) = *(v82 + 12);
      sub_100080940(v8, type metadata accessor for MailboxTaskLogger);
      *(v79 + 29) = v82;
      *(v79 + 31) = 2160;
      *(v79 + 33) = 0x786F626C69616DLL;
      *(v79 + 41) = 2085;
      v86 = *(v85 + 4);
      LODWORD(v82) = *(v85 + 10);
      v3 = v84;
      a1 = v83;

      sub_100080940(v11, type metadata accessor for MailboxTaskLogger);
      v157 = v86;
      v158 = v82;
      v87 = sub_1004A5824();
      v89 = sub_10015BA6C(v87, v88, v159);

      *(v79 + 43) = v89;
      _os_log_impl(&_mh_execute_header, v77, v78, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned no messages to download.", v79, 0x33u);
      swift_arrayDestroy();
      a2 = v155;
    }

    else
    {
      sub_100080940(v8, type metadata accessor for MailboxTaskLogger);

      v90 = sub_100080940(v11, type metadata accessor for MailboxTaskLogger);
    }

    goto LABEL_35;
  }

  v144 = v40;
  v145 = v43;
  v146 = v42;
  v143 = v41;
  v141 = v27;
  v153 = v3;
  v46 = *(v45 + 16);
  v47 = _swiftEmptyArrayStorage;
  v155 = a2;
  if (v46)
  {
    v142 = a1;
    v157 = _swiftEmptyArrayStorage;
    sub_100091DA8(0, v46, 0);
    v47 = v157;
    v48 = (v45 + 32);
    v49 = *(v157 + 2);
    do
    {
      v51 = *v48;
      v48 += 6;
      v50 = v51;
      v157 = v47;
      v52 = *(v47 + 3);
      if (v49 >= v52 >> 1)
      {
        sub_100091DA8((v52 > 1), v49 + 1, 1);
        v47 = v157;
      }

      *(v47 + 2) = v49 + 1;
      *&v47[4 * v49++ + 32] = v50;
      --v46;
    }

    while (v46);
    a1 = v142;
    a2 = v155;
  }

  sub_100016D2C();
  sub_1004A7114();
  v53 = *(v47 + 2);
  if (v53)
  {
    v54 = (v47 + 32);
    do
    {
      v55 = *v54++;
      LODWORD(v159[0]) = v55;
      MessageIdentifierSet.insert(_:)(&v157, v159, v31);
      --v53;
    }

    while (v53);
  }

  v56 = v156;
  sub_100020950(v38, v156);
  MessageIdentifierSet.ranges.getter(v30);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v57 = sub_1004A7044();
  v58 = sub_1004A7074();
  v59 = sub_1004A7044();
  v60 = sub_1004A7074();
  if (v57 < v59 || v60 < v57)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v61 = sub_1004A7044();
  v62 = sub_1004A7074();
  sub_100025F40(v30, &qword_1005CD7A0, &unk_1004CF590);
  if (v58 < v61 || v62 < v58)
  {
    goto LABEL_39;
  }

  if (__OFSUB__(v58, v57))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v58 - v57 - 21) >= 0xFFFFFFFFFFFFFFECLL)
  {
    v91 = v151;
    sub_1000808D8(a2, v151, type metadata accessor for MailboxTaskLogger);
    v92 = v150;
    sub_1000808D8(a2, v150, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v93 = v144;
    sub_10002A54C(v56, v144);
    v94 = sub_1004A4A54();
    v95 = sub_1004A6004();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v159[0] = v152;
      *v96 = 68159491;
      LODWORD(v149) = v95;
      *(v96 + 4) = 2;
      *(v96 + 8) = 256;
      v97 = v154;
      v98 = v92 + *(v154 + 20);
      *(v96 + 10) = *v98;
      *(v96 + 11) = 2082;
      v99 = v91 + *(v97 + 20);
      *(v96 + 13) = sub_10015BA6C(*(v99 + 8), *(v99 + 16), v159);
      *(v96 + 21) = 1040;
      *(v96 + 23) = 2;
      *(v96 + 27) = 512;
      LOWORD(v98) = *(v98 + 24);
      sub_100080940(v92, type metadata accessor for MailboxTaskLogger);
      *(v96 + 29) = v98;
      *(v96 + 31) = 2160;
      *(v96 + 33) = 0x786F626C69616DLL;
      *(v96 + 41) = 2085;
      v100 = v91;
      v101 = *(v99 + 32);
      LODWORD(v98) = *(v99 + 40);

      sub_100080940(v100, type metadata accessor for MailboxTaskLogger);
      v157 = v101;
      v158 = v98;
      v102 = sub_1004A5824();
      v104 = sub_10015BA6C(v102, v103, v159);

      *(v96 + 43) = v104;
      *(v96 + 51) = 2082;
      v105 = MessageIdentifierSet.debugDescription.getter(v31);
      v107 = v106;
      sub_100025F40(v93, &unk_1005D91B0, &unk_1004CF400);
      v108 = sub_10015BA6C(v105, v107, v159);

      *(v96 + 53) = v108;
      _os_log_impl(&_mh_execute_header, v94, v149, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned UIDs %{public}s to download.", v96, 0x3Du);
      swift_arrayDestroy();

      a2 = v155;
      v109 = v156;
    }

    else
    {
      sub_100080940(v92, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v93, &unk_1005D91B0, &unk_1004CF400);
      sub_100080940(v91, type metadata accessor for MailboxTaskLogger);
      v109 = v56;
    }

    v90 = sub_100025F40(v109, &unk_1005D91B0, &unk_1004CF400);
    v3 = v153;
    goto LABEL_35;
  }

  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v63 = sub_1004A70C4();
  v3 = v153;
  if (v63)
  {
    v64 = v148;
    sub_1000808D8(a2, v148, type metadata accessor for MailboxTaskLogger);
    v65 = v147;
    sub_1000808D8(a2, v147, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v66 = sub_1004A4A54();
    v67 = sub_1004A6004();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v159[0] = v152;
      *v68 = 68159235;
      *(v68 + 4) = 2;
      *(v68 + 8) = 256;
      v69 = v154;
      v70 = v65 + *(v154 + 20);
      *(v68 + 10) = *v70;
      *(v68 + 11) = 2082;
      v71 = v64;
      v72 = v64 + *(v69 + 20);
      *(v68 + 13) = sub_10015BA6C(*(v72 + 8), *(v72 + 16), v159);
      *(v68 + 21) = 1040;
      *(v68 + 23) = 2;
      *(v68 + 27) = 512;
      LOWORD(v70) = *(v70 + 24);
      sub_100080940(v65, type metadata accessor for MailboxTaskLogger);
      *(v68 + 29) = v70;
      *(v68 + 31) = 2160;
      *(v68 + 33) = 0x786F626C69616DLL;
      *(v68 + 41) = 2085;
      v73 = *(v72 + 32);
      LODWORD(v72) = *(v72 + 40);

      sub_100080940(v71, type metadata accessor for MailboxTaskLogger);
      v157 = v73;
      v158 = v72;
      v74 = sub_1004A5824();
      v76 = sub_10015BA6C(v74, v75, v159);

      *(v68 + 43) = v76;
      a2 = v155;
      _os_log_impl(&_mh_execute_header, v66, v67, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned no messages to download.", v68, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100080940(v65, type metadata accessor for MailboxTaskLogger);

      sub_100080940(v64, type metadata accessor for MailboxTaskLogger);
    }

    v134 = v156;
    goto LABEL_34;
  }

  v110 = v149;
  sub_1000808D8(a2, v149, type metadata accessor for MailboxTaskLogger);
  sub_1000808D8(a2, v152, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10002A54C(v56, v145);
  sub_10002A54C(v56, v146);
  v111 = v143;
  sub_10002A54C(v56, v143);
  v112 = sub_1004A4A54();
  v113 = sub_1004A6004();
  if (os_log_type_enabled(v112, v113))
  {
    LODWORD(v151) = v113;
    v114 = swift_slowAlloc();
    v159[0] = swift_slowAlloc();
    *v114 = 68160003;
    *(v114 + 4) = 2;
    *(v114 + 8) = 256;
    v115 = v154;
    v116 = v152;
    v117 = v152 + *(v154 + 20);
    *(v114 + 10) = *v117;
    *(v114 + 11) = 2082;
    v118 = v110;
    v119 = v110 + *(v115 + 20);
    *(v114 + 13) = sub_10015BA6C(*(v119 + 8), *(v119 + 16), v159);
    *(v114 + 21) = 1040;
    *(v114 + 23) = 2;
    *(v114 + 27) = 512;
    LOWORD(v117) = *(v117 + 24);
    sub_100080940(v116, type metadata accessor for MailboxTaskLogger);
    *(v114 + 29) = v117;
    *(v114 + 31) = 2160;
    *(v114 + 33) = 0x786F626C69616DLL;
    *(v114 + 41) = 2085;
    v120 = *(v119 + 32);
    LODWORD(v119) = *(v119 + 40);

    sub_100080940(v118, type metadata accessor for MailboxTaskLogger);
    v157 = v120;
    v158 = v119;
    v121 = sub_1004A5824();
    v123 = sub_10015BA6C(v121, v122, v159);

    *(v114 + 43) = v123;
    *(v114 + 51) = 2048;
    v124 = v145;
    v125 = MessageIdentifierSet.count.getter();
    sub_100025F40(v124, &unk_1005D91B0, &unk_1004CF400);
    *(v114 + 53) = v125;
    *(v114 + 61) = 1024;
    v126 = v146;
    v127 = sub_1000E5314();
    if ((v127 & 0x100000000) == 0)
    {
      v128 = v127;
      sub_100025F40(v126, &unk_1005D91B0, &unk_1004CF400);
      *(v114 + 63) = v128;
      *(v114 + 67) = 1024;
      v129 = v141;
      v130 = v143;
      MessageIdentifierSet.ranges.getter(v141);
      v131 = sub_1000E4C0C();
      v133 = v132;
      sub_100025F40(v129, &qword_1005CD7A0, &unk_1004CF590);
      if ((v133 & 1) == 0)
      {
        sub_100025F40(v130, &unk_1005D91B0, &unk_1004CF400);
        *(v114 + 69) = HIDWORD(v131);
        _os_log_impl(&_mh_execute_header, v112, v151, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld (min:  %u, max: %u) messages to download.", v114, 0x49u);
        swift_arrayDestroy();

        v90 = sub_100025F40(v156, &unk_1005D91B0, &unk_1004CF400);
        a2 = v155;
        v3 = v153;
        goto LABEL_35;
      }

LABEL_42:
      __break(1u);
      return;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_100025F40(v111, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v146, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v145, &unk_1005D91B0, &unk_1004CF400);
  sub_100080940(v152, type metadata accessor for MailboxTaskLogger);

  sub_100080940(v110, type metadata accessor for MailboxTaskLogger);
  v134 = v56;
LABEL_34:
  v90 = sub_100025F40(v134, &unk_1005D91B0, &unk_1004CF400);
LABEL_35:
  v135 = *(v3 + 32);
  v136 = *(v3 + 40);
  __chkstk_darwin(v90);
  *(&v141 - 2) = v3;
  *(&v141 - 1) = a2;
  if (*(a1 + 192) == 1)
  {
    v138 = *(a1 + 176);
    v137 = *(a1 + 184);
    v157 = *(a1 + 168);
    v139 = v157;

    sub_1000BE940(&v157, v135, v136, 0, sub_10008078C);
    sub_100020D58(v139, v138, v137, 1);
    v140 = v157;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v140;
    *(a1 + 192) = 1;
  }
}

void sub_10007EED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v136 = a3;
  v5 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v130 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v119 - v9;
  __chkstk_darwin(v11);
  v129 = &v119 - v12;
  __chkstk_darwin(v13);
  v131 = &v119 - v14;
  v15 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v119 - v17;
  v19 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v133 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v134 = &v119 - v23;
  __chkstk_darwin(v24);
  v137 = &v119 - v25;
  __chkstk_darwin(v26);
  v28 = &v119 - v27;
  __chkstk_darwin(v29);
  v31 = &v119 - v30;
  v32 = type metadata accessor for MessagesPendingDownload();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  v39 = &v119 - v38;
  v40 = *a2;
  if (*a2)
  {
    v120 = v10;
    v121 = v5;
    v125 = v37;
    v127 = v36;
    v41 = *(a2 + 57);
    v42 = a1 + *(type metadata accessor for MailboxSyncState() + 52);
    v43 = v42 + *(type metadata accessor for PendingPersistenceUpdates() + 28);
    v44 = v43;
    v124 = v41;
    if (v41 == 1)
    {
      v44 = v43 + *(type metadata accessor for MessagesPendingDownloadPerPass() + 20);
    }

    v126 = v43;
    v135 = v31;
    v45 = sub_1000808D8(v44, v39, type metadata accessor for MessagesPendingDownload);
    __chkstk_darwin(v45);
    v128 = v39;
    *(&v119 - 2) = v39;

    v122 = v40;
    v46 = sub_10009EBDC(sub_100080794, (&v119 - 4), v40);
    v47 = *(v46 + 16);
    v48 = _swiftEmptyArrayStorage;
    v132 = a1;
    v123 = v46;
    if (v47)
    {
      v49 = v46;
      v138 = _swiftEmptyArrayStorage;
      sub_100091DA8(0, v47, 0);
      v48 = v138;
      v50 = (v49 + 32);
      v51 = v138[2];
      do
      {
        v53 = *v50;
        v50 += 6;
        v52 = v53;
        v138 = v48;
        v54 = v48[3];
        if (v51 >= v54 >> 1)
        {
          sub_100091DA8((v54 > 1), v51 + 1, 1);
          v48 = v138;
        }

        v48[2] = v51 + 1;
        *(v48 + v51++ + 8) = v52;
        --v47;
      }

      while (v47);
    }

    sub_100016D2C();
    sub_1004A7114();
    v55 = v48[2];
    v56 = v137;
    if (v55)
    {
      v57 = (v48 + 4);
      do
      {
        v58 = *v57++;
        LODWORD(v140[0]) = v58;
        MessageIdentifierSet.insert(_:)(&v138, v140, v19);
        --v55;
      }

      while (v55);
    }

    v59 = v135;
    sub_100020950(v28, v135);
    MessageIdentifierSet.ranges.getter(v18);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v60 = sub_1004A7044();
    v61 = sub_1004A7074();
    v62 = sub_1004A7044();
    v63 = sub_1004A7074();
    if (v60 < v62 || v63 < v60)
    {
      __break(1u);
    }

    else
    {
      v64 = sub_1004A7044();
      v65 = sub_1004A7074();
      sub_100025F40(v18, &qword_1005CD7A0, &unk_1004CF590);
      if (v61 >= v64 && v65 >= v61)
      {
        if (!__OFSUB__(v61, v60))
        {
          if ((v61 - v60 - 21) >= 0xFFFFFFFFFFFFFFECLL)
          {
            v87 = v136;
            v88 = v131;
            sub_1000808D8(v136, v131, type metadata accessor for MailboxTaskLogger);
            v89 = v129;
            sub_1000808D8(v87, v129, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            sub_10002A54C(v59, v56);
            v90 = v134;
            sub_10002A54C(v59, v134);
            v91 = v122;
            swift_bridgeObjectRetain_n();
            v92 = sub_1004A4A54();
            v93 = sub_1004A6034();
            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v140[0] = v136;
              *v94 = 68160003;
              *(v94 + 4) = 2;
              *(v94 + 8) = 256;
              v95 = v121;
              v96 = *(v121 + 20);
              LODWORD(v133) = v93;
              v97 = v89 + v96;
              *(v94 + 10) = *(v89 + v96);
              *(v94 + 11) = 2082;
              v98 = v89;
              v99 = v88;
              v100 = v88 + *(v95 + 20);
              *(v94 + 13) = sub_10015BA6C(*(v100 + 8), *(v100 + 16), v140);
              *(v94 + 21) = 1040;
              *(v94 + 23) = 2;
              *(v94 + 27) = 512;
              v101 = *(v97 + 24);
              sub_100080940(v98, type metadata accessor for MailboxTaskLogger);
              *(v94 + 29) = v101;
              *(v94 + 31) = 2160;
              *(v94 + 33) = 0x786F626C69616DLL;
              *(v94 + 41) = 2085;
              v102 = *(v100 + 32);
              LODWORD(v100) = *(v100 + 40);

              sub_100080940(v99, type metadata accessor for MailboxTaskLogger);
              v138 = v102;
              v139 = v100;
              v103 = sub_1004A5824();
              v105 = sub_10015BA6C(v103, v104, v140);

              *(v94 + 43) = v105;
              *(v94 + 51) = 2082;
              v106 = MessageIdentifierSet.debugDescription.getter(v19);
              v108 = v107;
              sub_100025F40(v56, &unk_1005D91B0, &unk_1004CF400);
              v109 = sub_10015BA6C(v106, v108, v140);

              *(v94 + 53) = v109;
              *(v94 + 61) = 2048;
              v110 = v134;
              v111 = MessageIdentifierSet.count.getter();
              sub_100025F40(v110, &unk_1005D91B0, &unk_1004CF400);
              *(v94 + 63) = v111;
              *(v94 + 71) = 2048;
              v112 = *(v91 + 16);

              *(v94 + 73) = v112;

              _os_log_impl(&_mh_execute_header, v92, v133, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %{public}s (%ld out of %ld) to download.", v94, 0x51u);
              swift_arrayDestroy();

              v59 = v135;
            }

            else
            {

              sub_100025F40(v90, &unk_1005D91B0, &unk_1004CF400);
              sub_100080940(v89, type metadata accessor for MailboxTaskLogger);

              sub_100025F40(v56, &unk_1005D91B0, &unk_1004CF400);
              sub_100080940(v88, type metadata accessor for MailboxTaskLogger);
            }

            v113 = v126;
            if (!v124)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v66 = v136;
            v67 = v120;
            sub_1000808D8(v136, v120, type metadata accessor for MailboxTaskLogger);
            v68 = v130;
            sub_1000808D8(v66, v130, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v69 = v133;
            sub_10002A54C(v59, v133);
            v70 = v122;
            swift_bridgeObjectRetain_n();
            v71 = sub_1004A4A54();
            v72 = sub_1004A6034();
            if (os_log_type_enabled(v71, v72))
            {
              v73 = v68;
              v74 = swift_slowAlloc();
              v137 = swift_slowAlloc();
              v140[0] = v137;
              *v74 = 68159747;
              *(v74 + 4) = 2;
              *(v74 + 8) = 256;
              v75 = v121;
              v76 = *(v121 + 20);
              LODWORD(v136) = v72;
              v77 = v73 + v76;
              *(v74 + 10) = *(v73 + v76);
              *(v74 + 11) = 2082;
              v78 = v67 + *(v75 + 20);
              *(v74 + 13) = sub_10015BA6C(*(v78 + 8), *(v78 + 16), v140);
              *(v74 + 21) = 1040;
              *(v74 + 23) = 2;
              *(v74 + 27) = 512;
              v79 = *(v77 + 24);
              sub_100080940(v73, type metadata accessor for MailboxTaskLogger);
              *(v74 + 29) = v79;
              *(v74 + 31) = 2160;
              *(v74 + 33) = 0x786F626C69616DLL;
              *(v74 + 41) = 2085;
              v80 = *(v78 + 32);
              LODWORD(v78) = *(v78 + 40);

              sub_100080940(v67, type metadata accessor for MailboxTaskLogger);
              v138 = v80;
              v139 = v78;
              v59 = v135;
              v81 = sub_1004A5824();
              v83 = sub_10015BA6C(v81, v82, v140);

              *(v74 + 43) = v83;
              *(v74 + 51) = 2048;
              v84 = v133;
              v85 = MessageIdentifierSet.count.getter();
              sub_100025F40(v84, &unk_1005D91B0, &unk_1004CF400);
              *(v74 + 53) = v85;
              *(v74 + 61) = 2048;
              v86 = *(v70 + 16);

              *(v74 + 63) = v86;

              _os_log_impl(&_mh_execute_header, v71, v136, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld messages (out of %ld) to download.", v74, 0x47u);
              swift_arrayDestroy();
            }

            else
            {

              sub_100025F40(v69, &unk_1005D91B0, &unk_1004CF400);
              sub_100080940(v68, type metadata accessor for MailboxTaskLogger);

              sub_100080940(v67, type metadata accessor for MailboxTaskLogger);
            }

            v113 = v126;
            if (!v124)
            {
LABEL_24:
              v114 = v125;
              sub_1000808D8(v113, v125, type metadata accessor for MessagesPendingDownload);
              sub_1000DB55C(v123);

              sub_10003E784(v114, v113);
              v115 = v127;
              sub_1000808D8(v113, v127, type metadata accessor for MessagesPendingDownload);
              sub_1000DB72C();
              sub_10003E784(v115, v113);

              goto LABEL_28;
            }
          }

          v116 = type metadata accessor for MessagesPendingDownloadPerPass();
          v117 = v125;
          sub_1000808D8(v113 + *(v116 + 20), v125, type metadata accessor for MessagesPendingDownload);
          sub_1000DB55C(v123);

          sub_10003E784(v117, v113 + *(v116 + 20));
          v118 = v127;
          sub_1000808D8(v113 + *(v116 + 20), v127, type metadata accessor for MessagesPendingDownload);
          sub_1000DB72C();
          sub_10003E784(v118, v113 + *(v116 + 20));
          LOBYTE(v116) = sub_1004A6D34();

          if ((v116 & 1) == 0)
          {
LABEL_29:
            sub_100025F40(v59, &unk_1005D91B0, &unk_1004CF400);
            sub_100080940(v128, type metadata accessor for MessagesPendingDownload);
            return;
          }

LABEL_28:
          sub_10013FC9C(0xAu);
          sub_100088568(&v138, 10);
          goto LABEL_29;
        }

LABEL_33:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_33;
  }
}

uint64_t sub_10007FC14(int *a1, uint64_t *a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = *(type metadata accessor for MessagesPendingDownload() + 20);
  v17 = v8;
  if (MessageIdentifierSet.contains(_:)(&v17, v4))
  {
    v10 = 0;
  }

  else
  {
    v11 = *a2;

    sub_1000B492C(v12);
    v16 = v8;
    v13 = MessageIdentifierSet.contains(_:)(&v16, v4);
    sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
    v10 = v13 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_10007FD34@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_10007FD88()
{
  if (qword_1005CCE48 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10007FDF4()
{
  BYTE8(v2) = 0;
  *&v2 = *(v0 + 57);
  sub_1004A6934();
  return *(&v2 + 1);
}

unint64_t sub_10007FE4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  result = sub_10001FDB8(a1, a2);
  if (result)
  {
    v8 = 0xF000000000000007;
  }

  else
  {
    v9 = sub_10000C9C0(&qword_1005CEE60, &unk_1004D1AC0);
    v10 = swift_allocBox();
    v12 = v11;
    v13 = v9[16];
    v14 = v11 + v9[20];
    v15 = v9[24];
    v16 = *(v4 + 16);
    *v11 = *(v4 + 8);
    *(v11 + 8) = v16;
    *(v11 + 16) = *(v4 + 57);
    sub_10002A54C(v4 + *(a3 + 36), v11 + v13);
    v17 = (v4 + *(a3 + 40));
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    *v14 = v18;
    *(v14 + 8) = v17;
    *(v12 + v15) = 563;
    v8 = v10 | 0x4000000000000004;
  }

  *a4 = v8;
  return result;
}

Swift::Int sub_10007FF6C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10007FFEC()
{
  v1 = *(v0 + 12);
  sub_1004A6EB4(*(v0 + 8) | (*(v0 + 8) << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100080060()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1000800DC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = &_mh_execute_header;
  if (*(a1 + 12))
  {
    v4 = &_mh_execute_header;
  }

  else
  {
    v4 = 0;
  }

  if (!*(a2 + 12))
  {
    v3 = 0;
  }

  return sub_100080118(*a1, v4 | *(a1 + 8), *a2, v3 | *(a2 + 8));
}

uint64_t sub_100080118(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4 || (v4 = *(result + 16), v4 != *(a3 + 16)))
  {
LABEL_19:
    v10 = 0;
    return v10 & 1;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if ((a2 & &_mh_execute_header) != 0)
    {
      v8 = 6581810;
    }

    else
    {
      v8 = 7631665;
    }

    if ((a4 & &_mh_execute_header) != 0)
    {
      v9 = 6581810;
    }

    else
    {
      v9 = 7631665;
    }

    if (v8 == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1004A6D34();
    }

    swift_bridgeObjectRelease_n();
    return v10 & 1;
  }

  v6 = (result + 32);
  v7 = (a3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      goto LABEL_19;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000801E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t sub_10008022C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100080294(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100080364(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FindPendingDownload()
{
  result = qword_1005CED38;
  if (!qword_1005CED38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100080460()
{
  sub_1000805AC();
  if (v0 <= 0x3F)
  {
    sub_10003E3DC(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
    if (v1 <= 0x3F)
    {
      sub_10003E3DC(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v2 <= 0x3F)
      {
        sub_100080610();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000805AC()
{
  if (!qword_1005CED48)
  {
    sub_10000DEFC(&unk_1005CED50, &qword_1004D19D8);
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CED48);
    }
  }
}

void sub_100080610()
{
  if (!qword_1005CE8C8)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CE8C8);
    }
  }
}

unint64_t sub_100080660()
{
  result = qword_1005CED98;
  if (!qword_1005CED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CED98);
  }

  return result;
}

unint64_t sub_1000806B4(uint64_t a1)
{
  result = sub_1000806DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000806DC()
{
  result = qword_1005CEE50;
  if (!qword_1005CEE50)
  {
    type metadata accessor for FindPendingDownload();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CEE50);
  }

  return result;
}

unint64_t sub_100080738()
{
  result = qword_1005CEE58;
  if (!qword_1005CEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CEE58);
  }

  return result;
}

uint64_t sub_1000807B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10007071C(a2, a3, a4);
  if ((result & 1) != 0 && !*v4 && ((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 12)
  {
    v8 = a1 & 0xFFFFFFFFFFFFFFBLL;
    if (*(v4 + 16) == *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v10 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      result = sub_1000FFC98(*(v4 + 8), *(v8 + 16));
      if (result)
      {
        if (*(v4 + 57))
        {
          v11 = 6581810;
        }

        else
        {
          v11 = 7631665;
        }

        if (v9)
        {
          v12 = 6581810;
        }

        else
        {
          v12 = 7631665;
        }

        if (v11 == v12)
        {

          result = swift_bridgeObjectRelease_n();
LABEL_18:
          *v4 = v10;
          return result;
        }

        v13 = sub_1004A6D34();

        result = swift_bridgeObjectRelease_n();
        if (v13)
        {
          goto LABEL_18;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000808D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100080940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000809D4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + ((v8 << 10) | (16 * v9));
      v11 = *v10;
      v12 = *(v10 + 8);

      sub_100088220(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_100080ADC(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_100095778(*(a1 + 48) + *(v3 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_100095988(v12, v6);
    sub_100089774(v9, v6);
    sub_1000957E0(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return;
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100080CD0(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = 0;
  v7 = result + 56;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 56);
  v11 = (v8 + 63) >> 6;
  if (v10)
  {
    while (1)
    {
      v12 = v6;
LABEL_9:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      result = sub_1000899BC(&v14, *(*(v5 + 48) + ((v12 << 8) | (4 * v13))), a2, a3);
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100080DD8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_100088568(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100080EB4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + ((v8 << 10) | (16 * v9));
      v11 = *v10;
      v12 = *(v10 + 8);

      sub_100088220(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100080FBC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_10008867C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_100081078(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_10008867C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_100081134(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_10008867C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1000811C0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_10008867C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_100081258(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10008517C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10008134C(uint64_t a1)
{
  v2 = v1;
  v60 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v60);
  v57 = &v52 - v6;
  v7 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v58 = &v52 - v12;
  __chkstk_darwin(v11);
  v61 = &v52 - v13;
  v14 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = (&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *v2;
  v23 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v25 = v22[3] >> 1, v25 < v23))
  {
    v22 = sub_100086858(isUniquelyReferenced_nonNull_native, v23, 1, v22, &qword_1005CE858, &unk_1004D1E20, &qword_1005CD1D0, &unk_1004CF2C0);
    v25 = v22[3] >> 1;
  }

  v26 = v22[2];
  v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v28 = *(v4 + 72);
  v29 = v25 - v26;
  v30 = v22 + v27 + v28 * v26;
  sub_100095778(a1, v17, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  v31 = sub_100063050(v21, v30, v29);
  result = sub_1000957E0(a1, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  if (v31 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!v31)
  {
LABEL_8:
    if (v31 != v29)
    {
      result = sub_1000957E0(v21, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
LABEL_10:
      *v2 = v22;
      return result;
    }

LABEL_12:
    v36 = v22[2];
    v37 = v61;
    sub_1000D8CF4(v61);
    v38 = v58;
    sub_100095840(v37, v58);
    v54 = *(v4 + 48);
    for (i = v54(v38, 1, v60); i != 1; i = v54(v38, 1, v60))
    {
      sub_100025F40(v38, &qword_1005CD518, &qword_1004CF2F0);
      v41 = v22[3];
      v42 = v41 >> 1;
      if ((v41 >> 1) < v36 + 1)
      {
        v22 = sub_100086858(v41 > 1, v36 + 1, 1, v22, &qword_1005CE858, &unk_1004D1E20, &qword_1005CD1D0, &unk_1004CF2C0);
        v42 = v22[3] >> 1;
      }

      v43 = v59;
      sub_100095840(v61, v59);
      v44 = v54(v43, 1, v60);
      v56 = v36;
      if (v44 == 1)
      {
        v45 = v59;
LABEL_26:
        sub_100025F40(v45, &qword_1005CD518, &qword_1004CF2F0);
        v40 = v56;
      }

      else
      {
        if (v36 <= v42)
        {
          v46 = v42;
        }

        else
        {
          v46 = v36;
        }

        v53 = v46;
        v55 = v22 + v27 + v28 * v36;
        v47 = v57;
        v45 = v59;
        while (1)
        {
          sub_100025FDC(v45, v47, &qword_1005CD1D0, &unk_1004CF2C0);
          v48 = v56;
          if (v53 == v56)
          {
            break;
          }

          sub_100025F40(v61, &qword_1005CD518, &qword_1004CF2F0);
          v49 = v55;
          sub_100025FDC(v47, v55, &qword_1005CD1D0, &unk_1004CF2C0);
          v56 = v48 + 1;
          v50 = v61;
          sub_1000D8CF4(v61);
          v45 = v59;
          sub_100095840(v50, v59);
          v51 = v54(v45, 1, v60);
          v55 = v49 + v28;
          if (v51 == 1)
          {
            goto LABEL_26;
          }
        }

        sub_100025F40(v47, &qword_1005CD1D0, &unk_1004CF2C0);
        v40 = v53;
      }

      v36 = v40;
      v22[2] = v40;
      v38 = v58;
      sub_100095840(v61, v58);
    }

    sub_100025F40(v61, &qword_1005CD518, &qword_1004CF2F0);
    sub_1000957E0(v21, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
    result = sub_100025F40(v38, &qword_1005CD518, &qword_1004CF2F0);
    goto LABEL_10;
  }

  v33 = v22[2];
  v34 = __OFADD__(v33, v31);
  v35 = v33 + v31;
  if (!v34)
  {
    v22[2] = v35;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000818E8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000863B8(result, v11, 1, v3, &qword_1005CE240, &unk_100509A40);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000819F8(uint64_t result)
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

  result = sub_1000877A4(result, v12, 1, v3, &qword_1005CEFA0, &qword_1004D43B0);
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

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

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

uint64_t sub_100081AF4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100086A40(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *Flags.Label.flags.getter(unsigned __int8 a1)
{
  if (!a1)
  {
    return _swiftEmptySetSingleton;
  }

  v21 = v1;
  v22 = v2;
  sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v5 = Flag.flagged.unsafeMutableAddressor();
  v7 = *v5;
  v6 = *(v5 + 1);
  *(inited + 32) = v7;
  *(inited + 40) = v6;

  v8 = sub_1000933B0(inited);
  swift_setDeallocating();
  sub_100093590(inited + 32);
  v20 = v8;
  if (a1 > 3u)
  {
    if (a1 != 6)
    {
      if (a1 == 5)
      {
        goto LABEL_13;
      }

      if (a1 != 4)
      {
        goto LABEL_12;
      }
    }

LABEL_10:
    v10 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
    v11 = *v10;
    v12 = v10[1];

    sub_10008867C(&v19, v11, v12);

    if (a1 - 5 >= 2)
    {
      if (a1 == 2)
      {
        return v20;
      }

      goto LABEL_12;
    }

LABEL_13:
    v16 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v17 = *v16;
    v18 = v16[1];

    sub_10008867C(&v19, v17, v18);

    return v20;
  }

  if (a1 == 1)
  {
    return v20;
  }

  if (a1 == 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  v13 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v14 = *v13;
  v15 = v13[1];

  sub_10008867C(&v19, v14, v15);

  if (a1 >= 5u)
  {
    goto LABEL_13;
  }

  return v20;
}

unint64_t sub_100081D78(unsigned __int8 a1)
{
  v2 = 0x5000000000000004;
  v3 = 0x5000000000000004;
  if ((a1 - 2) <= 4u)
  {
    v3 = qword_1004D2008[(a1 - 2)];
  }

  v4 = swift_allocObject();
  v5 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  v7 = *v5;
  v6 = *(v5 + 1);
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;

  v8 = 0x2000000000000004;
  if (a1 <= 6u)
  {
    v8 = qword_1004D2030[a1];
  }

  v9 = v3 | v4;
  v10 = swift_allocObject();
  v11 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v13 = *v11;
  v12 = *(v11 + 1);
  *(v10 + 16) = v13;
  *(v10 + 24) = v12;
  v14 = v8 | v10;

  if (a1 >= 5u)
  {
    v2 = 0x2000000000000004;
  }

  v15 = swift_allocObject();
  v16 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
  v18 = *v16;
  v17 = *(v16 + 1);
  *(v15 + 16) = v18;
  *(v15 + 24) = v17;
  v19 = v2 | v15;

  v20 = swift_allocObject();
  sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004D1B20;
  *(v21 + 32) = 0xF00000000000001CLL;
  *(v21 + 40) = v9;
  *(v21 + 48) = v14;
  *(v21 + 56) = v19;
  *(v20 + 16) = v21;
  return v20 | 0xC000000000000000;
}

uint64_t FlagEncoder.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_10008517C(0, 14, 0, _swiftEmptyArrayStorage);
  v3 = v2;
  v46 = v2;
  v4 = v1[1];
  if (v4)
  {
    v5 = *v1;
    v6 = *(v2 + 2);
    v7 = *(v2 + 3);
    v8 = v1[1];

    if (v6 >= v7 >> 1)
    {
      v3 = sub_10008517C((v7 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    v9 = &v3[16 * v6];
    *(v9 + 4) = v5;
    *(v9 + 5) = v4;
    v46 = v3;
  }

  v10 = v1[3];
  if (v10)
  {
    v11 = v1[2];
    v12 = *(v3 + 2);
    v13 = *(v3 + 3);
    v14 = v1[3];

    if (v12 >= v13 >> 1)
    {
      v3 = sub_10008517C((v13 > 1), v12 + 1, 1, v3);
    }

    *(v3 + 2) = v12 + 1;
    v15 = &v3[16 * v12];
    *(v15 + 4) = v11;
    *(v15 + 5) = v10;
    v46 = v3;
  }

  v16 = v1[4];

  sub_100081258(v17);
  v18 = v1[5];

  sub_100081258(v19);
  v20 = v1[7];

  sub_100081258(v21);
  v22 = v1[8];

  sub_100081258(v23);
  v24 = v1[9];

  sub_100081258(v25);
  v26 = v1[12];
  v27 = v46;
  if (v26)
  {
    v28 = v1[11];
    v29 = v1[12];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_10008517C(0, *(v46 + 2) + 1, 1, v46);
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v27 = sub_10008517C((v30 > 1), v31 + 1, 1, v27);
    }

    *(v27 + 2) = v32;
    v33 = &v27[16 * v31];
    *(v33 + 4) = v28;
    *(v33 + 5) = v26;
  }

  else
  {
    v32 = *(v46 + 2);
    if (!v32)
    {
      goto LABEL_20;
    }
  }

  sub_100091A08(0, v32, 0);
  v34 = (v27 + 40);
  do
  {
    v36 = *(v34 - 1);
    v35 = *v34;
    v38 = _swiftEmptyArrayStorage[2];
    v37 = _swiftEmptyArrayStorage[3];

    if (v38 >= v37 >> 1)
    {
      sub_100091A08((v37 > 1), v38 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v38 + 1;
    v39 = &_swiftEmptyArrayStorage[2 * v38];
    v39[4] = v36;
    v39[5] = v35;
    v34 += 2;
    --v32;
  }

  while (v32);
LABEL_20:

  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v40 = sub_1004A5614();
  v42 = v41;

  v47._countAndFlagsBits = v40;
  v47._object = v42;
  sub_1004A5994(v47);

  v48._countAndFlagsBits = 0x3A73726F6C6F6320;
  v48._object = 0xE900000000000020;
  sub_1004A5994(v48);
  if (v1[10])
  {
    v43._countAndFlagsBits = 7562617;
  }

  else
  {
    v43._countAndFlagsBits = 28526;
  }

  if (v1[10])
  {
    v44 = 0xE300000000000000;
  }

  else
  {
    v44 = 0xE200000000000000;
  }

  v43._object = v44;
  sub_1004A5994(v43);

  v49._countAndFlagsBits = 125;
  v49._object = 0xE100000000000000;
  sub_1004A5994(v49);
  return 123;
}

uint64_t FlagDecoder.debugDescription.getter(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100085070(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100085070((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6564726177726F46;
  *(v5 + 5) = 0xE900000000000064;
  if ((a1 & 0x100) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100085070((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x7463657269646552;
    *(v8 + 5) = 0xEA00000000006465;
  }

LABEL_12:
  if ((a1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100085070((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 1802401098;
    *(v11 + 5) = 0xE400000000000000;
    if ((a1 & 0x1000000) == 0)
    {
LABEL_14:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 0x1000000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100085070((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  strcpy(v14 + 32, "ColoredLabel");
  v14[45] = 0;
  *(v14 + 23) = -5120;
  if ((a1 & 0x100000000) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100085070((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    strcpy(v17 + 32, "iCloudCleanup");
    *(v17 + 23) = -4864;
  }

LABEL_31:
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v18 = sub_1004A5614();
  v20 = v19;

  v22._countAndFlagsBits = v18;
  v22._object = v20;
  sub_1004A5994(v22);

  v23._countAndFlagsBits = 125;
  v23._object = 0xE100000000000000;
  sub_1004A5994(v23);
  return 0x7374726F70707573;
}

uint64_t sub_100082658()
{
  v1 = &_mh_execute_header;
  if (!v0[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!v0[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  v4 = 256;
  if (!v0[1])
  {
    v4 = 0;
  }

  return FlagDecoder.debugDescription.getter(v4 | *v0 | v3 | v2 | v1);
}

__n128 FlagEncoder.init(permanentFlags:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000935E4(a1, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v7;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_10008271C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t FlagDecoder.init(permanentFlags:)(uint64_t a1)
{
  v1 = sub_1000951DC(a1);

  return v1 & 0x101010101;
}

uint64_t sub_1000827C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(a3 + 16))
  {
    return a4 & 1;
  }

  v6 = *(a3 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v7 = sub_1004A6F14();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return a4 & 1;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    if (!v11[1])
    {
      goto LABEL_4;
    }

    v12 = *v11;
    v13 = sub_1004A5834();
    v15 = v14;
    if (v13 == sub_1004A5834() && v15 == v16)
    {
      break;
    }

    v18 = sub_1004A6D34();

    if (v18)
    {
      goto LABEL_13;
    }

LABEL_4:
    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return a4 & 1;
    }
  }

LABEL_13:
  a4 = 1;
  return a4 & 1;
}

uint64_t *Flag.Keyword.iCloudCleanup.unsafeMutableAddressor()
{
  if (qword_1005CCE50 != -1)
  {
    swift_once();
  }

  return &static Flag.Keyword.iCloudCleanup;
}

unint64_t FlagDecoder.decode(_:)(uint64_t a1, uint64_t a2)
{
  v4 = Flag.seen.unsafeMutableAddressor();
  v5 = *v4;
  v6 = v4[1];

  v7 = sub_100011C2C(v5, v6, a1);

  v8 = Flag.deleted.unsafeMutableAddressor();
  v9 = *v8;
  v10 = v8[1];

  v11 = sub_100011C2C(v9, v10, a1);

  v12 = Flag.answered.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];

  v69 = sub_100011C2C(v13, v14, a1);

  v15 = Flag.draft.unsafeMutableAddressor();
  v16 = *v15;
  v17 = v15[1];

  v18 = sub_100011C2C(v16, v17, a1);

  if ((a2 & 1) == 0)
  {
    v22 = 0x200000000;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v31 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
    v32 = *v31;
    v33 = v31[1];

    LOBYTE(v32) = sub_100011C2C(v32, v33, a1);

    if (v32)
    {
      v26 = 0x10000000000;
    }

    else
    {
      v26 = 0;
    }

    if ((a2 & 0x10000) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v30 = 0x3000000000000;
    goto LABEL_15;
  }

  v19 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  v20 = *v19;
  v21 = v19[1];

  LOBYTE(v20) = sub_100011C2C(v20, v21, a1);

  v22 = &_mh_execute_header;
  if ((v20 & 1) == 0)
  {
    v23 = Flag.Keyword.unregistered_forwarded.unsafeMutableAddressor();
    v24 = *v23;
    v25 = v23[1];

    LOBYTE(v24) = sub_100011C2C(v24, v25, a1);

    if ((v24 & 1) == 0)
    {
      v22 = 0;
    }
  }

  if ((a2 & 0x100) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v26 = 0x20000000000;
  if ((a2 & 0x10000) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v27 = Flag.Keyword.notJunk.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];

  LOBYTE(v28) = sub_100011C2C(v28, v29, a1);

  if (v28)
  {
LABEL_8:
    v30 = 0x2000000000000;
    goto LABEL_15;
  }

  v51 = Flag.Keyword.junk.unsafeMutableAddressor();
  v52 = *v51;
  v53 = v51[1];

  LOBYTE(v52) = sub_100011C2C(v52, v53, a1);

  if (v52)
  {
    v30 = 0x1000000000000;
  }

  else
  {
    v61 = Flag.Keyword.unregistered_notJunk.unsafeMutableAddressor();
    v62 = *v61;
    v63 = v61[1];

    LOBYTE(v62) = sub_100011C2C(v62, v63, a1);

    if (v62)
    {
      goto LABEL_8;
    }

    v64 = Flag.Keyword.unregistered_junk.unsafeMutableAddressor();
    v65 = *v64;
    v66 = v64[1];

    LOBYTE(v65) = sub_100011C2C(v65, v66, a1);

    if (v65)
    {
      v30 = 0x1000000000000;
    }

    else
    {
      v30 = 0;
    }
  }

LABEL_15:
  v34 = Flag.flagged.unsafeMutableAddressor();
  v35 = *v34;
  v36 = v34[1];

  v37 = sub_100011C2C(v35, v36, a1);

  if ((a2 & 0x1000000) == 0)
  {
    if (v37)
    {
      v38 = 0x800000000000000;
    }

    else
    {
      v38 = 0;
    }

    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v37)
  {
    v67 = v18;
    v68 = v11;
    v39 = v7;
    v40 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
    v41 = *v40;
    v42 = v40[1];

    v43 = sub_100011C2C(v41, v42, a1);

    v44 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
    v45 = *v44;
    v46 = v44[1];

    v47 = sub_100011C2C(v45, v46, a1);

    v48 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v49 = *v48;
    v50 = v48[1];

    LOBYTE(v49) = sub_100011C2C(v49, v50, a1);

    if (v49)
    {
      v7 = v39;
      v11 = v68;
      if (v47)
      {
        v18 = v67;
        if ((v43 & 1) == 0)
        {
          v38 = 0x700000000000000;
          if ((a2 & 0x100000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_30;
        }

LABEL_55:
        v38 = 0x100000000000000;
        if ((a2 & 0x100000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v58 = (v43 & 1) == 0;
      v59 = 0x500000000000000;
      v60 = 0x600000000000000;
LABEL_47:
      if (v58)
      {
        v38 = v59;
      }

      else
      {
        v38 = v60;
      }

      v18 = v67;
      if ((a2 & 0x100000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v7 = v39;
    v11 = v68;
    if (v47)
    {
      v58 = (v43 & 1) == 0;
      v59 = 0x300000000000000;
      v60 = 0x400000000000000;
      goto LABEL_47;
    }

    v18 = v67;
    if ((v43 & 1) == 0)
    {
      goto LABEL_55;
    }

    v38 = 0x200000000000000;
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v38 = 0;
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_30:
  if (qword_1005CCE50 != -1)
  {
    swift_once();
  }

  sub_100011C2C(static Flag.Keyword.iCloudCleanup, unk_1005DDF20, a1);
LABEL_33:
  v54 = 256;
  if ((v11 & 1) == 0)
  {
    v54 = 0;
  }

  v55 = 0x10000;
  if ((v69 & 1) == 0)
  {
    v55 = 0;
  }

  v56 = 0x1000000;
  if ((v18 & 1) == 0)
  {
    v56 = 0;
  }

  return v54 & 0xFFFFFFFFFFFFFFFELL | ((v7 & 1) == 0) | v55 | v56 | v22 | v26 | v30 | v38;
}

uint64_t IndexableMessageInfo.cc.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t static FlagUpdatesToBeSent.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_100083750(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_100083750(a2, a4);
}

Swift::Int sub_100082EA0(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(v13);
    result = sub_1004A6F14();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100083010(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_7:
    v7 &= v7 - 1;
    v9 = *(a2 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(0);
    result = sub_1004A6F14();
    v10 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v11);
    ++v3;
    if (v7)
    {
      v3 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100083124(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
LABEL_7:
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(v3 + 48) + 16 * (v10 | (v4 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(a2 + 40);
    sub_1004A6E94();
    v17 = v15 | (v15 << 32);
    sub_1004A6EB4(v17);
    result = sub_1004A6F14();
    v18 = -1 << *(a2 + 32);
    v19 = result & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      if ((v21[2] | (v21[2] << 32)) == v17)
      {
        v22 = *v21;
        v23 = *(*v21 + 16);
        if (v23 == *(v14 + 16))
        {
          break;
        }
      }

LABEL_16:
      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    v24 = (v22 + 32);
    if (v23)
    {
      v25 = v22 == v14;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v26 = (v14 + 32);
      while (v23)
      {
        if (*v24 != *v26)
        {
          goto LABEL_16;
        }

        ++v24;
        ++v26;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_100083308(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1004A6E94();
    sub_1004A6EE4(v13);
    result = sub_1004A6F14();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 4 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100083478(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v38 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v39 = v7;
  v40 = result;
  v47 = a2 + 56;
  if (!v6)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v9 = __clz(__rbit64(v6));
    v42 = (v6 - 1) & v6;
LABEL_13:
    v41 = v3;
    v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 12);
    v16 = *(v12 + 16);
    v17 = *(v12 + 20);
    v18 = *(v12 + 22);
    v19 = *(v2 + 40);
    sub_1004A6E94();
    v44 = v14;
    v48 = v16;
    v50 = v18;
    v20 = v43 & 0xFF00000000000000 | v16 | (v17 << 32) | (v18 << 48);
    QuotaRoot.hash(into:)(v51, v13, v14 | (v15 << 32), v20);
    v21 = sub_1004A6F14();
    v22 = -1 << *(v2 + 32);
    v23 = v21 & ~v22;
    if (((*(v8 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      return 0;
    }

    v43 = v20;
    v24 = ~v22;
    v25 = v15 - v44;

    v49 = v13;
    swift_beginAccess();
    v45 = (v18 | (v17 << 8)) + v44;
    v46 = v17;
    v26 = v17;
    while (1)
    {
      v27 = *(v2 + 48) + 24 * v23;
      v28 = *(v27 + 8);
      v29 = *(v27 + 12);
      if (v29 - v28 != v25)
      {
        goto LABEL_15;
      }

      v30 = v2;
      v31 = *v27;
      v32 = *(v27 + 20);
      v33 = *(v27 + 22);
      v34 = *(v27 + 16) == v48 && v32 == v26;
      v35 = v34 && v33 == v50;
      if (v35 && v31 == v49)
      {
        break;
      }

      swift_beginAccess();
      v37 = memcmp((*(v31 + 24) + (v33 | (v32 << 8)) + v28), (*(v49 + 24) + v45), v29 - v28);
      v26 = v46;
      v8 = v47;
      v2 = v30;
      if (!v37)
      {

        v7 = v39;
        result = v40;
        goto LABEL_30;
      }

LABEL_15:
      v23 = (v23 + 1) & v24;
      if (((*(v8 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {

        return 0;
      }
    }

    v7 = v39;
    result = v40;
    v2 = v30;
    v8 = v47;
LABEL_30:
    v3 = v41;
    v6 = v42;
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v38 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v42 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100083750(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v29 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v30 = v7;
  v31 = result;
  if (v6)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v32 = (v6 - 1) & v6;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_1004A6E94();
      sub_1004A5834();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v16 = sub_1004A6F14();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      while (1)
      {
        v20 = (*(a2 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = sub_1004A5834();
        v25 = v24;
        if (v23 == sub_1004A5834() && v25 == v26)
        {
          break;
        }

        v28 = sub_1004A6D34();

        if (v28)
        {
          goto LABEL_23;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_23:

      v7 = v30;
      result = v31;
      v6 = v32;
      if (!v32)
      {
        goto LABEL_8;
      }
    }

LABEL_26:

    return 0;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v29 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v32 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100083990(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v83 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v94 = a2 + 56;
  v84 = v7;
  v85 = a1;
  while (1)
  {
    if (v6)
    {
      v9 = __clz(__rbit64(v6));
      v86 = (v6 - 1) & v6;
    }

    else
    {
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
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
LABEL_172:
          __break(1u);
LABEL_173:
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
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
        }

        if (v3 >= v7)
        {
          return 1;
        }

        v11 = *(v83 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v86 = (v11 - 1) & v11;
    }

    v12 = (*(a1 + 48) + 16 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v2 + 40);
    sub_1004A6E94();
    sub_100014CEC(v14, v13);
    sub_1004A4424();
    v16 = sub_1004A6F14();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_157:
      sub_100014D40(v14, v13);
      return 0;
    }

    v19 = ~v17;
    v20 = v13 >> 62;
    v21 = !v14 && v13 == 0xC000000000000000;
    v22 = !v21;
    v97 = v22;
    v23 = __OFSUB__(HIDWORD(v14), v14);
    v93 = v23;
    v91 = (v14 >> 32) - v14;
    v92 = v14 >> 32;
    v96 = v19;
LABEL_27:
    v24 = (*(v2 + 48) + 16 * v18);
    v26 = *v24;
    v25 = v24[1];
    v27 = v25 >> 62;
    if (v25 >> 62 == 3)
    {
      if (v26)
      {
        v28 = 0;
      }

      else
      {
        v28 = v25 == 0xC000000000000000;
      }

      v30 = !v28 || v13 >> 62 != 3;
      if (((v30 | v97) & 1) == 0)
      {
        v79 = 0;
        v80 = 0xC000000000000000;
LABEL_154:
        sub_100014D40(v79, v80);
        v7 = v84;
        a1 = v85;
        v6 = v86;
        continue;
      }

LABEL_49:
      v31 = 0;
      if (v20 <= 1)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_49;
      }

      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      v34 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v34)
      {
        goto LABEL_163;
      }

      if (v20 <= 1)
      {
        goto LABEL_46;
      }
    }

    else if (v27)
    {
      LODWORD(v31) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_162;
      }

      v31 = v31;
      if (v20 <= 1)
      {
LABEL_46:
        v35 = BYTE6(v13);
        if (v20)
        {
          v35 = HIDWORD(v14) - v14;
          if (v93)
          {
            goto LABEL_161;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v31 = BYTE6(v25);
      if (v20 <= 1)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    if (v20 != 2)
    {
      if (!v31)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v37 = *(v14 + 16);
    v36 = *(v14 + 24);
    v34 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v34)
    {
      goto LABEL_160;
    }

LABEL_52:
    if (v31 != v35)
    {
      goto LABEL_26;
    }

    if (v31 < 1)
    {
      goto LABEL_153;
    }

    if (v27 <= 1)
    {
      break;
    }

    if (v27 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (!v20)
      {
LABEL_82:
        __s2 = v14;
        v99 = v13;
        v100 = BYTE2(v13);
        v101 = BYTE3(v13);
        v102 = BYTE4(v13);
        v103 = BYTE5(v13);
        v54 = memcmp(__s1, &__s2, BYTE6(v13));
        v19 = v96;
        if (!v54)
        {
          goto LABEL_153;
        }

        goto LABEL_26;
      }

      if (v20 == 2)
      {
        v50 = *(v14 + 16);
        v89 = *(v14 + 24);
        sub_100014CEC(v26, v25);
        v51 = sub_1004A40D4();
        if (v51)
        {
          v52 = sub_1004A4104();
          if (__OFSUB__(v50, v52))
          {
            goto LABEL_178;
          }

          v51 += v50 - v52;
        }

        v34 = __OFSUB__(v89, v50);
        v53 = &v89[-v50];
        if (v34)
        {
          goto LABEL_169;
        }

        result = sub_1004A40F4();
        if (!v51)
        {
          goto LABEL_190;
        }

        goto LABEL_113;
      }

      if (v92 < v14)
      {
        goto LABEL_167;
      }

      sub_100014CEC(v26, v25);
      v65 = sub_1004A40D4();
      if (!v65)
      {
        goto LABEL_187;
      }

      v66 = v65;
      v67 = sub_1004A4104();
      if (__OFSUB__(v14, v67))
      {
        goto LABEL_173;
      }

      v41 = (v14 - v67 + v66);
      result = sub_1004A40F4();
      if (!v41)
      {
        goto LABEL_188;
      }

      goto LABEL_121;
    }

    v43 = *(v26 + 16);
    sub_100014CEC(v26, v25);
    v44 = sub_1004A40D4();
    if (v44)
    {
      v45 = v44;
      v46 = sub_1004A4104();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_165;
      }

      v87 = (v43 - v46 + v45);
    }

    else
    {
      v87 = 0;
    }

    sub_1004A40F4();
    v8 = v94;
    v2 = a2;
    if (v20 != 2)
    {
      if (v20 == 1)
      {
        if (v92 < v14)
        {
          goto LABEL_170;
        }

        v55 = sub_1004A40D4();
        if (v55)
        {
          v56 = sub_1004A4104();
          if (__OFSUB__(v14, v56))
          {
            goto LABEL_181;
          }

          v55 += v14 - v56;
        }

        v57 = sub_1004A40F4();
        v58 = (v14 >> 32) - v14;
        if (v57 < v91)
        {
          v58 = v57;
        }

        result = v87;
        if (!v87)
        {
          goto LABEL_198;
        }

        if (!v55)
        {
          goto LABEL_197;
        }

        goto LABEL_147;
      }

      result = v87;
      *__s1 = v14;
      *&__s1[8] = v13;
      __s1[10] = BYTE2(v13);
      __s1[11] = BYTE3(v13);
      __s1[12] = BYTE4(v13);
      __s1[13] = BYTE5(v13);
      if (!v87)
      {
        goto LABEL_184;
      }

LABEL_152:
      v78 = memcmp(result, __s1, BYTE6(v13));
      sub_100014D40(v26, v25);
      v19 = v96;
      if (!v78)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v70 = *(v14 + 16);
    v81 = *(v14 + 24);
    v55 = sub_1004A40D4();
    if (v55)
    {
      v71 = sub_1004A4104();
      if (__OFSUB__(v70, v71))
      {
        goto LABEL_179;
      }

      v55 += v70 - v71;
    }

    v34 = __OFSUB__(v81, v70);
    v72 = v81 - v70;
    if (v34)
    {
      goto LABEL_174;
    }

    v73 = sub_1004A40F4();
    if (v73 >= v72)
    {
      v58 = v72;
    }

    else
    {
      v58 = v73;
    }

    result = v87;
    if (!v87)
    {
      goto LABEL_194;
    }

    v2 = a2;
    if (!v55)
    {
      goto LABEL_193;
    }

LABEL_147:
    if (result != v55)
    {
      v64 = memcmp(result, v55, v58);
      sub_100014D40(v26, v25);
      goto LABEL_149;
    }

    sub_100014D40(v14, v13);
    sub_100014D40(v26, v25);
    v7 = v84;
    a1 = v85;
    v8 = v94;
    v6 = v86;
  }

  if (v27)
  {
    if (v26 > v26 >> 32)
    {
      goto LABEL_164;
    }

    sub_100014CEC(v26, v25);
    v47 = sub_1004A40D4();
    if (v47)
    {
      v48 = v47;
      v49 = sub_1004A4104();
      if (__OFSUB__(v26, v49))
      {
        goto LABEL_166;
      }

      v88 = (v26 - v49 + v48);
    }

    else
    {
      v88 = 0;
    }

    sub_1004A40F4();
    v8 = v94;
    v2 = a2;
    if (v20 == 2)
    {
      v74 = *(v14 + 16);
      v82 = *(v14 + 24);
      v55 = sub_1004A40D4();
      if (v55)
      {
        v75 = sub_1004A4104();
        if (__OFSUB__(v74, v75))
        {
          goto LABEL_180;
        }

        v55 += v74 - v75;
      }

      v34 = __OFSUB__(v82, v74);
      v76 = v82 - v74;
      if (v34)
      {
        goto LABEL_176;
      }

      v77 = sub_1004A40F4();
      if (v77 >= v76)
      {
        v58 = v76;
      }

      else
      {
        v58 = v77;
      }

      result = v88;
      if (!v88)
      {
        goto LABEL_196;
      }

      v2 = a2;
      if (!v55)
      {
        goto LABEL_195;
      }
    }

    else
    {
      if (v20 != 1)
      {
        result = v88;
        *__s1 = v14;
        *&__s1[8] = v13;
        __s1[10] = BYTE2(v13);
        __s1[11] = BYTE3(v13);
        __s1[12] = BYTE4(v13);
        __s1[13] = BYTE5(v13);
        if (!v88)
        {
          goto LABEL_189;
        }

        goto LABEL_152;
      }

      if (v92 < v14)
      {
        goto LABEL_175;
      }

      v55 = sub_1004A40D4();
      if (v55)
      {
        v59 = sub_1004A4104();
        if (__OFSUB__(v14, v59))
        {
          goto LABEL_182;
        }

        v55 += v14 - v59;
      }

      v60 = sub_1004A40F4();
      v58 = (v14 >> 32) - v14;
      if (v60 < v91)
      {
        v58 = v60;
      }

      result = v88;
      if (!v88)
      {
        goto LABEL_192;
      }

      if (!v55)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_147;
  }

  *__s1 = v26;
  *&__s1[8] = v25;
  __s1[10] = BYTE2(v25);
  __s1[11] = BYTE3(v25);
  __s1[12] = BYTE4(v25);
  __s1[13] = BYTE5(v25);
  if (!v20)
  {
    goto LABEL_82;
  }

  if (v20 != 1)
  {
    v61 = *(v14 + 16);
    v90 = *(v14 + 24);
    sub_100014CEC(v26, v25);
    v51 = sub_1004A40D4();
    if (v51)
    {
      v62 = sub_1004A4104();
      if (__OFSUB__(v61, v62))
      {
        goto LABEL_177;
      }

      v51 += v61 - v62;
    }

    v34 = __OFSUB__(v90, v61);
    v53 = &v90[-v61];
    if (v34)
    {
      goto LABEL_171;
    }

    result = sub_1004A40F4();
    if (!v51)
    {
      goto LABEL_186;
    }

LABEL_113:
    if (result >= v53)
    {
      v63 = v53;
    }

    else
    {
      v63 = result;
    }

    v64 = memcmp(__s1, v51, v63);
    sub_100014D40(v26, v25);
    v2 = a2;
LABEL_149:
    v8 = v94;
    v19 = v96;
    if (!v64)
    {
      goto LABEL_153;
    }

    goto LABEL_26;
  }

  if (v92 < v14)
  {
    goto LABEL_168;
  }

  sub_100014CEC(v26, v25);
  v38 = sub_1004A40D4();
  if (v38)
  {
    v39 = v38;
    v40 = sub_1004A4104();
    if (__OFSUB__(v14, v40))
    {
      goto LABEL_172;
    }

    v41 = (v14 - v40 + v39);
    result = sub_1004A40F4();
    if (!v41)
    {
      goto LABEL_185;
    }

LABEL_121:
    if (result >= v91)
    {
      v68 = (v14 >> 32) - v14;
    }

    else
    {
      v68 = result;
    }

    v69 = memcmp(__s1, v41, v68);
    sub_100014D40(v26, v25);
    v2 = a2;
    v19 = v96;
    if (!v69)
    {
LABEL_153:
      v79 = v14;
      v80 = v13;
      goto LABEL_154;
    }

LABEL_26:
    v18 = (v18 + 1) & v19;
    if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_27;
  }

  sub_1004A40F4();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  result = sub_1004A40F4();
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}