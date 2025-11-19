uint64_t sub_1B0C564DC()
{
  v1 = *v0;
  v2 = 0x656D614E676F6CLL;
  v3 = 0x697463656E6E6F63;
  v4 = 0x6F7272457473616CLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656E69676E65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0C56588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0C5A5E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0C565B0()
{
  sub_1B0C5A3A4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C565EC()
{
  sub_1B0C5A3A4();

  return sub_1B0E46F38();
}

uint64_t sub_1B0C56628(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B78, &qword_1B0EDC738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C5A3A4();
  sub_1B0E46D48();
  v11 = *v3;
  v12 = v3[1];
  v23 = 0;
  sub_1B0E46928();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v22 = 1;
    sub_1B0E46928();
    v21 = v3[4];
    v20[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B80, &qword_1B0EDC740);
    sub_1B0C5A3F8();
    sub_1B0E46958();
    v16 = v3[5];
    v17 = v3[6];
    v20[14] = 3;
    sub_1B0E468C8();
    v18 = v3[7];
    v19 = v3[8];
    v20[13] = 4;
    sub_1B0E46928();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0C56874(void **a1)
{
  v2 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B0C57E68(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1B0C5691C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1B0C5691C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B0E469A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CommandConnection.RecentErrors.Error(0);
        v6 = sub_1B0E45278();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B0C56C9C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B0C56A48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B0C56A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v28 - v12);
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_1B03C623C(v23, v17, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B03C623C(v20, v13, type metadata accessor for CommandConnection.RecentErrors.Error);
      v24 = *v17;
      v25 = *v13;
      sub_1B038C824(v13, type metadata accessor for CommandConnection.RecentErrors.Error);
      result = sub_1B038C824(v17, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_1B038CBB4(v23, v36, type metadata accessor for CommandConnection.RecentErrors.Error);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1B038CBB4(v26, v20, type metadata accessor for CommandConnection.RecentErrors.Error);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C56C9C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v109 = a1;
  v121 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v9 = *(v121 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v121);
  v112 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v120 = &v104 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v123 = (&v104 - v16);
  result = MEMORY[0x1EEE9AC00](v15);
  v122 = (&v104 - v18);
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v109;
    if (!*v109)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1B0B9443C(a4);
    }

    v124 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v100 = v9;
      while (*a3)
      {
        v101 = *(result + 16 * a4);
        v102 = result;
        v9 = *(result + 16 * (a4 - 1) + 40);
        sub_1B0C575D4(*a3 + *(v100 + 72) * v101, *a3 + *(v100 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v100 + 72) * v9, v5);
        if (v6)
        {
        }

        if (v9 < v101)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1B0B9443C(v102);
        }

        if (a4 - 2 >= *(v102 + 2))
        {
          goto LABEL_123;
        }

        v103 = &v102[16 * a4];
        *v103 = v101;
        *(v103 + 1) = v9;
        v124 = v102;
        sub_1B0B943B0(a4 - 1);
        result = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v110 = a3;
  v108 = a4;
  v106 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v113 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = *a3;
      v25 = *(v9 + 72);
      v5 = v24 + v25 * v23;
      v26 = v122;
      sub_1B03C623C(v5, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
      v27 = v123;
      sub_1B03C623C(v24 + v25 * v22, v123, type metadata accessor for CommandConnection.RecentErrors.Error);
      v28 = *v26;
      v115 = *v27;
      v116 = v28;
      sub_1B038C824(v27, type metadata accessor for CommandConnection.RecentErrors.Error);
      result = sub_1B038C824(v26, type metadata accessor for CommandConnection.RecentErrors.Error);
      v107 = v22;
      v29 = v22 + 2;
      v117 = v25;
      v118 = v19;
      v30 = v24 + v25 * v29;
      while (v19 != v29)
      {
        LODWORD(v119) = v116 < v115;
        v31 = v122;
        sub_1B03C623C(v30, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
        v32 = v6;
        v33 = v123;
        sub_1B03C623C(v5, v123, type metadata accessor for CommandConnection.RecentErrors.Error);
        v34 = *v31;
        v35 = *v33;
        v36 = v33;
        v6 = v32;
        sub_1B038C824(v36, type metadata accessor for CommandConnection.RecentErrors.Error);
        v19 = v118;
        result = sub_1B038C824(v31, type metadata accessor for CommandConnection.RecentErrors.Error);
        ++v29;
        v30 += v117;
        v5 += v117;
        if (((v119 ^ (v34 >= v35)) & 1) == 0)
        {
          v19 = v29 - 1;
          break;
        }
      }

      a3 = v110;
      v9 = v106;
      v22 = v107;
      a4 = v108;
      if (v116 < v115)
      {
        if (v19 < v107)
        {
          goto LABEL_126;
        }

        if (v107 < v19)
        {
          v37 = v117 * (v19 - 1);
          v38 = v19 * v117;
          v118 = v19;
          v39 = v19;
          v40 = v107;
          v41 = v107 * v117;
          do
          {
            if (v40 != --v39)
            {
              v42 = *a3;
              if (!v42)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_1B038CBB4(v42 + v41, v112, type metadata accessor for CommandConnection.RecentErrors.Error);
              if (v41 < v37 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1B038CBB4(v112, v42 + v37, type metadata accessor for CommandConnection.RecentErrors.Error);
              a3 = v110;
            }

            ++v40;
            v37 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v40 < v39);
          v9 = v106;
          v22 = v107;
          a4 = v108;
          v19 = v118;
        }
      }
    }

    v43 = a3[1];
    if (v19 < v43)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v43)
        {
          v44 = a3[1];
        }

        else
        {
          v44 = v22 + a4;
        }

        if (v44 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v44)
        {
          break;
        }
      }
    }

    v45 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v113;
    }

    else
    {
      result = sub_1B0AFF300(0, *(v113 + 2) + 1, 1, v113);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v46 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v46 >> 1)
    {
      result = sub_1B0AFF300((v46 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v47 = &v21[16 * a4];
    *(v47 + 4) = v22;
    *(v47 + 5) = v45;
    v48 = *v109;
    if (!*v109)
    {
      goto LABEL_134;
    }

    v114 = v45;
    if (a4)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v21 + 4);
          v51 = *(v21 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_52:
          if (v53)
          {
            goto LABEL_113;
          }

          v66 = &v21[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_116;
          }

          v72 = &v21[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_120;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v76 = &v21[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_66:
        if (v71)
        {
          goto LABEL_115;
        }

        v79 = &v21[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_118;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v49 - 1;
        if (v49 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v87 = v21;
        v88 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v49 + 40];
        sub_1B0C575D4(*a3 + *(v9 + 72) * v88, *a3 + *(v9 + 72) * *&v21[16 * v49 + 32], *a3 + *(v9 + 72) * v5, v48);
        if (v6)
        {
        }

        if (v5 < v88)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_1B0B9443C(v87);
        }

        if (a4 >= *(v87 + 2))
        {
          goto LABEL_110;
        }

        v89 = &v87[16 * a4];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        v124 = v87;
        result = sub_1B0B943B0(v49);
        v21 = v124;
        v5 = *(v124 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v21[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_111;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_112;
      }

      v61 = &v21[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_114;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_117;
      }

      if (v65 >= v57)
      {
        v83 = &v21[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_121;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v114;
    a4 = v108;
    if (v114 >= v19)
    {
      goto LABEL_95;
    }
  }

  v105 = v6;
  v90 = *a3;
  v91 = *(v9 + 72);
  v92 = *a3 + v91 * (v19 - 1);
  v93 = -v91;
  v107 = v22;
  v94 = v22 - v19;
  v111 = v91;
  v119 = v90;
  v5 = v90 + v19 * v91;
  v114 = v44;
LABEL_85:
  v117 = v92;
  v118 = v19;
  v115 = v5;
  v116 = v94;
  v95 = v92;
  while (1)
  {
    v96 = v122;
    sub_1B03C623C(v5, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
    v97 = v123;
    sub_1B03C623C(v95, v123, type metadata accessor for CommandConnection.RecentErrors.Error);
    a4 = *v96;
    v98 = *v97;
    sub_1B038C824(v97, type metadata accessor for CommandConnection.RecentErrors.Error);
    result = sub_1B038C824(v96, type metadata accessor for CommandConnection.RecentErrors.Error);
    if (a4 >= v98)
    {
LABEL_84:
      v19 = v118 + 1;
      v92 = v117 + v111;
      v94 = v116 - 1;
      v5 = v115 + v111;
      v45 = v114;
      if (v118 + 1 != v114)
      {
        goto LABEL_85;
      }

      v6 = v105;
      v9 = v106;
      a3 = v110;
      v22 = v107;
      if (v114 < v107)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v119)
    {
      break;
    }

    a4 = v120;
    sub_1B038CBB4(v5, v120, type metadata accessor for CommandConnection.RecentErrors.Error);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B038CBB4(a4, v95, type metadata accessor for CommandConnection.RecentErrors.Error);
    v95 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1B0C575D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v8 = *(*(v46 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v46);
  v48 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v9);
  v47 = (&v38 - v12);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = v26;
      v42 = a1;
      v43 = a4;
      v41 = v27;
      do
      {
        v39 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v44 = v29;
        v45 = v30;
        while (1)
        {
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v39;
            goto LABEL_58;
          }

          v31 = a3;
          v40 = v26;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v28 + v27;
          v34 = v47;
          sub_1B03C623C(v33, v47, type metadata accessor for CommandConnection.RecentErrors.Error);
          v35 = v48;
          sub_1B03C623C(v30, v48, type metadata accessor for CommandConnection.RecentErrors.Error);
          v36 = *v34;
          v37 = *v35;
          sub_1B038C824(v35, type metadata accessor for CommandConnection.RecentErrors.Error);
          sub_1B038C824(v34, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v36 < v37)
          {
            break;
          }

          v26 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v45;
            v27 = v41;
            a1 = v42;
          }

          else
          {
            v30 = v45;
            v27 = v41;
            a1 = v42;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          v29 = v44;
          if (v32 <= v43)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        if (v31 < v44 || a3 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
          v26 = v40;
        }

        else
        {
          a2 = v45;
          v27 = v41;
          a1 = v42;
          v26 = v40;
          if (v31 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v43);
    }

LABEL_57:
    v51 = a2;
    v49 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v44 = a3;
      do
      {
        v20 = v47;
        sub_1B03C623C(a2, v47, type metadata accessor for CommandConnection.RecentErrors.Error);
        v21 = a2;
        v22 = v48;
        sub_1B03C623C(a4, v48, type metadata accessor for CommandConnection.RecentErrors.Error);
        v23 = *v20;
        v24 = *v22;
        sub_1B038C824(v22, type metadata accessor for CommandConnection.RecentErrors.Error);
        sub_1B038C824(v20, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v44;
            a2 = v21;
          }

          else
          {
            v25 = v44;
            a2 = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v21 + v14;
          if (a1 < v21 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v44;
          }

          else
          {
            v25 = v44;
            if (a1 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v25);
    }
  }

LABEL_58:
  sub_1B0C57AD0(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_1B0C57AD0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
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

size_t sub_1B0C57BB4(size_t a1, int64_t a2, char a3)
{
  result = sub_1B03C4C6C(a1, a2, a3, *v3, &qword_1EB6E5710, &unk_1B0ED5D10, type metadata accessor for CommandConnection.RecentErrors.Error);
  *v3 = result;
  return result;
}

char *sub_1B0C57BF8(char *a1, int64_t a2, char a3)
{
  result = sub_1B0C57C38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0C57C18(char *a1, int64_t a2, char a3)
{
  result = sub_1B0C57D44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0C57C38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AB8, "<z\b");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B0C57D44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B68, &qword_1B0EDC608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B0C57EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  v64 = a4;
  v61 = type metadata accessor for ConnectionConfiguration(0);
  v5 = *(*(v61 - 1) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v57 - v8;
  v60 = type metadata accessor for ConnectionConfiguration();
  v9 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
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
    v15 = sub_1B0E46138();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v15)
  {
LABEL_17:

    *(a2 + v59) = v12 + 1;
    v19 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_1B03C623C(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, v11, type metadata accessor for ConnectionConfiguration);
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

    v28 = sub_1B0E43BC8();
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
    sub_1B03C623C(v29, v39, type metadata accessor for ConnectionConfiguration);
    v43 = type metadata accessor for CommandConnection();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v61 = swift_allocObject();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v46 = v63;
    swift_unknownObjectRetain();
    swift_retain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v47 = v58;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v56 = CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(v12, v59, v39, v20, sub_1B044AFAC, a2, sub_1B0C5A7B0, a2, v48, v49, v50, v51, v52, v53, v54, v55, sub_1B0C5A7AC, a2, v47, v46, v64, sub_1B041B1D0, v23, 0.0, 1);
    sub_1B038C824(v25, type metadata accessor for ConnectionConfiguration);
    sub_1B038C824(v29, type metadata accessor for ConnectionConfiguration);
    return v56;
  }

  v17 = 0;
  while ((v14 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1B2728410](v17, v14);
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

char *sub_1B0C58360(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v92 = a6;
  v85 = a5;
  v86 = a4;
  v84 = a3;
  v95 = a2;
  v93 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v82[-v9];
  v88 = type metadata accessor for ConnectionState();
  v11 = *(*(v88 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v88);
  v89 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v87 = &v82[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v82[-v16];
  v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v96 = v18;
  v19 = *(v6 + v18);
  if (v19 >> 62)
  {
    goto LABEL_32;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
      v20 = sub_1B0E46138();
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
    v24 = ConnectionState.hasMailboxSelectedOrSelectionIsInProgress(_:)(v93, v95);
    sub_1B038C824(v17, type metadata accessor for ConnectionState);
    if (v24)
    {

      v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      v35 = v94;
      swift_beginAccess();
      sub_1B03B5C80(v35 + v25, v10, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v17 = sub_1B0E439A8();
      v36 = *(v17 - 1);
      v37 = (*(v36 + 48))(v10, 1, v17);
      if (v37 != 1)
      {

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v38 = v93;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v39 = sub_1B0E43988();
        v40 = sub_1B0E458C8();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = v10;
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v99 = v43;
          *v42 = 68158723;
          *(v42 + 4) = 2;
          *(v42 + 8) = 256;
          *(v42 + 10) = *(v35 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v42 + 11) = 2160;
          *(v42 + 13) = 0x786F626C69616DLL;
          *(v42 + 21) = 2085;
          v97 = v38;
          v98 = v95;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v44 = sub_1B0E44BA8();
          v46 = sub_1B0399D64(v44, v45, &v99);

          *(v42 + 23) = v46;
          *(v42 + 31) = 2082;
          v47 = ConnectionID.debugDescription.getter(*(v22 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
          v49 = sub_1B0399D64(v47, v48, &v99);

          *(v42 + 33) = v49;
          _os_log_impl(&dword_1B0389000, v39, v40, "[%.*hhx] Mailbox '%{sensitive,mask.mailbox}s' is selected (or in progress) on connection %{public}s.", v42, 0x29u);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v43, -1, -1);
          v50 = v42;
          v10 = v41;
          MEMORY[0x1B272C230](v50, -1, -1);
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

  v22 = MEMORY[0x1B2728410](v21, v19);
  v23 = v21 + 1;
  if (!__OFADD__(v21, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  v25 = v94;
  v26 = *(v94 + v96);
  if (v26 >> 62)
  {
    if (v26 < 0)
    {
      v51 = *(v94 + v96);
    }

    v37 = sub_1B0E46138();
    if ((v37 & 0x8000000000000000) == 0)
    {
LABEL_38:
      v19 = v37;
      v27 = v93;
      if (v37)
      {
        goto LABEL_16;
      }

LABEL_39:
      v52 = *(v25 + v96);
      if (v52 >> 62)
      {
        goto LABEL_93;
      }

      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (2)
      {
        v54 = MEMORY[0x1E69E7CC0];
        if (v53)
        {
          v100 = MEMORY[0x1E69E7CC0];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = sub_1B04543AC(0, v53 & ~(v53 >> 63), 0);
          if (v53 < 0)
          {
            __break(1u);
            return result;
          }

          v56 = 0;
          v54 = v100;
          do
          {
            if ((v52 & 0xC000000000000001) != 0)
            {
              v57 = *(MEMORY[0x1B2728410](v56, v52) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
              swift_unknownObjectRelease();
            }

            else
            {
              v57 = *(*(v52 + 8 * v56 + 32) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
            }

            v100 = v54;
            v59 = *(v54 + 16);
            v58 = *(v54 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_1B04543AC((v58 > 1), v59 + 1, 1);
              v54 = v100;
            }

            ++v56;
            *(v54 + 16) = v59 + 1;
            *(v54 + 4 * v59 + 32) = v57;
          }

          while (v53 != v56);
        }

        v60 = MailboxesSelectionUsage.sortedIdleConnections(_:)(v54, v92);

        v61 = v60;
        v92 = *(v60 + 2);
        if (!v92)
        {
LABEL_85:

          sub_1B0C4F144(v84, v86);
          return 0;
        }

        v62 = 0;
        v91 = v60 + 32;
        v90 = v60;
LABEL_55:
        if (v62 >= *(v61 + 2))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          v53 = sub_1B0E46138();
          continue;
        }

        break;
      }

      v63 = *&v91[4 * v62];
      v64 = *(v94 + v96);
      if (v64 >> 62)
      {
        if (v64 < 0)
        {
          v81 = *(v94 + v96);
        }

        v52 = sub_1B0E46138();
      }

      else
      {
        v52 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v62;
      v65 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v66 = -v52;
      v67 = 4;
      while (1)
      {
        if (v66 + v67 == 4)
        {

          goto LABEL_54;
        }

        v52 = v67 - 4;
        if ((v64 & 0xC000000000000001) != 0)
        {
          v83 = *(MEMORY[0x1B2728410](v67 - 4, v64) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
          v65 = swift_unknownObjectRelease();
          if (v83 == v63)
          {
LABEL_67:

            v68 = v94;
            v69 = v96;
            swift_beginAccess();
            v70 = *(v68 + v69);
            if ((v70 & 0xC000000000000001) != 0)
            {
              v71 = MEMORY[0x1B2728410](v67 - 4);
            }

            else
            {
              if (v52 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_91;
              }

              v71 = *(v70 + 8 * v67);
            }

            v72 = swift_endAccess();
            v73 = v87;
            (*(*v71 + 304))(v72);

            sub_1B038CBB4(v73, v89, type metadata accessor for ConnectionState);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload > 2)
            {
              if ((EnumCaseMultiPayload - 4) < 2)
              {
                goto LABEL_54;
              }

LABEL_79:
              sub_1B038C824(v89, type metadata accessor for ConnectionState);
              goto LABEL_54;
            }

            if (EnumCaseMultiPayload < 2)
            {
              goto LABEL_79;
            }

            sub_1B038C824(v89, type metadata accessor for ConnectionState);
            v75 = v94;
            v76 = v96;
            swift_beginAccess();
            v77 = *(v75 + v76);
            if ((v77 & 0xC000000000000001) != 0)
            {
              v78 = MEMORY[0x1B2728410](v67 - 4);
            }

            else
            {
              if (v52 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_92;
              }

              v78 = *(v77 + 8 * v67);
            }

            v79 = swift_endAccess();
            (*(*v78 + 304))(v79);

            v80 = ConnectionState.anyMailboxSelectionIsInProgress.getter();
            sub_1B038C824(v17, type metadata accessor for ConnectionState);
            if ((v80 & 1) == 0)
            {
              v65 = sub_1B0C4FDEC(v67 - 4, v94, v93, v95);
              if (v65)
              {
                goto LABEL_89;
              }
            }

LABEL_54:
            v61 = v90;
            if (v62 == v92)
            {
              goto LABEL_85;
            }

            goto LABEL_55;
          }
        }

        else
        {
          if (v52 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            v22 = v65;

            return v22;
          }

          if (*(*(v64 + 8 * v67) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v63)
          {
            goto LABEL_67;
          }
        }

        ++v67;
        if (__OFADD__(v52, 1))
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
  v27 = v93;
  if (!v19)
  {
    goto LABEL_39;
  }

LABEL_16:
  v28 = 0;
  while (1)
  {
    v29 = v96;
    swift_beginAccess();
    v30 = *(v25 + v29);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1B2728410](v28);
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
    sub_1B038C824(v17, type metadata accessor for ConnectionState);
    if (v33)
    {
      v34 = sub_1B0C4FDEC(v28, v25, v27, v95);
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

uint64_t sub_1B0C58E34(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v46 = a7;
  v47 = a5;
  v49 = a4;
  v14 = type metadata accessor for ConnectionState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v42 - v20;
  sub_1B0C4FB40();
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
    a2 = sub_1B0E46138();
  }

  else
  {
    a2 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = 0;
  while (1)
  {
    if (a2 == v25)
    {

      sub_1B0C58360(a3, v49, v47, v43, v46 & 1, v44);

      return 0;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1B2728410](v25, v21);
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
    v8 = ConnectionState.hasMailboxSelected(_:)(a3, v49);

    sub_1B038C824(v17, type metadata accessor for ConnectionState);
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
  v24 = sub_1B0E46138();
LABEL_4:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = 0;
  while (v24 != v25)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v49 = *(MEMORY[0x1B2728410](v25, v8) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
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
  sub_1B03B5C80(&v17[v29], v21, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v31 = sub_1B0E439A8();
  v32 = *(v31 - 8);
  result = (*(v32 + 48))(v21, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v34 = sub_1B0E43988();
    v35 = sub_1B0E458E8();
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
      v40 = sub_1B0399D64(v38, v39, &v50);

      *(v37 + 13) = v40;
      _os_log_impl(&dword_1B0389000, v34, v35, "[%.*hhx] Attempt to send on connection %{public}s -- but it does not exist.", v37, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B272C230](v25, -1, -1);
      MEMORY[0x1B272C230](v37, -1, -1);
    }

    else
    {
    }

    (*(v32 + 8))(v21, v31);
    sub_1B0C5A084();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
    return v25;
  }

  return result;
}

uint64_t sub_1B0C59370(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v85 = &v78[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v78[-v19];
  v21 = type metadata accessor for ConnectionState();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v78[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 0x100000000) != 0)
  {
    v59 = sub_1B0C58360(a2, a3, a4, a5, a6 & 1, a7);
    if (!v59)
    {
      return 0;
    }

    v60 = (*(*v59 + 576))(v59);

    return v60;
  }

  v80 = v24;
  v81 = a3;
  v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v83 = a2;
  v84 = v25;
  v26 = *(v7 + v25);
  v82 = v20;
  if (v26 >> 62)
  {
    goto LABEL_38;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = 4;
  while (1)
  {
    if (v28 - v27 == 4)
    {

      v61 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v62 = v85;
      sub_1B03B5C80(v7 + v61, v85, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v63 = sub_1B0E439A8();
      v64 = *(v63 - 8);
      result = (*(v64 + 48))(v62, 1, v63);
      if (result == 1)
      {
        goto LABEL_43;
      }

      v65 = v7;

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v66 = sub_1B0E43988();
      v67 = sub_1B0E458E8();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v86 = v69;
        *v68 = 68158210;
        *(v68 + 4) = 2;
        *(v68 + 8) = 256;
        *(v68 + 10) = *(v65 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v68 + 11) = 2082;
        v70 = ConnectionID.debugDescription.getter(a1);
        v72 = sub_1B0399D64(v70, v71, &v86);

        *(v68 + 13) = v72;
        _os_log_impl(&dword_1B0389000, v66, v67, "[%.*hhx] Attempt to send on connection %{public}s -- but it does not exist.", v68, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x1B272C230](v69, -1, -1);
        MEMORY[0x1B272C230](v68, -1, -1);
      }

      else
      {
      }

      (*(v64 + 8))(v62, v63);
      v60 = 0;
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
      v27 = sub_1B0E46138();
      goto LABEL_4;
    }

    v79 = *(MEMORY[0x1B2728410](v28 - 4, v26) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    swift_unknownObjectRelease();
    if (v79 == a1)
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

  v30 = v84;
  swift_beginAccess();
  v31 = *(v7 + v30);
  v33 = v82;
  v32 = v83;
  v34 = v81;
  if ((v31 & 0xC000000000000001) != 0)
  {
    v35 = v7;
    v36 = MEMORY[0x1B2728410](v28 - 4);
LABEL_16:
    v37 = swift_endAccess();
    v38 = v80;
    (*(*v36 + 304))(v37);

    v39 = ConnectionState.hasMailboxSelectedOrSelectionIsInProgress(_:)(v32, v34);
    sub_1B038C824(v38, type metadata accessor for ConnectionState);
    if (v39)
    {
      v40 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_1B03B5C80(v35 + v40, v33, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v41 = sub_1B0E439A8();
      v85 = *(v41 - 8);
      v42 = *(v85 + 6);
      v80 = v41;
      result = v42(v33, 1);
      if (result == 1)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v44 = v35;

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v45 = v83;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v46 = sub_1B0E43988();
      v47 = sub_1B0E458C8();

      v79 = v47;
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v46;
        v49 = v34;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v88 = v51;
        *v50 = 68158723;
        *(v50 + 4) = 2;
        *(v50 + 8) = 256;
        *(v50 + 10) = *(v44 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v50 + 11) = 2160;
        *(v50 + 13) = 0x786F626C69616DLL;
        *(v50 + 21) = 2085;
        v86 = v45;
        v87 = v49;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v52 = sub_1B0E44BA8();
        v54 = sub_1B0399D64(v52, v53, &v88);

        *(v50 + 23) = v54;
        *(v50 + 31) = 2082;
        v55 = ConnectionID.debugDescription.getter(a1);
        v57 = sub_1B0399D64(v55, v56, &v88);

        *(v50 + 33) = v57;
        v58 = v48;
        _os_log_impl(&dword_1B0389000, v48, v79, "[%.*hhx] Created mailbox affinity for '%{sensitive,mask.mailbox}s' on connection %{public}s with mailbox already selected.", v50, 0x29u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v51, -1, -1);
        v33 = v82;
        MEMORY[0x1B272C230](v50, -1, -1);
      }

      else
      {
      }

      (*(v85 + 1))(v33, v80);
      v74 = v84;
      result = swift_beginAccess();
      v75 = *(v44 + v74);
      if ((v75 & 0xC000000000000001) != 0)
      {
        goto LABEL_41;
      }

      if (v29 < *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v76 = *(v75 + 8 * v28);

        goto LABEL_34;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v60 = 1;
LABEL_29:
    sub_1B0C5A084();
    swift_allocError();
    *v73 = v60;
    swift_willThrow();
    return v60;
  }

  if (v29 < *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = v7;
    v36 = *(v31 + 8 * v28);

    goto LABEL_16;
  }

  __break(1u);
LABEL_41:
  v76 = MEMORY[0x1B2728410](v28 - 4);
LABEL_34:
  v77 = swift_endAccess();
  v60 = (*(*v76 + 576))(v77);

  return v60;
}

uint64_t sub_1B0C59C00(uint64_t a1, NSObject *a2, uint64_t a3, char a4, uint64_t a5)
{
  v40 = a5;
  v10 = type metadata accessor for ClientCommand(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38[-v15];
  v17 = type metadata accessor for Command();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B03C623C(a1, v20, type metadata accessor for Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v22 = *v20;
      v23 = *(v20 + 4);
      v24 = *(v20 + 1);
      v25 = v20[4];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v41 = v23;
      v5 = sub_1B0C59370(v22 | (v23 << 32), v24, v25, a2, a3, a4 & 1, v40);
      swift_bridgeObjectRelease_n();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v5 = sub_1B0C4EAFC(*v20, v20[2]);
    }

    else
    {
      sub_1B0C4F144(a2, a3);
      return 0;
    }

    return v5;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B038CBB4(v20, v16, type metadata accessor for ClientCommand);
    v5 = sub_1B0C4E284(v16, a2, a3, a4 & 1);
    sub_1B038C824(v16, type metadata accessor for ClientCommand);
    return v5;
  }

  v26 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E68, &unk_1B0EDC5C0) + 48));
  v27 = *v26;
  v28 = *(v26 + 4);
  v29 = *(v26 + 1);
  v39 = v26[4];
  sub_1B038CBB4(v20, v14, type metadata accessor for ClientCommand);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = v28;
  v30 = v42;
  v31 = sub_1B0C58E34(v14, v27 | (v28 << 32), v29, v39, a2, a3, a4 & 1, v40);
  v33 = v32;

  if (v30)
  {

    sub_1B038C824(v14, type metadata accessor for ClientCommand);
    return v5;
  }

  if (v33)
  {

    v5 = 0;
LABEL_20:
    sub_1B038C824(v14, type metadata accessor for ClientCommand);
    return v5;
  }

  v35 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  result = swift_beginAccess();
  v36 = *(v5 + v35);
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1B2728410](v31);
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

unint64_t sub_1B0C5A084()
{
  result = qword_1EB6E5B40;
  if (!qword_1EB6E5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5B40);
  }

  return result;
}

unint64_t sub_1B0C5A194()
{
  result = qword_1EB6DB9A0;
  if (!qword_1EB6DB9A0)
  {
    sub_1B0E441D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB9A0);
  }

  return result;
}

unint64_t sub_1B0C5A240()
{
  result = qword_1EB6DC2F0;
  if (!qword_1EB6DC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC2F0);
  }

  return result;
}

uint64_t sub_1B0C5A294(uint64_t a1, int a2)
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

uint64_t sub_1B0C5A2DC(uint64_t result, int a2, int a3)
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

unint64_t sub_1B0C5A350()
{
  result = qword_1EB6E5B70;
  if (!qword_1EB6E5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5B70);
  }

  return result;
}

unint64_t sub_1B0C5A3A4()
{
  result = qword_1EB6DC308;
  if (!qword_1EB6DC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC308);
  }

  return result;
}

unint64_t sub_1B0C5A3F8()
{
  result = qword_1EB6DB458;
  if (!qword_1EB6DB458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5B80, &qword_1B0EDC740);
    sub_1B0C5A47C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB458);
  }

  return result;
}

unint64_t sub_1B0C5A47C()
{
  result = qword_1EB6DD058;
  if (!qword_1EB6DD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD058);
  }

  return result;
}

unint64_t sub_1B0C5A4E4()
{
  result = qword_1EB6E5B88;
  if (!qword_1EB6E5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5B88);
  }

  return result;
}

unint64_t sub_1B0C5A53C()
{
  result = qword_1EB6DC2F8;
  if (!qword_1EB6DC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC2F8);
  }

  return result;
}

unint64_t sub_1B0C5A594()
{
  result = qword_1EB6DC300;
  if (!qword_1EB6DC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC300);
  }

  return result;
}

uint64_t sub_1B0C5A5E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656E69676E65 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEB00000000736E6FLL || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F7272457473616CLL && a2 == 0xE900000000000072 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B0F2DB20 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0C5A7B4(uint64_t a1, int a2)
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

uint64_t sub_1B0C5A7FC(uint64_t result, int a2, int a3)
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

void sub_1B0C5A84C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E59D0, &unk_1B0ED9EC0);
    v2 = sub_1B0E466A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  v7 = v2 + 64;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1B03D2CA8(*(a1 + 56) + 40 * v12, v39);
    *&v38 = v15;
    *(&v38 + 1) = v14;
    *&v35[40] = v38;
    v36[0] = v39[0];
    v36[1] = v39[1];
    v37 = v40;
    v26 = v15;
    v27 = v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_dynamicCast();
    sub_1B0450C74(v36, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B98, &qword_1B0EDC8E8);
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_1B0392800(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_1B0392800(v35, v25);
    v16 = *(v2 + 40);
    v17 = sub_1B0E461B8();
    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v28;
    *(v10 + 16) = v29;
    *(v10 + 32) = v30;
    sub_1B0392800(v25, *(v2 + 56) + 32 * v9);
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1B0C5AB58()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C5ABA4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C5ABEC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t sub_1B0C5AC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v40 = a2;
  v42 = a7;
  v12 = sub_1B0E43108();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(a1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(a1 + 16, *(a1 + 40));
  sub_1B0E45E38();
  swift_endAccess();
  if (BYTE4(v43) == 5)
  {
    swift_beginAccess();
    v17 = *(a6 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(a6 + 16, *(a6 + 40));
    sub_1B0E45E38();
    result = swift_endAccess();
    v19 = v43;
    if ((v43 & 0xFF00000000) == 0x500000000)
    {
      v20 = 0;
    }

    else
    {
      v25 = v44;
      (*(v41 + 16))(v15, a3, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BA0, &unk_1B0EDC8F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0EC60E0;
      *(inited + 32) = 0x7472617473;
      *(inited + 40) = 0xE500000000000000;
      v27 = sub_1B0C5B1D4(v40, v15, v25);
      v28 = MEMORY[0x1E69E7360];
      v29 = MEMORY[0x1E69E7368];
      *(inited + 48) = v27;
      *(inited + 88) = 0x746E756F636361;
      *(inited + 96) = 0xE700000000000000;
      v30 = MEMORY[0x1E69E6158];
      v31 = MEMORY[0x1E69E6160];
      *(inited + 72) = v28;
      *(inited + 80) = v29;
      *(inited + 128) = v30;
      *(inited + 136) = v31;
      *(inited + 104) = a4;
      *(inited + 112) = a5;
      *(inited + 144) = 1684957547;
      *(inited + 152) = 0xE400000000000000;
      if ((BYTE4(v19) - 2) >= 3u)
      {
        v32 = 3;
      }

      else
      {
        v32 = qword_1B0EDC9F8[(BYTE4(v19) - 2)];
      }

      *(inited + 184) = v28;
      *(inited + 192) = v29;
      *(inited + 160) = v32;
      *(inited + 200) = 1668184435;
      *(inited + 208) = 0xE400000000000000;
      v38 = MEMORY[0x1E69E7670];
      *(inited + 240) = MEMORY[0x1E69E7668];
      *(inited + 248) = v38;
      *(inited + 216) = v19;
      *(inited + 256) = 0x746E657665;
      *(inited + 264) = 0xE500000000000000;
      v39 = MEMORY[0x1E69E6538];
      *(inited + 296) = MEMORY[0x1E69E6530];
      *(inited + 304) = v39;
      *(inited + 272) = 2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = sub_1B0C3CC10(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A50, &unk_1B0EDBF20);
      swift_arrayDestroy();
      result = (*(v41 + 8))(v15, v12);
    }
  }

  else
  {
    v21 = v43 | (BYTE4(v43) << 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BA0, &unk_1B0EDC8F0);
    v22 = swift_initStackObject();
    *(v22 + 32) = 0x746E756F636361;
    *(v22 + 16) = xmmword_1B0EC4E20;
    v23 = MEMORY[0x1E69E6160];
    *(v22 + 72) = MEMORY[0x1E69E6158];
    *(v22 + 80) = v23;
    *(v22 + 40) = 0xE700000000000000;
    *(v22 + 48) = a4;
    *(v22 + 56) = a5;
    *(v22 + 88) = 1684957547;
    *(v22 + 96) = 0xE400000000000000;
    if ((BYTE4(v21) - 2) >= 3u)
    {
      v24 = 3;
    }

    else
    {
      v24 = qword_1B0EDC9F8[(BYTE4(v21) - 2)];
    }

    v33 = MEMORY[0x1E69E7368];
    *(v22 + 128) = MEMORY[0x1E69E7360];
    *(v22 + 136) = v33;
    *(v22 + 104) = v24;
    v34 = MEMORY[0x1E69E7668];
    *(v22 + 144) = 1668184435;
    *(v22 + 152) = 0xE400000000000000;
    v35 = MEMORY[0x1E69E7670];
    *(v22 + 184) = v34;
    *(v22 + 192) = v35;
    *(v22 + 160) = v21;
    *(v22 + 200) = 0x746E657665;
    *(v22 + 208) = 0xE500000000000000;
    v36 = MEMORY[0x1E69E6538];
    *(v22 + 240) = MEMORY[0x1E69E6530];
    *(v22 + 248) = v36;
    *(v22 + 216) = 1;
    v37 = v22;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = sub_1B0C3CC10(v37);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A50, &unk_1B0EDBF20);
    result = swift_arrayDestroy();
  }

  *v42 = v20;
  return result;
}

uint64_t sub_1B0C5B0C0@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(sub_1B0E43108() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);

  return sub_1B0C5AC1C(v7, v8, v1 + v4, v10, v11, v12, a1);
}

uint64_t sub_1B0C5B170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Engine.Logger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C5B1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B0E43108();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
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
      sub_1B0E43058();
      v17 = *(v7 + 8);
      v17(v11, v6);
      sub_1B0E430B8();
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

uint64_t sub_1B0C5B39C(uint64_t a1)
{
  v2 = type metadata accessor for Engine.Logger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0C5B428(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1B0C5B484(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B0C5B4F8()
{
  result = qword_1EB6E5BB0;
  if (!qword_1EB6E5BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5BB0);
  }

  return result;
}

uint64_t AtomicFlag.storage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AtomicFlag.init()()
{
  type metadata accessor for AtomicFlag.Storage();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t type metadata accessor for AtomicFlag.Storage()
{
  result = qword_1EB6DECA8;
  if (!qword_1EB6DECA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall AtomicFlag.testAndSet()()
{
  if (qword_1EB6DEAC0 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  return atomicFlag_testAndSet(v0 + 16);
}

_UNKNOWN **atomicFlag_testAndSet.unsafeMutableAddressor()
{
  if (qword_1EB6DEAC0 != -1)
  {
    swift_once();
  }

  return &atomicFlag_testAndSet;
}

Swift::Void __swiftcall AtomicFlag.clear()()
{
  if (qword_1EB6E5BB8 != -1)
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
  if (qword_1EB6E5BB8 != -1)
  {
    swift_once();
  }

  return &atomicFlag_clear;
}

void *sub_1B0C5B7E0(uint64_t a1, const char *a2, void *a3)
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

uint64_t RandomAccessCollection.binarySearch(for:using:)@<X0>(char *a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a1;
  v65 = a3;
  v63 = a2;
  v46 = a6;
  v61 = a5;
  v7 = *(a5 + 8);
  v8 = *(v7 + 8);
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v46 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  if (sub_1B0E456B8())
  {
    v25 = *(v47 + 56);
    v26 = v46;

    return v25(v26, 1, 1, v13);
  }

  else
  {
    v57 = AssociatedTypeWitness;
    sub_1B0E45668();
    sub_1B0E456C8();
    v48 = v7;
    sub_1B0E44878();
    v28 = *(v47 + 8);
    v56 = v18;
    v58 = v28;
    v59 = v47 + 8;
    v28(v18, v13);
    v66 = v8;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = sub_1B0E44928();
    v30 = v62;
    v31 = v64;
    if (v29)
    {
      v32 = v51;
      v51 += 8;
      v52 = (v32 + 16);
      v49 = (v47 + 32);
      v53 = v21;
      v54 = v13;
      v50 = a4;
      do
      {
        sub_1B0E455F8();
        sub_1B0E455E8();
        v37 = sub_1B0E457B8();
        v38 = v60;
        v39 = v57;
        v62 = *v52;
        (v62)(v60);
        (v37)(v67, 0);
        LOBYTE(v37) = v63(v38, v31);
        v40 = *v51;
        (*v51)(v38, v39);
        if (v37)
        {
          v33 = v56;
          sub_1B0E456A8();
          v34 = v24;
          v21 = v53;
          v13 = v54;
        }

        else
        {
          v41 = sub_1B0E457B8();
          (v62)(v38);
          (v41)(v67, 0);
          LOBYTE(v41) = v63(v64, v38);
          v40(v38, v39);
          if ((v41 & 1) == 0)
          {
            v43 = v54;
            v44 = v58;
            v58(v53, v54);
            v44(v24, v43);
            v45 = v46;
            (*(v47 + 32))(v46, v30, v43);
            return (*(v47 + 56))(v45, 0, 1, v43);
          }

          v33 = v56;
          sub_1B0E44878();
          v21 = v53;
          v13 = v54;
          v34 = v53;
        }

        v35 = v58;
        v58(v30, v13);
        v35(v34, v13);
        (*v49)(v34, v33, v13);
        v36 = sub_1B0E44928();
        v31 = v64;
      }

      while ((v36 & 1) != 0);
    }

    v42 = v58;
    v58(v21, v13);
    v42(v24, v13);
    return (*(v47 + 56))(v46, 1, 1, v13);
  }
}

uint64_t RandomAccessCollection.binarySearch<A>(forKey:using:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v68 = a4;
  v69 = a5;
  v58 = a3;
  v57 = a2;
  v67 = a1;
  v51 = a8;
  v70 = a7;
  v10 = *(a7 + 8);
  v11 = *(v10 + 8);
  v12 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v73 = &v50 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v52 = *(v16 - 8);
  v17 = *(v52 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v50 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v50 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v50 - v27;
  v75 = a6;
  v76 = v8;
  if (sub_1B0E456B8())
  {
    v29 = *(v52 + 56);
    v30 = v51;

    return v29(v30, 1, 1, v16);
  }

  else
  {
    sub_1B0E45668();
    sub_1B0E456C8();
    sub_1B0E44878();
    v65 = *(v52 + 8);
    v66 = v52 + 8;
    v65(v23, v16);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    if (sub_1B0E44928())
    {
      v32 = (v13 + 16);
      v62 = (v13 + 8);
      v61 = (v52 + 32);
      v59 = (v13 + 16);
      v54 = v10;
      v56 = v16;
      v55 = v28;
      v53 = v11;
      v60 = v23;
      v63 = v26;
      v72 = v20;
      do
      {
        sub_1B0E455F8();
        sub_1B0E455E8();
        v38 = sub_1B0E457B8();
        v39 = v73;
        v40 = AssociatedTypeWitness;
        v71 = *v32;
        v71(v73);
        (v38)(v77, 0);
        v41 = v67;
        LOBYTE(v38) = v68(v39, v67);
        v42 = *v62;
        (*v62)(v39, v40);
        if (v38)
        {
          v33 = v60;
          v34 = v72;
          sub_1B0E456A8();
          v35 = v28;
          v26 = v63;
        }

        else
        {
          v43 = v73;
          v44 = AssociatedTypeWitness;
          v45 = sub_1B0E457B8();
          v71(v43);
          (v45)(v77, 0);
          LOBYTE(v45) = v57(v41, v43);
          v42(v43, v44);
          if ((v45 & 1) == 0)
          {
            v47 = v56;
            v48 = v65;
            v65(v63, v56);
            v48(v55, v47);
            v49 = v51;
            (*(v52 + 32))(v51, v72, v47);
            return (*(v52 + 56))(v49, 0, 1, v47);
          }

          v33 = v60;
          v34 = v72;
          sub_1B0E44878();
          v26 = v63;
          v35 = v63;
          v16 = v56;
          v28 = v55;
        }

        v36 = v65;
        v65(v34, v16);
        v36(v35, v16);
        (*v61)(v35, v33, v16);
        v37 = sub_1B0E44928();
        v32 = v59;
      }

      while ((v37 & 1) != 0);
    }

    v46 = v65;
    v65(v26, v16);
    v46(v28, v16);
    return (*(v52 + 56))(v51, 1, 1, v16);
  }
}

uint64_t CertUITrustManager.__allocating_init()()
{
  v0 = swift_allocObject();
  CertUITrustManager.init()();
  return v0;
}

void CertUITrustManager.init()()
{
  v1 = sub_1B0E44AC8();
  v2 = NSClassFromString(v1);

  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_1B0E43388();
  ClassMethod = class_getClassMethod(v2, v3);
  if (!ClassMethod)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  Implementation = method_getImplementation(ClassMethod);
  v6 = sub_1B0E43388();
  v7 = (Implementation)(v2, v6);
  v8 = sub_1B0E43388();
  InstanceMethod = class_getInstanceMethod(v2, v8);
  if (!InstanceMethod)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = method_getImplementation(InstanceMethod);
  v11 = sub_1B0E43388();
  v0[2] = (v10)(v7, v11);
  v12 = class_getInstanceMethod(v2, sel_rawTrustResultForSSLTrust_hostname_service_);
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v0[3] = method_getImplementation(v12);
  v13 = class_getInstanceMethod(v2, sel_allowTrust_forHost_service_);
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

  v11 = sub_1B0E44AC8();
  if (v6)
  {
LABEL_3:
    v6 = sub_1B0E44AC8();
  }

LABEL_4:
  v12 = v9(v8, sel_rawTrustResultForSSLTrust_hostname_service_, a1, v11, v6);

  return v12;
}

Swift::Void __swiftcall CertUITrustManager.allow(_:forHost:service:)(SecTrustRef_optional _, Swift::String_optional forHost, Swift::String_optional service)
{
  object = service.value._object;
  v6 = *(v3 + 32);
  v7 = *(v3 + 16);
  if (forHost.value._object)
  {
    v8 = sub_1B0E44AC8();
    if (object)
    {
LABEL_3:
      v9 = sub_1B0E44AC8();
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
  v6(v7, sel_allowTrust_forHost_service_, _.value, v8);
}

uint64_t CertUITrustManager.showPrompt(hostname:service:trust:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for CertUIPrompt();
  inited = swift_initStackObject();
  sub_1B0C5CC30();
  v15 = a2;
  v16 = *(inited + 32);
  v17 = *(inited + 16);
  if (v15)
  {
    v18 = sub_1B0E44AC8();
  }

  else
  {
    v18 = 0;
  }

  v16(v17, sel_setHost_, v18);

  v19 = *(inited + 40);
  v20 = *(inited + 16);
  if (a4)
  {
    a4 = sub_1B0E44AC8();
  }

  v19(v20, sel_setService_, a4);

  (*(inited + 24))(*(inited + 16), sel_setTrust_, a5);
  sub_1B0C5CB24(a6, a7, a8);
}

void sub_1B0C5CB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 48);
  v7 = *(v3 + 16);
  if (a1)
  {
    v8 = sub_1B0E44598();
  }

  else
  {
    v8 = 0;
  }

  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B0C5CFB4;
  v10[3] = &block_descriptor_33;
  v9 = _Block_copy(v10);

  v6(v7, sel_showPromptWithOptions_responseBlock_, v8, v9);
  _Block_release(v9);
}

void sub_1B0C5CC30()
{
  v1 = sub_1B0E44AC8();
  v2 = NSClassFromString(v1);

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = sub_1B0E43388();
  ClassMethod = class_getClassMethod(v2, v3);
  if (!ClassMethod)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  Implementation = method_getImplementation(ClassMethod);
  v6 = sub_1B0E43388();
  v7 = (Implementation)(v2, v6);
  v8 = sub_1B0E43388();
  InstanceMethod = class_getInstanceMethod(v2, v8);
  if (!InstanceMethod)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = method_getImplementation(InstanceMethod);
  v11 = sub_1B0E43388();
  v0[2] = (v10)(v7, v11);
  v12 = class_getInstanceMethod(v2, sel_setTrust_);
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v0[3] = method_getImplementation(v12);
  v13 = class_getInstanceMethod(v2, sel_setHost_);
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v0[4] = method_getImplementation(v13);
  v14 = class_getInstanceMethod(v2, sel_setService_);
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v0[5] = method_getImplementation(v14);
  v15 = class_getInstanceMethod(v2, sel_showPromptWithOptions_responseBlock_);
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

uint64_t sub_1B0C5CDEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B0C5CFB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1B0C5D0E8(uint64_t a1, void *a2)
{
  v2 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  swift_getAtKeyPath();
  v7 = sub_1B0E44A28();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_1B0C5D208(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1B0C5D0E8(a1, *(v1 + 24)) & 1;
}

uint64_t sub_1B0C5D22C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t static DispatchData.makeMappedRead(fileDescriptor:count:)(int a1, size_t a2)
{
  v4 = sub_1B0E442E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = mmap(0, a2, 1, 1, a1, 0);
  if (!v9 || v9 == sub_1B0E43AD8())
  {
    sub_1B0C5D3CC();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69E7FC0], v4);
    return sub_1B0E442F8();
  }
}

unint64_t sub_1B0C5D3CC()
{
  result = qword_1EB6E5BD0;
  if (!qword_1EB6E5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5BD0);
  }

  return result;
}

uint64_t static URL.makeTemporaryFile(baseDirectory:pathExtension:)(char *a1)
{
  v3 = sub_1B0E42E68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E42D68();
  sub_1B0E42D78();
  v8 = *(v4 + 8);
  v8(v7, v3);
  result = sub_1B0C5D6F0(sub_1B0C5D580, 0);
  if (v1)
  {
    v10 = result;
    v8(a1, v3);
    return v10;
  }

  return result;
}

uint64_t sub_1B0C5D580@<X0>(char *a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = sub_1B0E42848();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = mkstemps(a1, a2);
  if (result <= 0)
  {
    MEMORY[0x1B2725C20]();
    v12 = sub_1B0E43AE8();
    if ((v12 & 0x100000000) != 0)
    {
      sub_1B0C5DF40();
      swift_allocError();
    }

    else
    {
      v14 = v12;
      sub_1B0C5E00C(MEMORY[0x1E69E7CC0]);
      sub_1B0C5E11C();
      sub_1B0E42CB8();
      sub_1B0E42838();
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

uint64_t sub_1B0C5D6F0(uint64_t a1, uint64_t a2)
{
  v22[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BD8, &unk_1B0EDCB98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = sub_1B0E42E68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E42D08();
  v13 = sub_1B0E44CF8();

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

  v15 = MEMORY[0x1EEE9AC00](result);
  v16 = v22[0];
  v22[-4] = a1;
  v22[-3] = v16;
  LODWORD(v22[-2]) = v17;
  MEMORY[0x1EEE9AC00](v15);
  v22[-2] = sub_1B0C5DE40;
  v22[-1] = v18;
  v19 = v22[1];
  sub_1B0E42DC8();
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

uint64_t sub_1B0C5D950@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v35 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BD8, &unk_1B0EDCB98);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v32[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  isStackAllocationSafe = MEMORY[0x1EEE9AC00](v17);
  v22 = &v32[-v21];
  v34 = a6;
  if (a1)
  {
    v33 = a5;
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
        v31 = swift_slowAlloc();
        sub_1B0C5DC34(v31, a1, a2, a3, v33, a6);
        result = MEMORY[0x1B272C230](v31, -1, -1);
        goto LABEL_9;
      }
    }

    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v25 = &v32[-v24];
    memmove(&v32[-v24], a1, v23);
    a5 = v33;
  }

  else
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v25 = &v32[-16];
  }

  v26 = v36;
  a3(&v37, v25, a5);
  if (v26)
  {
    result = swift_willThrow();
  }

  else
  {
    v28 = sub_1B0E42E68();
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
    v29 = v19 + *(v15 + 48);
    sub_1B0E42DD8();
    sub_1B06E3800(v14);
    *v19 = v37;
    sub_1B0C5DED0(v19, v22);
    result = sub_1B0C5DED0(v22, v34);
  }

LABEL_9:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B0C5DC34@<X0>(void *a1@<X0>, const void *a2@<X2>, uint64_t a3@<X3>, void *(*a4)(uint64_t *__return_ptr, void *, uint64_t)@<X4>, uint64_t a5@<X6>, _DWORD *a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v20 - v16;
  if (a1 && a2)
  {
    memmove(a1, a2, a3 - a2);
  }

  else if (!a1)
  {
    __break(1u);
    return result;
  }

  result = a4(&v21, a1, a5);
  if (!v6)
  {
    v18 = sub_1B0E42E68();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BD8, &unk_1B0EDCB98) + 48);
    sub_1B0E42DD8();
    result = sub_1B06E3800(v17);
    *a6 = v21;
  }

  return result;
}

size_t sub_1B0C5DDA4(const char *a1, uint64_t (*a2)(const char *, const char *))
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
    sub_1B0C5DE7C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B0C5DE7C()
{
  result = qword_1EB6E5BE0;
  if (!qword_1EB6E5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5BE0);
  }

  return result;
}

uint64_t sub_1B0C5DED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BD8, &unk_1B0EDCB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0C5DF40()
{
  result = qword_1EB6E5BE8;
  if (!qword_1EB6E5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5BE8);
  }

  return result;
}

unint64_t sub_1B0C5DF94(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1B0E46CB8();

  return sub_1B0441064(a1, a2, v6);
}

void sub_1B0C5E00C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E5BF8, &qword_1B0EDCBA8);
    v3 = sub_1B0E466A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B0C5E174(v4, &v13);
      v5 = v13;
      v6 = v14;
      v7 = sub_1B0C5DF94(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
      v9 = (v3[6] + 16 * v7);
      *v9 = v5;
      v9[1] = v6;
      sub_1B0392800(&v15, v3[7] + 32 * v7);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_9;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

unint64_t sub_1B0C5E11C()
{
  result = qword_1EB6E5BF0;
  if (!qword_1EB6E5BF0)
  {
    sub_1B0E42848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5BF0);
  }

  return result;
}

uint64_t sub_1B0C5E174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C88, &unk_1B0EA3630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t KeyedSequence.sorted.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t KeyedSequence.unsorted.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t KeyedSequence.init(element:key:)(uint64_t a1, uint64_t a2)
{
  sub_1B0E45258();
  sub_1B0E45258();
  return a2;
}

uint64_t Array.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for KeyedSequence();
  KeyedSequence.consolidate()();

  return a3;
}

Swift::Void __swiftcall KeyedSequence.consolidate()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x1EEE9AC00])();
  v69 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v68 = v60 - v10;
  v11 = *(v9 + 24);
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v86 = v60 - v16;
  v17 = sub_1B0E45D88();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(*(TupleTypeMetadata2 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v88 = v60 - v20;
  v84 = v17;
  v21 = *(v17 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v63 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v62 = v60 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v82 = v60 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v81 = v60 - v29;
  v70 = v4;
  v89 = v4;
  v90 = v11;
  v67 = *(v3 + 32);
  v91 = v67;
  v92 = v2;
  v30 = sub_1B0E45358();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B0E449C8();
  v113 = sub_1B0E45258();
  v31 = *(v2 + 16);
  v32 = sub_1B0E452A8();
  v33 = *(v2 + 24);
  if (__OFADD__(v32, sub_1B0E452A8()))
  {
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    v60[1] = v31;
    v66 = v15;
    sub_1B0E451F8();
    v61 = (v2 + 16);
    sub_1B0E449A8();
    v80 = v2;
    v78 = v30;
    sub_1B0E449A8();
    v34 = sub_1B0E45FF8();
    v60[0] = v21;
    v79 = (v21 + 32);
    v87 = (v85 + 48);
    v65 = (v85 + 32);
    v64 = (v5 + 8);
    v74 = (v85 + 8);
    v75 = v34;
    while (1)
    {
      v77 = v109;
      v101 = v109;
      v102 = v110;
      v73 = v110;
      v72 = v111;
      v103 = v111;
      v104 = v112;
      v71 = v112;
      WitnessTable = swift_getWitnessTable();
      v38 = v81;
      sub_1B0E45728();
      v39 = v106;
      v41 = v107;
      v40 = v108;
      v76 = v105;
      v97 = v105;
      v98 = v106;
      v99 = v107;
      v100 = v108;
      v42 = v82;
      v85 = WitnessTable;
      sub_1B0E45728();
      v43 = *(TupleTypeMetadata2 + 48);
      v44 = *v79;
      v45 = v88;
      v46 = v38;
      v47 = v84;
      (*v79)(v88, v46, v84);
      v44(&v45[v43], v42, v47);
      v48 = *v87;
      LODWORD(v44) = (*v87)(v45, 1, v11);
      v49 = &v45[v43];
      v50 = v11;
      v51 = v48(v49, 1, v11);
      if (v44 == 1)
      {
        break;
      }

      if (v51 == 1)
      {
        v93 = v77;
        v94 = v73;
        v95 = v72;
        v96 = v71;
        swift_unknownObjectRetain();
        swift_getWitnessTable();
        sub_1B0E452D8();
        (*v74)(v88, v11);
        goto LABEL_13;
      }

      v52 = *v65;
      v53 = v86;
      v54 = v88;
      (*v65)(v86, v88, v50);
      v41 = v66;
      v52(v66, &v54[v43], v50);
      v55 = *v80;
      v56 = *(v80 + 8);
      v40 = v68;
      (*v80)(v53);
      v39 = v69;
      v55(v41);
      v57 = v70;
      LOBYTE(v56) = sub_1B0E44908();
      v58 = *v64;
      (*v64)(v39, v57);
      v58(v40, v57);
      if (v56)
      {
        v59 = v62;
        v43 = v75;
        sub_1B0E456E8();
        v51 = v48(v59, 1, v50);
        if (v51 == 1)
        {
          __break(1u);
          break;
        }
      }

      else
      {
        v35 = v63;
        sub_1B0E456E8();
        if (v48(v35, 1, v50) == 1)
        {
          goto LABEL_15;
        }
      }

      sub_1B0E452E8();
      v36 = *v74;
      (*v74)(v41, v50);
      v36(v86, v50);
      v11 = v50;
    }

    if (v51 != 1)
    {
      v93 = v76;
      v94 = v39;
      v95 = v41;
      v96 = v40;
      swift_unknownObjectRetain();
      swift_getWitnessTable();
      sub_1B0E452D8();
      (*(v60[0] + 8))(&v88[v43], v84);
    }

LABEL_13:
    sub_1B0E45338();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *v61 = v113;
  }
}

uint64_t KeyedSequence.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  KeyedSequence.index(for:)(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v11 == -1)
  {
    v12 = 1;
  }

  else
  {
    sub_1B0E453A8();
    v12 = 0;
  }

  v13 = *(*(a7 - 8) + 56);

  return v13(a9, v12, 1, a7);
}

uint64_t KeyedSequence.index(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a4;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v10 = sub_1B0E45358();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  WitnessTable = swift_getWitnessTable();
  RandomAccessCollection.binarySearch<A>(forKey:using:_:)(a1, sub_1B0C60348, v23, sub_1B0C60360, v15, v10, WitnessTable, &v32);

  if ((v33 & 1) == 0)
  {
    return v32;
  }

  v14[1] = v14;
  v31 = a5;
  MEMORY[0x1EEE9AC00](v12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_getWitnessTable();
  sub_1B0E456F8();

  if (v33)
  {
    return 0;
  }

  else
  {
    return v32;
  }
}

void KeyedSequence.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = *(a2 + 24);
  v37 = *(v35 - 8);
  v5 = *(v37 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v6);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  v15 = *(v2 + 8);
  v17 = *(v3 + 16);
  v32 = (v3 + 16);
  v19 = (v3 + 24);
  v18 = *(v3 + 24);
  v36 = v12;
  v16();
  v34 = a2;
  v20 = v17;
  v21 = v35;
  v22 = KeyedSequence.index(for:)(v14, v16, v15, v20, v18, v9, v35, *(a2 + 32));
  v24 = v23;
  LODWORD(v18) = ~v23;
  (*(v10 + 8))(v14, v9);
  if (v18)
  {
    v25 = v36;
    sub_1B0E45358();
    v26 = v37;
    if (v24)
    {
      sub_1B0E45248();
      v27 = *v19;
    }

    else
    {
      v29 = v32;
      sub_1B0E45248();
      v27 = *v29;
    }

    sub_1B0C603F0(v22, v27);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v31 = v27 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v31 = v27;
    }

    (*(v26 + 24))(v31 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v25, v21);
  }

  else
  {
    (*(v37 + 16))(v33, v36, v21);
    sub_1B0E45358();
    sub_1B0E452E8();
    v28 = *v19;
    if (sub_1B0E452A8() >= 11)
    {
      KeyedSequence.consolidate()();
    }
  }
}

uint64_t KeyedSequence.insert<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v29 = a1;
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E45D88();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v25 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v19 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v25 - v20;
  (*(v14 + 16))(v17, v29, a3);
  sub_1B0E44F08();
  swift_getAssociatedConformanceWitness();
  v28 = v21;
  v29 = AssociatedTypeWitness;
  sub_1B0E45E38();
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    v23 = *(v5 + 32);
    do
    {
      v23(v8, v13, v4);
      KeyedSequence.insert(_:)(v8, v27);
      (*(v5 + 8))(v8, v4);
      sub_1B0E45E38();
    }

    while (v22(v13, 1, v4) != 1);
  }

  return (*(v26 + 8))(v28, v29);
}

BOOL KeyedSequence.update(key:_:)(uint64_t a1, void (*a2)(unint64_t), uint64_t a3, uint64_t *a4)
{
  v7 = v4 + 2;
  v6 = v4[2];
  v8 = *v4;
  v9 = v4[1];
  v11 = v4[3];
  v10 = v4 + 3;
  v12 = a4[3];
  v13 = KeyedSequence.index(for:)(a1, v8, v9, v6, v11, a4[2], v12, a4[4]);
  v15 = v14;
  if (v14 != -1)
  {
    v16 = v13;
    sub_1B0E45358();
    if ((v15 & 1) == 0)
    {
      v10 = v7;
    }

    sub_1B0E45248();
    v17 = *v10;
    sub_1B0C603F0(v16, v17);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v19 = v17 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v19 = v17;
    }

    a2(v19 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v16);
  }

  return ~v15 != 0;
}

uint64_t KeyedSequence.removeElement(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[3];
  KeyedSequence.index(for:)(a1, *v3, v3[1], v3[2], v3[3], a2[2], v5, a2[4]);
  if (v6 == -1)
  {
    v7 = 1;
  }

  else
  {
    sub_1B0E45358();
    sub_1B0E45308();
    v7 = 0;
  }

  v8 = *(*(v5 - 8) + 56);

  return v8(a3, v7, 1, v5);
}

uint64_t sub_1B0C5F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v16 = *v15;
  v17 = *(v15 + 8);

  v16(a1);

  v19 = *a3;
  v18 = *(a3 + 8);

  v19(a2);

  LOBYTE(v18) = sub_1B0E44908();
  v20 = *(v8 + 8);
  v20(v12, a4);
  v20(v14, a4);
  return v18 & 1;
}

uint64_t KeyedSequence.isEmpty.getter()
{
  sub_1B0E45358();
  swift_getWitnessTable();
  if (sub_1B0E45748())
  {
    v0 = sub_1B0E45748();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t KeyedSequence.reduce<A>(into:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v29 = a4;
  v25 = a5;
  v9 = *(a7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v24 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v22 - v16;
  v31 = v18;
  v28 = v9;
  v23 = *(v9 + 16);
  v23(v15);
  sub_1B0E45358();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  WitnessTable = swift_getWitnessTable();
  v26 = a2;
  v27 = a3;
  v22[1] = WitnessTable;
  v20 = v30;
  sub_1B0E44FD8();

  if (!v20)
  {
    v31 = v29;
    (v23)(v24, v17, a7);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44FD8();

    return (*(v28 + 8))(v17, a7);
  }

  return result;
}

uint64_t KeyedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t KeyedSequence.Iterator.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = result;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t KeyedSequence.underestimatedCount.getter()
{
  v0 = sub_1B0E452A8();
  v1 = sub_1B0E452A8();
  v2 = __OFADD__(v0, v1);
  result = v0 + v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t KeyedSequence.Iterator.array.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t KeyedSequence.Iterator.array.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];

  v10 = v4[4];

  v11 = v4[5];

  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return result;
}

uint64_t KeyedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[4];
  v6 = *(a1 + 24);
  if (v4 < sub_1B0E452A8())
  {
    sub_1B0E453A8();
    result = (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    if (!__OFADD__(*v2, 1))
    {
      ++*v2;
      return result;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = v2[1];
  v9 = v2[5];
  if (v8 < sub_1B0E452A8())
  {
    sub_1B0E453A8();
    result = (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    v10 = v2[1];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      v2[1] = v12;
      return result;
    }

    goto LABEL_11;
  }

  v13 = *(*(v6 - 8) + 56);

  return v13(a2, 1, 1, v6);
}

double sub_1B0C5FF5C@<D0>(_OWORD *a1@<X8>)
{
  KeyedSequence.makeIterator()(*v1, v1[1], v1[2], v1[3], v5);

  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t sub_1B0C5FFD0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 24);
  return KeyedSequence.underestimatedCount.getter();
}

uint64_t sub_1B0C5FFDC()
{
  v1 = sub_1B0C6059C();
  v2 = v0[1];

  v3 = v0[2];

  v4 = v0[3];

  return v1;
}

uint64_t sub_1B0C60028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v12);
  v14 = sub_1B0E44908();
  (*(v8 + 8))(v11, a7);
  return v14 & 1;
}

uint64_t sub_1B0C6011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  v14 = sub_1B0E44908();
  (*(v8 + 8))(v12, a7);
  return v14 & 1;
}

uint64_t sub_1B0C6020C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15(v12);
  v16 = *(a9 + 8);
  v17 = sub_1B0E44A28();
  (*(v10 + 8))(v14, a7);
  return v17 & 1;
}

uint64_t sub_1B0C60324(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1B0C5F7B4(a1, a2, v2[5], v2[2]) & 1;
}

uint64_t sub_1B0C603F0(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B0C60460()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0C6049C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0C604D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B0C60520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MillisecondDate.wrappedValue.setter(uint64_t a1)
{
  v2 = v1;
  sub_1B0E43028();
  v5 = v4;
  v6 = sub_1B0E43108();
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
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1B0E43108();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = *v1 * 0.001;
  sub_1B0E43018();
  return sub_1B0C607C8;
}

void sub_1B0C607C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if ((a2 & 1) == 0)
  {
    v14 = v2[1];
    v15 = v2[2];
    sub_1B0E43028();
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
  sub_1B0E43028();
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
  sub_1B0E43028();
  v3 = v2;
  v4 = sub_1B0E43108();
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

uint64_t MillisecondDate.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C60AB4()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C60AFC()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](v1);
  return sub_1B0E46CB8();
}

uint64_t OptionalMillisecondDate.underlying.setter(uint64_t result, char a2)
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
    sub_1B0E43018();
    v3 = 0;
  }

  v4 = sub_1B0E43108();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t OptionalMillisecondDate.wrappedValue.setter(const void *a1)
{
  v2 = v1;
  v4 = sub_1B0E43108();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  sub_1B06BC2F4(a1, &v19 - v11);
  v13 = (*(v5 + 48))(v12, 1, v4);
  if (v13 == 1)
  {
    result = sub_1B06B97A8(a1);
    v15 = 0;
LABEL_7:
    *v2 = v15;
    *(v2 + 8) = v13 == 1;
    return result;
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_1B0E43028();
  v17 = v16;
  sub_1B06B97A8(a1);
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

void (*OptionalMillisecondDate.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1B0E43108();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[3] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v10);
    v5[5] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[6] = v11;
  if (*(v1 + 8))
  {
    v13 = 1;
  }

  else
  {
    v14 = *v1 * 0.001;
    sub_1B0E43018();
    v13 = 0;
  }

  (*(v8 + 56))(v12, v13, 1, v6);
  return sub_1B0C60FCC;
}

void sub_1B0C60FCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if ((a2 & 1) == 0)
  {
    v8 = v2[1];
    v9 = v2[2];
    sub_1B06BC2F4((*a1)[6], v3);
    v10 = (*(v9 + 48))(v3, 1, v8);
    v11 = v2[6];
    if (v10 == 1)
    {
      sub_1B06B97A8(v2[6]);
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
    sub_1B0E43028();
    v17 = v16;
    sub_1B06B97A8(v11);
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
  sub_1B06BC2F4((*a1)[6], v5);
  OptionalMillisecondDate.wrappedValue.setter(v5);
  sub_1B06B97A8(v4);
LABEL_10:
  free(v4);
  free(v3);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t OptionalMillisecondDate.init(wrappedValue:)(const void *a1)
{
  v2 = sub_1B0E43108();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  sub_1B06BC2F4(a1, &v15 - v9);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1B06B97A8(a1);
    return 0;
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_1B0E43028();
  v13 = v12;
  sub_1B06B97A8(a1);
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

uint64_t OptionalMillisecondDate.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728DB0](a2);
}

uint64_t OptionalMillisecondDate.hashValue.getter(uint64_t a1, char a2)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1B2728DB0](a1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C61444()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v2 != 1)
  {
    MEMORY[0x1B2728DB0](v1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C614B4()
{
  if (*(v0 + 8) == 1)
  {
    return sub_1B0E46C68();
  }

  v2 = *v0;
  sub_1B0E46C68();
  return MEMORY[0x1B2728DB0](v2);
}

uint64_t sub_1B0C61504()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v2 != 1)
  {
    MEMORY[0x1B2728DB0](v1);
  }

  return sub_1B0E46CB8();
}

unint64_t sub_1B0C61574()
{
  result = qword_1EB6E5C80;
  if (!qword_1EB6E5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5C80);
  }

  return result;
}

unint64_t sub_1B0C615CC()
{
  result = qword_1EB6E5C88;
  if (!qword_1EB6E5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5C88);
  }

  return result;
}

uint64_t sub_1B0C61620(uint64_t a1, uint64_t a2)
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

uint64_t MonotonicTime.init(nanoSeconds:since:)(uint64_t result, uint64_t a2)
{
  if (result >= 1)
  {
    v2 = __OFADD__(a2, result);
    result += a2;
    if (!v2)
    {
      return result;
    }

    __break(1u);
  }

  v3 = -result;
  if (__OFSUB__(0, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  result += a2;
  if (__OFSUB__(a2, v3))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

__uint64_t MonotonicTime.init(secondsSinceNow:)(double a1)
{
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    return sub_1B0445DD8(result, a1);
  }

  return result;
}

uint64_t MonotonicTime.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](a1);
  return sub_1B0E46CB8();
}

int64_t DispatchTime.init(_:)(uint64_t a1)
{
  v2 = sub_1B0E44208();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1B0E443F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
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
    sub_1B0E443D8();
    *v6 = v13;
    (*(v3 + 104))(v6, *MEMORY[0x1E69E7F28], v2);
    sub_1B0E443E8();
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

uint64_t MonotonicTime.nanoSeconds(since:)(uint64_t a1, uint64_t a2)
{
  v3 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 != v3)
  {
    v3 = __OFSUB__(a1, a2);
    v5 = a1 - a2;
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
  sub_1B0E43058();
  v6 = sub_1B0E43108();
  v7 = *(*(v6 - 8) + 8);

  return v7(a3, v6);
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

unint64_t sub_1B0C61ABC()
{
  result = qword_1EB6E5C90;
  if (!qword_1EB6E5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5C90);
  }

  return result;
}

uint64_t RateLimitResult.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

BOOL MonotonicTime.rateLimit(now:seconds:)(_BOOL8 result, double a2)
{
  v3 = *v2;
  if (*v2 > result)
  {
    if (__OFSUB__(*v2, result))
    {
      __break(1u);
      goto LABEL_11;
    }

    v4 = result - *v2;
    if (!__OFSUB__(0, *v2 - result))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v4 = result - v3;
  if (__OFSUB__(result, v3))
  {
LABEL_11:
    __break(1u);
    return result;
  }

LABEL_7:
  v5 = v4 / 1000000000.0;
  if (v5 > a2)
  {
    *v2 = result;
  }

  return v5 > a2;
}

unint64_t sub_1B0C61C00()
{
  result = qword_1EB6E5C98;
  if (!qword_1EB6E5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5C98);
  }

  return result;
}

uint64_t RestartableTimer.__allocating_init(queue:repeating:leeway:closure:)(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v35 = a4;
  v43 = a2;
  v44 = a3;
  v38 = a1;
  v5 = sub_1B0E443F8();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v34 - v9;
  v10 = sub_1B0E45A38();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B0E44238();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = sub_1B0E44288();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v37 = swift_allocObject();
  _Block_copy(a4);
  sub_1B0E44278();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1B039E46C(&qword_1EB6DEE50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B03CFB8C(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B0E460A8();
  v18 = sub_1B0E44458();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1B0E44428();
  sub_1B0421E38();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1B039E46C(&qword_1EB6DAA70, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B03CFB8C(&qword_1EB6DAFA0, &qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B0E460A8();
  v21 = v38;
  v34 = v21;
  v22 = sub_1B0E45A48();

  (*(v36 + 8))(v13, v10);
  ObjectType = swift_getObjectType();
  sub_1B0E45A68();
  v24 = v40;
  sub_1B0E443D8();
  v25 = v39;
  v26 = v43;
  sub_1B0E443E8();
  v27 = *(v41 + 8);
  v28 = v24;
  v29 = v42;
  v27(v28, v42);
  v30 = v44;
  MEMORY[0x1B2727D90](v25, v26, v44, ObjectType);

  _Block_release(v35);
  v31 = sub_1B0E44208();
  v32 = *(*(v31 - 8) + 8);
  v32(v30, v31);
  v32(v26, v31);
  v27(v25, v29);
  result = v37;
  *(v37 + 32) = v34;
  *(result + 16) = v22;
  *(result + 24) = 1;
  return result;
}

uint64_t RestartableTimer.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B0E45A98();
  swift_unknownObjectRelease();
  if (*(v1 + 24) == 1)
  {
    v3 = *(v1 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B0E45AA8();
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
  sub_1B0E45A98();
  swift_unknownObjectRelease();
  if (*(v1 + 24) == 1)
  {
    v3 = *(v1 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B0E45AA8();
    swift_unknownObjectRelease();
  }

  v4 = *(v1 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t RestartableTimer.isRunning.getter()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 32);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    return (*(v0 + 24) & 1) == 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0C623AC()
{
  result = qword_1EB6E5CA8;
  if (!qword_1EB6E5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5CA8);
  }

  return result;
}

uint64_t static PCG32Random.random.getter()
{
  v2 = 0;
  MEMORY[0x1B272C250](&v2, 8);
  v0 = v2;
  v2 = 0;
  MEMORY[0x1B272C250](&v2, 8);
  return v0;
}

Swift::Void __swiftcall PCG32Random.seed(state:sequence:)(Swift::UInt64 state, Swift::UInt64 sequence)
{
  v3 = (2 * sequence) | 1;
  *v2 = v3 + 0x5851F42D4C957F2DLL * (v3 + state);
  v2[1] = v3;
}

uint64_t sub_1B0C6247C()
{
  v1 = *v0;
  *v0 = v0[1] + 0x5851F42D4C957F2DLL * *v0;
  return __ROR4__((v1 >> 45) ^ (v1 >> 27), v1 >> 59);
}

Swift::UInt32 __swiftcall PCG32Random.next()()
{
  v1 = *v0;
  *v0 = v0[1] + 0x5851F42D4C957F2DLL * *v0;
  return __ROR4__((v1 >> 45) ^ (v1 >> 27), v1 >> 59);
}

BOOL static MailboxName.stableOrder(_:_:)(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v8 = MailboxName.inbox.unsafeMutableAddressor();
  v9 = *v8;
  v10 = *(v8 + 2) | (*(v8 + 2) << 32);
  v11 = a2 | (a2 << 32);
  if (v10 == v11 && (sub_1B04520BC(*v8, a1) & 1) != 0 && v10 == (a4 | (a4 << 32)) && (sub_1B04520BC(v9, a3) & 1) != 0 || v10 == (a4 | (a4 << 32)) && (sub_1B04520BC(v9, a3) & 1) != 0)
  {
    return 0;
  }

  if (v10 == v11 && (sub_1B04520BC(v9, a1) & 1) != 0)
  {
    return 1;
  }

  return sub_1B0C626D0(a1, a3) == -1;
}

uint64_t sub_1B0C62624@<X0>(void *__s2@<X0>, void *__s1@<X2>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
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

uint64_t sub_1B0C6272C()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DEAA8);
  __swift_project_value_buffer(v0, qword_1EB6DEAA8);
  return sub_1B0E43998();
}

uint64_t sub_1B0C627B8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0C62864(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v24 = sub_1B0E459C8();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E45988();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1B0E44288();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  *(v3 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CB0, &qword_1B0EDD258);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v27 = v3;
  *(v3 + 32) = v13;
  v22 = sub_1B06CCC58();
  v23 = a1;

  sub_1B0E44258();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B06D6240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B06D62C0();
  sub_1B0E460A8();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8090], v24);
  v14 = sub_1B0E45A08();
  if (qword_1EB6DEC98 != -1)
  {
    swift_once();
  }

  v15 = off_1EB6DEC90;
  v16 = swift_allocObject();
  v18 = v25;
  v17 = v26;
  v16[2] = v13;
  v16[3] = v18;
  v16[4] = v17;
  aBlock[4] = sub_1B0C63500;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B0C62FAC;
  aBlock[3] = &block_descriptor_34;
  v19 = _Block_copy(aBlock);
  v20 = v15(v14, v19);

  _Block_release(v19);

  result = v27;
  *(v27 + 16) = v20;
  return result;
}

uint64_t sub_1B0C62BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  v12 = sub_1B0C62C38(v4, v5, v6, v7);
  sub_1B0C6350C(v8, v9, v10, v11);
  return v12;
}

uint64_t sub_1B0C62C38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  v35 = *MEMORY[0x1E69E9840];
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
    v17 = sub_1B0E42A98();
    if (v17)
    {
      v18 = sub_1B0E42AC8();
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

    v20 = sub_1B0E42AB8();
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

    v33 = v17;
    v34 = v22;
    sub_1B0C16D90();
    sub_1B0E429B8();
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
    v32[0] = v5;
    LOWORD(v32[1]) = a4;
    BYTE2(v32[1]) = BYTE2(a4);
    BYTE3(v32[1]) = BYTE3(a4);
    BYTE4(v32[1]) = BYTE4(a4);
    BYTE5(v32[1]) = BYTE5(a4);
    if (v13 >= 200)
    {
      LODWORD(v5) = BYTE6(a4);
      v33 = v32;
      v34 = v32 + BYTE6(a4);
      sub_1B0C16D90();
      sub_1B0E429B8();
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

  v25 = sub_1B0E42A98();
  if (v25)
  {
    v26 = sub_1B0E42AC8();
    if (__OFSUB__(v5, v26))
    {
      goto LABEL_57;
    }

    v25 += v5 - v26;
  }

  v27 = sub_1B0E42AB8();
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

  v33 = v25;
  v34 = v29;
  sub_1B0C16D90();
  sub_1B0E429B8();
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
    memset(v32, 0, 14);
    if (v13 >= 200)
    {
      v33 = v32;
      v34 = v32;
      sub_1B0C16D90();
      sub_1B0E429B8();
      LODWORD(v5) = 0;
      goto LABEL_45;
    }

    goto LABEL_51;
  }

LABEL_46:
  *(v14 + 4) = v5;
  sub_1B0C63378(a1, a2, (v14 + 136), 0x40uLL);
  v30 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_1B0C62FAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

Swift::Void __swiftcall StateCapture.tearDown()()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[3];
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  v9 = v0[4];
  if (*(v9 + 16))
  {
    return;
  }

  *(v9 + 16) = 1;
  if (qword_1EB6DEAD0 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  off_1EB6DEAC8(v0[2]);
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
  sub_1B0C62864(a3, sub_1B0C63424, v10);
  return v11;
}

uint64_t sub_1B0C6328C(void (*a1)(__int128 *__return_ptr), uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_transaction_create();
  a1(&v9);
  if (v10)
  {
    sub_1B0450C74(&v9, v11);
    sub_1B03D2CA8(v11, &v9);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = sub_1B0C635E0(a3, a4, &v9);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1B0C63578(&v9);
    return 0;
  }

  return v7;
}

char *sub_1B0C63378(uint64_t a1, uint64_t a2, char *__dst, size_t __n)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1B0E46258();
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
    return sub_1B0E46258();
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v4, __n);
}

uint64_t sub_1B0C63454(uint64_t a1)
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

void sub_1B0C6350C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1B0391D50(a3, a4);
  }
}

uint64_t sub_1B0C63578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CB8, qword_1B0EDD260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0C635E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1B0E42C68();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1B0E42C58();
  sub_1B0E42C28();
  v9 = a3[4];
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v10 = sub_1B0E42C38();
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

  if (qword_1EB6DEAA0 != -1)
  {
    goto LABEL_36;
  }

LABEL_9:
  v19 = sub_1B0E439A8();
  __swift_project_value_buffer(v19, qword_1EB6DEAA8);
  sub_1B03B2000(v11, v13);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = sub_1B0E43988();
  v21 = sub_1B0E458E8();

  if (!os_log_type_enabled(v20, v21))
  {
LABEL_20:
    sub_1B0391D50(v11, v13);

LABEL_33:
    __swift_destroy_boxed_opaque_existential_0Tm(a3);
    return a1;
  }

  v22 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  *v22 = 136446466;
  v35 = a1;
  v36[0] = v33;
  result = sub_1B0399D64(a1, a2, v36);
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
      sub_1B0391D50(v11, v13);
      _os_log_impl(&dword_1B0389000, v20, v21, "Encoded plist state capture data '%{public}s' is %{iec-bytes}ld > 32KiB", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v32 = v33;
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
  if (qword_1EB6DEAA0 != -1)
  {
    swift_once();
  }

  v27 = sub_1B0E439A8();
  __swift_project_value_buffer(v27, qword_1EB6DEAA8);
  sub_1B03B2000(v11, v13);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = sub_1B0E43988();
  v28 = sub_1B0E458D8();

  if (!os_log_type_enabled(v20, v28))
  {
    goto LABEL_20;
  }

  v22 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v22 = 136446466;
  v35 = a1;
  v36[0] = v34;
  result = sub_1B0399D64(a1, a2, v36);
  *(v22 + 4) = result;
  *(v22 + 12) = 2048;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      v29 = 0;
      goto LABEL_28;
    }

    v31 = *(v11 + 16);
    v30 = *(v11 + 24);
    v18 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (!v18)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v29 = BYTE6(v13);
LABEL_28:
    *(v22 + 14) = v29;
    sub_1B0391D50(v11, v13);
    _os_log_impl(&dword_1B0389000, v20, v28, "Encoded plist state capture data '%{public}s' is %{iec-bytes}ld", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v32 = v34;
LABEL_32:
    MEMORY[0x1B272C230](v32, -1, -1);
    MEMORY[0x1B272C230](v22, -1, -1);

    a1 = v35;
    goto LABEL_33;
  }

  LODWORD(v29) = HIDWORD(v11) - v11;
  if (!__OFSUB__(HIDWORD(v11), v11))
  {
    v29 = v29;
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
  if (sub_1B0717014(v36) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v36);
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
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v36);
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

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = BodyStructure.DispositionKind.attachment.unsafeMutableAddressor();
  if ((*v18 != v14 || v8 != v18[1]) && (sub_1B0E46A78() & 1) == 0)
  {
    v26 = BodyStructure.DispositionKind.inline.unsafeMutableAddressor();
    if ((*v26 != v14 || v8 != v26[1]) && (sub_1B0E46A78() & 1) == 0)
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
      v33 = sub_1B0E46A78();

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
  if ((*v22 != v19 || v22[1] != v21) && (sub_1B0E46A78() & 1) == 0)
  {
    v31 = Media.TopLevelType.application.unsafeMutableAddressor();
    if (*v31 == v19 && v31[1] == v21)
    {
    }

    else
    {
      v32 = sub_1B0E46A78();

      if ((v32 & 1) == 0)
      {

        v7 = 1;
        return v7 & 1;
      }
    }

    BodyStructure.mediaType.getter();

    sub_1B0E44B98();

    if ((sub_1B0E44E58() & 1) == 0)
    {
      v34 = sub_1B0E44E58();

      v7 = v34 ^ 1;
      return v7 & 1;
    }

    goto LABEL_36;
  }

  BodyStructure.mediaType.getter();

  v23 = sub_1B0E44B98();
  v25 = v24;

  if (v23 == 0x756F64656C707061 && v25 == 0xEB00000000656C62)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_1B0E46A78();
  }

  return v7 & 1;
}

uint64_t sub_1B0C63FAC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
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
    if ((sub_1B0CB4C28("pkcs7-", 6, 2, 0, v11, v5, v6) & 1) == 0)
    {
      v9 = sub_1B0CB4C28("x-pkcs7-", 8, 2, 0, v11, v5, v6) ^ 1;
      return v9 & 1;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t BodyStructure.makeAttachmentFilenames(cache:)(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v4 = sub_1B0C64BBC(MEMORY[0x1E69E7CC0]);
  sub_1B0C64110(&v4, v2, a1);
  return v4;
}

uint64_t *sub_1B0C64110(uint64_t a1, uint64_t a2, void *a3)
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
  if (sub_1B0717014(v68) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v68);
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
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v61);
    v20 = *v19;
    v21 = *(*v19 + 16);
    sub_1B07169CC(v4, &__dst);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
        sub_1B07169CC(v59, &v54);
        v33.array._rawValue = SectionSpecifier.Part.appending(_:)(v23).array._rawValue;
        sub_1B0C64110(a1, v33.array._rawValue, a3);

        sub_1B075E648(&__dst);
        ++v23;
        v22 = (v22 + 184);
      }

      while (v23 - v21 != 1);
    }

    sub_1B075E648(v4);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v68);
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
          sub_1B07169CC(v4, &__dst);
          sub_1B0C65024(v82, &__dst);
          sub_1B0C65094(v85);
          __dst = 0uLL;

          sub_1B0CADA88(v40, v39, v38, &__dst, a3, v41);

          sub_1B075E648(v4);
          v42 = *(&__dst + 1);
          if (*(&__dst + 1))
          {
            v43 = __dst;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0C64500(v43, v42, a2);
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
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&__dst);
    v45 = *(v44 + 10);
    v47 = v44[3];
    v46 = v44[4];
    v49 = v44[1];
    v48 = v44[2];
    v50 = *v44;
    v51 = *(v44 + 136);
    v55 = *(v44 + 120);
    v56 = v51;
    v57 = *(v44 + 152);
    v58 = *(v44 + 21);
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
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&__dst);
    sub_1B07AD43C(v53, v59);
    return sub_1B071728C(&v61);
  }
}

uint64_t sub_1B0C64500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1B0CA4FB4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1B0CA7EF4(a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1B0CA5288();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 8 * v12);

      v18 = *(*(v16 + 56) + 16 * v12 + 8);

      result = sub_1B0C64A14(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t Message.makeAttachmentFilenames(cache:)(void *a1)
{

  v3 = sub_1B0CA13C0(v1, a1);

  if (v3[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF0, &qword_1B0EDD280);
    v4 = sub_1B0E466A8();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v6 = v4;
  sub_1B0C64DB4(v3, 1, &v6);

  return v6;
}

uint64_t sub_1B0C646B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  result = sub_1B0CB0F14(a5, a1, a2, a3, a4);
  v10 = *(result + 16);
  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v11 = 0;
  v12 = result + 40;
  v13 = -v10;
  v14 = MEMORY[0x1E69E7CC0];
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07B0B1C(v19, v20, v21, v22, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1B0C80D00(0, v14[2] + 1, 1, v14);
    }

    v26 = v14[2];
    v25 = v14[3];
    result = v33;
    v12 = v31;
    if (v26 >= v25 >> 1)
    {
      v28 = sub_1B0C80D00((v25 > 1), v26 + 1, 1, v14);
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
  v2 = sub_1B0E43108();
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

uint64_t sub_1B0C64A14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      SectionSpecifier.Part.hash(into:)(v22, v10);
      v11 = sub_1B0E46CB8();

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

unint64_t sub_1B0C64BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF0, &qword_1B0EDD280);
    v3 = sub_1B0E466A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0CA7EF4(v5);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B0C64CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF8, &unk_1B0EDD290);
    v3 = sub_1B0E466A8();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v5);
      result = sub_1B0CA7EF4(v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B0C64DB4(unint64_t result, char a2, void *a3)
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0CA7EF4(v8);
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
    sub_1B0CA4A74(v15, v5 & 1);
    v17 = *a3;
    result = sub_1B0CA7EF4(v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1B0E46BA8();
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
  sub_1B0CA5288();
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
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0CA7EF4(v9);
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
        sub_1B0CA4A74(v34, 1);
        v35 = *a3;
        result = sub_1B0CA7EF4(v9);
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

uint64_t sub_1B0C65024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5D00, &qword_1B0EF1FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C65110(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
      if (v10 < 0 || (v11 = byte_1F2722538[*(result + v7) + 32], v11 < 0))
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

      if (qword_1EB6E5CC0 != -1)
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

      v12 = byte_1EB6E5D20;
      v13 = *(v5 + 24);
      if (v10 == byte_1EB6E5D20)
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
        if (v22 != v12 && ((a3 & 1) == 0 || (v22 & 0x80) == 0 && (byte_1F2722538[v22 + 32] & 0x80000000) == 0))
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
      if (qword_1EB6E5CC0 == -1)
      {
LABEL_51:
        while (1)
        {
          v27 = *(result + v7);
          if (((a3 & 1) == 0 || (v27 & 0x80) == 0 && (byte_1F2722538[v27 + 32] & 0x80000000) == 0) && v27 != byte_1EB6E5D20)
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

unint64_t sub_1B0C65408()
{
  if (sub_1B0E46A78())
  {
    result = 10;
    goto LABEL_7;
  }

  result = sub_1B0E44818();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1B0C04CF0(0x3DuLL, 0xE100000000000000);
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

  result = sub_1B0C04CF0(0x3DuLL, 0xE100000000000000);
  if ((result & 0x100000000) == 0)
  {
    if ((result & 0xFFFFFF00) == 0)
    {
LABEL_7:
      byte_1EB6E5D20 = result;
      return result;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B0C6549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      sub_1B0C65110(a1, v9, a5 & 1, a3, a4 - a3);
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
          v5 = byte_1F2722538[*(v6 - 3) + 32];
          if ((v5 & 0x80000000) == 0)
          {
            v5 = *(v6 - 3);
            if (qword_1EB6E5CC0 != -1)
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
      sub_1B0C65780();
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
      v13 = v5 == byte_1EB6E5D20;
      if (v10 - 3 < v9)
      {
        while (*(v6 - 2) < 0 || byte_1F2722538[*(v6 - 2) + 32] < 0)
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

        if (*(v6 - 2) == byte_1EB6E5D20)
        {
          v13 = 1;
          if (v5 == byte_1EB6E5D20)
          {
            v13 = 2;
          }
        }

        else if (v5 == byte_1EB6E5D20 && (a5 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (v10 - 2 >= v9)
        {
          goto LABEL_16;
        }

        while (*(v6 - 1) < 0 || byte_1F2722538[*(v6 - 1) + 32] < 0)
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

        if (*(v6 - 1) == byte_1EB6E5D20)
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
            if ((v16 & 0x80000000) == 0 && (byte_1F2722538[v5 + 32] & 0x80000000) == 0)
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
          v17 = v5 == byte_1EB6E5D20 || v13 < 1;
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

unint64_t sub_1B0C65780()
{
  result = qword_1EB6E5D28;
  if (!qword_1EB6E5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D28);
  }

  return result;
}

uint64_t sub_1B0C657E4(void *a1)
{
  __dst[41] = *MEMORY[0x1E69E9840];
  v2 = *a1 >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      memcpy(__dst, ((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
      sub_1B0C6700C(__dst, &v16);
      sub_1B0C66C3C(__dst);
      sub_1B0C67068(__dst);
      goto LABEL_7;
    }

    v6 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v7 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    __dst[0] = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    __dst[1] = v6;
    swift_bridgeObjectRetain_n();
    sub_1B0C66F44(__dst);

    __dst[0] = v7;
    MEMORY[0x1B2726640](__dst, &__dst[1]);
  }

  else
  {
    v3 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v4 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    __dst[0] = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    __dst[1] = v3;
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(__dst);

    __dst[0] = v5;
    __dst[1] = v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(__dst);
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
    v16 = a1[4];
    v17[0] = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v16);
  }

  if (v10)
  {
    v16 = v9;
    v17[0] = v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v16);
  }

  if (v12)
  {
    v16 = v11;
    v17[0] = v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v16);
  }

  v16 = v13;
  result = MEMORY[0x1B2726640](&v16, v17);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C659D8(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v217 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = (*v1 + 32);
    v171 = 0;
    v168 = v1;
    for (i = v2 - 1; ; --i)
    {
      v5 = *v3;
      v6 = v3[1];
      v7 = v3[2];
      v194 = v3[3];
      v193 = v7;
      v192 = v6;
      v191 = v5;
      v8 = v3[4];
      v9 = v3[5];
      v10 = v3[6];
      v198 = v3[7];
      v197 = v10;
      v196 = v9;
      v195 = v8;
      v11 = v3[8];
      v12 = v3[9];
      v13 = v3[10];
      v202 = *(v3 + 176);
      v201 = v13;
      v200 = v12;
      v199 = v11;
      memmove(__dst, v3, 0xB1uLL);
      if (sub_1B0717014(__dst) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(__dst);
        v15 = *(v14 + 80);
        v215[4] = *(v14 + 64);
        v215[5] = v15;
        v215[6] = *(v14 + 96);
        v16 = *(v14 + 16);
        v215[0] = *v14;
        v215[1] = v16;
        v17 = *(v14 + 48);
        v215[2] = *(v14 + 32);
        v216 = *(v14 + 112);
        v215[3] = v17;
        v190[8] = v199;
        v190[9] = v200;
        v190[10] = v201;
        LOBYTE(v190[11]) = v202;
        v190[4] = v195;
        v190[5] = v196;
        v190[6] = v197;
        v190[7] = v198;
        v190[0] = v191;
        v190[1] = v192;
        v190[2] = v193;
        v190[3] = v194;
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v190);
        sub_1B07AD120(v18, v189);
        sub_1B0C659D8(v215);
        sub_1B075E648(&v191);
        if (!i)
        {
          goto LABEL_153;
        }

        goto LABEL_145;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(__dst);
      v20 = v19;
      v21 = *v19;
      v22 = *v19 >> 62;
      v173 = i;
      if (!v22)
      {
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        v32 = *(v21 + 32);
        v31 = *(v21 + 40);
        swift_bridgeObjectRetain_n();
        if ((v29 & 0x1000000000000000) != 0)
        {
          sub_1B07169CC(&v191, v190);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v30 = sub_1B0A6C2B0();
          v33 = v104;

          if ((v33 & 0x2000000000000000) != 0)
          {
            goto LABEL_61;
          }

LABEL_18:
          if ((v30 & 0x1000000000000000) != 0)
          {
            v34 = (v33 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v35 = v30 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = sub_1B0E46368();
          }

          if (v34)
          {
            v36 = v35 + v34;
          }

          else
          {
            v36 = 0;
          }

          MEMORY[0x1B2726640](v34, v36);
        }

        else
        {
          sub_1B07169CC(&v191, v190);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v33 = v29;
          if ((v29 & 0x2000000000000000) == 0)
          {
            goto LABEL_18;
          }

LABEL_61:
          *&v190[0] = v30;
          *(&v190[0] + 1) = v33 & 0xFFFFFFFFFFFFFFLL;
          MEMORY[0x1B2726640](v190, v190 + (HIBYTE(v33) & 0xF));
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if ((v31 & 0x1000000000000000) != 0)
        {
          v32 = sub_1B0A6C2B0();
          v105 = v109;

          if ((v105 & 0x2000000000000000) != 0)
          {
            goto LABEL_70;
          }

LABEL_64:
          if ((v32 & 0x1000000000000000) != 0)
          {
            v106 = ((v105 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v107 = v32 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v106 = sub_1B0E46368();
          }

          if (v106)
          {
            v108 = v106 + v107;
          }

          else
          {
            v108 = 0;
          }
        }

        else
        {
          v105 = v31;
          if ((v31 & 0x2000000000000000) == 0)
          {
            goto LABEL_64;
          }

LABEL_70:
          *&v190[0] = v32;
          *(&v190[0] + 1) = v105 & 0xFFFFFFFFFFFFFFLL;
          v106 = v190;
          v108 = v190 + (HIBYTE(v105) & 0xF);
        }

        MEMORY[0x1B2726640](v106, v108);

        goto LABEL_75;
      }

      v23 = (v21 & 0x3FFFFFFFFFFFFFFFLL);
      if (v22 != 1)
      {
        v38 = v23[2];
        v37 = v23[3];
        v39 = v23[4];
        if ((v37 & 0x1000000000000000) != 0)
        {
          sub_1B07169CC(&v191, v190);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v38 = sub_1B0A6C2B0();
          v41 = v110;
          if ((v110 & 0x2000000000000000) != 0)
          {
            goto LABEL_73;
          }

LABEL_26:
          if ((v38 & 0x1000000000000000) != 0)
          {
            v42 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v43 = v38 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = sub_1B0E46368();
          }

          if (v42)
          {
            v44 = v42 + v43;
          }

          else
          {
            v44 = 0;
          }
        }

        else
        {
          v40 = v23[3];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B07169CC(&v191, v190);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v41 = v37;
          if ((v37 & 0x2000000000000000) == 0)
          {
            goto LABEL_26;
          }

LABEL_73:
          *&v190[0] = v38;
          *(&v190[0] + 1) = v41 & 0xFFFFFFFFFFFFFFLL;
          v42 = v190;
          v44 = v190 + (HIBYTE(v41) & 0xF);
        }

        MEMORY[0x1B2726640](v42, v44);

        *&v190[0] = v39;
        MEMORY[0x1B2726640](v190, v190 + 8);
LABEL_75:

        goto LABEL_111;
      }

      memcpy(v190, v23 + 2, 0x148uLL);
      v24 = *(&v190[0] + 1);
      v25 = *&v190[0];
      if ((*(&v190[0] + 1) & 0x1000000000000000) != 0)
      {
        sub_1B07169CC(&v191, v189);
        sub_1B0C6700C(v190, v189);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v25 = sub_1B0A6C2B0();
        v103 = v102;

        v24 = v103;
      }

      else
      {
        sub_1B07169CC(&v191, v189);
        sub_1B0C6700C(v190, v189);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      if ((v24 & 0x2000000000000000) != 0)
      {
        *v189 = v25;
        *&v189[8] = v24 & 0xFFFFFFFFFFFFFFLL;
        v26 = v189;
        v28 = &v189[HIBYTE(v24) & 0xF];
      }

      else
      {
        if ((v25 & 0x1000000000000000) != 0)
        {
          v26 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v27 = v25 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = sub_1B0E46368();
        }

        v28 = v26 ? &v26[v27] : 0;
      }

      MEMORY[0x1B2726640](v26, v28);

      v187[8] = *(&v190[16] + 8);
      v187[9] = *(&v190[17] + 8);
      v187[10] = *(&v190[18] + 8);
      v187[4] = *(&v190[12] + 8);
      v187[5] = *(&v190[13] + 8);
      v187[6] = *(&v190[14] + 8);
      v187[7] = *(&v190[15] + 8);
      v187[0] = *(&v190[8] + 8);
      v187[1] = *(&v190[9] + 8);
      v187[2] = *(&v190[10] + 8);
      v188 = BYTE8(v190[19]);
      v187[3] = *(&v190[11] + 8);
      if (sub_1B0717014(v187) != 1)
      {
        break;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v187);
      v46 = *(v45 + 80);
      v213[4] = *(v45 + 64);
      v213[5] = v46;
      v213[6] = *(v45 + 96);
      v47 = *(v45 + 16);
      v213[0] = *v45;
      v213[1] = v47;
      v48 = *(v45 + 48);
      v213[2] = *(v45 + 32);
      v214 = *(v45 + 112);
      v213[3] = v48;
      sub_1B0C659D8(v213);
LABEL_110:
      *v189 = *&v190[20];
      MEMORY[0x1B2726640](v189, &v189[8]);
      sub_1B0C67068(v190);
LABEL_111:
      v141 = v20[5];
      v140 = v20[6];
      v143 = v20[7];
      v142 = v20[8];
      v145 = v20[9];
      v144 = v20[10];
      if (!v141)
      {
        goto LABEL_122;
      }

      v146 = v20[4];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((v141 & 0x1000000000000000) != 0)
      {
        v146 = sub_1B0A6C2B0();
        v170 = v150;

        v141 = v170;
        if ((v170 & 0x2000000000000000) == 0)
        {
LABEL_114:
          if ((v146 & 0x1000000000000000) != 0)
          {
            v147 = ((v141 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v148 = v146 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v147 = sub_1B0E46368();
          }

          if (v147)
          {
            v149 = v147 + v148;
          }

          else
          {
            v149 = 0;
          }

          goto LABEL_121;
        }
      }

      else if ((v141 & 0x2000000000000000) == 0)
      {
        goto LABEL_114;
      }

      *&v190[0] = v146;
      *(&v190[0] + 1) = v141 & 0xFFFFFFFFFFFFFFLL;
      v147 = v190;
      v149 = v190 + (HIBYTE(v141) & 0xF);
LABEL_121:
      MEMORY[0x1B2726640](v147, v149);

LABEL_122:
      if (!v143)
      {
        goto LABEL_133;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((v143 & 0x1000000000000000) != 0)
      {
        v140 = sub_1B0A6C2B0();
        v155 = v154;

        v143 = v155;
        if ((v155 & 0x2000000000000000) == 0)
        {
LABEL_125:
          if ((v140 & 0x1000000000000000) != 0)
          {
            v151 = ((v143 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v152 = v140 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v151 = sub_1B0E46368();
          }

          if (v151)
          {
            v153 = v151 + v152;
          }

          else
          {
            v153 = 0;
          }

          goto LABEL_132;
        }
      }

      else if ((v143 & 0x2000000000000000) == 0)
      {
        goto LABEL_125;
      }

      *&v190[0] = v140;
      *(&v190[0] + 1) = v143 & 0xFFFFFFFFFFFFFFLL;
      v151 = v190;
      v153 = v190 + (HIBYTE(v143) & 0xF);
LABEL_132:
      MEMORY[0x1B2726640](v151, v153);

LABEL_133:
      if (!v145)
      {
        goto LABEL_144;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((v145 & 0x1000000000000000) != 0)
      {
        v142 = sub_1B0A6C2B0();
        v160 = v159;

        v145 = v160;
        if ((v160 & 0x2000000000000000) == 0)
        {
LABEL_136:
          if ((v142 & 0x1000000000000000) != 0)
          {
            v156 = ((v145 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v157 = v142 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v156 = sub_1B0E46368();
          }

          if (v156)
          {
            v158 = v156 + v157;
          }

          else
          {
            v158 = 0;
          }

          goto LABEL_143;
        }
      }

      else if ((v145 & 0x2000000000000000) == 0)
      {
        goto LABEL_136;
      }

      *&v190[0] = v142;
      *(&v190[0] + 1) = v145 & 0xFFFFFFFFFFFFFFLL;
      v156 = v190;
      v158 = v190 + (HIBYTE(v145) & 0xF);
LABEL_143:
      MEMORY[0x1B2726640](v156, v158);

LABEL_144:
      *&v190[0] = v144;
      MEMORY[0x1B2726640](v190, v190 + 8);
      sub_1B075E648(&v191);
      i = v173;
      if (!v173)
      {
LABEL_153:
        v1 = v168;
        goto LABEL_154;
      }

LABEL_145:
      v3 = (v3 + 184);
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v187);
    v169 = v49;
    v50 = *v49;
    v51 = *v49 >> 62;
    if (v51)
    {
      v52 = (v50 & 0x3FFFFFFFFFFFFFFFLL);
      if (v51 == 1)
      {
        memcpy(v189, v52 + 2, sizeof(v189));
        *v181 = *v189;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C6700C(v189, v184);
        v53 = v171;
        sub_1B0C66F44(v181);

        v185[8] = *&v189[264];
        v185[9] = *&v189[280];
        v185[10] = *&v189[296];
        v185[4] = *&v189[200];
        v185[5] = *&v189[216];
        v185[6] = *&v189[232];
        v185[7] = *&v189[248];
        v185[0] = *&v189[136];
        v185[1] = *&v189[152];
        v185[2] = *&v189[168];
        v186 = v189[312];
        v185[3] = *&v189[184];
        if (sub_1B0717014(v185) == 1)
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v185);
          v55 = *(v54 + 80);
          v211[4] = *(v54 + 64);
          v211[5] = v55;
          v211[6] = *(v54 + 96);
          v56 = *(v54 + 16);
          v211[0] = *v54;
          v211[1] = v56;
          v57 = *(v54 + 48);
          v211[2] = *(v54 + 32);
          v212 = *(v54 + 112);
          v211[3] = v57;
          sub_1B0C659D8(v211);
LABEL_101:
          v184[0] = *&v189[320];
          MEMORY[0x1B2726640](v184, &v184[1]);
          sub_1B0C67068(v189);
          goto LABEL_102;
        }

        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v185);
        v64 = *v63;
        v65 = *v63 >> 62;
        v172 = v63;
        if (v65)
        {
          v66 = (v64 & 0x3FFFFFFFFFFFFFFFLL);
          if (v65 == 1)
          {
            memcpy(v184, v66 + 2, sizeof(v184));
            v178[0] = v184[0];
            v178[1] = v184[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0C6700C(v184, v181);
            sub_1B0C66F44(v178);

            v182[8] = *&v184[33];
            v182[9] = *&v184[35];
            v182[10] = *&v184[37];
            v182[4] = *&v184[25];
            v182[5] = *&v184[27];
            v182[6] = *&v184[29];
            v182[7] = *&v184[31];
            v182[0] = *&v184[17];
            v182[1] = *&v184[19];
            v182[2] = *&v184[21];
            v183 = v184[39];
            v182[3] = *&v184[23];
            if (sub_1B0717014(v182) == 1)
            {
              __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v182);
              v68 = *(v67 + 80);
              v209[4] = *(v67 + 64);
              v209[5] = v68;
              v209[6] = *(v67 + 96);
              v69 = *(v67 + 16);
              v209[0] = *v67;
              v209[1] = v69;
              v70 = *(v67 + 48);
              v209[2] = *(v67 + 32);
              v210 = *(v67 + 112);
              v209[3] = v70;
              sub_1B0C659D8(v209);
LABEL_93:
              *v181 = v184[40];
              MEMORY[0x1B2726640](v181, &v181[8]);
              sub_1B0C67068(v184);
              goto LABEL_94;
            }

            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v182);
            v77 = *v76;
            v78 = *v76 >> 62;
            v167 = v76;
            if (v78)
            {
              v79 = (v77 & 0x3FFFFFFFFFFFFFFFLL);
              if (v78 == 1)
              {
                memcpy(v181, v79 + 2, sizeof(v181));
                v176[0] = *v181;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B0C6700C(v181, v178);
                sub_1B0C66F44(v176);

                v179[8] = *&v181[264];
                v179[9] = *&v181[280];
                v179[10] = *&v181[296];
                v180 = v181[312];
                v179[4] = *&v181[200];
                v179[5] = *&v181[216];
                v179[6] = *&v181[232];
                v179[7] = *&v181[248];
                v179[0] = *&v181[136];
                v179[1] = *&v181[152];
                v179[2] = *&v181[168];
                v179[3] = *&v181[184];
                if (sub_1B0717014(v179) == 1)
                {
                  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v179);
                  v81 = *(v80 + 80);
                  v207[4] = *(v80 + 64);
                  v207[5] = v81;
                  v207[6] = *(v80 + 96);
                  v82 = *(v80 + 16);
                  v207[0] = *v80;
                  v207[1] = v82;
                  v83 = *(v80 + 48);
                  v207[2] = *(v80 + 32);
                  v208 = *(v80 + 112);
                  v207[3] = v83;
                  sub_1B0C659D8(v207);
                }

                else
                {
                  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v179);
                  v165 = v89;
                  v90 = *v89;
                  v91 = *v89 >> 62;
                  if (v91)
                  {
                    v92 = (v90 & 0x3FFFFFFFFFFFFFFFLL);
                    if (v91 == 1)
                    {
                      memcpy(v178, v92 + 2, sizeof(v178));
                      v174 = v178[0];
                      v175 = v178[1];
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      sub_1B0C6700C(v178, v176);
                      sub_1B0C66F44(&v174);

                      v176[9] = *&v178[35];
                      v176[10] = *&v178[37];
                      v176[4] = *&v178[25];
                      v176[5] = *&v178[27];
                      v176[6] = *&v178[29];
                      v177 = v178[39];
                      v176[7] = *&v178[31];
                      v176[8] = *&v178[33];
                      v176[0] = *&v178[17];
                      v176[1] = *&v178[19];
                      v176[2] = *&v178[21];
                      v176[3] = *&v178[23];
                      if (sub_1B0717014(v176) == 1)
                      {
                        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v176);
                        v94 = *(v93 + 80);
                        v205[4] = *(v93 + 64);
                        v205[5] = v94;
                        v205[6] = *(v93 + 96);
                        v95 = *(v93 + 16);
                        v205[0] = *v93;
                        v205[1] = v95;
                        v96 = *(v93 + 48);
                        v205[2] = *(v93 + 32);
                        v206 = *(v93 + 112);
                        v205[3] = v96;
                        sub_1B0C659D8(v205);
                      }

                      else
                      {
                        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v176);
                        v112 = v111[6];
                        v204[7] = v111[7];
                        v113 = v111[9];
                        v204[8] = v111[8];
                        v204[9] = v113;
                        v204[10] = v111[10];
                        v114 = v111[2];
                        v204[3] = v111[3];
                        v115 = v111[5];
                        v204[4] = v111[4];
                        v204[5] = v115;
                        v204[6] = v112;
                        v116 = v111[1];
                        v204[0] = *v111;
                        v204[1] = v116;
                        v204[2] = v114;
                        sub_1B0C657E4(v204);
                      }

                      v174 = v178[40];
                      MEMORY[0x1B2726640](&v174, &v175);
                      sub_1B0C67068(v178);
                    }

                    else
                    {
                      v100 = v92[3];
                      v101 = v92[4];
                      v178[0] = v92[2];
                      v178[1] = v100;
                      swift_bridgeObjectRetain_n();
                      sub_1B0C66F44(v178);

                      v178[0] = v101;
                      MEMORY[0x1B2726640](v178, &v178[1]);
                    }
                  }

                  else
                  {
                    v97 = *(v90 + 24);
                    v98 = *(v90 + 32);
                    v99 = *(v90 + 40);
                    v178[0] = *(v90 + 16);
                    v178[1] = v97;
                    swift_bridgeObjectRetain_n();
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0C66F44(v178);

                    v178[0] = v98;
                    v178[1] = v99;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0C66F44(v178);
                  }

                  v117 = v165[5];
                  v118 = v165[6];
                  v120 = v165[7];
                  v119 = v165[8];
                  v122 = v165[9];
                  v121 = v165[10];
                  if (v117)
                  {
                    v178[0] = v165[4];
                    v178[1] = v117;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0C66F44(v178);
                  }

                  if (v120)
                  {
                    v178[0] = v118;
                    v178[1] = v120;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0C66F44(v178);
                  }

                  if (v122)
                  {
                    v178[0] = v119;
                    v178[1] = v122;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0C66F44(v178);
                  }

                  v178[0] = v121;
                  MEMORY[0x1B2726640](v178, &v178[1]);
                }

                v178[0] = *&v181[320];
                MEMORY[0x1B2726640](v178, &v178[1]);
                sub_1B0C67068(v181);
                goto LABEL_86;
              }

              v87 = v79[3];
              v88 = v79[4];
              *v181 = v79[2];
              *&v181[8] = v87;
              swift_bridgeObjectRetain_n();
              sub_1B0C66F44(v181);

              *v181 = v88;
              MEMORY[0x1B2726640](v181, &v181[8]);
            }

            else
            {
              v84 = *(v77 + 24);
              v85 = *(v77 + 32);
              v86 = *(v77 + 40);
              *v181 = *(v77 + 16);
              *&v181[8] = v84;
              swift_bridgeObjectRetain_n();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C66F44(v181);

              *v181 = v85;
              *&v181[8] = v86;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C66F44(v181);
            }

LABEL_86:
            v123 = v167[5];
            v124 = v167[6];
            v125 = v167[7];
            v166 = v167[8];
            v127 = v167[9];
            v126 = v167[10];
            if (v123)
            {
              *v181 = v167[4];
              *&v181[8] = v123;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C66F44(v181);
            }

            if (v125)
            {
              *v181 = v124;
              *&v181[8] = v125;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C66F44(v181);
            }

            if (v127)
            {
              *v181 = v166;
              *&v181[8] = v127;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C66F44(v181);
            }

            *v181 = v126;
            MEMORY[0x1B2726640](v181, &v181[8]);
            goto LABEL_93;
          }

          v74 = v66[3];
          v75 = v66[4];
          v184[0] = v66[2];
          v184[1] = v74;
          swift_bridgeObjectRetain_n();
          sub_1B0C66F44(v184);

          v184[0] = v75;
          MEMORY[0x1B2726640](v184, &v184[1]);
        }

        else
        {
          v71 = *(v64 + 24);
          v72 = *(v64 + 32);
          v73 = *(v64 + 40);
          v184[0] = *(v64 + 16);
          v184[1] = v71;
          swift_bridgeObjectRetain_n();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C66F44(v184);

          v184[0] = v72;
          v184[1] = v73;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C66F44(v184);
        }

LABEL_94:
        v128 = v172[5];
        v129 = v172[6];
        v131 = v172[7];
        v130 = v172[8];
        v133 = v172[9];
        v132 = v172[10];
        if (v128)
        {
          v184[0] = v172[4];
          v184[1] = v128;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C66F44(v184);
        }

        if (v131)
        {
          v184[0] = v129;
          v184[1] = v131;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C66F44(v184);
        }

        if (v133)
        {
          v184[0] = v130;
          v184[1] = v133;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C66F44(v184);
        }

        v184[0] = v132;
        MEMORY[0x1B2726640](v184, &v184[1]);
        goto LABEL_101;
      }

      v61 = v52[3];
      v62 = v52[4];
      *v189 = v52[2];
      *&v189[8] = v61;
      swift_bridgeObjectRetain_n();
      v53 = v171;
      sub_1B0C66F44(v189);

      *v189 = v62;
      MEMORY[0x1B2726640](v189, &v189[8]);
    }

    else
    {
      v58 = *(v50 + 24);
      v59 = *(v50 + 32);
      v60 = *(v50 + 40);
      *v189 = *(v50 + 16);
      *&v189[8] = v58;
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v53 = v171;
      sub_1B0C66F44(v189);

      *v189 = v59;
      *&v189[8] = v60;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C66F44(v189);
    }

LABEL_102:
    v134 = v169[5];
    v135 = v169[6];
    v136 = v169[7];
    v137 = v169[8];
    v138 = v169[9];
    v139 = v169[10];
    if (v134)
    {
      *v189 = v169[4];
      *&v189[8] = v134;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C66F44(v189);
    }

    if (v136)
    {
      *v189 = v135;
      *&v189[8] = v136;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C66F44(v189);
    }

    if (v138)
    {
      *v189 = v137;
      *&v189[8] = v138;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C66F44(v189);
      v171 = v53;
    }

    else
    {
      v171 = v53;
    }

    *v189 = v139;
    MEMORY[0x1B2726640](v189, &v189[8]);
    goto LABEL_110;
  }

LABEL_154:
  v162 = v1[1];
  v161 = v1[2];
  *&v190[0] = v162;
  *(&v190[0] + 1) = v161;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C66F44(v190);

  v164 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C66C3C(uint64_t *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  *&__dst[0] = v3;
  *(&__dst[0] + 1) = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C66F44(__dst);

  v4 = *(a1 + 35);
  v30[8] = *(a1 + 33);
  v30[9] = v4;
  v30[10] = *(a1 + 37);
  v31 = *(a1 + 312);
  v5 = *(a1 + 27);
  v30[4] = *(a1 + 25);
  v30[5] = v5;
  v6 = *(a1 + 31);
  v30[6] = *(a1 + 29);
  v30[7] = v6;
  v7 = *(a1 + 19);
  v30[0] = *(a1 + 17);
  v30[1] = v7;
  v8 = *(a1 + 23);
  v30[2] = *(a1 + 21);
  v30[3] = v8;
  if (sub_1B0717014(v30) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v30);
    __dst[4] = *(v9 + 64);
    __dst[5] = *(v9 + 80);
    __dst[6] = *(v9 + 96);
    *&__dst[7] = *(v9 + 112);
    __dst[0] = *v9;
    __dst[1] = *(v9 + 16);
    __dst[2] = *(v9 + 32);
    __dst[3] = *(v9 + 48);
    sub_1B0C659D8(__dst);
    goto LABEL_16;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v30);
  v12 = v10[4];
  v11 = v10[5];
  v13 = v10[6];
  v14 = v10[7];
  v15 = v10[9];
  v24 = v13;
  v25 = v10[8];
  v26 = v10[10];
  v16 = *v10 >> 62;
  if (v16)
  {
    if (v16 == 1)
    {
      memcpy(__dst, ((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
      sub_1B0C6700C(__dst, &v27);
      sub_1B0C66C3C(__dst);
      sub_1B0C67068(__dst);
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
    sub_1B0C66F44(__dst);

    *&__dst[0] = v21;
    MEMORY[0x1B2726640](__dst, __dst + 8);
  }

  else
  {
    v17 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v18 = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    *&__dst[0] = *((*v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    *(&__dst[0] + 1) = v17;
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(__dst);

    *&__dst[0] = v19;
    *(&__dst[0] + 1) = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(__dst);
  }

  if (v11)
  {
LABEL_10:
    v27 = v12;
    v28[0] = v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v27);
  }

LABEL_11:
  if (v14)
  {
    v27 = v24;
    v28[0] = v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v27);
  }

  if (v15)
  {
    v27 = v25;
    v28[0] = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C66F44(&v27);
  }

  v27 = v26;
  MEMORY[0x1B2726640](&v27, v28);
LABEL_16:
  v27 = a1[40];
  result = MEMORY[0x1B2726640](&v27, v28);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C66F44(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B0A6C2B0();
    v11 = v10;

    v2 = v9;
    *a1 = v9;
    a1[1] = v11;
    v3 = v11;
    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13[0] = v2;
    v13[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v8 = v13;
    v7 = v13 + (HIBYTE(v3) & 0xF);
    return MEMORY[0x1B2726640](v8, v7);
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0x1000000000000000) != 0)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1B0E46368();
  }

  if (v5)
  {
    v7 = (v6 + v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = v5;
  return MEMORY[0x1B2726640](v8, v7);
}

uint64_t sub_1B0C670BC(uint64_t a1, uint64_t a2)
{
  v3 = PCG32Random.next()();
  swift_beginAccess();
  v4 = *(a2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((result & 1) == 0)
  {
    result = sub_1B0C0C114(0, *(v4 + 16) + 1, 1, v4);
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
      result = sub_1B0C0C114((v8 > 1), v9 + 1, 1, v4);
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

uint64_t sub_1B0C671E0(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_1B0E44DC8();
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

      v4 = sub_1B0C0C114(isUniquelyReferenced_nonNull_native, v9, 1, v4);
      v10 = *(v4 + 3) >> 1;
    }

    v11 = *(v4 + 2);
    result = sub_1B0E462A8();
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