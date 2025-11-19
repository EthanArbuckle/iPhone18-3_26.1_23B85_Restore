id sub_1A7DA86C8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A7DA87CC(uint64_t *a1)
{
  v41 = sub_1A7E21B00();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v4);
  v42 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v40 = v32 - v8;
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1A7D6035C(v9);
    *a1 = v9;
  }

  v11 = *(v9 + 16);
  v34 = v9 + 32;
  v45[0] = v9 + 32;
  v45[1] = v11;
  v12 = sub_1A7E23080();
  if (v12 >= v11)
  {
    if (v11 >= 2)
    {
      v32[1] = a1;
      v32[2] = v1;
      v38 = (v3 + 8);
      v39 = (v3 + 16);
      v15 = -1;
      v16 = 1;
      v17 = v34;
      v33 = v11;
      do
      {
        v36 = v16;
        v37 = v15;
        v18 = *(v34 + 8 * v16);
        v46 = v15;
        v35 = v17;
        do
        {
          v19 = *v17;
          v20 = OBJC_IVAR___IDSEventTracingOperation_start;
          swift_beginAccess();
          v21 = v40;
          v22 = *v39;
          v23 = v41;
          (*v39)(v40, &v18[v20], v41);
          v24 = OBJC_IVAR___IDSEventTracingOperation_start;
          swift_beginAccess();
          v25 = v42;
          v22(v42, &v19[v24], v23);
          v26 = v18;
          v27 = v19;
          LOBYTE(v24) = sub_1A7E21AB0();
          v28 = *v38;
          (*v38)(v25, v23);
          v28(v21, v23);

          if ((v24 & 1) == 0)
          {
            break;
          }

          v29 = *v17;
          v18 = v17[1];
          *v17 = v18;
          v17[1] = v29;
          --v17;
        }

        while (!__CFADD__(v46++, 1));
        v16 = v36 + 1;
        v17 = v35 + 1;
        v15 = v37 - 1;
      }

      while (v36 + 1 != v33);
    }
  }

  else
  {
    v13 = v12;
    if (v11 >= 2)
    {
      type metadata accessor for EventTracingOperation(0);
      v14 = sub_1A7E22580();
      *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11 >> 1;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v44[0] = ((v14 & 0xFFFFFFFFFFFFFF8) + 32);
    v44[1] = (v11 >> 1);
    sub_1A7DA8AD0(v44, v43, v45, v13);
    *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1A7E22C00();
}

void sub_1A7DA8AD0(void ***a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v125 = a1;
  v135 = sub_1A7E21B00();
  MEMORY[0x1EEE9AC00](v135, v8);
  v137 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v136 = &v122 - v13;
  v131 = a3;
  v14 = *(a3 + 8);
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v15 = *v125;
    if (!*v125)
    {
      goto LABEL_126;
    }

    a3 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v117 = a3;
    }

    else
    {
LABEL_120:
      v117 = sub_1A7CF0024(a3);
    }

    v139 = v117;
    a3 = *(v117 + 2);
    if (a3 >= 2)
    {
      while (*v131)
      {
        v118 = *&v117[16 * a3];
        v119 = v117;
        v120 = *&v117[16 * a3 + 24];
        sub_1A7DA94F0((*v131 + 8 * v118), (*v131 + 8 * *&v117[16 * a3 + 16]), (*v131 + 8 * v120), v15);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v120 < v118)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_1A7CF0024(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_114;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v139 = v119;
        sub_1A7CEFF98(a3 - 1);
        v117 = v139;
        a3 = *(v139 + 2);
        if (a3 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v15 = 0;
  v134 = (v12 + 16);
  v133 = (v12 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v124 = a4;
  while (1)
  {
    v17 = v15++;
    v126 = v17;
    if (v15 < v14)
    {
      v130 = v14;
      v123 = v5;
      v122 = v16;
      v18 = *v131;
      v19 = *(*v131 + 8 * v15);
      v127 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v22 = *v20;
      v21 = v20 + 2;
      v23 = OBJC_IVAR___IDSEventTracingOperation_start;
      swift_beginAccess();
      v24 = *v134;
      v25 = v136;
      v26 = v135;
      (*v134)(v136, &v19[v23], v135);
      v27 = OBJC_IVAR___IDSEventTracingOperation_start;
      swift_beginAccess();
      v28 = &v22[v27];
      v29 = v137;
      v129 = v24;
      v24(v137, v28, v26);
      v30 = v19;
      v31 = v22;
      LODWORD(v132) = sub_1A7E21AB0();
      v32 = *v133;
      (*v133)(v29, v26);
      v128 = v32;
      (v32)(v25, v26);

      a3 = v126 + 2;
      while (1)
      {
        v15 = v130;
        if (v130 == a3)
        {
          break;
        }

        v34 = *(v21 - 1);
        v33 = *v21;
        v35 = OBJC_IVAR___IDSEventTracingOperation_start;
        swift_beginAccess();
        v36 = v136;
        v37 = v135;
        v138 = v21;
        v38 = v129;
        v129(v136, &v33[v35], v135);
        v39 = OBJC_IVAR___IDSEventTracingOperation_start;
        swift_beginAccess();
        v40 = v137;
        v38(v137, &v34[v39], v37);
        v41 = v138;
        v42 = v33;
        v43 = v34;
        LODWORD(v33) = sub_1A7E21AB0() & 1;
        v44 = v40;
        v45 = v128;
        (v128)(v44, v37);
        v45(v36, v37);

        ++a3;
        v21 = v41 + 1;
        if ((v132 & 1) != v33)
        {
          v15 = a3 - 1;
          break;
        }
      }

      v16 = v122;
      a4 = v124;
      v5 = v123;
      v17 = v126;
      v46 = v127;
      if (v132)
      {
        if (v15 < v126)
        {
          goto LABEL_117;
        }

        if (v126 < v15)
        {
          v47 = 8 * v15 - 8;
          v48 = v15;
          v49 = v126;
          do
          {
            if (v49 != --v48)
            {
              v51 = *v131;
              if (!*v131)
              {
                goto LABEL_123;
              }

              v50 = *(v51 + v46);
              *(v51 + v46) = *(v51 + v47);
              *(v51 + v47) = v50;
            }

            ++v49;
            v47 -= 8;
            v46 += 8;
          }

          while (v49 < v48);
        }
      }
    }

    v52 = v131[1];
    if (v15 < v52)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_116;
      }

      if (v15 - v17 < a4)
      {
        v53 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_118;
        }

        if (v53 >= v52)
        {
          v53 = v131[1];
        }

        if (v53 < v17)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v15 != v53)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v15 < v17)
    {
      goto LABEL_115;
    }

    v70 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v70;
    }

    else
    {
      v16 = sub_1A7CCC08C(0, *(v70 + 2) + 1, 1, v70);
    }

    a3 = *(v16 + 2);
    v71 = *(v16 + 3);
    v72 = a3 + 1;
    if (a3 >= v71 >> 1)
    {
      v16 = sub_1A7CCC08C((v71 > 1), a3 + 1, 1, v16);
    }

    *(v16 + 2) = v72;
    v73 = &v16[16 * a3];
    *(v73 + 4) = v126;
    *(v73 + 5) = v15;
    v74 = *v125;
    if (!*v125)
    {
      goto LABEL_125;
    }

    if (a3)
    {
      while (1)
      {
        v75 = v72 - 1;
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v76 = *(v16 + 4);
          v77 = *(v16 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_55:
          if (v79)
          {
            goto LABEL_104;
          }

          v92 = &v16[16 * v72];
          v94 = *v92;
          v93 = *(v92 + 1);
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_107;
          }

          v98 = &v16[16 * v75 + 32];
          v100 = *v98;
          v99 = *(v98 + 1);
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_111;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v75 = v72 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v102 = &v16[16 * v72];
        v104 = *v102;
        v103 = *(v102 + 1);
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_69:
        if (v97)
        {
          goto LABEL_106;
        }

        v105 = &v16[16 * v75];
        v107 = *(v105 + 4);
        v106 = *(v105 + 5);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_109;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_76:
        a3 = v75 - 1;
        if (v75 - 1 >= v72)
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

        if (!*v131)
        {
          goto LABEL_122;
        }

        v113 = v16;
        v114 = *&v16[16 * a3 + 32];
        v115 = *&v16[16 * v75 + 40];
        sub_1A7DA94F0((*v131 + 8 * v114), (*v131 + 8 * *&v16[16 * v75 + 32]), (*v131 + 8 * v115), v74);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v115 < v114)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_1A7CF0024(v113);
        }

        if (a3 >= *(v113 + 2))
        {
          goto LABEL_101;
        }

        v116 = &v113[16 * a3];
        *(v116 + 4) = v114;
        *(v116 + 5) = v115;
        v139 = v113;
        sub_1A7CEFF98(v75);
        v16 = v139;
        v72 = *(v139 + 2);
        if (v72 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = &v16[16 * v72 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_102;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_103;
      }

      v87 = &v16[16 * v72];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_105;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_108;
      }

      if (v91 >= v83)
      {
        v109 = &v16[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_112;
        }

        if (v78 < v112)
        {
          v75 = v72 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v14 = v131[1];
    a4 = v124;
    if (v15 >= v14)
    {
      goto LABEL_87;
    }
  }

  v122 = v16;
  v123 = v5;
  v132 = *v131;
  a3 = v132 + 8 * v15 - 8;
  v54 = (v17 - v15);
  v127 = v53;
LABEL_28:
  v130 = v15;
  v55 = *(v132 + 8 * v15);
  v128 = v54;
  v56 = v54;
  v129 = a3;
  while (1)
  {
    v138 = v56;
    v57 = *a3;
    v58 = OBJC_IVAR___IDSEventTracingOperation_start;
    swift_beginAccess();
    v59 = *v134;
    v60 = v136;
    v61 = v135;
    (*v134)(v136, &v55[v58], v135);
    v62 = OBJC_IVAR___IDSEventTracingOperation_start;
    swift_beginAccess();
    v63 = v137;
    v59(v137, &v57[v62], v61);
    v64 = v55;
    v65 = v57;
    LOBYTE(v62) = sub_1A7E21AB0();
    v66 = *v133;
    (*v133)(v63, v61);
    v66(v60, v61);

    if ((v62 & 1) == 0)
    {
LABEL_27:
      v15 = v130 + 1;
      a3 = v129 + 8;
      v54 = v128 - 1;
      if ((v130 + 1) != v127)
      {
        goto LABEL_28;
      }

      v15 = v127;
      v5 = v123;
      v16 = v122;
      v17 = v126;
      goto LABEL_35;
    }

    v67 = v138;
    if (!v132)
    {
      break;
    }

    v68 = *a3;
    v55 = *(a3 + 8);
    *a3 = v55;
    *(a3 + 8) = v68;
    a3 -= 8;
    v69 = __CFADD__(v67, 1);
    v56 = (v67 + 1);
    if (v69)
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

uint64_t sub_1A7DA94F0(void **a1, void **a2, void **a3, void **a4)
{
  v57 = sub_1A7E21B00();
  v8 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v9);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v58 = &v51 - v13;
  v14 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v14 = a2 - a1;
  }

  v15 = v14 >> 3;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v15 >= v16 >> 3)
  {
    if (a4 != a2 || &a2[v17] <= a4)
    {
      memmove(a4, a2, 8 * v17);
    }

    v62 = &a4[v17];
    if (a3 - a2 < 8 || a2 <= a1)
    {
      v33 = a2;
    }

    else
    {
      v52 = (v8 + 8);
      v53 = (v8 + 16);
      v61 = a4;
      v56 = a1;
      do
      {
        v51 = a2;
        v34 = a2 - 1;
        v35 = a3 - 1;
        v36 = v62;
        v54 = a2 - 1;
        while (1)
        {
          v60 = v35;
          v55 = v35 + 1;
          v37 = *--v36;
          v38 = *v34;
          v39 = OBJC_IVAR___IDSEventTracingOperation_start;
          swift_beginAccess();
          v40 = *v53;
          v41 = v57;
          v42 = v58;
          (*v53)(v58, &v37[v39], v57);
          v43 = OBJC_IVAR___IDSEventTracingOperation_start;
          swift_beginAccess();
          v44 = v59;
          v40(v59, &v38[v43], v41);
          v45 = v37;
          v46 = v38;
          LOBYTE(v43) = sub_1A7E21AB0();
          v47 = *v52;
          (*v52)(v44, v41);
          v47(v42, v41);

          if (v43)
          {
            break;
          }

          v48 = v60;
          if (v55 != v62)
          {
            *v60 = *v36;
          }

          v35 = v48 - 1;
          v62 = v36;
          v34 = v54;
          if (v36 <= v61)
          {
            v62 = v36;
            a4 = v61;
            v33 = v51;
            goto LABEL_39;
          }
        }

        v49 = v56;
        a3 = v60;
        v33 = v54;
        if (v55 != v51)
        {
          *v60 = *v54;
        }

        a4 = v61;
        if (v62 <= v61)
        {
          break;
        }

        a2 = v33;
      }

      while (v33 > v49);
    }
  }

  else
  {
    if (a4 != a1 || &a1[v15] <= a4)
    {
      memmove(a4, a1, 8 * v15);
    }

    v62 = &a4[v15];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = (v8 + 8);
      v55 = (v8 + 16);
      v18 = a2;
      v60 = a3;
      while (1)
      {
        v61 = a4;
        v56 = a1;
        v19 = *v18;
        v20 = *a4;
        v21 = OBJC_IVAR___IDSEventTracingOperation_start;
        swift_beginAccess();
        v22 = *v55;
        v23 = v57;
        v24 = v58;
        (*v55)(v58, &v19[v21], v57);
        v25 = OBJC_IVAR___IDSEventTracingOperation_start;
        swift_beginAccess();
        v26 = v59;
        v22(v59, &v20[v25], v23);
        v27 = v19;
        v28 = v20;
        LOBYTE(v20) = sub_1A7E21AB0();
        v29 = *v54;
        (*v54)(v26, v23);
        v29(v24, v23);

        if ((v20 & 1) == 0)
        {
          break;
        }

        v30 = v18;
        v31 = v56;
        v32 = v56 == v18++;
        a4 = v61;
        if (!v32)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v31 + 1;
        if (a4 >= v62 || v18 >= v60)
        {
          goto LABEL_20;
        }
      }

      v30 = v61;
      a4 = v61 + 1;
      v31 = v56;
      if (v56 == v61)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v31 = *v30;
      goto LABEL_18;
    }

LABEL_20:
    v33 = a1;
  }

LABEL_39:
  if (v33 != a4 || v33 >= (a4 + ((v62 - a4 + (v62 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v33, a4, 8 * (v62 - a4));
  }

  return 1;
}

uint64_t sub_1A7DA99D0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1A7CD162C(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1A7DFCDAC(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1A7DC8BA0();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1A7E22DB0();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1A7E22DA0();
  v8 = sub_1A7DA9B1C(v4, v7);

  v9 = sub_1A7CD162C(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1A7DFCDAC(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1A7DA9B1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A7CC7FFC(&qword_1EB2B50D8);
    v2 = sub_1A7E22E10();
    v19 = v2;
    sub_1A7E22D90();
    v3 = sub_1A7E22DC0();
    if (v3)
    {
      v4 = v3;
      sub_1A7CD1EB4();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for EventTracingOperation(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A7DC2C60(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1A7E22960();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A7E22DC0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1A7DA9D40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3 ^ a4;

  if (v5 >= 0x4000)
  {
    while (1)
    {
      v10 = sub_1A7E229E0();
      v12 = v11;
      v13 = sub_1A7E229B0();
      v14 = sub_1A7E223C0();
      if (!v15)
      {
        break;
      }

      if (v10 == v14 && v15 == v12)
      {
      }

      else
      {
        v9 = sub_1A7E230D0();

        if ((v9 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v13 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    sub_1A7E223C0();
    v7 = v6;

    if (v7)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

unint64_t sub_1A7DA9EB0(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for IDSRegistrationEventTracing()
{
  result = qword_1EB2B3140;
  if (!qword_1EB2B3140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A7DA9FC4()
{
  result = qword_1EB2B71C8;
  if (!qword_1EB2B71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B71C8);
  }

  return result;
}

uint64_t sub_1A7DAA018@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t sub_1A7DAA6C8()
{
  result = sub_1A7E22060();
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

uint64_t sub_1A7DAA790(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A7E230D0() & 1;
  }
}

unint64_t sub_1A7DAA7E8()
{
  result = qword_1EB2B2890;
  if (!qword_1EB2B2890)
  {
    sub_1A7CD1EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2890);
  }

  return result;
}

__n128 IDSLinkSelectionStrategy.strategy.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___IDSLinkSelectionStrategy_strategy);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  v5 = v3[1].n128_u8[1];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  a1[1].n128_u8[1] = v5;
  return result;
}

uint64_t IDSLinkSelectionStrategy.strategy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = v1 + OBJC_IVAR___IDSLinkSelectionStrategy_strategy;
  result = swift_beginAccess();
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  *(v6 + 17) = v5;
  return result;
}

char *static IDSLinkSelectionStrategy.default.getter()
{
  v0 = [objc_allocWithZone(IDSLinkSelectionStrategy) init];
  v1 = &v0[OBJC_IVAR___IDSLinkSelectionStrategy_strategy];
  swift_beginAccess();
  *v1 = xmmword_1A7E43F70;
  *(v1 + 8) = 1;
  return v0;
}

char *IDSLinkSelectionStrategy.init(strategy:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = &v4[OBJC_IVAR___IDSLinkSelectionStrategy_strategy];
  swift_beginAccess();
  *v5 = v1;
  *(v5 + 1) = v2;
  v5[16] = v3;
  v5[17] = 0;
  return v4;
}

char *static IDSLinkSelectionStrategy.create(withJSON:)()
{
  v1 = v0;
  if (qword_1EB2B4870 != -1)
  {
    swift_once();
  }

  sub_1A7DAAC88();
  sub_1A7E21590();
  if (!v0)
  {
    v1 = [objc_allocWithZone(IDSLinkSelectionStrategy) init];
    v2 = &v1[OBJC_IVAR___IDSLinkSelectionStrategy_strategy];
    swift_beginAccess();
    *v2 = v4;
    *(v2 + 1) = v5;
    v2[16] = v6;
    v2[17] = 0;
  }

  return v1;
}

unint64_t sub_1A7DAAC88()
{
  result = qword_1EB2B7250;
  if (!qword_1EB2B7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7250);
  }

  return result;
}

char *static IDSLinkSelectionStrategy.adaptive(withAllowedOverheadPerPacket:allowedPacketsPerSecond:)(uint64_t a1, double a2)
{
  v4 = [objc_allocWithZone(IDSLinkSelectionStrategy) init];
  v5 = &v4[OBJC_IVAR___IDSLinkSelectionStrategy_strategy];
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  *(v5 + 8) = 0;
  return v4;
}

unint64_t IDSLinkSelectionStrategy.description.getter()
{
  v1 = v0 + OBJC_IVAR___IDSLinkSelectionStrategy_strategy;
  result = swift_beginAccess();
  if ((*(v1 + 17) & 1) == 0)
  {
    return LinkSelectionStrategy.description.getter();
  }

  __break(1u);
  return result;
}

void __swiftcall IDSLinkSelectionStrategy.init()(IDSLinkSelectionStrategy *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id IDSLinkSelectionStrategy.init()()
{
  v1 = v0 + OBJC_IVAR___IDSLinkSelectionStrategy_strategy;
  *(v1 + 16) = 256;
  *v1 = 0;
  *(v1 + 8) = 0;
  v3.super_class = IDSLinkSelectionStrategy;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for IDSLinkSelectionStrategy()
{
  result = qword_1EB2B7258;
  if (!qword_1EB2B7258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B7258);
  }

  return result;
}

unint64_t sub_1A7DAB35C()
{
  result = qword_1EB2B7268;
  if (!qword_1EB2B7268)
  {
    sub_1A7CC9830(&qword_1EB2B7260);
    sub_1A7DAB3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7268);
  }

  return result;
}

unint64_t sub_1A7DAB3E0()
{
  result = qword_1EB2B7270;
  if (!qword_1EB2B7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7270);
  }

  return result;
}

uint64_t sub_1A7DAB434(__int16 a1)
{
  if (a1)
  {
    v1 = 0x6C6C65436E6F4ELL;
    if (a1 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v1 = 7958081;
      v2 = 0xE300000000000000;
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v1 = 1819043139;
  }

  v3 = HIBYTE(a1);
  MEMORY[0x1AC561C90](v1, v2);

  MEMORY[0x1AC561C90](45, 0xE100000000000000);
  v4 = 0xE700000000000000;
  v5 = 0x6C6C65436E6F4ELL;
  if (v3 != 1)
  {
    v5 = 7958081;
    v4 = 0xE300000000000000;
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1819043139;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v6, v7);

  MEMORY[0x1AC561C90](0, 0xE000000000000000);
}

uint64_t sub_1A7DAB560(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = (a1 | a2) == 0;
    if (a1 | a2)
    {
      v4 = 0x726576656ELL;
    }

    else
    {
      v4 = 0x737961776C61;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    sub_1A7E22B70();
    MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB1080);
    sub_1A7DAB658();
    MEMORY[0x1AC561C90](41, 0xE100000000000000);
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1AC561C90](v4, v5);
}

uint64_t sub_1A7DAB658()
{
  sub_1A7E22B70();

  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000011, 0x80000001A7EB1040);
  sub_1A7DAB778();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  MEMORY[0x1AC561C90](0, 0xE000000000000000);

  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  MEMORY[0x1AC561C90](0xD000000000000015, 0x80000001A7EB1060);
}

uint64_t sub_1A7DAB778()
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB0FE0);
  v0 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v0);

  MEMORY[0x1AC561C90](0xD000000000000024, 0x80000001A7EB1010);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](0, 0xE000000000000000);
}

void *static LinkSelectionStrategy.adaptive(allowedOverheadPerPacket:allowedPacketsPerSecond:)@<X0>(void *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 8) = a3;
  *(a2 + 16) = 0;
  return result;
}

unint64_t LinkSelectionStrategy.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A7E22B70();

  MEMORY[0x1AC561C90](0x746163696C707564, 0xEC0000003D6E6F69);
  sub_1A7DAB560(v1, v2, v3);
  MEMORY[0x1AC561C90](0, 0xE000000000000000);

  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_1A7DAB9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DABA50(uint64_t a1)
{
  v2 = sub_1A7DAEAE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DABA8C(uint64_t a1)
{
  v2 = sub_1A7DAEAE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.QualityOverhead.ByteOverhead.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7278);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEAE4();
  sub_1A7E23260();
  sub_1A7E23020();
  return (*(v3 + 8))(v6, v2);
}

uint64_t LinkSelectionStrategy.QualityOverhead.ByteOverhead.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7288);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEAE4();
  sub_1A7E23250();
  if (!v2)
  {
    v10 = sub_1A7E22F20();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7DABD6C(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7278);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEAE4();
  sub_1A7E23260();
  sub_1A7E23020();
  return (*(v3 + 8))(v6, v2);
}

IDSFoundation::LinkSelectionStrategy::QualityOverhead __swiftcall LinkSelectionStrategy.QualityOverhead.init(allowedOverheadPerExistingPacket:allowedAdditionalPacketsPerSecond:)(IDSFoundation::LinkSelectionStrategy::QualityOverhead::ByteOverhead allowedOverheadPerExistingPacket, Swift::Double allowedAdditionalPacketsPerSecond)
{
  *v2 = *allowedOverheadPerExistingPacket.bytes;
  *(v2 + 8) = allowedAdditionalPacketsPerSecond;
  result.allowedAdditionalPacketsPerSecond = allowedAdditionalPacketsPerSecond;
  result.allowedOverheadPerExistingPacket = allowedOverheadPerExistingPacket;
  return result;
}

uint64_t LinkSelectionStrategy.QualityOverhead.description.getter()
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB0FE0);
  v0 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v0);

  MEMORY[0x1AC561C90](0xD000000000000024, 0x80000001A7EB1010);
  sub_1A7E227A0();
  return 0;
}

unint64_t sub_1A7DAC008()
{
  if (*v0)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t sub_1A7DAC040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000020 && 0x80000001A7EB0A40 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001A7EB0A70 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A7E230D0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A7DAC124(uint64_t a1)
{
  v2 = sub_1A7DAEB38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAC160(uint64_t a1)
{
  v2 = sub_1A7DAEB38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.QualityOverhead.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B7290);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  v9 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEB38();
  sub_1A7E23260();
  v12 = v9;
  v11[7] = 0;
  sub_1A7DAEB8C();
  sub_1A7E23030();
  if (!v2)
  {
    v11[6] = 1;
    sub_1A7E23010();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t LinkSelectionStrategy.QualityOverhead.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B72A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14[-v8];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEB38();
  sub_1A7E23250();
  if (!v2)
  {
    v14[7] = 0;
    sub_1A7DAEBE0();
    sub_1A7E22F30();
    v10 = v15;
    v14[6] = 1;
    sub_1A7E22F10();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t LinkSelectionStrategy.QualityStrategy.description.getter()
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000011, 0x80000001A7EB1040);
  sub_1A7DAB778();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1A7DAC5E4(uint64_t a1)
{
  v2 = sub_1A7DAEC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAC620(uint64_t a1)
{
  v2 = sub_1A7DAEC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DAC678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A7EB10B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A7E230D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A7DAC70C(uint64_t a1)
{
  v2 = sub_1A7DAEC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAC748(uint64_t a1)
{
  v2 = sub_1A7DAEC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.QualityStrategy.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B72B8);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B72C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - v11;
  v13 = *v1;
  v14 = v1[1];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEC34();
  sub_1A7E23260();
  sub_1A7DAEC88();
  sub_1A7E22F80();
  v20 = v13;
  v21 = v14;
  sub_1A7DAECDC();
  v15 = v18;
  sub_1A7E23030();
  (*(v19 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

uint64_t LinkSelectionStrategy.QualityStrategy.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B72E0);
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B72E8);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEC34();
  sub_1A7E23250();
  if (v2)
  {
    goto LABEL_6;
  }

  v25 = a1;
  v12 = v34;
  v13 = v27;
  v14 = sub_1A7E22F70();
  v15 = (2 * *(v14 + 16)) | 1;
  v30 = v14;
  v31 = v14 + 32;
  v32 = 0;
  v33 = v15;
  if ((sub_1A7CDB53C() & 1) != 0 || v32 != v33 >> 1)
  {
    v16 = sub_1A7E22BD0();
    swift_allocError();
    v17 = v8;
    v19 = v18;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v19 = &type metadata for LinkSelectionStrategy.QualityStrategy;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v16 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v13 + 8))(v11, v17);
    swift_unknownObjectRelease();
    a1 = v25;
LABEL_6:
    v22 = a1;
    return sub_1A7B0CD6C(v22);
  }

  sub_1A7DAEC88();
  sub_1A7E22E70();
  sub_1A7DAED30();
  sub_1A7E22F30();
  (*(v12 + 8))(v7, v4);
  (*(v13 + 8))(v11, v8);
  swift_unknownObjectRelease();
  v21 = v29;
  v22 = v25;
  v23 = v26;
  *v26 = v28;
  v23[1] = v21;
  return sub_1A7B0CD6C(v22);
}

uint64_t sub_1A7DACD68()
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000011, 0x80000001A7EB1040);
  sub_1A7DAB778();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  return 0;
}

unint64_t LinkSelectionStrategy.QualityThreshold.description.getter()
{
  sub_1A7E22B70();

  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000011, 0x80000001A7EB1040);
  sub_1A7DAB778();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  MEMORY[0x1AC561C90](0, 0xE000000000000000);

  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_1A7DACF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x537974696C617571 && a2 == 0xEF79676574617274)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DACFAC(uint64_t a1)
{
  v2 = sub_1A7DAEDD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DACFE8(uint64_t a1)
{
  v2 = sub_1A7DAEDD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DAD034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1869903201 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DAD0BC(uint64_t a1)
{
  v2 = sub_1A7DAED84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAD0F8(uint64_t a1)
{
  v2 = sub_1A7DAED84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.QualityThreshold.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B72F8);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B7300);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - v11;
  v13 = *v1;
  v14 = v1[1];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAED84();
  sub_1A7E23260();
  sub_1A7DAEDD8();
  sub_1A7E22F80();
  v20 = v13;
  v21 = v14;
  sub_1A7DAEE2C();
  v15 = v18;
  sub_1A7E23030();
  (*(v19 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

uint64_t LinkSelectionStrategy.QualityThreshold.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B7320);
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B7328);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAED84();
  sub_1A7E23250();
  if (v2)
  {
    goto LABEL_6;
  }

  v25 = a1;
  v12 = v34;
  v13 = v27;
  v14 = sub_1A7E22F70();
  v15 = (2 * *(v14 + 16)) | 1;
  v30 = v14;
  v31 = v14 + 32;
  v32 = 0;
  v33 = v15;
  if ((sub_1A7CDB53C() & 1) != 0 || v32 != v33 >> 1)
  {
    v16 = sub_1A7E22BD0();
    swift_allocError();
    v17 = v8;
    v19 = v18;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v19 = &type metadata for LinkSelectionStrategy.QualityThreshold;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v16 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v13 + 8))(v11, v17);
    swift_unknownObjectRelease();
    a1 = v25;
LABEL_6:
    v22 = a1;
    return sub_1A7B0CD6C(v22);
  }

  sub_1A7DAEDD8();
  sub_1A7E22E70();
  sub_1A7DAEE80();
  sub_1A7E22F30();
  (*(v12 + 8))(v7, v4);
  (*(v13 + 8))(v11, v8);
  swift_unknownObjectRelease();
  v21 = v29;
  v22 = v25;
  v23 = v26;
  *v26 = v28;
  v23[1] = v21;
  return sub_1A7B0CD6C(v22);
}

