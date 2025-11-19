void sub_1D125A038(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
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
        sub_1D106F934(0, &qword_1EE06B0E0);
        v6 = sub_1D13904DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D125A3B4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1D125A14C(0, v2, 1, a1);
  }
}

void sub_1D125A14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v38 = *a4;
    v34 = (v10 + 8);
    v12 = v38 + 8 * a3 - 8;
    v13 = a1 - a3;
LABEL_5:
    v32 = v12;
    v33 = a3;
    v14 = *(v38 + 8 * a3);
    v31 = v13;
    while (1)
    {
      v15 = *v12;
      v16 = v14;
      v17 = v15;
      v18 = [v16 sortDate];
      v19 = [v18 date];

      v20 = v35;
      sub_1D138D52C();

      v21 = [v17 sortDate];
      v22 = [v21 date];

      v23 = v36;
      sub_1D138D52C();

      LOBYTE(v21) = sub_1D138D4FC();
      v24 = *v34;
      v25 = v23;
      v26 = v37;
      (*v34)(v25, v37);
      v24(v20, v26);

      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v12 = v32 + 8;
        v13 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v27 = *v12;
      v14 = *(v12 + 8);
      *v12 = v14;
      *(v12 + 8) = v27;
      v12 -= 8;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D125A3B4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v125 = a1;
  v135 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v133 = &v120 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_126;
    }

    a4 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v115 = a4;
    }

    else
    {
LABEL_120:
      v115 = sub_1D1245848(a4);
    }

    v136 = v115;
    a4 = *(v115 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v116 = *&v115[16 * a4];
        v117 = v115;
        v118 = *&v115[16 * a4 + 24];
        sub_1D125ACD8((*a3 + 8 * v116), (*a3 + 8 * *&v115[16 * a4 + 16]), (*a3 + 8 * v118), v5);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v118 < v116)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1D1245848(v117);
        }

        if (a4 - 2 >= *(v117 + 2))
        {
          goto LABEL_114;
        }

        v119 = &v117[16 * a4];
        *v119 = v116;
        *(v119 + 1) = v118;
        v136 = v117;
        sub_1D12457BC(a4 - 1);
        v115 = v136;
        a4 = *(v136 + 2);
        if (a4 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v14 = 0;
  v132 = (v11 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v124 = a4;
  v121 = a3;
  while (1)
  {
    v16 = v14++;
    v126 = v16;
    if (v14 < v13)
    {
      v130 = v13;
      v122 = v15;
      v123 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v19 = v16;
      v128 = 8 * v16;
      v20 = (v17 + 8 * v16);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v18;
      v23 = v21;
      v24 = [v22 sortDate];
      v25 = [v24 date];

      v26 = v133;
      sub_1D138D52C();

      v27 = [v23 sortDate];
      v28 = [v27 date];

      v29 = v134;
      sub_1D138D52C();

      LODWORD(v131) = sub_1D138D4FC();
      v30 = *v132;
      v31 = v29;
      v32 = v135;
      (*v132)(v31, v135);
      v129 = v30;
      v30(v26, v32);

      v33 = v19 + 2;
      while (1)
      {
        v14 = v130;
        if (v130 == v33)
        {
          break;
        }

        v34 = *(v5 - 8);
        v35 = *v5;
        v36 = v34;
        v37 = [v35 sortDate];
        v38 = [v37 date];

        v39 = v133;
        sub_1D138D52C();

        v40 = [v36 sortDate];
        v41 = [v40 date];

        v42 = v134;
        sub_1D138D52C();

        LODWORD(v40) = sub_1D138D4FC() & 1;
        v43 = v135;
        v44 = v129;
        v129(v42, v135);
        v44(v39, v43);

        ++v33;
        v5 += 8;
        if ((v131 & 1) != v40)
        {
          v14 = v33 - 1;
          break;
        }
      }

      v15 = v122;
      v6 = v123;
      a3 = v121;
      a4 = v124;
      v16 = v126;
      v45 = v128;
      if (v131)
      {
        if (v14 < v126)
        {
          goto LABEL_117;
        }

        if (v126 < v14)
        {
          v46 = 8 * v14 - 8;
          v47 = v14;
          v48 = v126;
          do
          {
            if (v48 != --v47)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v49 = *(v50 + v45);
              *(v50 + v45) = *(v50 + v46);
              *(v50 + v46) = v49;
            }

            ++v48;
            v46 -= 8;
            v45 += 8;
          }

          while (v48 < v47);
        }
      }
    }

    v51 = a3[1];
    if (v14 < v51)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_116;
      }

      if (v14 - v16 < a4)
      {
        v52 = v16 + a4;
        if (__OFADD__(v16, a4))
        {
          goto LABEL_118;
        }

        if (v52 >= v51)
        {
          v52 = a3[1];
        }

        if (v52 < v16)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v14 != v52)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v14 < v16)
    {
      goto LABEL_115;
    }

    v69 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v69;
    }

    else
    {
      v15 = sub_1D10F7610(0, *(v69 + 2) + 1, 1, v69);
    }

    v71 = *(v15 + 2);
    v70 = *(v15 + 3);
    v5 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      v15 = sub_1D10F7610((v70 > 1), v71 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v72 = &v15[16 * v71];
    *(v72 + 4) = v126;
    *(v72 + 5) = v14;
    a4 = *v125;
    if (!*v125)
    {
      goto LABEL_125;
    }

    if (v71)
    {
      while (1)
      {
        v73 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v74 = *(v15 + 4);
          v75 = *(v15 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_55:
          if (v77)
          {
            goto LABEL_104;
          }

          v90 = &v15[16 * v5];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_107;
          }

          v96 = &v15[16 * v73 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_111;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v100 = &v15[16 * v5];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_69:
        if (v95)
        {
          goto LABEL_106;
        }

        v103 = &v15[16 * v73];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_109;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_76:
        v111 = v73 - 1;
        if (v73 - 1 >= v5)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v112 = v15;
        v113 = *&v15[16 * v111 + 32];
        v5 = *&v15[16 * v73 + 40];
        sub_1D125ACD8((*a3 + 8 * v113), (*a3 + 8 * *&v15[16 * v73 + 32]), (*a3 + 8 * v5), a4);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v5 < v113)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_1D1245848(v112);
        }

        if (v111 >= *(v112 + 2))
        {
          goto LABEL_101;
        }

        v114 = &v112[16 * v111];
        *(v114 + 4) = v113;
        *(v114 + 5) = v5;
        v136 = v112;
        sub_1D12457BC(v73);
        v15 = v136;
        v5 = *(v136 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v15[16 * v5 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_102;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_103;
      }

      v85 = &v15[16 * v5];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_105;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_108;
      }

      if (v89 >= v81)
      {
        v107 = &v15[16 * v73 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_112;
        }

        if (v76 < v110)
        {
          v73 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v124;
    if (v14 >= v13)
    {
      goto LABEL_87;
    }
  }

  v122 = v15;
  v123 = v6;
  v131 = *a3;
  v53 = v131 + 8 * v14 - 8;
  v54 = v16 - v14;
  v127 = v52;
LABEL_28:
  v129 = v53;
  v130 = v14;
  v55 = *(v131 + 8 * v14);
  v128 = v54;
  while (1)
  {
    v56 = *v53;
    v5 = v55;
    v57 = v56;
    v58 = [v5 sortDate];
    v59 = [v58 date];

    v60 = v133;
    sub_1D138D52C();

    v61 = [v57 sortDate];
    v62 = [v61 date];

    v63 = v134;
    sub_1D138D52C();

    a4 = sub_1D138D4FC();
    v64 = *v132;
    v65 = v63;
    v66 = v135;
    (*v132)(v65, v135);
    v64(v60, v66);

    if ((a4 & 1) == 0)
    {
LABEL_27:
      v14 = v130 + 1;
      v53 = v129 + 8;
      v54 = v128 - 1;
      if (v130 + 1 != v127)
      {
        goto LABEL_28;
      }

      v14 = v127;
      v15 = v122;
      v6 = v123;
      a3 = v121;
      v16 = v126;
      goto LABEL_35;
    }

    if (!v131)
    {
      break;
    }

    v67 = *v53;
    v55 = *(v53 + 8);
    *v53 = v55;
    *(v53 + 8) = v67;
    v53 -= 8;
    if (__CFADD__(v54++, 1))
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t sub_1D125ACD8(id *a1, id *a2, char *a3, void **a4)
{
  v57 = sub_1D138D57C();
  v8 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v50 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v59 = &a4[v15];
    if (a3 - a2 < 8)
    {
      v30 = a2;
    }

    else
    {
      v30 = a2;
      if (a2 > a1)
      {
        v52 = (v8 + 8);
        v58 = a4;
        v50 = a1;
LABEL_28:
        v51 = v30;
        v31 = v30 - 1;
        a3 -= 8;
        v32 = v59;
        v53 = v30 - 1;
        do
        {
          v33 = (a3 + 8);
          v34 = *--v32;
          v35 = *v31;
          v36 = v34;
          v54 = v36;
          v37 = v35;
          v38 = [v36 sortDate];
          v39 = [v38 date];

          v40 = v55;
          sub_1D138D52C();

          v41 = [v37 sortDate];
          v42 = [v41 date];

          v43 = v56;
          sub_1D138D52C();

          LOBYTE(v41) = sub_1D138D4FC();
          v44 = *v52;
          v45 = v43;
          v46 = v57;
          (*v52)(v45, v57);
          v44(v40, v46);

          if (v41)
          {
            v47 = v50;
            v48 = v53;
            if (v33 != v51)
            {
              *a3 = *v53;
            }

            a4 = v58;
            if (v59 <= v58 || (v30 = v48, v48 <= v47))
            {
              v30 = v48;
              goto LABEL_39;
            }

            goto LABEL_28;
          }

          if (v33 != v59)
          {
            *a3 = *v32;
          }

          a3 -= 8;
          v59 = v32;
          v31 = v53;
        }

        while (v32 > v58);
        v59 = v32;
        v30 = v51;
        a4 = v58;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v59 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = (v8 + 8);
      v54 = a3;
      while (1)
      {
        v58 = a4;
        v16 = *a4;
        v17 = *a2;
        v18 = v16;
        v19 = [v17 sortDate];
        v20 = [v19 date];

        v21 = v55;
        sub_1D138D52C();

        v22 = [v18 sortDate];
        v23 = [v22 date];

        v24 = v56;
        sub_1D138D52C();

        LOBYTE(v22) = sub_1D138D4FC();
        v25 = *v53;
        v26 = v24;
        v27 = v57;
        (*v53)(v26, v57);
        v25(v21, v27);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = a1 == a2++;
        a4 = v58;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++a1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_20;
        }
      }

      v28 = v58;
      a4 = v58 + 1;
      if (a1 == v58)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a1 = *v28;
      goto LABEL_18;
    }

LABEL_20:
    v30 = a1;
  }

LABEL_39:
  if (v30 != a4 || v30 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v30, a4, 8 * (v59 - a4));
  }

  return 1;
}

id TableViewSectionConfiguration.init()()
{
  *&v0[OBJC_IVAR___HRUITableViewSectionConfiguration_sections] = MEMORY[0x1E69E7CC0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TableViewSectionConfiguration();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D125B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D1086E1C();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D139E700;
    *(v8 + 32) = a3;
    *(v8 + 40) = a4;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1D125B4E0(a1, a2, v8);

  return v9;
}

id sub_1D125B4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TableViewSection();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___HRUITableViewSection_identifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v7[OBJC_IVAR___HRUITableViewSection_headerString];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v7[OBJC_IVAR___HRUITableViewSection_footerString];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v7[OBJC_IVAR___HRUITableViewSection_rows] = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR___HRUITableViewSection_estimatedNumRows] = 0;
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 1) = a2;
  v27.receiver = v7;
  v27.super_class = v6;

  v11 = objc_msgSendSuper2(&v27, sel_init);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = OBJC_IVAR___HRUITableViewSection_rows;
    v14 = type metadata accessor for TableViewRow();
    v15 = (a3 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = objc_allocWithZone(v14);
      v19 = &v18[OBJC_IVAR___HRUITableViewRow_reuseIdentifier];
      *v19 = v16;
      *(v19 + 1) = v17;
      v26.receiver = v18;
      v26.super_class = v14;
      swift_bridgeObjectRetain_n();
      v20 = objc_msgSendSuper2(&v26, sel_init);
      swift_beginAccess();
      v21 = v20;
      MEMORY[0x1D3885D90]();
      if (*((*(v11 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      swift_endAccess();

      v15 += 2;
      --v12;
    }

    while (v12);
  }

  v22 = OBJC_IVAR___HRUITableViewSectionConfiguration_sections;
  swift_beginAccess();
  v23 = v11;
  MEMORY[0x1D3885D90]();
  if (*((*(v25 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v25 + v22) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  swift_endAccess();
  return v23;
}

id TableViewSection.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___HRUITableViewSection_identifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR___HRUITableViewSection_headerString];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v5[OBJC_IVAR___HRUITableViewSection_footerString];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v5[OBJC_IVAR___HRUITableViewSection_rows] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR___HRUITableViewSection_estimatedNumRows] = 0;
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 1) = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

id TableViewRow.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___HRUITableViewRow_reuseIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1D125B904()
{
  v1 = OBJC_IVAR___HRUITableViewSectionConfiguration_sections;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D125B9B0(uint64_t a1)
{
  v3 = OBJC_IVAR___HRUITableViewSectionConfiguration_sections;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_1D13910DC();
  if (result <= a1)
  {
    return 0;
  }

LABEL_3:
  v6 = *(v1 + v3);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x1D3886B70](a1, v6);

LABEL_7:
    v8 = OBJC_IVAR___HRUITableViewSection_rows;
    swift_beginAccess();
    v9 = *&v7[v8];

    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

      return v10;
    }

LABEL_15:
    v10 = sub_1D13910DC();
    goto LABEL_9;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v7 = *(v6 + 8 * a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D125BB30(unint64_t a1)
{
  v3 = OBJC_IVAR___HRUITableViewSectionConfiguration_sections;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    v5 = sub_1D13910DC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ([a1 section] >= v5)
  {
    return 0;
  }

  result = [a1 section];
  v7 = *&v1[v3];
  if ((v7 & 0xC000000000000001) != 0)
  {
    v11 = result;

    v1 = MEMORY[0x1D3886B70](v11, v7);
  }

  else
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    if (result >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v1 = *(v7 + 8 * result + 32);
  }

  v3 = OBJC_IVAR___HRUITableViewSection_rows;
  swift_beginAccess();
  v8 = *&v1[v3];
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_21:
  v9 = sub_1D13910DC();
LABEL_10:
  if ([a1 row] >= v9)
  {

    return 0;
  }

  result = [a1 row];
  a1 = *&v1[v3];
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v12 = result;

    v13 = MEMORY[0x1D3886B70](v12, a1);

    return v13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(a1 + 8 * result + 32);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D125BDE4()
{
  v1 = v0;
  sub_1D13911EC();

  v10 = 60;
  v11 = 0xE100000000000000;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TableViewSectionConfiguration();
  v2 = objc_msgSendSuper2(&v9, sel_description);
  v3 = sub_1D139016C();
  v5 = v4;

  MEMORY[0x1D3885C10](v3, v5);

  MEMORY[0x1D3885C10](32, 0xE100000000000000);
  v6 = OBJC_IVAR___HRUITableViewSectionConfiguration_sections;
  swift_beginAccess();
  if (*&v1[v6] >> 62)
  {
    sub_1D13910DC();
  }

  v7 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v7);

  MEMORY[0x1D3885C10](0x6E6F697463657320, 0xEA00000000003E73);
  return v10;
}

id sub_1D125C084(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1D139012C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D125C124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1D139016C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

id sub_1D125C22C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = swift_beginAccess();
  a4(v5);

  v6 = sub_1D139044C();

  return v6;
}

uint64_t sub_1D125C328(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t *a5)
{
  a4();
  v7 = sub_1D139045C();
  v8 = *a5;
  swift_beginAccess();
  *(a1 + v8) = v7;
}

uint64_t sub_1D125C3A8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1D125C3FC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void *sub_1D125C50C()
{
  v1 = OBJC_IVAR___HRUITableViewSection_estimatedNumRows;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D125C5B8(uint64_t a1)
{
  v3 = OBJC_IVAR___HRUITableViewSection_estimatedNumRows;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D125C610(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HRUITableViewSection_estimatedNumRows;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id TableViewSection.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___HRUITableViewSection_identifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR___HRUITableViewSection_headerString];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR___HRUITableViewSection_footerString];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v2[OBJC_IVAR___HRUITableViewSection_rows] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR___HRUITableViewSection_estimatedNumRows] = 0;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for TableViewSection();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1D125C860(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  swift_beginAccess();
  v6 = a1;
  MEMORY[0x1D3885D90]();
  if (*((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  return swift_endAccess();
}

void sub_1D125C968(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = a3;
  v8 = a1;
  MEMORY[0x1D3885D90]();
  if (*((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  swift_endAccess();
}

uint64_t sub_1D125CA30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TableViewRow();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___HRUITableViewRow_reuseIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  v12.receiver = v7;
  v12.super_class = v6;

  objc_msgSendSuper2(&v12, sel_init);
  v9 = OBJC_IVAR___HRUITableViewSection_rows;
  v10 = swift_beginAccess();
  MEMORY[0x1D3885D90](v10);
  if (*((*(v3 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  return swift_endAccess();
}

uint64_t TableViewRow.reuseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___HRUITableViewRow_reuseIdentifier);

  return v1;
}

id TableViewRow.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___HRUITableViewRow_reuseIdentifier];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for TableViewRow();
  return objc_msgSendSuper2(&v5, sel_init);
}

id TableViewRow.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1D125CE70(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_1D125D59C()
{
  sub_1D138DF5C();

  return swift_deallocClassInstance();
}

uint64_t sub_1D125D5D4()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D125D704@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D138F37C();
  v3 = sub_1D138DE3C();
  swift_allocObject();
  v4 = sub_1D138DE1C();
  a1[3] = v3;
  result = sub_1D125F324(&qword_1EC60B610, MEMORY[0x1E69A34C8]);
  a1[4] = result;
  *a1 = v4;
  return result;
}

void sub_1D125D824()
{

  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI33InternalGatewayVersionsDetailItem_gateway);
}

uint64_t sub_1D125D864()
{

  v1 = OBJC_IVAR____TtC15HealthRecordsUI23TitleSubtitleDetailItem_uuid;
  v2 = sub_1D138D5EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1D125D910()
{
  sub_1D125D864();

  return swift_deallocClassInstance();
}

uint64_t sub_1D125DA54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D102CC18(&v12, v10 + 40 * a1 + 32);
}

void sub_1D125DAEC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI33InternalGatewayVersionsDetailItem_gateway);
  v4 = [v3 gatewayVersions];
  if (v4)
  {
    v5 = v4;
    sub_1D124F53C();
    v6 = sub_1D139045C();

    if (v6 >> 62)
    {
      v7 = sub_1D13910DC();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = *(*(v1 + OBJC_IVAR____TtC15HealthRecordsUI33InternalGatewayVersionsDetailItem_manager) + 16);
      sub_1D125F45C();
      objc_allocWithZone(v9);
      v10 = v8;
      v11 = v3;
      v12 = a1;
      v13 = v10;
      v14 = v11;
      v15 = v12;
      v16 = v1;
      v17 = sub_1D138FB6C();
      [v15 showViewController:v17 sender:v16];
    }
  }
}

char *sub_1D125DC34(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1D125F3F8(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v65 - v7;
  v9 = sub_1D138F15C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138F0FC();
  v68 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI33InternalGatewayVersionsDetailItem_gateway) = a1;
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI33InternalGatewayVersionsDetailItem_manager) = a2;
  v14 = a1;

  v15 = [v14 gatewayVersions];
  if (v15)
  {
    v16 = v15;
    sub_1D124F53C();
    v17 = sub_1D139045C();

    if (!(v17 >> 62))
    {
LABEL_3:
      v72 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_3;
    }
  }

  v72 = sub_1D13910DC();
LABEL_4:

  v18 = [v14 gatewayVersions];
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v20 = v18;
    sub_1D124F53C();
    v21 = sub_1D139045C();

    if (!(v21 >> 62))
    {
LABEL_6:
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_6;
    }
  }

  v22 = sub_1D13910DC();
LABEL_7:
  v73 = v3;
  v70 = v12;
  v71 = v8;
  if (v22)
  {
    v77 = v19;
    result = sub_1D10FDBA4(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      __break(1u);
      return result;
    }

    v65 = v10;
    v66 = v9;
    v24 = 0;
    v25 = v77;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1D3886B70](v24, v21);
      }

      else
      {
        v26 = *(v21 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = [v26 FHIRVersion];
      v29 = [v28 FHIRRelease];

      v30 = sub_1D139016C();
      v32 = v31;

      v77 = v25;
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D10FDBA4((v33 > 1), v34 + 1, 1);
        v25 = v77;
      }

      ++v24;
      *(v25 + 16) = v34 + 1;
      v35 = v25 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
    }

    while (v22 != v24);

    v10 = v65;
    v9 = v66;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  v36 = v72;
  v75 = v72;
  v77 = sub_1D13915CC();
  v78 = v37;
  MEMORY[0x1D3885C10](0x6E6F697372657620, 0xE800000000000000);
  if (v36 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 115;
  }

  if (v36 == 1)
  {
    v39 = 0xE000000000000000;
  }

  else
  {
    v39 = 0xE100000000000000;
  }

  MEMORY[0x1D3885C10](v38, v39);

  if (*(v25 + 16))
  {
    v75 = 10272;
    v76 = 0xE200000000000000;
    v74 = v25;
    sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
    sub_1D10F73A8();
    v40 = sub_1D139008C();
    v42 = v41;

    MEMORY[0x1D3885C10](v40, v42);

    MEMORY[0x1D3885C10](41, 0xE100000000000000);
    MEMORY[0x1D3885C10](v75, v76);
  }

  v43 = 0x80000001D13C74C0;
  v44 = v73;
  if (v36 < 1)
  {
    v72 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D125F3F8(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1D138F17C();
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D139E700;
    v46 = *MEMORY[0x1E69DBF28];
    v47 = v68;
    v48 = *(v68 + 104);
    v66 = 0x80000001D13C74C0;
    v49 = v9;
    v50 = v67;
    v51 = v70;
    v48(v67, v46, v70);
    v52 = sub_1D138F10C();
    (*(*(v52 - 8) + 56))(v71, 1, 1, v52);
    v53 = v69;
    sub_1D138F14C();
    v72 = v45;
    sub_1D138F11C();
    v54 = v49;
    v43 = v66;
    (*(v10 + 8))(v53, v54);
    (*(v47 + 8))(v50, v51);
  }

  v55 = v77;
  v56 = v78;
  sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1D139E710;
  *(v57 + 32) = sub_1D139016C();
  *(v57 + 40) = v58;
  *(v57 + 48) = 0xD000000000000010;
  *(v57 + 56) = v43;
  v59 = sub_1D139044C();

  v60 = HKUIJoinStringsForAutomationIdentifier();

  if (v60)
  {
    v61 = sub_1D139016C();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  sub_1D138D5DC();
  v44[2] = 0xD000000000000010;
  v44[3] = v43;
  v44[4] = v55;
  v44[5] = v56;
  v64 = v72;
  v44[6] = 0;
  v44[7] = v64;
  v44[8] = v61;
  v44[9] = v63;
  return v44;
}

uint64_t sub_1D125E3E8(void *a1, uint64_t a2)
{
  v132 = a2;
  v3 = sub_1D138D5EC();
  v134 = *(v3 - 8);
  v135 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v133 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D125F3F8(0, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v121 - v6;
  v8 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138D67C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 provenance];
  v17 = [v16 type];

  if (v17)
  {
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v127 = v8;
  v128 = v9;
  v129 = v7;
  v130 = a1;
  v26 = [a1 gateway];
  v18 = MEMORY[0x1E69E7CC0];
  if (!v26)
  {
    goto LABEL_3;
  }

  v27 = v26;
  v126 = v11;
  sub_1D138D66C();
  v28 = [v27 country];
  sub_1D139016C();

  v29 = sub_1D138D61C();
  v31 = v30;

  (*(v13 + 8))(v15, v12);
  v131 = v27;
  if (v31)
  {
    sub_1D125F3F8(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    v124 = xmmword_1D139E710;
    *(v32 + 16) = xmmword_1D139E710;
    v33 = MEMORY[0x1E69E6158];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v34 = sub_1D1089930();
    *(v32 + 64) = v34;
    *(v32 + 32) = v29;
    *(v32 + 40) = v31;
    v35 = [v27 country];
    v36 = sub_1D139016C();
    v38 = v37;

    *(v32 + 96) = v33;
    *(v32 + 104) = v34;
    *(v32 + 72) = v36;
    *(v32 + 80) = v38;
    v39 = sub_1D13901AC();
    v125 = v40;
    sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    *(v41 + 16) = v124;
    *(v41 + 32) = sub_1D139016C();
    *(v41 + 40) = v42;
    *(v41 + 48) = 0x2079617765746147;
    *(v41 + 56) = 0xEF7972746E756F43;
    v43 = sub_1D139044C();

    v44 = HKUIJoinStringsForAutomationIdentifier();

    if (v44)
    {
      v45 = sub_1D139016C();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v48 = type metadata accessor for TitleSubtitleDetailItem(0);
    v49 = swift_allocObject();
    sub_1D138D5DC();
    v49[2] = 0x2079617765746147;
    v49[3] = 0xEF7972746E756F43;
    v50 = v125;
    v49[4] = v39;
    v49[5] = v50;
    v49[6] = 0;
    v51 = MEMORY[0x1E69E7CC0];
    v49[7] = MEMORY[0x1E69E7CC0];
    v49[8] = v45;
    v49[9] = v47;
    v18 = sub_1D10F857C(0, 1, 1, v51);
    v53 = v18[2];
    v52 = v18[3];
    if (v53 >= v52 >> 1)
    {
      v18 = sub_1D10F857C((v52 > 1), v53 + 1, 1, v18);
    }

    v137 = v48;
    v138 = sub_1D125F324(&qword_1EC60A700, type metadata accessor for TitleSubtitleDetailItem);
    *&v136 = v49;
    v18[2] = v53 + 1;
    sub_1D102CC18(&v136, &v18[5 * v53 + 4]);
    *&v124 = @"UIA.Health.HealthRecords";
  }

  else
  {
    *&v124 = @"UIA.Health.HealthRecords";
    v18 = MEMORY[0x1E69E7CC0];
  }

  v54 = v131;
  v55 = [v131 FHIRVersion];
  sub_1D125F3F8(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1D139EAB0;
  v57 = [v55 FHIRRelease];
  v58 = sub_1D139016C();
  v60 = v59;

  v61 = MEMORY[0x1E69E6158];
  *(v56 + 56) = MEMORY[0x1E69E6158];
  v62 = sub_1D1089930();
  *(v56 + 64) = v62;
  *(v56 + 32) = v58;
  *(v56 + 40) = v60;
  v125 = v55;
  v63 = [v55 stringRepresentation];
  v64 = sub_1D139016C();
  v66 = v65;

  *(v56 + 96) = v61;
  *(v56 + 104) = v62;
  *(v56 + 72) = v64;
  *(v56 + 80) = v66;
  v67 = [v54 minCompatibleAPIVersion];
  v68 = MEMORY[0x1E69E65A8];
  *(v56 + 136) = MEMORY[0x1E69E6530];
  *(v56 + 144) = v68;
  *(v56 + 112) = v67;
  v69 = sub_1D13901AC();
  v71 = v70;
  sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
  v122 = v72;
  v73 = swift_allocObject();
  v121 = xmmword_1D139E710;
  *(v73 + 16) = xmmword_1D139E710;
  *(v73 + 32) = sub_1D139016C();
  *(v73 + 40) = v74;
  *(v73 + 48) = 0xD000000000000013;
  *(v73 + 56) = 0x80000001D13C7460;
  v75 = sub_1D139044C();

  v76 = HKUIJoinStringsForAutomationIdentifier();

  if (v76)
  {
    v77 = sub_1D139016C();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  v80 = type metadata accessor for TitleSubtitleDetailItem(0);
  v81 = swift_allocObject();
  sub_1D138D5DC();
  v81[2] = 0xD000000000000013;
  v81[3] = 0x80000001D13C7460;
  v81[4] = v69;
  v81[5] = v71;
  v81[6] = 0;
  v81[7] = MEMORY[0x1E69E7CC0];
  v81[8] = v77;
  v81[9] = v79;
  v137 = v80;
  v123 = sub_1D125F324(&qword_1EC60A700, type metadata accessor for TitleSubtitleDetailItem);
  v138 = v123;
  *&v136 = v81;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v139[0] = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1D10F857C(0, v18[2] + 1, 1, v18);
    v139[0] = v18;
  }

  v84 = v18[2];
  v83 = v18[3];
  if (v84 >= v83 >> 1)
  {
    v18 = sub_1D10F857C((v83 > 1), v84 + 1, 1, v18);
    v139[0] = v18;
  }

  v85 = v137;
  v86 = v138;
  v87 = __swift_mutable_project_boxed_opaque_existential_1(&v136, v137);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v121 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v89);
  sub_1D125DA54(v84, v89, v139, v85, v86);
  __swift_destroy_boxed_opaque_existential_1Tm(&v136);
  v91 = type metadata accessor for InternalGatewayVersionsDetailItem(0);
  swift_allocObject();
  v92 = v131;
  v93 = v132;

  v94 = sub_1D125DC34(v92, v93);

  v96 = v18[2];
  v95 = v18[3];
  if (v96 >= v95 >> 1)
  {
    v18 = sub_1D10F857C((v95 > 1), v96 + 1, 1, v18);
  }

  v97 = v128;
  v137 = v91;
  v138 = sub_1D125F324(&qword_1EC60E328, type metadata accessor for InternalGatewayVersionsDetailItem);
  *&v136 = v94;
  v18[2] = v96 + 1;
  sub_1D102CC18(&v136, &v18[5 * v96 + 4]);
  v98 = v130;
  v99 = v129;
  sub_1D11292FC(v98, 0, 0, 0, v129);
  v100 = v127;
  if ((*(v97 + 48))(v99, 1, v127) == 1)
  {

    sub_1D125F36C(v99);
    goto LABEL_3;
  }

  v101 = v99;
  v102 = v126;
  sub_1D10A447C(v101, v126);
  v103 = *(v102 + *(v100 + 20));
  if (v103 > 1)
  {
    if (v103 == 2)
    {
      v104 = 0xED00006564617267;
      v105 = 0x70752065706F6373;
      goto LABEL_34;
    }

    if (v103 == 3)
    {
      v104 = 0x80000001D13BD410;
      v105 = 0xD00000000000001FLL;
      goto LABEL_34;
    }
  }

  else
  {
    if (!v103)
    {
      v104 = 0xE500000000000000;
      v105 = 0x6E69676F6CLL;
      goto LABEL_34;
    }

    if (v103 == 1)
    {
      v104 = 0x80000001D13BD430;
      v105 = 0xD000000000000013;
LABEL_34:
      v132 = v105;
      goto LABEL_35;
    }
  }

  v132 = 0x2079617765746167;
  v104 = 0xEF65646172677075;
LABEL_35:
  v106 = swift_allocObject();
  *(v106 + 16) = v121;
  *(v106 + 32) = sub_1D139016C();
  *(v106 + 40) = v107;
  *(v106 + 48) = 0xD000000000000016;
  *(v106 + 56) = 0x80000001D13C74A0;
  v108 = sub_1D139044C();

  v109 = HKUIJoinStringsForAutomationIdentifier();

  if (v109)
  {
    v110 = sub_1D139016C();
    v112 = v111;
  }

  else
  {
    v110 = 0;
    v112 = 0;
  }

  v113 = v123;
  v114 = swift_allocObject();
  sub_1D138D5DC();
  v114[2] = 0xD000000000000016;
  v114[3] = 0x80000001D13C74A0;
  v114[4] = v132;
  v114[5] = v104;
  v114[6] = 0;
  v114[7] = MEMORY[0x1E69E7CC0];
  v114[8] = v110;
  v114[9] = v112;
  v137 = v80;
  v138 = v113;
  *&v136 = v114;
  v116 = v18[2];
  v115 = v18[3];
  v139[0] = v18;
  if (v116 >= v115 >> 1)
  {
    v18 = sub_1D10F857C((v115 > 1), v116 + 1, 1, v18);

    v139[0] = v18;
    v80 = v137;
    v113 = v138;
  }

  else
  {
  }

  v117 = __swift_mutable_project_boxed_opaque_existential_1(&v136, v80);
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v121 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v120 + 16))(v119);
  sub_1D125DA54(v116, v119, v139, v80, v113);
  __swift_destroy_boxed_opaque_existential_1Tm(&v136);
  sub_1D10A3F54(v126);
LABEL_3:
  sub_1D125F3F8(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  sub_1D110A5C8(v18);

  v19 = v133;
  sub_1D138D5DC();
  sub_1D138D59C();
  v20 = v135;
  v21 = *(v134 + 8);
  v21(v19, v135);
  sub_1D138E50C();
  *&v136 = 0x3C53447961727241;
  *(&v136 + 1) = 0xE800000000000000;
  sub_1D138D5DC();
  v22 = sub_1D138D59C();
  v24 = v23;
  v21(v19, v20);
  MEMORY[0x1D3885C10](v22, v24);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  return sub_1D138DF3C();
}

uint64_t sub_1D125F324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D125F36C(uint64_t a1)
{
  sub_1D125F3F8(0, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D125F3F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D125F45C()
{
  if (!qword_1EC60E330)
  {
    sub_1D125F4B8();
    v0 = sub_1D138FB7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E330);
    }
  }
}

unint64_t sub_1D125F4B8()
{
  result = qword_1EC60E338;
  if (!qword_1EC60E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E338);
  }

  return result;
}

id MedicalRecordChartSeries.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

__n128 HKGraphSeriesDataPointPathRangeMake@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  result = *a2;
  v5 = *(a2 + 16);
  a3[2] = *a2;
  a3[3] = v5;
  return result;
}

double HKGraphSeriesDataBlockPathMake@<D0>(uint64_t a1@<X8>)
{
  result = NAN;
  *a1 = xmmword_1D13AC1F0;
  *(a1 + 16) = 0;
  return result;
}

__n128 HKGraphSeriesDataPointPathMake@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a2[1].n128_u64[1] = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

id MedicalRecordChartCoordinate.__allocating_init(sortedPointValues:blockCoordinateInfo:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D12606EC(a1, a2);
}

void sub_1D125F754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, uint64_t a8, uint64_t a9, char *a10, CGContext *a11)
{
  v19 = sub_1D138F0BC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D138D83C();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (type metadata accessor for MedicalRecordChartCoordinate(), (v25 = swift_dynamicCastClass()) != 0))
  {
    v26 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending;
    v27 = *(v25 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending);
    if (*(v27 + 16))
    {
      v28 = *(v27 + 32);
      if (v28 < a6 || v28 > a7)
      {
        return;
      }
    }

    else if (a6 > 0.0 || a7 < 0.0)
    {
      return;
    }

    v57 = v25;
    swift_unknownObjectRetain();
    [a10 selectedPathRange];
    v60 = a2;
    v61 = a3;
    v62 = a4;
    v63 = a5;
    v37 = HKGraphSeriesDataPointPathInRangeInclusive();
    v38 = &OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_selectedStrokeStyle;
    if (!v37)
    {
      v38 = &OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_unselectedStrokeStyle;
    }

    v39 = *&a10[*v38];
    if (v39)
    {
      [v39 lineWidth];
      v41 = v40 * 0.5;
    }

    else
    {
      v41 = 1.0;
    }

    CGContextSaveGState(a11);
    [v39 applyToContext_];
    if (!v39 || (v42 = [v39 strokeColor]) == 0)
    {
      v42 = [objc_opt_self() yellowColor];
    }

    v43 = [v42 CGColor];

    CGContextSetFillColorWithColor(a11, v43);
    v44 = *(v57 + v26);
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = *(v44 + 40);

      sub_1D139077C();
      v57 = 0xC00921FB54442D18;
      sub_1D139078C();
      if (v45 != 1)
      {
        v47 = 1;
        while (1)
        {
          v48 = v44 + 32 + 16 * v47;
          v49 = *(v48 + 8);
          v50 = v47 + 1;
          if (v49 - v41 - (v41 + v46) <= 1.0)
          {
            break;
          }

          v51 = *(v48 + 8);
LABEL_30:
          sub_1D139078C();
          CGContextClosePath(a11);
          sub_1D139077C();
          sub_1D139078C();
          v47 = v50;
          v46 = v51;
          if (v50 == v45)
          {
            goto LABEL_31;
          }
        }

        v52 = (v44 + 56 + 16 * v47);
        while (1)
        {
          sub_1D139079C();
          if (v45 == v50)
          {
            break;
          }

          v51 = *v52;
          ++v50;
          v53 = *v52 - v41 - (v41 + v49);
          v52 += 2;
          v49 = v51;
          if (v53 > 1.0)
          {
            goto LABEL_30;
          }
        }
      }

LABEL_31:

      sub_1D139078C();
      CGContextClosePath(a11);
    }

    v54 = v58;
    v55 = v59;
    (*(v58 + 104))(v24, *MEMORY[0x1E695EEB8], v59);
    sub_1D13907AC();
    (*(v54 + 8))(v24, v55);
    CGContextRestoreGState(a11);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D138F04C();
    swift_unknownObjectRetain();
    v30 = sub_1D138F0AC();
    v31 = sub_1D13907FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v64 = v33;
      *v32 = 136446210;
      v60 = a1;
      sub_1D1261CEC(0, &qword_1EC60E3C8, &qword_1EC60E3C0, &protocolRef_HKGraphSeriesBlockCoordinate, MEMORY[0x1E69E6720]);
      swift_unknownObjectRetain();
      v34 = sub_1D13901EC();
      v36 = sub_1D11DF718(v34, v35, &v64);

      *(v32 + 4) = v36;
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1D38882F0](v33, -1, -1);
      MEMORY[0x1D38882F0](v32, -1, -1);
    }

    (*(v20 + 8))(v22, v19);
  }
}

