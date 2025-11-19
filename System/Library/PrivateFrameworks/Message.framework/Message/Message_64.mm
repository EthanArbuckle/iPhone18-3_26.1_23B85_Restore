uint64_t sub_1B0BB8234()
{
  if (qword_1EB6DDB00 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0BB8294@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  result = sub_1B0BB84B8(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B0BB8324(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1B0BB836C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0BB83E0()
{
  result = qword_1EB6DDAF8;
  if (!qword_1EB6DDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDAF8);
  }

  return result;
}

unint64_t sub_1B0BB8434(uint64_t a1)
{
  result = sub_1B0BB845C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0BB845C()
{
  result = qword_1EB6DDAF0;
  if (!qword_1EB6DDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDAF0);
  }

  return result;
}

uint64_t sub_1B0BB84B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v106 = a4;
  v109 = a1;
  v110 = a2;
  v105 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v9 = &v102[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v102[-v11];
  v119 = 0;
  v120 = MEMORY[0x1E69E7CC0];
  v121 = MEMORY[0x1E69E7CC0];
  v12 = (a3 + *(type metadata accessor for MailboxSyncState() + 48));
  v13 = v12[3];
  v14 = v12[4];
  v104 = v12;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  v108 = (*(v14 + 40))(v13, v14);
  v114 = v16;
  v115 = v15;
  v17 = *(v16 + 16);

  v116 = v5;
  v113 = v17;
  if (v17)
  {
    v18 = 0;
    v111 = v9;
    v112 = v115 + 32;
    for (i = (v114 + 48); ; i += 3)
    {
      if (v18 >= *(v115 + 16))
      {
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
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }

      if (v18 >= *(v114 + 16))
      {
        goto LABEL_76;
      }

      v20 = *(v112 + 4 * v18);
      v21 = *(i - 2);
      v22 = *(i - 8);
      v23 = *i;
      v24 = (v18 + 1);
      v25 = *(v5 + 120);
      if (!*(v25 + 16) || (v26 = sub_1B03FE284(*(v112 + 4 * v18)), (v27 & 1) == 0))
      {
        v30 = 0;
        v29 = 0;
        if (v23 == 1)
        {
LABEL_16:
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0429C7C(v29, v30, 1);
          v9 = v111;
          if (v24 >= v113)
          {
            break;
          }

          goto LABEL_41;
        }

        goto LABEL_9;
      }

      v117 = (v18 + 1);
      v28 = *(v25 + 56) + 24 * v26;
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v31 == 1)
      {
        v24 = v117;
        if (v23 == 1)
        {
          goto LABEL_16;
        }

LABEL_9:
        v117 = v24;
        v31 = 1;
LABEL_10:
        swift_bridgeObjectRetain_n();
        sub_1B0429C7C(v29, v30, v31);
        sub_1B0429C7C(v21, v22, v23);
        goto LABEL_11;
      }

      if (v23 == 1)
      {
        goto LABEL_10;
      }

      if (v29 == 2)
      {
        if (v21 != 2)
        {
          goto LABEL_32;
        }
      }

      else if (v21 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v29 & 0xFFFFFFFF01010101, v30, v21 & 0xFFFFFFFF01010101, v22) & 1) == 0)
      {
        goto LABEL_32;
      }

      if (v31)
      {
        if (v23)
        {
          swift_bridgeObjectRetain_n();
          sub_1B0BB8F60(v29, v30, v31);
          sub_1B0BB8F60(v21, v22, v23);
          v103 = sub_1B0AFDF14(v31, v23);
          sub_1B0429C7C(v21, v22, v23);
          sub_1B0429C7C(v29, v30, v31);
          sub_1B0429C7C(v21, v22, v23);
          if (v103)
          {
LABEL_34:
            sub_1B0429C7C(v29, v30, v31);

            v5 = v116;
            goto LABEL_40;
          }
        }

        goto LABEL_33;
      }

      if (!v23)
      {
        goto LABEL_34;
      }

LABEL_32:
      swift_bridgeObjectRetain_n();
      sub_1B0429C7C(v21, v22, v23);
LABEL_33:
      sub_1B0429C7C(v29, v30, v31);
LABEL_11:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v5 = v116;
      v32 = *(v116 + 120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = *(v5 + 120);
      v34 = v118;
      v35 = sub_1B03FE284(v20);
      v37 = *(v34 + 16);
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        goto LABEL_79;
      }

      v41 = v36;
      if (*(v34 + 24) < v40)
      {
        sub_1B0B34D80(v40, isUniquelyReferenced_nonNull_native);
        v35 = sub_1B03FE284(v20);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_82;
        }

LABEL_19:
        v43 = v118;
        if ((v41 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v46 = v35;
      sub_1B0B8F95C();
      v35 = v46;
      v43 = v118;
      if ((v41 & 1) == 0)
      {
LABEL_37:
        *&v43[8 * (v35 >> 6) + 64] |= 1 << v35;
        *(*(v43 + 6) + 4 * v35) = v20;
        v47 = *(v43 + 7) + 24 * v35;
        *v47 = v21;
        *(v47 + 8) = v22;
        *(v47 + 16) = v23;
        v48 = *(v43 + 2);
        v39 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v39)
        {
          goto LABEL_80;
        }

        *(v43 + 2) = v49;
        goto LABEL_39;
      }

LABEL_20:
      v44 = *(v43 + 7) + 24 * v35;
      v45 = *(v44 + 16);
      *v44 = v21;
      *(v44 + 8) = v22;
      *(v44 + 16) = v23;

LABEL_39:
      *(v5 + 120) = v43;
      sub_1B0BC8FC4(v21, v22, v23, v20);
LABEL_40:
      v9 = v111;
      if (v117 >= v113)
      {
        break;
      }

LABEL_41:
      ++v18;
    }
  }

  v50 = v119;
  v51 = v120;
  v52 = v121;
  if (!*(v121 + 16))
  {
    v71 = *(v5 + 128);
    if (sub_1B0A9F538(v71, 0, v109, v110))
    {

      return 0;
    }

    if (*(v5 + 112) == 1)
    {
      v94 = v104[3];
      v95 = v104[4];
      __swift_project_boxed_opaque_existential_0(v104, v94);
      v96 = (*(v95 + 72))(v94, v95);
      LOBYTE(v94) = v97;

      if (v94)
      {
        if (!v96)
        {
          return 0;
        }

        v98 = swift_allocObject();
        v99 = *(v5 + 48);
        *(v98 + 16) = *(v5 + 40);
        *(v98 + 24) = v99;
        *(v98 + 32) = 0;
        *(v98 + 40) = 1;
LABEL_74:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return v71;
      }
    }

    else
    {
      v96 = *(v5 + 104);
    }

    v100 = swift_allocObject();
    v101 = *(v5 + 48);
    *(v100 + 16) = *(v5 + 40);
    *(v100 + 24) = v101;
    *(v100 + 32) = v96;
    *(v100 + 40) = 0;
    goto LABEL_74;
  }

  v53 = v106;
  v54 = v107;
  sub_1B0A92638(v106, v107);
  sub_1B0A92638(v53, v9);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v55 = sub_1B0E43988();
  v56 = sub_1B0E45908();
  v57 = os_log_type_enabled(v55, v56);
  v115 = v50;
  if (v57)
  {
    v58 = v54;
    v59 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v118 = v117;
    *v59 = 68159491;
    *(v59 + 4) = 2;
    *(v59 + 8) = 256;
    v60 = v105;
    v61 = &v9[*(v105 + 20)];
    *(v59 + 10) = *v61;
    *(v59 + 11) = 2082;
    v62 = v58 + *(v60 + 20);
    *(v59 + 13) = sub_1B0399D64(*(v62 + 8), *(v62 + 16), &v118);
    *(v59 + 21) = 1040;
    *(v59 + 23) = 2;
    *(v59 + 27) = 512;
    v63 = *(v61 + 12);
    sub_1B0A9269C(v9);
    *(v59 + 29) = v63;
    *(v59 + 31) = 2160;
    *(v59 + 33) = 0x786F626C69616DLL;
    *(v59 + 41) = 2085;
    v64 = *(v62 + 32);
    v65 = *(v62 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v58);
    v119 = v64;
    LODWORD(v120) = v65;
    v66 = sub_1B0E44BA8();
    v68 = sub_1B0399D64(v66, v67, &v118);
    v5 = v116;

    *(v59 + 43) = v68;
    *(v59 + 51) = 2048;
    v69 = *(v52 + 16);

    *(v59 + 53) = v69;

    _os_log_impl(&dword_1B0389000, v55, v56, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Got %ld flag/label changes.", v59, 0x3Du);
    v70 = v117;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v70, -1, -1);
    MEMORY[0x1B272C230](v59, -1, -1);
  }

  else
  {

    sub_1B0A9269C(v9);

    sub_1B0A9269C(v54);
  }

  v73 = *(v5 + 128);
  if (sub_1B0A9F538(v73, 0, v109, v110))
  {
    if (__OFADD__(v73, 1))
    {
      goto LABEL_81;
    }

    *(v5 + 128) = v73 + 1;
  }

  v74 = *(v52 + 16);

  if (v74)
  {
    v75 = 0;
    v76 = v52 + 48;
    v117 = MEMORY[0x1E69E7CC0];
    v114 = v52 + 48;
LABEL_54:
    v77 = (v76 + 24 * v75);
    while (v75 < *(v51 + 16))
    {
      if (v75 >= *(v52 + 16))
      {
        goto LABEL_78;
      }

      v78 = *(v51 + 32 + 4 * v75);
      v79 = *(v77 - 2);
      v80 = *v77;
      ++v75;
      v81 = *(v77 - 8);
      swift_bridgeObjectRetain_n();
      v82 = MessageFlagUpdate.init(message:flags:gmailLabels:)(v78, v79, v81, v80);
      v84 = v83;
      v86 = v85;

      if (v86 != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1B0B0095C(0, *(v117 + 2) + 1, 1, v117);
        }

        v88 = *(v117 + 2);
        v87 = *(v117 + 3);
        if (v88 >= v87 >> 1)
        {
          v117 = sub_1B0B0095C((v87 > 1), v88 + 1, 1, v117);
        }

        *(&v89 + 1) = v84;
        *&v89 = v82;
        v90 = v117;
        *(v117 + 2) = v88 + 1;
        v91 = &v90[24 * v88];
        *(v91 + 8) = v82;
        *(v91 + 36) = v89 >> 32;
        v91[44] = BYTE4(v84);
        *(v91 + 6) = v86;
        v5 = v116;
        v76 = v114;
        if (v75 < v74)
        {
          goto LABEL_54;
        }

        goto LABEL_67;
      }

      v77 += 3;
      v5 = v116;
      if (v75 >= v74)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_77;
  }

  v117 = MEMORY[0x1E69E7CC0];
LABEL_67:

  v92 = swift_allocObject();
  v93 = *(v5 + 24);
  v92[2] = *(v5 + 16);
  v92[3] = v93;
  v92[4] = v117;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return 0;
}

uint64_t sub_1B0BB8F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0BB8FA4(uint64_t *a1, uint64_t *a2)
{
  if (a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  return sub_1B04520BC(*a1, *a2) & (v3 == v2);
}

void sub_1B0BB8FFC(uint64_t a1)
{
  v3 = type metadata accessor for Task.Logger(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-1] - v8;
  sub_1B0B3DA68(a1, &v24[-1] - v8);
  sub_1B0B3DA68(a1, v6);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B94E24(v1, v24);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 68158466;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = *&v6[*(v3 + 20)];
    sub_1B0B63664(v6);
    *(v12 + 10) = v14;
    *(v12 + 11) = 2082;
    v15 = &v9[*(v3 + 20)];
    v16 = *(v15 + 1);
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);
    v19 = *(v15 + 4);
    v20 = *(v15 + 10);
    sub_1B0A982D8(*v15, v16, v17, v18);
    sub_1B0B63664(v9);
    if (v18 < 0)
    {
    }

    v21 = sub_1B0399D64(v16, v17, &v23);

    *(v12 + 13) = v21;
    *(v12 + 21) = 2048;
    v22 = *(v24[0] + 16);
    sub_1B0B94E80(v24);
    *(v12 + 23) = v22;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] Updating local server unread count for %ld mailboxes.", v12, 0x1Fu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B0B94E80(v24);
    sub_1B0B63664(v6);

    sub_1B0B63664(v9);
  }
}