uint64_t LinkSelectionStrategy.PrimarySecondary.DuplicationStrategy.description.getter()
{
  if (*(v0 + 16) == 1)
  {
    if (*v0 == 0)
    {
      return 0x737961776C61;
    }

    else
    {
      return 0x726576656ELL;
    }
  }

  else
  {
    sub_1A7E22B70();
    MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB1080);
    sub_1A7DAB658();
    MEMORY[0x1AC561C90](41, 0xE100000000000000);
    return 0;
  }
}

uint64_t sub_1A7DAD7F0(uint64_t a1)
{
  v2 = sub_1A7DAF024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAD82C(uint64_t a1)
{
  v2 = sub_1A7DAF024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DAD868()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x726576656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961776C61;
  }
}

uint64_t sub_1A7DAD8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7DB0924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7DAD8E8(uint64_t a1)
{
  v2 = sub_1A7DAEED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAD924(uint64_t a1)
{
  v2 = sub_1A7DAEED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DAD960(uint64_t a1)
{
  v2 = sub_1A7DAEF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAD99C(uint64_t a1)
{
  v2 = sub_1A7DAEF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DAD9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DADA84(uint64_t a1)
{
  v2 = sub_1A7DAEF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DADAC0(uint64_t a1)
{
  v2 = sub_1A7DAEF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.PrimarySecondary.DuplicationStrategy.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7338);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v29 = &v26 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B7340);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v26 - v8;
  v9 = sub_1A7CC7FFC(&qword_1EB2B7348);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v26 = &v26 - v11;
  v12 = sub_1A7CC7FFC(&qword_1EB2B7350);
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;
  v16 = *v1;
  v17 = v1[1];
  v18 = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEED4();
  sub_1A7E23260();
  if (v18 == 1)
  {
    v19 = (v35 + 8);
    if (v16 | v17)
    {
      LOBYTE(v36) = 2;
      sub_1A7DAEF28();
      v20 = v29;
      sub_1A7E22F80();
      v22 = v30;
      v21 = v31;
    }

    else
    {
      LOBYTE(v36) = 0;
      sub_1A7DAF024();
      v20 = v26;
      sub_1A7E22F80();
      v22 = v27;
      v21 = v28;
    }

    (*(v22 + 8))(v20, v21);
    return (*v19)(v15, v12);
  }

  else
  {
    LOBYTE(v36) = 1;
    sub_1A7DAEF7C();
    v23 = v32;
    sub_1A7E22F80();
    v36 = v16;
    v37 = v17;
    sub_1A7DAEFD0();
    v24 = v34;
    sub_1A7E23030();
    (*(v33 + 8))(v23, v24);
    return (*(v35 + 8))(v15, v12);
  }
}

uint64_t LinkSelectionStrategy.PrimarySecondary.DuplicationStrategy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v43 = sub_1A7CC7FFC(&qword_1EB2B7380);
  v48 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v3);
  v47 = &v41 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B7388);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v41 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B7390);
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  v14 = sub_1A7CC7FFC(&qword_1EB2B7398);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v41 - v17;
  v19 = a1[3];
  v56 = a1;
  sub_1A7CC9878(a1, v19);
  sub_1A7DAEED4();
  v20 = v50;
  sub_1A7E23250();
  if (v20)
  {
    return sub_1A7B0CD6C(v56);
  }

  v41 = v10;
  v42 = 0;
  v22 = v47;
  v21 = v48;
  v50 = v15;
  v23 = v49;
  v24 = sub_1A7E22F70();
  v25 = (2 * *(v24 + 16)) | 1;
  v52 = v24;
  v53 = v24 + 32;
  v54 = 0;
  v55 = v25;
  v26 = sub_1A7CDB540();
  if (v26 == 3 || v54 != v55 >> 1)
  {
    v29 = sub_1A7E22BD0();
    swift_allocError();
    v31 = v30;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v31 = &type metadata for LinkSelectionStrategy.PrimarySecondary.DuplicationStrategy;
    v32 = v18;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v26)
  {
    LOBYTE(v51) = 0;
    sub_1A7DAF024();
    v32 = v18;
    v34 = v42;
    sub_1A7E22E70();
    if (!v34)
    {
      (*(v44 + 8))(v13, v41);
      (*(v50 + 8))(v18, v14);
      swift_unknownObjectRelease();
      v35 = 0uLL;
      goto LABEL_17;
    }

LABEL_9:
    (*(v50 + 8))(v32, v14);
    swift_unknownObjectRelease();
    return sub_1A7B0CD6C(v56);
  }

  if (v26 != 1)
  {
    LOBYTE(v51) = 2;
    sub_1A7DAEF28();
    v32 = v18;
    v36 = v42;
    sub_1A7E22E70();
    v37 = v50;
    if (v36)
    {
      goto LABEL_9;
    }

    (*(v21 + 8))(v22, v43);
    (*(v37 + 8))(v18, v14);
    swift_unknownObjectRelease();
    v35 = xmmword_1A7E43F70;
LABEL_17:
    v40 = 1;
    v38 = v23;
    goto LABEL_18;
  }

  LOBYTE(v51) = 1;
  sub_1A7DAEF7C();
  v27 = v42;
  sub_1A7E22E70();
  v28 = v50;
  if (v27)
  {
    (*(v50 + 8))(v18, v14);
    swift_unknownObjectRelease();
    return sub_1A7B0CD6C(v56);
  }

  v38 = v23;
  sub_1A7DAF078();
  v39 = v45;
  sub_1A7E22F30();
  (*(v46 + 8))(v9, v39);
  (*(v28 + 8))(v18, v14);
  swift_unknownObjectRelease();
  v40 = 0;
  v35 = v51;
LABEL_18:
  *v38 = v35;
  *(v38 + 16) = v40;
  return sub_1A7B0CD6C(v56);
}

__n128 LinkSelectionStrategy.PrimarySecondary.duplication.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 LinkSelectionStrategy.PrimarySecondary.duplication.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

__n128 LinkSelectionStrategy.PrimarySecondary.init(duplication:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t LinkSelectionStrategy.PrimarySecondary.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  MEMORY[0x1AC561C90](0x746163696C707564, 0xEC0000003D6E6F69);
  sub_1A7DAB560(v1, v2, v3);
  return 0;
}

uint64_t sub_1A7DAE660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746163696C707564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DAE6EC(uint64_t a1)
{
  v2 = sub_1A7DAF0CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAE728(uint64_t a1)
{
  v2 = sub_1A7DAF0CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.PrimarySecondary.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B73A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  HIDWORD(v11) = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAF0CC();
  sub_1A7E23260();
  v12 = v9;
  v13 = v8;
  v14 = BYTE4(v11);
  sub_1A7DAF120();
  sub_1A7E23030();
  return (*(v4 + 8))(v7, v3);
}

uint64_t LinkSelectionStrategy.PrimarySecondary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B73C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAF0CC();
  sub_1A7E23250();
  if (!v2)
  {
    sub_1A7DAF174();
    sub_1A7E22F30();
    (*(v6 + 8))(v9, v5);
    v10 = v13;
    *a2 = v12;
    *(a2 + 16) = v10;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7DAEA6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  MEMORY[0x1AC561C90](0x746163696C707564, 0xEC0000003D6E6F69);
  sub_1A7DAB560(v1, v2, v3);
  return 0;
}

unint64_t sub_1A7DAEAE4()
{
  result = qword_1EB2B7280;
  if (!qword_1EB2B7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7280);
  }

  return result;
}

unint64_t sub_1A7DAEB38()
{
  result = qword_1EB2B7298;
  if (!qword_1EB2B7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7298);
  }

  return result;
}

unint64_t sub_1A7DAEB8C()
{
  result = qword_1EB2B72A0;
  if (!qword_1EB2B72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72A0);
  }

  return result;
}

unint64_t sub_1A7DAEBE0()
{
  result = qword_1EB2B72B0;
  if (!qword_1EB2B72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72B0);
  }

  return result;
}

unint64_t sub_1A7DAEC34()
{
  result = qword_1EB2B72C8;
  if (!qword_1EB2B72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72C8);
  }

  return result;
}

unint64_t sub_1A7DAEC88()
{
  result = qword_1EB2B72D0;
  if (!qword_1EB2B72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72D0);
  }

  return result;
}

unint64_t sub_1A7DAECDC()
{
  result = qword_1EB2B72D8;
  if (!qword_1EB2B72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72D8);
  }

  return result;
}

unint64_t sub_1A7DAED30()
{
  result = qword_1EB2B72F0;
  if (!qword_1EB2B72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72F0);
  }

  return result;
}

