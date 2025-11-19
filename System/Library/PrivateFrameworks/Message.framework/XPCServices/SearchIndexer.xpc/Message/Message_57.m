uint64_t sub_100399F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QResyncParameter(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v112 - v11;
  v121 = sub_10000C9C0(&qword_1005DBC60, &qword_1004FE590);
  v13 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v123 = &v112 - v14;
  v15 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v120 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v124 = &v112 - v19;
  v126 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  v20 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v127 = &v112 - v21;
  v137 = type metadata accessor for ParameterValue();
  v135 = *(v137 - 8);
  v22 = *(v135 + 64);
  __chkstk_darwin(v137);
  v122 = (&v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v125 = &v112 - v25;
  __chkstk_darwin(v26);
  v128 = &v112 - v27;
  v28 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v129 = &v112 - v30;
  v131 = sub_10000C9C0(&qword_1005DBC70, &unk_100505A20);
  v31 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v133 = &v112 - v32;
  v130 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v33 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v138 = (&v112 - v34);
  v140 = sub_10000C9C0(&qword_1005DBCB8, &qword_1004FE5D0);
  v35 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v37 = &v112 - v36;
  v139 = type metadata accessor for SelectParameter(0);
  v38 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  __chkstk_darwin(v39);
  __chkstk_darwin(v40);
  v42 = &v112 - v41;
  __chkstk_darwin(v43);
  v48 = &v112 - v47;
  v49 = *(a1 + 16);
  if (v49 != *(a2 + 16))
  {
    return 0;
  }

  if (!v49 || a1 == a2)
  {
    return 1;
  }

  v117 = v7;
  v118 = v46;
  v132 = v45;
  v112 = v12;
  v114 = v8;
  v50 = 0;
  v51 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v136 = a1 + v51;
  v134 = a2 + v51;
  v116 = (v135 + 48);
  v113 = (v9 + 48);
  v135 = *(v44 + 72);
  v119 = v42;
  while (1)
  {
    v52 = v135 * v50;
    result = sub_1003A3594(v136 + v135 * v50, v48, type metadata accessor for SelectParameter);
    if (v50 == v49)
    {
      break;
    }

    sub_1003A3594(v134 + v52, v42, type metadata accessor for SelectParameter);
    v54 = *(v140 + 48);
    sub_1003A3594(v48, v37, type metadata accessor for SelectParameter);
    sub_1003A3594(v42, &v37[v54], type metadata accessor for SelectParameter);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v56 = v48;
        v57 = v118;
        sub_1003A3594(v37, v118, type metadata accessor for SelectParameter);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1003A35FC(v57, type metadata accessor for QResyncParameter);
LABEL_49:
          sub_100025F40(v37, &qword_1005DBCB8, &qword_1004FE5D0);
          goto LABEL_62;
        }

        v58 = v117;
        sub_1003A352C(&v37[v54], v117, type metadata accessor for QResyncParameter);
        _s12NIOIMAPCore216QResyncParameterV23__derived_struct_equalsySbAC_ACtFZ_0(v57);
        v60 = v59;
        sub_1003A35FC(v58, type metadata accessor for QResyncParameter);
        sub_1003A35FC(v57, type metadata accessor for QResyncParameter);
        v48 = v56;
        if ((v60 & 1) == 0)
        {
          sub_1003A35FC(v37, type metadata accessor for SelectParameter);
          goto LABEL_62;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v61 = v137;
      v62 = v132;
      sub_1003A3594(v37, v132, type metadata accessor for SelectParameter);
      v63 = swift_getEnumCaseMultiPayload();
      v64 = v133;
      if (v63)
      {
        sub_100025F40(v62, &qword_1005DBCA8, &unk_100504BF0);
        v42 = v119;
        goto LABEL_49;
      }

      v65 = v138;
      sub_100025FDC(&v37[v54], v138, &qword_1005DBCA8, &unk_100504BF0);
      if (*v62 != *v65 || (v66 = v62, v62[1] != v65[1]))
      {
        v67 = sub_1004A6D34();
        v66 = v132;
        if ((v67 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      v68 = *(v130 + 52);
      v69 = *(v131 + 48);
      sub_10000E268(v66 + v68, v64, &qword_1005D7F50, &unk_100502FF0);
      sub_10000E268(v138 + v68, v64 + v69, &qword_1005D7F50, &unk_100502FF0);
      v70 = *v116;
      if ((*v116)(v64, 1, v61) == 1)
      {
        v71 = v70(v64 + v69, 1, v137);
        v42 = v119;
        if (v71 != 1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v72 = v64;
        v73 = v64;
        v74 = v129;
        sub_10000E268(v72, v129, &qword_1005D7F50, &unk_100502FF0);
        if (v70(v73 + v69, 1, v137) == 1)
        {
          sub_1003A35FC(v74, type metadata accessor for ParameterValue);
          v64 = v73;
LABEL_51:
          v106 = &qword_1005DBC70;
          v107 = &unk_100505A20;
          v108 = v64;
          goto LABEL_60;
        }

        v75 = v73 + v69;
        v76 = v128;
        sub_1003A352C(v75, v128, type metadata accessor for ParameterValue);
        v77 = v127;
        v78 = *(v126 + 48);
        sub_1003A3594(v74, v127, type metadata accessor for ParameterValue);
        sub_1003A3594(v76, v77 + v78, type metadata accessor for ParameterValue);
        v79 = swift_getEnumCaseMultiPayload();
        v42 = v119;
        if (v79 == 1)
        {
          v80 = v122;
          sub_1003A3594(v77, v122, type metadata accessor for ParameterValue);
          v81 = *v80;
          if (swift_getEnumCaseMultiPayload() != 1)
          {

LABEL_54:
            sub_100025F40(v77, &qword_1005DBC68, &qword_1004FE598);
            goto LABEL_59;
          }

          v82 = *(v77 + v78);
          v83 = *(v81 + 16);
          if (v83 != *(v82 + 16))
          {
            goto LABEL_46;
          }

          if (v83 && v81 != v82)
          {
            v84 = (v81 + 40);
            v85 = (v82 + 40);
            while (1)
            {
              v86 = *(v84 - 1) == *(v85 - 1) && *v84 == *v85;
              if (!v86 && (sub_1004A6D34() & 1) == 0)
              {
                break;
              }

              v84 += 2;
              v85 += 2;
              if (!--v83)
              {
                goto LABEL_39;
              }
            }

LABEL_46:

            v105 = v127;
            goto LABEL_58;
          }

LABEL_39:

          v99 = v127;
          v42 = v119;
        }

        else
        {
          v87 = v125;
          sub_1003A3594(v77, v125, type metadata accessor for ParameterValue);
          v88 = swift_getEnumCaseMultiPayload();
          v89 = v123;
          if (v88 == 1)
          {
            sub_100025F40(v87, &qword_1005CDA78, &unk_1004CF7E0);
            goto LABEL_54;
          }

          v90 = v77 + v78;
          v91 = v87;
          v92 = v124;
          sub_100025FDC(v90, v124, &qword_1005CDA78, &unk_1004CF7E0);
          v93 = *(v121 + 48);
          sub_10000E268(v91, v89, &qword_1005CDA78, &unk_1004CF7E0);
          v115 = v93;
          sub_10000E268(v92, v89 + v93, &qword_1005CDA78, &unk_1004CF7E0);
          v94 = *v113;
          v95 = v89;
          v96 = v89;
          v97 = v114;
          if ((*v113)(v95, 1, v114) == 1)
          {
            v86 = v94(v96 + v115, 1, v97) == 1;
            v98 = v96;
            v99 = v127;
            v100 = v125;
            if (!v86)
            {
              goto LABEL_56;
            }

            sub_100025F40(v98, &qword_1005CDA78, &unk_1004CF7E0);
          }

          else
          {
            sub_10000E268(v96, v120, &qword_1005CDA78, &unk_1004CF7E0);
            if (v94(v96 + v115, 1, v97) == 1)
            {
              sub_100025F40(v120, &qword_1005CDA68, &qword_1004CF7D0);
              v98 = v96;
              v99 = v127;
              v100 = v125;
LABEL_56:
              sub_100025F40(v98, &qword_1005DBC60, &qword_1004FE590);
LABEL_57:
              sub_100025F40(v124, &qword_1005CDA78, &unk_1004CF7E0);
              sub_100025F40(v100, &qword_1005CDA78, &unk_1004CF7E0);
              v105 = v99;
LABEL_58:
              sub_1003A35FC(v105, type metadata accessor for ParameterValue);
LABEL_59:
              v109 = v129;
              v110 = v133;
              sub_1003A35FC(v128, type metadata accessor for ParameterValue);
              sub_1003A35FC(v109, type metadata accessor for ParameterValue);
              v106 = &qword_1005D7F50;
              v107 = &unk_100502FF0;
              v108 = v110;
LABEL_60:
              sub_100025F40(v108, v106, v107);
              v66 = v132;
LABEL_61:
              v111 = v66;
              sub_100025F40(v138, &qword_1005DBCA8, &unk_100504BF0);
              sub_100025F40(v111, &qword_1005DBCA8, &unk_100504BF0);
              sub_1003A35FC(v37, type metadata accessor for SelectParameter);
              v42 = v119;
LABEL_62:
              sub_1003A35FC(v42, type metadata accessor for SelectParameter);
              sub_1003A35FC(v48, type metadata accessor for SelectParameter);
              return 0;
            }

            v101 = v96 + v115;
            v102 = v112;
            sub_100025FDC(v101, v112, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100016D2C();
            v103 = v120;
            v104 = sub_1004A7034();
            sub_100025F40(v102, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100025F40(v103, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100025F40(v123, &qword_1005CDA78, &unk_1004CF7E0);
            v99 = v127;
            v100 = v125;
            if ((v104 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          sub_100025F40(v124, &qword_1005CDA78, &unk_1004CF7E0);
          sub_100025F40(v100, &qword_1005CDA78, &unk_1004CF7E0);
        }

        sub_1003A35FC(v99, type metadata accessor for ParameterValue);
        sub_1003A35FC(v128, type metadata accessor for ParameterValue);
        sub_1003A35FC(v129, type metadata accessor for ParameterValue);
        v64 = v133;
      }

      sub_100025F40(v64, &qword_1005D7F50, &unk_100502FF0);
      sub_100025F40(v138, &qword_1005DBCA8, &unk_100504BF0);
      sub_100025F40(v132, &qword_1005DBCA8, &unk_100504BF0);
    }

    ++v50;
    sub_1003A35FC(v37, type metadata accessor for SelectParameter);
    sub_1003A35FC(v42, type metadata accessor for SelectParameter);
    sub_1003A35FC(v48, type metadata accessor for SelectParameter);
    if (v50 == v49)
    {
      return 1;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_10039AE70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24 = *v5;
    v25 = v8;
    v9 = v5[3];
    v26 = v5[2];
    v27 = v9;
    v10 = v6[1];
    v28 = *v6;
    v29 = v10;
    v11 = v6[3];
    v30 = v6[2];
    v31 = v11;
    if (v26 == 254)
    {
      if (v30 != 254)
      {
        return 0;
      }

      goto LABEL_36;
    }

    if (v26 == 255)
    {
      if (v30 != 0xFF)
      {
        return 0;
      }

      goto LABEL_36;
    }

    if (v30 > 0xFDu)
    {
      return 0;
    }

    v12 = *(&v27 + 1);
    v13 = v27;
    v20 = *(&v26 + 1);
    v21 = *(&v30 + 1);
    v14 = *(&v31 + 1);
    v22 = v31;
    if ((v26 & 1) == 0)
    {
      if (v30)
      {
        return 0;
      }

      if (v24 == v28)
      {
        goto LABEL_21;
      }

LABEL_20:
      if ((sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    if ((v30 & 1) == 0)
    {
      return 0;
    }

    v15 = v25;
    v16 = v29;
    if (v24 != v28 && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }

    if (v15 != v16)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (HIBYTE(v12) != 255)
    {
      break;
    }

    if (HIBYTE(v14) != 255)
    {
      goto LABEL_41;
    }

LABEL_36:
    if (!i)
    {
      return 1;
    }

    v6 += 4;
    v5 += 4;
  }

  if (HIBYTE(v14) != 255)
  {
    if ((v12 & 0x100000000000000) != 0)
    {
      if ((v14 & 0x100000000000000) == 0)
      {
        return 0;
      }

      sub_1003A347C(&v28, v23);
      sub_1003A347C(&v24, v23);
      sub_1003A3378(v20, v13, v12);
      sub_1003A3378(v21, v22, v14);
      v18 = sub_100397AD8(v20, v21);
      sub_1003A3390(v21, v22, v14);
      sub_1003A3390(v20, v13, v12);
      sub_1003A34D8(&v28);
      sub_1003A34D8(&v24);
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v14 & 0x100000000000000) != 0 || HIDWORD(v13) - v13 != HIDWORD(v22) - v22)
      {
        return 0;
      }

      if (v12 != v14 || WORD2(v12) != WORD2(v14) || BYTE6(v12) != BYTE6(v14) || v20 != v21)
      {
        swift_beginAccess();
        v17 = *(v20 + 24);
        swift_beginAccess();
        if (memcmp((v17 + (BYTE6(v12) | (WORD2(v12) << 8)) + v13), (*(v21 + 24) + (BYTE6(v14) | (WORD2(v14) << 8)) + v22), HIDWORD(v13) - v13))
        {
          return 0;
        }
      }
    }

    goto LABEL_36;
  }

LABEL_41:
  sub_1003A3378(v20, v13, v12);
  sub_1003A3378(v21, v22, v14);
  sub_1003A3390(v20, v13, v12);
  sub_1003A3390(v21, v22, v14);
  return 0;
}

uint64_t sub_10039B220(uint64_t a1, uint64_t a2)
{
  v113 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v128 = *(v113 - 8);
  v4 = *(v128 + 8);
  __chkstk_darwin(v113);
  v109 = &v101 - v5;
  v111 = sub_10000C9C0(&qword_1005DBC60, &qword_1004FE590);
  v6 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v114 = &v101 - v7;
  v8 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v110 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v115 = &v101 - v12;
  v117 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  v13 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v15 = &v101 - v14;
  v125 = type metadata accessor for ParameterValue();
  v16 = *(v125 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v125);
  v112 = (&v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v116 = &v101 - v20;
  __chkstk_darwin(v21);
  v119 = &v101 - v22;
  v23 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v101 - v25;
  v124 = sub_10000C9C0(&qword_1005DBC70, &unk_100505A20);
  v27 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v127 = &v101 - v28;
  v123 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v29 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v131 = (&v101 - v30);
  v130 = sub_10000C9C0(&qword_1005DBCC0, &qword_1004FE5D8);
  v31 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v33 = &v101 - v32;
  v129 = type metadata accessor for StoreModifier();
  v34 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v36 = (&v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  __chkstk_darwin(v38);
  v40 = &v101 - v39;
  __chkstk_darwin(v41);
  v45 = &v101 - v43;
  v46 = *(a1 + 16);
  if (v46 != *(a2 + 16))
  {
    return 0;
  }

  v126 = *(a1 + 16);
  if (!v46 || a1 == a2)
  {
    return 1;
  }

  v103 = v15;
  v108 = v44;
  v104 = v26;
  v47 = 0;
  v48 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v122 = a1 + v48;
  v120 = a2 + v48;
  v107 = (v16 + 48);
  v101 = (v128 + 48);
  v121 = *(v42 + 72);
  v128 = &v101 - v43;
  v49 = v126;
  v102 = v36;
  v106 = v33;
  v105 = v40;
  while (1)
  {
    v53 = v121 * v47;
    result = sub_1003A3594(v122 + v121 * v47, v45, type metadata accessor for StoreModifier);
    if (v47 == v49)
    {
      break;
    }

    sub_1003A3594(v120 + v53, v40, type metadata accessor for StoreModifier);
    v55 = *(v130 + 48);
    sub_1003A3594(v45, v33, type metadata accessor for StoreModifier);
    sub_1003A3594(v40, &v33[v55], type metadata accessor for StoreModifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v52 = v36;
      sub_1003A3594(v33, v36, type metadata accessor for StoreModifier);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1003A35FC(v40, type metadata accessor for StoreModifier);
        sub_1003A35FC(v128, type metadata accessor for StoreModifier);
        sub_100025F40(v36, &qword_1005DBCA8, &unk_100504BF0);
LABEL_45:
        sub_100025F40(v33, &qword_1005DBCC0, &qword_1004FE5D8);
        return 0;
      }

      v56 = v131;
      sub_100025FDC(&v33[v55], v131, &qword_1005DBCA8, &unk_100504BF0);
      if ((*v36 != *v56 || v36[1] != v56[1]) && (sub_1004A6D34() & 1) == 0)
      {
        sub_1003A35FC(v40, type metadata accessor for StoreModifier);
        sub_1003A35FC(v128, type metadata accessor for StoreModifier);
LABEL_55:
        sub_100025F40(v131, &qword_1005DBCA8, &unk_100504BF0);
        sub_100025F40(v52, &qword_1005DBCA8, &unk_100504BF0);
LABEL_56:
        sub_1003A35FC(v33, type metadata accessor for StoreModifier);
        return 0;
      }

      v118 = v47;
      v57 = *(v123 + 52);
      v58 = *(v124 + 48);
      v59 = v127;
      v60 = v36;
      sub_10000E268(v36 + v57, v127, &qword_1005D7F50, &unk_100502FF0);
      sub_10000E268(v131 + v57, v59 + v58, &qword_1005D7F50, &unk_100502FF0);
      v61 = *v107;
      v62 = v125;
      if ((*v107)(v59, 1, v125) == 1)
      {
        v50 = v105;
        sub_1003A35FC(v105, type metadata accessor for StoreModifier);
        sub_1003A35FC(v128, type metadata accessor for StoreModifier);
        v51 = v61(v59 + v58, 1, v62);
        v40 = v50;
        v33 = v106;
        v52 = v60;
        if (v51 != 1)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v63 = v104;
        sub_10000E268(v59, v104, &qword_1005D7F50, &unk_100502FF0);
        if (v61(v59 + v58, 1, v62) == 1)
        {
          sub_1003A35FC(v105, type metadata accessor for StoreModifier);
          sub_1003A35FC(v128, type metadata accessor for StoreModifier);
          sub_1003A35FC(v63, type metadata accessor for ParameterValue);
          v52 = v102;
          v33 = v106;
LABEL_48:
          v95 = &qword_1005DBC70;
          v96 = &unk_100505A20;
          goto LABEL_54;
        }

        v64 = v59 + v58;
        v65 = v119;
        sub_1003A352C(v64, v119, type metadata accessor for ParameterValue);
        v66 = *(v117 + 48);
        v67 = v63;
        v68 = v103;
        sub_1003A3594(v67, v103, type metadata accessor for ParameterValue);
        sub_1003A3594(v65, v68 + v66, type metadata accessor for ParameterValue);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v40 = v105;
        v33 = v106;
        if (EnumCaseMultiPayload == 1)
        {
          v70 = v112;
          sub_1003A3594(v68, v112, type metadata accessor for ParameterValue);
          v71 = *v70;
          v72 = swift_getEnumCaseMultiPayload();
          v52 = v102;
          if (v72 != 1)
          {

            sub_1003A35FC(v119, type metadata accessor for ParameterValue);
            sub_1003A35FC(v40, type metadata accessor for StoreModifier);
            sub_1003A35FC(v128, type metadata accessor for StoreModifier);
            goto LABEL_51;
          }

          v73 = *(v68 + v66);
          v74 = *(v71 + 16);
          if (v74 != *(v73 + 16))
          {
            goto LABEL_43;
          }

          if (v74 && v71 != v73)
          {
            v75 = (v71 + 40);
            v76 = (v73 + 40);
            while (1)
            {
              v77 = *(v75 - 1) == *(v76 - 1) && *v75 == *v76;
              if (!v77 && (sub_1004A6D34() & 1) == 0)
              {
                break;
              }

              v75 += 2;
              v76 += 2;
              if (!--v74)
              {
                goto LABEL_37;
              }
            }

LABEL_43:
            sub_1003A35FC(v119, type metadata accessor for ParameterValue);
            sub_1003A35FC(v40, type metadata accessor for StoreModifier);
            sub_1003A35FC(v128, type metadata accessor for StoreModifier);

            sub_1003A35FC(v103, type metadata accessor for ParameterValue);
LABEL_52:
            v97 = v104;
            v59 = v127;
LABEL_53:
            sub_1003A35FC(v97, type metadata accessor for ParameterValue);
            v95 = &qword_1005D7F50;
            v96 = &unk_100502FF0;
LABEL_54:
            sub_100025F40(v59, v95, v96);
            goto LABEL_55;
          }

LABEL_37:
          sub_1003A35FC(v119, type metadata accessor for ParameterValue);
          sub_1003A35FC(v40, type metadata accessor for StoreModifier);
          sub_1003A35FC(v128, type metadata accessor for StoreModifier);

          v91 = v103;
          v59 = v127;
        }

        else
        {
          v81 = v116;
          sub_1003A3594(v68, v116, type metadata accessor for ParameterValue);
          v82 = swift_getEnumCaseMultiPayload();
          v83 = v113;
          v84 = v114;
          v85 = v101;
          if (v82 == 1)
          {
            sub_1003A35FC(v119, type metadata accessor for ParameterValue);
            sub_1003A35FC(v40, type metadata accessor for StoreModifier);
            sub_1003A35FC(v128, type metadata accessor for StoreModifier);
            sub_100025F40(v81, &qword_1005CDA78, &unk_1004CF7E0);
            v52 = v102;
LABEL_51:
            sub_100025F40(v68, &qword_1005DBC68, &qword_1004FE598);
            goto LABEL_52;
          }

          v86 = v68 + v66;
          v87 = v115;
          sub_100025FDC(v86, v115, &qword_1005CDA78, &unk_1004CF7E0);
          v88 = *(v111 + 48);
          sub_10000E268(v81, v84, &qword_1005CDA78, &unk_1004CF7E0);
          sub_10000E268(v87, v84 + v88, &qword_1005CDA78, &unk_1004CF7E0);
          v89 = *v85;
          if ((*v85)(v84, 1, v83) == 1)
          {
            sub_100025F40(v87, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003A35FC(v119, type metadata accessor for ParameterValue);
            sub_1003A35FC(v40, type metadata accessor for StoreModifier);
            sub_1003A35FC(v128, type metadata accessor for StoreModifier);
            v77 = v89(v84 + v88, 1, v83) == 1;
            v90 = v84;
            v59 = v127;
            if (!v77)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v92 = v110;
            sub_10000E268(v84, v110, &qword_1005CDA78, &unk_1004CF7E0);
            if (v89(v84 + v88, 1, v83) == 1)
            {
              sub_100025F40(v115, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1003A35FC(v119, type metadata accessor for ParameterValue);
              sub_1003A35FC(v40, type metadata accessor for StoreModifier);
              sub_1003A35FC(v128, type metadata accessor for StoreModifier);
              sub_100025F40(v92, &qword_1005CDA68, &qword_1004CF7D0);
              v90 = v84;
              v59 = v127;
LABEL_59:
              v98 = &qword_1005DBC60;
              v99 = &qword_1004FE590;
              goto LABEL_61;
            }

            v93 = v109;
            sub_100025FDC(v84 + v88, v109, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100016D2C();
            v94 = sub_1004A7034();
            sub_100025F40(v93, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100025F40(v115, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003A35FC(v119, type metadata accessor for ParameterValue);
            sub_1003A35FC(v40, type metadata accessor for StoreModifier);
            sub_1003A35FC(v128, type metadata accessor for StoreModifier);
            sub_100025F40(v92, &qword_1005CDA68, &qword_1004CF7D0);
            v90 = v84;
            v59 = v127;
            if ((v94 & 1) == 0)
            {
              v98 = &qword_1005CDA78;
              v99 = &unk_1004CF7E0;
LABEL_61:
              sub_100025F40(v90, v98, v99);
              v100 = v103;
              sub_100025F40(v116, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1003A35FC(v100, type metadata accessor for ParameterValue);
              v97 = v104;
              v52 = v102;
              goto LABEL_53;
            }
          }

          sub_100025F40(v90, &qword_1005CDA78, &unk_1004CF7E0);
          sub_100025F40(v116, &qword_1005CDA78, &unk_1004CF7E0);
          v52 = v102;
          v91 = v103;
        }

        sub_1003A35FC(v91, type metadata accessor for ParameterValue);
        sub_1003A35FC(v104, type metadata accessor for ParameterValue);
        v49 = v126;
      }

      sub_100025F40(v59, &qword_1005D7F50, &unk_100502FF0);
      sub_100025F40(v131, &qword_1005DBCA8, &unk_100504BF0);
      v36 = v52;
      sub_100025F40(v52, &qword_1005DBCA8, &unk_100504BF0);
      v47 = v118;
    }

    else
    {
      sub_1003A35FC(v40, type metadata accessor for StoreModifier);
      sub_1003A35FC(v45, type metadata accessor for StoreModifier);
      v78 = v108;
      sub_1003A3594(v33, v108, type metadata accessor for StoreModifier);
      v79 = *v78;
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        goto LABEL_45;
      }

      v80 = *&v33[v55];
      v49 = v126;
      if ((v80 | v79) < 0)
      {
        goto LABEL_63;
      }

      if (v80 != v79)
      {
        goto LABEL_56;
      }
    }

    ++v47;
    sub_1003A35FC(v33, type metadata accessor for StoreModifier);
    v45 = v128;
    if (v47 == v49)
    {
      return 1;
    }
  }

  __break(1u);
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10039C32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1004A6D34();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10039C440(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v31 = v2;
  v32 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = v5[1];
    v27 = *v5;
    v28[0] = v8;
    *&v28[1] = *(v5 + 4);
    v9 = v27;
    v10 = DWORD2(v27);
    v11 = HIDWORD(v27);
    v12 = v8;
    v13 = WORD2(v8);
    v14 = BYTE6(v8);
    v15 = v6[1];
    v29 = *v6;
    *v30 = v15;
    *&v30[16] = *(v6 + 4);
    v16 = DWORD2(v29);
    if (HIDWORD(v27) - DWORD2(v27) != HIDWORD(v29) - DWORD2(v29))
    {
      break;
    }

    v24 = v5;
    v25 = v7;
    v17 = v29;
    v18 = *&v30[4];
    v19 = v30[6];
    if (v12 == *v30 && v13 == *&v30[4] && v14 == v30[6] && v27 == v29)
    {
      sub_1003A365C(&v27, v26);
      sub_1003A365C(&v29, v26);
    }

    else
    {
      swift_beginAccess();
      v20 = *(v9 + 24);
      swift_beginAccess();
      v21 = *(v17 + 24);
      sub_1003A365C(&v27, v26);
      sub_1003A365C(&v29, v26);
      if (memcmp((v20 + (v14 | (v13 << 8)) + v10), (v21 + (v19 | (v18 << 8)) + v16), v11 - v10))
      {
        sub_1003A36B8(&v29);
        sub_1003A36B8(&v27);
        return 0;
      }
    }

    if (*(v28 + 8) == *&v30[8])
    {
      sub_1003A36B8(&v29);
      sub_1003A36B8(&v27);
    }

    else
    {
      v22 = sub_1004A6D34();
      sub_1003A36B8(&v29);
      sub_1003A36B8(&v27);
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    if (!v25)
    {
      return 1;
    }

    v7 = v25 - 1;
    v6 = (v6 + 40);
    v5 = (v24 + 40);
  }

  return 0;
}

uint64_t sub_10039C650(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v11 = *(v4 - 2);
      v10 = *(v4 - 1);
      v12 = *v4 | ((*(v4 + 2) | (*(v4 + 6) << 16)) << 32);
      v13 = *v3 | ((*(v3 + 2) | (*(v3 + 6) << 16)) << 32);
      v15 = *(v3 - 2);
      v14 = *(v3 - 1);
      v16 = BYTE6(v12);
      if (v11 < 0)
      {
        if ((v15 & 0x8000000000000000) == 0 || HIDWORD(v10) - v10 != HIDWORD(v14) - v14)
        {
          return 0;
        }

        v21 = v11 & 0x7FFFFFFFFFFFFFFFLL;
        v22 = v15 & 0x7FFFFFFFFFFFFFFFLL;
        v23 = BYTE6(v13);
        *(v3 + 2);
        *(v3 + 6);
        *(v4 + 2);
        *(v4 + 6);
        if (*v4 != *v3 || ((*(v4 + 6), *(v3 + 6), *(v4 + 2) == *(v3 + 2)) ? (v24 = BYTE6(v12) == BYTE6(v13)) : (v24 = 0), v24 ? (v25 = v21 == v22) : (v25 = 0), !v25))
        {
          v26 = v10;
          v31 = HIDWORD(v13) & 0xFFFFFF;
          v33 = HIDWORD(v10);
          *(v4 + 6);
          v27 = *(v4 + 2);
          swift_beginAccess();
          v28 = *(v21 + 24) + v26;
          v7 = v33 - v26;
          swift_beginAccess();
          v8 = (*(v22 + 24) + (v23 & 0xFFFFFFFFFF0000FFLL | (v31 << 8)) + v14);
          v9 = (v28 + (v16 & 0xFFFFFFFFFF0000FFLL | (v27 << 8)));
LABEL_6:
          if (memcmp(v9, v8, v7))
          {
            return 0;
          }
        }
      }

      else
      {
        if (v15 < 0 || HIDWORD(v10) - v10 != HIDWORD(v14) - v14)
        {
          return 0;
        }

        v17 = HIDWORD(v13) & 0xFFFFFF;
        v18 = BYTE6(v13);
        *(v3 + 2);
        *(v3 + 6);
        *(v4 + 2);
        *(v4 + 6);
        if (*v4 != *v3 || ((*(v4 + 6), *(v3 + 6), *(v4 + 2) == *(v3 + 2)) ? (v19 = BYTE6(v12) == BYTE6(v13)) : (v19 = 0), v19 ? (v20 = v11 == v15) : (v20 = 0), !v20))
        {
          v5 = v10;
          v30 = HIDWORD(v12) & 0xFFFFFF;
          v32 = HIDWORD(v10);
          swift_beginAccess();
          v6 = *(v11 + 24) + v5;
          v7 = v32 - v5;
          swift_beginAccess();
          v8 = (*(v15 + 24) + (v18 & 0xFFFFFFFFFF0000FFLL | (v17 << 8)) + v14);
          v9 = (v6 + (v16 & 0xFFFFFFFFFF0000FFLL | (v30 << 8)));
          goto LABEL_6;
        }
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10039C870(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = *(v1 + 16);
  if (v3 != *(v2 + 16))
  {
    return 0;
  }

  if (!v3 || v1 == v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = v1 + 32;
  v6 = v2 + 32;
  v264 = *(v1 + 16);
  v265 = v2 + 32;
  v266 = v1 + 32;
  while (1)
  {
    v267 = v4;
    v7 = 184 * v4;
    v8 = v5 + v7;
    v9 = *(v5 + v7 + 144);
    v10 = *(v5 + v7 + 112);
    v387 = *(v5 + v7 + 128);
    v388 = v9;
    v11 = *(v5 + v7 + 144);
    v389 = *(v5 + v7 + 160);
    v12 = *(v5 + v7 + 80);
    v13 = *(v5 + v7 + 48);
    v383 = *(v5 + v7 + 64);
    v384 = v12;
    v14 = *(v5 + v7 + 80);
    v15 = *(v5 + v7 + 112);
    v385 = *(v5 + v7 + 96);
    v386 = v15;
    v16 = *(v5 + v7 + 16);
    v380[0] = *(v5 + v7);
    v380[1] = v16;
    v17 = *(v5 + v7 + 48);
    v19 = *(v5 + v7);
    v18 = *(v5 + v7 + 16);
    v381 = *(v5 + v7 + 32);
    v382 = v17;
    v20 = (v6 + v7);
    v21 = v20[9];
    v399 = v20[8];
    v400 = v21;
    v401 = v20[10];
    v22 = v20[5];
    v395 = v20[4];
    v396 = v22;
    v23 = v20[7];
    v397 = v20[6];
    v398 = v23;
    v24 = v20[1];
    v391 = *v20;
    v392 = v24;
    v25 = v20[3];
    v393 = v20[2];
    v394 = v25;
    v403[8] = v387;
    v403[9] = v11;
    v403[10] = *(v8 + 160);
    v403[4] = v383;
    v403[5] = v14;
    v403[6] = v385;
    v403[7] = v10;
    v403[0] = v19;
    v403[1] = v18;
    v390 = *(v8 + 176);
    v402 = *(v20 + 176);
    v404 = *(v8 + 176);
    v403[2] = v381;
    v403[3] = v13;
    if (sub_10000FE88(v403) == 1)
    {
      v26 = UInt32.init(_:)(v403);
      *&v358[128] = v399;
      *&v358[144] = v400;
      *&v358[160] = v401;
      v358[176] = v402;
      *&v358[64] = v395;
      *&v358[80] = v396;
      *&v358[96] = v397;
      *&v358[112] = v398;
      *v358 = v391;
      *&v358[16] = v392;
      *&v358[32] = v393;
      *&v358[48] = v394;
      if (sub_10000FE88(v358) != 1)
      {
        UInt32.init(_:)(v358);
        return 0;
      }

      v27 = UInt32.init(_:)(v358);
      v28 = *v26;
      v29 = *v27;
      sub_1000510B4(&v391, __dst);
      sub_1000510B4(v380, __dst);
      if ((sub_10039C870(v28, v29) & 1) == 0 || (v26[1] != v27[1] || v26[2] != v27[2]) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_230;
      }

      v30 = v26[3];
      v31 = v26[4];
      v32 = v26 + 3;
      v35 = v27[3];
      v34 = (v27 + 3);
      v33 = v35;
      v36 = v32[2];
      v37 = v32[4];
      v38 = v32[5];
      v336 = v32[3];
      v337 = v37;
      v338 = v38;
      v39 = v32[1];
      v335 = v36;
      v334 = v39;
      v40 = *(v34 + 8);
      v41 = *(v34 + 16);
      v42 = *(v34 + 32);
      v43 = *(v34 + 48);
      v44 = *(v34 + 64);
      v326 = *(v34 + 80);
      v325 = v44;
      v324 = v43;
      v322 = v41;
      v323 = v42;
      if (v31)
      {
        v45 = v32[2];
        v46 = v32[4];
        v47 = v32[5];
        v304 = v32[3];
        v305 = v46;
        v306 = v47;
        v302 = v32[1];
        v303 = v45;
        if (!v40)
        {
          goto LABEL_214;
        }

        *&v360 = v33;
        *(&v360 + 1) = v40;
        v361 = v322;
        v362 = v323;
        v363 = v324;
        v364 = v325;
        v365 = v326;
        v372 = v360;
        *v373 = v322;
        *&v373[64] = v326;
        *&v373[48] = v325;
        *&v373[32] = v324;
        *&v373[16] = v323;
        *&v314 = v30;
        *(&v314 + 1) = v31;
        *&v315[48] = v305;
        *&v315[64] = v306;
        *&v315[16] = v303;
        *&v315[32] = v304;
        *v315 = v302;
        v48 = *(v31 + 16);
        if (v48 != *(v40 + 16))
        {
          goto LABEL_208;
        }

        v49 = *v315;
        v50 = *v373;
        if (v48 && v40 != v31)
        {
          v51 = (v31 + 40);
          v52 = (v40 + 40);
          while (1)
          {
            v53 = *(v51 - 1) == *(v52 - 1) && *v51 == *v52;
            if (!v53 && (sub_1004A6D34() & 1) == 0)
            {
              break;
            }

            v51 += 2;
            v52 += 2;
            if (!--v48)
            {
              goto LABEL_41;
            }
          }

LABEL_208:
          sub_10000E268(v32, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(v34, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
LABEL_209:
          sub_100025F40(&v360, &qword_1005DBCC8, &qword_1004FE5E0);
LABEL_210:
          *__dst = v30;
          *&__dst[8] = v31;
          *&__dst[48] = v336;
          *&__dst[64] = v337;
          *&__dst[80] = v338;
          *&__dst[16] = v334;
          *&__dst[32] = v335;
          v236 = &qword_1005DBCC8;
          v237 = &qword_1004FE5E0;
LABEL_211:
          sub_100025F40(__dst, v236, v237);
          goto LABEL_230;
        }

LABEL_41:
        v3 = v264;
        if ((sub_10020FB40(v49, v50) & 1) == 0)
        {
          goto LABEL_208;
        }

        v95 = *&v315[8];
        v96 = *&v315[16];
        v274 = *&v315[24];
        v275 = *&v315[40];
        v276 = *&v315[56];
        *&v277 = *&v315[72];
        if (*&v315[16] == 1)
        {
          if (*&v373[16] != 1)
          {
            goto LABEL_216;
          }

          *&v346 = *&v315[8];
          *(&v346 + 1) = 1;
          v347 = *&v315[24];
          v348 = *&v315[40];
          v349 = *&v315[56];
          *&v350 = *&v315[72];
          sub_10000E268(v32, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(v34, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(&v315[8], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_10000E268(&v373[8], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_100025F40(&v346, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_100025F40(&v360, &qword_1005DBCC8, &qword_1004FE5E0);
        }

        else
        {
          if (*&v373[16] == 1)
          {
LABEL_216:
            *__dst = *&v315[8];
            *&__dst[16] = *&v315[24];
            *&__dst[32] = *&v315[40];
            *&__dst[48] = *&v315[56];
            *&__dst[64] = *&v315[72];
            *&__dst[72] = *&v373[8];
            *&__dst[88] = *&v373[24];
            *&__dst[104] = *&v373[40];
            *&__dst[120] = *&v373[56];
            *&__dst[136] = *&v373[72];
            sub_10000E268(v32, &v346, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_10000E268(v34, &v346, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_10000E268(&v315[8], &v346, &qword_1005DBCD8, &qword_1004FE5F0);
            sub_10000E268(&v373[8], &v346, &qword_1005DBCD8, &qword_1004FE5F0);
            sub_100025F40(__dst, &qword_1005DBCE0, &qword_1004FE5F8);
            goto LABEL_209;
          }

          v290 = *&v373[8];
          v291 = *&v373[24];
          v292 = *&v373[40];
          v293 = *&v373[56];
          *&v294 = *&v373[72];
          v447 = *&v373[72];
          v446[2] = *&v373[40];
          v446[3] = *&v373[56];
          v446[0] = *&v373[8];
          v446[1] = *&v373[24];
          v445 = *&v315[72];
          v443 = *&v315[40];
          v444 = *&v315[56];
          v442 = *&v315[24];
          v441[0] = *&v315[8];
          v441[1] = *&v315[16];
          sub_10000E268(v32, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(v34, __dst, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(&v315[8], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_10000E268(&v373[8], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
          v105 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v441, v446);
          sub_100025F40(&v290, &qword_1005DBCD8, &qword_1004FE5F0);
          *&v346 = v95;
          *(&v346 + 1) = v96;
          v347 = v274;
          v348 = v275;
          v349 = v276;
          *&v350 = v277;
          sub_100025F40(&v346, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_100025F40(&v360, &qword_1005DBCC8, &qword_1004FE5E0);
          if (!v105)
          {
            goto LABEL_210;
          }
        }

        *__dst = v30;
        *&__dst[8] = v31;
        *&__dst[48] = v336;
        *&__dst[64] = v337;
        *&__dst[80] = v338;
        *&__dst[16] = v334;
        *&__dst[32] = v335;
      }

      else
      {
        if (v40)
        {
LABEL_214:
          *__dst = v30;
          *&__dst[8] = v31;
          *&__dst[48] = v336;
          *&__dst[64] = v337;
          *&__dst[80] = v338;
          *&__dst[16] = v334;
          *&__dst[32] = v335;
          *&__dst[96] = v33;
          *&__dst[104] = v40;
          *&__dst[160] = v325;
          *&__dst[176] = v326;
          *&__dst[128] = v323;
          *&__dst[144] = v324;
          *&__dst[112] = v322;
          sub_10000E268(v32, &v314, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(v34, &v314, &qword_1005DBCC8, &qword_1004FE5E0);
          v236 = &qword_1005DBCD0;
          v237 = &qword_1004FE5E8;
          goto LABEL_211;
        }

        *__dst = v30;
        *&__dst[48] = v336;
        *&__dst[64] = v337;
        *&__dst[80] = v338;
        *&__dst[16] = v334;
        *&__dst[32] = v335;
        sub_10000E268(v32, &v314, &qword_1005DBCC8, &qword_1004FE5E0);
        sub_10000E268(v34, &v314, &qword_1005DBCC8, &qword_1004FE5E0);
      }

      sub_100025F40(__dst, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_100051110(&v391);
      sub_100051110(v380);
      goto LABEL_203;
    }

    v54 = UInt32.init(_:)(v403);
    v376 = v399;
    v377 = v400;
    v378 = v401;
    v379 = v402;
    *&v373[48] = v395;
    *&v373[64] = v396;
    v374 = v397;
    v375 = v398;
    v372 = v391;
    *v373 = v392;
    *&v373[16] = v393;
    *&v373[32] = v394;
    if (sub_10000FE88(&v372) == 1)
    {
      UInt32.init(_:)(&v372);
      return 0;
    }

    v55 = UInt32.init(_:)(&v372);
    v56 = v55;
    v57 = *v54;
    v58 = *v55;
    v59 = *v54 >> 62;
    v262 = v54;
    v60 = *v55 >> 62;
    if (!v59)
    {
      if (v60)
      {
        return 0;
      }

      v97 = v55;
      v98 = *(v57 + 32);
      v99 = *(v57 + 40);
      v100 = *(v58 + 32);
      v101 = *(v58 + 40);
      if ((*(v57 + 16) != *(v58 + 16) || *(v57 + 24) != *(v58 + 24)) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      if ((v98 != v100 || v99 != v101) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      sub_1000510B4(&v391, __dst);
      sub_1000510B4(v380, __dst);
      v56 = v97;
      goto LABEL_142;
    }

    if (v59 == 1)
    {
      break;
    }

    if (v60 != 2)
    {
      return 0;
    }

    v102 = *((v57 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v103 = (v58 & 0x3FFFFFFFFFFFFFFFLL);
    v104 = v103[4];
    if ((*((v57 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != v103[2] || *((v57 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != v103[3]) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }

    if (v102 != v104)
    {
      return 0;
    }

    sub_1000510B4(&v391, __dst);
    sub_1000510B4(v380, __dst);
LABEL_142:
    v194 = v54[2];
    v195 = v56[2];
    v196 = *(v194 + 16);
    if (v196 != *(v195 + 16))
    {
      goto LABEL_230;
    }

    v197 = v54[3];
    v198 = v54[5];
    v249 = v54[6];
    v199 = v54[7];
    v245 = v54[8];
    v259 = v54[9];
    v257 = v54[10];
    v200 = v56[3];
    v251 = v56[4];
    v253 = v54[4];
    v201 = v56[5];
    v247 = v56[6];
    v202 = v56[7];
    v243 = v56[8];
    v261 = v56[9];
    v203 = v56;
    v255 = v56[10];
    if (v196 && v194 != v195)
    {
      v204 = (v194 + 40);
      v205 = (v195 + 40);
      do
      {
        v206 = *(v204 - 1) == *(v205 - 1) && *v204 == *v205;
        if (!v206 && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_230;
        }

        v204 += 2;
        v205 += 2;
      }

      while (--v196);
    }

    v207 = *(v197 + 16);
    if (v207 != *(v200 + 16))
    {
      goto LABEL_230;
    }

    if (v207 && v197 != v200)
    {
      v208 = (v197 + 40);
      v209 = (v200 + 40);
      do
      {
        v210 = *(v208 - 1) == *(v209 - 1) && *v208 == *v209;
        if (!v210 && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_230;
        }

        v208 += 2;
        v209 += 2;
      }

      while (--v207);
    }

    if (v198)
    {
      if (!v201)
      {
        goto LABEL_230;
      }

      v211 = v203;
      if ((v253 != v251 || v198 != v201) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else
    {
      v211 = v203;
      if (v201)
      {
        goto LABEL_230;
      }
    }

    if (v199)
    {
      if (!v202 || (v249 != v247 || v199 != v202) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (v202)
    {
      goto LABEL_230;
    }

    if (v259)
    {
      v212 = v262;
      if (!v261 || (v245 != v243 || v259 != v261) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else
    {
      v212 = v262;
      if (v261)
      {
        goto LABEL_230;
      }
    }

    if (v257 != v255)
    {
      goto LABEL_230;
    }

    v213 = v212[11];
    v215 = v212[12];
    v214 = (v212 + 11);
    v216 = *(v214 + 64);
    v336 = *(v214 + 48);
    v337 = v216;
    *&v338 = *(v214 + 80);
    v217 = *(v214 + 16);
    v335 = *(v214 + 32);
    v334 = v217;
    v218 = v211[11];
    v219 = v211[12];
    v220 = (v211 + 11);
    v221 = *(v220 + 16);
    v222 = *(v220 + 32);
    v223 = *(v220 + 48);
    v224 = *(v220 + 64);
    *&v326 = *(v220 + 80);
    v325 = v224;
    v324 = v223;
    v322 = v221;
    v323 = v222;
    if (v215 != 1)
    {
      if (v219 == 1)
      {
LABEL_215:
        *__dst = v213;
        *&__dst[8] = v215;
        *&__dst[48] = v336;
        *&__dst[64] = v337;
        *&__dst[16] = v334;
        *&__dst[32] = v335;
        *&__dst[80] = v338;
        *&__dst[88] = v218;
        *&__dst[104] = v322;
        *&__dst[96] = v219;
        *&__dst[168] = v326;
        *&__dst[152] = v325;
        *&__dst[136] = v324;
        *&__dst[120] = v323;
        sub_10000E268(v214, v358, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v220, v358, &qword_1005DBCE8, &qword_1004FE600);
        v236 = &qword_1005DBCF0;
        v237 = &qword_1004FE608;
        goto LABEL_211;
      }

      *&v360 = v218;
      *(&v360 + 1) = v219;
      v227 = *(v220 + 32);
      v361 = *(v220 + 16);
      v362 = v227;
      v228 = *(v220 + 64);
      v363 = *(v220 + 48);
      v364 = v228;
      *&v365 = *(v220 + 80);
      v314 = v360;
      *v315 = v361;
      *&v315[64] = v365;
      *&v315[48] = v228;
      *&v315[16] = v362;
      *&v315[32] = v363;
      *v358 = v213;
      *&v358[8] = v215;
      v229 = *(v214 + 16);
      v230 = *(v214 + 32);
      v231 = *(v214 + 48);
      v232 = *(v214 + 64);
      *&v358[80] = *(v214 + 80);
      *&v358[48] = v231;
      *&v358[64] = v232;
      *&v358[16] = v229;
      *&v358[32] = v230;
      if (v215)
      {
        if (!v219 || (v213 != v314 || v215 != v219) && (sub_1004A6D34() & 1) == 0)
        {
LABEL_217:
          sub_10000E268(v214, __dst, &qword_1005DBCE8, &qword_1004FE600);
          sub_10000E268(v220, __dst, &qword_1005DBCE8, &qword_1004FE600);
          v238 = &v360;
          goto LABEL_219;
        }
      }

      else if (v219)
      {
        goto LABEL_217;
      }

      v233 = *&v358[24];
      v290 = *&v358[32];
      v291 = *&v358[48];
      v292 = *&v358[64];
      *&v293 = *&v358[80];
      if (*&v358[24] == 1)
      {
        if (*&v315[8] != 1)
        {
          goto LABEL_218;
        }

        *&v346 = *&v358[16];
        *(&v346 + 1) = 1;
        v347 = *&v358[32];
        v348 = *&v358[48];
        v349 = *&v358[64];
        *&v350 = *&v358[80];
        sub_10000E268(v214, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v220, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v214, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v220, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(&v358[16], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_10000E268(v315, __dst, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_100025F40(&v346, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_100025F40(&v360, &qword_1005DBCE8, &qword_1004FE600);
        sub_100025F40(v220, &qword_1005DBCE8, &qword_1004FE600);
        sub_100025F40(v214, &qword_1005DBCE8, &qword_1004FE600);
      }

      else
      {
        if (*&v315[8] == 1)
        {
LABEL_218:
          *&__dst[16] = *&v358[32];
          *&__dst[32] = *&v358[48];
          *&__dst[48] = *&v358[64];
          *&__dst[88] = *&v315[16];
          *__dst = *&v358[16];
          *&__dst[64] = *&v358[80];
          *&__dst[72] = *v315;
          *&__dst[104] = *&v315[32];
          *&__dst[120] = *&v315[48];
          *&__dst[136] = *&v315[64];
          sub_10000E268(v214, &v346, &qword_1005DBCE8, &qword_1004FE600);
          sub_10000E268(v220, &v346, &qword_1005DBCE8, &qword_1004FE600);
          sub_10000E268(v214, &v346, &qword_1005DBCE8, &qword_1004FE600);
          sub_10000E268(v220, &v346, &qword_1005DBCE8, &qword_1004FE600);
          sub_10000E268(&v358[16], &v346, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_10000E268(v315, &v346, &qword_1005DBCD8, &qword_1004FE5F0);
          sub_100025F40(__dst, &qword_1005DBCE0, &qword_1004FE5F8);
          sub_100025F40(&v360, &qword_1005DBCE8, &qword_1004FE600);
          sub_100025F40(v220, &qword_1005DBCE8, &qword_1004FE600);
          v238 = v214;
LABEL_219:
          sub_100025F40(v238, &qword_1005DBCE8, &qword_1004FE600);
LABEL_220:
          *__dst = v213;
          *&__dst[8] = v215;
          *&__dst[48] = v336;
          *&__dst[64] = v337;
          *&__dst[80] = v338;
          *&__dst[16] = v334;
          *&__dst[32] = v335;
          v236 = &qword_1005DBCE8;
          v237 = &qword_1004FE600;
          goto LABEL_211;
        }

        v302 = *v315;
        v303 = *&v315[16];
        v304 = *&v315[32];
        v305 = *&v315[48];
        *&v306 = *&v315[64];
        v408 = *&v315[64];
        v407[3] = *&v315[48];
        v407[2] = *&v315[32];
        v407[0] = *v315;
        v407[1] = *&v315[16];
        v406 = *&v358[80];
        v405[2] = *&v358[48];
        v405[3] = *&v358[64];
        v405[1] = *&v358[32];
        v405[0] = *&v358[16];
        v263 = *&v358[16];
        sub_10000E268(v214, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v220, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v214, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v220, __dst, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(&v358[16], __dst, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_10000E268(v315, __dst, &qword_1005DBCD8, &qword_1004FE5F0);
        v234 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v405, v407);
        sub_100025F40(&v302, &qword_1005DBCD8, &qword_1004FE5F0);
        *&v346 = v263;
        *(&v346 + 1) = v233;
        v347 = v290;
        v348 = v291;
        v349 = v292;
        *&v350 = v293;
        sub_100025F40(&v346, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_100025F40(&v360, &qword_1005DBCE8, &qword_1004FE600);
        sub_100025F40(v220, &qword_1005DBCE8, &qword_1004FE600);
        sub_100025F40(v214, &qword_1005DBCE8, &qword_1004FE600);
        if (!v234)
        {
          goto LABEL_220;
        }
      }

      *__dst = v213;
      *&__dst[8] = v215;
      *&__dst[48] = v336;
      *&__dst[64] = v337;
      *&__dst[80] = v338;
      *&__dst[16] = v334;
      *&__dst[32] = v335;
      sub_100025F40(__dst, &qword_1005DBCE8, &qword_1004FE600);
      sub_100051110(&v391);
      sub_100051110(v380);
      v3 = v264;
      goto LABEL_203;
    }

    if (v219 != 1)
    {
      goto LABEL_215;
    }

    *__dst = v213;
    *&__dst[8] = 1;
    v225 = *(v214 + 64);
    *&__dst[48] = *(v214 + 48);
    *&__dst[64] = v225;
    *&__dst[80] = *(v214 + 80);
    v226 = *(v214 + 32);
    *&__dst[16] = *(v214 + 16);
    *&__dst[32] = v226;
    sub_10000E268(v214, v358, &qword_1005DBCE8, &qword_1004FE600);
    sub_10000E268(v220, v358, &qword_1005DBCE8, &qword_1004FE600);
    sub_100025F40(__dst, &qword_1005DBCE8, &qword_1004FE600);
    sub_100051110(&v391);
    sub_100051110(v380);
    v3 = v264;
LABEL_203:
    v5 = v266;
    v4 = v267 + 1;
    v6 = v265;
    if (v267 + 1 == v3)
    {
      return 1;
    }
  }

  v61 = v57 & 0x3FFFFFFFFFFFFFFFLL;
  v62 = *(v61 + 16);
  v63 = *(v61 + 24);
  v64 = *(v61 + 112);
  v437[4] = *(v61 + 96);
  v437[5] = v64;
  v437[6] = *(v61 + 128);
  v65 = *(v61 + 144);
  v66 = *(v61 + 48);
  v437[0] = *(v61 + 32);
  v437[1] = v66;
  v67 = *(v61 + 80);
  v437[2] = *(v61 + 64);
  v437[3] = v67;
  v68 = *(v61 + 184);
  v363 = *(v61 + 200);
  v362 = v68;
  v69 = *(v61 + 152);
  v361 = *(v61 + 168);
  v360 = v69;
  v70 = *(v61 + 248);
  v71 = *(v61 + 280);
  v367 = *(v61 + 264);
  v366 = v70;
  v72 = *(v61 + 216);
  v365 = *(v61 + 232);
  v364 = v72;
  v73 = *(v61 + 296);
  v370 = *(v61 + 312);
  v438 = v65;
  v371 = *(v61 + 328);
  v369 = v73;
  v368 = v71;
  if (v60 != 1)
  {
    return 0;
  }

  v74 = *(v61 + 336);
  memcpy(__dst, ((v58 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
  if (__PAIR128__(v63, v62) != *__dst && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v439[4] = *&__dst[80];
  v439[5] = *&__dst[96];
  v439[6] = *&__dst[112];
  v440 = *&__dst[128];
  v439[0] = *&__dst[16];
  v439[1] = *&__dst[32];
  v439[2] = *&__dst[48];
  v439[3] = *&__dst[64];
  sub_1000510B4(&v391, v358);
  sub_1000510B4(v380, v358);
  sub_100259990(__dst, v358);
  if (!_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v437, v439))
  {
    goto LABEL_229;
  }

  v354 = v368;
  v355 = v369;
  v356 = v370;
  v357 = v371;
  v350 = v364;
  v351 = v365;
  v352 = v366;
  v353 = v367;
  v346 = v360;
  v347 = v361;
  v348 = v362;
  v349 = v363;
  v241 = v56;
  if (sub_10000FE88(&v346) == 1)
  {
    v75 = UInt32.init(_:)(&v346);
    v318 = *&__dst[264];
    v319 = *&__dst[280];
    v320 = *&__dst[296];
    LOBYTE(v321) = __dst[312];
    *&v315[48] = *&__dst[200];
    *&v315[64] = *&__dst[216];
    v316 = *&__dst[232];
    v317 = *&__dst[248];
    v314 = *&__dst[136];
    *v315 = *&__dst[152];
    *&v315[16] = *&__dst[168];
    *&v315[32] = *&__dst[184];
    if (sub_10000FE88(&v314) != 1)
    {
      UInt32.init(_:)(&v314);
      goto LABEL_229;
    }

    v76 = UInt32.init(_:)(&v314);
    if ((sub_10039C870(*v75, *v76) & 1) == 0 || (v75[1] != v76[1] || v75[2] != v76[2]) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_229;
    }

    v77 = v75[3];
    v79 = v75[4];
    v78 = v75 + 3;
    v82 = v76[3];
    v81 = (v76 + 3);
    v80 = v82;
    v83 = v78[2];
    v84 = v78[4];
    v85 = v78[5];
    v304 = v78[3];
    v305 = v84;
    v306 = v85;
    v302 = v78[1];
    v303 = v83;
    v86 = *(v81 + 8);
    v87 = *(v81 + 16);
    v88 = *(v81 + 32);
    v89 = *(v81 + 48);
    v90 = *(v81 + 80);
    v293 = *(v81 + 64);
    v294 = v90;
    v291 = v88;
    v292 = v89;
    v290 = v87;
    if (v79)
    {
      v91 = v78[2];
      v92 = v78[4];
      v93 = v78[5];
      v276 = v78[3];
      v277 = v92;
      v278 = v93;
      v274 = v78[1];
      v275 = v91;
      if (!v86)
      {
        goto LABEL_223;
      }

      *&v334 = v80;
      *(&v334 + 1) = v86;
      v337 = v292;
      v338 = v293;
      v335 = v290;
      v336 = v291;
      v339 = v294;
      v436[1] = v290;
      v436[0] = v334;
      v436[5] = v294;
      v436[4] = v293;
      v436[3] = v292;
      v436[2] = v291;
      v434 = v277;
      v435 = v278;
      v432 = v275;
      v433 = v276;
      v431 = v274;
      v430[0] = v77;
      v430[1] = v79;
      sub_10000E268(v78, &v322, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_10000E268(v81, &v322, &qword_1005DBCC8, &qword_1004FE5E0);
      v94 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v430, v436);
      sub_100025F40(&v334, &qword_1005DBCC8, &qword_1004FE5E0);
      *v358 = v77;
      *&v358[8] = v79;
      *&v358[48] = v304;
      *&v358[64] = v305;
      *&v358[80] = v306;
      *&v358[16] = v302;
      *&v358[32] = v303;
      sub_100025F40(v358, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_1002599EC(__dst);
      if (!v94)
      {
        goto LABEL_230;
      }
    }

    else
    {
      if (v86)
      {
LABEL_223:
        *v358 = v77;
        *&v358[8] = v79;
        *&v358[48] = v304;
        *&v358[64] = v305;
        *&v358[80] = v306;
        *&v358[32] = v303;
        *&v358[16] = v302;
        *&v358[96] = v80;
        *&v358[104] = v86;
        *&v358[176] = v294;
        *&v358[160] = v293;
        *&v358[144] = v292;
        *&v358[112] = v290;
        *&v358[128] = v291;
        sub_10000E268(v78, &v334, &qword_1005DBCC8, &qword_1004FE5E0);
        sub_10000E268(v81, &v334, &qword_1005DBCC8, &qword_1004FE5E0);
        sub_100025F40(v358, &qword_1005DBCD0, &qword_1004FE5E8);
        goto LABEL_229;
      }

      *v358 = v77;
      *&v358[48] = v304;
      *&v358[64] = v305;
      *&v358[80] = v306;
      *&v358[16] = v302;
      *&v358[32] = v303;
      sub_10000E268(v78, &v334, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_10000E268(v81, &v334, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_100025F40(v358, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_1002599EC(__dst);
    }

LABEL_141:
    v56 = v241;
    if (v74 != *&__dst[320])
    {
      goto LABEL_230;
    }

    goto LABEL_142;
  }

  v254 = v74;
  v106 = UInt32.init(_:)(&v346);
  v342 = *&__dst[264];
  v343 = *&__dst[280];
  v344 = *&__dst[296];
  v345 = __dst[312];
  v338 = *&__dst[200];
  v339 = *&__dst[216];
  v340 = *&__dst[232];
  v341 = *&__dst[248];
  v334 = *&__dst[136];
  v335 = *&__dst[152];
  v336 = *&__dst[168];
  v337 = *&__dst[184];
  if (sub_10000FE88(&v334) == 1)
  {
    UInt32.init(_:)(&v334);
    goto LABEL_229;
  }

  v107 = UInt32.init(_:)(&v334);
  v108 = *v106;
  v109 = *v107;
  v110 = *v106 >> 62;
  if (v110)
  {
    if (v110 == 1)
    {
      v111 = v108 & 0x3FFFFFFFFFFFFFFFLL;
      v112 = *(v111 + 16);
      v113 = *(v111 + 24);
      v114 = *(v111 + 112);
      v426[4] = *(v111 + 96);
      v426[5] = v114;
      v426[6] = *(v111 + 128);
      v115 = *(v111 + 144);
      v116 = *(v111 + 48);
      v426[0] = *(v111 + 32);
      v426[1] = v116;
      v117 = *(v111 + 80);
      v426[2] = *(v111 + 64);
      v426[3] = v117;
      v118 = *(v111 + 184);
      v325 = *(v111 + 200);
      v324 = v118;
      v119 = *(v111 + 152);
      v323 = *(v111 + 168);
      v322 = v119;
      v120 = *(v111 + 248);
      v121 = *(v111 + 280);
      v329 = *(v111 + 264);
      v328 = v120;
      v122 = *(v111 + 216);
      v327 = *(v111 + 232);
      v326 = v122;
      v123 = *(v111 + 296);
      v332 = *(v111 + 312);
      v427 = v115;
      v333 = *(v111 + 328);
      v331 = v123;
      v330 = v121;
      if (v109 >> 62 != 1)
      {
        goto LABEL_229;
      }

      v124 = *(v111 + 336);
      memcpy(v358, ((v109 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(v358));
      if (__PAIR128__(v113, v112) != *v358 && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_229;
      }

      v428[4] = *&v358[80];
      v428[5] = *&v358[96];
      v428[6] = *&v358[112];
      v429 = *&v358[128];
      v428[0] = *&v358[16];
      v428[1] = *&v358[32];
      v428[2] = *&v358[48];
      v428[3] = *&v358[64];
      sub_100259990(v358, &v314);
      if (!_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v426, v428))
      {
        goto LABEL_228;
      }

      v310 = v330;
      v311 = v331;
      v312 = v332;
      v313 = v333;
      v306 = v326;
      v307 = v327;
      v308 = v328;
      v309 = v329;
      v302 = v322;
      v303 = v323;
      v304 = v324;
      v305 = v325;
      if (sub_10000FE88(&v302) == 1)
      {
        v125 = UInt32.init(_:)(&v302);
        v298 = *&v358[264];
        v299 = *&v358[280];
        v300 = *&v358[296];
        v301 = v358[312];
        v294 = *&v358[200];
        v295 = *&v358[216];
        v296 = *&v358[232];
        v297 = *&v358[248];
        v290 = *&v358[136];
        v291 = *&v358[152];
        v292 = *&v358[168];
        v293 = *&v358[184];
        if (sub_10000FE88(&v290) == 1)
        {
          v126 = UInt32.init(_:)(&v290);
          if ((sub_10039C870(*v125, *v126) & 1) == 0 || (v125[1] != v126[1] || v125[2] != v126[2]) && (sub_1004A6D34() & 1) == 0)
          {
            goto LABEL_228;
          }

          v127 = v125[3];
          v129 = v125[4];
          v128 = v125 + 3;
          v130 = v126[3];
          v131 = v126[4];
          v132 = v126 + 3;
          v133 = v128[4];
          v287 = v128[3];
          v288 = v133;
          v289 = v128[5];
          v134 = v128[2];
          v285 = v128[1];
          v286 = v134;
          v135 = v132[1];
          v136 = v132[2];
          v137 = v132[5];
          v283 = v132[4];
          v284 = v137;
          v138 = v132[3];
          v281 = v136;
          v282 = v138;
          v280 = v135;
          if (v129)
          {
            v139 = v128[4];
            v271 = v128[3];
            v272 = v139;
            v273 = v128[5];
            v140 = v128[2];
            v269 = v128[1];
            v270 = v140;
            if (!v131)
            {
              goto LABEL_227;
            }

            *&v274 = v130;
            *(&v274 + 1) = v131;
            v277 = v282;
            v278 = v283;
            v275 = v280;
            v276 = v281;
            v279 = v284;
            v425[1] = v280;
            v425[0] = v274;
            v425[5] = v284;
            v425[4] = v283;
            v425[3] = v282;
            v425[2] = v281;
            v423 = v272;
            v424 = v273;
            v421 = v270;
            v422 = v271;
            v420 = v269;
            v419[0] = v127;
            v419[1] = v129;
            sub_10000E268(v128, v268, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_10000E268(v132, v268, &qword_1005DBCC8, &qword_1004FE5E0);
            v141 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v419, v425);
            sub_100025F40(&v274, &qword_1005DBCC8, &qword_1004FE5E0);
            *&v314 = v127;
            *(&v314 + 1) = v129;
            *&v315[32] = v287;
            *&v315[48] = v288;
            *&v315[64] = v289;
            *v315 = v285;
            *&v315[16] = v286;
            sub_100025F40(&v314, &qword_1005DBCC8, &qword_1004FE5E0);
            goto LABEL_99;
          }

          if (!v131)
          {
            v314 = v127;
            *&v315[32] = v287;
            *&v315[48] = v288;
            *&v315[64] = v289;
            *v315 = v285;
            *&v315[16] = v286;
            sub_10000E268(v128, &v274, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_10000E268(v132, &v274, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_100025F40(&v314, &qword_1005DBCC8, &qword_1004FE5E0);
            sub_1002599EC(v358);
            goto LABEL_100;
          }

LABEL_227:
          *&v314 = v127;
          *(&v314 + 1) = v129;
          *&v315[48] = v288;
          *&v315[64] = v289;
          *&v315[16] = v286;
          *&v315[32] = v287;
          *v315 = v285;
          *&v316 = v130;
          *(&v316 + 1) = v131;
          v321 = v284;
          v320 = v283;
          v319 = v282;
          v317 = v280;
          v318 = v281;
          sub_10000E268(v128, &v274, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_10000E268(v132, &v274, &qword_1005DBCC8, &qword_1004FE5E0);
          sub_100025F40(&v314, &qword_1005DBCD0, &qword_1004FE5E8);
        }

        else
        {
          UInt32.init(_:)(&v290);
        }

LABEL_228:
        sub_1002599EC(v358);
        goto LABEL_229;
      }

      v150 = UInt32.init(_:)(&v302);
      v151 = v150[9];
      v417[8] = v150[8];
      v417[9] = v151;
      v417[10] = v150[10];
      v152 = v150[5];
      v417[4] = v150[4];
      v417[5] = v152;
      v153 = v150[6];
      v417[7] = v150[7];
      v417[6] = v153;
      v154 = v150[1];
      v417[0] = *v150;
      v417[1] = v154;
      v155 = v150[2];
      v417[3] = v150[3];
      v417[2] = v155;
      LOBYTE(v321) = v358[312];
      v320 = *&v358[296];
      v319 = *&v358[280];
      v318 = *&v358[264];
      v317 = *&v358[248];
      v316 = *&v358[232];
      *&v315[64] = *&v358[216];
      *&v315[48] = *&v358[200];
      *&v315[16] = *&v358[168];
      *&v315[32] = *&v358[184];
      v314 = *&v358[136];
      *v315 = *&v358[152];
      if (sub_10000FE88(&v314) == 1)
      {
        UInt32.init(_:)(&v314);
        goto LABEL_228;
      }

      v156 = UInt32.init(_:)(&v314);
      v157 = v156[9];
      v418[8] = v156[8];
      v418[9] = v157;
      v418[10] = v156[10];
      v158 = v156[5];
      v418[4] = v156[4];
      v418[5] = v158;
      v159 = v156[6];
      v418[7] = v156[7];
      v418[6] = v159;
      v160 = v156[1];
      v418[0] = *v156;
      v418[1] = v160;
      v161 = v156[2];
      v418[3] = v156[3];
      v418[2] = v161;
      v141 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(v417, v418);
LABEL_99:
      sub_1002599EC(v358);
      if ((v141 & 1) == 0)
      {
        goto LABEL_229;
      }

LABEL_100:
      if (v124 != *&v358[320])
      {
        goto LABEL_229;
      }
    }

    else
    {
      if (v109 >> 62 != 2)
      {
        goto LABEL_229;
      }

      v146 = (v108 & 0x3FFFFFFFFFFFFFFFLL);
      v147 = v146[4];
      v148 = (v109 & 0x3FFFFFFFFFFFFFFFLL);
      v149 = v148[4];
      if ((v146[2] != v148[2] || v146[3] != v148[3]) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_229;
      }

      if (v147 != v149)
      {
        goto LABEL_229;
      }
    }
  }

  else
  {
    if (v109 >> 62)
    {
      goto LABEL_229;
    }

    v142 = *(v108 + 32);
    v143 = *(v108 + 40);
    v144 = *(v109 + 32);
    v145 = *(v109 + 40);
    if ((*(v108 + 16) != *(v109 + 16) || *(v108 + 24) != *(v109 + 24)) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_229;
    }

    if ((v142 != v144 || v143 != v145) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_229;
    }
  }

  v162 = v106[2];
  v163 = v107[2];
  v164 = *(v162 + 16);
  if (v164 != *(v163 + 16))
  {
    goto LABEL_229;
  }

  v165 = v106[3];
  v166 = v106[5];
  v244 = v106[6];
  v260 = v106[7];
  v240 = v106[8];
  v258 = v106[9];
  v248 = v106[10];
  v167 = v107[3];
  v250 = v107[4];
  v252 = v106[4];
  v168 = v107[5];
  v242 = v107[6];
  v169 = v107[7];
  v239 = v107[8];
  v256 = v107[9];
  v246 = v107[10];
  if (!v164 || v162 == v163)
  {
LABEL_112:
    if ((sub_10020FB40(v165, v167) & 1) == 0)
    {
      goto LABEL_229;
    }

    if (v166)
    {
      if (!v168 || (v252 != v250 || v166 != v168) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v168)
    {
      goto LABEL_229;
    }

    if (v260)
    {
      if (!v169 || (v244 != v242 || v260 != v169) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v169)
    {
      goto LABEL_229;
    }

    if (v258)
    {
      if (!v256 || (v240 != v239 || v258 != v256) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v256)
    {
      goto LABEL_229;
    }

    if (v248 != v246)
    {
      goto LABEL_229;
    }

    v173 = v106[11];
    v174 = v106[12];
    v175 = (v106 + 11);
    v176 = v107[11];
    v177 = v107[12];
    v178 = (v107 + 11);
    v179 = *(v175 + 64);
    v304 = *(v175 + 48);
    v305 = v179;
    *&v306 = *(v175 + 80);
    v180 = *(v175 + 32);
    v302 = *(v175 + 16);
    v303 = v180;
    v181 = *(v178 + 16);
    v182 = *(v178 + 32);
    v183 = *(v178 + 48);
    v184 = *(v178 + 64);
    *&v294 = *(v178 + 80);
    v292 = v183;
    v293 = v184;
    v290 = v181;
    v291 = v182;
    if (v174 == 1)
    {
      v54 = v262;
      if (v177 != 1)
      {
        goto LABEL_224;
      }

      *v358 = v173;
      *&v358[8] = 1;
      v185 = *(v175 + 64);
      *&v358[48] = *(v175 + 48);
      *&v358[64] = v185;
      *&v358[80] = *(v175 + 80);
      v186 = *(v175 + 32);
      *&v358[16] = *(v175 + 16);
      *&v358[32] = v186;
      sub_10000E268(v178, &v314, &qword_1005DBCE8, &qword_1004FE600);
      sub_10000E268(v175, &v314, &qword_1005DBCE8, &qword_1004FE600);
      sub_100025F40(v358, &qword_1005DBCE8, &qword_1004FE600);
      sub_1002599EC(__dst);
    }

    else
    {
      v54 = v262;
      if (v177 == 1)
      {
LABEL_224:
        sub_10000E268(v178, v358, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(v175, v358, &qword_1005DBCE8, &qword_1004FE600);
        sub_1002599EC(__dst);
        *v358 = v173;
        *&v358[8] = v174;
        *&v358[48] = v304;
        *&v358[64] = v305;
        *&v358[32] = v303;
        *&v358[16] = v302;
        *&v358[80] = v306;
        *&v358[88] = v176;
        *&v358[104] = v290;
        *&v358[96] = v177;
        *&v358[168] = v294;
        *&v358[152] = v293;
        *&v358[136] = v292;
        *&v358[120] = v291;
        sub_100025F40(v358, &qword_1005DBCF0, &qword_1004FE608);
        goto LABEL_230;
      }

      *&v314 = v176;
      *(&v314 + 1) = v177;
      v187 = *(v178 + 64);
      *&v315[32] = *(v178 + 48);
      *&v315[48] = v187;
      v188 = *(v178 + 32);
      *v315 = *(v178 + 16);
      *&v315[16] = v188;
      *&v315[64] = *(v178 + 80);
      v415[1] = *v315;
      v415[0] = v314;
      v416 = *&v315[64];
      v415[4] = v187;
      v415[3] = *&v315[32];
      v415[2] = v188;
      v189 = *(v175 + 16);
      v190 = *(v175 + 32);
      v191 = *(v175 + 48);
      v192 = *(v175 + 64);
      v414 = *(v175 + 80);
      v412 = v191;
      v413 = v192;
      v410 = v189;
      v411 = v190;
      v409[0] = v173;
      v409[1] = v174;
      sub_10000E268(v178, &v322, &qword_1005DBCE8, &qword_1004FE600);
      sub_10000E268(v178, &v322, &qword_1005DBCE8, &qword_1004FE600);
      sub_10000E268(v175, &v322, &qword_1005DBCE8, &qword_1004FE600);
      v193 = _s12NIOIMAPCore213BodyStructureO10SinglepartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v409, v415);
      sub_100025F40(&v314, &qword_1005DBCE8, &qword_1004FE600);
      sub_100025F40(v178, &qword_1005DBCE8, &qword_1004FE600);
      *v358 = v173;
      *&v358[8] = v174;
      *&v358[48] = v304;
      *&v358[64] = v305;
      *&v358[80] = v306;
      *&v358[16] = v302;
      *&v358[32] = v303;
      sub_100025F40(v358, &qword_1005DBCE8, &qword_1004FE600);
      sub_1002599EC(__dst);
      if (!v193)
      {
        goto LABEL_230;
      }
    }

    v74 = v254;
    goto LABEL_141;
  }

  v170 = (v162 + 40);
  v171 = (v163 + 40);
  while (1)
  {
    v172 = *(v170 - 1) == *(v171 - 1) && *v170 == *v171;
    if (!v172 && (sub_1004A6D34() & 1) == 0)
    {
      break;
    }

    v170 += 2;
    v171 += 2;
    if (!--v164)
    {
      goto LABEL_112;
    }
  }

LABEL_229:
  sub_1002599EC(__dst);
LABEL_230:
  sub_100051110(&v391);
  sub_100051110(v380);
  return 0;
}

uint64_t sub_10039ED48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 55);
  for (i = (a2 + 55); ; i += 24)
  {
    v6 = *(v3 - 23);
    v7 = *(i - 23);
    v5 = *i;
    if (*v3)
    {
      if (v6 != v7)
      {
        v5 = 0;
      }

      if ((v5 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (*i)
    {
      return 0;
    }

    v8 = *(i - 15);
    v9 = *(i - 7) | ((*(i - 3) | (*(i - 1) << 16)) << 32);
    if (v6)
    {
      break;
    }

    if (v7)
    {
      goto LABEL_28;
    }

    sub_1003A336C(0, v8, v9, 0);
LABEL_8:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  v10 = *(v3 - 15);
  v11 = *(v3 - 7) | ((*(v3 - 3) | (*(v3 - 1) << 16)) << 32);
  if (v7)
  {
    if (HIDWORD(v10) - v10 != HIDWORD(v8) - v8)
    {
      return 0;
    }

    v12 = BYTE6(v9);
    *(i - 3);
    *(i - 1);
    *(v3 - 3);
    *(v3 - 1);
    if (*(v3 - 7) != *(i - 7) || ((*(i - 1), *(v3 - 1), *(v3 - 3) == *(i - 3)) ? (v13 = BYTE6(v11) == BYTE6(v9)) : (v13 = 0), v13 ? (v14 = v6 == v7) : (v14 = 0), !v14))
    {
      v20 = HIDWORD(v9) & 0xFFFFFF;
      v21 = *(i - 15);
      swift_beginAccess();
      v15 = BYTE6(v11) | (WORD2(v11) << 8);
      v16 = *(v6 + 24) + v10;
      swift_beginAccess();
      if (memcmp((v16 + v15), (*(v7 + 24) + (v12 & 0xFFFFFFFFFF0000FFLL | (v20 << 8)) + v21), HIDWORD(v10) - v10))
      {
        return 0;
      }
    }

    goto LABEL_8;
  }

  v18 = *(i - 15);
  v19 = *(i - 7) | ((*(i - 3) | (*(i - 1) << 16)) << 32);
  sub_1003A336C(0, v8, v9, 0);
  sub_1003A336C(v6, v10, v11, 0);
  v8 = v18;
  v9 = v19;
  v7 = 0;
LABEL_28:
  sub_1003A336C(v7, v8, v9, 0);

  return 0;
}

uint64_t sub_10039EF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    v55 = a1 + 32;
    v56 = *(a1 + 16);
    v54 = a2 + 32;
    while (1)
    {
      v62 = v3;
      v6 = v3 << 6;
      v7 = (v4 + (v3 << 6));
      v8 = v7[1];
      v68 = *v7;
      *v69 = v8;
      v9 = v7[3];
      *&v69[16] = v7[2];
      v70 = v9;
      v10 = v68;
      v11 = DWORD2(v68);
      v12 = HIDWORD(v68);
      v13 = *&v69[4];
      v14 = v69[6];
      v15 = (v5 + v6);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[3];
      *&v72[16] = v15[2];
      v73 = v18;
      v71 = v16;
      *v72 = v17;
      v19 = DWORD2(v16);
      if (HIDWORD(v68) - DWORD2(v68) != HIDWORD(v16) - DWORD2(v16))
      {
        break;
      }

      v20 = v71;
      v21 = *&v72[4];
      v22 = v72[6];
      if (*v69 == *v72 && *&v69[4] == *&v72[4] && v69[6] == v72[6] && v68 == v71)
      {
        sub_1003A3310(&v68, v67);
        sub_1003A3310(&v71, v67);
      }

      else
      {
        swift_beginAccess();
        v23 = *(v10 + 24);
        v24 = (v14 | (v13 << 8)) + v11;
        v25 = v12 - v11;
        swift_beginAccess();
        v26 = *(v20 + 24);
        sub_1003A3310(&v68, v67);
        sub_1003A3310(&v71, v67);
        if (memcmp((v23 + v24), (v26 + (v22 | (v21 << 8)) + v19), v25))
        {
          goto LABEL_50;
        }
      }

      if (*&v69[16])
      {
        if (!*&v72[16] || *&v69[8] != *&v72[8] && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (*&v72[16])
      {
        goto LABEL_50;
      }

      v27 = *(&v70 + 1);
      v28 = *(&v73 + 1);
      result = sub_1003A0868(v70, v73);
      if ((result & 1) == 0)
      {
        goto LABEL_50;
      }

      v30 = *(v27 + 16);
      if (v30 != *(v28 + 16))
      {
        goto LABEL_50;
      }

      if (v30 && v27 != v28)
      {
        v31 = 0;
        v60 = v28 + 32;
        v61 = v27 + 32;
        v58 = v28;
        v59 = v27;
        v57 = *(v27 + 16);
        while (1)
        {
          if (v31 >= *(v27 + 16))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            return result;
          }

          if (v31 >= *(v28 + 16))
          {
            goto LABEL_53;
          }

          v32 = *(v61 + 8 * v31);
          v33 = *(v60 + 8 * v31);
          v34 = *(v32 + 16);
          if (v34 != *(v33 + 16))
          {
            goto LABEL_50;
          }

          v63 = v31;
          if (v34 && v32 != v33)
          {
            break;
          }

LABEL_23:
          v31 = v63 + 1;
          v28 = v58;
          v27 = v59;
          if (v63 + 1 == v57)
          {
            goto LABEL_47;
          }
        }

        v37 = *(v32 + 40);
        v36 = *(v32 + 44);
        v38 = *(v33 + 40);
        if (v36 - v37 == *(v33 + 44) - v38)
        {
          v39 = 0;
          v64 = *(v60 + 8 * v31);
          v65 = *(v61 + 8 * v31);
          do
          {
            v40 = *(v32 + v39 + 54);
            v41 = *(v32 + v39 + 52);
            v42 = *(v32 + v39 + 32);
            v43 = *(v33 + v39 + 54);
            v44 = *(v33 + v39 + 52);
            v45 = *(v33 + v39 + 32);
            if (*(v32 + v39 + 48) != *(v33 + v39 + 48) || v41 != v44 || v40 != v43 || v42 != v45)
            {
              v49 = v37;
              v66 = v36;
              swift_beginAccess();
              v50 = *(v42 + 24) + (v40 | (v41 << 8));
              swift_beginAccess();
              result = memcmp((v50 + v49), (*(v45 + 24) + (v43 | (v44 << 8)) + v38), v66 - v49);
              v33 = v64;
              v32 = v65;
              if (result)
              {
                break;
              }
            }

            if (!--v34)
            {
              goto LABEL_23;
            }

            v51 = v32 + v39;
            v52 = v33 + v39;
            v39 += 24;
            v53 = v51 + 64;
            v37 = *(v51 + 64);
            v36 = *(v53 + 4);
            v38 = *(v52 + 64);
          }

          while (v36 - v37 == *(v52 + 68) - v38);
        }

LABEL_50:
        sub_1002EED64(&v71);
        sub_1002EED64(&v68);
        return 0;
      }

LABEL_47:
      sub_1002EED64(&v71);
      sub_1002EED64(&v68);
      if (v62 + 1 == v56)
      {
        return 1;
      }

      v3 = v62 + 1;
      v5 = v54;
      v4 = v55;
    }
  }

  return 0;
}

uint64_t sub_10039F304(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1);
        v7 = *(v4 - 1);
        v8 = sub_1004A5834();
        v10 = v9;
        if (v8 == sub_1004A5834() && v10 == v11)
        {
        }

        else
        {
          v13 = sub_1004A6D34();

          if ((v13 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10039F410(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 10)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *(i + 6);
      v8 = *(i + 2);
      v9 = *i;
      v11 = *(v3 - 2);
      v10 = *(v3 - 1);
      v12 = *(v3 + 6);
      v13 = *(v3 + 2);
      v14 = *v3;
      if (*(i - 4) != *(v3 - 4) || *(i - 3) != *(v3 - 3))
      {
        v31 = *(v3 + 2);
        v15 = *(v3 - 2);
        v33 = *(i - 2);
        v16 = *(i - 1);
        v17 = *(v3 + 6);
        v30 = *(v3 - 1);
        v18 = sub_1004A6D34();
        v10 = v30;
        v13 = v31;
        v12 = v17;
        v5 = v16;
        v6 = v33;
        v11 = v15;
        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      if (v6)
      {
        if (!v11)
        {
          return 0;
        }

        v19 = HIDWORD(v5);
        if (HIDWORD(v5) - v5 != HIDWORD(v10) - v10)
        {
          return 0;
        }

        v20 = v10;
        v21 = v9 | ((v8 | (v7 << 16)) << 32);
        v22 = v14 | ((v13 | (v12 << 16)) << 32);
        v23 = BYTE6(v22);
        v24 = HIDWORD(v21) & 0xFFFFFF;
        v25 = BYTE6(v21);
        if (v21 != v14 || WORD2(v21) != WORD2(v22) || BYTE6(v21) != BYTE6(v22) || v6 != v11)
        {
          v26 = v5;
          v32 = v11;
          v34 = HIDWORD(v22) & 0xFFFFFF;
          swift_beginAccess();
          v27 = v25 & 0xFFFFFFFFFF0000FFLL | (v24 << 8);
          v28 = *(v6 + 24) + v26;
          swift_beginAccess();
          if (memcmp((v28 + v27), (*(v32 + 24) + (v23 & 0xFFFFFFFFFF0000FFLL | (v34 << 8)) + v20), v19 - v26))
          {
            return 0;
          }
        }
      }

      else if (v11)
      {
        return 0;
      }

      v3 += 10;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10039F5E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v44 = v2;
  v45 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = v5[1];
    v40 = *v5;
    *v41 = v8;
    *&v41[15] = *(v5 + 31);
    v9 = v40;
    v10 = DWORD2(v40);
    v11 = HIDWORD(v40);
    v12 = v8;
    v13 = WORD2(v8);
    v14 = BYTE6(v8);
    v15 = v6[1];
    v42 = *v6;
    *v43 = v15;
    *&v43[15] = *(v6 + 31);
    v16 = DWORD2(v42);
    if (HIDWORD(v40) - DWORD2(v40) != HIDWORD(v42) - DWORD2(v42))
    {
      return 0;
    }

    v37 = v5;
    v38 = v7;
    v17 = v42;
    v18 = *&v43[4];
    v19 = v43[6];
    if (v12 == *v43 && v13 == *&v43[4] && v14 == v43[6] && v40 == v42)
    {
      sub_1003A3100(&v40, v39);
      sub_1003A3100(&v42, v39);
    }

    else
    {
      swift_beginAccess();
      v20 = *(v9 + 24);
      swift_beginAccess();
      v21 = *(v17 + 24);
      sub_1003A3100(&v40, v39);
      sub_1003A3100(&v42, v39);
      if (memcmp((v20 + (v14 | (v13 << 8)) + v10), (v21 + (v19 | (v18 << 8)) + v16), v11 - v10))
      {
        goto LABEL_27;
      }
    }

    v22 = *&v41[8];
    v23 = *&v43[8];
    if (!*&v41[8])
    {
      if (*&v43[8])
      {
        goto LABEL_27;
      }

LABEL_22:
      sub_1003A315C(&v42);
      sub_1003A315C(&v40);
      goto LABEL_23;
    }

    if (!*&v43[8] || (v24 = *&v43[16], v25 = HIDWORD(*&v41[16]), *&v41[20] - *&v41[16] != *&v43[20] - *&v43[16]))
    {
LABEL_27:
      sub_1003A315C(&v42);
      sub_1003A315C(&v40);
      return 0;
    }

    v26 = *&v41[24] | ((*&v41[28] | (v41[30] << 16)) << 32);
    v27 = *&v43[24] | ((*&v43[28] | (v43[30] << 16)) << 32);
    v28 = HIDWORD(v27) & 0xFFFFFF;
    v29 = BYTE6(v27);
    v30 = HIDWORD(v26) & 0xFFFFFF;
    v31 = BYTE6(v26);
    if (*&v41[24] == *&v43[24] && *&v41[28] == *&v43[28] && BYTE6(v26) == BYTE6(v27) && *&v41[8] == *&v43[8])
    {
      goto LABEL_22;
    }

    v32 = *&v41[16];
    swift_beginAccess();
    v33 = v31 & 0xFFFFFFFFFF0000FFLL | (v30 << 8);
    v34 = *(v22 + 24) + v32;
    swift_beginAccess();
    v35 = memcmp((v34 + v33), (*(v23 + 24) + (v29 & 0xFFFFFFFFFF0000FFLL | (v28 << 8)) + v24), v25 - v32);
    sub_1003A315C(&v42);
    sub_1003A315C(&v40);
    if (v35)
    {
      return 0;
    }

LABEL_23:
    if (!v38)
    {
      return 1;
    }

    v7 = v38 - 1;
    v6 += 3;
    v5 = v37 + 3;
  }
}

uint64_t sub_10039F8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (v3 && a1 != a2)
  {
    v5 = (a1 + 40);
    v6 = (a2 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = a3(*(v5 - 1), *v5);
      v11 = v10;
      if (v9 == a3(v7, v8) && v11 == v12)
      {
      }

      else
      {
        v14 = sub_1004A6D34();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      v5 += 2;
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t AppendOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_1004A5834();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  if (v2[2])
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v9 = v2[1];
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v9);
  }

  v10 = v2[4];
  v11 = v2[5];

  return sub_1003A28F4(a1, v10, v11);
}

Swift::Int AppendOptions.hashValue.getter()
{
  sub_1004A6E94();
  AppendOptions.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10039FAF4()
{
  sub_1004A6E94();
  AppendOptions.hash(into:)(v1);
  return sub_1004A6F14();
}

BOOL sub_10039FB30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  if ((sub_10039F8D8(*a1, *a2, &String.uppercased()) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return (sub_10020FB40(v5, v9) & 1) != 0 && (sub_1003A0B30(v4, v8) & 1) != 0;
}

void sub_10039FBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v76 - v7;
  v83 = sub_10000C9C0(&qword_1005DBC60, &qword_1004FE590);
  v9 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v84 = &v76 - v10;
  v11 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v82 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v87 = &v76 - v15;
  v90 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  v16 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v18 = &v76 - v17;
  v95 = type metadata accessor for ParameterValue();
  v19 = *(v95 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v95);
  v85 = (&v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v89 = &v76 - v23;
  __chkstk_darwin(v24);
  v93 = &v76 - v25;
  v26 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26 - 8);
  v94 = &v76 - v29;
  v96 = sub_10000C9C0(&qword_1005DBC70, &unk_100505A20);
  v30 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v32 = &v76 - v31;
  v33 = *(a1 + 16);
  if (v33 == *(a2 + 16) && v33 && a1 != a2)
  {
    v76 = v8;
    v34 = 0;
    v35 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v91 = a2 + v35;
    v92 = a1 + v35;
    v36 = (v19 + 48);
    v77 = (v5 + 48);
    v78 = v4;
    v37 = *(v27 + 72);
    v79 = v37;
    v80 = v36;
    v88 = v33;
    v81 = v32;
    while (v34 != v33)
    {
      v39 = v18;
      v40 = *(v96 + 48);
      sub_10000E268(v92 + v37 * v34, v32, &qword_1005D7F50, &unk_100502FF0);
      sub_10000E268(v91 + v37 * v34, &v32[v40], &qword_1005D7F50, &unk_100502FF0);
      v41 = *v36;
      v42 = v32;
      v43 = v32;
      v44 = v95;
      if ((*v36)(v42, 1, v95) == 1)
      {
        v38 = v41((v43 + v40), 1, v44);
        v32 = v43;
        if (v38 != 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v86 = v34;
        v45 = v94;
        sub_10000E268(v43, v94, &qword_1005D7F50, &unk_100502FF0);
        if (v41((v43 + v40), 1, v44) == 1)
        {
          sub_1003A35FC(v45, type metadata accessor for ParameterValue);
          v32 = v43;
LABEL_35:
          v72 = &qword_1005DBC70;
          v73 = &unk_100505A20;
          goto LABEL_44;
        }

        v46 = v93;
        sub_1003A352C(v43 + v40, v93, type metadata accessor for ParameterValue);
        v47 = *(v90 + 48);
        sub_1003A3594(v45, v18, type metadata accessor for ParameterValue);
        sub_1003A3594(v46, &v18[v47], type metadata accessor for ParameterValue);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v48 = v85;
          sub_1003A3594(v18, v85, type metadata accessor for ParameterValue);
          v49 = *v48;
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v34 = v86;
          if (EnumCaseMultiPayload != 1)
          {

            sub_1003A35FC(v93, type metadata accessor for ParameterValue);
            v56 = v94;
            goto LABEL_38;
          }

          v51 = *&v18[v47];
          v52 = *(v49 + 16);
          v32 = v81;
          if (v52 != *(v51 + 16))
          {
            goto LABEL_33;
          }

          if (v52 && v49 != v51)
          {
            v53 = (v49 + 40);
            v54 = (v51 + 40);
            while (1)
            {
              v55 = *(v53 - 1) == *(v54 - 1) && *v53 == *v54;
              if (!v55 && (sub_1004A6D34() & 1) == 0)
              {
                break;
              }

              v53 += 2;
              v54 += 2;
              if (!--v52)
              {
                goto LABEL_27;
              }
            }

LABEL_33:
            sub_1003A35FC(v93, type metadata accessor for ParameterValue);

            sub_1003A35FC(v39, type metadata accessor for ParameterValue);
            v56 = v94;
LABEL_43:
            sub_1003A35FC(v56, type metadata accessor for ParameterValue);
            v72 = &qword_1005D7F50;
            v73 = &unk_100502FF0;
LABEL_44:
            sub_100025F40(v32, v72, v73);
            return;
          }

LABEL_27:
          sub_1003A35FC(v93, type metadata accessor for ParameterValue);

          v18 = v39;
        }

        else
        {
          v56 = v45;
          v57 = v89;
          sub_1003A3594(v18, v89, type metadata accessor for ParameterValue);
          v58 = swift_getEnumCaseMultiPayload();
          v34 = v86;
          v59 = v87;
          if (v58 == 1)
          {
            sub_1003A35FC(v93, type metadata accessor for ParameterValue);
            sub_100025F40(v57, &qword_1005CDA78, &unk_1004CF7E0);
LABEL_38:
            v32 = v81;
            sub_100025F40(v18, &qword_1005DBC68, &qword_1004FE598);
            goto LABEL_43;
          }

          sub_100025FDC(&v18[v47], v87, &qword_1005CDA78, &unk_1004CF7E0);
          v60 = v84;
          v61 = *(v83 + 48);
          sub_10000E268(v57, v84, &qword_1005CDA78, &unk_1004CF7E0);
          sub_10000E268(v59, v60 + v61, &qword_1005CDA78, &unk_1004CF7E0);
          v62 = v59;
          v63 = v78;
          v64 = *v77;
          v65 = (*v77)(v60, 1, v78);
          v32 = v81;
          if (v65 == 1)
          {
            sub_100025F40(v62, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003A35FC(v93, type metadata accessor for ParameterValue);
            v66 = v64(v60 + v61, 1, v63);
            v67 = v89;
            if (v66 != 1)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v68 = v82;
            sub_10000E268(v60, v82, &qword_1005CDA78, &unk_1004CF7E0);
            if (v64(v60 + v61, 1, v63) == 1)
            {
              sub_100025F40(v87, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1003A35FC(v93, type metadata accessor for ParameterValue);
              sub_100025F40(v68, &qword_1005CDA68, &qword_1004CF7D0);
              v67 = v89;
LABEL_40:
              v74 = &qword_1005DBC60;
              v75 = &qword_1004FE590;
              goto LABEL_42;
            }

            v69 = v76;
            sub_100025FDC(v60 + v61, v76, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100016D2C();
            v70 = sub_1004A7034();
            sub_100025F40(v69, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100025F40(v87, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003A35FC(v93, type metadata accessor for ParameterValue);
            sub_100025F40(v68, &qword_1005CDA68, &qword_1004CF7D0);
            v67 = v89;
            if ((v70 & 1) == 0)
            {
              v74 = &qword_1005CDA78;
              v75 = &unk_1004CF7E0;
LABEL_42:
              sub_100025F40(v60, v74, v75);
              v56 = v94;
              sub_100025F40(v67, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1003A35FC(v18, type metadata accessor for ParameterValue);
              goto LABEL_43;
            }
          }

          sub_100025F40(v60, &qword_1005CDA78, &unk_1004CF7E0);
          sub_100025F40(v67, &qword_1005CDA78, &unk_1004CF7E0);
        }

        v71 = v94;
        sub_1003A35FC(v18, type metadata accessor for ParameterValue);
        sub_1003A35FC(v71, type metadata accessor for ParameterValue);
        v37 = v79;
        v36 = v80;
      }

      ++v34;
      sub_100025F40(v32, &qword_1005D7F50, &unk_100502FF0);
      v33 = v88;
      if (v34 == v88)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1003A06A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v28 = a2 + 32;
    v29 = result + 32;
    v27 = *(result + 16);
    while (1)
    {
      if (v3 == v2)
      {
        __break(1u);
        return result;
      }

      v4 = *(v29 + 8 * v3);
      v5 = *(v28 + 8 * v3);
      v6 = *(v4 + 16);
      if (v6 != *(v5 + 16))
      {
        return 0;
      }

      v30 = v3;
      if (v6 && v4 != v5)
      {
        break;
      }

LABEL_5:
      v3 = v30 + 1;
      result = 1;
      v2 = v27;
      if (v30 + 1 == v27)
      {
        return result;
      }
    }

    v9 = *(v4 + 40);
    v8 = *(v4 + 44);
    v10 = *(v5 + 40);
    if (v8 - v9 == *(v5 + 44) - v10)
    {
      v11 = 0;
      v31 = *(v28 + 8 * v3);
      v32 = *(v29 + 8 * v3);
      do
      {
        v12 = *(v4 + v11 + 54);
        v13 = *(v4 + v11 + 52);
        v14 = *(v4 + v11 + 32);
        v15 = *(v5 + v11 + 54);
        v16 = *(v5 + v11 + 52);
        v17 = *(v5 + v11 + 32);
        if (*(v4 + v11 + 48) != *(v5 + v11 + 48) || v13 != v16 || v12 != v15 || v14 != v17)
        {
          v21 = v9;
          v33 = v8;
          swift_beginAccess();
          v22 = *(v14 + 24) + (v12 | (v13 << 8));
          swift_beginAccess();
          v23 = memcmp((v22 + v21), (*(v17 + 24) + (v15 | (v16 << 8)) + v10), v33 - v21);
          v5 = v31;
          v4 = v32;
          if (v23)
          {
            break;
          }
        }

        if (!--v6)
        {
          goto LABEL_5;
        }

        v24 = v4 + v11;
        v25 = v5 + v11;
        v11 += 24;
        v26 = v24 + 64;
        v9 = *(v24 + 64);
        v8 = *(v26 + 4);
        v10 = *(v25 + 64);
      }

      while (v8 - v9 == *(v25 + 68) - v10);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1003A0868(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1;
    if (a1 != a2)
    {
      v4 = 0;
      v22 = a2;
      while (1)
      {
        v5 = v3 + v4;
        v6 = *(v3 + v4 + 40);
        v7 = *(v3 + v4 + 44);
        v8 = a2 + v4;
        v9 = *(a2 + v4 + 40);
        if (v7 - v6 != *(a2 + v4 + 44) - v9)
        {
          break;
        }

        v10 = *(v5 + 32);
        v11 = *(v5 + 52);
        v12 = *(v5 + 54);
        v13 = *(v8 + 32);
        v14 = *(v8 + 54);
        v15 = *(v5 + 48) == *(v8 + 48) && v11 == *(v8 + 52);
        v16 = v15 && v12 == v14;
        if (!v16 || v10 != v13)
        {
          v23 = *(v8 + 52);
          swift_beginAccess();
          v18 = *(v10 + 24);
          swift_beginAccess();
          v19 = memcmp((v18 + (v12 | (v11 << 8)) + v6), (*(v13 + 24) + (v14 | (v23 << 8)) + v9), v7 - v6);
          v3 = a1;
          a2 = v22;
          if (v19)
          {
            break;
          }
        }

        v4 += 24;
        if (!--v2)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003A09B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v3 - 2);
      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        v7 = *(v4 - 1);
        v8 = *(v3 - 1);
        v9 = HIDWORD(v7);
        if (HIDWORD(v7) - v7 != HIDWORD(v8) - v8)
        {
          return 0;
        }

        v10 = *v4 | ((*(v4 + 2) | (*(v4 + 6) << 16)) << 32);
        v11 = *v3 | ((*(v3 + 2) | (*(v3 + 6) << 16)) << 32);
        v12 = BYTE6(v11);
        v13 = HIDWORD(v10) & 0xFFFFFF;
        v14 = BYTE6(v10);
        if (*v4 != *v3 || ((*(v4 + 6), *(v3 + 6), *(v4 + 2) == *(v3 + 2)) ? (v15 = BYTE6(v10) == BYTE6(v11)) : (v15 = 0), v15 ? (v16 = v5 == v6) : (v16 = 0), !v16))
        {
          v20 = v7;
          v21 = HIDWORD(v11) & 0xFFFFFF;
          swift_beginAccess();
          v17 = v14 & 0xFFFFFFFFFF0000FFLL | (v13 << 8);
          v18 = *(v5 + 24) + v20;
          swift_beginAccess();
          if (memcmp((v18 + v17), (*(v6 + 24) + (v12 & 0xFFFFFFFFFF0000FFLL | (v21 << 8)) + v8), v9 - v20))
          {
            return 0;
          }
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1003A0B30(uint64_t a1, uint64_t a2)
{
  v67 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v65 = *(v67 - 8);
  v4 = *(v65 + 64);
  __chkstk_darwin(v67);
  v6 = &v56 - v5;
  v7 = sub_10000C9C0(&qword_1005DBC60, &qword_1004FE590);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v56 - v9;
  v11 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  v70 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  v18 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v20 = &v56 - v19;
  v69 = type metadata accessor for ParameterValue();
  v21 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  __chkstk_darwin(v25);
  v29 = &v56 - v27;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    return 0;
  }

  v68 = *(a1 + 16);
  if (!v30 || a1 == a2)
  {
    return 1;
  }

  v59 = v20;
  v60 = v7;
  v57 = v6;
  v58 = v14;
  v31 = 0;
  v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v63 = v24;
  v64 = a2 + v32;
  v61 = (v65 + 48);
  v62 = v28;
  v65 = *(v26 + 72);
  v66 = a1 + v32;
  v33 = v68;
  v71 = &v56 - v27;
  while (1)
  {
    v34 = v17;
    v35 = v65 * v31;
    result = sub_1003A3594(v66 + v65 * v31, v29, type metadata accessor for ParameterValue);
    if (v31 == v33)
    {
      __break(1u);
      return result;
    }

    v37 = *(v70 + 48);
    sub_1003A3594(v29, v20, type metadata accessor for ParameterValue);
    sub_1003A3594(v64 + v35, &v20[v37], type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1003A3594(v20, v24, type metadata accessor for ParameterValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v17 = v34;
      v46 = v67;
      v47 = v61;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1003A35FC(v71, type metadata accessor for ParameterValue);
        sub_100025F40(v24, &qword_1005CDA78, &unk_1004CF7E0);
        goto LABEL_32;
      }

      sub_100025FDC(&v20[v37], v17, &qword_1005CDA78, &unk_1004CF7E0);
      v48 = *(v60 + 48);
      sub_10000E268(v24, v10, &qword_1005CDA78, &unk_1004CF7E0);
      sub_10000E268(v17, &v10[v48], &qword_1005CDA78, &unk_1004CF7E0);
      v49 = *v47;
      if ((*v47)(v10, 1, v46) == 1)
      {
        sub_100025F40(v17, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1003A35FC(v71, type metadata accessor for ParameterValue);
        if (v49(&v10[v48], 1, v46) != 1)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      v50 = v58;
      sub_10000E268(v10, v58, &qword_1005CDA78, &unk_1004CF7E0);
      if (v49(&v10[v48], 1, v46) == 1)
      {
        sub_100025F40(v17, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1003A35FC(v71, type metadata accessor for ParameterValue);
        sub_100025F40(v50, &qword_1005CDA68, &qword_1004CF7D0);
        v24 = v63;
LABEL_34:
        v54 = &qword_1005DBC60;
        v55 = &qword_1004FE590;
      }

      else
      {
        v51 = v57;
        sub_100025FDC(&v10[v48], v57, &qword_1005CDA68, &qword_1004CF7D0);
        sub_100016D2C();
        v52 = sub_1004A7034();
        sub_100025F40(v51, &qword_1005CDA68, &qword_1004CF7D0);
        sub_100025F40(v17, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1003A35FC(v71, type metadata accessor for ParameterValue);
        sub_100025F40(v50, &qword_1005CDA68, &qword_1004CF7D0);
        v24 = v63;
        if (v52)
        {
LABEL_27:
          sub_100025F40(v10, &qword_1005CDA78, &unk_1004CF7E0);
          sub_100025F40(v24, &qword_1005CDA78, &unk_1004CF7E0);
          goto LABEL_6;
        }

        v54 = &qword_1005CDA78;
        v55 = &unk_1004CF7E0;
      }

      sub_100025F40(v10, v54, v55);
      sub_100025F40(v24, &qword_1005CDA78, &unk_1004CF7E0);
      v53 = v20;
      goto LABEL_37;
    }

    v38 = v62;
    sub_1003A3594(v20, v62, type metadata accessor for ParameterValue);
    v39 = *v38;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1003A35FC(v71, type metadata accessor for ParameterValue);

LABEL_32:
      sub_100025F40(v20, &qword_1005DBC68, &qword_1004FE598);
      return 0;
    }

    v40 = *&v20[v37];
    v41 = *(v39 + 16);
    if (v41 != *(v40 + 16))
    {
      goto LABEL_29;
    }

    if (v41 && v39 != v40)
    {
      break;
    }

LABEL_5:
    sub_1003A35FC(v71, type metadata accessor for ParameterValue);

    v20 = v59;
    v24 = v63;
    v17 = v34;
LABEL_6:
    ++v31;
    sub_1003A35FC(v20, type metadata accessor for ParameterValue);
    v33 = v68;
    v29 = v71;
    if (v31 == v68)
    {
      return 1;
    }
  }

  v42 = (v39 + 40);
  v43 = (v40 + 40);
  while (1)
  {
    v44 = *(v42 - 1) == *(v43 - 1) && *v42 == *v43;
    if (!v44 && (sub_1004A6D34() & 1) == 0)
    {
      break;
    }

    v42 += 2;
    v43 += 2;
    if (!--v41)
    {
      goto LABEL_5;
    }
  }

LABEL_29:
  sub_1003A35FC(v71, type metadata accessor for ParameterValue);

  v53 = v59;
LABEL_37:
  sub_1003A35FC(v53, type metadata accessor for ParameterValue);
  return 0;
}

uint64_t sub_1003A1364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_1004A6EB4(v5);

  if (v5)
  {
    v7 = 0;
    v8 = (a3 + 40);
    v9 = (a2 + 40);
    while (v7 < *(a2 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      ++v7;
      v12 = *(v8 - 1);
      v13 = *v8;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 2;
      v9 += 2;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_1003A1460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  sub_1004A6EB4(v4);
  v19 = a3;

  v17 = v4;
  if (!v4)
  {
  }

  v6 = 0;
  v7 = 0;
  while (v7 < *(a2 + 16))
  {
    v9 = *(a2 + v6 + 32);
    v10 = *(a2 + v6 + 40);
    v11 = *(a2 + v6 + 44);
    v12 = *(a2 + v6 + 52);
    v13 = *(a2 + v6 + 54);
    v14 = *(v19 + v6 + 32);
    v20 = *(v19 + v6 + 54);
    v21 = *(v19 + v6 + 40);
    v15 = *(v19 + v6 + 52);

    if (v9)
    {
      swift_beginAccess();
      v16 = *(v9 + 24) + (v13 | (v12 << 8));
      sub_1004A6EA4();
      if (v14)
      {
        sub_1004A6EC4(1u);
        swift_beginAccess();
        v8 = *(v14 + 24) + ((v15 << 8) | v20);
        sub_1004A6EA4();
      }

      else
      {
        sub_1004A6EC4(0);
      }

      ++v7;

      v6 += 24;
      if (v17 != v7)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003A15DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  sub_1004A6EB4(v4);

  v24 = v4;
  if (!v4)
  {
  }

  v6 = 0;
  v23 = a3 + 32;
  while (v6 < *(a2 + 16))
  {
    v7 = a2 + 32 + 24 * v6;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 12);
    v11 = *(v7 + 20);
    v12 = *(v7 + 22);
    v13 = *(v23 + 8 * v6);

    if (v8)
    {
      swift_beginAccess();
      v14 = *(v8 + 24) + (v12 | (v11 << 8));
      sub_1004A6EA4();
      sub_1004A6EB4(*(v13 + 16));
      v15 = *(v13 + 16);
      if (v15)
      {
        v16 = (v13 + 54);
        do
        {
          v17 = *(v16 - 22);
          v18 = *(v16 - 14);
          v19 = *(v16 - 10);
          v20 = *(v16 - 1);
          v21 = *v16;
          v16 += 24;
          swift_beginAccess();
          v22 = *(v17 + 24) + (v21 | (v20 << 8));
          sub_1004A6EA4();
          --v15;
        }

        while (v15);
      }

      ++v6;

      if (v6 != v24)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003A1770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_1004A6EB4(v5);

  if (v5)
  {
    v7 = 0;
    v8 = (a3 + 40);
    v9 = (a2 + 40);
    while (v7 < *(a2 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      ++v7;
      v12 = *(v8 - 1);
      v13 = *v8;
      swift_bridgeObjectRetain_n();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 2;
      v9 += 2;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_1003A1878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v5 = *(v70 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v70);
  v67 = &v67 - v7;
  v8 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v67 - v12;
  v14 = type metadata accessor for ParameterValue();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  __chkstk_darwin(v14);
  v72 = (&v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v82 = &v67 - v18;
  v19 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v77 = *(v19 - 8);
  v20 = *(v77 + 64);
  __chkstk_darwin(v19 - 8);
  v81 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v85 = &v67 - v23;
  v76 = sub_10000C9C0(&qword_1005D8488, &unk_100503000);
  v24 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v75 = (&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v74 = (&v67 - v27);
  v28 = sub_10000C9C0(&qword_1005DBC98, &qword_1004FE5B8);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = (&v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v34 = (&v67 - v33);
  v84 = *(a3 + 16);
  sub_1004A6EB4(v84);
  v78 = a2;
  v79 = a3;
  v73 = a2 + 32;
  v80 = (v83 + 48);
  v68 = (v5 + 48);

  v36 = 0;
  v71 = v13;
  v83 = v14;
  while (1)
  {
    if (v36 >= v84)
    {
      v49 = sub_10000C9C0(&qword_1005DBCA0, &qword_1004FE5C0);
      (*(*(v49 - 8) + 56))(v31, 1, 1, v49);
      goto LABEL_9;
    }

    if (v36 < 0)
    {
      break;
    }

    if (v36 >= *(v78 + 16))
    {
      goto LABEL_23;
    }

    v38 = v76;
    v37 = v77;
    v39 = *(v76 + 48);
    v40 = v74;
    v41 = (v73 + 16 * v36);
    v42 = v41[1];
    *v74 = *v41;
    *(v40 + 8) = v42;
    sub_10000E268(v79 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36++, v40 + v39, &qword_1005D7F50, &unk_100502FF0);
    v43 = v75;
    sub_100025FDC(v40, v75, &qword_1005D8488, &unk_100503000);
    v44 = *(v38 + 48);
    v45 = sub_10000C9C0(&qword_1005DBCA0, &qword_1004FE5C0);
    v46 = *(v45 + 48);
    v47 = v43[1];
    *v31 = *v43;
    v31[1] = v47;
    v48 = v43 + v44;
    v14 = v83;
    sub_100025FDC(v48, v31 + v46, &qword_1005D7F50, &unk_100502FF0);
    (*(*(v45 - 8) + 56))(v31, 0, 1, v45);

LABEL_9:
    sub_100025FDC(v31, v34, &qword_1005DBC98, &qword_1004FE5B8);
    v50 = sub_10000C9C0(&qword_1005DBCA0, &qword_1004FE5C0);
    if ((*(*(v50 - 8) + 48))(v34, 1, v50) == 1)
    {
    }

    v51 = *(v50 + 48);
    v52 = *v34;
    v53 = v34[1];
    v54 = v85;
    sub_100025FDC(v34 + v51, v85, &qword_1005D7F50, &unk_100502FF0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v55 = v81;
    sub_10000E268(v54, v81, &qword_1005D7F50, &unk_100502FF0);
    if ((*v80)(v55, 1, v14) == 1)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      v56 = v82;
      sub_1003A352C(v55, v82, type metadata accessor for ParameterValue);
      sub_1004A6EC4(1u);
      v57 = v72;
      sub_1003A3594(v56, v72, type metadata accessor for ParameterValue);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v58 = *v57;
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(*(v58 + 16));
        v59 = *(v58 + 16);
        if (v59)
        {
          v60 = (v58 + 40);
          do
          {
            v62 = *(v60 - 1);
            v61 = *v60;

            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

            v60 += 2;
            --v59;
          }

          while (v59);
        }
      }

      else
      {
        v63 = v71;
        sub_100025FDC(v57, v71, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1004A6EB4(0);
        v64 = v69;
        sub_10000E268(v63, v69, &qword_1005CDA78, &unk_1004CF7E0);
        if ((*v68)(v64, 1, v70) == 1)
        {
          sub_1004A6EB4(1uLL);

          v65 = v63;
        }

        else
        {
          v66 = v67;
          sub_100025FDC(v64, v67, &qword_1005CDA68, &qword_1004CF7D0);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();

          sub_100025F40(v66, &qword_1005CDA68, &qword_1004CF7D0);
          v65 = v71;
        }

        sub_100025F40(v65, &qword_1005CDA78, &unk_1004CF7E0);
      }

      sub_1003A35FC(v82, type metadata accessor for ParameterValue);
      v14 = v83;
    }

    result = sub_100025F40(v85, &qword_1005D7F50, &unk_100502FF0);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1003A2110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v5 = *(v73 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v73);
  v69 = &v68 - v7;
  v8 = &qword_1005CDA78;
  v9 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v72 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v68 - v13;
  v82 = type metadata accessor for ParameterValue();
  v78 = *(v82 - 8);
  v14 = *(v78 + 64);
  __chkstk_darwin(v82);
  v81 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v85 = &v68 - v17;
  v77 = sub_10000C9C0(&qword_1005DBC48, &qword_1004FE578);
  v18 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v76 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v75 = (&v68 - v21);
  v22 = sub_10000C9C0(&qword_1005DBC50, &qword_1004FE580);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  v83 = *(a3 + 16);
  sub_1004A6EB4(v83);
  v79 = a2;
  v80 = a3;
  v74 = a2 + 32;
  v70 = (v5 + 48);

  v30 = 0;
  while (1)
  {
    if (v30 >= v83)
    {
      v47 = sub_10000C9C0(&qword_1005DBC58, &qword_1004FE588);
      (*(*(v47 - 8) + 56))(v25, 1, 1, v47);
      goto LABEL_11;
    }

    if (v30 < 0)
    {
      break;
    }

    if (v30 >= *(v79 + 16))
    {
      goto LABEL_22;
    }

    v33 = v77;
    v34 = *(v77 + 48);
    v35 = v75;
    v36 = v74 + 24 * v30;
    v37 = *(v36 + 16);
    v38 = *(v36 + 20);
    v39 = *(v36 + 22);
    *v75 = *v36;
    *(v35 + 8) = *(v36 + 8);
    *(v35 + 16) = v37;
    *(v35 + 20) = v38;
    *(v35 + 22) = v39;
    sub_1003A3594(v80 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v30++, v35 + v34, type metadata accessor for ParameterValue);
    v40 = v76;
    sub_100025FDC(v35, v76, &qword_1005DBC48, &qword_1004FE578);
    v41 = *(v33 + 48);
    v42 = sub_10000C9C0(&qword_1005DBC58, &qword_1004FE588);
    v43 = *(v42 + 48);
    v44 = *(v40 + 16);
    v45 = *(v40 + 20);
    v46 = *(v40 + 22);
    *v25 = *v40;
    *(v25 + 1) = *(v40 + 8);
    *(v25 + 4) = v44;
    *(v25 + 10) = v45;
    v25[22] = v46;
    sub_1003A352C(v40 + v41, &v25[v43], type metadata accessor for ParameterValue);
    (*(*(v42 - 8) + 56))(v25, 0, 1, v42);

LABEL_11:
    sub_100025FDC(v25, v28, &qword_1005DBC50, &qword_1004FE580);
    v48 = sub_10000C9C0(&qword_1005DBC58, &qword_1004FE588);
    if ((*(*(v48 - 8) + 48))(v28, 1, v48) == 1)
    {
    }

    v84 = v30;
    v49 = v8;
    v50 = *(v48 + 48);
    v51 = *v28;
    v52 = *(v28 + 2);
    v53 = *(v28 + 3);
    v54 = *(v28 + 10);
    v55 = v28[22];
    v56 = v85;
    sub_1003A352C(&v28[v50], v85, type metadata accessor for ParameterValue);
    swift_beginAccess();
    v57 = *(v51 + 24) + (v55 | (v54 << 8));
    sub_1004A6EA4();
    v58 = v81;
    sub_1003A3594(v56, v81, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v64 = v71;
      v8 = v49;
      sub_100025FDC(v58, v71, v49, &unk_1004CF7E0);
      sub_1004A6EB4(0);
      v65 = v72;
      sub_10000E268(v64, v72, v49, &unk_1004CF7E0);
      if ((*v70)(v65, 1, v73) == 1)
      {
        sub_1004A6EB4(1uLL);

        v31 = v64;
        v32 = v49;
      }

      else
      {
        v66 = v69;
        sub_100025FDC(v65, v69, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();

        v67 = v66;
        v8 = &qword_1005CDA78;
        sub_100025F40(v67, &qword_1005CDA68, &qword_1004CF7D0);
        v31 = v64;
        v32 = &qword_1005CDA78;
      }

      sub_100025F40(v31, v32, &unk_1004CF7E0);
      goto LABEL_4;
    }

    v59 = *v58;
    sub_1004A6EB4(1uLL);
    sub_1004A6EB4(*(v59 + 16));
    v60 = *(v59 + 16);
    if (!v60)
    {

      v8 = &qword_1005CDA78;
LABEL_4:
      v30 = v84;
      goto LABEL_5;
    }

    v61 = (v59 + 40);
    do
    {
      v63 = *(v61 - 1);
      v62 = *v61;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v61 += 2;
      --v60;
    }

    while (v60);

    v8 = &qword_1005CDA78;
    v30 = v84;
LABEL_5:
    result = sub_1003A35FC(v85, type metadata accessor for ParameterValue);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1003A28F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v5 = *(v72 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v72);
  v69 = &v69 - v7;
  v8 = &qword_1005CDA78;
  v9 = &unk_1004CF7E0;
  v10 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v71 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v84 = &v69 - v14;
  v81 = type metadata accessor for ParameterValue();
  v77 = *(v81 - 8);
  v15 = *(v77 + 64);
  __chkstk_darwin(v81);
  v80 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v86 = &v69 - v18;
  v76 = sub_10000C9C0(&qword_1005D8480, &qword_1004F4968);
  v19 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v75 = (&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v74 = (&v69 - v22);
  v23 = &qword_1005DBCF8;
  v24 = sub_10000C9C0(&qword_1005DBCF8, &unk_1004FE610);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = (&v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v29 = *(a3 + 16);
  v82 = (&v69 - v30);
  v83 = v29;
  sub_1004A6EB4(v29);
  v78 = a2;
  v79 = a3;
  v73 = a2 + 32;
  v70 = (v5 + 48);

  for (i = 0; ; i = v85)
  {
    if (i >= v83)
    {
      v85 = i;
      v51 = sub_10000C9C0(&qword_1005DBC80, &qword_1004FE5A0);
      (*(*(v51 - 8) + 56))(v27, 1, 1, v51);
      v33 = v84;
      goto LABEL_10;
    }

    v33 = v84;
    if (i < 0)
    {
      break;
    }

    if (i >= *(v78 + 16))
    {
      goto LABEL_21;
    }

    v35 = v76;
    v34 = v77;
    v36 = *(v76 + 48);
    v37 = (v73 + 16 * i);
    v38 = i;
    v39 = v37[1];
    v40 = v23;
    v41 = v74;
    *v74 = *v37;
    v41[1] = v39;
    sub_1003A3594(v79 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * i, v41 + v36, type metadata accessor for ParameterValue);
    v85 = v38 + 1;
    v42 = v41;
    v43 = v8;
    v44 = v9;
    v45 = v75;
    sub_100025FDC(v42, v75, &qword_1005D8480, &qword_1004F4968);
    v46 = *(v35 + 48);
    v47 = sub_10000C9C0(&qword_1005DBC80, &qword_1004FE5A0);
    v48 = *(v47 + 48);
    v49 = v45[1];
    *v27 = *v45;
    v27[1] = v49;
    v50 = v45 + v46;
    v9 = v44;
    v8 = v43;
    v23 = v40;
    sub_1003A352C(v50, v27 + v48, type metadata accessor for ParameterValue);
    (*(*(v47 - 8) + 56))(v27, 0, 1, v47);

LABEL_10:
    v52 = v82;
    sub_100025FDC(v27, v82, v23, &unk_1004FE610);
    v53 = sub_10000C9C0(&qword_1005DBC80, &qword_1004FE5A0);
    if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
    {
    }

    v54 = *(v53 + 48);
    v55 = *v52;
    v56 = v52[1];
    v57 = v52 + v54;
    v58 = v86;
    sub_1003A352C(v57, v86, type metadata accessor for ParameterValue);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v59 = v58;
    v60 = v80;
    sub_1003A3594(v59, v80, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = *v60;
      sub_1004A6EB4(1uLL);
      sub_1004A6EB4(*(v61 + 16));
      v62 = *(v61 + 16);
      if (v62)
      {
        v63 = (v61 + 40);
        do
        {
          v64 = *(v63 - 1);
          v65 = *v63;

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v63 += 2;
          --v62;
        }

        while (v62);

        v8 = &qword_1005CDA78;
        v9 = &unk_1004CF7E0;
      }

      else
      {
      }
    }

    else
    {
      sub_100025FDC(v60, v33, v8, v9);
      sub_1004A6EB4(0);
      v66 = v71;
      sub_10000E268(v33, v71, v8, v9);
      if ((*v70)(v66, 1, v72) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v67 = v69;
        sub_100025FDC(v66, v69, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();

        v68 = v67;
        v9 = &unk_1004CF7E0;
        v8 = &qword_1005CDA78;
        sub_100025F40(v68, &qword_1005CDA68, &qword_1004CF7D0);
      }

      sub_100025F40(v33, v8, v9);
    }

    result = sub_1003A35FC(v86, type metadata accessor for ParameterValue);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1003A3084()
{
  result = qword_1005DBC40;
  if (!qword_1005DBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBC40);
  }

  return result;
}

uint64_t sub_1003A30E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1003A30F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1003A336C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1003A3378(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (HIBYTE(a3) != 255)
  {
    return sub_1003A30E8(result, a2, a3, HIBYTE(a3) & 1);
  }

  return result;
}

uint64_t sub_1003A3390(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (HIBYTE(a3) != 255)
  {
    return sub_1003A30F4(result, a2, a3, HIBYTE(a3) & 1);
  }

  return result;
}

uint64_t sub_1003A352C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A3594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A35FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ApplePushService.hash(into:)(uint64_t a1, Swift::UInt a2, unsigned int a3, unint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 == 1)
    {
      sub_1004A6EB4(1uLL);
      sub_1004A6EB4(a2);

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(2uLL);
      swift_beginAccess();
      v8 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
      sub_1004A6EA4();
    }
  }

  else
  {
    sub_1004A6EB4(0);
    sub_1004A6EB4(a3 | (a3 << 32));
  }
}

Swift::Int ApplePushService.hashValue.getter(Swift::UInt a1, unsigned int a2, unint64_t a3, char a4)
{
  sub_1004A6E94();
  ApplePushService.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1004A6F14();
}

Swift::Int sub_1003A3864()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1004A6E94();
  ApplePushService.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1004A6F14();
}

Swift::Int sub_1003A38D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1004A6E94();
  ApplePushService.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1004A6F14();
}

unint64_t sub_1003A395C(Swift::Int a1, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_35;
    }

    v9 = *(v4 + 20);
    result = sub_1002F178C(0xD000000000000012, 0x80000001004B04A0, (v4 + 8), *(v4 + 20));
    if (v11)
    {
      v12._object = 0x80000001004B04A0;
      v12._countAndFlagsBits = 0xD000000000000012;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v13 = result;
    v14 = *(v4 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    *(v4 + 20) = v16;
    result = sub_100441B60(0x737265762D737061uLL, 0xEB000000006E6F69);
    v17 = v13 + result;
    if (__OFADD__(v13, result))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v18 = *(v4 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
    if (v19)
    {
      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
    }

    v21 = *(v4 + 20);
    v15 = __CFADD__(v21, result);
    v22 = v21 + result;
    if (v15)
    {
      goto LABEL_46;
    }

    *(v4 + 20) = v22;
    v23 = v17 + result;
    if (__OFADD__(v17, result))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v61[0] = a1;
    v24 = sub_1004A6CE4();
    v26 = sub_100441B60(v24, v25);

    v27 = __OFADD__(v23, v26);
    v28 = v23 + v26;
    if (v27)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v29 = *(v5 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
    if (v30)
    {
      v31._countAndFlagsBits = 32;
      v31._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
    }

    v32 = *(v5 + 20);
    v15 = __CFADD__(v32, result);
    v33 = v32 + result;
    if (v15)
    {
      goto LABEL_51;
    }

    *(v5 + 20) = v33;
    v34 = v28 + result;
    if (__OFADD__(v28, result))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    result = sub_100441B60(0x69706F742D737061uLL, 0xE900000000000063);
    v35 = v34 + result;
    if (__OFADD__(v34, result))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    a1 = *(v5 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
    if (v36)
    {
      v37._countAndFlagsBits = 32;
      v37._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v37, a1);
    }

    v38 = *(v5 + 20);
    v15 = __CFADD__(v38, result);
    v39 = v38 + result;
    if (v15)
    {
      goto LABEL_54;
    }

    *(v5 + 20) = v39;
    v40 = v35 + result;
    if (__OFADD__(v35, result))
    {
LABEL_55:
      __break(1u);
      return result;
    }

    v41 = sub_100441B60(a2, a3);
    v27 = __OFADD__(v40, v41);
    result = v40 + v41;
    if (!v27)
    {
      return result;
    }

    __break(1u);
  }

  v42 = *(v5 + 20);
  result = sub_1002F178C(0xD000000000000012, 0x80000001004B04A0, (v5 + 8), *(v5 + 20));
  if (v43)
  {
    v44._object = 0x80000001004B04A0;
    v44._countAndFlagsBits = 0xD000000000000012;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v42);
  }

  v45 = result;
  v46 = *(v5 + 20);
  v15 = __CFADD__(v46, result);
  v47 = v46 + result;
  if (v15)
  {
    goto LABEL_41;
  }

  *(v5 + 20) = v47;
  result = sub_100441B60(0x786F626C69616DuLL, 0xE700000000000000);
  a2 = v45 + result;
  if (__OFADD__(v45, result))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  a3 = *(v5 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v48)
  {
    v49._countAndFlagsBits = 32;
    v49._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v49, a3);
  }

  v50 = *(v5 + 20);
  v15 = __CFADD__(v50, result);
  v51 = v50 + result;
  if (v15)
  {
    goto LABEL_47;
  }

  *(v5 + 20) = v51;
  v52 = a2 + result;
  if (__OFADD__(a2, result))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v53 = sub_100441F24(a1);
  v27 = __OFADD__(v52, v53);
  result = v52 + v53;
  if (!v27)
  {
    return result;
  }

  __break(1u);
LABEL_35:
  v61[0] = a1;
  v61[1] = a2;
  v62 = a3;
  v63 = WORD2(a3);
  v64 = BYTE6(a3);
  v54 = *(v5 + 20);

  result = sub_1002F178C(0xD000000000000012, 0x80000001004B04A0, (v5 + 8), v54);
  if (v55)
  {
    v56._object = 0x80000001004B04A0;
    v56._countAndFlagsBits = 0xD000000000000012;
    result = ByteBuffer._setStringSlowpath(_:at:)(v56, v54);
  }

  v57 = result;
  v58 = *(v5 + 20);
  v15 = __CFADD__(v58, result);
  v59 = v58 + result;
  if (v15)
  {
    goto LABEL_42;
  }

  *(v5 + 20) = v59;
  v60 = EncodeBuffer.writeBuffer(_:)(v61);
  sub_100208C4C(a1, a2, a3, 2u);
  result = v57 + v60;
  if (__OFADD__(v57, v60))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_1003A3D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v9 = a3;
  if (a2 + 1 < a3)
  {
    v8 = a1;
    v11 = *a1;
    v16 = *(a1 + 8);
    v13 = *(a1 + 12);
    LODWORD(v17) = *(a1 + 16);
    v15 = *(a1 + 20);
    v12 = a2 + 2;
    v18 = *(a1 + 22);
    v64 = v18;
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = v9;
LABEL_44:
      swift_willThrow();
      goto LABEL_45;
    }

    v14 = 0x80000001004AC290;
    v48 = v17;
    if (("selectingMailbox" & 0x1000000000000000) == 0)
    {
      if (("selectingMailbox" & 0x2000000000000000) != 0)
      {
        v17 = ("selectingMailbox" >> 56) & 0xF;
      }

      else
      {
        v17 = 17;
      }

LABEL_10:
      if (v17 <= (v13 - v16))
      {
        v45 = a8;
        v46 = v13;
        v40 = a4;
        v41 = a6;
        v42 = a5;
        v43 = a7;
        v44 = v10;
        v23 = v18;
        swift_beginAccess();
        v24 = *(v11 + 24);
        LOWORD(v47) = v15;
        v13 = (v23 | (v15 << 8)) + v16;
        swift_retain_n();
        v25 = sub_1004A58D4();
        if (!__CFADD__(v16, v17))
        {
          v13 = v25;
          v15 = v26;
          v39 = v16 + v17;
          *(v8 + 8) = v16 + v17;
          if (v25 == 0xD000000000000011 && v14 == v26 || (sub_1004A6D34() & 1) != 0)
          {
LABEL_19:
            LODWORD(v17) = v48;

            sub_1003A4404(v8, v12, v9, v40, v42, v41, v43, v45);
            if (v44)
            {
              v27 = *v8;

              *v8 = v11;
              *(v8 + 8) = v39;
              *(v8 + 12) = v46;
              *(v8 + 16) = v48;
              LOWORD(v15) = v47;
              *(v8 + 20) = v47;
              *(v8 + 22) = v64;
              swift_willThrow();
              swift_errorRetain();
              sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
              if (swift_dynamicCast())
              {
              }

              else
              {

                swift_errorRetain();
                if ((swift_dynamicCast() & 1) == 0)
                {

                  LODWORD(v13) = v46;
LABEL_45:
                  *v8 = v11;
                  *(v8 + 8) = v16;
                  *(v8 + 12) = v13;
                  *(v8 + 16) = v17;
                  *(v8 + 20) = v15;
                  *(v8 + 22) = v64;
                  return swift_willThrow();
                }
              }

              sub_1003A4FC4(v8, v12, v9, v45);
            }
          }

          if ((v15 & 0x1000000000000000) == 0)
          {
            v34 = v44;
            if ((v15 & 0x2000000000000000) != 0)
            {
              if (v17 != (HIBYTE(v15) & 0xF))
              {
                goto LABEL_42;
              }
            }

            else if (v17 != (v13 & 0xFFFFFFFFFFFFLL))
            {
              goto LABEL_42;
            }

LABEL_33:
            if (sub_10046A3D8(0xD000000000000011, v14, v13, v15))
            {
              v44 = v34;
              goto LABEL_19;
            }

LABEL_42:
            sub_1004A6724(42);

            v49 = 0xD000000000000037;
            v50 = 0x80000001004B0380;
            v66._countAndFlagsBits = v13;
            v66._object = v15;
            sub_1004A5994(v66);

            sub_1003A527C();
            swift_allocError();
            *v38 = 0xD000000000000037;
            v38[1] = 0x80000001004B0380;
            v38[2] = 0xD000000000000020;
            v38[3] = 0x80000001004B03C0;
            v38[4] = 280;
            LODWORD(v13) = v46;
            LOWORD(v15) = v47;
            LODWORD(v17) = v48;
LABEL_43:
            swift_willThrow();

            goto LABEL_44;
          }

LABEL_41:
          v34 = v44;
          if (v17 != sub_1004A59E4())
          {
            goto LABEL_42;
          }

          goto LABEL_33;
        }

        goto LABEL_39;
      }

LABEL_11:
      if (v13 >= v16)
      {
        LOWORD(v47) = v13 - v16;
        v17 = v48;
        if (v48 - (v18 | (v15 << 8)) >= v13)
        {
          v56 = v11;
          v57 = v16;
          v58 = v13;
          v59 = v48;
          v60 = v15;
          v61 = v18;
          v62 = v16;
          v63 = v13;
          v21 = v18;
          swift_retain_n();
          v22 = sub_10046A0DC(&v56, 0xD000000000000011, v14);
          sub_1003A52D0(&v56);
          if (v22)
          {
            sub_1003A5324();
            swift_allocError();
          }

          else
          {
            sub_1004A6724(23);

            v49 = v11;
            v50 = __PAIR64__(v13, v16);
            v51 = v48;
            v52 = v15;
            v53 = v21;
            v54 = v16;
            v55 = v13;
            swift_beginAccess();
            v28 = *(v11 + 24);

            v29 = sub_1004A58D4();
            v30 = v13;
            v13 = v31;
            sub_1003A52D0(&v49);
            v65._countAndFlagsBits = v29;
            v65._object = v13;
            sub_1004A5994(v65);

            sub_1003A527C();
            swift_allocError();
            *v32 = 0xD000000000000024;
            v32[1] = 0x80000001004B03F0;
            v32[2] = 0xD000000000000020;
            v32[3] = 0x80000001004B03C0;
            LODWORD(v13) = v30;
            LODWORD(v17) = v48;
            v32[4] = 264;
          }

          goto LABEL_43;
        }

        goto LABEL_40;
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_36:
    v45 = a8;
    v46 = v13;
    v42 = a5;
    v43 = a7;
    v47 = v15;
    v35 = a6;
    v36 = a4;
    v37 = sub_1004A59E4();
    v18 = v64;
    a4 = v36;
    a5 = v42;
    a7 = v43;
    a6 = v35;
    v15 = v47;
    a8 = v45;
    v17 = v37;
    if (v37 < 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_1003A5228();
  swift_allocError();
  *v19 = v9;
  return swift_willThrow();
}

uint64_t sub_1003A4404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_37:
    v141 = a1;
    v142 = v16 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (a8)
      {
        if (--a8)
        {
          v63 = 0;
          v86 = &v141 + 1;
          while (1)
          {
            v87 = *v86 - 48;
            if (v87 > 9)
            {
              break;
            }

            v88 = (v63 * 10) >> 64;
            v89 = 10 * v63;
            if (v88 != v89 >> 63)
            {
              break;
            }

            v68 = __OFADD__(v89, v87);
            v63 = v89 + v87;
            if (v68)
            {
              break;
            }

            ++v86;
            if (!--a8)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_80;
      }

      goto LABEL_101;
    }

    if (a1 != 45)
    {
      if (a8)
      {
        v63 = 0;
        v93 = &v141;
        while (1)
        {
          v94 = *v93 - 48;
          if (v94 > 9)
          {
            break;
          }

          v95 = (v63 * 10) >> 64;
          v96 = 10 * v63;
          if (v95 != v96 >> 63)
          {
            break;
          }

          v68 = __OFADD__(v96, v94);
          v63 = v96 + v94;
          if (v68)
          {
            break;
          }

          v93 = (v93 + 1);
          if (!--a8)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_80;
    }

    if (a8)
    {
      if (--a8)
      {
        v63 = 0;
        v78 = &v141 + 1;
        while (1)
        {
          v79 = *v78 - 48;
          if (v79 > 9)
          {
            break;
          }

          v80 = (v63 * 10) >> 64;
          v81 = 10 * v63;
          if (v80 != v81 >> 63)
          {
            break;
          }

          v68 = __OFSUB__(v81, v79);
          v63 = v81 - v79;
          if (v68)
          {
            break;
          }

          ++v78;
          if (!--a8)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_80;
    }

    goto LABEL_99;
  }

  v11 = a3;
  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v22 = v11;
    return swift_willThrow();
  }

  v13 = a2;
  v12 = a1;
  v133 = a4;
  v134 = a5;
  v135 = a6;
  v136 = a7;
  v132 = a8;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = *(a1 + 20);
  v21 = *(a1 + 22);
  sub_100469DF8(a1);
  if (v10)
  {
    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 20) = v20;
    *(v12 + 22) = v21;
    return swift_willThrow();
  }

  v24 = sub_10041ED48(v12, v13, v11, v133, v134, v135, v136);
  v26 = v25;
  v28 = v27;
  v29 = v24;

  v30 = ByteBufferAllocator.buffer(string:)(0x786F626C69616DLL, 0xE700000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v131 = v26;
  LOBYTE(v26) = sub_10020FBD0(v30, v32, v31 & 0xFFFFFFFFFFFFFFLL, v29, v26, v28 & 0xFFFFFFFFFFFFFFLL);

  if (v26)
  {
    v33 = *v12;
    v34 = *(v12 + 8);
    v35 = *(v12 + 16);
    v36 = *(v12 + 20);
    v37 = *(v12 + 22);
    sub_100469DF8(v12);
    v38 = sub_10041ED48(v12, v13, v11, v133, v134, v135, v136);
    v40 = v39;
    v42 = HIDWORD(v41);
    v43 = v41;
    swift_beginAccess();
    v44 = v42 - v43;
    if (v44)
    {
      v69 = *(v38 + 24);
      v70 = ((v40 >> 24) & 0xFFFF00 | BYTE6(v40)) + v43;
      v71 = sub_10015BEAC(v44, 0);
      memcpy(v71 + 32, (v69 + v70), v44);
      v45 = v71;
    }

    else
    {
      v45 = _swiftEmptyArrayStorage;
    }

    v72 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v45);
    v74 = v73;

    v75 = *(v12 + 16);
    v76 = *(v12 + 20);
    v77 = *(v12 + 22);
    v137[0] = *v12;
    v137[1] = *(v12 + 8);
    v138 = v75;
    v139 = v76;
    v140 = v77;

    sub_100464188(v137, v13, v11);

    *v132 = v72;
    *(v132 + 8) = v74;
    *(v132 + 16) = 0;
    *(v132 + 24) = 0;
    goto LABEL_35;
  }

  v46 = ByteBufferAllocator.buffer(string:)(0x737265762D737061, 0xEB000000006E6F69, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v49 = sub_10020FBD0(v46, v48, v47 & 0xFFFFFFFFFFFFFFLL, v29, v131, v28 & 0xFFFFFFFFFFFFFFLL);

  if (!v49)
  {
    sub_1004A6724(43);

    v141 = 0xD000000000000029;
    v142 = 0x80000001004B0420;
    v143._countAndFlagsBits = ByteBuffer.description.getter(v29);
    sub_1004A5994(v143);

    sub_1003A527C();
    swift_allocError();
    *v55 = 0xD000000000000029;
    v55[1] = 0x80000001004B0420;
    v55[2] = 0xD000000000000020;
    v55[3] = 0x80000001004B03C0;
    v55[4] = 75;
    swift_willThrow();
  }

  v50 = *v12;
  v51 = *(v12 + 8);
  v52 = *(v12 + 16);
  v53 = *(v12 + 20);
  v54 = *(v12 + 22);
  sub_100469DF8(v12);
  v15 = 0xD000000000000020;
  v14 = 0x80000001004B03C0;
  v130 = sub_10041ED48(v12, v13, v11, v133, v134, v135, v136);
  a1 = sub_10046C184(v130, v57, v56 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 58);
  v9 = 0;
  v16 = v58;
  a8 = HIBYTE(v58) & 0xF;
  v59 = a1 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v60 = a8;
  }

  else
  {
    v60 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {

LABEL_94:
    sub_1003A527C();
    swift_allocError();
    *v125 = 0x1000000000000019;
    v125[1] = 0x80000001004B0450;
    v125[2] = v15;
    v125[3] = v14;
    v125[4] = 60;
    goto LABEL_95;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {
    LOBYTE(v137[0]) = 0;
    v129 = sub_10010C28C(a1, v16, 10);
    v97 = v126;
    goto LABEL_84;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v61 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v61 = sub_1004A67E4();
  }

  v62 = *v61;
  if (v62 != 43)
  {
    if (v62 != 45)
    {
      v8 = 0;
      if (v59)
      {
        if (v61)
        {
          while (1)
          {
            v90 = *v61 - 48;
            if (v90 > 9)
            {
              break;
            }

            v91 = (v8 * 10) >> 64;
            v92 = 10 * v8;
            if (v91 != v92 >> 63)
            {
              break;
            }

            v68 = __OFADD__(v92, v90);
            v8 = v92 + v90;
            if (v68)
            {
              break;
            }

            ++v61;
            if (!--v59)
            {
              LOBYTE(a8) = 0;
              v15 = 0xD000000000000020;
              v129 = v8;
              goto LABEL_83;
            }
          }

          LOBYTE(a8) = 1;
          v15 = 0xD000000000000020;
          v129 = 0;
        }

        else
        {
          LOBYTE(a8) = 0;
          v129 = 0;
        }

        goto LABEL_83;
      }

      goto LABEL_102;
    }

    if (v59 >= 1)
    {
      a8 = v59 - 1;
      if (v59 != 1)
      {
        v63 = 0;
        if (v61)
        {
          v64 = v61 + 1;
          while (1)
          {
            v65 = *v64 - 48;
            if (v65 > 9)
            {
              break;
            }

            v66 = (v63 * 10) >> 64;
            v67 = 10 * v63;
            if (v66 != v67 >> 63)
            {
              break;
            }

            v68 = __OFSUB__(v67, v65);
            v63 = v67 - v65;
            if (v68)
            {
              break;
            }

            ++v64;
            if (!--a8)
            {
              goto LABEL_57;
            }
          }

LABEL_56:
          v63 = 0;
          LOBYTE(a8) = 1;
LABEL_57:
          v15 = 0xD000000000000020;
          goto LABEL_82;
        }

LABEL_81:
        LOBYTE(a8) = 0;
        goto LABEL_82;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v59 < 1)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    LOBYTE(a8) = 1;
    v129 = v8;
    goto LABEL_83;
  }

  a8 = v59 - 1;
  if (v59 != 1)
  {
    v63 = 0;
    if (v61)
    {
      v82 = v61 + 1;
      while (1)
      {
        v83 = *v82 - 48;
        if (v83 > 9)
        {
          goto LABEL_56;
        }

        v84 = (v63 * 10) >> 64;
        v85 = 10 * v63;
        if (v84 != v85 >> 63)
        {
          goto LABEL_56;
        }

        v68 = __OFADD__(v85, v83);
        v63 = v85 + v83;
        if (v68)
        {
          goto LABEL_56;
        }

        ++v82;
        if (!--a8)
        {
          goto LABEL_57;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_80:
  v63 = 0;
  LOBYTE(a8) = 1;
LABEL_82:
  v129 = v63;
LABEL_83:
  LOBYTE(v137[0]) = a8;
  v97 = a8;
LABEL_84:

  if ((v97 & 1) != 0 || (v129 & 0x8000000000000000) != 0)
  {
    goto LABEL_94;
  }

  v128 = v14;
  v98 = *v12;
  v99 = *(v12 + 8);
  v100 = *(v12 + 16);
  v101 = *(v12 + 20);
  v102 = *(v12 + 22);
  sub_100469DF8(v12);
  if (v9)
  {
    *v12 = v98;
    *(v12 + 8) = v99;
    *(v12 + 16) = v100;
    *(v12 + 20) = v101;
    *(v12 + 22) = v102;
LABEL_95:
    swift_willThrow();
  }

  v103 = sub_10041ED48(v12, v13, v11, v133, v134, v135, v136);
  v105 = v104;
  v107 = v106;
  v108 = ByteBufferAllocator.buffer(string:)(0x69706F742D737061, 0xE900000000000063, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v127 = v103;
  LOBYTE(v103) = sub_10020FBD0(v103, v105, v107 & 0xFFFFFFFFFFFFFFLL, v108, v110, v109 & 0xFFFFFFFFFFFFFFLL);

  if ((v103 & 1) == 0)
  {
    v141 = 0;
    v142 = 0xE000000000000000;
    sub_1004A6724(38);

    v141 = 0x1000000000000021;
    v142 = 0x80000001004B0470;
    v144._countAndFlagsBits = ByteBuffer.description.getter(v127);
    sub_1004A5994(v144);

    v145._countAndFlagsBits = 10322146;
    v145._object = 0xA300000000000000;
    sub_1004A5994(v145);
    v116 = v141;
    v117 = v142;
    sub_1003A527C();
    swift_allocError();
    *v118 = v116;
    v118[1] = v117;
    v118[2] = 0xD000000000000020;
    v118[3] = v128;
    v118[4] = 66;
    swift_willThrow();
  }

  v111 = *v12;
  v112 = *(v12 + 8);
  v113 = *(v12 + 16);
  v114 = *(v12 + 20);
  v115 = *(v12 + 22);
  sub_100469DF8(v12);
  v119 = sub_10041ED48(v12, v13, v11, v133, v134, v135, v136);
  v122 = sub_10046C184(v119, v121, v120 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, v128, 71);
  v124 = v123;

  *v132 = v129;
  *(v132 + 8) = v122;
  *(v132 + 16) = v124;
  *(v132 + 24) = 1;
LABEL_35:
  type metadata accessor for ResponsePayload();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003A4FC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    *a4 = sub_10046C378(v9, a2, a3);
    *(a4 + 8) = v18;
    *(a4 + 16) = v17 & 0xFFFFFFFFFFFFFFLL;
    *(a4 + 24) = 2;
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t _s12NIOIMAPCore216ApplePushServiceO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    return !a8 && a2 == a6 && (sub_1000FFC98(a1, a5) & 1) != 0;
  }

  if (a4 == 1)
  {
    if (a8 == 1 && a1 == a5)
    {
      if (a2 == a6 && a3 == a7)
      {
        return 1;
      }

      return sub_1004A6D34();
    }

    return 0;
  }

  if (a8 != 2)
  {
    return 0;
  }

  v10 = a3 & 0xFFFFFFFFFFFFFFLL;

  return sub_10020FBD0(a1, a2, v10, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_1003A51B8()
{
  result = qword_1005DBD00;
  if (!qword_1005DBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD00);
  }

  return result;
}

unint64_t sub_1003A5228()
{
  result = qword_1005DBD08;
  if (!qword_1005DBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD08);
  }

  return result;
}

unint64_t sub_1003A527C()
{
  result = qword_1005DBD10;
  if (!qword_1005DBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD10);
  }

  return result;
}

unint64_t sub_1003A5324()
{
  result = qword_1005DBD18;
  if (!qword_1005DBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD18);
  }

  return result;
}

uint64_t sub_1003A5378()
{
  result = sub_1004A5814();
  static AttributeFlag.answered = result;
  unk_1005DE340 = v1;
  return result;
}

NIOIMAPCore2::Media::TopLevelType __swiftcall Media.TopLevelType.init(stringLiteral:)(Swift::String stringLiteral)
{
  v1 = sub_1004A5814();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result.stringValue._object = v5;
  result.stringValue._countAndFlagsBits = v4;
  return result;
}

uint64_t *AttributeFlag.answered.unsafeMutableAddressor()
{
  if (qword_1005DB9A8 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.answered;
}

uint64_t sub_1003A5470()
{
  result = sub_1004A5814();
  static AttributeFlag.flagged = result;
  unk_1005DE350 = v1;
  return result;
}

uint64_t *AttributeFlag.flagged.unsafeMutableAddressor()
{
  if (qword_1005DB9B0 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.flagged;
}

uint64_t sub_1003A5524()
{
  result = sub_1004A5814();
  static AttributeFlag.deleted = result;
  unk_1005DE360 = v1;
  return result;
}

uint64_t *AttributeFlag.deleted.unsafeMutableAddressor()
{
  if (qword_1005DB9B8 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.deleted;
}

uint64_t sub_1003A55D8()
{
  result = sub_1004A5814();
  static AttributeFlag.seen = result;
  unk_1005DE370 = v1;
  return result;
}

uint64_t *AttributeFlag.seen.unsafeMutableAddressor()
{
  if (qword_1005DB9C0 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.seen;
}

uint64_t sub_1003A5684()
{
  result = sub_1004A5814();
  static AttributeFlag.draft = result;
  unk_1005DE380 = v1;
  return result;
}

uint64_t *AttributeFlag.draft.unsafeMutableAddressor()
{
  if (qword_1005DB9C8 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.draft;
}

uint64_t sub_1003A5734(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

unint64_t sub_1003A5794()
{
  result = qword_1005DBD20;
  if (!qword_1005DBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD20);
  }

  return result;
}

uint64_t AuthenticatedURL.verifier.getter()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[13];
  v3 = v0[14];

  return v1;
}

uint64_t AuthenticatedURL.verifier.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[12];

  v10 = v4[14];

  v4[11] = a1;
  v4[12] = a2;
  v4[13] = a3;
  v4[14] = a4;
  return result;
}

__n128 AuthenticatedURL.init(authenticatedURL:verifier:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LOBYTE(v10) = *(a1 + 80);
  result = a1[2];
  v7 = a1[4];
  v8 = *a1;
  v9 = a1[1];
  *(a6 + 48) = a1[3];
  *(a6 + 64) = v7;
  *(a6 + 16) = v9;
  *(a6 + 32) = result;
  *a6 = v8;
  *(a6 + 80) = v10;
  *(a6 + 88) = a2;
  *(a6 + 96) = a3;
  *(a6 + 104) = a4;
  *(a6 + 112) = a5;
  return result;
}

BOOL static AuthenticatedURL.__derived_struct_equals(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  v4 = a1[3];
  v19[2] = a1[2];
  v19[3] = v4;
  v19[4] = a1[4];
  v20 = a1[5].i8[0];
  v5 = a1[1];
  v19[0] = *a1;
  v19[1] = v5;
  v6 = a2[3];
  v17[2] = a2[2];
  v17[3] = v6;
  v17[4] = a2[4];
  v18 = a2[5].i8[0];
  v7 = a2[1];
  v17[0] = *a2;
  v17[1] = v7;
  if ((_s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v17) & 1) == 0)
  {
    return 0;
  }

  v8 = a1[5].i64[1];
  v9 = a1[6].i64[0];
  v10 = a1[6].i64[1];
  v11 = a1[7].i64[0];
  v12 = a2[5].i64[1];
  v13 = a2[6].i64[0];
  v15 = a2[6].i64[1];
  v14 = a2[7].i64[0];
  if ((v8 != v12 || v9 != v13) && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  return v10 == v15 && v11 == v14 || (sub_1004A6D34() & 1) != 0;
}

uint64_t AuthenticatedURL.hash(into:)()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 80);
  if ((*(v0 + 57) & 1) == 0)
  {
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    v5 = *(v0 + 40);
    v18 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v10 = *(v0 + 8);
    v9 = *(v0 + 16);
    v11 = *v0;
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v11);
    sub_1004A6EB4(v10);
    sub_1004A6EB4(v9);
    sub_1004A6EB4(v8);
    sub_1004A6EB4(v7);
    sub_1004A6EB4(v5);
    if (v6)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1004A6EC4(1u);
      sub_1004A6EB4(v18);
    }

    v2 = v19;
    v1 = v20;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  sub_1004A6EC4(0);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v3 != 1)
  {
    if (v2 | v1)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    sub_1004A6EB4(v12);
    goto LABEL_15;
  }

  v4 = 1;
LABEL_12:
  sub_1004A6EB4(v4);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_15:
  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int AuthenticatedURL.hashValue.getter()
{
  sub_1004A6E94();
  AuthenticatedURL.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_1003A5C4C()
{
  sub_1004A6E94();
  AuthenticatedURL.hash(into:)();
  return sub_1004A6F14();
}

BOOL sub_1003A5C88(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[3];
  v17[2] = a1[2];
  v17[3] = v2;
  v17[4] = a1[4];
  v18 = a1[5].i8[0];
  v3 = a1[1];
  v17[0] = *a1;
  v17[1] = v3;
  v4 = a1[5].i64[1];
  v5 = a1[6].i64[0];
  v6 = a1[6].i64[1];
  v7 = a1[7].i64[0];
  v8 = a2[1];
  v19[0] = *a2;
  v19[1] = v8;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v20 = a2[5].i8[0];
  v19[3] = v10;
  v19[4] = v11;
  v19[2] = v9;
  v12 = a2[5].i64[1];
  v13 = a2[6].i64[0];
  v14 = a2[6].i64[1];
  v15 = a2[7].i64[0];
  return (_s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v17, v19) & 1) != 0 && (v4 == v12 && v5 == v13 || (sub_1004A6D34() & 1) != 0) && (v6 == v14 && v7 == v15 || (sub_1004A6D34() & 1) != 0);
}

unint64_t sub_1003A5D94()
{
  result = qword_1005DBD28;
  if (!qword_1005DBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD28);
  }

  return result;
}

uint64_t sub_1003A5DE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003A5E30(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 AuthenticatedURLRump.expire.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 32);
  result = *(v1 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 AuthenticatedURLRump.expire.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  *(v1 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t AuthenticatedURLRump.access.getter()
{
  v1 = *(v0 + 64);
  sub_1003A62D4(v1, *(v0 + 72), *(v0 + 80));
  return v1;
}

uint64_t AuthenticatedURLRump.access.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_100191658(*(v3 + 64), *(v3 + 72), *(v3 + 80));
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return result;
}

__n128 AuthenticatedURLRump.init(expire:access:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v7;
  result = *(a1 + 32);
  *(a5 + 32) = result;
  *(a5 + 48) = v5;
  *(a5 + 56) = v6;
  *(a5 + 64) = a2;
  *(a5 + 72) = a3;
  *(a5 + 80) = a4;
  return result;
}

void AuthenticatedURLRump.hash(into:)()
{
  if (*(v0 + 57))
  {
    goto LABEL_3;
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v7 = *(v0 + 8);
  v6 = *(v0 + 16);
  v8 = *v0;
  sub_1004A6EC4(1u);
  sub_1004A6EB4(v8);
  sub_1004A6EB4(v7);
  sub_1004A6EB4(v6);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v2);
  if (v3)
  {
LABEL_3:
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }

  if (!*(v0 + 80))
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (*(v0 + 80) == 1)
  {
    v9 = 1;
LABEL_9:
    sub_1004A6EB4(v9);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return;
  }

  if (*(v0 + 64) == 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  sub_1004A6EB4(v10);
}

Swift::Int AuthenticatedURLRump.hashValue.getter()
{
  sub_1004A6E94();
  AuthenticatedURLRump.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_1003A6100()
{
  sub_1004A6E94();
  AuthenticatedURLRump.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_1003A613C(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v7[4] = a1[4];
  v8 = a1[5].i8[0];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v9[4] = a2[4];
  v10 = a2[5].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t _s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  v3 = a2[3].i8[9];
  if (a1[3].i8[9])
  {
LABEL_2:
    if ((v3 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (a2[3].i8[9])
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0] && a1[2].i64[1] == a2[2].i64[1])
  {
    v3 = a2[3].i8[8];
    if (a1[3].i8[8])
    {
      goto LABEL_2;
    }

    result = 0;
    if ((a2[3].i8[8] & 1) == 0 && a1[3].i64[0] == a2[3].i64[0])
    {
LABEL_3:
      v4 = a1[4].i64[0];
      v5 = a1[4].i64[1];
      v6 = a1[5].u8[0];
      v7 = a2[4].i64[0];
      v8 = a2[4].i64[1];
      v9 = a2[5].u8[0];
      if (v6)
      {
        if (v6 != 1)
        {
          if (v4 | v5)
          {
            if (v9 != 2 || v7 != 1 || v8)
            {
              return 0;
            }
          }

          else if (v9 != 2 || v8 | v7)
          {
            return 0;
          }

          return 1;
        }

        if (v9 == 1)
        {
LABEL_16:
          if (v4 == v7 && v5 == v8 || (sub_1004A6D34() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!a2[5].i8[0])
      {
        goto LABEL_16;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1003A62D4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1003A62F0()
{
  result = qword_1005DBD30;
  if (!qword_1005DBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD30);
  }

  return result;
}

uint64_t sub_1003A6344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_1003A638C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t Media.MediaType.hash(into:)()
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int Media.MediaType.hashValue.getter()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

Swift::Int sub_1003A64B8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_1003A6520()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1003A6570()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

unint64_t sub_1003A65D8()
{
  result = qword_1005DBD38;
  if (!qword_1005DBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD38);
  }

  return result;
}

NIOIMAPCore2::AuthenticationMechanism __swiftcall AuthenticationMechanism.init(_:)(Swift::String a1)
{
  v1 = sub_1004A5834();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result.rawValue._object = v5;
  result.rawValue._countAndFlagsBits = v4;
  return result;
}

unint64_t sub_1003A674C()
{
  result = qword_1005DBD40;
  if (!qword_1005DBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD40);
  }

  return result;
}

BOOL sub_1003A6830(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1003A6860@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1003A688C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1003A694C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1003A6CEC(a1);

  *a2 = v3;
  return result;
}

uint64_t String.init<A>(base64Encoding:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static Base64.encodeString<A>(bytes:options:)(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

unint64_t sub_1003A6A00()
{
  result = qword_1005DBD48;
  if (!qword_1005DBD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD48);
  }

  return result;
}

unint64_t sub_1003A6A58()
{
  result = qword_1005DBD50;
  if (!qword_1005DBD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD50);
  }

  return result;
}

unint64_t sub_1003A6AB0()
{
  result = qword_1005DBD58;
  if (!qword_1005DBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD58);
  }

  return result;
}

unint64_t sub_1003A6B08()
{
  result = qword_1005DBD60;
  if (!qword_1005DBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD60);
  }

  return result;
}

unint64_t sub_1003A6B60()
{
  result = qword_1005DBD68;
  if (!qword_1005DBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD68);
  }

  return result;
}

unint64_t sub_1003A6BB8()
{
  result = qword_1005DBD70;
  if (!qword_1005DBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD70);
  }

  return result;
}

unint64_t sub_1003A6C10()
{
  result = qword_1005DBD78;
  if (!qword_1005DBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD78);
  }

  return result;
}

unint64_t sub_1003A6C68()
{
  result = qword_1005DBD80;
  if (!qword_1005DBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBD80);
  }

  return result;
}

uint64_t sub_1003A6CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

BOOL static MessageAttribute.BodyStructure.__derived_enum_equals(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[9];
  v94 = a1[8];
  v95 = v3;
  v96 = a1[10];
  v97 = *(a1 + 176);
  v4 = a1[5];
  v90 = a1[4];
  v91 = v4;
  v5 = a1[7];
  v92 = a1[6];
  v93 = v5;
  v6 = a1[1];
  v86 = *a1;
  v87 = v6;
  v7 = a1[3];
  v88 = a1[2];
  v89 = v7;
  if (sub_10000FE74(&v86) == 1)
  {
    v8 = a2[9];
    v118 = a2[8];
    v119 = v8;
    v120 = a2[10];
    v121 = *(a2 + 176);
    v9 = a2[5];
    v114 = a2[4];
    v115 = v9;
    v10 = a2[7];
    v116 = a2[6];
    v117 = v10;
    v11 = a2[1];
    v110 = *a2;
    v111 = v11;
    v12 = a2[3];
    v112 = a2[2];
    v113 = v12;
    return sub_10000FE74(&v110) == 1;
  }

  v106 = v94;
  v107 = v95;
  v108 = v96;
  v109 = v97;
  v102 = v90;
  v103 = v91;
  v104 = v92;
  v105 = v93;
  v98 = v86;
  v99 = v87;
  v100 = v88;
  v101 = v89;
  v14 = a2[9];
  v47 = a2[8];
  v48 = v14;
  v49 = a2[10];
  v50 = *(a2 + 176);
  v15 = a2[5];
  v43 = a2[4];
  v44 = v15;
  v16 = a2[7];
  v45 = a2[6];
  v46 = v16;
  v17 = a2[1];
  v39 = *a2;
  v40 = v17;
  v18 = a2[3];
  v41 = a2[2];
  v42 = v18;
  if (sub_10000FE74(&v39) == 1)
  {
    return 0;
  }

  v59 = v47;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  v55 = v43;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v118 = v106;
  v119 = v107;
  v120 = v108;
  v121 = v109;
  v114 = v102;
  v115 = v103;
  v116 = v104;
  v117 = v105;
  v110 = v98;
  v111 = v99;
  v112 = v100;
  v113 = v101;
  if (sub_10000FE88(&v110) != 1)
  {
    v27 = UInt32.init(_:)(&v110);
    v28 = v27[9];
    v130 = v27[8];
    v131 = v28;
    v132 = v27[10];
    v29 = v27[5];
    v126 = v27[4];
    v127 = v29;
    v30 = v27[7];
    v128 = v27[6];
    v129 = v30;
    v31 = v27[1];
    v122 = *v27;
    v123 = v31;
    v32 = v27[3];
    v124 = v27[2];
    v125 = v32;
    v74 = v62;
    v72 = v60;
    v73 = v61;
    v70 = v58;
    v71 = v59;
    v68 = v56;
    v69 = v57;
    v66 = v54;
    v67 = v55;
    v64 = v52;
    v65 = v53;
    v63 = v51;
    if (sub_10000FE88(&v63) != 1)
    {
      v33 = UInt32.init(_:)(&v63);
      v34 = v33[9];
      v83 = v33[8];
      v84 = v34;
      v85 = v33[10];
      v35 = v33[5];
      v79 = v33[4];
      v80 = v35;
      v36 = v33[7];
      v81 = v33[6];
      v82 = v36;
      v37 = v33[1];
      v75 = *v33;
      v76 = v37;
      v38 = v33[3];
      v77 = v33[2];
      v78 = v38;
      return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v122, &v75);
    }

LABEL_10:
    UInt32.init(_:)(&v63);
    return 0;
  }

  v19 = UInt32.init(_:)(&v110);
  v20 = *(v19 + 80);
  v126 = *(v19 + 64);
  v127 = v20;
  v128 = *(v19 + 96);
  *&v129 = *(v19 + 112);
  v21 = *(v19 + 16);
  v122 = *v19;
  v123 = v21;
  v22 = *(v19 + 48);
  v124 = *(v19 + 32);
  v125 = v22;
  v71 = v59;
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v67 = v55;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  if (sub_10000FE88(&v63) != 1)
  {
    goto LABEL_10;
  }

  v23 = UInt32.init(_:)(&v63);
  v24 = *(v23 + 80);
  v79 = *(v23 + 64);
  v80 = v24;
  v81 = *(v23 + 96);
  *&v82 = *(v23 + 112);
  v25 = *(v23 + 16);
  v75 = *v23;
  v76 = v25;
  v26 = *(v23 + 48);
  v77 = *(v23 + 32);
  v78 = v26;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v122, &v75);
}

void MessageAttribute.BodyStructure.hash(into:)(uint64_t a1)
{
  v3 = v1[9];
  v29 = v1[8];
  v30 = v3;
  v31 = v1[10];
  v32 = *(v1 + 176);
  v4 = v1[5];
  v25 = v1[4];
  v26 = v4;
  v5 = v1[7];
  v27 = v1[6];
  v28 = v5;
  v6 = v1[1];
  v21 = *v1;
  v22 = v6;
  v7 = v1[3];
  v23 = v1[2];
  v24 = v7;
  if (sub_10000FE74(&v21) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    sub_1004A6EB4(0);
    v45[8] = v41;
    v45[9] = v42;
    v45[10] = v43;
    v46 = v44;
    v45[4] = v37;
    v45[5] = v38;
    v45[6] = v39;
    v45[7] = v40;
    v45[0] = v33;
    v45[1] = v34;
    v45[2] = v35;
    v45[3] = v36;
    if (sub_10000FE88(v45) == 1)
    {
      v8 = UInt32.init(_:)(v45);
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 72);
      v49 = *(v8 + 56);
      v50 = v12;
      v13 = *(v8 + 104);
      v51 = *(v8 + 88);
      v52 = v13;
      v14 = *(v8 + 40);
      v47 = *(v8 + 24);
      v48 = v14;
      sub_1004A6EB4(1uLL);
      sub_1003AF454(a1, v9);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003B053C(a1);
    }

    else
    {
      v15 = UInt32.init(_:)(v45);
      v16 = *v15;
      v17 = *(v15 + 24);
      v18 = *(v15 + 56);
      v55 = *(v15 + 40);
      v56 = v18;
      v57 = *(v15 + 72);
      v53 = *(v15 + 8);
      v54 = v17;
      v19 = *(v15 + 136);
      v49 = *(v15 + 120);
      v50 = v19;
      v51 = *(v15 + 152);
      *&v52 = *(v15 + 168);
      v20 = *(v15 + 104);
      v47 = *(v15 + 88);
      v48 = v20;
      sub_1004A6EB4(0);
      BodyStructure.Singlepart.Kind.hash(into:)(a1, v16);
      BodyStructure.Fields.hash(into:)();
      sub_1003B0920(a1);
    }
  }
}

Swift::Int MessageAttribute.BodyStructure.hashValue.getter()
{
  sub_1004A6E94();
  v1 = v0[9];
  v29 = v0[8];
  v30 = v1;
  v31 = v0[10];
  v32 = *(v0 + 176);
  v2 = v0[5];
  v25 = v0[4];
  v26 = v2;
  v3 = v0[7];
  v27 = v0[6];
  v28 = v3;
  v4 = v0[1];
  v21 = *v0;
  v22 = v4;
  v5 = v0[3];
  v23 = v0[2];
  v24 = v5;
  if (sub_10000FE74(&v21) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    sub_1004A6EB4(0);
    v45[8] = v41;
    v45[9] = v42;
    v45[10] = v43;
    v46 = v44;
    v45[4] = v37;
    v45[5] = v38;
    v45[6] = v39;
    v45[7] = v40;
    v45[0] = v33;
    v45[1] = v34;
    v45[2] = v35;
    v45[3] = v36;
    if (sub_10000FE88(v45) == 1)
    {
      v6 = UInt32.init(_:)(v45);
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v6 + 72);
      v49 = *(v6 + 56);
      v50 = v10;
      v11 = *(v6 + 104);
      v51 = *(v6 + 88);
      v52 = v11;
      v12 = *(v6 + 40);
      v47 = *(v6 + 24);
      v48 = v12;
      sub_1004A6EB4(1uLL);
      sub_1003AF454(v20, v7);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003B053C(v20);
    }

    else
    {
      v13 = UInt32.init(_:)(v45);
      v14 = *v13;
      v15 = *(v13 + 24);
      v16 = *(v13 + 56);
      v55 = *(v13 + 40);
      v56 = v16;
      v57 = *(v13 + 72);
      v53 = *(v13 + 8);
      v54 = v15;
      v17 = *(v13 + 136);
      v49 = *(v13 + 120);
      v50 = v17;
      v51 = *(v13 + 152);
      *&v52 = *(v13 + 168);
      v18 = *(v13 + 104);
      v47 = *(v13 + 88);
      v48 = v18;
      sub_1004A6EB4(0);
      BodyStructure.Singlepart.Kind.hash(into:)(v20, v14);
      BodyStructure.Fields.hash(into:)();
      sub_1003B0920(v20);
    }
  }

  return sub_1004A6F14();
}

void sub_1003A7544(uint64_t a1)
{
  v3 = v1[9];
  v40 = v1[8];
  v41 = v3;
  v42 = v1[10];
  v43 = *(v1 + 176);
  v4 = v1[5];
  v36 = v1[4];
  v37 = v4;
  v5 = v1[7];
  v38 = v1[6];
  v39 = v5;
  v6 = v1[1];
  v32 = *v1;
  v33 = v6;
  v7 = v1[3];
  v34 = v1[2];
  v35 = v7;
  if (sub_10000FE74(&v32) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    sub_1004A6EB4(0);
    v19[8] = v40;
    v19[9] = v41;
    v19[10] = v42;
    v20 = v43;
    v19[4] = v36;
    v19[5] = v37;
    v19[6] = v38;
    v19[7] = v39;
    v19[0] = v32;
    v19[1] = v33;
    v19[2] = v34;
    v19[3] = v35;
    if (sub_10000FE88(v19) == 1)
    {
      v8 = UInt32.init(_:)(v19);
      sub_1004A6EB4(1uLL);
      sub_1003AF454(a1, *v8);
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v11 = *(v8 + 72);
      v28 = *(v8 + 56);
      v29 = v11;
      v12 = *(v8 + 104);
      v30 = *(v8 + 88);
      v31 = v12;
      v13 = *(v8 + 40);
      v26 = *(v8 + 24);
      v27 = v13;
      sub_1003B053C(a1);
    }

    else
    {
      v14 = UInt32.init(_:)(v19);
      sub_1004A6EB4(0);
      BodyStructure.Singlepart.Kind.hash(into:)(a1, *v14);
      v15 = *(v14 + 24);
      v16 = *(v14 + 56);
      v23 = *(v14 + 40);
      v24 = v16;
      v25 = *(v14 + 72);
      v21 = *(v14 + 8);
      v22 = v15;
      BodyStructure.Fields.hash(into:)();
      v17 = *(v14 + 136);
      v28 = *(v14 + 120);
      v29 = v17;
      v30 = *(v14 + 152);
      *&v31 = *(v14 + 168);
      v18 = *(v14 + 104);
      v26 = *(v14 + 88);
      v27 = v18;
      sub_1003B0920(a1);
    }
  }
}

Swift::Int sub_1003A7708()
{
  sub_1004A6E94();
  v1 = v0[9];
  v40 = v0[8];
  v41 = v1;
  v42 = v0[10];
  v43 = *(v0 + 176);
  v2 = v0[5];
  v36 = v0[4];
  v37 = v2;
  v3 = v0[7];
  v38 = v0[6];
  v39 = v3;
  v4 = v0[1];
  v32 = *v0;
  v33 = v4;
  v5 = v0[3];
  v34 = v0[2];
  v35 = v5;
  if (sub_10000FE74(&v32) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    sub_1004A6EB4(0);
    v18[8] = v40;
    v18[9] = v41;
    v18[10] = v42;
    v19 = v43;
    v18[4] = v36;
    v18[5] = v37;
    v18[6] = v38;
    v18[7] = v39;
    v18[0] = v32;
    v18[1] = v33;
    v18[2] = v34;
    v18[3] = v35;
    if (sub_10000FE88(v18) == 1)
    {
      v6 = UInt32.init(_:)(v18);
      sub_1004A6EB4(1uLL);
      sub_1003AF454(v20, *v6);
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v9 = *(v6 + 72);
      v28 = *(v6 + 56);
      v29 = v9;
      v10 = *(v6 + 104);
      v30 = *(v6 + 88);
      v31 = v10;
      v11 = *(v6 + 40);
      v26 = *(v6 + 24);
      v27 = v11;
      sub_1003B053C(v20);
    }

    else
    {
      v12 = UInt32.init(_:)(v18);
      sub_1004A6EB4(0);
      BodyStructure.Singlepart.Kind.hash(into:)(v20, *v12);
      v13 = *(v12 + 24);
      v14 = *(v12 + 56);
      v23 = *(v12 + 40);
      v24 = v14;
      v25 = *(v12 + 72);
      v21 = *(v12 + 8);
      v22 = v13;
      BodyStructure.Fields.hash(into:)();
      v15 = *(v12 + 136);
      v28 = *(v12 + 120);
      v29 = v15;
      v30 = *(v12 + 152);
      *&v31 = *(v12 + 168);
      v16 = *(v12 + 104);
      v26 = *(v12 + 88);
      v27 = v16;
      sub_1003B0920(v20);
    }
  }

  return sub_1004A6F14();
}

BOOL sub_1003A78D4(__int128 *a1, __int128 *a2)
{
  v3 = a1[9];
  v95 = a1[8];
  v96 = v3;
  v97 = a1[10];
  v98 = *(a1 + 176);
  v4 = a1[5];
  v91 = a1[4];
  v92 = v4;
  v5 = a1[7];
  v93 = a1[6];
  v94 = v5;
  v6 = a1[1];
  v87 = *a1;
  v88 = v6;
  v7 = a1[3];
  v89 = a1[2];
  v90 = v7;
  if (sub_10000FE74(&v87) == 1)
  {
    v8 = a2[9];
    v61 = a2[8];
    v62 = v8;
    v63 = a2[10];
    v64 = *(a2 + 176);
    v9 = a2[5];
    v57 = a2[4];
    v58 = v9;
    v10 = a2[7];
    v59 = a2[6];
    v60 = v10;
    v11 = a2[1];
    v53 = *a2;
    v54 = v11;
    v12 = a2[3];
    v55 = a2[2];
    v56 = v12;
    return sub_10000FE74(&v53) == 1;
  }

  v14 = a2[9];
  v61 = a2[8];
  v62 = v14;
  v63 = a2[10];
  v64 = *(a2 + 176);
  v15 = a2[5];
  v57 = a2[4];
  v58 = v15;
  v16 = a2[7];
  v59 = a2[6];
  v60 = v16;
  v17 = a2[1];
  v53 = *a2;
  v54 = v17;
  v18 = a2[3];
  v55 = a2[2];
  v56 = v18;
  if (sub_10000FE74(&v53) == 1)
  {
    return 0;
  }

  v51[8] = v95;
  v51[9] = v96;
  v51[10] = v97;
  v52 = v98;
  v51[4] = v91;
  v51[5] = v92;
  v51[6] = v93;
  v51[7] = v94;
  v51[0] = v87;
  v51[1] = v88;
  v51[2] = v89;
  v51[3] = v90;
  if (sub_10000FE88(v51) != 1)
  {
    v27 = UInt32.init(_:)(v51);
    v28 = v27[9];
    v73 = v27[8];
    v74 = v28;
    v75 = v27[10];
    v29 = v27[5];
    v69 = v27[4];
    v70 = v29;
    v30 = v27[7];
    v71 = v27[6];
    v72 = v30;
    v31 = v27[1];
    v65 = *v27;
    v66 = v31;
    v32 = v27[3];
    v67 = v27[2];
    v68 = v32;
    v50 = v64;
    v48 = v62;
    v49 = v63;
    v46 = v60;
    v47 = v61;
    v44 = v58;
    v45 = v59;
    v42 = v56;
    v43 = v57;
    v40 = v54;
    v41 = v55;
    v39 = v53;
    if (sub_10000FE88(&v39) != 1)
    {
      v33 = UInt32.init(_:)(&v39);
      v34 = v33[9];
      v84 = v33[8];
      v85 = v34;
      v86 = v33[10];
      v35 = v33[5];
      v80 = v33[4];
      v81 = v35;
      v36 = v33[7];
      v82 = v33[6];
      v83 = v36;
      v37 = v33[1];
      v76 = *v33;
      v77 = v37;
      v38 = v33[3];
      v78 = v33[2];
      v79 = v38;
      return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v65, &v76);
    }

LABEL_10:
    UInt32.init(_:)(&v39);
    return 0;
  }

  v19 = UInt32.init(_:)(v51);
  v20 = *(v19 + 80);
  v69 = *(v19 + 64);
  v70 = v20;
  v71 = *(v19 + 96);
  *&v72 = *(v19 + 112);
  v21 = *(v19 + 16);
  v65 = *v19;
  v66 = v21;
  v22 = *(v19 + 48);
  v67 = *(v19 + 32);
  v68 = v22;
  v47 = v61;
  v48 = v62;
  v49 = v63;
  v50 = v64;
  v43 = v57;
  v44 = v58;
  v45 = v59;
  v46 = v60;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  v42 = v56;
  if (sub_10000FE88(&v39) != 1)
  {
    goto LABEL_10;
  }

  v23 = UInt32.init(_:)(&v39);
  v24 = *(v23 + 80);
  v80 = *(v23 + 64);
  v81 = v24;
  v82 = *(v23 + 96);
  *&v83 = *(v23 + 112);
  v25 = *(v23 + 16);
  v76 = *v23;
  v77 = v25;
  v26 = *(v23 + 48);
  v78 = *(v23 + 32);
  v79 = v26;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v65, &v76);
}

void BodyStructure.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  v21[8] = *(v1 + 128);
  v21[9] = v3;
  v21[10] = *(v1 + 160);
  v22 = *(v1 + 176);
  v4 = *(v1 + 80);
  v21[4] = *(v1 + 64);
  v21[5] = v4;
  v5 = *(v1 + 112);
  v21[6] = *(v1 + 96);
  v21[7] = v5;
  v6 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v6;
  v7 = *(v1 + 48);
  v21[2] = *(v1 + 32);
  v21[3] = v7;
  if (sub_10000FE88(v21) == 1)
  {
    v8 = UInt32.init(_:)(v21);
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    v12 = *(v8 + 72);
    v25 = *(v8 + 56);
    v26 = v12;
    v13 = *(v8 + 104);
    v27 = *(v8 + 88);
    v28 = v13;
    v14 = *(v8 + 40);
    v23 = *(v8 + 24);
    v24 = v14;
    sub_1004A6EB4(1uLL);
    sub_1003AF454(a1, v9);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B053C(a1);
  }

  else
  {
    v15 = UInt32.init(_:)(v21);
    v16 = *v15;
    v17 = *(v15 + 24);
    v18 = *(v15 + 56);
    v31 = *(v15 + 40);
    v32 = v18;
    v33 = *(v15 + 72);
    v29 = *(v15 + 8);
    v30 = v17;
    v19 = *(v15 + 136);
    v25 = *(v15 + 120);
    v26 = v19;
    v27 = *(v15 + 152);
    *&v28 = *(v15 + 168);
    v20 = *(v15 + 104);
    v23 = *(v15 + 88);
    v24 = v20;
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, v16);
    BodyStructure.Fields.hash(into:)();
    sub_1003B0920(a1);
  }
}

Swift::Int BodyStructure.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *(v0 + 144);
  v21[8] = *(v0 + 128);
  v21[9] = v1;
  v21[10] = *(v0 + 160);
  v22 = *(v0 + 176);
  v2 = *(v0 + 80);
  v21[4] = *(v0 + 64);
  v21[5] = v2;
  v3 = *(v0 + 112);
  v21[6] = *(v0 + 96);
  v21[7] = v3;
  v4 = *(v0 + 16);
  v21[0] = *v0;
  v21[1] = v4;
  v5 = *(v0 + 48);
  v21[2] = *(v0 + 32);
  v21[3] = v5;
  if (sub_10000FE88(v21) == 1)
  {
    v6 = UInt32.init(_:)(v21);
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 72);
    v25 = *(v6 + 56);
    v26 = v10;
    v11 = *(v6 + 104);
    v27 = *(v6 + 88);
    v28 = v11;
    v12 = *(v6 + 40);
    v23 = *(v6 + 24);
    v24 = v12;
    sub_1004A6EB4(1uLL);
    sub_1003AF454(v20, v7);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B053C(v20);
  }

  else
  {
    v13 = UInt32.init(_:)(v21);
    v14 = *v13;
    v15 = *(v13 + 24);
    v16 = *(v13 + 56);
    v31 = *(v13 + 40);
    v32 = v16;
    v33 = *(v13 + 72);
    v29 = *(v13 + 8);
    v30 = v15;
    v17 = *(v13 + 136);
    v25 = *(v13 + 120);
    v26 = v17;
    v27 = *(v13 + 152);
    *&v28 = *(v13 + 168);
    v18 = *(v13 + 104);
    v23 = *(v13 + 88);
    v24 = v18;
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(v20, v14);
    BodyStructure.Fields.hash(into:)();
    sub_1003B0920(v20);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003A7EBC()
{
  sub_1004A6E94();
  v1 = *(v0 + 144);
  v30[8] = *(v0 + 128);
  v30[9] = v1;
  v30[10] = *(v0 + 160);
  v31 = *(v0 + 176);
  v2 = *(v0 + 80);
  v30[4] = *(v0 + 64);
  v30[5] = v2;
  v3 = *(v0 + 112);
  v30[6] = *(v0 + 96);
  v30[7] = v3;
  v4 = *(v0 + 16);
  v30[0] = *v0;
  v30[1] = v4;
  v5 = *(v0 + 48);
  v30[2] = *(v0 + 32);
  v30[3] = v5;
  if (sub_10000FE88(v30) == 1)
  {
    v6 = UInt32.init(_:)(v30);
    sub_1004A6EB4(1uLL);
    sub_1003AF454(v18, *v6);
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v9 = *(v6 + 72);
    v26 = *(v6 + 56);
    v27 = v9;
    v10 = *(v6 + 104);
    v28 = *(v6 + 88);
    v29 = v10;
    v11 = *(v6 + 40);
    v24 = *(v6 + 24);
    v25 = v11;
    sub_1003B053C(v18);
  }

  else
  {
    v12 = UInt32.init(_:)(v30);
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(v18, *v12);
    v13 = *(v12 + 24);
    v14 = *(v12 + 56);
    v21 = *(v12 + 40);
    v22 = v14;
    v23 = *(v12 + 72);
    v19 = *(v12 + 8);
    v20 = v13;
    BodyStructure.Fields.hash(into:)();
    v15 = *(v12 + 136);
    v26 = *(v12 + 120);
    v27 = v15;
    v28 = *(v12 + 152);
    *&v29 = *(v12 + 168);
    v16 = *(v12 + 104);
    v24 = *(v12 + 88);
    v25 = v16;
    sub_1003B0920(v18);
  }

  return sub_1004A6F14();
}

void sub_1003A8030(uint64_t a1)
{
  v3 = *(v1 + 144);
  v29[8] = *(v1 + 128);
  v29[9] = v3;
  v29[10] = *(v1 + 160);
  v30 = *(v1 + 176);
  v4 = *(v1 + 80);
  v29[4] = *(v1 + 64);
  v29[5] = v4;
  v5 = *(v1 + 112);
  v29[6] = *(v1 + 96);
  v29[7] = v5;
  v6 = *(v1 + 16);
  v29[0] = *v1;
  v29[1] = v6;
  v7 = *(v1 + 48);
  v29[2] = *(v1 + 32);
  v29[3] = v7;
  if (sub_10000FE88(v29) == 1)
  {
    v8 = UInt32.init(_:)(v29);
    sub_1004A6EB4(1uLL);
    sub_1003AF454(a1, *v8);
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v21 = *(v8 + 56);
    v23 = *(v8 + 72);
    v25 = *(v8 + 88);
    v27 = *(v8 + 104);
    v17 = *(v8 + 24);
    v19 = *(v8 + 40);
    sub_1003B053C(a1);
  }

  else
  {
    v11 = UInt32.init(_:)(v29);
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, *v11);
    v14 = *(v11 + 40);
    v15 = *(v11 + 56);
    v16 = *(v11 + 72);
    v12 = *(v11 + 8);
    v13 = *(v11 + 24);
    BodyStructure.Fields.hash(into:)();
    v22 = *(v11 + 120);
    v24 = *(v11 + 136);
    v26 = *(v11 + 152);
    v28 = *(v11 + 168);
    v18 = *(v11 + 88);
    v20 = *(v11 + 104);
    sub_1003B0920(a1);
  }
}

Swift::Int sub_1003A8190()
{
  sub_1004A6E94();
  v1 = *(v0 + 144);
  v30[8] = *(v0 + 128);
  v30[9] = v1;
  v30[10] = *(v0 + 160);
  v31 = *(v0 + 176);
  v2 = *(v0 + 80);
  v30[4] = *(v0 + 64);
  v30[5] = v2;
  v3 = *(v0 + 112);
  v30[6] = *(v0 + 96);
  v30[7] = v3;
  v4 = *(v0 + 16);
  v30[0] = *v0;
  v30[1] = v4;
  v5 = *(v0 + 48);
  v30[2] = *(v0 + 32);
  v30[3] = v5;
  if (sub_10000FE88(v30) == 1)
  {
    v6 = UInt32.init(_:)(v30);
    sub_1004A6EB4(1uLL);
    sub_1003AF454(v18, *v6);
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v9 = *(v6 + 72);
    v26 = *(v6 + 56);
    v27 = v9;
    v10 = *(v6 + 104);
    v28 = *(v6 + 88);
    v29 = v10;
    v11 = *(v6 + 40);
    v24 = *(v6 + 24);
    v25 = v11;
    sub_1003B053C(v18);
  }

  else
  {
    v12 = UInt32.init(_:)(v30);
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(v18, *v12);
    v13 = *(v12 + 24);
    v14 = *(v12 + 56);
    v21 = *(v12 + 40);
    v22 = v14;
    v23 = *(v12 + 72);
    v19 = *(v12 + 8);
    v20 = v13;
    BodyStructure.Fields.hash(into:)();
    v15 = *(v12 + 136);
    v26 = *(v12 + 120);
    v27 = v15;
    v28 = *(v12 + 152);
    *&v29 = *(v12 + 168);
    v16 = *(v12 + 104);
    v24 = *(v12 + 88);
    v25 = v16;
    sub_1003B0920(v18);
  }

  return sub_1004A6F14();
}

BOOL sub_1003A8300(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return _s12NIOIMAPCore213BodyStructureO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v15);
}

uint64_t BodyStructure.subpartCount.getter()
{
  v1 = *(v0 + 144);
  v19[8] = *(v0 + 128);
  v19[9] = v1;
  v19[10] = *(v0 + 160);
  v20 = *(v0 + 176);
  v2 = *(v0 + 80);
  v19[4] = *(v0 + 64);
  v19[5] = v2;
  v3 = *(v0 + 112);
  v19[6] = *(v0 + 96);
  v19[7] = v3;
  v4 = *(v0 + 16);
  v19[0] = *v0;
  v19[1] = v4;
  v5 = *(v0 + 48);
  v19[2] = *(v0 + 32);
  v19[3] = v5;
  if (sub_10000FE88(v19) == 1)
  {
    return *(*UInt32.init(_:)(v19) + 16);
  }

  v7 = *UInt32.init(_:)(v19);
  if (v7 >> 62 != 1)
  {
    return 0;
  }

  v8 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  memcpy(__dst, ((v7 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
  v9 = *(v8 + 296);
  v10 = *(v8 + 312);
  v11 = *(v8 + 264);
  v29 = *(v8 + 280);
  v30 = v9;
  v31 = v10;
  v32 = *(v8 + 328);
  v12 = *(v8 + 232);
  v25 = *(v8 + 216);
  v26 = v12;
  v27 = *(v8 + 248);
  v28 = v11;
  v13 = *(v8 + 168);
  v21 = *(v8 + 152);
  v22 = v13;
  v14 = *(v8 + 200);
  v23 = *(v8 + 184);
  v24 = v14;
  v15 = sub_100259990(__dst, &v17);
  v16 = BodyStructure.subpartCount.getter(v15);
  sub_1002599EC(__dst);
  return v16;
}

uint64_t BodyStructure.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003A861C(a1, v10);
  result = sub_10000FE74(v10);
  if (result == 1)
  {
    sub_1004A6724(32);

    v12._countAndFlagsBits = sub_1004A5824();
    sub_1004A5994(v12);

    result = sub_1004A69A4();
    __break(1u);
  }

  else
  {
    v4 = v10[9];
    v5 = v10[10];
    v6 = v10[7];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v4;
    *(a2 + 160) = v5;
    *(a2 + 176) = v11;
    v7 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v7;
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v8 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v8;
    v9 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v9;
  }

  return result;
}

double sub_1003A861C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1003A9DF4(*(a1 + 32), &v29);
    v25 = v37;
    v26 = v38;
    v27 = v39;
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v41 = v29;
    v42 = v30;
    v28 = v40;
    v52 = v40;
    v43 = v31;
    v44 = v32;
    if (sub_10000FE74(&v41) != 1)
    {
      v61 = v49;
      v62 = v50;
      v63 = v51;
      v64 = v52;
      v57 = v45;
      v58 = v46;
      v59 = v47;
      v60 = v48;
      v53 = v41;
      v54 = v42;
      v55 = v43;
      v56 = v44;
      SectionSpecifier.Part.dropFirst()();
      sub_1003A861C(&v65);

      sub_100025F40(&v29, &qword_1005CE210, &unk_1004D0930);
      goto LABEL_7;
    }

    v73 = v25;
    v74 = v26;
    v75 = v27;
    v76 = v28;
    v69 = v21;
    v70 = v22;
    v71 = v23;
    v72 = v24;
    v65 = v17;
    v66 = v18;
    v4 = v19;
    v5 = v20;
  }

  else
  {
    v6 = *(v2 + 144);
    v61 = *(v2 + 128);
    v62 = v6;
    v63 = *(v2 + 160);
    v64 = *(v2 + 176);
    v7 = *(v2 + 80);
    v57 = *(v2 + 64);
    v58 = v7;
    v8 = *(v2 + 112);
    v59 = *(v2 + 96);
    v60 = v8;
    v9 = *(v2 + 16);
    v53 = *v2;
    v54 = v9;
    v10 = *(v2 + 48);
    v55 = *(v2 + 32);
    v56 = v10;
    UInt32.init(_:)(&v53);
    sub_1000510B4(v2, &v65);
    v73 = v61;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v69 = v57;
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v65 = v53;
    v66 = v54;
    v4 = v55;
    v5 = v56;
  }

  v67 = v4;
  v68 = v5;
LABEL_7:
  v11 = v74;
  *(a2 + 128) = v73;
  *(a2 + 144) = v11;
  *(a2 + 160) = v75;
  *(a2 + 176) = v76;
  v12 = v70;
  *(a2 + 64) = v69;
  *(a2 + 80) = v12;
  v13 = v72;
  *(a2 + 96) = v71;
  *(a2 + 112) = v13;
  v14 = v66;
  *a2 = v65;
  *(a2 + 16) = v14;
  result = *&v67;
  v16 = v68;
  *(a2 + 32) = v67;
  *(a2 + 48) = v16;
  return result;
}

double BodyStructure.find(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003A861C(a1, v9);
  v3 = v17;
  *(a2 + 128) = v16;
  *(a2 + 144) = v3;
  *(a2 + 160) = v18;
  *(a2 + 176) = v19;
  v4 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v4;
  v5 = v15;
  *(a2 + 96) = v14;
  *(a2 + 112) = v5;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

uint64_t BodyStructure.endIndex.getter()
{
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004CEAA0;
  *(v0 + 32) = BodyStructure.subpartCount.getter() + 1;
  return v0;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall BodyStructure.index(before:)(NIOIMAPCore2::SectionSpecifier::Part before)
{
  v2 = *(before.array._rawValue + 2);
  if (v2)
  {
    v3 = *(before.array._rawValue + v2 + 3);
    v4 = v2 - 1;
    sub_1004A6DA4();
    swift_unknownObjectRetain_n();

    v5 = swift_dynamicCastClass();
    if (v3 < 2)
    {
      if (!v5)
      {
        swift_unknownObjectRelease();
        v5 = _swiftEmptyArrayStorage;
      }

      v10 = v5[2];

      if (v10 == v4)
      {
        v9 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v9)
        {
          swift_unknownObjectRelease();
          return _swiftEmptyArrayStorage;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1003AA91C(before.array._rawValue, before.array._rawValue + 32, 0, (2 * v4) | 1);
        v9 = v13;
        swift_unknownObjectRelease();
      }

      return v9;
    }

    if (!v5)
    {
      swift_unknownObjectRelease();
      v5 = _swiftEmptyArrayStorage;
    }

    v6 = v5[2];

    if (v6 == v4)
    {
      v7 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v7)
      {
LABEL_9:
        sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004CEAA0;
        *(inited + 32) = v3 - 1;
        sub_1003AA9EC(inited);
        v9 = sub_1003A8BF4(v7);

        return v9;
      }

      v7 = _swiftEmptyArrayStorage;
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1003AA91C(before.array._rawValue, before.array._rawValue + 32, 0, (2 * v4) | 1);
      v7 = v12;
    }

    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  swift_bridgeObjectRetain_n();
  sub_1004A6724(32);

  v14._countAndFlagsBits = sub_1004A5824();
  sub_1004A5994(v14);

  result.array._rawValue = sub_1004A69A4();
  __break(1u);
  return result;
}

unint64_t sub_1003A8BB0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t sub_1003A8BF4(uint64_t a1)
{
  swift_bridgeObjectRetain_n();
  sub_1003A861C(a1, &v10);

  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  if (sub_10000FE74(&v22) == 1)
  {
    return a1;
  }

  else
  {
    while (1)
    {
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
      if (!BodyStructure.subpartCount.getter())
      {
        sub_100025F40(&v10, &qword_1005CE210, &unk_1004D0930);
        return a1;
      }

      v2 = BodyStructure.subpartCount.getter();
      sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004CEAA0;
      *(inited + 32) = v2;
      v4 = *(a1 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v6 = *(a1 + 24) >> 1, v7 = a1, v6 <= v4))
      {
        result = sub_100460CC0(result, v4 + 1, 1, a1);
        v7 = result;
        v6 = *(result + 24) >> 1;
      }

      v8 = *(v7 + 16);
      if (v6 <= v8)
      {
        break;
      }

      *(v7 + 8 * v8 + 32) = *(inited + 32);

      ++*(v7 + 16);
      sub_100025F40(&v10, &qword_1005CE210, &unk_1004D0930);

      sub_1003A861C(v9, &v10);

      v30 = v18;
      v31 = v19;
      v32 = v20;
      v33 = v21;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      v29 = v17;
      v22 = v10;
      v23 = v11;
      v24 = v12;
      v25 = v13;
      a1 = v7;
      if (sub_10000FE74(&v22) == 1)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return result;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall BodyStructure.index(after:)(NIOIMAPCore2::SectionSpecifier::Part after)
{
  rawValue = after.array._rawValue;
  sub_1003A861C(after.array._rawValue, v14);
  v50 = v14[8];
  v51 = v14[9];
  v52 = v14[10];
  v53 = v15;
  v46 = v14[4];
  v47 = v14[5];
  v48 = v14[6];
  v49 = v14[7];
  v42 = v14[0];
  v43 = v14[1];
  v44 = v14[2];
  v45 = v14[3];
  if (sub_10000FE74(&v42) != 1)
  {
    v62 = v50;
    v63 = v51;
    v64 = v52;
    v65 = v53;
    v58 = v46;
    v59 = v47;
    v60 = v48;
    v61 = v49;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v57 = v45;
    if (BodyStructure.subpartCount.getter())
    {
      *&v30 = rawValue;

      sub_1003AA9EC(&off_1005B8DB0);
      sub_100025F40(v14, &qword_1005CE210, &unk_1004D0930);
      return v30;
    }

    v3 = rawValue[2];
    if (!v3)
    {
LABEL_17:
      sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1004CEAA0;
      *(v12 + 32) = BodyStructure.subpartCount.getter() + 1;
      sub_100025F40(v14, &qword_1005CE210, &unk_1004D0930);
      return v12;
    }

    swift_bridgeObjectRetain_n();
    while (1)
    {
      v4 = rawValue[v3 + 3];

      v5 = rawValue[2];
      v6 = v5 - 1;
      if (v5 == 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else if (v5)
      {
        sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
        v7 = swift_allocObject();
        v8 = j__malloc_size(v7);
        v9 = v8 - 32;
        if (v8 < 32)
        {
          v9 = v8 - 25;
        }

        v7[2] = v6;
        v7[3] = 2 * (v9 >> 3);
        memcpy(v7 + 4, rawValue + 4, 8 * v6);
      }

      else
      {

        v7 = rawValue;
      }

      sub_1003A861C(v10, v16);
      v26 = v16[8];
      v27 = v16[9];
      v28 = v16[10];
      v29 = v17;
      v22 = v16[4];
      v23 = v16[5];
      v24 = v16[6];
      v25 = v16[7];
      v18 = v16[0];
      v19 = v16[1];
      v20 = v16[2];
      v21 = v16[3];
      if (sub_10000FE74(&v18) == 1)
      {
        break;
      }

      v38 = v26;
      v39 = v27;
      v40 = v28;
      v41 = v29;
      v34 = v22;
      v35 = v23;
      v36 = v24;
      v37 = v25;
      v30 = v18;
      v31 = v19;
      v32 = v20;
      v33 = v21;

      v11 = BodyStructure.subpartCount.getter();
      sub_100025F40(v16, &qword_1005CE210, &unk_1004D0930);
      if (v4 < v11)
      {

        sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1004CEAA0;
        *(v13 + 32) = v4 + 1;
        sub_1003AA9EC(v13);
        sub_100025F40(v14, &qword_1005CE210, &unk_1004D0930);
        return v7;
      }

      v3 = v7[2];
      rawValue = v7;
      if (!v3)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
  }

  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_1004A6724(32);

  *&v54 = 0xD00000000000001ELL;
  *(&v54 + 1) = 0x80000001004B04F0;
  *&v30 = rawValue;

  v66._countAndFlagsBits = sub_1004A5824();
  sub_1004A5994(v66);

  result.array._rawValue = sub_1004A69A4();
  __break(1u);
  return result;
}

void *sub_1003A9300(void *rawValue, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {

    v5 = 0;
    do
    {
      --v5;
      v4.array._rawValue = BodyStructure.index(before:)(rawValue).array._rawValue;

      rawValue = v4.array._rawValue;
    }

    while (v5 > v2);
  }

  else
  {

    if (v2)
    {
      do
      {
        v4.array._rawValue = BodyStructure.index(after:)(rawValue).array._rawValue;

        rawValue = v4.array._rawValue;
        --v2;
      }

      while (v2);
    }

    else
    {
      return rawValue;
    }
  }

  return v4.array._rawValue;
}

NIOIMAPCore2::SectionSpecifier::Part sub_1003A939C@<X0>(NIOIMAPCore2::SectionSpecifier::Part *a1@<X0>, NIOIMAPCore2::SectionSpecifier::Part *a2@<X8>)
{
  v13 = v2[8];
  v14 = v2[9];
  v15 = v2[10];
  v16 = *(v2 + 176);
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v12 = v2[7];
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  result.array._rawValue = BodyStructure.index(before:)(a1->array._rawValue).array._rawValue;
  a2->array._rawValue = result.array._rawValue;
  return result;
}

void *sub_1003A9424@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = v3[8];
  v15 = v3[9];
  v16 = v3[10];
  v17 = *(v3 + 176);
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = v3[7];
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  result = sub_1003A9300(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003A9498(uint64_t *a1, uint64_t *a2)
{
  v12 = v2[8];
  v13 = v2[9];
  v14 = v2[10];
  v15 = *(v2 + 176);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_1003AAAD8(*a1, *a2);
}

uint64_t sub_1003A9514@<X0>(uint64_t *a1@<X8>)
{
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004CEAA0;
  result = BodyStructure.subpartCount.getter();
  *(v2 + 32) = result + 1;
  *a1 = v2;
  return result;
}

void (*sub_1003A957C(uint64_t *a1, uint64_t *a2))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x221uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = (v5 + 184);
  v8 = *a2;
  v9 = *(v2 + 144);
  *(v6 + 128) = *(v2 + 128);
  *(v6 + 144) = v9;
  *(v6 + 160) = *(v2 + 160);
  *(v6 + 176) = *(v2 + 176);
  v10 = *(v2 + 80);
  *(v6 + 64) = *(v2 + 64);
  *(v6 + 80) = v10;
  v11 = *(v2 + 112);
  *(v6 + 96) = *(v2 + 96);
  *(v6 + 112) = v11;
  v12 = *(v2 + 16);
  *v6 = *v2;
  *(v6 + 16) = v12;
  v13 = *(v2 + 48);
  *(v6 + 32) = *(v2 + 32);
  *(v6 + 48) = v13;
  BodyStructure.subscript.getter(v8, v7);
  v14 = v7[9];
  v15 = v7[10];
  v16 = v7[7];
  *(v6 + 496) = v7[8];
  *(v6 + 512) = v14;
  *(v6 + 528) = v15;
  v17 = v7[5];
  v18 = v7[6];
  *(v6 + 432) = *(v6 + 248);
  *(v6 + 448) = v17;
  *(v6 + 544) = *(v6 + 360);
  *(v6 + 464) = v18;
  *(v6 + 480) = v16;
  v19 = *(v6 + 200);
  *(v6 + 368) = *(v6 + 184);
  *(v6 + 384) = v19;
  v20 = *(v6 + 232);
  *(v6 + 400) = *(v6 + 216);
  *(v6 + 416) = v20;
  return sub_1003A9680;
}

void sub_1003A9680(void **a1)
{
  v1 = *a1;
  sub_100051110(*a1 + 184);

  free(v1);
}

uint64_t sub_1003A96BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = v2[8];
  v13 = v2[9];
  v14 = v2[10];
  v15 = *(v2 + 176);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_1003A9728(*a1, a1[1], a2);
}

uint64_t sub_1003A9728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = BodyStructure.subpartCount.getter() + 1;
  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(inited, _swiftEmptyArrayStorage);
  if (result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(a1, _swiftEmptyArrayStorage);
  if (result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(inited, a2);
  result = swift_setDeallocating();
  if (!v9)
  {
    v10 = *(v3 + 144);
    *(a3 + 144) = *(v3 + 128);
    *(a3 + 160) = v10;
    *(a3 + 176) = *(v3 + 160);
    *(a3 + 192) = *(v3 + 176);
    v11 = *(v3 + 80);
    *(a3 + 80) = *(v3 + 64);
    *(a3 + 96) = v11;
    v12 = *(v3 + 112);
    *(a3 + 112) = *(v3 + 96);
    *(a3 + 128) = v12;
    v13 = *(v3 + 16);
    *(a3 + 16) = *v3;
    *(a3 + 32) = v13;
    v14 = *(v3 + 48);
    *(a3 + 48) = *(v3 + 32);
    *(a3 + 64) = v14;
    *a3 = a1;
    *(a3 + 8) = a2;
    sub_1000510B4(v3, v15);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1003A9848@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v4 = v1[7];
  v27 = v1[8];
  v28 = v3;
  v5 = v1[9];
  v29 = v1[10];
  v6 = v1[5];
  v8 = v1[3];
  v23 = v1[4];
  v7 = v23;
  v24 = v6;
  v9 = v1[5];
  v10 = v1[7];
  v25 = v1[6];
  v11 = v25;
  v26 = v10;
  v12 = v1[1];
  v20[0] = *v1;
  v20[1] = v12;
  v13 = v1[3];
  v15 = *v1;
  v14 = v1[1];
  v21 = v1[2];
  v16 = v21;
  v22 = v13;
  *(a1 + 128) = v27;
  *(a1 + 144) = v5;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v7;
  *(a1 + 80) = v9;
  *(a1 + 96) = v11;
  *(a1 + 112) = v4;
  *a1 = v15;
  *(a1 + 16) = v14;
  v30 = *(v1 + 176);
  *(a1 + 176) = *(v1 + 176);
  *(a1 + 32) = v16;
  *(a1 + 48) = v8;
  *(a1 + 184) = _swiftEmptyArrayStorage;
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004CEAA0;
  sub_1000510B4(v20, v19);
  result = BodyStructure.subpartCount.getter();
  *(v17 + 32) = result + 1;
  *(a1 + 192) = v17;
  return result;
}

uint64_t sub_1003A9948()
{
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[10];
  v15 = *(v0 + 176);
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[7];
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v7 = v0[3];
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = BodyStructure.subpartCount.getter() + 1;
  v2 = sub_1003AAAD8(_swiftEmptyArrayStorage, inited);
  swift_setDeallocating();
  return v2;
}

void *sub_1003A9A18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v18 = v4[8];
  v19 = v4[9];
  v20 = v4[10];
  v21 = *(v4 + 176);
  v14 = v4[4];
  v15 = v4[5];
  v16 = v4[6];
  v17 = v4[7];
  v10 = *v4;
  v11 = v4[1];
  v12 = v4[2];
  v13 = v4[3];
  v8 = sub_1003AAAD8(*a1, *a3);
  if (a2 < 1)
  {
    if (v8 > 0 || v8 <= a2)
    {
      goto LABEL_8;
    }
  }

  else if (v8 < 0 || v8 >= a2)
  {
LABEL_8:
    result = sub_1003A9300(v7, a2);
    goto LABEL_9;
  }

  result = 0;
LABEL_9:
  *a4 = result;
  return result;
}

BOOL sub_1003A9ADC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(*a1, *a2);
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(v2, v3);
  if (!result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

BOOL sub_1003A9B28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(*a1, *a2);
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(v3, v2);
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

BOOL sub_1003A9B74(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(*a1, *a2);
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(v3, v2);
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

NIOIMAPCore2::SectionSpecifier::Part sub_1003A9BC0@<X0>(NIOIMAPCore2::SectionSpecifier::Part *a1@<X0>, NIOIMAPCore2::SectionSpecifier::Part *a2@<X8>)
{
  v13 = v2[8];
  v14 = v2[9];
  v15 = v2[10];
  v16 = *(v2 + 176);
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v12 = v2[7];
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  result.array._rawValue = BodyStructure.index(after:)(a1->array._rawValue).array._rawValue;
  a2->array._rawValue = result.array._rawValue;
  return result;
}

uint64_t sub_1003A9C48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v16 = v4[8];
  v17 = v4[9];
  v18 = v4[10];
  v19 = *(v4 + 176);
  v12 = v4[4];
  v13 = v4[5];
  v14 = v4[6];
  v15 = v4[7];
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  v11 = v4[3];
  v6 = a4(*a1);

  *a1 = v6;
  return result;
}

__n128 sub_1003A9CD4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 160);
  *(a1 + 176) = *(v1 + 176);
  v3 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v3;
  v4 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v4;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  result = *(v1 + 32);
  v7 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  *(a1 + 184) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1003A9D1C()
{
  v1 = *(v0 + 144);
  v8[8] = *(v0 + 128);
  v8[9] = v1;
  v8[10] = *(v0 + 160);
  v9 = *(v0 + 176);
  v2 = *(v0 + 80);
  v8[4] = *(v0 + 64);
  v8[5] = v2;
  v3 = *(v0 + 112);
  v8[6] = *(v0 + 96);
  v8[7] = v3;
  v4 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v4;
  v5 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v5;
  v6 = sub_1003AA830(v8);
  sub_100051110(v8);
  return v6;
}

uint64_t sub_1003A9D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = v3[8];
  v14 = v3[9];
  v15 = v3[10];
  v16 = *(v3 + 176);
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  return sub_1003AAC54(a1, a2, a3);
}

double sub_1003A9DF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 1)
  {
    goto LABEL_10;
  }

  v5 = *(v2 + 144);
  v84[8] = *(v2 + 128);
  v84[9] = v5;
  v84[10] = *(v2 + 160);
  v85 = *(v2 + 176);
  v6 = *(v2 + 80);
  v84[4] = *(v2 + 64);
  v84[5] = v6;
  v7 = *(v2 + 112);
  v84[6] = *(v2 + 96);
  v84[7] = v7;
  v8 = *(v2 + 16);
  v84[0] = *v2;
  v84[1] = v8;
  v9 = *(v2 + 48);
  v84[2] = *(v2 + 32);
  v84[3] = v9;
  if (sub_10000FE88(v84) != 1)
  {
    v23 = *UInt32.init(_:)(v84);
    if (v23 >> 62 == 1)
    {
      v24 = v23 & 0x3FFFFFFFFFFFFFFFLL;
      memcpy(__dst, ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      v25 = *(v24 + 296);
      v26 = *(v24 + 312);
      v27 = *(v24 + 264);
      v94 = *(v24 + 280);
      v95 = v25;
      v96 = v26;
      v97 = *(v24 + 328);
      v28 = *(v24 + 232);
      v90 = *(v24 + 216);
      v91 = v28;
      v92 = *(v24 + 248);
      v93 = v27;
      v29 = *(v24 + 168);
      v86 = *(v24 + 152);
      v87 = v29;
      v30 = *(v24 + 200);
      v88 = *(v24 + 184);
      v89 = v30;
      sub_100259990(__dst, &v55);
      v31 = v80;
      sub_1003A9DF4(v80, a1);
      v82[8] = v80[8];
      v82[9] = v80[9];
      v82[10] = v80[10];
      v83 = v81;
      v82[4] = v80[4];
      v82[5] = v80[5];
      v82[6] = v80[6];
      v82[7] = v80[7];
      v82[0] = v80[0];
      v82[1] = v80[1];
      v82[2] = v80[2];
      v82[3] = v80[3];
      if (sub_10000FE74(v82) == 1)
      {
        v31 = &__dst[136];
        sub_1000510B4(&__dst[136], &v55);
      }

      sub_1002599EC(__dst);
      v32 = *(v31 + 9);
      v75 = *(v31 + 8);
      v76 = v32;
      v77 = *(v31 + 10);
      v78 = v31[176];
      v33 = *(v31 + 5);
      v71 = *(v31 + 4);
      v72 = v33;
      v34 = *(v31 + 7);
      v73 = *(v31 + 6);
      v74 = v34;
      v35 = *(v31 + 1);
      v67 = *v31;
      v68 = v35;
      v36 = *(v31 + 3);
      v69 = *(v31 + 2);
      v70 = v36;
      v51 = v75;
      v52 = v76;
      v53 = v77;
      v54 = v78;
      v47 = v71;
      v48 = v72;
      v49 = v73;
      v50 = v74;
      v43 = v67;
      v44 = v68;
      v45 = v69;
      v46 = v36;
      UInt32.init(_:)(&v43);
      v63 = v51;
      v64 = v52;
      v65 = v53;
      v66 = v54;
      v59 = v47;
      v60 = v48;
      v61 = v49;
      v62 = v50;
      v55 = v43;
      v56 = v44;
      v21 = v45;
      v22 = v46;
      goto LABEL_9;
    }

LABEL_10:
    sub_1000519B0(&v55);
    goto LABEL_11;
  }

  v10 = UInt32.init(_:)(v84);
  if (*(*v10 + 16) < a1)
  {
    goto LABEL_10;
  }

  v11 = *v10 + 184 * a1;
  v12 = *(v11 - 152);
  v13 = *(v11 - 136);
  v14 = *(v11 - 104);
  v88 = *(v11 - 120);
  v89 = v14;
  v86 = v12;
  v87 = v13;
  v15 = *(v11 - 88);
  v16 = *(v11 - 72);
  v17 = *(v11 - 40);
  v92 = *(v11 - 56);
  v93 = v17;
  v90 = v15;
  v91 = v16;
  v18 = *(v11 - 24);
  v19 = *(v11 - 8);
  v20 = *(v11 + 8);
  v97 = *(v11 + 24);
  v95 = v19;
  v96 = v20;
  v94 = v18;
  memmove(__dst, (v11 - 152), 0xB1uLL);
  UInt32.init(_:)(__dst);
  sub_1000510B4(&v86, &v55);
  v63 = *&__dst[128];
  v64 = *&__dst[144];
  v65 = *&__dst[160];
  v66 = __dst[176];
  v59 = *&__dst[64];
  v60 = *&__dst[80];
  v61 = *&__dst[96];
  v62 = *&__dst[112];
  v55 = *__dst;
  v56 = *&__dst[16];
  v21 = *&__dst[32];
  v22 = *&__dst[48];
LABEL_9:
  v57 = v21;
  v58 = v22;
LABEL_11:
  v37 = v64;
  *(a2 + 128) = v63;
  *(a2 + 144) = v37;
  *(a2 + 160) = v65;
  *(a2 + 176) = v66;
  v38 = v60;
  *(a2 + 64) = v59;
  *(a2 + 80) = v38;
  v39 = v62;
  *(a2 + 96) = v61;
  *(a2 + 112) = v39;
  v40 = v56;
  *a2 = v55;
  *(a2 + 16) = v40;
  result = *&v57;
  v42 = v58;
  *(a2 + 32) = v57;
  *(a2 + 48) = v42;
  return result;
}

uint64_t BodyStructure.enumerateParts(_:)(void (*a1)(char *, _OWORD *), uint64_t a2)
{
  v4 = v2;
  result = (a1)(_swiftEmptyArrayStorage, v4);
  if (!v3)
  {
    return sub_1003AA1C8(_swiftEmptyArrayStorage, a1, a2);
  }

  return result;
}

uint64_t sub_1003AA1C8(uint64_t a1, void (*a2)(char *, _OWORD *), uint64_t a3)
{
  result = BodyStructure.subpartCount.getter();
  if (result)
  {
    v8 = BodyStructure.subpartCount.getter();
    if (v8)
    {
      v9 = v8;
      v35 = *(a1 + 16);
      v10 = 1;
      v18 = a2;
      while (1)
      {
        v11 = a3;
        sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004CEAA0;
        *(inited + 32) = v10;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v14 = *(a1 + 24) >> 1, v15 = a1, v14 <= v35))
        {
          v15 = sub_100460CC0(isUniquelyReferenced_nonNull_native, v35 + 1, 1, a1);
          v14 = *(v15 + 3) >> 1;
        }

        v16 = *(v15 + 2);
        if (v14 <= v16)
        {
          break;
        }

        *&v15[8 * v16 + 32] = *(inited + 32);

        ++*(v15 + 2);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1004CEAA0;
        *(v17 + 32) = v10;
        sub_1003A861C(v17, v19);
        v29 = v19[8];
        v30 = v19[9];
        v31 = v19[10];
        v32 = v20;
        v25 = v19[4];
        v26 = v19[5];
        v27 = v19[6];
        v28 = v19[7];
        v21 = v19[0];
        v22 = v19[1];
        v23 = v19[2];
        v24 = v19[3];
        if (sub_10000FE74(&v21) == 1)
        {
          goto LABEL_16;
        }

        v33[8] = v29;
        v33[9] = v30;
        v33[10] = v31;
        v34 = v32;
        v33[4] = v25;
        v33[5] = v26;
        v33[6] = v27;
        v33[7] = v28;
        v33[0] = v21;
        v33[1] = v22;
        v33[2] = v23;
        v33[3] = v24;

        a3 = v11;
        v18(v15, v33);
        if (v3)
        {
          sub_100025F40(v19, &qword_1005CE210, &unk_1004D0930);
        }

        sub_1003AA1C8(v15, v18, v11);
        sub_100025F40(v19, &qword_1005CE210, &unk_1004D0930);

        ++v10;
        if (!--v9)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    sub_1004A6724(32);

    v36._countAndFlagsBits = sub_1004A5824();
    sub_1004A5994(v36);

    result = sub_1004A69A4();
    __break(1u);
  }

  return result;
}