void sub_1B0BB924C(uint64_t a1, uint64_t a2)
{
  v100 = type metadata accessor for Task.Logger(0);
  v4 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v92 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v90 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v90 - v13;
  v95 = a1;
  v15 = *(a1 + 176);
  a1 += 176;
  v16 = *(a1 - 8);
  v106 = *(a1 + 8);
  v107 = v15;
  v94 = a1;
  v111 = *(a1 + 16);
  v91 = v8;
  if (v111 == 1 && (v17 = *(v16 + 16)) != 0)
  {
    v18 = (v16 + 32);
    while (1)
    {
      v19 = *v18;
      v20 = v18[2];
      v117 = v18[1];
      v118 = v20;
      v116 = v19;
      v21 = v18[3];
      v22 = v18[4];
      v23 = v18[6];
      v121 = v18[5];
      v122 = v23;
      v119 = v21;
      v120 = v22;
      v24 = v18[7];
      v25 = v18[8];
      v26 = v18[10];
      v125 = v18[9];
      v126 = v26;
      v123 = v24;
      v124 = v25;
      v28 = *(&v116 + 1);
      v27 = v116;
      v29 = DWORD2(v117);
      sub_1B03A35B8(&v116, v115);
      v30 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v29) = MailboxName.isInbox.getter(v30, v29);

      if (v29)
      {
        break;
      }

      sub_1B03A3614(&v116);
      v18 += 11;
      if (!--v17)
      {
        v31 = 0;
        v28 = 0;
        goto LABEL_9;
      }
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A3614(&v116);
    v31 = v27;
LABEL_9:
    v8 = v91;
  }

  else
  {
    v31 = 0;
    v28 = 0;
  }

  v32 = *v93;
  v110 = *(*v93 + 16);
  if (v110)
  {
    v99 = v28;
    v33 = 0;
    v34 = 0;
    v109 = v32 + 32;
    *&v12 = 68158722;
    v96 = v12;
    v105 = v31;
    v35 = v32;
    v97 = v32;
    v98 = a2;
    while (1)
    {
      if (v34 >= *(v35 + 16))
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }

      v36 = (v109 + 24 * v34);
      v38 = *v36;
      v37 = v36[1];
      v113 = v36[2];
      v114 = v37;
      if (v111 && (v39 = *(v16 + 16)) != 0)
      {
        v40 = 0;
        while (1)
        {
          v41 = (v16 + 32 + 176 * v40);
          if (v41[1] == v37)
          {
            v42 = *v41;
            v43 = *(*v41 + 16);
            if (v43 == *(v38 + 16))
            {
              break;
            }
          }

LABEL_18:
          if (++v40 == v39)
          {
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v31 = v105;
            goto LABEL_37;
          }
        }

        if (v43)
        {
          v44 = v42 == v38;
        }

        else
        {
          v44 = 1;
        }

        if (!v44)
        {
          v45 = (v42 + 32);
          v46 = (v38 + 32);
          while (v43)
          {
            if (*v45 != *v46)
            {
              goto LABEL_18;
            }

            ++v45;
            ++v46;
            if (!--v43)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
          goto LABEL_67;
        }

LABEL_29:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B9A2C(v16, v107, v106, 1);
        v47 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_1B03D0E54(v16);
        }

        if (v40 >= *(v47 + 2))
        {
          goto LABEL_69;
        }

        v48 = &v47[176 * v40];
        if (!v48[200] && v113 == *(v48 + 24))
        {
          v48[200] = 1;
        }

        sub_1B03BB638(v16, v107, v106, 1);
        v106 = 0;
        v107 = 0;
        v50 = v94;
        v49 = v95;
        *(v95 + 168) = v47;
        *v50 = 0;
        v50[1] = 0;
        v16 = v47;
        *(v49 + 192) = 1;
        v31 = v105;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

LABEL_37:
      if (v33 >= 5)
      {
        if (!v31)
        {
          goto LABEL_12;
        }

        if (v114 != v99)
        {
          goto LABEL_12;
        }

        v69 = *(v38 + 16);
        if (v69 != *(v31 + 16))
        {
          goto LABEL_12;
        }

        if (v69 && v38 != v31)
        {
          break;
        }
      }

LABEL_38:
      v112 = v16;
      sub_1B0B3DA68(a2, v14);
      v51 = v104;
      sub_1B0B3DA68(a2, v104);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      swift_bridgeObjectRetain_n();
      v52 = sub_1B0E43988();
      v108 = sub_1B0E45908();
      if (os_log_type_enabled(v52, v108))
      {
        v102 = v52;
        v103 = v33;
        v53 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v116 = v101;
        *v53 = v96;
        *(v53 + 4) = 2;
        *(v53 + 8) = 256;
        v54 = v100;
        v55 = *(v51 + *(v100 + 20));
        sub_1B0B63664(v51);
        *(v53 + 10) = v55;
        *(v53 + 11) = 2082;
        v56 = &v14[*(v54 + 20)];
        v57 = *(v56 + 1);
        v58 = *(v56 + 2);
        v59 = *(v56 + 3);
        v60 = *(v56 + 4);
        v61 = *(v56 + 10);
        sub_1B0A982D8(*v56, v57, v58, v59);
        sub_1B0B63664(v14);
        if (v59 < 0)
        {
        }

        v62 = sub_1B0399D64(v57, v58, &v116);

        *(v53 + 13) = v62;
        *(v53 + 21) = 2048;

        *(v53 + 23) = v113;

        *(v53 + 31) = 2080;
        v63 = OpaqueMailboxID.description.getter(v38);
        v65 = v64;

        v66 = sub_1B0399D64(v63, v65, &v116);

        *(v53 + 33) = v66;
        v67 = v102;
        _os_log_impl(&dword_1B0389000, v102, v108, "[%.*hhx-%{public}s] Did store server unread count %ld (aka. UNSEEN) for %s.", v53, 0x29u);
        v68 = v101;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v68, -1, -1);
        MEMORY[0x1B272C230](v53, -1, -1);

        v35 = v97;
        a2 = v98;
        v33 = v103;
        v31 = v105;
      }

      else
      {

        sub_1B0B63664(v51);

        swift_bridgeObjectRelease_n();
        sub_1B0B63664(v14);
      }

      v71 = __OFADD__(v33++, 1);
      v16 = v112;
      if (v71)
      {
        goto LABEL_68;
      }

LABEL_13:
      if (++v34 == v110)
      {
        v8 = v91;
        goto LABEL_58;
      }
    }

    v70 = 32;
    while (*(v38 + v70) == *(v31 + v70))
    {
      ++v70;
      if (!--v69)
      {
        goto LABEL_38;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v33 = 0;
  v35 = v32;
LABEL_58:

  v72 = *(v35 + 16);
  v73 = v92;
  if (v33 < v72)
  {
    sub_1B0B3DA68(a2, v8);
    sub_1B0B3DA68(a2, v73);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0B94E24(v93, &v116);
    v74 = sub_1B0E43988();
    v75 = sub_1B0E45908();
    if (os_log_type_enabled(v74, v75))
    {
      v103 = v33;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v115[0] = v77;
      *v76 = 68158466;
      *(v76 + 4) = 2;
      *(v76 + 8) = 256;
      v78 = v100;
      v79 = *(v73 + *(v100 + 20));
      sub_1B0B63664(v73);
      *(v76 + 10) = v79;
      *(v76 + 11) = 2082;
      v80 = &v8[*(v78 + 20)];
      v81 = v8;
      v82 = *(v80 + 1);
      v83 = *(v80 + 2);
      v84 = *(v80 + 3);
      v85 = *(v80 + 4);
      v86 = *(v80 + 10);
      sub_1B0A982D8(*v80, v82, v83, v84);
      sub_1B0B63664(v81);
      if (v84 < 0)
      {
      }

      v87 = sub_1B0399D64(v82, v83, v115);

      *(v76 + 13) = v87;
      *(v76 + 21) = 2048;
      v88 = *(v116 + 16);
      v89 = v88 - v103;
      if (__OFSUB__(v88, v103))
      {
        goto LABEL_70;
      }

      sub_1B0B94E80(&v116);
      *(v76 + 23) = v89;
      _os_log_impl(&dword_1B0389000, v74, v75, "[%.*hhx-%{public}s] Did store server unread counts for %ld more mailboxes.", v76, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x1B272C230](v77, -1, -1);
      MEMORY[0x1B272C230](v76, -1, -1);
    }

    else
    {
      sub_1B0B94E80(&v116);
      sub_1B0B63664(v73);

      sub_1B0B63664(v8);
    }
  }
}

uint64_t sub_1B0BB9AA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_1B0BB9E48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0BB9AD8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

unint64_t sub_1B0BB9B08()
{
  result = qword_1EB6DD728;
  if (!qword_1EB6DD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD728);
  }

  return result;
}

unint64_t sub_1B0BB9B5C(uint64_t a1)
{
  result = sub_1B0BB9B84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0BB9B84()
{
  result = qword_1EB6DD720;
  if (!qword_1EB6DD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD720);
  }

  return result;
}

void *sub_1B0BB9BD8(void *result, char a2, void *a3)
{
  v3 = result[2];
  if (v3)
  {
    v6 = result;
    v7 = result[4];
    v8 = result[5];
    v45 = result[6];
    v9 = *a3;
    v10 = sub_1B03B8A9C(v7, v8);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v17 < v14)
    {
      sub_1B0B2F400(v14, a2 & 1);
      v18 = *a3;
      result = sub_1B03B8A9C(v7, v8);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_27:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }

      v15 = result;
      v20 = *a3;
      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:

      *(v20[7] + 8 * v15) = v45;
      v21 = v3 - 1;
      if (v3 == 1)
      {
        return result;
      }

LABEL_15:
      for (i = v6 + 9; ; i += 3)
      {
        v27 = *(i - 2);
        v28 = *(i - 1);
        v29 = *i;
        v30 = *a3;
        v31 = sub_1B03B8A9C(v27, v28);
        v33 = v30[2];
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          break;
        }

        v36 = v31;
        v37 = v32;
        v38 = v30[3];
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v38 < v35)
        {
          sub_1B0B2F400(v35, 1);
          v39 = *a3;
          result = sub_1B03B8A9C(v27, v28);
          if ((v37 & 1) != (v40 & 1))
          {
            goto LABEL_27;
          }

          v36 = result;
        }

        v41 = *a3;
        if (v37)
        {

          *(v41[7] + 8 * v36) = v29;
        }

        else
        {
          v41[(v36 >> 6) + 8] |= 1 << v36;
          v42 = (v41[6] + 16 * v36);
          *v42 = v27;
          v42[1] = v28;
          *(v41[7] + 8 * v36) = v29;
          v43 = v41[2];
          v24 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v24)
          {
            goto LABEL_26;
          }

          v41[2] = v44;
        }

        if (!--v21)
        {
          return result;
        }
      }

      goto LABEL_25;
    }

    if (a2)
    {
      v20 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = sub_1B0B8D1C8();
      v20 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20[(v15 >> 6) + 8] |= 1 << v15;
    v22 = (v20[6] + 16 * v15);
    *v22 = v7;
    v22[1] = v8;
    *(v20[7] + 8 * v15) = v45;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v20[2] = v25;
    v21 = v3 - 1;
    if (v3 == 1)
    {
      return result;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1B0BB9E48(uint64_t a1, uint64_t a2)
{
  if (sub_1B0A9D754(a1, a2))
  {
    return 0xF000000000000007;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1B0B09E24(0, v5, 0);
    v6 = v17;
    v7 = (v4 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v17 = v6;
      v12 = v6[2];
      v11 = v6[3];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v12 >= v11 >> 1)
      {
        sub_1B0B09E24((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      v7 += 3;
      v6[2] = v12 + 1;
      v13 = &v6[3 * v12];
      v13[4] = v8;
      v13[5] = v9;
      v13[6] = v10;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      v14 = MEMORY[0x1E69E7CC8];
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47F8, &qword_1B0EC5F90);
  v14 = sub_1B0E466A8();
LABEL_11:
  v17 = v14;
  sub_1B0BB9BD8(v6, 1, &v17);

  v15 = v17;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  return v16 | 0x4000000000000000;
}

uint64_t sub_1B0BB9FE0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = sub_1B0451E64(&unk_1F2711178);
  *(a3 + 48) = 0;
  v6 = type metadata accessor for UploadFlagChanges(0);
  v7 = v6[10];
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v8 = a3 + v6[11];
  sub_1B0E46EE8();
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = 0;
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  *(a3 + 56) = v6;
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  v12 = v6[8];
  type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v6[9]) = a2;
  return result;
}

void sub_1B0BBA0FC(void **a1)
{
  v2 = *(type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B0B94704(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1B0BBF958(v5);
  *a1 = v3;
}

uint64_t sub_1B0BBA1A4()
{
  result = sub_1B03D0770(&unk_1F2711150);
  qword_1EB737D90 = result;
  return result;
}

uint64_t sub_1B0BBA1CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v9 = *(v8 - 8);
  (*(v9 + 56))(v7, 1, 1, v8);
  v17 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BBA0FC(&v17);

  v10 = *(v4 + 24);
  v11 = v17;
  *&v7[*(v4 + 20)] = v17;
  v12 = &v7[v10];
  v13 = v11 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14 = (2 * v11[2]) | 1;
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = 0;
  *(v12 + 3) = v14;
  sub_1B0BC24A0(v7, a2, type metadata accessor for UploadFlagChanges.EncodedFlags);
}

uint64_t sub_1B0BBA33C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v1 = MessageIdentifierSet.startIndex.getter(v0);
  v3 = v2;
  v5 = v1 == MessageIdentifierSet.endIndex.getter(v0) && v3 == v4;
  v6 = v5;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    MessageIdentifierSet.subscript.getter(v3, v0, &v18);
    v7 = v18;
  }

  v8 = MessageIdentifierSet.startIndex.getter(v0);
  v10 = v9;
  v12 = v8 == MessageIdentifierSet.endIndex.getter(v0) && v10 == v11;
  v13 = !v12;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    MessageIdentifierSet.subscript.getter(v10, v0, &v17);
    v14 = v17;
  }

  if (v7 < v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v6)
  {
    return v13;
  }

  else
  {
    return v15;
  }
}

void sub_1B0BBA448(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  sub_1B0BC23D8(a1, v21 - v7, type metadata accessor for MailboxTaskLogger);
  sub_1B0BC23D8(a1, v5, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v9 = sub_1B0E43988();
  v10 = sub_1B0E45908();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 68159235;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v13 = &v5[*(v2 + 20)];
    *(v11 + 10) = *v13;
    *(v11 + 11) = 2082;
    v14 = &v8[*(v2 + 20)];
    *(v11 + 13) = sub_1B0399D64(*(v14 + 1), *(v14 + 2), &v23);
    *(v11 + 21) = 1040;
    *(v11 + 23) = 2;
    *(v11 + 27) = 512;
    v15 = *(v13 + 12);
    sub_1B0BC2440(v5, type metadata accessor for MailboxTaskLogger);
    *(v11 + 29) = v15;
    *(v11 + 31) = 2160;
    *(v11 + 33) = 0x786F626C69616DLL;
    *(v11 + 41) = 2085;
    v16 = *(v14 + 4);
    v17 = *(v14 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BC2440(v8, type metadata accessor for MailboxTaskLogger);
    v21[1] = v16;
    v22 = v17;
    v18 = sub_1B0E44BA8();
    v20 = sub_1B0399D64(v18, v19, &v23);

    *(v11 + 43) = v20;
    _os_log_impl(&dword_1B0389000, v9, v10, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v11, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v12, -1, -1);
    MEMORY[0x1B272C230](v11, -1, -1);
  }

  else
  {
    sub_1B0BC2440(v5, type metadata accessor for MailboxTaskLogger);

    sub_1B0BC2440(v8, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1B0BBA71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X8>)
{
  v7 = v6;
  v55 = a3;
  v56 = a5;
  v53 = a1;
  v54 = a2;
  v57 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52D8, &qword_1B0ECD750);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v52 - v20;
  v22 = *(a4 + 88);
  v23 = *(a4 + 120);
  v58[4] = *(a4 + 104);
  v58[5] = v23;
  v59 = *(a4 + 136);
  v24 = *(a4 + 56);
  v58[0] = *(a4 + 40);
  v58[1] = v24;
  v58[2] = *(a4 + 72);
  v58[3] = v22;
  v25 = *(v7 + 24);
  v26 = *(v7 + 32);
  v27 = type metadata accessor for UploadFlagChanges(0);
  v28 = v7 + v27[8];
  sub_1B0BBAC44(v58, v56, v17);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
  if ((*(*(v29 - 8) + 48))(v17, 1, v29) == 1)
  {
    v30 = v57;
    sub_1B0398EFC(v17, &qword_1EB6E52D8, &qword_1B0ECD750);
    v31 = v7 + v27[11];
    v32 = sub_1B0E46E98();
    v34 = v54;
    v33 = v55;
    if (v32 & 1) != 0 || (sub_1B0B718A4(2, v54, v55))
    {
      if (sub_1B0B718A4(1, v34, v33))
      {
        goto LABEL_6;
      }

      v35 = v27[10];
      if (sub_1B0E46E98())
      {
        goto LABEL_6;
      }

      v48 = *(v7 + v27[9]);
      if (v48 == 2)
      {
        goto LABEL_12;
      }

      if (sub_1B0AD4EFC(0, v53, v34, v33))
      {
LABEL_6:
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E8, &unk_1B0ECD760);
        return (*(*(v36 - 8) + 56))(v30, 1, 1, v36);
      }

      if (v48)
      {
LABEL_12:
        v49 = &unk_1F27114B8;
      }

      else
      {
        v49 = &unk_1F2711420;
      }

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E8, &unk_1B0ECD760);
      v50 = &v30[*(v46 + 48)];
      *v30 = 1;
      v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      sub_1B03B5C80(v7 + v35, v50, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v51 = v49;
      *(v51 + 8) = 0;
      *(v51 + 16) = 1;
      type metadata accessor for ClientCommand(0);
    }

    else
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E8, &unk_1B0ECD760);
      v47 = *(v46 + 48);
      *v30 = 2;
      type metadata accessor for ClientCommand(0);
    }

    swift_storeEnumTagMultiPayload();
    return (*(*(v46 - 8) + 56))(v30, 0, 1, v46);
  }

  else
  {
    v38 = &v17[*(v29 + 48)];
    v39 = *v38;
    v40 = v38[1];
    v56 = *(v38 + 1);
    sub_1B03C60A4(v17, v21, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v41 = v27[10];
    (*(v10 + 16))(v13, v21, v9);
    sub_1B0E46ED8();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E8, &unk_1B0ECD760);
    v43 = v57;
    v44 = &v57[*(v42 + 48)];
    *v57 = 0;
    v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48);
    sub_1B03C60A4(v21, v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *v45 = v39;
    *(v45 + 1) = v40;
    *(v45 + 8) = v56;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v42 - 8) + 56))(v43, 0, 1, v42);
  }
}

uint64_t sub_1B0BBAC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v48 = a3;
  v7 = type metadata accessor for MailboxTaskLogger(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BC23D8(v4, v17, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
      return (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
    }

    sub_1B0BC2440(v4, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v23 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52D0, &unk_1B0ECD740) + 48));
    sub_1B0BC24A0(v17, v21, type metadata accessor for UploadFlagChanges.EncodedFlags);
  }

  else
  {
    sub_1B0BC2440(v4, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v24 = *v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0D4C8(a1, &v50);
    v47 = v24;
    sub_1B0BBE4A0(v24, a1, v21);
    v25 = *&v21[*(v18 + 20)];
    if (*(v25 + 16) || sub_1B0BBE9BC())
    {
      sub_1B0BC23D8(a2, v13, type metadata accessor for MailboxTaskLogger);
      sub_1B0BC23D8(a2, v10, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v26 = sub_1B0E43988();
      v27 = sub_1B0E45908();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v45 = v26;
        v29 = v28;
        v46 = swift_slowAlloc();
        v49 = v46;
        *v29 = 68159747;
        v44 = v27;
        *(v29 + 4) = 2;
        *(v29 + 8) = 256;
        v30 = *(v7 + 20);
        v43 = v25;
        v31 = &v10[v30];
        *(v29 + 10) = v10[v30];
        *(v29 + 11) = 2082;
        v32 = &v13[*(v7 + 20)];
        *(v29 + 13) = sub_1B0399D64(*(v32 + 1), *(v32 + 2), &v49);
        *(v29 + 21) = 1040;
        *(v29 + 23) = 2;
        *(v29 + 27) = 512;
        LOWORD(v31) = *(v31 + 12);
        sub_1B0BC2440(v10, type metadata accessor for MailboxTaskLogger);
        *(v29 + 29) = v31;
        *(v29 + 31) = 2160;
        *(v29 + 33) = 0x786F626C69616DLL;
        *(v29 + 41) = 2085;
        v33 = *(v32 + 4);
        v34 = *(v32 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC2440(v13, type metadata accessor for MailboxTaskLogger);
        v50 = v33;
        v51 = v34;
        v35 = sub_1B0E44BA8();
        v37 = sub_1B0399D64(v35, v36, &v49);

        *(v29 + 43) = v37;
        *(v29 + 51) = 2048;
        *(v29 + 53) = *(v43 + 16);
        *(v29 + 61) = 2048;
        swift_beginAccess();
        *(v29 + 63) = sub_1B0BBE9BC();
        v38 = v45;
        _os_log_impl(&dword_1B0389000, v45, v44, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Grouped the local flag changes into %ld message sets. Expecting %ld commands.", v29, 0x47u);
        v39 = v46;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v39, -1, -1);
        MEMORY[0x1B272C230](v29, -1, -1);
      }

      else
      {
        sub_1B0BC2440(v10, type metadata accessor for MailboxTaskLogger);

        sub_1B0BC2440(v13, type metadata accessor for MailboxTaskLogger);
      }
    }

    v23 = v47;
  }

  swift_beginAccess();
  sub_1B0BBEB28(a2, v48);
  swift_endAccess();
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52D0, &unk_1B0ECD740) + 48);
  sub_1B0BC23D8(v21, v4, type metadata accessor for UploadFlagChanges.EncodedFlags);
  *(v4 + v42) = v23;
  swift_storeEnumTagMultiPayload();
  return sub_1B0BC2440(v21, type metadata accessor for UploadFlagChanges.EncodedFlags);
}