unint64_t sub_1A7DAED84()
{
  result = qword_1EB2B7308;
  if (!qword_1EB2B7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7308);
  }

  return result;
}

unint64_t sub_1A7DAEDD8()
{
  result = qword_1EB2B7310;
  if (!qword_1EB2B7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7310);
  }

  return result;
}

unint64_t sub_1A7DAEE2C()
{
  result = qword_1EB2B7318;
  if (!qword_1EB2B7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7318);
  }

  return result;
}

unint64_t sub_1A7DAEE80()
{
  result = qword_1EB2B7330;
  if (!qword_1EB2B7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7330);
  }

  return result;
}

unint64_t sub_1A7DAEED4()
{
  result = qword_1EB2B7358;
  if (!qword_1EB2B7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7358);
  }

  return result;
}

unint64_t sub_1A7DAEF28()
{
  result = qword_1EB2B7360;
  if (!qword_1EB2B7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7360);
  }

  return result;
}

unint64_t sub_1A7DAEF7C()
{
  result = qword_1EB2B7368;
  if (!qword_1EB2B7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7368);
  }

  return result;
}

unint64_t sub_1A7DAEFD0()
{
  result = qword_1EB2B7370;
  if (!qword_1EB2B7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7370);
  }

  return result;
}

unint64_t sub_1A7DAF024()
{
  result = qword_1EB2B7378;
  if (!qword_1EB2B7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7378);
  }

  return result;
}

unint64_t sub_1A7DAF078()
{
  result = qword_1EB2B73A0;
  if (!qword_1EB2B73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73A0);
  }

  return result;
}

unint64_t sub_1A7DAF0CC()
{
  result = qword_1EB2B73B0;
  if (!qword_1EB2B73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73B0);
  }

  return result;
}

unint64_t sub_1A7DAF120()
{
  result = qword_1EB2B73B8;
  if (!qword_1EB2B73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73B8);
  }

  return result;
}

unint64_t sub_1A7DAF174()
{
  result = qword_1EB2B73C8;
  if (!qword_1EB2B73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73C8);
  }

  return result;
}

double static LinkSelectionStrategy.default.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1A7E43F70;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1A7DAF1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A7EB10F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A7E230D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A7DAF290(uint64_t a1)
{
  v2 = sub_1A7DAF5A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAF2CC(uint64_t a1)
{
  v2 = sub_1A7DAF5A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DAF308(uint64_t a1)
{
  v2 = sub_1A7DAF5FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAF344(uint64_t a1)
{
  v2 = sub_1A7DAF5FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B73D0);
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16[-v6];
  v8 = sub_1A7CC7FFC(&qword_1EB2B73D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16[-v11];
  v13 = *v1;
  v18 = v1[1];
  v17 = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAF5A8();
  sub_1A7E23260();
  sub_1A7DAF5FC();
  sub_1A7E22F80();
  v21 = v13;
  v22 = v18;
  v23 = v17;
  sub_1A7DAF650();
  v14 = v19;
  sub_1A7E23030();
  (*(v20 + 8))(v7, v14);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1A7DAF5A8()
{
  result = qword_1EB2B73E0;
  if (!qword_1EB2B73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73E0);
  }

  return result;
}

unint64_t sub_1A7DAF5FC()
{
  result = qword_1EB2B73E8;
  if (!qword_1EB2B73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73E8);
  }

  return result;
}

unint64_t sub_1A7DAF650()
{
  result = qword_1EB2B73F0;
  if (!qword_1EB2B73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73F0);
  }

  return result;
}

uint64_t LinkSelectionStrategy.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B73F8);
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B7400);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAF5A8();
  sub_1A7E23250();
  if (v2)
  {
    goto LABEL_6;
  }

  v25 = a1;
  v12 = v34;
  v13 = v27;
  v14 = sub_1A7E22F70();
  v15 = (2 * *(v14 + 16)) | 1;
  v30 = v14;
  v31 = v14 + 32;
  v32 = 0;
  v33 = v15;
  if ((sub_1A7CDB53C() & 1) != 0 || v32 != v33 >> 1)
  {
    v16 = sub_1A7E22BD0();
    swift_allocError();
    v17 = v8;
    v19 = v18;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v19 = &type metadata for LinkSelectionStrategy;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v16 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v13 + 8))(v11, v17);
    swift_unknownObjectRelease();
    a1 = v25;
LABEL_6:
    v22 = a1;
    return sub_1A7B0CD6C(v22);
  }

  sub_1A7DAF5FC();
  sub_1A7E22E70();
  sub_1A7DAFA38();
  sub_1A7E22F30();
  (*(v12 + 8))(v7, v4);
  (*(v13 + 8))(v11, v8);
  swift_unknownObjectRelease();
  v21 = v29;
  v22 = v25;
  v23 = v26;
  *v26 = v28;
  *(v23 + 16) = v21;
  return sub_1A7B0CD6C(v22);
}

unint64_t sub_1A7DAFA38()
{
  result = qword_1EB2B7408;
  if (!qword_1EB2B7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7408);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LinkSelectionStrategy.PrimarySecondary.DuplicationStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1A7DAFB50(uint64_t a1)
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

uint64_t sub_1A7DAFB6C(uint64_t result, int a2)
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

unint64_t sub_1A7DAFC70()
{
  result = qword_1EB2B7410;
  if (!qword_1EB2B7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7410);
  }

  return result;
}

unint64_t sub_1A7DAFCC8()
{
  result = qword_1EB2B7418;
  if (!qword_1EB2B7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7418);
  }

  return result;
}

unint64_t sub_1A7DAFD20()
{
  result = qword_1EB2B7420;
  if (!qword_1EB2B7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7420);
  }

  return result;
}

unint64_t sub_1A7DAFD78()
{
  result = qword_1EB2B7428;
  if (!qword_1EB2B7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7428);
  }

  return result;
}

unint64_t sub_1A7DAFDD0()
{
  result = qword_1EB2B7430;
  if (!qword_1EB2B7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7430);
  }

  return result;
}

unint64_t sub_1A7DAFE28()
{
  result = qword_1EB2B7438;
  if (!qword_1EB2B7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7438);
  }

  return result;
}

unint64_t sub_1A7DAFE80()
{
  result = qword_1EB2B7440;
  if (!qword_1EB2B7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7440);
  }

  return result;
}

unint64_t sub_1A7DAFED8()
{
  result = qword_1EB2B7448;
  if (!qword_1EB2B7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7448);
  }

  return result;
}

unint64_t sub_1A7DAFF30()
{
  result = qword_1EB2B7450;
  if (!qword_1EB2B7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7450);
  }

  return result;
}

unint64_t sub_1A7DAFF88()
{
  result = qword_1EB2B7458;
  if (!qword_1EB2B7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7458);
  }

  return result;
}

unint64_t sub_1A7DAFFE0()
{
  result = qword_1EB2B7460;
  if (!qword_1EB2B7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7460);
  }

  return result;
}

unint64_t sub_1A7DB0038()
{
  result = qword_1EB2B7468;
  if (!qword_1EB2B7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7468);
  }

  return result;
}

unint64_t sub_1A7DB0090()
{
  result = qword_1EB2B7470;
  if (!qword_1EB2B7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7470);
  }

  return result;
}

unint64_t sub_1A7DB00E8()
{
  result = qword_1EB2B7478;
  if (!qword_1EB2B7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7478);
  }

  return result;
}

unint64_t sub_1A7DB0140()
{
  result = qword_1EB2B7480;
  if (!qword_1EB2B7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7480);
  }

  return result;
}

unint64_t sub_1A7DB0198()
{
  result = qword_1EB2B7488;
  if (!qword_1EB2B7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7488);
  }

  return result;
}

unint64_t sub_1A7DB01F0()
{
  result = qword_1EB2B7490;
  if (!qword_1EB2B7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7490);
  }

  return result;
}

unint64_t sub_1A7DB0248()
{
  result = qword_1EB2B7498;
  if (!qword_1EB2B7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7498);
  }

  return result;
}

unint64_t sub_1A7DB02A0()
{
  result = qword_1EB2B74A0;
  if (!qword_1EB2B74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74A0);
  }

  return result;
}

unint64_t sub_1A7DB02F8()
{
  result = qword_1EB2B74A8;
  if (!qword_1EB2B74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74A8);
  }

  return result;
}

unint64_t sub_1A7DB0350()
{
  result = qword_1EB2B74B0;
  if (!qword_1EB2B74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74B0);
  }

  return result;
}

unint64_t sub_1A7DB03A8()
{
  result = qword_1EB2B74B8;
  if (!qword_1EB2B74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74B8);
  }

  return result;
}

unint64_t sub_1A7DB0400()
{
  result = qword_1EB2B74C0;
  if (!qword_1EB2B74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74C0);
  }

  return result;
}

unint64_t sub_1A7DB0458()
{
  result = qword_1EB2B74C8;
  if (!qword_1EB2B74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74C8);
  }

  return result;
}

unint64_t sub_1A7DB04B0()
{
  result = qword_1EB2B74D0;
  if (!qword_1EB2B74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74D0);
  }

  return result;
}

unint64_t sub_1A7DB0508()
{
  result = qword_1EB2B74D8;
  if (!qword_1EB2B74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74D8);
  }

  return result;
}

unint64_t sub_1A7DB0560()
{
  result = qword_1EB2B74E0;
  if (!qword_1EB2B74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74E0);
  }

  return result;
}

unint64_t sub_1A7DB05B8()
{
  result = qword_1EB2B74E8;
  if (!qword_1EB2B74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74E8);
  }

  return result;
}

unint64_t sub_1A7DB0610()
{
  result = qword_1EB2B74F0;
  if (!qword_1EB2B74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74F0);
  }

  return result;
}

unint64_t sub_1A7DB0668()
{
  result = qword_1EB2B74F8;
  if (!qword_1EB2B74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74F8);
  }

  return result;
}

unint64_t sub_1A7DB06C0()
{
  result = qword_1EB2B7500;
  if (!qword_1EB2B7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7500);
  }

  return result;
}

unint64_t sub_1A7DB0718()
{
  result = qword_1EB2B7508;
  if (!qword_1EB2B7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7508);
  }

  return result;
}

unint64_t sub_1A7DB0770()
{
  result = qword_1EB2B7510;
  if (!qword_1EB2B7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7510);
  }

  return result;
}

unint64_t sub_1A7DB07C8()
{
  result = qword_1EB2B7518;
  if (!qword_1EB2B7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7518);
  }

  return result;
}

unint64_t sub_1A7DB0820()
{
  result = qword_1EB2B7520;
  if (!qword_1EB2B7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7520);
  }

  return result;
}

unint64_t sub_1A7DB0878()
{
  result = qword_1EB2B7528;
  if (!qword_1EB2B7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7528);
  }

  return result;
}

unint64_t sub_1A7DB08D0()
{
  result = qword_1EB2B7530;
  if (!qword_1EB2B7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7530);
  }

  return result;
}

uint64_t sub_1A7DB0924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961776C61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A7EB10D0 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726576656ELL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t IDSGLLinkEngineGFTConnectionStrategy.connectionBehavior.getter()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 32));
  return v2 + 1;
}

void sub_1A7DB0AFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 40);
  os_unfair_lock_unlock((v3 + 32));
  *a2 = v4 + 1;
}

void IDSGLLinkEngineGFTConnectionStrategy.connectionBehavior.setter(uint64_t a1)
{
  v2 = a1 - 1;
  if ((a1 - 1) <= 2)
  {
    v3 = *(v1 + 40);
    os_unfair_lock_lock((v3 + 32));
    *(v3 + 40) = v2;

    os_unfair_lock_unlock((v3 + 32));
  }
}

void (*IDSGLLinkEngineGFTConnectionStrategy.connectionBehavior.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 40);
  os_unfair_lock_unlock((v3 + 32));
  *a1 = v4 + 1;
  return sub_1A7DB0C08;
}

uint64_t IDSGLLinkEngineGFTConnectionStrategy.deinit()
{

  return v0;
}

uint64_t IDSGLLinkEngineGFTConnectionStrategy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DB0CF0()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 32));
  return v2 + 1;
}

void (*sub_1A7DB0D2C(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = IDSGLLinkEngineGFTConnectionStrategy.connectionBehavior.modify(v2);
  return sub_1A7D918AC;
}

void LEToolResponse.print(to:style:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 1);
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = (v6 >> 60) & 7;
  if (((v6 >> 60) & 7) <= 1)
  {
    v15 = a1[3];
    v16 = a1[4];
    if (v8)
    {
      sub_1A7CC9878(a1, a1[3]);
      CLIPrinter.print(_:)(sub_1A7DB1300, 0, v15, v16);
      sub_1A7CC9878(a1, a1[3]);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      CLIPrinter.print(_:)(v27);
      LEToolQualityMeasurerResponse.print(to:style:)(a1);
    }

    else
    {
      sub_1A7CC9878(a1, a1[3]);
      CLIPrinter.print(_:)(sub_1A7DB11A8, 0, v15, v16);
      sub_1A7CC9878(a1, a1[3]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      CLIPrinter.print(_:)(v18);
      v28 = v3;
      v29._countAndFlagsBits = v4;
      sub_1A7DD21BC(a1, &v28);
    }
  }

  else if (v8 == 2)
  {
    v19 = v2[4];
    v20 = v6 & 0x8FFFFFFFFFFFFFFFLL;
    v21 = a1[3];
    v22 = a1[4];
    sub_1A7CC9878(a1, v21);
    CLIPrinter.print(_:)(sub_1A7DB1210, 0, v21, v22);
    sub_1A7CC9878(a1, a1[3]);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    CLIPrinter.print(_:)(v24);
    v29._countAndFlagsBits = v4;
    v29._object = v5;
    v30 = v7;
    v31 = v20;
    v32 = v19;
    v28 = v3;
    sub_1A7CF6828(a1, &v28);
  }

  else if (v8 == 3)
  {
    v9 = a1[3];
    v10 = a1[4];
    sub_1A7CC9878(a1, v9);
    CLIPrinter.print(_:)(sub_1A7DB1288, 0, v9, v10);
    sub_1A7CC9878(a1, a1[3]);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    CLIPrinter.print(_:)(v12);
    sub_1A7CC9878(a1, a1[3]);
    sub_1A7E22B70();

    v29._countAndFlagsBits = 0xD000000000000011;
    v29._object = 0x80000001A7EB11C0;
    if (v4)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v4)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    MEMORY[0x1AC561C90](v13, v14);

    CLIPrinter.print(_:)(v29);
  }

  else
  {
    v25 = a1[3];
    v26 = a1[4];
    sub_1A7CC9878(a1, v25);
    v29._countAndFlagsBits = 0x757074756F206F4ELL;
    v29._object = 0xEA00000000002E74;
    LOWORD(v30) = 257;
    v31 = 0;
    v32 = 0;
    v33 = 2;
    CLIPrinter.print(_:)(&v29._countAndFlagsBits, v25, v26);
  }
}

double sub_1A7DB11A8()
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0x736B6E694CLL;
  *(v0 + 40) = 0xE500000000000000;
  *(v0 + 48) = 1537;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

double sub_1A7DB1210()
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0xD000000000000018;
  *(v0 + 40) = 0x80000001A7EB11E0;
  *(v0 + 48) = 1537;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

double sub_1A7DB1288()
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0xD000000000000015;
  *(v0 + 40) = 0x80000001A7EB1200;
  *(v0 + 48) = 1537;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

double sub_1A7DB1300()
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0xD000000000000014;
  *(v0 + 40) = 0x80000001A7EB1220;
  *(v0 + 48) = 1537;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

IDSFoundation::IDSLinkQualityReportSignalStrengthMeasurement __swiftcall IDSLinkQualityReportSignalStrengthMeasurement.init(time:signalStrength:)(Swift::Double time, Swift::Double signalStrength)
{
  *v2 = time;
  v2[1] = signalStrength;
  result.signalStrength = signalStrength;
  result.time = time;
  return result;
}

uint64_t sub_1A7DB13E4()
{
  if (*v0)
  {
    return 0x74536C616E676973;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_1A7DB1424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74536C616E676973 && a2 == 0xEE006874676E6572)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7DB1508(uint64_t a1)
{
  v2 = sub_1A7DB1708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DB1544(uint64_t a1)
{
  v2 = sub_1A7DB1708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReportSignalStrengthMeasurement.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7538);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DB1708();
  sub_1A7E23260();
  v9[15] = 0;
  sub_1A7E23010();
  if (!v1)
  {
    v9[14] = 1;
    sub_1A7E23010();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A7DB1708()
{
  result = qword_1EB2B7540;
  if (!qword_1EB2B7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7540);
  }

  return result;
}

uint64_t IDSLinkQualityReportSignalStrengthMeasurement.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7548);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DB1708();
  sub_1A7E23250();
  if (!v2)
  {
    v17 = 0;
    sub_1A7E22F10();
    v11 = v10;
    v16 = 1;
    sub_1A7E22F10();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7DB1958()
{
  result = qword_1EB2B7550;
  if (!qword_1EB2B7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7550);
  }

  return result;
}

unint64_t sub_1A7DB19B0()
{
  result = qword_1EB2B7558;
  if (!qword_1EB2B7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7558);
  }

  return result;
}

unint64_t sub_1A7DB1A08()
{
  result = qword_1EB2B7560;
  if (!qword_1EB2B7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7560);
  }

  return result;
}

