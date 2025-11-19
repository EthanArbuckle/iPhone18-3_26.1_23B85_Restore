void sub_1D2394404(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for Prompt(0);
  v112 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v100 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v100 - v16;
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1D269163C(a4);
    }

    v118 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1D2395BF8(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D269163C(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_1D26915B0(a4 - 1);
        v95 = v118;
        a4 = *(v118 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v108 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v112 + 72);
      v5 = *v114 + v23 * v22;
      v110 = *v114;
      v24 = v110;
      sub_1D2398BB0(v110 + v23 * v22, v17, type metadata accessor for Prompt);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v116;
      sub_1D2398BB0(v25, v116, type metadata accessor for Prompt);
      LODWORD(v111) = sub_1D2871748();
      sub_1D2398B50(v27, type metadata accessor for Prompt);
      sub_1D2398B50(v17, type metadata accessor for Prompt);
      v102 = v26;
      v28 = v26 + 2;
      v113 = v23;
      v29 = v110 + v23 * (v26 + 2);
      while (v18 != v28)
      {
        sub_1D2398BB0(v29, v17, type metadata accessor for Prompt);
        v30 = v116;
        sub_1D2398BB0(v5, v116, type metadata accessor for Prompt);
        v31 = sub_1D2871748() & 1;
        sub_1D2398B50(v30, type metadata accessor for Prompt);
        sub_1D2398B50(v17, type metadata accessor for Prompt);
        ++v28;
        v29 += v113;
        v5 += v113;
        if ((v111 & 1) != v31)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v111)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18;
          v34 = v18 * v113;
          v111 = v18;
          v35 = v102;
          v36 = v102;
          v37 = v102 * v113;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_1D2398AE8(v38 + v37, v107, type metadata accessor for Prompt);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D2398AE8(v107, v38 + v32, type metadata accessor for Prompt);
            }

            ++v35;
            v32 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v35 < v33);
          v6 = v101;
          a4 = v103;
          v21 = v36;
          v18 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v18 < v39)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v21 + a4;
        }

        if (v40 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v40)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v108;
    }

    else
    {
      v20 = sub_1D2691650(0, *(v108 + 2) + 1, 1, v108);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1D2691650((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v19;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1D2395BF8(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D269163C(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v82;
        sub_1D26915B0(v44);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    a4 = v103;
    if (v19 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = v18;
  v86 = v21;
  v87 = *v114;
  v88 = *(v112 + 72);
  v89 = *v114 + v88 * (v18 - 1);
  v90 = -v88;
  v102 = v86;
  v91 = v86 - v18;
  v111 = v85;
  v105 = v88;
  v106 = v40;
  v5 = v87 + v85 * v88;
LABEL_85:
  v109 = v5;
  v110 = v91;
  v113 = v89;
  while (1)
  {
    sub_1D2398BB0(v5, v17, type metadata accessor for Prompt);
    v92 = v116;
    sub_1D2398BB0(v89, v116, type metadata accessor for Prompt);
    a4 = sub_1D2871748();
    sub_1D2398B50(v92, type metadata accessor for Prompt);
    sub_1D2398B50(v17, type metadata accessor for Prompt);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v19 = v106;
      v89 = v113 + v105;
      v91 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for Prompt;
    v93 = v115;
    sub_1D2398AE8(v5, v115, type metadata accessor for Prompt);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D2398AE8(v93, v89, type metadata accessor for Prompt);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1D2394D68(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v126 = type metadata accessor for IdentifiedEntity(0);
  v9 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v115 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v107 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
LABEL_99:
      v127 = v102;
      a4 = *(v102 + 2);
      if (a4 >= 2)
      {
        v103 = v9;
        while (*a3)
        {
          v104 = *&v102[16 * a4];
          v105 = v102;
          v9 = *&v102[16 * a4 + 24];
          sub_1D239613C(*a3 + *(v103 + 72) * v104, *a3 + *(v103 + 72) * *&v102[16 * a4 + 16], *a3 + *(v103 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v104)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_1D269163C(v105);
          }

          if (a4 - 2 >= *(v105 + 2))
          {
            goto LABEL_124;
          }

          v106 = &v105[16 * a4];
          *v106 = v104;
          *(v106 + 1) = v9;
          v127 = v105;
          sub_1D26915B0(a4 - 1);
          v102 = v127;
          a4 = *(v127 + 2);
          if (a4 <= 1)
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
    v102 = sub_1D269163C(a4);
    goto LABEL_99;
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v111 = a4;
  v113 = a3;
  v108 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v116 = v19;
    if (v21 >= v17)
    {
      v17 = v21;
    }

    else
    {
      v109 = v6;
      v22 = *a3;
      v23 = *(v9 + 72);
      v5 = *a3 + v23 * v21;
      v24 = v124;
      sub_1D2398BB0(v5, v124, type metadata accessor for IdentifiedEntity);
      v25 = v125;
      sub_1D2398BB0(v22 + v23 * v20, v125, type metadata accessor for IdentifiedEntity);
      v26 = *(v126 + 24);
      v27 = *(v25 + v26) >> 14;
      v119 = *(v24 + v26) >> 14;
      v120 = v27;
      sub_1D2398B50(v25, type metadata accessor for IdentifiedEntity);
      sub_1D2398B50(v24, type metadata accessor for IdentifiedEntity);
      v110 = v20;
      v28 = v20 + 2;
      v121 = v23;
      v29 = v22 + v23 * v28;
      while (v17 != v28)
      {
        LODWORD(v122) = v120 < v119;
        v30 = v124;
        sub_1D2398BB0(v29, v124, type metadata accessor for IdentifiedEntity);
        v31 = v125;
        sub_1D2398BB0(v5, v125, type metadata accessor for IdentifiedEntity);
        v32 = *(v126 + 24);
        v33 = *(v30 + v32);
        v34 = *(v31 + v32) >> 14;
        sub_1D2398B50(v31, type metadata accessor for IdentifiedEntity);
        sub_1D2398B50(v30, type metadata accessor for IdentifiedEntity);
        ++v28;
        v29 += v121;
        v5 += v121;
        if (((v122 ^ (v34 >= v33 >> 14)) & 1) == 0)
        {
          v17 = v28 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v108;
      v6 = v109;
      v20 = v110;
      a4 = v111;
      if (v120 < v119)
      {
        if (v17 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v17)
        {
          v35 = v121 * (v17 - 1);
          v36 = v17 * v121;
          v120 = v17;
          v37 = v17;
          v38 = v110;
          v39 = v110 * v121;
          do
          {
            if (v38 != --v37)
            {
              v40 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v5 = v40 + v39;
              sub_1D2398AE8(v40 + v39, v115, type metadata accessor for IdentifiedEntity);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D2398AE8(v115, v40 + v35, type metadata accessor for IdentifiedEntity);
            }

            ++v38;
            v35 -= v121;
            v36 -= v121;
            v39 += v121;
          }

          while (v38 < v37);
          a3 = v113;
          v9 = v108;
          v20 = v110;
          a4 = v111;
          v17 = v120;
        }
      }
    }

    v41 = a3[1];
    if (v17 >= v41)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v17, v20))
    {
      goto LABEL_126;
    }

    if (v17 - v20 >= a4)
    {
LABEL_32:
      v43 = v17;
      if (v17 < v20)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, a4))
    {
      goto LABEL_128;
    }

    if ((v20 + a4) >= v41)
    {
      v42 = a3[1];
    }

    else
    {
      v42 = v20 + a4;
    }

    if (v42 < v20)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v17 == v42)
    {
      goto LABEL_32;
    }

    v88 = *a3;
    v89 = *(v9 + 72);
    v90 = *a3 + v89 * (v17 - 1);
    v91 = v20;
    v92 = -v89;
    v109 = v6;
    v110 = v91;
    v93 = v91 - v17;
    v122 = v88;
    v114 = v89;
    v5 = v88 + v17 * v89;
    v94 = v126;
    v117 = v42;
LABEL_86:
    v119 = v93;
    v120 = v17;
    v118 = v5;
    v121 = v90;
    v95 = v90;
LABEL_87:
    a4 = v124;
    sub_1D2398BB0(v5, v124, type metadata accessor for IdentifiedEntity);
    v96 = v125;
    sub_1D2398BB0(v95, v125, type metadata accessor for IdentifiedEntity);
    v97 = *(v94 + 24);
    v98 = *(a4 + v97);
    v99 = *(v96 + v97) >> 14;
    sub_1D2398B50(v96, type metadata accessor for IdentifiedEntity);
    sub_1D2398B50(a4, type metadata accessor for IdentifiedEntity);
    if (v99 < v98 >> 14)
    {
      break;
    }

    v94 = v126;
LABEL_85:
    v17 = v120 + 1;
    v90 = v121 + v114;
    v93 = v119 - 1;
    v5 = v118 + v114;
    v43 = v117;
    if (v120 + 1 != v117)
    {
      goto LABEL_86;
    }

    v9 = v108;
    v6 = v109;
    a3 = v113;
    v20 = v110;
    if (v117 < v110)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v116;
    }

    else
    {
      v19 = sub_1D2691650(0, *(v116 + 2) + 1, 1, v116);
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v19 = sub_1D2691650((v44 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v45 = &v19[16 * a4];
    *(v45 + 4) = v20;
    *(v45 + 5) = v43;
    v46 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    v117 = v43;
    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v19[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_112;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_113;
          }

          v59 = &v19[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_115;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v63 >= v55)
          {
            v81 = &v19[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_122;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_114;
            }

            v64 = &v19[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_117;
            }

            v70 = &v19[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_121;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v19 + 4);
            v49 = *(v19 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v19[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_116;
          }

          v77 = &v19[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_119;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
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

        v85 = v19;
        v86 = *&v19[16 * a4 + 32];
        v5 = *&v19[16 * v47 + 40];
        sub_1D239613C(*a3 + *(v9 + 72) * v86, *a3 + *(v9 + 72) * *&v19[16 * v47 + 32], *a3 + *(v9 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v86)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1D269163C(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v127 = v85;
        sub_1D26915B0(v47);
        v19 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = a3[1];
    v18 = v117;
    a4 = v111;
    if (v117 >= v17)
    {
      goto LABEL_96;
    }
  }

  if (v122)
  {
    v100 = v123;
    sub_1D2398AE8(v5, v123, type metadata accessor for IdentifiedEntity);
    v94 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D2398AE8(v100, v95, type metadata accessor for IdentifiedEntity);
    v95 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
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

void sub_1D23956D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for CuratedPrompt();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v36 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_58;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_59;
  }

  v14 = (a2 - a1) / v12;
  v49 = a1;
  v48 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v16;
    if (v16 >= 1)
    {
      v25 = -v12;
      v26 = v24;
      v40 = a1;
      v41 = a4;
      v39 = -v12;
      do
      {
        v37 = v24;
        v27 = a2 + v25;
        v42 = a2;
        v43 = a2 + v25;
        while (1)
        {
          if (a2 <= a1)
          {
            v49 = a2;
            v47 = v37;
            goto LABEL_56;
          }

          v28 = a3;
          v38 = v24;
          a3 += v25;
          v29 = v26 + v25;
          v30 = v26 + v25;
          v31 = v45;
          v32 = v26;
          sub_1D2398BB0(v30, v45, type metadata accessor for CuratedPrompt);
          v33 = v46;
          sub_1D2398BB0(v27, v46, type metadata accessor for CuratedPrompt);
          v34 = *(*(v31 + 48) + 56);
          v35 = *(*(v33 + 48) + 56);
          sub_1D2398B50(v33, type metadata accessor for CuratedPrompt);
          sub_1D2398B50(v31, type metadata accessor for CuratedPrompt);
          if (v34 < v35)
          {
            break;
          }

          v24 = v29;
          if (v28 < v32 || a3 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v43;
            v25 = v39;
            a1 = v40;
          }

          else
          {
            v27 = v43;
            v25 = v39;
            a1 = v40;
            if (v28 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v29;
          a2 = v42;
          if (v29 <= v41)
          {
            goto LABEL_54;
          }
        }

        if (v28 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v28 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v32;
      }

      while (v32 > v41);
    }

LABEL_54:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v15;
    v47 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v42 = a3;
      do
      {
        v18 = v45;
        sub_1D2398BB0(a2, v45, type metadata accessor for CuratedPrompt);
        v19 = a2;
        v20 = v46;
        sub_1D2398BB0(a4, v46, type metadata accessor for CuratedPrompt);
        v21 = *(*(v18 + 48) + 56);
        v22 = *(*(v20 + 48) + 56);
        sub_1D2398B50(v20, type metadata accessor for CuratedPrompt);
        sub_1D2398B50(v18, type metadata accessor for CuratedPrompt);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v42;
            a2 = v19;
          }

          else
          {
            v23 = v42;
            a2 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = a4 + v12;
          a4 += v12;
        }

        else
        {
          a2 = v19 + v12;
          if (a1 < v19 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v42;
          }

          else
          {
            v23 = v42;
            if (a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v12;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v23);
    }
  }

LABEL_56:
  sub_1D239669C(&v49, &v48, &v47, type metadata accessor for CuratedPrompt);
}

void sub_1D2395BF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        v41 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v35;
            goto LABEL_59;
          }

          v36 = v22;
          v28 = a3 + v23;
          v29 = v24 + v23;
          v30 = v42;
          sub_1D2398BB0(v29, v42, type metadata accessor for Prompt);
          v31 = v43;
          sub_1D2398BB0(v26, v43, type metadata accessor for Prompt);
          v32 = sub_1D2871748();
          sub_1D2398B50(v31, type metadata accessor for Prompt);
          sub_1D2398B50(v30, type metadata accessor for Prompt);
          if (v32)
          {
            break;
          }

          v22 = v29;
          if (a3 < v24 || v28 >= v24)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v33 = a3 == v24;
            a3 = v28;
            a1 = v38;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          v25 = v40;
          v27 = v29 > v39;
          v26 = v41;
          v23 = v37;
          if (!v27)
          {
            a2 = v40;
            goto LABEL_58;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          v33 = a3 == v40;
          a3 = v28;
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_58:
    v47 = a2;
    v45 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = a3;
        v19 = v42;
        sub_1D2398BB0(a2, v42, type metadata accessor for Prompt);
        v20 = v43;
        sub_1D2398BB0(a4, v43, type metadata accessor for Prompt);
        v21 = sub_1D2871748();
        sub_1D2398B50(v20, type metadata accessor for Prompt);
        sub_1D2398B50(v19, type metadata accessor for Prompt);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  sub_1D239669C(&v47, &v46, &v45, type metadata accessor for Prompt);
}

void sub_1D239613C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for IdentifiedEntity(0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v40 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v53 = a1;
  v52 = a4;
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
      v44 = a4;
      v45 = a1;
      v48 = v8;
      v43 = -v13;
      do
      {
        v41 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v46 = a2;
        v47 = a2 + v26;
        while (1)
        {
          if (v28 <= a1)
          {
            v53 = v28;
            v51 = v41;
            goto LABEL_60;
          }

          v31 = a3;
          v42 = v25;
          a3 += v26;
          v32 = v27 + v26;
          v33 = v49;
          sub_1D2398BB0(v27 + v26, v49, type metadata accessor for IdentifiedEntity);
          v34 = v50;
          sub_1D2398BB0(v29, v50, type metadata accessor for IdentifiedEntity);
          v35 = *(v8 + 24);
          v36 = *(v33 + v35);
          v37 = *(v34 + v35) >> 14;
          sub_1D2398B50(v34, type metadata accessor for IdentifiedEntity);
          sub_1D2398B50(v33, type metadata accessor for IdentifiedEntity);
          if (v37 < v36 >> 14)
          {
            break;
          }

          v25 = v32;
          if (v31 < v27 || a3 >= v27)
          {
            v30 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v29 = v47;
            v8 = v30;
            v26 = v43;
          }

          else
          {
            v29 = v47;
            v8 = v48;
            v26 = v43;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v32;
          a1 = v45;
          v28 = v46;
          if (v32 <= v44)
          {
            a2 = v46;
            goto LABEL_59;
          }
        }

        v38 = v44;
        if (v31 < v46 || a3 >= v46)
        {
          a2 = v47;
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
          v26 = v43;
        }

        else
        {
          v39 = v31 == v46;
          a2 = v47;
          v8 = v48;
          v25 = v42;
          v26 = v43;
          if (!v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v45;
      }

      while (v27 > v38);
    }

LABEL_59:
    v53 = a2;
    v51 = v25;
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

    v47 = a4 + v16;
    v51 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v46 = a3;
      v48 = v8;
      do
      {
        v19 = v49;
        sub_1D2398BB0(a2, v49, type metadata accessor for IdentifiedEntity);
        v20 = v50;
        sub_1D2398BB0(a4, v50, type metadata accessor for IdentifiedEntity);
        v21 = *(v8 + 24);
        v22 = *(v19 + v21);
        v23 = *(v20 + v21) >> 14;
        sub_1D2398B50(v20, type metadata accessor for IdentifiedEntity);
        sub_1D2398B50(v19, type metadata accessor for IdentifiedEntity);
        if (v23 >= v22 >> 14)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            v8 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v24 = v46;
          }

          else
          {
            v24 = v46;
            v8 = v48;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = a4 + v13;
          a4 += v13;
        }

        else if (a1 < a2 || a1 >= a2 + v13)
        {
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v13;
          v24 = v46;
        }

        else
        {
          v24 = v46;
          v8 = v48;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v53 = a1;
      }

      while (a4 < v47 && a2 < v24);
    }
  }

LABEL_60:
  sub_1D239669C(&v53, &v52, &v51, type metadata accessor for IdentifiedEntity);
}

uint64_t sub_1D239669C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1D2396784(uint64_t result)
{
  if (result)
  {
    sub_1D2870F68();

    return sub_1D2870F68();
  }

  return result;
}

uint64_t sub_1D2396824(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v6 = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v10 = sub_1D2879158();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v16[0] = a1;
          v16[1] = v6;
          v9 = v16 + v5;
        }

        else
        {
          v8 = v7;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = sub_1D2879208();
          }

          v9 = (v8 + v5);
        }

        v10 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v14 = (__clz(v10 ^ 0xFF) - 24);
        if (v14 <= 2)
        {
          if (v14 != 1)
          {
            v10 = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
            v11 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v11 = 1;
          goto LABEL_15;
        }

        if (v14 == 3)
        {
          v10 = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
          v11 = 3;
        }

        else
        {
          v10 = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
          v11 = 4;
        }
      }

LABEL_15:
      if ((v10 - 12448) <= 0xFFFFFF9F && v10 != 12540 && v10 != 12316)
      {
        return 0;
      }

      v5 += v11;
      if (v5 >= v2)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1D23969C0@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v229 = a1;
  v213 = a3;
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v210 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_1D28714D8();
  v207 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v208 = &v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v211 = &v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v206 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2872008();
  v215 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v219 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v243 = &v204 - v15;
  v222 = type metadata accessor for CuratedPrompt();
  v225 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v217 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v247 = &v204 - v18;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5B0);
  v214 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v224 = (&v204 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5B8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v245 = &v204 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v238 = (&v204 - v23);
  v24 = type metadata accessor for Prompt(0);
  v228 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v212 = &v204 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v221 = (&v204 - v27);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5C0);
  MEMORY[0x1EEE9AC00](v223);
  v220 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v226 = &v204 - v30;
  MEMORY[0x1EEE9AC00](v31);
  *&v236 = &v204 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v230 = &v204 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v235 = &v204 - v36;
  v240 = a2;
  v37 = 8236;
  if ((a2 & 1) == 0)
  {
    v37 = 0;
  }

  v231 = v37;
  v38 = 0xE200000000000000;
  if ((a2 & 1) == 0)
  {
    v38 = 0xE000000000000000;
  }

  v233 = v38;
  v263 = 0;
  v264 = 0xE000000000000000;
  v261 = 0;
  v262 = 0xE000000000000000;
  v260 = MEMORY[0x1E69E7CC0];
  v39 = [objc_opt_self() _deviceLanguage];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1D28780A8();
    v43 = v42;

    if (v41 == 24938 && v43 == 0xE200000000000000)
    {

      v232 = 1;
    }

    else
    {
      v232 = sub_1D2879618();
    }
  }

  else
  {
    v232 = 0;
  }

  v258 = 0;
  v259 = 0xE000000000000000;
  v44 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  v45 = v229;
  swift_beginAccess();
  v252 = *&v45[v44];
  swift_bridgeObjectRetain_n();
  sub_1D2392F84(&v252);

  v46 = v252;
  v47 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
  swift_beginAccess();
  v252 = *&v45[v47];
  swift_bridgeObjectRetain_n();
  sub_1D2392F84(&v252);
  v234 = 0;
  v48 = v245;

  v216 = v252;
  v49 = v46[2];
  v244 = v12;
  v241 = v49;
  if (!v49)
  {
LABEL_58:
    v218 = 1;
LABEL_60:
    v102 = v229;

    v51 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    swift_beginAccess();
    v3 = v102;
    sub_1D22BD1D0(&v102[v51], &v252, &qword_1EC6D9A58);
    v235 = v254;
    sub_1D22BD238(&v252, &qword_1EC6D9A58);
    if (qword_1ED8A4928 != -1)
    {
      goto LABEL_171;
    }

    goto LABEL_61;
  }

  v50 = 0;
  v242 = v46;
  v51 = v223;
  do
  {
    if (v50 >= v46[2])
    {
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

    v246 = (v50 + 1);
    v227 = (*(v228 + 80) + 32) & ~*(v228 + 80);
    v237 = *(v228 + 72);
    v52 = *(v51 + 48);
    v53 = v235;
    sub_1D2398BB0(v46 + v227 + v237 * v50, v235 + v52, type metadata accessor for Prompt);
    v54 = *(v51 + 48);
    v55 = v230;
    *v230 = v50;
    sub_1D2398AE8(v53 + v52, v55 + v54, type metadata accessor for Prompt);
    v56 = v236;
    v3 = &unk_1D2883938;
    sub_1D22BD1D0(v55, v236, &qword_1EC6DA5C0);
    v57 = v56 + *(v51 + 48);
    v58 = *(v57 + 8);
    v59 = *(v57 + 16);
    sub_1D2870F68();
    sub_1D2398B50(v57, type metadata accessor for Prompt);

    v60 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v60 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (!v60)
    {
      sub_1D22BD238(v55, &qword_1EC6DA5C0);
      goto LABEL_14;
    }

    v61 = v226;
    if ((v232 & 1) == 0 || (sub_1D22BD1D0(v55, v226, &qword_1EC6DA5C0), v62 = v61 + *(v51 + 48), v63 = *(v62 + 40), sub_1D2870F68(), sub_1D2398B50(v62, type metadata accessor for Prompt), v64 = *(v63 + 16), , v64))
    {
      sub_1D22BD1D0(v55, v61, &qword_1EC6DA5C0);
      v65 = v61 + *(v51 + 48);
      v66 = *(v65 + 8);
      v67 = *(v65 + 16);
      sub_1D2870F68();
      sub_1D2398B50(v65, type metadata accessor for Prompt);
      v68 = 0;
      v252 = v66;
      v253 = v67;
      v69 = 0xE000000000000000;
      if (v240)
      {
        goto LABEL_23;
      }

LABEL_22:
      v256 = 2454565;
      v257 = 0xE300000000000000;
      MEMORY[0x1D38A0C50](v66, v67);

      v66 = v256;
      v67 = v257;
      v252 = v256;
      v253 = v257;
      goto LABEL_23;
    }

    v76 = v220;
    sub_1D22BD1D0(v55, v220, &qword_1EC6DA5C0);
    v77 = v76 + *(v51 + 48);
    v66 = *(v77 + 8);
    v67 = *(v77 + 16);
    sub_1D2870F68();
    sub_1D2398B50(v77, type metadata accessor for Prompt);
    v78 = HIBYTE(v67) & 0xF;
    if ((v67 & 0x2000000000000000) == 0)
    {
      v78 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (v78)
    {
      v79 = v234;
      v80 = sub_1D2396824(v66, v67);
      v234 = v79;
      if (v80)
      {
        type metadata accessor for MecabraHiraganaConverter();
        swift_initStaticObject();
        v81 = sub_1D2778C98(v66, v67);
        v61 = v226;
        if (v82)
        {
          v83 = v81;
          v84 = v82;

          v66 = v83;
          v67 = v84;
        }
      }

      else
      {
        v61 = v226;
      }
    }

    v252 = v66;
    v253 = v67;
    sub_1D22BD1D0(v55, v61, &qword_1EC6DA5C0);
    v85 = v61 + *(v51 + 48);
    v68 = *(v85 + 8);
    v69 = *(v85 + 16);
    sub_1D2870F68();
    sub_1D2398B50(v85, type metadata accessor for Prompt);
    if ((v240 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_23:
    v70 = sub_1D2878248();
    if (v246 >= v242[2])
    {
      MEMORY[0x1D38A0C50](v66, v67);
      if ((v232 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v256 = v66;
      v257 = v67;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v231, v233);
      MEMORY[0x1D38A0C50](v256, v257);

      if ((v232 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if ((v68 || v69 != 0xE000000000000000) && (sub_1D2879618() & 1) == 0 && (v258 || v259 != 0xE000000000000000) && (sub_1D2879618() & 1) == 0)
    {
      v256 = v231;
      v257 = v233;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v68, v69);

      v71 = v256;
      v69 = v257;
      goto LABEL_34;
    }

LABEL_33:
    v71 = v68;
LABEL_34:
    MEMORY[0x1D38A0C50](v71, v69);

    v3 = &qword_1EC6DA5C0;
    sub_1D22BD1D0(v55, v61, &qword_1EC6DA5C0);
    v51 = v223;
    v72 = v61 + *(v223 + 48);
    v73 = *(v72 + 40);
    sub_1D2870F68();
    sub_1D2398B50(v72, type metadata accessor for Prompt);
    v74 = v234;
    v75 = sub_1D238E0AC(v73, &v252, v70, &v263);
    v234 = v74;

    sub_1D274DDE8(v75);
    sub_1D22BD238(v55, &qword_1EC6DA5C0);

    v48 = v245;
    v46 = v242;
LABEL_14:
    v50 = v246;
  }

  while (v241 != v246);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v86 = sub_1D23CD3FC();
  v51 = v239;
  if ((v86 & 1) == 0)
  {
    v218 = 0;
    goto LABEL_60;
  }

  v87 = 0;
  v246 = *MEMORY[0x1E69779C8];
  v88 = v46 + v227;
  v236 = xmmword_1D287F500;
  while (v87 < v46[2])
  {
    v3 = v51;
    v89 = v221;
    sub_1D2398BB0(v88, v221, type metadata accessor for Prompt);
    v90 = v89;
    v91 = *(v89 + 8);
    v92 = *(v90 + 16);
    if ((v92 & 0x2000000000000000) != 0)
    {
      v93 = HIBYTE(v92) & 0xF;
    }

    else
    {
      v93 = v91 & 0xFFFFFFFFFFFFLL;
    }

    if (v93)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5C8);
      v94 = swift_allocObject();
      *(v94 + 16) = v236;
      v95 = v246;
      *(v94 + 32) = v246;
      v96 = objc_allocWithZone(MEMORY[0x1E6977A80]);
      type metadata accessor for NLTagScheme(0);
      v3 = v95;
      v97 = sub_1D28783C8();

      v98 = [v96 initWithTagSchemes_];

      v99 = sub_1D2878068();
      [v98 setString_];

      LOBYTE(v252) = 0;
      MEMORY[0x1EEE9AC00](v100);
      sub_1D2878D48();

      v51 = v239;
      v48 = v245;
      v101 = v252;
      sub_1D2398B50(v221, type metadata accessor for Prompt);
      if (v101)
      {
        v218 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      sub_1D2398B50(v90, type metadata accessor for Prompt);
      v51 = v3;
    }

    ++v87;
    v88 += v237;
    v46 = v242;
    if (v241 == v87)
    {
      goto LABEL_58;
    }
  }

LABEL_170:
  __break(1u);
LABEL_171:
  swift_once();
LABEL_61:
  v103 = sub_1D23CD504();
  v104 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  v205 = v51;
  if (v103)
  {
    swift_beginAccess();
    v252 = *&v3[v104];
    swift_bridgeObjectRetain_n();
    v105 = v234;
    sub_1D2392EA0(&v252);
    v234 = v105;
    if (v105)
    {
      goto LABEL_173;
    }

    v106 = v252;
  }

  else
  {
    swift_beginAccess();
    v106 = sub_1D2870F68();
  }

  v227 = v106;
  v107 = v106[2];
  v108 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v109 = 0;
  v230 = (v247 + 48);
  v237 = (v214 + 56);
  *&v236 = v214 + 48;
  v110 = (v215 + 16);
  v241 = v108;
  v242 = (v215 + 8);
  v51 = v239;
  v220 = v247 + 8;
  v221 = (v215 + 16);
  v223 = v107;
  while (2)
  {
    if (v109 == v107)
    {
      v113 = 1;
      v114 = v107;
    }

    else
    {
      if ((v109 & 0x8000000000000000) != 0)
      {
        goto LABEL_168;
      }

      if (v109 >= *(v227 + 16))
      {
        goto LABEL_169;
      }

      v115 = (v109 + 1);
      v116 = v224;
      v117 = v227 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v109;
      v118 = *(v51 + 48);
      *v224 = v109;
      sub_1D2398BB0(v117, v116 + v118, type metadata accessor for CuratedPrompt);
      sub_1D22EC9BC(v116, v48, &qword_1EC6DA5B0);
      v113 = 0;
      v114 = v115;
    }

    (*v237)(v48, v113, 1, v51);
    v119 = v238;
    sub_1D22EC9BC(v48, v238, &qword_1EC6DA5B8);
    if ((*v236)(v119, 1, v51) != 1)
    {
      v246 = v114;
      v120 = *v119;
      sub_1D2398AE8(v119 + *(v51 + 48), v247, type metadata accessor for CuratedPrompt);
      v121 = *v110;
      v112 = v3;
      v122 = &v3[v108];
      v123 = v243;
      v124 = v244;
      (*v110)(v243, v122, v244);
      v125 = sub_1D2871F78();
      v126 = *v242;
      (*v242)(v123, v124);
      if ((v125 & 1) != 0 || !v235 || (*(*v230 + 66) & 1) == 0)
      {
        if (v240)
        {
          v226 = v120;
          v127 = v241;
          v128 = v243;
          v129 = v244;
          v121(v243, &v112[v241], v244);
          v130 = sub_1D2871F78();
          v126(v128, v129);
          if (v130)
          {
            v131 = *(v247 + 32);
            v132 = *(v247 + 40);
            v133 = v263 & 0xFFFFFFFFFFFFLL;
            if ((v264 & 0x2000000000000000) != 0)
            {
              v133 = HIBYTE(v264) & 0xF;
            }

            if (v133)
            {
              v252 = v231;
              v253 = v233;
              sub_1D2870F68();
              sub_1D2870F68();
              MEMORY[0x1D38A0C50](v131, v132);

              v131 = v252;
              v132 = v253;
            }

            else
            {
              sub_1D2870F68();
            }

            v107 = v223;
            v110 = v221;
            goto LABEL_66;
          }

          v135 = (v218 & sub_1D23CD60C()) == 1 && (v235 | v226) == 0;
          v121(v128, &v112[v127], v129);
          v226 = sub_1D284A4B0(v128, v135);
          v136 = v112;
          v132 = v137;
          v126(v128, v129);
          v121(v128, &v136[v127], v129);
          v138 = v219;
          sub_1D2871FC8();
          LOBYTE(v136) = MEMORY[0x1D389AA00](v128, v138);
          v126(v138, v129);
          v126(v128, v129);
          if (v136)
          {
            v139 = v263 & 0xFFFFFFFFFFFFLL;
            if ((v264 & 0x2000000000000000) != 0)
            {
              v139 = HIBYTE(v264) & 0xF;
            }

            v107 = v223;
            if (v139)
            {
              goto LABEL_95;
            }

            v110 = v221;
            v111 = v226;
          }

          else
          {
            v143 = v261 & 0xFFFFFFFFFFFFLL;
            if ((v262 & 0x2000000000000000) != 0)
            {
              v143 = HIBYTE(v262) & 0xF;
            }

            v107 = v223;
            if (v143)
            {
LABEL_95:
              v252 = v231;
              v253 = v233;
              sub_1D2870F68();
              MEMORY[0x1D38A0C50](v226, v132);

              v111 = v252;
              v132 = v253;
              v110 = v221;
            }

            else
            {
              v110 = v221;
              v111 = v226;
            }
          }
        }

        else
        {
          if (v230[*(v222 + 92)] == 255)
          {
            v134 = 101;
          }

          else if (*(v220 + *(v222 + 48)))
          {
            v134 = 109;
          }

          else
          {
            v134 = 103;
          }

          v252 = 37;
          v253 = 0xE100000000000000;
          MEMORY[0x1D38A0C50](v134, 0xE100000000000000);

          MEMORY[0x1D38A0C50](37, 0xE100000000000000);
          v140 = *(v247 + 16);
          v141 = *(v247 + 24);
          sub_1D2870F68();
          MEMORY[0x1D38A0C50](v140, v141);

          v131 = v252;
          v132 = v253;
          v142 = v261 & 0xFFFFFFFFFFFFLL;
          if ((v262 & 0x2000000000000000) != 0)
          {
            v142 = HIBYTE(v262) & 0xF;
          }

          if (v142)
          {
            v252 = v231;
            v253 = v233;
            sub_1D2870F68();
            MEMORY[0x1D38A0C50](v131, v132);

            v131 = v252;
            v132 = v253;
          }

LABEL_66:
          v111 = v131;
        }

        MEMORY[0x1D38A0C50](v111, v132);

        v112 = v229;
      }

      v3 = v112;
      sub_1D2398B50(v247, type metadata accessor for CuratedPrompt);
      v51 = v239;
      v48 = v245;
      v109 = v246;
      v108 = v241;
      continue;
    }

    break;
  }

  if ((v240 & 1) == 0)
  {

    goto LABEL_162;
  }

  v144 = v3;
  v145 = v243;
  v146 = v244;
  (*v110)(v243, &v3[v108], v244);
  v147 = sub_1D2871F78();
  (*v242)(v145, v146);
  if ((v147 & 1) == 0)
  {

    goto LABEL_153;
  }

  v148 = v216[2];
  if (!v148)
  {

LABEL_145:
    v169 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedCuratedPrompts;
    swift_beginAccess();
    v170 = *&v144[v169];
    v171 = *(v170 + 16);
    if (v171)
    {
      v172 = v170 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
      v173 = *(v225 + 72);
      v247 = *&v144[v169];
      sub_1D2870F68();
      do
      {
        v174 = v217;
        sub_1D2398BB0(v172, v217, type metadata accessor for CuratedPrompt);
        v175 = *(v174 + 16);
        v176 = *(v174 + 24);
        v252 = 0x2065766F6D6572;
        v253 = 0xE700000000000000;
        MEMORY[0x1D38A0C50](v175, v176);
        v178 = v252;
        v177 = v253;
        sub_1D2398B50(v174, type metadata accessor for CuratedPrompt);
        v179 = v263 & 0xFFFFFFFFFFFFLL;
        if ((v264 & 0x2000000000000000) != 0)
        {
          v179 = HIBYTE(v264) & 0xF;
        }

        if (v179)
        {
          v252 = v231;
          v253 = v233;
          sub_1D2870F68();
          MEMORY[0x1D38A0C50](v178, v177);

          v178 = v252;
          v177 = v253;
        }

        MEMORY[0x1D38A0C50](v178, v177);

        v172 += v173;
        --v171;
      }

      while (v171);
    }

LABEL_153:

    if (v235)
    {
      sub_1D2877FE8();
      if (qword_1ED89E0F0 != -1)
      {
        swift_once();
      }

      v180 = v209;
      v181 = __swift_project_value_buffer(v209, qword_1ED8B0060);
      (*(v207 + 16))(v208, v181, v180);
      sub_1D28718C8();
      sub_1D2871508();
      v182 = sub_1D28780F8();
      v184 = v183;
      sub_1D22BD1D0(&v144[v205], &v252, &qword_1EC6D9A58);
      v185 = v254;
      if (v254)
      {
        v186 = v255;
        __swift_project_boxed_opaque_existential_1(&v252, v254);
        v187 = (*(*(v186 + 8) + 24))(v185);
        v189 = v188;
        __swift_destroy_boxed_opaque_existential_0(&v252);
        v190 = HIBYTE(v189) & 0xF;
        if ((v189 & 0x2000000000000000) == 0)
        {
          v190 = v187 & 0xFFFFFFFFFFFFLL;
        }

        if (v190 && !*(v260 + 16))
        {

          v246 = v189;
          v247 = v187;
          goto LABEL_165;
        }
      }

      else
      {
        sub_1D22BD238(&v252, &qword_1EC6D9A58);
      }

      v246 = v184;
      v247 = v182;
LABEL_165:
      v252 = v263;
      v253 = v264;
      v250 = 12369903;
      v251 = 0xA300000000000000;
      v248 = 0;
      v249 = 0xE000000000000000;
      sub_1D22BD06C();
      v191 = sub_1D2878FA8();
      v193 = v192;
      sub_1D2870F68();

      v252 = v258;
      v253 = v259;
      v250 = 12369903;
      v251 = 0xA300000000000000;
      v248 = 0;
      v249 = 0xE000000000000000;
      v194 = sub_1D2878FA8();
      v196 = v195;

      v198 = v261;
      v199 = v262;
      v200 = v260;
      v201 = v213;
      *v213 = v191;
      v201[1] = v193;
      v201[2] = v198;
      v201[3] = v199;
      v201[4] = v194;
      v201[5] = v196;
      v202 = v227;
      v201[6] = v200;
      v201[7] = v202;
      v203 = v246;
      v201[8] = v247;
      v201[9] = v203;
      return result;
    }

LABEL_162:
    v246 = 0;
    v247 = 0;
    goto LABEL_165;
  }

  v149 = v216 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
  v247 = *(v228 + 72);
  v150 = v212;
  while (2)
  {
    sub_1D2398BB0(v149, v150, type metadata accessor for Prompt);
    v152 = v150[1];
    v151 = v150[2];
    v153 = HIBYTE(v151) & 0xF;
    if ((v151 & 0x2000000000000000) == 0)
    {
      v153 = v152 & 0xFFFFFFFFFFFFLL;
    }

    if (!v153)
    {
      goto LABEL_114;
    }

    if ((v232 & 1) == 0 || *(v150[5] + 16))
    {
      sub_1D2870F68();
      v154 = 0;
      v155 = 0xE000000000000000;
      goto LABEL_121;
    }

    if ((sub_1D2396824(v150[1], v150[2]) & 1) == 0)
    {
      sub_1D2870F68();
      v150 = v212;
      goto LABEL_137;
    }

    type metadata accessor for MecabraHiraganaConverter();
    swift_initStaticObject();
    v162 = sub_1D2396824(v152, v151);
    sub_1D2870F68();
    if ((v162 & 1) == 0)
    {
      sub_1D2870F68();
      v154 = v152;
      v155 = v151;
      v150 = v212;
LABEL_121:
      v252 = 0x2065766F6D6572;
      v253 = 0xE700000000000000;
      MEMORY[0x1D38A0C50](v152, v151);

      v157 = v252;
      v156 = v253;
      v158 = v263 & 0xFFFFFFFFFFFFLL;
      if ((v264 & 0x2000000000000000) != 0)
      {
        v158 = HIBYTE(v264) & 0xF;
      }

      if (v158)
      {
        v252 = v231;
        v253 = v233;
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v157, v156);

        v157 = v252;
        v156 = v253;
      }

      MEMORY[0x1D38A0C50](v157, v156);

      v252 = 0x2065766F6D6572;
      v253 = 0xE700000000000000;
      MEMORY[0x1D38A0C50](v154, v155);

      v160 = v252;
      v159 = v253;
      v161 = v258 & 0xFFFFFFFFFFFFLL;
      if ((v259 & 0x2000000000000000) != 0)
      {
        v161 = HIBYTE(v259) & 0xF;
      }

      if (v161)
      {
        v252 = v231;
        v253 = v233;
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v160, v159);

        v160 = v252;
        v159 = v253;
      }

      MEMORY[0x1D38A0C50](v160, v159);

LABEL_114:
      sub_1D2398B50(v150, type metadata accessor for Prompt);
      v149 += v247;
      if (!--v148)
      {

        v144 = v229;
        goto LABEL_145;
      }

      continue;
    }

    break;
  }

  v163 = sub_1D2778EAC();
  v150 = v212;
  if (!v163)
  {
LABEL_137:
    sub_1D2870F68();
    v154 = v152;
    v155 = v151;
    goto LABEL_121;
  }

  v164 = sub_1D2778DF4();
  if (!v164)
  {
LABEL_140:

    goto LABEL_137;
  }

  if (!*(v164 + 16))
  {

    goto LABEL_140;
  }

  Surface = MecabraCandidateGetSurface();
  if (Surface)
  {
    v166 = Surface;
    v167 = sub_1D28780A8();
    v245 = v168;
    v246 = v167;

    v154 = v152;
    v155 = v151;
    v151 = v245;
    v152 = v246;
    v150 = v212;
    goto LABEL_121;
  }

  __break(1u);
LABEL_173:

  __break(1u);
  return result;
}

unint64_t sub_1D2398698()
{
  result = qword_1EC6DA5D8;
  if (!qword_1EC6DA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA5D8);
  }

  return result;
}

BOOL sub_1D23986EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  sub_1D22BD1D0(a1, v8, &qword_1EC6E33D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D22BD238(v8, &qword_1EC6E33D0);
    goto LABEL_3;
  }

  sub_1D22EC9BC(v8, v12, &qword_1EC6DA4A8);
  v16 = v9[24];
  v17 = type metadata accessor for ImageGenerationPerson.SkinTone();
  if ((*(*(v17 - 8) + 48))(&v12[v16], 1, v17) == 1 || (v18 = sub_1D2871818(), (*(*(v18 - 8) + 48))(v12, 1, v18) != 1) || (v19 = v9[12], v20 = type metadata accessor for PlaygroundImage(), (*(*(v20 - 8) + 48))(&v12[v19], 1, v20) != 1) || v12[v9[20]] != 4)
  {
    sub_1D22BD238(v12, &qword_1EC6DA4A8);
    return 1;
  }

  v21 = *&v12[v9[28]];
  sub_1D2396784(v21);
  sub_1D22BD238(v12, &qword_1EC6DA4A8);
  if (v21)
  {
    sub_1D238D058(v21);
    return 1;
  }

LABEL_3:
  v13 = type metadata accessor for PlaygroundImage();
  v14 = 1;
  if ((*(*(v13 - 8) + 48))(a2, 1, v13) == 1)
  {
    v15 = *(sub_1D279F58C(a3) + 16);

    return v15 != 0;
  }

  return v14;
}

uint64_t sub_1D2398A30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2398A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2398AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2398B50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2398BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D2398C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D2398C7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D2398CE0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2398D44()
{
  v1 = *(v0 + 16);
  v2 = sub_1D2878068();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA498);
    sub_1D28783D8();
  }

  return 0;
}

void sub_1D2398E1C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1D2878068();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA468);
    v6 = sub_1D28783C8();
    v7 = [v5 arrayByAddingObject_];

    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D287F500;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA498);
    *(v8 + 32) = a1;
    sub_1D2399058();
    sub_1D2870F68();
    v7 = MEMORY[0x1D38A1770](v8);
  }

  v10 = v7;
  v9 = sub_1D2878068();
  [v3 setObject:v10 forKey:v9 cost:{objc_msgSend(v10, sel_count)}];
}

uint64_t ImageGeneration.ImageFromRecipeCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D2399058()
{
  result = qword_1ED89CC98;
  if (!qword_1ED89CC98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CC98);
  }

  return result;
}

id sub_1D23990B8()
{
  v0 = objc_allocWithZone(type metadata accessor for OBKFacePickerViewController());
  v1 = sub_1D2870F78();
  v2 = sub_1D24FF308(v1);
  v3 = [objc_allocWithZone(MEMORY[0x1E69B7D40]) initWithRootViewController_];

  return v3;
}

uint64_t sub_1D2399174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2399264();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D23991D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2399264();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D239923C()
{
  sub_1D2399264();
  sub_1D2876218();
  __break(1u);
}

unint64_t sub_1D2399264()
{
  result = qword_1EC6DA610;
  if (!qword_1EC6DA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA610);
  }

  return result;
}

uint64_t GeneratedImage.getPlaygroundImage(hasAlpha:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v3 = sub_1D2873758();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-v8];
  sub_1D2872A38();
  v10 = sub_1D28729F8();
  v11 = type metadata accessor for PlaygroundImage();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = (a2 + v11[9]);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = a2 + v11[10];
  *v13 = xmmword_1D28809A0;
  v14 = v11[11];
  v15 = sub_1D2873AA8();
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  (*(v4 + 16))(v6, v9, v3);
  v16 = (*(v4 + 88))(v6, v3);
  if (v16 == *MEMORY[0x1E69E0110])
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E69E0118])
  {
    v17 = 1;
  }

  else
  {
    if (v16 != *MEMORY[0x1E69E0108])
    {

      sub_1D2399614();
      swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 2;
      swift_willThrow();
      v20 = *(v4 + 8);
      v20(v9, v3);
      v20(v6, v3);
      sub_1D22D6D4C(*v13, *(v13 + 8));
      return sub_1D22BD238(a2 + v14, &qword_1EC6DAE70);
    }

    v17 = 3;
  }

  (*(v4 + 96))(v6, v3);
  *a2 = *v6;
  *(a2 + 8) = v17;
  *(a2 + 24) = 1;
  *(a2 + 16) = v10;
  *(a2 + v11[12]) = v22 & 1;
  sub_1D2871808();
  return (*(v4 + 8))(v9, v3);
}

unint64_t sub_1D2399614()
{
  result = qword_1EC6D8A30;
  if (!qword_1EC6D8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8A30);
  }

  return result;
}

uint64_t GeneratedImage.promptTokenCount.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA618);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  sub_1D2872A18();
  v3 = sub_1D2873648();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1D22BD238(v2, &qword_1EC6DA618);
    return 0;
  }

  else
  {
    v6 = sub_1D2873638();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t sub_1D23997DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA618);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  sub_1D2872A18();
  v3 = sub_1D2873648();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1D22BD238(v2, &qword_1EC6DA618);
    return 0;
  }

  else
  {
    v6 = sub_1D2873638();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t GenerativePlayground.PreviewRepresentation.getPlaygroundImage(hasAlpha:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2872A48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  GeneratedImage.getPlaygroundImage(hasAlpha:)(a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t GenerativePlayground.PreviewRepresentation.diffusionModelSpecification.getter()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  v4 = sub_1D2872A28();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t GenerativePlayground.PreviewRepresentation.prompt.getter()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  v4 = _s16VisualGeneration14GeneratedImageV0D18PlaygroundInternalE6promptSSSgvg_0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t GenerativePlayground.PreviewRepresentation.promptTokenCount.getter()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA618);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D2872E08();
  sub_1D2872A18();
  (*(v1 + 8))(v3, v0);
  v7 = sub_1D2873648();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D22BD238(v6, &qword_1EC6DA618);
    return 0;
  }

  else
  {
    v10 = sub_1D2873638();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

uint64_t sub_1D2399D88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2872A48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  GeneratedImage.getPlaygroundImage(hasAlpha:)(0, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D2399E78@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2872A48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  GeneratedImage.getPlaygroundImage(hasAlpha:)(a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D2399F74()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  v4 = sub_1D2872A28();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D239A048()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  v4 = _s16VisualGeneration14GeneratedImageV0D18PlaygroundInternalE6promptSSSgvg_0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D239A12C()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA618);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D2872E08();
  sub_1D2872A18();
  (*(v1 + 8))(v3, v0);
  v7 = sub_1D2873648();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D22BD238(v6, &qword_1EC6DA618);
    return 0;
  }

  else
  {
    v10 = sub_1D2873638();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

uint64_t sub_1D239A330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ArchivedGeneratedImage()
{
  result = qword_1EC6DA620;
  if (!qword_1EC6DA620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D239A4DC()
{
  type metadata accessor for PlaygroundImage();
  if (v0 <= 0x3F)
  {
    sub_1D239A560();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D239A560()
{
  if (!qword_1ED89CF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA630);
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CF80);
    }
  }
}

uint64_t sub_1D239A5E8()
{
  sub_1D239AFB8(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration18RESTImageGenerator_parameters);

  return swift_deallocClassInstance();
}

uint64_t _s18RESTImageGeneratorCMa()
{
  result = qword_1EC6DA638;
  if (!qword_1EC6DA638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D239A6A0()
{
  sub_1D239A73C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D239A73C()
{
  if (!qword_1ED8A5E40)
  {
    type metadata accessor for ImageGeneration.GenerationParameters();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A5E40);
    }
  }
}

uint64_t sub_1D239A798()
{
  sub_1D2878568();
  *(v0 + 16) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239B020, v2, v1);
}

uint64_t sub_1D239A82C()
{
  sub_1D2878568();
  *(v0 + 16) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239A8C0, v2, v1);
}

uint64_t sub_1D239A8C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D239A924(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = *v1;
  sub_1D239AEE0(a1, &v10 - v4, type metadata accessor for ImageGeneration.GenerationParameters);
  v7 = type metadata accessor for ImageGeneration.GenerationParameters();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration18RESTImageGenerator_parameters;
  swift_beginAccess();
  sub_1D239AF48(v5, v6 + v8);
  return swift_endAccess();
}

uint64_t sub_1D239AA3C()
{
  sub_1D2878568();
  *(v0 + 16) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239AAD0, v2, v1);
}

uint64_t sub_1D239AAD0()
{

  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC0];

  return v1(v2);
}

uint64_t sub_1D239AB3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1D2878568();
  v2[4] = sub_1D2878558();
  v4 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239ABD4, v4, v3);
}

