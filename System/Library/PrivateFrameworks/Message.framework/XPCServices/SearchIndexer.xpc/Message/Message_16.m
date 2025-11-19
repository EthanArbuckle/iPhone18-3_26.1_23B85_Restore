unint64_t sub_10010EE5C()
{
  result = qword_1005D0C48;
  if (!qword_1005D0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C48);
  }

  return result;
}

unint64_t sub_10010EEB4()
{
  result = qword_1005D0C50;
  if (!qword_1005D0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C50);
  }

  return result;
}

unint64_t sub_10010EF0C()
{
  result = qword_1005D0C58;
  if (!qword_1005D0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C58);
  }

  return result;
}

unint64_t sub_10010EFF4()
{
  result = qword_1005D0C60;
  if (!qword_1005D0C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C60);
  }

  return result;
}

unint64_t sub_10010F04C()
{
  result = qword_1005D0C68;
  if (!qword_1005D0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C68);
  }

  return result;
}

unint64_t sub_10010F0A4()
{
  result = qword_1005D0C70;
  if (!qword_1005D0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C70);
  }

  return result;
}

unint64_t sub_10010F0FC()
{
  result = qword_1005D0C78;
  if (!qword_1005D0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C78);
  }

  return result;
}

unint64_t sub_10010F154()
{
  result = qword_1005D0C80;
  if (!qword_1005D0C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C80);
  }

  return result;
}

unint64_t sub_10010F1AC()
{
  result = qword_1005D0C88;
  if (!qword_1005D0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C88);
  }

  return result;
}

unint64_t sub_10010F204()
{
  result = qword_1005D0C90;
  if (!qword_1005D0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C90);
  }

  return result;
}

uint64_t sub_10010F2A8(uint64_t result)
{
  if (*(v1 + 24) == 1)
  {
    v2 = result;
    v3 = *v1;
    v4 = *(v1 + 8);
    v44 = (v1 + 8);
    v5 = *(v1 + 16);
    v51 = *v1;
    v6 = result + 64;
    v7 = 1 << *(result + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(result + 64);
    v41 = v5;
    v42 = v4;
    sub_100020D10(v3, v4, v5, 1);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    v12 = 0;
    v43 = v3;
    v48 = v1;
    v45 = v2;
    v13 = v3 + 32;
LABEL_7:
    while (v9)
    {
      v15 = v9;
LABEL_13:
      v9 = (v15 - 1) & v15;
      v17 = *(v3 + 16);
      if (v17)
      {
        v47 = (v15 - 1) & v15;
        v18 = 0;
        v19 = (*(v2 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v15)))));
        v20 = *v19;
        v21 = v19[1];
        v22 = *v19 + 32;
        while (1)
        {
          v23 = (v13 + 176 * v18);
          if (v23[1] == v21)
          {
            v24 = *v23;
            v25 = *(*v23 + 16);
            if (v25 == *(v20 + 16))
            {
              break;
            }
          }

LABEL_15:
          if (++v18 == v17)
          {
            v9 = v47;
            goto LABEL_7;
          }
        }

        if (v25)
        {
          v26 = v24 == v20;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          v27 = (v24 + 32);
          v28 = v22;
          while (v25)
          {
            if (*v27 != *v28)
            {
              goto LABEL_15;
            }

            ++v27;
            ++v28;
            if (!--v25)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_26:
        v29 = v23[17];

        v46 = v29;

        sub_1000B5158(v11);
        v30 = *(v1 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *(v1 + 32);
        *&v50[0] = v32;
        v34 = sub_100063C84(v20, v21);
        v35 = v32[2];
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_39;
        }

        v38 = v33;
        if (v32[3] >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10013A644();
            v32 = *&v50[0];
          }
        }

        else
        {
          sub_1000C3618(v37, isUniquelyReferenced_nonNull_native);
          v32 = *&v50[0];
          v39 = sub_100063C84(v20, v21);
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_40;
          }

          v34 = v39;
        }

        *(v48 + 32) = v32;
        if (v38)
        {
        }

        else
        {
          sub_10001C714(v34, v20, v21, _swiftEmptySetSingleton, v32);
        }

        v9 = v47;
        v14 = v32[7] + 8 * v34;
        sub_1000809B8(v46);
        sub_100168DE0(v18, v49);
        v50[8] = v49[8];
        v50[9] = v49[9];
        v50[10] = v49[10];
        v50[4] = v49[4];
        v50[5] = v49[5];
        v50[6] = v49[6];
        v50[7] = v49[7];
        v50[0] = v49[0];
        v50[1] = v49[1];
        v50[2] = v49[2];
        v50[3] = v49[3];
        sub_10000E0E8(v50);
        v11 = sub_10010F618;
        v3 = v51;
        v1 = v48;
        v2 = v45;
        v13 = v51 + 32;
      }
    }

    while (1)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v16 >= v10)
      {

        sub_100020D58(v43, v42, v41, 1);
        result = sub_1000B5158(v11);
        *v1 = v3;
        *v44 = 0;
        v44[1] = 0;
        *(v1 + 24) = 1;
        return result;
      }

      v15 = *(v6 + 8 * v16);
      ++v12;
      if (v15)
      {
        v12 = v16;
        goto LABEL_13;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = sub_1004A6E24();
    __break(1u);
  }

  return result;
}

void sub_10010F628(uint64_t a1)
{
  v3 = type metadata accessor for Task.Logger(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v16 = *(v1 + 48);
  if (*(v16 + 16) == 1 && (sub_10012D588(v16, v52), v52[0]))
  {
    v17 = v52[2];
    v18 = v53;

    sub_100111420(a1, v15, type metadata accessor for Task.Logger);
    sub_100111420(a1, v12, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v19 = sub_1004A4A54();
    v20 = sub_1004A6034();

    if (os_log_type_enabled(v19, v20))
    {
      v47 = v18;
      v21 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v21 = 68158723;
      *(v21 + 4) = 2;
      *(v21 + 8) = 256;
      v22 = *&v12[*(v3 + 20)];
      sub_1001114F0(v12, type metadata accessor for Task.Logger);
      *(v21 + 10) = v22;
      *(v21 + 11) = 2082;
      v23 = &v15[*(v3 + 20)];
      v24 = *(v23 + 1);
      v25 = *(v23 + 2);
      v26 = *(v23 + 3);
      v27 = *(v23 + 4);
      v28 = *(v23 + 10);
      sub_100018BD0(*v23, v24, v25, v26);
      sub_1001114F0(v15, type metadata accessor for Task.Logger);
      if (v26 < 0)
      {
      }

      v29 = sub_10015BA6C(v24, v25, &v48);

      *(v21 + 13) = v29;
      *(v21 + 21) = 2160;
      *(v21 + 23) = 0x786F626C69616DLL;
      *(v21 + 31) = 2085;
      v49 = v17;
      v50 = v47;
      v30 = sub_1004A5824();
      v32 = sub_10015BA6C(v30, v31, &v48);

      *(v21 + 33) = v32;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%.*hhx-%{public}s] Created task for '%{sensitive,mask.mailbox}s'", v21, 0x29u);
      swift_arrayDestroy();

LABEL_11:

      return;
    }

    sub_1001114F0(v12, type metadata accessor for Task.Logger);

    v45 = v15;
  }

  else
  {
    sub_100111420(a1, v9, type metadata accessor for Task.Logger);
    sub_100111420(a1, v6, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1001115A0(v1, &v49);
    v19 = sub_1004A4A54();
    v33 = sub_1004A6034();
    if (os_log_type_enabled(v19, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 68158466;
      *(v34 + 4) = 2;
      *(v34 + 8) = 256;
      v36 = *&v6[*(v3 + 20)];
      sub_1001114F0(v6, type metadata accessor for Task.Logger);
      *(v34 + 10) = v36;
      *(v34 + 11) = 2082;
      v37 = &v9[*(v3 + 20)];
      v38 = *(v37 + 1);
      v39 = *(v37 + 2);
      v40 = *(v37 + 3);
      v41 = *(v37 + 4);
      v42 = *(v37 + 10);
      sub_100018BD0(*v37, v38, v39, v40);
      sub_1001114F0(v9, type metadata accessor for Task.Logger);
      if (v40 < 0)
      {
      }

      v43 = sub_10015BA6C(v38, v39, &v48);

      *(v34 + 13) = v43;
      *(v34 + 21) = 2048;
      v44 = *(v51 + 16);
      sub_1001115D8(&v49);
      *(v34 + 23) = v44;
      _os_log_impl(&_mh_execute_header, v19, v33, "[%.*hhx-%{public}s] Created task for %ld mailboxes.", v34, 0x1Fu);
      sub_1000197E0(v35);

      goto LABEL_11;
    }

    sub_1001115D8(&v49);
    sub_1001114F0(v6, type metadata accessor for Task.Logger);

    v45 = v9;
  }

  sub_1001114F0(v45, type metadata accessor for Task.Logger);
}

uint64_t sub_10010FB7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v34 = a3;
  v32 = type metadata accessor for ClientCommand(0);
  v4 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v33 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v3 + 48);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v37 = v6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = (*(v37 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v37 + 56) + 32 * v15;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);

      if ((sub_10011224C(v17, v18, v35, v36, sub_100111220) & 1) == 0)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v28 = v33;
    *v33 = v20;
    *(v28 + 8) = v21;
    *(v28 + 16) = v22;
    *(v28 + 24) = v23;
    swift_storeEnumTagMultiPayload();
    v29 = sub_10000C9C0(&qword_1005D0D28, &qword_1004D5B60);
    v30 = *(v29 + 48);
    v31 = v34;
    *v34 = v17;
    v31[1] = v18;
    sub_100111488(v28, v31 + v30, type metadata accessor for ClientCommand);
    return (*(*(v29 - 8) + 56))(v31, 0, 1, v29);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v24 = sub_10000C9C0(&qword_1005D0D28, &qword_1004D5B60);
    v25 = *(*(v24 - 8) + 56);
    v26 = v24;
    v27 = v34;

    return v25(v27, 1, 1, v26);
  }
}