uint64_t sub_1A7DB1A5C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1A7DB1B08(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t IDSDefaultRelayLinkSorter.__allocating_init(shouldFallbackToTCPFirst:shouldPreferIPv6:)(char a1, char a2)
{
  v4 = swift_allocObject();
  IDSDefaultRelayLinkSorter.init(shouldFallbackToTCPFirst:shouldPreferIPv6:)(a1, a2);
  return v4;
}

uint64_t IDSDefaultRelayLinkSorter.init(shouldFallbackToTCPFirst:shouldPreferIPv6:)(char a1, char a2)
{
  *(v2 + 16) = xmmword_1A7E50CD0;
  *(v2 + 32) = xmmword_1A7E50CE0;
  *(v2 + 48) = xmmword_1A7E50CF0;
  *(v2 + 64) = xmmword_1A7E50D00;
  *(v2 + 80) = xmmword_1A7E50D10;
  *(v2 + 96) = xmmword_1A7E50D20;
  *(v2 + 112) = xmmword_1A7E50D30;
  *(v2 + 128) = xmmword_1A7E50D40;
  *(v2 + 144) = xmmword_1A7E50D50;
  *(v2 + 160) = xmmword_1A7E50D60;
  *(v2 + 176) = xmmword_1A7E50D70;
  *(v2 + 192) = xmmword_1A7E50D80;
  *(v2 + 208) = 0;
  *(v2 + 212) = a1;
  *(v2 + 213) = a2;
  *(v2 + 214) = 0;
  return v2;
}

double IDSDefaultRelayLinkSorter.score(link:)()
{
  v1 = v0;
  LinkEngineLink.definition.getter(&v90);
  v2 = v90;
  if (v90)
  {
    v4 = *(&v90 + 1);
    v3 = v91;
    if (LinkEngineLink.isPendingRemoval.getter())
    {
      v5 = *(v0 + 24);
    }

    else
    {
      sub_1A7CE05CC(v2, &v90);
      v5 = 1.0;
      if (v90 != 2 && (v90 & 1) != 0)
      {
        v5 = *(v0 + 16);
      }
    }

    sub_1A7CE03D4(v4, &v85);
    v93 = v88;
    v94 = v89;
    v91 = v86;
    v92 = v87;
    v90 = v85;
    if (*(&v89 + 1) && (v7 = *(&v92 + 1), , sub_1A7D5C958(&v90), v7))
    {

      v9 = *(v1 + 32);
      v8 = *(v1 + 40);
      v10 = *(v1 + 48);
      v11 = *(v1 + 56);
      v12 = &type metadata for IDSDefaultRelayLinkSorter.Scores.Delegated;
      v13 = &off_1F1AB7038;
    }

    else
    {
      v9 = *(v1 + 64);
      v8 = *(v1 + 72);
      v10 = *(v1 + 80);
      v11 = *(v1 + 88);
      v12 = &type metadata for IDSDefaultRelayLinkSorter.Scores.NonDelegated;
      v13 = &off_1F1AB70F0;
    }

    *(&v86 + 1) = v12;
    *&v87 = v13;
    v14 = swift_allocObject();
    *&v85 = v14;
    v14[2] = v9;
    v14[3] = v8;
    v14[4] = v10;
    v14[5] = v11;
    sub_1A7CE072C(v4, v84);
    v78 = v3;
    if (BYTE4(v84[0]) != 1)
    {
      if (!LODWORD(v84[0]))
      {
        v22 = *(&v86 + 1);
        v23 = v87;
        sub_1A7CC9878(&v85, *(&v86 + 1));
        v17 = (*(v23 + 16))(v22, v23);
        goto LABEL_21;
      }

      if (LODWORD(v84[0]) == 9)
      {
        v15 = *(&v86 + 1);
        v16 = v87;
        sub_1A7CC9878(&v85, *(&v86 + 1));
        (*(v16 + 8))(v15, v16);
        goto LABEL_21;
      }
    }

    sub_1A7CE0928(v4, v84);
    if (LOBYTE(v84[0]) == 2 || (v84[0] & 1) == 0)
    {
      v20 = *(&v86 + 1);
      v21 = v87;
      sub_1A7CC9878(&v85, *(&v86 + 1));
      (*(v21 + 32))(v20, v21);
    }

    else
    {
      v18 = *(&v86 + 1);
      v19 = v87;
      sub_1A7CC9878(&v85, *(&v86 + 1));
      (*(v19 + 24))(v18, v19);
    }

LABEL_21:
    v24 = v17;
    os_unfair_lock_lock((v1 + 208));
    v25 = *(v1 + 213);
    os_unfair_lock_unlock((v1 + 208));
    v26 = 112;
    if (v25)
    {
      v26 = 96;
    }

    v27 = 120;
    if (v25)
    {
      v27 = 104;
      v28 = &type metadata for IDSDefaultRelayLinkSorter.Scores.PreferIPv6;
    }

    else
    {
      v28 = &type metadata for IDSDefaultRelayLinkSorter.Scores.PreferIPv4;
    }

    v29 = *(v1 + v27);
    v30 = *(v1 + v26);
    if (v25)
    {
      v31 = &off_1F1AB7060;
    }

    else
    {
      v31 = &off_1F1AB70D8;
    }

    v84[3] = v28;
    v84[4] = v31;
    v84[0] = v30;
    v84[1] = v29;
    v81[0] = v4;
    LinkEndpoint.family.getter(&v79);
    v32 = v79;
    sub_1A7CC9878(v84, v28);
    if (v32 == 1)
    {
      if (v25)
      {
        v33 = &off_1F1AB7060;
      }

      else
      {
        v33 = &off_1F1AB70D8;
      }

      (v33[1])(v28, v31);
    }

    else
    {
      if (v25)
      {
        v35 = &off_1F1AB7060;
      }

      else
      {
        v35 = &off_1F1AB70D8;
      }

      v34 = (v35[2])(v28, v31);
    }

    v36 = v34;
    v37 = v5 * v24;
    os_unfair_lock_lock((v1 + 208));
    v38 = *(v1 + 212);
    os_unfair_lock_unlock((v1 + 208));
    v39 = 168;
    if (v38)
    {
      v39 = 128;
    }

    v40 = 176;
    if (v38)
    {
      v40 = 136;
    }

    v41 = 184;
    if (v38)
    {
      v41 = 144;
    }

    v42 = &type metadata for IDSDefaultRelayLinkSorter.Scores.SSLFirst;
    if (v38)
    {
      v42 = &type metadata for IDSDefaultRelayLinkSorter.Scores.TCPFirst;
    }

    v43 = &off_1F1AB70A8;
    if (v38)
    {
      v43 = &off_1F1AB7078;
    }

    v82 = v42;
    v83 = v43;
    v44 = 192;
    if (v38)
    {
      v44 = 152;
    }

    v45 = 200;
    if (v38)
    {
      v45 = 160;
    }

    v46 = *(v1 + v39);
    v47 = *(v1 + v40);
    v48 = *(v1 + v41);
    v49 = *(v1 + v44);
    v50 = *(v1 + v45);
    v51 = swift_allocObject();
    v51[2] = v46;
    v51[3] = v47;
    v51[4] = v48;
    v51[5] = v49;
    v51[6] = v50;
    v81[0] = v51;
    sub_1A7CE0528(v2, &v79);
    v52 = v79;
    if (v79)
    {
      v53 = sub_1A7CDB84C(v2);
    }

    else
    {
      v53 = sub_1A7CDB84C(v2);
      v52 = MEMORY[0x1E69E7CC0];
    }

    v6 = v37 * v36;
    v79 = 13160;
    v80 = 0xE200000000000000;
    MEMORY[0x1EEE9AC00](v53, v54);
    v77 = &v79;
    v55 = sub_1A7DB1A5C(sub_1A7DB2D3C, v76, v52);
    if (v55)
    {

      v57 = v82;
      v58 = v83;
      sub_1A7CC9878(v81, v82);
      (v58[1])(v57, v58);
    }

    else
    {
      v79 = 7365749;
      v80 = 0xE300000000000000;
      MEMORY[0x1EEE9AC00](v55, v56);
      v77 = &v79;
      v60 = sub_1A7DB1A5C(sub_1A7DB3F08, v76, v52);
      if (v60)
      {

        v62 = v82;
        v63 = v83;
        sub_1A7CC9878(v81, v82);
        (v63[3])(v62, v63);
      }

      else
      {
        v79 = 12904;
        v80 = 0xE200000000000000;
        MEMORY[0x1EEE9AC00](v60, v61);
        v77 = &v79;
        v64 = sub_1A7DB1A5C(sub_1A7DB3F08, v76, v52);
        if (v64)
        {

          v66 = v82;
          v67 = v83;
          sub_1A7CC9878(v81, v82);
          (v67[2])(v66, v67);
        }

        else
        {
          v79 = 7365492;
          v80 = 0xE300000000000000;
          MEMORY[0x1EEE9AC00](v64, v65);
          v77 = &v79;
          v68 = sub_1A7DB1A5C(sub_1A7DB3F08, v76, v52);
          if (v68)
          {

            v70 = v82;
            v71 = v83;
            sub_1A7CC9878(v81, v82);
            (v71[4])(v70, v71);
          }

          else
          {
            v79 = 0x736C742D656B6166;
            v80 = 0xE800000000000000;
            MEMORY[0x1EEE9AC00](v68, v69);
            v77 = &v79;
            v72 = sub_1A7DB1A5C(sub_1A7DB3F08, v76, v52);

            if ((v72 & 1) == 0)
            {
LABEL_66:
              sub_1A7B0CD6C(v81);
              sub_1A7B0CD6C(v84);
              sub_1A7B0CD6C(&v85);
              return v6;
            }

            v73 = v82;
            v74 = v83;
            sub_1A7CC9878(v81, v82);
            v59 = (v74[5])(v73, v74);
          }
        }
      }
    }

    v6 = v6 * v59;
    goto LABEL_66;
  }

  return 0.0;
}

uint64_t IDSDefaultRelayLinkSorter.sort(_:)()
{

  v3 = sub_1A7DB2600(v1, sub_1A7CE50F8, sub_1A7DB29C4);
  sub_1A7DB3B3C(&v3, v0);

  return v3;
}

uint64_t sub_1A7DB2500()
{
  v1 = *v0;

  v4 = sub_1A7DB2600(v2, sub_1A7CE50F8, sub_1A7DB29C4);
  sub_1A7DB3B3C(&v4, v1);

  return v4;
}

uint64_t sub_1A7DB2600(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1A7E22DA0();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A7DB26A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A7E22DA0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A7E22DA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A7DB3E9C(&qword_1EB2B7590, &qword_1EB2B7588);
          for (i = 0; i != v6; ++i)
          {
            sub_1A7CC7FFC(&qword_1EB2B7588);
            v9 = sub_1A7CCBE7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for IDSPacketLog.SimpleBatch();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7DB2834(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A7E22DA0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A7E22DA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A7DB3E9C(&qword_1EB2B7580, &qword_1EB2B7578);
          for (i = 0; i != v6; ++i)
          {
            sub_1A7CC7FFC(&qword_1EB2B7578);
            v9 = sub_1A7CCBF84(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for IDSSendReason(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7DB29C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A7E22DA0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A7E22DA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A7DB3E9C(&qword_1EB2B7598, &qword_1EB2B5B70);
          for (i = 0; i != v6; ++i)
          {
            sub_1A7CC7FFC(&qword_1EB2B5B70);
            v9 = sub_1A7CCBEFC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for LinkEngineLink();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7DB2B54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A7E22DA0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A7E22DA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A7DB3E9C(&qword_1EB2B7570, &qword_1EB2B6D70);
          for (i = 0; i != v6; ++i)
          {
            sub_1A7CC7FFC(&qword_1EB2B6D70);
            v9 = sub_1A7CCC004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for EventTracingOperation(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7DB2CE4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A7E230D0() & 1;
  }
}

uint64_t sub_1A7DB2D58(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_42;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      os_unfair_lock_lock((a5 + 208));
      v19 = *(a5 + 214);
      os_unfair_lock_unlock((a5 + 208));
      v20 = IDSDefaultRelayLinkSorter.score(link:)();
      v21 = IDSDefaultRelayLinkSorter.score(link:)();

      if (v19)
      {
        if (v20 >= v21)
        {
          goto LABEL_19;
        }
      }

      else if (v21 >= v20)
      {
LABEL_19:
        v17 = v6;
        v18 = v9 == v6;
        v6 += 8;
        if (v18)
        {
          goto LABEL_13;
        }

LABEL_12:
        *v9 = *v17;
        goto LABEL_13;
      }

      v17 = v8;
      v18 = v9 == v8;
      v8 += 8;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 8;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[8 * v15];
  if (v13 >= 8 && v8 > v9)
  {
    v30 = v6;
LABEL_28:
    v22 = v8 - 8;
    v7 -= 8;
    v23 = v16;
    v31 = v8;
    do
    {
      v23 -= 8;
      v24 = v22;

      os_unfair_lock_lock((a5 + 208));
      v25 = *(a5 + 214);
      os_unfair_lock_unlock((a5 + 208));
      v26 = IDSDefaultRelayLinkSorter.score(link:)();
      v27 = IDSDefaultRelayLinkSorter.score(link:)();

      if (v25)
      {
        if (v26 < v27)
        {
          goto LABEL_36;
        }
      }

      else if (v27 < v26)
      {
LABEL_36:
        v28 = v24;
        if (v7 + 8 != v31)
        {
          *v7 = *v24;
        }

        v6 = v30;
        if (v16 <= v30 || (v8 = v28, v28 <= v9))
        {
          v8 = v28;
          goto LABEL_42;
        }

        goto LABEL_28;
      }

      v8 = v31;
      v22 = v24;
      if (v7 + 8 != v16)
      {
        *v7 = *v23;
      }

      v7 -= 8;
      v16 = v23;
      v6 = v30;
    }

    while (v23 > v30);
    v16 = v23;
  }

LABEL_42:
  if (v8 != v6 || v8 >= &v6[(v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v8, v6, 8 * ((v16 - v6) / 8));
  }

  return 1;
}

uint64_t sub_1A7DB3050(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_1A7CF0024(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_1A7DB2D58(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7DB31F8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v107 = MEMORY[0x1E69E7CC0];
  if (v6 >= 1)
  {
    swift_retain_n();
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v99 = v7;
        v96 = v8;
        v11 = 8 * v7;
        v12 = *a3 + 8 * v7 + 16;

        os_unfair_lock_lock((a5 + 208));
        v13 = *(a5 + 214);
        os_unfair_lock_unlock((a5 + 208));
        v14 = IDSDefaultRelayLinkSorter.score(link:)();
        v15 = IDSDefaultRelayLinkSorter.score(link:)();

        v16 = v15 < v14;
        if (v13)
        {
          v16 = v14 < v15;
        }

        v102 = v16;
        v17 = v11 + 8;
        do
        {
          v18 = v10;
          v19 = v17;
          if (++v10 >= v6)
          {
            break;
          }

          os_unfair_lock_lock((a5 + 208));
          v20 = *(a5 + 214);
          os_unfair_lock_unlock((a5 + 208));
          v21 = IDSDefaultRelayLinkSorter.score(link:)();
          v22 = IDSDefaultRelayLinkSorter.score(link:)();

          v23 = v21 < v22;
          if (!v20)
          {
            v23 = v22 < v21;
          }

          v12 += 8;
          v17 = v19 + 8;
        }

        while (v102 == v23);
        if (v102)
        {
          v9 = v99;
          if (v10 < v99)
          {
            goto LABEL_118;
          }

          if (v99 < v10)
          {
            v24 = v99;
            do
            {
              if (v24 != v18)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_123;
                }

                v25 = *(v27 + v11);
                *(v27 + v11) = *(v27 + v19);
                *(v27 + v19) = v25;
              }

              ++v24;
              v19 -= 8;
              v11 += 8;
            }

            while (v24 < v18--);
          }

          v8 = v96;
        }

        else
        {
          v8 = v96;
          v9 = v99;
        }
      }

      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_117;
        }

        if (v10 - v9 < a4)
        {
          v29 = (v9 + a4);
          if (__OFADD__(v9, a4))
          {
            goto LABEL_119;
          }

          if (v29 >= v28)
          {
            v29 = a3[1];
          }

          if (v29 < v9)
          {
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
            return result;
          }

          if (v10 != v29)
          {
            v97 = v8;
            v30 = *a3;
            v31 = *a3 + 8 * v10 - 8;
            v100 = v29;
            v32 = v9 - v10;
            do
            {
              v103 = v10;
              v33 = v32;
              v34 = v31;
              do
              {

                os_unfair_lock_lock((a5 + 208));
                v35 = *(a5 + 214);
                os_unfair_lock_unlock((a5 + 208));
                v36 = IDSDefaultRelayLinkSorter.score(link:)();
                v37 = IDSDefaultRelayLinkSorter.score(link:)();

                if (v35)
                {
                  if (v36 >= v37)
                  {
                    break;
                  }
                }

                else if (v37 >= v36)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_121;
                }

                v38 = *v34;
                *v34 = v34[1];
                v34[1] = v38;
                --v34;
              }

              while (!__CFADD__(v33++, 1));
              ++v10;
              v31 += 8;
              --v32;
            }

            while ((v103 + 1) != v100);
            v10 = v100;
            v8 = v97;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1A7CCC08C(0, *(v8 + 2) + 1, 1, v8);
      }

      v41 = *(v8 + 2);
      v40 = *(v8 + 3);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v8 = sub_1A7CCC08C((v40 > 1), v41 + 1, 1, v8);
      }

      *(v8 + 2) = v42;
      v43 = v8 + 32;
      v44 = &v8[16 * v41 + 32];
      *v44 = v9;
      *(v44 + 1) = v10;
      v101 = *a1;
      if (!*a1)
      {
        goto LABEL_124;
      }

      v104 = v10;
      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v46 = *(v8 + 4);
            v47 = *(v8 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_64:
            if (v49)
            {
              goto LABEL_106;
            }

            v62 = &v8[16 * v42];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_108;
            }

            v68 = &v43[16 * v45];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_113;
            }

            if (v66 + v71 >= v48)
            {
              if (v48 < v71)
              {
                v45 = v42 - 2;
              }

              goto LABEL_86;
            }

            goto LABEL_79;
          }

          if (v42 < 2)
          {
            goto LABEL_114;
          }

          v72 = &v8[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_79:
          if (v67)
          {
            goto LABEL_110;
          }

          v75 = &v43[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_112;
          }

          if (v78 < v66)
          {
            goto LABEL_3;
          }

LABEL_86:
          if (v45 - 1 >= v42)
          {
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
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          v83 = *a3;
          if (!*a3)
          {
            goto LABEL_122;
          }

          v84 = &v43[16 * v45 - 16];
          v85 = *v84;
          v86 = v45;
          v87 = &v43[16 * v45];
          v88 = *(v87 + 1);
          v89 = (v83 + 8 * *v84);
          v90 = (v83 + 8 * *v87);
          v91 = (v83 + 8 * v88);

          sub_1A7DB2D58(v89, v90, v91, v101, a5);
          if (v106)
          {

            goto LABEL_98;
          }

          if (v88 < v85)
          {
            goto LABEL_101;
          }

          v92 = *(v8 + 2);
          if (v86 > v92)
          {
            goto LABEL_102;
          }

          *v84 = v85;
          *(v84 + 1) = v88;
          if (v86 >= v92)
          {
            goto LABEL_103;
          }

          v42 = v92 - 1;
          memmove(v87, v87 + 16, 16 * (v92 - 1 - v86));
          *(v8 + 2) = v92 - 1;
          v43 = v8 + 32;
          if (v92 <= 2)
          {
            goto LABEL_3;
          }
        }

        v50 = &v43[16 * v42];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_104;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_105;
        }

        v57 = &v8[16 * v42];
        v59 = *v57;
        v58 = *(v57 + 1);
        v56 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v56)
        {
          goto LABEL_107;
        }

        v56 = __OFADD__(v48, v60);
        v61 = v48 + v60;
        if (v56)
        {
          goto LABEL_109;
        }

        if (v61 >= v53)
        {
          v79 = &v43[16 * v45];
          v81 = *v79;
          v80 = *(v79 + 1);
          v56 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v56)
          {
            goto LABEL_115;
          }

          if (v48 < v82)
          {
            v45 = v42 - 2;
          }

          goto LABEL_86;
        }

        goto LABEL_64;
      }

LABEL_3:
      v7 = v104;
      v6 = a3[1];
      if (v104 >= v6)
      {
        v107 = v8;
        goto LABEL_96;
      }
    }
  }

  swift_retain_n();
LABEL_96:
  v93 = *a1;
  if (!*a1)
  {
    goto LABEL_125;
  }

  sub_1A7DB3050(&v107, v93, a3, a5);

LABEL_98:
}