uint64_t sub_1D125FD88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12(a2, v8, v9, v10, v11, a4, a5);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id MedicalRecordChartSeries.init()()
{
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_selectedStrokeStyle] = 0;
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_unselectedStrokeStyle] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordChartSeries();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MedicalRecordChartCoordinate.init(sortedPointValues:blockCoordinateInfo:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D1260744(a1, a2, v2);
}

uint64_t sub_1D1260310(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 1;
  for (i = 2; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 2 >= v6)
    {
      break;
    }

    if (v4 - 2 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 16 * v4);
    v8 = *(v1 + 16 * i);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D12FFAB4(v1);
      v1 = result;
    }

    *(v1 + 16 * i) = v7;
    *(v1 + 16 * v4) = v8;
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

double sub_1D12603D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0.0;
  }
}

double sub_1D12603F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending);
  v4 = *(v1 + 16);
  v2 = v1 + 16;
  v3 = v4;
  if (v4)
  {
    return *(v2 + 16 * v3);
  }

  else
  {
    return 0.0;
  }
}

double sub_1D1260424(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending);
  v4 = v3 + 16;
  v5 = *(v3 + 16);
  if (!v5)
  {
    v7 = 0.0;
    v6 = 0.0;
    if (a2 >= 0.0 && a2 <= 0.0)
    {
      return vabdd_f64(0.0, a1);
    }

    return sqrt((a1 - v7) * (a1 - v7) + (a2 - v6) * (a2 - v6));
  }

  v6 = *(v3 + 40);
  if (v6 > a2)
  {
    v7 = *(v3 + 32);
    return sqrt((a1 - v7) * (a1 - v7) + (a2 - v6) * (a2 - v6));
  }

  v6 = *(v4 + 16 * v5 + 8);
  if (v6 < a2)
  {
    v7 = *(v4 + 16 * v5);
    return sqrt((a1 - v7) * (a1 - v7) + (a2 - v6) * (a2 - v6));
  }

  return vabdd_f64(*(v3 + 32), a1);
}

