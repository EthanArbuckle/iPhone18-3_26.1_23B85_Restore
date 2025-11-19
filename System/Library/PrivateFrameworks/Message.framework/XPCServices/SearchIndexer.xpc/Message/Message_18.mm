uint64_t sub_10013140C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_100132664();
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v54 = result;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    while (1)
    {
      v10 = v3;
LABEL_8:
      v11 = *(v54 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8))));
      v12 = *v11;
      v55 = *(v11 + 8);
      memcpy(v60, __src, sizeof(v60));
      v13 = LOBYTE(v60[3]);
      v14 = BYTE1(v60[3]);
      v15 = v60[4];
      v53 = LOBYTE(v60[5]);
      v16 = BYTE2(v60[2]);
      v17 = v60[7];
      v52 = v60[6];
      v57 = v12;

      v18 = sub_100166D28();
      v19 = v18;
      v59 = v16;
      if (v15 != 3 && v15 != 2)
      {
        break;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0x100000000000000;
      v23 = &_mh_execute_header;
      v24 = 1;
      v25 = 512;
      v26 = 0x1000000;
      v27 = v57;
LABEL_82:
      v8 &= v8 - 1;
      if (v60[24])
      {
        v42 = v60[22];
        v41 = v60[23];
        v43 = v60[21];
        v58 = v60[21];
        if (v59)
        {
          v44 = 0x1000000000000;
        }

        else
        {
          v44 = 0;
        }

        v45 = v20 | v25 | v24 | v26 | v23 | v21 | v22;

        sub_1000BE614(&v58, v27, v55, 0, a1 & 0x101010101FFFF01, v45 | v44);

        result = sub_100020D58(v43, v42, v41, 1);
        v46 = v58;
        *(__src + 22) = 0;
        *(__src + 23) = 0;
        *(__src + 21) = v46;
        *(__src + 192) = 1;
        v3 = v10;
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      else
      {

        v3 = v10;
        if (!v8)
        {
          goto LABEL_5;
        }
      }
    }

    v28 = sub_100166E18(v18);
    if ((v14 & 1) == 0)
    {
      if (v15 == 1)
      {
        if (v13)
        {
          if (v13 == 1)
          {
            v29 = 0;
            v30 = &_mh_execute_header;
            v31 = 512;
LABEL_91:
            v47 = v31;
            goto LABEL_26;
          }

LABEL_90:
          v29 = 0;
          v30 = 0;
          v13 = 1;
          v31 = 256;
          goto LABEL_91;
        }
      }

      else if (!v15 && v13)
      {
        if (v13 != 1)
        {
          v13 = 0;
          v47 = 0;
          v29 = 0;
          v30 = 0;
          goto LABEL_26;
        }

        goto LABEL_90;
      }
    }

    v13 = (v28 & 1) == 0;
    if (v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = &_mh_execute_header;
    }

    v32 = 512;
    if (v28)
    {
      v32 = 0;
    }

    v47 = v32;
    v29 = (v28 & 1) == 0;
LABEL_26:
    v33 = sub_100013AD0(&off_100598658, v17);
    if (v33)
    {
      v34 = v13;
    }

    else
    {
      v34 = 1;
    }

    v35 = (v33 & 1) == 0 || v29;
    v48 = v35;
    v49 = v34;
    v50 = sub_100166E18(v19);
    v36 = sub_100013CF4(v17);

    v37 = v36 ^ 1;
    if (v36 & 1) == 0 && (v14)
    {
      v37 = sub_100166E18(v19);
      v36 = v37 ^ 1;
    }

    v38 = *(v19 + 16);

    v39 = (v38 == 0) & v14;
    if (v53 <= 1)
    {
      v23 = v30;
      if (v53)
      {
        v20 = 0;
        v26 = 0;
        v25 = v47;
        if (v52 >= 3989)
        {
          v25 = 512;
        }

        v40 = v39 == 0;
        v22 = 0x100000000000000;
        if (v40)
        {
          v22 = 0;
        }

        LODWORD(v24) = v49;
        v21 = 0x10000000000;
        if ((v50 & 1) == 0)
        {
          v21 = 0;
        }

        v27 = v57;
        if ((v48 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v20 = 0;
        v40 = v39 == 0;
        v22 = 0x100000000000000;
        if (v40)
        {
          v22 = 0;
        }

        v21 = 0x10000000000;
        if ((v50 & 1) == 0)
        {
          v21 = 0;
        }

        LODWORD(v24) = 1;
        v25 = 512;
        v27 = v57;
      }

      goto LABEL_77;
    }

    v23 = v30;
    if (v53 == 2)
    {
      v20 = 0x10000;
      if ((v37 & 1) == 0)
      {
        v20 = 0;
      }

      if ((v36 & 1) == 0)
      {
        v20 = 0x20000;
      }

      v25 = v47;
      if (v52 >= 3989)
      {
        v25 = 512;
      }

      v40 = v39 == 0;
      v22 = 0x100000000000000;
      if (v40)
      {
        v22 = 0;
      }

      v21 = 0x10000000000;
      if ((v50 & 1) == 0)
      {
        v21 = 0;
      }

      if (v48)
      {
        v27 = v57;
LABEL_76:
        LODWORD(v24) = v49;
LABEL_77:
        v26 = 0x1000000;
LABEL_81:
        v24 = v24;
        goto LABEL_82;
      }

      v26 = 0;
      v27 = v57;
    }

    else
    {
      v20 = 0x10000;
      if ((v37 & 1) == 0)
      {
        v20 = 0;
      }

      v25 = v47;
      if (v52 >= 3989)
      {
        v25 = 512;
      }

      v40 = v39 == 0;
      v22 = 0x100000000000000;
      if (v40)
      {
        v22 = 0;
      }

      v21 = 0x10000000000;
      if ((v50 & 1) == 0)
      {
        v21 = 0;
      }

      v27 = v57;
      if (v48)
      {
        goto LABEL_76;
      }

      v26 = 0;
    }

    LODWORD(v24) = v49;
    goto LABEL_81;
  }

  while (1)
  {
LABEL_5:
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      goto LABEL_8;
    }
  }
}

void sub_1001318D0(os_log_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v67 = a2;
  v66 = type metadata accessor for State.Logger();
  v7 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a3;
  memcpy(v78, a3, sizeof(v78));
  v70 = v78[32];
  v9 = LOBYTE(v78[3]);
  v10 = BYTE1(v78[3]);
  v11 = v78[4];
  v12 = LOBYTE(v78[5]);
  v13 = v78[6];
  v14 = v78[7];

  v15 = sub_100166D28();
  v16 = v15;
  if ((v11 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v64 = v13;
    v18 = sub_100166E18(v15);
    v19 = v18;
    v65 = a1;
    if ((v10 & 1) == 0)
    {
      if (v11 == 1)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            v19 = 0;
            v20 = 0;
            v21 = 2;
            goto LABEL_16;
          }

          goto LABEL_61;
        }
      }

      else if (!v11 && v9)
      {
        if (v9 != 1)
        {
          v20 = 0;
          v21 = 0;
          v19 = 1;
          goto LABEL_16;
        }

LABEL_61:
        v20 = 0;
        v19 = 1;
        v21 = 1;
        goto LABEL_16;
      }
    }

    v20 = v18 ^ 1;
    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = 2;
    }