uint64_t sub_1A7DB38BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = result - a3;
LABEL_5:
    v10 = v9;
    v17 = v8;
    while (1)
    {

      os_unfair_lock_lock((a5 + 208));
      v11 = *(a5 + 214);
      os_unfair_lock_unlock((a5 + 208));
      v12 = IDSDefaultRelayLinkSorter.score(link:)();
      v13 = IDSDefaultRelayLinkSorter.score(link:)();

      if (v11)
      {
        if (v12 >= v13)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v12)
      {
        goto LABEL_4;
      }

      if (!v7)
      {
        break;
      }

      v14 = *v8;
      *v8 = v8[1];
      v8[1] = v14;
      --v8;
      if (__CFADD__(v10++, 1))
      {
LABEL_4:
        ++v6;
        v8 = v17 + 1;
        --v9;
        if (v6 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A7DB39E0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1A7E23080();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for LinkEngineLink();
        v8 = sub_1A7E22580();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_1A7DB31F8(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1A7DB38BC(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1A7DB3B3C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A7D6035C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_1A7DB39E0(v8, a2);

  sub_1A7E22C00();
}

uint64_t initializeBufferWithCopyOfBuffer for IDSDefaultRelayLinkSorter.State(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSDefaultRelayLinkSorter.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSDefaultRelayLinkSorter.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

__n128 sub_1A7DB3D7C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1A7DB3DB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 192))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7DB3DD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 184) = 0;
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

  *(result + 192) = v3;
  return result;
}

uint64_t sub_1A7DB3E9C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.__allocating_init(interfaceTypes:sorter:fallbackDelay:disconnectDelay:nowProvider:behavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v17 = *(a2 + 24);
  v16 = *(a2 + 32);
  v18 = sub_1A7CC9920(a2, v17);
  v19 = sub_1A7DB9500(a1, v18, a3, a4, a5, a6, a7, a8, a9, v9, v17, v16);

  sub_1A7B0CD6C(a2);
  return v19;
}

void IDSConnectRelayLinksByInterfaceTypePlugin.behavior.getter(_BYTE *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 32));
  *a1 = *(v1 + 40);

  os_unfair_lock_unlock((v1 + 32));
}

void IDSConnectRelayLinksByInterfaceTypePlugin.behavior.setter(char *a1)
{
  v2 = *a1;
  os_unfair_lock_lock((v1 + 32));
  *(v1 + 40) = v2;

  os_unfair_lock_unlock((v1 + 32));
}

void IDSConnectRelayLinksByInterfaceTypePlugin.toolState(engine:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 16));
  v3 = *(a1 + 24);

  os_unfair_lock_unlock((a1 + 16));
  v4 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_9:
    v10 = *(*(v3 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v7)))));

    os_unfair_lock_lock((v10 + 40));
    v11 = *(v10 + 48);
    if (*(v11 + 16) && (v12 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v13 & 1) != 0))
    {
      sub_1A7B0CD10(*(v11 + 56) + 32 * v12, &v26);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v7 &= v7 - 1;
    os_unfair_lock_unlock((v10 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v29 = 1;
      v30 = 0;
      v31 = 0;
LABEL_19:
      sub_1A7CDBC48(1);
      goto LABEL_20;
    }

    v14 = v29;
    v15 = v30;
    v16 = v31;
    if (v29 == 1)
    {
      goto LABEL_19;
    }

    sub_1A7CDB7B8(v29);
    sub_1A7CDBC48(v14);
    if (v14 && (*&v26 = v14, *(&v26 + 1) = v15, *&v27 = v16, LinkDefinition.idsLinkType.getter(&v29), sub_1A7CDB84C(v14), !v29))
    {
      sub_1A7E22BF0();
      sub_1A7E22C40();
      sub_1A7E22C50();
      sub_1A7E22C00();
    }

    else
    {
LABEL_20:
    }
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      v17 = v32;
      os_unfair_lock_lock((v25 + 32));
      sub_1A7CC99E0(v25 + 56, &v26);
      os_unfair_lock_unlock((v25 + 32));
      v18 = *(&v27 + 1);
      v19 = v28;
      sub_1A7CC9878(&v26, *(&v27 + 1));
      v20 = (*(v19 + 8))(v17, v18, v19);

      sub_1A7B0CD6C(&v26);
      os_unfair_lock_lock((v25 + 32));
      v21 = *(v25 + 40);

      v23 = sub_1A7DB8FA0(v22, v20);

      swift_bridgeObjectRelease_n();
      *a2 = v21;
      a2[1] = v23;
      a2[3] = 0;
      a2[4] = 0;
      a2[2] = 0;
      os_unfair_lock_unlock((v25 + 32));
      return;
    }

    v7 = *(v3 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1A7DB436C()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B75A0);
  sub_1A7B0CB00(v0, qword_1EB2B75A0);
  return sub_1A7E22050();
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.description.getter()
{
  v1 = 0x1000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x656E6E6F63736944;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656E6E6F43;
  }
}

uint64_t sub_1A7DB449C()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x656E6E6F63736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656E6E6F63;
  }
}

uint64_t sub_1A7DB4500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7DB9E80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7DB4528(uint64_t a1)
{
  v2 = sub_1A7DB9628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DB4564(uint64_t a1)
{
  v2 = sub_1A7DB9628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DB45A0(uint64_t a1)
{
  v2 = sub_1A7DB9724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DB45DC(uint64_t a1)
{
  v2 = sub_1A7DB9724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DB4618(uint64_t a1)
{
  v2 = sub_1A7DB967C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DB4654(uint64_t a1)
{
  v2 = sub_1A7DB967C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DB4690(uint64_t a1)
{
  v2 = sub_1A7DB96D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DB46CC(uint64_t a1)
{
  v2 = sub_1A7DB96D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B75B8);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v28 = &v22 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B75C0);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v25 = &v22 - v8;
  v9 = sub_1A7CC7FFC(&qword_1EB2B75C8);
  v23 = *(v9 - 8);
  v24 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v22 - v11;
  v13 = sub_1A7CC7FFC(&qword_1EB2B75D0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v22 - v16;
  v18 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DB9628();
  sub_1A7E23260();
  if (v18)
  {
    if (v18 == 1)
    {
      v32 = 1;
      sub_1A7DB96D0();
      v12 = v25;
      sub_1A7E22F80();
      v20 = v26;
      v19 = v27;
    }

    else
    {
      v33 = 2;
      sub_1A7DB967C();
      v12 = v28;
      sub_1A7E22F80();
      v20 = v29;
      v19 = v30;
    }
  }

  else
  {
    v31 = 0;
    sub_1A7DB9724();
    sub_1A7E22F80();
    v20 = v23;
    v19 = v24;
  }

  (*(v20 + 8))(v12, v19);
  return (*(v14 + 8))(v17, v13);
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B75F8);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v38 = &v32 - v5;
  v37 = sub_1A7CC7FFC(&qword_1EB2B7600);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v6);
  v8 = &v32 - v7;
  v9 = sub_1A7CC7FFC(&qword_1EB2B7608);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v13 = sub_1A7CC7FFC(&qword_1EB2B7610);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - v16;
  v18 = a1[3];
  v41 = a1;
  sub_1A7CC9878(a1, v18);
  sub_1A7DB9628();
  v19 = v40;
  sub_1A7E23250();
  if (!v19)
  {
    v32 = v9;
    v40 = v14;
    v21 = v38;
    v20 = v39;
    v22 = sub_1A7E22F70();
    v23 = (2 * *(v22 + 16)) | 1;
    v42 = v22;
    v43 = v22 + 32;
    v44 = 0;
    v45 = v23;
    v24 = sub_1A7CDB540();
    if (v24 == 3 || v44 != v45 >> 1)
    {
      v26 = sub_1A7E22BD0();
      swift_allocError();
      v28 = v27;
      sub_1A7CC7FFC(&qword_1EB2B4EC8);
      *v28 = &type metadata for IDSConnectRelayLinksByInterfaceTypePlugin.Behavior;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v40 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = v24;
      if (v24)
      {
        if (v24 == 1)
        {
          v47 = 1;
          sub_1A7DB96D0();
          sub_1A7E22E70();
          v25 = v40;
          (*(v34 + 8))(v8, v37);
          (*(v25 + 8))(v17, v13);
        }

        else
        {
          v47 = 2;
          sub_1A7DB967C();
          v30 = v21;
          sub_1A7E22E70();
          v31 = v40;
          (*(v35 + 8))(v30, v36);
          (*(v31 + 8))(v17, v13);
        }
      }

      else
      {
        v47 = 0;
        sub_1A7DB9724();
        sub_1A7E22E70();
        (*(v33 + 8))(v12, v32);
        (*(v40 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v20 = v46;
    }
  }

  return sub_1A7B0CD6C(v41);
}

uint64_t sub_1A7DB5088()
{
  v1 = 0x1000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x656E6E6F63736944;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656E6E6F43;
  }
}

void IDSConnectRelayLinksByInterfaceTypePlugin.sorter.getter(uint64_t a1@<X8>)
{
  os_unfair_lock_lock(v1 + 8);
  sub_1A7CC99E0(&v1[14], a1);

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_1A7DB5134(uint64_t a1, uint64_t *a2)
{
  sub_1A7CC99E0(a1, v5);
  v3 = *a2;
  os_unfair_lock_lock((v3 + 32));
  sub_1A7DB9778((v3 + 56), v5);
  os_unfair_lock_unlock((v3 + 32));
  return sub_1A7B0CD6C(v5);
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.sorter.setter(uint64_t *a1)
{
  os_unfair_lock_lock((v1 + 32));
  sub_1A7DB9778((v1 + 56), a1);
  os_unfair_lock_unlock((v1 + 32));
  return sub_1A7B0CD6C(a1);
}

void (*IDSConnectRelayLinksByInterfaceTypePlugin.sorter.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  os_unfair_lock_lock(v1 + 8);
  sub_1A7CC99E0(&v1[14], v4);
  os_unfair_lock_unlock(v1 + 8);
  return sub_1A7DB525C;
}

void sub_1A7DB525C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_1A7CC99E0(*a1, (v2 + 5));
    os_unfair_lock_lock((v3 + 32));
    sub_1A7DB9778((v3 + 56), v2 + 5);
    os_unfair_lock_unlock((v3 + 32));
    sub_1A7B0CD6C((v2 + 5));
  }

  else
  {
    os_unfair_lock_lock((v3 + 32));
    sub_1A7DB9778((v3 + 56), v2);
    os_unfair_lock_unlock((v3 + 32));
  }

  sub_1A7B0CD6C(v2);

  free(v2);
}

void (*IDSConnectRelayLinksByInterfaceTypePlugin.behavior.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  *a1 = v1;
  os_unfair_lock_lock((v1 + 32));
  *(a1 + 8) = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 32));
  return sub_1A7DB5358;
}

void sub_1A7DB5358(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 8);
  LOBYTE(v1[10]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.logState(_:engine:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v86 - v7;
  v95 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v95, v9);
  v94 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v97 = v86 - v13;
  *&v105 = 0x726F697661686542;
  *(&v105 + 1) = 0xEA0000000000203ALL;
  os_unfair_lock_lock((v2 + 32));
  v14 = *(v2 + 40);
  v100 = v2;
  os_unfair_lock_unlock((v2 + 32));
  v15 = 0x80000001A7EB1280;
  v16 = 0x1000000000000019;
  if (v14 != 1)
  {
    v16 = 0x656E6E6F63736944;
    v15 = 0xEA00000000007463;
  }

  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x7463656E6E6F43;
  }

  if (v14)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  MEMORY[0x1AC561C90](v17, v18);

  v20 = *(&v105 + 1);
  v19 = v105;
  v21 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_126;
  }

LABEL_10:
  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  v25 = v24 + 1;
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1A7CCCAA4((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v25;
  v26 = &v21[v24];
  *(v26 + 4) = v19;
  *(v26 + 5) = v20;
  *a1 = v21;
  v27 = *(v21 + 3);
  if ((v24 + 2) > (v27 >> 1))
  {
    v21 = sub_1A7CCCAA4((v27 > 1), v24 + 2, 1, v21);
  }

  *(v21 + 2) = v24 + 2;
  v28 = &v21[v25];
  *(v28 + 4) = 0xD000000000000010;
  *(v28 + 5) = 0x80000001A7EB12A0;
  v90 = a1;
  *a1 = v21;
  os_unfair_lock_lock((a2 + 16));
  v29 = *(a2 + 24);

  os_unfair_lock_unlock((a2 + 16));
  v30 = 0;
  v108[0] = MEMORY[0x1E69E7CC0];
  v20 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v19 = v32 & *(v29 + 64);
  a1 = (v31 + 63) >> 6;
  v101 = v8;
  while (v19)
  {
LABEL_22:
    v34 = *(*(v29 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v19)))));

    os_unfair_lock_lock((v34 + 40));
    v21 = *(v34 + 48);
    if (*(v21 + 2) && (v35 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v36 & 1) != 0))
    {
      sub_1A7B0CD10(*(v21 + 7) + 32 * v35, &v105);
    }

    else
    {
      v105 = 0u;
      v106 = 0u;
    }

    v19 &= v19 - 1;
    os_unfair_lock_unlock((v34 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      a2 = 0;
      v102 = 1uLL;
      v103 = 0;
LABEL_32:
      sub_1A7CDBC48(1);
      goto LABEL_33;
    }

    a2 = *(&v102 + 1);
    v37 = v102;
    v38 = v103;
    if (v102 == 1)
    {
      goto LABEL_32;
    }

    sub_1A7CDB7B8(v102);
    sub_1A7CDBC48(v37);
    if (v37 && (v105 = __PAIR128__(a2, v37), *&v106 = v38, v21 = &v105, LinkDefinition.idsLinkType.getter(&v102), sub_1A7CDB84C(v37), !v102))
    {
      v21 = v108;
      sub_1A7E22BF0();
      a2 = *(v108[0] + 16);
      sub_1A7E22C40();
      sub_1A7E22C50();
      sub_1A7E22C00();
      v8 = v101;
    }

    else
    {
LABEL_33:

      v8 = v101;
    }
  }

  while (1)
  {
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v33 >= a1)
    {
      break;
    }

    v19 = *(v20 + 8 * v33);
    ++v30;
    if (v19)
    {
      v30 = v33;
      goto LABEL_22;
    }
  }

  v39 = v108[0];
  v20 = v100;
  os_unfair_lock_lock((v100 + 32));
  sub_1A7CC99E0(v20 + 56, &v105);
  os_unfair_lock_unlock((v20 + 32));
  a2 = *(&v106 + 1);
  v40 = v107;
  v21 = sub_1A7CC9878(&v105, *(&v106 + 1));
  v41 = (*(v40 + 8))(v39, a2, v40);

  sub_1A7B0CD6C(&v105);
  os_unfair_lock_lock((v20 + 32));
  v42 = *(v20 + 48);

  os_unfair_lock_unlock((v20 + 32));
  v43 = 0;
  v45 = v42 + 64;
  v44 = *(v42 + 64);
  v89 = v42;
  v46 = 1 << *(v42 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v19 = v47 & v44;
  v48 = (v46 + 63) >> 6;
  v49 = v41 & 0xFFFFFFFFFFFFFF8;
  v100 = v41 & 0xFFFFFFFFFFFFFF8;
  if (v41 < 0)
  {
    v49 = v41;
  }

  v86[1] = v49;
  v96 = v41 & 0xC000000000000001;
  v50 = v90;
  v93 = v41;
  v88 = v45;
  v87 = v48;
LABEL_42:
  if (v19)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v53 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_124;
    }

    if (v53 >= v48)
    {
      break;
    }

    v19 = *(v45 + 8 * v53);
    ++v43;
    if (v19)
    {
      v43 = v53;
LABEL_47:
      v20 = *(*(v89 + 48) + (__clz(__rbit64(v19)) | (v43 << 6)));
      *&v105 = 8237;
      *(&v105 + 1) = 0xE200000000000000;
      v92 = v43;
      v91 = v19;
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v54 = 0xE800000000000000;
          v55 = 0x72616C756C6C6543;
        }

        else
        {
          v54 = 0xE700000000000000;
          v55 = 0x6E776F6E6B6E55;
        }
      }

      else if (v20)
      {
        v54 = 0xE400000000000000;
        v55 = 1766222167;
      }

      else
      {
        v54 = 0xE500000000000000;
        v55 = 0x6465726957;
      }

      MEMORY[0x1AC561C90](v55, v54);

      MEMORY[0x1AC561C90](58, 0xE100000000000000);
      v56 = v105;
      v19 = *v50;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      *v50 = v19;
      if ((v57 & 1) == 0)
      {
        v19 = sub_1A7CCCAA4(0, *(v19 + 16) + 1, 1, v19);
        *v50 = v19;
      }

      v59 = *(v19 + 16);
      v58 = *(v19 + 24);
      v21 = (v59 + 1);
      if (v59 >= v58 >> 1)
      {
        v19 = sub_1A7CCCAA4((v58 > 1), v59 + 1, 1, v19);
      }

      *(v19 + 16) = v21;
      *(v19 + 16 * v59 + 32) = v56;
      *v50 = v19;
      v108[0] = MEMORY[0x1E69E7CC0];
      if (!(v41 >> 62))
      {
        a2 = *(v100 + 16);
        if (a2)
        {
          goto LABEL_60;
        }

LABEL_97:
        a2 = MEMORY[0x1E69E7CC0];
        if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
        {
          goto LABEL_118;
        }

LABEL_98:
        if ((a2 & 0x4000000000000000) == 0)
        {
          a1 = *(a2 + 16);
          if (a1)
          {
            goto LABEL_100;
          }

LABEL_40:
          v51 = MEMORY[0x1E69E7CC0];
LABEL_41:
          v19 = (v91 - 1) & v91;

          *&v105 = v51;
          v52._countAndFlagsBits = 538976288;
          v52._object = 0xE400000000000000;
          v50 = v90;
          v21 = v90;
          LinkEngineStateLog.log(_:indentation:)(&v105, v52);

          v41 = v93;
          v45 = v88;
          v43 = v92;
          v48 = v87;
          goto LABEL_42;
        }

LABEL_118:
        a1 = sub_1A7E22DA0();
        if (!a1)
        {
          goto LABEL_40;
        }

LABEL_100:
        v67 = type metadata accessor for LinkStateComponent(0);
        if (a1 >= 1)
        {
          v68 = v67;
          v69 = 0;
          v98 = v67 - 8;
          v99 = a2 & 0xC000000000000001;
          v51 = MEMORY[0x1E69E7CC0];
          do
          {
            if (v99)
            {
              v70 = MEMORY[0x1AC562480](v69, a2);
            }

            else
            {
              v70 = *(a2 + 8 * v69 + 32);
            }

            *&v102 = 8237;
            *(&v102 + 1) = 0xE200000000000000;
            os_unfair_lock_lock((v70 + 40));
            v71 = *(v70 + 48);
            if (*(v71 + 16) && (v72 = sub_1A7CD0DFC(v68), (v73 & 1) != 0))
            {
              sub_1A7B0CD10(*(v71 + 56) + 32 * v72, &v105);
            }

            else
            {
              v105 = 0u;
              v106 = 0u;
            }

            os_unfair_lock_unlock((v70 + 40));
            sub_1A7CC7FFC(&qword_1EB2B66D0);
            v74 = swift_dynamicCast();
            v75 = *(v68 - 8);
            (*(v75 + 56))(v8, v74 ^ 1u, 1, v68);
            if ((*(v75 + 48))(v8, 1, v68))
            {
              sub_1A7CC9970(v8, &qword_1EB2B4A80);
              v76 = v97;
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              v77 = v94;
              sub_1A7CD0EC4(v8, v94);
              sub_1A7CC9970(v8, &qword_1EB2B4A80);
              v76 = v97;
              sub_1A7DB9FA8(v77, v97, type metadata accessor for LinkState);
            }

            v78 = LinkState.description.getter();
            MEMORY[0x1AC561C90](v78);

            sub_1A7CD0E68(v76);
            MEMORY[0x1AC561C90](32, 0xE100000000000000);
            v80 = *(v70 + 16);
            v79 = *(v70 + 24);

            MEMORY[0x1AC561C90](v80, v79);

            v81 = *(&v102 + 1);
            v20 = v102;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = sub_1A7CCCAA4(0, *(v51 + 2) + 1, 1, v51);
            }

            v83 = *(v51 + 2);
            v82 = *(v51 + 3);
            if (v83 >= v82 >> 1)
            {
              v51 = sub_1A7CCCAA4((v82 > 1), v83 + 1, 1, v51);
            }

            ++v69;

            *(v51 + 2) = v83 + 1;
            v84 = &v51[16 * v83];
            *(v84 + 4) = v20;
            *(v84 + 5) = v81;
            v8 = v101;
          }

          while (a1 != v69);
          goto LABEL_41;
        }

