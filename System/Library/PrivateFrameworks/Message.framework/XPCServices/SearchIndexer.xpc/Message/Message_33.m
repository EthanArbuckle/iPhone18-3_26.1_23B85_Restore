void sub_10022161C(uint64_t a1, uint64_t (*a2)(_OWORD *), uint64_t a3)
{
  v4 = v3;
  v70 = a2;
  v71 = a3;
  v6 = _s6LoggerVMa();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v67 = &v65 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v65 - v14;
  __chkstk_darwin(v13);
  v17 = &v65 - v16;
  sub_100222C50(a1, &v65 - v16, _s6LoggerVMa);
  sub_100222C50(a1, v15, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v66 = a1;
  v18 = sub_1004A4A54();
  v19 = sub_1004A6004();
  v20 = os_log_type_enabled(v18, v19);
  v68 = v10;
  v75 = v4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v87[0] = v22;
    *v21 = 68158210;
    *(v21 + 4) = 2;
    *(v21 + 8) = 256;
    v23 = v15[*(v6 + 20)];
    sub_100222CB8(v15, _s6LoggerVMa);
    *(v21 + 10) = v23;
    v10 = v68;
    *(v21 + 11) = 2082;
    v24 = *&v17[*(v6 + 20) + 4];
    sub_100222CB8(v17, _s6LoggerVMa);
    v25 = ConnectionID.debugDescription.getter(v24);
    v27 = sub_10015BA6C(v25, v26, v87);

    *(v21 + 13) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%.*hhx-%{public}s] Checking for new actions.", v21, 0x15u);
    sub_1000197E0(v22);
    v4 = v75;
  }

  else
  {
    sub_100222CB8(v15, _s6LoggerVMa);

    sub_100222CB8(v17, _s6LoggerVMa);
  }

  v28 = type metadata accessor for UnauthenticatedStateWithTasks();
  v29 = *(v28 + 24);
  v30 = *(v28 + 28);
  v72 = *v4;
  v73 = v29;
  v74 = v6;
  v69 = v30;
  while (1)
  {
    v31 = *(v4 + v30);
    v32 = v31[2];
    v76 = v31;
    if (v32)
    {
      v79 = _swiftEmptyArrayStorage;
      sub_1001D5FEC(0, v32, 0);
      v33 = v79;
      v34 = (v31 + 4);
      do
      {
        sub_100222B24(v34, v77);
        v35 = v78;
        sub_10002587C(v77 + 1, v78);
        v36 = (*(*(&v35 + 1) + 8))(v35, *(&v35 + 1));
        sub_100025F40(v77, &qword_1005D4AA0, &qword_1004E8AD0);
        v79 = v33;
        v38 = v33[2];
        v37 = v33[3];
        if (v38 >= v37 >> 1)
        {
          sub_1001D5FEC((v37 > 1), v38 + 1, 1);
          v33 = v79;
        }

        v33[2] = v38 + 1;
        *(v33 + v38 + 32) = v36;
        v34 += 48;
        --v32;
      }

      while (v32);
      v10 = v68;
    }

    else
    {
      v33 = _swiftEmptyArrayStorage;
      v39 = _swiftEmptyArrayStorage[2];
    }

    sub_100222BFC();
    *&v77[0] = sub_1004A5D64();
    v40 = v33[2];
    v4 = v75;
    if (v40)
    {
      v41 = (v33 + 4);
      do
      {
        v42 = *v41++;
        sub_100201924(&v79, v42);
        --v40;
      }

      while (v40);
    }

    sub_100217DB4(*&v77[0], v72, &v80);

    v43 = v74;
    if (!v81)
    {
      sub_100025F40(&v80, &qword_1005D5388, &qword_1004E8AF0);
      return;
    }

    sub_1000B364C(&v80, v82);
    v44 = v83;
    v45 = v84;
    sub_100025928(v82, v83);
    (*(v45 + 16))(v85, v44, v45);
    if (v86 == 255)
    {
      sub_1000197E0(v82);
      return;
    }

    v87[0] = v85[0];
    v87[1] = v85[1];
    v87[2] = v85[2];
    v87[3] = v85[3];
    v88 = v86;
    v46 = v70(v87);
    if (v47)
    {
      break;
    }

    *&v77[0] = v46;
    sub_100104D00(v82, v77 + 8);
    v48 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1001EBE88(0, v48[2] + 1, 1, v48);
    }

    v50 = v48[2];
    v49 = v48[3];
    if (v50 >= v49 >> 1)
    {
      v48 = sub_1001EBE88((v49 > 1), v50 + 1, 1, v48);
    }

    v48[2] = v50 + 1;
    v51 = &v48[6 * v50];
    v52 = v77[0];
    v53 = v78;
    v51[3] = v77[1];
    v51[4] = v53;
    v51[2] = v52;
    v30 = v69;
    *(v4 + v69) = v48;
    sub_1000197E0(v82);
    sub_100025F40(v85, &qword_1005D5390, &qword_1004E8AF8);
  }

  sub_100025F40(v85, &qword_1005D5390, &qword_1004E8AF8);
  sub_1000197E0(v82);
  v54 = v66;
  v55 = v67;
  sub_100222C50(v66, v67, _s6LoggerVMa);
  sub_100222C50(v54, v10, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v56 = sub_1004A4A54();
  v57 = sub_1004A5FF4();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v77[0] = v59;
    *v58 = 68158210;
    *(v58 + 4) = 2;
    *(v58 + 8) = 256;
    v60 = v10[*(v43 + 20)];
    sub_100222CB8(v10, _s6LoggerVMa);
    *(v58 + 10) = v60;
    *(v58 + 11) = 2082;
    v61 = *(v55 + *(v43 + 20) + 4);
    sub_100222CB8(v55, _s6LoggerVMa);
    v62 = ConnectionID.debugDescription.getter(v61);
    v64 = sub_10015BA6C(v62, v63, v77);

    *(v58 + 13) = v64;
    _os_log_impl(&_mh_execute_header, v56, v57, "[%.*hhx-%{public}s] No connection available to send command.", v58, 0x15u);
    sub_1000197E0(v59);
  }

  else
  {
    sub_100222CB8(v10, _s6LoggerVMa);

    sub_100222CB8(v55, _s6LoggerVMa);
  }
}

void *sub_100221D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10022248C(a5, &v34);
  if (!*(&v35 + 1))
  {
    sub_100025F40(&v34, &qword_1005D5388, &qword_1004E8AF0);
    return _swiftEmptyArrayStorage;
  }

  sub_1000B364C(&v34, v17);
  v12 = v18;
  v13 = v19;
  sub_10002587C(v17, v18);
  (*(v13 + 32))(v20, a1, a2, a3, a4, v12, v13);
  v30 = v20[8];
  v31 = v20[9];
  v32 = v20[10];
  v33 = v21;
  v26 = v20[4];
  v27 = v20[5];
  v28 = v20[6];
  v29 = v20[7];
  v22 = v20[0];
  v23 = v20[1];
  v24 = v20[2];
  v25 = v20[3];
  if (sub_100222B94(&v22) == 1)
  {
    sub_1000197E0(v17);
    return _swiftEmptyArrayStorage;
  }

  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v15 = v6 + *(type metadata accessor for UnauthenticatedStateWithTasks() + 24);
  v16 = sub_100218558(&v34, a6);
  sub_100025F40(v20, &qword_1005D5368, &unk_1004E8AD8);
  sub_1000197E0(v17);
  return v16;
}

uint64_t sub_100221F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v39 = a4;
  v38 = a3;
  v40 = a2;
  v8 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v36 = &v31 - v10;
  v37 = type metadata accessor for AuthenticationTask();
  v35 = *(v37 - 8);
  v11 = *(v35 + 64);
  __chkstk_darwin(v37);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(type metadata accessor for UnauthenticatedStateWithTasks() + 28);
  v32 = a1;
  v13 = *(a1 + v31);
  v14 = v13[2];
  if (!v14)
  {
LABEL_14:
    sub_100222BA8();
    swift_allocError();
    swift_willThrow();
    return sub_10018E150(v40, v38, v39 & 1);
  }

  v15 = 0;
  v16 = 4;
  v17 = &qword_1004E8AD0;
  while (1)
  {
    if (v15 >= v13[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_100222B24(&v13[v16], &v41);
    v18 = *(v43 + 15);
    v5 = *(&v43[1] + 7);
    sub_10002587C(&v41 + 1, *(v43 + 15));
    a1 = (*(v5 + 8))(v18, v5);
    sub_100025F40(&v41, &qword_1005D4AA0, &qword_1004E8AD0);
    if (a1 == 2)
    {
      break;
    }

    ++v15;
    v16 += 6;
    if (v14 == v15)
    {
      goto LABEL_14;
    }
  }

  if (v15 >= v13[2])
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100222B24(&v13[v16], v49);
  sub_1000B364C(v50, v48);
  sub_1000B364C(v48, v47);
  sub_10000C9C0(&qword_1005D5370, &qword_1004E8AE8);
  v20 = v36;
  v19 = v37;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v35 + 56))(v20, 1, 1, v19);
    sub_100025F40(v20, &qword_1005D3008, &qword_1004DCCE0);
    goto LABEL_14;
  }

  (*(v35 + 56))(v20, 0, 1, v19);
  v21 = v20;
  v22 = v19;
  a1 = v34;
  sub_10019764C(v21, v34);
  v14 = v38;
  sub_100192CEC(v40, v38, v39 & 1, &v41);
  v5 = *(&v41 + 1);
  v36 = v41;
  LOBYTE(v17) = v42;
  *&v46[128] = v43[8];
  *&v46[144] = v43[9];
  *&v46[160] = v43[10];
  *&v46[176] = v44;
  *&v46[64] = v43[4];
  *&v46[80] = v43[5];
  *&v46[96] = v43[6];
  *&v46[112] = v43[7];
  *v46 = v43[0];
  *&v46[16] = v43[1];
  *&v46[32] = v43[2];
  *&v46[48] = v43[3];
  *&v45[135] = *&v46[135];
  *&v45[151] = *&v46[151];
  *&v45[167] = *&v46[167];
  v45[183] = HIBYTE(v44);
  *&v45[71] = *&v46[71];
  *&v45[87] = *&v46[87];
  *&v45[103] = *&v46[103];
  *&v45[119] = *&v46[119];
  *&v45[7] = *&v46[7];
  *&v45[23] = *&v46[23];
  *&v45[39] = *&v46[39];
  *&v45[55] = *&v46[55];
  if (v15 >= v13[2])
  {
    goto LABEL_17;
  }

  v6 = v13[v16];
  *(v43 + 7) = v22;
  *(v43 + 15) = &off_1005A4510;
  v23 = sub_1000B3774(&v41);
  sub_100222C50(a1, v23, type metadata accessor for AuthenticationTask);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_18:
  v13 = sub_1001EDF60(v13);
LABEL_11:
  result = sub_100222CB8(a1, type metadata accessor for AuthenticationTask);
  if (v15 >= v13[2])
  {
    __break(1u);
  }

  else
  {
    v13[v16] = v6;
    sub_1000197E0(&v13[v16 + 1]);
    sub_1000B364C(&v41, &v13[v16 + 1]);
    result = sub_10018E150(v40, v14, v39 & 1);
    v25 = *&v45[144];
    v26 = v33;
    *(v33 + 145) = *&v45[128];
    *(v26 + 161) = v25;
    *(v26 + 177) = *&v45[160];
    v27 = *&v45[80];
    *(v26 + 81) = *&v45[64];
    *(v26 + 97) = v27;
    v28 = *&v45[112];
    *(v26 + 113) = *&v45[96];
    *(v26 + 129) = v28;
    v29 = *&v45[16];
    *(v26 + 17) = *v45;
    *(v26 + 33) = v29;
    v30 = *&v45[48];
    *(v26 + 49) = *&v45[32];
    *(v32 + v31) = v13;
    *v26 = v36;
    *(v26 + 8) = v5;
    *(v26 + 16) = v17;
    *(v26 + 193) = *&v45[176];
    *(v26 + 65) = v30;
  }

  return result;
}

uint64_t sub_10022248C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for UnauthenticatedStateWithTasks();
  v5 = *(v2 + *(result + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_100222B24(v8, v13);
      v10 = v13[0];
      v9 = DWORD1(v13[0]);
      result = sub_100025F40(v13, &qword_1005D4AA0, &qword_1004E8AD0);
      if (v10 == a1 && v9 == HIDWORD(a1))
      {
        sub_1001EA844(v7, v13);
        return sub_1000B364C((v13 + 8), a2);
      }

      ++v7;
      v8 += 48;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

BOOL _s15IMAP2Connection29UnauthenticatedStateWithTasksV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks();
  if ((sub_10021C42C(a1 + *(v4 + 24), (a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_1001D5FAC(0, v7, 0);
    v8 = _swiftEmptyArrayStorage;
    v9 = v6 + 32;
    do
    {
      sub_100222B24(v9, &v25);
      *(&v22 + 1) = v26;
      v23 = v27;
      v24 = v28;
      v10 = v25;
      sub_1000197E0(&v22 + 1);
      v29 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_1001D5FAC((v11 > 1), v12 + 1, 1);
        v8 = v29;
      }

      v8[2] = (v12 + 1);
      v8[v12 + 4] = v10;
      v9 += 48;
      --v7;
    }

    while (v7);
    v5 = *(v4 + 28);
  }

  v13 = *(a2 + v5);
  v14 = *(v13 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_1001D5FAC(0, v14, 0);
    v15 = v29;
    v16 = v13 + 32;
    do
    {
      sub_100222B24(v16, &v25);
      *(&v22 + 1) = v26;
      v23 = v27;
      v24 = v28;
      v17 = v25;
      sub_1000197E0(&v22 + 1);
      v29 = v15;
      v19 = v15[2];
      v18 = v15[3];
      if (v19 >= v18 >> 1)
      {
        sub_1001D5FAC((v18 > 1), v19 + 1, 1);
        v15 = v29;
      }

      v15[2] = (v19 + 1);
      v15[v19 + 4] = v17;
      v16 += 48;
      --v14;
    }

    while (v14);
  }

  v20 = sub_100102AF4(v8, v15);

  return (v20 & 1) != 0;
}

uint64_t sub_1002227BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnauthenticatedState();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10022287C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnauthenticatedState();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for UnauthenticatedStateWithTasks()
{
  result = qword_1005D5310;
  if (!qword_1005D5310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022296C()
{
  sub_100222A10();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnauthenticatedState();
    if (v1 <= 0x3F)
    {
      sub_100222AC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100222A10()
{
  if (!qword_1005D5320)
  {
    sub_100222A6C();
    v0 = sub_1004A5DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D5320);
    }
  }
}

unint64_t sub_100222A6C()
{
  result = qword_1005D5328;
  if (!qword_1005D5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5328);
  }

  return result;
}

void sub_100222AC0()
{
  if (!qword_1005D5330)
  {
    sub_10000DEFC(&qword_1005D4AA0, &qword_1004E8AD0);
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D5330);
    }
  }
}

uint64_t sub_100222B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D4AA0, &qword_1004E8AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100222B94(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100222BA8()
{
  result = qword_1005D5378;
  if (!qword_1005D5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5378);
  }

  return result;
}

unint64_t sub_100222BFC()
{
  result = qword_1005D5380;
  if (!qword_1005D5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5380);
  }

  return result;
}

uint64_t sub_100222C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100222CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100222D18()
{
  result = qword_1005D5398;
  if (!qword_1005D5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D5398);
  }

  return result;
}

unint64_t sub_100222DA0()
{
  result = qword_1005D53A0;
  if (!qword_1005D53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D53A0);
  }

  return result;
}

uint64_t sub_100222DF4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 17) ^ *(a2 + 17) ^ 1u;
}

int64_t sub_100222E4C(char a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  result = static MonotonicTime.now()();
  if ((v5 & 1) == 0 && v4 >= result)
  {
    goto LABEL_9;
  }

  if (a1)
  {
    v6 = a1 != 1;
    v8 = __OFADD__(v3, 4);
    v3 += 4;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = 0;
  v8 = __OFADD__(v3++, 1);
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v3 <= 1000)
  {
    if (v3 >= 1)
    {
      goto LABEL_8;
    }

LABEL_14:
    v4 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  v3 = 1000;
LABEL_8:
  v9 = sub_100223004(0x20000000000001uLL);
  v10 = sub_100223090(v3, vcvtd_n_f64_u64(v9, 0x35uLL) + 0.0);
  result = MonotonicTime.init(secondsSinceNow:)(v10).rawValue;
  v4 = result;
LABEL_9:
  v11 = 0;
LABEL_10:
  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v11;
  *(v1 + 17) = v6;
  return result;
}

uint64_t variable initialization expression of Engine.externalState@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Activity(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for ExternalState();
  *(a1 + *(result + 20)) = _swiftEmptySetSingleton;
  return result;
}

uint64_t variable initialization expression of Engine.didTearDown()
{
  type metadata accessor for AtomicFlag.Storage();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

unint64_t sub_100223004(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100223090(uint64_t a1, double a2)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  v3 = exp2((a1 - 1)) * 4.0;
  if (v3 < 80.0)
  {
    v4 = 0.5;
    v5 = v3 * 0.5;
    if (a2 >= 1.0)
    {
      return v5 + v4 * v3;
    }

    v4 = 0.0;
    if (a2 < 0.0)
    {
      return v5 + v4 * v3;
    }

LABEL_9:
    v4 = a2 * 0.5;
    return v5 + v4 * v3;
  }

  if (a2 >= 1.0)
  {
    v4 = 0.5;
    v5 = 40.0;
    v3 = 80.0;
    return v5 + v4 * v3;
  }

  v4 = 0.0;
  v5 = 40.0;
  v3 = 80.0;
  if (a2 >= 0.0)
  {
    goto LABEL_9;
  }

  return v5 + v4 * v3;
}

unint64_t sub_100223158(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&unk_1005D53F0, &unk_1004E8CD0);
  v3 = sub_1004A6A74();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = *(a1 + 48);
  result = sub_10024FDC4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v9 = v3[7] + 24 * result;
    *v9 = v5;
    *(v9 + 8) = v15;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v13 = v8 + 2;
    v4 = *(v8 - 4);
    v5 = *(v8 - 2);
    v15 = *v8;

    result = sub_10024FDC4(v4);
    v8 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100223284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005D53E8, &qword_1004E8CC8);
  v3 = sub_1004A6A74();
  LODWORD(v4) = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_10024FDC4(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 2);
    v13 = *v7;

    result = sub_10024FDC4(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for Backoff(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageToDownload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10022343C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D53E0, &qword_1004E8CC0);
    v3 = sub_1004A6A74();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_10024FDC4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
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

unint64_t sub_10022351C(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D53D0, &qword_1004E8CB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000C9C0(&qword_1005D53D8, &qword_1004E8CB8);
    v8 = sub_1004A6A74();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_10000E268(v10, v6, &qword_1005D53D0, &qword_1004E8CB0);
      v12 = *v6;
      v13 = *(v6 + 2);
      result = sub_100063B5C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v8[6] + 16 * result;
      *v17 = v12;
      *(v17 + 8) = v13;
      v18 = v8[7];
      v19 = type metadata accessor for ConnectionStatus(0);
      result = sub_100223820(&v6[v9], v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

unint64_t sub_1002236EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D53B8, &qword_1004E8C98);
    v3 = sub_1004A6A74();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E268(v4, &v13, &unk_1005D53C0, &unk_1004E8CA0);
      v5 = v13;
      v6 = v14;
      result = sub_100064090(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000B364C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_100223820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100223888()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D5400);
  sub_1001C203C(v0, qword_1005D5400);
  return sub_1004A4A64();
}

uint64_t sub_100223910()
{
  if (*(v0 + 72))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1004A6104();
    swift_unknownObjectRelease();
  }

  sub_1001AD0E0(v0 + 32);
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);

  v3 = *(v0 + 104);

  return swift_deallocClassInstance();
}

