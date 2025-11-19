unint64_t sub_1B49ECB48(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    if (a1)
    {
      v5 = 0xD00000000000002DLL;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (a1)
    {
      v6 = "lastFourWeeksWorkoutProperties";
    }

    else
    {
      v6 = "elevation_milestone>.";
    }

    v7 = v6 | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD00000000000002DLL : 0xD00000000000001ELL;
      v9 = *(*(v2 + 48) + v4) ? "lastFourWeeksWorkoutProperties" : "elevation_milestone>.";
      if (v8 == v5 && (v9 | 0x8000000000000000) == v7)
      {
        break;
      }

      v11 = sub_1B4D18DCC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B49ECC90(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v24 + 48) + v4);
      v7 = v6 == 2 ? 0xD000000000000019 : 0xD000000000000015;
      v8 = v6 == 2 ? "lastSixWeeksWorkoutProperties" : "ness_plus_modality> workout.";
      v9 = *(*(v24 + 48) + v4) ? 0xD00000000000001ALL : 0xD000000000000019;
      v10 = *(*(v24 + 48) + v4) ? "rmatted_average_duration>." : "e of <distance_milestone>.";
      v11 = *(*(v24 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v24 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v12 | 0x8000000000000000;
      v14 = v5 == 2 ? 0xD000000000000019 : 0xD000000000000015;
      v15 = v5 == 2 ? "lastSixWeeksWorkoutProperties" : "ness_plus_modality> workout.";
      v16 = v5 ? 0xD00000000000001ALL : 0xD000000000000019;
      v17 = v5 ? "rmatted_average_duration>." : "e of <distance_milestone>.";
      v18 = v5 <= 1 ? v16 : v14;
      v19 = v5 <= 1 ? v17 : v15;
      if (v11 == v18 && v13 == (v19 | 0x8000000000000000))
      {
        break;
      }

      v20 = sub_1B4D18DCC();

      if ((v20 & 1) == 0)
      {
        v4 = (v4 + 1) & v22;
        if ((*(v23 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B49ECE2C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    if (a1)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    if (a1)
    {
      v6 = "ness_plus_modality> workout.";
    }

    else
    {
      v6 = "lastSixWeeksWorkoutProperties";
    }

    v7 = v6 | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000015 : 0xD000000000000019;
      v9 = *(*(v2 + 48) + v4) ? "ness_plus_modality> workout." : "lastSixWeeksWorkoutProperties";
      if (v8 == v5 && (v9 | 0x8000000000000000) == v7)
      {
        break;
      }

      v11 = sub_1B4D18DCC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1B49ECF74(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B4CDF47C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B49ECFF0(v6);
  return sub_1B4D189FC();
}

void sub_1B49ECFF0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4D18D4C();
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
        sub_1B498AFB8(0, &qword_1EB8A7928, 0x1E696C5B8);
        v6 = sub_1B4D1844C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B49ED434(v8, v9, a1, v4);
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
    sub_1B49ED104(0, v2, 1, a1);
  }
}

void sub_1B49ED104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = sub_1B4D1777C();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v39 - v12;
  v48 = sub_1B4D174EC();
  v13 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v39 - v17;
  v40 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v44 = (v8 + 8);
    v45 = (v16 + 8);
    v52 = v18;
    v19 = v18 + 8 * a3 - 8;
    v20 = a1 - a3;
LABEL_5:
    v42 = v19;
    v43 = a3;
    v21 = *(v52 + 8 * a3);
    v41 = v20;
    v22 = v20;
    while (1)
    {
      v23 = *v19;
      v24 = v21;
      v53 = v24;
      v25 = v23;
      v26 = [v24 dateInterval];
      v27 = v46;
      sub_1B4D174AC();

      v28 = v49;
      sub_1B4D174DC();
      v29 = *v45;
      v30 = v48;
      (*v45)(v27, v48);
      v31 = [v25 dateInterval];
      v32 = v47;
      sub_1B4D174AC();

      v33 = v50;
      sub_1B4D174DC();
      v29(v32, v30);
      LOBYTE(v32) = sub_1B4D1773C();
      v34 = *v44;
      v35 = v33;
      v36 = v51;
      (*v44)(v35, v51);
      v34(v28, v36);

      if ((v32 & 1) == 0)
      {
LABEL_4:
        a3 = v43 + 1;
        v19 = v42 + 8;
        v20 = v41 - 1;
        if (v43 + 1 == v40)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v37 = *v19;
      v21 = *(v19 + 8);
      *v19 = v21;
      *(v19 + 8) = v37;
      v19 -= 8;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B49ED434(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v150 = sub_1B4D1777C();
  v8 = *(v150 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v148 = &v131 - v12;
  v147 = sub_1B4D174EC();
  v13 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v131 - v17;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_86:
    v8 = *v137;
    if (!*v137)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_118:
      v20 = sub_1B4CDDE84(v20);
    }

    v152 = v20;
    v126 = *(v20 + 2);
    if (v126 >= 2)
    {
      do
      {
        v127 = *a3;
        if (!*a3)
        {
          goto LABEL_122;
        }

        v128 = a3;
        v129 = *&v20[16 * v126];
        a3 = *&v20[16 * v126 + 24];
        sub_1B49EDE58((v127 + 8 * v129), (v127 + 8 * *&v20[16 * v126 + 16]), (v127 + 8 * a3), v8);
        if (v5)
        {
          break;
        }

        if (a3 < v129)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1B4CDDE84(v20);
        }

        if (v126 - 2 >= *(v20 + 2))
        {
          goto LABEL_112;
        }

        v130 = &v20[16 * v126];
        *v130 = v129;
        *(v130 + 1) = a3;
        v152 = v20;
        sub_1B4CDDDF8(v126 - 1);
        v20 = v152;
        v126 = *(v152 + 2);
        a3 = v128;
      }

      while (v126 > 1);
    }

LABEL_96:

    return;
  }

  v132 = a4;
  v19 = 0;
  v143 = (v8 + 8);
  v144 = (v16 + 8);
  v20 = MEMORY[0x1E69E7CC0];
  v133 = a3;
  while (1)
  {
    v21 = v19++;
    if (v19 < v18)
    {
      v141 = v18;
      v135 = v20;
      v136 = v5;
      v22 = *a3;
      v23 = *(*a3 + 8 * v19);
      v138 = 8 * v21;
      v24 = (v22 + 8 * v21);
      v25 = *v24;
      v8 = (v24 + 2);
      v26 = v23;
      v151 = v26;
      v27 = v25;
      v134 = v27;
      v28 = [v26 dateInterval];
      v29 = v145;
      sub_1B4D174AC();

      v30 = v148;
      sub_1B4D174DC();
      v31 = *v144;
      v32 = v147;
      (*v144)(v29, v147);
      v33 = [v27 dateInterval];
      v34 = v21;
      v35 = v146;
      sub_1B4D174AC();

      v36 = v149;
      sub_1B4D174DC();
      v140 = v31;
      v31(v35, v32);
      LODWORD(v142) = sub_1B4D1773C();
      v37 = *v143;
      v38 = v150;
      (*v143)(v36, v150);
      v139 = v37;
      (v37)(v30, v38);

      v134 = v34;
      v39 = v34 + 2;
      while (1)
      {
        v19 = v141;
        if (v141 == v39)
        {
          break;
        }

        v40 = *(v8 - 8);
        v41 = *v8;
        v151 = v41;
        v42 = v40;
        v43 = [v41 dateInterval];
        v44 = v145;
        sub_1B4D174AC();

        v45 = v148;
        sub_1B4D174DC();
        v46 = v147;
        v47 = v140;
        v140(v44, v147);
        v48 = [v42 dateInterval];
        v49 = v146;
        sub_1B4D174AC();

        v50 = v149;
        sub_1B4D174DC();
        v47(v49, v46);
        LODWORD(v49) = sub_1B4D1773C() & 1;
        v51 = v50;
        v52 = v150;
        v53 = v139;
        (v139)(v51, v150);
        v53(v45, v52);

        ++v39;
        v8 += 8;
        if ((v142 & 1) != v49)
        {
          v19 = (v39 - 1);
          break;
        }
      }

      v20 = v135;
      v5 = v136;
      a3 = v133;
      v21 = v134;
      v54 = v138;
      if (v142)
      {
        if (v19 < v134)
        {
          goto LABEL_115;
        }

        if (v134 < v19)
        {
          v55 = 8 * v19 - 8;
          v56 = v19;
          v57 = v134;
          do
          {
            if (v57 != --v56)
            {
              v59 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v58 = *(v59 + v54);
              *(v59 + v54) = *(v59 + v55);
              *(v59 + v55) = v58;
            }

            ++v57;
            v55 -= 8;
            v54 += 8;
          }

          while (v57 < v56);
        }
      }
    }

    v60 = *(a3 + 8);
    if (v19 < v60)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_114;
      }

      if (v19 - v21 < v132)
      {
        v61 = (v21 + v132);
        if (__OFADD__(v21, v132))
        {
          goto LABEL_116;
        }

        if (v61 >= v60)
        {
          v61 = *(a3 + 8);
        }

        if (v61 < v21)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v19 != v61)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v19 < v21)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1B4A1D58C(0, *(v20 + 2) + 1, 1, v20);
    }

    v8 = *(v20 + 2);
    v81 = *(v20 + 3);
    v82 = v8 + 1;
    if (v8 >= v81 >> 1)
    {
      v20 = sub_1B4A1D58C((v81 > 1), v8 + 1, 1, v20);
    }

    *(v20 + 2) = v82;
    v83 = &v20[16 * v8];
    *(v83 + 4) = v21;
    *(v83 + 5) = v19;
    v84 = *v137;
    if (!*v137)
    {
      goto LABEL_123;
    }

    if (v8)
    {
      while (1)
      {
        v8 = v82 - 1;
        if (v82 >= 4)
        {
          break;
        }

        if (v82 == 3)
        {
          v85 = *(v20 + 4);
          v86 = *(v20 + 5);
          v95 = __OFSUB__(v86, v85);
          v87 = v86 - v85;
          v88 = v95;
LABEL_55:
          if (v88)
          {
            goto LABEL_102;
          }

          v101 = &v20[16 * v82];
          v103 = *v101;
          v102 = *(v101 + 1);
          v104 = __OFSUB__(v102, v103);
          v105 = v102 - v103;
          v106 = v104;
          if (v104)
          {
            goto LABEL_105;
          }

          v107 = &v20[16 * v8 + 32];
          v109 = *v107;
          v108 = *(v107 + 1);
          v95 = __OFSUB__(v108, v109);
          v110 = v108 - v109;
          if (v95)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v105, v110))
          {
            goto LABEL_109;
          }

          if (v105 + v110 >= v87)
          {
            if (v87 < v110)
            {
              v8 = v82 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v111 = &v20[16 * v82];
        v113 = *v111;
        v112 = *(v111 + 1);
        v95 = __OFSUB__(v112, v113);
        v105 = v112 - v113;
        v106 = v95;
LABEL_69:
        if (v106)
        {
          goto LABEL_104;
        }

        v114 = &v20[16 * v8];
        v116 = *(v114 + 4);
        v115 = *(v114 + 5);
        v95 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v95)
        {
          goto LABEL_107;
        }

        if (v117 < v105)
        {
          goto LABEL_3;
        }

LABEL_76:
        v122 = v8 - 1;
        if (v8 - 1 >= v82)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
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
          goto LABEL_117;
        }

        if (!*a3)
        {
          goto LABEL_120;
        }

        v123 = *&v20[16 * v122 + 32];
        v124 = *&v20[16 * v8 + 40];
        sub_1B49EDE58((*a3 + 8 * v123), (*a3 + 8 * *&v20[16 * v8 + 32]), (*a3 + 8 * v124), v84);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v124 < v123)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1B4CDDE84(v20);
        }

        if (v122 >= *(v20 + 2))
        {
          goto LABEL_99;
        }

        v125 = &v20[16 * v122];
        *(v125 + 4) = v123;
        *(v125 + 5) = v124;
        v152 = v20;
        sub_1B4CDDDF8(v8);
        v20 = v152;
        v82 = *(v152 + 2);
        if (v82 <= 1)
        {
          goto LABEL_3;
        }
      }

      v89 = &v20[16 * v82 + 32];
      v90 = *(v89 - 64);
      v91 = *(v89 - 56);
      v95 = __OFSUB__(v91, v90);
      v92 = v91 - v90;
      if (v95)
      {
        goto LABEL_100;
      }

      v94 = *(v89 - 48);
      v93 = *(v89 - 40);
      v95 = __OFSUB__(v93, v94);
      v87 = v93 - v94;
      v88 = v95;
      if (v95)
      {
        goto LABEL_101;
      }

      v96 = &v20[16 * v82];
      v98 = *v96;
      v97 = *(v96 + 1);
      v95 = __OFSUB__(v97, v98);
      v99 = v97 - v98;
      if (v95)
      {
        goto LABEL_103;
      }

      v95 = __OFADD__(v87, v99);
      v100 = v87 + v99;
      if (v95)
      {
        goto LABEL_106;
      }

      if (v100 >= v92)
      {
        v118 = &v20[16 * v8 + 32];
        v120 = *v118;
        v119 = *(v118 + 1);
        v95 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v95)
        {
          goto LABEL_110;
        }

        if (v87 < v121)
        {
          v8 = v82 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v18 = *(a3 + 8);
    if (v19 >= v18)
    {
      goto LABEL_86;
    }
  }

  v135 = v20;
  v136 = v5;
  v142 = *a3;
  v62 = v142 + 8 * v19 - 8;
  v134 = v21;
  v63 = (v21 - v19);
  v138 = v61;
LABEL_28:
  v140 = v62;
  v141 = v19;
  v64 = *(v142 + 8 * v19);
  v139 = v63;
  while (1)
  {
    v65 = *v62;
    v66 = v64;
    v151 = v66;
    v67 = v65;
    v68 = [v66 dateInterval];
    v69 = v145;
    sub_1B4D174AC();

    v70 = v148;
    sub_1B4D174DC();
    v71 = *v144;
    v72 = v147;
    (*v144)(v69, v147);
    v73 = [v67 dateInterval];
    v74 = v146;
    sub_1B4D174AC();

    v75 = v149;
    sub_1B4D174DC();
    v71(v74, v72);
    LOBYTE(v74) = sub_1B4D1773C();
    v8 = v143;
    v76 = *v143;
    v77 = v75;
    v78 = v150;
    (*v143)(v77, v150);
    v76(v70, v78);

    if ((v74 & 1) == 0)
    {
LABEL_27:
      v19 = v141 + 1;
      v62 = v140 + 8;
      v63 = v139 - 1;
      if (v141 + 1 != v138)
      {
        goto LABEL_28;
      }

      v19 = v138;
      v20 = v135;
      v5 = v136;
      a3 = v133;
      v21 = v134;
      goto LABEL_35;
    }

    if (!v142)
    {
      break;
    }

    v79 = *v62;
    v64 = *(v62 + 8);
    *v62 = v64;
    *(v62 + 8) = v79;
    v62 -= 8;
    if (__CFADD__(v63++, 1))
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t sub_1B49EDE58(void **a1, void **a2, void **a3, void **a4)
{
  v82 = sub_1B4D1777C();
  v73 = *(v82 - 8);
  v9 = v73[8];
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v68 - v12;
  v79 = sub_1B4D174EC();
  v13 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v68 - v17;
  v18 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v18 = a2 - a1;
  }

  v19 = v18 >> 3;
  v20 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v20 = a3 - a2;
  }

  v21 = v20 >> 3;
  v83 = a4;
  if (v19 < v20 >> 3)
  {
    if (a4 != a1 || &a1[v19] <= a4)
    {
      v22 = a4;
      v23 = v16;
      memmove(v22, a1, 8 * v19);
      v16 = v23;
      a4 = v83;
    }

    v84 = &a4[v19];
    if (a2 - a1 < 8 || a2 >= a3)
    {
      a2 = a1;
      goto LABEL_39;
    }

    v24 = a2;
    v70 = v4;
    ++v73;
    v74 = (v16 + 8);
    v75 = a3;
    while (1)
    {
      v83 = a4;
      v76 = a1;
      v25 = *a4;
      v26 = *v24;
      v27 = v25;
      v28 = [v26 dateInterval];
      v29 = v77;
      sub_1B4D174AC();

      v30 = v80;
      sub_1B4D174DC();
      v31 = *v74;
      v32 = v29;
      v33 = v79;
      (*v74)(v32, v79);
      v34 = [v27 dateInterval];
      v35 = v78;
      sub_1B4D174AC();

      v36 = v81;
      sub_1B4D174DC();
      v31(v35, v33);
      LOBYTE(v35) = sub_1B4D1773C();
      v37 = *v73;
      v38 = v36;
      v39 = v82;
      (*v73)(v38, v82);
      v37(v30, v39);

      if ((v35 & 1) == 0)
      {
        break;
      }

      v40 = v24;
      v41 = v76;
      v42 = v76 == v24++;
      a4 = v83;
      if (!v42)
      {
        goto LABEL_17;
      }

LABEL_18:
      a1 = v41 + 1;
      if (a4 >= v84 || v24 >= v75)
      {
        a2 = a1;
        goto LABEL_39;
      }
    }

    v40 = v83;
    a4 = v83 + 1;
    v41 = v76;
    if (v76 == v83)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v41 = *v40;
    goto LABEL_18;
  }

  if (a4 != a2 || &a2[v21] <= a4)
  {
    v43 = v16;
    memmove(a4, a2, 8 * v21);
    v16 = v43;
    a4 = v83;
  }

  v84 = &a4[v21];
  if (a3 - a2 >= 8 && a2 > a1)
  {
    v72 = (v16 + 8);
    v70 = v4;
    v71 = (v73 + 1);
    v76 = a1;
    do
    {
      v69 = a2;
      v44 = a2 - 1;
      v45 = a3 - 1;
      v46 = v84;
      v73 = a2 - 1;
      while (1)
      {
        v47 = v45;
        v48 = v45 + 1;
        v49 = *--v46;
        v50 = *v44;
        v51 = v49;
        v75 = v51;
        v52 = v50;
        v74 = v52;
        v53 = [v51 dateInterval];
        v54 = v77;
        sub_1B4D174AC();

        v55 = v80;
        sub_1B4D174DC();
        v56 = *v72;
        v57 = v54;
        v58 = v79;
        (*v72)(v57, v79);
        v59 = [v52 dateInterval];
        v60 = v78;
        sub_1B4D174AC();

        v61 = v81;
        sub_1B4D174DC();
        v56(v60, v58);
        LOBYTE(v60) = sub_1B4D1773C();
        v62 = *v71;
        v63 = v61;
        v64 = v82;
        (*v71)(v63, v82);
        v62(v55, v64);

        if (v60)
        {
          break;
        }

        a4 = v83;
        if (v48 != v84)
        {
          *v47 = *v46;
        }

        v45 = v47 - 1;
        v84 = v46;
        v44 = v73;
        if (v46 <= a4)
        {
          v84 = v46;
          a2 = v69;
          goto LABEL_39;
        }
      }

      a4 = v83;
      v65 = v76;
      a3 = v47;
      v66 = v73;
      if (v48 != v69)
      {
        *v47 = *v73;
      }

      if (v84 <= a4)
      {
        break;
      }

      a2 = v66;
    }

    while (v66 > v65);
    a2 = v66;
  }

LABEL_39:
  if (a2 != a4 || a2 >= (a4 + ((v84 - a4 + (v84 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v84 - a4));
  }

  return 1;
}

void (*sub_1B49EE474(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8C7CD90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B49EE4F4;
  }

  __break(1u);
  return result;
}

void (*sub_1B49EE4FC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8C7CD90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B49EF0BC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B49EE5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49EE8A8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1B4D18ABC();
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

uint64_t sub_1B49EE94C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B4D18ABC();
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
      result = sub_1B4D18ABC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B49B0578(&qword_1EB8A79A0, &qword_1EB8A7998, &qword_1B4D1F308);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7998, &qword_1B4D1F308);
            v9 = sub_1B49EE474(v13, i, a3);
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
        sub_1B498AFB8(0, &qword_1EB8A7928, 0x1E696C5B8);
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

uint64_t sub_1B49EEB00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B4D18ABC();
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
      result = sub_1B4D18ABC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B49B0578(&qword_1EB8A7988, &qword_1EB8A7980, &qword_1B4D1F300);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7980, &qword_1B4D1F300);
            v9 = sub_1B49EE4FC(v13, i, a3);
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
        sub_1B498AFB8(0, &qword_1EDC36DD0, 0x1E696C358);
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

unint64_t sub_1B49EECD8()
{
  v1 = *(v0 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v2 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v2);
}

unint64_t sub_1B49EED40()
{
  v1 = *(v0 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v2 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v2);
}

unint64_t sub_1B49EEDCC()
{
  v1 = *(v0 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v2 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v2);
}

unint64_t sub_1B49EEE34()
{
  v1 = *(v0 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v2 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v2);
}

unint64_t sub_1B49EEE9C()
{
  v1 = *(v0 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v2 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v2);
}

unint64_t sub_1B49EEF04()
{
  v1 = *(v0 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v2 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v2);
}

unint64_t sub_1B49EEF6C(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_1B49EEF98()
{
  result = qword_1EB8A7968;
  if (!qword_1EB8A7968)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7968);
  }

  return result;
}

uint64_t sub_1B49EEFF0(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  (*(*(Descriptor - 8) + 16))(a2, a1, Descriptor);
  return a2;
}

uint64_t sub_1B49EF054(uint64_t a1)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  (*(*(Descriptor - 8) + 8))(a1, Descriptor);
  return a1;
}