void sub_10010FE44(uint64_t a1, Swift::UInt a2, unint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6, uint64_t a7)
{
  v15 = type metadata accessor for Task.Logger(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v90 = &v82 - v20;
  __chkstk_darwin(v21);
  v85 = &v82 - v22;
  __chkstk_darwin(v23);
  v86 = &v82 - v25;
  v94 = v7;
  v26 = *(v7 + 48);
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v89 = v24;
  v91 = a1;
  v92 = a2;
  v27 = sub_100063C84(a1, a2);
  if ((v28 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v29 = *(v26 + 56) + 32 * v27;
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  LODWORD(v29) = *(v29 + 24);
  v87 = v31;
  v88 = v29;

  v33 = v93;
  sub_100010880(a7, a3, a4, a5, a6);
  if (v33)
  {
    v34 = v90;
    sub_100111420(a7, v90, type metadata accessor for Task.Logger);
    sub_100111420(a7, v18, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v35 = v32;
    v36 = sub_1004A4A54();
    v37 = sub_1004A6014();

    if (os_log_type_enabled(v36, v37))
    {
      LODWORD(v86) = v37;
      v84 = v35;
      v38 = v30;
      v93 = v33;
      v39 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v97 = v85;
      *v39 = 68159235;
      *(v39 + 4) = 2;
      *(v39 + 8) = 256;
      v40 = v89;
      v41 = *&v18[*(v89 + 20)];
      sub_1001114F0(v18, type metadata accessor for Task.Logger);
      *(v39 + 10) = v41;
      *(v39 + 11) = 2082;
      v42 = v34 + *(v40 + 20);
      v43 = *(v42 + 8);
      v44 = *(v42 + 16);
      v45 = *(v42 + 24);
      v46 = *(v42 + 32);
      v47 = *(v42 + 40);
      sub_100018BD0(*v42, v43, v44, v45);
      sub_1001114F0(v34, type metadata accessor for Task.Logger);
      if (v45 < 0)
      {
      }

      v48 = sub_10015BA6C(v43, v44, &v97);

      *(v39 + 13) = v48;
      *(v39 + 21) = 2160;
      *(v39 + 23) = 0x786F626C69616DLL;
      *(v39 + 31) = 2085;
      v95 = v38;
      v96 = v87;

      v49 = sub_1004A5824();
      v51 = sub_10015BA6C(v49, v50, &v97);

      *(v39 + 33) = v51;
      *(v39 + 41) = 2160;
      *(v39 + 43) = 0x786F626C69616DLL;
      *(v39 + 51) = 2085;

      v95 = v84;
      v96 = v88;
      v52 = sub_1004A5824();
      v54 = sub_10015BA6C(v52, v53, &v97);

      *(v39 + 53) = v54;
      _os_log_impl(&_mh_execute_header, v36, v86, "[%.*hhx-%{public}s] Failed to rename '%{sensitive,mask.mailbox}s' to '%{sensitive,mask.mailbox}s'.", v39, 0x3Du);
      swift_arrayDestroy();

      v55 = v91;
      v56 = v92;
    }

    else
    {
      sub_1001114F0(v18, type metadata accessor for Task.Logger);

      sub_1001114F0(v34, type metadata accessor for Task.Logger);
      v55 = v91;
      v56 = v92;
    }

    sub_1000883C4(&v95, v55, v56);
  }

  else
  {
    v57 = v86;
    sub_100111420(a7, v86, type metadata accessor for Task.Logger);
    v58 = v85;
    sub_100111420(a7, v85, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v59 = v32;
    v60 = sub_1004A4A54();
    v61 = sub_1004A6034();

    if (os_log_type_enabled(v60, v61))
    {
      LODWORD(v90) = v61;
      v84 = v59;
      v62 = v30;
      v93 = 0;
      v63 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v97 = v83;
      *v63 = 68159235;
      *(v63 + 4) = 2;
      *(v63 + 8) = 256;
      v64 = v89;
      v65 = *(v58 + *(v89 + 20));
      sub_1001114F0(v58, type metadata accessor for Task.Logger);
      *(v63 + 10) = v65;
      *(v63 + 11) = 2082;
      v66 = v57 + *(v64 + 20);
      v67 = *(v66 + 8);
      v68 = *(v66 + 16);
      v69 = *(v66 + 24);
      v70 = v57;
      v71 = *(v66 + 32);
      v72 = *(v66 + 40);
      sub_100018BD0(*v66, v67, v68, v69);
      sub_1001114F0(v70, type metadata accessor for Task.Logger);
      if (v69 < 0)
      {
      }

      v73 = sub_10015BA6C(v67, v68, &v97);

      *(v63 + 13) = v73;
      *(v63 + 21) = 2160;
      *(v63 + 23) = 0x786F626C69616DLL;
      *(v63 + 31) = 2085;
      v95 = v62;
      v96 = v87;

      v74 = sub_1004A5824();
      v76 = sub_10015BA6C(v74, v75, &v97);

      *(v63 + 33) = v76;
      *(v63 + 41) = 2160;
      *(v63 + 43) = 0x786F626C69616DLL;
      *(v63 + 51) = 2085;

      v95 = v84;
      v96 = v88;
      v77 = sub_1004A5824();
      v79 = sub_10015BA6C(v77, v78, &v97);

      *(v63 + 53) = v79;
      _os_log_impl(&_mh_execute_header, v60, v90, "[%.*hhx-%{public}s] Did rename '%{sensitive,mask.mailbox}s' to '%{sensitive,mask.mailbox}s'.", v63, 0x3Du);
      swift_arrayDestroy();

      v80 = v91;
      v81 = v92;
    }

    else
    {
      sub_1001114F0(v58, type metadata accessor for Task.Logger);

      sub_1001114F0(v57, type metadata accessor for Task.Logger);
      v80 = v91;
      v81 = v92;
    }

    sub_1000883C4(&v95, v80, v81);
  }
}

uint64_t sub_100110618@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100111348();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100110678(uint64_t a1)
{
  v3 = *(v1 + 48);

  sub_10010F2A8(v4);

  *(a1 + 137) = 1;
  return result;
}

unint64_t sub_1001106E4()
{
  result = qword_1005D0C98;
  if (!qword_1005D0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C98);
  }

  return result;
}

unint64_t sub_10011073C()
{
  result = qword_1005D0CA0;
  if (!qword_1005D0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0CA0);
  }

  return result;
}

unint64_t sub_100110790(uint64_t a1)
{
  result = sub_1001107B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001107B8()
{
  result = qword_1005D0D20;
  if (!qword_1005D0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0D20);
  }

  return result;
}

uint64_t sub_10011080C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v9 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = *v3;
  if (!v8)
  {
LABEL_10:
    v14 = isUniquelyReferenced_nonNull_native;
    sub_10008E7D8();
    isUniquelyReferenced_nonNull_native = v14;
    v9 = v15;
  }

  v10 = *(v9 + 48) + 16 * isUniquelyReferenced_nonNull_native;
  v11 = *v10;
  v12 = *(v10 + 8);
  sub_10013E544(isUniquelyReferenced_nonNull_native);
  *v3 = v15;
  return v11;
}

uint64_t sub_1001108E4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v9 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = *v3;
  if (!v8)
  {
LABEL_10:
    v14 = isUniquelyReferenced_nonNull_native;
    sub_10008E93C();
    isUniquelyReferenced_nonNull_native = v14;
    v9 = v15;
  }

  v10 = (*(v9 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  v11 = *v10;
  v12 = v10[1];
  sub_10013E6FC(isUniquelyReferenced_nonNull_native);
  *v3 = v15;
  return v11;
}

uint64_t sub_100110A10(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
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

  return sub_10003A194(*(a1 + 8), v3, *a2, v4) & 1;
}

uint64_t sub_100110AA0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = a2 + 24;
  v5 = result & 1;
LABEL_2:
  v6 = (v4 + 8 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_19;
    }

    v8 = *(v6 + 12);
    v6 += 2;
    ++v2;
    if (v8 == v5)
    {
      v9 = *v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100091A48(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_100091A48((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[v11];
      *(v12 + 8) = v9;
      *(v12 + 36) = v8;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_100091A28(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 4;
    do
    {
      v16 = _swiftEmptyArrayStorage[v15];
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_100091A28((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100110C64(char a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  result = sub_100110AA0(a1 & 1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_100111420(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

void *sub_100110EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a2;
  v18 = BYTE4(a2) & 1;
  v14[2] = &v16;

  v4 = sub_10009E080(sub_100111608, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = _swiftEmptyArrayStorage;
    v6 = v4;
    sub_100091A28(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = v15[2];
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = v8[3];
      if (v9 >= v12 >> 1)
      {
        sub_100091A28((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      v8[2] = v9 + 1;
      *(v8 + v9 + 8) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

void *sub_100110FD4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  result = sub_100110EA0(a1, a2 | ((HIDWORD(a2) & 1) << 32), a4);
  v24 = result[2];
  if (v24)
  {
    v15 = 0;
    v22 = result + 4;
    v25 = result;
    while (v15 < result[2])
    {
      v16 = *(v26 + 16);
      if (v16)
      {
        v17 = *(v22 + v15);
        v18 = v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v19 = *(v23 + 72);
        do
        {
          sub_100111420(v18, v13, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v13, v10, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v10, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v20 = *&v10[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v10, type metadata accessor for ClientCommand);
            if (v20 == v17)
            {
              v21 = 1;
              goto LABEL_13;
            }
          }

          v18 += v19;
          --v16;
        }

        while (v16);
      }

      ++v15;
      result = v25;
      if (v15 == v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v21 = 0;
LABEL_13:

    return v21;
  }

  return result;
}

void *sub_100111220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  v14[2] = v16;

  v4 = sub_10009E234(sub_100111550, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = _swiftEmptyArrayStorage;
    v6 = v4;
    sub_100091A28(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = v15[2];
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = v8[3];
      if (v9 >= v12 >> 1)
      {
        sub_100091A28((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      v8[2] = v9 + 1;
      *(v8 + v9 + 8) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_100111348()
{
  v1 = *(v0 + 64);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = -1 << *(v1 + 32);
  v3 = sub_1004A6554();
  v4 = sub_1001108E4(v3, *(v1 + 36));
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;

  return v4;
}

uint64_t sub_1001113E8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100111420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100111488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001114F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100111550(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 16) == v2[1])
  {
    return sub_1000FFC98(*(a1 + 8), *v2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100111658(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 40;
LABEL_2:
  v6 = (v5 + 16 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_19;
    }

    v8 = *v6;
    v6 += 2;
    ++v3;
    if (v8 == v2)
    {
      v9 = *(v6 - 6);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100091CA8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_100091CA8((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v11];
      *(v12 + 8) = v9;
      v12[5] = v2;
      v3 = v7;
      goto LABEL_2;
    }
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_100091A28(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 4;
    do
    {
      v16 = _swiftEmptyArrayStorage[v15];
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_100091A28((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      v15 += 2;
      ++v14;
      --v13;
    }

    while (v13);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100111808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  result = sub_100111658(a1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_100111420(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

void *sub_100111A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v19[-v7];
  v20 = a1;

  sub_10009E6CC(sub_100112CBC, v19, a2);
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_100091A28(0, v11, 0);
    v12 = v21;
    v13 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_100112D18(v13, v8);
      v15 = *v8;
      sub_100112D88(v8);
      v21 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_100091A28((v16 > 1), v17 + 1, 1);
        v12 = v21;
      }

      v12[2] = v17 + 1;
      *(v12 + v17 + 8) = v15;
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

void *sub_100111C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  result = sub_100111A44(a1, a3);
  v23 = result[2];
  if (v23)
  {
    v13 = 0;
    v21 = result + 4;
    v24 = result;
    while (v13 < result[2])
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_100111420(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

void *sub_100111E70(uint64_t a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  v25 = a1;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  result = sub_100112888(a2, a3);
  v23 = result[2];
  if (v23)
  {
    v13 = 0;
    v21 = result + 4;
    v24 = result;
    while (v13 < result[2])
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_100111420(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

void *sub_10011210C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  v14[2] = v16;

  v4 = sub_10009EDBC(sub_100112DF0, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = _swiftEmptyArrayStorage;
    v6 = v4;
    sub_100091A28(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = v15[2];
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = v8[3];
      if (v9 >= v12 >> 1)
      {
        sub_100091A28((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      v8[2] = v9 + 1;
      *(v8 + v9 + 8) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_10011224C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, __n128))
{
  v30 = a3;
  v9 = type metadata accessor for TaskHistory.Previous(0);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v25 - v15;
  result = a5(a1, a2, a4, v14);
  v28 = *(result + 16);
  if (v28)
  {
    v18 = 0;
    v26 = result + 32;
    v29 = result;
    while (v18 < *(result + 16))
    {
      v19 = *(v30 + 16);
      if (v19)
      {
        v20 = *(v26 + 4 * v18);
        v21 = v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v22 = *(v27 + 72);
        do
        {
          sub_100111420(v21, v16, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v16, v12, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v12, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v23 = *&v12[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v12, type metadata accessor for ClientCommand);
            if (v23 == v20)
            {
              v24 = 1;
              goto LABEL_13;
            }
          }

          v21 += v22;
          --v19;
        }

        while (v19);
      }

      ++v18;
      result = v29;
      if (v18 == v28)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v24 = 0;
LABEL_13:

    return v24;
  }

  return result;
}

uint64_t sub_100112498(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result;
  v4 = *(a2 + 16);
  v5 = a2 + 24;
LABEL_2:
  v6 = (v5 + 8 * v2);
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_19;
    }

    v8 = *(v6 + 12);
    v6 += 2;
    ++v2;
    if (v8 == v3)
    {
      v9 = *v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000921C8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_1000921C8((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[v11];
      *(v12 + 8) = v9;
      *(v12 + 36) = v3;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_100091A28(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 4;
    do
    {
      v16 = _swiftEmptyArrayStorage[v15];
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_100091A28((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10011264C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  result = sub_100112498(a1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_100111420(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

void *sub_100112888(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        a2(v7 > 1, v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9;
      *(&_swiftEmptyArrayStorage[4] + v8) = v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage[2];
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  sub_100091A28(0, v9, 0);
  v10 = _swiftEmptyArrayStorage[2];
  v11 = 32;
  do
  {
    v12 = *(_swiftEmptyArrayStorage + v11);
    v13 = _swiftEmptyArrayStorage[3];
    if (v10 >= v13 >> 1)
    {
      sub_100091A28((v13 > 1), v10 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v12;
    v11 += 4;
    ++v10;
    --v9;
  }

  while (v9);
LABEL_14:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100112A28(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    goto LABEL_20;
  }

  v7 = result;
  v8 = 0;
  v9 = a4 + 56;
  do
  {
    v10 = (v9 + 32 * v8);
    v11 = v8;
    while (1)
    {
      if (v11 >= v4)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_27;
      }

      v13 = *(v10 - 2);
      v12 = *(v10 - 1);
      v14 = *v10;
      if ((*v10 & 1) == 0)
      {
        break;
      }

      if ((a3 & 1) != 0 && v13 == v7 && v12 == a2)
      {
        v26 = v9;
        v13 = v7;
        v12 = a2;
        goto LABEL_15;
      }

LABEL_4:
      ++v11;
      v10 += 32;
      if (v8 == v4)
      {
        goto LABEL_20;
      }
    }

    if (a3 & 1) != 0 || ((v13 ^ v7))
    {
      goto LABEL_4;
    }

    v26 = v9;
LABEL_15:
    v24 = *(v10 - 6);
    result = swift_isUniquelyReferenced_nonNull_native();
    v25 = a2;
    if ((result & 1) == 0)
    {
      result = sub_100091D08(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v9 = v26;
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_100091D08((v15 > 1), v16 + 1, 1);
      v17 = v16 + 1;
      v9 = v26;
    }

    _swiftEmptyArrayStorage[2] = v17;
    v18 = &_swiftEmptyArrayStorage[4 * v16];
    *(v18 + 8) = v24;
    v18[5] = v13;
    v18[6] = v12;
    *(v18 + 56) = v14;
    a2 = v25;
  }

  while (v8 != v4);
LABEL_20:
  v19 = _swiftEmptyArrayStorage[2];
  if (v19)
  {
    sub_100091A28(0, v19, 0);
    v20 = _swiftEmptyArrayStorage[2];
    v21 = 4;
    do
    {
      v22 = _swiftEmptyArrayStorage[v21];
      v23 = _swiftEmptyArrayStorage[3];
      if (v20 >= v23 >> 1)
      {
        sub_100091A28((v23 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      *(&_swiftEmptyArrayStorage[4] + v20) = v22;
      v21 += 4;
      ++v20;
      --v19;
    }

    while (v19);
  }

  return _swiftEmptyArrayStorage;
}

BOOL sub_100112C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else if ((a4 & 0x100000000) != 0)
  {
    return 0;
  }

  return a2 == a4 && (sub_1000FFC98(a1, a3) & 1) != 0;
}

uint64_t sub_100112CBC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  return sub_10003D8C0(a1 + *(v4 + 52), v3) & 1;
}

uint64_t sub_100112D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100112D88(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100112E34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  sub_1000118A4(a1, &v25 - v9);
  sub_1000118A4(a1, v7);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_100113B98(v2, v29);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_100113B98(v2, v28);
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 68159747;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v14;
    *(v13 + 11) = 2082;
    v15 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_10015BA6C(*(v15 + 1), *(v15 + 2), &v27);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    LOWORD(v14) = *(v14 + 12);
    sub_100011908(v7);
    *(v13 + 29) = v14;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v16 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);

    sub_100011908(v10);
    v25 = v16;
    v26 = v15;
    v17 = sub_1004A5824();
    v19 = sub_10015BA6C(v17, v18, &v27);

    *(v13 + 43) = v19;
    *(v13 + 51) = 1024;
    if (v30)
    {
      v20 = 0;
    }

    else
    {
      v20 = v29[26];
    }

    sub_100113BD0(v29);
    *(v13 + 53) = v20;
    *(v13 + 57) = 2082;
    v21 = sub_100186D4C(*&v28[109]);
    v23 = v22;
    sub_100113BD0(v28);
    v24 = sub_10015BA6C(v21, v23, &v27);

    *(v13 + 59) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Local UID validity: 0x%x, reason: %{public}s", v13, 0x43u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100113BD0(v29);
    sub_100011908(v7);

    sub_100113BD0(v28);
    sub_100011908(v10);
  }
}

void sub_100113150(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v33[-v10];
  if ((*(v2 + 145) & 1) == 0)
  {
    v12 = *(v2 + 144);
    v13 = *(v2 + 136);
    v14 = *(v2 + 128);
    v16 = *(v2 + 112);
    v15 = *(v2 + 120);
    v38 = v16;
    v39 = BYTE4(v16) & 1;
    v40 = v15;
    v41 = v14 & 1;
    v42 = v13;
    v43 = v12 & 1;
    v17 = sub_1000B7584(*(v2 + 24), *(v2 + 32), (a1 + 168), &v38);
    if (v17)
    {
      v19 = sub_1001138EC((a1 + 216), v17, v18);
      v20 = *(*(a1 + 216) + 16);
      if (v20 < v19)
      {
        __break(1u);
        return;
      }

      sub_1001647BC(v19, v20);
    }

    if ((*(v2 + 108) & 1) == 0)
    {
      v21 = *(v2 + 104);
      sub_1000118A4(a2, v11);
      sub_1000118A4(a2, v8);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v22 = sub_1004A4A54();
      v23 = sub_1004A6014();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v34 = v21;
        v25 = v24;
        v37 = swift_slowAlloc();
        *v25 = 68159747;
        *(v25 + 4) = 2;
        *(v25 + 8) = 256;
        v26 = &v8[*(v5 + 20)];
        *(v25 + 10) = *v26;
        *(v25 + 11) = 2082;
        v27 = &v11[*(v5 + 20)];
        *(v25 + 13) = sub_10015BA6C(*(v27 + 1), *(v27 + 2), &v37);
        *(v25 + 21) = 1040;
        *(v25 + 23) = 2;
        *(v25 + 27) = 512;
        LOWORD(v26) = *(v26 + 12);
        sub_100011908(v8);
        *(v25 + 29) = v26;
        *(v25 + 31) = 2160;
        *(v25 + 33) = 0x786F626C69616DLL;
        *(v25 + 41) = 2085;
        v28 = *(v27 + 4);
        LODWORD(v27) = *(v27 + 10);

        sub_100011908(v11);
        v35 = v28;
        v36 = v27;
        v29 = sub_1004A5824();
        v31 = sub_10015BA6C(v29, v30, &v37);

        *(v25 + 43) = v31;
        *(v25 + 51) = 1024;
        *(v25 + 53) = v34;
        *(v25 + 57) = 1024;
        if ((v16 & &_mh_execute_header) != 0)
        {
          v32 = 0;
        }

        else
        {
          v32 = v16;
        }

        *(v25 + 59) = v32;
        _os_log_impl(&_mh_execute_header, v22, v23, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did delete all existing local messages due to validity change: 0x%x → 0x%x", v25, 0x3Fu);
        swift_arrayDestroy();
      }

      else
      {
        sub_100011908(v8);

        sub_100011908(v11);
      }
    }
  }
}

uint64_t sub_1001134B0()
{
  if (qword_1005CCE88 != -1)
  {
    swift_once();
  }
}

__n128 sub_10011350C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100113540(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
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

uint64_t sub_100113588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100113604@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t *a4@<X8>)
{
  result = sub_1001137D4(a1, a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_100113658()
{
  result = qword_1005D0D30;
  if (!qword_1005D0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0D30);
  }

  return result;
}

unint64_t sub_1001136AC(uint64_t a1)
{
  result = sub_1001136D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001136D4()
{
  result = qword_1005D0DE8;
  if (!qword_1005D0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0DE8);
  }

  return result;
}

uint64_t sub_100113728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = v6 + 48 * result;
    if (*(v7 + 32) == a3)
    {
      v8 = *(v7 + 24);
      v9 = *(v8 + 16);
      if (v9 == *(a2 + 16))
      {
        break;
      }
    }

LABEL_3:
    if (++result == v3)
    {
      return 0;
    }
  }

  if (v9)
  {
    v10 = v8 == a2;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = (v8 + 32);
    v12 = (a2 + 32);
    while (v9)
    {
      if (*v11 != *v12)
      {
        goto LABEL_3;
      }

      ++v11;
      ++v12;
      if (!--v9)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1001137D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 20);
  v6 = *(v3 + 108);
  if (v5)
  {
    if (*(v3 + 108))
    {
      return 0xF000000000000007;
    }
  }

  else
  {
    if (v4 != *(v3 + 104))
    {
      v6 = 1;
    }

    if ((v6 & 1) == 0)
    {
      return 0xF000000000000007;
    }
  }

  v7 = *(a3 + 32);
  if (v7 < 2)
  {
    v8 = *(a3 + 24);
    if ((*(v3 + 145) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
    if ((*(v3 + 145) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 = &_mh_execute_header;
  if (!*(a3 + 20))
  {
    v9 = 0;
  }

  *(v3 + 112) = v9 | v4;
  *(v3 + 120) = xmmword_1004B1230;
  *(v3 + 136) = v8;
  *(v3 + 144) = v7 > 1;
  *(v3 + 145) = 0;
LABEL_14:
  if (sub_10001FDE8(a1, a2))
  {
    return 0xF000000000000007;
  }

  v11 = swift_allocObject();
  v12 = *(v3 + 8);
  *(v11 + 16) = *v3;
  *(v11 + 24) = v12;
  *(v11 + 32) = v4;
  *(v11 + 36) = v5;
  *(v11 + 40) = 0;
  *(v11 + 48) = 1;
  *(v11 + 56) = v8;
  *(v11 + 64) = v7 > 1;
  v13 = v11 | 0x1000000000000004;

  return v13;
}

uint64_t sub_1001138EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = sub_100113728(*a1, a2, a3);
  v7 = result;
  if (v3)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v10 = *(v4 + 16);
      if (v8 == v10)
      {
        return v7;
      }

      if (v8 >= v10)
      {
        goto LABEL_30;
      }

      v11 = v4 + 32 + 48 * v8;
      v13 = *(v11 + 24);
      v12 = *(v11 + 32);
      if (v12 == a3 && (v14 = *(v13 + 16), v14 == *(a2 + 16)))
      {
        if (v14)
        {
          v15 = v13 == a2;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v16 = (v13 + 32);
          v17 = (a2 + 32);
          while (v14)
          {
            if (*v16 != *v17)
            {
              goto LABEL_21;
            }

            ++v16;
            ++v17;
            if (!--v14)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }
      }

      else
      {
LABEL_21:
        if (v7 != v8)
        {
          if (v7 >= v10)
          {
            goto LABEL_33;
          }

          v18 = v4 + 32 + 48 * v7;
          v19 = *v18;
          v36 = *(v18 + 16);
          v20 = *(v18 + 24);
          v34 = *(v18 + 40);
          v35 = *(v18 + 32);
          v22 = *v11;
          v21 = *(v11 + 8);
          v38 = *(v11 + 16);
          v40 = *(v11 + 40);
          v37 = *(v18 + 8);
          sub_100014CEC(*v18, v37);

          v39 = v22;
          v23 = v22;
          v24 = v21;
          sub_100014CEC(v23, v21);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100139868(v4);
            v4 = result;
          }

          if (v7 >= *(v4 + 16))
          {
            goto LABEL_34;
          }

          v25 = v4 + 32 + 48 * v7;
          v26 = *v25;
          v27 = *(v25 + 8);
          v28 = *(v25 + 24);
          *v25 = v39;
          *(v25 + 8) = v24;
          *(v25 + 16) = v38;
          *(v25 + 24) = v13;
          *(v25 + 32) = v12;
          *(v25 + 40) = v40;
          sub_100014D40(v26, v27);

          if (v8 >= *(v4 + 16))
          {
            goto LABEL_35;
          }

          v29 = v4 + 32 + 48 * v8;
          v30 = *v29;
          v31 = *(v29 + 8);
          v32 = *(v29 + 24);
          *v29 = v19;
          *(v29 + 8) = v37;
          *(v29 + 16) = v36;
          *(v29 + 24) = v20;
          *(v29 + 32) = v35;
          *(v29 + 40) = v34;
          sub_100014D40(v30, v31);

          *a1 = v4;
        }

        v9 = __OFADD__(v7++, 1);
        if (v9)
        {
          goto LABEL_32;
        }
      }

LABEL_7:
      v9 = __OFADD__(v8++, 1);
      if (v9)
      {
        goto LABEL_31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100113B60()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100113C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_100092328(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 56) + 32 * result);
    v12 = *(a1 + 36);
    v14 = *(&_swiftEmptyArrayStorage + 2);
    v13 = *(&_swiftEmptyArrayStorage + 3);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_100092328((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(&_swiftEmptyArrayStorage + 2) = v14 + 1;
    *(&_swiftEmptyArrayStorage + v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v3 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_100020944(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return &_swiftEmptyArrayStorage;
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

uint64_t _s13IMAP2Behavior19RunningSyncRequestsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v27 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v26 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = *(*(v3 + 48) + 4 * v11);
    v13 = (*(v3 + 56) + 32 * v11);
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = v13[16];
    v17 = *(v13 + 3);
    v18 = sub_100067004(v12);
    if ((v19 & 1) == 0)
    {
      return 0;
    }

    v20 = v2;
    v21 = (*(v2 + 56) + 32 * v18);
    v22 = *(v21 + 1);
    v23 = *(v21 + 3);
    v28 = *v21;
    v29 = v21[16];

    v24 = static SyncRequest.__derived_struct_equals(_:_:)(v28, v22, v29, v14, v15, v16);

    result = 0;
    if (v24)
    {
      v25 = v23 == v17;
      v2 = v20;
      if (v25)
      {
        continue;
      }
    }

    return result;
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v26)
    {
      return 1;
    }

    v10 = *(v27 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100113FD0(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 48) + 16 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v3 + 56) + 72 * v12;
    v17 = *(v16 + 64);
    v19 = *(v16 + 32);
    v18 = *(v16 + 48);
    v36 = *(v16 + 16);
    v20 = *v16;
    v37 = v19;
    v38 = v18;
    v35 = v20;
    v39 = v17;
    v32 = v18;
    v33 = v36;
    v30 = v19;
    v31 = v20;

    sub_100063BD4(&v35, v34);
    v21 = v14 == 0;
    if (!v14)
    {
      return v21;
    }

    v42[0] = v31;
    v42[1] = v33;
    v42[2] = v30;
    v42[3] = v32;
    v43 = v17;
    v22 = sub_100063B5C(v14, v15);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      sub_100063C30(v42);
      return 0;
    }

    v25 = *(a2 + 56) + 72 * v22;
    v40[0] = *v25;
    v27 = *(v25 + 32);
    v26 = *(v25 + 48);
    v28 = *(v25 + 16);
    v41 = *(v25 + 64);
    v40[2] = v27;
    v40[3] = v26;
    v40[1] = v28;
    sub_100063BD4(v40, &v35);
    v29 = static RemoteMailbox.__derived_struct_equals(_:_:)(v40, v42);
    sub_100063C30(v40);
    result = sub_100063C30(v42);
    if ((v29 & 1) == 0)
    {
      return v21;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001141E0(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_100063C84(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    v16 = v15;

    if ((v16 & 1) == 0)
    {

      return 0;
    }

    v17 = sub_100083308(*(*(a2 + 56) + 8 * v14), v13);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100114320(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 2 * v12);
    result = sub_100063C84(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 2 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011442C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v31 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
LABEL_13:
    v14 = v10 | (v4 << 6);
    v15 = *(*(v3 + 48) + 4 * v14);
    v16 = (*(v3 + 56) + 24 * v14);
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = v16[16];
    v20 = sub_100067004(v15);
    if (v21)
    {
      v22 = (*(v2 + 56) + 24 * v20);
      v23 = *(v22 + 1);
      v24 = v22[16];
      v25 = v11;
      v26 = *v22;

      v27 = v26;
      v8 = v25;
      v28 = v24;
      v2 = a2;
      v29 = static SyncRequest.__derived_struct_equals(_:_:)(v27, v23, v28, v17, v18, v19);

      v3 = v31;

      if (v29)
      {
        continue;
      }
    }

    return 0;
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001145B4(uint64_t result, uint64_t a2)
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
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v29 = (v8 - 1) & v8;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = v3;
    v15 = *(*(v3 + 48) + 4 * v13);
    v16 = *(v3 + 56) + 24 * v13;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 17);
    v21 = sub_100067004(v15);
    if (v22)
    {
      v23 = *(a2 + 56) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 17) ? 256 : 0;
      v28 = v20 ? 256 : 0;
      result = static MessageToDownload.__derived_struct_equals(_:_:)(v24, v25, v27 | v26, v17, v18, v28 | v19);
      v3 = v14;
      v8 = v29;
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100114730(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_17:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    v15 = *(v3 + 56) + 12 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    result = sub_100063D94(v14);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = *(a2 + 56) + 12 * result;
    if (*(v19 + 8))
    {
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v16 == *v19)
      {
        v9 = v17;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
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

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100114864(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (!v8)
      {
        v11 = v4;
        while (1)
        {
          v4 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v4 >= v9)
          {
            return 1;
          }

          v12 = *(v5 + 8 * v4);
          ++v11;
          if (v12)
          {
            v10 = __clz(__rbit64(v12));
            v96 = (v12 - 1) & v12;
            goto LABEL_13;
          }
        }

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
      }

      v10 = __clz(__rbit64(v8));
      v96 = (v8 - 1) & v8;
LABEL_13:
      v13 = v10 | (v4 << 6);
      v14 = *(*(v3 + 48) + 4 * v13);
      v15 = (*(v3 + 56) + 24 * v13);
      v16 = *v15;
      v18 = *(v15 + 1);
      v17 = *(v15 + 2);
      sub_100014CEC(v18, v17);
      v19 = sub_100067004(v14);
      if ((v20 & 1) == 0 || (v21 = (*(v2 + 56) + 24 * v19), v16 != *v21))
      {
LABEL_155:
        sub_100014D40(v18, v17);
        return 0;
      }

      v22 = *(v21 + 1);
      v23 = *(v21 + 2);
      v24 = v23 >> 62;
      v25 = v17 >> 62;
      if (v23 >> 62 == 3)
      {
        if (v22)
        {
          v26 = 0;
        }

        else
        {
          v26 = v23 == 0xC000000000000000;
        }

        if (v26 && v17 >> 62 == 3 && !v18 && v17 == 0xC000000000000000)
        {
          v29 = 0;
          v30 = 0xC000000000000000;
          goto LABEL_59;
        }

LABEL_39:
        v31 = 0;
        if (v25 <= 1)
        {
          goto LABEL_37;
        }

        goto LABEL_40;
      }

      if (v24 > 1)
      {
        if (v24 != 2)
        {
          goto LABEL_39;
        }

        v33 = *(v22 + 16);
        v32 = *(v22 + 24);
        v34 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (v34)
        {
          goto LABEL_160;
        }

        if (v25 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v24)
      {
        LODWORD(v31) = HIDWORD(v22) - v22;
        if (__OFSUB__(HIDWORD(v22), v22))
        {
          goto LABEL_161;
        }

        v31 = v31;
        if (v25 <= 1)
        {
LABEL_37:
          if (v25)
          {
            LODWORD(v35) = HIDWORD(v18) - v18;
            if (__OFSUB__(HIDWORD(v18), v18))
            {
              goto LABEL_158;
            }

            v35 = v35;
          }

          else
          {
            v35 = BYTE6(v17);
          }

          goto LABEL_46;
        }
      }

      else
      {
        v31 = BYTE6(v23);
        if (v25 <= 1)
        {
          goto LABEL_37;
        }
      }

LABEL_40:
      if (v25 != 2)
      {
        if (v31)
        {
          goto LABEL_155;
        }

        goto LABEL_58;
      }

      v37 = *(v18 + 16);
      v36 = *(v18 + 24);
      v34 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v34)
      {
        goto LABEL_159;
      }

LABEL_46:
      if (v31 != v35)
      {
        goto LABEL_155;
      }

      if (v31 >= 1)
      {
        break;
      }

LABEL_58:
      v29 = v18;
      v30 = v17;
LABEL_59:
      sub_100014D40(v29, v30);
      v8 = v96;
    }

    if (v24 <= 1)
    {
      break;
    }

    if (v24 != 2)
    {
      memset(__s1, 0, 14);
      if (v25 == 2)
      {
        v67 = *(v18 + 16);
        v88 = *(v18 + 24);
        v93 = v22;
        sub_100014CEC(v22, v23);
        v68 = sub_1004A40D4();
        v92 = v2;
        if (v68)
        {
          v69 = sub_1004A4104();
          if (__OFSUB__(v67, v69))
          {
            goto LABEL_175;
          }

          v68 += v67 - v69;
        }

        v70 = &v88[-v67];
        if (__OFSUB__(v88, v67))
        {
          goto LABEL_169;
        }

        v71 = sub_1004A40F4();
        if (!v68)
        {
          goto LABEL_186;
        }

LABEL_119:
        if (v71 >= v70)
        {
          v74 = v70;
        }

        else
        {
          v74 = v71;
        }

        v55 = memcmp(__s1, v68, v74);
        sub_100014D40(v93, v23);
        sub_100014D40(v18, v17);
        v2 = v92;
        goto LABEL_148;
      }

      if (v25 != 1)
      {
LABEL_81:
        __s2 = v18;
        v98 = v17;
        v99 = BYTE2(v17);
        v100 = BYTE3(v17);
        v101 = BYTE4(v17);
        v102 = BYTE5(v17);
        v55 = memcmp(__s1, &__s2, BYTE6(v17));
        v58 = v18;
        v59 = v17;
LABEL_151:
        sub_100014D40(v58, v59);
        goto LABEL_152;
      }

      v85 = ((v18 >> 32) - v18);
      if (v18 >> 32 < v18)
      {
        goto LABEL_166;
      }

      v93 = v22;
      sub_100014CEC(v22, v23);
      v51 = sub_1004A40D4();
      if (!v51)
      {
        goto LABEL_182;
      }

      v52 = v51;
      v53 = sub_1004A4104();
      if (__OFSUB__(v18, v53))
      {
        goto LABEL_171;
      }

      v41 = (v18 - v53 + v52);
      result = sub_1004A40F4();
      if (!v41)
      {
        goto LABEL_183;
      }

      goto LABEL_77;
    }

    v90 = v2;
    v94 = v22;
    v43 = *(v22 + 16);
    sub_100014CEC(v22, v23);
    v44 = sub_1004A40D4();
    if (v44)
    {
      v45 = v44;
      v46 = sub_1004A4104();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_163;
      }

      v86 = (v43 - v46 + v45);
    }

    else
    {
      v86 = 0;
    }

    sub_1004A40F4();
    v3 = a1;
    if (v25 == 2)
    {
      v76 = *(v18 + 16);
      v75 = *(v18 + 24);
      v60 = sub_1004A40D4();
      if (v60)
      {
        v77 = sub_1004A4104();
        if (__OFSUB__(v76, v77))
        {
          goto LABEL_177;
        }

        v60 += v76 - v77;
      }

      v34 = __OFSUB__(v75, v76);
      v78 = v75 - v76;
      if (v34)
      {
        goto LABEL_172;
      }

      v79 = sub_1004A40F4();
      if (v79 >= v78)
      {
        v63 = v78;
      }

      else
      {
        v63 = v79;
      }

      v64 = v86;
      if (!v86)
      {
        goto LABEL_192;
      }

      v2 = v90;
      if (!v60)
      {
        goto LABEL_191;
      }
    }

    else
    {
      if (v25 != 1)
      {
        result = v86;
        v2 = v90;
        __s1[0] = v18;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        if (!v86)
        {
          goto LABEL_187;
        }

LABEL_150:
        v55 = memcmp(result, __s1, BYTE6(v17));
        sub_100014D40(v18, v17);
        v58 = v94;
        v59 = v23;
        goto LABEL_151;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_167;
      }

      v60 = sub_1004A40D4();
      if (v60)
      {
        v61 = sub_1004A4104();
        if (__OFSUB__(v18, v61))
        {
          goto LABEL_179;
        }

        v60 += v18 - v61;
      }

      v2 = v90;
      v62 = sub_1004A40F4();
      if (v62 >= (v18 >> 32) - v18)
      {
        v63 = (v18 >> 32) - v18;
      }

      else
      {
        v63 = v62;
      }

      v64 = v86;
      if (!v86)
      {
        goto LABEL_189;
      }

      if (!v60)
      {
        goto LABEL_188;
      }
    }

LABEL_144:
    if (v64 == v60)
    {
      sub_100014D40(v18, v17);
      sub_100014D40(v94, v23);
      v3 = a1;
      v8 = v96;
    }

    else
    {
      v55 = memcmp(v64, v60, v63);
      sub_100014D40(v18, v17);
      v56 = v94;
      v57 = v23;
LABEL_147:
      sub_100014D40(v56, v57);
LABEL_148:
      v3 = a1;
LABEL_152:
      v8 = v96;
      if (v55)
      {
        return 0;
      }
    }
  }

  if (!v24)
  {
    __s1[0] = v22;
    LOWORD(__s1[1]) = v23;
    BYTE2(__s1[1]) = BYTE2(v23);
    BYTE3(__s1[1]) = BYTE3(v23);
    BYTE4(__s1[1]) = BYTE4(v23);
    BYTE5(__s1[1]) = BYTE5(v23);
    if (!v25)
    {
      goto LABEL_81;
    }

    v93 = v22;
    if (v25 != 1)
    {
      v72 = *(v18 + 16);
      v89 = *(v18 + 24);
      sub_100014CEC(v22, v23);
      v68 = sub_1004A40D4();
      v92 = v2;
      if (v68)
      {
        v73 = sub_1004A4104();
        if (__OFSUB__(v72, v73))
        {
          goto LABEL_176;
        }

        v68 += v72 - v73;
      }

      v70 = &v89[-v72];
      if (__OFSUB__(v89, v72))
      {
        goto LABEL_168;
      }

      v71 = sub_1004A40F4();
      if (!v68)
      {
        goto LABEL_190;
      }

      goto LABEL_119;
    }

    v85 = ((v18 >> 32) - v18);
    if (v18 >> 32 < v18)
    {
      goto LABEL_165;
    }

    sub_100014CEC(v22, v23);
    v38 = sub_1004A40D4();
    if (!v38)
    {
      goto LABEL_193;
    }

    v39 = v38;
    v40 = sub_1004A4104();
    if (__OFSUB__(v18, v40))
    {
      goto LABEL_170;
    }

    v41 = (v18 - v40 + v39);
    result = sub_1004A40F4();
    if (!v41)
    {
      goto LABEL_194;
    }

LABEL_77:
    if (result >= v85)
    {
      v54 = v85;
    }

    else
    {
      v54 = result;
    }

    v55 = memcmp(__s1, v41, v54);
    sub_100014D40(v93, v23);
    v56 = v18;
    v57 = v17;
    goto LABEL_147;
  }

  v91 = v2;
  v47 = v22;
  if (v22 > v22 >> 32)
  {
    goto LABEL_162;
  }

  v94 = v22;
  sub_100014CEC(v22, v23);
  v48 = sub_1004A40D4();
  if (v48)
  {
    v49 = v48;
    v50 = sub_1004A4104();
    if (__OFSUB__(v47, v50))
    {
      goto LABEL_164;
    }

    v87 = (v47 - v50 + v49);
  }

  else
  {
    v87 = 0;
  }

  sub_1004A40F4();
  v3 = a1;
  if (v25 == 2)
  {
    v81 = *(v18 + 16);
    v80 = *(v18 + 24);
    v60 = sub_1004A40D4();
    if (v60)
    {
      v82 = sub_1004A4104();
      if (__OFSUB__(v81, v82))
      {
        goto LABEL_178;
      }

      v60 += v81 - v82;
    }

    v34 = __OFSUB__(v80, v81);
    v83 = v80 - v81;
    if (v34)
    {
      goto LABEL_174;
    }

    v84 = sub_1004A40F4();
    if (v84 >= v83)
    {
      v63 = v83;
    }

    else
    {
      v63 = v84;
    }

    v64 = v87;
    if (!v87)
    {
      goto LABEL_185;
    }

    v2 = v91;
    if (!v60)
    {
      goto LABEL_184;
    }

    goto LABEL_144;
  }

  if (v25 != 1)
  {
    result = v87;
    v2 = v91;
    __s1[0] = v18;
    LOWORD(__s1[1]) = v17;
    BYTE2(__s1[1]) = BYTE2(v17);
    BYTE3(__s1[1]) = BYTE3(v17);
    BYTE4(__s1[1]) = BYTE4(v17);
    BYTE5(__s1[1]) = BYTE5(v17);
    if (!v87)
    {
      goto LABEL_195;
    }

    goto LABEL_150;
  }

  if (v18 >> 32 < v18)
  {
    goto LABEL_173;
  }

  v60 = sub_1004A40D4();
  if (v60)
  {
    v65 = sub_1004A4104();
    if (__OFSUB__(v18, v65))
    {
      goto LABEL_180;
    }

    v60 += v18 - v65;
  }

  v2 = v91;
  v66 = sub_1004A40F4();
  if (v66 >= (v18 >> 32) - v18)
  {
    v63 = (v18 >> 32) - v18;
  }

  else
  {
    v63 = v66;
  }

  v64 = v87;
  if (!v87)
  {
    goto LABEL_181;
  }

  if (v60)
  {
    goto LABEL_144;
  }

  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  sub_1004A40F4();
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
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
  result = sub_1004A40F4();
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
  return result;
}

uint64_t sub_1001151F4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v11 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v12 = v4;
      do
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_159;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v13 = *(v5 + 8 * v4);
        ++v12;
      }

      while (!v13);
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
LABEL_13:
      v14 = v10 | (v4 << 6);
      v15 = *(*(v3 + 48) + 4 * v14);
      v16 = (*(v3 + 56) + 16 * v14);
      v18 = *v16;
      v17 = v16[1];
      sub_100014CEC(*v16, v17);
      result = v17 >> 60 == 15;
      if (v17 >> 60 == 15)
      {
        return result;
      }

      v94 = v11;
      v20 = sub_100067004(v15);
      if ((v21 & 1) == 0)
      {
        goto LABEL_155;
      }

      v22 = (*(v2 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v24 >> 62;
      v26 = v17 >> 62;
      if (v24 >> 62 != 3)
      {
        break;
      }

      if (v23)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0xC000000000000000;
      }

      v28 = v27 && v17 >> 62 == 3;
      if (!v28 || (!v18 ? (v29 = v17 == 0xC000000000000000) : (v29 = 0), !v29))
      {
LABEL_39:
        v32 = 0;
        if (v26 > 1)
        {
          goto LABEL_40;
        }

LABEL_37:
        if (!v26)
        {
          v36 = BYTE6(v17);
          goto LABEL_46;
        }

        LODWORD(v36) = HIDWORD(v18) - v18;
        if (!__OFSUB__(HIDWORD(v18), v18))
        {
          v36 = v36;
          goto LABEL_46;
        }

LABEL_159:
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
      }

      v30 = 0;
      v31 = 0xC000000000000000;
LABEL_59:
      sub_100014D40(v30, v31);
      v8 = v94;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_39;
      }

      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (!v35)
      {
        if (v26 > 1)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_161;
    }

    if (v25)
    {
      LODWORD(v32) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_162;
      }

      v32 = v32;
      if (v26 <= 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v32 = BYTE6(v24);
      if (v26 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    if (v26 != 2)
    {
      if (v32)
      {
        goto LABEL_155;
      }

LABEL_58:
      v30 = v18;
      v31 = v17;
      goto LABEL_59;
    }

    v38 = *(v18 + 16);
    v37 = *(v18 + 24);
    v35 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (v35)
    {
      goto LABEL_160;
    }

LABEL_46:
    if (v32 != v36)
    {
LABEL_155:
      sub_100014D40(v18, v17);
      return 0;
    }

    if (v32 < 1)
    {
      goto LABEL_58;
    }

    if (v25 > 1)
    {
      break;
    }

    if (!v25)
    {
      __s1[0] = v23;
      LOWORD(__s1[1]) = v24;
      BYTE2(__s1[1]) = BYTE2(v24);
      BYTE3(__s1[1]) = BYTE3(v24);
      BYTE4(__s1[1]) = BYTE4(v24);
      BYTE5(__s1[1]) = BYTE5(v24);
      if (!v26)
      {
        goto LABEL_81;
      }

      v91 = v23;
      if (v26 != 1)
      {
        v70 = *(v18 + 16);
        v87 = *(v18 + 24);
        sub_100014CEC(v23, v24);
        v67 = sub_1004A40D4();
        v90 = v2;
        if (v67)
        {
          v71 = sub_1004A4104();
          if (__OFSUB__(v70, v71))
          {
            goto LABEL_177;
          }

          v67 += v70 - v71;
        }

        v69 = &v87[-v70];
        if (__OFSUB__(v87, v70))
        {
          goto LABEL_169;
        }

        result = sub_1004A40F4();
        if (!v67)
        {
          goto LABEL_187;
        }

        goto LABEL_119;
      }

      v83 = ((v18 >> 32) - v18);
      if (v18 >> 32 < v18)
      {
        goto LABEL_167;
      }

      sub_100014CEC(v23, v24);
      v39 = sub_1004A40D4();
      if (!v39)
      {
        goto LABEL_186;
      }

      v40 = v39;
      v41 = sub_1004A4104();
      if (__OFSUB__(v18, v41))
      {
        goto LABEL_171;
      }

      v42 = (v18 - v41 + v40);
      result = sub_1004A40F4();
      if (!v42)
      {
        goto LABEL_193;
      }

      goto LABEL_77;
    }

    v89 = v2;
    v47 = v23;
    if (v23 > v23 >> 32)
    {
      goto LABEL_163;
    }

    v92 = v23;
    sub_100014CEC(v23, v24);
    v48 = sub_1004A40D4();
    if (v48)
    {
      v49 = v48;
      v50 = sub_1004A4104();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_165;
      }

      v85 = (v47 - v50 + v49);
    }

    else
    {
      v85 = 0;
    }

    sub_1004A40F4();
    v3 = a1;
    if (v26 == 2)
    {
      v79 = *(v18 + 16);
      v78 = *(v18 + 24);
      v60 = sub_1004A40D4();
      if (v60)
      {
        v80 = sub_1004A4104();
        if (__OFSUB__(v79, v80))
        {
          goto LABEL_179;
        }

        v60 += v79 - v80;
      }

      v35 = __OFSUB__(v78, v79);
      v81 = v78 - v79;
      if (v35)
      {
        goto LABEL_175;
      }

      v82 = sub_1004A40F4();
      if (v82 >= v81)
      {
        v63 = v81;
      }

      else
      {
        v63 = v82;
      }

      result = v85;
      if (!v85)
      {
        goto LABEL_197;
      }

      v2 = v89;
      if (!v60)
      {
        goto LABEL_196;
      }
    }

    else
    {
      if (v26 != 1)
      {
        result = v85;
        v2 = v89;
        __s1[0] = v18;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        if (!v85)
        {
          goto LABEL_194;
        }

        goto LABEL_150;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_174;
      }

      v60 = sub_1004A40D4();
      if (v60)
      {
        v64 = sub_1004A4104();
        if (__OFSUB__(v18, v64))
        {
          goto LABEL_181;
        }

        v60 += v18 - v64;
      }

      v2 = v89;
      v65 = sub_1004A40F4();
      if (v65 >= (v18 >> 32) - v18)
      {
        v63 = (v18 >> 32) - v18;
      }

      else
      {
        v63 = v65;
      }

      result = v85;
      if (!v85)
      {
        goto LABEL_185;
      }

      if (!v60)
      {
        goto LABEL_184;
      }
    }

LABEL_144:
    if (result == v60)
    {
      sub_100014D40(v18, v17);
      sub_100014D40(v92, v24);
      v3 = a1;
      v8 = v94;
    }

    else
    {
      v55 = memcmp(result, v60, v63);
      sub_100014D40(v18, v17);
      v56 = v92;
      v57 = v24;
LABEL_147:
      sub_100014D40(v56, v57);
LABEL_148:
      v3 = a1;
LABEL_152:
      v8 = v94;
      result = 0;
      if (v55)
      {
        return result;
      }
    }
  }

  if (v25 == 2)
  {
    v88 = v2;
    v92 = v23;
    v43 = *(v23 + 16);
    sub_100014CEC(v23, v24);
    v44 = sub_1004A40D4();
    if (v44)
    {
      v45 = v44;
      v46 = sub_1004A4104();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_164;
      }

      v84 = (v43 - v46 + v45);
    }

    else
    {
      v84 = 0;
    }

    sub_1004A40F4();
    v3 = a1;
    if (v26 == 2)
    {
      v74 = *(v18 + 16);
      v73 = *(v18 + 24);
      v60 = sub_1004A40D4();
      if (v60)
      {
        v75 = sub_1004A4104();
        if (__OFSUB__(v74, v75))
        {
          goto LABEL_178;
        }

        v60 += v74 - v75;
      }

      v35 = __OFSUB__(v73, v74);
      v76 = v73 - v74;
      if (v35)
      {
        goto LABEL_173;
      }

      v77 = sub_1004A40F4();
      if (v77 >= v76)
      {
        v63 = v76;
      }

      else
      {
        v63 = v77;
      }

      result = v84;
      if (!v84)
      {
        goto LABEL_190;
      }

      v2 = v88;
      if (!v60)
      {
        goto LABEL_189;
      }
    }

    else
    {
      if (v26 != 1)
      {
        result = v84;
        v2 = v88;
        __s1[0] = v18;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        if (!v84)
        {
          goto LABEL_188;
        }

LABEL_150:
        v55 = memcmp(result, __s1, BYTE6(v17));
        sub_100014D40(v18, v17);
        v58 = v92;
        v59 = v24;
        goto LABEL_151;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_170;
      }

      v60 = sub_1004A40D4();
      if (v60)
      {
        v61 = sub_1004A4104();
        if (__OFSUB__(v18, v61))
        {
          goto LABEL_180;
        }

        v60 += v18 - v61;
      }

      v2 = v88;
      v62 = sub_1004A40F4();
      if (v62 >= (v18 >> 32) - v18)
      {
        v63 = (v18 >> 32) - v18;
      }

      else
      {
        v63 = v62;
      }

      result = v84;
      if (!v84)
      {
        goto LABEL_192;
      }

      if (!v60)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_144;
  }

  memset(__s1, 0, 14);
  if (v26 == 2)
  {
    v66 = *(v18 + 16);
    v86 = *(v18 + 24);
    v91 = v23;
    sub_100014CEC(v23, v24);
    v67 = sub_1004A40D4();
    v90 = v2;
    if (v67)
    {
      v68 = sub_1004A4104();
      if (__OFSUB__(v66, v68))
      {
        goto LABEL_176;
      }

      v67 += v66 - v68;
    }

    v69 = &v86[-v66];
    if (__OFSUB__(v86, v66))
    {
      goto LABEL_168;
    }

    result = sub_1004A40F4();
    if (!v67)
    {
      goto LABEL_195;
    }

LABEL_119:
    if (result >= v69)
    {
      v72 = v69;
    }

    else
    {
      v72 = result;
    }

    v55 = memcmp(__s1, v67, v72);
    sub_100014D40(v91, v24);
    sub_100014D40(v18, v17);
    v2 = v90;
    goto LABEL_148;
  }

  if (v26 != 1)
  {
LABEL_81:
    __s2 = v18;
    v96 = v17;
    v97 = BYTE2(v17);
    v98 = BYTE3(v17);
    v99 = BYTE4(v17);
    v100 = BYTE5(v17);
    v55 = memcmp(__s1, &__s2, BYTE6(v17));
    v58 = v18;
    v59 = v17;
LABEL_151:
    sub_100014D40(v58, v59);
    goto LABEL_152;
  }

  v83 = ((v18 >> 32) - v18);
  if (v18 >> 32 < v18)
  {
    goto LABEL_166;
  }

  v91 = v23;
  sub_100014CEC(v23, v24);
  v51 = sub_1004A40D4();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1004A4104();
    if (__OFSUB__(v18, v53))
    {
      goto LABEL_172;
    }

    v42 = (v18 - v53 + v52);
    result = sub_1004A40F4();
    if (!v42)
    {
      goto LABEL_183;
    }

LABEL_77:
    if (result >= v83)
    {
      v54 = v83;
    }

    else
    {
      v54 = result;
    }

    v55 = memcmp(__s1, v42, v54);
    sub_100014D40(v91, v24);
    v56 = v18;
    v57 = v17;
    goto LABEL_147;
  }

  sub_1004A40F4();
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  result = sub_1004A40F4();
  __break(1u);
LABEL_187:
  __break(1u);
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
  return result;
}

uint64_t sub_100115B88(uint64_t result, uint64_t a2)
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
  v30 = result + 64;
  v31 = result;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v29 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v3 + 56) + 24 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 17);
    sub_100014CEC(*v12, v14);
    v20 = sub_100063DD8(v13, v14);
    v22 = v21;
    sub_100014D40(v13, v14);
    if (v22)
    {
      v23 = *(a2 + 56) + 24 * v20;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 17) ? 256 : 0;
      v28 = v19 ? 256 : 0;
      result = static MessageToDownload.__derived_struct_equals(_:_:)(v24, v25, v27 | v26, v16, v17, v28 | v18);
      v3 = v31;
      v7 = v32;
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v29)
    {
      return 1;
    }

    v10 = *(v30 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100115D34(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 4 * v12);
    v14 = *(v3 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 9);
    v18 = sub_100067004(v13);
    if ((v19 & 1) == 0)
    {
      return 0;
    }

    v20 = *(a2 + 56) + 16 * v18;
    if (*(v20 + 8) == 1)
    {
      result = 0;
      if (!v16)
      {
        return result;
      }
    }

    else
    {
      if (v16)
      {
        return 0;
      }

      result = 0;
      if (*v20 != v15)
      {
        return result;
      }
    }

    if ((v17 ^ *(v20 + 9)))
    {
      return result;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t RunningSyncRequests.kinds.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100113C18(a1);
  *a2 = result;
  return result;
}

uint64_t RunningSyncRequests.Change.started.setter(__int128 *a1)
{
  sub_1000197E0(v1);

  return sub_1000B364C(a1, v1);
}

uint64_t RunningSyncRequests.Change.completed.setter(__int128 *a1)
{
  sub_1000197E0((v1 + 40));

  return sub_1000B364C(a1, v1 + 40);
}

uint64_t RunningSyncRequests.Change.init<A, B>(started:completed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  a7[3] = a3;
  a7[4] = a5;
  v13 = sub_1000B3774(a7);
  v17 = *(a3 - 8);
  (*(v17 + 16))(v13, a1, a3);
  a7[8] = a4;
  a7[9] = a6;
  v14 = sub_1000B3774(a7 + 5);
  (*(*(a4 - 8) + 32))(v14, a2, a4);
  v15 = *(v17 + 8);

  return v15(a1, a3);
}

uint64_t RunningSyncRequests.Change.init(previous:current:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1001163EC;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100116998;
    *(v9 + 24) = v8;
    v17 = sub_10000C9C0(&qword_1005D0E10, &qword_1004D5CB0);
    v10 = sub_10000DF44(&qword_1005D0E18, &qword_1005D0E10, &qword_1004D5CB0);
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = sub_100116428;
    v11[4] = v7;
    v11[5] = sub_100116988;
    v11[6] = 0;
    v12 = sub_10000C9C0(&qword_1005D0E20, &qword_1004D5CB8);
    v13 = sub_10000DF44(&qword_1005D0E28, &qword_1005D0E20, &qword_1004D5CB8);
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_10011699C;
    v14[4] = v9;
    v14[5] = sub_1001164C0;
    v14[6] = 0;

    a2 = v11;
    v15 = v17;
  }

  else
  {
    v15 = sub_10000C9C0(&qword_1005D0DF0, &qword_1004D5CA0);
    v10 = sub_10000DF44(&qword_1005D0DF8, &qword_1005D0DF0, &qword_1004D5CA0);
    v12 = sub_10000C9C0(&qword_1005D0E00, &qword_1004D5CA8);
    v13 = sub_10000DF44(&qword_1005D0E08, &qword_1005D0E00, &qword_1004D5CA8);
    v14 = _swiftEmptyArrayStorage;
  }

  *a3 = a2;
  a3[1] = sub_100116988;
  a3[2] = 0;
  a3[3] = v15;
  a3[4] = v10;
  a3[5] = v14;
  a3[8] = v12;
  a3[9] = v13;
}

uint64_t sub_1001163A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

uint64_t sub_1001163B4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001163F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10011642C(uint64_t a1)
{
  if (*(*(v1 + 16) + 16))
  {
    sub_100067004(a1);
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_100116468(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 2), *(a1 + 24), *(a1 + 4)) & 1;
}

uint64_t sub_1001164C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 32);
  *a2 = *result;
  *(a2 + 4) = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1001164E0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t static RunningSyncRequests.Change.Started.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    switch(BYTE4(a1))
    {
      case 2u:
        if (BYTE4(a2) == 2)
        {
          return 1;
        }

        break;
      case 3u:
        if (BYTE4(a2) == 3)
        {
          return 1;
        }

        break;
      case 4u:
        if (BYTE4(a2) == 4)
        {
          return 1;
        }

        break;
      default:
        if (BYTE4(a2) - 2 >= 3 && ((HIDWORD(a2) ^ HIDWORD(a1)) & 1) == 0)
        {
          return 1;
        }

        break;
    }
  }

  return 0;
}

BOOL sub_1001165BC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v2 != 4)
  {
    return (v3 - 2) >= 3 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 4;
}

BOOL static RunningSyncRequests.Change.Completed.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  if (BYTE4(a1) == 2)
  {
    if (BYTE4(a3) == 2)
    {
      return a2 == a4;
    }
  }

  else
  {
    if (BYTE4(a1) != 3)
    {
      if (BYTE4(a1) == 4)
      {
        if (BYTE4(a3) != 4)
        {
          return 0;
        }
      }

      else if (BYTE4(a3) - 2 < 3 || ((HIDWORD(a3) ^ HIDWORD(a1)) & 1) != 0)
      {
        return 0;
      }

      return a2 == a4;
    }

    if (BYTE4(a3) == 3)
    {
      return a2 == a4;
    }
  }

  return 0;
}

BOOL sub_1001166B8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  else
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        if (v3 != 4)
        {
          return 0;
        }
      }

      else if (v3 - 2) < 3 || ((v3 ^ v2))
      {
        return 0;
      }

      return *(a1 + 8) == *(a2 + 8);
    }

    if (v3 == 3)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  return 0;
}

uint64_t sub_10011674C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100116794(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunningSyncRequests.Change.Started(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 5))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 4);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 5;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for RunningSyncRequests.Change.Started(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunningSyncRequests.Change.Completed(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 16))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 4);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 5;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for RunningSyncRequests.Change.Completed(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1001169B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Task.Logger(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100116A74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Task.Logger(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RunningTask()
{
  result = qword_1005D0E98;
  if (!qword_1005D0E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100116B64()
{
  type metadata accessor for Task.Logger(319);
  if (v0 <= 0x3F)
  {
    sub_100116C4C();
    if (v1 <= 0x3F)
    {
      sub_100116C9C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100116C4C()
{
  if (!qword_1005D0EA8)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D0EA8);
    }
  }
}

unint64_t sub_100116C9C()
{
  result = qword_1005D0EB0;
  if (!qword_1005D0EB0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1005D0EB0);
  }

  return result;
}

uint64_t sub_100116D1C(uint64_t a1)
{
  if ((*(a1 + 45) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 45) & 3;
  }
}

__n128 sub_100116D38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100116D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 46))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 45);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100116D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 30) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      *(result + 45) = -a2;
    }
  }

  return result;
}

uint64_t sub_100116DD4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 29) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 45) = a2;
  return result;
}

uint64_t sub_100116E8C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = _swiftEmptyArrayStorage;
  *(a3 + 56) = _swiftEmptyArrayStorage;
  v6 = type metadata accessor for RunningTask();
  v7 = a3 + v6[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (a3 + v6[13]);
  *v8 = sub_100116E0C;
  v8[1] = 0;
  v9 = (a3 + v6[14]);
  *v9 = sub_100116E34;
  v9[1] = 0;
  sub_10011D9F0(a1, v17);
  if (v18)
  {
    sub_1000B364C(v17, v14);
    sub_100104D00(v14, a3);
    *(a3 + 40) = 0;
    *(a3 + 44) = 257;
  }

  else
  {
    sub_1000B364C(v17, v14);
    sub_100104D00(v14, a3);
    *(a3 + 45) = 0;
  }

  v10 = v15;
  v11 = v16;
  sub_10002587C(v14, v15);
  (*(v11 + 16))(v10, v11);
  sub_1000197E0(v14);
  sub_10011D9F0(a1, v17);
  sub_100168350(v17, a2, a3 + v6[7]);
  *(a3 + v6[8]) = 0;
  *(a3 + v6[11]) = 1;
  *(a3 + v6[12]) = 1;
  v12 = static MonotonicTime.now()();
  result = sub_10011DA4C(a1);
  *(a3 + v6[10]) = v12;
  return result;
}

unint64_t sub_100117058()
{
  result = qword_1005D0F08;
  if (!qword_1005D0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0F08);
  }

  return result;
}

uint64_t sub_1001170B8()
{
  v2 = *v0;
  v3._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v3);

  return 35;
}

uint64_t sub_100117120()
{
  sub_100117890(v0, v12);
  if (!v16)
  {
    goto LABEL_4;
  }

  if (v16 == 1)
  {
    if ((v15 & 1) == 0)
    {
      sub_1000B364C(v12[0].i8, v9);
      v5 = v11;
      sub_10002587C(v9, v10);
      v6 = *(v5 + 8);
      v7 = sub_1004A6D44();
      sub_1004A6724(17);
      v17._countAndFlagsBits = 0x6E6E6F63206E6F20;
      v17._object = 0xEF206E6F69746365;
      sub_1004A5994(v17);
      sub_1004A6934();

      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      sub_1004A5994(v18);

      v3 = v7;
      goto LABEL_9;
    }

LABEL_4:
    sub_1000B364C(v12[0].i8, v9);
    v1 = v11;
    sub_10002587C(v9, v10);
    v2 = *(v1 + 8);
    v3 = sub_1004A6D44();
LABEL_9:
    sub_1000197E0(v9);
    return v3;
  }

  v4 = vorrq_s8(v12[0], v12[1]);
  if (v14 | (v15 << 32) | *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v13)
  {
    return 0x64656C696146;
  }

  else
  {
    return 0x6574656C706D6F43;
  }
}

uint64_t sub_100117300()
{
  v1 = type metadata accessor for TaskHistory.Running(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = (&v52 - v5);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v58 = v0;
  v59 = v9;
  v14 = *(v0 + 48);
  v15 = *(v14 + 16);
  v60 = v16;
  v52 = v11;
  v56 = v14;
  if (v15)
  {
    v17 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    v19 = _swiftEmptyArrayStorage;
    do
    {
      sub_100120E14(v17, v13, type metadata accessor for TaskHistory.Running);
      sub_100120E14(v13, v6, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100120EB0(v13, type metadata accessor for TaskHistory.Running);
        sub_100120EB0(v6, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v20 = *v6;
        v21 = v6[1];
        v22 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
        sub_100120EB0(v6 + *(v22 + 64), type metadata accessor for ClientCommand);
        LOBYTE(v61[0]) = v20;
        HIDWORD(v61[0]) = v21;
        v23 = sub_1004A5804();
        v25 = v24;
        sub_100120EB0(v13, type metadata accessor for TaskHistory.Running);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100085070(0, *(v19 + 2) + 1, 1, v19);
        }

        v27 = *(v19 + 2);
        v26 = *(v19 + 3);
        if (v27 >= v26 >> 1)
        {
          v19 = sub_100085070((v26 > 1), v27 + 1, 1, v19);
        }

        *(v19 + 2) = v27 + 1;
        v28 = &v19[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
        v9 = v59;
      }

      v17 += v18;
      --v15;
    }

    while (v15);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  v61[0] = v19;
  v29 = sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  v54 = sub_100031CDC();
  v55 = v29;
  v57._countAndFlagsBits = sub_1004A5614();
  v57._object = v30;

  v31 = *(v56 + 16);
  if (v31)
  {
    v32 = v53;
    v33 = v56 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v34 = *(v52 + 72);
    v35 = _swiftEmptyArrayStorage;
    do
    {
      sub_100120E14(v33, v9, type metadata accessor for TaskHistory.Running);
      sub_100120E14(v9, v32, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = *v32;
        sub_100020EDC(*(v32 + 8));
        LODWORD(v61[0]) = v36;
        sub_1000D40AC();
        v37 = sub_1004A5A84();
        v39 = v38;
        sub_100120EB0(v9, type metadata accessor for TaskHistory.Running);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_100085070(0, *(v35 + 2) + 1, 1, v35);
        }

        v41 = *(v35 + 2);
        v40 = *(v35 + 3);
        if (v41 >= v40 >> 1)
        {
          v35 = sub_100085070((v40 > 1), v41 + 1, 1, v35);
        }

        *(v35 + 2) = v41 + 1;
        v42 = &v35[16 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v39;
        v9 = v59;
      }

      else
      {
        sub_100120EB0(v9, type metadata accessor for TaskHistory.Running);
        sub_100120EB0(v32, type metadata accessor for TaskHistory.Running);
      }

      v33 += v34;
      --v31;
    }

    while (v31);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v61[0] = v35;
  v43 = sub_1004A5614();
  v45 = v44;

  v46 = sub_100117120();
  v48 = v47;
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_1004A6724(30);

  strcpy(v61, " commands: {");
  BYTE5(v61[1]) = 0;
  HIWORD(v61[1]) = -5120;
  sub_1004A5994(v57);

  v62._countAndFlagsBits = 0x6F69746361202C7DLL;
  v62._object = 0xED00007B203A736ELL;
  sub_1004A5994(v62);
  v63._countAndFlagsBits = v43;
  v63._object = v45;
  sub_1004A5994(v63);

  v64._countAndFlagsBits = 125;
  v64._object = 0xE100000000000000;
  sub_1004A5994(v64);
  v49 = v61[0];
  v50 = v61[1];
  v61[0] = v46;
  v61[1] = v48;

  v65._countAndFlagsBits = v49;
  v65._object = v50;
  sub_1004A5994(v65);

  return v61[0];
}

void sub_1001178C8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RunningTask();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = type metadata accessor for State.Logger();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v2 + *(v10 + 40));
  if (v22 <= a1)
  {
LABEL_6:
    v23 = a1 - v22;
    if (!__OFSUB__(a1, v22))
    {
      goto LABEL_7;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v22, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v23 = a1 - v22;
  if (__OFSUB__(0, v22 - a1))
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v24 = v23 / 1000000000.0;
  if (v24 > 9.0)
  {
    v58 = v2;
    v59 = v21;
    v57 = v19;
    v25 = *(v2 + 48);
    v26 = *(v25 + 16);
    v27 = _swiftEmptyArrayStorage;
    if (v26)
    {
      v53 = a2;
      v54 = v10;
      v55 = v16;
      v56 = v14;
      v60 = _swiftEmptyArrayStorage;
      sub_100091A08(0, v26, 0);
      v27 = v60;
      v28 = v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v29 = *(v6 + 72);
      do
      {
        sub_100120E14(v28, v9, type metadata accessor for TaskHistory.Running);
        v30 = sub_1001693F4();
        v32 = v31;
        sub_100120EB0(v9, type metadata accessor for TaskHistory.Running);
        v60 = v27;
        v34 = v27[2];
        v33 = v27[3];
        if (v34 >= v33 >> 1)
        {
          sub_100091A08((v33 > 1), v34 + 1, 1);
          v27 = v60;
        }

        v27[2] = v34 + 1;
        v35 = &v27[2 * v34];
        v35[4] = v30;
        v35[5] = v32;
        v28 += v29;
        --v26;
      }

      while (v26);
      v16 = v55;
      v14 = v56;
      a2 = v53;
      v10 = v54;
    }

    v60 = v27;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v36 = sub_1004A5614();
    v38 = v37;

    v39 = v59;
    sub_100120E14(a2, v59, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v40 = v58;
    sub_100120E14(v58, v16, type metadata accessor for RunningTask);
    sub_100120E14(v40, v14, type metadata accessor for RunningTask);

    v41 = sub_1004A4A54();
    v42 = sub_1004A6014();

    if (os_log_type_enabled(v41, v42))
    {
      v58 = v36;
      v43 = v39;
      v44 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v44 = 68158978;
      *(v44 + 4) = 2;
      *(v44 + 8) = 256;
      v45 = *(v43 + *(v57 + 20));
      sub_100120EB0(v43, type metadata accessor for State.Logger);
      *(v44 + 10) = v45;
      *(v44 + 11) = 2082;
      v46 = &v16[*(v10 + 28)];
      v47 = &v46[*(type metadata accessor for Task.Logger(0) + 20)];
      v48 = *(v47 + 1);
      v49 = *(v47 + 2);

      sub_100120EB0(v16, type metadata accessor for RunningTask);
      v50 = sub_10015BA6C(v48, v49, &v60);

      *(v44 + 13) = v50;
      *(v44 + 21) = 2048;
      if (*&v24 >> 52 <= 0x7FEuLL)
      {
        if (v24 > -9.22337204e18)
        {
          if (v24 < 9.22337204e18)
          {
            *(v44 + 23) = v24;
            *(v44 + 31) = 2048;
            v51 = *(*(v14 + 6) + 16);
            sub_100120EB0(v14, type metadata accessor for RunningTask);
            *(v44 + 33) = v51;
            *(v44 + 41) = 2082;
            v52 = sub_10015BA6C(v58, v38, &v60);

            *(v44 + 43) = v52;
            _os_log_impl(&_mh_execute_header, v41, v42, "[%.*hhx] Task %{public}s has been running for %ld s. Still running %ld: %{public}s", v44, 0x33u);
            swift_arrayDestroy();

            return;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_100120EB0(v14, type metadata accessor for RunningTask);
    sub_100120EB0(v39, type metadata accessor for State.Logger);

    sub_100120EB0(v16, type metadata accessor for RunningTask);
  }
}

unint64_t sub_100117EA8(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Task.Logger(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v45 - v11;
  __chkstk_darwin(v10);
  v14 = v45 - v13;
  v15 = type metadata accessor for UntaggedResponse(0);
  v16 = *(*(v15 - 8) + 64);
  result = __chkstk_darwin(v15 - 8);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v20 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
      {
        sub_100117890(v2, v50);
        if (v51)
        {
          sub_10011D8CC(v50);
        }

        else
        {
          sub_1000B364C(v50, &v52);
          v26 = *(v2 + 48);
          v27 = *(v2 + 56);
          v28 = v53;
          v29 = v54;
          sub_100025928(&v52, v53);
          (*(v29 + 64))(v20, v26, v27, v28, v29);
          sub_10011D8CC(v2);
          sub_1000B364C(&v52, v2);
          *(v2 + 45) = 0;
        }

        v30 = type metadata accessor for RunningTask();
        v31 = sub_100120E14(v2 + *(v30 + 28), v14, type metadata accessor for Task.Logger);
        __chkstk_darwin(v31);
        v45[-2] = v20;
        v45[-1] = v14;
        sub_100118CA4(a1, sub_100120D8C);
        v25 = v14;
      }

      else
      {
        v24 = type metadata accessor for RunningTask();
        sub_100120E14(v2 + *(v24 + 28), v9, type metadata accessor for Task.Logger);
        sub_100119718(v9, v20, a1, a2);
        v25 = v9;
      }

      return sub_100120EB0(v25, type metadata accessor for Task.Logger);
    }
  }

  else
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 48);
    if (((1 << (v21 >> 60)) & 0x1E7) == 0)
    {
      v55 = *(a1 + 40);
      if (v21 >> 60 == 3)
      {
        v23 = swift_projectBox();
        sub_100120E14(v23, v19, type metadata accessor for UntaggedResponse);
        sub_100117890(v2, v50);
        if (v51)
        {

          sub_1000CB7C8(v21);
          sub_10011D8CC(v50);
        }

        else
        {
          sub_1000B364C(v50, &v52);
          v38 = *(v2 + 48);
          v48 = *(v2 + 56);
          v49 = v38;
          v39 = v54;
          v47 = v53;
          v40 = sub_100025928(&v52, v53);
          v41 = *(v39 + 56);
          v45[1] = v40;
          v45[2] = v39 + 56;
          v46 = v41;

          sub_1000CB7C8(v21);
          v42 = v49;
          v49 = v2;
          v46(v19, v42, v48, v47, v39);
          v2 = v49;
          sub_10011D8CC(v49);
          sub_1000B364C(&v52, v2);
          *(v2 + 45) = 0;
        }

        v43 = type metadata accessor for RunningTask();
        v44 = sub_100120E14(v2 + *(v43 + 28), v14, type metadata accessor for Task.Logger);
        __chkstk_darwin(v44);
        v45[-4] = a2;
        v45[-3] = v19;
        v45[-2] = v14;
        sub_100118CA4(a1, sub_100120E7C);

        sub_100120EB0(v14, type metadata accessor for Task.Logger);
        v36 = type metadata accessor for UntaggedResponse;
        v37 = v19;
      }

      else
      {
        v32 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v33 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v34 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v48 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v49 = v32;
        v47 = v34;
        LODWORD(v46) = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v35 = type metadata accessor for RunningTask();
        sub_100120E14(v2 + *(v35 + 28), v12, type metadata accessor for Task.Logger);

        sub_1000CB7C8(v21);
        sub_100118ED8(v12, v49, v33, v48, v47, v46, a1, a2);

        v36 = type metadata accessor for Task.Logger;
        v37 = v12;
      }

      sub_100120EB0(v37, v36);
      return sub_1000CB848(v21);
    }
  }

  return result;
}

void *sub_100118410(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a4 & 0x100000000) == 0)
  {
    v9 = a4;
    v12 = result[3];
    v13 = result[4];
    v14 = result;
    v18[8] = a5;
    sub_10002587C(result, v12);
    (*(v13 + 32))(&v19, v12, v13);
    v15 = v20;
    v16 = v21;
    v22 = v19;
    v17 = sub_1000D69D0(&v22);
    __chkstk_darwin(v17);
    v18[2] = v14;
    v18[3] = a6;
    v18[4] = a2;
    v18[5] = a3;
    v18[6] = a7;
    sub_100118534(v9, v15, v16, sub_100120F10, v18);
  }

  return result;
}

uint64_t sub_100118534(int a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v58 = a1;
  v11 = type metadata accessor for MailboxSyncState();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 192) != 1)
  {
    return 1;
  }

  v15 = *(v5 + 168);
  v16 = *(v15 + 16);
  if (!v16)
  {
    return 1;
  }

  v41 = v14;
  v42 = a5;
  v43 = a4;
  v44 = v6;
  v17 = 0;
  v18 = v15 + 32;
  v19 = a3 | (a3 << 32);
  v45 = (a2 + 32);
  while (1)
  {
    v20 = (v18 + 176 * v17);
    v21 = *v20;
    v22 = v20[2];
    v48 = v20[1];
    v49 = v22;
    v47 = v21;
    v23 = v20[3];
    v24 = v20[4];
    v25 = v20[6];
    v52 = v20[5];
    v53 = v25;
    v50 = v23;
    v51 = v24;
    v26 = v20[7];
    v27 = v20[8];
    v28 = v20[10];
    v56 = v20[9];
    v57 = v28;
    v54 = v26;
    v55 = v27;
    v29 = v53;
    if (v53)
    {
      v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v31 = *(v29 + v30);
    }

    else
    {
      v31 = 0;
    }

    if ((DWORD2(v48) | (DWORD2(v48) << 32)) == v19)
    {
      v32 = *(v48 + 16);
      if (v32 == *(a2 + 16))
      {
        if (v32 && v48 != a2)
        {
          v33 = (v48 + 32);
          v34 = v45;
          while (*v33 == *v34)
          {
            ++v33;
            ++v34;
            if (!--v32)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_4;
        }

LABEL_15:
        if (v29 && v31 == v58)
        {
          break;
        }
      }
    }

LABEL_4:
    if (++v17 == v16)
    {
      return 1;
    }
  }

  v35 = v29 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v36 = _s13SelectedStateV7WrappedVMa(0);
  v37 = v41;
  sub_100120E14(v35 + *(v36 + 20), v41, type metadata accessor for MailboxSyncState);
  sub_10000E08C(&v47, &v46);

  v38 = v44;
  v43(&v59, v37);
  sub_100120EB0(v37, type metadata accessor for MailboxSyncState);

  result = sub_10000E0E8(&v47);
  if (!v38)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1001187C8(int a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v58 = a1;
  v11 = type metadata accessor for MailboxSyncState();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 192) != 1)
  {
    return 3;
  }

  v15 = *(v5 + 168);
  v16 = *(v15 + 16);
  if (!v16)
  {
    return 3;
  }

  v41 = v14;
  v42 = a5;
  v43 = a4;
  v44 = v6;
  v17 = 0;
  v18 = v15 + 32;
  v19 = a3 | (a3 << 32);
  v45 = (a2 + 32);
  while (1)
  {
    v20 = (v18 + 176 * v17);
    v21 = *v20;
    v22 = v20[2];
    v48 = v20[1];
    v49 = v22;
    v47 = v21;
    v23 = v20[3];
    v24 = v20[4];
    v25 = v20[6];
    v52 = v20[5];
    v53 = v25;
    v50 = v23;
    v51 = v24;
    v26 = v20[7];
    v27 = v20[8];
    v28 = v20[10];
    v56 = v20[9];
    v57 = v28;
    v54 = v26;
    v55 = v27;
    v29 = v53;
    if (v53)
    {
      v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v31 = *(v29 + v30);
    }

    else
    {
      v31 = 0;
    }

    if ((DWORD2(v48) | (DWORD2(v48) << 32)) == v19)
    {
      v32 = *(v48 + 16);
      if (v32 == *(a2 + 16))
      {
        if (v32 && v48 != a2)
        {
          v33 = (v48 + 32);
          v34 = v45;
          while (*v33 == *v34)
          {
            ++v33;
            ++v34;
            if (!--v32)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_4;
        }

LABEL_15:
        if (v29 && v31 == v58)
        {
          break;
        }
      }
    }

LABEL_4:
    if (++v17 == v16)
    {
      return 3;
    }
  }

  v35 = v29 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v36 = _s13SelectedStateV7WrappedVMa(0);
  v37 = v41;
  sub_100120E14(v35 + *(v36 + 20), v41, type metadata accessor for MailboxSyncState);
  sub_10000E08C(&v47, &v46);

  v38 = v44;
  v43(&v59, v37);
  sub_100120EB0(v37, type metadata accessor for MailboxSyncState);

  result = sub_10000E0E8(&v47);
  if (!v38)
  {
    return v59;
  }

  return result;
}

unint64_t sub_100118A5C(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  if (!(result >> 62))
  {
    v14 = *(result + 16);
    v15 = *(result + 24);
    v16 = *(result + 40);
    v17 = *(result + 48);
    sub_100117890(a2, v22);
    if (v25 == 1)
    {
      v27 = v16;
      v18 = v23;
      v19 = v24;
      sub_1000B364C(v22, v26);
      if ((v19 & 1) != 0 || v14 != v18)
      {
        return sub_1000197E0(v26);
      }

      v20 = *(a2 + 48);
      v21 = *(a2 + 56);
      sub_1000CB7C8(v15);

      if (sub_10016B808(v15, v20))
      {
        LOBYTE(v22[0]) = 0;
        sub_10011B15C(v26, v20, v21, v14, a3, a4, a5);
        sub_1000CB848(v15);

        if (v5)
        {
          return sub_1000197E0(v26);
        }

        sub_10011D8CC(a2);
        result = sub_1000B364C(v26, a2);
        *(a2 + 40) = v14;
        *(a2 + 44) = 256;
      }

      else
      {
        sub_1000197E0(v26);
        sub_1000CB848(v15);
      }

      return result;
    }

    return sub_10011D8CC(v22);
  }

  if (result >> 62 != 1)
  {
    return result;
  }

  sub_100117890(a2, v22);
  if (v25 != 1)
  {
    return sub_10011D8CC(v22);
  }

  v10 = v23;
  v11 = v24;
  sub_1000B364C(v22, v26);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  LOBYTE(v22[0]) = v11;
  sub_10011B15C(v26, v12, v13, v10 | (v11 << 32), a3, a4, a5);
  if (v5)
  {
    return sub_1000197E0(v26);
  }

  sub_10011D8CC(a2);
  result = sub_1000B364C(v26, a2);
  *(a2 + 40) = v10;
  *(a2 + 44) = v11;
  *(a2 + 45) = 1;
  return result;
}

unint64_t sub_100118CA4(unint64_t result, void (*a2)(__int128 *, uint64_t, uint64_t, unint64_t))
{
  if (!(result >> 62))
  {
    v9 = *(result + 16);
    v10 = *(result + 24);
    v11 = *(result + 40);
    v12 = *(result + 48);
    sub_100117890(v2, v17);
    if (v20 == 1)
    {
      v22 = v12;
      v13 = v18;
      v14 = v19;
      sub_1000B364C(v17, v21);
      if ((v14 & 1) != 0 || v9 != v13)
      {
        return sub_1000197E0(v21);
      }

      v15 = *(v2 + 48);
      v16 = *(v2 + 56);
      sub_1000CB7C8(v10);

      if (sub_10016B808(v10, v15))
      {
        LOBYTE(v17[0]) = 0;
        a2(v21, v15, v16, v9);
        sub_1000CB848(v10);

        if (v3)
        {
          return sub_1000197E0(v21);
        }

        sub_10011D8CC(v2);
        result = sub_1000B364C(v21, v2);
        *(v2 + 40) = v9;
        *(v2 + 44) = 256;
      }

      else
      {
        sub_1000197E0(v21);
        sub_1000CB848(v10);
      }

      return result;
    }

    return sub_10011D8CC(v17);
  }

  if (result >> 62 != 1)
  {
    return result;
  }

  sub_100117890(v2, v17);
  if (v20 != 1)
  {
    return sub_10011D8CC(v17);
  }

  v5 = v18;
  v6 = v19;
  sub_1000B364C(v17, v21);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  LOBYTE(v17[0]) = v6;
  a2(v21, v7, v8, v5 | (v6 << 32));
  if (v3)
  {
    return sub_1000197E0(v21);
  }

  sub_10011D8CC(v2);
  result = sub_1000B364C(v21, v2);
  *(v2 + 40) = v5;
  *(v2 + 44) = v6;
  *(v2 + 45) = 1;
  return result;
}

uint64_t sub_100118ED8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8)
{
  v10 = v9;
  v11 = v8;
  v81 = a7;
  v82 = a8;
  LODWORD(v90) = a6;
  v83 = a4;
  v84 = a5;
  v15 = sub_10000C9C0(&qword_1005D0F48, &qword_1004D6058);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = (&v76 - v17);
  v19 = type metadata accessor for ClientCommand(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v80 = &v76 - v25;
  __chkstk_darwin(v24);
  v27 = &v76 - v26;
  sub_100169680(a2, v18);
  v28 = sub_10000C9C0(&qword_1005D0F50, &qword_1004D6060);
  if ((*(*(v28 - 8) + 48))(v18, 1, v28) == 1)
  {
    return sub_100025F40(v18, &qword_1005D0F48, &qword_1004D6058);
  }

  v79 = v23;
  v30 = *v18;
  sub_100120D24(v18 + *(v28 + 48), v27, type metadata accessor for ClientCommand);
  sub_100117890(v11, v85);
  if (v86)
  {
    v31 = sub_10011D8CC(v85);
    goto LABEL_5;
  }

  v77 = a2;
  sub_1000B364C(v85, &v87);
  v56 = v88;
  v55 = v89;
  sub_100025928(&v87, v88);
  v57 = *(v55 + 72);
  v78 = v27;
  v57(v30, v27, a3, v83, v84, v90, a1, v56, v55);
  v10 = v9;
  if (!v9)
  {
    sub_10011D8CC(v11);
    v31 = sub_1000B364C(&v87, v11);
    *(v11 + 45) = 0;
    a2 = v77;
    v27 = v78;
LABEL_5:
    __chkstk_darwin(v31);
    *(&v76 - 16) = v30;
    *(&v76 - 7) = v27;
    *(&v76 - 6) = a3;
    v32 = v84;
    *(&v76 - 5) = v83;
    *(&v76 - 4) = v32;
    *(&v76 - 24) = v90;
    v75 = a1;
    sub_100118A5C(v81, v11, v82, sub_100120FA0, (&v76 - 10));
    if (!v10)
    {
      LODWORD(v83) = v30;
      v77 = a2;
      v90 = 0;
      v33 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
      v34 = *(v33 + 8);
      v84 = *v33;
      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      v37 = *(v33 + 32);
      v38 = *(v33 + 40);
      if (v35 < 0)
      {
        v58 = *(v33 + 16);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v78 = v27;
        v59 = v79;
        sub_100120E14(v27, v79, type metadata accessor for ClientCommand);
        v60 = sub_1004A4A54();
        v61 = sub_1004A5FF4();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          LODWORD(v80) = v38;
          v63 = v34;
          v64 = v62;
          v82 = swift_slowAlloc();
          *&v87 = v82;
          *v64 = 68160003;
          LODWORD(v81) = v61;
          *(v64 + 4) = 2;
          *(v64 + 8) = 256;
          *(v64 + 10) = v84;
          *(v64 + 11) = 2082;
          *(v64 + 13) = sub_10015BA6C(v63, v36, &v87);
          *(v64 + 21) = 1040;
          *(v64 + 23) = 2;
          *(v64 + 27) = 512;
          *(v64 + 29) = v35;

          *(v64 + 31) = 2160;
          *(v64 + 33) = 0x786F626C69616DLL;
          *(v64 + 41) = 2085;
          *&v85[0] = v37;
          DWORD2(v85[0]) = v80;

          v65 = sub_1004A5824();
          v67 = sub_10015BA6C(v65, v66, &v87);

          *(v64 + 43) = v67;
          *(v64 + 51) = 2082;
          v68 = ClientCommand.logIdentifier.getter();
          v70 = v69;
          sub_100120EB0(v59, type metadata accessor for ClientCommand);
          v71 = sub_10015BA6C(v68, v70, &v87);

          *(v64 + 53) = v71;
          *(v64 + 61) = 2082;
          v72 = Tag.debugDescription.getter(v77 & 0xFFFFFFFF000000FFLL);
          v74 = sub_10015BA6C(v72, v73, &v87);

          *(v64 + 63) = v74;
          *(v64 + 71) = 1024;
          *(v64 + 73) = v83;
          _os_log_impl(&_mh_execute_header, v60, v81, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed '%{public}s' (%{public}s, #%u)", v64, 0x4Du);
          swift_arrayDestroy();
        }

        else
        {

          sub_100120EB0(v59, type metadata accessor for ClientCommand);
        }

        v27 = v78;
      }

      else
      {
        v39 = v34;
        v40 = *(v33 + 16);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v41 = v80;
        sub_100120E14(v27, v80, type metadata accessor for ClientCommand);
        v42 = sub_1004A4A54();
        v43 = sub_1004A5FF4();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          LODWORD(v81) = v43;
          v45 = v41;
          v46 = v44;
          v82 = swift_slowAlloc();
          *&v85[0] = v82;
          *v46 = 68158978;
          *(v46 + 4) = 2;
          *(v46 + 8) = 256;
          v47 = v84;
          *(v46 + 10) = v84;
          sub_100011284(v47, v39, v36, v35);
          *(v46 + 11) = 2082;
          *(v46 + 13) = sub_10015BA6C(v39, v36, v85);
          *(v46 + 21) = 2082;
          v48 = ClientCommand.logIdentifier.getter();
          v50 = v49;
          sub_100120EB0(v45, type metadata accessor for ClientCommand);
          v51 = sub_10015BA6C(v48, v50, v85);

          *(v46 + 23) = v51;
          *(v46 + 31) = 2082;
          v52 = Tag.debugDescription.getter(v77 & 0xFFFFFFFF000000FFLL);
          v54 = sub_10015BA6C(v52, v53, v85);

          *(v46 + 33) = v54;
          *(v46 + 41) = 1024;
          *(v46 + 43) = v83;
          _os_log_impl(&_mh_execute_header, v42, v81, "[%.*hhx-%{public}s] Completed '%{public}s' (%{public}s, #%u)", v46, 0x2Fu);
          swift_arrayDestroy();
        }

        else
        {
          sub_100011284(v84, v39, v36, v35);

          sub_100120EB0(v41, type metadata accessor for ClientCommand);
        }
      }
    }

    return sub_100120EB0(v27, type metadata accessor for ClientCommand);
  }

  sub_1000197E0(&v87);
  v27 = v78;
  return sub_100120EB0(v27, type metadata accessor for ClientCommand);
}

uint64_t sub_100119718(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v6 = v5;
  v10 = sub_100169A68(a2);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    v13 = v10;
    v14 = v11;
    sub_100117890(v4, v67);
    if (v68)
    {
      v15 = sub_10011D8CC(v67);
    }

    else
    {
      v72 = a1;
      sub_1000B364C(v67, &v69);
      v16 = v14;
      v17 = v13;
      v19 = v70;
      v18 = v71;
      sub_100025928(&v69, v70);
      (*(v18 + 80))(v17, v16, v19, v18);
      v6 = v5;
      if (v5)
      {
        sub_1000739C8(v17, v16);
        sub_1000197E0(&v69);
        return v12 & 1;
      }

      sub_10011D8CC(v4);
      v15 = sub_1000B364C(&v69, v4);
      *(v4 + 45) = 0;
      v13 = v17;
      v14 = v16;
      a1 = v72;
    }

    __chkstk_darwin(v15);
    v60[4] = v13;
    v61 = v14;
    v62 = a1;
    sub_100118A5C(a3, v4, a4, sub_1001210A0, v60);
    if (v6)
    {
      sub_1000739C8(v13, v14);
      return v12 & 1;
    }

    v72 = 0;
    v20 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    v26 = *(v20 + 40);
    if (v24 < 0)
    {
      v64 = *v20;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v14);
      v44 = sub_1004A4A54();
      v45 = sub_1004A5FF4();
      sub_1000739C8(v13, v14);
      LODWORD(v66) = v45;
      v46 = v45;
      v33 = v44;
      if (os_log_type_enabled(v44, v46))
      {
        v47 = swift_slowAlloc();
        v65 = v26;
        v48 = v25;
        v49 = v47;
        v63 = swift_slowAlloc();
        *&v69 = v63;
        *v49 = 68159747;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        *(v49 + 10) = v64;
        *(v49 + 11) = 2082;

        v50 = v13;
        v51 = sub_10015BA6C(v21, v23, &v69);

        *(v49 + 13) = v51;
        *(v49 + 21) = 1040;
        *(v49 + 23) = 2;
        *(v49 + 27) = 512;

        *(v49 + 29) = v24;

        *(v49 + 31) = 2160;
        *(v49 + 33) = 0x786F626C69616DLL;
        *(v49 + 41) = 2085;

        *&v67[0] = v48;
        DWORD2(v67[0]) = v65;
        v52 = sub_1004A5824();
        v54 = sub_10015BA6C(v52, v53, &v69);

        *(v49 + 43) = v54;
        *(v49 + 51) = 2082;
        v55 = Action.kind.getter(v14);
        v56 = Action.Kind.description.getter(v55);
        v58 = sub_10015BA6C(v56, v57, &v69);

        *(v49 + 53) = v58;
        *(v49 + 61) = 1024;
        *(v49 + 63) = v50;
        _os_log_impl(&_mh_execute_header, v33, v66, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed action '%{public}s' (#%u)", v49, 0x43u);
        swift_arrayDestroy();

        v43 = v50;
        goto LABEL_15;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v27 = *(v20 + 32);
      v28 = *(v20 + 40);
      sub_100018BD0(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24));
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v14);
      v29 = sub_1004A4A54();
      v66 = v24;
      v30 = v29;
      v31 = sub_1004A5FF4();
      sub_1000739C8(v13, v14);
      LODWORD(v64) = v31;
      v32 = v31;
      v33 = v30;
      if (os_log_type_enabled(v30, v32))
      {
        v34 = swift_slowAlloc();
        v65 = v26;
        v35 = v34;
        *&v67[0] = swift_slowAlloc();
        *v35 = 68158722;
        *(v35 + 4) = 2;
        *(v35 + 8) = 256;
        *(v35 + 10) = v22;
        *(v35 + 11) = 2082;
        v36 = sub_10015BA6C(v21, v23, v67);
        v63 = v13;
        v37 = v36;
        sub_100011284(v22, v21, v23, v66);
        *(v35 + 13) = v37;
        *(v35 + 21) = 2082;
        v38 = Action.kind.getter(v14);
        v39 = Action.Kind.description.getter(v38);
        v41 = sub_10015BA6C(v39, v40, v67);

        *(v35 + 23) = v41;
        *(v35 + 31) = 1024;
        v42 = v63;
        *(v35 + 33) = v63;
        _os_log_impl(&_mh_execute_header, v30, v64, "[%.*hhx-%{public}s] Completed action '%{public}s' (#%u)", v35, 0x25u);
        swift_arrayDestroy();

        v43 = v42;
LABEL_15:
        sub_1000739C8(v43, v14);

LABEL_19:
        v12 = 1;
        return v12 & 1;
      }

      sub_100011284(v22, v21, v23, v66);
    }

    sub_1000739C8(v13, v14);
    goto LABEL_19;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_100119D34(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for State.Logger();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100117890(v4, &v41);
  if (v44 != 1)
  {
    return sub_10011D8CC(&v41);
  }

  sub_1000B364C(&v41, v45);
  v14 = v46;
  v15 = v47;
  sub_10002587C(v45, v46);
  (*(v15 + 32))(&v48, v14, v15);
  v52 = v49;
  v53 = v50;
  v51 = v48;
  sub_1000D69D0(&v51);
  if ((v53 | (v53 << 32)) == (a2 | (a2 << 32)))
  {
    v16 = sub_1000FFC98(v52, a1);
    sub_10009DA94(&v52);
    if (v16)
    {
      sub_100120E14(a4, v13, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_100104D00(v45, &v41);

      v17 = sub_1004A4A54();
      v18 = sub_1004A5FF4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = v35;
        *v19 = 68158723;
        *(v19 + 4) = 2;
        *(v19 + 8) = 256;
        v20 = v13[*(v10 + 20)];
        sub_100120EB0(v13, type metadata accessor for State.Logger);
        *(v19 + 10) = v20;
        *(v19 + 11) = 2160;
        *(v19 + 13) = 0x786F626C69616DLL;
        *(v19 + 21) = 2085;
        v37 = a1;
        v38 = a2;

        v21 = sub_1004A5824();
        v23 = sub_10015BA6C(v21, v22, &v36);

        *(v19 + 23) = v23;
        *(v19 + 31) = 2082;
        v24 = v42;
        v25 = v43;
        sub_10002587C(&v41, v42);
        v26 = (*(v25 + 72))(v24, v25);
        v28 = v27;
        sub_1000197E0(&v41);
        v29 = sub_10015BA6C(v26, v28, &v36);

        *(v19 + 33) = v29;
        _os_log_impl(&_mh_execute_header, v17, v18, "[%.*hhx] [%{sensitive,mask.mailbox}s] Marking task '%{public}s' as failed because we de-selected its mailbox.", v19, 0x29u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100120EB0(v13, type metadata accessor for State.Logger);

        sub_1000197E0(&v41);
      }

      sub_100117890(v5, &v41);
      if (v44)
      {
        if (v44 == 1)
        {
          sub_1000B364C(&v41, &v37);
          v31 = v39;
          v32 = v40;
          sub_10002587C(&v37, v39);
          v33 = type metadata accessor for RunningTask();
          (*(v32 + 136))(a3, v5 + *(v33 + 28), v31, v32);
          sub_10011D8CC(v5);
          *v5 = 1;
          *(v5 + 8) = 0u;
          *(v5 + 24) = 0u;
          *(v5 + 37) = 0;
          *(v5 + 45) = 2;
          sub_1000197E0(&v37);
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
        sub_10011D8CC(&v41);
      }
    }
  }

  else
  {
    sub_10009DA94(&v52);
  }

  return sub_1000197E0(v45);
}

uint64_t sub_10011A1BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  sub_100117890(v4, v76);
  if (!v79)
  {
    sub_1000B364C(v76, v73);
    v10 = *(type metadata accessor for RunningTask() + 44);
    v11 = *(v4 + v10);
    *(v4 + v10) = v11 + 1;
    v12 = *(v4 + 48);
    v13 = *(v5 + 56);
    v14 = v74;
    v15 = v75;
    sub_100025928(v73, v74);
    v16 = (*(v15 + 48))(v11 & 0xFFFFFF, v12, v13, v14, v15);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_10011D8CC(v5);
      sub_100104D00(v73, v5);
      *(v5 + 45) = 0;
      sub_1000197E0(v73);
      return 1;
    }

    v23 = v16;
    v72 = v11;
    v71 = a3();
    v24 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
    v26 = *v24;
    v25 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    v29 = *(v24 + 32);
    v30 = *(v24 + 40);
    if (v28 < 0)
    {
      v69 = *(v24 + 8);
      LODWORD(v70) = v30;
      swift_bridgeObjectRetain_n();
      v47 = v29;
      swift_bridgeObjectRetain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v23);
      v48 = sub_1004A4A54();
      v49 = sub_1004A5FF4();
      sub_1001207D4(v23);
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v83[0] = swift_slowAlloc();
        *v50 = 68159747;
        v67 = v48;
        *(v50 + 4) = 2;
        *(v50 + 8) = 256;
        *(v50 + 10) = v26;
        *(v50 + 11) = 2082;

        v51 = sub_10015BA6C(v69, v27, v83);
        LODWORD(v69) = v49;
        v52 = v51;

        *(v50 + 13) = v52;
        *(v50 + 21) = 1040;
        *(v50 + 23) = 2;
        *(v50 + 27) = 512;

        *(v50 + 29) = v28;

        *(v50 + 31) = 2160;
        *(v50 + 33) = 0x786F626C69616DLL;
        *(v50 + 41) = 2085;

        *&v80 = v47;
        DWORD2(v80) = v70;
        v53 = sub_1004A5824();
        v55 = sub_10015BA6C(v53, v54, v83);

        *(v50 + 43) = v55;
        *(v50 + 51) = 2082;
        v56 = Action.kind.getter(v23);
        v57 = Action.Kind.description.getter(v56);
        v59 = sub_10015BA6C(v57, v58, v83);

        *(v50 + 53) = v59;
        *(v50 + 61) = 2080;
        v43 = v71;
        LODWORD(v80) = v71;
        sub_1000D40AC();
        v60 = sub_1004A5A84();
        v62 = sub_10015BA6C(v60, v61, v83);

        *(v50 + 63) = v62;
        _os_log_impl(&_mh_execute_header, v67, v69, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' %s", v50, 0x47u);
        swift_arrayDestroy();

        goto LABEL_20;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v31 = *v24;
      v32 = *(v24 + 8);
      v33 = *(v24 + 16);
      v34 = *(v24 + 24);
      v70 = *(v24 + 32);
      sub_100018BD0(v31, v32, v33, v34);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v23);
      v35 = sub_1004A4A54();
      v36 = sub_1004A5FF4();
      sub_1001207D4(v23);
      if (os_log_type_enabled(v35, v36))
      {
        v68 = v36;
        v37 = swift_slowAlloc();
        *&v80 = swift_slowAlloc();
        *v37 = 68158722;
        *(v37 + 4) = 2;
        *(v37 + 8) = 256;
        *(v37 + 10) = v26;
        *(v37 + 11) = 2082;
        v67 = v35;
        v38 = sub_10015BA6C(v25, v27, &v80);
        sub_100011284(v26, v25, v27, v28);
        *(v37 + 13) = v38;
        *(v37 + 21) = 2082;
        v39 = Action.kind.getter(v23);
        v40 = Action.Kind.description.getter(v39);
        v42 = sub_10015BA6C(v40, v41, &v80);

        *(v37 + 23) = v42;
        *(v37 + 31) = 2080;
        v43 = v71;
        LODWORD(v83[0]) = v71;
        sub_1000D40AC();
        v44 = sub_1004A5A84();
        v46 = sub_10015BA6C(v44, v45, &v80);

        *(v37 + 33) = v46;
        _os_log_impl(&_mh_execute_header, v67, v68, "[%.*hhx-%{public}s] Sent '%{public}s' %s", v37, 0x29u);
        swift_arrayDestroy();

LABEL_20:
        sub_10011D8CC(v5);
        sub_100104D00(v73, v5);
        *(v5 + 45) = 0;
        sub_10016A138(v23, v43, v72 & 0xFFFFFF);
        sub_1001207D4(v23);
        sub_1000197E0(v73);
        return 0;
      }

      sub_100011284(v26, v25, v27, v28);
    }

    v43 = v71;
    goto LABEL_20;
  }

  if (v79 != 1)
  {
    return 1;
  }

  if (v78 == 1)
  {
    sub_1000197E0(v76);
    return 2;
  }

  else
  {
    v17 = v77;
    sub_1000B364C(v76, v73);
    v18 = v74;
    v19 = v75;
    sub_10002587C(v73, v74);
    (*(v19 + 32))(&v80, v18, v19);
    v20 = v81;
    v21 = v82;
    *v83 = v80;
    v22 = sub_1000D69D0(v83);
    __chkstk_darwin(v22);
    v63[2] = v5;
    v63[3] = v73;
    v63[4] = a1;
    v64 = v17;
    v65 = a3;
    v66 = a4;
    LODWORD(v5) = sub_1001187C8(v17, v20, v21, sub_1001207AC, v63);

    if (v5 == 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = v5;
    }

    sub_1000197E0(v73);
    return v5;
  }
}

unint64_t sub_10011A930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t (*a6)(unint64_t)@<X5>, char *a7@<X8>)
{
  v9 = *(type metadata accessor for RunningTask() + 44);
  v10 = *(a2 + v9);
  *(a2 + v9) = v10 + 1;
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v14 = *(a3 + 24);
  v13 = *(a3 + 32);
  sub_100025928(a3, v14);
  v15 = *(v13 + 88);

  v59 = v10;
  v16 = v15(v10 & 0xFFFFFF, v11, v12, a1, a4, v14, v13);

  if ((~v16 & 0xF000000000000007) != 0)
  {
    v55 = a2;
    v56 = a3;
    v61 = a6(v16);
    v19 = a4 + *(type metadata accessor for Task.Logger(0) + 20);
    v20 = *v19;
    v21 = *(v19 + 8);
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    v24 = *(v19 + 32);
    v25 = *(v19 + 40);
    if (v22 < 0)
    {
      v39 = *(v19 + 16);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v16);
      v40 = sub_1004A4A54();
      v41 = sub_1004A5FF4();
      sub_1001207D4(v16);
      if (os_log_type_enabled(v40, v41))
      {
        log = v40;
        v42 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v42 = 68159747;
        *(v42 + 4) = 2;
        *(v42 + 8) = 256;
        *(v42 + 10) = v20;
        *(v42 + 11) = 2082;

        v43 = HIDWORD(v24);
        v44 = sub_10015BA6C(v21, v23, &v69);

        *(v42 + 13) = v44;
        *(v42 + 21) = 1040;
        *(v42 + 23) = 2;
        *(v42 + 27) = 512;

        *(v42 + 29) = v22;

        *(v42 + 31) = 2160;
        *(v42 + 33) = 0x786F626C69616DLL;
        *(v42 + 41) = 2085;

        HIDWORD(v65) = v43;
        v66 = v25;
        v45 = sub_1004A5824();
        v47 = sub_10015BA6C(v45, v46, &v69);

        *(v42 + 43) = v47;
        *(v42 + 51) = 2082;
        v48 = Action.kind.getter(v16);
        v49 = Action.Kind.description.getter(v48);
        v51 = sub_10015BA6C(v49, v50, &v69);

        *(v42 + 53) = v51;
        *(v42 + 61) = 2080;
        LODWORD(v65) = v61;
        sub_1000D40AC();
        v52 = sub_1004A5A84();
        v54 = sub_10015BA6C(v52, v53, &v69);

        *(v42 + 63) = v54;
        _os_log_impl(&_mh_execute_header, log, v41, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' %s", v42, 0x47u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      v26 = *(v19 + 32);
      v27 = *(v19 + 40);
      sub_100018BD0(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24));
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v16);
      v28 = sub_1004A4A54();
      v29 = sub_1004A5FF4();
      sub_1001207D4(v16);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v30 = 68158722;
        *(v30 + 4) = 2;
        *(v30 + 8) = 256;
        *(v30 + 10) = v20;
        *(v30 + 11) = 2082;
        v31 = sub_10015BA6C(v21, v23, &v65);
        sub_100011284(v20, v21, v23, v22);
        *(v30 + 13) = v31;
        *(v30 + 21) = 2082;
        v32 = Action.kind.getter(v16);
        v33 = Action.Kind.description.getter(v32);
        v35 = sub_10015BA6C(v33, v34, &v65);

        *(v30 + 23) = v35;
        *(v30 + 31) = 2080;
        LODWORD(v69) = v61;
        sub_1000D40AC();
        v36 = sub_1004A5A84();
        v38 = sub_10015BA6C(v36, v37, &v65);

        *(v30 + 33) = v38;
        _os_log_impl(&_mh_execute_header, v28, v29, "[%.*hhx-%{public}s] Sent '%{public}s' %s", v30, 0x29u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100011284(v20, v21, v23, v22);
      }
    }

    sub_100104D00(v56, &v65);
    v67 = a5;
    v68 = 256;
    sub_1001207E8(&v65, v55);
    sub_10016A138(v16, v61, v59 & 0xFFFFFF);
    result = sub_1001207D4(v16);
    v18 = 0;
  }

  else
  {
    sub_100104D00(a3, &v65);
    v67 = a5;
    v68 = 256;
    result = sub_1001207E8(&v65, a2);
    v18 = 1;
  }

  *a7 = v18;
  return result;
}

uint64_t sub_10011AF58()
{
  sub_100117890(v0, v9);
  if (v12)
  {
    if (v12 == 1)
    {
      v1 = v10;
      v2 = v11;
      sub_1000B364C(v9, v6);
      if ((v2 & 1) == 0)
      {
        v4 = v7;
        v5 = v8;
        sub_10002587C(v6, v7);
        (*(v5 + 32))(&v13, v4, v5);
        v14 = v13;
        sub_1000D69D0(&v14);
        sub_1000197E0(v6);
        return v1;
      }

      sub_1000197E0(v6);
    }
  }

  else
  {
    sub_10011D8CC(v9);
  }

  return 0;
}

uint64_t sub_10011B03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100120E14(a1, v7, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    result = sub_100120EB0(v7, type metadata accessor for TaskHistory.Running);
    v10 = 0;
  }

  else
  {
    v10 = *v7;
    v11 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    result = sub_100120EB0(v7 + *(v11 + 64), type metadata accessor for ClientCommand);
  }

  *a2 = v10;
  *(a2 + 4) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t sub_10011B15C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v69 = a7;
  v14 = type metadata accessor for MailboxSyncState();
  v15 = *(*(v14 - 8) + 64);
  result = __chkstk_darwin(v14 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 0x100000000) == 0)
  {
    v46 = v18;
    v47 = a6;
    v48 = a3;
    v49 = a2;
    v50 = v7;
    v19 = a1[3];
    v20 = a1[4];
    sub_10002587C(a1, v19);
    (*(v20 + 32))(&v63, v19, v20);
    v67 = v64;
    v68 = v65;
    v66 = v63;
    sub_1000D69D0(&v66);
    if (*(a5 + 192) == 1)
    {
      v21 = *(a5 + 168);
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = 0;
        v24 = v21 + 32;
        do
        {
          v25 = (v24 + 176 * v23);
          v26 = *v25;
          v27 = v25[2];
          v53 = v25[1];
          v54 = v27;
          v52 = v26;
          v28 = v25[3];
          v29 = v25[4];
          v30 = v25[6];
          v57 = v25[5];
          v58 = v30;
          v55 = v28;
          v56 = v29;
          v31 = v25[7];
          v32 = v25[8];
          v33 = v25[10];
          v61 = v25[9];
          v62 = v33;
          v59 = v31;
          v60 = v32;
          v34 = v58;
          if (v58)
          {
            v35 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            v36 = *(v34 + v35);
          }

          else
          {
            v36 = 0;
          }

          if ((DWORD2(v53) | (DWORD2(v53) << 32)) == (v68 | (v68 << 32)))
          {
            v37 = *(v53 + 16);
            if (v37 == *(v67 + 16))
            {
              if (!v37 || v53 == v67)
              {
LABEL_16:
                if (v34 && v36 == a4)
                {
                  v40 = v34 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                  swift_beginAccess();
                  v41 = _s13SelectedStateV7WrappedVMa(0);
                  v42 = v46;
                  sub_100120E14(v40 + *(v41 + 20), v46, type metadata accessor for MailboxSyncState);
                  v43 = v49;

                  v44 = v48;

                  sub_10000E08C(&v52, &v51);

                  v47(a1, v42, v43, v44);
                  sub_100120EB0(v42, type metadata accessor for MailboxSyncState);

                  sub_10000E0E8(&v52);

                  return sub_10009DA94(&v67);
                }
              }

              else
              {
                v38 = (v53 + 32);
                v39 = (v67 + 32);
                while (*v38 == *v39)
                {
                  ++v38;
                  ++v39;
                  if (!--v37)
                  {
                    goto LABEL_16;
                  }
                }
              }
            }
          }

          ++v23;
        }

        while (v23 != v22);
      }
    }

    sub_10009DA94(&v67);
    sub_10012104C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

void sub_10011B49C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TaskHistory.Running(0);
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for RunningTask();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v74[-v13];
  v81 = sub_1004A4904();
  v80 = *(v81 - 8);
  v15 = *(v80 + 64);
  v16 = __chkstk_darwin(v81);
  v18 = &v74[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v79 = &v74[-v20];
  __chkstk_darwin(v19);
  v78 = &v74[-v21];
  v83 = sub_1004A4944();
  v82 = *(v83 - 8);
  v22 = *(v82 + 64);
  v23 = __chkstk_darwin(v83);
  v25 = &v74[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v77 = &v74[-v26];
  v27 = *tracingLog.unsafeMutableAddressor();
  v28 = sub_1004A6354();

  if (v28)
  {
    sub_100117890(v2, &v87);
    v29 = v2;
    if (v90 == 1)
    {
      sub_1000B364C(&v87, v91);
      v30 = tracingSignposter.unsafeMutableAddressor();
      (*(v82 + 16))(v77, v30, v83);
      v31 = *(v2 + *(v8 + 32));
      v32 = v78;
      sub_1004A4914();
      sub_100120E14(v2, v14, type metadata accessor for RunningTask);
      sub_100104D00(v91, &v87);
      v33 = sub_1004A4934();
      v34 = sub_1004A6144();
      if (sub_1004A6354())
      {
        v35 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v35 = 136315651;
        *&v92 = *(v14 + 8);
        sub_10000C9C0(&qword_1005D0F10, &qword_1004D6010);
        v36 = sub_1004A5804();
        v75 = v34;
        v37 = v29;
        v39 = v38;
        sub_100120EB0(v14, type metadata accessor for RunningTask);
        v40 = sub_10015BA6C(v36, v39, &v86);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2160;
        *(v35 + 14) = 0x786F626C69616DLL;
        *(v35 + 22) = 2085;
        v41 = v88;
        v42 = v89;
        sub_10002587C(&v87, v88);
        v43 = *(v42 + 32);
        v44 = v42;
        v29 = v37;
        v43(&v92, v41, v44);
        v95 = v92;
        sub_1000D69D0(&v95);
        v84 = v93;
        v85 = v94;
        v45 = sub_1004A5824();
        v47 = v46;
        sub_1000197E0(&v87);
        v48 = sub_10015BA6C(v45, v47, &v86);

        *(v35 + 24) = v48;
        v49 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v75, v49, "BehaviorTask", "M %s,%{sensitive,mask.mailbox}s", v35, 0x20u);
        swift_arrayDestroy();
        v32 = v78;
      }

      else
      {

        sub_100120EB0(v14, type metadata accessor for RunningTask);
        sub_1000197E0(&v87);
      }

      v60 = v81;
      v61 = v80;
      (*(v80 + 16))(v79, v32, v81);
      v62 = sub_1004A4A34();
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      swift_allocObject();
      sub_1004A4A24();

      (*(v61 + 8))(v32, v60);
      (*(v82 + 8))(v77, v83);
      sub_1000197E0(v91);
    }

    else
    {
      sub_10011D8CC(&v87);
      v50 = tracingSignposter.unsafeMutableAddressor();
      (*(v82 + 16))(v25, v50, v83);
      v31 = *(v2 + *(v8 + 32));
      sub_1004A4914();
      sub_100120E14(v2, v12, type metadata accessor for RunningTask);
      v51 = sub_1004A4934();
      v52 = sub_1004A6144();
      if (sub_1004A6354())
      {
        v53 = swift_slowAlloc();
        v75 = v52;
        v54 = v53;
        v77 = swift_slowAlloc();
        *&v87 = v77;
        *v54 = 136315138;
        v91[0] = *(v12 + 8);
        sub_10000C9C0(&qword_1005D0F10, &qword_1004D6010);
        v55 = sub_1004A5804();
        v78 = v29;
        v57 = v56;
        sub_100120EB0(v12, type metadata accessor for RunningTask);
        v58 = sub_10015BA6C(v55, v57, &v87);
        v29 = v78;

        *(v54 + 4) = v58;
        v59 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, v75, v59, "BehaviorTask", "A %s", v54, 0xCu);
        sub_1000197E0(v77);
      }

      else
      {

        sub_100120EB0(v12, type metadata accessor for RunningTask);
      }

      v65 = v80;
      v66 = v81;
      (*(v80 + 16))(v79, v18, v81);
      v67 = sub_1004A4A34();
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      swift_allocObject();
      sub_1004A4A24();

      (*(v65 + 8))(v18, v66);
      (*(v82 + 8))(v25, v83);
    }

    v70 = *(v29 + 6);
    v71 = *(v70 + 16);
    if (v71)
    {
      v72 = v70 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v73 = *(v76 + 72);
      do
      {
        sub_100120E14(v72, v7, type metadata accessor for TaskHistory.Running);
        sub_10011BDFC(a1, v31);
        sub_100120EB0(v7, type metadata accessor for TaskHistory.Running);
        v72 += v73;
        --v71;
      }

      while (v71);
    }
  }
}

uint64_t sub_10011BDFC(uint64_t a1, int a2)
{
  LODWORD(v90) = a2;
  v89 = a1;
  v3 = sub_1004A4904();
  v92 = *(v3 - 8);
  v93 = v3;
  v4 = *(v92 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v91 = &v82 - v9;
  __chkstk_darwin(v8);
  v85 = &v82 - v10;
  v11 = sub_1004A4944();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v82 - v17;
  v19 = type metadata accessor for ClientCommand(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v86 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v82 - v24;
  __chkstk_darwin(v23);
  v27 = &v82 - v26;
  v28 = type metadata accessor for TaskHistory.Running(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (&v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100120E14(v2, v31, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = *v31;
  v33 = v31[1];
  if (EnumCaseMultiPayload == 1)
  {
    v35 = v31[1];
    v36 = *(v31 + 1);
    v37 = tracingSignposter.unsafeMutableAddressor();
    v87 = v12;
    (*(v12 + 16))(v16, v37, v11);
    sub_1004A4914();
    sub_10011D8FC(v36);
    sub_10011D8FC(v36);
    v38 = sub_1004A4934();
    v39 = sub_1004A6144();
    v40 = v7;
    if (sub_1004A6354())
    {
      v41 = v34;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v88 = v11;
      v44 = v43;
      v94 = v43;
      *v42 = 67109890;
      *(v42 + 4) = v41;
      *(v42 + 8) = 2080;
      v45 = Action.kind.getter(v36);
      v46 = Action.Kind.description.getter(v45);
      v48 = sub_10015BA6C(v46, v47, &v94);

      *(v42 + 10) = v48;
      *(v42 + 18) = 1024;
      *(v42 + 20) = v35;
      *(v42 + 24) = 1024;
      v49 = dword_1004D623C[(v36 >> 58) & 0x3C | (v36 >> 1) & 3];
      sub_100020EDC(v36);
      *(v42 + 26) = v49;
      sub_100020EDC(v36);
      v50 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, v39, v50, "BehaviorAction", "ID: %u name: %s %u %u", v42, 0x1Eu);
      sub_1000197E0(v44);
      v11 = v88;
    }

    else
    {
      sub_100020EDC(v36);
      sub_100020EDC(v36);
    }

    v71 = v92;
    v72 = v93;
    (*(v92 + 16))(v91, v40, v93);
    v73 = sub_1004A4A34();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    sub_1004A4A24();

    sub_100020EDC(v36);
    (*(v71 + 8))(v40, v72);
    return (*(v87 + 8))(v16, v11);
  }

  else
  {
    v84 = *v31;
    v83 = v31[2];
    v51 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    sub_100120D24(v31 + *(v51 + 64), v27, type metadata accessor for ClientCommand);
    v52 = tracingSignposter.unsafeMutableAddressor();
    v53 = *(v12 + 16);
    v88 = v11;
    v53(v18, v52, v11);
    v54 = v85;
    sub_1004A4914();
    sub_100120E14(v27, v25, type metadata accessor for ClientCommand);
    v90 = v27;
    v55 = v27;
    v56 = v86;
    sub_100120E14(v55, v86, type metadata accessor for ClientCommand);
    v57 = sub_1004A4934();
    v58 = sub_1004A6144();
    v59 = v18;
    if (sub_1004A6354())
    {
      v60 = swift_slowAlloc();
      v87 = v12;
      v82 = v58;
      v61 = v60;
      v89 = swift_slowAlloc();
      v94 = v89;
      *v61 = 136447234;
      v62 = v84;
      v63 = Tag.debugDescription.getter(v84 | (v33 << 32));
      v65 = sub_10015BA6C(v63, v64, &v94);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2080;
      v66 = ClientCommand.logIdentifier.getter();
      v68 = v67;
      sub_100120EB0(v25, type metadata accessor for ClientCommand);
      v69 = sub_10015BA6C(v66, v68, &v94);

      *(v61 + 14) = v69;
      *(v61 + 22) = 1024;
      *(v61 + 24) = v83;
      *(v61 + 28) = 1024;
      *(v61 + 30) = v62;
      *(v61 + 34) = 1024;
      LODWORD(v69) = sub_10011D504() + 1;
      sub_100120EB0(v56, type metadata accessor for ClientCommand);
      *(v61 + 36) = v69;
      v70 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, v82, v70, "BehaviorCommand", "tag: %{public}s, name: %s %u %u %u", v61, 0x28u);
      swift_arrayDestroy();

      v12 = v87;
    }

    else
    {
      sub_100120EB0(v56, type metadata accessor for ClientCommand);

      sub_100120EB0(v25, type metadata accessor for ClientCommand);
    }

    v77 = v92;
    v78 = v93;
    (*(v92 + 16))(v91, v54, v93);
    v79 = sub_1004A4A34();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    sub_1004A4A24();

    (*(v77 + 8))(v54, v78);
    (*(v12 + 8))(v59, v88);
    return sub_100120EB0(v90, type metadata accessor for ClientCommand);
  }
}

void sub_10011C624(uint64_t a1)
{
  v2 = type metadata accessor for TaskHistory.Running(0);
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = &v58 - v7;
  v9 = sub_1004A4954();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  __chkstk_darwin(v9);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004A4904();
  v13 = *(v12 - 8);
  v70 = v12;
  v71 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v68 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v67 = &v58 - v18;
  __chkstk_darwin(v17);
  v20 = &v58 - v19;
  v21 = sub_1004A4944();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *tracingLog.unsafeMutableAddressor();
  v27 = sub_1004A6354();

  if (v27)
  {
    v28 = tracingSignposter.unsafeMutableAddressor();
    v61 = v22;
    v62 = v21;
    v29 = *(v22 + 16);
    v59 = v25;
    v29(v25, v28, v21);
    v30 = *(v69 + *(type metadata accessor for RunningTask() + 32));
    v60 = a1;
    sub_1004A4914();
    v32 = v70;
    v31 = v71;
    (*(v71 + 16))(v67, v20, v70);
    v33 = sub_1004A4A34();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_1004A4A24();
    v36 = *(v31 + 8);
    v71 = v31 + 8;
    v36(v20, v32);
    v37 = v36;
    v38 = v59;
    v39 = sub_1004A4934();
    v40 = v68;
    sub_1004A4A14();
    LODWORD(v67) = sub_1004A6134();
    v41 = sub_1004A6354();
    v42 = v70;
    if (v41)
    {
      v58 = v37;

      v43 = v63;
      sub_1004A4A44();

      v44 = v64;
      v45 = v65;
      if ((*(v64 + 88))(v43, v65) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v46 = "[Error] Interval already ended";
      }

      else
      {
        (*(v44 + 8))(v43, v45);
        v46 = "";
      }

      v47 = swift_slowAlloc();
      *v47 = 0;
      v48 = v68;
      v49 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v67, v49, "BehaviorTask", v46, v47, 2u);
      v40 = v48;

      v42 = v70;
      v37 = v58;
    }

    v37(v40, v42);
    (*(v61 + 8))(v38, v62);
    v50 = *(v69 + 48);
    v51 = *(v50 + 16);
    v52 = v60;
    if (v51)
    {
      v53 = v50 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v54 = *(v66 + 72);
      do
      {
        sub_100120E14(v53, v8, type metadata accessor for TaskHistory.Running);
        sub_100120E14(v8, v6, type metadata accessor for TaskHistory.Running);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          v55 = *v6;
          sub_100020EDC(v6[1]);
        }

        else
        {
          v55 = *v6;
          v57 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
          sub_100120EB0(v6 + *(v57 + 64), type metadata accessor for ClientCommand);
        }

        sub_10011CC04(v52, v30, v55, EnumCaseMultiPayload == 1);
        sub_100120EB0(v8, type metadata accessor for TaskHistory.Running);
        v53 += v54;
        --v51;
      }

      while (v51);
    }
  }
}

uint64_t sub_10011CC04(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  LODWORD(v69) = a4;
  v70 = a3;
  v4 = sub_1004A4954();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  v6 = __chkstk_darwin(v4);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v62 - v8;
  v9 = sub_1004A4904();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v66 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v65 = &v62 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v62 - v17;
  __chkstk_darwin(v16);
  v20 = &v62 - v19;
  v21 = sub_1004A4944();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v62 - v27;
  v29 = tracingSignposter.unsafeMutableAddressor();
  v71 = v22;
  v30 = *(v22 + 16);
  v31 = (v10 + 16);
  v32 = (v10 + 8);
  if ((v69 & 1) == 0)
  {
    v69 = v21;
    v30(v28, v29, v21);
    sub_1004A4914();
    (*v31)(v18, v20, v9);
    v44 = sub_1004A4A34();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    sub_1004A4A24();
    v47 = *v32;
    (*v32)(v20, v9);
    v48 = sub_1004A4934();
    v49 = v65;
    sub_1004A4A14();
    v50 = sub_1004A6134();
    if (sub_1004A6354())
    {
      v70 = v9;

      v51 = v63;
      sub_1004A4A44();

      v53 = v67;
      v52 = v68;
      if ((*(v67 + 88))(v51, v68) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(v53 + 8))(v51, v52);
        v54 = "";
      }

      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, v50, v60, "BehaviorCommand", v54, v59, 2u);

      v55 = v49;
      v56 = v70;
    }

    else
    {

      v55 = v49;
      v56 = v9;
    }

    v47(v55, v56);
    goto LABEL_15;
  }

  v30(v26, v29, v21);
  sub_1004A4914();
  (*v31)(v18, v20, v9);
  v33 = sub_1004A4A34();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_1004A4A24();
  v36 = *v32;
  (*v32)(v20, v9);
  v37 = sub_1004A4934();
  v38 = v66;
  sub_1004A4A14();
  v39 = sub_1004A6134();
  if (sub_1004A6354())
  {
    LODWORD(v65) = v39;
    v69 = v21;
    v70 = v26;

    v40 = v64;
    sub_1004A4A44();

    v42 = v67;
    v41 = v68;
    if ((*(v67 + 88))(v40, v68) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v43 = "[Error] Interval already ended";
    }

    else
    {
      (*(v42 + 8))(v40, v41);
      v43 = "";
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v65, v58, "BehaviorAction", v43, v57, 2u);

    v36(v38, v9);
    v28 = v70;
LABEL_15:
    v21 = v69;
    return (*(v71 + 8))(v28, v21);
  }

  v36(v38, v9);
  v28 = v26;
  return (*(v71 + 8))(v28, v21);
}

void sub_10011D274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TaskHistory.Running(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *tracingLog.unsafeMutableAddressor();
  v12 = sub_1004A6354();

  if (v12)
  {
    v13 = *(v3 + 48);
    v14 = *(a2 + 48);
    v29 = _swiftEmptyArrayStorage;
    v30 = _swiftEmptyArrayStorage;
    KeyPath = swift_getKeyPath();
    v16 = __chkstk_darwin(KeyPath);
    __chkstk_darwin(v16);
    v17 = sub_100120834();
    Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(v14, KeyPath, sub_100120824, (&v29 - 4), sub_10012082C, (&v29 - 4), UInt32.init(_:), 0, v13, v17);

    v19 = v29;
    v18 = v30;
    v20 = v29[2];
    if (v20)
    {
      v21 = *(v3 + *(type metadata accessor for RunningTask() + 32));
      v22 = v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v23 = *(v7 + 72);
      do
      {
        sub_100120E14(v22, v10, type metadata accessor for TaskHistory.Running);
        sub_10011BDFC(a1, v21);
        sub_100120EB0(v10, type metadata accessor for TaskHistory.Running);
        v22 += v23;
        --v20;
      }

      while (v20);
    }

    v24 = v18[2];
    if (v24)
    {
      v25 = *(v3 + *(type metadata accessor for RunningTask() + 32));
      v26 = (v18 + 5);
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v26 += 12;
        sub_10011CC04(a1, v25, v27, v28);
        --v24;
      }

      while (v24);
    }
  }
}

uint64_t sub_10011D504()
{
  v1 = type metadata accessor for ClientCommand(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100120E14(v0, v4, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 9:
      sub_100120EB0(v4, type metadata accessor for ClientCommand);
      goto LABEL_11;
    case 10:
      v12 = *v4;

      v13 = v4[2];

      v14 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v15 = *(v14 + 64);
      sub_100014D40(*(v4 + *(v14 + 80)), *(v4 + *(v14 + 80) + 8));
      v8 = &qword_1005D0F20;
      v9 = &qword_1004E9390;
      v10 = v4 + v15;
      goto LABEL_8;
    case 11:
    case 12:
    case 13:
    case 14:
      sub_100120EB0(v4, type metadata accessor for ClientCommand);
      goto LABEL_4;
    case 15:
      v11 = *(v4 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48));

      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      return 4;
    case 16:
      v16 = *(v4 + *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48) + 8);

      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      return 5;
    case 17:
    case 18:
      v7 = *(v4 + *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48));

      v8 = &unk_1005D91B0;
      v9 = &unk_1004CF400;
      v10 = v4;
LABEL_8:
      sub_100025F40(v10, v8, v9);
      result = 2;
      break;
    case 19:
LABEL_4:
      result = 3;
      break;
    case 22:
    case 23:
    case 24:
    case 25:
    case 29:
      return result;
    case 26:
    case 27:
    case 28:
LABEL_11:
      result = 1;
      break;
    default:
      sub_100120EB0(v4, type metadata accessor for ClientCommand);
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_10011D7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100120E14(a1, v7, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *v7;
    result = sub_100020EDC(v7[1]);
  }

  else
  {
    v9 = *v7;
    v11 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    result = sub_100120EB0(v7 + *(v11 + 64), type metadata accessor for ClientCommand);
  }

  *a2 = v9;
  *(a2 + 8) = EnumCaseMultiPayload == 1;
  return result;
}

unint64_t sub_10011D8FC(unint64_t result)
{
  switch((result >> 58) & 0x3C | (result >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10011DAB0(uint64_t (*a1)(uint64_t a1), int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v103 = a1;
  v101 = a7;
  v102 = a8;
  v99 = a5;
  v100 = a6;
  v92 = a4;
  v98 = a3;
  v9 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v97 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v89 - v13;
  v14 = type metadata accessor for ClientCommand(0);
  v94 = *(v14 - 8);
  v95 = v14;
  v15 = *(v94 + 64);
  v16 = __chkstk_darwin(v14);
  v90 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v91 = &v89 - v19;
  __chkstk_darwin(v18);
  v93 = &v89 - v20;
  v21 = type metadata accessor for Command();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10000C9C0(&qword_1005D0F38, &qword_1004D6028);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v89 - v32;
  sub_10000E268(v103, &v89 - v32, &qword_1005D0F30, &qword_1004D6020);
  v34 = *(v27 + 56);
  v35 = a2;
  *&v33[v34] = a2;
  sub_10000E268(v33, v31, &qword_1005D0F38, &qword_1004D6028);
  if ((*(v22 + 48))(v31, 1, v21) == 1)
  {
    sub_100025F40(v33, &qword_1005D0F38, &qword_1004D6028);
    sub_100025F40(v31, &qword_1005D0F30, &qword_1004D6020);
    return 1;
  }

  else
  {
    sub_100120D24(v31, v25, type metadata accessor for Command);
    v37 = v104;
    v38 = sub_100159B5C(v25, v99, v100, v101, v102);
    if (v37)
    {
      sub_100120EB0(v25, type metadata accessor for Command);
      return sub_100025F40(v33, &qword_1005D0F38, &qword_1004D6028);
    }

    else if (v39)
    {
      v40 = v98 + *(type metadata accessor for RunningTask() + 36);
      if (*(v40 + 8))
      {
        v41 = static MonotonicTime.now()();
        sub_100120EB0(v25, type metadata accessor for Command);
        sub_100025F40(v33, &qword_1005D0F38, &qword_1004D6028);
        *v40 = v41;
        *(v40 + 8) = 0;
      }

      else
      {
        sub_100120EB0(v25, type metadata accessor for Command);
        sub_100025F40(v33, &qword_1005D0F38, &qword_1004D6028);
      }

      return 2;
    }

    else
    {
      v104 = v38;
      v42 = v96;
      sub_1000102DC(v96);
      if ((*(v94 + 48))(v42, 1, v95) == 1)
      {
        sub_100025F40(v42, &qword_1005D0F28, &qword_1004D6018);
      }

      else
      {
        v43 = v42;
        v44 = v93;
        sub_100120D24(v43, v93, type metadata accessor for ClientCommand);
        v45 = v92 + *(type metadata accessor for Task.Logger(0) + 20);
        v46 = *v45;
        v102 = *(v45 + 8);
        v47 = *(v45 + 16);
        v48 = *(v45 + 24);
        v49 = *(v45 + 32);
        LODWORD(v103) = *(v45 + 40);
        v100 = v46;
        v101 = v48;
        if (v48 < 0)
        {
          v69 = v47;

          v70 = v49;
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v71 = v90;
          sub_100120E14(v44, v90, type metadata accessor for ClientCommand);
          v72 = sub_1004A4A54();
          v73 = sub_1004A5FF4();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v99 = v33;
            v75 = v74;
            v96 = swift_slowAlloc();
            v107 = v96;
            *v75 = 68159747;
            LODWORD(v95) = v73;
            *(v75 + 4) = 2;
            *(v75 + 8) = 256;
            *(v75 + 10) = v100;
            *(v75 + 11) = 2082;
            *(v75 + 13) = sub_10015BA6C(v102, v69, &v107);
            *(v75 + 21) = 1040;
            *(v75 + 23) = 2;
            *(v75 + 27) = 512;
            *(v75 + 29) = v101;

            *(v75 + 31) = 2160;
            *(v75 + 33) = 0x786F626C69616DLL;
            *(v75 + 41) = 2085;
            v105 = v70;
            v106 = v103;

            v76 = sub_1004A5824();
            v78 = sub_10015BA6C(v76, v77, &v107);

            *(v75 + 43) = v78;
            *(v75 + 51) = 2082;
            v79 = ClientCommand.logIdentifier.getter();
            v80 = v71;
            v81 = v25;
            v83 = v82;
            sub_100120EB0(v80, type metadata accessor for ClientCommand);
            v84 = sub_10015BA6C(v79, v83, &v107);

            *(v75 + 53) = v84;
            *(v75 + 61) = 2082;
            v85 = Tag.debugDescription.getter(v104 & 0xFFFFFFFF000000FFLL);
            v87 = sub_10015BA6C(v85, v86, &v107);

            *(v75 + 63) = v87;
            v25 = v81;
            _os_log_impl(&_mh_execute_header, v72, v95, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' command as %{public}s", v75, 0x47u);
            swift_arrayDestroy();

            v33 = v99;
          }

          else
          {

            sub_100120EB0(v71, type metadata accessor for ClientCommand);
          }

          sub_100120EB0(v93, type metadata accessor for ClientCommand);
        }

        else
        {
          v99 = v33;
          v50 = v47;

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v51 = v91;
          sub_100120E14(v44, v91, type metadata accessor for ClientCommand);
          v52 = sub_1004A4A54();
          v53 = sub_1004A5FF4();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            LODWORD(v94) = v53;
            v55 = v51;
            v56 = v54;
            v95 = swift_slowAlloc();
            v96 = v25;
            v105 = v95;
            *v56 = 68158722;
            *(v56 + 4) = 2;
            *(v56 + 8) = 256;
            v57 = v100;
            v58 = v101;
            *(v56 + 10) = v100;
            v59 = v102;
            sub_100011284(v57, v102, v50, v58);
            *(v56 + 11) = 2082;
            *(v56 + 13) = sub_10015BA6C(v59, v50, &v105);
            *(v56 + 21) = 2082;
            v60 = ClientCommand.logIdentifier.getter();
            v62 = v61;
            v103 = type metadata accessor for ClientCommand;
            sub_100120EB0(v55, type metadata accessor for ClientCommand);
            v63 = sub_10015BA6C(v60, v62, &v105);

            *(v56 + 23) = v63;
            *(v56 + 31) = 2082;
            v64 = Tag.debugDescription.getter(v104 & 0xFFFFFFFF000000FFLL);
            v66 = sub_10015BA6C(v64, v65, &v105);

            *(v56 + 33) = v66;
            _os_log_impl(&_mh_execute_header, v52, v94, "[%.*hhx-%{public}s] Sent '%{public}s' command as %{public}s", v56, 0x29u);
            swift_arrayDestroy();
            v25 = v96;

            v67 = v93;
            v68 = v103;
          }

          else
          {

            sub_100011284(v100, v102, v50, v101);
            sub_100120EB0(v51, type metadata accessor for ClientCommand);
            v67 = v44;
            v68 = type metadata accessor for ClientCommand;
          }

          sub_100120EB0(v67, v68);
          v33 = v99;
        }
      }

      v88 = v97;
      sub_1000102DC(v97);
      sub_100169CC8(v88, v104, v35);
      sub_100025F40(v88, &qword_1005D0F28, &qword_1004D6018);
      sub_100120EB0(v25, type metadata accessor for Command);
      sub_100025F40(v33, &qword_1005D0F38, &qword_1004D6028);
      return 0;
    }
  }
}

unint64_t sub_10011E4EC(NSObject *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void, void, void, void, void), uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8, __int128 a9, unsigned __int8 a10, uint64_t a11, unint64_t a12)
{
  v227 = a8;
  v226 = a7;
  v223 = a5;
  v224 = a6;
  v208 = a3;
  v229 = a2;
  v222 = a1;
  v13 = a12;
  LODWORD(v277) = a10;
  v14 = type metadata accessor for MailboxSyncState();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v202 = &v195[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v220 = type metadata accessor for Command();
  v17 = *(v220 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v220);
  v21 = &v195[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v213 = &v195[-v22];
  v219 = type metadata accessor for ClientCommand(0);
  v23 = *(v219 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v219);
  v203 = &v195[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v204 = &v195[-v28];
  __chkstk_darwin(v27);
  v207 = &v195[-v29];
  v30 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v200 = &v195[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = __chkstk_darwin(v32);
  v199 = &v195[-v35];
  v36 = __chkstk_darwin(v34);
  v205 = &v195[-v37];
  v38 = __chkstk_darwin(v36);
  v212 = &v195[-v39];
  __chkstk_darwin(v38);
  v211 = &v195[-v40];
  v41 = sub_10000C9C0(&qword_1005D0F30, &qword_1004D6020);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v198 = &v195[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v43);
  v210 = &v195[-v45];
  v274 = a9;
  v46 = v223;
  v47 = v229;
  LOBYTE(v275) = v277;
  *(&v275 + 1) = a11;
  v276 = a12;
  v230 = a11;
  v48 = a4;

  sub_1000131FC(a12);
  v209 = v21;
  v201 = v21 + 8;
  v218 = (v23 + 48);
  v214 = (v17 + 56);
  v206 = (v23 + 56);
  v221 = a12;
  v277 = a4;
  while (1)
  {
    while (1)
    {
      v50 = swift_allocObject();
      v52 = v226;
      v51 = v227;
      *(v50 + 16) = v224;
      *(v50 + 24) = v52;
      *(v50 + 32) = v51;
      v53 = v275;
      *(v50 + 40) = v274;
      *(v50 + 56) = v53;
      *(v50 + 72) = v276;
      sub_100117890(v46, v248);
      v225 = v50;
      if (v251)
      {
        break;
      }

      sub_1000B364C(v248, &v234);
      v64 = *(type metadata accessor for RunningTask() + 48);
      v65 = *(v46 + v64);
      *(v46 + v64) = v65 + 1;
      v66 = *(v46 + 48);
      v215 = *(v46 + 56);
      v216 = v66;
      v67 = *(&v235 + 1);
      v68 = v236;
      sub_100025928(&v234, *(&v235 + 1));
      v69 = *(v68 + 40);

      sub_1000131FC(v13);

      sub_1000131FC(v13);

      sub_1000131FC(v13);
      v217 = v65;
      v70 = v211;
      v69(v65 & 0xFFFFFF, v216, v215, v67, v68);
      v71 = v212;
      sub_10000E268(v70, v212, &qword_1005D0F28, &qword_1004D6018);
      if ((*v218)(v71, 1, v219) == 1)
      {
        sub_100025F40(v70, &qword_1005D0F28, &qword_1004D6018);
        v72 = v210;
        (*v214)(v210, 1, 1, v220);
      }

      else
      {
        v73 = v207;
        sub_100120D24(v71, v207, type metadata accessor for ClientCommand);
        v72 = v210;
        sub_100120E14(v73, v210, type metadata accessor for ClientCommand);
        v74 = v220;
        swift_storeEnumTagMultiPayload();
        (*v214)(v72, 0, 1, v74);
        sub_100120EB0(v73, type metadata accessor for ClientCommand);
        sub_100025F40(v70, &qword_1005D0F28, &qword_1004D6018);
      }

      v75 = v228;
      v76 = v222;

      v13 = v221;
      sub_1000131FC(v221);
      v46 = v223;
      v77 = v75;
      v78 = sub_10011DAB0(v72, v217 & 0xFFFFFF, v223, v76, v224, v226, v227, &v274);

      sub_10001324C(v13);
      sub_100025F40(v72, &qword_1005D0F30, &qword_1004D6020);
      v48 = v277;
      v228 = v77;
      if (v77)
      {
        sub_1000197E0(&v234);

        goto LABEL_55;
      }

      if (v78 < 2u)
      {
        sub_10011D8CC(v46);
        sub_100104D00(&v234, v46);
        *(v46 + 45) = 0;
      }

      sub_1000197E0(&v234);

      sub_10001324C(v13);

      sub_10001324C(v13);
      v47 = v229;
      v49 = v78;
      if (v78)
      {
LABEL_48:
        v151 = v49 == 1;
        goto LABEL_51;
      }
    }

    if (v251 != 1)
    {

      sub_1000131FC(v13);

      v151 = 1;
LABEL_51:
      v62 = v222;
      goto LABEL_58;
    }

    v54 = v249;
    if (v250)
    {
      sub_1000B364C(v248, &v234);
      v55 = *(&v235 + 1);
      v56 = v236;
      sub_10002587C(&v234, *(&v235 + 1));
      v57 = *(v56 + 32);

      sub_1000131FC(v13);

      sub_1000131FC(v13);

      sub_1000131FC(v13);
      v57(&v252, v55, v56);
      v58 = v253;
      LODWORD(v56) = v254;
      v269 = v252;
      sub_1000D69D0(&v269);
      v59 = v213;
      *v213 = v54;
      v60 = 1;
      *(v59 + 4) = 1;
      *(v59 + 1) = v58;
      v59[4] = v56;
      swift_storeEnumTagMultiPayload();
      sub_100120E14(v59, v209, type metadata accessor for Command);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v119 = sub_10000C9C0(&qword_1005CD0A0, &unk_1004E9360);
          v120 = *&v201[*(v119 + 48)];
        }

        v121 = v203;
        sub_100120D24(v209, v203, type metadata accessor for ClientCommand);
        v122 = v121;
        v63 = v205;
        sub_100120D24(v122, v205, type metadata accessor for ClientCommand);
        v60 = 0;
        v62 = v222;
        v46 = v223;
        v47 = v229;
        v48 = v277;
      }

      else
      {
        if ((EnumCaseMultiPayload - 2) < 2)
        {
          sub_100120EB0(v209, type metadata accessor for Command);
        }

        v62 = v222;
        v46 = v223;
        v47 = v229;
        v48 = v277;
        v63 = v205;
      }

      v123 = v60;
      v124 = v219;
      (*v206)(v63, v123, 1, v219);
      if ((*v218)(v63, 1, v124) == 1)
      {
        sub_100025F40(v63, &qword_1005D0F28, &qword_1004D6018);
      }

      else
      {
        v125 = v204;
        sub_100120D24(v63, v204, type metadata accessor for ClientCommand);
        v126 = *(v224 + 272);
        v127 = *(v224 + 280);
        v128 = *(v224 + 264);

        LOBYTE(v128) = sub_10012304C(v125, v128, v126);

        sub_100120EB0(v125, type metadata accessor for ClientCommand);
        if ((v128 & 1) == 0)
        {
          sub_100120EB0(v213, type metadata accessor for Command);
          goto LABEL_80;
        }
      }

      v129 = v213;
      v130 = v228;
      v131 = v226(v213, &v274);
      v228 = v130;
      if (v130)
      {
        sub_100120EB0(v129, type metadata accessor for Command);
        sub_1000197E0(&v234);

LABEL_54:

        v13 = v221;
LABEL_55:
        sub_10001324C(v13);

        sub_10001324C(v13);
        goto LABEL_63;
      }

      v133 = v131;
      v134 = v132;
      sub_100120EB0(v129, type metadata accessor for Command);
      if ((v134 & 1) == 0)
      {
        sub_10011D8CC(v46);
        sub_100104D00(&v234, v46);
        *(v46 + 40) = v133;
        *(v46 + 44) = 256;
        v135 = v46 + *(type metadata accessor for RunningTask() + 52);
        v137 = *v135;
        v136 = *(v135 + 8);
        v138 = *(&v235 + 1);
        v139 = v236;
        sub_10002587C(&v234, *(&v235 + 1));
        (*(v139 + 32))(&v261, v138, v139);
        v140 = v262;
        v141 = v263;
        v268 = v261;
        sub_1000D69D0(&v268);
        v142 = *(&v235 + 1);
        v143 = v236;
        sub_10002587C(&v234, *(&v235 + 1));
        v144 = (*(v143 + 48))(v142, v143);
        v137(v229, v140, v141, v144);
        v48 = v277;
        v47 = v229;

        v46 = v223;

        sub_1000197E0(&v234);

        v13 = v221;
        sub_10001324C(v221);

        sub_10001324C(v13);
        continue;
      }

      v13 = v221;
LABEL_80:
      sub_1000197E0(&v234);

      sub_10001324C(v13);

      sub_10001324C(v13);
      v151 = 0;
      goto LABEL_58;
    }

    sub_1000B364C(v248, v245);
    v79 = v246;
    v80 = v247;
    sub_10002587C(v245, v246);
    v81 = *(v80 + 32);

    sub_1000131FC(v13);

    sub_1000131FC(v13);

    sub_1000131FC(v13);
    v81(&v255, v79, v80);
    v272 = v256;
    v273 = v257;
    v271 = v255;
    sub_1000D69D0(&v271);
    if (*(v229 + 192) != 1)
    {
      v62 = v222;
      v46 = v223;
      v48 = v277;
      goto LABEL_57;
    }

    v82 = *(v229 + 168);
    v83 = *(v82 + 16);
    v62 = v222;
    v48 = v277;
    if (!v83)
    {
      break;
    }

    v84 = 0;
    v85 = v82 + 32;
    v46 = v223;
    v86 = v54;
    while (1)
    {
      v87 = (v85 + 176 * v84);
      v88 = *v87;
      v89 = v87[2];
      v235 = v87[1];
      v236 = v89;
      v234 = v88;
      v90 = v87[3];
      v91 = v87[4];
      v92 = v87[6];
      v239 = v87[5];
      v240 = v92;
      v237 = v90;
      v238 = v91;
      v93 = v87[7];
      v94 = v87[8];
      v95 = v87[10];
      v243 = v87[9];
      v244 = v95;
      v241 = v93;
      v242 = v94;
      v96 = v240;
      if (v240)
      {
        v97 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v86 = v54;
        v98 = *(v96 + v97);
        v48 = v277;
      }

      else
      {
        v98 = 0;
      }

      if ((DWORD2(v235) | (DWORD2(v235) << 32)) == (v273 | (v273 << 32)))
      {
        v99 = *(v235 + 16);
        if (v99 == *(v272 + 16))
        {
          if (v99 && v235 != v272)
          {
            v100 = (v235 + 32);
            v101 = (v272 + 32);
            while (*v100 == *v101)
            {
              ++v100;
              ++v101;
              if (!--v99)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_19;
          }

LABEL_30:
          if (v96 && v98 == v86)
          {
            break;
          }
        }
      }

LABEL_19:
      if (++v84 == v83)
      {
        goto LABEL_57;
      }
    }

    v102 = v96 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v103 = _s13SelectedStateV7WrappedVMa(0);
    sub_100120E14(v102 + *(v103 + 20), v202, type metadata accessor for MailboxSyncState);
    v104 = v246;
    v105 = v247;
    sub_10002587C(v245, v246);
    v106 = *(v105 + 32);
    sub_10000E08C(&v234, v231);

    v106(&v258, v104, v105);
    v216 = v259;
    v196 = v260;
    v270 = v258;
    sub_1000D69D0(&v270);
    v107 = *(type metadata accessor for RunningTask() + 48);
    LODWORD(v106) = *(v46 + v107);
    *(v46 + v107) = v106 + 1;
    v108 = *(v46 + 48);
    v109 = *(v46 + 56);
    v215 = v246;
    v110 = v247;
    sub_100025928(v245, v246);
    v197 = *(v110 + 80);

    v217 = v106;
    v111 = v106 & 0xFFFFFF;
    v112 = v199;
    v197(v111, v108, v109, v202, v222, v215, v110);

    v113 = v200;
    sub_10011FD38(v112, v200);
    if ((*v218)(v113, 1, v219) == 1)
    {

      v114 = 1;
      v115 = v228;
      v47 = v229;
      v116 = v220;
      v117 = v225;
      v118 = v198;
    }

    else
    {
      v145 = v207;
      sub_100120D24(v113, v207, type metadata accessor for ClientCommand);
      v146 = sub_10000C9C0(&qword_1005CD0A0, &unk_1004E9360);
      v118 = v198;
      v147 = v198 + *(v146 + 48);
      sub_100120D24(v145, v198, type metadata accessor for ClientCommand);
      *v147 = v54;
      v147[4] = 0;
      *(v147 + 1) = v216;
      *(v147 + 4) = v196;
      v116 = v220;
      swift_storeEnumTagMultiPayload();
      v114 = 0;
      v115 = v228;
      v47 = v229;
      v117 = v225;
    }

    (*v214)(v118, v114, 1, v116);
    v148 = v115;
    v149 = sub_10011FDA8(v118, v217 & 0xFFFFFF, sub_10011FD14, v117, v46, v222);
    v150 = v118;
    v48 = v277;
    v228 = v148;
    if (v148)
    {
      sub_100025F40(v150, &qword_1005D0F30, &qword_1004D6020);
      sub_100120EB0(v202, type metadata accessor for MailboxSyncState);

      sub_10000E0E8(&v234);
      sub_10009DA94(&v272);
      sub_1000197E0(v245);

      goto LABEL_54;
    }

    sub_100025F40(v150, &qword_1005D0F30, &qword_1004D6020);
    if (v149 < 2u)
    {
      sub_10011D8CC(v46);
      sub_100104D00(v245, v46);
      *(v46 + 40) = v54;
      *(v46 + 44) = 256;
    }

    sub_100120EB0(v202, type metadata accessor for MailboxSyncState);

    sub_10000E0E8(&v234);
    sub_10009DA94(&v272);
    sub_1000197E0(v245);

    v13 = v221;
    sub_10001324C(v221);

    sub_10001324C(v13);
    v49 = v149;
    if (v149)
    {
      goto LABEL_48;
    }
  }

  v46 = v223;
LABEL_57:
  sub_10009DA94(&v272);
  sub_1000197E0(v245);

  v13 = v221;
  sub_10001324C(v221);

  sub_10001324C(v13);
  v151 = 0;
  v47 = v229;
LABEL_58:
  v152 = v208;
  do
  {
    v153 = sub_10011A1BC(v62, v47, v152, v48);
  }

  while (!v153);
  if (v153 != 1 || !v151 || *(*(v46 + 48) + 16))
  {
LABEL_63:

    v154 = v13;
    return sub_10001324C(v154);
  }

  v156 = v62 + *(type metadata accessor for Task.Logger(0) + 20);
  v157 = *(v156 + 1);
  v227 = *v156;
  v277 = v157;
  v158 = *(v156 + 2);
  v159 = *(v156 + 3);
  v160 = *(v156 + 4);
  v161 = *(v156 + 10);
  if (v159 < 0)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v170 = sub_1004A4A54();
    LODWORD(v225) = sub_1004A6034();
    if (os_log_type_enabled(v170, v225))
    {
      v171 = swift_slowAlloc();
      v222 = v170;
      v172 = v171;
      v224 = swift_slowAlloc();
      v231[0] = v224;
      *v172 = 68159235;
      *(v172 + 4) = 2;
      *(v172 + 8) = 256;
      *(v172 + 10) = v227;
      *(v172 + 11) = 2082;

      v173 = sub_10015BA6C(v277, v158, v231);
      LODWORD(v226) = v161;
      v174 = v173;

      *(v172 + 13) = v174;
      *(v172 + 21) = 1040;
      *(v172 + 23) = 2;
      v46 = v223;
      *(v172 + 27) = 512;

      *(v172 + 29) = v159;

      *(v172 + 31) = 2160;
      *(v172 + 33) = 0x786F626C69616DLL;
      *(v172 + 41) = 2085;

      *&v234 = v160;
      DWORD2(v234) = v226;
      v175 = sub_1004A5824();
      v177 = sub_10015BA6C(v175, v176, v231);

      *(v172 + 43) = v177;
      v178 = v222;
      _os_log_impl(&_mh_execute_header, v222, v225, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking task as complete.", v172, 0x33u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v162 = sub_1004A4A54();
    v163 = sub_1004A6034();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v225 = v160;
      LODWORD(v226) = v161;
      v166 = v165;
      *&v234 = v165;
      *v164 = 68158210;
      *(v164 + 4) = 2;
      *(v164 + 8) = 256;
      v224 = v159;
      v167 = v227;
      *(v164 + 10) = v227;
      *(v164 + 11) = 2082;
      v168 = v277;
      v169 = sub_10015BA6C(v277, v158, &v234);
      sub_100011284(v167, v168, v158, v224);
      *(v164 + 13) = v169;
      v46 = v223;
      _os_log_impl(&_mh_execute_header, v162, v163, "[%.*hhx-%{public}s] Marking task as complete.", v164, 0x15u);
      sub_1000197E0(v166);

      v62 = v222;
    }

    else
    {

      sub_100011284(v227, v277, v158, v159);
    }

    v13 = v221;
  }

  sub_100117890(v46, &v234);
  if (!BYTE13(v236))
  {
    sub_1000B364C(&v234, v231);
    v193 = v232;
    v194 = v233;
    sub_10002587C(v231, v232);
    (*(v194 + 88))(v229, v62, v193, v194);
    sub_10011D8CC(v46);
    *v46 = 0u;
    *(v46 + 16) = 0u;
    *(v46 + 29) = 0u;
    *(v46 + 45) = 2;
    sub_1000197E0(v231);
    goto LABEL_63;
  }

  if (BYTE13(v236) != 1)
  {
    goto LABEL_63;
  }

  sub_1000B364C(&v234, v231);
  v179 = v46 + *(type metadata accessor for RunningTask() + 56);
  v180 = *(v179 + 8);
  v277 = *v179;
  v181 = v46;
  v182 = v232;
  v183 = v233;
  sub_10002587C(v231, v232);
  (*(v183 + 32))(&v264, v182, v183);
  v184 = v265;
  v185 = v266;
  v267 = v264;
  sub_1000D69D0(&v267);
  v186 = v62;
  v187 = v232;
  v188 = v233;
  sub_10002587C(v231, v232);
  v189 = (*(v188 + 48))(v187, v188);
  v190 = v229;
  v277(v229, v184, v185, v189, v186);

  v191 = v232;
  v192 = v233;
  sub_10002587C(v231, v232);
  (*(v192 + 128))(v190, v186, v191, v192);
  sub_10011D8CC(v181);
  *v181 = 0u;
  *(v181 + 16) = 0u;
  *(v181 + 29) = 0u;
  *(v181 + 45) = 2;
  sub_1000197E0(v231);

  v154 = v221;
  return sub_10001324C(v154);
}