uint64_t sub_1D239ABD4()
{
  v1 = v0[3];

  v2 = *(v1 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 28));
  if (*(v2 + 16))
  {
    v3 = v0[2];
    v4 = *(type metadata accessor for PlaygroundImage() - 8);
    sub_1D239AEE0(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3, type metadata accessor for PlaygroundImage);
  }

  else
  {
    sub_1D239AE8C();
    swift_allocError();
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D239AD04()
{
  sub_1D2878568();
  *(v0 + 16) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239B024, v2, v1);
}

uint64_t sub_1D239AD98()
{
  sub_1D2878568();
  *(v0 + 16) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239AE2C, v2, v1);
}

uint64_t sub_1D239AE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D239AE8C()
{
  result = qword_1EC6DA648;
  if (!qword_1EC6DA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA648);
  }

  return result;
}

uint64_t sub_1D239AEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D239AF48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D239AFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D239B028(uint64_t a1, uint64_t a2)
{
  v15 = *(a2 + 32);
  v12 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877308();
  sub_1D2874CA8();
  v13 = *(a2 + 112);
  v12 = *(a2 + 96);
  v14 = *(&v13 + 1);
  sub_1D22BD1D0(&v14, &v10, &qword_1EC6DA720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA710);
  sub_1D2877308();
  if (v11)
  {
    sub_1D2874CB8();
    v4 = floor(v3);
    sub_1D2874CB8();
    *&v10 = v4;
    *(&v10 + 1) = floor(v5);
    LOBYTE(v11) = 0;
    sub_1D2877318();
  }

  sub_1D22BD238(&v12, &qword_1EC6DA710);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  sub_1D2877308();
  sub_1D2877308();
  sub_1D2877308();
  result = sub_1D2877308();
  if (v9)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    sub_1D2877308();
    sub_1D2877308();
    sub_1D2877308();
    sub_1D2877308();
    v7 = sub_1D239B3F0(0, 1);
    v8 = MEMORY[0x1D38A0390](v7, *(a2 + 176), 0.85, 0.25);
    MEMORY[0x1EEE9AC00](v8);
    sub_1D2874BE8();
  }

  return result;
}