unint64_t sub_1B49EF0C8(void *a1)
{
  a1[1] = sub_1B49EF100();
  a1[2] = sub_1B49EF154();
  result = sub_1B49EF1A8();
  a1[3] = result;
  return result;
}

unint64_t sub_1B49EF100()
{
  result = qword_1EDC370A0;
  if (!qword_1EDC370A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC370A0);
  }

  return result;
}

unint64_t sub_1B49EF154()
{
  result = qword_1EDC37098;
  if (!qword_1EDC37098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37098);
  }

  return result;
}

unint64_t sub_1B49EF1A8()
{
  result = qword_1EB8A79C0;
  if (!qword_1EB8A79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A79C0);
  }

  return result;
}

uint64_t sub_1B49EF1FC()
{
  v6 = *v0;
  v7 = *(v0 + 1);
  v8 = *(v0 + 2);
  v1 = sub_1B4D173DC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B49EF1A8();
  v4 = sub_1B4D173BC();

  return v4;
}

double sub_1B49EF2A0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D173AC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B49EF154();
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);

  if (!v3)
  {
    result = v13;
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
  }

  return result;
}

__n128 InferenceResult.init(text:inferenceDuration:announceUtteranceResult:systemVersion:modelVersion:voice:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  v17 = type metadata accessor for InferenceResult();
  sub_1B498C368(a3, a9 + v17[6]);
  v18 = (a9 + v17[7]);
  *v18 = a4;
  v18[1] = a5;
  v19 = (a9 + v17[8]);
  *v19 = a6;
  v19[1] = a7;
  v20 = (a9 + v17[9]);
  result = *a8;
  v22 = *(a8 + 16);
  *v20 = *a8;
  v20[1] = v22;
  return result;
}

uint64_t type metadata accessor for InferenceResult()
{
  result = qword_1EDC397D8;
  if (!qword_1EDC397D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InferenceResult.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InferenceResult.systemVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for InferenceResult() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InferenceResult.modelVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for InferenceResult() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InferenceResult.voice.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InferenceResult() + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_1B49B3D28(v4, v5);
}

uint64_t InferenceResult.debugAudioURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for InferenceResult();
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A6948, qword_1B4D1E1C0);
  v8 = type metadata accessor for AnnounceUtteranceResult();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1B49EF720(v6);
    v9 = sub_1B4D1767C();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    sub_1B4974FBC(&v6[*(v8 + 36)], a1, &qword_1EB8A6978, &qword_1B4D47BC0);
    return sub_1B49F0218(v6, type metadata accessor for AnnounceUtteranceResult);
  }
}

uint64_t sub_1B49EF720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49EF788()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x65566D6574737973;
  v4 = 0x7265566C65646F6DLL;
  if (v1 != 4)
  {
    v4 = 0x6563696F76;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B49EF850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B49F0560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B49EF878(uint64_t a1)
{
  v2 = sub_1B49EFBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49EF8B4(uint64_t a1)
{
  v2 = sub_1B49EFBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79C8, &qword_1B4D1F380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49EFBAC();
  sub_1B4D18EFC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v28) = 0;
  sub_1B4D18CBC();
  if (!v2)
  {
    v14 = v3[2];
    LOBYTE(v28) = 1;
    sub_1B4D18CDC();
    v15 = type metadata accessor for InferenceResult();
    v16 = v15[6];
    LOBYTE(v28) = 2;
    type metadata accessor for AnnounceUtteranceResult();
    sub_1B49F011C(&qword_1EB8A79D8);
    sub_1B4D18CAC();
    v17 = (v3 + v15[7]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v28) = 3;
    sub_1B4D18C6C();
    v20 = (v3 + v15[8]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v28) = 4;
    sub_1B4D18C6C();
    v23 = (v3 + v15[9]);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v28 = *v23;
    v29 = v24;
    v30 = v25;
    v31 = v26;
    v27[15] = 5;
    sub_1B49B3D28(v28, v24);
    sub_1B49EFC00();
    sub_1B4D18CAC();
    sub_1B49EFC54(v28, v29);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B49EFBAC()
{
  result = qword_1EB8A79D0;
  if (!qword_1EB8A79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A79D0);
  }

  return result;
}

unint64_t sub_1B49EFC00()
{
  result = qword_1EB8A79E0;
  if (!qword_1EB8A79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A79E0);
  }

  return result;
}

uint64_t sub_1B49EFC54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t InferenceResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79E8, &qword_1B4D1F388);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = type metadata accessor for InferenceResult();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49EFBAC();
  v14 = v31;
  sub_1B4D18EEC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v31 = a1;
  v15 = v29;
  LOBYTE(v32) = 0;
  *v12 = sub_1B4D18BBC();
  v12[1] = v16;
  LOBYTE(v32) = 1;
  sub_1B4D18BDC();
  v12[2] = v17;
  type metadata accessor for AnnounceUtteranceResult();
  LOBYTE(v32) = 2;
  sub_1B49F011C(&qword_1EB8A79F0);
  sub_1B4D18BAC();
  sub_1B498C368(v6, v12 + v9[6]);
  LOBYTE(v32) = 3;
  v18 = sub_1B4D18B6C();
  v19 = v31;
  v20 = (v12 + v9[7]);
  *v20 = v18;
  v20[1] = v21;
  LOBYTE(v32) = 4;
  v22 = sub_1B4D18B6C();
  v23 = (v12 + v9[8]);
  *v23 = v22;
  v23[1] = v24;
  v34 = 5;
  sub_1B49F0160();
  sub_1B4D18BAC();
  (*(v15 + 8))(0, v30);
  v25 = (v12 + v9[9]);
  v26 = v33;
  *v25 = v32;
  v25[1] = v26;
  sub_1B49F01B4(v12, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return sub_1B49F0218(v12, type metadata accessor for InferenceResult);
}

uint64_t sub_1B49F011C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnnounceUtteranceResult();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B49F0160()
{
  result = qword_1EB8A79F8;
  if (!qword_1EB8A79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A79F8);
  }

  return result;
}

uint64_t sub_1B49F01B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49F0218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B49F02D0()
{
  sub_1B49F03A4();
  if (v0 <= 0x3F)
  {
    sub_1B49F03FC(319, &qword_1EDC3CEC0);
    if (v1 <= 0x3F)
    {
      sub_1B49F03FC(319, qword_1EDC371F8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B49F03A4()
{
  if (!qword_1EDC39130)
  {
    type metadata accessor for AnnounceUtteranceResult();
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC39130);
    }
  }
}

void sub_1B49F03FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B4D1880C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1B49F045C()
{
  result = qword_1EB8A7A00;
  if (!qword_1EB8A7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A00);
  }

  return result;
}

unint64_t sub_1B49F04B4()
{
  result = qword_1EB8A7A08;
  if (!qword_1EB8A7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A08);
  }

  return result;
}

unint64_t sub_1B49F050C()
{
  result = qword_1EB8A7A10;
  if (!qword_1EB8A7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A10);
  }

  return result;
}

uint64_t sub_1B49F0560(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D5F890 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4D5F8B0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6563696F76 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t WorkoutVoiceMomentType.analyticsKey.getter()
{
  v1 = 0x6F72746E69;
  v2 = 0x74696C7073;
  if (*v0 != 2)
  {
    v2 = 0x7268746B61657262;
  }

  if (*v0)
  {
    v1 = 0x6F7274756FLL;
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

uint64_t WorkoutVoiceMomentType.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t LegacyWorkoutVoiceMomentType.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      v2 = 1;
    }

    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v2 = 2;
    goto LABEL_9;
  }

  if (v2 == 3)
  {
    v2 = 3;
LABEL_9:
    MEMORY[0x1B8C7D290](v2);
    v2 = v1;
  }

  return MEMORY[0x1B8C7D290](v2);
}

uint64_t LegacyWorkoutVoiceMomentType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B4D18E8C();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_9;
  }

  if (v2 == 3)
  {
    v3 = 3;
LABEL_9:
    MEMORY[0x1B8C7D290](v3);
    v2 = v1;
  }

  MEMORY[0x1B8C7D290](v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49F0990()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      v2 = 1;
    }

    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v2 = 2;
    goto LABEL_9;
  }

  if (v2 == 3)
  {
    v2 = 3;
LABEL_9:
    MEMORY[0x1B8C7D290](v2);
    v2 = v1;
  }

  return MEMORY[0x1B8C7D290](v2);
}

uint64_t sub_1B49F09FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B4D18E8C();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_9;
  }

  if (v2 == 3)
  {
    v3 = 3;
LABEL_9:
    MEMORY[0x1B8C7D290](v3);
    v2 = v1;
  }

  MEMORY[0x1B8C7D290](v2);
  return sub_1B4D18EDC();
}

BOOL _s19FitnessIntelligence28LegacyWorkoutVoiceMomentTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v2 <= 1)
  {
    if (*(a1 + 8))
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v3;
  }

  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

    return *a1 == v3;
  }

  if (v2 != 3)
  {
    return v4 == 4 && v3 == 0;
  }

  if (v4 == 3)
  {
    return *a1 == v3;
  }

  return 0;
}

unint64_t sub_1B49F0B10()
{
  result = qword_1EB8A7A18;
  if (!qword_1EB8A7A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7A20, &qword_1B4D1F568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A18);
  }

  return result;
}

unint64_t sub_1B49F0B78()
{
  result = qword_1EB8A7A28;
  if (!qword_1EB8A7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A28);
  }

  return result;
}

unint64_t sub_1B49F0BD0()
{
  result = qword_1EB8A7A30;
  if (!qword_1EB8A7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A30);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LegacyWorkoutVoiceMomentType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LegacyWorkoutVoiceMomentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B49F0CD4(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1B49F0CEC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t SnapshotClient.triggerSnapshotProcessing(reason:)(_BYTE *a1)
{
  *(v2 + 42) = *a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B49F0D4C, 0, 0);
}

uint64_t sub_1B49F0D4C()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 42);
  v2 = sub_1B4D17F6C();
  __swift_project_value_buffer(v2, qword_1EDC3CED0);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4D5F8D0;
  v4._object = 0x80000001B4D5F900;
  v4._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v3, v4);
  *(v0 + 40) = 0;
  *(v0 + 41) = v1;
  v5 = *(MEMORY[0x1E699DD08] + 4);
  v10 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  v7 = sub_1B49FA5BC();
  *v6 = v0;
  v6[1] = sub_1B49F0EAC;
  v8 = *(v0 + 16);

  return v10(v0 + 40, v0 + 41, &type metadata for SnapshotProcessingReason, v7);
}

uint64_t sub_1B49F0EAC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49CCEA0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B49F1004()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4D5F8D0;
  v3._object = 0x80000001B4D5F930;
  v3._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 48) = 5;
  v4 = *(MEMORY[0x1E699DD10] + 4);
  v10 = (*MEMORY[0x1E699DD10] + MEMORY[0x1E699DD10]);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71B0, &qword_1B4D1D2B0);
  v7 = sub_1B49FA610();
  *v5 = v0;
  v5[1] = sub_1B49F1170;
  v8 = *(v0 + 24);

  return v10(v0 + 16, v0 + 48, v6, v7);
}

uint64_t sub_1B49F1170()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1B49F12A0;
  }

  else
  {
    v3 = sub_1B49F1284;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t SnapshotClient.mostRecentCacheIndex(type:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 58) = *a2;
  v4 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1B49F12E4, 0, 0);
}

uint64_t sub_1B49F12E4()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 58);
  v2 = sub_1B4D17F6C();
  __swift_project_value_buffer(v2, qword_1EDC3CED0);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4D5F8D0;
  v4._object = 0x80000001B4D5F950;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  *(v0 + 56) = 6;
  *(v0 + 57) = v1;
  v5 = *(MEMORY[0x1E699DD00] + 4);
  v11 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v7 = sub_1B49FA6E8();
  v8 = sub_1B49FA694();
  *v6 = v0;
  v6[1] = sub_1B49F1464;
  v9 = *(v0 + 32);

  return v11(v0 + 16, v0 + 56, v0 + 57, &type metadata for SnapshotPropertiesType, &type metadata for CacheIndex, v7, v8);
}

uint64_t sub_1B49F1464()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1B49F159C;
  }

  else
  {
    v3 = sub_1B49F1578;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B49F1578()
{
  v1 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = 0;
  return (*(v0 + 8))();
}

uint64_t SnapshotClient.execute(query:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A50, &qword_1B4D1F6F8);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v2;
  v3[7] = v7;
  v3[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B49F1684, 0, 0);
}

{
  v3[3] = a1;
  v3[4] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A80, &qword_1B4D1F728);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v2;
  v3[7] = v7;
  v3[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B49F1EC0, 0, 0);
}

{
  v3[3] = a1;
  v3[4] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AB0, &qword_1B4D1F758);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v2;
  v3[7] = v7;
  v3[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B49F25E0, 0, 0);
}

uint64_t sub_1B49F1684()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A58, &qword_1B4D1F700);
  v2 = type metadata accessor for RingsPropertiesQuery();
  *(v0 + 72) = v2;
  v3 = *(*(v2 - 8) + 72);
  v4 = *(*(v2 - 8) + 80);
  *(v0 + 112) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = xmmword_1B4D1A800;
  sub_1B4A053A4(v1, v6 + v5, type metadata accessor for RingsPropertiesQuery);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1B49F17E8;

  return SnapshotClient.execute(queries:)(v6);
}

uint64_t sub_1B49F17E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v12 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_1B4A054E0;
  }

  else
  {
    v6 = *(v3 + 112);
    v9 = v3 + 72;
    v7 = *(v3 + 72);
    v8 = *(v9 + 8);
    swift_setDeallocating();
    v10 = *(v8 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v5 = sub_1B49F193C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B49F193C()
{
  v1 = v0[12];
  if (*(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = *(v0[6] + 80);
    sub_1B4974FBC(v1 + ((v4 + 32) & ~v4), v2, &qword_1EB8A7A50, &qword_1B4D1F6F8);

    v5 = v2 + *(v3 + 36);
    v13 = *v5;
    v6 = *(v5 + 16);

    sub_1B4975024(v2, &qword_1EB8A7A50, &qword_1B4D1F6F8);
    v7 = v13;
  }

  else
  {
    v8 = v0[12];

    v6 = 0;
    v7 = 0uLL;
  }

  v9 = v0[7];
  v10 = v0[3];
  *v10 = v7;
  *(v10 + 16) = v6;

  v11 = v0[1];

  return v11();
}

uint64_t SnapshotClient.execute(queries:)(uint64_t a1)
{
  v2[4] = a1;
  v3 = sub_1B4D1777C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[9] = v6;
  v2[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B49F1B28, 0, 0);
}

{
  v2[4] = a1;
  v3 = sub_1B4D1777C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[9] = v6;
  v2[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B49F2364, 0, 0);
}

{
  v2[4] = a1;
  v3 = sub_1B4D1777C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[9] = v6;
  v2[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B49F2B2C, 0, 0);
}

uint64_t sub_1B49F1B28()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  sub_1B4D1776C();
  *(v0 + 104) = 2;

  v4 = sub_1B4A031D8(v3);

  *(v0 + 24) = v4;
  v5 = *(MEMORY[0x1E699DD00] + 4);
  v13 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A60, &qword_1B4D1F710);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A68, &qword_1B4D1F718);
  v8 = sub_1B49B0578(&qword_1EB8A7A70, &qword_1EB8A7A60, &qword_1B4D1F710);
  v9 = sub_1B49B0578(&qword_1EB8A7A78, &qword_1EB8A7A68, &qword_1B4D1F718);
  *v6 = v0;
  v6[1] = sub_1B49F1CD4;
  v10 = *(v0 + 80);

  return v13(v0 + 16, v0 + 104, v0 + 24, v12, v7, v8, v9);
}