LABEL_125:
        __break(1u);
LABEL_126:
        v21 = sub_1A7CCCAA4(0, *(v21 + 2) + 1, 1, v21);
        *a1 = v21;
        goto LABEL_10;
      }

      a2 = sub_1A7E22DA0();
      if (!a2)
      {
        goto LABEL_97;
      }

LABEL_60:
      a1 = 0;
      while (2)
      {
        if (v96)
        {
          v19 = MEMORY[0x1AC562480](a1, v41);
          v60 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_121;
          }
        }

        else
        {
          if (a1 >= *(v100 + 16))
          {
            goto LABEL_122;
          }

          v19 = *(v41 + 8 * a1 + 32);

          v60 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }
        }

        os_unfair_lock_lock((v19 + 40));
        v61 = *(v19 + 48);
        if (*(v61 + 16) && (v62 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v63 & 1) != 0))
        {
          sub_1A7B0CD10(*(v61 + 56) + 32 * v62, &v105);
        }

        else
        {
          v105 = 0u;
          v106 = 0u;
        }

        os_unfair_lock_unlock((v19 + 40));
        sub_1A7CC7FFC(&qword_1EB2B66D0);
        if (swift_dynamicCast())
        {
          v21 = *(&v102 + 1);
          v64 = v102;
          if (v102 != 1)
          {
            sub_1A7CDB7B8(v102);
            v41 = v93;
            sub_1A7CDBC48(v64);
            if (!v64)
            {
              goto LABEL_81;
            }

            sub_1A7CDB84C(v64);
            if (!*(v21 + 2) || (v65 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v66 & 1) == 0))
            {

              goto LABEL_81;
            }

            sub_1A7B0CD10(*(v21 + 7) + 32 * v65, &v105);

            sub_1A7B1503C(&v105, &v102);
            sub_1A7CC7FFC(&qword_1EB2B5040);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_81;
            }

            if (v104)
            {
              if (v104 != 9)
              {
                if (v104 == 10)
                {
                  if (v20 == 3)
                  {
                    goto LABEL_90;
                  }
                }

                else if (v20 == 2)
                {
                  goto LABEL_90;
                }

LABEL_81:

LABEL_82:
                ++a1;
                if (v60 == a2)
                {
                  a2 = v108[0];
                  if ((v108[0] & 0x8000000000000000) == 0)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_118;
                }

                continue;
              }

              if (v20)
              {
                goto LABEL_81;
              }
            }

            else if (v20 != 1)
            {
              goto LABEL_81;
            }

LABEL_90:
            v21 = v108;
            sub_1A7E22BF0();
            sub_1A7E22C40();
            sub_1A7E22C50();
            sub_1A7E22C00();
            goto LABEL_82;
          }
        }

        else
        {
          v21 = 0;
          v102 = 1uLL;
          v103 = 0;
        }

        break;
      }

      sub_1A7CDBC48(1);
      goto LABEL_81;
    }
  }
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.init(interfaceTypes:sorter:fallbackDelay:disconnectDelay:nowProvider:behavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v26 = a6;
  v27 = a7;
  v25 = a5;
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = sub_1A7CC9920(a2, v16);
  v18 = MEMORY[0x1EEE9AC00](v17, v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_1A7DB920C(a1, v20, a3, a4, v25, v26, v27, a8, a9, v9, v16, v15);

  sub_1A7B0CD6C(a2);
  return v22;
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.register(engine:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1A7E4E9C0;
  *(v3 + 24) = v1;

  sub_1A7D219A8(v4, &unk_1A7E44460, v3, v2);
}

uint64_t sub_1A7DB624C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD22FC;

  return IDSConnectRelayLinksByInterfaceTypePlugin.update(engine:)(a1);
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.update(engine:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A7DB6304, 0, 0);
}

uint64_t sub_1A7DB6304()
{
  v37 = v0;
  v1 = LinkEngine.linkConnector.getter();
  if (!v1)
  {
    if (qword_1EB2B4878 != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v31 = v2;
  v32 = v1;
  v3 = *(v0 + 80);
  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);

  os_unfair_lock_unlock((v3 + 16));
  v5 = 0;
  v33 = v4;
  v34 = MEMORY[0x1E69E7CC0];
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  v10 = (63 - v8) >> 6;
  while (v9)
  {
LABEL_10:
    v12 = *(*(v33 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(v9)))));

    os_unfair_lock_lock((v12 + 40));
    v13 = *(v12 + 48);
    if (*(v13 + 16) && (v14 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v15 & 1) != 0))
    {
      sub_1A7B0CD10(*(v13 + 56) + 32 * v14, v0 + 16);
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    v9 &= v9 - 1;
    os_unfair_lock_unlock((v12 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
      *(v0 + 56) = 1;
LABEL_20:
      sub_1A7CDBC48(1);
      goto LABEL_21;
    }

    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 72);
    if (v17 == 1)
    {
      goto LABEL_20;
    }

    sub_1A7CDB7B8(*(v0 + 56));
    sub_1A7CDBC48(v17);
    if (v17 && (v35[0] = v17, v35[1] = v16, v35[2] = v18, LinkDefinition.idsLinkType.getter(v36), sub_1A7CDB84C(v17), !v36[0]))
    {
      sub_1A7E22BF0();
      sub_1A7E22C40();
      sub_1A7E22C50();
      sub_1A7E22C00();
    }

    else
    {
LABEL_21:
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      v19 = *(v0 + 80);
      v20 = *(v0 + 88);

      os_unfair_lock_lock((v20 + 32));
      sub_1A7CC99E0(v20 + 56, v0 + 16);
      os_unfair_lock_unlock((v20 + 32));
      v21 = *(v0 + 40);
      v22 = *(v0 + 48);
      sub_1A7CC9878((v0 + 16), v21);
      v23 = (*(v22 + 8))(v34, v21, v22);

      sub_1A7B0CD6C(v0 + 16);
      os_unfair_lock_lock((v20 + 32));
      sub_1A7DB6794((v20 + 40), v32, v31, v19, v23, v20);

      os_unfair_lock_unlock((v20 + 32));
      swift_unknownObjectRelease();
      goto LABEL_28;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_25:
  v24 = sub_1A7E22060();
  sub_1A7B0CB00(v24, qword_1EB2B75A0);
  v25 = sub_1A7E22040();
  v26 = sub_1A7E228E0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, v35);
    _os_log_impl(&dword_1A7AD9000, v25, v26, "%s: no link connector", v27, 0xCu);
    sub_1A7B0CD6C(v28);
    MEMORY[0x1AC5654B0](v28, -1, -1);
    MEMORY[0x1AC5654B0](v27, -1, -1);
  }

LABEL_28:
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1A7DB6794(unsigned __int8 *a1, uint64_t a2, void (**a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v50 = a6;
  v47 = a2;
  v48 = a3;
  v46 = sub_1A7E22CF0();
  MEMORY[0x1EEE9AC00](v46, v8);
  v45 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 1);
  v13 = v11 + 64;
  v12 = *(v11 + 64);
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v43 = *a1;
  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v18 = a5 & 0xFFFFFFFFFFFFFF8;
  v55 = a5 & 0xFFFFFFFFFFFFFF8;
  if (a5 < 0)
  {
    v18 = a5;
  }

  v40[1] = v18;
  v56 = a5;
  v53 = a5 & 0xC000000000000001;
  v41 = (v9 + 8);
  v51 = v11;

  v20 = 0;
  v44 = v13;
  for (i = v17; ; v17 = i)
  {
    if (!v16)
    {
      do
      {
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_57;
        }

        if (v23 >= v17)
        {
        }

        v16 = *(v13 + 8 * v23);
        ++v20;
      }

      while (!v16);
      v20 = v23;
    }

    v24 = __clz(__rbit64(v16)) | (v20 << 6);
    v25 = *(*(v51 + 48) + v24);
    v26 = *(*(v51 + 56) + 8 * v24);
    v61 = MEMORY[0x1E69E7CC0];
    if (v56 >> 62)
    {
      v39 = v26;
      v27 = sub_1A7E22DA0();
      v26 = v39;
    }

    else
    {
      v27 = *(v55 + 16);
    }

    v52 = v26;

    if (v27)
    {
      break;
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v16 &= v16 - 1;
    v22 = v45;
    (*(v50 + 96))();
    sub_1A7DB7758(v47, v48, v49, v21, v43, v22, v52);

    result = (*v41)(v22, v46);
    v13 = v44;
  }

  v28 = 0;
  v54 = v27;
  while (v53)
  {
    result = MEMORY[0x1AC562480](v28, v56);
    v29 = result;
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_55;
    }

LABEL_22:
    os_unfair_lock_lock((v29 + 40));
    v31 = *(v29 + 48);
    if (*(v31 + 16) && (v32 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v33 & 1) != 0))
    {
      sub_1A7B0CD10(*(v31 + 56) + 32 * v32, v60);
    }

    else
    {
      memset(v60, 0, 32);
    }

    os_unfair_lock_unlock((v29 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v57 = 1uLL;
      v58 = 0;
LABEL_38:
      sub_1A7CDBC48(1);
LABEL_39:
      v37 = v54;
      if (v25 == 4)
      {
        goto LABEL_40;
      }

      goto LABEL_17;
    }

    v34 = v57;
    if (v57 == 1)
    {
      goto LABEL_38;
    }

    sub_1A7CDB7B8(v57);
    sub_1A7CDBC48(v34);
    if (!v34)
    {
      goto LABEL_39;
    }

    sub_1A7CDB84C(v34);
    if (!*(*(&v34 + 1) + 16) || (v35 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v36 & 1) == 0))
    {

      goto LABEL_39;
    }

    sub_1A7B0CD10(*(*(&v34 + 1) + 56) + 32 * v35, v60);

    sub_1A7B1503C(v60, &v57);
    sub_1A7CC7FFC(&qword_1EB2B5040);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_39;
    }

    if (v59)
    {
      if (v59 != 9)
      {
        v37 = v54;
        if (v59 == 10)
        {
          v38 = 3;
          if (v25 == 4)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v38 = 2;
          if (v25 == 4)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_47;
      }

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v37 = v54;
    if (v25 == 4)
    {
      goto LABEL_17;
    }

LABEL_47:
    if (v38 == v25)
    {
LABEL_40:
      sub_1A7E22BF0();
      sub_1A7E22C40();
      sub_1A7E22C50();
      result = sub_1A7E22C00();
      goto LABEL_18;
    }

LABEL_17:

LABEL_18:
    ++v28;
    if (v30 == v37)
    {
      v21 = v61;
      goto LABEL_7;
    }
  }

  if (v28 >= *(v55 + 16))
  {
    goto LABEL_56;
  }

  v29 = *(v56 + 8 * v28 + 32);

  v30 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_22;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

size_t sub_1A7DB6CC0@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v65 = a3;
  v5 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v64 - v7;
  v67 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v67, v9);
  v66 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LEToolLink();
  v72 = *(v11 - 8);
  v73 = v11;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  *&v94 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    goto LABEL_76;
  }

  v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v18 = MEMORY[0x1E69E7CC0];
  v74 = v8;
  v75 = v16;
  if (!v17)
  {
    v30 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_77;
    }

LABEL_43:
    if ((v30 & 0x4000000000000000) != 0)
    {
      goto LABEL_77;
    }

    v31 = *(v30 + 16);
    if (v31)
    {
      goto LABEL_45;
    }

LABEL_78:

    v33 = MEMORY[0x1E69E7CC0];