void *sub_1D239B3F0(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = *v2;
    v7 = *(v2 + 2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
    return MEMORY[0x1D389FF60](&v5, v3);
  }

  return result;
}

void *sub_1D239B530(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v15 = *(a2 + 96);
  v16 = v3;
  v18 = 0uLL;
  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA710);
  sub_1D2877318();
  v18 = *a2;
  v19 = *(a2 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  MEMORY[0x1D389FF60](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  sub_1D2877308();
  sub_1D2877318();
  v15 = v18;
  *&v16 = v19;
  result = MEMORY[0x1D389FF60](v17, v4);
  if (v17[0] <= *(a2 + 152))
  {
    v6 = swift_allocObject();
    v7 = *(a2 + 144);
    *(v6 + 144) = *(a2 + 128);
    *(v6 + 160) = v7;
    *(v6 + 176) = *(a2 + 160);
    *(v6 + 192) = *(a2 + 176);
    v8 = *(a2 + 80);
    *(v6 + 80) = *(a2 + 64);
    *(v6 + 96) = v8;
    v9 = *(a2 + 112);
    *(v6 + 112) = *(a2 + 96);
    *(v6 + 128) = v9;
    v10 = *(a2 + 16);
    *(v6 + 16) = *a2;
    *(v6 + 32) = v10;
    v11 = *(a2 + 48);
    *(v6 + 48) = *(a2 + 32);
    *(v6 + 64) = v11;
    v12 = *(a2 + 176);
    v13 = sub_1D239D6C0(a2, &v15);
    v14 = MEMORY[0x1D38A0390](v13, v12, 0.85, 0.0);
    MEMORY[0x1EEE9AC00](v14);
    sub_1D2874BE8();
  }

  return result;
}

uint64_t sub_1D239B7B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  sub_1D2877308();
  sub_1D2874468();
  sub_1D2877308();
  sub_1D2874468();
  sub_1D2877308();
  sub_1D239B3F0(0, 1);
  return sub_1D2877318();
}

uint64_t sub_1D239B8C4(uint64_t a1, uint64_t a2)
{
  sub_1D2874478();
  v4 = v3;
  v6 = v5;
  sub_1D2874488();
  v8 = (v4 - v7) * 4.0;
  sub_1D2874488();
  if (hypot(v8, (v6 - v9) * 4.0) <= 170.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
    sub_1D2877308();
    return sub_1D2877318();
  }

  else
  {
    v19 = *(a2 + 72);
    v20 = *(a2 + 88);
    v21 = v20;
    v17 = *(a2 + 72);
    v18 = *(a2 + 88);
    sub_1D22BD1D0(&v21, v16, &qword_1EC6DA718);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
    sub_1D2877308();
    v17 = v19;
    v18 = v20;
    sub_1D2877308();
    v17 = *(a2 + 128);
    v18 = *(a2 + 144);
    sub_1D2877308();
    sub_1D239B3F0(0, 1);
    v11 = v10;
    v13 = v12;
    v14 = sub_1D2877888();
    MEMORY[0x1EEE9AC00](v14);
    sub_1D2874BE8();

    v17 = v19;
    v18 = v20;
    v16[0] = v11;
    v16[1] = v13;
    sub_1D2877318();
    return sub_1D22BD238(&v19, &qword_1EC6DA700);
  }
}

uint64_t sub_1D239BB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v110 = a1;
  v137 = a2;
  v142 = sub_1D2875B48();
  v136 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2874498();
  v121 = *(v5 - 8);
  v122 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v119 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA658);
  v131 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v129 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA660);
  v134 = *(v8 - 8);
  v135 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v140 = &v106 - v9;
  v111 = sub_1D2874CC8();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA668);
  v114 = *(v11 - 8);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v106 - v12;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA670);
  v117 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v106 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA678);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v106 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA680);
  MEMORY[0x1EEE9AC00](v107);
  v19 = &v106 - v18;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA688);
  MEMORY[0x1EEE9AC00](v143);
  v112 = &v106 - v20;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA690);
  v118 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v138 = &v106 - v21;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA698);
  v124 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v139 = &v106 - v22;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6A0);
  v130 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v128 = &v106 - v23;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6A8);
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v106 - v24;
  v149 = *v2;
  v150 = *(v2 + 16);
  v146 = *v2;
  v147 = *(v2 + 16);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  MEMORY[0x1D389FF60](&v144);
  v26 = 1.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B8);
  sub_1D22BB9D8(&qword_1EC6DA6C0, &qword_1EC6DA6B8);
  sub_1D2876D38();
  v27 = swift_allocObject();
  v28 = *(v3 + 144);
  *(v27 + 144) = *(v3 + 128);
  *(v27 + 160) = v28;
  *(v27 + 176) = *(v3 + 160);
  *(v27 + 192) = *(v3 + 176);
  v29 = *(v3 + 80);
  *(v27 + 80) = *(v3 + 64);
  *(v27 + 96) = v29;
  v30 = *(v3 + 112);
  *(v27 + 112) = *(v3 + 96);
  *(v27 + 128) = v30;
  v31 = *(v3 + 16);
  *(v27 + 16) = *v3;
  *(v27 + 32) = v31;
  v32 = *(v3 + 48);
  *(v27 + 48) = *(v3 + 32);
  *(v27 + 64) = v32;
  v33 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6C8) + 36)];
  *v33 = sub_1D22A585C;
  *(v33 + 1) = 0;
  *(v33 + 2) = sub_1D239D6B8;
  *(v33 + 3) = v27;
  v17[*(v15 + 44)] = 0;
  v34 = *(v3 + 24);
  if (v34)
  {
    v144 = v149;
    v145 = v150;
    sub_1D239D6C0(v3, &v146);
    MEMORY[0x1D389FF60](&v146, v25);
    v26 = *&v146;
  }

  else
  {
    sub_1D239D6C0(v3, &v146);
  }

  v106 = v25;
  sub_1D2877AE8();
  v36 = v35;
  v38 = v37;
  sub_1D22EC9BC(v17, v19, &qword_1EC6DA678);
  v39 = &v19[*(v107 + 36)];
  *v39 = v26;
  v39[1] = v26;
  *(v39 + 2) = v36;
  *(v39 + 3) = v38;
  v40 = 0;
  v41 = 0;
  v42 = v116;
  if (v34)
  {
    v146 = *(v3 + 48);
    v147 = *(v3 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
    sub_1D2877308();
    v41 = *(&v144 + 1);
    v40 = v144;
  }

  v43 = v112;
  sub_1D22EC9BC(v19, v112, &qword_1EC6DA680);
  v44 = (v43 + *(v143 + 36));
  *v44 = v40;
  v44[1] = v41;
  v45 = v108;
  sub_1D2874C98();
  v46 = swift_allocObject();
  v47 = *(v3 + 144);
  *(v46 + 144) = *(v3 + 128);
  *(v46 + 160) = v47;
  *(v46 + 176) = *(v3 + 160);
  *(v46 + 192) = *(v3 + 176);
  v48 = *(v3 + 80);
  *(v46 + 80) = *(v3 + 64);
  *(v46 + 96) = v48;
  v49 = *(v3 + 112);
  *(v46 + 112) = *(v3 + 96);
  *(v46 + 128) = v49;
  v50 = *(v3 + 16);
  *(v46 + 16) = *v3;
  *(v46 + 32) = v50;
  v51 = *(v3 + 48);
  *(v46 + 48) = *(v3 + 32);
  *(v46 + 64) = v51;
  sub_1D239D6C0(v3, &v146);
  sub_1D239DA08(&qword_1ED89DE90, MEMORY[0x1E697C080]);
  sub_1D239DA08(&qword_1ED89DE98, MEMORY[0x1E697C068]);
  v52 = v113;
  v53 = v111;
  sub_1D28775B8();

  (*(v109 + 8))(v45, v53);
  v54 = swift_allocObject();
  v55 = *(v3 + 144);
  *(v54 + 144) = *(v3 + 128);
  *(v54 + 160) = v55;
  *(v54 + 176) = *(v3 + 160);
  *(v54 + 192) = *(v3 + 176);
  v56 = *(v3 + 80);
  *(v54 + 80) = *(v3 + 64);
  *(v54 + 96) = v56;
  v57 = *(v3 + 112);
  *(v54 + 112) = *(v3 + 96);
  *(v54 + 128) = v57;
  v58 = *(v3 + 16);
  *(v54 + 16) = *v3;
  *(v54 + 32) = v58;
  v59 = *(v3 + 48);
  *(v54 + 48) = *(v3 + 32);
  *(v54 + 64) = v59;
  sub_1D239D6C0(v3, &v146);
  sub_1D22BB9D8(&qword_1ED89D758, &qword_1EC6DA668);
  v60 = v115;
  sub_1D28775A8();

  (*(v114 + 8))(v52, v60);
  v61 = v120;
  LODWORD(v110) = v34;
  if (v34)
  {
    sub_1D28744D8();
  }

  else
  {
    sub_1D28744E8();
  }

  v62 = sub_1D239D708();
  v63 = sub_1D22BB9D8(&qword_1ED89DED8, &qword_1EC6DA670);
  sub_1D2876B88();
  (*(v117 + 8))(v42, v61);
  sub_1D227A690(v43);
  sub_1D2875E68();
  v64 = v119;
  sub_1D2874458();
  v65 = swift_allocObject();
  v66 = *(v3 + 144);
  *(v65 + 144) = *(v3 + 128);
  *(v65 + 160) = v66;
  *(v65 + 176) = *(v3 + 160);
  *(v65 + 192) = *(v3 + 176);
  v67 = *(v3 + 80);
  *(v65 + 80) = *(v3 + 64);
  *(v65 + 96) = v67;
  v68 = *(v3 + 112);
  *(v65 + 112) = *(v3 + 96);
  *(v65 + 128) = v68;
  v69 = *(v3 + 16);
  *(v65 + 16) = *v3;
  *(v65 + 32) = v69;
  v70 = *(v3 + 48);
  *(v65 + 48) = *(v3 + 32);
  *(v65 + 64) = v70;
  sub_1D239D6C0(v3, &v146);
  sub_1D239DA08(&qword_1ED89E068, MEMORY[0x1E697BEA8]);
  sub_1D239DA08(&qword_1ED89E070, MEMORY[0x1E697BE90]);
  v71 = v129;
  v72 = v122;
  sub_1D28775B8();

  (*(v121 + 8))(v64, v72);
  v73 = swift_allocObject();
  v74 = *(v3 + 144);
  *(v73 + 144) = *(v3 + 128);
  *(v73 + 160) = v74;
  *(v73 + 176) = *(v3 + 160);
  *(v73 + 192) = *(v3 + 176);
  v75 = *(v3 + 80);
  *(v73 + 80) = *(v3 + 64);
  *(v73 + 96) = v75;
  v76 = *(v3 + 112);
  *(v73 + 112) = *(v3 + 96);
  *(v73 + 128) = v76;
  v77 = *(v3 + 16);
  *(v73 + 16) = *v3;
  *(v73 + 32) = v77;
  v78 = *(v3 + 48);
  *(v73 + 48) = *(v3 + 32);
  *(v73 + 64) = v78;
  sub_1D239D6C0(v3, &v146);
  sub_1D22BB9D8(&qword_1ED89D760, &qword_1EC6DA658);
  v79 = v133;
  sub_1D28775A8();

  (*(v131 + 8))(v71, v79);
  if ((v110 & 1) != 0 && (v146 = v149, v147 = v150, MEMORY[0x1D389FF60](&v144, v106), *&v144 > 1.0))
  {
    sub_1D28744D8();
  }

  else
  {
    sub_1D28744E8();
  }

  *&v146 = v143;
  *(&v146 + 1) = v61;
  v147 = v62;
  v148 = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660);
  v82 = v140;
  v83 = v123;
  v84 = v135;
  v85 = v138;
  sub_1D2876B88();
  (*(v134 + 8))(v82, v84);
  (*(v118 + 8))(v85, v83);
  v86 = swift_allocObject();
  v87 = *(v3 + 144);
  *(v86 + 144) = *(v3 + 128);
  *(v86 + 160) = v87;
  *(v86 + 176) = *(v3 + 160);
  *(v86 + 192) = *(v3 + 176);
  v88 = *(v3 + 80);
  *(v86 + 80) = *(v3 + 64);
  *(v86 + 96) = v88;
  v89 = *(v3 + 112);
  *(v86 + 112) = *(v3 + 96);
  *(v86 + 128) = v89;
  v90 = *(v3 + 16);
  *(v86 + 16) = *v3;
  *(v86 + 32) = v90;
  v91 = *(v3 + 48);
  *(v86 + 48) = *(v3 + 32);
  *(v86 + 64) = v91;
  sub_1D239D6C0(v3, &v146);
  v92 = v141;
  sub_1D2875E68();
  *&v146 = v83;
  *(&v146 + 1) = v84;
  v147 = OpaqueTypeConformance2;
  v148 = v81;
  swift_getOpaqueTypeConformance2();
  v94 = v127;
  v93 = v128;
  v95 = v142;
  v96 = v139;
  sub_1D28768F8();

  (*(v136 + 8))(v92, v95);
  (*(v124 + 8))(v96, v94);
  v97 = swift_allocObject();
  v98 = *(v3 + 144);
  *(v97 + 144) = *(v3 + 128);
  *(v97 + 160) = v98;
  *(v97 + 176) = *(v3 + 160);
  *(v97 + 192) = *(v3 + 176);
  v99 = *(v3 + 80);
  *(v97 + 80) = *(v3 + 64);
  *(v97 + 96) = v99;
  v100 = *(v3 + 112);
  *(v97 + 112) = *(v3 + 96);
  *(v97 + 128) = v100;
  v101 = *(v3 + 16);
  *(v97 + 16) = *v3;
  *(v97 + 32) = v101;
  v102 = *(v3 + 48);
  *(v97 + 48) = *(v3 + 32);
  *(v97 + 64) = v102;
  v103 = v126;
  (*(v130 + 32))(v126, v93, v132);
  v104 = (v103 + *(v125 + 36));
  *v104 = 0;
  v104[1] = 0;
  v104[2] = sub_1D239DA60;
  v104[3] = v97;
  sub_1D22EC9BC(v103, v137, &qword_1EC6DA6A8);
  return sub_1D239D6C0(v3, &v146);
}

uint64_t sub_1D239CC80(uint64_t result, double a2, double a3)
{
  if (*(result + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
    sub_1D2877308();
    return sub_1D239CD0C(a2, a3, v5, v6);
  }

  return result;
}

uint64_t sub_1D239CD0C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v28 = *v4;
  v29 = *(v4 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  MEMORY[0x1D389FF60](v27, v10);
  if (v27[0] == *(v4 + 152))
  {
    v11 = *(v4 + 168);
    sub_1D239D1F8(a1, a2, a3, a4, v11);
    v13 = v12;
    v15 = v14;
    v16 = sub_1D2877968();
    MEMORY[0x1EEE9AC00](v16);
    sub_1D2874BE8();

    v28 = *(v4 + 32);
    v27[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
    sub_1D2877318();
    v28 = *(v4 + 72);
    v29 = *(v4 + 88);
    v27[0] = v13;
    v27[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
    return sub_1D2877318();
  }

  else
  {
    v18 = swift_allocObject();
    v19 = *(v5 + 144);
    *(v18 + 144) = *(v5 + 128);
    *(v18 + 160) = v19;
    *(v18 + 176) = *(v5 + 160);
    *(v18 + 192) = *(v5 + 176);
    v20 = *(v5 + 80);
    *(v18 + 80) = *(v5 + 64);
    *(v18 + 96) = v20;
    v21 = *(v5 + 112);
    *(v18 + 112) = *(v5 + 96);
    *(v18 + 128) = v21;
    v22 = *(v5 + 16);
    *(v18 + 16) = *v5;
    *(v18 + 32) = v22;
    v23 = *(v5 + 48);
    *(v18 + 48) = *(v5 + 32);
    *(v18 + 64) = v23;
    v24 = *(v5 + 176);
    v25 = sub_1D239D6C0(v5, &v28);
    v26 = MEMORY[0x1D38A0390](v25, v24, 0.85, 0.0);
    MEMORY[0x1EEE9AC00](v26);
    sub_1D2874BE8();
  }
}

uint64_t sub_1D239CFC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  sub_1D28774F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  sub_1D2877318();
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA710);
  sub_1D2877318();
  return sub_1D2877318();
}

uint64_t sub_1D239D124()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  sub_1D28774F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  return sub_1D2877318();
}

void *sub_1D239D1F8(double a1, double a2, double a3, double a4, double a5)
{
  v10 = *v5;
  v11 = *(v5 + 2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  MEMORY[0x1D389FF60](&v9);
  v10 = *v5;
  v11 = *(v5 + 2);
  MEMORY[0x1D389FF60](&v9, v7);
  return sub_1D239B3F0(*&a5, 0);
}

uint64_t sub_1D239D2EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  sub_1D28774F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  return sub_1D2877318();
}

double sub_1D239D408@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  sub_1D28772F8();
  type metadata accessor for CGSize(0);
  sub_1D28772F8();
  sub_1D28772F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA650);
  sub_1D28772F8();
  sub_1D28772F8();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a3;
  *(a4 + 32) = v13;
  *(a4 + 48) = v13;
  *(a4 + 64) = v14;
  *(a4 + 72) = v13;
  *(a4 + 88) = v14;
  *(a4 + 96) = v13;
  *(a4 + 112) = v14;
  *(a4 + 120) = v15;
  *(a4 + 128) = v13;
  *(a4 + 144) = v14;
  *(a4 + 152) = 0x3FF0000000000000;
  *(a4 + 160) = a6;
  result = 2.0;
  *(a4 + 168) = xmmword_1D2883CE0;
  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
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
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1D239D5D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1D239D620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D239D708()
{
  result = qword_1EC6DA6D0;
  if (!qword_1EC6DA6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA688);
    sub_1D239D794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA6D0);
  }

  return result;
}

unint64_t sub_1D239D794()
{
  result = qword_1EC6DA6D8;
  if (!qword_1EC6DA6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA680);
    sub_1D239D820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA6D8);
  }

  return result;
}

unint64_t sub_1D239D820()
{
  result = qword_1EC6DA6E0;
  if (!qword_1EC6DA6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA678);
    sub_1D239D8D8();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA6E0);
  }

  return result;
}

unint64_t sub_1D239D8D8()
{
  result = qword_1EC6DA6E8;
  if (!qword_1EC6DA6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA6B8);
    sub_1D22BB9D8(&qword_1EC6DA6C0, &qword_1EC6DA6B8);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D3A0, &qword_1EC6DA6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA6E8);
  }

  return result;
}

uint64_t sub_1D239DA08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

unint64_t sub_1D239DBB0()
{
  result = qword_1EC6DA728;
  if (!qword_1EC6DA728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA6A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA698);
    sub_1D2875B48();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA688);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA670);
    sub_1D239D708();
    sub_1D22BB9D8(&qword_1ED89DED8, &qword_1EC6DA670);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA728);
  }

  return result;
}

uint64_t sub_1D239DDE8(uint64_t a1, uint64_t a2)
{
  sub_1D2878558();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1D23B7898();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D2879168();
    MEMORY[0x1D38A0C50](0xD00000000000003FLL, 0x80000001D28B2AB0);
    v8 = sub_1D2879978();
    MEMORY[0x1D38A0C50](v8);

    MEMORY[0x1D38A0C50](46, 0xE100000000000000);
    result = sub_1D2879398();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D239DF70(uint64_t a1, uint64_t a2)
{
  sub_1D2878558();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1D23B7898();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D2879168();
    MEMORY[0x1D38A0C50](0xD00000000000003FLL, 0x80000001D28B2AB0);
    v8 = sub_1D2879978();
    MEMORY[0x1D38A0C50](v8);

    MEMORY[0x1D38A0C50](46, 0xE100000000000000);
    result = sub_1D2879398();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D239E0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D2878558();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1D23B8230(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1D2879168();
  MEMORY[0x1D38A0C50](0xD00000000000003FLL, 0x80000001D28B2AB0);
  v12 = sub_1D2879978();
  MEMORY[0x1D38A0C50](v12);

  MEMORY[0x1D38A0C50](46, 0xE100000000000000);
  result = sub_1D2879398();
  __break(1u);
  return result;
}

uint64_t sub_1D239E2B0(uint64_t a1, char a2)
{
  type metadata accessor for ImageGeneration.ImageFromRecipeCache();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  v5 = swift_allocObject();
  v6 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v5 + 16) = v6;
  v7 = v6;
  [v7 setTotalCostLimit_];
  [v7 setEvictsObjectsWhenApplicationEntersBackground_];

  *(v2 + 48) = v5;
  *(v2 + 64) = MEMORY[0x1E69E7CD0];
  sub_1D2871808();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23CCC6C();
  v8 = sub_1D23B9618();
  if (v8 == 6)
  {
    if (sub_1D27D8C8C())
    {
      v9 = &unk_1F4DBCC10;
    }

    else
    {
      v9 = &unk_1F4DBCBE8;
    }
  }

  else
  {
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA798);
    v9 = swift_allocObject();
    v9[1] = xmmword_1D287F500;
    *(v9 + 32) = v10;
  }

  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generatorSources) = v9;
  v11 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__testGenerators) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__generators) = v11;
  v12 = v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  v13 = (v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  v14 = *(v2 + 32);
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  sub_1D22A576C(v14);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t sub_1D239E478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D28838F0;
  *(inited + 32) = sub_1D28780A8();
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = v1;
  *(inited + 48) = 801;
  *(inited + 80) = sub_1D28780A8();
  *(inited + 88) = v2;
  sub_1D2879168();

  v3 = objc_opt_self();
  v4 = [v3 processInfo];
  v5 = [v4 processName];

  v6 = sub_1D28780A8();
  v8 = v7;

  MEMORY[0x1D38A0C50](v6, v8);

  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = 0xD00000000000002ALL;
  *(inited + 104) = 0x80000001D28B2A20;
  *(inited + 128) = sub_1D28780A8();
  *(inited + 136) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D28838F0;
  strcpy((v10 + 32), "modelmanagerd");
  *(v10 + 46) = -4864;
  *(v10 + 48) = 0xD000000000000018;
  *(v10 + 56) = 0x80000001D28B2A50;
  v11 = [v3 processInfo];
  v12 = [v11 processName];

  v13 = sub_1D28780A8();
  v15 = v14;

  *(v10 + 64) = v13;
  *(v10 + 72) = v15;
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  *(inited + 144) = v10;
  v16 = sub_1D25D7270(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA760);
  result = swift_arrayDestroy();
  qword_1ED8B0288 = v16;
  return result;
}

uint64_t sub_1D239E708(uint64_t a1)
{
  v2 = v1;
  v69[3] = *MEMORY[0x1E69E9840];
  v4 = sub_1D2873CB8();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - v10;
  v12 = sub_1D2871818();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v60 - v17;
  v19 = *(v13 + 16);
  v19(v16, a1, v12);
  swift_beginAccess();
  sub_1D25B59C8(v18, v16);
  swift_endAccess();
  v20 = *(v13 + 8);
  v20(v18, v12);
  if (*(*(v2 + 64) + 16) == 1)
  {
    v64 = v20;
    v21 = [objc_opt_self() sharedScheduler];
    if (qword_1ED8A5CF8 != -1)
    {
      swift_once();
    }

    v22 = sub_1D2877E78();
    v69[0] = 0;
    v23 = [v21 taskStartedWithParameters:v22 error:v69];

    if (v23)
    {
      v24 = v69[0];
      sub_1D2872688();
      sub_1D2870F78();
      v25 = sub_1D2873CA8();
      v26 = sub_1D2878A38();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v68 = v65;
        *v27 = 136315138;
        LODWORD(v63) = v26;
        v28 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
        swift_beginAccess();
        v19(v18, v2 + v28, v12);
        sub_1D23B75AC(&qword_1ED8A6C90);
        v29 = sub_1D28795C8();
        v31 = v30;
        v64(v18, v12);
        v32 = sub_1D23D7C84(v29, v31, &v68);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_1D226E000, v25, v63, "Signalled generation %s started to BGSystemTaskScheduler", v27, 0xCu);
        v33 = v65;
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x1D38A3520](v33, -1, -1);
        MEMORY[0x1D38A3520](v27, -1, -1);
      }

      return (*(v66 + 8))(v11, v67);
    }

    else
    {
      v43 = v69[0];
      v44 = sub_1D28714B8();

      swift_willThrow();
      v45 = v65;
      sub_1D2872688();
      sub_1D2870F78();
      v46 = v44;
      v47 = sub_1D2873CA8();
      v48 = sub_1D2878A18();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v62 = v48;
        v50 = v49;
        v61 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v68 = v63;
        *v50 = 136315394;
        v51 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
        swift_beginAccess();
        v19(v18, v2 + v51, v12);
        sub_1D23B75AC(&qword_1ED8A6C90);
        v52 = sub_1D28795C8();
        v54 = v53;
        v64(v18, v12);
        v55 = sub_1D23D7C84(v52, v54, &v68);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2112;
        v56 = v44;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 14) = v57;
        v58 = v61;
        *v61 = v57;
        _os_log_impl(&dword_1D226E000, v47, v62, "Failed to signal generation %s started to BGSystemTaskScheduler: %@", v50, 0x16u);
        sub_1D22BD238(v58, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v58, -1, -1);
        v59 = v63;
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x1D38A3520](v59, -1, -1);
        MEMORY[0x1D38A3520](v50, -1, -1);

        return (*(v66 + 8))(v65, v67);
      }

      else
      {

        return (*(v66 + 8))(v45, v67);
      }
    }
  }

  else
  {
    sub_1D2872688();
    sub_1D2870F78();
    v35 = sub_1D2873CA8();
    v36 = sub_1D2878A38();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v69[0] = v38;
      *v37 = 136315138;
      sub_1D23B75AC(&qword_1ED8A6CB0);
      sub_1D2870F68();
      v39 = sub_1D28787D8();
      v41 = v40;

      v42 = sub_1D23D7C84(v39, v41, v69);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1D226E000, v35, v36, "Not signalling new task to BGSystemTaskScheduler because batches %s are still in progress", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1D38A3520](v38, -1, -1);
      MEMORY[0x1D38A3520](v37, -1, -1);
    }

    return (*(v66 + 8))(v9, v67);
  }
}