uint64_t sub_1B49F1CD4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(v2 + 96) = v0;

  v4 = *(v2 + 24);

  if (v0)
  {
    v5 = sub_1B4A054D4;
  }

  else
  {
    v5 = sub_1B4A054E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B49F1EC0()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A88, &qword_1B4D1F730);
  v2 = type metadata accessor for WorkoutPropertiesQuery();
  *(v0 + 72) = v2;
  v3 = *(*(v2 - 8) + 72);
  v4 = *(*(v2 - 8) + 80);
  *(v0 + 112) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = xmmword_1B4D1A800;
  sub_1B4A053A4(v1, v6 + v5, type metadata accessor for WorkoutPropertiesQuery);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1B49F2024;

  return SnapshotClient.execute(queries:)(v6);
}

uint64_t sub_1B49F2024(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v12 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_1B4A054E0;
  }

  else
  {
    v6 = *(v3 + 112);
    v9 = v3 + 72;
    v7 = *(v3 + 72);
    v8 = *(v9 + 8);
    swift_setDeallocating();
    v10 = *(v8 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v5 = sub_1B49F2178;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B49F2178()
{
  v1 = v0[12];
  if (*(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = *(v0[6] + 80);
    sub_1B4974FBC(v1 + ((v4 + 32) & ~v4), v2, &qword_1EB8A7A80, &qword_1B4D1F728);

    v5 = v2 + *(v3 + 36);
    v13 = *v5;
    v6 = *(v5 + 16);

    sub_1B4975024(v2, &qword_1EB8A7A80, &qword_1B4D1F728);
    v7 = v13;
  }

  else
  {
    v8 = v0[12];

    v6 = 0;
    v7 = 0uLL;
  }

  v9 = v0[7];
  v10 = v0[3];
  *v10 = v7;
  *(v10 + 16) = v6;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B49F2364()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  sub_1B4D1776C();
  *(v0 + 104) = 1;

  v4 = sub_1B4A03368(v3);

  *(v0 + 24) = v4;
  v5 = *(MEMORY[0x1E699DD00] + 4);
  v13 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A90, &qword_1B4D1F740);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A98, &qword_1B4D1F748);
  v8 = sub_1B49B0578(&qword_1EB8A7AA0, &qword_1EB8A7A90, &qword_1B4D1F740);
  v9 = sub_1B49B0578(&qword_1EB8A7AA8, &qword_1EB8A7A98, &qword_1B4D1F748);
  *v6 = v0;
  v6[1] = sub_1B49F1CD4;
  v10 = *(v0 + 80);

  return v13(v0 + 16, v0 + 104, v0 + 24, v12, v7, v8, v9);
}

uint64_t sub_1B49F25E0()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AB8, &qword_1B4D1F760);
  v2 = type metadata accessor for FitnessPlusPropertiesQuery();
  *(v0 + 72) = v2;
  v3 = *(*(v2 - 8) + 72);
  v4 = *(*(v2 - 8) + 80);
  *(v0 + 112) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = xmmword_1B4D1A800;
  sub_1B4A053A4(v1, v6 + v5, type metadata accessor for FitnessPlusPropertiesQuery);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1B49F2744;

  return SnapshotClient.execute(queries:)(v6);
}

uint64_t sub_1B49F2744(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v12 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_1B49F29A8;
  }

  else
  {
    v6 = *(v3 + 112);
    v9 = v3 + 72;
    v7 = *(v3 + 72);
    v8 = *(v9 + 8);
    swift_setDeallocating();
    v10 = *(v8 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v5 = sub_1B49F2898;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B49F2898()
{
  v1 = v0[12];
  if (*(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = *(v0[6] + 80);
    sub_1B4974FBC(v1 + ((v4 + 32) & ~v4), v2, &qword_1EB8A7AB0, &qword_1B4D1F758);

    v5 = v2 + *(v3 + 36);
    v13 = *v5;
    v6 = *(v5 + 16);

    sub_1B4975024(v2, &qword_1EB8A7AB0, &qword_1B4D1F758);
    v7 = v13;
  }

  else
  {
    v8 = v0[12];

    v6 = 0;
    v7 = 0uLL;
  }

  v9 = v0[7];
  v10 = v0[3];
  *v10 = v7;
  *(v10 + 16) = v6;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B49F29A8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = (*(v0 + 112) + 32) & ~*(v0 + 112);
  swift_setDeallocating();
  v5 = *(v2 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v6 = *(v0 + 8);
  v7 = *(v0 + 104);

  return v6();
}

uint64_t sub_1B49F2B2C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  sub_1B4D1776C();
  *(v0 + 104) = 3;

  v4 = sub_1B4A034F8(v3);

  *(v0 + 24) = v4;
  v5 = *(MEMORY[0x1E699DD00] + 4);
  v13 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AC0, &qword_1B4D1F770);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AC8, &qword_1B4D1F778);
  v8 = sub_1B49B0578(&qword_1EB8A7AD0, &qword_1EB8A7AC0, &qword_1B4D1F770);
  v9 = sub_1B49B0578(&qword_1EB8A7AD8, &qword_1EB8A7AC8, &qword_1B4D1F778);
  *v6 = v0;
  v6[1] = sub_1B49F2CD8;
  v10 = *(v0 + 80);

  return v13(v0 + 16, v0 + 104, v0 + 24, v12, v7, v8, v9);
}

uint64_t sub_1B49F2CD8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(v2 + 96) = v0;

  v4 = *(v2 + 24);

  if (v0)
  {
    v5 = sub_1B49F3050;
  }

  else
  {
    v5 = sub_1B49F2DF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B49F2DF4()
{
  v1 = v0[2];
  if (qword_1EDC3CBB8 != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = sub_1B4D17F6C();
  __swift_project_value_buffer(v7, qword_1EDC37A40);
  (*(v4 + 16))(v3, v2, v5);

  v8 = sub_1B4D17F5C();
  v9 = sub_1B4D1873C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[8];
  if (v10)
  {
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[5];
    v27 = v0[4];
    v28 = v1;
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v13, v14);
    v18(v11, v14);
    *(v15 + 4) = v17;
    *(v15 + 12) = 2048;
    *(v15 + 14) = *(v27 + 16);

    _os_log_impl(&dword_1B4953000, v8, v9, "Took %fs to execute query: %ld queries", v15, 0x16u);
    v19 = v15;
    v1 = v28;
    MEMORY[0x1B8C7DDA0](v19, -1, -1);
  }

  else
  {
    v21 = v0[5];
    v20 = v0[6];
    v22 = v0[4];

    v18 = *(v20 + 8);
    v18(v11, v21);
  }

  v23 = v0[8];
  v24 = v0[7];
  v18(v0[9], v0[5]);

  v25 = v0[1];

  return v25(v1);
}

uint64_t sub_1B49F3050()
{
  v1 = v0[8];
  v2 = v0[7];
  (*(v0[6] + 8))(v0[9], v0[5]);

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t SnapshotClient.invalidateSnapshots(from:)(void *a1)
{
  v3 = *v1;
  *(v2 + 24) = *a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B49F3114, 0, 0);
}

uint64_t sub_1B49F3114()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4D17F6C();
  __swift_project_value_buffer(v2, qword_1EDC3CED0);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4D5F8D0;
  v4._object = 0x80000001B4D5F970;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  *(v0 + 56) = 4;
  *(v0 + 16) = v1;
  v5 = *(MEMORY[0x1E699DD08] + 4);
  v10 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v7 = sub_1B49FA694();
  *v6 = v0;
  v6[1] = sub_1B49F3278;
  v8 = *(v0 + 32);

  return v10(v0 + 56, v0 + 16, &type metadata for CacheIndex, v7);
}

uint64_t sub_1B49F3278()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49F159C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B49F33D0()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4D5F8D0;
  v3._object = 0x80000001B4D5F990;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 40) = 7;
  v4 = *(MEMORY[0x1E699DD18] + 4);
  v8 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1B49F0EAC;
  v6 = *(v0 + 16);

  return v8(v0 + 40);
}

uint64_t SnapshotClient.query(date:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B49F35BC;

  return SnapshotClient.querySnapshot(date:)(a1, a2);
}

uint64_t sub_1B49F35BC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4A054DC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t SnapshotClient.querySnapshot(date:)(uint64_t a1, uint64_t a2)
{
  v3[1011] = a2;
  v3[1005] = a1;
  v4 = type metadata accessor for WorkoutPropertiesQuery();
  v3[1017] = v4;
  v5 = *(v4 - 8);
  v3[1023] = v5;
  v3[1029] = *(v5 + 64);
  v3[1035] = swift_task_alloc();
  v3[1041] = swift_task_alloc();
  v3[1047] = swift_task_alloc();
  v3[1053] = swift_task_alloc();
  v3[1059] = swift_task_alloc();
  v3[1065] = swift_task_alloc();
  v3[1071] = swift_task_alloc();
  v3[1077] = swift_task_alloc();
  v3[1083] = swift_task_alloc();
  v3[1089] = swift_task_alloc();
  v6 = type metadata accessor for DateRangeDescriptor();
  v3[1095] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[1101] = swift_task_alloc();
  v8 = type metadata accessor for RingsPropertiesQuery();
  v3[1107] = v8;
  v9 = *(v8 - 8);
  v3[1113] = v9;
  v3[1119] = *(v9 + 64);
  v3[1125] = swift_task_alloc();
  v3[1131] = swift_task_alloc();
  v3[1137] = swift_task_alloc();
  v3[1143] = swift_task_alloc();
  v3[1149] = swift_task_alloc();
  v3[1155] = swift_task_alloc();
  v3[1161] = swift_task_alloc();
  v3[1167] = swift_task_alloc();
  v3[1173] = swift_task_alloc();
  v3[1179] = swift_task_alloc();
  v10 = sub_1B4D1777C();
  v3[1185] = v10;
  v11 = *(v10 - 8);
  v3[1191] = v11;
  v12 = *(v11 + 64) + 15;
  v3[1197] = swift_task_alloc();
  v3[1203] = swift_task_alloc();
  v3[1209] = swift_task_alloc();
  v3[1215] = swift_task_alloc();
  v3[1221] = swift_task_alloc();
  v3[1227] = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B49F39BC, 0, 0);
}

uint64_t sub_1B49F39BC()
{
  v59 = v0;
  v1 = v0[1221];
  sub_1B4D1776C();
  if (qword_1EDC3CBB8 != -1)
  {
    swift_once();
  }

  v2 = v0[1215];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1011];
  v6 = sub_1B4D17F6C();
  v0[1233] = __swift_project_value_buffer(v6, qword_1EDC37A40);
  v7 = *(v3 + 16);
  v0[1239] = v7;
  v0[1245] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v57 = v7;
  v7(v2, v5, v4);
  v8 = sub_1B4D17F5C();
  v9 = sub_1B4D1873C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[1215];
  v12 = v0[1191];
  v13 = v0[1185];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v58 = v15;
    *v14 = 136315138;
    sub_1B4A0535C(&qword_1EB8A6B58, MEMORY[0x1E6969530]);
    v16 = sub_1B4D18D5C();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1B49558AC(v16, v18, &v58);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1B4953000, v8, v9, "Querying snapshot for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B8C7DDA0](v15, -1, -1);
    MEMORY[0x1B8C7DDA0](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = v0[1011];
  v21 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v48 = v0[1227];
  v22 = v0[1185];
  v23 = v0[1179];
  v53 = v0[1173];
  v54 = v0[1167];
  v55 = v0[1161];
  v56 = v0[1155];
  v49 = v0[1143];
  v50 = v0[1137];
  v51 = v0[1131];
  v52 = v0[1125];
  v46 = v0[1149];
  v47 = v0[1119];
  v45 = v0[1113];
  v24 = v0[1107];
  v25 = v0[1101];
  v26 = v0[1095];
  v27 = v0[1011];
  v28 = sub_1B4D1796C();
  v0[1251] = __swift_project_value_buffer(v28, qword_1EDC3CE48);
  v29 = sub_1B4D178CC();
  v0[1257] = _HKCacheIndexFromDate();

  v30 = v23;
  v44 = v23;
  v57(v23, v27, v22);
  swift_storeEnumTagMultiPayload();
  v31 = (v23 + v24[5]);
  v32 = MEMORY[0x1E69E7CC0];
  *v31 = MEMORY[0x1E69E7CC0];
  v31[1] = v32;
  v31[2] = v32;
  *(v30 + v24[6]) = v32;
  *(v30 + v24[7]) = &unk_1F2CB9A40;
  v57(v25, v27, v22);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v25, v53, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v25, type metadata accessor for DateRangeDescriptor);
  v33 = (v53 + v24[5]);
  *v33 = v32;
  v33[1] = v32;
  v33[2] = v32;
  *(v53 + v24[6]) = v32;
  *(v53 + v24[7]) = &unk_1F2CB9A40;
  v57(v25, v27, v22);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v25, v54, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v25, type metadata accessor for DateRangeDescriptor);
  v34 = (v54 + v24[5]);
  *v34 = v32;
  v34[1] = v32;
  v34[2] = v32;
  *(v54 + v24[6]) = v32;
  *(v54 + v24[7]) = &unk_1F2CB9A40;
  v57(v25, v27, v22);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v25, v55, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v25, type metadata accessor for DateRangeDescriptor);
  v35 = (v55 + v24[5]);
  *v35 = v32;
  v35[1] = v32;
  v35[2] = v32;
  *(v55 + v24[6]) = v32;
  *(v55 + v24[7]) = &unk_1F2CB9A40;
  v57(v25, v27, v22);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v25, v56, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v25, type metadata accessor for DateRangeDescriptor);
  v36 = (v56 + v24[5]);
  *v36 = v32;
  v36[1] = v32;
  v36[2] = v32;
  *(v56 + v24[6]) = v32;
  *(v56 + v24[7]) = &unk_1F2CB9A40;
  sub_1B4A053A4(v44, v46, type metadata accessor for RingsPropertiesQuery);
  v37 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v38 = swift_allocObject();
  v0[1263] = v38;
  *(v38 + 16) = v48;
  sub_1B4A0546C(v46, v38 + v37, type metadata accessor for RingsPropertiesQuery);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6720, &qword_1B4D1F7B0);
  swift_asyncLet_begin();
  sub_1B4A053A4(v53, v49, type metadata accessor for RingsPropertiesQuery);
  v39 = swift_allocObject();
  v0[1269] = v39;
  *(v39 + 16) = v48;
  sub_1B4A0546C(v49, v39 + v37, type metadata accessor for RingsPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v54, v50, type metadata accessor for RingsPropertiesQuery);
  v40 = swift_allocObject();
  v0[1275] = v40;
  *(v40 + 16) = v48;
  sub_1B4A0546C(v50, v40 + v37, type metadata accessor for RingsPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v55, v51, type metadata accessor for RingsPropertiesQuery);
  v41 = swift_allocObject();
  v0[1281] = v41;
  *(v41 + 16) = v48;
  sub_1B4A0546C(v51, v41 + v37, type metadata accessor for RingsPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v56, v52, type metadata accessor for RingsPropertiesQuery);
  v42 = swift_allocObject();
  v0[1287] = v42;
  *(v42 + 16) = v48;
  sub_1B4A0546C(v52, v42 + v37, type metadata accessor for RingsPropertiesQuery);

  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 997, sub_1B49F4250, v0 + 1144);
}