double sub_1D12604EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0.0;
  }
}

double sub_1D1260538()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending);
  v4 = *(v1 + 16);
  v2 = v1 + 16;
  v3 = v4;
  if (v4)
  {
    return *(v2 + 16 * v3);
  }

  else
  {
    return 0.0;
  }
}

id sub_1D1260660(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1D12606EC(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for MedicalRecordChartCoordinate());

  return sub_1D1260744(a1, a2, v4);
}

id sub_1D1260744(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 16 + 16 * v4 + 8) < *(a1 + 40))
  {
    v5 = a2;
    a1 = sub_1D1260310(a1);
    a2 = v5;
  }

  *&a3[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending] = a1;
  *&a3[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_blockCoordinateInfo] = a2;
  v7.receiver = a3;
  v7.super_class = type metadata accessor for MedicalRecordChartCoordinate();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1D12607C8(void *a1, uint64_t a2, uint64_t a3, char **a4, void *a5, void *a6)
{
  v73 = a2;
  v74 = a3;
  v10 = sub_1D138F0BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1D138D57C();
  v14 = *(v82 - 8);
  *&v15 = MEMORY[0x1EEE9AC00](v82).n128_u64[0];
  v81 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 chartPoints];
  if (v17)
  {
    v18 = v17;
    sub_1D1261D54(0, &qword_1EC60E3E0);
    v19 = sub_1D139045C();

    v20 = sub_1D106E230(v19);

    if (v20)
    {
      v80 = [a5 transform];
      v21 = [a6 transform];
      v84 = MEMORY[0x1E69E7CC0];
      v22 = (v20 & 0xFFFFFFFFFFFFFF8);
      if (v20 >> 62)
      {
        goto LABEL_39;
      }

      for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
      {
        v24 = MEMORY[0x1E69E7CC0];
        if (!i)
        {
          break;
        }

        v72 = a4;
        v25 = 0;
        v75 = v20 + 32;
        v76 = v22;
        v78 = v14 + 1;
        v79 = v20 & 0xC000000000000001;
        a4 = &selRef_subscriberIdentifier;
        v77 = i;
        while (1)
        {
          if (v79)
          {
            v26 = MEMORY[0x1D3886B70](v25, v20);
          }

          else
          {
            if (v25 >= v76[2])
            {
              goto LABEL_38;
            }

            v26 = *(v75 + 8 * v25);
          }

          v14 = v26;
          if (__OFADD__(v25++, 1))
          {
            break;
          }

          v28 = [*(v26 + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_chartableSet) date];
          v29 = v81;
          sub_1D138D52C();

          v30 = sub_1D138D4EC();
          (*v78)(v29, v82);
          [v80 coordinateForValue_];
          v32 = v31;

          v33 = *(v14 + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_sortedYValues);
          v34 = *(v33 + 16);
          if (v34)
          {
            v35 = v20;
            v85 = v24;
            sub_1D10FE1CC(0, v34, 0);
            v36 = v85;
            v37 = v33 + 32;
            do
            {
              v38 = sub_1D139062C();
              [v21 coordinateForValue_];
              v40 = v39;

              v85 = v36;
              v42 = *(v36 + 16);
              v41 = *(v36 + 24);
              if (v42 >= v41 >> 1)
              {
                sub_1D10FE1CC((v41 > 1), v42 + 1, 1);
                v36 = v85;
              }

              *(v36 + 16) = v42 + 1;
              v43 = v36 + 16 * v42;
              *(v43 + 32) = v32;
              *(v43 + 40) = v40;
              v37 += 8;
              --v34;
            }

            while (v34);
            v20 = v35;
            i = v77;
          }

          else
          {
            v36 = v24;
          }

          v22 = *(v14 + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_blockCoordinateInfo);
          v44 = type metadata accessor for MedicalRecordChartCoordinate();
          v45 = objc_allocWithZone(v44);
          v46 = v45;
          v47 = *(v36 + 16);
          if (v47 && *(v36 + 16 + 16 * v47 + 8) < *(v36 + 40))
          {
            v48 = v22;
            *&v46[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending] = sub_1D1260310(v36);
          }

          else
          {
            *&v45[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending] = v36;
            v49 = v22;
          }

          *&v46[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_blockCoordinateInfo] = v22;
          v83.receiver = v46;
          v83.super_class = v44;
          v50 = objc_msgSendSuper2(&v83, sel_init, v72);
          MEMORY[0x1D3885D90]();
          if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v22 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D13904BC();
          }

          sub_1D13904FC();

          v24 = MEMORY[0x1E69E7CC0];
          if (v25 == i)
          {
            a4 = v72;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        ;
      }

LABEL_31:
      sub_1D1261D54(0, &qword_1EC60E3C0);
      v61 = sub_1D139044C();
      v62 = objc_opt_self();
      v85 = v73;
      v86 = v74;
      v87 = a4;
      v63 = [v62 coordinateListWithCoordinates:v61 blockPath:&v85];

      if (v63)
      {

        return;
      }

      goto LABEL_41;
    }
  }

  sub_1D138F04C();
  v51 = a1;
  v52 = sub_1D138F0AC();
  v53 = sub_1D13907FC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = v10;
    v55 = a4;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v85 = v57;
    *v56 = 136446210;
    v58 = [v51 chartPoints];
    if (v58)
    {
      v59 = v58;
      sub_1D1261D54(0, &qword_1EC60E3E0);
      v60 = sub_1D139045C();
    }

    else
    {
      v60 = 0;
    }

    v84 = v60;
    sub_1D1261C68();
    v64 = sub_1D13901EC();
    v66 = sub_1D11DF718(v64, v65, &v85);

    *(v56 + 4) = v66;
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x1D38882F0](v57, -1, -1);
    MEMORY[0x1D38882F0](v56, -1, -1);

    (*(v11 + 8))(v13, v54);
    a4 = v55;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v68 = v73;
  v67 = v74;
  sub_1D1261D54(0, &qword_1EC60E3C0);
  v69 = sub_1D139044C();
  v70 = objc_opt_self();
  v85 = v68;
  v86 = v67;
  v87 = a4;
  v71 = [v70 coordinateListWithCoordinates:v69 blockPath:&v85];

  if (!v71)
  {
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1D109F94C(a2 + 32, a1 + 32);
}

uint64_t sub_1D1260F58(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_1D138F0BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MedicalRecordChartCoordinate();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = *(v14 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending);
    v16 = *(v15 + 16);
    swift_unknownObjectRetain();

    v18 = v15 + 40;
    v19 = -v16;
    v20 = -1;
    while (1)
    {
      if (v19 + v20 == -1)
      {

        swift_unknownObjectRelease();
        return 0;
      }

      if (++v20 >= *(v15 + 16))
      {
        break;
      }

      v21 = v18 + 16;
      v31.origin.x = a2;
      v31.origin.y = a3;
      v31.size.width = a4;
      v31.size.height = a5;
      result = CGRectContainsPoint(v31, *(v18 - 8));
      v18 = v21;
      if (result)
      {
        swift_unknownObjectRelease();

        return 1;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1D138F04C();
    swift_unknownObjectRetain();
    v22 = sub_1D138F0AC();
    v23 = sub_1D13907FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = a1;
      v30 = v25;
      *v24 = 136446210;
      sub_1D1261D54(0, &qword_1EC60E3C0);
      swift_unknownObjectRetain();
      v26 = sub_1D13901EC();
      v28 = sub_1D11DF718(v26, v27, &v30);

      *(v24 + 4) = v28;
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1D38882F0](v25, -1, -1);
      MEMORY[0x1D38882F0](v24, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    return 0;
  }

  return result;
}

uint64_t sub_1D1261208(uint64_t a1, double a2, double a3)
{
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MedicalRecordChartCoordinate();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_1D1260424(a2, a3);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D138F04C();
    swift_unknownObjectRetain();
    v11 = sub_1D138F0AC();
    v12 = sub_1D13907FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = a1;
      v19 = v14;
      *v13 = 136446210;
      sub_1D1261D54(0, &qword_1EC60E3C0);
      swift_unknownObjectRetain();
      v15 = sub_1D13901EC();
      v17 = sub_1D11DF718(v15, v16, &v19);

      *(v13 + 4) = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1D38882F0](v14, -1, -1);
      MEMORY[0x1D38882F0](v13, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1D1261440(uint64_t a1)
{
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MedicalRecordChartCoordinate();
  result = swift_dynamicCastClass();
  if (!result)
  {
    sub_1D138F04C();
    swift_unknownObjectRetain();
    v7 = sub_1D138F0AC();
    v8 = sub_1D13907FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = a1;
      v15 = v10;
      *v9 = 136446210;
      sub_1D1261D54(0, &qword_1EC60E3C0);
      swift_unknownObjectRetain();
      v11 = sub_1D13901EC();
      v13 = sub_1D11DF718(v11, v12, &v15);

      *(v9 + 4) = v13;
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1D38882F0](v10, -1, -1);
      MEMORY[0x1D38882F0](v9, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1D126166C(uint64_t a1, double a2)
{
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MedicalRecordChartCoordinate();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending);
    if (*(v9 + 16))
    {
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = 0.0;
    }

    swift_unknownObjectRetain();
    sub_1D1260424(v10, a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D138F04C();
    swift_unknownObjectRetain();
    v11 = sub_1D138F0AC();
    v12 = sub_1D13907FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = a1;
      v20 = v14;
      *v13 = 136446210;
      sub_1D1261D54(0, &qword_1EC60E3C0);
      swift_unknownObjectRetain();
      v15 = sub_1D13901EC();
      v17 = sub_1D11DF718(v15, v16, &v20);

      *(v13 + 4) = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1D38882F0](v14, -1, -1);
      MEMORY[0x1D38882F0](v13, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_1D12618E4(__int128 *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_pointValuesAscending);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v17 = a1[1];
    v18 = *a1;
    v16 = a1[2];
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D10FE1CC(0, v4, 0);
    v5 = v20;
    v6 = v3 + 40;
    do
    {
      v21 = *(v6 - 8);
      *&v19.a = v18;
      *&v19.c = v17;
      *&v19.tx = v16;
      v9 = CGPointApplyAffineTransform(v21, &v19);
      y = v9.y;
      x = v9.x;
      v20 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D10FE1CC((v10 > 1), v11 + 1, 1);
        y = v9.y;
        x = v9.x;
        v5 = v20;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = x;
      *(v12 + 40) = y;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  v13 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartCoordinate_blockCoordinateInfo);
  swift_getObjectType();
  v14 = type metadata accessor for MedicalRecordChartCoordinate();
  swift_unknownObjectRetain();
  return sub_1D1260744(v5, v13, objc_allocWithZone(v14));
}

uint64_t dispatch thunk of MedicalRecordChartCoordinate.copy(with:roundToViewScale:)(_OWORD *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

void sub_1D1261C68()
{
  if (!qword_1EC60E3D0)
  {
    sub_1D1261CEC(255, &qword_1EC60E3D8, &qword_1EC60E3E0, &protocolRef_HKChartPoint, MEMORY[0x1E69E62F8]);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E3D0);
    }
  }
}

void sub_1D1261CEC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D1261D54(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1261D54(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void (*sub_1D1261E6C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___HRContentStatusView_title;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D1261EF4;
}

void sub_1D1261F30(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1D139016C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1D1261FCC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = &v4[*a3];
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 1) = a2;

  v9 = *&v4[*a4];
  if (a2)
  {
    v10 = sub_1D139012C();
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];

  return [v4 setNeedsLayout];
}

void (*sub_1D1262094(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___HRContentStatusView_subtitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D126211C;
}

void sub_1D1262128(void **a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v5[3];
    v7 = *&v6[*a3];
    if (*&v6[v5[4] + 8])
    {

      v8 = sub_1D139012C();

      v6 = v5[3];
    }

    else
    {
      v8 = 0;
    }

    [v7 setText_];

    [v6 setNeedsLayout];
  }

  free(v5);
}

id ContentStatusView.init(title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR___HRContentStatusView_titleLabel;
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v8 setFont_];
  [v8 setNumberOfLines_];
  v9 = v7;
  [v8 setTextColor_];

  *&v4[v5] = v8;
  v10 = OBJC_IVAR___HRContentStatusView_subtitleLabel;
  v11 = [v6 labelColor];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v12 setFont_];
  [v12 setNumberOfLines_];
  v13 = v11;
  [v12 setTextColor_];

  *&v4[v10] = v12;
  v14 = OBJC_IVAR___HRContentStatusView_spinnerView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v15 = &v4[OBJC_IVAR___HRContentStatusView_title];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v4[OBJC_IVAR___HRContentStatusView_subtitle];
  *v16 = 0;
  *(v16 + 1) = 0;
  swift_beginAccess();
  *v15 = a1;
  *(v15 + 1) = a2;
  swift_beginAccess();
  *v16 = a3;
  *(v16 + 1) = a4;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for ContentStatusView();
  v17 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D12629C0();

  return v17;
}

id ContentStatusView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ContentStatusView.init(coder:)(void *a1)
{
  v2 = OBJC_IVAR___HRContentStatusView_titleLabel;
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v5 setFont_];
  [v5 setNumberOfLines_];
  v6 = v4;
  [v5 setTextColor_];

  *&v1[v2] = v5;
  v7 = OBJC_IVAR___HRContentStatusView_subtitleLabel;
  v8 = [v3 labelColor];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v9 setFont_];
  [v9 setNumberOfLines_];
  v10 = v8;
  [v9 setTextColor_];

  *&v1[v7] = v9;
  v11 = OBJC_IVAR___HRContentStatusView_spinnerView;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v12 = &v1[OBJC_IVAR___HRContentStatusView_title];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v1[OBJC_IVAR___HRContentStatusView_subtitle];
  v14 = type metadata accessor for ContentStatusView();
  *v13 = 0;
  *(v13 + 1) = 0;
  v20.receiver = v1;
  v20.super_class = v14;
  v15 = objc_msgSendSuper2(&v20, sel_initWithCoder_, a1);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    sub_1D12629C0();
  }

  return v16;
}

id ContentStatusView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ContentStatusView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___HRContentStatusView_titleLabel;
  v10 = objc_opt_self();
  v11 = [v10 labelColor];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v12 setFont_];
  [v12 setNumberOfLines_];
  v13 = v11;
  [v12 setTextColor_];

  *&v4[v9] = v12;
  v14 = OBJC_IVAR___HRContentStatusView_subtitleLabel;
  v15 = [v10 labelColor];
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v16 setFont_];
  [v16 setNumberOfLines_];
  v17 = v15;
  [v16 setTextColor_];

  *&v4[v14] = v16;
  v18 = OBJC_IVAR___HRContentStatusView_spinnerView;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v19 = &v4[OBJC_IVAR___HRContentStatusView_title];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v4[OBJC_IVAR___HRContentStatusView_subtitle];
  v21 = type metadata accessor for ContentStatusView();
  *v20 = 0;
  *(v20 + 1) = 0;
  v24.receiver = v4;
  v24.super_class = v21;
  v22 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D12629C0();

  return v22;
}

uint64_t sub_1D12629C0()
{
  v1 = *&v0[OBJC_IVAR___HRContentStatusView_titleLabel];
  v2 = &v0[OBJC_IVAR___HRContentStatusView_title];
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1D139012C();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText_];

  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  [v1 setTextColor_];

  [v1 setAlpha_];
  [v0 addSubview_];
  v6 = *&v0[OBJC_IVAR___HRContentStatusView_subtitleLabel];
  v7 = &v0[OBJC_IVAR___HRContentStatusView_subtitle];
  swift_beginAccess();
  if (*(v7 + 1))
  {

    v8 = sub_1D139012C();
  }

  else
  {
    v8 = 0;
  }

  [v6 setText_];

  v9 = [v4 labelColor];
  [v6 setTextColor_];

  [v6 setAlpha_];
  [v0 addSubview_];
  v10 = *&v0[OBJC_IVAR___HRContentStatusView_spinnerView];
  [v10 setHidesWhenStopped_];
  [v0 addSubview_];
  sub_1D126307C();
  sub_1D1195238();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139E700;
  v12 = sub_1D138F4EC();
  v13 = MEMORY[0x1E69DC2B0];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  MEMORY[0x1D3886600](v11, sel_traitCollectionDidChangeWithTraitEnvironment_previousTraitCollection_);
  swift_unknownObjectRelease();
}

id sub_1D1262C60(SEL *a1)
{
  [*&v1[OBJC_IVAR___HRContentStatusView_spinnerView] *a1];

  return [v1 setNeedsLayout];
}

void sub_1D1262CB4(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___HRContentStatusView_spinnerView];
  v5 = a1;
  [v4 *a3];
  [v5 setNeedsLayout];
}