LABEL_16:
    v22 = sub_100013AD0(&off_100598658, v14) ^ 1 | v20;
    sub_100166E18(v16);
    v23 = sub_100013CF4(v14);

    if (v23 & 1) == 0 && (v10)
    {
      sub_100166E18(v16);
    }

    if (v12)
    {
      v24 = v22;
    }

    else
    {
      v24 = 1;
    }

    if (v12)
    {
      v25 = v21;
    }

    else
    {
      v25 = 2;
    }

    if (v12 <= 1)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    if (v12 <= 1)
    {
      v27 = v25;
    }

    else
    {
      v27 = v21;
    }

    a1 = v65;
    v29 = v64 < 3989 && v27 != 2;
    v17 = v70;
    if (((v19 | v29) & 1) != 0 || (v26 & 1) == 0 || (v10 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v17 = v70;
  if ((v10 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_40:
  v30 = *(a4 + 272);
  v31 = *(a4 + 280);
  v32 = *(a4 + 264);

  v33 = sub_100121E04(v32, v30);

  v34 = v33[2];
  if (!v34)
  {

LABEL_45:

    *(v69 + 32) = _swiftEmptySetSingleton;
    return;
  }

  if (v34 <= a1[2].isa >> 3)
  {
    *&v74 = a1;

    sub_10015CC4C(v33);

    v35 = v74;
  }

  else
  {

    v35 = sub_10015FC1C(v33, a1);
  }

  v36 = v35 + 7;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v35[7];
  v40 = (v37 + 63) >> 6;

  v41 = 0;
  *&v42 = 68158979;
  v61 = v42;
  v43 = v68;
  v63 = v35;
  while (v39)
  {
LABEL_56:
    v45 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v46 = v35[6] + ((v41 << 10) | (16 * v45));
    v47 = *v46;
    v48 = *(v46 + 8);
    if ((sub_100011B00(*v46, v48, v17) & 1) == 0)
    {
      v49 = *(v69 + 184);
      v50 = *(v69 + 216);
      v76 = *(v69 + 200);
      v77[0] = v50;
      *(v77 + 12) = *(v69 + 228);
      v74 = *(v69 + 168);
      v75 = v49;
      LODWORD(v64) = sub_1000BAD00(v47, v48);
      sub_100142970(v67, v43, type metadata accessor for State.Logger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v51 = v43;
      v52 = sub_1004A4A54();
      v53 = sub_1004A6034();

      v65 = v52;
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v73 = v62;
        *v54 = v61;
        *(v54 + 4) = 2;
        *(v54 + 8) = 256;
        v55 = *(v68 + *(v66 + 20));
        sub_1001429D8(v68, type metadata accessor for State.Logger);
        *(v54 + 10) = v55;
        *(v54 + 11) = 1040;
        *(v54 + 13) = 2;
        *(v54 + 17) = 512;
        *(v54 + 19) = v64;
        *(v54 + 21) = 2160;
        *(v54 + 23) = 0x786F626C69616DLL;
        *(v54 + 31) = 2085;
        v71 = v47;
        v72 = v48;
        v56 = sub_1004A5824();
        v58 = sub_10015BA6C(v56, v57, &v73);
        v43 = v68;

        *(v54 + 33) = v58;
        v59 = v53;
        v60 = v65;
        _os_log_impl(&_mh_execute_header, v65, v59, "[%.*hhx] [Background] Skipping mailbox {%.*hx} '%{sensitive,mask.mailbox}s' until next sync.", v54, 0x29u);
        sub_1000197E0(v62);

        v17 = v70;

        v35 = v63;
      }

      else
      {
        sub_1001429D8(v51, type metadata accessor for State.Logger);

        v35 = v63;
        v43 = v51;
        v17 = v70;
      }
    }
  }

  while (1)
  {
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v44 >= v40)
    {

      sub_100080EB4(v35);
      return;
    }

    v39 = v36[v44];
    ++v41;
    if (v39)
    {
      v41 = v44;
      goto LABEL_56;
    }
  }

  __break(1u);
}

uint64_t sub_100131EB0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  LODWORD(v8) = a4;
  v50 = type metadata accessor for State.Logger();
  v12 = *(*(v50 - 8) + 64);
  v13 = __chkstk_darwin(v50);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v49 = &v47 - v17;
  __chkstk_darwin(v16);
  v19 = &v47 - v18;
  v20 = *(v5 + 256);

  *(v5 + 256) = _swiftEmptySetSingleton;
  v21 = static MonotonicTime.now()();

  v22 = *(v5 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v52 = *(v5 + 64);
  sub_10001D314(a2, a3, v8, v21, a1, isUniquelyReferenced_nonNull_native);
  *(v5 + 64) = v52;
  v24 = *(v5 + 184);
  v25 = *(v5 + 216);
  v54 = *(v5 + 200);
  v55[0] = v25;
  *(v55 + 12) = *(v5 + 228);
  v52 = *(v5 + 168);
  v53 = v24;
  v26 = sub_1000B7A20();
  v51 = a1;
  LOBYTE(v21) = sub_10001296C(a1, v26);

  if (v21)
  {
    sub_100142970(a5, v19, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v27 = sub_1004A4A54();
    v28 = sub_1004A6014();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v47 = v8;
      v8 = v29;
      *v29 = 68158208;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = *(v50 + 20);
      v48 = a2;
      v31 = v19[v30];
      sub_1001429D8(v19, type metadata accessor for State.Logger);
      *(v8 + 10) = v31;
      a2 = v48;
      *(v8 + 11) = 1024;
      *(v8 + 13) = v51;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%.*hhx] Requesting sync with ID that already exists: #%u", v8, 0x11u);
      LOBYTE(v8) = v47;
    }

    else
    {
      sub_1001429D8(v19, type metadata accessor for State.Logger);
    }
  }

  if (a2 != 3 || a3)
  {
    sub_1000BC63C(v51, a2, a3, v8 & 1, 0, a5);
  }

  else
  {
    v32 = v49;
    sub_100142970(a5, v49, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v33 = sub_1004A4A54();
    v34 = sub_1004A6014();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 68158208;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      v36 = v8;
      v37 = *(v32 + *(v50 + 20));
      sub_1001429D8(v32, type metadata accessor for State.Logger);
      *(v35 + 10) = v37;
      LOBYTE(v8) = v36;
      *(v35 + 11) = 1024;
      *(v35 + 13) = v51;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%.*hhx] Ignoring push sync #%u without mailboxes.", v35, 0x11u);
    }

    else
    {
      sub_1001429D8(v32, type metadata accessor for State.Logger);
    }
  }

  v38 = *(v6 + 128);
  v39 = *(v6 + 136);
  v40 = static MonotonicTime.now()();
  result = sub_10010E4CC(v38, v39, v40, a2, v8 & 1);
  if (result)
  {
    *(v6 + 137) = 1;
  }

  else
  {
    sub_100142970(a5, v15, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v42 = sub_1004A4A54();
    v43 = sub_1004A6034();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 68157952;
      *(v44 + 4) = 2;
      *(v44 + 8) = 256;
      v45 = v15;
      v46 = v15[*(v50 + 20)];
      sub_1001429D8(v45, type metadata accessor for State.Logger);
      *(v44 + 10) = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%.*hhx] Skipping update of mailbox list for sync.", v44, 0xBu);
    }

    else
    {
      sub_1001429D8(v15, type metadata accessor for State.Logger);
    }

    return sub_10012D6A8(a5);
  }

  return result;
}

uint64_t sub_1001323F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 81))
  {
    result = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = a1[5];
    v4 = *(a1 + 2);
    v6 = *a1;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void *sub_10013244C(Swift::Int a1)
{
  result = _swiftEmptySetSingleton;
  if (*(v1 + 192))
  {
    v4 = *(v1 + 168);
    v30 = _swiftEmptySetSingleton;
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 32);
      do
      {
        v7 = *v6;
        v8 = v6[2];
        v20 = v6[1];
        v21 = v8;
        v19 = v7;
        v9 = v6[3];
        v10 = v6[4];
        v11 = v6[6];
        v24 = v6[5];
        v25 = v11;
        v22 = v9;
        v23 = v10;
        v12 = v6[7];
        v13 = v6[8];
        v14 = v6[10];
        v28 = v6[9];
        v29 = v14;
        v26 = v12;
        v27 = v13;
        v15 = *(&v13 + 1);
        sub_10000E08C(&v19, v18);
        if (sub_10012DDBC(a1, v15))
        {
          sub_10000E0E8(&v19);
        }

        else
        {
          v16 = v20;
          v17 = DWORD2(v20);

          sub_100088220(v18, v16, v17);
          sub_10000E0E8(&v19);
        }

        v6 += 11;
        --v5;
      }

      while (v5);
      return v30;
    }
  }

  return result;
}

void *sub_100132554()
{
  result = _swiftEmptySetSingleton;
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v29 = _swiftEmptySetSingleton;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 32);
      do
      {
        v5 = *v4;
        v6 = v4[2];
        v19 = v4[1];
        v20 = v6;
        v18 = v5;
        v7 = v4[3];
        v8 = v4[4];
        v9 = v4[6];
        v23 = v4[5];
        v24 = v9;
        v21 = v7;
        v22 = v8;
        v10 = v4[7];
        v11 = v4[8];
        v12 = v4[10];
        v27 = v4[9];
        v28 = v12;
        v25 = v10;
        v26 = v11;
        v13 = v19;
        v14 = DWORD2(v19);
        v15 = v23;
        v16 = *(&v22 + 1);
        sub_10000E08C(&v18, v17);
        if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v16, v15, 0, 0))
        {
          sub_10000E0E8(&v18);
        }

        else
        {

          sub_100088220(v17, v13, v14);
          sub_10000E0E8(&v18);
        }

        v4 += 11;
        --v3;
      }

      while (v3);
      return v29;
    }
  }

  return result;
}