LABEL_79:
    v63 = v65;
    *v65 = v16;
    *(v63 + 1) = v33;
    return result;
  }

  v19 = 0;
  v129 = a2 & 0xC000000000000001;
  v77 = v17;
  v78 = a2 & 0xFFFFFFFFFFFFFF8;
  while (!v129)
  {
    if (v19 >= *(v78 + 16))
    {
      __break(1u);
LABEL_76:
      v17 = sub_1A7E22DA0();
      goto LABEL_3;
    }

    v20 = *(a2 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_39;
    }

LABEL_10:
    os_unfair_lock_lock((v20 + 40));
    v22 = *(v20 + 48);
    if (*(v22 + 16) && (v23 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v24 & 1) != 0))
    {
      sub_1A7B0CD10(*(v22 + 56) + 32 * v23, &v110);
    }

    else
    {
      v110 = 0u;
      v111 = 0u;
    }

    v8 = a2;
    os_unfair_lock_unlock((v20 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v79 = 1uLL;
      *&v80 = 0;
LABEL_26:
      sub_1A7CDBC48(1);
LABEL_27:
      if (v16 == 4)
      {
        goto LABEL_28;
      }

      goto LABEL_5;
    }

    v25 = v79;
    if (v79 == 1)
    {
      goto LABEL_26;
    }

    v26 = v80;
    sub_1A7CDB7B8(v79);
    v76 = v26;
    v16 = v75;
    sub_1A7CDBC48(v25);
    if (!v25)
    {
      goto LABEL_27;
    }

    sub_1A7CDB84C(v25);
    if (!*(*(&v25 + 1) + 16) || (v27 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v28 & 1) == 0))
    {

      goto LABEL_27;
    }

    sub_1A7B0CD10(*(*(&v25 + 1) + 56) + 32 * v27, &v110);

    sub_1A7B1503C(&v110, &v79);
    sub_1A7CC7FFC(&qword_1EB2B5040);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (LODWORD(v108[0]))
    {
      if (LODWORD(v108[0]) == 9)
      {
        v29 = 0;
        if (v16 == 4)
        {
          goto LABEL_5;
        }
      }

      else if (LODWORD(v108[0]) == 10)
      {
        v29 = 3;
        if (v16 == 4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v29 = 2;
        if (v16 == 4)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      v29 = 1;
      if (v16 == 4)
      {
        goto LABEL_5;
      }
    }

    if (v29 == v16)
    {
LABEL_28:
      sub_1A7E22BF0();
      v8 = *(v94 + 16);
      sub_1A7E22C40();
      sub_1A7E22C50();
      sub_1A7E22C00();
      goto LABEL_6;
    }

LABEL_5:

LABEL_6:
    ++v19;
    if (v21 == v77)
    {
      goto LABEL_40;
    }
  }

  v20 = MEMORY[0x1AC562480](v19, a2, v13);
  v21 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_10;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  v30 = v94;
  v18 = MEMORY[0x1E69E7CC0];
  if ((v94 & 0x8000000000000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_77:
  v31 = sub_1A7E22DA0();
  if (!v31)
  {
    goto LABEL_78;
  }

LABEL_45:
  v128 = v18;
  result = sub_1A7CCEB90(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v33 = v128;
    v76 = type metadata accessor for LinkStateComponent(0);
    v69 = v76 - 8;
    v70 = v30 & 0xC000000000000001;
    v34 = 0;
    v68 = v31 - 1;
    for (i = v30; ; v30 = i)
    {
      v129 = v34;
      if (v70)
      {
        v35 = MEMORY[0x1AC562480]();
      }

      else
      {
        v35 = *(v30 + 8 * v34 + 32);
      }

      v36 = *(v35 + 24);
      v77 = *(v35 + 16);
      v78 = v36;

      os_unfair_lock_lock((v35 + 40));
      v37 = *(v35 + 48);
      if (*(v37 + 16) && (v38 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v39 & 1) != 0))
      {
        sub_1A7B0CD10(*(v37 + 56) + 32 * v38, v124);
      }

      else
      {
        memset(v124, 0, sizeof(v124));
      }

      os_unfair_lock_unlock((v35 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v41 = v125;
      v40 = v126;
      v42 = v127;
      if (v125 == 1)
      {
        goto LABEL_61;
      }

      sub_1A7CDB7B8(v125);
      sub_1A7CDBC48(v41);
      if (!v41)
      {
        goto LABEL_62;
      }

      v93[2] = v40;
      LinkEndpoint.toolRepresentation.getter(&v101);
      v93[1] = v42;
      LinkEndpoint.toolRepresentation.getter(v108);
      sub_1A7CE0528(v41, v93);
      v43 = v93[0];
      sub_1A7CDB84C(v41);
      v44 = MEMORY[0x1E69E7CC0];
      if (v43)
      {
        v44 = v43;
      }

      v98 = v105;
      v99 = v106;
      LOWORD(v100[0]) = v107;
      v94 = v101;
      v95 = v102;
      v96 = v103;
      v97 = v104;
      *(v100 + 8) = v108[0];
      *(&v100[1] + 8) = v108[1];
      *(&v100[2] + 8) = v108[2];
      WORD4(v100[6]) = v109;
      *(&v100[5] + 8) = v108[5];
      *(&v100[4] + 8) = v108[4];
      *(&v100[3] + 8) = v108[3];
      v81 = v103;
      v82 = v104;
      v79 = v101;
      v80 = v102;
      v85 = v100[0];
      v86 = v100[1];
      v83 = v105;
      v84 = v106;
      v90 = v100[5];
      v91 = v100[6];
      v88 = v100[3];
      v89 = v100[4];
      v87 = v100[2];
      v92 = v44;
      nullsub_15(&v79);
      v120 = v89;
      v121 = v90;
      v122 = v91;
      v123 = v92;
      v116 = v85;
      v117 = v86;
      v118 = v87;
      v119 = v88;
      v112 = v81;
      v113 = v82;
      v114 = v83;
      v115 = v84;
      v110 = v79;
      v111 = v80;
LABEL_63:
      v45 = v74;
      LOBYTE(v16) = v75;
      os_unfair_lock_lock((v35 + 40));
      v46 = *(v35 + 48);
      if (*(v46 + 16) && (v47 = sub_1A7CD0DFC(v76), (v48 & 1) != 0))
      {
        sub_1A7B0CD10(*(v46 + 56) + 32 * v47, &v79);
      }

      else
      {
        v79 = 0u;
        v80 = 0u;
      }

      os_unfair_lock_unlock((v35 + 40));

      v49 = v76;
      v50 = swift_dynamicCast();
      v51 = *(v49 - 8);
      (*(v51 + 56))(v45, v50 ^ 1u, 1, v49);
      v52 = *(v73 + 24);
      if ((*(v51 + 48))(v45, 1, v49))
      {
        sub_1A7CC9970(v45, &qword_1EB2B4A80);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v53 = v66;
        sub_1A7CD0EC4(v45, v66);
        sub_1A7CC9970(v45, &qword_1EB2B4A80);
        sub_1A7DB9FA8(v53, &v15[v52], type metadata accessor for LinkState);
      }

      v54 = v78;
      *v15 = v77;
      *(v15 + 1) = v54;
      v55 = v115;
      *(v15 + 5) = v114;
      *(v15 + 6) = v55;
      v56 = v113;
      *(v15 + 3) = v112;
      *(v15 + 4) = v56;
      v57 = v119;
      *(v15 + 9) = v118;
      *(v15 + 10) = v57;
      v58 = v117;
      *(v15 + 7) = v116;
      *(v15 + 8) = v58;
      *(v15 + 28) = v123;
      v59 = v122;
      *(v15 + 12) = v121;
      *(v15 + 13) = v59;
      *(v15 + 11) = v120;
      v60 = v111;
      *(v15 + 1) = v110;
      *(v15 + 2) = v60;
      v62 = *(v33 + 16);
      v61 = *(v33 + 24);
      v128 = v33;
      if (v62 >= v61 >> 1)
      {
        sub_1A7CCEB90(v61 > 1, v62 + 1, 1);
        v33 = v128;
      }

      *(v33 + 16) = v62 + 1;
      sub_1A7DB9FA8(v15, v33 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v62, type metadata accessor for LEToolLink);
      if (v68 == v129)
      {

        goto LABEL_79;
      }

      v34 = v129 + 1;
    }

    v125 = 1;
    v126 = 0;
    v127 = 0;
LABEL_61:
    sub_1A7CDBC48(1);
LABEL_62:
    sub_1A7D21964(&v110);
    goto LABEL_63;
  }

  __break(1u);
  return result;
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.deinit()
{

  sub_1A7DB9994(v0 + 40);

  return v0;
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.__deallocating_deinit()
{

  sub_1A7DB9994(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DB76A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1A7E514F0;
  *(v3 + 24) = v1;

  sub_1A7D219A8(v4, &unk_1A7E514F8, v3, v2);
}

_BYTE *sub_1A7DB7758(uint64_t a1, void (**a2)(void, void), uint64_t a3, unint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7)
{
  v230 = a7;
  v247 = a6;
  v7 = a5;
  v239 = a1;
  v240 = a2;
  v10 = a5;
  v11 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v208 = &v198[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v207 = &v198[-v16];
  MEMORY[0x1EEE9AC00](v17, v18);
  v222 = &v198[-v19];
  MEMORY[0x1EEE9AC00](v20, v21);
  v236 = &v198[-v22];
  MEMORY[0x1EEE9AC00](v23, v24);
  v221 = &v198[-v25];
  MEMORY[0x1EEE9AC00](v26, v27);
  v220 = &v198[-v28];
  MEMORY[0x1EEE9AC00](v29, v30);
  v237 = &v198[-v31];
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v198[-v34];
  v254 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v254, v36);
  v213 = &v198[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v198[-v40];
  MEMORY[0x1EEE9AC00](v42, v43);
  v235 = &v198[-v44];
  MEMORY[0x1EEE9AC00](v45, v46);
  v234 = &v198[-v47];
  MEMORY[0x1EEE9AC00](v48, v49);
  v233 = &v198[-v50];
  MEMORY[0x1EEE9AC00](v51, v52);
  v215 = &v198[-v53];
  MEMORY[0x1EEE9AC00](v54, v55);
  v232 = &v198[-v56];
  MEMORY[0x1EEE9AC00](v57, v58);
  v219 = &v198[-v59];
  MEMORY[0x1EEE9AC00](v60, v61);
  v231 = &v198[-v62];
  MEMORY[0x1EEE9AC00](v63, v64);
  v228 = &v198[-v65];
  MEMORY[0x1EEE9AC00](v66, v67);
  v249 = &v198[-v68];
  v69 = sub_1A7E22CF0();
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v71);
  v212 = &v198[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v73, v74);
  v211 = &v198[-v75];
  MEMORY[0x1EEE9AC00](v76, v77);
  v206 = &v198[-v78];
  v79 = sub_1A7CC7FFC(&qword_1EB2B5B78);
  MEMORY[0x1EEE9AC00](v79 - 8, v80);
  v227 = &v198[-((v81 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v82, v83);
  v210 = &v198[-v84];
  v88 = MEMORY[0x1EEE9AC00](v85, v86);
  result = &v198[-v87];
  if (v10 != 1)
  {
    v90 = *(v230 + 40);
    v205 = *(v230 + 32);
    v204 = v90;
    v91 = *(v70 + 56);
    v226 = &v198[-v87];
    v248 = v69;
    v225 = v70 + 56;
    v224 = v91;
    v91(v88);
    v246 = v35;
    v202 = v41;
    v209 = v70;
    v201 = a3;
    if (a4 >> 62)
    {
      goto LABEL_81;
    }

    v92 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v249; v92; i = v249)
    {
      v94 = type metadata accessor for LinkStateComponent(0);
      v95 = 0;
      v244 = a4 & 0xC000000000000001;
      v223 = a4 & 0xFFFFFFFFFFFFFF8;
      v243 = v94 - 8;
      v238 = (v209 + 16);
      v200 = v240 + 2;
      v229 = (v209 + 8);
      v217 = v240 + 1;
      v203 = (v209 + 32);
      v216 = v240 + 3;
      *&v96 = 136315394;
      v218 = v96;
      v241 = v92;
      v242 = a4;
      while (v244)
      {
        v99 = MEMORY[0x1AC562480](v95, a4);
        v100 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          goto LABEL_79;
        }

LABEL_16:
        os_unfair_lock_lock((v99 + 40));
        v101 = *(v99 + 48);
        v253 = v99 + 48;
        v102 = *(v101 + 16);
        v250 = v95;
        if (v102 && (v103 = sub_1A7CD0DFC(v94), (v104 & 1) != 0))
        {
          sub_1A7B0CD10(*(v101 + 56) + 32 * v103, &v255);
        }

        else
        {
          v255 = 0u;
          v256 = 0u;
        }

        os_unfair_lock_unlock((v99 + 40));
        sub_1A7CC7FFC(&qword_1EB2B66D0);
        v105 = v246;
        v106 = swift_dynamicCast();
        v107 = *(v94 - 8);
        v251 = *(v107 + 56);
        v251(v105, v106 ^ 1u, 1, v94);
        v252 = *(v107 + 48);
        if (v252(v105, 1, v94))
        {
          sub_1A7CC9970(v105, &qword_1EB2B4A80);
          swift_storeEnumTagMultiPayload();
          v108 = v7;
          if (v7)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v113 = v228;
          sub_1A7CD0EC4(v105, v228);
          sub_1A7CC9970(v105, &qword_1EB2B4A80);
          v114 = v113;
          i = v249;
          sub_1A7DB9FA8(v114, v249, type metadata accessor for LinkState);
          v108 = v7;
          if (v7)
          {
LABEL_22:
            v109 = v237;
            if (v108 != 2)
            {
              sub_1A7CD0E68(i);

              goto LABEL_74;
            }

            os_unfair_lock_lock((v99 + 40));
            v110 = *v253;
            if (*(*v253 + 16) && (v111 = sub_1A7CD0DFC(v94), (v112 & 1) != 0))
            {
              sub_1A7B0CD10(*(v110 + 56) + 32 * v111, &v255);
            }

            else
            {
              v255 = 0u;
              v256 = 0u;
            }

            os_unfair_lock_unlock((v99 + 40));
            v122 = swift_dynamicCast();
            v251(v109, v122 ^ 1u, 1, v94);
            if (v252(v109, 1, v94))
            {
              sub_1A7CC9970(v109, &qword_1EB2B4A80);
              v123 = v231;
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              v137 = v219;
              sub_1A7CD0EC4(v109, v219);
              sub_1A7CC9970(v109, &qword_1EB2B4A80);
              v123 = v231;
              sub_1A7DB9FA8(v137, v231, type metadata accessor for LinkState);
            }

            if (swift_getEnumCaseMultiPayload() < 2)
            {
              v245 = v100;
              (*v229)(v123, v248);
              if (qword_1EB2B2CC0 != -1)
              {
                swift_once();
              }

              v138 = sub_1A7E22060();
              sub_1A7B0CB00(v138, qword_1EB2B2CC8);

              v139 = sub_1A7E22040();
              v140 = sub_1A7E228F0();

              if (os_log_type_enabled(v139, v140))
              {
                v141 = swift_slowAlloc();
                v214 = swift_slowAlloc();
                *&v255 = v214;
                *v141 = v218;
                v142 = *(v99 + 16);
                v143 = *(v99 + 24);

                v144 = sub_1A7B0CB38(v142, v143, &v255);

                *(v141 + 4) = v144;
                *(v141 + 12) = 2080;
                v145 = v215;
                LinkEngineLink.state.getter(v215);
                v146 = LinkState.description.getter();
                v148 = v147;
                v149 = v145;
                i = v249;
                sub_1A7CD0E68(v149);
                v150 = sub_1A7B0CB38(v146, v148, &v255);

                *(v141 + 14) = v150;
                _os_log_impl(&dword_1A7AD9000, v139, v140, "%s: %s -> disconnecting", v141, 0x16u);
                v151 = v214;
                swift_arrayDestroy();
                MEMORY[0x1AC5654B0](v151, -1, -1);
                MEMORY[0x1AC5654B0](v141, -1, -1);
              }

              v152 = v221;
              v153 = v220;
              v154 = v233;
              (*v238)(v233, v247, v248);
              swift_storeEnumTagMultiPayload();
              sub_1A7CD0EC4(v154, v153);
              v251(v153, 0, 1, v94);
              os_unfair_lock_lock((v99 + 40));
              sub_1A7CD1F00(v153, v152, &qword_1EB2B4A80);
              if (v252(v152, 1, v94) == 1)
              {
                sub_1A7CC9970(v152, &qword_1EB2B4A80);
                v255 = 0u;
                v256 = 0u;
              }

              else
              {
                *(&v256 + 1) = v94;
                v156 = sub_1A7CC98BC(&v255);
                sub_1A7DB9FA8(v152, v156, type metadata accessor for LinkStateComponent);
              }

              v97 = v241;
              a4 = v242;
              v98 = v250;
              sub_1A7CC8D74(&v255, v94);
              os_unfair_lock_unlock((v99 + 40));
              sub_1A7CD0E68(v233);
              sub_1A7CC9970(v153, &qword_1EB2B4A80);
              ObjectType = swift_getObjectType();
              v240[3](v99, ObjectType);

              sub_1A7CD0E68(i);
              v7 = 2;
              v100 = v245;
              goto LABEL_9;
            }

            sub_1A7CD0E68(i);

            v155 = v123;
            goto LABEL_51;
          }
        }

        v115 = v232;
        sub_1A7CD0EC4(i, v232);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          v117 = v234;
          if ((EnumCaseMultiPayload - 4) < 2)
          {
            goto LABEL_57;
          }

          if (v115[9])
          {
            v245 = v100;
            i = v249;
            if (qword_1EB2B2CC0 != -1)
            {
              swift_once();
            }

            v124 = sub_1A7E22060();
            sub_1A7B0CB00(v124, qword_1EB2B2CC8);
            v125 = v202;
            sub_1A7CD0EC4(i, v202);

            v126 = sub_1A7E22040();
            v127 = sub_1A7E228F0();

            if (os_log_type_enabled(v126, v127))
            {
              v128 = swift_slowAlloc();
              v214 = swift_slowAlloc();
              *&v255 = v214;
              *v128 = v218;
              v199 = v127;
              v129 = *(v99 + 16);
              v130 = *(v99 + 24);

              v131 = sub_1A7B0CB38(v129, v130, &v255);

              *(v128 + 4) = v131;
              *(v128 + 12) = 2080;
              v132 = LinkState.description.getter();
              v134 = v133;
              sub_1A7CD0E68(v125);
              v135 = sub_1A7B0CB38(v132, v134, &v255);

              *(v128 + 14) = v135;
              _os_log_impl(&dword_1A7AD9000, v126, v199, "%s: %s -> connecting (reconnect)", v128, 0x16u);
              v136 = v214;
              swift_arrayDestroy();
              MEMORY[0x1AC5654B0](v136, -1, -1);
              MEMORY[0x1AC5654B0](v128, -1, -1);
            }

            else
            {

              sub_1A7CD0E68(v125);
            }

            v186 = v208;
            v187 = v207;
            v188 = v213;
            (*v238)(v213, v247, v248);
            swift_storeEnumTagMultiPayload();
            sub_1A7CD0EC4(v188, v187);
            v251(v187, 0, 1, v94);
            os_unfair_lock_lock((v99 + 40));
            sub_1A7CD1F00(v187, v186, &qword_1EB2B4A80);
            v189 = v252(v186, 1, v94);
            v100 = v245;
            if (v189 == 1)
            {
              sub_1A7CC9970(v186, &qword_1EB2B4A80);
              v255 = 0u;
              v256 = 0u;
            }

            else
            {
              *(&v256 + 1) = v94;
              v190 = sub_1A7CC98BC(&v255);
              sub_1A7DB9FA8(v186, v190, type metadata accessor for LinkStateComponent);
            }

            v97 = v241;
            a4 = v242;
            sub_1A7CC8D74(&v255, v94);
            os_unfair_lock_unlock((v99 + 40));
            sub_1A7CD0E68(v213);
            sub_1A7CC9970(v187, &qword_1EB2B4A80);
            v191 = swift_getObjectType();
            v240[2](v99, v191);
            goto LABEL_66;
          }

          i = v249;
          sub_1A7CD0E68(v249);

LABEL_6:
          v7 = 0;
          goto LABEL_7;
        }

        v117 = v234;
        if (!EnumCaseMultiPayload)
        {
          v158 = v211;
          v159 = v248;
          (*v238)(v211, v115, v248);
          sub_1A7E22CE0();
          v160 = v115;
          if (sub_1A7E232A0())
          {
            v161 = v227;
            sub_1A7E22CD0();

            v162 = *v229;
            (*v229)(v158, v159);
            i = v249;
            sub_1A7CD0E68(v249);
            v163 = v226;
            sub_1A7CC9970(v226, &qword_1EB2B5B78);
            v7 = 1;
            (v224)(v161, 0, 1, v159);
            sub_1A7D25AEC(v161, v163);
            v162(v160, v159);
            goto LABEL_7;
          }

          v185 = *v229;
          (*v229)(v158, v159);
          i = v249;
          sub_1A7CD0E68(v249);
          v185(v115, v159);
          goto LABEL_6;
        }

        if (EnumCaseMultiPayload != 1)
        {
          (*v229)(v115, v248);
LABEL_57:
          v245 = v100;
          if (qword_1EB2B2CC0 != -1)
          {
            swift_once();
          }

          v164 = sub_1A7E22060();
          sub_1A7B0CB00(v164, qword_1EB2B2CC8);
          sub_1A7CD0EC4(v249, v117);

          v165 = sub_1A7E22040();
          v166 = sub_1A7E228F0();

          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            v214 = swift_slowAlloc();
            *&v255 = v214;
            *v167 = v218;
            v168 = *(v99 + 16);
            v169 = *(v99 + 24);

            v170 = sub_1A7B0CB38(v168, v169, &v255);

            *(v167 + 4) = v170;
            *(v167 + 12) = 2080;
            v171 = LinkState.description.getter();
            v173 = v172;
            sub_1A7CD0E68(v117);
            v174 = sub_1A7B0CB38(v171, v173, &v255);

            *(v167 + 14) = v174;
            _os_log_impl(&dword_1A7AD9000, v165, v166, "%s: %s -> connecting", v167, 0x16u);
            v175 = v214;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v175, -1, -1);
            MEMORY[0x1AC5654B0](v167, -1, -1);
          }

          else
          {

            sub_1A7CD0E68(v117);
          }

          v176 = v222;
          v100 = v245;
          v177 = v235;
          (*v238)(v235, v247, v248);
          swift_storeEnumTagMultiPayload();
          v178 = v177;
          v179 = v236;
          sub_1A7CD0EC4(v178, v236);
          v251(v179, 0, 1, v94);
          os_unfair_lock_lock((v99 + 40));
          sub_1A7CD1F00(v179, v176, &qword_1EB2B4A80);
          v180 = v252(v176, 1, v94);
          i = v249;
          if (v180 == 1)
          {
            sub_1A7CC9970(v176, &qword_1EB2B4A80);
            v255 = 0u;
            v256 = 0u;
          }

          else
          {
            *(&v256 + 1) = v94;
            v181 = sub_1A7CC98BC(&v255);
            sub_1A7DB9FA8(v176, v181, type metadata accessor for LinkStateComponent);
          }

          v97 = v241;
          a4 = v242;
          sub_1A7CC8D74(&v255, v94);
          os_unfair_lock_unlock((v99 + 40));
          sub_1A7CD0E68(v235);
          sub_1A7CC9970(v236, &qword_1EB2B4A80);
          v182 = swift_getObjectType();
          v240[1](v99, v182);
LABEL_66:
          v183 = v227;
          sub_1A7E22CD0();

          sub_1A7CD0E68(i);
          v184 = v226;
          sub_1A7CC9970(v226, &qword_1EB2B5B78);
          v7 = 1;
          (v224)(v183, 0, 1, v248);
          sub_1A7D25AEC(v183, v184);
          goto LABEL_8;
        }

        v118 = v212;
        v119 = v248;
        (*v203)(v212, v115, v248);
        sub_1A7E22CE0();
        if ((sub_1A7E232A0() & 1) == 0)
        {

          (*v229)(v118, v119);
          i = v249;
          v155 = v249;
LABEL_51:
          sub_1A7CD0E68(v155);
          v7 = 2;
          goto LABEL_7;
        }

        v120 = v227;
        sub_1A7E22CD0();

        (*v229)(v118, v119);
        i = v249;
        sub_1A7CD0E68(v249);
        v121 = v226;
        sub_1A7CC9970(v226, &qword_1EB2B5B78);
        v7 = 1;
        (v224)(v120, 0, 1, v119);
        sub_1A7D25AEC(v120, v121);
LABEL_7:
        v97 = v241;
        a4 = v242;
LABEL_8:
        v98 = v250;
LABEL_9:
        v95 = v98 + 1;
        if (v100 == v97)
        {
          goto LABEL_74;
        }
      }

      if (v95 >= *(v223 + 16))
      {
        goto LABEL_80;
      }

      v99 = *(a4 + 8 * v95 + 32);

      v100 = v95 + 1;
      if (!__OFADD__(v95, 1))
      {
        goto LABEL_16;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      v92 = sub_1A7E22DA0();
    }

LABEL_74:
    v192 = v226;
    v193 = v210;
    sub_1A7CD1F00(v226, v210, &qword_1EB2B5B78);
    v194 = v209;
    v195 = v248;
    if ((*(v209 + 48))(v193, 1, v248) == 1)
    {
      sub_1A7CC9970(v192, &qword_1EB2B5B78);
      v196 = v193;
    }

    else
    {
      v197 = v206;
      (*(v194 + 32))(v206, v193, v195);
      LinkEngine.scheduleUpdate(for:)(v197);
      (*(v194 + 8))(v197, v195);
      v196 = v192;
    }

    return sub_1A7CC9970(v196, &qword_1EB2B5B78);
  }

  return result;
}

uint64_t sub_1A7DB8FA0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1A7CCECCC(0, v3, 0);
  v4 = v38;
  v6 = v5 + 64;
  v7 = sub_1A7E22AD0();
  v8 = 0;
  v31 = v5 + 72;
  v32 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    v34 = v8;
    v12 = v6;
    v13 = *(v5 + 36);
    v14 = v5;
    v35 = *(*(v5 + 48) + v7);
    sub_1A7DB6CC0(&v35, a2, v36);
    if (v2)
    {
      goto LABEL_26;
    }

    v15 = v36[0];
    v16 = v37;
    v38 = v4;
    v18 = *(v4 + 16);
    v17 = *(v4 + 24);
    if (v18 >= v17 >> 1)
    {
      v30 = v36[0];
      v29 = v37;
      sub_1A7CCECCC((v17 > 1), v18 + 1, 1);
      v16 = v29;
      v15 = v30;
      v4 = v38;
    }

    *(v4 + 16) = v18 + 1;
    v19 = v4 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    v9 = 1 << *(v14 + 32);
    if (v7 >= v9)
    {
      goto LABEL_23;
    }

    v20 = *(v12 + 8 * v11);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_24;
    }

    v5 = v14;
    v21 = v13;
    if (v13 != *(v14 + 36))
    {
      goto LABEL_25;
    }

    v6 = v12;
    v22 = v20 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v32;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v10 = v32;
      v25 = (v31 + 8 * v11);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          sub_1A7CD29F0(v7, v21, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      sub_1A7CD29F0(v7, v21, 0);
    }

LABEL_4:
    v2 = 0;
    v8 = v34 + 1;
    v7 = v9;
    if (v34 + 1 == v10)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:

  __break(1u);
  return result;
}

uint64_t sub_1A7DB920C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v51[3] = a11;
  v51[4] = a12;
  v16 = sub_1A7CC98BC(v51);
  (*(*(a11 - 8) + 32))(v16, a2, a11);
  LOBYTE(a2) = *a9;
  *(a10 + 16) = 0xD000000000000029;
  *(a10 + 24) = 0x80000001A7EB1340;
  *(a10 + 96) = a7;
  *(a10 + 104) = a8;
  v17 = a10;
  sub_1A7CC99E0(v51, v48);
  LOBYTE(v47) = 0;
  *(&v47 + 1) = sub_1A7CE4EEC(MEMORY[0x1E69E7CC0]);
  *&v50[20] = v48[0];
  *&v50[36] = v48[1];
  *&v50[52] = v49;
  *&v50[4] = v47;

  *(a10 + 32) = 0;
  v18 = *&v50[16];
  *(a10 + 36) = *v50;
  *(a10 + 52) = v18;
  *(a10 + 68) = *&v50[32];
  *(a10 + 80) = *&v50[44];
  os_unfair_lock_lock((a10 + 32));
  v19 = a1;
  *(a10 + 40) = a2;
  v20 = *(a1 + 16);
  if (!v20)
  {
LABEL_19:

    os_unfair_lock_unlock((a10 + 32));
    sub_1A7B0CD6C(v51);
    return v17;
  }

  v21 = 0;
  v22 = a1 + 32;
  v42 = v20;
  while (v21 < *(v19 + 16))
  {
    v23 = *(v22 + v21);
    if (v23 == 3)
    {
      goto LABEL_5;
    }

    v24 = v19;
    type metadata accessor for LinkEngineConnectBestController();
    v25 = swift_allocObject();
    v25[2] = a3;
    v25[3] = a4;
    v25[4] = a5;
    v25[5] = a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *(v17 + 48);
    v27 = *v50;
    v28 = v17;
    *(v17 + 48) = 0x8000000000000000;
    v30 = sub_1A7CD1670(v23);
    v31 = *(v27 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_21;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = *v50;
        if ((v29 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1A7DC8FD8();
        v37 = *v50;
        if ((v34 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1A7DC33EC(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_1A7CD1670(v23);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_23;
      }

      v30 = v35;
      v37 = *v50;
      if ((v34 & 1) == 0)
      {
LABEL_15:
        v37[(v30 >> 6) + 8] |= 1 << v30;
        *(v37[6] + v30) = v23;
        *(v37[7] + 8 * v30) = v25;
        v38 = v37[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_22;
        }

        v37[2] = v40;
        goto LABEL_4;
      }
    }

    *(v37[7] + 8 * v30) = v25;

LABEL_4:
    v17 = v28;
    *(v28 + 48) = v37;

    v19 = v24;
    v20 = v42;
LABEL_5:
    if (v20 == ++v21)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1A7E23140();
  __break(1u);
  return result;
}

uint64_t sub_1A7DB9500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23 = a7;
  v24 = a8;
  v21 = a5;
  v22 = a6;
  v16 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a10, a2);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a2, a11);
  return sub_1A7DB920C(a1, v18, a3, a4, v21, v22, v23, v24, a9, v19, a11, a12);
}

unint64_t sub_1A7DB9628()
{
  result = qword_1EB2B75D8;
  if (!qword_1EB2B75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B75D8);
  }

  return result;
}

unint64_t sub_1A7DB967C()
{
  result = qword_1EB2B75E0;
  if (!qword_1EB2B75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B75E0);
  }

  return result;
}

unint64_t sub_1A7DB96D0()
{
  result = qword_1EB2B75E8;
  if (!qword_1EB2B75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B75E8);
  }

  return result;
}