id sub_1D1262DA0()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for ContentStatusView();
  objc_msgSendSuper2(&v31, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR___HRContentStatusView_titleLabel];
  [v2 sizeToFit];
  v3 = *&v1[OBJC_IVAR___HRContentStatusView_spinnerView];
  [v3 sizeToFit];
  [v1 bounds];
  v4 = CGRectGetWidth(v32) + -32.0;
  [v1 bounds];
  Height = CGRectGetHeight(v33);
  [v2 frame];
  v6 = (Height - CGRectGetHeight(v34)) * 0.5;
  [v2 frame];
  x = v35.origin.x;
  v8 = v35.size.height;
  Width = CGRectGetWidth(v35);
  if (v4 >= Width)
  {
    v10 = Width;
  }

  else
  {
    v10 = v4;
  }

  [v1 bounds];
  v11 = CGRectGetWidth(v36);
  v37.origin.x = x;
  v37.origin.y = v6;
  v37.size.width = v10;
  v37.size.height = v8;
  v30 = (v11 - CGRectGetWidth(v37)) * 0.5;
  v12 = *&v1[OBJC_IVAR___HRContentStatusView_subtitleLabel];
  [v12 sizeThatFits_];
  v14 = v13;
  v16 = v15;
  [v12 frame];
  v18 = v17;
  v38.origin.x = v30;
  v38.origin.y = v6;
  v38.size.width = v10;
  v38.size.height = v8;
  v19 = CGRectGetMaxY(v38) + 8.0;
  [v1 bounds];
  v20 = CGRectGetWidth(v39);
  v40.origin.x = v18;
  v40.origin.y = v19;
  v40.size.width = v14;
  v40.size.height = v16;
  v27 = (v20 - CGRectGetWidth(v40)) * 0.5;
  [v3 frame];
  v28 = v22;
  v29 = v21;
  [v3 frame];
  v23 = v6 + -8.0 - CGRectGetHeight(v41);
  [v1 bounds];
  v24 = CGRectGetWidth(v42);
  [v3 frame];
  v25 = (v24 - CGRectGetWidth(v43)) * 0.5;
  [v2 setFrame_];
  [v12 setFrame_];
  return [v3 setFrame_];
}

void sub_1D126307C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  [v1 scaledValueForValue_];
  v3 = v2;

  v4 = *(v0 + OBJC_IVAR___HRContentStatusView_titleLabel);
  v5 = objc_opt_self();
  v6 = [v5 systemFontOfSize_];
  [v4 setFont_];

  v7 = *(v0 + OBJC_IVAR___HRContentStatusView_subtitleLabel);
  v8 = [v5 preferredFontForTextStyle_];
  [v7 setFont_];
}

id ContentStatusView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentStatusView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

id sub_1D1263470(void *a1)
{
  if (a1)
  {
    v2 = [a1 preferredContentSizeCategory];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!v2)
  {

LABEL_12:
    sub_1D126307C();

    return [v1 setNeedsLayout];
  }

  v5 = sub_1D139016C();
  v7 = v6;
  if (v5 != sub_1D139016C() || v7 != v8)
  {
    v10 = sub_1D139162C();

    if (v10)
    {
      return result;
    }

    goto LABEL_12;
  }
}

uint64_t type metadata accessor for InternalSharedItemsViewController()
{
  result = qword_1EC60E410;
  if (!qword_1EC60E410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D1263654(void *a1)
{
  v2 = v1;
  sub_1D106F934(0, &qword_1EE06B790);
  sub_1D11044D4(0, &qword_1EE06B080, &qword_1EE06B070);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v5 = sub_1D138DB7C();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D1089930();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = 0xD000000000000024;
  *(v4 + 80) = 0x80000001D13BF170;
  v10 = sub_1D139076C();
  sub_1D106F424();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139E810;
  *(v11 + 32) = v10;
  v12 = v10;
  v13 = sub_1D139044C();

  v14 = [objc_opt_self() orPredicateWithSubpredicates_];

  *&v2[qword_1EC60AAC0] = v14;
  *&v2[qword_1EC60AAC8] = MEMORY[0x1E69E7CC0];
  *&v2[qword_1EC60AAB8] = a1;
  v15 = objc_allocWithZone(MEMORY[0x1E69DC840]);
  v16 = v14;
  v17 = a1;
  v18 = [v15 init];
  v23.receiver = v2;
  v23.super_class = type metadata accessor for FeedItemListViewController();
  v19 = objc_msgSendSuper2(&v23, sel_initWithCollectionViewLayout_, v18);

  v20 = v19;
  v21 = sub_1D139012C();
  [v20 setTitle_];

  return v20;
}

void sub_1D12638D4(void *a1)
{
  v4.receiver = a1;
  v4.super_class = type metadata accessor for InternalSharedItemsViewController();
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    sub_1D138EB6C();
    sub_1D13908CC();
  }

  else
  {
    __break(1u);
  }
}

id sub_1D1263968(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for InternalSharedItemsViewController();
  return objc_msgSendSuper2(&v5, sel_viewDidAppear_, a3);
}

uint64_t sub_1D12639B4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + qword_1EC60AAB8);
  v4 = *(v1 + qword_1EC60AAC0);
  v5 = [v3 healthStore];
  v6 = [v5 profileIdentifier];

  sub_1D139092C();
  v7 = [v3 healthStore];
  v8 = type metadata accessor for InternalSharedItemsDataSourceProvider();
  v9 = swift_allocObject();
  v9[10] = MEMORY[0x1E69E7CD0];
  v9[2] = v4;
  sub_1D102CC18(&v12, (v9 + 3));
  v9[8] = v6;
  v9[9] = v7;
  a1[3] = v8;
  result = sub_1D1263FAC(&qword_1EC60E420, v10, type metadata accessor for InternalSharedItemsDataSourceProvider);
  a1[4] = result;
  *a1 = v9;
  return result;
}

id sub_1D1263AEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalSharedItemsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1263B2C()
{
  v1 = v0;
  v2 = sub_1D138E35C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D138DB9C();
  v3 = MEMORY[0x1D38834C0]();
  sub_1D106F424();
  v4 = swift_allocObject();
  v24 = xmmword_1D139E810;
  *(v4 + 16) = xmmword_1D139E810;
  v5 = v1[2];
  *(v4 + 32) = v5;
  sub_1D106F934(0, &qword_1EE06B790);
  v6 = v5;
  v7 = sub_1D139044C();

  v8 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v3 setPredicate_];
  v9 = swift_allocObject();
  *(v9 + 16) = v24;
  v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v11 = sub_1D139012C();
  v12 = [v10 initWithKey:v11 ascending:1 selector:sel_localizedStandardCompare_];

  *(v9 + 32) = v12;
  sub_1D106F934(0, &qword_1EE06B578);
  v13 = sub_1D139044C();

  [v3 setSortDescriptors_];

  v14 = v1[6];
  v15 = __swift_project_boxed_opaque_existential_1Tm(v1 + 3, v14);
  v16 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = v3;
  v21 = sub_1D138D8BC();
  (*(v16 + 8))(v19, v14);
  [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v20 managedObjectContext:v21 sectionNameKeyPath:0 cacheName:0];

  sub_1D10A5CE8();
  sub_1D138E31C();
  v22 = sub_1D138E0DC();

  sub_1D1263FAC(&qword_1EC60A0C0, 255, sub_1D10A5CE8);
  return v22;
}

uint64_t sub_1D1263EC4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 3));

  return swift_deallocClassInstance();
}

uint64_t sub_1D1263F40()
{
  sub_1D11044D4(0, &qword_1EC60A098, &qword_1EC60A0A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D139E700;
  *(v0 + 32) = sub_1D1263B2C();
  *(v0 + 40) = v1;
  return v0;
}

uint64_t sub_1D1263FAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id HealthRecordsNotifications.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t static HealthRecordsNotifications.Domains.notificationGeneration(profileIdentifier:)(uint64_t a1, uint64_t a2)
{
  sub_1D13911EC();

  MEMORY[0x1D3885C10](a1, a2);
  return 0xD000000000000022;
}

id HealthRecordsNotifications.init()()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D13910DC())
  {
    v1 = sub_1D1265DD4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtC15HealthRecordsUI26HealthRecordsNotifications_cancellables] = v1;
  sub_1D138D90C();
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI26HealthRecordsNotifications_notificationManager] = sub_1D138D8FC();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HealthRecordsNotifications();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1D1264228(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  sub_1D126672C(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  sub_1D126605C();
  v18 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D138D8DC();
  sub_1D106F934(0, &qword_1EE06B760);
  v9 = sub_1D1390A7C();
  v22 = v9;
  v10 = sub_1D1390A2C();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_1D126615C();
  sub_1D12661E0(&qword_1EC60E450, sub_1D126615C);
  sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
  sub_1D138F8BC();
  sub_1D10D5C04(v4);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v13 = v19;
  v14 = v20;
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v14;
  sub_1D12661E0(&qword_1EC60E458, sub_1D126605C);

  v15 = v18;
  sub_1D138F90C();

  (*(v6 + 8))(v8, v15);
  swift_beginAccess();
  sub_1D138F63C();
  swift_endAccess();
}

void sub_1D1264598(id *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v7 = [*a1 authorizationStatus];
  if (v7 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = sub_1D12662E0();
    }

    else
    {
      v13 = 0;
    }

    a3(v13);
  }

  else if (v7)
  {
    a3(0);
  }

  else
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;

      v10 = swift_allocObject();
      v10[2] = a3;
      v10[3] = a4;
      v10[4] = a2;

      sub_1D138D8EC();
    }
  }
}

uint64_t sub_1D12646F0(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a3;
  v49 = a4;
  v8 = sub_1D138FECC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138FF0C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D138F0BC();
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v45 = v16;
    v46 = a1;
    v47 = v13;
    v19 = a2;
    sub_1D138F06C();
    v20 = a2;
    v21 = sub_1D138F0AC();
    v22 = sub_1D13907FC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v44 = v11;
      v24 = v23;
      v42 = swift_slowAlloc();
      v43 = v12;
      v51 = a2;
      aBlock[0] = v42;
      *v24 = 136446210;
      v25 = a2;
      sub_1D10922EC();
      v26 = sub_1D13901EC();
      v28 = sub_1D11DF718(v26, v27, aBlock);
      v41 = v15;
      v29 = v9;
      v30 = v8;
      v31 = v28;

      *(v24 + 4) = v31;
      v8 = v30;
      v9 = v29;
      _os_log_impl(&dword_1D101F000, v21, v22, "Failed to request notification authorization for new health records alert: %{public}s", v24, 0xCu);
      v32 = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v12 = v43;
      MEMORY[0x1D38882F0](v32, -1, -1);
      v33 = v24;
      v11 = v44;
      MEMORY[0x1D38882F0](v33, -1, -1);

      (*(v45 + 8))(v18, v41);
    }

    else
    {

      (*(v45 + 8))(v18, v15);
    }

    v13 = v47;
    LOBYTE(a1) = v46;
  }

  sub_1D106F934(0, &qword_1EE06B760);
  v34 = sub_1D1390A7C();
  v35 = swift_allocObject();
  v36 = v49;
  *(v35 + 16) = v48;
  *(v35 + 24) = v36;
  *(v35 + 32) = a1 & 1;
  *(v35 + 40) = a5;
  aBlock[4] = sub_1D1266704;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_49;
  v37 = _Block_copy(aBlock);

  v38 = v50;
  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D12661E0(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D126672C(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v38, v11, v37);
  _Block_release(v37);

  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v38, v12);
}

void sub_1D1264C04(void (*a1)(id), uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    v6 = 0;
  }

  else
  {
    v5 = Strong;
    v6 = sub_1D12662E0();
  }

  a1(v6);
}

void sub_1D1264D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v3 = sub_1D138EBDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138EBEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D138EC0C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  (*(v8 + 104))(v10, *MEMORY[0x1E69A3828], v7);
  (*(v4 + 104))(v6, *MEMORY[0x1E69A3820], v3);
  sub_1D138EBFC();
  v15 = sub_1D138DBBC();
  v16 = sub_1D138DBAC();
  v21[3] = v15;
  v21[4] = MEMORY[0x1E69A3198];
  v21[0] = v16;
  sub_1D12661E0(&qword_1EC60E460, MEMORY[0x1E69A3830]);
  sub_1D138DBEC();
  (*(v12 + 8))(v14, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  sub_1D106F934(0, &qword_1EE069590);
  v17 = sub_1D139084C();
  v18 = sub_1D139054C();
  v19 = sub_1D139012C();
  [v17 setValue:v18 forKey:{v19, v20}];
}

uint64_t sub_1D1265060()
{
  v0 = sub_1D138DBDC();
  v21 = *(v0 - 8);
  v22 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D138EBDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138EBEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D138EC0C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  (*(v8 + 104))(v10, *MEMORY[0x1E69A3828], v7);
  (*(v4 + 104))(v6, *MEMORY[0x1E69A3818], v3);
  sub_1D138EBFC();
  v15 = sub_1D138DBBC();
  v16 = sub_1D138DBAC();
  v23[3] = v15;
  v23[4] = MEMORY[0x1E69A3198];
  v23[0] = v16;
  sub_1D12661E0(&qword_1EC60E460, MEMORY[0x1E69A3830]);
  sub_1D138DBEC();
  (*(v12 + 8))(v14, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  v18 = v21;
  v17 = v22;
  (*(v21 + 104))(v2, *MEMORY[0x1E69A31A0], v22);
  sub_1D138DBCC();
  return (*(v18 + 8))(v2, v17);
}

id HealthRecordsNotifications.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthRecordsNotifications();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1265480(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1D13910DC())
    {
LABEL_3:
      sub_1D11045C8();
      v3 = sub_1D13911AC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1D13910DC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D3886B70](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1D1390D7C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1D106F934(0, &qword_1EC609A00);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1D1390D8C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1D1390D7C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1D106F934(0, &qword_1EC609A00);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1D1390D8C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1D1265764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D1266284();
    v3 = sub_1D13911AC();
    v4 = 0;
    v5 = v3 + 56;
    v35 = a1 + 32;
    v36 = v1;
    while (1)
    {
      v38 = v4;
      v6 = (v35 + 72 * v4);
      v7 = v6[1];
      v46 = *v6;
      v47 = v7;
      v8 = v6[3];
      v48 = v6[2];
      v49 = v8;
      v50 = *(v6 + 8);
      v10 = *(&v7 + 1);
      v9 = v7;
      v11 = v46;
      sub_1D139177C();
      MEMORY[0x1D38870E0](v11);
      sub_1D1082914(&v46, v40);
      sub_1D1390D9C();
      v39 = v9;
      sub_1D139179C();
      if (v10)
      {
        sub_1D139027C();
      }

      v12 = *(&v49 + 1);
      v13 = v49;
      v14 = v48;
      sub_1D139027C();
      sub_1D123F520(&v41, v13);
      v37 = v12;
      sub_1D123F520(&v41, v12);
      sub_1D1390D9C();
      result = sub_1D13917CC();
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = *(v5 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        break;
      }

      v27 = v36;
LABEL_24:
      *(v5 + 8 * v18) = v19 | v20;
      v28 = *(v3 + 48) + 72 * v17;
      *v28 = v46;
      v29 = v47;
      v30 = v48;
      v31 = v49;
      *(v28 + 64) = v50;
      *(v28 + 32) = v30;
      *(v28 + 48) = v31;
      *(v28 + 16) = v29;
      v32 = *(v3 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v34;
LABEL_26:
      v4 = v38 + 1;
      if (v38 + 1 == v27)
      {
        return v3;
      }
    }

    v21 = ~v16;
    while (1)
    {
      v22 = *(v3 + 48) + 72 * v17;
      v41 = *v22;
      v24 = *(v22 + 32);
      v23 = *(v22 + 48);
      v25 = *(v22 + 64);
      v42 = *(v22 + 16);
      v43 = v24;
      v45 = v25;
      v44 = v23;
      if (v41 != v11)
      {
        goto LABEL_9;
      }

      sub_1D106F934(0, &qword_1EE06B0C0);
      sub_1D1082914(&v41, v40);
      if (sub_1D1390D8C())
      {
        if (*(&v42 + 1))
        {
          if (v10 && (v42 == __PAIR128__(v10, v39) || (sub_1D139162C() & 1) != 0))
          {
LABEL_16:
            if (v43 == v14 || (sub_1D139162C()) && (sub_1D1335054(v44, v13) & 1) != 0 && (sub_1D1335054(*(&v44 + 1), v37))
            {
              v26 = sub_1D1390D8C();
              result = sub_1D1080D98(&v41);
              if (v26)
              {
                sub_1D1080D98(&v46);
                v27 = v36;
                goto LABEL_26;
              }

              goto LABEL_9;
            }
          }
        }

        else if (!v10)
        {
          goto LABEL_16;
        }
      }

      result = sub_1D1080D98(&v41);
LABEL_9:
      v17 = (v17 + 1) & v21;
      v18 = v17 >> 6;
      v20 = 1 << v17;
      if ((*(v5 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        v19 = *(v5 + 8 * v18);
        v27 = v36;
        goto LABEL_24;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D1265AC0(uint64_t a1)
{
  v2 = sub_1D138D75C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D10EBCBC();
    v9 = sub_1D13911AC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D12661E0(&qword_1EC60A9C0, MEMORY[0x1E6969AD0]);
      v16 = sub_1D139006C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D12661E0(&qword_1EC60A9C8, MEMORY[0x1E6969AD0]);
          v23 = sub_1D139011C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D1265DD4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1D13910DC();
    if (result)
    {
LABEL_3:
      sub_1D1266798();
      result = sub_1D13911AC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1D13910DC();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1D3886B70](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1D138F65C();
    sub_1D12661E0(&qword_1EC60BEA8, MEMORY[0x1E695BF10]);
    result = sub_1D139006C();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1D12661E0(&unk_1EC60E470, MEMORY[0x1E695BF10]);
      do
      {
        result = sub_1D139011C();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_1D126605C()
{
  if (!qword_1EC60E438)
  {
    sub_1D126615C();
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D12661E0(&qword_1EC60E450, sub_1D126615C);
    sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E438);
    }
  }
}

void sub_1D126615C()
{
  if (!qword_1EC60E440)
  {
    sub_1D106F934(255, &qword_1EC60E448);
    v0 = sub_1D138F72C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E440);
    }
  }
}

uint64_t sub_1D12661E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1266284()
{
  if (!qword_1EC60A960)
  {
    sub_1D109D220();
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A960);
    }
  }
}

id sub_1D12662E0()
{
  sub_1D106F934(0, &qword_1EE069590);
  v0 = sub_1D139084C();
  v1 = sub_1D139012C();
  v2 = [v0 BOOLForKey_];

  result = 0;
  if ((v2 & 1) == 0)
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    sub_1D138D1CC();
    v4 = sub_1D139012C();

    v5 = sub_1D139012C();

    v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:{1, 0xE000000000000000}];

    sub_1D138D1CC();
    v7 = swift_allocObject();
    *(v7 + 16) = 0xD000000000000018;
    *(v7 + 24) = 0x80000001D13C7AC0;
    v8 = sub_1D139012C();

    v19 = sub_1D1266790;
    v20 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1D10CB11C;
    v18 = &block_descriptor_27_1;
    v9 = _Block_copy(&aBlock);

    v10 = objc_opt_self();
    v11 = [v10 actionWithTitle:v8 style:1 handler:{v9, 0xE000000000000000}];
    _Block_release(v9);

    [v6 addAction_];
    sub_1D138D1CC();
    v12 = sub_1D139012C();

    v19 = sub_1D1265060;
    v20 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1D10CB11C;
    v18 = &block_descriptor_30_3;
    v13 = _Block_copy(&aBlock);

    v14 = [v10 actionWithTitle:v12 style:0 handler:{v13, 0xE000000000000000}];
    _Block_release(v13);

    [v6 addAction_];
    return v6;
  }

  return result;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D126672C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D1266798()
{
  if (!qword_1EC60E468)
  {
    sub_1D138F65C();
    sub_1D12661E0(&qword_1EC60BEA8, MEMORY[0x1E695BF10]);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E468);
    }
  }
}

BOOL sub_1D1266844()
{
  if ([v0 controllerMode] == 3)
  {
    return 0;
  }

  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartabilityResult];
  v3 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_seriesDataSources);
  if (v3 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      return 1;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    return 1;
  }

  if (!*(v2 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_outOfRangeDataSource))
  {
    return 0;
  }

  return *(v2 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_noRangeDataSource) != 0;
}