uint64_t sub_1B0BBB1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v265 = a6;
  v270 = a3;
  v271 = a1;
  v251 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  v9 = *(*(v251 - 8) + 64);
  MEMORY[0x1EEE9AC00](v251);
  v252 = &v242 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v261 - 8) + 64);
  MEMORY[0x1EEE9AC00](v261);
  v244 = &v242 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v245 = &v242 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v254 = &v242 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v256 = &v242 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v246 = &v242 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v247 = &v242 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v258 = &v242 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v259 = &v242 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v249 = &v242 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v250 = &v242 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v267 = &v242 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v264 = &v242 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v242 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v268 = *(v40 - 8);
  v269 = v40;
  v41 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v242 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v262 = &v242 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v255 = &v242 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v242 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v257 = &v242 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v263 = &v242 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v253 = &v242 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v248 = &v242 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v242 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v260 = &v242 - v63;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v64 = *(*(v272 - 8) + 64);
  MEMORY[0x1EEE9AC00](v272);
  v66 = &v242 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v242 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v273 = &v242 - v71;
  v72 = type metadata accessor for UploadFlagChanges(0);
  v73 = *(v72 + 52);
  if (!*(v6 + v73))
  {
    *(v6 + v73) = 1;
    v79 = swift_allocObject();
    v80 = v6[1];
    v79[2] = *v6;
    v79[3] = v80;
    v79[4] = 1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 0;
  }

  v74 = v72;
  v242 = v43;
  v75 = a4;
  if ((sub_1B0A9F738(1, a2, a4) & 1) == 0)
  {
    v82 = swift_allocObject();
    v83 = v6[1];
    v82[2] = *v6;
    v82[3] = v83;
    v82[4] = 733;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 1;
  }

  v76 = v74[11];
  v243 = v74[10];
  v266 = v6;
  MessageIdentifierSet.subtracting(_:)(v6 + v243, v273);
  v77 = v270;
  if ((sub_1B0A99994(1, v271, a2, v270) & 1) != 0 && (sub_1B0A9F738(3, a2, v75) & 1) == 0)
  {
    sub_1B03B5C80(v273, v69, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v69, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v78 = 1;
    }

    else
    {
      sub_1B03C60A4(v69, v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v61, v39, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v78 = 0;
    }

    v85 = v268;
    v84 = v269;
    (*(v268 + 56))(v39, v78, 1, v269);
    if ((*(v85 + 48))(v39, 1, v84) == 1)
    {
      sub_1B0398EFC(v39, &unk_1EB6E3670, &unk_1B0E9B260);
      goto LABEL_12;
    }

    v93 = v260;
    sub_1B03C60A4(v39, v260, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v94 = v267;
    MessageIdentifierSet.ranges.getter(v267);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v95 = sub_1B0E46E18();
    v96 = sub_1B0E46E28();
    v97 = sub_1B0E46E18();
    v98 = sub_1B0E46E28();
    if (v95 < v97 || v98 < v95)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v99 = sub_1B0E46E18();
    v100 = sub_1B0E46E28();
    sub_1B0398EFC(v94, &unk_1EB6E2780, &unk_1B0E9C5E0);
    v101 = v96 < v99;
    v102 = v258;
    v103 = v259;
    if (v101 || v100 < v96)
    {
      goto LABEL_91;
    }

    v104 = v96 - v95;
    if (__OFSUB__(v96, v95))
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      result = sub_1B0E46BA8();
      __break(1u);
      return result;
    }

    v105 = v263;
    if (v104 > 19)
    {
      v191 = v265;
      sub_1B0BC23D8(v265, v259, type metadata accessor for MailboxTaskLogger);
      sub_1B0BC23D8(v191, v102, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v93, v105, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v111 = sub_1B0E43988();
      v192 = sub_1B0E45908();
      if (os_log_type_enabled(v111, v192))
      {
        v113 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        v276 = v271;
        *v113 = 68159491;
        *(v113 + 4) = 2;
        *(v113 + 8) = 256;
        v193 = v261;
        v194 = v102 + *(v261 + 20);
        *(v113 + 10) = *v194;
        *(v113 + 11) = 2082;
        v195 = v103 + *(v193 + 20);
        *(v113 + 13) = sub_1B0399D64(*(v195 + 8), *(v195 + 16), &v276);
        *(v113 + 21) = 1040;
        *(v113 + 23) = 2;
        *(v113 + 27) = 512;
        LOWORD(v194) = *(v194 + 24);
        sub_1B0BC2440(v102, type metadata accessor for MailboxTaskLogger);
        *(v113 + 29) = v194;
        *(v113 + 31) = 2160;
        *(v113 + 33) = 0x786F626C69616DLL;
        *(v113 + 41) = 2085;
        v196 = *(v195 + 32);
        LODWORD(v195) = *(v195 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC2440(v103, type metadata accessor for MailboxTaskLogger);
        v274 = v196;
        v275 = v195;
        v197 = sub_1B0E44BA8();
        v199 = sub_1B0399D64(v197, v198, &v276);

        *(v113 + 43) = v199;
        *(v113 + 51) = 2048;
        v200 = v263;
        v201 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v200, &unk_1EB6E26C0, &unk_1B0E9DE10);
        *(v113 + 53) = v201;
        _os_log_impl(&dword_1B0389000, v111, v192, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to delete %ld messages after uploading flag changes", v113, 0x3Du);
        v129 = v271;
        goto LABEL_68;
      }

      sub_1B0398EFC(v105, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0BC2440(v102, type metadata accessor for MailboxTaskLogger);

      v216 = v103;
    }

    else
    {
      v106 = v265;
      v107 = v250;
      sub_1B0BC23D8(v265, v250, type metadata accessor for MailboxTaskLogger);
      v108 = v249;
      sub_1B0BC23D8(v106, v249, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v109 = v248;
      sub_1B03B5C80(v93, v248, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v110 = v253;
      sub_1B03B5C80(v93, v253, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v111 = sub_1B0E43988();
      v112 = sub_1B0E45908();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        v276 = v271;
        *v113 = 68159747;
        *(v113 + 4) = 2;
        *(v113 + 8) = 256;
        v114 = v261;
        v115 = v108 + *(v261 + 20);
        *(v113 + 10) = *v115;
        *(v113 + 11) = 2082;
        v116 = v107 + *(v114 + 20);
        *(v113 + 13) = sub_1B0399D64(*(v116 + 8), *(v116 + 16), &v276);
        *(v113 + 21) = 1040;
        *(v113 + 23) = 2;
        *(v113 + 27) = 512;
        LOWORD(v115) = *(v115 + 24);
        sub_1B0BC2440(v108, type metadata accessor for MailboxTaskLogger);
        *(v113 + 29) = v115;
        *(v113 + 31) = 2160;
        *(v113 + 33) = 0x786F626C69616DLL;
        *(v113 + 41) = 2085;
        v117 = *(v116 + 32);
        LODWORD(v116) = *(v116 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC2440(v107, type metadata accessor for MailboxTaskLogger);
        v274 = v117;
        v275 = v116;
        v118 = sub_1B0E44BA8();
        v120 = sub_1B0399D64(v118, v119, &v276);

        *(v113 + 43) = v120;
        *(v113 + 51) = 2048;
        v121 = v272;
        v122 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v109, &unk_1EB6E26C0, &unk_1B0E9DE10);
        *(v113 + 53) = v122;
        *(v113 + 61) = 2082;
        v123 = v121;
        v124 = v253;
        v125 = MessageIdentifierSet.debugDescription.getter(v123);
        v127 = v126;
        sub_1B0398EFC(v124, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v128 = sub_1B0399D64(v125, v127, &v276);

        *(v113 + 63) = v128;
        _os_log_impl(&dword_1B0389000, v111, v112, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to delete %ld messages with UIDs %{public}s after uploading flag changes", v113, 0x47u);
        v129 = v271;
LABEL_68:
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v129, -1, -1);
        MEMORY[0x1B272C230](v113, -1, -1);

LABEL_76:
        sub_1B0398EFC(v273, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390);
        swift_allocBox();
        v218 = *(v217 + 48);
        v219 = v266[1];
        *v220 = *v266;
        v220[1] = v219;
        sub_1B03C60A4(v93, v220 + v218, &unk_1EB6E26C0, &unk_1B0E9DE10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return 3;
      }

      sub_1B0398EFC(v109, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0BC2440(v108, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v110, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v216 = v107;
    }

    sub_1B0BC2440(v216, type metadata accessor for MailboxTaskLogger);
    goto LABEL_76;
  }

LABEL_12:
  v86 = v271;
  v87 = sub_1B0A99994(1, v271, a2, v77);
  v88 = v266;
  v89 = v75;
  if ((v87 & 1) != 0 && (sub_1B0A9F738(4, a2, v75) & 1) == 0)
  {
    sub_1B03B5C80(v88 + v243, v66, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v66, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v91 = 1;
      v92 = v267;
      v90 = v264;
    }

    else
    {
      sub_1B03C60A4(v66, v50, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v90 = v264;
      sub_1B03C60A4(v50, v264, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v91 = 0;
      v92 = v267;
    }

    v131 = v268;
    v130 = v269;
    (*(v268 + 56))(v90, v91, 1, v269);
    if ((*(v131 + 48))(v90, 1, v130) == 1)
    {
      sub_1B0398EFC(v90, &unk_1EB6E3670, &unk_1B0E9B260);
      v88 = v266;
      goto LABEL_27;
    }

    v135 = v257;
    sub_1B03C60A4(v90, v257, &unk_1EB6E26C0, &unk_1B0E9DE10);
    MessageIdentifierSet.ranges.getter(v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v136 = sub_1B0E46E18();
    v137 = sub_1B0E46E28();
    v138 = sub_1B0E46E18();
    v139 = sub_1B0E46E28();
    if (v136 < v138 || v139 < v136)
    {
      goto LABEL_93;
    }

    v140 = sub_1B0E46E18();
    v141 = sub_1B0E46E28();
    sub_1B0398EFC(v92, &unk_1EB6E2780, &unk_1B0E9C5E0);
    v142 = v256;
    v143 = v255;
    if (v137 < v140 || v141 < v137)
    {
      goto LABEL_94;
    }

    v144 = v137 - v136;
    v145 = v262;
    if (__OFSUB__(v137, v136))
    {
      goto LABEL_95;
    }

    v146 = v254;
    if (v144 <= 19)
    {
      v147 = v265;
      v148 = v247;
      sub_1B0BC23D8(v265, v247, type metadata accessor for MailboxTaskLogger);
      v149 = v246;
      sub_1B0BC23D8(v147, v246, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v135, v143, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03B5C80(v135, v145, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v204 = sub_1B0E43988();
      v150 = sub_1B0E45908();
      if (os_log_type_enabled(v204, v150))
      {
        v151 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        v276 = v271;
        *v151 = 68159747;
        *(v151 + 4) = 2;
        *(v151 + 8) = 256;
        v152 = v261;
        v153 = v149 + *(v261 + 20);
        *(v151 + 10) = *v153;
        v154 = v148;
        *(v151 + 11) = 2082;
        v155 = v148 + *(v152 + 20);
        *(v151 + 13) = sub_1B0399D64(*(v155 + 8), *(v155 + 16), &v276);
        *(v151 + 21) = 1040;
        *(v151 + 23) = 2;
        *(v151 + 27) = 512;
        LOWORD(v153) = *(v153 + 24);
        sub_1B0BC2440(v149, type metadata accessor for MailboxTaskLogger);
        *(v151 + 29) = v153;
        *(v151 + 31) = 2160;
        *(v151 + 33) = 0x786F626C69616DLL;
        *(v151 + 41) = 2085;
        v156 = *(v155 + 32);
        LODWORD(v155) = *(v155 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC2440(v154, type metadata accessor for MailboxTaskLogger);
        v274 = v156;
        v275 = v155;
        v157 = sub_1B0E44BA8();
        v159 = sub_1B0399D64(v157, v158, &v276);

        *(v151 + 43) = v159;
        *(v151 + 51) = 2048;
        v160 = v272;
        v161 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v143, &unk_1EB6E26C0, &unk_1B0E9DE10);
        *(v151 + 53) = v161;
        *(v151 + 61) = 2082;
        v162 = v160;
        v163 = v262;
        v164 = MessageIdentifierSet.debugDescription.getter(v162);
        v166 = v165;
        sub_1B0398EFC(v163, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v167 = sub_1B0399D64(v164, v166, &v276);

        *(v151 + 63) = v167;
        _os_log_impl(&dword_1B0389000, v204, v150, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing %ld deleted messages with UIDs %{public}s after uploading flag changes", v151, 0x47u);
        v168 = v271;
LABEL_71:
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v168, -1, -1);
        MEMORY[0x1B272C230](v151, -1, -1);

LABEL_80:
        sub_1B0398EFC(v273, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390);
        swift_allocBox();
        v223 = *(v222 + 48);
        v224 = v266[1];
        *v225 = *v266;
        v225[1] = v224;
        sub_1B03C60A4(v135, v225 + v223, &unk_1EB6E26C0, &unk_1B0E9DE10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return 4;
      }

      sub_1B0398EFC(v143, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0BC2440(v149, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v145, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v221 = v148;
    }

    else
    {
      v202 = v265;
      sub_1B0BC23D8(v265, v256, type metadata accessor for MailboxTaskLogger);
      sub_1B0BC23D8(v202, v146, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v203 = v242;
      sub_1B03B5C80(v135, v242, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v204 = sub_1B0E43988();
      v205 = sub_1B0E45908();
      if (os_log_type_enabled(v204, v205))
      {
        v207 = v146;
        v151 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        v276 = v271;
        *v151 = 68159491;
        *(v151 + 4) = 2;
        *(v151 + 8) = 256;
        v208 = v261;
        v209 = v207 + *(v261 + 20);
        *(v151 + 10) = *v209;
        *(v151 + 11) = 2082;
        v210 = v142 + *(v208 + 20);
        *(v151 + 13) = sub_1B0399D64(*(v210 + 8), *(v210 + 16), &v276);
        *(v151 + 21) = 1040;
        *(v151 + 23) = 2;
        *(v151 + 27) = 512;
        LOWORD(v209) = *(v209 + 24);
        sub_1B0BC2440(v207, type metadata accessor for MailboxTaskLogger);
        *(v151 + 29) = v209;
        *(v151 + 31) = 2160;
        *(v151 + 33) = 0x786F626C69616DLL;
        *(v151 + 41) = 2085;
        v211 = *(v210 + 32);
        LODWORD(v210) = *(v210 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC2440(v142, type metadata accessor for MailboxTaskLogger);
        v274 = v211;
        v275 = v210;
        v212 = sub_1B0E44BA8();
        v214 = sub_1B0399D64(v212, v213, &v276);

        *(v151 + 43) = v214;
        *(v151 + 51) = 2048;
        v215 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v203, &unk_1EB6E26C0, &unk_1B0E9DE10);
        *(v151 + 53) = v215;
        _os_log_impl(&dword_1B0389000, v204, v205, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing %ld deleted messages after uploading flag changes", v151, 0x3Du);
        v168 = v271;
        goto LABEL_71;
      }

      sub_1B0398EFC(v203, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0BC2440(v146, type metadata accessor for MailboxTaskLogger);

      v221 = v142;
    }

    sub_1B0BC2440(v221, type metadata accessor for MailboxTaskLogger);
    goto LABEL_80;
  }

LABEL_27:
  if ((sub_1B0B718A4(0, a2, v77) & 1) != 0 && (sub_1B0A99994(0, v86, a2, v77) & 1) == 0)
  {
    if (sub_1B0A99994(1, v86, a2, v77))
    {
LABEL_38:
      sub_1B0398EFC(v273, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return 5;
    }

    v133 = 0;
    goto LABEL_34;
  }

  v132 = v88 + v74[8];
  v133 = sub_1B0BBCF50();
  if ((sub_1B0A99994(1, v86, a2, v77) & 1) == 0)
  {
LABEL_34:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v134 = sub_1B0E46E98();
    if (!v133 || (v134 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (!v133)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (sub_1B0AD4EFC(1, v86, a2, v77) & 1) != 0 || (sub_1B0A9F738(2, a2, v89))
  {
    goto LABEL_38;
  }

  v169 = v252;
  sub_1B0BC23D8(v266 + v74[8], v252, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0398EFC(v273, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0BC2440(v169, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    return 5;
  }

  v170 = *(v169 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52D0, &unk_1B0ECD740) + 48));
  sub_1B0BC2440(v169, type metadata accessor for UploadFlagChanges.EncodedFlags);
  v171 = sub_1B0BACC44(MEMORY[0x1E69E7CC0]);
  v172 = *(v170 + 16);
  if (v172)
  {
    v173 = 0;
    v174 = 0;
    v175 = (v170 + 56);
    v176 = v272;
    while (v174 < *(v170 + 16))
    {
      v177 = *(v175 - 6);
      v178 = *v175;
      LODWORD(v274) = *(v175 - 6);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (MessageIdentifierSet.contains(_:)(&v274, v176) & 1) != 0 || (LODWORD(v274) = v177, (MessageIdentifierSet.contains(_:)(&v274, v176)))
      {
      }

      else
      {
        sub_1B03B1AF0(v173);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v274 = v171;
        v180 = sub_1B03FE284(v177);
        v182 = v171[2];
        v183 = (v181 & 1) == 0;
        v184 = __OFADD__(v182, v183);
        v185 = v182 + v183;
        if (v184)
        {
          goto LABEL_89;
        }

        v186 = v181;
        if (v171[3] >= v185)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v190 = v180;
            sub_1B0B8EB40();
            v180 = v190;
          }
        }

        else
        {
          sub_1B0B32E60(v185, isUniquelyReferenced_nonNull_native);
          v180 = sub_1B03FE284(v177);
          if ((v186 & 1) != (v187 & 1))
          {
            goto LABEL_96;
          }
        }

        v176 = v272;
        v171 = v274;
        if ((v186 & 1) == 0)
        {
          v188 = v180;
          sub_1B0A9BD80(v180, v177, MEMORY[0x1E69E7CD0], v274);
          v180 = v188;
        }

        v189 = v171[7] + 8 * v180;
        sub_1B0AFBCE4(v178);
        v173 = sub_1B0B6EA2C;
      }

      ++v174;
      v175 += 4;
      if (v172 == v174)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v173 = 0;
LABEL_82:

  if (!v171[2])
  {
    sub_1B0398EFC(v273, &unk_1EB6E1AF0, &unk_1B0E9AF40);

    sub_1B03B1AF0(v173);
    return 5;
  }

  v226 = v265;
  v227 = v245;
  sub_1B0BC23D8(v265, v245, type metadata accessor for MailboxTaskLogger);
  v228 = v244;
  sub_1B0BC23D8(v226, v244, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v229 = sub_1B0E43988();
  v230 = sub_1B0E45908();
  if (os_log_type_enabled(v229, v230))
  {
    v231 = swift_slowAlloc();
    v272 = swift_slowAlloc();
    v276 = v272;
    *v231 = 68159491;
    *(v231 + 4) = 2;
    *(v231 + 8) = 256;
    v232 = v261;
    v233 = v228 + *(v261 + 20);
    *(v231 + 10) = *v233;
    *(v231 + 11) = 2082;
    v234 = v227 + *(v232 + 20);
    *(v231 + 13) = sub_1B0399D64(*(v234 + 8), *(v234 + 16), &v276);
    *(v231 + 21) = 1040;
    *(v231 + 23) = 2;
    *(v231 + 27) = 512;
    LOWORD(v233) = *(v233 + 24);
    sub_1B0BC2440(v228, type metadata accessor for MailboxTaskLogger);
    *(v231 + 29) = v233;
    *(v231 + 31) = 2160;
    *(v231 + 33) = 0x786F626C69616DLL;
    *(v231 + 41) = 2085;
    v235 = *(v234 + 32);
    LODWORD(v234) = *(v234 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BC2440(v227, type metadata accessor for MailboxTaskLogger);
    v274 = v235;
    v275 = v234;
    v236 = sub_1B0E44BA8();
    v238 = sub_1B0399D64(v236, v237, &v276);

    *(v231 + 43) = v238;
    *(v231 + 51) = 2048;
    *(v231 + 53) = v171[2];
    _os_log_impl(&dword_1B0389000, v229, v230, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did upload flags for %ld messages", v231, 0x3Du);
    v239 = v272;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v239, -1, -1);
    MEMORY[0x1B272C230](v231, -1, -1);
  }

  else
  {
    sub_1B0BC2440(v228, type metadata accessor for MailboxTaskLogger);

    sub_1B0BC2440(v227, type metadata accessor for MailboxTaskLogger);
  }

  sub_1B0398EFC(v273, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v240 = swift_allocObject();
  v241 = v266[1];
  v240[2] = *v266;
  v240[3] = v241;
  v240[4] = v171;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1AF0(v173);
  return 2;
}

BOOL sub_1B0BBCF50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52C0, &qword_1B0ECD5D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BC23D8(v1, v13, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B0BC2440(v13, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  v15 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52D0, &unk_1B0ECD740) + 48)];

  sub_1B0BC24A0(v13, v9, type metadata accessor for UploadFlagChanges.EncodedFlags);
  sub_1B03B5C80(v9, v5, &qword_1EB6E52C0, &qword_1B0ECD5D8);
  v16 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v17 = (*(*(v16 - 8) + 48))(v5, 1, v16);
  sub_1B0398EFC(v5, &qword_1EB6E52C0, &qword_1B0ECD5D8);
  v18 = v17 == 1 && *&v9[*(v6 + 24) + 16] == *&v9[*(v6 + 24) + 24] >> 1;
  sub_1B0BC2440(v9, type metadata accessor for UploadFlagChanges.EncodedFlags);
  return v18;
}

void sub_1B0BBD1BC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v86 = a1;
  v80 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v71 - v8;
  v9 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v13 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  v19 = type metadata accessor for UploadFlagChanges(0);
  v73 = *(v19 + 44);
  sub_1B03B5C80(v3 + v73, v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v20 = *(v19 + 32);
  sub_1B0BC23D8(v3 + v20, v12, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B0BC2440(v12, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v82 = MEMORY[0x1E69E7CC0];
    v22 = v83;
    v23 = v18;
LABEL_8:
    v29 = v85;
    v30 = *(v86 + 16);
    if (v30)
    {
      v31 = 0;
      v32 = v86 + 32;
      *&v21 = 68159491;
      v77 = v21;
      v76 = v3;
      v75 = v9;
      v79 = a2;
      v78 = v23;
      v74 = v20;
      v81 = v30;
      v72 = v86 + 32;
      while (2)
      {
        v33 = (v32 + 32 * v31);
        v34 = v31;
        v35 = v84;
        while (1)
        {
          if (v34 >= v30)
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v36 = v33[1];
          *v89 = *v33;
          *&v89[16] = v36;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_47;
          }

          v86 = v34 + 1;
          sub_1B074EC14(v89, v88);
          if (MessageIdentifierSet.count.getter() > 732)
          {
            sub_1B03F5C58(v89);
LABEL_44:
            v3 = v76;
            v20 = v74;
            goto LABEL_45;
          }

          v37 = *v89;
          *v88 = *v89;
          if ((MessageIdentifierSet.contains(_:)(v88, v35) & 1) == 0)
          {
            break;
          }

          sub_1B0BC23D8(a2, v29, type metadata accessor for MailboxTaskLogger);
          sub_1B0BC23D8(a2, v22, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B074EC14(v89, v88);
          v38 = sub_1B0E43988();
          v39 = sub_1B0E458E8();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v87 = v41;
            *v40 = v77;
            *(v40 + 4) = 2;
            *(v40 + 8) = 256;
            v42 = v80;
            v43 = v22 + *(v80 + 20);
            *(v40 + 10) = *v43;
            *(v40 + 11) = 2082;
            v44 = v85 + *(v42 + 20);
            *(v40 + 13) = sub_1B0399D64(*(v44 + 8), *(v44 + 16), &v87);
            *(v40 + 21) = 1040;
            *(v40 + 23) = 2;
            *(v40 + 27) = 512;
            LOWORD(v43) = *(v43 + 24);
            sub_1B0BC2440(v83, type metadata accessor for MailboxTaskLogger);
            *(v40 + 29) = v43;
            *(v40 + 31) = 2160;
            *(v40 + 33) = 0x786F626C69616DLL;
            *(v40 + 41) = 2085;
            v45 = *(v44 + 32);
            LODWORD(v44) = *(v44 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0BC2440(v85, type metadata accessor for MailboxTaskLogger);
            *v88 = v45;
            *&v88[8] = v44;
            a2 = v79;
            v46 = sub_1B0E44BA8();
            v48 = sub_1B0399D64(v46, v47, &v87);
            v35 = v84;

            *(v40 + 43) = v48;
            v22 = v83;
            *(v40 + 51) = 1024;
            sub_1B03F5C58(v89);
            *(v40 + 53) = v37;
            sub_1B03F5C58(v89);
            _os_log_impl(&dword_1B0389000, v38, v39, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring duplicate updates for UID %u.", v40, 0x39u);
            swift_arrayDestroy();
            v49 = v41;
            v23 = v78;
            MEMORY[0x1B272C230](v49, -1, -1);
            v50 = v40;
            v29 = v85;
            MEMORY[0x1B272C230](v50, -1, -1);
          }

          else
          {
            sub_1B03F5C58(v89);
            sub_1B0BC2440(v22, type metadata accessor for MailboxTaskLogger);
            sub_1B03F5C58(v89);

            sub_1B0BC2440(v29, type metadata accessor for MailboxTaskLogger);
          }

          ++v34;
          v33 += 2;
          v30 = v81;
          if (v86 == v81)
          {
            goto LABEL_44;
          }
        }

        LODWORD(v87) = v37;
        MessageIdentifierSet.insert(_:)(v88, &v87, v35);
        v51 = 256;
        if (!v89[5])
        {
          v51 = 0;
        }

        v52 = v51 | v89[4];
        v53 = 0x10000;
        if (!v89[6])
        {
          v53 = 0;
        }

        v54 = 0x1000000;
        if (!v89[7])
        {
          v54 = 0;
        }

        v55 = v52 | v53 | v54;
        v56 = 0x100000000;
        if (!v89[8])
        {
          v56 = 0;
        }

        v57 = 0x10000000000;
        if (!v89[9])
        {
          v57 = 0;
        }

        v88[0] = v89[12];
        *&v88[1] = *&v89[13];
        v88[9] = v89[21];
        v58 = FlagsWithModifications.locallyModified.getter(v55 | v56 | v57 | (v89[10] << 48) | (v89[11] << 56), *v88, *&v88[8]);
        if (*(v58 + 16))
        {
          v59 = *(v58 + 40);
          v60 = v58;
          sub_1B0E46C28();
          MEMORY[0x1B2728D70](1);
          v61 = sub_1B0E46CB8();
          v62 = -1 << *(v60 + 32);
          v63 = v61 & ~v62;
          v3 = v76;
          v20 = v74;
          if ((*(v60 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63))
          {
            v64 = ~v62;
            while (*(*(v60 + 48) + v63) != 1)
            {
              v63 = (v63 + 1) & v64;
              if (((*(v60 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            LODWORD(v87) = v37;
            MessageIdentifierSet.insert(_:)(v88, &v87, v84);
          }

          else
          {
LABEL_34:
          }
        }

        else
        {

          v3 = v76;
          v20 = v74;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v81;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v82 = sub_1B0B00DC8(0, *(v82 + 2) + 1, 1, v82);
        }

        v67 = *(v82 + 2);
        v66 = *(v82 + 3);
        if (v67 >= v66 >> 1)
        {
          v82 = sub_1B0B00DC8((v66 > 1), v67 + 1, 1, v82);
        }

        v68 = v82;
        *(v82 + 2) = v67 + 1;
        v69 = &v68[32 * v67];
        v70 = *&v89[16];
        *(v69 + 2) = *v89;
        *(v69 + 3) = v70;
        v31 = v86;
        v32 = v72;
        if (v86 != v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_45:
    sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0BC2440(v3 + v20, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    *(v3 + v20) = v82;
    swift_storeEnumTagMultiPayload();
    return;
  }

  v24 = *v12;
  sub_1B03B5C80(v18, v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v25 = *(v24 + 16);
  v82 = v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = v83;
  v23 = v18;
  if (!v25)
  {
LABEL_7:

    sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v15, v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_8;
  }

  v26 = 0;
  v27 = v82 + 32;
  while (v26 < *(v82 + 2))
  {
    ++v26;
    v28 = *v27;
    v27 += 32;
    *v89 = v28;
    MessageIdentifierSet.insert(_:)(v88, v89, v84);
    if (v25 == v26)
    {
      goto LABEL_7;
    }
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_1B0BBDAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  v71 = type metadata accessor for UploadFlagChanges(0);
  if (*(a2 + *(v71 + 48)))
  {
    sub_1B0BC23D8(a3, v17, type metadata accessor for MailboxTaskLogger);
    sub_1B0BC23D8(a3, v14, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E45908();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v74 = v66;
      *v26 = 68159235;
      v67 = a2;
      v68 = v8;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = v70;
      v28 = *(v70 + 20);
      v69 = v11;
      v29 = &v14[v28];
      *(v26 + 10) = v14[v28];
      *(v26 + 11) = 2082;
      v30 = &v17[*(v27 + 20)];
      *(v26 + 13) = sub_1B0399D64(*(v30 + 1), *(v30 + 2), &v74);
      *(v26 + 21) = 1040;
      *(v26 + 23) = 2;
      *(v26 + 27) = 512;
      v31 = *(v29 + 12);
      sub_1B0BC2440(v14, type metadata accessor for MailboxTaskLogger);
      *(v26 + 29) = v31;
      *(v26 + 31) = 2160;
      *(v26 + 33) = 0x786F626C69616DLL;
      *(v26 + 41) = 2085;
      v32 = *(v30 + 4);
      v33 = *(v30 + 10);
      v8 = v68;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC2440(v17, type metadata accessor for MailboxTaskLogger);
      v72 = v32;
      v73 = v33;
      a2 = v67;
      v34 = sub_1B0E44BA8();
      v36 = sub_1B0399D64(v34, v35, &v74);

      *(v26 + 43) = v36;
      v11 = v69;
      _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more flag changes to upload. Will mark as needing to re-run.", v26, 0x33u);
      v37 = v66;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v37, -1, -1);
      MEMORY[0x1B272C230](v26, -1, -1);
    }

    else
    {
      sub_1B0BC2440(v14, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC2440(v17, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B03BDE74(7u);
    result = sub_1B03BDD7C(&v72, 7);
  }

  else
  {
    sub_1B0BC23D8(a3, v23, type metadata accessor for MailboxTaskLogger);
    sub_1B0BC23D8(a3, v20, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v38 = sub_1B0E43988();
    v39 = sub_1B0E45908();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v74 = v66;
      *v40 = 68159235;
      v68 = v8;
      v69 = v11;
      *(v40 + 4) = 2;
      *(v40 + 8) = 256;
      v41 = v70;
      v42 = *(v70 + 20);
      v67 = a2;
      v43 = &v20[v42];
      *(v40 + 10) = v20[v42];
      *(v40 + 11) = 2082;
      v44 = a1;
      v45 = &v23[*(v41 + 20)];
      *(v40 + 13) = sub_1B0399D64(*(v45 + 1), *(v45 + 2), &v74);
      *(v40 + 21) = 1040;
      *(v40 + 23) = 2;
      *(v40 + 27) = 512;
      LOWORD(v43) = *(v43 + 12);
      sub_1B0BC2440(v20, type metadata accessor for MailboxTaskLogger);
      *(v40 + 29) = v43;
      *(v40 + 31) = 2160;
      *(v40 + 33) = 0x786F626C69616DLL;
      *(v40 + 41) = 2085;
      v46 = *(v45 + 4);
      LODWORD(v43) = *(v45 + 10);
      a1 = v44;
      v8 = v68;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC2440(v23, type metadata accessor for MailboxTaskLogger);
      v72 = v46;
      v73 = v43;
      a2 = v67;
      v47 = sub_1B0E44BA8();
      v49 = sub_1B0399D64(v47, v48, &v74);

      *(v40 + 43) = v49;
      v11 = v69;
      _os_log_impl(&dword_1B0389000, v38, v39, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking no more flag changes pending upload.", v40, 0x33u);
      v50 = v66;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v50, -1, -1);
      MEMORY[0x1B272C230](v40, -1, -1);
    }

    else
    {
      sub_1B0BC2440(v20, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC2440(v23, type metadata accessor for MailboxTaskLogger);
    }

    result = type metadata accessor for MailboxSyncState();
    *(a1 + *(result + 52) + 1) = 0;
  }

  if (*(a2 + *(v71 + 52)) == 3)
  {
    sub_1B0BC23D8(a3, v11, type metadata accessor for MailboxTaskLogger);
    sub_1B0BC23D8(a3, v8, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v52 = sub_1B0E43988();
    v53 = sub_1B0E45908();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = v8;
      v56 = swift_slowAlloc();
      v74 = v56;
      *v54 = 68159235;
      *(v54 + 4) = 2;
      *(v54 + 8) = 256;
      v57 = v70;
      v58 = v55 + *(v70 + 20);
      *(v54 + 10) = *v58;
      *(v54 + 11) = 2082;
      v59 = v11;
      v60 = &v11[*(v57 + 20)];
      *(v54 + 13) = sub_1B0399D64(*(v60 + 1), *(v60 + 2), &v74);
      *(v54 + 21) = 1040;
      *(v54 + 23) = 2;
      *(v54 + 27) = 512;
      LOWORD(v58) = *(v58 + 24);
      sub_1B0BC2440(v55, type metadata accessor for MailboxTaskLogger);
      *(v54 + 29) = v58;
      *(v54 + 31) = 2160;
      *(v54 + 33) = 0x786F626C69616DLL;
      *(v54 + 41) = 2085;
      v61 = *(v60 + 4);
      LODWORD(v60) = *(v60 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC2440(v59, type metadata accessor for MailboxTaskLogger);
      v72 = v61;
      v73 = v60;
      v62 = sub_1B0E44BA8();
      v64 = sub_1B0399D64(v62, v63, &v74);

      *(v54 + 43) = v64;
      _os_log_impl(&dword_1B0389000, v52, v53, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking flag changes upload as “has dependencies”.", v54, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v56, -1, -1);
      MEMORY[0x1B272C230](v54, -1, -1);
    }

    else
    {
      sub_1B0BC2440(v8, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC2440(v11, type metadata accessor for MailboxTaskLogger);
    }

    return sub_1B03BDD7C(&v72, 7);
  }

  return result;
}

uint64_t sub_1B0BBE314()
{
  if (qword_1EB6DDA80 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0BBE38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_1B0BBB1F4(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  return result;
}

uint64_t sub_1B0BBE3CC(uint64_t result)
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v9, v2, v3, 0, sub_1B0BC1974);
    result = sub_1B03BB638(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

uint64_t sub_1B0BBE4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52F0, &qword_1B0ECD778);
  v6 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = (v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v51 = v43 - v9;
  v50 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v49 = *(v50 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CC0];
  v60 = sub_1B0BACA44(MEMORY[0x1E69E7CC0]);
  sub_1B0B0D4C8(a2, &v59);
  sub_1B0BC197C(a1, a2, &v60);
  sub_1B0B0D500(a2);
  sub_1B0B0D500(a2);
  v14 = v60;
  v15 = *(v60 + 16);
  if (v15)
  {
    v43[1] = a1;
    v44 = a3;
    v59 = v13;
    sub_1B0B0A444(0, v15, 0);
    v13 = v59;
    v16 = v14 + 64;
    v17 = -1 << *(v14 + 32);
    result = sub_1B0E460B8();
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
      v28 = v27 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 72) * v19;
      v58 = *(v26 + 16 * v19);
      v29 = v13;
      v30 = v51;
      sub_1B03B5C80(v28, &v51[v25], &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v31 = v52;
      *v52 = v58;
      v32 = *(v24 + 48);
      v12 = v23;
      v33 = &v30[v25];
      v13 = v29;
      sub_1B03C60A4(v33, v31 + v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03B5C80(v31 + v32, v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *(v23 + *(v50 + 20)) = v58;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0398EFC(v31, &qword_1EB6E52F0, &qword_1B0ECD778);
      v59 = v29;
      v35 = v29[2];
      v34 = v29[3];
      if (v35 >= v34 >> 1)
      {
        sub_1B0B0A444(v34 > 1, v35 + 1, 1);
        v13 = v59;
      }

      v13[2] = v35 + 1;
      result = sub_1B0BC24A0(v23, v13 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v35, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
            result = sub_1B0425168(v19, v57, 0);
            v21 = __clz(__rbit64(v41)) + v38;
            goto LABEL_4;
          }
        }

        result = sub_1B0425168(v19, v57, 0);
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
    sub_1B0BBA1CC(v13, a3);
  }

  return result;
}

uint64_t sub_1B0BBE9BC()
{
  v1 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
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
      result = sub_1B0BC23D8(v10, v5, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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

      sub_1B0BC2440(v5, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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

uint64_t sub_1B0BBEB28@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v94 = a1;
  v84 = a2;
  v86 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v98 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52C0, &qword_1B0ECD5D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v83 - v13;
  v15 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v83 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v83 - v21;
  v87 = v23;
  v88 = v14 + 8;
  v95 = (v23 + 48);
  v96 = (v23 + 56);
  *&v24 = 68159491;
  v85 = v24;
  v90 = &v83 - v21;
  v92 = v11;
  for (i = v14; ; v14 = i)
  {
    sub_1B03B5C80(v3, v11, &qword_1EB6E52C0, &qword_1B0ECD5D8);
    if ((*v95)(v11, 1, v15) == 1)
    {
      sub_1B0398EFC(v11, &qword_1EB6E52C0, &qword_1B0ECD5D8);
      result = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
      v26 = (v3 + *(result + 24));
      v28 = v26[2];
      v27 = v26[3];
      if (v28 == v27 >> 1)
      {
        (*v96)(v14, 1, 1, v15);
        sub_1B0398EFC(v14, &qword_1EB6E52C0, &qword_1B0ECD5D8);
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
        v73 = *(*(v72 - 8) + 56);
        v74 = v84;
        v75 = 1;
        return v73(v74, v75, 1, v72);
      }

      if (v28 >= (v27 >> 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v29 = v26[1];
      v30 = v87;
      sub_1B0BC23D8(v29 + *(v87 + 72) * v28, v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v26[1] = v29;
      v26[2] = v28 + 1;
      v26[3] = v27;
      v31 = *(v30 + 56);
      v31(v14, 0, 1, v15);
    }

    else
    {
      v32 = v89;
      sub_1B0BC24A0(v11, v89, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_1B0398EFC(v3, &qword_1EB6E52C0, &qword_1B0ECD5D8);
      v31 = *v96;
      (*v96)(v3, 1, 1, v15);
      sub_1B0BC24A0(v32, v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v33 = *(v15 + 20);
      v34 = v88;
      v35 = *&v88[v33];

      *&v34[v33] = MEMORY[0x1E69E7CD0];
      v31(v14, 0, 1, v15);
    }

    sub_1B0BC24A0(v14, v22, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v36 = &v22[*(v15 + 20)];
    v38 = *v36;
    v37 = v36[1];
    v39 = *(*v36 + 16);
    v40 = *(v37 + 16);
    if (v39)
    {
      if (v40)
      {
        sub_1B0398EFC(v3, &qword_1EB6E52C0, &qword_1B0ECD5D8);
        sub_1B0BC23D8(v22, v3, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v31(v3, 0, 1, v15);
        v61 = v22;
        v62 = v84;
        sub_1B03B5C80(v61, v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v63 = *(v37 + 16);
        if (v63)
        {
          v64 = sub_1B0B88FB4(*(v37 + 16), 0);
          v65 = sub_1B0B8C5CC(&v100, v64 + 4, v63, v37);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = sub_1B03D91F8();
          if (v65 != v63)
          {
            goto LABEL_28;
          }

          v62 = v84;
        }

        else
        {
          v64 = MEMORY[0x1E69E7CC0];
        }

        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
        v82 = v62 + *(v81 + 48);
        sub_1B0BC2440(v90, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        *v82 = 257;
        *(v82 + 8) = v64;
        v73 = *(*(v81 - 8) + 56);
        v74 = v62;
        v75 = 0;
        v72 = v81;
      }

      else
      {
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
        v97 = *(v76 + 48);
        v98 = v76;
        v77 = v22;
        v68 = v84;
        sub_1B03B5C80(v77, v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v78 = sub_1B0B88FB4(v39, 0);
        v79 = sub_1B0B8C5CC(&v100, v78 + 4, v39, v38);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B03D91F8();
        if (v79 != v39)
        {
          goto LABEL_29;
        }

        v80 = v68 + v97;
        sub_1B0BC2440(v90, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        *v80 = 256;
        *(v80 + 8) = v78;
LABEL_23:
        v72 = v98;
        v73 = *(*(v98 - 8) + 56);
        v74 = v68;
        v75 = 0;
      }

      return v73(v74, v75, 1, v72);
    }

    if (v40)
    {
      break;
    }

    v41 = v94;
    v42 = v97;
    sub_1B0BC23D8(v94, v97, type metadata accessor for MailboxTaskLogger);
    v43 = v98;
    sub_1B0BC23D8(v41, v98, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v44 = v91;
    sub_1B0BC23D8(v22, v91, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v45 = sub_1B0E43988();
    v46 = sub_1B0E45908();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v99 = v48;
      *v47 = v85;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      v49 = v86;
      v50 = v98 + *(v86 + 20);
      *(v47 + 10) = *v50;
      *(v47 + 11) = 2082;
      v51 = v97 + *(v49 + 20);
      *(v47 + 13) = sub_1B0399D64(*(v51 + 8), *(v51 + 16), &v99);
      *(v47 + 21) = 1040;
      *(v47 + 23) = 2;
      *(v47 + 27) = 512;
      LOWORD(v50) = *(v50 + 24);
      sub_1B0BC2440(v98, type metadata accessor for MailboxTaskLogger);
      *(v47 + 29) = v50;
      *(v47 + 31) = 2160;
      *(v47 + 33) = 0x786F626C69616DLL;
      *(v47 + 41) = 2085;
      v52 = *(v51 + 32);
      LODWORD(v51) = *(v51 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC2440(v97, type metadata accessor for MailboxTaskLogger);
      v100 = v52;
      LODWORD(v101) = v51;
      v22 = v90;
      v53 = sub_1B0E44BA8();
      v55 = sub_1B0399D64(v53, v54, &v99);

      *(v47 + 43) = v55;
      *(v47 + 51) = 2080;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v57 = MessageIdentifierSet.debugDescription.getter(v56);
      v59 = v58;
      sub_1B0BC2440(v44, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v60 = sub_1B0399D64(v57, v59, &v99);

      *(v47 + 53) = v60;
      _os_log_impl(&dword_1B0389000, v45, v46, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No flag changes for messages %s", v47, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v48, -1, -1);
      MEMORY[0x1B272C230](v47, -1, -1);
    }

    else
    {
      sub_1B0BC2440(v43, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC2440(v44, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_1B0BC2440(v42, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B0BC2440(v22, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v11 = v92;
  }

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
  v97 = *(v66 + 48);
  v98 = v66;
  v67 = v22;
  v68 = v84;
  sub_1B03B5C80(v67, v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v69 = sub_1B0B88FB4(v40, 0);
  v70 = sub_1B0B8C5CC(&v100, v69 + 4, v40, v37);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B03D91F8();
  if (v70 == v40)
  {
    v71 = v68 + v97;
    sub_1B0BC2440(v90, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    *v71 = 257;
    *(v71 + 8) = v69;
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

uint64_t sub_1B0BBF5EC(int *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5);
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

  v15 = 0x100000000;
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = sub_1B0A92834(v22, v23, v18);

  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC1E70;
    v26 = v21[1];
    *(inited + 32) = *v21;
    LOBYTE(v21) = inited + 32;
    *(inited + 40) = v26;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v27 = sub_1B0B0B038(inited);
    swift_setDeallocating();
    sub_1B0B0B218(inited + 32);

    v28 = MEMORY[0x1E69E7CD0];
    v18 = v27;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v28 = v20;
  }

  v48 = v9;
  v29 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v47 = *a3;
  v31 = *v47;
  *a3 = 0x8000000000000000;
  v33 = sub_1B0AE01D0(v18, v28);
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
    sub_1B0B8FAD8();
    goto LABEL_19;
  }

  sub_1B0B3503C(v36, isUniquelyReferenced_nonNull_native);
  v37 = sub_1B0AE01D0(v18, v28);
  if ((v21 & 1) != (v38 & 1))
  {
    result = sub_1B0E46BA8();
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
    sub_1B03D06F8();
    sub_1B0E46EE8();
    sub_1B0A9BEB8(v33, v18, v28, v8, v41);
  }

  v42 = v41[7] + *(v45 + 72) * v33;
  return MessageIdentifierSet.insert(_:)(v47, &v48, v39);
}

void sub_1B0BBF958(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B0E469A8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
        v6 = sub_1B0E45278();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B0BBFDF4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1B0BBFA84(0, v2, 1, a1);
  }
}

void sub_1B0BBFA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v47 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v8 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v13);
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
      sub_1B0BC23D8(v21, v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_1B0BC23D8(v22, v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
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
        sub_1B0BC2440(v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v16 = v48;
        sub_1B0BC2440(v48, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
        sub_1B0BC2440(v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v16 = v48;
        sub_1B0BC2440(v48, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      }

      else
      {
        v34 = v50;
        sub_1B0BC2440(v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v16 = v48;
        sub_1B0BC2440(v48, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
      sub_1B0BC24A0(v21, v46, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B0BC24A0(v35, v22, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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

void sub_1B0BBFDF4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v140 = a1;
  v156 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v149 = *(v156 - 8);
  v8 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v143 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v155 = &v135 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v158 = &v135 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v135 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v135 - v18;
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v150 = a3;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
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
  v28 = MEMORY[0x1E69E7CC0];
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
      sub_1B0BC23D8(v32, v137, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v154 = v30;
      v34 = v30 + v31 * v27;
      v35 = v138;
      sub_1B0BC23D8(v34, v138, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      LODWORD(v148) = sub_1B0BBA33C();
      if (v5)
      {
        sub_1B0BC2440(v35, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        sub_1B0BC2440(v33, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
LABEL_143:

        return;
      }

      sub_1B0BC2440(v35, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_1B0BC2440(v33, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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

        sub_1B0BC23D8(a3, v151, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v42 = v19;
        sub_1B0BC23D8(v32, v19, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
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

        sub_1B0BC2440(v42, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        sub_1B0BC2440(v151, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
              sub_1B0BC24A0(v61 + v60, v143, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
              if (v60 < v57 || a3 >= v61 + v58)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v60 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1B0BC24A0(v143, v61 + v57, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
      v28 = sub_1B0AFF300(0, *(v28 + 2) + 1, 1, v28);
    }

    a3 = *(v28 + 2);
    v86 = *(v28 + 3);
    v87 = a3 + 1;
    if (a3 >= v86 >> 1)
    {
      v28 = sub_1B0AFF300((v86 > 1), a3 + 1, 1, v28);
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
        sub_1B0BC09E4(*v150 + *(v149 + 72) * v128, *v150 + *(v149 + 72) * *&v28[16 * v90 + 32], *v150 + *(v149 + 72) * v129, v89);
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
          v28 = sub_1B0B9443C(v28);
        }

        if (a3 >= *(v28 + 2))
        {
          goto LABEL_146;
        }

        v130 = &v28[16 * a3];
        *(v130 + 4) = v128;
        *(v130 + 5) = v129;
        v160 = v28;
        sub_1B0B943B0(v90);
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
    v28 = sub_1B0B9443C(v28);
LABEL_133:
    v160 = v28;
    v131 = *(v28 + 2);
    if (v131 >= 2)
    {
      while (*v150)
      {
        v132 = *&v28[16 * v131];
        v133 = *&v28[16 * v131 + 24];
        sub_1B0BC09E4(*v150 + *(v149 + 72) * v132, *v150 + *(v149 + 72) * *&v28[16 * v131 + 16], *v150 + *(v149 + 72) * v133, a3);
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
          v28 = sub_1B0B9443C(v28);
        }

        if (v131 - 2 >= *(v28 + 2))
        {
          goto LABEL_159;
        }

        v134 = &v28[16 * v131];
        *v134 = v132;
        *(v134 + 1) = v133;
        v160 = v28;
        sub_1B0B943B0(v131 - 1);
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
    sub_1B0BC23D8(v67, v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    sub_1B0BC23D8(v69, v68, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
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
      sub_1B0BC2440(v158, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v16 = v157;
      sub_1B0BC2440(v157, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
      sub_1B0BC2440(v68, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v16 = v157;
      sub_1B0BC2440(v157, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    }

    else
    {
      v83 = v159[0];
      a3 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element;
      sub_1B0BC2440(v68, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v16 = v157;
      sub_1B0BC2440(v157, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
    sub_1B0BC24A0(v67, v155, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B0BC24A0(v84, v69, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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

void sub_1B0BC09E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v8 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v15);
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
          sub_1B0BC23D8(v42 + v41, v43, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_1B0BC23D8(a2, v24, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
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
          sub_1B0BC2440(v55, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_1B0BC2440(v72, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
        sub_1B0BC23D8(a2, v17, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v75 = a4;
        sub_1B0BC23D8(a4, v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
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
          sub_1B0BC2440(v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_1B0BC2440(v17, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          v38 = v71;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v36, v26, &v77);
          if (v32)
          {
            sub_1B0BC2440(v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
            sub_1B0BC2440(v17, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
          sub_1B0BC2440(v14, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_1B0BC2440(v17, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
  sub_1B0BC11D4(&v80, &v79, &v78);
}

uint64_t sub_1B0BC10E4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
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

uint64_t sub_1B0BC11D4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
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

void sub_1B0BC12F8()
{
  sub_1B074F848();
  if (v0 <= 0x3F)
  {
    sub_1B0BC136C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B0BC136C()
{
  if (!qword_1EB6DDA88)
  {
    type metadata accessor for UploadFlagChanges.EncodedFlags(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DDA88);
    }
  }
}

void sub_1B0BC1430()
{
  sub_1B0BC1540(319, &qword_1EB6DDAA0, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B0BC1540(319, &qword_1EB6DB498, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B0BC1540(319, &qword_1EB6DA578, MEMORY[0x1E69E6948]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0BC1540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
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

void sub_1B0BC15C8()
{
  sub_1B0AD428C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B0BC169C()
{
  sub_1B0AD428C(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UploadFlagChanges.FlagsToUpload(319);
    if (v1 <= 0x3F)
    {
      sub_1B0AD428C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B0BC17F8()
{
  result = qword_1EB6E52C8;
  if (!qword_1EB6E52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E52C8);
  }

  return result;
}

unint64_t sub_1B0BC184C()
{
  result = qword_1EB6DDA78;
  if (!qword_1EB6DDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA78);
  }

  return result;
}

unint64_t sub_1B0BC18A0()
{
  result = qword_1EB6DDA70;
  if (!qword_1EB6DDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA70);
  }

  return result;
}

unint64_t sub_1B0BC18F4(uint64_t a1)
{
  result = sub_1B0BC191C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0BC191C()
{
  result = qword_1EB6DDA68;
  if (!qword_1EB6DDA68)
  {
    type metadata accessor for UploadFlagChanges(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA68);
  }

  return result;
}

uint64_t sub_1B0BC197C(uint64_t result, uint64_t a2, void *a3)
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
      sub_1B074EC14(v14, &v10);
      sub_1B0BBF5EC(&v12, a2, a3);
      if (v3)
      {
        break;
      }

      v10 = v12;
      v11 = v13;
      result = sub_1B03F5C58(&v10);
      if (!--v4)
      {
        return result;
      }
    }

    v10 = v12;
    v11 = v13;
    return sub_1B03F5C58(&v10);
  }

  return result;
}

uint64_t sub_1B0BC1A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UntaggedResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B0AD4EFC(0, a2, a3, a4) & 1) != 0 || (result = sub_1B0AD4EFC(1, a2, a3, a4), (result))
  {
    sub_1B0BC23D8(a1, v11, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      memcpy(v18, v11, sizeof(v18));
      if (v18[64])
      {
        if (BYTE4(v18[1]) != 1)
        {
          v16 = v18[1];
          v13 = *(type metadata accessor for UploadFlagChanges(0) + 40);
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
          MessageIdentifierSet.remove(_:)(&v16, v14, &v17);
        }
      }

      return sub_1B0AA4C0C(v18);
    }

    else
    {
      return sub_1B0BC2440(v11, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

void sub_1B0BC1BC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = a5;
  v72 = type metadata accessor for MailboxTaskLogger(0);
  v10 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v29 == 16)
  {
    if (v5[1] == *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
    {
      v46 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v47 = *v5;
      v48 = *(*v5 + 16);
      if (v48 == *(v46 + 16))
      {
        v49 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v50 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        if (!v48 || v47 == v46)
        {
LABEL_12:
          if (sub_1B0AEC7C4(1, a2, a3, a4))
          {
            if ((v50 & 1) == 0)
            {
              *(v5 + *(type metadata accessor for UploadFlagChanges(0) + 48)) = 1;
            }

            v71 = v5;
            v53 = v73;
            sub_1B0BC23D8(v73, v15, type metadata accessor for MailboxTaskLogger);
            sub_1B0BC23D8(v53, v12, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            swift_bridgeObjectRetain_n();
            v54 = sub_1B0E43988();
            v55 = sub_1B0E45908();
            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v76 = v57;
              *v56 = 68159491;
              *(v56 + 4) = 2;
              *(v56 + 8) = 256;
              v58 = v72;
              v59 = &v12[*(v72 + 20)];
              *(v56 + 10) = *v59;
              *(v56 + 11) = 2082;
              v60 = &v15[*(v58 + 20)];
              *(v56 + 13) = sub_1B0399D64(*(v60 + 1), *(v60 + 2), &v76);
              *(v56 + 21) = 1040;
              *(v56 + 23) = 2;
              *(v56 + 27) = 512;
              LOWORD(v59) = *(v59 + 12);
              sub_1B0BC2440(v12, type metadata accessor for MailboxTaskLogger);
              *(v56 + 29) = v59;
              *(v56 + 31) = 2160;
              *(v56 + 33) = 0x786F626C69616DLL;
              *(v56 + 41) = 2085;
              v61 = *(v60 + 4);
              LODWORD(v60) = *(v60 + 10);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0BC2440(v15, type metadata accessor for MailboxTaskLogger);
              v74 = v61;
              v75 = v60;
              v62 = sub_1B0E44BA8();
              v64 = sub_1B0399D64(v62, v63, &v76);

              *(v56 + 43) = v64;
              *(v56 + 51) = 2048;
              v65 = *(v49 + 16);

              *(v56 + 53) = v65;

              _os_log_impl(&dword_1B0389000, v54, v55, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received local flag changes for %ld messages.", v56, 0x3Du);
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v57, -1, -1);
              MEMORY[0x1B272C230](v56, -1, -1);
            }

            else
            {

              sub_1B0BC2440(v12, type metadata accessor for MailboxTaskLogger);

              sub_1B0BC2440(v15, type metadata accessor for MailboxTaskLogger);
            }

            sub_1B0BBD1BC(v49, v73);
          }

          else
          {
            *(v5 + *(type metadata accessor for UploadFlagChanges(0) + 48)) = 1;
          }
        }

        else
        {
          v51 = (v47 + 32);
          v52 = (v46 + 32);
          while (*v51 == *v52)
          {
            ++v51;
            ++v52;
            if (!--v48)
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
    v69 = v27;
    v71 = v5;
    v30 = &v69 - v28;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A8, &unk_1B0ECD730);
    v32 = swift_projectBox();
    sub_1B03B5C80(v32 + *(v31 + 48), v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v33 = v73;
    sub_1B0BC23D8(v73, v21, type metadata accessor for MailboxTaskLogger);
    sub_1B0BC23D8(v33, v18, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v70 = v30;
    sub_1B03B5C80(v30, v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v34 = sub_1B0E43988();
    v35 = sub_1B0E45908();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = v73;
      *v36 = 68159491;
      *(v36 + 4) = 2;
      *(v36 + 8) = 256;
      v37 = v72;
      v38 = &v18[*(v72 + 20)];
      *(v36 + 10) = *v38;
      *(v36 + 11) = 2082;
      v39 = &v21[*(v37 + 20)];
      *(v36 + 13) = sub_1B0399D64(*(v39 + 1), *(v39 + 2), &v76);
      *(v36 + 21) = 1040;
      *(v36 + 23) = 2;
      *(v36 + 27) = 512;
      LOWORD(v38) = *(v38 + 12);
      sub_1B0BC2440(v18, type metadata accessor for MailboxTaskLogger);
      *(v36 + 29) = v38;
      *(v36 + 31) = 2160;
      *(v36 + 33) = 0x786F626C69616DLL;
      *(v36 + 41) = 2085;
      v40 = *(v39 + 4);
      LODWORD(v38) = *(v39 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC2440(v21, type metadata accessor for MailboxTaskLogger);
      v74 = v40;
      v75 = v38;
      v41 = sub_1B0E44BA8();
      v43 = sub_1B0399D64(v41, v42, &v76);

      *(v36 + 43) = v43;
      *(v36 + 51) = 2048;
      v44 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *(v36 + 53) = v44;
      _os_log_impl(&dword_1B0389000, v34, v35, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld messages have flag changes after copy", v36, 0x3Du);
      v45 = v73;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v45, -1, -1);
      MEMORY[0x1B272C230](v36, -1, -1);
    }

    else
    {
      sub_1B0398EFC(v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0BC2440(v18, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC2440(v21, type metadata accessor for MailboxTaskLogger);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v66 = v70;
    v67 = sub_1B0E46E98();
    sub_1B0398EFC(v66, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v67)
    {
      v68 = 2;
    }

    else
    {
      v68 = 3;
    }

    *(v71 + *(type metadata accessor for UploadFlagChanges(0) + 52)) = v68;
  }
}

uint64_t sub_1B0BC23D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0BC2440(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0BC24A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

unint64_t sub_1B0BC2670()
{
  result = qword_1EB6E52F8;
  if (!qword_1EB6E52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E52F8);
  }

  return result;
}

uint64_t sub_1B0BC26C4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  if (v2 == v3)
  {
    *a1 = xmmword_1B0EC58F0;
  }

  else if (v2 < v3)
  {
    v4 = *(v1[1] + 16 * v2);
    *a1 = v4;
    v1[2] = v2 + 1;
    return sub_1B03B2000(v4, *(&v4 + 1));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BC270C(uint64_t *a1, uint64_t *a2)
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

  return sub_1B0AB8858(*a1, v3, *a2, v4);
}

uint64_t sub_1B0BC2774(uint64_t *a1, uint64_t *a2)
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
      return sub_1B0AB8858(v4, v5, v6, v7);
    }

    return 0;
  }

  if (v9 == 1)
  {
    if (v8 == 0x1000000000000000)
    {
      v5 &= 0xCFFFFFFFFFFFFFFFLL;
      v7 &= 0xCFFFFFFFFFFFFFFFLL;
      return sub_1B0AB8858(v4, v5, v6, v7);
    }

    return 0;
  }

  return v8 == 0x2000000000000000 && v6 == 0 && v7 == 0x2000000000000000;
}

uint64_t sub_1B0BC27E0()
{
  result = sub_1B03D0770(&unk_1F27111A0);
  qword_1EB737DA0 = result;
  return result;
}

uint64_t sub_1B0BC2808(uint64_t *a1, uint64_t *a2)
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

void sub_1B0BC28D0(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  sub_1B0A96394(a1, v21 - v7, type metadata accessor for MailboxTaskLogger);
  sub_1B0A96394(a1, v5, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v9 = sub_1B0E43988();
  v10 = sub_1B0E45908();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 68159235;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v13 = &v5[*(v2 + 20)];
    *(v11 + 10) = *v13;
    *(v11 + 11) = 2082;
    v14 = &v8[*(v2 + 20)];
    *(v11 + 13) = sub_1B0399D64(*(v14 + 1), *(v14 + 2), &v23);
    *(v11 + 21) = 1040;
    *(v11 + 23) = 2;
    *(v11 + 27) = 512;
    v15 = *(v13 + 12);
    sub_1B0BC7C78(v5, type metadata accessor for MailboxTaskLogger);
    *(v11 + 29) = v15;
    *(v11 + 31) = 2160;
    *(v11 + 33) = 0x786F626C69616DLL;
    *(v11 + 41) = 2085;
    v16 = *(v14 + 4);
    v17 = *(v14 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BC7C78(v8, type metadata accessor for MailboxTaskLogger);
    v21[1] = v16;
    v22 = v17;
    v18 = sub_1B0E44BA8();
    v20 = sub_1B0399D64(v18, v19, &v23);

    *(v11 + 43) = v20;
    _os_log_impl(&dword_1B0389000, v9, v10, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v11, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v12, -1, -1);
    MEMORY[0x1B272C230](v11, -1, -1);
  }

  else
  {
    sub_1B0BC7C78(v5, type metadata accessor for MailboxTaskLogger);

    sub_1B0BC7C78(v8, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1B0BC2BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v98 = a4;
  v99 = a5;
  v100 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v96 = &v89 - v12;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v94 = *(v95 - 8);
  v13 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v89 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v17 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v89 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v93 = &v89 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5308, &qword_1B0ECD990);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v89 - v26;
  v28 = type metadata accessor for UploadMessages.PendingUpload(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v6;
  if (*(v6 + 120) == 2 && !*(v6 + 112))
  {
    if ((sub_1B0B7148C(0, 0xF000000000000000, a2, a3) & 1) == 0)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5310, &qword_1B0ECDD08);
      v47 = v100;
      v48 = v100 + *(v46 + 48);
      *v100 = xmmword_1B0EC58F0;
      v49 = *(v33 + 32);
      *v48 = *(v33 + 24);
      *(v48 + 2) = v49;
      *(v48 + 2) = &unk_1F27113F8;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v46 - 8) + 56))(v47, 0, 1, v46);

      return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    if ((sub_1B0A995C4(0, 0xF000000000000000, a1, a2, a3) & 1) == 0)
    {
LABEL_6:
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5310, &qword_1B0ECDD08);
      v35 = *(*(v34 - 8) + 56);
      v36 = v34;
      v37 = v100;

      return v35(v37, 1, 1, v36);
    }
  }

  if (sub_1B0AECE50(1, a1, a2, a3))
  {
    goto LABEL_6;
  }

  v89 = type metadata accessor for UploadMessages(0);
  v39 = *(v89 + 52);
  sub_1B03B5C80(v33 + v39, v27, &qword_1EB6E5308, &qword_1B0ECD990);
  if ((*(v29 + 48))(v27, 1, v28) != 1)
  {
    sub_1B0BC7CD8(v27, v32);
    sub_1B0398EFC(v33 + v39, &qword_1EB6E5308, &qword_1B0ECD990);
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

    v56 = 0x100000000;
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
    sub_1B03B2000(*v32, v61);
    sub_1B050755C(v63, v64);
    *v62 = v60;
    v62[1] = v61;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5310, &qword_1B0ECDD08);
    v66 = v100;
    v67 = v100 + *(v65 + 48);
    *v100 = *v32;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
    v69 = *(v68 + 64);
    v70 = *(v68 + 80);
    v71 = *(v33 + 32);
    *v67 = *(v33 + 24);
    *(v67 + 2) = v71;
    *(v67 + 2) = v59;
    sub_1B03C60A4(&v32[*(v28 + 24)], &v67[v69], &unk_1EB6E2990, &qword_1B0E9B060);
    *&v67[v70] = *&v32[*(v28 + 28)];
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v65 - 8) + 56))(v66, 0, 1, v65);
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v40 = v89;
  sub_1B0398EFC(v27, &qword_1EB6E5308, &qword_1B0ECD990);
  if (sub_1B0BC3658(a1, a2, a3, v98) & 1) == 0 || (sub_1B0B7148C(0, 0xB000000000000000, a2, a3))
  {
LABEL_38:
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5310, &qword_1B0ECDD08);
    return (*(*(v80 - 8) + 56))(v100, 1, 1, v80);
  }

  v41 = *(v33 + *(v40 + 68));
  sub_1B03D06F8();
  result = sub_1B0E46EE8();
  v42 = *(v41 + 16);
  v43 = v97;
  if (!v42)
  {
LABEL_33:
    v72 = v93;
    sub_1B03C60A4(v21, v93, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v73 = v92;
    sub_1B03B5C80(v72, v92, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v73, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v77 = 1;
      v76 = v96;
    }

    else
    {
      v74 = v91;
      sub_1B03C60A4(v73, v91, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v75 = v74;
      v76 = v96;
      sub_1B03C60A4(v75, v96, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v77 = 0;
    }

    v78 = v94;
    v79 = v95;
    (*(v94 + 56))(v76, v77, 1, v95);
    if ((*(v78 + 48))(v76, 1, v79) != 1)
    {
      v81 = v90;
      sub_1B03C60A4(v76, v90, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v82 = &unk_1F2710668;
      v83 = &unk_1F2710770;
      if (*(v33 + 105))
      {
        v82 = &unk_1F27106D8;
        v83 = &unk_1F2710808;
      }

      if (*(v33 + 104))
      {
        v84 = v82;
      }

      else
      {
        v84 = v83;
      }

      sub_1B0398EFC(v72, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5310, &qword_1B0ECDD08);
      v86 = v100;
      v87 = v100 + *(v85 + 48);
      *v100 = xmmword_1B0ECD820;
      v88 = v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      sub_1B03C60A4(v81, v87, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v88 = v84;
      *(v88 + 8) = 0;
      *(v88 + 16) = 1;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v85 - 8) + 56))(v86, 0, 1, v85);
    }

    sub_1B0398EFC(v72, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v76, &unk_1EB6E3670, &unk_1B0E9B260);
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

uint64_t sub_1B0BC3658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B0B12358(0, 0x2000000000000000, a1, a2, a4);
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
    sub_1B03B2000(v14, *v9);
    v15 = sub_1B0A995C4(v14, v13, a1, a2, a3);
    result = sub_1B0391D50(v14, v13);
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
    sub_1B03B2000(v23, *v18);
    v24 = sub_1B0B12358(v23, v22, a1, a2, a4);
    result = sub_1B0391D50(v23, v22);
    v18 = v21;
  }

  while ((v24 & 1) != 0);
  return v16;
}

void sub_1B0BC37CC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v197 = a8;
  v195 = a6;
  v193 = a4;
  v194 = a5;
  v196 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v182 - v12;
  v14 = type metadata accessor for MailboxTaskLogger(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v182 - v22;
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v182 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v182 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v182 - v32;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v182 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v46 = &v182 - v42;
  if (a2 >> 60 == 11)
  {
    return;
  }

  if (a2 >> 60 == 15)
  {
    if (*(v8 + 120) == 2 && !*(v8 + 112))
    {
      v47 = v39;
      v192 = v8;
      v48 = v197;
      sub_1B0A96394(v197, &v182 - v42, type metadata accessor for MailboxTaskLogger);
      sub_1B0A96394(v48, v37, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v49 = sub_1B0E43988();
      v50 = sub_1B0E458E8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v200 = v52;
        *v51 = 68159235;
        *(v51 + 4) = 2;
        *(v51 + 8) = 256;
        v53 = v47;
        v54 = &v37[*(v47 + 20)];
        *(v51 + 10) = *v54;
        *(v51 + 11) = 2082;
        v55 = &v46[*(v53 + 20)];
        *(v51 + 13) = sub_1B0399D64(*(v55 + 1), *(v55 + 2), &v200);
        *(v51 + 21) = 1040;
        *(v51 + 23) = 2;
        *(v51 + 27) = 512;
        LOWORD(v54) = *(v54 + 12);
        sub_1B0BC7C78(v37, type metadata accessor for MailboxTaskLogger);
        *(v51 + 29) = v54;
        *(v51 + 31) = 2160;
        *(v51 + 33) = 0x786F626C69616DLL;
        *(v51 + 41) = 2085;
        v56 = *(v55 + 4);
        v57 = *(v55 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC7C78(v46, type metadata accessor for MailboxTaskLogger);
        v198 = v56;
        v199 = v57;
        v58 = sub_1B0E44BA8();
        v60 = sub_1B0399D64(v58, v59, &v200);

        *(v51 + 43) = v60;
        _os_log_impl(&dword_1B0389000, v49, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server supports mailbox specific APPENDLIMIT, but did not return its value.", v51, 0x33u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v52, -1, -1);
        MEMORY[0x1B272C230](v51, -1, -1);
      }

      else
      {
        sub_1B0BC7C78(v37, type metadata accessor for MailboxTaskLogger);

        sub_1B0BC7C78(v46, type metadata accessor for MailboxTaskLogger);
      }

      v85 = v192;
      *(v192 + 112) = 1;
      *(v85 + 120) = 2;
    }

    return;
  }

  v189 = v40;
  v190 = v39;
  v185 = v33;
  v186 = v43;
  v187 = v41;
  v188 = v44;
  v61 = v45;
  v191 = type metadata accessor for UploadMessages(0);
  v62 = v191[14];
  v63 = *(v8 + v62);
  v64 = *(v8 + v62 + 8);
  if (v64 >> 60 == 15)
  {
    return;
  }

  *(v8 + v62) = xmmword_1B0EC58F0;
  v182 = v63;
  v65 = v63;
  sub_1B03B2000(v63, v64);
  v183 = v65;
  v184 = v64;
  sub_1B050755C(v65, v64);
  v192 = v8;
  if (!v195)
  {
    if ((~v196 & 0xF000000000000007) != 0 && ((v196 >> 59) & 0x1E | (v196 >> 2) & 1) == 7)
    {
      v86 = type metadata accessor for ResponseCodeAppend();
      v87 = swift_projectBox();
      v88 = *v87;
      sub_1B03B5C80(v87 + *(v86 + 20), v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v90 = MessageIdentifierSet.startIndex.getter(v89);
      v92 = v91;
      if (v90 == MessageIdentifierSet.endIndex.getter(v89) && v92 == v93)
      {
        sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        __break(1u);
        return;
      }

      MessageIdentifierSet.subscript.getter(v92, v89, &v198);
      v94 = v198;
      sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v95 = v197;
      v96 = v186;
      sub_1B0A96394(v197, v186, type metadata accessor for MailboxTaskLogger);
      v97 = v185;
      sub_1B0A96394(v95, v185, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v98 = sub_1B0E43988();
      v99 = sub_1B0E45908();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v200 = v101;
        *v100 = 68159491;
        v196 = v94;
        v197 = v88;
        *(v100 + 4) = 2;
        *(v100 + 8) = 256;
        v102 = v190;
        v103 = v97 + *(v190 + 20);
        *(v100 + 10) = *v103;
        *(v100 + 11) = 2082;
        v104 = v96 + *(v102 + 20);
        *(v100 + 13) = sub_1B0399D64(*(v104 + 8), *(v104 + 16), &v200);
        *(v100 + 21) = 1040;
        *(v100 + 23) = 2;
        *(v100 + 27) = 512;
        LOWORD(v103) = *(v103 + 24);
        sub_1B0BC7C78(v97, type metadata accessor for MailboxTaskLogger);
        *(v100 + 29) = v103;
        *(v100 + 31) = 2160;
        *(v100 + 33) = 0x786F626C69616DLL;
        *(v100 + 41) = 2085;
        v105 = *(v104 + 32);
        LODWORD(v104) = *(v104 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC7C78(v96, type metadata accessor for MailboxTaskLogger);
        v198 = v105;
        v199 = v104;
        v106 = sub_1B0E44BA8();
        v108 = sub_1B0399D64(v106, v107, &v200);
        v88 = v197;

        *(v100 + 43) = v108;
        v94 = v196;
        *(v100 + 51) = 1024;
        *(v100 + 53) = v94;
        _os_log_impl(&dword_1B0389000, v98, v99, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND succeeded with UID %u.", v100, 0x39u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v101, -1, -1);
        MEMORY[0x1B272C230](v100, -1, -1);
      }

      else
      {
        sub_1B0BC7C78(v97, type metadata accessor for MailboxTaskLogger);

        sub_1B0BC7C78(v96, type metadata accessor for MailboxTaskLogger);
      }

      v151 = v192;
      v152 = v191[17];
      v153 = *(v192 + v152);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v153 = sub_1B0B00CBC(0, *(v153 + 2) + 1, 1, v153);
      }

      v176 = *(v153 + 2);
      v175 = *(v153 + 3);
      if (v176 >= v175 >> 1)
      {
        v153 = sub_1B0B00CBC((v175 > 1), v176 + 1, 1, v153);
      }

      *(v153 + 2) = v176 + 1;
      v177 = &v153[32 * v176];
      v178 = v184;
      *(v177 + 4) = v183;
      *(v177 + 5) = v178;
      *(v177 + 6) = v88 | (v94 << 32);
      *(v177 + 28) = 0;
      goto LABEL_47;
    }

    v126 = v197;
    sub_1B0A96394(v197, v30, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(v126, v27, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v127 = sub_1B0E43988();
    v128 = sub_1B0E45908();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v200 = v130;
      *v129 = 68159235;
      *(v129 + 4) = 2;
      *(v129 + 8) = 256;
      v131 = v190;
      v132 = &v27[*(v190 + 20)];
      *(v129 + 10) = *v132;
      *(v129 + 11) = 2082;
      v133 = &v30[*(v131 + 20)];
      *(v129 + 13) = sub_1B0399D64(*(v133 + 1), *(v133 + 2), &v200);
      *(v129 + 21) = 1040;
      *(v129 + 23) = 2;
      *(v129 + 27) = 512;
      LOWORD(v132) = *(v132 + 12);
      sub_1B0BC7C78(v27, type metadata accessor for MailboxTaskLogger);
      *(v129 + 29) = v132;
      *(v129 + 31) = 2160;
      *(v129 + 33) = 0x786F626C69616DLL;
      *(v129 + 41) = 2085;
      v134 = *(v133 + 4);
      LODWORD(v133) = *(v133 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v30, type metadata accessor for MailboxTaskLogger);
      v198 = v134;
      v199 = v133;
      v135 = sub_1B0E44BA8();
      v137 = sub_1B0399D64(v135, v136, &v200);

      *(v129 + 43) = v137;
      _os_log_impl(&dword_1B0389000, v127, v128, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND succeeded without UIDValidity.", v129, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v130, -1, -1);
      MEMORY[0x1B272C230](v129, -1, -1);
    }

    else
    {
      sub_1B0BC7C78(v27, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v30, type metadata accessor for MailboxTaskLogger);
    }

    v151 = v192;
    v152 = v191[17];
    v153 = *(v192 + v152);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v153 = sub_1B0B00CBC(0, *(v153 + 2) + 1, 1, v153);
    }

    v167 = *(v153 + 2);
    v166 = *(v153 + 3);
    if (v167 >= v166 >> 1)
    {
      v153 = sub_1B0B00CBC((v166 > 1), v167 + 1, 1, v153);
    }

    *(v153 + 2) = v167 + 1;
    v157 = &v153[32 * v167];
    v168 = v184;
    *(v157 + 4) = v183;
    *(v157 + 5) = v168;
    *(v157 + 6) = 0;
    v158 = 1;
LABEL_46:
    *(v157 + 28) = v158;
LABEL_47:
    *(v151 + v152) = v153;
    return;
  }

  if (v195 != 1)
  {
    v109 = v197;
    sub_1B0A96394(v197, v61, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(v109, v17, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v110 = v196;
    sub_1B04420D8(v196);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v111 = sub_1B0E43988();
    v112 = sub_1B0E45908();
    sub_1B0447F00(v110);

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v200 = v197;
      *v113 = 68159491;
      *(v113 + 4) = 2;
      *(v113 + 8) = 256;
      v114 = v190;
      v115 = &v17[*(v190 + 20)];
      *(v113 + 10) = *v115;
      *(v113 + 11) = 2082;
      v116 = v61 + *(v114 + 20);
      *(v113 + 13) = sub_1B0399D64(*(v116 + 8), *(v116 + 16), &v200);
      *(v113 + 21) = 1040;
      *(v113 + 23) = 2;
      *(v113 + 27) = 512;
      LOWORD(v115) = *(v115 + 12);
      sub_1B0BC7C78(v17, type metadata accessor for MailboxTaskLogger);
      *(v113 + 29) = v115;
      *(v113 + 31) = 2160;
      *(v113 + 33) = 0x786F626C69616DLL;
      *(v113 + 41) = 2085;
      v117 = *(v116 + 32);
      v118 = *(v116 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v61, type metadata accessor for MailboxTaskLogger);
      v198 = v117;
      v199 = v118;
      v119 = sub_1B0E44BA8();
      v121 = sub_1B0399D64(v119, v120, &v200);

      *(v113 + 43) = v121;
      *(v113 + 51) = 2082;
      v122 = ResponseText.debugDescription.getter(v110, v193, v194);
      v124 = sub_1B0399D64(v122, v123, &v200);

      *(v113 + 53) = v124;
      _os_log_impl(&dword_1B0389000, v111, v112, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed: %{public}s", v113, 0x3Du);
      v125 = v197;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v125, -1, -1);
      MEMORY[0x1B272C230](v113, -1, -1);
    }

    else
    {
      sub_1B0BC7C78(v17, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v61, type metadata accessor for MailboxTaskLogger);
    }

    v151 = v192;
    v152 = v191[17];
    v153 = *(v192 + v152);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v153 = sub_1B0B00CBC(0, *(v153 + 2) + 1, 1, v153);
    }

    v154 = v182;
    v156 = *(v153 + 2);
    v155 = *(v153 + 3);
    if (v156 >= v155 >> 1)
    {
      v179 = sub_1B0B00CBC((v155 > 1), v156 + 1, 1, v153);
      v154 = v182;
      v153 = v179;
    }

    *(v153 + 2) = v156 + 1;
    v157 = &v153[32 * v156];
    *(v157 + 2) = v154;
    *(v157 + 6) = 0;
    v158 = 256;
    goto LABEL_46;
  }

  v66 = v196;
  if ((~v196 & 0xF000000000000007) != 0 && v196 == 0x800000000000002CLL)
  {
    v138 = v197;
    v139 = v187;
    sub_1B0A96394(v197, v187, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(v138, v23, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v140 = sub_1B0E43988();
    v141 = sub_1B0E45908();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v200 = v143;
      *v142 = 68159235;
      *(v142 + 4) = 2;
      *(v142 + 8) = 256;
      v144 = v190;
      v145 = &v23[*(v190 + 20)];
      *(v142 + 10) = *v145;
      *(v142 + 11) = 2082;
      v146 = v139 + *(v144 + 20);
      *(v142 + 13) = sub_1B0399D64(*(v146 + 8), *(v146 + 16), &v200);
      *(v142 + 21) = 1040;
      *(v142 + 23) = 2;
      *(v142 + 27) = 512;
      LOWORD(v145) = *(v145 + 12);
      sub_1B0BC7C78(v23, type metadata accessor for MailboxTaskLogger);
      *(v142 + 29) = v145;
      *(v142 + 31) = 2160;
      *(v142 + 33) = 0x786F626C69616DLL;
      *(v142 + 41) = 2085;
      v147 = *(v146 + 32);
      LODWORD(v145) = *(v146 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v139, type metadata accessor for MailboxTaskLogger);
      v198 = v147;
      v199 = v145;
      v148 = sub_1B0E44BA8();
      v150 = sub_1B0399D64(v148, v149, &v200);

      *(v142 + 43) = v150;
      _os_log_impl(&dword_1B0389000, v140, v141, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed with “No, try create”.", v142, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v143, -1, -1);
      MEMORY[0x1B272C230](v142, -1, -1);
    }

    else
    {
      sub_1B0BC7C78(v23, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v139, type metadata accessor for MailboxTaskLogger);
    }

    v169 = v192;
    v170 = v191[16];
    v171 = *(v192 + v170);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v171 = sub_1B0B006F4(0, *(v171 + 2) + 1, 1, v171);
    }

    v172 = v182;
    v174 = *(v171 + 2);
    v173 = *(v171 + 3);
    if (v174 >= v173 >> 1)
    {
      v181 = sub_1B0B006F4((v173 > 1), v174 + 1, 1, v171);
      v172 = v182;
      v171 = v181;
    }

    *(v171 + 2) = v174 + 1;
    *&v171[16 * v174 + 32] = v172;
    *(v169 + v170) = v171;
  }

  else
  {
    v67 = v197;
    v68 = v188;
    sub_1B0A96394(v197, v188, type metadata accessor for MailboxTaskLogger);
    v69 = v189;
    sub_1B0A96394(v67, v189, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B04420D8(v66);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v70 = sub_1B0E43988();
    v71 = sub_1B0E45908();
    sub_1B0447F00(v66);

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v200 = v73;
      *v72 = 68159491;
      *(v72 + 4) = 2;
      *(v72 + 8) = 256;
      v74 = v190;
      v75 = v69 + *(v190 + 20);
      *(v72 + 10) = *v75;
      *(v72 + 11) = 2082;
      v76 = v68;
      v77 = v68 + *(v74 + 20);
      *(v72 + 13) = sub_1B0399D64(*(v77 + 8), *(v77 + 16), &v200);
      *(v72 + 21) = 1040;
      *(v72 + 23) = 2;
      *(v72 + 27) = 512;
      LOWORD(v75) = *(v75 + 24);
      sub_1B0BC7C78(v69, type metadata accessor for MailboxTaskLogger);
      *(v72 + 29) = v75;
      *(v72 + 31) = 2160;
      *(v72 + 33) = 0x786F626C69616DLL;
      *(v72 + 41) = 2085;
      v78 = *(v77 + 32);
      LODWORD(v77) = *(v77 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v76, type metadata accessor for MailboxTaskLogger);
      v198 = v78;
      v199 = v77;
      v79 = sub_1B0E44BA8();
      v81 = sub_1B0399D64(v79, v80, &v200);

      *(v72 + 43) = v81;
      *(v72 + 51) = 2082;
      v82 = ResponseText.debugDescription.getter(v196, v193, v194);
      v84 = sub_1B0399D64(v82, v83, &v200);

      *(v72 + 53) = v84;
      _os_log_impl(&dword_1B0389000, v70, v71, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed: %{public}s", v72, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v73, -1, -1);
      MEMORY[0x1B272C230](v72, -1, -1);
    }

    else
    {
      sub_1B0BC7C78(v69, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v68, type metadata accessor for MailboxTaskLogger);
    }

    v159 = v192;
    v160 = v191[17];
    v161 = *(v192 + v160);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v161 = sub_1B0B00CBC(0, *(v161 + 2) + 1, 1, v161);
    }

    v162 = v184;
    v164 = *(v161 + 2);
    v163 = *(v161 + 3);
    if (v164 >= v163 >> 1)
    {
      v180 = sub_1B0B00CBC((v163 > 1), v164 + 1, 1, v161);
      v162 = v184;
      v161 = v180;
    }

    *(v161 + 2) = v164 + 1;
    v165 = &v161[32 * v164];
    *(v165 + 4) = v183;
    *(v165 + 5) = v162;
    *(v165 + 6) = 0;
    *(v165 + 28) = 256;
    *(v159 + v160) = v161;
  }
}

void sub_1B0BC4C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v92 = &v84[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v84[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v84[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v84[-v20];
  v22 = type metadata accessor for UploadMessages(0);
  v23 = *(a2 + *(v22 + 64));
  v24 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B0AFC4(v24);
  v25 = a2;

  v89 = a3;
  v90 = v22;
  if (*(a2 + *(v22 + 72)) == 1)
  {
    sub_1B0A96394(a3, v21, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(a3, v18, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v26 = sub_1B0E43988();
    v27 = sub_1B0E45908();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v95 = v29;
      *v28 = 68159235;
      *(v28 + 4) = 2;
      *(v28 + 8) = 256;
      v30 = v88;
      v31 = *(v88 + 20);
      v87 = a1;
      v32 = &v18[v31];
      *(v28 + 10) = v18[v31];
      *(v28 + 11) = 2082;
      v33 = &v21[*(v30 + 20)];
      *(v28 + 13) = sub_1B0399D64(*(v33 + 1), *(v33 + 2), &v95);
      *(v28 + 21) = 1040;
      *(v28 + 23) = 2;
      *(v28 + 27) = 512;
      LOWORD(v32) = *(v32 + 12);
      sub_1B0BC7C78(v18, type metadata accessor for MailboxTaskLogger);
      *(v28 + 29) = v32;
      *(v28 + 31) = 2160;
      *(v28 + 33) = 0x786F626C69616DLL;
      *(v28 + 41) = 2085;
      v34 = *(v33 + 4);
      LODWORD(v32) = *(v33 + 10);
      v25 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v21, type metadata accessor for MailboxTaskLogger);
      v93 = v34;
      v94 = v32;
      a1 = v87;
      v35 = sub_1B0E44BA8();
      v37 = sub_1B0399D64(v35, v36, &v95);

      *(v28 + 43) = v37;
      _os_log_impl(&dword_1B0389000, v26, v27, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more messages to upload. Will mark as needing to re-run.", v28, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v29, -1, -1);
      MEMORY[0x1B272C230](v28, -1, -1);
    }

    else
    {
      sub_1B0BC7C78(v18, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v21, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B03BDE74(6u);
    sub_1B03BDD7C(&v93, 6);
    v39 = v90;
  }

  else
  {
    v38 = *(type metadata accessor for MailboxSyncState() + 52);
    v39 = v90;
    if (*(a1 + v38) == 1)
    {
      v40 = v89;
      sub_1B0A96394(v89, v15, type metadata accessor for MailboxTaskLogger);
      sub_1B0A96394(v40, v12, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v41 = sub_1B0E43988();
      v42 = sub_1B0E45908();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v95 = v86;
        *v43 = 68159235;
        v85 = v42;
        *(v43 + 4) = 2;
        *(v43 + 8) = 256;
        v44 = v88;
        v45 = *(v88 + 20);
        v87 = v25;
        v46 = a1;
        v47 = &v12[v45];
        *(v43 + 10) = v12[v45];
        *(v43 + 11) = 2082;
        v48 = &v15[*(v44 + 20)];
        *(v43 + 13) = sub_1B0399D64(*(v48 + 1), *(v48 + 2), &v95);
        *(v43 + 21) = 1040;
        *(v43 + 23) = 2;
        *(v43 + 27) = 512;
        LOWORD(v47) = *(v47 + 12);
        sub_1B0BC7C78(v12, type metadata accessor for MailboxTaskLogger);
        *(v43 + 29) = v47;
        a1 = v46;
        *(v43 + 31) = 2160;
        *(v43 + 33) = 0x786F626C69616DLL;
        *(v43 + 41) = 2085;
        v49 = *(v48 + 4);
        LODWORD(v48) = *(v48 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC7C78(v15, type metadata accessor for MailboxTaskLogger);
        v93 = v49;
        v94 = v48;
        v50 = sub_1B0E44BA8();
        v52 = sub_1B0399D64(v50, v51, &v95);

        *(v43 + 43) = v52;
        v25 = v87;
        _os_log_impl(&dword_1B0389000, v41, v85, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing all messages pending upload.", v43, 0x33u);
        v53 = v86;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v53, -1, -1);
        MEMORY[0x1B272C230](v43, -1, -1);
      }

      else
      {
        sub_1B0BC7C78(v12, type metadata accessor for MailboxTaskLogger);

        sub_1B0BC7C78(v15, type metadata accessor for MailboxTaskLogger);
      }

      *(a1 + v38) = 0;
    }
  }

  v54 = 0;
  v55 = 0;
  v56 = *(v25 + *(v39 + 68));
  v57 = *(v56 + 16);
  v58 = v56 + 57;
LABEL_12:
  v59 = (v58 + 32 * v54);
  while (v57 != v54)
  {
    if (v54 >= v57)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    v60 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_33;
    }

    v61 = *v59;
    v59 += 32;
    ++v54;
    if ((v61 & 1) == 0)
    {
      v54 = v60;
      if (!__OFADD__(v55++, 1))
      {
        goto LABEL_12;
      }

      __break(1u);
      break;
    }
  }

  if (v55 >= 1)
  {
    v63 = v89;
    sub_1B0A96394(v89, v91, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(v63, v92, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v64 = sub_1B0E43988();
    v65 = sub_1B0E45908();
    if (!os_log_type_enabled(v64, v65))
    {
      sub_1B0BC7C78(v92, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v91, type metadata accessor for MailboxTaskLogger);
      v80 = *(v25 + 120);
      if (!*(v25 + 120))
      {
        return;
      }

      goto LABEL_26;
    }

    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = v91;
    v69 = v92;
    v90 = v67;
    v95 = v67;
    *v66 = 68159491;
    *(v66 + 4) = 2;
    *(v66 + 8) = 256;
    v70 = v88;
    v71 = *(v88 + 20);
    v87 = a1;
    v72 = &v69[v71];
    *(v66 + 10) = v69[v71];
    *(v66 + 11) = 2082;
    v73 = &v68[*(v70 + 20)];
    *(v66 + 13) = sub_1B0399D64(*(v73 + 1), *(v73 + 2), &v95);
    *(v66 + 21) = 1040;
    *(v66 + 23) = 2;
    *(v66 + 27) = 512;
    LOWORD(v72) = *(v72 + 12);
    sub_1B0BC7C78(v69, type metadata accessor for MailboxTaskLogger);
    *(v66 + 29) = v72;
    *(v66 + 31) = 2160;
    *(v66 + 33) = 0x786F626C69616DLL;
    *(v66 + 41) = 2085;
    v74 = v25;
    v75 = *(v73 + 4);
    LODWORD(v72) = *(v73 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BC7C78(v68, type metadata accessor for MailboxTaskLogger);
    v93 = v75;
    v94 = v72;
    a1 = v87;
    v76 = sub_1B0E44BA8();
    v78 = sub_1B0399D64(v76, v77, &v95);

    *(v66 + 43) = v78;
    v25 = v74;
    *(v66 + 51) = 2048;
    *(v66 + 53) = v55;
    _os_log_impl(&dword_1B0389000, v64, v65, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did successfully upload %ld message(s).", v66, 0x3Du);
    v79 = v90;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v79, -1, -1);
    MEMORY[0x1B272C230](v66, -1, -1);
  }

  v80 = *(v25 + 120);
  if (!*(v25 + 120))
  {
    return;
  }

LABEL_26:
  v81 = *(v25 + 112);
  if (v80 == 1)
  {
    v82 = 0;
  }

  else
  {
    if (!v81)
    {
      return;
    }

    v81 = 0;
    v82 = 1;
  }

  v83 = a1 + *(type metadata accessor for MailboxSyncState() + 72);
  *v83 = v81;
  *(v83 + 8) = v82;
  *(v83 + 9) = 0;
}

uint64_t sub_1B0BC55C8()
{
  if (qword_1EB6DDC30 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

unint64_t sub_1B0BC5640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  result = sub_1B0BC61E0(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

uint64_t sub_1B0BC56C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 8);
  if ((v5 & 0x3000000000000000) == 0x1000000000000000)
  {
    v7 = *result;
    v8 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    result = sub_1B0A92A68(*result, v5 & 0xCFFFFFFFFFFFFFFFLL, *(v4 + *(a4 + 60)));
    if (result)
    {
      v9 = *(a4 + 68);
      v10 = *(v4 + v9);
      sub_1B03B2000(v7, v8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B00CBC(0, *(v10 + 16) + 1, 1, v10);
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
        result = sub_1B0B00CBC((v12 > 1), v11 + 1, 1, v15);
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

uint64_t sub_1B0BC57C8(uint64_t result)
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v9, v2, v3, 0, sub_1B0BC61D8);
    result = sub_1B03BB638(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

unint64_t sub_1B0BC58A4()
{
  result = qword_1EB6E5300;
  if (!qword_1EB6E5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5300);
  }

  return result;
}

BOOL sub_1B0BC58F8(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
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

BOOL sub_1B0BC592C(uint64_t a1, unint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, unint64_t a6, uint64_t a7, __int16 a8)
{
  if ((sub_1B0AB8858(a1, a2, a5, a6) & 1) == 0)
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

void sub_1B0BC59E8()
{
  sub_1B0BC5E38(319, &qword_1EB6DECE0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Behavior14UploadMessagesV9CommandIDO(uint64_t a1)
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

uint64_t sub_1B0BC5AB8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0BC5B14(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1B0BC5B68(void *result, unsigned int a2)
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

void sub_1B0BC5C00()
{
  sub_1B043CC6C(319, &qword_1EB6DAD90, sub_1B0451ED8);
  if (v0 <= 0x3F)
  {
    sub_1B0BC5E8C(319, &qword_1EB6DB358, &type metadata for OpaquePersistedMessageIdentifier, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B0BC5E8C(319, &qword_1EB6DA568, &type metadata for OpaquePersistedMessageIdentifier, MEMORY[0x1E69E6948]);
      if (v2 <= 0x3F)
      {
        sub_1B0BC5E38(319, &qword_1EB6DDC38, type metadata accessor for UploadMessages.PendingUpload);
        if (v3 <= 0x3F)
        {
          sub_1B0BC5E8C(319, &qword_1EB6DCA08, &type metadata for OpaquePersistedMessageIdentifier, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1B043CC6C(319, &qword_1EB6DAD30, sub_1B03D00F4);
            if (v5 <= 0x3F)
            {
              sub_1B0BC5E8C(319, &qword_1EB6DB4A0, &type metadata for UploadMessages.CompletedUpload, MEMORY[0x1E69E62F8]);
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

void sub_1B0BC5E38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B0E45D88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B0BC5E8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B0BC5EDC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0BC5F30(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_13IMAP2Behavior14UploadMessagesV8ActionIDO(uint64_t a1)
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

uint64_t sub_1B0BC5FC4(uint64_t a1, int a2)
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

uint64_t sub_1B0BC600C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = xmmword_1B0ECD830;
    }
  }

  return result;
}

void *sub_1B0BC6060(void *result, uint64_t a2)
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

unint64_t sub_1B0BC60AC()
{
  result = qword_1EB6DDC28;
  if (!qword_1EB6DDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC28);
  }

  return result;
}

unint64_t sub_1B0BC6104()
{
  result = qword_1EB6DDC20;
  if (!qword_1EB6DDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC20);
  }

  return result;
}

unint64_t sub_1B0BC6158(uint64_t a1)
{
  result = sub_1B0BC6180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0BC6180()
{
  result = qword_1EB6DDC18;
  if (!qword_1EB6DDC18)
  {
    type metadata accessor for UploadMessages(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC18);
  }

  return result;
}

unint64_t sub_1B0BC61E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v49 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5308, &qword_1B0ECD990);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
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
      sub_1B03B2000(v14, v15);
      sub_1B03B2000(v14, v15);
      v19 = a2;
      v20 = a2;
      v21 = a3;
      v22 = sub_1B0A9F2E4(v14, v15, v20, a3);
      sub_1B0391D50(v14, v15);
      if ((v22 & 1) == 0)
      {
        break;
      }

      ++v12;
      result = sub_1B0391D50(v14, v15);
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

    sub_1B03B2000(v14, v15);
    goto LABEL_21;
  }

LABEL_6:
  result = sub_1B0A9F2E4(0, 0x2000000000000000, a2, a3);
  if (result)
  {
    v23 = v49;
    if ((sub_1B0B12358(0, 0x2000000000000000, v49, a2, a3) & 1) != 0 && (sub_1B0AEE074(2, v23, a2, a3) & 1) == 0)
    {
      v24 = v46;
      v25 = v47;
      v26 = v50;
      sub_1B03B5C80(v50 + *(v47 + 52), v46, &qword_1EB6E5308, &qword_1B0ECD990);
      v27 = type metadata accessor for UploadMessages.PendingUpload(0);
      v28 = (*(*(v27 - 8) + 48))(v24, 1, v27);
      sub_1B0398EFC(v24, &qword_1EB6E5308, &qword_1B0ECD990);
      if (v28 == 1)
      {
        v29 = v26;
        sub_1B0BC26C4(&v53);
        v30 = *(&v53 + 1);
        if (*(&v53 + 1) >> 60 != 15)
        {
          v14 = v53;
          v31 = *(v25 + 60);
          sub_1B03B2000(v53, *(&v53 + 1));
          sub_1B0B01F68(&v53, v14, v30);
          sub_1B0391D50(v53, *(&v53 + 1));
          v32 = swift_allocObject();
          v33 = *(v29 + 32);
          *(v32 + 16) = *(v29 + 24);
          *(v32 + 24) = v33;
          *(v32 + 32) = v14;
          *(v32 + 40) = v30;
          sub_1B0B37C0C(v14, v30);
LABEL_21:
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
        v37 = sub_1B0B89188(*(v34 + 16), 0);
        v38 = sub_1B0B8C724(&v53, v37 + 2, v35, v34);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03D91F8();
        if (v38 != v35)
        {
          __break(1u);
          return 0;
        }
      }

      else
      {
        v37 = MEMORY[0x1E69E7CC0];
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
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return 0;
    }

    return 0;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1B0BC6650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v11 = type metadata accessor for MailboxTaskLogger(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for UntaggedResponse(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v6 + 120) == 2 && *(v6 + 112) == 0;
  if (v22 && (sub_1B0AD58EC(0, 0xF000000000000000, a2, a3, a4) & 1) != 0)
  {
    sub_1B0A96394(a1, v21, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v23 = *v21;
      v24 = *(v21 + 2);
      v25 = *(v21 + 6);
      v51[4] = *(v21 + 5);
      v51[5] = v25;
      v26 = *(v21 + 8);
      v52 = *(v21 + 7);
      v53 = v26;
      v27 = *(v21 + 2);
      v51[0] = *(v21 + 1);
      v51[1] = v27;
      v28 = *(v21 + 4);
      v29 = *(v6 + 32) | (*(v6 + 32) << 32);
      v51[2] = *(v21 + 3);
      v51[3] = v28;
      if (v29 == (v24 | (v24 << 32)))
      {
        v30 = sub_1B04520BC(*(v6 + 24), v23);

        sub_1B0B11B9C(v51);
        if ((v30 & 1) != 0 && BYTE8(v52) != 1)
        {
          v46 = v6;
          v31 = v52;
          v32 = v47;
          sub_1B0A96394(v47, v17, type metadata accessor for MailboxTaskLogger);
          sub_1B0A96394(v32, v14, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v33 = sub_1B0E43988();
          v34 = sub_1B0E45908();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v50 = v36;
            *v35 = 68159491;
            *(v35 + 4) = 2;
            *(v35 + 8) = 256;
            v37 = &v14[*(v11 + 20)];
            *(v35 + 10) = *v37;
            *(v35 + 11) = 2082;
            v38 = *(v11 + 20);
            v47 = v31;
            v39 = &v17[v38];
            *(v35 + 13) = sub_1B0399D64(*&v17[v38 + 8], *&v17[v38 + 16], &v50);
            *(v35 + 21) = 1040;
            *(v35 + 23) = 2;
            *(v35 + 27) = 512;
            LOWORD(v37) = *(v37 + 12);
            sub_1B0BC7C78(v14, type metadata accessor for MailboxTaskLogger);
            *(v35 + 29) = v37;
            *(v35 + 31) = 2160;
            *(v35 + 33) = 0x786F626C69616DLL;
            *(v35 + 41) = 2085;
            v40 = *(v39 + 4);
            LODWORD(v39) = *(v39 + 10);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0BC7C78(v17, type metadata accessor for MailboxTaskLogger);
            v48 = v40;
            v49 = v39;
            v31 = v47;
            v41 = sub_1B0E44BA8();
            v43 = sub_1B0399D64(v41, v42, &v50);

            *(v35 + 43) = v43;
            *(v35 + 51) = 2048;
            *(v35 + 53) = v31;
            _os_log_impl(&dword_1B0389000, v33, v34, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received a mailbox specific APPENDLIMIT of %ld.", v35, 0x3Du);
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v36, -1, -1);
            MEMORY[0x1B272C230](v35, -1, -1);
          }

          else
          {
            sub_1B0BC7C78(v14, type metadata accessor for MailboxTaskLogger);

            sub_1B0BC7C78(v17, type metadata accessor for MailboxTaskLogger);
          }

          v44 = v46;
          *(v46 + 112) = v31;
          *(v44 + 120) = 1;
        }
      }

      else
      {
        sub_1B0B11B9C(v51);
      }
    }

    else
    {
      sub_1B0BC7C78(v21, type metadata accessor for UntaggedResponse);
    }
  }
}

void sub_1B0BC6AC0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v155 = a4;
  v154 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v144[-v10];
  v12 = type metadata accessor for MailboxTaskLogger(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v144[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v144[-v17];
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v144[-v22];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v144[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v144[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v144[-v34];
  v36 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v36 == 15)
  {
    v153 = v31;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35E0, &unk_1B0EE3170);
    v59 = swift_projectBox();
    v60 = *v59;
    v61 = *(v59 + 8);
    v35 = *(v59 + 16);
    v62 = *(v59 + 24);
    v159 = *(v59 + 32);
    v160 = *(v59 + 40);
    if ((*(v156 + 32) | (*(v156 + 32) << 32)) != (v61 | (v61 << 32)))
    {
      return;
    }

    v63 = v59;
    v152 = v62;
    v64 = (v59 + *(v58 + 96));
    v65 = *v64;
    v66 = v64[1];
    if ((sub_1B04520BC(*(v156 + 24), v60) & 1) == 0)
    {
      return;
    }

    sub_1B03B5C80(v63 + *(v58 + 80), v11, &unk_1EB6E2990, &qword_1B0E9B060);
    v67 = v152;
    sub_1B03B2000(v35, v152);
    sub_1B03B2000(v35, v67);
    sub_1B03B2000(v65, v66);
    v68 = sub_1B0AEC344(v35, v67 | 0x1000000000000000, a2, a3, v155);
    sub_1B0391D50(v35, v67);
    if ((v68 & 1) == 0)
    {
      sub_1B0398EFC(v11, &unk_1EB6E2990, &qword_1B0E9B060);
      sub_1B0391D50(v35, v67);
      sub_1B0391D50(v65, v66);
      return;
    }

    v151 = v65;
    v155 = v66;
    v69 = type metadata accessor for UploadMessages(0);
    v70 = v156;
    v71 = v156 + *(v69 + 60);
    sub_1B0B93050(v35, v67, &v158);
    sub_1B050755C(v158, *(&v158 + 1));
    if (*(v70 + 120) > 1u)
    {
      goto LABEL_55;
    }

    v72 = *(v70 + 112);
    v73 = v155 >> 62;
    if ((v155 >> 62) > 1)
    {
      if (v73 != 2)
      {
        if (v72 < 0)
        {
          goto LABEL_50;
        }

        goto LABEL_55;
      }

      v110 = *(v151 + 16);
      v109 = *(v151 + 24);
      v91 = __OFSUB__(v109, v110);
      v74 = v109 - v110;
      if (v91)
      {
        __break(1u);
        goto LABEL_45;
      }
    }

    else if (v73)
    {
      LODWORD(v74) = HIDWORD(v151) - v151;
      if (__OFSUB__(HIDWORD(v151), v151))
      {
        __break(1u);
        goto LABEL_75;
      }

      v74 = v74;
    }

    else
    {
      v74 = BYTE6(v155);
    }

    if (v72 < v74)
    {
LABEL_50:
      v148 = *(v70 + 112);
      v149 = v155 >> 62;
      v150 = v69;
      v113 = v154;
      sub_1B0A96394(v154, v18, type metadata accessor for MailboxTaskLogger);
      sub_1B0A96394(v113, v15, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v114 = v151;
      v115 = v155;
      sub_1B03B2000(v151, v155);
      sub_1B03B2000(v114, v115);
      v116 = sub_1B0E43988();
      v117 = sub_1B0E458E8();
      v154 = v116;
      if (!os_log_type_enabled(v116, v117))
      {
        sub_1B0391D50(v114, v115);
        sub_1B0BC7C78(v15, type metadata accessor for MailboxTaskLogger);
        sub_1B0391D50(v114, v115);

        sub_1B0BC7C78(v18, type metadata accessor for MailboxTaskLogger);
        v92 = v152;
LABEL_67:
        v90 = *(v150 + 68);
        v94 = *(v70 + v90);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_73:
          v94 = sub_1B0B00CBC(0, *(v94 + 2) + 1, 1, v94);
        }

        v142 = *(v94 + 2);
        v141 = *(v94 + 3);
        if (v142 >= v141 >> 1)
        {
          v94 = sub_1B0B00CBC((v141 > 1), v142 + 1, 1, v94);
        }

        sub_1B0391D50(v151, v155);
        sub_1B0398EFC(v11, &unk_1EB6E2990, &qword_1B0E9B060);
        *(v94 + 2) = v142 + 1;
        v143 = &v94[32 * v142];
        *(v143 + 4) = v35;
        *(v143 + 5) = v92;
        *(v143 + 6) = 0;
        *(v143 + 28) = 256;
        *(v70 + v90) = v94;
        return;
      }

      v147 = v117;
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v157 = v119;
      *v118 = 68159747;
      *(v118 + 4) = 2;
      *(v118 + 8) = 256;
      v120 = v153;
      v121 = &v15[*(v153 + 20)];
      *(v118 + 10) = *v121;
      *(v118 + 11) = 2082;
      v122 = &v18[*(v120 + 20)];
      *(v118 + 13) = sub_1B0399D64(*(v122 + 1), *(v122 + 2), &v157);
      *(v118 + 21) = 1040;
      *(v118 + 23) = 2;
      *(v118 + 27) = 512;
      v123 = *(v121 + 12);
      sub_1B0BC7C78(v15, type metadata accessor for MailboxTaskLogger);
      *(v118 + 29) = v123;
      *(v118 + 31) = 2160;
      *(v118 + 33) = 0x786F626C69616DLL;
      *(v118 + 41) = 2085;
      v124 = *(v122 + 4);
      LODWORD(v122) = *(v122 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v18, type metadata accessor for MailboxTaskLogger);
      *&v158 = v124;
      DWORD2(v158) = v122;
      v125 = sub_1B0E44BA8();
      v127 = sub_1B0399D64(v125, v126, &v157);

      *(v118 + 43) = v127;
      *(v118 + 51) = 2048;
      v128 = v119;
      if (v149 > 1)
      {
        v137 = v155;
        v130 = v151;
        if (v149 != 2)
        {
          sub_1B0391D50(v151, v155);
          v131 = 0;
          v132 = v137;
          goto LABEL_65;
        }

        v129 = *(v151 + 16);
        v138 = *(v151 + 24);
        sub_1B0391D50(v151, v155);
        v131 = v138 - v129;
        v70 = v156;
        if (!__OFSUB__(v138, v129))
        {
LABEL_63:
          v132 = v155;
          v139 = v151;
LABEL_66:
          v92 = v152;
          *(v118 + 53) = v131;
          sub_1B0391D50(v139, v132);
          *(v118 + 61) = 2048;
          *(v118 + 63) = v148;
          v140 = v154;
          _os_log_impl(&dword_1B0389000, v154, v147, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Message byte count (%{iec-bytes}ld) is above server’s APPENDLIMIT (%{iec-bytes}ld).", v118, 0x47u);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v128, -1, -1);
          MEMORY[0x1B272C230](v118, -1, -1);

          goto LABEL_67;
        }

        __break(1u);
      }

      else
      {
        v129 = v155;
        v130 = v151;
        if (!v149)
        {
          sub_1B0391D50(v151, v155);
          v131 = BYTE6(v129);
          v132 = v129;
LABEL_65:
          v139 = v130;
          v70 = v156;
          goto LABEL_66;
        }
      }

      sub_1B0391D50(v130, v129);
      LODWORD(v131) = HIDWORD(v130) - v130;
      v70 = v156;
      if (!__OFSUB__(HIDWORD(v130), v130))
      {
        v131 = v131;
        goto LABEL_63;
      }

LABEL_75:
      __break(1u);
      return;
    }

LABEL_55:
    v133 = v70 + *(v69 + 52);
    sub_1B0398EFC(v133, &qword_1EB6E5308, &qword_1B0ECD990);
    v134 = type metadata accessor for UploadMessages.PendingUpload(0);
    sub_1B03C60A4(v11, v133 + *(v134 + 24), &unk_1EB6E2990, &qword_1B0E9B060);
    *v133 = v35;
    *(v133 + 8) = v67;
    *(v133 + 16) = v159;
    *(v133 + 24) = v160;
    v135 = (v133 + *(v134 + 28));
    v136 = v155;
    *v135 = v151;
    v135[1] = v136;
    (*(*(v134 - 8) + 56))(v133, 0, 1, v134);
    return;
  }

  if (v36 == 14)
  {
    v37 = a1 & 0xFFFFFFFFFFFFFFBLL;
    if ((*(v156 + 32) | (*(v156 + 32) << 32)) == (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
    {
      v38 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v39 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v152 = v32;
      v153 = v31;
      v40 = *(v156 + 24);
      v151 = v33;
      if (sub_1B04520BC(v40, *(v37 + 16)))
      {
        v41 = *(v38 + 16);
        if (v41)
        {
          LODWORD(v149) = v39;
          v42 = v154;
          sub_1B0A96394(v154, v35, type metadata accessor for MailboxTaskLogger);
          sub_1B0A96394(v42, v29, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          swift_bridgeObjectRetain_n();
          v43 = sub_1B0E43988();
          v44 = sub_1B0E45908();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v147 = v44;
            v46 = v45;
            v148 = swift_slowAlloc();
            v159 = v148;
            *v46 = 68159491;
            *(v46 + 4) = 2;
            *(v46 + 8) = 256;
            v47 = v153;
            v48 = *(v153 + 20);
            v150 = v38;
            v49 = &v29[v48];
            *(v46 + 10) = v29[v48];
            *(v46 + 11) = 2082;
            v50 = *(v47 + 20);
            v146 = v43;
            v51 = v35 + v50;
            *(v46 + 13) = sub_1B0399D64(*(v35 + v50 + 8), *(v35 + v50 + 16), &v159);
            *(v46 + 21) = 1040;
            *(v46 + 23) = 2;
            *(v46 + 27) = 512;
            v145 = *(v49 + 12);
            sub_1B0BC7C78(v29, type metadata accessor for MailboxTaskLogger);
            *(v46 + 29) = v145;
            *(v46 + 31) = 2160;
            *(v46 + 33) = 0x786F626C69616DLL;
            *(v46 + 41) = 2085;
            v52 = *(v51 + 32);
            LODWORD(v51) = *(v51 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0BC7C78(v35, type metadata accessor for MailboxTaskLogger);
            *&v158 = v52;
            DWORD2(v158) = v51;
            v53 = sub_1B0E44BA8();
            v55 = sub_1B0399D64(v53, v54, &v159);

            *(v46 + 43) = v55;
            v38 = v150;
            *(v46 + 51) = 2048;
            v56 = *(v38 + 16);

            *(v46 + 53) = v56;

            v35 = v146;
            _os_log_impl(&dword_1B0389000, v146, v147, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received %ld message(s).", v46, 0x3Du);
            v57 = v148;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v57, -1, -1);
            MEMORY[0x1B272C230](v46, -1, -1);
          }

          else
          {

            sub_1B0BC7C78(v29, type metadata accessor for MailboxTaskLogger);

            sub_1B0BC7C78(v35, type metadata accessor for MailboxTaskLogger);
          }

          LOBYTE(v39) = v149;
        }

        if ((sub_1B0AEC344(0, 0x2000000000000000, a2, a3, v155) & 1) == 0)
        {
          *(v156 + *(type metadata accessor for UploadMessages(0) + 72)) = 1;
          return;
        }

        v150 = v38;
        v67 = v156;
        if ((v39 & 1) == 0)
        {
          *(v67 + *(type metadata accessor for UploadMessages(0) + 72)) = 1;
        }

        v11 = *(v67 + 128);
        if (*(v11 + 2))
        {
          v75 = v154;
          sub_1B0A96394(v154, v26, type metadata accessor for MailboxTaskLogger);
          sub_1B0A96394(v75, v23, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v76 = sub_1B0E43988();
          v77 = sub_1B0E458E8();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v155 = swift_slowAlloc();
            v159 = v155;
            *v78 = 68159235;
            *(v78 + 4) = 2;
            *(v78 + 8) = 256;
            v79 = v153;
            v80 = &v23[*(v153 + 20)];
            *(v78 + 10) = *v80;
            *(v78 + 11) = 2082;
            v81 = &v26[*(v79 + 20)];
            *(v78 + 13) = sub_1B0399D64(*(v81 + 1), *(v81 + 2), &v159);
            *(v78 + 21) = 1040;
            *(v78 + 23) = 2;
            *(v78 + 27) = 512;
            LOWORD(v80) = *(v80 + 12);
            sub_1B0BC7C78(v23, type metadata accessor for MailboxTaskLogger);
            *(v78 + 29) = v80;
            v67 = v156;
            *(v78 + 31) = 2160;
            *(v78 + 33) = 0x786F626C69616DLL;
            *(v78 + 41) = 2085;
            v82 = *(v81 + 4);
            LODWORD(v81) = *(v81 + 10);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0BC7C78(v26, type metadata accessor for MailboxTaskLogger);
            *&v158 = v82;
            DWORD2(v158) = v81;
            v83 = sub_1B0E44BA8();
            v35 = sub_1B0399D64(v83, v84, &v159);

            *(v78 + 43) = v35;
            _os_log_impl(&dword_1B0389000, v76, v77, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Unexpectedly received multiple .uploadMessages", v78, 0x33u);
            v85 = v155;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v85, -1, -1);
            MEMORY[0x1B272C230](v78, -1, -1);
          }

          else
          {
            sub_1B0BC7C78(v23, type metadata accessor for MailboxTaskLogger);

            sub_1B0BC7C78(v26, type metadata accessor for MailboxTaskLogger);
          }
        }

        v86 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v87 = sub_1B03D74A0(v86);

        v159 = v87;
        v88 = *(v67 + *(type metadata accessor for UploadMessages(0) + 64));
        v89 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B0AFC4(v89);

        if (!v41)
        {

LABEL_46:
          v111 = (2 * *(v11 + 2)) | 1;
          v112 = *(v67 + 136);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          swift_unknownObjectRelease();
          *(v67 + 136) = v11;
          *(v67 + 144) = v11 + 32;
          *(v67 + 152) = 0;
          *(v67 + 160) = v111;
          return;
        }

        v90 = 0;
        v70 = v150 + 40;
        do
        {
          v92 = *(v70 - 8);
          v93 = *v70;
          v94 = v159;
          sub_1B03B2000(v92, *v70);
          if ((sub_1B0A92A68(v92, v93, v94) & 1) != 0 || (v94 = *(v11 + 2), v94 > 6))
          {
            sub_1B0391D50(v92, v93);
            v91 = __OFADD__(v90++, 1);
            if (v91)
            {
              __break(1u);
              goto LABEL_73;
            }
          }

          else
          {
            sub_1B03B2000(v92, v93);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_1B0B006F4(0, (v94 + 1), 1, v11);
            }

            v35 = *(v11 + 2);
            v95 = *(v11 + 3);
            if (v35 >= v95 >> 1)
            {
              v11 = sub_1B0B006F4((v95 > 1), v35 + 1, 1, v11);
            }

            *(v11 + 2) = v35 + 1;
            v96 = &v11[16 * v35];
            *(v96 + 4) = v92;
            *(v96 + 5) = v93;
            *(v67 + 128) = v11;
            sub_1B0B01F68(&v158, v92, v93);
            sub_1B0391D50(v158, *(&v158 + 1));
          }

          v70 += 16;
          --v41;
        }

        while (v41);

        if (v90 < 1)
        {
          goto LABEL_46;
        }

        v97 = v154;
        v70 = v152;
        sub_1B0A96394(v154, v152, type metadata accessor for MailboxTaskLogger);
        v18 = v151;
        sub_1B0A96394(v97, v151, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v69 = sub_1B0E43988();
        v98 = sub_1B0E45908();
        if (os_log_type_enabled(v69, v98))
        {
          v99 = swift_slowAlloc();
          LODWORD(v155) = v98;
          v100 = v99;
          v156 = swift_slowAlloc();
          v157 = v156;
          *v100 = 68159491;
          *(v100 + 4) = 2;
          *(v100 + 8) = 256;
          v101 = v153;
          v102 = &v18[*(v153 + 20)];
          *(v100 + 10) = *v102;
          *(v100 + 11) = 2082;
          v103 = v70 + *(v101 + 20);
          *(v100 + 13) = sub_1B0399D64(*(v103 + 8), *(v103 + 16), &v157);
          *(v100 + 21) = 1040;
          *(v100 + 23) = 2;
          *(v100 + 27) = 512;
          LOWORD(v102) = *(v102 + 12);
          sub_1B0BC7C78(v18, type metadata accessor for MailboxTaskLogger);
          *(v100 + 29) = v102;
          *(v100 + 31) = 2160;
          *(v100 + 33) = 0x786F626C69616DLL;
          *(v100 + 41) = 2085;
          v104 = *(v103 + 32);
          LODWORD(v103) = *(v103 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0BC7C78(v70, type metadata accessor for MailboxTaskLogger);
          *&v158 = v104;
          DWORD2(v158) = v103;
          v105 = sub_1B0E44BA8();
          v107 = sub_1B0399D64(v105, v106, &v157);

          *(v100 + 43) = v107;
          *(v100 + 51) = 2048;
          *(v100 + 53) = v90;
          _os_log_impl(&dword_1B0389000, v69, v155, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Skipping %ld message(s).", v100, 0x3Du);
          v108 = v156;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v108, -1, -1);
          MEMORY[0x1B272C230](v100, -1, -1);

          goto LABEL_46;
        }

LABEL_45:
        sub_1B0BC7C78(v18, type metadata accessor for MailboxTaskLogger);

        sub_1B0BC7C78(v70, type metadata accessor for MailboxTaskLogger);
        goto LABEL_46;
      }
    }
  }
}

uint64_t sub_1B0BC7C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0BC7CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadMessages.PendingUpload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy10_4(uint64_t result, uint64_t *a2)
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

uint64_t sub_1B0BC7D9C(uint64_t a1)
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

uint64_t sub_1B0BC7DB8(uint64_t result, int a2)
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

BOOL sub_1B0BC7DF4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a1 + 24);
  if (sub_1B0AB8858(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    if (v5)
    {
      if (v3 && (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5) & 1) != 0)
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

uint64_t sub_1B0BC7E80(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0BC7EDC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B0BC7F44(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = _s19UserInitiatedSearchV5StateOMa(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v26 = *(*(MessagesVMa - 8) + 64);
  MEMORY[0x1EEE9AC00](MessagesVMa);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v2 + *(_s19UserInitiatedSearchVMa(0) + 20);
  sub_1B0BC8BD0(v29, v24);
  v47 = v21;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1B0BC8C98(v24, _s19UserInitiatedSearchV5StateOMa);
  }

  sub_1B0BC8C34(v24, v28);
  v30 = *(MessagesVMa + 20);
  sub_1B03B5C80(v28, v9, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.intersection(_:)(v9, v17);
  v44 = v9;
  sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.union(_:)(v17, v20);
  sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v31 = v45;
  sub_1B03B5C80(&v28[*(MessagesVMa + 24)], v45, &qword_1EB6E3920, &qword_1B0E9B070);
  v32 = *(v50 + 48);
  v33 = v32(v31, 1, v10);
  v42 = MessagesVMa;
  v43 = v20;
  if (v33 == 1)
  {
    sub_1B03D06F8();
    v34 = v46;
    sub_1B0E46EE8();
    if (v32(v31, 1, v10) != 1)
    {
      sub_1B0398EFC(v31, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v34 = v46;
    sub_1B074BA2C(v31, v46);
  }

  v36 = v44;
  sub_1B03B5C80(v28, v44, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.intersection(_:)(v36, v17);
  v37 = v10;
  sub_1B0398EFC(v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v38 = v48;
  MessageIdentifierSet.union(_:)(v17, v48);
  sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v34, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0BC8C98(v29, _s19UserInitiatedSearchV5StateOMa);
  sub_1B03B5C80(v28, v29, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B0BC8C98(v28, _s19UserInitiatedSearchV13FetchMessagesVMa);
  v39 = v42;
  v40 = *(v42 + 24);
  sub_1B074BA2C(v38, v29 + v40);
  (*(v50 + 56))(v29 + v40, 0, 1, v37);
  sub_1B074BA2C(v43, v29 + *(v39 + 20));
  return swift_storeEnumTagMultiPayload();
}

BOOL sub_1B0BC8488(uint64_t a1, uint64_t a2)
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

BOOL sub_1B0BC8548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F8, &unk_1B0EC4440);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v18 = *(MessagesVMa + 20);
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v19 = *(MessagesVMa + 24);
  v20 = a1 + v19;
  v21 = *(v13 + 48);
  sub_1B03B5C80(v20, v16, &qword_1EB6E3920, &qword_1B0E9B070);
  sub_1B03B5C80(a2 + v19, &v16[v21], &qword_1EB6E3920, &qword_1B0E9B070);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_1B0398EFC(v16, &qword_1EB6E3920, &qword_1B0E9B070);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1B03B5C80(v16, v12, &qword_1EB6E3920, &qword_1B0E9B070);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_8:
    sub_1B0398EFC(v16, &qword_1EB6E41F8, &unk_1B0EC4440);
    return 0;
  }

  sub_1B074BA2C(&v16[v21], v8);
  v24 = sub_1B0E46E08();
  sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v16, &qword_1EB6E3920, &qword_1B0E9B070);
  return (v24 & 1) != 0;
}

BOOL sub_1B0BC8890(uint64_t a1, uint64_t a2)
{
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v5 = *(*(MessagesVMa - 8) + 64);
  MEMORY[0x1EEE9AC00](MessagesVMa - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s19UserInitiatedSearchV5StateOMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A38, &unk_1B0ECDE10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - v17;
  v20 = &v32 + *(v19 + 56) - v17;
  sub_1B0BC8BD0(a1, &v32 - v17);
  sub_1B0BC8BD0(a2, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0BC8BD0(v18, v14);
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
        sub_1B0B239C8(v27);

        sub_1B0B239C8(v23);

        if (v30)
        {
          sub_1B0BC8C98(v18, _s19UserInitiatedSearchV5StateOMa);
          return 1;
        }
      }

      else
      {
        sub_1B0B239C8(v27);

        sub_1B0B239C8(v23);
      }

      sub_1B0BC8C98(v18, _s19UserInitiatedSearchV5StateOMa);
      return 0;
    }

    sub_1B0B239C8(v23);

LABEL_7:
    sub_1B0398EFC(v18, &qword_1EB6E4A38, &unk_1B0ECDE10);
    return 0;
  }

  sub_1B0BC8BD0(v18, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0BC8C98(v11, _s19UserInitiatedSearchV13FetchMessagesVMa);
    goto LABEL_7;
  }

  sub_1B0BC8C34(v20, v7);
  v21 = sub_1B0BC8548(v11, v7);
  sub_1B0BC8C98(v7, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_1B0BC8C98(v11, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_1B0BC8C98(v18, _s19UserInitiatedSearchV5StateOMa);
  return v21;
}

uint64_t sub_1B0BC8BD0(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BC8C34(uint64_t a1, uint64_t a2)
{
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  (*(*(MessagesVMa - 8) + 32))(a2, a1, MessagesVMa);
  return a2;
}

uint64_t sub_1B0BC8C98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0BC8CF8()
{
  result = _s19UserInitiatedSearchV13FetchMessagesVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore29SearchKeyO(void *a1)
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

uint64_t sub_1B0BC8D88(uint64_t a1, int a2)
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

uint64_t sub_1B0BC8DD0(uint64_t result, int a2, int a3)
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

void sub_1B0BC8E4C()
{
  sub_1B0B48D48(319, qword_1EB6DE250, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v0 <= 0x3F)
  {
    sub_1B0B48D48(319, &qword_1EB6DE3E0, type metadata accessor for MessageIdentifierSet);
    if (v1 <= 0x3F)
    {
      sub_1B0AB44A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B0BC8F48()
{
  result = _s19UserInitiatedSearchV5StateOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BC8FC4(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = result;
  v9 = v4[1];
  v10 = v9 + 32;
  v11 = *(v9 + 16);
  if (*v4)
  {
    result = sub_1B0BAE034(a4, v10, v11, *v4 + 16, *v4 + 32);
    if ((v12 & 1) == 0)
    {
      v13 = result;
      if (a3 == 1)
      {
LABEL_4:
        sub_1B0BCAFCC(v13, v11);
        sub_1B0BCB1BC(v13, v25);
      }

LABEL_17:
      v21 = v4[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B9466C(v21);
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
    sub_1B0BC9E94(v5, v11, sub_1B0B0A044);
    v16 = v4[2];
    v14 = v4 + 2;
    v15 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v16;
    if ((result & 1) == 0)
    {
      result = sub_1B0B0A284(0, *(v15 + 16) + 1, 1);
      v15 = *v14;
    }

    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = v17 + 1;
    if (v17 >= v18 >> 1)
    {
      v24 = *(v15 + 16);
      result = sub_1B0B0A284((v18 > 1), v17 + 1, 1);
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

uint64_t sub_1B0BC918C(__int128 *a1, uint64_t a2, unsigned int a3)
{
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_1B0BA7CA4(a2, a3, v9, v8, (*v3 + 16));
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
    v10 = sub_1B03A912C(a2, a3, v9, v8);
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
      if (sub_1B0B37CA4(&v74) == 1)
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
      sub_1B03A5284(a2, a3);

      v29 = v3[2];
      v28 = v3 + 2;
      v27 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v28 = v29;
      if ((result & 1) == 0)
      {
        result = sub_1B0B09D24(0, *(v27 + 16) + 1, 1);
        v27 = *v28;
      }

      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1B0B09D24((v30 > 1), v31 + 1, 1);
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
  if (sub_1B0B37CA4(&v74) == 1)
  {
    sub_1B0BCAE88(v26, v12);

    sub_1B0BCB2E8(v26, v62);
    return sub_1B03A3614(v62);
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
    result = sub_1B0B946F0(v41);
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
    result = sub_1B03A3614(v62);
    v3[2] = v41;
    return result;
  }

  __break(1u);
  return result;
}

BOOL sub_1B0BC9510(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return (sub_1B03B5CE8(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_1B03AC27C(v2, v3) & 1) != 0;
}

uint64_t sub_1B0BC9560(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  memcpy(v50, v3, sizeof(v50));
  v8 = LOBYTE(v50[3]);
  v44 = BYTE1(v50[3]);
  v9 = v50[4];
  v10 = sub_1B03A7A88();
  v11 = v50[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = sub_1B0397D14();
  v13 = v12;
  v42 = a1;
  v43 = a2;
  v41 = a3;
  if (v9 == 3 || v9 == 2)
  {

    v14 = 1;
    goto LABEL_4;
  }

  v32 = sub_1B0BAE1A4(v12);
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
  sub_1B0397E04(&unk_1F2710548, v11);
  sub_1B0BAE1A4(v13);
  v33 = sub_1B039109C(v11);

  if (v33 & 1) == 0 && (v44)
  {
    sub_1B0BAE1A4(v13);
  }

LABEL_4:

  v15 = v50[32];
  v16 = sub_1B03A8380(v50[21], v50[22], v50[23], v50[24] & 1, v50[15], v10, v14 & 1, v50[26]);
  v18 = v17;
  v20 = v19;

  v40 = &v36;
  MEMORY[0x1EEE9AC00](v21);
  v35[2] = v4;
  v35[3] = v16;
  v35[4] = v18;
  v35[5] = v20;
  v22 = sub_1B03A944C(v16, v18, v20);
  v38 = v23;
  v39 = v22;
  v37 = v24;
  MEMORY[0x1EEE9AC00](v22);
  v34[2] = v4;
  v25 = *(v4 + 200);
  v48[3] = *(v4 + 184);
  v48[4] = v25;
  v49[0] = *(v4 + 216);
  *(v49 + 12) = *(v4 + 228);
  v48[2] = *(v4 + 168);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = sub_1B03A967C();
  v27 = *(v4 + 184);
  v28 = *(v4 + 216);
  v47 = *(v4 + 200);
  v48[0] = v28;
  *(v48 + 12) = *(v4 + 228);
  v45 = *(v4 + 168);
  v46 = v27;
  v29 = sub_1B0398E54();
  v30 = sub_1B03A9934(v42, v43, v41 & 1, sub_1B0BCC8B0, v35, v39, v38, v37, sub_1B0BCC8DC, v34, v15, v26, v29, v44 & 1);

  return v30;
}

uint64_t sub_1B0BC985C(void *__src)
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
      sub_1B03B9A2C(v4, v1, v2, 1);
      sub_1B03B5C80(v32, v24, &qword_1EB6E4870, &qword_1B0EC6000);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v10 = sub_1B0397D14();
      v11 = v10;
      if (v8 == 2 || v8 == 3)
      {

        sub_1B0397D14();

        v12 = 0;
        LOBYTE(v6) = 1;
LABEL_6:
        v13 = BYTE1(__dst[2]);
        v14 = swift_allocObject();
        memcpy((v14 + 16), __dst, 0x108uLL);
        sub_1B03AD0B0(__dst, v24);
        v15 = sub_1B03B9A74();
        *&v26 = v4;
        *(&v26 + 1) = v5;
        LOBYTE(v27) = v13;
        *(&v27 + 1) = v3;
        LOBYTE(v28) = v6 & 1;
        BYTE1(v28) = v12;
        *(&v28 + 1) = sub_1B0B389B8;
        *&v29 = v14;
        *(&v29 + 1) = 7;
        v30 = v15;
        v25 = v15;
        v24[2] = v28;
        v24[3] = v29;
        v24[0] = v26;
        v24[1] = v27;
        v16 = sub_1B03B9B68();
        sub_1B03BB608(&v26);
        return v16;
      }

      v18 = sub_1B0BAE1A4(v10);
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
          sub_1B0397E04(&unk_1F2710548, v9);
          sub_1B0BAE1A4(v11);
          v19 = sub_1B039109C(v9);

          if (v19 & 1) == 0 && (v7)
          {
            sub_1B0BAE1A4(v11);
          }

          v20 = sub_1B0397D14();
          sub_1B0BAE1A4(v20);
          sub_1B0397E04(&unk_1F2710548, v9);
          sub_1B0BAE1A4(v20);
          v21 = sub_1B039109C(v9);

          if (v21)
          {

            v12 = 0;
          }

          else if (v7)
          {
            v22 = sub_1B0BAE1A4(v20);

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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B0BC9B50()
{
  v1 = v0[4];
  sub_1B03B8738(v0[2], v0[3]);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0BC9BB0(uint64_t a1, int a2)
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

uint64_t sub_1B0BC9BF8(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0BC9C48(unsigned __int8 a1)
{
  sub_1B0E46C28();
  if ((a1 - 5) >= 6u)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    a1 -= 4;
  }

  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BC9CBC()
{
  v1 = *v0;
  if ((v1 - 5) >= 6)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    LOBYTE(v1) = v1 - 4;
  }

  return MEMORY[0x1B2728D70](v1);
}

uint64_t sub_1B0BC9D08()
{
  v1 = *v0;
  sub_1B0E46C28();
  if ((v1 - 5) >= 6)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    LOBYTE(v1) = v1 - 4;
  }

  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}