uint64_t sub_1B49F4250()
{
  *(v1 + 10344) = v0;
  if (v0)
  {
    v2 = sub_1B49F5FD0;
  }

  else
  {
    v2 = sub_1B49F4284;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F4284()
{
  v0[1299] = v0[999];
  v0[1305] = v0[998];
  v0[1311] = v0[997];

  return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 925, sub_1B49F430C, v0 + 1498);
}

uint64_t sub_1B49F430C()
{
  *(v1 + 10536) = v0;
  if (v0)
  {
    if (*(v1 + 10392))
    {
      v2 = *(v1 + 10392);
    }

    v3 = sub_1B49F63FC;
  }

  else
  {
    v3 = sub_1B49F439C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B49F439C()
{
  v0[1323] = v0[927];
  v0[1329] = v0[926];
  v0[1335] = v0[925];

  return MEMORY[0x1EEE6DEC0](v0 + 162, v0 + 933, sub_1B49F4424, v0 + 968);
}

uint64_t sub_1B49F4424()
{
  v1[1341] = v0;
  if (v0)
  {
    v2 = v1[1299];
    if (v1[1323])
    {
      v3 = v1[1323];
    }

    v4 = sub_1B49F6828;
  }

  else
  {
    v4 = sub_1B49F44C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B49F44C4()
{
  v0[1347] = v0[935];
  v0[1353] = v0[934];
  v0[1359] = v0[933];

  return MEMORY[0x1EEE6DEC0](v0 + 242, v0 + 941, sub_1B49F454C, v0 + 1012);
}

uint64_t sub_1B49F454C()
{
  v1[1365] = v0;
  if (v0)
  {
    v2 = v1[1323];
    v3 = v1[1299];
    if (v1[1347])
    {
      v4 = v1[1347];
    }

    v5 = sub_1B49F6C54;
  }

  else
  {
    v5 = sub_1B49F4604;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B49F4604()
{
  v0[1371] = v0[943];
  v0[1377] = v0[942];
  v0[1383] = v0[941];

  return MEMORY[0x1EEE6DEC0](v0 + 322, v0 + 949, sub_1B49F468C, v0 + 1048);
}

uint64_t sub_1B49F468C()
{
  v1[1389] = v0;
  if (v0)
  {
    v2 = v1[1347];
    v3 = v1[1323];
    v4 = v1[1299];
    if (v1[1371])
    {
      v5 = v1[1371];
    }

    v6 = sub_1B49F707C;
  }

  else
  {
    v6 = sub_1B49F4754;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B49F4754()
{
  v1 = v0[1383];
  v2 = v0[1377];
  v3 = v0[1371];
  v4 = v0[1359];
  v5 = v0[1353];
  v6 = v0[1347];
  v7 = v0[1335];
  v8 = v0[1329];
  v9 = v0[1323];
  v10 = v0[1311];
  v11 = v0[1305];
  v12 = v0[1299];
  v13 = v0[1245];
  v14 = v0[1239];
  v44 = v0[1227];
  v15 = v0[1185];
  if (!v3)
  {
    v1 = v0[1257];
    v2 = v1;
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (!v6)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v5 = v0[1257];
    v4 = v5;
  }

  if (!v9)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v8 = v0[1257];
    v7 = v8;
  }

  if (!v12)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v11 = v0[1257];
    v10 = v11;
  }

  v17 = v0[951];
  v18 = v0[950];
  v19 = v0[949];
  if (!v17)
  {
    v19 = v0[1257];
    v18 = v19;
  }

  v0[861] = v0[1257];
  v20 = v0[1101];
  v0[862] = v10;
  v21 = v0[1095];
  v0[863] = v11;
  v22 = v0[1089];
  v0[864] = v12;
  v48 = v0[1083];
  v0[865] = v7;
  v49 = v0[1077];
  v0[866] = v8;
  v23 = v0[1071];
  v0[867] = v9;
  v50 = v23;
  v51 = v0[1065];
  v0[868] = v4;
  v41 = v0[1059];
  v0[869] = v5;
  v43 = v0[1053];
  v0[870] = v6;
  v24 = v0[1047];
  v0[871] = v1;
  v45 = v24;
  v46 = v0[1041];
  v0[872] = v2;
  v47 = v0[1035];
  v0[873] = v3;
  v42 = v0[1029];
  v0[874] = v19;
  v40 = v0[1023];
  v0[875] = v18;
  if (v17)
  {
    v25 = v17;
  }

  else
  {
    v25 = v16;
  }

  v0[876] = v25;
  v26 = v0[1017];
  v27 = v0[1011];
  v14(v22, v27, v15);
  swift_storeEnumTagMultiPayload();
  v28 = (v22 + v26[5]);
  *v28 = v16;
  v28[1] = v16;
  v28[2] = v16;
  v28[3] = v16;
  v28[4] = v16;
  v28[5] = v16;
  *(v22 + v26[6]) = &unk_1F2CB9AB8;
  *(v22 + v26[7]) = &unk_1F2CB9A80;
  v14(v20, v27, v15);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v20, v48, type metadata accessor for DateRangeDescriptor);

  sub_1B4A0540C(v20, type metadata accessor for DateRangeDescriptor);
  v29 = (v48 + v26[5]);
  *v29 = v16;
  v29[1] = v16;
  v29[2] = v16;
  v29[3] = v16;
  v29[4] = v16;
  v29[5] = v16;
  *(v48 + v26[6]) = &unk_1F2CB9AB8;
  *(v48 + v26[7]) = &unk_1F2CB9A80;
  v14(v20, v27, v15);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v20, v49, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v20, type metadata accessor for DateRangeDescriptor);
  v30 = (v49 + v26[5]);
  *v30 = v16;
  v30[1] = v16;
  v30[2] = v16;
  v30[3] = v16;
  v30[4] = v16;
  v30[5] = v16;
  *(v49 + v26[6]) = &unk_1F2CB9AB8;
  *(v49 + v26[7]) = &unk_1F2CB9A80;
  v14(v20, v27, v15);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v20, v50, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v20, type metadata accessor for DateRangeDescriptor);
  v31 = (v50 + v26[5]);
  *v31 = v16;
  v31[1] = v16;
  v31[2] = v16;
  v31[3] = v16;
  v31[4] = v16;
  v31[5] = v16;
  *(v50 + v26[6]) = &unk_1F2CB9AB8;
  *(v50 + v26[7]) = &unk_1F2CB9A80;
  v14(v20, v27, v15);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v20, v51, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v20, type metadata accessor for DateRangeDescriptor);
  v32 = (v51 + v26[5]);
  *v32 = v16;
  v32[1] = v16;
  v32[2] = v16;
  v32[3] = v16;
  v32[4] = v16;
  v32[5] = v16;
  *(v51 + v26[6]) = &unk_1F2CB9AB8;
  *(v51 + v26[7]) = &unk_1F2CB9A80;
  sub_1B4A053A4(v22, v41, type metadata accessor for WorkoutPropertiesQuery);
  v33 = (*(v40 + 80) + 24) & ~*(v40 + 80);
  v34 = swift_allocObject();
  v0[1395] = v34;
  *(v34 + 16) = v44;
  sub_1B4A0546C(v41, v34 + v33, type metadata accessor for WorkoutPropertiesQuery);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6728, &qword_1B4D1A750);
  swift_asyncLet_begin();
  sub_1B4A053A4(v48, v43, type metadata accessor for WorkoutPropertiesQuery);
  v35 = swift_allocObject();
  v0[1401] = v35;
  *(v35 + 16) = v44;
  sub_1B4A0546C(v43, v35 + v33, type metadata accessor for WorkoutPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v49, v45, type metadata accessor for WorkoutPropertiesQuery);
  v36 = swift_allocObject();
  v0[1407] = v36;
  *(v36 + 16) = v44;
  sub_1B4A0546C(v45, v36 + v33, type metadata accessor for WorkoutPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v50, v46, type metadata accessor for WorkoutPropertiesQuery);
  v37 = swift_allocObject();
  v0[1413] = v37;
  *(v37 + 16) = v44;
  sub_1B4A0546C(v46, v37 + v33, type metadata accessor for WorkoutPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v51, v47, type metadata accessor for WorkoutPropertiesQuery);
  v38 = swift_allocObject();
  v0[1419] = v38;
  *(v38 + 16) = v44;
  sub_1B4A0546C(v47, v38 + v33, type metadata accessor for WorkoutPropertiesQuery);

  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 722, v0 + 989, sub_1B49F4E7C, v0 + 1150);
}

uint64_t sub_1B49F4E7C()
{
  *(v1 + 11400) = v0;
  if (v0)
  {
    sub_1B4975024(v1 + 6888, &qword_1EB8A7AE0, &qword_1B4D1F850);
    v2 = sub_1B49F74A8;
  }

  else
  {
    v2 = sub_1B49F4F10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F4F10()
{
  v0[1431] = v0[991];
  v0[1437] = v0[990];
  v0[1443] = v0[989];

  return MEMORY[0x1EEE6DEC0](v0 + 642, v0 + 981, sub_1B49F4FA4, v0 + 1216);
}

uint64_t sub_1B49F4FA4()
{
  *(v1 + 11592) = v0;
  if (v0)
  {
    if (*(v1 + 11448))
    {
      v2 = *(v1 + 11448);
    }

    sub_1B4975024(v1 + 6888, &qword_1EB8A7AE0, &qword_1B4D1F850);
    v3 = sub_1B49F7B60;
  }

  else
  {
    v3 = sub_1B49F5050;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B49F5050()
{
  v0[1455] = v0[983];
  v0[1461] = v0[982];
  v0[1467] = v0[981];

  return MEMORY[0x1EEE6DEC0](v0 + 562, v0 + 973, sub_1B49F50E4, v0 + 1282);
}

uint64_t sub_1B49F50E4()
{
  v1[1473] = v0;
  if (v0)
  {
    v2 = v1[1431];
    if (v1[1455])
    {
      v3 = v1[1455];
    }

    sub_1B4975024((v1 + 861), &qword_1EB8A7AE0, &qword_1B4D1F850);
    v4 = sub_1B49F8218;
  }

  else
  {
    v4 = sub_1B49F51A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B49F51A8()
{
  v0[1479] = v0[975];
  v0[1485] = v0[974];
  v0[1491] = v0[973];

  return MEMORY[0x1EEE6DEC0](v0 + 482, v0 + 965, sub_1B49F5230, v0 + 1348);
}

uint64_t sub_1B49F5230()
{
  v1[1497] = v0;
  if (v0)
  {
    v2 = v1[1455];
    v3 = v1[1431];
    if (v1[1479])
    {
      v4 = v1[1479];
    }

    sub_1B4975024((v1 + 861), &qword_1EB8A7AE0, &qword_1B4D1F850);
    v5 = sub_1B49F88D0;
  }

  else
  {
    v5 = sub_1B49F5304;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B49F5304()
{
  v0[1503] = v0[967];
  v0[1504] = v0[966];
  v0[1505] = v0[965];

  return MEMORY[0x1EEE6DEC0](v0 + 402, v0 + 957, sub_1B49F538C, v0 + 1414);
}

uint64_t sub_1B49F538C()
{
  v1[1506] = v0;
  if (v0)
  {
    v2 = v1[1479];
    v3 = v1[1455];
    v4 = v1[1431];
    if (v1[1503])
    {
      v5 = v1[1503];
    }

    sub_1B4975024((v1 + 861), &qword_1EB8A7AE0, &qword_1B4D1F850);
    v6 = sub_1B49F8F88;
  }

  else
  {
    v6 = sub_1B49F5478;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B49F5478()
{
  v96 = v0;
  v1 = *(v0 + 9960);
  v2 = *(v0 + 9912);
  v3 = *(v0 + 9864);
  v4 = *(v0 + 9768);
  v5 = *(v0 + 9624);
  v6 = *(v0 + 9480);
  v7 = *(v0 + 7672);
  v93 = *(v0 + 7664);
  v91 = *(v0 + 7656);
  v2(*(v0 + 9672), *(v0 + 8088), v6);
  v2(v5, v4, v6);

  v8 = sub_1B4D17F5C();
  v9 = sub_1B4D1873C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 9672);
  v12 = *(v0 + 9624);
  if (v10)
  {
    v85 = *(v0 + 9576);
    v13 = *(v0 + 9528);
    v89 = v7;
    v14 = *(v0 + 9480);
    v15 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v95 = v87;
    *v15 = 136315394;
    sub_1B4A0535C(&qword_1EB8A6B58, MEMORY[0x1E6969530]);
    v16 = sub_1B4D18D5C();
    v18 = v17;
    v20 = *(v13 + 8);
    v19 = v13 + 8;
    v20(v11, v14);
    v21 = sub_1B49558AC(v16, v18, &v95);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v23 = v22;
    v20(v85, v14);
    v24 = v14;
    v7 = v89;
    v20(v12, v24);
    *(v15 + 14) = v23;
    _os_log_impl(&dword_1B4953000, v8, v9, "Queried snapshot until %s in %fs", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    MEMORY[0x1B8C7DDA0](v87, -1, -1);
    MEMORY[0x1B8C7DDA0](v15, -1, -1);
  }

  else
  {
    v25 = *(v0 + 9528);
    v26 = *(v0 + 9480);

    v27 = *(v25 + 8);
    v19 = v25 + 8;
    v27(v12, v26);
    v27(v11, v26);
  }

  v28 = (v0 + 7016);
  *(v0 + 12056) = v19;
  v29 = *(v0 + 12040);
  v30 = *(v0 + 12032);
  v31 = *(v0 + 12024);
  v32 = *(v0 + 11832);
  v33 = *(v0 + 11640);
  v34 = *(v0 + 10056);
  if (v7)
  {
    v35 = v7;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v90 = v35;
  if (v7)
  {
    v36 = v93;
  }

  else
  {
    v36 = *(v0 + 10056);
  }

  v37 = v91;
  if (!v7)
  {
    v37 = *(v0 + 10056);
  }

  v92 = v37;
  v38 = *(v0 + 11448);
  v39 = *(v0 + 10008);
  v40 = v31 == 0;
  if (!v31)
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v86 = v31;
  v88 = v36;
  if (v40)
  {
    v30 = *(v0 + 10056);
    v29 = v30;
  }

  v83 = v29;
  v84 = v30;
  v41 = *(v0 + 8088);
  v94 = *(v0 + 8040);
  if (v32)
  {
    v42 = *(v0 + 11832);
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  if (v32)
  {
    v43 = *(v0 + 11880);
  }

  else
  {
    v43 = *(v0 + 10056);
  }

  v81 = v43;
  v82 = v42;
  if (v32)
  {
    v44 = *(v0 + 11928);
  }

  else
  {
    v44 = *(v0 + 10056);
  }

  if (v33)
  {
    v45 = *(v0 + 11640);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  v79 = v45;
  v80 = v44;
  if (v33)
  {
    v46 = *(v0 + 11688);
  }

  else
  {
    v46 = *(v0 + 10056);
  }

  if (v33)
  {
    v47 = *(v0 + 11736);
  }

  else
  {
    v47 = *(v0 + 10056);
  }

  v77 = v47;
  v78 = v46;
  if (v38)
  {
    v48 = *(v0 + 11448);
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

  if (v38)
  {
    v49 = *(v0 + 11496);
  }

  else
  {
    v49 = *(v0 + 10056);
  }

  v75 = v49;
  v76 = v48;
  if (v38)
  {
    v50 = *(v0 + 11544);
  }

  else
  {
    v50 = *(v0 + 10056);
  }

  v51 = sub_1B4D1771C();
  v52 = sub_1B4D178CC();
  v53 = _HKCacheIndexFromDate();

  v54 = *(v0 + 6968);
  *(v0 + 7080) = *(v0 + 6952);
  *(v0 + 7096) = v54;
  v55 = *(v0 + 7000);
  *(v0 + 7112) = *(v0 + 6984);
  *(v0 + 7128) = v55;
  v56 = *(v0 + 6904);
  *v28 = *(v0 + 6888);
  *(v0 + 7032) = v56;
  v57 = *(v0 + 6936);
  *(v0 + 7048) = *(v0 + 6920);
  *(v0 + 7064) = v57;
  nullsub_1(v0 + 7016);
  *(v0 + 7144) = v34;
  *(v0 + 7152) = v50;
  *(v0 + 7160) = v75;
  *(v0 + 7168) = v76;
  *(v0 + 7176) = v77;
  *(v0 + 7184) = v78;
  *(v0 + 7192) = v79;
  *(v0 + 7200) = v80;
  *(v0 + 7208) = v81;
  *(v0 + 7216) = v82;
  *(v0 + 7224) = v83;
  *(v0 + 7232) = v84;
  *(v0 + 7240) = v86;
  *(v0 + 7248) = v92;
  *(v0 + 7256) = v88;
  *(v0 + 7264) = v90;
  nullsub_1(v0 + 7144);
  sub_1B496F4FC((v0 + 7272));
  v58 = *(v0 + 7352);
  *(v0 + 6784) = *(v0 + 7336);
  *(v0 + 6800) = v58;
  v59 = *(v0 + 7384);
  *(v0 + 6816) = *(v0 + 7368);
  *(v0 + 6832) = v59;
  v60 = *(v0 + 7288);
  *(v0 + 6720) = *(v0 + 7272);
  *(v0 + 6736) = v60;
  v61 = *(v0 + 7320);
  *(v0 + 6752) = *(v0 + 7304);
  *(v0 + 6768) = v61;
  v62 = *v28;
  v63 = *(v0 + 7032);
  v64 = *(v0 + 7048);
  *(v0 + 6512) = *(v0 + 7064);
  *(v0 + 6496) = v64;
  *(v0 + 6480) = v63;
  *(v0 + 6464) = v62;
  v65 = *(v0 + 7080);
  v66 = *(v0 + 7096);
  v67 = *(v0 + 7112);
  *(v0 + 6576) = *(v0 + 7128);
  *(v0 + 6560) = v67;
  *(v0 + 6544) = v66;
  *(v0 + 6528) = v65;
  v68 = *(v0 + 7144);
  v69 = *(v0 + 7160);
  v70 = *(v0 + 7176);
  *(v0 + 6640) = *(v0 + 7192);
  *(v0 + 6624) = v70;
  *(v0 + 6608) = v69;
  *(v0 + 6592) = v68;
  v71 = *(v0 + 7208);
  v72 = *(v0 + 7224);
  v73 = *(v0 + 7240);
  *(v0 + 6704) = *(v0 + 7256);
  *(v0 + 6688) = v73;
  *(v0 + 6672) = v72;
  *(v0 + 6656) = v71;
  *(v0 + 6456) = v53;
  nullsub_1(v0 + 6456);
  memcpy(v94, (v0 + 6456), 0x188uLL);

  return MEMORY[0x1EEE6DEB0](v0 + 3216, v0 + 7656, sub_1B49F599C, v0 + 6848);
}

uint64_t sub_1B49F5AD4()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F5BB8, v0 + 1126);
}

uint64_t sub_1B49F5CE4()
{
  v22 = v0[1419];
  v18 = v0[1407];
  v19 = v0[1413];
  v16 = v0[1395];
  v17 = v0[1401];
  v14 = v0[1281];
  v15 = v0[1287];
  v12 = v0[1507];
  v13 = v0[1275];
  v11 = v0[1269];
  v1 = v0[1263];
  v2 = v0[1221];
  v21 = v0[1209];
  v23 = v0[1203];
  v24 = v0[1197];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1179];
  v6 = v0[1173];
  v7 = v0[1167];
  v8 = v0[1161];
  v20 = v0[1215];
  v25 = v0[1149];
  v26 = v0[1143];
  v27 = v0[1137];
  v28 = v0[1131];
  v29 = v0[1125];
  v30 = v0[1101];
  v31 = v0[1089];
  v32 = v0[1083];
  v33 = v0[1077];
  v34 = v0[1071];
  v35 = v0[1065];
  v36 = v0[1059];
  v37 = v0[1053];
  v38 = v0[1047];
  v39 = v0[1041];
  v40 = v0[1035];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F6124()
{
  v35 = v0[1293];
  v13 = v0[1281];
  v14 = v0[1287];
  v11 = v0[1269];
  v12 = v0[1275];
  v1 = v0[1263];
  v2 = v0[1221];
  v16 = v0[1209];
  v17 = v0[1203];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1179];
  v6 = v0[1173];
  v7 = v0[1167];
  v8 = v0[1161];
  v15 = v0[1215];
  v18 = v0[1197];
  v19 = v0[1149];
  v20 = v0[1143];
  v21 = v0[1137];
  v22 = v0[1131];
  v23 = v0[1125];
  v24 = v0[1101];
  v25 = v0[1089];
  v26 = v0[1083];
  v27 = v0[1077];
  v28 = v0[1071];
  v29 = v0[1065];
  v30 = v0[1059];
  v31 = v0[1053];
  v32 = v0[1047];
  v33 = v0[1041];
  v34 = v0[1035];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  (*(v3 + 8))(v2, v4);

  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F6550()
{
  v35 = v0[1317];
  v13 = v0[1281];
  v14 = v0[1287];
  v11 = v0[1269];
  v12 = v0[1275];
  v1 = v0[1263];
  v2 = v0[1221];
  v16 = v0[1209];
  v17 = v0[1203];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1179];
  v6 = v0[1173];
  v7 = v0[1167];
  v8 = v0[1161];
  v15 = v0[1215];
  v18 = v0[1197];
  v19 = v0[1149];
  v20 = v0[1143];
  v21 = v0[1137];
  v22 = v0[1131];
  v23 = v0[1125];
  v24 = v0[1101];
  v25 = v0[1089];
  v26 = v0[1083];
  v27 = v0[1077];
  v28 = v0[1071];
  v29 = v0[1065];
  v30 = v0[1059];
  v31 = v0[1053];
  v32 = v0[1047];
  v33 = v0[1041];
  v34 = v0[1035];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  (*(v3 + 8))(v2, v4);

  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F697C()
{
  v35 = v0[1341];
  v13 = v0[1281];
  v14 = v0[1287];
  v11 = v0[1269];
  v12 = v0[1275];
  v1 = v0[1263];
  v2 = v0[1221];
  v16 = v0[1209];
  v17 = v0[1203];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1179];
  v6 = v0[1173];
  v7 = v0[1167];
  v8 = v0[1161];
  v15 = v0[1215];
  v18 = v0[1197];
  v19 = v0[1149];
  v20 = v0[1143];
  v21 = v0[1137];
  v22 = v0[1131];
  v23 = v0[1125];
  v24 = v0[1101];
  v25 = v0[1089];
  v26 = v0[1083];
  v27 = v0[1077];
  v28 = v0[1071];
  v29 = v0[1065];
  v30 = v0[1059];
  v31 = v0[1053];
  v32 = v0[1047];
  v33 = v0[1041];
  v34 = v0[1035];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  (*(v3 + 8))(v2, v4);

  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F6DA4()
{
  v35 = v0[1365];
  v13 = v0[1281];
  v14 = v0[1287];
  v11 = v0[1269];
  v12 = v0[1275];
  v1 = v0[1263];
  v2 = v0[1221];
  v16 = v0[1209];
  v17 = v0[1203];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1179];
  v6 = v0[1173];
  v7 = v0[1167];
  v8 = v0[1161];
  v15 = v0[1215];
  v18 = v0[1197];
  v19 = v0[1149];
  v20 = v0[1143];
  v21 = v0[1137];
  v22 = v0[1131];
  v23 = v0[1125];
  v24 = v0[1101];
  v25 = v0[1089];
  v26 = v0[1083];
  v27 = v0[1077];
  v28 = v0[1071];
  v29 = v0[1065];
  v30 = v0[1059];
  v31 = v0[1053];
  v32 = v0[1047];
  v33 = v0[1041];
  v34 = v0[1035];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  (*(v3 + 8))(v2, v4);

  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F71D0()
{
  v35 = v0[1389];
  v13 = v0[1281];
  v14 = v0[1287];
  v11 = v0[1269];
  v12 = v0[1275];
  v1 = v0[1263];
  v2 = v0[1221];
  v16 = v0[1209];
  v17 = v0[1203];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1179];
  v6 = v0[1173];
  v7 = v0[1167];
  v8 = v0[1161];
  v15 = v0[1215];
  v18 = v0[1197];
  v19 = v0[1149];
  v20 = v0[1143];
  v21 = v0[1137];
  v22 = v0[1131];
  v23 = v0[1125];
  v24 = v0[1101];
  v25 = v0[1089];
  v26 = v0[1083];
  v27 = v0[1077];
  v28 = v0[1071];
  v29 = v0[1065];
  v30 = v0[1059];
  v31 = v0[1053];
  v32 = v0[1047];
  v33 = v0[1041];
  v34 = v0[1035];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  (*(v3 + 8))(v2, v4);

  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);
  sub_1B4A03C40(0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F7608()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F76EC, v0 + 1186);
}

uint64_t sub_1B49F7818()
{
  v40 = v0[1425];
  v21 = v0[1419];
  v16 = v0[1401];
  v17 = v0[1407];
  v14 = v0[1287];
  v15 = v0[1395];
  v12 = v0[1275];
  v13 = v0[1281];
  v11 = v0[1269];
  v1 = v0[1263];
  v2 = v0[1221];
  v18 = v0[1413];
  v19 = v0[1215];
  v22 = v0[1203];
  v23 = v0[1197];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1179];
  v6 = v0[1173];
  v7 = v0[1167];
  v8 = v0[1161];
  v20 = v0[1155];
  v24 = v0[1149];
  v25 = v0[1143];
  v26 = v0[1137];
  v27 = v0[1131];
  v28 = v0[1125];
  v29 = v0[1101];
  v30 = v0[1089];
  v31 = v0[1083];
  v32 = v0[1077];
  v33 = v0[1071];
  v34 = v0[1065];
  v35 = v0[1059];
  v36 = v0[1053];
  v37 = v0[1047];
  v38 = v0[1041];
  v39 = v0[1035];
  sub_1B4A0540C(v20, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  (*(v3 + 8))(v2, v4);

  sub_1B4A03C40(&unk_1B4D1F800);
  sub_1B4A03C40(&unk_1B4D1F818);
  sub_1B4A03C40(&unk_1B4D1F828);
  sub_1B4A03C40(&unk_1B4D1F838);
  sub_1B4A03C40(&unk_1B4D1F848);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F7CC0()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F7DA4, v0 + 1252);
}

uint64_t sub_1B49F7ED0()
{
  v40 = v0[1449];
  v21 = v0[1419];
  v16 = v0[1401];
  v17 = v0[1407];
  v14 = v0[1287];
  v15 = v0[1395];
  v12 = v0[1275];
  v13 = v0[1281];
  v11 = v0[1269];
  v1 = v0[1263];
  v2 = v0[1221];
  v18 = v0[1413];
  v19 = v0[1215];
  v22 = v0[1203];
  v23 = v0[1197];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1179];
  v6 = v0[1173];
  v7 = v0[1167];
  v8 = v0[1161];
  v20 = v0[1155];
  v24 = v0[1149];
  v25 = v0[1143];
  v26 = v0[1137];
  v27 = v0[1131];
  v28 = v0[1125];
  v29 = v0[1101];
  v30 = v0[1089];
  v31 = v0[1083];
  v32 = v0[1077];
  v33 = v0[1071];
  v34 = v0[1065];
  v35 = v0[1059];
  v36 = v0[1053];
  v37 = v0[1047];
  v38 = v0[1041];
  v39 = v0[1035];
  sub_1B4A0540C(v20, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  (*(v3 + 8))(v2, v4);

  sub_1B4A03C40(&unk_1B4D1F800);
  sub_1B4A03C40(&unk_1B4D1F818);
  sub_1B4A03C40(&unk_1B4D1F828);
  sub_1B4A03C40(&unk_1B4D1F838);
  sub_1B4A03C40(&unk_1B4D1F848);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F8378()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F845C, v0 + 1318);
}

uint64_t sub_1B49F8588()
{
  v40 = v0[1473];
  v21 = v0[1419];
  v16 = v0[1401];
  v17 = v0[1407];
  v14 = v0[1287];
  v15 = v0[1395];
  v12 = v0[1275];
  v13 = v0[1281];
  v11 = v0[1269];
  v1 = v0[1263];
  v2 = v0[1221];
  v18 = v0[1413];
  v19 = v0[1215];
  v22 = v0[1203];
  v23 = v0[1197];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1179];
  v6 = v0[1173];
  v7 = v0[1167];
  v8 = v0[1161];
  v20 = v0[1155];
  v24 = v0[1149];
  v25 = v0[1143];
  v26 = v0[1137];
  v27 = v0[1131];
  v28 = v0[1125];
  v29 = v0[1101];
  v30 = v0[1089];
  v31 = v0[1083];
  v32 = v0[1077];
  v33 = v0[1071];
  v34 = v0[1065];
  v35 = v0[1059];
  v36 = v0[1053];
  v37 = v0[1047];
  v38 = v0[1041];
  v39 = v0[1035];
  sub_1B4A0540C(v20, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  (*(v3 + 8))(v2, v4);

  sub_1B4A03C40(&unk_1B4D1F800);
  sub_1B4A03C40(&unk_1B4D1F818);
  sub_1B4A03C40(&unk_1B4D1F828);
  sub_1B4A03C40(&unk_1B4D1F838);
  sub_1B4A03C40(&unk_1B4D1F848);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F8A30()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F8B14, v0 + 1384);
}

uint64_t sub_1B49F8C40()
{
  v40 = v0[1497];
  v21 = v0[1419];
  v16 = v0[1401];
  v17 = v0[1407];
  v14 = v0[1287];
  v15 = v0[1395];
  v12 = v0[1275];
  v13 = v0[1281];
  v11 = v0[1269];
  v1 = v0[1263];
  v2 = v0[1221];
  v18 = v0[1413];
  v19 = v0[1215];
  v22 = v0[1203];
  v23 = v0[1197];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1179];
  v6 = v0[1173];
  v7 = v0[1167];
  v8 = v0[1161];
  v20 = v0[1155];
  v24 = v0[1149];
  v25 = v0[1143];
  v26 = v0[1137];
  v27 = v0[1131];
  v28 = v0[1125];
  v29 = v0[1101];
  v30 = v0[1089];
  v31 = v0[1083];
  v32 = v0[1077];
  v33 = v0[1071];
  v34 = v0[1065];
  v35 = v0[1059];
  v36 = v0[1053];
  v37 = v0[1047];
  v38 = v0[1041];
  v39 = v0[1035];
  sub_1B4A0540C(v20, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  (*(v3 + 8))(v2, v4);

  sub_1B4A03C40(&unk_1B4D1F800);
  sub_1B4A03C40(&unk_1B4D1F818);
  sub_1B4A03C40(&unk_1B4D1F828);
  sub_1B4A03C40(&unk_1B4D1F838);
  sub_1B4A03C40(&unk_1B4D1F848);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F90E8()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F91CC, v0 + 1450);
}

uint64_t sub_1B49F92F8()
{
  v40 = v0[1506];
  v21 = v0[1419];
  v16 = v0[1401];
  v17 = v0[1407];
  v14 = v0[1287];
  v15 = v0[1395];
  v12 = v0[1275];
  v13 = v0[1281];
  v11 = v0[1269];
  v1 = v0[1263];
  v2 = v0[1221];
  v18 = v0[1413];
  v19 = v0[1215];
  v22 = v0[1203];
  v23 = v0[1197];
  v3 = v0[1191];
  v4 = v0[1185];
  v5 = v0[1179];
  v6 = v0[1173];
  v7 = v0[1167];
  v8 = v0[1161];
  v20 = v0[1155];
  v24 = v0[1149];
  v25 = v0[1143];
  v26 = v0[1137];
  v27 = v0[1131];
  v28 = v0[1125];
  v29 = v0[1101];
  v30 = v0[1089];
  v31 = v0[1083];
  v32 = v0[1077];
  v33 = v0[1071];
  v34 = v0[1065];
  v35 = v0[1059];
  v36 = v0[1053];
  v37 = v0[1047];
  v38 = v0[1041];
  v39 = v0[1035];
  sub_1B4A0540C(v20, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  (*(v3 + 8))(v2, v4);

  sub_1B4A03C40(&unk_1B4D1F800);
  sub_1B4A03C40(&unk_1B4D1F818);
  sub_1B4A03C40(&unk_1B4D1F828);
  sub_1B4A03C40(&unk_1B4D1F838);
  sub_1B4A03C40(&unk_1B4D1F848);

  v9 = v0[1];

  return v9();
}

uint64_t SnapshotClient.query(cacheIndex:)(uint64_t a1, uint64_t *a2)
{
  v3[3] = a1;
  v5 = sub_1B4D1777C();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v3[6] = v8;
  v3[7] = v9;
  v3[8] = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B49F9710, 0, 0);
}

uint64_t sub_1B49F9710()
{
  v0[2] = v0[8];
  v7 = v0[7];
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1B4D1796C();
  __swift_project_value_buffer(v2, qword_1EDC3CE48);
  CacheIndex.date(for:)(v1);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1B49F9864;
  v4 = v0[6];
  v5 = v0[3];

  return SnapshotClient.querySnapshot(date:)(v5, v4);
}

uint64_t sub_1B49F9864()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    (*(v3[5] + 8))(v3[6], v3[4]);

    return MEMORY[0x1EEE6DFA0](sub_1B49F99D8, 0, 0);
  }

  else
  {
    (*(v3[5] + 8))(v3[6], v3[4]);

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1B49F99D8()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B49F9A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B49F0EAC;

  return SnapshotClient.execute(query:)(a1, a3);
}

uint64_t sub_1B49F9AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B49F35BC;

  return SnapshotClient.execute(query:)(a1, a3);
}

uint64_t sub_1B49F9B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B49F35BC;

  return SnapshotClient.execute(query:)(a1, a3);
}

uint64_t sub_1B49F9C4C(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DA364;

  return SnapshotClient.triggerSnapshotProcessing(reason:)(a1);
}

uint64_t sub_1B49F9CE0(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DA364;

  return SnapshotClient.invalidateSnapshots(from:)(a1);
}

uint64_t sub_1B49F9D74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B49AA274;

  return SnapshotClient.listAllCacheIndexes()();
}

uint64_t sub_1B49F9E00(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return SnapshotClient.mostRecentCacheIndex(type:)(a1, a2);
}

uint64_t sub_1B49F9ECC()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4D5F8D0;
  v3._object = 0x80000001B4D5F990;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 40) = 7;
  v4 = *(MEMORY[0x1E699DD18] + 4);
  v8 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1B49F35BC;
  v6 = *(v0 + 16);

  return v8(v0 + 40);
}

uint64_t sub_1B49FA004(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return SnapshotClient.execute(query:)(a1, a2);
}

uint64_t sub_1B49FA0AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return SnapshotClient.execute(query:)(a1, a2);
}