uint64_t sub_1D1266AB4()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1D1268380(0, &qword_1EC60E4E0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v50 - v4;
  sub_1D1268380(0, &qword_1EE06B500, MEMORY[0x1E6969530], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v50 - v11;
  [*(*&v1[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartabilityResult] + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_configuration) chartControllerClass];
  swift_getObjCClassMetadata();
  sub_1D106F934(0, &qword_1EC60E4E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([swift_getObjCClassFromMetadata() isSubclassOfClass_] && swift_dynamicCastMetatype())
  {
    v57 = v1[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartType];
    sub_1D1268380(0, &qword_1EC60E4F0, sub_1D1268538, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D139E700;
    v15 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_displayTypes];
    if (v15 >> 62)
    {
      sub_1D106F934(0, &unk_1EC60E500);

      v49 = sub_1D13913DC();

      v15 = v49;
    }

    else
    {

      sub_1D139165C();
      sub_1D106F934(0, &unk_1EC60E500);
    }

    *(v14 + 32) = v15;
    v16 = [v1 applicationItems];
    v17 = [v16 healthStore];

    v18 = [v1 applicationItems];
    v56 = [v18 unitController];

    v19 = [v1 applicationItems];
    v55 = [v19 dateCache];

    v20 = [v1 applicationItems];
    v54 = [v20 chartDataCacheController];

    v21 = [v1 applicationItems];
    v53 = [v21 timeScopeController];

    v22 = [v1 applicationItems];
    v52 = [v22 sampleDateRangeController];

    v23 = [v1 displayDate];
    if (v23)
    {
      v24 = v23;
      sub_1D138D52C();

      v25 = sub_1D138D57C();
      (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
    }

    else
    {
      v25 = sub_1D138D57C();
      (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
    }

    sub_1D112A184(v8, v12);
    sub_1D138D57C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v12, 1, v25) == 1)
    {
      sub_1D1268464(v12, &qword_1EE06B500, MEMORY[0x1E6969530]);
      v58 = 0u;
      v59 = 0u;
    }

    else
    {
      *(&v59 + 1) = v25;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v58);
      (*(v26 + 32))(boxed_opaque_existential_1, v12, v25);
    }

    v28 = sub_1D138D76C();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v5, 1, 1, v28);
    sub_1D1268538();
    v51 = sub_1D139044C();

    v30 = *(&v59 + 1);
    if (*(&v59 + 1))
    {
      v31 = __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
      v32 = v17;
      v33 = *(v30 - 8);
      v34 = MEMORY[0x1EEE9AC00](v31);
      v36 = &v50 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v36, v34);
      v37 = sub_1D139161C();
      (*(v33 + 8))(v36, v30);
      v17 = v32;
      __swift_destroy_boxed_opaque_existential_1Tm(&v58);
    }

    else
    {
      v37 = 0;
    }

    if ((*(v29 + 48))(v5, 1, v28) == 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = sub_1D138D6DC();
      (*(v29 + 8))(v5, v28);
    }

    if (v57)
    {
      v39 = 173312;
    }

    else
    {
      v39 = 1280;
    }

    v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v41 = v52;
    v42 = v53;
    v43 = v54;
    v44 = v51;
    v46 = v55;
    v45 = v56;
    v47 = [v40 initWithStackedDisplayTypes:v51 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:v17 unitPreferenceController:v56 dateCache:v55 chartDataCacheController:v54 selectedTimeScopeController:v53 sampleTypeDateRangeController:v52 initialXValue:v37 currentCalendarOverride:v38 options:v39 timeScopeRanges:0];

    swift_unknownObjectRelease();
    [v47 addChartViewObserver_];
    return v47;
  }

  else
  {
    result = sub_1D13913BC();
    __break(1u);
  }

  return result;
}

id sub_1D12673DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v29 = a1;
  v5 = MEMORY[0x1E6969530];
  sub_1D1268380(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  sub_1D1072E70(v3 + OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartDefining, v31);
  v12 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartabilityResult);
  v13 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartType);
  sub_1D12683E4(a2, v11, &qword_1EE06B500, v5);
  v14 = type metadata accessor for ChartOverlayViewController();
  v15 = objc_allocWithZone(v14);
  sub_1D1072E70(v31, &v15[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartDefining]);
  v15[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartType] = v13;
  *&v15[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartabilityResult] = v12;
  sub_1D106F424();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D139E810;
  v17 = *&v12[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_masterDataSource];
  v18 = objc_opt_self();
  v19 = v12;
  v20 = [v18 standardNumericYAxisWithConfigurationOverrides_];
  v21 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x160))();

  *(v16 + 32) = v21;
  *&v15[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_displayTypes] = v16;
  sub_1D12683E4(v11, v8, &qword_1EE06B500, v5);
  v22 = sub_1D138D57C();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v8, 1, v22) != 1)
  {
    v24 = sub_1D138D4EC();
    (*(v23 + 8))(v8, v22);
  }

  v30.receiver = v15;
  v30.super_class = v14;
  v25 = objc_msgSendSuper2(&v30, sel_initWithDisplayDate_applicationItems_factorDisplayTypes_mode_, v24, v28, 0, v29);

  sub_1D1268464(v11, &qword_1EE06B500, MEMORY[0x1E6969530]);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v25;
}

id sub_1D12679D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChartOverlayViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D1267A88()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartDefining];
  v3 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartDefining + 24];
  v4 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartDefining + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v0[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartDefining], v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = *(v2 + 3);
    v10 = *(v2 + 4);
    __swift_project_boxed_opaque_existential_1Tm(v2, v9);
    return (*(v10 + 8))(v9, v10);
  }

  else
  {
    result = [v1 title];
    if (result)
    {
      v12 = result;
      v13 = sub_1D139016C();

      return v13;
    }
  }

  return result;
}

uint64_t sub_1D1267B8C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (!a1)
  {
    return v2;
  }

  v72 = [objc_opt_self() standardNumericYAxisWithConfigurationOverrides_];
  sub_1D106F934(0, &unk_1EC60D410);
  if (a1 == 1)
  {
    v69 = static HKUIMetricColors.chartFilterDefaultForSingle()();
    v4 = 1;
  }

  else
  {
    v69 = static HKUIMetricColors.chartFilterDefaultForMultiple()();
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1D1268380(0, &qword_1EC60ABD8, sub_1D10FA090, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E710;
  if (qword_1EC608CB0 != -1)
  {
    swift_once();
  }

  *(inited + 32) = sub_1D138D1CC();
  *(inited + 40) = v6;
  v7 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartabilityResult);
  v8 = *(v7 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_outOfRangeDataSource);
  *(inited + 48) = v8;
  v9 = v8;
  v67 = 0xE000000000000000;
  *(inited + 56) = sub_1D138D1CC();
  *(inited + 64) = v10;
  v11 = *(v7 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_noRangeDataSource);
  *(inited + 72) = v11;
  v12 = *(v7 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_seriesDataSources);
  v70 = v12;
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v68 = v4;
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_22:
    v28 = v11;
    goto LABEL_23;
  }

  v13 = sub_1D13910DC();
  v68 = v4;
  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_9:
  v77 = v2;
  v14 = v11;

  result = sub_1D10FE208(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v2 = v77;
    v17 = v70;
    do
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1D3886B70](v16, v17);
      }

      else
      {
        v18 = *(v17 + 8 * v16 + 32);
      }

      v19 = v18;
      sub_1D12683E4(v18 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining, v74, &qword_1EC60E4C0, sub_1D11F6950);
      v20 = v75;
      if (v75)
      {
        v21 = v76;
        __swift_project_boxed_opaque_existential_1Tm(v74, v75);
        v17 = v70;
        v22 = (*(v21 + 8))(v20, v21);
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
      }

      else
      {
        sub_1D1268464(v74, &qword_1EC60E4C0, sub_1D11F6950);
        v22 = 0;
        v24 = 0xE000000000000000;
      }

      v77 = v2;
      v26 = v2[2];
      v25 = v2[3];
      if (v26 >= v25 >> 1)
      {
        sub_1D10FE208((v25 > 1), v26 + 1, 1);
        v17 = v70;
        v2 = v77;
      }

      ++v16;
      v2[2] = v26 + 1;
      v27 = &v2[3 * v26];
      v27[4] = v22;
      v27[5] = v24;
      v27[6] = v19;
    }

    while (v13 != v16);

LABEL_23:
    v74[0] = inited;
    result = sub_1D11227D4(v2);
    v29 = 0;
    v30 = v74[0];
    v31 = v74[0] + 48;
    v32 = *(v74[0] + 16);
    v71 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v33 = (v31 + 24 * v29);
    while (v32 != v29)
    {
      if (v29 >= *(v30 + 16))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      ++v29;
      v34 = v33 + 3;
      v35 = *v33;
      v33 += 3;
      if (v35)
      {
        v37 = *(v34 - 5);
        v36 = *(v34 - 4);

        v38 = v35;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D10F987C(0, v71[2] + 1, 1, v71);
          v71 = result;
        }

        v40 = v71[2];
        v39 = v71[3];
        if (v40 >= v39 >> 1)
        {
          result = sub_1D10F987C((v39 > 1), v40 + 1, 1, v71);
          v71 = result;
        }

        v71[2] = v40 + 1;
        v41 = &v71[3 * v40];
        v41[4] = v37;
        v41[5] = v36;
        v41[6] = v38;
        goto LABEL_24;
      }
    }

    v42 = v71[2];
    if (v42 >= v68)
    {
      v43 = v68;
    }

    else
    {
      v43 = v71[2];
    }

    if (v42)
    {
      v77 = MEMORY[0x1E69E7CC0];
      sub_1D13912DC();
      result = type metadata accessor for MedicalRecordChartOverlayContext();
      v44 = result;
      v45 = (v71 + 6);
      v46 = v69;
      while (v43)
      {
        v52 = *(v45 - 2);
        v53 = *(v45 - 1);
        v54 = *v45;
        v55 = objc_allocWithZone(v44);
        *&v55[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem] = 0;
        *&v55[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedOverlayDisplayType] = 0;
        *&v55[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedDataSource] = 0;
        v56 = &v55[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_title];
        *v56 = v52;
        *(v56 + 1) = v53;
        *&v55[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_dataSource] = v54;
        *&v55[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_defaultColors] = v69;
        v57 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
        swift_beginAccess();
        v58 = *&v54[v57];
        if (v58)
        {
          v47 = *&v54[v57];
        }

        else
        {
          v47 = v69;
        }

        *&v55[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_selectedColors] = v47;
        *&v55[OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_verticalAxis] = v72;
        v73.receiver = v55;
        v73.super_class = v44;
        v48 = v54;
        v49 = v69;

        v50 = v72;
        v51 = v58;
        objc_msgSendSuper2(&v73, sel_init, v67);
        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        result = sub_1D13912BC();
        v45 += 3;
        if (!--v43)
        {
          if (v77 >> 62)
          {
            goto LABEL_48;
          }

          goto LABEL_44;
        }
      }

      goto LABEL_50;
    }

    v46 = v69;
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_48:
      sub_1D12684D4();

      sub_1D13913DC();
    }

    else
    {
LABEL_44:

      sub_1D139165C();
      sub_1D12684D4();
    }

    v59 = objc_allocWithZone(MEMORY[0x1E69A4458]);
    sub_1D12684D4();
    v60 = sub_1D139044C();

    v61 = [v59 initWithSectionTitle:0 overlayContextItems:v60];

    sub_1D106F424();
    v2 = swift_allocObject();
    *(v2 + 1) = xmmword_1D139E810;
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1D139E810;
    *(v62 + 32) = v61;
    v63 = objc_allocWithZone(MEMORY[0x1E69A4460]);
    sub_1D106F934(0, &qword_1EC60E4D8);
    v64 = v61;
    v65 = sub_1D139044C();

    v66 = [v63 initWithContainerTitle:0 overlayContextSections:v65];

    v2[4] = v66;
    swift_unknownObjectRelease();

    return v2;
  }

LABEL_51:
  __break(1u);
  return result;
}

void sub_1D1268380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D12683E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D1268380(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D1268464(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1268380(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D12684D4()
{
  result = qword_1EC60E4D0;
  if (!qword_1EC60E4D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60E4D0);
  }

  return result;
}

void sub_1D1268538()
{
  if (!qword_1EC60E4F8)
  {
    sub_1D106F934(255, &unk_1EC60E500);
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E4F8);
    }
  }
}

void *sub_1D12685A0(uint64_t a1)
{
  v2 = sub_1D139104C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1D126B008(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1D1268624(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D139107C();
    v5 = v4;
    v6 = sub_1D139112C();
    v8 = v7;
    v9 = MEMORY[0x1D3886A00](v3, v5, v6, v7);
    sub_1D1105004(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1D1105004(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1D139104C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1D12D39B8(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1D1105004(v3, v5, v2 != 0);
  return v12;
}

unint64_t sub_1D1268740(unint64_t result, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_1D13910DC();
    result = v4;
    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1D3886B70](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:
    v6 = v3;
    a2(&v7, &v6);

    return v7;
  }

  __break(1u);
  return result;
}

void sub_1D126880C(char a1)
{
  v3 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover) == 1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_providedHealthStore);
    if (v6)
    {
      v7 = v6;
LABEL_6:
      type metadata accessor for OnboardingTileAppearanceManager();
      inited = swift_initStackObject();
      *(inited + 16) = v7;
      v16 = objc_allocWithZone(MEMORY[0x1E696C210]);
      v17 = v7;
      v18 = sub_1D139012C();
      v19 = [v16 initWithCategory:0 domainName:v18 healthStore:v17];

      *(inited + 24) = v19;
      swift_storeEnumTagMultiPayload();
      sub_1D1096F38(a1 & 1, v5);

      swift_setDeallocating();

      sub_1D1165518(v5);
      return;
    }

    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_context;
    swift_beginAccess();
    sub_1D1268B4C(v1 + v8, v21);
    v9 = v22;
    if (v22)
    {
      v10 = __swift_project_boxed_opaque_existential_1Tm(v21, v22);
      v11 = *(v9 - 8);
      v12 = MEMORY[0x1EEE9AC00](v10);
      v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v11 + 16))(v14, v12);
      v7 = sub_1D138E93C();
      (*(v11 + 8))(v14, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1D1268A90(uint64_t a1, uint64_t *a2)
{
  sub_1D1268B4C(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_context;
  swift_beginAccess();
  sub_1D1268CA4(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1D1268AF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_context;
  swift_beginAccess();
  return sub_1D1268B4C(v1 + v3, a1);
}

uint64_t sub_1D1268B4C(uint64_t a1, uint64_t a2)
{
  sub_1D126B858(0, &qword_1EE0696E8, sub_1D1268BE0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1268BE0()
{
  result = qword_1EE0696F0;
  if (!qword_1EE0696F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0696F0);
  }

  return result;
}

uint64_t sub_1D1268C44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_context;
  swift_beginAccess();
  sub_1D1268CA4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D1268CA4(uint64_t a1, uint64_t a2)
{
  sub_1D126B858(0, &qword_1EE0696E8, sub_1D1268BE0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1D1268E2C(char a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = sub_1D139044C();
  v7 = HKUIJoinStringsForAutomationIdentifier();

  if (v7)
  {
    v8 = sub_1D139016C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = &v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_baseIdentifier];
  *v11 = v8;
  v11[1] = v10;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_minimumTappableDismissWidth] = 0x4042000000000000;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_minimumTappableDismissHeight] = 0x4042000000000000;
  v12 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_headerType;
  v13 = *MEMORY[0x1E69A3590];
  v14 = sub_1D138DF2C();
  (*(*(v14 - 8) + 104))(&v2[v12], v13, v14);
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController____lazy_storage___tipsView] = 0;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController____lazy_storage___accessoryLabel] = 0;
  v15 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_accessoryColor;
  *&v2[v15] = [objc_opt_self() tertiaryLabelColor];
  v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover] = a1 & 1;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_providedHealthStore] = a2;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for LabsOnboardingViewController();
  return objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
}

id LabsOnboardingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *LabsOnboardingViewController.providedHealthStore.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_providedHealthStore);
  v2 = v1;
  return v1;
}