uint64_t sub_1D239EEE4(uint64_t a1)
{
  v2 = v1;
  v71[3] = *MEMORY[0x1E69E9840];
  v4 = sub_1D2871818();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D2873CB8();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v62[-v17];
  swift_beginAccess();
  sub_1D23B6D88(a1, v18);
  swift_endAccess();
  sub_1D22BD238(v18, &qword_1EC6D8F70);
  if (*(*(v1 + 64) + 16))
  {
    sub_1D2872688();
    sub_1D2870F78();
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A38();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v71[0] = v22;
      *v21 = 136315138;
      sub_1D23B75AC(&qword_1ED8A6CB0);
      sub_1D2870F68();
      v23 = sub_1D28787D8();
      v25 = v24;

      v26 = sub_1D23D7C84(v23, v25, v71);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1D226E000, v19, v20, "Not signalling task end to BGSystemTaskScheduler because batches %s are still in progress", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1D38A3520](v22, -1, -1);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    return (*(v68 + 8))(v12, v69);
  }

  else
  {
    v28 = v66;
    v29 = [objc_opt_self() sharedScheduler];
    if (qword_1ED8A5CF8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D2877E78();
    v71[0] = 0;
    v31 = [v29 taskStoppedWithParameters:v30 error:v71];

    v32 = v6;
    if (v31)
    {
      v33 = v71[0];
      v34 = v15;
      sub_1D2872688();
      sub_1D2870F78();
      v35 = sub_1D2873CA8();
      v36 = sub_1D2878A38();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v70 = v38;
        *v37 = 136315138;
        v65 = v34;
        v39 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
        swift_beginAccess();
        v40 = v67;
        (*(v28 + 16))(v32, v2 + v39, v67);
        sub_1D23B75AC(&qword_1ED8A6C90);
        v41 = sub_1D28795C8();
        v43 = v42;
        (*(v28 + 8))(v32, v40);
        v44 = sub_1D23D7C84(v41, v43, &v70);

        *(v37 + 4) = v44;
        _os_log_impl(&dword_1D226E000, v35, v36, "Signalled generation %s stopped to BGSystemTaskScheduler", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x1D38A3520](v38, -1, -1);
        MEMORY[0x1D38A3520](v37, -1, -1);

        return (*(v68 + 8))(v65, v69);
      }

      else
      {

        return (*(v68 + 8))(v15, v69);
      }
    }

    else
    {
      v45 = v71[0];
      v46 = sub_1D28714B8();

      swift_willThrow();
      v47 = v9;
      sub_1D2872688();
      sub_1D2870F78();
      v48 = v46;
      v49 = sub_1D2873CA8();
      v50 = sub_1D2878A18();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v70 = v65;
        *v51 = 136315394;
        v63 = v50;
        v52 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
        swift_beginAccess();
        v53 = v67;
        (*(v28 + 16))(v32, v2 + v52, v67);
        sub_1D23B75AC(&qword_1ED8A6C90);
        v54 = sub_1D28795C8();
        v56 = v55;
        (*(v28 + 8))(v32, v53);
        v57 = sub_1D23D7C84(v54, v56, &v70);

        *(v51 + 4) = v57;
        *(v51 + 12) = 2112;
        v58 = v46;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 14) = v59;
        v60 = v64;
        *v64 = v59;
        _os_log_impl(&dword_1D226E000, v49, v63, "Failed to signal generation %s stopped to BGSystemTaskScheduler: %@", v51, 0x16u);
        sub_1D22BD238(v60, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v60, -1, -1);
        v61 = v65;
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x1D38A3520](v61, -1, -1);
        MEMORY[0x1D38A3520](v51, -1, -1);
      }

      else
      {
      }

      return (*(v68 + 8))(v47, v69);
    }
  }
}

uint64_t sub_1D239F6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v40 = a4;
  v41 = a5;
  v37 = a1;
  v38 = a3;
  v36 = a2;
  v7 = sub_1D2871818();
  v34 = v7;
  v8 = *(v7 - 8);
  v39 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738);
  v33 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v19 = sub_1D28785F8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a1, v11);
  (*(v8 + 16))(v10, v36, v7);
  sub_1D2878568();
  v20 = v38;
  sub_1D2870F78();
  sub_1D2870F68();
  v21 = sub_1D2878558();
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v8 + 80) + v23 + 24) & ~*(v8 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 2) = v21;
  *(v25 + 3) = v26;
  *(v25 + 4) = v20;
  (*(v12 + 32))(&v25[v22], v15, v33);
  v27 = &v25[v23];
  v28 = v41;
  *v27 = v40;
  *(v27 + 1) = v28;
  *(v27 + 2) = v32;
  (*(v8 + 32))(&v25[v24], v35, v34);
  v29 = sub_1D22AE01C(0, 0, v18, &unk_1D2883F70, v25);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v20;
  sub_1D2870F78();
  return sub_1D2878728();
}

uint64_t sub_1D239FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[86] = v25;
  v8[85] = a8;
  v8[84] = a7;
  v8[83] = a6;
  v8[82] = a5;
  v8[81] = a4;
  v9 = sub_1D2878538();
  v8[87] = v9;
  v8[88] = *(v9 - 8);
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738);
  v8[91] = v10;
  v11 = *(v10 - 8);
  v8[92] = v11;
  v8[93] = *(v11 + 64);
  v8[94] = swift_task_alloc();
  v8[95] = swift_task_alloc();
  v12 = type metadata accessor for CuratedPrompt();
  v8[96] = v12;
  v8[97] = *(v12 - 8);
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA748);
  v8[101] = v13;
  v8[102] = *(v13 - 8);
  v8[103] = swift_task_alloc();
  v8[104] = type metadata accessor for ImageGeneration.PreviewStatus(0);
  v8[105] = swift_task_alloc();
  v8[106] = swift_task_alloc();
  v14 = sub_1D2872008();
  v8[107] = v14;
  v8[108] = *(v14 - 8);
  v8[109] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v8[110] = swift_task_alloc();
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v15 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v8[113] = v15;
  v8[114] = *(v15 - 8);
  v8[115] = swift_task_alloc();
  v8[116] = swift_task_alloc();
  v8[117] = swift_task_alloc();
  v16 = sub_1D2871818();
  v8[118] = v16;
  v17 = *(v16 - 8);
  v8[119] = v17;
  v8[120] = *(v17 + 64);
  v8[121] = swift_task_alloc();
  v8[122] = swift_task_alloc();
  v8[123] = swift_task_alloc();
  v8[124] = swift_task_alloc();
  v8[125] = swift_task_alloc();
  v8[126] = swift_task_alloc();
  v8[127] = swift_task_alloc();
  v8[128] = swift_task_alloc();
  v8[129] = swift_task_alloc();
  v8[130] = swift_task_alloc();
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v8[133] = swift_task_alloc();
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();
  v8[136] = swift_task_alloc();
  v8[137] = swift_task_alloc();
  v8[138] = swift_task_alloc();
  v8[139] = swift_task_alloc();
  v18 = sub_1D2871988();
  v8[140] = v18;
  v8[141] = *(v18 - 8);
  v8[142] = swift_task_alloc();
  v19 = type metadata accessor for ImageGeneration.GenerationParameters();
  v8[143] = v19;
  v8[144] = *(v19 - 8);
  v8[145] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490);
  v8[146] = swift_task_alloc();
  v8[147] = swift_task_alloc();
  v8[148] = swift_task_alloc();
  v20 = sub_1D2873CB8();
  v8[149] = v20;
  v8[150] = *(v20 - 8);
  v8[151] = swift_task_alloc();
  v8[152] = swift_task_alloc();
  v8[153] = swift_task_alloc();
  v8[154] = swift_task_alloc();
  v8[155] = swift_task_alloc();
  v8[156] = swift_task_alloc();
  v8[157] = swift_task_alloc();
  v8[158] = swift_task_alloc();
  v8[159] = swift_task_alloc();
  v8[160] = swift_task_alloc();
  v8[161] = swift_task_alloc();
  v8[162] = swift_task_alloc();
  v8[163] = swift_task_alloc();
  v8[164] = swift_task_alloc();
  v8[165] = swift_task_alloc();
  v8[166] = swift_task_alloc();
  v8[167] = swift_task_alloc();
  v8[168] = sub_1D2878568();
  v8[169] = sub_1D2878558();
  v22 = sub_1D28784F8();
  v8[170] = v22;
  v8[171] = v21;

  return MEMORY[0x1EEE6DFA0](sub_1D23A0190, v22, v21);
}

uint64_t sub_1D23A0190()
{
  v1 = v0[81];
  v2 = *(v1 + 32);
  v0[172] = v2;
  v0[173] = *(v1 + 40);
  if (v2)
  {
    sub_1D2870F78();
    v15 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[174] = v3;
    *v3 = v0;
    v3[1] = sub_1D23A06EC;
    v4 = v0[147];

    return v15(v4);
  }

  else
  {

    sub_1D2872648();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A18();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v6, v7, "parametersProvider is nil in buildRequest function", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    v9 = v0[167];
    v10 = v0[150];
    v11 = v0[149];

    (*(v10 + 8))(v9, v11);
    sub_1D23B78C0();
    v12 = swift_allocError();
    *v13 = 0;
    v0[63] = v12;
    sub_1D2878748();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1D23A06EC()
{
  v2 = *v1;
  *(*v1 + 1400) = v0;

  v3 = *(v2 + 1368);
  v4 = *(v2 + 1360);
  if (v0)
  {
    v5 = sub_1D23AF690;
  }

  else
  {
    v5 = sub_1D23A0828;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23A0828()
{
  v350 = v0;
  v5 = *(v0 + 1184);
  v6 = *(v0 + 1168);
  v7 = *(v0 + 1152);
  v8 = *(v0 + 1144);
  sub_1D23B7914(*(v0 + 1176), v5);
  sub_1D22BD1D0(v5, v6, &qword_1EC6DA490);
  v9 = 1;
  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    v10 = *(v0 + 1376);
    v11 = *(v0 + 1184);
    v12 = *(v0 + 1168);

    sub_1D22BD238(v12, &qword_1EC6DA490);
    sub_1D23B78C0();
    v13 = swift_allocError();
    *v14 = 1;
    *(v0 + 576) = v13;
    sub_1D2878748();
    sub_1D22A576C(v10);
    sub_1D22BD238(v11, &qword_1EC6DA490);
    goto LABEL_50;
  }

  v15 = *(v0 + 1400);
  v16 = *(v0 + 1160);
  v17 = *(v0 + 648);
  sub_1D23B81C8(*(v0 + 1168), v16, type metadata accessor for ImageGeneration.GenerationParameters);
  v18 = sub_1D23B7984();
  v19 = swift_task_alloc();
  *(v19 + 16) = v16;
  sub_1D2870F68();
  sub_1D274B7E8(sub_1D23B7AD4, v18, v0 + 144);
  *(v0 + 1408) = v15;

  v20 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  sub_1D23B7AF4(v0 + 144, v17 + v20);
  swift_endAccess();
  sub_1D22BD1D0(v17 + v20, v0 + 224, &qword_1EC6D9A08);
  if (!*(v0 + 248))
  {
    v29 = *(v0 + 1376);
    v30 = *(v0 + 1184);
    v31 = *(v0 + 1160);

    sub_1D22BD238(v0 + 224, &qword_1EC6D9A08);
    sub_1D23B7B64();
    *(v0 + 560) = swift_allocError();
    sub_1D2878748();
    sub_1D22A576C(v29);
    sub_1D22BD238(v30, &qword_1EC6DA490);
    v32 = v31;
    goto LABEL_49;
  }

  v21 = *(v0 + 1160);
  sub_1D227268C((v0 + 224), v0 + 184);
  v22 = *(v21 + 32);
  *(v0 + 1416) = v22;
  v23 = *(v21 + 40);
  *(v0 + 1424) = v23;
  if ((v22 || v23 != 0xE000000000000000) && (sub_1D2879618() & 1) == 0)
  {
    v24 = [objc_opt_self() _deviceLanguage];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1D28780A8();
      v28 = v27;

      if (v26 == 24938 && v28 == 0xE200000000000000)
      {

LABEL_13:
        *(v0 + 1432) = *(*(v0 + 648) + 16);
        *(v0 + 1440) = sub_1D2878558();
        v33 = sub_1D28784F8();
        v35 = v34;
        *(v0 + 1448) = v33;
        *(v0 + 1456) = v34;
        v36 = sub_1D23A381C;
        v37 = v33;

        return MEMORY[0x1EEE6DFA0](v36, v37, v35);
      }

      v20 = sub_1D2879618();

      if (v20)
      {
        goto LABEL_13;
      }
    }
  }

  v38 = *(v0 + 664);
  sub_1D2871978();
  if (v38 < 0)
  {
    __break(1u);
LABEL_153:

    (v3)(v38, v19);
    v293(v9, v332);
    goto LABEL_154;
  }

  v39 = *(v0 + 664);
  v40 = *(v0 + 648);
  v41 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  *(v0 + 1504) = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  swift_beginAccess();
  v291 = v39;
  if (v39)
  {
    v42 = 0;
    v43 = *(v0 + 952);
    v9 = v43 + 16;
    v44 = (v43 + 8);
    v326 = v40;
    v333 = *(v0 + 1144);
    while (1)
    {
      v45 = *(v0 + 672);
      v3 = v42 + v45;
      if (__OFADD__(v42, v45))
      {
        break;
      }

      v46 = *(v0 + 1112);
      v47 = *(v0 + 944);
      (*v9)(v46, v40 + v41, v47);
      sub_1D23B75AC(&unk_1ED8A6CA0);
      v2 = sub_1D2877F98();
      (*v44)(v46, v47);
      if ((v2 & 1) == 0)
      {
        v73 = *(v0 + 1376);
        v74 = *(v0 + 1184);
        v51 = *(v0 + 1160);
        v75 = *(v0 + 1136);
        v76 = *(v0 + 1128);
        v77 = *(v0 + 1120);

        sub_1D22BCEB8();
        v78 = swift_allocError();
        *v79 = 3;
        *(v0 + 552) = v78;
        sub_1D2878748();
        sub_1D22A576C(v73);
        (*(v76 + 8))(v75, v77);
        sub_1D22BD238(v74, &qword_1EC6DA490);
        goto LABEL_48;
      }

      v48 = *(*(v40 + 6) + 16);
      v1 = sub_1D2878068();
      v39 = [v48 objectForKey_];

      if (v39)
      {
        v349[0] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA498);
        sub_1D28783D8();
      }

      if (++v42 == *(v0 + 664))
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_131;
  }

  v42 = *(v0 + 664);
LABEL_25:
  if (sub_1D2871938() == v42)
  {
    v49 = *(v0 + 1376);
    v50 = *(v0 + 1184);
    v51 = *(v0 + 1160);
    v52 = *(v0 + 1136);
    v53 = *(v0 + 1128);
    v54 = *(v0 + 1120);
    v327 = *(v0 + 648);
    v334 = *(v0 + 1144);

    *(v0 + 632) = 0;
    sub_1D2878748();
    sub_1D22A576C(v49);
    (*(v53 + 8))(v52, v54);
    sub_1D22BD238(v50, &qword_1EC6DA490);
    v55 = (v51 + *(v334 + 96));
    v57 = *v55;
    v56 = v55[1];
    v58 = (v327 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration);
    *v58 = v57;
    v58[1] = v56;
    sub_1D2870F68();

LABEL_48:
    __swift_destroy_boxed_opaque_existential_0(v0 + 184);
    v32 = v51;
    goto LABEL_49;
  }

  v20 = &unk_1ED8A5000;
  v59 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration;
  v60 = *(v0 + 1160);
  v61 = *(v0 + 648);
  if (!*(v0 + 672))
  {
    goto LABEL_35;
  }

  v62 = *(v61 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration + 8);
  if (!v62)
  {
    goto LABEL_53;
  }

  v63 = (v60 + *(*(v0 + 1144) + 96));
  if (*v63 == *(v61 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration) && v62 == v63[1])
  {
LABEL_35:
    v65 = (v61 + v59);
    *v65 = 0;
    v65[1] = 0;

    sub_1D2392B2C();
    if (v66)
    {
      v67 = *(*(v0 + 1160) + 104);
      v68 = *(v67 + 16);
      if (v68)
      {
        v41 = 0;
        v2 = *(v0 + 776);
        v326 = *(v0 + 768);
        v335 = *(v0 + 800) + 48;
        v69 = MEMORY[0x1E69E7CC0];
        do
        {
          if (v41 >= *(v67 + 16))
          {
            __break(1u);
            goto LABEL_139;
          }

          v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v1 = *(v2 + 72);
          sub_1D23B8100(v67 + v9 + v1 * v41, *(v0 + 800), type metadata accessor for CuratedPrompt);
          v70 = *(v0 + 800);
          if (*(v335 + v326[23]) == 255)
          {
            sub_1D23B8168(v70, type metadata accessor for CuratedPrompt);
          }

          else
          {
            sub_1D23B81C8(v70, *(v0 + 784), type metadata accessor for CuratedPrompt);
            v349[0] = v69;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D23D838C(0, *(v69 + 16) + 1, 1);
              v69 = v349[0];
            }

            v3 = *(v69 + 16);
            v71 = *(v69 + 24);
            v20 = v3 + 1;
            if (v3 >= v71 >> 1)
            {
              sub_1D23D838C(v71 > 1, v3 + 1, 1);
              v69 = v349[0];
            }

            v72 = *(v0 + 784);
            *(v69 + 16) = v20;
            sub_1D23B81C8(v72, v69 + v9 + v3 * v1, type metadata accessor for CuratedPrompt);
          }

          ++v41;
        }

        while (v68 != v41);
      }

      else
      {
        v69 = MEMORY[0x1E69E7CC0];
      }

      v320 = *(v69 + 16);
      v326 = v69;
      if (v320)
      {
        v94 = 0;
        v95 = *(v0 + 792) + *(*(v0 + 768) + 92);
        v309 = v326 + ((*(*(v0 + 776) + 80) + 32) & ~*(*(v0 + 776) + 80));
        v316 = *(v0 + 776);
        do
        {
          if (v94 >= *(v326 + 2))
          {
            __break(1u);
LABEL_150:

            (v326)(v94, v2);
            v293(v1, v9);
            v1 = v309;
            goto LABEL_151;
          }

          v9 = *(v0 + 792);
          sub_1D23B8100(&v309[*(v316 + 72) * v94], v9, type metadata accessor for CuratedPrompt);
          v20 = *(v95 + 8);
          v2 = *(v95 + 16);
          v96 = *(v95 + 24);
          v97 = *(v95 + 32);
          v41 = *(v95 + 40);
          v1 = *(v95 + 48);
          v337 = *v95;
          sub_1D23B7D24(*v95, v20, v2, v96, v97, v41, *(v95 + 48));
          sub_1D23B8168(v9, type metadata accessor for CuratedPrompt);
          if (v1 != 255)
          {
            if (v1)
            {

              if (!v20)
              {
                goto LABEL_79;
              }

              v98 = HIBYTE(v20) & 0xF;
              if ((v20 & 0x2000000000000000) == 0)
              {
                v98 = v337 & 0xFFFFFFFFFFFFLL;
              }

              if (!v98)
              {
LABEL_79:
                v99 = *(v0 + 1376);
                v321 = *(v0 + 1184);
                v338 = *(v0 + 1160);
                v100 = *(v0 + 1136);
                v101 = *(v0 + 1128);
                v102 = *(v0 + 1120);

                sub_1D22BCE64();
                v103 = swift_allocError();
                *v104 = xmmword_1D2883E60;
                *(v104 + 16) = -96;
                *(v0 + 624) = v103;
                sub_1D2878748();
                sub_1D22A576C(v99);
                (*(v101 + 8))(v100, v102);
                sub_1D22BD238(v321, &qword_1EC6DA490);
                __swift_destroy_boxed_opaque_existential_0(v0 + 184);
                v32 = v338;
                goto LABEL_49;
              }
            }

            else
            {
              sub_1D23B7D88(v337, v20, v2, v96, v97, v41, v1);
            }
          }

          ++v94;
        }

        while (v320 != v94);
      }
    }

    sub_1D23929C8();
    v105 = *(v0 + 1160);
    if (v106)
    {
      v107 = v105[9];
      if (v107)
      {
        v108 = v105[8];
        v109 = *(v0 + 208);
        v110 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v109);
        v339 = (*(v110 + 40) + **(v110 + 40));
        v111 = swift_task_alloc();
        *(v0 + 1512) = v111;
        *v111 = v0;
        v111[1] = sub_1D23A67D8;
        v112 = *(v0 + 1160);

        return v339(v108, v107, v112, v109, v110);
      }
    }

    v113 = v105[7];
    if (v113)
    {
      v114 = v105[6];
      v115 = *(v0 + 208);
      v116 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v115);
      v340 = (*(v116 + 32) + **(v116 + 32));
      v117 = swift_task_alloc();
      *(v0 + 1528) = v117;
      *v117 = v0;
      v117[1] = sub_1D23A8AB0;

      return v340(v114, v113, v115, v116);
    }

    v44 = *(v0 + 1408);
    v118 = *(v0 + 208);
    v119 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v118);
    (*(v119 + 48))(v105, v118, v119);
    if (v44)
    {

      *(v0 + 584) = v44;
      v120 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      if (swift_dynamicCast())
      {
        v41 = *(v0 + 480);
        v121 = *(v0 + 488);
        LODWORD(v42) = *(v0 + 496);
        if (v42 < 0x50)
        {
          *(v0 + 608) = v41;
          sub_1D233E72C(v41, v121, v42);
          if (swift_dynamicCast())
          {
            v333 = v121;
            v122 = *(v0 + 992);
            v123 = *(v0 + 952);
            v124 = *(v0 + 944);
            v125 = *(v0 + 688);
            (*(*(v0 + 704) + 8))(*(v0 + 720), *(v0 + 696));
            sub_1D2872648();
            (*(v123 + 16))(v122, v125, v124);
            v126 = v44;
            v2 = sub_1D2873CA8();
            v127 = sub_1D28789F8();

            v322 = v127;
            v128 = os_log_type_enabled(v2, v127);
            v9 = *(v0 + 1240);
            v1 = *(v0 + 1200);
            v326 = *(v0 + 1192);
            v39 = *(v0 + 992);
            v40 = *(v0 + 952);
            v3 = *(v0 + 944);
            if (v128)
            {
              v296 = v2;
              v129 = swift_slowAlloc();
              v295 = swift_slowAlloc();
              v310 = swift_slowAlloc();
              v349[0] = v310;
              *v129 = 136315394;
              sub_1D23B75AC(&qword_1ED8A6C90);
              v317 = v9;
              v130 = sub_1D28795C8();
              v302 = v1;
              v132 = v131;
              (*(v40 + 1))(v39, v3);
              v133 = sub_1D23D7C84(v130, v132, v349);

              *(v129 + 4) = v133;
              *(v129 + 12) = 2112;
              v134 = v44;
              v135 = _swift_stdlib_bridgeErrorToNSError();
              *(v129 + 14) = v135;
              *v295 = v135;
              _os_log_impl(&dword_1D226E000, v296, v322, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v129, 0x16u);
              sub_1D22BD238(v295, qword_1EC6DA930);
              MEMORY[0x1D38A3520](v295, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v310);
              MEMORY[0x1D38A3520](v310, -1, -1);
              MEMORY[0x1D38A3520](v129, -1, -1);

              (*(v302 + 8))(v317, v326);
LABEL_132:
              v235 = *(v0 + 1376);
              v179 = *(v0 + 1184);
              v331 = *(v0 + 1136);
              v236 = *(v0 + 1128);
              v237 = *(v0 + 1120);
              *(v0 + 616) = 0;
              sub_1D2878748();
              sub_1D22A576C(v235);
              sub_1D22BCDC4(v41, v333, v42);

              (*(v236 + 8))(v331, v237);
              goto LABEL_106;
            }

LABEL_131:

            (*(v40 + 1))(v39, v3);
            (*(v1 + 8))(v9, v326);
            goto LABEL_132;
          }
        }

        sub_1D22BCDC4(v41, v121, v42);
      }

      v157 = *(v0 + 984);
      v158 = *(v0 + 952);
      v159 = *(v0 + 944);
      v160 = *(v0 + 688);
      sub_1D2872648();
      (*(v158 + 16))(v157, v160, v159);
      v161 = v44;
      v162 = sub_1D2873CA8();
      v163 = sub_1D28789F8();

      v164 = os_log_type_enabled(v162, v163);
      v165 = *(v0 + 1232);
      v166 = *(v0 + 1200);
      v167 = *(v0 + 1192);
      v168 = *(v0 + 984);
      v169 = *(v0 + 952);
      v170 = *(v0 + 944);
      if (v164)
      {
        v342 = *(v0 + 1192);
        v171 = swift_slowAlloc();
        v319 = swift_slowAlloc();
        v324 = swift_slowAlloc();
        v349[0] = v324;
        *v171 = 136315394;
        sub_1D23B75AC(&qword_1ED8A6C90);
        v329 = v165;
        v172 = sub_1D28795C8();
        v311 = v163;
        v174 = v173;
        (*(v169 + 8))(v168, v170);
        v175 = sub_1D23D7C84(v172, v174, v349);

        *(v171 + 4) = v175;
        *(v171 + 12) = 2112;
        v176 = v44;
        v177 = _swift_stdlib_bridgeErrorToNSError();
        *(v171 + 14) = v177;
        *v319 = v177;
        _os_log_impl(&dword_1D226E000, v162, v311, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v171, 0x16u);
        sub_1D22BD238(v319, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v319, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v324);
        MEMORY[0x1D38A3520](v324, -1, -1);
        MEMORY[0x1D38A3520](v171, -1, -1);

        (*(v166 + 8))(v329, v342);
      }

      else
      {

        (*(v169 + 8))(v168, v170);
        (*(v166 + 8))(v165, v167);
      }

      v178 = *(v0 + 1376);
      v179 = *(v0 + 1184);
      v180 = *(v0 + 1136);
      v181 = *(v0 + 1128);
      v182 = *(v0 + 1120);
      *(v0 + 600) = v44;
      v183 = v44;
      sub_1D2878748();
      sub_1D22A576C(v178);

      (*(v181 + 8))(v180, v182);
LABEL_106:
      sub_1D22BD238(v179, &qword_1EC6DA490);
      v184 = *(v0 + 1160);
      __swift_destroy_boxed_opaque_existential_0(v0 + 184);
      v32 = v184;
LABEL_49:
      sub_1D23B8168(v32, type metadata accessor for ImageGeneration.GenerationParameters);
LABEL_50:

      v80 = *(v0 + 8);

      return v80();
    }

    v20 = *(v0 + 824);
    v155 = *(v0 + 816);
    v156 = *(v0 + 808);
    v2 = *(v0 + 664);
    v60 = *(v0 + 656);
    swift_storeEnumTagMultiPayload();
    sub_1D2878738();
    (*(v155 + 8))(v20, v156);
    if (v2 > 1)
    {
      v82 = 1;
      goto LABEL_55;
    }

    if (*(v0 + 664))
    {
      v86 = 1;
      goto LABEL_60;
    }