void *sub_100132664()
{
  result = _swiftEmptySetSingleton;
  if (*(v0 + 192))
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

uint64_t sub_10013270C(uint64_t a1)
{
  v3 = *(v1 + 64);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100142138;
  *(v5 + 24) = v4;
  swift_getKeyPath();
  sub_1000CB72C();
  swift_bridgeObjectRetain_n();

  result = sub_1004A5D64();
  v7 = 0;
  v50 = result;
  v8 = v3;
  v10 = v3 + 64;
  v9 = *(v3 + 64);
  v11 = -1 << *(v3 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v45 = v8;
  while (v13)
  {
LABEL_11:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = v16 | (v7 << 6);
    v18 = *(v8 + 56) + 32 * v17;
    if ((*v18 & 0xFE) == 2)
    {
      v19 = *(*(v8 + 48) + 4 * v17);
      v20 = *(v18 + 24);
      if (v20 <= a1)
      {
        v21 = a1 - v20;
        if (__OFSUB__(a1, v20))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (__OFSUB__(v20, a1))
        {
          goto LABEL_48;
        }

        v21 = a1 - v20;
        if (__OFSUB__(0, v20 - a1))
        {
          goto LABEL_49;
        }
      }

      if (v21 / 1000000000.0 > 60.0)
      {
        result = sub_100088204(&v49, v19);
        v8 = v45;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v15 >= ((63 - v11) >> 6))
    {
      break;
    }

    v13 = *(v10 + 8 * v15);
    ++v14;
    if (v13)
    {
      v7 = v15;
      goto LABEL_11;
    }
  }

  sub_100020D08();

  v22 = v50;
  v23 = v50 + 56;
  v24 = 1 << *(v50 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v50 + 56);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  v29 = v46;
  v44 = v22;
  while (v26)
  {
LABEL_30:
    v32 = *(*(v22 + 48) + ((v28 << 8) | (4 * __clz(__rbit64(v26)))));
    v33 = *(v29 + 168);
    v48 = *(v29 + 176);
    v34 = *(v29 + 184);
    v47 = *(v29 + 192);
    if (v47)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v35 = v33;
      if (result)
      {
        v36 = *(v33 + 16);
        if (v36)
        {
          goto LABEL_33;
        }
      }

      else
      {
        result = sub_100139804(v33);
        v35 = result;
        v36 = *(result + 16);
        if (v36)
        {
LABEL_33:
          v37 = 0;
          v38 = v35 + 168;
          while (v37 < v36)
          {
            result = sub_10013FDD4(v32, sub_10008E7C4);
            ++v37;
            v36 = *(v35 + 16);
            v38 += 176;
            if (v37 == v36)
            {
              goto LABEL_36;
            }
          }

          __break(1u);
          goto LABEL_45;
        }
      }

LABEL_36:
      result = sub_100020D58(v33, v48, v34, 1);
      v30 = 0;
      v34 = 0;
      v33 = v35;
      v29 = v46;
      v22 = v44;
    }

    else
    {
      result = sub_100067004(v32);
      if (v39)
      {
        v40 = result;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v33;
        v42 = v33;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10013B74C();
          v42 = v50;
        }

        v43 = *(*(v42 + 56) + 24 * v40 + 8);

        sub_10013D8C8(v40, v42);
        v30 = v48;
        result = sub_100020D58(v33, v48, v34, 0);
        v33 = v42;
      }

      else
      {
        v30 = v48;
      }
    }

    v26 &= v26 - 1;
    *(v29 + 168) = v33;
    *(v29 + 176) = v30;
    *(v29 + 184) = v34;
    *(v29 + 192) = v47;
  }

  while (1)
  {
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v31 >= v27)
    {

      return v22;
    }

    v26 = *(v23 + 8 * v31);
    ++v28;
    if (v26)
    {
      v28 = v31;
      goto LABEL_30;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

BOOL sub_100132B60(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0xFE) != 2)
  {
    return 0;
  }

  v6 = a6 - a5;
  if (a6 >= a5)
  {
    if (!__OFSUB__(a6, a5))
    {
      return v6 / 1000000000.0 > 60.0;
    }
  }

  else
  {
    if (!__OFSUB__(a5, a6))
    {
      v6 = a6 - a5;
      if (!__OFSUB__(0, a5 - a6))
      {
        return v6 / 1000000000.0 > 60.0;
      }

      __break(1u);
      return 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100132BC4(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = (result + 32);
  while (1)
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      break;
    }

    if (*(v4 + 24) >> 60 == 3)
    {
      type metadata accessor for UntaggedResponse(0);
      swift_projectBox();
      result = swift_getEnumCaseMultiPayload();
      if (result == 7)
      {
        goto LABEL_15;
      }
    }

LABEL_3:
    if (!--v2)
    {
      return result;
    }
  }

  if (v6 != 1)
  {
    goto LABEL_3;
  }

  v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  if ((*(v7 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = (*(v7 + 16) >> 59) & 0x1E | (*(v7 + 16) >> 2) & 1;
  if (v8 != 2 && v8 != 4)
  {
    goto LABEL_3;
  }

LABEL_15:
  v10 = *(v1 + 120);
  v11 = _swiftEmptySetSingleton;
  if (!v10)
  {
    goto LABEL_35;
  }

  v12 = *(v10 + 64);
  v40 = _swiftEmptySetSingleton;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 < v16)
      {
        v15 = *(v10 + 64 + 8 * v18);
        ++v17;
        if (!v15)
        {
          continue;
        }

LABEL_26:
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v20 = v19 | (v18 << 6);
        v21 = *(v10 + 48) + 16 * v20;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v10 + 56) + 72 * v20;
        v31[0] = *v24;
        v25 = *(v24 + 16);
        v26 = *(v24 + 32);
        v27 = *(v24 + 48);
        v32 = *(v24 + 64);
        v31[2] = v26;
        v31[3] = v27;
        v31[1] = v25;
        v33 = v22;
        v34 = v23;
        v37 = v26;
        v38 = v27;
        v39 = v32;
        v35 = v31[0];
        v36 = v25;

        sub_100063BD4(v31, v30);
        v28 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
        v29 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
        if (v28)
        {
          if ((v29 & ~v28) == 0)
          {
LABEL_31:
            if ((HIWORD(v31[0]) & v28) != 0)
            {
              sub_10000E268(&v33, v30, &qword_1005D14D0, &qword_1004D68F0);
              sub_100063C30(v31);
              sub_100088220(v30, v22, v23);
              sub_100025F40(&v33, &qword_1005D14D0, &qword_1004D68F0);

              v17 = v18;
              if (!v15)
              {
                continue;
              }

              goto LABEL_25;
            }

LABEL_20:
            result = sub_100025F40(&v33, &qword_1005D14D0, &qword_1004D68F0);
            v17 = v18;
            if (!v15)
            {
              continue;
            }

LABEL_25:
            v18 = v17;
            goto LABEL_26;
          }
        }

        else if (!v29)
        {
          goto LABEL_20;
        }

        LOWORD(v28) = v29 | v28;
        goto LABEL_31;
      }

      v11 = v40;
LABEL_35:
      sub_1000BD394(v11);
    }

    return result;
  }
}

void sub_100132E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v178 = a2;
  v203 = type metadata accessor for TaskHistory.Running(0);
  v176 = *(v203 - 8);
  v6 = *(v176 + 64);
  v7 = __chkstk_darwin(v203);
  v9 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = (&v162 - v11);
  v13 = __chkstk_darwin(v10);
  v199 = &v162 - v14;
  __chkstk_darwin(v13);
  v202 = &v162 - v15;
  v184 = type metadata accessor for RunningTask();
  v173 = *(v184 - 8);
  v16 = *(v173 + 64);
  __chkstk_darwin(v184);
  v18 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for State.Logger();
  v19 = *(*(v174 - 8) + 64);
  v20 = __chkstk_darwin(v174);
  v22 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v24 = __chkstk_darwin(v23);
  v165 = &v162 - v25;
  __chkstk_darwin(v24);
  v191 = *(v4 + 64);
  if (*(v191 + 16))
  {
    v164 = &v162 - v26;
    v177 = v27;
    v167 = v4;
    v28 = static SyncRequest.Kind.allCases.getter();
    v170 = v28[2];
    if (v170)
    {
      v30 = 0;
      v166 = 0;
      v182 = v191 + 64;
      v169 = (v28 + 4);
      *&v29 = 68159234;
      v163 = v29;
      *&v29 = 68159747;
      v171 = v29;
      *&v29 = 68158722;
      v162 = v29;
      v198 = v12;
      v185 = v18;
      v183 = a4;
      v201 = v9;
      v168 = v28;
LABEL_6:
      if (v30 >= v28[2])
      {
        goto LABEL_112;
      }

      v31 = *(v169 + v30);
      v175 = (v30 + 1);
      v220 = _swiftEmptySetSingleton;
      v32 = 1 << *(v191 + 32);
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v34 = v33 & *(v191 + 64);
      swift_beginAccess();

      v35 = 0;
LABEL_12:
      if (v34)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v36 >= ((v32 + 63) >> 6))
        {
          swift_endAccess();

          if (!v220[2])
          {
            goto LABEL_4;
          }

          v172 = v220;
          if (*(v167 + 192))
          {
            v41 = *(v167 + 168);
            v42 = v166;
            v200 = sub_10012CB6C(0, v41, &v220);
            v166 = v42;
            v43 = *(v41 + 16);
            v44 = v165;
            sub_100142970(a4, v165, type metadata accessor for State.Logger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v45 = sub_1004A4A54();
            v46 = sub_1004A6034();
            v47 = os_log_type_enabled(v45, v46);
            v180 = v43;
            if (v47)
            {
              v48 = swift_slowAlloc();
              v197 = v41;
              v49 = v44;
              v50 = v48;
              v196 = swift_slowAlloc();
              *&v209 = v196;
              *v50 = v163;
              *(v50 + 4) = 2;
              *(v50 + 8) = 256;
              v51 = *(v49 + *(v174 + 20));
              sub_1001429D8(v49, type metadata accessor for State.Logger);
              *(v50 + 10) = v51;
              v12 = v198;
              *(v50 + 11) = 2082;
              v52 = sub_1004A6754();
              v54 = sub_10015BA6C(v52, v53, &v209);

              *(v50 + 13) = v54;
              *(v50 + 21) = 2048;
              *(v50 + 23) = v172[2];
              *(v50 + 31) = 2082;

              v56 = sub_100134BF8(v55);
              v58 = v57;

              v59 = sub_10015BA6C(v56, v58, &v209);
              v41 = v197;

              *(v50 + 33) = v59;
              *(v50 + 41) = 2048;
              *(v50 + 43) = v200;
              *(v50 + 51) = 2048;
              v43 = v180;
              *(v50 + 53) = v180;
              _os_log_impl(&_mh_execute_header, v45, v46, "[%.*hhx] Sync kind '%{public}s': %ld running sync request(s) {%{public}s} with total of %ld of %ld mailbox(es).", v50, 0x3Du);
              swift_arrayDestroy();
              v18 = v185;
            }

            else
            {
              sub_1001429D8(v44, type metadata accessor for State.Logger);
            }

            v73 = v201;
            if (v43)
            {
              v74 = v43;
              v75 = 0;
              v76 = v41 + 32;
              v179 = v41 + 32;
              do
              {
                v77 = (v76 + 176 * v75);
                v78 = *v77;
                v79 = v77[2];
                v210 = v77[1];
                v211 = v79;
                v209 = v78;
                v80 = v77[3];
                v81 = v77[4];
                v82 = v77[6];
                v214 = v77[5];
                v215 = v82;
                v212 = v80;
                v213 = v81;
                v83 = v77[7];
                v84 = v77[8];
                v85 = v77[10];
                v218 = v77[9];
                v219 = v85;
                v216 = v83;
                v217 = v84;
                if (*(*(&v84 + 1) + 16))
                {
                  v86 = v215;
                  if (v215)
                  {
                    v188 = v75;
                    v87 = v210;
                    v88 = DWORD2(v210);
                    v89 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                    swift_beginAccess();
                    v186 = *(v86 + v89);
                    v90 = *(v178 + 16);
                    v192 = v87;
                    if (v90)
                    {
                      v91 = v173;
                      v92 = v178 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
                      sub_10000E08C(&v209, v207);
                      v93 = 0;
                      v200 = *(v91 + 72);
                      v94 = v92;
                      v181 = (v87 + 32);
                      v193 = _swiftEmptyArrayStorage;
                      v194 = v88 | (v88 << 32);
                      v95 = v88;
                      v196 = v90;
                      v197 = v88;
                      v195 = v92;
                      while (1)
                      {
                        sub_100142970(v94 + v200 * v93, v18, type metadata accessor for RunningTask);
                        sub_100117890(v18, v207);
                        if (v208)
                        {
                          if (v208 == 1)
                          {
                            sub_1000B364C(v207, v204);
                            v96 = v205;
                            v97 = v206;
                            sub_10002587C(v204, v205);
                            (*(v97 + 32))(&v221, v96, v97);
                            v225 = v222;
                            v226 = v223;
                            v224 = v221;
                            sub_1000D69D0(&v224);
                            sub_1000197E0(v204);
                            if ((v226 | (v226 << 32)) != v194)
                            {
                              sub_10009DA94(&v225);
                              v90 = v196;
                              v95 = v197;
LABEL_67:
                              v94 = v195;
                              goto LABEL_68;
                            }

                            v98 = *(v225 + 16);
                            v90 = v196;
                            if (v98 != *(v192 + 16))
                            {
                              sub_10009DA94(&v225);
                              v95 = v197;
                              goto LABEL_67;
                            }

                            v95 = v197;
                            v94 = v195;
                            if (!v98 || v225 == v192)
                            {
LABEL_54:
                              sub_10009DA94(&v225);
                              v101 = &v18[*(v184 + 28)];
                              v102 = &v101[*(type metadata accessor for Task.Logger(0) + 20)];
                              v103 = *(v102 + 1);
                              v189 = *(v102 + 2);
                              v190 = v103;

                              v104 = *(v18 + 6);
                              v105 = *(v104 + 16);
                              if (v105)
                              {
                                v106 = *(v176 + 80);
                                v187 = *(v18 + 6);
                                v107 = v104 + ((v106 + 32) & ~v106);
                                v108 = *(v176 + 72);
                                v109 = v107;
                                v110 = _swiftEmptyArrayStorage;
                                do
                                {
                                  v111 = v202;
                                  sub_100142970(v109, v202, type metadata accessor for TaskHistory.Running);
                                  sub_100142A38(v111, v12, type metadata accessor for TaskHistory.Running);
                                  if (swift_getEnumCaseMultiPayload() == 1)
                                  {
                                    sub_1001429D8(v12, type metadata accessor for TaskHistory.Running);
                                  }

                                  else
                                  {
                                    v112 = *v12;
                                    v113 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
                                    sub_1001429D8(v12 + *(v113 + 64), type metadata accessor for ClientCommand);
                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v110 = sub_1000878A0(0, *(v110 + 2) + 1, 1, v110);
                                    }

                                    v115 = *(v110 + 2);
                                    v114 = *(v110 + 3);
                                    if (v115 >= v114 >> 1)
                                    {
                                      v110 = sub_1000878A0((v114 > 1), v115 + 1, 1, v110);
                                    }

                                    *(v110 + 2) = v115 + 1;
                                    *&v110[8 * v115 + 32] = v112;
                                    v73 = v201;
                                    v12 = v198;
                                  }

                                  v109 += v108;
                                  --v105;
                                }

                                while (v105);
                                v116 = *(v187 + 16);
                                if (v116)
                                {
                                  v117 = _swiftEmptyArrayStorage;
                                  do
                                  {
                                    v118 = v199;
                                    sub_100142970(v107, v199, type metadata accessor for TaskHistory.Running);
                                    sub_100142A38(v118, v73, type metadata accessor for TaskHistory.Running);
                                    if (swift_getEnumCaseMultiPayload() == 1)
                                    {
                                      v119 = *v73;
                                      sub_100020EDC(*(v73 + 8));
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        v117 = sub_100087790(0, *(v117 + 2) + 1, 1, v117);
                                      }

                                      v121 = *(v117 + 2);
                                      v120 = *(v117 + 3);
                                      if (v121 >= v120 >> 1)
                                      {
                                        v117 = sub_100087790((v120 > 1), v121 + 1, 1, v117);
                                      }

                                      *(v117 + 2) = v121 + 1;
                                      *&v117[4 * v121 + 32] = v119;
                                      v73 = v201;
                                    }

                                    else
                                    {
                                      sub_1001429D8(v73, type metadata accessor for TaskHistory.Running);
                                    }

                                    v107 += v108;
                                    --v116;
                                  }

                                  while (v116);
                                }

                                else
                                {
                                  v117 = _swiftEmptyArrayStorage;
                                }

                                v18 = v185;
                              }

                              else
                              {
                                v117 = _swiftEmptyArrayStorage;
                                v110 = _swiftEmptyArrayStorage;
                              }

                              sub_1001429D8(v18, type metadata accessor for RunningTask);
                              if (swift_isUniquelyReferenced_nonNull_native())
                              {
                                v122 = v193;
                              }

                              else
                              {
                                v122 = sub_100087684(0, *(v193 + 2) + 1, 1, v193);
                              }

                              v124 = *(v122 + 2);
                              v123 = *(v122 + 3);
                              if (v124 >= v123 >> 1)
                              {
                                v122 = sub_100087684((v123 > 1), v124 + 1, 1, v122);
                              }

                              *(v122 + 2) = v124 + 1;
                              v193 = v122;
                              v125 = &v122[32 * v124];
                              v126 = v189;
                              *(v125 + 4) = v190;
                              *(v125 + 5) = v126;
                              *(v125 + 6) = v110;
                              *(v125 + 7) = v117;
                              v95 = v197;
                              v12 = v198;
                              v94 = v195;
                              v90 = v196;
                              goto LABEL_69;
                            }

                            v99 = (v225 + 32);
                            v100 = v181;
                            while (*v99 == *v100)
                            {
                              ++v99;
                              ++v100;
                              if (!--v98)
                              {
                                goto LABEL_54;
                              }
                            }

                            sub_10009DA94(&v225);
                          }
                        }

                        else
                        {
                          sub_10011D8CC(v207);
                        }

LABEL_68:
                        sub_1001429D8(v18, type metadata accessor for RunningTask);
LABEL_69:
                        if (++v93 == v90)
                        {
                          goto LABEL_92;
                        }
                      }
                    }

                    sub_10000E08C(&v209, v207);
                    v193 = _swiftEmptyArrayStorage;
                    v95 = v88;
LABEL_92:
                    a4 = v183;
                    v127 = v177;
                    sub_100142970(v183, v177, type metadata accessor for State.Logger);
                    variable initialization expression of Engine.isProcessingUpdates();
                    variable initialization expression of Engine.isProcessingUpdates();
                    variable initialization expression of Engine.isProcessingUpdates();
                    sub_10000E08C(&v209, v207);
                    sub_10000E08C(&v209, v207);
                    variable initialization expression of Engine.isProcessingUpdates();
                    variable initialization expression of Engine.isProcessingUpdates();
                    variable initialization expression of Engine.isProcessingUpdates();
                    v128 = v193;

                    sub_10000E08C(&v209, v207);

                    v129 = sub_1004A4A54();
                    v130 = sub_1004A6034();
                    sub_10000E0E8(&v209);
                    if (os_log_type_enabled(v129, v130))
                    {
                      LODWORD(v196) = v130;
                      v131 = swift_slowAlloc();
                      v195 = swift_slowAlloc();
                      v204[0] = v195;
                      *v131 = v171;
                      *(v131 + 4) = 2;
                      *(v131 + 8) = 256;
                      v132 = *(v127 + *(v174 + 20));
                      sub_1001429D8(v127, type metadata accessor for State.Logger);
                      *(v131 + 10) = v132;
                      *(v131 + 11) = 1040;
                      *(v131 + 13) = 2;
                      *(v131 + 17) = 512;
                      sub_10000E0E8(&v209);
                      *(v131 + 19) = WORD6(v219);
                      sub_10000E0E8(&v209);
                      *(v131 + 21) = 2160;
                      *(v131 + 23) = 0x786F626C69616DLL;
                      *(v131 + 31) = 2085;
                      *&v207[0] = v192;
                      DWORD2(v207[0]) = v95;

                      v133 = sub_1004A5824();
                      v135 = sub_10015BA6C(v133, v134, v204);

                      *(v131 + 33) = v135;
                      *(v131 + 41) = 2048;
                      v136 = *(v128 + 2);

                      *(v131 + 43) = v136;

                      *(v131 + 51) = 2082;
                      v137 = ConnectionID.debugDescription.getter(v186);
                      v139 = sub_10015BA6C(v137, v138, v204);

                      *(v131 + 53) = v139;
                      v200 = v131;
                      *(v131 + 61) = 2082;
                      v140 = *(v128 + 2);
                      if (v140)
                      {
                        v197 = v129;
                        *&v207[0] = _swiftEmptyArrayStorage;
                        sub_100091A08(0, v140, 0);
                        v141 = *&v207[0];
                        v142 = (v128 + 56);
                        do
                        {
                          v143 = *(v142 - 3);
                          v144 = *(v142 - 2);
                          v145 = *(v142 - 1);
                          v146 = *v142;

                          v147 = sub_10013471C(v143, v144, v145, v146);
                          v149 = v148;

                          *&v207[0] = v141;
                          v151 = v141[2];
                          v150 = v141[3];
                          if (v151 >= v150 >> 1)
                          {
                            sub_100091A08((v150 > 1), v151 + 1, 1);
                            v141 = *&v207[0];
                          }

                          v141[2] = v151 + 1;
                          v152 = &v141[2 * v151];
                          v152[4] = v147;
                          v152[5] = v149;
                          v142 += 4;
                          --v140;
                        }

                        while (v140);

                        a4 = v183;
                        v129 = v197;
                        v12 = v198;
                      }

                      else
                      {

                        v141 = _swiftEmptyArrayStorage;
                      }

                      *&v207[0] = v141;
                      sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
                      sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
                      v153 = sub_1004A5614();
                      v155 = v154;

                      v156 = sub_10015BA6C(v153, v155, v204);

                      v157 = v200;
                      *(v200 + 63) = v156;
                      _os_log_impl(&_mh_execute_header, v129, v196, "[%.*hhx] [{%.*hx}-%{sensitive,mask.mailbox}s] Is running %ld task(s) on %{public}s: %{public}s", v157, 0x47u);
                      swift_arrayDestroy();

                      sub_10000E0E8(&v209);
                      v73 = v201;
                      v18 = v185;
                    }

                    else
                    {

                      sub_10000E0E8(&v209);
                      sub_1001429D8(v127, type metadata accessor for State.Logger);

                      sub_10000E0E8(&v209);

                      sub_10000E0E8(&v209);
                    }

                    v76 = v179;
                    v74 = v180;
                    v75 = v188;
                  }
                }

                ++v75;
              }

              while (v75 != v74);
            }

LABEL_4:
          }

          else
          {
            v60 = v164;
            sub_100142970(a4, v164, type metadata accessor for State.Logger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v61 = sub_1004A4A54();
            v62 = sub_1004A6034();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              *&v209 = swift_slowAlloc();
              *v63 = v162;
              *(v63 + 4) = 2;
              *(v63 + 8) = 256;
              v64 = *(v60 + *(v174 + 20));
              sub_1001429D8(v60, type metadata accessor for State.Logger);
              *(v63 + 10) = v64;
              v12 = v198;
              *(v63 + 11) = 2082;
              v65 = sub_1004A6754();
              v67 = sub_10015BA6C(v65, v66, &v209);

              *(v63 + 13) = v67;
              *(v63 + 21) = 2048;
              *(v63 + 23) = v172[2];
              *(v63 + 31) = 2082;

              v69 = sub_100134BF8(v68);
              v71 = v70;

              v72 = sub_10015BA6C(v69, v71, &v209);

              *(v63 + 33) = v72;
              _os_log_impl(&_mh_execute_header, v61, v62, "[%.*hhx] Sync kind '%{public}s': %ld running sync request(s) {%{public}s}. Mailbox(es) are unknown.", v63, 0x29u);
              swift_arrayDestroy();
              v18 = v185;
            }

            else
            {
              sub_1001429D8(v60, type metadata accessor for State.Logger);
            }
          }

          v30 = v175;
          v28 = v168;
          if (v175 == v170)
          {
            goto LABEL_107;
          }

          goto LABEL_6;
        }

        v34 = *(v182 + 8 * v36);
        ++v35;
        if (v34)
        {
          v35 = v36;
LABEL_17:
          v37 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          v38 = v37 | (v35 << 6);
          v39 = *(*(v191 + 48) + 4 * v38);
          v40 = *(*(v191 + 56) + 32 * v38);
          switch(v40)
          {
            case 2:
              if (v31 != 2)
              {
                goto LABEL_12;
              }

              break;
            case 3:
              if (v31 != 3)
              {
                goto LABEL_12;
              }

              break;
            case 4:
              if (v31 == 4)
              {
                break;
              }

              goto LABEL_12;
            default:
              if (v31 - 2) < 3 || ((v40 ^ v31))
              {
                goto LABEL_12;
              }

              break;
          }

          sub_100088204(v207, v39);
          goto LABEL_12;
        }
      }

      __break(1u);
      __break(1u);