uint64_t sub_1D1269080(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1D12690EC()
{
  v1 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D1269144(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t LabsOnboardingViewController.headerType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_headerType;
  v4 = sub_1D138DF2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *sub_1D126929C(uint64_t a1)
{
  v1 = [objc_allocWithZone(type metadata accessor for TipsView()) initWithFrame_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v2 = sub_1D138D1CC();
  v4 = v3;
  v5 = &v1[OBJC_IVAR____TtC15HealthRecordsUI8TipsView_titleText];
  swift_beginAccess();
  *v5 = v2;
  v5[1] = v4;

  v6 = sub_1D1123478();
  if (v5[1])
  {

    v7 = sub_1D139012C();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v8 setParagraphSpacing_];
  sub_1D138D1CC();
  sub_1D126B858(0, &qword_1EC60F520, sub_1D106F814, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E710;
  v10 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v11 = sub_1D106F934(0, &qword_1EC60E670);
  v12 = v10;
  *(inited + 40) = sub_1D1390C6C();
  v13 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v11;
  *(inited + 72) = v13;
  *(inited + 104) = sub_1D106F934(0, &qword_1EC60BFE0);
  *(inited + 80) = v8;
  v14 = v13;
  v15 = v8;
  sub_1D109B2B4(inited);
  swift_setDeallocating();
  sub_1D106F814();
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v17 = sub_1D139012C();

  type metadata accessor for Key(0);
  sub_1D126B4F4(&qword_1EC60F530, type metadata accessor for Key);
  v18 = sub_1D138FFEC();

  v19 = [v16 initWithString:v17 attributes:{v18, 0xE000000000000000}];

  v20 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView_attributedSubtitleText;
  swift_beginAccess();
  v21 = *&v1[v20];
  *&v1[v20] = v19;
  v22 = v19;

  v23 = sub_1D11235E4();
  v24 = *&v1[v20];
  [v23 setAttributedText_];

  sub_1D106F934(0, &qword_1EE06A540);
  v25 = sub_1D1390CFC();
  v26 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView_image;
  swift_beginAccess();
  v27 = *&v1[v26];
  *&v1[v26] = v25;
  v28 = v25;

  v29 = sub_1D1123748();
  v30 = *&v1[v26];
  [v29 setImage_];

  v31 = objc_opt_self();
  v32 = v1;
  v33 = [v31 systemYellowColor];
  [v32 setTintColor_];

  v34 = (a1 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_baseIdentifier);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];

  sub_1D11240C8(v36, v35);

  return v32;
}

id sub_1D1269868(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1D12698CC(char *a1)
{
  sub_1D138DFAC();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *MEMORY[0x1E69DDD28];
  sub_1D138DF9C();
  sub_1D138DF8C();
  v4 = *&a1[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_accessoryColor];
  v5 = v2;
  [v5 setTextColor_];
  [v5 setTextAlignment_];
  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAdjustsFontSizeToFitWidth_];
  LODWORD(v7) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v9];
  sub_1D106F934(0, &qword_1EC60E670);
  v10 = sub_1D1390C6C();
  [v6 setFont_];

  v11 = sub_1D139044C();
  v12 = HKUIJoinStringsForAutomationIdentifier();

  [v6 setAccessibilityIdentifier_];
  sub_1D106F934(0, &qword_1EE06A540);
  v13 = sub_1D1390C6C();
  v14 = MEMORY[0x1D3886680]();

  v15 = v6;
  if (v14)
  {
    v16 = sub_1D1390C6C();
    v17 = [a1 traitCollection];
    [v17 displayScale];
    v19 = v18;

    v20 = [objc_opt_self() tertiaryLabelColor];
    v21 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v22 = v14;
    v15 = [v21 initWithImage:v22 font:v16 displayScale:v20 tintColor:1 adjustsImageSizeForAccessibilityContentSizeCategory:v19];

    [v6 setAttributedText_];
  }

  return v6;
}

void sub_1D1269BE8()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LabsOnboardingViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  sub_1D1269D70();
  v1 = v0[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover];
  v2 = -22.0;
  if (v0[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover])
  {
    v2 = 24.0;
  }

  sub_1D1269EC4(v0, v2);
  v3 = objc_opt_self();
  sub_1D106F934(0, &qword_1EC609690);
  v4 = sub_1D139044C();

  [v3 activateConstraints_];

  if (v1)
  {
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 systemLayoutSizeFittingSize_];
      v8 = v7;
      v10 = v9;

      [v0 setPreferredContentSize_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D1269D70()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_1D126927C();
  [v2 addSubview_];

  if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover) != 1)
  {
    return;
  }

  v4 = [v0 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = sub_1D1269848();
  [v5 addSubview_];
}

void sub_1D1269E68()
{
  sub_1D126880C(1);
  if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover) == 1)
  {

    [v0 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_1D1269EC4(char *a1, double a2)
{
  v34 = MEMORY[0x1E69E7CC0];
  v4 = sub_1D126927C();
  v5 = [v4 leadingAnchor];

  result = [a1 view];
  if (!result)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v7 = result;
  v8 = [result leadingAnchor];

  v9 = [v5 constraintEqualToAnchor_];
  MEMORY[0x1D3885D90]();
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v10 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController____lazy_storage___tipsView;
  v11 = [*&a1[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController____lazy_storage___tipsView] trailingAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_25;
  }

  v12 = result;
  v13 = [result trailingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  MEMORY[0x1D3885D90]();
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v15 = [*&a1[v10] topAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_26;
  }

  v16 = result;
  v17 = [result topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:a2];
  MEMORY[0x1D3885D90]();
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v19 = [*&a1[v10] bottomAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_27;
  }

  v20 = result;
  v21 = [result bottomAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  MEMORY[0x1D3885D90]();
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  if (a1[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover] != 1)
  {
    return v34;
  }

  result = [a1 view];
  if (!result)
  {
    goto LABEL_28;
  }

  v23 = result;
  v24 = [result widthAnchor];

  v25 = [v24 constraintEqualToConstant_];
  MEMORY[0x1D3885D90]();
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v26 = sub_1D1269848();
  v27 = [v26 topAnchor];

  v28 = [*&a1[v10] topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:4.0];

  MEMORY[0x1D3885D90]();
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v30 = [*&a1[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController____lazy_storage___accessoryLabel] trailingAnchor];
  result = [a1 view];
  if (result)
  {
    v31 = result;
    v32 = [result trailingAnchor];

    v33 = [v30 constraintEqualToAnchor:v32 constant:-13.0];
    MEMORY[0x1D3885D90]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();
    return v34;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1D126A4BC(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover] != 1)
  {
    sub_1D106F934(0, &qword_1EC60E530);
    sub_1D126B444();
    v14 = sub_1D13906AC();
    v17.receiver = v2;
    v17.super_class = type metadata accessor for LabsOnboardingViewController();
    objc_msgSendSuper2(&v17, sel_touchesBegan_withEvent_, v14, a2);
LABEL_11:

    return;
  }

  v4 = sub_1D1268624(a1);
  if (!v4)
  {
LABEL_10:
    sub_1D106F934(0, &qword_1EC60E530);
    sub_1D126B444();
    v14 = sub_1D13906AC();
    v16.receiver = v2;
    v16.super_class = type metadata accessor for LabsOnboardingViewController();
    objc_msgSendSuper2(&v16, sel_touchesBegan_withEvent_, v14, a2);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v2 view];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = v2;
  v9 = sub_1D1269848();
  v10 = MEMORY[0x1D38865F0](v5, v9, 36.0, 36.0);

  if ((v10 & 1) == 0)
  {

    v2 = v8;
    goto LABEL_10;
  }

  v11 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController____lazy_storage___accessoryLabel];
  v12 = objc_opt_self();
  v13 = v11;
  v15 = [v12 quaternaryLabelColor];
  [v13 setTextColor_];
}

void sub_1D126A6D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D106F934(0, &qword_1EC60E530);
  sub_1D126B444();
  v6 = sub_1D13906AC();
  v14.receiver = v3;
  v14.super_class = type metadata accessor for LabsOnboardingViewController();
  objc_msgSendSuper2(&v14, sel_touchesEnded_withEvent_, v6, a2);

  if (v3[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover] == 1)
  {
    v7 = sub_1D1269848();
    [v7 setTextColor_];

    v8 = sub_1D1268624(a1);
    if (v8)
    {
      v9 = v8;
      v10 = [v3 view];
      if (v10)
      {
        v11 = v10;
        v12 = *&v3[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController____lazy_storage___accessoryLabel];
        v13 = v12;
        LOBYTE(v12) = MEMORY[0x1D38865F0](v9, v12, 36.0, 36.0);

        if (v12)
        {
          sub_1D126880C(1);
          [v3 dismissViewControllerAnimated:1 completion:0];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1D126A860(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_1D106F934(0, &qword_1EC60E530);
  sub_1D126B444();
  v8 = sub_1D13906BC();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

id LabsOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabsOnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D126ABA8()
{
  v1 = (*v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D126AC04(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D126ACDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_headerType;
  v5 = sub_1D138DF2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D126AD60()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();

  return v3;
}

uint64_t LabsOnboardingViewController.identifier.getter()
{
  type metadata accessor for OnboardingViewIdentifier();

  return swift_storeEnumTagMultiPayload();
}

id LabsOnboardingViewController.healthStore.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover) != 1)
  {
    v2 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_context;
    swift_beginAccess();
    result = sub_1D1268B4C(v0 + v2, v11);
    v3 = v12;
    if (v12)
    {
      v4 = __swift_project_boxed_opaque_existential_1Tm(v11, v12);
      v5 = *(v3 - 8);
      v6 = MEMORY[0x1EEE9AC00](v4);
      v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v5 + 16))(v8, v6);
      v9 = sub_1D138E93C();
      (*(v5 + 8))(v8, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      return v9;
    }

    goto LABEL_9;
  }

  result = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_providedHealthStore);
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  return result;
}

uint64_t sub_1D126AFA0()
{
  type metadata accessor for OnboardingViewIdentifier();

  return swift_storeEnumTagMultiPayload();
}

void *sub_1D126B008(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = (*(a5 + 56) + 16 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_1D126B0A4(char a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = sub_1D139044C();
  v7 = HKUIJoinStringsForAutomationIdentifier();

  if (v7)
  {
    v8 = sub_1D139016C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = &v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_baseIdentifier];
  *v11 = v8;
  v11[1] = v10;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_minimumTappableDismissWidth] = 0x4042000000000000;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_minimumTappableDismissHeight] = 0x4042000000000000;
  v12 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_headerType;
  v13 = *MEMORY[0x1E69A3590];
  v14 = sub_1D138DF2C();
  (*(*(v14 - 8) + 104))(&v2[v12], v13, v14);
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController____lazy_storage___tipsView] = 0;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController____lazy_storage___accessoryLabel] = 0;
  v15 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_accessoryColor;
  *&v2[v15] = [objc_opt_self() tertiaryLabelColor];
  v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover] = a1 & 1;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_providedHealthStore] = a2;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for LabsOnboardingViewController();
  v16 = a2;
  result = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  if (a1)
  {
    v18 = result;
    [result setModalPresentationStyle_];
    return v18;
  }

  return result;
}

void _s15HealthRecordsUI28LabsOnboardingViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_context;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = sub_1D139044C();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    v4 = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_baseIdentifier);
  *v7 = v4;
  v7[1] = v6;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_minimumTappableDismissWidth) = 0x4042000000000000;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_minimumTappableDismissHeight) = 0x4042000000000000;
  v8 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_headerType;
  v9 = *MEMORY[0x1E69A3590];
  v10 = sub_1D138DF2C();
  (*(*(v10 - 8) + 104))(v0 + v8, v9, v10);
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController____lazy_storage___tipsView) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController____lazy_storage___accessoryLabel) = 0;
  v11 = OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_accessoryColor;
  *(v0 + v11) = [objc_opt_self() tertiaryLabelColor];
  sub_1D13913BC();
  __break(1u);
}

uint64_t type metadata accessor for LabsOnboardingViewController()
{
  result = qword_1EC60E578;
  if (!qword_1EC60E578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D126B444()
{
  result = qword_1EC60E538;
  if (!qword_1EC60E538)
  {
    sub_1D106F934(255, &qword_1EC60E530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E538);
  }

  return result;
}

uint64_t sub_1D126B4F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D126B58C()
{
  result = sub_1D138DF2C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D126B858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D126B8BC(uint64_t a1)
{
  sub_1D126B858(0, &qword_1EE0696E8, sub_1D1268BE0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D126B948(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v8)
    {
LABEL_11:
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      v26 = sub_1D139012C();
      v13 = [objc_opt_self() imageNamed:v26 inBundle:v25];

      v16 = 0xD000000000000039;
      v11 = 0xD00000000000003FLL;
      v14 = "SCD_IMPORT_DETAIL_WALLET_ADDED";
      v27 = "SCD_IMPORT_DETAIL_HEALTH_ALREADY_PRESENT_WALLET_TEMP_INELIGIBLE";
LABEL_12:
      v15 = (v27 - 32);
    }

    else
    {
LABEL_7:
      v17 = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass_];
      v19 = sub_1D139012C();
      v13 = [objc_opt_self() imageNamed:v19 inBundle:v18];

      v16 = 0xD00000000000002CLL;
      v14 = "scd_record_added";
      v20 = "SCD_IMPORT_DETAIL_HEALTH_ADDED_WALLET_TEMP_INELIGIBLE";
LABEL_8:
      v15 = (v20 - 32);
      v11 = 0xD000000000000035;
    }
  }

  else if ((v8 - 2) >= 2)
  {
    switch(__ROR8__(a1 ^ 0x8000000000000000, 3))
    {
      case 1:
        v38 = swift_getObjCClassFromMetadata();
        v39 = [objc_opt_self() bundleForClass_];
        v40 = sub_1D139012C();
        v13 = [objc_opt_self() imageNamed:v40 inBundle:v39];

        v16 = 0xD00000000000002ALL;
        v14 = "ALLET_TEMP_INELIGIBLE";
        v15 = "_HEALTH_ADDED_WALLET_ADDED";
        v11 = 0xD00000000000002BLL;
        break;
      case 2:
      case 7:
        v21 = swift_getObjCClassFromMetadata();
        v22 = [objc_opt_self() bundleForClass_];
        v23 = sub_1D139012C();
        v13 = [objc_opt_self() imageNamed:v23 inBundle:v22];

        v16 = 0xD00000000000002ELL;
        v14 = "_PRESENT_WALLET_ADDED";
        v15 = "_HEALTH_WALLET_ALREADY_PRESENT";
        v11 = 0xD00000000000002FLL;
        break;
      case 3:
        goto LABEL_7;
      case 4:
        v44 = swift_getObjCClassFromMetadata();
        v45 = [objc_opt_self() bundleForClass_];
        v46 = sub_1D139012C();
        v13 = [objc_opt_self() imageNamed:v46 inBundle:v45];

        v16 = 0xD00000000000002CLL;
        v14 = "scd_record_added";
        v20 = "SCD_IMPORT_DETAIL_HEALTH_ADDED_WALLET_PERM_INELIGIBLE";
        goto LABEL_8;
      case 5:
        v16 = 0xD00000000000001BLL;
        v36 = HKHealthUIFrameworkBundle();
        v37 = sub_1D139012C();
        v13 = [objc_opt_self() imageNamed:v37 inBundle:v36];

        v14 = "L_HEALTH_WALLET_ALREADY_PRESENT";
        v15 = "SCD_RECORD_DUPLICATES_TITLE";
        v11 = 0xD00000000000001CLL;
        break;
      case 6:
        v41 = swift_getObjCClassFromMetadata();
        v42 = [objc_opt_self() bundleForClass_];
        v43 = sub_1D139012C();
        v13 = [objc_opt_self() imageNamed:v43 inBundle:v42];

        v16 = 0xD000000000000034;
        v14 = "_PRESENT_WALLET_TEMP_INELIGIBLE";
        v15 = "PRESENT_WALLET_ADDED";
        v11 = 0xD000000000000035;
        break;
      case 8:
        goto LABEL_11;
      case 9:
        v31 = swift_getObjCClassFromMetadata();
        v32 = [objc_opt_self() bundleForClass_];
        v33 = sub_1D139012C();
        v13 = [objc_opt_self() imageNamed:v33 inBundle:v32];

        v16 = 0xD000000000000039;
        v11 = 0xD00000000000003FLL;
        v14 = "SCD_IMPORT_DETAIL_WALLET_ADDED";
        v27 = "SCD_IMPORT_DETAIL_HEALTH_ALREADY_PRESENT_WALLET_PERM_INELIGIBLE";
        goto LABEL_12;
      case 0xALL:
      case 0xDLL:
        goto LABEL_3;
      case 0xBLL:
      case 0xCLL:
        v28 = swift_getObjCClassFromMetadata();
        v29 = [objc_opt_self() bundleForClass_];
        v30 = sub_1D139012C();
        v13 = [objc_opt_self() imageNamed:v30 inBundle:v29];

        v16 = 0xD00000000000001DLL;
        v14 = "SCD_IMPORTER_FAILED_TO_SAVE";
        v15 = "SCD_IMPORT_TITLE_WALLET_ADDED";
        v11 = 0xD00000000000001ELL;
        break;
      default:
        v34 = HKHealthUIFrameworkBundle();
        v35 = sub_1D139012C();
        v13 = [objc_opt_self() imageNamed:v35 inBundle:v34];

        v16 = 0xD000000000000016;
        v14 = "L_HEALTH_ADDED_WALLET_ADDED";
        v15 = "SCD_RECORD_ADDED_TITLE";
        v11 = 0xD000000000000017;
        break;
    }
  }

  else
  {
LABEL_3:
    sub_1D138F06C();
    v9 = sub_1D138F0AC();
    v10 = sub_1D139080C();
    v11 = 0xD00000000000001BLL;
    if (os_log_type_enabled(v9, v10))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D101F000, v9, v10, "SignedClinicalDataRecordAddedViewController is being shown despite nothing having been added to Health and Wallet", v12, 2u);
      MEMORY[0x1D38882F0](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v13 = 0;
    v14 = "NOT_ADD_TO_WALLET";
    v15 = "er";
    v16 = 0xD000000000000018;
  }

  *a2 = v16;
  a2[1] = v14 | 0x8000000000000000;
  a2[2] = v11;
  a2[3] = v15 | 0x8000000000000000;
  a2[4] = v13;
}

id sub_1D126C1E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = &v4[OBJC_IVAR____TtC15HealthRecordsUI43SignedClinicalDataRecordAddedViewController_appLaunchURL];
  *v8 = a2;
  *(v8 + 1) = a3;
  v14 = a1;
  sub_1D126B948(a1, v16);
  v13 = v16[4];
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();

  sub_1D138D1CC();

  v9 = sub_1D139012C();

  v10 = sub_1D139012C();

  v15.receiver = v4;
  v15.super_class = type metadata accessor for SignedClinicalDataRecordAddedViewController();
  v11 = objc_msgSendSuper2(&v15, sel_initWithTitle_detailText_icon_contentLayout_, v9, v10, v13, 2, 0xE000000000000000);

  sub_1D1232304(v14);
  return v11;
}

void sub_1D126C3A8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SignedClinicalDataRecordAddedViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = [v0 headerView];
  [v1 setAllowFullWidthIcon_];

  v2 = [v0 headerView];
  LODWORD(v3) = 1036831949;
  [v2 setTitleHyphenationFactor_];

  v4 = [objc_opt_self() boldButton];
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v5 = sub_1D139012C();

  [v4 setTitle:v5 forState:{0, 0xE000000000000000}];

  [v4 addTarget:v0 action:sel_doneButtonTapped forControlEvents:64];
  v6 = [v0 buttonTray];
  [v6 addButton_];
}

void sub_1D126C5B0()
{
  v1 = v0;
  sub_1D1219C30();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138D39C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138FF3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D108310C();
  *v12 = sub_1D1390A7C();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = sub_1D138FF5C();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = [v1 presentingViewController];
  if (v14)
  {
    v15 = v14;
    [v14 dismissViewControllerAnimated:1 completion:0];
  }

  if (*&v1[OBJC_IVAR____TtC15HealthRecordsUI43SignedClinicalDataRecordAddedViewController_appLaunchURL + 8])
  {

    sub_1D138D38C();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_1D124CC84(v4);
      return;
    }

    (*(v6 + 32))(v8, v4, v5);
    v16 = [objc_opt_self() defaultWorkspace];
    if (v16)
    {
      v17 = v16;

      v18 = sub_1D138D30C();
      [v17 openURL:v18 configuration:0 completionHandler:0];

      (*(v6 + 8))(v8, v5);
      return;
    }

LABEL_11:
    __break(1u);
  }
}