LABEL_112:
    v201 = *(v0 + 208);
    v202 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v201);
    v344 = (*(v202 + 136) + **(v202 + 136));
    v203 = swift_task_alloc();
    *(v0 + 1688) = v203;
    *v203 = v0;
    v204 = sub_1D23AEFA0;
LABEL_113:
    v203[1] = v204;
    v205 = v201;
    v206 = v202;
    v207 = v344;

    return v207(v205, v206);
  }

  if (sub_1D2879618())
  {
    v59 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration;
    v61 = *(v0 + 648);
    goto LABEL_35;
  }

LABEL_53:
  if (*(v0 + 664) > 1)
  {
    v82 = 0;
LABEL_55:
    *(v0 + 474) = v82;
    v83 = *(v0 + 208);
    v84 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v83);
    v336 = (*(v84 + 128) + **(v84 + 128));
    v85 = swift_task_alloc();
    *(v0 + 1544) = v85;
    *v85 = v0;
    v85[1] = sub_1D23AAC6C;

    return v336(v83, v84);
  }

  if (!v291)
  {
    goto LABEL_112;
  }

  v86 = 0;
LABEL_60:
  *(v0 + 475) = v86;
  swift_beginAccess();
  v87 = 0;
  v88 = "ion; Expected same executor as ";
  v89 = "PreviewGenerationStarted";
  v90 = "predictable-seed-loading";
  v91 = *(v0 + 664);
  v92 = "predictable-seed-storing";
  while (1)
  {
    *(v0 + 1552) = v87;
    if (v87 >= v91)
    {
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    *(v0 + 1560) = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      goto LABEL_169;
    }

    v93 = *(v0 + 672);
    v20 = v87 + v93;
    *(v0 + 1568) = v87 + v93;
    if (__OFADD__(v87, v93))
    {
      goto LABEL_170;
    }

    v60 = *(v0 + 1136);
    if ((sub_1D2871968() & 1) == 0)
    {
      break;
    }

    v87 = *(v0 + 1560);
    v91 = *(v0 + 664);
    if (v87 == v91)
    {
      goto LABEL_112;
    }
  }

  v136 = sub_1D28786D8();
  v137 = *(v0 + 944);
  v138 = *(v0 + 688);
  v139 = *(v0 + 952) + 16;
  if (v136)
  {
    v140 = *(v0 + 1096);
    sub_1D2872648();
    (*v139)(v140, v138, v137);
    v141 = sub_1D2873CA8();
    v142 = sub_1D28789F8();
    v143 = os_log_type_enabled(v141, v142);
    v144 = *(v0 + 1328);
    v145 = *(v0 + 1200);
    v146 = *(v0 + 1192);
    v147 = *(v0 + 1096);
    v148 = *(v0 + 952);
    v149 = *(v0 + 944);
    if (v143)
    {
      v323 = v142;
      v150 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v349[0] = v318;
      *v150 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v328 = v146;
      v341 = v144;
      v151 = sub_1D28795C8();
      v153 = v152;
      (*(v148 + 8))(v147, v149);
      v154 = sub_1D23D7C84(v151, v153, v349);

      *(v150 + 4) = v154;
      *(v150 + 12) = 2048;
      *(v150 + 14) = v87;
      _os_log_impl(&dword_1D226E000, v141, v323, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v150, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v318);
      MEMORY[0x1D38A3520](v318, -1, -1);
      MEMORY[0x1D38A3520](v150, -1, -1);

      (*(v145 + 8))(v341, v328);
    }

    else
    {

      (*(v148 + 8))(v147, v149);
      (*(v145 + 8))(v144, v146);
    }

    goto LABEL_112;
  }

  v185 = *(v0 + 1088);
  sub_1D2872648();
  v186 = *v139;
  *(v0 + 1576) = *v139;
  *(v0 + 1584) = v139 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v343 = v186;
  v186(v185, v138, v137);
  v187 = sub_1D2873CA8();
  v312 = sub_1D28789F8();
  v188 = os_log_type_enabled(v187, v312);
  v189 = *(v0 + 1320);
  v190 = *(v0 + 1200);
  v330 = *(v0 + 1192);
  v191 = *(v0 + 1088);
  v192 = *(v0 + 952);
  v193 = *(v0 + 944);
  if (v188)
  {
    v194 = swift_slowAlloc();
    v297 = swift_slowAlloc();
    v349[0] = v297;
    *v194 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v292 = v187;
    v195 = sub_1D28795C8();
    v303 = v189;
    v197 = v196;
    v294 = v190;
    v198 = *(v192 + 8);
    v198(v191, v193);
    v199 = sub_1D23D7C84(v195, v197, v349);

    *(v194 + 4) = v199;
    *(v194 + 12) = 2048;
    *(v194 + 14) = v87;
    _os_log_impl(&dword_1D226E000, v292, v312, " %s - image index %ld - will generate", v194, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v297);
    MEMORY[0x1D38A3520](v297, -1, -1);
    v200 = v198;
    MEMORY[0x1D38A3520](v194, -1, -1);

    v293 = *(v294 + 8);
    v293(v303, v330);
  }

  else
  {

    v200 = *(v192 + 8);
    v200(v191, v193);
    v293 = *(v190 + 8);
    v293(v189, v330);
  }

  v326 = v200;
  *(v0 + 1592) = v200;
  v208 = *(v0 + 1112);
  v209 = *(v0 + 944);
  v304 = *(v0 + 1504);
  v298 = *(v0 + 648);
  v210 = *(v0 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v212 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  v3 = v326;
  sub_1D22BD238(inited + 32, &qword_1EC6DA198);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v212, 1);

  v343(v208, v298 + v304, v209);
  *(v0 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0);
  v213 = sub_1D2877F98();
  *(v0 + 1608) = v210 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v326)(v208, v209);
  if ((v213 & 1) == 0)
  {
    sub_1D22BCEB8();
    v233 = swift_allocError();
    *v234 = 3;
    swift_willThrow();
    *(v0 + 1696) = v233;
    v201 = *(v0 + 208);
    v202 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v201);
    v344 = (*(v202 + 136) + **(v202 + 136));
    v203 = swift_task_alloc();
    *(v0 + 1704) = v203;
    *v203 = v0;
    v204 = sub_1D23B0E18;
    goto LABEL_113;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v214 = sub_1D2878A58();
  v215 = sub_1D2878068();
  v216 = [v214 BOOLForKey_];

  if (v216)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v217 = sub_1D23B9E90(*(v0 + 1160) + *(*(v0 + 1144) + 92), v87);
    if ((v218 & 1) == 0)
    {
      v309 = v217;
      v251 = *(v0 + 1080);
      v252 = *(v0 + 944);
      v253 = *(v0 + 688);
      sub_1D2872648();
      v343(v251, v253, v252);
      v41 = sub_1D2873CA8();
      v254 = sub_1D28789F8();
      v255 = os_log_type_enabled(v41, v254);
      v1 = *(v0 + 1312);
      v9 = *(v0 + 1192);
      v94 = *(v0 + 1080);
      v2 = *(v0 + 944);
      if (!v255)
      {
        goto LABEL_150;
      }

      v325 = *(v0 + 1192);
      v256 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      v349[0] = v307;
      *v256 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v257 = sub_1D28795C8();
      v300 = v1;
      v259 = v258;
      (v326)(v94, v2);
      v260 = sub_1D23D7C84(v257, v259, v349);

      *(v256 + 4) = v260;
      *(v256 + 12) = 2048;
      *(v256 + 14) = v87;
      *(v256 + 22) = 2048;
      v1 = v309;
      *(v256 + 24) = v309;
      _os_log_impl(&dword_1D226E000, v41, v254, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v256, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v307);
      MEMORY[0x1D38A3520](v307, -1, -1);
      MEMORY[0x1D38A3520](v256, -1, -1);

      v293(v300, v325);
      goto LABEL_151;
    }
  }

  v219 = sub_1D2878A58();
  v220 = sub_1D2878068();
  v221 = [v219 BOOLForKey_];

  if (!v221)
  {
    v238 = sub_1D2878A58();
    v239 = sub_1D2878068();
    v240 = [v238 BOOLForKey_];

    if (v240)
    {
      v241 = *(v0 + 1064);
      v242 = *(v0 + 944);
      v243 = *(v0 + 688);
      sub_1D2872648();
      v343(v241, v243, v242);
      v18 = sub_1D2873CA8();
      v244 = sub_1D28789F8();
      v245 = os_log_type_enabled(v18, v244);
      v9 = *(v0 + 1296);
      v332 = *(v0 + 1192);
      v38 = *(v0 + 1064);
      v19 = *(v0 + 944);
      if (!v245)
      {
        goto LABEL_153;
      }

      v246 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v349[0] = v314;
      *v246 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v247 = sub_1D28795C8();
      v306 = v9;
      v249 = v248;
      (v326)(v38, v19);
      v250 = sub_1D23D7C84(v247, v249, v349);

      *(v246 + 4) = v250;
      *(v246 + 12) = 2048;
      *(v246 + 14) = v87;
      *(v246 + 22) = 2048;
      *(v246 + 24) = 0;
      _os_log_impl(&dword_1D226E000, v18, v244, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v246, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v314);
      MEMORY[0x1D38A3520](v314, -1, -1);
      MEMORY[0x1D38A3520](v246, -1, -1);

      v293(v306, v332);
LABEL_154:
      v276 = *(v0 + 208);
      v277 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v276);
      (*(v277 + 72))(0, v276, v277);
      goto LABEL_155;
    }

    if (v20 >= *(*(v0 + 680) + 16))
    {
      goto LABEL_155;
    }

    v36 = sub_1D23CE790();
    if (!v36)
    {
      v36 = &unk_1F4DBDC68;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v261 = *(v36 + 2);
      if (v261)
      {
        v2 = *(*(v0 + 680) + 8 * v20 + 32);
        v262 = *(v0 + 1056);
        v263 = *(v0 + 944);
        v264 = *(v0 + 688);
        v265 = v261 - 1;
        if (v265 >= v20)
        {
          v265 = v20;
        }

        v4 = v36[v265 + 8];

        sub_1D2872648();
        v343(v262, v264, v263);
        v90 = sub_1D2873CA8();
        v346 = sub_1D28789F8();
        v266 = os_log_type_enabled(v90, v346);
        v92 = *(v0 + 1288);
        v88 = *(v0 + 1192);
        v60 = *(v0 + 1056);
        v89 = *(v0 + 944);
        if (v266)
        {
          v315 = *(v0 + 1192);
          v267 = swift_slowAlloc();
          v308 = swift_slowAlloc();
          v349[0] = v308;
          *v267 = 136315906;
          sub_1D23B75AC(&qword_1ED8A6C90);
          v301 = v92;
          v268 = v2;
          v269 = sub_1D28795C8();
          v271 = v270;
          (v326)(v60, v89);
          v272 = v269;
          v2 = v268;
          v273 = sub_1D23D7C84(v272, v271, v349);

          *(v267 + 4) = v273;
          *(v267 + 12) = 2048;
          *(v267 + 14) = v87;
          *(v267 + 22) = 2048;
          *(v267 + 24) = v268;
          *(v267 + 32) = 2048;
          *(v267 + 34) = v4;
          _os_log_impl(&dword_1D226E000, v90, v346, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v267, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v308);
          MEMORY[0x1D38A3520](v308, -1, -1);
          MEMORY[0x1D38A3520](v267, -1, -1);

          v293(v301, v315);
          goto LABEL_172;
        }

LABEL_171:

        (v326)(v60, v89);
        v293(v92, v88);
LABEL_172:
        v287 = *(v0 + 208);
        v288 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v287);
        (*(v288 + 72))(v2, v287, v288);
        v289 = *(v0 + 208);
        v290 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v289);
        (*(v290 + 80))(v289, v290, v4);
        if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
        {
          goto LABEL_156;
        }

        goto LABEL_157;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v36, v37, v35);
  }

  v222 = sub_1D23B6AAC(0x8000000000000000);
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  v223 = *(v0 + 1072);
  v224 = *(v0 + 944);
  v225 = *(v0 + 688);
  sub_1D23BA074(v222, *(v0 + 1160) + *(*(v0 + 1144) + 92), v87);
  sub_1D2872648();
  v343(v223, v225, v224);
  v41 = sub_1D2873CA8();
  v345 = sub_1D28789F8();
  v226 = os_log_type_enabled(v41, v345);
  v3 = *(v0 + 1304);
  v1 = v222;
  v9 = *(v0 + 1192);
  v69 = *(v0 + 1072);
  v2 = *(v0 + 944);
  if (v226)
  {
    v313 = *(v0 + 1192);
    v227 = swift_slowAlloc();
    v305 = swift_slowAlloc();
    v349[0] = v305;
    *v227 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v228 = sub_1D28795C8();
    v299 = v3;
    v229 = v1;
    v231 = v230;
    (v326)(v69, v2);
    v232 = sub_1D23D7C84(v228, v231, v349);
    v1 = v229;

    *(v227 + 4) = v232;
    *(v227 + 12) = 2048;
    *(v227 + 14) = v87;
    *(v227 + 22) = 2048;
    *(v227 + 24) = v229;
    _os_log_impl(&dword_1D226E000, v41, v345, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v227, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v305);
    MEMORY[0x1D38A3520](v305, -1, -1);
    MEMORY[0x1D38A3520](v227, -1, -1);

    v293(v299, v313);
    goto LABEL_151;
  }

LABEL_139:

  (v326)(v69, v2);
  v293(v3, v9);
LABEL_151:
  v274 = *(v0 + 208);
  v275 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v274);
  (*(v275 + 72))(v1, v274, v275);
LABEL_155:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
  {
LABEL_156:
    if (!sub_1D2391DAC())
    {
      goto LABEL_157;
    }

LABEL_164:
    v280 = 0;
    goto LABEL_165;
  }

LABEL_157:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
  {
    goto LABEL_164;
  }

  v278 = *(v0 + 475);
  v279 = sub_1D23920F8(1, v20, 0);
  v280 = v278 & v279;
  if ((v278 & 1) != 0 || (v279 & 1) == 0)
  {
LABEL_165:
    *(v0 + 476) = v280;
    v284 = *(v0 + 208);
    v285 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v284);
    v348 = (*(v285 + 56) + **(v285 + 56));
    v286 = swift_task_alloc();
    *(v0 + 1616) = v286;
    *v286 = v0;
    v286[1] = sub_1D23AC2D8;
    v205 = v284;
    v206 = v285;
    v207 = v348;
  }

  else
  {
    *(v0 + 477) = 1;
    v281 = *(v0 + 208);
    v282 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v281);
    v347 = (*(v282 + 64) + **(v282 + 64));
    v283 = swift_task_alloc();
    *(v0 + 1632) = v283;
    *v283 = v0;
    v283[1] = sub_1D23AC860;
    v205 = v281;
    v206 = v282;
    v207 = v347;
  }

  return v207(v205, v206);
}

uint64_t sub_1D23A381C()
{
  v1 = v0[179];
  type metadata accessor for PromptConceptAnalyzer();
  v2 = swift_allocObject();
  v0[183] = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = v1;
  sub_1D2870F78();
  v3 = swift_task_alloc();
  v0[184] = v3;
  *v3 = v0;
  v3[1] = sub_1D23A38FC;
  v4 = v0[178];
  v5 = v0[177];
  v6 = MEMORY[0x1E69E7CC0];

  return sub_1D2783DE8(v5, v4, 1, v6);
}

uint64_t sub_1D23A38FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  *(v6 + 473) = a1;
  *(v6 + 1480) = a2;
  *(v6 + 1488) = a3;
  *(v6 + 1496) = a4;

  v7 = *(v5 + 1456);
  v8 = *(v5 + 1448);

  return MEMORY[0x1EEE6DFA0](sub_1D23A3A30, v8, v7);
}

uint64_t sub_1D23A3A30()
{

  v1 = *(v0 + 1368);
  v2 = *(v0 + 1360);

  return MEMORY[0x1EEE6DFA0](sub_1D23A3AC4, v2, v1);
}

float *sub_1D23A3AC4()
{
  v341 = v1;
  v8 = *(v1 + 1496);
  if (*(v1 + 473) == 3)
  {
    if (v8)
    {
      v9 = *(v1 + 1376);
      v10 = *(v1 + 1184);
      v11 = *(v1 + 1160);
      v12 = *(v1 + 1496);
      v13 = v8;

      sub_1D22BCE64();
      v14 = swift_allocError();
      *v15 = v12;
      *(v15 + 8) = 0;
      *(v15 + 16) = 16;
      *(v1 + 640) = v14;
      v16 = v12;
      sub_1D2878748();
      sub_1D22A576C(v9);

      v17 = v10;
      goto LABEL_37;
    }
  }

  else
  {
  }

  v18 = *(v1 + 664);
  sub_1D2871978();
  if (v18 < 0)
  {
    __break(1u);
LABEL_142:

    (v6)(v18, v3);
    v293(v4, v325);
    goto LABEL_143;
  }

  v19 = *(v1 + 664);
  v20 = *(v1 + 648);
  v6 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  *(v1 + 1504) = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  swift_beginAccess();
  v334 = v1;
  v292 = v19;
  if (v19)
  {
    v0 = 0;
    v21 = *(v1 + 952);
    v3 = v21 + 16;
    v22 = (v21 + 8);
    v320 = v20;
    v325 = *(v1 + 1144);
    while (1)
    {
      v23 = *(v1 + 672);
      v24 = v0 + v23;
      if (__OFADD__(v0, v23))
      {
        break;
      }

      v25 = *(v1 + 1112);
      v26 = *(v1 + 944);
      (*v3)(v25, v20 + v6, v26);
      sub_1D23B75AC(&unk_1ED8A6CA0);
      v5 = sub_1D2877F98();
      (*v22)(v25, v26);
      if ((v5 & 1) == 0)
      {
        v56 = *(v1 + 1376);
        v57 = *(v1 + 1184);
        v11 = *(v1 + 1160);
        v58 = *(v1 + 1136);
        v59 = *(v1 + 1128);
        v60 = *(v334 + 1120);

        sub_1D22BCEB8();
        v61 = swift_allocError();
        *v62 = 3;
        *(v334 + 552) = v61;
        sub_1D2878748();
        sub_1D22A576C(v56);
        (*(v59 + 8))(v58, v60);
        v1 = v334;
        v17 = v57;
        goto LABEL_37;
      }

      v27 = *(*(v20 + 48) + 16);
      v4 = sub_1D2878068();
      v19 = [v27 objectForKey_];

      if (v19)
      {
        v340[0] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA498);
        sub_1D28783D8();
      }

      if (++v0 == *(v1 + 664))
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_120;
  }

  v0 = *(v1 + 664);
LABEL_14:
  if (sub_1D2871938() == v0)
  {
    v28 = *(v1 + 1376);
    v29 = *(v1 + 1184);
    v30 = *(v1 + 1160);
    v326 = *(v334 + 1144);
    v31 = *(v334 + 1136);
    v32 = *(v334 + 1128);
    v33 = *(v334 + 1120);
    v34 = *(v334 + 648);

    *(v334 + 632) = 0;
    sub_1D2878748();
    sub_1D22A576C(v28);
    (*(v32 + 8))(v31, v33);
    v11 = v30;
    sub_1D22BD238(v29, &qword_1EC6DA490);
    v1 = v334;
    v35 = (v11 + *(v326 + 96));
    v37 = *v35;
    v36 = v35[1];
    v38 = (v34 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration);
    *v38 = v37;
    v38[1] = v36;
    sub_1D2870F68();

    goto LABEL_38;
  }

  v39 = &unk_1ED8A5000;
  v40 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration;
  v41 = *(v1 + 648);
  if (!*(v1 + 672))
  {
    goto LABEL_24;
  }

  v42 = *(v41 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration + 8);
  if (!v42)
  {
    goto LABEL_41;
  }

  v43 = (*(v1 + 1160) + *(*(v1 + 1144) + 96));
  if (*v43 == *(v41 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration) && v42 == v43[1])
  {
LABEL_24:
    v45 = *(v1 + 1160);
    v46 = (v41 + v40);
    *v46 = 0;
    v46[1] = 0;

    sub_1D2392B2C();
    if (v47)
    {
      v48 = v1;
      v49 = *(*(v1 + 1160) + 104);
      v50 = *(v49 + 16);
      if (v50)
      {
        v51 = 0;
        v327 = v48[100] + 48;
        v4 = v48[97];
        v5 = v48[96];
        v0 = MEMORY[0x1E69E7CC0];
        do
        {
          if (v51 >= *(v49 + 16))
          {
            __break(1u);
            goto LABEL_128;
          }

          v45 = v334;
          v52 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v6 = *(v4 + 72);
          sub_1D23B8100(v49 + v52 + v6 * v51, *(v334 + 800), type metadata accessor for CuratedPrompt);
          v53 = *(v334 + 800);
          if (*(v327 + *(v5 + 92)) == 255)
          {
            sub_1D23B8168(v53, type metadata accessor for CuratedPrompt);
          }

          else
          {
            sub_1D23B81C8(v53, *(v334 + 784), type metadata accessor for CuratedPrompt);
            v340[0] = v0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D23D838C(0, *(v0 + 16) + 1, 1);
              v0 = v340[0];
            }

            v3 = *(v0 + 16);
            v54 = *(v0 + 24);
            v45 = v0;
            if (v3 >= v54 >> 1)
            {
              sub_1D23D838C(v54 > 1, v3 + 1, 1);
              v45 = v340[0];
            }

            v55 = *(v334 + 784);
            *(v45 + 16) = v3 + 1;
            sub_1D23B81C8(v55, v45 + v52 + v3 * v6, type metadata accessor for CuratedPrompt);
            v0 = v45;
          }

          ++v51;
        }

        while (v50 != v51);
      }

      else
      {
        v0 = MEMORY[0x1E69E7CC0];
      }

      v325 = *(v0 + 16);
      if (v325)
      {
        v75 = 0;
        v76 = *(v334 + 792) + *(*(v334 + 768) + 92);
        v77 = *(*(v334 + 776) + 80);
        v309 = (v0 + ((v77 + 32) & ~v77));
        v316 = *(v334 + 776);
        v321 = v0;
        do
        {
          if (v75 >= *(v0 + 16))
          {
            __break(1u);
LABEL_139:

            (v6)(v76, v5);
            v293(v4, v325);
            v4 = v309;
            goto LABEL_140;
          }

          v6 = *(v334 + 792);
          sub_1D23B8100(&v309[*(v316 + 72) * v75], v6, type metadata accessor for CuratedPrompt);
          v79 = *v76;
          v78 = *(v76 + 8);
          v5 = *(v76 + 16);
          v80 = *(v76 + 24);
          v81 = *(v76 + 32);
          v3 = *(v76 + 40);
          v4 = *(v76 + 48);
          sub_1D23B7D24(*v76, v78, v5, v80, v81, v3, *(v76 + 48));
          sub_1D23B8168(v6, type metadata accessor for CuratedPrompt);
          if (v4 != 255)
          {
            if (v4)
            {

              if (!v78)
              {
                goto LABEL_67;
              }

              v82 = HIBYTE(v78) & 0xF;
              if ((v78 & 0x2000000000000000) == 0)
              {
                v82 = v79 & 0xFFFFFFFFFFFFLL;
              }

              if (!v82)
              {
LABEL_67:
                v83 = *(v334 + 1376);
                v328 = *(v334 + 1184);
                v84 = *(v334 + 1160);
                v85 = *(v334 + 1136);
                v86 = *(v334 + 1128);
                v87 = *(v334 + 1120);

                sub_1D22BCE64();
                v88 = swift_allocError();
                *v89 = xmmword_1D2883E60;
                *(v89 + 16) = -96;
                *(v334 + 624) = v88;
                v11 = v84;
                sub_1D2878748();
                sub_1D22A576C(v83);
                (*(v86 + 8))(v85, v87);
                v1 = v334;
                v17 = v328;
LABEL_37:
                sub_1D22BD238(v17, &qword_1EC6DA490);
LABEL_38:
                __swift_destroy_boxed_opaque_existential_0(v1 + 184);
                sub_1D23B8168(v11, type metadata accessor for ImageGeneration.GenerationParameters);

                v63 = *(v1 + 8);

                return v63();
              }
            }

            else
            {
              sub_1D23B7D88(v79, v78, v5, v80, v81, v3, v4);
            }
          }

          ++v75;
          v0 = v321;
        }

        while (v325 != v75);
      }

      v1 = v334;
    }

    sub_1D23929C8();
    v90 = *(v1 + 1160);
    if (v91)
    {
      v92 = v90[9];
      if (v92)
      {
        v93 = v90[8];
        v94 = *(v1 + 208);
        v95 = *(v1 + 216);
        __swift_project_boxed_opaque_existential_1((v1 + 184), v94);
        v336 = (*(v95 + 40) + **(v95 + 40));
        v96 = swift_task_alloc();
        *(v1 + 1512) = v96;
        *v96 = v1;
        v96[1] = sub_1D23A67D8;
        v97 = *(v1 + 1160);

        return v336(v93, v92, v97, v94, v95);
      }
    }

    v98 = v90[7];
    if (v98)
    {
      v99 = v90[6];
      v100 = *(v1 + 208);
      v101 = *(v1 + 216);
      __swift_project_boxed_opaque_existential_1((v1 + 184), v100);
      v337 = (*(v101 + 32) + **(v101 + 32));
      v102 = swift_task_alloc();
      *(v1 + 1528) = v102;
      *v102 = v1;
      v102[1] = sub_1D23A8AB0;

      return v337(v99, v98, v100, v101);
    }

    v22 = *(v1 + 1408);
    v103 = *(v1 + 208);
    v104 = *(v1 + 216);
    __swift_project_boxed_opaque_existential_1((v1 + 184), v103);
    (*(v104 + 48))(v90, v103, v104);
    if (v22)
    {

      *(v1 + 584) = v22;
      v105 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      if (swift_dynamicCast())
      {
        v3 = *(v1 + 480);
        v106 = *(v1 + 488);
        LODWORD(v0) = *(v1 + 496);
        if (v0 < 0x50)
        {
          *(v1 + 608) = v3;
          sub_1D233E72C(v3, v106, v0);
          if (swift_dynamicCast())
          {
            v325 = v106;
            v107 = *(v1 + 992);
            v108 = v1;
            v109 = *(v1 + 952);
            v110 = v108[118];
            v111 = v108[86];
            (*(v108[88] + 8))(v108[90], v108[87]);
            sub_1D2872648();
            (*(v109 + 16))(v107, v111, v110);
            v112 = v22;
            v4 = sub_1D2873CA8();
            v113 = sub_1D28789F8();

            v317 = v113;
            v114 = os_log_type_enabled(v4, v113);
            v5 = v108[155];
            v1 = v108[150];
            v320 = v108[149];
            v19 = v108[124];
            v20 = v108[119];
            v24 = v108[118];
            if (v114)
            {
              v310 = v108[155];
              v115 = swift_slowAlloc();
              v298 = swift_slowAlloc();
              v304 = swift_slowAlloc();
              v340[0] = v304;
              *v115 = 136315394;
              sub_1D23B75AC(&qword_1ED8A6C90);
              v116 = sub_1D28795C8();
              v295 = v4;
              v118 = v117;
              (*(v20 + 8))(v19, v24);
              v119 = sub_1D23D7C84(v116, v118, v340);

              *(v115 + 4) = v119;
              *(v115 + 12) = 2112;
              v120 = v22;
              v121 = _swift_stdlib_bridgeErrorToNSError();
              *(v115 + 14) = v121;
              *v298 = v121;
              _os_log_impl(&dword_1D226E000, v295, v317, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v115, 0x16u);
              sub_1D22BD238(v298, qword_1EC6DA930);
              MEMORY[0x1D38A3520](v298, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v304);
              MEMORY[0x1D38A3520](v304, -1, -1);
              MEMORY[0x1D38A3520](v115, -1, -1);

              (*(v1 + 8))(v310, v320);
LABEL_121:
              v1 = v334;
              v231 = *(v334 + 1376);
              v169 = *(v334 + 1184);
              v324 = *(v334 + 1136);
              v232 = *(v334 + 1128);
              v233 = *(v334 + 1120);
              *(v334 + 616) = 0;
              sub_1D2878748();
              sub_1D22A576C(v231);
              sub_1D22BCDC4(v3, v325, v0);

              (*(v232 + 8))(v324, v233);
LABEL_94:
              sub_1D22BD238(v169, &qword_1EC6DA490);
              v11 = *(v1 + 1160);
              goto LABEL_38;
            }

LABEL_120:

            (*(v20 + 8))(v19, v24);
            (*(v1 + 8))(v5, v320);
            goto LABEL_121;
          }
        }

        sub_1D22BCDC4(v3, v106, v0);
      }

      v146 = *(v1 + 984);
      v147 = v1;
      v148 = *(v1 + 952);
      v149 = v147[118];
      v150 = v147[86];
      sub_1D2872648();
      (*(v148 + 16))(v146, v150, v149);
      v151 = v22;
      v152 = sub_1D2873CA8();
      v153 = sub_1D28789F8();

      v154 = os_log_type_enabled(v152, v153);
      v155 = v147[154];
      v156 = v147[150];
      v157 = v147[149];
      v158 = v147[123];
      v159 = v147[119];
      v160 = v147[118];
      if (v154)
      {
        v161 = swift_slowAlloc();
        v311 = swift_slowAlloc();
        v319 = swift_slowAlloc();
        v340[0] = v319;
        *v161 = 136315394;
        sub_1D23B75AC(&qword_1ED8A6C90);
        v323 = v157;
        v330 = v155;
        v162 = sub_1D28795C8();
        v164 = v163;
        (*(v159 + 8))(v158, v160);
        v165 = sub_1D23D7C84(v162, v164, v340);

        *(v161 + 4) = v165;
        *(v161 + 12) = 2112;
        v166 = v22;
        v167 = _swift_stdlib_bridgeErrorToNSError();
        *(v161 + 14) = v167;
        *v311 = v167;
        _os_log_impl(&dword_1D226E000, v152, v153, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v161, 0x16u);
        sub_1D22BD238(v311, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v311, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v319);
        MEMORY[0x1D38A3520](v319, -1, -1);
        MEMORY[0x1D38A3520](v161, -1, -1);

        (*(v156 + 8))(v330, v323);
      }

      else
      {

        (*(v159 + 8))(v158, v160);
        (*(v156 + 8))(v155, v157);
      }

      v1 = v334;
      v168 = *(v334 + 1376);
      v169 = *(v334 + 1184);
      v170 = *(v334 + 1136);
      v171 = *(v334 + 1128);
      v172 = *(v334 + 1120);
      *(v334 + 600) = v22;
      v173 = v22;
      sub_1D2878748();
      sub_1D22A576C(v168);

      (*(v171 + 8))(v170, v172);
      goto LABEL_94;
    }

    v0 = *(v1 + 824);
    v5 = v1;
    v143 = *(v1 + 816);
    v144 = *(v5 + 808);
    v20 = *(v5 + 728);
    v145 = *(v5 + 664);
    v39 = *(v5 + 656);
    swift_storeEnumTagMultiPayload();
    sub_1D2878738();
    (*(v143 + 8))(v0, v144);
    if (v145 > 1)
    {
      v65 = 1;
      v1 = v5;
      goto LABEL_43;
    }

    v1 = v5;
    if (*(v5 + 664))
    {
      v69 = 1;
      goto LABEL_48;
    }

LABEL_101:
    v195 = *(v1 + 208);
    v196 = *(v1 + 216);
    __swift_project_boxed_opaque_existential_1((v1 + 184), v195);
    v338 = (*(v196 + 136) + **(v196 + 136));
    v197 = swift_task_alloc();
    *(v1 + 1688) = v197;
    *v197 = v1;
    v197[1] = sub_1D23AEFA0;
    v198 = v195;
    v199 = v196;
    v200 = v338;
LABEL_102:

    return v200(v198, v199);
  }

  if (sub_1D2879618())
  {
    v40 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration;
    v41 = *(v1 + 648);
    goto LABEL_24;
  }