uint64_t sub_1B49FA154(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return SnapshotClient.execute(query:)(a1, a2);
}

uint64_t sub_1B49FA1FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DD034;

  return SnapshotClient.execute(queries:)(a1);
}

uint64_t sub_1B49FA290(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DD034;

  return SnapshotClient.execute(queries:)(a1);
}

uint64_t sub_1B49FA324(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DD034;

  return SnapshotClient.execute(queries:)(a1);
}

uint64_t sub_1B49FA3B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4983F3C;

  return SnapshotClient.querySnapshot(date:)(a1, a2);
}

uint64_t sub_1B49FA460(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B49F35BC;

  return SnapshotClient.querySnapshot(date:)(a1, a2);
}

uint64_t sub_1B49FA514(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return SnapshotClient.query(cacheIndex:)(a1, a2);
}

unint64_t sub_1B49FA5BC()
{
  result = qword_1EDC36FF0;
  if (!qword_1EDC36FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36FF0);
  }

  return result;
}

unint64_t sub_1B49FA610()
{
  result = qword_1EB8A7A38;
  if (!qword_1EB8A7A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A71B0, &qword_1B4D1D2B0);
    sub_1B49FA694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A38);
  }

  return result;
}

unint64_t sub_1B49FA694()
{
  result = qword_1EB8A7A40;
  if (!qword_1EB8A7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A40);
  }

  return result;
}

unint64_t sub_1B49FA6E8()
{
  result = qword_1EB8A7A48;
  if (!qword_1EB8A7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A48);
  }

  return result;
}