id sub_1D126C978()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignedClinicalDataRecordAddedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DeleteRecordDataSource()
{
  result = qword_1EC60E5B0;
  if (!qword_1EC60E5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D126CA94(void *a1)
{
  v3 = sub_1D138FF3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_1EC60E5A0;
  v8 = *(v1 + qword_1EC60E5A0);
  *(v1 + qword_1EC60E5A0) = a1;
  v22 = a1;

  if (*(v1 + qword_1EC60E5A8) == 1 && (v9 = *(v1 + v7)) != 0)
  {
    v10 = *(v1 + qword_1EC60E590);
    v11 = *(v1 + qword_1EC60E598);
    v12 = type metadata accessor for DeleteRecordItem();
    v13 = swift_allocObject();
    v13[6] = 0;
    swift_unknownObjectWeakInit();
    v13[2] = v10;
    v13[3] = v9;
    v13[4] = v11;
    sub_1D108310C();
    v14 = v9;
    v15 = v10;
    v16 = v11;
    *v6 = sub_1D1390A7C();
    (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
    v17 = sub_1D138FF5C();
    (*(v4 + 8))(v6, v3);
    if (v17)
    {
      sub_1D126EB54(0, &qword_1EC60B640, &qword_1EC60F6A0, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D139E700;
      *(v18 + 56) = v12;
      *(v18 + 64) = sub_1D126EA68(&qword_1EC60E5C8, v19, type metadata accessor for DeleteRecordItem);
      *(v18 + 32) = v13;

      sub_1D138E5AC();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = v22;
  }
}

uint64_t sub_1D126CD50(char a1)
{
  v3 = sub_1D138FF3C();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + qword_1EC60E5A8) = a1;
  if (a1)
  {
    v8 = *(v1 + qword_1EC60E5A0);
    if (v8)
    {
      v9 = *(v1 + qword_1EC60E590);
      v10 = *(v1 + qword_1EC60E598);
      v11 = result;
      v12 = type metadata accessor for DeleteRecordItem();
      v13 = swift_allocObject();
      v13[6] = 0;
      swift_unknownObjectWeakInit();
      v13[2] = v9;
      v13[3] = v8;
      v13[4] = v10;
      sub_1D108310C();
      v14 = v8;
      v15 = v9;
      v16 = v10;
      *v7 = sub_1D1390A7C();
      (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v11);
      v17 = sub_1D138FF5C();
      result = (*(v4 + 8))(v7, v11);
      if (v17)
      {
        sub_1D126EB54(0, &qword_1EC60B640, &qword_1EC60F6A0, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1D139E700;
        *(v18 + 56) = v12;
        *(v18 + 64) = sub_1D126EA68(&qword_1EC60E5C8, v19, type metadata accessor for DeleteRecordItem);
        *(v18 + 32) = v13;

        sub_1D138E5AC();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1D126CFB4()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v4 = objc_opt_self();
  v5 = [v4 absoluteDimension_];
  sub_1D138E64C();
  v6 = [v4 absoluteDimension_];
  sub_1D138E62C();
  v7 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v7;
}

void sub_1D126D138()
{
  v1 = *(v0 + qword_1EC60E5A0);
}

uint64_t sub_1D126D188()
{
  v0 = sub_1D138EABC();
  v1 = *(v0 + qword_1EC60E590);

  v2 = *(v0 + qword_1EC60E5A0);

  return swift_deallocClassInstance();
}

uint64_t sub_1D126D23C()
{
  sub_1D102CC38((v0 + 5));

  return swift_deallocClassInstance();
}

uint64_t sub_1D126D2B0()
{
  type metadata accessor for DeleteRecordCell();
  sub_1D126EA68(&qword_1EC60E5D0, v0, type metadata accessor for DeleteRecordCell);
  return sub_1D138DECC();
}

uint64_t sub_1D126D338(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void sub_1D126D39C(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v5;
    v8 = a1;
  }

  else
  {
    v7 = 0;
  }

  *(v2 + 48) = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v9 = [objc_opt_self() sharedBehavior];
  if (v9)
  {
    v10 = v9;
    v25 = [v9 isiPad];

    if (qword_1EC608CD0 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    sub_1D126D7B8();
    v12 = v11;
    v13 = sub_1D139012C();

    if (v12)
    {
      v14 = sub_1D139012C();
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:{0, 0xE000000000000000}];

    v16 = [v15 popoverPresentationController];
    [v16 setSourceItem_];

    sub_1D138D1CC();
    sub_1D138D1CC();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = a1;
    v18 = a1;

    v19 = sub_1D139012C();

    aBlock[4] = sub_1D126EAB0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CB11C;
    aBlock[3] = &block_descriptor_50;
    v20 = _Block_copy(aBlock);

    v21 = objc_opt_self();
    v22 = [v21 actionWithTitle:v19 style:2 handler:{v20, 0xE000000000000000}];
    _Block_release(v20);

    [v15 addAction_];
    v23 = sub_1D139012C();

    v24 = [v21 actionWithTitle:v23 style:v25 ^ 1 handler:0];

    [v15 addAction_];
    [v18 presentViewController:v15 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D126D7B8()
{
  v1 = [*(v0 + 24) deletionConfirmationMessageWhenDeletingRecord_];
  if (v1)
  {
    v2 = v1;
    sub_1D139016C();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (sub_1D1259DE8())
  {
    if (qword_1EC608CD0 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v6 = v5;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
    if (!v4)
    {
LABEL_14:
      if (!v6)
      {
        return 0;
      }

      v7 = sub_1D139023C();
      v17 = v16;

      if (!v17)
      {
        return 0;
      }

      return v7;
    }
  }

  v7 = sub_1D139023C();
  v9 = v8;

  if (!v9)
  {
    goto LABEL_14;
  }

  if (v6)
  {
    v10 = sub_1D139023C();
    v12 = v11;

    if (v12)
    {
      sub_1D126EB54(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D139E710;
      v14 = MEMORY[0x1E69E6158];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1D1089930();
      *(v13 + 32) = v7;
      *(v13 + 40) = v9;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v10;
      *(v13 + 80) = v12;
      return sub_1D13901AC();
    }
  }

  return v7;
}

uint64_t sub_1D126D9E0(uint64_t a1, uint64_t a2, void *a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (qword_1EC608CD0 != -1)
    {
      swift_once();
    }

    v5 = sub_1D138D1CC();
    sub_1D1311828(v5, v6);

    swift_unknownObjectRelease();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = a3;
  sub_1D126E14C(sub_1D126EB10, v7);
}

uint64_t sub_1D126DB08(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1D138FECC();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D138FF0C();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D108310C();
  v12 = sub_1D1390A7C();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_1D126EB48;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_24_0;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  v16 = a3;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D126EA68(&qword_1EE06B7E0, 255, MEMORY[0x1E69E7F60]);
  sub_1D10CBD98();
  sub_1D126EA68(&qword_1EE06B7B0, 255, sub_1D10CBD98);
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_1D126DE08(uint64_t a1, void *a2, void *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a3;

    sub_1D1312570(a2, v7, v8, a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D126DE9C(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    if (qword_1EC608CD0 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    sub_1D138D1CC();
    v6 = objc_opt_self();
    v7 = sub_1D139012C();

    v8 = sub_1D139012C();

    v9 = sub_1D138D2AC();
    v10 = [v6 basicAlertControllerWithTitle:v7 message:v8 internalError:{v9, 0xE000000000000000}];

    [a2 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v12 = [objc_opt_self() defaultCenter];
    if (qword_1EC608D80 != -1)
    {
      swift_once();
    }

    [v12 postNotificationName:qword_1EC60DA30 object:a3];

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D13116B8();

      swift_unknownObjectRelease();
    }
  }
}

void sub_1D126E14C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v3[3] mainRecord];
  if (v12)
  {
    v13 = v12;
    v14 = v3[4];
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    aBlock[4] = sub_1D126EB18;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D112A218;
    aBlock[3] = &block_descriptor_18_1;
    v16 = _Block_copy(aBlock);

    [v14 deleteSignedClinicalDataRecord:v13 completion:v16];
    _Block_release(v16);
  }

  else
  {
    sub_1D138F06C();
    v17 = sub_1D138F0AC();
    v18 = sub_1D13907FC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      aBlock[0] = v6;
      swift_getMetatypeMetadata();
      v21 = sub_1D13901EC();
      v23 = sub_1D11DF718(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1D101F000, v17, v18, "%s: No main record on SCD group, cannot delete record", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1D38882F0](v20, -1, -1);
      MEMORY[0x1D38882F0](v19, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1D126E43C()
{
  v1 = sub_1D138F3FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v5 = OBJC_IVAR____TtC15HealthRecordsUI16DeleteRecordCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v5, v16);
  if (!v17)
  {
    return sub_1D10A72B8(v16);
  }

  sub_1D1080EA4(0, &qword_1EC60A3D0);
  type metadata accessor for DeleteRecordItem();
  result = swift_dynamicCast();
  if (result)
  {

    MEMORY[0x1D38864F0](v7);
    if (qword_1EC608CD0 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    sub_1D138F3BC();
    v8 = [objc_opt_self() systemRedColor];
    v9 = sub_1D138F2FC();
    sub_1D138F2DC();
    v9(v16, 0);
    v17 = v1;
    v18 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
    MEMORY[0x1D3886480](v16);
    sub_1D1086E1C();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D139E710;
    *(v11 + 32) = sub_1D139016C();
    *(v11 + 40) = v12;
    strcpy((v11 + 48), "DeleteButton");
    *(v11 + 61) = 0;
    *(v11 + 62) = -5120;
    v13 = sub_1D139044C();

    v14 = HKUIJoinStringsForAutomationIdentifier();

    [v0 setAccessibilityIdentifier_];
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

id sub_1D126E85C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteRecordCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D126E8C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI16DeleteRecordCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D126E91C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI16DeleteRecordCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D126E43C();
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D126E988(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D126E9EC;
}

uint64_t sub_1D126E9EC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D126E43C();
  }

  return result;
}

uint64_t sub_1D126EA68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_9()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D126EB18(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  return (*(v2 + 16))(v3);
}

void sub_1D126EB54(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D1080EA4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D126EBCC()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:7 weight:2 scale:18.0];
  v2 = [v0 configurationPreferringMulticolor];
  v3 = [v1 configurationByApplyingConfiguration_];

  qword_1EC62FC48 = v3;
}

id sub_1D126EC70()
{
  result = [objc_opt_self() configurationWithPointSize:6 weight:-1 scale:10.0];
  qword_1EC62FC50 = result;
  return result;
}

id sub_1D126ECB8(void *a1)
{
  v1 = [a1 asserter];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  v7 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v7 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v8 = sub_1D139012C();

  [v7 setTitle_];

  v9 = sub_1D139012C();

  [v7 setSubtitle_];

  [v7 setSeparatorStyle_];
  [v7 setSeparatorHidden_];
  [v7 setExtraTopPadding_];

  return v7;
}

id sub_1D126EE80()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter____lazy_storage___dosagesFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter____lazy_storage___dosagesFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter____lazy_storage___dosagesFormatter);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter_store);
    v5 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter_context);
    v6 = type metadata accessor for MedicationDosageFormatter();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI25MedicationDosageFormatter_store] = v4;
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI25MedicationDosageFormatter_context] = v5;
    v13.receiver = v7;
    v13.super_class = v6;
    v8 = v4;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

unint64_t sub_1D126EF50(void *a1)
{
  v17 = MEMORY[0x1E69E7CC0];
  v2 = sub_1D1196700(a1);
  sub_1D11220E0(v2);
  v3 = v17;
  if (v17 >> 62)
  {
    v4 = sub_1D13910DC();
  }

  else
  {
    v4 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v4 != 0;
  v6 = sub_1D126ECB8(a1);
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1D3885D90]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v3 = v17;
    if (v4)
    {
      return v3;
    }

    v5 = 1;
  }

  v8 = sub_1D126F570(a1);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  MEMORY[0x1D3885D90]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();

  v3 = v17;
  if (!v5)
  {
    v5 = 1;
LABEL_13:
    v10 = sub_1D126F36C(a1);
    if (v10)
    {
      v11 = v10;
      MEMORY[0x1D3885D90]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v3 = v17;
      v12 = sub_1D126F8D4(a1);
      if (v12)
      {
        v13 = v12;
        MEMORY[0x1D3885D90]();
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();

        v3 = v17;
        if (v5)
        {
          return v3;
        }
      }

      else
      {

        if (v5)
        {
          return v3;
        }
      }
    }

    v14 = sub_1D128719C(a1);
    if (v14)
    {
      v15 = v14;
      MEMORY[0x1D3885D90]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();

      return v17;
    }
  }

  return v3;
}

id sub_1D126F24C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationRecordFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D126F2F0(uint64_t a1)
{
  result = sub_1D126F318();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D126F318()
{
  result = qword_1EC60E5F0;
  if (!qword_1EC60E5F0)
  {
    type metadata accessor for MedicationRecordFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E5F0);
  }

  return result;
}

id sub_1D126F36C(void *a1)
{
  if ([a1 notTaken])
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v1 = sub_1D138D1CC();
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v4 setDisplayItemType_];
      sub_1D138D1CC();
      v5 = sub_1D139012C();

      [v4 setTitle_];

      v6 = sub_1D139012C();

      [v4 setSubtitle_];

      [v4 setSeparatorStyle_];
      [v4 setSeparatorHidden_];
      [v4 setExtraTopPadding_];

      return v4;
    }
  }

  return 0;
}

id sub_1D126F570(void *a1)
{
  v1 = [a1 reasonForUse];
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v2 = v1;
  sub_1D106F934(0, &qword_1EC609980);
  v3 = sub_1D139045C();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_1D13910DC();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1D3886B70](v7, v3);
          }

          else
          {
            if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v8 = *(v3 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = [v8 localizedPreferredName];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == v4)
          {
            goto LABEL_25;
          }
        }

        v11 = v10;
        v12 = sub_1D139016C();
        v25 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D10F7284(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1D10F7284((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v25;
      }

      while (v5 != v4);
      goto LABEL_25;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

LABEL_26:
  v17 = Array<A>.newlineJoined.getter(v6);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v21 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v22 = sub_1D139012C();

    [v21 setTitle_];

    v23 = sub_1D139012C();

    [v21 setSubtitle_];

    [v21 setSeparatorStyle_];
    [v21 setSeparatorHidden_];
    [v21 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v21;
}

id sub_1D126F8D4(void *a1)
{
  if (![a1 notTaken])
  {
    return 0;
  }

  v2 = [a1 reasonsNotTaken];
  if (!v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v3 = v2;
  sub_1D106F934(0, &qword_1EC609980);
  v4 = sub_1D139045C();

  if (v4 >> 62)
  {
LABEL_24:
    v5 = sub_1D13910DC();
    if (v5)
    {
LABEL_5:
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        v8 = v6;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1D3886B70](v8, v4);
          }

          else
          {
            if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v9 = *(v4 + 8 * v8 + 32);
          }

          v10 = v9;
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          v11 = [v9 localizedPreferredName];
          if (v11)
          {
            break;
          }

          ++v8;
          if (v6 == v5)
          {
            goto LABEL_26;
          }
        }

        v12 = v11;
        v13 = sub_1D139016C();
        v26 = v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D10F7284(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          v7 = sub_1D10F7284((v15 > 1), v16 + 1, 1, v7);
        }

        *(v7 + 2) = v16 + 1;
        v17 = &v7[16 * v16];
        *(v17 + 4) = v13;
        *(v17 + 5) = v26;
      }

      while (v6 != v5);
      goto LABEL_26;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_26:

LABEL_27:
  v18 = Array<A>.newlineJoined.getter(v7);
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    return 0;
  }

  v22 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v22 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v23 = sub_1D139012C();

  [v22 setTitle_];

  v24 = sub_1D139012C();

  [v22 setSubtitle_];

  [v22 setSeparatorStyle_];
  [v22 setSeparatorHidden_];
  [v22 setExtraTopPadding_];

  return v22;
}

uint64_t sub_1D126FC50(void *a1)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v92 - v3;
  v5 = sub_1D138D57C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v92 - v10;
  v99[4] = sub_1D126F36C(a1);
  v99[5] = sub_1D1201200(a1);
  v97 = sub_1D106F934(0, &qword_1EC609BE8);
  v12 = [a1 effectiveStartDate];
  v13 = [a1 effectiveEndDate];
  v96 = a1;
  v14 = [a1 meaningfulDateTitle];
  v15 = sub_1D139016C();
  v17 = v16;

  if (v12)
  {
    v95 = v15;
    if (v13)
    {
      v18 = v13;
      v19 = v12;
      v93 = v18;
      v20 = [v18 dateForUTC];
      sub_1D138D52C();

      v94 = v19;
      v21 = [v19 dateForUTC];
      sub_1D138D52C();

      sub_1D138D4CC();
      v23 = v22;
      v24 = *(v6 + 8);
      v24(v8, v5);
      v24(v11, v5);
      if (v23 <= COERCE_DOUBLE(1))
      {
        v43 = &unk_1EE06A000;
        if (qword_1EE06AD00 != -1)
        {
          swift_once();
        }

        v58 = sub_1D138D1CC();
        v60 = v59;
        v61 = v94;
        v50 = sub_1D11EDE68(v58, v60, v12, v95, v17);
        v62 = v50;

        v63 = v93;
        if (v50)
        {
        }
      }

      else
      {

        v25 = sub_1D138D67C();
        (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
        if (qword_1EC608CB0 != -1)
        {
          swift_once();
        }

        v95 = qword_1EC60C070;
        v92[1] = *algn_1EC60C078;
        sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1D139E710;
        v27 = [v94 displayString];
        v28 = sub_1D139016C();
        v30 = v29;

        v31 = MEMORY[0x1E69E6158];
        *(v26 + 56) = MEMORY[0x1E69E6158];
        v32 = sub_1D1089930();
        *(v26 + 64) = v32;
        *(v26 + 32) = v28;
        *(v26 + 40) = v30;
        v33 = v93;
        v34 = [v93 displayString];
        v35 = sub_1D139016C();
        v37 = v36;

        *(v26 + 96) = v31;
        *(v26 + 104) = v32;
        *(v26 + 72) = v35;
        *(v26 + 80) = v37;
        v38 = sub_1D138D1CC();
        v40 = v39;
        if (*(v26 + 16))
        {
          v38 = sub_1D139019C();
          v42 = v41;

          sub_1D10CD608(v4);
          v40 = v42;
        }

        else
        {
          sub_1D10CD608(v4);
        }

        v64 = HIBYTE(v40) & 0xF;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v64 = v38 & 0xFFFFFFFFFFFFLL;
        }

        v43 = &unk_1EE06A000;
        if (v64)
        {
          v50 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
          [v50 setDisplayItemType_];
          sub_1D12F2E70();
          v65 = sub_1D139012C();

          [v50 setTitle_];

          v66 = sub_1D139012C();

          [v50 setSubtitle_];

          [v50 setSeparatorStyle_];
          [v50 setSeparatorHidden_];
          [v50 setExtraTopPadding_];

          v67 = v94;
        }

        else
        {

          v68 = v94;
          v50 = 0;
        }
      }

      goto LABEL_28;
    }

    v43 = &unk_1EE06A000;
    v52 = qword_1EE06AD00;
    v53 = v12;
    if (v52 != -1)
    {
      swift_once();
    }

    v54 = sub_1D138D1CC();
    v56 = v55;
    v57 = v53;
    v50 = sub_1D11EDE68(v54, v56, v12, v95, v17);
    v51 = v50;

    if (!v50)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (!v13)
    {

      v50 = 0;
      v43 = &unk_1EE06A000;
      goto LABEL_28;
    }

    v43 = &unk_1EE06A000;
    v44 = qword_1EE06AD00;
    v45 = v13;
    if (v44 != -1)
    {
      swift_once();
    }

    v46 = sub_1D138D1CC();
    v48 = v47;
    v49 = v45;
    v50 = sub_1D11EDE68(v46, v48, v13, v15, v17);
    v51 = v50;

    if (!v50)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  v99[6] = v50;
  if (v43[416] != -1)
  {
LABEL_41:
    swift_once();
  }

  v69 = sub_1D138D1CC();
  v71 = v70;
  v72 = v96;
  v73 = [v96 earliestDosageDate];
  v74 = [v72 meaningfulDateTitle];
  v75 = sub_1D139016C();
  v77 = v76;

  v99[7] = sub_1D11EDE68(v69, v71, v73, v75, v77);
  v78 = sub_1D138D1CC();
  v80 = v79;
  v81 = [v72 assertionDate];
  v82 = [v72 meaningfulDateTitle];
  v83 = sub_1D139016C();
  v85 = v84;

  v99[8] = sub_1D11EDE68(v78, v80, v81, v83, v85);
  v99[9] = sub_1D126ECB8(v72);
  v99[10] = sub_1D126F570(v72);
  v99[11] = sub_1D126F8D4(v72);
  v86 = 0;
  v99[12] = sub_1D128719C(v72);
  v87 = MEMORY[0x1E69E7CC0];
  v98 = MEMORY[0x1E69E7CC0];
LABEL_30:
  if (v86 <= 9)
  {
    v88 = 9;
  }

  else
  {
    v88 = v86;
  }

  while (v86 != 9)
  {
    if (v88 == v86)
    {
      __break(1u);
      goto LABEL_41;
    }

    v89 = v99[v86++ + 4];
    if (v89)
    {
      v90 = v89;
      MEMORY[0x1D3885D90]();
      if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v87 = v98;
      goto LABEL_30;
    }
  }

  sub_1D10CD53C();
  swift_arrayDestroy();
  return v87;
}

BOOL static RecordRangeView.Style.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_1D12707BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

double sub_1D12707F4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1D1282884();
  return v3 * 100.0;
}

double sub_1D127086C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1D1282884();
  return v3 * 8.0;
}

void sub_1D12708E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_rangeContext);
  if (v1 != 3)
  {
    v2 = v0;
    v3 = sub_1D1271858();
    v4 = [v3 arrangedSubviews];

    sub_1D106F934(0, &qword_1EC609680);
    v5 = sub_1D139045C();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1D3886B70](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 removeFromSuperview];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    v11 = OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___pillsStackView;
    v12 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___pillsStackView);
    v13 = type metadata accessor for RangePillView();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_onBoundsChange];
    *v15 = 0;
    v15[1] = 0;
    *&v14[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_dotConstraints] = MEMORY[0x1E69E7CC0];
    *&v14[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___dotView] = 0;
    *&v14[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___innerDotView] = 0;
    if (v1)
    {
      v14[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_style] = 1;
      if (v1 == 1)
      {
        v40.receiver = v14;
        v40.super_class = v13;
        v16 = v12;
        v17 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        sub_1D11DDA24();
        [v16 addArrangedSubview_];

        v18 = *(v2 + v11);
        v19 = objc_allocWithZone(v13);
        v20 = &v19[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_onBoundsChange];
        *v20 = 0;
        v20[1] = 0;
        *&v19[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_dotConstraints] = MEMORY[0x1E69E7CC0];
        *&v19[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___dotView] = 0;
        *&v19[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___innerDotView] = 0;
        v19[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_style] = 2;
        v39 = v19;
        v21 = &v39;
      }

      else
      {
        v43.receiver = v14;
        v43.super_class = v13;
        v26 = v12;
        v27 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        sub_1D11DDA24();
        [v26 addArrangedSubview_];

        v28 = *(v2 + v11);
        v29 = objc_allocWithZone(v13);
        v30 = &v29[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_onBoundsChange];
        *v30 = 0;
        v30[1] = 0;
        *&v29[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_dotConstraints] = MEMORY[0x1E69E7CC0];
        *&v29[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___dotView] = 0;
        *&v29[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___innerDotView] = 0;
        v29[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_style] = 0;
        v42.receiver = v29;
        v42.super_class = v13;
        v31 = v28;
        v32 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        sub_1D11DDA24();
        [v31 addArrangedSubview_];

        v18 = *(v2 + v11);
        v33 = objc_allocWithZone(v13);
        v34 = &v33[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_onBoundsChange];
        *v34 = 0;
        v34[1] = 0;
        *&v33[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_dotConstraints] = MEMORY[0x1E69E7CC0];
        *&v33[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___dotView] = 0;
        *&v33[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___innerDotView] = 0;
        v33[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_style] = 1;
        v41 = v33;
        v21 = &v41;
      }
    }

    else
    {
      v14[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_style] = 2;
      v38.receiver = v14;
      v38.super_class = v13;
      v22 = v12;
      v23 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      sub_1D11DDA24();
      [v22 addArrangedSubview_];

      v18 = *(v2 + v11);
      v24 = objc_allocWithZone(v13);
      v25 = &v24[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_onBoundsChange];
      *v25 = 0;
      v25[1] = 0;
      *&v24[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_dotConstraints] = MEMORY[0x1E69E7CC0];
      *&v24[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___dotView] = 0;
      *&v24[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView____lazy_storage___innerDotView] = 0;
      v24[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_style] = 1;
      v37 = v24;
      v21 = &v37;
    }

    v21->super_class = v13;
    v35 = v18;
    v36 = [(objc_super *)v21 initWithFrame:0.0, 0.0, 0.0, 0.0];
    sub_1D11DDA24();
    [v35 addArrangedSubview_];

    sub_1D1272ADC();
  }
}

id sub_1D1270DB0()
{
  v0 = sub_1D1271858();
  v1 = [v0 topAnchor];

  return v1;
}

void sub_1D1270DF4()
{
  v1 = v0[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_state];
  if (v1 == 4)
  {
    return;
  }

  sub_1D12713E0();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v31 = v1;
  v4 = sub_1D1271858();
  v5 = [v4 arrangedSubviews];

  sub_1D106F934(0, &qword_1EC609680);
  v6 = sub_1D139045C();

  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3886B70](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = objc_opt_self();
      v13 = [v12 systemGray5Color];
      v14 = [v12 systemGray4Color];
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v13;
      v16 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      aBlock[4] = sub_1D1096DDC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D120E4B8;
      aBlock[3] = &block_descriptor_51;
      v17 = _Block_copy(aBlock);
      v18 = [v16 initWithDynamicProvider_];
      _Block_release(v17);

      [v10 setBackgroundColor_];

      ++v8;
      if (v11 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  if (v31 > 1)
  {
    v19 = v3;
    if (v31 == 2)
    {
      v24 = [objc_opt_self() systemYellowColor];
      [v3 setBackgroundColor_];

      v21 = sub_1D127193C();
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v22 = sub_1D139012C();

      [v21 setText_];
      v23 = 2;
      goto LABEL_30;
    }

    v21 = sub_1D127193C();
    v22 = sub_1D139012C();
  }

  else
  {
    v19 = v3;
    if (!v31)
    {
      v20 = [objc_opt_self() systemYellowColor];
      [v3 setBackgroundColor_];

      v21 = sub_1D127193C();
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v22 = sub_1D139012C();

      [v21 setText_];
      v23 = 0;
      goto LABEL_30;
    }

    v25 = sub_1D1096C68();
    [v3 setBackgroundColor_];

    v21 = sub_1D127193C();
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v30 = 0xE000000000000000;
    sub_1D138D1CC();
    v22 = sub_1D139012C();
  }

  [v21 setText_];
  v23 = 1;
LABEL_30:

  [*&v0[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___rangeLabel] setTextAlignment_];
  v26 = [v0 traitCollection];
  v27 = [v26 preferredContentSizeCategory];

  LOBYTE(v26) = sub_1D1390B5C();
  if (v26)
  {
    v28 = v0[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_style];
    if (v28 != 2 && (v28 & 1) != 0)
    {
      v29 = sub_1D127193C();
      [v29 setTextAlignment_];
    }
  }
}

void sub_1D12713E0()
{
  LODWORD(v1) = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_state);
  if (v1 != 4)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_rangeContext);
    if (v2 != 3)
    {
      if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_state) <= 1u)
      {
        if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_state))
        {
          v9 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_rangeContext);
          v10 = sub_1D1271858();
          v11 = [v10 arrangedSubviews];

          sub_1D106F934(0, &qword_1EC609680);
          v5 = sub_1D139045C();

          v12 = v5 & 0xC000000000000001;
          if (!v9)
          {
LABEL_25:
            if (v12)
            {
              goto LABEL_36;
            }

            if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            __break(1u);
            goto LABEL_28;
          }

          if (v9 != 1)
          {
            if (!v12)
            {
              if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
              {
LABEL_42:
                __break(1u);
                return;
              }

              goto LABEL_33;
            }

LABEL_37:
            v18 = 1;
            goto LABEL_39;
          }

          if (v12)
          {
            goto LABEL_37;
          }

          if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            goto LABEL_33;
          }

          __break(1u);