LABEL_41:
  if (*(v1 + 664) > 1)
  {
    v65 = 0;
LABEL_43:
    *(v1 + 474) = v65;
    v66 = *(v1 + 208);
    v67 = *(v1 + 216);
    __swift_project_boxed_opaque_existential_1((v1 + 184), v66);
    v335 = (*(v67 + 128) + **(v67 + 128));
    v68 = swift_task_alloc();
    *(v1 + 1544) = v68;
    *v68 = v1;
    v68[1] = sub_1D23AAC6C;

    return v335(v66, v67);
  }

  if (!v292)
  {
    goto LABEL_101;
  }

  v69 = 0;
LABEL_48:
  *(v1 + 475) = v69;
  swift_beginAccess();
  v70 = 0;
  v6 = "ion; Expected same executor as ";
  v71 = "PreviewGenerationStarted";
  v72 = "predictable-seed-loading";
  v73 = *(v1 + 664);
  while (1)
  {
    *(v1 + 1552) = v70;
    if (v70 >= v73)
    {
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    *(v1 + 1560) = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      goto LABEL_159;
    }

    v74 = *(v1 + 672);
    v0 = v70 + v74;
    *(v1 + 1568) = v70 + v74;
    if (__OFADD__(v70, v74))
    {
      goto LABEL_160;
    }

    v39 = *(v1 + 1136);
    if ((sub_1D2871968() & 1) == 0)
    {
      break;
    }

    v70 = *(v1 + 1560);
    v73 = *(v1 + 664);
    if (v70 == v73)
    {
      goto LABEL_101;
    }
  }

  v122 = sub_1D28786D8();
  v123 = *(v1 + 944);
  v124 = *(v1 + 688);
  v125 = *(v1 + 952) + 16;
  if (v122)
  {
    v126 = *(v1 + 1096);
    sub_1D2872648();
    (*v125)(v126, v124, v123);
    v127 = sub_1D2873CA8();
    v128 = sub_1D28789F8();
    v129 = os_log_type_enabled(v127, v128);
    v130 = *(v1 + 1328);
    v131 = v1;
    v132 = *(v1 + 1200);
    v133 = v131[149];
    v134 = v131[137];
    v135 = v131[119];
    v136 = v131[118];
    if (v129)
    {
      v318 = v128;
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v340[0] = v138;
      *v137 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v322 = v133;
      v329 = v130;
      v139 = sub_1D28795C8();
      v141 = v140;
      (*(v135 + 8))(v134, v136);
      v142 = sub_1D23D7C84(v139, v141, v340);

      *(v137 + 4) = v142;
      *(v137 + 12) = 2048;
      *(v137 + 14) = v70;
      _os_log_impl(&dword_1D226E000, v127, v318, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v137, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v138);
      MEMORY[0x1D38A3520](v138, -1, -1);
      MEMORY[0x1D38A3520](v137, -1, -1);

      (*(v132 + 8))(v329, v322);
    }

    else
    {

      (*(v135 + 8))(v134, v136);
      (*(v132 + 8))(v130, v133);
    }

    v1 = v334;
    goto LABEL_101;
  }

  v174 = *(v1 + 1088);
  sub_1D2872648();
  v175 = *v125;
  *(v1 + 1576) = *v125;
  *(v1 + 1584) = v125 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v331 = v175;
  v175(v174, v124, v123);
  v176 = sub_1D2873CA8();
  v312 = sub_1D28789F8();
  v177 = os_log_type_enabled(v176, v312);
  v178 = *(v1 + 1320);
  v179 = v1;
  v180 = *(v1 + 1200);
  v181 = v179[149];
  v182 = v179[136];
  v183 = v179[119];
  v184 = v179[118];
  if (v177)
  {
    v185 = swift_slowAlloc();
    v296 = swift_slowAlloc();
    v340[0] = v296;
    *v185 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v299 = v181;
    v305 = v178;
    v186 = sub_1D28795C8();
    v188 = v187;
    v294 = v176;
    v189 = *(v183 + 8);
    v189(v182, v184);
    v190 = v189;
    v191 = sub_1D23D7C84(v186, v188, v340);

    *(v185 + 4) = v191;
    *(v185 + 12) = 2048;
    *(v185 + 14) = v70;
    _os_log_impl(&dword_1D226E000, v294, v312, " %s - image index %ld - will generate", v185, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v296);
    MEMORY[0x1D38A3520](v296, -1, -1);
    MEMORY[0x1D38A3520](v185, -1, -1);

    v192 = *(v180 + 8);
    v194 = v299;
    v193 = v305;
  }

  else
  {

    v201 = *(v183 + 8);
    v201(v182, v184);
    v190 = v201;
    v192 = *(v180 + 8);
    v193 = v178;
    v194 = v181;
  }

  v293 = v192;
  v192(v193, v194);
  *(v334 + 1592) = v190;
  v300 = *(v334 + 1112);
  v306 = *(v334 + 1504);
  v202 = *(v334 + 944);
  v297 = *(v334 + 648);
  v203 = *(v334 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v205 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DA198);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v205, 1);
  v6 = v190;

  v331(v300, v297 + v306, v202);
  *(v334 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0);
  v206 = sub_1D2877F98();
  *(v334 + 1608) = v203 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v190(v300, v202);
  if ((v206 & 1) == 0)
  {
    sub_1D22BCEB8();
    v226 = swift_allocError();
    *v227 = 3;
    swift_willThrow();
    *(v334 + 1696) = v226;
    v228 = *(v334 + 208);
    v229 = *(v334 + 216);
    __swift_project_boxed_opaque_existential_1((v334 + 184), v228);
    v332 = (*(v229 + 136) + **(v229 + 136));
    v230 = swift_task_alloc();
    *(v334 + 1704) = v230;
    *v230 = v334;
    v230[1] = sub_1D23B0E18;
    v198 = v228;
    v199 = v229;
    v200 = v332;
    goto LABEL_102;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v207 = sub_1D2878A58();
  v208 = sub_1D2878068();
  v209 = [v207 BOOLForKey_];

  if (v209)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v210 = sub_1D23B9E90(*(v334 + 1160) + *(*(v334 + 1144) + 92), v70);
    if ((v211 & 1) == 0)
    {
      v309 = v210;
      v249 = *(v334 + 1080);
      v250 = *(v334 + 944);
      v251 = *(v334 + 688);
      sub_1D2872648();
      v331(v249, v251, v250);
      v3 = sub_1D2873CA8();
      v252 = sub_1D28789F8();
      v253 = os_log_type_enabled(v3, v252);
      v4 = *(v334 + 1312);
      v325 = *(v334 + 1192);
      v76 = *(v334 + 1080);
      v5 = *(v334 + 944);
      if (!v253)
      {
        goto LABEL_139;
      }

      v254 = v6;
      v255 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      v340[0] = v307;
      *v255 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v256 = sub_1D28795C8();
      v302 = v4;
      v258 = v257;
      v254(v76, v5);
      v259 = sub_1D23D7C84(v256, v258, v340);

      *(v255 + 4) = v259;
      *(v255 + 12) = 2048;
      *(v255 + 14) = v70;
      *(v255 + 22) = 2048;
      v4 = v309;
      *(v255 + 24) = v309;
      _os_log_impl(&dword_1D226E000, v3, v252, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v255, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v307);
      MEMORY[0x1D38A3520](v307, -1, -1);
      MEMORY[0x1D38A3520](v255, -1, -1);

      v293(v302, v325);
      goto LABEL_140;
    }
  }

  v212 = sub_1D2878A58();
  v213 = sub_1D2878068();
  v214 = [v212 BOOLForKey_];

  if (!v214)
  {
    v234 = sub_1D2878A58();
    v235 = sub_1D2878068();
    v236 = [v234 BOOLForKey_];

    if (v236)
    {
      v237 = *(v334 + 1064);
      v238 = *(v334 + 944);
      v239 = *(v334 + 688);
      sub_1D2872648();
      v331(v237, v239, v238);
      v2 = sub_1D2873CA8();
      v240 = sub_1D28789F8();
      v241 = os_log_type_enabled(v2, v240);
      v4 = *(v334 + 1296);
      v325 = *(v334 + 1192);
      v18 = *(v334 + 1064);
      v3 = *(v334 + 944);
      if (!v241)
      {
        goto LABEL_142;
      }

      v242 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v340[0] = v243;
      *v242 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v314 = v4;
      v244 = sub_1D28795C8();
      v245 = v6;
      v247 = v246;
      v245(v18, v3);
      v248 = sub_1D23D7C84(v244, v247, v340);

      *(v242 + 4) = v248;
      *(v242 + 12) = 2048;
      *(v242 + 14) = v70;
      *(v242 + 22) = 2048;
      *(v242 + 24) = 0;
      _os_log_impl(&dword_1D226E000, v2, v240, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v242, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v243);
      MEMORY[0x1D38A3520](v243, -1, -1);
      MEMORY[0x1D38A3520](v242, -1, -1);

      v293(v314, v325);
LABEL_143:
      v260 = v334;
      v277 = *(v334 + 208);
      v278 = *(v334 + 216);
      __swift_project_boxed_opaque_existential_1((v334 + 184), v277);
      (*(v278 + 72))(0, v277, v278);
      goto LABEL_144;
    }

    v260 = v334;
    if (v0 >= *(*(v334 + 680) + 16))
    {
      goto LABEL_144;
    }

    result = sub_1D23CE790();
    if (!result)
    {
      result = &unk_1F4DBDC68;
    }

    if (v0 < 0)
    {
      __break(1u);
    }

    else
    {
      v261 = *(result + 2);
      if (v261)
      {
        v5 = *(*(v334 + 680) + 8 * v0 + 32);
        v262 = *(v334 + 1056);
        v263 = *(v334 + 944);
        v264 = *(v334 + 688);
        v265 = v261 - 1;
        if (v265 >= v0)
        {
          v265 = v0;
        }

        v7 = result[v265 + 8];

        sub_1D2872648();
        v331(v262, v264, v263);
        v72 = sub_1D2873CA8();
        v266 = sub_1D28789F8();
        v267 = os_log_type_enabled(v72, v266);
        v20 = *(v334 + 1288);
        v325 = *(v334 + 1192);
        v39 = *(v334 + 1056);
        v71 = *(v334 + 944);
        if (v267)
        {
          v315 = v6;
          v268 = swift_slowAlloc();
          v308 = swift_slowAlloc();
          v340[0] = v308;
          *v268 = 136315906;
          sub_1D23B75AC(&qword_1ED8A6C90);
          v269 = v5;
          v270 = sub_1D28795C8();
          v303 = v20;
          v272 = v271;
          (v315)(v39, v71);
          v273 = v270;
          v5 = v269;
          v274 = sub_1D23D7C84(v273, v272, v340);

          *(v268 + 4) = v274;
          *(v268 + 12) = 2048;
          *(v268 + 14) = v70;
          *(v268 + 22) = 2048;
          *(v268 + 24) = v269;
          *(v268 + 32) = 2048;
          *(v268 + 34) = v7;
          _os_log_impl(&dword_1D226E000, v72, v266, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v268, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v308);
          MEMORY[0x1D38A3520](v308, -1, -1);
          MEMORY[0x1D38A3520](v268, -1, -1);

          v293(v303, v325);
          goto LABEL_162;
        }

LABEL_161:

        (v6)(v39, v71);
        v293(v20, v325);
LABEL_162:
        v260 = v334;
        v288 = *(v334 + 208);
        v289 = *(v334 + 216);
        __swift_project_boxed_opaque_existential_1((v334 + 184), v288);
        (*(v289 + 72))(v5, v288, v289);
        v290 = *(v334 + 208);
        v291 = *(v334 + 216);
        __swift_project_boxed_opaque_existential_1((v260 + 184), *(v260 + 208));
        (*(v291 + 80))(v290, v291, v7);
        if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_146;
      }
    }

    __break(1u);
    return result;
  }

  v215 = sub_1D23B6AAC(0x8000000000000000);
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  v216 = *(v334 + 1072);
  v217 = *(v334 + 944);
  v218 = *(v334 + 688);
  sub_1D23BA074(v215, *(v334 + 1160) + *(*(v334 + 1144) + 92), v70);
  sub_1D2872648();
  v331(v216, v218, v217);
  v3 = sub_1D2873CA8();
  v219 = sub_1D28789F8();
  v220 = os_log_type_enabled(v3, v219);
  v4 = v215;
  v320 = *(v334 + 1192);
  v327 = *(v334 + 1304);
  v45 = *(v334 + 1072);
  v5 = *(v334 + 944);
  if (v220)
  {
    v313 = v6;
    v221 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    v340[0] = v301;
    *v221 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v222 = sub_1D28795C8();
    v224 = v223;
    (v313)(v45, v5);
    v225 = sub_1D23D7C84(v222, v224, v340);
    v4 = v215;

    *(v221 + 4) = v225;
    *(v221 + 12) = 2048;
    *(v221 + 14) = v70;
    *(v221 + 22) = 2048;
    *(v221 + 24) = v215;
    _os_log_impl(&dword_1D226E000, v3, v219, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v221, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v301);
    MEMORY[0x1D38A3520](v301, -1, -1);
    MEMORY[0x1D38A3520](v221, -1, -1);

    v293(v327, v320);
    goto LABEL_140;
  }

LABEL_128:

  (v6)(v45, v5);
  v293(v327, v320);
LABEL_140:
  v260 = v334;
  v275 = *(v334 + 208);
  v276 = *(v334 + 216);
  __swift_project_boxed_opaque_existential_1((v334 + 184), v275);
  (*(v276 + 72))(v4, v275, v276);
LABEL_144:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
  {
LABEL_145:
    if (!sub_1D2391DAC())
    {
      goto LABEL_146;
    }

LABEL_153:
    v281 = 0;
    goto LABEL_155;
  }

LABEL_146:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
  {
    goto LABEL_153;
  }

  v279 = *(v260 + 475);
  v280 = sub_1D23920F8(1, v0, 0);
  v281 = v279 & v280;
  if (v279)
  {
    v260 = v334;
    goto LABEL_155;
  }

  v260 = v334;
  if (v280)
  {
    *(v334 + 477) = 1;
    v282 = *(v334 + 208);
    v283 = *(v334 + 216);
    __swift_project_boxed_opaque_existential_1((v334 + 184), v282);
    v333 = (*(v283 + 64) + **(v283 + 64));
    v284 = swift_task_alloc();
    *(v334 + 1632) = v284;
    *v284 = v334;
    v284[1] = sub_1D23AC860;
    v198 = v282;
    v199 = v283;
    v200 = v333;
  }

  else
  {
LABEL_155:
    *(v260 + 476) = v281;
    v285 = *(v260 + 208);
    v286 = *(v260 + 216);
    __swift_project_boxed_opaque_existential_1((v260 + 184), v285);
    v339 = (*(v286 + 56) + **(v286 + 56));
    v287 = swift_task_alloc();
    *(v260 + 1616) = v287;
    *v287 = v260;
    v287[1] = sub_1D23AC2D8;
    v198 = v285;
    v199 = v286;
    v200 = v339;
  }

  return v200(v198, v199);
}

