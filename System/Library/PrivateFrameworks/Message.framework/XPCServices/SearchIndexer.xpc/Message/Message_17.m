uint64_t sub_10011FCCC()
{
  v1 = *(v0 + 64);

  if (*(v0 + 72) >= 2uLL)
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10011FD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011FDA8(uint64_t a1, int a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v92 = a3;
  v83 = a6;
  v90 = a5;
  v91 = a4;
  v8 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v88 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v80 - v12;
  v13 = type metadata accessor for ClientCommand(0);
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = *(v85 + 64);
  v15 = __chkstk_darwin(v13);
  v81 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v82 = &v80 - v18;
  __chkstk_darwin(v17);
  v84 = &v80 - v19;
  v20 = type metadata accessor for Command();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C9C0(&qword_1005D0F38, &qword_1004D6028);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = a1;
  v33 = &v80 - v32;
  sub_10000E268(v31, &v80 - v32, &qword_1005D0F30, &qword_1004D6020);
  v34 = *(v26 + 56);
  v89 = a2;
  *&v33[v34] = a2;
  sub_10000E268(v33, v30, &qword_1005D0F38, &qword_1004D6028);
  if ((*(v21 + 48))(v30, 1, v20) == 1)
  {
    sub_100025F40(v33, &qword_1005D0F38, &qword_1004D6028);
    sub_100025F40(v30, &qword_1005D0F30, &qword_1004D6020);
    return 1;
  }

  sub_100120D24(v30, v24, type metadata accessor for Command);
  v36 = v93;
  v37 = (v92)(v24);
  v39 = v24;
  if (v36)
  {
    sub_100120EB0(v24, type metadata accessor for Command);
    return sub_100025F40(v33, &qword_1005D0F38, &qword_1004D6028);
  }

  if ((v38 & 1) == 0)
  {
    v92 = v37;
    v42 = v87;
    sub_1000102DC(v87);
    if ((*(v85 + 48))(v42, 1, v86) == 1)
    {
      sub_100025F40(v42, &qword_1005D0F28, &qword_1004D6018);
LABEL_22:
      v79 = v88;
      sub_1000102DC(v88);
      sub_100169CC8(v79, v92, v89);
      sub_100025F40(v79, &qword_1005D0F28, &qword_1004D6018);
      sub_100120EB0(v39, type metadata accessor for Command);
      sub_100025F40(v33, &qword_1005D0F38, &qword_1004D6028);
      return 0;
    }

    v91 = v33;
    v43 = v84;
    sub_100120D24(v42, v84, type metadata accessor for ClientCommand);
    v44 = v83 + *(type metadata accessor for Task.Logger(0) + 20);
    v45 = *(v44 + 8);
    v93 = *v44;
    v47 = *(v44 + 16);
    v46 = *(v44 + 24);
    v48 = *(v44 + 32);
    LODWORD(v87) = *(v44 + 40);
    v85 = v46;
    v86 = v45;
    if (v46 < 0)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v49 = v81;
      sub_100120E14(v43, v81, type metadata accessor for ClientCommand);
      v66 = sub_1004A4A54();
      v67 = sub_1004A5FF4();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v96 = v83;
        *v68 = 68159747;
        *(v68 + 4) = 2;
        *(v68 + 8) = 256;
        *(v68 + 10) = v93;
        v93 = 0;
        *(v68 + 11) = 2082;
        *(v68 + 13) = sub_10015BA6C(v86, v47, &v96);
        *(v68 + 21) = 1040;
        *(v68 + 23) = 2;
        *(v68 + 27) = 512;
        *(v68 + 29) = v85;

        *(v68 + 31) = 2160;
        *(v68 + 33) = 0x786F626C69616DLL;
        *(v68 + 41) = 2085;
        v94 = v48;
        v95 = v87;

        v69 = sub_1004A5824();
        v71 = sub_10015BA6C(v69, v70, &v96);

        *(v68 + 43) = v71;
        *(v68 + 51) = 2082;
        v72 = ClientCommand.logIdentifier.getter();
        v74 = v73;
        sub_100120EB0(v49, type metadata accessor for ClientCommand);
        v75 = sub_10015BA6C(v72, v74, &v96);

        *(v68 + 53) = v75;
        *(v68 + 61) = 2082;
        v76 = Tag.debugDescription.getter(v92 & 0xFFFFFFFF000000FFLL);
        v78 = sub_10015BA6C(v76, v77, &v96);

        *(v68 + 63) = v78;
        _os_log_impl(&_mh_execute_header, v66, v67, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' command as %{public}s", v68, 0x47u);
        swift_arrayDestroy();

        v64 = v84;
LABEL_20:
        v65 = type metadata accessor for ClientCommand;
        goto LABEL_21;
      }
    }

    else
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v49 = v82;
      sub_100120E14(v43, v82, type metadata accessor for ClientCommand);
      v50 = sub_1004A4A54();
      v51 = sub_1004A5FF4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = v47;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v83 = v39;
        v81 = v54;
        v94 = v54;
        *v53 = 68158722;
        *(v53 + 4) = 2;
        *(v53 + 8) = 256;
        v55 = v93;
        *(v53 + 10) = v93;
        v56 = v86;
        sub_100011284(v55, v86, v52, v85);
        *(v53 + 11) = 2082;
        *(v53 + 13) = sub_10015BA6C(v56, v52, &v94);
        *(v53 + 21) = 2082;
        v57 = ClientCommand.logIdentifier.getter();
        v59 = v58;
        v93 = type metadata accessor for ClientCommand;
        sub_100120EB0(v49, type metadata accessor for ClientCommand);
        v60 = sub_10015BA6C(v57, v59, &v94);

        *(v53 + 23) = v60;
        *(v53 + 31) = 2082;
        v61 = Tag.debugDescription.getter(v92 & 0xFFFFFFFF000000FFLL);
        v63 = sub_10015BA6C(v61, v62, &v94);

        *(v53 + 33) = v63;
        _os_log_impl(&_mh_execute_header, v50, v51, "[%.*hhx-%{public}s] Sent '%{public}s' command as %{public}s", v53, 0x29u);
        swift_arrayDestroy();
        v39 = v83;

        v64 = v84;
        v65 = v93;
LABEL_21:
        sub_100120EB0(v64, v65);
        v33 = v91;
        goto LABEL_22;
      }

      sub_100011284(v93, v86, v47, v85);
    }

    sub_100120EB0(v49, type metadata accessor for ClientCommand);
    v64 = v43;
    goto LABEL_20;
  }

  v40 = v90 + *(type metadata accessor for RunningTask() + 36);
  if (*(v40 + 8) == 1)
  {
    v41 = static MonotonicTime.now()();
    sub_100120EB0(v24, type metadata accessor for Command);
    sub_100025F40(v33, &qword_1005D0F38, &qword_1004D6028);
    *v40 = v41;
    *(v40 + 8) = 0;
  }

  else
  {
    sub_100120EB0(v24, type metadata accessor for Command);
    sub_100025F40(v33, &qword_1005D0F38, &qword_1004D6028);
  }

  return 2;
}

unint64_t sub_1001207D4(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_100020EDC(result);
  }

  return result;
}

unint64_t sub_100120834()
{
  result = qword_1005D0F40;
  if (!qword_1005D0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0F40);
  }

  return result;
}

uint64_t sub_100120888(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for TaskHistory.Running(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  result = sub_100117890(v5, v50);
  if (v53)
  {
    if (v53 != 1)
    {
      return result;
    }

    v19 = a4;
    v20 = v51;
    v21 = v52;
    sub_1000B364C(v50, v47);
    if ((v21 & 1) == 0 && v20 == a1)
    {
      goto LABEL_5;
    }

    v36 = v48;
    v37 = v49;
    sub_10002587C(v47, v48);
    (*(v37 + 32))(&v54, v36, v37);
    v58 = v55;
    v59 = v56;
    v57 = v54;
    sub_1000D69D0(&v57);
    if (a2 && (v59 | (v59 << 32)) == (a3 | (a3 << 32)))
    {
      v38 = sub_1000FFC98(v58, a2);
      sub_10009DA94(&v58);
      if (v38)
      {
LABEL_5:
        sub_100117890(v5, v45);
        if (v46)
        {
          if (v46 == 1)
          {
            sub_1000B364C(v45, v42);
            v22 = v43;
            v23 = v44;
            sub_10002587C(v42, v43);
            v24 = type metadata accessor for RunningTask();
            (*(v23 + 136))(v19, v5 + *(v24 + 28), v22, v23);
            sub_10011D8CC(v5);
            *v5 = 1;
            *(v5 + 8) = 0u;
            *(v5 + 24) = 0u;
            *(v5 + 37) = 0;
            *(v5 + 45) = 2;
            sub_1000197E0(v42);
          }
        }

        else
        {
          sub_10011D8CC(v5);
          *v5 = 1;
          *(v5 + 8) = 0u;
          *(v5 + 24) = 0u;
          *(v5 + 37) = 0;
          *(v5 + 45) = 2;
          sub_10011D8CC(v45);
        }
      }
    }

    else
    {
      sub_10009DA94(&v58);
    }

    return sub_1000197E0(v47);
  }

  v40 = a4;
  v41 = v5;
  v25 = *(v5 + 48);
  v26 = *(v25 + 16);
  if (!v26)
  {
    return sub_10011D8CC(v50);
  }

  v27 = v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v28 = *(v11 + 72);
  while (1)
  {
    sub_100120E14(v27, v17, type metadata accessor for TaskHistory.Running);
    sub_100120D24(v17, v15, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_100120EB0(v15, type metadata accessor for TaskHistory.Running);
LABEL_11:
    v27 += v28;
    if (!--v26)
    {
      return sub_10011D8CC(v50);
    }
  }

  v29 = *v15;
  v30 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
  sub_100120EB0(v15 + *(v30 + 64), type metadata accessor for ClientCommand);
  if (v29 != a1)
  {
    goto LABEL_11;
  }

  v31 = v41;
  sub_100117890(v41, v45);
  v32 = v40;
  if (v46)
  {
    if (v46 == 1)
    {
      sub_1000B364C(v45, v47);
      v33 = v48;
      v34 = v49;
      sub_10002587C(v47, v48);
      v35 = type metadata accessor for RunningTask();
      (*(v34 + 136))(v32, v31 + *(v35 + 28), v33, v34);
      sub_10011D8CC(v31);
      *v31 = 1;
      *(v31 + 8) = 0u;
      *(v31 + 24) = 0u;
      *(v31 + 37) = 0;
      *(v31 + 45) = 2;
      sub_1000197E0(v47);
    }
  }

  else
  {
    sub_10011D8CC(v31);
    *v31 = 1;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 37) = 0;
    *(v31 + 45) = 2;
    sub_10011D8CC(v45);
  }

  return sub_10011D8CC(v50);
}

uint64_t sub_100120D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100120D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  sub_100025928(a1, v8);
  return (*(v9 + 104))(v7, a2, a3, v6, v8, v9);
}

uint64_t sub_100120E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100120EB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100120F10(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  sub_100025928(v3, v8);
  return (*(v9 + 96))(v4, v5, v6, a1, v7, v8, v9);
}

uint64_t sub_100120FA0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 64);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(v2 + 56);
  sub_100025928(a1, v9);
  return (*(v10 + 112))(v3, v4, v5, v6, v7, v11, a2, v8, v9, v10);
}

unint64_t sub_10012104C()
{
  result = qword_1005D0F58;
  if (!qword_1005D0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0F58);
  }

  return result;
}

uint64_t sub_1001210A0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_100025928(a1, v7);
  return (*(v8 + 120))(v4, v6, a2, v5, v7, v8);
}

unint64_t sub_10012115C()
{
  result = qword_1005D0F60;
  if (!qword_1005D0F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0F60);
  }

  return result;
}

unint64_t sub_1001211B4()
{
  result = qword_1005D0F68;
  if (!qword_1005D0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0F68);
  }

  return result;
}

unint64_t sub_10012120C()
{
  result = qword_1005D0F70;
  if (!qword_1005D0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0F70);
  }

  return result;
}