uint64_t sub_1B49FA73C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v9 = sub_1B4D18EDC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B4D18DCC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1B49FE408(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B49FA88C(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v6 = sub_1B4D18EDC();
  v7 = v4 + 56;
  v8 = -1 << *(v4 + 32);
  v9 = v6 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v28 = ~v8;
    while (1)
    {
      v10 = *(*(v4 + 48) + v9);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = 0xD000000000000018;
          v12 = 0x80000001B4D48E90;
        }

        else
        {
          if (v10 == 4)
          {
            v11 = 0x5364696C61766E69;
          }

          else
          {
            v11 = 0x726568746FLL;
          }

          if (v10 == 4)
          {
            v12 = 0xEC00000065746174;
          }

          else
          {
            v12 = 0xE500000000000000;
          }
        }
      }

      else if (*(*(v4 + 48) + v9))
      {
        if (v10 == 1)
        {
          v11 = 0x7964616552746F6ELL;
        }

        else
        {
          v11 = 0xD000000000000011;
        }

        if (v10 == 1)
        {
          v12 = 0xE800000000000000;
        }

        else
        {
          v12 = 0x80000001B4D48E70;
        }
      }

      else
      {
        v11 = 0x6C62616E45746F6ELL;
        v12 = 0xEA00000000006465;
      }

      v13 = 0xD000000000000018;
      v14 = 0x5364696C61766E69;
      if (a2 != 4)
      {
        v14 = 0x726568746FLL;
      }

      v15 = 0xEC00000065746174;
      if (a2 != 4)
      {
        v15 = 0xE500000000000000;
      }

      if (a2 == 3)
      {
        v16 = 0x80000001B4D48E90;
      }

      else
      {
        v13 = v14;
        v16 = v15;
      }

      v17 = 0x7964616552746F6ELL;
      if (a2 != 1)
      {
        v17 = 0xD000000000000011;
      }

      v18 = 0xE800000000000000;
      if (a2 != 1)
      {
        v18 = 0x80000001B4D48E70;
      }

      if (!a2)
      {
        v17 = 0x6C62616E45746F6ELL;
        v18 = 0xEA00000000006465;
      }

      v19 = a2 <= 2u ? v17 : v13;
      v20 = a2 <= 2u ? v18 : v16;
      v21 = v4;
      if (v11 == v19 && v12 == v20)
      {
        break;
      }

      v22 = sub_1B4D18DCC();

      if (v22)
      {
        goto LABEL_45;
      }

      v9 = (v9 + 1) & v28;
      v4 = v21;
      if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    LOBYTE(a2) = *(*(v21 + 48) + v9);
  }

  else
  {
LABEL_43:
    v23 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_1B49FE588(a2, v9, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B49FAC08(uint64_t a1, uint64_t *a2)
{
  v30 = a1;
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest();
  v5 = *(Request - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v28 = (&v27 - v10);
  v29 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1B4D18E8C();
  v13 = *a2;
  sub_1B4D00370(v32, *a2);
  v14 = Request;
  v15 = *(Request + 20);
  v31 = a2;
  FitnessContextQueryDescriptor.hash(into:)(v32);
  v16 = sub_1B4D18EDC();
  v17 = -1 << *(v11 + 32);
  v18 = v16 & ~v17;
  if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v5 + 72);
    while (1)
    {
      sub_1B4A053A4(*(v11 + 48) + v20 * v18, v8, type metadata accessor for FitnessContextCoalescedQueryRequest);
      if (sub_1B4BD7FE0(*v8, v13) & 1) != 0 && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v8 + *(v14 + 20), v31 + v15))
      {
        break;
      }

      sub_1B4A0540C(v8, type metadata accessor for FitnessContextCoalescedQueryRequest);
      v18 = (v18 + 1) & v19;
      if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_1B4A0540C(v8, type metadata accessor for FitnessContextCoalescedQueryRequest);
    sub_1B4A0540C(v31, type metadata accessor for FitnessContextCoalescedQueryRequest);
    sub_1B4A053A4(*(v11 + 48) + v20 * v18, v30, type metadata accessor for FitnessContextCoalescedQueryRequest);
    return 0;
  }

  else
  {
LABEL_7:
    v22 = v29;
    v23 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v31;
    v26 = v28;
    sub_1B4A053A4(v31, v28, type metadata accessor for FitnessContextCoalescedQueryRequest);
    *&v32[0] = *v22;
    sub_1B49FE944(v26, v18, isUniquelyReferenced_nonNull_native);
    *v22 = *&v32[0];
    sub_1B4A0546C(v25, v30, type metadata accessor for FitnessContextCoalescedQueryRequest);
    return 1;
  }
}

uint64_t sub_1B49FAEC4(uint64_t a1, void *a2)
{
  v30 = a1;
  Request = type metadata accessor for FitnessContextQueryRequest();
  v5 = *(Request - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v28 = (&v28 - v10);
  v29 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1B4D18E8C();
  v13 = *a2;
  v14 = a2[1];
  sub_1B4D1820C();
  v31 = Request;
  v32 = a2;
  v15 = *(Request + 20);
  FitnessContextQueryDescriptor.hash(into:)(v33);
  v16 = sub_1B4D18EDC();
  v17 = -1 << *(v11 + 32);
  v18 = v16 & ~v17;
  if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v5 + 72);
    while (1)
    {
      sub_1B4A053A4(*(v11 + 48) + v20 * v18, v8, type metadata accessor for FitnessContextQueryRequest);
      v21 = *v8 == v13 && v8[1] == v14;
      if (v21 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v8 + *(v31 + 20), v32 + v15))
      {
        break;
      }

      sub_1B4A0540C(v8, type metadata accessor for FitnessContextQueryRequest);
      v18 = (v18 + 1) & v19;
      if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_1B4A0540C(v8, type metadata accessor for FitnessContextQueryRequest);
    sub_1B4A0540C(v32, type metadata accessor for FitnessContextQueryRequest);
    sub_1B4A053A4(*(v11 + 48) + v20 * v18, v30, type metadata accessor for FitnessContextQueryRequest);
    return 0;
  }

  else
  {
LABEL_11:
    v22 = v29;
    v23 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v32;
    v26 = v28;
    sub_1B4A053A4(v32, v28, type metadata accessor for FitnessContextQueryRequest);
    v33[0] = *v22;
    sub_1B49FEBC8(v26, v18, isUniquelyReferenced_nonNull_native);
    *v22 = v33[0];
    sub_1B4A0546C(v25, v30, type metadata accessor for FitnessContextQueryRequest);
    return 1;
  }
}

uint64_t sub_1B49FB19C(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v4 = type metadata accessor for RingsPropertiesQuery();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v57 - v10;
  v60 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  v13 = (a2 + v4[5]);
  v14 = v13[1];
  v15 = v13[2];
  sub_1B49C28E8(v69, *v13);
  sub_1B49C27B8(v69, v14);
  sub_1B49C2A9C(v69, v15);
  v16 = *(a2 + v4[6]);
  sub_1B49C4F70(v69, v16);
  v63 = v4;
  v17 = v4[7];
  v68 = a2;
  v58 = *(a2 + v17);
  sub_1B49C4BA0(v69, v58);
  v18 = sub_1B4D18EDC();
  v19 = v11 + 56;
  v66 = v11 + 56;
  v67 = v11;
  v20 = -1 << *(v11 + 32);
  v21 = v18 & ~v20;
  if (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
LABEL_59:
    v52 = v60;
    v53 = *v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v68;
    v56 = v59;
    sub_1B4A053A4(v68, v59, type metadata accessor for RingsPropertiesQuery);
    v69[0] = *v52;
    sub_1B49FEE6C(v56, v21, isUniquelyReferenced_nonNull_native);
    *v52 = v69[0];
    sub_1B4A0546C(v55, v61, type metadata accessor for RingsPropertiesQuery);
    return 1;
  }

  v64 = ~v20;
  v65 = *(v5 + 72);
  v62 = v16;
  v57 = (v16 + 32);
  while (1)
  {
    v22 = v65 * v21;
    sub_1B4A053A4(*(v67 + 48) + v65 * v21, v8, type metadata accessor for RingsPropertiesQuery);
    if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v8, v68) & 1) == 0)
    {
      goto LABEL_4;
    }

    v23 = &v8[v63[5]];
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v28 = *v13;
    v27 = v13[1];
    v29 = v13[2];

    if ((sub_1B4A0A1C0(v24, v28) & 1) == 0 || (result = sub_1B4A0A568(v25, v27), (result & 1) == 0) || (v31 = *(v26 + 16), v31 != *(v29 + 16)))
    {
LABEL_3:

      goto LABEL_4;
    }

    if (v31 && v26 != v29)
    {
      break;
    }