unint64_t sub_1A7DB9724()
{
  result = qword_1EB2B75F0;
  if (!qword_1EB2B75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B75F0);
  }

  return result;
}

uint64_t *sub_1A7DB9778(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t sub_1A7DB99C8()
{
  result = qword_1EB2B7618;
  if (!qword_1EB2B7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7618);
  }

  return result;
}

uint64_t sub_1A7DB9A84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A7DB9ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A7DB9B6C()
{
  result = qword_1EB2B7628;
  if (!qword_1EB2B7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7628);
  }

  return result;
}

unint64_t sub_1A7DB9BC4()
{
  result = qword_1EB2B7630;
  if (!qword_1EB2B7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7630);
  }

  return result;
}

unint64_t sub_1A7DB9C1C()
{
  result = qword_1EB2B7638;
  if (!qword_1EB2B7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7638);
  }

  return result;
}

unint64_t sub_1A7DB9C74()
{
  result = qword_1EB2B7640;
  if (!qword_1EB2B7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7640);
  }

  return result;
}

unint64_t sub_1A7DB9CCC()
{
  result = qword_1EB2B7648;
  if (!qword_1EB2B7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7648);
  }

  return result;
}

unint64_t sub_1A7DB9D24()
{
  result = qword_1EB2B7650;
  if (!qword_1EB2B7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7650);
  }

  return result;
}

unint64_t sub_1A7DB9D7C()
{
  result = qword_1EB2B7658;
  if (!qword_1EB2B7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7658);
  }

  return result;
}

unint64_t sub_1A7DB9DD4()
{
  result = qword_1EB2B7660;
  if (!qword_1EB2B7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7660);
  }

  return result;
}

unint64_t sub_1A7DB9E2C()
{
  result = qword_1EB2B7668;
  if (!qword_1EB2B7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7668);
  }

  return result;
}

uint64_t sub_1A7DB9E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656E6E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A7EB1320 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xEA00000000007463)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A7DB9FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t LinkEngineLink.testableLink.getter()
{
  os_unfair_lock_lock((v0 + 40));
  sub_1A7CCBE1C((v0 + 48), &v4);
  os_unfair_lock_unlock((v0 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = xmmword_1A7E43F70;
    goto LABEL_5;
  }

  v1 = v5;
  if (v5 == 1)
  {
LABEL_5:
    sub_1A7CEB438(1);
    return 0;
  }

  v2 = swift_unknownObjectRetain();
  sub_1A7CEB438(v2);
  return v1;
}

uint64_t LinkEngineLink.testableLink.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v3 + 10);
  v7[3] = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
  v7[0] = a1;
  v7[1] = a2;
  swift_unknownObjectRetain();
  sub_1A7CC8D74(v7, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
  os_unfair_lock_unlock(v3 + 10);
  return swift_unknownObjectRelease_n();
}

uint64_t LinkEngineLinkIDSTestableLinkComponent.init(testableLink:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1A7DBA168(uint64_t *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_unknownObjectRetain_n();
  os_unfair_lock_lock(v4 + 10);
  v6[3] = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
  v6[0] = v2;
  v6[1] = v3;
  swift_unknownObjectRetain();
  sub_1A7CC8D74(v6, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
  os_unfair_lock_unlock(v4 + 10);
  return swift_unknownObjectRelease_n();
}

uint64_t (*LinkEngineLink.testableLink.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = LinkEngineLink.testableLink.getter();
  a1[1] = v3;
  return sub_1A7DBA234;
}

uint64_t sub_1A7DBA234(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  swift_unknownObjectRetain();
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v3 + 10);
    v9 = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
    v7 = v5;
    v8 = v4;
    swift_unknownObjectRetain();
    sub_1A7CC8D74(&v7, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
    os_unfair_lock_unlock(v3 + 10);
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock(v3 + 10);
    v9 = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
    v7 = v5;
    v8 = v4;
    swift_unknownObjectRetain();
    sub_1A7CC8D74(&v7, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
    os_unfair_lock_unlock(v3 + 10);
  }

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1A7DBA310(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1A7DBA36C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A7DBA3CC()
{
  os_unfair_lock_lock((v0 + 200));
  sub_1A7CC95D0((v0 + 208), &v7);
  os_unfair_lock_unlock((v0 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  v1 = type metadata accessor for IDSLinkSelectionLifecycle();
  if ((swift_dynamicCast() & 1) == 0 || (v2 = v9) == 0)
  {
    v2 = swift_allocObject();
    sub_1A7CC7FFC(&qword_1EB2B7670);
    v3 = swift_allocObject();
    v4 = MEMORY[0x1E69E7CC0];
    v5 = sub_1A7CE2D90(MEMORY[0x1E69E7CC0]);
    *(v3 + 16) = 0;
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 40) = 0;
    *(v2 + 16) = v3;

    os_unfair_lock_lock((v0 + 200));
    v8 = v1;
    *&v7 = v2;

    sub_1A7CC8D74(&v7, v1);
    os_unfair_lock_unlock((v0 + 200));
  }

  return v2;
}

uint64_t IDSLinkSelectionLifecycle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t IDSLinkEndpointResolvedEndpoint.resolvedEndpoint.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

void LinkEndpoint.idsResolvedEndpoint.getter(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointResolvedEndpoint), (v5 & 1) != 0) && (sub_1A7B0CD10(*(v3 + 56) + 32 * v4, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) != 0) && v8)
  {
    *a1 = v8;
  }

  else
  {
    *a1 = 0;
  }
}

_OWORD *LinkEndpoint.idsResolvedEndpoint.setter(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(&v4 + 1) = &type metadata for IDSLinkEndpointResolvedEndpoint;
    *&v3 = v1;
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  return sub_1A7CC8D74(&v3, &type metadata for IDSLinkEndpointResolvedEndpoint);
}

_OWORD *(*LinkEndpoint.idsResolvedEndpoint.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  sub_1A7CE0478(*v1, &v4);
  *a1 = v4;
  return sub_1A7DBA74C;
}

_OWORD *sub_1A7DBA74C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (v2)
    {
      *(&v5 + 1) = &type metadata for IDSLinkEndpointResolvedEndpoint;
      *&v4 = v2;
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
    }

    sub_1A7CC8D74(&v4, &type metadata for IDSLinkEndpointResolvedEndpoint);
  }

  else
  {
    if (v2)
    {
      *(&v5 + 1) = &type metadata for IDSLinkEndpointResolvedEndpoint;
      *&v4 = v2;
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
    }

    return sub_1A7CC8D74(&v4, &type metadata for IDSLinkEndpointResolvedEndpoint);
  }
}

__n128 sub_1A7DBA828(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A7DBA83C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
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

uint64_t sub_1A7DBA884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int __swiftcall cliMaxWidth()()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v0 = sub_1A7E22070();
  if (MEMORY[0x1AC561960](1, v0, v2))
  {
    return 80;
  }

  else
  {
    return WORD1(v2[0]);
  }
}

uint64_t sub_1A7DBA964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465747265766E69 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DBA9EC(uint64_t a1)
{
  v2 = sub_1A7DBAD74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DBAA28(uint64_t a1)
{
  v2 = sub_1A7DBAD74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DBAA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DBAAFC(uint64_t a1)
{
  v2 = sub_1A7DBADC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DBAB38(uint64_t a1)
{
  v2 = sub_1A7DBADC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolSorterResponse.encode(to:)(void *a1)
{
  v15 = sub_1A7CC7FFC(&qword_1EB2B7678);
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v4);
  v6 = v14 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7680);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v14 - v10;
  v14[1] = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DBAD74();
  sub_1A7E23260();
  sub_1A7DBADC8();
  sub_1A7E22F80();
  v12 = v15;
  sub_1A7E23000();
  (*(v3 + 8))(v6, v12);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1A7DBAD74()
{
  result = qword_1EB2B7688;
  if (!qword_1EB2B7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7688);
  }

  return result;
}

unint64_t sub_1A7DBADC8()
{
  result = qword_1EB2B7690;
  if (!qword_1EB2B7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7690);
  }

  return result;
}

uint64_t LEToolSorterResponse.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v23 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B7698);
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B76A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - v11;
  v13 = a1[3];
  v29 = a1;
  sub_1A7CC9878(a1, v13);
  sub_1A7DBAD74();
  sub_1A7E23250();
  if (!v2)
  {
    v14 = v24;
    v15 = sub_1A7E22F70();
    v16 = (2 * *(v15 + 16)) | 1;
    v25 = v15;
    v26 = v15 + 32;
    v27 = 0;
    v28 = v16;
    if ((sub_1A7CDB53C() & 1) != 0 || v27 != v28 >> 1)
    {
      v17 = sub_1A7E22BD0();
      swift_allocError();
      v18 = v8;
      v20 = v19;
      sub_1A7CC7FFC(&qword_1EB2B4EC8);
      *v20 = &type metadata for LEToolSorterResponse;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v17 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v17);
      swift_willThrow();
      (*(v9 + 8))(v12, v18);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1A7DBADC8();
      sub_1A7E22E70();
      v22 = sub_1A7E22F00();
      (*(v14 + 8))(v7, v4);
      (*(v9 + 8))(v12, v8);
      swift_unknownObjectRelease();
      *v23 = v22 & 1;
    }
  }

  return sub_1A7B0CD6C(v29);
}

unint64_t sub_1A7DBB1F0()
{
  result = qword_1EB2B76A8;
  if (!qword_1EB2B76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76A8);
  }

  return result;
}

unint64_t sub_1A7DBB248()
{
  result = qword_1EB2B76B0;
  if (!qword_1EB2B76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76B0);
  }

  return result;
}

unint64_t sub_1A7DBB2A0()
{
  result = qword_1EB2B76B8;
  if (!qword_1EB2B76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76B8);
  }

  return result;
}

unint64_t sub_1A7DBB2F8()
{
  result = qword_1EB2B76C0;
  if (!qword_1EB2B76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76C0);
  }

  return result;
}

unint64_t sub_1A7DBB350()
{
  result = qword_1EB2B76C8;
  if (!qword_1EB2B76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76C8);
  }

  return result;
}

unint64_t sub_1A7DBB3A8()
{
  result = qword_1EB2B76D0;
  if (!qword_1EB2B76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76D0);
  }

  return result;
}

void static IDSTransportThread.add(block:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v6[4] = sub_1A7DBB4FC;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A7DBB524;
  v6[3] = &unk_1F1AB7738;
  v5 = _Block_copy(v6);

  IDSTransportThreadAddBlock(v5);
  _Block_release(v5);
}

uint64_t sub_1A7DBB524(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1A7DBB578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A7DBB5A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1A7CCEBD4(0, v1, 0);
  v2 = v50;
  v4 = v3 + 64;
  result = sub_1A7E22AD0();
  if (result < 0 || (v6 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v37 = v3 + 72;
    v38 = v1;
    v7 = *(v3 + 36);
    v8 = 1;
    v39 = v3 + 64;
    while (1)
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      v40 = v8;
      v41 = v7;
      v10 = *(v3 + 56) + 104 * v6;
      v11 = *(v10 + 8);
      v51 = *v10;
      v12 = *(v10 + 40);
      v13 = *(v10 + 56);
      v14 = *(v10 + 24);
      *&v44[15] = *(v10 + 71);
      v43[1] = v12;
      *v44 = v13;
      v43[0] = v14;
      v15 = *(v10 + 80);
      v16 = *(v10 + 88);
      v17 = *(v10 + 96);
      v18 = *(v10 + 24);
      v19 = *(v10 + 40);
      v20 = *(v10 + 56);
      *&v49[15] = *(v10 + 71);
      v48 = v19;
      *v49 = v20;
      v47 = v18;

      sub_1A7CEB448(v43, v42);
      v50 = v2;
      v21 = v3;
      v23 = *(v2 + 16);
      v22 = *(v2 + 24);

      if (v23 >= v22 >> 1)
      {
        result = sub_1A7CCEBD4((v22 > 1), v23 + 1, 1);
        v2 = v50;
      }

      *(v2 + 16) = v23 + 1;
      v24 = v2 + 96 * v23;
      *(v24 + 32) = v51;
      *(v24 + 40) = v11;
      v25 = v47;
      v26 = v48;
      v27 = *v49;
      *(v24 + 95) = *&v49[15];
      *(v24 + 64) = v26;
      *(v24 + 80) = v27;
      *(v24 + 48) = v25;
      v28 = v46;
      *(v24 + 99) = v45;
      *(v24 + 103) = v28;
      *(v24 + 104) = v15;
      *(v24 + 112) = v16;
      *(v24 + 120) = v17;
      v29 = 1 << *(v21 + 32);
      if (v6 >= v29)
      {
        goto LABEL_25;
      }

      v3 = v21;
      v4 = v39;
      v30 = *(v39 + 8 * v9);
      if ((v30 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (v41 != *(v3 + 36))
      {
        goto LABEL_27;
      }

      v31 = v30 & (-2 << (v6 & 0x3F));
      if (v31)
      {
        v6 = __clz(__rbit64(v31)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v9 << 6;
        v33 = v9 + 1;
        v34 = (v37 + 8 * v9);
        while (v33 < (v29 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_1A7CD29F0(v6, v41, 0);
            v6 = __clz(__rbit64(v35)) + v32;
            goto LABEL_18;
          }
        }

        result = sub_1A7CD29F0(v6, v41, 0);
        v6 = v29;
      }

LABEL_18:
      if (v40 == v38)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = *(v3 + 36);
        v8 = v40 + 1;
        if (v6 < 1 << *(v3 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
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