uint64_t sub_1D23A67D8()
{
  v2 = *v1;
  *(*v1 + 1520) = v0;

  v3 = *(v2 + 1368);
  v4 = *(v2 + 1360);
  if (v0)
  {
    v5 = sub_1D23AFA68;
  }

  else
  {
    v5 = sub_1D23A6914;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

float *sub_1D23A6914()
{
  v270 = v0;
  v2 = *(v0 + 1160);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = *(v2 + 48);
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v5);
    v257 = (*(v6 + 32) + **(v6 + 32));
    v7 = swift_task_alloc();
    *(v0 + 1528) = v7;
    *v7 = v0;
    v7[1] = sub_1D23A8AB0;

    return v257(v4, v3, v5, v6);
  }

  v9 = *(v0 + 1520);
  v10 = *(v0 + 208);
  v11 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v10);
  (*(v11 + 48))(v2, v10, v11);
  if (v9)
  {

    *(v0 + 584) = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 480);
      v13 = *(v0 + 488);
      v15 = *(v0 + 496);
      if (v15 < 0x50)
      {
        *(v0 + 608) = v14;
        sub_1D233E72C(v14, v13, v15);
        if (swift_dynamicCast())
        {
          v258 = v13;
          v16 = *(v0 + 992);
          v17 = *(v0 + 952);
          v18 = *(v0 + 944);
          v19 = *(v0 + 688);
          (*(*(v0 + 704) + 8))(*(v0 + 720), *(v0 + 696));
          sub_1D2872648();
          (*(v17 + 16))(v16, v19, v18);
          v20 = v9;
          v21 = sub_1D2873CA8();
          v22 = sub_1D28789F8();

          v247 = v22;
          v23 = os_log_type_enabled(v21, v22);
          v24 = *(v0 + 1240);
          v25 = *(v0 + 1200);
          v252 = *(v0 + 1192);
          v26 = *(v0 + 992);
          v27 = *(v0 + 952);
          v28 = *(v0 + 944);
          if (v23)
          {
            v224 = v21;
            v29 = swift_slowAlloc();
            v223 = swift_slowAlloc();
            v237 = swift_slowAlloc();
            v269[0] = v237;
            *v29 = 136315394;
            sub_1D23B75AC(&qword_1ED8A6C90);
            v244 = v24;
            v30 = sub_1D28795C8();
            v230 = v25;
            v32 = v31;
            (*(v27 + 8))(v26, v28);
            v33 = sub_1D23D7C84(v30, v32, v269);

            *(v29 + 4) = v33;
            *(v29 + 12) = 2112;
            v34 = v9;
            v35 = _swift_stdlib_bridgeErrorToNSError();
            *(v29 + 14) = v35;
            *v223 = v35;
            _os_log_impl(&dword_1D226E000, v224, v247, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v29, 0x16u);
            sub_1D22BD238(v223, qword_1EC6DA930);
            MEMORY[0x1D38A3520](v223, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v237);
            MEMORY[0x1D38A3520](v237, -1, -1);
            MEMORY[0x1D38A3520](v29, -1, -1);

            (*(v230 + 8))(v244, v252);
          }

          else
          {

            (*(v27 + 8))(v26, v28);
            (*(v25 + 8))(v24, v252);
          }

          v99 = *(v0 + 1376);
          v66 = *(v0 + 1184);
          v255 = *(v0 + 1136);
          v100 = *(v0 + 1128);
          v101 = *(v0 + 1120);
          *(v0 + 616) = 0;
          sub_1D2878748();
          sub_1D22A576C(v99);
          sub_1D22BCDC4(v14, v258, v15);

          (*(v100 + 8))(v255, v101);
LABEL_20:
          sub_1D22BD238(v66, &qword_1EC6DA490);
          v71 = *(v0 + 1160);
          __swift_destroy_boxed_opaque_existential_0(v0 + 184);
          sub_1D23B8168(v71, type metadata accessor for ImageGeneration.GenerationParameters);

          v72 = *(v0 + 8);

          return v72();
        }
      }

      sub_1D22BCDC4(v14, v13, v15);
    }

    v44 = *(v0 + 984);
    v45 = *(v0 + 952);
    v46 = *(v0 + 944);
    v47 = *(v0 + 688);
    sub_1D2872648();
    (*(v45 + 16))(v44, v47, v46);
    v48 = v9;
    v49 = sub_1D2873CA8();
    v50 = sub_1D28789F8();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 1232);
    v53 = *(v0 + 1200);
    v54 = *(v0 + 1192);
    v55 = *(v0 + 984);
    v56 = *(v0 + 952);
    v57 = *(v0 + 944);
    if (v51)
    {
      v260 = *(v0 + 1192);
      v58 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v248 = swift_slowAlloc();
      v269[0] = v248;
      *v58 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v253 = v52;
      v59 = sub_1D28795C8();
      v238 = v50;
      v61 = v60;
      (*(v56 + 8))(v55, v57);
      v62 = sub_1D23D7C84(v59, v61, v269);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2112;
      v63 = v9;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v64;
      *v245 = v64;
      _os_log_impl(&dword_1D226E000, v49, v238, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v58, 0x16u);
      sub_1D22BD238(v245, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v245, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v248);
      MEMORY[0x1D38A3520](v248, -1, -1);
      MEMORY[0x1D38A3520](v58, -1, -1);

      (*(v53 + 8))(v253, v260);
    }

    else
    {

      (*(v56 + 8))(v55, v57);
      (*(v53 + 8))(v52, v54);
    }

    v65 = *(v0 + 1376);
    v66 = *(v0 + 1184);
    v67 = *(v0 + 1136);
    v68 = *(v0 + 1128);
    v69 = *(v0 + 1120);
    *(v0 + 600) = v9;
    v70 = v9;
    sub_1D2878748();
    sub_1D22A576C(v65);

    (*(v68 + 8))(v67, v69);
    goto LABEL_20;
  }

  v36 = *(v0 + 824);
  v37 = *(v0 + 816);
  v38 = *(v0 + 808);
  v39 = *(v0 + 664);
  v40 = *(v0 + 656);
  swift_storeEnumTagMultiPayload();
  sub_1D2878738();
  (*(v37 + 8))(v36, v38);
  if (v39 > 1)
  {
    *(v0 + 474) = 1;
    v41 = *(v0 + 208);
    v42 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v41);
    v259 = (*(v42 + 128) + **(v42 + 128));
    v43 = swift_task_alloc();
    *(v0 + 1544) = v43;
    *v43 = v0;
    v43[1] = sub_1D23AAC6C;

    return v259(v41, v42);
  }

  if (!*(v0 + 664))
  {
LABEL_39:
    v118 = *(v0 + 208);
    v119 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v118);
    v263 = (*(v119 + 136) + **(v119 + 136));
    v120 = swift_task_alloc();
    *(v0 + 1688) = v120;
    *v120 = v0;
    v121 = sub_1D23AEFA0;
LABEL_40:
    v120[1] = v121;
    v122 = v118;
    v123 = v119;
    v124 = v263;

    return v124(v122, v123);
  }

  *(v0 + 475) = 1;
  swift_beginAccess();
  v73 = 0;
  v74 = "ion; Expected same executor as ";
  v75 = "PreviewGenerationStarted";
  v76 = "predictable-seed-loading";
  v77 = *(v0 + 664);
  v78 = "predictable-seed-storing";
  while (1)
  {
    *(v0 + 1552) = v73;
    if (v73 >= v77)
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    *(v0 + 1560) = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_90;
    }

    v79 = *(v0 + 672);
    v36 = v73 + v79;
    *(v0 + 1568) = v73 + v79;
    if (__OFADD__(v73, v79))
    {
      goto LABEL_91;
    }

    v40 = *(v0 + 1136);
    if ((sub_1D2871968() & 1) == 0)
    {
      break;
    }

    v73 = *(v0 + 1560);
    v77 = *(v0 + 664);
    if (v73 == v77)
    {
      goto LABEL_39;
    }
  }

  v80 = sub_1D28786D8();
  v81 = *(v0 + 944);
  v82 = *(v0 + 688);
  v83 = *(v0 + 952) + 16;
  if (v80)
  {
    v84 = *(v0 + 1096);
    sub_1D2872648();
    (*v83)(v84, v82, v81);
    v85 = sub_1D2873CA8();
    v86 = sub_1D28789F8();
    v87 = os_log_type_enabled(v85, v86);
    v88 = *(v0 + 1328);
    v89 = *(v0 + 1200);
    v90 = *(v0 + 1192);
    v91 = *(v0 + 1096);
    v92 = *(v0 + 952);
    v93 = *(v0 + 944);
    if (v87)
    {
      v249 = v86;
      v94 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      v269[0] = v246;
      *v94 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v254 = v90;
      v261 = v88;
      v95 = sub_1D28795C8();
      v97 = v96;
      (*(v92 + 8))(v91, v93);
      v98 = sub_1D23D7C84(v95, v97, v269);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2048;
      *(v94 + 14) = v73;
      _os_log_impl(&dword_1D226E000, v85, v249, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v94, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v246);
      MEMORY[0x1D38A3520](v246, -1, -1);
      MEMORY[0x1D38A3520](v94, -1, -1);

      (*(v89 + 8))(v261, v254);
    }

    else
    {

      (*(v92 + 8))(v91, v93);
      (*(v89 + 8))(v88, v90);
    }

    goto LABEL_39;
  }

  v102 = *(v0 + 1088);
  sub_1D2872648();
  v103 = *v83;
  *(v0 + 1576) = *v83;
  *(v0 + 1584) = v83 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v262 = v103;
  v103(v102, v82, v81);
  v104 = sub_1D2873CA8();
  v239 = sub_1D28789F8();
  v105 = os_log_type_enabled(v104, v239);
  v106 = *(v0 + 1320);
  v107 = *(v0 + 1200);
  v256 = *(v0 + 1192);
  v108 = *(v0 + 1088);
  v109 = *(v0 + 952);
  v110 = *(v0 + 944);
  if (v105)
  {
    v111 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v269[0] = v225;
    *v111 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v220 = v104;
    v112 = sub_1D28795C8();
    v231 = v106;
    v114 = v113;
    v222 = v107;
    v115 = *(v109 + 8);
    v115(v108, v110);
    v116 = sub_1D23D7C84(v112, v114, v269);

    *(v111 + 4) = v116;
    *(v111 + 12) = 2048;
    *(v111 + 14) = v73;
    _os_log_impl(&dword_1D226E000, v220, v239, " %s - image index %ld - will generate", v111, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v225);
    MEMORY[0x1D38A3520](v225, -1, -1);
    v117 = v115;
    MEMORY[0x1D38A3520](v111, -1, -1);

    v221 = *(v222 + 8);
    v221(v231, v256);
  }

  else
  {

    v117 = *(v109 + 8);
    v117(v108, v110);
    v221 = *(v107 + 8);
    v221(v106, v256);
  }

  v251 = v117;
  *(v0 + 1592) = v117;
  v125 = *(v0 + 1112);
  v126 = *(v0 + 944);
  v232 = *(v0 + 1504);
  v226 = *(v0 + 648);
  v127 = *(v0 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v129 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DA198);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v129, 1);

  v262(v125, v226 + v232, v126);
  *(v0 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0);
  v130 = sub_1D2877F98();
  *(v0 + 1608) = v127 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v251(v125, v126);
  if ((v130 & 1) == 0)
  {
    sub_1D22BCEB8();
    v156 = swift_allocError();
    *v157 = 3;
    swift_willThrow();
    *(v0 + 1696) = v156;
    v118 = *(v0 + 208);
    v119 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v118);
    v263 = (*(v119 + 136) + **(v119 + 136));
    v120 = swift_task_alloc();
    *(v0 + 1704) = v120;
    *v120 = v0;
    v121 = sub_1D23B0E18;
    goto LABEL_40;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v131 = sub_1D2878A58();
  v132 = sub_1D2878068();
  v133 = [v131 BOOLForKey_];

  if (v133)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v134 = sub_1D23B9E90(*(v0 + 1160) + *(*(v0 + 1144) + 92), v73);
    if ((v135 & 1) == 0)
    {
      v242 = v134;
      v175 = *(v0 + 1080);
      v176 = *(v0 + 944);
      v177 = *(v0 + 688);
      sub_1D2872648();
      v262(v175, v177, v176);
      v178 = sub_1D2873CA8();
      v179 = sub_1D28789F8();
      v180 = os_log_type_enabled(v178, v179);
      v181 = *(v0 + 1312);
      v182 = *(v0 + 1192);
      v183 = *(v0 + 1080);
      v184 = *(v0 + 944);
      if (v180)
      {
        v250 = *(v0 + 1192);
        v185 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        v269[0] = v235;
        *v185 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90);
        v186 = sub_1D28795C8();
        v228 = v181;
        v188 = v187;
        v251(v183, v184);
        v189 = sub_1D23D7C84(v186, v188, v269);

        *(v185 + 4) = v189;
        *(v185 + 12) = 2048;
        *(v185 + 14) = v73;
        *(v185 + 22) = 2048;
        v146 = v242;
        *(v185 + 24) = v242;
        _os_log_impl(&dword_1D226E000, v178, v179, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v185, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v235);
        MEMORY[0x1D38A3520](v235, -1, -1);
        MEMORY[0x1D38A3520](v185, -1, -1);

        v221(v228, v250);
      }

      else
      {

        v251(v183, v184);
        v221(v181, v182);
        v146 = v242;
      }

      goto LABEL_73;
    }
  }

  v136 = sub_1D2878A58();
  v137 = sub_1D2878068();
  v138 = [v136 BOOLForKey_];

  if (!v138)
  {
    v158 = sub_1D2878A58();
    v159 = sub_1D2878068();
    v160 = [v158 BOOLForKey_];

    if (v160)
    {
      v161 = *(v0 + 1064);
      v162 = *(v0 + 944);
      v163 = *(v0 + 688);
      sub_1D2872648();
      v262(v161, v163, v162);
      v164 = sub_1D2873CA8();
      v165 = sub_1D28789F8();
      v166 = os_log_type_enabled(v164, v165);
      v167 = *(v0 + 1296);
      v265 = *(v0 + 1192);
      v168 = *(v0 + 1064);
      v169 = *(v0 + 944);
      if (v166)
      {
        v170 = swift_slowAlloc();
        v241 = swift_slowAlloc();
        v269[0] = v241;
        *v170 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90);
        v171 = sub_1D28795C8();
        v234 = v167;
        v173 = v172;
        v251(v168, v169);
        v174 = sub_1D23D7C84(v171, v173, v269);

        *(v170 + 4) = v174;
        *(v170 + 12) = 2048;
        *(v170 + 14) = v73;
        *(v170 + 22) = 2048;
        *(v170 + 24) = 0;
        _os_log_impl(&dword_1D226E000, v164, v165, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v170, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v241);
        MEMORY[0x1D38A3520](v241, -1, -1);
        MEMORY[0x1D38A3520](v170, -1, -1);

        v221(v234, v265);
      }

      else
      {

        v251(v168, v169);
        v221(v167, v265);
      }

      v205 = *(v0 + 208);
      v206 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v205);
      (*(v206 + 72))(0, v205, v206);
      goto LABEL_76;
    }

    if (v36 >= *(*(v0 + 680) + 16))
    {
      goto LABEL_76;
    }

    result = sub_1D23CE790();
    if (!result)
    {
      result = &unk_1F4DBDC68;
    }

    if (v36 < 0)
    {
      __break(1u);
    }

    else
    {
      v190 = *(result + 2);
      if (v190)
      {
        v39 = *(*(v0 + 680) + 8 * v36 + 32);
        v191 = *(v0 + 1056);
        v192 = *(v0 + 944);
        v193 = *(v0 + 688);
        v194 = v190 - 1;
        if (v194 >= v36)
        {
          v194 = v36;
        }

        v1 = result[v194 + 8];

        sub_1D2872648();
        v262(v191, v193, v192);
        v76 = sub_1D2873CA8();
        v266 = sub_1D28789F8();
        v195 = os_log_type_enabled(v76, v266);
        v78 = *(v0 + 1288);
        v74 = *(v0 + 1192);
        v40 = *(v0 + 1056);
        v75 = *(v0 + 944);
        if (v195)
        {
          v243 = *(v0 + 1192);
          v196 = swift_slowAlloc();
          v236 = swift_slowAlloc();
          v269[0] = v236;
          *v196 = 136315906;
          sub_1D23B75AC(&qword_1ED8A6C90);
          v229 = v78;
          v197 = v39;
          v198 = sub_1D28795C8();
          v200 = v199;
          v251(v40, v75);
          v201 = v198;
          v39 = v197;
          v202 = sub_1D23D7C84(v201, v200, v269);

          *(v196 + 4) = v202;
          *(v196 + 12) = 2048;
          *(v196 + 14) = v73;
          *(v196 + 22) = 2048;
          *(v196 + 24) = v197;
          *(v196 + 32) = 2048;
          *(v196 + 34) = v1;
          _os_log_impl(&dword_1D226E000, v76, v266, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v196, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v236);
          MEMORY[0x1D38A3520](v236, -1, -1);
          MEMORY[0x1D38A3520](v196, -1, -1);

          v221(v229, v243);
          goto LABEL_93;
        }

LABEL_92:

        v251(v40, v75);
        v221(v78, v74);
LABEL_93:
        v216 = *(v0 + 208);
        v217 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v216);
        (*(v217 + 72))(v39, v216, v217);
        v218 = *(v0 + 208);
        v219 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v218);
        (*(v219 + 80))(v218, v219, v1);
        if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_78;
      }
    }

    __break(1u);
    return result;
  }

  v139 = sub_1D23B6AAC(0x8000000000000000);
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  v140 = *(v0 + 1072);
  v141 = *(v0 + 944);
  v142 = *(v0 + 688);
  sub_1D23BA074(v139, *(v0 + 1160) + *(*(v0 + 1144) + 92), v73);
  sub_1D2872648();
  v262(v140, v142, v141);
  v143 = sub_1D2873CA8();
  v264 = sub_1D28789F8();
  v144 = os_log_type_enabled(v143, v264);
  v145 = *(v0 + 1304);
  v146 = v139;
  v147 = *(v0 + 1192);
  v148 = *(v0 + 1072);
  v149 = *(v0 + 944);
  if (v144)
  {
    v240 = *(v0 + 1192);
    v150 = swift_slowAlloc();
    v233 = swift_slowAlloc();
    v269[0] = v233;
    *v150 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v151 = sub_1D28795C8();
    v227 = v145;
    v152 = v146;
    v154 = v153;
    v251(v148, v149);
    v155 = sub_1D23D7C84(v151, v154, v269);
    v146 = v152;

    *(v150 + 4) = v155;
    *(v150 + 12) = 2048;
    *(v150 + 14) = v73;
    *(v150 + 22) = 2048;
    *(v150 + 24) = v152;
    _os_log_impl(&dword_1D226E000, v143, v264, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v150, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v233);
    MEMORY[0x1D38A3520](v233, -1, -1);
    MEMORY[0x1D38A3520](v150, -1, -1);

    v221(v227, v240);
  }

  else
  {

    v251(v148, v149);
    v221(v145, v147);
  }

LABEL_73:
  v203 = *(v0 + 208);
  v204 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v203);
  (*(v204 + 72))(v146, v203, v204);
LABEL_76:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
  {
LABEL_77:
    if (!sub_1D2391DAC())
    {
      goto LABEL_78;
    }

LABEL_85:
    v209 = 0;
    goto LABEL_86;
  }

LABEL_78:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
  {
    goto LABEL_85;
  }

  v207 = *(v0 + 475);
  v208 = sub_1D23920F8(1, v36, 0);
  v209 = v207 & v208;
  if ((v207 & 1) != 0 || (v208 & 1) == 0)
  {
LABEL_86:
    *(v0 + 476) = v209;
    v213 = *(v0 + 208);
    v214 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v213);
    v268 = (*(v214 + 56) + **(v214 + 56));
    v215 = swift_task_alloc();
    *(v0 + 1616) = v215;
    *v215 = v0;
    v215[1] = sub_1D23AC2D8;
    v122 = v213;
    v123 = v214;
    v124 = v268;
  }

  else
  {
    *(v0 + 477) = 1;
    v210 = *(v0 + 208);
    v211 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v210);
    v267 = (*(v211 + 64) + **(v211 + 64));
    v212 = swift_task_alloc();
    *(v0 + 1632) = v212;
    *v212 = v0;
    v212[1] = sub_1D23AC860;
    v122 = v210;
    v123 = v211;
    v124 = v267;
  }

  return v124(v122, v123);
}

uint64_t sub_1D23A8AB0()
{
  v2 = *v1;
  *(*v1 + 1536) = v0;

  v3 = *(v2 + 1368);
  v4 = *(v2 + 1360);
  if (v0)
  {
    v5 = sub_1D23B0440;
  }

  else
  {
    v5 = sub_1D23A8BEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

float *sub_1D23A8BEC()
{
  v264 = v0;
  v2 = *(v0 + 1536);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v4);
  (*(v5 + 48))(v3, v4, v5);
  if (v2)
  {

    *(v0 + 584) = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 480);
      v7 = *(v0 + 488);
      v9 = *(v0 + 496);
      if (v9 < 0x50)
      {
        *(v0 + 608) = v8;
        sub_1D233E72C(v8, v7, v9);
        if (swift_dynamicCast())
        {
          v252 = v7;
          v10 = *(v0 + 992);
          v11 = *(v0 + 952);
          v12 = *(v0 + 944);
          v13 = *(v0 + 688);
          (*(*(v0 + 704) + 8))(*(v0 + 720), *(v0 + 696));
          sub_1D2872648();
          (*(v11 + 16))(v10, v13, v12);
          v14 = v2;
          v15 = sub_1D2873CA8();
          v16 = sub_1D28789F8();

          v242 = v16;
          v17 = os_log_type_enabled(v15, v16);
          v18 = *(v0 + 1240);
          v19 = *(v0 + 1200);
          v247 = *(v0 + 1192);
          v20 = *(v0 + 992);
          v21 = *(v0 + 952);
          v22 = *(v0 + 944);
          if (v17)
          {
            v219 = v15;
            v23 = swift_slowAlloc();
            v218 = swift_slowAlloc();
            v232 = swift_slowAlloc();
            v263[0] = v232;
            *v23 = 136315394;
            sub_1D23B75AC(&qword_1ED8A6C90);
            v239 = v18;
            v24 = sub_1D28795C8();
            v225 = v19;
            v26 = v25;
            (*(v21 + 8))(v20, v22);
            v27 = sub_1D23D7C84(v24, v26, v263);

            *(v23 + 4) = v27;
            *(v23 + 12) = 2112;
            v28 = v2;
            v29 = _swift_stdlib_bridgeErrorToNSError();
            *(v23 + 14) = v29;
            *v218 = v29;
            _os_log_impl(&dword_1D226E000, v219, v242, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v23, 0x16u);
            sub_1D22BD238(v218, qword_1EC6DA930);
            MEMORY[0x1D38A3520](v218, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v232);
            MEMORY[0x1D38A3520](v232, -1, -1);
            MEMORY[0x1D38A3520](v23, -1, -1);

            (*(v225 + 8))(v239, v247);
          }

          else
          {

            (*(v21 + 8))(v20, v22);
            (*(v19 + 8))(v18, v247);
          }

          v94 = *(v0 + 1376);
          v61 = *(v0 + 1184);
          v250 = *(v0 + 1136);
          v95 = *(v0 + 1128);
          v96 = *(v0 + 1120);
          *(v0 + 616) = 0;
          sub_1D2878748();
          sub_1D22A576C(v94);
          sub_1D22BCDC4(v8, v252, v9);

          (*(v95 + 8))(v250, v96);
LABEL_16:
          sub_1D22BD238(v61, &qword_1EC6DA490);
          v66 = *(v0 + 1160);
          __swift_destroy_boxed_opaque_existential_0(v0 + 184);
          sub_1D23B8168(v66, type metadata accessor for ImageGeneration.GenerationParameters);

          v67 = *(v0 + 8);

          return v67();
        }
      }

      sub_1D22BCDC4(v8, v7, v9);
    }

    v39 = *(v0 + 984);
    v40 = *(v0 + 952);
    v41 = *(v0 + 944);
    v42 = *(v0 + 688);
    sub_1D2872648();
    (*(v40 + 16))(v39, v42, v41);
    v43 = v2;
    v44 = sub_1D2873CA8();
    v45 = sub_1D28789F8();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 1232);
    v48 = *(v0 + 1200);
    v49 = *(v0 + 1192);
    v50 = *(v0 + 984);
    v51 = *(v0 + 952);
    v52 = *(v0 + 944);
    if (v46)
    {
      v254 = *(v0 + 1192);
      v53 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v263[0] = v243;
      *v53 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v248 = v47;
      v54 = sub_1D28795C8();
      v233 = v45;
      v56 = v55;
      (*(v51 + 8))(v50, v52);
      v57 = sub_1D23D7C84(v54, v56, v263);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2112;
      v58 = v2;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v59;
      *v240 = v59;
      _os_log_impl(&dword_1D226E000, v44, v233, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v53, 0x16u);
      sub_1D22BD238(v240, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v240, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v243);
      MEMORY[0x1D38A3520](v243, -1, -1);
      MEMORY[0x1D38A3520](v53, -1, -1);

      (*(v48 + 8))(v248, v254);
    }

    else
    {

      (*(v51 + 8))(v50, v52);
      (*(v48 + 8))(v47, v49);
    }

    v60 = *(v0 + 1376);
    v61 = *(v0 + 1184);
    v62 = *(v0 + 1136);
    v63 = *(v0 + 1128);
    v64 = *(v0 + 1120);
    *(v0 + 600) = v2;
    v65 = v2;
    sub_1D2878748();
    sub_1D22A576C(v60);

    (*(v63 + 8))(v62, v64);
    goto LABEL_16;
  }

  v30 = *(v0 + 824);
  v31 = *(v0 + 816);
  v32 = *(v0 + 808);
  v33 = *(v0 + 664);
  v34 = *(v0 + 656);
  swift_storeEnumTagMultiPayload();
  sub_1D2878738();
  (*(v31 + 8))(v30, v32);
  if (v33 > 1)
  {
    *(v0 + 474) = 1;
    v35 = *(v0 + 208);
    v36 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v35);
    v253 = (*(v36 + 128) + **(v36 + 128));
    v37 = swift_task_alloc();
    *(v0 + 1544) = v37;
    *v37 = v0;
    v37[1] = sub_1D23AAC6C;

    return v253(v35, v36);
  }

  if (!*(v0 + 664))
  {
LABEL_35:
    v113 = *(v0 + 208);
    v114 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v113);
    v257 = (*(v114 + 136) + **(v114 + 136));
    v115 = swift_task_alloc();
    *(v0 + 1688) = v115;
    *v115 = v0;
    v116 = sub_1D23AEFA0;