LABEL_14:

    v33 = *&v8[v63[6]];
    v34 = *(v33 + 16);
    if (v34 == *(v62 + 16))
    {
      if (v34)
      {
        v35 = v33 == v62;
      }

      else
      {
        v35 = 1;
      }

      if (!v35)
      {
        v39 = (v33 + 32);
        v40 = v57;
        while (v34)
        {
          v42 = *v39;
          v43 = *v40;
          if (v42 == 1)
          {
            v44 = 0x656557664F796164;
          }

          else
          {
            v44 = 0x646573756170;
          }

          if (v42 == 1)
          {
            v45 = 0xE90000000000006BLL;
          }

          else
          {
            v45 = 0xE600000000000000;
          }

          if (*v39)
          {
            v46 = v44;
          }

          else
          {
            v46 = 0x59664F68746E6F6DLL;
          }

          if (*v39)
          {
            v47 = v45;
          }

          else
          {
            v47 = 0xEB00000000726165;
          }

          if (v43 == 1)
          {
            v48 = 0x656557664F796164;
          }

          else
          {
            v48 = 0x646573756170;
          }

          if (v43 == 1)
          {
            v49 = 0xE90000000000006BLL;
          }

          else
          {
            v49 = 0xE600000000000000;
          }

          if (*v40)
          {
            v50 = v48;
          }

          else
          {
            v50 = 0x59664F68746E6F6DLL;
          }

          if (*v40)
          {
            v51 = v49;
          }

          else
          {
            v51 = 0xEB00000000726165;
          }

          if (v46 == v50 && v47 == v51)
          {
          }

          else
          {
            v41 = sub_1B4D18DCC();

            if ((v41 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          ++v39;
          ++v40;
          if (!--v34)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_61;
      }

LABEL_20:
      if (sub_1B4A0D49C(*&v8[v63[7]], v58))
      {
        sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
        sub_1B4A0540C(v68, type metadata accessor for RingsPropertiesQuery);
        sub_1B4A053A4(*(v67 + 48) + v22, v61, type metadata accessor for RingsPropertiesQuery);
        return 0;
      }
    }

LABEL_4:
    sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
    v21 = (v21 + 1) & v64;
    if (((*(v66 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v36 = 32;
  while (v31)
  {
    v37 = *(v26 + v36);
    v38 = *(v29 + v36);
    if (v37 == 2)
    {
      if (v38 != 2)
      {
        goto LABEL_3;
      }
    }

    else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
    {
      goto LABEL_3;
    }

    ++v36;
    if (!--v31)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1B49FB718(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v4 = type metadata accessor for WorkoutPropertiesQuery();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v55 - v10;
  v58 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  v13 = (a2 + v4[5]);
  v14 = *(v13 + 1);
  v77 = *v13;
  v78 = v14;
  v67 = v13;
  v79 = *(v13 + 2);
  WorkoutPropertyDimensionsFilters.hash(into:)(v80);
  v15 = *(a2 + v4[6]);
  sub_1B49C4A60(v80, v15);
  v68 = v4;
  v16 = *(a2 + v4[7]);
  sub_1B49C4754(v80, v16);
  v17 = sub_1B4D18EDC();
  v18 = v11 + 56;
  v19 = -1 << *(v11 + 32);
  v20 = v17 & ~v19;
  if ((*(v11 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v55 = v16;
    v56 = v15;
    v21 = ~v19;
    v22 = *(v5 + 72);
    v66 = a2;
    v65 = v11;
    v64 = v11 + 56;
    v63 = ~v19;
    v62 = v22;
    v61 = v8;
    while (1)
    {
      sub_1B4A053A4(*(v11 + 48) + v22 * v20, v8, type metadata accessor for WorkoutPropertiesQuery);
      if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v8, a2) & 1) == 0)
      {
        goto LABEL_4;
      }

      v69 = v20;
      v60 = v22 * v20;
      v23 = &v8[v68[5]];
      v25 = *v23;
      v24 = v23[1];
      v27 = v23[2];
      v26 = v23[3];
      v29 = v23[4];
      v28 = v23[5];
      v30 = *v67;
      v31 = v67[1];
      v32 = v67[2];
      v74 = v67[3];
      v33 = v67[5];
      v71 = v67[4];

      v76 = v24;

      v72 = v27;

      v73 = v31;
      v34 = v71;

      v75 = v32;
      v35 = v74;

      v70 = v30;
      if ((sub_1B4A0A1C0(v25, v30) & 1) == 0)
      {
        goto LABEL_3;
      }

      v36 = v29;
      v37 = v26;
      v38 = v72;
      if ((sub_1B4A0A568(v76, v73) & 1) == 0)
      {
        goto LABEL_3;
      }

      v39 = *(v38 + 16);
      if (v39 != *(v75 + 16))
      {
        goto LABEL_3;
      }

      if (v39 && v38 != v75)
      {
        v40 = 32;
        while (*(v38 + v40) == *(v75 + v40))
        {
          v40 += 8;
          if (!--v39)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_3;
      }

LABEL_14:
      v41 = *(v37 + 16);
      if (v41 != *(v35 + 16))
      {
        goto LABEL_3;
      }

      if (v41 && v37 != v35)
      {
        break;
      }

LABEL_20:
      if ((sub_1B4A0DB60(v36, v34) & 1) == 0)
      {
        goto LABEL_3;
      }

      v43 = *(v28 + 16);
      if (v43 != *(v33 + 16))
      {
        goto LABEL_3;
      }

      if (v43 && v28 != v33)
      {
        v44 = 0;
        while (1)
        {
          if (*(v28 + v44 + 32) != *(v33 + v44 + 32) || *(v28 + v44 + 40) != *(v33 + v44 + 40))
          {
            v46 = v43;
            v47 = sub_1B4D18DCC();
            v43 = v46;
            if ((v47 & 1) == 0)
            {
              break;
            }
          }

          v44 += 16;
          if (!--v43)
          {
            goto LABEL_36;
          }
        }

LABEL_3:

        a2 = v66;
        v11 = v65;
        v18 = v64;
        v21 = v63;
        v22 = v62;
        v8 = v61;
        v20 = v69;
        goto LABEL_4;
      }

LABEL_36:

      v8 = v61;
      v48 = sub_1B4A0DD68(*&v61[v68[6]], v56);
      a2 = v66;
      v11 = v65;
      v18 = v64;
      v21 = v63;
      v22 = v62;
      v49 = v60;
      v20 = v69;
      if (v48 & 1) != 0 && (sub_1B4A0DFD0(*&v8[v68[7]], v55))
      {
        sub_1B4A0540C(v8, type metadata accessor for WorkoutPropertiesQuery);
        sub_1B4A0540C(a2, type metadata accessor for WorkoutPropertiesQuery);
        sub_1B4A053A4(*(v11 + 48) + v49, v59, type metadata accessor for WorkoutPropertiesQuery);
        return 0;
      }

LABEL_4:
      sub_1B4A0540C(v8, type metadata accessor for WorkoutPropertiesQuery);
      v20 = (v20 + 1) & v21;
      if (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v42 = 32;
    while (*(v37 + v42) == *(v35 + v42))
    {
      v42 += 8;
      if (!--v41)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_3;
  }

LABEL_39:
  v51 = v58;
  v52 = *v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v57;
  sub_1B4A053A4(a2, v57, type metadata accessor for WorkoutPropertiesQuery);
  v80[0] = *v51;
  sub_1B49FF3B4(v54, v20, isUniquelyReferenced_nonNull_native);
  *v51 = v80[0];
  sub_1B4A0546C(a2, v59, type metadata accessor for WorkoutPropertiesQuery);
  return 1;
}

uint64_t sub_1B49FBF90(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v4 = type metadata accessor for FitnessPlusPropertiesQuery();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v43 - v10;
  v46 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  v13 = a2 + v4[5];
  v14 = *(v13 + 32);
  v15 = *v13;
  v16 = *(v13 + 16);
  v56 = v13;
  v61 = v15;
  v62 = v16;
  v63 = v14;
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v64);
  v44 = *(a2 + v4[6]);
  sub_1B49C585C(v64, v44);
  v57 = v4;
  v43 = *(a2 + v4[7]);
  sub_1B49C571C(v64, v43);
  v17 = sub_1B4D18EDC();
  v18 = v11 + 56;
  v19 = -1 << *(v11 + 32);
  v20 = v17 & ~v19;
  if ((*(v11 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = *(v5 + 72);
    v55 = a2;
    v54 = v11;
    v53 = v11 + 56;
    v52 = ~v19;
    v51 = v22;
    v50 = v8;
    while (1)
    {
      sub_1B4A053A4(*(v11 + 48) + v22 * v20, v8, type metadata accessor for FitnessPlusPropertiesQuery);
      if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v8, a2) & 1) == 0)
      {
        goto LABEL_4;
      }

      v58 = v20;
      v49 = v22 * v20;
      v23 = &v8[v57[5]];
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      v28 = v23[4];
      v29 = *v56;
      v30 = v56[1];
      v32 = v56[2];
      v31 = v56[3];
      v33 = v56[4];

      v60 = v25;

      v59 = v29;
      if ((sub_1B4A0A1C0(v24, v29) & 1) == 0)
      {
        goto LABEL_3;
      }

      if ((sub_1B4A0A568(v60, v30) & 1) == 0)
      {
        goto LABEL_3;
      }

      v48 = v30;
      v34 = *(v26 + 16);
      if (v34 != *(v32 + 16))
      {
        goto LABEL_3;
      }

      if (v34 && v26 != v32)
      {
        break;
      }

LABEL_14:
      if ((sub_1B4A0C9A8(v27, v31) & 1) == 0)
      {
        goto LABEL_3;
      }

      v36 = sub_1B4A0CDB8(v28, v33);

      a2 = v55;
      v11 = v54;
      v18 = v53;
      v21 = v52;
      v22 = v51;
      v8 = v50;
      v37 = v49;
      v20 = v58;
      if (v36 & 1) != 0 && (sub_1B4A0CEAC(*&v50[v57[6]], v44) & 1) != 0 && (sub_1B4A0D0D0(*&v8[v57[7]], v43))
      {
        sub_1B4A0540C(v8, type metadata accessor for FitnessPlusPropertiesQuery);
        sub_1B4A0540C(a2, type metadata accessor for FitnessPlusPropertiesQuery);
        sub_1B4A053A4(*(v11 + 48) + v37, v47, type metadata accessor for FitnessPlusPropertiesQuery);
        return 0;
      }

LABEL_4:
      sub_1B4A0540C(v8, type metadata accessor for FitnessPlusPropertiesQuery);
      v20 = (v20 + 1) & v21;
      if (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v35 = 32;
    while (*(v26 + v35) == *(v32 + v35))
    {
      v35 += 8;
      if (!--v34)
      {
        goto LABEL_14;
      }
    }

LABEL_3:

    a2 = v55;
    v11 = v54;
    v18 = v53;
    v21 = v52;
    v22 = v51;
    v8 = v50;
    v20 = v58;
    goto LABEL_4;
  }

LABEL_21:
  v38 = v46;
  v39 = *v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v45;
  sub_1B4A053A4(a2, v45, type metadata accessor for FitnessPlusPropertiesQuery);
  v64[0] = *v38;
  sub_1B49FFC78(v41, v20, isUniquelyReferenced_nonNull_native);
  *v38 = v64[0];
  sub_1B4A0546C(a2, v47, type metadata accessor for FitnessPlusPropertiesQuery);
  return 1;
}

uint64_t sub_1B49FC5E8(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](a2);
  v7 = sub_1B4D18EDC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1B4A00290(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B49FC6E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7070, &qword_1B4D1CCB0);
  result = sub_1B4D1891C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B49FC940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AE8, &qword_1B4D1F9A0);
  result = sub_1B4D1891C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_1B4D18E8C();
      sub_1B4D1820C();

      result = sub_1B4D18EDC();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B49FCC68(uint64_t a1)
{
  v2 = v1;
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest();
  v31 = *(Request - 8);
  v32 = Request;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B20, &unk_1B4D1F9D0);
  result = sub_1B4D1891C();
  v11 = result;
  if (*(v8 + 16))
  {
    v29 = v2;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    for (i = result + 56; v16; ++*(v11 + 16))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v31 + 72);
      sub_1B4A0546C(*(v8 + 48) + v21 * (v18 | (v12 << 6)), v7, type metadata accessor for FitnessContextCoalescedQueryRequest);
      v22 = *(v11 + 40);
      sub_1B4D18E8C();
      sub_1B4D00370(v33, *v7);
      v23 = v7 + *(v32 + 20);
      FitnessContextQueryDescriptor.hash(into:)(v33);
      sub_1B4D18EDC();
      v24 = -1 << *(v11 + 32);
      v25 = i;
      v26 = sub_1B4D188FC();
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_1B4A0546C(v7, *(v11 + 48) + v26 * v21, type metadata accessor for FitnessContextCoalescedQueryRequest);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v12 >= v17)
      {
        break;
      }

      v20 = v13[v12];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v8 + 32);
    if (v27 >= 64)
    {
      bzero((v8 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v27;
    }

    v2 = v29;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B49FCF14(uint64_t a1)
{
  v2 = v1;
  Request = type metadata accessor for FitnessContextQueryRequest();
  v37 = *(Request - 8);
  v38 = Request;
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B0, &qword_1B4D1E2C8);
  result = sub_1B4D1891C();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v37 + 72);
      sub_1B4A0546C(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for FitnessContextQueryRequest);
      v24 = *(v11 + 40);
      sub_1B4D18E8C();
      v25 = *v7;
      v26 = v7[1];
      sub_1B4D1820C();
      v27 = v7 + *(v38 + 20);
      FitnessContextQueryDescriptor.hash(into:)(v39);
      result = sub_1B4D18EDC();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1B4A0546C(v7, *(v11 + 48) + v19 * v23, type metadata accessor for FitnessContextQueryRequest);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v8 + 32);
    if (v35 >= 64)
    {
      bzero((v8 + 56), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

void *sub_1B49FD234(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RingsPropertiesQuery();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B08, &unk_1B4D1F9C0);
  v9 = sub_1B4D1891C();
  v10 = v9;
  if (*(v7 + 16))
  {
    v43 = v2;
    v11 = 0;
    v12 = *(v7 + 56);
    v44 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v45 = v9 + 56;
    v46 = v16;
    v48 = v4;
    v49 = v7;
    v47 = v9;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v52 = (v15 - 1) & v15;
LABEL_16:
      v25 = *(v7 + 48);
      v51 = *(v50 + 72);
      v26 = v53;
      sub_1B4A0546C(v25 + v51 * (v21 | (v11 << 6)), v53, type metadata accessor for RingsPropertiesQuery);
      v27 = v10[5];
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)();
      v28 = (v26 + *(v4 + 20));
      v29 = v28[1];
      v30 = v28[2];
      sub_1B49C28E8(v54, *v28);
      MEMORY[0x1B8C7D290](*(v29 + 16));
      v31 = *(v29 + 16);
      if (v31)
      {
        v32 = (v29 + 32);
        do
        {
          v33 = *v32++;
          sub_1B4D1820C();

          --v31;
        }

        while (v31);
      }

      MEMORY[0x1B8C7D290](*(v30 + 16));
      v34 = *(v30 + 16);
      if (v34)
      {
        v35 = (v30 + 32);
        do
        {
          v36 = *v35++;
          if (v36 != 2)
          {
            sub_1B4D18EAC();
          }

          sub_1B4D18EAC();
          --v34;
        }

        while (v34);
      }

      v4 = v48;
      v37 = *(v53 + *(v48 + 24));
      MEMORY[0x1B8C7D290](*(v37 + 16));
      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = (v37 + 32);
        do
        {
          v40 = *v39++;
          sub_1B4D1820C();

          --v38;
        }

        while (v38);
      }

      v17 = v53;
      sub_1B49C4BA0(v54, *(v53 + *(v4 + 28)));
      sub_1B4D18EDC();
      v10 = v47;
      v18 = -1 << *(v47 + 32);
      v19 = v45;
      v20 = sub_1B4D188FC();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_1B4A0546C(v17, v10[6] + v20 * v51, type metadata accessor for RingsPropertiesQuery);
      ++v10[2];
      v7 = v49;
      v16 = v46;
      v15 = v52;
    }

    v22 = v11;
    result = v44;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v44[v11];
      ++v22;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v52 = (v24 - 1) & v24;
        goto LABEL_16;
      }
    }

    v41 = 1 << *(v7 + 32);
    if (v41 >= 64)
    {
      bzero(v44, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v44 = -1 << v41;
    }

    v2 = v43;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

void *sub_1B49FD714(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutPropertiesQuery();
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B00, &qword_1B4D1F9B8);
  v9 = sub_1B4D1891C();
  v10 = v9;
  if (*(v7 + 16))
  {
    v37 = v2;
    v11 = 0;
    v12 = *(v7 + 56);
    v38 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v39 = v9 + 56;
    v40 = v16;
    v42 = v4;
    v43 = v7;
    v41 = v9;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v46 = (v15 - 1) & v15;
LABEL_16:
      v26 = *(v7 + 48);
      v45 = *(v44 + 72);
      v27 = v47;
      sub_1B4A0546C(v26 + v45 * (v22 | (v11 << 6)), v47, type metadata accessor for WorkoutPropertiesQuery);
      v28 = v10[5];
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)();
      v29 = (v27 + *(v4 + 20));
      v30 = v29[1];
      v48 = *v29;
      v49 = v30;
      v50 = v29[2];
      WorkoutPropertyDimensionsFilters.hash(into:)(v51);
      v31 = *(v27 + *(v4 + 24));
      v32 = *(v31 + 16);
      MEMORY[0x1B8C7D290](v32);
      if (v32)
      {
        v33 = (v31 + 32);
        do
        {
          v34 = *v33++;
          sub_1B4D1820C();

          --v32;
        }

        while (v32);
      }

      v17 = v42;
      v18 = v47;
      sub_1B49C4754(v51, *(v47 + *(v42 + 28)));
      sub_1B4D18EDC();
      v10 = v41;
      v19 = -1 << *(v41 + 32);
      v20 = v39;
      v21 = sub_1B4D188FC();
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v4 = v17;
      sub_1B4A0546C(v18, v10[6] + v21 * v45, type metadata accessor for WorkoutPropertiesQuery);
      ++v10[2];
      v7 = v43;
      v16 = v40;
      v15 = v46;
    }

    v23 = v11;
    result = v38;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v38[v11];
      ++v23;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v46 = (v25 - 1) & v25;
        goto LABEL_16;
      }
    }

    v35 = 1 << *(v7 + 32);
    if (v35 >= 64)
    {
      bzero(v38, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v35;
    }

    v2 = v37;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

void *sub_1B49FDB70(uint64_t a1)
{
  v2 = v1;
  v58 = type metadata accessor for FitnessPlusPropertiesQuery();
  v52 = *(v58 - 1);
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v7 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF8, &qword_1B4D1F9B0);
  v8 = sub_1B4D1891C();
  v9 = v8;
  if (*(v6 + 16))
  {
    v46 = v1;
    v10 = 0;
    v11 = *(v6 + 56);
    v47 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v60 = 0x80000001B4D48BA0;
    v61 = 0x80000001B4D48DB0;
    v48 = v8 + 56;
    v49 = v15;
    v50 = v8;
    v51 = v6;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v57 = (v14 - 1) & v14;
LABEL_16:
      v23 = *(v6 + 48);
      v56 = *(v52 + 72);
      v24 = v59;
      sub_1B4A0546C(v23 + v56 * (v19 | (v10 << 6)), v59, type metadata accessor for FitnessPlusPropertiesQuery);
      v25 = v9[5];
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)();
      v26 = (v24 + v58[5]);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[3];
      v53 = v26[2];
      v54 = v29;
      v55 = v26[4];
      sub_1B49C28E8(v62, v27);
      v30 = *(v28 + 16);
      MEMORY[0x1B8C7D290](v30);
      if (v30)
      {
        v31 = (v28 + 32);
        do
        {
          v32 = *v31++;
          sub_1B4D1820C();

          --v30;
        }

        while (v30);
      }

      v33 = v53;
      MEMORY[0x1B8C7D290](*(v53 + 16));
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = (v33 + 32);
        do
        {
          v36 = *v35++;
          MEMORY[0x1B8C7D2C0](v36);
          --v34;
        }

        while (v34);
      }

      sub_1B49C551C(v62, v54);
      sub_1B49C5454(v62, v55);
      v37 = *(v59 + v58[6]);
      MEMORY[0x1B8C7D290](*(v37 + 16));
      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = (v37 + 32);
        do
        {
          v40 = *v39++;
          sub_1B4D1820C();

          --v38;
        }

        while (v38);
      }

      v41 = *(v59 + v58[7]);
      MEMORY[0x1B8C7D290](*(v41 + 16));
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = (v41 + 32);
        do
        {
          v44 = *v43++;
          sub_1B4D1820C();

          --v42;
        }

        while (v42);
      }

      sub_1B4D18EDC();
      v9 = v50;
      v16 = -1 << *(v50 + 32);
      v17 = v48;
      v18 = sub_1B4D188FC();
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1B4A0546C(v59, v9[6] + v18 * v56, type metadata accessor for FitnessPlusPropertiesQuery);
      ++v9[2];
      v6 = v51;
      v15 = v49;
      v14 = v57;
    }

    v20 = v10;
    result = v47;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v47[v10];
      ++v20;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v57 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    v45 = 1 << *(v6 + 32);
    if (v45 >= 64)
    {
      bzero(v47, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v47 = -1 << v45;
    }

    v2 = v46;
    *(v6 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_1B49FE1B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF0, &qword_1B4D1F9A8);
  result = sub_1B4D1891C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D2C0](v18);
      result = sub_1B4D18EDC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B49FE408(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B49FC6E0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B4A003DC();
      goto LABEL_16;
    }

    sub_1B4A011F4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();
  result = sub_1B4D18EDC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B4D18DCC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B4D18E0C();
  __break(1u);
  return result;
}

uint64_t sub_1B49FE588(uint64_t result, unint64_t a2, char a3)
{
  v28 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_1B49FC940(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1B4A00538();
      goto LABEL_50;
    }

    sub_1B4A0142C(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  result = sub_1B4D18EDC();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v12 = 0xD000000000000018;
          v13 = 0x80000001B4D48E90;
        }

        else
        {
          if (v11 == 4)
          {
            v12 = 0x5364696C61766E69;
          }

          else
          {
            v12 = 0x726568746FLL;
          }

          if (v11 == 4)
          {
            v13 = 0xEC00000065746174;
          }

          else
          {
            v13 = 0xE500000000000000;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v11 == 1)
        {
          v12 = 0x7964616552746F6ELL;
        }

        else
        {
          v12 = 0xD000000000000011;
        }

        if (v11 == 1)
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0x80000001B4D48E70;
        }
      }

      else
      {
        v12 = 0x6C62616E45746F6ELL;
        v13 = 0xEA00000000006465;
      }

      v14 = 0xD000000000000018;
      v15 = 0x5364696C61766E69;
      if (v28 != 4)
      {
        v15 = 0x726568746FLL;
      }

      v16 = 0xEC00000065746174;
      if (v28 != 4)
      {
        v16 = 0xE500000000000000;
      }

      if (v28 == 3)
      {
        v17 = 0x80000001B4D48E90;
      }

      else
      {
        v14 = v15;
        v17 = v16;
      }

      v18 = 0x7964616552746F6ELL;
      if (v28 != 1)
      {
        v18 = 0xD000000000000011;
      }

      v19 = 0xE800000000000000;
      if (v28 != 1)
      {
        v19 = 0x80000001B4D48E70;
      }

      if (!v28)
      {
        v18 = 0x6C62616E45746F6ELL;
        v19 = 0xEA00000000006465;
      }

      v20 = v28 <= 2u ? v18 : v14;
      v21 = v28 <= 2u ? v19 : v17;
      if (v12 == v20 && v13 == v21)
      {
        goto LABEL_53;
      }

      v22 = sub_1B4D18DCC();

      if (v22)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = v28;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  result = sub_1B4D18E0C();
  __break(1u);
  return result;
}

uint64_t sub_1B49FE944(uint64_t *a1, unint64_t a2, char a3)
{
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest();
  v28 = *(Request - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v27 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    sub_1B49FCC68(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1B4A00678();
      goto LABEL_14;
    }

    sub_1B4A01724(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1B4D18E8C();
  v15 = *a1;
  sub_1B4D00370(v29, *a1);
  v16 = *(Request + 20);
  FitnessContextQueryDescriptor.hash(into:)(v29);
  v17 = sub_1B4D18EDC();
  v18 = -1 << *(v13 + 32);
  a2 = v17 & ~v18;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v28 + 72);
    while (1)
    {
      sub_1B4A053A4(*(v13 + 48) + v20 * a2, v10, type metadata accessor for FitnessContextCoalescedQueryRequest);
      if (sub_1B4BD7FE0(*v10, v15) & 1) != 0 && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v10 + *(Request + 20), a1 + v16))
      {
        break;
      }

      sub_1B4A0540C(v10, type metadata accessor for FitnessContextCoalescedQueryRequest);
      a2 = (a2 + 1) & v19;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_1B4A0540C(v10, type metadata accessor for FitnessContextCoalescedQueryRequest);
    sub_1B4D18E0C();
    __break(1u);
  }