LABEL_112:
      __break(1u);
    }

    else
    {

LABEL_107:
    }
  }

  else
  {
    sub_100142970(a4, v22, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v158 = sub_1004A4A54();
    v159 = sub_1004A6034();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 68157952;
      *(v160 + 4) = 2;
      *(v160 + 8) = 256;
      v161 = v22[*(v174 + 20)];
      sub_1001429D8(v22, type metadata accessor for State.Logger);
      *(v160 + 10) = v161;
      _os_log_impl(&_mh_execute_header, v158, v159, "[%.*hhx] No running sync requests.", v160, 0xBu);
    }

    else
    {
      sub_1001429D8(v22, type metadata accessor for State.Logger);
    }
  }
}

uint64_t sub_100134318(uint64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for State.Logger();
  v5 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 64);
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = 1 << *(*(v2 + 64) + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  *&v18 = 68158722;
  v40 = v18;
  v42 = a2;
  v44 = result;
  v45 = a1;
  v39 = v7;
  while (v14)
  {
LABEL_11:
    v20 = __clz(__rbit64(v14)) | (v17 << 6);
    v21 = *(*(result + 48) + 4 * v20);
    v22 = (*(result + 56) + 32 * v20);
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = *(v22 + 3);
    if (v25 <= a1)
    {
      v26 = a1 - v25;
      if (__OFSUB__(a1, v25))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (__OFSUB__(v25, a1))
      {
        goto LABEL_29;
      }

      v26 = a1 - v25;
      if (__OFSUB__(0, v25 - a1))
      {
        goto LABEL_30;
      }
    }

    v27 = v26 / 1000000000.0;
    if (COERCE__INT64(fabs(v27)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_25;
    }

    if (v27 <= -9.22337204e18)
    {
      goto LABEL_26;
    }

    if (v27 >= 9.22337204e18)
    {
      goto LABEL_27;
    }

    v14 &= v14 - 1;
    v28 = v27;
    if (v27 >= 301)
    {
      v46 = v21;
      v47 = v23;
      sub_100142970(a2, v7, type metadata accessor for State.Logger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v29 = sub_1004A4A54();
      v30 = v7;
      v31 = sub_1004A6034();

      if (os_log_type_enabled(v29, v31))
      {
        v32 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v48 = v43;
        *v32 = v40;
        *(v32 + 4) = 2;
        *(v32 + 8) = 256;
        v33 = v30;
        v34 = *(v30 + *(v41 + 20));
        sub_1001429D8(v33, type metadata accessor for State.Logger);
        *(v32 + 10) = v34;
        *(v32 + 11) = 1024;
        *(v32 + 13) = v46;
        *(v32 + 17) = 2082;

        v35 = sub_1004A6754();
        v37 = sub_10015BA6C(v35, v36, &v48);

        *(v32 + 19) = v37;
        *(v32 + 27) = 2048;
        *(v32 + 29) = v28;
        _os_log_impl(&_mh_execute_header, v29, v31, "[%.*hhx] Sync #%u (%{public}s) still running after %ld seconds.", v32, 0x25u);
        sub_1000197E0(v43);

        a2 = v42;

        a1 = v45;
        v7 = v39;
      }

      else
      {
        sub_1001429D8(v30, type metadata accessor for State.Logger);

        a1 = v45;
        v7 = v30;
      }

      result = v44;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
    }

    v14 = *(v10 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10013471C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6724(33);
  sub_1004A6934();
  v32._countAndFlagsBits = 0x6E616D6D6F63202CLL;
  v32._object = 0xED00007B203A7364;
  sub_1004A5994(v32);
  v6 = *(a3 + 16);
  if (v6)
  {
    sub_100091A08(0, v6, 0);
    v7 = (a3 + 36);
    do
    {
      v29 = *(v7 - 1);
      v30 = *v7;
      sub_1004A6934();
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_100091A08((v8 > 1), v9 + 1, 1);
      }

      v7 += 2;
      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      *(v10 + 4) = 0;
      *(v10 + 5) = 0xE000000000000000;
      --v6;
    }

    while (v6);
  }

  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
  v11 = sub_1004A5614();
  v13 = v12;

  v33._countAndFlagsBits = v11;
  v33._object = v13;
  sub_1004A5994(v33);

  v34._countAndFlagsBits = 0x6F69746361202C7DLL;
  v34._object = 0xED00007B203A736ELL;
  sub_1004A5994(v34);
  v14 = *(a4 + 16);
  if (v14)
  {
    sub_100091A08(0, v14, 0);
    v15 = _swiftEmptyArrayStorage;
    v16 = (a4 + 32);
    sub_1000D40AC();
    do
    {
      v17 = *v16++;
      v18 = sub_1004A5A84();
      v31 = v15;
      v21 = v15[2];
      v20 = v15[3];
      if (v21 >= v20 >> 1)
      {
        v28 = v18;
        v23 = v19;
        sub_100091A08((v20 > 1), v21 + 1, 1);
        v19 = v23;
        v18 = v28;
        v15 = v31;
      }

      v15[2] = v21 + 1;
      v22 = &v15[2 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      --v14;
    }

    while (v14);
  }

  v24 = sub_1004A5614();
  v26 = v25;

  v35._countAndFlagsBits = v24;
  v35._object = v26;
  sub_1004A5994(v35);

  v36._countAndFlagsBits = 125;
  v36._object = 0xE100000000000000;
  sub_1004A5994(v36);
  return 0;
}

Swift::Int sub_100134A90(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100141928(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
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
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100141044(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_100134BC4(char *a1, int64_t a2, char a3)
{
  result = sub_100135274(a1, a2, a3, *v3, &_swift_release);
  *v3 = result;
  return result;
}

uint64_t sub_100134BF8(unint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_1001353A4(*(a1 + 16), 0);
    v6 = sub_1001390AC(&v44, v5 + 8, v4, v3);
    v1 = v45;
    v2 = v46;

    sub_100020D08();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v44 = v5;
  v7 = 0;
  sub_100134A90(&v44);
  v8 = v44;
  v9 = *(v3 + 16);
  if (v9)
  {
    v42 = v44;
    v10 = sub_1001353A4(v9, 0);
    v1 = sub_1001390AC(&v44, v10 + 8, v9, v3);
    v2 = v44;
    v11 = v45;
    v8 = v46;
    v12 = v47;

    sub_100020D08();
    if (v1 != v9)
    {
      __break(1u);
      goto LABEL_38;
    }

    v8 = v42;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v44 = v10;
  sub_100134A90(&v44);
  v11 = v44;
  v12 = *(v44 + 16);
  if (v12 >= 7)
  {
    v14 = 7;
  }

  else
  {
    v14 = *(v44 + 16);
  }

  if (v14 >= *(v8 + 16))
  {

    v32 = _swiftEmptyArrayStorage;
    if (v12)
    {
      v33 = v11 + 8;
      sub_100134BC4(0, v14, 0);
      v32 = _swiftEmptyArrayStorage;
      do
      {
        v34.rawValue = *v33++;
        v44 = 35;
        v45 = 0xE100000000000000;
        v53 = String.init(_:)(v34);
        sub_1004A5994(v53);

        v35 = v44;
        v36 = v45;
        v38 = _swiftEmptyArrayStorage[2];
        v37 = _swiftEmptyArrayStorage[3];
        if (v38 >= v37 >> 1)
        {
          sub_100134BC4((v37 > 1), v38 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v38 + 1;
        v39 = &_swiftEmptyArrayStorage[2 * v38];
        v39[4] = v35;
        v39[5] = v36;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
    if (!v12)
    {
      goto LABEL_29;
    }

    if (v12 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = *(v44 + 16);
    }

    sub_100134BC4(0, v16, 0);
    v15 = _swiftEmptyArrayStorage;
    v17.rawValue = v11[8];
    v44 = 35;
    v45 = 0xE100000000000000;
    v48 = String.init(_:)(v17);
    sub_1004A5994(v48);

    v1 = v44;
    v2 = v45;
    v43 = _swiftEmptyArrayStorage;
    v3 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    v7 = v3 + 1;
    if (v3 >= v13 >> 1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v15[2] = v7;
      v18 = &v15[2 * v3];
      v18[4] = v1;
      v18[5] = v2;
      if (v12 != 1)
      {
        v19.rawValue = v11[9];
        v44 = 35;
        v45 = 0xE100000000000000;
        v49 = String.init(_:)(v19);
        sub_1004A5994(v49);

        v1 = v44;
        v2 = v45;
        v43 = v15;
        v3 = v15[2];
        v20 = v15[3];
        v7 = v3 + 1;
        if (v3 >= v20 >> 1)
        {
          sub_100134BC4((v20 > 1), v3 + 1, 1);
        }

        v15[2] = v7;
        v21 = &v15[2 * v3];
        v21[4] = v1;
        v21[5] = v2;
        if (v12 != 2)
        {
          v22.rawValue = v11[10];
          v44 = 35;
          v45 = 0xE100000000000000;
          v50 = String.init(_:)(v22);
          sub_1004A5994(v50);

          v1 = v44;
          v2 = v45;
          v43 = v15;
          v3 = v15[2];
          v23 = v15[3];
          v7 = v3 + 1;
          if (v3 >= v23 >> 1)
          {
            sub_100134BC4((v23 > 1), v3 + 1, 1);
          }

          v15[2] = v7;
          v24 = &v15[2 * v3];
          v24[4] = v1;
          v24[5] = v2;
          if (v12 != 3)
          {
            v25.rawValue = v11[11];
            v44 = 35;
            v45 = 0xE100000000000000;
            v51 = String.init(_:)(v25);
            sub_1004A5994(v51);

            v12 = v44;
            v1 = v45;
            v43 = v15;
            v3 = v15[2];
            v26 = v15[3];
            v7 = v3 + 1;
            if (v3 >= v26 >> 1)
            {
              sub_100134BC4((v26 > 1), v3 + 1, 1);
            }

            v15[2] = v7;
            v27 = &v15[2 * v3];
            v27[4] = v12;
            v27[5] = v1;
          }
        }
      }

LABEL_29:
      sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004D01D0;
      *(inited + 32) = 10911970;
      *(inited + 40) = 0xA300000000000000;
      v44 = 35;
      v45 = 0xE100000000000000;
      v13 = *(v8 + 16);
      if (v13)
      {
        break;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      sub_100134BC4((v13 > 1), v7, 1);
      v15 = v43;
    }

    v29 = inited;
    v30.rawValue = *(v8 + 4 * v13 + 28);

    v52 = String.init(_:)(v30);
    sub_1004A5994(v52);

    v31 = v45;
    *(v29 + 48) = v44;
    *(v29 + 56) = v31;
    v44 = v15;
    sub_10013516C(v29);
    v32 = v44;
  }

  v44 = v32;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
  v40 = sub_1004A5614();

  return v40;
}

uint64_t sub_10013516C(uint64_t result)
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

  result = sub_100135274(result, v11, 1, v3, &_swift_bridgeObjectRelease);
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

char *sub_100135274(char *result, int64_t a2, char a3, char *a4, void (*a5)(char *))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a5(a4);
  return v12;
}

void *sub_1001353A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005D1498, &qword_1004E93A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_100135428(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005CEEA0, &unk_1004D1D70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_1001354D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005CEF00, &qword_1004D1DD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_100135578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000C9C0(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

char *sub_1001355F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14A8, &unk_1004E2AB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100135700(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEEA0, &unk_1004D1D70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100135828(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100135970(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1670, &qword_1004D6BC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D1678, &qword_1004D6BC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100135AB4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1638, &qword_1004D6B88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D1640, &qword_1004D6B90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100135C48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1680, &qword_1004D6BD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D1688, &qword_1004D6BD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100135E1C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1660, &qword_1004D6BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D1668, &qword_1004D6BB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100135F64(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1580, &qword_1004D6968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D1588, &qword_1004D6970);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100136098(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10013619C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1001362EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D16E0, &qword_1004D6C30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100136404(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1628, &qword_1004D6B78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D0968, &qword_1004D44B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100136538(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D1730, &qword_1004D6C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_100136674(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14F8, &qword_1004D6910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1001367D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CE240, &unk_100509A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001368F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D1760, &qword_1004D6CB0);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100136AA4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 12);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 12 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

size_t sub_100136BF8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
  v16 = *(sub_10000C9C0(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10000C9C0(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_100136E30(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D15B0, &qword_1004D6990);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100136F50(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D15B8, &unk_1005099A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10013705C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D1620, &qword_1004D6B70);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100137174(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF090, &qword_1004D1F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10013729C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1590, &qword_1004D6978);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[24 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 192 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005CF728, &qword_1004D2B90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001373E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1598, &qword_1004D6980);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005CF730, &qword_1004D2B98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100137558(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

void *sub_1001376B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000C9C0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_10013785C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_100137A88(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

char *sub_100137BA4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 8 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

void *sub_100137C9C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D17A8, &qword_1004D6CF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D0458, &qword_1004D3CD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100137E2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D1600, &qword_1004D69D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100137F20(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEEF8, &qword_1004D1DC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100138024(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14E0, &qword_1004D68F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_100138128(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100138264(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_100138370(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14B8, &qword_1004D68D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100138464(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14A0, &qword_1004D68D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_100138560(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005CE840, &qword_1004D1250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D14B0, &unk_1004DB0F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001386B0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 96);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[96 * v10])
    {
      memmove(v14, v15, 96 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1001387CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D15E8, &qword_1004D69C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D15F0, &qword_1004D69C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100138914(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D15F8, &qword_1004D69D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100138A34(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEFC8, &qword_1004D1EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_100138B38(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005CEFB8, &unk_1004D1EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005CEFC0, &qword_1004D7050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100138C6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D15D8, &qword_1004D69B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100138D88(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D15C0, &qword_1004D6998);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100138E94(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D15C8, &qword_1004D69A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100138FA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D15D0, &qword_1004D69A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001390AC(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1001391AC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      LODWORD(v17) = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = v18;
      *(v11 + 8) = v17;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10013930C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a4 + 56) + 24 * (v14 | (v9 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      LOBYTE(v15) = *(v15 + 17);
      *a2 = v16;
      *(a2 + 8) = v17;
      *(a2 + 16) = v18;
      *(a2 + 17) = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = (63 - v6) >> 6;
    }

    v9 = v20 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100139428(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!__dst)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a6 + 16);
    if (v11)
    {
      v12 = __dst;
      v13 = 0;
      v14 = (a6 + 32);
      v15 = a3 - 1;
      while (v13 < *(a6 + 16))
      {
        v16 = v14[9];
        v22[8] = v14[8];
        v22[9] = v16;
        v22[10] = v14[10];
        v17 = v14[5];
        v22[4] = v14[4];
        v22[5] = v17;
        v18 = v14[7];
        v22[6] = v14[6];
        v22[7] = v18;
        v19 = v14[1];
        v22[0] = *v14;
        v22[1] = v19;
        v20 = v14[3];
        v22[2] = v14[2];
        v22[3] = v20;
        memmove(v12, v14, 0xB0uLL);
        if (v15 == v13)
        {
          sub_10000E08C(v22, v21);
          goto LABEL_12;
        }

        v12 += 176;
        result = sub_10000E08C(v22, v21);
        ++v13;
        v14 += 11;
        if (v11 == v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v10 = v11;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_100139548(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1001396A0(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_100014CEC(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_100014CEC(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100139930(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1004A6A34();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1004A67A4();
}

uint64_t sub_1001399E4(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  v54 = a1[3];
  v55 = a1[1];
  v5 = (*a1 + 64);
  v4 = *v5;
  v67[0] = *a1;
  v56 = v67[0];
  v6 = -1 << *(v67[0] + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = a1[4];
  v51 = a1[5];
  v10 = a1[6];
  sub_10000E268(v67, v64, &qword_1005CF7E8, &qword_1004D2CE8);
  v11 = (63 - v6) >> 6;

  v67[4] = v9;

  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (!v8)
    {
LABEL_7:
      v14 = v13;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v11)
        {
          sub_100020D08();

          sub_100025F40(v67, &qword_1005CF7E8, &qword_1004D2CE8);
        }

        v8 = v5[v12];
        ++v14;
        if (v8)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      sub_1004A6E24();
      __break(1u);
      goto LABEL_31;
    }

    while (1)
    {
      v12 = v13;
LABEL_11:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = v15 | (v12 << 6);
      v17 = *(v56 + 48) + 16 * v16;
      v18 = *v17;
      LODWORD(v17) = *(v17 + 8);
      v19 = *(v56 + 56) + 72 * v16;
      v61[0] = *v19;
      v21 = *(v19 + 32);
      v20 = *(v19 + 48);
      v22 = *(v19 + 16);
      v62 = *(v19 + 64);
      v61[2] = v21;
      v61[3] = v20;
      v61[1] = v22;
      v23 = *(v19 + 16);
      *&v63[4] = *v19;
      v24 = *(v19 + 32);
      v25 = *(v19 + 48);
      *&v63[68] = *(v19 + 64);
      *&v63[52] = v25;
      *&v63[36] = v24;
      *&v63[20] = v23;
      *v60 = v18;
      *&v60[8] = v17;
      *&v60[28] = *&v63[16];
      *&v60[44] = *&v63[32];
      *&v60[60] = *&v63[48];
      *&v60[74] = *&v63[62];
      *&v60[12] = *v63;

      sub_100063BD4(v61, &v57);
      v26 = v3;
      v55(&v57, v60);
      v64[2] = *&v60[32];
      v64[3] = *&v60[48];
      v64[4] = *&v60[64];
      v65 = *&v60[80];
      v64[0] = *v60;
      v64[1] = *&v60[16];
      sub_100025F40(v64, &qword_1005D14D0, &qword_1004D68F0);
      v27 = v57;
      v28 = v58;
      v29 = v59;
      v66[0] = v57;
      v66[1] = v58;
      v66[2] = v59;
      if (v54(v66))
      {
        break;
      }

      v13 = v12;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    *v60 = v27;
    *&v60[8] = v28;
    *&v60[16] = v29;
    v51(&v57, v60);

    v30 = v57;
    v50 = v59;
    v31 = *a3;
    v32 = v58;
    v34 = sub_100063B5C(v57, v58);
    v35 = v31[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_28;
    }

    v38 = v31[3];
    v3 = v26;
    if (v38 < v37)
    {
      break;
    }

    if (a2)
    {
      if (v33)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v47 = v33;
      sub_10013C7A8();
      if (v47)
      {
        goto LABEL_24;
      }
    }

LABEL_21:
    v42 = *a3;
    *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
    v43 = v42[6] + 16 * v34;
    *v43 = v30;
    *(v43 + 8) = v32;
    *(v42[7] + 8 * v34) = v50;
    v44 = v42[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_29;
    }

    v42[2] = v46;
    a2 = 1;
  }

  v49 = v33;
  sub_1000C8144(v37, a2 & 1);
  v39 = *a3;
  v40 = sub_100063B5C(v30, v32);
  if ((v49 & 1) != (v41 & 1))
  {
    goto LABEL_30;
  }

  v34 = v40;
  v3 = v26;
  if ((v49 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  swift_allocError();
  swift_willThrow();
  sub_100025F40(v67, &qword_1005CF7E8, &qword_1004D2CE8);

  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100020D08();
  }

LABEL_31:
  *v60 = 0;
  *&v60[8] = 0xE000000000000000;
  sub_1004A6724(30);
  v68._object = 0x80000001004AA380;
  v68._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1004A5994(v68);
  sub_1004A6934();
  v69._countAndFlagsBits = 39;
  v69._object = 0xE100000000000000;
  sub_1004A5994(v69);
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

void *sub_100139FEC()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF6D8, &qword_1004D2B50);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LODWORD(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v19;
        v23[1] = v20;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013A16C()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF770, &qword_1004D2C90);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013A2D4()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF698, qword_1004D2890);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        LODWORD(v19) = *(v19 + 8);
        v17 *= 72;
        v21 = *(v2 + 56) + v17;
        v23 = *(v21 + 16);
        v22 = *(v21 + 32);
        v24 = *(v21 + 48);
        v35 = *(v21 + 64);
        v34 = v24;
        v31 = *v21;
        v32 = v23;
        v33 = v22;
        v25 = *(v4 + 48) + v18;
        *v25 = v20;
        *(v25 + 8) = v19;
        v26 = *(v4 + 56) + v17;
        *v26 = v31;
        v27 = v32;
        v28 = v33;
        v29 = v34;
        *(v26 + 64) = v35;
        *(v26 + 32) = v28;
        *(v26 + 48) = v29;
        *(v26 + 16) = v27;

        result = sub_100063BD4(&v31, v30);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013A4A0()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF6C8, &qword_1004D2B40);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 4);
        v25 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 4) = v24;
        *(v27 + 8) = v25;
        *(v27 + 16) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013A644()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF768, &qword_1004D2C88);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013A7B4()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF738, &qword_1004D2BA0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013A934()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_10003E6D4(&v39, v38))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 4 * v16);
      v18 = *(v2 + 56) + 184 * v16;
      v19 = *(v18 + 112);
      v21 = *(v18 + 64);
      v20 = *(v18 + 80);
      v45 = *(v18 + 96);
      v46 = v19;
      v43 = v21;
      v44 = v20;
      v23 = *(v18 + 144);
      v22 = *(v18 + 160);
      v24 = *(v18 + 128);
      v50 = *(v18 + 176);
      v48 = v23;
      v49 = v22;
      v47 = v24;
      v26 = *v18;
      v25 = *(v18 + 16);
      v27 = *(v18 + 48);
      v41 = *(v18 + 32);
      v42 = v27;
      v39 = v26;
      v40 = v25;
      *(*(v4 + 48) + 4 * v16) = v17;
      v28 = *(v4 + 56) + 184 * v16;
      v29 = v39;
      v30 = v40;
      v31 = v42;
      *(v28 + 32) = v41;
      *(v28 + 48) = v31;
      *v28 = v29;
      *(v28 + 16) = v30;
      v32 = v43;
      v33 = v44;
      v34 = v46;
      *(v28 + 96) = v45;
      *(v28 + 112) = v34;
      *(v28 + 64) = v32;
      *(v28 + 80) = v33;
      v35 = v47;
      v36 = v48;
      v37 = v49;
      *(v28 + 176) = v50;
      *(v28 + 144) = v36;
      *(v28 + 160) = v37;
      *(v28 + 128) = v35;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013AB24()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF790, &qword_1004D2CB0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 12 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v19 = *(v4 + 56) + 12 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013AC88()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CDFA0, &qword_1004CFFE0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 9) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      LOBYTE(v17) = *(v17 + 9);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      v20 = *(v4 + 56) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013ADF0()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF3F8, &qword_1004D26D0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 17) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      LOBYTE(v17) = *(v17 + 17);
      result = *(v4 + 48);
      *(result + v14) = *(*(v2 + 48) + 4 * v14);
      v21 = *(v4 + 56) + 24 * v14;
      *v21 = v18;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013AF64()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF798, &unk_1004F76A0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v17 *= 24;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        LOBYTE(v19) = *(v19 + 17);
        v23 = *(*(v2 + 48) + v18);
        *(*(v4 + 48) + v18) = v23;
        v24 = *(v4 + 56) + v17;
        *v24 = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        *(v24 + 17) = v19;
        result = sub_100014CEC(v23, *(&v23 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013B0F4()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF748, &qword_1004D2BB0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 2 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 2 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013B270(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000C9C0(a1, a2);
  v4 = *v2;
  v5 = sub_1004A6A54();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(v4 + 48) + 16 * v19;
        v21 = *v20;
        LODWORD(v20) = *(v20 + 8);
        v22 = *(*(v4 + 56) + v19);
        v23 = *(v6 + 48) + 16 * v19;
        *v23 = v21;
        *(v23 + 8) = v20;
        *(*(v6 + 56) + v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10013B3D0()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF6D0, &qword_1004D2B48);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        LODWORD(v22) = *(v22 + 24);
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v25;
        *(v27 + 24) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013B574()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF6F8, &qword_1004D2B70);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_100099FE4(&v32, &v31))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 48) + 16 * v16;
      v19 = *v18;
      LODWORD(v18) = *(v18 + 8);
      v16 *= 96;
      v20 = (*(v2 + 56) + v16);
      v21 = v20[2];
      v22 = v20[3];
      v23 = v20[4];
      *(v36 + 9) = *(v20 + 73);
      v35 = v22;
      v36[0] = v23;
      v24 = v20[1];
      v32 = *v20;
      v33 = v24;
      v34 = v21;
      v25 = *(v4 + 48) + v17;
      *v25 = v19;
      *(v25 + 8) = v18;
      v26 = (*(v4 + 56) + v16);
      v27 = v33;
      *v26 = v32;
      v26[1] = v27;
      v28 = v34;
      v29 = v35;
      v30 = v36[0];
      *(v26 + 73) = *(v36 + 9);
      v26[3] = v29;
      v26[4] = v30;
      v26[2] = v28;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013B74C()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF520, &unk_1004D2790);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013B8C8()
{
  v1 = v0;
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0(&qword_1005CF7C0, &unk_1004D2CD0);
  v6 = *v0;
  v7 = sub_1004A6A54();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_100142970(*(v6 + 48) + v22, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
        v23 = *(*(v6 + 56) + v21);
        result = sub_100142A38(v5, *(v8 + 48) + v22, type metadata accessor for MoveAndCopyMessages.CommandID);
        *(*(v8 + 56) + v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_10013BB00()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF7B0, &qword_1004D2CC0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013BC64()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF778, &qword_1004D2C98);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013BDC0()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF7C8, &qword_1004D3CD0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 4);
        v22 = *(v19 + 8);
        v23 = *(v19 + 16);
        v24 = *(v19 + 24);
        v25 = *(v19 + 32);
        v17 *= 12;
        v26 = *(v2 + 56) + v17;
        v27 = *v26;
        LOBYTE(v26) = *(v26 + 8);
        v28 = *(v4 + 48) + v18;
        *v28 = v20;
        *(v28 + 4) = v21;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        v29 = *(v4 + 56) + v17;
        *v29 = v27;
        *(v29 + 8) = v26;

        result = sub_100014CEC(v24, v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013BF78()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF7B8, &qword_1004D2CC8);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v17 *= 40;
        v20 = *(v2 + 56) + v17;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 32);
        v24 = *(v20 + 16);
        *(*(v4 + 48) + v18) = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v21;
        *(v25 + 8) = v22;
        *(v25 + 16) = v24;
        *(v25 + 32) = v23;
        result = sub_100014CEC(v22, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013C104()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF7D8, &qword_1004D3CC0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_100014CEC(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013C26C()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF7D0, &qword_1004D3CB0);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_100014CEC(v20, v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013C3E0()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CF6E8, &qword_1004D2B60);
  v2 = *v0;
  v3 = sub_1004A6A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10013C558()
{
  v1 = v0;
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - v4;
  sub_10000C9C0(&qword_1005CF6E0, &qword_1004D2B58);
  v5 = *v0;
  v6 = sub_1004A6A54();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = *(v5 + 48) + 16 * v21;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10000E268(*(v5 + 56) + v27, v31, &unk_1005D91B0, &unk_1004CF400);
        v28 = v33;
        v29 = *(v33 + 48) + v22;
        *v29 = v24;
        *(v29 + 8) = v25;
        sub_100020950(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    v7 = v33;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}