LABEL_22:
          v13 = sub_1D1271858();
          v14 = [v13 arrangedSubviews];

          sub_1D106F934(0, &qword_1EC609680);
          v5 = sub_1D139045C();

          if ((v5 & 0xC000000000000001) == 0)
          {
            v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v12 < 2)
            {
              __break(1u);
              goto LABEL_25;
            }

LABEL_33:
            v8 = *(v5 + 40);
            goto LABEL_34;
          }

          goto LABEL_37;
        }

        if (!*(v0 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_rangeContext))
        {
          return;
        }

        if (v2 != 1)
        {
LABEL_28:
          v15 = sub_1D1271858();
          v16 = [v15 arrangedSubviews];

          sub_1D106F934(0, &qword_1EC609680);
          v5 = sub_1D139045C();

          if ((v5 & 0xC000000000000001) == 0)
          {
            if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_30:
            v8 = *(v5 + 32);
            goto LABEL_34;
          }

LABEL_36:
          v18 = 0;
          goto LABEL_39;
        }

        v3 = sub_1D1271858();
        v4 = [v3 arrangedSubviews];

        sub_1D106F934(0, &qword_1EC609680);
        v5 = sub_1D139045C();

        if ((v5 & 0xC000000000000001) != 0)
        {
          goto LABEL_36;
        }

        v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v1)
        {
          goto LABEL_30;
        }

        __break(1u);
      }

      if (v1 != 2)
      {
        return;
      }

      if (v2)
      {
        if (v2 == 1)
        {
          return;
        }

        v6 = sub_1D1271858();
        v7 = [v6 arrangedSubviews];

        sub_1D106F934(0, &qword_1EC609680);
        v5 = sub_1D139045C();

        if ((v5 & 0xC000000000000001) == 0)
        {
          if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
          {
            v8 = *(v5 + 48);
LABEL_34:
            v17 = v8;
LABEL_35:

            return;
          }

          __break(1u);
          goto LABEL_41;
        }

        v18 = 2;
LABEL_39:
        MEMORY[0x1D3886B70](v18, v5);
        goto LABEL_35;
      }

      goto LABEL_22;
    }
  }
}

void sub_1D12716F8()
{
  if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_rangeContext) - 1 >= 2)
  {
    if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_rangeContext))
    {
      return;
    }

    v5 = sub_1D1271858();
    v6 = [v5 arrangedSubviews];

    sub_1D106F934(0, &qword_1EC609680);
    v3 = sub_1D139045C();

    if ((v3 & 0xC000000000000001) == 0)
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v4 = *(v3 + 32);
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v1 = sub_1D1271858();
  v2 = [v1 arrangedSubviews];

  sub_1D106F934(0, &qword_1EC609680);
  v3 = sub_1D139045C();

  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v4 = *(v3 + 40);
LABEL_9:
      v7 = v4;
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = 1;
LABEL_16:
  v7 = MEMORY[0x1D3886B70](v9, v3);
LABEL_10:
  v8 = v7;

  type metadata accessor for RangePillView();
  if (!swift_dynamicCastClass())
  {
  }
}

id sub_1D1271878()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAxis_];
  [v0 setAlignment_];
  [v0 setSpacing_];
  LODWORD(v1) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v1];
  [v0 setSemanticContentAttribute_];

  return v0;
}

id sub_1D127195C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setLineBreakMode_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  LODWORD(v1) = 1045220557;
  [v0 _setHyphenationFactor_];
  sub_1D106F934(0, &qword_1EC60E670);
  v2 = sub_1D1390C6C();
  [v0 setFont_];

  return v0;
}

id sub_1D1271AA8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id RecordRangeView.init(style:)(char *a1)
{
  v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_rangeContext] = 3;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_activeConstraints] = MEMORY[0x1E69E7CC0];
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotConstraint] = 0;
  v3 = &v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotMultiplier];
  *v3 = 0;
  v3[8] = 1;
  v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_state] = 4;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___pillsStackView] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___rangeLabel] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___lowBookend] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___highBookend] = 0;
  v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_style] = v2;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RecordRangeView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D1272158();

  return v4;
}

id sub_1D1271C3C(void *a1)
{
  v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_rangeContext] = 3;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_activeConstraints] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotConstraint] = 0;
  v3 = &v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotMultiplier];
  *v3 = 0;
  v3[8] = 1;
  v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_state] = 4;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___pillsStackView] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___rangeLabel] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___lowBookend] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___highBookend] = 0;
  v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_style] = 1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RecordRangeView();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_1D1272158();
  }

  return v5;
}

void sub_1D1271D64(void *a1)
{
  if (a1)
  {
    v3 = a1;
    sub_1D1273744(a1);
    v5 = v4;
    v6 = HIBYTE(v4);
    [v1 setHidden_];
    if (v6 == 2)
    {
      v7 = [v3 value];
      if (!v7 || (v8 = v7, [v7 doubleValue], v10 = v9, v8, (v11 = objc_msgSend(v3, sel_rangeLow)) == 0) || (v12 = v11, objc_msgSend(v11, sel_doubleValue), v14 = v13, v12, (v15 = objc_msgSend(v3, sel_rangeHigh)) == 0) || (v16 = v15, objc_msgSend(v15, sel_doubleValue), v18 = v17, v16, v14 >= v18))
      {
LABEL_13:
        v22 = sub_1D1271A68();
        v23 = [v3 rangeLowString];
        [v22 setText_];

        v24 = sub_1D1271A88();
        v25 = [v3 rangeHighString];
        [v24 setText_];

        v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_rangeContext] = HIBYTE(v5);
        sub_1D12708E0();
        v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_state] = v5;
        sub_1D1270DF4();
        sub_1D12716F8();
        v27 = v26;

        if (v27)
        {
          v28 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v29 = &v27[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_onBoundsChange];
          v30 = *&v27[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_onBoundsChange];
          *v29 = sub_1D1273924;
          v29[1] = v28;

          sub_1D102CC60(v30);
        }

        return;
      }

      v19 = OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotMultiplier;
      *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotMultiplier] = (v10 - v14) / (v18 - v14);
    }

    else
    {
      v19 = OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotMultiplier;
      *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotMultiplier] = 0x3FE0000000000000;
    }

    v1[v19 + 8] = 0;
    goto LABEL_13;
  }

  [v1 setHidden_];
  v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_rangeContext] = 2;
  sub_1D12708E0();
  v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_state] = 3;
  sub_1D1270DF4();
  v20 = &v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotMultiplier];
  *v20 = 0;
  v20[8] = 1;
  v21 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotConstraint];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotConstraint] = 0;
}

void sub_1D1272098()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D12723C4();
  }
}

void sub_1D12720EC(id a1)
{
  if (a1)
  {
    a1 = [objc_opt_self() referenceRangeViewDataFromInspectableValueInRange_];
  }

  v1 = a1;
  sub_1D1271D64(a1);
}

uint64_t sub_1D1272158()
{
  [v0 setSemanticContentAttribute_];
  v1 = sub_1D127193C();
  [v0 addSubview_];

  v2 = sub_1D1271858();
  [v0 addSubview_];

  v3 = v0[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_style];
  if (v3 == 2)
  {
    v4 = sub_1D1271A68();
    [v0 addSubview_];

    v5 = sub_1D1271A88();
    [v0 addSubview_];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___rangeLabel] setHidden_];
  }

  sub_1D1195238();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E700;
  v7 = sub_1D138F4EC();
  v8 = MEMORY[0x1E69DC2B0];
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D11DE830();
  sub_1D1390CBC();
  swift_unknownObjectRelease();
}

void sub_1D12722E4(void *a1, id a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = sub_1D1282884();

  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = sub_1D1282884();
  if (v4 != v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_1D1272ADC();
    }
  }
}

void sub_1D12723C4()
{
  v1 = v0;
  v2 = sub_1D1271858();
  v3 = [v2 arrangedSubviews];

  sub_1D106F934(0, &qword_1EC609680);
  v4 = sub_1D139045C();

  v18 = MEMORY[0x1E69E7CC0];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_20:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v5 = sub_1D13910DC();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3886B70](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for RangePillView();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1D3885D90]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();
    v7 = v18;
  }

  while (v6 != v5);
LABEL_21:

  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v12 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1D3886B70](v12, v7);
      }

      else
      {
        if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v13 = *(v7 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_1D11DE504();

      ++v12;
      if (v15 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_34:

  sub_1D12716F8();
  if (v16)
  {
    if ((*(v1 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotMultiplier + 8) & 1) == 0 && *(v1 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_state) == 1)
    {
      v17 = v16;
      sub_1D11DDEA4();
      v16 = v17;
    }
  }
}

uint64_t sub_1D1272694()
{
  v1 = v0;
  v2 = sub_1D1271858();
  v3 = [v2 arrangedSubviews];

  sub_1D106F934(0, &qword_1EC609680);
  v4 = sub_1D139045C();

  v32 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_35:
    v5 = sub_1D13910DC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = v7;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1D3886B70](v9, v4);
        }

        else
        {
          if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v10 = *(v4 + 8 * v9 + 32);
        }

        v11 = v10;
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        type metadata accessor for RangePillView();
        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v9;
        if (v7 == v5)
        {
          goto LABEL_19;
        }
      }

      MEMORY[0x1D3885D90]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v8 = v32;
    }

    while (v7 != v5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:

  if (!(v8 >> 62))
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_21;
    }

LABEL_37:

    v29 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v35 = v30;
    sub_1D1121F80(v29);
    return v35;
  }

  v12 = sub_1D13910DC();
  if (!v12)
  {
    goto LABEL_37;
  }

LABEL_21:
  v33 = v6;
  result = sub_1D13912DC();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v8 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        v16 = MEMORY[0x1D3886B70](v14, v8);
      }

      else
      {
        v16 = *(v8 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 widthAnchor];
      v19 = [v1 widthAnchor];
      ++v14;
      v20 = [v18 constraintEqualToAnchor:v19 multiplier:dbl_1D13ACA18[v17[OBJC_IVAR____TtC15HealthRecordsUI13RangePillView_style]] constant:-2.0];

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
    }

    while (v12 != v14);
    v31 = v33;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v21 = 0;
    do
    {
      if (v15)
      {
        v22 = MEMORY[0x1D3886B70](v21, v8);
      }

      else
      {
        v22 = *(v8 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      v24 = [v22 heightAnchor];
      v25 = [v1 traitCollection];
      v26 = [v25 preferredContentSizeCategory];

      v27 = sub_1D1282884();
      v28 = [v24 constraintEqualToConstant_];

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
    }

    while (v12 != v21);

    v30 = v31;
    v29 = v34;
    goto LABEL_38;
  }

  __break(1u);
  return result;
}