LABEL_14:
  v21 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4A0546C(a1, *(v21 + 48) + *(v28 + 72) * a2, type metadata accessor for FitnessContextCoalescedQueryRequest);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_1B49FEBC8(uint64_t *a1, unint64_t a2, char a3)
{
  v29 = a1;
  Request = type metadata accessor for FitnessContextQueryRequest();
  v28 = *(Request - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v27 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_1B49FCF14(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1B4A00884();
      goto LABEL_18;
    }

    sub_1B4A019A4(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_1B4D18E8C();
  v14 = *v29;
  v15 = v29[1];
  sub_1B4D1820C();
  v16 = *(Request + 20);
  FitnessContextQueryDescriptor.hash(into:)(v30);
  v17 = sub_1B4D18EDC();
  v18 = -1 << *(v12 + 32);
  a2 = v17 & ~v18;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v28 + 72);
    do
    {
      sub_1B4A053A4(*(v12 + 48) + v20 * a2, v9, type metadata accessor for FitnessContextQueryRequest);
      v21 = *v9 == v14 && v9[1] == v15;
      if (v21 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v9 + *(Request + 20), v29 + v16))
      {
        goto LABEL_21;
      }

      sub_1B4A0540C(v9, type metadata accessor for FitnessContextQueryRequest);
      a2 = (a2 + 1) & v19;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v22 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4A0546C(v29, *(v22 + 48) + *(v28 + 72) * a2, type metadata accessor for FitnessContextQueryRequest);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_21:
  sub_1B4A0540C(v9, type metadata accessor for FitnessContextQueryRequest);
  result = sub_1B4D18E0C();
  __break(1u);
  return result;
}

uint64_t sub_1B49FEE6C(uint64_t a1, unint64_t a2, char a3)
{
  v60 = type metadata accessor for RingsPropertiesQuery();
  v7 = *(v60 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v58 = v7;
  v59 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_66;
  }

  if (a3)
  {
    sub_1B49FD234(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1B4A00A90();
      goto LABEL_66;
    }

    sub_1B4A01C94(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  v15 = v60;
  v16 = (a1 + v60[5]);
  v17 = v16[1];
  v18 = v16[2];
  sub_1B49C28E8(v65, *v16);
  sub_1B49C27B8(v65, v17);
  sub_1B49C2A9C(v65, v18);
  v19 = *(a1 + v15[6]);
  sub_1B49C4F70(v65, v19);
  v56 = *(a1 + v15[7]);
  sub_1B49C4BA0(v65, v56);
  v20 = sub_1B4D18EDC();
  v63 = v13 + 56;
  v64 = v13;
  v21 = -1 << *(v13 + 32);
  a2 = v20 & ~v21;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v61 = ~v21;
    v62 = *(v7 + 72);
    v57 = v19;
    v55 = (v19 + 32);
    do
    {
      sub_1B4A053A4(*(v64 + 48) + v62 * a2, v10, type metadata accessor for RingsPropertiesQuery);
      if (_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v10, a1))
      {
        v22 = &v10[v60[5]];
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        v26 = *v16;
        v27 = v16[1];
        v28 = v16[2];

        if ((sub_1B4A0A1C0(v24, v26) & 1) != 0 && (sub_1B4A0A568(v23, v27) & 1) != 0 && (v29 = *(v25 + 16), v29 == *(v28 + 16)))
        {
          if (v29)
          {
            v30 = v25 == v28;
          }

          else
          {
            v30 = 1;
          }

          if (!v30)
          {
            v34 = 32;
            while (v29)
            {
              v35 = *(v25 + v34);
              v36 = *(v28 + v34);
              if (v35 == 2)
              {
                if (v36 != 2)
                {
                  goto LABEL_10;
                }
              }

              else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
              {
                goto LABEL_10;
              }

              ++v34;
              if (!--v29)
              {
                goto LABEL_21;
              }
            }

            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            sub_1B4A0540C(v10, type metadata accessor for RingsPropertiesQuery);
            result = sub_1B4D18E0C();
            __break(1u);
            return result;
          }

LABEL_21:

          v31 = *&v10[v60[6]];
          v32 = *(v31 + 16);
          if (v32 == *(v57 + 16))
          {
            if (v32)
            {
              v33 = v31 == v57;
            }

            else
            {
              v33 = 1;
            }

            if (!v33)
            {
              v37 = (v31 + 32);
              v38 = v55;
              while (v32)
              {
                v40 = *v37;
                v41 = *v38;
                if (v40 == 1)
                {
                  v42 = 0x656557664F796164;
                }

                else
                {
                  v42 = 0x646573756170;
                }

                if (v40 == 1)
                {
                  v43 = 0xE90000000000006BLL;
                }

                else
                {
                  v43 = 0xE600000000000000;
                }

                if (*v37)
                {
                  v44 = v42;
                }

                else
                {
                  v44 = 0x59664F68746E6F6DLL;
                }

                if (*v37)
                {
                  v45 = v43;
                }

                else
                {
                  v45 = 0xEB00000000726165;
                }

                if (v41 == 1)
                {
                  v46 = 0x656557664F796164;
                }

                else
                {
                  v46 = 0x646573756170;
                }

                if (v41 == 1)
                {
                  v47 = 0xE90000000000006BLL;
                }

                else
                {
                  v47 = 0xE600000000000000;
                }

                if (*v38)
                {
                  v48 = v46;
                }

                else
                {
                  v48 = 0x59664F68746E6F6DLL;
                }

                if (*v38)
                {
                  v49 = v47;
                }

                else
                {
                  v49 = 0xEB00000000726165;
                }

                if (v44 == v48 && v45 == v49)
                {
                }

                else
                {
                  v39 = sub_1B4D18DCC();

                  if ((v39 & 1) == 0)
                  {
                    goto LABEL_11;
                  }
                }

                ++v37;
                ++v38;
                if (!--v32)
                {
                  goto LABEL_27;
                }
              }

              goto LABEL_69;
            }

LABEL_27:
            if (sub_1B4A0D49C(*&v10[v60[7]], v56))
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
LABEL_10:
        }
      }

LABEL_11:
      sub_1B4A0540C(v10, type metadata accessor for RingsPropertiesQuery);
      a2 = (a2 + 1) & v61;
    }

    while (((*(v63 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_66:
  v50 = *v59;
  *(*v59 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4A0546C(a1, *(v50 + 48) + *(v58 + 72) * a2, type metadata accessor for RingsPropertiesQuery);
  v52 = *(v50 + 16);
  v53 = __OFADD__(v52, 1);
  v54 = v52 + 1;
  if (v53)
  {
    goto LABEL_70;
  }

  *(v50 + 16) = v54;
  return result;
}

uint64_t sub_1B49FF3B4(uint64_t a1, unint64_t a2, char a3)
{
  v62 = type metadata accessor for WorkoutPropertiesQuery();
  v54 = *(v62 - 1);
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v53 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_1B49FD714(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1B4A00C9C();
      goto LABEL_47;
    }

    sub_1B4A02140(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  v14 = v62;
  v15 = (a1 + v62[5]);
  v16 = *(v15 + 1);
  v71 = *v15;
  v72 = v16;
  v61 = v15;
  v73 = *(v15 + 2);
  WorkoutPropertyDimensionsFilters.hash(into:)(v74);
  v52 = *(a1 + v14[6]);
  sub_1B49C4A60(v74, v52);
  v51 = *(a1 + v14[7]);
  sub_1B49C4754(v74, v51);
  v17 = sub_1B4D18EDC();
  v18 = v12 + 56;
  v19 = -1 << *(v12 + 32);
  a2 = v17 & ~v19;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v54 + 72);
    v60 = a1;
    v59 = v12;
    v58 = v12 + 56;
    v57 = ~v19;
    v56 = v21;
    v55 = v9;
    while (1)
    {
      sub_1B4A053A4(*(v12 + 48) + v21 * a2, v9, type metadata accessor for WorkoutPropertiesQuery);
      if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v9, a1) & 1) == 0)
      {
        goto LABEL_11;
      }

      v63 = a2;
      v22 = &v9[v62[5]];
      v24 = *v22;
      v23 = v22[1];
      v26 = v22[2];
      v25 = v22[3];
      v28 = v22[4];
      v27 = v22[5];
      v30 = *v61;
      v29 = v61[1];
      v31 = v61[2];
      v68 = v61[3];
      v32 = v61[5];
      v65 = v61[4];

      v70 = v23;

      v66 = v26;

      v69 = v29;
      v33 = v65;

      v67 = v31;
      v34 = v68;

      v64 = v30;
      if ((sub_1B4A0A1C0(v24, v30) & 1) == 0)
      {
        goto LABEL_10;
      }

      v35 = v28;
      v36 = v25;
      v37 = v66;
      if ((sub_1B4A0A568(v70, v69) & 1) == 0)
      {
        goto LABEL_10;
      }

      v38 = *(v37 + 16);
      if (v38 != *(v67 + 16))
      {
        goto LABEL_10;
      }

      if (v38 && v37 != v67)
      {
        v39 = 32;
        while (*(v37 + v39) == *(v67 + v39))
        {
          v39 += 8;
          if (!--v38)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_10;
      }

LABEL_21:
      v40 = *(v36 + 16);
      if (v40 != *(v34 + 16))
      {
        goto LABEL_10;
      }

      if (v40 && v36 != v34)
      {
        break;
      }

LABEL_27:
      if ((sub_1B4A0DB60(v35, v33) & 1) == 0)
      {
        goto LABEL_10;
      }

      v42 = *(v27 + 16);
      if (v42 != *(v32 + 16))
      {
        goto LABEL_10;
      }

      if (v42 && v27 != v32)
      {
        v43 = 0;
        while (1)
        {
          v44 = *(v27 + v43 + 32) == *(v32 + v43 + 32) && *(v27 + v43 + 40) == *(v32 + v43 + 40);
          if (!v44 && (sub_1B4D18DCC() & 1) == 0)
          {
            break;
          }

          v43 += 16;
          if (!--v42)
          {
            goto LABEL_44;
          }
        }

LABEL_10:

        a1 = v60;

        v12 = v59;
        v18 = v58;
        v20 = v57;
        v21 = v56;
        v9 = v55;
        a2 = v63;
        goto LABEL_11;
      }

LABEL_44:

      a1 = v60;

      v9 = v55;
      v45 = sub_1B4A0DD68(*&v55[v62[6]], v52);
      v12 = v59;
      v18 = v58;
      v20 = v57;
      v21 = v56;
      a2 = v63;
      if (v45 & 1) != 0 && (sub_1B4A0DFD0(*&v9[v62[7]], v51))
      {
        sub_1B4A0540C(v9, type metadata accessor for WorkoutPropertiesQuery);
        sub_1B4D18E0C();
        __break(1u);
        goto LABEL_47;
      }

LABEL_11:
      sub_1B4A0540C(v9, type metadata accessor for WorkoutPropertiesQuery);
      a2 = (a2 + 1) & v20;
      if (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v41 = 32;
    while (*(v36 + v41) == *(v34 + v41))
    {
      v41 += 8;
      if (!--v40)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_10;
  }

LABEL_47:
  v46 = *v53;
  *(*v53 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4A0546C(a1, *(v46 + 48) + *(v54 + 72) * a2, type metadata accessor for WorkoutPropertiesQuery);
  v48 = *(v46 + 16);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (v49)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    *(v46 + 16) = v50;
  }

  return result;
}

uint64_t sub_1B49FFC78(uint64_t a1, unint64_t a2, char a3)
{
  v58 = type metadata accessor for FitnessPlusPropertiesQuery();
  v49 = *(v58 - 1);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v3;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v12 = v50;
      sub_1B49FDB70(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1B4A00EA8();
        goto LABEL_28;
      }

      v12 = v50;
      sub_1B4A02570(v10 + 1);
    }

    v13 = *v12;
    v14 = *(*v12 + 40);
    sub_1B4D18E8C();
    DateRangeDescriptor.hash(into:)();
    v15 = v58;
    v16 = a1 + v58[5];
    v17 = *(v16 + 32);
    v18 = *v16;
    v19 = *(v16 + 16);
    v57 = v16;
    v63 = v18;
    v64 = v19;
    v65 = v17;
    FitnessPlusPropertyDimensionsFilters.hash(into:)(v66);
    v48 = *(a1 + v15[6]);
    sub_1B49C585C(v66, v48);
    v47 = *(a1 + v15[7]);
    sub_1B49C571C(v66, v47);
    v20 = sub_1B4D18EDC();
    v21 = v13 + 56;
    v22 = -1 << *(v13 + 32);
    a2 = v20 & ~v22;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v23 = ~v22;
      v24 = *(v49 + 72);
      v56 = a1;
      v55 = v13;
      v54 = v13 + 56;
      v53 = ~v22;
      v52 = v24;
      v51 = v9;
      while (1)
      {
        sub_1B4A053A4(*(v13 + 48) + v24 * a2, v9, type metadata accessor for FitnessPlusPropertiesQuery);
        if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v9, a1) & 1) == 0)
        {
          goto LABEL_11;
        }

        v59 = a2;
        v25 = &v9[v58[5]];
        v27 = *v25;
        v26 = v25[1];
        v28 = v25[2];
        v29 = v25[3];
        v30 = v25[4];
        v32 = *v57;
        v31 = v57[1];
        v33 = v57[2];
        v34 = v57[3];
        v35 = v57[4];

        v62 = v33;

        v60 = v32;
        v36 = sub_1B4A0A1C0(v27, v32);
        v61 = v31;
        if ((v36 & 1) == 0)
        {
          goto LABEL_10;
        }

        v37 = v28;
        v38 = v62;
        if ((sub_1B4A0A568(v26, v31) & 1) == 0)
        {
          goto LABEL_10;
        }

        v39 = *(v37 + 16);
        if (v39 != *(v38 + 16))
        {
          goto LABEL_10;
        }

        if (v39 && v37 != v38)
        {
          break;
        }

LABEL_21:
        if ((sub_1B4A0C9A8(v29, v34) & 1) == 0)
        {
          goto LABEL_10;
        }

        v41 = sub_1B4A0CDB8(v30, v35);

        a1 = v56;
        v13 = v55;
        v21 = v54;
        v23 = v53;
        v24 = v52;
        v9 = v51;
        a2 = v59;
        if (v41 & 1) != 0 && (sub_1B4A0CEAC(*&v51[v58[6]], v48) & 1) != 0 && (sub_1B4A0D0D0(*&v9[v58[7]], v47))
        {
          goto LABEL_31;
        }

LABEL_11:
        sub_1B4A0540C(v9, type metadata accessor for FitnessPlusPropertiesQuery);
        a2 = (a2 + 1) & v23;
        if (((*(v21 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v40 = 32;
      while (*(v37 + v40) == *(v38 + v40))
      {
        v40 += 8;
        if (!--v39)
        {
          goto LABEL_21;
        }
      }

LABEL_10:

      a1 = v56;
      v13 = v55;
      v21 = v54;
      v23 = v53;
      v24 = v52;
      v9 = v51;
      a2 = v59;
      goto LABEL_11;
    }
  }

LABEL_28:
  v42 = *v50;
  *(*v50 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4A0546C(a1, *(v42 + 48) + *(v49 + 72) * a2, type metadata accessor for FitnessPlusPropertiesQuery);
  v44 = *(v42 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
LABEL_31:
    sub_1B4A0540C(v9, type metadata accessor for FitnessPlusPropertiesQuery);
    result = sub_1B4D18E0C();
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v46;
  }

  return result;
}

uint64_t sub_1B4A00290(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B49FE1B8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B4A010B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B4A02B8C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v4);
  result = sub_1B4D18EDC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4D18E0C();
  __break(1u);
  return result;
}

void *sub_1B4A003DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7070, &qword_1B4D1CCB0);
  v2 = *v0;
  v3 = sub_1B4D1890C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1B4A00538()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AE8, &qword_1B4D1F9A0);
  v2 = *v0;
  v3 = sub_1B4D1890C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1B4A00678()
{
  v1 = v0;
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest();
  v3 = *(Request - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](Request - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B20, &unk_1B4D1F9D0);
  v7 = *v0;
  v8 = sub_1B4D1890C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1B4A053A4(*(v7 + 48) + v22, v6, type metadata accessor for FitnessContextCoalescedQueryRequest);
        result = sub_1B4A0546C(v6, *(v9 + 48) + v22, type metadata accessor for FitnessContextCoalescedQueryRequest);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1B4A00884()
{
  v1 = v0;
  Request = type metadata accessor for FitnessContextQueryRequest();
  v3 = *(Request - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](Request - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B0, &qword_1B4D1E2C8);
  v7 = *v0;
  v8 = sub_1B4D1890C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1B4A053A4(*(v7 + 48) + v22, v6, type metadata accessor for FitnessContextQueryRequest);
        result = sub_1B4A0546C(v6, *(v9 + 48) + v22, type metadata accessor for FitnessContextQueryRequest);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1B4A00A90()
{
  v1 = v0;
  v2 = type metadata accessor for RingsPropertiesQuery();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B08, &unk_1B4D1F9C0);
  v7 = *v0;
  v8 = sub_1B4D1890C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1B4A053A4(*(v7 + 48) + v22, v6, type metadata accessor for RingsPropertiesQuery);
        result = sub_1B4A0546C(v6, *(v9 + 48) + v22, type metadata accessor for RingsPropertiesQuery);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1B4A00C9C()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutPropertiesQuery();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B00, &qword_1B4D1F9B8);
  v7 = *v0;
  v8 = sub_1B4D1890C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1B4A053A4(*(v7 + 48) + v22, v6, type metadata accessor for WorkoutPropertiesQuery);
        result = sub_1B4A0546C(v6, *(v9 + 48) + v22, type metadata accessor for WorkoutPropertiesQuery);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1B4A00EA8()
{
  v1 = v0;
  v2 = type metadata accessor for FitnessPlusPropertiesQuery();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF8, &qword_1B4D1F9B0);
  v7 = *v0;
  v8 = sub_1B4D1890C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1B4A053A4(*(v7 + 48) + v22, v6, type metadata accessor for FitnessPlusPropertiesQuery);
        result = sub_1B4A0546C(v6, *(v9 + 48) + v22, type metadata accessor for FitnessPlusPropertiesQuery);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1B4A010B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF0, &qword_1B4D1F9A8);
  v2 = *v0;
  v3 = sub_1B4D1890C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1B4A011F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7070, &qword_1B4D1CCB0);
  result = sub_1B4D1891C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B4D18E8C();

      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B4A0142C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AE8, &qword_1B4D1F9A0);
  result = sub_1B4D1891C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_1B4D18E8C();
      sub_1B4D1820C();

      result = sub_1B4D18EDC();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B4A01724(uint64_t a1)
{
  v2 = v1;
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest();
  v27 = *(Request - 8);
  v28 = Request;
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B20, &unk_1B4D1F9D0);
  result = sub_1B4D1891C();
  v11 = result;
  if (*(v8 + 16))
  {
    v26 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    for (i = result + 56; v15; ++*(v11 + 16))
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v21 = *(v27 + 72);
      sub_1B4A053A4(*(v8 + 48) + v21 * (v18 | (v12 << 6)), v7, type metadata accessor for FitnessContextCoalescedQueryRequest);
      v22 = *(v11 + 40);
      sub_1B4D18E8C();
      sub_1B4D00370(v29, *v7);
      v23 = v7 + *(v28 + 20);
      FitnessContextQueryDescriptor.hash(into:)(v29);
      sub_1B4D18EDC();
      v24 = -1 << *(v11 + 32);
      v25 = sub_1B4D188FC();
      *(i + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = sub_1B4A0546C(v7, *(v11 + 48) + v25 * v21, type metadata accessor for FitnessContextCoalescedQueryRequest);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v26;
        goto LABEL_18;
      }

      v20 = *(v8 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4A019A4(uint64_t a1)
{
  v2 = v1;
  Request = type metadata accessor for FitnessContextQueryRequest();
  v35 = *(Request - 8);
  v36 = Request;
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B0, &qword_1B4D1E2C8);
  result = sub_1B4D1891C();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v35 + 72);
      sub_1B4A053A4(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for FitnessContextQueryRequest);
      v23 = *(v11 + 40);
      sub_1B4D18E8C();
      v24 = *v7;
      v25 = v7[1];
      sub_1B4D1820C();
      v26 = v7 + *(v36 + 20);
      FitnessContextQueryDescriptor.hash(into:)(v37);
      result = sub_1B4D18EDC();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1B4A0546C(v7, *(v11 + 48) + v18 * v22, type metadata accessor for FitnessContextQueryRequest);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v34;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4A01C94(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RingsPropertiesQuery();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B08, &unk_1B4D1F9C0);
  result = sub_1B4D1891C();
  v10 = result;
  if (*(v7 + 16))
  {
    v11 = 0;
    v12 = *(v7 + 56);
    v41 = v2;
    v42 = v7 + 56;
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v43 = result + 56;
    v44 = v16;
    v45 = v7;
    v46 = v4;
    v50 = result;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v49 = (v15 - 1) & v15;
LABEL_16:
      v24 = *(v7 + 48);
      v48 = *(v47 + 72);
      v25 = v51;
      sub_1B4A053A4(v24 + v48 * (v21 | (v11 << 6)), v51, type metadata accessor for RingsPropertiesQuery);
      v26 = *(v50 + 40);
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)();
      v27 = (v25 + *(v4 + 20));
      v28 = v27[1];
      v29 = v27[2];
      sub_1B49C28E8(v52, *v27);
      MEMORY[0x1B8C7D290](*(v28 + 16));
      v30 = *(v28 + 16);
      if (v30)
      {
        v31 = (v28 + 32);
        do
        {
          v32 = *v31++;
          sub_1B4D1820C();

          --v30;
        }

        while (v30);
      }

      MEMORY[0x1B8C7D290](*(v29 + 16));
      v33 = *(v29 + 16);
      if (v33)
      {
        v34 = (v29 + 32);
        do
        {
          v35 = *v34++;
          if (v35 != 2)
          {
            sub_1B4D18EAC();
          }

          sub_1B4D18EAC();
          --v33;
        }

        while (v33);
      }

      v4 = v46;
      v36 = *(v51 + *(v46 + 24));
      MEMORY[0x1B8C7D290](*(v36 + 16));
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = (v36 + 32);
        do
        {
          v39 = *v38++;
          sub_1B4D1820C();

          --v37;
        }

        while (v37);
      }

      v17 = v51;
      sub_1B49C4BA0(v52, *(v51 + *(v4 + 28)));
      sub_1B4D18EDC();
      v10 = v50;
      v18 = -1 << *(v50 + 32);
      v19 = v43;
      v20 = sub_1B4D188FC();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1B4A0546C(v17, *(v10 + 48) + v20 * v48, type metadata accessor for RingsPropertiesQuery);
      ++*(v10 + 16);
      v16 = v44;
      v7 = v45;
      v15 = v49;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v41;
        goto LABEL_30;
      }

      v23 = *(v42 + 8 * v11);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v49 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v10;
  }

  return result;
}