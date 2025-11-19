void sub_10024A4FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v8 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v47 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v46 = (&v37 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v26 = -v13;
      v27 = v25;
      v41 = a1;
      v42 = a4;
      v40 = v26;
      do
      {
        v38 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v43 = v28;
        v44 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v50 = v28;
            v48 = v38;
            goto LABEL_58;
          }

          v30 = a3;
          v39 = v25;
          a3 += v26;
          v31 = v27 + v26;
          v32 = v27 + v26;
          v33 = v46;
          sub_10024DECC(v32, v46, type metadata accessor for CommandConnection.RecentErrors.Error);
          v34 = v47;
          sub_10024DECC(v29, v47, type metadata accessor for CommandConnection.RecentErrors.Error);
          v35 = *v33;
          v36 = *v34;
          sub_10024DD58(v34, type metadata accessor for CommandConnection.RecentErrors.Error);
          sub_10024DD58(v33, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v35 < v36)
          {
            break;
          }

          v25 = v31;
          if (v30 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v44;
            v26 = v40;
            a1 = v41;
          }

          else
          {
            v29 = v44;
            v26 = v40;
            a1 = v41;
            if (v30 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v31;
          v28 = v43;
          if (v31 <= v42)
          {
            a2 = v43;
            goto LABEL_57;
          }
        }

        if (v30 < v43 || a3 >= v43)
        {
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          a1 = v41;
          v25 = v39;
        }

        else
        {
          a2 = v44;
          v26 = v40;
          a1 = v41;
          v25 = v39;
          if (v30 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v42);
    }

LABEL_57:
    v50 = a2;
    v48 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v43 = a3;
      do
      {
        v19 = v46;
        sub_10024DECC(a2, v46, type metadata accessor for CommandConnection.RecentErrors.Error);
        v20 = a2;
        v21 = v47;
        sub_10024DECC(a4, v47, type metadata accessor for CommandConnection.RecentErrors.Error);
        v22 = *v19;
        v23 = *v21;
        sub_10024DD58(v21, type metadata accessor for CommandConnection.RecentErrors.Error);
        sub_10024DD58(v19, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v43;
            a2 = v20;
          }

          else
          {
            v24 = v43;
            a2 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        else
        {
          a2 = v20 + v13;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v43;
          }

          else
          {
            v24 = v43;
            if (a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v44 && a2 < v24);
    }
  }

LABEL_58:
  sub_10024A9F8(&v50, &v49, &v48);
}

uint64_t sub_10024A9F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CommandConnection.RecentErrors.Error(0);
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

size_t sub_10024AADC(size_t a1, int64_t a2, char a3)
{
  result = sub_10024ABA4(a1, a2, a3, *v3, &qword_1005D4AA8, &unk_1004E2A90, type metadata accessor for CommandConnection.RecentErrors.Error);
  *v3 = result;
  return result;
}

size_t sub_10024AB20(size_t a1, int64_t a2, char a3)
{
  result = sub_10024ABA4(a1, a2, a3, *v3, &qword_1005D5D28, &qword_1004E9398, type metadata accessor for ConnectionState);
  *v3 = result;
  return result;
}

char *sub_10024AB64(char *a1, int64_t a2, char a3)
{
  result = sub_10024AD80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10024AB84(char *a1, int64_t a2, char a3)
{
  result = sub_10024AE8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10024ABA4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10024AD80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D5900, &qword_1004E9120);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10024AE8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D5D38, &qword_1004E93A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10024AFFC(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v60 = type metadata accessor for ConnectionConfiguration(0);
  v3 = *(*(v60 - 1) + 64);
  v4 = __chkstk_darwin(v60);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v55 - v6;
  v59 = type metadata accessor for ConnectionConfiguration();
  v7 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID;
  v10 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID);
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v57 = v11;
LABEL_2:
  v12 = *&v11[a2];
  if (v12 >> 62)
  {
    v13 = sub_1004A6A34();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v13)
  {
LABEL_17:

    *(a2 + v58) = v10 + 1;
    v17 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_10024DECC(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, v9, type metadata accessor for ConnectionConfiguration);
    v18 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits);
    v19 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
    v20 = v9;
    v21 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator);
    v22 = v59;
    v23 = v20;
    v24 = v20[*(v59 + 28)];
    LODWORD(v58) = v17;
    v57 = v19;
    if (v24 >> 6)
    {
      if (v24 >> 6 == 1)
      {
        v25 = v24 & 0x3F | 0x40;
      }

      else
      {
        v25 = 0x80;
      }
    }

    else
    {
      v25 = v24;
    }

    v26 = sub_1004A4C04();
    v27 = v63;
    (*(*(v26 - 8) + 16))(v63, v23, v26);
    v28 = *(v23 + v22[5]);
    v29 = *(v23 + v22[6]);
    v30 = (v23 + v22[8]);
    v31 = *v30;
    v56 = v30[1];
    v32 = v56;
    v33 = (v23 + v22[10]);
    v34 = *v33;
    v35 = v33[1];
    v36 = v60;
    v37 = v61;
    v38 = (v27 + v60[8]);
    v39 = (v27 + v60[9]);
    v40 = v60[6];
    *(v27 + v60[5]) = v28;
    *(v27 + v40) = v29;
    *(v27 + v36[7]) = v25;
    *v38 = v31;
    v38[1] = v32;
    *v39 = v34;
    v39[1] = v35;
    sub_10024DECC(v27, v37, type metadata accessor for ConnectionConfiguration);
    v41 = type metadata accessor for CommandConnection();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    v60 = swift_allocObject();

    v44 = v62;

    swift_retain_n();

    v45 = v57;

    v54 = CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(v10, v58, v37, v18, sub_10024DB10, a2, sub_10024DB14, a2, v46, v47, v48, v49, v50, v51, v52, v53, sub_10024DB18, a2, v45, v44, &off_1005A9CB8, sub_10024DB20, v21, 0.0, 1);
    sub_10024DD58(v23, type metadata accessor for ConnectionConfiguration);
    sub_10024DD58(v27, type metadata accessor for ConnectionConfiguration);
    return v54;
  }

  v15 = 0;
  while ((v12 & 0xC000000000000001) != 0)
  {
    result = sub_1004A6794();
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_25;
    }

    LODWORD(v56) = *(result + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    result = swift_unknownObjectRelease();
    if (v56 == v10)
    {
LABEL_15:

      v10 = (v10 + 1);
      v11 = v57;
      goto LABEL_2;
    }

LABEL_11:
    if (v15 == v13)
    {
      goto LABEL_17;
    }
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if (*(*(v12 + 32 + 8 * v15) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v10)
    {
      goto LABEL_15;
    }

    ++v15;
    goto LABEL_11;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10024B4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  v64 = a4;
  v61 = type metadata accessor for ConnectionConfiguration(0);
  v5 = *(*(v61 - 1) + 64);
  v6 = __chkstk_darwin(v61);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v57 - v8;
  v60 = type metadata accessor for ConnectionConfiguration();
  v9 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID;
  v12 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID);
  v13 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v58 = v13;
LABEL_2:
  v14 = *&v13[a2];
  if (v14 >> 62)
  {
    v15 = sub_1004A6A34();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {
LABEL_17:

    *(a2 + v59) = v12 + 1;
    v19 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_10024DECC(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, v11, type metadata accessor for ConnectionConfiguration);
    v20 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits);
    v21 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
    v22 = v11;
    v23 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator);
    v24 = v60;
    v25 = v22;
    v26 = v22[*(v60 + 28)];
    LODWORD(v59) = v19;
    v58 = v21;
    if (v26 >> 6)
    {
      if (v26 >> 6 == 1)
      {
        v27 = v26 & 0x3F | 0x40;
      }

      else
      {
        v27 = 0x80;
      }
    }

    else
    {
      v27 = v26;
    }

    v28 = sub_1004A4C04();
    v29 = v65;
    (*(*(v28 - 8) + 16))(v65, v25, v28);
    v30 = *(v25 + v24[5]);
    v31 = *(v25 + v24[6]);
    v32 = (v25 + v24[8]);
    v33 = *v32;
    v57 = v32[1];
    v34 = v57;
    v35 = (v25 + v24[10]);
    v36 = *v35;
    v37 = v35[1];
    v38 = v61;
    v39 = v62;
    v40 = (v29 + v61[8]);
    v41 = (v29 + v61[9]);
    v42 = v61[6];
    *(v29 + v61[5]) = v30;
    *(v29 + v42) = v31;
    *(v29 + v38[7]) = v27;
    *v40 = v33;
    v40[1] = v34;
    *v41 = v36;
    v41[1] = v37;
    sub_10024DECC(v29, v39, type metadata accessor for ConnectionConfiguration);
    v43 = type metadata accessor for CommandConnection();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v61 = swift_allocObject();

    v46 = v63;
    swift_unknownObjectRetain();
    swift_retain_n();

    v47 = v58;

    v56 = CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(v12, v59, v39, v20, sub_10024E464, a2, sub_10024E468, a2, v48, v49, v50, v51, v52, v53, v54, v55, sub_10024E45C, a2, v47, v46, v64, sub_10024E460, v23, 0.0, 1);
    sub_10024DD58(v25, type metadata accessor for ConnectionConfiguration);
    sub_10024DD58(v29, type metadata accessor for ConnectionConfiguration);
    return v56;
  }

  v17 = 0;
  while ((v14 & 0xC000000000000001) != 0)
  {
    result = sub_1004A6794();
    if (__OFADD__(v17++, 1))
    {
      goto LABEL_25;
    }

    LODWORD(v57) = *(result + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    result = swift_unknownObjectRelease();
    if (v57 == v12)
    {
LABEL_15:

      v12 = (v12 + 1);
      v13 = v58;
      goto LABEL_2;
    }

LABEL_11:
    if (v17 == v15)
    {
      goto LABEL_17;
    }
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if (*(*(v14 + 32 + 8 * v17) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v12)
    {
      goto LABEL_15;
    }

    ++v17;
    goto LABEL_11;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

char *sub_10024B954(void *a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v90 = a6;
  v83 = a5;
  v84 = a4;
  v82 = a3;
  v93 = a2;
  v91 = a1;
  v7 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v80[-v9];
  v86 = type metadata accessor for ConnectionState();
  v11 = *(*(v86 - 8) + 64);
  v12 = __chkstk_darwin(v86);
  v87 = &v80[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v85 = &v80[-v15];
  __chkstk_darwin(v14);
  v17 = &v80[-v16];
  v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v94 = v18;
  v19 = *(v6 + v18);
  if (v19 >> 62)
  {
    goto LABEL_32;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = 0;
  while ((v19 & 0xC000000000000001) == 0)
  {
    if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v20 = sub_1004A6A34();
      goto LABEL_3;
    }

    v22 = *(v19 + 8 * v21 + 32);

    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    (*(*v22 + 304))();
    v99.bytes._rawValue = v91;
    v99._hashValue._value = v93;
    v24 = ConnectionState.hasMailboxSelectedOrSelectionIsInProgress(_:)(v99);
    sub_10024DD58(v17, type metadata accessor for ConnectionState);
    if (v24)
    {

      v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      v35 = v92;
      swift_beginAccess();
      sub_10000E268(v35 + v25, v10, &qword_1005D5968, &unk_1004E9180);
      v17 = sub_1004A4A74();
      v36 = *(v17 - 1);
      v37 = (*(v36 + 48))(v10, 1, v17);
      if (v37 != 1)
      {

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v38 = v91;

        v39 = sub_1004A4A54();
        v40 = sub_1004A5FF4();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = v10;
          v42 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          *v42 = 68158723;
          *(v42 + 4) = 2;
          *(v42 + 8) = 256;
          *(v42 + 10) = *(v35 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v42 + 11) = 2160;
          *(v42 + 13) = 0x786F626C69616DLL;
          *(v42 + 21) = 2085;
          v95 = v38;
          v96 = v93;

          v43 = sub_1004A5824();
          v45 = sub_10015BA6C(v43, v44, &v97);

          *(v42 + 23) = v45;
          *(v42 + 31) = 2082;
          v46 = ConnectionID.debugDescription.getter(*(v22 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
          v48 = sub_10015BA6C(v46, v47, &v97);

          *(v42 + 33) = v48;
          _os_log_impl(&_mh_execute_header, v39, v40, "[%.*hhx] Mailbox '%{sensitive,mask.mailbox}s' is selected (or in progress) on connection %{public}s.", v42, 0x29u);
          swift_arrayDestroy();

          v10 = v41;
        }

        else
        {
        }

        (*(v36 + 8))(v10, v17);
        return v22;
      }

      goto LABEL_37;
    }

    ++v21;
    if (v23 == v20)
    {
      goto LABEL_14;
    }
  }

  v22 = sub_1004A6794();
  v23 = v21 + 1;
  if (!__OFADD__(v21, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  v25 = v92;
  v26 = *(v92 + v94);
  if (v26 >> 62)
  {
    if (v26 < 0)
    {
      v49 = *(v92 + v94);
    }

    v37 = sub_1004A6A34();
    if ((v37 & 0x8000000000000000) == 0)
    {
LABEL_38:
      v19 = v37;
      v27 = v91;
      if (v37)
      {
        goto LABEL_16;
      }

LABEL_39:
      v50 = *(v25 + v94);
      if (v50 >> 62)
      {
        goto LABEL_93;
      }

      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (2)
      {
        v52 = _swiftEmptyArrayStorage;
        if (v51)
        {
          v98 = _swiftEmptyArrayStorage;

          result = sub_100091B88(0, v51 & ~(v51 >> 63), 0);
          if (v51 < 0)
          {
            __break(1u);
            return result;
          }

          v54 = 0;
          v52 = v98;
          do
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v55 = *(sub_1004A6794() + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
              swift_unknownObjectRelease();
            }

            else
            {
              v55 = *(*(v50 + 8 * v54 + 32) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
            }

            v98 = v52;
            v57 = v52[2];
            v56 = v52[3];
            if (v57 >= v56 >> 1)
            {
              sub_100091B88((v56 > 1), v57 + 1, 1);
              v52 = v98;
            }

            ++v54;
            v52[2] = v57 + 1;
            *(v52 + v57 + 8) = v55;
          }

          while (v51 != v54);
        }

        v58 = MailboxesSelectionUsage.sortedIdleConnections(_:)(v52, v90);

        v59 = v58;
        v90 = *(v58 + 2);
        if (!v90)
        {
LABEL_85:

          sub_10023EBF0(v82, v84);
          return 0;
        }

        v60 = 0;
        v89 = v58 + 32;
        v88 = v58;
LABEL_55:
        if (v60 >= *(v59 + 2))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          v51 = sub_1004A6A34();
          continue;
        }

        break;
      }

      v61 = *&v89[4 * v60];
      v62 = *(v92 + v94);
      if (v62 >> 62)
      {
        if (v62 < 0)
        {
          v79 = *(v92 + v94);
        }

        v50 = sub_1004A6A34();
      }

      else
      {
        v50 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v60;

      v64 = -v50;
      v65 = 4;
      while (1)
      {
        if (v64 + v65 == 4)
        {

          goto LABEL_54;
        }

        v50 = v65 - 4;
        if ((v62 & 0xC000000000000001) != 0)
        {
          v81 = *(sub_1004A6794() + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
          v63 = swift_unknownObjectRelease();
          if (v81 == v61)
          {
LABEL_67:

            v66 = v92;
            v67 = v94;
            swift_beginAccess();
            v68 = *(v66 + v67);
            if ((v68 & 0xC000000000000001) != 0)
            {
              v69 = sub_1004A6794();
            }

            else
            {
              if (v50 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_91;
              }

              v69 = *(v68 + 8 * v65);
            }

            v70 = swift_endAccess();
            v71 = v85;
            (*(*v69 + 304))(v70);

            sub_10024DDB8(v71, v87, type metadata accessor for ConnectionState);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload > 2)
            {
              if ((EnumCaseMultiPayload - 4) < 2)
              {
                goto LABEL_54;
              }

LABEL_79:
              sub_10024DD58(v87, type metadata accessor for ConnectionState);
              goto LABEL_54;
            }

            if (EnumCaseMultiPayload < 2)
            {
              goto LABEL_79;
            }

            sub_10024DD58(v87, type metadata accessor for ConnectionState);
            v73 = v92;
            v74 = v94;
            swift_beginAccess();
            v75 = *(v73 + v74);
            if ((v75 & 0xC000000000000001) != 0)
            {
              v76 = sub_1004A6794();
            }

            else
            {
              if (v50 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_92;
              }

              v76 = *(v75 + 8 * v65);
            }

            v77 = swift_endAccess();
            (*(*v76 + 304))(v77);

            v78 = ConnectionState.anyMailboxSelectionIsInProgress.getter();
            sub_10024DD58(v17, type metadata accessor for ConnectionState);
            if ((v78 & 1) == 0)
            {
              v63 = sub_10023FAD4(v65 - 4, v92, v91, v93);
              if (v63)
              {
                goto LABEL_89;
              }
            }

LABEL_54:
            v59 = v88;
            if (v60 == v90)
            {
              goto LABEL_85;
            }

            goto LABEL_55;
          }
        }

        else
        {
          if (v50 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            v22 = v63;

            return v22;
          }

          if (*(*(v62 + 8 * v65) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v61)
          {
            goto LABEL_67;
          }
        }

        ++v65;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_88;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = v91;
  if (!v19)
  {
    goto LABEL_39;
  }

LABEL_16:
  v28 = 0;
  while (1)
  {
    v29 = v94;
    swift_beginAccess();
    v30 = *(v25 + v29);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = sub_1004A6794();
    }

    else
    {
      if (v28 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v31 = *(v30 + 8 * v28 + 32);
    }

    v32 = swift_endAccess();
    (*(*v31 + 304))(v32);

    v33 = ConnectionState.isReadyForCommandsWithoutMailboxSelection.getter();
    sub_10024DD58(v17, type metadata accessor for ConnectionState);
    if (v33)
    {
      v34 = sub_10023FAD4(v28, v25, v27, v93);
      if (v34)
      {
        return v34;
      }
    }

    if (v19 == ++v28)
    {
      goto LABEL_39;
    }
  }
}

uint64_t sub_10024C428(uint64_t a1, uint64_t a2, void *a3, Swift::UInt32 a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v46 = a7;
  v47 = a5;
  v49 = a4;
  v14 = type metadata accessor for ConnectionState();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v42 - v20;
  sub_10023F5EC();
  v22 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  v48 = v9;
  if ((a2 & 0x100000000) == 0)
  {
    swift_beginAccess();
    v17 = v8;
    v8 = *(v8 + v22);
    v23 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      goto LABEL_38;
    }

    v24 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  swift_beginAccess();
  v21 = *(v8 + v22);
  v44 = a8;
  v45 = v8;
  v43 = a6;
  v23 = v21 & 0xFFFFFFFFFFFFFF8;
  if (v21 >> 62)
  {
    a2 = sub_1004A6A34();
  }

  else
  {
    a2 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = 0;
  while (1)
  {
    if (a2 == v25)
    {

      sub_10024B954(a3, v49, v47, v43, v46 & 1, v44);

      return 0;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v28 = sub_1004A6794();
      v27 = v28;
      goto LABEL_21;
    }

    if (v25 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v27 = *(v21 + 8 * v25 + 32);

LABEL_21:
    (*(*v27 + 304))(v28);
    v51.bytes._rawValue = a3;
    v51._hashValue._value = v49;
    v8 = ConnectionState.hasMailboxSelected(_:)(v51);

    sub_10024DD58(v17, type metadata accessor for ConnectionState);
    if (v8)
    {
LABEL_30:

      return v25;
    }

    v26 = __OFADD__(v25++, 1);
    if (v26)
    {
      goto LABEL_37;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  v24 = sub_1004A6A34();
LABEL_4:

  v25 = 0;
  while (v24 != v25)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v49 = *(sub_1004A6794() + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      swift_unknownObjectRelease();
      if (v49 == a2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v25 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (*(*(v8 + 8 * v25 + 32) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == a2)
      {
        goto LABEL_30;
      }
    }

    v26 = __OFADD__(v25++, 1);
    if (v26)
    {
      goto LABEL_36;
    }
  }

  v29 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v30 = v17;
  swift_beginAccess();
  sub_10000E268(&v17[v29], v21, &qword_1005D5968, &unk_1004E9180);
  v31 = sub_1004A4A74();
  v32 = *(v31 - 8);
  result = (*(v32 + 48))(v21, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v34 = sub_1004A4A54();
    v35 = sub_1004A6014();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v30;
      v37 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = v25;
      *v37 = 68158210;
      *(v37 + 4) = 2;
      *(v37 + 8) = 256;
      *(v37 + 10) = v36[OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID];

      *(v37 + 11) = 2082;
      v38 = ConnectionID.debugDescription.getter(a2);
      v40 = sub_10015BA6C(v38, v39, &v50);

      *(v37 + 13) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%.*hhx] Attempt to send on connection %{public}s -- but it does not exist.", v37, 0x15u);
      sub_1000197E0(v25);
    }

    else
    {
    }

    (*(v32 + 8))(v21, v31);
    sub_10024DABC();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
    return v25;
  }

  return result;
}

uint64_t sub_10024C964(uint64_t a1, void *a2, Swift::UInt32 a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v84 = &v77[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v77[-v19];
  v21 = type metadata accessor for ConnectionState();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v77[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 0x100000000) != 0)
  {
    v58 = sub_10024B954(a2, a3, a4, a5, a6 & 1, a7);
    if (!v58)
    {
      return 0;
    }

    v59 = (*(*v58 + 576))(v58);

    return v59;
  }

  v79 = v24;
  v80 = a3;
  v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v82 = a2;
  v83 = v25;
  v26 = *(v7 + v25);
  v81 = v20;
  if (v26 >> 62)
  {
    goto LABEL_38;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  v28 = 4;
  while (1)
  {
    if (v28 - v27 == 4)
    {

      v60 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v61 = v84;
      sub_10000E268(v7 + v60, v84, &qword_1005D5968, &unk_1004E9180);
      v62 = sub_1004A4A74();
      v63 = *(v62 - 8);
      result = (*(v63 + 48))(v61, 1, v62);
      if (result == 1)
      {
        goto LABEL_43;
      }

      v64 = v7;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v65 = sub_1004A4A54();
      v66 = sub_1004A6014();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v85 = v68;
        *v67 = 68158210;
        *(v67 + 4) = 2;
        *(v67 + 8) = 256;
        *(v67 + 10) = *(v64 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v67 + 11) = 2082;
        v69 = ConnectionID.debugDescription.getter(a1);
        v71 = sub_10015BA6C(v69, v70, &v85);

        *(v67 + 13) = v71;
        _os_log_impl(&_mh_execute_header, v65, v66, "[%.*hhx] Attempt to send on connection %{public}s -- but it does not exist.", v67, 0x15u);
        sub_1000197E0(v68);
      }

      else
      {
      }

      (*(v63 + 8))(v61, v62);
      v59 = 0;
      goto LABEL_29;
    }

    v29 = v28 - 4;
    if ((v26 & 0xC000000000000001) == 0)
    {
      if (v29 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        if (*(*(v26 + 8 * v28) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == a1)
        {
          break;
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v27 = sub_1004A6A34();
      goto LABEL_4;
    }

    v78 = *(sub_1004A6794() + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    swift_unknownObjectRelease();
    if (v78 == a1)
    {
      break;
    }

LABEL_9:
    ++v28;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_37;
    }
  }

  v30 = v83;
  swift_beginAccess();
  v31 = *(v7 + v30);
  v33 = v81;
  v32 = v82;
  v34 = v80;
  if ((v31 & 0xC000000000000001) != 0)
  {
    v35 = v7;
    v36 = sub_1004A6794();
LABEL_16:
    v37 = swift_endAccess();
    v38 = v79;
    (*(*v36 + 304))(v37);

    v88.bytes._rawValue = v32;
    v88._hashValue._value = v34;
    v39 = ConnectionState.hasMailboxSelectedOrSelectionIsInProgress(_:)(v88);
    sub_10024DD58(v38, type metadata accessor for ConnectionState);
    if (v39)
    {
      v40 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_10000E268(v35 + v40, v33, &qword_1005D5968, &unk_1004E9180);
      v41 = sub_1004A4A74();
      v84 = *(v41 - 8);
      v42 = *(v84 + 6);
      v79 = v41;
      result = v42(v33, 1);
      if (result == 1)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v44 = v35;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v45 = v82;

      v46 = sub_1004A4A54();
      v47 = sub_1004A5FF4();

      v78 = v47;
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v46;
        v49 = v34;
        v50 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v50 = 68158723;
        *(v50 + 4) = 2;
        *(v50 + 8) = 256;
        *(v50 + 10) = *(v44 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v50 + 11) = 2160;
        *(v50 + 13) = 0x786F626C69616DLL;
        *(v50 + 21) = 2085;
        v85 = v45;
        v86 = v49;

        v51 = sub_1004A5824();
        v53 = sub_10015BA6C(v51, v52, &v87);

        *(v50 + 23) = v53;
        *(v50 + 31) = 2082;
        v54 = ConnectionID.debugDescription.getter(a1);
        v56 = sub_10015BA6C(v54, v55, &v87);

        *(v50 + 33) = v56;
        v57 = v48;
        _os_log_impl(&_mh_execute_header, v48, v78, "[%.*hhx] Created mailbox affinity for '%{sensitive,mask.mailbox}s' on connection %{public}s with mailbox already selected.", v50, 0x29u);
        swift_arrayDestroy();

        v33 = v81;
      }

      else
      {
      }

      (*(v84 + 1))(v33, v79);
      v73 = v83;
      result = swift_beginAccess();
      v74 = *(v44 + v73);
      if ((v74 & 0xC000000000000001) != 0)
      {
        goto LABEL_41;
      }

      if (v29 < *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v75 = *(v74 + 8 * v28);

        goto LABEL_34;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v59 = 1;
LABEL_29:
    sub_10024DABC();
    swift_allocError();
    *v72 = v59;
    swift_willThrow();
    return v59;
  }

  if (v29 < *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = v7;
    v36 = *(v31 + 8 * v28);

    goto LABEL_16;
  }

  __break(1u);
LABEL_41:
  v75 = sub_1004A6794();
LABEL_34:
  v76 = swift_endAccess();
  v59 = (*(*v75 + 576))(v76);

  return v59;
}

uint64_t sub_10024D1F4(uint64_t a1, NSObject *a2, uint64_t a3, char a4, uint64_t a5)
{
  v40 = a5;
  v10 = type metadata accessor for ClientCommand(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v38[-v15];
  v17 = type metadata accessor for Command();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v38[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10024DECC(a1, v20, type metadata accessor for Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v22 = *v20;
      v23 = *(v20 + 4);
      v24 = *(v20 + 1);
      v25 = v20[4];

      v41 = v23;
      v5 = sub_10024C964(v22 | (v23 << 32), v24, v25, a2, a3, a4 & 1, v40);
      swift_bridgeObjectRelease_n();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v5 = sub_10023E5A8(*v20, v20[2]);
    }

    else
    {
      sub_10023EBF0(a2, a3);
      return 0;
    }

    return v5;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_10024DDB8(v20, v16, type metadata accessor for ClientCommand);
    v5 = sub_10023DD30(v16, a2, a3, a4 & 1);
    sub_10024DD58(v16, type metadata accessor for ClientCommand);
    return v5;
  }

  v26 = (v20 + *(sub_10000C9C0(&qword_1005CD0A0, &unk_1004E9360) + 48));
  v27 = *v26;
  v28 = *(v26 + 4);
  v29 = *(v26 + 1);
  v39 = v26[4];
  sub_10024DDB8(v20, v14, type metadata accessor for ClientCommand);

  v41 = v28;
  v30 = v42;
  v31 = sub_10024C428(v14, v27 | (v28 << 32), v29, v39, a2, a3, a4 & 1, v40);
  v33 = v32;

  if (v30)
  {

    sub_10024DD58(v14, type metadata accessor for ClientCommand);
    return v5;
  }

  if (v33)
  {

    v5 = 0;
LABEL_20:
    sub_10024DD58(v14, type metadata accessor for ClientCommand);
    return v5;
  }

  v35 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  result = swift_beginAccess();
  v36 = *(v5 + v35);
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = sub_1004A6794();
    goto LABEL_19;
  }

  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v31 < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v36 + 8 * v31 + 32);

LABEL_19:
    swift_endAccess();
    v5 = (*(*v37 + 560))(v14);

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_10024D618(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v26[-v9];
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents;
  swift_beginAccess();
  if (*(a1 + v11))
  {
    v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(a1 + v12, v10, &qword_1005D5968, &unk_1004E9180);
    v13 = sub_1004A4A74();
    v14 = *(v13 - 8);
    result = (*(v14 + 48))(v10, 1, v13);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v16 = sub_1004A4A54();
      v17 = sub_1004A6004();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 68157952;
        *(v18 + 4) = 2;
        *(v18 + 8) = 256;
        *(v18 + 10) = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&_mh_execute_header, v16, v17, "[%.*hhx] withEnqueuedSend() called while we already have enqueued events.", v18, 0xBu);
      }

      else
      {
      }

      (*(v14 + 8))(v10, v13);
      return sub_1002440C0(a2);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  *(a1 + v11) = _swiftEmptyArrayStorage;
  sub_1002440C0(a2);
  v19 = *(a1 + v11);
  if (v19)
  {
    *(a1 + v11) = 0;
    if (*(v19 + 16) && swift_unknownObjectWeakLoadStrong())
    {
      sub_10022F130(v19);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v20 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(a1 + v20, v7, &qword_1005D5968, &unk_1004E9180);
    v21 = sub_1004A4A74();
    v22 = *(v21 - 8);
    result = (*(v22 + 48))(v7, 1, v21);
    if (result == 1)
    {
      goto LABEL_19;
    }

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v23 = sub_1004A4A54();
    v24 = sub_1004A6014();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 68157952;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      *(v25 + 10) = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&_mh_execute_header, v23, v24, "[%.*hhx] nil enqueued events after enqueueing.", v25, 0xBu);
    }

    else
    {
    }

    return (*(v22 + 8))(v7, v21);
  }
}

unint64_t sub_10024DABC()
{
  result = qword_1005D5D08;
  if (!qword_1005D5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5D08);
  }

  return result;
}

uint64_t sub_10024DB24()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10024DB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10024DCAC()
{
  result = qword_1005D35D0;
  if (!qword_1005D35D0)
  {
    sub_1004A5214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D35D0);
  }

  return result;
}

uint64_t sub_10024DD58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10024DDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10024DE20()
{
  result = qword_1005D5D30;
  if (!qword_1005D5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5D30);
  }

  return result;
}

uint64_t sub_10024DE74()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10024DECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024DF44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10024DF8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10024E000()
{
  result = qword_1005D5D40;
  if (!qword_1005D5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5D40);
  }

  return result;
}

unint64_t sub_10024E054()
{
  result = qword_1005D5D50;
  if (!qword_1005D5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5D50);
  }

  return result;
}

unint64_t sub_10024E0A8()
{
  result = qword_1005D5D60;
  if (!qword_1005D5D60)
  {
    sub_10000DEFC(&qword_1005D5D58, &qword_1004E94E0);
    sub_10024E12C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5D60);
  }

  return result;
}

unint64_t sub_10024E12C()
{
  result = qword_1005D5D68;
  if (!qword_1005D5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5D68);
  }

  return result;
}

unint64_t sub_10024E194()
{
  result = qword_1005D5D70;
  if (!qword_1005D5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5D70);
  }

  return result;
}

unint64_t sub_10024E1EC()
{
  result = qword_1005D5D78;
  if (!qword_1005D5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5D78);
  }

  return result;
}

unint64_t sub_10024E244()
{
  result = qword_1005D5D80;
  if (!qword_1005D5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5D80);
  }

  return result;
}

uint64_t sub_10024E298(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEB00000000736E6FLL || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F7272457473616CLL && a2 == 0xE900000000000072 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004AC990 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_10024E46C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10024E4B4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10024E504(char a1, void *a2, uint64_t a3)
{
  v70 = a3;
  v69 = type metadata accessor for Engine.Logger(0);
  v6 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1004A44E4();
  v64 = *(v65 - 8);
  v61 = *(v64 + 64);
  v8 = __chkstk_darwin(v65);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  *&v66 = &v60 - v11;
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v73 = static MonotonicTime.now()();
  sub_1004A44D4();
  v14 = v3[1];
  v15 = v3[2];
  v71 = v3;
  v72 = v14;
  sub_10024F088(a1 & 1, a2, v75);
  v16 = swift_allocObject();
  v17 = v76;
  v18 = sub_10002587C(v75, v76);
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v18);
  (*(v21 + 16))(&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16[5] = swift_getAssociatedTypeWitness();
  v16[6] = swift_getAssociatedConformanceWitness();
  sub_1000B3774(v16 + 2);
  v22 = v16;
  sub_1004A5AC4();
  v23 = swift_allocObject();
  v24 = v78;
  v25 = sub_10002587C(v77, v78);
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v25);
  (*(v28 + 16))(&v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23[5] = swift_getAssociatedTypeWitness();
  v23[6] = swift_getAssociatedConformanceWitness();
  sub_1000B3774(v23 + 2);
  sub_1004A5AC4();
  v29 = v64;
  v30 = *(v64 + 32);
  v31 = v66;
  v32 = v65;
  v30(v66, v13, v65);
  v33 = *(v29 + 16);

  v33(v63, v31, v32);
  v34 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v35 = (v61 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v73;
  *(v36 + 16) = v22;
  *(v36 + 24) = v37;

  v38 = v36 + v34;
  v39 = v62;
  v30(v38, v66, v65);
  v40 = v63;
  v41 = (v36 + v35);
  v42 = v72;
  *v41 = v72;
  v41[1] = v15;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;
  sub_10000C9C0(&qword_1005D5D88, &qword_1004E9680);
  inited = swift_initStackObject();
  *(inited + 16) = sub_10024F8E0;
  *(inited + 24) = v36;

  sub_10024F990(v75);
  v61 = inited;

  sub_10024F348(v22, v73, v40, v42, v15, v23, &v74);
  if (v74)
  {
    v45 = &type metadata for Any;
    *&v44 = 68158210;
    v66 = v44;
    v68 = v23;
    v67 = v22;
    do
    {
      v54 = *v71;

      sub_10024ECB0(v55);

      isa = sub_1004A54F4().super.isa;

      PPSSendTelemetry();

      sub_10024F9E4(v70, v39);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v57 = sub_1004A4A54();
      v58 = sub_1004A6004();

      if (os_log_type_enabled(v57, v58))
      {
        v46 = swift_slowAlloc();
        v47 = v15;
        v48 = v40;
        v49 = swift_slowAlloc();
        *v46 = v66;
        *(v46 + 4) = 2;
        *(v46 + 8) = 256;
        v50 = v45;
        v51 = v39;
        v52 = *(v39 + *(v69 + 20));
        sub_10024FC10(v51);
        *(v46 + 10) = v52;
        *(v46 + 11) = 2112;
        sub_10000C9C0(&qword_1005D5D90, &qword_1004E9688);
        v53 = sub_1004A54F4().super.isa;

        *(v46 + 13) = v53;
        *v49 = v53;
        v39 = v51;
        v45 = v50;
        _os_log_impl(&_mh_execute_header, v57, v58, "[%.*hhx] Sending power telemetry event: %@", v46, 0x15u);
        sub_100190D30(v49);
        v40 = v48;
        v15 = v47;
        v22 = v67;
        v23 = v68;
      }

      else
      {
        sub_10024FC10(v39);
      }

      sub_10024F348(v22, v73, v40, v72, v15, v23, &v74);
    }

    while (v74);
  }

  (*(v64 + 8))(v40, v65);
}

uint64_t sub_10024ECB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000C9C0(&unk_1005D51C0, &qword_1004E6C48);
    v2 = sub_1004A6A74();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100104D00(*(a1 + 56) + 40 * v13, v38);
    *&v37 = v16;
    *(&v37 + 1) = v15;
    *&v34[5] = v37;
    v35[0] = v38[0];
    v35[1] = v38[1];
    v36 = v39;
    v25 = v16;
    v26 = v15;

    swift_dynamicCast();
    sub_1000B364C(v35, v24);
    sub_10000C9C0(&qword_1005D5D90, &qword_1004E9688);
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_10019A8D4(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_10019A8D4(v34, v24);
    result = sub_1004A6644(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_10019A8D4(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Int sub_10024EFBC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_10024F008()
{
  v1 = *v0;
  v2 = v0[1];
  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10024F010()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_10024F058(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t sub_10024F088@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  *v3 = a2;
  swift_bridgeObjectRetain_n();
  RunningSyncRequests.Change.init(previous:current:)(v7, a2, v23);
  v8 = v24;
  v9 = sub_10002587C(v23, v24);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v9);
  (*(v12 + 16))(&v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = a1 & 1;
  v22[48] = a1 & 1;
  v14 = sub_1004A5B64();
  v15 = v26;
  v16 = sub_10002587C(v25, v26);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  (*(v19 + 16))(&v22[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v22[16] = v13;
  v20 = sub_1004A5B64();
  a3[3] = sub_10000C9C0(&qword_1005D5DA0, &unk_1004E96A0);
  a3[4] = sub_1000CBB00(&qword_1005D5DA8, &qword_1005D5DA0, &unk_1004E96A0);
  *a3 = v14;
  a3[8] = sub_10000C9C0(&qword_1005D0E00, &qword_1004D5CA8);
  a3[9] = sub_1000CBB00(&qword_1005D0E08, &qword_1005D0E00, &qword_1004D5CA8);
  a3[5] = v20;
  return sub_10024F990(v23);
}

uint64_t sub_10024F310()
{
  sub_1000197E0((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10024F348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v28 = a2;
  v30 = a7;
  v12 = sub_1004A44E4();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(a1 + 48);
  sub_100025928(a1 + 16, *(a1 + 40));
  sub_1004A6414();
  swift_endAccess();
  if (BYTE4(v31) == 5)
  {
    swift_beginAccess();
    v17 = *(a6 + 48);
    sub_100025928(a6 + 16, *(a6 + 40));
    sub_1004A6414();
    result = swift_endAccess();
    v19 = v31;
    if ((v31 & 0xFF00000000) == 0x500000000)
    {
      v20 = 0;
    }

    else
    {
      v24 = v32;
      (*(v29 + 16))(v15, a3, v12);
      sub_10000C9C0(&qword_1005D5D98, &unk_1004E9690);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004D2DE0;
      *(inited + 32) = 0x7472617473;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = sub_10024FA48(v28, v15, v24);
      *(inited + 88) = 0x746E756F636361;
      *(inited + 96) = 0xE700000000000000;
      *(inited + 72) = &type metadata for Int64;
      *(inited + 80) = &protocol witness table for Int64;
      *(inited + 128) = &type metadata for String;
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = a4;
      *(inited + 112) = a5;
      *(inited + 144) = 1684957547;
      *(inited + 152) = 0xE400000000000000;
      if ((BYTE4(v19) - 2) >= 3u)
      {
        v26 = 3;
      }

      else
      {
        v26 = qword_1004E9798[(BYTE4(v19) - 2)];
      }

      *(inited + 184) = &type metadata for Int64;
      *(inited + 192) = &protocol witness table for Int64;
      *(inited + 160) = v26;
      *(inited + 200) = 1668184435;
      *(inited + 208) = 0xE400000000000000;
      *(inited + 240) = &type metadata for UInt32;
      *(inited + 248) = &protocol witness table for UInt32;
      *(inited + 216) = v19;
      *(inited + 256) = 0x746E657665;
      *(inited + 264) = 0xE500000000000000;
      *(inited + 296) = &type metadata for Int;
      *(inited + 304) = &protocol witness table for Int;
      *(inited + 272) = 2;

      v20 = sub_1002236EC(inited);
      swift_setDeallocating();
      sub_10000C9C0(&unk_1005D53C0, &unk_1004E8CA0);
      swift_arrayDestroy();
      result = (*(v29 + 8))(v15, v12);
    }
  }

  else
  {
    v21 = v31 | (BYTE4(v31) << 32);
    sub_10000C9C0(&qword_1005D5D98, &unk_1004E9690);
    v22 = swift_initStackObject();
    *(v22 + 32) = 0x746E756F636361;
    *(v22 + 16) = xmmword_1004D1B20;
    *(v22 + 72) = &type metadata for String;
    *(v22 + 80) = &protocol witness table for String;
    *(v22 + 40) = 0xE700000000000000;
    *(v22 + 48) = a4;
    *(v22 + 56) = a5;
    *(v22 + 88) = 1684957547;
    *(v22 + 96) = 0xE400000000000000;
    if ((BYTE4(v21) - 2) >= 3u)
    {
      v23 = 3;
    }

    else
    {
      v23 = qword_1004E9798[(BYTE4(v21) - 2)];
    }

    *(v22 + 128) = &type metadata for Int64;
    *(v22 + 136) = &protocol witness table for Int64;
    *(v22 + 104) = v23;
    *(v22 + 144) = 1668184435;
    *(v22 + 152) = 0xE400000000000000;
    *(v22 + 184) = &type metadata for UInt32;
    *(v22 + 192) = &protocol witness table for UInt32;
    *(v22 + 160) = v21;
    *(v22 + 200) = 0x746E657665;
    *(v22 + 208) = 0xE500000000000000;
    *(v22 + 240) = &type metadata for Int;
    *(v22 + 248) = &protocol witness table for Int;
    *(v22 + 216) = 1;
    v27 = v22;

    v20 = sub_1002236EC(v27);
    swift_setDeallocating();
    sub_10000C9C0(&unk_1005D53C0, &unk_1004E8CA0);
    result = swift_arrayDestroy();
  }

  *v30 = v20;
  return result;
}

uint64_t sub_10024F7EC()
{
  v1 = sub_1004A44E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10024F8E0@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(sub_1004A44E4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);

  return sub_10024F348(v7, v8, v1 + v4, v10, v11, v12, a1);
}

uint64_t sub_10024F9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Engine.Logger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024FA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A44E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  result = (*(v7 + 16))(v11, a2, v6);
  v15 = __OFSUB__(a3, a1);
  if (a3 < a1)
  {
    v16 = a1 - a3;
    if (__OFSUB__(a1, a3))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v15 = __OFSUB__(0, v16);
    if (!__OFSUB__(0, v16))
    {
LABEL_7:
      sub_1004A4474();
      v17 = *(v7 + 8);
      v17(v11, v6);
      sub_1004A44A4();
      v19 = round(v18);
      result = (v17)(v13, v6);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v19 > -9.22337204e18)
      {
        if (v19 < 9.22337204e18)
        {
          return v19;
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10024FC10(uint64_t a1)
{
  v2 = type metadata accessor for Engine.Logger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024FC9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_10024FCF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10024FD6C()
{
  result = qword_1005D5DB0;
  if (!qword_1005D5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5DB0);
  }

  return result;
}

uint64_t CircularBuffer._buffer.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t type metadata accessor for AtomicFlag.Storage()
{
  result = qword_1005D5DE8;
  if (!qword_1005D5DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall AtomicFlag.testAndSet()()
{
  if (qword_1005D5DC0 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  return atomicFlag_testAndSet(v0 + 16);
}

_UNKNOWN **atomicFlag_testAndSet.unsafeMutableAddressor()
{
  if (qword_1005D5DC0 != -1)
  {
    swift_once();
  }

  return &atomicFlag_testAndSet;
}

Swift::Void __swiftcall AtomicFlag.clear()()
{
  if (qword_1005D5DC8 != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v2 = atomicFlag_clear;
  v3 = v0 + 16;

  v2(v3);
}

_UNKNOWN **atomicFlag_clear.unsafeMutableAddressor()
{
  if (qword_1005D5DC8 != -1)
  {
    swift_once();
  }

  return &atomicFlag_clear;
}

void *sub_100250010(uint64_t a1, const char *a2, void *a3)
{
  result = dlsym(0xFFFFFFFFFFFFFFFELL, a2);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CertUITrustManager.__allocating_init()()
{
  v0 = swift_allocObject();
  CertUITrustManager.init()();
  return v0;
}

void CertUITrustManager.init()()
{
  v1 = sub_1004A5734();
  v2 = NSClassFromString(v1);

  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_1004A46A4();
  ClassMethod = class_getClassMethod(v2, v3);
  if (!ClassMethod)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  Implementation = method_getImplementation(ClassMethod);
  v6 = sub_1004A46A4();
  v7 = (Implementation)(v2, v6);
  v8 = sub_1004A46A4();
  InstanceMethod = class_getInstanceMethod(v2, v8);
  if (!InstanceMethod)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = method_getImplementation(InstanceMethod);
  v11 = sub_1004A46A4();
  v0[2] = (v10)(v7, v11);
  v12 = class_getInstanceMethod(v2, "rawTrustResultForSSLTrust:hostname:service:");
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v0[3] = method_getImplementation(v12);
  v13 = class_getInstanceMethod(v2, "allowTrust:forHost:service:");
  if (v13)
  {
    v14 = method_getImplementation(v13);
    swift_unknownObjectRelease();
    v0[4] = v14;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t CertUITrustManager.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t CertUITrustManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t CertUITrustManager.rawTrustResult(forSSLTrust:hostname:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v10 = v5 + 16;
  v8 = *(v5 + 16);
  v9 = *(v10 + 8);
  if (!a3)
  {
    v11 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = sub_1004A5734();
  if (v6)
  {
LABEL_3:
    v6 = sub_1004A5734();
  }

LABEL_4:
  v12 = v9(v8, "rawTrustResultForSSLTrust:hostname:service:", a1, v11, v6);

  return v12;
}

Swift::Void __swiftcall CertUITrustManager.allow(_:forHost:service:)(SecTrustRef_optional _, Swift::String_optional forHost, Swift::String_optional service)
{
  object = service.value._object;
  v6 = *(v3 + 32);
  v7 = *(v3 + 16);
  if (forHost.value._object)
  {
    v8 = sub_1004A5734();
    if (object)
    {
LABEL_3:
      v9 = sub_1004A5734();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (service.value._object)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  v6(v7, "allowTrust:forHost:service:", _.value, v8);
}

uint64_t CertUITrustManager.showPrompt(hostname:service:trust:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for CertUIPrompt();
  inited = swift_initStackObject();
  sub_1002507BC();
  v15 = a2;
  v16 = *(inited + 32);
  v17 = *(inited + 16);
  if (v15)
  {
    v18 = sub_1004A5734();
  }

  else
  {
    v18 = 0;
  }

  v16(v17, "setHost:", v18);

  v19 = *(inited + 40);
  v20 = *(inited + 16);
  if (a4)
  {
    a4 = sub_1004A5734();
  }

  v19(v20, "setService:", a4);

  (*(inited + 24))(*(inited + 16), "setTrust:", a5);
  sub_1002506B0(a6, a7, a8);
}

void sub_1002506B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 48);
  v7 = *(v3 + 16);
  if (a1)
  {
    v8.super.isa = sub_1004A54F4().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100250B40;
  v10[3] = &unk_1005AA258;
  v9 = _Block_copy(v10);

  v6(v7, "showPromptWithOptions:responseBlock:", v8.super.isa, v9);
  _Block_release(v9);
}

void sub_1002507BC()
{
  v1 = sub_1004A5734();
  v2 = NSClassFromString(v1);

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = sub_1004A46A4();
  ClassMethod = class_getClassMethod(v2, v3);
  if (!ClassMethod)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  Implementation = method_getImplementation(ClassMethod);
  v6 = sub_1004A46A4();
  v7 = (Implementation)(v2, v6);
  v8 = sub_1004A46A4();
  InstanceMethod = class_getInstanceMethod(v2, v8);
  if (!InstanceMethod)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = method_getImplementation(InstanceMethod);
  v11 = sub_1004A46A4();
  v0[2] = (v10)(v7, v11);
  v12 = class_getInstanceMethod(v2, "setTrust:");
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v0[3] = method_getImplementation(v12);
  v13 = class_getInstanceMethod(v2, "setHost:");
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v0[4] = method_getImplementation(v13);
  v14 = class_getInstanceMethod(v2, "setService:");
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v0[5] = method_getImplementation(v14);
  v15 = class_getInstanceMethod(v2, "showPromptWithOptions:responseBlock:");
  if (v15)
  {
    v16 = method_getImplementation(v15);
    swift_unknownObjectRelease();
    v0[6] = v16;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100250978()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100250B40(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100250C60()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100250CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, void (*a7)(char *, char *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v76 = a7;
  v77 = a8;
  v73 = a6;
  v72 = a5;
  v71 = a4;
  v70 = a3;
  v85 = a2;
  v11 = *(*(*a2 + class metadata base offset for KeyPath) - 8);
  v12 = *(v11 + 64);
  v88 = a10;
  v13 = __chkstk_darwin(a9);
  v75 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v70 - v16;
  v89 = *(v18 + 8);
  v19 = *(v89 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v15);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v70 - v25;
  v86 = v24;
  v78 = v27;
  if (sub_1004A5CB4() < 1)
  {
    v29 = 0;
    v28 = 0;
    v81 = 0;
    v31 = v78;
  }

  else
  {
    v82 = a1;
    v83 = v17;
    v28 = 0;
    v29 = 0;
    v80 = v23;
    v81 = 0;
    v30 = (v11 + 8);
    v79 = (v19 + 8);
    v31 = v78;
    v84 = v26;
    v74 = (v11 + 8);
    while (v29 < sub_1004A5CB4())
    {
      v38 = v83;
      sub_1004A5D14();
      swift_getAtKeyPath();
      v87 = v29;
      v39 = *v30;
      (*v30)(v38, v31);
      sub_1004A5D14();
      swift_getAtKeyPath();
      v39(v38, v31);
      if (sub_1004A5724())
      {
        v32 = v28;
        v33 = v87;
        sub_1004A5D14();
        v34 = v75;
        sub_1004A5D14();
        v76(v38, v34);
        v35 = v80;
        v39(v34, v31);
        v39(v38, v31);
        v36 = *v79;
        v37 = v89;
        (*v79)(v35, v89);
        v36(v84, v37);
        v29 = v33 + 1;
        v28 = v32 + 1;
      }

      else
      {
        result = sub_1004A5CB4();
        if (result < v28)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v92 = sub_1004A5D04();
        v93 = v41;
        v94 = v42;
        v95 = v43;
        __chkstk_darwin(v92);
        v44 = v84;
        v45 = v85;
        *(&v70 - 4) = v88;
        *(&v70 - 3) = v45;
        *(&v70 - 2) = v44;
        sub_1004A64F4();
        swift_getWitnessTable();
        v46 = v81;
        sub_1004A5EC4();
        result = swift_unknownObjectRelease();
        if (v91)
        {
          v81 = v46;
          v47 = v83;
          v48 = v87;
          sub_1004A5D14();
          v72(v47);
          v30 = v74;
          v39(v47, v31);
          v49 = *v79;
          v50 = v89;
          (*v79)(v80, v89);
          v29 = v48 + 1;
        }

        else
        {
          v51 = v90;
          if (v90 < v28)
          {
            goto LABEL_18;
          }

          v52 = v78;
          v92 = sub_1004A5D04();
          v93 = v53;
          v94 = v54;
          v95 = v55;
          __chkstk_darwin(v92);
          v56 = v88;
          v50 = v89;
          *(&v70 - 6) = v52;
          *(&v70 - 5) = v50;
          v57 = v70;
          *(&v70 - 4) = v56;
          *(&v70 - 3) = v57;
          *(&v70 - 2) = v71;
          swift_getWitnessTable();
          sub_1004A5B84();
          v81 = v46;
          swift_unknownObjectRelease();
          v49 = *v79;
          (*v79)(v80, v50);
          v28 = v51;
          v29 = v87;
          v30 = v74;
        }

        v49(v84, v50);
        v31 = v78;
      }

      if (v28 >= sub_1004A5CB4())
      {
        break;
      }
    }
  }

  result = sub_1004A5CB4();
  if (result < v28)
  {
LABEL_19:
    __break(1u);
  }

  else
  {
    v92 = sub_1004A5D04();
    v93 = v58;
    v94 = v59;
    v95 = v60;
    __chkstk_darwin(v92);
    v62 = v88;
    v61 = v89;
    *(&v70 - 6) = v31;
    *(&v70 - 5) = v61;
    v63 = v70;
    *(&v70 - 4) = v62;
    *(&v70 - 3) = v63;
    *(&v70 - 2) = v71;
    sub_1004A64F4();
    swift_getWitnessTable();
    sub_1004A5B84();
    swift_unknownObjectRelease();
    result = sub_1004A5CB4();
    if (result >= v29)
    {
      v92 = sub_1004A5D04();
      v93 = v64;
      v94 = v65;
      v95 = v66;
      __chkstk_darwin(v92);
      v68 = v88;
      v67 = v89;
      *(&v70 - 6) = v31;
      *(&v70 - 5) = v67;
      v69 = v72;
      *(&v70 - 4) = v68;
      *(&v70 - 3) = v69;
      *(&v70 - 2) = v73;
      sub_1004A5B84();
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100251498(uint64_t a1, void *a2)
{
  v2 = *(*a2 + class metadata base offset for KeyPath + 8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  swift_getAtKeyPath();
  v7 = sub_1004A5724();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_1002515B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_100251498(a1, *(v1 + 24)) & 1;
}

uint64_t sub_1002515DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t static DispatchData.makeMappedRead(fileDescriptor:count:)(int a1, size_t a2)
{
  v4 = sub_1004A52D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = mmap(0, a2, 1, 1, a1, 0);
  if (!v9 || v9 == sub_1004A4B44())
  {
    sub_10025177C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 104))(v8, enum case for DispatchData.Deallocator.unmap(_:), v4);
    return sub_1004A52E4();
  }
}

unint64_t sub_10025177C()
{
  result = qword_1005D5FB0;
  if (!qword_1005D5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5FB0);
  }

  return result;
}

uint64_t static URL.makeTemporaryFile(baseDirectory:pathExtension:)(char *a1)
{
  v3 = sub_1004A4374();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A4304();
  sub_1004A4314();
  v8 = *(v4 + 8);
  v8(v7, v3);
  result = sub_100251AA0(sub_100251930, 0);
  if (v1)
  {
    v10 = result;
    v8(a1, v3);
    return v10;
  }

  return result;
}

uint64_t sub_100251930@<X0>(char *a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = sub_1004A3ED4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = mkstemps(a1, a2);
  if (result <= 0)
  {
    sub_1004A4B74();
    v12 = sub_1004A4B54();
    if ((v12 & 0x100000000) != 0)
    {
      sub_100252358();
      swift_allocError();
    }

    else
    {
      v14 = v12;
      sub_100252424(_swiftEmptyArrayStorage);
      sub_100252534();
      sub_1004A4254();
      sub_1004A3EC4();
      (*(v7 + 8))(v10, v6);
    }

    return swift_willThrow();
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100251AA0(uint64_t a1, uint64_t a2)
{
  v22[0] = a2;
  v4 = sub_10000C9C0(&qword_1005D5FB8, &qword_1004E9938);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = sub_1004A4374();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A42A4();
  v13 = sub_1004A5924();

  if (v13 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFADD__(v13, 1))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  __chkstk_darwin(result);
  v15 = v22[0];
  v22[-4] = a1;
  v22[-3] = v15;
  LODWORD(v22[-2]) = v16;
  __chkstk_darwin(v17);
  v22[-2] = sub_1002521F0;
  v22[-1] = v18;
  v19 = v22[1];
  sub_1004A4324();
  if (!v19)
  {
    (*(v9 + 8))(v2, v8);
    v20 = *(v4 + 48);
    v4 = *v7;
    v21 = *(v9 + 32);
    v21(v12, &v7[v20], v8);
    v21(v2, v12, v8);
  }

  return v4;
}

uint64_t sub_100251D00@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v34 = a4;
  v11 = sub_10000C9C0(&qword_1005D5FC8, &unk_1004E9940);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31[-v13];
  v15 = sub_10000C9C0(&qword_1005D5FB8, &qword_1004E9938);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v31[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v22 = &v31[-v21];
  v33 = a6;
  if (a1)
  {
    v32 = a5;
    v23 = a2 - a1;
    if (a2 - a1 < 0)
    {
      __break(1u);
    }

    if (v23 >= 1025)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v30 = swift_slowAlloc();
        sub_100251FE4(v30, a1, a2, a3, v32, a6);
      }
    }

    __chkstk_darwin(isStackAllocationSafe);
    v25 = &v31[-v24];
    memmove(&v31[-v24], a1, v23);
    a5 = v32;
  }

  else
  {
    __chkstk_darwin(isStackAllocationSafe);
    v25 = &v31[-16];
  }

  v26 = v35;
  a3(&v36, v25, a5);
  if (v26)
  {
    return swift_willThrow();
  }

  v28 = sub_1004A4374();
  (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  v29 = v18 + *(v15 + 48);
  sub_1004A4334();
  sub_100252280(v14);
  *v18 = v36;
  sub_1002522E8(v18, v22);
  return sub_1002522E8(v22, v33);
}

void sub_100251FE4(void *a1@<X0>, const void *a2@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t *__return_ptr, void *, uint64_t)@<X4>, uint64_t a5@<X6>, _DWORD *a6@<X8>)
{
  v13 = sub_10000C9C0(&qword_1005D5FC8, &unk_1004E9940);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v19 - v15;
  if (a1 && a2)
  {
    memmove(a1, a2, a3 - a2);
  }

  else if (!a1)
  {
    __break(1u);
    return;
  }

  a4(&v20, a1, a5);
  if (!v6)
  {
    v17 = sub_1004A4374();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = a6 + *(sub_10000C9C0(&qword_1005D5FB8, &qword_1004E9938) + 48);
    sub_1004A4334();
    sub_100252280(v16);
    *a6 = v20;
  }
}

size_t sub_100252154(const char *a1, uint64_t (*a2)(const char *, const char *))
{
  if (a1)
  {
    result = strlen(a1);
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      return a2(a1, &a1[result + 1]);
    }
  }

  else
  {
    sub_10025222C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10025222C()
{
  result = qword_1005D5FC0;
  if (!qword_1005D5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5FC0);
  }

  return result;
}

uint64_t sub_100252280(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D5FC8, &unk_1004E9940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002522E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5FB8, &qword_1004E9938);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100252358()
{
  result = qword_1005D5FD0;
  if (!qword_1005D5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5FD0);
  }

  return result;
}

unint64_t sub_1002523AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1004A6F14();

  return sub_100065170(a1, a2, v6);
}

unint64_t sub_100252424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D5FE0, &unk_1004F79C0);
    v3 = sub_1004A6A74();
    v4 = a1 + 32;

    while (1)
    {
      sub_10025258C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1002523AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10019A8D4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100252534()
{
  result = qword_1005D5FD8;
  if (!qword_1005D5FD8)
  {
    sub_1004A3ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5FD8);
  }

  return result;
}

uint64_t sub_10025258C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5FE8, &unk_1004E9950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MillisecondDate.wrappedValue.setter(uint64_t a1)
{
  v2 = v1;
  sub_1004A4464();
  v5 = v4;
  v6 = sub_1004A44E4();
  result = (*(*(v6 - 8) + 8))(a1, v6);
  v8 = v5 * 1000.0;
  if (COERCE__INT64(fabs(v5 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    *v2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*MillisecondDate.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_1004A44E4();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  v9 = *v1 * 0.001;
  sub_1004A4454();
  return sub_100252814;
}

void sub_100252814(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if ((a2 & 1) == 0)
  {
    v14 = v2[1];
    v15 = v2[2];
    sub_1004A4464();
    v17 = v16;
    (*(v15 + 8))(v3, v14);
    v18 = v17 * 1000.0;
    if (COERCE__INT64(fabs(v17 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v18 > -9.22337204e18)
      {
        if (v18 < 9.22337204e18)
        {
          v12 = v2[3];
          v11 = v2[4];
          **v2 = v18;
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[1];
  (*(v5 + 16))(v4, v3, v6);
  sub_1004A4464();
  v8 = v7;
  v9 = *(v5 + 8);
  v9(v4, v6);
  v10 = v8 * 1000.0;
  if (COERCE__INT64(fabs(v8 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v2[3];
  v11 = v2[4];
  v13 = v2[1];
  **v2 = v10;
  v9(v11, v13);
LABEL_10:
  free(v11);
  free(v12);

  free(v2);
}

uint64_t MillisecondDate.init(wrappedValue:)(uint64_t a1)
{
  sub_1004A4464();
  v3 = v2;
  v4 = sub_1004A44E4();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  v6 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 9.22337204e18)
  {
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

Swift::Int ModificationSequenceValue.hashValue.getter(Swift::UInt64 a1)
{
  sub_1004A6E94();
  sub_1004A6EF4(a1);
  return sub_1004A6F14();
}

Swift::Int sub_100252AF4()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EF4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100252B68()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EF4(v1);
  return sub_1004A6F14();
}

NIOIMAPCore2::AppendData __swiftcall AppendData.init(byteCount:withoutContentTransferEncoding:)(Swift::Int byteCount, Swift::Bool withoutContentTransferEncoding)
{
  v2 = withoutContentTransferEncoding;
  result.byteCount = byteCount;
  result.withoutContentTransferEncoding = v2;
  return result;
}

uint64_t MailboxStatus.messageCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OptionalMillisecondDate.wrappedValue.getter@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = 1;
  }

  else
  {
    sub_1004A4454();
    v3 = 0;
  }

  v4 = sub_1004A44E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t OptionalMillisecondDate.wrappedValue.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  sub_100252E5C(a1, &v19 - v11);
  v13 = (*(v5 + 48))(v12, 1, v4);
  if (v13 == 1)
  {
    result = sub_100252ECC(a1);
    v15 = 0;
LABEL_7:
    *v2 = v15;
    *(v2 + 8) = v13 == 1;
    return result;
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_1004A4464();
  v17 = v16;
  sub_100252ECC(a1);
  result = (*(v5 + 8))(v8, v4);
  v18 = v17 * 1000.0;
  if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v18 < 9.22337204e18)
  {
    v15 = v18;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100252E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100252ECC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*OptionalMillisecondDate.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_1004A44E4();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v4[3] = v8;
  v9 = *(*(sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v4[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(v9);
    v4[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[6] = v10;
  if (*(v1 + 8))
  {
    v12 = 1;
  }

  else
  {
    v13 = *v1 * 0.001;
    sub_1004A4454();
    v12 = 0;
  }

  (*(v7 + 56))(v11, v12, 1, v5);
  return sub_1002530F0;
}

void sub_1002530F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if ((a2 & 1) == 0)
  {
    v8 = v2[1];
    v9 = v2[2];
    sub_100252E5C((*a1)[6], v3);
    v10 = (*(v9 + 48))(v3, 1, v8);
    v11 = v2[6];
    if (v10 == 1)
    {
      sub_100252ECC(v2[6]);
      v12 = 0;
LABEL_9:
      v19 = v10 == 1;
      v3 = v2[5];
      v4 = v2[6];
      v6 = v2[3];
      v5 = v2[4];
      v20 = *v2;
      *v20 = v12;
      *(v20 + 8) = v19;
      goto LABEL_10;
    }

    v14 = v2[2];
    v13 = v2[3];
    v15 = v2[1];
    (*(v14 + 32))(v13, v2[5], v15);
    sub_1004A4464();
    v17 = v16;
    sub_100252ECC(v11);
    (*(v14 + 8))(v13, v15);
    v18 = v17 * 1000.0;
    if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        v12 = v18;
        goto LABEL_9;
      }

LABEL_15:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v6 = v2[3];
  v5 = v2[4];
  v7 = *v2;
  sub_100252E5C((*a1)[6], v5);
  OptionalMillisecondDate.wrappedValue.setter(v5);
  sub_100252ECC(v4);
LABEL_10:
  free(v4);
  free(v3);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t OptionalMillisecondDate.init(wrappedValue:)(uint64_t a1)
{
  v2 = sub_1004A44E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  sub_100252E5C(a1, &v15 - v9);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_100252ECC(a1);
    return 0;
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_1004A4464();
  v13 = v12;
  sub_100252ECC(a1);
  result = (*(v3 + 8))(v6, v2);
  v14 = v13 * 1000.0;
  if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static OptionalMillisecondDate.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
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

  return 0;
}

void OptionalMillisecondDate.hash(into:)(uint64_t a1, Swift::UInt64 a2, char a3)
{
  if (a3)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a2);
  }
}

Swift::Int OptionalMillisecondDate.hashValue.getter(Swift::UInt64 a1, char a2)
{
  sub_1004A6E94();
  if (a2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a1);
  }

  return sub_1004A6F14();
}

Swift::Int sub_100253568()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  if (v2 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v1);
  }

  return sub_1004A6F14();
}

void sub_1002535D8()
{
  if (*(v0 + 8) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v1 = *v0;
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v1);
  }
}

Swift::Int sub_100253628()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  if (v2 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v1);
  }

  return sub_1004A6F14();
}

unint64_t sub_100253698()
{
  result = qword_1005D5FF0;
  if (!qword_1005D5FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5FF0);
  }

  return result;
}

unint64_t sub_1002536F0()
{
  result = qword_1005D5FF8;
  if (!qword_1005D5FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5FF8);
  }

  return result;
}

uint64_t sub_100253744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

__uint64_t static MonotonicTime.now()()
{
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

IMAP2Helpers::MonotonicTime __swiftcall MonotonicTime.init(nanoSeconds:since:)(IMAP2Helpers::MonotonicTime nanoSeconds, IMAP2Helpers::MonotonicTime since)
{
  if (nanoSeconds.rawValue >= 1)
  {
    v2 = __OFADD__(since.rawValue, nanoSeconds.rawValue);
    nanoSeconds.rawValue += since.rawValue;
    if (!v2)
    {
      return nanoSeconds;
    }

    __break(1u);
  }

  v3 = -nanoSeconds.rawValue;
  if (__OFSUB__(0, nanoSeconds.rawValue))
  {
    __break(1u);
    goto LABEL_9;
  }

  nanoSeconds.rawValue += since.rawValue;
  if (__OFSUB__(since.rawValue, v3))
  {
LABEL_9:
    __break(1u);
  }

  return nanoSeconds;
}

IMAP2Helpers::MonotonicTime __swiftcall MonotonicTime.init(secondsSinceNow:)(Swift::Double secondsSinceNow)
{
  result.rawValue = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if (result.rawValue < 0)
  {
    __break(1u);
  }

  else
  {

    return _s12IMAP2Helpers13MonotonicTimeV7seconds5sinceACSd_ACtcfC_0(result.rawValue, secondsSinceNow);
  }

  return result;
}

int64_t DispatchTime.init(_:)(uint64_t a1)
{
  v2 = sub_1004A5234();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1004A53B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if (result < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v13 = a1 - result;
  if (a1 >= result)
  {
LABEL_5:
    sub_1004A5394();
    *v6 = v13;
    (*(v3 + 104))(v6, enum case for DispatchTimeInterval.nanoseconds(_:), v2);
    sub_1004A53A4();
    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v7);
  }

  if (__OFSUB__(result, a1))
  {
    goto LABEL_7;
  }

  v13 = a1 - result;
  if (!__OFSUB__(0, result - a1))
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
  return result;
}

Swift::Int64 __swiftcall MonotonicTime.nanoSeconds(since:)(IMAP2Helpers::MonotonicTime since)
{
  v3 = __OFSUB__(v1, since.rawValue);
  result = v1 - since.rawValue;
  if (result < 0 != v3)
  {
    v3 = __OFSUB__(since.rawValue, v1);
    v5 = since.rawValue - v1;
    if (v3)
    {
      __break(1u);
      goto LABEL_10;
    }

    v3 = __OFSUB__(0, v5);
    result = -v5;
    if (!__OFSUB__(0, v5))
    {
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t Date.init(_:now:now:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = __OFSUB__(result, a2);
  if (result < a2)
  {
    v5 = a2 - result;
    if (__OFSUB__(a2, result))
    {
      __break(1u);
      goto LABEL_11;
    }

    v4 = __OFSUB__(0, v5);
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

LABEL_7:
  sub_1004A4474();
  v6 = sub_1004A44E4();
  v7 = *(*(v6 - 8) + 8);

  return v7(a3, v6);
}

Swift::Double __swiftcall MonotonicTime.seconds(since:)(IMAP2Helpers::MonotonicTime since)
{
  v2 = __OFSUB__(v1, since.rawValue);
  v3 = v1 - since.rawValue;
  if (v1 < since.rawValue)
  {
    if (__OFSUB__(since.rawValue, v1))
    {
      __break(1u);
      goto LABEL_9;
    }

    v2 = __OFSUB__(0, since.rawValue - v1);
    v3 = v1 - since.rawValue;
    if (!v2)
    {
      return v3 / 1000000000.0;
    }

    __break(1u);
  }

  if (!v2)
  {
    return v3 / 1000000000.0;
  }

LABEL_9:
  __break(1u);
  return result;
}

int64_t static MonotonicTime.secondsSince(_:)(int64_t a1)
{
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if (result < 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  if (result >= a1 && __OFSUB__(result, a1))
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t _s12IMAP2Helpers13MonotonicTimeV7seconds5sinceACSd_ACtcfC_0(uint64_t result, double a2)
{
  v2 = round(a2 * 1000000000.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  if (v2 >= 1)
  {
    v4 = __OFADD__(result, v3);
    result += v3;
    if (!v4)
    {
      return result;
    }

    __break(1u);
  }

  v4 = __OFSUB__(0, v3);
  v5 = -v3;
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = __OFSUB__(result, v5);
  result -= v5;
  if (v4)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

unint64_t sub_100253C48()
{
  result = qword_1005D6000;
  if (!qword_1005D6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6000);
  }

  return result;
}

IMAP2Helpers::RateLimitResult __swiftcall MonotonicTime.rateLimit(now:seconds:)(IMAP2Helpers::MonotonicTime now, Swift::Double seconds)
{
  v3 = *v2;
  if (*v2 > now.rawValue)
  {
    if (__OFSUB__(*v2, now.rawValue))
    {
      __break(1u);
      goto LABEL_11;
    }

    v4 = now.rawValue - *v2;
    if (!__OFSUB__(0, *v2 - now.rawValue))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v4 = now.rawValue - v3;
  if (__OFSUB__(now.rawValue, v3))
  {
LABEL_11:
    __break(1u);
    return now.rawValue;
  }

LABEL_7:
  v5 = v4 / 1000000000.0;
  if (v5 > seconds)
  {
    *v2 = now.rawValue;
  }

  LOBYTE(now.rawValue) = v5 > seconds;
  return now.rawValue;
}

unint64_t sub_100253D0C()
{
  result = qword_1005D6008;
  if (!qword_1005D6008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6008);
  }

  return result;
}

uint64_t RestartableTimer.__allocating_init(queue:repeating:leeway:closure:)(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v34 = a4;
  v42 = a2;
  v43 = a3;
  v37 = a1;
  v5 = sub_1004A53B4();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  __chkstk_darwin(v5);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v33 - v9;
  v10 = sub_1004A60A4();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A5244();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = sub_1004A5274();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v36 = swift_allocObject();
  _Block_copy(a4);
  sub_1004A5264();
  v44 = _swiftEmptyArrayStorage;
  sub_100210DC8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  v18 = sub_1004A53E4();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1004A53C4();
  sub_100210D7C();
  v44 = _swiftEmptyArrayStorage;
  sub_100210DC8(&unk_1005D4F70, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10000C9C0(&qword_1005D5510, &qword_1004E8DB0);
  sub_1000CBB00(&qword_1005D4F80, &qword_1005D5510, &qword_1004E8DB0);
  sub_1004A6544();
  v21 = v37;
  v33 = v21;
  v22 = sub_1004A60B4();

  (*(v35 + 8))(v13, v10);
  swift_getObjectType();
  sub_1004A60D4();
  v23 = v39;
  sub_1004A5394();
  v24 = v38;
  v25 = v42;
  sub_1004A53A4();
  v26 = *(v40 + 8);
  v27 = v23;
  v28 = v41;
  v26(v27, v41);
  v29 = v43;
  sub_1004A6254();

  _Block_release(v34);
  v30 = sub_1004A5234();
  v31 = *(*(v30 - 8) + 8);
  v31(v29, v30);
  v31(v25, v30);
  v26(v24, v28);
  result = v36;
  *(v36 + 32) = v33;
  *(result + 16) = v22;
  *(result + 24) = 1;
  return result;
}

uint64_t RestartableTimer.init(queue:repeating:leeway:closure:)(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v39 = a3;
  v32 = a4;
  v38 = a2;
  v34 = a1;
  v37 = sub_1004A53B4();
  v41 = *(v37 - 8);
  v5 = *(v41 + 64);
  v6 = __chkstk_darwin(v37);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = &v31 - v8;
  v9 = sub_1004A60A4();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A5244();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = sub_1004A5274();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  _Block_copy(a4);
  sub_1004A5264();
  v42 = &_swiftEmptyArrayStorage;
  sub_100210DC8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  v17 = sub_1004A53E4();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_1004A53C4();
  sub_100210D7C();
  v42 = &_swiftEmptyArrayStorage;
  sub_100210DC8(&unk_1005D4F70, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10000C9C0(&qword_1005D5510, &qword_1004E8DB0);
  sub_1000CBB00(&qword_1005D4F80, &qword_1005D5510, &qword_1004E8DB0);
  sub_1004A6544();
  v20 = v34;
  v31 = v20;
  v21 = sub_1004A60B4();

  (*(v33 + 8))(v12, v9);
  swift_getObjectType();
  sub_1004A60D4();
  v22 = v36;
  sub_1004A5394();
  v23 = v35;
  v24 = v38;
  sub_1004A53A4();
  v25 = *(v41 + 8);
  v41 += 8;
  v26 = v37;
  v25(v22, v37);
  v27 = v39;
  sub_1004A6254();

  _Block_release(v32);
  v28 = sub_1004A5234();
  v29 = *(*(v28 - 8) + 8);
  v29(v27, v28);
  v29(v24, v28);
  v25(v23, v26);
  result = v40;
  *(v40 + 32) = v31;
  *(result + 16) = v21;
  *(result + 24) = 1;
  return result;
}

uint64_t RestartableTimer.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1004A6104();
  swift_unknownObjectRelease();
  if (*(v1 + 24) == 1)
  {
    v3 = *(v1 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1004A6114();
    swift_unknownObjectRelease();
  }

  v4 = *(v1 + 16);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t RestartableTimer.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1004A6104();
  swift_unknownObjectRelease();
  if (*(v1 + 24) == 1)
  {
    v3 = *(v1 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1004A6114();
    swift_unknownObjectRelease();
  }

  v4 = *(v1 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall RestartableTimer.start()()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (*(v0 + 24) == 1)
    {
      v8 = *(v0 + 16);
      swift_getObjectType();
      sub_1004A6114();
      *(v0 + 24) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall RestartableTimer.stop()()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if ((*(v0 + 24) & 1) == 0)
    {
      v8 = *(v0 + 16);
      swift_getObjectType();
      sub_1004A6124();
      *(v0 + 24) = 1;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t RestartableTimer.isRunning.getter()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 32);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    return (*(v0 + 24) & 1) == 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_100254C10()
{
  result = qword_1005D60C8;
  if (!qword_1005D60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D60C8);
  }

  return result;
}

uint64_t static PCG32Random.random.getter()
{
  swift_stdlib_random();
  swift_stdlib_random();
  return 0;
}

Swift::Void __swiftcall PCG32Random.seed(state:sequence:)(Swift::UInt64 state, Swift::UInt64 sequence)
{
  v3 = (2 * sequence) | 1;
  *v2 = v3 + 0x5851F42D4C957F2DLL * (v3 + state);
  v2[1] = v3;
}

Swift::UInt32 __swiftcall PCG32Random.next()()
{
  v1 = *v0;
  *v0 = v0[1] + 0x5851F42D4C957F2DLL * *v0;
  return __ROR4__((v1 >> 45) ^ (v1 >> 27), v1 >> 59);
}

Swift::UInt64 __swiftcall PCG32Random.next()()
{
  v1 = v0[1];
  v2 = v1 + 0x5851F42D4C957F2DLL * *v0;
  v3 = __ROR4__((*v0 >> 45) ^ (*v0 >> 27), *v0 >> 59);
  *v0 = v1 + 0x5851F42D4C957F2DLL * v2;
  return __ROR4__((v2 >> 45) ^ (v2 >> 27), v2 >> 59) | (v3 << 32);
}

BOOL static MailboxName.stableOrder(_:_:)(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v8 = MailboxName.inbox.unsafeMutableAddressor();
  v9 = *v8;
  v10 = *(v8 + 2) | (*(v8 + 2) << 32);
  v11 = a2 | (a2 << 32);
  if (v10 == v11 && (sub_1000FFC98(*v8, a1) & 1) != 0 && v10 == (a4 | (a4 << 32)) && (sub_1000FFC98(v9, a3) & 1) != 0 || v10 == (a4 | (a4 << 32)) && (sub_1000FFC98(v9, a3) & 1) != 0)
  {
    return 0;
  }

  if (v10 == v11 && (sub_1000FFC98(v9, a1) & 1) != 0)
  {
    return 1;
  }

  return sub_100254F4C(a1, a3) == -1;
}

uint64_t sub_100254EA0@<X0>(void *__s2@<X0>, void *__s1@<X2>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (__s1)
  {
    v8 = a4 - __s1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3 - __s2;
  if (a3 - __s2 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = a3 - __s2;
  }

  if (__s2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8 & (v8 >> 63);
  }

  result = memcmp(__s1, __s2, v11);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  if (result)
  {
LABEL_13:
    v13 = 1;
    goto LABEL_14;
  }

  if (__s2)
  {
    if (v8 >= v9)
    {
      if (v8 != v9)
      {
        goto LABEL_13;
      }

LABEL_21:
      v13 = 0;
      goto LABEL_14;
    }
  }

  else if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_11:
  v13 = -1;
LABEL_14:
  *a5 = v13;
  return result;
}

uint64_t sub_100254FA8()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D60D0);
  sub_1001C203C(v0, qword_1005D60D0);
  return sub_1004A4A64();
}

uint64_t sub_100255034()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1002550E0(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v24 = sub_1004A6074();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A6064();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_1004A5274();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  *(v3 + 24) = a1;
  sub_10000C9C0(&qword_1005D6228, &qword_1004E9E78);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v27 = v3;
  *(v3 + 32) = v13;
  v22 = sub_100255DBC();
  v23 = a1;

  sub_1004A5254();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1001996CC();
  sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_100199724();
  sub_1004A6544();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  v14 = sub_1004A6094();
  if (qword_1005D5DD8 != -1)
  {
    swift_once();
  }

  v15 = off_1005D60E8;
  v16 = swift_allocObject();
  v18 = v25;
  v17 = v26;
  v16[2] = v13;
  v16[3] = v18;
  v16[4] = v17;
  aBlock[4] = sub_100255E48;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100255828;
  aBlock[3] = &unk_1005AA658;
  v19 = _Block_copy(aBlock);
  v20 = v15(v14, v19);

  _Block_release(v19);

  result = v27;
  *(v27 + 16) = v20;
  return result;
}

uint64_t sub_10025542C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16))
  {
    return 0;
  }

  v4 = a3();
  if (!v5)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = sub_1002554B4(v4, v5, v6, v7);
  sub_100255E6C(v8, v9, v10, v11);
  return v12;
}

uint64_t sub_1002554B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    v9 = 0;
    if (v8 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(a3 + 16);
    v10 = *(a3 + 24);
    v12 = __OFSUB__(v10, v11);
    v9 = v10 - v11;
    if (!v12)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(a4);
    goto LABEL_10;
  }

  LODWORD(v9) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = v9;
LABEL_10:
  v13 = v9 + 200;
  if (__OFADD__(v9, 200))
  {
    __break(1u);
    goto LABEL_48;
  }

  v14 = swift_slowAlloc();
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 0u;
  *(v14 + 176) = 0u;
  *(v14 + 192) = 0;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_43;
    }

    v15 = *(v5 + 16);
    v16 = *(v5 + 24);
    v17 = sub_1004A40D4();
    if (v17)
    {
      v18 = sub_1004A4104();
      if (__OFSUB__(v15, v18))
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      v17 += v15 - v18;
    }

    v12 = __OFSUB__(v16, v15);
    v19 = v16 - v15;
    if (v12)
    {
      goto LABEL_52;
    }

    v20 = sub_1004A40F4();
    if (v13 < 200)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v20 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v22 = (v21 + v17);
    if (!v17)
    {
      v22 = 0;
    }

    v32 = v17;
    v33 = v22;
    sub_1001F70CC();
    sub_1004A4074();
    *v14 = 1;
    v24 = *(v5 + 16);
    v23 = *(v5 + 24);
    v5 = v23 - v24;
    if (!__OFSUB__(v23, v24))
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v31[0] = v5;
    LOWORD(v31[1]) = a4;
    BYTE2(v31[1]) = BYTE2(a4);
    BYTE3(v31[1]) = BYTE3(a4);
    BYTE4(v31[1]) = BYTE4(a4);
    BYTE5(v31[1]) = BYTE5(a4);
    if (v13 >= 200)
    {
      LODWORD(v5) = BYTE6(a4);
      v32 = v31;
      v33 = v31 + BYTE6(a4);
      sub_1001F70CC();
      sub_1004A4074();
LABEL_45:
      *v14 = 1;
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  if (v5 >> 32 < v5)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v25 = sub_1004A40D4();
  if (v25)
  {
    v26 = sub_1004A4104();
    if (__OFSUB__(v5, v26))
    {
      goto LABEL_57;
    }

    v25 += v5 - v26;
  }

  v27 = sub_1004A40F4();
  if (v13 < 200)
  {
    goto LABEL_54;
  }

  if (v27 >= (v5 >> 32) - v5)
  {
    v28 = (v5 >> 32) - v5;
  }

  else
  {
    v28 = v27;
  }

  v29 = (v28 + v25);
  if (!v25)
  {
    v29 = 0;
  }

  v32 = v25;
  v33 = v29;
  sub_1001F70CC();
  sub_1004A4074();
  *v14 = 1;
  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_55;
  }

  v5 = HIDWORD(v5) - v5;
LABEL_41:
  if (HIDWORD(v5))
  {
    __break(1u);
LABEL_43:
    memset(v31, 0, 14);
    if (v13 >= 200)
    {
      v32 = v31;
      v33 = v31;
      sub_1001F70CC();
      sub_1004A4074();
      LODWORD(v5) = 0;
      goto LABEL_45;
    }

    goto LABEL_51;
  }

LABEL_46:
  *(v14 + 4) = v5;
  sub_100255BF4(a1, a2, (v14 + 136), 0x40uLL);
  return v14;
}

uint64_t sub_100255828(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

Swift::Void __swiftcall StateCapture.tearDown()()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[3];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  v8 = v0[4];
  if (*(v8 + 16))
  {
    return;
  }

  *(v8 + 16) = 1;
  if (qword_1005D5DE0 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  off_1005D60F0(v0[2]);
}

uint64_t StateCapture.deinit()
{
  result = *(v0 + 32);
  if (*(result + 16) == 1)
  {
    v2 = *(v0 + 24);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t StateCapture.__deallocating_deinit()
{
  if (*(*(v0 + 32) + 16) == 1)
  {

    v1 = *(v0 + 32);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t StateCapture.__allocating_init(title:queue:capture:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  v11 = swift_allocObject();
  sub_1002550E0(a3, sub_100255CE0, v10);
  return v11;
}

uint64_t sub_100255B08(void (*a1)(__int128 *__return_ptr), uint64_t a2, uint64_t a3, unint64_t a4)
{
  os_transaction_create();
  a1(&v9);
  if (v10)
  {
    sub_1000B364C(&v9, v11);
    sub_100104D00(v11, &v9);

    v7 = sub_100255F40(a3, a4, &v9);
    swift_unknownObjectRelease();
    sub_1000197E0(v11);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_100255ED8(&v9);
    return 0;
  }

  return v7;
}

char *sub_100255BF4(uint64_t a1, uint64_t a2, char *__dst, size_t __n)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1004A66E4();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = a1;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
    return strncpy(__dst, v4, __n);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_1004A66E4();
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v4, __n);
}

uint64_t sub_100255CA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100255D10(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100255DBC()
{
  result = qword_1005D3248;
  if (!qword_1005D3248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D3248);
  }

  return result;
}

uint64_t sub_100255E08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100255E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100255E6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100014D40(a3, a4);
  }
}

uint64_t sub_100255ED8(uint64_t a1)
{
  v2 = sub_10000C9C0(&unk_1005D6230, qword_1004E9E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100255F40(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = sub_1004A4244();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1004A4234();
  sub_1004A4214();
  v9 = a3[4];
  sub_10002587C(a3, a3[3]);
  v10 = sub_1004A4224();
  v11 = v10;
  v13 = v12;
  v14 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v14)
    {
      goto LABEL_14;
    }

    LODWORD(v15) = HIDWORD(v10) - v10;
    if (!__OFSUB__(HIDWORD(v10), v10))
    {
      v15 = v15;
      goto LABEL_7;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_9;
  }

  if (v14 != 2)
  {
    goto LABEL_14;
  }

  v17 = *(v10 + 16);
  v16 = *(v10 + 24);
  v18 = __OFSUB__(v16, v17);
  v15 = v16 - v17;
  if (v18)
  {
    goto LABEL_35;
  }

LABEL_7:
  if (v15 <= 0x8000)
  {
    goto LABEL_14;
  }

  if (qword_1005D5DD0 != -1)
  {
    goto LABEL_36;
  }

LABEL_9:
  v19 = sub_1004A4A74();
  sub_1001C203C(v19, qword_1005D60D0);
  sub_100014CEC(v11, v13);

  v20 = sub_1004A4A54();
  v21 = sub_1004A6014();

  if (!os_log_type_enabled(v20, v21))
  {
LABEL_20:
    sub_100014D40(v11, v13);

LABEL_33:
    sub_1000197E0(a3);
    return a1;
  }

  v22 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  *v22 = 136446466;
  v35 = a1;
  v36[0] = v33;
  result = sub_10015BA6C(a1, a2, v36);
  *(v22 + 4) = result;
  *(v22 + 12) = 2048;
  if (v14 != 2)
  {
    LODWORD(v26) = HIDWORD(v11) - v11;
    if (!__OFSUB__(HIDWORD(v11), v11))
    {
      v26 = v26;
LABEL_31:
      *(v22 + 14) = v26;
      sub_100014D40(v11, v13);
      _os_log_impl(&_mh_execute_header, v20, v21, "Encoded plist state capture data '%{public}s' is %{iec-bytes}ld > 32KiB", v22, 0x16u);
      sub_1000197E0(v33);
      goto LABEL_32;
    }

    goto LABEL_38;
  }

  v25 = *(v11 + 16);
  v24 = *(v11 + 24);
  v18 = __OFSUB__(v24, v25);
  v26 = v24 - v25;
  if (!v18)
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_14:
  if (qword_1005D5DD0 != -1)
  {
    swift_once();
  }

  v27 = sub_1004A4A74();
  sub_1001C203C(v27, qword_1005D60D0);
  sub_100014CEC(v11, v13);

  v20 = sub_1004A4A54();
  v28 = sub_1004A6004();

  if (!os_log_type_enabled(v20, v28))
  {
    goto LABEL_20;
  }

  v29 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v29 = 136446466;
  v35 = a1;
  v36[0] = v34;
  result = sub_10015BA6C(a1, a2, v36);
  *(v29 + 4) = result;
  *(v29 + 12) = 2048;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      v30 = 0;
      goto LABEL_28;
    }

    v32 = *(v11 + 16);
    v31 = *(v11 + 24);
    v18 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (!v18)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v30 = BYTE6(v13);
LABEL_28:
    *(v29 + 14) = v30;
    sub_100014D40(v11, v13);
    _os_log_impl(&_mh_execute_header, v20, v28, "Encoded plist state capture data '%{public}s' is %{iec-bytes}ld", v29, 0x16u);
    sub_1000197E0(v34);
LABEL_32:

    a1 = v35;
    goto LABEL_33;
  }

  LODWORD(v30) = HIDWORD(v11) - v11;
  if (!__OFSUB__(HIDWORD(v11), v11))
  {
    v30 = v30;
    goto LABEL_28;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t BodyStructure.isAttachment.getter()
{
  v1 = *(v0 + 144);
  v36[8] = *(v0 + 128);
  v36[9] = v1;
  v36[10] = *(v0 + 160);
  v37 = *(v0 + 176);
  v2 = *(v0 + 80);
  v36[4] = *(v0 + 64);
  v36[5] = v2;
  v3 = *(v0 + 112);
  v36[6] = *(v0 + 96);
  v36[7] = v3;
  v4 = *(v0 + 16);
  v36[0] = *v0;
  v36[1] = v4;
  v5 = *(v0 + 48);
  v36[2] = *(v0 + 32);
  v36[3] = v5;
  if (sub_10000FE88(v36) == 1)
  {
    v6 = UInt32.init(_:)(v36);
    v7 = 0;
    if (!v6[4])
    {
      return v7 & 1;
    }

    v8 = v6[7];
    if (v8 == 1)
    {
      return v7 & 1;
    }

    v9 = v6 + 6;
    v10 = v6 + 8;
    v11 = v6 + 9;
    v12 = v6 + 10;
    if (!v8)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v13 = UInt32.init(_:)(v36);
    v7 = 0;
    if (v13[12] == 1)
    {
      return v7 & 1;
    }

    v8 = v13[14];
    if (v8 == 1)
    {
      return v7 & 1;
    }

    v9 = v13 + 13;
    v10 = v13 + 15;
    v11 = v13 + 16;
    v12 = v13 + 17;
    if (!v8)
    {
      goto LABEL_37;
    }
  }

  v14 = *v9;
  v15 = *v12;
  v16 = *v11;
  v17 = *v10;

  v18 = BodyStructure.DispositionKind.attachment.unsafeMutableAddressor();
  if ((*v18 != v14 || v8 != v18[1]) && (sub_1004A6D34() & 1) == 0)
  {
    v26 = BodyStructure.DispositionKind.inline.unsafeMutableAddressor();
    if ((*v26 != v14 || v8 != v26[1]) && (sub_1004A6D34() & 1) == 0)
    {

LABEL_36:

      goto LABEL_37;
    }

    v27 = BodyStructure.mediaType.getter();
    v29 = v28;

    v30 = Media.TopLevelType.text.unsafeMutableAddressor();
    if (*v30 == v27 && v30[1] == v29)
    {
    }

    else
    {
      v33 = sub_1004A6D34();

      if ((v33 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_37:
    v7 = 0;
    return v7 & 1;
  }

LABEL_12:
  v19 = BodyStructure.mediaType.getter();
  v21 = v20;

  v22 = Media.TopLevelType.multipart.unsafeMutableAddressor();
  if ((*v22 != v19 || v22[1] != v21) && (sub_1004A6D34() & 1) == 0)
  {
    v31 = Media.TopLevelType.application.unsafeMutableAddressor();
    if (*v31 == v19 && v31[1] == v21)
    {
    }

    else
    {
      v32 = sub_1004A6D34();

      if ((v32 & 1) == 0)
      {

        v7 = 1;
        return v7 & 1;
      }
    }

    BodyStructure.mediaType.getter();

    sub_1004A5814();

    v38._countAndFlagsBits = 0x2D3773636B70;
    v38._object = 0xE600000000000000;
    if (!sub_1004A5A54(v38))
    {
      v39._countAndFlagsBits = 0x2D3773636B702D78;
      v39._object = 0xE800000000000000;
      v34 = sub_1004A5A54(v39);

      v7 = !v34;
      return v7 & 1;
    }

    goto LABEL_36;
  }

  BodyStructure.mediaType.getter();

  v23 = sub_1004A5814();
  v25 = v24;

  if (v23 == 0x756F64656C707061 && v25 == 0xEB00000000656C62)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_1004A6D34();
  }

  return v7 & 1;
}

uint64_t sub_10025690C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a4 || (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  v5 = *a5;
  v6 = *(a5 + 8);
  v7 = *(a5 + 16);
  v8 = *(a5 + 32);
  if (result)
  {
    if (result == 1)
    {
      if (!*(a5 + 40))
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  if (!*(a5 + 40))
  {
LABEL_20:
    v9 = 1;
    return v9 & 1;
  }

  if ((v8 & 0xF0) == 0x50)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v8 <= 0xF)
  {
    v9 = (v7 & 0x80) == 0 && *a5 == 1;
    return v9 & 1;
  }

  if (v8 & 0xF0) != 0x10 || (v7)
  {
    goto LABEL_20;
  }

  if (v5)
  {
    v11 = v6 - v5;
  }

  else
  {
    v11 = 0;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    if ((sub_1002A85D8("pkcs7-", 6, 2, 0, v11, v5, v6) & 1) == 0)
    {
      v9 = sub_1002A85D8("x-pkcs7-", 8, 2, 0, v11, v5, v6) ^ 1;
      return v9 & 1;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t BodyStructure.makeAttachmentFilenames(cache:)(void *a1)
{
  v3 = sub_100257470(_swiftEmptyArrayStorage);
  sub_100256A70(&v3, _swiftEmptyArrayStorage, a1);
  return v3;
}

uint64_t sub_100256A70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(v3 + 144);
  v9 = *(v3 + 112);
  v94 = *(v3 + 128);
  v95 = v8;
  v10 = *(v3 + 144);
  v96 = *(v3 + 160);
  v11 = *(v3 + 80);
  v12 = *(v3 + 48);
  v90 = *(v3 + 64);
  v91 = v11;
  v13 = *(v3 + 80);
  v14 = *(v3 + 112);
  v92 = *(v3 + 96);
  v93 = v14;
  v15 = *(v3 + 16);
  v86 = *v3;
  v87 = v15;
  v16 = *(v3 + 48);
  v18 = *v3;
  v17 = *(v3 + 16);
  v88 = *(v3 + 32);
  v89 = v16;
  v68[8] = v94;
  v68[9] = v10;
  v68[10] = *(v3 + 160);
  v68[4] = v90;
  v68[5] = v13;
  v68[6] = v92;
  v68[7] = v9;
  v68[0] = v18;
  v68[1] = v17;
  v97 = *(v3 + 176);
  v69 = *(v3 + 176);
  v68[2] = v88;
  v68[3] = v12;
  if (sub_10000FE88(v68) == 1)
  {
    UInt32.init(_:)(v68);
    *&v66[48] = v94;
    *&v66[64] = v95;
    *&v66[80] = v96;
    v67 = v97;
    v65 = v90;
    *v66 = v91;
    *&v66[16] = v92;
    *&v66[32] = v93;
    v61 = v86;
    v62 = v87;
    v63 = v88;
    v64 = v89;
    v19 = UInt32.init(_:)(&v61);
    v20 = *v19;
    v21 = *(*v19 + 16);
    sub_1000510B4(v4, &__dst);

    if (v21)
    {
      v22 = (v20 + 32);
      v23 = 1;
      do
      {
        v24 = *v22;
        v25 = v22[1];
        v26 = v22[3];
        v59[2] = v22[2];
        v59[3] = v26;
        v59[0] = v24;
        v59[1] = v25;
        v27 = v22[4];
        v28 = v22[5];
        v29 = v22[7];
        v59[6] = v22[6];
        v59[7] = v29;
        v59[4] = v27;
        v59[5] = v28;
        v30 = v22[8];
        v31 = v22[9];
        v32 = v22[10];
        v60 = *(v22 + 176);
        v59[9] = v31;
        v59[10] = v32;
        v59[8] = v30;
        memmove(&__dst, v22, 0xB1uLL);
        sub_1000510B4(v59, &v54);
        v33.array._rawValue = SectionSpecifier.Part.appending(_:)(v23).array._rawValue;
        sub_100256A70(a1, v33.array._rawValue, a3);

        sub_100051110(&__dst);
        ++v23;
        v22 = (v22 + 184);
      }

      while (v23 - v21 != 1);
    }

    sub_100051110(v4);
  }

  else
  {
    v35 = UInt32.init(_:)(v68);
    if (*(v35 + 96) != 1)
    {
      v36 = *(v35 + 112);
      if (v36 != 1)
      {
        v37 = *(v35 + 104);
        v82[0] = v37;
        v82[1] = v36;
        v83 = *(v35 + 120);
        v84 = *(v35 + 136);
        if (v36)
        {
          v38 = v84;
          v39 = *(&v83 + 1);
          v40 = v83;
          v85[0] = v37;
          v85[1] = v36;
          sub_1000510B4(v4, &__dst);
          sub_1002579A8(v82, &__dst);
          sub_100257A18(v85);
          __dst = 0uLL;

          sub_1002A12F0(v40, v39, v38, &__dst, a3, v41);

          sub_100051110(v4);
          v42 = *(&__dst + 1);
          if (*(&__dst + 1))
          {
            v43 = __dst;

            sub_100256E60(v43, v42, a2);
          }
        }
      }
    }

    v78 = v94;
    v79 = v95;
    v80 = v96;
    v81 = v97;
    v74 = v90;
    v75 = v91;
    v76 = v92;
    v77 = v93;
    __dst = v86;
    v71 = v87;
    v72 = v88;
    v73 = v89;
    v44 = UInt32.init(_:)(&__dst);
    v45 = *(v44 + 80);
    v47 = *(v44 + 48);
    v46 = *(v44 + 64);
    v49 = *(v44 + 16);
    v48 = *(v44 + 32);
    v50 = *v44;
    v51 = *(v44 + 136);
    v55 = *(v44 + 120);
    v56 = v51;
    v57 = *(v44 + 152);
    v58 = *(v44 + 168);
    v52 = *(v44 + 104);
    v54 = *(v44 + 88);
    v61 = v50;
    v62 = v49;
    v63 = v48;
    v64 = v47;
    v65 = v46;
    *&v66[40] = v55;
    *&v66[56] = v56;
    *&v66[72] = v57;
    *v66 = v45;
    *&v66[88] = v58;
    *&v66[8] = v54;
    *&v66[24] = v52;
    v81 = v97;
    v79 = v95;
    v80 = v96;
    v77 = v93;
    v78 = v94;
    v75 = v91;
    v76 = v92;
    v73 = v89;
    v74 = v90;
    v71 = v87;
    v72 = v88;
    __dst = v86;
    v53 = UInt32.init(_:)(&__dst);
    sub_1002578F8(v53, v59);
    return sub_100257954(&v61);
  }
}

uint64_t sub_100256E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1002986C0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10029B748(a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_100298994();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 8 * v12);

      v18 = *(*(v16 + 56) + 16 * v12 + 8);

      result = sub_1002572C8(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void *Message.makeAttachmentFilenames(cache:)(void *a1)
{

  v3 = sub_100294A24(v1, a1);

  if (v3[2])
  {
    sub_10000C9C0(&qword_1005D6270, &qword_1004E9EA0);
    v4 = sub_1004A6A74();
  }

  else
  {
    v4 = _swiftEmptyDictionarySingleton;
  }

  v6 = v4;
  sub_100257668(v3, 1, &v6);

  return v6;
}

uint64_t sub_100257014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  result = sub_1002A477C(a5, a1, a2, a3, a4);
  v10 = *(result + 16);
  if (!v10)
  {
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v11 = 0;
  v12 = result + 40;
  v13 = -v10;
  v14 = _swiftEmptyArrayStorage;
  do
  {
    v15 = *(result + 16);
    if (v11 > v15)
    {
      v15 = v11;
    }

    v16 = -v15;
    v17 = v12 + 48 * v11++;
    while (1)
    {
      if (v16 + v11 == 1)
      {
        __break(1u);
        return result;
      }

      v19 = *v17;
      v20 = *(v17 + 8);
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);
      v23 = *(v17 + 32);
      if (v23 > 1)
      {
        break;
      }

      if (*(v17 + 32))
      {
        v18 = 1;
      }

      else
      {
        v18 = v20 == 0;
      }

      if (!v18)
      {
        v31 = v12;
        v32 = v7;
        v33 = result;
        v29 = *(v17 + 8);
        v30 = *v17;
        goto LABEL_17;
      }

LABEL_11:
      ++v11;
      v17 += 48;
      if (v13 + v11 == 1)
      {
        goto LABEL_24;
      }
    }

    if (v23 != 2 || !v22)
    {
      goto LABEL_11;
    }

    v31 = v12;
    v32 = v7;
    v33 = result;
    v29 = *(v17 + 24);
    v30 = *(v17 + 16);
LABEL_17:
    v24 = *(v17 - 8);

    sub_1002578D8(v19, v20, v21, v22, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_100273BA8(0, v14[2] + 1, 1, v14);
    }

    v26 = v14[2];
    v25 = v14[3];
    result = v33;
    v12 = v31;
    if (v26 >= v25 >> 1)
    {
      v28 = sub_100273BA8((v25 > 1), v26 + 1, 1, v14);
      v12 = v31;
      v14 = v28;
      result = v33;
    }

    v14[2] = v26 + 1;
    v27 = &v14[3 * v26];
    v27[4] = v24;
    v27[5] = v30;
    v27[6] = v29;
    v7 = v32;
  }

  while (v13 + v11);
LABEL_24:

  *a6 = v14;
  return result;
}

double variable initialization expression of UnsafeExtractedAttachment.mediaType@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t variable initialization expression of IndexableMessageInfo.date@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004A44E4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double variable initialization expression of IndexableMessageInfo.from@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1002572C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1004A6E94();

      SectionSpecifier.Part.hash(into:)(v22, v10);
      v11 = sub_1004A6F14();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100257470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D6270, &qword_1004E9EA0);
    v3 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10029B748(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100257570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D6278, &unk_1004E9EB0);
    v3 = sub_1004A6A74();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      sub_1000131FC(v5);
      result = sub_10029B748(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100257668(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_10029B748(v8);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_100298180(v15, v5 & 1);
    v17 = *a3;
    result = sub_10029B748(v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1004A6E24();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = v8;
    v24 = (v19[7] + 16 * result);
    *v24 = v7;
    v24[1] = v9;
    v25 = v19[2];
    v14 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v26;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v23 = result;
  sub_100298994();
  result = v23;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = result;

  v21 = (v19[7] + 16 * v20);
  v22 = v21[1];
  *v21 = v7;
  v21[1] = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v9 = *(v5 - 2);
      v7 = *(v5 - 1);
      v6 = *v5;
      v30 = *a3;

      result = sub_10029B748(v9);
      v32 = v30[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v31;
      if (v30[3] < v34)
      {
        sub_100298180(v34, 1);
        v35 = *a3;
        result = sub_10029B748(v9);
        if ((v8 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      v37 = *a3;
      if (v8)
      {
        v27 = result;

        v28 = (v37[7] + 16 * v27);
        v29 = v28[1];
        *v28 = v7;
        v28[1] = v6;
      }

      else
      {
        v37[(result >> 6) + 8] |= 1 << result;
        *(v37[6] + 8 * result) = v9;
        v38 = (v37[7] + 16 * result);
        *v38 = v7;
        v38[1] = v6;
        v39 = v37[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v37[2] = v40;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1002578D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  return result;
}

uint64_t sub_1002579A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6280, &qword_100501A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100257A94(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - 1;
  if (a2 >= 1)
  {
    v7 = 0;
    v8 = a5 - 3;
    for (i = (result + 1); ; ++i)
    {
      if (*(v5 + 1))
      {
        goto LABEL_46;
      }

      v10 = *(result + v7);
      if (v10 < 0 || (v11 = *(&off_1005AA6D8 + *(result + v7) + 32), v11 < 0))
      {
        if (a3)
        {
          goto LABEL_4;
        }

        v26 = 1;
LABEL_56:
        *v5 = v26;
        return result;
      }

      if (qword_1005D6240 != -1)
      {
        v34 = a2;
        v35 = result;
        v33 = a3;
        v31 = a5;
        v32 = a4;
        swift_once();
        a5 = v31;
        a4 = v32;
        a2 = v34;
        result = v35;
        a3 = v33;
      }

      v12 = byte_1005D6300;
      v13 = *(v5 + 24);
      if (v10 == byte_1005D6300)
      {
        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_61;
        }

        *(v5 + 24) = v13;
      }

      else if (v13 >= 1 && (a3 & 1) == 0)
      {
LABEL_44:
        v26 = 2;
        goto LABEL_56;
      }

      v15 = v11 + (*(v5 + 32) << 6);
      if (__CFADD__(v11, *(v5 + 32) << 6))
      {
        goto LABEL_59;
      }

      *(v5 + 32) = v15;
      v16 = *(v5 + 16);
      v14 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v14)
      {
        goto LABEL_60;
      }

      *(v5 + 16) = v17;
      if (v17 != 4)
      {
        goto LABEL_4;
      }

      if (a5 < 3 || (v18 = *(v5 + 8), v8 < v18))
      {
        v26 = 3;
        goto LABEL_56;
      }

      if (v13 == 3)
      {
        goto LABEL_44;
      }

      v19 = v7 + 1 >= a2;
      if (v7 + 1 >= a2 || v13 < 1)
      {
        goto LABEL_32;
      }

      v20 = i;
      v21 = v6;
      do
      {
        if (!v21)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v22 = *v20;
        if (v22 != v12 && ((a3 & 1) == 0 || (v22 & 0x80) == 0 && (*(&off_1005AA6D8 + v22 + 32) & 0x80000000) == 0))
        {
          v23 = (a4 + v18);
          *v23 = BYTE2(v15);
          v23[1] = BYTE1(v15);
          v24 = v18 + 2;
          goto LABEL_38;
        }

        ++v20;
        --v21;
      }

      while (v21);
      v19 = 1;
LABEL_32:
      *(a4 + v18) = BYTE2(v15);
      *(v5 + 8) = v18 + 1;
      if (!v19 || v13 <= 1)
      {
        *(a4 + v18 + 1) = BYTE1(v15);
        v24 = v18 + 2;
        *(v5 + 8) = v18 + 2;
        if (v13 <= 0 || !v19)
        {
LABEL_38:
          *(a4 + v24) = v15;
          *(v5 + 8) = v24 + 1;
        }
      }

      *(v5 + 16) = 0;
      if (v13 >= 1 && (a3 & 1) == 0)
      {
        break;
      }

      *(v5 + 24) = 0;
LABEL_4:
      ++v7;
      --v6;
      if (v7 == a2)
      {
        return result;
      }
    }

    *(v5 + 1) = 1;
LABEL_46:
    if (!*v5)
    {
      if (qword_1005D6240 == -1)
      {
LABEL_51:
        while (1)
        {
          v27 = *(result + v7);
          if (((a3 & 1) == 0 || (v27 & 0x80) == 0 && (*(&off_1005AA6D8 + v27 + 32) & 0x80000000) == 0) && v27 != byte_1005D6300)
          {
            break;
          }

          if (++v7 >= a2)
          {
            return result;
          }
        }

        v26 = 4;
        goto LABEL_56;
      }

LABEL_62:
      v28 = result;
      v29 = a2;
      v30 = a3;
      swift_once();
      result = v28;
      a2 = v29;
      LOBYTE(a3) = v30;
      goto LABEL_51;
    }
  }

  return result;
}

unint64_t sub_100257D8C()
{
  if (sub_1004A6D34())
  {
    result = 10;
    goto LABEL_7;
  }

  result = sub_1004A55A4();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1001E11BC(0x3DuLL, 0xE100000000000000);
  if ((result & 0x100000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
    goto LABEL_10;
  }

  result = sub_1001E11BC(0x3DuLL, 0xE100000000000000);
  if ((result & 0x100000000) == 0)
  {
    if ((result & 0xFFFFFF00) == 0)
    {
LABEL_7:
      byte_1005D6300 = result;
      return result;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100257E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (a1)
  {
    v9 = a2 - a1;
    if (a3)
    {
      v10 = a4 - a3;
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      v25 = 0;
      v6 = &v21;
      sub_100257A94(a1, v9, a5 & 1, a3, a4 - a3);
      if (v21)
      {
        if (v21 == 3 && v23 == 4)
        {
          goto LABEL_17;
        }
      }

      else if (!v23)
      {
LABEL_17:
        v11 = v22;
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (v9 >= 1)
    {
      v6 = (a1 + 3);
      v10 = 4;
      while (1)
      {
        if ((*(v6 - 3) & 0x80000000) == 0)
        {
          v5 = *(&off_1005AA6D8 + *(v6 - 3) + 32);
          if ((v5 & 0x80000000) == 0)
          {
            v5 = *(v6 - 3);
            if (qword_1005D6240 != -1)
            {
              goto LABEL_58;
            }

            goto LABEL_22;
          }
        }

        if ((a5 & 1) == 0)
        {
          break;
        }

        ++v10;
        ++v6;
        if (a1 - a2 + v10 == 4)
        {
          goto LABEL_14;
        }
      }

LABEL_16:
      sub_100258104();
      v7 = swift_allocError();
      swift_willThrow();
      return v7;
    }

LABEL_14:
    v10 = 0;
    v11 = 0;
LABEL_18:
    while (v11 < 0 || v10 < v11)
    {
      __break(1u);
LABEL_58:
      v20 = v9;
      v18 = a5;
      v19 = v5;
      swift_once();
      v5 = v19;
      v9 = v20;
      a5 = v18;
LABEL_22:
      v13 = v5 == byte_1005D6300;
      if (v10 - 3 < v9)
      {
        while (*(v6 - 2) < 0 || *(&off_1005AA6D8 + *(v6 - 2) + 32) < 0)
        {
          if (a5)
          {
            v14 = v10 - 2;
            ++v10;
            ++v6;
            if (v14 < v9)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        if (*(v6 - 2) == byte_1005D6300)
        {
          v13 = 1;
          if (v5 == byte_1005D6300)
          {
            v13 = 2;
          }
        }

        else if (v5 == byte_1005D6300 && (a5 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (v10 - 2 >= v9)
        {
          goto LABEL_16;
        }

        while (*(v6 - 1) < 0 || *(&off_1005AA6D8 + *(v6 - 1) + 32) < 0)
        {
          if (a5)
          {
            v15 = v10++ - 1;
            ++v6;
            if (v15 < v9)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        if (*(v6 - 1) == byte_1005D6300)
        {
          ++v13;
        }

        else if (v13 && (a5 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (v10 - 1 < v9)
        {
          while (1)
          {
            v16 = *v6++;
            v5 = v16;
            if ((v16 & 0x80000000) == 0 && (*(&off_1005AA6D8 + v5 + 32) & 0x80000000) == 0)
            {
              break;
            }

            if (a5)
            {
              v17 = v10++ < v9;
              if (v17)
              {
                continue;
              }
            }

            goto LABEL_16;
          }

          v10 = 0;
          v11 = 0;
          v17 = v5 == byte_1005D6300 || v13 < 1;
          if (v17 || (a5 & 1) != 0)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  return v7;
}

unint64_t sub_100258104()
{
  result = qword_1005D6308;
  if (!qword_1005D6308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D6308);
  }

  return result;
}

uint64_t sub_100258168(void *a1)
{
  v2 = *a1 >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      memcpy(__dst, ((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      sub_100259990(__dst, &v15);
      sub_1002595C0(__dst);
      sub_1002599EC(__dst);
      goto LABEL_7;
    }

    v6 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v7 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    __dst[0] = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    __dst[1] = v6;
    swift_bridgeObjectRetain_n();
    sub_1002598C8(__dst);

    __dst[0] = v7;
    sub_1004A5494();
  }

  else
  {
    v3 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v4 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    __dst[0] = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    __dst[1] = v3;
    swift_bridgeObjectRetain_n();

    sub_1002598C8(__dst);

    __dst[0] = v5;
    __dst[1] = v4;

    sub_1002598C8(__dst);
  }

LABEL_7:
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  if (v8)
  {
    v15 = a1[4];
    v16 = v8;

    sub_1002598C8(&v15);
  }

  if (v10)
  {
    v15 = v9;
    v16 = v10;

    sub_1002598C8(&v15);
  }

  if (v12)
  {
    v15 = v11;
    v16 = v12;

    sub_1002598C8(&v15);
  }

  v15 = v13;
  return sub_1004A5494();
}

uint64_t sub_10025835C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = (*v1 + 32);
    v146 = 0;
    v143 = v1;
    for (i = v2 - 1; ; --i)
    {
      v5 = *v3;
      v6 = v3[1];
      v7 = v3[2];
      v168 = v3[3];
      v167 = v7;
      v166 = v6;
      v165 = v5;
      v8 = v3[4];
      v9 = v3[5];
      v10 = v3[6];
      v172 = v3[7];
      v171 = v10;
      v170 = v9;
      v169 = v8;
      v11 = v3[8];
      v12 = v3[9];
      v13 = v3[10];
      v176 = *(v3 + 176);
      v175 = v13;
      v174 = v12;
      v173 = v11;
      memmove(__dst, v3, 0xB1uLL);
      if (sub_10000FE88(__dst) == 1)
      {
        v14 = UInt32.init(_:)(__dst);
        v15 = *(v14 + 80);
        v189[4] = *(v14 + 64);
        v189[5] = v15;
        v189[6] = *(v14 + 96);
        v16 = *(v14 + 16);
        v189[0] = *v14;
        v189[1] = v16;
        v17 = *(v14 + 48);
        v189[2] = *(v14 + 32);
        v190 = *(v14 + 112);
        v189[3] = v17;
        v164[8] = v173;
        v164[9] = v174;
        v164[10] = v175;
        LOBYTE(v164[11]) = v176;
        v164[4] = v169;
        v164[5] = v170;
        v164[6] = v171;
        v164[7] = v172;
        v164[0] = v165;
        v164[1] = v166;
        v164[2] = v167;
        v164[3] = v168;
        v18 = UInt32.init(_:)(v164);
        sub_100259A40(v18, v163);
        sub_10025835C(v189);
        sub_100051110(&v165);
        if (!i)
        {
          goto LABEL_131;
        }

        goto LABEL_124;
      }

      v19 = UInt32.init(_:)(__dst);
      v20 = *v19;
      v21 = *v19 >> 62;
      v148 = i;
      if (!v21)
      {
        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        v28 = *(v20 + 32);
        v27 = *(v20 + 40);
        swift_bridgeObjectRetain_n();
        if ((v25 & 0x1000000000000000) != 0)
        {
          sub_1000510B4(&v165, v164);

          v26 = sub_10010CD9C();
          v29 = v92;

          if ((v29 & 0x2000000000000000) != 0)
          {
            goto LABEL_52;
          }

LABEL_15:
          if ((v26 & 0x1000000000000000) == 0)
          {
            sub_1004A67E4();
          }

          sub_1004A5494();
        }

        else
        {
          sub_1000510B4(&v165, v164);

          v29 = v25;
          if ((v25 & 0x2000000000000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_52:
          *&v164[0] = v26;
          *(&v164[0] + 1) = v29 & 0xFFFFFFFFFFFFFFLL;
          sub_1004A5494();
        }

        if ((v27 & 0x1000000000000000) != 0)
        {
          v28 = sub_10010CD9C();
          v93 = v94;

          if ((v93 & 0x2000000000000000) == 0)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v93 = v27;
          if ((v27 & 0x2000000000000000) == 0)
          {
LABEL_55:
            if ((v28 & 0x1000000000000000) == 0)
            {
              sub_1004A67E4();
            }

            goto LABEL_59;
          }
        }

        *&v164[0] = v28;
        *(&v164[0] + 1) = v93 & 0xFFFFFFFFFFFFFFLL;
LABEL_59:
        sub_1004A5494();

        goto LABEL_63;
      }

      v22 = (v20 & 0x3FFFFFFFFFFFFFFFLL);
      if (v21 != 1)
      {
        v31 = v22[2];
        v30 = v22[3];
        v32 = v22[4];
        if ((v30 & 0x1000000000000000) != 0)
        {
          sub_1000510B4(&v165, v164);

          v31 = sub_10010CD9C();
          v34 = v95;
          if ((v95 & 0x2000000000000000) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v33 = v22[3];

          sub_1000510B4(&v165, v164);

          v34 = v30;
          if ((v30 & 0x2000000000000000) == 0)
          {
LABEL_20:
            if ((v31 & 0x1000000000000000) == 0)
            {
              sub_1004A67E4();
            }

LABEL_62:
            sub_1004A5494();

            *&v164[0] = v32;
            sub_1004A5494();
LABEL_63:

            goto LABEL_99;
          }
        }

        *&v164[0] = v31;
        *(&v164[0] + 1) = v34 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_62;
      }

      memcpy(v164, v22 + 2, 0x148uLL);
      v23 = *(&v164[0] + 1);
      v24 = *&v164[0];
      if ((*(&v164[0] + 1) & 0x1000000000000000) != 0)
      {
        sub_1000510B4(&v165, v163);
        sub_100259990(v164, v163);

        v24 = sub_10010CD9C();
        v91 = v90;

        v23 = v91;
      }

      else
      {
        sub_1000510B4(&v165, v163);
        sub_100259990(v164, v163);
      }

      if ((v23 & 0x2000000000000000) != 0)
      {
        *v163 = v24;
        *&v163[8] = v23 & 0xFFFFFFFFFFFFFFLL;
      }

      else if ((v24 & 0x1000000000000000) == 0)
      {
        sub_1004A67E4();
      }

      sub_1004A5494();

      v161[8] = *(&v164[16] + 8);
      v161[9] = *(&v164[17] + 8);
      v161[10] = *(&v164[18] + 8);
      v161[4] = *(&v164[12] + 8);
      v161[5] = *(&v164[13] + 8);
      v161[6] = *(&v164[14] + 8);
      v161[7] = *(&v164[15] + 8);
      v161[0] = *(&v164[8] + 8);
      v161[1] = *(&v164[9] + 8);
      v161[2] = *(&v164[10] + 8);
      v162 = BYTE8(v164[19]);
      v161[3] = *(&v164[11] + 8);
      if (sub_10000FE88(v161) != 1)
      {
        break;
      }

      v35 = UInt32.init(_:)(v161);
      v36 = *(v35 + 80);
      v187[4] = *(v35 + 64);
      v187[5] = v36;
      v187[6] = *(v35 + 96);
      v37 = *(v35 + 16);
      v187[0] = *v35;
      v187[1] = v37;
      v38 = *(v35 + 48);
      v187[2] = *(v35 + 32);
      v188 = *(v35 + 112);
      v187[3] = v38;
      sub_10025835C(v187);
LABEL_98:
      *v163 = *&v164[20];
      sub_1004A5494();
      sub_1002599EC(v164);
LABEL_99:
      v126 = v19[5];
      v125 = v19[6];
      v128 = v19[7];
      v127 = v19[8];
      v130 = v19[9];
      v129 = v19[10];
      if (!v126)
      {
        goto LABEL_107;
      }

      v131 = v19[4];

      if ((v126 & 0x1000000000000000) != 0)
      {
        v131 = sub_10010CD9C();
        v145 = v132;

        v126 = v145;
        if ((v145 & 0x2000000000000000) == 0)
        {
LABEL_102:
          if ((v131 & 0x1000000000000000) == 0)
          {
            sub_1004A67E4();
          }

          goto LABEL_106;
        }
      }

      else if ((v126 & 0x2000000000000000) == 0)
      {
        goto LABEL_102;
      }

      *&v164[0] = v131;
      *(&v164[0] + 1) = v126 & 0xFFFFFFFFFFFFFFLL;
LABEL_106:
      sub_1004A5494();

LABEL_107:
      if (!v128)
      {
        goto LABEL_115;
      }

      if ((v128 & 0x1000000000000000) != 0)
      {
        v125 = sub_10010CD9C();
        v134 = v133;

        v128 = v134;
        if ((v134 & 0x2000000000000000) == 0)
        {
LABEL_110:
          if ((v125 & 0x1000000000000000) == 0)
          {
            sub_1004A67E4();
          }

          goto LABEL_114;
        }
      }

      else if ((v128 & 0x2000000000000000) == 0)
      {
        goto LABEL_110;
      }

      *&v164[0] = v125;
      *(&v164[0] + 1) = v128 & 0xFFFFFFFFFFFFFFLL;
LABEL_114:
      sub_1004A5494();

LABEL_115:
      if (!v130)
      {
        goto LABEL_123;
      }

      if ((v130 & 0x1000000000000000) != 0)
      {
        v127 = sub_10010CD9C();
        v136 = v135;

        v130 = v136;
        if ((v136 & 0x2000000000000000) == 0)
        {
LABEL_118:
          if ((v127 & 0x1000000000000000) == 0)
          {
            sub_1004A67E4();
          }

          goto LABEL_122;
        }
      }

      else if ((v130 & 0x2000000000000000) == 0)
      {
        goto LABEL_118;
      }

      *&v164[0] = v127;
      *(&v164[0] + 1) = v130 & 0xFFFFFFFFFFFFFFLL;
LABEL_122:
      sub_1004A5494();

LABEL_123:
      *&v164[0] = v129;
      sub_1004A5494();
      sub_100051110(&v165);
      i = v148;
      if (!v148)
      {
LABEL_131:
        v1 = v143;
        goto LABEL_132;
      }

LABEL_124:
      v3 = (v3 + 184);
    }

    v144 = UInt32.init(_:)(v161);
    v39 = *v144;
    v40 = *v144 >> 62;
    if (v40)
    {
      v41 = (v39 & 0x3FFFFFFFFFFFFFFFLL);
      if (v40 == 1)
      {
        memcpy(v163, v41 + 2, sizeof(v163));
        *v155 = *v163;

        sub_100259990(v163, v158);
        v42 = v146;
        sub_1002598C8(v155);

        v159[8] = *&v163[264];
        v159[9] = *&v163[280];
        v159[10] = *&v163[296];
        v159[4] = *&v163[200];
        v159[5] = *&v163[216];
        v159[6] = *&v163[232];
        v159[7] = *&v163[248];
        v159[0] = *&v163[136];
        v159[1] = *&v163[152];
        v159[2] = *&v163[168];
        v160 = v163[312];
        v159[3] = *&v163[184];
        if (sub_10000FE88(v159) == 1)
        {
          v43 = UInt32.init(_:)(v159);
          v44 = *(v43 + 80);
          v185[4] = *(v43 + 64);
          v185[5] = v44;
          v185[6] = *(v43 + 96);
          v45 = *(v43 + 16);
          v185[0] = *v43;
          v185[1] = v45;
          v46 = *(v43 + 48);
          v185[2] = *(v43 + 32);
          v186 = *(v43 + 112);
          v185[3] = v46;
          sub_10025835C(v185);
LABEL_89:
          v158[0] = *&v163[320];
          sub_1004A5494();
          sub_1002599EC(v163);
          goto LABEL_90;
        }

        v52 = UInt32.init(_:)(v159);
        v53 = *v52;
        v54 = *v52 >> 62;
        v147 = v52;
        if (v54)
        {
          v55 = (v53 & 0x3FFFFFFFFFFFFFFFLL);
          if (v54 == 1)
          {
            memcpy(v158, v55 + 2, sizeof(v158));
            v152[0] = v158[0];
            v152[1] = v158[1];

            sub_100259990(v158, v155);
            sub_1002598C8(v152);

            v156[8] = *&v158[33];
            v156[9] = *&v158[35];
            v156[10] = *&v158[37];
            v156[4] = *&v158[25];
            v156[5] = *&v158[27];
            v156[6] = *&v158[29];
            v156[7] = *&v158[31];
            v156[0] = *&v158[17];
            v156[1] = *&v158[19];
            v156[2] = *&v158[21];
            v157 = v158[39];
            v156[3] = *&v158[23];
            if (sub_10000FE88(v156) == 1)
            {
              v56 = UInt32.init(_:)(v156);
              v57 = *(v56 + 80);
              v183[4] = *(v56 + 64);
              v183[5] = v57;
              v183[6] = *(v56 + 96);
              v58 = *(v56 + 16);
              v183[0] = *v56;
              v183[1] = v58;
              v59 = *(v56 + 48);
              v183[2] = *(v56 + 32);
              v184 = *(v56 + 112);
              v183[3] = v59;
              sub_10025835C(v183);
LABEL_81:
              *v155 = v158[40];
              sub_1004A5494();
              sub_1002599EC(v158);
              goto LABEL_82;
            }

            v65 = UInt32.init(_:)(v156);
            v66 = *v65;
            v67 = *v65 >> 62;
            v142 = v65;
            if (v67)
            {
              v68 = (v66 & 0x3FFFFFFFFFFFFFFFLL);
              if (v67 == 1)
              {
                memcpy(v155, v68 + 2, sizeof(v155));
                v150[0] = *v155;

                sub_100259990(v155, v152);
                sub_1002598C8(v150);

                v153[8] = *&v155[264];
                v153[9] = *&v155[280];
                v153[10] = *&v155[296];
                v154 = v155[312];
                v153[4] = *&v155[200];
                v153[5] = *&v155[216];
                v153[6] = *&v155[232];
                v153[7] = *&v155[248];
                v153[0] = *&v155[136];
                v153[1] = *&v155[152];
                v153[2] = *&v155[168];
                v153[3] = *&v155[184];
                if (sub_10000FE88(v153) == 1)
                {
                  v69 = UInt32.init(_:)(v153);
                  v70 = *(v69 + 80);
                  v181[4] = *(v69 + 64);
                  v181[5] = v70;
                  v181[6] = *(v69 + 96);
                  v71 = *(v69 + 16);
                  v181[0] = *v69;
                  v181[1] = v71;
                  v72 = *(v69 + 48);
                  v181[2] = *(v69 + 32);
                  v182 = *(v69 + 112);
                  v181[3] = v72;
                  sub_10025835C(v181);
                }

                else
                {
                  v140 = UInt32.init(_:)(v153);
                  v78 = *v140;
                  v79 = *v140 >> 62;
                  if (v79)
                  {
                    v80 = (v78 & 0x3FFFFFFFFFFFFFFFLL);
                    if (v79 == 1)
                    {
                      memcpy(v152, v80 + 2, sizeof(v152));
                      v149[0] = v152[0];
                      v149[1] = v152[1];

                      sub_100259990(v152, v150);
                      sub_1002598C8(v149);

                      v150[9] = *&v152[35];
                      v150[10] = *&v152[37];
                      v150[4] = *&v152[25];
                      v150[5] = *&v152[27];
                      v150[6] = *&v152[29];
                      v151 = v152[39];
                      v150[7] = *&v152[31];
                      v150[8] = *&v152[33];
                      v150[0] = *&v152[17];
                      v150[1] = *&v152[19];
                      v150[2] = *&v152[21];
                      v150[3] = *&v152[23];
                      if (sub_10000FE88(v150) == 1)
                      {
                        v81 = UInt32.init(_:)(v150);
                        v82 = *(v81 + 80);
                        v179[4] = *(v81 + 64);
                        v179[5] = v82;
                        v179[6] = *(v81 + 96);
                        v83 = *(v81 + 16);
                        v179[0] = *v81;
                        v179[1] = v83;
                        v84 = *(v81 + 48);
                        v179[2] = *(v81 + 32);
                        v180 = *(v81 + 112);
                        v179[3] = v84;
                        sub_10025835C(v179);
                      }

                      else
                      {
                        v96 = UInt32.init(_:)(v150);
                        v97 = v96[6];
                        v178[7] = v96[7];
                        v98 = v96[9];
                        v178[8] = v96[8];
                        v178[9] = v98;
                        v178[10] = v96[10];
                        v99 = v96[2];
                        v178[3] = v96[3];
                        v100 = v96[5];
                        v178[4] = v96[4];
                        v178[5] = v100;
                        v178[6] = v97;
                        v101 = v96[1];
                        v178[0] = *v96;
                        v178[1] = v101;
                        v178[2] = v99;
                        sub_100258168(v178);
                      }

                      v149[0] = v152[40];
                      sub_1004A5494();
                      sub_1002599EC(v152);
                    }

                    else
                    {
                      v88 = v80[3];
                      v89 = v80[4];
                      v152[0] = v80[2];
                      v152[1] = v88;
                      swift_bridgeObjectRetain_n();
                      sub_1002598C8(v152);

                      v152[0] = v89;
                      sub_1004A5494();
                    }
                  }

                  else
                  {
                    v85 = *(v78 + 24);
                    v86 = *(v78 + 32);
                    v87 = *(v78 + 40);
                    v152[0] = *(v78 + 16);
                    v152[1] = v85;
                    swift_bridgeObjectRetain_n();

                    sub_1002598C8(v152);

                    v152[0] = v86;
                    v152[1] = v87;

                    sub_1002598C8(v152);
                  }

                  v102 = v140[5];
                  v103 = v140[6];
                  v105 = v140[7];
                  v104 = v140[8];
                  v107 = v140[9];
                  v106 = v140[10];
                  if (v102)
                  {
                    v152[0] = v140[4];
                    v152[1] = v102;

                    sub_1002598C8(v152);
                  }

                  if (v105)
                  {
                    v152[0] = v103;
                    v152[1] = v105;

                    sub_1002598C8(v152);
                  }

                  if (v107)
                  {
                    v152[0] = v104;
                    v152[1] = v107;

                    sub_1002598C8(v152);
                  }

                  v152[0] = v106;
                  sub_1004A5494();
                }

                v152[0] = *&v155[320];
                sub_1004A5494();
                sub_1002599EC(v155);
                goto LABEL_74;
              }

              v76 = v68[3];
              v77 = v68[4];
              *v155 = v68[2];
              *&v155[8] = v76;
              swift_bridgeObjectRetain_n();
              sub_1002598C8(v155);

              *v155 = v77;
              sub_1004A5494();
            }

            else
            {
              v73 = *(v66 + 24);
              v74 = *(v66 + 32);
              v75 = *(v66 + 40);
              *v155 = *(v66 + 16);
              *&v155[8] = v73;
              swift_bridgeObjectRetain_n();

              sub_1002598C8(v155);

              *v155 = v74;
              *&v155[8] = v75;

              sub_1002598C8(v155);
            }

LABEL_74:
            v108 = v142[5];
            v109 = v142[6];
            v110 = v142[7];
            v141 = v142[8];
            v112 = v142[9];
            v111 = v142[10];
            if (v108)
            {
              *v155 = v142[4];
              *&v155[8] = v108;

              sub_1002598C8(v155);
            }

            if (v110)
            {
              *v155 = v109;
              *&v155[8] = v110;

              sub_1002598C8(v155);
            }

            if (v112)
            {
              *v155 = v141;
              *&v155[8] = v112;

              sub_1002598C8(v155);
            }

            *v155 = v111;
            sub_1004A5494();
            goto LABEL_81;
          }

          v63 = v55[3];
          v64 = v55[4];
          v158[0] = v55[2];
          v158[1] = v63;
          swift_bridgeObjectRetain_n();
          sub_1002598C8(v158);

          v158[0] = v64;
          sub_1004A5494();
        }

        else
        {
          v60 = *(v53 + 24);
          v61 = *(v53 + 32);
          v62 = *(v53 + 40);
          v158[0] = *(v53 + 16);
          v158[1] = v60;
          swift_bridgeObjectRetain_n();

          sub_1002598C8(v158);

          v158[0] = v61;
          v158[1] = v62;

          sub_1002598C8(v158);
        }

LABEL_82:
        v113 = v147[5];
        v114 = v147[6];
        v116 = v147[7];
        v115 = v147[8];
        v118 = v147[9];
        v117 = v147[10];
        if (v113)
        {
          v158[0] = v147[4];
          v158[1] = v113;

          sub_1002598C8(v158);
        }

        if (v116)
        {
          v158[0] = v114;
          v158[1] = v116;

          sub_1002598C8(v158);
        }

        if (v118)
        {
          v158[0] = v115;
          v158[1] = v118;

          sub_1002598C8(v158);
        }

        v158[0] = v117;
        sub_1004A5494();
        goto LABEL_89;
      }

      v50 = v41[3];
      v51 = v41[4];
      *v163 = v41[2];
      *&v163[8] = v50;
      swift_bridgeObjectRetain_n();
      v42 = v146;
      sub_1002598C8(v163);

      *v163 = v51;
      sub_1004A5494();
    }

    else
    {
      v47 = *(v39 + 24);
      v48 = *(v39 + 32);
      v49 = *(v39 + 40);
      *v163 = *(v39 + 16);
      *&v163[8] = v47;
      swift_bridgeObjectRetain_n();

      v42 = v146;
      sub_1002598C8(v163);

      *v163 = v48;
      *&v163[8] = v49;

      sub_1002598C8(v163);
    }

LABEL_90:
    v119 = v144[5];
    v120 = v144[6];
    v121 = v144[7];
    v122 = v144[8];
    v123 = v144[9];
    v124 = v144[10];
    if (v119)
    {
      *v163 = v144[4];
      *&v163[8] = v119;

      sub_1002598C8(v163);
    }

    if (v121)
    {
      *v163 = v120;
      *&v163[8] = v121;

      sub_1002598C8(v163);
    }

    if (v123)
    {
      *v163 = v122;
      *&v163[8] = v123;

      sub_1002598C8(v163);
      v146 = v42;
    }

    else
    {
      v146 = v42;
    }

    *v163 = v124;
    sub_1004A5494();
    goto LABEL_98;
  }

LABEL_132:
  v138 = v1[1];
  v137 = v1[2];
  *&v164[0] = v138;
  *(&v164[0] + 1) = v137;

  sub_1002598C8(v164);
}

uint64_t sub_1002595C0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  *&__dst[0] = v3;
  *(&__dst[0] + 1) = v2;

  sub_1002598C8(__dst);

  v4 = *(a1 + 35);
  v29[8] = *(a1 + 33);
  v29[9] = v4;
  v29[10] = *(a1 + 37);
  v30 = *(a1 + 312);
  v5 = *(a1 + 27);
  v29[4] = *(a1 + 25);
  v29[5] = v5;
  v6 = *(a1 + 31);
  v29[6] = *(a1 + 29);
  v29[7] = v6;
  v7 = *(a1 + 19);
  v29[0] = *(a1 + 17);
  v29[1] = v7;
  v8 = *(a1 + 23);
  v29[2] = *(a1 + 21);
  v29[3] = v8;
  if (sub_10000FE88(v29) == 1)
  {
    v9 = UInt32.init(_:)(v29);
    __dst[4] = *(v9 + 64);
    __dst[5] = *(v9 + 80);
    __dst[6] = *(v9 + 96);
    *&__dst[7] = *(v9 + 112);
    __dst[0] = *v9;
    __dst[1] = *(v9 + 16);
    __dst[2] = *(v9 + 32);
    __dst[3] = *(v9 + 48);
    sub_10025835C(__dst);
    goto LABEL_16;
  }

  v10 = UInt32.init(_:)(v29);
  v12 = v10[4];
  v11 = v10[5];
  v13 = v10[6];
  v14 = v10[7];
  v15 = v10[9];
  v23 = v13;
  v24 = v10[8];
  v25 = v10[10];
  v16 = *v10 >> 62;
  if (v16)
  {
    if (v16 == 1)
    {
      memcpy(__dst, ((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
      sub_100259990(__dst, &v26);
      sub_1002595C0(__dst);
      sub_1002599EC(__dst);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v20 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v21 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    *&__dst[0] = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    *(&__dst[0] + 1) = v20;
    swift_bridgeObjectRetain_n();
    sub_1002598C8(__dst);

    *&__dst[0] = v21;
    sub_1004A5494();
  }

  else
  {
    v17 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v18 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    *&__dst[0] = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    *(&__dst[0] + 1) = v17;
    swift_bridgeObjectRetain_n();

    sub_1002598C8(__dst);

    *&__dst[0] = v19;
    *(&__dst[0] + 1) = v18;

    sub_1002598C8(__dst);
  }

  if (v11)
  {
LABEL_10:
    v26 = v12;
    v27 = v11;

    sub_1002598C8(&v26);
  }

LABEL_11:
  if (v14)
  {
    v26 = v23;
    v27 = v14;

    sub_1002598C8(&v26);
  }

  if (v15)
  {
    v26 = v24;
    v27 = v15;

    sub_1002598C8(&v26);
  }

  v26 = v25;
  sub_1004A5494();
LABEL_16:
  v26 = a1[40];
  return sub_1004A5494();
}

uint64_t sub_1002598C8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = sub_10010CD9C();
    v7 = v6;

    v2 = v5;
    *a1 = v5;
    a1[1] = v7;
    if ((v7 & 0x2000000000000000) != 0)
    {
      return sub_1004A5494();
    }
  }

  else if ((v3 & 0x2000000000000000) != 0)
  {
    return sub_1004A5494();
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    sub_1004A67E4();
  }

  return sub_1004A5494();
}

uint64_t sub_100259A9C(uint64_t a1, uint64_t a2)
{
  v3 = PCG32Random.next()();
  swift_beginAccess();
  v4 = *(a2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((result & 1) == 0)
  {
    result = sub_10015BF20(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v6 = 10;
  do
  {
    v7 = a0123456789abcd[v3 % 0x3E];
    *(a2 + 16) = v4;
    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_10015BF20((v8 > 1), v9 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v9 + 1;
    *(v4 + v9 + 32) = v7;
    *(a2 + 16) = v4;
    v3 /= 0x3EuLL;
    --v6;
  }

  while (v6);
  return result;
}

Swift::Int sub_100259BC0(Swift::Int result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_1004A59E4();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v9 = v5 + v3;
      }

      else
      {
        v9 = v5;
      }

      v4 = sub_10015BF20(isUniquelyReferenced_nonNull_native, v9, 1, v4);
      v10 = *(v4 + 3) >> 1;
    }

    v11 = *(v4 + 2);
    result = sub_1004A6734();
    if (v12)
    {
      goto LABEL_22;
    }

    v13 = result;

    if (v13 >= v3)
    {
      if (v13 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v14 = *(v4 + 2);
      v15 = __OFADD__(v14, v13);
      v16 = v14 + v13;
      if (!v15)
      {
        *(v4 + 2) = v16;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t static Message.makeSparse(messageHeaders:bodyStructure:lineEnding:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, __int128 *a4@<X8>)
{
  v105 = a3;
  v103 = a1;
  v104 = a4;
  v5 = *(a2 + 144);
  v161 = *(a2 + 128);
  v162 = v5;
  v163 = *(a2 + 160);
  v6 = *(a2 + 80);
  v157 = *(a2 + 64);
  v158 = v6;
  v7 = *(a2 + 112);
  v159 = *(a2 + 96);
  v160 = v7;
  v8 = *(a2 + 16);
  v153 = *a2;
  v154 = v8;
  v9 = *(a2 + 48);
  v155 = *(a2 + 32);
  v164 = *(a2 + 176);
  v156 = v9;
  v99 = sub_1004A5384();
  v97 = *(v99 - 8);
  v10 = *(v97 + 64);
  __chkstk_darwin(v99);
  v96 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Message.Data(0);
  v12 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v98 = (&v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = type metadata accessor for Message(0);
  v14 = *(v102 - 1);
  v15 = *(v14 + 64);
  __chkstk_darwin(v102);
  v100 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C9C0(&qword_1005D6310, &qword_1004EA000);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v95 - v22;
  v23 = sub_1004A54C4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1004A5454();
  v28 = *(v101 - 1);
  v29 = *(v28 + 64);
  __chkstk_darwin(v101);
  v31 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = xmmword_1004DC1F0;
  sub_1000510B4(a2, v139);
  sub_1004A54B4();
  v32 = *(a2 + 144);
  v139[8] = *(a2 + 128);
  v139[9] = v32;
  v139[10] = *(a2 + 160);
  v140 = *(a2 + 176);
  v33 = *(a2 + 80);
  v139[4] = *(a2 + 64);
  v139[5] = v33;
  v34 = *(a2 + 112);
  v139[6] = *(a2 + 96);
  v139[7] = v34;
  v35 = *(a2 + 16);
  v139[0] = *a2;
  v139[1] = v35;
  v36 = *(a2 + 48);
  v139[2] = *(a2 + 32);
  v139[3] = v36;
  if (sub_10000FE88(v139) == 1)
  {
    v37 = UInt32.init(_:)(v139);
    v38 = *(v37 + 80);
    v145 = *(v37 + 64);
    v146 = v38;
    v147 = *(v37 + 96);
    v39 = *(v37 + 16);
    v141 = *v37;
    v142 = v39;
    v40 = *(v37 + 48);
    v143 = *(v37 + 32);
    *&v148 = *(v37 + 112);
    v144 = v40;
    sub_10025835C(&v141);
  }

  else
  {
    v41 = UInt32.init(_:)(v139);
    v42 = v41[6];
    v148 = v41[7];
    v43 = v41[9];
    v149 = v41[8];
    v150 = v43;
    v151 = v41[10];
    v44 = v41[2];
    v144 = v41[3];
    v45 = v41[5];
    v145 = v41[4];
    v146 = v45;
    v147 = v42;
    v46 = v41[1];
    v141 = *v41;
    v142 = v46;
    v143 = v44;
    sub_100258168(&v141);
  }

  sub_1004A54A4();
  (*(v24 + 8))(v27, v23);
  sub_10000C9C0(&qword_1005D6318, &qword_1004EA008);
  sub_1004A5444();
  sub_100051110(a2);
  (*(v28 + 8))(v31, v101);
  v111 = v137[0];
  v47 = v107;
  sub_10026796C(v103, v107, type metadata accessor for Message);
  v48 = v102;
  v49 = (*(v14 + 56))(v47, 0, 1, v102);
  __chkstk_darwin(v49);
  v93 = &v112;
  sub_10000E268(v47, v20, &qword_1005D6310, &qword_1004EA000);
  if ((*(v14 + 48))(v20, 1, v48) == 1)
  {
    sub_100025F40(v20, &qword_1005D6310, &qword_1004EA000);
    v50 = v105;
    v51 = sub_10025B4CC(v105, &v111, a2, &v112);
    sub_10025B5BC(v50, a2);
    sub_10025B944(v50, a2);
    sub_10025BD28(v50, a2);
    v52 = *(a2 + 144);
    v137[8] = *(a2 + 128);
    v137[9] = v52;
    v137[10] = *(a2 + 160);
    v138 = *(a2 + 176);
    v53 = *(a2 + 80);
    v137[4] = *(a2 + 64);
    v137[5] = v53;
    v54 = *(a2 + 112);
    v137[6] = *(a2 + 96);
    v137[7] = v54;
    v55 = *(a2 + 16);
    v137[0] = *a2;
    v137[1] = v55;
    v56 = *(a2 + 48);
    v137[2] = *(a2 + 32);
    v137[3] = v56;
    if (sub_10000FE88(v137) == 1)
    {
      UInt32.init(_:)(v137);
    }

    else
    {
      v152 = *(UInt32.init(_:)(v137) + 0x30);
      v62 = *(&v152 + 1);
      if (*(&v152 + 1))
      {
        v103 = v152;
        LOBYTE(v109[0]) = v50;
        *(&v114 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v115 = &protocol witness table for UnsafeRawBufferPointer;
        *&v113 = "Content-Description";
        *(&v113 + 1) = "";
        v63 = sub_10002587C(&v113, &type metadata for UnsafeRawBufferPointer);
        v65 = *v63;
        v64 = v63[1];
        sub_1000510B4(a2, &v125);
        sub_10000E268(&v152, &v125, &qword_1005D4660, &qword_1004E05E8);
        sub_1004A43F4();
        sub_1000197E0(&v113);
        *(&v126 + 1) = &type metadata for UnsafeRawBufferPointer;
        *&v127 = &protocol witness table for UnsafeRawBufferPointer;
        *&v125 = ": ";
        *(&v125 + 1) = "";
        v50 = v105;
        v66 = sub_10002587C(&v125, &type metadata for UnsafeRawBufferPointer);
        v68 = *v66;
        v67 = v66[1];
        sub_1004A43F4();
        sub_1000197E0(&v125);
        *(&v109[0] + 1) = 21;
        sub_10025FD88(v103, v62, v109);
        sub_100025F40(&v152, &qword_1005D4660, &qword_1004E05E8);
        sub_100267804(v50);
        sub_100051110(a2);
      }
    }

    sub_10025C1CC(v50, a2);
    sub_10025C348(v50, a2);
    v69 = *(a2 + 144);
    v133 = *(a2 + 128);
    v134 = v69;
    v135 = *(a2 + 160);
    v136 = *(a2 + 176);
    v70 = *(a2 + 80);
    v129 = *(a2 + 64);
    v130 = v70;
    v71 = *(a2 + 112);
    v131 = *(a2 + 96);
    v132 = v71;
    v72 = *(a2 + 16);
    v125 = *a2;
    v126 = v72;
    v73 = *(a2 + 48);
    v127 = *(a2 + 32);
    v128 = v73;
    if (sub_10000FE88(&v125) == 1)
    {
      UInt32.init(_:)(&v125);
    }

    else
    {
      v78 = *(UInt32.init(_:)(&v125) + 0x50);
      if (v78 > 0)
      {
        sub_1002628DC(v50, v78);
      }
    }

    sub_100267804(v50);
  }

  else
  {
    v103 = &v95;
    v57 = v20;
    v58 = v100;
    v59 = sub_1002678D8(v57, v100);
    __chkstk_darwin(v59);
    *(&v95 - 48) = 3;
    *(&v95 - 5) = a2;
    v50 = v105;
    *(&v95 - 32) = v105;
    *(&v95 - 3) = &v111;
    __chkstk_darwin(v60);
    v93 = sub_10026793C;
    v94 = v61;
    sub_1000510B4(a2, v137);
    sub_1000510B4(a2, v137);
    sub_1000510B4(a2, v137);
    if (Message.isEmpty.getter())
    {
      sub_1000510B4(a2, v137);
      sub_10025ACAC(0, 0, 0, 0, 3, a2, v50, &v111, v137, sub_10025A9B0, &v95 - 32);
      sub_100051110(a2);
      sub_100051110(a2);
      sub_100051110(a2);
      v51 = *&v137[0];
      sub_100051110(a2);
    }

    else
    {
      v102 = &v95;
      v74 = v98;
      sub_10026796C(v58, v98, type metadata accessor for Message.Data);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v75 = v96;
        v76 = v97;
        v77 = (*(v97 + 32))(v96, v74, v99);
        v101 = &v95;
        __chkstk_darwin(v77);
        *(&v95 - 4) = v75;
        *(&v95 - 3) = sub_100267954;
        v93 = (&v95 - 4);
        sub_10000C9C0(&qword_1005D6320, &qword_1004EA010);
        sub_1004A5314();
        (*(v76 + 8))(v75, v99);
        sub_100051110(a2);
        sub_100051110(a2);
        sub_100051110(a2);
        v51 = *&v137[0];
      }

      else
      {
        v79 = v74;
        v80 = *v74;
        v81 = v79[1];
        sub_1000510B4(a2, v137);
        v51 = sub_100267088(v80, v81, 3, a2, v50, &v111, sub_10025A9B0, &v95 - 32);
        sub_100051110(a2);
        sub_100014D40(v80, v81);
        sub_100051110(a2);
        sub_100051110(a2);
        sub_100051110(a2);
      }
    }

    sub_1002679EC(v58);
  }

  v82 = *(a2 + 144);
  v121 = *(a2 + 128);
  v122 = v82;
  v123 = *(a2 + 160);
  v124 = *(a2 + 176);
  v83 = *(a2 + 80);
  v117 = *(a2 + 64);
  v118 = v83;
  v84 = *(a2 + 112);
  v119 = *(a2 + 96);
  v120 = v84;
  v85 = *(a2 + 16);
  v113 = *a2;
  v114 = v85;
  v86 = *(a2 + 48);
  v115 = *(a2 + 32);
  v116 = v86;
  if (sub_10000FE88(&v113) != 1)
  {
    UInt32.init(_:)(&v113);
    goto LABEL_24;
  }

  v87 = UInt32.init(_:)(&v113);
  if (v51)
  {
    v88 = *v87;
    v109[9] = v162;
    v109[10] = v163;
    v110 = v164;
    v109[5] = v158;
    v109[6] = v159;
    v109[7] = v160;
    v109[8] = v161;
    v109[0] = v153;
    v109[1] = v154;
    v109[2] = v155;
    v109[3] = v156;
    v109[4] = v157;
    v89 = UInt32.init(_:)(v109);
    sub_100259A40(v89, &v108);
    sub_10025C4F4(v50, v88, v51, &v111, &v112);
    sub_100051110(a2);
LABEL_24:
  }

  sub_100025F40(v107, &qword_1005D6310, &qword_1004EA000);
  v90 = v112;
  *v104 = v112;
  swift_storeEnumTagMultiPayload();
  v91 = v112;
  sub_100014CEC(v90, *(&v90 + 1));
  return sub_100014D40(v91, *(&v91 + 1));
}

uint64_t sub_10025A950(uint64_t a1, uint64_t a2)
{
  v6[3] = &type metadata for UnsafeRawBufferPointer;
  v6[4] = &protocol witness table for UnsafeRawBufferPointer;
  v6[0] = a1;
  v6[1] = a2;
  v2 = sub_10002587C(v6, &type metadata for UnsafeRawBufferPointer);
  v4 = *v2;
  v3 = v2[1];
  sub_1004A43F4();
  return sub_1000197E0(v6);
}

uint64_t BodyStructure.containsMultipartPartWithMissingBoundary.getter()
{
  v1 = *(v0 + 144);
  v29[8] = *(v0 + 128);
  v29[9] = v1;
  v29[10] = *(v0 + 160);
  v30 = *(v0 + 176);
  v2 = *(v0 + 80);
  v29[4] = *(v0 + 64);
  v29[5] = v2;
  v3 = *(v0 + 112);
  v29[6] = *(v0 + 96);
  v29[7] = v3;
  v4 = *(v0 + 16);
  v29[0] = *v0;
  v29[1] = v4;
  v5 = *(v0 + 48);
  v29[2] = *(v0 + 32);
  v29[3] = v5;
  if (sub_10000FE88(v29) == 1)
  {
    v6 = UInt32.init(_:)(v29);
    v7 = *(v6 + 80);
    v35 = *(v6 + 64);
    v36 = v7;
    v37 = *(v6 + 96);
    v38 = *(v6 + 112);
    v8 = *(v6 + 16);
    v31 = *v6;
    v32 = v8;
    v9 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v9;
    v10 = sub_10025AB14();
    if (v11)
    {
      sub_10014F5C4(v10, v11);
      v12 = (v31 + 32);
      v13 = *(v31 + 16) + 1;
      do
      {
        v14 = --v13 != 0;
        if (!v13)
        {
          break;
        }

        v15 = (v12 + 184);
        v16 = *v12;
        v17 = v12[1];
        v18 = v12[3];
        v39[2] = v12[2];
        v39[3] = v18;
        v39[0] = v16;
        v39[1] = v17;
        v19 = v12[4];
        v20 = v12[5];
        v21 = v12[7];
        v39[6] = v12[6];
        v39[7] = v21;
        v39[4] = v19;
        v39[5] = v20;
        v22 = v12[8];
        v23 = v12[9];
        v24 = v12[10];
        v40 = *(v12 + 176);
        v39[9] = v23;
        v39[10] = v24;
        v39[8] = v22;
        v25 = sub_1000510B4(v39, v28);
        v26 = BodyStructure.containsMultipartPartWithMissingBoundary.getter(v25);
        sub_100051110(v39);
        v12 = v15;
      }

      while ((v26 & 1) == 0);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    UInt32.init(_:)(v29);
    return 0;
  }

  return v14;
}

uint64_t sub_10025AB14()
{
  v16 = *(v0 + 32);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v0 + 40);
  v1 = *(v17 + 16);

  v15 = v1;
  if (!v1)
  {
    v8 = 0;
LABEL_15:
    sub_100025F40(&v17, &qword_1005D3FD0, &qword_1004DF4C0);
    return v8;
  }

  v3 = 0;
  v4 = 0x797261646E756F62;
  v5 = (result + 40);
  v6 = (v16 + 40);
  while (v3 < *(v16 + 16))
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v10 = *(v5 - 1);
    v9 = *v5;
    if (sub_1004A5814() == v4 && v11 == 0xE800000000000000)
    {

      goto LABEL_15;
    }

    v13 = v4;
    v14 = sub_1004A6D34();

    if (v14)
    {
      goto LABEL_15;
    }

    ++v3;

    v5 += 2;
    v6 += 2;
    v4 = v13;
    if (v15 == v3)
    {
      v8 = 0;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10025ACAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, void (*a10)(uint64_t, char *), char *a11)
{
  sub_100287BA8(a5, a1, a2, a3);
  if (v20)
  {
    v21 = a2;
  }

  else
  {
    v21 = v19;
  }

  sub_100296A78(a5, a1, a2, a3, a4, v21);
  v92 = v22;
  v95 = v23;
  v87 = v24;
  v26 = v25;
  v27 = *(a6 + 144);
  v114[8] = *(a6 + 128);
  v114[9] = v27;
  v114[10] = *(a6 + 160);
  v115 = *(a6 + 176);
  v28 = *(a6 + 80);
  v114[4] = *(a6 + 64);
  v114[5] = v28;
  v29 = *(a6 + 112);
  v114[6] = *(a6 + 96);
  v114[7] = v29;
  v30 = *(a6 + 16);
  v114[0] = *a6;
  v114[1] = v30;
  v31 = *(a6 + 48);
  v114[2] = *(a6 + 32);
  v114[3] = v31;
  v32 = sub_10000FE88(v114);
  UInt32.init(_:)(v114);
  if (v26 < 0)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v95)
  {
    v33 = v95 + v26;
  }

  else
  {
    v33 = 0;
  }

  sub_1002AADD4(v95, v33, v92, v107);
  sub_1000510B4(a6, &v104);
  v104 = 0u;
  v105 = 0u;
  *&v106[0] = 0x1FFFFFFF0ELL;
  memset(v106 + 8, 0, 33);
  v34 = sub_1002AC09C();
  if (v37 == 2)
  {
    v90 = 0;
    v38 = *&v106[0];
    if ((*&v106[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
    {
      v88 = 0uLL;
      v89 = 0uLL;
      v39 = a10;
LABEL_48:
      LOBYTE(v100) = a7;
      v39("Content-Type", "");
      v39(": ", "");
      *(&v100 + 1) = 14;
      sub_1002616C0(&v100, a6, v39, a11, a8, v99);
      sub_1002652C0(a7, v39);
      v68 = 0;
      goto LABEL_51;
    }

    v85 = v32;
    v71 = *(&v106[1] + 1);
    v70 = *&v106[1];
    v89 = 0uLL;
    v88 = 0uLL;
    v94 = 0;
  }

  else
  {
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v85 = v32;
    v91 = a7;
    v83 = a6;
    v84 = a9;
    v94 = 0;
    v90 = 0;
    v89 = 0uLL;
    v88 = 0uLL;
    v44 = 0;
    do
    {
      sub_1002AB9E4(v40, v41, v42, v43 & 1, &v108);
      v96 = v108;
      v48 = v109;
      v49 = v110;
      v50 = v111;
      v51 = v112;
      v52 = v113;
      if (v112 >> 59 == 9)
      {
        v53 = v110;
        v54 = v109;
        v93 = v40;
        v55 = v43;
        v56 = v112;
        v57 = v113;
        v58 = v42;
        v59 = v41;
        v60 = v111;

        v50 = v60;
        v41 = v59;
        v42 = v58;
        v52 = v57;
        v51 = v56;
        v43 = v55;
        v40 = v93;
        v48 = v54;
        v49 = v53;
        *&v88 = v96;
        *(&v88 + 1) = v48;
        *&v89 = v53;
        *(&v89 + 1) = v50;
        v90 = v51;
        v94 = v52;
      }

      if (!(v44 & 1 | (v40 == 0)) && v95 && &v40[-v95] >= 1)
      {
        v61 = v48;
        v62 = v42;
        v63 = v41;
        v64 = v50;
        sub_1002863C4(v92, v91, 1, a10, a11, 0, &v40[-v95], v95, v87);
        v50 = v64;
        v41 = v63;
        v42 = v62;
        v48 = v61;
      }

      if ((*&v106[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
      {
        if (*&v106[1])
        {
          v65 = (*(&v106[1] + 1) - *&v106[1]);
        }

        else
        {
          v65 = 0;
        }

        if ((v65 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_77;
        }

        v66 = v48;
        v67 = v50;
        sub_1002863C4(v92, v91, 1, a10, a11, 0, v65, *&v106[1], *(&v106[1] + 1));
        sub_100025F40(&v104, &qword_1005D6328, &qword_1004ECE90);
        v50 = v67;
        v48 = v66;
      }

      *&v104 = v96;
      *(&v104 + 1) = v48;
      *&v105 = v49;
      *(&v105 + 1) = v50;
      *&v106[0] = v51;
      *(&v106[0] + 1) = v52;
      *&v106[1] = v40;
      *(&v106[1] + 1) = v41;
      *&v106[2] = v42;
      BYTE8(v106[2]) = v43 & 1;
      v40 = sub_1002AC09C();
      v41 = v45;
      v42 = v46;
      v43 = v47;
      v44 = 1;
    }

    while (v47 != 2);
    v38 = *&v106[0];
    if ((*&v106[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
    {
      a6 = v83;
      a7 = v91;
      v39 = a10;
      v68 = v94;
      if (!v94)
      {
        a9 = v84;
        goto LABEL_48;
      }

      v69 = 0;
      a9 = v84;
LABEL_34:
      v72 = a7;
      if (a7)
      {
        goto LABEL_52;
      }

      goto LABEL_35;
    }

    v71 = *(&v106[1] + 1);
    v70 = *&v106[1];
    a9 = v84;
    a6 = v83;
    a7 = v91;
  }

  v39 = a10;
  if (v38 >> 59)
  {
    sub_100025F40(&v104, &qword_1005D6328, &qword_1004ECE90);
    if (v70)
    {
      v73 = v71 - v70;
    }

    else
    {
      v73 = 0;
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      v74 = a11;
      sub_1002863C4(v92, a7, 1, a10, a11, 0, v73, v70, v71);
      v68 = v94;
      if (v94)
      {
        v69 = 0;
        v72 = a7;
        if (a7)
        {
          goto LABEL_52;
        }

        goto LABEL_35;
      }

      LOBYTE(v100) = a7;
      goto LABEL_50;
    }

    goto LABEL_78;
  }

  if (v85 == 1)
  {
    v68 = v94;
    if (v94)
    {
      v69 = 0;
      goto LABEL_34;
    }

    LOBYTE(v100) = a7;
    v74 = a11;
LABEL_50:
    a10("Content-Type", "");
    a10(": ", "");
    *(&v100 + 1) = 14;
    sub_1002616C0(&v100, a6, a10, v74, a8, v99);
    sub_1002652C0(a7, a10);
LABEL_51:
    v69 = v99[0];
    v72 = a7;
    if (a7)
    {
      goto LABEL_52;
    }

    goto LABEL_35;
  }

  if (v94)
  {
    v102 = v106[0];
    v103[0] = v106[1];
    *(v103 + 9) = *(&v106[1] + 9);
    v100 = v104;
    v101 = v105;
    sub_10000E268(&v100, v99, &qword_1005D6330, &qword_1004ECEA0);
    v69 = 0;
  }

  else
  {
    v97[0] = a7;
    v102 = v106[0];
    v103[0] = v106[1];
    *(v103 + 9) = *(&v106[1] + 9);
    v100 = v104;
    v101 = v105;
    sub_10000E268(&v100, v99, &qword_1005D6330, &qword_1004ECEA0);
    a10("Content-Type", "");
    a10(": ", "");
    v98 = 14;
    sub_1002616C0(v97, a6, a10, a11, a8, v99);
    sub_1002652C0(a7, a10);
    v69 = v99[0];
  }

  if (v70)
  {
    v82 = v71 - v70;
  }

  else
  {
    v82 = 0;
  }

  if (v82 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_1002863C4(v92, a7, 1, a10, a11, 0, v82, v70, v71);
  v68 = v94;
  v72 = a7;
  if (a7)
  {
LABEL_52:
    if (v72 == 1)
    {
      v75 = 13;
    }

    else
    {
      v75 = 10;
    }

    LOBYTE(v100) = v75;
    v39(&v100, &v100 + 1);
    if (v69)
    {
      goto LABEL_56;
    }

LABEL_57:
    if (!v68)
    {
LABEL_60:
      result = sub_100051110(a6);
      v69 = 0;
      goto LABEL_61;
    }

    v100 = v88;
    v101 = v89;
    LOBYTE(v102) = v90;
    *(&v102 + 1) = v68;
    v77 = sub_100271A2C();
    if (v79 == 2)
    {

      goto LABEL_60;
    }

    v80 = v78;
    if ((v79 & 1) == 0)
    {
      v69 = sub_10029E8D4(v77, v78);
      goto LABEL_56;
    }

    if (v77)
    {
      v81 = v78 - v77;
    }

    else
    {
      v81 = 0;
    }

    if ((v81 & 0x8000000000000000) == 0)
    {
      v69 = sub_1002871D4(0, v81, v77, v80);
      goto LABEL_56;
    }

LABEL_80:
    __break(1u);
  }

LABEL_35:
  v39("\r\n", "");
  if (!v69)
  {
    goto LABEL_57;
  }

LABEL_56:

  result = sub_100051110(a6);
LABEL_61:
  *a9 = v69;
  return result;
}