void sub_1002239DC()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  v9 = sub_1004A5404();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_11;
  }

  swift_beginAccess();
  v10 = *(v1 + 72);
  if (*(v1 + 64) && *(v1 + 64) == 1)
  {
    if (v10)
    {
      return;
    }

    v11 = swift_allocObject();
    swift_weakInit();

    v12 = sub_100224648(v8, sub_100225A7C, v11);

    v13 = *(v1 + 72);
    *(v1 + 72) = v12;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_1004A6114();
    if (qword_1005D53B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1004A4A74();
    sub_1001C203C(v14, qword_1005D5400);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v15 = sub_1004A4A54();
    v16 = sub_1004A6034();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 68157952;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      *(v17 + 10) = *(v1 + 24);

      _os_log_impl(&_mh_execute_header, v15, v16, "[%.*hhx] Did create timer.", v17, 0xBu);

      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    return;
  }

  v18 = *(v1 + 72);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1004A6104();
  v19 = *(v1 + 72);
  *(v1 + 72) = 0;
  swift_unknownObjectRelease();
  if (qword_1005D53B0 != -1)
  {
    goto LABEL_16;
  }

LABEL_11:
  v20 = sub_1004A4A74();
  sub_1001C203C(v20, qword_1005D5400);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v15 = sub_1004A4A54();
  v21 = sub_1004A6034();
  if (os_log_type_enabled(v15, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 68157952;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    *(v22 + 10) = *(v1 + 24);
    swift_unknownObjectRelease();

    _os_log_impl(&_mh_execute_header, v15, v21, "[%.*hhx] Did cancel timer.", v22, 0xBu);

    return;
  }

LABEL_13:
  swift_unknownObjectRelease();
}

void sub_100223DDC()
{
  v2 = v0;
  v3 = sub_1004A53F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = sub_1004A5404();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_6:
    v15 = sub_1004A4A74();
    sub_1001C203C(v15, qword_1005D5400);
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_retain_n();
    v16 = sub_1004A4A54();
    v17 = sub_1004A6034();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 68158466;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v20 = *(v2 + 24);

      *(v18 + 10) = v20;

      *(v18 + 11) = 2082;
      v21 = ConnectionID.debugDescription.getter(*(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v23 = sub_10015BA6C(v21, v22, &v44);

      *(v18 + 13) = v23;
      *(v18 + 21) = 2048;

      *(v18 + 23) = v1;

      _os_log_impl(&_mh_execute_header, v16, v17, "[%.*hhx] Did cancel connection %{public}s, generation %ld", v18, 0x1Fu);
      sub_1000197E0(v19);

      return;
    }

    goto LABEL_17;
  }

  swift_beginAccess();
  v10 = (v2 + 80);
  v3 = *(v2 + 80);
  v1 = *(v2 + 88);
  if (!*(v2 + 64) || *(v2 + 64) == 1)
  {
    if (!v3)
    {
      return;
    }

    v11 = *(*v3 + 536);
    v12 = *(v2 + 80);

    v11(v13);
    v14 = *v10;
    *v10 = 0;
    *(v2 + 88) = 0;

    if (qword_1005D53B0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v24 = *(v2 + 48);
  if (v3)
  {
    if (v24 == v1)
    {
      return;
    }

    v25 = *(*v3 + 536);
    v26 = *(v2 + 80);
    v27 = swift_retain_n();
    v25(v27);
  }

  v28 = *(v2 + 104);
  v29 = (*(v2 + 96))(v2, &off_1005A9450);
  v30 = *(v2 + 80);
  *(v2 + 80) = v29;
  *(v2 + 88) = v24;

  v31 = *(*v29 + 528);

  v31(v32);

  if (qword_1005D53B0 != -1)
  {
    swift_once();
  }

  v33 = sub_1004A4A74();
  sub_1001C203C(v33, qword_1005D5400);
  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_retain_n();
  v34 = sub_1004A4A54();
  v35 = sub_1004A6034();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v36 = 68158722;
    *(v36 + 4) = 2;
    *(v36 + 8) = 256;
    v38 = *(v2 + 24);

    *(v36 + 10) = v38;

    *(v36 + 11) = 2082;
    v39 = ConnectionID.debugDescription.getter(*(v29 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
    v41 = sub_10015BA6C(v39, v40, &v44);

    *(v36 + 13) = v41;
    *(v36 + 21) = 2048;
    v43 = (*(*v29 + 432))(v42);

    *(v36 + 23) = v43;

    *(v36 + 31) = 2048;

    *(v36 + 33) = v24;

    _os_log_impl(&_mh_execute_header, v34, v35, "[%.*hhx] Did create connection %{public}s [C%llu], generation %ld", v36, 0x29u);
    sub_1000197E0(v37);
  }

  else
  {
  }

LABEL_17:
}

uint64_t sub_1002243FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100224454();
  }

  return result;
}

void sub_100224454()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = v2[13];
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v6;
  v10 = sub_1004A5404();
  v11 = v2[1];
  v11(v5, v1);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = static MonotonicTime.now()();
  swift_beginAccess();
  if (*(v0 + 64) != 1)
  {
LABEL_11:
    *v5 = v9;
    v8(v5, v7, v1);
    v16 = sub_1004A5404();
    v17 = (v11)(v5, v1);
    if (v16)
    {
      sub_1002239DC(v17);
      sub_100223DDC();
      return;
    }

    goto LABEL_14;
  }

  v13 = *(v0 + 56);
  v14 = __OFSUB__(v12, v13);
  v15 = v12 - v13;
  if (v12 < v13)
  {
    if (__OFSUB__(v13, v12))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v14 = __OFSUB__(0, v13 - v12);
    v15 = v12 - v13;
    if (!v14)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (!v14)
  {
LABEL_9:
    if (v15 / 1000000000.0 > 2.0)
    {
      *(v0 + 56) = 0;
      *(v0 + 64) = 2;
    }

    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_100224648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v39 = a1;
  v3 = sub_1004A53B4();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  v5 = __chkstk_darwin(v3);
  v46 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v34 - v7;
  v8 = sub_1004A5234();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_1004A5244();
  v38 = *(v40 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(v40);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A5274();
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004A60A4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100210D7C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100225A9C(&unk_1005D4F70, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10000C9C0(&qword_1005D5510, &qword_1004E8DB0);
  sub_1000CBB00(&qword_1005D4F80, &qword_1005D5510, &qword_1004E8DB0);
  sub_1004A6544();
  v23 = sub_1004A60B4();
  (*(v19 + 8))(v22, v18);
  swift_getObjectType();
  aBlock[4] = v41;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A9488;
  v24 = _Block_copy(aBlock);

  sub_1004A5254();
  v25 = v35;
  sub_100224B80();
  sub_1004A60C4();
  _Block_release(v24);
  (*(v38 + 8))(v25, v40);
  (*(v36 + 8))(v17, v37);

  *v11 = 250;
  v27 = v43;
  v26 = v44;
  (*(v43 + 104))(v11, enum case for DispatchTimeInterval.milliseconds(_:), v44);
  v28 = v46;
  sub_1004A5394();
  v29 = v45;
  sub_1004A53A4();
  v30 = *(v47 + 8);
  v31 = v28;
  v32 = v48;
  v30(v31, v48);
  sub_1004A6254();
  v30(v29, v32);
  (*(v27 + 8))(v11, v26);
  return v23;
}

uint64_t sub_100224B80()
{
  sub_1004A5244();
  sub_100225A9C(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  return sub_1004A6544();
}

void sub_100224C58(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 80);
  if (v7)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      if (*(v7 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == *(a1 + 32))
      {
        v9 = *(v1 + 88);
        v10 = (a1 + 40);
        v11 = v8 + 1;
        while (--v11)
        {
          v12 = *v10;
          v10 += 5;
          if (v12 == 0x8000000000000010)
          {
            v13 = *(*v7 + 304);
            v14 = *(v1 + 80);

            v13(v15);
            sub_100224DA0(v9, v6);

            sub_10022590C(v6, type metadata accessor for ConnectionState);
            return;
          }
        }
      }
    }
  }
}

uint64_t sub_100224DA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v92 = a2;
  v5 = sub_1004A5214();
  v87 = *(v5 - 8);
  v88 = v5;
  v6 = *(v87 + 64);
  __chkstk_darwin(v5);
  v84 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = v82 - v9;
  __chkstk_darwin(v10);
  v12 = v82 - v11;
  v13 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v91 = *(v13 - 8);
  v14 = *(v91 + 64);
  __chkstk_darwin(v13);
  v86 = (v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = v82 - v17;
  v19 = _s5StateO6ActionOMa();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v90 = v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v82 - v23;
  v25 = sub_1004A53F4();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v25);
  v30 = (v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v2 + 16);
  *v30 = v31;
  v32 = v26[13];
  v95 = enum case for DispatchPredicate.onQueue(_:);
  v96 = v32;
  v97 = v26 + 13;
  v32(v30, v28);
  v94 = v31;
  LOBYTE(v31) = sub_1004A5404();
  v34 = v26[1];
  v33 = v26 + 1;
  v93 = v34;
  v34(v30, v25);
  if (v31)
  {
    v98 = v12;
    if (qword_1005D53B0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v35 = sub_1004A4A74();
  v36 = sub_1001C203C(v35, qword_1005D5400);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v89 = v36;
  v37 = sub_1004A4A54();
  v38 = sub_1004A5FF4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v83 = v30;
    v40 = v33;
    v41 = v25;
    v42 = v24;
    v43 = v39;
    *v39 = 68158208;
    *(v39 + 4) = 2;
    *(v39 + 8) = 256;
    *(v39 + 10) = *(v3 + 24);

    *(v43 + 11) = 2048;
    *(v43 + 13) = a1;
    _os_log_impl(&_mh_execute_header, v37, v38, "[%.*hhx] Connection generation %ld state did change.", v43, 0x15u);
    v24 = v42;
    v25 = v41;
    v33 = v40;
    v30 = v83;
  }

  else
  {
  }

  swift_beginAccess();
  sub_100225AFC(a1, v92, v24);
  swift_endAccess();
  v44 = v90;
  sub_1002258A8(v24, v90);
  v45 = (*(v91 + 48))(v44, 2, v13);
  v46 = v98;
  if (v45)
  {
    if (v45 == 1)
    {
      goto LABEL_33;
    }

    v47 = *(v3 + 80);
    if (v47)
    {
      v91 = v25;
      *(v3 + 80) = 0;
      *(v3 + 88) = 0;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v48 = sub_1004A4A54();
      v49 = sub_1004A6034();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 68158208;
        *(v50 + 4) = 2;
        *(v50 + 8) = 256;
        *(v50 + 10) = *(v3 + 24);

        *(v50 + 11) = 2048;
        *(v50 + 13) = a1;
        _os_log_impl(&_mh_execute_header, v48, v49, "[%.*hhx] Promoting connection generation %ld.", v50, 0x15u);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

LABEL_32:
        v25 = v91;
        goto LABEL_33;
      }

      if (*(Strong + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
      {

        sub_10023AB80(v47);

LABEL_31:
        swift_unknownObjectRelease();
        goto LABEL_32;
      }
    }

    else
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v70 = sub_1004A4A54();
      v71 = sub_1004A6034();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = a1;
        v73 = v25;
        v74 = swift_slowAlloc();
        *v74 = 68158208;
        *(v74 + 4) = 2;
        *(v74 + 8) = 256;
        *(v74 + 10) = *(v3 + 24);

        *(v74 + 11) = 2048;
        *(v74 + 13) = v72;
        _os_log_impl(&_mh_execute_header, v70, v71, "[%.*hhx] Trying to promote connection generation %ld, but there’s no connection.", v74, 0x15u);
        v25 = v73;
      }

      else
      {
      }

      v77 = v94;
      *v30 = v94;
      v96(v30, v95, v25);
      v78 = v77;
      LOBYTE(v77) = sub_1004A5404();
      v93(v30, v25);
      if (v77)
      {
        goto LABEL_34;
      }

      __break(1u);
    }

    goto LABEL_31;
  }

  sub_10022596C(v44, v18);
  v92 = v18;
  v51 = v86;
  sub_1002077B8(v18, v86);
  v52 = v87;
  v53 = v88;
  if ((*(v87 + 48))(v51, 1, v88) == 1)
  {
    sub_1002259DC(v51);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v54 = sub_1004A4A54();
    v55 = sub_1004A6034();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = a1;
      v57 = v25;
      v58 = swift_slowAlloc();
      *v58 = 68158208;
      *(v58 + 4) = 2;
      *(v58 + 8) = 256;
      *(v58 + 10) = *(v3 + 24);

      *(v58 + 11) = 2048;
      *(v58 + 13) = v56;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%.*hhx] Cancelling connection generation %ld", v58, 0x15u);
      v25 = v57;
    }

    else
    {
    }

    sub_1002259DC(v92);
  }

  else
  {
    v83 = a1;
    v90 = v24;
    (*(v52 + 32))(v46, v51, v53);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v59 = v85;
    v86 = *(v52 + 16);
    (v86)(v85, v46, v53);
    v60 = v46;
    v61 = v52;
    v62 = sub_1004A4A54();
    LODWORD(v89) = sub_1004A6034();
    if (os_log_type_enabled(v62, v89))
    {
      v63 = swift_slowAlloc();
      v91 = v25;
      v64 = v63;
      v82[0] = swift_slowAlloc();
      v82[1] = v33;
      v99 = v82[0];
      *v64 = 68158466;
      *(v64 + 4) = 2;
      *(v64 + 8) = 256;
      *(v64 + 10) = *(v3 + 24);

      *(v64 + 11) = 2048;
      v65 = v84;
      *(v64 + 13) = v83;
      *(v64 + 21) = 2082;
      (v86)(v65, v59, v53);
      v66 = sub_1004A5804();
      v68 = v67;
      v87 = *(v61 + 8);
      (v87)(v59, v53);
      v69 = sub_10015BA6C(v66, v68, &v99);

      *(v64 + 23) = v69;
      _os_log_impl(&_mh_execute_header, v62, v89, "[%.*hhx] Cancelling connection generation %ld: %{public}s", v64, 0x1Fu);
      sub_1000197E0(v82[0]);

      v25 = v91;

      (v87)(v98, v53);
    }

    else
    {

      v76 = *(v61 + 8);
      v76(v59, v53);
      v76(v60, v53);
    }

    sub_1002259DC(v92);
    v24 = v90;
  }

LABEL_33:
  v79 = v94;
  *v30 = v94;
  v96(v30, v95, v25);
  v80 = v79;
  LOBYTE(v79) = sub_1004A5404();
  result = (v93)(v30, v25);
  if (v79)
  {
LABEL_34:
    sub_1002239DC();
    sub_100223DDC();
    return sub_10022590C(v24, _s5StateO6ActionOMa);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002258A8(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateO6ActionOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022590C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10022596C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002259DC(uint64_t a1)
{
  v2 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100225A44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100225A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100225A9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100225AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1004A5214();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConnectionState();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  if (*(v3 + 16) == 2 && *v3 == a1)
  {
    sub_100210F9C(a2, &v31 - v17);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      sub_100211000(v18);
      *v3 = a1 + 1;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      (*(v8 + 56))(a3, 1, 1, v7);
      v25 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
      return (*(*(v25 - 8) + 56))(a3, 0, 2, v25);
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        *v3 = a1 + 1;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v24 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
        (*(*(v24 - 8) + 56))(a3, 2, 2, v24);
        return sub_100211000(v18);
      }
    }

    else
    {
      sub_100210F9C(v18, v15);
      v26 = sub_1004A4E34();
      v27 = *(v26 - 8);
      if ((*(v27 + 88))(v15, v26) == enum case for NWConnection.State.waiting(_:))
      {
        (*(v27 + 96))(v15, v26);
        v28 = *(v8 + 32);
        v28(v11, v15, v7);
        *v3 = a1 + 1;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v28(a3, v11, v7);
        (*(v8 + 56))(a3, 0, 1, v7);
        v29 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
        (*(*(v29 - 8) + 56))(a3, 0, 2, v29);
        return sub_100211000(v18);
      }

      (*(v27 + 8))(v15, v26);
    }

    v30 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
    (*(*(v30 - 8) + 56))(a3, 1, 2, v30);
    return sub_100211000(v18);
  }

  v20 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v21 = *(*(v20 - 8) + 56);

  return v21(a3, 1, 2, v20);
}

BOOL sub_100225F68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v8 = a6 == 1 && a1 == a4 && a2 == a5;
    v10 = a6 == 2 && a1 == a4;
    if (a3 == 1)
    {
      return v8;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    return !a6 && a1 == a4;
  }
}

uint64_t sub_100225FC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022604C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t _s5StateO6ActionOMa()
{
  result = qword_1005D5588;
  if (!qword_1005D5588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100226128()
{
  sub_100208340();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100226190@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v353 = a2;
  v378 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v352 = *(v378 - 8);
  v3 = *(v352 + 64);
  __chkstk_darwin(v378);
  v337 = &v330 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v332 = &v330 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v336 = &v330 - v9;
  __chkstk_darwin(v10);
  v338 = &v330 - v11;
  __chkstk_darwin(v12);
  v368 = &v330 - v13;
  __chkstk_darwin(v14);
  v342 = &v330 - v15;
  __chkstk_darwin(v16);
  v372 = &v330 - v17;
  __chkstk_darwin(v18);
  v345 = &v330 - v19;
  v20 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v379 = &v330 - v22;
  v23 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v343 = &v330 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v344 = &v330 - v27;
  __chkstk_darwin(v28);
  v380 = &v330 - v29;
  __chkstk_darwin(v30);
  v384 = (&v330 - v31);
  v354 = type metadata accessor for ConnectionStatus.Error(0);
  v381 = *(v354 - 8);
  v32 = *(v381 + 64);
  __chkstk_darwin(v354);
  v346 = &v330 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v383 = (&v330 - v35);
  v36 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v348 = &v330 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v349 = &v330 - v40;
  v41 = sub_1004A5214();
  v373 = *(v41 - 8);
  v42 = *(v373 + 64);
  __chkstk_darwin(v41);
  v331 = &v330 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v333 = &v330 - v45;
  __chkstk_darwin(v46);
  v341 = &v330 - v47;
  __chkstk_darwin(v48);
  v347 = &v330 - v49;
  __chkstk_darwin(v50);
  v363 = &v330 - v51;
  __chkstk_darwin(v52);
  v334 = &v330 - v53;
  __chkstk_darwin(v54);
  v335 = &v330 - v55;
  __chkstk_darwin(v56);
  v369 = &v330 - v57;
  __chkstk_darwin(v58);
  v358 = &v330 - v59;
  __chkstk_darwin(v60);
  v360 = &v330 - v61;
  __chkstk_darwin(v62);
  v359 = &v330 - v63;
  __chkstk_darwin(v64);
  v371 = &v330 - v65;
  __chkstk_darwin(v66);
  v365 = &v330 - v67;
  __chkstk_darwin(v68);
  v366 = &v330 - v69;
  __chkstk_darwin(v70);
  v396 = &v330 - v71;
  __chkstk_darwin(v72);
  v374 = &v330 - v73;
  __chkstk_darwin(v74);
  v392 = &v330 - v75;
  __chkstk_darwin(v76);
  v78 = &v330 - v77;
  __chkstk_darwin(v79);
  v81 = &v330 - v80;
  __chkstk_darwin(v82);
  v377 = &v330 - v83;
  __chkstk_darwin(v84);
  v390 = &v330 - v85;
  v405 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v86 = *(*(v405 - 8) + 64);
  __chkstk_darwin(v405);
  v361 = &v330 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v362 = &v330 - v89;
  __chkstk_darwin(v90);
  v386 = &v330 - v91;
  __chkstk_darwin(v92);
  v389 = &v330 - v93;
  __chkstk_darwin(v94);
  v393 = (&v330 - v95);
  __chkstk_darwin(v96);
  v382 = &v330 - v97;
  __chkstk_darwin(v98);
  v100 = &v330 - v99;
  __chkstk_darwin(v101);
  v103 = &v330 - v102;
  v404 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v104 = *(*(v404 - 8) + 64);
  __chkstk_darwin(v404);
  v340 = &v330 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v106);
  v339 = &v330 - v107;
  __chkstk_darwin(v108);
  v357 = &v330 - v109;
  __chkstk_darwin(v110);
  v356 = &v330 - v111;
  __chkstk_darwin(v112);
  v391 = &v330 - v113;
  __chkstk_darwin(v114);
  v367 = &v330 - v115;
  __chkstk_darwin(v116);
  v394 = &v330 - v117;
  __chkstk_darwin(v118);
  v370 = &v330 - v119;
  __chkstk_darwin(v120);
  v122 = &v330 - v121;
  __chkstk_darwin(v123);
  v395 = (&v330 - v124);
  __chkstk_darwin(v125);
  v127 = &v330 - v126;
  __chkstk_darwin(v128);
  *&v388 = &v330 - v129;
  v132 = __chkstk_darwin(v130);
  v385 = &v330 - v133;
  v364 = a1;
  v403 = *(a1 + 16);
  if (!v403)
  {
    return (*(v381 + 56))(v353, 1, 1, v354, v132);
  }

  v134 = v103;
  v135 = v403;
  v402 = (v373 + 32);
  v401 = (v373 + 88);
  v400 = enum case for NWError.posix(_:);
  v398 = (v373 + 16);
  v397 = (v373 + 96);
  v399 = (v373 + 8);
  v136 = (*(v131 + 80) + 32) & ~*(v131 + 80);
  v137 = *(v131 + 72);
  v355 = v403 - 1;
  v350 = v136;
  v330 = v136 + v137 * (v403 - 1);
  v138 = v364 + v330;
  v387 = v137;
  v375 = -v137;
  v351 = v403;
  v376 = v134;
  while (1)
  {
    v139 = v385;
    sub_100229C14(v138, v385, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_100229C7C(v139 + *(v404 + 20), v134, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      break;
    }

    v140 = v390;
    (*v402)(v390, v134, v41);
    v141 = (*v401)(v140, v41);
    if (v141 != v400 || (v142 = v377, (*v398)(v377, v390, v41), (*v397)(v142, v41), v134 = v376, v143 = *v142 - 52, v143 > 0x2C) || ((1 << v143) & 0x100000000107) == 0)
    {
      (*v399)(v390, v41);
      goto LABEL_11;
    }

    --v135;
    (*v399)(v390, v41);
    v138 += v375;
    if (!v135)
    {
      return (*(v381 + 56))(v353, 1, 1, v354, v132);
    }
  }

  sub_100229288(v134, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_11:
  v377 = (v352 + 56);
  v385 = v364 + v350;
  v145 = -v387;
  v146 = _swiftEmptyArrayStorage;
  v147 = v351;
  do
  {
    v390 = v146;
    --v147;
    v148 = v385 + v387 * v147;
    while (1)
    {
      if (v147 >= v403)
      {
        __break(1u);
LABEL_34:
        v146 = v390;
        goto LABEL_35;
      }

      sub_100229C14(v148, v127, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_100229C14(&v127[*(v404 + 20)], v100, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      (*v402)(v81, v100, v41);
      v149 = (*v401)(v81, v41);
      if (v149 != v400 || ((*v398)(v78, v81, v41), (*v397)(v78, v41), v150 = *v78 - 52, v150 > 0x2C) || ((1 << v150) & 0x100000000107) == 0)
      {
        (*v399)(v81, v41);
        goto LABEL_24;
      }

      (*v399)(v81, v41);
      sub_100229288(v127, type metadata accessor for CommandConnection.RecentErrors.Error);
      --v147;
      v148 += v145;
      if (v147 == -1)
      {
        goto LABEL_34;
      }
    }

    sub_100229288(v100, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_24:
    v151 = v388;
    sub_100229C7C(v127, v388, type metadata accessor for CommandConnection.RecentErrors.Error);
    v152 = v382;
    sub_100229C14(v151 + *(v404 + 20), v382, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v153 = *(v152 + 8);
      v154 = v152;
      v155 = v384;
      if (v153)
      {
        *v384 = *v154;
        v155[1] = v153;
        v156 = v378;
        swift_storeEnumTagMultiPayload();
        v157 = 0;
      }

      else
      {
        v157 = 1;
        v156 = v378;
      }

      (*v377)(v155, v157, 1, v156);
      v158 = v155;
      v159 = v380;
      sub_10000E268(v158, v380, &qword_1005D55B8, &unk_1004F2790);
      v160 = sub_1004A44E4();
      v161 = v379;
      (*(*(v160 - 8) + 56))(v379, 1, 1, v160);
      ConnectionStatus.Error.init(kind:details:backedOffUntil:)(2, v159, v161, v383);
      sub_100025F40(v384, &qword_1005D55B8, &unk_1004F2790);
      sub_100229288(v388, type metadata accessor for CommandConnection.RecentErrors.Error);
      v162 = v390;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = sub_10023798C(0, *(v162 + 2) + 1, 1, v162);
      }

      v164 = *(v162 + 2);
      v163 = *(v162 + 3);
      v165 = v162;
      if (v164 >= v163 >> 1)
      {
        v165 = sub_10023798C(v163 > 1, v164 + 1, 1, v162);
      }

      *(v165 + 16) = v164 + 1;
      v146 = v165;
      sub_100229C7C(v383, v165 + ((*(v381 + 80) + 32) & ~*(v381 + 80)) + *(v381 + 72) * v164, type metadata accessor for ConnectionStatus.Error);
    }

    else
    {
      sub_100229288(v151, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_100229288(v152, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      v146 = v390;
    }
  }

  while (v147);
LABEL_35:
  if (*(v146 + 2))
  {
    v166 = v381;
    v167 = v349;
    sub_100229C14(&v146[(*(v381 + 80) + 32) & ~*(v381 + 80)], v349, type metadata accessor for ConnectionStatus.Error);
    v168 = 0;
    v169 = v354;
  }

  else
  {
    v168 = 1;
    v169 = v354;
    v167 = v349;
    v166 = v381;
  }

  v170 = v348;

  v171 = *(v166 + 56);
  v171(v167, v168, 1, v169);
  sub_10000E268(v167, v170, &qword_1005CCEB0, &qword_1004E9140);
  if ((*(v166 + 48))(v170, 1, v169) != 1)
  {
    sub_100025F40(v167, &qword_1005CCEB0, &qword_1004E9140);
    v189 = v346;
    sub_100229C7C(v170, v346, type metadata accessor for ConnectionStatus.Error);
    v190 = v189;
    v191 = v353;
    sub_100229C7C(v190, v353, type metadata accessor for ConnectionStatus.Error);
    return (v171)(v191, 0, 1, v169);
  }

  v383 = v171;
  v384 = (v166 + 56);
  sub_100025F40(v170, &qword_1005CCEB0, &qword_1004E9140);
  v385 = v364 + v350;
  v172 = -v387;
  v390 = _swiftEmptyArrayStorage;
  v173 = v351;
  v174 = v396;
  v175 = v393;
  while (2)
  {
    --v173;
    v176 = v385 + v387 * v173;
    v177 = v374;
    while (1)
    {
      if (v173 >= v403)
      {
        __break(1u);
LABEL_60:
        v186 = *(v390 + 2);
        if (!v186)
        {
LABEL_82:
          v209 = v390 + 32;
          v210 = v186 + 1;
          v211 = v373;
          while (--v210)
          {
            v212 = v209 + 24;
            v213 = *v209;
            v209 += 24;
            if ((~v213 & 0xF000000000000007) == 0)
            {
              v385 = v213;
              v214 = *(v212 - 1);
              v382 = *(v212 - 2);
              *&v388 = v214;

              goto LABEL_87;
            }
          }

          v385 = 0;
          v382 = 0;
          *&v388 = 0;
LABEL_87:
          v375 = 0;
          v376 = 0;
          v381 = 0;
          goto LABEL_90;
        }

        goto LABEL_61;
      }

      sub_100229C14(v176, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_100229C14(&v122[*(v404 + 20)], v175, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v178 = v175;
      v179 = v392;
      (*v402)(v392, v178, v41);
      v180 = (*v401)(v179, v41);
      if (v180 != v400 || ((*v398)(v177, v179, v41), (*v397)(v177, v41), v181 = *v177 - 52, v181 > 0x2C) || ((1 << v181) & 0x100000000107) == 0)
      {
        (*v399)(v179, v41);
        v175 = v393;
        goto LABEL_50;
      }

      (*v399)(v179, v41);
      sub_100229288(v122, type metadata accessor for CommandConnection.RecentErrors.Error);
      v175 = v393;
LABEL_42:
      --v173;
      v176 += v172;
      if (v173 == -1)
      {
        goto LABEL_60;
      }
    }

    sub_100229288(v175, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_50:
    v182 = v395;
    sub_100229C7C(v122, v395, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1002292E8(v182, &v406);
    sub_100229288(v182, type metadata accessor for CommandConnection.RecentErrors.Error);
    v183 = v407;
    if (!v407)
    {
      v174 = v396;
      goto LABEL_42;
    }

    v388 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v390 = sub_10023786C(0, *(v390 + 2) + 1, 1, v390);
    }

    v185 = *(v390 + 2);
    v184 = *(v390 + 3);
    v186 = v185 + 1;
    if (v185 >= v184 >> 1)
    {
      v390 = sub_10023786C((v184 > 1), v185 + 1, 1, v390);
    }

    v187 = v390;
    *(v390 + 2) = v186;
    v188 = &v187[24 * v185];
    *(v188 + 2) = v388;
    *(v188 + 6) = v183;
    v174 = v396;
    if (v173)
    {
      continue;
    }

    break;
  }

LABEL_61:
  v192 = (v390 + 48);
  v193 = v186;
  while (2)
  {
    v196 = *(v192 - 2);
    if ((~v196 & 0xF000000000000007) == 0)
    {
      goto LABEL_69;
    }

    v197 = (v196 >> 59) & 0x1E | (v196 >> 2) & 1;
    if (v197 <= 16)
    {
      if (v197)
      {
        v194 = v197 == 9;
      }

      else
      {
        v194 = 1;
      }

      if (v194 || v197 == 13)
      {
        v202 = *(v192 - 1);
        v203 = *v192;
        goto LABEL_89;
      }

      goto LABEL_69;
    }

    v194 = v197 == 17;
    v198 = __ROR8__(v196 + 0x7FFFFFFFFFFFFFFCLL, 3);
    v199 = !v194 || v198 > 0x1E;
    v200 = (1 << v198) & 0x5FDFF9A7;
    if (v199 || v200 == 0)
    {
LABEL_69:
      v192 += 3;
      if (!--v193)
      {
        goto LABEL_82;
      }

      continue;
    }

    break;
  }

  v202 = *(v192 - 1);
  v203 = *v192;
  if (v196 == 0x80000000000000DCLL || v196 == 0x800000000000006CLL)
  {
    sub_1000110B0(v196);
    swift_bridgeObjectRetain_n();
    sub_1000110B0(v196);

    sub_1000110B0(v196);
    v204 = v380;
    sub_1002293EC(v196, v202, v203, v380);
    v205 = v344;
    sub_10000E268(v204, v344, &qword_1005D55B8, &unk_1004F2790);
    v206 = sub_1004A44E4();
    v207 = v379;
    (*(*(v206 - 8) + 56))(v379, 1, 1, v206);
    v208 = v353;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(2, v205, v207, v353);
    sub_10001114C(v196);

    sub_10001114C(v196);

    sub_100025F40(v204, &qword_1005D55B8, &unk_1004F2790);
    sub_100025F40(v349, &qword_1005CCEB0, &qword_1004E9140);
    return (v383)(v208, 0, 1, v354);
  }

LABEL_89:
  sub_1000110B0(v196);
  swift_bridgeObjectRetain_n();
  sub_1000110B0(v196);
  v385 = v196;
  v375 = v196;
  v382 = v202;
  v376 = v202;
  *&v388 = v203;
  v381 = v203;
  v211 = v373;
LABEL_90:

  v395 = (v211 + 48);
  v392 = (v364 + v350);
  v215 = -v387;
  v393 = _swiftEmptyArrayStorage;
  v216 = v351;
  v217 = v366;
  while (2)
  {
    while (1)
    {
      --v216;
      v218 = &v392[v387 * v216];
      while (1)
      {
        if (v216 >= v403)
        {
          __break(1u);
          goto LABEL_111;
        }

        v219 = v394;
        sub_100229C14(v218, v394, type metadata accessor for CommandConnection.RecentErrors.Error);
        v220 = v219 + *(v404 + 20);
        v221 = v389;
        sub_100229C14(v220, v389, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        (*v402)(v174, v221, v41);
        v222 = (*v401)(v174, v41);
        if (v222 != v400 || ((*v398)(v217, v174, v41), (*v397)(v217, v41), v223 = *v217 - 52, v223 > 0x2C) || ((1 << v223) & 0x100000000107) == 0)
        {
          (*v399)(v174, v41);
          goto LABEL_102;
        }

        (*v399)(v174, v41);
        sub_100229288(v394, type metadata accessor for CommandConnection.RecentErrors.Error);
        --v216;
        v218 += v215;
        if (v216 == -1)
        {
          goto LABEL_108;
        }
      }

      sub_100229288(v221, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_102:
      v224 = v370;
      sub_100229C7C(v394, v370, type metadata accessor for CommandConnection.RecentErrors.Error);
      v225 = v372;
      sub_1002296F0(v224, v372);
      sub_100229288(v224, type metadata accessor for CommandConnection.RecentErrors.Error);
      if ((*v395)(v225, 1, v41) == 1)
      {
        break;
      }

      v226 = v225;
      v227 = *v402;
      v228 = v365;
      (*v402)(v365, v226, v41);
      v227(v371, v228, v41);
      v229 = v393;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v229 = sub_100237844(0, v229[2] + 1, 1, v229);
      }

      v231 = v229[2];
      v230 = v229[3];
      v393 = v229;
      v217 = v366;
      if (v231 >= v230 >> 1)
      {
        v393 = sub_100237844(v230 > 1, v231 + 1, 1, v393);
      }

      v232 = v393;
      v393[2] = v231 + 1;
      v227(&v232[((*(v373 + 80) + 32) & ~*(v373 + 80)) + *(v373 + 72) * v231], v371, v41);
      v174 = v396;
      if (!v216)
      {
        goto LABEL_108;
      }
    }

    sub_100025F40(v225, &unk_1005D54F0, &unk_1004E8DA0);
    if (v216)
    {
      continue;
    }

    break;
  }

LABEL_108:
  if (v393[2])
  {
    v233 = v373;
    v234 = v345;
    (*(v373 + 16))(v345, v393 + ((*(v233 + 80) + 32) & ~*(v233 + 80)), v41);
    v235 = 0;
    goto LABEL_112;
  }

LABEL_111:
  v235 = 1;
  v234 = v345;
  v233 = v373;
LABEL_112:

  v392 = *(v233 + 56);
  v393 = (v233 + 56);
  (v392)(v234, v235, 1, v41);
  v394 = v364 + v350;
  v396 = _swiftEmptyArrayStorage;
  v236 = -v387;
  v237 = v360;
  v238 = v359;
  v239 = v351;
  while (2)
  {
    while (1)
    {
      v240 = v239 - 1;
      v241 = v394 + v387 * v240;
      while (1)
      {
        if (v240 >= v403)
        {
          __break(1u);
          goto LABEL_133;
        }

        v242 = v240;
        v243 = v391;
        sub_100229C14(v241, v391, type metadata accessor for CommandConnection.RecentErrors.Error);
        v244 = v243 + *(v404 + 20);
        v245 = v386;
        sub_100229C14(v244, v386, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        (*v402)(v238, v245, v41);
        v246 = (*v401)(v238, v41);
        if (v246 != v400 || ((*v398)(v237, v238, v41), (*v397)(v237, v41), v247 = *v237 - 52, v247 > 0x2C) || ((1 << v247) & 0x100000000107) == 0)
        {
          (*v399)(v238, v41);
          goto LABEL_124;
        }

        (*v399)(v238, v41);
        sub_100229288(v391, type metadata accessor for CommandConnection.RecentErrors.Error);
        v240 = v242 - 1;
        v241 += v236;
        if (!v242)
        {
          goto LABEL_130;
        }
      }

      sub_100229288(v245, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_124:
      v248 = v367;
      sub_100229C7C(v391, v367, type metadata accessor for CommandConnection.RecentErrors.Error);
      v249 = v368;
      sub_1002298A8(v248, v368);
      sub_100229288(v248, type metadata accessor for CommandConnection.RecentErrors.Error);
      if ((*v395)(v249, 1, v41) == 1)
      {
        break;
      }

      v250 = v249;
      v251 = *v402;
      v252 = v358;
      (*v402)(v358, v250, v41);
      v251(v369, v252, v41);
      v253 = v396;
      v239 = v242;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v253 = sub_100237844(0, *(v253 + 2) + 1, 1, v253);
      }

      v255 = *(v253 + 2);
      v254 = *(v253 + 3);
      v396 = v253;
      v238 = v359;
      if (v255 >= v254 >> 1)
      {
        v396 = sub_100237844(v254 > 1, v255 + 1, 1, v396);
      }

      v256 = v396;
      *(v396 + 2) = v255 + 1;
      v251(&v256[((*(v373 + 80) + 32) & ~*(v373 + 80)) + *(v373 + 72) * v255], v369, v41);
      v237 = v360;
      if (!v239)
      {
        goto LABEL_130;
      }
    }

    sub_100025F40(v249, &unk_1005D54F0, &unk_1004E8DA0);
    v239 = v242;
    if (v242)
    {
      continue;
    }

    break;
  }

LABEL_130:
  if (*(v396 + 2))
  {
    v257 = v342;
    (*(v373 + 16))(v342, &v396[(*(v373 + 80) + 32) & ~*(v373 + 80)], v41);
    v258 = 0;
    v259 = v345;
    goto LABEL_134;
  }

LABEL_133:
  v258 = 1;
  v259 = v345;
  v257 = v342;
LABEL_134:
  v260 = v378;
  v261 = v357;
  v262 = v388;
  v263 = v395;

  (v392)(v257, v258, 1, v41);
  if (v262)
  {
    v264 = v385;
    sub_1000110B0(v385);

    sub_1002293EC(v264, v382, v262, v343);
    goto LABEL_142;
  }

  v258 = v338;
  sub_10000E268(v259, v338, &unk_1005D54F0, &unk_1004E8DA0);
  v265 = *v263;
  if ((*v263)(v258, 1, v41) == 1)
  {
    sub_100025F40(v258, &unk_1005D54F0, &unk_1004E8DA0);
    v258 = v336;
    sub_10000E268(v257, v336, &unk_1005D54F0, &unk_1004E8DA0);
    if (v265(v258, 1, v41) == 1)
    {
      sub_100025F40(v258, &unk_1005D54F0, &unk_1004E8DA0);
      (*v377)(v343, 1, 1, v260);
      goto LABEL_142;
    }

    v266 = *v402;
    v267 = &v366;
  }

  else
  {
    v266 = *v402;
    v267 = &v367;
  }

  v268 = *(v267 - 32);
  v266(v268, v258, v41);
  v269 = v337;
  v266(v337, v268, v41);
  swift_storeEnumTagMultiPayload();
  v270 = v343;
  sub_100229C7C(v269, v343, type metadata accessor for ConnectionStatus.Error.Details);
  (*v377)(v270, 0, 1, v260);
LABEL_142:
  v271 = v330;
  v272 = v364 + v330;
  v273 = -v387;
  v274 = v355;
  while (2)
  {
    if (v274 < v403)
    {
      sub_100229C14(v272, v261, type metadata accessor for CommandConnection.RecentErrors.Error);
      v275 = v362;
      sub_100229C14(v261 + *(v404 + 20), v362, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v276 = v275;
        v277 = v363;
        (*v402)(v363, v276, v41);
        v278 = (*v401)(v277, v41);
        if (v278 == v400 && (v279 = v347, (*v398)(v347, v363, v41), (*v397)(v279, v41), v280 = *v279, v277 = v363, v281 = v280 - 52, v281 <= 0x2C) && ((1 << v281) & 0x100000000107) != 0)
        {
          (*v399)(v363, v41);
          sub_100229288(v261, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          (*v399)(v277, v41);
LABEL_152:
          v282 = v261;
          v283 = v356;
          sub_100229C7C(v282, v356, type metadata accessor for CommandConnection.RecentErrors.Error);
          v284 = sub_100229A60(v283);
          sub_100229288(v283, type metadata accessor for CommandConnection.RecentErrors.Error);
          v261 = v357;
          if (v284)
          {
            v285 = v343;
            v286 = v380;
            sub_10000E268(v343, v380, &qword_1005D55B8, &unk_1004F2790);
            v287 = v344;
            sub_10000E268(v286, v344, &qword_1005D55B8, &unk_1004F2790);
            v288 = sub_1004A44E4();
            v289 = v379;
            (*(*(v288 - 8) + 56))(v379, 1, 1, v288);
            v290 = v353;
            v291 = v353;
            v292 = 5;
LABEL_154:
            ConnectionStatus.Error.init(kind:details:backedOffUntil:)(v292, v287, v289, v291);
            sub_10010E7C0(v385, v382, v388);
            sub_10010E7C0(v375, v376, v381);
            sub_100025F40(v286, &qword_1005D55B8, &unk_1004F2790);
            sub_100025F40(v285, &qword_1005D55B8, &unk_1004F2790);
            v293 = v257;
            goto LABEL_155;
          }
        }

        --v274;
        v272 += v273;
        v258 = v361;
        v271 = v355;
        if (v274 == -1)
        {
          goto LABEL_157;
        }

        continue;
      }

      sub_100229288(v275, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      goto LABEL_152;
    }

    break;
  }

  __break(1u);
LABEL_157:
  v294 = v364 + v330;
  v295 = -v387;
  v296 = v333;
  v297 = v340;
  while (2)
  {
    if (v271 < v403)
    {
      v298 = v271;
      sub_100229C14(v294, v297, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_100229C14(v297 + *(v404 + 20), v258, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v300 = v258;
      v301 = v341;
      if (EnumCaseMultiPayload == 4)
      {
        (*v402)(v341, v300, v41);
        v302 = (*v401)(v301, v41);
        if (v302 == v400 && ((*v398)(v296, v301, v41), (*v397)(v296, v41), v303 = *v296 - 52, v303 <= 0x2C) && ((1 << v303) & 0x100000000107) != 0)
        {
          (*v399)(v301, v41);
          sub_100229288(v297, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          (*v399)(v301, v41);
LABEL_167:
          v304 = v297;
          v305 = v339;
          sub_100229C7C(v304, v339, type metadata accessor for CommandConnection.RecentErrors.Error);
          v306 = sub_100229B34(v305);
          sub_100229288(v305, type metadata accessor for CommandConnection.RecentErrors.Error);
          v297 = v340;
          if (v306)
          {
            v285 = v343;
            v286 = v380;
            sub_10000E268(v343, v380, &qword_1005D55B8, &unk_1004F2790);
            v287 = v344;
            sub_10000E268(v286, v344, &qword_1005D55B8, &unk_1004F2790);
            v307 = sub_1004A44E4();
            v289 = v379;
            (*(*(v307 - 8) + 56))(v379, 1, 1, v307);
            v290 = v353;
            v291 = v353;
            v292 = 3;
            goto LABEL_154;
          }
        }

        v271 = v298 - 1;
        v294 += v295;
        v258 = v361;
        if (!v298)
        {
          goto LABEL_170;
        }

        continue;
      }

      sub_100229288(v300, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      goto LABEL_167;
    }

    break;
  }

  __break(1u);
LABEL_170:
  if (v388)
  {
    v308 = v385;
    v309 = v382;
    v310 = v388;
    sub_10010E780(v385, v382, v388);
    sub_1000110B0(v308);

    v311 = v380;
    sub_1002293EC(v308, v309, v310, v380);
    v312 = v344;
    sub_10000E268(v311, v344, &qword_1005D55B8, &unk_1004F2790);
    v313 = sub_1004A44E4();
    v314 = v379;
    (*(*(v313 - 8) + 56))(v379, 1, 1, v313);
    v290 = v353;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(1, v312, v314, v353);
    sub_10001114C(v308);

    sub_10010E7C0(v308, v309, v310);
    sub_10010E7C0(v375, v376, v381);
    sub_100025F40(v311, &qword_1005D55B8, &unk_1004F2790);
    goto LABEL_172;
  }

  v316 = *v395;
  if ((*v395)(v345, 1, v41) == 1)
  {
    v317 = v332;
    sub_10000E268(v342, v332, &unk_1005D54F0, &unk_1004E8DA0);
    if (v316(v317, 1, v41) == 1)
    {
      sub_100025F40(v332, &unk_1005D54F0, &unk_1004E8DA0);
      goto LABEL_176;
    }

    v323 = v331;
    (*v402)(v331, v332, v41);
    v324 = v337;
    (*v398)(v337, v323, v41);
    v325 = v378;
    swift_storeEnumTagMultiPayload();
    v326 = v380;
    sub_100229C7C(v324, v380, type metadata accessor for ConnectionStatus.Error.Details);
    (*v377)(v326, 0, 1, v325);
    v327 = v344;
    sub_10000E268(v326, v344, &qword_1005D55B8, &unk_1004F2790);
    v328 = sub_1004A44E4();
    v329 = v379;
    (*(*(v328 - 8) + 56))(v379, 1, 1, v328);
    v290 = v353;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(0, v327, v329, v353);
    sub_10010E7C0(v375, v376, v381);
    sub_100025F40(v326, &qword_1005D55B8, &unk_1004F2790);
    (*v399)(v323, v41);
LABEL_172:
    v315 = v343;
  }

  else
  {
LABEL_176:
    v318 = v343;
    v319 = v380;
    sub_10000E268(v343, v380, &qword_1005D55B8, &unk_1004F2790);
    v320 = v344;
    sub_10000E268(v319, v344, &qword_1005D55B8, &unk_1004F2790);
    v321 = sub_1004A44E4();
    v322 = v379;
    (*(*(v321 - 8) + 56))(v379, 1, 1, v321);
    v290 = v353;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(4, v320, v322, v353);
    sub_10010E7C0(v375, v376, v381);
    sub_100025F40(v319, &qword_1005D55B8, &unk_1004F2790);
    v315 = v318;
  }

  sub_100025F40(v315, &qword_1005D55B8, &unk_1004F2790);
  v293 = v342;
LABEL_155:
  sub_100025F40(v293, &unk_1005D54F0, &unk_1004E8DA0);
  sub_100025F40(v349, &qword_1005CCEB0, &qword_1004E9140);
  v383(v290, 0, 1, v354);
  return sub_100025F40(v345, &unk_1005D54F0, &unk_1004E8DA0);
}

uint64_t sub_100229288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002292E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_100229C14(a1 + *(v8 + 20), v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v10 = *v7;
    v11 = *(v7 + 2);
  }

  else
  {
    result = sub_100229288(v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v11 = 0;
    v10 = 0uLL;
  }

  *a2 = v10;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1002293EC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = sub_1004A4064();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a2;
  v33 = a3;

  sub_1004A4044();
  sub_1001C2190();
  v17 = sub_1004A6444();
  v19 = v18;
  (*(v8 + 8))(v11, v7);

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    v17 = 0;
    v19 = 0;
  }

  if ((~a1 & 0xF000000000000007) != 0)
  {
    v23 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v23 > 12)
    {
      if (v23 != 13)
      {
        if (v23 != 17)
        {
          goto LABEL_22;
        }

        v24 = __ROR8__(a1 + 0x7FFFFFFFFFFFFFFCLL, 3);
        if (v24 > 0x1E || ((1 << v24) & 0x5FDFF9A7) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else if (v23 && v23 != 9)
    {
LABEL_22:
      sub_10001114C(a1);
      goto LABEL_6;
    }

    v32 = a1;
    v25 = sub_1004A5824();
    v22 = v26;

    *v16 = v25;
    if (v19)
    {
      v16[1] = v22;
      v21 = 3;
      v22 = v19;
      v16[2] = v17;
    }

    else
    {
      v21 = 1;
    }

    goto LABEL_20;
  }

LABEL_6:

  if (v19)
  {
    *v16 = v17;
    v21 = 1;
    v22 = v19;
LABEL_20:
    v28 = v31;
    v16[v21] = v22;
    swift_storeEnumTagMultiPayload();
    sub_100229C7C(v16, v28, type metadata accessor for ConnectionStatus.Error.Details);
    v27 = 0;
    return (*(v13 + 56))(v28, v27, 1, v12);
  }

  v27 = 1;
  v28 = v31;
  return (*(v13 + 56))(v28, v27, 1, v12);
}

uint64_t sub_1002296F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_100229C14(a1 + *(v8 + 20), v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v9 = sub_1004A5214();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {
    sub_100229288(v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v12 = sub_1004A5214();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_1002298A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_100229C14(a1 + *(v8 + 20), v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v9 = sub_1004A5214();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {
    sub_100229288(v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v12 = sub_1004A5214();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_100229A60(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a1) = static CommandConnection.RecentErrors.Error.Kind.__derived_enum_equals(_:_:)(a1 + v6, v5);
  sub_100229288(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  return a1 & 1;
}

BOOL sub_100229B34(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_100229C14(a1 + *(v6 + 20), v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  v7 = swift_getEnumCaseMultiPayload() == 0;
  sub_100229288(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  return v7;
}

uint64_t sub_100229C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100229C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for CredentialsState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CredentialsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100229DB4()
{
  v1 = 1685024615;
  v2 = 0x6E6920656279616DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x64696C61766E69;
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

uint64_t sub_100229E30()
{
  v1 = 0xE400000000000000;
  v2 = 1685024615;
  v3 = 0xED000064696C6176;
  v4 = 0x6E6920656279616DLL;
  if (*v0 != 2)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*v0)
  {
    v2 = 0x64696C61766E69;
    v1 = 0xE700000000000000;
  }

  if (*v0 <= 1u)
  {
    v5._countAndFlagsBits = v2;
  }

  else
  {
    v5._countAndFlagsBits = v4;
  }

  if (*v0 <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v3;
  }

  v5._object = v6;
  sub_1004A5994(v5);

  return 0;
}

unint64_t sub_100229F00()
{
  result = qword_1005D55C0;
  if (!qword_1005D55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D55C0);
  }

  return result;
}

uint64_t sub_100229F54()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100229FAC();
  }

  return result;
}

uint64_t sub_100229FAC()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = (v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state);
  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state + 16))
  {
    return result;
  }

  v11 = *v10;
  v12 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  *(v10 + 16) = 1;
  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v13 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer);

  RestartableTimer.stop()();

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v14 = sub_1004A4A54();
  v15 = sub_1004A6034();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 68158464;
    *(v16 + 4) = 2;
    *(v16 + 8) = 256;
    *(v16 + 10) = *(v1 + 24);

    *(v16 + 11) = 2048;
    *(v16 + 13) = v11;
    *(v16 + 21) = 2048;
    *(v16 + 23) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%.*hhx] Account data transfer report: received %{iec-bytes}ld, sent %{iec-bytes}ld.", v16, 0x1Fu);
  }

  else
  {
  }

  v17 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler + 8);
  return (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler))(v11, v12);
}

uint64_t sub_10022A1FC()
{
  v1 = v0;
  v2 = sub_1004A5244();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004A5274();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v20);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v22 = OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer;
  v11 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  aBlock[4] = sub_10022AA88;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A97B0;
  v13 = _Block_copy(aBlock);
  swift_retain_n();
  v14 = v10;
  sub_1004A5254();
  v23 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10022AB20();
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v13);

  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v9, v20);

  v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_logger;
  v16 = sub_1004A4A74();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler + 8);

  v18 = *(v1 + v22);

  return v1;
}

uint64_t sub_10022A504()
{
  sub_10022A1FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataTransferReportAccumulator()
{
  result = qword_1005D5608;
  if (!qword_1005D5608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022A5B0()
{
  result = sub_1004A4A74();
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

uint64_t sub_10022A67C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022A698(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void sub_10022A6C8(double *a1)
{
  v2 = v1;
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1004A5404();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v12 = sub_1004A4A54();
  v13 = sub_1004A6004();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 68159746;
    *(v14 + 4) = 2;
    *(v14 + 8) = 256;
    *(v14 + 10) = *(v2 + 24);

    *(v14 + 11) = 2082;
    v16 = ConnectionID.debugDescription.getter(*a1);
    v18 = sub_10015BA6C(v16, v17, &v31);

    *(v14 + 13) = v18;
    *(v14 + 21) = 1040;
    *(v14 + 23) = 3;
    *(v14 + 27) = 2048;
    v19 = a1[2];
    *(v14 + 29) = v19;
    *(v14 + 37) = 2048;
    v21 = *(a1 + 3);
    v20 = *(a1 + 4);
    *(v14 + 39) = v21;
    *(v14 + 47) = 2048;
    *(v14 + 49) = v20;
    *(v14 + 57) = 2048;
    if (v19 <= 0.0)
    {
      v25 = 0;
    }

    else
    {
      if ((v21 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v22 = (8 * v21) / v19;
      v23 = round(v22);
      v24 = v23 >= 9.22337204e18 || v23 <= -9.22337204e18;
      v25 = llround(v22);
      if (v24)
      {
        v25 = 0;
      }
    }

    *(v14 + 59) = v25;
    *(v14 + 67) = 2048;
    *(v14 + 69) = v25;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%.*hhx] Connection %{public}s sent data transfer report for the past %.*g seconds: received %{iec-bytes}ld, sent %{iec-bytes}ld, received throughput %{iec-bitrate}ld, sent throughput %{iec-bitrate}ld.", v14, 0x4Du);
    sub_1000197E0(v15);
  }

  else
  {

    v21 = *(a1 + 3);
    v20 = *(a1 + 4);
  }

  v26 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state + 16))
  {
    goto LABEL_17;
  }

  v27 = __OFADD__(*v26, v21);
  v21 += *v26;
  if (v27)
  {
    goto LABEL_20;
  }

  v28 = *(v26 + 8);
  v27 = __OFADD__(v28, v20);
  v20 += v28;
  if (v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  *v26 = v21;
  *(v26 + 8) = v20;
  *(v26 + 16) = 0;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer))
  {
    v29 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer);

    RestartableTimer.start()();

    return;
  }

LABEL_23:
  __break(1u);
}

BOOL sub_10022AA10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    return (*(a2 + 16) & 1) != 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
}

uint64_t sub_10022AA50()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10022AA88()
{
  if (*(v0 + 16))
  {
    RestartableTimer.stop()();
  }
}

uint64_t sub_10022AAB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10022AAC8()
{
  result = qword_1005D4F50;
  if (!qword_1005D4F50)
  {
    sub_1004A5244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4F50);
  }

  return result;
}

unint64_t sub_10022AB20()
{
  result = qword_1005D4F60;
  if (!qword_1005D4F60)
  {
    sub_10000DEFC(&unk_1005D91A0, &unk_1004DDA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4F60);
  }

  return result;
}

void *sub_10022AB84(uint64_t a1, char a2)
{
  v77 = *(a1 + 16);
  if (!v77)
  {
LABEL_98:
    if (a2)
    {
      v66 = _swiftEmptySetSingleton[5];
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v67 = sub_1004A6F14();
      v68 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
      v69 = v67 & ~v68;
      if ((*(&_swiftEmptySetSingleton[7] + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
      {
        v70 = ~v68;
        while (1)
        {
          v71 = *(_swiftEmptySetSingleton[6] + v69);
          if (v71 <= 2 && v71 != 1 && v71 != 2)
          {
            break;
          }

          v72 = sub_1004A6D34();

          if (v72)
          {
            return _swiftEmptySetSingleton;
          }

          v69 = (v69 + 1) & v70;
          if (((*(&_swiftEmptySetSingleton[7] + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
          {
            goto LABEL_106;
          }
        }
      }

      else
      {
LABEL_106:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1002380E0(0, v69, isUniquelyReferenced_nonNull_native);
      }
    }

    return _swiftEmptySetSingleton;
  }

  v2 = 0;
  v76 = a1 + 32;
  while (1)
  {
    v6 = *(v76 + v2);
    if (v6 == 2)
    {
      break;
    }

    if (v6 == 3)
    {
      v14 = _swiftEmptySetSingleton[5];
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v15 = sub_1004A6F14();
      v16 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
      v17 = v15 & ~v16;
      if (((*(&_swiftEmptySetSingleton[7] + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
LABEL_24:
        v21 = swift_isUniquelyReferenced_nonNull_native();
        v22 = _swiftEmptySetSingleton[2];
        if (_swiftEmptySetSingleton[3] > v22)
        {
          if ((v21 & 1) == 0)
          {
            sub_10023842C();
          }
        }

        else
        {
          if (v21)
          {
            sub_100237DFC(v22 + 1);
          }

          else
          {
            sub_10023856C(v22 + 1);
          }

          v40 = _swiftEmptySetSingleton[5];
          sub_1004A6E94();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v41 = sub_1004A6F14();
          v42 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
          v17 = v41 & ~v42;
          if ((*(&_swiftEmptySetSingleton[7] + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v43 = ~v42;
            do
            {
              v44 = *(_swiftEmptySetSingleton[6] + v17);
              if (v44 >= 4)
              {
                goto LABEL_112;
              }

              v45 = sub_1004A6D34();

              if (v45)
              {
                goto LABEL_113;
              }

              v17 = (v17 + 1) & v43;
            }

            while (((*(&_swiftEmptySetSingleton[7] + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
          }
        }

        *(&_swiftEmptySetSingleton[7] + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) |= 1 << v17;
        *(_swiftEmptySetSingleton[6] + v17) = 4;
        v3 = _swiftEmptySetSingleton[2];
        v4 = __OFADD__(v3, 1);
        v5 = v3 + 1;
        if (v4)
        {
          goto LABEL_109;
        }

        goto LABEL_6;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = *(_swiftEmptySetSingleton[6] + v17);
        if (v19 >= 4)
        {
          break;
        }

        v20 = sub_1004A6D34();

        if (v20)
        {
          goto LABEL_7;
        }

        v17 = (v17 + 1) & v18;
        if (((*(&_swiftEmptySetSingleton[7] + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_97:

      goto LABEL_7;
    }

    if (v6 == 4)
    {
      goto LABEL_7;
    }

    v7 = _swiftEmptySetSingleton[5];
    v8 = &_swiftEmptySetSingleton[7];
    if (v6)
    {
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v9 = sub_1004A6F14();
      v10 = ~(-1 << LOBYTE(_swiftEmptySetSingleton[4]));
      for (i = v9 & v10; ((*(v8 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v10)
      {
        v12 = *(_swiftEmptySetSingleton[6] + i);
        if (v12 > 1 && v12 != 3 && v12 != 4)
        {
          goto LABEL_97;
        }

        v13 = sub_1004A6D34();

        if (v13)
        {
          goto LABEL_7;
        }
      }

      v36 = swift_isUniquelyReferenced_nonNull_native();
      v37 = _swiftEmptySetSingleton[2];
      if (_swiftEmptySetSingleton[3] <= v37)
      {
        if (v36)
        {
          sub_100237DFC(v37 + 1);
        }

        else
        {
          sub_10023856C(v37 + 1);
        }

        v53 = _swiftEmptySetSingleton[5];
        sub_1004A6E94();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v54 = sub_1004A6F14();
        v55 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
        i = v54 & ~v55;
        if ((*(&_swiftEmptySetSingleton[7] + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i))
        {
          v56 = ~v55;
          do
          {
            v57 = *(_swiftEmptySetSingleton[6] + i);
            if (v57 > 1 && v57 != 3 && v57 != 4)
            {
              goto LABEL_112;
            }

            v58 = sub_1004A6D34();

            if (v58)
            {
              goto LABEL_113;
            }

            i = (i + 1) & v56;
          }

          while (((*(&_swiftEmptySetSingleton[7] + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0);
        }
      }

      else if ((v36 & 1) == 0)
      {
        sub_10023842C();
      }

      *(&_swiftEmptySetSingleton[7] + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) |= 1 << i;
      *(_swiftEmptySetSingleton[6] + i) = 2;
      v59 = _swiftEmptySetSingleton[2];
      v4 = __OFADD__(v59, 1);
      v5 = v59 + 1;
      if (v4)
      {
        goto LABEL_111;
      }
    }

    else
    {
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v32 = sub_1004A6F14();
      v33 = ~(-1 << LOBYTE(_swiftEmptySetSingleton[4]));
      for (j = v32 & v33; ((*(v8 + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j) & 1) != 0; j = (j + 1) & v33)
      {
        if (*(_swiftEmptySetSingleton[6] + j) <= 2u && *(_swiftEmptySetSingleton[6] + j) && *(_swiftEmptySetSingleton[6] + j) != 2)
        {
          goto LABEL_97;
        }

        v35 = sub_1004A6D34();

        if (v35)
        {
          goto LABEL_7;
        }
      }

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = _swiftEmptySetSingleton[2];
      if (_swiftEmptySetSingleton[3] <= v39)
      {
        if (v38)
        {
          sub_100237DFC(v39 + 1);
        }

        else
        {
          sub_10023856C(v39 + 1);
        }

        v60 = _swiftEmptySetSingleton[5];
        sub_1004A6E94();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v61 = sub_1004A6F14();
        v62 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
        j = v61 & ~v62;
        if ((*(&_swiftEmptySetSingleton[7] + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j))
        {
          v63 = ~v62;
          while (*(_swiftEmptySetSingleton[6] + j) > 2u || !*(_swiftEmptySetSingleton[6] + j) || *(_swiftEmptySetSingleton[6] + j) == 2)
          {
            v64 = sub_1004A6D34();

            if (v64)
            {
              goto LABEL_113;
            }

            j = (j + 1) & v63;
            if (((*(&_swiftEmptySetSingleton[7] + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j) & 1) == 0)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_112;
        }
      }

      else if ((v38 & 1) == 0)
      {
        sub_10023842C();
      }

LABEL_94:
      *(&_swiftEmptySetSingleton[7] + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) |= 1 << j;
      *(_swiftEmptySetSingleton[6] + j) = 1;
      v65 = _swiftEmptySetSingleton[2];
      v4 = __OFADD__(v65, 1);
      v5 = v65 + 1;
      if (v4)
      {
        goto LABEL_110;
      }
    }

LABEL_6:
    _swiftEmptySetSingleton[2] = v5;
LABEL_7:
    if (++v2 == v77)
    {
      goto LABEL_98;
    }
  }

  v23 = _swiftEmptySetSingleton[5];
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v24 = sub_1004A6F14();
  v25 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
  v26 = v24 & ~v25;
  if ((*(&_swiftEmptySetSingleton[7] + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v27 = ~v25;
    do
    {
      v28 = *(_swiftEmptySetSingleton[6] + v26);
      if (v28 > 2 && v28 != 4)
      {
        goto LABEL_97;
      }

      v29 = sub_1004A6D34();

      if (v29)
      {
        goto LABEL_7;
      }

      v26 = (v26 + 1) & v27;
    }

    while (((*(&_swiftEmptySetSingleton[7] + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
  }

  v30 = swift_isUniquelyReferenced_nonNull_native();
  v31 = _swiftEmptySetSingleton[2];
  if (_swiftEmptySetSingleton[3] > v31)
  {
    if ((v30 & 1) == 0)
    {
      sub_10023842C();
    }

LABEL_65:
    *(&_swiftEmptySetSingleton[7] + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) |= 1 << v26;
    *(_swiftEmptySetSingleton[6] + v26) = 3;
    v52 = _swiftEmptySetSingleton[2];
    v4 = __OFADD__(v52, 1);
    v5 = v52 + 1;
    if (v4)
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    goto LABEL_6;
  }

  if (v30)
  {
    sub_100237DFC(v31 + 1);
  }

  else
  {
    sub_10023856C(v31 + 1);
  }

  v46 = _swiftEmptySetSingleton[5];
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v47 = sub_1004A6F14();
  v48 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
  v26 = v47 & ~v48;
  if (((*(&_swiftEmptySetSingleton[7] + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    goto LABEL_65;
  }

  v49 = ~v48;
  while (1)
  {
    v50 = *(_swiftEmptySetSingleton[6] + v26);
    if (v50 > 2 && v50 != 4)
    {
      break;
    }

    v51 = sub_1004A6D34();

    if (v51)
    {
      goto LABEL_113;
    }

    v26 = (v26 + 1) & v49;
    if (((*(&_swiftEmptySetSingleton[7] + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

LABEL_112:

LABEL_113:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

uint64_t Engine.__allocating_init(configuration:windowOfInterestSizes:environment:workloop:sendAction:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, const char *a6, int a7, uint64_t (*a8)(uint64_t a1), __int128 a9, uint64_t a10)
{
  v11 = v10;
  v29 = a7;
  v28 = a6;
  v27 = a9;
  v18 = type metadata accessor for Configuration();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for EngineTracingIDOwner();
  swift_allocObject();
  v22 = EngineTracingIDOwner.init()();
  sub_10016AF30(a1, v21, type metadata accessor for Configuration);
  v23 = *(v11 + 48);
  v24 = *(v11 + 52);
  v25 = swift_allocObject();
  sub_10022B944(v22, v21, a2, a3, a4 & 1, a5 & 0x101FF, v28, v29, a8, v27, *(&v27 + 1), a10);
  sub_1002344E0(a1, type metadata accessor for Configuration);
  return v25;
}

uint64_t (**sub_10022B944(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, const char *a7, int a8, uint64_t (*a9)(uint64_t a1), uint64_t (*a10)(uint64_t a1), uint64_t a11, uint64_t a12))(uint64_t a1)
{
  v13 = v12;
  LODWORD(v191) = a8;
  v190 = a7;
  LODWORD(v188) = a6;
  v170 = a5;
  v172 = a4;
  v171 = a3;
  v173 = a11;
  v180 = a10;
  v187 = a9;
  v183 = sub_1004A5234();
  v182 = *(v183 - 8);
  v16 = v182[8];
  v17 = __chkstk_darwin(v183);
  v185 = (&v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v184 = (&v165 - v19);
  v186 = type metadata accessor for ConnectionConfiguration();
  v20 = *(*(v186 - 1) + 64);
  __chkstk_darwin(v186);
  v181 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_1004A6074();
  v178 = *(v179 - 8);
  v22 = *(v178 + 64);
  __chkstk_darwin(v179);
  v177 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1004A6234();
  v24 = *(*(v175 - 8) + 64);
  __chkstk_darwin(v175);
  v176 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1004A5274();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v174 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for StateWithTasks();
  v192 = *(v29 - 8);
  v193 = v29;
  v30 = *(v192 + 64);
  __chkstk_darwin(v29);
  v194 = &v165 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Engine.Logger(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32);
  v166 = &v165 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v165 - v37;
  __chkstk_darwin(v36);
  v40 = &v165 - v39;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator) = 0;
  v41 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didStart;
  type metadata accessor for AtomicFlag.Storage();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v12 + v41) = v42;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingUpdates) = _swiftEmptyArrayStorage;
  v43 = v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState;
  v44 = type metadata accessor for Activity(0);
  (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
  *&v43[*(type metadata accessor for ExternalState() + 20)] = _swiftEmptySetSingleton;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer) = 0;
  v45 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v12 + v45) = v46;
  v47 = v40;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture) = _swiftEmptyArrayStorage;
  v48 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt;
  *(v13 + v48) = static MonotonicTime.now()();
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection) = 0;
  v49 = (v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry);
  *v49 = 0u;
  v49[1] = 0u;
  v50 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  *(v13 + v50) = sub_100223158(_swiftEmptyArrayStorage);
  v51 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  *(v13 + v51) = sub_100223284(_swiftEmptyArrayStorage);
  v195 = a1;
  LOBYTE(v51) = *(a1 + 16);
  sub_1004A4A64();
  v40[*(v32 + 20)] = v51;
  sub_10016AF30(v40, v38, type metadata accessor for Engine.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v52 = sub_1004A4A54();
  v53 = sub_1004A6034();
  v54 = os_log_type_enabled(v52, v53);
  v189 = v47;
  v165 = v32;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = v32;
    v58 = v56;
    v202 = v56;
    *v55 = 68158210;
    *(v55 + 4) = 2;
    *(v55 + 8) = 256;
    v59 = v38[*(v57 + 20)];
    sub_1002344E0(v38, type metadata accessor for Engine.Logger);
    *(v55 + 10) = v59;
    *(v55 + 11) = 2082;
    LOWORD(aBlock) = v188 & 0x1FF;
    BYTE2(aBlock) = BYTE2(v188) & 1;
    *(&aBlock + 1) = v190;
    LOBYTE(v197) = v191;
    v198 = v187;
    v60 = sub_1004A5824();
    v62 = sub_10015BA6C(v60, v61, &v202);
    v47 = v189;

    *(v55 + 13) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "[%.*hhx] Created with environment %{public}s", v55, 0x15u);
    sub_1000197E0(v58);
  }

  else
  {
    sub_1002344E0(v38, type metadata accessor for Engine.Logger);
  }

  sub_10016AF30(v47, v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, type metadata accessor for Engine.Logger);
  v63 = *a2;
  v64 = a2[1];
  v65 = (v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName);
  *v65 = *a2;
  v65[1] = v64;
  v66 = v63;
  v168 = v63;
  v169 = v64;
  v67 = v195;
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner) = v195;
  v68 = type metadata accessor for Configuration();
  v167 = a2 + v68[5];
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind) = *(v167 + *(v186 + 9));
  v69 = v68[7];
  v70 = *(a2 + v68[6]);
  v186 = a2;
  v71 = *(a2 + v69);
  v72 = *(v67 + 16);
  swift_bridgeObjectRetain_n();

  v164 = v66;
  v73 = v194;
  StateWithTasks.init(windowOfInterestSizes:environment:mailboxFilter:fetchedMessageMetadata:tracingID:logName:)(v171, v172, v170 & 1, v188 & 0x101FF, v190, v191, v187, v70, v194, v71, v72, v164, v64);
  (*(v192 + 16))(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state, v73, v193);
  v13[4] = v173;
  v13[5] = a12;
  v74 = sub_10023678C();
  v190 = "";
  v191 = v74;
  v188 = a12;

  sub_1004A5264();
  *&aBlock = _swiftEmptyArrayStorage;
  v172 = sub_1002367D8(&qword_1005D5910, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  v171 = sub_10000C9C0(&qword_1005D5918, &unk_1004E9128);
  v173 = sub_10000DF44(&qword_1005D5920, &qword_1005D5918, &unk_1004E9128);
  sub_1004A6544();
  v170 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v178 = *(v178 + 104);
  v75 = v177;
  v76 = v179;
  (v178)(v177);
  v187 = v180;
  v13[2] = sub_1004A6244();
  v190 = "com.apple.email.imap.engine";
  sub_1004A5264();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1004A6544();
  v77 = v195;
  (v178)(v75, v170, v76);
  v78 = v13;
  v13[3] = sub_1004A6244();
  v79 = StateWithTasks.runningSyncRequests.getter();
  RunningSyncRequests.kinds.getter(v79, &aBlock);

  v80 = sub_10022AB84(aBlock, *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind));

  v81 = v181;
  sub_10016AF30(v167, v181, type metadata accessor for ConnectionConfiguration);
  v82 = v78[2];
  v83 = type metadata accessor for ConnectionPool();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  v86 = swift_allocObject();
  v87 = v82;

  v88 = sub_1002355A0(v168, v169, v80, v81, v87, v78, v86);
  v89 = *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);
  *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections) = v88;

  v90 = v77;
  LOBYTE(v80) = *(v77 + 16);
  v91 = v78[2];
  type metadata accessor for BetterPathEvaluator();
  v92 = swift_allocObject();
  *(v92 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v92 + 48) = xmmword_1004DB2C0;
  *(v92 + 64) = 0;
  *(v92 + 80) = 0;
  *(v92 + 88) = 0;
  *(v92 + 72) = 0;
  *(v92 + 40) = &off_1005A98A0;
  swift_unknownObjectWeakAssign();
  *(v92 + 16) = v91;
  *(v92 + 24) = v80;
  *(v92 + 104) = v88;
  *(v92 + 112) = 0x4000000000000000;
  *(v92 + 96) = sub_100236820;
  v93 = *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator);
  *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator) = v92;
  v181 = v88;

  v94 = v91;

  v96 = *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName);
  v95 = *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName + 8);

  v97 = sub_1004A5734();
  v98 = sub_1004A5734();
  v99 = PPSCreateTelemetryIdentifier();

  if (v99)
  {
    sub_100236568(8);

    v100 = sub_1004A5864();
    v102 = v101;
  }

  else
  {

    v103 = v166;
    sub_10016AF30(v189, v166, type metadata accessor for Engine.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v104 = sub_1004A4A54();
    v105 = sub_1004A6014();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 68157952;
      *(v106 + 4) = 2;
      *(v106 + 8) = 256;
      v107 = *(v103 + *(v165 + 20));
      sub_1002344E0(v103, type metadata accessor for Engine.Logger);
      *(v106 + 10) = v107;
      _os_log_impl(&_mh_execute_header, v104, v105, "[%.*hhx] Unable to create power telemetry id.", v106, 0xBu);
    }

    else
    {
      sub_1002344E0(v103, type metadata accessor for Engine.Logger);
    }

    v99 = 0;
    v100 = 0;
    v102 = 0;
  }

  v108 = (v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry);
  swift_beginAccess();
  v109 = *v108;
  v110 = v108[1];
  v111 = v108[2];
  v112 = v108[3];
  *v108 = v99;
  v108[1] = v100;
  v108[2] = v102;
  v108[3] = 0;
  sub_100234540(v109, v110, v111);
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1004E9040;
  *&aBlock = 0x2D6574617453;
  *(&aBlock + 1) = 0xE600000000000000;
  v201 = *(v90 + 16);
  sub_10014F900();
  v114 = sub_1004A5A84();
  v116 = v115;
  if (sub_1004A5924() <= 1)
  {
    v203._countAndFlagsBits = 48;
    v203._object = 0xE100000000000000;
    sub_1004A5994(v203);
  }

  type metadata accessor for StateCapture();
  v204._countAndFlagsBits = v114;
  v204._object = v116;
  sub_1004A5994(v204);

  v117 = aBlock;
  v118 = v78[2];
  v119 = swift_allocObject();
  swift_weakInit();

  *(v113 + 32) = StateCapture.__allocating_init(title:queue:capture:)(v117, *(&v117 + 1), v118, sub_1002368A8, v119);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1004A6724(16);

  strcpy(&aBlock, "LocalSelected-");
  HIBYTE(aBlock) = -18;
  v201 = *(v90 + 16);
  v120 = sub_1004A5A84();
  v122 = v121;
  if (sub_1004A5924() <= 1)
  {
    v205._countAndFlagsBits = 48;
    v205._object = 0xE100000000000000;
    sub_1004A5994(v205);
  }

  v206._countAndFlagsBits = v120;
  v206._object = v122;
  sub_1004A5994(v206);

  v123 = aBlock;
  v124 = v78[2];
  v125 = swift_allocObject();
  swift_weakInit();
  *(v113 + 40) = StateCapture.__allocating_init(title:queue:capture:)(v123, *(&v123 + 1), v124, sub_1002368B0, v125);
  *&aBlock = 0x2D6C61636F4CLL;
  *(&aBlock + 1) = 0xE600000000000000;
  v201 = *(v90 + 16);
  v126 = sub_1004A5A84();
  v128 = v127;
  if (sub_1004A5924() <= 1)
  {
    v207._countAndFlagsBits = 48;
    v207._object = 0xE100000000000000;
    sub_1004A5994(v207);
  }

  v208._countAndFlagsBits = v126;
  v208._object = v128;
  sub_1004A5994(v208);

  v129 = aBlock;
  v130 = v78[2];
  v131 = swift_allocObject();
  swift_weakInit();
  *(v113 + 48) = StateCapture.__allocating_init(title:queue:capture:)(v129, *(&v129 + 1), v130, sub_1002368B8, v131);
  *&aBlock = 0x2D65746F6D6552;
  *(&aBlock + 1) = 0xE700000000000000;
  v201 = *(v90 + 16);
  v132 = sub_1004A5A84();
  v134 = v133;
  if (sub_1004A5924() <= 1)
  {
    v209._countAndFlagsBits = 48;
    v209._object = 0xE100000000000000;
    sub_1004A5994(v209);
  }

  v210._countAndFlagsBits = v132;
  v210._object = v134;
  sub_1004A5994(v210);

  v135 = aBlock;
  v136 = v78[2];
  v137 = swift_allocObject();
  swift_weakInit();
  *(v113 + 56) = StateCapture.__allocating_init(title:queue:capture:)(v135, *(&v135 + 1), v136, sub_1002368C0, v137);
  v138 = *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture);
  *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture) = v113;

  v139 = v78[2];
  v140 = v184;
  *v184 = 500;
  v141 = enum case for DispatchTimeInterval.milliseconds(_:);
  v142 = v182[13];
  v143 = v183;
  (v142)(v140, enum case for DispatchTimeInterval.milliseconds(_:), v183);
  v144 = v185;
  *v185 = 250;
  (v142)(v144, v141, v143);
  v145 = swift_allocObject();
  swift_weakInit();
  v199 = sub_1002368C8;
  v200 = v145;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v191 = &v197;
  v197 = sub_10019C778;
  v198 = &unk_1005A9A08;
  v146 = _Block_copy(&aBlock);
  v190 = type metadata accessor for RestartableTimer();
  swift_allocObject();
  v147 = v139;

  v148 = RestartableTimer.init(queue:repeating:leeway:closure:)(v147, v140, v144, v146);

  v149 = *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer);
  *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer) = v148;

  v180 = v78[2];
  *v140 = 53;
  v150 = enum case for DispatchTimeInterval.seconds(_:);
  v182 = v142;
  (v142)(v140, enum case for DispatchTimeInterval.seconds(_:), v143);
  *v144 = 2;
  (v142)(v144, v150, v143);
  v151 = swift_allocObject();
  swift_weakInit();
  v199 = sub_1002368F8;
  v200 = v151;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v197 = sub_10019C778;
  v198 = &unk_1005A9A30;
  v152 = _Block_copy(&aBlock);
  swift_allocObject();
  v153 = v180;

  v154 = RestartableTimer.init(queue:repeating:leeway:closure:)(v153, v140, v144, v152);

  v155 = *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer);
  *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer) = v154;

  v156 = v78[2];
  *v140 = 300;
  v157 = v182;
  (v182)(v140, v150, v143);
  *v144 = 10;
  v157(v144, v150, v143);
  v158 = swift_allocObject();
  swift_weakInit();
  v159 = v156;

  v199 = sub_100236928;
  v200 = v158;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v197 = sub_10019C778;
  v198 = &unk_1005A9A58;
  v160 = _Block_copy(&aBlock);
  swift_allocObject();

  v161 = RestartableTimer.init(queue:repeating:leeway:closure:)(v159, v140, v144, v160);

  sub_1002344E0(v186, type metadata accessor for Configuration);
  (*(v192 + 8))(v194, v193);
  sub_1002344E0(v189, type metadata accessor for Engine.Logger);

  v162 = *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer);
  *(v78 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer) = v161;

  return v78;
}

uint64_t Engine.Logger.init(engineID:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1004A4A64();
  result = type metadata accessor for Engine.Logger(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_10022D090@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateWithTasks();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    *(a1 + 24) = sub_10000C9C0(&qword_1005D5960, &qword_1004E9178);
    *(a1 + 32) = swift_getOpaqueTypeConformance2();
    v14 = sub_1000B3774(a1);
    v15 = *(v13 + 16);
    *v11 = v15;
    (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
    v16 = v15;
    LOBYTE(v15) = sub_1004A5404();
    result = (*(v8 + 8))(v11, v7);
    if (v15)
    {
      v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v3 + 16))(v6, v13 + v17, v2);
      v18 = StateWithTasks.stateCaptureValue(logName:)(*(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName), *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName + 8), v14);
      (*(v3 + 8))(v6, v2, v18);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10022D318@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateWithTasks();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10000C9C0(&qword_1005D5950, &qword_1004E9168);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = (&v29 - v17);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v30 = a1;
    v21 = *(Strong + 16);
    *v11 = v21;
    (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
    v22 = v21;
    LOBYTE(v21) = sub_1004A5404();
    result = (*(v8 + 8))(v11, v7);
    if ((v21 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v24 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v3 + 16))(v6, v20 + v24, v2);
    StateWithTasks.localSelectedMailboxesCaptureValue()(v18);

    (*(v3 + 8))(v6, v2);
    a1 = v30;
  }

  else
  {
    v25 = sub_10000C9C0(&qword_1005D5958, &qword_1004E9170);
    (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
  }

  sub_1002369D4(v18, v16);
  v26 = sub_10000C9C0(&qword_1005D5958, &qword_1004E9170);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v16, 1, v26) == 1)
  {
    sub_100236A44(v18);
    result = sub_100236A44(v16);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v26;
    *(a1 + 32) = swift_getOpaqueTypeConformance2();
    v28 = sub_1000B3774(a1);
    (*(v27 + 32))(v28, v16, v26);
    return sub_100236A44(v18);
  }

  return result;
}

uint64_t sub_10022D6E4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateWithTasks();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = *(result + 16);
    *v11 = v14;
    (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
    v15 = v14;
    LOBYTE(v14) = sub_1004A5404();
    result = (*(v8 + 8))(v11, v7);
    if (v14)
    {
      v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v3 + 16))(v6, v13 + v16, v2);
      StateWithTasks.localDeselectedMailboxesCaptureValue()(a1);

      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10022D91C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateWithTasks();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    *(a1 + 24) = sub_10000C9C0(&qword_1005D5948, &qword_1004E9160);
    *(a1 + 32) = swift_getOpaqueTypeConformance2();
    v14 = sub_1000B3774(a1);
    v15 = *(v13 + 16);
    *v11 = v15;
    (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
    v16 = v15;
    LOBYTE(v15) = sub_1004A5404();
    result = (*(v8 + 8))(v11, v7);
    if (v15)
    {
      v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v3 + 16))(v6, v13 + v17, v2);
      StateWithTasks.remoteMailboxesCaptureValue()(v14);

      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10022DB94()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for StateWithTasks();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Activity(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1004A53F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + 2);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = sub_1004A5404();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v23 = *&v1[OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections];
    if (v23)
    {
      v24 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v7 + 16))(v10, &v1[v24], v6);
      swift_retain_n();
      sub_10023C400(v5);
      StateWithTasks.makeActivity(makeStatus:accountError:)(sub_100236968, v23, v5, v14);

      sub_100025F40(v5, &qword_1005CCEB0, &qword_1004E9140);
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v25 = type metadata accessor for ConnectionStatus.Error(0);
      (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
      Activity.init(mailboxesWithPendingWork:accountError:)(_swiftEmptySetSingleton, v5, v14);
    }

    v26 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v7 + 16))(v10, &v1[v26], v6);
    v27 = StateWithTasks.selectedMailboxes.getter();
    (*(v7 + 8))(v10, v6);
    swift_beginAccess();
    v28 = sub_100236F1C(v14, v27);
    swift_endAccess();

    result = sub_1002344E0(v14, type metadata accessor for Activity);
    v29 = *(v28 + 2);
    if (v29)
    {
      v31 = *(v1 + 4);
      v30 = *(v1 + 5);
      v32 = (v28 + 32);
      do
      {
        v33 = *v32++;
        sub_10011D8FC(v33);
        v31(v33);
        result = sub_100020EDC(v33);
        --v29;
      }

      while (v29);
    }

    if (*&v1[OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer])
    {
      v34 = *&v1[OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer];

      RestartableTimer.stop()();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10022E004(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_10022E064()
{
  v1 = v0;
  v2 = type metadata accessor for StateWithTasks();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  StateWithTasks.inSyncMailboxes.getter(v14);
  (*(v3 + 8))(v6, v2);
  sub_10002587C(v14, v14[3]);
  v13[2] = sub_100163378(_swiftEmptyArrayStorage);
  sub_10000C9C0(&qword_1005D5928, &qword_1004E9138);
  sub_1004A5B74();
  v8 = v13[3];
  sub_1000197E0(v14);
  if (!*(v8 + 16))
  {
  }

  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v10(v11 | 0x9000000000000004);
}

uint64_t sub_10022E23C()
{
  v0 = type metadata accessor for StateWithTasks();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + 16);
    *v9 = v12;
    (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
    v13 = v12;
    LOBYTE(v12) = sub_1004A5404();
    result = (*(v6 + 8))(v9, v5);
    if (v12)
    {
      v14 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      v15 = v1[2];
      v15(v4, v11 + v14, v0);
      v16 = static MonotonicTime.now()();
      StateWithTasks.logLongRunningSyncRequests(now:)(v16);
      v17 = v1[1];
      v17(v4, v0);
      v15(v4, v11 + v14, v0);
      v18 = static MonotonicTime.now()();
      StateWithTasks.logLongRunningTasks(now:)(v18);

      return (v17)(v4, v0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall Engine.start()()
{
  v1 = sub_1004A5244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A5274();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didStart);
  v12 = atomicFlag_testAndSet.unsafeMutableAddressor();
  if (((*v12)(v11 + 16) & 1) == 0)
  {
    v16 = *(v0 + 16);
    aBlock[4] = sub_10022E828;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005A97D8;
    v13 = _Block_copy(aBlock);

    sub_1004A5254();
    v17 = _swiftEmptyArrayStorage;
    sub_1002367D8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);
    v15 = v6;
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v13);
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v15);
  }
}

uint64_t sub_10022E760(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(a1 + 32))(0xB000000000000000);
  result = sub_10022F82C(&off_1005A92D0, &unk_1005A92F0);
  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer);

  RestartableTimer.start()();

  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer);

  RestartableTimer.start()();

  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer);

  RestartableTimer.start()();
}

uint64_t sub_10022E830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall Engine.tearDown()()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown);
  v7 = atomicFlag_testAndSet.unsafeMutableAddressor();
  if (((*v7)(v6 + 16) & 1) == 0)
  {
    v8 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_10016AF30(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v5, type metadata accessor for Engine.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v9 = sub_1004A4A54();
    v10 = sub_1004A4A74();
    (*(*(v10 - 8) + 8))(v5, v10);
    v11 = sub_1004A6034();
    if (os_log_type_enabled(v9, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 68157952;
      *(v12 + 4) = 2;
      *(v12 + 8) = 256;
      *(v12 + 10) = *(v8 + *(v2 + 20));

      _os_log_impl(&_mh_execute_header, v9, v11, "[%.*hhx] Tearing down.", v12, 0xBu);
    }

    else
    {
    }

    v13 = *(v1 + 16);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1002344A0;
    *(v14 + 24) = v1;
    aBlock[4] = sub_1002344B8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10022ECC8;
    aBlock[3] = &unk_1005A9828;
    v15 = _Block_copy(aBlock);

    dispatch_sync(v13, v15);
    _Block_release(v15);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }
  }
}

void sub_10022EB10(uint64_t a1)
{
  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer);

  RestartableTimer.stop()();

  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer);

  RestartableTimer.stop()();

  if (*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer))
  {
    v4 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer);

    RestartableTimer.stop()();

    sub_10022EBB0();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10022EBB0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v9 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture);
    }

    v3 = sub_1004A6A34();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_1004A6794();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    StateCapture.tearDown()();
  }

LABEL_10:
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
  {
    v7 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);

    sub_10023A8DC();

    v8 = *(v1 + v6);
  }

  *(v1 + v6) = 0;
}

uint64_t Engine.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  (*(v7 + 16))(v11, v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v6, v9);
  sub_10016AF30(v1 + v12, v5, type metadata accessor for Engine.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v13 = sub_1004A4A54();
  v14 = sub_1004A6034();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 68157952;
    *(v15 + 4) = 2;
    *(v15 + 8) = 256;
    v16 = v5[*(v2 + 20)];
    sub_1002344E0(v5, type metadata accessor for Engine.Logger);
    *(v15 + 10) = v16;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx] Deinit.", v15, 0xBu);
  }

  else
  {
    sub_1002344E0(v5, type metadata accessor for Engine.Logger);
  }

  (*(v7 + 8))(v11, v6);
  v17 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown);
  v18 = atomicFlag_testAndSet.unsafeMutableAddressor();
  result = (*v18)(v17 + 16);
  if (result)
  {

    v20 = *(v1 + 40);

    sub_1002344E0(v1 + v12, type metadata accessor for Engine.Logger);
    v21 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName + 8);

    v22 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner);

    v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    v24 = type metadata accessor for StateWithTasks();
    (*(*(v24 - 8) + 8))(v1 + v23, v24);
    v25 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);

    v26 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator);

    v27 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didStart);

    v28 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingUpdates);

    sub_1002344E0(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState, type metadata accessor for ExternalState);
    v29 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer);

    v30 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer);

    v31 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer);

    v32 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture);

    v33 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry + 24);
    sub_100234540(*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry), *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry + 8), *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry + 16));
    v34 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests);

    v35 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Engine.__deallocating_deinit()
{
  Engine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10022F130(uint64_t a1)
{
  v3 = sub_1004A53F4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  v10 = v4 + 13;
  v9 = v4[13];
  v56 = enum case for DispatchPredicate.onQueue(_:);
  v55 = v9;
  v9(v7);
  v11 = v8;
  v12 = sub_1004A5404();
  v13 = v4[1];
  v57 = v7;
  v58 = v4 + 1;
  v51 = v3;
  v54 = v13;
  result = v13(v7, v3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_30;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v49 = v1;
    v50 = v10;
    v59 = _swiftEmptyArrayStorage;
    sub_10024AB64(0, v15, 0);
    v16 = v59;
    v53 = a1;
    v17 = (a1 + 64);
    v18 = v15;
    do
    {
      v19 = *(v17 - 8);
      v20 = *(v17 - 3);
      v21 = *(v17 - 4);
      v23 = *(v17 - 1);
      v22 = *v17;
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      *(v24 + 24) = v20;
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      *(v24 + 48) = v22;
      sub_1000CB7C8(v20);
      v59 = v16;
      v26 = v16[2];
      v25 = v16[3];

      if (v26 >= v25 >> 1)
      {
        sub_10024AB64((v25 > 1), v26 + 1, 1);
        v16 = v59;
      }

      v16[2] = v26 + 1;
      v16[v26 + 4] = v24;
      v17 += 5;
      --v18;
    }

    while (v18);
    v27 = v49;
    sub_10022F594(v16);

    v28 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator;
    v29 = (v53 + 64);
    v48 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator;
    while (1)
    {
      v30 = *(v29 - 3);
      v31 = *(v27 + v28);
      if (v31)
      {
        v32 = v30 >> 60 == 7;
      }

      else
      {
        v32 = 0;
      }

      if (!v32)
      {
        goto LABEL_8;
      }

      v33 = *(v29 - 1);
      v53 = *v29;
      v34 = *((v30 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *(v31 + 16);
      v36 = v57;
      *v57 = v35;
      v37 = v51;
      v55(v36, v56, v51);
      v38 = v35;
      v52 = v33;

      sub_1000CB7C8(v30);
      LOBYTE(v35) = sub_1004A5404();
      result = v54(v36, v37);
      if ((v35 & 1) == 0)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v39 = static MonotonicTime.now()();
      swift_beginAccess();
      v40 = *(v31 + 64);
      if (v34)
      {
        break;
      }

      if (v40 == 1)
      {
        v39 = 0;
        v41 = 0;
LABEL_22:
        *(v31 + 56) = v39;
        *(v31 + 64) = v41;
      }

LABEL_23:
      v42 = v57;
      *v57 = v38;
      v55(v42, v56, v37);
      v43 = sub_1004A5404();
      result = v54(v42, v37);
      if ((v43 & 1) == 0)
      {
        goto LABEL_29;
      }

      sub_1002239DC();
      sub_100223DDC();

      sub_1000CB848(v30);

      v28 = v48;
      v27 = v49;
LABEL_8:
      v29 += 5;
      if (!--v15)
      {
        return result;
      }
    }

    if (*(v31 + 64) && (v40 != 1 || *(v31 + 56) >= v39))
    {
      goto LABEL_23;
    }

    v41 = 1;
    goto LABEL_22;
  }

  v44 = v57;
  *v57 = v11;
  v45 = v51;
  v55(v44, v56, v51);
  v46 = v11;
  v47 = sub_1004A5404();
  result = v54(v44, v45);
  if ((v47 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_10022F594(&off_1005A92A8);
  return sub_1002348BC(&unk_1005A92C8);
}

uint64_t sub_10022F594()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();

  sub_100231D54(v10);
  result = swift_endAccess();
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates;
  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates))
  {
    return result;
  }

  *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates) = 1;
  sub_100231E48();
  sub_100231F24();
  sub_100232098();
  swift_beginAccess();
  v12 = StateWithTasks.environment.getter();
  result = swift_endAccess();
  if ((v12 & 0x100) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
    {
      v13 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer);

      RestartableTimer.start()();

      if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
      {
        v14 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);

        sub_10023B9D0();
      }

      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry;
  swift_beginAccess();
  if (*(v15 + 16))
  {
    swift_beginAccess();
    v16 = StateWithTasks.appState.getter();
    v17 = StateWithTasks.runningSyncRequests.getter();
    swift_endAccess();
    sub_10024E504(v16 & 1, v17, v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger);
    swift_endAccess();
  }

  else
  {
    result = swift_endAccess();
  }

  *(v1 + v11) = 0;
  return result;
}

uint64_t sub_10022F82C(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v3 = sub_1004A53F4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = sub_1004A5404();
  v13 = v4[1];
  result = v13(v7, v3);
  if (v12)
  {
    *v7 = v11;
    v10(v7, v9, v3);
    v15 = sub_1004A5404();
    result = v13(v7, v3);
    if (v15)
    {
      sub_10022F594();
      return sub_1002348BC(v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10022F9AC()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A53F4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + 16);
  *v10 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = v7[13];
  v13(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v34 = v11;
  LOBYTE(v11) = sub_1004A5404();
  v35 = v7[1];
  result = v35(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v33 = v13;
  swift_beginAccess();
  v15 = StateWithTasks.failOldBackgroundSyncRequests()();
  swift_endAccess();
  if (!*(v15 + 16))
  {
  }

  v32 = v12;
  v16 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_10016AF30(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v5, type metadata accessor for Engine.Logger);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v17 = sub_1004A4A54();
  v18 = sub_1004A4A74();
  (*(*(v18 - 8) + 8))(v5, v18);
  v19 = sub_1004A6034();
  if (os_log_type_enabled(v17, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v7 + 13;
    v21 = v20;
    v30 = swift_slowAlloc();
    v36 = v30;
    *v21 = 68158466;
    *(v21 + 4) = 2;
    *(v21 + 8) = 256;
    *(v21 + 10) = *(v16 + *(v2 + 20));

    *(v21 + 11) = 2048;
    *(v21 + 13) = *(v15 + 16);

    *(v21 + 21) = 2082;
    v22 = sub_100134BF8(v15);
    v24 = v23;

    v25 = sub_10015BA6C(v22, v24, &v36);

    *(v21 + 23) = v25;
    _os_log_impl(&_mh_execute_header, v17, v19, "[%.*hhx] Connections stalled. Failed %ld background sync request(s): %{public}s.", v21, 0x1Fu);
    sub_1000197E0(v30);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v26 = v33;
  v27 = v34;
  *v10 = v34;
  v26(v10, v32, v6);
  v28 = v27;
  LOBYTE(v27) = sub_1004A5404();
  result = v35(v10, v6);
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10022F594();
  return sub_1002348BC(&unk_1005A9340);
}

uint64_t Engine.persistenceDidSend(_:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1004A5244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004A5274();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v3 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = a1;
  v16 = a2 & 1;
  *(v15 + 32) = a2 & 1;
  aBlock[4] = sub_1002345C8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A9878;
  v17 = _Block_copy(aBlock);

  sub_1000CB7A0(a1, v16);
  sub_1004A5254();
  v21 = _swiftEmptyArrayStorage;
  sub_1002367D8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v17);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_100230090(uint64_t a1, char a2)
{
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v2;
  v10 = *(v2 + 16);
  *v9 = v10;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = v6[13];
  v12(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v25 = v10;
  v13 = sub_1004A5404();
  v14 = v6[1];
  result = v14(v9, v5);
  if (v13)
  {
    v16 = swift_allocObject();
    v17 = a2;
    v18 = a1;
    *(v16 + 16) = a1;
    v19 = v17 & 1;
    *(v16 + 24) = v17 & 1;
    *v9 = v25;
    v12(v9, v11, v5);
    sub_1000CB7A0(v18, v19);
    v20 = sub_1004A5404();
    result = v14(v9, v5);
    if (v20)
    {
      sub_10000C9C0(&qword_1005D5900, &qword_1004E9120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004CEAA0;
      *(inited + 32) = v16 | 0x4000000000000000;

      sub_10022F594();

      swift_setDeallocating();
      v22 = *(inited + 16);
      return swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002302B4()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A53F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = sub_1004A5404();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_10016AF30(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v5, type metadata accessor for Engine.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v15 = sub_1004A4A54();
    v16 = sub_1004A4A74();
    (*(*(v16 - 8) + 8))(v5, v16);
    v17 = sub_1004A6014();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 68157952;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      *(v18 + 10) = *(v14 + *(v2 + 20));

      _os_log_impl(&_mh_execute_header, v15, v17, "[%.*hhx] Credentials are invalid.", v18, 0xBu);
    }

    else
    {
    }

    v19 = *(v1 + 40);
    return (*(v1 + 32))(0xB000000000000018);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100230548(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Engine.Logger(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 32);
  v12 = *(v3 + 40);
  *(swift_allocObject() + 16) = a1;
  v14 = v13();

  v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  swift_beginAccess();

  v16 = *(v4 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v4 + v15);
  *(v4 + v15) = 0x8000000000000000;
  sub_100234EAC(a1, a2, a3, v14, isUniquelyReferenced_nonNull_native);
  *(v4 + v15) = v27;
  swift_endAccess();
  v18 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_10016AF30(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v11, type metadata accessor for Engine.Logger);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v19 = sub_1004A4A54();
  v20 = sub_1004A4A74();
  (*(*(v20 - 8) + 8))(v11, v20);
  v21 = sub_1004A6004();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    *(v22 + 10) = *(v18 + *(v8 + 20));

    *(v22 + 11) = 2080;
    LODWORD(v27) = v14;
    sub_1000D40AC();
    v24 = sub_1004A5A84();
    v26 = sub_10015BA6C(v24, v25, &v28);

    *(v22 + 13) = v26;
    *(v22 + 21) = 1024;
    *(v22 + 23) = a1;
    _os_log_impl(&_mh_execute_header, v19, v21, "[%.*hhx] Sending action %s: request %u for credentials.", v22, 0x1Bu);
    sub_1000197E0(v23);
  }

  else
  {
  }
}

void sub_100230828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Engine.Logger(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = v11(0xB000000000000020, v8);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  swift_beginAccess();

  v16 = *(v3 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + v15);
  *(v3 + v15) = 0x8000000000000000;
  sub_100235020(sub_10023667C, v14, v13, isUniquelyReferenced_nonNull_native);
  *(v3 + v15) = v27;
  swift_endAccess();
  v18 = v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_10016AF30(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v10, type metadata accessor for Engine.Logger);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v19 = sub_1004A4A54();
  v20 = sub_1004A4A74();
  (*(*(v20 - 8) + 8))(v10, v20);
  v21 = sub_1004A6004();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 68158210;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    *(v22 + 10) = *(v18 + *(v6 + 20));

    *(v22 + 11) = 2080;
    LODWORD(v27) = v13;
    sub_1000D40AC();
    v24 = sub_1004A5A84();
    v26 = sub_10015BA6C(v24, v25, &v28);

    *(v22 + 13) = v26;
    _os_log_impl(&_mh_execute_header, v19, v21, "[%.*hhx] Did send action %s: request push registration info.", v22, 0x15u);
    sub_1000197E0(v23);
  }

  else
  {
  }
}

void sub_100230AFC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Engine.Logger(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 32);
  v14 = *(v4 + 40);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;

  v17 = v15(v16 | 0x1000000000000002);

  v18 = v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_10016AF30(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v13, type metadata accessor for Engine.Logger);
  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v19 = sub_1004A4A54();
  v20 = sub_1004A4A74();
  (*(*(v20 - 8) + 8))(v13, v20);
  v21 = sub_1004A6034();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v24 = *(v18 + *(v10 + 20));

    *(v22 + 10) = v24;

    *(v22 + 11) = 2080;
    v29[1] = v17;
    sub_1000D40AC();
    v25 = sub_1004A5A84();
    v27 = sub_10015BA6C(v25, v26, &v30);

    *(v22 + 13) = v27;
    *(v22 + 21) = 2048;
    v28 = *(a4 + 16);

    *(v22 + 23) = v28;

    _os_log_impl(&_mh_execute_header, v19, v21, "[%.*hhx] Did send action %s: did complete push registration (%ld mailbox(es)).", v22, 0x1Fu);
    sub_1000197E0(v23);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_100230E00(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
    v4 = (result + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 >> 62 == 1)
      {
        v7 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (*((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
        {
          v8 = (v7 >> 59) & 0x1E | (v7 >> 2) & 1;
          if (v8 == 1)
          {
            v14 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v15 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

            sub_1000CB7A0(v7, 1);
            sub_100231454(v15, v14);
          }

          else
          {
            if (v8 != 7)
            {
              v9 = v8 == 22 && v7 == 0xB000000000000000;
              if (!v9 || !*(v3 + v16))
              {
                goto LABEL_4;
              }

              swift_beginAccess();
              v10 = StateWithTasks.appState.getter();
              swift_endAccess();

              sub_1000CB7A0(0xB000000000000000, 1);

              sub_10023B180(v10 & 1);

              v11 = 0xB000000000000000;
              goto LABEL_19;
            }

            v12 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
            v18[0] = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v18[1] = v12;
            v13 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
            v18[2] = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
            v18[3] = v13;

            sub_1000CB7A0(v7, 1);
            sub_100208C78(v18, v17);
            sub_10023183C(v18);

            sub_10021D02C(v18);
          }

          v11 = v7;
LABEL_19:
          result = sub_1000CB7B4(v11, 1);
          goto LABEL_4;
        }

        sub_100230FF4();
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100230FF4()
{
  v1 = v0;
  v26 = type metadata accessor for Engine.Logger(0);
  v2 = *(*(v26 - 8) + 64);
  v3 = __chkstk_darwin(v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  swift_beginAccess();
  v8 = sub_100234ACC();
  v10 = v9;
  swift_endAccess();
  v11 = &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  if (v10)
  {
    v12 = v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_10016AF30(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v7, type metadata accessor for Engine.Logger);
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1002366D0(v8, v10);

    v13 = sub_1004A4A54();
    v14 = sub_1004A4A74();
    (*(*(v14 - 8) + 8))(v7, v14);
    v15 = sub_1004A6014();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 68158208;
      *(v16 + 4) = 2;
      *(v16 + 8) = 256;
      v17 = *(v12 + *(v26 + 20));

      *(v16 + 10) = v17;

      *(v16 + 11) = 1024;
      sub_1002366E0(v8, v10);
      *(v16 + 13) = v8;
      sub_1002366E0(v8, v10);
      _os_log_impl(&_mh_execute_header, v13, v15, "[%.*hhx] Did not receive any credentials %u.", v16, 0x11u);
      v11 = &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
    }

    else
    {
      sub_1002366E0(v8, v10);

      sub_1002366E0(v8, v10);
    }

    v10(_swiftEmptyArrayStorage);
    sub_1002366E0(v8, v10);
    sub_1002366E0(v8, v10);
  }

  swift_beginAccess();
  v18 = sub_100234A38();
  result = swift_endAccess();
  if (v18)
  {
    v20 = v1 + v11[27];
    sub_10016AF30(v20, v5, type metadata accessor for Engine.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v21 = sub_1004A4A54();
    v22 = sub_1004A4A74();
    (*(*(v22 - 8) + 8))(v5, v22);
    v23 = sub_1004A6014();
    if (os_log_type_enabled(v21, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 68157952;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      *(v24 + 10) = *(v20 + *(v26 + 20));

      _os_log_impl(&_mh_execute_header, v21, v23, "[%.*hhx] Did not receive any push registration info.", v24, 0xBu);
    }

    else
    {
    }

    memset(v27, 0, sizeof(v27));
    v18(v27);
    return sub_1000B5158(v18);
  }

  return result;
}

void sub_100231454(uint64_t a1, int a2)
{
  v3 = v2;
  v32 = a1;
  v5 = type metadata accessor for Engine.Logger(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v30[-v10];
  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  swift_beginAccess();
  v13 = *(v3 + v12);

  v31 = a2;
  v15 = sub_100231B3C(v14, a2);
  v17 = v16;
  v19 = v18;
  v20 = ~v18;

  v21 = v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  if (v20)
  {
    sub_10016AF30(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v11, type metadata accessor for Engine.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v22 = sub_1004A4A54();
    v23 = sub_1004A4A74();
    (*(*(v23 - 8) + 8))(v11, v23);
    v24 = sub_1004A6004();
    if (os_log_type_enabled(v22, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 68158208;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      *(v25 + 10) = *(v21 + *(v5 + 20));

      *(v25 + 11) = 1024;
      *(v25 + 13) = v31;
      _os_log_impl(&_mh_execute_header, v22, v24, "[%.*hhx] Did receive credentials %u.", v25, 0x11u);
    }

    else
    {
    }

    sub_100231CC8(v33, v15, v17, v19 & 1, *(v3 + v12));
    v34(v32);

    swift_beginAccess();
    sub_100235368(v33, v15, v17);
    swift_endAccess();
    sub_1002366F0(v15, v17, v19);
  }

  else
  {
    sub_10016AF30(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v9, type metadata accessor for Engine.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v26 = sub_1004A4A54();
    v27 = sub_1004A4A74();
    (*(*(v27 - 8) + 8))(v9, v27);
    v28 = sub_1004A6014();
    if (os_log_type_enabled(v26, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 68158208;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      *(v29 + 10) = *(v21 + *(v5 + 20));

      *(v29 + 11) = 1024;
      *(v29 + 13) = v31;
      _os_log_impl(&_mh_execute_header, v26, v28, "[%.*hhx] Did receive credentials %u for, but the request is unknown.", v29, 0x11u);

      return;
    }
  }
}

uint64_t sub_10023183C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v30 = *a1;
  v31 = v4;
  v5 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v5;
  v6 = type metadata accessor for Engine.Logger(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_10016AF30(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v9, type metadata accessor for Engine.Logger);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_100208C78(a1, v29);
  v11 = sub_1004A4A54();
  v12 = sub_1004A4A74();
  (*(*(v12 - 8) + 8))(v9, v12);
  v13 = sub_1004A6034();
  if (os_log_type_enabled(v11, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 68158208;
    *(v14 + 4) = 2;
    *(v14 + 8) = 256;
    *(v14 + 10) = *(v10 + *(v6 + 20));

    *(v14 + 11) = 2048;
    *(v14 + 13) = *(*(a1 + 56) + 16);
    sub_10021D02C(a1);
    _os_log_impl(&_mh_execute_header, v11, v13, "[%.*hhx] Did receive push registration info (%ld mailbox(es)).", v14, 0x15u);
  }

  else
  {
    sub_10021D02C(a1);
  }

  v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  swift_beginAccess();
  v16 = *(v2 + v15);
  *(v2 + v15) = &_swiftEmptyDictionarySingleton;
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  v20 = (v17 + 63) >> 6;

  for (i = 0; v19; result = )
  {
    v23 = i;
LABEL_12:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = *(v16 + 56) + ((v23 << 10) | (16 * v24));
    v27 = *v25;
    v26 = *(v25 + 8);
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    v29[3] = v33;

    v27(v29);
  }

  while (1)
  {
    v23 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
    }

    v19 = *(v16 + 64 + 8 * v23);
    ++i;
    if (v19)
    {
      i = v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100231B3C(uint64_t a1, int a2)
{
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v7 = 1 << *(a1 + 32);
  if (result == v7)
  {
    return 0;
  }

  while ((result & 0x8000000000000000) == 0 && result < v7)
  {
    v8 = result >> 6;
    v9 = *(v4 + 8 * (result >> 6));
    if (((v9 >> result) & 1) == 0)
    {
      goto LABEL_19;
    }

    v10 = *(a1 + 36);
    if (*(*(a1 + 56) + 24 * result) == a2)
    {
      return result;
    }

    v11 = v9 & (-2 << (result & 0x3F));
    if (v11)
    {
      v7 = __clz(__rbit64(v11)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v12 = v8 << 6;
      v13 = v8 + 1;
      v14 = (a1 + 72 + 8 * v8);
      while (v13 < (v7 + 63) >> 6)
      {
        v16 = *v14++;
        v15 = v16;
        v12 += 64;
        ++v13;
        if (v16)
        {
          sub_100020944(result, v10, 0);
          v7 = __clz(__rbit64(v15)) + v12;
          goto LABEL_5;
        }
      }

      sub_100020944(result, v10, 0);
    }

LABEL_5:
    result = v7;
    v7 = 1 << *(a1 + 32);
    if (result == v7)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100231CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 4 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v9 = *(v6 + 8);
    v8 = *(v6 + 16);
    *result = v7;
    *(result + 8) = v9;
    *(result + 16) = v8;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100231D54(uint64_t result)
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

  result = sub_100237CD4(result, v11, 1, v3);
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

uint64_t sub_100231E48()
{
  v1 = sub_100232784();
  v2 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  v3 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits), , , v5 = sub_1001B02D8(v4, v1), , , (v5 & 1) == 0) && *(v0 + v2))
  {

    sub_10023BE20(v1);
  }

  else
  {
  }
}

int64_t sub_100231F24()
{
  v1 = type metadata accessor for StateWithTasks();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static MonotonicTime.now()();
  v7 = result;
  v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt;
  v9 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt);
  v10 = __OFSUB__(result, v9);
  v11 = result - v9;
  if (result >= v9)
  {
LABEL_6:
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  if (__OFSUB__(v9, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(0, v9 - result);
  v11 = result - v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  if (v11 / 1000000000.0 > 20.0)
  {
    v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v2 + 16))(v5, v0 + v12, v1);
    StateWithTasks.logSyncRequests()();
    result = (*(v2 + 8))(v5, v1);
    *(v0 + v8) = v7;
  }

  return result;
}

uint64_t sub_100232098()
{
  v1 = v0;
  v2 = type metadata accessor for StateWithTasks();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  result = __chkstk_darwin(v2);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  v6 = *&v0[OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections];
  if (!v6)
  {
    return result;
  }

  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingUpdates;
  v45 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState;
  v51 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection;
  v52 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;

  swift_beginAccess();
  v8 = *&v1[v7];
  v50 = v7;
  *&v1[v7] = _swiftEmptyArrayStorage;
  sub_100232B00(v8);
  v9 = v8 + 16;
  v10 = *(v8 + 16);
  if (v10)
  {
    v42 = 0;
    v48 = (v44 + 16);
    v47 = (v44 + 8);
    v41 = v6;
    v43 = v2;
    do
    {
      v11 = 0;
      while (1)
      {
        if (v10 == v11)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v12 = *(v8 + 8 * v11 + 32);
        if (v12 >> 62 == 1)
        {
          v13 = v12 & 0x3FFFFFFFFFFFFFFFLL;
          if (*(v13 + 24) == 1 && ((*(v13 + 16) >> 59) & 0x1E | (*(v13 + 16) >> 2) & 1) == 2)
          {
            break;
          }
        }

        if (v10 == ++v11)
        {
          goto LABEL_22;
        }
      }

      v14 = v45;
      swift_beginAccess();
      sub_100025F40(&v1[v14], &qword_1005D58F8, &unk_1004E9190);
      v15 = type metadata accessor for Activity(0);
      (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
      swift_endAccess();
      v16 = *&v1[v46];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
      swift_beginAccess();
      v18 = *(v16 + v17);
      if (v18 >> 62)
      {
        if (v18 < 0)
        {
          v29 = *(v16 + v17);
        }

        v19 = sub_1004A6A34();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v2 = v43;
      if (!v19)
      {
        goto LABEL_22;
      }

      if (v19 < 1)
      {
        goto LABEL_55;
      }

      for (i = 0; i != v19; ++i)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = sub_1004A6794();
        }

        else
        {
          v21 = *(v18 + 8 * i + 32);
        }

        (*(*v21 + 592))();
      }

      v6 = v41;
      v2 = v43;
LABEL_22:
      v22 = *v9;
      v23 = 32;
      while (1)
      {
        if (!v22)
        {
          __break(1u);
          goto LABEL_53;
        }

        v24 = *(v8 + v23);
        if (v24 >> 62 == 1)
        {
          v25 = v24 & 0x3FFFFFFFFFFFFFFFLL;
          if (*(v25 + 24))
          {
            v26 = *(v25 + 16);
            if (((v26 >> 59) & 0x1E | (v26 >> 2) & 1) == 3 && *((v26 & 0xFFFFFFFFFFFFFFBLL) + 0x14) == 1)
            {
              break;
            }
          }
        }

        --v22;
        v23 += 8;
        if (!--v10)
        {
          goto LABEL_30;
        }
      }

      v42 = 1;
LABEL_30:
      sub_100232900(v8);

      sub_100230E00(v8);
      swift_beginAccess();

      StateWithTasks.update(updates:send:persist:)(v8, sub_10023495C, v6, sub_100234910, v1);
      swift_endAccess();

      if (v1[v51] == 1)
      {
        v27 = v52;
        v1[v51] = 0;
        v28 = v49;
        (*v48)(v49, &v1[v27], v2);
        StateWithTasks.logForDidCreateFirstConnection()();
        (*v47)(v28, v2);
      }

      v8 = *&v1[v50];
      *&v1[v50] = _swiftEmptyArrayStorage;
      sub_100232B00(v8);
      v9 = v8 + 16;
      v10 = *(v8 + 16);
    }

    while (v10);

    if (v42)
    {
      v30.rawValue = static MonotonicTime.now()();
      sub_10023BF68(v30);
    }
  }

  else
  {
  }

  v31 = v52;
  swift_beginAccess();
  v32 = v44;
  v33 = &v1[v31];
  v34 = v49;
  (*(v44 + 16))(v49, v33, v2);
  StateWithTasks.connectionLimitsAndUsage.getter(v53);
  (*(v32 + 8))(v34, v2);
  sub_10023C098();
  v35 = v55;
  v57 = v54;
  sub_100234990(&v57);
  v56 = v35;
  sub_1002349E4(&v56);
  v36 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v9 = *(v6 + v36);
  if (v9 >> 62)
  {
LABEL_56:
    v37 = sub_1004A6A34();
  }

  else
  {
    v37 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v37)
  {
    goto LABEL_50;
  }

  v38 = 0;
  while ((v9 & 0xC000000000000001) != 0)
  {
    v39 = sub_1004A6794();
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_49;
    }

LABEL_45:
    (*(*v39 + 584))();

    ++v38;
    if (v40 == v37)
    {
      goto LABEL_50;
    }
  }

  if (v38 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_54;
  }

  v39 = *(v9 + 8 * v38 + 32);

  v40 = v38 + 1;
  if (!__OFADD__(v38, 1))
  {
    goto LABEL_45;
  }

LABEL_49:
  __break(1u);
LABEL_50:
}

uint64_t sub_100232784()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    swift_beginAccess();
    v10 = StateWithTasks.runningSyncRequests.getter();
    swift_endAccess();
    RunningSyncRequests.kinds.getter(v10, v13);

    v11 = sub_10022AB84(v13[0], *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind));

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100232900(uint64_t a1)
{
  v2 = v1;
  v4 = *tracingLog.unsafeMutableAddressor();
  v5 = sub_1004A6354();

  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = (a1 + 32);
      do
      {
        v8 = *v7++;
        v9 = v8;

        sub_100233318(&v9, v2);

        --v6;
      }

      while (v6);
    }
  }
}

void sub_100232998(unint64_t a1)
{
  v2 = v1;
  v4 = *tracingLog.unsafeMutableAddressor();
  v5 = sub_1004A6354();

  if ((v5 & 1) != 0 && ((a1 >> 58) & 0x3C | (a1 >> 1) & 3) == 1)
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    swift_bridgeObjectRetain_n();
    v12 = 0;
    if (v9)
    {
      while (1)
      {
        v13 = v12;
LABEL_11:
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v15 = *(*(v6 + 48) + ((v13 << 8) | (4 * v14)));
        sub_1002337E8(&v15, v2);
        if (!v9)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = *(v6 + 56 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }
  }
}

void sub_100232B00(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Engine.Logger(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - v13;
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    if (v17 == v18)
    {
      v23 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
      switch(v19)
      {
        case 3:
          sub_10016AF30(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v11, type metadata accessor for Engine.Logger);

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v24 = sub_1004A4A54();
          v30 = sub_1004A4A74();
          (*(*(v30 - 8) + 8))(v11, v30);
          v26 = sub_1004A5FF4();
          if (os_log_type_enabled(v24, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 68158208;
            *(v27 + 4) = 2;
            *(v27 + 8) = 256;
            *(v27 + 10) = *(v23 + *(v4 + 20));

            *(v27 + 11) = 2048;
            *(v27 + 13) = v17;

            v28 = "[%.*hhx] Processing %ld update(s) from network and persistence";
            goto LABEL_20;
          }

          break;
        case 2:
          sub_10016AF30(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v14, type metadata accessor for Engine.Logger);

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v24 = sub_1004A4A54();
          v29 = sub_1004A4A74();
          (*(*(v29 - 8) + 8))(v14, v29);
          v26 = sub_1004A5FF4();
          if (os_log_type_enabled(v24, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 68158208;
            *(v27 + 4) = 2;
            *(v27 + 8) = 256;
            *(v27 + 10) = *(v23 + *(v4 + 20));

            *(v27 + 11) = 2048;
            *(v27 + 13) = v17;

            v28 = "[%.*hhx] Processing %ld update(s) from persistence";
            goto LABEL_20;
          }

          break;
        case 1:
          sub_10016AF30(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v16, type metadata accessor for Engine.Logger);

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v24 = sub_1004A4A54();
          v25 = sub_1004A4A74();
          (*(*(v25 - 8) + 8))(v16, v25);
          v26 = sub_1004A5FF4();
          if (os_log_type_enabled(v24, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 68158208;
            *(v27 + 4) = 2;
            *(v27 + 8) = 256;
            *(v27 + 10) = *(v23 + *(v4 + 20));

            *(v27 + 11) = 2048;
            *(v27 + 13) = v17;

            v28 = "[%.*hhx] Processing %ld update(s) from network";
LABEL_20:
            _os_log_impl(&_mh_execute_header, v24, v26, v28, v27, 0x15u);

            return;
          }

          break;
        default:
          sub_10016AF30(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v8, type metadata accessor for Engine.Logger);

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v31 = sub_1004A4A54();
          v32 = sub_1004A4A74();
          (*(*(v32 - 8) + 8))(v8, v32);
          v33 = sub_1004A5FF4();
          if (os_log_type_enabled(v31, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 68158208;
            *(v34 + 4) = 2;
            *(v34 + 8) = 256;
            *(v34 + 10) = *(v23 + *(v4 + 20));

            *(v34 + 11) = 2048;
            *(v34 + 13) = v17;

            _os_log_impl(&_mh_execute_header, v31, v33, "[%.*hhx] Processing %ld update(s)", v34, 0x15u);

            return;
          }

          goto LABEL_25;
      }

LABEL_25:

      return;
    }

    if (v18 >= v17)
    {
      break;
    }

    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_28;
    }

    v21 = *(a1 + 8 * v18++ + 32) >> 62;
    if (v21 != 2)
    {
      v18 = v20;
      if (v21)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v19 |= v22;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1002330E8(uint64_t a1)
{
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v13[0] = *(a1 + v10);
    v13[1] = sub_1002405FC;
    v13[2] = 0;
    v13[3] = sub_100235448;
    v13[4] = 0;
    v13[5] = sub_1002354AC;
    v13[6] = 0;

    v11 = sub_100233C90(v13);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100233284(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  result = sub_100235180(0x100000000uLL, v5, v6, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v10;
  return result;
}

uint64_t sub_100233318(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1004A4944();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A4904();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v17 = &v50 - v16;
  v18 = *a1;
  if (*a1 >> 62 == 1)
  {
    v19 = v18 & 0x3FFFFFFFFFFFFFFFLL;
    v20 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v19 + 24) == 1 && ((v20 >> 59) & 0x1E | (v20 >> 2) & 1) == 2)
    {
      v59 = result;
      v22 = v20 & 0xFFFFFFFFFFFFFFBLL;
      v23 = v5;
      v24 = *(v22 + 24);
      v54 = *(v22 + 16);
      v55 = v24;
      v25 = *(v22 + 32);
      v26 = ((v54 & 0xFFFFFF) << 35) | (*(*(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner) + 16) << 59);

      sub_1004A4914();
      v27 = tracingSignposter.unsafeMutableAddressor();
      v58 = v23;
      (*(v23 + 16))(v8, v27, v4);

      v28 = sub_1004A4934();
      v56 = sub_1004A6144();

      if (sub_1004A6354())
      {
        v51 = v25;
        v53 = v28;
        v29 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v60 = v52;
        *v29 = 67109890;
        *(v29 + 4) = v54;
        v57 = v29;
        *(v29 + 8) = 2082;
        v30 = sub_1004A6754();
        v32 = sub_10015BA6C(v30, v31, &v60);

        v33 = v57;
        *(v57 + 10) = v32;
        *(v33 + 18) = 2048;
        if (v51)
        {
          v34 = *(v51 + 16);
        }

        else
        {
          v34 = 0;
        }

        v35 = v57;
        *(v57 + 20) = v34;
        v36 = v35;

        *(v36 + 28) = 2082;
        swift_beginAccess();
        LODWORD(v36) = StateWithTasks.environment.getter();
        v38 = v37;
        v55 = v39;
        swift_endAccess();
        v40 = Environment.description.getter(v36 & 0x101FF, v38, v55);
        v42 = sub_10015BA6C(v40, v41, &v60);

        v43 = v57;
        *(v57 + 30) = v42;
        v44 = sub_1004A48F4();
        v45 = v53;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, v56, v44, "SyncRequest", "Begin syncRequestId: #%u, kind: %{public}s, mailboxes: %ld, %{public}s", v43, 0x26u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v46 = v59;
      (*(v10 + 16))(v14, v17, v59);
      v47 = sub_1004A4A34();
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      sub_1004A4A24();

      (*(v58 + 8))(v8, v4);
      return (*(v10 + 8))(v17, v46);
    }
  }

  return result;
}

uint64_t sub_1002337E8(int *a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_1004A4954();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A4944();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004A4904();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v38 - v18;
  __chkstk_darwin(v17);
  v21 = &v38 - v20;
  v22 = *(*(v44 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner) + 16);
  v39 = *a1;
  sub_1004A4914();
  v23 = tracingSignposter.unsafeMutableAddressor();
  v43 = v7;
  v44 = v6;
  (*(v7 + 16))(v10, v23, v6);
  (*(v12 + 16))(v19, v21, v11);
  v24 = sub_1004A4A34();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_1004A4A24();
  v27 = sub_1004A4934();
  sub_1004A4A14();
  v28 = sub_1004A6134();
  if (sub_1004A6354())
  {
    v38 = v28;

    v29 = v42;
    sub_1004A4A44();

    v30 = v40;
    v31 = v29;
    v32 = v41;
    if ((*(v40 + 88))(v31, v41) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v33 = 0;
      v42 = "[Error] Interval already ended";
    }

    else
    {
      (*(v30 + 8))(v42, v32);
      v42 = "End syncRequestId: #%u";
      v33 = 1;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    *(v34 + 1) = v33;
    *(v34 + 2) = 1024;
    *(v34 + 4) = v39;
    v35 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v38, v35, "SyncRequest", v42, v34, 8u);
  }

  v36 = *(v12 + 8);
  v36(v16, v11);
  (*(v43 + 8))(v10, v44);
  return (v36)(v21, v11);
}

uint64_t Engine.Logger.l.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004A4A74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100233C90(unint64_t *a1)
{
  v71 = type metadata accessor for ConnectionStatus(0);
  v2 = *(v71 - 8);
  v3 = *(v2 + 8);
  v4 = __chkstk_darwin(v71 - 8);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v73 = &v58 - v7;
  __chkstk_darwin(v6);
  v74 = &v58 - v8;
  v9 = sub_10000C9C0(&qword_1005D5930, &qword_1004E9148);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v76 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v72 = &v58 - v13;
  v70 = sub_10000C9C0(&qword_1005D5938, &qword_1004E9150);
  v14 = *(v70 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v70);
  v65 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v58 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v58 - v22;
  __chkstk_darwin(v21);
  v75 = &v58 - v24;
  v62 = sub_10022351C(_swiftEmptyArrayStorage);
  v26 = *a1;
  v25 = a1[1];
  v27 = a1[2];
  v77 = a1[3];
  v78 = v25;
  v81 = a1[4];
  v82 = v27;
  v84[0] = v26;
  if (v26 >> 62)
  {
    goto LABEL_39;
  }

  v79 = v26 & 0xFFFFFFFFFFFFFF8;
  v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v29 = a1[6];
  v64 = a1[5];
  v63 = v29;
  sub_10000E268(v84, &v83, &qword_1005D5940, &qword_1004E9158);
  v30 = v26;
  v80 = v26 & 0xC000000000000001;
  v68 = (v14 + 48);
  v69 = (v14 + 56);
  v67 = (v2 + 56);
  v60 = v2;
  v66 = (v2 + 48);

  v31 = 0;
  a1 = &qword_1005D5938;
  v2 = &qword_1004E9150;
  while (1)
  {
    while (1)
    {
      if (v31 != v28)
      {
        do
        {
          if (v80)
          {
            v34 = sub_1004A6794();
            v26 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if ((v31 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v79 = v26 & 0xFFFFFFFFFFFFFF8;
              v28 = sub_1004A6A34();
              goto LABEL_3;
            }

            if (v31 >= *(v79 + 16))
            {
              goto LABEL_38;
            }

            v34 = *(v30 + 8 * v31 + 32);

            v26 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_37;
            }
          }

          v83 = v34;
          v78(&v83);

          sub_100025FDC(v20, v23, &qword_1005D5938, &qword_1004E9150);
          v14 = v81;
          if (v77(v23))
          {
            sub_100025FDC(v23, v72, &qword_1005D5938, &qword_1004E9150);
            v33 = 0;
            v31 = v26;
            goto LABEL_19;
          }

          sub_100025F40(v23, &qword_1005D5938, &qword_1004E9150);
          ++v31;
        }

        while (v26 != v28);
      }

      v33 = 1;
      v31 = v28;
LABEL_19:
      v35 = v70;
      v36 = 1;
      v37 = v72;
      (*v69)(v72, v33, 1, v70);
      v38 = v37;
      v39 = v76;
      sub_100025FDC(v38, v76, &qword_1005D5930, &qword_1004E9148);
      if ((*v68)(v39, 1, v35) != 1)
      {
        v40 = v65;
        sub_100025FDC(v76, v65, &qword_1005D5938, &qword_1004E9150);
        v64(v40);
        sub_100025F40(v40, &qword_1005D5938, &qword_1004E9150);
        v36 = 0;
      }

      v41 = v75;
      v42 = v36;
      v14 = v71;
      (*v67)(v75, v42, 1, v71);
      if ((*v66)(v41, 1, v14) == 1)
      {
        sub_100025F40(v84, &qword_1005D5940, &qword_1004E9158);

        return v62;
      }

      v32 = v74;
      sub_100223820(v41, v74);
      v26 = v73;
      sub_10016AF30(v32, v73, type metadata accessor for ConnectionStatus);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 3) >= 2)
      {
        break;
      }

LABEL_5:
      sub_1002344E0(v32, type metadata accessor for ConnectionStatus);
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1002344E0(v74, type metadata accessor for ConnectionStatus);
      v32 = v73;
      goto LABEL_5;
    }

    v44 = *(v73 + 8);
    v26 = *v73;
    sub_10016AF30(v74, v61, type metadata accessor for ConnectionStatus);
    v45 = v62;
    LODWORD(v59) = swift_isUniquelyReferenced_nonNull_native();
    v83 = v45;
    v47 = sub_100063B5C(v26, v44);
    v48 = *(v45 + 16);
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      break;
    }

    if (*(v45 + 24) >= v50)
    {
      if (v59)
      {
        if ((v46 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v59 = v47;
        LODWORD(v62) = v46;
        sub_100239744();
        v47 = v59;
        if ((v62 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_31:
      v14 = v47;

      v62 = v83;
      sub_100236970(v61, v83[7] + *(v60 + 9) * v14);
      sub_1002344E0(v74, type metadata accessor for ConnectionStatus);
    }

    else
    {
      LODWORD(v62) = v46;
      sub_100238FE4(v50, v59);
      v51 = sub_100063B5C(v26, v44);
      if ((v62 & 1) != (v52 & 1))
      {
        goto LABEL_42;
      }

      v47 = v51;
      if (v62)
      {
        goto LABEL_31;
      }

LABEL_33:
      v14 = v83;
      v83[(v47 >> 6) + 8] |= 1 << v47;
      v53 = *(v14 + 48) + 16 * v47;
      *v53 = v26;
      *(v53 + 8) = v44;
      sub_100223820(v61, *(v14 + 56) + *(v60 + 9) * v47);
      sub_1002344E0(v74, type metadata accessor for ConnectionStatus);
      v54 = *(v14 + 16);
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_41;
      }

      v62 = v14;
      *(v14 + 16) = v56;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1002344B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1002344E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100234540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100234584()
{
  v1 = *(v0 + 16);

  sub_1000CB7B4(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1002345C8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  return sub_100230090(v1, v2);
}

uint64_t sub_10023461C()
{
  result = type metadata accessor for Engine.Logger(319);
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for StateWithTasks();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for ExternalState();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1002347CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10023484C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100234910(unint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = v3();
  sub_100232998(a1);
  return v5;
}

uint64_t sub_10023495C(uint64_t a1, uint64_t a2)
{
  result = sub_10024D1F4(a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_100234A38()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10024FDC4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v14 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100239320();
    v8 = v14;
  }

  v9 = v5;
  v10 = (*(v8 + 56) + 16 * v5);
  v11 = *v10;
  v12 = v10[1];
  sub_100234B78(v9, v8);
  *v1 = v8;
  return v11;
}

uint64_t sub_100234ACC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10024FDC4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v15 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100239484();
    v8 = v15;
  }

  v9 = v5;
  v10 = (*(v8 + 56) + 24 * v5);
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  sub_100234D0C(v9, v8);
  *v1 = v8;
  return v11;
}

Swift::Int sub_100234B78(Swift::Int result, uint64_t a2)
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
      v10 = *(*(a2 + 48) + 4 * v6);
      sub_1004A6E94();
      sub_1004A6EE4(v10);
      result = sub_1004A6F14();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100234D0C(Swift::Int result, uint64_t a2)
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
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 4 * v6);
      sub_1004A6E94();
      sub_1004A6EE4(v11);
      result = sub_1004A6F14();
      v12 = result & v7;
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
        v14 = (v13 + 4 * v3);
        v15 = (v13 + 4 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v9 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v9;
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

unint64_t sub_100234EAC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_10024FDC4(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100238AB0(v18, a5 & 1);
      v22 = *v6;
      result = sub_10024FDC4(a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_100239484();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 4 * result) = a4;
    v27 = v24[7] + 24 * result;
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3;
    v28 = v24[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v24[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v25 = v24[7] + 24 * result;
  v26 = *(v25 + 16);
  *v25 = a1;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
}

unint64_t sub_100235020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10024FDC4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100238820(v16, a4 & 1);
      v20 = *v5;
      result = sub_10024FDC4(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100239320();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 4 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_100235180(unint64_t a1, uint64_t a2, char a3, uint64_t a4, Swift::UInt a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_100063C84(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = result;
      sub_10013A4A0();
      result = v23;
      goto LABEL_8;
    }

    sub_1000C3328(v20, a6 & 1);
    v24 = *v7;
    result = sub_100063C84(a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_14:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * result;
    *v27 = a1;
    *(v27 + 4) = BYTE4(a1) & 1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3 & 1;
  }

  else
  {
    sub_100235304(result, a4, a5, a1 | ((HIDWORD(a1) & 1) << 32), a2, a3 & 1, v26);
  }

  return result;
}

unint64_t sub_100235304(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 4) = BYTE4(a4) & 1;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
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

uint64_t sub_100235368(uint64_t a1, Swift::Int a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_100239484();
    *v4 = v10;
  }

  if (a2 < 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = *(*(v10 + 48) + 4 * a2);
    v12 = *(v10 + 56) + 24 * a2;
    *a1 = *v12;
    *(a1 + 8) = *(v12 + 8);
    sub_100234D0C(a2, v10);
    *v4 = v10;
    return v11;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1002354AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&qword_1005D5938, &qword_1004E9150);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_10000E268(a1, &v10 - v6, &qword_1005D5938, &qword_1004E9150);
  v8 = type metadata accessor for ConnectionStatus(0);
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (result != 1)
  {
    return sub_100223820(v7, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002355A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (**a6)(uint64_t a1), uint64_t a7)
{
  v118 = a6;
  v119 = a1;
  v123 = a2;
  v124 = a3;
  v115 = sub_1004A5244();
  v114 = *(v115 - 8);
  v10 = *(v114 + 64);
  __chkstk_darwin(v115);
  v113 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1004A5274();
  v111 = *(v112 - 8);
  v12 = *(v111 + 64);
  __chkstk_darwin(v112);
  v110 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1004A5234();
  v125 = *(v121 - 8);
  v14 = *(v125 + 64);
  v15 = __chkstk_darwin(v121);
  v122 = (&v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v120 = (&v106 - v17);
  v18 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v106 - v20;
  v22 = sub_1004A4A74();
  v23 = *(v22 - 8);
  v24 = v23;
  v126 = v22;
  v127 = v23;
  v25 = *(v23 + 64);
  v26 = __chkstk_darwin(v22);
  v117 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v106 - v28;
  v109 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v108 = *(v24 + 56);
  v108(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger, 1, 1);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections) = _swiftEmptyArrayStorage;
  v30 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID) = 0;
  v31 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  v32 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffLoggingRateLimit;
  *v32 = 0;
  *(v32 + 8) = 1;
  *(v32 + 16) = 2000000000;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer) = 0;
  v33 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
  v34 = type metadata accessor for ConnectionStatus.Error(0);
  (*(*(v34 - 8) + 56))(a7 + v33, 1, 1, v34);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents) = 0;
  v35 = (a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancel);
  *v35 = sub_10022343C(_swiftEmptyArrayStorage);
  v35[1] = 0x4014000000000000;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID) = 1;
  v36 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  v37 = static MonotonicTime.now()();
  *v36 = 0;
  *(v36 + 8) = v37;
  v38 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastLogAllConnectionStates;
  *(a7 + v38) = static MonotonicTime.now()();
  v39 = a5;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue) = a5;
  v40 = (a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName);
  v42 = v123;
  v41 = v124;
  *v40 = v119;
  v40[1] = v42;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits) = v41;
  v116 = a4;
  sub_10016AF30(a4, a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, type metadata accessor for ConnectionConfiguration);
  v43 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner;
  v44 = v118;
  v45 = *(v118 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner);
  v107 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID) = *(v45 + 16);
  *(v30 + 8) = &off_1005A98B0;
  swift_unknownObjectWeakAssign();
  v46 = v39;

  sub_1004A4A64();
  v47 = v126;
  v48 = *(v127 + 16);
  v48(v21, v29, v126);
  (v108)(v21, 0, 1, v47);
  v49 = v109;
  swift_beginAccess();
  sub_100236AAC(v21, a7 + v49);
  swift_endAccess();
  type metadata accessor for Timer();
  swift_allocObject();
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) = Timer.init(queue:)(v46);
  LOBYTE(v21) = (*(v44 + v43))[16];
  v50 = v117;
  v109 = v29;
  v48(v117, v29, v47);
  v51 = swift_allocObject();
  *(v51 + 24) = &off_1005A98B0;
  swift_unknownObjectWeakInit();
  v52 = v46;

  v53 = type metadata accessor for DataTransferReportAccumulator();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  v56 = swift_allocObject();
  v57 = v56 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state;
  *v57 = 0;
  *(v57 + 8) = 0;
  *(v57 + 16) = 1;
  *(v56 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer) = 0;
  *(v56 + 16) = v52;
  *(v56 + 24) = v21;
  v48((v56 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_logger), v50, v47);
  v58 = (v56 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler);
  *v58 = sub_100236B54;
  v58[1] = v51;
  v59 = v120;
  *v120 = 1;
  v61 = v125 + 104;
  v60 = *(v125 + 104);
  LODWORD(v124) = enum case for DispatchTimeInterval.seconds(_:);
  v60(v59);
  v62 = v122;
  *v122 = 500;
  LODWORD(v119) = enum case for DispatchTimeInterval.milliseconds(_:);
  v125 = v61;
  v108 = v60;
  v60(v62);
  v63 = swift_allocObject();
  swift_weakInit();
  v133 = sub_100236B5C;
  v134 = v63;
  aBlock = _NSConcreteStackBlock;
  v130 = 1107296256;
  v131 = sub_10019C778;
  v132 = &unk_1005A9AF8;
  v64 = _Block_copy(&aBlock);
  v123 = type metadata accessor for RestartableTimer();
  swift_allocObject();
  v65 = v52;

  v66 = RestartableTimer.init(queue:repeating:leeway:closure:)(v65, v59, v62, v64);
  v67 = *(v127 + 8);
  v68 = v117;
  v69 = v118;
  v127 += 8;
  v117 = v67;
  (v67)(v68, v126);

  v70 = *(v56 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer);
  *(v56 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer) = v66;

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator) = v56;
  aBlock = 0;
  v130 = 0xE000000000000000;
  sub_1004A6724(17);

  aBlock = 0x697463656E6E6F43;
  v130 = 0xEF2D6C6F6F506E6FLL;
  LOBYTE(v128) = (*(v69 + v107))[16];
  sub_10014F900();
  v71 = sub_1004A5A84();
  v73 = v72;
  if (sub_1004A5924() <= 1)
  {
    v135._countAndFlagsBits = 48;
    v135._object = 0xE100000000000000;
    sub_1004A5994(v135);
  }

  type metadata accessor for StateCapture();
  v136._countAndFlagsBits = v71;
  v136._object = v73;
  sub_1004A5994(v136);

  v74 = aBlock;
  v75 = v130;
  v76 = swift_allocObject();
  swift_weakInit();
  v77 = v65;

  v78 = StateCapture.__allocating_init(title:queue:capture:)(v74, v75, v77, sub_100236B64, v76);
  v79 = *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture) = v78;

  v81 = v120;
  v80 = v121;
  *v120 = 2;
  v82 = v108;
  v108(v81, v124, v80);
  v83 = v122;
  *v122 = 100;
  v82(v83, v119, v80);
  v84 = swift_allocObject();
  swift_weakInit();
  v133 = sub_100236B6C;
  v134 = v84;
  aBlock = _NSConcreteStackBlock;
  v130 = 1107296256;
  v118 = &v131;
  v131 = sub_10019C778;
  v132 = &unk_1005A9B48;
  v85 = _Block_copy(&aBlock);
  swift_allocObject();
  v86 = v77;

  v87 = RestartableTimer.init(queue:repeating:leeway:closure:)(v86, v81, v83, v85);

  v88 = *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer) = v87;

  *v81 = 2;
  v82(v81, v124, v80);
  *v83 = 100;
  v82(v83, v119, v80);
  v89 = swift_allocObject();
  swift_weakInit();
  v133 = sub_100236B74;
  v134 = v89;
  aBlock = _NSConcreteStackBlock;
  v130 = 1107296256;
  v131 = sub_10019C778;
  v132 = &unk_1005A9B70;
  v90 = _Block_copy(&aBlock);
  swift_allocObject();
  v91 = v86;

  v92 = RestartableTimer.init(queue:repeating:leeway:closure:)(v91, v81, v83, v90);

  v93 = *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer) = v92;

  *v81 = 10;
  v94 = v124;
  v82(v81, v124, v80);
  *v83 = 1;
  v82(v83, v94, v80);
  v95 = swift_allocObject();
  swift_weakInit();
  v133 = sub_100236B7C;
  v134 = v95;
  aBlock = _NSConcreteStackBlock;
  v130 = 1107296256;
  v131 = sub_10019C778;
  v132 = &unk_1005A9B98;
  v96 = _Block_copy(&aBlock);
  swift_allocObject();
  v97 = v91;

  v98 = RestartableTimer.init(queue:repeating:leeway:closure:)(v97, v81, v83, v96);

  v99 = *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer) = v98;

  v100 = swift_allocObject();
  swift_weakInit();

  v133 = sub_100236B84;
  v134 = v100;
  aBlock = _NSConcreteStackBlock;
  v130 = 1107296256;
  v131 = sub_10019C778;
  v132 = &unk_1005A9BC0;
  v101 = _Block_copy(&aBlock);

  v102 = v110;
  sub_1004A5254();
  v128 = _swiftEmptyArrayStorage;
  sub_1002367D8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  v103 = v113;
  v104 = v115;
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v101);

  sub_1002344E0(v116, type metadata accessor for ConnectionConfiguration);
  (*(v114 + 8))(v103, v104);
  (*(v111 + 8))(v102, v112);
  (v117)(v109, v126);

  return a7;
}

uint64_t sub_100236568(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1004A5954();

    return sub_1004A5AB4();
  }

  return result;
}

uint64_t sub_100236604()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100236644()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023667C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  return v2(v7);
}

uint64_t sub_1002366D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1002366E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1002366F0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100020944(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100236708()
{
  sub_1000CB848(v0[3]);
  v1 = v0[5];

  v2 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100236750()
{
  sub_1000CB7B4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_10023678C()
{
  result = qword_1005D5908;
  if (!qword_1005D5908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D5908);
  }

  return result;
}

uint64_t sub_1002367D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100236820(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_10024B4A8(a1, v2, ObjectType, a2);
}

uint64_t sub_100236870()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100236930()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100236970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002369D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5950, &qword_1004E9168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100236A44(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D5950, &qword_1004E9168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100236AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100236B1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100236BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005D58F8, &unk_1004E9190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100236CD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000C9C0(&qword_1005D58F8, &unk_1004E9190);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ExternalState()
{
  result = qword_1005D59C8;
  if (!qword_1005D59C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100236DE4()
{
  sub_100236E68();
  if (v0 <= 0x3F)
  {
    sub_100236EC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100236E68()
{
  if (!qword_1005D59D8)
  {
    type metadata accessor for Activity(255);
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D59D8);
    }
  }
}

void sub_100236EC0()
{
  if (!qword_1005D59E0)
  {
    sub_100026044();
    v0 = sub_1004A5DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D59E0);
    }
  }
}

char *sub_100236F1C(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = type metadata accessor for Activity(0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C9C0(&qword_1005D5A10, &qword_1004E91B8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = sub_10000C9C0(&qword_1005D58F8, &unk_1004E9190);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v43 - v20;
  __chkstk_darwin(v19);
  v23 = &v43 - v22;
  v45 = a1;
  sub_100237490(a1, &v43 - v22);
  v44 = v5[7];
  v44(v23, 0, 1, v4);
  v47 = v2;
  sub_1002374F4(v2, v21);
  v24 = *(v10 + 56);
  sub_1002374F4(v23, v13);
  sub_1002374F4(v21, &v13[v24]);
  v25 = v5[6];
  if (v25(v13, 1, v4) == 1)
  {
    sub_100025F40(v21, &qword_1005D58F8, &unk_1004E9190);
    sub_100025F40(v23, &qword_1005D58F8, &unk_1004E9190);
    if (v25(&v13[v24], 1, v4) == 1)
    {
      sub_100025F40(v13, &qword_1005D58F8, &unk_1004E9190);
      v26 = _swiftEmptyArrayStorage;
      v28 = v46;
      v27 = v47;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1002374F4(v13, v18);
  if (v25(&v13[v24], 1, v4) == 1)
  {
    sub_100025F40(v21, &qword_1005D58F8, &unk_1004E9190);
    sub_100025F40(v23, &qword_1005D58F8, &unk_1004E9190);
    sub_10023759C(v18);
LABEL_6:
    sub_100025F40(v13, &qword_1005D5A10, &qword_1004E91B8);
    v28 = v46;
    v27 = v47;
    goto LABEL_7;
  }

  sub_1002375F8(&v13[v24], v8);
  v42 = static Activity.__derived_struct_equals(_:_:)(v18, v8);
  sub_10023759C(v8);
  sub_100025F40(v21, &qword_1005D58F8, &unk_1004E9190);
  sub_100025F40(v23, &qword_1005D58F8, &unk_1004E9190);
  sub_10023759C(v18);
  sub_100025F40(v13, &qword_1005D58F8, &unk_1004E9190);
  v28 = v46;
  v27 = v47;
  if (v42)
  {
    v26 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

LABEL_7:
  sub_100025F40(v27, &qword_1005D58F8, &unk_1004E9190);
  v29 = v45;
  sub_100237490(v45, v27);
  v44(v27, 0, 1, v4);
  v30 = swift_allocBox();
  sub_100237490(v29, v31);
  v26 = sub_100237BB8(0, 1, 1, _swiftEmptyArrayStorage);
  v33 = *(v26 + 2);
  v32 = *(v26 + 3);
  if (v33 >= v32 >> 1)
  {
    v26 = sub_100237BB8((v32 > 1), v33 + 1, 1, v26);
  }

  *(v26 + 2) = v33 + 1;
  *&v26[8 * v33 + 32] = v30 | 0x9000000000000002;
LABEL_10:
  v34 = *(type metadata accessor for ExternalState() + 20);
  v35 = *(v27 + v34);
  if (*(v28 + 16) <= v35[2] >> 3)
  {
    v48 = *(v27 + v34);

    sub_10015CC4C(v28);
    v37 = v48;
    if (v48[2])
    {
      goto LABEL_12;
    }

LABEL_18:

    goto LABEL_19;
  }

  v36 = *(v27 + v34);

  v37 = sub_10015FC1C(v28, v35);
  if (!v37[2])
  {
    goto LABEL_18;
  }

LABEL_12:
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_100237BB8(0, *(v26 + 2) + 1, 1, v26);
  }

  v40 = *(v26 + 2);
  v39 = *(v26 + 3);
  if (v40 >= v39 >> 1)
  {
    v26 = sub_100237BB8((v39 > 1), v40 + 1, 1, v26);
  }

  *(v26 + 2) = v40 + 1;
  *&v26[8 * v40 + 32] = v38 | 0x1000000000000000;
LABEL_19:

  *(v27 + v34) = v28;
  return v26;
}

uint64_t sub_100237490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002374F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D58F8, &unk_1004E9190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100237564()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023759C(uint64_t a1)
{
  v2 = type metadata accessor for Activity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002375F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023766C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  if (v9)
  {
    while (1)
    {
LABEL_12:
      v16 = __clz(__rbit64(v9)) | (v12 << 6);
      v17 = *(*(a2 + 56) + 8 * v16);
      if (v17 <= a1)
      {
        v14 = a1 - v17;
        if (__OFSUB__(a1, v17))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (__OFSUB__(v17, a1))
        {
          goto LABEL_26;
        }

        v14 = a1 - v17;
        if (__OFSUB__(0, v17 - a1))
        {
          goto LABEL_27;
        }
      }

      v9 &= v9 - 1;
      if (v14 / 1000000000.0 >= a3)
      {
        v18 = *(*(a2 + 48) + 4 * v16);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001EC450(0, *(v13 + 2) + 1, 1, v13);
          v13 = result;
        }

        v19 = *(v13 + 2);
        v20 = *(v13 + 3);
        v21 = v19 + 1;
        if (v19 >= v20 >> 1)
        {
          v25 = v19 + 1;
          v22 = v13;
          v23 = *(v13 + 2);
          result = sub_1001EC450((v20 > 1), v19 + 1, 1, v22);
          v19 = v23;
          v21 = v25;
          v13 = result;
        }

        *(v13 + 2) = v21;
        *&v13[4 * v19 + 32] = v18;
        if (!v9)
        {
          break;
        }
      }

      else if (!v9)
      {
        break;
      }
    }
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      v24 = sub_10023A1BC(v13);

      return v24;
    }

    v9 = *(v6 + 8 * v15);
    ++v12;
    if (v9)
    {
      v12 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}