LABEL_36:
    v115[1] = v116;
    v117 = v113;
    v118 = v114;
    v119 = v257;

    return v119(v117, v118);
  }

  *(v0 + 475) = 1;
  swift_beginAccess();
  v68 = 0;
  v69 = "ion; Expected same executor as ";
  v70 = "PreviewGenerationStarted";
  v71 = "predictable-seed-loading";
  v72 = *(v0 + 664);
  v73 = "predictable-seed-storing";
  while (1)
  {
    *(v0 + 1552) = v68;
    if (v68 >= v72)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    *(v0 + 1560) = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      goto LABEL_86;
    }

    v74 = *(v0 + 672);
    v30 = v68 + v74;
    *(v0 + 1568) = v68 + v74;
    if (__OFADD__(v68, v74))
    {
      goto LABEL_87;
    }

    v34 = *(v0 + 1136);
    if ((sub_1D2871968() & 1) == 0)
    {
      break;
    }

    v68 = *(v0 + 1560);
    v72 = *(v0 + 664);
    if (v68 == v72)
    {
      goto LABEL_35;
    }
  }

  v75 = sub_1D28786D8();
  v76 = *(v0 + 944);
  v77 = *(v0 + 688);
  v78 = *(v0 + 952) + 16;
  if (v75)
  {
    v79 = *(v0 + 1096);
    sub_1D2872648();
    (*v78)(v79, v77, v76);
    v80 = sub_1D2873CA8();
    v81 = sub_1D28789F8();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 1328);
    v84 = *(v0 + 1200);
    v85 = *(v0 + 1192);
    v86 = *(v0 + 1096);
    v87 = *(v0 + 952);
    v88 = *(v0 + 944);
    if (v82)
    {
      v244 = v81;
      v89 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v263[0] = v241;
      *v89 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v249 = v85;
      v255 = v83;
      v90 = sub_1D28795C8();
      v92 = v91;
      (*(v87 + 8))(v86, v88);
      v93 = sub_1D23D7C84(v90, v92, v263);

      *(v89 + 4) = v93;
      *(v89 + 12) = 2048;
      *(v89 + 14) = v68;
      _os_log_impl(&dword_1D226E000, v80, v244, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v89, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v241);
      MEMORY[0x1D38A3520](v241, -1, -1);
      MEMORY[0x1D38A3520](v89, -1, -1);

      (*(v84 + 8))(v255, v249);
    }

    else
    {

      (*(v87 + 8))(v86, v88);
      (*(v84 + 8))(v83, v85);
    }

    goto LABEL_35;
  }

  v97 = *(v0 + 1088);
  sub_1D2872648();
  v98 = *v78;
  *(v0 + 1576) = *v78;
  *(v0 + 1584) = v78 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v256 = v98;
  v98(v97, v77, v76);
  v99 = sub_1D2873CA8();
  v234 = sub_1D28789F8();
  v100 = os_log_type_enabled(v99, v234);
  v101 = *(v0 + 1320);
  v102 = *(v0 + 1200);
  v251 = *(v0 + 1192);
  v103 = *(v0 + 1088);
  v104 = *(v0 + 952);
  v105 = *(v0 + 944);
  if (v100)
  {
    v106 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    v263[0] = v220;
    *v106 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v215 = v99;
    v107 = sub_1D28795C8();
    v226 = v101;
    v109 = v108;
    v217 = v102;
    v110 = *(v104 + 8);
    v110(v103, v105);
    v111 = sub_1D23D7C84(v107, v109, v263);

    *(v106 + 4) = v111;
    *(v106 + 12) = 2048;
    *(v106 + 14) = v68;
    _os_log_impl(&dword_1D226E000, v215, v234, " %s - image index %ld - will generate", v106, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v220);
    MEMORY[0x1D38A3520](v220, -1, -1);
    v112 = v110;
    MEMORY[0x1D38A3520](v106, -1, -1);

    v216 = *(v217 + 8);
    v216(v226, v251);
  }

  else
  {

    v112 = *(v104 + 8);
    v112(v103, v105);
    v216 = *(v102 + 8);
    v216(v101, v251);
  }

  v246 = v112;
  *(v0 + 1592) = v112;
  v120 = *(v0 + 1112);
  v121 = *(v0 + 944);
  v227 = *(v0 + 1504);
  v221 = *(v0 + 648);
  v122 = *(v0 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v124 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DA198);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v124, 1);

  v256(v120, v221 + v227, v121);
  *(v0 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0);
  v125 = sub_1D2877F98();
  *(v0 + 1608) = v122 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v246(v120, v121);
  if ((v125 & 1) == 0)
  {
    sub_1D22BCEB8();
    v151 = swift_allocError();
    *v152 = 3;
    swift_willThrow();
    *(v0 + 1696) = v151;
    v113 = *(v0 + 208);
    v114 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v113);
    v257 = (*(v114 + 136) + **(v114 + 136));
    v115 = swift_task_alloc();
    *(v0 + 1704) = v115;
    *v115 = v0;
    v116 = sub_1D23B0E18;
    goto LABEL_36;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v126 = sub_1D2878A58();
  v127 = sub_1D2878068();
  v128 = [v126 BOOLForKey_];

  if (v128)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v129 = sub_1D23B9E90(*(v0 + 1160) + *(*(v0 + 1144) + 92), v68);
    if ((v130 & 1) == 0)
    {
      v237 = v129;
      v170 = *(v0 + 1080);
      v171 = *(v0 + 944);
      v172 = *(v0 + 688);
      sub_1D2872648();
      v256(v170, v172, v171);
      v173 = sub_1D2873CA8();
      v174 = sub_1D28789F8();
      v175 = os_log_type_enabled(v173, v174);
      v176 = *(v0 + 1312);
      v177 = *(v0 + 1192);
      v178 = *(v0 + 1080);
      v179 = *(v0 + 944);
      if (v175)
      {
        v245 = *(v0 + 1192);
        v180 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        v263[0] = v230;
        *v180 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90);
        v181 = sub_1D28795C8();
        v223 = v176;
        v183 = v182;
        v246(v178, v179);
        v184 = sub_1D23D7C84(v181, v183, v263);

        *(v180 + 4) = v184;
        *(v180 + 12) = 2048;
        *(v180 + 14) = v68;
        *(v180 + 22) = 2048;
        v141 = v237;
        *(v180 + 24) = v237;
        _os_log_impl(&dword_1D226E000, v173, v174, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v180, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v230);
        MEMORY[0x1D38A3520](v230, -1, -1);
        MEMORY[0x1D38A3520](v180, -1, -1);

        v216(v223, v245);
      }

      else
      {

        v246(v178, v179);
        v216(v176, v177);
        v141 = v237;
      }

      goto LABEL_69;
    }
  }

  v131 = sub_1D2878A58();
  v132 = sub_1D2878068();
  v133 = [v131 BOOLForKey_];

  if (!v133)
  {
    v153 = sub_1D2878A58();
    v154 = sub_1D2878068();
    v155 = [v153 BOOLForKey_];

    if (v155)
    {
      v156 = *(v0 + 1064);
      v157 = *(v0 + 944);
      v158 = *(v0 + 688);
      sub_1D2872648();
      v256(v156, v158, v157);
      v159 = sub_1D2873CA8();
      v160 = sub_1D28789F8();
      v161 = os_log_type_enabled(v159, v160);
      v162 = *(v0 + 1296);
      v259 = *(v0 + 1192);
      v163 = *(v0 + 1064);
      v164 = *(v0 + 944);
      if (v161)
      {
        v165 = swift_slowAlloc();
        v236 = swift_slowAlloc();
        v263[0] = v236;
        *v165 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90);
        v166 = sub_1D28795C8();
        v229 = v162;
        v168 = v167;
        v246(v163, v164);
        v169 = sub_1D23D7C84(v166, v168, v263);

        *(v165 + 4) = v169;
        *(v165 + 12) = 2048;
        *(v165 + 14) = v68;
        *(v165 + 22) = 2048;
        *(v165 + 24) = 0;
        _os_log_impl(&dword_1D226E000, v159, v160, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v165, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v236);
        MEMORY[0x1D38A3520](v236, -1, -1);
        MEMORY[0x1D38A3520](v165, -1, -1);

        v216(v229, v259);
      }

      else
      {

        v246(v163, v164);
        v216(v162, v259);
      }

      v200 = *(v0 + 208);
      v201 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v200);
      (*(v201 + 72))(0, v200, v201);
      goto LABEL_72;
    }

    if (v30 >= *(*(v0 + 680) + 16))
    {
      goto LABEL_72;
    }

    result = sub_1D23CE790();
    if (!result)
    {
      result = &unk_1F4DBDC68;
    }

    if (v30 < 0)
    {
      __break(1u);
    }

    else
    {
      v185 = *(result + 2);
      if (v185)
      {
        v33 = *(*(v0 + 680) + 8 * v30 + 32);
        v186 = *(v0 + 1056);
        v187 = *(v0 + 944);
        v188 = *(v0 + 688);
        v189 = v185 - 1;
        if (v189 >= v30)
        {
          v189 = v30;
        }

        v1 = result[v189 + 8];

        sub_1D2872648();
        v256(v186, v188, v187);
        v71 = sub_1D2873CA8();
        v260 = sub_1D28789F8();
        v190 = os_log_type_enabled(v71, v260);
        v73 = *(v0 + 1288);
        v69 = *(v0 + 1192);
        v34 = *(v0 + 1056);
        v70 = *(v0 + 944);
        if (v190)
        {
          v238 = *(v0 + 1192);
          v191 = swift_slowAlloc();
          v231 = swift_slowAlloc();
          v263[0] = v231;
          *v191 = 136315906;
          sub_1D23B75AC(&qword_1ED8A6C90);
          v224 = v73;
          v192 = v33;
          v193 = sub_1D28795C8();
          v195 = v194;
          v246(v34, v70);
          v196 = v193;
          v33 = v192;
          v197 = sub_1D23D7C84(v196, v195, v263);

          *(v191 + 4) = v197;
          *(v191 + 12) = 2048;
          *(v191 + 14) = v68;
          *(v191 + 22) = 2048;
          *(v191 + 24) = v192;
          *(v191 + 32) = 2048;
          *(v191 + 34) = v1;
          _os_log_impl(&dword_1D226E000, v71, v260, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v191, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v231);
          MEMORY[0x1D38A3520](v231, -1, -1);
          MEMORY[0x1D38A3520](v191, -1, -1);

          v216(v224, v238);
          goto LABEL_89;
        }

LABEL_88:

        v246(v34, v70);
        v216(v73, v69);
LABEL_89:
        v211 = *(v0 + 208);
        v212 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v211);
        (*(v212 + 72))(v33, v211, v212);
        v213 = *(v0 + 208);
        v214 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v213);
        (*(v214 + 80))(v213, v214, v1);
        if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_74;
      }
    }

    __break(1u);
    return result;
  }

  v134 = sub_1D23B6AAC(0x8000000000000000);
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  v135 = *(v0 + 1072);
  v136 = *(v0 + 944);
  v137 = *(v0 + 688);
  sub_1D23BA074(v134, *(v0 + 1160) + *(*(v0 + 1144) + 92), v68);
  sub_1D2872648();
  v256(v135, v137, v136);
  v138 = sub_1D2873CA8();
  v258 = sub_1D28789F8();
  v139 = os_log_type_enabled(v138, v258);
  v140 = *(v0 + 1304);
  v141 = v134;
  v142 = *(v0 + 1192);
  v143 = *(v0 + 1072);
  v144 = *(v0 + 944);
  if (v139)
  {
    v235 = *(v0 + 1192);
    v145 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    v263[0] = v228;
    *v145 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90);
    v146 = sub_1D28795C8();
    v222 = v140;
    v147 = v141;
    v149 = v148;
    v246(v143, v144);
    v150 = sub_1D23D7C84(v146, v149, v263);
    v141 = v147;

    *(v145 + 4) = v150;
    *(v145 + 12) = 2048;
    *(v145 + 14) = v68;
    *(v145 + 22) = 2048;
    *(v145 + 24) = v147;
    _os_log_impl(&dword_1D226E000, v138, v258, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v145, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v228);
    MEMORY[0x1D38A3520](v228, -1, -1);
    MEMORY[0x1D38A3520](v145, -1, -1);

    v216(v222, v235);
  }

  else
  {

    v246(v143, v144);
    v216(v140, v142);
  }

LABEL_69:
  v198 = *(v0 + 208);
  v199 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v198);
  (*(v199 + 72))(v141, v198, v199);
LABEL_72:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
  {
LABEL_73:
    if (!sub_1D2391DAC())
    {
      goto LABEL_74;
    }

LABEL_81:
    v204 = 0;
    goto LABEL_82;
  }

LABEL_74:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
  {
    goto LABEL_81;
  }

  v202 = *(v0 + 475);
  v203 = sub_1D23920F8(1, v30, 0);
  v204 = v202 & v203;
  if ((v202 & 1) != 0 || (v203 & 1) == 0)
  {
LABEL_82:
    *(v0 + 476) = v204;
    v208 = *(v0 + 208);
    v209 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v208);
    v262 = (*(v209 + 56) + **(v209 + 56));
    v210 = swift_task_alloc();
    *(v0 + 1616) = v210;
    *v210 = v0;
    v210[1] = sub_1D23AC2D8;
    v117 = v208;
    v118 = v209;
    v119 = v262;
  }

  else
  {
    *(v0 + 477) = 1;
    v205 = *(v0 + 208);
    v206 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v205);
    v261 = (*(v206 + 64) + **(v206 + 64));
    v207 = swift_task_alloc();
    *(v0 + 1632) = v207;
    *v207 = v0;
    v207[1] = sub_1D23AC860;
    v117 = v205;
    v118 = v206;
    v119 = v261;
  }

  return v119(v117, v118);
}

uint64_t sub_1D23AAC6C()
{
  v1 = *v0;

  v2 = *(v1 + 1368);
  v3 = *(v1 + 1360);

  return MEMORY[0x1EEE6DFA0](sub_1D23AAD8C, v3, v2);
}

float *sub_1D23AAD8C()
{
  v184 = v2;
  *(v2 + 475) = *(v2 + 474);
  swift_beginAccess();
  v5 = 0;
  v6 = "ion; Expected same executor as ";
  v7 = "PreviewGenerationStarted";
  v8 = "predictable-seed-loading";
  v9 = *(v2 + 664);
  v10 = "predictable-seed-storing";
  while (1)
  {
    *(v2 + 1552) = v5;
    if (v5 >= v9)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    *(v2 + 1560) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_65;
    }

    v11 = *(v2 + 672);
    v0 = v5 + v11;
    *(v2 + 1568) = v5 + v11;
    if (__OFADD__(v5, v11))
    {
      goto LABEL_66;
    }

    v1 = *(v2 + 1136);
    if ((sub_1D2871968() & 1) == 0)
    {
      break;
    }

    v5 = *(v2 + 1560);
    v9 = *(v2 + 664);
    if (v5 == v9)
    {
      goto LABEL_14;
    }
  }

  v12 = sub_1D28786D8();
  v13 = *(v2 + 944);
  v14 = *(v2 + 688);
  v15 = *(v2 + 952) + 16;
  if (v12)
  {
    v16 = *(v2 + 1096);
    sub_1D2872648();
    (*v15)(v16, v14, v13);
    v17 = sub_1D2873CA8();
    v18 = sub_1D28789F8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v2 + 1328);
    v21 = *(v2 + 1200);
    v22 = *(v2 + 1192);
    v23 = *(v2 + 1096);
    v24 = *(v2 + 952);
    v25 = *(v2 + 944);
    if (v19)
    {
      v170 = v18;
      v26 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v183[0] = v169;
      *v26 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v173 = v22;
      v175 = v20;
      v27 = sub_1D28795C8();
      v29 = v28;
      (*(v24 + 8))(v23, v25);
      v30 = sub_1D23D7C84(v27, v29, v183);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v5;
      _os_log_impl(&dword_1D226E000, v17, v170, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v169);
      MEMORY[0x1D38A3520](v169, -1, -1);
      MEMORY[0x1D38A3520](v26, -1, -1);

      (*(v21 + 8))(v175, v173);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      (*(v21 + 8))(v20, v22);
    }

LABEL_14:
    v47 = *(v2 + 208);
    v48 = *(v2 + 216);
    __swift_project_boxed_opaque_existential_1((v2 + 184), v47);
    v177 = (*(v48 + 136) + **(v48 + 136));
    v49 = swift_task_alloc();
    *(v2 + 1688) = v49;
    *v49 = v2;
    v50 = sub_1D23AEFA0;
LABEL_15:
    v49[1] = v50;
    v51 = v47;
    v52 = v48;
    v53 = v177;

    return v53(v51, v52);
  }

  v31 = *(v2 + 1088);
  sub_1D2872648();
  v32 = *v15;
  *(v2 + 1576) = *v15;
  *(v2 + 1584) = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v176 = v32;
  v32(v31, v14, v13);
  v33 = sub_1D2873CA8();
  v164 = sub_1D28789F8();
  v34 = os_log_type_enabled(v33, v164);
  v35 = *(v2 + 1320);
  v36 = *(v2 + 1200);
  v174 = *(v2 + 1192);
  v37 = *(v2 + 1088);
  v38 = *(v2 + 952);
  v39 = *(v2 + 944);
  if (v34)
  {
    v40 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v183[0] = v153;
    *v40 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90);
    log = v33;
    v41 = sub_1D28795C8();
    v158 = v35;
    v43 = v42;
    v152 = v36;
    v44 = *(v38 + 8);
    v44(v37, v39);
    v45 = sub_1D23D7C84(v41, v43, v183);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2048;
    *(v40 + 14) = v5;
    _os_log_impl(&dword_1D226E000, log, v164, " %s - image index %ld - will generate", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v153);
    MEMORY[0x1D38A3520](v153, -1, -1);
    v46 = v44;
    MEMORY[0x1D38A3520](v40, -1, -1);

    v151 = *(v152 + 8);
    v151(v158, v174);
  }

  else
  {

    v46 = *(v38 + 8);
    v46(v37, v39);
    v151 = *(v36 + 8);
    v151(v35, v174);
  }

  v172 = v46;
  *(v2 + 1592) = v46;
  v54 = *(v2 + 1112);
  v55 = *(v2 + 944);
  v159 = *(v2 + 1504);
  v154 = *(v2 + 648);
  v56 = *(v2 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v58 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DA198);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v58, 1);

  v176(v54, v154 + v159, v55);
  *(v2 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0);
  v59 = sub_1D2877F98();
  *(v2 + 1608) = v56 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v172(v54, v55);
  if ((v59 & 1) == 0)
  {
    sub_1D22BCEB8();
    v85 = swift_allocError();
    *v86 = 3;
    swift_willThrow();
    *(v2 + 1696) = v85;
    v47 = *(v2 + 208);
    v48 = *(v2 + 216);
    __swift_project_boxed_opaque_existential_1((v2 + 184), v47);
    v177 = (*(v48 + 136) + **(v48 + 136));
    v49 = swift_task_alloc();
    *(v2 + 1704) = v49;
    *v49 = v2;
    v50 = sub_1D23B0E18;
    goto LABEL_15;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v60 = sub_1D2878A58();
  v61 = sub_1D2878068();
  v62 = [v60 BOOLForKey_];

  if (v62)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v63 = sub_1D23B9E90(*(v2 + 1160) + *(*(v2 + 1144) + 92), v5);
    if ((v64 & 1) == 0)
    {
      v167 = v63;
      v104 = *(v2 + 1080);
      v105 = *(v2 + 944);
      v106 = *(v2 + 688);
      sub_1D2872648();
      v176(v104, v106, v105);
      v107 = sub_1D2873CA8();
      v108 = sub_1D28789F8();
      v109 = os_log_type_enabled(v107, v108);
      v110 = *(v2 + 1312);
      v111 = *(v2 + 1192);
      v112 = *(v2 + 1080);
      v113 = *(v2 + 944);
      if (v109)
      {
        v171 = *(v2 + 1192);
        v114 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v183[0] = v162;
        *v114 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90);
        v115 = sub_1D28795C8();
        v156 = v110;
        v117 = v116;
        v172(v112, v113);
        v118 = sub_1D23D7C84(v115, v117, v183);

        *(v114 + 4) = v118;
        *(v114 + 12) = 2048;
        *(v114 + 14) = v5;
        *(v114 + 22) = 2048;
        v75 = v167;
        *(v114 + 24) = v167;
        _os_log_impl(&dword_1D226E000, v107, v108, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v114, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v162);
        MEMORY[0x1D38A3520](v162, -1, -1);
        MEMORY[0x1D38A3520](v114, -1, -1);

        v151(v156, v171);
      }

      else
      {

        v172(v112, v113);
        v151(v110, v111);
        v75 = v167;
      }

      goto LABEL_48;
    }
  }

  v65 = sub_1D2878A58();
  v66 = sub_1D2878068();
  v67 = [v65 BOOLForKey_];

  if (v67)
  {
    v68 = sub_1D23B6AAC(0x8000000000000000);
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v69 = *(v2 + 1072);
    v70 = *(v2 + 944);
    v71 = *(v2 + 688);
    sub_1D23BA074(v68, *(v2 + 1160) + *(*(v2 + 1144) + 92), v5);
    sub_1D2872648();
    v176(v69, v71, v70);
    v72 = sub_1D2873CA8();
    v178 = sub_1D28789F8();
    v73 = os_log_type_enabled(v72, v178);
    v74 = *(v2 + 1304);
    v75 = v68;
    v76 = *(v2 + 1192);
    v77 = *(v2 + 1072);
    v78 = *(v2 + 944);
    if (v73)
    {
      v165 = *(v2 + 1192);
      v79 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v183[0] = v160;
      *v79 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v80 = sub_1D28795C8();
      v155 = v74;
      v81 = v75;
      v83 = v82;
      v172(v77, v78);
      v84 = sub_1D23D7C84(v80, v83, v183);
      v75 = v81;

      *(v79 + 4) = v84;
      *(v79 + 12) = 2048;
      *(v79 + 14) = v5;
      *(v79 + 22) = 2048;
      *(v79 + 24) = v81;
      _os_log_impl(&dword_1D226E000, v72, v178, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v79, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v160);
      MEMORY[0x1D38A3520](v160, -1, -1);
      MEMORY[0x1D38A3520](v79, -1, -1);

      v151(v155, v165);
    }

    else
    {

      v172(v77, v78);
      v151(v74, v76);
    }

LABEL_48:
    v133 = *(v2 + 208);
    v134 = *(v2 + 216);
    __swift_project_boxed_opaque_existential_1((v2 + 184), v133);
    (*(v134 + 72))(v75, v133, v134);
LABEL_51:
    if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
    {
LABEL_52:
      if (!sub_1D2391DAC())
      {
        goto LABEL_53;
      }

LABEL_60:
      v139 = 0;
      goto LABEL_61;
    }

LABEL_53:
    if ((_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
    {
      goto LABEL_60;
    }

    v137 = *(v2 + 475);
    v138 = sub_1D23920F8(1, v0, 0);
    v139 = v137 & v138;
    if (v137 & 1) == 0 && (v138)
    {
      *(v2 + 477) = 1;
      v140 = *(v2 + 208);
      v141 = *(v2 + 216);
      __swift_project_boxed_opaque_existential_1((v2 + 184), v140);
      v181 = (*(v141 + 64) + **(v141 + 64));
      v142 = swift_task_alloc();
      *(v2 + 1632) = v142;
      *v142 = v2;
      v142[1] = sub_1D23AC860;
      v51 = v140;
      v52 = v141;
      v53 = v181;

      return v53(v51, v52);
    }

LABEL_61:
    *(v2 + 476) = v139;
    v143 = *(v2 + 208);
    v144 = *(v2 + 216);
    __swift_project_boxed_opaque_existential_1((v2 + 184), v143);
    v182 = (*(v144 + 56) + **(v144 + 56));
    v145 = swift_task_alloc();
    *(v2 + 1616) = v145;
    *v145 = v2;
    v145[1] = sub_1D23AC2D8;
    v51 = v143;
    v52 = v144;
    v53 = v182;

    return v53(v51, v52);
  }

  v87 = sub_1D2878A58();
  v88 = sub_1D2878068();
  v89 = [v87 BOOLForKey_];

  if (v89)
  {
    v90 = *(v2 + 1064);
    v91 = *(v2 + 944);
    v92 = *(v2 + 688);
    sub_1D2872648();
    v176(v90, v92, v91);
    v93 = sub_1D2873CA8();
    v94 = sub_1D28789F8();
    v95 = os_log_type_enabled(v93, v94);
    v96 = *(v2 + 1296);
    v179 = *(v2 + 1192);
    v97 = *(v2 + 1064);
    v98 = *(v2 + 944);
    if (v95)
    {
      v99 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v183[0] = v166;
      *v99 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90);
      v100 = sub_1D28795C8();
      v161 = v96;
      v102 = v101;
      v172(v97, v98);
      v103 = sub_1D23D7C84(v100, v102, v183);

      *(v99 + 4) = v103;
      *(v99 + 12) = 2048;
      *(v99 + 14) = v5;
      *(v99 + 22) = 2048;
      *(v99 + 24) = 0;
      _os_log_impl(&dword_1D226E000, v93, v94, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v99, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v166);
      MEMORY[0x1D38A3520](v166, -1, -1);
      MEMORY[0x1D38A3520](v99, -1, -1);

      v151(v161, v179);
    }

    else
    {

      v172(v97, v98);
      v151(v96, v179);
    }

    v135 = *(v2 + 208);
    v136 = *(v2 + 216);
    __swift_project_boxed_opaque_existential_1((v2 + 184), v135);
    (*(v136 + 72))(0, v135, v136);
    goto LABEL_51;
  }

  if (v0 >= *(*(v2 + 680) + 16))
  {
    goto LABEL_51;
  }

  result = sub_1D23CE790();
  if (!result)
  {
    result = &unk_1F4DBDC68;
  }

  if (v0 < 0)
  {
    __break(1u);
  }

  else
  {
    v120 = *(result + 2);
    if (v120)
    {
      v3 = *(*(v2 + 680) + 8 * v0 + 32);
      v121 = *(v2 + 1056);
      v122 = *(v2 + 944);
      v123 = *(v2 + 688);
      v124 = v120 - 1;
      if (v124 >= v0)
      {
        v124 = v0;
      }

      v4 = result[v124 + 8];

      sub_1D2872648();
      v176(v121, v123, v122);
      v8 = sub_1D2873CA8();
      v180 = sub_1D28789F8();
      v125 = os_log_type_enabled(v8, v180);
      v10 = *(v2 + 1288);
      v6 = *(v2 + 1192);
      v1 = *(v2 + 1056);
      v7 = *(v2 + 944);
      if (v125)
      {
        v168 = *(v2 + 1192);
        v126 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v183[0] = v163;
        *v126 = 136315906;
        sub_1D23B75AC(&qword_1ED8A6C90);
        v157 = v10;
        v127 = v3;
        v128 = sub_1D28795C8();
        v130 = v129;
        v172(v1, v7);
        v131 = v128;
        v3 = v127;
        v132 = sub_1D23D7C84(v131, v130, v183);

        *(v126 + 4) = v132;
        *(v126 + 12) = 2048;
        *(v126 + 14) = v5;
        *(v126 + 22) = 2048;
        *(v126 + 24) = v127;
        *(v126 + 32) = 2048;
        *(v126 + 34) = v4;
        _os_log_impl(&dword_1D226E000, v8, v180, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v126, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v163);
        MEMORY[0x1D38A3520](v163, -1, -1);
        MEMORY[0x1D38A3520](v126, -1, -1);

        v151(v157, v168);
        goto LABEL_68;
      }

LABEL_67:

      v172(v1, v7);
      v151(v10, v6);
LABEL_68:
      v146 = *(v2 + 208);
      v147 = *(v2 + 216);
      __swift_project_boxed_opaque_existential_1((v2 + 184), v146);
      (*(v147 + 72))(v3, v146, v147);
      v148 = *(v2 + 208);
      v149 = *(v2 + 216);
      __swift_project_boxed_opaque_existential_1((v2 + 184), v148);
      (*(v149 + 80))(v148, v149, v4);
      if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_53;
    }
  }

  __break(1u);
  return result;
}