uint64_t sub_100121274(uint64_t *a1, uint64_t a2)
{
  result = sub_100117890(a2, v31);
  if (!v32)
  {
    return sub_10011D8CC(v31);
  }

  if (v32 == 1)
  {
    sub_1000B364C(v31, v28);
    v6 = v29;
    v7 = v30;
    sub_10002587C(v28, v29);
    (*(v7 + 32))(&v33, v6, v7);
    v8 = v34;
    v9 = v35;
    v36 = v33;
    sub_1000D69D0(&v36);
    sub_1000197E0(v28);
    sub_100117890(a2, v31);
    if (v32)
    {
      if (v32 == 1)
      {
        sub_1000B364C(v31, v28);
        v10 = v29;
        v2 = v30;
        sub_10002587C(v28, v29);
        v11 = (*(v2 + 40))(v10, v2);
        sub_1000197E0(v28);
        v12 = v11;
        goto LABEL_9;
      }
    }

    else
    {
      sub_10011D8CC(v31);
    }

    v12 = _swiftEmptySetSingleton;
LABEL_9:
    v13 = v12[2];

    if (!v13)
    {
    }

    sub_100117890(a2, v31);
    if (v32)
    {
      if (v32 == 1)
      {
        sub_1000B364C(v31, v28);
        v14 = v29;
        v15 = v30;
        sub_10002587C(v28, v29);
        v16 = (*(v15 + 40))(v14, v15);
        sub_1000197E0(v28);
        goto LABEL_16;
      }
    }

    else
    {
      sub_10011D8CC(v31);
    }

    v16 = _swiftEmptySetSingleton;
LABEL_16:
    v17 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[0] = *a1;
    v19 = *&v31[0];
    v21 = sub_100063B5C(v8, v9);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v2) = v20;
      if (v19[3] < v24)
      {
        sub_1000C781C(v24, isUniquelyReferenced_nonNull_native);
        v19 = *&v31[0];
        v25 = sub_100063B5C(v8, v9);
        if ((v2 & 1) != (v26 & 1))
        {
          result = sub_1004A6E24();
          __break(1u);
          return result;
        }

        v21 = v25;
        *a1 = v19;
        if ((v2 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_23:

LABEL_27:
        v27 = v19[7] + 8 * v21;
        return sub_100080DD8(v16);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        *a1 = v19;
        if (v20)
        {
          goto LABEL_23;
        }

LABEL_26:
        sub_10001C89C(v21, v8, v9, _swiftEmptySetSingleton, v19);
        goto LABEL_27;
      }
    }

    sub_10013C3E0();
    v19 = *&v31[0];
    *a1 = *&v31[0];
    if (v2)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_10012154C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  (*(a5 + 16))(v35, a4, a5);
  v9 = sub_100012728(v35, a2);
  sub_100014BEC(v35);
  if (v9)
  {
    return 0;
  }

  result = (*(v5 + 24))(v6, v5);
  v33 = *(result + 16);
  if (!v33)
  {

    goto LABEL_17;
  }

  v30 = a3;
  v31 = v6;
  v32 = v5;
  v11 = 0;
  v34 = result + 32;
  v12 = a2 + 56;
  do
  {
    if (v11 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v13 = result;
    sub_100014B90(v34 + 48 * v11, v38);
    if (*(a2 + 16))
    {
      v14 = *(a2 + 40);
      sub_1004A6E94();
      sub_1004A6664();
      v15 = sub_1004A6F14();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if ((*(v12 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        v19 = *&v38[0];
        do
        {
          sub_100014B90(*(a2 + 48) + 48 * v17, v35);
          if (v35[0] == v19)
          {
            v20 = sub_1004A6654();
            sub_100014BEC(v35);
            if (v20)
            {
              sub_100014BEC(v38);

              return 0;
            }
          }

          else
          {
            sub_100014BEC(v35);
          }

          v17 = (v17 + 1) & v18;
        }

        while (((*(v12 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
      }
    }

    ++v11;
    sub_100014BEC(v38);
    result = v13;
  }

  while (v11 != v33);

  v6 = v31;
  v5 = v32;
  a3 = v30;
LABEL_17:
  (*(v5 + 32))(v35, v6, v5);
  v21 = v36;
  v22 = v37;
  v38[0] = *v35;
  sub_1000D69D0(v38);
  if (!*(a3 + 16))
  {

    return 1;
  }

  v23 = sub_100063B5C(v21, v22);
  v25 = v24;

  if (v25)
  {
    v26 = *(*(a3 + 56) + 8 * v23);
    v27 = *(v5 + 48);

    v28 = v27(v6, v5);
    v29 = sub_10012DF2C(v28, v26);

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10012182C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v38 = &v33[-v8];
  PendingDownload = type metadata accessor for FindPendingDownload();
  v9 = *(*(PendingDownload - 8) + 64);
  __chkstk_darwin(PendingDownload);
  v36 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DownloadTask(0);
  v42 = *(a1 + 24);
  v35 = a1;
  v41 = *(a1 + 32);
  v34 = a2;
  v40 = a2 & 1;
  v12 = a3 + 56;
  v39 = sub_1000B38F4();
  for (i = 0; i != 3; ++i)
  {
    v14 = *(&off_100599008 + i + 32);
    v46 = v42;
    v47 = v41;
    v48 = v40;
    v49 = v14;
    *&v50[0] = v11;

    sub_1004A6674();
    if (*(a3 + 16))
    {
      v15 = *(a3 + 40);
      sub_1004A6E94();
      sub_1004A6664();
      v16 = sub_1004A6F14();
      v17 = -1 << *(a3 + 32);
      v18 = v16 & ~v17;
      if ((*(v12 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        do
        {
          sub_100014B90(*(a3 + 48) + 48 * v18, &v46);
          if (v46 == v11)
          {
            v20 = sub_1004A6654();
            sub_100014BEC(&v46);
            if (v20)
            {
              sub_100014BEC(v50);
              v21 = 1;
              return v21 & 1;
            }
          }

          else
          {
            sub_100014BEC(&v46);
          }

          v18 = (v18 + 1) & v19;
        }

        while (((*(v12 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
      }
    }

    sub_100014BEC(v50);
  }

  sub_100016D2C();
  v22 = v38;
  sub_1004A7114();
  v23 = v36;
  *v36 = 0;
  *(v23 + 56) = 0;
  v24 = v35;
  v25 = v35[1];
  *(v23 + 8) = *v35;
  *(v23 + 24) = v25;
  *(v23 + 40) = *(v24 + 8);
  sub_10000C9C0(&qword_1005CEF58, &qword_1004D1E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  if (v34)
  {
    v27 = 10;
  }

  else
  {
    v27 = 9;
  }

  v50[0] = *v24;
  *(inited + 32) = v27;
  v28 = sub_100093190(inited);
  swift_setDeallocating();
  *(v23 + 48) = v28;
  LOBYTE(v28) = v40;
  *(v23 + 57) = v40;
  v29 = PendingDownload;
  sub_10002A54C(v22, v23 + *(PendingDownload + 36));
  v30 = (v23 + *(v29 + 44));
  v43 = v42;
  v44 = v41;
  v45 = v28;
  *v30 = v29;
  swift_bridgeObjectRetain_n();
  sub_1000F7324(v50, &v46);
  sub_1000B4088();
  sub_1004A6674();
  sub_100121C40(v22);
  v31 = v23 + *(v29 + 40);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_100014B90(v30, &v46);
  sub_100121CA8(v23);
  v21 = sub_100012728(&v46, a3);
  sub_100014BEC(&v46);
  return v21 & 1;
}

uint64_t sub_100121C40(uint64_t a1)
{
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100121CA8(uint64_t a1)
{
  PendingDownload = type metadata accessor for FindPendingDownload();
  (*(*(PendingDownload - 8) + 8))(a1, PendingDownload);
  return a1;
}

uint64_t sub_100121D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100117890(a1, v14);
  if (!v15)
  {
    sub_10011D8CC(v14);
    goto LABEL_5;
  }

  if (v15 != 1)
  {
LABEL_5:
    v6 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  sub_1000B364C(v14, v11);
  v4 = v12;
  v5 = v13;
  sub_10002587C(v11, v12);
  (*(v5 + 32))(&v16, v4, v5);
  v6 = v17;
  v7 = v18;
  v19 = v16;
  sub_1000D69D0(&v19);
  sub_1000197E0(v11);
LABEL_6:
  result = type metadata accessor for RunningTask();
  v9 = a1 + *(result + 36);
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  return result;
}

void *sub_100121E04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _swiftEmptySetSingleton;
  v21 = _swiftEmptySetSingleton;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_100124D34(v10, v7, type metadata accessor for RunningTask);
      sub_100117890(v7, v19);
      if (v20)
      {
        if (v20 == 1)
        {
          sub_1000B364C(v19, v16);
          v12 = v17;
          v13 = v18;
          sub_10002587C(v16, v17);
          (*(v13 + 32))(&v22, v12, v13);
          v14 = v23;
          LODWORD(v13) = v24;
          v25 = v22;
          sub_1000D69D0(&v25);
          sub_1000197E0(v16);
          sub_100088220(v19, v14, v13);
        }
      }

      else
      {
        sub_10011D8CC(v19);
      }

      sub_100124E74(v7, type metadata accessor for RunningTask);
      v10 += v11;
      --v9;
    }

    while (v9);
    return v21;
  }

  return result;
}

void *sub_100121FD0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = *(v5 + 72);
  v11 = _swiftEmptyArrayStorage;
  do
  {
    sub_100124D34(v9, v7, type metadata accessor for RunningTask);
    sub_100117890(v7, &v25);
    if (v28)
    {
      if (v28 == 1)
      {
        v12 = v26;
        v13 = v27;
        sub_1000B364C(&v25, v22);
        if (v13)
        {
          sub_100124E74(v7, type metadata accessor for RunningTask);
          sub_1000197E0(v22);
        }

        else
        {
          v14 = v23;
          v15 = v24;
          sub_10002587C(v22, v23);
          (*(v15 + 32))(&v29, v14, v15);
          sub_100124E74(v7, type metadata accessor for RunningTask);
          v32 = v29;
          sub_1000D69D0(&v32);
          sub_1000197E0(v22);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_100085648(0, v11[2] + 1, 1, v11);
          }

          v17 = v11[2];
          v16 = v11[3];
          if (v17 >= v16 >> 1)
          {
            v11 = sub_100085648((v16 > 1), v17 + 1, 1, v11);
          }

          v18 = v30;
          v19 = v31;
          v11[2] = v17 + 1;
          v20 = &v11[3 * v17];
          *(v20 + 8) = v12;
          v20[5] = v18;
          *(v20 + 12) = v19;
        }
      }

      else
      {
        sub_100124E74(v7, type metadata accessor for RunningTask);
      }
    }

    else
    {
      sub_100124E74(v7, type metadata accessor for RunningTask);
      sub_10011D8CC(&v25);
    }

    v9 += v10;
    --v8;
  }

  while (v8);
  return v11;
}

Swift::Int sub_1001222A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _swiftEmptySetSingleton;
  v26 = _swiftEmptySetSingleton;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
LABEL_3:
    v13 = v11;
    while (v13 < v9)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }

      sub_100124D34(v12 + *(v4 + 72) * v13, v7, type metadata accessor for RunningTask);
      sub_100117890(v7, v24);
      if (v25 == 1)
      {
        sub_1000197E0(v24);
      }

      else if (v25 != 2)
      {
        v14 = *(v7 + 6);

        sub_10011D8CC(v24);
        v16 = v14;
        v17 = 0;
        v18 = sub_10011B03C;
        v19 = 0;
        v20 = sub_100123C58;
        v21 = 0;
        v22 = sub_100123C68;
        v23 = 0;

        while (1)
        {
          result = sub_1001239AC();
          if ((result & 0x10000000000) != 0)
          {
            break;
          }

          if ((result & 0x100000000) != 0)
          {
            goto LABEL_23;
          }

          sub_10008854C(&v15 + 1, result);
        }

        sub_100124E74(v7, type metadata accessor for RunningTask);

        v10 = 1;
        if (v11 == v9)
        {
          result = v26;
LABEL_17:
          if (!*(result + 16))
          {

            return 1;
          }

          return result;
        }

        goto LABEL_3;
      }

      result = sub_100124E74(v7, type metadata accessor for RunningTask);
      ++v13;
      if (v11 == v9)
      {
        result = v26;
        if ((v10 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:

    return 0;
  }

  return result;
}

uint64_t sub_100122508(uint64_t result)
{
  v2 = *(v1 + 8);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = sub_1001399D0(v2);
    }

    for (i = 0; i != v3; ++i)
    {
      if (i >= *(v2 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      v6 = *(type metadata accessor for RunningTask() - 8);
      result = v4(&v2[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i]);
    }

    *(v1 + 8) = v2;
  }

  return result;
}

uint64_t sub_1001225FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RunningTask();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v4);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  sub_100124D34(a1, &v18 - v11, type metadata accessor for RunningTask);
  v13 = *(v2 + 4);
  *&v12[*(v5 + 40)] = v13;
  *(v2 + 4) = (v13 + 1) & 0xFFFFFF;
  sub_10011B49C(*v2);
  sub_100124D34(v12, v10, type metadata accessor for RunningTask);
  v14 = *(v2 + 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_100087480(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_100087480(v15 > 1, v16 + 1, 1, v14);
  }

  sub_100124E74(v12, type metadata accessor for RunningTask);
  v14[2] = v16 + 1;
  result = sub_100124E0C(v10, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, type metadata accessor for RunningTask);
  *(v2 + 1) = v14;
  return result;
}

uint64_t sub_1001227DC(uint64_t a1, unsigned __int8 *a2)
{
  sub_100117890(a1, v28);
  if (!v31)
  {
    sub_10011D8CC(v28);
    return 0;
  }

  if (v31 == 1)
  {
    sub_1000197E0(v28);
    return 0;
  }

  v6 = *a2;
  v7 = a1 + *(type metadata accessor for RunningTask() + 28);
  v8 = v7 + *(type metadata accessor for Task.Logger(0) + 20);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v11 < 0)
  {
    v14 = *(v8 + 16);
  }

  else
  {
    v12 = *(v8 + 40);
    v13 = *(v8 + 32);
    sub_100018BD0(*v8, *(v8 + 8), *(v8 + 16), v11);
  }

  sub_100117890(a1, v28);
  if (v31)
  {
    if (v31 == 1)
    {
      sub_1000197E0(v28);
    }

    else if (v29 | (v30 << 32) || v28[3] | v28[4] | v28[0] | v28[2] | v28[1])
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v15 = sub_1004A4A54();
      v16 = sub_1004A5FF4();
      if (os_log_type_enabled(v15, v16))
      {
        v26 = swift_slowAlloc();
        LODWORD(v32) = v6;
        v21 = v26;
        v22 = swift_slowAlloc();
        v28[0] = v22;
        *v21 = 68158210;
        *(v21 + 4) = 2;
        *(v21 + 8) = 256;
        *(v21 + 10) = v32;

        *(v21 + 11) = 2082;
        v27 = sub_10015BA6C(v10, v9, v28);

        *(v21 + 13) = v27;
        v25 = "[%.*hhx-%{public}s] Pruning failed task";
        goto LABEL_17;
      }

LABEL_20:

      swift_bridgeObjectRelease_n();
      goto LABEL_21;
    }
  }

  else
  {
    sub_10011D8CC(v28);
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v15 = sub_1004A4A54();
  v16 = sub_1004A5FF4();
  if (!os_log_type_enabled(v15, v16))
  {
    goto LABEL_20;
  }

  v17 = swift_slowAlloc();
  v32 = v2;
  v18 = a2;
  v19 = v10;
  v20 = v6;
  v21 = v17;
  v22 = swift_slowAlloc();
  v28[0] = v22;
  *v21 = 68158210;
  *(v21 + 4) = 2;
  *(v21 + 8) = 256;
  *(v21 + 10) = v20;

  *(v21 + 11) = 2082;
  v23 = v19;
  a2 = v18;
  v24 = sub_10015BA6C(v23, v9, v28);

  *(v21 + 13) = v24;
  v25 = "[%.*hhx-%{public}s] Pruning completed task";
LABEL_17:
  _os_log_impl(&_mh_execute_header, v15, v16, v25, v21, 0x15u);
  sub_1000197E0(v22);

LABEL_21:
  sub_10011C624(*a2);
  return 1;
}

void sub_100122B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for State.Logger();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 8);
  v13 = (v4 + 8);
  v15 = *(v14 + 16);

  v16 = sub_1001235E4(v13, a1, a2, a3);
  v17 = *(*v13 + 16);
  if (v17 < v16)
  {
    __break(1u);
  }

  else
  {
    sub_1001650F0(v16, v17);
    v18 = *(*v13 + 16);
    v19 = v15 - v18;
    if (v15 != v18)
    {
      sub_100124D34(a4, v12, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v20 = sub_1004A4A54();
      v21 = sub_1004A6004();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 68158208;
        *(v22 + 4) = 2;
        *(v22 + 8) = 256;
        v23 = v12[*(v9 + 20)];
        sub_100124E74(v12, type metadata accessor for State.Logger);
        *(v22 + 10) = v23;
        *(v22 + 11) = 2048;
        *(v22 + 13) = v19;
        _os_log_impl(&_mh_execute_header, v20, v21, "[%.*hhx] Pruned %ld mailbox task(s) without mailbox affinity.", v22, 0x15u);
      }

      else
      {
        sub_100124E74(v12, type metadata accessor for State.Logger);
      }
    }
  }
}

unsigned int *sub_100122D18(unsigned int *result, uint64_t a2, uint64_t a3)
{
  if (*(*(v3 + 8) + 16))
  {
    v5 = result;
    sub_100124250(result, a3);
    __chkstk_darwin(v7);
    v10[0] = v5;
    v10[1] = a2;
    v8 = sub_100122508(sub_100124CD8);
    __chkstk_darwin(v8);
    v10[2] = v3;
    v10[3] = a3;
    result = sub_10015C69C(sub_100124D14, v10);
    v9 = *(*(v3 + 8) + 16);
    if (v9 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_1001650F0(result, v9);
    }
  }

  return result;
}

uint64_t sub_100122E24(uint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for RunningTask();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = *(a2 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v24 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v10, 0);
    v11 = v24;
    v12 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    do
    {
      sub_100124D34(v12, v9, type metadata accessor for RunningTask);
      sub_100124D34(v9, v6, type metadata accessor for RunningTask);
      v13 = sub_1004A5824();
      v15 = v14;
      sub_100124E74(v9, type metadata accessor for RunningTask);
      v24 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_100091A08((v16 > 1), v17 + 1, 1);
        v11 = v24;
      }

      v11[2] = v17 + 1;
      v18 = &v11[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
      v12 += v22;
      --v10;
    }

    while (v10);
  }

  v24 = v11;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v19 = sub_1004A5614();

  return v19;
}

uint64_t sub_10012304C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientCommand(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100124D34(a1, v9, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 10:
      v17 = *v9;

      v18 = v9[2];

      v19 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v20 = *(v19 + 64);
      sub_100014D40(*(v9 + *(v19 + 80)), *(v9 + *(v19 + 80) + 8));
      v21 = &qword_1005D0F20;
      v22 = &qword_1004E9390;
      v23 = v9 + v20;
      goto LABEL_10;
    case 15:
      v24 = *(v9 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48));
      goto LABEL_9;
    case 16:
      v25 = *(v9 + *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48) + 8);
LABEL_9:

      v21 = &unk_1005D91B0;
      v22 = &unk_1004CF400;
      v23 = v9;
LABEL_10:
      sub_100025F40(v23, v21, v22);
      goto LABEL_3;
    case 17:
    case 18:
      v13 = v9 + *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48);
      v14 = *v13;
      v15 = *(v13 + 2);
      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
      v16 = sub_1001232E0(v14, v15, a2, a3);

      v11 = v16 ^ 1;
      return v11 & 1;
    case 19:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
      return v11 & 1;
    default:
      sub_100124E74(v9, type metadata accessor for ClientCommand);
LABEL_3:
      v11 = 1;
      return v11 & 1;
  }
}

uint64_t sub_1001232E0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RunningTask();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v16 = a2 | (a2 << 32);
    v27 = a1;
    v26 = (a1 + 32);
    do
    {
      sub_100124D34(v14 + v15 * v13, v11, type metadata accessor for RunningTask);
      sub_100117890(v11, v28);
      if (v29 == 1)
      {
        sub_1000B364C(v28, v30);
        v17 = v31;
        v18 = v32;
        sub_10002587C(v30, v31);
        (*(v18 + 32))(&v33, v17, v18);
        v37 = v34;
        v38 = v35;
        v36 = v33;
        sub_1000D69D0(&v36);
        if ((v38 | (v38 << 32)) != v16)
        {
          sub_100124E74(v11, type metadata accessor for RunningTask);
          sub_10009DA94(&v37);
          goto LABEL_17;
        }

        v19 = *(v37 + 16);
        if (v19 != *(v27 + 16))
        {
          goto LABEL_16;
        }

        if (v19 && v37 != v27)
        {
          v20 = (v37 + 32);
          v21 = v26;
          while (*v20 == *v21)
          {
            ++v20;
            ++v21;
            if (!--v19)
            {
              goto LABEL_13;
            }
          }

LABEL_16:
          sub_10009DA94(&v37);
          sub_100124E74(v11, type metadata accessor for RunningTask);
LABEL_17:
          sub_1000197E0(v30);
          goto LABEL_4;
        }

LABEL_13:
        sub_10009DA94(&v37);
        v22 = v31;
        v23 = v32;
        sub_10002587C(v30, v31);
        v24 = (*(v23 + 56))(v22, v23);
        sub_100124E74(v11, type metadata accessor for RunningTask);
        sub_1000197E0(v30);
        if (v24)
        {
          return 1;
        }
      }

      else
      {
        sub_100124E74(v11, type metadata accessor for RunningTask);
        sub_10011D8CC(v28);
      }

LABEL_4:
      ++v13;
    }

    while (v13 != v12);
  }

  return 0;
}

uint64_t sub_1001235E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for RunningTask();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - v15;
  __chkstk_darwin(v14);
  v18 = &v45 - v17;
  v48 = a1;
  v19 = *a1;

  v20 = sub_1001240FC(v19, a2, a3);
  LODWORD(v54) = v21;

  v55 = v4;
  if (v4)
  {
  }

  v51 = v18;
  v47 = v16;
  v53 = v20;

  if (v54)
  {
    v53 = *(v19 + 16);

LABEL_8:

    return v53;
  }

  v45 = a4;
  v46 = v13;
  v49 = a3;
  v50 = a2;
  v23 = v53 + 1;
  if (!__OFADD__(v53, 1))
  {
    v24 = v19;
    v26 = (v19 + 16);
    v25 = *(v19 + 16);
    v27 = v51;
    if (v23 == v25)
    {
LABEL_7:

      goto LABEL_8;
    }

    while (v23 < v25)
    {
      v28 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v54 = v24;
      v29 = v24 + v28;
      v30 = *(v52 + 72);
      sub_100124D34(v24 + v28 + v30 * v23, v27, type metadata accessor for RunningTask);
      v31 = v55;
      v32 = sub_100123C80(v27, v50, v49);
      v33 = v27;
      v34 = v32;
      result = sub_100124E74(v33, type metadata accessor for RunningTask);
      v55 = v31;
      if (v31)
      {
      }

      if (v34)
      {
        v27 = v51;
        v24 = v54;
      }

      else
      {
        v35 = v53;
        if (v23 == v53)
        {
          v27 = v51;
          v24 = v54;
        }

        else
        {
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v36 = *v26;
          if (v53 >= v36)
          {
            goto LABEL_27;
          }

          v37 = v30 * v53;
          result = sub_100124D34(&v29[v30 * v53], v47, type metadata accessor for RunningTask);
          if (v23 >= v36)
          {
            goto LABEL_28;
          }

          v38 = v30 * v23;
          v39 = &v29[v30 * v23];
          v40 = v46;
          sub_100124D34(v39, v46, type metadata accessor for RunningTask);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1001399D0(v54);
          }

          v41 = v47;
          v27 = v51;
          v42 = v54;
          v43 = v54 + v28;
          v44 = &v43[v37];
          v24 = v54;
          result = sub_1001241EC(v40, v44);
          if (v23 >= v42[2])
          {
            goto LABEL_29;
          }

          result = sub_1001241EC(v41, &v43[v38]);
          *v48 = v24;
          v35 = v53;
        }

        v53 = v35 + 1;
      }

      ++v23;
      v26 = v24 + 2;
      v25 = v24[2];
      if (v23 == v25)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1001239AC()
{
  v1 = v0;
  v31 = type metadata accessor for TaskHistory.Running(0);
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005D0F78, &qword_1004D6350);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v27 - v12;
  v32 = *v1;
  v14 = (v2 + 56);
  v15 = (v2 + 48);
  v16 = v1[3];
  v30 = v1[2];
  v28 = v2;
  v29 = v16;
  while (1)
  {
    v17 = *(v32 + 16);
    v18 = v1[1];
    if (v18 == v17)
    {
      v19 = 1;
      goto LABEL_6;
    }

    if (v18 >= v17)
    {
      break;
    }

    sub_100124D34(v32 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v18, v13, type metadata accessor for TaskHistory.Running);
    v19 = 0;
    v1[1] = v18 + 1;
LABEL_6:
    v20 = v31;
    (*v14)(v13, v19, 1, v31);
    sub_100124D9C(v13, v10);
    v21 = (*v15)(v10, 1, v20);
    if (v21 == 1)
    {
      v26 = 0;
LABEL_12:
      HIBYTE(v33) = v21 == 1;
      return v26 | ((v21 == 1) << 40);
    }

    sub_100124E0C(v10, v5, type metadata accessor for TaskHistory.Running);
    v30(&v33, v5);
    v22 = v33;
    v23 = BYTE4(v33);
    sub_100124E74(v5, type metadata accessor for TaskHistory.Running);
    v34 = v22;
    v35 = v23;
    v24 = v1[5];
    result = (v1[4])(&v34);
    if (result)
    {
      v25 = &_mh_execute_header;
      if (!v23)
      {
        v25 = 0;
      }

      v26 = v25 | v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100123C68@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 4))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_100123C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100117890(a1, v39);
  if (v40)
  {
    if (v40 == 1)
    {
      sub_1000B364C(v39, v36);
      v6 = v37;
      v7 = v38;
      sub_10002587C(v36, v37);
      (*(v7 + 32))(&v41, v6, v7);
      v8 = v42;
      v9 = v43;
      v44 = v41;
      sub_1000D69D0(&v44);
      sub_1000197E0(v36);
      sub_10011AF58();
      if (v10)
      {
      }

      else
      {
        v12 = *(a3 + 16);
        v13 = a3 + 32;
        if (a2)
        {
          sub_10015C0B4(v8, v9, v13, v12, (a2 + 16));
        }

        else
        {
          sub_10015C014(v8, v9, v13, v12);
        }

        v15 = v14;

        if (v15)
        {
          v16 = a1 + *(type metadata accessor for RunningTask() + 28);
          v17 = v16 + *(type metadata accessor for Task.Logger(0) + 20);
          v19 = *v17;
          v18 = *(v17 + 8);
          v20 = *(v17 + 16);
          v21 = *(v17 + 24);
          v22 = *(v17 + 32);
          v46 = *(v17 + 40);
          if (v21 < 0)
          {
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v23 = sub_1004A4A54();
            v30 = sub_1004A6004();
            if (!os_log_type_enabled(v23, v30))
            {

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              return 1;
            }

            v31 = swift_slowAlloc();
            v36[0] = swift_slowAlloc();
            *v31 = 68159235;
            v45 = v30;
            *(v31 + 4) = 2;
            *(v31 + 8) = 256;
            *(v31 + 10) = v19;
            *(v31 + 11) = 2082;

            v32 = sub_10015BA6C(v18, v20, v36);

            *(v31 + 13) = v32;
            *(v31 + 21) = 1040;
            *(v31 + 23) = 2;
            *(v31 + 27) = 512;

            *(v31 + 29) = v21;

            *(v31 + 31) = 2160;
            *(v31 + 33) = 0x786F626C69616DLL;
            *(v31 + 41) = 2085;

            *&v39[0] = v22;
            DWORD2(v39[0]) = v46;
            v33 = sub_1004A5824();
            v35 = sub_10015BA6C(v33, v34, v36);

            *(v31 + 43) = v35;
            _os_log_impl(&_mh_execute_header, v23, v45, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Pruning. No mailbox affinity, not targeting mailboxes-to-be-selected.", v31, 0x33u);
            swift_arrayDestroy();
          }

          else
          {

            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v23 = sub_1004A4A54();
            v24 = sub_1004A6004();
            if (!os_log_type_enabled(v23, v24))
            {

              sub_100011284(v19, v18, v20, v21);
              return 1;
            }

            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *&v39[0] = v26;
            *v25 = 68158210;
            *(v25 + 4) = 2;
            *(v25 + 8) = 256;
            *(v25 + 10) = v19;
            *(v25 + 11) = 2082;
            v27 = sub_10015BA6C(v18, v20, v39);
            v28 = v18;
            v29 = v27;
            sub_100011284(v19, v28, v20, v21);
            *(v25 + 13) = v29;
            _os_log_impl(&_mh_execute_header, v23, v24, "[%.*hhx-%{public}s] Pruning. No mailbox affinity, not targeting mailboxes-to-be-selected.", v25, 0x15u);
            sub_1000197E0(v26);
          }

          return 1;
        }
      }
    }
  }

  else
  {
    sub_10011D8CC(v39);
  }

  return 0;
}

uint64_t sub_1001240FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(type metadata accessor for RunningTask() - 8);
  v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = sub_100123C80(v10, a2, a3);
    if (v3 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v4 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1001241EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningTask();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100124250(unsigned int *a1, uint64_t a2)
{
  v84 = a2;
  v82 = type metadata accessor for State.Logger();
  v3 = *(*(v82 - 8) + 64);
  v4 = __chkstk_darwin(v82);
  v80 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v78 = &v78 - v7;
  v8 = __chkstk_darwin(v6);
  v81 = &v78 - v9;
  __chkstk_darwin(v8);
  v79 = &v78 - v10;
  v11 = a1[6];
  v12 = *(a1 + 4);
  v13 = *(a1 + 5);
  v85 = a1;
  v14 = v12[2];
  v92 = _swiftEmptyArrayStorage;
  sub_100091A08(0, v14, 0);
  v15 = v92;
  LODWORD(v83) = v11;
  v86 = v13;
  v87 = v12;
  ConnectionCommandIDSet.makeIterator()(v11, v12, v13);
  if (!v14)
  {
LABEL_6:
    sub_1004A6AA4();
    if ((v91 & 1) == 0)
    {
      v48 = v90;
      do
      {
        v90 = 0;
        v91 = 0xE000000000000000;
        v88 = v48;
        v89 = HIDWORD(v48);
        sub_1004A6934();
        v49 = v90;
        v50 = v91;
        v92 = v15;
        v52 = v15[2];
        v51 = v15[3];
        if (v52 >= v51 >> 1)
        {
          sub_100091A08((v51 > 1), v52 + 1, 1);
          v15 = v92;
        }

        v15[2] = v52 + 1;
        v53 = &v15[2 * v52];
        v53[4] = v49;
        v53[5] = v50;
        sub_1004A6AA4();
        v48 = v90;
      }

      while (v91 != 1);
    }

    v90 = v15;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v22 = sub_1004A5614();
    v24 = v23;

    v25 = v87;
    v26 = ConnectionCommandIDSet.normalCommandCount.getter(v83, v87, v86);
    v27 = v85;
    v28 = *(v85 + 1);
    if (v28)
    {
      v29 = v85[4];
      if (v26)
      {
        v30 = v81;
        sub_100124D34(v84, v81, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v31 = sub_1004A4A54();
        v32 = sub_1004A6014();

        LODWORD(v80) = v32;
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          LODWORD(v84) = v29;
          v34 = v30;
          v35 = v33;
          v36 = swift_slowAlloc();
          v83 = v22;
          v92 = v36;
          *v35 = 68159235;
          *(v35 + 4) = 2;
          *(v35 + 8) = 256;
          v37 = *(v34 + *(v82 + 20));
          sub_100124E74(v34, type metadata accessor for State.Logger);
          *(v35 + 10) = v37;
          *(v35 + 11) = 2082;
          v38 = ConnectionID.debugDescription.getter(*v27);
          v40 = sub_10015BA6C(v38, v39, &v92);

          *(v35 + 13) = v40;
          *(v35 + 21) = 2048;
          v41 = v25[2];

          *(v35 + 23) = v41;

          *(v35 + 31) = 2082;
          v42 = sub_10015BA6C(v83, v24, &v92);

          *(v35 + 33) = v42;
          *(v35 + 41) = 2160;
          *(v35 + 43) = 0x786F626C69616DLL;
          *(v35 + 51) = 2085;
          v90 = v28;
          LODWORD(v91) = v84;

          v43 = sub_1004A5824();
          v45 = sub_10015BA6C(v43, v44, &v92);

          *(v35 + 53) = v45;
          v46 = "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s were running and '%{sensitive,mask.mailbox}s' was selected.";
          v47 = v80;
LABEL_20:
          _os_log_impl(&_mh_execute_header, v31, v47, v46, v35, 0x3Du);
          swift_arrayDestroy();
LABEL_25:

          return;
        }
      }

      else
      {
        v83 = v22;
        v30 = v79;
        sub_100124D34(v84, v79, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v31 = sub_1004A4A54();
        v56 = sub_1004A6034();

        if (os_log_type_enabled(v31, v56))
        {
          v57 = swift_slowAlloc();
          LODWORD(v81) = v56;
          v58 = v30;
          v35 = v57;
          v59 = swift_slowAlloc();
          LODWORD(v84) = v29;
          v92 = v59;
          *v35 = 68159235;
          *(v35 + 4) = 2;
          *(v35 + 8) = 256;
          v60 = *(v58 + *(v82 + 20));
          sub_100124E74(v58, type metadata accessor for State.Logger);
          *(v35 + 10) = v60;
          *(v35 + 11) = 2082;
          v61 = ConnectionID.debugDescription.getter(*v27);
          v63 = sub_10015BA6C(v61, v62, &v92);

          *(v35 + 13) = v63;
          *(v35 + 21) = 2048;
          v64 = v25[2];

          *(v35 + 23) = v64;

          *(v35 + 31) = 2082;
          v65 = sub_10015BA6C(v83, v24, &v92);

          *(v35 + 33) = v65;
          *(v35 + 41) = 2160;
          *(v35 + 43) = 0x786F626C69616DLL;
          *(v35 + 51) = 2085;
          v90 = v28;
          LODWORD(v91) = v84;

          v66 = sub_1004A5824();
          v68 = sub_10015BA6C(v66, v67, &v92);

          *(v35 + 53) = v68;
          v46 = "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s  were running and '%{sensitive,mask.mailbox}s' was selected.";
          v47 = v81;
          goto LABEL_20;
        }
      }

      sub_100124E74(v30, type metadata accessor for State.Logger);
    }

    else
    {
      if (v26)
      {
        v54 = v80;
        sub_100124D34(v84, v80, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v31 = sub_1004A4A54();
        v55 = sub_1004A6014();
      }

      else
      {
        v54 = v78;
        sub_100124D34(v84, v78, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v31 = sub_1004A4A54();
        v55 = sub_1004A6034();
      }

      v69 = v55;

      if (os_log_type_enabled(v31, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v83 = v22;
        v90 = v71;
        *v70 = 68158722;
        *(v70 + 4) = 2;
        *(v70 + 8) = 256;
        v72 = *(v54 + *(v82 + 20));
        sub_100124E74(v54, type metadata accessor for State.Logger);
        *(v70 + 10) = v72;
        *(v70 + 11) = 2082;
        v73 = ConnectionID.debugDescription.getter(*v27);
        v75 = sub_10015BA6C(v73, v74, &v90);

        *(v70 + 13) = v75;
        *(v70 + 21) = 2048;
        v76 = v25[2];

        *(v70 + 23) = v76;

        *(v70 + 31) = 2082;
        v77 = sub_10015BA6C(v83, v24, &v90);

        *(v70 + 33) = v77;
        _os_log_impl(&_mh_execute_header, v31, v69, "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s  were running. No mailbox selected.", v70, 0x29u);
        swift_arrayDestroy();
        goto LABEL_25;
      }

      sub_100124E74(v54, type metadata accessor for State.Logger);
    }

    return;
  }

  while (1)
  {
    sub_1004A6AA4();
    if (v91)
    {
      break;
    }

    v16 = v90;
    v90 = 0;
    v91 = 0xE000000000000000;
    v88 = v16;
    v89 = HIDWORD(v16);
    sub_1004A6934();
    v18 = v90;
    v17 = v91;
    v92 = v15;
    v20 = v15[2];
    v19 = v15[3];
    if (v20 >= v19 >> 1)
    {
      sub_100091A08((v19 > 1), v20 + 1, 1);
      v15 = v92;
    }

    v15[2] = v20 + 1;
    v21 = &v15[2 * v20];
    v21[4] = v18;
    v21[5] = v17;
    if (!--v14)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_100124D34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100124D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D0F78, &qword_1004D6350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100124E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100124E74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100124EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100124F60(uint64_t a1)
{
  v2 = type metadata accessor for UntaggedResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100124FE4@<X0>(__int16 a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v12 = sub_10000C9C0(a2, a3);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29[-v15];
  v17 = sub_10000C9C0(&qword_1005CD1A8, &qword_1004CEC28);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v21 = &v29[*(v20 + 56) - v19];
  sub_100124EFC(v9, v21);
  type metadata accessor for UntaggedResponse(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((a1 & 0x100) == 0)
  {
    if (EnumCaseMultiPayload == 12)
    {
      v23 = v21[1];
      v31[0] = *v21;
      v31[1] = v23;
      v31[2] = v21[2];
      a4();
      return sub_100016C68(v31);
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 11)
  {
LABEL_9:
    sub_100124F60(v21);
    return (*(v13 + 56))(a5, 1, 1, v12);
  }

  v25 = *v21;
  sub_100016D2C();
  sub_1004A7114();
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = (v25 + 32);
    do
    {
      v28 = *v27++;
      v30 = v28;
      MessageIdentifierSet.insert(_:)(v31, &v30, v12);
      --v26;
    }

    while (v26);
  }

  sub_100025FDC(v16, a5, a2, a3);
  return (*(v13 + 56))(a5, 0, 1, v12);
}

Swift::Int sub_100125208()
{
  result = sub_100093190(&off_100599080);
  qword_1005DDF88 = result;
  return result;
}

void sub_100125230(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = *(v1 + 8);
  sub_1000118A4(a1, v21 - v8);
  sub_1000118A4(a1, v6);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 68159491;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = &v6[*(v3 + 20)];
    *(v13 + 10) = *v14;
    *(v13 + 11) = 2082;
    v15 = &v9[*(v3 + 20)];
    *(v13 + 13) = sub_10015BA6C(*(v15 + 1), *(v15 + 2), &v23);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v16 = *(v14 + 12);
    sub_100011908(v6);
    *(v13 + 29) = v16;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v17 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);

    sub_100011908(v9);
    v21[1] = v17;
    v22 = v15;
    v18 = sub_1004A5824();
    v20 = sub_10015BA6C(v18, v19, &v23);

    *(v13 + 43) = v20;
    *(v13 + 51) = 1024;
    *(v13 + 53) = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for search #%u.", v13, 0x39u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v6);

    sub_100011908(v9);
  }
}

unint64_t sub_1001254C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  if ((sub_1001120F4(a1, a2) & 1) != 0 || (result = sub_1001257E4(), (~result & 0xF000000000000007) == 0))
  {
    v6 = sub_10000C9C0(&qword_1005D10F8, &qword_1004D6478);
    v7 = *(*(v6 - 8) + 56);

    return v7(a3, 1, 1, v6);
  }

  v8 = *v3 - 1;
  if (__OFSUB__(*v3, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = *v3 - 0x100000000 < 0;
  if (v8 > 0xFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v3 - 0x7FFFFFFFFFFFFFFFLL < 0;
  if (v8 > 0x7FFFFFFFFFFFFFFELL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(*v3))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (*(v3 + 146))
  {
    *a3 = result;
    type metadata accessor for ClientCommand(0);
  }

  else
  {
    v10 = result;
    if (*(v3 + 145))
    {
      sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
      v11 = *(type metadata accessor for SearchReturnOption() - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1004CEAA0;
    }

    else
    {
      v22 = *v3;
      v23 = 1;
      v15 = sub_1000796C4();
      static MessageIdentifier.... infix(_:_:)(&v23, &v22, &type metadata for SequenceNumber, v15, &v24);
      v16 = v24;
      sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
      v17 = *(type metadata accessor for SearchReturnOption() - 8);
      v18 = *(v17 + 72);
      v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1004CEAA0;
      v20 = v14 + v19;
      *v20 = v16;
      *(v20 + 8) = 0;
    }

    swift_storeEnumTagMultiPayload();
    *a3 = v10;
    a3[1] = v14;
    type metadata accessor for ClientCommand(0);
  }

  swift_storeEnumTagMultiPayload();
  v21 = sub_10000C9C0(&qword_1005D10F8, &qword_1004D6478);
  return (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
}

unint64_t sub_1001257E4()
{
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v11 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v22 = *(v0 + 128);
  if (!*(v22 + 16))
  {
    v34 = *(v0 + 120);
    sub_1000B3664(v34);
    return v34;
  }

  v46 = v0;
  v47 = v21;
  v49 = v10;
  v50 = v20;
  v51 = v1;
  v52 = v14;
  v45 = &v44 - v19;
  v53 = v18;
  v23 = sub_100016948();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v23, v54);
  v55 = v54[0];
  v54[4] = Range<>.init<A>(_:)(&v55, &type metadata for UID, v23);
  sub_100016D2C();
  v48 = v7;
  sub_1004A7124();
  result = sub_1004A7114();
  v25 = *(v22 + 16);
  if (!v25)
  {
LABEL_8:
    v29 = v48;
    v28 = v49;
    MessageIdentifierSet.subtracting(_:)(v4, v49);
    sub_100025F40(v29, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
      v32 = 1;
      v31 = v52;
    }

    else
    {
      v30 = v47;
      sub_100025FDC(v28, v47, &unk_1005D91B0, &unk_1004CF400);
      v31 = v52;
      sub_100025FDC(v30, v52, &qword_1005CD1D0, &unk_1004CF2C0);
      v32 = 0;
    }

    v33 = v53;
    v35 = v50;
    v36 = *(v50 + 56);
    v36(v31, v32, 1, v53);
    if ((*(v35 + 48))(v31, 1, v33) == 1)
    {
      sub_100025F40(v31, &qword_1005CD518, &qword_1004CF2F0);
      return 0xF000000000000007;
    }

    else
    {
      v37 = v45;
      sub_100025FDC(v31, v45, &qword_1005CD1D0, &unk_1004CF2C0);
      v38 = swift_allocObject();
      sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1004D01D0;
      sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
      v40 = swift_allocBox();
      v42 = v41;
      sub_10000E268(v37, v41, &qword_1005CD1D0, &unk_1004CF2C0);
      v36(v42, 0, 1, v33);
      v43 = *(v46 + 120);
      *(v39 + 32) = v40 | 0xA000000000000000;
      *(v39 + 40) = v43;
      sub_1000B3664(v43);
      sub_100025F40(v37, &qword_1005CD1D0, &unk_1004CF2C0);
      *(v38 + 16) = v39;
      return v38 | 0xC000000000000000;
    }
  }

  v26 = 0;
  while (v26 < *(v22 + 16))
  {
    v54[0] = *(v22 + 32 + 8 * v26);
    result = Range<>.init<A>(_:)(v54, &type metadata for UID, v23);
    v55 = result;
    if (HIDWORD(result) != result)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v27 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      result = v27(v54, 0);
    }

    if (v25 == ++v26)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100125D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  sub_1000118A4(a2, v28 - v11);
  sub_1000118A4(a2, v9);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v13 = sub_1004A4A54();
  v14 = sub_1004A6014();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 68159235;
    *(v15 + 4) = 2;
    *(v15 + 8) = 256;
    v16 = *(v6 + 20);
    v28[0] = a1;
    v17 = &v9[v16];
    *(v15 + 10) = v9[v16];
    *(v15 + 11) = 2082;
    v18 = &v12[*(v6 + 20)];
    *(v15 + 13) = sub_10015BA6C(*(v18 + 1), *(v18 + 2), &v30);
    *(v15 + 21) = 1040;
    *(v15 + 23) = 2;
    *(v15 + 27) = 512;
    LOWORD(v17) = *(v17 + 12);
    sub_100011908(v9);
    *(v15 + 29) = v17;
    *(v15 + 31) = 2160;
    *(v15 + 33) = 0x786F626C69616DLL;
    *(v15 + 41) = 2085;
    v19 = *(v18 + 4);
    LODWORD(v17) = *(v18 + 10);

    sub_100011908(v12);
    v28[1] = v19;
    v29 = v17;
    v20 = sub_1004A5824();
    v22 = sub_10015BA6C(v20, v21, &v30);

    *(v15 + 43) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search did fail.", v15, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v9);

    sub_100011908(v12);
  }

  v23 = *(v3 + 8);
  v24 = *(v3 + 16);
  v25 = *(v3 + 24);
  v26 = type metadata accessor for SearchMailbox();
  return sub_1000BB408(v23, v24, v25, v3 + *(v26 + 52));
}

uint64_t sub_100125FFC()
{
  if (qword_1005CCE90 != -1)
  {
    swift_once();
  }
}

Swift::Int sub_100126100()
{
  v1 = *v0;
  v2 = v0[4];
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

void sub_100126160()
{
  v1 = v0[4];
  sub_1004A6EE4(*v0);
  sub_1004A6EB4(v1 | (v1 << 32));
}

Swift::Int sub_1001261A0()
{
  v1 = *v0;
  v2 = v0[4];
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

uint64_t sub_10012627C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10012634C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SearchMailbox()
{
  result = qword_1005D0FD8;
  if (!qword_1005D0FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100126448()
{
  sub_10002AABC();
  if (v0 <= 0x3F)
  {
    sub_100126524();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100126524()
{
  if (!qword_1005CFAD8)
  {
    sub_10000DEFC(&qword_1005CD1D0, &unk_1004CF2C0);
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CFAD8);
    }
  }
}

unint64_t sub_100126588()
{
  result = qword_1005D1030;
  if (!qword_1005D1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1030);
  }

  return result;
}

unint64_t sub_1001265DC(uint64_t a1)
{
  result = sub_100126604();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100126604()
{
  result = qword_1005D10E8;
  if (!qword_1005D10E8)
  {
    type metadata accessor for SearchMailbox();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D10E8);
  }

  return result;
}

unint64_t sub_100126660()
{
  result = qword_1005D10F0;
  if (!qword_1005D10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D10F0);
  }

  return result;
}

uint64_t sub_1001266B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v71 = a6;
  v76 = a1;
  v11 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  __chkstk_darwin(v11);
  v70 = &v66[-v13];
  v14 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v73 = &v66[-v16];
  v69 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v19 = &v66[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v66[-v21];
  v23 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v66[-v25];
  v27 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v72 = &v66[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v33 = &v66[-v32];
  __chkstk_darwin(v34);
  v77 = &v66[-v35];
  result = sub_100058770(a2, a3, a4);
  if (result)
  {
    if (*(v7 + 146))
    {
      v37 = 256;
    }

    else
    {
      v37 = 0;
    }

    sub_100124ED4(v37 | *(v7 + 145), v26);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      return sub_100025F40(v26, &qword_1005CD510, &unk_1004CF2E0);
    }

    else
    {
      v38 = v77;
      sub_100025FDC(v26, v77, &unk_1005D91B0, &unk_1004CF400);
      v39 = *(v7 + 8);
      v40 = v71;
      sub_1000118A4(v71, v22);
      sub_1000118A4(v40, v19);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v38, v33, &unk_1005D91B0, &unk_1004CF400);
      v41 = sub_1004A4A54();
      v42 = sub_1004A6034();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v71 = v7;
        v44 = v43;
        v45 = swift_slowAlloc();
        v76 = v27;
        v80 = v45;
        *v44 = 68159747;
        v68 = v41;
        *(v44 + 4) = 2;
        *(v44 + 8) = 256;
        v46 = v69;
        v47 = *(v69 + 20);
        v67 = v39;
        v48 = &v19[v47];
        *(v44 + 10) = v19[v47];
        *(v44 + 11) = 2082;
        v49 = &v22[*(v46 + 20)];
        *(v44 + 13) = sub_10015BA6C(*(v49 + 1), *(v49 + 2), &v80);
        *(v44 + 21) = 1040;
        *(v44 + 23) = 2;
        *(v44 + 27) = 512;
        v50 = *(v48 + 12);
        sub_100011908(v19);
        *(v44 + 29) = v50;
        *(v44 + 31) = 2160;
        *(v44 + 33) = 0x786F626C69616DLL;
        *(v44 + 41) = 2085;
        v51 = *(v49 + 4);
        v52 = *(v49 + 10);

        sub_100011908(v22);
        v78 = v51;
        v79 = v52;
        v53 = sub_1004A5824();
        v55 = sub_10015BA6C(v53, v54, &v80);

        *(v44 + 43) = v55;
        *(v44 + 51) = 2048;
        v56 = MessageIdentifierSet.count.getter();
        sub_100025F40(v33, &unk_1005D91B0, &unk_1004CF400);
        *(v44 + 53) = v56;
        *(v44 + 61) = 1024;
        *(v44 + 63) = v67;
        v57 = v68;
        _os_log_impl(&_mh_execute_header, v68, v42, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search returned %ld UIDs for search #%u.", v44, 0x43u);
        swift_arrayDestroy();
        v27 = v76;

        v7 = v71;
      }

      else
      {
        sub_100025F40(v33, &unk_1005D91B0, &unk_1004CF400);
        sub_100011908(v19);

        sub_100011908(v22);
      }

      v58 = v72;
      v59 = v77;
      MessageIdentifierSet.suffix(_:)(*v7, v27, v72);
      v60 = MessageIdentifierSet.count.getter();
      sub_100025F40(v59, &unk_1005D91B0, &unk_1004CF400);
      if (v60 < 1)
      {
        sub_100025F40(v58, &unk_1005D91B0, &unk_1004CF400);
        v64 = 1;
        v63 = v73;
      }

      else
      {
        v61 = v70;
        sub_100025FDC(v58, v70, &unk_1005D91B0, &unk_1004CF400);
        v62 = v61;
        v63 = v73;
        sub_100025FDC(v62, v73, &qword_1005CD1D0, &unk_1004CF2C0);
        v64 = 0;
      }

      (*(v74 + 56))(v63, v64, 1, v75);
      v65 = type metadata accessor for SearchMailbox();
      return sub_1000DA8E4(v63, v7 + *(v65 + 52));
    }
  }

  return result;
}

void sub_100126D54(unint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v51 = a2;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v48[-v15];
  __chkstk_darwin(v17);
  v19 = &v48[-v18];
  __chkstk_darwin(v20);
  v22 = &v48[-v21];
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1000118A4(a6, &v48[-v21]);
      sub_1000118A4(a6, v19);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1000110B0(a1);

      v23 = sub_1004A4A54();
      v24 = sub_1004A6014();
      sub_10001114C(a1);

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v54 = v50;
        *v25 = 68159491;
        *(v25 + 4) = 2;
        *(v25 + 8) = 256;
        v26 = &v19[*(v10 + 20)];
        *(v25 + 10) = *v26;
        *(v25 + 11) = 2082;
        v27 = &v22[*(v10 + 20)];
        *(v25 + 13) = sub_10015BA6C(*(v27 + 1), *(v27 + 2), &v54);
        *(v25 + 21) = 1040;
        *(v25 + 23) = 2;
        *(v25 + 27) = 512;
        LOWORD(v26) = *(v26 + 12);
        sub_100011908(v19);
        *(v25 + 29) = v26;
        *(v25 + 31) = 2160;
        *(v25 + 33) = 0x786F626C69616DLL;
        *(v25 + 41) = 2085;
        v28 = *(v27 + 4);
        LODWORD(v27) = *(v27 + 10);

        sub_100011908(v22);
        v52 = v28;
        v53 = v27;
        v29 = sub_1004A5824();
        v31 = sub_10015BA6C(v29, v30, &v54);

        *(v25 + 43) = v31;
        *(v25 + 51) = 2082;
        v32 = ResponseText.debugDescription.getter(a1, v51, a3);
        v34 = sub_10015BA6C(v32, v33, &v54);

        *(v25 + 53) = v34;
        _os_log_impl(&_mh_execute_header, v23, v24, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search failed with NO %{public}s.", v25, 0x3Du);
        swift_arrayDestroy();

LABEL_7:

        return;
      }

      sub_100011908(v19);

      v47 = v22;
    }

    else
    {
      sub_1000118A4(a6, v16);
      sub_1000118A4(a6, v13);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1000110B0(a1);

      v23 = sub_1004A4A54();
      v35 = sub_1004A6014();
      sub_10001114C(a1);

      if (os_log_type_enabled(v23, v35))
      {
        v36 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v54 = v50;
        *v36 = 68159491;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v37 = *(v10 + 20);
        v49 = v35;
        v38 = &v13[v37];
        *(v36 + 10) = v13[v37];
        *(v36 + 11) = 2082;
        v39 = &v16[*(v10 + 20)];
        *(v36 + 13) = sub_10015BA6C(*(v39 + 1), *(v39 + 2), &v54);
        *(v36 + 21) = 1040;
        *(v36 + 23) = 2;
        *(v36 + 27) = 512;
        LOWORD(v38) = *(v38 + 12);
        sub_100011908(v13);
        *(v36 + 29) = v38;
        *(v36 + 31) = 2160;
        *(v36 + 33) = 0x786F626C69616DLL;
        *(v36 + 41) = 2085;
        v40 = *(v39 + 4);
        LODWORD(v38) = *(v39 + 10);

        sub_100011908(v16);
        v52 = v40;
        v53 = v38;
        v41 = sub_1004A5824();
        v43 = sub_10015BA6C(v41, v42, &v54);

        *(v36 + 43) = v43;
        *(v36 + 51) = 2082;
        v44 = ResponseText.debugDescription.getter(a1, v51, a3);
        v46 = sub_10015BA6C(v44, v45, &v54);

        *(v36 + 53) = v46;
        _os_log_impl(&_mh_execute_header, v23, v49, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search failed with BAD %{public}s.", v36, 0x3Du);
        swift_arrayDestroy();

        goto LABEL_7;
      }

      sub_100011908(v13);

      v47 = v16;
    }

    sub_100011908(v47);
  }
}

uint64_t sub_1001272B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100127300(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 1uLL:
      v52 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v56 = swift_allocObject();
      sub_1000C9F38(a1);
      if ((v52 - 2501) < 0xFFFFFFFFFFFFFDA7 || (v53 - 13) < 0xFFFFFFFFFFFFFFF4 || (v54 - 32) < 0xFFFFFFFFFFFFFFE1)
      {
        goto LABEL_39;
      }

      *(v56 + 16) = v52;
      *(v56 + 24) = v53;
      result = v56 | 4;
      *(v56 + 32) = v54;
      return result;
    case 2uLL:
      v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v33 = swift_allocObject();

      v34 = ByteBufferAllocator.buffer(string:)(v30, v31, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v36 = v35;
      v38 = v37;

      sub_1000C9F38(a1);
      *(v33 + 16) = v34;
      *(v33 + 24) = v36;
      *(v33 + 32) = v38;
      *(v33 + 36) = WORD2(v38);
      result = v33 | 0x1000000000000000;
      *(v33 + 38) = BYTE6(v38);
      return result;
    case 3uLL:
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v42 = swift_allocObject();

      v43 = ByteBufferAllocator.buffer(string:)(v39, v40, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v45 = v44;
      v47 = v46;

      sub_1000C9F38(a1);
      *(v42 + 16) = v43;
      *(v42 + 24) = v45;
      *(v42 + 32) = v47;
      *(v42 + 36) = WORD2(v47);
      *(v42 + 38) = BYTE6(v47);
      return v42 | 0x1000000000000004;
    case 4uLL:
      v22 = sub_100081D78(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 1);
      sub_1000C9F38(a1);
      return v22;
    case 5uLL:
      v59 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v62 = swift_allocObject();

      v63 = ByteBufferAllocator.buffer(string:)(v59, v60, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v65 = v64;
      v67 = v66;

      sub_1000C9F38(a1);
      *(v62 + 16) = v63;
      *(v62 + 24) = v65;
      *(v62 + 32) = v67;
      *(v62 + 36) = WORD2(v67);
      result = v62 | 0x2000000000000000;
      *(v62 + 38) = BYTE6(v67);
      return result;
    case 6uLL:
      v69 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v68 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v70 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v71 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v73 = swift_allocObject();
      *(v73 + 16) = v69;
      *(v73 + 24) = v68;

      v74 = ByteBufferAllocator.buffer(string:)(v70, v71, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      LODWORD(v70) = v75;
      LODWORD(v71) = v76;
      v77 = HIDWORD(v75);
      v78 = HIDWORD(v76);
      v79 = HIWORD(v76);
      sub_1000C9F38(a1);
      *(v73 + 32) = v74;
      *(v73 + 40) = v70;
      *(v73 + 44) = v77;
      *(v73 + 48) = v71;
      *(v73 + 52) = v78;
      result = v73 | 0x6000000000000000;
      *(v73 + 54) = v79;
      return result;
    case 7uLL:
      v48 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v50 = swift_allocObject();
      sub_1000C9E60(v48);
      v51 = sub_100127300(v48);
      sub_1000C9F38(a1);
      *(v50 + 16) = v51;
      return v50 | 0x7000000000000000;
    case 8uLL:
      v89 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v90 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v92 = swift_allocObject();
      sub_1000C9E60(v90);
      sub_1000C9E60(v89);
      *(v92 + 16) = sub_100127300(v89);
      v93 = sub_100127300(v90);
      sub_1000C9F38(a1);
      *(v92 + 24) = v93;
      return v92 | 0x7000000000000004;
    case 9uLL:
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v27 = swift_allocObject();
      sub_1000C9F38(a1);
      if ((v23 - 2501) < 0xFFFFFFFFFFFFFDA7 || (v24 - 13) < 0xFFFFFFFFFFFFFFF4 || (v25 - 32) < 0xFFFFFFFFFFFFFFE1)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        JUMPOUT(0x100127C00);
      }

      *(v27 + 16) = v23;
      *(v27 + 24) = v24;
      *(v27 + 32) = v25;
      return v27 | 0x3000000000000004;
    case 0xAuLL:
      v80 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v81 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v83 = swift_allocObject();

      v84 = ByteBufferAllocator.buffer(string:)(v80, v81, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v86 = v85;
      v88 = v87;

      sub_1000C9F38(a1);
      *(v83 + 16) = v84;
      *(v83 + 24) = v86;
      *(v83 + 32) = v88;
      *(v83 + 36) = WORD2(v88);
      result = v83 | 0x4000000000000000;
      *(v83 + 38) = BYTE6(v88);
      return result;
    case 0xBuLL:
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v14 = swift_allocObject();

      v15 = ByteBufferAllocator.buffer(string:)(v11, v12, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v17 = v16;
      v19 = v18;

      sub_1000C9F38(a1);
      *(v14 + 16) = v15;
      *(v14 + 24) = v17;
      *(v14 + 32) = v19;
      *(v14 + 36) = WORD2(v19);
      result = v14 | 0x5000000000000000;
      *(v14 + 38) = BYTE6(v19);
      return result;
    case 0xCuLL:
      return *(&unk_1004D64D0 + ((a1 + 0x4000000000000000) & 0xFFFFFFFFFFFFFFF8));
    default:
      v1 = *(a1 + 16);
      v2 = *(a1 + 24);
      sub_1000C9E60(v1);
      v4 = sub_100127300(v1);
      sub_1000C9E60(v2);
      v5 = sub_100127300(v2);
      v6 = v5;
      if (((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 0x18)
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 0x18)
        {
          v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v9 = swift_allocObject();
          v101 = v7;

          sub_100081AF4(v8);
          sub_1000B37D8(v6);
          v10 = v4;
LABEL_35:
          sub_1000B37D8(v10);
          sub_1000C9F38(a1);
          *(v9 + 16) = v101;
          return v9 | 0xC000000000000000;
        }

        v97 = swift_allocObject();
        sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004CEAA0;
        *(inited + 32) = v6;

        sub_1000B3664(v6);
        sub_100081AF4(inited);
        sub_1000B37D8(v6);
        sub_1000B37D8(v4);
        sub_1000C9F38(a1);
        *(v97 + 16) = v7;
        return v97 | 0xC000000000000000;
      }

      else
      {
        if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 0x18)
        {
          v94 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v9 = swift_allocObject();
          sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
          v95 = swift_allocObject();
          *(v95 + 16) = xmmword_1004CEAA0;
          *(v95 + 32) = v4;
          v101 = v95;

          sub_100081AF4(v96);
          v10 = v6;
          goto LABEL_35;
        }

        v99 = swift_allocObject();
        sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1004D01D0;
        *(v100 + 32) = v4;
        *(v100 + 40) = v6;
        sub_1000C9F38(a1);
        *(v99 + 16) = v100;
        return v99 | 0xC000000000000000;
      }
  }
}

uint64_t sub_100127C34()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 39, 7);
}

void *sub_100127C84(void *__dst, const void *__src, size_t __len)
{
  if ((__len & 0x8000000000000000) == 0)
  {
    return memmove(__dst, __src, __len);
  }

  __break(1u);
  return __dst;
}

uint64_t sub_100127CA0()
{
  sub_1000B37D8(*(v0 + 16));
  sub_1000B37D8(*(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100127CE0()
{
  sub_1000B37D8(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100127D18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 55, 7);
}

uint64_t sub_100127D58()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100127DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v20 = *(a1 + 16);
  if (!v20)
  {
    return 1;
  }

  v13 = 0;
  v19 = a3;
  v21 = a3 & 0xFE00000000;
  v22 = a1 + 32;
  while (1)
  {
    v23 = v13;
    v14 = *(v22 + 8 * v13);
    if (v21 || v14 < v19)
    {
      break;
    }

LABEL_3:
    v13 = v23 + 1;
    if (v23 + 1 == v20)
    {
      return 1;
    }
  }

  v15 = 0;
  v16 = *(v24 + 16);
  while (v16 != v15)
  {
    sub_10000E268(v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v12, &qword_1005CE300, &qword_1004D0DE0);
    sub_100025FDC(v12, v9, &qword_1005CE300, &qword_1004D0DE0);
    v17 = *v9;
    sub_100025F40(v9 + *(v5 + 48), &qword_1005D05E0, &qword_1004D65C0);
    if (v17 == v14)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_100127F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v200 = a3;
  v201 = a1;
  v4 = sub_1004A5384();
  v197 = *(v4 - 8);
  v198 = v4;
  isa = v197[8].isa;
  __chkstk_darwin(v4);
  v195 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v196 - 8) + 64);
  __chkstk_darwin(v196);
  v193 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v194 = &v172 - v10;
  __chkstk_darwin(v11);
  v188 = &v172 - v12;
  __chkstk_darwin(v13);
  v189 = &v172 - v14;
  v15 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v190 = *(v15 - 8);
  v191 = v15;
  v16 = *(v190 + 64);
  __chkstk_darwin(v15);
  v18 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v172 - v20;
  __chkstk_darwin(v22);
  v24 = &v172 - v23;
  __chkstk_darwin(v25);
  v27 = &v172 - v26;
  __chkstk_darwin(v28);
  v30 = &v172 - v29;
  __chkstk_darwin(v31);
  v33 = &v172 - v32;
  __chkstk_darwin(v34);
  v36 = (&v172 - v35);
  v37 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v40 = (&v172 - v39);
  v41 = sub_1004A4644();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  __chkstk_darwin(v43);
  v45 = &v172 - v44;
  __chkstk_darwin(v46);
  __chkstk_darwin(v47);
  HIDWORD(v53) = -1431655765 * a2;
  LODWORD(v53) = -1431655765 * a2;
  if ((v53 >> 17) > 0x2AAA)
  {
    type metadata accessor for SegmentResequencer.Error(0);
    sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error);
    swift_allocError();
    *v54 = a2;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v178 = v45;
  v179 = v40;
  v180 = v36;
  v183 = v30;
  v177 = v33;
  v181 = v52;
  v55 = v200;
  v175 = v27;
  v176 = v24;
  v182 = v51;
  v173 = v21;
  v174 = v18;
  v187 = &v172 - v49;
  v184 = v48;
  v185 = v50;
  v186 = a2;
  v56 = v201;
  if (_s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0() > 393216)
  {
    v57 = v194;
    sub_1000118A4(v55, v194);
    v58 = v193;
    sub_1000118A4(v55, v193);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v60 = v197;
    v59 = v198;
    v61 = v195;
    (v197[2].isa)(v195, v56, v198);
    v62 = sub_1004A4A54();
    v63 = sub_1004A6014();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v196;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v199 = v62;
      v67 = v57;
      v68 = v66;
      v200 = swift_slowAlloc();
      v206 = v200;
      *v68 = 68159747;
      LODWORD(v192) = v63;
      *(v68 + 4) = 2;
      *(v68 + 8) = 256;
      v69 = v58 + *(v65 + 20);
      *(v68 + 10) = *v69;
      *(v68 + 11) = 2082;
      v70 = v67 + *(v65 + 20);
      *(v68 + 13) = sub_10015BA6C(*(v70 + 8), *(v70 + 16), &v206);
      *(v68 + 21) = 1040;
      *(v68 + 23) = 2;
      *(v68 + 27) = 512;
      v71 = *(v69 + 24);
      sub_100011908(v58);
      *(v68 + 29) = v71;
      *(v68 + 31) = 2160;
      *(v68 + 33) = 0x786F626C69616DLL;
      *(v68 + 41) = 2085;
      v72 = *(v70 + 32);
      LODWORD(v70) = *(v70 + 40);

      sub_100011908(v67);
      v202 = v72;
      LODWORD(v203) = v70;
      v73 = sub_1004A5824();
      v75 = sub_10015BA6C(v73, v74, &v206);

      *(v68 + 43) = v75;
      *(v68 + 51) = 2048;
      v76 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (v60[1].isa)(v61, v59);
      *(v68 + 53) = v76;
      *(v68 + 61) = 1024;
      *(v68 + 63) = 393216;
      v77 = v199;
      _os_log_impl(&_mh_execute_header, v199, v192, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Data length %ld > %u (segment length).", v68, 0x43u);
      swift_arrayDestroy();
    }

    else
    {
      (v60[1].isa)(v61, v59);
      sub_100011908(v58);

      sub_100011908(v57);
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error);
    swift_allocError();
    *v87 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    goto LABEL_17;
  }

  v78 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if ((v78 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  v79 = v78;
  v40 = v199;
  a2 = v183;
  if (HIDWORD(v78))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v81 = v186;
  if (result >= 393216)
  {
    goto LABEL_32;
  }

  v82 = v40[1].isa;
  if (!BYTE4(v40[1].isa))
  {
    if (!v79)
    {
      goto LABEL_32;
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error);
    swift_allocError();
    v89 = v88;
    if (v82 <= v81)
    {
      *v88 = v82;
      v88[1] = v81;
      goto LABEL_17;
    }

    v90 = *(sub_10000C9C0(&qword_1005D1108, &qword_1004D65C8) + 48);
    result = sub_100129238(v199->isa);
    if (!__CFADD__(v81, v79))
    {
      v91 = (v89 + v90);
      *v91 = v81;
      v91[1] = v81 + v79;
      goto LABEL_17;
    }

LABEL_75:
    __break(1u);
    return result;
  }

  if (BYTE4(v40[1].isa) == 1)
  {
    if (v79)
    {
      v83 = v186 + v79;
      if (!__CFADD__(v186, v79))
      {
        if (v82 < v83)
        {
          type metadata accessor for SegmentResequencer.Error(0);
          sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error);
          swift_allocError();
          v85 = v84;
          v86 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          *v85 = v82;
          *(v85 + 4) = v81;
          *(v85 + 8) = v86;
          goto LABEL_17;
        }

        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_74;
    }

    if (v82 <= v186)
    {
      goto LABEL_32;
    }

    v92 = 1;
LABEL_30:
    v83 = v186;
    goto LABEL_31;
  }

  if (!v79)
  {
    v92 = v186 != 0;
    goto LABEL_30;
  }

  v83 = v186 + v79;
  if (__CFADD__(v186, v79))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_26:
  v92 = 0;
LABEL_31:
  LODWORD(v40[1].isa) = v83;
  BYTE4(v40[1].isa) = v92;
LABEL_32:
  v93 = v81 + v79;
  if (__CFADD__(v81, v79))
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v36 = sub_1000860B4(0, *(v36 + 2) + 1, 1, v36);
    goto LABEL_38;
  }

  if (!v79)
  {
    goto LABEL_41;
  }

  v36 = v40->isa;
  sub_100129238(v40->isa);
  v94 = v81 + v79;
  if (sub_1004A4604())
  {
    v95 = v178;
    sub_1004A45C4();
    v96 = v182;
    sub_1004A45D4();
    v97 = v185;
    v201 = v93;
    v98 = *(v185 + 8);
    v99 = v95;
    v100 = v184;
    v98(v99, v184);
    v101 = v189;
    sub_1000118A4(v55, v189);
    v102 = v188;
    sub_1000118A4(v55, v188);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v103 = *(v97 + 16);
    v104 = v181;
    v185 = v97 + 16;
    v199 = v103;
    (v103)(v181, v96, v100);
    v105 = sub_1004A4A54();
    v106 = sub_1004A6014();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      v206 = v200;
      *v107 = 68159747;
      LODWORD(v198) = v106;
      *(v107 + 4) = 2;
      *(v107 + 8) = 256;
      v108 = v196;
      v109 = v104;
      v110 = v102 + *(v196 + 20);
      *(v107 + 10) = *v110;
      *(v107 + 11) = 2082;
      v111 = *(v108 + 20);
      v197 = v105;
      v112 = v98;
      v113 = v102;
      v114 = v101;
      v115 = v101 + v111;
      *(v107 + 13) = sub_10015BA6C(*(v115 + 8), *(v115 + 16), &v206);
      *(v107 + 21) = 1040;
      *(v107 + 23) = 2;
      *(v107 + 27) = 512;
      v116 = *(v110 + 24);
      v117 = v113;
      v98 = v112;
      sub_100011908(v117);
      *(v107 + 29) = v116;
      *(v107 + 31) = 2160;
      *(v107 + 33) = 0x786F626C69616DLL;
      *(v107 + 41) = 2085;
      v118 = *(v115 + 32);
      LODWORD(v110) = *(v115 + 40);

      sub_100011908(v114);
      v202 = v118;
      LODWORD(v203) = v110;
      v119 = sub_1004A5824();
      v121 = sub_10015BA6C(v119, v120, &v206);

      *(v107 + 43) = v121;
      *(v107 + 51) = 2080;
      LODWORD(v112) = v186;
      v204 = v201;
      v205 = v186;
      v202 = 0;
      v203 = 0xE000000000000000;
      sub_1004A6934();
      v207._countAndFlagsBits = 3943982;
      v207._object = 0xE300000000000000;
      sub_1004A5994(v207);
      v122 = v112;
      sub_1004A6934();
      v123 = sub_10015BA6C(v202, v203, &v206);

      *(v107 + 53) = v123;
      *(v107 + 61) = 2080;
      sub_10012A548(&qword_1005D1110, &type metadata accessor for IndexSet);
      v124 = v184;
      v125 = sub_1004A6CE4();
      v127 = v126;
      v98(v109, v124);
      v128 = sub_10015BA6C(v125, v127, &v206);

      *(v107 + 63) = v128;
      v129 = v197;
      _os_log_impl(&_mh_execute_header, v197, v198, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received bytes in range %s -- some of which have previously been received: %s", v107, 0x47u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011908(v102);

      v98(v104, v184);
      sub_100011908(v101);
      v122 = v186;
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error);
    swift_allocError();
    v156 = v155;
    v157 = (v155 + *(sub_10000C9C0(&qword_1005D1108, &qword_1004D65C8) + 48));
    v158 = v187;
    v159 = v184;
    (v199)(v156, v187, v184);
    v160 = v201;
    *v157 = v122;
    v157[1] = v160;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v98(v182, v159);
    return (v98)(v158, v159);
  }

  v131 = v197;
  v130 = v198;
  v132 = v179;
  (v197[2].isa)(v179, v201, v198);
  (v131[7].isa)(v132, 0, 1, v130);
  v133 = *(v191 + 48);
  v55 = v180;
  *v180 = v81;
  *(v55 + 4) = v94;
  sub_100025FDC(v132, v55 + v133, &qword_1005D05E0, &qword_1004D65C0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_38:
  v134 = v185;
  v135 = v190;
  v137 = *(v36 + 2);
  v136 = *(v36 + 3);
  if (v137 >= v136 >> 1)
  {
    v171 = sub_1000860B4(v136 > 1, v137 + 1, 1, v36);
    v134 = v185;
    v36 = v171;
  }

  (*(v134 + 8))();
  *(v36 + 2) = v137 + 1;
  result = sub_100025FDC(v55, v36 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v137, &qword_1005CE300, &qword_1004D0DE0);
  v40->isa = v36;
LABEL_41:
  if (BYTE4(v40[1].isa) != 1)
  {
    return result;
  }

  v138 = v40[1].isa;
  v139 = v40->isa;
  v140 = *(v40->isa + 2);
  if (!v140)
  {
    v148 = v199;
    if (v138)
    {
      return result;
    }

LABEL_58:
    LODWORD(v148[1].isa) = v138;
    BYTE4(v148[1].isa) = 0;
    return result;
  }

  LODWORD(v201) = v138;
  v141 = 0;
  v142 = v191;
  v143 = (*(v190 + 80) + 32) & ~*(v190 + 80);
  v200 = v139;
  v144 = v139 + v143;
  v145 = *(v190 + 72);
  v198 = v144;
  v146 = v177;
  do
  {
    v147 = v145;
    sub_10000E268(v144, v146, &qword_1005CE300, &qword_1004D0DE0);
    sub_100025FDC(v146, a2, &qword_1005CE300, &qword_1004D0DE0);
    if (*(a2 + 4) > v141)
    {
      v141 = *(a2 + 4);
    }

    result = sub_100025F40(a2 + *(v142 + 48), &qword_1005D05E0, &qword_1004D65C0);
    v145 = v147;
    v144 += v147;
    --v140;
  }

  while (v140);
  v138 = v201;
  v148 = v199;
  if (v141 == v201)
  {
    goto LABEL_58;
  }

  v149 = *(v200 + 16);
  if (!v149)
  {
    if (v201)
    {
      return result;
    }

LABEL_61:
    v161 = type metadata accessor for SegmentResequencer.Error(0);
    sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error);
    v199 = v161;
    v192 = swift_allocError();
    v197 = v162;
    v163 = *(v200 + 16);
    if (v163)
    {
      v164 = 0;
      v165 = v191;
      v166 = v174;
      v167 = v173;
      v168 = v198;
      do
      {
        sub_10000E268(v168, v167, &qword_1005CE300, &qword_1004D0DE0);
        sub_100025FDC(v167, v166, &qword_1005CE300, &qword_1004D0DE0);
        if (*(v166 + 4) > v164)
        {
          v164 = *(v166 + 4);
        }

        sub_100025F40(v166 + *(v165 + 48), &qword_1005D05E0, &qword_1004D65C0);
        v168 += v147;
        --v163;
      }

      while (v163);
    }

    else
    {
      v164 = 0;
    }

    v169 = v197;
    v170 = v201;
    LODWORD(v197->isa) = v164;
    HIDWORD(v169->isa) = v170;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v150 = 0;
  v151 = v198;
  v152 = v191;
  v153 = v176;
  v154 = v175;
  do
  {
    sub_10000E268(v151, v154, &qword_1005CE300, &qword_1004D0DE0);
    sub_100025FDC(v154, v153, &qword_1005CE300, &qword_1004D0DE0);
    if (*(v153 + 4) > v150)
    {
      v150 = *(v153 + 4);
    }

    result = sub_100025F40(v153 + *(v152 + 48), &qword_1005D05E0, &qword_1004D65C0);
    v151 += v147;
    --v149;
  }

  while (v149);
  if (v150 >= v201)
  {
    goto LABEL_61;
  }

  return result;
}

uint64_t sub_100129238(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = (&v11 - v5);
  result = sub_1004A4634();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10000E268(v9, v6, &qword_1005CE300, &qword_1004D0DE0);
      result = *v6;
      if (v6[1] < result)
      {
        break;
      }

      sub_1004A45F4();
      result = sub_100025F40(v6, &qword_1005CE300, &qword_1004D0DE0);
      v9 += v10;
      if (!--v8)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100129368@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = &v82 - v9;
  __chkstk_darwin(v10);
  v88 = (&v82 - v11);
  v12 = sub_1004A5384();
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  __chkstk_darwin(v12);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v100 = &v82 - v16;
  __chkstk_darwin(v17);
  v19 = (&v82 - v18);
  v108 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v103 = *(v108 - 8);
  v20 = *(v103 + 64);
  __chkstk_darwin(v108);
  v105 = (&v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v96 = (&v82 - v23);
  v107 = sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
  v101 = *(v107 - 8);
  v24 = *(v101 + 64);
  __chkstk_darwin(v107);
  v94 = (&v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v104 = &v82 - v27;
  __chkstk_darwin(v28);
  v30 = &v82 - v29;
  __chkstk_darwin(v31);
  v98 = &v82 - v32;
  __chkstk_darwin(v33);
  v95 = (&v82 - v34);
  __chkstk_darwin(v35);
  v37 = (&v82 - v36);
  v38 = *v1;
  v97 = sub_100129FEC(*v1, *(v1 + 8) | (*(v1 + 12) << 32));
  v90 = v39;
  if (v40 == 1)
  {
    v86 = v30;
    v83 = v1;
    v87 = v19;
    v85 = v7;
    v99 = v12;
    v84 = a1;
    v41 = _swiftEmptyArrayStorage;
    v42 = v38;
    v91 = *(v38 + 16);
    v106 = v38;
    if (v91)
    {
      v43 = 0;
      v44 = &qword_1005D1118;
      while (v43 < v42[2])
      {
        v102 = v41;
        v45 = v42 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v43;
        v46 = v107;
        v47 = *(v107 + 48);
        v48 = v95;
        *v95 = v43;
        sub_10000E268(v45, v48 + v47, &qword_1005CE300, &qword_1004D0DE0);
        v2 = v44;
        sub_100025FDC(v48, v37, v44, &qword_1004D65D0);
        v49 = v37 + *(v46 + 48);
        v50 = v108;
        v51 = *(v108 + 48);
        v52 = v96;
        *v96 = *v49;
        sub_10000E268(&v49[v51], v52 + v51, &qword_1005D05E0, &qword_1004D65C0);
        v53 = v105;
        sub_100025FDC(v52, v105, &qword_1005CE300, &qword_1004D0DE0);
        a1 = *v53;
        sub_100025F40(v53 + *(v50 + 48), &qword_1005D05E0, &qword_1004D65C0);
        if (v97 > a1 || v90 <= a1)
        {
          v44 = v2;
          sub_100025F40(v37, v2, &qword_1004D65D0);
          v42 = v106;
          v41 = v102;
        }

        else
        {
          v44 = v2;
          sub_100025FDC(v37, v98, v2, &qword_1004D65D0);
          v41 = v102;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100091E68(0, *(v41 + 16) + 1, 1);
            v41 = v109;
          }

          v42 = v106;
          v56 = *(v41 + 16);
          v55 = *(v41 + 24);
          a1 = (v56 + 1);
          if (v56 >= v55 >> 1)
          {
            sub_100091E68(v55 > 1, v56 + 1, 1);
            v41 = v109;
          }

          *(v41 + 16) = a1;
          sub_100025FDC(v98, v41 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v56, v2, &qword_1004D65D0);
        }

        v43 = (v43 + 1);
        if (v91 == v43)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      v109 = v41;

      sub_10012A494(&v109);

      v37 = v109;
      sub_1004A5344();
      v2 = v88;
      v59 = v86;
      v98 = v37[2];
      if (!v98)
      {
        v69 = *(v89 + 32);
        v68 = (v89 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
LABEL_24:
        v43 = v87;
        v2 = v99;
        v90 = v68;
        v102 = v69;
        v69(v87, v100, v99);
        v70 = v37[2];
        if (v70)
        {
          v109 = _swiftEmptyArrayStorage;
          sub_100091C48(0, v70, 0);
          v41 = v109;
          v71 = v37 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
          v72 = *(v101 + 72);
          do
          {
            v73 = v104;
            sub_10000E268(v71, v104, &qword_1005D1118, &qword_1004D65D0);
            v74 = v94;
            sub_100025FDC(v73, v94, &qword_1005D1118, &qword_1004D65D0);
            v75 = *v74;
            sub_100025F40(v74 + *(v107 + 48) + *(v108 + 48), &qword_1005D05E0, &qword_1004D65C0);
            v109 = v41;
            v77 = *(v41 + 16);
            v76 = *(v41 + 24);
            if (v77 >= v76 >> 1)
            {
              sub_100091C48((v76 > 1), v77 + 1, 1);
              v41 = v109;
            }

            *(v41 + 16) = v77 + 1;
            *(v41 + 8 * v77 + 32) = v75;
            v71 += v72;
            --v70;
          }

          while (v70);

          v2 = v99;
          v43 = v87;
          v42 = v106;
        }

        else
        {

          v41 = _swiftEmptyArrayStorage;
        }

        a1 = *(v41 + 16);
        v37 = v85;
        if (!a1)
        {

LABEL_39:
          v81 = v84;
          v102(v84, v43, v2);
          return (*(v89 + 56))(v81, 0, 1, v2);
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_33:
          v78 = *(v89 + 56);
          v79 = 32;
          do
          {
            v80 = *(v41 + v79);
            v78(v37, 1, 1, v2);
            if ((v80 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v80 >= *(v106 + 16))
            {
              goto LABEL_43;
            }

            sub_10012A590(v37, v106 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v80 + *(v108 + 48));
            v79 += 8;
            a1 = (a1 - 1);
          }

          while (a1);

          *v83 = v106;
          goto LABEL_39;
        }

LABEL_44:
        v106 = sub_1001398A4(v42);
        goto LABEL_33;
      }

      v41 = 0;
      v95 = (v89 + 8);
      v43 = &qword_1005D1118;
      a1 = &qword_1004D65D0;
      v96 = (v89 + 32);
      v97 = (v89 + 48);
      v90 = (v89 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v91 = v37;
      while (v41 < v37[2])
      {
        v60 = v41;
        sub_10000E268(v37 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v41, v59, &qword_1005D1118, &qword_1004D65D0);
        v61 = v104;
        sub_10000E268(v59, v104, &qword_1005D1118, &qword_1004D65D0);
        v62 = v61 + *(v107 + 48);
        v63 = *(v108 + 48);
        v64 = v105;
        sub_100025FDC(v62 + v63, v105 + v63, &qword_1005D05E0, &qword_1004D65C0);
        sub_100025FDC(v64 + v63, v2, &qword_1005D05E0, &qword_1004D65C0);
        v65 = v93;
        sub_10000E268(v2, v93, &qword_1005D05E0, &qword_1004D65C0);
        v66 = v2;
        v67 = v99;
        if ((*v97)(v65, 1, v99) == 1)
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v42 = v92;
        v102 = *v96;
        v102(v92, v65, v67);
        sub_1004A5354();
        v41 = v60 + 1;
        (*v95)(v42, v67);
        sub_100025F40(v66, &qword_1005D05E0, &qword_1004D65C0);
        sub_100025F40(v59, &qword_1005D1118, &qword_1004D65D0);
        v2 = v66;
        v37 = v91;
        if (v98 == v60 + 1)
        {
          v42 = v106;
          v68 = v90;
          v69 = v102;
          goto LABEL_24;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v57 = *(v89 + 56);

  return v57(a1, 1, 1, v12);
}

uint64_t sub_100129E64(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  result = sub_1004A4634();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_10000E268(v10, v6, &qword_1005CE300, &qword_1004D0DE0);
      v12 = sub_1004A5384();
      if ((*(*(v12 - 8) + 48))(&v6[v9], 1, v12) != 1)
      {
        result = *v6;
        if (*(v6 + 1) < result)
        {
          __break(1u);
          return result;
        }

        sub_1004A45F4();
      }

      result = sub_100025F40(v6, &qword_1005CE300, &qword_1004D0DE0);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t sub_100129FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4614();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_1004A4644();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v23 = &v41 - v22;
  if ((a2 & 0xFFFFFFFFFFLL) != 0)
  {
    v46 = a2 & 0xFFFFFFFFFFLL;
    v47 = v21;
    v45 = a2;
    v48 = a1;
    sub_100129238(a1);
    sub_1004A4624();
    v24 = *(v12 + 8);
    v24(v23, v11);
    sub_10012A548(&qword_1005CE310, &type metadata accessor for IndexSet.RangeView);
    sub_1004A5E64();
    sub_1004A5EA4();
    if (v51 == v50[0])
    {
      (*(v5 + 8))(v10, v4);
      return 0;
    }

    v25 = sub_1004A5F34();
    v27 = *v26;
    v44 = v26[1];
    v25(v50, 0);
    v29 = *(v5 + 8);
    v28 = v5 + 8;
    v30 = v10;
    v31 = v29;
    v29(v30, v4);
    if (v27)
    {
      return 0;
    }

    v42 = v31;
    v43 = v28;
    sub_100129E64(v48);
    sub_1004A45C4();
    v33 = v24;
    v34 = v47;
    sub_1004A45D4();
    v33(v15, v11);
    v33(v18, v11);
    v35 = v49;
    sub_1004A4624();
    v33(v34, v11);
    sub_1004A5E64();
    sub_1004A5EA4();
    if (v51 != v50[0])
    {
      v37 = sub_1004A5F34();
      v39 = *v38;
      v40 = v38[1];
      v37(v50, 0);
      v42(v35, v4);
      return v39;
    }

    v36 = v45;
    v42(v35, v4);
    result = v44;
    if ((v36 & 0xFF00000000) != 0 || v44 != v36)
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v44))
        {
          return result;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  return 0;
}

double sub_10012A468@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void sub_10012A494(void **a1)
{
  v2 = *(sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001419F8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10012A600(v5);
  *a1 = v3;
}

uint64_t sub_10012A548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012A590(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10012A600(uint64_t *a1)
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
        sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
        v6 = sub_1004A5C64();
        v6[2] = v5;
      }

      v7 = *(sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10012AAB0(v8, v9, a1, v4);
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
    sub_10012A744(0, v2, 1, a1);
  }
}

void sub_10012A744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
  v8 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v40 - v11;
  __chkstk_darwin(v12);
  v51 = &v40 - v13;
  __chkstk_darwin(v14);
  v50 = &v40 - v15;
  __chkstk_darwin(v16);
  v57 = &v40 - v18;
  v42 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v47 = -v20;
    v48 = v19;
    v22 = &qword_1005D1118;
    v23 = a1 - a3;
    v41 = v20;
    v24 = v19 + v20 * a3;
    v25 = &qword_1004D65D0;
LABEL_5:
    v45 = v21;
    v46 = a3;
    v43 = v24;
    v44 = v23;
    v54 = v23;
    v26 = v53;
    while (1)
    {
      v27 = v57;
      sub_10000E268(v24, v57, v22, v25);
      v28 = v50;
      sub_10000E268(v21, v50, v22, v25);
      v29 = v22;
      v30 = v51;
      sub_10000E268(v27, v51, v29, v25);
      v31 = (v30 + *(v26 + 48));
      v56 = *v31;
      v32 = v25;
      v33 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
      v55 = *(v33 + 48);
      v34 = v52;
      sub_10000E268(v28, v52, v29, v32);
      v35 = (v34 + *(v26 + 48));
      v22 = v29;
      v36 = *v35;
      v37 = *(v33 + 48);
      v25 = v32;
      sub_100025F40(v35 + v37, &qword_1005D05E0, &qword_1004D65C0);
      sub_100025F40(v31 + v55, &qword_1005D05E0, &qword_1004D65C0);
      sub_100025F40(v28, v29, v32);
      sub_100025F40(v57, v29, v32);
      v38 = v56 >= v36;
      v26 = v53;
      if (v38)
      {
LABEL_4:
        a3 = v46 + 1;
        v21 = v45 + v41;
        v23 = v44 - 1;
        v24 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v48)
      {
        break;
      }

      v39 = v49;
      sub_100025FDC(v24, v49, v29, v32);
      swift_arrayInitWithTakeFrontToBack();
      sub_100025FDC(v39, v21, v29, v32);
      v21 += v47;
      v24 += v47;
      v38 = __CFADD__(v54++, 1);
      if (v38)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10012AAB0(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v8 = sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
  v141 = *(v8 - 8);
  v9 = *(v141 + 64);
  __chkstk_darwin(v8);
  v136 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v146 = &v129 - v12;
  __chkstk_darwin(v13);
  v150 = &v129 - v14;
  __chkstk_darwin(v15);
  v149 = &v129 - v16;
  __chkstk_darwin(v17);
  v148 = &v129 - v18;
  __chkstk_darwin(v19);
  v147 = &v129 - v21;
  v22 = a3[1];
  v137 = a3;
  if (v22 < 1)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_98:
    v23 = v24;
    v24 = *v133;
    if (!*v133)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v154 = v23;
      v125 = *(v23 + 16);
      if (v125 >= 2)
      {
        while (*a3)
        {
          v126 = *(v23 + 16 * v125);
          v127 = *(v23 + 16 * (v125 - 1) + 40);
          sub_10012B6C0(*a3 + *(v141 + 72) * v126, *a3 + *(v141 + 72) * *(v23 + 16 * (v125 - 1) + 32), *a3 + *(v141 + 72) * v127, v24);
          if (v5)
          {
            goto LABEL_108;
          }

          if (v127 < v126)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_100141810(v23);
          }

          if (v125 - 2 >= *(v23 + 16))
          {
            goto LABEL_124;
          }

          v128 = (v23 + 16 * v125);
          *v128 = v126;
          v128[1] = v127;
          v154 = v23;
          sub_100141784(v125 - 1);
          v23 = v154;
          v125 = *(v154 + 16);
          a3 = v137;
          if (v125 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v23 = sub_100141810(v23);
    goto LABEL_100;
  }

  v130 = a4;
  v23 = 0;
  v24 = _swiftEmptyArrayStorage;
  v25 = v20;
  v151 = v20;
  while (1)
  {
    if (v23 + 1 >= v22)
    {
      v39 = v23 + 1;
    }

    else
    {
      v143 = v22;
      v131 = v24;
      v132 = v5;
      v26 = v23;
      v134 = v23;
      v153 = *a3;
      v27 = v153;
      v28 = *(v141 + 72);
      v29 = &v153[v28 * (v23 + 1)];
      v30 = v147;
      sub_10000E268(v29, v147, &qword_1005D1118, &qword_1004D65D0);
      v31 = v148;
      sub_10000E268(v27 + v28 * v26, v148, &qword_1005D1118, &qword_1004D65D0);
      v32 = v149;
      sub_10000E268(v30, v149, &qword_1005D1118, &qword_1004D65D0);
      v33 = (v32 + *(v25 + 48));
      LODWORD(v140) = *v33;
      v34 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
      v152 = *(v34 + 48);
      v24 = &qword_1004D65D0;
      v35 = v150;
      sub_10000E268(v31, v150, &qword_1005D1118, &qword_1004D65D0);
      v36 = (v35 + *(v25 + 48));
      LODWORD(v139) = *v36;
      v138 = v34;
      sub_100025F40(v36 + *(v34 + 48), &qword_1005D05E0, &qword_1004D65C0);
      sub_100025F40(v33 + v152, &qword_1005D05E0, &qword_1004D65C0);
      sub_100025F40(v31, &qword_1005D1118, &qword_1004D65D0);
      sub_100025F40(v30, &qword_1005D1118, &qword_1004D65D0);
      v37 = v134 + 2;
      v142 = v28;
      v38 = &v153[v28 * (v134 + 2)];
      while (1)
      {
        v39 = v143;
        if (v143 == v37)
        {
          break;
        }

        LODWORD(v153) = v140 < v139;
        v40 = v147;
        sub_10000E268(v38, v147, &qword_1005D1118, &qword_1004D65D0);
        v41 = v29;
        v42 = v148;
        sub_10000E268(v29, v148, &qword_1005D1118, &qword_1004D65D0);
        v43 = v149;
        sub_10000E268(v40, v149, &qword_1005D1118, &qword_1004D65D0);
        v44 = v151;
        v45 = (v43 + *(v151 + 48));
        LODWORD(v152) = *v45;
        v46 = v138;
        v144 = *(v138 + 48);
        v47 = v150;
        sub_10000E268(v42, v150, &qword_1005D1118, &qword_1004D65D0);
        v48 = (v47 + *(v44 + 48));
        LODWORD(v145) = *v48;
        sub_100025F40(v48 + *(v46 + 48), &qword_1005D05E0, &qword_1004D65C0);
        sub_100025F40(v45 + v144, &qword_1005D05E0, &qword_1004D65C0);
        v24 = &qword_1004D65D0;
        sub_100025F40(v42, &qword_1005D1118, &qword_1004D65D0);
        sub_100025F40(v40, &qword_1005D1118, &qword_1004D65D0);
        ++v37;
        v38 += v142;
        v29 = v41 + v142;
        if (((v153 ^ (v152 >= v145)) & 1) == 0)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v25 = v151;
      v5 = v132;
      a3 = v137;
      v23 = v134;
      if (v140 >= v139)
      {
        goto LABEL_24;
      }

      if (v39 < v134)
      {
        goto LABEL_127;
      }

      if (v134 >= v39)
      {
LABEL_24:
        v24 = v131;
      }

      else
      {
        v49 = v39;
        v50 = v142 * (v39 - 1);
        v51 = v39 * v142;
        v143 = v39;
        v52 = v134;
        v53 = v134 * v142;
        do
        {
          if (v52 != --v49)
          {
            v54 = *v137;
            if (!*v137)
            {
              goto LABEL_133;
            }

            sub_100025FDC(v54 + v53, v136, &qword_1005D1118, &qword_1004D65D0);
            if (v53 < v50 || v54 + v53 >= (v54 + v51))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v53 != v50)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100025FDC(v136, v54 + v50, &qword_1005D1118, &qword_1004D65D0);
          }

          ++v52;
          v50 -= v142;
          v51 -= v142;
          v53 += v142;
        }

        while (v52 < v49);
        v5 = v132;
        v24 = v131;
        v25 = v151;
        a3 = v137;
        v23 = v134;
        v39 = v143;
      }
    }

    v55 = a3[1];
    if (v39 >= v55)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v39, v23))
    {
      goto LABEL_126;
    }

    if (v39 - v23 >= v130)
    {
LABEL_35:
      v57 = v39;
      if (v39 < v23)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v23, v130))
    {
      goto LABEL_128;
    }

    if (v23 + v130 >= v55)
    {
      v56 = a3[1];
    }

    else
    {
      v56 = v23 + v130;
    }

    if (v56 < v23)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v39 == v56)
    {
      goto LABEL_35;
    }

    v131 = v24;
    v132 = v5;
    v105 = *a3;
    v106 = *(v141 + 72);
    v107 = *a3 + v106 * (v39 - 1);
    v144 = -v106;
    v145 = v105;
    v134 = v23;
    v135 = v106;
    v108 = v23 - v39;
    v109 = v105 + v39 * v106;
    v110 = v25;
    v138 = v56;
LABEL_89:
    v142 = v107;
    v143 = v39;
    v139 = v109;
    v140 = v108;
    v111 = v109;
    v112 = v108;
LABEL_90:
    v152 = v112;
    v113 = v147;
    sub_10000E268(v111, v147, &qword_1005D1118, &qword_1004D65D0);
    v114 = v148;
    sub_10000E268(v107, v148, &qword_1005D1118, &qword_1004D65D0);
    v115 = v149;
    sub_10000E268(v113, v149, &qword_1005D1118, &qword_1004D65D0);
    v116 = (v115 + *(v110 + 48));
    LODWORD(v153) = *v116;
    v117 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
    v118 = *(v117 + 48);
    v119 = v150;
    sub_10000E268(v114, v150, &qword_1005D1118, &qword_1004D65D0);
    v120 = (v119 + *(v110 + 48));
    v121 = *v120;
    sub_100025F40(v120 + *(v117 + 48), &qword_1005D05E0, &qword_1004D65C0);
    sub_100025F40(v116 + v118, &qword_1005D05E0, &qword_1004D65C0);
    sub_100025F40(v114, &qword_1005D1118, &qword_1004D65D0);
    sub_100025F40(v113, &qword_1005D1118, &qword_1004D65D0);
    if (v153 < v121)
    {
      break;
    }

    v110 = v151;
LABEL_88:
    v39 = v143 + 1;
    v107 = v142 + v135;
    v108 = v140 - 1;
    v109 = v139 + v135;
    v57 = v138;
    if (v143 + 1 != v138)
    {
      goto LABEL_89;
    }

    v5 = v132;
    a3 = v137;
    v24 = v131;
    v23 = v134;
    if (v138 < v134)
    {
      goto LABEL_125;
    }

LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v138 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_100085288(0, *(v24 + 2) + 1, 1, v24);
    }

    v60 = *(v24 + 2);
    v59 = *(v24 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v24 = sub_100085288((v59 > 1), v60 + 1, 1, v24);
    }

    *(v24 + 2) = v61;
    v62 = &v24[16 * v60];
    v63 = v138;
    *(v62 + 4) = v23;
    *(v62 + 5) = v63;
    v153 = *v133;
    if (!v153)
    {
      goto LABEL_135;
    }

    if (v60)
    {
      v25 = v151;
      while (1)
      {
        v64 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v65 = *(v24 + 4);
          v66 = *(v24 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_56:
          if (v68)
          {
            goto LABEL_114;
          }

          v81 = &v24[16 * v61];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_117;
          }

          v87 = &v24[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_121;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v61 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v91 = &v24[16 * v61];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_70:
        if (v86)
        {
          goto LABEL_116;
        }

        v94 = &v24[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_119;
        }

        if (v97 < v85)
        {
          goto LABEL_4;
        }

LABEL_77:
        v102 = v64 - 1;
        if (v64 - 1 >= v61)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v103 = *&v24[16 * v102 + 32];
        v23 = *&v24[16 * v64 + 40];
        sub_10012B6C0(*a3 + *(v141 + 72) * v103, *a3 + *(v141 + 72) * *&v24[16 * v64 + 32], *a3 + *(v141 + 72) * v23, v153);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v23 < v103)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_100141810(v24);
        }

        if (v102 >= *(v24 + 2))
        {
          goto LABEL_111;
        }

        v104 = &v24[16 * v102];
        *(v104 + 4) = v103;
        *(v104 + 5) = v23;
        v154 = v24;
        sub_100141784(v64);
        v24 = v154;
        v61 = *(v154 + 16);
        v25 = v151;
        if (v61 <= 1)
        {
          goto LABEL_4;
        }
      }

      v69 = &v24[16 * v61 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_112;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_113;
      }

      v76 = &v24[16 * v61];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_115;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_118;
      }

      if (v80 >= v72)
      {
        v98 = &v24[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_122;
        }

        if (v67 < v101)
        {
          v64 = v61 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v25 = v151;
LABEL_4:
    v22 = a3[1];
    v23 = v138;
    if (v138 >= v22)
    {
      goto LABEL_98;
    }
  }

  v122 = v152;
  if (v145)
  {
    v123 = v146;
    sub_100025FDC(v111, v146, &qword_1005D1118, &qword_1004D65D0);
    v110 = v151;
    swift_arrayInitWithTakeFrontToBack();
    sub_100025FDC(v123, v107, &qword_1005D1118, &qword_1004D65D0);
    v107 += v144;
    v111 += v144;
    v124 = __CFADD__(v122, 1);
    v112 = v122 + 1;
    if (v124)
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_10012B6C0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v67 = sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
  v8 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = &v53 - v11;
  __chkstk_darwin(v12);
  v60 = &v53 - v13;
  __chkstk_darwin(v14);
  v59 = &v53 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v70 = a1;
  v69 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v21;
    if (v21 >= 1)
    {
      v36 = -v17;
      v37 = v35;
      v65 = a4;
      v66 = a1;
      v55 = -v17;
      while (2)
      {
        while (1)
        {
          v53 = v35;
          v38 = a2 + v36;
          v56 = a2;
          v57 = a2 + v36;
          while (1)
          {
            if (a2 <= a1)
            {
              v70 = a2;
              v68 = v53;
              goto LABEL_59;
            }

            v40 = a3;
            v54 = v35;
            v64 = a3 + v36;
            v41 = v37 + v36;
            v42 = v37 + v36;
            v43 = v59;
            sub_10000E268(v42, v59, &qword_1005D1118, &qword_1004D65D0);
            v44 = v60;
            sub_10000E268(v38, v60, &qword_1005D1118, &qword_1004D65D0);
            v45 = v61;
            sub_10000E268(v43, v61, &qword_1005D1118, &qword_1004D65D0);
            v46 = v67;
            v47 = (v45 + *(v67 + 48));
            v63 = *v47;
            v48 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
            v58 = *(v48 + 48);
            v49 = v62;
            sub_10000E268(v44, v62, &qword_1005D1118, &qword_1004D65D0);
            v50 = (v49 + *(v46 + 48));
            LODWORD(v46) = *v50;
            sub_100025F40(v50 + *(v48 + 48), &qword_1005D05E0, &qword_1004D65C0);
            sub_100025F40(v47 + v58, &qword_1005D05E0, &qword_1004D65C0);
            sub_100025F40(v44, &qword_1005D1118, &qword_1004D65D0);
            sub_100025F40(v43, &qword_1005D1118, &qword_1004D65D0);
            if (v63 < v46)
            {
              break;
            }

            v35 = v41;
            a3 = v64;
            v51 = v65;
            if (v40 < v37 || v64 >= v37)
            {
              swift_arrayInitWithTakeFrontToBack();
              v38 = v57;
              a1 = v66;
              v36 = v55;
            }

            else
            {
              v38 = v57;
              a1 = v66;
              v36 = v55;
              if (v40 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v37 = v41;
            v39 = v41 > v51;
            a2 = v56;
            if (!v39)
            {
              goto LABEL_57;
            }
          }

          a3 = v64;
          v52 = v65;
          if (v40 < v56 || v64 >= v56)
          {
            break;
          }

          a2 = v57;
          a1 = v66;
          v35 = v54;
          v36 = v55;
          if (v40 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v37 <= v52)
          {
            goto LABEL_57;
          }
        }

        a2 = v57;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v66;
        v35 = v54;
        v36 = v55;
        if (v37 > v52)
        {
          continue;
        }

        break;
      }
    }

LABEL_57:
    v70 = a2;
    v68 = v35;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v20;
    v68 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v64 = a3;
      v57 = v17;
      v23 = v59;
      do
      {
        v65 = a4;
        v66 = a1;
        sub_10000E268(a2, v23, &qword_1005D1118, &qword_1004D65D0);
        v24 = v60;
        sub_10000E268(a4, v60, &qword_1005D1118, &qword_1004D65D0);
        v25 = v61;
        sub_10000E268(v23, v61, &qword_1005D1118, &qword_1004D65D0);
        v26 = v67;
        v27 = (v25 + *(v67 + 48));
        v63 = *v27;
        v28 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
        v29 = *(v28 + 48);
        v30 = v62;
        sub_10000E268(v24, v62, &qword_1005D1118, &qword_1004D65D0);
        v31 = (v30 + *(v26 + 48));
        LODWORD(v26) = *v31;
        sub_100025F40(v31 + *(v28 + 48), &qword_1005D05E0, &qword_1004D65C0);
        sub_100025F40(v27 + v29, &qword_1005D05E0, &qword_1004D65C0);
        sub_100025F40(v24, &qword_1005D1118, &qword_1004D65D0);
        sub_100025F40(v23, &qword_1005D1118, &qword_1004D65D0);
        if (v63 >= v26)
        {
          v32 = v57;
          v33 = v66;
          a4 = v65 + v57;
          if (v66 < v65 || v66 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v64;
          }

          else
          {
            v34 = v64;
            if (v66 != v65)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v69 = a4;
        }

        else
        {
          v32 = v57;
          a4 = v65;
          v33 = v66;
          if (v66 < a2 || v66 >= a2 + v57)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v32;
            v34 = v64;
          }

          else
          {
            v34 = v64;
            if (v66 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v32;
          }
        }

        a1 = v33 + v32;
        v70 = a1;
      }

      while (a4 < v58 && a2 < v34);
    }
  }

LABEL_59:
  sub_10017D820(&v70, &v69, &v68);
}

uint64_t sub_10012BD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012BE10(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1004A5384();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10012BEB0()
{
  v0 = sub_1004A5384();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_10012BF08()
{
  sub_10012C000();
  if (v0 <= 0x3F)
  {
    sub_10012C030();
    if (v1 <= 0x3F)
    {
      sub_10012C060();
      if (v2 <= 0x3F)
      {
        sub_10012C0E0();
        if (v3 <= 0x3F)
        {
          sub_10012C1B4(319, &qword_1005D1268);
          if (v4 <= 0x3F)
          {
            sub_10012C14C();
            if (v5 <= 0x3F)
            {
              sub_10012C1B4(319, &unk_1005D1278);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void *sub_10012C000()
{
  result = qword_1005D1240;
  if (!qword_1005D1240)
  {
    result = &type metadata for UInt32;
    atomic_store(&type metadata for UInt32, &qword_1005D1240);
  }

  return result;
}

void *sub_10012C030()
{
  result = qword_1005D1248;
  if (!qword_1005D1248)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1005D1248);
  }

  return result;
}

void sub_10012C060()
{
  if (!qword_1005D1250)
  {
    sub_1004A4644();
    sub_10000DEFC(&qword_1005D1258, &qword_1004D65E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D1250);
    }
  }
}

void sub_10012C0E0()
{
  if (!qword_1005D1260)
  {
    sub_1004A4644();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D1260);
    }
  }
}

void sub_10012C14C()
{
  if (!qword_1005D1270)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005D1270);
    }
  }
}

void sub_10012C1B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SegmentResequencer.ByteCount(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentResequencer.ByteCount(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_10012C2AC(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10012C2C4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_10012C2EC(uint64_t *a1, uint64_t *a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  v11 = *a1;
  v12 = *a2;
  v13 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_10012C754(v11 + v13, v10);
  v14 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_10012C754(v12 + v14, v7);
  LOBYTE(v12) = sub_10012C7B8(v10, v7);
  sub_10012C85C(v7);
  sub_10012C85C(v10);
  return v12 & 1;
}

uint64_t sub_10012C408()
{
  sub_10012C85C(v0 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10012C494()
{
  result = _s13SelectedStateV7WrappedVMa(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for MailboxSyncState();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10012C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for MailboxSyncState();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10012C670()
{
  type metadata accessor for MailboxSyncState();
  if (v0 <= 0x3F)
  {
    sub_10012C704();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10012C704()
{
  if (!qword_1005D13C8)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D13C8);
    }
  }
}

uint64_t sub_10012C754(uint64_t a1, uint64_t a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C7B8(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = _s13SelectedStateV7WrappedVMa(0);
  if ((sub_1000D42EC(a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10012C85C(uint64_t a1)
{
  v2 = _s13SelectedStateV7WrappedVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012C8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10012C94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for State.Logger()
{
  result = qword_1005D1458;
  if (!qword_1005D1458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012CA08()
{
  result = sub_1004A4A74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10012CA94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_10012CADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10012CB6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 16);
  result = swift_beginAccess();
  if (v6)
  {
    v8 = 0;
    v9 = a2 + 32;
LABEL_3:
    v10 = (v9 + 176 * v8);
    while (v8 < v6)
    {
      v11 = v10[9];
      v23 = v10[8];
      v24 = v11;
      v25 = v10[10];
      v12 = v10[5];
      v22[4] = v10[4];
      v22[5] = v12;
      v13 = v10[7];
      v22[6] = v10[6];
      v22[7] = v13;
      v14 = v10[1];
      v22[0] = *v10;
      v22[1] = v14;
      v15 = v10[3];
      v22[2] = v10[2];
      v22[3] = v15;
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_13;
      }

      v17 = *(&v23 + 1);
      v18 = *a3;
      sub_10000E08C(v22, &v21);

      LOBYTE(v17) = sub_10012DDBC(v19, v17);

      result = sub_10000E0E8(v22);
      if ((v17 & 1) == 0)
      {
        if (!__OFADD__(a1++, 1))
        {
          ++v8;
          if (v16 != v6)
          {
            goto LABEL_3;
          }

          return a1;
        }

LABEL_14:
        __break(1u);
        return result;
      }

      ++v8;
      v10 += 11;
      if (v16 == v6)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return a1;
}

uint64_t sub_10012CCA4(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_100139804(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    return sub_10012CD38;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10012CD44(uint64_t a1, unsigned int a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = BYTE1(__dst[3]);
  v6 = __dst[4];
  v7 = BYTE2(__dst[2]);
  v8 = __dst[7];

  v9 = sub_100166D28();
  v10 = v9;
  v21 = v7;
  if (v6 == 3 || v6 == 2)
  {

    if ((__dst[24] & 1) == 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  sub_100166E18(v9);
  sub_100013AD0(&off_100598658, v8);
  sub_100166E18(v10);
  v16 = sub_100013CF4(v8);

  v17 = a2;
  if (v16 & 1) == 0 && (v5)
  {
    sub_100166E18(v10);
  }

  v18 = *(v10 + 16);

  a2 = v17;
  if (__dst[24])
  {
LABEL_4:
    v13 = __dst[22];
    v12 = __dst[23];
    v14 = __dst[21];
    v20 = __dst[21];

    sub_1000BD984(&v20, a1, a2, 0);
    result = sub_100020D58(v14, v13, v12, 1);
    v15 = v20;
    *(__src + 22) = 0;
    *(__src + 23) = 0;
    *(__src + 21) = v15;
    *(__src + 192) = 1;
  }

  return result;
}

uint64_t sub_10012D0D0(uint64_t a1, unsigned int a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v5 = v4;
  memcpy(__dst, v4, sizeof(__dst));
  v7 = LOBYTE(__dst[3]);
  v8 = BYTE1(__dst[3]);
  v9 = __dst[4];
  v10 = LOBYTE(__dst[5]);
  v11 = BYTE2(__dst[2]);
  v12 = __dst[6];
  v13 = __dst[7];

  v14 = sub_100166D28();
  v15 = v14;
  v49 = v11;
  v46 = a4;
  if (v9 == 3 || v9 == 2)
  {

    v16 = 0;
    v17 = 0;
    v18 = 0x100000000000000;
    v19 = &_mh_execute_header;
    v20 = 0x1000000;
    v21 = 512;
    v22 = 1;
    goto LABEL_71;
  }

  v23 = sub_100166E18(v14);
  if ((v8 & 1) == 0)
  {
    if (v9 == 1)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v24 = 0;
          v19 = &_mh_execute_header;
          v25 = 512;
LABEL_77:
          v41 = v25;
          goto LABEL_19;
        }

LABEL_76:
        v24 = 0;
        v19 = 0;
        v7 = 1;
        v25 = 256;
        goto LABEL_77;
      }
    }

    else if (!v9 && v7)
    {
      if (v7 != 1)
      {
        v7 = 0;
        v41 = 0;
        v24 = 0;
        v19 = 0;
        goto LABEL_19;
      }

      goto LABEL_76;
    }
  }

  v7 = (v23 & 1) == 0;
  if (v23)
  {
    v19 = 0;
  }

  else
  {
    v19 = &_mh_execute_header;
  }

  v26 = 512;
  if (v23)
  {
    v26 = 0;
  }

  v41 = v26;
  v24 = (v23 & 1) == 0;
LABEL_19:
  v27 = sub_100013AD0(&off_100598658, v13);
  if (v27)
  {
    v28 = v7;
  }

  else
  {
    v28 = 1;
  }

  v42 = v28;
  v29 = (v27 & 1) == 0 || v24;
  v40 = v29;
  v30 = sub_100166E18(v15);
  v31 = sub_100013CF4(v13);

  v32 = v31 ^ 1;
  if (v31 & 1) == 0 && (v8)
  {
    v32 = sub_100166E18(v15);
    v31 = v32 ^ 1;
  }

  v33 = *(v15 + 16);

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v35 = 0x10000;
      if ((v32 & 1) == 0)
      {
        v35 = 0;
      }

      if (v31)
      {
        v16 = v35;
      }

      else
      {
        v16 = 0x20000;
      }
    }

    else if (v32)
    {
      v16 = 0x10000;
    }

    else
    {
      v16 = 0;
    }

    if (v12 >= 3989)
    {
      v21 = 512;
    }

    else
    {
      v21 = v41;
    }

    if (((v33 == 0) & v8) != 0)
    {
      v18 = 0x100000000000000;
    }

    else
    {
      v18 = 0;
    }

    if (v30)
    {
      v17 = 0x10000000000;
    }

    else
    {
      v17 = 0;
    }

    if ((v40 & 1) == 0)
    {
      v20 = 0;
      v34 = v42;
      goto LABEL_70;
    }

    v34 = v42;
  }

  else
  {
    v16 = 0;
    if (v10)
    {
      v20 = 0;
      if (v12 >= 3989)
      {
        v21 = 512;
      }

      else
      {
        v21 = v41;
      }

      if (((v33 == 0) & v8) != 0)
      {
        v18 = 0x100000000000000;
      }

      else
      {
        v18 = 0;
      }

      if (v30)
      {
        v17 = 0x10000000000;
      }

      else
      {
        v17 = 0;
      }

      v34 = v42;
      if ((v40 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (((v33 == 0) & v8) != 0)
      {
        v18 = 0x100000000000000;
      }

      else
      {
        v18 = 0;
      }

      if (v30)
      {
        v17 = 0x10000000000;
      }

      else
      {
        v17 = 0;
      }

      v34 = 1;
      v21 = 512;
    }
  }

  v20 = 0x1000000;
LABEL_70:
  v22 = v34;
LABEL_71:
  *v51 = *&__dst[21];
  *&v51[9] = *(&__dst[22] + 1);
  if (__dst[24])
  {
    v36 = v49;
    v48 = *v51;
    sub_1001428C0(v51, v47);
    v37 = 0x1000000000000;
    if ((v36 & 1) == 0)
    {
      v37 = 0;
    }

    sub_1000BDC8C(&v48, a1, a2, 0, a3, v46, v16 | v21 | v22 | v20 | v19 | v17 | v18 | v37);
    result = sub_10014291C(v51);
    v39 = v48;
    v5[22] = 0;
    v5[23] = 0;
    v5[21] = v39;
    *(v5 + 192) = 1;
  }

  else
  {
    sub_1001428C0(v51, v47);
  }

  return result;
}

uint64_t sub_10012D47C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1004A6554();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10001D9C4(&v5, v3, *(a1 + 36), 0, a1);
  }
}

_BYTE *sub_10012D504(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1004A6554();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10001DA68(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_10012D588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_1004A6554();
  if (v5 == 1 << *(a1 + 32))
  {
    result = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    result = sub_10001DAEC(&v12, v5, *(a1 + 36), 0, a1);
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
  }

  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  return result;
}

uint64_t sub_10012D634(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1004A6554();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_100142178(v3, *(a1 + 36), 0, a1);
}

uint64_t sub_10012D6A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for State.Logger();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v54[-v9];
  memcpy(v68, v1, sizeof(v68));
  v11 = sub_10012DCC8();
  memcpy(v67, v1, sizeof(v67));
  v12 = sub_10013244C(v11);
  v13 = v12;
  if (!v12[2])
  {
LABEL_11:

    goto LABEL_14;
  }

  v14 = sub_10012D634(v12);
  if (!v14)
  {
LABEL_8:
    sub_100142970(a1, v8, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_bridgeObjectRetain_n();

    v32 = sub_1004A4A54();
    v33 = sub_1004A6034();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v59 = a1;
      v35 = v34;
      v36 = swift_slowAlloc();
      v62[0] = v36;
      *v35 = 68158466;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      v37 = v8[*(v4 + 20)];
      sub_1001429D8(v8, type metadata accessor for State.Logger);
      *(v35 + 10) = v37;
      *(v35 + 11) = 2082;
      v38 = sub_100134BF8(v11);
      v40 = v39;

      v41 = sub_10015BA6C(v38, v40, v62);

      *(v35 + 13) = v41;
      *(v35 + 21) = 2048;
      v42 = *(v13 + 16);

      *(v35 + 23) = v42;

      _os_log_impl(&_mh_execute_header, v32, v33, "[%.*hhx] Push sync %{public}s for %ld mailbox(es)", v35, 0x1Fu);
      sub_1000197E0(v36);

      a1 = v59;

      goto LABEL_14;
    }

    sub_1001429D8(v8, type metadata accessor for State.Logger);

    goto LABEL_11;
  }

  if (*(v13 + 16) != 1)
  {

    goto LABEL_8;
  }

  v16 = *(v1 + 184);
  v17 = *(v1 + 216);
  v65 = *(v1 + 200);
  v66[0] = v17;
  *(v66 + 12) = *(v1 + 228);
  v63 = *(v1 + 168);
  v64 = v16;
  v18 = v14;
  v57 = v15;
  v19 = sub_1000BAD00(v14, v15);
  sub_100142970(a1, v10, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v59 = a1;
  v20 = sub_1004A4A54();
  v21 = sub_1004A6034();
  v58 = v18;

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v55 = v19;
    v23 = v22;
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *v23 = 68159235;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v24 = v10[*(v4 + 20)];
    sub_1001429D8(v10, type metadata accessor for State.Logger);
    *(v23 + 10) = v24;
    *(v23 + 11) = 2082;
    v25 = sub_100134BF8(v11);
    v27 = v26;

    v28 = sub_10015BA6C(v25, v27, v61);

    *(v23 + 13) = v28;
    *(v23 + 21) = 1040;
    *(v23 + 23) = 2;
    *(v23 + 27) = 512;
    *(v23 + 29) = v55;
    *(v23 + 31) = 2160;
    *(v23 + 33) = 0x786F626C69616DLL;
    *(v23 + 41) = 2085;
    v62[0] = v58;
    LODWORD(v62[1]) = v57;
    v29 = sub_1004A5824();
    v31 = sub_10015BA6C(v29, v30, v61);

    *(v23 + 43) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%.*hhx] Push sync %{public}s for mailbox {%.*hx} '%{sensitive,mask.mailbox}s'", v23, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1001429D8(v10, type metadata accessor for State.Logger);
  }

  a1 = v59;
LABEL_14:
  memcpy(v62, v2, sizeof(v62));
  v43 = sub_1000CBCD0();
  memcpy(v61, v2, sizeof(v61));
  v44 = v61[21];
  v45 = v61[22];
  v46 = v61[23];
  v47 = v61[24];
  v48 = sub_100132554();
  v49 = sub_100155540(v48, v43);
  v50 = sub_100155540(v13, v49);
  if ((v47 & 1) == 0)
  {
  }

  v60 = v44;
  v51 = v50;

  sub_1000BA740(&v60, v51, a1);

  result = sub_100020D58(v44, v45, v46, 1);
  v53 = v60;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 168) = v53;
  *(v2 + 192) = 1;
  return result;
}

uint64_t sub_10012DCC8()
{
  v1 = *(v0 + 64);
  v12 = _swiftEmptySetSingleton;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v7 << 6);
    if (*(*(v1 + 56) + 32 * v10) == 3)
    {
      result = sub_100088204(&v11, *(*(v1 + 48) + 4 * v10));
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v12;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10012DDBC(Swift::Int result, Swift::Int a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v12)))));
      v15 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v14);
      result = sub_1004A6F14();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(v6 + 48) + 4 * v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10012DF2C(Swift::Int result, Swift::Int a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + (__clz(__rbit64(v12)) | (v4 << 6)));
      v15 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v14);
      result = sub_1004A6F14();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(v6 + 48) + v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10012E098(Swift::Int result, Swift::Int a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v12)))));
      v15 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v14);
      result = sub_1004A6F14();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (v14 != *(*(v6 + 48) + 4 * v17))
        {
          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void *sub_10012E208()
{
  result = _swiftEmptySetSingleton;
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 120);
    if (v3 && *(v3 + 16))
    {
      v4 = *(v2 + 16);
      if (!v4)
      {
        return result;
      }

      for (i = (v2 + 32); ; i += 11)
      {
        v6 = *i;
        v7 = i[2];
        v44 = i[1];
        v45 = v7;
        v43 = v6;
        v8 = i[3];
        v9 = i[4];
        v10 = i[6];
        v48 = i[5];
        v49 = v10;
        v46 = v8;
        v47 = v9;
        v11 = i[7];
        v12 = i[8];
        v13 = i[10];
        v52 = i[9];
        v53 = v13;
        v50 = v11;
        v51 = v12;
        v14 = v44;
        v15 = DWORD2(v44);
        v16 = v48;
        v17 = *(&v47 + 1);
        sub_10000E08C(&v43, v42);
        if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v17, v16, 0, 0) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (MailboxName.isInbox.getter(v18, v15))
        {
          goto LABEL_11;
        }

        if (*(v3 + 16))
        {
          v19 = sub_100063B5C(v14, v15);
          if (v20)
          {
            v21 = *(v3 + 56) + 72 * v19;
            v22 = *v21;
            v23 = *(v21 + 14);

            v24 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
            v25 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();

            if (!v24)
            {
              if (!v25)
              {
                goto LABEL_11;
              }

LABEL_19:
              if (((v25 | v24) & v23) == 0)
              {
LABEL_11:
                sub_100088220(v42, v14, v15);
                sub_10000E0E8(&v43);

                goto LABEL_8;
              }

              goto LABEL_6;
            }

            if ((v25 & ~v24) != 0)
            {
              goto LABEL_19;
            }

            if ((v24 & v23) == 0)
            {
              goto LABEL_11;
            }
          }
        }

LABEL_6:

LABEL_7:
        sub_10000E0E8(&v43);
LABEL_8:
        if (!--v4)
        {
          return _swiftEmptySetSingleton;
        }
      }
    }

    v26 = *(v2 + 16);
    if (!v26)
    {
      return result;
    }

    for (j = (v2 + 32); ; j += 11)
    {
      v28 = *j;
      v29 = j[2];
      v44 = j[1];
      v45 = v29;
      v43 = v28;
      v30 = j[3];
      v31 = j[4];
      v32 = j[6];
      v48 = j[5];
      v49 = v32;
      v46 = v30;
      v47 = v31;
      v33 = j[7];
      v34 = j[8];
      v35 = j[10];
      v52 = j[9];
      v53 = v35;
      v50 = v33;
      v51 = v34;
      v36 = DWORD2(v44);
      sub_10000E08C(&v43, v42);

      LOBYTE(v36) = MailboxName.isInbox.getter(v37, v36);

      sub_10000E0E8(&v43);
      if (v36)
      {
        break;
      }

      if (!--v26)
      {
        return _swiftEmptySetSingleton;
      }
    }

    sub_10000C9C0(&qword_1005D14A8, &unk_1004E2AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004CEAA0;
    v39 = MailboxName.inbox.unsafeMutableAddressor();
    v40 = *(v39 + 2);
    *(inited + 32) = *v39;
    *(inited + 40) = v40;
    v41 = sub_100092FD4(inited);
    swift_setDeallocating();

    sub_10009DA94(inited + 32);
    return v41;
  }

  return result;
}

Swift::Int sub_10012E4C8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  sub_1004A6E94();
  SyncRequest.hash(into:)(v6, v4, v1, v2);
  sub_1004A6EF4(v3);
  return sub_1004A6F14();
}

void sub_10012E538(__int128 *a1)
{
  v2 = *(v1 + 24);
  SyncRequest.hash(into:)(a1, *v1, *(v1 + 8), *(v1 + 16));
  sub_1004A6EF4(v2);
}

Swift::Int sub_10012E580()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  sub_1004A6E94();
  SyncRequest.hash(into:)(v6, v4, v1, v2);
  sub_1004A6EF4(v3);
  return sub_1004A6F14();
}

uint64_t sub_10012E5EC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 3);
  return static SyncRequest.__derived_struct_equals(_:_:)(*a1, *(a1 + 1), a1[16], *a2, *(a2 + 1), a2[16]) & (v2 == v3);
}

Swift::Int sub_10012E63C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_100141F40(v4, __dst) & 1;
}

unint64_t sub_10012E698()
{
  result = qword_1005D1490;
  if (!qword_1005D1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1490);
  }

  return result;
}

uint64_t sub_10012E6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v149 = a6;
  sub_10012F464(a1, &v167);
  if (v168[24] != 255)
  {
    v182 = v167;
    v183[0] = *v168;
    *(v183 + 9) = *&v168[9];
    sub_10011D9F0(&v182, a8);
    sub_10011DA4C(&v182);

    *(a8 + 48) = _swiftEmptySetSingleton;
    return result;
  }

  v144 = a1;
  v145 = a3;
  v150 = a2;
  v133 = a5;
  v134 = a4;
  v139 = a8;
  sub_100025F40(&v167, &qword_1005D14E8, &qword_1004D6900);
  v17 = *(a7 + 72);
  v18 = *(a7 + 72);
  v19 = a9;
  if (v17 == 2)
  {
    goto LABEL_4;
  }

  v21 = a7;
  v22 = *(a7 + 88);
  v23 = *(a7 + 104);
  v24 = *(a7 + 114);
  v25 = *(a7 + 112);
  v140 = *(a7 + 120);
  v26 = *(a7 + 137);
  v146 = a9;
  v143 = a7;
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  v155 = v22;
  v156 = v17;
  v27 = *(a7 + 24);
  v28 = *(a7 + 25);
  v29 = *(a7 + 32);
  v30 = *(a7 + 56);

  v31 = sub_100166D28();
  v32 = v31;
  if ((v29 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {

    v19 = v146;
    v21 = v143;
    v22 = v155;
    v17 = v156;
    if ((v18 & 0xFF0000) == 0x20000)
    {
      goto LABEL_19;
    }

LABEL_4:
    v20 = v139;
    *(v139 + 32) = 0;
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 40) = -1;

    *(v20 + 48) = _swiftEmptySetSingleton;
    return result;
  }

  v33 = sub_100166E18(v31);
  LODWORD(v154) = v28;
  if (v28)
  {
    goto LABEL_14;
  }

  if (v29 != 1)
  {
    if (!v29 && (v27 - 1) < 2)
    {
      v33 = 1;
      v19 = v146;
      goto LABEL_15;
    }

LABEL_14:
    v19 = v146;
    goto LABEL_15;
  }

  v19 = v146;
  if (v27)
  {
    v33 = v27 != 1;
  }

LABEL_15:
  v34 = v33;
  sub_100013AD0(&off_100598658, v30);
  sub_100166E18(v32);
  v35 = sub_100013CF4(v30);

  if (v35 & 1) == 0 && (v154)
  {
    sub_100166E18(v32);
  }

  v21 = v143;
  v22 = v155;
  v17 = v156;
  if (!(((v18 & 0xFF0000) == 0x20000) | v34 & 1))
  {
    goto LABEL_4;
  }

LABEL_19:
  v36 = _swiftEmptySetSingleton;
  v177 = _swiftEmptySetSingleton;
  v142 = *(v149 + 16);
  if (!v142)
  {
    goto LABEL_135;
  }

  v178[0] = v17;
  v178[1] = v22;
  v179 = v23;
  v180 = v25;
  v181 = (v25 | (v24 << 16)) >> 16;
  v37 = v133 + 32;
  v38 = v149 + 32;
  v39 = *(v21 + 168);
  v153 = *(v21 + 192);
  v154 = *(v133 + 16);
  v148 = v39;
  v147 = v39 + 32;

  v40 = 0;
  v41 = v142;
  v135 = v149 + 32;
  v136 = v133 + 32;
  while (2)
  {
    if (v40 == v154)
    {
      __break(1u);
      return result;
    }

    v42 = v37 + 16 * v40;
    v43 = *v42;
    v44 = v19;
    v45 = *(v42 + 8);
    LODWORD(v155) = *(v38 + 2 * v40);

    *&v156 = v45;
    v47 = v45;
    v19 = v44;
    v48 = sub_10016511C(v46, v47, v44);
    if ((v153 & 1) == 0 || (v49 = *(v148 + 16)) == 0)
    {
LABEL_21:

      goto LABEL_22;
    }

    v50 = 0;
    while (1)
    {
      v51 = (v147 + 176 * v50);
      v52 = *v51;
      v53 = v51[2];
      v183[0] = v51[1];
      v183[1] = v53;
      v182 = v52;
      v54 = v51[3];
      v55 = v51[4];
      v56 = v51[6];
      v186 = v51[5];
      v187 = v56;
      v184 = v54;
      v185 = v55;
      v57 = v51[7];
      v58 = v51[8];
      v59 = v51[10];
      v190 = v51[9];
      v191 = v59;
      v188 = v57;
      v189 = v58;
      if ((DWORD2(v183[0]) | (DWORD2(v183[0]) << 32)) == (v156 | (v156 << 32)))
      {
        v60 = *(*&v183[0] + 16);
        if (v60 == *(v43 + 16))
        {
          break;
        }
      }

LABEL_27:
      if (++v50 == v49)
      {
        goto LABEL_21;
      }
    }

    if (v60 && *&v183[0] != v43)
    {
      v61 = (*&v183[0] + 32);
      v62 = (v43 + 32);
      while (*v61 == *v62)
      {
        ++v61;
        ++v62;
        if (!--v60)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_27;
    }

LABEL_35:
    v63 = v140;
    v152 = v48;
    v151 = v43;
    if (v140 && *(v140 + 16) && (v64 = sub_100063B5C(v43, v156), (v65 & 1) != 0))
    {
      v66 = *(v63 + 56) + 72 * v64;
      v161[0] = *v66;
      v68 = *(v66 + 32);
      v67 = *(v66 + 48);
      v69 = *(v66 + 64);
      v161[1] = *(v66 + 16);
      v161[2] = v68;
      v162 = v69;
      v161[3] = v67;
      *v168 = *(v66 + 16);
      *&v168[16] = *(v66 + 32);
      v169 = *(v66 + 48);
      v170 = *(v66 + 64);
      v167 = *v66;
      sub_100063BD4(v161, &v157);
      v173 = *&v168[16];
      v174 = v169;
      v175 = v170;
      v171 = v167;
      v172 = *v168;
    }

    else
    {
      v175 = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
    }

    v192[2] = v173;
    v192[3] = v174;
    v193 = v175;
    v192[0] = v171;
    v192[1] = v172;
    v70 = v143;
    v72 = *v143;
    v71 = *(v143 + 8);
    v73 = *(v143 + 16);
    sub_10000E08C(&v182, &v167);
    v138 = WindowOfInterestSizes.subscript.getter(v192, v72, v71);
    v137 = v74;
    sub_100025F40(&v171, &qword_1005CF248, &qword_1004D22C0);
    v75 = *(v70 + 24);
    v76 = *(v70 + 25);
    v77 = *(v70 + 32);
    LODWORD(v141) = *(v70 + 40);
    LOBYTE(v72) = *(v70 + 18);
    v79 = *(v70 + 48);
    v78 = *(v70 + 56);

    v80 = sub_100166D28();
    v81 = v80;
    v163 = v72;
    if (v77 == 3)
    {

      v83 = 0;
      v84 = 0;
      v85 = 0x100000000000000;
      v86 = &_mh_execute_header;
      v87 = 1;
      v88 = 512;
      v89 = 0x1000000;
      v19 = v146;
      v91 = v150;
      v90 = v151;
      v92 = v144;
      v82 = v155;
    }

    else
    {
      v132 = v79;
      v19 = v146;
      v82 = v155;
      if (v77 == 2)
      {

        v83 = 0;
        v84 = 0;
        v85 = 0x100000000000000;
        v86 = &_mh_execute_header;
        v87 = 1;
        v88 = 512;
        v89 = 0x1000000;
        v91 = v150;
        v90 = v151;
        v92 = v144;
        goto LABEL_112;
      }

      v93 = sub_100166E18(v80);
      v94 = v76;
      if (v76)
      {
        goto LABEL_53;
      }

      v95 = v75;
      if (v77 == 1)
      {
        if (!v75)
        {
          goto LABEL_53;
        }

        if (v75 != 1)
        {
          goto LABEL_132;
        }

        v96 = 0;
        v131 = &_mh_execute_header;
        v97 = 512;
LABEL_133:
        v128 = v97;
      }

      else
      {
        if (!v77 && v75)
        {
          if (v75 != 1)
          {
            v95 = 0;
            v128 = 0;
            v96 = 0;
            v131 = 0;
            goto LABEL_58;
          }

LABEL_132:
          v96 = 0;
          v131 = 0;
          v95 = 1;
          v97 = 256;
          goto LABEL_133;
        }

LABEL_53:
        v95 = (v93 & 1) == 0;
        v98 = &_mh_execute_header;
        if (v93)
        {
          v98 = 0;
        }

        v131 = v98;
        v99 = 512;
        if (v93)
        {
          v99 = 0;
        }

        v128 = v99;
        v96 = (v93 & 1) == 0;
      }

LABEL_58:
      v90 = v151;
      v100 = sub_100013AD0(&off_100598658, v78);
      v101 = (v100 & 1) == 0 || v95;
      LODWORD(v129) = v101;
      v102 = (v100 & 1) == 0 || v96;
      v127 = v102;
      LODWORD(v130) = sub_100166E18(v81);
      v103 = sub_100013CF4(v78);

      v104 = v103 ^ 1;
      if (v103)
      {
        v91 = v150;
      }

      else
      {
        v91 = v150;
        if (v94)
        {
          v104 = sub_100166E18(v81);
          v103 = v104 ^ 1;
        }
      }

      v105 = *(v81 + 16);

      v106 = (v105 == 0) & v94;
      if (v141 > 1)
      {
        v19 = v146;
        v82 = v155;
        if (v141 == 2)
        {
          v83 = 0x10000;
          if ((v104 & 1) == 0)
          {
            v83 = 0;
          }

          if ((v103 & 1) == 0)
          {
            v83 = 0x20000;
          }

          v88 = v128;
          if (v132 >= 3989)
          {
            v88 = 512;
          }

          v107 = v106 == 0;
          v85 = 0x100000000000000;
          if (v107)
          {
            v85 = 0;
          }

          v84 = 0x10000000000;
          if ((v130 & 1) == 0)
          {
            v84 = 0;
          }

          if (v127)
          {
            v92 = v144;
            v86 = v131;
            LODWORD(v87) = v129;
            goto LABEL_110;
          }

          v89 = 0;
          v92 = v144;
          v86 = v131;
          LODWORD(v87) = v129;
        }

        else
        {
          v83 = 0x10000;
          if ((v104 & 1) == 0)
          {
            v83 = 0;
          }

          v86 = v131;
          v88 = v128;
          if (v132 >= 3989)
          {
            v88 = 512;
          }

          v107 = v106 == 0;
          v85 = 0x100000000000000;
          if (v107)
          {
            v85 = 0;
          }

          v84 = 0x10000000000;
          if ((v130 & 1) == 0)
          {
            v84 = 0;
          }

          LODWORD(v87) = v129;
          if (v127)
          {
            v92 = v144;
            goto LABEL_110;
          }

          v89 = 0;
          v92 = v144;
        }
      }

      else
      {
        v19 = v146;
        v82 = v155;
        if (!v141)
        {
          v83 = 0;
          v107 = v106 == 0;
          v85 = 0x100000000000000;
          if (v107)
          {
            v85 = 0;
          }

          v84 = 0x10000000000;
          if ((v130 & 1) == 0)
          {
            v84 = 0;
          }

          LODWORD(v87) = 1;
          v88 = 512;
          v92 = v144;
          v86 = v131;
          goto LABEL_110;
        }

        v83 = 0;
        v89 = 0;
        v86 = v131;
        v88 = v128;
        if (v132 >= 3989)
        {
          v88 = 512;
        }

        v107 = v106 == 0;
        v85 = 0x100000000000000;
        if (v107)
        {
          v85 = 0;
        }

        v84 = 0x10000000000;
        if ((v130 & 1) == 0)
        {
          v84 = 0;
        }

        v92 = v144;
        LODWORD(v87) = v129;
        if (v127)
        {
LABEL_110:
          v89 = 0x1000000;
        }
      }

      v87 = v87;
    }

LABEL_112:
    v108 = 0x1000000000000;
    if ((v163 & 1) == 0)
    {
      v108 = 0;
    }

    v109 = v83 | v88 | v87 | v89 | v86 | v84 | v85 | v108;

    v110 = v145;

    sub_10009F4BC(v82, v109, &v182, v92, v91, v110, v152 & 1, v161);
    sub_10000E268(v161, &v157, &qword_1005D14F0, &qword_1004D6908);
    if (v160 == 255)
    {
      sub_100025F40(v161, &qword_1005D14F0, &qword_1004D6908);
LABEL_118:
      sub_10000E0E8(&v182);
      v164 = 0u;
      v165 = 0u;
      v166 = 0;
      v38 = v135;
      v37 = v136;
      goto LABEL_123;
    }

    if (v160)
    {
      sub_100025F40(v161, &qword_1005D14F0, &qword_1004D6908);
      sub_10000E0E8(&v182);
      sub_1000B364C(&v157, &v164);
      goto LABEL_122;
    }

    if (v82 >> 14 > 2)
    {
LABEL_120:
      v132 = v159;
      v141 = v158;
      *&v155 = *(&v157 + 1);
      v111 = v157;
      v130 = sub_1001421D4;
      goto LABEL_121;
    }

    if (v82 > 1u)
    {
      if (v82 == 2)
      {
        v132 = v159;
        v141 = v158;
        *&v155 = *(&v157 + 1);
        v111 = v157;
        v130 = sub_100142258;
        goto LABEL_121;
      }

      sub_100025F40(v161, &qword_1005D14F0, &qword_1004D6908);

      goto LABEL_118;
    }

    if (!v82)
    {
      goto LABEL_120;
    }

    v132 = v159;
    v141 = v158;
    *&v155 = *(&v157 + 1);
    v111 = v157;
    v130 = sub_100142320;
LABEL_121:
    v112 = swift_allocObject();
    v131 = &v126;
    v113 = v190;
    v112[9] = v189;
    v112[10] = v113;
    v112[11] = v191;
    v114 = v186;
    v112[5] = v185;
    v112[6] = v114;
    v115 = v188;
    v112[7] = v187;
    v112[8] = v115;
    v116 = v183[0];
    v112[1] = v182;
    v112[2] = v116;
    v117 = v184;
    v112[3] = v183[1];
    v112[4] = v117;
    v118 = __chkstk_darwin(v112);
    v129 = v124;
    v119 = __chkstk_darwin(v118);
    __chkstk_darwin(v119);
    v125 = v120;
    sub_10000E08C(&v182, &v167);
    v121 = v137 & 1;

    LOBYTE(v125) = v121;
    v124[3] = v109;
    v124[4] = v138;
    v124[1] = v124;
    v124[2] = v178;
    v124[0] = sub_100142248;
    (v130)(&v164, v111, v155, v141, v132, sub_10014222C, v129, sub_10014223C, v124);

    sub_10000E0E8(&v182);

    sub_100025F40(v161, &qword_1005D14F0, &qword_1004D6908);
    v19 = v146;
    v90 = v151;
LABEL_122:
    v38 = v135;
    v37 = v136;
    if (*(&v165 + 1))
    {
      sub_1000B364C(&v164, v176);

      v123 = v139;
      sub_1000B364C(v176, v139);
      *(v123 + 40) = 1;

      *(v123 + 48) = v177;
    }

    else
    {
LABEL_123:
      sub_100025F40(&v164, &qword_1005CF328, &unk_1004D2620);
      sub_100088220(&v167, v90, v156);

      v41 = v142;
LABEL_22:
      if (++v40 != v41)
      {
        continue;
      }

      v36 = v177;
LABEL_135:
      v122 = v139;
      *(v139 + 32) = 0;
      *v122 = 0u;
      *(v122 + 16) = 0u;
      *(v122 + 40) = -1;

      *(v122 + 48) = v36;
    }

    return result;
  }
}

uint64_t sub_10012F464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1000CECCC(v2, &v27);
  sub_1000FE52C(v2, &v36);
  if (v36)
  {
    v43 = v38;
    *v44 = v39;
    *&v44[16] = v40;
    v41 = v36;
    v42 = v37;
    if ((sub_100012728(&v41, a1) & 1) == 0)
    {
      *(a2 + 24) = sub_10000C9C0(&qword_1005D1570, &qword_1004D6960);
      *(a2 + 32) = sub_10000DF44(&qword_1005D1578, &qword_1005D1570, &qword_1004D6960);
      v12 = swift_allocObject();
      *a2 = v12;
      sub_1000FF12C(&v41, v12 + 16);
      *(v12 + 88) = _swiftEmptyArrayStorage;
      *(v12 + 96) = _swiftEmptyArrayStorage;
      result = sub_1000FF164(&v41);
      goto LABEL_19;
    }

    result = sub_1000FF164(&v41);
  }

  else
  {
    result = sub_100025F40(&v36, &qword_1005D0760, &unk_1004D4110);
  }

  v7 = *(v2 + 72);
  if (v7 == 2)
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
LABEL_7:
    *(a2 + 40) = -1;
    return result;
  }

  v8 = *(v2 + 80);
  if (*(v2 + 120))
  {
    if ((*(v2 + 137) & 1) == 0)
    {
LABEL_14:
      v9 = *(v2 + 184);
      v10 = *(v2 + 216);
      v43 = *(v2 + 200);
      *v44 = v10;
      *&v44[12] = *(v2 + 228);
      v41 = *(v2 + 168);
      v42 = v9;
      sub_1000C1574();
      sub_1001755BC(v11, &v36);
      if (!v36)
      {
        result = sub_100025F40(&v36, &qword_1005D1528, &qword_1004D6938);
        if ((BYTE8(v42) & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_26;
      }

      v28[1] = v38;
      v29 = v39;
      v30[0] = v40;
      v27 = v36;
      v28[0] = v37;
      if (sub_100012728(&v27 + 1, a1))
      {
        result = sub_1001425C8(&v27);
        if ((BYTE8(v42) & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_26:
        v14 = sub_1000B6D0C()[2];

        if (v14)
        {
          v30[0] = sub_1000B6D0C();
          v30[1] = _swiftEmptySetSingleton;
          *(&v29 + 1) = 0x80000001004AA440;
          LOBYTE(v36) = 1;
          *&v29 = 0xD000000000000010;
          *&v27 = &type metadata for CreateMailboxes;
          sub_1004A6674();
          if (sub_100012728(&v27, a1))
          {
            result = sub_1000197B0(&v27);
            goto LABEL_40;
          }

          *(a2 + 24) = sub_10000C9C0(&qword_1005D1530, &qword_1004D6940);
          *(a2 + 32) = sub_10000DF44(&qword_1005D1538, &qword_1005D1530, &qword_1004D6940);
          v23 = swift_allocObject();
          *a2 = v23;
          sub_100019778(&v27, v23 + 16);
          *(v23 + 96) = _swiftEmptyArrayStorage;
          *(v23 + 104) = _swiftEmptyArrayStorage;
          result = sub_1000197B0(&v27);
        }

        else
        {
          v16 = sub_1000B6D04()[2];

          if (v16)
          {
            v17 = *(v3 + 248);
            v18 = *(v17 + 16);
            v19 = (v17 + 32);
            while (v18)
            {
              v20 = *v19++;
              --v18;
              if (v20 == 3)
              {
                goto LABEL_34;
              }
            }

            v24 = sub_1000B6D04();
            sub_10001AB64(v24, &v27);
            if (sub_100012728(&v27, a1))
            {
              result = sub_100021028(&v27);
              goto LABEL_40;
            }

            *(a2 + 24) = sub_10000C9C0(&qword_1005D1540, &qword_1004D6948);
            *(a2 + 32) = sub_10000DF44(&qword_1005D1548, &qword_1005D1540, &qword_1004D6948);
            v26 = swift_allocObject();
            *a2 = v26;
            sub_100020FF0(&v27, v26 + 16);
            *(v26 + 96) = _swiftEmptyArrayStorage;
            *(v26 + 104) = _swiftEmptyArrayStorage;
            result = sub_100021028(&v27);
          }

          else
          {
LABEL_34:
            v21 = sub_1000B6FCC()[2];

            if (!v21)
            {
              goto LABEL_6;
            }

            v22 = sub_1000B6FCC();
            *(&v29 + 1) = _swiftEmptySetSingleton;
            v30[0] = _swiftEmptySetSingleton;
            LOBYTE(v36) = 1;
            *&v29 = v22;
            *&v27 = &type metadata for RenameMailboxes;
            sub_1004A6674();
            if (sub_100012728(&v27, a1))
            {
              result = sub_1001115D8(&v27);
              goto LABEL_40;
            }

            *(a2 + 24) = sub_10000C9C0(&qword_1005D1550, &qword_1004D6950);
            *(a2 + 32) = sub_10000DF44(&qword_1005D1558, &qword_1005D1550, &qword_1004D6950);
            v25 = swift_allocObject();
            *a2 = v25;
            sub_1001115A0(&v27, v25 + 16);
            *(v25 + 88) = _swiftEmptyArrayStorage;
            *(v25 + 96) = _swiftEmptyArrayStorage;
            result = sub_1001115D8(&v27);
          }
        }

        goto LABEL_19;
      }

      *(a2 + 24) = sub_10000C9C0(&qword_1005D1560, &qword_1004D6958);
      *(a2 + 32) = sub_10000DF44(&qword_1005D1568, &qword_1005D1560, &qword_1004D6958);
      v15 = swift_allocObject();
      *a2 = v15;
      sub_10014256C(&v27, v15 + 16);
      *(v15 + 88) = _swiftEmptyArrayStorage;
      *(v15 + 96) = _swiftEmptyArrayStorage;
      result = sub_1001425C8(&v27);
LABEL_19:
      *(a2 + 40) = 0;
      return result;
    }

    v45 = *(v2 + 144);
    v46 = *(v2 + 160);
    *&v27 = sub_100162334(_swiftEmptyArrayStorage);
    *(&v27 + 1) = sub_100163378(_swiftEmptyArrayStorage);
    sub_10000E268(&v45, &v41, &qword_1005D1510, &qword_1004D6928);
    if (qword_1005CCE60 != -1)
    {
      swift_once();
    }

    sub_100014B90(&qword_1005DDF30, v28);
    strcpy(v30, "ListMailboxes");
    HIWORD(v30[1]) = -4864;
    v31 = BYTE6(v7) & 1;
    v32 = v45;
    v33 = v46;
    v34 = HIBYTE(v7);
    v35 = v8;
    if (sub_100012728(v28, a1))
    {
      sub_10009A260(&v27);
      goto LABEL_14;
    }
  }

  else
  {
    v41 = *(v2 + 144);
    *&v42 = *(v2 + 160);
    *&v27 = sub_100162334(_swiftEmptyArrayStorage);
    *(&v27 + 1) = sub_100163378(_swiftEmptyArrayStorage);
    sub_10000E268(&v41, &v36, &qword_1005D1510, &qword_1004D6928);
    if (qword_1005CCE60 != -1)
    {
      swift_once();
    }

    sub_100014B90(&qword_1005DDF30, v28);
    strcpy(v30, "ListMailboxes");
    HIWORD(v30[1]) = -4864;
    v31 = BYTE6(v7) & 1;
    v32 = v41;
    v33 = v42;
    v34 = HIBYTE(v7);
    v35 = v8;
    if (sub_100012728(v28, a1))
    {
      result = sub_10009A260(&v27);
LABEL_40:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
      goto LABEL_7;
    }
  }

  *(a2 + 24) = sub_10000C9C0(&qword_1005D1518, &qword_1004D6930);
  *(a2 + 32) = sub_10000DF44(&qword_1005D1520, &qword_1005D1518, &qword_1004D6930);
  v13 = swift_allocObject();
  *a2 = v13;
  sub_10009A228(&v27, v13 + 16);
  *(v13 + 136) = _swiftEmptyArrayStorage;
  *(v13 + 144) = _swiftEmptyArrayStorage;
  *(a2 + 40) = 0;
  return sub_10009A260(&v27);
}

uint64_t sub_10012FC9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(v2 + 168);
  v8 = *(v2 + 176);
  v6 = v2 + 168;
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  sub_100020D10(v7, v8, v9, *(v6 + 24));
  v53 = a2;
  v11 = sub_1000B7BFC(a1, a2);
  v12 = v11;
  if (v10 == 1)
  {
    v48 = v9;
    v49 = v8;
    v51 = v11;
    v13 = *(v7 + 16);
    v50 = v7;
    if (v13)
    {
      sub_1000923A8(0, v13, 0);
      v14 = (v7 + 40);
      do
      {
        v16 = *(v14 - 1);
        v15 = *v14;
        v17 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];

        if (v17 >= v18 >> 1)
        {
          sub_1000923A8((v18 > 1), v17 + 1, 1);
        }

        v14 += 22;
        _swiftEmptyArrayStorage[2] = v17 + 1;
        v19 = &_swiftEmptyArrayStorage[2 * v17];
        v19[4] = v16;
        v19[5] = v15;
        --v13;
      }

      while (v13);
    }

    v21 = sub_1000CE9EC(_swiftEmptyArrayStorage);

    v22 = *(a1 + 16);
    v52 = v3;
    if (v22)
    {
      sub_1000923A8(0, v22, 0);
      v23 = (a1 + 40);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        v26 = _swiftEmptyArrayStorage[2];
        v27 = _swiftEmptyArrayStorage[3];

        if (v26 >= v27 >> 1)
        {
          sub_1000923A8((v27 > 1), v26 + 1, 1);
        }

        v23 += 12;
        _swiftEmptyArrayStorage[2] = v26 + 1;
        v28 = &_swiftEmptyArrayStorage[2 * v26];
        v28[4] = v25;
        v28[5] = v24;
        --v22;
      }

      while (v22);
      v3 = v52;
    }

    v29 = sub_1000CE9EC(_swiftEmptyArrayStorage);

    if (*(v21 + 16) <= v29[2] >> 3)
    {
      sub_10015CB24(v21);
    }

    else
    {
      sub_10015F6DC(v21, v29);
    }

    v30 = *(v3 + 64);
    v31 = 1 << *(v30 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v30 + 64);
    v34 = (v31 + 63) >> 6;

    v36 = 0;
    while (v33)
    {
LABEL_29:
      v39 = __clz(__rbit64(v33)) | (v36 << 6);
      v40 = *(*(v30 + 48) + 4 * v39);
      v41 = (*(v30 + 56) + 32 * v39);
      v42 = *v41;
      v43 = *(v41 + 1);
      v44 = v41[16];
      if (v43)
      {
        v45 = *(v41 + 1);
        swift_bridgeObjectRetain_n();

        v37 = sub_100155780(v46, v43);
      }

      else
      {
        v37 = 0;
      }

      v33 &= v33 - 1;
      sub_1000BC63C(v40, v42, v43, v44, v37, v53);
    }

    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v38 >= v34)
      {
        break;
      }

      v33 = *(v30 + 64 + 8 * v38);
      ++v36;
      if (v33)
      {
        v36 = v38;
        goto LABEL_29;
      }
    }

    sub_100020D58(v50, v49, v48, 1);

    v12 = v51;
    v3 = v52;
    v20 = *(v52 + 120);
    if (!v20)
    {
      return v12;
    }

    goto LABEL_32;
  }

  sub_100020D58(v7, v8, v9, 0);
  v20 = *(v3 + 120);
  if (v20)
  {
LABEL_32:
    if (*(v3 + 192) == 1)
    {
      v47 = sub_100130030(v20);
      sub_1000C11D8(v47);
    }
  }

  return v12;
}

uint64_t sub_100130030(uint64_t a1)
{
  v2 = v1;
  v4 = &_swiftEmptyDictionarySingleton;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v56 = &_swiftEmptyDictionarySingleton;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (!v9)
    {
      break;
    }

LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(a1 + 48) + 16 * v15;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(a1 + 56) + 72 * v15;
    LOWORD(v16) = *(v19 + 64);
    v21 = *(v19 + 32);
    v20 = *(v19 + 48);
    v52 = *(v19 + 16);
    v53 = v21;
    v54 = v20;
    v55 = v16;
    v51 = *v19;
    if ((v16 & 0x100) != 0)
    {
      v44 = v17;
      v45 = v18;
      v48 = v53;
      v49 = v54;
      v50 = v55;
      v46 = v51;
      v47 = v52;

      sub_100063BD4(&v51, v42);
      result = sub_100025F40(&v44, &qword_1005D14D0, &qword_1004D68F0);
    }

    else
    {
      v37 = *(&v52 + 1);
      v38 = v53;
      v22 = v54;
      v40 = v2;
      v39 = v55;
      v46 = *v19;
      v50 = *(v19 + 64);
      v49 = *(v19 + 48);
      v48 = *(v19 + 32);
      v47 = *(v19 + 16);
      v23 = v4[2];
      v41 = v17;
      if (v4[3] <= v23)
      {

        sub_100063BD4(&v51, v42);
        sub_1000C7E44(v23 + 1, 1);
        v4 = v56;
      }

      else
      {

        sub_100063BD4(&v51, v42);
      }

      v24 = v4[5];
      sub_1004A6E94();
      sub_1004A6EB4(v18 | (v18 << 32));
      result = sub_1004A6F14();
      v25 = (v4 + 8);
      v26 = -1 << *(v4 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~v4[(v27 >> 6) + 8]) == 0)
      {
        v31 = 0;
        v32 = (63 - v26) >> 6;
        v2 = v40;
        v30 = v41;
        while (++v28 != v32 || (v31 & 1) == 0)
        {
          v33 = v28 == v32;
          if (v28 == v32)
          {
            v28 = 0;
          }

          v31 |= v33;
          v34 = *&v25[8 * v28];
          if (v34 != -1)
          {
            v29 = __clz(__rbit64(~v34)) + (v28 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_27;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~v4[(v27 >> 6) + 8])) | v27 & 0x7FFFFFFFFFFFFFC0;
      v2 = v40;
      v30 = v41;
LABEL_24:
      *&v25[(v29 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v29;
      v35 = v4[6] + 16 * v29;
      *v35 = v30;
      *(v35 + 8) = v18;
      v36 = v4[7] + 48 * v29;
      *v36 = v37;
      *(v36 + 8) = v38;
      *(v36 + 24) = v22 & 1;
      *(v36 + 32) = *(&v22 + 1);
      *(v36 + 40) = v39 & 1;
      ++v4[2];
      v42[2] = v48;
      v42[3] = v49;
      v43 = v50;
      v42[0] = v46;
      v42[1] = v47;
      result = sub_100063C30(v42);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return v4;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_100130390(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v100 = a2;
  v90 = a1;
  v89 = type metadata accessor for State.Logger();
  v4 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v98 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 184);
  v7 = *(v2 + 216);
  v111 = *(v2 + 200);
  v112[0] = v7;
  *(v112 + 12) = *(v2 + 228);
  v109 = *(v2 + 168);
  v110 = v6;
  v99 = sub_1000B7BA4();
  memcpy(v108, v2, sizeof(v108));
  v8 = LOBYTE(v108[3]);
  v9 = BYTE1(v108[3]);
  v10 = v108[4];
  v11 = LOBYTE(v108[5]);
  v12 = BYTE2(v108[2]);
  v13 = v108[6];
  v14 = v108[7];

  v15 = sub_100166D28();
  v16 = v15;
  v102 = v12;
  if (v10 != 3 && v10 != 2)
  {
    v18 = sub_100166E18(v15);
    if ((v9 & 1) == 0)
    {
      if (v10 == 1)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            v19 = 0;
            v97 = &_mh_execute_header;
            v20 = 512;
LABEL_163:
            v96 = v20;
            goto LABEL_19;
          }

LABEL_162:
          v19 = 0;
          v97 = 0;
          v8 = 1;
          v20 = 256;
          goto LABEL_163;
        }
      }

      else if (!v10 && v8)
      {
        if (v8 != 1)
        {
          v8 = 0;
          v96 = 0;
          v97 = 0;
          v19 = 0;
          goto LABEL_19;
        }

        goto LABEL_162;
      }
    }

    v8 = (v18 & 1) == 0;
    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = &_mh_execute_header;
    }

    v22 = 512;
    if (v18)
    {
      v22 = 0;
    }

    v96 = v22;
    v97 = v21;
    v19 = (v18 & 1) == 0;
LABEL_19:
    v23 = sub_100013AD0(&off_100598658, v14);
    if (v23)
    {
      v24 = v8;
    }

    else
    {
      v24 = 1;
    }

    LODWORD(v95) = v24;
    v25 = (v23 & 1) == 0 || v19;
    LODWORD(v94) = v25;
    v26 = sub_100166E18(v16);
    v27 = sub_100013CF4(v14);

    v28 = v27 ^ 1;
    if (v27 & 1) == 0 && (v9)
    {
      v28 = sub_100166E18(v16);
      v27 = v28 ^ 1;
    }

    v29 = *(v16 + 16);

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v35 = 0x10000;
        if ((v28 & 1) == 0)
        {
          v35 = 0;
        }

        v30 = 0x20000;
        if (v27)
        {
          v30 = v35;
        }

        v34 = v96;
        if (v13 >= 3989)
        {
          v34 = 512;
        }

        if (((v29 == 0) & v9) != 0)
        {
          v31 = 0x100000000000000;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0x10000000000;
        if ((v26 & 1) == 0)
        {
          v32 = 0;
        }

        if ((v94 & 1) == 0)
        {
          v36 = 0;
          v17 = v90;
          v33 = v95;
          goto LABEL_71;
        }

        v17 = v90;
        v33 = v95;
      }

      else
      {
        if (v28)
        {
          v30 = 0x10000;
        }

        else
        {
          v30 = 0;
        }

        v34 = v96;
        if (v13 >= 3989)
        {
          v34 = 512;
        }

        if (((v29 == 0) & v9) != 0)
        {
          v31 = 0x100000000000000;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0x10000000000;
        if ((v26 & 1) == 0)
        {
          v32 = 0;
        }

        v17 = v90;
        v33 = v95;
        if ((v94 & 1) == 0)
        {
          v36 = 0;
          goto LABEL_71;
        }
      }
    }

    else
    {
      v30 = 0;
      if (v11)
      {
        v36 = 0;
        v34 = v96;
        if (v13 >= 3989)
        {
          v34 = 512;
        }

        if (((v29 == 0) & v9) != 0)
        {
          v31 = 0x100000000000000;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0x10000000000;
        if ((v26 & 1) == 0)
        {
          v32 = 0;
        }

        v17 = v90;
        v33 = v95;
        if ((v94 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (((v29 == 0) & v9) != 0)
        {
          v31 = 0x100000000000000;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0x10000000000;
        if ((v26 & 1) == 0)
        {
          v32 = 0;
        }

        v33 = 1;
        v34 = 512;
        v17 = v90;
      }
    }

    v36 = 0x1000000;
LABEL_71:
    v92 = v36;
    v93 = v32;
    v94 = v34;
    v95 = v31;
    v96 = v30;
    v91 = v33;
    goto LABEL_72;
  }

  v95 = 0x100000000000000;
  v96 = 0;
  v97 = &_mh_execute_header;
  v92 = 0x1000000;
  v93 = 0;
  v94 = 512;
  v91 = 1;
  v17 = v90;
LABEL_72:
  LODWORD(v90) = v102;
  sub_100130C40(v17, v100);
  memcpy(v107, v3, sizeof(v107));
  v37 = LOBYTE(v107[3]);
  v38 = BYTE1(v107[3]);
  v39 = v107[4];
  v40 = LOBYTE(v107[5]);
  v41 = BYTE2(v107[2]);
  v42 = v107[6];
  v43 = v107[7];

  v44 = sub_100166D28();
  v45 = v44;
  v101 = v41;
  if (v39 == 2 || v39 == 3)
  {

    v46 = 0;
    v47 = 0;
    v48 = 0x100000000000000;
    v49 = &_mh_execute_header;
    v50 = 0x1000000;
    v51 = 512;
    v52 = 1;
    v53 = v97;
    v54 = v98;
    v55 = v99;
    v56 = v95;
    v57 = v96;
    v58 = v93;
    v59 = v94;
    v61 = v91;
    v60 = v92;
    v62 = v90;
    goto LABEL_143;
  }

  v63 = sub_100166E18(v44);
  if ((v38 & 1) == 0)
  {
    if (v39 == 1)
    {
      if (v37)
      {
        if (v37 == 1)
        {
          v64 = 0;
          v49 = &_mh_execute_header;
          v65 = 512;
LABEL_165:
          v87 = v65;
          goto LABEL_90;
        }

LABEL_164:
        v64 = 0;
        v49 = 0;
        v37 = 1;
        v65 = 256;
        goto LABEL_165;
      }
    }

    else if (!v39 && v37)
    {
      if (v37 != 1)
      {
        v37 = 0;
        v87 = 0;
        v64 = 0;
        v49 = 0;
        goto LABEL_90;
      }

      goto LABEL_164;
    }
  }

  v37 = (v63 & 1) == 0;
  if (v63)
  {
    v49 = 0;
  }

  else
  {
    v49 = &_mh_execute_header;
  }

  v66 = 512;
  if (v63)
  {
    v66 = 0;
  }

  v87 = v66;
  v64 = (v63 & 1) == 0;
LABEL_90:
  v67 = sub_100013AD0(&off_100598658, v43);
  if (v67)
  {
    v68 = v37;
  }

  else
  {
    v68 = 1;
  }

  v69 = (v67 & 1) == 0 || v64;
  v85 = v69;
  v86 = v68;
  v88 = sub_100166E18(v45);
  v70 = sub_100013CF4(v43);

  v71 = v70 ^ 1;
  if (v70 & 1) == 0 && (v38)
  {
    v71 = sub_100166E18(v45);
    v70 = v71 ^ 1;
  }

  v72 = *(v45 + 16);

  v73 = (v72 == 0) & v38;
  if (v40 > 1)
  {
    if (v40 == 2)
    {
      v46 = 0x10000;
      if ((v71 & 1) == 0)
      {
        v46 = 0;
      }

      if ((v70 & 1) == 0)
      {
        v46 = 0x20000;
      }

      v51 = v87;
      if (v42 >= 3989)
      {
        v51 = 512;
      }

      v74 = v73 == 0;
      v48 = 0x100000000000000;
      if (v74)
      {
        v48 = 0;
      }

      v47 = 0x10000000000;
      if ((v88 & 1) == 0)
      {
        v47 = 0;
      }

      v55 = v99;
      if ((v85 & 1) == 0)
      {
        v50 = 0;
        v53 = v97;
        v54 = v98;
        v56 = v95;
        v57 = v96;
        v58 = v93;
        v59 = v94;
        v61 = v91;
        v60 = v92;
        v62 = v90;
        LODWORD(v52) = v86;
        goto LABEL_142;
      }

      v53 = v97;
      v54 = v98;
      v56 = v95;
      v57 = v96;
      v58 = v93;
      v59 = v94;
      v61 = v91;
      v60 = v92;
      v62 = v90;
      LODWORD(v52) = v86;
    }

    else
    {
      v46 = 0x10000;
      if ((v71 & 1) == 0)
      {
        v46 = 0;
      }

      v51 = v87;
      if (v42 >= 3989)
      {
        v51 = 512;
      }

      v74 = v73 == 0;
      v48 = 0x100000000000000;
      if (v74)
      {
        v48 = 0;
      }

      v47 = 0x10000000000;
      if ((v88 & 1) == 0)
      {
        v47 = 0;
      }

      v55 = v99;
      v57 = v96;
      v53 = v97;
      v59 = v94;
      v56 = v95;
      v60 = v92;
      v58 = v93;
      v61 = v91;
      v62 = v90;
      LODWORD(v52) = v86;
      if ((v85 & 1) == 0)
      {
        v50 = 0;
        v54 = v98;
        goto LABEL_142;
      }

      v54 = v98;
    }
  }

  else
  {
    v46 = 0;
    if (v40)
    {
      v50 = 0;
      v51 = v87;
      if (v42 >= 3989)
      {
        v51 = 512;
      }

      v74 = v73 == 0;
      v48 = 0x100000000000000;
      if (v74)
      {
        v48 = 0;
      }

      v47 = 0x10000000000;
      if ((v88 & 1) == 0)
      {
        v47 = 0;
      }

      v53 = v97;
      v54 = v98;
      v55 = v99;
      v56 = v95;
      v57 = v96;
      v58 = v93;
      v59 = v94;
      v61 = v91;
      v60 = v92;
      v62 = v90;
      LODWORD(v52) = v86;
      if ((v85 & 1) == 0)
      {
        goto LABEL_142;
      }
    }

    else
    {
      v74 = v73 == 0;
      v48 = 0x100000000000000;
      if (v74)
      {
        v48 = 0;
      }

      v47 = 0x10000000000;
      if ((v88 & 1) == 0)
      {
        v47 = 0;
      }

      LODWORD(v52) = 1;
      v51 = 512;
      v53 = v97;
      v54 = v98;
      v55 = v99;
      v56 = v95;
      v57 = v96;
      v58 = v93;
      v59 = v94;
      v61 = v91;
      v60 = v92;
      v62 = v90;
    }
  }

  v50 = 0x1000000;
LABEL_142:
  v52 = v52;
LABEL_143:
  if (v62)
  {
    v75 = 0x1000000000000;
  }

  else
  {
    v75 = 0;
  }

  v76 = v57 | v59 | v61 | v60 | v53 | v58 | v56;
  if (v101)
  {
    v77 = 0x1000000000000;
  }

  else
  {
    v77 = 0;
  }

  if (!sub_100166EB4(v76 | v75, v46 | v51 | v52 | v50 | v49 | v47 | v48 | v77))
  {
    sub_10013140C(v76 | v75);
    sub_100142674(v100, v3);
  }

  if (v55)
  {
    v78 = *(v3 + 184);
    v79 = *(v3 + 216);
    v105 = *(v3 + 200);
    v106[0] = v79;
    *(v106 + 12) = *(v3 + 228);
    v103 = *(v3 + 168);
    v104 = v78;
    if ((sub_1000B7BA4() & 1) == 0)
    {
      sub_100142970(v100, v54, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v80 = sub_1004A4A54();
      v81 = sub_1004A6034();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 68157952;
        *(v82 + 4) = 2;
        *(v82 + 8) = 256;
        v83 = *(v54 + *(v89 + 20));
        sub_1001429D8(v54, type metadata accessor for State.Logger);
        *(v82 + 10) = v83;
        _os_log_impl(&_mh_execute_header, v80, v81, "[%.*hhx] Resetting mailboxes-need-to-be-updated.", v82, 0xBu);
      }

      else
      {
        sub_1001429D8(v54, type metadata accessor for State.Logger);
      }

      *(v3 + 137) = 0;
    }
  }
}

uint64_t sub_100130C40(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UntaggedResponse(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for State.Logger();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v65 - v16;
  v18 = a1 >> 62;
  if (a1 >> 62)
  {
    if (v18 == 1 && (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) & 1) != 0)
    {
      v19 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = (v19 >> 59) & 0x1E | (v19 >> 2) & 1;
      if (v20)
      {
        if (v20 == 19)
        {
          v74 = v15;
          v48 = *((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_100142970(a2, &v65 - v16, type metadata accessor for State.Logger);

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v49 = sub_1004A4A54();
          LODWORD(v73) = sub_1004A5FF4();
          if (os_log_type_enabled(v49, v73))
          {
            v50 = swift_slowAlloc();
            v72 = v49;
            v51 = v50;
            *v50 = 68158208;
            *(v50 + 4) = 2;
            *(v50 + 8) = 256;
            LODWORD(v74) = v17[*(v74 + 20)];
            sub_1001429D8(v17, type metadata accessor for State.Logger);
            *(v51 + 10) = v74;
            *(v51 + 11) = 2048;
            *(v51 + 13) = v48[2];

            v52 = v72;
            _os_log_impl(&_mh_execute_header, v72, v73, "[%.*hhx] Setting %ld search requests.", v51, 0x15u);
          }

          else
          {
            sub_1001429D8(v17, type metadata accessor for State.Logger);
          }

          if (*(v3 + 120))
          {
            v62 = *(v3 + 120);
          }

          else
          {
            v62 = sub_100162334(_swiftEmptyArrayStorage);
          }

          v103[0] = v62;
          v103[1] = sub_1001323F4;
          v103[2] = 0;
          v103[3] = sub_100141F0C;
          v103[4] = 0;
          v103[5] = sub_100141F1C;
          v103[6] = 0;
          *&v92 = &_swiftEmptyDictionarySingleton;

          sub_1001399E4(v103, 1, &v92);
          sub_1000B97B0(v48, v92);
        }

        else if (v20 == 2)
        {
          sub_100131EB0(*((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x18), *((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x20), *((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x28), a2);
        }
      }

      else
      {
        v53 = v15;
        LODWORD(v74) = *(v19 + 16);
        v54 = *(v19 + 18);
        v69 = *(v19 + 17);
        v70 = v54;
        v73 = *(v19 + 24);
        LODWORD(v72) = *(v19 + 32);
        v71 = *(v19 + 40);
        sub_100142970(a2, v14, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v55 = sub_1004A4A54();
        v67 = sub_1004A6034();
        v68 = v55;
        if (os_log_type_enabled(v55, v67))
        {
          v56 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *&v75[0] = v66;
          *v56 = 68158210;
          *(v56 + 4) = 2;
          *(v56 + 8) = 256;
          v57 = v14[*(v53 + 20)];
          sub_1001429D8(v14, type metadata accessor for State.Logger);
          *(v56 + 10) = v57;
          *(v56 + 11) = 2082;
          LOBYTE(v92) = v74;
          BYTE1(v92) = v69;
          BYTE2(v92) = v70;
          *(&v92 + 1) = v73;
          LOBYTE(v93) = v72;
          *(&v93 + 1) = v71;
          v58 = sub_1004A5824();
          v60 = sub_10015BA6C(v58, v59, v75);

          *(v56 + 13) = v60;
          v61 = v68;
          _os_log_impl(&_mh_execute_header, v68, v67, "[%.*hhx] Received environment update: %{public}s", v56, 0x15u);
          sub_1000197E0(v66);
        }

        else
        {
          sub_1001429D8(v14, type metadata accessor for State.Logger);
        }

        *(v3 + 24) = v74;
        v63 = v70;
        *(v3 + 25) = v69;
        *(v3 + 26) = v63;
        *(v3 + 32) = v73;
        *(v3 + 40) = v72;
        *(v3 + 48) = v71;
      }
    }
  }

  else
  {
    v21 = a1[3];
    if (v21 >> 60 == 6)
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *(v3 + 56);

      *(v3 + 56) = v22;
    }
  }

  v24 = *(v3 + 72);
  if (v24 == 2)
  {
    v25 = ServerID.empty.unsafeMutableAddressor();
    v27 = v25[1];
    v26 = v25[2];
    v92 = *v25;
    v93 = v27;
    v94 = v26;
    v28 = v25[6];
    v30 = v25[3];
    v29 = v25[4];
    v97 = v25[5];
    v98 = v28;
    v95 = v30;
    v96 = v29;
    v31 = v25[10];
    v33 = v25[7];
    v32 = v25[8];
    v101 = v25[9];
    v102 = v31;
    v99 = v33;
    v100 = v32;
    sub_10010E800(&v92, v75);
    sub_10010E0AC(_swiftEmptySetSingleton, &v92, &v82);
    v24 = v82;
    v34 = v83;
    v35 = v84;
    v36 = v85 | (v86 << 16);
  }

  else
  {
    v36 = *(v3 + 112) | (*(v3 + 114) << 16);
    v34 = *(v3 + 80);
    v35 = *(v3 + 96);
  }

  v87 = v24;
  v88 = v34;
  v89 = v35;
  v90 = v36;
  v91 = BYTE2(v36);
  sub_1000BEDD4(a1, &v87, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 120), a2);
  result = sub_10010B09C(a1, a2);
  if (!v18)
  {
    v38 = a1[3];
    if (v38 >> 60 == 3)
    {
      v39 = a1[5];
      v40 = a1[6];
      v41 = swift_projectBox();
      sub_100142970(v41, v9, type metadata accessor for UntaggedResponse);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v42 = *v9;
        v43 = *(v9 + 2);
        v44 = *(v9 + 6);
        v78 = *(v9 + 5);
        v79 = v44;
        v45 = *(v9 + 8);
        v80 = *(v9 + 7);
        v81 = v45;
        v46 = *(v9 + 2);
        v75[0] = *(v9 + 1);
        v75[1] = v46;
        v47 = *(v9 + 4);
        v76 = *(v9 + 3);
        v77 = v47;
        if (BYTE8(v75[0]) & 1) != 0 || (v76 & 1) != 0 || (BYTE8(v76))
        {

          return sub_10009A0FC(v75);
        }

        else
        {
          v64 = v42;
          sub_1000CB7C8(v38);

          sub_10009A0FC(v75);
          sub_1000CA698(v64, v43, (v3 + 168), v77, SBYTE8(v77));

          sub_1000CB848(v38);
        }
      }

      else
      {
        return sub_1001429D8(v9, type metadata accessor for UntaggedResponse);
      }
    }
  }

  return result;
}